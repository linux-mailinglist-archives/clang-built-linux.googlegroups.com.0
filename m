Return-Path: <clang-built-linux+bncBAABB4ESZKAAMGQED4WRKGQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x838.google.com (mail-qt1-x838.google.com [IPv6:2607:f8b0:4864:20::838])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E892307329
	for <lists+clang-built-linux@lfdr.de>; Thu, 28 Jan 2021 10:52:49 +0100 (CET)
Received: by mail-qt1-x838.google.com with SMTP id 22sf3074368qty.14
        for <lists+clang-built-linux@lfdr.de>; Thu, 28 Jan 2021 01:52:49 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611827568; cv=pass;
        d=google.com; s=arc-20160816;
        b=JWYYhyyC7UQYcbGNBAs74PIbkv9oOY1piMGUQW3h/fFIl1ZJN/s2CvUMArdw8som79
         GE9slxyBfDQx+dWzJUxWo0fntOREmJaiDj4on7zRZgPW9yXJqAC41xERQrqTL8r4Vt9Q
         gkvaPHiJvJTuHSXLww4MwfnCc8hX9G6QX3nuGplATSvsTAemrscyAAeCGYFavSUyC3Ue
         a5bIwX0zk9TL8MWNVKN/7Mn6rrI8+FLilYigbtFkmX/lAwnb3mo5D823dUuDCxe0hcnP
         k0T1iu3JhPpGD6woIah8dMxlJ5V53wujlO3f2/Hk9hC5tF3ZcVpnHzuUqQrEOGYd8O8G
         iiPg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=lfiEGNFtVZG0jpjyt2G2Vjnjpa3n8T+zlIzGGWwAFbA=;
        b=CLXlFrqDFly//nJbusaHllXNut/DFWUZ+UNwqBnvgAqombnCFv/NFG0Epb5DU684P1
         I4Sx5J+DVmBTFshXq0Rn1RGJg05fbJHjB62pdJArDUwEYKsN5JpMbzmUiRgD6ABAoMSy
         VpvaucFHlWF9sYQTMdavJ6b1yeiqVHU/plCwi4cII6dXIM3re1Zb7eEpe1GkvA+s1e4L
         axhAzyLIQOs/ddMpsDpxFJIhhrmiWhZ7QRt2BJ7KSPzetXU2n8sh5lJ4pPKYwczi+A+x
         grAvbJq0bPLf3/Ti9bDYAE4NFtPYdiBIoUXncwl4l94LN2C5mNmoFeYBoeCgZcpyXdHf
         wkCw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=RlesDGOw;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lfiEGNFtVZG0jpjyt2G2Vjnjpa3n8T+zlIzGGWwAFbA=;
        b=J9+4AXENkUV2ElF7Q7jQXOBUTVJfXkSYfWsItboa0sbbK6VpvSlMvnknUC1YHh6uAz
         IGg3SOE0G+lnWwOjQ1eNxTqemUrnmOtVgsH3k6JjIzIZ1BOYqnN4HoPtbdoWNI5f82oO
         fxrVTolsqkuvu2z3iztz8Xcocu/3rx0oQln7hRScsJzzS+fxQbRRzdQRVqqCHTqpqHxe
         x4UJJUSoDMOxeGatw+i3cEMpERuS1ljfiUjqFxBaBayEsNidteHuCeXS9U5/1RxzZDHH
         T8x+YkTDBEIZonObOu1zinsmtdDvQgd1IXOQnlcZ7+VJHzwbdzNoTBFTx47BtoDNjCuG
         xn0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lfiEGNFtVZG0jpjyt2G2Vjnjpa3n8T+zlIzGGWwAFbA=;
        b=SEw2U7A27ixvzeAqTqhDN/PPvp7C0aP+1k0Kd4/C2Y2Bhmebfh5fUJnS1FeS0vTeW4
         GZA30iSN/ao3VcFV751V7V/SQC7CvS2dvWyuWgJCkgwYb40pFmJIyOL74Orx4yuyfBkV
         rxMxVkMP9yl649BA9onN5W8Qz4mOkDI4jG9KRN/synLMAvHuIWq7HGNy7M/L/E4MqLx8
         77fDdCAgNraYMCyb7oWt/DDOXjXS3Gu4Gd0cM/lgRUY5H+h5xzLzVAn3TlwncfPOR+tA
         IGM+FCpAGU2GHLLxx8xQccTwLyUOx2h7cRHOLu+Tzcu3E9SyRCgQdzWxID44AQFgdyWC
         O4JQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533LCh8AouORfNiE/BmVKFo1qF1DBJtR0S/83yWQQDNgSuh9VXKO
	TT2SjyNbAgREYBq2Wof4YTw=
X-Google-Smtp-Source: ABdhPJyyqYbpe1/q1bswgm3OiBXbsiSp2DF6nLO7LAQxHJUrr75VO3+YDVBgCZtmmmDhAL1J0LIrEg==
X-Received: by 2002:a37:a095:: with SMTP id j143mr6438393qke.445.1611827568428;
        Thu, 28 Jan 2021 01:52:48 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:4644:: with SMTP id t65ls2525816qka.5.gmail; Thu, 28 Jan
 2021 01:52:48 -0800 (PST)
X-Received: by 2002:a37:9dcf:: with SMTP id g198mr14869049qke.486.1611827568118;
        Thu, 28 Jan 2021 01:52:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611827568; cv=none;
        d=google.com; s=arc-20160816;
        b=Hko9G1YzClIfMQ1tpzDqDULiIEOqdG+J8zyvWL+sehJUNBQ6JbWnfYqmeCtQMpI8sn
         gEx+SOFV27ERi5ECmhNjMaDxXIeLF1aivtTkHF2BAD07pw4KNVseD6Nk4ZX+ln/ccanL
         SK2uPfVvEgz9JaujIvgLZT4RFhyKs5eQ+58dTiKDqt8VdqrIm3lCNmNuOAHeDH/xUTIz
         n2sa0515iRUI0uKdVkF9a2deb3uS3VSzeq+kJP+AqiVqBCRhCRFo0t+fEVFLtXN+sU4U
         LpWr9mHYsPTVBJQituPLXNcy0Avg1CZ+aobpkQv2r6WLG2fdllfB9mVS4/lIiosG0du8
         nEJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=D2p74zeX4ql9SE5j7BfV8FelHL22lsfL6Raf4sBiKS0=;
        b=bCjKnfaepA0RToXJ0rz8JiecP7vAhTt+wo/aY9scDRLZzMfnoKZ5Hbywtx4tqN701S
         /FRrPwc5xvTIqas6e8iDGme5Rcia+ycjvjLOswwi25UXIotFPkO9W1x8h1nRK0MPyBTI
         Lh5vLpGUrgYummpvp6I6U0TNsYzI9kOGz9ioS0xF4f9VrTJhTxxiC71SP1oPKn6anjIB
         O1yK1Nv4j+Y4Lce5RDC76yELaoTRdg9ftPapYfQSD4ogOn11PA+GLnfLUB+C2qFL+I2z
         YE1SHBP5LR541zD/eZsiknX+V5Yh3HAAE9foVQRhOZwqkeAdVrAZp8qQlY5cMRondM3g
         e0DA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=RlesDGOw;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id n6si263423qkg.7.2021.01.28.01.52.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Jan 2021 01:52:48 -0800 (PST)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id B033E64DD6
	for <clang-built-linux@googlegroups.com>; Thu, 28 Jan 2021 09:52:46 +0000 (UTC)
Received: by mail-oi1-f179.google.com with SMTP id n7so5378936oic.11
        for <clang-built-linux@googlegroups.com>; Thu, 28 Jan 2021 01:52:46 -0800 (PST)
X-Received: by 2002:aca:be54:: with SMTP id o81mr5871331oif.67.1611827565857;
 Thu, 28 Jan 2021 01:52:45 -0800 (PST)
MIME-Version: 1.0
References: <20210128014539.2962552-1-ndesaulniers@google.com>
In-Reply-To: <20210128014539.2962552-1-ndesaulniers@google.com>
From: Arnd Bergmann <arnd@kernel.org>
Date: Thu, 28 Jan 2021 10:52:29 +0100
X-Gmail-Original-Message-ID: <CAK8P3a0VVCuo===sUYA-2QYRr1bbYj3CptT3dJsBUYmpNheY2g@mail.gmail.com>
Message-ID: <CAK8P3a0VVCuo===sUYA-2QYRr1bbYj3CptT3dJsBUYmpNheY2g@mail.gmail.com>
Subject: Re: [RFC] ARM: use .arch directives instead of assembler command line flags
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Arnd Bergmann <arnd@arndb.de>, clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=RlesDGOw;       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

On Thu, Jan 28, 2021 at 2:45 AM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
> Similar to commit a6c30873ee4a ("ARM: 8989/1: use .fpu assembler
> directives instead of assembler arguments").
>
> GCC and GNU binutils support setting the "sub arch" via -march=,
> -Wa,-march, target function attribute, and .arch assembler directive.
>
> Clang's integrated assembler does not support -Wa,-march (and the logic
> to overrule one when multiple of the above are used).
>
> Since most assembler is non-conditionally assembled with one sub arch
> (modulo arch/arm/delay-loop.S which conditionally is assembled as armv4
> based on CONFIG_ARCH_RPC, and arch/arm/mach-at91/pm-suspend.S which is
> conditionally assembled as armv7-a based on CONFIG_CPU_V7), prefer the
> .arch assembler directive.
>
> Link: https://bugs.llvm.org/show_bug.cgi?id=48894
> Link: https://github.com/ClangBuiltLinux/linux/issues/1195
> Suggested-by: Arnd Bergmann <arnd@arndb.de>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>

Looks good to me in general. However, there are a few extra ones
I needed for my randconfig builds in the end:

a) inline assembly in .c files:

diff --git a/arch/arm/kernel/Makefile b/arch/arm/kernel/Makefile
index 48a02eb3ac89..62d56e2dda7f 100644
--- a/arch/arm/kernel/Makefile
+++ b/arch/arm/kernel/Makefile
@@ -70,7 +70,6 @@ obj-$(CONFIG_HAVE_TCM)                += tcm.o
 obj-$(CONFIG_OF)               += devtree.o
 obj-$(CONFIG_CRASH_DUMP)       += crash_dump.o
 obj-$(CONFIG_SWP_EMULATE)      += swp_emulate.o
-CFLAGS_swp_emulate.o           := -Wa,-march=armv7-a
 obj-$(CONFIG_HAVE_HW_BREAKPOINT)       += hw_breakpoint.o

 obj-$(CONFIG_CPU_XSCALE)       += xscale-cp0.o
diff --git a/arch/arm/kernel/swp_emulate.c b/arch/arm/kernel/swp_emulate.c
index 35ff7c7965a9..bdff448bd0f2 100644
--- a/arch/arm/kernel/swp_emulate.c
+++ b/arch/arm/kernel/swp_emulate.c
@@ -34,6 +34,7 @@
  */
 #define __user_swpX_asm(data, addr, res, temp, B)              \
        __asm__ __volatile__(                                   \
+       ".arch armv7-a\n"                                       \
        "0:     ldrex"B"        %2, [%3]\n"                     \
        "1:     strex"B"        %0, %1, [%3]\n"                 \
        "       cmp             %0, #0\n"                       \
diff --git a/arch/arm/mach-mvebu/Makefile b/arch/arm/mach-mvebu/Makefile
index d62612bfac48..9b9fddb69958 100644
--- a/arch/arm/mach-mvebu/Makefile
+++ b/arch/arm/mach-mvebu/Makefile
@@ -1,8 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0
 ccflags-$(CONFIG_ARCH_MULTIPLATFORM) :=
-I$(srctree)/arch/arm/plat-orion/include

-CFLAGS_pmsu.o                  := -march=armv7-a
-
 obj-$(CONFIG_MACH_MVEBU_ANY)    += system-controller.o mvebu-soc-id.o

 ifeq ($(CONFIG_MACH_MVEBU_V7),y)
diff --git a/arch/arm/mach-mvebu/pmsu.c b/arch/arm/mach-mvebu/pmsu.c
index 73d5d72dfc3e..9a77cc3a10bd 100644
--- a/arch/arm/mach-mvebu/pmsu.c
+++ b/arch/arm/mach-mvebu/pmsu.c
@@ -294,6 +294,7 @@ int armada_370_xp_pmsu_idle_enter(unsigned long deepidle)

        /* Test the CR_C bit and set it if it was cleared */
        asm volatile(
+       ".arch  armv7-a\n\t"
        "mrc    p15, 0, r0, c1, c0, 0 \n\t"
        "tst    r0, %0 \n\t"
        "orreq  r0, r0, #(1 << 2) \n\t"


b) an arm specific driver:

diff --git a/drivers/memory/Makefile b/drivers/memory/Makefile
index bc7663ed1c25..d1388a748872 100644
--- a/drivers/memory/Makefile
+++ b/drivers/memory/Makefile
@@ -32,8 +32,6 @@ obj-$(CONFIG_FPGA_DFL_EMIF)   += dfl-emif.o

 ti-emif-sram-objs              := ti-emif-pm.o ti-emif-sram-pm.o

-AFLAGS_ti-emif-sram-pm.o       :=-Wa,-march=armv7-a
-
 $(obj)/ti-emif-sram-pm.o: $(obj)/ti-emif-asm-offsets.h

 $(obj)/ti-emif-asm-offsets.h: $(obj)/emif-asm-offsets.s FORCE
diff --git a/drivers/memory/ti-emif-sram-pm.S b/drivers/memory/ti-emif-sram-pm.S
index d1c83bd5b98e..af2feb251303 100644
--- a/drivers/memory/ti-emif-sram-pm.S
+++ b/drivers/memory/ti-emif-sram-pm.S
@@ -36,6 +36,7 @@

        .arm
        .align 3
+       .arch armv7-a

 ENTRY(ti_emif_sram)


c) slightly different problem: .arch xscale is not understood by clang,
but .arch armv5te is sufficient:


diff --git a/arch/arm/mm/Makefile b/arch/arm/mm/Makefile
index d8f751b94126..71b858c9b10c 100644
--- a/arch/arm/mm/Makefile
+++ b/arch/arm/mm/Makefile
@@ -55,8 +55,6 @@ obj-$(CONFIG_CPU_XSCALE)      += copypage-xscale.o
 obj-$(CONFIG_CPU_XSC3)         += copypage-xsc3.o
 obj-$(CONFIG_CPU_COPY_FA)      += copypage-fa.o

-CFLAGS_copypage-feroceon.o := -march=armv5te
-
 obj-$(CONFIG_CPU_TLB_V4WT)     += tlb-v4.o
 obj-$(CONFIG_CPU_TLB_V4WB)     += tlb-v4wb.o
 obj-$(CONFIG_CPU_TLB_V4WBI)    += tlb-v4wbi.o
diff --git a/arch/arm/mm/copypage-feroceon.c b/arch/arm/mm/copypage-feroceon.c
index 064b19e63571..5fc8ef1e665f 100644
--- a/arch/arm/mm/copypage-feroceon.c
+++ b/arch/arm/mm/copypage-feroceon.c
@@ -15,6 +15,7 @@ static void feroceon_copy_user_page(void *kto, const
void *kfrom)
        int tmp;

        asm volatile ("\
+.arch  armv5te                                 \n\
 1:     ldmia   %1!, {r2 - r7, ip, lr}          \n\
        pld     [%1, #0]                        \n\
        pld     [%1, #32]                       \n\
diff --git a/arch/arm/mm/copypage-xsc3.c b/arch/arm/mm/copypage-xsc3.c
index 8fc8f3b91197..3cc74a4862c5 100644
--- a/arch/arm/mm/copypage-xsc3.c
+++ b/arch/arm/mm/copypage-xsc3.c
@@ -29,7 +29,7 @@ static void xsc3_mc_copy_user_page(void *kto, const
void *kfrom)
        int tmp;

        asm volatile ("\
-.arch  xscale                                  \n\
+.arch  armv5te                                 \n\
        pld     [%1, #0]                        \n\
        pld     [%1, #32]                       \n\
 1:     pld     [%1, #64]                       \n\
@@ -81,7 +81,7 @@ void xsc3_mc_clear_user_highpage(struct page *page,
unsigned long vaddr)
 {
        void *ptr, *kaddr = kmap_atomic(page);
        asm volatile ("\
-.arch  xscale                                  \n\
+.arch  armv5te                                 \n\
        mov     r1, %2                          \n\
        mov     r2, #0                          \n\
        mov     r3, #0                          \n\
diff --git a/arch/arm/mm/copypage-xscale.c b/arch/arm/mm/copypage-xscale.c
index eb5d338657d1..c7461755082b 100644
--- a/arch/arm/mm/copypage-xscale.c
+++ b/arch/arm/mm/copypage-xscale.c
@@ -41,7 +41,7 @@ static void mc_copy_user_page(void *from, void *to)
         * when prefetching destination as well.  (NP)
         */
        asm volatile ("\
-.arch xscale                                   \n\
+.arch armv5te                                  \n\
        pld     [%0, #0]                        \n\
        pld     [%0, #32]                       \n\
        pld     [%1, #0]                        \n\
@@ -107,7 +107,7 @@ xscale_mc_clear_user_highpage(struct page *page,
unsigned long vaddr)
 {
        void *ptr, *kaddr = kmap_atomic(page);
        asm volatile("\
-.arch xscale                                   \n\
+.arch armv5te                                  \n\
        mov     r1, %2                          \n\
        mov     r2, #0                          \n\
        mov     r3, #0                          \n\


These are just the ones that I found experimentally, I have not done a
thorough search
for similar instances that randconfig has not been able to find (yet).

         Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a0VVCuo%3D%3D%3DsUYA-2QYRr1bbYj3CptT3dJsBUYmpNheY2g%40mail.gmail.com.
