Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBMVFQ6BAMGQERXTUVVY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x439.google.com (mail-pf1-x439.google.com [IPv6:2607:f8b0:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 25E4E32E268
	for <lists+clang-built-linux@lfdr.de>; Fri,  5 Mar 2021 07:41:56 +0100 (CET)
Received: by mail-pf1-x439.google.com with SMTP id r1sf753436pfl.11
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Mar 2021 22:41:56 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614926515; cv=pass;
        d=google.com; s=arc-20160816;
        b=RRSxDWrFy7F+flDkMhuLwAXpEthlyqCDjfWT3xV6EBx2go7zzN0wDj3NYroCxF0vzK
         r6CrIpR5Pzr+mJPsplepmbCRNDQDJu+W64Au8gDa6AU7LthedrIpVA6/SnzFwPmEW+G6
         f5Ut6gZgD9d3yLY8B/KTW+fhih+Q395elrlx357cnt0C7QP5ShE3xQF5O4G6p1Vm7K4P
         uEH541HF4b9LzMmYSR6IUnj3aePzZ0YbuhqmWBJY9t4GaUHccbXQ9rmwb0E7WtVz6C6Q
         QQN2ahW8i25W2edH8m1YVv195pIwk0U0cBzF3AmyEHGxIhuVXDrU+7IcR82PG+o9DYc9
         fKDQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=Zg9Di2Sr4kbKutnP6sh1cJ8QwIgppGHs4r3G5yFj7YU=;
        b=pvcQw/dDmk9ZvVyjje8W/Iwq6YIlLbmTuYN3hnyZlzljaOmikVJ7glQKPnLHxVagXM
         uuZD/LRK8P9WHicJivwr9CHjXfTE1MdSi/lGYfSt+XkwPLJA1rnZxUkSf19oQOjspj5G
         s+uTKLpPZ4zUJZEEw02SDz4nP5de8H1iP4sz8m8RT8IExr9KVKOb1SU80AQl3c1Ty9zx
         nbc9/Pu/nPyYlnK7q+rJ6fe5iehrQy/VjV1XBETiI0QWCapfCcYTFalhTpHawyQODGQX
         HKiRC7+K+ltMviJXCSjU44potegSEmRroqknnYZIoVZY7YBKRadSFZR9xXwrbOFw9EVC
         rYXA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=vysq9VLz;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Zg9Di2Sr4kbKutnP6sh1cJ8QwIgppGHs4r3G5yFj7YU=;
        b=ck5yAzg16zpSUJo1wz8FBJk7d4qbptjNRL4graY1SYY1xeecqVkPDHJ1nCoQIoAEkL
         w3NgqLCOgPZbKWNyYSh3+mFZ1IOJgDjI0Jd6qA9np3g/ntODEWyHCh0VeMhs3Khcod4V
         kSVoH0TykpiFr9RvWVcaiS5B326+rAadlPVe2FSag0UpAbsgebn+NJuWXI92YHO7WiXO
         d+64WDH2bpAXT9L9UylYzC8WaZyKq+HMxdwrGUar90oAaTiwouwT8oMaLfv3PJ63YadN
         2ge50xV7/F9FnZ7tsu9ppyiqOHM2BCqWe5pG6sQrxomvLA/OnjJ8NRtQf4zd3RvAaDAC
         KGOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Zg9Di2Sr4kbKutnP6sh1cJ8QwIgppGHs4r3G5yFj7YU=;
        b=ZoDkeMWQZnIgvMMZri5S7JCmggvBUZzpUypLKVWw7oYJg1pfm2h+G2yVYDf9gRn1M0
         sRyWVJHp1/5XteT7SNvaCNQLx975coWtofFjJuv2JtTOgARARbJNi0DJSkZ/NmmSUqG5
         vI4ZmP+fg6DTft0lmjrAne4D3NZfrx5InN2CiS0mzB/5VUH3SAQXSP9Ko9/KN8Gnlqao
         HazkSYaVZbsaAGVahI42Z/2mhd04LoqzZ+qzScrp8qyZcyJf2bZExWrcivGem8ld0Xup
         MqZISjtUKyGnZZXhQeq9hVTG1kiL9osZYnQIevS/uiyAZvDbaJe3ikTmFQpURhQLdGE3
         AZBQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531oCyIDMxbNSWh4DKzpnT6CL/0Ii2Fh5LSGgs0xftNKDFiY6KIt
	R4LIkMgiMMeQ6umAcEq9XqY=
X-Google-Smtp-Source: ABdhPJynRn1gCviQF1f+kcRFfez/aTp6RZ14tC04NrSr6sFDjrDbgO4vRZHThI+HLhzjSRjsY6lVNA==
X-Received: by 2002:a62:62c1:0:b029:1ee:7ad:8cb3 with SMTP id w184-20020a6262c10000b02901ee07ad8cb3mr7511438pfb.21.1614926514836;
        Thu, 04 Mar 2021 22:41:54 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:6102:: with SMTP id v2ls3479066pfb.1.gmail; Thu, 04 Mar
 2021 22:41:54 -0800 (PST)
X-Received: by 2002:a62:87c3:0:b029:1ee:761:bb33 with SMTP id i186-20020a6287c30000b02901ee0761bb33mr7485310pfe.52.1614926514130;
        Thu, 04 Mar 2021 22:41:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614926514; cv=none;
        d=google.com; s=arc-20160816;
        b=Z72/uBPRz5QpW8EyGaf9oXkfT2CqQjyDV0iTsrevwkfniZKjvFylDp4vTeVtXO4BKZ
         12+yGoPpAvxcwJmhSYFnRT9U2LCbBDmZIP54ESM7NH6os7dV2sMSm3C57HNy42Tsw7uK
         eBb4cxqGJNa2yEGlEemPwIz8FtlM93/ihG10elyo1reUaGP2XPGHznDBsY9qFN9Luuth
         ZJ/zDAfnuz0xeTdzFNwgm58ormBy12wPJkiUFrmPXVqPyFxDlI3KxnfPFWgQuzSwXzEY
         7e9RKPs4PfYlqWAPwjUguL6RCZ+yPqnrpkxfY1xqNLarokGVz/UOYA7Q9OtKeATQbIc0
         SxUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=LVfCYtol43p9Sf9h1BSalfqHLYWpNpKQtYF3NpU1uso=;
        b=KcGFHwf5RzoFRlmmZA+dL2CYlTyvJ240875uxlnJir9gPbP7mPtNckPbVA/ACWfZYa
         1KUDex2M8UTRXTB1+WMCNYYdC1K39eb3osWEmbgQhN6iYrAwu9uw7Wz0xLwJ0JpBPLM3
         kwGErcyXxqnp+tne1xGncH1OxBeFbGK83dSuFbz+c/CECONVHyJTF1C7rtPXeoMaVKZp
         9RLOFRMmMbLiX/s0iytvvsfynyVQoThTLfkQ17LUz7pyghX3kRRBLb5MlxNw4Jq+md83
         OwMZQqE7VlooYybUoNQL3gf2mhO0hB9k3Z9HOI4RatKGwzQuIYMSIcUnOZ6WntwTAeDQ
         V0FQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=vysq9VLz;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-03.nifty.com (conssluserg-03.nifty.com. [210.131.2.82])
        by gmr-mx.google.com with ESMTPS id k21si133683pfa.5.2021.03.04.22.41.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 04 Mar 2021 22:41:54 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) client-ip=210.131.2.82;
Received: from mail-pg1-f171.google.com (mail-pg1-f171.google.com [209.85.215.171]) (authenticated)
	by conssluserg-03.nifty.com with ESMTP id 1256fUiM014124
	for <clang-built-linux@googlegroups.com>; Fri, 5 Mar 2021 15:41:30 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-03.nifty.com 1256fUiM014124
X-Nifty-SrcIP: [209.85.215.171]
Received: by mail-pg1-f171.google.com with SMTP id t26so702630pgv.3
        for <clang-built-linux@googlegroups.com>; Thu, 04 Mar 2021 22:41:30 -0800 (PST)
X-Received: by 2002:aa7:956d:0:b029:1f1:5ba6:2a58 with SMTP id
 x13-20020aa7956d0000b02901f15ba62a58mr434567pfq.63.1614926489648; Thu, 04 Mar
 2021 22:41:29 -0800 (PST)
MIME-Version: 1.0
References: <20210303183333.46543-1-masahiroy@kernel.org> <20210303183333.46543-2-masahiroy@kernel.org>
 <20210304001141.7lejurony2poqkid@archlinux-ax161>
In-Reply-To: <20210304001141.7lejurony2poqkid@archlinux-ax161>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Fri, 5 Mar 2021 15:40:52 +0900
X-Gmail-Original-Message-ID: <CAK7LNASnGqdAtjhNfPmk0dKA-v5aC4FB8Si+fCAkcjDLK0kv-A@mail.gmail.com>
Message-ID: <CAK7LNASnGqdAtjhNfPmk0dKA-v5aC4FB8Si+fCAkcjDLK0kv-A@mail.gmail.com>
Subject: Re: [PATCH 2/4] kbuild: collect minimum tool versions into scripts/tool-version.sh
To: Nathan Chancellor <nathan@kernel.org>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=vysq9VLz;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

Not sure.
A relative path still works.
So, I did not do what I did not need to do.




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


Actually, I wrote code that way.

But, I liked shorter code, and
wanted to collect magic numbers
to the top of this file.

Only the tricky part is the 'eval' statement,
but I hope it would not be too difficult to understand.



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
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210304001141.7lejurony2poqkid%40archlinux-ax161.



--
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNASnGqdAtjhNfPmk0dKA-v5aC4FB8Si%2BfCAkcjDLK0kv-A%40mail.gmail.com.
