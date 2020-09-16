Return-Path: <clang-built-linux+bncBDYJPJO25UGBBQMFRL5QKGQEOJC7D3I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33b.google.com (mail-ot1-x33b.google.com [IPv6:2607:f8b0:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 978E026CE2B
	for <lists+clang-built-linux@lfdr.de>; Wed, 16 Sep 2020 23:25:22 +0200 (CEST)
Received: by mail-ot1-x33b.google.com with SMTP id f15sf2807326oto.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 16 Sep 2020 14:25:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600291521; cv=pass;
        d=google.com; s=arc-20160816;
        b=IYcP3fvtfcMYYQzFfWvQ6jTyojq/D2/9WDoNIwV8CefWdu2HFxV5dpS0Wqd6jmLUAf
         TYNyhpY9ojTV+Yepin1j9v7gJtK0cxKIoLmv0uxCRrCKDodZO1PAzNCkqOKasiH7yrPA
         e47FZBSeNDyFypzauvnm4vgSL8xNBVsJb0YgLXncQWeB+sYXvQ6Cq9ZOyqBTpVFdRriV
         xUITJtQbtNm7mtv1RXwEJRI4OWqCFhYVu+gWkXPCmmbN4M8/c64RNhyzaJJ6e/Q8MwXY
         B599Dsysl1Jbx3iLIk6jAw/SiHeHEJSSatCbzyrk11abhNEaLnOaaFe6pl/SxFC54IZY
         wCKw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=bEOMFuqEsdvz+gHOBKRAPTd2Qmk3JS0Hc8Vcy8dDxfI=;
        b=n07W3+BvT23oDehSoL8EAKz/AGuzqNm9ctf9dS8VpDWeOKNQjBqw/u4i00SDlea2AG
         WkhGvRLQM0jKI/ihwoIPY1GSvNroKO1yjRm8y6sZzGyx3tYLSwvIulxVALRjX38CPt5b
         CImHAEhaLgMuyPNaOb46Ho/UR4xQAHH9sRKDVZeHfeeZf3SHF/A74xNwNfLklmn2WCl7
         GWccSh/kjFx+FYnGCbEbUTE44/uIuFag/bq13MeVfqUy5zszF1pWyTzQxiZn7GLdreqc
         JzKEw9rBOc1D5andHu0bUs9nAcj43lENRTKXqA4hEtCpHjQJDHu0SYR0MbekY7kKEfKX
         qRkw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=viAlPyH1;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bEOMFuqEsdvz+gHOBKRAPTd2Qmk3JS0Hc8Vcy8dDxfI=;
        b=iG1kok/DUjQlbeY7vSnY87un0ubSI576cpkOyjFwLabfkzPLh2UDB4rto4+fuKJogT
         MFB900QOTYgSCjjGdMUzCplUASq4e53vMClWYAWXctxcyNQAZTKmYhIFhxoNrUSYUnYD
         ZgsqgB1XjVnzScxiA8tanEdfqMqyuKt6MtcumGigMthEF8QZVH0s5q2ttrfatWOD4+bG
         sDZOD3OkNhW4C82RYTkE/Z7I8TjliIfCJT2q0ic47CdSoPKoZ2QzfTP0UMXoWbSDhKBE
         9e9TCt4iO2eQywJ1bKKFPY1vqRVxEW2L47c0V+kTVr3q5eIoRzhacCV9aPzWHE2gWl0E
         JnPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bEOMFuqEsdvz+gHOBKRAPTd2Qmk3JS0Hc8Vcy8dDxfI=;
        b=BOJfXQDO3y2+9ns+A6nYgIYnYxvodhSHBVPMfxp+KVuOdnJurPnJXT7MTAjsy7Mflb
         +idlongAcMKy6Qq+yCNHIg260fha8NKgjhuYXLLV03LSn0h95TCnBVqwA8HXjb7g5yd1
         BA4iK32m+SmZd0HMpEn75f5oBBfTLSjRzxy5xkDyPMTQP7zav1WD0V7FAatazvORNjfv
         WPyuSIYxlNOM+EBSt95uPYUp678bGB6Low3+V8i3I6W4kTdjRSWzKDzewBELIDXE1Vl4
         PPhr2ibDKrq6+iURT41r00JRYtNmRt0oV0S0ull8Fk7vGliJeAYsnXL71YiCZz027fQo
         Fvkw==
X-Gm-Message-State: AOAM530vHHZntHkSR/QpT+Yk+aUBOXHmCfc0U/Tg9e4Wqw6QuwBGCfH6
	voQXEQT3UPygxG/0xOeKWkw=
X-Google-Smtp-Source: ABdhPJwQHjp1BAMpmW6QOpBcjg1Fq8hS8aeFifGSUsgOrBvdYi08TabA5gTpJvUQ9lvAatVIkqN9Mg==
X-Received: by 2002:a05:6808:203:: with SMTP id l3mr4539174oie.75.1600291521139;
        Wed, 16 Sep 2020 14:25:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1f0b:: with SMTP id u11ls812271otg.3.gmail; Wed, 16
 Sep 2020 14:25:20 -0700 (PDT)
X-Received: by 2002:a9d:6552:: with SMTP id q18mr18110742otl.287.1600291520764;
        Wed, 16 Sep 2020 14:25:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600291520; cv=none;
        d=google.com; s=arc-20160816;
        b=hGakJPbsOVDaNRIIKBlcNgC1CKh2lJYuLotPnWdkt9G1Sk0BwEnnl0TNtk4ZK5T141
         xAVjsX+/qUE385AN5kRfDdd8Kg6PlFDehKHWeSUngrDdN/rwRSGu0T6LwXvpYtqkhXzD
         lSnrZ+PdG0t6gs6qo1VfWubA+9Uc6pwy0wWpAtXo4H/CejhvbaoNGjW79UmPyNUdzxyH
         jlY0hUp1t/S6F7mzh4Z+pbv2J22hGgNRUEqGB796rXcEBTkpFARFhOFwSHpzYVNaaarg
         itOXUUZL/Fv+6DF1fIauRlD3y2d+LyAuEke5mvFhSRA0NsPMGrWiYr4MORN2KY+oY6b3
         1nhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=mOkNOFfQJrUlhWQa8kQ06dyQgaREkYxwhsPkU7zYbwQ=;
        b=lKaPCLusSiTeVOwIScw/eZxbhZiUAYb1E4VFLDRSoiuYKcuMMse9B00cnHOwSBlPh7
         s5mkmo7+63Ifva83efaVAp6JfFEnHWD4REZwea8CkOWTCHO3mBOUm4RBHEZASIkwtXJz
         PvcrcYOEoMobUwWjUHyUPtNEM41s/3hnubZKpCU0bkgkmqd3370/8OvcX1HOMxhsYivq
         ZPUSjppHMAi7WaBAYJPalMfYb1vUoaHaZWqR8qgLejzFY6H7qtpJFk2I338vEMFBuH0j
         PwsTVxBKd6nnHTCcBamtOi7YTWng4gxns9bIEKUNuaYwMdMOS0s65xZ6DYx8uxBE+MP6
         fjkQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=viAlPyH1;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id u27si1479870otg.5.2020.09.16.14.25.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Sep 2020 14:25:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id t14so70854pgl.10
        for <clang-built-linux@googlegroups.com>; Wed, 16 Sep 2020 14:25:20 -0700 (PDT)
X-Received: by 2002:a65:5a4c:: with SMTP id z12mr19781281pgs.10.1600291519788;
 Wed, 16 Sep 2020 14:25:19 -0700 (PDT)
MIME-Version: 1.0
References: <20200914095706.3985-1-ardb@kernel.org> <CAKwvOdmSXm7cV3hB_Yp=DD0RwwDHtPzzDBU8Xj5kBREn3xqYdA@mail.gmail.com>
 <CAMj1kXGuFFUyT48EYvzFmjCP4QZi_Sk_GpBrBCaHjP7HKLhjBA@mail.gmail.com>
 <CAKwvOdmkNgi_+kfauTSLwtpVChipW851_KGJG+gBbhwRxJJORA@mail.gmail.com>
 <CAMj1kXHTkP7-8xscGZGXN_0Sq=BCSnt3zWqkcm8xdO11xmditA@mail.gmail.com>
 <CAKwvOd=G2Rr3StUJ=oWu1L4b5y615m+uYNW-Y5sis13uqBvrYQ@mail.gmail.com> <CAMj1kXHEpPc0MSoMrCxEkyb44AkLM2NJJGtOXLpr6kxBHS0vfA@mail.gmail.com>
In-Reply-To: <CAMj1kXHEpPc0MSoMrCxEkyb44AkLM2NJJGtOXLpr6kxBHS0vfA@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 16 Sep 2020 14:25:07 -0700
Message-ID: <CAKwvOd=Sq3XOquw4ACEi+cYCQp0-LW-JXoecFt+yy+jtmtuhiQ@mail.gmail.com>
Subject: Re: [PATCH 00/12] ARM: use adr_l/ldr_l macros for PC-relative references
To: Ard Biesheuvel <ardb@kernel.org>
Cc: linux-efi <linux-efi@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, Russell King <linux@armlinux.org.uk>, 
	Linus Walleij <linus.walleij@linaro.org>, Nicolas Pitre <nico@fluxnic.net>, 
	Stefan Agner <stefan@agner.ch>, Peter Smith <Peter.Smith@arm.com>, Marc Zyngier <maz@kernel.org>, 
	Will Deacon <will@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	Jian Cai <jiancai@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=viAlPyH1;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544
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

On Wed, Sep 16, 2020 at 1:45 PM Ard Biesheuvel <ardb@kernel.org> wrote:
>
> On Wed, 16 Sep 2020 at 22:53, Nick Desaulniers <ndesaulniers@google.com> wrote:
> >
> > On Tue, Sep 15, 2020 at 10:55 PM Ard Biesheuvel <ardb@kernel.org> wrote:
> > >
> > > On Wed, 16 Sep 2020 at 02:31, Nick Desaulniers <ndesaulniers@google.com> wrote:
> > > >
> > > > On Tue, Sep 15, 2020 at 2:30 PM Ard Biesheuvel <ardb@kernel.org> wrote:
> > > > >
> > > > > Excellent, thanks for testing. Do you have any coverage for Thumb2
> > > > > builds as well? (CONFIG_THUMB2_KERNEL=y)
> > > >
> > > > Ah, right, manually testing ARCH=arm defconfig with
> > > > CONFIG_THUMB2_KERNEL enabled via menuconfig:
> > > >
> > > > Builds and boots for clang.
> > > >
> > > > (Also needed https://lore.kernel.org/lkml/20200915225751.274531-1-ndesaulniers@google.com/T/#u
> > > > for an unrelated issue).
> > > >
> > > > For GCC, I observe:
> > > >
> > > > arch/arm/vfp/vfphw.o: in function `vfp_support_entry':
> > > > (.text+0xa): relocation truncated to fit: R_ARM_THM_JUMP19 against
> > > > symbol `vfp_kmode_exception' defined in .text.unlikely section in
> > > > arch/arm/vfp/vfpmodule.o
> > > >
> > >
> > > Interesting. And this is using ld.bfd ?
> >
> > $ arm-linux-gnueabihf-ld --version
> > GNU ld (GNU Binutils for Debian) 2.34
> >
> > .text.unlikely reminds me of the sections created when profiling data
> > is present.  That's obviously not the case here, so maybe there's
> > other ways this section can be created by GCC?  I may have added a
> > patch recently for placing this section explicitly, which was a
> > prerequisite for Kees' series explicitly placing all sections.
> > https://lore.kernel.org/lkml/159896087937.20229.4955362311782724603.tip-bot2@tip-bot2/
> > Maybe that can be improved?
> >
> > IIRC, LLD is able to emit range extension thunks for these cases, but
> > BFD does not.
>
> ld.bfd will usually emit veneers for branches that turn out to be out
> of range in the final link stage.
>
> Does the following help?
>
> diff --git a/arch/arm/vfp/vfphw.S b/arch/arm/vfp/vfphw.S
> index 4fcff9f59947..f1468702fbc9 100644
> --- a/arch/arm/vfp/vfphw.S
> +++ b/arch/arm/vfp/vfphw.S
> @@ -82,6 +82,7 @@ ENTRY(vfp_support_entry)
>         ldr     r3, [sp, #S_PSR]        @ Neither lazy restore nor FP exceptions
>         and     r3, r3, #MODE_MASK      @ are supported in kernel mode
>         teq     r3, #USR_MODE
> +THUMB( it      ne                      )
>         bne     vfp_kmode_exception     @ Returns through lr
>
>         VFPFMRX r1, FPEXC               @ Is the VFP enabled?

Yes, it does!  I'm curious why though?  I've seen the "it prefixes"
before (is that what they're called?), but I don't recall what they're
for.  How come that solves this issue?

(Feel free to use my tested by tag on a subsequent resulting patch
that uses that).  That fix is irrespective of this series, so you
should send it maybe separately?

Also, it looks like the GCC build of milbeaut_m10v_defconfig fails to
boot for me in QEMU; so maybe not just a Clang bug (or maybe, more
than one bug).  (or maybe one of my command line params to QEMU is
wrong).

Stepping through start_kernel(), the call to setup_arch() seems to
hang in qemu.  For both GCC and Clang builds. A breakpoint in panic()
never gets hit.  Looks like the deepest I can get is:

Looks like:
#0  memblock_alloc_try_nid (size=108, align=4, min_addr=0, max_addr=0,
nid=-1) at mm/memblock.c:1601
#1  0xc060f0b4 in memblock_alloc (size=<optimized out>,
align=<optimized out>) at ./include/linux/memblock.h:409
#2  cma_init_reserved_mem (base=1543503872, size=67108864,
order_per_bit=0, name=0xc04b9240 "reserved", res_cma=0xc07ccbdc
<dma_contiguous_default_area>) at mm/cma.c:190
#3  0xc060f2c0 in cma_declare_contiguous_nid (base=1543503872,
size=67108864, limit=1610612736, alignment=8388608, order_per_bit=0,
fixed=false, name=0xc04b9240 "reserved",
    res_cma=0xc07ccbdc <dma_contiguous_default_area>, nid=-1) at mm/cma.c:352
#4  0xc0608cb6 in cma_declare_contiguous (alignment=<optimized out>,
order_per_bit=<optimized out>, name=<optimized out>,
res_cma=<optimized out>, fixed=<optimized out>,
    limit=<optimized out>, size=<optimized out>, base=<optimized out>)
at ./include/linux/cma.h:28
#5  dma_contiguous_reserve_area (size=<optimized out>, base=<optimized
out>, limit=<optimized out>, res_cma=0xc07ccbdc
<dma_contiguous_default_area>, fixed=false)
    at kernel/dma/contiguous.c:201
#6  0xc0608d22 in dma_contiguous_reserve (limit=<optimized out>) at
kernel/dma/contiguous.c:171
#7  0xc0604584 in arm_memblock_init (mdesc=0xc061bfe8
<__mach_desc_GENERIC_DT.35641>) at arch/arm/mm/init.c:230
#8  0xc060302c in setup_arch (cmdline_p=<optimized out>) at
arch/arm/kernel/setup.c:1132
#9  0xc06007d2 in start_kernel () at init/main.c:857

there's a call to memset that seems to hang.  I wonder if memset() was
defined in terms of __builtin_memset, which oft can result in infinite
loops?  (IIRC there's an AEABI related memset; this kind of thing has
hit android userspace before).

(gdb) layout asm

shows that the source call to memset is transformed into a call to mmioset.

(gdb) bt
#0  mmioset () at arch/arm/lib/memset.S:19
#1  0xc060e2dc in memblock_alloc_try_nid (size=108, align=<optimized
out>, min_addr=0, max_addr=0, nid=-1) at mm/memblock.c:1602
#2  0xc060f0b4 in memblock_alloc (size=<optimized out>,
align=<optimized out>) at ./include/linux/memblock.h:409
#3  cma_init_reserved_mem (base=1543503872, size=67108864,
order_per_bit=0, name=0xc04b9240 "reserved", res_cma=0xc07ccbdc
<dma_contiguous_default_area>) at mm/cma.c:190
#4  0xc060f2c0 in cma_declare_contiguous_nid (base=1543503872,
size=67108864, limit=1610612736, alignment=8388608, order_per_bit=0,
fixed=false, name=0xc04b9240 "reserved",
    res_cma=0xc07ccbdc <dma_contiguous_default_area>, nid=-1) at mm/cma.c:352
#5  0xc0608cb6 in cma_declare_contiguous (alignment=<optimized out>,
order_per_bit=<optimized out>, name=<optimized out>,
res_cma=<optimized out>, fixed=<optimized out>,
    limit=<optimized out>, size=<optimized out>, base=<optimized out>)
at ./include/linux/cma.h:28
#6  dma_contiguous_reserve_area (size=<optimized out>, base=<optimized
out>, limit=<optimized out>, res_cma=0xc07ccbdc
<dma_contiguous_default_area>, fixed=false)
    at kernel/dma/contiguous.c:201
#7  0xc0608d22 in dma_contiguous_reserve (limit=<optimized out>) at
kernel/dma/contiguous.c:171
#8  0xc0604584 in arm_memblock_init (mdesc=0xc061bfe8
<__mach_desc_GENERIC_DT.35641>) at arch/arm/mm/init.c:230
#9  0xc060302c in setup_arch (cmdline_p=<optimized out>) at
arch/arm/kernel/setup.c:1132
#10 0xc06007d2 in start_kernel () at init/main.c:857

Using `si` in gdb, it looks like we maybe hit an exception vector?
x   1202                .section .vectors, "ax", %progbits

                                            x
x   1203        .L__vectors_start:

                                            x
x   1204                W(b)    vector_rst

                                            x
x   1205                W(b)    vector_und

                                            x
x   1206                W(ldr)  pc, .L__vectors_start + 0x1000

                                            x
x  >1207                W(b)    vector_pabt

Is the last thing I see, then `si` stops working.  Not sure if `pabt`
is a recognizable acronym to anyone more familiar with ARM?

Happens regardless of your series, FWIW.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DSq3XOquw4ACEi%2BcYCQp0-LW-JXoecFt%2Byy%2BjtmtuhiQ%40mail.gmail.com.
