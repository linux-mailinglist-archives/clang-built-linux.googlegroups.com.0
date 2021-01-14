Return-Path: <clang-built-linux+bncBDYJPJO25UGBBUUXQKAAMGQEYL7J5CA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id E87C02F6945
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 19:22:11 +0100 (CET)
Received: by mail-pg1-x53a.google.com with SMTP id y34sf4316509pgk.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 10:22:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610648530; cv=pass;
        d=google.com; s=arc-20160816;
        b=oUoK4iEgv0cTwxIHBSfq87YSVtiOZQBAbTt4VIdm5b5nDHnwlCXBqIbB/g1ZBWIJhS
         k4OATNn0p1qvEZ9xMWhdM8qdLI2/qgGuxhxHWWntFYdHy/gy/GjkE5qDtM8bsyTmo7tm
         h35iN3jYfjuuZ04fhpenEWSwxVKQ8MyVo991M2amCdftYwyfVHIQ8klrN/3fw9EHNotV
         PRRa9iPeOg141NAjEFmFxMyGSFUzsMxCfldY6a7WyUG62m/mQk9/n0RW8ziT6v18vD+M
         Ansq9eYWUA4jN66jNGdPnmmgp8SNqT5WlVKpuQG6ayw0/G3Ze2nmuNJGijE6i8bEc+WF
         /xNA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=LrJ9PptZi9Y32UOdGrOQjoR1DtnKAZOq4XB+9asCi0k=;
        b=Igea2XoPzW0G0exoSka1eu5XPhKiXNoFkoZ8i10xqql9Gv9go52OlebOlPHN3an6/Y
         vIs6GUDA0PIBrTTcG9t21WtOS6QlduhqRunUnRsdBXw+hprdaTvzF2J7UYsQCdv2/tDs
         4AET9vfbDEHlzBT6TZicq/NCRsBjLZvyHlyumeRlIZgCAXGZ2iaLSFN8IceicxOh0/rI
         PNkWgH67GimcMHGrk+vagBWkUfd1BgCIHj+G9E0MtI2t2suMaSgtXWEtJq8BtRXsA2qZ
         RQIEjx/Nj7teyxpZmZEvpyGis1NlPiXnFEbeGe0kGJoRsxoaQMyeIp7133pJtvm+WJdY
         r68A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=e1e0toEF;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::629 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LrJ9PptZi9Y32UOdGrOQjoR1DtnKAZOq4XB+9asCi0k=;
        b=igl1uFIJF+l+Gg+o6HFQpRr675nRdRRLnRL2hYqz8C02ttaN+94jr/T2QQksRCb3ob
         rcHbfoF/rrZY6r1cgzkgQNkOoMOrB+0KqWdGySSfwd65gF9bld8KqHmBmk9g1YDe7UGI
         bfwgSu6wMrQ1Ls2jINFWlk9kfVdsmevto7tc5GrYkz+Q3oL0gb+DDvjlrufpZNOWQ6Sc
         8XLdOect6XImjYZomXPE/qbM3hkUtt/CWO3p2APCz9yYbOcySwPzJlG7YbugInEQq9wp
         iQQtuN4G47qPpzPoD/D2FCeLboC0GiJ+NifcaCDX2yw5k3ITt4kwNZfHXlw5ZeBd6ec2
         M+Ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LrJ9PptZi9Y32UOdGrOQjoR1DtnKAZOq4XB+9asCi0k=;
        b=azvMxIRRTR95jqmmARy3aMphsYK55O8mH3QI4UCdH3TUeo9G0pcXbT2dpczr5Cree4
         QsAPJlaOzj5AcCVKrRptnlmuEriki98YxxgYMceXguvM2IzMj27aY0AQlpNx2ftQnSM2
         naFdsv6ce+V4EmTN1F/Z3VnStuWNzKQSrIfo0H4/uRHn2mzmvHs2hisaDRjCWoDjELi9
         L2YuW2AcK5elYdba3oN8lQ8AXQejtB+G3MJF3359wF+r5eYSv8swWqLxSmfdjh5W3fsa
         Vvysl44yk9kEUXmArGk+f6W9QAZARYi11FE9wQ87icP0Oot0M6IUWLNlKFcrUFK6HKb/
         6itA==
X-Gm-Message-State: AOAM531/vCkxRl1zs5+nBmOaTuz/1NmtgWxlANJOB5MjTXD5dak9nsji
	QZSvW9JpynVN0gj+bBnpDhU=
X-Google-Smtp-Source: ABdhPJwIk5jouDa9aNB8oI6Im6xZBIUZblGXEcslsnn42sQvN2zDbkMH+Z0vfPYQoaVcyNhkEoQRzw==
X-Received: by 2002:a62:b60c:0:b029:1ae:6d91:4eb6 with SMTP id j12-20020a62b60c0000b02901ae6d914eb6mr8629294pff.33.1610648530488;
        Thu, 14 Jan 2021 10:22:10 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:78d4:: with SMTP id t203ls2438085pfc.6.gmail; Thu, 14
 Jan 2021 10:22:09 -0800 (PST)
X-Received: by 2002:a65:430b:: with SMTP id j11mr8497967pgq.130.1610648529830;
        Thu, 14 Jan 2021 10:22:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610648529; cv=none;
        d=google.com; s=arc-20160816;
        b=CtbOf10F7xHG+1bGwKf+UWRsBHAHIjn9o3kQqUB5mD+35O52r8MDCZNwFFbCPDYT7c
         mYd5QOv+xNDGiO2Q7nZWSzvjtJmIeeBabnLSR4KF4N9R7IKqgJGbLcg15saA8B6WIM4q
         aatp6CkS6I3Nb5zkWQaHDhIbPMNsRlARW2z0ai2Pi7RDfAcDWv6wMPadGGuwXV0S8CS6
         RlaRQzwSSdcRPiAYnX5gDJ/otiCuaSJBXzfty04uJTJ4eV6OlA5MoUyxZGbePwsG6rg3
         j3jD6XLT1uD1TrVpfdDCGlt4OUTx2510WWUTt3TujbFLWInW+E3f5us2WFL9pM2KDFiG
         Q/qw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=bULt0dq+AS3HVqO2DLBDnkmIsNAeO5H5Kul/NL6dUfo=;
        b=K0YQgeZ85awapkz6TjUZbMxobW8rBim6D6IunoRhqy0/oTn41ExexyDo4WNlwtD5kA
         1cFYYOWtwgvCMrUuGW3c4P3ChjA0E9ugirPmDtTG4TShYCLFxpjSiqFHFjO28hNsFARt
         Gqcnpa1c4ygBketCO3jSSiVipBsjhnhSbD3evC9ZDX2hfgzzqw8AB/7JECuMdKf9ziyq
         g493UbcAxIWAZPHFDznmnCChuAjKvkYrbBeqhnHbCda4306Cv9pQam3SxeYCY4D4rwqR
         RtOYVwDSH5pAw2DWENoYnIs1WdXmxgVPix7w5Wa3lH2nWIVl/DvE/yKGKN9Y4LfFTMuJ
         Tqzw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=e1e0toEF;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::629 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x629.google.com (mail-pl1-x629.google.com. [2607:f8b0:4864:20::629])
        by gmr-mx.google.com with ESMTPS id m13si469393pjg.3.2021.01.14.10.22.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Jan 2021 10:22:09 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::629 as permitted sender) client-ip=2607:f8b0:4864:20::629;
Received: by mail-pl1-x629.google.com with SMTP id j1so3339200pld.3
        for <clang-built-linux@googlegroups.com>; Thu, 14 Jan 2021 10:22:09 -0800 (PST)
X-Received: by 2002:a17:90a:6ba4:: with SMTP id w33mr6336413pjj.32.1610648529244;
 Thu, 14 Jan 2021 10:22:09 -0800 (PST)
MIME-Version: 1.0
References: <20210114180709.303370-1-masahiroy@kernel.org>
In-Reply-To: <20210114180709.303370-1-masahiroy@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 14 Jan 2021 10:21:58 -0800
Message-ID: <CAKwvOdnn5jNv5RKN713YNE+kWtSf+sCQUaPyvWK7hWijf8Oj8A@mail.gmail.com>
Subject: Re: [PATCH v3] kbuild: check the minimum compiler version in Kconfig
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Paul Gortmaker <paul.gortmaker@windriver.com>, 
	Linus Torvalds <torvalds@linux-foundation.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, Will Deacon <will@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=e1e0toEF;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::629
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Thu, Jan 14, 2021 at 10:07 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
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
>   scripts/Kconfig.include:46: Sorry, this compiler is not supported.
>   make[1]: *** [scripts/kconfig/Makefile:81: defconfig] Error 1
>   make: *** [Makefile:602: defconfig] Error 2
>
> I removed the clang version check from <linux/compiler-clang.h>
>
> For now, I did not touch <linux/compiler-gcc.h> in order to avoid
> merge conflict with [3], which has been queued up in the arm64 tree.
> We will be able to clean it up later.
>
> The new script takes care of ICC because we have <linux/compiler-intel.h>
> although I am not sure if building the kernel with ICC is well-supported.
>
> [1] https://lkml.org/lkml/2021/1/10/250
> [2] https://lkml.org/lkml/2021/1/12/1708
> [3] https://lkml.org/lkml/2021/1/12/1533

Consider Nathan's request to use lore links rather than lkml.org links.
https://lore.kernel.org/lkml/20210114170710.GA259754@ubuntu-m3-large-x86/
But I don't think that requires a v4 just for that.

Thanks for the patch.

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Tested-by: Nick Desaulniers <ndesaulniers@google.com>

>
> Fixes: 87de84c9140e ("kbuild: remove cc-option test of -Werror=date-time")
> Reported-by: Paul Gortmaker <paul.gortmaker@windriver.com>
> Suggested-by: Linus Torvalds <torvalds@linux-foundation.org>
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> ---
>
> Changes in v3:
>   - add $(srctree)/ to fix out-of-tree build
>   - support ICC version
>
> Changes in v2:
>   - fix the function name
>
>  include/linux/compiler-clang.h | 10 -----
>  init/Kconfig                   |  9 ++--
>  scripts/Kconfig.include        |  6 +++
>  scripts/cc-version.sh          | 76 ++++++++++++++++++++++++++++++++++
>  scripts/clang-version.sh       | 19 ---------
>  scripts/gcc-version.sh         | 20 ---------
>  6 files changed, 87 insertions(+), 53 deletions(-)
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
> -#define CLANG_VERSION (__clang_major__ * 10000 \
> -                    + __clang_minor__ * 100    \
> -                    + __clang_patchlevel__)
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
>             and then every file will be rebuilt.
>
>  config CC_IS_GCC
> -       def_bool $(success,echo "$(CC_VERSION_TEXT)" | grep -q gcc)
> +       def_bool $(success,test $(cc-name) = GCC)
>
>  config GCC_VERSION
>         int
> -       default $(shell,$(srctree)/scripts/gcc-version.sh $(CC)) if CC_IS_GCC
> +       default $(cc-version) if CC_IS_GCC
>         default 0
>
>  config LD_VERSION
> @@ -38,14 +38,15 @@ config LD_VERSION
>         default $(shell,$(LD) --version | $(srctree)/scripts/ld-version.sh)
>
>  config CC_IS_CLANG
> -       def_bool $(success,echo "$(CC_VERSION_TEXT)" | grep -q clang)
> +       def_bool $(success,test $(cc-name) = Clang)
>
>  config LD_IS_LLD
>         def_bool $(success,$(LD) -v | head -n 1 | grep -q LLD)
>
>  config CLANG_VERSION
>         int
> -       default $(shell,$(srctree)/scripts/clang-version.sh $(CC))
> +       default $(cc-version) if CC_IS_CLANG
> +       default 0
>
>  config LLD_VERSION
>         int
> diff --git a/scripts/Kconfig.include b/scripts/Kconfig.include
> index a5fe72c504ff..26c355a84c19 100644
> --- a/scripts/Kconfig.include
> +++ b/scripts/Kconfig.include
> @@ -39,6 +39,12 @@ as-instr = $(success,printf "%b\n" "$(1)" | $(CC) $(CLANG_FLAGS) -c -x assembler
>  $(error-if,$(failure,command -v $(CC)),compiler '$(CC)' not found)
>  $(error-if,$(failure,command -v $(LD)),linker '$(LD)' not found)
>
> +# Get the compiler name, version, and error out if it is unsupported.
> +cc-info := $(shell,$(srctree)/scripts/cc-version.sh $(CC))
> +$(error-if,$(success,test -z "$(cc-info)"),Sorry$(comma) this compiler is not supported.)
> +cc-name := $(shell,set -- $(cc-info) && echo $1)
> +cc-version := $(shell,set -- $(cc-info) && echo $2)
> +
>  # Fail if the linker is gold as it's not capable of linking the kernel proper
>  $(error-if,$(success, $(LD) -v | grep -q gold), gold linker '$(LD)' not supported)
>
> diff --git a/scripts/cc-version.sh b/scripts/cc-version.sh
> new file mode 100755
> index 000000000000..818d233bb0ad
> --- /dev/null
> +++ b/scripts/cc-version.sh
> @@ -0,0 +1,76 @@
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
> +icc_min_version=16.0.3 # temporary
> +
> +# print the compiler name and versions
> +get_compiler_info()
> +{
> +       cat <<- EOF | "$@" -E -P -x c - 2>/dev/null
> +       #if defined(__clang__)
> +       Clang   __clang_major__  __clang_minor__  __clang_patchlevel__
> +       #elif defined(__INTEL_COMPILER)
> +       ICC     __INTEL_COMPILER  __INTEL_COMPILER_UPDATE
> +       #elif defined(__GNUC__)
> +       GCC     __GNUC__  __GNUC_MINOR__  __GNUC_PATCHLEVEL__
> +       #else
> +       unknown
> +       #endif
> +       EOF
> +}
> +
> +# convert the version string x.y.z to a canonical 5 or 6-digit form
> +get_canonical_version()
> +{
> +       IFS=.
> +       set -- $1
> +       echo $((10000 * $1 + 100 * $2 + $3))
> +}
> +
> +# $@ instead of $1 because multiple words might be given e.g. CC="ccache gcc"
> +orig_args="$@"
> +set -- $(get_compiler_info "$@")
> +
> +name=$1
> +
> +case "$name" in
> +GCC)
> +       version=$2.$3.$4
> +       min_version=$gcc_min_version
> +       ;;
> +Clang)
> +       version=$2.$3.$4
> +       min_version=$clang_min_version
> +       ;;
> +ICC)
> +       version=$(($2 / 100)).$(($2 % 100)).$3
> +       min_version=$icc_min_version
> +       ;;
> +*)
> +       echo "$orig_args: unknown compiler" >&2
> +       exit 1
> +       ;;
> +esac
> +
> +cversion=$(get_canonical_version $version)
> +min_cversion=$(get_canonical_version $min_version)
> +
> +if [ "$cversion" -lt "$min_cversion" ]; then
> +       echo >&2 "***"
> +       echo >&2 "*** Compiler is too old."
> +       echo >&2 "***   Your $name version:    $version"
> +       echo >&2 "***   Minimum $name version: $min_version"
> +       echo >&2 "***"
> +       exit 1
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
> -       echo 0
> -       exit 1
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
> -       echo "Error: No compiler specified." >&2
> -       printf "Usage:\n\t$0 <gcc-command>\n" >&2
> -       exit 1
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
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnn5jNv5RKN713YNE%2BkWtSf%2BsCQUaPyvWK7hWijf8Oj8A%40mail.gmail.com.
