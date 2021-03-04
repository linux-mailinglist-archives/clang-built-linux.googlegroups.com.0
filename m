Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBQGTQCBAMGQEXNNMSDY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf37.google.com (mail-qv1-xf37.google.com [IPv6:2607:f8b0:4864:20::f37])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A36632C39F
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Mar 2021 01:28:49 +0100 (CET)
Received: by mail-qv1-xf37.google.com with SMTP id h10sf19056744qvf.19
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Mar 2021 16:28:49 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614817728; cv=pass;
        d=google.com; s=arc-20160816;
        b=SOc0KizZsDcKk0uwsV/KBINI2zoaKeBry69ERJZp2NHVlN+KGsIAq9/eOjjmaT4WFR
         HpuuWozUSGWq0P/SshNyC08n5mcFW51bMjMTVh0qP3+xHDyT7n2JtDKCytRxOU4wdyBx
         420xS0Lxf4xQa23jcOaAObZTzARse17br61b0ArDgGQ6GPyUntlwcihNzrek6JLSo5PO
         3cN4dpzCdNQkK68dGyl+mUgXZOXviRlUjrItVHApgsl7LP48Lug146V0U4eBA0GQ6hhZ
         pHy6VFQ9pu8KtApbU/TFVT2lCiSdnLdv4cDbE9t3JvJcxec/GK+LzXoOxCcz594Q63QY
         LuFQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=YNRmApZt8mIfMZea66SPP4wFCZX1/H53ZBRJ8JgtMCg=;
        b=A7wMVqD4sD7h08d3BsBQIpGZ7eSIkGGiKU4Uq0STaQ1AHk5gktr0iV28tkz/6lQYSN
         JxQKFPs69fvlA980Tp6vZlxmsaSD+wZSRJTY+DIEB3ovH/J9LsVZovZgIobCXirT8/Dj
         pEUP4CPRfGBj/K0sU1kq4uK/kHLMSmpImU8U2dXwby/crsw0GvEtaI1Q2R9KWRx6vMxF
         QnuyhlU1T5iJrRZ3Z95kiPQPB6RQty7LVTknkSxlfxJW40qOLe6tJGXVPLb92LPTxDXX
         5tRPkl0NkrKjVVpAo1uEsq1BhFae7epDuMtsQdn5BddrvGUjNh0xQhEJZDDCpA3kOpuo
         PqZQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=bIXjFzAR;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=YNRmApZt8mIfMZea66SPP4wFCZX1/H53ZBRJ8JgtMCg=;
        b=a0LHBoUbqxDaHHRxFzPn7QY8gH21Fy9SOyDLuTXJyHykyGYpZVzWb0pOFkkOb84CjJ
         v10n8JwIO/7v6S5+fLa2yVpSFKFzGYAMTjQwBF6D2e0Ba6J1lC3Ougd/CZOewhF1ZxQz
         nwyKf7MY6mDklpsPkmOPKVjBLf1K3f6lTSRsjDm34XI17JEZgj1NWiAAcodDof03XGbT
         5/ef26aZu1Hoeq7VoO1fSs7D5HNrK9s0eLjHD7gJrXBVIIjAHQFo7RXmeStl7zRIO9pM
         SXE8ZNK2oKRrjZXUVE5J9Eog+Xr2gZWJGCiG8Wlxg6ebKFq9e1an8kM69bMWVU3zjIXw
         78GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=YNRmApZt8mIfMZea66SPP4wFCZX1/H53ZBRJ8JgtMCg=;
        b=Y1mkppto2Re6Wf7R8bqRJBnrRuoPJRWxi3Kg8ws6UvTqpFXuBY1meWiNRRnm4wCjIE
         1eo+n2IpyUm9VcvFrw97K7onbK9MF/Rr4N/qn/Fu0dKhcV+eAL2MdtPwyg+fUkvOD5PC
         uMbM8d4RlLrdMlXQe4wwsrU2W8Z4GuIIMU8j5IGchR8HL3lR/J2snq8YohunViTLrwCZ
         F9NhQ65cMDMQQ05EYFi+qM0ahy7OcpCofmRDjbW/qwa08ZLJ+dBlh83jekhPWrmRnv3H
         iSib44a0Lo9P+ENWjYyXx3BJxVNSeRukPxS8w55U+Gbg/FR5JZO7sXFhUnDD03wDcKW7
         vt8A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530swZEBupTEwIhuCkOZnGxVj4o/6EoZq6j/CE7LjCI4q8SeOpGq
	f/BaAG7gVxkv+l6E3ZzgAvA=
X-Google-Smtp-Source: ABdhPJxPQfwZyEKbNedW4t+9pJGtBkKgFEYf6B0a9LAaHDi9qgRVJlXVGe5wYkm5G/BnU+kSdRVMMg==
X-Received: by 2002:ac8:70d1:: with SMTP id g17mr430927qtp.380.1614817728267;
        Wed, 03 Mar 2021 16:28:48 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:d53:: with SMTP id o19ls2184717qkl.3.gmail; Wed, 03
 Mar 2021 16:28:47 -0800 (PST)
X-Received: by 2002:a37:4742:: with SMTP id u63mr1685511qka.289.1614817727798;
        Wed, 03 Mar 2021 16:28:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614817727; cv=none;
        d=google.com; s=arc-20160816;
        b=iqTuudVYbUnVbomUToUwl40BuHUoBdrwvdJTmCmRDmINVF0W8H6RzU+OfRGAdmlFJe
         BLL0Yc2L+FmJ2oFitGddNIWdxdnIzMAtp4n+PAV6fFm+ooga+pTwTQQ7jgRvSPdsHlKJ
         MzpqNol1zh/Tn/4X9NJ220tKL4ZFNhh6vddUfD6JY/k1d+QIv34J3P+PJW6ytZopDEXt
         49IGRvwRdoSapSti25J749Ct2vGN8w5kB3aI7zzIzw21CwkwwecvVVFUVQx3USuMyKBh
         lGp+ML/RrNWxmJHm/FV18o6x88fua01hhG+DoEVrXeTT/bBl6HXqHckAcaERf9VFYL9N
         GnuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=6pU72wk4Emfpj14HmZYSBqU2kW8T7RxpBrcFh8i1cVY=;
        b=IBjdvWm3g43mCvpJ24ufpCJo8Dxj1Om92hrEj6gP0Z+Ogb29qNCxHflpe9DyT5qj3U
         5mZOOaHQIz7PFCo9BnPPAQz6+BiM2gTwZCg6QcImI/dGfJHje4g2i10o1QADracaLOpk
         emwZWJ0rsIhMoeS1MFf/fPkaByaRs2RIDpzeQyecsWn0+BwUo5Jhq7YXi6TrzzLPFJUw
         Y4CwZQFRHNDRySGFSe3C+evQO6b+24UDPFgkvlGGRNErCBR4U12QKnD4cAb6fjj22QOK
         lm816SytywFjqomLyoFh12LmaFOMpUcQ2ikpUFKBhrTsKbepC2FzO35OMO8CBiXKKTy2
         argQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=bIXjFzAR;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id h28si903518qkl.1.2021.03.03.16.28.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 03 Mar 2021 16:28:47 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9AA5364E5F;
	Thu,  4 Mar 2021 00:28:45 +0000 (UTC)
Date: Wed, 3 Mar 2021 17:28:42 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/4] kbuild: check the minimum assembler version in
 Kconfig
Message-ID: <20210304002842.hmaybhz6lkmplj5g@archlinux-ax161>
References: <20210303183333.46543-1-masahiroy@kernel.org>
 <20210303183333.46543-3-masahiroy@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210303183333.46543-3-masahiroy@kernel.org>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=bIXjFzAR;       spf=pass
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

On Thu, Mar 04, 2021 at 03:33:32AM +0900, Masahiro Yamada wrote:
> Documentation/process/changes.rst defines the minimum assembler version
> (binutils version), but we have never checked it in the build time.
> 
> Kbuild never invokes 'as' directly because all assembly files in the
> kernel tree are *.S, hence must be preprocessed. I do not expect
> raw assembly source files (*.s) would be added to the kernel tree.
> 
> Therefore, we always use $(CC) as the assembler driver, and commit
> aa824e0c962b ("kbuild: remove AS variable") removed 'AS'. However,
> we are still interested in the version of the assembler sitting behind.
> 
> As usual, the --version option prints the version string.
> 
>   $ as --version | head -n 1
>   GNU assembler (GNU Binutils for Ubuntu) 2.35.1
> 
> But, we do not have $(AS). So, we can add the -Wa prefix so that
> $(CC) passes --version down to the backing assembler.
> 
>   $ gcc -Wa,--version | head -n 1
>   gcc: fatal error: no input files
>   compilation terminated.
> 
> OK, we need to input something to satisfy gcc.
> 
>   $ gcc -Wa,--version -c -x assembler /dev/null -o /dev/null | head -n 1
>   GNU assembler (GNU Binutils for Ubuntu) 2.35.1
> 
> The combination of Clang and GNU assembler works in the same way:
> 
>   $ clang -no-integrated-as -Wa,--version -c -x assembler /dev/null -o /dev/null | head -n 1
>   GNU assembler (GNU Binutils for Ubuntu) 2.35.1
> 
> Clang with the integrated assembler fails like this:
> 
>   $ clang -integrated-as -Wa,--version -c -x assembler /dev/null -o /dev/null | head -n 1
>   clang: error: unsupported argument '--version' to option 'Wa,'
> 
> With all this in my mind, I implemented scripts/as-version.sh.
> 
>   $ scripts/as-version.sh gcc
>   GNU 23501
>   $ scripts/as-version.sh clang -no-integrated-as
>   GNU 23501
>   $ scripts/as-version.sh clang -integrated-as
>   LLVM 0
> 
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> ---
> 
>  arch/Kconfig            |  3 +-
>  init/Kconfig            | 12 +++++++
>  scripts/Kconfig.include |  6 ++++
>  scripts/as-version.sh   | 77 +++++++++++++++++++++++++++++++++++++++++
>  4 files changed, 96 insertions(+), 2 deletions(-)
>  create mode 100755 scripts/as-version.sh
> 
> diff --git a/arch/Kconfig b/arch/Kconfig
> index 2af10ebe5ed0..d7214f4ae1f7 100644
> --- a/arch/Kconfig
> +++ b/arch/Kconfig
> @@ -631,8 +631,7 @@ config ARCH_SUPPORTS_LTO_CLANG_THIN
>  config HAS_LTO_CLANG
>  	def_bool y
>  	# Clang >= 11: https://github.com/ClangBuiltLinux/linux/issues/510
> -	depends on CC_IS_CLANG && CLANG_VERSION >= 110000 && LD_IS_LLD
> -	depends on $(success,test $(LLVM_IAS) -eq 1)
> +	depends on CC_IS_CLANG && CLANG_VERSION >= 110000 && LD_IS_LLD && AS_IS_LLVM
>  	depends on $(success,$(NM) --help | head -n 1 | grep -qi llvm)
>  	depends on $(success,$(AR) --help | head -n 1 | grep -qi llvm)
>  	depends on ARCH_SUPPORTS_LTO_CLANG
> diff --git a/init/Kconfig b/init/Kconfig
> index 22946fe5ded9..f76e5a44e4fe 100644
> --- a/init/Kconfig
> +++ b/init/Kconfig
> @@ -41,6 +41,18 @@ config CLANG_VERSION
>  	default $(cc-version) if CC_IS_CLANG
>  	default 0
>  
> +config AS_IS_GNU
> +	def_bool $(success,test "$(as-name)" = GNU)
> +
> +config AS_IS_LLVM
> +	def_bool $(success,test "$(as-name)" = LLVM)
> +
> +config AS_VERSION
> +	int
> +	# If it is integrated assembler, the version is the same as Clang's one.
> +	default CLANG_VERSION if AS_IS_LLVM
> +	default $(as-version)
> +
>  config LD_IS_BFD
>  	def_bool $(success,test "$(ld-name)" = BFD)
>  
> diff --git a/scripts/Kconfig.include b/scripts/Kconfig.include
> index 58fdb5308725..0496efd6e117 100644
> --- a/scripts/Kconfig.include
> +++ b/scripts/Kconfig.include
> @@ -45,6 +45,12 @@ $(error-if,$(success,test -z "$(cc-info)"),Sorry$(comma) this compiler is not su
>  cc-name := $(shell,set -- $(cc-info) && echo $1)
>  cc-version := $(shell,set -- $(cc-info) && echo $2)
>  
> +# Get the assembler name, version, and error out if it is not supported.
> +as-info := $(shell,$(srctree)/scripts/as-version.sh $(CC) $(CLANG_FLAGS))
> +$(error-if,$(success,test -z "$(as-info)"),Sorry$(comma) this assembler is not supported.)
> +as-name := $(shell,set -- $(as-info) && echo $1)
> +as-version := $(shell,set -- $(as-info) && echo $2)
> +
>  # Get the linker name, version, and error out if it is not supported.
>  ld-info := $(shell,$(srctree)/scripts/ld-version.sh $(LD))
>  $(error-if,$(success,test -z "$(ld-info)"),Sorry$(comma) this linker is not supported.)
> diff --git a/scripts/as-version.sh b/scripts/as-version.sh
> new file mode 100755
> index 000000000000..205d8b9fc4d4
> --- /dev/null
> +++ b/scripts/as-version.sh
> @@ -0,0 +1,77 @@
> +#!/bin/sh
> +# SPDX-License-Identifier: GPL-2.0-only
> +#
> +# Print the assembler name and its version in a 5 or 6-digit form.
> +# Also, perform the minimum version check.
> +# (If it is the integrated assembler, return 0 as the version, and
> +# the version check is skipped.)
> +
> +set -e
> +
> +# Convert the version string x.y.z to a canonical 5 or 6-digit form.
> +get_canonical_version()
> +{
> +	IFS=.
> +	set -- $1
> +
> +	# If the 2nd or 3rd field is missing, fill it with a zero.
> +	#
> +	# The 4th field, if present, is ignored.
> +	# This occurs in development snapshots as in 2.35.1.20201116
> +	echo $((10000 * $1 + 100 * ${2:-0} + ${3:-0}))
> +}
> +
> +orig_args="$@"
> +
> +# Get the first line of the --version output.
> +IFS='
> +'
> +# Add 2>&1 to check both stdout and stderr.
> +# If the backing assembler is binutils, we get the version string in stdout.
> +# If it is clang's integrated assembler, we get the following error in stderr:
> +#   clang: error: unsupported argument '--version' to option 'Wa,'
> +# To avoid the error message affected by locale, set LC_MESSAGES=C just in case.
> +set -- $(LC_MESSAGES=C "$@" -Wno-unused-command-line-argument -Wa,--version -c -x assembler /dev/null -o /dev/null 2>&1)
> +line="$1"
> +
> +if [ "$line" = "clang: error: unsupported argument '--version' to option 'Wa,'" ]; then

It looks like Debian and Ubuntu do something interesting with their
clang packaging. Normally, "clang" is a symlink to "clang-#" in the same
folder. In my folder from just running "ninja install"

$ ls -l clang clang-13
lrwxrwxrwx   8 nathan  2 Mar 20:58 clang -> clang-13
.rwxr-xr-x 93M nathan  2 Mar 20:58 clang-13

The same thing is true for Arch Linux:

$ ls -l /usr/bin/{clang,clang-11}
lrwxrwxrwx    8 root 17 Feb  8:54 /usr/bin/clang -> clang-11
.rwxr-xr-x 145k root 17 Feb  8:54 /usr/bin/clang-11

As a result, this does not quite work.

$ LC_MESSAGES=C /usr/bin/clang -Wno-unused-command-line-argument -Wa,--version -c -x assembler /dev/null -o /dev/null
clang-11: error: unsupported argument '--version' to option 'Wa,'

I am not sure what the cleanest fix would be. The rest of the patch looks okay to me.

Cheers,
Nathan

> +	# For the intergrated assembler, we do not check the version here.
> +	# It is the same as the clang version, and it has been already checked
> +	# by scripts/cc-version.sh.
> +	echo LLVM 0
> +	exit 0
> +fi
> +
> +# Split the line on spaces.
> +IFS=' '
> +set -- $line
> +
> +tool_version=$(dirname $0)/tool-version.sh
> +
> +if [ "$1" = GNU -a "$2" = assembler ]; then
> +	shift $(($# - 1))
> +	version=$1
> +	min_version=$($tool_version binutils)
> +	name=GNU
> +else
> +	echo "$orig_args: unknown assembler invoked" >&2
> +	exit 1
> +fi
> +
> +# Some distributions append a package release number, as in 2.34-4.fc32
> +# Trim the hyphen and any characters that follow.
> +version=${version%-*}
> +
> +cversion=$(get_canonical_version $version)
> +min_cversion=$(get_canonical_version $min_version)
> +
> +if [ "$cversion" -lt "$min_cversion" ]; then
> +	echo >&2 "***"
> +	echo >&2 "*** Assembler is too old."
> +	echo >&2 "***   Your $name assembler version:    $version"
> +	echo >&2 "***   Minimum $name assembler version: $min_version"
> +	echo >&2 "***"
> +	exit 1
> +fi
> +
> +echo $name $cversion
> -- 
> 2.27.0
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210304002842.hmaybhz6lkmplj5g%40archlinux-ax161.
