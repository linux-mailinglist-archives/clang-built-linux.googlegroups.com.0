Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBO66RGBAMGQE4INGKRQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x337.google.com (mail-ot1-x337.google.com [IPv6:2607:f8b0:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E92032F1B2
	for <lists+clang-built-linux@lfdr.de>; Fri,  5 Mar 2021 18:49:49 +0100 (CET)
Received: by mail-ot1-x337.google.com with SMTP id m22sf1629805otn.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 05 Mar 2021 09:49:48 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614966588; cv=pass;
        d=google.com; s=arc-20160816;
        b=J7Ba0ormQ+bLdDw3ECUPg9DblRjzxvCDBh2MxZUWSv7NVQhKZr775E1A5IBNPrQjhH
         DTjnSFzJRjZJVVY7GCsBoXLtfHCsHHnUGV5jh0frE2pe0Jl/CHLy9ZANWuzOHPOrJ3pJ
         bhEVAaKthck8xB0m+k8LQ4ReiEA3fu3E2gcq3u5tnmI/AUj2blxoTK/rH1DNSdJ70yDF
         4LaRE5aHScBJAI0oXM9oJ2Idy6EDhteUz3+ooCMDRQiQ+d0Sh9VSMkh5aZeEYpg1vcGU
         7hQcFL1VkKACWWXJv9RgKmA71BBM8R9U042QuMya8Kc+ngn6TZI0v7oXbI8bcxqS7/Qe
         yuZg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=eHNGiI3s1Ht+9oo+/GtVIbzgZLDWmgYV5LNlfoW1V6I=;
        b=aOPluLHnYGFlZYj56wi/WDvAvG8SxiK6Snvxdv5cbeELWbGO9eL4CkTJYE0sKQiIDk
         lf59jp3vxJTBYx5E5ddI9XZh9zMtUguJmpehb/+GZziO0Cdh4yKjDzUoeeycOBJfK6jO
         2Aof9B8MECNqpvqr4ut1WpTwv4z8w8vFcEunV56acT7z9uboH7DkMjiwjs2ROyv1D9Ux
         MFvN+JvBPyIfcuzMTys2a/FbH8BtzTWkrgpWzvc0qb6iLZvxx+RpIyVvZzYrfkclfbEq
         mVd1k8bjXFJ6+wFtuHqIakYUlpm1cFubawZX9xxMlfsZ1fgYAG0xMuFqoSTE+ISvKK51
         IwUA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=1YVS7QEY;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=eHNGiI3s1Ht+9oo+/GtVIbzgZLDWmgYV5LNlfoW1V6I=;
        b=SH7FXY6iu2l/WySLSpyHme94QemxCOiWccFMQ1uSakK/7FWg1WzSGEat1dEioqqibJ
         F4zCs+PoI4g9Px+GPQEI6O8lDqPV7PQUKLog+6rgTDbTfWd5Z8VF0T09lfj2hh5/Bnbc
         +gUIbRDwiULKvR62Fc6V+nn0p2ZirFy5e8a8JQHWDqvnN5jsgTCFoKLS8yEntUqmAWES
         wZ+9cXmD3cImvZ7FSZzGemnYOfi4GdHri0qb4Oi15gVn/m4tc0D7COtErnRcm0yX3TCP
         I6oRrvptjtun+GsZL/GoaxZRck8Arnfw/Mj/4ShPE+mnmHXnJGozWrlI8SeQjgao4OqV
         rb8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eHNGiI3s1Ht+9oo+/GtVIbzgZLDWmgYV5LNlfoW1V6I=;
        b=k18u85DMXvhKlATpw86+aAnT5foUz/aTrdVmnecWs5tbAGVcREluIObF14AmCgUQ1N
         aePqgSI89sOwVlZEg9Kl8M21KWzgMz/b7XqhntupckgsYWewwxToWsh8Qed2IDvqzUO2
         PqAtOv7pLXYE8F/ww/laJBbE48GVmQZ5obLy6Nh0ghSNr79B3DHgEt6n1R233O44+Vmm
         LFSVB7cmplwkhaH7DHFhmJFtm5bVNCHRFWx8PjU2bKpagVQG/QiAOWWp2SZ/ckO4dHKm
         H2rJe8IFrz9zD3bD6cWO8uZ6LZyK7krQOEKML7xqr0/EDj5+l0vzDnxP+s1YS5bMmRlR
         6QYQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530dKz5lcn5yzwgfOJyk4OKK5sEztIqLPPmdgm8ikZvBhDs+z3Y1
	ge/8iXxcenwoVk+KKtHxseU=
X-Google-Smtp-Source: ABdhPJyRj9emx5jlA+QpcP1YiYrofhOCHnjGUFQijJJ6ypOEBSWDQIoBr3fIs+OkKWehGVZyUm+8dQ==
X-Received: by 2002:a9d:6381:: with SMTP id w1mr8959267otk.236.1614966587597;
        Fri, 05 Mar 2021 09:49:47 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:827:: with SMTP id t7ls2785237ots.8.gmail; Fri, 05
 Mar 2021 09:49:47 -0800 (PST)
X-Received: by 2002:a05:6830:18d9:: with SMTP id v25mr9256791ote.231.1614966587198;
        Fri, 05 Mar 2021 09:49:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614966587; cv=none;
        d=google.com; s=arc-20160816;
        b=Mi0VanqjSDwEtgfQ0ktvdJ0BzKJVEHSnC2x6qDaLJI8Iw7ZB/zP7YPDhqEsnVLm+RK
         HCkIfGJ8HXr3mj1WJoMdWVOXpoDFZBv7/KnWYD+n8e+6nOPiulmwegDmlCBbon1rWo2t
         7KjRMRWAPAK/B9cHmlzVdxKdylhu3B/hElk7fL/hVRwN3U8gSh4GAQnyFPyxmqnt+JLx
         ocIDkIZbKYzLhwXZYZvNQLiKlqj1goqZR9AhG5Ez42k39hPb99wM01hTtLt0UNL47w54
         E7AhZhNANinEJCcWt0aoVkLtihT8as/ABKhfCfxEAUw17IJ1t5KPev406E10jT8hT3eb
         74lQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=DI8u8e1TEbrLh1CZv1Kyzr9RTXeXBW1AzUz2gmbqhyo=;
        b=uzgHlaYmHPeBcwErZ2S3xFqmo0PTKckkcIkreWS9NvOlKv/86BT/UKGzgSJU5XI5cn
         6QvW8fhJZSL3RbKtDE9rdB7XDgGD32y1TBX0PWINF624yb8HBgdvB0dsEbouPNs5r3jp
         flLILDX/CDdr3ifazsVH1/2I5xtQkt1JOkRvFPN1j1TWwTcnKqzuGbgtNTxiyXyz0w+w
         rVCxRw3ifazCYcY9Yjzc+BKO/RpkzuLnzQmn+pGkw4CB+3Mo8BEV2eoya4Qk5XqzHYLX
         chHMXiv2RQh0eOCgeUETofauFXyIvnSeHmUzAyg8bgT1gHgF+iT4NAW3BsxYd4PrVjid
         viTQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=1YVS7QEY;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-01.nifty.com (conssluserg-01.nifty.com. [210.131.2.80])
        by gmr-mx.google.com with ESMTPS id s7si194679ois.0.2021.03.05.09.49.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 05 Mar 2021 09:49:47 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) client-ip=210.131.2.80;
Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com [209.85.210.180]) (authenticated)
	by conssluserg-01.nifty.com with ESMTP id 125HnFwr031760
	for <clang-built-linux@googlegroups.com>; Sat, 6 Mar 2021 02:49:16 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-01.nifty.com 125HnFwr031760
X-Nifty-SrcIP: [209.85.210.180]
Received: by mail-pf1-f180.google.com with SMTP id 18so2643207pfo.6
        for <clang-built-linux@googlegroups.com>; Fri, 05 Mar 2021 09:49:15 -0800 (PST)
X-Received: by 2002:a65:41c6:: with SMTP id b6mr9512661pgq.7.1614966555142;
 Fri, 05 Mar 2021 09:49:15 -0800 (PST)
MIME-Version: 1.0
References: <20210303183333.46543-1-masahiroy@kernel.org> <20210303183333.46543-3-masahiroy@kernel.org>
 <CAKwvOdmdQvwDN6Bg2Kom1Nm+HrNfCqOqnDLYTYs+5sRSEuZsJg@mail.gmail.com>
In-Reply-To: <CAKwvOdmdQvwDN6Bg2Kom1Nm+HrNfCqOqnDLYTYs+5sRSEuZsJg@mail.gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Sat, 6 Mar 2021 02:48:38 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQ7E52H+f+Ref6JYqMnG1v78Wo2p+W__=52dw7EP=b0Ww@mail.gmail.com>
Message-ID: <CAK7LNAQ7E52H+f+Ref6JYqMnG1v78Wo2p+W__=52dw7EP=b0Ww@mail.gmail.com>
Subject: Re: [PATCH 3/4] kbuild: check the minimum assembler version in Kconfig
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Nathan Chancellor <nathan@kernel.org>,
        LKML <linux-kernel@vger.kernel.org>, Jian Cai <jiancai@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=1YVS7QEY;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Fri, Mar 5, 2021 at 10:26 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Wed, Mar 3, 2021 at 10:34 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
> >
> > Documentation/process/changes.rst defines the minimum assembler version
> > (binutils version), but we have never checked it in the build time.
> >
> > Kbuild never invokes 'as' directly because all assembly files in the
> > kernel tree are *.S, hence must be preprocessed. I do not expect
> > raw assembly source files (*.s) would be added to the kernel tree.
> >
> > Therefore, we always use $(CC) as the assembler driver, and commit
> > aa824e0c962b ("kbuild: remove AS variable") removed 'AS'. However,
> > we are still interested in the version of the assembler sitting behind.
> >
> > As usual, the --version option prints the version string.
> >
> >   $ as --version | head -n 1
> >   GNU assembler (GNU Binutils for Ubuntu) 2.35.1
> >
> > But, we do not have $(AS). So, we can add the -Wa prefix so that
> > $(CC) passes --version down to the backing assembler.
> >
> >   $ gcc -Wa,--version | head -n 1
> >   gcc: fatal error: no input files
> >   compilation terminated.
> >
> > OK, we need to input something to satisfy gcc.
> >
> >   $ gcc -Wa,--version -c -x assembler /dev/null -o /dev/null | head -n 1
> >   GNU assembler (GNU Binutils for Ubuntu) 2.35.1
> >
> > The combination of Clang and GNU assembler works in the same way:
> >
> >   $ clang -no-integrated-as -Wa,--version -c -x assembler /dev/null -o /dev/null | head -n 1
> >   GNU assembler (GNU Binutils for Ubuntu) 2.35.1
> >
> > Clang with the integrated assembler fails like this:
> >
> >   $ clang -integrated-as -Wa,--version -c -x assembler /dev/null -o /dev/null | head -n 1
> >   clang: error: unsupported argument '--version' to option 'Wa,'
>
> Was this a feature request to "please implement -Wa,--version for clang?" :-P
> https://github.com/ClangBuiltLinux/linux/issues/1320
>
> >
> > With all this in my mind, I implemented scripts/as-version.sh.
> >
> >   $ scripts/as-version.sh gcc
> >   GNU 23501
> >   $ scripts/as-version.sh clang -no-integrated-as
> >   GNU 23501
> >   $ scripts/as-version.sh clang -integrated-as
> >   LLVM 0
> >
> > Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> > ---
> >
> >  arch/Kconfig            |  3 +-
> >  init/Kconfig            | 12 +++++++
> >  scripts/Kconfig.include |  6 ++++
> >  scripts/as-version.sh   | 77 +++++++++++++++++++++++++++++++++++++++++
> >  4 files changed, 96 insertions(+), 2 deletions(-)
> >  create mode 100755 scripts/as-version.sh
> >
> > diff --git a/arch/Kconfig b/arch/Kconfig
> > index 2af10ebe5ed0..d7214f4ae1f7 100644
> > --- a/arch/Kconfig
> > +++ b/arch/Kconfig
> > @@ -631,8 +631,7 @@ config ARCH_SUPPORTS_LTO_CLANG_THIN
> >  config HAS_LTO_CLANG
> >         def_bool y
> >         # Clang >= 11: https://github.com/ClangBuiltLinux/linux/issues/510
> > -       depends on CC_IS_CLANG && CLANG_VERSION >= 110000 && LD_IS_LLD
> > -       depends on $(success,test $(LLVM_IAS) -eq 1)
> > +       depends on CC_IS_CLANG && CLANG_VERSION >= 110000 && LD_IS_LLD && AS_IS_LLVM
> >         depends on $(success,$(NM) --help | head -n 1 | grep -qi llvm)
> >         depends on $(success,$(AR) --help | head -n 1 | grep -qi llvm)
> >         depends on ARCH_SUPPORTS_LTO_CLANG
> > diff --git a/init/Kconfig b/init/Kconfig
> > index 22946fe5ded9..f76e5a44e4fe 100644
> > --- a/init/Kconfig
> > +++ b/init/Kconfig
> > @@ -41,6 +41,18 @@ config CLANG_VERSION
> >         default $(cc-version) if CC_IS_CLANG
> >         default 0
> >
> > +config AS_IS_GNU
> > +       def_bool $(success,test "$(as-name)" = GNU)
> > +
> > +config AS_IS_LLVM
> > +       def_bool $(success,test "$(as-name)" = LLVM)
> > +
> > +config AS_VERSION
> > +       int
> > +       # If it is integrated assembler, the version is the same as Clang's one.
> > +       default CLANG_VERSION if AS_IS_LLVM
> > +       default $(as-version)
> > +
> >  config LD_IS_BFD
> >         def_bool $(success,test "$(ld-name)" = BFD)
> >
> > diff --git a/scripts/Kconfig.include b/scripts/Kconfig.include
> > index 58fdb5308725..0496efd6e117 100644
> > --- a/scripts/Kconfig.include
> > +++ b/scripts/Kconfig.include
> > @@ -45,6 +45,12 @@ $(error-if,$(success,test -z "$(cc-info)"),Sorry$(comma) this compiler is not su
> >  cc-name := $(shell,set -- $(cc-info) && echo $1)
> >  cc-version := $(shell,set -- $(cc-info) && echo $2)
> >
> > +# Get the assembler name, version, and error out if it is not supported.
> > +as-info := $(shell,$(srctree)/scripts/as-version.sh $(CC) $(CLANG_FLAGS))
> > +$(error-if,$(success,test -z "$(as-info)"),Sorry$(comma) this assembler is not supported.)
> > +as-name := $(shell,set -- $(as-info) && echo $1)
> > +as-version := $(shell,set -- $(as-info) && echo $2)
> > +
> >  # Get the linker name, version, and error out if it is not supported.
> >  ld-info := $(shell,$(srctree)/scripts/ld-version.sh $(LD))
> >  $(error-if,$(success,test -z "$(ld-info)"),Sorry$(comma) this linker is not supported.)
> > diff --git a/scripts/as-version.sh b/scripts/as-version.sh
> > new file mode 100755
> > index 000000000000..205d8b9fc4d4
> > --- /dev/null
> > +++ b/scripts/as-version.sh
> > @@ -0,0 +1,77 @@
> > +#!/bin/sh
> > +# SPDX-License-Identifier: GPL-2.0-only
> > +#
> > +# Print the assembler name and its version in a 5 or 6-digit form.
> > +# Also, perform the minimum version check.
> > +# (If it is the integrated assembler, return 0 as the version, and
> > +# the version check is skipped.)
> > +
> > +set -e
> > +
> > +# Convert the version string x.y.z to a canonical 5 or 6-digit form.
> > +get_canonical_version()
> > +{
> > +       IFS=.
> > +       set -- $1
> > +
> > +       # If the 2nd or 3rd field is missing, fill it with a zero.
> > +       #
> > +       # The 4th field, if present, is ignored.
> > +       # This occurs in development snapshots as in 2.35.1.20201116
> > +       echo $((10000 * $1 + 100 * ${2:-0} + ${3:-0}))
> > +}
> > +
> > +orig_args="$@"
> > +
> > +# Get the first line of the --version output.
> > +IFS='
> > +'
> > +# Add 2>&1 to check both stdout and stderr.
> > +# If the backing assembler is binutils, we get the version string in stdout.
> > +# If it is clang's integrated assembler, we get the following error in stderr:
> > +#   clang: error: unsupported argument '--version' to option 'Wa,'
> > +# To avoid the error message affected by locale, set LC_MESSAGES=C just in case.
> > +set -- $(LC_MESSAGES=C "$@" -Wno-unused-command-line-argument -Wa,--version -c -x assembler /dev/null -o /dev/null 2>&1)
> > +line="$1"
> > +
> > +if [ "$line" = "clang: error: unsupported argument '--version' to option 'Wa,'" ]; then
>
> Checking the precise error message is too brittle; what if it changes?
> Why not check the return code a la cc-option and friends?  Is checking
> the return code of a subshell an issue here?

As Nathan pointed out, this is fragile.

I just tried my best to make this script work stand-alone.

With the only exit code chec,

 scripts/as-version.sh false

would return LLVM, which is false-positive.
Probably this is not a big deal
since completely wrong input was blocked by
scripts/cc-version.sh


If we give up making this script stand-alone,
another idea is to check LLVM_IAS=1, which
is passed from the top Makefile.

Yet another idea is to explicitly pass
-integrated-as as CLANG_FLAGS.
Then, this script can parse the presence
of -integrated-as.


BTW, is there any guarantee that the integrated assembler
is always enabled by default? Or, is it dependent on
the configuration?

The top Makefile adds -no-integrated-as if LLVM_IAS != 1,
but adds nothing if LLVM_IAS == 1.
So, -integrated-as must be always default.







>
> > +       # For the intergrated assembler, we do not check the version here.
>
> s/intergrated/integrated/
>
> > +       # It is the same as the clang version, and it has been already checked
> > +       # by scripts/cc-version.sh.
> > +       echo LLVM 0
> > +       exit 0
> > +fi
> > +
> > +# Split the line on spaces.
> > +IFS=' '
> > +set -- $line
> > +
> > +tool_version=$(dirname $0)/tool-version.sh
> > +
> > +if [ "$1" = GNU -a "$2" = assembler ]; then
> > +       shift $(($# - 1))
> > +       version=$1
> > +       min_version=$($tool_version binutils)
> > +       name=GNU
> > +else
> > +       echo "$orig_args: unknown assembler invoked" >&2
> > +       exit 1
> > +fi
> > +
> > +# Some distributions append a package release number, as in 2.34-4.fc32
> > +# Trim the hyphen and any characters that follow.
> > +version=${version%-*}
> > +
> > +cversion=$(get_canonical_version $version)
> > +min_cversion=$(get_canonical_version $min_version)
> > +
> > +if [ "$cversion" -lt "$min_cversion" ]; then
> > +       echo >&2 "***"
> > +       echo >&2 "*** Assembler is too old."
> > +       echo >&2 "***   Your $name assembler version:    $version"
> > +       echo >&2 "***   Minimum $name assembler version: $min_version"
> > +       echo >&2 "***"
> > +       exit 1
> > +fi
> > +
> > +echo $name $cversion
> > --
> > 2.27.0
> >
>
>
> --
> Thanks,
> ~Nick Desaulniers



-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAQ7E52H%2Bf%2BRef6JYqMnG1v78Wo2p%2BW__%3D52dw7EP%3Db0Ww%40mail.gmail.com.
