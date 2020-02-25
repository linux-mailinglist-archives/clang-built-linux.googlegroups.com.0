Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBPN32LZAKGQEFG6EXQY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23e.google.com (mail-oi1-x23e.google.com [IPv6:2607:f8b0:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id 527E816B863
	for <lists+clang-built-linux@lfdr.de>; Tue, 25 Feb 2020 05:08:31 +0100 (CET)
Received: by mail-oi1-x23e.google.com with SMTP id 199sf5403221oie.10
        for <lists+clang-built-linux@lfdr.de>; Mon, 24 Feb 2020 20:08:31 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582603709; cv=pass;
        d=google.com; s=arc-20160816;
        b=N5qlJIgBFh3D1Gn99SeP7FNmMddcBMEi9UpjdPp0yr14xoEjEJqI8IyD148slnNmMU
         9VOJnooS3GnW8oRl9dcPssZmTKEWIzhjUBqCtG5pHSF+J0q2pPRmKmQ/FpQkSbwQpxov
         7fZFG/rsDucYMAeNWrlPrknFTJ6r4w9CNJbFpnNuKgKH3gRKgWpmtvDBnbqCM2cLWmOy
         1hAdaIk/K6OQTAU8efXeEuSSKiGBnyoyutF7jlI7vffolzzlwm63jSXnclu7jITZs6dN
         MNRM7rxFTF6gVDvmYqG5cVo1GIlZb6ctiZfOpxPkn9jRcpdIUWaVQpxG1AuJvdsJqWgG
         DOCw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=+AxpUlol6N7hX7CtSwBHSXmZulSYRnouo9Bvgh79UnY=;
        b=qtXRjOp9FiqaZet2KTJoFZmwOz9cvwkabbRvPFeaAlbOgf2qa0yv7kmRaZe3Jorcj9
         S644k8KWRtHZvW9qITcItOV7ZMMGlpBePtG5J/9VZx8OdWEGON4ofrs22v22eybggmbX
         UUITdoB5XgURaFBqzjsfFGUntOldm6dOhnEJ9XVd6MUybjkY0xtxX7R+RPEGv69MsSP3
         7Zr8BMwXuIUm0NXq6SFSU0wskvy/MSBbzD8Ot4oL3DxIWhMZ7ATvSzdjNq7nuUFgexk6
         eD9zA1Aaf4eUAtD5XclkuGnCs+zhZHzAwfL6650ZwTJhHoNCSvdqLcb9L3grFoG8tcuR
         GL0w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=MXlDVQn4;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+AxpUlol6N7hX7CtSwBHSXmZulSYRnouo9Bvgh79UnY=;
        b=VzoGrmz8T+e5AVvJKiblXwLA/N90VfT02zZQLIsam9hmjFkAJucyLqaWAPMFA7vX8u
         CDRgensDOlGFs/fe3VPh6aJqEBj77WMyRE0Nge0ceM9cI1I5GrjF6vDQEFc8hN6JHJF8
         XUYK/Tcjl641Q4qzniOYOroS0RqxYqI/L3xwD2iWGh+azgLY2cyCYeQ0dmJmf7oJbAVv
         BnHsJxnq1Cq5TwBS2+y21fiJAXYOoCnspFvrartKYEAZJ43JRHMH4nvg5PW6061doRVp
         mP+aulRRmrDVAxlUveofK47f5zcLfjbMT0kL/bhqPM2BWYtZNZHHbqJhGgxI60I8si7d
         QahQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=+AxpUlol6N7hX7CtSwBHSXmZulSYRnouo9Bvgh79UnY=;
        b=BBriwrXDAm1ljmE3Z3TJUNd13EmmG+Fp9Jc4yRlv31XxZ6c9gQcmJIHx6DOGke0Q/E
         xaHAg4zIxgiqTELrYw5npkiJ7xxXBYVCZW4ufLLOgZ4BDNsRER3lZUn/m8HbelxeLKpJ
         tBoZg985YUnayk/F73UMPlo3eILC2o1R8T1gyqGkPpB2i0yO9kuL5rAtpaePNVWYE5tz
         oLRsy8NY5B7/XZ/eroxNjmkOGV1HDaQspM9gB74oofHHynoDHYOgjFGa5tQGb3JdVxy+
         jBLxUE0DmG49P/9ws7iMCm1Gp/pdOlINd7DMP4mBtPWwu0y5mwS8mQ8U0AFRZOVQRws+
         YUSQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVn0TpsAVT8Ztw+n6VEZygQUOgtjzcCNY/CKwyrdHFHiJk9XRZE
	mLrRqik1IpOgRac/VqsFEYo=
X-Google-Smtp-Source: APXvYqx+1t/v3e2P9lDTTpCRu/CmS8L06U1LVJagyG5ytD4Pmd9TxGkU+8a5Iq+p3vthS40ZOgdPmA==
X-Received: by 2002:a9d:5885:: with SMTP id x5mr41831685otg.132.1582603709641;
        Mon, 24 Feb 2020 20:08:29 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:3ae:: with SMTP id n14ls3511822oie.8.gmail; Mon, 24
 Feb 2020 20:08:29 -0800 (PST)
X-Received: by 2002:aca:e106:: with SMTP id y6mr1976676oig.131.1582603709247;
        Mon, 24 Feb 2020 20:08:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582603709; cv=none;
        d=google.com; s=arc-20160816;
        b=uQgx/cqsOpuSjvRAI+TX7w+ieEdyurDtzWsPzfyFlgbknd3LzTXXzss0EqTXnohL3D
         DQj3oyCwfsECF+kDCAYhcPzdllRceo4xURZ056cj28Vn+EOfFIRE7y6o5TcyIYb41C8l
         psEgRs7F8TMjGp2qrPLZPE4tlvgPgM1hMDOvfgcKeX3C4BJA+xxCoK76jl6xXbCW5EEG
         PVIT+ZmlLtO33HizcTToTMCy3dxUJOOX8k2+Fln673Da9nfLFUZnBtYo1TfvF1Z+9VkA
         EibmwoopOnimgjbMzKgUPTZ/O2ZRdzeNtp5bFfQLqHA01ltp5Bpk97BsPa2RxB4dDjJz
         fezg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=hsmwTWPSD0szPQ7rhutWKLwR4ldbSWtt8mN+lR7f3aU=;
        b=vtaNjIvSZ5C2Fc6G0xWc0ZfvtNy+6aUtEEh3rbkkYttI3Iyct+s2Uw4+g10BzIULQA
         irydztmfgAytf5GZ/Mwo893NoiFTb2unSW9sANsqWMvMUBsLpt16Yht/Xa1oIHJn0m7O
         UAvP4u6L4JclH/dFv/totbiAKfK0bUE5EU3bFcfrHIZ5qM/fgeia2U7OABF5VJofr8A/
         OfwjeXqqjIvNZiAq/R6g60oyl6gz/08pOp9h1SH+3FkOUPvWiPf/b+atDoZNPrGENW8q
         e9wUhJ4PlY43gtTKAeZMPY1wHw0FiUcI5HDVZDt2GjiFIdz+lV//k6Ymg/5+EKmk2yRw
         tDqw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=MXlDVQn4;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id j15si759390oii.3.2020.02.24.20.08.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Feb 2020 20:08:29 -0800 (PST)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id x185so6474710pfc.5
        for <clang-built-linux@googlegroups.com>; Mon, 24 Feb 2020 20:08:29 -0800 (PST)
X-Received: by 2002:a63:b515:: with SMTP id y21mr9533512pge.148.1582603708389;
        Mon, 24 Feb 2020 20:08:28 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id z27sm14758726pfj.107.2020.02.24.20.08.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Feb 2020 20:08:27 -0800 (PST)
Date: Mon, 24 Feb 2020 20:08:26 -0800
From: Kees Cook <keescook@chromium.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: corbet@lwn.net, masahiroy@kernel.org,
	Nathan Chancellor <natechancellor@gmail.com>,
	Michal Marek <michal.lkml@markovi.net>,
	linux-kbuild@vger.kernel.org, linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] Documentation/llvm: add documentation on building w/
 Clang/LLVM
Message-ID: <202002242003.870E5F80@keescook>
References: <20200224174129.2664-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200224174129.2664-1-ndesaulniers@google.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=MXlDVQn4;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Mon, Feb 24, 2020 at 09:41:28AM -0800, Nick Desaulniers wrote:
> Added to kbuild documentation. Provides more official info on building
> kernels with Clang and LLVM than our wiki.
> 
> Suggested-by: Kees Cook <keescook@chromium.org>
> Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
>  Documentation/kbuild/index.rst |  1 +
>  Documentation/kbuild/llvm.rst  | 80 ++++++++++++++++++++++++++++++++++
>  2 files changed, 81 insertions(+)
>  create mode 100644 Documentation/kbuild/llvm.rst
> 
> diff --git a/Documentation/kbuild/index.rst b/Documentation/kbuild/index.rst
> index 0f144fad99a6..3882bd5f7728 100644
> --- a/Documentation/kbuild/index.rst
> +++ b/Documentation/kbuild/index.rst
> @@ -19,6 +19,7 @@ Kernel Build System
>  
>      issues
>      reproducible-builds
> +    llvm
>  
>  .. only::  subproject and html
>  
> diff --git a/Documentation/kbuild/llvm.rst b/Documentation/kbuild/llvm.rst
> new file mode 100644
> index 000000000000..68ae022aebc0
> --- /dev/null
> +++ b/Documentation/kbuild/llvm.rst
> @@ -0,0 +1,80 @@
> +==============================
> +Building Linux with Clang/LLVM
> +==============================
> +
> +This document covers how to build the Linux kernel with Clang and LLVM
> +utilities.
> +
> +About
> +-----
> +
> +The Linux kernel has always traditionally been compiled with GNU toolchains
> +such as GCC and binutils. On going work has allowed for `Clang
> +<https://clang.llvm.org/>`_ and `LLVM <https://llvm.org/>`_ utilities to be
> +used as viable substitutes. Distributions such as `Android
> +<https://www.android.com/>`_, `ChromeOS
> +<https://www.chromium.org/chromium-os>`_, and `OpenMandriva
> +<https://www.openmandriva.org/>`_ use Clang built kernels.  `LLVM is a
> +collection of toolchain components implemented in terms of C++ objects
> +<https://www.aosabook.org/en/llvm.html>`_. Clang is a front-end to LLVM that
> +supports C and the GNU C extensions required by the kernel, and is pronounced
> +"klang," not "see-lang."
> +
> +Clang
> +-----
> +
> +The compiler used can be swapped out via `CC=` command line argument to `make`.
> +`CC=` should be set when selecting a config and during a build.
> +
> +	make CC=clang defconfig
> +
> +	make CC=clang
> +
> +Cross Compiling
> +---------------
> +
> +A single Clang compiler binary will typically contain all supported backends,
> +which can help simplify cross compiling.
> +
> +	ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make CC=clang
> +
> +`CROSS_COMPILE` is not used to suffix the Clang compiler binary, instead

s/suffix/prefix/

> +`CROSS_COMPILE` is used to set a command line flag: `--target <triple>`. For
> +example:
> +
> +	clang --target aarch64-linux-gnu foo.c
> +
> +LLVM Utilities
> +--------------
> +
> +LLVM has substitutes for GNU binutils utilities. These can be invoked as
> +additional parameters to `make`.
> +
> +	make CC=clang AS=clang LD=ld.lld AR=llvm-ar NM=llvm-nm STRIP=llvm-strip \\
> +	  OBJCOPY=llvm-objcopy OBJDUMP=llvm-objdump OBJSIZE=llvm-objsize \\
> +	  READELF=llvm-readelf HOSTCC=clang HOSTCXX=clang++ HOSTAR=llvm-ar \\
> +	  HOSTLD=ld.lld
> +
> +Getting Help
> +------------
> +
> +- `Website <https://clangbuiltlinux.github.io/>`_
> +- `Mailing List <https://groups.google.com/forum/#!forum/clang-built-linux>`_: <clang-built-linux@googlegroups.com>
> +- `Issue Tracker <https://github.com/ClangBuiltLinux/linux/issues>`_
> +- IRC: #clangbuiltlinux on chat.freenode.net
> +- `Telegram <https://t.me/ClangBuiltLinux>`_: @ClangBuiltLinux
> +- `Wiki <https://github.com/ClangBuiltLinux/linux/wiki>`_
> +- `Beginner Bugs <https://github.com/ClangBuiltLinux/linux/issues?q=is%3Aopen+is%3Aissue+label%3A%22good+first+issue%22>`_
> +
> +Getting LLVM
> +-------------
> +
> +- http://releases.llvm.org/download.html
> +- https://github.com/llvm/llvm-project
> +- https://llvm.org/docs/GettingStarted.html
> +- https://llvm.org/docs/CMake.html
> +- https://apt.llvm.org/
> +- https://www.archlinux.org/packages/extra/x86_64/llvm/
> +- https://github.com/ClangBuiltLinux/tc-build
> +- https://github.com/ClangBuiltLinux/linux/wiki/Building-Clang-from-source
> +- https://android.googlesource.com/platform/prebuilts/clang/host/linux-x86/

Should this also include an update to Documentation/process/changes.rst
with the minimum version required? (I would expect this to be "9" for Clang,
and "11" for ld.lld.)

Otherwise, yes, with Randy and Masahiro's suggestions, please consider it:

Reviewed-by: Kees Cook <keescook@chromium.org>

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202002242003.870E5F80%40keescook.
