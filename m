Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBIE2RCAAMGQEDF3SDBY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3a.google.com (mail-vk1-xa3a.google.com [IPv6:2607:f8b0:4864:20::a3a])
	by mail.lfdr.de (Postfix) with ESMTPS id B01D32F87D6
	for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 22:46:09 +0100 (CET)
Received: by mail-vk1-xa3a.google.com with SMTP id x134sf4786855vkd.17
        for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 13:46:09 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610747168; cv=pass;
        d=google.com; s=arc-20160816;
        b=TzPZGeHXxtYZmHnvGqGQN7FKEL/JlZUQkpJVQKfybILvvlZGgFbXM3Cm2570ICuSgu
         7zdMHh3yHYHzUVAPeRk3rbmQYQFVWXENyzVOIi29Mi0rSazL7LGKquxjCdQ6cZXBdcTw
         oO1W1g1vVDqJz7Ypwd6TzF60fQxsJWaw/B7PbJpkasnxKjpeY3d6ACZayUTZKQ8DeKV2
         hJ2VBWHkUiZW6l4dG8BcoDnvbQI0r45tOJO/Jg6c6l2do2yL3PI5jBRSKUy9YlWUQGEq
         tVmw7xUkHKcW31Dho309XY91NoCN7gEO02OXIAkQawD80hBDZbEOwUjmhXjPRTfA4sq8
         qB1g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=usrHooTQYjM4r1rsAly/N2pLmUHKeGylzv8CeFKEaH4=;
        b=OyoEbJIFhrdPQVso6Wp21W472zoLOmL5IQywYwo/uT+bI+cTj/k5Bj+LGTd0OWWiUu
         bEYLKFp/Jv35JBi+S/CT4R1YlYKegRf1t0NVr0Hg7naQ3ZX4CkZaGhxP5gPju9NH+vcy
         mrNIp54R04NAPsbM/qr5hZkXFpNmdyoOcECVY0rVJPPIUjdiOO8kiTrqGnLc5sTyJY5/
         byVvwYimqiSLLbwUoxhgcQTTfNT1wnV7rb4VeczG+E4UlsFopo2H8ZKMWMT4JpTSzl2k
         VPUqVo8tp3NXIGKNs0ctluc0G0ecF2S/41eZESYYiL1Ne4IxPJIcE7Be00gyxxmMecrA
         cwog==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QwBn22qg;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2d as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=usrHooTQYjM4r1rsAly/N2pLmUHKeGylzv8CeFKEaH4=;
        b=eRJgjdSEuf9ToJ9Zz9/eXPI5ti0kiA0sIo603MQr2w9iXq1T3Clyib76V9WrN0u5cU
         sGWjU9aPND5fDSvtrEsTFY7siONGZpeSglfbZnkcfD3WJkjy6fluFE+fGU8TA9LDOAiv
         zvOx9pyEzB6Sj9BKePr9cxPJ6q9Oiybfq6j5K7LVbc406P2iJ2V4WdEYTdwTx6kmjH/C
         LDEqfs8Td7wKDym+9EbvVDtFwD89NGu69Wq67goC89Uy2Kjd+Du2EoTb0oDCMDFQlmb0
         5bnFBaln2E3Nz/V7YOk++WWMn2Sl3pk7wep2gZTJXVPONJauB7FgDf/IiDXqfsfypjfh
         sbcg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=usrHooTQYjM4r1rsAly/N2pLmUHKeGylzv8CeFKEaH4=;
        b=t+po1kSCyDjkEGXvszzN5mohzOuF+7AeIIib7u8Aaw2Rj9tU4OYLJNGJ8wFclRByjf
         oovUvct8C1nEP/eSEEgMIWWksKb/pe8XviWVYlYknBXD4H+vDiLviATN8c1LfDpZV4cx
         JKBffgJW9fc4raNdQCsCOov30aOlGx/iYHp6Q7TCuDGGTmKITeEBXcnU72HIrbHjQB1B
         v6l33K2mvmr81zCy/PL0iPy1CKoA3jaZUXWQfnzaS1KShm51x4i8/0RiXHCmeQOVTVWv
         5IX4GjEQrRTGHnfYOKyj7GvmEL0ZGUe9IoOgbAn8HR7hyiSO49kB44koSfxeqgPbhkck
         ShlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=usrHooTQYjM4r1rsAly/N2pLmUHKeGylzv8CeFKEaH4=;
        b=mU+UJ8opmxI5AxC+ygnwNGgb2vc8FvC39Qhr9NSwBO99+us4L01kbtG1mGRmynJk6I
         ERTyT8HqUaj81wiilbKcHj2d+zpngCCXCrtznBNMynRrF/igCHIzbG09WrNJngQcaQ2P
         9+HnByfrGsDBFtnAydm5UX6xQU13fGd2xL8EZOnaVlQLvbZDhG1OoITnGveUjqWXMFEv
         N/YijJ79WoDPHD+iw0YqZYp09q1pFEqiM0FlZDdInGCYYR4O1LGQsmvK1dG3gEuIK+m0
         gBVAxgeoe/wjW8QoV9VT95kq8bLAGzPLiKqoQJnijukfvy98K5hV6RHIbfu9zujW1IHY
         ti0Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533RPEwk6JY6J7vSl0TnGDXsVi6CLBMwyOVb+dHKjI3KnYPk3o4a
	PeVof3m6ir1eSDQ6FVBn/x0=
X-Google-Smtp-Source: ABdhPJy9h8RNaPEFzmVs6HuOfAQI/yqWBNPx+ENGbwcXe7eUDFngDYr7eTM7jGedXZ5PsOqaPA3X1w==
X-Received: by 2002:ac5:ca08:: with SMTP id c8mr12699261vkm.20.1610747168711;
        Fri, 15 Jan 2021 13:46:08 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:4823:: with SMTP id b32ls836262uad.2.gmail; Fri, 15 Jan
 2021 13:46:08 -0800 (PST)
X-Received: by 2002:ab0:c0c:: with SMTP id a12mr5337262uak.93.1610747168113;
        Fri, 15 Jan 2021 13:46:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610747168; cv=none;
        d=google.com; s=arc-20160816;
        b=ZJxsY78V1d6Po5v3HPmABR6b0nOXHBvmLjTuCRGu/4N+XtFlC7lJlqoh1wBHlMl90U
         o8vfcd9tXI4Wa8edJFsVG9s2P3MLGCtMdidn3PVbgJQzCwyfKtRTkSCgoAYvaTb/XnxT
         gsV+dlMzbwCpgx+nZBE3o8CXOo/+XLp1KLP0LQR1DzX8o78rE5f/65fJnjajcAEc1UAH
         7qS2todJfAarQhUyRvzJoDSFD2wNo06LHOUp6uKX5dP1ZF/OJfa9zDjmFaCe/sCgeCop
         p6sAQ/zqSPe6Frd7aROFqsk8OSnAb6QeBOshAJa/DhMRrN6Jl2CvsWy5cYZwS+pD8Y70
         vkBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Vtsrkrd5pT5JHGqUkKYAdl18Fgo1RFE+JcbufUcJcsU=;
        b=vCrm69ZffAIK0HLz6njzzx+I+LTBaDcP/kzuEvskaDfhVlsUU4FRlhQtMI+3HRonxD
         UVCrr96H4nbL0xI1+xSnkn0EFYo/j/hhU2qrDyMsd333ZCrPZbl1U5RSPvjgdlzj3EpM
         lCyD8G2Mm+zJF4wVxWdHRxAv71VjCLYZvEtAHQGkytURmbST29muDkOnfL4YZ2sJK3GZ
         gOZnf7zWbj9jgsXPDIZq5o/5T5y0yk366EaAUs2OPksCGhWUXbn+SIK0C1+xEUZ2snXd
         CbOPyGLjBFgvgC/hkkAn/s+IQMdKrcCQJqDGNfY9Z5zApXMdKgT6wldY13xX2RJahoxO
         oNSA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QwBn22qg;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2d as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd2d.google.com (mail-io1-xd2d.google.com. [2607:f8b0:4864:20::d2d])
        by gmr-mx.google.com with ESMTPS id y127si633982vsc.0.2021.01.15.13.46.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Jan 2021 13:46:08 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2d as permitted sender) client-ip=2607:f8b0:4864:20::d2d;
Received: by mail-io1-xd2d.google.com with SMTP id y19so21014127iov.2
        for <clang-built-linux@googlegroups.com>; Fri, 15 Jan 2021 13:46:08 -0800 (PST)
X-Received: by 2002:a92:c002:: with SMTP id q2mr12770523ild.186.1610747167483;
 Fri, 15 Jan 2021 13:46:07 -0800 (PST)
MIME-Version: 1.0
References: <20210115210616.404156-1-ndesaulniers@google.com> <20210115210616.404156-4-ndesaulniers@google.com>
In-Reply-To: <20210115210616.404156-4-ndesaulniers@google.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Fri, 15 Jan 2021 22:45:56 +0100
Message-ID: <CA+icZUVWPgbMQAgHaRa7emxyzN+SMc6hZ1UNtkkO80-RH6-yNg@mail.gmail.com>
Subject: Re: [PATCH v5 3/3] Kbuild: implement support for DWARF v5
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
 header.i=@gmail.com header.s=20161025 header.b=QwBn22qg;       spf=pass
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

On Fri, Jan 15, 2021 at 10:06 PM Nick Desaulniers
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
>  Makefile                          |  6 ++++++
>  include/asm-generic/vmlinux.lds.h |  6 +++++-
>  lib/Kconfig.debug                 | 18 ++++++++++++++++++
>  scripts/test_dwarf5_support.sh    |  8 ++++++++
>  4 files changed, 37 insertions(+), 1 deletion(-)
>  create mode 100755 scripts/test_dwarf5_support.sh
>
> diff --git a/Makefile b/Makefile
> index 4eb3bf7ee974..1dcea03861ef 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -828,10 +828,16 @@ endif
>
>  dwarf-version-$(CONFIG_DEBUG_INFO_DWARF2) := 2
>  dwarf-version-$(CONFIG_DEBUG_INFO_DWARF4) := 4
> +dwarf-version-$(CONFIG_DEBUG_INFO_DWARF5) := 5
>  DEBUG_CFLAGS   += -gdwarf-$(dwarf-version-y)
>  # Binutils 2.35+ required for -gdwarf-4+ support.
>  dwarf-aflag    := $(call as-option,-Wa$(comma)-gdwarf-$(dwarf-version-y))
>  KBUILD_AFLAGS  += $(dwarf-aflag)
> +ifdef CONFIG_CC_IS_CLANG
> +ifneq ($(LLVM_IAS),1)
> +DEBUG_CFLAGS   += $(dwarf-aflag)
> +endif
> +endif
>
>  ifdef CONFIG_DEBUG_INFO_REDUCED
>  DEBUG_CFLAGS   += $(call cc-option, -femit-struct-debug-baseonly) \
> diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
> index 49944f00d2b3..37dc4110875e 100644
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
> index e80770fac4f0..658f32ec0c05 100644
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

Better keep GCC depends in one line:

+       depends on CC_IS_GCC && GCC_VERSION >= 50000 || CC_IS_CLANG
+       depends on $(success,$(srctree)/scripts/test_dwarf5_support.sh
$(CC) $(CLANG_FLAGS))

As said in the other patch:

Use consistently: s/DWARF Version/DWARF version/g

- Sedat -

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
> 2.30.0.284.gd98b1dd5eaa7-goog
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUVWPgbMQAgHaRa7emxyzN%2BSMc6hZ1UNtkkO80-RH6-yNg%40mail.gmail.com.
