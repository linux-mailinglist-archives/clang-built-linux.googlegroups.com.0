Return-Path: <clang-built-linux+bncBD63HSEZTUIBB3G6VX3AKGQEL6WBQ4Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13e.google.com (mail-il1-x13e.google.com [IPv6:2607:f8b0:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A7951E0780
	for <lists+clang-built-linux@lfdr.de>; Mon, 25 May 2020 09:10:38 +0200 (CEST)
Received: by mail-il1-x13e.google.com with SMTP id j69sf14527410ila.21
        for <lists+clang-built-linux@lfdr.de>; Mon, 25 May 2020 00:10:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590390636; cv=pass;
        d=google.com; s=arc-20160816;
        b=UAnki4g5g6mW6nkCO7r5sq97876gEc78tDhjwDNv2Rpd1+4HG7fqN2CTcTvbMNtdVQ
         TQ/TtzmZTq54221cPKg6G1I8kD/PbijmPKR4qs8UdS5dGanrhQeyvhY8XDOofEYCoO8m
         TXGPRlpM4eCatqLoJhvOI3rR8GR6CVbNsqhNj6uMaJFjlBFSx0CXRB+Pj8K30Q0SZAmQ
         g8DTkDZr75amrhm0/WiuvqwGqG1Fle4Uf5zvzVxC55IAj7HAzjyUU4WSdpZbunMUaWgi
         OMP1bGua8l6JRKrx5Q80jYxCjrUCmZaYsVbYcXuNih0JdQlE0FBSZqhRqh35xeINVCVW
         Kziw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=jxz6jOxkFBIBqD86gXe7p8LDusEgPLc4Cvl+J2IZlfg=;
        b=ly4Smwv3J8iPWZKXy1stLp6u/sPcbKtGM148Y6YyL/8Dv3GmcGQ4KBSejWqt+4qtap
         GSrr0rtEHWH9nhXOL2Q/qYuoijHiG/Qw5CiGIR5KCOIUFUVVRRZbsWhBDIRQu4c5HRUX
         aJgFoJ9FtuTtygK4jQM3Y4DK8hBWhS91UAsS4RRDfo5xUUweGMWCTJT1Ln/7AGz0xrB6
         jaTifRCyBvITOGTRxhleYTzs0kkZga8cPDicrIZulqBoOOY7lYjyWzKkOzj1J50aeg5m
         mU0cuGenoRlg1u2LXo0l1TwEQ9VuPTRpVuBUkssev5LkTfhNutta7X54NndHHYY6yygW
         57Ig==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=yqtYl4IJ;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jxz6jOxkFBIBqD86gXe7p8LDusEgPLc4Cvl+J2IZlfg=;
        b=UcLYAEbL0Gn73euFAAxCMZnekfqDvakHT2cBjqtA7Sr12Nu3DNmzTDLg5npETDlsC6
         uxUCbMCaPwwEYrJ7gVxG9oi2y9P5fUiZ18TYw9dHcd9AdOWNER5JgOHAoFJZjQMdd1ua
         kCsR6ax8QEt/7Gcmxp/0U+VUFlmBKDLfyDmdSR6Stg/buRz4QGZu/z0SdQm8hwqEIJx2
         ydej9nPsCR0WndCiLPf/XedmI3+l62Zp0iMcIX9D0bd3qhKgvbsLvTPaOgQkMzhnOcI/
         YT43hsV7eqHd/zaHbQBmoNdcvUAXXm5edB5tjPd/eMXDj2V0Nn0K7raPwb0az2PIJr1h
         ocSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jxz6jOxkFBIBqD86gXe7p8LDusEgPLc4Cvl+J2IZlfg=;
        b=M5/EHws0BKEHPIfSY2xpUkJcbiRIz0mL2nFqeaCR7srchBEJAv4TWwXJ5LEQCIQsZg
         xTtcKcdj3cXUBccBi/k8hOkNIqZRGzS0WLdNxzIAWCk/LyS0Qf7Yx7ePQyxjBr7fQxrs
         A7d/BygYoLKdUs4rjgP1iXrQNNhF2hZW8AQLsv0g7aAKQ2Q8pHOQBD5th13dN6q3pmRh
         fuX4NoMtQ1T0lBsV7GztA1oPpiDe18rWglgmmTavtqEQSajZDA9OmTtNIPmfXPj8JChf
         5PXiKz1lrAOwPqnQnzoOrHMOK/u3xLz9BlGx9MBWX+I34eLqNwZ7bmmq3otbbGKDb92P
         ZMzg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533MUAA6IJvth6x+7fdZkAt5FZsZz7fGu/yOibr55w9vstE68jJB
	hlf3kIZu4Ud4ZsEF03R8AaY=
X-Google-Smtp-Source: ABdhPJxdRdW+yVfPYzikME9kqfcCgETyf4fIgX2tIzEubvgOLwPJxtGz+OIra+6F5aejAX4OlNESdA==
X-Received: by 2002:a02:9f90:: with SMTP id a16mr12829834jam.65.1590390636764;
        Mon, 25 May 2020 00:10:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:4ec5:: with SMTP id r188ls899119jaa.6.gmail; Mon, 25 May
 2020 00:10:36 -0700 (PDT)
X-Received: by 2002:a02:c9d3:: with SMTP id c19mr18842659jap.80.1590390636349;
        Mon, 25 May 2020 00:10:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590390636; cv=none;
        d=google.com; s=arc-20160816;
        b=HwSBGbYaPgLexCjhd/RH9S7wjUzKfRvOfDpSk1oiwkGylq/EP2DCw+EPB7lhIhObb/
         BAPxoaVgwJMrvVE96PmMyg6mSgyfVPU33mtOkPoxaCt6Ldobsg7IAmomGPuQPsqn3eV9
         CZ/0iKk1sBhCcJcR/+Wb7fYFr3xtv83t+pZm4Pj0IQ2XxaKT55AWC74/vqLzvSe/u1Dp
         Nb37IZQPZ6L9NuZMf9uzor//LCYwtDB82jQqmQNDub6rx2sVCS8BzYgC13P/81BmhwF1
         OQ7B5W0x0PEcOpK+xEC2VhczPNXSXInQnJ3mSlw3wngBEssW20AZdOHkFMYfmBe7aAdA
         u3yw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=u2iebytGt3HDrryOb1ImagvMxEGCgWBbb8SguV5hS4c=;
        b=RhdoVVpvrUEdDMF5A6liByLZA6DqTjPnZvF0geF34IEuvMt6lKYVQqfn/j4fNnb2eM
         1INAUCBRuSy0Iucvc7h8T9Tr4DkPzBcvX6WVBa3zlYUm/npRwLYGe0d36mXb5uctklFd
         zU/aHHlMe5eGDvu2VIDRBU0CzpLHEUwgZC3wSCBGpNBb4bcpqIjtAi9psIbkHLCtT4CB
         Yunv6Qo8uIbZX2Eb0r7MzspRxp45FCLRAMNOdtQSdbkR2J0X952Q+1MPbiCKKwWq7caX
         M5SYN91s7KbsR/BNYDAPpE5/5qNhzUGobi+BRrYu9CPGBufA0YL62hy8GeZkBqrzx0BX
         DAVA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=yqtYl4IJ;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d3si1135624ilg.0.2020.05.25.00.10.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 May 2020 00:10:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-il1-f175.google.com (mail-il1-f175.google.com [209.85.166.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 5B7AF208B6
	for <clang-built-linux@googlegroups.com>; Mon, 25 May 2020 07:10:35 +0000 (UTC)
Received: by mail-il1-f175.google.com with SMTP id l20so16437421ilj.10
        for <clang-built-linux@googlegroups.com>; Mon, 25 May 2020 00:10:35 -0700 (PDT)
X-Received: by 2002:a92:5ec1:: with SMTP id f62mr20829058ilg.80.1590390634564;
 Mon, 25 May 2020 00:10:34 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOd=qB+EoJwfAYUA9Hg7f9op4Q4W+TDnht8pLRG5bPX=29Q@mail.gmail.com>
 <20200524212816.243139-1-nivedita@alum.mit.edu>
In-Reply-To: <20200524212816.243139-1-nivedita@alum.mit.edu>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Mon, 25 May 2020 09:10:23 +0200
X-Gmail-Original-Message-ID: <CAMj1kXGStGW4tZXs5rQoSZaRqGvxHrmLF4_jUYiY9jRuCjYgoA@mail.gmail.com>
Message-ID: <CAMj1kXGStGW4tZXs5rQoSZaRqGvxHrmLF4_jUYiY9jRuCjYgoA@mail.gmail.com>
Subject: Re: [PATCH 0/4] x86/boot: Remove runtime relocations from compressed kernel
To: Arvind Sankar <nivedita@alum.mit.edu>, Ingo Molnar <mingo@redhat.com>, 
	Borislav Petkov <bp@alien8.de>
Cc: Thomas Gleixner <tglx@linutronix.de>, "H. Peter Anvin" <hpa@zytor.com>, X86 ML <x86@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Fangrui Song <maskray@google.com>, 
	Dmitry Golovin <dima@golovin.in>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Daniel Kiper <daniel.kiper@oracle.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=yqtYl4IJ;       spf=pass
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
> The compressed kernel currently contains bogus runtime relocations in
> the startup code in head_{32,64}.S, which are generated by the linker,
> but must not actually be processed at runtime.
>
> This generates warnings when linking with the BFD linker, and errors
> with LLD, which defaults to erroring on runtime relocations in read-only
> sections. It also requires the -z noreloc-overflow hack for the 64-bit
> kernel, which prevents us from linking it as -pie on an older BFD linker
> (<= 2.26) or on LLD, because the locations that are to be apparently
> relocated are only 32-bits in size and so cannot normally have
> R_X86_64_RELATIVE relocations.
>
> This series aims to get rid of these relocations. It is based on
> efi/next (efi-changes-for-v5.8), where the latest patches touch the
> head code to eliminate the global offset table.
>

Note: I dropped my decompressor linker script changes from that tag,
but they are still at the top of the efi/next branch.

Given these changes to go on top, I think it is better to merge all of
them separately, and let the x86 maintainers decide how and when.
(I can prepare a branch and a separate PR if desired)

For the series (modulo one nit in a separate reply)

Reviewed-by: Ard Biesheuvel <ardb@kernel.org>



> The first patch is an independent fix for LLD, to avoid an orphan
> section in arch/x86/boot/setup.elf [0].
>
> The second patch gets rid of almost all the relocations. It uses
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
> The third patch addresses a remaining issue with the BFD linker, which
> insists on generating runtime relocations for absolute symbols. We use
> z_input_len and z_output_len, defined in the generated piggy.S file, as
> symbols whose absolute "addresses" are actually the size of the
> compressed payload and the size of the decompressed kernel image
> respectively. LLD does not generate relocations for these two symbols,
> but the BFD linker does. To get around this, piggy.S is extended to also
> define two u32 variables (in .rodata) with the lengths, and the head
> code is modified to use those instead of the symbol addresses.
>
> An alternative way to handle z_input_len/z_output_len would be to just
> include piggy.S in head_{32,64}.S instead of as a separate object file,
> since the GNU assembler doesn't generate relocations for symbols set to
> constants.
>
> The last patch adds a check in the linker script to ensure that no
> runtime relocations get reintroduced. Since the GOT has been eliminated
> as well, the compressed kernel has no runtime relocations whatsoever any
> more.
>
> [0] https://lore.kernel.org/lkml/20200521152459.558081-1-nivedita@alum.mit.edu/
>
> Arvind Sankar (4):
>   x86/boot: Add .text.startup to setup.ld
>   x86/boot: Remove runtime relocations from .head.text code
>   x86/boot: Remove runtime relocations from head_{32,64}.S
>   x86/boot: Check that there are no runtime relocations
>
>  arch/x86/boot/compressed/Makefile      | 36 +---------
>  arch/x86/boot/compressed/head_32.S     | 59 +++++++--------
>  arch/x86/boot/compressed/head_64.S     | 99 +++++++++++++++-----------
>  arch/x86/boot/compressed/mkpiggy.c     |  6 ++
>  arch/x86/boot/compressed/vmlinux.lds.S | 11 +++
>  arch/x86/boot/setup.ld                 |  2 +-
>  6 files changed, 109 insertions(+), 104 deletions(-)
>
> --
> 2.26.2
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMj1kXGStGW4tZXs5rQoSZaRqGvxHrmLF4_jUYiY9jRuCjYgoA%40mail.gmail.com.
