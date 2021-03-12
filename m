Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBMUYVWBAMGQEYWHTQNA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa39.google.com (mail-vk1-xa39.google.com [IPv6:2607:f8b0:4864:20::a39])
	by mail.lfdr.de (Postfix) with ESMTPS id A0A66338B48
	for <lists+clang-built-linux@lfdr.de>; Fri, 12 Mar 2021 12:10:43 +0100 (CET)
Received: by mail-vk1-xa39.google.com with SMTP id r1sf5660769vke.11
        for <lists+clang-built-linux@lfdr.de>; Fri, 12 Mar 2021 03:10:43 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615547442; cv=pass;
        d=google.com; s=arc-20160816;
        b=Dy/Jcqy1nvnQmnDRZyMmcc1z3SrBA11F5ijLk0ZtcIv45sEh/JlpYIDboKZ38l6Ozp
         Stot9n9ozGEbK4yX2gtlxMnZw38fXe1oT6A4Q34CxZ0hwWKhvCDq7B3y8mDQvt/jB8bi
         zlB6rnQUugT+90d3Zig+Yr/6Q8h5elCGgdoIyoA4n3xdka9qND+XlXM94hNzdLelyJp0
         dLgEoFuPAF7QoZ3QkjQRAX+B5MDZ54ymaGLlGyTmm3m/NhntYqAqvsFYmYA8NakJgVW+
         h5yY17/QRrkETAszt1dvIDZkw3UwhceC7AX+OGKvwJkUpQJ6gOssKlEp5VgH/ovxM3T1
         Y0oQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=Glxq8jRqELLXO3rwJB+RF/Hb9aQ4jAp5cvLPBpeIhj0=;
        b=Y5wOIu1lsDvdXk8UGq6MrpvrisNcL+9DybphrJoV1lavGhYprTXsCcpDTr33R5/4Fv
         otBwy826YSMT/SwWOzTYBWZrEHPI6z+DGSZzVroEQ+qkhdiB96KGnviskrtLLu0WvLGB
         F7VhVrGnnD48AqauHTH64cmSYvJwlW2NvLDngfaXQZn4FWEsCnfH7XlR03jDcAuSdwqQ
         0FOXpq57PRG6p3zPtyjzg9LcqjrmH7MI+WwyZbG7WrgOyyYgtnICXg6PjYebptVOCsxQ
         5xV5cYy3yO2KlRqeq5zlXDK5DkkhKb+gjuMaBwP1oNzWwbShqGoxux7IytcD4Hdnd7i8
         EL0g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JpVVWQA0;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d36 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Glxq8jRqELLXO3rwJB+RF/Hb9aQ4jAp5cvLPBpeIhj0=;
        b=H1RKLac9xZJk7QecDgfKHCQ4uL/iGYgaVpzZgxXKKvgVQo3zkJs8Qmsy254fTXciIh
         Rzx91SFkdtMq2IkMk6kNVUiKpaZ23LMkh1jeqw4gDeQTZmTC4Cg/wakpfEvivvOKhi7f
         8upPb85YWS3l5Os0ovaq8LxPYjP+/0D8fKWSCO4x5xEkOrA/asWI9UrsTJy1bDIj/TNg
         mbmDfbLQNnMWN7Foe28H0Q1ZhzR+5sXLU0CGZNenmLCZ5RdjzMfe+BZXuK2pVB7Byi98
         B+y9oSixG77aHUwllxIqlXF3AXIwX42SFH+e0SeSYqNEF48ScyqU5oPdAU5acanEzXc4
         NzTQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Glxq8jRqELLXO3rwJB+RF/Hb9aQ4jAp5cvLPBpeIhj0=;
        b=s6TwyRWNVcS2XI+15us3MTX/5ltU/taUhAf8AvWJ6LmqhX3c6P9YjYtTznmymDBrnw
         USk1GUR/uyb3uYgWNRyi7KGIuYwPl7tTIu4Vuu1PJvBzOEQ4LD2d0nmfwpXAJl8y1apI
         3gWMDiBbY/GfR6og8Q+OQ0gZLM7SvmcmiNywIbkHVUlSNEjfZUsftM1o/qlbMV6f30BK
         Gt1HQD10zwBsLM6wVcOPCL7j609CinyacwtXd2Tam6zMx6wY5cOtWoCg4b68s79VIIpR
         QH0k9k9uQWZrvf9MaW7kdIGgc/h7JHaR5ff2ONaTX2KqLiebq8NTBE0a9EL+MjVgzHqz
         PlNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Glxq8jRqELLXO3rwJB+RF/Hb9aQ4jAp5cvLPBpeIhj0=;
        b=jMIoKY8vXB9V+wr1cLeHJOUOnX8wrI5MRE3XOzUDfBxTFGWNKv5KPWHsRRWKmac/1K
         HJeWSVq4VIPNY2/CQukCzyvd5skr/i6NVbnAYwHhQg6oTcXsV4CSoLLoCor/u+S8v7b9
         Gc71pGKmaSrG/Wl8fTFA61I80czUNIEdwoLCMr5a0sgWLjjE+5VZAhxXdY9xoqMrb62V
         /CvdVixGjyn5xws4u7zUqoASk1qeuTyyAKqhMImWEBBDYHOnUwaGXyz+bm7hm2k6Fgtg
         K1hSo58Nez67rkHQMYJ+1hBicOH1aLHyV+ttvKXXYO8VTfgEarnOyWcmS+gQPVAXEO3I
         gFkw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532TYEDCGUVAU4//ibUHeXiXx0btjQNemYpm40vCqrjOHEnFEX0x
	05drok8oUKTMCHMPWnae/qo=
X-Google-Smtp-Source: ABdhPJz8JbharF0F6W73SGnJ9t9ZbN+vvQxClxiAWaizFdZtHEilZkBUdolLgcTR9f7Fg9CrVoM4lw==
X-Received: by 2002:ac5:ccaf:: with SMTP id p15mr7521305vkm.18.1615547442741;
        Fri, 12 Mar 2021 03:10:42 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:2e09:: with SMTP id u9ls1119680vsu.7.gmail; Fri, 12 Mar
 2021 03:10:42 -0800 (PST)
X-Received: by 2002:a67:2d06:: with SMTP id t6mr7483247vst.16.1615547442175;
        Fri, 12 Mar 2021 03:10:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615547442; cv=none;
        d=google.com; s=arc-20160816;
        b=fRzYg6FGHRUu/JRZ2OpVGnn+UUvP9Ajg1WB8B4kaxC1nF9vYiLLBeLwiuIiMDGgiGm
         El9LCdzA9sok4EpOpKRM18UYM1sDaofyYpfhLXAM4VhiLw85uE4h9Q0eQUsPZFM8hFqk
         hcRYigNVlQ5GmeeKWQ1jXW8UntPN5nWvC3B0Ob+L9kPB1NYKO0r8VIhfOfydLHAcN6LJ
         Q2rbLfkKXHEGqnCwpeANQvJ5cJUOBU61a3N0P/Xxa6GoVyxxo8EK1zK6YA+kKs4O68AQ
         xNUETvPqL1+5zuuPPl68ylL0kvLdDNJFLY/NEeWNb3G2y0R2Z8Z2SOt/1KoOrs52VrYc
         hd5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=jHSKMwCVuECIMwfsj98b2AuPQuN3R/pVWD1vdNz3H9E=;
        b=AdwUZVM3s48RRoAYlOGsmLEtO9oVq+1FwaP0Dyqob9B6rCy+GJ9XW6fjuvhUzz3xIX
         kGSv2Yq5sheDyqKKMftqfmDhxQN3UyuJJvmfW1gu2pDOJt3a4Jlcknh1/hPIIPlLK1Xa
         Orh1zp47MAz1AIx4ifbbHjG/l34HvFvqS+yf7qh3aJNEs95X6X4IEPCawr4Zip1f5A3q
         7dfDSO8zQ4AtGyPxotuh1iULTYEB5JH9rj6ZkKnPPP8+OPtfeDxL82YhvXIOqlBAa10+
         FNoTFMvzwogVvsSufW+HL7/Yio3+47dBl+eVuG6WEMkglGmRDuOjYZIGAROsvijlSrLs
         GNqQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JpVVWQA0;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d36 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd36.google.com (mail-io1-xd36.google.com. [2607:f8b0:4864:20::d36])
        by gmr-mx.google.com with ESMTPS id d23si327246vsq.1.2021.03.12.03.10.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Mar 2021 03:10:42 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d36 as permitted sender) client-ip=2607:f8b0:4864:20::d36;
Received: by mail-io1-xd36.google.com with SMTP id o11so25325191iob.1
        for <clang-built-linux@googlegroups.com>; Fri, 12 Mar 2021 03:10:42 -0800 (PST)
X-Received: by 2002:a5e:8c16:: with SMTP id n22mr9711338ioj.156.1615547441554;
 Fri, 12 Mar 2021 03:10:41 -0800 (PST)
MIME-Version: 1.0
References: <20210311094624.923913-1-masahiroy@kernel.org>
In-Reply-To: <20210311094624.923913-1-masahiroy@kernel.org>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Fri, 12 Mar 2021 12:10:05 +0100
Message-ID: <CA+icZUVehYw+jxF_n2+g7ReFfSXn8ZnMWCwY4w_HwNJxvX92xg@mail.gmail.com>
Subject: Re: [PATCH] kbuild: collect minimum tool versions into scripts/min-tool-version.sh
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: linux-kbuild@vger.kernel.org, Nicolas Pitre <nico@fluxnic.net>, 
	Nathan Chancellor <nathan@kernel.org>, =?UTF-8?Q?Bernhard_Rosenkr=C3=A4nzer?= <bero@lindev.ch>, 
	Miguel Ojeda <ojeda@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Will Deacon <will@kernel.org>, Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=JpVVWQA0;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d36
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

On Thu, Mar 11, 2021 at 10:47 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> The kernel build uses various tools, many of which are provided by the
> same software suite, for example, LLVM and Binutils.
>
> When you raise the minimum version of Clang/LLVM, you need to update
> clang_min_version in scripts/cc-version.sh and also lld_min_version in
> scripts/ld-version.sh.
>
> Kbuild can handle CC=clang and LD=ld.lld independently, but it does not
> make much sense to maintain their versions separately.
>
> Let's make scripts/min-tool-version.sh a central place of minimum tool
> versions so you do not need to touch multiple files.
>
> This script prints the minimum version of the given tool.
>
>   $ scripts/min-tool-version.sh gcc
>   4.9.0
>   $ scripts/min-tool-version.sh llvm
>   10.0.1
>   $ scripts/min-tool-version.sh binutils
>   2.23.0
>   $ scripts/min-tool-version.sh foo
>   foo: unknown tool
>
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> Reviewed-by: Nathan Chancellor <nathan@kernel.org>

The idea with creating gcc, llvm, binutils etc. files containing the
minimum version-string sounds good to me.

This version here tested on Debian/testing AMD64.

Tested-by: Sedat Dilek <sedat.dilek@gmail.com> # LLVM/Clang v12.0.0-rc3

- Sedat -

> ---
>
>  scripts/cc-version.sh       | 20 +++++---------------
>  scripts/ld-version.sh       | 11 ++++-------
>  scripts/min-tool-version.sh | 27 +++++++++++++++++++++++++++
>  3 files changed, 36 insertions(+), 22 deletions(-)
>  create mode 100755 scripts/min-tool-version.sh
>
> diff --git a/scripts/cc-version.sh b/scripts/cc-version.sh
> index 3f2ee885b116..f1952c522466 100755
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
> -       gcc_min_version=5.1.0
> -fi
> -
>  # Print the compiler name and some version components.
>  get_compiler_info()
>  {
> @@ -48,18 +36,20 @@ set -- $(get_compiler_info "$@")
>
>  name=$1
>
> +min_tool_version=$(dirname $0)/min-tool-version.sh
> +
>  case "$name" in
>  GCC)
>         version=$2.$3.$4
> -       min_version=$gcc_min_version
> +       min_version=$($min_tool_version gcc)
>         ;;
>  Clang)
>         version=$2.$3.$4
> -       min_version=$clang_min_version
> +       min_version=$($min_tool_version llvm)
>         ;;
>  ICC)
>         version=$(($2 / 100)).$(($2 % 100)).$3
> -       min_version=$icc_min_version
> +       min_version=$($min_tool_version icc)
>         ;;
>  *)
>         echo "$orig_args: unknown compiler" >&2
> diff --git a/scripts/ld-version.sh b/scripts/ld-version.sh
> index 30debf78aa09..5b9481e98b4f 100755
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
> +min_tool_version=$(dirname $0)/min-tool-version.sh
> +
>  if [ "$1" = GNU -a "$2" = ld ]; then
>         shift $(($# - 1))
>         version=$1
> -       min_version=$bfd_min_version
> +       min_version=$($min_tool_version binutils)
>         name=BFD
>         disp_name="GNU ld"
>  elif [ "$1" = GNU -a "$2" = gold ]; then
> @@ -51,7 +48,7 @@ else
>
>         if [ "$1" = LLD ]; then
>                 version=$2
> -               min_version=$lld_min_version
> +               min_version=$($min_tool_version llvm)
>                 name=LLD
>                 disp_name=LLD
>         else
> diff --git a/scripts/min-tool-version.sh b/scripts/min-tool-version.sh
> new file mode 100755
> index 000000000000..37c438d766d7
> --- /dev/null
> +++ b/scripts/min-tool-version.sh
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
> +min_gcc_version=4.9.0
> +min_llvm_version=10.0.1
> +min_icc_version=16.0.3 # temporary
> +min_binutils_version=2.23.0
> +
> +# https://gcc.gnu.org/bugzilla/show_bug.cgi?id=63293
> +# https://lore.kernel.org/r/20210107111841.GN1551@shell.armlinux.org.uk
> +if [ "$SRCARCH" = arm64 ]; then
> +       min_gcc_version=5.1.0
> +fi
> +
> +eval min_version="\$min_${1}_version"
> +if [ -z "$min_version" ]; then
> +       echo "$1: unknown tool" >&2
> +       exit 1
> +fi
> +
> +echo "$min_version"
> --
> 2.27.0
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210311094624.923913-1-masahiroy%40kernel.org.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUVehYw%2BjxF_n2%2Bg7ReFfSXn8ZnMWCwY4w_HwNJxvX92xg%40mail.gmail.com.
