Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBFWYXL4AKGQERLYQSBI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33e.google.com (mail-ot1-x33e.google.com [IPv6:2607:f8b0:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id AC50F2205E8
	for <lists+clang-built-linux@lfdr.de>; Wed, 15 Jul 2020 09:11:20 +0200 (CEST)
Received: by mail-ot1-x33e.google.com with SMTP id i5sf555915ots.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 15 Jul 2020 00:11:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594797078; cv=pass;
        d=google.com; s=arc-20160816;
        b=JgV2qV6VR/luyuPUaurc2QAJXgeDFhF5YL8688RWxamzQnQgEDr0/N46+AMtpNyP34
         9HnycLfs2YTmldMY7ELEUDzY3/WYaHvId7ciOQOaSzDD6RIV9smG2rQ5rsrcqGt6AYNa
         kuO4NjIFP2T6/ILbefSkVZe3lMVDYiVmnJiRe8nEjB/8tCB6iTKlkKvjJZlveUAVE6ve
         NXIZc40RuJVFoNkTeSh0PiyOuDj6zcacIaRZh+/58Kh30JUxS1CORVimnykD5Tr1hCRD
         3UleIPlqVhoDZWahslG6t7PO0hQIwzKpKl9ji6kGysou87p7LhGqxIvhdxXI1ogIPeD8
         CS9g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=CA5TaNarbP/lLojmgn/2kmisXKrRHhlD0NIdkcoEqQo=;
        b=aXVedfGgqiuQNd+4Sx0Sh+dSC72ouQm0KEyTYvWjDgztCA9p+ot1Pb6RyiMq4okwyy
         zfCPnkhsYFa9+T2/wPsTBrMxbbNN6VRn3s1qkV8b1dRKfmY9iwiuMIb1ueW7a/Tm3oo6
         gdC5NKYZRJ7DGdDUZanA8L6n4HQ4MlMYz4Q0B7OOk2sVja74UnNXAwnrFO6S4aQroNxQ
         AgFZgdwBTAppwHaDDS7I70YasdTfF+M87qIYcDdbIFADysZ2e6MPOXM5/q73bBeJ7zEf
         +bEk8J/oiv0ZZGPxpW22tnbdqv+j2grZJSycztx8vQxOVhFwxSA3qb2BorW9Q8lhou8U
         9zbQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PSYCDg+X;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d41 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=CA5TaNarbP/lLojmgn/2kmisXKrRHhlD0NIdkcoEqQo=;
        b=mYMvpgakUQieAOAlpfBA3Zud8NsJj2tkuzJCo1Vow2IQ6cEKR2vfrz+iImqZVUwj8H
         vzyWKntYYkWItRNPgBAkuMAXOrHs6ssoJEagWUo6Hw16qaToSOmHjwcgP6kTHd7bR+KG
         ZSNRfTwk3+YIn+CLrEuI1Z9wpiAR4Bs2Lvdf20omxOi9ZIo+1tUby5Iz7TsFHQJpa3Gg
         qOHC0NkJeNcei0CJ7gYJyawdjSkcY32LBLJZCB5JQz563vj3QA19YQ0GTrywfWwBAj4y
         V+CWIeUEJu37ugNekoY4O/npdLyv4kENvWQBRLNSz9+MgXtaXR4FJZbij2v12q8J2hcW
         sWMQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CA5TaNarbP/lLojmgn/2kmisXKrRHhlD0NIdkcoEqQo=;
        b=VkWwytz1hRKH7sGlo4KY6O+c1EmIyMyRRab3phpFYiOtK8Y8e5UD7XkbSU2KTprvFO
         F2CfxueZkuole+aeK/jPRBko/7WUij3MRR/auX1T45L4EbAqXzelXxu2bcSanjVNAtnZ
         FLASdzxEIpKVSY1QTUaesywIImTYz84kGbVlop3YrX3TloSorX58IfaFsSzukSlO8Fn8
         SDQto9cZpujKhyUJuZ+h0bLAdnV9TXzFA7fTpdiDLcTwaXMvwl7Nh6S2Z0fY7rMGIWXO
         oKo+Y0yA7QCVTGo3wBGGsQPla6kQNEaDeGUtvO0MDUki09jzj7uHA9G6vXeFZKfFx+on
         IakQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CA5TaNarbP/lLojmgn/2kmisXKrRHhlD0NIdkcoEqQo=;
        b=Ng7al7j7WVRKhxPDlGBlguRWQj16BwEPa64exgWXT4P1LSiMvv9MlUJSABs46O/Zle
         qzh8gKpO8Icglsa6s3I4SS4uJTnPoTPCROXhaPt5w8Wvc0SSYvODVyFQMj0g93eLuURX
         BcP2KwkTnvhDWih2ZDT4psK5OEaYgBBNNTNeSTjYsoqDiLQDaZAdga8lvWvnu0ZNC37m
         av4D1leI/J8lDvs5wJLUpuJ19l3zKKglrW0eeiqUbgCHBXp8Zf868Vw6oiaLJkpJqN1E
         PQqtxsOzZzwaMZeMvlRKG0B7H9Zksr/IrLSFbozdtjqBJ0yseJOZ+GU032oQTalGafLv
         /yLA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533+hYgOz77YWPsN5iFTOWWzJBvybnS7USwlh1yoqilwasCt+0eY
	D4mRa/Rq6lYloicSnEwDFqk=
X-Google-Smtp-Source: ABdhPJwrcMwwqIZNhlUuQPzV2QKSeNUtpfDbx21wPUC+B1nsxy4XpOrpFXvaLW2S9vdPd2hBOWDw1Q==
X-Received: by 2002:a54:460b:: with SMTP id p11mr6797351oip.77.1594797078150;
        Wed, 15 Jul 2020 00:11:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1247:: with SMTP id s7ls282591otp.0.gmail; Wed, 15
 Jul 2020 00:11:17 -0700 (PDT)
X-Received: by 2002:a9d:ecc:: with SMTP id 70mr7679138otj.239.1594797077730;
        Wed, 15 Jul 2020 00:11:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594797077; cv=none;
        d=google.com; s=arc-20160816;
        b=u/AsTZ/ympVsa7lBktWiULk7tro61PYNMMH4OYMFHs8W1cG7zdTDF99LMQGjuG0gbi
         Gv5iTZ9EIGRlWgR72cTBiR4Qg6G80ehd2PWzr5JJ67zYcwBtGVENRJmLfeGwSor5oOkz
         mx3mdI8va3SK96H8978kX24GEArisIvNZYSzM65rq/FM9uQQsrNBl74oZAXOBxlpBg1U
         qSd4nzyk1KzcfdU3abgl0sgaLhRGnEoQ1UOHHMB4jFGjMrWwZXv3MdugYwrnkkkC1d2r
         isFtLYzVeUWce9DApEncz1Zux+ZCuYayR8n2D+gtH35IHzYrhTMci3V4ukzN1+GIeoQd
         DkCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=SnhHnWlmsmozwH7uNLciTFi6uF5Qyh5x11ET74xlgtk=;
        b=yNoRVHXx5tPy3BuqFUvfXdTJSFAxT84CFQdBWoI+G3HBjVX7Bcvx3Kn6YX6AceK8q/
         8RyXwMVuE5CtAXkamPejff/RiY6kuRbDyBOrLy7VrxCJ2DTf3uGFILGMec+860QLcFhz
         mKuLZyZcelD0mSrpIUOKIKDWF0dKu3mV5u7/axa60uuMqxIUnFsR3NV5C35NsrqVCYzc
         4MrKitl9w4rDTjU+j12vZ4fs6XvErnqhg747LjnaF+u2r9xuW0Ck0vodN4bA/uacsQb3
         jN4F7S2TOzNbk5AvRZBZBVJ0inyqKEiYXZTk3xfaM8RKFcJjkrQ5JIjUxyXDsQbAJTOX
         FyFQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PSYCDg+X;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d41 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd41.google.com (mail-io1-xd41.google.com. [2607:f8b0:4864:20::d41])
        by gmr-mx.google.com with ESMTPS id m21si103404oih.4.2020.07.15.00.11.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Jul 2020 00:11:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d41 as permitted sender) client-ip=2607:f8b0:4864:20::d41;
Received: by mail-io1-xd41.google.com with SMTP id k23so1152562iom.10
        for <clang-built-linux@googlegroups.com>; Wed, 15 Jul 2020 00:11:17 -0700 (PDT)
X-Received: by 2002:a02:ce9a:: with SMTP id y26mr10445385jaq.121.1594797077227;
 Wed, 15 Jul 2020 00:11:17 -0700 (PDT)
MIME-Version: 1.0
References: <20200714023836.2310569-1-nivedita@alum.mit.edu>
 <20200715004133.1430068-1-nivedita@alum.mit.edu> <CA+icZUU7xXgDSc4ApF2ffyDCygu_N42tP6iF-XAvJAAVrD_B9A@mail.gmail.com>
In-Reply-To: <CA+icZUU7xXgDSc4ApF2ffyDCygu_N42tP6iF-XAvJAAVrD_B9A@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Wed, 15 Jul 2020 09:11:05 +0200
Message-ID: <CA+icZUVjVoKBTRkwK0fCMpv=1tkYGpVzAt3j7-YeUKDzkxxwNw@mail.gmail.com>
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
 header.i=@gmail.com header.s=20161025 header.b=PSYCDg+X;       spf=pass
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

On Wed, Jul 15, 2020 at 3:46 AM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> On Wed, Jul 15, 2020 at 2:41 AM Arvind Sankar <nivedita@alum.mit.edu> wrote:
> >
> > The compressed kernel currently contains bogus run-time relocations in
> > the startup code in head_{32,64}.S, which are generated by the linker,
> > but must not actually be processed at run-time.
> >
> > This generates warnings when linking with the BFD linker, and errors
> > with LLD, which defaults to erroring on run-time relocations in read-only
> > sections. It also requires the -z noreloc-overflow hack for the 64-bit
> > kernel, which prevents us from linking it as -pie on an older BFD linker
> > (<= 2.26) or on LLD, because the locations that are to be apparently
> > relocated are only 32-bits in size and so cannot really have
> > R_X86_64_RELATIVE relocations.
> >
> > This series aims to get rid of these relocations. I've build- and
> > boot-tested with combinations of clang/gcc-10 with lld/bfd-2.34, and
> > gcc-4.9.0 with bfd-2.24, skipping clang on 32-bit because it currently
> > has other issues [0].
> >
> > The first three patches by Ard remove indirection via the GOT from the
> > compressed kernel code.
> >
> > The next patch is an independent fix for LLD, to avoid an orphan
> > section in arch/x86/boot/setup.elf.
> >
> > The fifth patch gets rid of almost all the relocations. It uses
> > standard PIC addressing technique for 32-bit, i.e. loading a register
> > with the address of _GLOBAL_OFFSET_TABLE_ and then using GOTOFF
> > references to access variables. For 64-bit, there is 32-bit code that
> > cannot use RIP-relative addressing, and also cannot use the 32-bit
> > method, since GOTOFF references are 64-bit only. This is instead handled
> > using a macro to replace a reference like gdt with (gdt-startup_32)
> > instead. The assembler will generate a PC32 relocation entry, with
> > addend set to (.-startup_32), and these will be replaced with constants
> > at link time. This works as long as all the code using such references
> > lives in the same section as startup_32, i.e. in .head.text.
> >
> > The sixth patch addresses a remaining issue with the BFD linker, which
> > generates run-time relocations for absolute symbols. We use z_input_len
> > and z_output_len, defined in the generated piggy.S file, as symbols
> > whose absolute "addresses" are actually the size of the compressed
> > payload and the size of the decompressed kernel image respectively. LLD
> > does not generate relocations for these two symbols, but the BFD linker
> > does, prior to the upcoming 2.35. To get around this, piggy.S is
> > extended to also define two u32 variables (in .rodata) with the lengths,
> > and the head code is modified to use those instead of the symbol
> > addresses.
> >
> > An alternative way to handle z_input_len/z_output_len would be to just
> > include piggy.S in head_{32,64}.S instead of as a separate object file,
> > since the GNU assembler doesn't generate relocations for symbols set to
> > constants.
> >
> > The last patch adds a check in the linker script to ensure that no
> > run-time relocations get reintroduced.
> >
> > [0] https://lore.kernel.org/lkml/20200504230309.237398-1-ndesaulniers@google.com/
> >
> > Changes from v4:
> > - Move -pie --no-dynamic-linker from KBUILD_LDFLAGS to LDFLAGS_vmlinux
> >   Sedat: I'm not clear on whether you tested with the final LDFLAGS,
> >   could you confirm: i.e. if you tested with -pie passed to LLD?
> > - Replace runtime -> run-time to be consistent in wording
> >
>
> Hi Arvind,
>
> thanks for v5.
>
> With my diff applied against your patchset *v4*:
>
> diff --git a/arch/x86/boot/compressed/Makefile
> b/arch/x86/boot/compressed/Makefile
> index 789d5d14d8b0..d0aafcd8cf6c 100644
> --- a/arch/x86/boot/compressed/Makefile
> +++ b/arch/x86/boot/compressed/Makefile
> @@ -51,8 +51,8 @@ UBSAN_SANITIZE :=n
>  KBUILD_LDFLAGS := -m elf_$(UTS_MACHINE)
>  # Compressed kernel should be built as PIE since it may be loaded at any
>  # address by the bootloader.
> -KBUILD_LDFLAGS += -pie $(call ld-option, --no-dynamic-linker)
> -LDFLAGS_vmlinux := -T
> +LDFLAGS_vmlinux := -pie $(call ld-option, --no-dynamic-linker)
> +LDFLAGS_vmlinux += -T
>
>  hostprogs      := mkpiggy
>  HOST_EXTRACFLAGS += -I$(srctree)/tools/include
>
> I was able to build/assemble with LLVM/Clang v11.0.0-git+ffee8040534
> and boot on bare metal.
>
> Note:
> I have applied some additional patches to be compliant with LLVM_IAS=1
> (Clang's Integrated Assembler) and LLVM=1 means LLVM utilities.
> ( As pointed out zstd-v7. )
>
> - Sedat -
>
> P.S.: Check my build-log
>
> $ grep 'arch/x86/boot/compressed/vmlinux'
> build-log_5.8.0-rc5-3-amd64-llvm11-ias.txt
> make -f ./scripts/Makefile.build obj=arch/x86/boot/compressed
> arch/x86/boot/compressed/vmlinux
>   clang-11 -E -Wp,-MMD,arch/x86/boot/compressed/.vmlinux.lds.d
> -nostdinc -isystem /usr/lib/llvm-11/lib/clang/11.0.0/include
> -I./arch/x86/include -I./arch/x86/include/generated  -I./include
> -I./arch/x86/include/uapi -I./arch/x86/include/generated/uapi
> -I./include/uapi -I./include/generated/uapi -include
> ./include/linux/kconfig.h -D__KERNEL__ -Qunused-arguments   -P -Ux86
> -D__ASSEMBLY__ -DLINKER_SCRIPT -o arch/x86/boot/compressed/vmlinux.lds
> arch/x86/boot/compressed/vmlinux.lds.S
>   llvm-objcopy-11  -R .comment -S vmlinux arch/x86/boot/compressed/vmlinux.bin
>   arch/x86/tools/relocs vmlinux >
> arch/x86/boot/compressed/vmlinux.relocs;arch/x86/tools/relocs
> --abs-relocs vmlinux
>   { cat arch/x86/boot/compressed/vmlinux.bin
> arch/x86/boot/compressed/vmlinux.relocs | zstd -22 --ultra; printf
> \114\015\315\001; } > arch/x86/boot/compressed/vmlinux.bin.zst
>   arch/x86/boot/compressed/mkpiggy
> arch/x86/boot/compressed/vmlinux.bin.zst >
> arch/x86/boot/compressed/piggy.S
>   ld.lld-11 -m elf_x86_64  -pie  --no-dynamic-linker -T
> arch/x86/boot/compressed/vmlinux.lds
> arch/x86/boot/compressed/kernel_info.o
> arch/x86/boot/compressed/head_64.o arch/x86/boot/compressed/misc.o
> arch/x86/boot/compressed/string.o arch/x86/boot/compressed/cmdline.o
> arch/x86/boot/compressed/error.o arch/x86/boot/compressed/piggy.o
> arch/x86/boot/compressed/cpuflags.o
> arch/x86/boot/compressed/early_serial_console.o
> arch/x86/boot/compressed/kaslr.o arch/x86/boot/compressed/kaslr_64.o
> arch/x86/boot/compressed/mem_encrypt.o
> arch/x86/boot/compressed/pgtable_64.o arch/x86/boot/compressed/acpi.o
> drivers/firmware/efi/libstub/lib.a
> arch/x86/boot/compressed/efi_thunk_64.o -o
> arch/x86/boot/compressed/vmlinux
>   llvm-nm-11 arch/x86/boot/compressed/vmlinux | sed -n -e
> 's/^\([0-9a-fA-F]*\) [a-zA-Z]
> \(startup_32\|startup_64\|efi32_stub_entry\|efi64_stub_entry\|efi_pe_entry\|efi32_pe_entry\|input_data\|kernel_info\|_end\|_ehead\|_text\|z_.*\)$/#define
> ZO_ 0x/p' > arch/x86/boot/zoffset.h
>   llvm-objcopy-11  -O binary -R .note -R .comment -S
> arch/x86/boot/compressed/vmlinux arch/x86/boot/vmlinux.bin
>
> - EOT -
>

Re-tested v5 of your patchset, feel free to add appropriate credits.

- Sedat -

> > Changes from v3:
> > - Move hidden.h to include/linux so the EFI stub and the compressed
> >   kernel can share the same file
> >
> > Changes from v2:
> > - Incorporate Ard's patches for eliminating GOT references into this
> >   series
> > - Rebase on v5.8-rc3
> >
> > v2: https://lore.kernel.org/lkml/20200525225918.1624470-1-nivedita@alum.mit.edu/
> >
> > Changes from v1:
> > - Add .text.* to setup.ld instead of just .text.startup
> > - Rename the la() macro introduced in the second patch for 64-bit to
> >   rva(), and rework the explanatory comment.
> > - In the last patch, check both .rel.dyn and .rela.dyn, instead of just
> >   one per arch.
> >
> > Ard Biesheuvel (3):
> >   x86/boot/compressed: Move .got.plt entries out of the .got section
> >   x86/boot/compressed: Force hidden visibility for all symbol references
> >   x86/boot/compressed: Get rid of GOT fixup code
> >
> > Arvind Sankar (4):
> >   x86/boot: Add .text.* to setup.ld
> >   x86/boot: Remove run-time relocations from .head.text code
> >   x86/boot: Remove run-time relocations from head_{32,64}.S
> >   x86/boot: Check that there are no run-time relocations
> >
> >  arch/x86/boot/compressed/Makefile      |  39 +-----
> >  arch/x86/boot/compressed/head_32.S     |  99 +++++----------
> >  arch/x86/boot/compressed/head_64.S     | 165 ++++++++++---------------
> >  arch/x86/boot/compressed/mkpiggy.c     |   6 +
> >  arch/x86/boot/compressed/vmlinux.lds.S |  24 +++-
> >  arch/x86/boot/setup.ld                 |   2 +-
> >  drivers/firmware/efi/libstub/Makefile  |   2 +-
> >  drivers/firmware/efi/libstub/hidden.h  |   6 -
> >  include/linux/hidden.h                 |  19 +++
> >  9 files changed, 153 insertions(+), 209 deletions(-)
> >  delete mode 100644 drivers/firmware/efi/libstub/hidden.h
> >  create mode 100644 include/linux/hidden.h
> >
> >
> > base-commit: e9919e11e219eaa5e8041b7b1a196839143e9125
> > --
> > 2.26.2
> >

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUVjVoKBTRkwK0fCMpv%3D1tkYGpVzAt3j7-YeUKDzkxxwNw%40mail.gmail.com.
