Return-Path: <clang-built-linux+bncBAABBXFIYCAQMGQETXLY3QA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73b.google.com (mail-qk1-x73b.google.com [IPv6:2607:f8b0:4864:20::73b])
	by mail.lfdr.de (Postfix) with ESMTPS id 997E031FF82
	for <lists+clang-built-linux@lfdr.de>; Fri, 19 Feb 2021 20:41:17 +0100 (CET)
Received: by mail-qk1-x73b.google.com with SMTP id f140sf4275192qke.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 19 Feb 2021 11:41:17 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1613763676; cv=pass;
        d=google.com; s=arc-20160816;
        b=BDCVsXE5ZHQjjPVgO7wN/Rz3Rau8Gg1r9wmmVsveRaO+dCwnEhId08N8jaTBis2OVk
         O9T5JtyErG/Yr6PjHELW4vCL6uLW408heLeikCYsKRTZAa8Rnfrm7NkyHaU02JupAl/P
         THtJmprjJanfsLVufncXQGZyleqei3rCxxQ/oWlTQrb1hczT1YZB7hAbizh5f7BStJcf
         VF5x4BYkUwIaJm3ftwj+hTWVqSJ70yQnvT6MsDpw7WA35cRjxGem03BuxJh9LPR9pY2A
         EDNsqrvJZScqRp5G4Pkid4BmfeiikMA+IcK/x6DYgPhBjUkrlIuzslOZ6Evn5EiQcWoz
         wvsg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=YhSpGA36dMvpLPH39B7aSwXvvcJL5ssKXU5vzZvSjhI=;
        b=q1cGUblBn/koUpT+K+MYKQCHjAnyxxHkTCbzCH9LKY7mpJnaLazj0nOv8AtdeYa+Xy
         xq+D86Upx0lNT7zy/LC5epE77ALySq1ktcSWCLidmGuklN5z0Ud7VvT16PaiL2qg77qT
         FX3IJKG5GiOa4lClwEV3jY+CZIb8DcpBS/x5Fqa2IipeZ6q62OVgWb/R0KbZL4elXyI5
         rKGFtO/INFKIStYWl05USHtp1MzUzwyAAW5MM7X8c6gzI65IlAa858KG9Eqy9w7wtwSg
         yoUirzEgaCKLjxSrfpTcuKP8txW3zg2HdPm2Ff7dURX9x0DL8Wg75cDj9+tAzvDvHO7m
         5bsg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=Dw2dV5rh;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=YhSpGA36dMvpLPH39B7aSwXvvcJL5ssKXU5vzZvSjhI=;
        b=omr7xIn2b1F8rzckfHSIfn2bR5jqpBp7dZlch4GBL09l83m6jj7PxwPWHM74OBSgK8
         zDrb5zJFIZr3S9uqSf9WWvKtwblVyyNWs4HrNC5hfOtFKTaADLE/bU8Abv9Qq1tWo1zK
         7bNaNsFyjiU25PqZVHd9BoV5gGQCMeRFepKlAS5Cd+V10Mfk1ubrrZpMid7ei0E8b/gw
         ZMiNAKLxri/XJsgahJcXomQfLUiUh441xTBqsh9d4mroLr5vZLclwmElRWcuhXk84lfW
         ZzvuUXQCMl0PnBWHgtmh9clKu6vXPMGileU56i+IaEFb+s/XhpPk7SGwm3DjWOuh5n5F
         VEPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=YhSpGA36dMvpLPH39B7aSwXvvcJL5ssKXU5vzZvSjhI=;
        b=rTpBsSGsjHJLnp9FWF0dJeyNpFvsMxiOA/uwkajq7md1nbBQqx6J4iTgbF3mZ5Heq7
         DV0LTk9DFnaV7cCdk10JyKYBwmOITnuze7TOaRTiIKLK8NtzWwHs3L5RuDaNWw+8wiWC
         KjfuaUBvvd67vOy6o0hf0Lk/1bSwka2arnk7sNo+RMwF0WgaFiwviPr0OewAgZvdEwQX
         QDCwOrpD5TK4kyPUKyK7ri8ofmOnKQ9dCw2gT+KP284jDn86rRqIOgrtOyFhS2ti61Xj
         7/O8M6RpMBaDWuJ5WR2Dh/acrA9t8RWGX9I0bVec/1iTTxCOuRy9UUtrRI6DS6aQv3kw
         Ig0g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530qsIorc5njEY0n5jANyvUua7GxUEsA3ObHxbEqj/oe70kQNchc
	urAGUnNT7RNfxDsFMt4fl7U=
X-Google-Smtp-Source: ABdhPJwy008CwKCX2sIbh4h6iRAbS9ex0BrTy8GVI83QuGDgaugPWYaK0BXZ36Hf/t0ERoydxvgDYQ==
X-Received: by 2002:a05:620a:851:: with SMTP id u17mr10786490qku.129.1613763676527;
        Fri, 19 Feb 2021 11:41:16 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:2d87:: with SMTP id i7ls3874699qtd.2.gmail; Fri, 19 Feb
 2021 11:41:16 -0800 (PST)
X-Received: by 2002:a05:622a:d4:: with SMTP id p20mr10174517qtw.141.1613763676279;
        Fri, 19 Feb 2021 11:41:16 -0800 (PST)
Received: by 2002:a37:77c1:0:b029:27a:5057:67cd with SMTP id s184-20020a3777c10000b029027a505767cdmsqkc;
        Wed, 17 Feb 2021 18:24:53 -0800 (PST)
X-Received: by 2002:a1f:8f09:: with SMTP id r9mr1944722vkd.10.1613615093049;
        Wed, 17 Feb 2021 18:24:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1613615093; cv=none;
        d=google.com; s=arc-20160816;
        b=PgZ7lwmHr4VWYmQkKeETrW/TSOUnN2RtV0+kCbw8JdCz7qQ2tvy9KyFhrK3FN5BTMd
         1IvvcLsc8hWv/QSRgRQNXavVghINvn54ebvermtX2USui3FJpMTKH8jXz8MmsF5muSnz
         vwfqOfa3sD0p2twJIOLFfOrhmWC/ZOGPPp25MhNaPjA8Ps/OS8T1LBFyAh600ZjzsKHe
         aPxKpH53y9K6NLtAQAcECvg+nEouYd0WiDGFlBlLg0e/6Xe1NQrGYfyPEBwzasalip26
         jV/BCfQnUWEaCNJx1bzdjZXdia7ojdeksMDS/u6pz5HW/hPXuRBshX1CwXd0KND/knvY
         3slw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=BKHKij0qeUumqHHZXO0fU069UkfL1mfkCHNe+k3IYU0=;
        b=vGQw5yp7yyL2pXomY8JNCHBbYZwVSLuzt93kELFu1WS4ap5zmu1NW3X6J5zfd3DlRB
         rOVKv4OWO1Wbq8dSO9xVTbNZKwDkUaqzvVNTLLtYk3X/QWPjPtapZXo+B8IRGcuHf6EY
         i9TAoSFMG2BzwF/SnvQEWFCwaOx1lIk/Mm5fA4wAeH16E70YQOgCBn9PoTaqNelgC+Fi
         LfBb2hLUi2o1KZWkE/0ai8mvSjmKSCPQEYZB4OdE+aHQOQqZZG9FY20HoBDwOabO+d87
         WL645oaXEZChRcpIHO9QuqzexF7dtEGMPnpqY1vRC59TpSj+SgsXXKScsB0bQlkGGRz6
         PROQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=Dw2dV5rh;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-01.nifty.com (conssluserg-01.nifty.com. [210.131.2.80])
        by gmr-mx.google.com with ESMTPS id y127si175386vsc.0.2021.02.17.18.24.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Feb 2021 18:24:52 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) client-ip=210.131.2.80;
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171]) (authenticated)
	by conssluserg-01.nifty.com with ESMTP id 11I2OH8r026372
	for <clang-built-linux@googlegroups.com>; Thu, 18 Feb 2021 11:24:18 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-01.nifty.com 11I2OH8r026372
X-Nifty-SrcIP: [209.85.214.171]
Received: by mail-pl1-f171.google.com with SMTP id r2so387715plr.10
        for <clang-built-linux@googlegroups.com>; Wed, 17 Feb 2021 18:24:17 -0800 (PST)
X-Received: by 2002:a17:902:bb87:b029:e1:d1f:2736 with SMTP id
 m7-20020a170902bb87b02900e10d1f2736mr2138431pls.1.1613615057037; Wed, 17 Feb
 2021 18:24:17 -0800 (PST)
MIME-Version: 1.0
References: <20210120174146.12287-1-lazerl0rd@thezest.dev>
In-Reply-To: <20210120174146.12287-1-lazerl0rd@thezest.dev>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Thu, 18 Feb 2021 11:23:40 +0900
X-Gmail-Original-Message-ID: <CAK7LNARgi+UEBiO_ZyTpYj7x-He-gcRQ9-MbYy8i2OkZL6dGcQ@mail.gmail.com>
Message-ID: <CAK7LNARgi+UEBiO_ZyTpYj7x-He-gcRQ9-MbYy8i2OkZL6dGcQ@mail.gmail.com>
Subject: Re: [PATCH] kbuild: Add support for Clang's polyhedral loop optimizer.
To: Diab Neiroukh <lazerl0rd@thezest.dev>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>,
        Danny Lin <danny@kdrag0n.dev>, Michal Marek <michal.lkml@markovi.net>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Kees Cook <keescook@chromium.org>,
        Masami Hiramatsu <mhiramat@kernel.org>,
        "Steven Rostedt (VMware)" <rostedt@goodmis.org>,
        Sami Tolvanen <samitolvanen@google.com>,
        Valentin Schneider <valentin.schneider@arm.com>,
        Nick Terrell <terrelln@fb.com>, Quentin Perret <qperret@google.com>,
        Johannes Weiner <hannes@cmpxchg.org>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=Dw2dV5rh;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>

On Thu, Jan 21, 2021 at 2:42 AM 'Diab Neiroukh' via Clang Built Linux
<clang-built-linux@googlegroups.com> wrote:
>
> Polly is able to optimize various loops throughout the kernel for cache
> locality. A mathematical representation of the program, based on
> polyhedra, is analysed to find opportunistic optimisations in memory
> access patterns which then leads to loop transformations.
>
> Polly is not built with LLVM by default, and requires LLVM to be compiled
> with the Polly "project". This can be done by adding Polly to
> -DLLVM_ENABLE_PROJECTS, for example:
>
> -DLLVM_ENABLE_PROJECTS="clang;libcxx;libcxxabi;polly"
>
> Preliminary benchmarking seems to show an improvement of around two
> percent across perf benchmarks:
>
> Benchmark                         | Control    | Polly
> --------------------------------------------------------
> bonnie++ -x 2 -s 4096 -r 0        | 12.610s    | 12.547s
> perf bench futex requeue          | 33.553s    | 33.094s
> perf bench futex wake             |  1.032s    |  1.021s
> perf bench futex wake-parallel    |  1.049s    |  1.025s
> perf bench futex requeue          |  1.037s    |  1.020s
>
> Furthermore, Polly does not produce a much larger image size netting it
> to be a "free" optimisation. A comparison of a bzImage for a kernel with
> and without Polly is shown below:
>
> bzImage        | stat --printf="%s\n"
> -------------------------------------
> Control        | 9333728
> Polly          | 9345792
>
> Compile times were one percent different at best, which is well within
> the range of noise. Therefore, I can say with certainty that Polly has
> a minimal effect on compile times, if none.
>
> Suggested-by: Danny Lin <danny@kdrag0n.dev>
> Signed-off-by: Diab Neiroukh <lazerl0rd@thezest.dev>



This patch was correctly sent to clang-built-linux ML,
but did not get any attention.


I did not evaluate anything about this patch, but
this patch is just adding several flags.

Please try to collect Reviewed-by, Tested-by, etc.
from Clang folks if you want this merged.


Just a minor comment:

Typos in the Makefile changes.
"beyound" -> "beyond"
"perfom" -> "perform"




> ---
>  Makefile     | 16 ++++++++++++++++
>  init/Kconfig | 13 +++++++++++++
>  2 files changed, 29 insertions(+)
>
> diff --git a/Makefile b/Makefile
> index b9d3a47c57cf..00f15bde5f8b 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -740,6 +740,22 @@ else ifdef CONFIG_CC_OPTIMIZE_FOR_SIZE
>  KBUILD_CFLAGS += -Os
>  endif
>
> +ifdef CONFIG_POLLY_CLANG
> +KBUILD_CFLAGS  += -mllvm -polly \
> +                  -mllvm -polly-ast-use-context \
> +                  -mllvm -polly-invariant-load-hoisting \
> +                  -mllvm -polly-opt-fusion=max \
> +                  -mllvm -polly-run-inliner \
> +                  -mllvm -polly-vectorizer=stripmine
> +# Polly may optimise loops with dead paths beyound what the linker
> +# can understand. This may negate the effect of the linker's DCE
> +# so we tell Polly to perfom proven DCE on the loops it optimises
> +# in order to preserve the overall effect of the linker's DCE.
> +ifdef CONFIG_LD_DEAD_CODE_DATA_ELIMINATION
> +KBUILD_CFLAGS  += -mllvm -polly-run-dce
> +endif
> +endif
> +
>  # Tell gcc to never replace conditional load with a non-conditional one
>  KBUILD_CFLAGS  += $(call cc-option,--param=allow-store-data-races=0)
>  KBUILD_CFLAGS  += $(call cc-option,-fno-allow-store-data-races)
> diff --git a/init/Kconfig b/init/Kconfig
> index 05131b3ad0f2..266d7d03ccd1 100644
> --- a/init/Kconfig
> +++ b/init/Kconfig
> @@ -177,6 +177,19 @@ config BUILD_SALT
>           This is mostly useful for distributions which want to ensure the
>           build is unique between builds. It's safe to leave the default.
>
> +config POLLY_CLANG
> +       bool "Use Clang Polly optimizations"
> +       depends on CC_IS_CLANG && $(cc-option,-mllvm -polly)
> +       depends on !COMPILE_TEST
> +       help
> +         This option enables Clang's polyhedral loop optimizer known as
> +         Polly. Polly is able to optimize various loops throughout the
> +         kernel for cache locality. This requires a Clang toolchain
> +         compiled with support for Polly. More information can be found
> +         from Polly's website:
> +
> +           https://polly.llvm.org
> +
>  config HAVE_KERNEL_GZIP
>         bool
>
> --
> 2.30.0
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210120174146.12287-1-lazerl0rd%40thezest.dev.



-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNARgi%2BUEBiO_ZyTpYj7x-He-gcRQ9-MbYy8i2OkZL6dGcQ%40mail.gmail.com.
