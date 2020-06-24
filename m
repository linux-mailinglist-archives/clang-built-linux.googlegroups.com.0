Return-Path: <clang-built-linux+bncBAABBZP6ZX3QKGQE7X2FOXQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3c.google.com (mail-vk1-xa3c.google.com [IPv6:2607:f8b0:4864:20::a3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 992A6207913
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 18:29:26 +0200 (CEST)
Received: by mail-vk1-xa3c.google.com with SMTP id h74sf599058vka.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 09:29:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593016165; cv=pass;
        d=google.com; s=arc-20160816;
        b=d9Dxll2W/7q4ganxvS/iIBED+bvd9ydPateFlX8NR95zsQ0nJdMHRs0Iz3tHOgwbpI
         qqkQisUDYONSNlLJDnxyj0U0o5ssrZ4eorpWwEDeuGzK0tp5t6S0kMBoZfrx4Lx7woZd
         d94247565P1gqyZpayJZvpsGs+LKxuepqmggOngk50tTbAd9g8fg3tOfkbQ55KEcTsvQ
         nLbL2YYD3rO3iJ45mcNqxnIxWMprK4BnRgv8vBRVFaXIksif4A+kGxZ/2bkeCE/BiQgP
         4PNXLHEp01aZ5Q9ePQHel9CBTIBibOLyx5sJykBWv7kBSK2btAnn2sBcscluK+lkI7vd
         AOWQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=J6VjvdbiW1UPQ964IzcgCa6KX5lYx+gIhaPmcXrpxjk=;
        b=ZWMELe4ocH9MesYH6xryocTtTpdu5iGU3j7tpLnrDrmI+dDJBQQoSZsRbtwYlpbPqh
         XrhasqOAB62WzbKVPHvTtalcPINe1de5oRWXJzGKhG38xK3bF4uh+VONtYTHNgjTITrB
         ga+byqDazp4AT0Z4A6gDx56VBNj34tTS/ZB1n9re+0Lwd5YVgmvfnJQGwdf2VeA+7a3p
         Z55zWP8r+6MTWsEurmMayq5ZaG0DtFdMBxcgU1P0hzVxzD2USMrSzruFbMFkClRZ/xx8
         GI90xXmFcB7dT23NPMsqF4sju+F2BVir1/+YRvmEO9XjTO/bYYM50WtYQr/K1IxRHu84
         wmvQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of dave.martin@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=Dave.Martin@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=J6VjvdbiW1UPQ964IzcgCa6KX5lYx+gIhaPmcXrpxjk=;
        b=BClYHnJK6fNCAvMhXzM4+UpVFcYOHD2IdrbtXvXJHv0MxaliVjrVwseqfg3mli7Ug3
         tiqxL/Hkn04XVtD+4Ou3f7PZgJQ09oIEbG7HlyrxMuv3/4SQ7tGcGcyOy1+TrBPv4rR7
         O8sg+FJDxjJWMizoUeLVnQ6z0bvhYd52rj1LKlHlNqGoDSj+5ydF+BCNy1ZWcUQfYmH6
         hjjioC93p93/Yu/mIQ3bFU6CXi0jsJCOOtPTkF0NEA3d1ejh018sNQCOQC/Zsw5AjZEC
         qbRETsycN8+d3vBKlC8jtzkQ7IkPK2pDmN0HlmBshBF38/DCjblGTl7tbzu9V19Rh1y5
         rMwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=J6VjvdbiW1UPQ964IzcgCa6KX5lYx+gIhaPmcXrpxjk=;
        b=BPN865PCSiFwekYuT2nxN7o4DLW1Yo6CafMueY4Na36Mu1KZ/RDA7eEM3ik0mrJwsP
         CKFvOqnLJgR2f3+VZS7+MvC2iVQCUkzGiXu1b+wV9o9wI990wIPA5uKLEOzwF2FSOLaX
         2UMPN8BasGO7CyDYoUW/5i4rOOO6BYsgMa18kBbGK56Ni5PtBeWnbLl0ybPYkfT61jjS
         SyuGBJbW+e5RMp8b08M7OoA3l3YiOP0n6HHB8Jaz3KyKFq2ca/1a+CJieLtjCfjUXSej
         H8su86dCjHGZVSBTV32QE7rch0HqVehbhsWUy7uhYm7HXPzHimzbK2VAxNNBpqpFITBh
         5dxw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531CacUjXx4Xsxb9L+200xkdKQrtQ7lBJMjKgPW6k6U/FHqr7IZF
	31EeYJq6q5+39abiutfpVUQ=
X-Google-Smtp-Source: ABdhPJyhMRPkMypuLcmFcYQW5qR79CyR1gD0/Tf511TmmcqDw0FSFB5W2au8EIDdQJzNlRAXYAHS7Q==
X-Received: by 2002:a67:ed4d:: with SMTP id m13mr23391470vsp.104.1593016165565;
        Wed, 24 Jun 2020 09:29:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:7d8e:: with SMTP id y136ls340379vsc.7.gmail; Wed, 24 Jun
 2020 09:29:25 -0700 (PDT)
X-Received: by 2002:a05:6102:1167:: with SMTP id k7mr24915760vsg.71.1593016165195;
        Wed, 24 Jun 2020 09:29:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593016165; cv=none;
        d=google.com; s=arc-20160816;
        b=HPf8lOLW9J1slTcMxJ9XE96DGWkE5PclfuKlSap9rlZtukasNAIJPq4Lxz1+L6A2tM
         KraxmUlS/spH14+5OVqJNogdhgJF+ZdQ36acdB6Rl028tLdPAsb79Zg3xyLEpcVwQVYm
         tQ5tfHTA1ktHCZRDgVQcutqYijrOlqV7aInb12if0WXqL3DCIc/SZ4SYrt5TtuytuRSD
         No4/kKSiuYgsHGbchDpIQ3Ia2xw/MSYFc8+tgUQqAvCrivH7rRsdn/U/iGT2hxQ8f0Cu
         ooQbr9P/kLw6lGFUsLVRqIf2F1EwNmiG4XVZpUcAcdEwgck09DORxzlPYiwN04bUsl2H
         1pPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=6gY+qytC2xLnUfYMmShjM62XObt4XnPfFVSP7034DME=;
        b=n4AjHPPM6dBxjKjOrCcUgzywAXNqQJbw171+nBPnCzf+ukZA6Pss50e6+Oa9IoSHhK
         WCbbXP5AnGTi6bmoDHeKvL7cjgpVoPXdzlkD+OUtzbdQ+SDEedlpOGGvheAmSe2EU30a
         DAHUxOBSA3HHJtTxLmiY7jrPx1KtJXQg+kJ+MRNX4MZiohddvUNaCz1YO0x3ruhTBuuD
         viocAZs2W3gB/24z9ODOE0IwYsHOpc2OhaqPBgVnPMT51iVcOEsqE+9cLZZKYa9DUKod
         4sDWhDcJx9AitM/2hvgRdJPkpNrzfzKvbev4SryYU7DW5KXtjgAKKrCJWwixtVgtCAQW
         69Iw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of dave.martin@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=Dave.Martin@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id t24si1334051uaq.0.2020.06.24.09.29.25
        for <clang-built-linux@googlegroups.com>;
        Wed, 24 Jun 2020 09:29:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of dave.martin@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5209A1FB;
	Wed, 24 Jun 2020 09:29:24 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8FA1B3F73C;
	Wed, 24 Jun 2020 09:29:21 -0700 (PDT)
Date: Wed, 24 Jun 2020 17:29:19 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Ard Biesheuvel <ardb@kernel.org>
Cc: Kees Cook <keescook@chromium.org>, Mark Rutland <mark.rutland@arm.com>,
	linux-arch <linux-arch@vger.kernel.org>,
	linux-efi <linux-efi@vger.kernel.org>,
	Arnd Bergmann <arnd@arndb.de>, Fangrui Song <maskray@google.com>,
	Peter Collingbourne <pcc@google.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Masahiro Yamada <masahiroy@kernel.org>, X86 ML <x86@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Russell King <linux@armlinux.org.uk>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Ingo Molnar <mingo@redhat.com>, James Morse <james.morse@arm.com>,
	Thomas Gleixner <tglx@linutronix.de>, Borislav Petkov <bp@suse.de>,
	Will Deacon <will@kernel.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH v3 3/9] efi/libstub: Remove .note.gnu.property
Message-ID: <20200624162919.GH25945@arm.com>
References: <20200624014940.1204448-1-keescook@chromium.org>
 <20200624014940.1204448-4-keescook@chromium.org>
 <20200624033142.cinvg6rbg252j46d@google.com>
 <202006232143.66828CD3@keescook>
 <20200624104356.GA6134@willie-the-truck>
 <CAMj1kXHBT4ei0xhyL4jD7=CNRsn1rh7w6jeYDLjVOv4na0Z38Q@mail.gmail.com>
 <202006240820.A3468F4@keescook>
 <CAMj1kXHck12juGi=E=P4hWP_8vQhQ+-x3vBMc3TGeRWdQ-XkxQ@mail.gmail.com>
 <202006240844.7BE48D2B5@keescook>
 <CAMj1kXHqBs44uukRSdFwA_hcmX_yKVfjqdv9RoPbbu-6Wz+RaA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAMj1kXHqBs44uukRSdFwA_hcmX_yKVfjqdv9RoPbbu-6Wz+RaA@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Original-Sender: dave.martin@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of dave.martin@arm.com designates 217.140.110.172 as
 permitted sender) smtp.mailfrom=Dave.Martin@arm.com
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

On Wed, Jun 24, 2020 at 05:48:41PM +0200, Ard Biesheuvel wrote:
> On Wed, 24 Jun 2020 at 17:45, Kees Cook <keescook@chromium.org> wrote:
> >
> > On Wed, Jun 24, 2020 at 05:31:06PM +0200, Ard Biesheuvel wrote:
> > > On Wed, 24 Jun 2020 at 17:21, Kees Cook <keescook@chromium.org> wrote:
> > > >
> > > > On Wed, Jun 24, 2020 at 12:46:32PM +0200, Ard Biesheuvel wrote:
> > > > > I'm not sure if there is a point to having PAC and/or BTI in the EFI
> > > > > stub, given that it runs under the control of the firmware, with its
> > > > > memory mappings and PAC configuration etc.
> > > >
> > > > Is BTI being ignored when the firmware runs?
> > >
> > > Given that it requires the 'guarded' attribute to be set in the page
> > > tables, and the fact that the UEFI spec does not require it for
> > > executables that it invokes, nor describes any means of annotating
> > > such executables as having been built with BTI annotations, I think we
> > > can safely assume that the EFI stub will execute with BTI disabled in
> > > the foreseeable future.
> >
> > yaaaaaay. *sigh* How long until EFI catches up?
> >
> > That said, BTI shouldn't _hurt_, right? If EFI ever decides to enable
> > it, we'll be ready?
> >
> 
> Sure. Although I anticipate that we'll need to set some flag in the
> PE/COFF header to enable it, and so any BTI opcodes we emit without
> that will never take effect in practice.

In the meantime, it is possible to build all the in-tree parts of EFI
for BTI, and just turn it off for out-of-tree EFI binaries?

If there's no easy way to do this though, I guess we should wait for /
push for a PE/COFF flag to describe this properly.

Cheers
---Dave

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200624162919.GH25945%40arm.com.
