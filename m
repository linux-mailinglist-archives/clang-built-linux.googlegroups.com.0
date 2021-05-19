Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBN7KSWCQMGQEDF2LM4I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x139.google.com (mail-lf1-x139.google.com [IPv6:2a00:1450:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E7B23897E1
	for <lists+clang-built-linux@lfdr.de>; Wed, 19 May 2021 22:29:44 +0200 (CEST)
Received: by mail-lf1-x139.google.com with SMTP id d26-20020a194f1a0000b02902390d1deb9dsf2534250lfb.18
        for <lists+clang-built-linux@lfdr.de>; Wed, 19 May 2021 13:29:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621456183; cv=pass;
        d=google.com; s=arc-20160816;
        b=TBAArOylJPsCme7zT+GMGQoKiUc46VN/1K1XvsuJNgGHasTn2zrEbBEOt2Uc7mVxOl
         rC/SferFOtVenHrHwBkvWy40pgd844+rc5u/521AxhSb8YMgHhpV1chRRcIoec5fDxvp
         gWBtG78Rrur7/u5iFJcjguP/2s5cfHhX3u7/gSWk25ud9ec2+ns/p81JdkBmNhn2p4PO
         JqiPgM8M17bLq9bLyNeTB0FghssTdjZnbeQIcCxRt161Yy7VodxFFQZHxRyAKWQg9pql
         b5M7tJcJVw0vR/HZp0nAHferB/onrjNwQs9QaI0TBK45r+w7wzLJt0Q538Dmi2jdx1R4
         i1kw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=VT6IPDQJNfyoLJSQjw76SYQY19pd+H8tcRw/+Ppg1gk=;
        b=hDJMV0CvpEsD4GbvmOUmXgJmAOtQwqBS5FML9SXG5/zKiFbBS0e+l06w/3v36JNr4j
         y9o4t79/f3NzR0GYxUKRD6DvcLMS7Occ1F+rlo4ymi58LtyJ9NkJQK92Zn1rALXfl6v7
         oe/xUmH+rm0tfu7Lio+Erl79IGKldIvP7VGgjVpTjZWxEdXsJHsAWEyFtK8UuwBZjBNn
         L+Lr4QiOiLORBcn0V5DpzitIgge93uqlHFALmjYtU5h/2dW+tEtV3X+/PGuyPa/7rT1J
         gGy3vAFoTYnt4yl3eY03PGIE417caxClp+MRyS35XiGYQ+r39AD+rn1fp5P48QA6uwBP
         bE1A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.10 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VT6IPDQJNfyoLJSQjw76SYQY19pd+H8tcRw/+Ppg1gk=;
        b=DolnutQu9wiXhZ1KhVBihV4hqo6UJJZf2lOtp3EUnB1HhpUPzEn8EAUzZQFKGGHHaL
         O8+JljAI0MtlUj1II0koa6VVYX/1FZ9dB+sf52et/wqCpOjpCwHqUEcc+T7TnqZObozv
         4kMMh4yL0aeXzN1kiVUJu0MVRMLJG7szh+bMK/H3b6coTmqng9JMcZxl6CT4rLGokvum
         bOcHz2b8j+ThiQdAW6onfGqNDmK6rN95W9Ucx3rPO2561MZO+XRDcmJmcGjBZOFHqpfi
         a/Puryn2R0jONsXxp07W9Vh6hCtCS+YlNKT8/MuIovOqW7t6wnLflTpJ7rXGDOXjMiAT
         NokQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VT6IPDQJNfyoLJSQjw76SYQY19pd+H8tcRw/+Ppg1gk=;
        b=A+TyaZyLSlrRc4zdKbLq8CwUzmlzrGorl5nJz/E1ya5RMxyn7VzohVCWVuYSJxzQz3
         v1lJS4YiJEb7PMcv0BR6Aaq47vK4y/sceltRyOfXTc+sp0vSjDWSF9I+JUcgySMLP4Es
         X2iiKJy8FTiqjMHornJr1d18rxLn63b4PrU/xnoF+QcvEStBqKXKkUM5WHqY+NzICQ/j
         Es0rJNQa0nsGbFL/57DH/zTtSC1/9TU1ENaNVWf+Zq1vrM0qkib6+PVQNVOakKq73EkL
         Nc2IKx19NQBv9YYw55EVAs7b+qeBGbX4lEKMJhWHjoGCVqLqlSwvVYvShnTdU7hjKzm9
         RvyQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531xpOifrFLdvIPnXO2Y8XyXJ1AoP4gE3GM5X6jN37hQaKB078Ye
	yX9viw6wW9wYPj/fv9ECpOs=
X-Google-Smtp-Source: ABdhPJy6cAssxEcm27Ns68mqYIcU9D6IOkxAPV4dqrzlj2i/C8vHVszBPx/Gi6ExIuoThX6L46EKQA==
X-Received: by 2002:a19:f01a:: with SMTP id p26mr882683lfc.132.1621456183506;
        Wed, 19 May 2021 13:29:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:230f:: with SMTP id o15ls283673lfu.1.gmail; Wed, 19
 May 2021 13:29:42 -0700 (PDT)
X-Received: by 2002:ac2:5f44:: with SMTP id 4mr928462lfz.154.1621456182352;
        Wed, 19 May 2021 13:29:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621456182; cv=none;
        d=google.com; s=arc-20160816;
        b=G3oQFJ71gK3XdmtI6wpGQb6UB6wqvTmez7Kj3IYiDl9r1f3B9RPtidZd2xKmn2cni1
         jFTrWlgFq8Z1bgELhcVWEgGYhPt3jp4GQzrkORllYV2BUhcsmZg1q4Q3mp8cm8V8Gbpl
         SUus5YxfL9D67TFQWd9vYiV+IvuWU/KIiR7K5uGGCftijWD414TFDFBue+Tbcj7GuEAI
         6+pWZVD11P7ef0qqhI7/ToJFOpOoOYRjvIreZbnIr6av9KjeAaiMZqOzbQPU0rBER7HZ
         B9OeJ7H+RmCEvENkAUWEXwMUiKVvJippQR4ukCJeVExJefip0QXu/gYNiqqwDRkqr/k1
         Ij3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=Hf4qvFsfJ3bflVbNR3NwPgsM/kBmSXLtMU/CFB3Gdik=;
        b=WtwJsolpLWQkYWJMGL7HIIklbwEo5gDgR3Tl02EpZL1qaoFBITodPaeBqj8eLpUjDF
         stYNALfGZKQtt+Cftem59vSKhbp/tgcmldzXYpGWzpzweJh4blHsUKapl0+7F4yzxVYI
         VIyjV455WyQgp1a4mXVw3/orw+Uoym99LlnFMLm8wO57S1vP1/Nq2HE7S2zMKAHW0DHd
         TbOy1Umoka1/bu+BJ5+vFU+4sR1P5cFfs9z/yClMOxOjhFtgizQM5sMrtzn3dzKVbI3U
         knHWmxRTkGv4vd1U6pYzJX3SUfsjDGXMqhaXxRvv9wUZxhvt0q/KDwI7IK9b1F1BWCER
         xMSw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.10 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.10])
        by gmr-mx.google.com with ESMTPS id k35si21936lfv.3.2021.05.19.13.29.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 May 2021 13:29:42 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.17.10 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.10;
Received: from mail-wr1-f49.google.com ([209.85.221.49]) by
 mrelayeu.kundenserver.de (mreue107 [213.165.67.113]) with ESMTPSA (Nemesis)
 id 1MyKYE-1lXQBF2bxE-00ydly for <clang-built-linux@googlegroups.com>; Wed, 19
 May 2021 22:29:41 +0200
Received: by mail-wr1-f49.google.com with SMTP id p7so11607401wru.10
        for <clang-built-linux@googlegroups.com>; Wed, 19 May 2021 13:29:41 -0700 (PDT)
X-Received: by 2002:adf:e589:: with SMTP id l9mr722192wrm.361.1621456181313;
 Wed, 19 May 2021 13:29:41 -0700 (PDT)
MIME-Version: 1.0
References: <202105200357.eXI65Gfu-lkp@intel.com>
In-Reply-To: <202105200357.eXI65Gfu-lkp@intel.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 19 May 2021 22:28:27 +0200
X-Gmail-Original-Message-ID: <CAK8P3a2j61ouv8h-rWj7zPzjZ8Ok7GtQpyT5NaiYGxwxWHfwAw@mail.gmail.com>
Message-ID: <CAK8P3a2j61ouv8h-rWj7zPzjZ8Ok7GtQpyT5NaiYGxwxWHfwAw@mail.gmail.com>
Subject: Re: [linux-stable-rc:linux-5.10.y 3189/5262] drivers/usb/dwc2/hcd.c:3835:6:
 warning: stack frame size of 1032 bytes in function 'dwc2_hcd_dump_state'
To: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Nathan Chancellor <nathan@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Andrew Morton <akpm@linux-foundation.org>, 
	Linux Memory Management List <linux-mm@kvack.org>
Content-Type: text/plain; charset="UTF-8"
X-Provags-ID: V03:K1:ghiPdFwQQUZLmG4DKOuD2RXxSB1AMkYXMNbvycHKKs2qL9az01I
 tcqkmt71cz/64Ub31KN2h3YFZiJCW/yNZnZ0N+hikx+hlWjPu2Lq6O/A8lE5/wq8vwCF2aC
 0b+BtkgVYPNdTxPp/ReaYrKAd03KuUf40B5mC2NXCSDYMb/yz31DiRItw9+fe60eGpcUwfH
 QZjMGs6W2/bGytf8XEVhw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:JKpX0sMfpYM=:F+yoc/FqJav5iogTwVbA01
 M9x3axO3LcFPqIoVbCXGIZ8OoUMsez3ehaX+ihTcbNZlSB0Qf1luwqeGS4m6NhQYdoJ47i/hz
 2DiKsKdf4cyUsrqJjgh/rMjY3TV5u9jnLbmoZ6WYZlbLay8TuChW43Lraj5w5tv0b4OLb+5cz
 ix7eQSRKG8qI1sdyQapVJwDyxHPOYCDf+kjsjpUIhQPJEN2BqKTSbo7NTzwAC1Ywf1mg6VeVT
 bkUG3c7/s0rgc1jN9cmQP1QGP/WM6INFiGb6ZmJxgvo4bVcsPYvLhdGR2rrSinTV2xtIqZ947
 wOizLYV7Fd02pWR2UWMqP0xaNBDhdYkhiuAtEstddA5wqfacFu60ZEgXNBgsVkMuv0oYHcSHs
 X5GTkTaaWNZg08HCu5pWehBF1n77fVilkQLzkILef5Mykr9zIBw6k2hJbo5Nyqfk2L4gTaZIe
 pyPiIXAa7UiFhuncW1P+KPHd+SSftCbL/CFASZJJsVY/f1FYlat0JQgwrZA0y1oG7U/QryPDC
 CaVYDznoux26pHpqoqcVzklVspsny/U87lOLFSzjcTEjIrzogeaQuDvsVmu8xnLDilv0owNNN
 ui2WGnofeSayXHEYjNYhK1seSmln9SO5wfi6Y9djSRA8mfTBUFMmze2F1eUKP9znItDhcMevp
 rPYc=
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 212.227.17.10 is neither permitted nor denied by best guess
 record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
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

On Wed, May 19, 2021 at 9:48 PM kernel test robot <lkp@intel.com> wrote:
>
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git linux-5.10.y
> head:   689e89aee55c565fe90fcdf8a7e53f2f976c5946
> commit: 5f2f616343b1d62d26f24316fbfc107ecf0983a9 [3189/5262] linux/compiler-clang.h: define HAVE_BUILTIN_BSWAP*
> config: mips-randconfig-r015-20210519 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 8e93d10633d751a3e9169bf9fa68326925ffa097)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install mips cross compiling tool for clang build
>         # apt-get install binutils-mips-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git/commit/?id=5f2f616343b1d62d26f24316fbfc107ecf0983a9
>         git remote add linux-stable-rc https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git
>         git fetch --no-tags linux-stable-rc linux-5.10.y
>         git checkout 5f2f616343b1d62d26f24316fbfc107ecf0983a9
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=mips
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>

I analyzed another bug like this today, and I think this is again just
CONFIG_UBSAN_ALIGNMENT=y
on mips/clang causing tons of these warnings.

I don't think this should be considered a regression, but we may want
to change either the
kernel or the 0day bot from test building this combination of options.

       Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a2j61ouv8h-rWj7zPzjZ8Ok7GtQpyT5NaiYGxwxWHfwAw%40mail.gmail.com.
