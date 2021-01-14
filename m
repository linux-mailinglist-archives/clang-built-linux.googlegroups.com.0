Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBQPUQGAAMGQE45AAKOA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 480E72F66A9
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 18:07:15 +0100 (CET)
Received: by mail-pg1-x53a.google.com with SMTP id r29sf4154269pga.20
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 09:07:15 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610644034; cv=pass;
        d=google.com; s=arc-20160816;
        b=VGGTUul0kmuiOOuf9sl8XfI0xZqfAwLfd5gOuqX08CdThmlqXNFr2spk4L/PcyCjMt
         zyvFZ1651H2X9aRRFTLTn6sgqfoLxp0blwWFJklAz0TyFFWNvOBApXOvWCfvHBrNnQ3M
         VkIn+XcAT+2Wen1m0NMm79PKTe0HQDlmugC5ypl22fTS0NGSrfyKCLxamKvql/k6TxN3
         Pvez77qsLtuRCbLxbiXmSkfLJjGLchNM1FjWLq8YJiXlRcn9cy+sKye6BsCC5Sbi1dBO
         knlAnmVCrkcjfIaP2LPbY63szi6ZNnzpJtpcayPuIOwtth+Nkffe4uzh4X2ltCvWXvy3
         AHnQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=FK5BP84NVKRyF6WkoxDAvygBwgENaxKxOfc2aFSdDfc=;
        b=JeNtzfScpOkXhnKfbrnkG3DE+yGfChn3NTG+jGs3cq1YDO4H5j1TCEOuXcNHJAgCiu
         vxkBbc+vlK1kavc3h0vResurxdlCEjNPiCNSspVtyw1EY4UdcqhtadpBkBLNhS2/7/n7
         dy4e34CXjmWYdSqmwzHtFUxCf1GgArUD18//od97Z7HF8N1dv4OyaFhdM54o23GplJgy
         7MBHdV7mypLiVvhzV8I2kuF7m5H5mTnzEdLkWdZcp7cOqgo/6tuc2rOu9qYiIwukCo6o
         Guk/APCFCHOJRJ7dta/L2zU3jpnkoBNVuqVU5rJxvWd1gS6jv7qMLEa3nAVYB2rZ95aA
         G5ng==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qi0nPKP+;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::82a as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=FK5BP84NVKRyF6WkoxDAvygBwgENaxKxOfc2aFSdDfc=;
        b=W4SsJc5+ejpI7gxVgK9sGEmilnVojMsZpFf8EYIm7MdA8bgWz9YRV1gzCbT8QduFWg
         PWmKeVb9klSNfypPdF06RRFmJpkqolSOP0dQZp6stJF6cbq79K8tsevGXvXTNHAEwze0
         +J+WMCDg7d2lHqvBoH8KeUgur+zaRrrF4Z3Z7ecTD6Cw7wj7l2ebCB+ESSPsERSxwKx9
         ZIISAHk+rXqRBuUBniqnvsu4g31nmV4hX9sOpFsE57rpWCzO+Odpgg7PF7JUf25ITD/W
         cqW/VsUK5uYoHI+LE21WnrXumDEJkLI9X1F7qnAlgL4hhY+qHrQSGWphTcnaDlEaMatG
         rLfA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=FK5BP84NVKRyF6WkoxDAvygBwgENaxKxOfc2aFSdDfc=;
        b=p6axw6Py/0iSc0HkCjoWViruJxwf+17a/JVf7eNXMGvhe6m1ECHcF+ml4L43j6aC+u
         Sg8Yp4tC29HmfmNIMxpgS8PcLDnMjx8SGuFtVnp9+c/TPKEcp9u9fkH5INItpkL/OiZP
         RKozdUX+tUZtg4wf/zAytrxlk/F7ajjE85DjkpHSPRrcgyXKnGXwafmMRIB4Mbzp0Mh6
         46NcjpoNGVu60Yuc5rdN72xce3088g61RFIZASVG1FDe3sBEJE/3be4HSOds6Bxru5v1
         9A9WvNvanQMM8m7ZL2cJpOE2CVb6Pfnbwwxsf7V9wKipELuNUnCTELWSo3scLUNJAPcG
         ZZyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=FK5BP84NVKRyF6WkoxDAvygBwgENaxKxOfc2aFSdDfc=;
        b=ARyFV5QU/c0iEMUJ2EPqj9BN6tdooZFp5IqaY/0T81uHR7FNaR41KfmiKtRBdpI8TT
         D2AxWk0fr57QhD3n2lbmzZ19cNVPp+oY3B68WTlZxhnXjwdnV8NzQroBBnTdUGEtmM6D
         mUmFAQVrfBYPK+Zbs3GNQSDEoi3CKEbRTo7RZ2N7qtiXw6Z1me+/Ef2+K9dLhLshzeJF
         fGg9BJnQaC1lmLLoTgqTQNnumHgKAV2uQH9lZ1WgqOGA0UuQbPMCeiEjVFrZs5TCBdMo
         5sC0t5KTifIovSdrOL6x1JL8uI0mZ3Bmre2zw2T+2d8LEE3baT8NRKvH7/kXvN/Dgfd/
         T6LA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531D+yLVIkEZYDxl5YxQYeKAWTwyf6YB3FLNFSouMADfNJj8ti28
	fi89CC+2sk8a5d2s4W95/Ew=
X-Google-Smtp-Source: ABdhPJwggtkc/DaAowawoVfYA9jufcThgQkDuxvJNhOtIlL3x1OBMXtAupmIbUxTgdD+RxBi0eVh/g==
X-Received: by 2002:a17:902:ec8b:b029:de:577f:2bfe with SMTP id x11-20020a170902ec8bb02900de577f2bfemr4604473plg.2.1610644034018;
        Thu, 14 Jan 2021 09:07:14 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:451d:: with SMTP id s29ls2464062pga.5.gmail; Thu, 14 Jan
 2021 09:07:13 -0800 (PST)
X-Received: by 2002:aa7:9818:0:b029:1ae:70a9:d9e0 with SMTP id e24-20020aa798180000b02901ae70a9d9e0mr8213365pfl.74.1610644033379;
        Thu, 14 Jan 2021 09:07:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610644033; cv=none;
        d=google.com; s=arc-20160816;
        b=Oa5s9pgeE182re+SlTjuzIlJhMHUWWNZOBCkt7EfhPi6u/HhUT1IelRN6BewHWPNQH
         i94Ftfe0uXgBxuh5a2K4ctudtd2m3a33YXws12mc91eui13ADFKp55xXC7YHPP/GTr73
         RiXgUuM6F6ZldPgzmsPvL+29E9eyEmph+ZzVdeYlq+haVzwbFyhuPF+kvThxW9j/SJLr
         EmLIOgzQEugDvPQTKZ3GPAg2LrWZ8wq9uOK1j51xOpqHwlPcMpldTS2dNJuOxz6SsHCu
         Ydd8kYWUgtvwUkl/wKXSZ3AdxSlabTFx72HScbAvtbhA3R5mqAEzVtwXW2jwN0IDPeTv
         ECdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=5ZdpG/xSOu5qE7aubc+SyLIQwiLdIrQpshwRsGn86X4=;
        b=AWJvW0k2DXIPuqnuvyK3fcWJOktiR2WEBJ5uQQaeTXZj8qieRKD0QyGa33i+iAPsFa
         rJkg2QgL94I7gMZOQwdUMVy1dz5MLXRfPHaY3QffPt6jqmgalkpCxql7hzcuZEVrI2jm
         4JHtsTT+EEPq2rozK60FXiukQbXU8qA98rsoIOxWmdzDEIZ51Si8sJDEb4i5rEFVzju0
         JCCkbtwM6wS1gjunXyArK16S8vOu88zGQFamYtE0KaE4O2wQfRsLI0KznGJuk9WQm4b4
         CnOwDc7Quajw/5NKt/kCjA+g7B5oRzrZFTrbeYcDvWf1zRS3pNSb+Gz0NhlKPvmtvM7j
         G1Ug==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qi0nPKP+;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::82a as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x82a.google.com (mail-qt1-x82a.google.com. [2607:f8b0:4864:20::82a])
        by gmr-mx.google.com with ESMTPS id z9si479054pgv.2.2021.01.14.09.07.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Jan 2021 09:07:13 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::82a as permitted sender) client-ip=2607:f8b0:4864:20::82a;
Received: by mail-qt1-x82a.google.com with SMTP id g24so3993622qtq.12
        for <clang-built-linux@googlegroups.com>; Thu, 14 Jan 2021 09:07:13 -0800 (PST)
X-Received: by 2002:ac8:4818:: with SMTP id g24mr7962823qtq.252.1610644032623;
        Thu, 14 Jan 2021 09:07:12 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id j203sm3235781qke.134.2021.01.14.09.07.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Jan 2021 09:07:11 -0800 (PST)
Date: Thu, 14 Jan 2021 10:07:10 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: linux-kbuild@vger.kernel.org,
	Paul Gortmaker <paul.gortmaker@windriver.com>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Will Deacon <will@kernel.org>, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] kbuild: check the minimum compiler version in Kconfig
Message-ID: <20210114170710.GA259754@ubuntu-m3-large-x86>
References: <20210114042420.229524-1-masahiroy@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210114042420.229524-1-masahiroy@kernel.org>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=qi0nPKP+;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::82a as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Thu, Jan 14, 2021 at 01:24:19PM +0900, Masahiro Yamada wrote:
> Paul Gortmaker reported a regression in the GCC version check [1].
> If you use GCC 4.8, the build breaks before showing the error message
> "error Sorry, your version of GCC is too old - please use 4.9 or newer."
> 
> I do not want to apply his fix-up since it implies we would not be able
> to remove any cc-option test. Anyway, I admit checking the GCC version
> in <linux/compiler-gcc.h> is too late.
> 
> Almost at the same time, Linus also suggested to move the compiler
> version error to Kconfig time. [2]
> 
> I unified the similar two scripts, gcc-version.sh and clang-version.sh
> into the new cc-version.sh. The old scripts invoked the compiler multiple
> times (3 times for gcc-version.sh, 4 times for clang-version.sh). I
> refactored the code so the new one invokes the compiler just once, and
> also tried my best to use shell-builtin commands where possible.
> 
> The new script runs faster.
> 
>   $ time ./scripts/clang-version.sh clang
>   120000
> 
>   real    0m0.029s
>   user    0m0.012s
>   sys     0m0.021s
> 
>   $ time ./scripts/cc-version.sh clang
>   Clang 120000
> 
>   real    0m0.009s
>   user    0m0.006s
>   sys     0m0.004s
> 
> The cc-version.sh also shows the error if the compiler is old:
> 
>   $ make defconfig CC=clang-9
>   *** Default configuration is based on 'x86_64_defconfig'
>   ***
>   *** Compiler is too old.
>   ***   Your Clang version:    9.0.1
>   ***   Minimum Clang version: 10.0.1
>   ***
>   scripts/Kconfig.include:46: Sorry, this compiler is unsupported.
>   make[1]: *** [scripts/kconfig/Makefile:81: defconfig] Error 1
>   make: *** [Makefile:602: defconfig] Error 2
> 
> I removed the clang version check from <linux/compiler-clang.h>
> 
> For now, I did not touch <linux/compiler-gcc.h> in order to avoid
> merge conflict with [3], which has been queued up in the arm64 tree.
> We will be able to clean it up later.
> 
> I put the stub for ICC because I see <linux/compiler-intel.h> although
> I am not sure if building the kernel with ICC is well-supported.
> 
> [1] https://lkml.org/lkml/2021/1/10/250
> [2] https://lkml.org/lkml/2021/1/12/1708
> [3] https://lkml.org/lkml/2021/1/12/1533

I would recommend the lore version of these links:

[1]: https://lore.kernel.org/r/20210110190807.134996-1-paul.gortmaker@windriver.com
[2]: https://lore.kernel.org/r/CAHk-=wh-+TMHPTFo1qs-MYyK7tZh-OQovA=pP3=e06aCVp6_kA@mail.gmail.com
[3]: https://lore.kernel.org/r/20210112224832.10980-1-will@kernel.org

> Fixes: 87de84c9140e ("kbuild: remove cc-option test of -Werror=date-time")
> Reported-by: Paul Gortmaker <paul.gortmaker@windriver.com>
> Suggested-by: Linus Torvalds <torvalds@linux-foundation.org>
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>

I like this a lot, I think that erroring as early as possible when
something is misconfigured is a good user experience.

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Tested-by: Nathan Chancellor <natechancellor@gmail.com>

> ---
> 
> Changes in v2:
>   - fix the function name
> 
>  include/linux/compiler-clang.h | 10 -----
>  init/Kconfig                   |  9 +++--
>  scripts/Kconfig.include        |  6 +++
>  scripts/cc-version.sh          | 69 ++++++++++++++++++++++++++++++++++
>  scripts/clang-version.sh       | 19 ----------
>  scripts/gcc-version.sh         | 20 ----------
>  6 files changed, 80 insertions(+), 53 deletions(-)
>  create mode 100755 scripts/cc-version.sh
>  delete mode 100755 scripts/clang-version.sh
>  delete mode 100755 scripts/gcc-version.sh
> 
> diff --git a/include/linux/compiler-clang.h b/include/linux/compiler-clang.h
> index 98cff1b4b088..04c0a5a717f7 100644
> --- a/include/linux/compiler-clang.h
> +++ b/include/linux/compiler-clang.h
> @@ -3,16 +3,6 @@
>  #error "Please don't include <linux/compiler-clang.h> directly, include <linux/compiler.h> instead."
>  #endif
>  
> -#define CLANG_VERSION (__clang_major__ * 10000	\
> -		     + __clang_minor__ * 100	\
> -		     + __clang_patchlevel__)
> -
> -#if CLANG_VERSION < 100001
> -#ifndef __BPF_TRACING__
> -# error Sorry, your version of Clang is too old - please use 10.0.1 or newer.
> -#endif
> -#endif
> -
>  /* Compiler specific definitions for Clang compiler */
>  
>  /* same as gcc, this was present in clang-2.6 so we can assume it works
> diff --git a/init/Kconfig b/init/Kconfig
> index b77c60f8b963..01108dd1318b 100644
> --- a/init/Kconfig
> +++ b/init/Kconfig
> @@ -26,11 +26,11 @@ config CC_VERSION_TEXT
>  	    and then every file will be rebuilt.
>  
>  config CC_IS_GCC
> -	def_bool $(success,echo "$(CC_VERSION_TEXT)" | grep -q gcc)
> +	def_bool $(success,test $(cc-name) = GCC)
>  
>  config GCC_VERSION
>  	int
> -	default $(shell,$(srctree)/scripts/gcc-version.sh $(CC)) if CC_IS_GCC
> +	default $(cc-version) if CC_IS_GCC
>  	default 0
>  
>  config LD_VERSION
> @@ -38,14 +38,15 @@ config LD_VERSION
>  	default $(shell,$(LD) --version | $(srctree)/scripts/ld-version.sh)
>  
>  config CC_IS_CLANG
> -	def_bool $(success,echo "$(CC_VERSION_TEXT)" | grep -q clang)
> +	def_bool $(success,test $(cc-name) = Clang)
>  
>  config LD_IS_LLD
>  	def_bool $(success,$(LD) -v | head -n 1 | grep -q LLD)
>  
>  config CLANG_VERSION
>  	int
> -	default $(shell,$(srctree)/scripts/clang-version.sh $(CC))
> +	default $(cc-version) if CC_IS_CLANG
> +	default 0
>  
>  config LLD_VERSION
>  	int
> diff --git a/scripts/Kconfig.include b/scripts/Kconfig.include
> index a5fe72c504ff..cdc8726d2904 100644
> --- a/scripts/Kconfig.include
> +++ b/scripts/Kconfig.include
> @@ -39,6 +39,12 @@ as-instr = $(success,printf "%b\n" "$(1)" | $(CC) $(CLANG_FLAGS) -c -x assembler
>  $(error-if,$(failure,command -v $(CC)),compiler '$(CC)' not found)
>  $(error-if,$(failure,command -v $(LD)),linker '$(LD)' not found)
>  
> +# Get the compiler name, version, and error out if it is unsupported.
> +cc-info := $(shell,scripts/cc-version.sh $(CC))
> +$(error-if,$(success,test -z "$(cc-info)"),Sorry$(comma) this compiler is unsupported.)
> +cc-name := $(shell,set -- $(cc-info); echo $1)
> +cc-version := $(shell,set -- $(cc-info); echo $2)
> +
>  # Fail if the linker is gold as it's not capable of linking the kernel proper
>  $(error-if,$(success, $(LD) -v | grep -q gold), gold linker '$(LD)' not supported)
>  
> diff --git a/scripts/cc-version.sh b/scripts/cc-version.sh
> new file mode 100755
> index 000000000000..9c17c1de401c
> --- /dev/null
> +++ b/scripts/cc-version.sh
> @@ -0,0 +1,69 @@
> +#!/bin/sh
> +# SPDX-License-Identifier: GPL-2.0
> +#
> +# Print the compiler name and its version in a 5 or 6-digit form.
> +# Also, perform the minimum version check.
> +
> +set -e
> +
> +# When you raise the compiler version, please update
> +# Documentation/process/changes.rst as well.
> +gcc_min_version=4.9.0
> +clang_min_version=10.0.1
> +
> +# print the compiler name, major version, minor version, patchlevel version
> +get_compiler_info()
> +{
> +	cat <<- EOF | "$@" -E -P -x c - 2>/dev/null
> +	#if defined(__clang__)
> +	Clang	__clang_major__	__clang_minor__	__clang_patchlevel__
> +	#elif defined(__INTEL_COMPILER)
> +	/* How to get the version of intel compiler? */
> +	ICC	0		0		0
> +	#elif defined(__GNUC__)
> +	GCC	__GNUC__	__GNUC_MINOR__	__GNUC_PATCHLEVEL__
> +	#else
> +	unsupported	0		0		0
> +	#endif
> +	EOF
> +}
> +
> +# convert the version to a canonical 5 or 6-digit form for numerical comparison
> +get_canonical_version()
> +{
> +	IFS=.
> +	set -- $1
> +	echo $((10000 * $1 + 100 * $2 + $3))
> +}
> +
> +# $@ instead of $1 because multiple words might be given e.g. CC="ccache gcc"
> +orig_args="$@"
> +set -- $(get_compiler_info "$@")
> +
> +name=$1
> +version=$2.$3.$4
> +
> +case "$name" in
> +GCC) min_version=$gcc_min_version;;
> +Clang) min_version=$clang_min_version;;
> +ICC) ;; # ICC min version undefined?
> +*) echo "$orig_args: unknown compiler" >&2; exit 1;;
> +esac
> +
> +cversion=$(get_canonical_version $version)
> +
> +if [ -n "$min_version" ]; then
> +
> +	min_cversion=$(get_canonical_version $min_version)
> +
> +	if [ "$cversion" -lt "$min_cversion" ]; then
> +		echo >&2 "***"
> +		echo >&2 "*** Compiler is too old."
> +		echo >&2 "***   Your $name version:    $version"
> +		echo >&2 "***   Minimum $name version: $min_version"
> +		echo >&2 "***"
> +		exit 1
> +	fi
> +fi
> +
> +echo $name $cversion
> diff --git a/scripts/clang-version.sh b/scripts/clang-version.sh
> deleted file mode 100755
> index 6fabf0695761..000000000000
> --- a/scripts/clang-version.sh
> +++ /dev/null
> @@ -1,19 +0,0 @@
> -#!/bin/sh
> -# SPDX-License-Identifier: GPL-2.0
> -#
> -# clang-version clang-command
> -#
> -# Print the compiler version of `clang-command' in a 5 or 6-digit form
> -# such as `50001' for clang-5.0.1 etc.
> -
> -compiler="$*"
> -
> -if ! ( $compiler --version | grep -q clang) ; then
> -	echo 0
> -	exit 1
> -fi
> -
> -MAJOR=$(echo __clang_major__ | $compiler -E -x c - | tail -n 1)
> -MINOR=$(echo __clang_minor__ | $compiler -E -x c - | tail -n 1)
> -PATCHLEVEL=$(echo __clang_patchlevel__ | $compiler -E -x c - | tail -n 1)
> -printf "%d%02d%02d\\n" $MAJOR $MINOR $PATCHLEVEL
> diff --git a/scripts/gcc-version.sh b/scripts/gcc-version.sh
> deleted file mode 100755
> index ae353432539b..000000000000
> --- a/scripts/gcc-version.sh
> +++ /dev/null
> @@ -1,20 +0,0 @@
> -#!/bin/sh
> -# SPDX-License-Identifier: GPL-2.0
> -#
> -# gcc-version gcc-command
> -#
> -# Print the gcc version of `gcc-command' in a 5 or 6-digit form
> -# such as `29503' for gcc-2.95.3, `30301' for gcc-3.3.1, etc.
> -
> -compiler="$*"
> -
> -if [ ${#compiler} -eq 0 ]; then
> -	echo "Error: No compiler specified." >&2
> -	printf "Usage:\n\t$0 <gcc-command>\n" >&2
> -	exit 1
> -fi
> -
> -MAJOR=$(echo __GNUC__ | $compiler -E -x c - | tail -n 1)
> -MINOR=$(echo __GNUC_MINOR__ | $compiler -E -x c - | tail -n 1)
> -PATCHLEVEL=$(echo __GNUC_PATCHLEVEL__ | $compiler -E -x c - | tail -n 1)
> -printf "%d%02d%02d\\n" $MAJOR $MINOR $PATCHLEVEL
> -- 
> 2.27.0
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210114170710.GA259754%40ubuntu-m3-large-x86.
