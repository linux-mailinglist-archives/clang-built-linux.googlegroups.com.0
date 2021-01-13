Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB6XH7T7QKGQETEXHQZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53e.google.com (mail-pg1-x53e.google.com [IPv6:2607:f8b0:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D1182F5177
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 Jan 2021 18:55:08 +0100 (CET)
Received: by mail-pg1-x53e.google.com with SMTP id t17sf1932318pgu.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 13 Jan 2021 09:55:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610560506; cv=pass;
        d=google.com; s=arc-20160816;
        b=Wy3OjLHNKeRzGeANL04KY49Cn/48RT4AodKZl2UXCsVLhkImWjKcuZkf63MTSl8i6p
         V/6yTkVuh+BSfMmHpNniDJydRHOfnmOp+VFDxid5MtBuxr+p9G8pg068+mef2NzUFvXy
         omDZwVP/+IaoFnVTv3x+lLy1k2Hoj8aEyzjNSNsDdqILKtjQqJGzRyBP5R1p+QqPMrZ/
         BsHr/+X+YsFspmCP/7tmEY6Uzo7zAoEaz+P0YtG7m3RnUF4Oz8p/3OIYR117oUJ79BKa
         KXB3Sbr90ySqseYHnEpxtI2lSQk3ee3pjUL31iGl+NQdmC61JPumPjLRpQ4e7yHlwTC/
         zxcg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=AB/C+VOD4AHzU0lv3QGqq7jBPbG/j/SgeGzVsGsPgTo=;
        b=LmTNwphXB6pBTbe7Key3J2YOW/Cf59j13DGeMXJpXzlLiIzoajmgTElNQ2i9dANGn+
         IFfYgDFlKaxzf0doNM081by5L2JqEN7WBRbIs6r9h9ErcgOMuJ7cedYL2plkHL3gxVuP
         xgS6aBqyWDlXILZ8vSsVZFBPyIc9vtmcOdKk0/03RGNpvdPmzdg2y/OXcsWnVHyqcntP
         ++0ncOK6U3ayiUTfkwPUELk+JIetCntnTEiFRcRpMWFNtj/IDDdpohMJUbsTi6zjHwxM
         NXlLvmt9HodQmgESNpssiZz8Cl7TRYVlDW9xgeVkQVcyBp69e7W5UmXhicQoIEd8k2mC
         Cs6w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=O5MT405b;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::731 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=AB/C+VOD4AHzU0lv3QGqq7jBPbG/j/SgeGzVsGsPgTo=;
        b=PkAYZrlkHFfEb0Nv4hpNKmBF9drL8rbQkjtwSKmOTk/t3+y+5hghaxVNxxR2SRLXKj
         G4mUwkPzDr379ysVweK8P/G1n6ShBh05dr6kLdzTOzFFqxK1BLEGeGJcUDUZJExrkOba
         +NmHAq2SbQcnOZBbKWRrFqIjr9UmK+v5WXFDjRXUF3VxJtKm+Ca6W1+CaHb0eXZ2c2Lk
         6m3BrYcJYLZ624vHyHh+oK5G2n6xL98kmzKtowQ66emuCHcz1JHZA6DIyJ/ibIN9wP0m
         72qGp7tUCfC0uvMe9hsCpoAFBqgm9r3nyEAfaHp9lmd57qeFUvXfGqX09DEHmch2bxaJ
         cGfw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=AB/C+VOD4AHzU0lv3QGqq7jBPbG/j/SgeGzVsGsPgTo=;
        b=B3pw2hY7UCCHpx2ytFN8IaWXVIaKBlUrCgiT1ROMBC71VRMpcRE1VmUHGHi+9wHzN/
         4ZTaeHn7CoZvMipcAUKZWuVZwHVyPVEBYvS+p7ru8tDdRz1p2GiDgaSaFTQiaacYDY/X
         UtmadwPF/ib7fUzz512VrZZKQhtzVGpxsAa9Xx6MPkBdk5Jl1yV9gFBqPqm+Uzal0Ni8
         63uWDBQvHsU2E2GzQR+0byNz1d5LVXQt0jB3wGiKD8yzcXxJafEAfZ/rZ8g3aOd8/CXc
         xNR/V+DE6OCLVlnIR+eLOFfavafPD9PkkrSD+QzX1sRtb5owRZhJDDSw+5jo+Q9KY0BH
         aj3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=AB/C+VOD4AHzU0lv3QGqq7jBPbG/j/SgeGzVsGsPgTo=;
        b=U0Gl0S2mfG5bchyLP8sPRo/lFcQQg0IseqJN71PiOolkVckjBLx0XKIxre+7lEnqdw
         4xLbNYAQkcJVn81ac2pJ27baGvlm/sREPUsa0jzXNF8y42eaZstJwbWyZol1RvLUyWyR
         346gDTOnM5zCpJh9TlBhkEt/GuqAMYrX0XWVrpSSubCxpkzFPdFYyu5rSB2LD+cRs/UD
         N4c4JnyL3J2keO8RHPCUJGxqAezhl103EcTdJnEt8UZXGXxp5tFjQQf7vXNAklQOAoz0
         y3fuNthGz4UWBE3zyL6US2dQ2F3922I1kdqTOOSxdnJUb/M2p1zWLH90yzQGjqfWh52F
         +KPA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532eOKy+pqcHTw2XpNu3U5SZVCl3JLVx4D2EGh6PGh4QCVRnVo4K
	CvEuG1P1RBvRgJEieBNSgow=
X-Google-Smtp-Source: ABdhPJzFqQtLV2OsSOIizYKNuK1u4ukfxDWkj5cdbjhxCHfNy0D7ncTapHebE5eMORMNNitLD+4ssw==
X-Received: by 2002:a17:902:c410:b029:dd:7d4a:e50 with SMTP id k16-20020a170902c410b02900dd7d4a0e50mr3528977plk.36.1610560506728;
        Wed, 13 Jan 2021 09:55:06 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:96d4:: with SMTP id h20ls1134338pfq.5.gmail; Wed, 13 Jan
 2021 09:55:06 -0800 (PST)
X-Received: by 2002:a63:3086:: with SMTP id w128mr3065705pgw.227.1610560506027;
        Wed, 13 Jan 2021 09:55:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610560506; cv=none;
        d=google.com; s=arc-20160816;
        b=frUKe4SQkfledfT12Ty+eJbFQfgFgPzEvSKMK9d5mqyn03m79fTHiCJ0wEnTDASs0J
         6pItR9NdPpLl7uFDZxpWog4tpXgY6Pf8klSdi2I/E9aRzQrDLHLHIgAmbsWdRN25FOpz
         3RHbooe1BLYoJOIDrhup+hn1URlPocJU1CrnbRYrqqOiucDGoVZI3LLdMGShaA4wCfEA
         47pLk4N4LEAYoTBWp1lAfJ4tkD0ZeMD7/t/AtLjZYuN2xkCCe3gY/pgyey2Wj0xRhjs/
         KF6hn+8tjluIoJOvOTl24aLDGaQDznkDIsgRIsD9haTsJsKhPapM+sxuJFliUTH9yDrV
         cc3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=+hfHoNO0I8KH/ocWW18bIfM/5TPtJSym5RVhTD/3ic4=;
        b=qw3SEl70LHeC61aIhjcwwakU4tExbNSAOzJRHxjvrHcV0lo+1jE9GwsbKC7FgvTmJH
         /q3EqxCicU0rnSUt5vIqv0BrlEbk3N7v6kQu+0qEBK8ieXkON7X3FCLOl5doFeZzyNHq
         S1MiwddvSIlbavZYmYPJ99/vzm/5wUfZZKsDqbE5tQdQQMFMQsEAy28rIjfR7osYtgpd
         ptl/8vYSX32JocB9iwbXxPeOIdQEq7gT+veN4cMRzpP+6f7IKdPVbbA3o6gLUHASJSUh
         MHl7qYVO6OGQxbDM4/i1TQwiM/NgzJnJD69cTzWw+Xwu7n8vnrctNe8tFlRUTSbDIyJi
         eCag==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=O5MT405b;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::731 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x731.google.com (mail-qk1-x731.google.com. [2607:f8b0:4864:20::731])
        by gmr-mx.google.com with ESMTPS id j11si173467pgm.4.2021.01.13.09.55.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Jan 2021 09:55:06 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::731 as permitted sender) client-ip=2607:f8b0:4864:20::731;
Received: by mail-qk1-x731.google.com with SMTP id b64so2953163qkc.12
        for <clang-built-linux@googlegroups.com>; Wed, 13 Jan 2021 09:55:05 -0800 (PST)
X-Received: by 2002:a37:8d85:: with SMTP id p127mr3120897qkd.393.1610560505104;
        Wed, 13 Jan 2021 09:55:05 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id n14sm1385094qtr.9.2021.01.13.09.55.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Jan 2021 09:55:04 -0800 (PST)
Date: Wed, 13 Jan 2021 10:55:02 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	Sedat Dilek <sedat.dilek@gmail.com>, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com, linux-kbuild@vger.kernel.org,
	linux-arch@vger.kernel.org, Jakub Jelinek <jakub@redhat.com>,
	Fangrui Song <maskray@google.com>,
	Caroline Tice <cmtice@google.com>, Nick Clifton <nickc@redhat.com>,
	Arvind Sankar <nivedita@alum.mit.edu>
Subject: Re: [PATCH v4 3/3] Kbuild: implement support for DWARF v5
Message-ID: <20210113175502.GC4158893@ubuntu-m3-large-x86>
References: <20210113003235.716547-1-ndesaulniers@google.com>
 <20210113003235.716547-4-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210113003235.716547-4-ndesaulniers@google.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=O5MT405b;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::731 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Tue, Jan 12, 2021 at 04:32:35PM -0800, Nick Desaulniers wrote:
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

One small nit below.

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

> ---
>  Makefile                          |  1 +
>  include/asm-generic/vmlinux.lds.h |  6 +++++-
>  lib/Kconfig.debug                 | 17 +++++++++++++++++
>  scripts/test_dwarf5_support.sh    |  9 +++++++++
>  4 files changed, 32 insertions(+), 1 deletion(-)
>  create mode 100755 scripts/test_dwarf5_support.sh
> 
> diff --git a/Makefile b/Makefile
> index 656fff17b331..1067cfd98249 100644
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
> index 49944f00d2b3..37dc4110875e 100644
> --- a/include/asm-generic/vmlinux.lds.h
> +++ b/include/asm-generic/vmlinux.lds.h
> @@ -843,7 +843,11 @@
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
> index e80770fac4f0..60a4f5e27ada 100644
> --- a/lib/Kconfig.debug
> +++ b/lib/Kconfig.debug
> @@ -273,6 +273,23 @@ config DEBUG_INFO_DWARF4
>  	  It makes the debug information larger, but it significantly
>  	  improves the success of resolving variables in gdb on optimized code.
>  
> +config DEBUG_INFO_DWARF5
> +	bool "Generate DWARF Version 5 debuginfo"
> +	depends on GCC_VERSION >= 50000 || CC_IS_CLANG
> +	depends on CC_IS_GCC || $(success,$(srctree)/scripts/test_dwarf5_support.sh $(CC) $(CLANG_FLAGS))
> +	help
> +	  Generate DWARF v5 debug info. Requires binutils 2.35, gcc 5.0+ (gcc
> +	  5.0+ accepts the -gdwarf-5 flag but only had partial support for some
> +	  draft features until 7.0), and gdb 8.0+.
> +
> +	  Changes to the structure of debug info in Version 5 allow for around
> +	  15-18% savings in resulting image and debug info section sizes as
> +	  compared to DWARF Version 4. DWARF Version 5 standardizes previous
> +	  extensions such as accelerators for symbol indexing and the format
> +	  for fission (.dwo/.dwp) files. Users may not want to select this
> +	  config if they rely on tooling that has not yet been updated to
> +	  support DWARF Version 5.
> +
>  endchoice # "DWARF version"
>  
>  config DEBUG_INFO_BTF
> diff --git a/scripts/test_dwarf5_support.sh b/scripts/test_dwarf5_support.sh
> new file mode 100755
> index 000000000000..142a1b5c7fa2
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

This is unnecessary, clang will error without this and a script's exit
code is the exit code of its last command.

> +echo '.file 0 "filename"' | $* -gdwarf-5 -Wa,-gdwarf-5 -c -x assembler -o /dev/null -
> -- 
> 2.30.0.284.gd98b1dd5eaa7-goog
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210113175502.GC4158893%40ubuntu-m3-large-x86.
