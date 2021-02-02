Return-Path: <clang-built-linux+bncBDYJPJO25UGBBQ5446AAMGQEYTPUTAA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x537.google.com (mail-pg1-x537.google.com [IPv6:2607:f8b0:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 95C6C30CFCF
	for <lists+clang-built-linux@lfdr.de>; Wed,  3 Feb 2021 00:20:36 +0100 (CET)
Received: by mail-pg1-x537.google.com with SMTP id f16sf15272128pgh.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 02 Feb 2021 15:20:36 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612308035; cv=pass;
        d=google.com; s=arc-20160816;
        b=El24MM/ON0nI0TLd/RYArSVgmI7IZXVGJdcx/1wLU2F1I0wwFDXWMO2zj+NcXQYGKH
         /NTK5GbjTUNb1Ozs11MAia5OUukQiV55qOcxQDy+frYfS8BddkydrspX6NCMj278sm01
         FEvFL2KB/tJV/SM7o7s6WjksZCHSEDy12g5cz56wQy1ru1rbU5XPBxsUcPWghjrmEh57
         xYBL512lglT8hSKxBYkFuXgkMHTqmAoaPvaKJ2ZyFr/k7GcZEI4Omyw7UoJBZvBjiBNb
         0fYa1At2JlOVLrQlo0lNQylIbzkM8IIOg+XKogQw9FpFWHBLWPoIEQEE7/HoP8YGJfQe
         44qg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=MWoSPPEK1ZVO6PeKsOGDu0Xyja509ZsBrYEFxY9KVXQ=;
        b=MKNdk8kWE4ZkcRRr9Jf0bYrsv5pqmTXkXUNHczTKjfrLxAyRaswGfWhq2cDHN02iJK
         xzBcEuBkSwDhECXh385vvrOaUlg1+0J0dId9vHvZXV8mV90LUAEnhXuwOrJsDI9BIJYU
         CsdHucGx6DRUcjyZM+KCPapyXSWb+sqdxqCaQJ+dvBsTfxi+eAc0+hoVniPl8RBVNg8O
         jYyDEnbgrSqA2+J6O4DMIruyxZVNwcVJQWdFIJHV1BAgw4sATJU8ZNAoz9jdsbMAJ93/
         V8jIphXGNTo/meSgET0MIunIj6ABL+RN6RFZUAPLW63vj58pLxOuftec8PJGxm9Ia2Ol
         ysrQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=tguqq1BX;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MWoSPPEK1ZVO6PeKsOGDu0Xyja509ZsBrYEFxY9KVXQ=;
        b=AglpUhKgssJQvv4RPTdqfxzBrIIeXuqiOuf7xfiENMGKQW1kYRnC2Os/MVx4a4rrhm
         BtpLryaBwlwdpsn6i11jaVmHIyhZMowBeLRGQ8WukzG01yghZ7CoOvMaMzbUnTsVQmvY
         xSJp9Dj4NHbkTfbU3VIVgmFHtwpVaiGt3eIbYSfHMfiqHiIBXayLFMsDp5HWVThZfWAV
         a4Tn4xTdeb7jUTdE0XnTSQZoTidylj6WrUU2Qo0YeyTAflV+lepNN08mw7P44pABwmGy
         E5p1sMeBjkoAW5VyI5NKtTYra9sNd2YDYy/0jvUEr7s4l/MxqmhAqyqq5L6uGkQ3hpdl
         o9aA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MWoSPPEK1ZVO6PeKsOGDu0Xyja509ZsBrYEFxY9KVXQ=;
        b=TlP8mn8rm+Ha5Gh27EdWgrATxpu73rFCeFSSHokpnbJH3B2eJk/zPhf4/VwfmHOVfM
         zfPuKU7YTj9ovf3+aMuOR4MG7XBmZGWg4hJP+Sri2W6Kx3Ec4d7iMjGg6go3VAA1vkBm
         gZ/Rthz6xZsHGh38aY0/t2xEbfio4fid/Jhv9B9voXFgL4CZaerOaEhLDQK1Obeii5hc
         4OVSmwi4mAsi4cTfYbeWYKCV41JQellPH5k5butWY25RUmOhay92p2IxVXrNufnm8QaH
         /OlFxHfBi0fK2I8WuVXcCTxSZVlvBWxdVjYgKguR7weA+M480n8/2DzgD9x/hDQ+Eoo5
         8LEg==
X-Gm-Message-State: AOAM5328B2ZuuXQbjG7EL1UhTP5SvwZ7Qmm029tC3ma5NVF3LLEiftl/
	xZ9yMu78jM6CdfnuJgPLxi8=
X-Google-Smtp-Source: ABdhPJyoBeIVHbLiDALEPUOQdVKwidORctK57dZlyMqgXiGsqh8QjwHxoJPwUKpQ2fDlj1TEydEMPw==
X-Received: by 2002:a63:4f1e:: with SMTP id d30mr435991pgb.203.1612308035342;
        Tue, 02 Feb 2021 15:20:35 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:6d0e:: with SMTP id i14ls82717pgc.8.gmail; Tue, 02 Feb
 2021 15:20:34 -0800 (PST)
X-Received: by 2002:a63:c70c:: with SMTP id n12mr440419pgg.347.1612308034631;
        Tue, 02 Feb 2021 15:20:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612308034; cv=none;
        d=google.com; s=arc-20160816;
        b=mtC66iZCymuUetT8p9lpEyKDEI4F3htgqonjA2vDVXl8zqnybEjbAiW57HSuJjDEh2
         xqOu8Du5o0ZbHPX5A2m/h7Gfj7Uck5Yzp+jSaJF963fLBb68EwOdIi6J6WElYNDYzeNh
         6w59Dyl4UyFPsb/TBHGA/fiyrXS1ehLflg1zTQ4mSkYGpLJQKf4b3wqoETTweNPgApCA
         WojSQ2EfpoB3nBAfJT4UAL0KRCV4Or3n0NN6uX59renFt4Ss6TdHIekYEpkkm2sQRhpo
         cWZ4EJyr3KKYgZ+zIJcp2noC2IfK4cxjjtLKrgDFeYJBLUpA4595vqhwVWvC+J2t6bS5
         UY3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=XEuEO3RsVjr9B2SQWPNe7La7w8u1REO3RR1aADbKhKc=;
        b=VSDX4bESnpOmsoGFpmqJS8tdM6T8FbjM82K1aAHgdbzq2eNcr7fgyAXZPHWFSoQnyj
         k4jYV9xTSWVXYYS80CT1lp+q3hnW9rs7uN8rNZIBj3x6s1JCt+afYiliaWz23b216dKt
         0BnDmLj3L8u3xmYje4bUUQIoMN/pWX7z+KwlP48PGjgqv+eJIDfPNu6h7/XMqGoPx+ua
         59/LHXLoHwJcQ8ENVEJ8VGQG1qjb4RO9BTf/+WBo6h6of5bNuYx7ecyD8BmffGjODkUV
         pjPVEcHJ8U5bNo1d9/6Wk/R3B6cfOz+8AaCx5br7q2VZ0fleV9/3OR9bn8QVte+yAnrx
         +LUA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=tguqq1BX;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com. [2607:f8b0:4864:20::62b])
        by gmr-mx.google.com with ESMTPS id j11si25833pgm.4.2021.02.02.15.20.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Feb 2021 15:20:34 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62b as permitted sender) client-ip=2607:f8b0:4864:20::62b;
Received: by mail-pl1-x62b.google.com with SMTP id b17so13383165plz.6
        for <clang-built-linux@googlegroups.com>; Tue, 02 Feb 2021 15:20:34 -0800 (PST)
X-Received: by 2002:a17:902:ed94:b029:de:8844:a650 with SMTP id
 e20-20020a170902ed94b02900de8844a650mr526774plj.56.1612308034051; Tue, 02 Feb
 2021 15:20:34 -0800 (PST)
MIME-Version: 1.0
References: <20210128014539.2962552-1-ndesaulniers@google.com> <CAK8P3a0VVCuo===sUYA-2QYRr1bbYj3CptT3dJsBUYmpNheY2g@mail.gmail.com>
In-Reply-To: <CAK8P3a0VVCuo===sUYA-2QYRr1bbYj3CptT3dJsBUYmpNheY2g@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 2 Feb 2021 15:20:22 -0800
Message-ID: <CAKwvOdn-df5=xEj-TTNrHvihDKGCC3vWA6Q0oZ+GycezsfAMyg@mail.gmail.com>
Subject: Re: [RFC] ARM: use .arch directives instead of assembler command line flags
To: Arnd Bergmann <arnd@kernel.org>
Cc: Arnd Bergmann <arnd@arndb.de>, clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=tguqq1BX;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62b
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

It looks like David's LLVM patch makes all of this irrelevant!
https://reviews.llvm.org/D95872 (for 32b arm), as he notes in
https://bugs.llvm.org/show_bug.cgi?id=48894#c8 this is still a problem
for clang for 64b, but at least now we have a pretty good
understanding of the issue and template to follow to solve it there,
too.

On Thu, Jan 28, 2021 at 1:52 AM Arnd Bergmann <arnd@kernel.org> wrote:
>
> On Thu, Jan 28, 2021 at 2:45 AM 'Nick Desaulniers' via Clang Built
> Linux <clang-built-linux@googlegroups.com> wrote:
> >
> > Similar to commit a6c30873ee4a ("ARM: 8989/1: use .fpu assembler
> > directives instead of assembler arguments").
> >
> > GCC and GNU binutils support setting the "sub arch" via -march=,
> > -Wa,-march, target function attribute, and .arch assembler directive.
> >
> > Clang's integrated assembler does not support -Wa,-march (and the logic
> > to overrule one when multiple of the above are used).
> >
> > Since most assembler is non-conditionally assembled with one sub arch
> > (modulo arch/arm/delay-loop.S which conditionally is assembled as armv4
> > based on CONFIG_ARCH_RPC, and arch/arm/mach-at91/pm-suspend.S which is
> > conditionally assembled as armv7-a based on CONFIG_CPU_V7), prefer the
> > .arch assembler directive.
> >
> > Link: https://bugs.llvm.org/show_bug.cgi?id=48894
> > Link: https://github.com/ClangBuiltLinux/linux/issues/1195
> > Suggested-by: Arnd Bergmann <arnd@arndb.de>
> > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
>
> Looks good to me in general. However, there are a few extra ones
> I needed for my randconfig builds in the end:
>
> a) inline assembly in .c files:
>
> diff --git a/arch/arm/kernel/Makefile b/arch/arm/kernel/Makefile
> index 48a02eb3ac89..62d56e2dda7f 100644
> --- a/arch/arm/kernel/Makefile
> +++ b/arch/arm/kernel/Makefile
> @@ -70,7 +70,6 @@ obj-$(CONFIG_HAVE_TCM)                += tcm.o
>  obj-$(CONFIG_OF)               += devtree.o
>  obj-$(CONFIG_CRASH_DUMP)       += crash_dump.o
>  obj-$(CONFIG_SWP_EMULATE)      += swp_emulate.o
> -CFLAGS_swp_emulate.o           := -Wa,-march=armv7-a
>  obj-$(CONFIG_HAVE_HW_BREAKPOINT)       += hw_breakpoint.o
>
>  obj-$(CONFIG_CPU_XSCALE)       += xscale-cp0.o
> diff --git a/arch/arm/kernel/swp_emulate.c b/arch/arm/kernel/swp_emulate.c
> index 35ff7c7965a9..bdff448bd0f2 100644
> --- a/arch/arm/kernel/swp_emulate.c
> +++ b/arch/arm/kernel/swp_emulate.c
> @@ -34,6 +34,7 @@
>   */
>  #define __user_swpX_asm(data, addr, res, temp, B)              \
>         __asm__ __volatile__(                                   \
> +       ".arch armv7-a\n"                                       \
>         "0:     ldrex"B"        %2, [%3]\n"                     \
>         "1:     strex"B"        %0, %1, [%3]\n"                 \
>         "       cmp             %0, #0\n"                       \
> diff --git a/arch/arm/mach-mvebu/Makefile b/arch/arm/mach-mvebu/Makefile
> index d62612bfac48..9b9fddb69958 100644
> --- a/arch/arm/mach-mvebu/Makefile
> +++ b/arch/arm/mach-mvebu/Makefile
> @@ -1,8 +1,6 @@
>  # SPDX-License-Identifier: GPL-2.0
>  ccflags-$(CONFIG_ARCH_MULTIPLATFORM) :=
> -I$(srctree)/arch/arm/plat-orion/include
>
> -CFLAGS_pmsu.o                  := -march=armv7-a
> -
>  obj-$(CONFIG_MACH_MVEBU_ANY)    += system-controller.o mvebu-soc-id.o
>
>  ifeq ($(CONFIG_MACH_MVEBU_V7),y)
> diff --git a/arch/arm/mach-mvebu/pmsu.c b/arch/arm/mach-mvebu/pmsu.c
> index 73d5d72dfc3e..9a77cc3a10bd 100644
> --- a/arch/arm/mach-mvebu/pmsu.c
> +++ b/arch/arm/mach-mvebu/pmsu.c
> @@ -294,6 +294,7 @@ int armada_370_xp_pmsu_idle_enter(unsigned long deepidle)
>
>         /* Test the CR_C bit and set it if it was cleared */
>         asm volatile(
> +       ".arch  armv7-a\n\t"
>         "mrc    p15, 0, r0, c1, c0, 0 \n\t"
>         "tst    r0, %0 \n\t"
>         "orreq  r0, r0, #(1 << 2) \n\t"
>
>
> b) an arm specific driver:
>
> diff --git a/drivers/memory/Makefile b/drivers/memory/Makefile
> index bc7663ed1c25..d1388a748872 100644
> --- a/drivers/memory/Makefile
> +++ b/drivers/memory/Makefile
> @@ -32,8 +32,6 @@ obj-$(CONFIG_FPGA_DFL_EMIF)   += dfl-emif.o
>
>  ti-emif-sram-objs              := ti-emif-pm.o ti-emif-sram-pm.o
>
> -AFLAGS_ti-emif-sram-pm.o       :=-Wa,-march=armv7-a
> -
>  $(obj)/ti-emif-sram-pm.o: $(obj)/ti-emif-asm-offsets.h
>
>  $(obj)/ti-emif-asm-offsets.h: $(obj)/emif-asm-offsets.s FORCE
> diff --git a/drivers/memory/ti-emif-sram-pm.S b/drivers/memory/ti-emif-sram-pm.S
> index d1c83bd5b98e..af2feb251303 100644
> --- a/drivers/memory/ti-emif-sram-pm.S
> +++ b/drivers/memory/ti-emif-sram-pm.S
> @@ -36,6 +36,7 @@
>
>         .arm
>         .align 3
> +       .arch armv7-a
>
>  ENTRY(ti_emif_sram)
>
>
> c) slightly different problem: .arch xscale is not understood by clang,
> but .arch armv5te is sufficient:
>
>
> diff --git a/arch/arm/mm/Makefile b/arch/arm/mm/Makefile
> index d8f751b94126..71b858c9b10c 100644
> --- a/arch/arm/mm/Makefile
> +++ b/arch/arm/mm/Makefile
> @@ -55,8 +55,6 @@ obj-$(CONFIG_CPU_XSCALE)      += copypage-xscale.o
>  obj-$(CONFIG_CPU_XSC3)         += copypage-xsc3.o
>  obj-$(CONFIG_CPU_COPY_FA)      += copypage-fa.o
>
> -CFLAGS_copypage-feroceon.o := -march=armv5te
> -
>  obj-$(CONFIG_CPU_TLB_V4WT)     += tlb-v4.o
>  obj-$(CONFIG_CPU_TLB_V4WB)     += tlb-v4wb.o
>  obj-$(CONFIG_CPU_TLB_V4WBI)    += tlb-v4wbi.o
> diff --git a/arch/arm/mm/copypage-feroceon.c b/arch/arm/mm/copypage-feroceon.c
> index 064b19e63571..5fc8ef1e665f 100644
> --- a/arch/arm/mm/copypage-feroceon.c
> +++ b/arch/arm/mm/copypage-feroceon.c
> @@ -15,6 +15,7 @@ static void feroceon_copy_user_page(void *kto, const
> void *kfrom)
>         int tmp;
>
>         asm volatile ("\
> +.arch  armv5te                                 \n\
>  1:     ldmia   %1!, {r2 - r7, ip, lr}          \n\
>         pld     [%1, #0]                        \n\
>         pld     [%1, #32]                       \n\
> diff --git a/arch/arm/mm/copypage-xsc3.c b/arch/arm/mm/copypage-xsc3.c
> index 8fc8f3b91197..3cc74a4862c5 100644
> --- a/arch/arm/mm/copypage-xsc3.c
> +++ b/arch/arm/mm/copypage-xsc3.c
> @@ -29,7 +29,7 @@ static void xsc3_mc_copy_user_page(void *kto, const
> void *kfrom)
>         int tmp;
>
>         asm volatile ("\
> -.arch  xscale                                  \n\
> +.arch  armv5te                                 \n\
>         pld     [%1, #0]                        \n\
>         pld     [%1, #32]                       \n\
>  1:     pld     [%1, #64]                       \n\
> @@ -81,7 +81,7 @@ void xsc3_mc_clear_user_highpage(struct page *page,
> unsigned long vaddr)
>  {
>         void *ptr, *kaddr = kmap_atomic(page);
>         asm volatile ("\
> -.arch  xscale                                  \n\
> +.arch  armv5te                                 \n\
>         mov     r1, %2                          \n\
>         mov     r2, #0                          \n\
>         mov     r3, #0                          \n\
> diff --git a/arch/arm/mm/copypage-xscale.c b/arch/arm/mm/copypage-xscale.c
> index eb5d338657d1..c7461755082b 100644
> --- a/arch/arm/mm/copypage-xscale.c
> +++ b/arch/arm/mm/copypage-xscale.c
> @@ -41,7 +41,7 @@ static void mc_copy_user_page(void *from, void *to)
>          * when prefetching destination as well.  (NP)
>          */
>         asm volatile ("\
> -.arch xscale                                   \n\
> +.arch armv5te                                  \n\
>         pld     [%0, #0]                        \n\
>         pld     [%0, #32]                       \n\
>         pld     [%1, #0]                        \n\
> @@ -107,7 +107,7 @@ xscale_mc_clear_user_highpage(struct page *page,
> unsigned long vaddr)
>  {
>         void *ptr, *kaddr = kmap_atomic(page);
>         asm volatile("\
> -.arch xscale                                   \n\
> +.arch armv5te                                  \n\
>         mov     r1, %2                          \n\
>         mov     r2, #0                          \n\
>         mov     r3, #0                          \n\
>
>
> These are just the ones that I found experimentally, I have not done a
> thorough search
> for similar instances that randconfig has not been able to find (yet).
>
>          Arnd



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdn-df5%3DxEj-TTNrHvihDKGCC3vWA6Q0oZ%2BGycezsfAMyg%40mail.gmail.com.
