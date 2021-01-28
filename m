Return-Path: <clang-built-linux+bncBDYJPJO25UGBBM6RZSAAMGQEWBBUWIY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id 5895E308046
	for <lists+clang-built-linux@lfdr.de>; Thu, 28 Jan 2021 22:12:21 +0100 (CET)
Received: by mail-pg1-x53b.google.com with SMTP id 33sf4734977pgv.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 28 Jan 2021 13:12:21 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611868340; cv=pass;
        d=google.com; s=arc-20160816;
        b=A3XW4dGUwsXsPTMje5l3x5xwUxlG9n99Cvkwfo4md1ugOzolfYrLZM+TymzK5VZnvT
         rzTj+Ju3lOSTuHxFWRL72+W1B/SlzgMc4YfkycIPvJwbcz7L6qAkPY/pVQ/kmOHRv6/0
         lgjIVMi++yAEKPpOyGjiyBkr/msjA0fBI7kOtnrr5DwBrI5P23ej4aqTfng+Z0N3tkYP
         1WhrNY0EnEvzR3e4vq5qkacSMO3VoUweXKqIxEwwI3QUMoiO5fP4Lv667JfDxdzcfNlu
         WxvW0xVD8hugxxeHqcU2AOEGT0C+BSZiRg9dwK9haZu4r4k2C1ReUqFdQySIDP5tbk8p
         Pi3Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=ds6OEmQxJvicCFzhgcTtnoEmgcy1N9E5DH/M1MF3Zs0=;
        b=e9N6KY1sveJmh8BkLxI1GK4nfnj3cQrjKDSp8GTYIQygczHcRgsh1wk01WaT9QpYA6
         ZyhHAxazMJ2JZkp9LUjN09JjMinP4yNF9659jpkTXpKJhcGAsx+wQ3AYhLZhHtD6pZ0+
         WaG+22oDKYvulgYFQf1kDhiHmIXXk8CazD/ug6zI7R7LlIr5dUAfuLho/ZJUQz3w/xr0
         3QlLvacEJ6iwPSCH8CmOSfcCxrU07UdVuD6lsYJDQmzVMPkRdKg0dlXOhQkzEryY1lVE
         d/Zmfjv60c95eB38Cidky4+H7Z/U0QaGmLwtfmU+hlJB079+bu2oCGnqZjRnxtDUVxso
         iQMg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=LcVHEujp;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ds6OEmQxJvicCFzhgcTtnoEmgcy1N9E5DH/M1MF3Zs0=;
        b=aWyApBfKvj30VEbPWZZ/fq8Fe/ZrJ7wq28iNEn8V3phOswB1Om/mB3KmOJHT979RnI
         SEbc2mWvuKsuq/CTx7QmzOPzA+rFxfSXrbmnu7GOCIIIuVgyVuJpm7LyrET8/l5pW/Ao
         y2G+JaaxJNPT9/2Pj94UiXbHBitB+rDO1JPUCWyg/TmLWSP1iPsR+yY3SsRunh0EYpwg
         voRJhmVGcpeyKfj2dnC0bYhXqMPh+jz+m0sK0FOOzwh6yV4kvy338NQnCD0triwMAJ2l
         IZlxLPjRtxaReRqnNGxQEgVDqllN2jLC3q8ZmmiV13WKvJurGFrKf9rV5cxu9Hrex2gj
         jRmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ds6OEmQxJvicCFzhgcTtnoEmgcy1N9E5DH/M1MF3Zs0=;
        b=fyu4nPPLWvXvPgUJJVzQBsNR4w4vSfNpn575Y8bqqABXvHqW0/F9yYUMdO0RXGiOYd
         lZLWyBIYv5KzUG32MZBBCUZIASfZ4hO6nd1SQUPrNWPQj9lOjSFB+mbDrN4aKaIYpEsw
         mR7rcGvrjr9hSnu+AYX5fNJwlqiExXby2duLXDI+vCDHAF+b4u5IrjPatimKGi4l4gC6
         O1v7pZjJSrjz3vfVsdV/cYDra2isrvKRsg8OiH4mS1j5A7ouVAkNJBpPehaSSWLCziC6
         U0ydIRyHF8XGmEL9lVFD8fvS3hWjkUzWjiM9vNLIL1YWPvXkVrR38I2DEGBl+56aWnmG
         R7zw==
X-Gm-Message-State: AOAM530fjsEGqjyDDcjSKQmq729Ttj3gJ7FjG6dj3QeRLcAsKXK/0vTO
	V04Zp8j7eSwmsOoU2tKzDZE=
X-Google-Smtp-Source: ABdhPJwe5zzTyEIJ/nk3JgLTurUy+Q80bQN3glQLoK+ye4GURqxLgmEFO+AzPsOrFLtf9jG8WuNkoA==
X-Received: by 2002:a17:90b:1a87:: with SMTP id ng7mr1228409pjb.211.1611868340038;
        Thu, 28 Jan 2021 13:12:20 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:8bca:: with SMTP id s10ls2683131pfd.10.gmail; Thu, 28
 Jan 2021 13:12:19 -0800 (PST)
X-Received: by 2002:a62:2946:0:b029:19e:6b80:669a with SMTP id p67-20020a6229460000b029019e6b80669amr1368693pfp.42.1611868339409;
        Thu, 28 Jan 2021 13:12:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611868339; cv=none;
        d=google.com; s=arc-20160816;
        b=pJZ9kwK6hAIqPgCMEqlfdbIil8S2B0YBnXwiuWJBfXxM3vwxQCtGoE9nmubfOSOr/b
         Ga0AwFqClrTP4MhQHrHehvF19tpR94uwdbQg8B29FDM9RzO7lipp46WLFRHlPmlmvAy4
         SdMse1ofIIFiAwmlb0awbSX8m2Aag9r8pa5RccOC7xDDLZkecNWWn6fMGSK9K5iQzKLn
         NHGerOwIcDskVtEGwDOpIfHzlyfPnqNL7NlGeW8UwxG+HJdfRHC89HxSJAWgm25GWnR3
         K3nziflLnVm88jI/q32XHjACortuFTlnln19Ffc0xz8swZNmW6ErfSk70DExSr8ZxBE+
         v24w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ShMu7npMsBgX+goAZm1Y3mVWCkhJ62xJJYEjYPKDrdU=;
        b=TL1xnkUwyU1xyse1E7lgbvxQwFLRQzg+LQnMaGavJDp5MkhYQYOsNBu8HVckTTtbM7
         d9dXGSRM4OaPhDJHnoyCIrs/PMtspVZg2x0+Yt/cT1FaUNnFJjoheArh3qCkNllQ2ppV
         840CsXgN3t9UvMod8YyXZ+afbKByPO1ZzBZ4J/Eevf7qAttbShtDKYgJNrFp08kNP9XO
         lAp0kHDGzl/PvyO5agmP0oRqFz3jJ2U/tUgwt8+yoIHceIQkJ6JhWPHxSV+NZ2OPGDIk
         TGvbiSTmfFPKph70b5ghHDEh2GwhL2ybsPG0If5NjMXOKCLeb6mg+0Ja3cusZS9ohdIg
         o2tw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=LcVHEujp;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x52a.google.com (mail-pg1-x52a.google.com. [2607:f8b0:4864:20::52a])
        by gmr-mx.google.com with ESMTPS id o14si331352pgm.3.2021.01.28.13.12.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Jan 2021 13:12:19 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52a as permitted sender) client-ip=2607:f8b0:4864:20::52a;
Received: by mail-pg1-x52a.google.com with SMTP id c132so5134770pga.3
        for <clang-built-linux@googlegroups.com>; Thu, 28 Jan 2021 13:12:19 -0800 (PST)
X-Received: by 2002:a63:7e10:: with SMTP id z16mr1266474pgc.263.1611868338941;
 Thu, 28 Jan 2021 13:12:18 -0800 (PST)
MIME-Version: 1.0
References: <20210121082451.2240540-1-morbo@google.com> <20210122101156.3257143-1-morbo@google.com>
 <CAKwvOdm+3o8z2GivPjSJRa=c=UKdfkiY-79s6yn2BxJkFnoFTw@mail.gmail.com> <CA+icZUU=XfwqMcXYonQKcD4QgqTBW-mA+d_84b7cU2R3HYPOSQ@mail.gmail.com>
In-Reply-To: <CA+icZUU=XfwqMcXYonQKcD4QgqTBW-mA+d_84b7cU2R3HYPOSQ@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 28 Jan 2021 13:12:06 -0800
Message-ID: <CAKwvOdnUm2FqC0CEF3qFuMCaWoqiUMqr7ddMjA2UNsJugA9DNQ@mail.gmail.com>
Subject: Re: [PATCH v7] pgo: add clang's Profile Guided Optimization infrastructure
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Bill Wendling <morbo@google.com>, Andrew Morton <akpm@linux-foundation.org>, 
	Jonathan Corbet <corbet@lwn.net>, Masahiro Yamada <masahiroy@kernel.org>, 
	Linux Doc Mailing List <linux-doc@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=LcVHEujp;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52a
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

On Thu, Jan 28, 2021 at 12:46 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> [ LLVM ]
>
> Today, I switched over to LLVM version 12.0.0-rc1.
>
>
> [ Step #1: 5.11.0-rc5-5-amd64-clang12-pgo ]
>
> My first kernel was built with CONFIG_PGO_CLANG=y and LLVM=1 plus LLVM_IAS=1.
>
> [ start-build_5.11.0-rc5-5-amd64-clang12-pgo.txt ]
> dileks    193090  193065  0 06:54 pts/2    00:00:00 /usr/bin/perf_5.10
> stat make V=1 -j4 HOSTCC=clang HOSTCXX=clang++ HOSTLD=ld.lld CC=clang
> LD=ld.lld LLVM=1 LLVM_IAS=1 PAHOLE=/opt/pahole/bin/pahole
> LOCALVERSION=-5-amd64-clang12-pgo KBUILD_VERBOSE=1
> KBUILD_BUILD_HOST=iniza KBUILD_BUILD_USER=sedat.dilek@gmail.com
> KBUILD_BUILD_TIMESTAMP=2021-01-28 bindeb-pkg
> KDEB_PKGVERSION=5.11.0~rc5-5~bullseye+dileks1
>
> Config: config-5.11.0-rc5-5-amd64-clang12-pgo
>
>
> [ Step #2: x86-64 defconfig & vmlinux.profdata ]
>
> Booted into 5.11.0-rc5-5-amd64-clang12-pgo and built an x86-64
> defconfig to generate/merge a vmlinux.profdata file.
>
> [ start-build_x86-64-defconfig.txt ]
> dileks     18430   15640  0 11:15 pts/2    00:00:00 make V=1 -j4
> HOSTCC=clang HOSTCXX=clang++ HOSTLD=ld.lld CC=clang LD=ld.lld LLVM=1
> LLVM_IAS=1
>
> Script: profile_clang-pgo.sh
> Config: dot-config.x86-64-defconfig
>
>
> [ Step #3.1: 5.11.0-rc5-6-amd64-clang12-pgo & GNU-AS ]
>
> The first rebuild with CONFIG_PGO_CLANG=n and "LLVM=1
> KCFLAGS=-fprofile-use=vmlinux.profdata".
> I was able to boot into this one.
> Used assembler: GNU-AS 2.35.1
>
> [ start-build_5.11.0-rc5-6-amd64-clang12-pgo.txt ]
> dileks     65734   65709  0 11:54 pts/2    00:00:00 /usr/bin/perf_5.10
> stat make V=1 -j4 HOSTCC=clang HOSTCXX=clang++ HOSTLD=ld.lld CC=clang
> LD=ld.lld PAHOLE=/opt/pahole/bin/pahole
> LOCALVERSION=-6-amd64-clang12-pgo KBUILD_VERBOSE=1
> KBUILD_BUILD_HOST=iniza KBUILD_BUILD_USER=sedat.dilek@gmail.com
> KBUILD_BUILD_TIMESTAMP=2021-01-28 bindeb-pkg
> KDEB_PKGVERSION=5.11.0~rc5-6~bullseye+dileks1 LLVM=1
> KCFLAGS=-fprofile-use=vmlinux.profdata
>
> Config: config-5.11.0-rc5-6-amd64-clang12-pgo
>
>
> [ Step #3.2: 5.11.0-rc5-7-amd64-clang12-pgo & Clang-IAS ]
>
> The second rebuild with CONFIG_PGO_CLANG=n and "LLVM=1
> KCFLAGS=-fprofile-use=vmlinux.profdata" plus LLVM_IAS=1.
> Compilable but NOT bootable in QEMU and on bare metal.
> Used assembler: Clang-IAS v12.0.0-rc1
>
> [ start-build_5.11.0-rc5-7-amd64-clang12-pgo.txt ]
> dileks      6545    6520  0 16:31 pts/2    00:00:00 /usr/bin/perf_5.10
> stat make V=1 -j4 HOSTCC=clang HOSTCXX=clang++ HOSTLD=ld.lld CC=clang
> LD=ld.lld PAHOLE=/opt/pahole/bin/pahole
> LOCALVERSION=-7-amd64-clang12-pgo KBUILD_VERBOSE=1
> KBUILD_BUILD_HOST=iniza KBUILD_BUILD_USER=sedat.dilek@gmail.com
> KBUILD_BUILD_TIMESTAMP=2021-01-28 bindeb-pkg
> KDEB_PKGVERSION=5.11.0~rc5-7~bullseye+dileks1 LLVM=1
> KCFLAGS=-fprofile-use=vmlinux.profdata LLVM_IAS=1
>
> Config: config-5.11.0-rc5-7-amd64-clang12-pgo
>
>
> [ Conclusion ]
>
> The only statement I can tell you is a "PGO optimized" rebuild with
> LLVM_IAS=1 is compilable but NOT bootable.

Thanks for the extensive testing and report. Can you compress, upload,
and post a link to your kernel image? I would like to take it for a
spin in QEMU and see if I can find what it's doing, then work
backwards from there.

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnUm2FqC0CEF3qFuMCaWoqiUMqr7ddMjA2UNsJugA9DNQ%40mail.gmail.com.
