Return-Path: <clang-built-linux+bncBDDZ5LVW4IHBBRWG5KCAMGQENA5HX5A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x537.google.com (mail-ed1-x537.google.com [IPv6:2a00:1450:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D57537AAB9
	for <lists+clang-built-linux@lfdr.de>; Tue, 11 May 2021 17:31:19 +0200 (CEST)
Received: by mail-ed1-x537.google.com with SMTP id d8-20020a0564020008b0290387d38e3ce0sf11150685edu.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 11 May 2021 08:31:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620747079; cv=pass;
        d=google.com; s=arc-20160816;
        b=wk6vEcz2xbYqeUOPnbb3t8xBzSEuXQwviAVAzLE983CQGUzF2AV5eoMbjLd19F29oL
         Akgs0JPj6ZmFKR4ikfcpNgIzrJ8TGLddOLIOILtcLpuhYyXX/9cveoBrmhEFYe9V6Knh
         xgV1/YgLbPqHbJS1hw4xcKKC0p2rqjKRDoGBn76T3Dsz5oKx+BJt384JqCEbdFczQg9L
         tTvdqFuEUuPytTrPSfLqDA3rq594oRCnaUa2LUTQXHtmED6/V4mxjCVvw/+k6HBuigFm
         75AqKPmzqUZwE9N/7btarbLBrYWK5kXv0XCVg782hwOD/8rzHTgdoDAFR+eaJvdiYQbT
         NHVQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=LnvLa+n1/4kRczNVO9dZPKlZBIr50gEV/6uSMLN/QUQ=;
        b=HTtnWzNmbZ+dW8tAgbROKFXOen6ClrTJrkEdXzLoDXKffm/eNt3eSyWvBZZNnaWTta
         FB/xGbuqMesyNkHsHnVhOExkCc7B7IpMPZ0MpipkZMjC28GxprMgnVzwqemYGyLS2/7x
         GguDeM3UZDlgmFGDxyu0CR27d3Hez3no0uLkFCsdbjo5Td+8JXJwPTRSJtXyAPhl8bEo
         JGxPkvZIskaJfB1cM5HRueLKnXS7Vwba3yqT/J+fPAYDOO+mwBOAoWdtIg7+qA+xW3sx
         wKBCO/oyq5y2qHdZkFl16IsXwZfru8Z4n0jXg9Yk3rI8Eg2xRd2pM0hID5Lx0o+FpHXG
         8UmA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of krzysztof.kozlowski@canonical.com designates 91.189.89.112 as permitted sender) smtp.mailfrom=krzysztof.kozlowski@canonical.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=canonical.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LnvLa+n1/4kRczNVO9dZPKlZBIr50gEV/6uSMLN/QUQ=;
        b=fvxWZzkmUSl7xmesqpOdqkJrnPr57MLIu7KYvJscktnavSh9ZmcUBNShZidm5HLJwa
         iczMbRdRuBSXivi7lgnRWgl8cL1H12LIIt31yqFnYquG5P4xNe+suR1ujvhoi+tqQbnv
         qxzuSz58n4iAWyDpzFAQxrPjiA2Al59thBR91kK4LSsuqWEad5DM7KxdppOP73eDAH5g
         0Pu9EV4phRdSfs8ESXAF3RIXdapQcBk6ezdox0jRAircpTkKquURo5mJRSTT6zTdivgS
         8Y/aCCiO3giSSXJhZZA9qQmAZ09jTnTgOB2E47WGzwBQELtCdIQcvAh97/ivu+S3YXsL
         o/9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LnvLa+n1/4kRczNVO9dZPKlZBIr50gEV/6uSMLN/QUQ=;
        b=Jx7Pa7j+rFAf0cVO/+0i0pGZ3SGOqrmxJQ0JNIf8P9cKDsKvvMbhq9qFxbIawzq19d
         /hoatHgMNgnmq4Kbuw8VRHnbD0q+xrdv3VJlmFily0L5I2p5FrmqsvPESbmh587WQCAp
         laB3MJmgT+hzSNTp9VKPMuNJx3Mac/MoRbWT02KYz7J1YWWPbbI31+OeiEEj46UJfo7p
         wreVBILGr82q+wqlyO3nHCaP5TtUGDLRvAatNzq7DLpW606u0k5U2vW1ydFlSk1atxRe
         M+lzpG7OBCRyw366zRGtaY4zWgndgYOWlAD7CRL0tvu+LVDnMjxU2ShNQPpcL857IzzF
         hLng==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531+esAY+G7a/g8gHpr0iXnze974EsO0mFwZgB0gA4XBoPXL+Gir
	IqJVY8FKBZzzJqZRi/9CDvk=
X-Google-Smtp-Source: ABdhPJz2jaZr5s6i6O09BdaRzY+MlmJ93Xhxic3l/V3EEbpDWw4doW7MUMnYj0eY5dj0GhxIwAwqQQ==
X-Received: by 2002:a05:6402:10c6:: with SMTP id p6mr37426628edu.241.1620747079005;
        Tue, 11 May 2021 08:31:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:ca0c:: with SMTP id jt12ls8384684ejb.11.gmail; Tue,
 11 May 2021 08:31:18 -0700 (PDT)
X-Received: by 2002:a17:906:4e82:: with SMTP id v2mr33103920eju.278.1620747078045;
        Tue, 11 May 2021 08:31:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620747078; cv=none;
        d=google.com; s=arc-20160816;
        b=vRNhPLbPt9f5f+28B6PdI6vx0P0MeX7IhaTAlH3wgBstUD7tBpUoXWsNz/YVd9JuBN
         LZGPN8A7c5doceXUT4B4sHm1EBbtbG2HtMwr7CFt1GWlrA9jaGI9ouHCCIzcoGf0nepd
         GnG+y75k9SoHWKUrj/sZLNPCYI1cwi753utlMSd+g/5/kO1GxcaMMMvjJITorRZnfmI7
         sXIpNfPOQpF5fpE4yTJx/KGXr0Xs/Eg39lKAnYZBJ6tS0nc5SgHuwURUJCTinOwZnuqb
         HZzUZkTFqX+OxzUWGYemkmFPOsO6UpiN+oCD6TARMuE9sOGzSe2kLPzrnQ4VfXsubLQs
         tOxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=4+KMSSJfs6285aprQFfxRR2fhyW9Dgy1161xUmoMREg=;
        b=c0iL2hyQXidXQ7oOExN9Rvt7dREJhBRQXBKN8w4S+9vSSXtIaFrEUscWaWqo0uOrqO
         hoFJor78nMXHgPKMcH0rk1gax5fmVaulGw8eFoxmlxFsm62JMZgSEODsqB6pcuC3M+Gv
         Z3WrYRQocUtjePI6REux8J3uwQ6ZGY8w9uV/FvVCiZdJS8tKiQqtdT+Kib2HgyHIuL1E
         ZqOxoRF1FncY7IK2VzyGeqbirnXf3WiGjMLMC35iXVUeQroXbQc4fjpJZu42U+IfbSg0
         fFfntJlHlbWxlrJt6yQNWXXIQddyp6UyX858S0sgwRwJ4P3ukAgzenHv8Ml/l8RQ1k3U
         M/qg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of krzysztof.kozlowski@canonical.com designates 91.189.89.112 as permitted sender) smtp.mailfrom=krzysztof.kozlowski@canonical.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=canonical.com
Received: from youngberry.canonical.com (youngberry.canonical.com. [91.189.89.112])
        by gmr-mx.google.com with ESMTPS id di23si783952edb.0.2021.05.11.08.31.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 11 May 2021 08:31:18 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of krzysztof.kozlowski@canonical.com designates 91.189.89.112 as permitted sender) client-ip=91.189.89.112;
Received: from mail-vk1-f198.google.com ([209.85.221.198])
	by youngberry.canonical.com with esmtps  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
	(Exim 4.93)
	(envelope-from <krzysztof.kozlowski@canonical.com>)
	id 1lgULt-0000Ca-Hk
	for clang-built-linux@googlegroups.com; Tue, 11 May 2021 15:31:17 +0000
Received: by mail-vk1-f198.google.com with SMTP id y70-20020a1f32490000b02901df8c87c514so2587711vky.4
        for <clang-built-linux@googlegroups.com>; Tue, 11 May 2021 08:31:17 -0700 (PDT)
X-Received: by 2002:a67:ec12:: with SMTP id d18mr25988786vso.7.1620747075096;
        Tue, 11 May 2021 08:31:15 -0700 (PDT)
X-Received: by 2002:a67:ec12:: with SMTP id d18mr25988754vso.7.1620747074830;
        Tue, 11 May 2021 08:31:14 -0700 (PDT)
Received: from [192.168.1.4] ([45.237.48.3])
        by smtp.gmail.com with ESMTPSA id o5sm2281864vke.32.2021.05.11.08.31.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 May 2021 08:31:14 -0700 (PDT)
Subject: Re: [PATCH v1 2/2] memory: tegra: Enable compile testing for all
 drivers
To: Dmitry Osipenko <digetx@gmail.com>, kernel test robot <lkp@intel.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, Nathan Chancellor
 <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>,
 clang-built-linux@googlegroups.com
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
 linux-kernel@vger.kernel.org, linux-tegra@vger.kernel.org
References: <20210510213729.7095-3-digetx@gmail.com>
 <202105112125.VctfC6sX-lkp@intel.com>
 <dd0b550e-76a0-bfbc-9d6f-5d867812046d@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Message-ID: <06addbf3-0090-b76f-65cf-e0c10d284c69@canonical.com>
Date: Tue, 11 May 2021 11:31:03 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <dd0b550e-76a0-bfbc-9d6f-5d867812046d@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: krzysztof.kozlowski@canonical.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of krzysztof.kozlowski@canonical.com
 designates 91.189.89.112 as permitted sender) smtp.mailfrom=krzysztof.kozlowski@canonical.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=canonical.com
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

On 11/05/2021 11:17, Dmitry Osipenko wrote:
> 11.05.2021 16:58, kernel test robot =D0=BF=D0=B8=D1=88=D0=B5=D1=82:
>> Hi Dmitry,
>>
>> I love your patch! Perhaps something to improve:
>>
>> [auto build test WARNING on tegra/for-next]
>> [also build test WARNING on v5.13-rc1 next-20210511]
>> [If your patch is applied to the wrong git tree, kindly drop us a note.
>> And when submitting patch, we suggest to use '--base' as documented in
>> https://git-scm.com/docs/git-format-patch]
>>
>> url:    https://github.com/0day-ci/linux/commits/Dmitry-Osipenko/Enable-=
compile-testing-for-Tegra-memory-drivers/20210511-053910
>> base:   https://git.kernel.org/pub/scm/linux/kernel/git/tegra/linux.git =
for-next
>> config: powerpc-randconfig-r032-20210511 (attached as .config)
>> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project a0f=
ed635fe1701470062495a6ffee1c608f3f1bc)
>> reproduce (this is a W=3D1 build):
>>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sb=
in/make.cross -O ~/bin/make.cross
>>         chmod +x ~/bin/make.cross
>>         # install powerpc cross compiling tool for clang build
>>         # apt-get install binutils-powerpc-linux-gnu
>>         # https://github.com/0day-ci/linux/commit/ecd67b1d49eb33c9821130=
a2b3b896bab395118d
>>         git remote add linux-review https://github.com/0day-ci/linux
>>         git fetch --no-tags linux-review Dmitry-Osipenko/Enable-compile-=
testing-for-Tegra-memory-drivers/20210511-053910
>>         git checkout ecd67b1d49eb33c9821130a2b3b896bab395118d
>>         # save the attached .config to linux build tree
>>         COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross W=
=3D1 ARCH=3Dpowerpc=20
>>
>> If you fix the issue, kindly add following tag as appropriate
>> Reported-by: kernel test robot <lkp@intel.com>
>>
>> All warnings (new ones prefixed by >>):
>>
>>    __do_insb
>>    ^
>>    arch/powerpc/include/asm/io.h:556:56: note: expanded from macro '__do=
_insb'
>>    #define __do_insb(p, b, n)      readsb((PCI_IO_ADDR)_IO_BASE+(p), (b)=
, (n))
>>                                           ~~~~~~~~~~~~~~~~~~~~~^
>>    In file included from drivers/memory/tegra/tegra30-emc.c:18:
>>    In file included from include/linux/interrupt.h:11:
>>    In file included from include/linux/hardirq.h:10:
>>    In file included from arch/powerpc/include/asm/hardirq.h:6:
>>    In file included from include/linux/irq.h:20:
>>    In file included from include/linux/io.h:13:
>>    In file included from arch/powerpc/include/asm/io.h:619:
>>    arch/powerpc/include/asm/io-defs.h:45:1: warning: performing pointer =
arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithme=
tic]
>>    DEF_PCI_AC_NORET(insw, (unsigned long p, void *b, unsigned long c),
>>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>>    arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_P=
CI_AC_NORET'
>>                    __do_##name al;                                 \
>>                    ^~~~~~~~~~~~~~
>>    <scratch space>:211:1: note: expanded from here
>>    __do_insw
>>    ^
>>    arch/powerpc/include/asm/io.h:557:56: note: expanded from macro '__do=
_insw'
>>    #define __do_insw(p, b, n)      readsw((PCI_IO_ADDR)_IO_BASE+(p), (b)=
, (n))
>>                                           ~~~~~~~~~~~~~~~~~~~~~^
>>    In file included from drivers/memory/tegra/tegra30-emc.c:18:
>>    In file included from include/linux/interrupt.h:11:
>>    In file included from include/linux/hardirq.h:10:
>>    In file included from arch/powerpc/include/asm/hardirq.h:6:
>>    In file included from include/linux/irq.h:20:
>>    In file included from include/linux/io.h:13:
>>    In file included from arch/powerpc/include/asm/io.h:619:
>>    arch/powerpc/include/asm/io-defs.h:47:1: warning: performing pointer =
arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithme=
tic]
>>    DEF_PCI_AC_NORET(insl, (unsigned long p, void *b, unsigned long c),
>>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>>    arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_P=
CI_AC_NORET'
>>                    __do_##name al;                                 \
>>                    ^~~~~~~~~~~~~~
>>    <scratch space>:213:1: note: expanded from here
>>    __do_insl
>>    ^
>>    arch/powerpc/include/asm/io.h:558:56: note: expanded from macro '__do=
_insl'
>>    #define __do_insl(p, b, n)      readsl((PCI_IO_ADDR)_IO_BASE+(p), (b)=
, (n))
>>                                           ~~~~~~~~~~~~~~~~~~~~~^
>>    In file included from drivers/memory/tegra/tegra30-emc.c:18:
>>    In file included from include/linux/interrupt.h:11:
>>    In file included from include/linux/hardirq.h:10:
>>    In file included from arch/powerpc/include/asm/hardirq.h:6:
>>    In file included from include/linux/irq.h:20:
>>    In file included from include/linux/io.h:13:
>>    In file included from arch/powerpc/include/asm/io.h:619:
>>    arch/powerpc/include/asm/io-defs.h:49:1: warning: performing pointer =
arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithme=
tic]
>>    DEF_PCI_AC_NORET(outsb, (unsigned long p, const void *b, unsigned lon=
g c),
>>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~~~~
>>    arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_P=
CI_AC_NORET'
>>                    __do_##name al;                                 \
>>                    ^~~~~~~~~~~~~~
>>    <scratch space>:215:1: note: expanded from here
>>    __do_outsb
>>    ^
>>    arch/powerpc/include/asm/io.h:559:58: note: expanded from macro '__do=
_outsb'
>>    #define __do_outsb(p, b, n)     writesb((PCI_IO_ADDR)_IO_BASE+(p),(b)=
,(n))
>>                                            ~~~~~~~~~~~~~~~~~~~~~^
>>    In file included from drivers/memory/tegra/tegra30-emc.c:18:
>>    In file included from include/linux/interrupt.h:11:
>>    In file included from include/linux/hardirq.h:10:
>>    In file included from arch/powerpc/include/asm/hardirq.h:6:
>>    In file included from include/linux/irq.h:20:
>>    In file included from include/linux/io.h:13:
>>    In file included from arch/powerpc/include/asm/io.h:619:
>>    arch/powerpc/include/asm/io-defs.h:51:1: warning: performing pointer =
arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithme=
tic]
>>    DEF_PCI_AC_NORET(outsw, (unsigned long p, const void *b, unsigned lon=
g c),
>>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~~~~
>>    arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_P=
CI_AC_NORET'
>>                    __do_##name al;                                 \
>>                    ^~~~~~~~~~~~~~
>>    <scratch space>:217:1: note: expanded from here
>>    __do_outsw
>>    ^
>>    arch/powerpc/include/asm/io.h:560:58: note: expanded from macro '__do=
_outsw'
>>    #define __do_outsw(p, b, n)     writesw((PCI_IO_ADDR)_IO_BASE+(p),(b)=
,(n))
>>                                            ~~~~~~~~~~~~~~~~~~~~~^
>>    In file included from drivers/memory/tegra/tegra30-emc.c:18:
>>    In file included from include/linux/interrupt.h:11:
>>    In file included from include/linux/hardirq.h:10:
>>    In file included from arch/powerpc/include/asm/hardirq.h:6:
>>    In file included from include/linux/irq.h:20:
>>    In file included from include/linux/io.h:13:
>>    In file included from arch/powerpc/include/asm/io.h:619:
>>    arch/powerpc/include/asm/io-defs.h:53:1: warning: performing pointer =
arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithme=
tic]
>>    DEF_PCI_AC_NORET(outsl, (unsigned long p, const void *b, unsigned lon=
g c),
>>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~~~~
>>    arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_P=
CI_AC_NORET'
>>                    __do_##name al;                                 \
>>                    ^~~~~~~~~~~~~~
>>    <scratch space>:219:1: note: expanded from here
>>    __do_outsl
>>    ^
>>    arch/powerpc/include/asm/io.h:561:58: note: expanded from macro '__do=
_outsl'
>>    #define __do_outsl(p, b, n)     writesl((PCI_IO_ADDR)_IO_BASE+(p),(b)=
,(n))
>>                                            ~~~~~~~~~~~~~~~~~~~~~^
>>>> drivers/memory/tegra/tegra30-emc.c:757:18: warning: implicit conversio=
n from 'unsigned long' to 'u32' (aka 'unsigned int') changes value from 184=
46744071562067985 to 2147483665 [-Wconstant-conversion]
>>                    writel_relaxed(EMC_ZQ_CAL_LONG_CMD_DEV0,
>>                    ~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~
>>    drivers/memory/tegra/tegra30-emc.c:161:36: note: expanded from macro =
'EMC_ZQ_CAL_LONG_CMD_DEV0'
>>            (DRAM_DEV_SEL_0 | EMC_ZQ_CAL_LONG | EMC_ZQ_CAL_CMD)
>>                                              ^
>>    arch/powerpc/include/asm/io.h:679:40: note: expanded from macro 'writ=
el_relaxed'
>>    #define writel_relaxed(v, addr) writel(v, addr)
>>                                    ~~~~~~ ^
>>    13 warnings generated.
>> --
>>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~~~~~~~
>>    arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_P=
CI_AC_NORET'
>>                    __do_##name al;                                 \
>>                    ^~~~~~~~~~~~~~
>>    <scratch space>:203:1: note: expanded from here
>>    __do_outl
>>    ^
>>    arch/powerpc/include/asm/io.h:537:62: note: expanded from macro '__do=
_outl'
>>    #define __do_outl(val, port)    writel(val,(PCI_IO_ADDR)_IO_BASE+port=
);
>>                                               ~~~~~~~~~~~~~~~~~~~~~^
>>    In file included from drivers/memory/tegra/tegra124-emc.c:16:
>>    In file included from include/linux/io.h:13:
>>    In file included from arch/powerpc/include/asm/io.h:619:
>>    arch/powerpc/include/asm/io-defs.h:43:1: warning: performing pointer =
arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithme=
tic]
>>    DEF_PCI_AC_NORET(insb, (unsigned long p, void *b, unsigned long c),
>>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>>    arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_P=
CI_AC_NORET'
>>                    __do_##name al;                                 \
>>                    ^~~~~~~~~~~~~~
>>    <scratch space>:217:1: note: expanded from here
>>    __do_insb
>>    ^
>>    arch/powerpc/include/asm/io.h:556:56: note: expanded from macro '__do=
_insb'
>>    #define __do_insb(p, b, n)      readsb((PCI_IO_ADDR)_IO_BASE+(p), (b)=
, (n))
>>                                           ~~~~~~~~~~~~~~~~~~~~~^
>>    In file included from drivers/memory/tegra/tegra124-emc.c:16:
>>    In file included from include/linux/io.h:13:
>>    In file included from arch/powerpc/include/asm/io.h:619:
>>    arch/powerpc/include/asm/io-defs.h:45:1: warning: performing pointer =
arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithme=
tic]
>>    DEF_PCI_AC_NORET(insw, (unsigned long p, void *b, unsigned long c),
>>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>>    arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_P=
CI_AC_NORET'
>>                    __do_##name al;                                 \
>>                    ^~~~~~~~~~~~~~
>>    <scratch space>:219:1: note: expanded from here
>>    __do_insw
>>    ^
>>    arch/powerpc/include/asm/io.h:557:56: note: expanded from macro '__do=
_insw'
>>    #define __do_insw(p, b, n)      readsw((PCI_IO_ADDR)_IO_BASE+(p), (b)=
, (n))
>>                                           ~~~~~~~~~~~~~~~~~~~~~^
>>    In file included from drivers/memory/tegra/tegra124-emc.c:16:
>>    In file included from include/linux/io.h:13:
>>    In file included from arch/powerpc/include/asm/io.h:619:
>>    arch/powerpc/include/asm/io-defs.h:47:1: warning: performing pointer =
arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithme=
tic]
>>    DEF_PCI_AC_NORET(insl, (unsigned long p, void *b, unsigned long c),
>>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>>    arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_P=
CI_AC_NORET'
>>                    __do_##name al;                                 \
>>                    ^~~~~~~~~~~~~~
>>    <scratch space>:221:1: note: expanded from here
>>    __do_insl
>>    ^
>>    arch/powerpc/include/asm/io.h:558:56: note: expanded from macro '__do=
_insl'
>>    #define __do_insl(p, b, n)      readsl((PCI_IO_ADDR)_IO_BASE+(p), (b)=
, (n))
>>                                           ~~~~~~~~~~~~~~~~~~~~~^
>>    In file included from drivers/memory/tegra/tegra124-emc.c:16:
>>    In file included from include/linux/io.h:13:
>>    In file included from arch/powerpc/include/asm/io.h:619:
>>    arch/powerpc/include/asm/io-defs.h:49:1: warning: performing pointer =
arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithme=
tic]
>>    DEF_PCI_AC_NORET(outsb, (unsigned long p, const void *b, unsigned lon=
g c),
>>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~~~~
>>    arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_P=
CI_AC_NORET'
>>                    __do_##name al;                                 \
>>                    ^~~~~~~~~~~~~~
>>    <scratch space>:223:1: note: expanded from here
>>    __do_outsb
>>    ^
>>    arch/powerpc/include/asm/io.h:559:58: note: expanded from macro '__do=
_outsb'
>>    #define __do_outsb(p, b, n)     writesb((PCI_IO_ADDR)_IO_BASE+(p),(b)=
,(n))
>>                                            ~~~~~~~~~~~~~~~~~~~~~^
>>    In file included from drivers/memory/tegra/tegra124-emc.c:16:
>>    In file included from include/linux/io.h:13:
>>    In file included from arch/powerpc/include/asm/io.h:619:
>>    arch/powerpc/include/asm/io-defs.h:51:1: warning: performing pointer =
arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithme=
tic]
>>    DEF_PCI_AC_NORET(outsw, (unsigned long p, const void *b, unsigned lon=
g c),
>>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~~~~
>>    arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_P=
CI_AC_NORET'
>>                    __do_##name al;                                 \
>>                    ^~~~~~~~~~~~~~
>>    <scratch space>:225:1: note: expanded from here
>>    __do_outsw
>>    ^
>>    arch/powerpc/include/asm/io.h:560:58: note: expanded from macro '__do=
_outsw'
>>    #define __do_outsw(p, b, n)     writesw((PCI_IO_ADDR)_IO_BASE+(p),(b)=
,(n))
>>                                            ~~~~~~~~~~~~~~~~~~~~~^
>>    In file included from drivers/memory/tegra/tegra124-emc.c:16:
>>    In file included from include/linux/io.h:13:
>>    In file included from arch/powerpc/include/asm/io.h:619:
>>    arch/powerpc/include/asm/io-defs.h:53:1: warning: performing pointer =
arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithme=
tic]
>>    DEF_PCI_AC_NORET(outsl, (unsigned long p, const void *b, unsigned lon=
g c),
>>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~~~~
>>    arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_P=
CI_AC_NORET'
>>                    __do_##name al;                                 \
>>                    ^~~~~~~~~~~~~~
>>    <scratch space>:227:1: note: expanded from here
>>    __do_outsl
>>    ^
>>    arch/powerpc/include/asm/io.h:561:58: note: expanded from macro '__do=
_outsl'
>>    #define __do_outsl(p, b, n)     writesl((PCI_IO_ADDR)_IO_BASE+(p),(b)=
,(n))
>>                                            ~~~~~~~~~~~~~~~~~~~~~^
>>>> drivers/memory/tegra/tegra124-emc.c:802:26: warning: implicit conversi=
on from 'unsigned long' to 'u32' (aka 'unsigned int') changes value from 18=
446744071562067985 to 2147483665 [-Wconstant-conversion]
>>                    emc_ccfifo_writel(emc, EMC_ZQ_CAL_LONG_CMD_DEV0, EMC_=
ZQ_CAL);
>>                    ~~~~~~~~~~~~~~~~~      ^~~~~~~~~~~~~~~~~~~~~~~~
>>    drivers/memory/tegra/tegra124-emc.c:154:36: note: expanded from macro=
 'EMC_ZQ_CAL_LONG_CMD_DEV0'
>>            (DRAM_DEV_SEL_0 | EMC_ZQ_CAL_LONG | EMC_ZQ_CAL_CMD)
>>             ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~
>>    13 warnings generated.
>=20
> This doesn't look like a useful warning from clang, it should see that
> the constant value itself isn't truncated, hence it should be a problem
> of clang. Do you think it's okay to ignore this nonsense?

I admit I also do not see the real issue here. The DRAM_DEV_SEL_0 fits
in u32 and there is no other bitwise arithmetic than just OR, so why
clang assumes it can have 32 most signifcant bits toggled on?

+Cc Nathan and Nick,
Maybe you could shed some light here on this warning?

Dmitry,
In general you should not ignore it because:
1. This breaks allyesconfig with clang on powerpc (or it is one of the
stoppers),
2. We might want in some future to build it with clang.


Best regards,
Krzysztof

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/06addbf3-0090-b76f-65cf-e0c10d284c69%40canonical.com.
