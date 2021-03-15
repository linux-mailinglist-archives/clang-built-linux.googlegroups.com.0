Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBKNVX2BAMGQELFMFGMI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf40.google.com (mail-qv1-xf40.google.com [IPv6:2607:f8b0:4864:20::f40])
	by mail.lfdr.de (Postfix) with ESMTPS id 8849833C450
	for <lists+clang-built-linux@lfdr.de>; Mon, 15 Mar 2021 18:34:34 +0100 (CET)
Received: by mail-qv1-xf40.google.com with SMTP id i1sf23604773qvu.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 15 Mar 2021 10:34:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1615829673; cv=pass;
        d=google.com; s=arc-20160816;
        b=wfgVob7nQdM2KrlN8t8aCRduwvHdmdC5mL2mVqZKeojDeMGMSF17NQGGv3X98Ro5jA
         lUqxFTzMg77B2p7r++1CCx71syYzTu22fPNa6K+vslkfFaWVwFhGy2l6jAmjupHrhzyD
         xgi5/Dvv2ZCVTQsmKhv8SaR81uUwoC7GSo2K2EA06vKJUrypSJ4eDMCFw1q8DBUhiZYY
         R+SYDaM/3Aj6lQZV7PWRhH+G24/17alH0HQWTLNYx8JiiYXtiQQOfEw4x61YlA+27uC+
         OxAsu8RBVByWCYs3c5IVmUlTlj1Hp8Rpi0FUE1iQyf9gnexvkyhD5OEi83wq0oldp20t
         nuWg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=uhOWUVaNlVlxMvOFAoO5hy11e9OXJ+CZzBiK0iSzaPk=;
        b=CCRWV/MPTEV0+qkwPmIE7U6RENti6OoL1P+rdqXTyvoiXl54BGBTqDgD1NybPu/CdB
         gH2O9V86z6BqthYxpROQKZ/tvBr84VwHXuuOYk1JJNEXVtKieP3kwAtEBTFjV+1r0CJ8
         6ob/fB/+mFIEgTkktGPXsV+NUz2ijt4EgGF1xzUES5WnxQzaFNO9PaQr4++vaCum94Uu
         duq1Egy0A1SHxkDlzCaXZBnsB21SpAetvcD65XMfpaQXMBqifYVl6s0sSUGq/z1z28ug
         rxPIyRtn2biGBh2xWHNMKxRkJRpKtbi3BtgLkma6Q+GovsUVBOCjEZx0Iyng4zqsmPfy
         PGsQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=bzBJ3Wf5;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=uhOWUVaNlVlxMvOFAoO5hy11e9OXJ+CZzBiK0iSzaPk=;
        b=QWOMD5kJquw6RfKd1XxLPQpCjnDMCV1I/AxaAxkC0DJbprKc8odiFkPgk5pN6SUcyg
         m7owex3leoUIjjvpIshQb4Ni8/MWXNMcr4P3M3ll02Ea/qCUNCgj/VGB849ETJE9KMLi
         hYbXVYbc4zV4s//nmCX1nKpWsuR1XVaYco/LWqCx8mYc81ioJEzJyjXhDtJgBi/v1f9v
         t4SXQX08MZsS8Xi39nCc7FfXX4+g8GZsIS+ufHV8v2NmalN3n1/dUWz4On9383bGvzsx
         iV/Ga9316609tyVk2ZJ9kF5Ae0SxLxq+Kn81xH+3oagQLTOearj1x3ZeXlsmmYgg0Kbi
         6IfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=uhOWUVaNlVlxMvOFAoO5hy11e9OXJ+CZzBiK0iSzaPk=;
        b=QoOHJdCDSlZSk8rD7T6TsXEPChQTPUcsY/pp5PKbOCSzmeZ5gOqSSmFGXP+WDm5sIP
         Em1l+NyjxNSbN9sObjQbqnYAJFz7M3FH8kJDTXAfKwuSTsy0QSvasf13muNxkfw7kK0S
         dtHjic8w3dtsI5dYqo13bvk6teS5moLBMksR/1guK+VyZ0IB1cvNRoYsmzup2QUojcrw
         LbZk8XZK7lTMxt719nYbxUdxEkwOzuc6EwyWKkYqCvfuZeOobW/8AHU+io0AAsfEy65z
         4j4Yb9c/bTYWqma7mS0mYKpaGu8xqZuzNr9XovKTM1+/NBRIkrD35lpH1qp8uFgCA2sL
         IMfg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533RgRp534vG895yjhygxQyzbHKhdoSrGNWyqaMAK84r50cXVgjt
	ZdBMR6bJ7DBiTkCIPJ/q15A=
X-Google-Smtp-Source: ABdhPJzVyh6yVTvWbkexExUHTgBodn6hNIZBEhhbn7ldRm+xM3cOobuGhfutw02dd0NiVKYkXGpV6Q==
X-Received: by 2002:ac8:7a94:: with SMTP id x20mr24299058qtr.51.1615829673497;
        Mon, 15 Mar 2021 10:34:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:3db:: with SMTP id r27ls7391450qkm.5.gmail; Mon, 15
 Mar 2021 10:34:33 -0700 (PDT)
X-Received: by 2002:a37:de14:: with SMTP id h20mr17964202qkj.34.1615829673073;
        Mon, 15 Mar 2021 10:34:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1615829673; cv=none;
        d=google.com; s=arc-20160816;
        b=BfXSoNDfDYy/VoUWAKE7cJ+YPT+/cztrkJ9fO4t1u7pig+SaqTfDcXp2gB5ulUEAj0
         d103a171D/EGQxSxS0DgMmFuRsEUhx00xZeYGB9/ysTsZXHd/gIQnqxrXwLdIU4vFaQg
         AlWFMxWAgQ6EMYcg7Y8wWB/clRG2qzs1xI3LHLvIQuJPsG57V4Ad1Yrt+C/qwd44cGhV
         a+nrIZbzdLb3xG1K/TpmxG97PFcLUysU2HS87zS75Uh+ChJws/CbAlX0SibXg1vo0XPm
         /N8IckOxkgTbwNf9xlqmHSF5L8mVDrQhxGl5mB9RN02568WbRr9e6/L/7grhBf6qHv13
         ifng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Ke6DUO29H6BDdBj96WLzAEUFoj1R3MNgx8g/tSbFECY=;
        b=fzVZMWIxpeTtNCp+0eKnXr7f0qwPO6pyoMGfL07haiNgtdaOFr4GBG1fIGjJvz1pez
         ST8Fl+PWBvU2qsNBMnxVpS6BfVch6Fz1jqYROaXeItz2F/D66colYImFrAb9I+cQJivl
         uOG5T2I3eRJKCg1hxft9k1m64eSBApMYMKlTqkeVIzZGhUnybahNaNuIw625rLQ03cmM
         Q8CstuMApM+jOcTeunusiDSuxSfy6nYvGzY6tyBG9EBu+smcp0vy57FZtrZVXayQABYZ
         BAXfdumsCxA07dIu/jiG3uoXaxTVZcU61Mz1oCzlkZY0GLKtdq1AaEYgq5CuOw0Qym7b
         JqUA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=bzBJ3Wf5;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id o8si557729qtm.5.2021.03.15.10.34.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Mar 2021 10:34:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7EF8364F04;
	Mon, 15 Mar 2021 17:34:27 +0000 (UTC)
Date: Mon, 15 Mar 2021 10:34:24 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: linux-kbuild@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
	Christian Brauner <christian.brauner@ubuntu.com>,
	Colin Ian King <colin.king@canonical.com>,
	David Howells <dhowells@redhat.com>,
	Frederic Weisbecker <frederic@kernel.org>,
	Johannes Weiner <hannes@cmpxchg.org>, KP Singh <kpsingh@google.com>,
	Kees Cook <keescook@chromium.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nick Terrell <terrelln@fb.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Sami Tolvanen <samitolvanen@google.com>,
	Stephen Boyd <sboyd@kernel.org>,
	"Steven Rostedt (VMware)" <rostedt@goodmis.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Valentin Schneider <valentin.schneider@arm.com>,
	Viresh Kumar <viresh.kumar@linaro.org>,
	Vlastimil Babka <vbabka@suse.cz>, YiFei Zhu <yifeifz2@illinois.edu>,
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/3] kbuild: check the minimum assembler version in
 Kconfig
Message-ID: <20210315173424.huknxyignnzqhxnt@archlinux-ax161>
References: <20210315161257.788477-1-masahiroy@kernel.org>
 <20210315161257.788477-2-masahiroy@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210315161257.788477-2-masahiroy@kernel.org>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=bzBJ3Wf5;       spf=pass
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

On Tue, Mar 16, 2021 at 01:12:56AM +0900, Masahiro Yamada wrote:
> Documentation/process/changes.rst defines the minimum assembler version
> (binutils version), but we have never checked it in the build time.
> 
> Kbuild never invokes 'as' directly because all assembly files in the
> kernel tree are *.S, hence must be preprocessed. I do not expect
> raw assembly source files (*.s) would be added to the kernel tree.
> 
> Therefore, we always use $(CC) as the assembler driver, and commit
> aa824e0c962b ("kbuild: remove AS variable") removed 'AS'. However,
> we are still interested in the version of the assembler acting behind.
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
> For the last case, checking the error message is fragile. If the
> proposal for -Wa,--version support [1] is accepted, this may not be
> even an error in the future.
> 
> One easy way is to check if -integrated-as is present in the passed
> arguments. We did not pass -integrated-as to CLANG_FLAGS before, but
> we can make it explicit.
> 
> Nathan pointed out -integrated-as is the default for all of the
> architectures/targets that the kernel cares about, but it goes
> along with "explicit is better than implicit" policy. [2]
> 
> With all this in my mind, I implemented scripts/as-version.sh to
> check the assembler version in Kconfig time.
> 
>   $ scripts/as-version.sh gcc
>   GNU 23501
>   $ scripts/as-version.sh clang -no-integrated-as
>   GNU 23501
>   $ scripts/as-version.sh clang -integrated-as
>   LLVM 0
> 
> [1]: https://github.com/ClangBuiltLinux/linux/issues/1320
> [2]: https://lore.kernel.org/linux-kbuild/20210307044253.v3h47ucq6ng25iay@archlinux-ax161/
> 
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>

Reviewed-by: Nathan Chancellor <nathan@kernel.org>

> ---
> 
> Changes in v2:
>   - Check -integrated-as option instead of error message.
>   - Add LC_ALL=C just in case.
> 
>   The Italian locale did not tweak the message from 'as --version'
>   but we never know what would happen on locale.
> 
>   $ LC_MESSAGES=it_IT.UTF-8 ld --version | head -n 1
>   ld di GNU (GNU Binutils for Debian) 2.35.2
>   $ LC_MESSAGES=it_IT.UTF-8 as --version | head -n 1
>   GNU assembler (GNU Binutils for Debian) 2.35.2
> 
>  Makefile                |  4 +-
>  arch/Kconfig            |  3 +-
>  init/Kconfig            | 12 ++++++
>  scripts/Kconfig.include |  6 +++
>  scripts/as-version.sh   | 82 +++++++++++++++++++++++++++++++++++++++++
>  5 files changed, 104 insertions(+), 3 deletions(-)
>  create mode 100755 scripts/as-version.sh
> 
> diff --git a/Makefile b/Makefile
> index cc5b7e39fde4..2b161f5a5a66 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -580,7 +580,9 @@ ifneq ($(findstring clang,$(CC_VERSION_TEXT)),)
>  ifneq ($(CROSS_COMPILE),)
>  CLANG_FLAGS	+= --target=$(notdir $(CROSS_COMPILE:%-=%))
>  endif
> -ifneq ($(LLVM_IAS),1)
> +ifeq ($(LLVM_IAS),1)
> +CLANG_FLAGS	+= -integrated-as
> +else
>  CLANG_FLAGS	+= -no-integrated-as
>  GCC_TOOLCHAIN_DIR := $(dir $(shell which $(CROSS_COMPILE)elfedit))
>  CLANG_FLAGS	+= --prefix=$(GCC_TOOLCHAIN_DIR)$(notdir $(CROSS_COMPILE))
> diff --git a/arch/Kconfig b/arch/Kconfig
> index ecfd3520b676..555b4f09a9b2 100644
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
> index 5f5c776ef192..019c1874e609 100644
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
> +	# Use clang version if this is the integrated assembler
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
> index 000000000000..953ff000bcbc
> --- /dev/null
> +++ b/scripts/as-version.sh
> @@ -0,0 +1,82 @@
> +#!/bin/sh
> +# SPDX-License-Identifier: GPL-2.0-only
> +#
> +# Print the assembler name and its version in a 5 or 6-digit form.
> +# Also, perform the minimum version check.
> +# (If it is the integrated assembler, return 0 as the version, and
> +# skip the version check.)
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
> +# Clang failes to handle -Wa,--version fails unless -no-integrated-as is given.
> +# We check -(f)integrated-as, expecting it is explicitly passed in for the
> +# integrated assembler case.
> +check_integrated_as()
> +{
> +	while [ $# -gt 0 ]; do
> +		if [ "$1" = -integrated-as -o "$1" = -fintegrated-as ]; then
> +			# For the intergrated assembler, we do not check the
> +			# version here. It is the same as the clang version, and
> +			# it has been already checked by scripts/cc-version.sh.
> +			echo LLVM 0
> +			exit 0
> +		fi
> +		shift
> +	done
> +}
> +
> +check_integrated_as "$@"
> +
> +orig_args="$@"
> +
> +# Get the first line of the --version output.
> +IFS='
> +'
> +set -- $(LC_ALL=C "$@" -Wa,--version -c -x assembler /dev/null -o /dev/null 2>&1)
> +
> +# Split the line on spaces.
> +IFS=' '
> +set -- $1
> +
> +min_tool_version=$(dirname $0)/min-tool-version.sh
> +
> +if [ "$1" = GNU -a "$2" = assembler ]; then
> +	shift $(($# - 1))
> +	version=$1
> +	min_version=$($min_tool_version binutils)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210315173424.huknxyignnzqhxnt%40archlinux-ax161.
