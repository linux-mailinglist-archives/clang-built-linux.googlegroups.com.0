Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBOEJXP4AKGQE3WYX3GY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103a.google.com (mail-pj1-x103a.google.com [IPv6:2607:f8b0:4864:20::103a])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B6842207E8
	for <lists+clang-built-linux@lfdr.de>; Wed, 15 Jul 2020 10:56:25 +0200 (CEST)
Received: by mail-pj1-x103a.google.com with SMTP id jx16sf2269022pjb.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 15 Jul 2020 01:56:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594803384; cv=pass;
        d=google.com; s=arc-20160816;
        b=Fb8/ce8nydib5K1PSGoTR7+2+ssqD91SUcQuAv4tWM5BgcpGyQKO7HqgKghzPED/JA
         cETYsz7WmhUraBAith5tEee0JUhDtU+Xmu+Oz3CTdsoDOFPRU2fLxU1pbAFTv9Ld0h1j
         tACy1Cw+AKm2bbtYmNGNA0fznOyaQAcPwgDYKNc/HlNi9G1xHhh/xnjBzs8hZpCbsKen
         2bXLMPdzi6bXE4UE/IJ/OP3xu3EbOf+DOYENR5cXaBgT089X4S4YQinxAlF/p3sh3q09
         j3HfLlA4IGDFjOpPViRhXqlwEX1n4QcUibH5WlqS3NNbOAKJUE3TmAeeoWmOywIVqkA1
         Eanw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=3LFKz/uh5Q4w7UeojSzbtzVKTWd9j8KW4HSA2tNnGh0=;
        b=f41TcMt6UDO0Xig5BQNfndnMSQkuaVj/iIvBpMeXoc5IEMmdkovw7PNkMMeo1qRvFy
         2wTYzsZqQlTg9AgPLQbVNz0Zq3k4JfOAOxY62P52jw3DZprHLVvv46Wrg3+NqLqsK+gk
         2o3saU7cKeNhucFnZu9awJJXALUtfE383GC2nZnyW+OSbHsLyk25OR/yDGKT355YcbJ6
         I5LVtJ7LPIfg7BIaJJQU6b8NjtLBpuBGPolnPxU2deNPU4qUrYUKDGlaTNRZqW0qhu/P
         nJC5kzvyEvh+bIxN0k6g9cab2dUoJ0+1DnFxpjGVjzJq8XNAHdsBWmg+9F2QpuLRK4OG
         id6w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=A+bV5m9Z;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d41 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3LFKz/uh5Q4w7UeojSzbtzVKTWd9j8KW4HSA2tNnGh0=;
        b=OUq7SeCvvd9tE1BwNzu6zagNafXLiDF5gdmwO06CuIqUQXI9/eYBMv9a1qw9TWNt5H
         mS6wcT3D3iFKScXPtfLZJhkyh4QEU+z7gEuoPP+OR4Fvv8QUnSZpuJvQCxTvAGvsepFf
         J/wRvOI6hUyjXf+/0xf3I3b59E0btlUdHBsvrEOepZwC6tAKU/icnXatJba1sJDA8me6
         45m5GSTk8qCj3yj8Nq1p5DobynhWbxzOHcGxecXaIzh22ckI2MoOH1s4/+/FpRHE9Qr+
         r1lSqHZS0vAe9NDc8AdB05g2bsJDSjTkn2g56ywtt9hQ3m+XMZamNTz0SatEA1c/zdAK
         +zAQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3LFKz/uh5Q4w7UeojSzbtzVKTWd9j8KW4HSA2tNnGh0=;
        b=dnbABXUm30Tr5tPg78B0Tsgt646Dv/4CrUzDPp9Cn2HIc5w4/wTiYIehrtEBsiGNgu
         OEbJJ70tnDKDclcwtBhyX+y5NI7XnLA1rpCqwAfAPkbGAIxd72Uxr9vSnKIo/ElQyoao
         rhJ/SwXKS4VA4A7HAweAt4ClNVXb0cjEqVHFcVYzCpqsqFymX3FrhOSWhvRX9qXgqikB
         Hem97V4qB4qSKkUwu26b+AKl3ewQfzAKvgUe3WkSxZG7zOHQ76bXEE9QODCnUl+9olO3
         Zf4Li6QBWKpsY0vRaU9R/slerAhf9yw0JE37qR70EOpDIR5oKDxY9YTWS5QA1JpVKQz6
         PFYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3LFKz/uh5Q4w7UeojSzbtzVKTWd9j8KW4HSA2tNnGh0=;
        b=CRulOd58rB+Wy9PqtmB0vz2UnJw/zW75ceCOYxD20f8LDwPymXXzUnLwJUJsREEq0K
         RmH4/LDuOr78rUUZpUERrTqruVc8mDuvcx0vBnj87NRyNBWxLHL99Usbbfl6ub/Fix2u
         s3RFoBluI5/G75CDsfn4cwodSaz4d/LbuCNkxLxyQ498efsZAa5utmBjEg++KzxXEK1A
         et6X4OW6etU9lFwXTeUebopCvNoKPZH5Y2f+eDIdAdaAeMAgnqEXoIxlfcZG99eB/Sn7
         1Nj1o7LYtC3Nzp7uOusN7zA9Q0Vcc5o+Ab3o3EM7NhwAO46a66cbGTmOB3rbk3IEXozw
         ZSGQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533cjvuNngQ4dWIQoxbUYQn5O53l0hNMDM9Xj0ENbL/0XmILshNH
	enzqlRrirHqcOJJQJgJDMFE=
X-Google-Smtp-Source: ABdhPJxWrCceyYjKc2CJRpaomTvYwFYvEmp3TizTd+hPgQXQeickytjJv96SCb81EyjpCwdnpCiMjw==
X-Received: by 2002:a17:90a:de0c:: with SMTP id m12mr9336359pjv.228.1594803384108;
        Wed, 15 Jul 2020 01:56:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:8421:: with SMTP id q1ls523937pfn.8.gmail; Wed, 15 Jul
 2020 01:56:23 -0700 (PDT)
X-Received: by 2002:aa7:860f:: with SMTP id p15mr7959068pfn.59.1594803383486;
        Wed, 15 Jul 2020 01:56:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594803383; cv=none;
        d=google.com; s=arc-20160816;
        b=TIqRqOeo2CSBRtJVvVReI0+aFyunEb1WHLIIV2zlVuYt9/TAMNmtd0woSw7i/a/yJf
         qISsqJMdJrRtpwB6L4JOWpj5tlnSeJXLT8vVdBH0vBlQOQhnni+ckbbn/R6cBTD+hdHB
         iTeaRyBH1/zthvJbNAZqz746g3mcFR3zmfmaKAFkBoe635mjNGpFLA5oVE/vQw7Pc3HG
         1Dqi2iC1/tlT6YJby4aBaxlrmtiTaOrjzA7NXaIMSIissmGNJACiE4md6VztsoOcQPqU
         tgdyK40oZ8ndlb0oRR0BIsrmCo0FdehNfCBYe2vU08pa5ChjuhcE9DJoOmTsnewWL5rp
         M0tA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=e101vTNJccSnaO5lHASBUmJQnRKAmYckQAKch1bp6F0=;
        b=DG+NaDowTW02h/XIyorntBidG4yxewalRDVJrs3o54bdZz6j0MhBhhCHDf2kqKFUkC
         ywf0NohvbRqHLwC4nalBhbNK2bUVd9GrxBiXKV70B2/AAX9X6v4GOTBAuDjVUQOofzO2
         On2tPPJsVS/M/cbuaWdMimGQuAuXxOvzOICoB3RJm49DR3FhniqwwSKVTy1RmSO4jQU7
         Ej9VfgbhjlmKxfo/mKKSQFRDVrcUryosFDZIJAwwcO+a12518UdKLb5qQXOcxNOZJhjl
         cEiNUGnU3VcgIOfRxODTX52X9Jkpt9lvCfcYbq4Qj9IDuva2yvMIpBTjyX2FXIYol59e
         DaUA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=A+bV5m9Z;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d41 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd41.google.com (mail-io1-xd41.google.com. [2607:f8b0:4864:20::d41])
        by gmr-mx.google.com with ESMTPS id x15si29530pll.5.2020.07.15.01.56.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Jul 2020 01:56:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d41 as permitted sender) client-ip=2607:f8b0:4864:20::d41;
Received: by mail-io1-xd41.google.com with SMTP id a12so1394355ion.13
        for <clang-built-linux@googlegroups.com>; Wed, 15 Jul 2020 01:56:23 -0700 (PDT)
X-Received: by 2002:a5e:dd0a:: with SMTP id t10mr8860611iop.80.1594803382646;
 Wed, 15 Jul 2020 01:56:22 -0700 (PDT)
MIME-Version: 1.0
References: <20200714023836.2310569-1-nivedita@alum.mit.edu> <20200715004133.1430068-6-nivedita@alum.mit.edu>
In-Reply-To: <20200715004133.1430068-6-nivedita@alum.mit.edu>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Wed, 15 Jul 2020 10:56:11 +0200
Message-ID: <CA+icZUV8XjWpaxoZNay1hfBbDjvkoWUoFxy0XQhfFczKNKQJgg@mail.gmail.com>
Subject: Re: [PATCH v5 5/7] x86/boot: Remove run-time relocations from
 .head.text code
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	"H. Peter Anvin" <hpa@zytor.com>, x86@kernel.org, Nick Desaulniers <ndesaulniers@google.com>, 
	Fangrui Song <maskray@google.com>, Dmitry Golovin <dima@golovin.in>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, Ard Biesheuvel <ardb@kernel.org>, 
	Masahiro Yamada <masahiroy@kernel.org>, Daniel Kiper <daniel.kiper@oracle.com>, 
	Kees Cook <keescook@chromium.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Arnd Bergmann <arnd@arndb.de>, "H . J . Lu" <hjl@sourceware.org>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=A+bV5m9Z;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d41
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Wed, Jul 15, 2020 at 2:41 AM Arvind Sankar <nivedita@alum.mit.edu> wrote:
>
> The assembly code in head_{32,64}.S, while meant to be
> position-independent, generates run-time relocations because it uses
> instructions such as
>         leal    gdt(%edx), %eax
> which make the assembler and linker think that the code is using %edx as
> an index into gdt, and hence gdt needs to be relocated to its run-time
> address.
>
> On 32-bit, with lld Dmitry Golovin reports that this results in a
> link-time error with default options (i.e. unless -z notext is
> explicitly passed):
>   LD      arch/x86/boot/compressed/vmlinux
> ld.lld: error: can't create dynamic relocation R_386_32 against local
> symbol in readonly segment; recompile object files with -fPIC or pass
> '-Wl,-z,notext' to allow text relocations in the output
>
> With the BFD linker, this generates a warning during the build, if
> --warn-shared-textrel is enabled, which at least Gentoo enables by
> default:
>   LD      arch/x86/boot/compressed/vmlinux
> ld: arch/x86/boot/compressed/head_32.o: warning: relocation in read-only section `.head.text'
> ld: warning: creating a DT_TEXTREL in object
>
> On 64-bit, it is not possible to link the kernel as -pie with lld, and
> it is only possible with a BFD linker that supports -z noreloc-overflow,
> i.e. versions >2.26. This is because these instructions cannot really be
> relocated: the displacement field is only 32-bits wide, and thus cannot
> be relocated for a 64-bit load address. The -z noreloc-overflow option
> simply overrides the linker error, and results in R_X86_64_RELATIVE
> relocations that apply a 64-bit relocation to a 32-bit field anyway.
> This happens to work because nothing will process these run-time
> relocations.
>
> Start fixing this by removing relocations from .head.text:
> - On 32-bit, use a base register that holds the address of the GOT and
>   reference symbol addresses using @GOTOFF, i.e.
>         leal    gdt@GOTOFF(%edx), %eax
> - On 64-bit, most of the code can (and already does) use %rip-relative
>   addressing, however the .code32 bits can't, and the 64-bit code also
>   needs to reference symbol addresses as they will be after moving the
>   compressed kernel to the end of the decompression buffer.
>   For these cases, reference the symbols as an offset to startup_32 to
>   avoid creating relocations, i.e.
>         leal    (gdt-startup_32)(%bp), %eax
>   This only works in .head.text as the subtraction cannot be represented
>   as a PC-relative relocation unless startup_32 is in the same section
>   as the code. Move efi32_pe_entry into .head.text so that it can use
>   the same method to avoid relocations.
>
> Reviewed-by: Kees Cook <keescook@chromium.org>
> Reviewed-by: Ard Biesheuvel <ardb@kernel.org>
> Reviewed-by: Fangrui Song <maskray@google.com>
> Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>

Tested-by: Sedat Dilek <sedat.dilek@gmail.com>

- Sedat -

> ---
>  arch/x86/boot/compressed/head_32.S |  64 +++++++-----------
>  arch/x86/boot/compressed/head_64.S | 104 ++++++++++++++++++-----------
>  2 files changed, 90 insertions(+), 78 deletions(-)
>
> diff --git a/arch/x86/boot/compressed/head_32.S b/arch/x86/boot/compressed/head_32.S
> index 39f0bb43218f..8c1a4f5610f5 100644
> --- a/arch/x86/boot/compressed/head_32.S
> +++ b/arch/x86/boot/compressed/head_32.S
> @@ -33,26 +33,10 @@
>  #include <asm/bootparam.h>
>
>  /*
> - * The 32-bit x86 assembler in binutils 2.26 will generate R_386_GOT32X
> - * relocation to get the symbol address in PIC.  When the compressed x86
> - * kernel isn't built as PIC, the linker optimizes R_386_GOT32X
> - * relocations to their fixed symbol addresses.  However, when the
> - * compressed x86 kernel is loaded at a different address, it leads
> - * to the following load failure:
> - *
> - *   Failed to allocate space for phdrs
> - *
> - * during the decompression stage.
> - *
> - * If the compressed x86 kernel is relocatable at run-time, it should be
> - * compiled with -fPIE, instead of -fPIC, if possible and should be built as
> - * Position Independent Executable (PIE) so that linker won't optimize
> - * R_386_GOT32X relocation to its fixed symbol address.  Older
> - * linkers generate R_386_32 relocations against locally defined symbols,
> - * _bss, _ebss and _end, in PIE.  It isn't wrong, just less optimal than
> - * R_386_RELATIVE.  But the x86 kernel fails to properly handle R_386_32
> - * relocations when relocating the kernel.  To generate R_386_RELATIVE
> - * relocations, we mark _bss, _ebss and _end as hidden:
> + * These symbols needed to be marked as .hidden to prevent the BFD linker from
> + * generating R_386_32 (rather than R_386_RELATIVE) relocations for them when
> + * the 32-bit compressed kernel is linked as PIE. This is no longer necessary,
> + * but it doesn't hurt to keep them .hidden.
>   */
>         .hidden _bss
>         .hidden _ebss
> @@ -74,10 +58,10 @@ SYM_FUNC_START(startup_32)
>         leal    (BP_scratch+4)(%esi), %esp
>         call    1f
>  1:     popl    %edx
> -       subl    $1b, %edx
> +       addl    $_GLOBAL_OFFSET_TABLE_+(.-1b), %edx
>
>         /* Load new GDT */
> -       leal    gdt(%edx), %eax
> +       leal    gdt@GOTOFF(%edx), %eax
>         movl    %eax, 2(%eax)
>         lgdt    (%eax)
>
> @@ -90,14 +74,16 @@ SYM_FUNC_START(startup_32)
>         movl    %eax, %ss
>
>  /*
> - * %edx contains the address we are loaded at by the boot loader and %ebx
> - * contains the address where we should move the kernel image temporarily
> - * for safe in-place decompression. %ebp contains the address that the kernel
> - * will be decompressed to.
> + * %edx contains the address we are loaded at by the boot loader (plus the
> + * offset to the GOT).  The below code calculates %ebx to be the address where
> + * we should move the kernel image temporarily for safe in-place decompression
> + * (again, plus the offset to the GOT).
> + *
> + * %ebp is calculated to be the address that the kernel will be decompressed to.
>   */
>
>  #ifdef CONFIG_RELOCATABLE
> -       movl    %edx, %ebx
> +       leal    startup_32@GOTOFF(%edx), %ebx
>
>  #ifdef CONFIG_EFI_STUB
>  /*
> @@ -108,7 +94,7 @@ SYM_FUNC_START(startup_32)
>   *     image_offset = startup_32 - image_base
>   * Otherwise image_offset will be zero and has no effect on the calculations.
>   */
> -       subl    image_offset(%edx), %ebx
> +       subl    image_offset@GOTOFF(%edx), %ebx
>  #endif
>
>         movl    BP_kernel_alignment(%esi), %eax
> @@ -125,10 +111,10 @@ SYM_FUNC_START(startup_32)
>         movl    %ebx, %ebp      // Save the output address for later
>         /* Target address to relocate to for decompression */
>         addl    BP_init_size(%esi), %ebx
> -       subl    $_end, %ebx
> +       subl    $_end@GOTOFF, %ebx
>
>         /* Set up the stack */
> -       leal    boot_stack_end(%ebx), %esp
> +       leal    boot_stack_end@GOTOFF(%ebx), %esp
>
>         /* Zero EFLAGS */
>         pushl   $0
> @@ -139,8 +125,8 @@ SYM_FUNC_START(startup_32)
>   * where decompression in place becomes safe.
>   */
>         pushl   %esi
> -       leal    (_bss-4)(%edx), %esi
> -       leal    (_bss-4)(%ebx), %edi
> +       leal    (_bss@GOTOFF-4)(%edx), %esi
> +       leal    (_bss@GOTOFF-4)(%ebx), %edi
>         movl    $(_bss - startup_32), %ecx
>         shrl    $2, %ecx
>         std
> @@ -153,14 +139,14 @@ SYM_FUNC_START(startup_32)
>          * during extract_kernel below. To avoid any issues, repoint the GDTR
>          * to the new copy of the GDT.
>          */
> -       leal    gdt(%ebx), %eax
> +       leal    gdt@GOTOFF(%ebx), %eax
>         movl    %eax, 2(%eax)
>         lgdt    (%eax)
>
>  /*
>   * Jump to the relocated address.
>   */
> -       leal    .Lrelocated(%ebx), %eax
> +       leal    .Lrelocated@GOTOFF(%ebx), %eax
>         jmp     *%eax
>  SYM_FUNC_END(startup_32)
>
> @@ -170,7 +156,7 @@ SYM_FUNC_START_ALIAS(efi_stub_entry)
>         add     $0x4, %esp
>         movl    8(%esp), %esi   /* save boot_params pointer */
>         call    efi_main
> -       leal    startup_32(%eax), %eax
> +       /* efi_main returns the possibly relocated address of startup_32 */
>         jmp     *%eax
>  SYM_FUNC_END(efi32_stub_entry)
>  SYM_FUNC_END_ALIAS(efi_stub_entry)
> @@ -183,8 +169,8 @@ SYM_FUNC_START_LOCAL_NOALIGN(.Lrelocated)
>   * Clear BSS (stack is currently empty)
>   */
>         xorl    %eax, %eax
> -       leal    _bss(%ebx), %edi
> -       leal    _ebss(%ebx), %ecx
> +       leal    _bss@GOTOFF(%ebx), %edi
> +       leal    _ebss@GOTOFF(%ebx), %ecx
>         subl    %edi, %ecx
>         shrl    $2, %ecx
>         rep     stosl
> @@ -198,9 +184,9 @@ SYM_FUNC_START_LOCAL_NOALIGN(.Lrelocated)
>         pushl   %ebp            /* output address */
>
>         pushl   $z_input_len    /* input_len */
> -       leal    input_data(%ebx), %eax
> +       leal    input_data@GOTOFF(%ebx), %eax
>         pushl   %eax            /* input_data */
> -       leal    boot_heap(%ebx), %eax
> +       leal    boot_heap@GOTOFF(%ebx), %eax
>         pushl   %eax            /* heap area */
>         pushl   %esi            /* real mode pointer */
>         call    extract_kernel  /* returns kernel location in %eax */
> diff --git a/arch/x86/boot/compressed/head_64.S b/arch/x86/boot/compressed/head_64.S
> index bf1ab30acc5b..11429092c224 100644
> --- a/arch/x86/boot/compressed/head_64.S
> +++ b/arch/x86/boot/compressed/head_64.S
> @@ -43,6 +43,32 @@
>         .hidden _end
>
>         __HEAD
> +
> +/*
> + * This macro gives the relative virtual address of X, i.e. the offset of X
> + * from startup_32. This is the same as the link-time virtual address of X,
> + * since startup_32 is at 0, but defining it this way tells the
> + * assembler/linker that we do not want the actual run-time address of X. This
> + * prevents the linker from trying to create unwanted run-time relocation
> + * entries for the reference when the compressed kernel is linked as PIE.
> + *
> + * A reference X(%reg) will result in the link-time VA of X being stored with
> + * the instruction, and a run-time R_X86_64_RELATIVE relocation entry that
> + * adds the 64-bit base address where the kernel is loaded.
> + *
> + * Replacing it with (X-startup_32)(%reg) results in the offset being stored,
> + * and no run-time relocation.
> + *
> + * The macro should be used as a displacement with a base register containing
> + * the run-time address of startup_32 [i.e. rva(X)(%reg)], or as an immediate
> + * [$ rva(X)].
> + *
> + * This macro can only be used from within the .head.text section, since the
> + * expression requires startup_32 to be in the same section as the code being
> + * assembled.
> + */
> +#define rva(X) ((X) - startup_32)
> +
>         .code32
>  SYM_FUNC_START(startup_32)
>         /*
> @@ -65,10 +91,10 @@ SYM_FUNC_START(startup_32)
>         leal    (BP_scratch+4)(%esi), %esp
>         call    1f
>  1:     popl    %ebp
> -       subl    $1b, %ebp
> +       subl    $ rva(1b), %ebp
>
>         /* Load new GDT with the 64bit segments using 32bit descriptor */
> -       leal    gdt(%ebp), %eax
> +       leal    rva(gdt)(%ebp), %eax
>         movl    %eax, 2(%eax)
>         lgdt    (%eax)
>
> @@ -81,7 +107,7 @@ SYM_FUNC_START(startup_32)
>         movl    %eax, %ss
>
>  /* setup a stack and make sure cpu supports long mode. */
> -       leal    boot_stack_end(%ebp), %esp
> +       leal    rva(boot_stack_end)(%ebp), %esp
>
>         call    verify_cpu
>         testl   %eax, %eax
> @@ -108,7 +134,7 @@ SYM_FUNC_START(startup_32)
>   *     image_offset = startup_32 - image_base
>   * Otherwise image_offset will be zero and has no effect on the calculations.
>   */
> -       subl    image_offset(%ebp), %ebx
> +       subl    rva(image_offset)(%ebp), %ebx
>  #endif
>
>         movl    BP_kernel_alignment(%esi), %eax
> @@ -124,7 +150,7 @@ SYM_FUNC_START(startup_32)
>
>         /* Target address to relocate to for decompression */
>         addl    BP_init_size(%esi), %ebx
> -       subl    $_end, %ebx
> +       subl    $ rva(_end), %ebx
>
>  /*
>   * Prepare for entering 64 bit mode
> @@ -152,19 +178,19 @@ SYM_FUNC_START(startup_32)
>  1:
>
>         /* Initialize Page tables to 0 */
> -       leal    pgtable(%ebx), %edi
> +       leal    rva(pgtable)(%ebx), %edi
>         xorl    %eax, %eax
>         movl    $(BOOT_INIT_PGT_SIZE/4), %ecx
>         rep     stosl
>
>         /* Build Level 4 */
> -       leal    pgtable + 0(%ebx), %edi
> +       leal    rva(pgtable + 0)(%ebx), %edi
>         leal    0x1007 (%edi), %eax
>         movl    %eax, 0(%edi)
>         addl    %edx, 4(%edi)
>
>         /* Build Level 3 */
> -       leal    pgtable + 0x1000(%ebx), %edi
> +       leal    rva(pgtable + 0x1000)(%ebx), %edi
>         leal    0x1007(%edi), %eax
>         movl    $4, %ecx
>  1:     movl    %eax, 0x00(%edi)
> @@ -175,7 +201,7 @@ SYM_FUNC_START(startup_32)
>         jnz     1b
>
>         /* Build Level 2 */
> -       leal    pgtable + 0x2000(%ebx), %edi
> +       leal    rva(pgtable + 0x2000)(%ebx), %edi
>         movl    $0x00000183, %eax
>         movl    $2048, %ecx
>  1:     movl    %eax, 0(%edi)
> @@ -186,7 +212,7 @@ SYM_FUNC_START(startup_32)
>         jnz     1b
>
>         /* Enable the boot page tables */
> -       leal    pgtable(%ebx), %eax
> +       leal    rva(pgtable)(%ebx), %eax
>         movl    %eax, %cr3
>
>         /* Enable Long mode in EFER (Extended Feature Enable Register) */
> @@ -211,14 +237,14 @@ SYM_FUNC_START(startup_32)
>          * We place all of the values on our mini stack so lret can
>          * used to perform that far jump.
>          */
> -       leal    startup_64(%ebp), %eax
> +       leal    rva(startup_64)(%ebp), %eax
>  #ifdef CONFIG_EFI_MIXED
> -       movl    efi32_boot_args(%ebp), %edi
> +       movl    rva(efi32_boot_args)(%ebp), %edi
>         cmp     $0, %edi
>         jz      1f
> -       leal    efi64_stub_entry(%ebp), %eax
> -       movl    efi32_boot_args+4(%ebp), %esi
> -       movl    efi32_boot_args+8(%ebp), %edx   // saved bootparams pointer
> +       leal    rva(efi64_stub_entry)(%ebp), %eax
> +       movl    rva(efi32_boot_args+4)(%ebp), %esi
> +       movl    rva(efi32_boot_args+8)(%ebp), %edx      // saved bootparams pointer
>         cmpl    $0, %edx
>         jnz     1f
>         /*
> @@ -229,7 +255,7 @@ SYM_FUNC_START(startup_32)
>          * the correct stack alignment for entry.
>          */
>         subl    $40, %esp
> -       leal    efi_pe_entry(%ebp), %eax
> +       leal    rva(efi_pe_entry)(%ebp), %eax
>         movl    %edi, %ecx                      // MS calling convention
>         movl    %esi, %edx
>  1:
> @@ -255,18 +281,18 @@ SYM_FUNC_START(efi32_stub_entry)
>
>         call    1f
>  1:     pop     %ebp
> -       subl    $1b, %ebp
> +       subl    $ rva(1b), %ebp
>
> -       movl    %esi, efi32_boot_args+8(%ebp)
> +       movl    %esi, rva(efi32_boot_args+8)(%ebp)
>  SYM_INNER_LABEL(efi32_pe_stub_entry, SYM_L_LOCAL)
> -       movl    %ecx, efi32_boot_args(%ebp)
> -       movl    %edx, efi32_boot_args+4(%ebp)
> -       movb    $0, efi_is64(%ebp)
> +       movl    %ecx, rva(efi32_boot_args)(%ebp)
> +       movl    %edx, rva(efi32_boot_args+4)(%ebp)
> +       movb    $0, rva(efi_is64)(%ebp)
>
>         /* Save firmware GDTR and code/data selectors */
> -       sgdtl   efi32_boot_gdt(%ebp)
> -       movw    %cs, efi32_boot_cs(%ebp)
> -       movw    %ds, efi32_boot_ds(%ebp)
> +       sgdtl   rva(efi32_boot_gdt)(%ebp)
> +       movw    %cs, rva(efi32_boot_cs)(%ebp)
> +       movw    %ds, rva(efi32_boot_ds)(%ebp)
>
>         /* Disable paging */
>         movl    %cr0, %eax
> @@ -345,11 +371,11 @@ SYM_CODE_START(startup_64)
>
>         /* Target address to relocate to for decompression */
>         movl    BP_init_size(%rsi), %ebx
> -       subl    $_end, %ebx
> +       subl    $ rva(_end), %ebx
>         addq    %rbp, %rbx
>
>         /* Set up the stack */
> -       leaq    boot_stack_end(%rbx), %rsp
> +       leaq    rva(boot_stack_end)(%rbx), %rsp
>
>         /*
>          * At this point we are in long mode with 4-level paging enabled,
> @@ -423,7 +449,7 @@ SYM_CODE_START(startup_64)
>         lretq
>  trampoline_return:
>         /* Restore the stack, the 32-bit trampoline uses its own stack */
> -       leaq    boot_stack_end(%rbx), %rsp
> +       leaq    rva(boot_stack_end)(%rbx), %rsp
>
>         /*
>          * cleanup_trampoline() would restore trampoline memory.
> @@ -435,7 +461,7 @@ trampoline_return:
>          * this function call.
>          */
>         pushq   %rsi
> -       leaq    top_pgtable(%rbx), %rdi
> +       leaq    rva(top_pgtable)(%rbx), %rdi
>         call    cleanup_trampoline
>         popq    %rsi
>
> @@ -449,9 +475,9 @@ trampoline_return:
>   */
>         pushq   %rsi
>         leaq    (_bss-8)(%rip), %rsi
> -       leaq    (_bss-8)(%rbx), %rdi
> -       movq    $_bss /* - $startup_32 */, %rcx
> -       shrq    $3, %rcx
> +       leaq    rva(_bss-8)(%rbx), %rdi
> +       movl    $(_bss - startup_32), %ecx
> +       shrl    $3, %ecx
>         std
>         rep     movsq
>         cld
> @@ -462,15 +488,15 @@ trampoline_return:
>          * during extract_kernel below. To avoid any issues, repoint the GDTR
>          * to the new copy of the GDT.
>          */
> -       leaq    gdt64(%rbx), %rax
> -       leaq    gdt(%rbx), %rdx
> +       leaq    rva(gdt64)(%rbx), %rax
> +       leaq    rva(gdt)(%rbx), %rdx
>         movq    %rdx, 2(%rax)
>         lgdt    (%rax)
>
>  /*
>   * Jump to the relocated address.
>   */
> -       leaq    .Lrelocated(%rbx), %rax
> +       leaq    rva(.Lrelocated)(%rbx), %rax
>         jmp     *%rax
>  SYM_CODE_END(startup_64)
>
> @@ -482,7 +508,7 @@ SYM_FUNC_START_ALIAS(efi_stub_entry)
>         movq    %rdx, %rbx                      /* save boot_params pointer */
>         call    efi_main
>         movq    %rbx,%rsi
> -       leaq    startup_64(%rax), %rax
> +       leaq    rva(startup_64)(%rax), %rax
>         jmp     *%rax
>  SYM_FUNC_END(efi64_stub_entry)
>  SYM_FUNC_END_ALIAS(efi_stub_entry)
> @@ -645,7 +671,7 @@ SYM_DATA(efi_is64, .byte 1)
>  #define BS32_handle_protocol   88 // offsetof(efi_boot_services_32_t, handle_protocol)
>  #define LI32_image_base                32 // offsetof(efi_loaded_image_32_t, image_base)
>
> -       .text
> +       __HEAD
>         .code32
>  SYM_FUNC_START(efi32_pe_entry)
>  /*
> @@ -667,12 +693,12 @@ SYM_FUNC_START(efi32_pe_entry)
>
>         call    1f
>  1:     pop     %ebx
> -       subl    $1b, %ebx
> +       subl    $ rva(1b), %ebx
>
>         /* Get the loaded image protocol pointer from the image handle */
>         leal    -4(%ebp), %eax
>         pushl   %eax                            // &loaded_image
> -       leal    loaded_image_proto(%ebx), %eax
> +       leal    rva(loaded_image_proto)(%ebx), %eax
>         pushl   %eax                            // pass the GUID address
>         pushl   8(%ebp)                         // pass the image handle
>
> @@ -707,7 +733,7 @@ SYM_FUNC_START(efi32_pe_entry)
>          * use it before we get to the 64-bit efi_pe_entry() in C code.
>          */
>         subl    %esi, %ebx
> -       movl    %ebx, image_offset(%ebp)        // save image_offset
> +       movl    %ebx, rva(image_offset)(%ebp)   // save image_offset
>         jmp     efi32_pe_stub_entry
>
>  2:     popl    %edi                            // restore callee-save registers
> --
> 2.26.2
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUV8XjWpaxoZNay1hfBbDjvkoWUoFxy0XQhfFczKNKQJgg%40mail.gmail.com.
