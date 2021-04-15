Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBBHL32BQMGQE5H7QNEI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103a.google.com (mail-pj1-x103a.google.com [IPv6:2607:f8b0:4864:20::103a])
	by mail.lfdr.de (Postfix) with ESMTPS id F08C4360091
	for <lists+clang-built-linux@lfdr.de>; Thu, 15 Apr 2021 05:39:49 +0200 (CEST)
Received: by mail-pj1-x103a.google.com with SMTP id p11-20020a17090ad30bb029014dcd9154e1sf2972013pju.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 14 Apr 2021 20:39:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618457988; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZAYH+PrfRbxqGmqY6i4ovQrWhnze9F5vO6vsqh4UxQBWdUj4PafBC/KsfTSVHo7UaP
         o+L2Ny+iWr0ICIK6WmZXFlBjoxZ7AOH7bfe3hwqj6SznEsuaVIq4MSLw58xXstkyZW6B
         hpXv6du73xoyRG+ekfNg+41xyvOGXk3lHBokG8PJD2p3Eoe9/I9QAIG0CmCPkQxUxPdf
         zSONO0EWuV12DRDdgvcxJAR8k62F1vinbMHn0Ef8j+LUvCj87tQEodKtdbHJwDggN/uc
         Wmz3QnKH3Uc0+PRbUqBK0mN3+Ou/PGiukwb1hV3Si8sjDAgl9K9uC3rqLCcmUHlfB747
         +WyQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=/0kPJoGJbm9f3aLtjdIkr8coTzyMrH+pgQK/zwjFsJ8=;
        b=YwoPGc1ZV5VEhFXl5rKHYN4hR3Wlk5WvAFf+wOIxfr3I2DMjIg9+g7NvxYreZZJdN5
         jO7MTSOFl2JCZtgsyva8WyVlaBrOz0F9JW+mUVFj2rmKFJ5mpVWBQxYhz1zlPDGZaSBB
         ih+BtyFiXX+GB56NNvbjzgIhAOPzJrNHbR2FAN8p1I79bIwg1sruqnYVn/ZHt0nV0HaP
         jpX7zn7smYDQlnt4QFNjmp0mTp9Y4G8DaciSsp+uyTcgmqbGTPNRPdaXEJ2K1fQOTKcG
         tj5qm8nkbcXPzXhm5DPBouCpazUQZLHge7C1LKt+S4+vT4MQEPU0Ng0nJIzsjwMvPbof
         Q+xg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/0kPJoGJbm9f3aLtjdIkr8coTzyMrH+pgQK/zwjFsJ8=;
        b=H4h8EKjdgmSKzu0CrCwigJi32iIV2pUdkI2g0lNdZxgYsBRvq49ZhHvHUiRp83Tepd
         MFmeH3Q5cRcqHXPW0u5mhjtag8nuEIinQHholeNgu/koxzoyXUmmTsN6Uw+MPkAxP3OS
         nIqXecok0BHX9Q7vtar4RN/oZ/rBlnp+rmvTNynDE2s27Lelt+obPbvGbHEUvx1QXc+v
         bYS6e+Q6EjaSWPekovwApABRAxNsouKJcYwWe489rePiuNchAjhqCiiUyI8nsZoqxB4n
         hOglpWAogqbhK85CatKClElo/P9qTT9TIqZummWbNV1LCetsPOKNKE6vtlVS7xcJYJS3
         m0og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=/0kPJoGJbm9f3aLtjdIkr8coTzyMrH+pgQK/zwjFsJ8=;
        b=JQ+zadfkJumuzU9iIHDBnI3BiV1jVp3n4yZiRYZBXfbNMi86J07CJ+sAOhaNo7opqb
         OM7VbQgz2Clls8j4ikshtb3cv6VBxhqZA3X4pIrJ4ZhCOVpy/j1R9GXU4roYItRIT2uH
         P+op3YB5C+DBJA3bCYxjlZndSzKjigANCb/oFEWLt+XC1dKnjZAHN2WInTz/NP8BZz8u
         SVbYTPqKWXQG1DS0J3FFJ5125TTI+imq1qE1wsgESz+rIUqQBvdkNgzxS/E1/ahf67bb
         3fbFZWLyN00grh8B9A38PRd8Da24CmezJl2s6WNVECtLML7cbIcWSpunCyrUVp75RR1t
         wWpg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531qapDlbxhb75kMtslwDLkArROnVP63c8gylxLsi1Pc9CuMrJcs
	2hujh5ZT6Fpa6RzoOmvgpJk=
X-Google-Smtp-Source: ABdhPJxWO2P11T9YcfGa7RPbZSYRFp43DbYyqKaTVfh8QzO6TpiBGK/8+/gWrEdGcfQl+MwQEmcaUA==
X-Received: by 2002:a62:1615:0:b029:243:fec5:6618 with SMTP id 21-20020a6216150000b0290243fec56618mr1289398pfw.35.1618457988158;
        Wed, 14 Apr 2021 20:39:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:80cb:: with SMTP id a11ls1739942pfn.9.gmail; Wed, 14 Apr
 2021 20:39:47 -0700 (PDT)
X-Received: by 2002:a63:b509:: with SMTP id y9mr1579952pge.148.1618457987485;
        Wed, 14 Apr 2021 20:39:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618457987; cv=none;
        d=google.com; s=arc-20160816;
        b=xak2fPbyZd+FOkt80vvrVF+C9IkS9pYqePUtjxoACa5HULQuI0jr8S3/dIgfUPJRTv
         MeULTg4z09ajS+KIPEzRUTr2hatNOs1TFm+07W0RQ+VNCKZyWKgLJVbqbBDOflCTvi+9
         X95d8vYMd0fGugYe34ONikTq7iFPzBm3adUy5q7pn5lS7fAxriRsQZmnE034yPjUAzpk
         9oy4uJQYzE0y9KVq77a20HKb9acCxuDwdaXk29+t1vsGCxnH6NiihajkE2z4Ep1DlK6I
         m5BkZrQS+cIjL8iS7GNxUOOb9AM1Iutk5cnCef/E27jr2RPoRuLNZ4MX15dHP+77Z7LQ
         jtxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=Xg1QuJXUqLIvknorctJp8OhX5IUyIfxX224U0ufPpCQ=;
        b=PDU8fQisUtsA7O0pdCM1xn8mdUG98GY3+5jUuDJZR+4vOPYvFjnX9ejF/9lcVrXjk9
         7vjyrgzPYl27Ogg9EpVNxxACunnsJwC7JcVoDKogwzufCE2NcN2nPWLnsnBfwM+Zucat
         BGWQW/HgqPyJkI21zlcIxBa/5jiKBq8s5vUe2O4nAOC2zmnMRmSYPNZujMRis8AmVGdd
         SnAPJWffEaXd1B7QtRRNWAHItAsNHYwLfNVLom9CxM8QX0i1LgWMhf9u9P69VX24CIPW
         rquMwldgBT/6Xx8dxAexkGF7h+x8xaLJPWUi5sPxgwKk9sW/GoPvQnnRF9A8y6T8K05c
         TYdQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga03.intel.com (mga03.intel.com. [134.134.136.65])
        by gmr-mx.google.com with ESMTPS id bj7si139209plb.5.2021.04.14.20.39.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Apr 2021 20:39:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) client-ip=134.134.136.65;
IronPort-SDR: pHzlorkSxJ1U65pMcZUdSJ1MBRA1vMf7aX3cICt2KZVHWNnKNM9TFsX/hzn6yDyZYd+6XCYhmg
 2ljbhGDCbSmg==
X-IronPort-AV: E=McAfee;i="6200,9189,9954"; a="194805923"
X-IronPort-AV: E=Sophos;i="5.82,223,1613462400"; 
   d="gz'50?scan'50,208,50";a="194805923"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Apr 2021 20:39:46 -0700
IronPort-SDR: bIHp/3+Cir5i/FlPlbcYp5/K+8ATT3XERcpn5z0+HpTqU88QAdBXkpW0W3Kfoz9sT1lmm+0VSO
 kN2To20eHz0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,223,1613462400"; 
   d="gz'50?scan'50,208,50";a="382589551"
Received: from lkp-server02.sh.intel.com (HELO fa9c8fcc3464) ([10.239.97.151])
  by orsmga003.jf.intel.com with ESMTP; 14 Apr 2021 20:39:44 -0700
Received: from kbuild by fa9c8fcc3464 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lWsr1-0000cv-I6; Thu, 15 Apr 2021 03:39:43 +0000
Date: Thu, 15 Apr 2021 11:39:21 +0800
From: kernel test robot <lkp@intel.com>
To: Bhaumik Bhatt <bbhatt@codeaurora.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: drivers/bus/mhi/core/pm.c:740:6: warning: stack frame size of 3568
 bytes in function 'mhi_pm_st_worker'
Message-ID: <202104151114.hngnRuRL-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="SUOF0GtieIMvvwua"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted
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


--SUOF0GtieIMvvwua
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Bhaumik,

FYI, the error/warning still remains.

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   7f75285ca572eaabc028cf78c6ab5473d0d160be
commit: 556bbb442bbb44f429dbaa9f8b48e0b4cda6e088 bus: mhi: core: Separate system error and power down handling
date:   5 months ago
config: powerpc64-randconfig-r034-20210414 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 9829f5e6b1bca9b61efc629770d28bb9014dec45)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc64 cross compiling tool for clang build
        # apt-get install binutils-powerpc64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=556bbb442bbb44f429dbaa9f8b48e0b4cda6e088
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout 556bbb442bbb44f429dbaa9f8b48e0b4cda6e088
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 ARCH=powerpc64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   ^
   arch/powerpc/include/asm/io.h:522:62: note: expanded from macro '__do_outl'
   #define __do_outl(val, port)    writel(val,(PCI_IO_ADDR)_IO_BASE+port);
                                              ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/bus/mhi/core/pm.c:10:
   In file included from include/linux/dma-mapping.h:10:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:43:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insb, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:236:1: note: expanded from here
   __do_insb
   ^
   arch/powerpc/include/asm/io.h:541:56: note: expanded from macro '__do_insb'
   #define __do_insb(p, b, n)      readsb((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/bus/mhi/core/pm.c:10:
   In file included from include/linux/dma-mapping.h:10:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:45:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insw, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:238:1: note: expanded from here
   __do_insw
   ^
   arch/powerpc/include/asm/io.h:542:56: note: expanded from macro '__do_insw'
   #define __do_insw(p, b, n)      readsw((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/bus/mhi/core/pm.c:10:
   In file included from include/linux/dma-mapping.h:10:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:47:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insl, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:2:1: note: expanded from here
   __do_insl
   ^
   arch/powerpc/include/asm/io.h:543:56: note: expanded from macro '__do_insl'
   #define __do_insl(p, b, n)      readsl((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/bus/mhi/core/pm.c:10:
   In file included from include/linux/dma-mapping.h:10:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:49:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsb, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:4:1: note: expanded from here
   __do_outsb
   ^
   arch/powerpc/include/asm/io.h:544:58: note: expanded from macro '__do_outsb'
   #define __do_outsb(p, b, n)     writesb((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/bus/mhi/core/pm.c:10:
   In file included from include/linux/dma-mapping.h:10:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:51:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsw, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:6:1: note: expanded from here
   __do_outsw
   ^
   arch/powerpc/include/asm/io.h:545:58: note: expanded from macro '__do_outsw'
   #define __do_outsw(p, b, n)     writesw((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/bus/mhi/core/pm.c:10:
   In file included from include/linux/dma-mapping.h:10:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:53:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsl, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:8:1: note: expanded from here
   __do_outsl
   ^
   arch/powerpc/include/asm/io.h:546:58: note: expanded from macro '__do_outsl'
   #define __do_outsl(p, b, n)     writesl((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
>> drivers/bus/mhi/core/pm.c:740:6: warning: stack frame size of 3568 bytes in function 'mhi_pm_st_worker' [-Wframe-larger-than=]
   void mhi_pm_st_worker(struct work_struct *work)
        ^
   13 warnings generated.


vim +/mhi_pm_st_worker +740 drivers/bus/mhi/core/pm.c

a6e2e3522f2914 Manivannan Sadhasivam 2020-02-20  738  
a6e2e3522f2914 Manivannan Sadhasivam 2020-02-20  739  /* Device State Transition worker */
a6e2e3522f2914 Manivannan Sadhasivam 2020-02-20 @740  void mhi_pm_st_worker(struct work_struct *work)
a6e2e3522f2914 Manivannan Sadhasivam 2020-02-20  741  {
a6e2e3522f2914 Manivannan Sadhasivam 2020-02-20  742  	struct state_transition *itr, *tmp;
a6e2e3522f2914 Manivannan Sadhasivam 2020-02-20  743  	LIST_HEAD(head);
a6e2e3522f2914 Manivannan Sadhasivam 2020-02-20  744  	struct mhi_controller *mhi_cntrl = container_of(work,
a6e2e3522f2914 Manivannan Sadhasivam 2020-02-20  745  							struct mhi_controller,
a6e2e3522f2914 Manivannan Sadhasivam 2020-02-20  746  							st_worker);
a6e2e3522f2914 Manivannan Sadhasivam 2020-02-20  747  	struct device *dev = &mhi_cntrl->mhi_dev->dev;
a6e2e3522f2914 Manivannan Sadhasivam 2020-02-20  748  
a6e2e3522f2914 Manivannan Sadhasivam 2020-02-20  749  	spin_lock_irq(&mhi_cntrl->transition_lock);
a6e2e3522f2914 Manivannan Sadhasivam 2020-02-20  750  	list_splice_tail_init(&mhi_cntrl->transition_list, &head);
a6e2e3522f2914 Manivannan Sadhasivam 2020-02-20  751  	spin_unlock_irq(&mhi_cntrl->transition_lock);
a6e2e3522f2914 Manivannan Sadhasivam 2020-02-20  752  
a6e2e3522f2914 Manivannan Sadhasivam 2020-02-20  753  	list_for_each_entry_safe(itr, tmp, &head, node) {
a6e2e3522f2914 Manivannan Sadhasivam 2020-02-20  754  		list_del(&itr->node);
a6e2e3522f2914 Manivannan Sadhasivam 2020-02-20  755  		dev_dbg(dev, "Handling state transition: %s\n",
a6e2e3522f2914 Manivannan Sadhasivam 2020-02-20  756  			TO_DEV_STATE_TRANS_STR(itr->state));
a6e2e3522f2914 Manivannan Sadhasivam 2020-02-20  757  
a6e2e3522f2914 Manivannan Sadhasivam 2020-02-20  758  		switch (itr->state) {
a6e2e3522f2914 Manivannan Sadhasivam 2020-02-20  759  		case DEV_ST_TRANSITION_PBL:
a6e2e3522f2914 Manivannan Sadhasivam 2020-02-20  760  			write_lock_irq(&mhi_cntrl->pm_lock);
a6e2e3522f2914 Manivannan Sadhasivam 2020-02-20  761  			if (MHI_REG_ACCESS_VALID(mhi_cntrl->pm_state))
a6e2e3522f2914 Manivannan Sadhasivam 2020-02-20  762  				mhi_cntrl->ee = mhi_get_exec_env(mhi_cntrl);
a6e2e3522f2914 Manivannan Sadhasivam 2020-02-20  763  			write_unlock_irq(&mhi_cntrl->pm_lock);
a6e2e3522f2914 Manivannan Sadhasivam 2020-02-20  764  			if (MHI_IN_PBL(mhi_cntrl->ee))
560e3a045961ed Bhaumik Bhatt         2020-05-21  765  				mhi_fw_load_handler(mhi_cntrl);
a6e2e3522f2914 Manivannan Sadhasivam 2020-02-20  766  			break;
a6e2e3522f2914 Manivannan Sadhasivam 2020-02-20  767  		case DEV_ST_TRANSITION_SBL:
a6e2e3522f2914 Manivannan Sadhasivam 2020-02-20  768  			write_lock_irq(&mhi_cntrl->pm_lock);
a6e2e3522f2914 Manivannan Sadhasivam 2020-02-20  769  			mhi_cntrl->ee = MHI_EE_SBL;
a6e2e3522f2914 Manivannan Sadhasivam 2020-02-20  770  			write_unlock_irq(&mhi_cntrl->pm_lock);
a6e2e3522f2914 Manivannan Sadhasivam 2020-02-20  771  			/*
a6e2e3522f2914 Manivannan Sadhasivam 2020-02-20  772  			 * The MHI devices are only created when the client
a6e2e3522f2914 Manivannan Sadhasivam 2020-02-20  773  			 * device switches its Execution Environment (EE) to
a6e2e3522f2914 Manivannan Sadhasivam 2020-02-20  774  			 * either SBL or AMSS states
a6e2e3522f2914 Manivannan Sadhasivam 2020-02-20  775  			 */
a6e2e3522f2914 Manivannan Sadhasivam 2020-02-20  776  			mhi_create_devices(mhi_cntrl);
a6e2e3522f2914 Manivannan Sadhasivam 2020-02-20  777  			break;
a6e2e3522f2914 Manivannan Sadhasivam 2020-02-20  778  		case DEV_ST_TRANSITION_MISSION_MODE:
a6e2e3522f2914 Manivannan Sadhasivam 2020-02-20  779  			mhi_pm_mission_mode_transition(mhi_cntrl);
a6e2e3522f2914 Manivannan Sadhasivam 2020-02-20  780  			break;
a6e2e3522f2914 Manivannan Sadhasivam 2020-02-20  781  		case DEV_ST_TRANSITION_READY:
a6e2e3522f2914 Manivannan Sadhasivam 2020-02-20  782  			mhi_ready_state_transition(mhi_cntrl);
a6e2e3522f2914 Manivannan Sadhasivam 2020-02-20  783  			break;
bc7ccce5a5192c Hemant Kumar          2020-05-21  784  		case DEV_ST_TRANSITION_SYS_ERR:
556bbb442bbb44 Bhaumik Bhatt         2020-11-09  785  			mhi_pm_sys_error_transition(mhi_cntrl);
bc7ccce5a5192c Hemant Kumar          2020-05-21  786  			break;
3c1bd0047124f5 Hemant Kumar          2020-05-21  787  		case DEV_ST_TRANSITION_DISABLE:
3c1bd0047124f5 Hemant Kumar          2020-05-21  788  			mhi_pm_disable_transition
3c1bd0047124f5 Hemant Kumar          2020-05-21  789  				(mhi_cntrl, MHI_PM_SHUTDOWN_PROCESS);
3c1bd0047124f5 Hemant Kumar          2020-05-21  790  			break;
a6e2e3522f2914 Manivannan Sadhasivam 2020-02-20  791  		default:
a6e2e3522f2914 Manivannan Sadhasivam 2020-02-20  792  			break;
a6e2e3522f2914 Manivannan Sadhasivam 2020-02-20  793  		}
a6e2e3522f2914 Manivannan Sadhasivam 2020-02-20  794  		kfree(itr);
a6e2e3522f2914 Manivannan Sadhasivam 2020-02-20  795  	}
a6e2e3522f2914 Manivannan Sadhasivam 2020-02-20  796  }
a6e2e3522f2914 Manivannan Sadhasivam 2020-02-20  797  

:::::: The code at line 740 was first introduced by commit
:::::: a6e2e3522f29141b95c1ef8580c665a3582b3e66 bus: mhi: core: Add support for PM state transitions

:::::: TO: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
:::::: CC: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202104151114.hngnRuRL-lkp%40intel.com.

--SUOF0GtieIMvvwua
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--SUOF0GtieIMvvwua--
