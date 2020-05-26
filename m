Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBNEXWT3AKGQEJ2DVACQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 054291E21E1
	for <lists+clang-built-linux@lfdr.de>; Tue, 26 May 2020 14:29:43 +0200 (CEST)
Received: by mail-pf1-x43a.google.com with SMTP id r137sf16593516pfr.17
        for <lists+clang-built-linux@lfdr.de>; Tue, 26 May 2020 05:29:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590496180; cv=pass;
        d=google.com; s=arc-20160816;
        b=PWrw1Iw/Bi55OdvaurUtc4iS+pS6cMdyalVzAG2OkvLXsio/yibAsdHf2Cna5aV2L6
         bKSbx2iMIb0Z0xiox0ElB4C+kJeUx1H0+G+RCgVTaIFezhjEjjHmHMGpR5Ml81aSlFVO
         sDsX3WtICuNwcTiHWgjd6rFGCYsTWsvG8Q09Mmeh4e+g+LfprS4nDHi3h+KE32MZqUe8
         uX9IgLBlbM/J2AC+tjSc6DmA1UY/HdZ2BuYf9Mp+GdzcuMKwscry6fgjOO4W6Ip1VOQp
         TLbJN5Pu9doVoApZgouigjkH2+mYueF0xYyft6mFiVi15a8NltWjyOtVgIRhrg1tKSKW
         p0hQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=HhBcnfzcijmkbSzeT5yB8Bf6qKz6nkofwTUZdce7BOw=;
        b=eN3X+LaTxdlN4u0AAgbvgvLDhKFavEt6OUNqEWX72HOMC1EmkxbL+hjBVI1Lx4TNc3
         LOEIEJfgX0giBBJF9b7H41v3m+vUOgOwW/lE/96h7+g30VNVL/ielzDCHxolvqjyCk+W
         tvnygKwotn5sxcBiYFLhhZRduP8k2Ss6OZ7TQA1RaYAbOm6NKlu4NXfZ/1msH9nRWw95
         eWOBFgrsSp9G4tcerrdoRfQmmayWOjl+EFeg6Ce9E4YEoITPYSOynT2liedV/C3nmv8x
         XHtjINesKrdTQxWa+AOCm1JX9noA2HpCo8B9y8BYM/UM8p6zx5gXcdTVWqcisXTtlbQj
         uZRg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RUDwiQ8S;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d43 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=HhBcnfzcijmkbSzeT5yB8Bf6qKz6nkofwTUZdce7BOw=;
        b=a5dlAzx/+/AvDL+QthfPn72SyOBoWYX1cAG7SZyCMknnyqmfi1OaicFraAU22eCwfY
         GEbLM3t1BS6mqbcznuhbkvQd0rI+hWszLDe0CGIJ7BC2mwFVnyL4EqrHrbeGld+15fJt
         SEG/uuOt4cdAH6GhT/2V8VDQkojq0bIbZSnaFvSl1UydxHwWe8dG4R2f5Pb4a4ymaFkH
         i5mLbou1tLLWAx1yVIB4otbCwP6Jz2Ry6yHexNKxfyue4OYuXQgKkFYx6e9sT4QPvM9u
         55SjqFmIwtkpW7DPHHEPcuhnOFlqe7UEzODFSeiyqdJGIGxwlh9Reidt5cssgyIWznIC
         WKIw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HhBcnfzcijmkbSzeT5yB8Bf6qKz6nkofwTUZdce7BOw=;
        b=vWFTwfwo6xRz8R47xN4YLcKRV2ImZsKHinUq0FafumJpdwpFDd7N5xGRAAiMXADacT
         3T2qr40JreZAoywsRLZZ4SF0SlLL/PaenLQvpVbHmFDbBJpWlOikriGuf+mu/S45Kjif
         r4z+4YlF1ivw2IJRFuYn6WrPLtpgZR2+9oISYyQaVvD23BuQl4MMyokVciyTscCZajm8
         eBK3IbKks7/Lxej278E4Hmmjx99bGQXBnP13Mp/d8v4Dv2trPSN+I0NI1osFzATpfBmF
         zefT2T9NMTh1bFuu6/4J26biKPeocWTsImgd7JX309xeux0dc6SpjpNB0pCTAgceeV7q
         2JKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HhBcnfzcijmkbSzeT5yB8Bf6qKz6nkofwTUZdce7BOw=;
        b=b9SpsV2RJMaUx1bevmL/a9Y+jM+OQvSBVeRNssUwDhkPtgZ6oVBgG4kII6Pj7BSJqY
         L2mLeubvNUhAGIFNZX7i4D+HbG1EFuD+brhJzypoD7y9pK7LYJ2aCq/A0yQ2HGCcjM45
         pYYuKyMC5iBdw9AvzE/Nlhspstpmz6qAxo4G2lywWxDCtIIRLvbQoVFWpdTxXd6Jet9j
         xEkAXhc9it9+8ligJkAefrAIlpKmr7/0qrlO2gifhDrvJZeSUSBYtohfXeKFeQ1xx9PN
         4IADkgQMpkiU50xSdK4RXBub1zp94qlVvkfskJezHYsOuEs3/4r7mEFw89ODuGgiOtUn
         z4iQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531bgRJ5IRV7J+yTnHdITDb3I1XpMauaQWxnlHHw+c5pRPwjPjRP
	wMwKvQoxB6iX78MTbYl4sJc=
X-Google-Smtp-Source: ABdhPJwIgYef5jVes+DtUF8yX6PzsUAR1RzDwDklRWiFAUIWQf8bEqp+9yve663mSw4utztsGXlo3A==
X-Received: by 2002:a62:b503:: with SMTP id y3mr22166306pfe.3.1590496180250;
        Tue, 26 May 2020 05:29:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:7604:: with SMTP id s4ls5968174pjk.1.gmail; Tue, 26
 May 2020 05:29:39 -0700 (PDT)
X-Received: by 2002:a17:902:aa4a:: with SMTP id c10mr932505plr.0.1590496179808;
        Tue, 26 May 2020 05:29:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590496179; cv=none;
        d=google.com; s=arc-20160816;
        b=Fdw0pOurEwQVdZsse5R5umz/qyi2r+37BawFNNE4DH6zym3HZinAdHEQvTuI1M0tDg
         tLJVc2tLaYPJ3zAp4NObnKB3PAVqZBXgnSf3v16W1mTUk30yIpUD+35Y/u9QtQLm2pp6
         TVgkn58btKL0O/AEam7MYX0tbljGXBGpRxswsiq5i84E/MezcBdRQgwmR5KKnLXHx7B6
         LjK+cvJjhj0jeY8IO3I8GQ4bQ4CqwQBd3EmpjV1GMfpH97eS87pg+O6mCzzv54WiPOEV
         Wj7C6UZrOpW876nTk+pWnQKFLa+cLS880xcyFWr+ibxsoGlYB2uPCJ1lBK//yMVVilx0
         M3eg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=PHdiDb5Mr94WWWQ3Mnyn3fpsR2uXfxFeRBM2541NcjE=;
        b=n+8HDyXzBi6JC3IjEVKhIPSPljmFNndUzVVb9cj6xnltOVaUMMZcp9YnNHFwwGlUqy
         R5b9E8tmfuW0pizSBVqI7Oamq+Mi2NIb42Uf3eACgswuu0YYwtThawYbOGChMwR/LMJc
         vcovaGi7+ADKVITXPn/JPigQtx4lkHXdXf91efG6oiCtZqriHyj4oU0CyA3DxVWw7FrO
         X7YpMv0fbd6AMOnSCI28oD49IJ/FYX3zne1YwaIn12SB1QkPlLI/ArEGkUz7xiks9cT6
         GNQsmniefrCuqZUCFvYpt4tq4pfQKnXIWkYIOr62lhxtB0NIRgjlX6XxITOhvmq4tyVd
         7ndA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RUDwiQ8S;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d43 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd43.google.com (mail-io1-xd43.google.com. [2607:f8b0:4864:20::d43])
        by gmr-mx.google.com with ESMTPS id b5si1074081pjn.0.2020.05.26.05.29.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 May 2020 05:29:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d43 as permitted sender) client-ip=2607:f8b0:4864:20::d43;
Received: by mail-io1-xd43.google.com with SMTP id y18so1268178iow.3
        for <clang-built-linux@googlegroups.com>; Tue, 26 May 2020 05:29:39 -0700 (PDT)
X-Received: by 2002:a02:ca18:: with SMTP id i24mr742148jak.70.1590496177978;
 Tue, 26 May 2020 05:29:37 -0700 (PDT)
MIME-Version: 1.0
References: <20200524212816.243139-1-nivedita@alum.mit.edu> <20200525225918.1624470-1-nivedita@alum.mit.edu>
In-Reply-To: <20200525225918.1624470-1-nivedita@alum.mit.edu>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Tue, 26 May 2020 14:29:27 +0200
Message-ID: <CA+icZUVa8FhhwHgXn1o_hFmgqFG6-KE1F+qvkdCzQjmSSSDWDw@mail.gmail.com>
Subject: Re: [PATCH v2 0/4] x86/boot: Remove runtime relocations from
 compressed kernel
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	"H. Peter Anvin" <hpa@zytor.com>, x86@kernel.org, Nick Desaulniers <ndesaulniers@google.com>, 
	Fangrui Song <maskray@google.com>, Dmitry Golovin <dima@golovin.in>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, Ard Biesheuvel <ardb@kernel.org>, 
	Masahiro Yamada <masahiroy@kernel.org>, Daniel Kiper <daniel.kiper@oracle.com>, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=RUDwiQ8S;       spf=pass
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

On Tue, May 26, 2020 at 12:59 AM Arvind Sankar <nivedita@alum.mit.edu> wrote:
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
> efi/next, where the latest patches touch the head code to eliminate the
> global offset table.
>
> The first patch is an independent fix for LLD, to avoid an orphan
> section in arch/x86/boot/setup.elf.
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
> but the BFD linker does, prior to the upcoming 2.35. To get around this,
> piggy.S is extended to also define two u32 variables (in .rodata) with
> the lengths, and the head code is modified to use those instead of the
> symbol addresses.
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
> Changes from v1:
> - Add .text.* to setup.ld instead of just .text.startup
> - Rename the la() macro introduced in the second patch for 64-bit to
>   rva(), and rework the explanatory comment.
> - In the last patch, check both .rel.dyn and .rela.dyn, instead of just
>   one per arch.
>

Hi,

I would like to test this patchset v2 on top of Linux v5.7-rc7 together with:

[1] x86/boot: Discard .discard.unreachable for arch/x86/boot/compressed/vmlinux
[2] x86/boot: Correct relocation destination on old linkers

I tried to pull efi/next on top of Linux v5.7-rc7 and cleaned up the
merge problems, but I am not sure I did it correctly.
So, which patches are really relevant from efi/next?

What's your suggestions?

Regards,
- Sedat -

[1] https://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git/patch/?id=d6ee6529436a15a0541aff6e1697989ee7dc2c44
[2] https://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git/patch/?id=5214028dd89e49ba27007c3ee475279e584261f0

> Arvind Sankar (4):
>   x86/boot: Add .text.* to setup.ld
>   x86/boot: Remove run-time relocations from .head.text code
>   x86/boot: Remove runtime relocations from head_{32,64}.S
>   x86/boot: Check that there are no runtime relocations
>
>  arch/x86/boot/compressed/Makefile      |  36 +--------
>  arch/x86/boot/compressed/head_32.S     |  59 +++++++-------
>  arch/x86/boot/compressed/head_64.S     | 108 +++++++++++++++----------
>  arch/x86/boot/compressed/mkpiggy.c     |   6 ++
>  arch/x86/boot/compressed/vmlinux.lds.S |   8 ++
>  arch/x86/boot/setup.ld                 |   2 +-
>  6 files changed, 115 insertions(+), 104 deletions(-)
>
> --
> 2.26.2
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200525225918.1624470-1-nivedita%40alum.mit.edu.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUVa8FhhwHgXn1o_hFmgqFG6-KE1F%2BqvkdCzQjmSSSDWDw%40mail.gmail.com.
