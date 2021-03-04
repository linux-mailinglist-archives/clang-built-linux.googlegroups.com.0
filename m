Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBQWLQCBAMGQEKBLRHSA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x338.google.com (mail-ot1-x338.google.com [IPv6:2607:f8b0:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id D42CD32C396
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Mar 2021 01:11:47 +0100 (CET)
Received: by mail-ot1-x338.google.com with SMTP id 63sf1862405otu.16
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Mar 2021 16:11:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614816706; cv=pass;
        d=google.com; s=arc-20160816;
        b=my/kf/tEy1FIzcQ+yFsT4C5NIcbPLjyqfMjizuBmEpnPA0WiwP89MhZR5YzKyl3Ybz
         YWe70w1gUNvVfpw8kAIjsPFvFSoJ/Lv71G6DAZbT0ezzXArbYf2nmYeCX35TJz/dzI4J
         DnBGvnS6mMtJXe9+AD2ThnnkFNNOIl7t0YuAvKxGoHQzKPX3gF8neZZleAIrJxQ3jv+g
         CHJDxUuyvIZqkIedkqabrSTTzGZyCKnl/UCeSdSSCdEaCL+zDEsLYKQIXlph6ekTEXaU
         GS3UHro8xr1D9ScGp6yU+cq7x3QqboTCks27OVs352A5zGlMPZw9/8XuuUWtSmZCIez6
         55Tw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=wjSKOhCE2SqJYRIzzHHj0TbObtzAwhnaT2PJAxNo5bM=;
        b=Q1tPKYZ2bRXdeRTfXukAEU/rNxMMDYSykqvXbWC5R8OJ1A3yf0HOnWXl6zgPjnfMJV
         FpDOqwiF34SQv9yV3Wf9udqxupbbiaBgh4hPtHb9Zu0/WLqqP0VBHCy4ogOfnXznNW+R
         z6cPflsHDp1d6ydJcdsU9tL0X7pN2SegPLcaZO/pbzLHYLYAwsxI5dyE4jYyxlB0jlvi
         87bRk5NBDjQDhHB1gPRQzbsX7dPw39Y7Qt9qkhzOzcKLoFaL1Vq7GW3dJ97ZJJ4o+oBR
         Mj/kXMQEKGNQDP7hMN7K3BrgSGEcJfBdFEFMlj2yNb/Yob3zWCIwIattP/r6BNGrsRX7
         G+TQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=J+WyZeDL;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wjSKOhCE2SqJYRIzzHHj0TbObtzAwhnaT2PJAxNo5bM=;
        b=RG38cD+bYqFo4voCfXEn2t/9PKDhxFa3VZB8ATsPQSV5cvl4N6ZfYSo+L8sYh6yq9m
         m2ZTFjsBMCmeVlZeoM/mHAjU2Mhp/ytpygoOwPufSdLoaMVpUcfYPyVEX5iY4ciJ+fCi
         EJAibWF+KAMdbTOoYczyvYvoXaak1kFbK309ouBEo6WZyCbGnLfC0J2LddW7/5G5n8o0
         K4Xzy6GvTiAfLK8QuPMZfHf+jfSSD5fPZip7QYISsRk2ZGS826j3nan75aGOErH1W6PC
         8Euo2EpO5YrH8zRkLO5xU2AP2+FN7FgiLwRAX1mExn8qHI4jXeRjaDkKVT+0+GMmJ4Ma
         c47w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=wjSKOhCE2SqJYRIzzHHj0TbObtzAwhnaT2PJAxNo5bM=;
        b=Az6NdjTeEOlyFY07TNk3u4cIJzhKQ942OfK5Z7Sr/tfIzhbaRwfeYu/js0FgqLgl3g
         mhHbwk8XxeTOnqDU/VWItMYCE8UFiq7nhUffx1BitOjUOtbjQ16J4RCObQ9j0tPquZ8d
         XlF8OKPjgb34Ayu7XNkvVjhhfxb+CskLR74DM9erSmA78BR6fP4iwA1ZF/ad1g5g30Id
         LR7edZjdzaezPDyi03zOIXioIux6CbkPgY3knGpMwWegECfhoCkKtKMErqH6e9PDeMET
         7lbkykfIkjresCXXUj9gWDfe4LtCbWrT9Wlea0iSjsA8ZMi1qv6co7eyJUFaQ2O6hmDI
         qqvw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531ZBnH3c+dTQ/e8j33mpSKgVCOD9xQTjIEPBmLvyMYYEAtLJwCB
	llixbPk5z1OxbbdkbkIjvAM=
X-Google-Smtp-Source: ABdhPJxIIoLdJd9mx/pEpEDKnoBdf5LxczJqzQ++6fYMmoKZokndtcBfiouspSXOxcJtrmcCrUQytA==
X-Received: by 2002:a9d:7412:: with SMTP id n18mr1408334otk.294.1614816706507;
        Wed, 03 Mar 2021 16:11:46 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1553:: with SMTP id l19ls1093826otp.4.gmail; Wed,
 03 Mar 2021 16:11:46 -0800 (PST)
X-Received: by 2002:a05:6830:609:: with SMTP id w9mr1356768oti.41.1614816706088;
        Wed, 03 Mar 2021 16:11:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614816706; cv=none;
        d=google.com; s=arc-20160816;
        b=H1zAGUO2Iu2ER2yJAJlk76GJRq8ORkZJDJj4ZrAAX6Gu2ztojiSH/84RDJrfc/0C0c
         Gn3deVZc/P0lR8pofNoXtOcsS0QwDTkU8WamZRzK+HWhqJPQ/w5XNHUsO2InrJGOA/Fi
         tRegXbxPZUVyPes2uv+/xTl0IYUJ7iVBHILzV5Tc2f8zmFmn8/j+A6/QUTAXuKxT6/hi
         uXAs5b4ok8rLrEjvfRo2hS/lAFVIlOGiZgHI/dnuNio3lA9yqXEXbbhtvxU/FC1kWLAy
         1vpMGzHOGKmnaoM37jOF6W2JIcFeS2xNGjUnR2Anuos/LToPgOb9jCPCFSH+gC9keh5F
         frmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=x917h1z0r8spigV4w7QnNkeJQCVzCzN9rpBg/+CJa5o=;
        b=OZ32gIUlH2ciOjLLjQf/PH+Wb0T7t/UhnFDnuPVhPMm+nuvC4wT4JFa9lztyTqLHqZ
         9YLFePh8Zc3PnsLhzceFujk6l9dEJiQ4NMpZKtdWavAIkP2v9VPLTezfuQsgbvwHzqCo
         q27g3/ePeiG84SgIuRWd7zXiuXULBRxmn8jqPDJgSIkWWgSfUJY/B4bc5r2+tUKSCl9N
         FuTcG4UfGHzn/j+llMIjQNArYl2MTeDZ+eW7sYyV+iC4PteEMCKQDMhrraZ5BO048eSH
         s+R5d6uif8S29DpsS4be8UGdIcvH3T2ZxScAUQl8dldrFDJAkmF4/L/erp5JtN2FONmC
         2iUg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=J+WyZeDL;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id s7si1150804ois.0.2021.03.03.16.11.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 03 Mar 2021 16:11:46 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 398EF64EA4;
	Thu,  4 Mar 2021 00:11:44 +0000 (UTC)
Date: Wed, 3 Mar 2021 17:11:41 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/4] kbuild: collect minimum tool versions into
 scripts/tool-version.sh
Message-ID: <20210304001141.7lejurony2poqkid@archlinux-ax161>
References: <20210303183333.46543-1-masahiroy@kernel.org>
 <20210303183333.46543-2-masahiroy@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210303183333.46543-2-masahiroy@kernel.org>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=J+WyZeDL;       spf=pass
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

On Thu, Mar 04, 2021 at 03:33:31AM +0900, Masahiro Yamada wrote:
> The kernel build uses various tools, many of which are provided by the
> same software suite, for example, LLVM and Binutils.
> 
> When we raise the minimal version of Clang/LLVM, we need to update
> clang_min_version in scripts/cc-version.sh and also lld_min_version in
> scripts/ld-version.sh.
> 
> In fact, Kbuild can handle CC=clang and LD=ld.lld independently, and we
> could manage their minimal version separately, but it does not make
> much sense.
> 
> Make scripts/tool-version.sh a central place of minimum tool versions
> so that we do not need to touch multiple files.
> 
> This script prints the minimal version of the given tool.
> 
>   $ scripts/tool-version.sh gcc
>   4.9.0
>   $ scripts/tool-version.sh llvm
>   10.0.1
>   $ scripts/tool-version.sh binutils
>   2.23.0
>   $ scripts/tool-version.sh foo
>   foo: unknown tool
> 
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>

Reviewed-by: Nathan Chancellor <nathan@kernel.org>

Two comments below.

> ---
> 
>  scripts/cc-version.sh   | 20 +++++---------------
>  scripts/ld-version.sh   | 11 ++++-------
>  scripts/tool-version.sh | 27 +++++++++++++++++++++++++++
>  3 files changed, 36 insertions(+), 22 deletions(-)
>  create mode 100755 scripts/tool-version.sh
> 
> diff --git a/scripts/cc-version.sh b/scripts/cc-version.sh
> index 3f2ee885b116..4772f1ef9cac 100755
> --- a/scripts/cc-version.sh
> +++ b/scripts/cc-version.sh
> @@ -6,18 +6,6 @@
>  
>  set -e
>  
> -# When you raise the minimum compiler version, please update
> -# Documentation/process/changes.rst as well.
> -gcc_min_version=4.9.0
> -clang_min_version=10.0.1
> -icc_min_version=16.0.3 # temporary
> -
> -# https://gcc.gnu.org/bugzilla/show_bug.cgi?id=63293
> -# https://lore.kernel.org/r/20210107111841.GN1551@shell.armlinux.org.uk
> -if [ "$SRCARCH" = arm64 ]; then
> -	gcc_min_version=5.1.0
> -fi
> -
>  # Print the compiler name and some version components.
>  get_compiler_info()
>  {
> @@ -48,18 +36,20 @@ set -- $(get_compiler_info "$@")
>  
>  name=$1
>  
> +tool_version=$(dirname $0)/tool-version.sh

I realize these scripts are currently called by their full path but is
it worth making this '$(dirname "$(readlink -f "$0")")' here and in
ld-version.sh just in case that does not happen?

>  case "$name" in
>  GCC)
>  	version=$2.$3.$4
> -	min_version=$gcc_min_version
> +	min_version=$($tool_version gcc)
>  	;;
>  Clang)
>  	version=$2.$3.$4
> -	min_version=$clang_min_version
> +	min_version=$($tool_version llvm)
>  	;;
>  ICC)
>  	version=$(($2 / 100)).$(($2 % 100)).$3
> -	min_version=$icc_min_version
> +	min_version=$($tool_version icc)
>  	;;
>  *)
>  	echo "$orig_args: unknown compiler" >&2
> diff --git a/scripts/ld-version.sh b/scripts/ld-version.sh
> index a463273509b5..e824f7675693 100755
> --- a/scripts/ld-version.sh
> +++ b/scripts/ld-version.sh
> @@ -6,11 +6,6 @@
>  
>  set -e
>  
> -# When you raise the minimum linker version, please update
> -# Documentation/process/changes.rst as well.
> -bfd_min_version=2.23.0
> -lld_min_version=10.0.1
> -
>  # Convert the version string x.y.z to a canonical 5 or 6-digit form.
>  get_canonical_version()
>  {
> @@ -35,10 +30,12 @@ set -- $("$@" --version)
>  IFS=' '
>  set -- $1
>  
> +tool_version=$(dirname $0)/tool-version.sh
> +
>  if [ "$1" = GNU -a "$2" = ld ]; then
>  	shift $(($# - 1))
>  	version=$1
> -	min_version=$bfd_min_version
> +	min_version=$($tool_version binutils)
>  	name=BFD
>  	disp_name="GNU ld"
>  elif [ "$1" = GNU -a "$2" = gold ]; then
> @@ -46,7 +43,7 @@ elif [ "$1" = GNU -a "$2" = gold ]; then
>  	exit 1
>  elif [ "$1" = LLD ]; then
>  	version=$2
> -	min_version=$lld_min_version
> +	min_version=$($tool_version llvm)
>  	name=LLD
>  	disp_name=LLD
>  else
> diff --git a/scripts/tool-version.sh b/scripts/tool-version.sh
> new file mode 100755
> index 000000000000..b4aa27e2c3d3
> --- /dev/null
> +++ b/scripts/tool-version.sh
> @@ -0,0 +1,27 @@
> +#!/bin/sh
> +# SPDX-License-Identifier: GPL-2.0-only
> +#
> +# Print the minimum supported version of the given tool.
> +
> +set -e
> +
> +# When you raise the minimum version, please update
> +# Documentation/process/changes.rst as well.
> +gcc_min_version=4.9.0
> +llvm_min_version=10.0.1
> +icc_min_version=16.0.3 # temporary
> +binutils_min_version=2.23.0
> +
> +# https://gcc.gnu.org/bugzilla/show_bug.cgi?id=63293
> +# https://lore.kernel.org/r/20210107111841.GN1551@shell.armlinux.org.uk
> +if [ "$SRCARCH" = arm64 ]; then
> +	gcc_min_version=5.1.0
> +fi
> +
> +eval min_version="\$${1}_min_version"
> +if [ -z "$min_version" ]; then
> +	echo "$1: unknown tool" >&2
> +	exit 1
> +fi
> +
> +echo "$min_version"
> -- 
> 2.27.0
> 

Would scripts/tool-version.sh be easier to read and interpret using a
case statement?

#!/bin/sh
# SPDX-License-Identifier: GPL-2.0-only
#
# Print the minimum supported version of the given tool.
# When you raise the minimum version, please update
# Documentation/process/changes.rst as well.

case "$1" in
binutils)
    echo "2.23.0"
    ;;
gcc)
    # https://gcc.gnu.org/bugzilla/show_bug.cgi?id=63293
    # https://lore.kernel.org/r/20210107111841.GN1551@shell.armlinux.org.uk
    if [ "$SRCARCH" = arm64 ]; then
        echo "5.1.0"
    else
        echo "4.9.0"
    fi
    ;;
icc)
    # temporary
    echo "16.0.3"
    ;;
llvm)
    echo "10.0.1"
    ;;
*)
    echo "$1: unknown tool" >&2
    exit 1
    ;;
esac

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210304001141.7lejurony2poqkid%40archlinux-ax161.
