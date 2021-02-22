Return-Path: <clang-built-linux+bncBDYJPJO25UGBBCOYZ6AQMGQELVN42PY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x539.google.com (mail-ed1-x539.google.com [IPv6:2a00:1450:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id BFBF5321E39
	for <lists+clang-built-linux@lfdr.de>; Mon, 22 Feb 2021 18:38:17 +0100 (CET)
Received: by mail-ed1-x539.google.com with SMTP id y90sf7468070ede.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Feb 2021 09:38:17 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614015497; cv=pass;
        d=google.com; s=arc-20160816;
        b=UY2oXJ80WB2jpNWZpNvoqjhUb7qVewSvOvts0BMVKGj1PXIghYt74RMVvHS8u8owSP
         oTZTlkiXpscsoUMkQroA2vxiDw6qSVbnbrlQhMWY+JcaOfQXHsh7GCWQ+meQPYDNvJwA
         Ojk7lMyoV+PE3eM07tif6T/fTw3ewMvggO2sXwF5NhDeZ9N2ETbrNcLh1S9asQvntIBM
         t8kgCMHUzwyTOE0Yqw5itJ6mpQk84SzY1P8EaGR0EsiKE3omu+yh5xEPiitmaEtkZ41q
         dg3Y11d8C3je7kQZVu0xHsPsBazvXGBzwEdwsW061tZpDSAFU3QfFbJalIi6qFQCaqSx
         N6hg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=dLta84FLNaZGz5suajvQ6Ak6WhF28+qcldGSGYi4AQQ=;
        b=OOP05xUV6CXoS08OzbtYzRVaYW/3OqHF+12FkFGtGCIqVL8M8L6Lru6ApHhGb5P9Sq
         BnUWRzYN1EG9BjSsMEJ9fhQnsumHHGqFz9E/v7D/Te798ZVWrJc61/bxrLq8gt0GKLLj
         5h1tsy6TFZdkcUyk5XhsNFXGejiQf3P+4yjxPfhi40LYl+eYF3EwlfOmpDw1waUstERl
         g6DcwfHy4UdjqFyCuVpIYA+EE3SncqXteKnGx1SQcRiA+NNMiIMBbm3BPYPqWCSVyHm8
         BPO6P/I66BRnmK6oFRN30Fvhi1tT9QKqLjwF1kFTEwNYJnt0XiWzBwSrgzc/CeX2pnTL
         cmgg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=iT3LsK4h;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::230 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dLta84FLNaZGz5suajvQ6Ak6WhF28+qcldGSGYi4AQQ=;
        b=hCjWKz5f7QhqLy7bDQrsZWxWZrTrB9iT90tGwNVd8zULXb71eKCsca833P7iWbWlyM
         u+jSmrgPNRMTFqpBDl5Yib2TY6aEy5tICnaNNVMBg/k0+kwHfDGUipyehR7oK0aVoZD0
         jJLc3/z1Qif/mKVUKye/ydH5q7shkgTK9To9+MekI7bXRH9/ZKHNLzX0EKEIqQ8q2Xz9
         prxT/gufA4Xr4IISphJJNZw8cBOkpvmx3eAkucjrvLD+4kOgrPLdGvsUXO2eRJxjf6LH
         gz7jWc25ZOF5D/9tMm7M16nk2sH5IPKxVCNhrnC2HJHKFID2SCoBxt458U9o+6VgIwMa
         vUEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dLta84FLNaZGz5suajvQ6Ak6WhF28+qcldGSGYi4AQQ=;
        b=TfL2luxnjlY3h7EDfUrof4a2N6SuhAMHcQFlyg2c8Ud7S0iKWSM4RKi/bjvnd5maeI
         0KZ0h7SpyJrYA5fzr0Y3pDyD5YY7Sx/10KVhbVYokFUbgwg70Xy3jDw1vdBCKK3O0Lc5
         ehouUTVV0dWonjUV9mRyscQeT4wExM19ltelsDwTLzqifmAKJ+G+QDKjobsxc4VCUIZv
         p/2MCHC0DUqdmuo5rRJjebrBQMcOzOioZ80YYUNZjR0I9psqIq5eFBTdxjg2Bb2mbyNL
         aa/AoixENoCWTuv9cSGq6mhRrwuTQSCpscnnJQTML04snmw4miY8o7tEXwW7K1lIwjMQ
         v88w==
X-Gm-Message-State: AOAM532XTDP6AsGyEiYiqx+AxahymnJ/k5W3MevFiA7zabIYpkqLZdNJ
	WS6EJLPEDht7rpdDRYF9Y0k=
X-Google-Smtp-Source: ABdhPJxLxhnVlLf7yYY+q35BQuUzapylnsKS248MmyY8pExeA+Rgd7BR0wINE6V/gMzpmh3KZSzQ2Q==
X-Received: by 2002:a50:d307:: with SMTP id g7mr23786624edh.204.1614015497570;
        Mon, 22 Feb 2021 09:38:17 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6402:b24:: with SMTP id bo4ls7682908edb.1.gmail; Mon, 22
 Feb 2021 09:38:16 -0800 (PST)
X-Received: by 2002:a05:6402:1f3:: with SMTP id i19mr23626385edy.217.1614015496755;
        Mon, 22 Feb 2021 09:38:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614015496; cv=none;
        d=google.com; s=arc-20160816;
        b=CEvbgXCVweDkJdQMOarqcBbzTTVeuvSncvgkd1o/UkN9HZByELxwqm5/K7JJfNlU3f
         4btRWibosJZK57KR26f19WHv0a/ReS4FGQdoAU3PnRSrZPSTnLjwJB9b9FLpFQQCp6MM
         f5Ha1O5jwtWm96uUbpAJ1r7O1/SyQpGBFv+NculDQ9i7bQ1xJYThONpySjiJdO+5JlXf
         YiSSTGm08ZYKcBJnx4uhK25upD3qinDrBdVUnjq4ahhPITsyEuU3voiCALVutkr/7YJS
         +IalMEL15YIl5qPrOVVj9B+TXLhCgwC4bJHYfI5JebvAS8nKtI9dKVJFpgQls/gf9NSO
         bI2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=v7wqePzSgwskG1/tuXGQ+kZYGBboCrb+s/SmtJNtNR4=;
        b=Ua1vxG0bkaVd5YY38V4rCF00OiIQ4wLeCFCvVN61uWEdAPaH8ecH2O9ughtmveoVOb
         5ufrltxuz6x8/1CV/Vwbju6XW8ua6tsNkAG+0oy2MSoEDNMgvfom99Atg58Ll4e1Ta9s
         M3O1mSOVKbyF9JjBcudw5ZeXSU7vmA4mqsExFywd/V2h7911CsrmuSxUlGGjLvF13kYS
         BBG5jY7aKbSdk8UYtocn+1LpTzxAm006Q8LseJYtym+jja8urpGMxh5AzlvMKwTp6gOo
         ZnFY2AFaTLgGGzv19G5cmq8scICOFPyjUR5a9BnZ+Ljxz8vNkFhUHc+YzSZd7hhWeDPL
         Luvg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=iT3LsK4h;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::230 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com. [2a00:1450:4864:20::230])
        by gmr-mx.google.com with ESMTPS id c12si747913edw.3.2021.02.22.09.38.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Feb 2021 09:38:16 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::230 as permitted sender) client-ip=2a00:1450:4864:20::230;
Received: by mail-lj1-x230.google.com with SMTP id q14so59905378ljp.4
        for <clang-built-linux@googlegroups.com>; Mon, 22 Feb 2021 09:38:16 -0800 (PST)
X-Received: by 2002:a05:651c:2042:: with SMTP id t2mr14080474ljo.233.1614015496303;
 Mon, 22 Feb 2021 09:38:16 -0800 (PST)
MIME-Version: 1.0
References: <CA+G9fYsb0LRBatwtbjULObmc4zA6SrYBE6W+S_AjxXedPwPdVQ@mail.gmail.com>
In-Reply-To: <CA+G9fYsb0LRBatwtbjULObmc4zA6SrYBE6W+S_AjxXedPwPdVQ@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 22 Feb 2021 09:38:05 -0800
Message-ID: <CAKwvOdm+z0PeK3HDyTqvs4ZTq8hf9UKvfMOrTawy3zKG=RzDYg@mail.gmail.com>
Subject: Re: gfp.h:20:32: error: redefinition of typedef 'gfp_t' is a C11 feature
To: Naresh Kamboju <naresh.kamboju@linaro.org>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux-Next Mailing List <linux-next@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	open list <linux-kernel@vger.kernel.org>, lkft-triage@lists.linaro.org, 
	Nathan Chancellor <nathan@kernel.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Arnd Bergmann <arnd@arndb.de>, Stephen Rothwell <sfr@canb.auug.org.au>, 
	Matthew Wilcox <willy@infradead.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=iT3LsK4h;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::230
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

On Mon, Feb 22, 2021 at 9:36 AM Naresh Kamboju
<naresh.kamboju@linaro.org> wrote:
>
> arm davinci_all_defconfig config with clang 10, 11 and 12 failing
> on Linux next tag 20210222 due to below listed errors / warnings.
>
>  - arm (davinci_all_defconfig) with clang-10
>  - arm (davinci_all_defconfig) with clang-11
>  - arm (davinci_all_defconfig) with clang-12
>
> make --silent --keep-going --jobs=8
> O=/home/tuxbuild/.cache/tuxmake/builds/1/tmp ARCH=arm
> CROSS_COMPILE=arm-linux-gnueabihf- 'HOSTCC=sccache clang' 'CC=sccache
> clang' davinci_all_defconfig
>
> make --silent --keep-going --jobs=8
> O=/home/tuxbuild/.cache/tuxmake/builds/1/tmp ARCH=arm
> CROSS_COMPILE=arm-linux-gnueabihf- 'HOSTCC=sccache clang' 'CC=sccache
> clang'
>
>
> include/linux/gfp.h:20:32: error: redefinition of typedef 'gfp_t' is a
> C11 feature [-Werror,-Wtypedef-redefinition]
> typedef unsigned int __bitwise gfp_t;   // repeated here for kernel-doc
>                                ^

Thanks for the report, sounds like this has already been fixed:
https://lore.kernel.org/linux-mm/CAKwvOdmbx+rLv+z-POUq+DPedhrWFEFVHhWW9j5vWpzH0J53Kg@mail.gmail.com/T/#m7d7d6f2905b1be082f31628011d51056a7e94abc

> include/linux/types.h:148:32: note: previous definition is here
> typedef unsigned int __bitwise gfp_t;
>                                ^
> 1 warning generated.
> 1 warning generated.
> 1 warning generated.
> 1 warning generated.
> 1 error generated.
> make[5]: *** [scripts/Makefile.build:287:
> drivers/gpu/drm/tilcdc/tilcdc_plane.o] Error 1
>
> Reported-by: Naresh Kamboju <naresh.kamboju@linaro.org>
>
> Step to reproduce:
> ---------------------------
> # TuxMake is a command line tool and Python library that provides
> # portable and repeatable Linux kernel builds across a variety of
> # architectures, toolchains, kernel configurations, and make targets.
> #
> # TuxMake supports the concept of runtimes.
> # See https://docs.tuxmake.org/runtimes/, for that to work it requires
> # that you install podman or docker on your system.
> #
> # To install tuxmake on your system globally:
> # sudo pip3 install -U tuxmake
> #
> # See https://docs.tuxmake.org/ for complete documentation.
>
> tuxmake --runtime podman --target-arch arm --toolchain clang-10
> --kconfig davinci_all_defconfig
>
> build log,
> https://builds.tuxbuild.com/1opbM56yvX4uyeXV8JBwFNz9WEQ/
>
> --
> Linaro LKFT
> https://lkft.linaro.org



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdm%2Bz0PeK3HDyTqvs4ZTq8hf9UKvfMOrTawy3zKG%3DRzDYg%40mail.gmail.com.
