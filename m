Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBHEOYGDQMGQE7X6NBEI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 01C113CA0C0
	for <lists+clang-built-linux@lfdr.de>; Thu, 15 Jul 2021 16:33:02 +0200 (CEST)
Received: by mail-pf1-x438.google.com with SMTP id 124-20020a6217820000b02902feebfd791esf4392301pfx.19
        for <lists+clang-built-linux@lfdr.de>; Thu, 15 Jul 2021 07:33:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626359580; cv=pass;
        d=google.com; s=arc-20160816;
        b=Phh89UYoq2YZjbzKUHGxsieWX6TJHJJ/zN0Fi/YVGuH4Q4wsuJFfonkFIxNe33Oi3Q
         5yy2KBAAIK2mkYqkxHpXvRZl4AynQxZVK10d1z7vbpTNoNbUKfms2t2VV55M2Nm7ftRx
         FTepfHQmV29A3jo4xWKwtkRU8wzjb7eNO4y4gaJ24R0eD4OjSyU1jc6xz3E/lB2pkaGY
         SueNgudwBvgtMyslbpemlAOoNmFv6S3dlqOkY2YZ1zDCPh/tx37KJ/MDj3ctkID8PzUa
         7v6CEbmz40eIsEU+PPGzI6pufI+sTDhjUxjUh7+Dlg9CDTGrL+NqoI+xFMO9p0cXw3a9
         MdKw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=FfCIBYgfPGQlW9GjzdyU4sVCKS7EsFtoWr5es5lbbuE=;
        b=FwJeouMX3IOrarU1RsuK3Sbcn0lqSOQpa9wmh8lJgkTkgOtvsL//1kkUWfosxqHMSt
         xx+xE991DnM7nnS2c5416nHDxp/YWw2RBwNTFEoQzyfmOop9ibOo2NJWeclpWFSQtMFT
         K2Np74wfI0+aHa5bxoqFBB8r3gDd3SpdCGH0JCRx1uGR/YibA8g7VG55sIbczhgMprL2
         XOK+GvVogNE8kLNUQEjVgvCZCtUd3LqC+Wl+UJGIu0PdWiHgKlOBFgDyn+43YwGwt4yw
         JdkrqULLKPcVtMHj/eFqX6D+caNhJB9kn20/bFEP6j6ju/nu/m3bZjwNFQh1AR5G0zP+
         +BOA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=FfCIBYgfPGQlW9GjzdyU4sVCKS7EsFtoWr5es5lbbuE=;
        b=PwNDaWcMvZUPknHq1jqTPIRCfEY4ygK/g45GmQRbbTH9JVt1tOK7WRfjCsYHxs5vwR
         tdY2ftYtcF88ZtK+BIrrYO17Eg+clfllTh1xwEZle6s/XoU4shtWBCWOZGu4QxyRXVCY
         nYZTvanXEgJjmSgC22aRhKO+C0uTUG9HTfiUljpahJvQzJm1WpTFxR4mWH4AKiQVSMCR
         sdTJHcXPlznBeSC2AAOy8HQ/26CawhxiEQzKfY3Fa4kX2ObX2P0REhi+afbGTOiwUwmC
         moxX/zE7ojP+dtIYPwwpIWHoHk2C2+Hd1JrmlDp8e5SvQI1nH74rDp78pMftpYQy5l9o
         oHSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FfCIBYgfPGQlW9GjzdyU4sVCKS7EsFtoWr5es5lbbuE=;
        b=GUWXhW6agm7thFQr8IBjN6p+24/ZmwnxX4mRoYjEF9LvJQ/roGUifnSeL3EIcdvR69
         Vk9Tin/YgxrsMKZk0i9fJEwq7Qj1P+ZraSps5xJ5ZmcqZsw7lcm3/9f8FQBaOmEi76Wm
         IMrBy8JkGKL4o+8jCMkXbnI/oAludTGGHMi+UaXTGpaCKbgo2JjpI+ww3kkz3jyh6H3y
         OqN5Snujl2NQccuQqQ/At2V778k4w4vOvlg+JbZmUtHHk8Ig2//JT4G0CQ9M7TUbQmJn
         g8ehYKk0cSLB83UKifr928xP7S/dcUSQ4y8AnfFLZk8Ls3Db3D4DLQO+BWp00GIFqOrm
         DL6g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530aRgnnjuqub1J1VMCLeFpAdckKli9+7v2e/7piHBCJ7xf5I3rX
	XGutF5CJPrnFWiuWET8BCnI=
X-Google-Smtp-Source: ABdhPJx8vnV+6DjE0E0fmTSqBquRlFkh3Mwybb9SHX9GuONLgI8VjO7S/JECygPIbL+ZJadX36q/Xg==
X-Received: by 2002:a17:90a:cf85:: with SMTP id i5mr4796912pju.89.1626359580574;
        Thu, 15 Jul 2021 07:33:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:805:: with SMTP id 5ls3132976pgi.8.gmail; Thu, 15 Jul
 2021 07:33:00 -0700 (PDT)
X-Received: by 2002:a65:60d7:: with SMTP id r23mr4794975pgv.417.1626359579944;
        Thu, 15 Jul 2021 07:32:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626359579; cv=none;
        d=google.com; s=arc-20160816;
        b=eLxY44LrWZua2TGH3vZajSMz9X99NPmmB0BPWDeF3e2rAe9jj8Wxlf7lkHQdVL1N4U
         0D6SxGcAPIIBER4g4x4NwKKXjMRlkSV3Aq0waWsYUY+alqUbeWNOz0IcxLPWe9QTlk+K
         7giLI/SiLA9+S/Vp3Bap19frC56JYlzYFKBNDIT2Lw6Qo3OlE8cFRpkAjy01digJx+TJ
         tVo/9NHP4ZbReLH58Tyy7ZXSaGH4SWHiNmmBFG7icyAFBJne1CcP9gimnhg1WSiIjtzZ
         5vTAEhrW1ZvDWpcC5ggNkoNc/Ld6aEgTO7cNd6DVfX6gkv8XL91HUsYyX6AyynxIXLY7
         SlPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=xPr7exCax+/FHvs5YK6obPf5D+cfd/ZOsaqWUhu+9Pg=;
        b=VoClNN5afHpxuSswR446c5qj3y9Zl06SgG6/iqPD/GTiTYk/pGFK3mbNvj9g0H2GoG
         Cc8aolal9YvErai18H/aAxHIaSLBJqI9O5EIUBlTq78YvXAd7FSw4YrTiyUsAGTHmbyk
         zAR/mcrvGw9PXCS1FVS9O15FJaENHrdWLrHq/s1DLPKM0lx1g4kR6pSEC6JYpcxVZ61f
         UugGrqJ6tTjX13PT/KthvOVM4XaHL3CDbkcMf1WZxRU7RxZxl+8h0h+1lIE3z7U8b9FE
         re2hBHBhHYpb5Bj+4RCbeVpBhe0vIsFb1OYK+NjNoxF4pH6ZA164+PVXAXdlff5vRUkG
         oyKQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga06.intel.com (mga06.intel.com. [134.134.136.31])
        by gmr-mx.google.com with ESMTPS id c9si861518pfr.5.2021.07.15.07.32.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Jul 2021 07:32:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) client-ip=134.134.136.31;
X-IronPort-AV: E=McAfee;i="6200,9189,10045"; a="271671454"
X-IronPort-AV: E=Sophos;i="5.84,242,1620716400"; 
   d="gz'50?scan'50,208,50";a="271671454"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Jul 2021 07:32:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,242,1620716400"; 
   d="gz'50?scan'50,208,50";a="428825268"
Received: from lkp-server01.sh.intel.com (HELO 4aae0cb4f5b5) ([10.239.97.150])
  by fmsmga007.fm.intel.com with ESMTP; 15 Jul 2021 07:32:52 -0700
Received: from kbuild by 4aae0cb4f5b5 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1m42Q0-000JkM-1L; Thu, 15 Jul 2021 14:32:52 +0000
Date: Thu, 15 Jul 2021 22:31:37 +0800
From: kernel test robot <lkp@intel.com>
To: Luis Chamberlain <mcgrof@kernel.org>
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	linux-kernel@vger.kernel.org
Subject: [mcgrof-next:20210708-block-fixes-v2 88/89]
 drivers/block/rbd.c:7076:2: warning: ignoring return value of function
 declared with 'warn_unused_result' attribute
Message-ID: <202107152222.1nJnmY7Q-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="45Z9DzgjV8m4Oswq"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted
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


--45Z9DzgjV8m4Oswq
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/mcgrof/linux-next.git 20210708-block-fixes-v2
head:   db0174e39de7dc941f158ce53ee3af95b1635b62
commit: 5e5cb4297124917e4c9480cef81930ecb092fbb6 [88/89] block: add __must_check for *add_disk*() callers
config: powerpc64-randconfig-r033-20210715 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 0e49c54a8cbd3e779e5526a5888c683c01cc3c50)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc64 cross compiling tool for clang build
        # apt-get install binutils-powerpc64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/mcgrof/linux-next.git/commit/?id=5e5cb4297124917e4c9480cef81930ecb092fbb6
        git remote add mcgrof-next https://git.kernel.org/pub/scm/linux/kernel/git/mcgrof/linux-next.git
        git fetch --no-tags mcgrof-next 20210708-block-fixes-v2
        git checkout 5e5cb4297124917e4c9480cef81930ecb092fbb6
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   __do_insw
   ^
   arch/powerpc/include/asm/io.h:557:56: note: expanded from macro '__do_insw'
   #define __do_insw(p, b, n)      readsw((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/block/rbd.c:31:
   In file included from include/linux/ceph/libceph.h:8:
   In file included from include/linux/backing-dev.h:15:
   In file included from include/linux/blkdev.h:18:
   In file included from include/linux/bio.h:8:
   In file included from include/linux/highmem.h:10:
   In file included from include/linux/hardirq.h:11:
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
   <scratch space>:185:1: note: expanded from here
   __do_insl
   ^
   arch/powerpc/include/asm/io.h:558:56: note: expanded from macro '__do_insl'
   #define __do_insl(p, b, n)      readsl((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/block/rbd.c:31:
   In file included from include/linux/ceph/libceph.h:8:
   In file included from include/linux/backing-dev.h:15:
   In file included from include/linux/blkdev.h:18:
   In file included from include/linux/bio.h:8:
   In file included from include/linux/highmem.h:10:
   In file included from include/linux/hardirq.h:11:
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
   <scratch space>:187:1: note: expanded from here
   __do_outsb
   ^
   arch/powerpc/include/asm/io.h:559:58: note: expanded from macro '__do_outsb'
   #define __do_outsb(p, b, n)     writesb((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/block/rbd.c:31:
   In file included from include/linux/ceph/libceph.h:8:
   In file included from include/linux/backing-dev.h:15:
   In file included from include/linux/blkdev.h:18:
   In file included from include/linux/bio.h:8:
   In file included from include/linux/highmem.h:10:
   In file included from include/linux/hardirq.h:11:
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
   <scratch space>:189:1: note: expanded from here
   __do_outsw
   ^
   arch/powerpc/include/asm/io.h:560:58: note: expanded from macro '__do_outsw'
   #define __do_outsw(p, b, n)     writesw((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/block/rbd.c:31:
   In file included from include/linux/ceph/libceph.h:8:
   In file included from include/linux/backing-dev.h:15:
   In file included from include/linux/blkdev.h:18:
   In file included from include/linux/bio.h:8:
   In file included from include/linux/highmem.h:10:
   In file included from include/linux/hardirq.h:11:
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
   <scratch space>:191:1: note: expanded from here
   __do_outsl
   ^
   arch/powerpc/include/asm/io.h:561:58: note: expanded from macro '__do_outsl'
   #define __do_outsl(p, b, n)     writesl((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   drivers/block/rbd.c:6098:17: warning: result of comparison of constant 2305843009213693948 with expression of type 'u32' (aka 'unsigned int') is always false [-Wtautological-constant-out-of-range-compare]
           if (snap_count > (SIZE_MAX - sizeof (struct ceph_snap_context))
               ~~~~~~~~~~ ^ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>> drivers/block/rbd.c:7076:2: warning: ignoring return value of function declared with 'warn_unused_result' attribute [-Wunused-result]
           device_add_disk(&rbd_dev->dev, rbd_dev->disk, NULL);
           ^~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   14 warnings generated.


vim +/warn_unused_result +7076 drivers/block/rbd.c

83a06263625b82 Alex Elder      2012-10-30  6994  
9b60e70b3b6a8e Ilya Dryomov    2013-12-13  6995  static ssize_t do_rbd_add(struct bus_type *bus,
59c2be1e4d42c0 Yehuda Sadeh    2011-03-21  6996  			  const char *buf,
59c2be1e4d42c0 Yehuda Sadeh    2011-03-21  6997  			  size_t count)
602adf40020163 Yehuda Sadeh    2010-08-12  6998  {
cb8627c76db699 Alex Elder      2012-07-09  6999  	struct rbd_device *rbd_dev = NULL;
dc79b113d6db48 Alex Elder      2012-10-25  7000  	struct ceph_options *ceph_opts = NULL;
4e9afeba7aa9ca Alex Elder      2012-10-25  7001  	struct rbd_options *rbd_opts = NULL;
859c31df9cee9d Alex Elder      2012-10-25  7002  	struct rbd_spec *spec = NULL;
9d3997fdf4c82a Alex Elder      2012-10-25  7003  	struct rbd_client *rbdc;
b51c83c241910f Ilya Dryomov    2015-10-15  7004  	int rc;
602adf40020163 Yehuda Sadeh    2010-08-12  7005  
f44d04e696feaf Ilya Dryomov    2020-09-03  7006  	if (!capable(CAP_SYS_ADMIN))
f44d04e696feaf Ilya Dryomov    2020-09-03  7007  		return -EPERM;
f44d04e696feaf Ilya Dryomov    2020-09-03  7008  
602adf40020163 Yehuda Sadeh    2010-08-12  7009  	if (!try_module_get(THIS_MODULE))
602adf40020163 Yehuda Sadeh    2010-08-12  7010  		return -ENODEV;
602adf40020163 Yehuda Sadeh    2010-08-12  7011  
602adf40020163 Yehuda Sadeh    2010-08-12  7012  	/* parse add command */
859c31df9cee9d Alex Elder      2012-10-25  7013  	rc = rbd_add_parse_args(buf, &ceph_opts, &rbd_opts, &spec);
dc79b113d6db48 Alex Elder      2012-10-25  7014  	if (rc < 0)
dd5ac32d425f88 Ilya Dryomov    2015-10-16  7015  		goto out;
78cea76e0580be Alex Elder      2012-10-25  7016  
9d3997fdf4c82a Alex Elder      2012-10-25  7017  	rbdc = rbd_get_client(ceph_opts);
9d3997fdf4c82a Alex Elder      2012-10-25  7018  	if (IS_ERR(rbdc)) {
9d3997fdf4c82a Alex Elder      2012-10-25  7019  		rc = PTR_ERR(rbdc);
0ddebc0c6c518a Alex Elder      2012-10-25  7020  		goto err_out_args;
9d3997fdf4c82a Alex Elder      2012-10-25  7021  	}
602adf40020163 Yehuda Sadeh    2010-08-12  7022  
602adf40020163 Yehuda Sadeh    2010-08-12  7023  	/* pick the pool */
dd4358550fc524 Ilya Dryomov    2018-02-22  7024  	rc = ceph_pg_poolid_by_name(rbdc->client->osdc.osdmap, spec->pool_name);
1fe480235ad723 Ilya Dryomov    2015-03-05  7025  	if (rc < 0) {
1fe480235ad723 Ilya Dryomov    2015-03-05  7026  		if (rc == -ENOENT)
1fe480235ad723 Ilya Dryomov    2015-03-05  7027  			pr_info("pool %s does not exist\n", spec->pool_name);
602adf40020163 Yehuda Sadeh    2010-08-12  7028  		goto err_out_client;
1fe480235ad723 Ilya Dryomov    2015-03-05  7029  	}
859c31df9cee9d Alex Elder      2012-10-25  7030  	spec->pool_id = (u64)rc;
859c31df9cee9d Alex Elder      2012-10-25  7031  
d147543d7943ea Ilya Dryomov    2015-06-22  7032  	rbd_dev = rbd_dev_create(rbdc, spec, rbd_opts);
b51c83c241910f Ilya Dryomov    2015-10-15  7033  	if (!rbd_dev) {
b51c83c241910f Ilya Dryomov    2015-10-15  7034  		rc = -ENOMEM;
bd4ba6554dcbae Alex Elder      2012-10-25  7035  		goto err_out_client;
b51c83c241910f Ilya Dryomov    2015-10-15  7036  	}
c53d589337e9a2 Alex Elder      2012-10-25  7037  	rbdc = NULL;		/* rbd_dev now owns this */
c53d589337e9a2 Alex Elder      2012-10-25  7038  	spec = NULL;		/* rbd_dev now owns this */
d147543d7943ea Ilya Dryomov    2015-06-22  7039  	rbd_opts = NULL;	/* rbd_dev now owns this */
602adf40020163 Yehuda Sadeh    2010-08-12  7040  
39258aa2db8175 Ilya Dryomov    2019-11-07  7041  	/* if we are mapping a snapshot it will be a read-only mapping */
39258aa2db8175 Ilya Dryomov    2019-11-07  7042  	if (rbd_dev->opts->read_only ||
39258aa2db8175 Ilya Dryomov    2019-11-07  7043  	    strcmp(rbd_dev->spec->snap_name, RBD_SNAP_HEAD_NAME))
39258aa2db8175 Ilya Dryomov    2019-11-07  7044  		__set_bit(RBD_DEV_FLAG_READONLY, &rbd_dev->flags);
39258aa2db8175 Ilya Dryomov    2019-11-07  7045  
0d6d1e9c2e970c Mike Christie   2016-08-18  7046  	rbd_dev->config_info = kstrdup(buf, GFP_KERNEL);
0d6d1e9c2e970c Mike Christie   2016-08-18  7047  	if (!rbd_dev->config_info) {
0d6d1e9c2e970c Mike Christie   2016-08-18  7048  		rc = -ENOMEM;
0d6d1e9c2e970c Mike Christie   2016-08-18  7049  		goto err_out_rbd_dev;
0d6d1e9c2e970c Mike Christie   2016-08-18  7050  	}
0d6d1e9c2e970c Mike Christie   2016-08-18  7051  
6d69bb536bac0d Ilya Dryomov    2015-10-11  7052  	rc = rbd_dev_image_probe(rbd_dev, 0);
0e4e1de5b63fa4 Ilya Dryomov    2020-03-13  7053  	if (rc < 0)
c53d589337e9a2 Alex Elder      2012-10-25  7054  		goto err_out_rbd_dev;
05fd6f6f8c7b07 Alex Elder      2012-08-29  7055  
0c93e1b7a26b41 Ilya Dryomov    2019-01-30  7056  	if (rbd_dev->opts->alloc_size > rbd_dev->layout.object_size) {
0c93e1b7a26b41 Ilya Dryomov    2019-01-30  7057  		rbd_warn(rbd_dev, "alloc_size adjusted to %u",
0c93e1b7a26b41 Ilya Dryomov    2019-01-30  7058  			 rbd_dev->layout.object_size);
0c93e1b7a26b41 Ilya Dryomov    2019-01-30  7059  		rbd_dev->opts->alloc_size = rbd_dev->layout.object_size;
0c93e1b7a26b41 Ilya Dryomov    2019-01-30  7060  	}
0c93e1b7a26b41 Ilya Dryomov    2019-01-30  7061  
b536f69a3a5891 Alex Elder      2013-04-28  7062  	rc = rbd_dev_device_setup(rbd_dev);
fd22aef8b47cfc Ilya Dryomov    2017-04-13  7063  	if (rc)
8b679ec5257eeb Ilya Dryomov    2017-04-13  7064  		goto err_out_image_probe;
3abef3b3585bbc Alex Elder      2013-05-13  7065  
e010dd0ada619e Ilya Dryomov    2017-04-13  7066  	rc = rbd_add_acquire_lock(rbd_dev);
e010dd0ada619e Ilya Dryomov    2017-04-13  7067  	if (rc)
637cd060537d0c Ilya Dryomov    2019-06-06  7068  		goto err_out_image_lock;
3abef3b3585bbc Alex Elder      2013-05-13  7069  
5769ed0cb12dcd Ilya Dryomov    2017-04-13  7070  	/* Everything's ready.  Announce the disk to the world. */
5769ed0cb12dcd Ilya Dryomov    2017-04-13  7071  
5769ed0cb12dcd Ilya Dryomov    2017-04-13  7072  	rc = device_add(&rbd_dev->dev);
5769ed0cb12dcd Ilya Dryomov    2017-04-13  7073  	if (rc)
e010dd0ada619e Ilya Dryomov    2017-04-13  7074  		goto err_out_image_lock;
5769ed0cb12dcd Ilya Dryomov    2017-04-13  7075  
3325322f773bae Hannes Reinecke 2020-01-23 @7076  	device_add_disk(&rbd_dev->dev, rbd_dev->disk, NULL);
5769ed0cb12dcd Ilya Dryomov    2017-04-13  7077  
5769ed0cb12dcd Ilya Dryomov    2017-04-13  7078  	spin_lock(&rbd_dev_list_lock);
5769ed0cb12dcd Ilya Dryomov    2017-04-13  7079  	list_add_tail(&rbd_dev->node, &rbd_dev_list);
5769ed0cb12dcd Ilya Dryomov    2017-04-13  7080  	spin_unlock(&rbd_dev_list_lock);
5769ed0cb12dcd Ilya Dryomov    2017-04-13  7081  
5769ed0cb12dcd Ilya Dryomov    2017-04-13  7082  	pr_info("%s: capacity %llu features 0x%llx\n", rbd_dev->disk->disk_name,
5769ed0cb12dcd Ilya Dryomov    2017-04-13  7083  		(unsigned long long)get_capacity(rbd_dev->disk) << SECTOR_SHIFT,
5769ed0cb12dcd Ilya Dryomov    2017-04-13  7084  		rbd_dev->header.features);
dd5ac32d425f88 Ilya Dryomov    2015-10-16  7085  	rc = count;
dd5ac32d425f88 Ilya Dryomov    2015-10-16  7086  out:
dd5ac32d425f88 Ilya Dryomov    2015-10-16  7087  	module_put(THIS_MODULE);
dd5ac32d425f88 Ilya Dryomov    2015-10-16  7088  	return rc;
b536f69a3a5891 Alex Elder      2013-04-28  7089  
e010dd0ada619e Ilya Dryomov    2017-04-13  7090  err_out_image_lock:
e010dd0ada619e Ilya Dryomov    2017-04-13  7091  	rbd_dev_image_unlock(rbd_dev);
5769ed0cb12dcd Ilya Dryomov    2017-04-13  7092  	rbd_dev_device_release(rbd_dev);
8b679ec5257eeb Ilya Dryomov    2017-04-13  7093  err_out_image_probe:
8b679ec5257eeb Ilya Dryomov    2017-04-13  7094  	rbd_dev_image_release(rbd_dev);
c53d589337e9a2 Alex Elder      2012-10-25  7095  err_out_rbd_dev:
c53d589337e9a2 Alex Elder      2012-10-25  7096  	rbd_dev_destroy(rbd_dev);
bd4ba6554dcbae Alex Elder      2012-10-25  7097  err_out_client:
9d3997fdf4c82a Alex Elder      2012-10-25  7098  	rbd_put_client(rbdc);
0ddebc0c6c518a Alex Elder      2012-10-25  7099  err_out_args:
859c31df9cee9d Alex Elder      2012-10-25  7100  	rbd_spec_put(spec);
d147543d7943ea Ilya Dryomov    2015-06-22  7101  	kfree(rbd_opts);
dd5ac32d425f88 Ilya Dryomov    2015-10-16  7102  	goto out;
602adf40020163 Yehuda Sadeh    2010-08-12  7103  }
602adf40020163 Yehuda Sadeh    2010-08-12  7104  

:::::: The code at line 7076 was first introduced by commit
:::::: 3325322f773bae68b20d8fa0e9e8ebb005271db5 rbd: set the 'device' link in sysfs

:::::: TO: Hannes Reinecke <hare@suse.de>
:::::: CC: Ilya Dryomov <idryomov@gmail.com>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202107152222.1nJnmY7Q-lkp%40intel.com.

--45Z9DzgjV8m4Oswq
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
pQUCAA==

--45Z9DzgjV8m4Oswq--
