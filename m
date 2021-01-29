Return-Path: <clang-built-linux+bncBCS7XUWOUULBBA4H2KAAMGQEUMKSIAQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1040.google.com (mail-pj1-x1040.google.com [IPv6:2607:f8b0:4864:20::1040])
	by mail.lfdr.de (Postfix) with ESMTPS id 616B6308F9A
	for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 22:52:05 +0100 (CET)
Received: by mail-pj1-x1040.google.com with SMTP id gj19sf6393733pjb.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 13:52:05 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611957124; cv=pass;
        d=google.com; s=arc-20160816;
        b=sP/zIWlPKNi5169IXIri11TtEpBiBUZFYNEfqtoH+2y2RAr63BaS6Z0TxJhpBQVdHr
         m4gFX4Ogw23aIYG0ZU8Gcv0Kz1WvohKZ2gIxkFAwT8EUNqqoGZtuceJQhF3Hno+5uteQ
         CweGveFtToszlDPDGtUVJtBk43fZ5RapmewT74A9TnJO6BbrlYIoSoehr4GyrJtzzR+9
         hgW9AJVjYJOGVpkmQNoo0/d6jFZmMRyXTSCkwVv5BQIjmTehcIv0ulUnjYKoD/0w92aI
         kU1SljHIy6V9z1EBQNjj4o6EVc08mywahjRwFQfvKDIjhZ8NamGTIYDnXcVTNgwzWDVO
         rZJg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=nEJ5xUWnlGnINSLMZ4NTFoBb1Lf7te+8S7oAvdRkMnI=;
        b=gY/uBedMm8yIwT2pwRvHdKPG8RM/QW9zjov6MSqYFHbokAy6yOjl+2vjTnQwhaKTDU
         AM3OWELMu3PM9w3SC3DX4zIOp8tObIbyu59ONx7lOVjVyQttV9ku5BArp2apSXUmv34T
         KDn6DIdhjLqTA70UX1eaTbjBx6uaVPMwYupv9vkqJDoPEzZHvXICSvF/v/nuRzk0B45m
         /6GlBKYMKp2NNzRJQV2wZM0QdLUln/9dUaKIJqGm/bak8OhRzrjsmVEGjVO2QzGPqd6g
         E8sF3NCga3YaARvWaM+Mt5UzLc2J5+RVHgtqVfZf1O31jnsjKvTDeK64iOGVlNXvbnyn
         0eWA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=B+t93N04;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::636 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=nEJ5xUWnlGnINSLMZ4NTFoBb1Lf7te+8S7oAvdRkMnI=;
        b=oKQHfKmk2yji9q78d/vj7zc6VxZyVog5QBqSuubB3f52jFwka1pI2x158lgkntbcYF
         sOodZFpPzAa1zxSWtslQfDAfrdoC29I1igXxStJA+w8Wwhud3da7mv8ZSQ3GcRNoLDvL
         OG+JL3x1HDovxLkYNqPP1mASVmBXENcGE7530D22JVP4dAo+GIeAZrYhC63NSafU28Or
         0/ilt5IDZBJVldFJMA/8Lg4ihmQun1Yx35TWkycaUgKz7HYKp0JJChy/Mnsx9FoZs+gf
         76jQ1LDbXGpM1L6AOhlRzRyqJxQLEb+vtiMVJiGLKCJS8LoNGjn2XDAo7UvbieDrZtAs
         0sag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nEJ5xUWnlGnINSLMZ4NTFoBb1Lf7te+8S7oAvdRkMnI=;
        b=In29F0IS8qSke0J+qV6TWbS3EBvZOqIyRv9n7nVluP4/Ub8Ktuc0F6RbGdRlESb4F5
         PM7J9T8RXK25IaWJMWuP9FwKG4mhAyK8eLgQCY7Ewm9zudL0hnYDsQErcIqfugibkvZM
         iYGtALJfByDjL1tOcN3gdr4k5tyPTHbewCyK9S28TkIUSjid1phwzo2lFhL09mP2Pycu
         Wu/37QS0+qU1mxdEOux7dvnB49kNOwb43rzvfEgxlUP6sHU7PZ7CqXEbrwhZWLrfEqXv
         80gTzvAf+LOabRsaY+g/1il8KcNcoGjlU7gD8EfkhFZGWhmwjZfXwcsAUZrF7jfbFNVB
         Sn/w==
X-Gm-Message-State: AOAM530VeBQwaThesEw28rD/LT66+RgrHjIX0eavui6Me5Mry79USWP8
	XDaRp8Gm/aZYMNHm+AVxWCE=
X-Google-Smtp-Source: ABdhPJwTRNgZwl4mn0BtqNrCSq7eYuSra21pSBNAhVAxZgz9cKfuJ+Mmsg8WZBoR9ghu6Uzdkj3sdw==
X-Received: by 2002:a17:90a:f0c4:: with SMTP id fa4mr5992402pjb.132.1611957124009;
        Fri, 29 Jan 2021 13:52:04 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7583:: with SMTP id j3ls4999247pll.0.gmail; Fri, 29
 Jan 2021 13:52:03 -0800 (PST)
X-Received: by 2002:a17:902:70c6:b029:df:d62a:8c69 with SMTP id l6-20020a17090270c6b02900dfd62a8c69mr6003872plt.20.1611957123396;
        Fri, 29 Jan 2021 13:52:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611957123; cv=none;
        d=google.com; s=arc-20160816;
        b=kwR9AKT3bQEtFEBNoCMQV764I0qwHs/eaU6dIXpmedwG9f8sTVGO1JKYIoFpMKeH8Q
         dd3iCN8tfXRJhYCGdBoqCZgDcp7IAFV6luFj94E03YIlw3Bnrv5NeoU85mL/Uwi6mK/E
         y7IfVOmwAf6QkrlO8T6ctVZvXMT7YJqQCozasjQJAyASoXF+BSkVl+rM7EPvkkoqoUBh
         PHNX1gFb+03BsQ5HkNBuKJyQG5bBpgJtU/VfjVDmkzoqUxn9GwTLfDwnE1v2ba7dQr6G
         fb/rb3i/QXx5yn4eg6Lwi8rytb3f0tbDww5PUjahshvng4QeH1YtVutLeVn7vE3YZG0y
         8v+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=66OnicxN8b957KRstnD4eIgSSL6I+OCGMeiimWvmwzA=;
        b=v1aMlPdphjGhHaF9SlKcj9dlOUp/8K4ixBkyw7n4kZYa7llKg11bdBbWtI6J7qPiju
         4K0WdFW0J6DE4qJGWNTIzDb1oKp3CPSOFslV12mD4WwR/KUb20/LicTK0Dt0ARFSPK3D
         Rvc3RciI3RwY9kLSetFcWRmNCbl1rjVCoDR7FnyMgtzSm+duEDj4DBbHTmGQ2eXpcug2
         UrqhrS1vMbeHCMwPPnprfVHLGAUsX57mbnTYF/tYUf0FUUg0DlZGycPXL3d+zUiCeStD
         QdKQBDpt2VliM5vY+qXZxPIP9HumdXk1zQDyo1J9fBOk32tvVUFd6Kq/KC+4dnJqIv5h
         qNRQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=B+t93N04;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::636 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com. [2607:f8b0:4864:20::636])
        by gmr-mx.google.com with ESMTPS id ie13si451755pjb.2.2021.01.29.13.52.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Jan 2021 13:52:03 -0800 (PST)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::636 as permitted sender) client-ip=2607:f8b0:4864:20::636;
Received: by mail-pl1-x636.google.com with SMTP id y10so1809465plk.7
        for <clang-built-linux@googlegroups.com>; Fri, 29 Jan 2021 13:52:03 -0800 (PST)
X-Received: by 2002:a17:902:ee4b:b029:de:9cd1:35c8 with SMTP id 11-20020a170902ee4bb02900de9cd135c8mr347429plo.18.1611957122833;
        Fri, 29 Jan 2021 13:52:02 -0800 (PST)
Received: from google.com ([2620:15c:2ce:0:a6ae:11ff:fe11:4abb])
        by smtp.gmail.com with ESMTPSA id u3sm10595302pfm.144.2021.01.29.13.52.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Jan 2021 13:52:02 -0800 (PST)
Date: Fri, 29 Jan 2021 13:51:58 -0800
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Sedat Dilek <sedat.dilek@gmail.com>, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com, linux-kbuild@vger.kernel.org,
	linux-arch@vger.kernel.org, Jakub Jelinek <jakub@redhat.com>,
	Caroline Tice <cmtice@google.com>, Nick Clifton <nickc@redhat.com>,
	Yonghong Song <yhs@fb.com>, Jiri Olsa <jolsa@kernel.org>,
	Andrii Nakryiko <andrii@kernel.org>,
	Arnaldo Carvalho de Melo <acme@kernel.org>,
	Arvind Sankar <nivedita@alum.mit.edu>
Subject: Re: [PATCH v6 2/2] Kbuild: implement support for DWARF v5
Message-ID: <20210129215158.xs2pidjkex2gtqs7@google.com>
References: <20210129194318.2125748-1-ndesaulniers@google.com>
 <20210129194318.2125748-3-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20210129194318.2125748-3-ndesaulniers@google.com>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=B+t93N04;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::636
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Fangrui Song <maskray@google.com>
Reply-To: Fangrui Song <maskray@google.com>
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

On 2021-01-29, Nick Desaulniers wrote:
>DWARF v5 is the latest standard of the DWARF debug info format.
>
>Feature detection of DWARF5 is onerous, especially given that we've
>removed $(AS), so we must query $(CC) for DWARF5 assembler directive
>support.
>
>The DWARF version of a binary can be validated with:
>$ llvm-dwarfdump vmlinux | head -n 4 | grep version
>or
>$ readelf --debug-dump=info vmlinux 2>/dev/null | grep Version
>
>DWARF5 wins significantly in terms of size when mixed with compression
>(CONFIG_DEBUG_INFO_COMPRESSED).
>
>363M    vmlinux.clang12.dwarf5.compressed
>434M    vmlinux.clang12.dwarf4.compressed
>439M    vmlinux.clang12.dwarf2.compressed
>457M    vmlinux.clang12.dwarf5
>536M    vmlinux.clang12.dwarf4
>548M    vmlinux.clang12.dwarf2
>
>515M    vmlinux.gcc10.2.dwarf5.compressed
>599M    vmlinux.gcc10.2.dwarf4.compressed
>624M    vmlinux.gcc10.2.dwarf2.compressed
>630M    vmlinux.gcc10.2.dwarf5
>765M    vmlinux.gcc10.2.dwarf4
>809M    vmlinux.gcc10.2.dwarf2
>
>Though the quality of debug info is harder to quantify; size is not a
>proxy for quality.
>
>Jakub notes:
>  All [GCC] 5.1 - 6.x did was start accepting -gdwarf-5 as experimental
>  option that enabled some small DWARF subset (initially only a few
>  DW_LANG_* codes newly added to DWARF5 drafts).  Only GCC 7 (released
>  after DWARF 5 has been finalized) started emitting DWARF5 section
>  headers and got most of the DWARF5 changes in...
>
>Version check GCC so that we don't need to worry about the difference in
>command line args between GNU readelf and llvm-readelf/llvm-dwarfdump to
>validate the DWARF Version in the assembler feature detection script.
>
>GNU `as` only recently gained support for specifying -gdwarf-5, so when
>compiling with Clang but without Clang's integrated assembler
>(LLVM_IAS=1 is not set), explicitly add -Wa,-gdwarf-5 to DEBUG_CFLAGS.
>
>Disabled for now if CONFIG_DEBUG_INFO_BTF is set; pahole doesn't yet
>recognize the new additions to the DWARF debug info. Thanks to Sedat for
>the report.
>
>Link: http://www.dwarfstd.org/doc/DWARF5.pdf
>Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
>Suggested-by: Arvind Sankar <nivedita@alum.mit.edu>
>Suggested-by: Caroline Tice <cmtice@google.com>
>Suggested-by: Fangrui Song <maskray@google.com>
>Suggested-by: Jakub Jelinek <jakub@redhat.com>
>Suggested-by: Masahiro Yamada <masahiroy@kernel.org>
>Suggested-by: Nathan Chancellor <natechancellor@gmail.com>
>Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
>---
> Makefile                          | 12 ++++++++++++
> include/asm-generic/vmlinux.lds.h |  6 +++++-
> lib/Kconfig.debug                 | 18 ++++++++++++++++++
> scripts/test_dwarf5_support.sh    |  8 ++++++++
> 4 files changed, 43 insertions(+), 1 deletion(-)
> create mode 100755 scripts/test_dwarf5_support.sh
>
>diff --git a/Makefile b/Makefile
>index 20141cd9319e..bed8b3b180b8 100644
>--- a/Makefile
>+++ b/Makefile
>@@ -832,8 +832,20 @@ endif
>
> dwarf-version-$(CONFIG_DEBUG_INFO_DWARF2) := 2
> dwarf-version-$(CONFIG_DEBUG_INFO_DWARF4) := 4
>+dwarf-version-$(CONFIG_DEBUG_INFO_DWARF5) := 5
> DEBUG_CFLAGS	+= -gdwarf-$(dwarf-version-y)
>
>+# If using clang without the integrated assembler, we need to explicitly tell
>+# GAS that we will be feeding it DWARF v5 assembler directives. Kconfig should
>+# detect whether the version of GAS supports DWARF v5.
>+ifdef CONFIG_CC_IS_CLANG
>+ifneq ($(LLVM_IAS),1)
>+ifeq ($(dwarf-version-y),5)
>+DEBUG_CFLAGS	+= -Wa,-gdwarf-5
>+endif
>+endif
>+endif
>+
> ifdef CONFIG_DEBUG_INFO_REDUCED
> DEBUG_CFLAGS	+= $(call cc-option, -femit-struct-debug-baseonly) \
> 		   $(call cc-option,-fno-var-tracking)
>diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
>index 34b7e0d2346c..f8d5455cd87f 100644
>--- a/include/asm-generic/vmlinux.lds.h
>+++ b/include/asm-generic/vmlinux.lds.h
>@@ -843,7 +843,11 @@
> 		.debug_types	0 : { *(.debug_types) }			\
> 		/* DWARF 5 */						\
> 		.debug_macro	0 : { *(.debug_macro) }			\
>-		.debug_addr	0 : { *(.debug_addr) }
>+		.debug_addr	0 : { *(.debug_addr) }			\
>+		.debug_line_str	0 : { *(.debug_line_str) }		\
>+		.debug_loclists	0 : { *(.debug_loclists) }		\
>+		.debug_rnglists	0 : { *(.debug_rnglists) }		\
>+		.debug_str_offsets	0 : { *(.debug_str_offsets) }

Add .debug_names for -gdwarf-5 -gpubnames

The internal linker script of GNU ld 2.36 will have it.
https://sourceware.org/pipermail/binutils/2021-January/115064.html

(Compilers don't generate .debug_sup, I added to GNU ld just for
future-proof.).

> /* Stabs debugging sections. */
> #define STABS_DEBUG							\
>diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
>index 1850728b23e6..09146b1af20d 100644
>--- a/lib/Kconfig.debug
>+++ b/lib/Kconfig.debug
>@@ -273,6 +273,24 @@ config DEBUG_INFO_DWARF4
> 	  It makes the debug information larger, but it significantly
> 	  improves the success of resolving variables in gdb on optimized code.
>
>+config DEBUG_INFO_DWARF5
>+	bool "Generate DWARF Version 5 debuginfo"
>+	depends on GCC_VERSION >= 50000 || CC_IS_CLANG
>+	depends on CC_IS_GCC || $(success,$(srctree)/scripts/test_dwarf5_support.sh $(CC) $(CLANG_FLAGS))
>+	depends on !DEBUG_INFO_BTF
>+	help
>+	  Generate DWARF v5 debug info. Requires binutils 2.35, gcc 5.0+ (gcc
>+	  5.0+ accepts the -gdwarf-5 flag but only had partial support for some
>+	  draft features until 7.0), and gdb 8.0+.
>+
>+	  Changes to the structure of debug info in Version 5 allow for around
>+	  15-18% savings in resulting image and debug info section sizes as
>+	  compared to DWARF Version 4. DWARF Version 5 standardizes previous
>+	  extensions such as accelerators for symbol indexing and the format
>+	  for fission (.dwo/.dwp) files. Users may not want to select this
>+	  config if they rely on tooling that has not yet been updated to
>+	  support DWARF Version 5.
>+
> endchoice # "DWARF version"
>
> config DEBUG_INFO_BTF
>diff --git a/scripts/test_dwarf5_support.sh b/scripts/test_dwarf5_support.sh
>new file mode 100755
>index 000000000000..1a00484d0b2e
>--- /dev/null
>+++ b/scripts/test_dwarf5_support.sh
>@@ -0,0 +1,8 @@
>+#!/bin/sh
>+# SPDX-License-Identifier: GPL-2.0
>+
>+# Test that assembler accepts -gdwarf-5 and .file 0 directives, which were bugs
>+# in binutils < 2.35.
>+# https://sourceware.org/bugzilla/show_bug.cgi?id=25612
>+# https://sourceware.org/bugzilla/show_bug.cgi?id=25614
>+echo '.file 0 "filename"' | $* -gdwarf-5 -Wa,-gdwarf-5 -c -x assembler -o /dev/null -
>-- 
>2.30.0.365.g02bc693789-goog
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210129215158.xs2pidjkex2gtqs7%40google.com.
