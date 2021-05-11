Return-Path: <clang-built-linux+bncBCN5HJ6RQMJBB5575KCAMGQEWK2UPNI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13f.google.com (mail-lf1-x13f.google.com [IPv6:2a00:1450:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id CAD2A37AA73
	for <lists+clang-built-linux@lfdr.de>; Tue, 11 May 2021 17:17:11 +0200 (CEST)
Received: by mail-lf1-x13f.google.com with SMTP id h6-20020ac24d260000b02901c679f8f74csf4372865lfk.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 11 May 2021 08:17:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620746231; cv=pass;
        d=google.com; s=arc-20160816;
        b=aOgeMZvFk8xnogpYhSPa/Z39rAHW3W/X07kLqyiJBiN2m6kskU6J2Eai2ROHAXbwf1
         X5HvUbGey0x3jJSbufWY4VcLFZkJcTFZPpscPlzvM9T/fwFntcn26ZjNg/1ThmPsDW60
         faQFSn7K6QXPZgxQHCVhR1+a+sbj3cA0iDL1ZFNI7Ru1/lazNt+w5zuGkGLCYPm4I+lW
         ShKpZKPjRY/Re3RaVHratgWP2ebQOU50zkEg1T1vbY9aPkwAu9QF4gX2v2PxrsbQBHtO
         35gVEIQ92ZGcuqRtrqWSf7mhkZ0DTfC92HiKJ9p9xpk3bDMJbR33fumrwIMchrN4bjVd
         qVGQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature
         :dkim-signature;
        bh=e3mn03Bgql8rZyDTytgsnQLZEkUhssrOfvgwwc+XrgA=;
        b=aZdoamOsR0Qrk/VQ/bzIb6Ow9Tc1hh579Bh3B+m8pDqHwE5Vj+yiq0jaVwcyCPz6bP
         MZZUzAlrUC3x7M3KHNg52khXvbz+sOJlCQ419+o9SysB2vx271EYOZiFlCGNKi1cpu73
         rLDZ4XusTJkFAWDJTL11PG3pUrDJFjqfzWWRweRLqUT848Zb9BcL92zV15wrxnh0Zkkq
         zj411Jx2Tw2rOyFFADSEHvI1JWnayfWPSGcfS2NVuqerp8ZztM4qwb3oogJMVoZYkPIE
         3a9nm/b5wUDcRdCImPnUvH4HyRJectnazrmlYq96Yh00d1SRxfaHcUw1Pc82rEUhLmoe
         0fWQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KvmvfOGC;
       spf=pass (google.com: domain of digetx@gmail.com designates 2a00:1450:4864:20::12b as permitted sender) smtp.mailfrom=digetx@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=e3mn03Bgql8rZyDTytgsnQLZEkUhssrOfvgwwc+XrgA=;
        b=LwpIiDXmQtC26Vfiv4CrurNgPCQQCckLrpPqyDl/+tRF1HITI+lfH1YVQ6Sm7u9/yk
         DvO7yrnGDZBox5xROhqfAM/2u7N3fLxdi6y6LYpuxlsbXHRznugEWbqlCX5i0nCCuWpq
         dxQ/G7gNBSp1h68Ac6Sp9MCvs7MK+f7QeD3yzFzXztFhYsWZs3A7dQb9En2UsoUii5AI
         HTYAYPhiqfwRHycZu9toBd9B4QJgR8CU41t3AGrp0LUBrSlv9zZvuyMQ6PEnaeHGFZb2
         YSzNz9w9WRiHLiIvoKBl/EgvoCb8pplGuoAH1WQAP/hJApeYy9uZbla+2BeO03InIs3X
         Vu2w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=e3mn03Bgql8rZyDTytgsnQLZEkUhssrOfvgwwc+XrgA=;
        b=kiAtvZ8VK6TYpyiwiW6Bk8ybf4FT10nXsOiNJWhARaT+F3gCv0x126aPbpgugjn8C1
         0xiucKGfVbLtHwAyDSwgWWpZs74Dpiku9J3EKTShpAwoeH5q+StBCN58G/A+Yb0/9wkI
         cG9lgY/GS5Mcf0FdaWLvKH13YcRv5bYAukhfKp2HrvfNZORWjoXmo7zt6X9ShSc0if2o
         WoKN9stf7aMJY4ZNf/cFjsPFZD5iDbGWKrCzkCldTul6QeNE1WhGkZFXPsYGGgS8cVQD
         kzb8mKnkzcqpgOTB7dK4wyJR4q1xkT+kbM+FrnrXoLMnHZXWNL6q4S904w3BVk7WzIva
         tLcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=e3mn03Bgql8rZyDTytgsnQLZEkUhssrOfvgwwc+XrgA=;
        b=gn6rPi/cquGdTQjaNpxndLZpb+4uq2BO8D/SFkK/Ti3mQgHj7p6v88Jd8MdDtghn6o
         Csyg99Aq3cIlffbDiEnhvW/SrCc7JrcuQ02y5pA8KKPfRXIOfwbtm2mkJwzyQEuXRRLd
         5u/3nZsZy0zSlx3eCgeLXwXhBRm5gEhUx8o5pInxffUYFb5w6iDIoVjpsobulvwpkRb6
         qDTxg+pb6Q3nDCLxQbK0jWPr/KH0T+7Zc7sAXjrOPa2znwqvJp+9tMQWPBaa8bc1rB4s
         mLeu9E1UuvgSkk2yF7hPyAhTIofUER+RK4lE/X9Lbd+Z8nadz8gfFqh6YyCdEvMlk/4u
         5UGw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5301gae6GKyZOThpoUfcnEvFFsa+zaLHpH7ijsnwu1TPFwvqKkf6
	JGcsBMnypxp7X28F+EjPfKc=
X-Google-Smtp-Source: ABdhPJwbUAMXt8XvLcDTdgkSGuFQ+5rRHhlPP7pTwvbl0xuECvnI9gKRb/26zlgxH/9AOz3RfxT5TA==
X-Received: by 2002:a2e:9cc2:: with SMTP id g2mr8989858ljj.136.1620746231325;
        Tue, 11 May 2021 08:17:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:7217:: with SMTP id n23ls371941ljc.8.gmail; Tue, 11 May
 2021 08:17:10 -0700 (PDT)
X-Received: by 2002:a2e:2419:: with SMTP id k25mr24876643ljk.266.1620746230272;
        Tue, 11 May 2021 08:17:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620746230; cv=none;
        d=google.com; s=arc-20160816;
        b=hpgyM7uh3mgV9d29vH5lMeHiTrFg13PmvApEA4nMRk04abHjz+D7OlR8WOZsOQjfCy
         1zTuTz7MbLiY7AN5Tx76wpghh8Kqp3Csxu6pVsB9nKX/SjuuMEiP/YHB2wnw144/aOvO
         vLGj0BxxGqtr/Wyki1yFlbjitnxjIl8PMCFscqwnZFNMxkJgSHvfwJVIHkrzR5KJ+u43
         6wGlP766IElO9lxHbQm1r7l+ckz99LyFbQLHoZLGfN117FP4VDImPFNlZWjpJnYpsdRd
         hPcDu1A5KdjaQGvbNqB0u1G2IntGUbjGqA4PD/4X/YDqDGjsEZJUJn52rQPqeRyMyQfu
         bsKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=l0+Py+3CSfNlV3pR44naNix1unXeingMcJ67NIXwY+s=;
        b=T41IXeId9IEluGydwapGPb1yk+odFmJx+Wu6x5R07WtnzahEU3KdVg9+86ZYiB2+UM
         q00mByN6gr6pUUlmdmqIgx5fK2GvErfylSU1qlk0Jitfg4mM0KzlblR0NsX1BHNJiYav
         woLyUJZytukNSnVBQ3DIHk3gUwsmO0UOZOZuxEQ+gap44guDtkyfSxSFP9hauf2NKXj3
         vywGGIpdCaXbQhprU2vpJasnA62CILWkmheklhMLm09tE21gJfteDA5ZrTrrsHVqSznQ
         Tdkot3QeSsoUe6o5ayxoEaIr7bQW7l8mJxGg51Z34zB19zbwxi1HcpsvQFE7SgQGo3bI
         V/RA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KvmvfOGC;
       spf=pass (google.com: domain of digetx@gmail.com designates 2a00:1450:4864:20::12b as permitted sender) smtp.mailfrom=digetx@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com. [2a00:1450:4864:20::12b])
        by gmr-mx.google.com with ESMTPS id o20si751008lfu.5.2021.05.11.08.17.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 May 2021 08:17:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of digetx@gmail.com designates 2a00:1450:4864:20::12b as permitted sender) client-ip=2a00:1450:4864:20::12b;
Received: by mail-lf1-x12b.google.com with SMTP id z13so29220393lft.1
        for <clang-built-linux@googlegroups.com>; Tue, 11 May 2021 08:17:10 -0700 (PDT)
X-Received: by 2002:a05:6512:3f04:: with SMTP id y4mr22107926lfa.458.1620746229956;
        Tue, 11 May 2021 08:17:09 -0700 (PDT)
Received: from [192.168.2.145] (109-252-193-91.dynamic.spd-mgts.ru. [109.252.193.91])
        by smtp.googlemail.com with ESMTPSA id j14sm2657790lfc.47.2021.05.11.08.17.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 May 2021 08:17:09 -0700 (PDT)
Subject: Re: [PATCH v1 2/2] memory: tegra: Enable compile testing for all
 drivers
To: kernel test robot <lkp@intel.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, Krzysztof Kozlowski <krzk@kernel.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
 linux-kernel@vger.kernel.org, linux-tegra@vger.kernel.org
References: <20210510213729.7095-3-digetx@gmail.com>
 <202105112125.VctfC6sX-lkp@intel.com>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <dd0b550e-76a0-bfbc-9d6f-5d867812046d@gmail.com>
Date: Tue, 11 May 2021 18:17:08 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <202105112125.VctfC6sX-lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: digetx@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=KvmvfOGC;       spf=pass
 (google.com: domain of digetx@gmail.com designates 2a00:1450:4864:20::12b as
 permitted sender) smtp.mailfrom=digetx@gmail.com;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=gmail.com
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

11.05.2021 16:58, kernel test robot =D0=BF=D0=B8=D1=88=D0=B5=D1=82:
> Hi Dmitry,
>=20
> I love your patch! Perhaps something to improve:
>=20
> [auto build test WARNING on tegra/for-next]
> [also build test WARNING on v5.13-rc1 next-20210511]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch]
>=20
> url:    https://github.com/0day-ci/linux/commits/Dmitry-Osipenko/Enable-c=
ompile-testing-for-Tegra-memory-drivers/20210511-053910
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/tegra/linux.git f=
or-next
> config: powerpc-randconfig-r032-20210511 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project a0fe=
d635fe1701470062495a6ffee1c608f3f1bc)
> reproduce (this is a W=3D1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbi=
n/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install powerpc cross compiling tool for clang build
>         # apt-get install binutils-powerpc-linux-gnu
>         # https://github.com/0day-ci/linux/commit/ecd67b1d49eb33c9821130a=
2b3b896bab395118d
>         git remote add linux-review https://github.com/0day-ci/linux
>         git fetch --no-tags linux-review Dmitry-Osipenko/Enable-compile-t=
esting-for-Tegra-memory-drivers/20210511-053910
>         git checkout ecd67b1d49eb33c9821130a2b3b896bab395118d
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross W=
=3D1 ARCH=3Dpowerpc=20
>=20
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>=20
> All warnings (new ones prefixed by >>):
>=20
>    __do_insb
>    ^
>    arch/powerpc/include/asm/io.h:556:56: note: expanded from macro '__do_=
insb'
>    #define __do_insb(p, b, n)      readsb((PCI_IO_ADDR)_IO_BASE+(p), (b),=
 (n))
>                                           ~~~~~~~~~~~~~~~~~~~~~^
>    In file included from drivers/memory/tegra/tegra30-emc.c:18:
>    In file included from include/linux/interrupt.h:11:
>    In file included from include/linux/hardirq.h:10:
>    In file included from arch/powerpc/include/asm/hardirq.h:6:
>    In file included from include/linux/irq.h:20:
>    In file included from include/linux/io.h:13:
>    In file included from arch/powerpc/include/asm/io.h:619:
>    arch/powerpc/include/asm/io-defs.h:45:1: warning: performing pointer a=
rithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmet=
ic]
>    DEF_PCI_AC_NORET(insw, (unsigned long p, void *b, unsigned long c),
>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PC=
I_AC_NORET'
>                    __do_##name al;                                 \
>                    ^~~~~~~~~~~~~~
>    <scratch space>:211:1: note: expanded from here
>    __do_insw
>    ^
>    arch/powerpc/include/asm/io.h:557:56: note: expanded from macro '__do_=
insw'
>    #define __do_insw(p, b, n)      readsw((PCI_IO_ADDR)_IO_BASE+(p), (b),=
 (n))
>                                           ~~~~~~~~~~~~~~~~~~~~~^
>    In file included from drivers/memory/tegra/tegra30-emc.c:18:
>    In file included from include/linux/interrupt.h:11:
>    In file included from include/linux/hardirq.h:10:
>    In file included from arch/powerpc/include/asm/hardirq.h:6:
>    In file included from include/linux/irq.h:20:
>    In file included from include/linux/io.h:13:
>    In file included from arch/powerpc/include/asm/io.h:619:
>    arch/powerpc/include/asm/io-defs.h:47:1: warning: performing pointer a=
rithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmet=
ic]
>    DEF_PCI_AC_NORET(insl, (unsigned long p, void *b, unsigned long c),
>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PC=
I_AC_NORET'
>                    __do_##name al;                                 \
>                    ^~~~~~~~~~~~~~
>    <scratch space>:213:1: note: expanded from here
>    __do_insl
>    ^
>    arch/powerpc/include/asm/io.h:558:56: note: expanded from macro '__do_=
insl'
>    #define __do_insl(p, b, n)      readsl((PCI_IO_ADDR)_IO_BASE+(p), (b),=
 (n))
>                                           ~~~~~~~~~~~~~~~~~~~~~^
>    In file included from drivers/memory/tegra/tegra30-emc.c:18:
>    In file included from include/linux/interrupt.h:11:
>    In file included from include/linux/hardirq.h:10:
>    In file included from arch/powerpc/include/asm/hardirq.h:6:
>    In file included from include/linux/irq.h:20:
>    In file included from include/linux/io.h:13:
>    In file included from arch/powerpc/include/asm/io.h:619:
>    arch/powerpc/include/asm/io-defs.h:49:1: warning: performing pointer a=
rithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmet=
ic]
>    DEF_PCI_AC_NORET(outsb, (unsigned long p, const void *b, unsigned long=
 c),
>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~~~
>    arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PC=
I_AC_NORET'
>                    __do_##name al;                                 \
>                    ^~~~~~~~~~~~~~
>    <scratch space>:215:1: note: expanded from here
>    __do_outsb
>    ^
>    arch/powerpc/include/asm/io.h:559:58: note: expanded from macro '__do_=
outsb'
>    #define __do_outsb(p, b, n)     writesb((PCI_IO_ADDR)_IO_BASE+(p),(b),=
(n))
>                                            ~~~~~~~~~~~~~~~~~~~~~^
>    In file included from drivers/memory/tegra/tegra30-emc.c:18:
>    In file included from include/linux/interrupt.h:11:
>    In file included from include/linux/hardirq.h:10:
>    In file included from arch/powerpc/include/asm/hardirq.h:6:
>    In file included from include/linux/irq.h:20:
>    In file included from include/linux/io.h:13:
>    In file included from arch/powerpc/include/asm/io.h:619:
>    arch/powerpc/include/asm/io-defs.h:51:1: warning: performing pointer a=
rithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmet=
ic]
>    DEF_PCI_AC_NORET(outsw, (unsigned long p, const void *b, unsigned long=
 c),
>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~~~
>    arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PC=
I_AC_NORET'
>                    __do_##name al;                                 \
>                    ^~~~~~~~~~~~~~
>    <scratch space>:217:1: note: expanded from here
>    __do_outsw
>    ^
>    arch/powerpc/include/asm/io.h:560:58: note: expanded from macro '__do_=
outsw'
>    #define __do_outsw(p, b, n)     writesw((PCI_IO_ADDR)_IO_BASE+(p),(b),=
(n))
>                                            ~~~~~~~~~~~~~~~~~~~~~^
>    In file included from drivers/memory/tegra/tegra30-emc.c:18:
>    In file included from include/linux/interrupt.h:11:
>    In file included from include/linux/hardirq.h:10:
>    In file included from arch/powerpc/include/asm/hardirq.h:6:
>    In file included from include/linux/irq.h:20:
>    In file included from include/linux/io.h:13:
>    In file included from arch/powerpc/include/asm/io.h:619:
>    arch/powerpc/include/asm/io-defs.h:53:1: warning: performing pointer a=
rithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmet=
ic]
>    DEF_PCI_AC_NORET(outsl, (unsigned long p, const void *b, unsigned long=
 c),
>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~~~
>    arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PC=
I_AC_NORET'
>                    __do_##name al;                                 \
>                    ^~~~~~~~~~~~~~
>    <scratch space>:219:1: note: expanded from here
>    __do_outsl
>    ^
>    arch/powerpc/include/asm/io.h:561:58: note: expanded from macro '__do_=
outsl'
>    #define __do_outsl(p, b, n)     writesl((PCI_IO_ADDR)_IO_BASE+(p),(b),=
(n))
>                                            ~~~~~~~~~~~~~~~~~~~~~^
>>> drivers/memory/tegra/tegra30-emc.c:757:18: warning: implicit conversion=
 from 'unsigned long' to 'u32' (aka 'unsigned int') changes value from 1844=
6744071562067985 to 2147483665 [-Wconstant-conversion]
>                    writel_relaxed(EMC_ZQ_CAL_LONG_CMD_DEV0,
>                    ~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~
>    drivers/memory/tegra/tegra30-emc.c:161:36: note: expanded from macro '=
EMC_ZQ_CAL_LONG_CMD_DEV0'
>            (DRAM_DEV_SEL_0 | EMC_ZQ_CAL_LONG | EMC_ZQ_CAL_CMD)
>                                              ^
>    arch/powerpc/include/asm/io.h:679:40: note: expanded from macro 'write=
l_relaxed'
>    #define writel_relaxed(v, addr) writel(v, addr)
>                                    ~~~~~~ ^
>    13 warnings generated.
> --
>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~~~~~~
>    arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PC=
I_AC_NORET'
>                    __do_##name al;                                 \
>                    ^~~~~~~~~~~~~~
>    <scratch space>:203:1: note: expanded from here
>    __do_outl
>    ^
>    arch/powerpc/include/asm/io.h:537:62: note: expanded from macro '__do_=
outl'
>    #define __do_outl(val, port)    writel(val,(PCI_IO_ADDR)_IO_BASE+port)=
;
>                                               ~~~~~~~~~~~~~~~~~~~~~^
>    In file included from drivers/memory/tegra/tegra124-emc.c:16:
>    In file included from include/linux/io.h:13:
>    In file included from arch/powerpc/include/asm/io.h:619:
>    arch/powerpc/include/asm/io-defs.h:43:1: warning: performing pointer a=
rithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmet=
ic]
>    DEF_PCI_AC_NORET(insb, (unsigned long p, void *b, unsigned long c),
>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PC=
I_AC_NORET'
>                    __do_##name al;                                 \
>                    ^~~~~~~~~~~~~~
>    <scratch space>:217:1: note: expanded from here
>    __do_insb
>    ^
>    arch/powerpc/include/asm/io.h:556:56: note: expanded from macro '__do_=
insb'
>    #define __do_insb(p, b, n)      readsb((PCI_IO_ADDR)_IO_BASE+(p), (b),=
 (n))
>                                           ~~~~~~~~~~~~~~~~~~~~~^
>    In file included from drivers/memory/tegra/tegra124-emc.c:16:
>    In file included from include/linux/io.h:13:
>    In file included from arch/powerpc/include/asm/io.h:619:
>    arch/powerpc/include/asm/io-defs.h:45:1: warning: performing pointer a=
rithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmet=
ic]
>    DEF_PCI_AC_NORET(insw, (unsigned long p, void *b, unsigned long c),
>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PC=
I_AC_NORET'
>                    __do_##name al;                                 \
>                    ^~~~~~~~~~~~~~
>    <scratch space>:219:1: note: expanded from here
>    __do_insw
>    ^
>    arch/powerpc/include/asm/io.h:557:56: note: expanded from macro '__do_=
insw'
>    #define __do_insw(p, b, n)      readsw((PCI_IO_ADDR)_IO_BASE+(p), (b),=
 (n))
>                                           ~~~~~~~~~~~~~~~~~~~~~^
>    In file included from drivers/memory/tegra/tegra124-emc.c:16:
>    In file included from include/linux/io.h:13:
>    In file included from arch/powerpc/include/asm/io.h:619:
>    arch/powerpc/include/asm/io-defs.h:47:1: warning: performing pointer a=
rithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmet=
ic]
>    DEF_PCI_AC_NORET(insl, (unsigned long p, void *b, unsigned long c),
>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PC=
I_AC_NORET'
>                    __do_##name al;                                 \
>                    ^~~~~~~~~~~~~~
>    <scratch space>:221:1: note: expanded from here
>    __do_insl
>    ^
>    arch/powerpc/include/asm/io.h:558:56: note: expanded from macro '__do_=
insl'
>    #define __do_insl(p, b, n)      readsl((PCI_IO_ADDR)_IO_BASE+(p), (b),=
 (n))
>                                           ~~~~~~~~~~~~~~~~~~~~~^
>    In file included from drivers/memory/tegra/tegra124-emc.c:16:
>    In file included from include/linux/io.h:13:
>    In file included from arch/powerpc/include/asm/io.h:619:
>    arch/powerpc/include/asm/io-defs.h:49:1: warning: performing pointer a=
rithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmet=
ic]
>    DEF_PCI_AC_NORET(outsb, (unsigned long p, const void *b, unsigned long=
 c),
>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~~~
>    arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PC=
I_AC_NORET'
>                    __do_##name al;                                 \
>                    ^~~~~~~~~~~~~~
>    <scratch space>:223:1: note: expanded from here
>    __do_outsb
>    ^
>    arch/powerpc/include/asm/io.h:559:58: note: expanded from macro '__do_=
outsb'
>    #define __do_outsb(p, b, n)     writesb((PCI_IO_ADDR)_IO_BASE+(p),(b),=
(n))
>                                            ~~~~~~~~~~~~~~~~~~~~~^
>    In file included from drivers/memory/tegra/tegra124-emc.c:16:
>    In file included from include/linux/io.h:13:
>    In file included from arch/powerpc/include/asm/io.h:619:
>    arch/powerpc/include/asm/io-defs.h:51:1: warning: performing pointer a=
rithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmet=
ic]
>    DEF_PCI_AC_NORET(outsw, (unsigned long p, const void *b, unsigned long=
 c),
>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~~~
>    arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PC=
I_AC_NORET'
>                    __do_##name al;                                 \
>                    ^~~~~~~~~~~~~~
>    <scratch space>:225:1: note: expanded from here
>    __do_outsw
>    ^
>    arch/powerpc/include/asm/io.h:560:58: note: expanded from macro '__do_=
outsw'
>    #define __do_outsw(p, b, n)     writesw((PCI_IO_ADDR)_IO_BASE+(p),(b),=
(n))
>                                            ~~~~~~~~~~~~~~~~~~~~~^
>    In file included from drivers/memory/tegra/tegra124-emc.c:16:
>    In file included from include/linux/io.h:13:
>    In file included from arch/powerpc/include/asm/io.h:619:
>    arch/powerpc/include/asm/io-defs.h:53:1: warning: performing pointer a=
rithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmet=
ic]
>    DEF_PCI_AC_NORET(outsl, (unsigned long p, const void *b, unsigned long=
 c),
>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~~~
>    arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PC=
I_AC_NORET'
>                    __do_##name al;                                 \
>                    ^~~~~~~~~~~~~~
>    <scratch space>:227:1: note: expanded from here
>    __do_outsl
>    ^
>    arch/powerpc/include/asm/io.h:561:58: note: expanded from macro '__do_=
outsl'
>    #define __do_outsl(p, b, n)     writesl((PCI_IO_ADDR)_IO_BASE+(p),(b),=
(n))
>                                            ~~~~~~~~~~~~~~~~~~~~~^
>>> drivers/memory/tegra/tegra124-emc.c:802:26: warning: implicit conversio=
n from 'unsigned long' to 'u32' (aka 'unsigned int') changes value from 184=
46744071562067985 to 2147483665 [-Wconstant-conversion]
>                    emc_ccfifo_writel(emc, EMC_ZQ_CAL_LONG_CMD_DEV0, EMC_Z=
Q_CAL);
>                    ~~~~~~~~~~~~~~~~~      ^~~~~~~~~~~~~~~~~~~~~~~~
>    drivers/memory/tegra/tegra124-emc.c:154:36: note: expanded from macro =
'EMC_ZQ_CAL_LONG_CMD_DEV0'
>            (DRAM_DEV_SEL_0 | EMC_ZQ_CAL_LONG | EMC_ZQ_CAL_CMD)
>             ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~
>    13 warnings generated.

This doesn't look like a useful warning from clang, it should see that
the constant value itself isn't truncated, hence it should be a problem
of clang. Do you think it's okay to ignore this nonsense?

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/dd0b550e-76a0-bfbc-9d6f-5d867812046d%40gmail.com.
