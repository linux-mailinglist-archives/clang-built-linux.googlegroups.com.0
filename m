Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBF5IQWDAMGQEOMNPKJY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13c.google.com (mail-il1-x13c.google.com [IPv6:2607:f8b0:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C54C3A2109
	for <lists+clang-built-linux@lfdr.de>; Thu, 10 Jun 2021 01:51:53 +0200 (CEST)
Received: by mail-il1-x13c.google.com with SMTP id k14-20020a92b70e0000b02901ed867bd16fsf67933ili.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 09 Jun 2021 16:51:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623282711; cv=pass;
        d=google.com; s=arc-20160816;
        b=VDTchrwF1vMYL+4GrKNlJrFDIzN4K4IADFE40zZtD8EWcJX9FDaRxuMLjAZ6XKYFCV
         +Tpu6jCZwhNiUI9I+vUnAwNZ3FYKLS2mLfrpZEX9X+kI2DvY3ts4S/IRjRfCbUqb4y2d
         B4WAVkjmaFKqhh7SBhAl9pC/fDwGHlsR9ebRsigLQkXahrIwt8fnuAl9bzja+zkmrGii
         YMJKpIC1zP5c+AJl4cIqL/6F/U+EziH8Wx/3VP0NI6YQxc9/Ym2A4E0ZN37g8UiAV2a4
         7XlYsgE69o6Kp5ykaytrAq/vIpT/J+io6wyu+4JNHSgpn1X8Ww4Ruvy8mGITyZFrcWib
         ftWA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=jQD3HUhE9t/9qBPDdjT0r/3tCVO365fz6h2ZW72nYCw=;
        b=NU4LY9+RUWqBdi5CIUtknyxSPS6EkgtmezxU7AVSCecBppuiwsD0/aXbLZ0ytN+cqk
         Yxcc3OCELSKfVVDLbfxlBfFGLm9p8ePRlxAE193iOf6C7+bMwL252J1gbpGQWtunck7a
         ZubWLaG+LAhCrXSKakU9R8GsNjLKRrTYwMD/BBPg0D9jelFRSVZq3PJsD1hiC/miE/M3
         v4cO7MSbbOG6akA0ein4fDajLst4pJAjeTkTg67wBe1//3q3oKc7y8n6+CStfEy6OrvA
         q4DXC2vPHns7BRPLqssNrpnNThw+7yiyovqEBRKL4EESuTfZyOBvcNqLuLUtJr1nZkc3
         ahkg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jQD3HUhE9t/9qBPDdjT0r/3tCVO365fz6h2ZW72nYCw=;
        b=FdJ0ASS9NQtNXOhJoP380FF7/PxxIwgz3tUUh9tX89kbGJG0n+bQ7oZrEbFqRloOuZ
         s1HKYAxhH8vdR/DxO8KQ39/k+6RQRI9heux3glgLMd5UqwvcOpFp/rOEhj7XACiVbO3/
         Dug7cn/P4LXz+BnG2kFnHTptZ88gcZ/iWnj3BW4dN56aSRuultq9/O04ZQ0SIKPnR5mN
         ApJ1gvrxECIqTaG1wZZbYAm/fYS/XILCXJCw9gscSXK7JigcvUIBj0XIi0IWSRPDGQNU
         M6MHV9f1KjrSP5alUum43j7zHzSMyH4hlFSl93qCNjTx50GSiB/nQg10N2HMFojVnazV
         bDmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=jQD3HUhE9t/9qBPDdjT0r/3tCVO365fz6h2ZW72nYCw=;
        b=QNBJZ0dmG7frZLRkQGMV2wwW+uZV33sWD6e5vG2vVj82W2KQTkYUcz9WlLukBDVaht
         YDtFUp+67aYlp9Pq3Z0wyoxiSH66+6IgmS2rqG/NvN2GDiGWSmPywRcYCQ/F3jpAt9RH
         Dg+YfC7iK/MCp966dHArn9yvnkGCCRvbwd885XqiyDc+VBUhzTQSP8IDPJPJwUwuQmRg
         5HLeTjCUQu6bAR7swQJSFGj+hW5CyhcaqM4BPwghrCctCi+Plc7Kya5u/QhRzWN5CxRG
         IF4bn7tC618vaBH1OwVFZ44RwltqPYaboynzxhZi3bfiP7uWynzbeT0Gys3uyOJuQBo7
         FZPA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530pUSSKxU3xZuNK47V98BRh79QVv1ZtD+BdBMFetkpGCspUue0x
	Ol0wcAEUz8PUAA5bEdJKMmg=
X-Google-Smtp-Source: ABdhPJyViSjoXJivgboXuqg1k6/K3jiu2ImkGkv7I658YSn0UCyMq3eQ/cooiXaeBIr0utjKdacx2A==
X-Received: by 2002:a05:6e02:12c3:: with SMTP id i3mr1665224ilm.234.1623282711302;
        Wed, 09 Jun 2021 16:51:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:d212:: with SMTP id y18ls1145089ily.5.gmail; Wed, 09 Jun
 2021 16:51:51 -0700 (PDT)
X-Received: by 2002:a92:3610:: with SMTP id d16mr1613660ila.16.1623282710733;
        Wed, 09 Jun 2021 16:51:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623282710; cv=none;
        d=google.com; s=arc-20160816;
        b=ax6w2QKX/r5q7n/5xgHM2IhbmJ5xnBh8uWx/D+NqKkgkMs4wWxybTONVBs5mIep4TN
         VooUcrrraQB264leUamwovPeGEnkYqBCAyoVkgOS5WTzJfNXLo0rApyODqAxcT+qgKNR
         ezCARMyFVKgVqCkNBPSGlX7fCgoIiX5LCQ1taeTqokl+3bIXyYJrlXMM2Ie8OoNdHs0I
         4Q7EXfPfnNsis8g5rVOjShU+xsfWBXuRDt9RQx5yxdY4n+xJItRR2RfWQZlhRhM/GOaq
         DY2FMfuBtWvuOB5VlOhRnNjOhamyJ3O8UicTz4TTomBI5g7qOruOl8unn1Sa80ahm2l/
         aD1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=xD3pdWDexfMpHQQAPLPNnnP3JEQh14xgzh41+4U4HTs=;
        b=RaHr5k8hLGHgPktuO9kt3am2h9jRC39ulPHgvpa+Gq1LpMUK5NDxBm2xAipkjj7ZVo
         TQ4CB3pOOCaY2AAQTEPkw225Xc7td8niHMDgQqi9pjaW1RV9bozXLA9XwRhQyMUb6NSj
         iJH4I5xg6YeAABEG8foFqSDRw0hfhK0yhf2YjjdcChAPKCKgpqRAXq9SIwTkLtTZzVHo
         R1trywLfB0EIeSqgDMrJhbOAQEuJzjLkXDzIiqwes4TNm26UCMDbQI3gViEO5pmyMAlt
         FXlILw1K4rTGag9KpinXGrxOjEneUnFse1hLtZDCYwtoXYFyGd0fy9OM22XPqtDRHUwz
         YNwA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga17.intel.com (mga17.intel.com. [192.55.52.151])
        by gmr-mx.google.com with ESMTPS id q196si47395iod.3.2021.06.09.16.51.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 09 Jun 2021 16:51:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) client-ip=192.55.52.151;
IronPort-SDR: GLAHh7/8L1gyXlGebyM+DZIk3ruuEaABhlj2r3Iyw+uDJDwAQFHtg2kP1wwgULHaOtzVjJZWlF
 OSUnWBh3qGXQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10010"; a="185568225"
X-IronPort-AV: E=Sophos;i="5.83,262,1616482800"; 
   d="gz'50?scan'50,208,50";a="185568225"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Jun 2021 16:51:46 -0700
IronPort-SDR: lvkiR8HiFWiOS1n9d5gNQdEGtRoB1y10A3jT30AyWSdAi/6LD7a+A8LvAJTLpwyXVIndQ1KSAT
 Y1J5LeyF4qrQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,262,1616482800"; 
   d="gz'50?scan'50,208,50";a="552147895"
Received: from lkp-server02.sh.intel.com (HELO 1ec8406c5392) ([10.239.97.151])
  by orsmga004.jf.intel.com with ESMTP; 09 Jun 2021 16:51:44 -0700
Received: from kbuild by 1ec8406c5392 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lr7z5-0009l2-Kf; Wed, 09 Jun 2021 23:51:43 +0000
Date: Thu, 10 Jun 2021 07:50:53 +0800
From: kernel test robot <lkp@intel.com>
To: Christophe Leroy <christophe.leroy@csgroup.eu>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Herbert Xu <herbert@gondor.apana.org.au>
Subject: drivers/crypto/talitos.c:3328:12: warning: stack frame size of 1040
 bytes in function 'talitos_probe'
Message-ID: <202106100743.JgPkQBD1-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="6TrnltStXW4iwmi0"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted
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


--6TrnltStXW4iwmi0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   368094df48e680fa51cedb68537408cfa64b788e
commit: 43a942d27eaaf33bca560121cbe42f3637e92880 crypto: talitos - Fix ctr(aes) on SEC1
date:   4 months ago
config: powerpc-randconfig-r031-20210610 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project d2012d965d60c3258b3a69d024491698f8aec386)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc cross compiling tool for clang build
        # apt-get install binutils-powerpc-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=43a942d27eaaf33bca560121cbe42f3637e92880
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout 43a942d27eaaf33bca560121cbe42f3637e92880
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   __do_insb
   ^
   arch/powerpc/include/asm/io.h:556:56: note: expanded from macro '__do_insb'
   #define __do_insb(p, b, n)      readsb((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/crypto/talitos.c:19:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:45:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insw, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:225:1: note: expanded from here
   __do_insw
   ^
   arch/powerpc/include/asm/io.h:557:56: note: expanded from macro '__do_insw'
   #define __do_insw(p, b, n)      readsw((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/crypto/talitos.c:19:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:47:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insl, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:227:1: note: expanded from here
   __do_insl
   ^
   arch/powerpc/include/asm/io.h:558:56: note: expanded from macro '__do_insl'
   #define __do_insl(p, b, n)      readsl((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/crypto/talitos.c:19:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:49:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsb, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:229:1: note: expanded from here
   __do_outsb
   ^
   arch/powerpc/include/asm/io.h:559:58: note: expanded from macro '__do_outsb'
   #define __do_outsb(p, b, n)     writesb((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/crypto/talitos.c:19:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:51:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsw, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:231:1: note: expanded from here
   __do_outsw
   ^
   arch/powerpc/include/asm/io.h:560:58: note: expanded from macro '__do_outsw'
   #define __do_outsw(p, b, n)     writesw((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/crypto/talitos.c:19:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:53:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsl, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:233:1: note: expanded from here
   __do_outsl
   ^
   arch/powerpc/include/asm/io.h:561:58: note: expanded from macro '__do_outsl'
   #define __do_outsl(p, b, n)     writesl((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
>> drivers/crypto/talitos.c:3328:12: warning: stack frame size of 1040 bytes in function 'talitos_probe' [-Wframe-larger-than=]
   static int talitos_probe(struct platform_device *ofdev)
              ^
   8 warnings generated.


vim +/talitos_probe +3328 drivers/crypto/talitos.c

c3e337f88a5b37 Kim Phillips     2011-11-21  3327  
1c48a5c93da631 Grant Likely     2011-02-17 @3328  static int talitos_probe(struct platform_device *ofdev)
9c4a79653b35ef Kim Phillips     2008-06-23  3329  {
9c4a79653b35ef Kim Phillips     2008-06-23  3330  	struct device *dev = &ofdev->dev;
61c7a080a5a061 Grant Likely     2010-04-13  3331  	struct device_node *np = ofdev->dev.of_node;
9c4a79653b35ef Kim Phillips     2008-06-23  3332  	struct talitos_private *priv;
9c4a79653b35ef Kim Phillips     2008-06-23  3333  	int i, err;
5fa7fa147b1572 LEROY Christophe 2015-04-17  3334  	int stride;
fd5ea7f011932d LEROY Christophe 2017-10-06  3335  	struct resource *res;
9c4a79653b35ef Kim Phillips     2008-06-23  3336  
24b92ff276e8f6 LEROY Christophe 2017-10-06  3337  	priv = devm_kzalloc(dev, sizeof(struct talitos_private), GFP_KERNEL);
9c4a79653b35ef Kim Phillips     2008-06-23  3338  	if (!priv)
9c4a79653b35ef Kim Phillips     2008-06-23  3339  		return -ENOMEM;
9c4a79653b35ef Kim Phillips     2008-06-23  3340  
f3de9cb1ca6ce3 Kevin Hao        2014-01-28  3341  	INIT_LIST_HEAD(&priv->alg_list);
f3de9cb1ca6ce3 Kevin Hao        2014-01-28  3342  
9c4a79653b35ef Kim Phillips     2008-06-23  3343  	dev_set_drvdata(dev, priv);
9c4a79653b35ef Kim Phillips     2008-06-23  3344  
9c4a79653b35ef Kim Phillips     2008-06-23  3345  	priv->ofdev = ofdev;
9c4a79653b35ef Kim Phillips     2008-06-23  3346  
511d63cb193292 Horia Geanta     2012-03-30  3347  	spin_lock_init(&priv->reg_lock);
511d63cb193292 Horia Geanta     2012-03-30  3348  
fd5ea7f011932d LEROY Christophe 2017-10-06  3349  	res = platform_get_resource(ofdev, IORESOURCE_MEM, 0);
fd5ea7f011932d LEROY Christophe 2017-10-06  3350  	if (!res)
fd5ea7f011932d LEROY Christophe 2017-10-06  3351  		return -ENXIO;
fd5ea7f011932d LEROY Christophe 2017-10-06  3352  	priv->reg = devm_ioremap(dev, res->start, resource_size(res));
9c4a79653b35ef Kim Phillips     2008-06-23  3353  	if (!priv->reg) {
9c4a79653b35ef Kim Phillips     2008-06-23  3354  		dev_err(dev, "failed to of_iomap\n");
9c4a79653b35ef Kim Phillips     2008-06-23  3355  		err = -ENOMEM;
9c4a79653b35ef Kim Phillips     2008-06-23  3356  		goto err_out;
9c4a79653b35ef Kim Phillips     2008-06-23  3357  	}
9c4a79653b35ef Kim Phillips     2008-06-23  3358  
9c4a79653b35ef Kim Phillips     2008-06-23  3359  	/* get SEC version capabilities from device tree */
fa14c6cfcecb00 LEROY Christophe 2017-10-06  3360  	of_property_read_u32(np, "fsl,num-channels", &priv->num_channels);
fa14c6cfcecb00 LEROY Christophe 2017-10-06  3361  	of_property_read_u32(np, "fsl,channel-fifo-len", &priv->chfifo_len);
fa14c6cfcecb00 LEROY Christophe 2017-10-06  3362  	of_property_read_u32(np, "fsl,exec-units-mask", &priv->exec_units);
fa14c6cfcecb00 LEROY Christophe 2017-10-06  3363  	of_property_read_u32(np, "fsl,descriptor-types-mask",
fa14c6cfcecb00 LEROY Christophe 2017-10-06  3364  			     &priv->desc_types);
9c4a79653b35ef Kim Phillips     2008-06-23  3365  
9c4a79653b35ef Kim Phillips     2008-06-23  3366  	if (!is_power_of_2(priv->num_channels) || !priv->chfifo_len ||
9c4a79653b35ef Kim Phillips     2008-06-23  3367  	    !priv->exec_units || !priv->desc_types) {
9c4a79653b35ef Kim Phillips     2008-06-23  3368  		dev_err(dev, "invalid property data in device tree node\n");
9c4a79653b35ef Kim Phillips     2008-06-23  3369  		err = -EINVAL;
9c4a79653b35ef Kim Phillips     2008-06-23  3370  		goto err_out;
9c4a79653b35ef Kim Phillips     2008-06-23  3371  	}
9c4a79653b35ef Kim Phillips     2008-06-23  3372  
f3c85bc1bc72b4 Lee Nipper       2008-07-30  3373  	if (of_device_is_compatible(np, "fsl,sec3.0"))
f3c85bc1bc72b4 Lee Nipper       2008-07-30  3374  		priv->features |= TALITOS_FTR_SRC_LINK_TBL_LEN_INCLUDES_EXTENT;
f3c85bc1bc72b4 Lee Nipper       2008-07-30  3375  
fe5720e2b7c1e8 Kim Phillips     2008-10-12  3376  	if (of_device_is_compatible(np, "fsl,sec2.1"))
60f208d7836216 Kim Phillips     2010-05-19  3377  		priv->features |= TALITOS_FTR_HW_AUTH_CHECK |
79b3a418e09024 Lee Nipper       2011-11-21  3378  				  TALITOS_FTR_SHA224_HWINIT |
79b3a418e09024 Lee Nipper       2011-11-21  3379  				  TALITOS_FTR_HMAC_OK;
fe5720e2b7c1e8 Kim Phillips     2008-10-12  3380  
21590888490ce2 LEROY Christophe 2015-04-17  3381  	if (of_device_is_compatible(np, "fsl,sec1.0"))
21590888490ce2 LEROY Christophe 2015-04-17  3382  		priv->features |= TALITOS_FTR_SEC1;
21590888490ce2 LEROY Christophe 2015-04-17  3383  
5fa7fa147b1572 LEROY Christophe 2015-04-17  3384  	if (of_device_is_compatible(np, "fsl,sec1.2")) {
5fa7fa147b1572 LEROY Christophe 2015-04-17  3385  		priv->reg_deu = priv->reg + TALITOS12_DEU;
5fa7fa147b1572 LEROY Christophe 2015-04-17  3386  		priv->reg_aesu = priv->reg + TALITOS12_AESU;
5fa7fa147b1572 LEROY Christophe 2015-04-17  3387  		priv->reg_mdeu = priv->reg + TALITOS12_MDEU;
5fa7fa147b1572 LEROY Christophe 2015-04-17  3388  		stride = TALITOS1_CH_STRIDE;
5fa7fa147b1572 LEROY Christophe 2015-04-17  3389  	} else if (of_device_is_compatible(np, "fsl,sec1.0")) {
5fa7fa147b1572 LEROY Christophe 2015-04-17  3390  		priv->reg_deu = priv->reg + TALITOS10_DEU;
5fa7fa147b1572 LEROY Christophe 2015-04-17  3391  		priv->reg_aesu = priv->reg + TALITOS10_AESU;
5fa7fa147b1572 LEROY Christophe 2015-04-17  3392  		priv->reg_mdeu = priv->reg + TALITOS10_MDEU;
5fa7fa147b1572 LEROY Christophe 2015-04-17  3393  		priv->reg_afeu = priv->reg + TALITOS10_AFEU;
5fa7fa147b1572 LEROY Christophe 2015-04-17  3394  		priv->reg_rngu = priv->reg + TALITOS10_RNGU;
5fa7fa147b1572 LEROY Christophe 2015-04-17  3395  		priv->reg_pkeu = priv->reg + TALITOS10_PKEU;
5fa7fa147b1572 LEROY Christophe 2015-04-17  3396  		stride = TALITOS1_CH_STRIDE;
5fa7fa147b1572 LEROY Christophe 2015-04-17  3397  	} else {
5fa7fa147b1572 LEROY Christophe 2015-04-17  3398  		priv->reg_deu = priv->reg + TALITOS2_DEU;
5fa7fa147b1572 LEROY Christophe 2015-04-17  3399  		priv->reg_aesu = priv->reg + TALITOS2_AESU;
5fa7fa147b1572 LEROY Christophe 2015-04-17  3400  		priv->reg_mdeu = priv->reg + TALITOS2_MDEU;
5fa7fa147b1572 LEROY Christophe 2015-04-17  3401  		priv->reg_afeu = priv->reg + TALITOS2_AFEU;
5fa7fa147b1572 LEROY Christophe 2015-04-17  3402  		priv->reg_rngu = priv->reg + TALITOS2_RNGU;
5fa7fa147b1572 LEROY Christophe 2015-04-17  3403  		priv->reg_pkeu = priv->reg + TALITOS2_PKEU;
5fa7fa147b1572 LEROY Christophe 2015-04-17  3404  		priv->reg_keu = priv->reg + TALITOS2_KEU;
5fa7fa147b1572 LEROY Christophe 2015-04-17  3405  		priv->reg_crcu = priv->reg + TALITOS2_CRCU;
5fa7fa147b1572 LEROY Christophe 2015-04-17  3406  		stride = TALITOS2_CH_STRIDE;
5fa7fa147b1572 LEROY Christophe 2015-04-17  3407  	}
5fa7fa147b1572 LEROY Christophe 2015-04-17  3408  
dd3c0987f5426d LEROY Christophe 2015-04-17  3409  	err = talitos_probe_irq(ofdev);
dd3c0987f5426d LEROY Christophe 2015-04-17  3410  	if (err)
dd3c0987f5426d LEROY Christophe 2015-04-17  3411  		goto err_out;
dd3c0987f5426d LEROY Christophe 2015-04-17  3412  
c8c74647b2945e Christophe Leroy 2019-06-17  3413  	if (has_ftr_sec1(priv)) {
9c02e2852fcabf LEROY Christophe 2017-10-06  3414  		if (priv->num_channels == 1)
9c02e2852fcabf LEROY Christophe 2017-10-06  3415  			tasklet_init(&priv->done_task[0], talitos1_done_ch0,
dd3c0987f5426d LEROY Christophe 2015-04-17  3416  				     (unsigned long)dev);
9c02e2852fcabf LEROY Christophe 2017-10-06  3417  		else
9c02e2852fcabf LEROY Christophe 2017-10-06  3418  			tasklet_init(&priv->done_task[0], talitos1_done_4ch,
dd3c0987f5426d LEROY Christophe 2015-04-17  3419  				     (unsigned long)dev);
dd3c0987f5426d LEROY Christophe 2015-04-17  3420  	} else {
9c02e2852fcabf LEROY Christophe 2017-10-06  3421  		if (priv->irq[1]) {
dd3c0987f5426d LEROY Christophe 2015-04-17  3422  			tasklet_init(&priv->done_task[0], talitos2_done_ch0_2,
dd3c0987f5426d LEROY Christophe 2015-04-17  3423  				     (unsigned long)dev);
dd3c0987f5426d LEROY Christophe 2015-04-17  3424  			tasklet_init(&priv->done_task[1], talitos2_done_ch1_3,
dd3c0987f5426d LEROY Christophe 2015-04-17  3425  				     (unsigned long)dev);
9c02e2852fcabf LEROY Christophe 2017-10-06  3426  		} else if (priv->num_channels == 1) {
9c02e2852fcabf LEROY Christophe 2017-10-06  3427  			tasklet_init(&priv->done_task[0], talitos2_done_ch0,
9c02e2852fcabf LEROY Christophe 2017-10-06  3428  				     (unsigned long)dev);
9c02e2852fcabf LEROY Christophe 2017-10-06  3429  		} else {
9c02e2852fcabf LEROY Christophe 2017-10-06  3430  			tasklet_init(&priv->done_task[0], talitos2_done_4ch,
9c02e2852fcabf LEROY Christophe 2017-10-06  3431  				     (unsigned long)dev);
dd3c0987f5426d LEROY Christophe 2015-04-17  3432  		}
dd3c0987f5426d LEROY Christophe 2015-04-17  3433  	}
dd3c0987f5426d LEROY Christophe 2015-04-17  3434  
a86854d0c599b3 Kees Cook        2018-06-12  3435  	priv->chan = devm_kcalloc(dev,
a86854d0c599b3 Kees Cook        2018-06-12  3436  				  priv->num_channels,
a86854d0c599b3 Kees Cook        2018-06-12  3437  				  sizeof(struct talitos_channel),
a86854d0c599b3 Kees Cook        2018-06-12  3438  				  GFP_KERNEL);
4b992628812137 Kim Phillips     2009-08-13  3439  	if (!priv->chan) {
4b992628812137 Kim Phillips     2009-08-13  3440  		dev_err(dev, "failed to allocate channel management space\n");
9c4a79653b35ef Kim Phillips     2008-06-23  3441  		err = -ENOMEM;
9c4a79653b35ef Kim Phillips     2008-06-23  3442  		goto err_out;
9c4a79653b35ef Kim Phillips     2008-06-23  3443  	}
9c4a79653b35ef Kim Phillips     2008-06-23  3444  
f641ddddc3ad13 Martin Hicks     2015-03-03  3445  	priv->fifo_len = roundup_pow_of_two(priv->chfifo_len);
f641ddddc3ad13 Martin Hicks     2015-03-03  3446  
c3e337f88a5b37 Kim Phillips     2011-11-21  3447  	for (i = 0; i < priv->num_channels; i++) {
5fa7fa147b1572 LEROY Christophe 2015-04-17  3448  		priv->chan[i].reg = priv->reg + stride * (i + 1);
2cdba3cf6ffc1f Kim Phillips     2011-12-12  3449  		if (!priv->irq[1] || !(i & 1))
c3e337f88a5b37 Kim Phillips     2011-11-21  3450  			priv->chan[i].reg += TALITOS_CH_BASE_OFFSET;
ad42d5fc853832 Kim Phillips     2011-11-21  3451  
4b992628812137 Kim Phillips     2009-08-13  3452  		spin_lock_init(&priv->chan[i].head_lock);
4b992628812137 Kim Phillips     2009-08-13  3453  		spin_lock_init(&priv->chan[i].tail_lock);
9c4a79653b35ef Kim Phillips     2008-06-23  3454  
a86854d0c599b3 Kees Cook        2018-06-12  3455  		priv->chan[i].fifo = devm_kcalloc(dev,
a86854d0c599b3 Kees Cook        2018-06-12  3456  						priv->fifo_len,
a86854d0c599b3 Kees Cook        2018-06-12  3457  						sizeof(struct talitos_request),
a86854d0c599b3 Kees Cook        2018-06-12  3458  						GFP_KERNEL);
4b992628812137 Kim Phillips     2009-08-13  3459  		if (!priv->chan[i].fifo) {
9c4a79653b35ef Kim Phillips     2008-06-23  3460  			dev_err(dev, "failed to allocate request fifo %d\n", i);
9c4a79653b35ef Kim Phillips     2008-06-23  3461  			err = -ENOMEM;
9c4a79653b35ef Kim Phillips     2008-06-23  3462  			goto err_out;
9c4a79653b35ef Kim Phillips     2008-06-23  3463  		}
9c4a79653b35ef Kim Phillips     2008-06-23  3464  
4b992628812137 Kim Phillips     2009-08-13  3465  		atomic_set(&priv->chan[i].submit_count,
4b992628812137 Kim Phillips     2009-08-13  3466  			   -(priv->chfifo_len - 1));
f641ddddc3ad13 Martin Hicks     2015-03-03  3467  	}
9c4a79653b35ef Kim Phillips     2008-06-23  3468  
81eb024c7e63f5 Kim Phillips     2009-08-13  3469  	dma_set_mask(dev, DMA_BIT_MASK(36));
81eb024c7e63f5 Kim Phillips     2009-08-13  3470  
9c4a79653b35ef Kim Phillips     2008-06-23  3471  	/* reset and initialize the h/w */
9c4a79653b35ef Kim Phillips     2008-06-23  3472  	err = init_device(dev);
9c4a79653b35ef Kim Phillips     2008-06-23  3473  	if (err) {
9c4a79653b35ef Kim Phillips     2008-06-23  3474  		dev_err(dev, "failed to initialize device\n");
9c4a79653b35ef Kim Phillips     2008-06-23  3475  		goto err_out;
9c4a79653b35ef Kim Phillips     2008-06-23  3476  	}
9c4a79653b35ef Kim Phillips     2008-06-23  3477  
9c4a79653b35ef Kim Phillips     2008-06-23  3478  	/* register the RNG, if available */
9c4a79653b35ef Kim Phillips     2008-06-23  3479  	if (hw_supports(dev, DESC_HDR_SEL0_RNG)) {
9c4a79653b35ef Kim Phillips     2008-06-23  3480  		err = talitos_register_rng(dev);
9c4a79653b35ef Kim Phillips     2008-06-23  3481  		if (err) {
9c4a79653b35ef Kim Phillips     2008-06-23  3482  			dev_err(dev, "failed to register hwrng: %d\n", err);
9c4a79653b35ef Kim Phillips     2008-06-23  3483  			goto err_out;
9c4a79653b35ef Kim Phillips     2008-06-23  3484  		} else
9c4a79653b35ef Kim Phillips     2008-06-23  3485  			dev_info(dev, "hwrng\n");
9c4a79653b35ef Kim Phillips     2008-06-23  3486  	}
9c4a79653b35ef Kim Phillips     2008-06-23  3487  
9c4a79653b35ef Kim Phillips     2008-06-23  3488  	/* register crypto algorithms the device supports */
9c4a79653b35ef Kim Phillips     2008-06-23  3489  	for (i = 0; i < ARRAY_SIZE(driver_algs); i++) {
9c4a79653b35ef Kim Phillips     2008-06-23  3490  		if (hw_supports(dev, driver_algs[i].desc_hdr_template)) {
9c4a79653b35ef Kim Phillips     2008-06-23  3491  			struct talitos_crypto_alg *t_alg;
aeb4c132f33d21 Herbert Xu       2015-07-30  3492  			struct crypto_alg *alg = NULL;
9c4a79653b35ef Kim Phillips     2008-06-23  3493  
9c4a79653b35ef Kim Phillips     2008-06-23  3494  			t_alg = talitos_alg_alloc(dev, &driver_algs[i]);
9c4a79653b35ef Kim Phillips     2008-06-23  3495  			if (IS_ERR(t_alg)) {
9c4a79653b35ef Kim Phillips     2008-06-23  3496  				err = PTR_ERR(t_alg);
0b2730d8d8b38e Kim Phillips     2011-12-12  3497  				if (err == -ENOTSUPP)
79b3a418e09024 Lee Nipper       2011-11-21  3498  					continue;
9c4a79653b35ef Kim Phillips     2008-06-23  3499  				goto err_out;
9c4a79653b35ef Kim Phillips     2008-06-23  3500  			}
9c4a79653b35ef Kim Phillips     2008-06-23  3501  
acbf7c627fb59d Lee Nipper       2010-05-19  3502  			switch (t_alg->algt.type) {
373960d794d2b0 Ard Biesheuvel   2019-11-09  3503  			case CRYPTO_ALG_TYPE_SKCIPHER:
373960d794d2b0 Ard Biesheuvel   2019-11-09  3504  				err = crypto_register_skcipher(
373960d794d2b0 Ard Biesheuvel   2019-11-09  3505  						&t_alg->algt.alg.skcipher);
373960d794d2b0 Ard Biesheuvel   2019-11-09  3506  				alg = &t_alg->algt.alg.skcipher.base;
acbf7c627fb59d Lee Nipper       2010-05-19  3507  				break;
aeb4c132f33d21 Herbert Xu       2015-07-30  3508  
aeb4c132f33d21 Herbert Xu       2015-07-30  3509  			case CRYPTO_ALG_TYPE_AEAD:
aeb4c132f33d21 Herbert Xu       2015-07-30  3510  				err = crypto_register_aead(
aeb4c132f33d21 Herbert Xu       2015-07-30  3511  					&t_alg->algt.alg.aead);
aeb4c132f33d21 Herbert Xu       2015-07-30  3512  				alg = &t_alg->algt.alg.aead.base;
aeb4c132f33d21 Herbert Xu       2015-07-30  3513  				break;
aeb4c132f33d21 Herbert Xu       2015-07-30  3514  
acbf7c627fb59d Lee Nipper       2010-05-19  3515  			case CRYPTO_ALG_TYPE_AHASH:
acbf7c627fb59d Lee Nipper       2010-05-19  3516  				err = crypto_register_ahash(
acbf7c627fb59d Lee Nipper       2010-05-19  3517  						&t_alg->algt.alg.hash);
aeb4c132f33d21 Herbert Xu       2015-07-30  3518  				alg = &t_alg->algt.alg.hash.halg.base;
acbf7c627fb59d Lee Nipper       2010-05-19  3519  				break;
acbf7c627fb59d Lee Nipper       2010-05-19  3520  			}
9c4a79653b35ef Kim Phillips     2008-06-23  3521  			if (err) {
9c4a79653b35ef Kim Phillips     2008-06-23  3522  				dev_err(dev, "%s alg registration failed\n",
aeb4c132f33d21 Herbert Xu       2015-07-30  3523  					alg->cra_driver_name);
24b92ff276e8f6 LEROY Christophe 2017-10-06  3524  				devm_kfree(dev, t_alg);
991155bacb91c9 Horia Geanta     2013-03-20  3525  			} else
9c4a79653b35ef Kim Phillips     2008-06-23  3526  				list_add_tail(&t_alg->entry, &priv->alg_list);
9c4a79653b35ef Kim Phillips     2008-06-23  3527  		}
9c4a79653b35ef Kim Phillips     2008-06-23  3528  	}
5b859b6ebb18b3 Kim Phillips     2011-11-21  3529  	if (!list_empty(&priv->alg_list))
5b859b6ebb18b3 Kim Phillips     2011-11-21  3530  		dev_info(dev, "%s algorithms registered in /proc/crypto\n",
5b859b6ebb18b3 Kim Phillips     2011-11-21  3531  			 (char *)of_get_property(np, "compatible", NULL));
9c4a79653b35ef Kim Phillips     2008-06-23  3532  
9c4a79653b35ef Kim Phillips     2008-06-23  3533  	return 0;
9c4a79653b35ef Kim Phillips     2008-06-23  3534  
9c4a79653b35ef Kim Phillips     2008-06-23  3535  err_out:
9c4a79653b35ef Kim Phillips     2008-06-23  3536  	talitos_remove(ofdev);
9c4a79653b35ef Kim Phillips     2008-06-23  3537  
9c4a79653b35ef Kim Phillips     2008-06-23  3538  	return err;
9c4a79653b35ef Kim Phillips     2008-06-23  3539  }
9c4a79653b35ef Kim Phillips     2008-06-23  3540  

:::::: The code at line 3328 was first introduced by commit
:::::: 1c48a5c93da63132b92c4bbcd18e690c51539df6 dt: Eliminate of_platform_{,un}register_driver

:::::: TO: Grant Likely <grant.likely@secretlab.ca>
:::::: CC: Grant Likely <grant.likely@secretlab.ca>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202106100743.JgPkQBD1-lkp%40intel.com.

--6TrnltStXW4iwmi0
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--6TrnltStXW4iwmi0--
