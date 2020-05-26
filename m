Return-Path: <clang-built-linux+bncBD63HSEZTUIBBOPGWL3AKGQEVSXAKTY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb40.google.com (mail-yb1-xb40.google.com [IPv6:2607:f8b0:4864:20::b40])
	by mail.lfdr.de (Postfix) with ESMTPS id 22B561E1B06
	for <lists+clang-built-linux@lfdr.de>; Tue, 26 May 2020 08:12:10 +0200 (CEST)
Received: by mail-yb1-xb40.google.com with SMTP id v1sf19386753ybo.23
        for <lists+clang-built-linux@lfdr.de>; Mon, 25 May 2020 23:12:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590473529; cv=pass;
        d=google.com; s=arc-20160816;
        b=1KAkro8GvtcXD6RylSe+gWbRtzDll7eXWM9tOdb2Taew88iL/qtZdDFmc6dWnYwFwk
         J2oummriOf0sm0VwceeDy22SzPflHYI/dxEBk4B2z5rIU2KvaIOr3bXWPH5HEUHVLExE
         Y/P/ftTY2efNgVo274pTJgs5S9GaSEmv/Ses6EyGbAOCoKO3hjKsM/ougtIhoIbc4MBo
         OBoAPYb+qHXX1IvDt7GlenO2OBR4lMyYE6/oIUxMyOzomQadAbqTKZ36j+7CaLGgLF0B
         UUrEzosOhgfBiLAQw2DJ8mUEtnQ1npHWM+MKH8FORsEgjmt4fsRVzVhpIkdVe7qEu8ZO
         Gb9A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=wjQBrCBOHS7ArZtKrEAoGZ0FRX/Oyjh6szzryki30Vo=;
        b=wS5ynHuqpnUQfLjBpzxB4VlutWfymEqxEoXm48C7VeXspyU/5UJ45o69727QXMkXhE
         rXFqjz5nHx3fUxJngCZ87aOLEkvrxtqEAqskkG+Al/osQY+rXLg9O1aFV3E/S2aVFKjh
         xeitWilsbDUa1/pR8qmrLToA5mKoh9JDgn4nLtQnvRioD5u8dU9f2mMgpno17aM8e8X9
         kteo50PXieiKaWvKGleR26WEGxAPqbdWG22BUKe2X/ylphm+2MFJsswje+3268sYx7+0
         LS4S5rYZThEGbvcne/SNBOEcgP+uyU7clNVcEueFBRX+C2V18mfU5KkEdl3pbBGwJR8W
         gwwA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=wYzi42jJ;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wjQBrCBOHS7ArZtKrEAoGZ0FRX/Oyjh6szzryki30Vo=;
        b=phAJpeIIsE77+eoGbFZS4pY2O+04yeo5mCzVPqXIFGGL7mrlxT6Y0RoqpJqyDvT0fO
         0pkTR1hlKKvp9A21C1N4ZF7+UujW6g4MeUJSZBBRx14KltTu0QVt/wUu4PbnD6gpp4A/
         FDv5qGPtoiufVOkaL/BLlGgEEXiOlmQWfCQ0UImEnwBHHsYUHGuwfK0B9WfZJxf/nYwZ
         rlHtNpXcHE8f4UAZMEzWQo+2VNMwHoqPf16ojdfloG/TLuyEt7HJ0GJWmPy1SDJzETfR
         ZVGfzDiatwW72po1iKbJQKXeFPgEMjsWwzf3btn1NSczFS9IZpydxn+EznPlKxdf6GrV
         M0iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wjQBrCBOHS7ArZtKrEAoGZ0FRX/Oyjh6szzryki30Vo=;
        b=Kabxo63GVWkaHwN+F22d66iQfHTSyHz+dxZpgoj9uQGgAS5k580BHeDuxW3+8jn4Nx
         n/t4X64XQdJnTyw79twd0hcUDaVNs/OgX513I5W+WYWXLh3R0+ALbLXK+EFGwrdrUwHj
         eA8B4ddqP5wjGljD/fn0hhBp5BMCqNLsXrGzjCcAaWEW+1pJ7Ncqmh/rD8UCkN0X2rEZ
         sLCZKDgk+BBYhGg1kdmDxS1QT8cY11ctKRw3yNEbpR1FJjNzF12tg+kN4JPmuHdBL0cV
         W9AoKW7Q91fWeU5YRK+ihUXgMYCCUFrn2TCfIlGnicywgike5oC/AbfDUDm7VTlbq4OD
         Fzjw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532A5iloHF8GNPM261Fz6r+yW7WFgDh0GwPB6etFWr1XeH8puKNV
	qXh8UYNfMKwQrL+rI4FVMTY=
X-Google-Smtp-Source: ABdhPJx2lh3Z0ukfN90I/P5iachZ6tJ6Eyqzd7XR7GCsdUIsykIQvyn7jjGXhp7i2MUfO1tLRdemyg==
X-Received: by 2002:a25:3f41:: with SMTP id m62mr45165074yba.455.1590473529159;
        Mon, 25 May 2020 23:12:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:678b:: with SMTP id b133ls3757401ybc.5.gmail; Mon, 25
 May 2020 23:12:08 -0700 (PDT)
X-Received: by 2002:a25:bb0d:: with SMTP id z13mr11622756ybg.417.1590473528754;
        Mon, 25 May 2020 23:12:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590473528; cv=none;
        d=google.com; s=arc-20160816;
        b=cqw5IRDoQaxGJTmWajyESM1HCu3w7cmsrIJHYQ0Y1DjHVjf7Od2C3XNAn2P9anpD1L
         c0+un6HagygvETAr5UCV/2Ghmci7GA1BV79FatD8e2QKxNupMhvgtpnWCDcKE6PZlitb
         mFoPrMBBLQvNBJAJMv/RiK2575O6S7i0whe8szWJ7PVP7BlEmNgWmi/vqIIdKug/4jOS
         nY/OQyWD8igvuxoppq8bt5UgQp26hYArDPNmI7FYOFjNzKUPI6wsFy0yJ8BWvYo6TueS
         lU9dyEAaowb/aAMHAW1z1NgWexX9zIArh4AQFtnV9P/D/7ZFpm2az3ixc486KCqu06yN
         fMdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=CZ2KB/JqLrzZBTXstYQj3yTIz/g3Hw4MphdnkKhXlHQ=;
        b=WEUUKQ78QyrziqlQujntjBxfBjsWTgQvL5p7lGJrPhYUnJ5pSOwsF0nQRcnZ5K2waj
         seAEkrx82FGxh7+lDAgmee0TqiT2kOR7ayFMyNLRjuuRP3fgLsOQeg76u3BPmMRqJYPo
         4nV/ws/Q42M1X+unnI0im2NmzRo9sWVb0bB7C93ud0Dd7sfaMuD3qkaw+jh76/eXhfB7
         nPBCaDROQDhGIxjhqS/pSxhZp9UAHE/Szs7N+TR5EhjgMWwEJyOmNqdS+Gc0nynvN30u
         rUTDfIe3aOGfTBz27vB7lJyMQoZMDdV0feJnk8I62J6h38yVAOKbl6/M5gCR7QTRlQnH
         3W6A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=wYzi42jJ;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id w190si1115223ybe.2.2020.05.25.23.12.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 May 2020 23:12:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-io1-f54.google.com (mail-io1-f54.google.com [209.85.166.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 93D8B208C3
	for <clang-built-linux@googlegroups.com>; Tue, 26 May 2020 06:12:07 +0000 (UTC)
Received: by mail-io1-f54.google.com with SMTP id s18so6796561ioe.2
        for <clang-built-linux@googlegroups.com>; Mon, 25 May 2020 23:12:07 -0700 (PDT)
X-Received: by 2002:a02:956f:: with SMTP id y102mr9289995jah.68.1590473526930;
 Mon, 25 May 2020 23:12:06 -0700 (PDT)
MIME-Version: 1.0
References: <20200524212816.243139-1-nivedita@alum.mit.edu> <20200525225918.1624470-5-nivedita@alum.mit.edu>
In-Reply-To: <20200525225918.1624470-5-nivedita@alum.mit.edu>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Tue, 26 May 2020 08:11:56 +0200
X-Gmail-Original-Message-ID: <CAMj1kXHc4o91VkaChoyVzr4w-HOaashMPtkCKLaszMGCxhR_2A@mail.gmail.com>
Message-ID: <CAMj1kXHc4o91VkaChoyVzr4w-HOaashMPtkCKLaszMGCxhR_2A@mail.gmail.com>
Subject: Re: [PATCH v2 4/4] x86/boot: Check that there are no runtime relocations
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	"H. Peter Anvin" <hpa@zytor.com>, X86 ML <x86@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Fangrui Song <maskray@google.com>, 
	Dmitry Golovin <dima@golovin.in>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Daniel Kiper <daniel.kiper@oracle.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=wYzi42jJ;       spf=pass
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

On Tue, 26 May 2020 at 00:59, Arvind Sankar <nivedita@alum.mit.edu> wrote:
>
> Add a linker script check that there are no runtime relocations, and
> remove the old one that tries to check via looking for specially-named
> sections in the object files.
>
> Drop the tests for -fPIE compiler option and -pie linker option, as they
> are available in all supported gcc and binutils versions (as well as
> clang and lld).
>
> Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
> ---
>  arch/x86/boot/compressed/Makefile      | 28 +++-----------------------
>  arch/x86/boot/compressed/vmlinux.lds.S |  8 ++++++++
>  2 files changed, 11 insertions(+), 25 deletions(-)
>
> diff --git a/arch/x86/boot/compressed/Makefile b/arch/x86/boot/compressed/Makefile
> index d3e882e855ee..679a2b383bfe 100644
> --- a/arch/x86/boot/compressed/Makefile
> +++ b/arch/x86/boot/compressed/Makefile
> @@ -27,7 +27,7 @@ targets := vmlinux vmlinux.bin vmlinux.bin.gz vmlinux.bin.bz2 vmlinux.bin.lzma \
>         vmlinux.bin.xz vmlinux.bin.lzo vmlinux.bin.lz4
>
>  KBUILD_CFLAGS := -m$(BITS) -O2
> -KBUILD_CFLAGS += -fno-strict-aliasing $(call cc-option, -fPIE, -fPIC)
> +KBUILD_CFLAGS += -fno-strict-aliasing -fPIE
>  KBUILD_CFLAGS += -DDISABLE_BRANCH_PROFILING
>  cflags-$(CONFIG_X86_32) := -march=i386
>  cflags-$(CONFIG_X86_64) := -mcmodel=small
> @@ -49,7 +49,7 @@ UBSAN_SANITIZE :=n
>  KBUILD_LDFLAGS := -m elf_$(UTS_MACHINE)
>  # Compressed kernel should be built as PIE since it may be loaded at any
>  # address by the bootloader.
> -KBUILD_LDFLAGS += $(call ld-option, -pie) $(call ld-option, --no-dynamic-linker)
> +KBUILD_LDFLAGS += -pie $(call ld-option, --no-dynamic-linker)

Do we still need -pie linking with these changes applied?

>  LDFLAGS_vmlinux := -T
>
>  hostprogs      := mkpiggy
> @@ -84,30 +84,8 @@ vmlinux-objs-$(CONFIG_ACPI) += $(obj)/acpi.o
>  vmlinux-objs-$(CONFIG_EFI_STUB) += $(objtree)/drivers/firmware/efi/libstub/lib.a
>  vmlinux-objs-$(CONFIG_EFI_MIXED) += $(obj)/efi_thunk_$(BITS).o
>
> -# The compressed kernel is built with -fPIC/-fPIE so that a boot loader
> -# can place it anywhere in memory and it will still run. However, since
> -# it is executed as-is without any ELF relocation processing performed
> -# (and has already had all relocation sections stripped from the binary),
> -# none of the code can use data relocations (e.g. static assignments of
> -# pointer values), since they will be meaningless at runtime. This check
> -# will refuse to link the vmlinux if any of these relocations are found.
> -quiet_cmd_check_data_rel = DATAREL $@
> -define cmd_check_data_rel
> -       for obj in $(filter %.o,$^); do \
> -               $(READELF) -S $$obj | grep -qF .rel.local && { \
> -                       echo "error: $$obj has data relocations!" >&2; \
> -                       exit 1; \
> -               } || true; \
> -       done
> -endef
> -
> -# We need to run two commands under "if_changed", so merge them into a
> -# single invocation.
> -quiet_cmd_check-and-link-vmlinux = LD      $@
> -      cmd_check-and-link-vmlinux = $(cmd_check_data_rel); $(cmd_ld)
> -
>  $(obj)/vmlinux: $(vmlinux-objs-y) FORCE
> -       $(call if_changed,check-and-link-vmlinux)
> +       $(call if_changed,ld)
>
>  OBJCOPYFLAGS_vmlinux.bin :=  -R .comment -S
>  $(obj)/vmlinux.bin: vmlinux FORCE
> diff --git a/arch/x86/boot/compressed/vmlinux.lds.S b/arch/x86/boot/compressed/vmlinux.lds.S
> index d826ab38a8f9..f9902c6ffe29 100644
> --- a/arch/x86/boot/compressed/vmlinux.lds.S
> +++ b/arch/x86/boot/compressed/vmlinux.lds.S
> @@ -42,6 +42,12 @@ SECTIONS
>                 *(.rodata.*)
>                 _erodata = . ;
>         }
> +       .rel.dyn : {
> +               *(.rel.*)
> +       }
> +       .rela.dyn : {
> +               *(.rela.*)
> +       }
>         .got : {
>                 *(.got)
>         }
> @@ -83,3 +89,5 @@ ASSERT(SIZEOF(.got.plt) == 0 || SIZEOF(.got.plt) == 0x18, "Unexpected GOT/PLT en
>  #else
>  ASSERT(SIZEOF(.got.plt) == 0 || SIZEOF(.got.plt) == 0xc, "Unexpected GOT/PLT entries detected!")
>  #endif
> +
> +ASSERT(SIZEOF(.rel.dyn) == 0 && SIZEOF(.rela.dyn) == 0, "Unexpected runtime relocations detected!")
> --
> 2.26.2
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMj1kXHc4o91VkaChoyVzr4w-HOaashMPtkCKLaszMGCxhR_2A%40mail.gmail.com.
