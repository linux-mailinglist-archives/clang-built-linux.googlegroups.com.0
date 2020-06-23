Return-Path: <clang-built-linux+bncBD63HSEZTUIBB2FRZD3QKGQEH27HRGY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63f.google.com (mail-pl1-x63f.google.com [IPv6:2607:f8b0:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AA3B205554
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jun 2020 16:59:54 +0200 (CEST)
Received: by mail-pl1-x63f.google.com with SMTP id bh7sf14249961plb.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jun 2020 07:59:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592924392; cv=pass;
        d=google.com; s=arc-20160816;
        b=B4yjIuct5UohU5cCin+ZoaVENfJlvUW2KoSCy0m4ut53mhoyEBhvFO/Jw/T/n6Cw6T
         j2WtP+K7v85givAMl2YJk6EoVeNk8Kg5BP+54QaZPZAseF9XUNp6hKxdQwCso1PhAoAe
         GZmXl/1ZItSEF0eOtHNl9kR1Zocx41tIyk2kAKbmNV80VW5YVgP+GmBGQJWYcEB0nOYG
         KdIwE79vUZwAOQtndvgJ7UzSDx+N9LMcm4yhrxvtdsb00dg7Dlae2SR1Dc1DW1MIKvig
         KfWueDPZD/7ne5/PT2TjnBj1OqUEDkk02jRnZJM28t7q3IFYUWMLKCQSHOyRx6RbPSmJ
         FL8w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=IzNHW4Yxve6kR3X69FJVpPebul529mR0XmMYOSdmtL4=;
        b=KSXEgtf4vj0qAheA+Fw6zlQQpZrNRKhxCStqI6sw9O/dG5pCMpbEAa3WT8Oq55W44w
         PE6kElLFQa9m84w94dB4JsunmenuVJpaIT+osyQXxH3RCFJh7kDQaw2I1IlGPvEoJIwO
         5ens/sY29sOeEebSl+biFMFHYtxSk80uZJmOkVas8/MkdCp9cVt6JZDscFKLu6cYEwnR
         1EPj82qg/H8q3hI8Gu5HId3idsU+RkTzovItpumICM+IhWQYOl/sH5/mac/uPDqMtiqP
         zzr1j1+mdlUM3B93VEA9nTopXyLhf8Fb7r0qfg0swRGS8rs7ZzX6T/pJ7uu9GGEkA9fX
         RwvQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=05ORbPdH;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IzNHW4Yxve6kR3X69FJVpPebul529mR0XmMYOSdmtL4=;
        b=rS07/TQO7Cu2qKN435twPAIXrjqVJTCxpx/cHbL6NQ3PAamunfsyKg855fsvChMViO
         Wqd67x/Zh0O2RxdU70NAlJEECJWah2UgMSkti9ELSwzfDIjOA+ZkYJ0wxalX1neEoQcS
         FsDO6MU66ANCrZ0sktyvVAZVfI3mHl7HCr7UiUPwSaTlRcLvcHDGiFv4FKPqZ0QL9u5p
         HkNWBT4bz8DlL791FoOl0sSTGWNRuPxyNcjUWyU/xIY6djixAMbI/RP2EZmVH4w59elF
         lup3O88aSWoPl9yO0VngThm8pdybQvqdClA3AYCvKOhXig6kypdjIhESlDjn7fKBbDmQ
         Prqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IzNHW4Yxve6kR3X69FJVpPebul529mR0XmMYOSdmtL4=;
        b=C0L654FIECS1fPJxeVM7g/ks/y72v59ITCvZ/iGwMwHmQc+KZlsNxgQkWerpxUByHc
         APrhPB0AW66ah8tP5vCTkzfLjSM7Whww2cQa835Ln6mIFcdjXQYXqP7qTKzzpQU+BYxX
         YX40o84fNGWRNCO8Fg+Mh1kWS9Kl8wYOBV9REhZ1JomLuUwkdHXCQwPJPCxkAQqo6FDj
         J8f4Lr+c1g3INUwmAvR6InwO4KSWT7DNeO2I0FksmOEfley3RLS79UXjZWHWh+fV7O3p
         captPhpnId141BR7tIDldrOXhTgUJ0Nr4CebzDblVRVWNvZ+OXGZ49l5T7NeWSyQhtKY
         SG2A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533ep8OQNfsJCeAqR9Lv6gq93zLBQGYfyLIGgMCPAmMs84T2BgPM
	f0VuPrwFeXOmkLBFBZ4Fh2c=
X-Google-Smtp-Source: ABdhPJxlYVYZtpuZ1RyMuwgQ+WZNXEK092eTbYgTKJT4rBNqyDyrZln9L6DUKjEUWGDr5S8t21LNJA==
X-Received: by 2002:a17:90b:3685:: with SMTP id mj5mr24187512pjb.162.1592924392390;
        Tue, 23 Jun 2020 07:59:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:5982:: with SMTP id p2ls1270333pli.4.gmail; Tue, 23
 Jun 2020 07:59:52 -0700 (PDT)
X-Received: by 2002:a17:902:c3d3:: with SMTP id j19mr24866146plj.242.1592924392015;
        Tue, 23 Jun 2020 07:59:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592924392; cv=none;
        d=google.com; s=arc-20160816;
        b=qQuYPsg4tgqQWQu0+HNFjRjmXwQlv0hnTfuSJkNzgT7G6rjROilReiopsxKEtB0W/+
         tNoO7xMCRrqYGDT/MyYYbqt4SsR3VrpRc2ZUZSkPaJ6hojVkUFA0J8LzeIPLdNBdOVgN
         xSIgNIMWuS9XKRXEnMoCeKN2sMHMCvCeL3f9cyuzQjH/oetW+fzC3zbm4E22O4A56HWm
         /tcHv9fhM0YvEq3BihjLkgmeyS7eVKP8pNkTraRPA7S0wvdMexVE9r3qTl3rjYlKeMX0
         B7dtwYnHPyyFwhf5shR1+z0szcLVa/7MhOIDBmba4fBwb3EEiNCw1MQsYyofJGpqdpWj
         QXkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=9+4/bPSoznyneWCqDZAlzUJvaInkRURpsX2h8lqYu/Y=;
        b=NN0FVmyJBaIeMF0AgRBldMx6K56fenPp8UzyMG2y7DYKInHmPk3vll+rHRUgDFsFRw
         CfkEPx3kAcQbmjVaiVm7am7eaDSSk69c7PdEc63Ib6AOF5jynPTUAoHvijEveZ+RMXkK
         xu80vmqgfNA19FtMG6c7WOiTkqN85TDd3/CCa5OQmagW+U0c0ngv4QgEvunwVSwFabGY
         p1JnpjaYouqz52UMpL7B09Buh1+QIMc4JFQEt//eL+gN06qokwt/EZ7ovjfr8W2MfxHB
         AmninOmYydqLCOwAuEAm7lmBnAW1OfhmjqLqa6m7lpWw+Lefj1vdmGkPuBSpKZgmHXNm
         +q1g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=05ORbPdH;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id kb2si68216pjb.1.2020.06.23.07.59.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Jun 2020 07:59:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-oi1-f169.google.com (mail-oi1-f169.google.com [209.85.167.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 9C07420781
	for <clang-built-linux@googlegroups.com>; Tue, 23 Jun 2020 14:59:51 +0000 (UTC)
Received: by mail-oi1-f169.google.com with SMTP id k4so19088259oik.2
        for <clang-built-linux@googlegroups.com>; Tue, 23 Jun 2020 07:59:51 -0700 (PDT)
X-Received: by 2002:aca:ba03:: with SMTP id k3mr16438168oif.33.1592924390925;
 Tue, 23 Jun 2020 07:59:50 -0700 (PDT)
MIME-Version: 1.0
References: <20200622205815.2988115-1-keescook@chromium.org>
 <20200622205815.2988115-3-keescook@chromium.org> <20200623145218.GC4336@willie-the-truck>
In-Reply-To: <20200623145218.GC4336@willie-the-truck>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Tue, 23 Jun 2020 16:59:39 +0200
X-Gmail-Original-Message-ID: <CAMj1kXEPe10EY1uE1vberVMXv9sx4ZRHgmssOypYm5ya5G9KoA@mail.gmail.com>
Message-ID: <CAMj1kXEPe10EY1uE1vberVMXv9sx4ZRHgmssOypYm5ya5G9KoA@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] arm64/build: Warn on orphan section placement
To: Will Deacon <will@kernel.org>
Cc: Kees Cook <keescook@chromium.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Mark Rutland <mark.rutland@arm.com>, Arnd Bergmann <arnd@arndb.de>, 
	Peter Collingbourne <pcc@google.com>, James Morse <james.morse@arm.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Nathan Chancellor <natechancellor@gmail.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=05ORbPdH;       spf=pass
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

On Tue, 23 Jun 2020 at 16:52, Will Deacon <will@kernel.org> wrote:
>
> On Mon, Jun 22, 2020 at 01:58:15PM -0700, Kees Cook wrote:
> > We don't want to depend on the linker's orphan section placement
> > heuristics as these can vary between linkers, and may change between
> > versions. All sections need to be explicitly named in the linker
> > script.
> >
> > Explicitly include debug sections when they're present. Add .eh_frame*
> > to discard as it seems that these are still generated even though
> > -fno-asynchronous-unwind-tables is being specified. Add .plt and
> > .data.rel.ro to discards as they are not actually used. Add .got.plt
> > to the image as it does appear to be mapped near .data. Finally enable
> > orphan section warnings.
>
> Can you elaborate a bit on what .got.plt is being used for, please? I
> wonder if there's an interaction with an erratum workaround in the linker
> or something.
>

.got.plt is not used at all, but it has three magic entries at the
start that the dynamic linker uses for lazy dispatch, so it turns up
as a non-empty section of 0x18 bytes.

We should be able to discard it afaict, but given that it does not
actually take up any space, it doesn't really matter either way.

> > diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
> > index a0d94d063fa8..3e628983445a 100644
> > --- a/arch/arm64/Makefile
> > +++ b/arch/arm64/Makefile
> > @@ -29,6 +29,10 @@ LDFLAGS_vmlinux    += --fix-cortex-a53-843419
> >    endif
> >  endif
> >
> > +# We never want expected sections to be placed heuristically by the
> > +# linker. All sections should be explicitly named in the linker script.
> > +LDFLAGS_vmlinux += --orphan-handling=warn
> > +
> >  ifeq ($(CONFIG_ARM64_USE_LSE_ATOMICS), y)
> >    ifneq ($(CONFIG_ARM64_LSE_ATOMICS), y)
> >  $(warning LSE atomics not supported by binutils)
> > diff --git a/arch/arm64/kernel/vmlinux.lds.S b/arch/arm64/kernel/vmlinux.lds.S
> > index 5427f502c3a6..c9ecb3b2007d 100644
> > --- a/arch/arm64/kernel/vmlinux.lds.S
> > +++ b/arch/arm64/kernel/vmlinux.lds.S
> > @@ -94,7 +94,8 @@ SECTIONS
> >       /DISCARD/ : {
> >               *(.interp .dynamic)
> >               *(.dynsym .dynstr .hash .gnu.hash)
> > -             *(.eh_frame)
> > +             *(.plt) *(.data.rel.ro)
> > +             *(.eh_frame) *(.init.eh_frame)
>
> Do we need to include .eh_frame_hdr here too?
>

It would be better to build with -fno-unwind-tables, in which case
these sections should not even exist.

> >       }
> >
> >       . = KIMAGE_VADDR + TEXT_OFFSET;
> > @@ -209,6 +210,7 @@ SECTIONS
> >       _data = .;
> >       _sdata = .;
> >       RW_DATA(L1_CACHE_BYTES, PAGE_SIZE, THREAD_ALIGN)
> > +     .got.plt : ALIGN(8) { *(.got.plt) }
> >
> >       /*
> >        * Data written with the MMU off but read with the MMU on requires
> > @@ -244,6 +246,7 @@ SECTIONS
> >       _end = .;
> >
> >       STABS_DEBUG
> > +     DWARF_DEBUG
>
> I know you didn't add it, but do we _really_ care about stabs debug? Who
> generates that for arm64?
>
> Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMj1kXEPe10EY1uE1vberVMXv9sx4ZRHgmssOypYm5ya5G9KoA%40mail.gmail.com.
