Return-Path: <clang-built-linux+bncBDYJPJO25UGBBLMRQ2BAMGQERPD6VBY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x438.google.com (mail-wr1-x438.google.com [IPv6:2a00:1450:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 9427832DF0F
	for <lists+clang-built-linux@lfdr.de>; Fri,  5 Mar 2021 02:26:05 +0100 (CET)
Received: by mail-wr1-x438.google.com with SMTP id z6sf313723wrh.11
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Mar 2021 17:26:05 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614907565; cv=pass;
        d=google.com; s=arc-20160816;
        b=sBqrComFD9E1aXGBMynmGdSRXnvG9ghclZI89tCneoECy3a7Dtwxk/A81HbvRTQjJn
         uwWqhqf7HT6wYBQ4opKArolpEZ9LEEHz5BifNHeD0+kalz5BoIfvtHPwgdCrMBpVW5Go
         q12uuFoBrdwKa+lbV25pcIHmdsJ0rnCa2iQ+ooBqPrctcNL30roeQpKp3fUsvr4THGle
         eJDBAspjIduLoZECxH7gfoN1ZvmJSm8cxS7d5b12QfUEPlTA+DIxmB33M51MW+eUrD0N
         3anC2vDyYaRvwswquh1G9lub6SEllWYQPIHiP6YcSMOCZvVWkZdxEhZT7gEFqqt314i4
         4QCw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=tEIv6jrGrqIUOqUP/w9ksxdxfa/aClZRf/PTcM7q6vE=;
        b=FuGb/Qo6ZD4NuDJs3tqPivSali/Wanp0ftdrltJjqpYAv5uPtUAbUyypUUbOoRTdTR
         SQobWVCgO/pbrZEyYtrMghx710oHsoh9QfmBVkcWrjqainLyxCohZqqksng5s8dC8gLF
         alqEDvGTqLwVdz+6GehIJ/Gm5sSDuJQaIj/ozHtpf4liT0jcGtoop9oQqDJj6+lH1RVn
         FmNrNnh5VxcYv6cMDMxcJVFZQIprxrhqYrsMrnBn+htT4PNBrFWY8fTkRQa+yNLyiPS8
         9coIW+pol6f5DvU0vpG10IQFPgzGMX5eXmAsDzViUdjaLAg5iaXdL0EdzhEzDpiIn9Li
         1EOg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ooOhIrVc;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tEIv6jrGrqIUOqUP/w9ksxdxfa/aClZRf/PTcM7q6vE=;
        b=b3lj2CN3nO/FrdMXp8dHYub8+N0XCX/HglW+6cVRpNulZmDuFhszYSKQCozjTdVw0n
         DgHkiSGq7mnadvwnmSNHgaK/QhrluVpKJeJfhINJdnBB2GV6tpoml54a68epBR+ARKw/
         c9CSBcKYda23L5Qos8U9XJCm1vQ3jzZBYjDUxyzh5ubPj2ePHS+wZSN/+g3kr3zyws70
         rYd8QuWGQy4jDYQNUI4bzSKjO+E/X+hvEr5OhtlNLoFmOrQ4eACPPZLkxRbU7FhDaG0B
         wvmhaQU3EhZ/Ti2gA6/zzqep0ONTTSe9IzeYqp5j89eIGlm8S6zXiXT+oPW7lz/69Rdi
         n3OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tEIv6jrGrqIUOqUP/w9ksxdxfa/aClZRf/PTcM7q6vE=;
        b=CT/zh5BXcs80OriMnyUxa+fZANqdYDtB9b7LgfagY2e3XnNjJfZkLzyFi7nZakEjJg
         +V7dwAVVNDVXu6b7ThhNEPMkXnYzq9Ez3z7bXQdRpzk3nNUhrjnWAE2njCrKZnIEb6de
         55LN2pJWiM+8EJDx2WpBJzUUvZzsNeTKDM5+gTtzgkfxVo63ACl4blw/k4Ic8wuSrUdd
         Hsvs6RjUE7BLMvPCX7Mk4e/SdRuGotuyvOriHQvGy7gyGcgM2v5ZeF3sYN5t9UYtBbvD
         tNpzxZNqcX4wlzTiPc6jzTH7bMSfhl7khOTU42IoMVySmsD9/0faUifGX8U+Y3cssx6W
         ZyTg==
X-Gm-Message-State: AOAM533JJYR3raiGa2/t14N3ONFYEtvoi1PDc4kM8iv0UzfnDWagxOd4
	jL4tQ2CSiFf2xBRxJ9YC8To=
X-Google-Smtp-Source: ABdhPJywTI63exeZvLc39u7isStLkLvHnaIy6pQes3F7/7dosNEv7q3ILLwHetAxcQ2Q3TCMOpkvtg==
X-Received: by 2002:a5d:6810:: with SMTP id w16mr6757576wru.333.1614907565345;
        Thu, 04 Mar 2021 17:26:05 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:6a89:: with SMTP id s9ls5572448wru.2.gmail; Thu, 04 Mar
 2021 17:26:04 -0800 (PST)
X-Received: by 2002:adf:a2c2:: with SMTP id t2mr6602544wra.47.1614907564513;
        Thu, 04 Mar 2021 17:26:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614907564; cv=none;
        d=google.com; s=arc-20160816;
        b=P1h/1y6RQBRZgpkDGx2h7UfoJ5ezlojYCiZky54xNtt34aqzF4ZJtp69vioqxyoJrb
         WtsN8O7M/w7xM/hSe6qxZktYe9/WTleo92OrKkTrHW3UxHSwgkQzcIoYptA+V2IJFxaG
         HC2ud3OaN/+PYgZxpgBG6WnfSuxWFSTNQ1dcMq4NVoxqHO+vVE454u1x63rTJ0t09qlD
         NYfO7SPVbtkNEyExPf1KlkNpK0gMYuZH5d1OVcidTel2RN0y+/BXkpCZxrx/LVgTs7fm
         qW7jOBBurF5iGaj7oiAJgnGRfRXfJi9VkpHRtTfGbrlqt4KTo0Au3fBJ0KlAO/tZVtXZ
         H2Jw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=gCdvi4EBYLylFbGen12vcA3G3U87RxCMkiKYpd8th7E=;
        b=hAVuu8kigyFdKfXNI01H6cc72kQNKFrTS+uvJl164//rYQdN0X6e/xj3guSYqkcnBC
         VD14iNlXIIWjpLFBZ4jdG/g/sYY/pd1KvZAQVuCibnEzc9HSJG9Kk00qJjCmmxr125tV
         wEDvAvGl10c+Dexls207ngWH60p/yPKMuCjd4qcstSLLsmijsk/0EkAWkJRRxXIrULdX
         BwurG04HMwIhXg9dA06P6Pmxu80hXaS6Jsx1ASchVdXsZLf1kO1n1eJ8CRmUyTYFlO9D
         7KJoyZ70qQcIzHDle3YSb4AF+dpLRoO3kWGw10nKFYWBDG4DLi33kgXUtELdF9puDwtP
         +gSA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ooOhIrVc;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com. [2a00:1450:4864:20::22e])
        by gmr-mx.google.com with ESMTPS id g137si492325wmg.4.2021.03.04.17.26.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Mar 2021 17:26:04 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22e as permitted sender) client-ip=2a00:1450:4864:20::22e;
Received: by mail-lj1-x22e.google.com with SMTP id u4so515255ljh.6
        for <clang-built-linux@googlegroups.com>; Thu, 04 Mar 2021 17:26:04 -0800 (PST)
X-Received: by 2002:a19:5055:: with SMTP id z21mr3966267lfj.297.1614907563747;
 Thu, 04 Mar 2021 17:26:03 -0800 (PST)
MIME-Version: 1.0
References: <20210303183333.46543-1-masahiroy@kernel.org> <20210303183333.46543-3-masahiroy@kernel.org>
In-Reply-To: <20210303183333.46543-3-masahiroy@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 4 Mar 2021 17:25:52 -0800
Message-ID: <CAKwvOdmdQvwDN6Bg2Kom1Nm+HrNfCqOqnDLYTYs+5sRSEuZsJg@mail.gmail.com>
Subject: Re: [PATCH 3/4] kbuild: check the minimum assembler version in Kconfig
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Nathan Chancellor <nathan@kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>, Jian Cai <jiancai@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ooOhIrVc;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22e
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

On Wed, Mar 3, 2021 at 10:34 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
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

Was this a feature request to "please implement -Wa,--version for clang?" :-P
https://github.com/ClangBuiltLinux/linux/issues/1320

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
>         def_bool y
>         # Clang >= 11: https://github.com/ClangBuiltLinux/linux/issues/510
> -       depends on CC_IS_CLANG && CLANG_VERSION >= 110000 && LD_IS_LLD
> -       depends on $(success,test $(LLVM_IAS) -eq 1)
> +       depends on CC_IS_CLANG && CLANG_VERSION >= 110000 && LD_IS_LLD && AS_IS_LLVM
>         depends on $(success,$(NM) --help | head -n 1 | grep -qi llvm)
>         depends on $(success,$(AR) --help | head -n 1 | grep -qi llvm)
>         depends on ARCH_SUPPORTS_LTO_CLANG
> diff --git a/init/Kconfig b/init/Kconfig
> index 22946fe5ded9..f76e5a44e4fe 100644
> --- a/init/Kconfig
> +++ b/init/Kconfig
> @@ -41,6 +41,18 @@ config CLANG_VERSION
>         default $(cc-version) if CC_IS_CLANG
>         default 0
>
> +config AS_IS_GNU
> +       def_bool $(success,test "$(as-name)" = GNU)
> +
> +config AS_IS_LLVM
> +       def_bool $(success,test "$(as-name)" = LLVM)
> +
> +config AS_VERSION
> +       int
> +       # If it is integrated assembler, the version is the same as Clang's one.
> +       default CLANG_VERSION if AS_IS_LLVM
> +       default $(as-version)
> +
>  config LD_IS_BFD
>         def_bool $(success,test "$(ld-name)" = BFD)
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
> +       IFS=.
> +       set -- $1
> +
> +       # If the 2nd or 3rd field is missing, fill it with a zero.
> +       #
> +       # The 4th field, if present, is ignored.
> +       # This occurs in development snapshots as in 2.35.1.20201116
> +       echo $((10000 * $1 + 100 * ${2:-0} + ${3:-0}))
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

Checking the precise error message is too brittle; what if it changes?
Why not check the return code a la cc-option and friends?  Is checking
the return code of a subshell an issue here?

> +       # For the intergrated assembler, we do not check the version here.

s/intergrated/integrated/

> +       # It is the same as the clang version, and it has been already checked
> +       # by scripts/cc-version.sh.
> +       echo LLVM 0
> +       exit 0
> +fi
> +
> +# Split the line on spaces.
> +IFS=' '
> +set -- $line
> +
> +tool_version=$(dirname $0)/tool-version.sh
> +
> +if [ "$1" = GNU -a "$2" = assembler ]; then
> +       shift $(($# - 1))
> +       version=$1
> +       min_version=$($tool_version binutils)
> +       name=GNU
> +else
> +       echo "$orig_args: unknown assembler invoked" >&2
> +       exit 1
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
> +       echo >&2 "***"
> +       echo >&2 "*** Assembler is too old."
> +       echo >&2 "***   Your $name assembler version:    $version"
> +       echo >&2 "***   Minimum $name assembler version: $min_version"
> +       echo >&2 "***"
> +       exit 1
> +fi
> +
> +echo $name $cversion
> --
> 2.27.0
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmdQvwDN6Bg2Kom1Nm%2BHrNfCqOqnDLYTYs%2B5sRSEuZsJg%40mail.gmail.com.
