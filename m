Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBEXAW34AKGQEMZQHXZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3f.google.com (mail-qv1-xf3f.google.com [IPv6:2607:f8b0:4864:20::f3f])
	by mail.lfdr.de (Postfix) with ESMTPS id A39A121F23B
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 15:16:03 +0200 (CEST)
Received: by mail-qv1-xf3f.google.com with SMTP id s2sf9617565qvn.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 06:16:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594732562; cv=pass;
        d=google.com; s=arc-20160816;
        b=VUmd0opUZq9Dh9NwyAy4IKBjFhdfn7jLPEwPHGEa6V5BOLQfwK5vnEbGRZDmZnZiW9
         O7eKtXgFBqSuVjP7WWczvWBHdJDxZPPaIHFeqYwn5ysn8RbKCE4Z+9uSf0B3RYkRVpoL
         UNRHhd7Lmg46ugldfxYTPqDQAVKOTNHtetgPD6RpoWBVBc5uv137Xp0mF2t1Olq3Xly2
         c8mUuILYRsQ7yXac0ZFFOMsnlNbtxvob5+1kF+Xte1dxRYo0jqkgWeg9svcwbiHvCg6C
         uhJ92BZG6yZ0RSnqMhWhg5nxeA9bklHhMb0TkfhPaBlBvb4Wl3AJcx4wk4ZhYTz7VRSO
         SA4Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=fW4qKns4ZFaLUuA9L019geZpIofX01JwEMECuG2PZmE=;
        b=eNxlDpUuiMw/d0aht05x5roTBM4aRtGJudo20P/hSBHBwmwUBHxNg0MkBkwN+Q/Tai
         uTNTmy+9wMnI/LmKkHS+h+HOCgi01iadm7veFMEGJw1WK2R2iTspAHpO5HiE0y/RvZA9
         mRzMH/jTG0JX1JOAr0ukIXcviMGLE64fUx8qBgr3FKqmUxG/9K8qpeEm03HMiQPVZx9C
         gSsK0segzYPSaTIlTikhalLuDRArjELMd8Xror0yeDyRLFswgakkCpXJkUfUT3ZrnmPH
         l8vLe2LkTSP0E9ALMQUagUK2i2sZqtEgrRzizaEaL9No8dr9apOQuMugdE43BzjQWoUZ
         sLbQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=c9vLiUrX;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::144 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=fW4qKns4ZFaLUuA9L019geZpIofX01JwEMECuG2PZmE=;
        b=QiVQU/ofa2YDU0phHVW7NKW6G4ZukIIfPKU34Iipn0HRkuJXDyDXj0HOwCb6vABjF7
         hUiETueln3MAIWDymrZwiPJk0354bSDkh7Ka5Bq40HA9RWOZBc4u1GTT6yPT2Ixki1xe
         LKkhgd0i9gAvmMT0RhZEFWhNTXN3k6AK42UC8Z9BU5XfCrSlV0MKA4aLHAn+fhv6sxn0
         KqOFETqT0A5t0o0SXoVoE9LxNk/T6BX2Fp6kcvIz/+A6+M3g7Trs/4c9BANPnNg339Qx
         X5aMJqA54HKEEMJNsSrBx2VKUl0BWnWe0hGxsE6au0P9YHvjWAmO689HWTnhDhUXTrdI
         MpHA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fW4qKns4ZFaLUuA9L019geZpIofX01JwEMECuG2PZmE=;
        b=a8sLEeKjdHA7/OzK2gk6Dx+FhB3vR8w4jF63SY5RFgwL0wOMfCyhpcLBGUre7oYBNC
         FfCE3WfycxQS/RcqRs1KqsfcW7AMn9BlHL7RItkYVJuQItJ4mSZP1gUwe5bNslid1tLu
         LSlMLimmjUufvScTxjKT6TETw9+QDg3Q9T2R0yj9hsq0DA47aQxuNbM7LPIvKzVL/3ux
         5GV1tDTlsJCJElNwvlF5UUmc46mjtniTtYRQl1F7U6miKo65sgRyEti7TB0EWDJr9qop
         vuf7p6CUVPSLKXO/vhOw9wYuZuqZQEXezEf5tVVb4r0pLO4+sisE8ll0zWCVwQuEcgn8
         QL3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fW4qKns4ZFaLUuA9L019geZpIofX01JwEMECuG2PZmE=;
        b=gHvrMuy7HxP3/edH1qbp8IJo+F3WlvidPKOmEs89aQQUkFaaJn+ccRzsP8pTq3IzqZ
         3QPWOYTsiD8xdZfznA+rw6eW2bGcXJoRKSNsrfBzLb/eyttqHv/ga6m6eps39Q671UTS
         FrW5LKN68/qfhbuvgCyinEATT/iMPbKlpqkpvb1xE+HSxIo075YIQsd+3NLpLR4IPIEO
         jGUTKOyGPDv/Cw9Os5x+UpR2HzJONFj5Jp1EnG3VKc7kVlff1R+2ShEd1llaCHO8l6fO
         kfYSlFoy53M0oZEUbJPvsU0CCgoxZI+jAINTPDH0hAlPbs8LMM8oh9crDbyOfmL6jvCM
         fuVA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530iJbXG+Fs7BLAaKiphGSLXIs1f5D2wXLWTeysKll24NVhU3RHx
	MSFtdILg3rjjqrk48yprpco=
X-Google-Smtp-Source: ABdhPJySE9XBVRpUCouAlInlHXN3sPE0F8JK19IAWt8Io6fKgnigOCYcH/hrkCNsguR7FbPEig9U0Q==
X-Received: by 2002:aed:35b2:: with SMTP id c47mr4569793qte.324.1594732562198;
        Tue, 14 Jul 2020 06:16:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:5:: with SMTP id j5ls9822992qki.6.gmail; Tue, 14
 Jul 2020 06:16:01 -0700 (PDT)
X-Received: by 2002:a37:dcc:: with SMTP id 195mr4331236qkn.251.1594732561792;
        Tue, 14 Jul 2020 06:16:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594732561; cv=none;
        d=google.com; s=arc-20160816;
        b=ijRXCzPfqo7ynf5UQVywq+W6BFsUjhidw/1clrTuKLmEvK2qkEGMMOnMcfPMsisiHD
         ajTOypJo5nqRVoRyy5OyQU7sLFeGm4CAyVlSrUEAcF/gnuXLvUIYuFvOCGw9hdh/5SN7
         sClQHTKCCySJ1xYfYaRJJ0pxA35xurvUfqPPmVUN4dlApADMJpEC8sOazInsQCfTXJ3w
         uOdHXF8IecCOoRLAkaH3Mwk6sdeE24A7BkAN7wtZ76z+Fuwb1EDdEr7dXM4UQ4rHNhbM
         C/t8xbuh22Kb2ZFQi/y00tdXMqJ/f1B+WUFHd1JGbGq6bn311ufqoEdnBP0y3FRn7BmR
         TExg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=JcppHeuWEWp3uvCgDjwRJ0BnWulErceTXsEzD39nLZE=;
        b=ptFSfxkx8y2hqpnxDN/uht6Qmawxv12TCO703heKgX81wPg+VV9Ksqt6nSmoMQpQvn
         kjy3d/l8efHv7IKXnla61ORHWU4Pys2TGbEaj6q2Z96HYBRi+JIiZV3UtYHvhLrGhEbJ
         ZPlNGw4GpI13ErGMVTqS8WeFyMuzqXl9KNzSx/ykgBQwy+W1IonKVaRKMG3dVmALTMr3
         3gdoSDmdoODgNX8cfoHYhV79RwpPRavl/QDR/lsI1BgSbWT1OuJdbeinCsjFuOGYGfmQ
         w3f8rPJKEYiWjcCV+iM9hIUMCqini7pUNkLEencSAeZ/ugRbw7LigOzZkALWZGfE7xux
         b7yw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=c9vLiUrX;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::144 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x144.google.com (mail-il1-x144.google.com. [2607:f8b0:4864:20::144])
        by gmr-mx.google.com with ESMTPS id j10si89845qko.0.2020.07.14.06.16.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Jul 2020 06:16:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::144 as permitted sender) client-ip=2607:f8b0:4864:20::144;
Received: by mail-il1-x144.google.com with SMTP id t18so14170554ilh.2
        for <clang-built-linux@googlegroups.com>; Tue, 14 Jul 2020 06:16:01 -0700 (PDT)
X-Received: by 2002:a92:dc09:: with SMTP id t9mr4830937iln.226.1594732561149;
 Tue, 14 Jul 2020 06:16:01 -0700 (PDT)
MIME-Version: 1.0
References: <20200629140928.858507-1-nivedita@alum.mit.edu> <20200714023836.2310569-1-nivedita@alum.mit.edu>
In-Reply-To: <20200714023836.2310569-1-nivedita@alum.mit.edu>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Tue, 14 Jul 2020 15:15:49 +0200
Message-ID: <CA+icZUXSPfybFtzQB3wKn9spQmEPnQu_iGPWkRisAmRQbJLWXA@mail.gmail.com>
Subject: Re: [PATCH v4 0/7] x86/boot: Remove runtime relocations from
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
 header.i=@gmail.com header.s=20161025 header.b=c9vLiUrX;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::144
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

On Tue, Jul 14, 2020 at 4:38 AM Arvind Sankar <nivedita@alum.mit.edu> wrote:
>
> The compressed kernel currently contains bogus runtime relocations in
> the startup code in head_{32,64}.S, which are generated by the linker,
> but must not actually be processed at runtime.
>
> This generates warnings when linking with the BFD linker, and errors
> with LLD, which defaults to erroring on runtime relocations in read-only
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
> generates runtime relocations for absolute symbols. We use z_input_len
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
> runtime relocations get reintroduced.
>
> [0] https://lore.kernel.org/lkml/20200504230309.237398-1-ndesaulniers@google.com/
>

How to test this series without building a full new kernel?

make $make_opts vmlinux

- Sedat -

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
>
> Ard Biesheuvel (3):
>   x86/boot/compressed: Move .got.plt entries out of the .got section
>   x86/boot/compressed: Force hidden visibility for all symbol references
>   x86/boot/compressed: Get rid of GOT fixup code
>
> Arvind Sankar (4):
>   x86/boot: Add .text.* to setup.ld
>   x86/boot: Remove run-time relocations from .head.text code
>   x86/boot: Remove runtime relocations from head_{32,64}.S
>   x86/boot: Check that there are no runtime relocations
>
>  arch/x86/boot/compressed/Makefile      |  37 +-----
>  arch/x86/boot/compressed/head_32.S     |  99 +++++----------
>  arch/x86/boot/compressed/head_64.S     | 165 ++++++++++---------------
>  arch/x86/boot/compressed/mkpiggy.c     |   6 +
>  arch/x86/boot/compressed/vmlinux.lds.S |  24 +++-
>  arch/x86/boot/setup.ld                 |   2 +-
>  drivers/firmware/efi/libstub/Makefile  |   2 +-
>  drivers/firmware/efi/libstub/hidden.h  |   6 -
>  include/linux/hidden.h                 |  19 +++
>  9 files changed, 152 insertions(+), 208 deletions(-)
>  delete mode 100644 drivers/firmware/efi/libstub/hidden.h
>  create mode 100644 include/linux/hidden.h
>
>
> base-commit: 11ba468877bb23f28956a35e896356252d63c983
> --
> 2.26.2
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUXSPfybFtzQB3wKn9spQmEPnQu_iGPWkRisAmRQbJLWXA%40mail.gmail.com.
