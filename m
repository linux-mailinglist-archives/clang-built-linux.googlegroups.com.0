Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBUVTSGBAMGQETDIPVFA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x840.google.com (mail-qt1-x840.google.com [IPv6:2607:f8b0:4864:20::840])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ED3732FEAC
	for <lists+clang-built-linux@lfdr.de>; Sun,  7 Mar 2021 05:43:00 +0100 (CET)
Received: by mail-qt1-x840.google.com with SMTP id h13sf5401455qti.21
        for <lists+clang-built-linux@lfdr.de>; Sat, 06 Mar 2021 20:43:00 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615092179; cv=pass;
        d=google.com; s=arc-20160816;
        b=s54O5Gyn35qws7GPFNK75EZSa8qk+DJW7f5IEsQ9CJv7daND0KMK6SVj4a28FhHorT
         40HjDyObyslLYV95RCimlcp++04ZQ8msevw8bTGvMiEp2XaGX1kiYmb6lcD9gNs8o/zM
         v7uRDH43TRZubgbUwuaL9is00wG9u7dhOkEsgRjF7ei3r3wD2Y/C2T5JI8GVpSAFE52B
         5glVjRzOKUnPbtPOhWv2OCrrUShq8+0+mN+z1nX9cskPhkqIU0lqTEaOGwhYUAWm4WsM
         RPAaPDhifJJBW6p2wZsgXSLSUFHfs4Azl/KXIGRehJ0auOqy100XcbA0ZJsq+2o8T1CR
         tjJA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=0wsImqR0JYLAbhpHMe4l+84O4O51OUx89bjI1pjs1eQ=;
        b=hRz8KeHIYO5yEvT5oDBx8xs8e4Pr5qlglDHqENdXjpoKcLdsQQRoeg5o1DKn5rpSXp
         X9lXivrk0715ILRb/gHwytIkLjJbTbzr9zPTTkQCw+Cnsvr/GUsS9HPvhcbaCEe6dom5
         ZUvVDF4xg8l6JtT5fhoDcvfPpXg3TlIGmzJO1oL51J/bqcAINj2oBlkCHJ7/Th+MdKxI
         9/s7vvJufMVWxJLapf48r4Rx5SZ6zYEhJbABOty4cruzdJUUb6gC8kyMbvapbRoeM/Ip
         qswxRYG36Uo5rZ4xSnY/xZclRmccxAk/BXKEGb16XdiO86bdW2pkUIF9SET2cXgA/5j0
         wQCA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=UVTBeq5K;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0wsImqR0JYLAbhpHMe4l+84O4O51OUx89bjI1pjs1eQ=;
        b=ENIHTMOAx0ZHE5BhEBPuuPi8ygysm2NLQmc8k1i3Z6OMBUFIPjq/y3N7J1xirQrWL0
         55MIJYqa6HcphI0RoX5FBrUWaihGR3OcQ25GeZ4eR3oI4h8KL6PtHGtKVcMlItpfjsKr
         i+EyWJflRvav8eQYI+HKIirkEpBPo4bd6O3MuFa9NtkjuhOCu8b0OWTZvrK4CocAOYcE
         UNsIW6XgqQRiwE0yqpYQu8ooVfy/5OL6EgKqMWZMaAzLutPDCfKL+2o9+F8cT7equYVr
         4Hlns2fwS/MBmyAVsVOuWfLYJfNu3QzW7xceRw3g5fkzr40TmmAgmxoliL68q3jUdsf2
         Qk8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=0wsImqR0JYLAbhpHMe4l+84O4O51OUx89bjI1pjs1eQ=;
        b=oHH1ZI0YbcoryrpzDINv1jdwOPEMw53B2gRdPNtD+wOis7gjrKOtQsXwpfl5UkfpqP
         Ua/UZmo97z+maYcgmQ8HiB3R1zkRFxE5hEv53m0yU83F7WIajBUjgD+h6qUuQb1nYU9P
         /gDbJtUMi9qVaOGQifVf7wduMXsBmUC9o7ZxK5XvkPo734uaNndILRqLZuXfK8dtShw2
         qqyVEQtsmjvtp5kpVRSZ52gClaxEM3/U9mh4Hnaxt6GnLrvEZxaO25UZYjGw5X3LlZa/
         c9914I2OiibNQFhpiznnkRm20I7QuClt/oFPWVg7+dYyDOZ/1cCF6tE+QeCerZLJzCT9
         KihA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531OjwcYEBwSIvhBuk1NjRu9o+dWK/lcLd7EmM4wa6gcIXbFx9lZ
	gbihLjXficUP0RKi6KTgyxg=
X-Google-Smtp-Source: ABdhPJxH8TfpWXxKu0OuNoHHV20Z4ftVE3RMKzaZD6LGmhu+HCahI2X77a5/MHaRdVyMhnIl79q3UQ==
X-Received: by 2002:ac8:b4b:: with SMTP id m11mr16114616qti.254.1615092179085;
        Sat, 06 Mar 2021 20:42:59 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:622a:4cc:: with SMTP id q12ls5382719qtx.0.gmail; Sat, 06
 Mar 2021 20:42:58 -0800 (PST)
X-Received: by 2002:ac8:76c5:: with SMTP id q5mr15704021qtr.197.1615092178650;
        Sat, 06 Mar 2021 20:42:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615092178; cv=none;
        d=google.com; s=arc-20160816;
        b=yYw2F6YtJ2JHO+pYi/kQcUO2pFnsnaXNZ7K/eXOmch4GvSNJiIIErgxqsFu4uT2BHr
         uot2v/MHR3wdKW+8fSQywaR5pKZXt89T0NGvqZnxsHUnKkd28v7uzXqS0BQ1QYdRxf63
         US8zJjbr0eM19gY+UzgoIUz1GfcxCBTRX/va6Dqqp3mRnkT4aIW4ZJtgPRWxKhxAyOfB
         v061sM5dopb2UZcXe7TRM5xszHWZXSyoYVezeN/Volo485fJknrLzHilWP4BdTYO8Zx6
         WA9Mr+Epo15s4S0STCN8Z/Uug32HJFz2aHrk+p7by9i7blD4BTy+CNPmWm+7uqO/gpvM
         A1Yw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=mhWOTx2WBT79Qt3FDEbbp2WpMxXzbPDj+TwM+ZsZu1I=;
        b=lrfIOcnt+4amN/8HkPAZTPyzv1vL7EbDuuBjLOi+HWBj6Mx3LcA+MU5tAYkmEdjWYl
         yR2yMF8TqSY8zxqjI/x9IYTFldfZpEgDmm1ck+Gzy24cUhro7xHl5zoYJechiUvt8iQr
         QOVP+ZWiPOz4siryDarQ4krhvZ1Toh6gbUNkYMVUWSZlWk2vR8xTWsLgKMwKyapOUgDK
         Y5t7P0CEM3gdPtZnhWdtRu5VDCkpvyCadbDAMAz80HgO9rZpFqJDUt4p9F6fKA6b9JP/
         nmxwBzfQISy3jNb3x1+2aCJntU77LvXfQwpUAsL02m3NVNlkaYyEF1DyMrs3HS86eohP
         3EFg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=UVTBeq5K;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id i17si287608qko.4.2021.03.06.20.42.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 06 Mar 2021 20:42:58 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 42A8D64FC5;
	Sun,  7 Mar 2021 04:42:56 +0000 (UTC)
Date: Sat, 6 Mar 2021 21:42:53 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	LKML <linux-kernel@vger.kernel.org>, Jian Cai <jiancai@google.com>
Subject: Re: [PATCH 3/4] kbuild: check the minimum assembler version in
 Kconfig
Message-ID: <20210307044253.v3h47ucq6ng25iay@archlinux-ax161>
References: <20210303183333.46543-1-masahiroy@kernel.org>
 <20210303183333.46543-3-masahiroy@kernel.org>
 <CAKwvOdmdQvwDN6Bg2Kom1Nm+HrNfCqOqnDLYTYs+5sRSEuZsJg@mail.gmail.com>
 <CAK7LNAQ7E52H+f+Ref6JYqMnG1v78Wo2p+W__=52dw7EP=b0Ww@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAK7LNAQ7E52H+f+Ref6JYqMnG1v78Wo2p+W__=52dw7EP=b0Ww@mail.gmail.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=UVTBeq5K;       spf=pass
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

On Sat, Mar 06, 2021 at 02:48:38AM +0900, Masahiro Yamada wrote:
> On Fri, Mar 5, 2021 at 10:26 AM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > On Wed, Mar 3, 2021 at 10:34 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
> > >
> > > Documentation/process/changes.rst defines the minimum assembler version
> > > (binutils version), but we have never checked it in the build time.
> > >
> > > Kbuild never invokes 'as' directly because all assembly files in the
> > > kernel tree are *.S, hence must be preprocessed. I do not expect
> > > raw assembly source files (*.s) would be added to the kernel tree.
> > >
> > > Therefore, we always use $(CC) as the assembler driver, and commit
> > > aa824e0c962b ("kbuild: remove AS variable") removed 'AS'. However,
> > > we are still interested in the version of the assembler sitting behind.
> > >
> > > As usual, the --version option prints the version string.
> > >
> > >   $ as --version | head -n 1
> > >   GNU assembler (GNU Binutils for Ubuntu) 2.35.1
> > >
> > > But, we do not have $(AS). So, we can add the -Wa prefix so that
> > > $(CC) passes --version down to the backing assembler.
> > >
> > >   $ gcc -Wa,--version | head -n 1
> > >   gcc: fatal error: no input files
> > >   compilation terminated.
> > >
> > > OK, we need to input something to satisfy gcc.
> > >
> > >   $ gcc -Wa,--version -c -x assembler /dev/null -o /dev/null | head -n 1
> > >   GNU assembler (GNU Binutils for Ubuntu) 2.35.1
> > >
> > > The combination of Clang and GNU assembler works in the same way:
> > >
> > >   $ clang -no-integrated-as -Wa,--version -c -x assembler /dev/null -o /dev/null | head -n 1
> > >   GNU assembler (GNU Binutils for Ubuntu) 2.35.1
> > >
> > > Clang with the integrated assembler fails like this:
> > >
> > >   $ clang -integrated-as -Wa,--version -c -x assembler /dev/null -o /dev/null | head -n 1
> > >   clang: error: unsupported argument '--version' to option 'Wa,'
> >
> > Was this a feature request to "please implement -Wa,--version for clang?" :-P
> > https://github.com/ClangBuiltLinux/linux/issues/1320
> >
> > >
> > > With all this in my mind, I implemented scripts/as-version.sh.
> > >
> > >   $ scripts/as-version.sh gcc
> > >   GNU 23501
> > >   $ scripts/as-version.sh clang -no-integrated-as
> > >   GNU 23501
> > >   $ scripts/as-version.sh clang -integrated-as
> > >   LLVM 0
> > >
> > > Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> > > ---
> > >
> > >  arch/Kconfig            |  3 +-
> > >  init/Kconfig            | 12 +++++++
> > >  scripts/Kconfig.include |  6 ++++
> > >  scripts/as-version.sh   | 77 +++++++++++++++++++++++++++++++++++++++++
> > >  4 files changed, 96 insertions(+), 2 deletions(-)
> > >  create mode 100755 scripts/as-version.sh
> > >
> > > diff --git a/arch/Kconfig b/arch/Kconfig
> > > index 2af10ebe5ed0..d7214f4ae1f7 100644
> > > --- a/arch/Kconfig
> > > +++ b/arch/Kconfig
> > > @@ -631,8 +631,7 @@ config ARCH_SUPPORTS_LTO_CLANG_THIN
> > >  config HAS_LTO_CLANG
> > >         def_bool y
> > >         # Clang >= 11: https://github.com/ClangBuiltLinux/linux/issues/510
> > > -       depends on CC_IS_CLANG && CLANG_VERSION >= 110000 && LD_IS_LLD
> > > -       depends on $(success,test $(LLVM_IAS) -eq 1)
> > > +       depends on CC_IS_CLANG && CLANG_VERSION >= 110000 && LD_IS_LLD && AS_IS_LLVM
> > >         depends on $(success,$(NM) --help | head -n 1 | grep -qi llvm)
> > >         depends on $(success,$(AR) --help | head -n 1 | grep -qi llvm)
> > >         depends on ARCH_SUPPORTS_LTO_CLANG
> > > diff --git a/init/Kconfig b/init/Kconfig
> > > index 22946fe5ded9..f76e5a44e4fe 100644
> > > --- a/init/Kconfig
> > > +++ b/init/Kconfig
> > > @@ -41,6 +41,18 @@ config CLANG_VERSION
> > >         default $(cc-version) if CC_IS_CLANG
> > >         default 0
> > >
> > > +config AS_IS_GNU
> > > +       def_bool $(success,test "$(as-name)" = GNU)
> > > +
> > > +config AS_IS_LLVM
> > > +       def_bool $(success,test "$(as-name)" = LLVM)
> > > +
> > > +config AS_VERSION
> > > +       int
> > > +       # If it is integrated assembler, the version is the same as Clang's one.
> > > +       default CLANG_VERSION if AS_IS_LLVM
> > > +       default $(as-version)
> > > +
> > >  config LD_IS_BFD
> > >         def_bool $(success,test "$(ld-name)" = BFD)
> > >
> > > diff --git a/scripts/Kconfig.include b/scripts/Kconfig.include
> > > index 58fdb5308725..0496efd6e117 100644
> > > --- a/scripts/Kconfig.include
> > > +++ b/scripts/Kconfig.include
> > > @@ -45,6 +45,12 @@ $(error-if,$(success,test -z "$(cc-info)"),Sorry$(comma) this compiler is not su
> > >  cc-name := $(shell,set -- $(cc-info) && echo $1)
> > >  cc-version := $(shell,set -- $(cc-info) && echo $2)
> > >
> > > +# Get the assembler name, version, and error out if it is not supported.
> > > +as-info := $(shell,$(srctree)/scripts/as-version.sh $(CC) $(CLANG_FLAGS))
> > > +$(error-if,$(success,test -z "$(as-info)"),Sorry$(comma) this assembler is not supported.)
> > > +as-name := $(shell,set -- $(as-info) && echo $1)
> > > +as-version := $(shell,set -- $(as-info) && echo $2)
> > > +
> > >  # Get the linker name, version, and error out if it is not supported.
> > >  ld-info := $(shell,$(srctree)/scripts/ld-version.sh $(LD))
> > >  $(error-if,$(success,test -z "$(ld-info)"),Sorry$(comma) this linker is not supported.)
> > > diff --git a/scripts/as-version.sh b/scripts/as-version.sh
> > > new file mode 100755
> > > index 000000000000..205d8b9fc4d4
> > > --- /dev/null
> > > +++ b/scripts/as-version.sh
> > > @@ -0,0 +1,77 @@
> > > +#!/bin/sh
> > > +# SPDX-License-Identifier: GPL-2.0-only
> > > +#
> > > +# Print the assembler name and its version in a 5 or 6-digit form.
> > > +# Also, perform the minimum version check.
> > > +# (If it is the integrated assembler, return 0 as the version, and
> > > +# the version check is skipped.)
> > > +
> > > +set -e
> > > +
> > > +# Convert the version string x.y.z to a canonical 5 or 6-digit form.
> > > +get_canonical_version()
> > > +{
> > > +       IFS=.
> > > +       set -- $1
> > > +
> > > +       # If the 2nd or 3rd field is missing, fill it with a zero.
> > > +       #
> > > +       # The 4th field, if present, is ignored.
> > > +       # This occurs in development snapshots as in 2.35.1.20201116
> > > +       echo $((10000 * $1 + 100 * ${2:-0} + ${3:-0}))
> > > +}
> > > +
> > > +orig_args="$@"
> > > +
> > > +# Get the first line of the --version output.
> > > +IFS='
> > > +'
> > > +# Add 2>&1 to check both stdout and stderr.
> > > +# If the backing assembler is binutils, we get the version string in stdout.
> > > +# If it is clang's integrated assembler, we get the following error in stderr:
> > > +#   clang: error: unsupported argument '--version' to option 'Wa,'
> > > +# To avoid the error message affected by locale, set LC_MESSAGES=C just in case.
> > > +set -- $(LC_MESSAGES=C "$@" -Wno-unused-command-line-argument -Wa,--version -c -x assembler /dev/null -o /dev/null 2>&1)
> > > +line="$1"
> > > +
> > > +if [ "$line" = "clang: error: unsupported argument '--version' to option 'Wa,'" ]; then
> >
> > Checking the precise error message is too brittle; what if it changes?
> > Why not check the return code a la cc-option and friends?  Is checking
> > the return code of a subshell an issue here?
> 
> As Nathan pointed out, this is fragile.
> 
> I just tried my best to make this script work stand-alone.
> 
> With the only exit code chec,
> 
>  scripts/as-version.sh false
> 
> would return LLVM, which is false-positive.
> Probably this is not a big deal
> since completely wrong input was blocked by
> scripts/cc-version.sh
> 
> 
> If we give up making this script stand-alone,
> another idea is to check LLVM_IAS=1, which
> is passed from the top Makefile.
> 
> Yet another idea is to explicitly pass
> -integrated-as as CLANG_FLAGS.
> Then, this script can parse the presence
> of -integrated-as.

This is probably the easiest thing to do for all versions of LLVM
(adding -Wa,--version support to the integrated assembler as Nick
suggests only fixes future versions of LLVM) and goes along with the
"explicit is better than implicit" policy, which I tend to align with.
It makes easy to quickly see what assembler was used when looking at a
clang invocation as well.

> BTW, is there any guarantee that the integrated assembler
> is always enabled by default? Or, is it dependent on
> the configuration?

There is a virtual method called IsIntegratedAssemblerDefault(), which
defaults to false but is overridden to true by various targets. For all
of the architectures/targets that the kernel cares about, this appears
to be true.

https://github.com/llvm/llvm-project/blob/45f949ee469f3e59d30a88c97aa7c1139069b261/clang/lib/Driver/ToolChains/Gnu.cpp#L2738-L2774

Cheers,
Nathan

> The top Makefile adds -no-integrated-as if LLVM_IAS != 1,
> but adds nothing if LLVM_IAS == 1.
> So, -integrated-as must be always default.
> 
> 
> 
> 
> 
> 
> 
> >
> > > +       # For the intergrated assembler, we do not check the version here.
> >
> > s/intergrated/integrated/
> >
> > > +       # It is the same as the clang version, and it has been already checked
> > > +       # by scripts/cc-version.sh.
> > > +       echo LLVM 0
> > > +       exit 0
> > > +fi
> > > +
> > > +# Split the line on spaces.
> > > +IFS=' '
> > > +set -- $line
> > > +
> > > +tool_version=$(dirname $0)/tool-version.sh
> > > +
> > > +if [ "$1" = GNU -a "$2" = assembler ]; then
> > > +       shift $(($# - 1))
> > > +       version=$1
> > > +       min_version=$($tool_version binutils)
> > > +       name=GNU
> > > +else
> > > +       echo "$orig_args: unknown assembler invoked" >&2
> > > +       exit 1
> > > +fi
> > > +
> > > +# Some distributions append a package release number, as in 2.34-4.fc32
> > > +# Trim the hyphen and any characters that follow.
> > > +version=${version%-*}
> > > +
> > > +cversion=$(get_canonical_version $version)
> > > +min_cversion=$(get_canonical_version $min_version)
> > > +
> > > +if [ "$cversion" -lt "$min_cversion" ]; then
> > > +       echo >&2 "***"
> > > +       echo >&2 "*** Assembler is too old."
> > > +       echo >&2 "***   Your $name assembler version:    $version"
> > > +       echo >&2 "***   Minimum $name assembler version: $min_version"
> > > +       echo >&2 "***"
> > > +       exit 1
> > > +fi
> > > +
> > > +echo $name $cversion
> > > --
> > > 2.27.0
> > >
> >
> >
> > --
> > Thanks,
> > ~Nick Desaulniers
> 
> 
> 
> -- 
> Best Regards
> Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210307044253.v3h47ucq6ng25iay%40archlinux-ax161.
