Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBJMKXP4AKGQE46XE5SI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3d.google.com (mail-vk1-xa3d.google.com [IPv6:2607:f8b0:4864:20::a3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 115622207F3
	for <lists+clang-built-linux@lfdr.de>; Wed, 15 Jul 2020 10:58:14 +0200 (CEST)
Received: by mail-vk1-xa3d.google.com with SMTP id g131sf549830vke.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 15 Jul 2020 01:58:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594803493; cv=pass;
        d=google.com; s=arc-20160816;
        b=JV2wZY6qVU2clBqTi7VoDmcCFMzb70WJF3wO9xkIfeKBjLqIRmAT2ZC7cusleSD85Y
         1O130DOzR1UkTHm2VH1I5SHQhxIC9wiWoqm6JLgQcwDOnz529j84Y2Wnf49EU2tSVLRU
         MwYu5+XM8DmoZQNe9sEDlc5nMbXMJKCUq77fbaDzBGli1MiHk2LgD+QcDF8fj7WsIwBy
         94m6bweXu3jREPLVcb06f5LI/9VhDdOAMJOyLozM+B/G9Rk2F4XzD0xgw+X+5PPp5pr9
         C5L64kczcDuVE9gD7xMaSeMzXPXCLeuA+HNv4OC2lqVjmzgWk0qvtAwdhIClfOmFIjsa
         5FOQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=HhbYYJSw5APMFaCKNrCEIR2RIOGAGfMRl1QexzbcM2Y=;
        b=sIPI9/AkgsAD84Kr5ih63VdLa+PuTMk2zLIkWb41HiVtHgKknblttVkSFqUoQWHLhX
         EoLBDnXMITFTP5zVlT2TruYenmskOgraZ6vD4JJ3GIp6TQSxLiSsYQfCNpMNqju5YYyT
         EFNpR7Np1+1miyuYDBbBRSuZxYr0/FZIp/g6RU/L1odluIUfJz2ZqLJ54jSPAguhvL4C
         plAaIvlCFNUgucXdjh3PWfbAkamvm3Ci6LtTUnBlVEa4PTU+QrLHi8zCp0P1lO0q83pP
         JjnA2rrmuVqmJpEmSSDg4ZhYHNDtgD9TJyylPqM2VbuhC0Zt9/gLyjgBuFk+9Ti6er6L
         yaEg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Q3qqHi6V;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d42 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=HhbYYJSw5APMFaCKNrCEIR2RIOGAGfMRl1QexzbcM2Y=;
        b=miK5KQ3i0525ghprmLuNcOvX9CYysv90VzEnQaL7r5KnEsc7yMjEmRxf6WLuRAo/iL
         N1p/gyefRY+ggDSzfrb7T3JHy0UKObzAUjPz0hWNJejHf/L65tG4u0qmVlKCw4bQzt3N
         I5BJnXtBcIyiUIten/kJ/5kq8nfX/srUQ2criRRL675xcTex3z7+qIEpXmvL9wIQ+m/K
         yqCdWKe7aljM38bWMBuZI9ZDyjUCzgtv2cB/K+B0Gx4cEOk9e/fxN/zGl2Fp9FY7icXN
         vUOjsxntdCdJrOn3qROPfuqhOLVjh+DljydlqMRFIlvn8qbwilM+AkdQ8I35ljmuspKc
         ZWbQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HhbYYJSw5APMFaCKNrCEIR2RIOGAGfMRl1QexzbcM2Y=;
        b=XP0o8Fq3awMN8wwRjNn6JAfwPZxDyWailA7uXIC/HQazYQKDUusTdHU3+z8Prptqfe
         lvzcVQXjqBFhknwRwVO6i4KR4Lp8VYS0oDIEdoWVasvKCqH9e2PeH5jkr9Uhb+78nmGO
         e13CDu99g5aLIKZp2ECYIo42o656UDJB9SOiZ/wi67g74lFuMT0pg1lGSjuS7PErx3i+
         dKuWr1fUzPPDreAjRs9eLg0Bxaqjr7NB8eonWqnMCpddBidtnzLuOCKuPFc7eYqUQiwg
         hD/MhbeavaTbx8UAnp89I7kAJTSGEJSpUmCbLy+J0gfwinOE9tx3JJ3fAr7hjYBiHnS8
         V+HQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HhbYYJSw5APMFaCKNrCEIR2RIOGAGfMRl1QexzbcM2Y=;
        b=tiR+ZjZBBFW7L3fB08blVAA4zNGdt28jKiK3fopMtzPWANZh3WXe3m+C/+M/e8Rrhz
         n38Nr0MhwpTT9Kk34QoM2foHVoM1oN0iMA/zQo59sP1jEf2jAGnpfBjYC0MDqMqlSC3U
         udm9EgZsC6DJlbe4BFRFNm1TiEUpKWVMXybxbuVgdfB1jZ9BHU7w1p/YoWn+Jepj826B
         uiVq7AJYu5bJQHHcbbztJhdCLsAdHR3XqxhZUMkkfM8H+A+YH9IQ/5ldEHWAaN9UH5HO
         REwyMj25GTFFP9KIPN7UtF/Lv3ErYkODywqv71Y9K1cCYMMjKbJ5liZEUsvQ5rRyaXHl
         cWpw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532E2GcWyidQ4Uo9RGhLCZGW9scKNvVVhwI5yBl+xO1neyn2XWpG
	t9Vj8FDTFvNCpI1yAEVEz48=
X-Google-Smtp-Source: ABdhPJyQANybhSKD2lvbzPJyYhq1UbCEpuALxYXDsecxwLzCq+4QWp8MSWrsXqi3mjjIRrnD6OuBaw==
X-Received: by 2002:a67:1342:: with SMTP id 63mr6272989vst.54.1594803493049;
        Wed, 15 Jul 2020 01:58:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:3244:: with SMTP id y65ls191848vsy.10.gmail; Wed, 15 Jul
 2020 01:58:12 -0700 (PDT)
X-Received: by 2002:a67:ec44:: with SMTP id z4mr6342134vso.230.1594803492655;
        Wed, 15 Jul 2020 01:58:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594803492; cv=none;
        d=google.com; s=arc-20160816;
        b=hIJXVen9+7QaAUa/Rx1Y7Ya3RK0ketHyE1VzBFvelWJvINgDHxiilfvgZIVrww+248
         mcZ0YBdKrtls3iQ7XaWmMCTO/wCz+U7OqZXHEyf0o4jUTgJSFuMpnKbaT6MolHPtMEXs
         f/P+nIEPc690FIVgqQuYjByQmyFBdfV+ltfwApheklKJnT+gQSHDgoPxEtQpOrk4pfkh
         9ceqUjvsOirlrZSJCBESZ74Mg0hK9JsYnb9xopKFXes9zGUp7/SqwUoePLNQs4HO6s+Z
         BuD/yGXciNnrarV8y/Nx2KwetVa97ZjBNLDlwRABX2DGXsInUUjglJ0hgj7M5QsNYl5C
         vkhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=jvfhiaQ0ZxylHig36vxLZl3dur0kELp+OxDh9AgCRVc=;
        b=xcbNuIfjYzU1Th0pk880Fuz8F7Z5lyb0pn9nHCWAGtSQUbVZ4z8n3jUm+ShhJ1u8Ar
         V4/T0s7JEQ/uQNdSelf8K34g400+fpVf0WAAj2p2ECDi+5+W1u8oa55pE9byEC6mCAph
         8+Oo7tx+QGxsitq0rzGaHS0uWFc0y3XRutQx4k1358DIrabIgBIMLx6LfQpAlIMJfipt
         d5PtRpT8wO2EE8sDKrM6OX8ZI/3X1tzg0TyMjkb7M03F9TlK8p4zKtQPUt6bq+qXCAGx
         wJdNVm925r37EM8J/2uiozqN3NnDU+QoyR0KR//fxZg0sqGi9X5PEX04VZ7n/aENsrCs
         46EA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Q3qqHi6V;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d42 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd42.google.com (mail-io1-xd42.google.com. [2607:f8b0:4864:20::d42])
        by gmr-mx.google.com with ESMTPS id o66si101001vkc.0.2020.07.15.01.58.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Jul 2020 01:58:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d42 as permitted sender) client-ip=2607:f8b0:4864:20::d42;
Received: by mail-io1-xd42.google.com with SMTP id l17so1421711iok.7
        for <clang-built-linux@googlegroups.com>; Wed, 15 Jul 2020 01:58:12 -0700 (PDT)
X-Received: by 2002:a5e:c91a:: with SMTP id z26mr888628iol.70.1594803491962;
 Wed, 15 Jul 2020 01:58:11 -0700 (PDT)
MIME-Version: 1.0
References: <20200714023836.2310569-1-nivedita@alum.mit.edu> <20200715004133.1430068-7-nivedita@alum.mit.edu>
In-Reply-To: <20200715004133.1430068-7-nivedita@alum.mit.edu>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Wed, 15 Jul 2020 10:58:00 +0200
Message-ID: <CA+icZUXDoeHEcFurBVTv-JMR2xR6oj500n=fVSrN56_KOHiHcw@mail.gmail.com>
Subject: Re: [PATCH v5 6/7] x86/boot: Remove run-time relocations from head_{32,64}.S
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
 header.i=@gmail.com header.s=20161025 header.b=Q3qqHi6V;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d42
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
> The BFD linker generates run-time relocations for z_input_len and
> z_output_len, even though they are absolute symbols.
>
> This is fixed for binutils-2.35 [1]. Work around this for earlier
> versions by defining two variables input_len and output_len in addition
> to the symbols, and use them via position-independent references.
>
> This eliminates the last two run-time relocations in the head code and
> allows us to drop the -z noreloc-overflow flag to the linker.
>
> Move the -pie and --no-dynamic-linker LDFLAGS to LDFLAGS_vmlinux instead
> of KBUILD_LDFLAGS. There shouldn't be anything else getting linked, but
> this is the more logical location for these flags, and modversions might
> call the linker if an EXPORT_SYMBOL is left over accidentally in one of
> the decompressors.
>

Tested-by: Sedat Dilek <sedat.dilek@gmail.com>
Reported-by: Sedat Dilek <sedat.dilek@gmail.com>

Reported breakage with LLD in previous patchset version.

- Sedat -

> [1] https://sourceware.org/bugzilla/show_bug.cgi?id=25754
>
> Reviewed-by: Kees Cook <keescook@chromium.org>
> Reviewed-by: Ard Biesheuvel <ardb@kernel.org>
> Reviewed-by: Fangrui Song <maskray@google.com>
> Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
> ---
>  arch/x86/boot/compressed/Makefile  | 12 ++----------
>  arch/x86/boot/compressed/head_32.S | 17 ++++++++---------
>  arch/x86/boot/compressed/head_64.S |  4 ++--
>  arch/x86/boot/compressed/mkpiggy.c |  6 ++++++
>  4 files changed, 18 insertions(+), 21 deletions(-)
>
> diff --git a/arch/x86/boot/compressed/Makefile b/arch/x86/boot/compressed/Makefile
> index c829d874dcac..ae2c0dc98a6a 100644
> --- a/arch/x86/boot/compressed/Makefile
> +++ b/arch/x86/boot/compressed/Makefile
> @@ -51,16 +51,8 @@ UBSAN_SANITIZE :=n
>  KBUILD_LDFLAGS := -m elf_$(UTS_MACHINE)
>  # Compressed kernel should be built as PIE since it may be loaded at any
>  # address by the bootloader.
> -ifeq ($(CONFIG_X86_32),y)
> -KBUILD_LDFLAGS += $(call ld-option, -pie) $(call ld-option, --no-dynamic-linker)
> -else
> -# To build 64-bit compressed kernel as PIE, we disable relocation
> -# overflow check to avoid relocation overflow error with a new linker
> -# command-line option, -z noreloc-overflow.
> -KBUILD_LDFLAGS += $(shell $(LD) --help 2>&1 | grep -q "\-z noreloc-overflow" \
> -       && echo "-z noreloc-overflow -pie --no-dynamic-linker")
> -endif
> -LDFLAGS_vmlinux := -T
> +LDFLAGS_vmlinux := $(call ld-option, -pie) $(call ld-option, --no-dynamic-linker)
> +LDFLAGS_vmlinux += -T
>
>  hostprogs      := mkpiggy
>  HOST_EXTRACFLAGS += -I$(srctree)/tools/include
> diff --git a/arch/x86/boot/compressed/head_32.S b/arch/x86/boot/compressed/head_32.S
> index 8c1a4f5610f5..659fad53ca82 100644
> --- a/arch/x86/boot/compressed/head_32.S
> +++ b/arch/x86/boot/compressed/head_32.S
> @@ -178,18 +178,17 @@ SYM_FUNC_START_LOCAL_NOALIGN(.Lrelocated)
>  /*
>   * Do the extraction, and jump to the new kernel..
>   */
> -                               /* push arguments for extract_kernel: */
> -       pushl   $z_output_len   /* decompressed length, end of relocs */
> +       /* push arguments for extract_kernel: */
>
> -       pushl   %ebp            /* output address */
> -
> -       pushl   $z_input_len    /* input_len */
> +       pushl   output_len@GOTOFF(%ebx) /* decompressed length, end of relocs */
> +       pushl   %ebp                    /* output address */
> +       pushl   input_len@GOTOFF(%ebx)  /* input_len */
>         leal    input_data@GOTOFF(%ebx), %eax
> -       pushl   %eax            /* input_data */
> +       pushl   %eax                    /* input_data */
>         leal    boot_heap@GOTOFF(%ebx), %eax
> -       pushl   %eax            /* heap area */
> -       pushl   %esi            /* real mode pointer */
> -       call    extract_kernel  /* returns kernel location in %eax */
> +       pushl   %eax                    /* heap area */
> +       pushl   %esi                    /* real mode pointer */
> +       call    extract_kernel          /* returns kernel location in %eax */
>         addl    $24, %esp
>
>  /*
> diff --git a/arch/x86/boot/compressed/head_64.S b/arch/x86/boot/compressed/head_64.S
> index 11429092c224..9e46729cf162 100644
> --- a/arch/x86/boot/compressed/head_64.S
> +++ b/arch/x86/boot/compressed/head_64.S
> @@ -534,9 +534,9 @@ SYM_FUNC_START_LOCAL_NOALIGN(.Lrelocated)
>         movq    %rsi, %rdi              /* real mode address */
>         leaq    boot_heap(%rip), %rsi   /* malloc area for uncompression */
>         leaq    input_data(%rip), %rdx  /* input_data */
> -       movl    $z_input_len, %ecx      /* input_len */
> +       movl    input_len(%rip), %ecx   /* input_len */
>         movq    %rbp, %r8               /* output target address */
> -       movl    $z_output_len, %r9d     /* decompressed length, end of relocs */
> +       movl    output_len(%rip), %r9d  /* decompressed length, end of relocs */
>         call    extract_kernel          /* returns kernel location in %rax */
>         popq    %rsi
>
> diff --git a/arch/x86/boot/compressed/mkpiggy.c b/arch/x86/boot/compressed/mkpiggy.c
> index 7e01248765b2..52aa56cdbacc 100644
> --- a/arch/x86/boot/compressed/mkpiggy.c
> +++ b/arch/x86/boot/compressed/mkpiggy.c
> @@ -60,6 +60,12 @@ int main(int argc, char *argv[])
>         printf(".incbin \"%s\"\n", argv[1]);
>         printf("input_data_end:\n");
>
> +       printf(".section \".rodata\",\"a\",@progbits\n");
> +       printf(".globl input_len\n");
> +       printf("input_len:\n\t.long %lu\n", ilen);
> +       printf(".globl output_len\n");
> +       printf("output_len:\n\t.long %lu\n", (unsigned long)olen);
> +
>         retval = 0;
>  bail:
>         if (f)
> --
> 2.26.2
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUXDoeHEcFurBVTv-JMR2xR6oj500n%3DfVSrN56_KOHiHcw%40mail.gmail.com.
