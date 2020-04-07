Return-Path: <clang-built-linux+bncBDYJPJO25UGBB7WJWP2AKGQESS576TI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23d.google.com (mail-oi1-x23d.google.com [IPv6:2607:f8b0:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 2570E1A16E2
	for <lists+clang-built-linux@lfdr.de>; Tue,  7 Apr 2020 22:39:28 +0200 (CEST)
Received: by mail-oi1-x23d.google.com with SMTP id s126sf3926556oih.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 07 Apr 2020 13:39:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586291966; cv=pass;
        d=google.com; s=arc-20160816;
        b=UgSJ6HlEef6tVnd4GCsvpFlUzNioPAL+8d5SPUF24Cfr3TT8acq6bOUlmQlBODA+sU
         Wwgi08bMtIIaXcVHWlHsX0dWTBwJyGyahyxOGuvfzDnB//RNnJgybJSGlTxhzYqH/caw
         zVhNE/oCXC8YZ5oSH8N+nOjz+nGmaLrgP1SvNcjwc6wK5CxVhxh62PzBkk8lfRzrvodr
         VJ2q2Jw7Z9z8NgxOXY+dE2na440uY60zZF87dIiHXvPl1p6CchycXKuq11BYGejtyqz/
         KTwuBnbD9RVr3UYOVoRo4/sJ3MUgKV9xr0cHADw5IeE9P/kQKYCIHcXohyjt96sYuskT
         24DQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=ydApZgT34UVWe7EhAo37idbNF1dVoFE9mdO/DvZwPA4=;
        b=x5yXCFAQFO2+46qniuiIvuVrtXLN6CeU6M5UPHnBdMwWddz5NAspshoQIMLvbywqlg
         qudPVEQZjC64dmJ2gJo5WVlxWH0AokbNL/ovrWVQgmmL+/wLtFmN9dvSlf8+1L905CBQ
         cPf3tciPy4fRmhcRoRLkHlMNUgLizNrZ3rIUTbqxXr9pa0ujJwSsObAgND+C3/7G+kST
         fOs+y0htJ/PZPSY3KqOZ2VRbwtQkVDahJ68XXN1ZM4ay94tsEiJ8SdyeDCwBFKBpIThU
         1Iph5nr+zI/VFSYAvqKINxQ/uFYYmY5J5+zj+cSw9QQgZZbl9kG9YLJ2XaHns6LYZPzO
         VzUQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Ob4gGm4J;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ydApZgT34UVWe7EhAo37idbNF1dVoFE9mdO/DvZwPA4=;
        b=ndhunwkcClRSpeW/QRamo4M2RwD7V3SOpeh4mPeLUkxV+3Rk+GdpvI94KBf7FAfVKV
         5D/fk4Vg/+k6MzHeKpXqk6E+arEBsXi6qibZHOzpHB7EFjVK85eXn8m/CqjLCEUwDVHG
         On1KZAfN+alrXWZnodVDnhOFgwG7z5qwbUgkxkGgr0eE2+RHo7PEzAg+jnmf1GNcArDh
         kuxPT0DG8XbWAdZrGJ1QY+r76yisg35acU2VMsHm+OuBt9dPQD0SRjY0uTBsc8E24Bic
         NTtrxbwZyWefG1O1roGhjeOoOoSAzQoRCfc7qd29B9YYtgQCFA0gDumDYXe4ArgauoB2
         8ZzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ydApZgT34UVWe7EhAo37idbNF1dVoFE9mdO/DvZwPA4=;
        b=fygv61NkWA524ebPVbFueGxG2PWqICUrYY17bHqBoX93YMqe9COO2qXV+EuzqD40ac
         a7IGkZhaeYQWVWhWH2B7nqluj5DJYZAg/Sn9v8WUQQduWIPKe4LJ8bN7+nYa0/wDJGg4
         BUILYbgoUc9AGWHble6ipNtTznVfGaQgOcdoNI4CdZoA/DhHFNLwwpw7OUbYdIO5js8a
         CVQoc0xjP1AoXAQn152qY01Ju3G34SpWkNili72JcpPqRTNH638M1hIE/+gh3qBrYsp5
         R8c4mVOVd9wZKN4AfPCT8gzU2iWO+AKttuf47vaG2vhKu390+zibPUty2xYCkm4E3Og6
         ScMA==
X-Gm-Message-State: AGi0PublENQ3/jcJMddTPTVRddwjW7SmpALuEfUjabfBmR77ynIbQbcb
	AmqYO3CVKbaCo0gv24n7TmA=
X-Google-Smtp-Source: APiQypJRXs11A9DLWHUVxltoFJU+Kp789rlb0tKrXsQvuYJg0HJ+jFGfcePC7SxJl3Ooj9xN8l4Pkw==
X-Received: by 2002:a05:6830:1d1:: with SMTP id r17mr3199800ota.81.1586291966696;
        Tue, 07 Apr 2020 13:39:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:2e7:: with SMTP id 94ls2066652otl.6.gmail; Tue, 07 Apr
 2020 13:39:26 -0700 (PDT)
X-Received: by 2002:a9d:1988:: with SMTP id k8mr3384471otk.4.1586291966266;
        Tue, 07 Apr 2020 13:39:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586291966; cv=none;
        d=google.com; s=arc-20160816;
        b=Vr2kQFV/JBqBf3DszNNv0WLSEB6+B3FGviE22WlJcZApmvcsqyep4RemRKEnZNj2iK
         ilQK8JcBXUthSymzO9fOeIFqPkVnBG02Q13MJYpfLyGrBzEMj1QtQ0eC22T+7NTwm/gP
         FCjKPyvaBsvemJm2xlbMBdjt2Bz3rsZNmPXLw2/KupDJAhNaeiGAoYPY4vdeziGrZvnY
         m2CnL2gi5rMyKBpCDS+LVe2thF3OQRO1e4dDP0Tily2jmAayz2X8K2C/GHmFqzP9eoFh
         1E8/ruIKkNChGhb8oVY6axgszVqm7nI3jJXu8lBh93fein344lMvzUUmE5SuA/tJlM/v
         B/yQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=6CAGsxNcJu9BgVhKJBWCeD9VioOoonLzPcOcvMoC0QI=;
        b=u1SQM2Ve+K94Q2h+7aziQLoN19IcR+p1c1HB3x8wco7LkNC/7piLIEmcrbh9H3qLw2
         DTpX7czjguUPe0d00naFmPFFPSCDG2aKpEBQv/kFZKYOEyKyJuyDBkCV0TYF373cankL
         X3biPupcXBl8ZQ9bCdABd3z2LClo13JAm1IsOOapauo62mUsw5mNTayqgQb1Q/4k2H6I
         05nihhHvK4Yfv2+JaP9utgFbECkXn/fq45yhdx+aAQ1q/+leYWe9ogGarUnZ1MUNQSwK
         GgtPrdDqLPFzLujoQ5gLDVEgLre7nEv9GjveX9874cllEMxoaeFbfGz0Z7iS8rWWJMEc
         6+xA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Ob4gGm4J;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id a3si233989otf.2.2020.04.07.13.39.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Apr 2020 13:39:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Received: by mail-pj1-x1042.google.com with SMTP id n4so247644pjp.1
        for <clang-built-linux@googlegroups.com>; Tue, 07 Apr 2020 13:39:26 -0700 (PDT)
X-Received: by 2002:a17:902:22e:: with SMTP id 43mr3907767plc.119.1586291965037;
 Tue, 07 Apr 2020 13:39:25 -0700 (PDT)
MIME-Version: 1.0
References: <20200407184336.14612-1-masahiroy@kernel.org> <20200407184336.14612-2-masahiroy@kernel.org>
In-Reply-To: <20200407184336.14612-2-masahiroy@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 7 Apr 2020 13:39:13 -0700
Message-ID: <CAKwvOdkBTBAteD2X=yejd44v=HcF7JvkK9mwdtMOEN3RDs27pA@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] kbuild: support LLVM=1 to switch the default tools
 to Clang/LLVM
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Jonathan Corbet <corbet@lwn.net>, 
	Josh Poimboeuf <jpoimboe@redhat.com>, Michal Marek <michal.lkml@markovi.net>, 
	Peter Zijlstra <peterz@infradead.org>, Linux Doc Mailing List <linux-doc@vger.kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>, =?UTF-8?Q?Matthias_M=C3=A4nnich?= <maennich@google.com>, 
	Sandeep Patil <sspatil@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Ob4gGm4J;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042
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

On Tue, Apr 7, 2020 at 11:44 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> As Documentation/kbuild/llvm.rst implies, building the kernel with a
> full set of LLVM tools gets very verbose and unwieldy.
>
> Provide a single switch LLVM=1 to use Clang and LLVM tools instead
> of GCC and Binutils. You can pass it from the command line or as an
> environment variable.
>
> Please note LLVM=1 does not turn on the integrated assembler. You need
> to pass LLVM_IA=1 to use it. When the upstream kernel is ready for the
> integrated assembler, I think we can make it default.
>
> We discussed what we need, and we agreed to go with a simple boolean
> flag that switches both target and host tools:
>
>   https://lkml.org/lkml/2020/3/28/494
>   https://lkml.org/lkml/2020/4/3/43
>
> Some items discussed, but not adopted:
>
> - LLVM_DIR
>
>   When multiple versions of LLVM are installed, I just thought supporting
>   LLVM_DIR=/path/to/my/llvm/bin/ might be useful.
>
>   CC      = $(LLVM_DIR)clang
>   LD      = $(LLVM_DIR)ld.lld
>     ...
>
>   However, we can handle this by modifying PATH. So, we decided to not do
>   this.
>
> - LLVM_SUFFIX
>
>   Some distributions (e.g. Debian) package specific versions of LLVM with
>   naming conventions that use the version as a suffix.
>
>   CC      = clang$(LLVM_SUFFIX)
>   LD      = ld.lld(LLVM_SUFFIX)
>     ...
>
>   will allow a user to pass LLVM_SUFFIX=-11 to use clang-11 etc.,
>   but the suffixed versions in /usr/bin/ are symlinks to binaries in
>   /usr/lib/llvm-#/bin/, so this can also be handled by PATH.
>
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
> Tested-by: Nathan Chancellor <natechancellor@gmail.com> # build
> Tested-by: Nick Desaulniers <ndesaulniers@google.com>

Thanks for the series!
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>
> Changes in v2:
>   - Switch host compilers as well as requested
>
>  Documentation/kbuild/kbuild.rst |  5 +++++
>  Documentation/kbuild/llvm.rst   |  8 ++++++--
>  Makefile                        | 29 +++++++++++++++++++++++------
>  tools/objtool/Makefile          |  6 ++++++
>  4 files changed, 40 insertions(+), 8 deletions(-)
>
> diff --git a/Documentation/kbuild/kbuild.rst b/Documentation/kbuild/kbuild.rst
> index 510f38d7e78a..2d1fc03d346e 100644
> --- a/Documentation/kbuild/kbuild.rst
> +++ b/Documentation/kbuild/kbuild.rst
> @@ -262,3 +262,8 @@ KBUILD_BUILD_USER, KBUILD_BUILD_HOST
>  These two variables allow to override the user@host string displayed during
>  boot and in /proc/version. The default value is the output of the commands
>  whoami and host, respectively.
> +
> +LLVM
> +----
> +If this variable is set to 1, Kbuild will use Clang and LLVM utilities instead
> +of GCC and GNU binutils to build the kernel.
> diff --git a/Documentation/kbuild/llvm.rst b/Documentation/kbuild/llvm.rst
> index 2b40afa58049..81f915c02c4c 100644
> --- a/Documentation/kbuild/llvm.rst
> +++ b/Documentation/kbuild/llvm.rst
> @@ -47,8 +47,12 @@ example:
>  LLVM Utilities
>  --------------
>
> -LLVM has substitutes for GNU binutils utilities. These can be invoked as
> -additional parameters to `make`.
> +LLVM has substitutes for GNU binutils utilities. Kbuild supports `LLVM=1`
> +to enable them.
> +
> +       make LLVM=1
> +
> +They can be enabled individually. The full list of the parameters:
>
>         make CC=clang LD=ld.lld AR=llvm-ar NM=llvm-nm STRIP=llvm-strip \\
>           OBJCOPY=llvm-objcopy OBJDUMP=llvm-objdump OBJSIZE=llvm-size \\
> diff --git a/Makefile b/Makefile
> index f9beb696d6d3..ffc1d2c618a7 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -399,8 +399,13 @@ HOST_LFS_CFLAGS := $(shell getconf LFS_CFLAGS 2>/dev/null)
>  HOST_LFS_LDFLAGS := $(shell getconf LFS_LDFLAGS 2>/dev/null)
>  HOST_LFS_LIBS := $(shell getconf LFS_LIBS 2>/dev/null)
>
> -HOSTCC       = gcc
> -HOSTCXX      = g++
> +ifneq ($(LLVM),)
> +HOSTCC = clang
> +HOSTCXX        = clang++
> +else
> +HOSTCC = gcc
> +HOSTCXX        = g++
> +endif
>  KBUILD_HOSTCFLAGS   := -Wall -Wmissing-prototypes -Wstrict-prototypes -O2 \
>                 -fomit-frame-pointer -std=gnu89 $(HOST_LFS_CFLAGS) \
>                 $(HOSTCFLAGS)
> @@ -409,16 +414,28 @@ KBUILD_HOSTLDFLAGS  := $(HOST_LFS_LDFLAGS) $(HOSTLDFLAGS)
>  KBUILD_HOSTLDLIBS   := $(HOST_LFS_LIBS) $(HOSTLDLIBS)
>
>  # Make variables (CC, etc...)
> -LD             = $(CROSS_COMPILE)ld
> -CC             = $(CROSS_COMPILE)gcc
>  CPP            = $(CC) -E
> +ifneq ($(LLVM),)
> +CC             = clang
> +LD             = ld.lld
> +AR             = llvm-ar
> +NM             = llvm-nm
> +OBJCOPY                = llvm-objcopy
> +OBJDUMP                = llvm-objdump
> +READELF                = llvm-readelf
> +OBJSIZE                = llvm-size
> +STRIP          = llvm-strip
> +else
> +CC             = $(CROSS_COMPILE)gcc
> +LD             = $(CROSS_COMPILE)ld
>  AR             = $(CROSS_COMPILE)ar
>  NM             = $(CROSS_COMPILE)nm
> -STRIP          = $(CROSS_COMPILE)strip
>  OBJCOPY                = $(CROSS_COMPILE)objcopy
>  OBJDUMP                = $(CROSS_COMPILE)objdump
> -OBJSIZE                = $(CROSS_COMPILE)size
>  READELF                = $(CROSS_COMPILE)readelf
> +OBJSIZE                = $(CROSS_COMPILE)size
> +STRIP          = $(CROSS_COMPILE)strip
> +endif
>  PAHOLE         = pahole
>  LEX            = flex
>  YACC           = bison
> diff --git a/tools/objtool/Makefile b/tools/objtool/Makefile
> index ee08aeff30a1..f591c4d1b6fe 100644
> --- a/tools/objtool/Makefile
> +++ b/tools/objtool/Makefile
> @@ -3,9 +3,15 @@ include ../scripts/Makefile.include
>  include ../scripts/Makefile.arch
>
>  # always use the host compiler
> +ifneq ($(LLVM),)
> +HOSTAR ?= llvm-ar
> +HOSTCC ?= clang
> +HOSTLD ?= ld.lld
> +else
>  HOSTAR ?= ar
>  HOSTCC ?= gcc
>  HOSTLD ?= ld
> +endif
>  AR      = $(HOSTAR)
>  CC      = $(HOSTCC)
>  LD      = $(HOSTLD)
> --

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkBTBAteD2X%3Dyejd44v%3DHcF7JvkK9mwdtMOEN3RDs27pA%40mail.gmail.com.
