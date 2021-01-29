Return-Path: <clang-built-linux+bncBCS7XUWOUULBBHFB2KAAMGQEUGVHAZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3a.google.com (mail-vk1-xa3a.google.com [IPv6:2607:f8b0:4864:20::a3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E3FA309045
	for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 23:47:57 +0100 (CET)
Received: by mail-vk1-xa3a.google.com with SMTP id y84sf2920873vkd.5
        for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 14:47:57 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611960476; cv=pass;
        d=google.com; s=arc-20160816;
        b=O5iriBdGg11AkJ/1r1OfwxjlwINLFzdBWDYJ0bJVOfAtcFbXcze5g8CG9S8uPQog8G
         d2cj0dI1NXgp9x/ltiaZQiJZt6PAIfe+EiRS0vYcBdLG7hibwYUrLTQXit0epeZdciNb
         rKE7mkodJGUP1lFBY28VyhxlZa4ltrlyo20b5orGRmii/ukjM3e2rjtKrxx6Fw8bD5Ba
         VfWpQPtQyTFN2NEOxxfVqnx4FoVrItslcXtDFLzUknohCdtvlk4RgmxjKNxcgCfhb3RT
         3UmObFSC7v2V/A1I9XRtr2joTR+fHKltlMx5VTFzeIjwxKSxTgFzz2T2IwtYJUjDXLsQ
         FyKg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=12tN6lN9YqtDV1795Ez/o80Jj2F9VwMS8hUNb8Xf8pY=;
        b=L2LapvA2rbS+eSQWzjZoRso8n9D5/HTrom0J1JynsiAcsv9mjGHdfTzVftRMXR1P2w
         VtioNGaJcVmXWyErENuJnLhAmoPRjcney1bHtibAginw1GrotWM2KqVnE8YYFHEo0D+H
         KW8y2TXaNBpctarh9PTlSGBf3tN+9JyHCXJh9gyIgC40HIWQZ/4PPGnpwF8jes17P6HP
         WbuhRj6i4Mj3DRXVgDWaUs/B0b56LT3ZsFuHmUdV5aOCmqOK2kZjkDfVHmq2ziJ0D+Y9
         sDxvwZCHXnXWQWm9Wr5TEMIPkfZkPPMw52YjVA3kuR3Mwo5kotS9v2c/eRSL6okDjT44
         ab+A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=iozzAKNo;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::629 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=12tN6lN9YqtDV1795Ez/o80Jj2F9VwMS8hUNb8Xf8pY=;
        b=ICazCajTVbU2cGSVKLj5QakFIVzTTk1eHIY0prhceIrVomfOp+rgGgIzVjacZYvPgX
         VUoBfitt+aqJpvIzo3uRgQYChVw8WwN6ehxJvY7rQGPiuwrEmue3YdbU0SovPh3hTMgV
         tZnUzBZV7fTGRsHRIOhFJAMAIh/w3lUVB+oSfKlY77tNh9WzxwI2wZe3Ynb1LmTyeNR3
         oOSgCwJJWBA84MgB1ejgjmQyP+UBsk3mg+UzRzk2rFQkMCPmQtolBqs4QMleVyHJNgyU
         LD+1MI6EcwJWNcUoF4LoIYqG0CgU6KDEtpD4NbBwCyuMROdVP5KqDKmRD2HFXWgaa65x
         IREw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=12tN6lN9YqtDV1795Ez/o80Jj2F9VwMS8hUNb8Xf8pY=;
        b=tK2yPWkS7SiLRa1eDPGhOfIraZSVZ0lDURBv0qQygH8HzI9+1FmBmrXFLlTGLjNyC8
         IYWWHKurrwX9jeUdB65m3xgUzlreeXXbs3xM9OLVjFHFVUB9t5vjWUzk1fCqq/PiUEeJ
         Jagxlw9Z2Rok3cqF+fkJJd9RJqlWKYatqs7KNi9TNu2KUIzGP4Ba8XGkjbWbVzgKVfFA
         akgAQTKRqACugRVIVprnbFu3iVgz+CR57rxl3Klz+Yop902tNKk/D1IDOxHt9U8C9xIC
         dxP+TpMzJ2XQQ6dIXkX4A79X5IPScEGt2ZD2exv/MyM5/RzYuVP67ojou40vF9YgXTJf
         OHnw==
X-Gm-Message-State: AOAM530YDBxh1taNZlaDBET1YHb0pETdBUrejOF57beVfVetLxOcRv2d
	uYKYv9TIKPqcJ3AXA6Z+HPA=
X-Google-Smtp-Source: ABdhPJzhlXHavgbH8UByEm7RQ0xx16SKnTDnxbn4jFu2cbCOuLs6byR6Utx7jykQyh8RUrpKVAXeZA==
X-Received: by 2002:a67:d587:: with SMTP id m7mr4668943vsj.25.1611960476249;
        Fri, 29 Jan 2021 14:47:56 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:e306:: with SMTP id j6ls1346397vsf.7.gmail; Fri, 29 Jan
 2021 14:47:55 -0800 (PST)
X-Received: by 2002:a67:db0a:: with SMTP id z10mr4257549vsj.29.1611960475817;
        Fri, 29 Jan 2021 14:47:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611960475; cv=none;
        d=google.com; s=arc-20160816;
        b=Myrf8XKUC9Ieqevfz7TPh+gOKE9Pl5dTN95kN47xYnrARRysHHle6PscGYcQdYAxdc
         dKXoZ9m05SCPfkdjhs79O/cttE83hr3XHLSp1HqUaEsVhS9ouiiqZ79QvDrd8a5GHYOR
         OFLzFeJPZ749y/LKBSVFPUivS+IdW3vYJfBxQQ687Krz4N1mOpTZZp+z802e2ISa/fOw
         Jbn9VopnuUrCtvTxAsaC/fyAqi4eLcJATkg6PkEloHnHilL3GkYs4F+p6+Cc7FdmDhL1
         jZ1OHJ1atupTHzk3eOukHGBO/DGT42TYKEOT+aPoNF1yhgyIQLxu2FgQscf2lAquI8Tf
         ZPvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=gDlO199tXgO9XFqDPXTn4h+a1uDya+oG7sl995qz8CQ=;
        b=MM2Sulcu73ABWa4gN9AwrFbq5Zo6Mkpx580J5uLEDM8n8gYCb5RpdXTtUFAJLpJ8Wi
         1XDGaMxVNwARKkZ83xrkvUpzg9wOYzoWQv4NM40p/aiVvQX3PIvaSbhBC8s1XRQMkJrL
         cQMaPBD4icTVLxQO/ACHwGTyTvmd18IQ+gmrG9NXye1lYmkPb9wXbVQ68KqR2Q1LFxE/
         lhTwPxkU8YIeLAlj9qcv00MIDFgBlyksISTUf+o5zQ8sl4tCmP13SG5kQTCyRAR4vNsI
         3dDvHB/8rRXzrWWH0nhRcu+L3MfoAz5DtYVwBJEJmtIWLAKAaGqiVVSj4AcyWLV+o76K
         7wxw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=iozzAKNo;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::629 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x629.google.com (mail-pl1-x629.google.com. [2607:f8b0:4864:20::629])
        by gmr-mx.google.com with ESMTPS id l11si648321vkr.5.2021.01.29.14.47.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Jan 2021 14:47:55 -0800 (PST)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::629 as permitted sender) client-ip=2607:f8b0:4864:20::629;
Received: by mail-pl1-x629.google.com with SMTP id e9so6150801plh.3
        for <clang-built-linux@googlegroups.com>; Fri, 29 Jan 2021 14:47:55 -0800 (PST)
X-Received: by 2002:a17:902:e98d:b029:de:9a3a:1b8d with SMTP id f13-20020a170902e98db02900de9a3a1b8dmr6500727plb.3.1611960474950;
        Fri, 29 Jan 2021 14:47:54 -0800 (PST)
Received: from google.com ([2620:15c:2ce:0:a6ae:11ff:fe11:4abb])
        by smtp.gmail.com with ESMTPSA id b26sm9921357pfo.202.2021.01.29.14.47.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Jan 2021 14:47:54 -0800 (PST)
Date: Fri, 29 Jan 2021 14:47:50 -0800
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
Message-ID: <20210129224750.tdvr4to7li7rnldv@google.com>
References: <20210129194318.2125748-1-ndesaulniers@google.com>
 <20210129194318.2125748-3-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20210129194318.2125748-3-ndesaulniers@google.com>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=iozzAKNo;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::629
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
>
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

Since the other thread suggested that you keep just DWARF v4 and v5 and
drop DWARF v2, you'll need v7...

I suggest:

Change the -Wa,-gdwarf-2 logic to add either -Wa,-gdwarf-4 or
-Wa,-gdwarf-5 and drop the CONFIG_CC_IS_CLANG ifdef.
(CONFIG_CC_IS_CLANG is there because clang -Wa,-gdwarf-2 does not allow
DW_AT_ranges which is not in DWARF v2).

GNU as before 2020 did not support -gdwarf-[345]
(https://sourceware.org/bugzilla/show_bug.cgi?id=25612), so you can make
-Wa,-gdwarf-2 a DWARF v4 workaround for older GNU as.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210129224750.tdvr4to7li7rnldv%40google.com.
