Return-Path: <clang-built-linux+bncBD63HSEZTUIBBWXEZH3QKGQENHEMXUY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf40.google.com (mail-qv1-xf40.google.com [IPv6:2607:f8b0:4864:20::f40])
	by mail.lfdr.de (Postfix) with ESMTPS id A5A6020630D
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jun 2020 23:21:31 +0200 (CEST)
Received: by mail-qv1-xf40.google.com with SMTP id r12sf229698qvk.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jun 2020 14:21:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592947290; cv=pass;
        d=google.com; s=arc-20160816;
        b=Cz/VjO0hWYnLdmPyLpryvncrmPcitMY5h+BK4US1qnfmk1unEjzJBSz8zt1J4HFUje
         M2mfLGtY1X4fJr2MjXhelfaNe624BhN6gHXzOfmJBQJ+n3KQenMxZkXWHZ4T98dg0LhL
         za6Qjlf0QGxhLqwDqmbzUycQiasNWQChMBB4Gh+rD49+XArzyRJjE1Y5++Lz8L85U7rF
         eJZanMbcKVuvjdHiXrouYF/9snmYQKj3e5OmolyPlhgn5FAc/Lt6XgvbC5uhI6IKV36/
         x5mAil8gY3s0pXHwvHA4ZPhVVNmwYdVJaCQ7oS+QfkmZeJNoOQ0lRLWdSGmfQcVXf82j
         GGRQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=OLc62O5ui+VVFiglPYgKEtJS25/DFDsR67rMTnv+8wc=;
        b=V48fbLPLPcL1coN6vA1d+9rFlKt7NhZOITZMMOmCzbl8qD+/v3Zq4Svx/TlrxvxgtP
         gQFn8nb6BkkNI2luu8c3ZYXhyVNEBcHWZhoQP2BuaS+gp1xjvKaThWXesXVuDCe91dbJ
         q8NMB/T4bYrR+9KwzrnR3VfdoeUrkCRnfsjVt10rSPB1UEAzo93e78HgSFvkMDuwBCqG
         v8bFYW0tH5z91tWVwktIfWHvZBtXinCHmyaSyBZX/H5P7M4PT/2jkFYX/FB/CTwxLZC6
         /OvxcUt46esKS0VSxGMTt0eN1B9olUnK4SaV0Qld5vtl7TBp82ENx/wD8vJjtEa4GzMX
         mJIw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=NKsUGmDE;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OLc62O5ui+VVFiglPYgKEtJS25/DFDsR67rMTnv+8wc=;
        b=NDYllguY+AddItReX76Xp9BLhnrq4eDy9f3uJ0uLoH2OXYY0cKLtKmSOBwu3zEizjB
         1OPv4tzqa90p2iQeC3XpafNSkw/nq1hiUnCwgjHnLmcv2+k+IBoKOw8Ct2qNLhHDbrMA
         Mc0TxenJDXzRxVMfOfWBUnfjGFgTezpUgqPFeKP8E8uEy5yA2QEEYtr5apdXUcWgURqp
         1UcAjGdIuqfn//dln+fD+aFBuznPEma1TZIVWFHZiSAXFgGoK21omWRPyb5Oi1nB+A2P
         AGcoIwlkwKPHWTD8226ayMllMfGbFJbCD9GDa91N7MGEtyjwBpbdMkiHEEfZvP2/oL+D
         Ogpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OLc62O5ui+VVFiglPYgKEtJS25/DFDsR67rMTnv+8wc=;
        b=UxMYKg1/MRSnq1sTLeRXudpGKyn+q3yIKHXVx2BmpGNp+ylJzOUQ5hfls2k+L7bBad
         oKYH7zrql45AInGhiSDjWEHe4HtM9JLAgZaCyU3QuT1H6jvkyqNNy56iM0C1AOiJ+rs4
         OSWvKHiyngZqWLkjQFG461/uHYaXcrrhjK/fHN132RMt4I2S3TE87ynPwA0/bQaqjkg5
         p3vltKBd6hUYQTNIDiR2WBdeBOXhMTe/tIOuW20yrO80vb70kvWeyw6wOsL01Qq0BI4z
         SzTIxQFu0cITIEydu2Y1F/+Rzuj6xsz6cTSxa433mnyxnqja8qvNIJQyROLzWt4L9rLl
         nuuw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530fzJR2nSHM6/CpptrNxsrX0xBHeLFr1iJbRXXKmttsujp2gZOM
	L9EROru9IZX2t2hwXXmJ1Ig=
X-Google-Smtp-Source: ABdhPJwKPN9p+Mps3SGVFDln4ih/UZqfn73AusH7hfa5T8sUq4VHrboxsvQK9cFr7fPv4m9Sd1PYmw==
X-Received: by 2002:ae9:edd4:: with SMTP id c203mr21402174qkg.382.1592947290609;
        Tue, 23 Jun 2020 14:21:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:120e:: with SMTP id u14ls47386qkj.10.gmail; Tue, 23
 Jun 2020 14:21:30 -0700 (PDT)
X-Received: by 2002:a37:4a90:: with SMTP id x138mr22383919qka.74.1592947290273;
        Tue, 23 Jun 2020 14:21:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592947290; cv=none;
        d=google.com; s=arc-20160816;
        b=bkWZNtK1kn/PyBoQI2Yqtwlr3b7vJEiPWM/ChEgbft0NlfAfGKZZVj6rdMb6VXNopS
         yHOHF5U3NsXBrcJhoaPuJtrS/GVBOQk8SLHwUBoQxYh4dZtYx2Lep4VLajmhrM5zSipZ
         Xj3d30lwZJQTVxzYS6qbTzxztfgoR2JNwaern1edFO/kDbPq5wjl15/Nf3RYNQWBXoRi
         73SsDEF9/eOO6ZF0cMpGMOtHq3w3mNzsCXqTahVXuy0vi/iqCy2pSg/+tR031azl+eoN
         KI4cYf3WFUpJfbuRdSb+VKH2bVs+TOvQRdXWNZr+lTBTktRFnFbsYOz7Jozqum8EAACC
         tNpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=jxFLFDAOdVDUXZIKf3zFzTHs1W0XEnt83m3ekEPCtXc=;
        b=g16DPKbwv1r8KdRi8w1sm7gXiug1yla3Ri79h7p0FdXHCbx/ri9moborlYRXiUymzU
         3EGFH14yn+wXn9jR3TSfCcXEi5DYlXXuq9glVBgtrRC21dynIJQqhIwVr4zqomipYbB9
         HNJyBNDF2FflDRwzhDnZeI+4eMVPv+mm1b02Hj4Yrm/F0G1fV7RtLqexsJYT+EMfhfLc
         EytH1WndKefzvSXHdbFj9AQuWPqsjg9b12Krr/gJWryUP0QYvjFV3KBxWnUxk8w622bH
         mP41fNjs5urrfxEt7mIzF2ewMdTu40H4amI4URmptslb8m+nU695dJ+cgYHiwNkFohP7
         xDkA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=NKsUGmDE;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id a72si981601qkb.0.2020.06.23.14.21.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Jun 2020 14:21:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-ot1-f42.google.com (mail-ot1-f42.google.com [209.85.210.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 1AF6420738
	for <clang-built-linux@googlegroups.com>; Tue, 23 Jun 2020 21:21:29 +0000 (UTC)
Received: by mail-ot1-f42.google.com with SMTP id u23so18164479otq.10
        for <clang-built-linux@googlegroups.com>; Tue, 23 Jun 2020 14:21:29 -0700 (PDT)
X-Received: by 2002:a9d:42e:: with SMTP id 43mr19976618otc.108.1592947288306;
 Tue, 23 Jun 2020 14:21:28 -0700 (PDT)
MIME-Version: 1.0
References: <20200622205815.2988115-1-keescook@chromium.org>
 <20200622205815.2988115-3-keescook@chromium.org> <20200623145218.GC4336@willie-the-truck>
 <CAMj1kXEPe10EY1uE1vberVMXv9sx4ZRHgmssOypYm5ya5G9KoA@mail.gmail.com> <202006231208.F3DA600E18@keescook>
In-Reply-To: <202006231208.F3DA600E18@keescook>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Tue, 23 Jun 2020 23:21:16 +0200
X-Gmail-Original-Message-ID: <CAMj1kXGnm=uujNfNGJzQxd7BSF0qT2n6jPX1OqwnGov1nKC_cg@mail.gmail.com>
Message-ID: <CAMj1kXGnm=uujNfNGJzQxd7BSF0qT2n6jPX1OqwnGov1nKC_cg@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] arm64/build: Warn on orphan section placement
To: Kees Cook <keescook@chromium.org>
Cc: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Mark Rutland <mark.rutland@arm.com>, Arnd Bergmann <arnd@arndb.de>, 
	Peter Collingbourne <pcc@google.com>, James Morse <james.morse@arm.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Nathan Chancellor <natechancellor@gmail.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=NKsUGmDE;       spf=pass
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

On Tue, 23 Jun 2020 at 23:06, Kees Cook <keescook@chromium.org> wrote:
>
> On Tue, Jun 23, 2020 at 04:59:39PM +0200, Ard Biesheuvel wrote:
> > On Tue, 23 Jun 2020 at 16:52, Will Deacon <will@kernel.org> wrote:
> > >
> > > On Mon, Jun 22, 2020 at 01:58:15PM -0700, Kees Cook wrote:
> > > > We don't want to depend on the linker's orphan section placement
> > > > heuristics as these can vary between linkers, and may change between
> > > > versions. All sections need to be explicitly named in the linker
> > > > script.
> > > >
> > > > Explicitly include debug sections when they're present. Add .eh_frame*
> > > > to discard as it seems that these are still generated even though
> > > > -fno-asynchronous-unwind-tables is being specified. Add .plt and
> > > > .data.rel.ro to discards as they are not actually used. Add .got.plt
> > > > to the image as it does appear to be mapped near .data. Finally enable
> > > > orphan section warnings.
> > >
> > > Can you elaborate a bit on what .got.plt is being used for, please? I
> > > wonder if there's an interaction with an erratum workaround in the linker
> > > or something.
> > >
> >
> > .got.plt is not used at all, but it has three magic entries at the
> > start that the dynamic linker uses for lazy dispatch, so it turns up
> > as a non-empty section of 0x18 bytes.
>
> Is there a way to suppress the generation? I haven't found a way, so I'd
> left it as-is.
>

Not really. What we could do is assert that it is empty, and emit it
as info, so the 24 bytes are not emitted into the image.


This change

diff --git a/arch/arm64/kernel/vmlinux.lds.S b/arch/arm64/kernel/vmlinux.lds.S
index 6827da7f3aa5..9e13b371559f 100644
--- a/arch/arm64/kernel/vmlinux.lds.S
+++ b/arch/arm64/kernel/vmlinux.lds.S
@@ -244,6 +244,9 @@ SECTIONS
        __pecoff_data_size = ABSOLUTE(. - __initdata_begin);
        _end = .;

+       .got.plt (INFO) : { *(.got.plt) }
+        ASSERT(SIZEOF(.got.plt) == 0 || SIZEOF(.got.plt) == 0x18,
".got.plt not empty")
+
        STABS_DEBUG

        HEAD_SYMBOLS

results in

  [28] .bss              NOBITS           ffff800010d71000  00d70200
       0000000000084120  0000000000000000  WA       0     0     4096
  [29] .got.plt          PROGBITS         ffff800010e00000  00d70200
       0000000000000018  0000000000000008   W       0     0     8
  [30] .comment          PROGBITS         0000000000000000  00d70218
       000000000000001c  0000000000000001  MS       0     0     1

in the ELF output, so it will be emitted from the image, unless it
actually have any entries, in which case we fail the build.



> > We should be able to discard it afaict, but given that it does not
> > actually take up any space, it doesn't really matter either way.
>
> I will add it to the discards then.
>

That would prevent us from doing the assert on its size, so i think
the above is more suitable in this case

> > > > diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
> > > > index a0d94d063fa8..3e628983445a 100644
> > > > --- a/arch/arm64/Makefile
> > > > +++ b/arch/arm64/Makefile
> > > > @@ -29,6 +29,10 @@ LDFLAGS_vmlinux    += --fix-cortex-a53-843419
> > > >    endif
> > > >  endif
> > > >
> > > > +# We never want expected sections to be placed heuristically by the
> > > > +# linker. All sections should be explicitly named in the linker script.
> > > > +LDFLAGS_vmlinux += --orphan-handling=warn
> > > > +
> > > >  ifeq ($(CONFIG_ARM64_USE_LSE_ATOMICS), y)
> > > >    ifneq ($(CONFIG_ARM64_LSE_ATOMICS), y)
> > > >  $(warning LSE atomics not supported by binutils)
> > > > diff --git a/arch/arm64/kernel/vmlinux.lds.S b/arch/arm64/kernel/vmlinux.lds.S
> > > > index 5427f502c3a6..c9ecb3b2007d 100644
> > > > --- a/arch/arm64/kernel/vmlinux.lds.S
> > > > +++ b/arch/arm64/kernel/vmlinux.lds.S
> > > > @@ -94,7 +94,8 @@ SECTIONS
> > > >       /DISCARD/ : {
> > > >               *(.interp .dynamic)
> > > >               *(.dynsym .dynstr .hash .gnu.hash)
> > > > -             *(.eh_frame)
> > > > +             *(.plt) *(.data.rel.ro)
> > > > +             *(.eh_frame) *(.init.eh_frame)
> > >
> > > Do we need to include .eh_frame_hdr here too?
> >
> > It would be better to build with -fno-unwind-tables, in which case
> > these sections should not even exist.
>
> Nothing seems to help with the .eh_frame issue
> (even with -fno-asynchronous-unwind-tables and -fno-unwind-tables):
>
> $ aarch64-linux-gnu-gcc -Wp,-MMD,arch/arm64/kernel/.smccc-call.o.d \
>   -nostdinc -isystem /usr/lib/gcc-cross/aarch64-linux-gnu/9/include \
>   -I./arch/arm64/include -I./arch/arm64/include/generated  -I./include \
>   -I./arch/arm64/include/uapi -I./arch/arm64/include/generated/uapi \
>   -I./include/uapi -I./include/generated/uapi -include \
>   ./include/linux/kconfig.h -D__KERNEL__ -mlittle-endian \
>   -DCC_USING_PATCHABLE_FUNCTION_ENTRY -DKASAN_SHADOW_SCALE_SHIFT=3 \
>   -D__ASSEMBLY__ -fno-PIE -mabi=lp64 -fno-asynchronous-unwind-tables \
>   -fno-unwind-tables -DKASAN_SHADOW_SCALE_SHIFT=3 -Wa,-gdwarf-2 -c -o \
>   arch/arm64/kernel/smccc-call.o arch/arm64/kernel/smccc-call.S
>
> $ readelf -S arch/arm64/kernel/smccc-call.o | grep eh_frame
>   [17] .eh_frame         PROGBITS         0000000000000000  000001f0
>   [18] .rela.eh_frame    RELA             0000000000000000  00000618
>

That is because that file has CFI annotations which it doesn't need
(since we don't unwind data).

The below should fix that - I guess this may have been inherited from
32-bit ARM, where we do use unwind data in the kernel?

diff --git a/arch/arm64/kernel/smccc-call.S b/arch/arm64/kernel/smccc-call.S
index 1f93809528a4..d62447964ed9 100644
--- a/arch/arm64/kernel/smccc-call.S
+++ b/arch/arm64/kernel/smccc-call.S
@@ -9,7 +9,6 @@
 #include <asm/assembler.h>

        .macro SMCCC instr
-       .cfi_startproc
        \instr  #0
        ldr     x4, [sp]
        stp     x0, x1, [x4, #ARM_SMCCC_RES_X0_OFFS]
@@ -21,7 +20,6 @@
        b.ne    1f
        str     x6, [x4, ARM_SMCCC_QUIRK_STATE_OFFS]
 1:     ret
-       .cfi_endproc
        .endm

 /*

> > > >       }
> > > >
> > > >       . = KIMAGE_VADDR + TEXT_OFFSET;
> > > > @@ -209,6 +210,7 @@ SECTIONS
> > > >       _data = .;
> > > >       _sdata = .;
> > > >       RW_DATA(L1_CACHE_BYTES, PAGE_SIZE, THREAD_ALIGN)
> > > > +     .got.plt : ALIGN(8) { *(.got.plt) }
> > > >
> > > >       /*
> > > >        * Data written with the MMU off but read with the MMU on requires
> > > > @@ -244,6 +246,7 @@ SECTIONS
> > > >       _end = .;
> > > >
> > > >       STABS_DEBUG
> > > > +     DWARF_DEBUG
> > >
> > > I know you didn't add it, but do we _really_ care about stabs debug? Who
> > > generates that for arm64?
>
> It's also where .comment and the .symtab ends up living. As a result,
> I think it's correct to keep it. (If we wanted to split .stabs from
> .comment/.symtab, we could do that, but I'd kind of like to avoid it for
> this series, as it feels kind of unrelated.)
>
> --
> Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMj1kXGnm%3DuujNfNGJzQxd7BSF0qT2n6jPX1OqwnGov1nKC_cg%40mail.gmail.com.
