Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB2HY3OEAMGQEYGDRSRQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63f.google.com (mail-pl1-x63f.google.com [IPv6:2607:f8b0:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id 4593A3EBE94
	for <lists+clang-built-linux@lfdr.de>; Sat, 14 Aug 2021 01:12:42 +0200 (CEST)
Received: by mail-pl1-x63f.google.com with SMTP id u12-20020a170902e80c00b0012da2362222sf543768plg.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Aug 2021 16:12:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628896361; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZCNzT2fojmTBy0gFkcKn8KqtgQ/Pz7AsUkwONRsDaBFEa5PdCuPl/e3yQBbSnaO5DQ
         UMkRUotQeajdr5noBR1/yYSjrYUhPwZ2kL4XOQLgoGVBlCuOBC0rnJJ/hM1Q+X3eLBtt
         TRbT5JjDimdi9387Cqlx/L4o2ozfUIskK6s6dNIINhQ5surMmkK8Gr9cCeOByyIIgN2c
         658TV1lx6srhYm7Bys6bLJF/XD+IMeTJbPzWzz11KDgp9kg1Axyw3a8IxVtQXqCIzi72
         3GPGBxKk/fHMnq/xiJufeVvgNbnYh+VTBD8wTuhEAb8labZjnhy6gy3158hZGrnmc3d8
         a3Mg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=u77PI9aQFRIBfl27L8WzfFUMj38qlD1LySoa4T1RK3Y=;
        b=TjiYDSSk36t8GY2OQftSUrmDFhhlY1aF8cKnin2A9EE3Yu29WBeaDr2GdpcAeAFZVl
         YWh16GARw//9fmQe9pIsMxk/jIIvHT3pFL8oLouDpBfRFlcIwcans/EK10/cM1A/tC3f
         evVFf6KxtV28Zt4PFepPYwmqBk7Cr9CgWuSyuwbbqCQuFifCGyXiOUMpZJMNb8KXRjw/
         JItAwbtkf82wP/afD0T0R+Jr/HUPXheJk33TzyjQ1/RuMRuPUkyYp2EdwBUfxrDFwYlh
         BdtLGi01DF8OJ/bcdBLcGsgf9f1JjtXB1baVRABQ8x0E4X6aCRwvMeMpc/xf5oTVENcq
         E5Jw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=u77PI9aQFRIBfl27L8WzfFUMj38qlD1LySoa4T1RK3Y=;
        b=ShMATvNKuRjXmovhsuYvALLT3fqF75cXQNgdO1sWKw63+PymqLYGgihXuUT5S55ds5
         X/VT1rbmFRE97wW20KCDSh8IB1auX+IxhrPT3xff74Q+gt0QuQincZ3uPQIhkiqHMoYO
         ETSkwal3RvVPpRv6vNG+S8aw+uHYAHzx6bofuYbTomQ2vIMLt/X00L3mmMf5wR1pSM5i
         hePSiwwzvH4ajcCn+J7UeeK7NsOwXJ1nixT9OtvQGE8hEeru4xtrBFFhi52FS03dow9y
         qscDRT4JrsuhK3wlPEg/XqErWy/wEsCXHH6GBsgpks2vnj7eNXNdA5NB5eW1UXI2Z7WX
         0qdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=u77PI9aQFRIBfl27L8WzfFUMj38qlD1LySoa4T1RK3Y=;
        b=I7KcF9R6AaCmqPtuzAJbCTrrJ4ORCUoQY0ZBiTeDUKnXGp3DELi6GRLknQ0ixJ9OLg
         saWLAzC7O7ourWUFZvkPrkzQAzmW3KyuZbOwCkNY5LHNaIWDMW70LY6jyNImems37qvA
         5IzE3RcLtS2ad2hwn8ZnB6p2cG+SvDU6ILVBcpjyM7voz2/aQMPCk+DaQ4ZPXWAuZYgt
         88AOSZkogleDPTMaIsyG1XQR5L/7maUQkdQxM3+7HwecO8omS53yq1sBWeSayO9VZX7a
         dqWBmabotmNuHrvyl58lYQ5fL+gIhpjUX1JIA75OR9PL7gfObSdXsZzChVSZ5Ok+odKn
         P80A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5314HjffqWK+7Wuuzs6Iwm6bWaIimDZst26U6m0ksZ4gshA5uqsr
	FhzMhYy6pEK/ptrdZrTW9qM=
X-Google-Smtp-Source: ABdhPJyVyIFGTk2XOhKvsu+24hRnqsdphjuXyJIw2G1XUUSusOPy0mAhSWJPjLGijDuQBPLz66Gc9Q==
X-Received: by 2002:a17:90a:c006:: with SMTP id p6mr4852342pjt.144.1628896360706;
        Fri, 13 Aug 2021 16:12:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:520c:: with SMTP id o12ls1127347pgp.6.gmail; Fri, 13 Aug
 2021 16:12:40 -0700 (PDT)
X-Received: by 2002:a63:2c01:: with SMTP id s1mr4325801pgs.357.1628896360124;
        Fri, 13 Aug 2021 16:12:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628896360; cv=none;
        d=google.com; s=arc-20160816;
        b=i3D/0vvtDAvVheXjSF1KUN0jPzN/FQd+uNuQf6UqRFDrR5FTfo/TqQpdFUraRkefSi
         FJyQ90pfMMbE9jfP7oASZQmV/kTxIbc9M8BmHWv/mpkuAIpqTGmlPwgcvWVynqbBl5Mg
         OETSV9nOa6B0Pt7FyIP4NG54TmVTcYS3i6I0BfGal00hIWnfTjQOHrl4XbschRV399By
         6ICj+ZBa0VqtKYjAQlBasZzRmF2g5DXus41zDpg2mHDnn+1wVkbIK83zNem+U4ougNkP
         EDk6wAN22ePe/PCj1T+YFdDRM/x9WoOWk9+CuRxVsvWYZuoyueHjQ+w5K/6bdkrOebDt
         tuWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=bNLcfucYYO8yxWBnZTmYevWHtWcCRlJIb6YNyw3Fik0=;
        b=iw1r+tH5EuwvrDzVKS1QGzpi/fJcRWwdQE7Esh3dvuhFbuvEf1TvrmcZs6x+YifImn
         4Tzg/COOEFJCgcFRaMsUL0e5jhIsaBr+2mwR01meVrJFw+6+U3QEsqbsAAAoUDp8pp37
         uFmhsh8IZNNSF5PcBg+tuHQaLVzRhH8u7IUJoq3HfIoErLiGRqlqR8sDhKTxs6TFzcjm
         oeFeINfZdvuEK/PwW6kU8hPN2o4mv5Q+wTG8HidVDw+dJDrsFlHTDZmcph/f4MgtE0OJ
         Qyk/A5ATt8sxcOnaE1l/96yvcobRCuYriht6C4AiHuoRQ2GzCNJshLK8aI/DFTIEyKit
         j4Ow==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga12.intel.com (mga12.intel.com. [192.55.52.136])
        by gmr-mx.google.com with ESMTPS id mn23si144773pjb.2.2021.08.13.16.12.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Aug 2021 16:12:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) client-ip=192.55.52.136;
X-IronPort-AV: E=McAfee;i="6200,9189,10075"; a="195228652"
X-IronPort-AV: E=Sophos;i="5.84,320,1620716400"; 
   d="gz'50?scan'50,208,50";a="195228652"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Aug 2021 16:12:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,320,1620716400"; 
   d="gz'50?scan'50,208,50";a="447317728"
Received: from lkp-server01.sh.intel.com (HELO d053b881505b) ([10.239.97.150])
  by fmsmga007.fm.intel.com with ESMTP; 13 Aug 2021 16:12:34 -0700
Received: from kbuild by d053b881505b with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1mEgLp-000OEr-Nn; Fri, 13 Aug 2021 23:12:33 +0000
Date: Sat, 14 Aug 2021 07:11:36 +0800
From: kernel test robot <lkp@intel.com>
To: Jens Axboe <axboe@kernel.dk>
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	linux-kernel@vger.kernel.org
Subject: [block:io_uring-fops.v6 58/64] io_uring.c:undefined reference to
 `__compiletime_assert_833'
Message-ID: <202108140731.bUZsdUjG-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="y0ulUmNC+osPPQO6"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted
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


--y0ulUmNC+osPPQO6
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/axboe/linux-block.git io_uring-fops.v6
head:   4e0c34c9b129fe84c63d3f76053d2e55d944e8a9
commit: 834d3e42c71acf4653f840ac3998f8601f37021c [58/64] io_uring: add infrastructure around io_uring_cmd_sqe issue type
config: s390-randconfig-r033-20210813 (attached as .config)
compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project 62df4df41c939205b2dc0a2a3bfb75b8c1ed74fa)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install s390 cross compiling tool for clang build
        # apt-get install binutils-s390x-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/axboe/linux-block.git/commit/?id=834d3e42c71acf4653f840ac3998f8601f37021c
        git remote add block https://git.kernel.org/pub/scm/linux/kernel/git/axboe/linux-block.git
        git fetch --no-tags block io_uring-fops.v6
        git checkout 834d3e42c71acf4653f840ac3998f8601f37021c
        # save the attached .config to linux build tree
        mkdir build_dir
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross O=build_dir ARCH=s390 SHELL=/bin/bash

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   s390x-linux-gnu-ld: kernel/dma/coherent.o: in function `dma_declare_coherent_memory':
   coherent.c:(.text+0xc4): undefined reference to `memunmap'
   s390x-linux-gnu-ld: coherent.c:(.text+0x1c4): undefined reference to `memunmap'
   s390x-linux-gnu-ld: kernel/dma/coherent.o: in function `dma_init_coherent_memory':
   coherent.c:(.text+0x2b4): undefined reference to `memremap'
   s390x-linux-gnu-ld: coherent.c:(.text+0x564): undefined reference to `memunmap'
   s390x-linux-gnu-ld: fs/io_uring.o: in function `io_uring_init':
>> io_uring.c:(.init.text+0x30): undefined reference to `__compiletime_assert_833'
>> s390x-linux-gnu-ld: io_uring.c:(.init.text+0x4a): undefined reference to `__compiletime_assert_835'
   s390x-linux-gnu-ld: drivers/dma/fsl-edma.o: in function `fsl_edma_probe':
   fsl-edma.c:(.text+0x1bc): undefined reference to `devm_ioremap_resource'
   s390x-linux-gnu-ld: fsl-edma.c:(.text+0x40a): undefined reference to `devm_ioremap_resource'
   s390x-linux-gnu-ld: drivers/dma/idma64.o: in function `idma64_platform_probe':
   idma64.c:(.text+0xc6): undefined reference to `devm_ioremap_resource'
   s390x-linux-gnu-ld: drivers/char/xillybus/xillybus_of.o: in function `xilly_drv_probe':
   xillybus_of.c:(.text+0xc4): undefined reference to `devm_platform_ioremap_resource'
   s390x-linux-gnu-ld: drivers/pcmcia/cistpl.o: in function `release_cis_mem':
   cistpl.c:(.text+0x1d6): undefined reference to `iounmap'
   s390x-linux-gnu-ld: drivers/pcmcia/cistpl.o: in function `set_cis_map':
   cistpl.c:(.text+0xb10): undefined reference to `ioremap'
   s390x-linux-gnu-ld: cistpl.c:(.text+0xbbe): undefined reference to `iounmap'
   s390x-linux-gnu-ld: cistpl.c:(.text+0xf4e): undefined reference to `iounmap'
   s390x-linux-gnu-ld: cistpl.c:(.text+0xf8c): undefined reference to `ioremap'
   s390x-linux-gnu-ld: drivers/clocksource/timer-of.o: in function `timer_of_base_init':
   timer-of.c:(.init.text+0x576): undefined reference to `of_iomap'
   s390x-linux-gnu-ld: drivers/clocksource/timer-of.o: in function `timer_of_base_exit':
   timer-of.c:(.init.text+0x17ba): undefined reference to `iounmap'

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202108140731.bUZsdUjG-lkp%40intel.com.

--y0ulUmNC+osPPQO6
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--y0ulUmNC+osPPQO6--
