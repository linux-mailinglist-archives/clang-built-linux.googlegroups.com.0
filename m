Return-Path: <clang-built-linux+bncBDF5JWWZ6YKRBZNGT33QKGQEPSCKUQA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13f.google.com (mail-il1-x13f.google.com [IPv6:2607:f8b0:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id D8BB41F9BF5
	for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jun 2020 17:27:34 +0200 (CEST)
Received: by mail-il1-x13f.google.com with SMTP id v14sf12306520ilo.19
        for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jun 2020 08:27:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592234854; cv=pass;
        d=google.com; s=arc-20160816;
        b=X+nSiTLLkLJynCLiNDrAFg4oU8GSrLCpl1i+nSXMbMFoNZGPc6OGEsEvtdvLx51yqI
         m0fnMV9nMUf3sva3aN/ZDZ3FQqMmREaAV5KmEC5TWMTRrolnztW7L/1oIIFfe6mneHAG
         CatPN3Rgj9yUoK4VnuPs8HdxZ2cf+SS9xmSri8FbJb50gb1nacEhZ0/N0XsJItHCEExK
         KuyRyfA3JWKC3+mAVAhB7LVR0TA4ygK54t1gvASoUGx8hvN9X995f/jX+d/HBkIHUDEK
         elx6Xpc9DIApzZBVwFMHvLZvh/of5yiC837sBF+VfhBLW8iMhhOdF2ZVilGKy+Hkpkal
         hSXg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=UGXNB9QW0OiHnXYJ1+6Ac/POY9HAD9aJfokP23KtTZc=;
        b=ku7tLr7KFOzDYznZXVT1nWEqpY6YViK55WNXs09wIztPtAHAUgkl9opLhAN54WEjq8
         HIj/q8HVOJPGeSpmhbi9TEdS/z/0hSh9rl73jb+tH6xa2G0treaE0De68+zUm7wzZF5M
         rAzkhmYvlO5gaZ59eJoYZAD1RlQrSI5e3UZUC1RE3XTgKsPVFEz7RPAnjJy8cgmMqRUE
         rS2gN5LVAhNxhhStk1FEwVv0BUzhOIE6tzKExy93ecyQJDUSCbcRPV5OLvAk+jorB1sf
         rihTHQyA22F5rpU1zt5A/j9iDCLeQhH3TbVm54zwbghSFuv8iM+MI3E4kOHcEhjKQDZk
         g0aw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RSrzRSdV;
       spf=pass (google.com: domain of zhengdejin5@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=zhengdejin5@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=UGXNB9QW0OiHnXYJ1+6Ac/POY9HAD9aJfokP23KtTZc=;
        b=BxBlpXqQJFYuUuMy8xlKHfWVUTnnJhWlQI/U7kQqCqa7JXGDN6q6kdvCV8mxZ+hrV5
         WzdOTzl4Okp2/0mRvKUd/AftALWUVjudAt8JKfmC7UygLuYtw44Ny8PUTyiFntTkmlU4
         KfxbdBPAEtYPGbHtk9qu326yqNpEqo7X6W91HJXpsCebVrHfcOIq1VK9cCTpg3jk9/yj
         Sg1pv8/fe6ZzfgJNuY3xyDzeR/mW9FVMMM1+6qSbYWA+oMhA/5a/xLZkKAV2cHkeLGwW
         yjmoKXTCF5G5YS0VaT0JCXVh/8Mtx5Fv603dHknG4YL1CXD9NjSmJO1V0EgFbOGklrKD
         CU+A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=UGXNB9QW0OiHnXYJ1+6Ac/POY9HAD9aJfokP23KtTZc=;
        b=MpRvsXY6nKroAyuY1wgKCj13vOldJyoq4VsxrQwvnByEteFX8GuY3ROX36w0hKWgr+
         aTb9PWIFK+ZTsWrSvmzrvjmNBGJio3o3De7Yf6zuT21wUF3mW+91r6wdZPz+UwpVUCpD
         YBI1MGhKDx8ZALp5GeUiWUuIZboxPUNhsfcTQdRJF3uk54V/xlBtQJfwrKnmgvE5c2Hp
         xd9ZvU7z7gSTjxD64Mtc523vzQAybBQvyIhZhgNjJzC9I+xftQqMM2iw4qFlIl1oCu14
         bzV2SOp7kXrdFGcjfkmuVj++TDm82AEJXRyb1eq1cb68SsDjmsHFRHaqM3pizOkanvO4
         4mSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=UGXNB9QW0OiHnXYJ1+6Ac/POY9HAD9aJfokP23KtTZc=;
        b=fqjC2etfy0UFlRkr7h4UHq+RmfziIavv6L2iTMFJiW5wzcP4Op52yWV4+JvHgscpwk
         TXBQvEHOYCJ/o9V6fX0olbZ7JORyrCkdYXFHe0SfX6JZtodOgGpD08+aJrzZVLn0GsFb
         ys5HaPjg8JnCH9OEuYzeuNtK3t9kEFfZ4U0adUffA/yLUyyy4oTHFjatZM3OWKrkNY+/
         raAfWoqeMKiHClbgQ1wK21wy7Mk2RVr/5bpzwiF8S/yXuAco21i0PFPm4pmLaQ5DSbPi
         Hmi8CUBnQ2U8pTPGcahul6SbRmDc5hLKrUUsiQRouBW1KcIbM/EI2d/6ojL/eJYVaDRT
         vzlA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5325QrtifmOg9BU76o2UUFUIkekr4pGPcnE9CkDBPDgnJzq4fYWU
	rxYblXBnxrjYjW1Boxx+sIQ=
X-Google-Smtp-Source: ABdhPJwMZkgP7sgWjHhm/KsjEJX18JVTkS0lK7vRS6/T0WeFun5VnyZVk3kuSIaX/FmmCbSWX7UI8A==
X-Received: by 2002:a05:6638:112c:: with SMTP id f12mr21560023jar.98.1592234853767;
        Mon, 15 Jun 2020 08:27:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6602:1584:: with SMTP id e4ls2627293iow.0.gmail; Mon, 15
 Jun 2020 08:27:33 -0700 (PDT)
X-Received: by 2002:a5d:9a81:: with SMTP id c1mr28127867iom.35.1592234853475;
        Mon, 15 Jun 2020 08:27:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592234853; cv=none;
        d=google.com; s=arc-20160816;
        b=uPIo5iLKikGwcMUF4+9xuNOwSsvnqyLgzne/aWF4ueUvsUloz84JFtpWk8Blrazz1k
         i4WmZmL2TA70SbKGqVEtqR5uHGaJU3/pb7USY+c5kOYTkbCPYVIqUMa6ScKyRI4xYSw3
         C7RU/GSWVSwkvIXZ47sJaYPVxjk2X/E+CjEk0D+VdNez/WWFQx4srj969mbJJKEAhMw4
         vihAbOAwxdJjJBfZq4mK3HBM3x1fsIDLNYXZIJP3yhQQ0nxx3k//YLlXBON/+7Bmo6+B
         Bq5zu87jJHW15D2ta5xHw3H40yLdCQGabp4M0dgd9OX3QA3HLODRejNkJNTLuJC2WrTJ
         CpzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=H0eZIb3dx86MseSJBS54PQAJPp88oPjLSYVP7aVWt7s=;
        b=fUqlKOg2vBURCpA60CFRCEbT8tzacY4T+lMDWIy0Cy8u5Jxico69Z0l1Hr3S4YaBUN
         FfvbvkPMDTqN8g80ajTfb2shz6jxvEKAr8RjRq3w/A3f47G0x9CmS07UicguNonOTFoE
         EZ6QRmSRmDUSpI9/zmd/BvU2rXiR0dJIBu3SsEgi8T1n8/U008ueC2JJxZJwZVmnVuKz
         jiZPSmznAql0DhyG1DVy3ThuUJq/t1dn0nlKAnyOGgt6Z/TwNduPqAHr9fVc6v8XePcB
         6zNFcKX65D36A3SaLBlskgKaQx8P5A43fdT+SgerK/zBkVH3fVgz3D52hFrpZERja5bP
         MGGA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RSrzRSdV;
       spf=pass (google.com: domain of zhengdejin5@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=zhengdejin5@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id b1si854099ilq.4.2020.06.15.08.27.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Jun 2020 08:27:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of zhengdejin5@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id 23so7944192pfw.10
        for <clang-built-linux@googlegroups.com>; Mon, 15 Jun 2020 08:27:33 -0700 (PDT)
X-Received: by 2002:a62:7610:: with SMTP id r16mr23328944pfc.70.1592234852837;
        Mon, 15 Jun 2020 08:27:32 -0700 (PDT)
Received: from localhost ([216.24.184.172])
        by smtp.gmail.com with ESMTPSA id j123sm8454252pfd.160.2020.06.15.08.27.31
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 15 Jun 2020 08:27:32 -0700 (PDT)
Date: Mon, 15 Jun 2020 23:27:27 +0800
From: Dejin Zheng <zhengdejin5@gmail.com>
To: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org, Mark Brown <broonie@kernel.org>
Subject: Re: drivers/reset/reset-intel-gw.c:18:9: warning: 'REG_OFFSET' macro
 redefined
Message-ID: <20200615152727.GA11811@nuc8i5>
References: <202006152207.BGQiLOS0%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202006152207.BGQiLOS0%lkp@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: zhengdejin5@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=RSrzRSdV;       spf=pass
 (google.com: domain of zhengdejin5@gmail.com designates 2607:f8b0:4864:20::442
 as permitted sender) smtp.mailfrom=zhengdejin5@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Mon, Jun 15, 2020 at 10:33:12PM +0800, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> head:   b3a9e3b9622ae10064826dccb4f7a52bd88c7407
> commit: e44ab4e14d6f4c448ae555132090c1a116b19e5c regmap: Simplify implementation of the regmap_read_poll_timeout() macro
> date:   8 weeks ago
> config: arm-randconfig-r022-20200615 (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 3d8149c2a1228609fd7d7c91a04681304a2f0ca9)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install arm cross compiling tool for clang build
>         # apt-get install binutils-arm-linux-gnueabi
>         git checkout e44ab4e14d6f4c448ae555132090c1a116b19e5c
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
Hi

I sent a patch to fix it, and now the patch is currently under review.
https://lkml.org/lkml/2020/6/4/606

BR,
Dejin

> All warnings (new ones prefixed by >>, old ones prefixed by <<):
> 
> >> drivers/reset/reset-intel-gw.c:18:9: warning: 'REG_OFFSET' macro redefined [-Wmacro-redefined]
> #define REG_OFFSET      GENMASK(31, 16)
> ^
> arch/arm/mach-ixp4xx/include/mach/platform.h:25:9: note: previous definition is here
> #define REG_OFFSET      3
> ^
> 1 warning generated.
> 
> vim +/REG_OFFSET +18 drivers/reset/reset-intel-gw.c
> 
> c9aef213e38cde Dilip Kota 2020-01-03  17  
> c9aef213e38cde Dilip Kota 2020-01-03 @18  #define REG_OFFSET	GENMASK(31, 16)
> c9aef213e38cde Dilip Kota 2020-01-03  19  #define BIT_OFFSET	GENMASK(15, 8)
> c9aef213e38cde Dilip Kota 2020-01-03  20  #define STAT_BIT_OFFSET	GENMASK(7, 0)
> c9aef213e38cde Dilip Kota 2020-01-03  21  
> 
> :::::: The code at line 18 was first introduced by commit
> :::::: c9aef213e38cde27d4689a5cbe25a7c1b1db9fad reset: intel: Add system reset controller driver
> 
> :::::: TO: Dilip Kota <eswara.kota@linux.intel.com>
> :::::: CC: Philipp Zabel <p.zabel@pengutronix.de>
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200615152727.GA11811%40nuc8i5.
