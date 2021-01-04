Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBUFFZ37QKGQENQVXNEQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb39.google.com (mail-yb1-xb39.google.com [IPv6:2607:f8b0:4864:20::b39])
	by mail.lfdr.de (Postfix) with ESMTPS id 489542E9FD8
	for <lists+clang-built-linux@lfdr.de>; Mon,  4 Jan 2021 23:12:33 +0100 (CET)
Received: by mail-yb1-xb39.google.com with SMTP id q11sf53939875ybm.21
        for <lists+clang-built-linux@lfdr.de>; Mon, 04 Jan 2021 14:12:33 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609798352; cv=pass;
        d=google.com; s=arc-20160816;
        b=MxlZZ0LHpCCD4rR2hR6DBoTjwd5jSpr4HMdSOOH0dXy6kMqwZ9ToV3Y5LhJDwkKneC
         30EMx+Wzqd6t4zBOO8vneug30oTfCiWJkdK4Hm8EfjvnZvlqnFCR62RfBFGmKER4YEhl
         2dN31ClJgbnDK1raDFoV+rkAV01ykcVizndz3WJK/niHQmMNy8xKfjWtdKctSQQvpgeL
         ibSF4NO8TEFHq3ba7Yajm7sjaEog+4h3s/gF6CdhmQSKVzxnafuMKWsgwIHfO+2aSViI
         g5NEnD9Sa4ODx28YVbJX8wBiaAtA/N7qkRClgHizLGEMuI0BnsQ4mAL4rQ/8C2o/TiFq
         QcJw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=qsfsWEb/WoYzCqWLc6uhw5YB0rohvK7m1X98sswrTnY=;
        b=sVoN5pW0KWQVLUi40X/zxrnUtVjchTYd3V+EIyPJINFcKu2X7xtqr8Cgn+E0nV9xJB
         gzMcgkyA/hO4IxHK9jvVEEvwLffjOoaS36hs8h9O/J4K3kTQMjIbvGDl6mbNgXEHwERW
         oF2keI32C9bKaC4cOnMr3K/H9zqA3706p0DlUqkqrsUwKiLMoxvADIWGCsq6zdWFBPoc
         lJFoqp/AY7W8bKhYmr3bsCjxygaoOv6m96ei30+JDR7CIRzvgp/pfCkH+Y0KPvcWvOU8
         PeWp8Ry6VK00nrb5YRldCpHsQEF3rpBPIsFwYUgj2gJO+6sXxy7LvdoP5qyIRtvDYSSh
         V2OQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bsAS2U5f;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::f34 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qsfsWEb/WoYzCqWLc6uhw5YB0rohvK7m1X98sswrTnY=;
        b=dK7KCQw2HGFRlDL8fqLAlioG+OiAHWFaI1o5Hbj6JCHWDBHHBZ41Pl4WAf50/RcDLf
         dTyy3vscT/60+smp34hppAZceFKjoIhzznEvAMp84TrBLXlyE4DLuAvck/Bmvc9ifTwN
         nYAQVzPnytvq+BOu67vCduYmpNqsVvvQeIocfZ6rLdhFLF7GKEujYqsNDY82v1tSZAYr
         q3WSbxvGBmBoUiOUL9hA71+hT18KA1dXTEMpb9VxwjRngWwnu2/BQa+HuY0LxlI6NgrR
         WMBYS3rmJrS0TPf2N5FzAXcf4B3Txqq/qZYA4U2uRENODJuLGv8UhXeuPB8ZtEONP0XO
         4O0Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qsfsWEb/WoYzCqWLc6uhw5YB0rohvK7m1X98sswrTnY=;
        b=Axi4NuIjYutwrbhUE0+MHhZLpAtgff1mpAEQRAPcYZjoIbbZUrwIEQA3pzHvtq4Gf5
         b8ikhcULGV4IssrX4gmnGvN4CruRJzsiQRZCAUIWGM3ERPwtaowwzXKJugh86pmF1qes
         HnMbSKGuc4wrsZi3A/o2U1dfjPnTPGZFfYSk3kXS4Ll6IXpnFZFaUTGnGCuL6tBQaxqh
         cT4UOUxz98W9SJFFLy6zo7Qw3igqp3KsY6LmHvzxP5klPvRHPUcw1pe4xsGRCiWofe8h
         iYmEoWaVP8XntDAgyhuvBpVU/evs/v3AATE/ZLeaIatBZ9tIPNZje0SgH2t5smqP4GfL
         jGNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=qsfsWEb/WoYzCqWLc6uhw5YB0rohvK7m1X98sswrTnY=;
        b=jofn1dZUvS64NLlJ0KdsYcIAewEbZLQCYzuNZHLygTA5te7GL1nCqL9dTKtM7laStF
         8TLhbdH5kK8XNW9OfBvelokhXYR9PnWFXZsQIAx9JvNPs2K40nsEquG2QEjS2r5fDkLn
         zlIqI04CENR7V0Q2bKU0zeU98+4dkjrYGfYidb5EWKSTBZm6yQpVYC6DSby0Pl7QSvuV
         M45ehLYxOqmqOT0xYAxdjS0+OzYoEGi6WwzRlvyFLoy/fSqbYwYvf+WdMFNi2pZF7Orq
         iVwuwWBVOZACIRIyH/bN+MzqOGIrnNxLrU5IgbzVaBzAifKEPlw+kgpZ7ajcWpxJqdHH
         YnzQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532dC7kfMpBoJZ9riA7jLcMiNTv/rCtAlXTvRMQMORdShw3qAZar
	KaaI53YGBdJQ0e/DKC/8jXo=
X-Google-Smtp-Source: ABdhPJxeYBmTtbsnI2AOU8A0jzzSjPlMrQhpaeaN/f406TbkmrZI+lv+PViiFwnJ9RDRk1uuRvZg7Q==
X-Received: by 2002:a25:2643:: with SMTP id m64mr113062701ybm.221.1609798352385;
        Mon, 04 Jan 2021 14:12:32 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:946:: with SMTP id u6ls15565112ybm.1.gmail; Mon, 04 Jan
 2021 14:12:32 -0800 (PST)
X-Received: by 2002:a25:ade2:: with SMTP id d34mr106914496ybe.15.1609798352044;
        Mon, 04 Jan 2021 14:12:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609798352; cv=none;
        d=google.com; s=arc-20160816;
        b=EDC6/lh+DOSlpl2Qxvs/03B/33X8TVDRg232iww5D2Vo9J2UKvjCg8dE83ThYi6FUo
         ttE4aWXGJv64nmWrDlYkIZ7nCfI7MMGDaAqZUqSVuelIYilaJfYqFZ2n2ymfeK8IXpkg
         AhcRWvgD/BKZ4zg89vs5f4Xa79duxocD4kgtr8CCQW6FJQi88SHG5cOdUXYt0kMYBPV9
         No/2ZdyQ8n32H7m8oEwOoJOpyyMf6IiU3lgPGvYgWDPmLlY/7w46qlD98k58HW1vSYzC
         Bz82ShmUz9nL+L7mjG3dFAsczGE3RuKVnzTrsB8/FauBwhPHP7ViNYpDkcFCvQSJq5fF
         0dWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=nZJG52DxHM8NxYEaACeWBEq/7egLrC9ZK8TAPAUC9Tw=;
        b=IpLf8pp8Vq7PyHW5xRJm8/Y519hgdx+YOpo2cHheNctlrj5iSlWxwt+DroY4hGu/Oo
         j1ZUaLsY89nMjJOfsICPX6Mtvwa92gHK4G+0rkDnM4RJomVlylM6AYacVJ/IEL1eeI/h
         RiUb2HXpGXrLble5tsTztr5R0tGE22xftaBwPfHttj0awx7whXGJcJhwX/jkWp2DGzUF
         nQoQ9/JMtGC54uMdOnrFBPF8dG54pOuZsebNDkls8U2g4qBfeg5Nlu7qjCRNn7YS8AK/
         qdNl9WEWWkrfO8VGyiAFQpLV4gt4H/SV7Cc0W1boZrXoxtSwi1wzHjLwULUEoT/z1Y6i
         62Eg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bsAS2U5f;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::f34 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qv1-xf34.google.com (mail-qv1-xf34.google.com. [2607:f8b0:4864:20::f34])
        by gmr-mx.google.com with ESMTPS id r12si4586310ybc.3.2021.01.04.14.12.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Jan 2021 14:12:32 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::f34 as permitted sender) client-ip=2607:f8b0:4864:20::f34;
Received: by mail-qv1-xf34.google.com with SMTP id j18so13808061qvu.3
        for <clang-built-linux@googlegroups.com>; Mon, 04 Jan 2021 14:12:32 -0800 (PST)
X-Received: by 2002:a05:6214:20a7:: with SMTP id 7mr78391783qvd.59.1609798351740;
        Mon, 04 Jan 2021 14:12:31 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id k19sm37992586qkh.6.2021.01.04.14.12.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Jan 2021 14:12:30 -0800 (PST)
Date: Mon, 4 Jan 2021 15:12:29 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Jakub Jelinek <jakub@redhat.com>, Fangrui Song <maskray@google.com>,
	Caroline Tice <cmtice@google.com>,
	clang-built-linux@googlegroups.com, Nick Clifton <nickc@redhat.com>,
	Michal Marek <michal.lkml@markovi.net>,
	Arnd Bergmann <arnd@arndb.de>,
	Andrew Morton <akpm@linux-foundation.org>,
	Randy Dunlap <rdunlap@infradead.org>,
	Changbin Du <changbin.du@intel.com>,
	"peterz@infradead.org" <peterz@infradead.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Krzysztof Kozlowski <krzk@kernel.org>, linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arch@vger.kernel.org
Subject: Re: [PATCH v3 2/2] Kbuild: implement support for DWARF v5
Message-ID: <20210104221229.GB1405526@ubuntu-m3-large-x86>
References: <20201204011129.2493105-1-ndesaulniers@google.com>
 <20201204011129.2493105-2-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201204011129.2493105-2-ndesaulniers@google.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=bsAS2U5f;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::f34 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Thu, Dec 03, 2020 at 05:11:27PM -0800, Nick Desaulniers wrote:
> DWARF v5 is the latest standard of the DWARF debug info format.
> 
> Feature detection of DWARF5 is onerous, especially given that we've
> removed $(AS), so we must query $(CC) for DWARF5 assembler directive
> support.  GNU `as` only recently gained support for specifying
> -gdwarf-5.
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
> Link: http://www.dwarfstd.org/doc/DWARF5.pdf
> Suggested-by: Arvind Sankar <nivedita@alum.mit.edu>
> Suggested-by: Jakub Jelinek <jakub@redhat.com>
> Suggested-by: Masahiro Yamada <masahiroy@kernel.org>
> Suggested-by: Fangrui Song <maskray@google.com>
> Suggested-by: Caroline Tice <cmtice@google.com>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

> ---
>  Makefile                          |  1 +
>  include/asm-generic/vmlinux.lds.h |  6 +++++-
>  lib/Kconfig.debug                 | 14 ++++++++++++++
>  scripts/test_dwarf5_support.sh    |  9 +++++++++
>  4 files changed, 29 insertions(+), 1 deletion(-)
>  create mode 100755 scripts/test_dwarf5_support.sh
> 
> diff --git a/Makefile b/Makefile
> index 2430e1ee7c44..45231f6c1935 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -828,6 +828,7 @@ endif
>  
>  dwarf-version-$(CONFIG_DEBUG_INFO_DWARF2) := 2
>  dwarf-version-$(CONFIG_DEBUG_INFO_DWARF4) := 4
> +dwarf-version-$(CONFIG_DEBUG_INFO_DWARF5) := 5
>  DEBUG_CFLAGS	+= -gdwarf-$(dwarf-version-y)
>  ifneq ($(dwarf-version-y)$(LLVM_IAS),21)
>  # Binutils 2.35+ required for -gdwarf-4+ support.
> diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
> index b2b3d81b1535..76ce62c77029 100644
> --- a/include/asm-generic/vmlinux.lds.h
> +++ b/include/asm-generic/vmlinux.lds.h
> @@ -829,7 +829,11 @@
>  		.debug_types	0 : { *(.debug_types) }			\
>  		/* DWARF 5 */						\
>  		.debug_macro	0 : { *(.debug_macro) }			\
> -		.debug_addr	0 : { *(.debug_addr) }
> +		.debug_addr	0 : { *(.debug_addr) }			\
> +		.debug_line_str	0 : { *(.debug_line_str) }		\
> +		.debug_loclists	0 : { *(.debug_loclists) }		\
> +		.debug_rnglists	0 : { *(.debug_rnglists) }		\
> +		.debug_str_offsets	0 : { *(.debug_str_offsets) }
>  
>  /* Stabs debugging sections. */
>  #define STABS_DEBUG							\
> diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
> index 04719294a7a3..987815771ad6 100644
> --- a/lib/Kconfig.debug
> +++ b/lib/Kconfig.debug
> @@ -274,6 +274,20 @@ config DEBUG_INFO_DWARF4
>  	  It makes the debug information larger, but it significantly
>  	  improves the success of resolving variables in gdb on optimized code.
>  
> +config DEBUG_INFO_DWARF5
> +	bool "Generate DWARF Version 5 debuginfo"
> +	depends on GCC_VERSION >= 70000 || CC_IS_CLANG
> +	depends on $(success,$(srctree)/scripts/test_dwarf5_support.sh $(CC) $(CLANG_FLAGS))
> +	help
> +	  Generate DWARF v5 debug info. Requires binutils 2.35, gcc 7.0+, and
> +	  gdb 8.0+. Changes to the structure of debug info in Version 5 allow
> +	  for around 15-18% savings in resulting image and debug info section sizes
> +	  as compared to DWARF Version 4. DWARF Version 5 standardizes previous
> +	  extensions such as accelerators for symbol indexing and the format for
> +	  fission (.dwo/.dwp) files. Users may not want to select this config if
> +	  they rely on tooling that has not yet been updated to support
> +	  DWARF Version 5.
> +
>  endchoice # "DWARF version"
>  
>  config DEBUG_INFO_BTF
> diff --git a/scripts/test_dwarf5_support.sh b/scripts/test_dwarf5_support.sh
> new file mode 100755
> index 000000000000..156ad5ec4274
> --- /dev/null
> +++ b/scripts/test_dwarf5_support.sh
> @@ -0,0 +1,9 @@
> +#!/bin/sh
> +# SPDX-License-Identifier: GPL-2.0
> +
> +# Test that assembler accepts -gdwarf-5 and .file 0 directives, which were bugs
> +# in binutils < 2.35.
> +# https://sourceware.org/bugzilla/show_bug.cgi?id=25612
> +# https://sourceware.org/bugzilla/show_bug.cgi?id=25614
> +set -e
> +echo '.file 0 "filename"' | $* -Wa,-gdwarf-5 -c -x assembler -o /dev/null -
> -- 
> 2.29.2.576.ga3fc446d84-goog
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210104221229.GB1405526%40ubuntu-m3-large-x86.
