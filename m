Return-Path: <clang-built-linux+bncBDYJPJO25UGBBGNTW34QKGQE6IPPYFQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 5878B23F290
	for <lists+clang-built-linux@lfdr.de>; Fri,  7 Aug 2020 20:12:43 +0200 (CEST)
Received: by mail-pg1-x540.google.com with SMTP id e127sf2077190pgc.2
        for <lists+clang-built-linux@lfdr.de>; Fri, 07 Aug 2020 11:12:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596823962; cv=pass;
        d=google.com; s=arc-20160816;
        b=bXErkEvc2f+QWGfDjba+WSCfExkyj5yoIDn/I5UrZxJHA9SjofxzFI3o9ajq23pXg+
         GD5qnXuL+LVerp2yA9EW/jnsHElInEC1ZCIHZBEhx5IciYdXEWP7PARqXiikGanFs72L
         rHH6uKRddfyOdBip6CUl+QmnWPVONtIvdAkPlor//IcMwBjdB67rYbbzj/yfrOkVUSFG
         XMzz7wPh+s7UCtbUrYd0ov9j/KZ3VWygZotrVFwqwXRHEMWZud00rNBpq3u0AZ+mB+xM
         VDA8kPwEUEl2cilcePDkzI32qF+yC1cKhWpOaoRT2lzXoeS/YutKsBI68IgLJMvwwm2I
         QOGg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=861XC7nlNqHzi9x7fyNARisdnuDaF00A1Ol65d95Yhg=;
        b=mkYhpsVCig/mkSZGjHqd8n2J0II9a8G+YoN12GNR51RWBrxmlXgZrU7wRiJ/uk9cMp
         wyn5EdoQL6tOnF+BsMZ5xU0nvDjiM1naUfU/nmRMzaVvUhzT0tsKSy7gXYpO0QN91CJM
         VKnhBM1xipDM1moAmpOwObdZieZ798ZsUWuXUjrzA+e0uYe8hWAs2uzOcpbiOwSrknRh
         UuZEETx+yjnq0DWvW8lXSmMKG+zor+Wzg06ZpIgNsK8Qp+4tH8Iz8rdOh0JdY1YrAwKo
         s4LEq5Q2sjtqG/eXCHro18xV/MTTMGPumRcMOK2U2baxx3AxrOW7C8nJ7ZDmosj0aR6I
         ET+g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qDDCzqQM;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=861XC7nlNqHzi9x7fyNARisdnuDaF00A1Ol65d95Yhg=;
        b=RGZ4GFwO7Ms9XYSPdUUff2VtdsvFEvehdoM3JvIG8j+l/qYNQiwGdgQ+LNzAPWnwup
         /VRuXpuehDhc3sBC5G7Yq2GTUWtWiBoIKunqmf1cCZ1Y4qLec5rk9QzaKz/bBUVVoQVl
         p51Uounyj5oGs0N84yj0QFecBF2AMStaiiV9x1XDYSbkdNdlIAEU8TdBU9uWmxL0ltoL
         zdMEe/uoHuGkKCVeoJZ9Uh+zp9t8aVLCcMo/wBgdFDEniFRjFJb8DV10WS80U/OuoliS
         TE1u9opnOy/XSrQ893jcR6QNs/Jje/LaFchkSovFNgyVVTqtqPnc54tLLOx0meay22JN
         XlTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=861XC7nlNqHzi9x7fyNARisdnuDaF00A1Ol65d95Yhg=;
        b=Q2b+yiry/3YpPhHJXHsIFveTocl6BkMR3kKOGtpJVay6Vm1vDNHZOLaFlBkHUlf7jH
         NiqrmS0pmZXTx2sJzUjICKZd1l6TQGeTpij1ZzxnqONmW6DtnrxKhT03BFyhz0Ngx/Zv
         RbCR3JJMIEQtsysEM5sbj5quYh02AAerTm963AgAKE8qIyhMGGc38+Qhv1B5UwErQQrb
         VUhCJLjOpTOFy3rLTuaL5McHw13VwO7emGUqI+GkBtqVajFjgS8BO7HJNe7gWyLPSCZV
         XsVRggQHaO9WblfWXcGfr5A+zFMN8hvtxvOKBcAUilUbfqTPkzBMG4Wd3BHSpLSxbfX6
         q5aA==
X-Gm-Message-State: AOAM533C4CLwy8SW2nq0fKZ1KU8cP6Car2f2T+6ER0s7DPzq6S3Qb5Kp
	VtWjKiUSr8UPZghh7oxiapY=
X-Google-Smtp-Source: ABdhPJx7JwTfQ62eOJgK9O0gY4C9PmMG9y9LXmq4hp+POk42oCmv42Omy0gCGEMt2iB+CWw3ZujG7A==
X-Received: by 2002:a17:902:b584:: with SMTP id a4mr13366173pls.341.1596823962029;
        Fri, 07 Aug 2020 11:12:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:d04b:: with SMTP id s11ls2714052pgi.1.gmail; Fri, 07 Aug
 2020 11:12:41 -0700 (PDT)
X-Received: by 2002:aa7:9e4e:: with SMTP id z14mr14702670pfq.60.1596823961598;
        Fri, 07 Aug 2020 11:12:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596823961; cv=none;
        d=google.com; s=arc-20160816;
        b=ll6grsl+cpoVOBrt2UTmW7JruUUPnipwlNwRrZnCIDRbHA3GJYQ0g1sZ0xRh5EpBC+
         1YVk+P09Hep/ijYt33ymQTcDpW9kIJVjYuVr+8Lid/1+eycyhfjLrc+t8nkG2LVTO7F8
         8+1OXiy13FjXxEMPrtXHX4fvQP+SIpWwyyaoDozof+RQP3C/bEs7Jq96G9BAm87VMw9d
         pNXWOBpQ/GyOetvkj8BRT+FjMVwADinKoxpzdbAS9J44NzQ9M86K2PPKuv9vyGpnl44p
         mPjQp69Tyy3koCtsYO590ogGXt4uXoad0f/niUYF78nKuNMHjcog/UdWW+83SbdStafA
         djuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=kL3mR5oBZa4t2i/MKwrasxeLRvGcBc/sHQnLPXjcDwY=;
        b=MnVC5pkL4Dq9eIQfJkNJO3nutbsAhIorl12bMA+4FaIjqgQaPNCPtxl59FlQMim9EB
         aqjUVwPaqjh4j8ydBh47llTNZ8vjUJ6tbT792WZtdTZDhFjnST+ZLvpd74S4tw6mrFHY
         DjsiDXf7zUZP9yoMn2Xb0Pz6Grbd1gCl2AIUKKzqXhZC9cDoZ2OW8XA74mzN/lke9Gis
         2kBqJ2mZcWbEV2EMbtJniBayGBvYk5lGeFWaRL8hpjzTHZ0ttm4rBBAUewGtPikLfJJL
         /vG26AjgkB567anDsCzTKcm0lyYHobKPj+r9kJ2vnHXVOQ7EeeaQCC31mcFpZN1NrJGm
         lKqQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qDDCzqQM;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id jx18si453901pjb.1.2020.08.07.11.12.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Aug 2020 11:12:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Received: by mail-pl1-x642.google.com with SMTP id p1so1443256pls.4
        for <clang-built-linux@googlegroups.com>; Fri, 07 Aug 2020 11:12:41 -0700 (PDT)
X-Received: by 2002:a17:902:cb91:: with SMTP id d17mr13384373ply.223.1596823960860;
 Fri, 07 Aug 2020 11:12:40 -0700 (PDT)
MIME-Version: 1.0
References: <20200731230820.1742553-1-keescook@chromium.org> <20200731230820.1742553-7-keescook@chromium.org>
In-Reply-To: <20200731230820.1742553-7-keescook@chromium.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 7 Aug 2020 11:12:29 -0700
Message-ID: <CAKwvOd=mY5=SWjGKA_KpvKnOPmJky_qMcyBYeFhskx6J=aJmNA@mail.gmail.com>
Subject: Re: [PATCH v5 06/36] x86/boot: Remove run-time relocations from head_{32,64}.S
To: Kees Cook <keescook@chromium.org>, Arvind Sankar <nivedita@alum.mit.edu>
Cc: Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>, 
	Ard Biesheuvel <ardb@kernel.org>, Fangrui Song <maskray@google.com>, 
	Sedat Dilek <sedat.dilek@gmail.com>, Catalin Marinas <catalin.marinas@arm.com>, 
	Mark Rutland <mark.rutland@arm.com>, Peter Collingbourne <pcc@google.com>, James Morse <james.morse@arm.com>, 
	Borislav Petkov <bp@suse.de>, Ingo Molnar <mingo@redhat.com>, Russell King <linux@armlinux.org.uk>, 
	Masahiro Yamada <masahiroy@kernel.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Arnd Bergmann <arnd@arndb.de>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	linux-arch <linux-arch@vger.kernel.org>, linux-efi <linux-efi@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=qDDCzqQM;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642
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

On Fri, Jul 31, 2020 at 4:08 PM Kees Cook <keescook@chromium.org> wrote:
>
> From: Arvind Sankar <nivedita@alum.mit.edu>
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
> [1] https://sourceware.org/bugzilla/show_bug.cgi?id=25754
>
> Tested-by: Nick Desaulniers <ndesaulniers@google.com>
> Reviewed-by: Kees Cook <keescook@chromium.org>
> Reviewed-by: Ard Biesheuvel <ardb@kernel.org>
> Reviewed-by: Fangrui Song <maskray@google.com>
> Tested-by: Sedat Dilek <sedat.dilek@gmail.com>
> Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
> Signed-off-by: Kees Cook <keescook@chromium.org>
> ---
>  arch/x86/boot/compressed/Makefile  | 12 ++----------
>  arch/x86/boot/compressed/head_32.S | 17 ++++++++---------
>  arch/x86/boot/compressed/head_64.S |  4 ++--
>  arch/x86/boot/compressed/mkpiggy.c |  6 ++++++
>  4 files changed, 18 insertions(+), 21 deletions(-)
>
> diff --git a/arch/x86/boot/compressed/Makefile b/arch/x86/boot/compressed/Makefile
> index 489fea16bcfb..7db0102a573d 100644
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

Oh, do these still need ld-option?  bfd and lld both support these
flags. (Though in their --help, they mention single hyphen and double
hyphen respectively.  Also, if we don't build this as PIE because the
linker doesn't support the option, we probably want to fail the build?

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
> 2.25.1
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200731230820.1742553-7-keescook%40chromium.org.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DmY5%3DSWjGKA_KpvKnOPmJky_qMcyBYeFhskx6J%3DaJmNA%40mail.gmail.com.
