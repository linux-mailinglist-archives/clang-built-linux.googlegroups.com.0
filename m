Return-Path: <clang-built-linux+bncBCPP7ZW2WYPBBKM4RT5QKGQEU4U6QQI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id 3455826D47C
	for <lists+clang-built-linux@lfdr.de>; Thu, 17 Sep 2020 09:20:11 +0200 (CEST)
Received: by mail-pg1-x53d.google.com with SMTP id q21sf893776pgj.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 17 Sep 2020 00:20:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600327210; cv=pass;
        d=google.com; s=arc-20160816;
        b=jVYt6J2l/r2sVJt1aS+58a2KgG6tA4pke8uszlVvBdzyB+8w+jDPIVrbgwga5TlTlO
         gOVejduGKZ6ZD9m6Jsu63eorznETotiOHAJkSq0sUaHeztLuz5hP9ybmTvCgjHlU12+O
         5B3qRm2ClmdB/dGlpSMtvFp89/9buzp+LYC5qQSKA190dx3qApC0/JBw77UQuOpqK6Ah
         hCLi4tUIrRY6oc93oQzqRREriiHTDrbwMmwcihEggowXCykJB94ZpZLJPNFHBEdBi9fM
         k4CygV2w5UsgH+VrdyEUv/ZvDdW2D6n+X2NDD28OsUTRbhgaEuEOh6pRILmIx/aRjetQ
         85xA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature;
        bh=YTm1fxN1Qs7R/GSKQRCWyUZu/a83Ew7OgGRMWR2s7pM=;
        b=JZOhVCP4gWlbTP960kB4YkU2aHhLUGk3K0o70BYCUBU8ptkmyFRbGhNRbtmUWLrmck
         FBPTAdik34Tn5yYlTBC7ezG8ZlGjyPMV570ITIpxd0dgodpIetYvjK1eOceoKYf/S8Vo
         p0W9PYZH8+1SDB4Eskwbmt6FU7eZqchJIFaoGn6QTVrBjbEguoz2Co5QU21dPt2iGRro
         kk6JeuGpq6h7kQ1wDSZ43vEKPY+494atTJ3zyeoNZj/HJ1DFCrntzjoutGuPgHFB9z3a
         NIW8atfmBlL9gZEHiqOqbPFx09dyI2gBF81qewj05bwyOv1//25oGceFKEq4xxaYp0Qj
         1YKw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@benyossef-com.20150623.gappssmtp.com header.s=20150623 header.b=ULn0yfGO;
       spf=neutral (google.com: 2607:f8b0:4864:20::1041 is neither permitted nor denied by best guess record for domain of gilad@benyossef.com) smtp.mailfrom=gilad@benyossef.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=YTm1fxN1Qs7R/GSKQRCWyUZu/a83Ew7OgGRMWR2s7pM=;
        b=o3iCx3rrdpweqjKSMOKgY45jX1H42hCvRmoRqj464lp7g1LEB19X2nd28iA0FAWz+r
         djICbiLe14eZCBy27fTDETj+uAcZWhIExHVgYHOUA/dJb3uiQY60/zqMpfH9s0KIMw3K
         JR+LZv5ag0ato+bMkL+tSFkCSf4KOWwTMFj3HOqbsoErcskpjHOct+Tz4i8zPlKiRl3m
         XEd9c6BNUe/JE0jthOsRZHB/+ONpdv3YKcGjbkChKES/ORo5jCFX3Qs05Wj/4QABH7Wm
         qDaF4oIElR43ypY4dDPKc9o9G35cSlSRw/nwC4NSIS7DhQP8991d5bYbJWaruKr5ta49
         gz0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=YTm1fxN1Qs7R/GSKQRCWyUZu/a83Ew7OgGRMWR2s7pM=;
        b=roWyxg2vO3iCYyHe4bA1Rc/0KTOh4vrMIyoP0rLFEpGK/1OUPwxYfXCeA341Ch4yJU
         Jcrr65MPRD/xDw/WQNExIs7h5Byc3C+afCa/GcFm12hdNcwxSzREHpjEsofOkkm97WZA
         4recRMm7yg64ebF9WKXjNGz7vZecLolOYPuwWMnil1mmPi9j8pgXzGhKY6xKiT+BvqcJ
         vpHHcPhYZCZz58JrSdmm1TyzBSA+cgLp2ULNFHYK+0azCVa/hUKCp8Ul8TlG+tW5uhB5
         bfJfOKRUKySiTgFzQJaKscB+f/gyQb6HHFncJIAWIg6mVqGxfa+y/Vo05py+mlZYx/id
         RDAA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532DXOphU6TJCAbCsdDwNIxVja+644WTgvwu/ftULIHMlpz8ks8V
	A2/uASw+QCgycG7fPYoBFno=
X-Google-Smtp-Source: ABdhPJyvcP07jv5bkZ8mp9WPFKuhTYepkYdCzGuKJksYuwiT9xwBlTNWlmPnoqsC5G/zyFugLNxGbQ==
X-Received: by 2002:a63:d841:: with SMTP id k1mr4861481pgj.59.1600327209859;
        Thu, 17 Sep 2020 00:20:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:480c:: with SMTP id a12ls597763pjh.3.gmail; Thu, 17
 Sep 2020 00:20:09 -0700 (PDT)
X-Received: by 2002:a17:902:d714:b029:d0:cbe1:e7a2 with SMTP id w20-20020a170902d714b02900d0cbe1e7a2mr26834641ply.19.1600327209255;
        Thu, 17 Sep 2020 00:20:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600327209; cv=none;
        d=google.com; s=arc-20160816;
        b=Lzk5+ZVfK/eAiQOPg97IQDXkhXxQCA+La3/gPPEmxvA3vKxhZX7iXwd/iH7TG+F0pR
         DN/xgoYWsLtviprZjk4FqeOHx0/iQwaM+pVIrUzlIfleMgMtg45Yt1bQt7SNnSJNuXXg
         ELbC/QKBnjAAveb1JN97kpe3yViRzk97gs2n6/YkfJWHlyaZaMpIg3W99HLSzG06A8n0
         8VQzaCZ8BDXyxa01isQ79VT6OQEmEAt/14lJO8g6YtoaEjf89ytLiwCRXGp3tGM3lgBG
         sJjHaaAC6DSZHPFa0dG5Tf86vye9d1naf6gsHRB/if2icnE428Iy9rIlYs7Hqs1lW1GD
         VbYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=QRIyLtZ6o3VP5j0NQg3mA1t52Fj+F7jjIZuCaV434Cg=;
        b=CLmg3U1j5IMx93xGCLztWRIeWhrFsOV7kf7Ib5oijuPVaK/xCJfT4+PlsfCQrKEDAo
         c6PCL7/EfeqPdq7zwG1gKw3bcWg0WjjI6Sh+hkH7eIjKi8us13ZQ26DYdEQJIKVtU6m6
         sID+q6lPQzwvRa9qfFnDHbSCMqetjr67/mo3lbBTICk7cQzzy0cUGTcP8Tdngj07Bgkb
         U8YeTY5uoyIYi7hRTEX5HfuQt8KR1R6xxZlzaAmivnQ2rkKyDS3aTW7JwmaRYt1rJK5H
         EuW/quFOd1bx3mP+0g8h5vT5XPbpS4p0qQe6y/jULghsDFMkXspt749JrQgTOnL3Od8y
         M0rQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@benyossef-com.20150623.gappssmtp.com header.s=20150623 header.b=ULn0yfGO;
       spf=neutral (google.com: 2607:f8b0:4864:20::1041 is neither permitted nor denied by best guess record for domain of gilad@benyossef.com) smtp.mailfrom=gilad@benyossef.com
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id d3si900559pld.1.2020.09.17.00.20.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Sep 2020 00:20:09 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::1041 is neither permitted nor denied by best guess record for domain of gilad@benyossef.com) client-ip=2607:f8b0:4864:20::1041;
Received: by mail-pj1-x1041.google.com with SMTP id fa1so804050pjb.0
        for <clang-built-linux@googlegroups.com>; Thu, 17 Sep 2020 00:20:09 -0700 (PDT)
X-Received: by 2002:a17:90a:e609:: with SMTP id j9mr6843624pjy.129.1600327208818;
 Thu, 17 Sep 2020 00:20:08 -0700 (PDT)
MIME-Version: 1.0
References: <20200916071950.1493-3-gilad@benyossef.com> <202009162154.fxQ0Z6wT%lkp@intel.com>
In-Reply-To: <202009162154.fxQ0Z6wT%lkp@intel.com>
From: Gilad Ben-Yossef <gilad@benyossef.com>
Date: Thu, 17 Sep 2020 10:19:59 +0300
Message-ID: <CAOtvUMdv9QNVdaU7N6wJVq27Asyrckuu9bf15fO=+oZUh5iKOg@mail.gmail.com>
Subject: Re: [PATCH 2/2] crypto: ccree - add custom cache params from DT file
To: kernel test robot <lkp@intel.com>
Cc: Herbert Xu <herbert@gondor.apana.org.au>, "David S. Miller" <davem@davemloft.net>, 
	Rob Herring <robh+dt@kernel.org>, kbuild-all@lists.01.org, 
	clang-built-linux@googlegroups.com, netdev@vger.kernel.org, 
	Ofir Drang <ofir.drang@arm.com>, 
	Linux Crypto Mailing List <linux-crypto@vger.kernel.org>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, 
	Linux kernel mailing list <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: gilad@benyossef.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@benyossef-com.20150623.gappssmtp.com header.s=20150623
 header.b=ULn0yfGO;       spf=neutral (google.com: 2607:f8b0:4864:20::1041 is
 neither permitted nor denied by best guess record for domain of
 gilad@benyossef.com) smtp.mailfrom=gilad@benyossef.com
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

hmm...

On Wed, Sep 16, 2020 at 4:48 PM kernel test robot <lkp@intel.com> wrote:
>
> url:    https://github.com/0day-ci/linux/commits/Gilad-Ben-Yossef/add-opt=
ional-cache-params-from-DT/20200916-152151
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/herbert/cryptodev=
-2.6.git master
> config: arm64-randconfig-r015-20200916 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 9e38=
42d60351f986d77dfe0a94f76e4fd895f188)
> reproduce (this is a W=3D1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbi=
n/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install arm64 cross compiling tool for clang build
>         # apt-get install binutils-aarch64-linux-gnu
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross AR=
CH=3Darm64
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
> >> drivers/crypto/ccree/cc_driver.c:120:18: warning: result of comparison=
 of constant 18446744073709551615 with expression of type 'u32' (aka 'unsig=
ned int') is always false [-Wtautological-constant-out-of-range-compare]
>            cache_params |=3D FIELD_PREP(mask, val);
>                            ^~~~~~~~~~~~~~~~~~~~~
>    include/linux/bitfield.h:94:3: note: expanded from macro 'FIELD_PREP'
>                    __BF_FIELD_CHECK(_mask, 0ULL, _val, "FIELD_PREP: ");  =
  \
>                    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/bitfield.h:52:28: note: expanded from macro '__BF_FIELD_=
CHECK'
>                    BUILD_BUG_ON_MSG((_mask) > (typeof(_reg))~0ull,       =
  \
>                    ~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~~
>    include/linux/build_bug.h:39:58: note: expanded from macro 'BUILD_BUG_=
ON_MSG'
>    #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)
>                                        ~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~
>    include/linux/compiler_types.h:319:22: note: expanded from macro 'comp=
iletime_assert'
>            _compiletime_assert(condition, msg, __compiletime_assert_, __C=
OUNTER__)
>            ~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~~~~~~~~
>    include/linux/compiler_types.h:307:23: note: expanded from macro '_com=
piletime_assert'
>            __compiletime_assert(condition, msg, prefix, suffix)
>            ~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/compiler_types.h:299:9: note: expanded from macro '__com=
piletime_assert'
>                    if (!(condition))                                     =
  \
>                          ^~~~~~~~~

I am unable to understand this warning. It looks like it is
complaining about a FIELD_GET sanity check that is always false, which
makes sense since we're using a constant.

Anyone can enlighten me if I've missed something?

Thanks,
Gilad



--=20
Gilad Ben-Yossef
Chief Coffee Drinker

values of =CE=B2 will give rise to dom!

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAOtvUMdv9QNVdaU7N6wJVq27Asyrckuu9bf15fO%3D%2BoZUh5iKOg%4=
0mail.gmail.com.
