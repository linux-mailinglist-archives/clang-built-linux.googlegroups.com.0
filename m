Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBDH5VGDAMGQEAUVEL4I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 01D163AA6BE
	for <lists+clang-built-linux@lfdr.de>; Thu, 17 Jun 2021 00:43:26 +0200 (CEST)
Received: by mail-pf1-x43d.google.com with SMTP id 9-20020a6217090000b02902ed4caf9377sf2453915pfx.19
        for <lists+clang-built-linux@lfdr.de>; Wed, 16 Jun 2021 15:43:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623883404; cv=pass;
        d=google.com; s=arc-20160816;
        b=TkTE457dU/V9DQz8k9BjMVNHQoaQqUDetW8G88CnUkegVP8hWsspFL9yNTjpjvhRRt
         REEt5xPyIQSyiGDZcMYfwI6XjQsZ+bUc57fFSXPnnXHiRgOOVpGyw35gfjJm0La2ZBhh
         GNrN+PCN7P1r8WajVYiWXHVmJlrx1bh89KvI4peIBZoCkwizK5Io93N+c38+UrFBuOt8
         IxwPq7lMLtojreAwSrltqgWWOufxm32QJjVLBYcd/MUEEGY6GoucxBgbeVNmDaRgq/T3
         ktb2qPUhTtmcCbyyS6mHiqP26mphIIKUwR/Vaj30SBHhyyht8/rEv9Baw+6buPy6EQsO
         jkMA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=q68LWT7Xf/rcV2CA8hs0LIRQbqbOWDFH+ubHKL66LF4=;
        b=ANa30aE5vyyQ67/gIcA9eTexf/HfHB/+ox03NZluTESU44gOH4pTaDm2WTTcoizR/z
         JJnfTRwsrm2wYxH8TTWnGFMR5TjqjIh+DMW/lp1KyUPKOkiJnmU4pvQpDzJMuUX79RXP
         YfYciZ4xhB6nBb1vQq1lhHnGTmckpeJpGtjc9RVc1I28RYi9VKy0BxuGSERRxbeu8mvR
         t5zuaII2Iuh9j3a9BYEaZcrGXEd45eAu4gvelIMwcTJlhUIa+WalhQn9I6y5CYknFDCN
         2eLfUZXwoaJViyLCvk5dX9TNEfAIOBYiModkUIZ8yf6b8H+gTS3x+jWO/+flzmz6JcAA
         O7Ug==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="mVUEI/Lm";
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=q68LWT7Xf/rcV2CA8hs0LIRQbqbOWDFH+ubHKL66LF4=;
        b=RIlQcBowRL9P0xWAobsu2vq2KRQKh3lSknWsEff+zuaMr3tHfYUlZUKdTEr6SSmaai
         OmDU7M8XcVjBVqk0dlNXKQdXrZpGzy1zpyTPPXiZgvJJ/1BqCBDMobg7HwBH6K8I/boX
         eviWLP5NM89U8uSQiQZiCTrre4wbG+GqTrIzEL34D4wGne6+mIbeiErdlVx6KGqJQDMO
         zP6B4Bv9ovFRQgjkKFx2BLYQsjOsp+/LPtTeNwv9w205PLPJE/Ye5pn08hrp5WSuk8SL
         a0pwz4EzIRIA2QW6mje0/M5rBg+nKGGwyUmPKEhRVUI/g+YRxOuvMk6vVFnsqq4DqNcd
         HjZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=q68LWT7Xf/rcV2CA8hs0LIRQbqbOWDFH+ubHKL66LF4=;
        b=OUpvSLUQxf/eBpLcuaBDsZuLJamzI+zRC4tkEHLgxkHd0Vm5gUBYBoR6xChcbNEFqY
         72eP65vOjB5IeRD5fXIAoBDBtw6Q1FKkhOElkFEc634nLpGHwqQEhp+IH5l4zQ5aAxTP
         0CZcsQH7piBOLS+5+N7cp2LVli9U7jxDMvShoVHhfzoYSDxlkBHwbm33F0jzPq7TPPo0
         i7oFGLkrOQtcJv5ReGlI1Ecl6r+FCxw3Wjy90KHYcwG6ZHcck2RmEmxTEhNIWm4xi97f
         f5rALws32HWwt2Gdfgt15+qlgfv02DccpRDfGbHDjvTrsGIXqKDV+d/a29v+Rr1/JbqT
         dC3w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530vhb3rV6hiQHZrRaLJ3ySmqJA9dZNbdQy+a02AkrLBqTmHl+nF
	CrfkWWMG9YE7BIN77O7Rzt0=
X-Google-Smtp-Source: ABdhPJwRg4r1m0W0CgHrvVVjYK2o1F134DmgO93vXYvzWnyS9ajCqNS9AI3FkvpvT2QevfXRYIKUeg==
X-Received: by 2002:a17:903:2c2:b029:101:9c88:d928 with SMTP id s2-20020a17090302c2b02901019c88d928mr1765488plk.62.1623883404468;
        Wed, 16 Jun 2021 15:43:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7b98:: with SMTP id w24ls1885343pll.0.gmail; Wed, 16
 Jun 2021 15:43:24 -0700 (PDT)
X-Received: by 2002:a17:90a:e2c1:: with SMTP id fr1mr2174864pjb.83.1623883403810;
        Wed, 16 Jun 2021 15:43:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623883403; cv=none;
        d=google.com; s=arc-20160816;
        b=apmSt6R29+ZvZ8V0K9VSE4CbB1n8U8hf6C7MOqKUa+F5QcYdxfYQYN0fBnnWaOFMqr
         +kMl/olGdKyTfltH3SWlHLLU1IMyA2/Fb/ZA0ps5fvuH0dflAV9ef0Dx8dmxK816iqCv
         BHwrwSCYT/xyYmNAomzmvy19R4XKbO6VAmS/zc+OKt03B7kpLyv6CCfSVCqdBxuNCaHs
         DDIjiXqxe9zhjnMwBZE/vaVbwb5G0ShAwFfmCLHgPI+qndvWJ9QMTl8hb3+2zgCpbOZN
         PzFLcWYXyDxLlnLQQsQTSQJzzwwaNAGIrGFxf8NWEt+EuhiNSKw/WEUNpwFA5eKf26Eo
         AELQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=eK6K6bW55bTwC7jvdipAM6ZqmKhrjMmiaWd3L6tRW5w=;
        b=HEk8NBCFckA/cJGl8shS2OSajk9QRN+24XsQg88MGo9R714GRzZEOXCGsuypzD8qs7
         6gBEILobfDJ7MZiqXCjLA/Mc7FHSzBpZjNw5Cx/sqbl8J+ijmrTvvWSQgugEYTA4FG7A
         0x8oj4ci+W6NTmgO8UV+vCfnZas/th4kAmF5qsKqpg0f+14ARE+OMEsHzv+9MWaHObjE
         mbfgqxW24dBSNEM/HnYryDhFeOwe+RjazWBmx+IOwRQpjKeeid3fB5QQvCiCJ1xPa8M+
         5X2oWuF+XghchQ3EBFO/Ix1hcUYvTbD+8rip+7ymjIuvgA7eVHgDoHTk5rLRhh62zy+n
         LM6A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="mVUEI/Lm";
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id ob7si240730pjb.1.2021.06.16.15.43.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 16 Jun 2021 15:43:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 01B8C613BD;
	Wed, 16 Jun 2021 22:43:22 +0000 (UTC)
Subject: Re: drivers/crypto/talitos.c:3328:12: warning: stack frame size of
 1040 bytes in function 'talitos_probe'
To: Christophe Leroy <christophe.leroy@csgroup.eu>,
 kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
 linux-kernel@vger.kernel.org, Herbert Xu <herbert@gondor.apana.org.au>
References: <202106100743.JgPkQBD1-lkp@intel.com>
 <29dbb338-f42b-8665-a58f-5242df1b12f9@csgroup.eu>
From: Nathan Chancellor <nathan@kernel.org>
Message-ID: <a2dc22ce-30af-0cb0-130c-1078e7ef52a5@kernel.org>
Date: Wed, 16 Jun 2021 15:43:22 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <29dbb338-f42b-8665-a58f-5242df1b12f9@csgroup.eu>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="mVUEI/Lm";       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On 6/9/2021 10:01 PM, Christophe Leroy wrote:
>=20
>=20
> Le 10/06/2021 =C3=A0 01:50, kernel test robot a =C3=A9crit=C2=A0:
>> tree:  =20
>> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git maste=
r
>> head:=C2=A0=C2=A0 368094df48e680fa51cedb68537408cfa64b788e
>> commit: 43a942d27eaaf33bca560121cbe42f3637e92880 crypto: talitos - Fix=
=20
>> ctr(aes) on SEC1
>> date:=C2=A0=C2=A0 4 months ago
>> config: powerpc-randconfig-r031-20210610 (attached as .config)
>> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project=20
>> d2012d965d60c3258b3a69d024491698f8aec386)
>=20
> That's likely a CLANG issue.
>=20
> With the same commit and the same .config, talitos_probe() has a frame=20
> of 112 bytes when built with GCC 11
>=20
> Christophe

It is probably the same root cause as=20
https://github.com/ClangBuiltLinux/linux/issues/1379 because I can=20
reproduce it with mpc83xx_defconfig + CONFIG_UBSAN=3Dy +=20
CONFIG_UBSAN_ALIGNMENT=3Dy.

Cheers,
Nathan

>> reproduce (this is a W=3D1 build):
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 wget=20
>> https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross=
=20
>> -O ~/bin/make.cross
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 chmod +x ~/bin/make.cro=
ss
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # install powerpc cross=
 compiling tool for clang build
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # apt-get install binut=
ils-powerpc-linux-gnu
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 #=20
>> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commi=
t/?id=3D43a942d27eaaf33bca560121cbe42f3637e92880=20
>>
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 git remote add linus=20
>> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 git fetch --no-tags lin=
us master
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 git checkout 43a942d27e=
aaf33bca560121cbe42f3637e92880
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # save the attached .co=
nfig to linux build tree
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 COMPILER_INSTALL_PATH=
=3D$HOME/0day COMPILER=3Dclang make.cross=20
>> ARCH=3Dpowerpc
>>
>> If you fix the issue, kindly add following tag as appropriate
>> Reported-by: kernel test robot <lkp@intel.com>
>>
>> All warnings (new ones prefixed by >>):
>>
>> =C2=A0=C2=A0=C2=A0 __do_insb
>> =C2=A0=C2=A0=C2=A0 ^
>> =C2=A0=C2=A0=C2=A0 arch/powerpc/include/asm/io.h:556:56: note: expanded =
from macro=20
>> '__do_insb'
>> =C2=A0=C2=A0=C2=A0 #define __do_insb(p, b, n)=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 readsb((PCI_IO_ADDR)_IO_BASE+(p),=20
>> (b), (n))
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ~~~~~~~~~~~~~~~~~~~~~^
>> =C2=A0=C2=A0=C2=A0 In file included from drivers/crypto/talitos.c:19:
>> =C2=A0=C2=A0=C2=A0 In file included from include/linux/interrupt.h:11:
>> =C2=A0=C2=A0=C2=A0 In file included from include/linux/hardirq.h:10:
>> =C2=A0=C2=A0=C2=A0 In file included from arch/powerpc/include/asm/hardir=
q.h:6:
>> =C2=A0=C2=A0=C2=A0 In file included from include/linux/irq.h:20:
>> =C2=A0=C2=A0=C2=A0 In file included from include/linux/io.h:13:
>> =C2=A0=C2=A0=C2=A0 In file included from arch/powerpc/include/asm/io.h:6=
19:
>> =C2=A0=C2=A0=C2=A0 arch/powerpc/include/asm/io-defs.h:45:1: warning: per=
forming=20
>> pointer arithmetic on a null pointer has undefined behavior=20
>> [-Wnull-pointer-arithmetic]
>> =C2=A0=C2=A0=C2=A0 DEF_PCI_AC_NORET(insw, (unsigned long p, void *b, uns=
igned long c),
>> =C2=A0=C2=A0=C2=A0 ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~~~~~~~~~~~~~
>> =C2=A0=C2=A0=C2=A0 arch/powerpc/include/asm/io.h:616:3: note: expanded f=
rom macro=20
>> 'DEF_PCI_AC_NORET'
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 __do_##name al;=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 \
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ^~~~~~~~~~~~~~
>> =C2=A0=C2=A0=C2=A0 <scratch space>:225:1: note: expanded from here
>> =C2=A0=C2=A0=C2=A0 __do_insw
>> =C2=A0=C2=A0=C2=A0 ^
>> =C2=A0=C2=A0=C2=A0 arch/powerpc/include/asm/io.h:557:56: note: expanded =
from macro=20
>> '__do_insw'
>> =C2=A0=C2=A0=C2=A0 #define __do_insw(p, b, n)=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 readsw((PCI_IO_ADDR)_IO_BASE+(p),=20
>> (b), (n))
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ~~~~~~~~~~~~~~~~~~~~~^
>> =C2=A0=C2=A0=C2=A0 In file included from drivers/crypto/talitos.c:19:
>> =C2=A0=C2=A0=C2=A0 In file included from include/linux/interrupt.h:11:
>> =C2=A0=C2=A0=C2=A0 In file included from include/linux/hardirq.h:10:
>> =C2=A0=C2=A0=C2=A0 In file included from arch/powerpc/include/asm/hardir=
q.h:6:
>> =C2=A0=C2=A0=C2=A0 In file included from include/linux/irq.h:20:
>> =C2=A0=C2=A0=C2=A0 In file included from include/linux/io.h:13:
>> =C2=A0=C2=A0=C2=A0 In file included from arch/powerpc/include/asm/io.h:6=
19:
>> =C2=A0=C2=A0=C2=A0 arch/powerpc/include/asm/io-defs.h:47:1: warning: per=
forming=20
>> pointer arithmetic on a null pointer has undefined behavior=20
>> [-Wnull-pointer-arithmetic]
>> =C2=A0=C2=A0=C2=A0 DEF_PCI_AC_NORET(insl, (unsigned long p, void *b, uns=
igned long c),
>> =C2=A0=C2=A0=C2=A0 ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~~~~~~~~~~~~~
>> =C2=A0=C2=A0=C2=A0 arch/powerpc/include/asm/io.h:616:3: note: expanded f=
rom macro=20
>> 'DEF_PCI_AC_NORET'
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 __do_##name al;=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 \
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ^~~~~~~~~~~~~~
>> =C2=A0=C2=A0=C2=A0 <scratch space>:227:1: note: expanded from here
>> =C2=A0=C2=A0=C2=A0 __do_insl
>> =C2=A0=C2=A0=C2=A0 ^
>> =C2=A0=C2=A0=C2=A0 arch/powerpc/include/asm/io.h:558:56: note: expanded =
from macro=20
>> '__do_insl'
>> =C2=A0=C2=A0=C2=A0 #define __do_insl(p, b, n)=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 readsl((PCI_IO_ADDR)_IO_BASE+(p),=20
>> (b), (n))
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ~~~~~~~~~~~~~~~~~~~~~^
>> =C2=A0=C2=A0=C2=A0 In file included from drivers/crypto/talitos.c:19:
>> =C2=A0=C2=A0=C2=A0 In file included from include/linux/interrupt.h:11:
>> =C2=A0=C2=A0=C2=A0 In file included from include/linux/hardirq.h:10:
>> =C2=A0=C2=A0=C2=A0 In file included from arch/powerpc/include/asm/hardir=
q.h:6:
>> =C2=A0=C2=A0=C2=A0 In file included from include/linux/irq.h:20:
>> =C2=A0=C2=A0=C2=A0 In file included from include/linux/io.h:13:
>> =C2=A0=C2=A0=C2=A0 In file included from arch/powerpc/include/asm/io.h:6=
19:
>> =C2=A0=C2=A0=C2=A0 arch/powerpc/include/asm/io-defs.h:49:1: warning: per=
forming=20
>> pointer arithmetic on a null pointer has undefined behavior=20
>> [-Wnull-pointer-arithmetic]
>> =C2=A0=C2=A0=C2=A0 DEF_PCI_AC_NORET(outsb, (unsigned long p, const void =
*b, unsigned=20
>> long c),
>>    =20
>> ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~=20
>>
>> =C2=A0=C2=A0=C2=A0 arch/powerpc/include/asm/io.h:616:3: note: expanded f=
rom macro=20
>> 'DEF_PCI_AC_NORET'
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 __do_##name al;=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 \
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ^~~~~~~~~~~~~~
>> =C2=A0=C2=A0=C2=A0 <scratch space>:229:1: note: expanded from here
>> =C2=A0=C2=A0=C2=A0 __do_outsb
>> =C2=A0=C2=A0=C2=A0 ^
>> =C2=A0=C2=A0=C2=A0 arch/powerpc/include/asm/io.h:559:58: note: expanded =
from macro=20
>> '__do_outsb'
>> =C2=A0=C2=A0=C2=A0 #define __do_outsb(p, b, n)    =20
>> writesb((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ~~~~~~~~~~~~~~~~~~~~~^
>> =C2=A0=C2=A0=C2=A0 In file included from drivers/crypto/talitos.c:19:
>> =C2=A0=C2=A0=C2=A0 In file included from include/linux/interrupt.h:11:
>> =C2=A0=C2=A0=C2=A0 In file included from include/linux/hardirq.h:10:
>> =C2=A0=C2=A0=C2=A0 In file included from arch/powerpc/include/asm/hardir=
q.h:6:
>> =C2=A0=C2=A0=C2=A0 In file included from include/linux/irq.h:20:
>> =C2=A0=C2=A0=C2=A0 In file included from include/linux/io.h:13:
>> =C2=A0=C2=A0=C2=A0 In file included from arch/powerpc/include/asm/io.h:6=
19:
>> =C2=A0=C2=A0=C2=A0 arch/powerpc/include/asm/io-defs.h:51:1: warning: per=
forming=20
>> pointer arithmetic on a null pointer has undefined behavior=20
>> [-Wnull-pointer-arithmetic]
>> =C2=A0=C2=A0=C2=A0 DEF_PCI_AC_NORET(outsw, (unsigned long p, const void =
*b, unsigned=20
>> long c),
>>    =20
>> ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~=20
>>
>> =C2=A0=C2=A0=C2=A0 arch/powerpc/include/asm/io.h:616:3: note: expanded f=
rom macro=20
>> 'DEF_PCI_AC_NORET'
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 __do_##name al;=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 \
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ^~~~~~~~~~~~~~
>> =C2=A0=C2=A0=C2=A0 <scratch space>:231:1: note: expanded from here
>> =C2=A0=C2=A0=C2=A0 __do_outsw
>> =C2=A0=C2=A0=C2=A0 ^
>> =C2=A0=C2=A0=C2=A0 arch/powerpc/include/asm/io.h:560:58: note: expanded =
from macro=20
>> '__do_outsw'
>> =C2=A0=C2=A0=C2=A0 #define __do_outsw(p, b, n)    =20
>> writesw((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ~~~~~~~~~~~~~~~~~~~~~^
>> =C2=A0=C2=A0=C2=A0 In file included from drivers/crypto/talitos.c:19:
>> =C2=A0=C2=A0=C2=A0 In file included from include/linux/interrupt.h:11:
>> =C2=A0=C2=A0=C2=A0 In file included from include/linux/hardirq.h:10:
>> =C2=A0=C2=A0=C2=A0 In file included from arch/powerpc/include/asm/hardir=
q.h:6:
>> =C2=A0=C2=A0=C2=A0 In file included from include/linux/irq.h:20:
>> =C2=A0=C2=A0=C2=A0 In file included from include/linux/io.h:13:
>> =C2=A0=C2=A0=C2=A0 In file included from arch/powerpc/include/asm/io.h:6=
19:
>> =C2=A0=C2=A0=C2=A0 arch/powerpc/include/asm/io-defs.h:53:1: warning: per=
forming=20
>> pointer arithmetic on a null pointer has undefined behavior=20
>> [-Wnull-pointer-arithmetic]
>> =C2=A0=C2=A0=C2=A0 DEF_PCI_AC_NORET(outsl, (unsigned long p, const void =
*b, unsigned=20
>> long c),
>>    =20
>> ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~=20
>>
>> =C2=A0=C2=A0=C2=A0 arch/powerpc/include/asm/io.h:616:3: note: expanded f=
rom macro=20
>> 'DEF_PCI_AC_NORET'
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 __do_##name al;=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 \
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ^~~~~~~~~~~~~~
>> =C2=A0=C2=A0=C2=A0 <scratch space>:233:1: note: expanded from here
>> =C2=A0=C2=A0=C2=A0 __do_outsl
>> =C2=A0=C2=A0=C2=A0 ^
>> =C2=A0=C2=A0=C2=A0 arch/powerpc/include/asm/io.h:561:58: note: expanded =
from macro=20
>> '__do_outsl'
>> =C2=A0=C2=A0=C2=A0 #define __do_outsl(p, b, n)    =20
>> writesl((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ~~~~~~~~~~~~~~~~~~~~~^
>>>> drivers/crypto/talitos.c:3328:12: warning: stack frame size of 1040=20
>>>> bytes in function 'talitos_probe' [-Wframe-larger-than=3D]
>> =C2=A0=C2=A0=C2=A0 static int talitos_probe(struct platform_device *ofde=
v)
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 ^
>> =C2=A0=C2=A0=C2=A0 8 warnings generated.
>>
>>
>> vim +/talitos_probe +3328 drivers/crypto/talitos.c
>>
>> c3e337f88a5b37 Kim Phillips=C2=A0=C2=A0=C2=A0=C2=A0 2011-11-21=C2=A0 332=
7
>> 1c48a5c93da631 Grant Likely=C2=A0=C2=A0=C2=A0=C2=A0 2011-02-17 @3328=C2=
=A0 static int=20
>> talitos_probe(struct platform_device *ofdev)
>> 9c4a79653b35ef Kim Phillips=C2=A0=C2=A0=C2=A0=C2=A0 2008-06-23=C2=A0 332=
9=C2=A0 {
>> 9c4a79653b35ef Kim Phillips=C2=A0=C2=A0=C2=A0=C2=A0 2008-06-23=C2=A0 333=
0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 struct device=20
>> *dev =3D &ofdev->dev;
>> 61c7a080a5a061 Grant Likely=C2=A0=C2=A0=C2=A0=C2=A0 2010-04-13=C2=A0 333=
1=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 struct=20
>> device_node *np =3D ofdev->dev.of_node;
>> 9c4a79653b35ef Kim Phillips=C2=A0=C2=A0=C2=A0=C2=A0 2008-06-23=C2=A0 333=
2=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 struct=20
>> talitos_private *priv;
>> 9c4a79653b35ef Kim Phillips=C2=A0=C2=A0=C2=A0=C2=A0 2008-06-23=C2=A0 333=
3=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 int i, err;
>> 5fa7fa147b1572 LEROY Christophe 2015-04-17=C2=A0 3334=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 int stride;
>> fd5ea7f011932d LEROY Christophe 2017-10-06=C2=A0 3335=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 struct resource=20
>> *res;
>> 9c4a79653b35ef Kim Phillips=C2=A0=C2=A0=C2=A0=C2=A0 2008-06-23=C2=A0 333=
6
>> 24b92ff276e8f6 LEROY Christophe 2017-10-06=C2=A0 3337=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 priv =3D=20
>> devm_kzalloc(dev, sizeof(struct talitos_private), GFP_KERNEL);
>> 9c4a79653b35ef Kim Phillips=C2=A0=C2=A0=C2=A0=C2=A0 2008-06-23=C2=A0 333=
8=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (!priv)
>> 9c4a79653b35ef Kim Phillips=C2=A0=C2=A0=C2=A0=C2=A0 2008-06-23=C2=A0 333=
9=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return -ENOMEM;
>> 9c4a79653b35ef Kim Phillips=C2=A0=C2=A0=C2=A0=C2=A0 2008-06-23=C2=A0 334=
0
>> f3de9cb1ca6ce3 Kevin Hao=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2014-=
01-28=C2=A0 3341     =20
>> INIT_LIST_HEAD(&priv->alg_list);
>> f3de9cb1ca6ce3 Kevin Hao=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2014-=
01-28=C2=A0 3342
>> 9c4a79653b35ef Kim Phillips=C2=A0=C2=A0=C2=A0=C2=A0 2008-06-23=C2=A0 334=
3     =20
>> dev_set_drvdata(dev, priv);
>> 9c4a79653b35ef Kim Phillips=C2=A0=C2=A0=C2=A0=C2=A0 2008-06-23=C2=A0 334=
4
>> 9c4a79653b35ef Kim Phillips=C2=A0=C2=A0=C2=A0=C2=A0 2008-06-23=C2=A0 334=
5=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 priv->ofdev =3D=20
>> ofdev;
>> 9c4a79653b35ef Kim Phillips=C2=A0=C2=A0=C2=A0=C2=A0 2008-06-23=C2=A0 334=
6
>> 511d63cb193292 Horia Geanta=C2=A0=C2=A0=C2=A0=C2=A0 2012-03-30=C2=A0 334=
7     =20
>> spin_lock_init(&priv->reg_lock);
>> 511d63cb193292 Horia Geanta=C2=A0=C2=A0=C2=A0=C2=A0 2012-03-30=C2=A0 334=
8
>> fd5ea7f011932d LEROY Christophe 2017-10-06=C2=A0 3349=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 res =3D=20
>> platform_get_resource(ofdev, IORESOURCE_MEM, 0);
>> fd5ea7f011932d LEROY Christophe 2017-10-06=C2=A0 3350=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 if (!res)
>> fd5ea7f011932d LEROY Christophe 2017-10-06=C2=A0 3351=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return -ENXIO;
>> fd5ea7f011932d LEROY Christophe 2017-10-06=C2=A0 3352=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 priv->reg =3D=20
>> devm_ioremap(dev, res->start, resource_size(res));
>> 9c4a79653b35ef Kim Phillips=C2=A0=C2=A0=C2=A0=C2=A0 2008-06-23=C2=A0 335=
3=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (!priv->reg) {
>> 9c4a79653b35ef Kim Phillips=C2=A0=C2=A0=C2=A0=C2=A0 2008-06-23=C2=A0 335=
4=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 dev_err(dev,=20
>> "failed to of_iomap\n");
>> 9c4a79653b35ef Kim Phillips=C2=A0=C2=A0=C2=A0=C2=A0 2008-06-23=C2=A0 335=
5=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 err =3D -ENOMEM;
>> 9c4a79653b35ef Kim Phillips=C2=A0=C2=A0=C2=A0=C2=A0 2008-06-23=C2=A0 335=
6=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 goto err_out;
>> 9c4a79653b35ef Kim Phillips=C2=A0=C2=A0=C2=A0=C2=A0 2008-06-23=C2=A0 335=
7=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 }
>> 9c4a79653b35ef Kim Phillips=C2=A0=C2=A0=C2=A0=C2=A0 2008-06-23=C2=A0 335=
8
>> 9c4a79653b35ef Kim Phillips=C2=A0=C2=A0=C2=A0=C2=A0 2008-06-23=C2=A0 335=
9=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 /* get SEC=20
>> version capabilities from device tree */
>> fa14c6cfcecb00 LEROY Christophe 2017-10-06=C2=A0 3360     =20
>> of_property_read_u32(np, "fsl,num-channels", &priv->num_channels);
>> fa14c6cfcecb00 LEROY Christophe 2017-10-06=C2=A0 3361     =20
>> of_property_read_u32(np, "fsl,channel-fifo-len", &priv->chfifo_len);
>> fa14c6cfcecb00 LEROY Christophe 2017-10-06=C2=A0 3362     =20
>> of_property_read_u32(np, "fsl,exec-units-mask", &priv->exec_units);
>> fa14c6cfcecb00 LEROY Christophe 2017-10-06=C2=A0 3363     =20
>> of_property_read_u32(np, "fsl,descriptor-types-mask",
>> fa14c6cfcecb00 LEROY Christophe 2017-10-06=C2=A0 3364                  =
=20
>> &priv->desc_types);
>> 9c4a79653b35ef Kim Phillips=C2=A0=C2=A0=C2=A0=C2=A0 2008-06-23=C2=A0 336=
5
>> 9c4a79653b35ef Kim Phillips=C2=A0=C2=A0=C2=A0=C2=A0 2008-06-23=C2=A0 336=
6=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if=20
>> (!is_power_of_2(priv->num_channels) || !priv->chfifo_len ||
>> 9c4a79653b35ef Kim Phillips=C2=A0=C2=A0=C2=A0=C2=A0 2008-06-23=C2=A0 336=
7         =20
>> !priv->exec_units || !priv->desc_types) {
>> 9c4a79653b35ef Kim Phillips=C2=A0=C2=A0=C2=A0=C2=A0 2008-06-23=C2=A0 336=
8=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 dev_err(dev,=20
>> "invalid property data in device tree node\n");
>> 9c4a79653b35ef Kim Phillips=C2=A0=C2=A0=C2=A0=C2=A0 2008-06-23=C2=A0 336=
9=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 err =3D -EINVAL;
>> 9c4a79653b35ef Kim Phillips=C2=A0=C2=A0=C2=A0=C2=A0 2008-06-23=C2=A0 337=
0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 goto err_out;
>> 9c4a79653b35ef Kim Phillips=C2=A0=C2=A0=C2=A0=C2=A0 2008-06-23=C2=A0 337=
1=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 }
>> 9c4a79653b35ef Kim Phillips=C2=A0=C2=A0=C2=A0=C2=A0 2008-06-23=C2=A0 337=
2
>> f3c85bc1bc72b4 Lee Nipper=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2008-07-30=
=C2=A0 3373=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if=20
>> (of_device_is_compatible(np, "fsl,sec3.0"))
>> f3c85bc1bc72b4 Lee Nipper=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2008-07-30=
=C2=A0 3374         =20
>> priv->features |=3D TALITOS_FTR_SRC_LINK_TBL_LEN_INCLUDES_EXTENT;
>> f3c85bc1bc72b4 Lee Nipper=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2008-07-30=
=C2=A0 3375
>> fe5720e2b7c1e8 Kim Phillips=C2=A0=C2=A0=C2=A0=C2=A0 2008-10-12=C2=A0 337=
6=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if=20
>> (of_device_is_compatible(np, "fsl,sec2.1"))
>> 60f208d7836216 Kim Phillips=C2=A0=C2=A0=C2=A0=C2=A0 2010-05-19=C2=A0 337=
7         =20
>> priv->features |=3D TALITOS_FTR_HW_AUTH_CHECK |
>> 79b3a418e09024 Lee Nipper=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2011-11-21=
=C2=A0 3378                   =20
>> TALITOS_FTR_SHA224_HWINIT |
>> 79b3a418e09024 Lee Nipper=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2011-11-21=
=C2=A0 3379                   =20
>> TALITOS_FTR_HMAC_OK;
>> fe5720e2b7c1e8 Kim Phillips=C2=A0=C2=A0=C2=A0=C2=A0 2008-10-12=C2=A0 338=
0
>> 21590888490ce2 LEROY Christophe 2015-04-17=C2=A0 3381=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 if=20
>> (of_device_is_compatible(np, "fsl,sec1.0"))
>> 21590888490ce2 LEROY Christophe 2015-04-17=C2=A0 3382         =20
>> priv->features |=3D TALITOS_FTR_SEC1;
>> 21590888490ce2 LEROY Christophe 2015-04-17=C2=A0 3383
>> 5fa7fa147b1572 LEROY Christophe 2015-04-17=C2=A0 3384=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 if=20
>> (of_device_is_compatible(np, "fsl,sec1.2")) {
>> 5fa7fa147b1572 LEROY Christophe 2015-04-17=C2=A0 3385         =20
>> priv->reg_deu =3D priv->reg + TALITOS12_DEU;
>> 5fa7fa147b1572 LEROY Christophe 2015-04-17=C2=A0 3386         =20
>> priv->reg_aesu =3D priv->reg + TALITOS12_AESU;
>> 5fa7fa147b1572 LEROY Christophe 2015-04-17=C2=A0 3387         =20
>> priv->reg_mdeu =3D priv->reg + TALITOS12_MDEU;
>> 5fa7fa147b1572 LEROY Christophe 2015-04-17=C2=A0 3388=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 stride =3D=20
>> TALITOS1_CH_STRIDE;
>> 5fa7fa147b1572 LEROY Christophe 2015-04-17=C2=A0 3389=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 } else if=20
>> (of_device_is_compatible(np, "fsl,sec1.0")) {
>> 5fa7fa147b1572 LEROY Christophe 2015-04-17=C2=A0 3390         =20
>> priv->reg_deu =3D priv->reg + TALITOS10_DEU;
>> 5fa7fa147b1572 LEROY Christophe 2015-04-17=C2=A0 3391         =20
>> priv->reg_aesu =3D priv->reg + TALITOS10_AESU;
>> 5fa7fa147b1572 LEROY Christophe 2015-04-17=C2=A0 3392         =20
>> priv->reg_mdeu =3D priv->reg + TALITOS10_MDEU;
>> 5fa7fa147b1572 LEROY Christophe 2015-04-17=C2=A0 3393         =20
>> priv->reg_afeu =3D priv->reg + TALITOS10_AFEU;
>> 5fa7fa147b1572 LEROY Christophe 2015-04-17=C2=A0 3394         =20
>> priv->reg_rngu =3D priv->reg + TALITOS10_RNGU;
>> 5fa7fa147b1572 LEROY Christophe 2015-04-17=C2=A0 3395         =20
>> priv->reg_pkeu =3D priv->reg + TALITOS10_PKEU;
>> 5fa7fa147b1572 LEROY Christophe 2015-04-17=C2=A0 3396=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 stride =3D=20
>> TALITOS1_CH_STRIDE;
>> 5fa7fa147b1572 LEROY Christophe 2015-04-17=C2=A0 3397=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 } else {
>> 5fa7fa147b1572 LEROY Christophe 2015-04-17=C2=A0 3398         =20
>> priv->reg_deu =3D priv->reg + TALITOS2_DEU;
>> 5fa7fa147b1572 LEROY Christophe 2015-04-17=C2=A0 3399         =20
>> priv->reg_aesu =3D priv->reg + TALITOS2_AESU;
>> 5fa7fa147b1572 LEROY Christophe 2015-04-17=C2=A0 3400         =20
>> priv->reg_mdeu =3D priv->reg + TALITOS2_MDEU;
>> 5fa7fa147b1572 LEROY Christophe 2015-04-17=C2=A0 3401         =20
>> priv->reg_afeu =3D priv->reg + TALITOS2_AFEU;
>> 5fa7fa147b1572 LEROY Christophe 2015-04-17=C2=A0 3402         =20
>> priv->reg_rngu =3D priv->reg + TALITOS2_RNGU;
>> 5fa7fa147b1572 LEROY Christophe 2015-04-17=C2=A0 3403         =20
>> priv->reg_pkeu =3D priv->reg + TALITOS2_PKEU;
>> 5fa7fa147b1572 LEROY Christophe 2015-04-17=C2=A0 3404         =20
>> priv->reg_keu =3D priv->reg + TALITOS2_KEU;
>> 5fa7fa147b1572 LEROY Christophe 2015-04-17=C2=A0 3405         =20
>> priv->reg_crcu =3D priv->reg + TALITOS2_CRCU;
>> 5fa7fa147b1572 LEROY Christophe 2015-04-17=C2=A0 3406=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 stride =3D=20
>> TALITOS2_CH_STRIDE;
>> 5fa7fa147b1572 LEROY Christophe 2015-04-17=C2=A0 3407=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 }
>> 5fa7fa147b1572 LEROY Christophe 2015-04-17=C2=A0 3408
>> dd3c0987f5426d LEROY Christophe 2015-04-17=C2=A0 3409=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 err =3D=20
>> talitos_probe_irq(ofdev);
>> dd3c0987f5426d LEROY Christophe 2015-04-17=C2=A0 3410=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 if (err)
>> dd3c0987f5426d LEROY Christophe 2015-04-17=C2=A0 3411=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 goto err_out;
>> dd3c0987f5426d LEROY Christophe 2015-04-17=C2=A0 3412
>> c8c74647b2945e Christophe Leroy 2019-06-17=C2=A0 3413=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 if=20
>> (has_ftr_sec1(priv)) {
>> 9c02e2852fcabf LEROY Christophe 2017-10-06=C2=A0 3414=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if=20
>> (priv->num_channels =3D=3D 1)
>> 9c02e2852fcabf LEROY Christophe 2017-10-06=C2=A0 3415             =20
>> tasklet_init(&priv->done_task[0], talitos1_done_ch0,
>> dd3c0987f5426d LEROY Christophe 2015-04-17=C2=A0 3416                   =
   =20
>> (unsigned long)dev);
>> 9c02e2852fcabf LEROY Christophe 2017-10-06=C2=A0 3417=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 else
>> 9c02e2852fcabf LEROY Christophe 2017-10-06=C2=A0 3418             =20
>> tasklet_init(&priv->done_task[0], talitos1_done_4ch,
>> dd3c0987f5426d LEROY Christophe 2015-04-17=C2=A0 3419                   =
   =20
>> (unsigned long)dev);
>> dd3c0987f5426d LEROY Christophe 2015-04-17=C2=A0 3420=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 } else {
>> 9c02e2852fcabf LEROY Christophe 2017-10-06=C2=A0 3421=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if=20
>> (priv->irq[1]) {
>> dd3c0987f5426d LEROY Christophe 2015-04-17=C2=A0 3422             =20
>> tasklet_init(&priv->done_task[0], talitos2_done_ch0_2,
>> dd3c0987f5426d LEROY Christophe 2015-04-17=C2=A0 3423                   =
   =20
>> (unsigned long)dev);
>> dd3c0987f5426d LEROY Christophe 2015-04-17=C2=A0 3424             =20
>> tasklet_init(&priv->done_task[1], talitos2_done_ch1_3,
>> dd3c0987f5426d LEROY Christophe 2015-04-17=C2=A0 3425                   =
   =20
>> (unsigned long)dev);
>> 9c02e2852fcabf LEROY Christophe 2017-10-06=C2=A0 3426=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 } else if=20
>> (priv->num_channels =3D=3D 1) {
>> 9c02e2852fcabf LEROY Christophe 2017-10-06=C2=A0 3427             =20
>> tasklet_init(&priv->done_task[0], talitos2_done_ch0,
>> 9c02e2852fcabf LEROY Christophe 2017-10-06=C2=A0 3428                   =
   =20
>> (unsigned long)dev);
>> 9c02e2852fcabf LEROY Christophe 2017-10-06=C2=A0 3429=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 } else {
>> 9c02e2852fcabf LEROY Christophe 2017-10-06=C2=A0 3430             =20
>> tasklet_init(&priv->done_task[0], talitos2_done_4ch,
>> 9c02e2852fcabf LEROY Christophe 2017-10-06=C2=A0 3431                   =
   =20
>> (unsigned long)dev);
>> dd3c0987f5426d LEROY Christophe 2015-04-17=C2=A0 3432=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 }
>> dd3c0987f5426d LEROY Christophe 2015-04-17=C2=A0 3433=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 }
>> dd3c0987f5426d LEROY Christophe 2015-04-17=C2=A0 3434
>> a86854d0c599b3 Kees Cook=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2018-=
06-12=C2=A0 3435=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 priv->chan =3D=20
>> devm_kcalloc(dev,
>> a86854d0c599b3 Kees Cook=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2018-=
06-12=C2=A0 3436                   =20
>> priv->num_channels,
>> a86854d0c599b3 Kees Cook=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2018-=
06-12=C2=A0 3437                   =20
>> sizeof(struct talitos_channel),
>> a86854d0c599b3 Kees Cook=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2018-=
06-12=C2=A0 3438                   =20
>> GFP_KERNEL);
>> 4b992628812137 Kim Phillips=C2=A0=C2=A0=C2=A0=C2=A0 2009-08-13=C2=A0 343=
9=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (!priv->chan) {
>> 4b992628812137 Kim Phillips=C2=A0=C2=A0=C2=A0=C2=A0 2009-08-13=C2=A0 344=
0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 dev_err(dev,=20
>> "failed to allocate channel management space\n");
>> 9c4a79653b35ef Kim Phillips=C2=A0=C2=A0=C2=A0=C2=A0 2008-06-23=C2=A0 344=
1=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 err =3D -ENOMEM;
>> 9c4a79653b35ef Kim Phillips=C2=A0=C2=A0=C2=A0=C2=A0 2008-06-23=C2=A0 344=
2=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 goto err_out;
>> 9c4a79653b35ef Kim Phillips=C2=A0=C2=A0=C2=A0=C2=A0 2008-06-23=C2=A0 344=
3=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 }
>> 9c4a79653b35ef Kim Phillips=C2=A0=C2=A0=C2=A0=C2=A0 2008-06-23=C2=A0 344=
4
>> f641ddddc3ad13 Martin Hicks=C2=A0=C2=A0=C2=A0=C2=A0 2015-03-03=C2=A0 344=
5=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 priv->fifo_len =3D=20
>> roundup_pow_of_two(priv->chfifo_len);
>> f641ddddc3ad13 Martin Hicks=C2=A0=C2=A0=C2=A0=C2=A0 2015-03-03=C2=A0 344=
6
>> c3e337f88a5b37 Kim Phillips=C2=A0=C2=A0=C2=A0=C2=A0 2011-11-21=C2=A0 344=
7=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 for (i =3D 0; i <=20
>> priv->num_channels; i++) {
>> 5fa7fa147b1572 LEROY Christophe 2015-04-17=C2=A0 3448         =20
>> priv->chan[i].reg =3D priv->reg + stride * (i + 1);
>> 2cdba3cf6ffc1f Kim Phillips=C2=A0=C2=A0=C2=A0=C2=A0 2011-12-12=C2=A0 344=
9=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if=20
>> (!priv->irq[1] || !(i & 1))
>> c3e337f88a5b37 Kim Phillips=C2=A0=C2=A0=C2=A0=C2=A0 2011-11-21=C2=A0 345=
0             =20
>> priv->chan[i].reg +=3D TALITOS_CH_BASE_OFFSET;
>> ad42d5fc853832 Kim Phillips=C2=A0=C2=A0=C2=A0=C2=A0 2011-11-21=C2=A0 345=
1
>> 4b992628812137 Kim Phillips=C2=A0=C2=A0=C2=A0=C2=A0 2009-08-13=C2=A0 345=
2         =20
>> spin_lock_init(&priv->chan[i].head_lock);
>> 4b992628812137 Kim Phillips=C2=A0=C2=A0=C2=A0=C2=A0 2009-08-13=C2=A0 345=
3         =20
>> spin_lock_init(&priv->chan[i].tail_lock);
>> 9c4a79653b35ef Kim Phillips=C2=A0=C2=A0=C2=A0=C2=A0 2008-06-23=C2=A0 345=
4
>> a86854d0c599b3 Kees Cook=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2018-=
06-12=C2=A0 3455         =20
>> priv->chan[i].fifo =3D devm_kcalloc(dev,
>> a86854d0c599b3 Kees Cook=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2018-=
06-12 =20
>> 3456=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 priv->fifo_len,
>> a86854d0c599b3 Kees Cook=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2018-=
06-12 =20
>> 3457=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 sizeof(struct talitos_request),
>> a86854d0c599b3 Kees Cook=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2018-=
06-12 =20
>> 3458=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 GFP_KERNEL);
>> 4b992628812137 Kim Phillips=C2=A0=C2=A0=C2=A0=C2=A0 2009-08-13=C2=A0 345=
9=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if=20
>> (!priv->chan[i].fifo) {
>> 9c4a79653b35ef Kim Phillips=C2=A0=C2=A0=C2=A0=C2=A0 2008-06-23=C2=A0 346=
0             =20
>> dev_err(dev, "failed to allocate request fifo %d\n", i);
>> 9c4a79653b35ef Kim Phillips=C2=A0=C2=A0=C2=A0=C2=A0 2008-06-23=C2=A0 346=
1=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 err =3D=20
>> -ENOMEM;
>> 9c4a79653b35ef Kim Phillips=C2=A0=C2=A0=C2=A0=C2=A0 2008-06-23=C2=A0 346=
2=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 goto=20
>> err_out;
>> 9c4a79653b35ef Kim Phillips=C2=A0=C2=A0=C2=A0=C2=A0 2008-06-23=C2=A0 346=
3=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 }
>> 9c4a79653b35ef Kim Phillips=C2=A0=C2=A0=C2=A0=C2=A0 2008-06-23=C2=A0 346=
4
>> 4b992628812137 Kim Phillips=C2=A0=C2=A0=C2=A0=C2=A0 2009-08-13=C2=A0 346=
5         =20
>> atomic_set(&priv->chan[i].submit_count,
>> 4b992628812137 Kim Phillips=C2=A0=C2=A0=C2=A0=C2=A0 2009-08-13=C2=A0 346=
6                =20
>> -(priv->chfifo_len - 1));
>> f641ddddc3ad13 Martin Hicks=C2=A0=C2=A0=C2=A0=C2=A0 2015-03-03=C2=A0 346=
7=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 }
>> 9c4a79653b35ef Kim Phillips=C2=A0=C2=A0=C2=A0=C2=A0 2008-06-23=C2=A0 346=
8
>> 81eb024c7e63f5 Kim Phillips=C2=A0=C2=A0=C2=A0=C2=A0 2009-08-13=C2=A0 346=
9     =20
>> dma_set_mask(dev, DMA_BIT_MASK(36));
>> 81eb024c7e63f5 Kim Phillips=C2=A0=C2=A0=C2=A0=C2=A0 2009-08-13=C2=A0 347=
0
>> 9c4a79653b35ef Kim Phillips=C2=A0=C2=A0=C2=A0=C2=A0 2008-06-23=C2=A0 347=
1=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 /* reset and=20
>> initialize the h/w */
>> 9c4a79653b35ef Kim Phillips=C2=A0=C2=A0=C2=A0=C2=A0 2008-06-23=C2=A0 347=
2=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 err =3D=20
>> init_device(dev);
>> 9c4a79653b35ef Kim Phillips=C2=A0=C2=A0=C2=A0=C2=A0 2008-06-23=C2=A0 347=
3=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (err) {
>> 9c4a79653b35ef Kim Phillips=C2=A0=C2=A0=C2=A0=C2=A0 2008-06-23=C2=A0 347=
4=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 dev_err(dev,=20
>> "failed to initialize device\n");
>> 9c4a79653b35ef Kim Phillips=C2=A0=C2=A0=C2=A0=C2=A0 2008-06-23=C2=A0 347=
5=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 goto err_out;
>> 9c4a79653b35ef Kim Phillips=C2=A0=C2=A0=C2=A0=C2=A0 2008-06-23=C2=A0 347=
6=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 }
>> 9c4a79653b35ef Kim Phillips=C2=A0=C2=A0=C2=A0=C2=A0 2008-06-23=C2=A0 347=
7
>> 9c4a79653b35ef Kim Phillips=C2=A0=C2=A0=C2=A0=C2=A0 2008-06-23=C2=A0 347=
8=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 /* register the=20
>> RNG, if available */
>> 9c4a79653b35ef Kim Phillips=C2=A0=C2=A0=C2=A0=C2=A0 2008-06-23=C2=A0 347=
9=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if=20
>> (hw_supports(dev, DESC_HDR_SEL0_RNG)) {
>> 9c4a79653b35ef Kim Phillips=C2=A0=C2=A0=C2=A0=C2=A0 2008-06-23=C2=A0 348=
0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 err =3D=20
>> talitos_register_rng(dev);
>> 9c4a79653b35ef Kim Phillips=C2=A0=C2=A0=C2=A0=C2=A0 2008-06-23=C2=A0 348=
1=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (err) {
>> 9c4a79653b35ef Kim Phillips=C2=A0=C2=A0=C2=A0=C2=A0 2008-06-23=C2=A0 348=
2             =20
>> dev_err(dev, "failed to register hwrng: %d\n", err);
>> 9c4a79653b35ef Kim Phillips=C2=A0=C2=A0=C2=A0=C2=A0 2008-06-23=C2=A0 348=
3=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 goto=20
>> err_out;
>> 9c4a79653b35ef Kim Phillips=C2=A0=C2=A0=C2=A0=C2=A0 2008-06-23=C2=A0 348=
4=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 } else
>> 9c4a79653b35ef Kim Phillips=C2=A0=C2=A0=C2=A0=C2=A0 2008-06-23=C2=A0 348=
5             =20
>> dev_info(dev, "hwrng\n");
>> 9c4a79653b35ef Kim Phillips=C2=A0=C2=A0=C2=A0=C2=A0 2008-06-23=C2=A0 348=
6=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 }
>> 9c4a79653b35ef Kim Phillips=C2=A0=C2=A0=C2=A0=C2=A0 2008-06-23=C2=A0 348=
7
>> 9c4a79653b35ef Kim Phillips=C2=A0=C2=A0=C2=A0=C2=A0 2008-06-23=C2=A0 348=
8=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 /* register=20
>> crypto algorithms the device supports */
>> 9c4a79653b35ef Kim Phillips=C2=A0=C2=A0=C2=A0=C2=A0 2008-06-23=C2=A0 348=
9=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 for (i =3D 0; i <=20
>> ARRAY_SIZE(driver_algs); i++) {
>> 9c4a79653b35ef Kim Phillips=C2=A0=C2=A0=C2=A0=C2=A0 2008-06-23=C2=A0 349=
0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if=20
>> (hw_supports(dev, driver_algs[i].desc_hdr_template)) {
>> 9c4a79653b35ef Kim Phillips=C2=A0=C2=A0=C2=A0=C2=A0 2008-06-23=C2=A0 349=
1=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 struct=20
>> talitos_crypto_alg *t_alg;
>> aeb4c132f33d21 Herbert Xu=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2015-07-30=
=C2=A0 3492=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 struct=20
>> crypto_alg *alg =3D NULL;
>> 9c4a79653b35ef Kim Phillips=C2=A0=C2=A0=C2=A0=C2=A0 2008-06-23=C2=A0 349=
3
>> 9c4a79653b35ef Kim Phillips=C2=A0=C2=A0=C2=A0=C2=A0 2008-06-23=C2=A0 349=
4=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 t_alg =3D=20
>> talitos_alg_alloc(dev, &driver_algs[i]);
>> 9c4a79653b35ef Kim Phillips=C2=A0=C2=A0=C2=A0=C2=A0 2008-06-23=C2=A0 349=
5=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 if=20
>> (IS_ERR(t_alg)) {
>> 9c4a79653b35ef Kim Phillips=C2=A0=C2=A0=C2=A0=C2=A0 2008-06-23=C2=A0 349=
6=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 err=20
>> =3D PTR_ERR(t_alg);
>> 0b2730d8d8b38e Kim Phillips=C2=A0=C2=A0=C2=A0=C2=A0 2011-12-12=C2=A0 349=
7=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if=20
>> (err =3D=3D -ENOTSUPP)
>> 79b3a418e09024 Lee Nipper=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2011-11-21=
=C2=A0 3498                     =20
>> continue;
>> 9c4a79653b35ef Kim Phillips=C2=A0=C2=A0=C2=A0=C2=A0 2008-06-23=C2=A0 349=
9=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 goto=20
>> err_out;
>> 9c4a79653b35ef Kim Phillips=C2=A0=C2=A0=C2=A0=C2=A0 2008-06-23=C2=A0 350=
0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 }
>> 9c4a79653b35ef Kim Phillips=C2=A0=C2=A0=C2=A0=C2=A0 2008-06-23=C2=A0 350=
1
>> acbf7c627fb59d Lee Nipper=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2010-05-19=
=C2=A0 3502=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 switch=20
>> (t_alg->algt.type) {
>> 373960d794d2b0 Ard Biesheuvel=C2=A0=C2=A0 2019-11-09=C2=A0 3503=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 case=
=20
>> CRYPTO_ALG_TYPE_SKCIPHER:
>> 373960d794d2b0 Ard Biesheuvel=C2=A0=C2=A0 2019-11-09=C2=A0 3504=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 err=20
>> =3D crypto_register_skcipher(
>> 373960d794d2b0 Ard Biesheuvel=C2=A0=C2=A0 2019-11-09 =20
>> 3505=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 &t_alg->algt.alg.skcipher);
>> 373960d794d2b0 Ard Biesheuvel=C2=A0=C2=A0 2019-11-09=C2=A0 3506=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 alg=20
>> =3D &t_alg->algt.alg.skcipher.base;
>> acbf7c627fb59d Lee Nipper=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2010-05-19=
=C2=A0 3507=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 break;
>> aeb4c132f33d21 Herbert Xu=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2015-07-30=
=C2=A0 3508
>> aeb4c132f33d21 Herbert Xu=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2015-07-30=
=C2=A0 3509=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 case=20
>> CRYPTO_ALG_TYPE_AEAD:
>> aeb4c132f33d21 Herbert Xu=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2015-07-30=
=C2=A0 3510=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 err=20
>> =3D crypto_register_aead(
>> aeb4c132f33d21 Herbert Xu=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2015-07-30=
=C2=A0 3511                     =20
>> &t_alg->algt.alg.aead);
>> aeb4c132f33d21 Herbert Xu=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2015-07-30=
=C2=A0 3512=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 alg=20
>> =3D &t_alg->algt.alg.aead.base;
>> aeb4c132f33d21 Herbert Xu=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2015-07-30=
=C2=A0 3513=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 break;
>> aeb4c132f33d21 Herbert Xu=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2015-07-30=
=C2=A0 3514
>> acbf7c627fb59d Lee Nipper=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2010-05-19=
=C2=A0 3515=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 case=20
>> CRYPTO_ALG_TYPE_AHASH:
>> acbf7c627fb59d Lee Nipper=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2010-05-19=
=C2=A0 3516=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 err=20
>> =3D crypto_register_ahash(
>> acbf7c627fb59d Lee Nipper=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2010-05-19=
 =20
>> 3517=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 &t_alg->algt.alg.hash);
>> aeb4c132f33d21 Herbert Xu=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2015-07-30=
=C2=A0 3518=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 alg=20
>> =3D &t_alg->algt.alg.hash.halg.base;
>> acbf7c627fb59d Lee Nipper=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2010-05-19=
=C2=A0 3519=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 break;
>> acbf7c627fb59d Lee Nipper=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2010-05-19=
=C2=A0 3520=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 }
>> 9c4a79653b35ef Kim Phillips=C2=A0=C2=A0=C2=A0=C2=A0 2008-06-23=C2=A0 352=
1=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 if (err) {
>> 9c4a79653b35ef Kim Phillips=C2=A0=C2=A0=C2=A0=C2=A0 2008-06-23=C2=A0 352=
2                 =20
>> dev_err(dev, "%s alg registration failed\n",
>> aeb4c132f33d21 Herbert Xu=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2015-07-30=
=C2=A0 3523                     =20
>> alg->cra_driver_name);
>> 24b92ff276e8f6 LEROY Christophe 2017-10-06=C2=A0 3524                 =
=20
>> devm_kfree(dev, t_alg);
>> 991155bacb91c9 Horia Geanta=C2=A0=C2=A0=C2=A0=C2=A0 2013-03-20=C2=A0 352=
5=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 } else
>> 9c4a79653b35ef Kim Phillips=C2=A0=C2=A0=C2=A0=C2=A0 2008-06-23=C2=A0 352=
6                 =20
>> list_add_tail(&t_alg->entry, &priv->alg_list);
>> 9c4a79653b35ef Kim Phillips=C2=A0=C2=A0=C2=A0=C2=A0 2008-06-23=C2=A0 352=
7=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 }
>> 9c4a79653b35ef Kim Phillips=C2=A0=C2=A0=C2=A0=C2=A0 2008-06-23=C2=A0 352=
8=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 }
>> 5b859b6ebb18b3 Kim Phillips=C2=A0=C2=A0=C2=A0=C2=A0 2011-11-21=C2=A0 352=
9=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if=20
>> (!list_empty(&priv->alg_list))
>> 5b859b6ebb18b3 Kim Phillips=C2=A0=C2=A0=C2=A0=C2=A0 2011-11-21=C2=A0 353=
0         =20
>> dev_info(dev, "%s algorithms registered in /proc/crypto\n",
>> 5b859b6ebb18b3 Kim Phillips=C2=A0=C2=A0=C2=A0=C2=A0 2011-11-21=C2=A0 353=
1=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 (char=20
>> *)of_get_property(np, "compatible", NULL));
>> 9c4a79653b35ef Kim Phillips=C2=A0=C2=A0=C2=A0=C2=A0 2008-06-23=C2=A0 353=
2
>> 9c4a79653b35ef Kim Phillips=C2=A0=C2=A0=C2=A0=C2=A0 2008-06-23=C2=A0 353=
3=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return 0;
>> 9c4a79653b35ef Kim Phillips=C2=A0=C2=A0=C2=A0=C2=A0 2008-06-23=C2=A0 353=
4
>> 9c4a79653b35ef Kim Phillips=C2=A0=C2=A0=C2=A0=C2=A0 2008-06-23=C2=A0 353=
5=C2=A0 err_out:
>> 9c4a79653b35ef Kim Phillips=C2=A0=C2=A0=C2=A0=C2=A0 2008-06-23=C2=A0 353=
6     =20
>> talitos_remove(ofdev);
>> 9c4a79653b35ef Kim Phillips=C2=A0=C2=A0=C2=A0=C2=A0 2008-06-23=C2=A0 353=
7
>> 9c4a79653b35ef Kim Phillips=C2=A0=C2=A0=C2=A0=C2=A0 2008-06-23=C2=A0 353=
8=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return err;
>> 9c4a79653b35ef Kim Phillips=C2=A0=C2=A0=C2=A0=C2=A0 2008-06-23=C2=A0 353=
9=C2=A0 }
>> 9c4a79653b35ef Kim Phillips=C2=A0=C2=A0=C2=A0=C2=A0 2008-06-23=C2=A0 354=
0
>>
>> :::::: The code at line 3328 was first introduced by commit
>> :::::: 1c48a5c93da63132b92c4bbcd18e690c51539df6 dt: Eliminate=20
>> of_platform_{,un}register_driver
>>
>> :::::: TO: Grant Likely <grant.likely@secretlab.ca>
>> :::::: CC: Grant Likely <grant.likely@secretlab.ca>
>>
>> ---
>> 0-DAY CI Kernel Test Service, Intel Corporation
>> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>>
>=20

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/a2dc22ce-30af-0cb0-130c-1078e7ef52a5%40kernel.org.
