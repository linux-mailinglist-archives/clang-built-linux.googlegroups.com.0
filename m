Return-Path: <clang-built-linux+bncBDHYDDNWVUNRB5PF2GAAMGQEFSBW3XI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x138.google.com (mail-il1-x138.google.com [IPv6:2607:f8b0:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C0815308E95
	for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 21:41:26 +0100 (CET)
Received: by mail-il1-x138.google.com with SMTP id g3sf8632172ild.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 12:41:26 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611952885; cv=pass;
        d=google.com; s=arc-20160816;
        b=Wd/2W6JOmOZyGY2vPoQElcT1gNr0gAklPc5gAuPPs7WMA02gb0N3S83di5C7Q/kKcD
         I8hW+moElQTGoXZ++dvMxauG5kMB/mH7V1oLCy1yFeXQZpnmli2LuOlxtewr22yAY1+4
         cbubikf6PRwFUAOXOMS0WDvopAleIx0vOIzlYyHNI1C4257JmH/BtFpVx82bdD+EqaKl
         /HdFjn9Ki8ZKsyQ5yxOsb5qDIW3ZHf2Zjm98zpYzKqyX21blqIvsxTjak58G04T9Wbya
         yYtX+P6a8PDEDuzXxEnApEIwzxTdF0FB1BrZEsMv279c59U3BxOrbff69cIQna/YnvuM
         +IuQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=feGcSKkRiYpRciivgGksSYO3y5VtP0vEti46wCmi3LQ=;
        b=LyGoy5TvKsEmp+W8VwjZ5SWJUr9pD7MZAWPAiFuwC1p7NptROkWWDLjK7YOI3QS2ft
         mcqOA4a2N3UpfyLE3uMZ9YUvd1BTKc84dJCsweuvaifrG+eve3psSxQcGNDswqQ44ket
         0IZDv85jrnJm9D3gXRgObyaG8VX6jl0tGK9oFil7sN1Et7+q9uqhRwEn5JZnucwPVD/p
         ngOV45HoOwpzd7+vVXpbwil4CAlKisuzI9xlKZyB+E3I8sRnCfnWW54h2ZLELv6284sD
         sKdSZ4k9b8ejivTWcgFTWGNYeza9QX2WwXMpbXALyL3ghUHPJkWEm+g5SxUNhvcgZbSE
         9AXw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YkPpKYC2;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2d as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=feGcSKkRiYpRciivgGksSYO3y5VtP0vEti46wCmi3LQ=;
        b=mi5O2ol/FaUxSNTwmYsMJjRKLZAmzz7jHADf+b2KkiECGxXKKWsMt/KG1+2WpPgthg
         3V4Z9/KigpM4Nbwxymaj0mKRq4upieAJpDGWWWq/gsX3/5U2c3o6v2/wWpWdBtNmNs3l
         owQbwmPDv58z5yKCa/0J926+PdDwGF3N6XW+mNCvavKCu0csFyrcp6QihopiJbStgrvC
         jOoBj52Jpr7KK1jeew7qsKeGqM+nt0CcO8Ss+3If7PtRIhjEDgvb85uMWEFV/4LWXuHO
         StfiWcgGr8EKrpLHcsZFbWPGodqK2Pa4I2QLFW0Kb4+pFNOH+f5XuBcQ3WOWN/66TERq
         qGlA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=feGcSKkRiYpRciivgGksSYO3y5VtP0vEti46wCmi3LQ=;
        b=j8sYPQ4VwzFAKF6plw8mQC4SPgo+b+B+96nWezkineL8BbZ71hL0gsEp+2txnuunxD
         1lTeQdrWIENag7QcBL44AtBRkhEVJBn5P/f69UV6VJDSDTgiZGChJSD+LCt10KNXRm9h
         RNgcuRTPdhsMzQBRFsokpfdv9ueJb/s8wJcljF15qASx3ZfB1Eub5UF51QJ71oI92nsd
         qxB/bEZ9fmxrh+eIReZdweYOzNRnZK2O6ZcqxPx3y8CV9/Q1XvqjbFDdnvc92qaKjFkU
         tboYQbTfF5s2qsOyfyL/+6WRcDuOMPN7OQxfJmNnMVlTus4GrAQE1VCmsMELPbLkFJ4U
         4iAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=feGcSKkRiYpRciivgGksSYO3y5VtP0vEti46wCmi3LQ=;
        b=QdkU0rq8vAfj4bF95z/pwXL7nFlOoLla/a/0p1HZ90X43BgkRxzT0lQbPHkssUz4GA
         /FIDjGkBZdv/acdKPj+wB4xFWgsJK4sVMaySAPAFQ0LCqjNrzninwC+NQF+FAOWEwXhx
         Z1B4JW13zRww8CR/zK3gBw5Vnj/yisjfqGa84vvhHviJRMryvH2V7vYiyDI9lw/4xVG/
         lA5mg1k7VOZLE8cm51+P+ZdhryQ1OwNZDFmNzA30NI9qcMJ6q17C1UpWmAoHIPhf9QMu
         I38qJTXZfsJohUR2U8KZ59vmRtZqdUp89F4altDyguX5K+Cs020Oekv2KxeFl57YYaxp
         2C8g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533bmy59n4WS7n/rrhYJNnBXb2LGbOdqjaCL5AosAGyDDF098ICq
	yUeEIhevAlnIZw9giUSHV/s=
X-Google-Smtp-Source: ABdhPJxpylhiJbOVbXhrTwMACsKEDVsveqof1wmomsCZePRYVusxAG9JSpEWD41geZ1tpVHWfP9IDA==
X-Received: by 2002:a92:a303:: with SMTP id a3mr4520472ili.114.1611952885576;
        Fri, 29 Jan 2021 12:41:25 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:2195:: with SMTP id j21ls2506682ila.4.gmail; Fri,
 29 Jan 2021 12:41:25 -0800 (PST)
X-Received: by 2002:a05:6e02:18c9:: with SMTP id s9mr5692031ilu.265.1611952884984;
        Fri, 29 Jan 2021 12:41:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611952884; cv=none;
        d=google.com; s=arc-20160816;
        b=aLHW2wMcDHctMI/ykLtz5s3qdQfF3eD5Jh2kPud2lNmpsej7HOkU8EVhhA7x6PKJeK
         Q2AWV1bHBayveallvvj/zYsGomP4N3wH3qaBbfWLXYjFSbcrUT5DGuPuuujACp0w8Yyv
         hdk5yFBL3ri1FdLcwaTuXW4zZbd40Dkny7CsmPzciukEvtyfnvq8iwH9sGjvGhnDZJ6c
         sJzy99MtmEqG6F2kVAJhl+zLheOMCujvWY9GPYcGpoRx6aZQrn+7wizlPZu/d+fDqx2q
         Xsx0sHcBsregA9zIy1+3xevTs0KKGvo69r0+VusXmWqVAtN0IYi9uoAcAUxqOycPr0wq
         g3yQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ghs3w1DK8bK62apoXNRIgaDmo4mtYv4++XqH5FO8a1U=;
        b=J33QxYwrFeiE/dBptlhsdCirWgibTCwd/kDfMp/zE2ys0stWfIawmR21xCTVqOP0EE
         fxJ0n8iszEcooGMQuqB0KrKlFw5mMOLkY0ihtKh7w8jQVNy3bzdEd+E3AQDBoAzQQ1Kp
         Uab7aQt9PqUvngV4C0uN5Ys1r4tf+ZivU8dypRK9e1e3Ib8y5xDBwlrkDTKRm04MaqaG
         dhbPEiPOokI9mX6qbZpAHDUumsG5C8kobZeKak2aKJjHQ99UTl4tKd2DfAixttarFoGZ
         8PGUPAB5Lcpr+sjK8GxGS65EqSqrXqFOHHheH4DiBlQy59qiIFT6744NtBwfMQHDZLOs
         UuGg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YkPpKYC2;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2d as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd2d.google.com (mail-io1-xd2d.google.com. [2607:f8b0:4864:20::d2d])
        by gmr-mx.google.com with ESMTPS id y16si120658ili.3.2021.01.29.12.41.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Jan 2021 12:41:24 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2d as permitted sender) client-ip=2607:f8b0:4864:20::d2d;
Received: by mail-io1-xd2d.google.com with SMTP id z22so10681944ioh.9
        for <clang-built-linux@googlegroups.com>; Fri, 29 Jan 2021 12:41:24 -0800 (PST)
X-Received: by 2002:a6b:90c4:: with SMTP id s187mr4928826iod.75.1611952884560;
 Fri, 29 Jan 2021 12:41:24 -0800 (PST)
MIME-Version: 1.0
References: <20210129194318.2125748-1-ndesaulniers@google.com> <20210129194318.2125748-3-ndesaulniers@google.com>
In-Reply-To: <20210129194318.2125748-3-ndesaulniers@google.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Fri, 29 Jan 2021 21:41:12 +0100
Message-ID: <CA+icZUX4q-JhCo+UZ9T3FhbC_gso-oaB0OR9KdH5iEpoGZyqVw@mail.gmail.com>
Subject: Re: [PATCH v6 2/2] Kbuild: implement support for DWARF v5
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Andrew Morton <akpm@linux-foundation.org>, linux-kernel@vger.kernel.org, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, linux-kbuild@vger.kernel.org, 
	linux-arch@vger.kernel.org, Jakub Jelinek <jakub@redhat.com>, 
	Fangrui Song <maskray@google.com>, Caroline Tice <cmtice@google.com>, Nick Clifton <nickc@redhat.com>, 
	Yonghong Song <yhs@fb.com>, Jiri Olsa <jolsa@kernel.org>, Andrii Nakryiko <andrii@kernel.org>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Arvind Sankar <nivedita@alum.mit.edu>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=YkPpKYC2;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2d
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

On Fri, Jan 29, 2021 at 8:43 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> DWARF v5 is the latest standard of the DWARF debug info format.
>
> Feature detection of DWARF5 is onerous, especially given that we've
> removed $(AS), so we must query $(CC) for DWARF5 assembler directive
> support.
>
> The DWARF version of a binary can be validated with:
> $ llvm-dwarfdump vmlinux | head -n 4 | grep version
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
> 515M    vmlinux.gcc10.2.dwarf5.compressed
> 599M    vmlinux.gcc10.2.dwarf4.compressed
> 624M    vmlinux.gcc10.2.dwarf2.compressed
> 630M    vmlinux.gcc10.2.dwarf5
> 765M    vmlinux.gcc10.2.dwarf4
> 809M    vmlinux.gcc10.2.dwarf2
>
> Though the quality of debug info is harder to quantify; size is not a
> proxy for quality.
>
> Jakub notes:
>   All [GCC] 5.1 - 6.x did was start accepting -gdwarf-5 as experimental
>   option that enabled some small DWARF subset (initially only a few
>   DW_LANG_* codes newly added to DWARF5 drafts).  Only GCC 7 (released
>   after DWARF 5 has been finalized) started emitting DWARF5 section
>   headers and got most of the DWARF5 changes in...
>
> Version check GCC so that we don't need to worry about the difference in
> command line args between GNU readelf and llvm-readelf/llvm-dwarfdump to
> validate the DWARF Version in the assembler feature detection script.
>
> GNU `as` only recently gained support for specifying -gdwarf-5, so when
> compiling with Clang but without Clang's integrated assembler
> (LLVM_IAS=1 is not set), explicitly add -Wa,-gdwarf-5 to DEBUG_CFLAGS.
>
> Disabled for now if CONFIG_DEBUG_INFO_BTF is set; pahole doesn't yet
> recognize the new additions to the DWARF debug info. Thanks to Sedat for
> the report.
>
> Link: http://www.dwarfstd.org/doc/DWARF5.pdf
> Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
> Suggested-by: Arvind Sankar <nivedita@alum.mit.edu>
> Suggested-by: Caroline Tice <cmtice@google.com>
> Suggested-by: Fangrui Song <maskray@google.com>
> Suggested-by: Jakub Jelinek <jakub@redhat.com>
> Suggested-by: Masahiro Yamada <masahiroy@kernel.org>
> Suggested-by: Nathan Chancellor <natechancellor@gmail.com>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
>  Makefile                          | 12 ++++++++++++
>  include/asm-generic/vmlinux.lds.h |  6 +++++-
>  lib/Kconfig.debug                 | 18 ++++++++++++++++++
>  scripts/test_dwarf5_support.sh    |  8 ++++++++
>  4 files changed, 43 insertions(+), 1 deletion(-)
>  create mode 100755 scripts/test_dwarf5_support.sh
>
> diff --git a/Makefile b/Makefile
> index 20141cd9319e..bed8b3b180b8 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -832,8 +832,20 @@ endif
>
>  dwarf-version-$(CONFIG_DEBUG_INFO_DWARF2) := 2
>  dwarf-version-$(CONFIG_DEBUG_INFO_DWARF4) := 4
> +dwarf-version-$(CONFIG_DEBUG_INFO_DWARF5) := 5
>  DEBUG_CFLAGS   += -gdwarf-$(dwarf-version-y)
>
> +# If using clang without the integrated assembler, we need to explicitly tell
> +# GAS that we will be feeding it DWARF v5 assembler directives. Kconfig should
> +# detect whether the version of GAS supports DWARF v5.
> +ifdef CONFIG_CC_IS_CLANG
> +ifneq ($(LLVM_IAS),1)
> +ifeq ($(dwarf-version-y),5)
> +DEBUG_CFLAGS   += -Wa,-gdwarf-5

I noticed double "-g -gdwarf-5 -g -gdwarf-5" (a different issue) and
that's why I looked again into the top-level Makefile.

Should this be...?

KBUILD_AFLAGS += -Wa,-gdwarf-5

- Sedat -

> +endif
> +endif
> +endif
> +
>  ifdef CONFIG_DEBUG_INFO_REDUCED
>  DEBUG_CFLAGS   += $(call cc-option, -femit-struct-debug-baseonly) \
>                    $(call cc-option,-fno-var-tracking)
> diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
> index 34b7e0d2346c..f8d5455cd87f 100644
> --- a/include/asm-generic/vmlinux.lds.h
> +++ b/include/asm-generic/vmlinux.lds.h
> @@ -843,7 +843,11 @@
>                 .debug_types    0 : { *(.debug_types) }                 \
>                 /* DWARF 5 */                                           \
>                 .debug_macro    0 : { *(.debug_macro) }                 \
> -               .debug_addr     0 : { *(.debug_addr) }
> +               .debug_addr     0 : { *(.debug_addr) }                  \
> +               .debug_line_str 0 : { *(.debug_line_str) }              \
> +               .debug_loclists 0 : { *(.debug_loclists) }              \
> +               .debug_rnglists 0 : { *(.debug_rnglists) }              \
> +               .debug_str_offsets      0 : { *(.debug_str_offsets) }
>
>  /* Stabs debugging sections. */
>  #define STABS_DEBUG                                                    \
> diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
> index 1850728b23e6..09146b1af20d 100644
> --- a/lib/Kconfig.debug
> +++ b/lib/Kconfig.debug
> @@ -273,6 +273,24 @@ config DEBUG_INFO_DWARF4
>           It makes the debug information larger, but it significantly
>           improves the success of resolving variables in gdb on optimized code.
>
> +config DEBUG_INFO_DWARF5
> +       bool "Generate DWARF Version 5 debuginfo"
> +       depends on GCC_VERSION >= 50000 || CC_IS_CLANG
> +       depends on CC_IS_GCC || $(success,$(srctree)/scripts/test_dwarf5_support.sh $(CC) $(CLANG_FLAGS))
> +       depends on !DEBUG_INFO_BTF
> +       help
> +         Generate DWARF v5 debug info. Requires binutils 2.35, gcc 5.0+ (gcc
> +         5.0+ accepts the -gdwarf-5 flag but only had partial support for some
> +         draft features until 7.0), and gdb 8.0+.
> +
> +         Changes to the structure of debug info in Version 5 allow for around
> +         15-18% savings in resulting image and debug info section sizes as
> +         compared to DWARF Version 4. DWARF Version 5 standardizes previous
> +         extensions such as accelerators for symbol indexing and the format
> +         for fission (.dwo/.dwp) files. Users may not want to select this
> +         config if they rely on tooling that has not yet been updated to
> +         support DWARF Version 5.
> +
>  endchoice # "DWARF version"
>
>  config DEBUG_INFO_BTF
> diff --git a/scripts/test_dwarf5_support.sh b/scripts/test_dwarf5_support.sh
> new file mode 100755
> index 000000000000..1a00484d0b2e
> --- /dev/null
> +++ b/scripts/test_dwarf5_support.sh
> @@ -0,0 +1,8 @@
> +#!/bin/sh
> +# SPDX-License-Identifier: GPL-2.0
> +
> +# Test that assembler accepts -gdwarf-5 and .file 0 directives, which were bugs
> +# in binutils < 2.35.
> +# https://sourceware.org/bugzilla/show_bug.cgi?id=25612
> +# https://sourceware.org/bugzilla/show_bug.cgi?id=25614
> +echo '.file 0 "filename"' | $* -gdwarf-5 -Wa,-gdwarf-5 -c -x assembler -o /dev/null -
> --
> 2.30.0.365.g02bc693789-goog
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUX4q-JhCo%2BUZ9T3FhbC_gso-oaB0OR9KdH5iEpoGZyqVw%40mail.gmail.com.
