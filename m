Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBH6AXH4AKGQELJQ56KY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23b.google.com (mail-oi1-x23b.google.com [IPv6:2607:f8b0:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DB2C2201F4
	for <lists+clang-built-linux@lfdr.de>; Wed, 15 Jul 2020 03:47:12 +0200 (CEST)
Received: by mail-oi1-x23b.google.com with SMTP id y124sf392461oig.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 18:47:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594777631; cv=pass;
        d=google.com; s=arc-20160816;
        b=I4rLYJshq20Keflt2aTTsl3B/Hrcf1g2w3hqYMzWUD1TNPeBc+fYVGLOB521bKCYVi
         LlPD/NYIDnv7V1quDLEgjV3zfmJcrQaKNKEzpmF9Vjqoj1seTCTgcLDZHokd/I7WWjX7
         3uL8KfEAVfEoWRyMTW8jr0yLwZB3NmBCMti7Tb7d+IMJfP5GJ9pbpM1Ev3nIXCKR2358
         3rmgobUWUbunEetQFnbylu+ienFuVT3rszumL92DEk4Ae861HPejzbGo4ioBExbWFWWX
         ZkoJjpTcTNsGz8g2v9wpvFLSiXn+Bs4xSttONSws/J9qmt6YPuvr+qrZQGFB/1PY2IjX
         RA7g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=YAj63EAdcrBQZO4MgCCmkGiYjNFtCOtkMP2jyGHZWCA=;
        b=xv4rQ0xFfQoYNmTJqQj1jARyzhtBCsgcFm+N2UbjbnIjT+VhKn+btSj7Nilxw9J2SJ
         jiNgiPO3dbdKTRVwR9qxjoU1KfmmRzToI74yarqfwPKbzIqpH0zI4WC9BZdf0SIaHYL2
         D3uI8856JM0BupMXzEeW+mQ//Q+IrPl0tKQxCTNVItNDZSuvGN8aLG8S6wKZwvDV0MZo
         tR4nDq4hkfGn1BrVLH/62W/8pr/E95gVAbPheDuT+VUBaHBBioqBB+6Ie5Mf1XSyLHXk
         NP0TV9b/hLoouwkEFfDwhZQZUXMz4hN3MDpgTdag6VA5/a/5JxcqLtyyYBJU/265AcTa
         waJw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NvWVUzBk;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d41 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=YAj63EAdcrBQZO4MgCCmkGiYjNFtCOtkMP2jyGHZWCA=;
        b=AEsWWRHryTKmTCbArVA/Xl0a6aemAd8qoB6945iFJOn/he+xPc2mhAgqUcHVcaNWmY
         YU6yajMx/Zp7/vqTH1qmoBpwqldWPu6QO2AozV/1lm04OhN5iXG8yB6a3NK1RWgwyoyK
         mZx7GuJKhNYyCYF+sE3v2gpAw5NZiNHUalWlEbEEjU9Zh+A4UXuki4z3WWUgJs/nihgp
         qe3krFUrntHe0EKWOe00wsT50xj8yoxz6cBWFeHXbSgRIXuXGr/hs1XeLSBq243Ro+22
         huagiiabZQk/4IRBCAfeQ7irgbTmuYPJyAtBljEAdKAnElaN6+RXTcmCzJc+L7t7vQeg
         fYTQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YAj63EAdcrBQZO4MgCCmkGiYjNFtCOtkMP2jyGHZWCA=;
        b=aNlYd/+y+Mb4nyxkarnUR19c1m0B7QAExaLedyI1SetXVlvtFGn2NXptJ9/sQdse3N
         doPTrr0pi7csL0EOkilVMPipGSA4Oujq8W4mvg7D1e+4mLeV2jpLUhC7N9LsLg+nWW32
         st7Hn76Rovv6wkGNCeFiOLa/GZ2llXo43NyDvirLCnE0TQ10xROC9rrgcrgM092KdYAq
         BDQhS0EUh8won39REDoVrpiPqTPWb3AgeGM34oteuX+i54y3sbO48QX+WWj26oehhC5t
         bSPYTbrWlhrcjYFHho4INxM7LrT6ZyQ8ETdgkQ4FITqA4ZuzeZZthHgjcEwb2OFTZO/k
         5chQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YAj63EAdcrBQZO4MgCCmkGiYjNFtCOtkMP2jyGHZWCA=;
        b=QbXreUmPQRISgZvRBW2DQiGHSzxT5YDam0Ox/JYal/JuM2Fmc7wh6KvG5/iWSPdJxz
         xlM0Don83PxX0Js3IlP+KbnvFjAcS0zfNZ4qhDOrSPgdijiCMur5JIEIuOCs2D8HH53r
         1VrZvRn2UzBaLu4gFiGVRGZmjQDoYWjmVkfMZ6RBSyOZYnkL9xtaJykouYjI+Lsjc6C3
         cAjK/ynco0zIpGlVN0VcxFGw4rI7vj4QnE0BEBVOJelpN3nxt8mmKfRye2HxKDybjkgH
         1+zUowphNbpp7i8qOHr7xX6VqCa4oTQ5e5DMUj4m7DMSMc0n0vAof0oxAuVpKpLqYhZL
         QkOg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532LKt61ozZCF4l/r3m78dufxEYAITPwS0Ub7oYSktqKFW5rmqY/
	up+bAwjSZQmC90k9QqJRVcU=
X-Google-Smtp-Source: ABdhPJzqYBH0n9H4riaNwRs3g0k5+ZurruNUwCBt4P7aSNjIsZeByCGTMpSl7cLSYlP46KGGdBWkNA==
X-Received: by 2002:aca:3ac3:: with SMTP id h186mr6079542oia.145.1594777631180;
        Tue, 14 Jul 2020 18:47:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1e4d:: with SMTP id e13ls123551otj.5.gmail; Tue, 14
 Jul 2020 18:47:10 -0700 (PDT)
X-Received: by 2002:a9d:480d:: with SMTP id c13mr7260427otf.4.1594777630761;
        Tue, 14 Jul 2020 18:47:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594777630; cv=none;
        d=google.com; s=arc-20160816;
        b=ba45NQO6XFLFdkAwbE1EyQcLOBdKoblRJ6ImZUNR0uYD9Pp5JLOO2GP4PDO3xIMjdE
         g33towISP2cGdC4sVPortaorO5NDB3JX9uacenZAyXVZKfV1fFVjRkUl78pdDZ1IK6xI
         1Go0kpRCh+U5zlV4vBhymRK9yI6KxzuEzHzEwaSj75f84ZasaHcS6O5DAjlUPvTNJ8n5
         a/PJQW0e/rrc4SXalU2zdXLa/kfX5uGVSODIII41e7VNT2Nsqf8qYyovhR/atMwLIZDy
         BEIHdNtWz7t7AkIjH5PXpjW3XoRJsGtqK9dmuSDa5ggTy9D0W7b3xW20gCSHgLaPDMMk
         A1Qw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Zp7+jVCuD5gVLLy8V7whgbSKWVLGF7ae9FJiNKpjaE8=;
        b=fEPlzs6kiS/2AgGKa1/6j16Qw6iOgxnH5Fx368RXRdjxSCQmARMelYFcY4wgGKBcPr
         W2Yb9msfnaU1MBhMxdX8gOEFqqPsmKWSK9g52Dm79E3DOSk7VvAPIgrcjbU0hvdQwO3D
         eXFmLE1Xtoy5wrPwHwOVgmdBlb1bj60ep7+cTfAXXqO02bMunlUKlHX29FYiDdDbRc8d
         ItavqM516duVAG/BVpErMds80rZTIpIkLBlgFkxZfWxtBRABbrB8qeiLzzzIyPXzgXDW
         3WqXG9LuUTPLL9q/PzkNSWG4A89qXtwRwllep2XWWhtzT8JFqHnbaynCZ4WuVeZVTEtE
         DlSw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NvWVUzBk;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d41 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd41.google.com (mail-io1-xd41.google.com. [2607:f8b0:4864:20::d41])
        by gmr-mx.google.com with ESMTPS id n25si58695otf.2.2020.07.14.18.47.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Jul 2020 18:47:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d41 as permitted sender) client-ip=2607:f8b0:4864:20::d41;
Received: by mail-io1-xd41.google.com with SMTP id y2so545282ioy.3
        for <clang-built-linux@googlegroups.com>; Tue, 14 Jul 2020 18:47:10 -0700 (PDT)
X-Received: by 2002:a5e:dd0a:: with SMTP id t10mr7594707iop.80.1594777630279;
 Tue, 14 Jul 2020 18:47:10 -0700 (PDT)
MIME-Version: 1.0
References: <20200714023836.2310569-1-nivedita@alum.mit.edu> <20200715004133.1430068-1-nivedita@alum.mit.edu>
In-Reply-To: <20200715004133.1430068-1-nivedita@alum.mit.edu>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Wed, 15 Jul 2020 03:46:58 +0200
Message-ID: <CA+icZUU7xXgDSc4ApF2ffyDCygu_N42tP6iF-XAvJAAVrD_B9A@mail.gmail.com>
Subject: Re: [PATCH v5 0/7] x86/boot: Remove run-time relocations from
 compressed kernel
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
 header.i=@gmail.com header.s=20161025 header.b=NvWVUzBk;       spf=pass
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
> The compressed kernel currently contains bogus run-time relocations in
> the startup code in head_{32,64}.S, which are generated by the linker,
> but must not actually be processed at run-time.
>
> This generates warnings when linking with the BFD linker, and errors
> with LLD, which defaults to erroring on run-time relocations in read-only
> sections. It also requires the -z noreloc-overflow hack for the 64-bit
> kernel, which prevents us from linking it as -pie on an older BFD linker
> (<= 2.26) or on LLD, because the locations that are to be apparently
> relocated are only 32-bits in size and so cannot really have
> R_X86_64_RELATIVE relocations.
>
> This series aims to get rid of these relocations. I've build- and
> boot-tested with combinations of clang/gcc-10 with lld/bfd-2.34, and
> gcc-4.9.0 with bfd-2.24, skipping clang on 32-bit because it currently
> has other issues [0].
>
> The first three patches by Ard remove indirection via the GOT from the
> compressed kernel code.
>
> The next patch is an independent fix for LLD, to avoid an orphan
> section in arch/x86/boot/setup.elf.
>
> The fifth patch gets rid of almost all the relocations. It uses
> standard PIC addressing technique for 32-bit, i.e. loading a register
> with the address of _GLOBAL_OFFSET_TABLE_ and then using GOTOFF
> references to access variables. For 64-bit, there is 32-bit code that
> cannot use RIP-relative addressing, and also cannot use the 32-bit
> method, since GOTOFF references are 64-bit only. This is instead handled
> using a macro to replace a reference like gdt with (gdt-startup_32)
> instead. The assembler will generate a PC32 relocation entry, with
> addend set to (.-startup_32), and these will be replaced with constants
> at link time. This works as long as all the code using such references
> lives in the same section as startup_32, i.e. in .head.text.
>
> The sixth patch addresses a remaining issue with the BFD linker, which
> generates run-time relocations for absolute symbols. We use z_input_len
> and z_output_len, defined in the generated piggy.S file, as symbols
> whose absolute "addresses" are actually the size of the compressed
> payload and the size of the decompressed kernel image respectively. LLD
> does not generate relocations for these two symbols, but the BFD linker
> does, prior to the upcoming 2.35. To get around this, piggy.S is
> extended to also define two u32 variables (in .rodata) with the lengths,
> and the head code is modified to use those instead of the symbol
> addresses.
>
> An alternative way to handle z_input_len/z_output_len would be to just
> include piggy.S in head_{32,64}.S instead of as a separate object file,
> since the GNU assembler doesn't generate relocations for symbols set to
> constants.
>
> The last patch adds a check in the linker script to ensure that no
> run-time relocations get reintroduced.
>
> [0] https://lore.kernel.org/lkml/20200504230309.237398-1-ndesaulniers@google.com/
>
> Changes from v4:
> - Move -pie --no-dynamic-linker from KBUILD_LDFLAGS to LDFLAGS_vmlinux
>   Sedat: I'm not clear on whether you tested with the final LDFLAGS,
>   could you confirm: i.e. if you tested with -pie passed to LLD?
> - Replace runtime -> run-time to be consistent in wording
>

Hi Arvind,

thanks for v5.

With my diff applied against your patchset *v4*:

diff --git a/arch/x86/boot/compressed/Makefile
b/arch/x86/boot/compressed/Makefile
index 789d5d14d8b0..d0aafcd8cf6c 100644
--- a/arch/x86/boot/compressed/Makefile
+++ b/arch/x86/boot/compressed/Makefile
@@ -51,8 +51,8 @@ UBSAN_SANITIZE :=n
 KBUILD_LDFLAGS := -m elf_$(UTS_MACHINE)
 # Compressed kernel should be built as PIE since it may be loaded at any
 # address by the bootloader.
-KBUILD_LDFLAGS += -pie $(call ld-option, --no-dynamic-linker)
-LDFLAGS_vmlinux := -T
+LDFLAGS_vmlinux := -pie $(call ld-option, --no-dynamic-linker)
+LDFLAGS_vmlinux += -T

 hostprogs      := mkpiggy
 HOST_EXTRACFLAGS += -I$(srctree)/tools/include

I was able to build/assemble with LLVM/Clang v11.0.0-git+ffee8040534
and boot on bare metal.

Note:
I have applied some additional patches to be compliant with LLVM_IAS=1
(Clang's Integrated Assembler) and LLVM=1 means LLVM utilities.
( As pointed out zstd-v7. )

- Sedat -

P.S.: Check my build-log

$ grep 'arch/x86/boot/compressed/vmlinux'
build-log_5.8.0-rc5-3-amd64-llvm11-ias.txt
make -f ./scripts/Makefile.build obj=arch/x86/boot/compressed
arch/x86/boot/compressed/vmlinux
  clang-11 -E -Wp,-MMD,arch/x86/boot/compressed/.vmlinux.lds.d
-nostdinc -isystem /usr/lib/llvm-11/lib/clang/11.0.0/include
-I./arch/x86/include -I./arch/x86/include/generated  -I./include
-I./arch/x86/include/uapi -I./arch/x86/include/generated/uapi
-I./include/uapi -I./include/generated/uapi -include
./include/linux/kconfig.h -D__KERNEL__ -Qunused-arguments   -P -Ux86
-D__ASSEMBLY__ -DLINKER_SCRIPT -o arch/x86/boot/compressed/vmlinux.lds
arch/x86/boot/compressed/vmlinux.lds.S
  llvm-objcopy-11  -R .comment -S vmlinux arch/x86/boot/compressed/vmlinux.bin
  arch/x86/tools/relocs vmlinux >
arch/x86/boot/compressed/vmlinux.relocs;arch/x86/tools/relocs
--abs-relocs vmlinux
  { cat arch/x86/boot/compressed/vmlinux.bin
arch/x86/boot/compressed/vmlinux.relocs | zstd -22 --ultra; printf
\114\015\315\001; } > arch/x86/boot/compressed/vmlinux.bin.zst
  arch/x86/boot/compressed/mkpiggy
arch/x86/boot/compressed/vmlinux.bin.zst >
arch/x86/boot/compressed/piggy.S
  ld.lld-11 -m elf_x86_64  -pie  --no-dynamic-linker -T
arch/x86/boot/compressed/vmlinux.lds
arch/x86/boot/compressed/kernel_info.o
arch/x86/boot/compressed/head_64.o arch/x86/boot/compressed/misc.o
arch/x86/boot/compressed/string.o arch/x86/boot/compressed/cmdline.o
arch/x86/boot/compressed/error.o arch/x86/boot/compressed/piggy.o
arch/x86/boot/compressed/cpuflags.o
arch/x86/boot/compressed/early_serial_console.o
arch/x86/boot/compressed/kaslr.o arch/x86/boot/compressed/kaslr_64.o
arch/x86/boot/compressed/mem_encrypt.o
arch/x86/boot/compressed/pgtable_64.o arch/x86/boot/compressed/acpi.o
drivers/firmware/efi/libstub/lib.a
arch/x86/boot/compressed/efi_thunk_64.o -o
arch/x86/boot/compressed/vmlinux
  llvm-nm-11 arch/x86/boot/compressed/vmlinux | sed -n -e
's/^\([0-9a-fA-F]*\) [a-zA-Z]
\(startup_32\|startup_64\|efi32_stub_entry\|efi64_stub_entry\|efi_pe_entry\|efi32_pe_entry\|input_data\|kernel_info\|_end\|_ehead\|_text\|z_.*\)$/#define
ZO_ 0x/p' > arch/x86/boot/zoffset.h
  llvm-objcopy-11  -O binary -R .note -R .comment -S
arch/x86/boot/compressed/vmlinux arch/x86/boot/vmlinux.bin

- EOT -

> Changes from v3:
> - Move hidden.h to include/linux so the EFI stub and the compressed
>   kernel can share the same file
>
> Changes from v2:
> - Incorporate Ard's patches for eliminating GOT references into this
>   series
> - Rebase on v5.8-rc3
>
> v2: https://lore.kernel.org/lkml/20200525225918.1624470-1-nivedita@alum.mit.edu/
>
> Changes from v1:
> - Add .text.* to setup.ld instead of just .text.startup
> - Rename the la() macro introduced in the second patch for 64-bit to
>   rva(), and rework the explanatory comment.
> - In the last patch, check both .rel.dyn and .rela.dyn, instead of just
>   one per arch.
>
> Ard Biesheuvel (3):
>   x86/boot/compressed: Move .got.plt entries out of the .got section
>   x86/boot/compressed: Force hidden visibility for all symbol references
>   x86/boot/compressed: Get rid of GOT fixup code
>
> Arvind Sankar (4):
>   x86/boot: Add .text.* to setup.ld
>   x86/boot: Remove run-time relocations from .head.text code
>   x86/boot: Remove run-time relocations from head_{32,64}.S
>   x86/boot: Check that there are no run-time relocations
>
>  arch/x86/boot/compressed/Makefile      |  39 +-----
>  arch/x86/boot/compressed/head_32.S     |  99 +++++----------
>  arch/x86/boot/compressed/head_64.S     | 165 ++++++++++---------------
>  arch/x86/boot/compressed/mkpiggy.c     |   6 +
>  arch/x86/boot/compressed/vmlinux.lds.S |  24 +++-
>  arch/x86/boot/setup.ld                 |   2 +-
>  drivers/firmware/efi/libstub/Makefile  |   2 +-
>  drivers/firmware/efi/libstub/hidden.h  |   6 -
>  include/linux/hidden.h                 |  19 +++
>  9 files changed, 153 insertions(+), 209 deletions(-)
>  delete mode 100644 drivers/firmware/efi/libstub/hidden.h
>  create mode 100644 include/linux/hidden.h
>
>
> base-commit: e9919e11e219eaa5e8041b7b1a196839143e9125
> --
> 2.26.2
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUU7xXgDSc4ApF2ffyDCygu_N42tP6iF-XAvJAAVrD_B9A%40mail.gmail.com.
