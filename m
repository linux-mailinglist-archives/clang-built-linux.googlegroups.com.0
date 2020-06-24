Return-Path: <clang-built-linux+bncBDAZZCVNSYPBB5G4ZT3QKGQE37UU2BA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x339.google.com (mail-ot1-x339.google.com [IPv6:2607:f8b0:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id C8BB3207162
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 12:44:05 +0200 (CEST)
Received: by mail-ot1-x339.google.com with SMTP id z6sf1121497otq.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 03:44:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592995444; cv=pass;
        d=google.com; s=arc-20160816;
        b=Zw0X2xSQPb1WKuLmMZem8abATBqyg5D0moQO+IaU3ZQvbahoYeD63yWaLLxMexlsde
         UEsstERpfHMPhnZdxlFfnvSjDO+BId6QBj7HBxU01lVkQp9cYiaGd6XhBAstynl9KbFP
         rpi216JHGSMydtk6XCrxd0zcjyeLSxqhl2o7s5WZ8sQ4m9QvwBk9MFXaCAqUoK/c3Tyx
         MDFah234+75Rn4oW2dYq5HYIVuCJOdaG3yWF9WWTPEWG5S6OjQf9AB5Zy89u5n0sk/hI
         gDGDzboozWZvzPzh7OWUXtl1NDHg0gzkpUkwgWemtrkbjhEacz8hXHnbcxb+cOTBSvp7
         7jrQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=wF7iYJWdXNmTD2Mu5rdbmE2vp/UDeBQPXHla5eCkUEo=;
        b=HskwvsBp/UfIGlSWoR/6NrETqk8dhUWhJSVDCgWfIZHwK5fTgmkR5SoZT+3CwGDJA6
         7Gr+8XGEvvdZKHi0yyh/kA/VTSgtWigD6rVvDllcVCxF1kANOygUZiTmWqEVQkWy35sq
         6mDC6ovZxtUeIxAbG1pNs7utOOkmMfyDlMlPSnIdVE/t6kU/HyfxeVH27mGxWE1WgOo8
         U21DJ3wmwRC6QnV2nQdLp7NkT95PAmn+U3S5P7oVp9zoBeMdukop/so9W/O2lOFLl+lA
         kiTcBM2+yruLwe0OFPHfQJxM2N5cklKQBwf955Rakusg/f4hhnsBvlx+V+tY4fARexmO
         VJFw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=tw0YgqlB;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wF7iYJWdXNmTD2Mu5rdbmE2vp/UDeBQPXHla5eCkUEo=;
        b=OwsrXrAOq2+sfyn/+x6zngjIndiVS5pVIopl5zfODIKCxeIcboCiOToQWy/2a9fUBV
         aWIYLTpLWt7Sdb+T91rjEgXFVf6AazWp0rYUUKSmuHH1hBXIW4TUEaskb54fx5O+z0l8
         X/7ZylKKXt7aKtKqM9mUu9TgQITaH1HEedgkX3LQDVPJz0gNDCE91hVXfGu0D8FhROkD
         BU7sQF2GJGx9PtCutNkXPgZioX/w8dwPa0L9kxfbkek3ZRQdZFce30q3Gv0pUxK1LKPv
         DIu98Icsm7Yedspw9keBTDFGAZSeUtoAwaNd80s8H4U/2GT4TiiVV1FjUjyIztdPgasU
         Q8ZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=wF7iYJWdXNmTD2Mu5rdbmE2vp/UDeBQPXHla5eCkUEo=;
        b=lx6v6dXy0tHcGPzh7JqaRIMoSQBjFPV07vcQ+U4Y3MAnJVrt4O1ehJ7w+4tzetGOLg
         7oIASVu7Cn23Bucni1iVc/i/SGblhL9FyIl8Cgg6gJpQuDDTtUUefbvj93r4ntaX1Vu+
         i5UMtUCFz20cpSBotjuEfHnail6SdF5IlIA8Pq3nZo4ZxMJyyBLgnIBAO8ddT6prvPv0
         Q/DJZlWxfqIdw9wWeArDzFmlvXoeCCSaIawgdAw58M6pRPXcmvStQ/RckNy8ioS8ikSE
         C45E0rF2J2J5SqpqpcbDBD+1wzAUS4EA6OVWLogikHCc9S7hCo8MhTK1hStI3FUbNP5H
         QVJg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530FDWoIvLNvRPxKXHrWVtH3lkigQzIXxfDyD5xiottueoyGCOTJ
	zeIOOE9IJ3DbNSGbt57YlLw=
X-Google-Smtp-Source: ABdhPJyqnjyjWbJSblqwO30j8Fihg7TETzAkJeG6lMTlbr+mW4+3bGFpxJH+ksuHomwRQxwXiFR64Q==
X-Received: by 2002:a9d:7dc4:: with SMTP id k4mr1602929otn.152.1592995444518;
        Wed, 24 Jun 2020 03:44:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1599:: with SMTP id i25ls16143otr.3.gmail; Wed, 24
 Jun 2020 03:44:04 -0700 (PDT)
X-Received: by 2002:a05:6830:110e:: with SMTP id w14mr15968318otq.239.1592995444181;
        Wed, 24 Jun 2020 03:44:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592995444; cv=none;
        d=google.com; s=arc-20160816;
        b=Y/lK8bS1TIKJ3NEWCOmJRID+IS2xCd2iTPspFtgEWqHmFCUKllzyhvfgnXV5hIHztF
         cussXq6f0GP9TERv0SDeo9amPxaXwZHpiv55F7LN2/WYvpCSO8tkoRHhmNa+61kVgHRv
         eYPYg/jVx3JzPMnzz4yX8sclj1PK7kU+M7OkuG+ULkQ/I32+xQMKPPkJKerU3pDd4l43
         XsWaf3f9XhJdI0T6zdA2NDL9MjaG7ZfOzU53R/FyiK/2KPe1HXh5Xm2OsIxtQAc1sN4C
         wCWc5ALDwbnFgmt1Ssya4KFUrvm9Mh+Xx+xo4gmJr8aHfPGROWDhw1uNt4IGd8Gujv+E
         fxww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=dxg/VdEAKu9Oyur7G2pIrn9EV2xRGtMW/ziEj7AS4CQ=;
        b=WPa0sZupf7FDNUIysgwOgicVbkLArLE8XlZyKDukVCijSVIPlBO0bJRMEggA65IqN4
         zvYmzLcNtoF5eEH/Q07pYdb0HeuXRzXvbPbUX+rtu2p8chDm8R18qhjNg+yh5ITmjgl6
         8acMjlMvaz1GLhIbx1bKSgRNoupwrSANMBzaU4htjGeTyQCFAcQWo7M/XcA/Jq0SGRy9
         tzchaX17YeOYKFSY/LRSo76SibY5C7rwrdeql1ijeAj5eUL/n9qJ2uBNgdfgTxCDrdfQ
         w46Sz4xaIP1QwqPhOVDOPOba0gGxQJz+qTe2O88bsMSDrvGgqbtH4+0vBQ6td1L/QoUP
         JloA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=tw0YgqlB;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id z6si706889oid.4.2020.06.24.03.44.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Jun 2020 03:44:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id DC61F20644;
	Wed, 24 Jun 2020 10:43:59 +0000 (UTC)
Date: Wed, 24 Jun 2020 11:43:56 +0100
From: Will Deacon <will@kernel.org>
To: Kees Cook <keescook@chromium.org>
Cc: Fangrui Song <maskray@google.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>, Borislav Petkov <bp@suse.de>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	Russell King <linux@armlinux.org.uk>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>, x86@kernel.org,
	clang-built-linux@googlegroups.com, linux-arch@vger.kernel.org,
	linux-efi@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 3/9] efi/libstub: Remove .note.gnu.property
Message-ID: <20200624104356.GA6134@willie-the-truck>
References: <20200624014940.1204448-1-keescook@chromium.org>
 <20200624014940.1204448-4-keescook@chromium.org>
 <20200624033142.cinvg6rbg252j46d@google.com>
 <202006232143.66828CD3@keescook>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202006232143.66828CD3@keescook>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=tw0YgqlB;       spf=pass
 (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=will@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Tue, Jun 23, 2020 at 09:44:11PM -0700, Kees Cook wrote:
> On Tue, Jun 23, 2020 at 08:31:42PM -0700, 'Fangrui Song' via Clang Built Linux wrote:
> > On 2020-06-23, Kees Cook wrote:
> > > In preparation for adding --orphan-handling=warn to more architectures,
> > > make sure unwanted sections don't end up appearing under the .init
> > > section prefix that libstub adds to itself during objcopy.
> > > 
> > > Signed-off-by: Kees Cook <keescook@chromium.org>
> > > ---
> > > drivers/firmware/efi/libstub/Makefile | 3 +++
> > > 1 file changed, 3 insertions(+)
> > > 
> > > diff --git a/drivers/firmware/efi/libstub/Makefile b/drivers/firmware/efi/libstub/Makefile
> > > index 75daaf20374e..9d2d2e784bca 100644
> > > --- a/drivers/firmware/efi/libstub/Makefile
> > > +++ b/drivers/firmware/efi/libstub/Makefile
> > > @@ -66,6 +66,9 @@ lib-$(CONFIG_X86)		+= x86-stub.o
> > > CFLAGS_arm32-stub.o		:= -DTEXT_OFFSET=$(TEXT_OFFSET)
> > > CFLAGS_arm64-stub.o		:= -DTEXT_OFFSET=$(TEXT_OFFSET)
> > > 
> > > +# Remove unwanted sections first.
> > > +STUBCOPY_FLAGS-y		+= --remove-section=.note.gnu.property
> > > +
> > > #
> > > # For x86, bootloaders like systemd-boot or grub-efi do not zero-initialize the
> > > # .bss section, so the .bss section of the EFI stub needs to be included in the
> > 
> > arch/arm64/Kconfig enables ARM64_PTR_AUTH by default. When the config is on
> > 
> > ifeq ($(CONFIG_ARM64_BTI_KERNEL),y)
> > branch-prot-flags-$(CONFIG_CC_HAS_BRANCH_PROT_PAC_RET_BTI) := -mbranch-protection=pac-ret+leaf+bti
> > else
> > branch-prot-flags-$(CONFIG_CC_HAS_BRANCH_PROT_PAC_RET) := -mbranch-protection=pac-ret+leaf
> > endif
> > 
> > This option creates .note.gnu.property:
> > 
> > % readelf -n drivers/firmware/efi/libstub/efi-stub.o
> > 
> > Displaying notes found in: .note.gnu.property
> >   Owner                Data size        Description
> >   GNU                  0x00000010       NT_GNU_PROPERTY_TYPE_0
> >       Properties: AArch64 feature: PAC
> > 
> > If .note.gnu.property is not desired in drivers/firmware/efi/libstub, specifying
> > -mbranch-protection=none can override -mbranch-protection=pac-ret+leaf
> 
> We want to keep the branch protection enabled. But since it's not a
> "regular" ELF, we don't need to keep the property that identifies the
> feature.

For the kernel Image, how do we remove these sections? The objcopy flags
in arch/arm64/boot/Makefile look both insufficient and out of date. My
vmlinux ends up with both a ".notes" and a ".init.note.gnu.property"
segment.

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200624104356.GA6134%40willie-the-truck.
