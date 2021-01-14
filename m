Return-Path: <clang-built-linux+bncBDYJPJO25UGBB7UFQKAAMGQEM5H2UZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73c.google.com (mail-qk1-x73c.google.com [IPv6:2607:f8b0:4864:20::73c])
	by mail.lfdr.de (Postfix) with ESMTPS id 463142F67FB
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 18:44:31 +0100 (CET)
Received: by mail-qk1-x73c.google.com with SMTP id i82sf5371170qke.19
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 09:44:31 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610646270; cv=pass;
        d=google.com; s=arc-20160816;
        b=AVcApDbzbglHArm71U3whKmBUlG/SC3+F10KCXWfcxT6jeq12UHq1RepkgAvGozuvd
         bQmdHxrHYawPvPHnKACBULTID/rUKgiTVUlYoHWo30PAv68gzEJqg8x6Yue7xmTklRlJ
         gqXyo7oOGS621oc2m6UqvyfjfJNURq0keYDF804QLYiupy71z5/48+v7kyqnEEn7IZP7
         fYJN2UQm1x5dwuU/TnmEWeDqSfF+If1aJmTf/JVqz61Eo3FDwMQ5htOn9HBJkkd+cKuP
         z+wZyeFEOsOIXBih7GVtUFyHy10C68hi8iugaxhpII3Abs93IYiu7CCg70v56UgO5ViS
         N4eg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=buAze8T23haL/5MEu1VwPuy/Pumr3tpBDD+9mAhiJ6E=;
        b=U90J12liXde3ht+ueM2v096A2Xwtj56TeI0FFdTNYySEnuJXIY9367p/VzcwLEFFfY
         r1KbEkFrHNCeHYjEPcysW4sMz5ZIpJhXFY4ZcCxIvUVd0+9m0wqZ+dxcjfzLRjVExon0
         yL36qoXYXX+yijprOv+GDaXOJsSs0+6cC26Q/FCdKoYMGIQTSb24oMjHqhXcr2tJkQHL
         NlhTuaJ3fEoq+orFC1MkfSTogJXYzrgnMP8+JPVPhYqKszKXFURRDYyAoFNiozaOuNIA
         5rZTrMZ6MDUAr/Q80/ZV2GykrT+JuBpDudfjNhN0vXpJ1yvE3Jl5TQe+YEGVBEMd2ToT
         /7fw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=vgbjb8bq;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62f as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=buAze8T23haL/5MEu1VwPuy/Pumr3tpBDD+9mAhiJ6E=;
        b=m14nyKWtzRXDMFWpMqAbpFsJyWqXbGwL/UwmnnCk7fc8oHN+7Ptw6/Mu8kTrLScfc1
         bSnL9RvgElA6NT7kaUvm0L716Ms9kzEZqD3i9d2GxKM/lAx4eNWi2FSdrNZ/nMovKrMz
         FiLUsofCC/9nu/BExJBeWPg/bkff4zpJrQeVNlGlgFbgRdD2U04IBtS+9XpYYQ2+Tf7P
         8T6Hoy2fbw2dtGowrOmSGwzQW5fKUwUUz3QL3f/jNdu3XCAVyCAEMITlC3QWaAyn45ng
         cJYWLEtFJsJAJ3unfdkTwA1RDZuD+QjgX9rV0/dhmCG1qcl8BhTvPnLxQ/CHj+qXhwVg
         jh+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=buAze8T23haL/5MEu1VwPuy/Pumr3tpBDD+9mAhiJ6E=;
        b=AQaujIlJdZbY5Tw/6CA3Sfz6MIzr7k2mpkTUVMSOVuqPw+v+Rs8G/VuqQ1SzP7L0H5
         hjlNo+FG3gGiwpYiFukluuQgDvW0HPt/ce9GqOSghTXuShDt4UVyLfr96Wke61exji7f
         O3CwwOlxkzzFfsaxEOwulWczQPlO5ObX83gXhA0hlXjXVFke6cQ2eFBjgUi4dsJjFc0W
         9IGPOBs+yQXZwrJTgO0dvsG5BLrYkPj3/j3izB6cOrQj+r1y1TwLEvuoA7aNOLBBPaGB
         WVtd+RjGREsjgBL9mHMegX75MTTN0q2/OLkuQ+9ey/Vq0G6q4Vf/KNY9qMk2BlXMPLTg
         YjiQ==
X-Gm-Message-State: AOAM532QV2cR8rQx5dQEm0+fkFJ8tbCYhAyC7DGd76NL1Yp26GkYW6BO
	tQOG/t2Tk0ng8iKT6PZhur4=
X-Google-Smtp-Source: ABdhPJwD52/TTxTqK4wPh2Z3cIhVFwzm5WniXirQyQ3oJm5YX04s+i0B09iZj4Soczq1c8tziaJjrw==
X-Received: by 2002:aed:2e25:: with SMTP id j34mr7889788qtd.242.1610646270349;
        Thu, 14 Jan 2021 09:44:30 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:3683:: with SMTP id a3ls2861568qtc.8.gmail; Thu, 14 Jan
 2021 09:44:30 -0800 (PST)
X-Received: by 2002:ac8:4256:: with SMTP id r22mr8163656qtm.324.1610646269953;
        Thu, 14 Jan 2021 09:44:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610646269; cv=none;
        d=google.com; s=arc-20160816;
        b=F2139iF1e/KTNKZ33UJfxQmcAG/qChYx30/72ZGbAXvFxLs7oaCLTCpUENoClplqNz
         ykbW+jsqz4quf+GG9LkOF4ENleZUxZjRRUi7FVXCqnbPrsgEX/h+mfej7il5bSNzbOC4
         dvhZVtWu3mAcsWwCrapzC4fbZ1Fkn6AxW7017FbvO0cdNS8+IKW1XefKR2raazuVKiRE
         sHKp+sJX48vkNIb5NqCbL5aJJpJbbP96iJiLr4iB6hzdRPRKT3zX1m+Z7vjOgeu+Velc
         SN3umS26lqIZidOves5c9X6N7Vs0yfxjB+b0DeXDMyL7j1A8MpIqzLTnAMJ1tFvy4MXu
         GMcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=CMV5sYRO0LL+Q0XQIkjmv2h4V3T0wcSlcLS+8kz3h6U=;
        b=j/sc1UgEZ4XTpn6nswy5WwnKfYAoN/W/pDj4aGjX23Xotuhd6JbI5TJ5FPPwjy608H
         YRsO8JAC92oldRooY2L0lWKzVNcgXQuXgxAThCJzJ4uMqlzpXhBcIbGjGQdAXxUVfWo3
         b9f7L0p7Ap39DNUNovdD6ra9Ci4I+FQ3AzLrxd6bt1w7sf8FT1/4wCFPecdCcrtk7KUj
         eX8PAPgXneTK1EVBDrGOMi1DCdh664i62cIU18ezGvThGS9rQX51C0L9SSdR93CDR8Kg
         Hu8F9BNX+eCOBcJCy/vzf2EUeAPjhO7DCLwVag7vdsHhMKlI3I24Q5195onH/NsCaFUL
         QXNw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=vgbjb8bq;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62f as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com. [2607:f8b0:4864:20::62f])
        by gmr-mx.google.com with ESMTPS id j33si519313qtd.5.2021.01.14.09.44.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Jan 2021 09:44:29 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62f as permitted sender) client-ip=2607:f8b0:4864:20::62f;
Received: by mail-pl1-x62f.google.com with SMTP id x18so3273023pln.6
        for <clang-built-linux@googlegroups.com>; Thu, 14 Jan 2021 09:44:29 -0800 (PST)
X-Received: by 2002:a17:90a:6ba4:: with SMTP id w33mr6177891pjj.32.1610646268478;
 Thu, 14 Jan 2021 09:44:28 -0800 (PST)
MIME-Version: 1.0
References: <20210114041623.226419-1-masahiroy@kernel.org>
In-Reply-To: <20210114041623.226419-1-masahiroy@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 14 Jan 2021 09:44:17 -0800
Message-ID: <CAKwvOdk0UQg9-GX-2MY66XH-fAEsoHTLT88i_ZPO+7XDs+ugJQ@mail.gmail.com>
Subject: Re: [PATCH] kbuild: check the minimum compiler version in Kconfig
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Paul Gortmaker <paul.gortmaker@windriver.com>, 
	Linus Torvalds <torvalds@linux-foundation.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, Will Deacon <will@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=vgbjb8bq;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62f
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

On Wed, Jan 13, 2021 at 8:17 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
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
>   scripts/Kconfig.include:46: Sorry, this compiler is unsupported.
>   make[1]: *** [scripts/kconfig/Makefile:81: defconfig] Error 1
>   make: *** [Makefile:602: defconfig] Error 2
>
> I removed the clang version check from <linux/compiler-clang.h>
>
> For now, I did not touch <linux/compiler-gcc.h> in order to avoid
> merge conflict with [3], which has been queued up in the arm64 tree.
> We will be able to clean it up later.

SGTM

>
> I put the stub for ICC because I see <linux/compiler-intel.h> although
> I am not sure if building the kernel with ICC is well-supported.

I would like to see Ilie's suggestion added.

>
> [1] https://lkml.org/lkml/2021/1/10/250
> [2] https://lkml.org/lkml/2021/1/12/1708
> [3] https://lkml.org/lkml/2021/1/12/1533
>
> Fixes: 87de84c9140e ("kbuild: remove cc-option test of -Werror=date-time")
> Reported-by: Paul Gortmaker <paul.gortmaker@windriver.com>
> Suggested-by: Linus Torvalds <torvalds@linux-foundation.org>
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> ---
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
> -#define CLANG_VERSION (__clang_major__ * 10000 \
> -                    + __clang_minor__ * 100    \
> -                    + __clang_patchlevel__)
> -
> -#if CLANG_VERSION < 100001
> -#ifndef __BPF_TRACING__

Removal of the check for __BPF_TRACING__ was my only concern, but I
think it's ok.
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=bc2dc4406c463
for context.  Moving this version check from headers being parsed to
Kconfig is an improvement.

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
> index 000000000000..32df0e2940f5
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
> +       cat <<- EOF | "$@" -E -P -x c - 2>/dev/null
> +       #if defined(__clang__)
> +       Clang   __clang_major__ __clang_minor__ __clang_patchlevel__
> +       #elif defined(__INTEL_COMPILER)
> +       /* How to get the version of intel compiler? */
> +       ICC     0               0               0
> +       #elif defined(__GNUC__)
> +       GCC     __GNUC__        __GNUC_MINOR__  __GNUC_PATCHLEVEL__
> +       #else
> +       unsupported     0               0               0
> +       #endif
> +       EOF
> +}
> +
> +# convert the version to a canonical 5 or 6-digit form for numerical comparison
> +get_canonical_version()
> +{
> +       IFS=.
> +       set -- $1
> +       echo $((10000 * $1 + 100 * $2 + $3))
> +}
> +
> +# $@ instead of $1 because multiple words might be given e.g. CC="ccache gcc"

FWIW, I sometime run `make CC="/usr/bin/time -v clang"` then post
process the output:
https://github.com/ClangBuiltLinux/linux/issues/1086#issuecomment-670685565
Looks like this should be ok.

> +orig_args="$@"
> +set -- $(run_preprocessor "$@")

^ sorry, what is this statement doing? Ah, fixed in V2...probably
should have commented on that one. Sorry!

> +
> +name=$1
> +version=$2.$3.$4
> +
> +case "$name" in
> +GCC) min_version=$gcc_min_version;;
> +Clang) min_version=$clang_min_version;;
> +ICC) ;; # ICC min version undefined?

Maybe set to 0.0.0 or 1.0.0 for now? We can raise later, if we get
reports...ever.

> +*) echo "$orig_args: unknown compiler" >&2; exit 1;;
> +esac
> +
> +cversion=$(get_canonical_version $version)
> +
> +if [ -n "$min_version" ]; then
> +
> +       min_cversion=$(get_canonical_version $min_version)
> +
> +       if [ "$cversion" -lt "$min_cversion" ]; then
> +               echo >&2 "***"
> +               echo >&2 "*** Compiler is too old."
> +               echo >&2 "***   Your $name version:    $version"
> +               echo >&2 "***   Minimum $name version: $min_version"
> +               echo >&2 "***"
> +               exit 1
> +       fi
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdk0UQg9-GX-2MY66XH-fAEsoHTLT88i_ZPO%2B7XDs%2BugJQ%40mail.gmail.com.
