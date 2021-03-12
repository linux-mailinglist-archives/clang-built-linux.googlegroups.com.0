Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBSOGV2BAMGQE7UM64IQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x339.google.com (mail-ot1-x339.google.com [IPv6:2607:f8b0:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id 02E76339495
	for <lists+clang-built-linux@lfdr.de>; Fri, 12 Mar 2021 18:22:19 +0100 (CET)
Received: by mail-ot1-x339.google.com with SMTP id 88sf5327892otd.17
        for <lists+clang-built-linux@lfdr.de>; Fri, 12 Mar 2021 09:22:18 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615569738; cv=pass;
        d=google.com; s=arc-20160816;
        b=L82fzS3Cp+wG7iF+KuB+AF5eqFK1VUMeM7Eru0F+cRsdwtlbgQ8XQ1fRPzZOhwKwf1
         eAcipH47nrh+Ojwq4TOrCeopRxR05lQgjzDCBRXjGujFA8jJ7Jk8Q/caju9bPhKmkyi6
         HqUZckpks22IQTaiqei7Pqp5R+nv+tKIFU89AManjA0Bmv/loBmj6wJuq3VbuzeJSznh
         zfBFWLTQJJMc9WTHVTP08mqgiRPrd7dodpg6WgFy5BrGGD0Q7Q1wBRbrbqV4oBOOgv1p
         RDQCaZHC1OqNNQmFsgEcKAY2kLMqnyDNf9tfBoaPSWzIA9CZUxYY+XjQg6Cdjta0Gqjm
         9LxA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=Qa5iJnk0qXPSGNqFuxgwNADTmr9h0ZkJgLbPwOkDSSg=;
        b=PfO51t23eM8GUV9dthXZw/JYyKlsfYr/hqyOEupvZGRCAT1wG1awKVzBKKN64unBO0
         /MPGFcJUGwqgJXe22eZ2Gns7OnBp1kjoiknwrhFzZEUqOKjuU/lX9fxbZ+zb7mOZnyZj
         PLFVHmYuJh/1TBfQNmTsWXh0wdz3MuPbjoBOerEnhGk7BwkV/2V06BdfFf+ZOkhn/ZKF
         9ifP7WXkGIlxJVtH36cDUY3luvgUjXFTKNayzfPx6RFKkfG3t1pQxwXyRKqQc5DhTmjd
         0HgVH3nDrWucLj4kOlsUnG4jXrc9z2XPJ1AIvvneeRAsX3DKfCSCGxvu1XAyVTBjoo0f
         Bxtw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=ir3LtooC;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Qa5iJnk0qXPSGNqFuxgwNADTmr9h0ZkJgLbPwOkDSSg=;
        b=RgGvn/W9yS6rt5ll1C9PJmHMO6NFmGi13dONsVb4tC2fkzG0AtaMypTdRWcHhmqkfa
         oAdzNq98dyNzaadfzeF/jaVXfnxzpedC/og4UiCtF09NrOZ1nkAKaRl7f5dbTGijCqjL
         c5FpOA51GZjP4yKUigK5p2DFmNLpCU7yFsZIpvajZSzRnTz3FXQdX8dStNMLsiYCtW6C
         96wexg11Jah2HUL4JX7iEUfW8L22TAOCHJ+H7LE5dGNTXnxEMcNdeLtdTrXJiG6UjAPS
         HEmqGZcziWI6fxqktXUvBHOp4XZElMrqSH0ftSw3Gl1ZQNBgcny744qpRXuE9bufcHPC
         v9xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Qa5iJnk0qXPSGNqFuxgwNADTmr9h0ZkJgLbPwOkDSSg=;
        b=Dv0ys+HR0RAtJpBbd9804DdJxg1QKsmw9bebPDowiMZafvf9r6WcuQlRZl3QHlKSgh
         ntHm7S+yPfPSq6lYrpMgFeuMiDDLv/+4oVom7pjssHTWg3mXNYWkgDxNPyu0BFhR3qCE
         9ZElx0/H5i2/Eh1ruTNfQ7R1SxfOIXRSgMx/d5+lZsVF3puuXupOiMshvwkofeDI9e68
         pfeagVgtdHVUhVy4jCNgnqFnLa91KuZ7smu+9MDohhYaVEoG2zqJje8bd/b1Eppqz9Tj
         p/5O1ThzDREJ1RnXHNIhWsgU+FCmJJFkjuiRAa/0Uyq51epq74gPEykHhy+2HK1a8yFi
         9jog==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531IvnTfllnu6bnv0n7NM6bzLo3Url5RvlN5bAcSNW2Hwyjoz65t
	LcY9yJ6BuQu36viDwDPE9mk=
X-Google-Smtp-Source: ABdhPJw8qpBC4AbKyyMtyKsbqsuWp/bIL6uWkBcn27t+cWcuDNelEW23w4119GXNbm3fOov2uFXeOA==
X-Received: by 2002:a05:6808:98a:: with SMTP id a10mr7976502oic.28.1615569738005;
        Fri, 12 Mar 2021 09:22:18 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:2256:: with SMTP id z22ls625889ooe.8.gmail; Fri, 12 Mar
 2021 09:22:17 -0800 (PST)
X-Received: by 2002:a4a:4cd6:: with SMTP id a205mr4030141oob.4.1615569737651;
        Fri, 12 Mar 2021 09:22:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615569737; cv=none;
        d=google.com; s=arc-20160816;
        b=BL75C69vXS1bO9YsSG1IIsQaEbTjZf0nNL95vVbWWQ1ZlPZvqGhbKgds+8rHfrLVEQ
         q947lnl13WcPqO8sWfvTvfWzMTxBHjnxMkE+axmBxOryJrzKzzkKTgu5cqBVMAIi2NYg
         Iurde7pt6ef6nTUIA9H9CIdY1Q3WKfcAZRjGg68QcYyF31gbcf1brM9TQIW7j6dG0Def
         f5OhJ9pqEXsR/v/mMBuW8fnUuTKlO2M+pMdltBRaettAXuiCo7OJW1xIhseQHR7WKUwk
         4XdJJvlCMWTIhaOfb6g9DkOYfYRKS9nA0phrmNl9JVMZArxqQjsx7wipOlhsjrWhcK0y
         Yr3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=llFwKeinnlXA5iQvaDCjMbod5YLYpTNOQlW9RZzbgQs=;
        b=G4EoznbEyOCSrE93DaE3Fo3RSZbwb/VN/GESLaHcyZcUzWWoHo8GhlKQA9haTiZUF8
         24SSRVGWf5+k0rTvKC4HM0+jyOeB7lziW4ijen1d87FiJvrXSk0AxeqtBTvmE4PMfWMq
         UHtXP8j7qIQIua4O2fW3MslIYjzFmotZwgY7PN3Ti8bgs4KguyeQorU0GHDz9TFDiS3b
         5Hx9xWWApTCZrLML4BGSM8RuvaVKQMVoc5DcTdOTCRF24Hs8x09BQr4t5C3WZj0JJTLA
         d+cEc66vlGW2vV3t54WnmkocFcgRGUznUt5XDMjpBqk+zuk6uzV2cII4yb5XPIJashW4
         vm4g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=ir3LtooC;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-04.nifty.com (conssluserg-04.nifty.com. [210.131.2.83])
        by gmr-mx.google.com with ESMTPS id l7si417242oih.0.2021.03.12.09.22.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Mar 2021 09:22:17 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) client-ip=210.131.2.83;
Received: from mail-pg1-f178.google.com (mail-pg1-f178.google.com [209.85.215.178]) (authenticated)
	by conssluserg-04.nifty.com with ESMTP id 12CHM2KM002501
	for <clang-built-linux@googlegroups.com>; Sat, 13 Mar 2021 02:22:02 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-04.nifty.com 12CHM2KM002501
X-Nifty-SrcIP: [209.85.215.178]
Received: by mail-pg1-f178.google.com with SMTP id n9so15335491pgi.7
        for <clang-built-linux@googlegroups.com>; Fri, 12 Mar 2021 09:22:02 -0800 (PST)
X-Received: by 2002:a65:428b:: with SMTP id j11mr12771256pgp.47.1615569721575;
 Fri, 12 Mar 2021 09:22:01 -0800 (PST)
MIME-Version: 1.0
References: <20210303183333.46543-1-masahiroy@kernel.org> <20210303183333.46543-2-masahiroy@kernel.org>
 <20210304001141.7lejurony2poqkid@archlinux-ax161>
In-Reply-To: <20210304001141.7lejurony2poqkid@archlinux-ax161>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Sat, 13 Mar 2021 02:21:24 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQ8K=QuU9oFeUcCaem7sbDOE34SgoDaJ49Gqy-7k_c3vA@mail.gmail.com>
Message-ID: <CAK7LNAQ8K=QuU9oFeUcCaem7sbDOE34SgoDaJ49Gqy-7k_c3vA@mail.gmail.com>
Subject: Re: [PATCH 2/4] kbuild: collect minimum tool versions into scripts/tool-version.sh
To: Nathan Chancellor <nathan@kernel.org>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=ir3LtooC;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

On Thu, Mar 4, 2021 at 9:11 AM Nathan Chancellor <nathan@kernel.org> wrote:
>
> On Thu, Mar 04, 2021 at 03:33:31AM +0900, Masahiro Yamada wrote:
> > The kernel build uses various tools, many of which are provided by the
> > same software suite, for example, LLVM and Binutils.
> >
> > When we raise the minimal version of Clang/LLVM, we need to update
> > clang_min_version in scripts/cc-version.sh and also lld_min_version in
> > scripts/ld-version.sh.
> >
> > In fact, Kbuild can handle CC=clang and LD=ld.lld independently, and we
> > could manage their minimal version separately, but it does not make
> > much sense.
> >
> > Make scripts/tool-version.sh a central place of minimum tool versions
> > so that we do not need to touch multiple files.
> >
> > This script prints the minimal version of the given tool.
> >
> >   $ scripts/tool-version.sh gcc
> >   4.9.0
> >   $ scripts/tool-version.sh llvm
> >   10.0.1
> >   $ scripts/tool-version.sh binutils
> >   2.23.0
> >   $ scripts/tool-version.sh foo
> >   foo: unknown tool
> >
> > Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
>
> Reviewed-by: Nathan Chancellor <nathan@kernel.org>
>
> Two comments below.
>
> > ---
> >
> >  scripts/cc-version.sh   | 20 +++++---------------
> >  scripts/ld-version.sh   | 11 ++++-------
> >  scripts/tool-version.sh | 27 +++++++++++++++++++++++++++
> >  3 files changed, 36 insertions(+), 22 deletions(-)
> >  create mode 100755 scripts/tool-version.sh
> >
> > diff --git a/scripts/cc-version.sh b/scripts/cc-version.sh
> > index 3f2ee885b116..4772f1ef9cac 100755
> > --- a/scripts/cc-version.sh
> > +++ b/scripts/cc-version.sh
> > @@ -6,18 +6,6 @@
> >
> >  set -e
> >
> > -# When you raise the minimum compiler version, please update
> > -# Documentation/process/changes.rst as well.
> > -gcc_min_version=4.9.0
> > -clang_min_version=10.0.1
> > -icc_min_version=16.0.3 # temporary
> > -
> > -# https://gcc.gnu.org/bugzilla/show_bug.cgi?id=63293
> > -# https://lore.kernel.org/r/20210107111841.GN1551@shell.armlinux.org.uk
> > -if [ "$SRCARCH" = arm64 ]; then
> > -     gcc_min_version=5.1.0
> > -fi
> > -
> >  # Print the compiler name and some version components.
> >  get_compiler_info()
> >  {
> > @@ -48,18 +36,20 @@ set -- $(get_compiler_info "$@")
> >
> >  name=$1
> >
> > +tool_version=$(dirname $0)/tool-version.sh
>
> I realize these scripts are currently called by their full path but is
> it worth making this '$(dirname "$(readlink -f "$0")")' here and in
> ld-version.sh just in case that does not happen?
>
> >  case "$name" in
> >  GCC)
> >       version=$2.$3.$4
> > -     min_version=$gcc_min_version
> > +     min_version=$($tool_version gcc)
> >       ;;
> >  Clang)
> >       version=$2.$3.$4
> > -     min_version=$clang_min_version
> > +     min_version=$($tool_version llvm)
> >       ;;
> >  ICC)
> >       version=$(($2 / 100)).$(($2 % 100)).$3
> > -     min_version=$icc_min_version
> > +     min_version=$($tool_version icc)
> >       ;;
> >  *)
> >       echo "$orig_args: unknown compiler" >&2
> > diff --git a/scripts/ld-version.sh b/scripts/ld-version.sh
> > index a463273509b5..e824f7675693 100755
> > --- a/scripts/ld-version.sh
> > +++ b/scripts/ld-version.sh
> > @@ -6,11 +6,6 @@
> >
> >  set -e
> >
> > -# When you raise the minimum linker version, please update
> > -# Documentation/process/changes.rst as well.
> > -bfd_min_version=2.23.0
> > -lld_min_version=10.0.1
> > -
> >  # Convert the version string x.y.z to a canonical 5 or 6-digit form.
> >  get_canonical_version()
> >  {
> > @@ -35,10 +30,12 @@ set -- $("$@" --version)
> >  IFS=' '
> >  set -- $1
> >
> > +tool_version=$(dirname $0)/tool-version.sh
> > +
> >  if [ "$1" = GNU -a "$2" = ld ]; then
> >       shift $(($# - 1))
> >       version=$1
> > -     min_version=$bfd_min_version
> > +     min_version=$($tool_version binutils)
> >       name=BFD
> >       disp_name="GNU ld"
> >  elif [ "$1" = GNU -a "$2" = gold ]; then
> > @@ -46,7 +43,7 @@ elif [ "$1" = GNU -a "$2" = gold ]; then
> >       exit 1
> >  elif [ "$1" = LLD ]; then
> >       version=$2
> > -     min_version=$lld_min_version
> > +     min_version=$($tool_version llvm)
> >       name=LLD
> >       disp_name=LLD
> >  else
> > diff --git a/scripts/tool-version.sh b/scripts/tool-version.sh
> > new file mode 100755
> > index 000000000000..b4aa27e2c3d3
> > --- /dev/null
> > +++ b/scripts/tool-version.sh
> > @@ -0,0 +1,27 @@
> > +#!/bin/sh
> > +# SPDX-License-Identifier: GPL-2.0-only
> > +#
> > +# Print the minimum supported version of the given tool.
> > +
> > +set -e
> > +
> > +# When you raise the minimum version, please update
> > +# Documentation/process/changes.rst as well.
> > +gcc_min_version=4.9.0
> > +llvm_min_version=10.0.1
> > +icc_min_version=16.0.3 # temporary
> > +binutils_min_version=2.23.0
> > +
> > +# https://gcc.gnu.org/bugzilla/show_bug.cgi?id=63293
> > +# https://lore.kernel.org/r/20210107111841.GN1551@shell.armlinux.org.uk
> > +if [ "$SRCARCH" = arm64 ]; then
> > +     gcc_min_version=5.1.0
> > +fi
> > +
> > +eval min_version="\$${1}_min_version"
> > +if [ -z "$min_version" ]; then
> > +     echo "$1: unknown tool" >&2
> > +     exit 1
> > +fi
> > +
> > +echo "$min_version"
> > --
> > 2.27.0
> >
>
> Would scripts/tool-version.sh be easier to read and interpret using a
> case statement?
>
> #!/bin/sh
> # SPDX-License-Identifier: GPL-2.0-only
> #
> # Print the minimum supported version of the given tool.
> # When you raise the minimum version, please update
> # Documentation/process/changes.rst as well.
>
> case "$1" in
> binutils)
>     echo "2.23.0"
>     ;;
> gcc)
>     # https://gcc.gnu.org/bugzilla/show_bug.cgi?id=63293
>     # https://lore.kernel.org/r/20210107111841.GN1551@shell.armlinux.org.uk
>     if [ "$SRCARCH" = arm64 ]; then
>         echo "5.1.0"
>     else
>         echo "4.9.0"
>     fi
>     ;;
> icc)
>     # temporary
>     echo "16.0.3"
>     ;;
> llvm)
>     echo "10.0.1"
>     ;;
> *)
>     echo "$1: unknown tool" >&2
>     exit 1
>     ;;
> esac
>


After some more thoughts, I think
your suggestion is better.


My patch is fragile in case the user sets
an environment variable "foo_min_version".



-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAQ8K%3DQuU9oFeUcCaem7sbDOE34SgoDaJ49Gqy-7k_c3vA%40mail.gmail.com.
