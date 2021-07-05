Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBDORRGDQMGQEUTAJPWA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33f.google.com (mail-ot1-x33f.google.com [IPv6:2607:f8b0:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 921F83BB511
	for <lists+clang-built-linux@lfdr.de>; Mon,  5 Jul 2021 04:03:58 +0200 (CEST)
Received: by mail-ot1-x33f.google.com with SMTP id c3-20020a9d61430000b0290474c23d2dbcsf11136229otk.15
        for <lists+clang-built-linux@lfdr.de>; Sun, 04 Jul 2021 19:03:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625450637; cv=pass;
        d=google.com; s=arc-20160816;
        b=NFh3vsj2hrKLptWaEuJx+MhTzy7u9APyA62Xux+qKtRZCuAprGT79AllZ3lHHlg+XC
         zs4Pph5RFsM6+MBpR6VFvWa6J0ddjemQfQ1kdwWFkEpSK3WL42MKXkFrtEoy/KoJtyJI
         Xg+G5EDk/uBatRL05r2dbJ4QevNPy/EFy+EdoBkygJWrSvIzVNPQZb8c/a8vQt2mOFzh
         i3u48cF+3pMxZI2fY3hXuGu0bR4kmTuAsfFQ3bskGo8c8tQEHkSR2Pe975wzRT/cIPY3
         7yFiVdfji7MsZuc9on65f+lp4s7unkQIelDEarRGdODpGbU90+tf6Ly8Bn8CkKHbpCgq
         +63g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=2EJRtGoG7xIboCV7r/dUy8hPmstuDeHbD8IpOw49H7s=;
        b=AGpzo658nU7ow5hlVj4qAOvu3UD9Lca9Dr7XpZIQO1asRftv4sutrn/H0zyhd6+DT1
         EOhEHrjwQI4I6mJhW2oFDAsXaa05qjWKoeFs5aMNYhcMPA1sIhXHa5cOb6YXKdNIM/5q
         ewo8F/BKJq646H8ssVKePLWMktmykLKLzDGoEdrPIqHex4JXsMeELTBxgFYPq3EHrLn7
         2VXNPxzvQD66J3mL4pW1NhZuxVU+zNSkVYBdnI0/zp1MZRMqIixDTC88WpUXgPAIc06a
         AfAqxKra9FxnwwtCeAfUSYEldeRkYp9sVTKVn439f1ysCTXQlJ2evgJpxQ/heY7JFf9o
         UG4g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=t6d5fm7G;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2EJRtGoG7xIboCV7r/dUy8hPmstuDeHbD8IpOw49H7s=;
        b=N3hWZX/45J4CJpCtxDvtlQAG7s7RasuYsqQklzo6z7IYNun5FiVDg3KXsJOOSj9sju
         t4E/OIJ/CEfjdyxRS3l8Tqw3qVXjs3g6wQ48tpCvzbPyvLWWwHb2Bhb2MBPavUByGF5Z
         e3WvMEM5gEe3HnLfSoy7tk9YeHstMj5B2htBVAfCz0Rm4yWScnCQjMK4lmWCTxiVF2Mm
         hox5xn9YR7BFRjR61pAmNJVYi0dS7K1mVGz+7tCzsy7Qkk3Eh/+2x6ox1rscaz/IGspD
         UdYIIcPRKWhR9TKBF3TsTrY+AhFekcxjHzUFJYi9w1ESdiUU1yZOuMn6FPNdQo0GMZqH
         GFyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2EJRtGoG7xIboCV7r/dUy8hPmstuDeHbD8IpOw49H7s=;
        b=pNJtDjmvjgvVig6zgLoRzpuDumnpzbiJk67bnVwRizuC6cDJfIQwCw6QnCpu/Uts2i
         9CGFjLT0P9o2MbZryvlVsSsNtNqrvf8YG2SW0RZ5bIRJQoqWbddzFgQFUtmCF/eCDNwb
         GHYghDcfu+2O6C3q0tzBqc35qG6Az0pCMfIPHfl51HXIpXmqhDtbmlWeDHahT2G80s1K
         1TKN1CCvjJnL9fmBt4NRAmS9xnSSsNcT8Ooj4w5pmiB6LSpwKXwSGFof3HfYO5g+P/vU
         t5YOjXJQtT/CbsVA9M96gv0aPj0a/KyUbLuKaktdgzuI3YewUCJ8Mzy7sbTrCsVXB9//
         lr3w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533hWuD1FwuXX3GgzMwnlWOdN7Q95PRODOno3pJt78kYVYvxMymb
	7RTdXxtXzDCzaV8O0suHifk=
X-Google-Smtp-Source: ABdhPJx/QYxD+iawt8ce6LJPbkmidXclAW2T6h088PfCqI5YiMLA48K5J236u0TE8yZRKDzcXTYpKA==
X-Received: by 2002:a9d:75c3:: with SMTP id c3mr9015922otl.210.1625450637420;
        Sun, 04 Jul 2021 19:03:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:7c1:: with SMTP id 59ls5960171oto.8.gmail; Sun, 04 Jul
 2021 19:03:57 -0700 (PDT)
X-Received: by 2002:a9d:5887:: with SMTP id x7mr8961041otg.163.1625450637115;
        Sun, 04 Jul 2021 19:03:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625450637; cv=none;
        d=google.com; s=arc-20160816;
        b=NFV1CQoEYEtsFOlZ5tNqkM04og5nRMwJpvIJEDcIX5p5hJEPGV1FPl9hDJ7Wmp6q04
         7qJaJ1+U/A+4G/VLDkHjW1SbsJ/NC6ZtO/lzd1QZN+loYdXHFKJw6AZwombvvTGN9DoO
         61rAjo+3H1pMq58iGayjKTK1LzR398KwlqcbLKf18+Kz6mWpSMs5DzZz99SytXrDYKRZ
         rNwTGQdReKBmLS6Hf6gIZNmXHi36y5pzSWlZNAs7W1qjJQtxRz8Lm8ADFRzL/6EvUtzR
         PU6d3nUKoqAF+4qsPdseSqFhHHz+e67hlHTRB8pDgG3W2s8pVNm1A07RScMNRxfWQv26
         fE7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=i6TqbcfWRrqlvlGxRh4UhpNAO4m8Y8977j2FL6bcy68=;
        b=Sy+RBx/NZYiiYcrQgU1gCM7eHpv4tWw86ydsiCcX080iX7+txmJSJfXlALJTKdzogy
         dCIfWsr7Vg3EiSBQokeWgHB+DOz2bMqXTuLrYe2P9TncviOoGdjy62dFseoF25jlx3/q
         urlqXmIUTfNpLERgKDbZnDQ2QbuQ1uBBz60GiQh1oLCxGkEA1tB4nv8+QpQdbuxysKev
         5jIBSvI/bWxNarz+Ul+8EXAhHbs5+1WWvDWdUv5E7eogIn2djf/8je9Xm/M80BByR/3k
         x7hs6PFS/7zTIH3fEmq+jDkbSx5yF/uU3oXu4U6c7X5r6G+/5mg44oR23NuFHQRJn//1
         PaUg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=t6d5fm7G;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-03.nifty.com (conssluserg-03.nifty.com. [210.131.2.82])
        by gmr-mx.google.com with ESMTPS id j26si1815351ooj.0.2021.07.04.19.03.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Jul 2021 19:03:57 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) client-ip=210.131.2.82;
Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com [209.85.216.45]) (authenticated)
	by conssluserg-03.nifty.com with ESMTP id 16523JPg008016
	for <clang-built-linux@googlegroups.com>; Mon, 5 Jul 2021 11:03:19 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-03.nifty.com 16523JPg008016
X-Nifty-SrcIP: [209.85.216.45]
Received: by mail-pj1-f45.google.com with SMTP id h1-20020a17090a3d01b0290172d33bb8bcso1391509pjc.0
        for <clang-built-linux@googlegroups.com>; Sun, 04 Jul 2021 19:03:19 -0700 (PDT)
X-Received: by 2002:a17:90b:4d81:: with SMTP id oj1mr12215610pjb.153.1625450598996;
 Sun, 04 Jul 2021 19:03:18 -0700 (PDT)
MIME-Version: 1.0
References: <20210702032943.7865-1-lecopzer.chen@mediatek.com> <20210702032943.7865-2-lecopzer.chen@mediatek.com>
In-Reply-To: <20210702032943.7865-2-lecopzer.chen@mediatek.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Mon, 5 Jul 2021 11:02:42 +0900
X-Gmail-Original-Message-ID: <CAK7LNATqZdZy9mH2qbFJPGs81a0fEFGPutqmvrdz1U51zOvH3Q@mail.gmail.com>
Message-ID: <CAK7LNATqZdZy9mH2qbFJPGs81a0fEFGPutqmvrdz1U51zOvH3Q@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] Kbuild: lto: add CONFIG_MAKE_VERSION
To: Lecopzer Chen <lecopzer.chen@mediatek.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
        Kees Cook <keescook@chromium.org>,
        Sami Tolvanen <samitolvanen@google.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Nathan Chancellor <nathan@kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        yj.chiang@mediatek.com, Michal Marek <michal.lkml@markovi.net>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=t6d5fm7G;       spf=softfail
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

On Fri, Jul 2, 2021 at 12:29 PM Lecopzer Chen
<lecopzer.chen@mediatek.com> wrote:
>
> To check the GNU make version. Used by the LTO Kconfig.
>
> LTO with MODVERSIONS will fail in generating correct CRC because
> the makefile rule doesn't work for make with version 3.8X.[1]
>
> Thus we need to check make version during selecting on LTO Kconfig.
> Add CONFIG_MAKE_VERSION which means MAKE_VERSION in canonical digits
> for arithmetic comparisons.
>
> [1] https://lore.kernel.org/lkml/20210616080252.32046-1-lecopzer.chen@mediatek.com/
> Signed-off-by: Lecopzer Chen <lecopzer.chen@mediatek.com>
> ---


NACK.

"Let's add MAKE_VERSION >= 40200 restriction
just because I cannot write correct code that
works for older Make" is a horrible idea.

Also, Kconfig is supposed to check the compiler
(or toolchains) capability, not host tool versions.







>  Makefile                |  2 +-
>  init/Kconfig            |  4 ++++
>  scripts/make-version.sh | 13 +++++++++++++
>  3 files changed, 18 insertions(+), 1 deletion(-)
>  create mode 100755 scripts/make-version.sh
>
> diff --git a/Makefile b/Makefile
> index 88888fff4c62..2402745b2ba9 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -516,7 +516,7 @@ CLANG_FLAGS :=
>
>  export ARCH SRCARCH CONFIG_SHELL BASH HOSTCC KBUILD_HOSTCFLAGS CROSS_COMPILE LD CC
>  export CPP AR NM STRIP OBJCOPY OBJDUMP READELF PAHOLE RESOLVE_BTFIDS LEX YACC AWK INSTALLKERNEL
> -export PERL PYTHON3 CHECK CHECKFLAGS MAKE UTS_MACHINE HOSTCXX
> +export PERL PYTHON3 CHECK CHECKFLAGS MAKE MAKE_VERSION UTS_MACHINE HOSTCXX
>  export KGZIP KBZIP2 KLZOP LZMA LZ4 XZ ZSTD
>  export KBUILD_HOSTCXXFLAGS KBUILD_HOSTLDFLAGS KBUILD_HOSTLDLIBS LDFLAGS_MODULE
>
> diff --git a/init/Kconfig b/init/Kconfig
> index 55f9f7738ebb..ecc110504f87 100644
> --- a/init/Kconfig
> +++ b/init/Kconfig
> @@ -86,6 +86,10 @@ config CC_HAS_ASM_INLINE
>  config CC_HAS_NO_PROFILE_FN_ATTR
>         def_bool $(success,echo '__attribute__((no_profile_instrument_function)) int x();' | $(CC) -x c - -c -o /dev/null -Werror)
>
> +config MAKE_VERSION
> +       int
> +       default $(shell,$(srctree)/scripts/make-version.sh $(MAKE_VERSION))
> +
>  config CONSTRUCTORS
>         bool
>
> diff --git a/scripts/make-version.sh b/scripts/make-version.sh
> new file mode 100755
> index 000000000000..3a451db3c067
> --- /dev/null
> +++ b/scripts/make-version.sh
> @@ -0,0 +1,13 @@
> +#!/bin/sh
> +# SPDX-License-Identifier: GPL-2.0
> +#
> +# Print the GNU make version in a 5 or 6-digit form.
> +
> +set -e
> +
> +# Convert the version string x.y.z to a canonical 5 or 6-digit form.
> +IFS=.
> +set -- $1
> +
> +# If the 2nd or 3rd field is missing, fill it with a zero.
> +echo $((10000 * $1 + 100 * ${2:-0} + ${3:-0}))
> --
> 2.18.0
>


--
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNATqZdZy9mH2qbFJPGs81a0fEFGPutqmvrdz1U51zOvH3Q%40mail.gmail.com.
