Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBYXVRWEQMGQEB3U6DVI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103b.google.com (mail-pj1-x103b.google.com [IPv6:2607:f8b0:4864:20::103b])
	by mail.lfdr.de (Postfix) with ESMTPS id C287A3F48CA
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Aug 2021 12:39:31 +0200 (CEST)
Received: by mail-pj1-x103b.google.com with SMTP id v9-20020a17090a7c09b02901778a2a8fd6sf11133181pjf.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Aug 2021 03:39:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629715170; cv=pass;
        d=google.com; s=arc-20160816;
        b=m0SpzQ4e4YZZOcq/3GnGaUW3wIERZXycdn6jd8qqEDW2YdTdog5aBdgwFxtxBWDUfF
         gU83mGgWRDKRuPKpmMOphSI/KzD0CxDE5gC0Fz8n9bXFQiFp/WG69jI1nekxnw8qCMBl
         JugeEpIh8ffPjYrE1Xf3l+vRj6glBjw18CftZKdqYJH+wU+5xdu33OrkIqTm05eSgQjd
         z46qMX120KYxGzVJppjGi0phElRcooOX9ZulYRAWoTYcKzFr886wrfDND2vqbQXOuARP
         n5QM3ok5xC2m6H4kAgOGyg0c7zJV6o+VQdPIHJIsB5wzOSCCJ33Ey/xlHOLdJfd/4auQ
         nftA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=nb284DpU8yhlYJQElLFNSsC8bS2JSnrheTm7NcvNrhA=;
        b=fOBCAWVBDVrLT3MW8Yf8brZN1xZOh1Ix2DeFRAzntTcqvK8n3r2HfZG0BSayLxvD/x
         PknYs8wbbUVlZx82C/yu7egjfJv4L2SXqPZ+EnsiHFF2VLa0vuixVVRDr7H57lUo6CFD
         02Zm+wBOmrOkqT6BiGTR8VaH6XSrVeaFQGyCMS6+RhjaGEyDTUqeN3CO/qAa9GcZmoiU
         GwP50SLvv0OQWZI2KrS7WKAUhdpxHtxQZ+mt/U+Yk4TNgg2yTziO6Mu3HtzVy8n+tWMX
         lWXEdK7tg2Z0aiv0d1dBwJzbwyqvPpeib7sfKlre9hSQbNpnbmK9cxquOcm0GQziu9sA
         LBOg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nb284DpU8yhlYJQElLFNSsC8bS2JSnrheTm7NcvNrhA=;
        b=P3Ls85WSBQSLPXkXc9NGY/obzl64hLR3PlfdTBevjd5gNtzz2/ZPgsX6DEFsuVnDRA
         c/YzWpWxUHmjlanffpGft8sKmuNxBAndRy44QNjWs3Z0Hp478z5krN7HtMvuvkmCZBjv
         51bgy9fvk8im3k+1WyRPXrnEGp5UOqdeuGl/wksnxv7ToQiT2yIS7bVxbjuBaKBwC2Zi
         5pIml8txdER8fF1BrxemnS3t5wQd2f38mW2Z0jl6kLcVqRyGQA6efmfru0Iay8LiINVY
         9wo3p5eXTamvThd9YPepmAWQFb4QdC3xoQgaqqDgeG4qgyKYRY7XJkI54bstMH4aH9rF
         /o/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nb284DpU8yhlYJQElLFNSsC8bS2JSnrheTm7NcvNrhA=;
        b=FEWlgsENFHVyu1YgSqHz3XnK5PBR5XxORbFG863TEevJVA3Bq02/+WBPXoYVXRn6Kx
         Pb3vfqPzB0ZexfRzhVwH7mZgpqOX+xFbNv1wq0teP5lo+vanNp1LW5O/VrukUL2d5oDE
         PZBwebpKKYaN9YzdYTrpbTuoOpo19f3qEbk8zW7XlJqdxLaSbzI7hDJuK4fYc1NQsAbo
         tKJolfCFE4ju/4KzR8hGRngrUWFv+bYsk39G2OVDMHpuozYERsg2g6/h8b/8ir3qoS1s
         8GTwFI+1z6qVd7UzbeLgFkvxlI1KNG2HYB82qi3yuUqNlHWUYOC1go6UAuDpXWrTOtse
         GGhA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5309fLO/T8hvgPL3bRv34WhvV7Q12BvWduxjeA+ghuyymc4xxNIX
	LWrcBNCoupW3EiS9zGkIa08=
X-Google-Smtp-Source: ABdhPJxvxlMDrUaL1JKP19UCWunIsSONY+gFvZewyn00Z8pSIiem1Qk0sBFS3gWVLXkjNVvg8FqJDw==
X-Received: by 2002:a65:6553:: with SMTP id a19mr31618449pgw.8.1629715170415;
        Mon, 23 Aug 2021 03:39:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:1388:: with SMTP id t8ls4800166pfg.4.gmail; Mon, 23
 Aug 2021 03:39:29 -0700 (PDT)
X-Received: by 2002:aa7:8c41:0:b0:3e3:1279:105 with SMTP id e1-20020aa78c41000000b003e312790105mr23759846pfd.80.1629715169566;
        Mon, 23 Aug 2021 03:39:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629715169; cv=none;
        d=google.com; s=arc-20160816;
        b=qfBWTpkkuGYtunizSWbwwjwV24WmCm1y1KRe9Lbg1T0b7CSkWf+q+prrYwRaoHHbNs
         O/dHt+PZ5hSxQFU90mKKsXScsTwYDP2MCQO72nsi1DC35XxiCqU/lyV0ncIq6F08RL4N
         WNsNVT+YW5Z24HLiz3qEOmHO4moLCFpviza51uTuIJux0XLOUAQhp03YdIaAGgI7Ixgh
         B2DCNaaivP6nAEnp0kfpcN3ghU34HhAye/FCtQ+Bvkcp4d/qw3DDt9TBe7SLfhg16bYV
         6Hydi/PnB224TftV8a9drmRH40122zu9urO4VKF3BlHpT/yk+dTEArW/QxpzjrvY9+2o
         1t4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=mOWB8pvrLDi6CDF3qassMcP1jcpOljpdkhKow6d10jk=;
        b=VC5GnUemgSECJgDsXZBOLeIP8ut5Sacx+SVsWmwOY63NaKCIfDAXdlDz1VrknLeo5i
         j/TP7mB38eWCgoEtHzZPwndUU1bcp5lI82q6kCHuQvwrwP2XOw0awYaNlL4AcnIcnZjG
         LMxxgi41u/akKuXm5Dp2bKT/5DOyzkcDAf14fgjjGe4J/x7MCGmkFOvJOSdrQa/NV9f0
         J9sYqllPUOTtKOPMf47/FnJp2MQ63mNvGzKInWS7iyZz9GlVroWJCPiiWYFjQRGJfzZy
         eapZ9Dw1+79phb6AJr+LIezx1ydlVRAxTEWTqtWkvdcSU+yg87ih6+XVl4Kr9E3uATtg
         0/4w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga05.intel.com (mga05.intel.com. [192.55.52.43])
        by gmr-mx.google.com with ESMTPS id my17si741330pjb.1.2021.08.23.03.39.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Aug 2021 03:39:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) client-ip=192.55.52.43;
X-IronPort-AV: E=McAfee;i="6200,9189,10084"; a="302662238"
X-IronPort-AV: E=Sophos;i="5.84,344,1620716400"; 
   d="gz'50?scan'50,208,50";a="302662238"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Aug 2021 03:39:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,344,1620716400"; 
   d="gz'50?scan'50,208,50";a="683200223"
Received: from lkp-server02.sh.intel.com (HELO ca0e9373e375) ([10.239.97.151])
  by fmsmga006.fm.intel.com with ESMTP; 23 Aug 2021 03:39:26 -0700
Received: from kbuild by ca0e9373e375 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1mI7MU-00009p-2K; Mon, 23 Aug 2021 10:39:26 +0000
Date: Mon, 23 Aug 2021 18:39:13 +0800
From: kernel test robot <lkp@intel.com>
To: Tzung-Bi Shih <tzungbi@google.com>
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	linux-kernel@vger.kernel.org, Mark Brown <broonie@kernel.org>
Subject: sound/soc/codecs/rt1015.c:724:2: warning: Value stored to 'bclk_ms'
 is never read [clang-analyzer-deadcode.DeadStores]
Message-ID: <202108231809.NOi9qOEj-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="sdtB3X0nJg68CQEu"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted
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


--sdtB3X0nJg68CQEu
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   e22ce8eb631bdc47a4a4ea7ecf4e4ba499db4f93
commit: a5db2ca51367eeafb0c4013d3a6fc58932612c03 ASoC: rt1015: remove unneeded variables in rt1015_priv
date:   8 months ago
config: arm-randconfig-c002-20210820 (attached as .config)
compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project d9c5613e856cf2addfbf892fc4c1ce9ef9feceaa)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install arm cross compiling tool for clang build
        # apt-get install binutils-arm-linux-gnueabi
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=a5db2ca51367eeafb0c4013d3a6fc58932612c03
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout a5db2ca51367eeafb0c4013d3a6fc58932612c03
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm clang-analyzer 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>


clang-analyzer warnings: (new ones prefixed by >>)
                ^        ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   3 warnings generated.
   drivers/mtd/nand/raw/marvell_nand.c:2775:26: warning: Value stored to 'pdev' during its initialization is never read [clang-analyzer-deadcode.DeadStores]
           struct platform_device *pdev = container_of(nfc->dev,
                                   ^~~~
   drivers/mtd/nand/raw/marvell_nand.c:2775:26: note: Value stored to 'pdev' during its initialization is never read
           struct platform_device *pdev = container_of(nfc->dev,
                                   ^~~~
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   4 warnings generated.
   sound/soc/codecs/wm8731.c:106:3: warning: Value stored to 'best' is never read [clang-analyzer-deadcode.DeadStores]
                   best = 0;
                   ^      ~
   sound/soc/codecs/wm8731.c:106:3: note: Value stored to 'best' is never read
                   best = 0;
                   ^      ~
   Suppressed 3 warnings (3 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   3 warnings generated.
   Suppressed 3 warnings (3 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   3 warnings generated.
   Suppressed 3 warnings (3 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   3 warnings generated.
   Suppressed 3 warnings (3 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   3 warnings generated.
   Suppressed 3 warnings (3 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   3 warnings generated.
>> sound/soc/codecs/rt1015.c:724:2: warning: Value stored to 'bclk_ms' is never read [clang-analyzer-deadcode.DeadStores]
           bclk_ms = frame_size > 32;
           ^         ~~~~~~~~~~~~~~~
   sound/soc/codecs/rt1015.c:724:2: note: Value stored to 'bclk_ms' is never read
           bclk_ms = frame_size > 32;
           ^         ~~~~~~~~~~~~~~~
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   3 warnings generated.
   Suppressed 3 warnings (3 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   4 warnings generated.
   sound/soc/codecs/tas2770.c:50:23: warning: Value stored to 'tas2770' during its initialization is never read [clang-analyzer-deadcode.DeadStores]
           struct tas2770_priv *tas2770 =
                                ^~~~~~~
   sound/soc/codecs/tas2770.c:50:23: note: Value stored to 'tas2770' during its initialization is never read
           struct tas2770_priv *tas2770 =
                                ^~~~~~~
   Suppressed 3 warnings (3 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   3 warnings generated.
   Suppressed 3 warnings (3 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   3 warnings generated.
   Suppressed 3 warnings (3 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   3 warnings generated.
   Suppressed 3 warnings (3 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   3 warnings generated.
   Suppressed 3 warnings (3 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.

vim +/bclk_ms +724 sound/soc/codecs/rt1015.c

df31007400c390 Jack Yu       2020-01-15  701  
df31007400c390 Jack Yu       2020-01-15  702  static int rt1015_hw_params(struct snd_pcm_substream *substream,
df31007400c390 Jack Yu       2020-01-15  703  	struct snd_pcm_hw_params *params, struct snd_soc_dai *dai)
df31007400c390 Jack Yu       2020-01-15  704  {
df31007400c390 Jack Yu       2020-01-15  705  	struct snd_soc_component *component = dai->component;
df31007400c390 Jack Yu       2020-01-15  706  	struct rt1015_priv *rt1015 = snd_soc_component_get_drvdata(component);
a5db2ca51367ee Tzung-Bi Shih 2020-12-24  707  	int pre_div, bclk_ms, frame_size, lrck;
df31007400c390 Jack Yu       2020-01-15  708  	unsigned int val_len = 0;
df31007400c390 Jack Yu       2020-01-15  709  
a5db2ca51367ee Tzung-Bi Shih 2020-12-24  710  	lrck = params_rate(params);
a5db2ca51367ee Tzung-Bi Shih 2020-12-24  711  	pre_div = rl6231_get_clk_info(rt1015->sysclk, lrck);
df31007400c390 Jack Yu       2020-01-15  712  	if (pre_div < 0) {
df31007400c390 Jack Yu       2020-01-15  713  		dev_err(component->dev, "Unsupported clock rate\n");
df31007400c390 Jack Yu       2020-01-15  714  		return -EINVAL;
df31007400c390 Jack Yu       2020-01-15  715  	}
df31007400c390 Jack Yu       2020-01-15  716  
df31007400c390 Jack Yu       2020-01-15  717  	frame_size = snd_soc_params_to_frame_size(params);
df31007400c390 Jack Yu       2020-01-15  718  	if (frame_size < 0) {
df31007400c390 Jack Yu       2020-01-15  719  		dev_err(component->dev, "Unsupported frame size: %d\n",
df31007400c390 Jack Yu       2020-01-15  720  			frame_size);
df31007400c390 Jack Yu       2020-01-15  721  		return -EINVAL;
df31007400c390 Jack Yu       2020-01-15  722  	}
df31007400c390 Jack Yu       2020-01-15  723  
df31007400c390 Jack Yu       2020-01-15 @724  	bclk_ms = frame_size > 32;
df31007400c390 Jack Yu       2020-01-15  725  
df31007400c390 Jack Yu       2020-01-15  726  	dev_dbg(component->dev, "bclk_ms is %d and pre_div is %d for iis %d\n",
df31007400c390 Jack Yu       2020-01-15  727  				bclk_ms, pre_div, dai->id);
df31007400c390 Jack Yu       2020-01-15  728  
df31007400c390 Jack Yu       2020-01-15  729  	dev_dbg(component->dev, "lrck is %dHz and pre_div is %d for iis %d\n",
a5db2ca51367ee Tzung-Bi Shih 2020-12-24  730  				lrck, pre_div, dai->id);
df31007400c390 Jack Yu       2020-01-15  731  
df31007400c390 Jack Yu       2020-01-15  732  	switch (params_width(params)) {
df31007400c390 Jack Yu       2020-01-15  733  	case 16:
df31007400c390 Jack Yu       2020-01-15  734  		break;
df31007400c390 Jack Yu       2020-01-15  735  	case 20:
df31007400c390 Jack Yu       2020-01-15  736  		val_len = RT1015_I2S_DL_20;
df31007400c390 Jack Yu       2020-01-15  737  		break;
df31007400c390 Jack Yu       2020-01-15  738  	case 24:
df31007400c390 Jack Yu       2020-01-15  739  		val_len = RT1015_I2S_DL_24;
df31007400c390 Jack Yu       2020-01-15  740  		break;
df31007400c390 Jack Yu       2020-01-15  741  	case 8:
df31007400c390 Jack Yu       2020-01-15  742  		val_len = RT1015_I2S_DL_8;
df31007400c390 Jack Yu       2020-01-15  743  		break;
df31007400c390 Jack Yu       2020-01-15  744  	default:
df31007400c390 Jack Yu       2020-01-15  745  		return -EINVAL;
df31007400c390 Jack Yu       2020-01-15  746  	}
df31007400c390 Jack Yu       2020-01-15  747  
df31007400c390 Jack Yu       2020-01-15  748  	snd_soc_component_update_bits(component, RT1015_TDM_MASTER,
df31007400c390 Jack Yu       2020-01-15  749  		RT1015_I2S_DL_MASK, val_len);
df31007400c390 Jack Yu       2020-01-15  750  	snd_soc_component_update_bits(component, RT1015_CLK2,
4b01618b624736 Jack Yu       2020-03-03  751  		RT1015_FS_PD_MASK, pre_div << RT1015_FS_PD_SFT);
df31007400c390 Jack Yu       2020-01-15  752  
df31007400c390 Jack Yu       2020-01-15  753  	return 0;
df31007400c390 Jack Yu       2020-01-15  754  }
df31007400c390 Jack Yu       2020-01-15  755  

:::::: The code at line 724 was first introduced by commit
:::::: df31007400c3905ec15b1065241baf3864decbfa ASoC: rt1015: add rt1015 amplifier driver

:::::: TO: Jack Yu <jack.yu@realtek.com>
:::::: CC: Mark Brown <broonie@kernel.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202108231809.NOi9qOEj-lkp%40intel.com.

--sdtB3X0nJg68CQEu
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
oofPKmA9ZxHr724ZZo5P9V9nJ7gKlAECAA==

--sdtB3X0nJg68CQEu--
