Return-Path: <clang-built-linux+bncBD63HSEZTUIBBWMMXP4AKGQEKG64WWI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3b.google.com (mail-oo1-xc3b.google.com [IPv6:2607:f8b0:4864:20::c3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FF9322080B
	for <lists+clang-built-linux@lfdr.de>; Wed, 15 Jul 2020 11:03:22 +0200 (CEST)
Received: by mail-oo1-xc3b.google.com with SMTP id s71sf628217oos.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 15 Jul 2020 02:03:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594803801; cv=pass;
        d=google.com; s=arc-20160816;
        b=H8IXODm6BKU7Rl/494EYmqDBgrpcLiQG4z9GhZYLhW3ZM6qdLlNMHQGq/nrzpm/o8U
         bRqiT5+FKBGFDzp2/274dXuMndOl+m2yF7AKM0RRm4NgIgrHSjIZ72Fe1ntwiNr+LnXh
         nitYmJ+eaJSs8GICSo3SqpSybtwjz8Nf6rkuCFqpfUvWGkvLbc7gH4u1CP2yfC8ueMlI
         BxNWACuZ6MyYHs8aqVpZ74eR0/Xiws0BVcjlebKrp3tZGCFjobOBCpvGZcwlEsLGWJ72
         GAxxRuryxxvoASsoa24c/voW0ik8rlz6lKnkIZSGrFQUys0rEzrnl0bXWECiB9vF0cDb
         pPEQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=gqmmtMDeQNQEdllqAAEioHjuZ+EoZD9QaABcGq1m+F4=;
        b=wOCw+CvjeiauKU/U7H3Is9jbbmthLlTgOqZOK+a1lifmD8jNL0z7KjORmr/cRL5uz/
         TbKs3u4cfJznqcElKAITk5pKQkF5SfAUM1PFwvLU8zFJGYQ7/uMtnzSbWD74xSmF3nYk
         oJHaUdSVWXlHeJE7BJFMZQCpyZzLjMemevHwhjrUlwMoKmrb4eNgmCegcsvtUnpVENOi
         3QLxEqQrMY6WGtCucr2/ZrfofERBT4O/UWPneJB3cfC8n6TETSlVaWyLugHRrtYXTxH7
         3zfZQ77ebp6qinjvX+j/WimqtBDO5XrSTFGIQVKqnoi22Xr9Tv0ayGJx53+Gjy/g1w/G
         hdPQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ax3kA4fb;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gqmmtMDeQNQEdllqAAEioHjuZ+EoZD9QaABcGq1m+F4=;
        b=C2EJcklxzCzbh6Rn8N0lYAmRxSqcIrms6rJqCrKL8wP7xNU4tDZtM0aRpJ+Acqt++x
         tWShR2dNWozEJBVzIrq6DOhdJQld6J8ZT/2NPYlF8AKNKunZqSt30fO2s1M3e3WPN4UO
         raCd2siqgUmdE24UX09EEiQqEy4bynHJ89/g9s4ktp7hzrkoLPhFqhybibN/SXLLg4cb
         poaha7SKOVbjphmUilYsesCyzGYzbMF9qtHgc2b9zaclIE3RtFiO/3pHhpMP1fof9Ia8
         rjZSFou5Rv6MEKNMf9H/sqQqh5lKzAaSey62E+JUmhkx7PICa5nOaq5peKkGpFt+WzUS
         jluA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gqmmtMDeQNQEdllqAAEioHjuZ+EoZD9QaABcGq1m+F4=;
        b=GPi3857PMfrO8SYoyv+H1N9QCJnr6YJWkkA6+SGJ+d3/z+scy0saquyWbIzWHOZMXi
         7cz56z8LRpEyF+ar+S0UD/5+nHmLbgYy76gzHncHQCi9mITs0SCwg9U7PNOiRUvcOp3b
         lMXQ8vUCgf3bkyKI4rABQ55+Ys7mlIiR2RvnnToyC6TYECIHEVsQ3/fZSMYdvZEkdbSW
         MlzXxgZJ9E0lsu/MB5tn65nm0pvVbNOZHXA2kphfp/SiV0j9bWtWpodHiLzp8bwehfGt
         fQc84QTfcgy70srsPDQJT4Jklyw2npyAtZVS9WYHXJS4m9aTv/g8CiQ33LeT9DkISfVy
         laSg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53351FFjDwCjPWPQJJqD71FSwjooazXJE5mQbsZ7A3hpas1iHCRk
	5R4d0aIaOO2xsFsgEoUn5N8=
X-Google-Smtp-Source: ABdhPJxXK/IaP5fn5I2mNJk4PafgzgMJ54YIbgQkwfsZ37iRjVjsBucuR+S2iy9fcF21NolkWOWQXA==
X-Received: by 2002:aca:b2c5:: with SMTP id b188mr6731566oif.51.1594803801385;
        Wed, 15 Jul 2020 02:03:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:544a:: with SMTP id i71ls346586oib.9.gmail; Wed, 15 Jul
 2020 02:03:21 -0700 (PDT)
X-Received: by 2002:aca:2b18:: with SMTP id i24mr7182941oik.103.1594803800960;
        Wed, 15 Jul 2020 02:03:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594803800; cv=none;
        d=google.com; s=arc-20160816;
        b=vrCbbYAVflY6FfIDGP2S422783faXx49kq5UGR6Pf/jv/0/kmVfvD+ElVU3oCuVAl0
         W/PtPu+uChm94vFMlIL1YOpH40A4KLLVjyBZus1qjFzTN0uYUG8+S33sGUlQhH4+Z54E
         /lM+hdNbrMayCKmJ5HuPakGPWsNrYRcQWcfIU6uvrP9Vy/bRRJZC2onfyg9ue5J2FL+J
         5b3mgx7XGrp6e0oD7E0cy1x8Ia8Yyn3GI/OYtKaQK4syYT2Hek9tVS1hsdc/L+hMax+v
         sUZ0TtHoEXXjE0mmWW0kkXV0u3OU6mLkiJ8+QEI8Hwr2eVCJnSM+gT015BFftVEprAQB
         9BPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Oa6RGiPYUFl0EpAw90R/0tcp2V+aFLnkVUdMlxLHjnI=;
        b=jnQ5Yr7zu35JC4WtbiyhlraS6oHLG7dk5GdzEIRKxPEwLNliWgh72KJzzFZNtg1VPx
         P+DyCv7Y3lVamqj5pXIQdYJhtJm2BHHrzNmoQGRhgfRetxR5zM2u0/xLKo2EgXynXVX5
         tlGRFoxR2NtJCTm15/CmtAF2LzYQbOtuytuQVtOXL1xTqL7i/uvQZVhXsF6v3wmVBeYL
         6mJ3WX5WTaStieuPWdd5oAYd6iLCqNj7iO2+2dlhrpwVvvNEKjAmdWq5cxrcV59e51Kb
         Q1qmLZ31aTpGj435WtsinQY8o76vmCLKSiZPyVAseX1crGdiPYHIfXteaOkzsLoPQNXq
         zwDA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ax3kA4fb;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id i189si88806oib.0.2020.07.15.02.03.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 15 Jul 2020 02:03:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-oo1-f47.google.com (mail-oo1-f47.google.com [209.85.161.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id EC7A0206F4
	for <clang-built-linux@googlegroups.com>; Wed, 15 Jul 2020 09:03:19 +0000 (UTC)
Received: by mail-oo1-f47.google.com with SMTP id d125so325019oob.0
        for <clang-built-linux@googlegroups.com>; Wed, 15 Jul 2020 02:03:19 -0700 (PDT)
X-Received: by 2002:a4a:de8d:: with SMTP id v13mr8412492oou.45.1594803799213;
 Wed, 15 Jul 2020 02:03:19 -0700 (PDT)
MIME-Version: 1.0
References: <20200714023836.2310569-1-nivedita@alum.mit.edu>
 <20200715004133.1430068-7-nivedita@alum.mit.edu> <CA+icZUXDoeHEcFurBVTv-JMR2xR6oj500n=fVSrN56_KOHiHcw@mail.gmail.com>
In-Reply-To: <CA+icZUXDoeHEcFurBVTv-JMR2xR6oj500n=fVSrN56_KOHiHcw@mail.gmail.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Wed, 15 Jul 2020 12:03:07 +0300
X-Gmail-Original-Message-ID: <CAMj1kXE2D_iWGQODd2t=9-URE1T2N4+hgrTn7OQa-=ma=kncvg@mail.gmail.com>
Message-ID: <CAMj1kXE2D_iWGQODd2t=9-URE1T2N4+hgrTn7OQa-=ma=kncvg@mail.gmail.com>
Subject: Re: [PATCH v5 6/7] x86/boot: Remove run-time relocations from head_{32,64}.S
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Arvind Sankar <nivedita@alum.mit.edu>, Thomas Gleixner <tglx@linutronix.de>, 
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, "H. Peter Anvin" <hpa@zytor.com>, 
	X86 ML <x86@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Fangrui Song <maskray@google.com>, Dmitry Golovin <dima@golovin.in>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	Daniel Kiper <daniel.kiper@oracle.com>, Kees Cook <keescook@chromium.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, Arnd Bergmann <arnd@arndb.de>, 
	"H . J . Lu" <hjl@sourceware.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=ax3kA4fb;       spf=pass
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

On Wed, 15 Jul 2020 at 11:58, Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> On Wed, Jul 15, 2020 at 2:41 AM Arvind Sankar <nivedita@alum.mit.edu> wrote:
> >
> > The BFD linker generates run-time relocations for z_input_len and
> > z_output_len, even though they are absolute symbols.
> >
> > This is fixed for binutils-2.35 [1]. Work around this for earlier
> > versions by defining two variables input_len and output_len in addition
> > to the symbols, and use them via position-independent references.
> >
> > This eliminates the last two run-time relocations in the head code and
> > allows us to drop the -z noreloc-overflow flag to the linker.
> >
> > Move the -pie and --no-dynamic-linker LDFLAGS to LDFLAGS_vmlinux instead
> > of KBUILD_LDFLAGS. There shouldn't be anything else getting linked, but
> > this is the more logical location for these flags, and modversions might
> > call the linker if an EXPORT_SYMBOL is left over accidentally in one of
> > the decompressors.
> >
>
> Tested-by: Sedat Dilek <sedat.dilek@gmail.com>
> Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
>
> Reported breakage with LLD in previous patchset version.
>

Please drop the bogus reported-bys. The patch does *not* address an
issue you reported, so recording this in the commit log would be
incorrect.

Your review and testing is appreciated, and resulted in substantial
improvements. So feel free to give your reviewed-by in addition to
your tested-by. But reported-by is inappropriate here.


>
> > [1] https://sourceware.org/bugzilla/show_bug.cgi?id=25754
> >
> > Reviewed-by: Kees Cook <keescook@chromium.org>
> > Reviewed-by: Ard Biesheuvel <ardb@kernel.org>
> > Reviewed-by: Fangrui Song <maskray@google.com>
> > Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
> > ---
> >  arch/x86/boot/compressed/Makefile  | 12 ++----------
> >  arch/x86/boot/compressed/head_32.S | 17 ++++++++---------
> >  arch/x86/boot/compressed/head_64.S |  4 ++--
> >  arch/x86/boot/compressed/mkpiggy.c |  6 ++++++
> >  4 files changed, 18 insertions(+), 21 deletions(-)
> >
> > diff --git a/arch/x86/boot/compressed/Makefile b/arch/x86/boot/compressed/Makefile
> > index c829d874dcac..ae2c0dc98a6a 100644
> > --- a/arch/x86/boot/compressed/Makefile
> > +++ b/arch/x86/boot/compressed/Makefile
> > @@ -51,16 +51,8 @@ UBSAN_SANITIZE :=n
> >  KBUILD_LDFLAGS := -m elf_$(UTS_MACHINE)
> >  # Compressed kernel should be built as PIE since it may be loaded at any
> >  # address by the bootloader.
> > -ifeq ($(CONFIG_X86_32),y)
> > -KBUILD_LDFLAGS += $(call ld-option, -pie) $(call ld-option, --no-dynamic-linker)
> > -else
> > -# To build 64-bit compressed kernel as PIE, we disable relocation
> > -# overflow check to avoid relocation overflow error with a new linker
> > -# command-line option, -z noreloc-overflow.
> > -KBUILD_LDFLAGS += $(shell $(LD) --help 2>&1 | grep -q "\-z noreloc-overflow" \
> > -       && echo "-z noreloc-overflow -pie --no-dynamic-linker")
> > -endif
> > -LDFLAGS_vmlinux := -T
> > +LDFLAGS_vmlinux := $(call ld-option, -pie) $(call ld-option, --no-dynamic-linker)
> > +LDFLAGS_vmlinux += -T
> >
> >  hostprogs      := mkpiggy
> >  HOST_EXTRACFLAGS += -I$(srctree)/tools/include
> > diff --git a/arch/x86/boot/compressed/head_32.S b/arch/x86/boot/compressed/head_32.S
> > index 8c1a4f5610f5..659fad53ca82 100644
> > --- a/arch/x86/boot/compressed/head_32.S
> > +++ b/arch/x86/boot/compressed/head_32.S
> > @@ -178,18 +178,17 @@ SYM_FUNC_START_LOCAL_NOALIGN(.Lrelocated)
> >  /*
> >   * Do the extraction, and jump to the new kernel..
> >   */
> > -                               /* push arguments for extract_kernel: */
> > -       pushl   $z_output_len   /* decompressed length, end of relocs */
> > +       /* push arguments for extract_kernel: */
> >
> > -       pushl   %ebp            /* output address */
> > -
> > -       pushl   $z_input_len    /* input_len */
> > +       pushl   output_len@GOTOFF(%ebx) /* decompressed length, end of relocs */
> > +       pushl   %ebp                    /* output address */
> > +       pushl   input_len@GOTOFF(%ebx)  /* input_len */
> >         leal    input_data@GOTOFF(%ebx), %eax
> > -       pushl   %eax            /* input_data */
> > +       pushl   %eax                    /* input_data */
> >         leal    boot_heap@GOTOFF(%ebx), %eax
> > -       pushl   %eax            /* heap area */
> > -       pushl   %esi            /* real mode pointer */
> > -       call    extract_kernel  /* returns kernel location in %eax */
> > +       pushl   %eax                    /* heap area */
> > +       pushl   %esi                    /* real mode pointer */
> > +       call    extract_kernel          /* returns kernel location in %eax */
> >         addl    $24, %esp
> >
> >  /*
> > diff --git a/arch/x86/boot/compressed/head_64.S b/arch/x86/boot/compressed/head_64.S
> > index 11429092c224..9e46729cf162 100644
> > --- a/arch/x86/boot/compressed/head_64.S
> > +++ b/arch/x86/boot/compressed/head_64.S
> > @@ -534,9 +534,9 @@ SYM_FUNC_START_LOCAL_NOALIGN(.Lrelocated)
> >         movq    %rsi, %rdi              /* real mode address */
> >         leaq    boot_heap(%rip), %rsi   /* malloc area for uncompression */
> >         leaq    input_data(%rip), %rdx  /* input_data */
> > -       movl    $z_input_len, %ecx      /* input_len */
> > +       movl    input_len(%rip), %ecx   /* input_len */
> >         movq    %rbp, %r8               /* output target address */
> > -       movl    $z_output_len, %r9d     /* decompressed length, end of relocs */
> > +       movl    output_len(%rip), %r9d  /* decompressed length, end of relocs */
> >         call    extract_kernel          /* returns kernel location in %rax */
> >         popq    %rsi
> >
> > diff --git a/arch/x86/boot/compressed/mkpiggy.c b/arch/x86/boot/compressed/mkpiggy.c
> > index 7e01248765b2..52aa56cdbacc 100644
> > --- a/arch/x86/boot/compressed/mkpiggy.c
> > +++ b/arch/x86/boot/compressed/mkpiggy.c
> > @@ -60,6 +60,12 @@ int main(int argc, char *argv[])
> >         printf(".incbin \"%s\"\n", argv[1]);
> >         printf("input_data_end:\n");
> >
> > +       printf(".section \".rodata\",\"a\",@progbits\n");
> > +       printf(".globl input_len\n");
> > +       printf("input_len:\n\t.long %lu\n", ilen);
> > +       printf(".globl output_len\n");
> > +       printf("output_len:\n\t.long %lu\n", (unsigned long)olen);
> > +
> >         retval = 0;
> >  bail:
> >         if (f)
> > --
> > 2.26.2
> >

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMj1kXE2D_iWGQODd2t%3D9-URE1T2N4%2BhgrTn7OQa-%3Dma%3Dkncvg%40mail.gmail.com.
