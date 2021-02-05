Return-Path: <clang-built-linux+bncBCU4TIPXUUFRBYEU62AAMGQEXBKVPUA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D4B6310F98
	for <lists+clang-built-linux@lfdr.de>; Fri,  5 Feb 2021 19:11:46 +0100 (CET)
Received: by mail-yb1-xb3a.google.com with SMTP id 134sf7970851ybd.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 05 Feb 2021 10:11:46 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612548705; cv=pass;
        d=google.com; s=arc-20160816;
        b=U02YH9K9IWygr45eYcexEGULYjMAbFFRz8PKcEpXMc+p5GU+1rkdJ+vjdqVDZP/IoZ
         yC+T+I/Lwsmizowkt+1f6l+EQmANBHbhR89CV5R7aBQWyOLXgVJ5dDHoSftx6KQS4RcY
         w2RdmNFjAcCQlnKPv1yK3MjBcIvjMMj69UF7bdflAui0xKoT2DRsrGKOENIqNFkMDWhW
         cvMu4cz5PMz9jWOglxsPH/3y/48Xaa/IXtPaOixpU4umr1HxJiTPJ+Fmt6JAxBAHsBYK
         UjP2JEiOES62ULQOTsz8YlCjqw/ZA27dp5nOfvy1j82OHAIbD4cIomlk2HqC8izwe7Wo
         f5pA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=S/YsxmB2R7V3pO0FJ7iELhx6IYlRhYkzg/T1lQo0GVc=;
        b=Dki9BEIK2I63mJWIoh7j0fZ11jh6JMaE3PnZtXc8ydcWT3WftmLaJKfgsCPfGfi2u1
         nNul+nkxUaDmGK/Tnk0sKf+Ur4ryX/1pPcXBHBiPmvx77fxtkwxxRQbrxMWaBMf+eyAR
         S0uCbE6hna8QRkuHXKD3k2RYufYKQvgwEDZywW/EqqW3iyW7ts2JuQzxa8/gU6NXP0VI
         8LxRrwlOUagJEq3waBag0tfQQzg3mCtbYbLHr0pnkWL5nPSH9L3N72VTULUfap/vHrS6
         ndogg7qzRQK3V1i5PcEQw6Wp+i+BMggHEF7yaqTQbp98dYxIwlHjhzahvuWeaJTBSpBO
         wBoQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=XhKmdt1b;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=S/YsxmB2R7V3pO0FJ7iELhx6IYlRhYkzg/T1lQo0GVc=;
        b=jGxwKX20SBIuLZdwJSZEi4abhxwnW9rPsPROPahf3hjdGDNWbr/TU8WNYCfOaxfrCb
         HhxuI2WUiWUsXs9aZkx/rc/woycdZoQkVvg3PZEBRvmIwsU5vaRHCsRn4M7exjt7mr1Y
         FWbsim2nhLaeCy2FntgV8i+3BwuxJd/gVglKVkXqIGblFulRiV7y0S/nmxFcupZ1RRfx
         uL+JnC+7qPNNAsSjOSKnuscPUlUIqirsEHIUMI1/Sxg5uf1PDwy3KR3oMFN/76dRhZhR
         u4Kgd3ML82bT43Zap1m9xCst0fsJx81zkn5jrf8eAlCMwQTcj8qMlW3vPjnjndKBOKAR
         bJKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=S/YsxmB2R7V3pO0FJ7iELhx6IYlRhYkzg/T1lQo0GVc=;
        b=LNaXFgLLDljhj0kVRNths46KAB+1fWh/+z3zFLkoAKqQDk4ZGiBQQzyCvGiKwjHNUy
         FD2uTqdOQk5frZRP0zaQEd2sH7BU5CapzP+OcJSfh729x2jS0QoGOany2eFS5cvrIaJ3
         eO2bvxCvtOPjtPmYt48Rpwf3fQneyLbgjrEcxSnRPYtUpAdn8uAAlk5a80245v+KlC2p
         OEMZnJq0iTxIlObo9fIpoJPDVaezTUQQ/cAowTLDOxP+UaeYRoEVzA5bYaI+i5Q+OMJ3
         iw9nPPqkLbu2tq1NxORucRtxoMEWsEDJzwhZD2mfGKGhb909dXG7+0Z94rCWv7U0UR8Y
         JLkA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Cdu8Ardkl4PbU4YI4a2rgVAcPqodkgd81NINFRlYELeYJcPyT
	UAwHDqXBrGyXyGDmkOtql9Q=
X-Google-Smtp-Source: ABdhPJw9hLse4+t639LC5HoAXvv+jt+EKYEw1Euz7ivnoDfoz938mDusiafBleBOMQ7nI8BDr3V9uA==
X-Received: by 2002:a25:1385:: with SMTP id 127mr7521455ybt.437.1612548705079;
        Fri, 05 Feb 2021 10:11:45 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:8b88:: with SMTP id j8ls4701187ybl.3.gmail; Fri, 05 Feb
 2021 10:11:44 -0800 (PST)
X-Received: by 2002:a25:7c87:: with SMTP id x129mr7833088ybc.461.1612548704731;
        Fri, 05 Feb 2021 10:11:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612548704; cv=none;
        d=google.com; s=arc-20160816;
        b=iEeSece99tyxxpWFxv16NEDWAj7Yv5SFNgnbg9qF1Tu/RQst9A2TDrY17QWhgi2NKF
         OaJNI86kDEFEQzrbVJNM8/JtWPa/Q7E3uwSIdGBFPb9M5QPoSsoSX5b1VZf96t+1wqE4
         BzpBo80jsdwSVGN/I4RJOlVkvLvwELJvmW/fqOfJXo2u9jftoCf61g0lyeg9kb+LIBWK
         T1Eah0aGxHFBD1MUXCNuNROMEu0H7EpkrnDQE1r1I3U0ltBa5uaNoKaC8tsFVv8AENsa
         6TYx2aYM6qBFZbLDggZNq4uJecWEMoGEqOJGOlpfKhM1Pdr3o8DX/+3Dw0p3bhF8PGeD
         yyjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=VEHpJL9g62LLTBRqAM75NACKMqk5HqdVxRCoL6ZS13s=;
        b=uePPzBqLm6thvAcOjXrTyyUftanxrPgMe+d3hP0Td0ajUlXYE/OWgAKeinQw7khK41
         C+v2h01d/M2fg0p+9oJhTC8YKvTIimAgauppAkzqZ+fVskClZfEuhaaDfN85Ag0z+HEx
         iCccth3b7QPuyhZ1EV8wXrBjG0DfmViJ4S3yJVBFJNo5zy323s1FsnMPwhDBw6vEqCu7
         CbM0o958CWZeCThe0EMMQwTf8qzzHZBw3pdoDWTKTYdvWvGE0XIO/M/8JAQ2k0iH2VwK
         V/qNBTV2jM3pLJg4op3x3E5i4jKQ1Ce+1YOtdThhfSFvM9rGQ+Ry9Q320b0j4k+Mjf1t
         AfBQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=XhKmdt1b;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k12si563576ybf.5.2021.02.05.10.11.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 05 Feb 2021 10:11:44 -0800 (PST)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7E07464E4F
	for <clang-built-linux@googlegroups.com>; Fri,  5 Feb 2021 18:11:43 +0000 (UTC)
Received: by mail-oi1-f174.google.com with SMTP id w124so8412782oia.6
        for <clang-built-linux@googlegroups.com>; Fri, 05 Feb 2021 10:11:43 -0800 (PST)
X-Received: by 2002:aca:110b:: with SMTP id 11mr3796177oir.174.1612548702775;
 Fri, 05 Feb 2021 10:11:42 -0800 (PST)
MIME-Version: 1.0
References: <20210205085220.31232-1-ardb@kernel.org> <CAKwvOdkg75CRM0QNeO4ojM=OndFgJ+j7fO3Yt=jE4k0eTfYmRQ@mail.gmail.com>
In-Reply-To: <CAKwvOdkg75CRM0QNeO4ojM=OndFgJ+j7fO3Yt=jE4k0eTfYmRQ@mail.gmail.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Fri, 5 Feb 2021 19:11:30 +0100
X-Gmail-Original-Message-ID: <CAMj1kXHKOEJokzHH_Bf0bq-ATmJ4u-yZUN_tAYJvTX4c_trMXw@mail.gmail.com>
Message-ID: <CAMj1kXHKOEJokzHH_Bf0bq-ATmJ4u-yZUN_tAYJvTX4c_trMXw@mail.gmail.com>
Subject: Re: [PATCH] ARM: decompressor: fix BSS size calculation for LLVM ld.lld
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Russell King <linux@armlinux.org.uk>, Nathan Chancellor <nathan@kernel.org>, 
	Guillaume Tucker <guillaume.tucker@collabora.com>, Fangrui Song <maskray@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=XhKmdt1b;       spf=pass
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

On Fri, 5 Feb 2021 at 19:00, Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> On Fri, Feb 5, 2021 at 12:52 AM Ard Biesheuvel <ardb@kernel.org> wrote:
> >
> > The LLVM ld.lld linker uses a different symbol type for __bss_start,
> > resulting in the calculation of KBSS_SZ to be thrown off. Up until now,
> > this has gone unnoticed as it only affects the appended DTB case, but
> > pending changes for ARM in the way the decompressed kernel is cleaned
> > from the caches has uncovered this problem.
> >
> > On a ld.lld build:
> >
> >   $ nm vmlinux |grep bss_
> >   c1c22034 D __bss_start
> >   c1c86e98 B __bss_stop
> >
> > resulting in
> >
>
> $ readelf -s arch/arm/boot/compressed/vmlinux | grep bss_size
>
> >   433: c1c86e98     0 NOTYPE  GLOBAL DEFAULT  ABS _kernel_bss_size
> >
> > which is obviously incorrect, and may cause the cache clean to access
> > unmapped memory, or cause the size calculation to wrap, resulting in no
> > cache clean to be performed at all.
> >
> > Fix this by updating the sed regex to take D type symbols into account.
> >
> > Cc: Nick Desaulniers <ndesaulniers@google.com>
> > Cc: Nathan Chancellor <nathan@kernel.org>
> > Cc: Guillaume Tucker <guillaume.tucker@collabora.com>
> > Link: https://lore.kernel.org/linux-arm-kernel/6c65bcef-d4e7-25fa-43cf-2c435bb61bb9@collabora.com/
> > Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
>
>
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> Tested-by: Nick Desaulniers <ndesaulniers@google.com>
>
> Thanks for debugging+fixing this, and Guillaume for the report.  It's
> nice to see a fix so early; thinking back to last year before KernelCI
> integration, we probably would have only noticed when CrOS went to
> upgrade their rk3288 platform devices.
>
> Some other tags that might be nice to apply:
>
> Cc: stable@kernel.org
> Fixes: 429f7a062e3b ("ARM: decompressor: fix BSS size calculation")
> Reported-by: Guillaume Tucker <guillaume.tucker@collabora.com>
> Reported-by: "kernelci.org bot" <bot@kernelci.org>
>

Thanks. I'll add these tags and drop this patch into the patch system

> Tests run:
>
...
>
> + Fangrui,
> Fangrui, __bss_start looks like it's linker script defined by the
> BSS_SECTION macro from include/asm-generic/vmlinux.lds.h:1160 being
> used in arch/arm/kernel/vmlinux.lds.S:149.  Should these symbols be
> placed in .bss? Might save a few bytes in the image, unless there's an
> initial value that's encoded with them?
>

Not sure what you are asking here. These symbols just delineate .bss,
they don't take up any space themselves.

What seems to be happening is that the placement of __bss_start
outside of the .sbss/.bss section declarations causes it to be
annotated as residing in .data.


> > ---
> >  arch/arm/boot/compressed/Makefile | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/arch/arm/boot/compressed/Makefile b/arch/arm/boot/compressed/Makefile
> > index fb521efcc6c2..54307db7854d 100644
> > --- a/arch/arm/boot/compressed/Makefile
> > +++ b/arch/arm/boot/compressed/Makefile
> > @@ -115,8 +115,8 @@ asflags-y := -DZIMAGE
> >
> >  # Supply kernel BSS size to the decompressor via a linker symbol.
> >  KBSS_SZ = $(shell echo $$(($$($(NM) $(obj)/../../../../vmlinux | \
> > -               sed -n -e 's/^\([^ ]*\) [AB] __bss_start$$/-0x\1/p' \
> > -                      -e 's/^\([^ ]*\) [AB] __bss_stop$$/+0x\1/p') )) )
> > +               sed -n -e 's/^\([^ ]*\) [ABD] __bss_start$$/-0x\1/p' \
> > +                      -e 's/^\([^ ]*\) [ABD] __bss_stop$$/+0x\1/p') )) )
>
> I wasn't sure whether we still needed `A`, but
> commit 6cea14f55474 ("ARM: replace unnecessary perl with sed and the
> shell $(( )) operator")
> references that depending on the version of binutils you might observe
> that.  There's no more info on which version or under what conditions.
> Lest we reintroduce this same problem for that version, it's fine to
> leave it.
>

Agreed.

> >  LDFLAGS_vmlinux = --defsym _kernel_bss_size=$(KBSS_SZ)
> >  # Supply ZRELADDR to the decompressor via a linker symbol.
> >  ifneq ($(CONFIG_AUTO_ZRELADDR),y)
> > --
> > 2.30.0
> >
>
>
> --
> Thanks,
> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMj1kXHKOEJokzHH_Bf0bq-ATmJ4u-yZUN_tAYJvTX4c_trMXw%40mail.gmail.com.
