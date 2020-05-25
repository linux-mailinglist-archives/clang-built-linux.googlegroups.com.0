Return-Path: <clang-built-linux+bncBD63HSEZTUIBBWGCVX3AKGQEAKB336A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id EACD81E06A9
	for <lists+clang-built-linux@lfdr.de>; Mon, 25 May 2020 08:10:33 +0200 (CEST)
Received: by mail-yb1-xb3a.google.com with SMTP id e14sf16497794ybh.16
        for <lists+clang-built-linux@lfdr.de>; Sun, 24 May 2020 23:10:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590387033; cv=pass;
        d=google.com; s=arc-20160816;
        b=xS8wDDlyOa5xRtsff1FywC6Qyjs+q0fHFt0KXCyvEfiefJtD3PdcYY7rCmH7JEpdb2
         8I0Csl9Ivc3jf/z0OTnyTrEoScJDdCTIcdoo47FwDTPHybmm75Z19SmBlBfzi5gO2Iyw
         UMEX4NZcc+aB90Ki9NgcCreeqHtQm759piqte94Nw1Q1uUU8ujCxZTVxi5BK3blvOybZ
         j6U2kH027x3o8VTGgjvABMVbzbC2SVVfd9cEzMXxW6NAIr5qzhPraCJLwgtwjzgtC9rx
         lSgfkj2QJNxSY1fBxLAx0kTn6/fjEU+Z6jwgIZCoZsCZGM6I6/SJSU6RaX2biuozwENB
         UUwA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=Imc9PfDvNxDlZeNXfvovq26ho6jLZ+SZRrLihot/Xm0=;
        b=S10DKlDnKSHyoaLR2vTUQc53sUYwV5Emy2BbuvV51Cu9X293OJrx3exwA4CD5gLfId
         4y08ybm3KLaTOEq7G1gdFf+74lj/78bkg+me5GGhsuT5Fwhdc6F9FUDzohLuJa5LtW4J
         mAr2vQVVSHH+SiE5v7DYcj7SKwqXuP3l7k2cvU6E9QtMwDQkLbQOymNN2UH9YjuHqsRd
         Os3V+UCVZZWBar3WLbxEHfCavRzBGrmtgSakW2sR24Ogab+nVX7hp/zevA+NCBLb1ge7
         dTuhx2Y012bAlB1DlamOzeegd+PMTKMGqtritMTEjrUqMVl7zxUv+eoAGgAOIu5nf4Xb
         nvmA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=KEedDt7h;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Imc9PfDvNxDlZeNXfvovq26ho6jLZ+SZRrLihot/Xm0=;
        b=Uj/dN7UHct6RfRCaljN8tVB+LCqSUc5AIogZQ9iT2mJz6FntJRTP9PqsHHTNrivU+l
         bFfEVYIDw2Dam7Kcn9/p2axHGyxcRri+sjaFoHd6qBP4/En0gVrClccStiKnOUvq4gLl
         M/ifouHdakbuV2h4F7kOfpTXkt7IxBVHZa7uYw4DxPq1OxrrYZe6622gZ6Tj/ssDPsJ7
         5MdrYTaQ0tbOKC0Q92I0jyMPDd+3U9jKof7DCug3s//7ToUYISuJ1l2nIKpB8cSUKFYQ
         crXqPQMZwv0f8G6YCpY3BRSXCDMNDWPICesgnSYbBIBZGlW37bh/ueBymc1MrUxuOHMW
         ugtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Imc9PfDvNxDlZeNXfvovq26ho6jLZ+SZRrLihot/Xm0=;
        b=FLsM4JUxQb1qHiXCOzAKdT03Y0bxFRsB36JuqQ/U8M1jG9WLm6/T8X0ohWPNEFZDrn
         lWcZMK58a8RHf4PoSzc1MQxSSwemYw5dIyYs+93C9PleYr6OVCbJOl2H0CUvmnAiNNy/
         ftTDcrZa93s043JB2Lhly4kt6yK0Nxxmx9eqPM4JFCzgVZTwtrzCVmLebZzUPyb9Gc7g
         dUGLLaY50fyboyMQxUWR96B/M3BfyNmtmoGEbi7ew5lj0wyaa7Q7ppfo4io861ZMruJi
         N/9ZZSUxTq51FLBr7y01Sj1eK8vVW5YOwGwEZASgRd4Z2uLS8/b0OaQEthQ7mR70TJhj
         nz4Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531bjnAGr99PEX3vrMJOkxwcu08DGjDTOkCik75g9KqPga3tSZb8
	+HRpojPwGMwDf3cexSHgNFw=
X-Google-Smtp-Source: ABdhPJxzbXmtnyUQyS7NeE7lctnejT5jcjKhvNTnGoovevmzlwH4iGMi8vGyK6Pfgbfzeeiak44s4A==
X-Received: by 2002:a25:ccd4:: with SMTP id l203mr34381371ybf.108.1590387032815;
        Sun, 24 May 2020 23:10:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:cd43:: with SMTP id d64ls2769958ybf.6.gmail; Sun, 24 May
 2020 23:10:32 -0700 (PDT)
X-Received: by 2002:a25:4ac9:: with SMTP id x192mr4340199yba.172.1590387032484;
        Sun, 24 May 2020 23:10:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590387032; cv=none;
        d=google.com; s=arc-20160816;
        b=w+F2pK/9PXhN2RUzHvTDwKF2/3fQscviMyJ3RN5dRTIByKXUJD2PH6pbd7MLyONbrM
         xpayrq1y7kFO4KheHUfHC0dHJtNtgXDn8/NlF2Oyk7NoFwxU1NYIbu5cRdyfq268BFeo
         mc6LGHezYchWkeKljuLCAyvJeUjTSVVhHUlCIXszhZmAwSFKrR/63w6+Uzaz1rbs5+bn
         fYM1XslJQQU8qAWNP50Dtnj9Czm4SWxYBX9PbAaSlTbFepkWm8ecozXfbsF3lm9Jzp8J
         bcdOS0pxn/y7xvD51OpmdfQRQV9SI4gfmWpslqGdRcZOdM3lVKfJROFdtheNF8zOW2zO
         dr2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=/Z6uVSJY0F3/oxUe2ctHRxGQinOz286C1drb53Xlifc=;
        b=ucMgZxi79JgR8C6RXx4+62gEesDNJ75yOgIg8GEeGfnyffcUAQnaduyB7qWdsQy3fa
         4m/UAsx1zFbILQCuYSc+DAavKn+ydkr/j/CwOwIzAFy2Ou0NoTKkgKvVMEt0jyScJ+0P
         CjZO/CBkaTEhKJfVLsOnnhXZzRzl0fkszlNRTfXP9qyauJea/ri5F79S87noXoYTJVVl
         essQa7qEmkh1/EE4u2jQRmU0t4rwCmxYk+PNDeIY4h642Vu2Ylqu7iSBuBzFfPGIflax
         KA9Gy8kPbFRH+c/WKzdooDCMKkL0Dan4M4Ls4AVHIZ89emDpDL0Sn94RLkHrvohgjOLr
         fFow==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=KEedDt7h;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id u126si875310ybg.0.2020.05.24.23.10.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 24 May 2020 23:10:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-io1-f49.google.com (mail-io1-f49.google.com [209.85.166.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 8140420812
	for <clang-built-linux@googlegroups.com>; Mon, 25 May 2020 06:10:31 +0000 (UTC)
Received: by mail-io1-f49.google.com with SMTP id q129so8462258iod.6
        for <clang-built-linux@googlegroups.com>; Sun, 24 May 2020 23:10:31 -0700 (PDT)
X-Received: by 2002:a05:6602:2dcd:: with SMTP id l13mr12238753iow.203.1590387030826;
 Sun, 24 May 2020 23:10:30 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOd=qB+EoJwfAYUA9Hg7f9op4Q4W+TDnht8pLRG5bPX=29Q@mail.gmail.com>
 <20200524212816.243139-5-nivedita@alum.mit.edu>
In-Reply-To: <20200524212816.243139-5-nivedita@alum.mit.edu>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Mon, 25 May 2020 08:10:20 +0200
X-Gmail-Original-Message-ID: <CAMj1kXFjDMuLekYKiPoKDqJhfkY8UViApdMd3JaPmGbnKLO+NA@mail.gmail.com>
Message-ID: <CAMj1kXFjDMuLekYKiPoKDqJhfkY8UViApdMd3JaPmGbnKLO+NA@mail.gmail.com>
Subject: Re: [PATCH 4/4] x86/boot: Check that there are no runtime relocations
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
 header.i=@kernel.org header.s=default header.b=KEedDt7h;       spf=pass
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

On Sun, 24 May 2020 at 23:28, Arvind Sankar <nivedita@alum.mit.edu> wrote:
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
>  arch/x86/boot/compressed/vmlinux.lds.S | 11 ++++++++++
>  2 files changed, 14 insertions(+), 25 deletions(-)
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
> index d826ab38a8f9..0ac14feacb24 100644
> --- a/arch/x86/boot/compressed/vmlinux.lds.S
> +++ b/arch/x86/boot/compressed/vmlinux.lds.S
> @@ -11,9 +11,15 @@ OUTPUT_FORMAT(CONFIG_OUTPUT_FORMAT)
>  #ifdef CONFIG_X86_64
>  OUTPUT_ARCH(i386:x86-64)
>  ENTRY(startup_64)
> +
> +#define REL .rela
> +
>  #else
>  OUTPUT_ARCH(i386)
>  ENTRY(startup_32)
> +
> +#define REL .rel
> +
>  #endif
>
>  SECTIONS
> @@ -42,6 +48,9 @@ SECTIONS
>                 *(.rodata.*)
>                 _erodata = . ;
>         }
> +       REL.dyn : {
> +               *(REL.*)
> +       }

Do we really need the macro here? Could we just do

.rel.dyn : { *(.rel.* .rela.*) }

(or even

.rel.dyn  : { *(.rel.* }
.rela.dyn : { *(.rela.*) }

if the output section name matters, and always assert that both are empty)?

>         .got : {
>                 *(.got)
>         }
> @@ -83,3 +92,5 @@ ASSERT(SIZEOF(.got.plt) == 0 || SIZEOF(.got.plt) == 0x18, "Unexpected GOT/PLT en
>  #else
>  ASSERT(SIZEOF(.got.plt) == 0 || SIZEOF(.got.plt) == 0xc, "Unexpected GOT/PLT entries detected!")
>  #endif
> +
> +ASSERT(SIZEOF(REL.dyn) == 0, "Unexpected runtime relocations detected!")
> --
> 2.26.2
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMj1kXFjDMuLekYKiPoKDqJhfkY8UViApdMd3JaPmGbnKLO%2BNA%40mail.gmail.com.
