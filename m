Return-Path: <clang-built-linux+bncBD63HSEZTUIBBFO6ZT3QKGQEFIQXP4I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83a.google.com (mail-qt1-x83a.google.com [IPv6:2607:f8b0:4864:20::83a])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EEE820716E
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 12:46:47 +0200 (CEST)
Received: by mail-qt1-x83a.google.com with SMTP id r25sf1236343qtj.11
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 03:46:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592995606; cv=pass;
        d=google.com; s=arc-20160816;
        b=mGddXj619gXqMZpvJE2O1Nf2mTImadIlp7Ps561Olzc2t2qwlS4fCfUWPEMQAMHhtm
         l5OWWTsm6Gk6FwSaNANhdvgZ5vvV+Yr3c/CllqCSy2XzR0rSnWFTYrHe3IwCexuyYxyG
         bO3BSDWkFS0As2h9ft7zch35DcmhIhhgieFp/OkIirwQZLzSfVAJpZyoQItEeNAUw0bC
         8/mCP+NWnkrMXdWmtRZ2Bb8mA2o04KbBuXlDetVbfmOuMKkFdidTZl+PjxzNsNraWQbv
         fOF1GeG3M6KGxhG1BCOYIpIn/5nRTF8xpXMPQwUAPiOWOgtHeDun4uy781xQu11I6j8O
         +u1Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=1zPikqdswnk964uy17SSePuJsm4CmrdQsugxjGYNOXk=;
        b=cjn1tSqngrNB4gZWmE1m4aofNJ9Oh25D15a+U7Vo3Ff2l4qK0mXLySB3rHco0Cv5oa
         2sHiRYMfgYXSNTc5rdoHtQ+rfVHX2jfMo438RP29SMGJsjXM4eQ3P84W72TbgzxZlaj4
         VDByxgC7UDjJ7HG283est2qxHU5Ft8XrkSnd0Yc0pX5DCEOqovvuJrjJ4CeRKSaUVr2C
         U2vILsuNufhnlkLq5KSBzObprU8YUmGKSMfiVJiKJgQbtmBft8EradroaYHVHvD7UiO3
         14RAM1Q8znOAn8Xa4GX1XwofLLpdKo+/UpxNHEKk9vr/sLtQTivmgOkM2chy6reyhhwW
         uasQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=OGlxeWyH;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1zPikqdswnk964uy17SSePuJsm4CmrdQsugxjGYNOXk=;
        b=aqs3U9jl5F1NvmLeZZrAUXWstraZhlDdjAf280mDBBNXu7GkS5L/K94uIyHZ+vAv+e
         DYey6C+JPud5wAJQI1twW3cqPYOpCNbAwNV3pcyHLbuo1Hkay6bZYyK7fX430/VMKZ08
         Q9CAyxn3X4DiMzjWfdYVyDN4QT5VQkaNYgG2NyfKYIRAgbBU5vif6C5lgW1y3lCIjBLA
         X+0DY8mmLF8vMxK34g3aQfY6XIZ0yLg3+s5x3O6TOJECqMcFdUWQUEHtsOgU3e5LoTTh
         MuFtYpAE4D9qiCKjyr+Jbo4mMNnC/qW4UEuUPS80n43j47Ih80pxcSd7BcmQ04xk4vek
         l3fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1zPikqdswnk964uy17SSePuJsm4CmrdQsugxjGYNOXk=;
        b=NNQrGElB29dLI9xBDDCAN0cxJoQiIpdwHijacW9glMWjgnARkEfVPeVUhn6dtohovR
         xLow2YIWW2UvSz4uLmtNPdF+SCnvlto1KWAKcBQsUeXC3ZMcSv1V1CZ2KHYJsiEBi65e
         p3V3iOx3fS8g4RM/Wa1vnjcFSlU+46UgH+jE9x+9ZFWPXHvq0Z+ZeG5Tarn3du1nICPV
         XxBofbLHN4YLKwfHOQv/lkv/1wl1qNTYCSc8HhHfjva17ayFGuJ2kA57rvd1HvecJAdS
         wndQj77KBfBXVkiL+k/e6ptUjfeu5RVcN3ljXcqdrcrunMBn4OL1Q8L0UOF0aTdM8738
         jIIA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531T73/Cw/x2IIbF0aZUczmnLU8kTeNboh5/jvRebplZ5RcxZUQM
	5XHTdQ4TaAfcwlVl7MsoG3E=
X-Google-Smtp-Source: ABdhPJwMpP0pXnKfyFgWQjJNB9MQpvoeVhvwNumLzJIzIfmOyS/LXwfXn49QTNZDFi0Zcrzr5dT64g==
X-Received: by 2002:a0c:b346:: with SMTP id a6mr31084823qvf.142.1592995605943;
        Wed, 24 Jun 2020 03:46:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:f4cd:: with SMTP id o13ls351485qvm.6.gmail; Wed, 24 Jun
 2020 03:46:45 -0700 (PDT)
X-Received: by 2002:ad4:4671:: with SMTP id z17mr31044586qvv.86.1592995605653;
        Wed, 24 Jun 2020 03:46:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592995605; cv=none;
        d=google.com; s=arc-20160816;
        b=zrBuQ3SmClYjSKPS2YKmvWmlJMsj3oN5FAqng4ltTpotmZCjUN3gL8yGTK4BwDCYhM
         QV00idEvdUulHWqTHE2n990F36Cb8tAmGwQewTZaM8Gmwrze9prQiW/NH9GUjdTRlvMe
         iXh4BjxuIZMjtqZuwiXAM0EfSTlwApodJvKgS63bw2BWBiVxkT+bFG5I3dyUug9Ol0Ct
         hdJTz78UPy9LXr8lLzog7yKp2AAarvodlE3IOVpYLF0UbWl8cjl8gYPb8+JLlFJWa9uY
         RFVYo+qHuJuINuyNsTnmcP8ah//8FbNkOWFK56MPCHvphPh3rPnkTk6N97QsVRI97Bo8
         6TLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=D8seSPwVn5lx6TNIU/PmFCUTleF1Iys9dcT264oBYQE=;
        b=aKEisB9CjF6sJF+m0G2izOGnmfqhDQgCt8K9AoFtOEwGDoDtDBsyyEKsIySl9WwYqz
         GC5/8xuKlWp6m00oU/ollymkaYvX4paFs8/xh+MsEDvQY0IySjciVoPWneySyOSveCTW
         hpibz4AKuNK9GDPh6Zb4gYe0E2eGhtnVp0xedHGQ3MiyEuWiIVcRwLxTX2+oDaLE+480
         bp+ERpJvmJ2AiSovIVRNY9Sq2c7dPBnpdzq3kWFKLfkM/wOqYI9kah2T1sish/3DTxR5
         emFC3JLmclO/rYCCKxMVpaACWXzZoZQx0U6yICwHJNOXD99h6mHrW2+ljhWzLdjJ26l3
         EMyw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=OGlxeWyH;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id m1si1506868qki.3.2020.06.24.03.46.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Jun 2020 03:46:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-oi1-f179.google.com (mail-oi1-f179.google.com [209.85.167.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 88D1120EDD
	for <clang-built-linux@googlegroups.com>; Wed, 24 Jun 2020 10:46:44 +0000 (UTC)
Received: by mail-oi1-f179.google.com with SMTP id a21so1418443oic.8
        for <clang-built-linux@googlegroups.com>; Wed, 24 Jun 2020 03:46:44 -0700 (PDT)
X-Received: by 2002:aca:b241:: with SMTP id b62mr18670182oif.47.1592995603880;
 Wed, 24 Jun 2020 03:46:43 -0700 (PDT)
MIME-Version: 1.0
References: <20200624014940.1204448-1-keescook@chromium.org>
 <20200624014940.1204448-4-keescook@chromium.org> <20200624033142.cinvg6rbg252j46d@google.com>
 <202006232143.66828CD3@keescook> <20200624104356.GA6134@willie-the-truck>
In-Reply-To: <20200624104356.GA6134@willie-the-truck>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Wed, 24 Jun 2020 12:46:32 +0200
X-Gmail-Original-Message-ID: <CAMj1kXHBT4ei0xhyL4jD7=CNRsn1rh7w6jeYDLjVOv4na0Z38Q@mail.gmail.com>
Message-ID: <CAMj1kXHBT4ei0xhyL4jD7=CNRsn1rh7w6jeYDLjVOv4na0Z38Q@mail.gmail.com>
Subject: Re: [PATCH v3 3/9] efi/libstub: Remove .note.gnu.property
To: Will Deacon <will@kernel.org>
Cc: Kees Cook <keescook@chromium.org>, Fangrui Song <maskray@google.com>, 
	Catalin Marinas <catalin.marinas@arm.com>, Mark Rutland <mark.rutland@arm.com>, 
	Peter Collingbourne <pcc@google.com>, James Morse <james.morse@arm.com>, Borislav Petkov <bp@suse.de>, 
	Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, 
	Russell King <linux@armlinux.org.uk>, Masahiro Yamada <masahiroy@kernel.org>, 
	Arvind Sankar <nivedita@alum.mit.edu>, Nick Desaulniers <ndesaulniers@google.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Arnd Bergmann <arnd@arndb.de>, X86 ML <x86@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	linux-arch <linux-arch@vger.kernel.org>, linux-efi <linux-efi@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=OGlxeWyH;       spf=pass
 (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=ardb@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

On Wed, 24 Jun 2020 at 12:44, Will Deacon <will@kernel.org> wrote:
>
> On Tue, Jun 23, 2020 at 09:44:11PM -0700, Kees Cook wrote:
> > On Tue, Jun 23, 2020 at 08:31:42PM -0700, 'Fangrui Song' via Clang Built Linux wrote:
> > > On 2020-06-23, Kees Cook wrote:
> > > > In preparation for adding --orphan-handling=warn to more architectures,
> > > > make sure unwanted sections don't end up appearing under the .init
> > > > section prefix that libstub adds to itself during objcopy.
> > > >
> > > > Signed-off-by: Kees Cook <keescook@chromium.org>
> > > > ---
> > > > drivers/firmware/efi/libstub/Makefile | 3 +++
> > > > 1 file changed, 3 insertions(+)
> > > >
> > > > diff --git a/drivers/firmware/efi/libstub/Makefile b/drivers/firmware/efi/libstub/Makefile
> > > > index 75daaf20374e..9d2d2e784bca 100644
> > > > --- a/drivers/firmware/efi/libstub/Makefile
> > > > +++ b/drivers/firmware/efi/libstub/Makefile
> > > > @@ -66,6 +66,9 @@ lib-$(CONFIG_X86)               += x86-stub.o
> > > > CFLAGS_arm32-stub.o               := -DTEXT_OFFSET=$(TEXT_OFFSET)
> > > > CFLAGS_arm64-stub.o               := -DTEXT_OFFSET=$(TEXT_OFFSET)
> > > >
> > > > +# Remove unwanted sections first.
> > > > +STUBCOPY_FLAGS-y         += --remove-section=.note.gnu.property
> > > > +
> > > > #
> > > > # For x86, bootloaders like systemd-boot or grub-efi do not zero-initialize the
> > > > # .bss section, so the .bss section of the EFI stub needs to be included in the
> > >
> > > arch/arm64/Kconfig enables ARM64_PTR_AUTH by default. When the config is on
> > >
> > > ifeq ($(CONFIG_ARM64_BTI_KERNEL),y)
> > > branch-prot-flags-$(CONFIG_CC_HAS_BRANCH_PROT_PAC_RET_BTI) := -mbranch-protection=pac-ret+leaf+bti
> > > else
> > > branch-prot-flags-$(CONFIG_CC_HAS_BRANCH_PROT_PAC_RET) := -mbranch-protection=pac-ret+leaf
> > > endif
> > >
> > > This option creates .note.gnu.property:
> > >
> > > % readelf -n drivers/firmware/efi/libstub/efi-stub.o
> > >
> > > Displaying notes found in: .note.gnu.property
> > >   Owner                Data size        Description
> > >   GNU                  0x00000010       NT_GNU_PROPERTY_TYPE_0
> > >       Properties: AArch64 feature: PAC
> > >
> > > If .note.gnu.property is not desired in drivers/firmware/efi/libstub, specifying
> > > -mbranch-protection=none can override -mbranch-protection=pac-ret+leaf
> >
> > We want to keep the branch protection enabled. But since it's not a
> > "regular" ELF, we don't need to keep the property that identifies the
> > feature.
>
> For the kernel Image, how do we remove these sections? The objcopy flags
> in arch/arm64/boot/Makefile look both insufficient and out of date. My
> vmlinux ends up with both a ".notes" and a ".init.note.gnu.property"
> segment.
>

The latter is the fault of the libstub make rules, that prepend .init
to all section names.

I'm not sure if there is a point to having PAC and/or BTI in the EFI
stub, given that it runs under the control of the firmware, with its
memory mappings and PAC configuration etc.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMj1kXHBT4ei0xhyL4jD7%3DCNRsn1rh7w6jeYDLjVOv4na0Z38Q%40mail.gmail.com.
