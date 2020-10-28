Return-Path: <clang-built-linux+bncBDYJPJO25UGBBFHM436AKGQERIRDKZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43b.google.com (mail-pf1-x43b.google.com [IPv6:2607:f8b0:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id E099529D170
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Oct 2020 19:19:01 +0100 (CET)
Received: by mail-pf1-x43b.google.com with SMTP id 62sf134306pfv.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Oct 2020 11:19:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603909140; cv=pass;
        d=google.com; s=arc-20160816;
        b=VYMMOcDn/cLqpiLe/oX9hBxLlvMIHZcPVbWpvxpOnyUcnSkq8Qga8D9nGR1xv1Tv5g
         wr0wCu9uIyU8efn5duFgsPUnAX1aKGWDmsR8GP6c0/vHuIMZgv+CKhTgVe1y+GByaSW4
         92ww5ChPE9X+GCzk6+T18ba4beXZGYGr+9+C2dp9DpncIAiy63EgXo7tXa67+xvZ6Wfn
         AxBxGmvUx+PDAYvMRBseZtni54x4og1LF1X3YeyrV7zHGkURYdi7ZAlT9u15HAJ4CzXk
         PEqFATJXIrVnSjQdj+lFxiwihasMkslkY5ERYKqoL+Nys/Ys9qHzZP98FMadtSdxDVRg
         hGqw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=PRwzTfNLr/ErSFkFPZmsEJC4KkxnLV20BZjGNLggZFA=;
        b=I10DVy6DAloKtR7QWonv+0uPAPYUx5XXnvkBEDW7jWopPiVXmGFxiau0+aZ+QehEPV
         uycMzG2ajWp46txhOap6IIyZFWt5vnsKBWV84206p58GiUGwdasQelbwRjatZV30c32T
         uJe3GACH0Ur6aPCnwwtWmJK1KlPnAXcMTB0IFLNfYaFMCG+Q7QboPqrGr1etlj18QP2V
         18C0GIofY+ufPQvxjaWVRAMVCxdpl7WphSq63XzhVNRv/Nbd0/7mErJb1UdUcOJ/RLCx
         AJ58rzGAkIcRLeOITKy83zb+9ywJUf6NATFTgzgZIg0xcRU3zUtGas1Vw7mMZM6Z1bqQ
         RRJA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=KkBE6NzB;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::944 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PRwzTfNLr/ErSFkFPZmsEJC4KkxnLV20BZjGNLggZFA=;
        b=jHTXqGbe39fbTmAw/psofzWR0lz65szN7+2g/lIi521JxkPv2R3PksNxODrl5ue9RK
         BM167qMJaS7lVOIgAUFaPgw4IOPgwJDyijIKF1SOPiSsx+qlB4TfM1d7IInDNpWZ4Jo9
         7B13R7LSAcMljUvZxTdH/qL/yyAFrWqq7eENWZvG4bkAzL5WHnUXzjEzgJ1pKzklSR6o
         5kVTKNs6NQPzx4t+teXuK2wnDh/sSUPUQXs+a8PnBpxEC7LlgKM7MxYR8zaJXHFDp6Cs
         kxsenDSjm8KBtypjXyXkXn7weEKfDsnwsIml8pysqoHzTL4CINEZu4rmgQ4q5zkdD0E9
         me4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PRwzTfNLr/ErSFkFPZmsEJC4KkxnLV20BZjGNLggZFA=;
        b=d8tB6gsiey2B/7MW1VGVkFdaJi4SCE6EEPp9uGKSUNcubMCarefstqMDKrgiAycT/f
         sk+59eS+YC+yAb4th7nfYz5/LKZGUGrPKjpmjAHQJLINisKZa5a24/Esm44Xa3Ib7sUP
         UC8X53EykmDx/xQyD1kjx1xFndF9+rLejCvaTt4DufMTGm59tmtdyXXTR0eFPfC+sPp+
         PSUMwIrvisNJ9PwjSt9YVv7pJg3AeKbW+YLhJ1GOZuBkzb5XyHWjvGM524uZIoiAOLde
         LCkO0n7uYmCYlmNBfjFkMCRICY6pUHiegQAg47WXCTB02uLVstG4ll0FNVvJHvMEGJ5r
         EQ8g==
X-Gm-Message-State: AOAM531zJBAXqdUT6hce4OqGMCotpzwWd59karbJL27v0mSWbN3zLnvS
	+PP7m/ts9TzLAXBsLiMFDRo=
X-Google-Smtp-Source: ABdhPJx0iL/25Tfhr9c96LZ04tU2jVuCUzBa7kntwGBXB4Sgb5nMVbXHpNmcf1ixE3k+hw8/siDh7g==
X-Received: by 2002:a17:902:8215:b029:d5:f299:8b11 with SMTP id x21-20020a1709028215b02900d5f2998b11mr311635pln.39.1603909140541;
        Wed, 28 Oct 2020 11:19:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:1884:: with SMTP id 126ls65214pfy.8.gmail; Wed, 28 Oct
 2020 11:19:00 -0700 (PDT)
X-Received: by 2002:aa7:8588:0:b029:155:7861:4c47 with SMTP id w8-20020aa785880000b029015578614c47mr250173pfn.14.1603909139946;
        Wed, 28 Oct 2020 11:18:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603909139; cv=none;
        d=google.com; s=arc-20160816;
        b=vbAj1WP2JHxDtTgHEhpeU8Emf+diqPmL/ogCqpsFz6IEg1kkjLhQPjAGNUPtwU1HRZ
         s/qdDrsZKPdw6Trgy1prnZ6PytdFGfleuwQoeuuyIji0d5QgMCWWWPcsPdSF10fPR/uX
         97Cf9/huRfr0RGs7TzyP7j9uthnhA9b98u+3+GdIry0V0kzEY0IvEAi9kNTFotOuoa8G
         VFNvA4iNmJlpJqv3vNOYrDPRVSRdjsjMjKwqyFDtGwhzpibXR1qVYcbKg334dKLf24IA
         zuysZCws1tNd9CuKrcy9mARk6rJ+VlTExjufIAKBk0PSJhT5MLHXyv+JzFJHrv7OMv0W
         KkJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=dp0UWTgUnOTXltTsDwB/n1hr3PG+m86O0km4OU6Mz58=;
        b=lVGp8z+dQa30oU+BKK12BnPUi22jNYsvXrJJ8vcZ1EXRrYEU3LSpwn1pNtX5lVuPdc
         eqDjKf3KTZrHIFTTln98/nlKMFLViAYV6ejk6HcBG9uAbGmCuvfWMF6vH9JVv4MbhcDq
         aduQIL9r3718VJ/31AJ5M7CV49d0RvkK7eoBJoxE8DG03Y9JpPw1pIrN/Srhi4H/Ursu
         pOR0/hQfuLiJddkL5VHv0HHUWQEcEVTmr00p/wTSGeTsK3QRDC+xO3hoAfwECgj0c510
         PZSu6MP7FWw2/sZO4yqEpNeo0lFj96kiXm8u12B7V5vqI/T3uBKeLyzmsFvDpM/vdAKP
         yQwg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=KkBE6NzB;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::944 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ua1-x944.google.com (mail-ua1-x944.google.com. [2607:f8b0:4864:20::944])
        by gmr-mx.google.com with ESMTPS id t22si15674pjr.2.2020.10.28.11.18.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Oct 2020 11:18:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::944 as permitted sender) client-ip=2607:f8b0:4864:20::944;
Received: by mail-ua1-x944.google.com with SMTP id t15so1788322ual.6
        for <clang-built-linux@googlegroups.com>; Wed, 28 Oct 2020 11:18:59 -0700 (PDT)
X-Received: by 2002:ab0:335a:: with SMTP id h26mr747527uap.62.1603909138975;
 Wed, 28 Oct 2020 11:18:58 -0700 (PDT)
MIME-Version: 1.0
References: <20201022012106.1875129-1-ndesaulniers@google.com>
In-Reply-To: <20201022012106.1875129-1-ndesaulniers@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 28 Oct 2020 11:18:47 -0700
Message-ID: <CAKwvOdnudUv0Z4ai-6==M5fKjWEFQUb9_CEcRfQJeX4ZS5XFjw@mail.gmail.com>
Subject: Re: [PATCH] Kbuild: implement support for DWARF5
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, linux-toolchains@vger.kernel.org, 
	Fangrui Song <maskray@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=KkBE6NzB;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::944
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

Hi Masahiro,
I plan to incorporate Fangrui's recommendation into a v2.  Do you have
additional thoughts on changes I should make in v2? Have you had the
chance to test the patch? Should I split it into a series?  What do
you think about the Kconfig `choice` changes?

On Wed, Oct 21, 2020 at 6:21 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> DWARF5 is the latest standard of the DWARF debug info format.
>
> Feature detection of DWARF5 is onerous, especially given that we've
> removed $(AS), so we must query $(CC) for DWARF5 assembler directive
> support. Further -gdwarf-X where X is an unsupported value doesn't
> produce an error in $(CC). GNU `as` only recently gained support for
> specifying -gdwarf-5.
>
> The DWARF version of a binary can be validated with:
> $ llvm-dwarfdump vmlinux | head -n 5 | grep version
> or
> $ readelf --debug-dump=info vmlinux 2>/dev/null | grep Version
>
> DWARF5 wins significantly in terms of size when mixed with compression
> (CONFIG_DEBUG_INFO_COMPRESSED).
>
> 363M    vmlinux.clang12.dwarf5.compressed
> 434M    vmlinux.clang12.dwarf4.compressed
> 439M    vmlinux.clang12.dwarf2.compressed
> 457M    vmlinux.clang12.dwarf5
> 536M    vmlinux.clang12.dwarf4
> 548M    vmlinux.clang12.dwarf2
>
> Make CONFIG_DEBUG_INFO_DWARF4 part of a Kconfig choice to preserve
> forward compatibility.
>
> Link: http://www.dwarfstd.org/doc/DWARF5.pdf
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
> RFC because this patch is super half baked, but I'm looking for
> feedback.
>
> I would logically split this into a series of patches;
> 1. disable -Wa,gdwarf-2 for LLVM_IAS=1, see also
>   https://github.com/ClangBuiltLinux/linux/issues/716
>   https://github.com/ClangBuiltLinux/continuous-integration/blob/master/patches/llvm-all/linux-next/arm64/silence-dwarf2-warnings.patch
>   that way we can backport for improved LLVM_IAS support.
> 2. move CONFIG_DEBUG_INFO_DWARF4 to choice.
> 3. implement the rest on top.
>
> I'm pretty sure GNU `as` only recently gained the ability to specify
> -gdwarf-4 without erroring in binutils 2.35, so that part likely needs
> to be fixed.
>
>  Makefile                          | 19 ++++++++++++++++---
>  include/asm-generic/vmlinux.lds.h |  6 +++++-
>  lib/Kconfig.debug                 | 29 +++++++++++++++++++++++++----
>  scripts/test_dwarf5_support.sh    |  4 ++++
>  4 files changed, 50 insertions(+), 8 deletions(-)
>  create mode 100755 scripts/test_dwarf5_support.sh
>
> diff --git a/Makefile b/Makefile
> index e71979882e4f..0862df5b1a24 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -828,10 +828,23 @@ else
>  DEBUG_CFLAGS   += -g
>  endif
>
> -KBUILD_AFLAGS  += -Wa,-gdwarf-2
> -
> +DWARF_VERSION=2
>  ifdef CONFIG_DEBUG_INFO_DWARF4
> -DEBUG_CFLAGS   += -gdwarf-4
> +DWARF_VERSION=4
> +endif
> +ifdef CONFIG_DEBUG_INFO_DWARF5
> +DWARF_VERSION=5
> +endif
> +DEBUG_CFLAGS   += -gdwarf-$(DWARF_VERSION)
> +
> +ifneq ($(DWARF_VERSION)$(LLVM_IAS),21)
> +KBUILD_AFLAGS  += -Wa,-gdwarf-$(DWARF_VERSION)
> +endif
> +
> +ifdef CONFIG_CC_IS_CLANG
> +ifneq ($(LLVM_IAS),1)
> +KBUILD_CFLAGS  += -Wa,-gdwarf-$(DWARF_VERSION)
> +endif
>  endif
>
>  ifdef CONFIG_DEBUG_INFO_REDUCED
> diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
> index cd14444bf600..0382808ef9fe 100644
> --- a/include/asm-generic/vmlinux.lds.h
> +++ b/include/asm-generic/vmlinux.lds.h
> @@ -828,7 +828,11 @@
>                 .debug_types    0 : { *(.debug_types) }                 \
>                 /* DWARF 5 */                                           \
>                 .debug_macro    0 : { *(.debug_macro) }                 \
> -               .debug_addr     0 : { *(.debug_addr) }
> +               .debug_addr     0 : { *(.debug_addr) }                  \
> +               .debug_line_str 0 : { *(.debug_line_str) }              \
> +               .debug_loclists 0 : { *(.debug_loclists) }              \
> +               .debug_rnglists 0 : { *(.debug_rnglists) }              \
> +               .debug_str_offsets 0 : { *(.debug_str_offsets) }
>
>  /* Stabs debugging sections. */
>  #define STABS_DEBUG                                                    \
> diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
> index 537cf3c2937d..6b01f0e2dad8 100644
> --- a/lib/Kconfig.debug
> +++ b/lib/Kconfig.debug
> @@ -256,14 +256,35 @@ config DEBUG_INFO_SPLIT
>           to know about the .dwo files and include them.
>           Incompatible with older versions of ccache.
>
> +choice
> +prompt "DWARF version"
> +       depends on DEBUG_INFO
> +       default DEBUG_INFO_DWARF2
> +       help
> +         Which version of DWARF debug info to emit.
> +
> +config DEBUG_INFO_DWARF2
> +       bool "Generate dwarf2 debuginfo"
> +       help
> +         Generate dwarf2 debug info.
> +
>  config DEBUG_INFO_DWARF4
>         bool "Generate dwarf4 debuginfo"
>         depends on $(cc-option,-gdwarf-4)
>         help
> -         Generate dwarf4 debug info. This requires recent versions
> -         of gcc and gdb. It makes the debug information larger.
> -         But it significantly improves the success of resolving
> -         variables in gdb on optimized code.
> +         Generate dwarf4 debug info. This requires gcc 4.5+ and gdb 7.0+.
> +         It makes the debug information larger, but it significantly
> +         improves the success of resolving variables in gdb on optimized code.
> +
> +config DEBUG_INFO_DWARF5
> +       bool "Generate dwarf5 debuginfo"
> +       depends on DEBUG_INFO
> +       depends on $(success,$(srctree)/scripts/test_dwarf5_support.sh $(CC) $(CLANG_FLAGS))
> +       help
> +         Genereate dwarf5 debug info. Requires binutils 2.35+, gcc 5.1+, and
> +         gdb 8.0+.
> +
> +endchoice # "DWARF version"
>
>  config DEBUG_INFO_BTF
>         bool "Generate BTF typeinfo"
> diff --git a/scripts/test_dwarf5_support.sh b/scripts/test_dwarf5_support.sh
> new file mode 100755
> index 000000000000..82c0eea45845
> --- /dev/null
> +++ b/scripts/test_dwarf5_support.sh
> @@ -0,0 +1,4 @@
> +#!/bin/sh
> +# SPDX-License-Identifier: GPL-2.0
> +set -eu
> +echo ".file 0 \"asdf\"" | $* -Wa,-gdwarf-5 -c -x assembler -o /dev/null -
> --
> 2.29.0.rc1.297.gfa9743e501-goog
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnudUv0Z4ai-6%3D%3DM5fKjWEFQUb9_CEcRfQJeX4ZS5XFjw%40mail.gmail.com.
