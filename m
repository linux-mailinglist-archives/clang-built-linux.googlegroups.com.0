Return-Path: <clang-built-linux+bncBDY3NC743AGBBBUS5H3QKGQELEXVOIY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3e.google.com (mail-vk1-xa3e.google.com [IPv6:2607:f8b0:4864:20::a3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A98520D5EC
	for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 22:03:19 +0200 (CEST)
Received: by mail-vk1-xa3e.google.com with SMTP id c2sf1015790vkh.18
        for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 13:03:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593460998; cv=pass;
        d=google.com; s=arc-20160816;
        b=odmc21JTGogq/O5qeNYA1o0hRPQdoUSkr39KEaGsL6nO01C2S8Ok754UuQ5ACR1dDI
         5i2IzGd0lZGn7SLqmQHsgvOHvg/wyIxuLHpXCf/EppfRP4qI2cloUxzbfAc6wu1skYMG
         /paBzw0ODWCy/5Bpcv9P5XnSsAcNDRFwPg65OeFQpOvNonxP5qQyzKISdQtSEXvB56H6
         pRlJLt/fDzuBk4Y5MFHJXvrXAbPMX+p2V+5vGjd4Vcfv71+fupj27iUi7HAAaCttqR5m
         8BOCljRl+Y3c+N1jCkNSAd8y/1Fz7vRoV6rkV/UVIdOHk4I06mtML7+ey3Um30zVEaTa
         yuJQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=/Fzvhb9YfFFV2GxTLDK+/RJjxurL3G450y2tqr2scIE=;
        b=SbBJElEG5e+9+fJkJCZGVwyayTZ4Io7kvQBB71oukBYcJyM/Avh15lH5xB9x+2uoP6
         zsEuwQQjoyfiNRi6BJS1Rls0l1nv1a7kIBDbua3zeEP0AkyriZnkiOjihSRppEAxN6eJ
         K7iOKxu6BfHPyMILbucw8vxWfHnPAvE6PU/ZpfjOyQNwyLcagZ5qkMT6ouA+/vUXnzNx
         Y+CDGV35osXCHZCRg5Oa7Nqum+K4qpEvph0qprfFDyG0PHMzWvwu+gCOcpXIAkJykvuG
         Z4xAqBFLcCczuswnP3b6Tj0hvh9Iz3aV4TTDyLn3Nf02yQPMGHcRWDoQpznxPxDQVJCP
         s24Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.219 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/Fzvhb9YfFFV2GxTLDK+/RJjxurL3G450y2tqr2scIE=;
        b=JN0ftz9jrZKCsVMqWmMfuVqdYJvsBzj8YdW6lziLJMTxmJKN1bhXj8xF5Dcb+Ak+lW
         +/V+B7TuE4F9Sz+90f9WAHoGB2jcZKiL0R1Yrdmg3DewkPQZvuOfqtvyxG51vEZsY0S6
         u8XJ1aY9OByLJBC3Y7i9vB8kvR8LH2acInbJRZ5wo8ZxRm5r0xJhVszPsJY8TG6Jbqqe
         s/b7NgdFJHdZC36F57ygOG+1M4ylCr20+90coWD7R8YJ1CeUWLFpjCwORwrGm8Xf+Lnf
         SfGV/LT5eCYfxr7rYHnyz6KAo791ySljoydfk3lkhi90Rr/evmAJ+SH0SecoFKRLLq2l
         LwCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/Fzvhb9YfFFV2GxTLDK+/RJjxurL3G450y2tqr2scIE=;
        b=LNorLAowk3zILuss1u6N1c0MztV72Oa4HC0QE0ZenFgDHw74LZZhZ0iYETLCs/n76V
         asOIy/7q6MTK9AkVviEpj3khRVbgOPLpU145kNLQF0p7DmBAD8FscPnKP7Qxtjl8SGsF
         LfBSbjmHdPJ4q7GFvR6rhRF2UG1hxe+LGFxgqsGusm0tSxa7qIpusd+0R+W+lqaScKmo
         sJgjYdOhtTu7OoHsXN8YHatWIiBuNJwlUyKx450CIQLqyFDp1PCi8+SQuo4wLAFw6Wud
         vZgnXeVoM0Z+sl0AP1lWzPC5pBESkqANcGJQlZKkXtyEJmiPm4xUv5lJhGjCN1hE/eod
         fpZQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53385m02BDjX4WsRRjEsD7kTZk8QeIjGJ3dgcJTIYkX+lG/PoSVj
	huFzs4618WBSi+MehMqVtXQ=
X-Google-Smtp-Source: ABdhPJzc52Xr9ZqbKqdhXgx1KTuXrSeUdDKkCqJcnekXBGZ+7So2eH0IgsLbB1dIDB2iJSiqvTVTKg==
X-Received: by 2002:a05:6102:2269:: with SMTP id v9mr12311737vsd.154.1593460998231;
        Mon, 29 Jun 2020 13:03:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:902:: with SMTP id w2ls1206543uag.0.gmail; Mon, 29 Jun
 2020 13:03:17 -0700 (PDT)
X-Received: by 2002:a9f:3fcf:: with SMTP id m15mr11978775uaj.142.1593460997794;
        Mon, 29 Jun 2020 13:03:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593460997; cv=none;
        d=google.com; s=arc-20160816;
        b=IKJCaSEQhyX4FCBmsKCrmqv20OeqghGQzw5qMYCh9dNACmljyfAXf+tYUyWWSKtrsc
         e+XzEveW4/mJ0QIRFvH8hZQME3JqnFXlhquFDVEeaoaOVUBXPj4ObuoxBcED6f/+/yxy
         lleG4vDEWIeMlnr/ojPqAvFTdabrawCOO4cpkeXRRPejbpSGZWjyB5FWbaDXJAI1f4sD
         u4XrMLCk56dOvHqg0575MR2rANIDfqaQZzA3bVoDFNDJVEVXnktdMLCxVeLujX9js1ID
         EWtWdH2wt4q6vHyomyLzbPUejs/jL/kK9zZdX65PMbjJChm+d2u1CifUkE6zt3XO4qog
         zO9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=qpqYpdsshKMinqEOpW70+PNV/Ay2zKAEI4zhXr6R4N4=;
        b=TXB0f7IBzEz5rWcO4IMmwbryFxub7W2I2aNec/nLiN5cx2V/wu2vkM1TCLVY1RPV5B
         aSGV8Kz0ndHDkAmdAeM9jMKCuE8l41biXwCdTso7NPNGz+IIjzT8WyDl48dOi0bHVpN3
         lPW02s2hPEpOT/CkVIsn6e9W6g5Jb1IxxLfp40TArhFYG9H2mtS9di7ZxuFDkBf2cwlH
         FFzCd8eaciLw3n9hgUhuMQHM4fFS3QlDFwuXJj2citUKJtqp9bIjJXcCeDOXeWQVhUhw
         Bz2RGjaG92W+18Wog0gtSALd7K+51TKwjxahTWZSHh2GnCDtqAp4Cy8Yf7bZpv2qHEOs
         aOEw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.219 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0219.hostedemail.com. [216.40.44.219])
        by gmr-mx.google.com with ESMTPS id t24si51336uaq.0.2020.06.29.13.03.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jun 2020 13:03:17 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.219 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.219;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay01.hostedemail.com (Postfix) with ESMTP id F14C2100E7B45;
	Mon, 29 Jun 2020 20:03:16 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 50,0,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:41:334:355:379:599:800:960:967:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1541:1593:1594:1711:1714:1730:1747:1777:1792:1801:2393:2525:2553:2560:2563:2682:2685:2693:2828:2859:2933:2937:2939:2942:2945:2947:2951:2954:3022:3138:3139:3140:3141:3142:3351:3622:3865:3866:3867:3870:3871:3934:3936:3938:3941:3944:3947:3950:3953:3956:3959:4321:4384:4605:5007:6119:6691:6742:8985:9025:10004:10400:10848:11026:11232:11658:11914:12043:12297:12555:12740:12760:12895:13069:13160:13229:13311:13357:13439:14181:14659:14721:21080:21627:21740:21972:30029:30054:30069:30090:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:3,LUA_SUMMARY:none
X-HE-Tag: cough56_6201ffd26e72
X-Filterd-Recvd-Size: 2768
Received: from XPS-9350.home (unknown [47.151.133.149])
	(Authenticated sender: joe@perches.com)
	by omf04.hostedemail.com (Postfix) with ESMTPA;
	Mon, 29 Jun 2020 20:03:13 +0000 (UTC)
Message-ID: <9b7f9c3aed7223e49def6e775d3b250aa780e562.camel@perches.com>
Subject: Re: [PATCH v4 08/17] arm64/mm: Remove needless section quotes
From: Joe Perches <joe@perches.com>
To: Nick Desaulniers <ndesaulniers@google.com>, Kees Cook
	 <keescook@chromium.org>
Cc: Will Deacon <will@kernel.org>, Catalin Marinas
 <catalin.marinas@arm.com>,  Mark Rutland <mark.rutland@arm.com>, Ard
 Biesheuvel <ardb@kernel.org>, Peter Collingbourne <pcc@google.com>,  James
 Morse <james.morse@arm.com>, Borislav Petkov <bp@suse.de>, Thomas Gleixner
 <tglx@linutronix.de>,  Ingo Molnar <mingo@redhat.com>, Russell King
 <linux@armlinux.org.uk>, Masahiro Yamada <masahiroy@kernel.org>,  Arvind
 Sankar <nivedita@alum.mit.edu>, Nathan Chancellor
 <natechancellor@gmail.com>, Arnd Bergmann <arnd@arndb.de>, "maintainer:X86
 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, clang-built-linux
 <clang-built-linux@googlegroups.com>,  linux-arch
 <linux-arch@vger.kernel.org>, linux-efi <linux-efi@vger.kernel.org>, Linux
 ARM <linux-arm-kernel@lists.infradead.org>, LKML
 <linux-kernel@vger.kernel.org>
Date: Mon, 29 Jun 2020 13:03:12 -0700
In-Reply-To: <CAKwvOd=r6bsBfSZxVYrnbm1Utq==ApWBDjx+0Fxsm90Aq3Jghw@mail.gmail.com>
References: <20200629061840.4065483-1-keescook@chromium.org>
	 <20200629061840.4065483-9-keescook@chromium.org>
	 <CAKwvOd=r6bsBfSZxVYrnbm1Utq==ApWBDjx+0Fxsm90Aq3Jghw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.36.2-0ubuntu1
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.219 is neither permitted nor denied by best guess
 record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Spam-Checked-In-Group: clang-built-linux@googlegroups.com
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>

On Mon, 2020-06-29 at 12:53 -0700, Nick Desaulniers wrote:
> On Sun, Jun 28, 2020 at 11:18 PM Kees Cook <keescook@chromium.org> wrote:
> > Fix a case of needless quotes in __section(), which Clang doesn't like.
> > 
> > Acked-by: Will Deacon <will@kernel.org>
> > Signed-off-by: Kees Cook <keescook@chromium.org>
> 
> Yep, I remember bugs from this.  Probably should scan the kernel for
> other instances of this.  +Joe for checkpatch.pl validation.
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

$ git grep -P -n '__section\s*\(\s*\"'
arch/arm64/mm/mmu.c:45:u64 __section(".mmuoff.data.write") vabits_actual;
include/linux/compiler.h:211:   __section("___kentry" "+" #sym )                        \
include/linux/export.h:133:     static int __ksym_marker_##sym[0] __section(".discard.ksym") __used
include/linux/srcutree.h:127:           __section("___srcu_struct_ptrs") = &name

My recollection is I submitted a patch
to _add_ quotes

https://lore.kernel.org/patchwork/patch/1125785/


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/9b7f9c3aed7223e49def6e775d3b250aa780e562.camel%40perches.com.
