Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBX5RZL3QKGQESKQVY7I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x537.google.com (mail-pg1-x537.google.com [IPv6:2607:f8b0:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 283DB2068C7
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 02:05:53 +0200 (CEST)
Received: by mail-pg1-x537.google.com with SMTP id v15sf413228pgi.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jun 2020 17:05:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592957151; cv=pass;
        d=google.com; s=arc-20160816;
        b=ubH5aEi2IJ4rdK2GuGRYeRhzQwEPvUeG0DwLLOOLUsiFMGHtWSvGHFYMNVIKznBZRC
         gkFR40IR9zdwBEtx6LbGcBFx1S59fCHeYQPRi392FV/osAUhe+EwPAdBDFae6a8/aGda
         S5fnJI72kJJjsttoCKpk114qcc+weyoAxmqYJ31hdqLug3uCUXkZOTocb1WfL/JwLxvW
         RjbQ+Ql23hZ7r8/9hqd2cxNlXKDZdA9ekVMaJlkJhcM7r1+pHhwf/fA+DnsTpeQ3ZmRU
         sh1qMCyUFBOOEDWhoVj662d7idUYDQsRoldar1QIFd7GSXNqqCxgWc/1KU0aalkjiJNO
         Cs3A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=rlRoQupVp0w2S/C5MLfIwH0qafjogZeECCSHRdkv2LM=;
        b=cRVRfX3O/UjULObDYZ6jdICIi4t1BfrIOpIcsF3dSXPV+6KflsNwLfTO0z4IztO+s3
         dcSb+vkJS89EhEGngd3tuzVHL54umbgPAyjD1oAn2pvqUO4V0aHt3dvec0q4RmiH+232
         M77X5Guz72xYw2Zzws0RaCphZlGJO3UMnkkqVYaWuuSPhBTdCuo2u/EOALubD8JKfB+S
         z/tS8R/j3scAYLG5m3rHJ+hpHnODdTi6Redkhu6asB9JXti6IZOv0XUn29VxcWOTlIVE
         bcqlcmDfkzocdjbUdk+Fxontuu3o9LEL/EJuqXonOwRV6QDcCpw7Rosj3/nIs8Loag7w
         yBjA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="H/YP5wjn";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rlRoQupVp0w2S/C5MLfIwH0qafjogZeECCSHRdkv2LM=;
        b=AMKWEKLS9WnrGXufZUDI94U8Xk12FXKinSPowiJ5Dyhp8GTrxY0DtHaQyoZP2CSumF
         6IZzhFrKsf1+nUisL0KWM/4wLjq/cQVfj5TLXv8PzGsIY3oG8pTBEEDGfOpbRZ7BKB1N
         WnXR1yN1DLb1IT0Nc7X8NkPquvToSJcuygW/WbY3Kh7va+UDWKmcdERePmtzYgcbVb75
         XtUFQXKjJduYVdlmxrfRxaidn1c/FBgu43PPzZYs5adx307X2hznTEYb6AqvHF3F5eHZ
         yray3XFjQu1PoF3l1lw/6O2YZe8q8Op17rX6r6BVf+rNNOFq7LdZ9KDixrSpTP3Y7/EA
         g5UQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=rlRoQupVp0w2S/C5MLfIwH0qafjogZeECCSHRdkv2LM=;
        b=FbaeBFf3VaHjWtQL2gsegWLRvag3nYO+F9vJScGf8cE7YRXr/PE7ygRPbu+a8AYTos
         WoGWk4qo4p7uFt/f3ifWCTdKs/E8Ezcvr02W6lC0vj4zp1Ocd3gyLYS6W66VSiOS5HJ0
         hImpp2wtKWfT+269V7CqdV3OXbQAmN1T3y8TtZBh3H6XW6qTrlTR93QmYywySPD1wpsT
         voaT1pme6YjpJXihqseT/i8ms5JDN8++Y5vjVgmucGn+Dz3+rC+N6kp/VhTEmSzJYrLn
         Zzz7T1BQAGO0P8yjqovTz6Ak9Qn1KWVxXCZbGviMrXospHSU36LNX0+avJ8ix6uj1OK5
         9jOg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53197gBQVMVN17OPogyeMYvxfoeSkOJ/5FKGiNDv0jaRG7zrQTp6
	9RgbDxX/Bwhav6r/tON6s/Q=
X-Google-Smtp-Source: ABdhPJxVtgSDzO/r/JApDn1JrqK0XnSH0VVD2hx+sHHkq/E1dRtaZCbO2jZAHlELSISsNgWMDW1uCw==
X-Received: by 2002:a17:90a:e7c2:: with SMTP id kb2mr5700295pjb.69.1592957151398;
        Tue, 23 Jun 2020 17:05:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:8306:: with SMTP id h6ls164193pfe.1.gmail; Tue, 23 Jun
 2020 17:05:51 -0700 (PDT)
X-Received: by 2002:a65:6706:: with SMTP id u6mr9839641pgf.69.1592957150981;
        Tue, 23 Jun 2020 17:05:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592957150; cv=none;
        d=google.com; s=arc-20160816;
        b=vj0R1bJcQYG2zUWlmGk6mVgmge2l3rwPVpN3ZkMMBBeiXGxJDEbcoXkgaNAvDYKyvo
         Dc68sQuwtA59BJF7CFwgNUtzBUewO1qY5BWxY8wM9fvPPDXz5OQdncFfqE2FDoovzKRj
         Ok7wOxp5jhz2yEHnXW5NcGbMLKgdVgKH6LfNq+jZVGdGFPMoLlglanEOcT7tOAvaaNFK
         iyvXjDlfUpR3JJceLraa9KRtoj3x6V7D3GzA61koBVMoB/LCEy/T96UEUvOi6QpXYKfu
         Qb2ouatj1mYm399UTCvQ4kUbgrZmR0MHc73Ohhst1Xsaskg0h0GnHR7kSl43546lG/34
         3q9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=eeMcryoES1Zk+WEQVanRwk+k+RAQLRwTLDMRlv6REFI=;
        b=yfIuwg94uAOgHsFB112+K4dzjJH6akwtPgkdZ21jJvzqrTH61Gu6k0hCSCH+ztUF0Q
         SQ/c98D2SW/J+NHFRcU2Xis/Tut6pTTVil0zx5rlqk7g639X0UaSUYVuWnjhYfoH4fmg
         1I9B5QbMRUb6sNrFfDlVdZZ8XJNzRq5i55JlIJl/nIbbL07sSxToDMAJHoHf6LOrvcJF
         WMpUubvG6Owp7OpfbCBvzlQ2sCqiicENOo/oqlbBFFDKO9nMFcFeHEGgHd3jDGOxsRhF
         oxKLzRvBYUeKZ6ofvPm8MP1NjQ/SrBzo7Fyp2e0JseZ8DW/ASYNc+DMQzXib5Vi44PWa
         cgHQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="H/YP5wjn";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id l137si1100399pfd.3.2020.06.23.17.05.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Jun 2020 17:05:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Received: by mail-pj1-x1044.google.com with SMTP id i12so243969pju.3
        for <clang-built-linux@googlegroups.com>; Tue, 23 Jun 2020 17:05:50 -0700 (PDT)
X-Received: by 2002:a17:90a:2070:: with SMTP id n103mr26561317pjc.109.1592957150621;
        Tue, 23 Jun 2020 17:05:50 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id u12sm3220898pjy.37.2020.06.23.17.05.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jun 2020 17:05:49 -0700 (PDT)
Date: Tue, 23 Jun 2020 17:05:48 -0700
From: Kees Cook <keescook@chromium.org>
To: Ard Biesheuvel <ardb@kernel.org>
Cc: Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>, Arnd Bergmann <arnd@arndb.de>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2 2/2] arm64/build: Warn on orphan section placement
Message-ID: <202006231704.EBCD26CE7@keescook>
References: <20200622205815.2988115-1-keescook@chromium.org>
 <20200622205815.2988115-3-keescook@chromium.org>
 <20200623145218.GC4336@willie-the-truck>
 <CAMj1kXEPe10EY1uE1vberVMXv9sx4ZRHgmssOypYm5ya5G9KoA@mail.gmail.com>
 <202006231208.F3DA600E18@keescook>
 <CAMj1kXGnm=uujNfNGJzQxd7BSF0qT2n6jPX1OqwnGov1nKC_cg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAMj1kXGnm=uujNfNGJzQxd7BSF0qT2n6jPX1OqwnGov1nKC_cg@mail.gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b="H/YP5wjn";       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1044
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Tue, Jun 23, 2020 at 11:21:16PM +0200, Ard Biesheuvel wrote:
> On Tue, 23 Jun 2020 at 23:06, Kees Cook <keescook@chromium.org> wrote:
> >
> > On Tue, Jun 23, 2020 at 04:59:39PM +0200, Ard Biesheuvel wrote:
> > > On Tue, 23 Jun 2020 at 16:52, Will Deacon <will@kernel.org> wrote:
> > > >
> > > > On Mon, Jun 22, 2020 at 01:58:15PM -0700, Kees Cook wrote:
> > > > > We don't want to depend on the linker's orphan section placement
> > > > > heuristics as these can vary between linkers, and may change between
> > > > > versions. All sections need to be explicitly named in the linker
> > > > > script.
> > > > >
> > > > > Explicitly include debug sections when they're present. Add .eh_frame*
> > > > > to discard as it seems that these are still generated even though
> > > > > -fno-asynchronous-unwind-tables is being specified. Add .plt and
> > > > > .data.rel.ro to discards as they are not actually used. Add .got.plt
> > > > > to the image as it does appear to be mapped near .data. Finally enable
> > > > > orphan section warnings.
> > > >
> > > > Can you elaborate a bit on what .got.plt is being used for, please? I
> > > > wonder if there's an interaction with an erratum workaround in the linker
> > > > or something.
> > > >
> > >
> > > .got.plt is not used at all, but it has three magic entries at the
> > > start that the dynamic linker uses for lazy dispatch, so it turns up
> > > as a non-empty section of 0x18 bytes.
> >
> > Is there a way to suppress the generation? I haven't found a way, so I'd
> > left it as-is.
> >
> 
> Not really. What we could do is assert that it is empty, and emit it
> as info, so the 24 bytes are not emitted into the image.
> 
> 
> This change
> 
> diff --git a/arch/arm64/kernel/vmlinux.lds.S b/arch/arm64/kernel/vmlinux.lds.S
> index 6827da7f3aa5..9e13b371559f 100644
> --- a/arch/arm64/kernel/vmlinux.lds.S
> +++ b/arch/arm64/kernel/vmlinux.lds.S
> @@ -244,6 +244,9 @@ SECTIONS
>         __pecoff_data_size = ABSOLUTE(. - __initdata_begin);
>         _end = .;
> 
> +       .got.plt (INFO) : { *(.got.plt) }
> +        ASSERT(SIZEOF(.got.plt) == 0 || SIZEOF(.got.plt) == 0x18,
> ".got.plt not empty")
> +

Oh yes, I like that. I will do so.

>         STABS_DEBUG
> 
>         HEAD_SYMBOLS
> 
> results in
> 
>   [28] .bss              NOBITS           ffff800010d71000  00d70200
>        0000000000084120  0000000000000000  WA       0     0     4096
>   [29] .got.plt          PROGBITS         ffff800010e00000  00d70200
>        0000000000000018  0000000000000008   W       0     0     8
>   [30] .comment          PROGBITS         0000000000000000  00d70218
>        000000000000001c  0000000000000001  MS       0     0     1
> 
> in the ELF output, so it will be emitted from the image, unless it
> actually have any entries, in which case we fail the build.
> 
> 
> 
> > > We should be able to discard it afaict, but given that it does not
> > > actually take up any space, it doesn't really matter either way.
> >
> > I will add it to the discards then.
> >
> 
> That would prevent us from doing the assert on its size, so i think
> the above is more suitable in this case
> 
> > > > > diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
> > > > > index a0d94d063fa8..3e628983445a 100644
> > > > > --- a/arch/arm64/Makefile
> > > > > +++ b/arch/arm64/Makefile
> > > > > @@ -29,6 +29,10 @@ LDFLAGS_vmlinux    += --fix-cortex-a53-843419
> > > > >    endif
> > > > >  endif
> > > > >
> > > > > +# We never want expected sections to be placed heuristically by the
> > > > > +# linker. All sections should be explicitly named in the linker script.
> > > > > +LDFLAGS_vmlinux += --orphan-handling=warn
> > > > > +
> > > > >  ifeq ($(CONFIG_ARM64_USE_LSE_ATOMICS), y)
> > > > >    ifneq ($(CONFIG_ARM64_LSE_ATOMICS), y)
> > > > >  $(warning LSE atomics not supported by binutils)
> > > > > diff --git a/arch/arm64/kernel/vmlinux.lds.S b/arch/arm64/kernel/vmlinux.lds.S
> > > > > index 5427f502c3a6..c9ecb3b2007d 100644
> > > > > --- a/arch/arm64/kernel/vmlinux.lds.S
> > > > > +++ b/arch/arm64/kernel/vmlinux.lds.S
> > > > > @@ -94,7 +94,8 @@ SECTIONS
> > > > >       /DISCARD/ : {
> > > > >               *(.interp .dynamic)
> > > > >               *(.dynsym .dynstr .hash .gnu.hash)
> > > > > -             *(.eh_frame)
> > > > > +             *(.plt) *(.data.rel.ro)
> > > > > +             *(.eh_frame) *(.init.eh_frame)
> > > >
> > > > Do we need to include .eh_frame_hdr here too?
> > >
> > > It would be better to build with -fno-unwind-tables, in which case
> > > these sections should not even exist.
> >
> > Nothing seems to help with the .eh_frame issue
> > (even with -fno-asynchronous-unwind-tables and -fno-unwind-tables):
> >
> > $ aarch64-linux-gnu-gcc -Wp,-MMD,arch/arm64/kernel/.smccc-call.o.d \
> >   -nostdinc -isystem /usr/lib/gcc-cross/aarch64-linux-gnu/9/include \
> >   -I./arch/arm64/include -I./arch/arm64/include/generated  -I./include \
> >   -I./arch/arm64/include/uapi -I./arch/arm64/include/generated/uapi \
> >   -I./include/uapi -I./include/generated/uapi -include \
> >   ./include/linux/kconfig.h -D__KERNEL__ -mlittle-endian \
> >   -DCC_USING_PATCHABLE_FUNCTION_ENTRY -DKASAN_SHADOW_SCALE_SHIFT=3 \
> >   -D__ASSEMBLY__ -fno-PIE -mabi=lp64 -fno-asynchronous-unwind-tables \
> >   -fno-unwind-tables -DKASAN_SHADOW_SCALE_SHIFT=3 -Wa,-gdwarf-2 -c -o \
> >   arch/arm64/kernel/smccc-call.o arch/arm64/kernel/smccc-call.S
> >
> > $ readelf -S arch/arm64/kernel/smccc-call.o | grep eh_frame
> >   [17] .eh_frame         PROGBITS         0000000000000000  000001f0
> >   [18] .rela.eh_frame    RELA             0000000000000000  00000618
> >
> 
> That is because that file has CFI annotations which it doesn't need
> (since we don't unwind data).

Oh no, another TLA collision. ;) "Call Frame Information". Nice find. I
will fix this as you've suggested too.

> The below should fix that - I guess this may have been inherited from
> 32-bit ARM, where we do use unwind data in the kernel?
> 
> diff --git a/arch/arm64/kernel/smccc-call.S b/arch/arm64/kernel/smccc-call.S
> index 1f93809528a4..d62447964ed9 100644
> --- a/arch/arm64/kernel/smccc-call.S
> +++ b/arch/arm64/kernel/smccc-call.S
> @@ -9,7 +9,6 @@
>  #include <asm/assembler.h>
> 
>         .macro SMCCC instr
> -       .cfi_startproc
>         \instr  #0
>         ldr     x4, [sp]
>         stp     x0, x1, [x4, #ARM_SMCCC_RES_X0_OFFS]
> @@ -21,7 +20,6 @@
>         b.ne    1f
>         str     x6, [x4, ARM_SMCCC_QUIRK_STATE_OFFS]
>  1:     ret
> -       .cfi_endproc
>         .endm

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202006231704.EBCD26CE7%40keescook.
