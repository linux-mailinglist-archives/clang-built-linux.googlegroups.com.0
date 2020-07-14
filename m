Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBQHCW34AKGQENRP4ACA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3a.google.com (mail-vk1-xa3a.google.com [IPv6:2607:f8b0:4864:20::a3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C48621F253
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 15:21:05 +0200 (CEST)
Received: by mail-vk1-xa3a.google.com with SMTP id u203sf3673064vkb.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 06:21:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594732864; cv=pass;
        d=google.com; s=arc-20160816;
        b=Zx3+ZUV3jshJe10AHJm8/OGpPIduJUMOcCtla+4dxF97WW+RIGTM3UrTS0egktxBpL
         9YQsMNRMoIt719t8F3oKCEIul55J1HzPnNZ4hWjD3zAGh7UJpjZjerOpb7E6giTqORGB
         /NF8JUITwwDhBEoX+xLj0XvkBkFW8ybCf8uz7p+iYOdlM0c6TxdCIUJZnFQrEBKd7RNg
         3J0b2E5i1et8yyrqhqmyRIJbi28v3OpMuE/oAETilpPP5+5Shwe+0i34GW0gDdeovU8M
         QaBop0tXohxvRn3VJ4LuGvxXn//U+sBRSpEPWV8dHFmAFseLx3u6OkOo8pmLwSqC2mDH
         KcvQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=cjRiLrEb1wyHS0sPLWPKolaQk984mHbI4ogOT+uL2wc=;
        b=GUPKMaXjFLwtePgSjsprSVGDLEmP+X77Jcf6fVMe/8/2ej8A0WvJ8AkdN8Zq5G+ilI
         /nnE+e9gfTTbBmGiJUS2fuRqPumcPCqwjWV09S470sfaGxTENCJQ9xfSVRf5ZY0+HA7t
         cQLn71rbEhAVPWuR4zWcLKzFkpPHlON/pr5gQhQK89Lz2LW7LnPqi7yqf58AEfC0GRhc
         pBo8wWcAjsSl5mBDIw+UDq9MsmWtskNnbRd3557feG5wu3lpRhlKhF57sTgRO01Ob35O
         XtSAk1TYANe1QR+IhFRQA/BKAcL0nlsURUxyAJ0SrcT5b2mFQOBBXWqIkBKHrBy0CsYU
         2ktg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qY4bu8r6;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d43 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cjRiLrEb1wyHS0sPLWPKolaQk984mHbI4ogOT+uL2wc=;
        b=rAnxfF+OGGhmNKRXR9yjzhleJjJWtEctldMNN4Ebx5HRqyWC+lHH4z87HcsvMMLBJb
         J6sCHONLDoIMEhGCu01qWikLbYc1R7UF5V1Cu8udKHVhSibgQznCgKuQpBjaFdzEYMZI
         edXzie1otlxWVubXVbjbyUCD5fprFItPdmMjLOpPwt+xk5pW3XjOPuPzV4MGCS8wGKO+
         Oue2rE4171cUx2jGl+oUAZ2W5Zab8m35bLJqXTaBod9Bh7zCYtFArnB4N037t1qbeitc
         qezvH9lowALMZ5Xfig6kNYseUQhqWcsqqx6Uc5MYmaG+i5yZF0w3HOrvmnUitAhN2P2Y
         g9QQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cjRiLrEb1wyHS0sPLWPKolaQk984mHbI4ogOT+uL2wc=;
        b=dLXYG90onfZONLDPytLY1r1N37iBtbjomc1wr4reVzrZ1Usx5hnX09SQYZ4bVZPRPN
         mRmTHlH1WEwsrP575PDJbG2gpMx4J/nI++H/ixbxjDI02tk1yLCnEmysCIE74PLOdy4G
         +8kbQ1liE/60M5CBWJMZay0qJZkRo88i+ffcIhdpVN6f0lXOqz0S9FMVCZyRC3wyezWO
         OcGwUY3Upf+fBk0dzJRZzDuhzGv2Tu6hDcyhIKmrwYl46MDsNpf/wwCZ2NlXILvW3khz
         GKhhhnhBEUDTZSJbYV+X0XM+cPVX4GJ9iAYeCcO9FGKA8pvuTYqIMQdvv/Pw5v0Yho+4
         DixQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cjRiLrEb1wyHS0sPLWPKolaQk984mHbI4ogOT+uL2wc=;
        b=hYbFWn8jbJ7KKsFEMTxLdwC2K/ka24evELrqfaWcMUV7Ye1gGiWH4JLcoNOEXdJpnV
         7EhWK6FqWXIZ0Qea3bhj3cHN/KHYJVNQVP5aTQoJxzL1peibWJupS8eMaCk0EZsWZSxb
         uzO6YOErapxegzjI9JrbCgXd68xWMMuMBunyqGVUKSrbbF+aeAAS8cpVizchJhct1ox5
         nU5lThuSk2iodkDR5NA5AN8z+Fnfn7v7Q8GkWwq5J9qH1hqjceelKBQXHcyOifoZaO4V
         2WXTfgZM8cgS7xF5DCnLINELSFBWN9hfL9v8vEV++orkhEidXQZT8g++FIQlrBq3t1aN
         2VNA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530xT2W/KpREHJ6mwMp7REPbrgbSd2obo0nSziElmbcQr02AC+et
	+XmFY1dH2vBiya96Lw4B0p0=
X-Google-Smtp-Source: ABdhPJyTkn6h+31+a8+I31EcuE3Wo97qa9UO/3E3KH1XtyJnh9iknbjDX0pRKdrM/CeLAkM/3ulrog==
X-Received: by 2002:a67:2d4f:: with SMTP id t76mr1288959vst.105.1594732864390;
        Tue, 14 Jul 2020 06:21:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:b6cf:: with SMTP id g198ls990213vkf.5.gmail; Tue, 14 Jul
 2020 06:21:04 -0700 (PDT)
X-Received: by 2002:a05:6122:12a8:: with SMTP id j8mr3609333vkp.43.1594732863901;
        Tue, 14 Jul 2020 06:21:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594732863; cv=none;
        d=google.com; s=arc-20160816;
        b=rHJhc/fT3vBiN4VD4s08T2V7jfQCUEBJIQxywGIzVGN4CeaTftaMdkEPNfVdUJwSH3
         3DV4irraaWAdLx6ShIlmm4oaElqVRBJ1VmXMGeMHYlv0Q6CF3POmpligrxbmZtzyjIdB
         Wrqd1n2KmRxnctSH0h6dXO0yd922vj3KRKLFCpEww3dvGi+b7Rr7HIS5IGpGw+JtaY5M
         8/k+Fu0Ahp6KGx/akaQG+Ks0hecQK301ZQNIH0+I5Db7+o8wsm6LoToocYLA2O8H0oN+
         8iLmvMOHaGKbkDa88mfJN5saKvlZvVzzYWz6mMavPo7axWsLqqyhN5lvoqmr6R4HvoLZ
         xR5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=evTAq7vK64skij5nEYgAz9CLfOVNiIQ0Z8I1v6O64RA=;
        b=n8f9Ars1usAiQczKctTlSC2FrOMixzIxGDYMq0BJ0DM7XRexa+XZOhS94HAsmFsZOj
         fCA22iKZ0ntW4goU/nTbWN6iPPF2pbp42iOpjS0FwizlHR/S0WXg3XT4uNyRmd0ccwJ4
         WvTe+0WBAdR9NGyPPwpOQf7YCjhfpi1kjO+R9ShsZIFH1CQZ/94ps6QhvVJxgRr+snaj
         Ix/n6xy2aoOsLkpbuX18NY4K7Oxu+WsKvAsXia0RAL56TMc89HYQ07c3agY1yw/IAJNz
         obJte3d5+u0lnlPLYhJZxMUi9QRZLuhPdOflcadE1vk6fzS0yZrse9tVcDPCukYaGorK
         T3jA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qY4bu8r6;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d43 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd43.google.com (mail-io1-xd43.google.com. [2607:f8b0:4864:20::d43])
        by gmr-mx.google.com with ESMTPS id k10si145715vkr.1.2020.07.14.06.21.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Jul 2020 06:21:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d43 as permitted sender) client-ip=2607:f8b0:4864:20::d43;
Received: by mail-io1-xd43.google.com with SMTP id i4so17178873iov.11
        for <clang-built-linux@googlegroups.com>; Tue, 14 Jul 2020 06:21:03 -0700 (PDT)
X-Received: by 2002:a05:6602:1616:: with SMTP id x22mr5090731iow.70.1594732863100;
 Tue, 14 Jul 2020 06:21:03 -0700 (PDT)
MIME-Version: 1.0
References: <20200629140928.858507-1-nivedita@alum.mit.edu> <20200629140928.858507-6-nivedita@alum.mit.edu>
In-Reply-To: <20200629140928.858507-6-nivedita@alum.mit.edu>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Tue, 14 Jul 2020 15:20:51 +0200
Message-ID: <CA+icZUWOkZOx+OcEP0bW1u6yjCHsci1CpzNYpDOOHS4bwPz7Fw@mail.gmail.com>
Subject: Re: [PATCH v3 5/7] x86/boot: Remove run-time relocations from
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
 header.i=@gmail.com header.s=20161025 header.b=qY4bu8r6;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d43
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

On Mon, Jun 29, 2020 at 4:09 PM Arvind Sankar <nivedita@alum.mit.edu> wrote:
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
> Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
> Reviewed-by: Ard Biesheuvel <ardb@kernel.org>
> Reviewed-by: Fangrui Song <maskray@google.com>

Just a small nit:
You use "runtime" in another patch's patch subject-line, here "run-time"?

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUWOkZOx%2BOcEP0bW1u6yjCHsci1CpzNYpDOOHS4bwPz7Fw%40mail.gmail.com.
