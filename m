Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB3FF7SEAMGQEK52QDEI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x638.google.com (mail-pl1-x638.google.com [IPv6:2607:f8b0:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id 295113F24C1
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Aug 2021 04:26:54 +0200 (CEST)
Received: by mail-pl1-x638.google.com with SMTP id p21-20020a1709028a95b029012c31764588sf2349659plo.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Aug 2021 19:26:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629426413; cv=pass;
        d=google.com; s=arc-20160816;
        b=0x3AcLGN8offVAa6/jOqsAR8QP2k0UHQIu+BUp6B+crAgA5lUyyXie+cOk/CwUk6kJ
         qYsiQ5PCAfMQhs98EINrBBVh8j9tURfOOv743bD44ws9DTaXgC3XmknfKeKbRz29XHzi
         3oNwvjK4YgTSjYg5Kid48ifCYGqhB0dgU4aJgJlkYlWjlMhimcd7GRM0xMDmAQFI7YPD
         n3nVaMl+TdBxpzAa81SlGGnyRbrdblacarCMNzj4bKKG4Ekc7Eb3Sq0u696zOpCZIWp1
         myjgLrpjrrLJz6u4TkkYw0LAWnEoNakcDH+6JzdNbhTP5qTFKVdD9KuN+btEoyls9pWz
         A8JA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=eg1R/H5+7P0NGrx+H0fPykcr+E4g+c3+xHInBO/DuVM=;
        b=LV/UYMPCJ44yCkUffk2gMSDnAnmZSW8Fz5mkAFEg/h0TlPU9U3JHN9lLX+oCQe13dl
         vE+fuKm4WU9mmn6Mp44DVPbA1hccXFpYXtdv85l9pG0HMMobkzmVGUv96zaHuoGX3GPr
         AhP0gHA8okmnOo3qrBz8foQr35uEmd6GeVNSJs48vx6U06hTGCddeSipWPETwBDpEut3
         dT5DaJw3GQLWrZSWGvGcm/1o305jcqjqri7f1kj4ZJ4m726kg6AyBMuHBcDCQZnXXOgT
         cXUoAJ6GjPun2/JSMzUMK/RfH1gk1SUrHcwnIxiQEWYcqyPh4ECCG/ozc1eZVbhshctX
         k5wA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=eg1R/H5+7P0NGrx+H0fPykcr+E4g+c3+xHInBO/DuVM=;
        b=L+J3C0PA4Wb7kYq5UNhgEmjT6xUtzxwYxZeqZZN+JUgLdKe2Tu1rCdmuG8qUN5lsVK
         tyN94tKBrXATQqy/Ozy1/jjEQlKEwjyjiudMRCC7kSxepQQ+UIib1ke9cVCfOIglOxqX
         GDLct0p1+DI/DCRkweUQr8RhNVm7FYCfDpdlHYcQGpdzvJzGET9B0V/ZqTiLQXgju+39
         GTAtdzP4uCoAhNVucQrG2d0VHWbrL7jGK2rmZV5Fg6OOlRqtC2K9EoBQP991/0B2n3Zu
         /V+GTtWSAhXoQgNKZ6fLO6c+Gv2eU5Bw+k8kAD+jU0xg08DMz0lpIgFtj7ECpt7g8G48
         kxVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eg1R/H5+7P0NGrx+H0fPykcr+E4g+c3+xHInBO/DuVM=;
        b=cEx5RV2JYW/d1o1+0tBfHerX7JHmpXuuzziS7wrwW0XKhClbcgh8T9Z8N56AcFKd0Q
         h5B9R5cjoHBLFpkg58wmF4Cv58QTO7EENlZzz3ExBU9f99xGRGzLkIOADYR+FS43Nxca
         2Y4o08obpD4lb7hywgSNlBmyw414vWwO6pziGF3M+ou9GuJnR8lC9PKQc70T3EXc/RqO
         VKJZrdHu7yF3xc1pydnBHWaJ0i3CjjR/GfryPszn/YFrWpTPWCxNeT3AnkZmGqBYr8c4
         SJSBMfuPygxosl1dbbUcgsAruyOyaWxr4NOy+v91W7sA9TcVEP0bid95UQQIq4VWgHZH
         MZQw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533s46Zee5+eRiBuh8L4/G/fqIp4R9Shqr9Z26Uw94976xYcIlB1
	ktqD+gNuQsrmDucAgMvY1H8=
X-Google-Smtp-Source: ABdhPJzlk5w6av0CWVzraeYIN2+TfQTfkNH6LXW/Mt/5mdS94QbDZSnqZOhbRKgWLirkvFHqNIp9aQ==
X-Received: by 2002:a17:90a:ead5:: with SMTP id ev21mr2105291pjb.3.1629426412768;
        Thu, 19 Aug 2021 19:26:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:ff04:: with SMTP id k4ls3352203pgi.11.gmail; Thu, 19 Aug
 2021 19:26:52 -0700 (PDT)
X-Received: by 2002:a05:6a00:2405:b0:3e1:9f65:9703 with SMTP id z5-20020a056a00240500b003e19f659703mr17554281pfh.6.1629426412153;
        Thu, 19 Aug 2021 19:26:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629426412; cv=none;
        d=google.com; s=arc-20160816;
        b=JsUUWFti8iDW2MlQpStWdgW4XxNyQ4OOTU2lcJxqsHiYbf2QB0KJ8WOjcTgbaJOdmp
         kqHhR8AQY4wB9hAMKopfQLm0BQNIQ/LI4xG+eRpRtZqNTqj0INMDgxdfOGbKPQzC6VYq
         clHmekBkcYTUAeypEILR9F/nXXW0UdWENaPOEsKFY1l6Rd1HBOieod01fke+qsJJdGxX
         vo58jjICsGWzvRpWZ+jKKECGkkIssgxVbr0kQRLR9Fn9zUhkDFSwvw864LjVubke+XUY
         czNeFNpjZE+oAneP3eK19Pr+V6hv9BzWovWSsjK3NIFd8BgRYwDChRuR8Vmzbe05m7O4
         sTBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=YUMOo32Yr70vc/ME7aYKDpHhEqjHo1Ccu8agQpV7THQ=;
        b=dEbSZknA0hqszIgSUTwmBRAe/k099bRD7Ak2GV9NmCKe2DxiB7qaqVllOd1yIIeCYm
         MMM6Fu58cVnlLYaEwo1K+ZrUbCuvcVbsarcFZPRq3zND9k8hxNKaazCralRZrMgrNLH8
         YbSa91U4auslO8yNZp2hR+fQKVcMRP9RP/q9jBMBimZn9ki1fglIUkQYFOmNid+rl3Jq
         LTkRcidjv3VzfhzNK3VoXNH3X9cuXjEOXNS8ziqGnsZFuRQfzActPJkpsPOe8OSSGXID
         pDgIG377lJYMtZJswRLDya9K9YwSut9F6R6zVJHBiozwOH/WUsbVc69xnP2v3FpsPADG
         /aog==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga02.intel.com (mga02.intel.com. [134.134.136.20])
        by gmr-mx.google.com with ESMTPS id h6si160446pji.0.2021.08.19.19.26.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Aug 2021 19:26:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) client-ip=134.134.136.20;
X-IronPort-AV: E=McAfee;i="6200,9189,10081"; a="203894490"
X-IronPort-AV: E=Sophos;i="5.84,336,1620716400"; 
   d="gz'50?scan'50,208,50";a="203894490"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Aug 2021 19:26:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,336,1620716400"; 
   d="gz'50?scan'50,208,50";a="682010927"
Received: from lkp-server01.sh.intel.com (HELO d053b881505b) ([10.239.97.150])
  by fmsmga005.fm.intel.com with ESMTP; 19 Aug 2021 19:26:43 -0700
Received: from kbuild by d053b881505b with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1mGuF0-000USz-Li; Fri, 20 Aug 2021 02:26:42 +0000
Date: Fri, 20 Aug 2021 10:26:06 +0800
From: kernel test robot <lkp@intel.com>
To: Viorel Suman <viorel.suman@nxp.com>
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	linux-kernel@vger.kernel.org, Mark Brown <broonie@kernel.org>
Subject: sound/soc/fsl/fsl_xcvr.c:1048:17: warning: Value stored to 'dev'
 during its initialization is never read [clang-analyzer-deadcode.DeadStores]
Message-ID: <202108201004.SfReyBA0-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="h31gzZEtNLTqOjlF"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted
 sender) smtp.mailfrom=lkp@intel.com;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=intel.com
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


--h31gzZEtNLTqOjlF
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   d992fe5318d8d7af9510b879439a3c7f283da442
commit: 28564486866fa889b78264360022c94836fa8072 ASoC: fsl_xcvr: Add XCVR ASoC CPU DAI driver
date:   10 months ago
config: arm-randconfig-c002-20210816 (attached as .config)
compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project 44d0a99a12ec7ead4d2f5ef649ba05b40f6d463d)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install arm cross compiling tool for clang build
        # apt-get install binutils-arm-linux-gnueabi
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=28564486866fa889b78264360022c94836fa8072
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout 28564486866fa889b78264360022c94836fa8072
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm clang-analyzer 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>


clang-analyzer warnings: (new ones prefixed by >>)
   include/linux/minmax.h:130:36: note: expanded from macro 'clamp_t'
   #define clamp_t(type, val, lo, hi) min_t(type, max_t(type, val, lo), hi)
                                      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/minmax.h:110:27: note: expanded from macro 'min_t'
   #define min_t(type, x, y)       __careful_cmp((type)(x), (type)(y), <)
                                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/minmax.h:44:3: note: expanded from macro '__careful_cmp'
                   __cmp_once(x, y, __UNIQUE_ID(__x), __UNIQUE_ID(__y), op))
                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/minmax.h:39:3: note: expanded from macro '__cmp_once'
                   __cmp(unique_x, unique_y, op); })
                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/minmax.h:34:26: note: expanded from macro '__cmp'
   #define __cmp(x, y, op) ((x) op (y) ? (x) : (y))
                            ^~~
   drivers/hwmon/lm75.h:27:14: note: '?' condition is true
           int ntemp = clamp_val(temp, LM75_TEMP_MIN, LM75_TEMP_MAX);
                       ^
   include/linux/minmax.h:143:32: note: expanded from macro 'clamp_val'
   #define clamp_val(val, lo, hi) clamp_t(typeof(val), val, lo, hi)
                                  ^
   include/linux/minmax.h:130:36: note: expanded from macro 'clamp_t'
   #define clamp_t(type, val, lo, hi) min_t(type, max_t(type, val, lo), hi)
                                      ^
   include/linux/minmax.h:110:27: note: expanded from macro 'min_t'
   #define min_t(type, x, y)       __careful_cmp((type)(x), (type)(y), <)
                                   ^
   include/linux/minmax.h:44:3: note: expanded from macro '__careful_cmp'
                   __cmp_once(x, y, __UNIQUE_ID(__x), __UNIQUE_ID(__y), op))
                   ^
   include/linux/minmax.h:39:3: note: expanded from macro '__cmp_once'
                   __cmp(unique_x, unique_y, op); })
                   ^
   include/linux/minmax.h:34:26: note: expanded from macro '__cmp'
   #define __cmp(x, y, op) ((x) op (y) ? (x) : (y))
                            ^
   drivers/hwmon/lm75.h:29:12: note: 'ntemp' is < 0
           ntemp += (ntemp < 0 ? -250 : 250);
                     ^~~~~
   drivers/hwmon/lm75.h:29:12: note: '?' condition is true
   drivers/hwmon/lm75.h:30:29: note: The result of the left shift is undefined because the left operand is negative
           return (u16)((ntemp / 500) << 7);
                        ~~~~~~~~~~~~~ ^
   Suppressed 3 warnings (3 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   3 warnings generated.
   Suppressed 3 warnings (3 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   10 warnings generated.
   sound/soc/fsl/fsl_spdif.c:153:26: warning: Value stored to 'pdev' during its initialization is never read [clang-analyzer-deadcode.DeadStores]
           struct platform_device *pdev = spdif_priv->pdev;
                                   ^~~~   ~~~~~~~~~~~~~~~~
   sound/soc/fsl/fsl_spdif.c:153:26: note: Value stored to 'pdev' during its initialization is never read
           struct platform_device *pdev = spdif_priv->pdev;
                                   ^~~~   ~~~~~~~~~~~~~~~~
   sound/soc/fsl/fsl_spdif.c:169:26: warning: Value stored to 'pdev' during its initialization is never read [clang-analyzer-deadcode.DeadStores]
           struct platform_device *pdev = spdif_priv->pdev;
                                   ^~~~   ~~~~~~~~~~~~~~~~
   sound/soc/fsl/fsl_spdif.c:169:26: note: Value stored to 'pdev' during its initialization is never read
           struct platform_device *pdev = spdif_priv->pdev;
                                   ^~~~   ~~~~~~~~~~~~~~~~
   sound/soc/fsl/fsl_spdif.c:221:26: warning: Value stored to 'pdev' during its initialization is never read [clang-analyzer-deadcode.DeadStores]
           struct platform_device *pdev = spdif_priv->pdev;
                                   ^~~~   ~~~~~~~~~~~~~~~~
   sound/soc/fsl/fsl_spdif.c:221:26: note: Value stored to 'pdev' during its initialization is never read
           struct platform_device *pdev = spdif_priv->pdev;
                                   ^~~~   ~~~~~~~~~~~~~~~~
   sound/soc/fsl/fsl_spdif.c:238:26: warning: Value stored to 'pdev' during its initialization is never read [clang-analyzer-deadcode.DeadStores]
           struct platform_device *pdev = spdif_priv->pdev;
                                   ^~~~   ~~~~~~~~~~~~~~~~
   sound/soc/fsl/fsl_spdif.c:238:26: note: Value stored to 'pdev' during its initialization is never read
           struct platform_device *pdev = spdif_priv->pdev;
                                   ^~~~   ~~~~~~~~~~~~~~~~
   sound/soc/fsl/fsl_spdif.c:270:26: warning: Value stored to 'pdev' during its initialization is never read [clang-analyzer-deadcode.DeadStores]
           struct platform_device *pdev = spdif_priv->pdev;
                                   ^~~~   ~~~~~~~~~~~~~~~~
   sound/soc/fsl/fsl_spdif.c:270:26: note: Value stored to 'pdev' during its initialization is never read
           struct platform_device *pdev = spdif_priv->pdev;
                                   ^~~~   ~~~~~~~~~~~~~~~~
   sound/soc/fsl/fsl_spdif.c:372:26: warning: Value stored to 'pdev' during its initialization is never read [clang-analyzer-deadcode.DeadStores]
           struct platform_device *pdev = spdif_priv->pdev;
                                   ^~~~   ~~~~~~~~~~~~~~~~
   sound/soc/fsl/fsl_spdif.c:372:26: note: Value stored to 'pdev' during its initialization is never read
           struct platform_device *pdev = spdif_priv->pdev;
                                   ^~~~   ~~~~~~~~~~~~~~~~
   sound/soc/fsl/fsl_spdif.c:844:26: warning: Value stored to 'pdev' during its initialization is never read [clang-analyzer-deadcode.DeadStores]
           struct platform_device *pdev = spdif_priv->pdev;
                                   ^~~~   ~~~~~~~~~~~~~~~~
   sound/soc/fsl/fsl_spdif.c:844:26: note: Value stored to 'pdev' during its initialization is never read
           struct platform_device *pdev = spdif_priv->pdev;
                                   ^~~~   ~~~~~~~~~~~~~~~~
   Suppressed 3 warnings (3 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   3 warnings generated.
   Suppressed 3 warnings (3 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   4 warnings generated.
>> sound/soc/fsl/fsl_xcvr.c:1048:17: warning: Value stored to 'dev' during its initialization is never read [clang-analyzer-deadcode.DeadStores]
           struct device *dev = &xcvr->pdev->dev;
                          ^~~   ~~~~~~~~~~~~~~~~
   sound/soc/fsl/fsl_xcvr.c:1048:17: note: Value stored to 'dev' during its initialization is never read
           struct device *dev = &xcvr->pdev->dev;
                          ^~~   ~~~~~~~~~~~~~~~~
   Suppressed 3 warnings (3 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   3 warnings generated.
   Suppressed 3 warnings (3 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   3 warnings generated.
   Suppressed 3 warnings (3 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   4 warnings generated.
   sound/soc/img/img-spdif-in.c:787:30: warning: The result of the left shift is undefined because the left operand is negative [clang-analyzer-core.UndefinedBinaryOperatorResult]
           reg |= (spdif->lock_release << IMG_SPDIF_IN_CTL_LOCKLO_SHIFT) &
                   ~~~~~~~~~~~~~~~~~~~ ^
   sound/soc/img/img-spdif-in.c:728:6: note: Assuming 'spdif' is non-null
           if (!spdif)
               ^~~~~~
   sound/soc/img/img-spdif-in.c:728:2: note: Taking false branch
           if (!spdif)
           ^
   sound/soc/img/img-spdif-in.c:731:2: note: Calling 'platform_set_drvdata'
           platform_set_drvdata(pdev, spdif);
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/platform_device.h:239:2: note: Calling 'dev_set_drvdata'
           dev_set_drvdata(&pdev->dev, data);
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/device.h:663:1: note: Returning without writing to 'data->lock_release'
   }
   ^
   include/linux/platform_device.h:239:2: note: Returning from 'dev_set_drvdata'
           dev_set_drvdata(&pdev->dev, data);
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/platform_device.h:240:1: note: Returning without writing to 'data->lock_release'
   }
   ^
   sound/soc/img/img-spdif-in.c:731:2: note: Returning from 'platform_set_drvdata'
           platform_set_drvdata(pdev, spdif);
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   sound/soc/img/img-spdif-in.c:737:6: note: Calling 'IS_ERR'
           if (IS_ERR(base))
               ^~~~~~~~~~~~
   include/linux/err.h:36:9: note: Assuming the condition is false
           return IS_ERR_VALUE((unsigned long)ptr);
                  ^
   include/linux/err.h:22:34: note: expanded from macro 'IS_ERR_VALUE'
   #define IS_ERR_VALUE(x) unlikely((unsigned long)(void *)(x) >= (unsigned long)-MAX_ERRNO)
                           ~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler.h:78:42: note: expanded from macro 'unlikely'
   # define unlikely(x)    __builtin_expect(!!(x), 0)
                                               ^
   include/linux/err.h:36:2: note: Returning zero, which participates in a condition later
           return IS_ERR_VALUE((unsigned long)ptr);
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   sound/soc/img/img-spdif-in.c:737:6: note: Returning from 'IS_ERR'
           if (IS_ERR(base))
               ^~~~~~~~~~~~
   sound/soc/img/img-spdif-in.c:737:2: note: Taking false branch
           if (IS_ERR(base))
           ^
   sound/soc/img/img-spdif-in.c:743:6: note: Calling 'IS_ERR'
           if (IS_ERR(spdif->clk_sys)) {
               ^~~~~~~~~~~~~~~~~~~~~~
   include/linux/err.h:36:9: note: Assuming the condition is false
           return IS_ERR_VALUE((unsigned long)ptr);
                  ^
   include/linux/err.h:22:34: note: expanded from macro 'IS_ERR_VALUE'
   #define IS_ERR_VALUE(x) unlikely((unsigned long)(void *)(x) >= (unsigned long)-MAX_ERRNO)
                           ~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler.h:78:42: note: expanded from macro 'unlikely'
   # define unlikely(x)    __builtin_expect(!!(x), 0)
                                               ^
   include/linux/err.h:36:2: note: Returning zero, which participates in a condition later
           return IS_ERR_VALUE((unsigned long)ptr);
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   sound/soc/img/img-spdif-in.c:743:6: note: Returning from 'IS_ERR'
           if (IS_ERR(spdif->clk_sys)) {
               ^~~~~~~~~~~~~~~~~~~~~~
   sound/soc/img/img-spdif-in.c:743:2: note: Taking false branch
           if (IS_ERR(spdif->clk_sys)) {
           ^
   sound/soc/img/img-spdif-in.c:750:7: note: Calling 'pm_runtime_enabled'
           if (!pm_runtime_enabled(&pdev->dev)) {
                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/pm_runtime.h:263:61: note: Returning zero, which participates in a condition later
   static inline bool pm_runtime_enabled(struct device *dev) { return false; }
                                                               ^~~~~~~~~~~~
   sound/soc/img/img-spdif-in.c:750:7: note: Returning from 'pm_runtime_enabled'
           if (!pm_runtime_enabled(&pdev->dev)) {
                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   sound/soc/img/img-spdif-in.c:750:2: note: Taking true branch
           if (!pm_runtime_enabled(&pdev->dev)) {
           ^
   sound/soc/img/img-spdif-in.c:751:9: note: Calling 'img_spdif_in_runtime_resume'
                   ret = img_spdif_in_runtime_resume(&pdev->dev);
                         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   sound/soc/img/img-spdif-in.c:104:8: note: Calling 'clk_prepare_enable'
           ret = clk_prepare_enable(spdif->clk_sys);

vim +/dev +1048 sound/soc/fsl/fsl_xcvr.c

  1044	
  1045	static irqreturn_t irq0_isr(int irq, void *devid)
  1046	{
  1047		struct fsl_xcvr *xcvr = (struct fsl_xcvr *)devid;
> 1048		struct device *dev = &xcvr->pdev->dev;
  1049		struct regmap *regmap = xcvr->regmap;
  1050		void __iomem *reg_ctrl, *reg_buff;
  1051		u32 isr, isr_clr = 0, val, i;
  1052	
  1053		regmap_read(regmap, FSL_XCVR_EXT_ISR, &isr);
  1054	
  1055		if (isr & FSL_XCVR_IRQ_NEW_CS) {
  1056			dev_dbg(dev, "Received new CS block\n");
  1057			isr_clr |= FSL_XCVR_IRQ_NEW_CS;
  1058			/* Data RAM is 4KiB, last two pages: 8 and 9. Select page 8. */
  1059			regmap_update_bits(xcvr->regmap, FSL_XCVR_EXT_CTRL,
  1060					   FSL_XCVR_EXT_CTRL_PAGE_MASK,
  1061					   FSL_XCVR_EXT_CTRL_PAGE(8));
  1062	
  1063			/* Find updated CS buffer */
  1064			reg_ctrl = xcvr->ram_addr + FSL_XCVR_RX_CS_CTRL_0;
  1065			reg_buff = xcvr->ram_addr + FSL_XCVR_RX_CS_BUFF_0;
  1066			memcpy_fromio(&val, reg_ctrl, sizeof(val));
  1067			if (!val) {
  1068				reg_ctrl = xcvr->ram_addr + FSL_XCVR_RX_CS_CTRL_1;
  1069				reg_buff = xcvr->ram_addr + FSL_XCVR_RX_CS_BUFF_1;
  1070				memcpy_fromio(&val, reg_ctrl, sizeof(val));
  1071			}
  1072	
  1073			if (val) {
  1074				/* copy CS buffer */
  1075				memcpy_fromio(&xcvr->rx_iec958.status, reg_buff,
  1076					      sizeof(xcvr->rx_iec958.status));
  1077				for (i = 0; i < 6; i++) {
  1078					val = *(u32 *)(xcvr->rx_iec958.status + i*4);
  1079					*(u32 *)(xcvr->rx_iec958.status + i*4) =
  1080						bitrev32(val);
  1081				}
  1082				/* clear CS control register */
  1083				memset_io(reg_ctrl, 0, sizeof(val));
  1084			}
  1085		}
  1086		if (isr & FSL_XCVR_IRQ_NEW_UD) {
  1087			dev_dbg(dev, "Received new UD block\n");
  1088			isr_clr |= FSL_XCVR_IRQ_NEW_UD;
  1089		}
  1090		if (isr & FSL_XCVR_IRQ_MUTE) {
  1091			dev_dbg(dev, "HW mute bit detected\n");
  1092			isr_clr |= FSL_XCVR_IRQ_MUTE;
  1093		}
  1094		if (isr & FSL_XCVR_IRQ_FIFO_UOFL_ERR) {
  1095			dev_dbg(dev, "RX/TX FIFO full/empty\n");
  1096			isr_clr |= FSL_XCVR_IRQ_FIFO_UOFL_ERR;
  1097		}
  1098		if (isr & FSL_XCVR_IRQ_ARC_MODE) {
  1099			dev_dbg(dev, "CMDC SM falls out of eARC mode\n");
  1100			isr_clr |= FSL_XCVR_IRQ_ARC_MODE;
  1101		}
  1102		if (isr & FSL_XCVR_IRQ_DMA_RD_REQ) {
  1103			dev_dbg(dev, "DMA read request\n");
  1104			isr_clr |= FSL_XCVR_IRQ_DMA_RD_REQ;
  1105		}
  1106		if (isr & FSL_XCVR_IRQ_DMA_WR_REQ) {
  1107			dev_dbg(dev, "DMA write request\n");
  1108			isr_clr |= FSL_XCVR_IRQ_DMA_WR_REQ;
  1109		}
  1110	
  1111		if (isr_clr) {
  1112			regmap_write(regmap, FSL_XCVR_EXT_ISR_CLR, isr_clr);
  1113			return IRQ_HANDLED;
  1114		}
  1115	
  1116		return IRQ_NONE;
  1117	}
  1118	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202108201004.SfReyBA0-lkp%40intel.com.

--h31gzZEtNLTqOjlF
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
BxkXLTEa+/9CdWl8M7wBAA==

--h31gzZEtNLTqOjlF--
