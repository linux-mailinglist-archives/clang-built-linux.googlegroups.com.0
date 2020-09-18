Return-Path: <clang-built-linux+bncBDYJPJO25UGBB64ZST5QKGQEXTJXG2Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33b.google.com (mail-ot1-x33b.google.com [IPv6:2607:f8b0:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id C7C822705AA
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Sep 2020 21:39:40 +0200 (CEST)
Received: by mail-ot1-x33b.google.com with SMTP id j12sf1988617otn.19
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Sep 2020 12:39:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600457979; cv=pass;
        d=google.com; s=arc-20160816;
        b=gqUngPoHfHF+eJRGzV5X2fqqfC781mHShXbp6DsmBRqRbaIWMZzdcKTYmQ5N1Nbf9S
         OQ3TWh520iRw5RL/R4Fo4Lt9xXS4gczord1dGgPkaaiiJYT7z780CyIyux5rxZ+EciGP
         IaO0BRi/71KwgcquwMlAqu5eCtxUphQWuZ4CbOnviSjSHhuGUwmFXQLEmvanw+eA/SFG
         VPffh9INF5d3jKOFFc3t3dWv/Adj61kTXhEGhSRz4uhoEPhl1r58/Q1OBuA3KPtKGdlt
         pM5YsaaP4IPgOdF69uraXGI5S3Kp3Kn9MuJiy+pM9iQ8po44148lR2zmKyyyCZDyvjyp
         PKnw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=5swmIfefpE28+CzveU+W9IVqUtpaUMI/jhMu2QyFvu4=;
        b=s78NasQZxGPZtq/5RT61/kL1YoZvkGAg6mBgigyzS84fY3Jh+7x5lV4V/p0m174mgr
         A0UAXdvkfQsHqivqEnGPQrr+2gCUr7D3m7fOS3zv1kmWnX7bJgXkmCeQPZdCpa0L96Yt
         Dz32bVY8dEjV+fImkaS3fAva+EW+CuK/MkWqDEEjpmXHPXSx8HG4xEJ/qHPYdLu9doJM
         xoVmTsF1Ro8kmkonYT7Zrkw9MCLz3kbUjfA/c6KeeoZGFZEWqlrk2B7ELfkamoviLUoR
         v6WAmfrmI4mrnlmDrwYrrjBjBphJT35ufzaCc/b+8bJ0bsDFHFTdSXye4JSsmevM/l2h
         /rEg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=MMijeS5i;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5swmIfefpE28+CzveU+W9IVqUtpaUMI/jhMu2QyFvu4=;
        b=Y9D4BXLPIp9WoUixt+Fcr/uTH0cskmsf+/KRE0y96t2FhCh79KaQJCQ02NhLbGzSTn
         LklUCHLzF6QgpdInHsV8mZLXv/D9AbxWQoelaOyFbJHdkup7Au0QeYavbhI8eEiOA9l2
         zTcfM/szqjF9NfOP3f5UvLsI1ASZRbsTV5iyyGUC08mKjbWMurFucBenWghJnN9GjTYe
         UpLyKTCMnZg4tS2hHy22GPnJkupjp4oWetkEkerxKr3oD1SXIF+4Lm6ySWviV4iV3nNb
         9f7BLi8gGOtIaiZjJ099zCLlM9ljcEGHTPDKYU0h6gJ0YUd2EAkjs2Ek8/SwNka4UpZF
         4LqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5swmIfefpE28+CzveU+W9IVqUtpaUMI/jhMu2QyFvu4=;
        b=cZWhv3GEL9LI8+fmeiet4DRoS9glmN9p4jGkRnOMIqUsxtS7YKhc8aIyjhoA/c2fEI
         2Sqg6QKi0bcVjvG7Yq3uHyaVkWMntJoa4GGd6MqcS8Kac8ODVk3PHMNpkJuy67eHgtaG
         9Plj0CukZRaqMggYGzZeOHggcRj9nr5L49LucyIIllyCBBN6GKrU+iM/4vYjudqZ2NVP
         lAQk7fb4/0AEa6s39LmIJXNi9bUJrfKiJsqJ2Eo9moPeKaWLBPBze7uYMIXLqX3Cd0nT
         ArfwkOX1rtITVMczsojzX/rLC7doMZbGhbkAe0uW/lp1dnrhou/ftNUgABrm0FYjxxIr
         84mA==
X-Gm-Message-State: AOAM532fhnfj3CB6tk7lcaD/sJdJZpYauxu169Yqym1iWB9KVs8uReii
	UKVHCW9c8Agzz0lwDOlRsss=
X-Google-Smtp-Source: ABdhPJxaK2wkMSFFaWXWTct7WZgPb1O/xwV6hnLZGmjRLtBtH0BKCm54E7DLl9AAJk/MQLXJn4vbJg==
X-Received: by 2002:a4a:da4e:: with SMTP id f14mr25257513oou.40.1600457979314;
        Fri, 18 Sep 2020 12:39:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:614b:: with SMTP id c11ls1516128otk.2.gmail; Fri, 18 Sep
 2020 12:39:38 -0700 (PDT)
X-Received: by 2002:a05:6830:45b:: with SMTP id d27mr25473128otc.152.1600457978759;
        Fri, 18 Sep 2020 12:39:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600457978; cv=none;
        d=google.com; s=arc-20160816;
        b=EHTwpR8SQaQXexA+0vqY0YtPl+OLPbk76LPqx++fwqi4Ylq22tFVsU/0orSTXLMklI
         8din770XmZ7YMM0MdoaLY6nCpRSKoVZ5GDWztEyFWlICjImc/AgJCW6r2+fCWhTHdLZm
         cZ3yetfqeq+c0yzvs7U4+w3EaYXgzBnjwDBNeogdhVJ3jGzD2qBoEjYIgu/K6hzjRM3R
         vKQw8lHn6o6E6a3bYy9+EDxnPTyF8J1fZ7zAbkWRA6nFUjcpvQGAhaGV9PFyCRehpot4
         oPBkC4wLyDj/It8wYh/zeBB89Kiv5jlvEBBpNWjSlMmmmk1ZIdDhboypSyrK78gF/V+h
         oCsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ugDHAjreJcjr2sWmhzBxhqb0r9L38OJhgw/SK5/hXcA=;
        b=cD5kEBi0pfFkrwVidW9khTez6WKrvRFBj7MuN+DeF9Vr7Ms7lyBhMFXZAixNaN0m41
         CqSkfzHVKak5iVtjz1dYxn1RuiF32vRelEPjv2uDSL86LvqfKZI5uN9UWDRDj0cDGwnj
         Xxi0nwNp6T7kqdg7lZHtzFdRPvrVOUpUvSJxYA31HcPAzYlZ+ytkSmRR+1sSKAQeRAbI
         X5Cyc6u0iCvxddZEj+QlRD5dl2Y85+igJvEZOqhM9WYzwQ9+Jssa5nZyNLyFgajjcpSE
         JfyicXvQH2WeGEUr0xGdrUViCG5RJcodJso/etM6JS077X+gbEuvwRZMv7vpnUHX2cYt
         d57A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=MMijeS5i;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id k7si356605oif.3.2020.09.18.12.39.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Sep 2020 12:39:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Received: by mail-pj1-x1044.google.com with SMTP id md22so4659135pjb.0
        for <clang-built-linux@googlegroups.com>; Fri, 18 Sep 2020 12:39:38 -0700 (PDT)
X-Received: by 2002:a17:90b:f18:: with SMTP id br24mr1807074pjb.32.1600457977854;
 Fri, 18 Sep 2020 12:39:37 -0700 (PDT)
MIME-Version: 1.0
References: <20200916071950.1493-3-gilad@benyossef.com> <202009162154.fxQ0Z6wT%lkp@intel.com>
 <CAOtvUMdv9QNVdaU7N6wJVq27Asyrckuu9bf15fO=+oZUh5iKOg@mail.gmail.com>
In-Reply-To: <CAOtvUMdv9QNVdaU7N6wJVq27Asyrckuu9bf15fO=+oZUh5iKOg@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 18 Sep 2020 12:39:26 -0700
Message-ID: <CAKwvOdmW+n_g4C_pXnF+8wh2q0gZZyXAfaYR9cVNm3p1QeJ-xA@mail.gmail.com>
Subject: Re: [PATCH 2/2] crypto: ccree - add custom cache params from DT file
To: Gilad Ben-Yossef <gilad@benyossef.com>
Cc: kernel test robot <lkp@intel.com>, Herbert Xu <herbert@gondor.apana.org.au>, 
	"David S. Miller" <davem@davemloft.net>, Rob Herring <robh+dt@kernel.org>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Network Development <netdev@vger.kernel.org>, Ofir Drang <ofir.drang@arm.com>, 
	Linux Crypto Mailing List <linux-crypto@vger.kernel.org>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, 
	Linux kernel mailing list <linux-kernel@vger.kernel.org>, Sami Tolvanen <samitolvanen@google.com>, 
	Alex Elder <elder@linaro.org>, Jakub Kicinski <kuba@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=MMijeS5i;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044
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

On Thu, Sep 17, 2020 at 12:20 AM Gilad Ben-Yossef <gilad@benyossef.com> wrote:
>
> hmm...
>
> On Wed, Sep 16, 2020 at 4:48 PM kernel test robot <lkp@intel.com> wrote:
> >
> > url:    https://github.com/0day-ci/linux/commits/Gilad-Ben-Yossef/add-optional-cache-params-from-DT/20200916-152151
> > base:   https://git.kernel.org/pub/scm/linux/kernel/git/herbert/cryptodev-2.6.git master
> > config: arm64-randconfig-r015-20200916 (attached as .config)
> > compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 9e3842d60351f986d77dfe0a94f76e4fd895f188)
> > reproduce (this is a W=1 build):
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # install arm64 cross compiling tool for clang build
> >         # apt-get install binutils-aarch64-linux-gnu
> >         # save the attached .config to linux build tree
> >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64
> >
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kernel test robot <lkp@intel.com>
> >
> > All warnings (new ones prefixed by >>):
> >
> > >> drivers/crypto/ccree/cc_driver.c:120:18: warning: result of comparison of constant 18446744073709551615 with expression of type 'u32' (aka 'unsigned int') is always false [-Wtautological-constant-out-of-range-compare]
> >            cache_params |= FIELD_PREP(mask, val);
> >                            ^~~~~~~~~~~~~~~~~~~~~
> >    include/linux/bitfield.h:94:3: note: expanded from macro 'FIELD_PREP'
> >                    __BF_FIELD_CHECK(_mask, 0ULL, _val, "FIELD_PREP: ");    \
> >                    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> >    include/linux/bitfield.h:52:28: note: expanded from macro '__BF_FIELD_CHECK'
> >                    BUILD_BUG_ON_MSG((_mask) > (typeof(_reg))~0ull,         \
> >                    ~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> >    include/linux/build_bug.h:39:58: note: expanded from macro 'BUILD_BUG_ON_MSG'
> >    #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)
> >                                        ~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~
> >    include/linux/compiler_types.h:319:22: note: expanded from macro 'compiletime_assert'
> >            _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
> >            ~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> >    include/linux/compiler_types.h:307:23: note: expanded from macro '_compiletime_assert'
> >            __compiletime_assert(condition, msg, prefix, suffix)
> >            ~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> >    include/linux/compiler_types.h:299:9: note: expanded from macro '__compiletime_assert'
> >                    if (!(condition))                                       \
> >                          ^~~~~~~~~
>
> I am unable to understand this warning. It looks like it is
> complaining about a FIELD_GET sanity check that is always false, which
> makes sense since we're using a constant.
>
> Anyone can enlighten me if I've missed something?

Looked at some of this code recently.  I think it may have an issue
for masks where sizeof(mask) < sizeof(unsigned long long).

In your code, via 0day bot:

   107          u32 cache_params, ace_const, val, mask;
...
> 120          cache_params |= FIELD_PREP(mask, val);

then in include/linux/bitfield.h, we have:

 92 #define FIELD_PREP(_mask, _val)           \
 93   ({                \
 94     __BF_FIELD_CHECK(_mask, 0ULL, _val, "FIELD_PREP: ");  \

 44 #define __BF_FIELD_CHECK(_mask, _reg, _val, _pfx)     \
...
 52     BUILD_BUG_ON_MSG((_mask) > (typeof(_reg))~0ull,   \
 53          _pfx "type of reg too small for mask"); \

so the 0ULL in FIELD_PREP is important.  In __BF_FIELD_CHECK, the
typeof(_reg) is unsigned long long (because 0ULL was passed).  So we
have a comparison between a u32 and a u64; indeed any u32 can never be
greater than a u64 that we know has the value of ULLONG_MAX.

I did send a series splitting these up, I wonder if they'd help here:
https://lore.kernel.org/lkml/20200708230402.1644819-3-ndesaulniers@google.com/
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmW%2Bn_g4C_pXnF%2B8wh2q0gZZyXAfaYR9cVNm3p1QeJ-xA%40mail.gmail.com.
