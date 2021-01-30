Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBHHY2KAAMGQEHBBBPOY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3e.google.com (mail-io1-xd3e.google.com [IPv6:2607:f8b0:4864:20::d3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 5780A30915A
	for <lists+clang-built-linux@lfdr.de>; Sat, 30 Jan 2021 02:53:33 +0100 (CET)
Received: by mail-io1-xd3e.google.com with SMTP id w4sf8412380iod.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 17:53:33 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611971612; cv=pass;
        d=google.com; s=arc-20160816;
        b=a9B4OnUFGDY3hYWEkJYq+yoI6feNmwgsGXfjDWH1o3IyMs4ZLiO85P3pSCIna8Lh7w
         CowuhAQqk5HpWDr+tDeJBT1ATpVQt162O6jIIvyCKObGl5FiYtCH/CroAdJgzcMoAWJD
         a/rrUoAFcv3c4bYGdiVfEKsB3uRveqG3ozRzgNJJ5OIuSTIngvDobA7P+d3SltK5x+d9
         H/l3BuocryIv4RgrAgE9Lw2LmJkaVhEtJzsBezV98PZpJwEG5Tgne/J5roSNeocdFAda
         BG70BYFJ9+9RZpWge+uvsyIp2uLOVGFLtHR9fuueMiSWSa0mhWjUc8wa/HEWurU26VuC
         wL4A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=SerBO9pX5B9Wl4iKVVKX/Affmmrxr5cU9GiWmPMuPrE=;
        b=K2Dv/j2jrhNEkJBxJ+1kTlqea1HJU+2uTrkFNIKb+tBu95Q/FGCliCiqxI5pAXi6IY
         CSQIbOcn3UeUZgJubssTU+lkdZA/ut3BnqWIDQvqoUUHdF56SrSWdFiwBfV/mttmTpBm
         zl9bz8FzrNqHVd8oBRPf13p9Du0uYOX8GeX/otWW+GmseEDeH/NdEhTGcwHWOSGLX7YF
         YxDoDO0ZNSyRQoEh0p/qTtgHrpYptn5DpqG3mhCEKCQekLzIUU3ZSiRnpQkAkQrw67fB
         ss2Y55lw5BkY+KSCutvvwbJgISCmUgGNCulXDf1+TtFL0a7OTOvf2H8apIHtQa42Lkyo
         y9Vg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Di7ermcZ;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=SerBO9pX5B9Wl4iKVVKX/Affmmrxr5cU9GiWmPMuPrE=;
        b=K1+ke+Z1J9SbCoFpL6SGf05aEou24gp+sfyUsoB3XfweqTvMSMaodvFAD1V8YlXUbB
         7nqXaPsC9N0JwRGyXin6hkFEmZOpEPKdLeuoXu24oQ3qoGWLllOZYeSPl5DEyI0aTWXr
         M5VUFD4WYmyrDR4umrKqhAVU+ymQelp9Rl9CELGl5p8jmhqionEmxaWb1E1ggPnNayu9
         3MYYMFzBbr8zrhbzmjv3GZ6OimGbOhLDqzh9dF55js5vy1+nstXe+EREts+0svDH2fIu
         rkpLrgrPMBqtRzDCNUxetiwLov7C+2c/fY8VD7rIEYyFSlq4QhbAHog/Zn7mvlIkQBg6
         vjdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=SerBO9pX5B9Wl4iKVVKX/Affmmrxr5cU9GiWmPMuPrE=;
        b=gGEwxFiy3hwwQb6G3OCmhyxygJPRV8WK2HzfPMOohfVn58TcH+vI3Jd5f1p6rlFYMt
         LPV7jFRoCrRvRX0U90mmRA+7KGslAGilgzKOLbM7Va5kFzui3kQof+7mjo9cFeKFEhcO
         dRIt2FI4PKiGeUlQDBnYrhQ05xhUIK3gsmU4R8HrddhjHwiJqAePpCsunsQ0fN+Qxnj2
         ni8/A8w28l6UYwrMkkjeEjskcqJG++GlFLDd7R+mc39hpy+TGuaGqDWbkc2CnLtzrk5P
         YvJStdsw4imtknhC91/2DtRTSOrNBC1+b8OuyRC0gACrTjNqVWD96msHvetHYLWmXxou
         D08g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531KdjW3a+rJz7NsZZ6L/3pCAMtBq1tOlui1wvYDU5ELUeZMMU4l
	cT94ON8c1tWeK/0oVTTIG6U=
X-Google-Smtp-Source: ABdhPJzL20Le/NsY1/AdlEmyUX68cehMsUmWmEQ0g4g2iVU9uZdvd4GUjmNROezy7tj76j2+hGXRnA==
X-Received: by 2002:a92:dc02:: with SMTP id t2mr5610329iln.293.1611971612361;
        Fri, 29 Jan 2021 17:53:32 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:c549:: with SMTP id a9ls2663416ilj.10.gmail; Fri, 29 Jan
 2021 17:53:31 -0800 (PST)
X-Received: by 2002:a92:58ce:: with SMTP id z75mr5538282ilf.209.1611971611613;
        Fri, 29 Jan 2021 17:53:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611971611; cv=none;
        d=google.com; s=arc-20160816;
        b=KNvQQKrfBT6xrVs59lSNZcx9dg+jg+oKX6tDmh907ad975RHTbWQvFUscrDCstXocD
         ciF8JZl8hDh3cGU2nK7BtVgStM+QFcuqbadT3jMKb9c6PKKTfOkDz98ygDjkuuc51yu6
         CzbXuAIWunbaQetF47wK2/T03iXGs3QwFkqKQSwzpLW3G4jZbEx2U0nwmD/1kPx44WIy
         +7NgL9idz7uZklO5nWSDNpmEmeaXYfLSzVrulxC8lh0MASw/P68ZouEXrUSx2mxuHire
         DBILrP5FFpDL1ytY0M65hI0NiyZb/+kCti3yuUK7d1wKH+n85GLa3LUZ8k3ZLwQ321qC
         SgIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=u2mGL+aDw3ZTmj1SPRVSoGHC0VukI9HjDtjPlER5Geo=;
        b=BruLlgSLGzVpLk2UK3B8Q6o61gvVB0/SY3LH/Iaun6sIqNaHkOfPQbwqMF4RlLb6z4
         dH8KenSKzKz+0ZK8l8u3gdzz/+SmxPfqAuGFSRvRw3goi0klM/hWbEoid9HV5oiCkMLr
         xrTMEsP4x7O1hYRGV1G7NiqS6kG2efYBaZeVdWNrdoyP4XXKVGtlQIbic2hOVGtutVIT
         vL/z0nm48VVTMpFWHwGuCwDt6VMCZDVwP0sogFdMyYH692JUZYWx3rRJ+dLXWbXGZ+/O
         s2+rpNHD0j7fkcaMu4vU3+qnvjQ/e9qxV2YGjy+e+PKdA/po3ENTHE5dQg7gbKAejlFG
         cnTw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Di7ermcZ;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d24si575916ioi.3.2021.01.29.17.53.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Jan 2021 17:53:31 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9371364E02;
	Sat, 30 Jan 2021 01:53:29 +0000 (UTC)
Date: Fri, 29 Jan 2021 18:53:27 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Sedat Dilek <sedat.dilek@gmail.com>, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com, linux-kbuild@vger.kernel.org,
	linux-arch@vger.kernel.org, Jakub Jelinek <jakub@redhat.com>,
	Fangrui Song <maskray@google.com>,
	Caroline Tice <cmtice@google.com>, Nick Clifton <nickc@redhat.com>,
	Yonghong Song <yhs@fb.com>, Jiri Olsa <jolsa@kernel.org>,
	Andrii Nakryiko <andrii@kernel.org>,
	Arnaldo Carvalho de Melo <acme@kernel.org>,
	Arvind Sankar <nivedita@alum.mit.edu>
Subject: Re: [PATCH v7 2/2] Kbuild: implement support for DWARF v5
Message-ID: <20210130015327.GD2709570@localhost>
References: <20210130004401.2528717-1-ndesaulniers@google.com>
 <20210130004401.2528717-3-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210130004401.2528717-3-ndesaulniers@google.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=Di7ermcZ;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Fri, Jan 29, 2021 at 04:44:01PM -0800, Nick Desaulniers wrote:
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

Reviewed-by: Nathan Chancellor <nathan@kernel.org>

> ---
>  Makefile                          |  1 +
>  include/asm-generic/vmlinux.lds.h |  7 ++++++-
>  lib/Kconfig.debug                 | 18 ++++++++++++++++++
>  scripts/test_dwarf5_support.sh    |  8 ++++++++
>  4 files changed, 33 insertions(+), 1 deletion(-)
>  create mode 100755 scripts/test_dwarf5_support.sh
> 
> diff --git a/Makefile b/Makefile
> index d2b4980807e0..5387a6f2f62d 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -831,6 +831,7 @@ KBUILD_AFLAGS	+= -Wa,-gdwarf-2
>  endif
>  
>  dwarf-version-$(CONFIG_DEBUG_INFO_DWARF4) := 4
> +dwarf-version-$(CONFIG_DEBUG_INFO_DWARF5) := 5
>  DEBUG_CFLAGS	+= -gdwarf-$(dwarf-version-y)
>  
>  ifdef CONFIG_DEBUG_INFO_REDUCED
> diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
> index 34b7e0d2346c..1e7cde4bd3f9 100644
> --- a/include/asm-generic/vmlinux.lds.h
> +++ b/include/asm-generic/vmlinux.lds.h
> @@ -842,8 +842,13 @@
>  		/* DWARF 4 */						\
>  		.debug_types	0 : { *(.debug_types) }			\
>  		/* DWARF 5 */						\
> +		.debug_addr	0 : { *(.debug_addr) }			\
> +		.debug_line_str	0 : { *(.debug_line_str) }		\
> +		.debug_loclists	0 : { *(.debug_loclists) }		\
>  		.debug_macro	0 : { *(.debug_macro) }			\
> -		.debug_addr	0 : { *(.debug_addr) }
> +		.debug_names	0 : { *(.debug_names) }			\
> +		.debug_rnglists	0 : { *(.debug_rnglists) }		\
> +		.debug_str_offsets	0 : { *(.debug_str_offsets) }
>  
>  /* Stabs debugging sections. */
>  #define STABS_DEBUG							\
> diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
> index 94c1a7ed6306..ad6f78989d4f 100644
> --- a/lib/Kconfig.debug
> +++ b/lib/Kconfig.debug
> @@ -268,6 +268,24 @@ config DEBUG_INFO_DWARF4
>  	  It makes the debug information larger, but it significantly
>  	  improves the success of resolving variables in gdb on optimized code.
>  
> +config DEBUG_INFO_DWARF5
> +	bool "Generate DWARF Version 5 debuginfo"
> +	depends on GCC_VERSION >= 50000 || CC_IS_CLANG
> +	depends on CC_IS_GCC || $(success,$(srctree)/scripts/test_dwarf5_support.sh $(CC) $(CLANG_FLAGS))
> +	depends on !DEBUG_INFO_BTF
> +	help
> +	  Generate DWARF v5 debug info. Requires binutils 2.35.2, gcc 5.0+ (gcc
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
> index 000000000000..c46e2456b47a
> --- /dev/null
> +++ b/scripts/test_dwarf5_support.sh
> @@ -0,0 +1,8 @@
> +#!/bin/sh
> +# SPDX-License-Identifier: GPL-2.0
> +
> +# Test that the assembler doesn't need -Wa,-gdwarf-5 when presented with DWARF
> +# v5 input, such as `.file 0` and `md5 0x00`. Should be fixed in GNU binutils
> +# 2.35.2. https://sourceware.org/bugzilla/show_bug.cgi?id=25611
> +echo '.file 0 "filename" md5 0x7a0b65214090b6693bd1dc24dd248245' | \
> +  $* -gdwarf-5 -Wno-unused-command-line-argument -c -x assembler -o /dev/null -
> -- 
> 2.30.0.365.g02bc693789-goog
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210130015327.GD2709570%40localhost.
