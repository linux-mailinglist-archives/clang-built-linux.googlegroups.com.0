Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBW7V536AKGQEDHQJOIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x237.google.com (mail-oi1-x237.google.com [IPv6:2607:f8b0:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FA7F29FE31
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Oct 2020 08:03:57 +0100 (CET)
Received: by mail-oi1-x237.google.com with SMTP id k16sf2265421oik.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Oct 2020 00:03:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1604041436; cv=pass;
        d=google.com; s=arc-20160816;
        b=Bdq4cAP8Pfq+fHdEvONNHM7KZ5dC8hBc2RpYdJnBJ5eYVZz1JJYG5PktULHbQwlWz9
         NDfXEPRhok8wp7AuVcnI9DJlNswD2xj52hdmHYuXaI3xLUJOWJNXe36eb4BjLLOiuHyj
         TixkjSIRCmpKxzdSdNlMbaOEHQYsEwWXyxWkChkSJ7f283QCBeShoa94bU2gcPNtE8g5
         UQhSvM8LMKJ1NVpX37t/3cl1IdSz2DzWEnfUpjqpYX7ehSWa3uCG3SDGdnu/lwiViXtr
         r8DsbuIshz/m6xBmjKPBtOWm22WfEVIttkh1NqaIQ8yxvoskP8seSy5JWkxyAuaewn5L
         FwGw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=XqlF0gSLH5FTY2SKj/sRFF/YxnFoFyXQqaF3VQJjKf0=;
        b=b7C7prMyl2CNhVq7p8f+8iDzM1uEIYMegp1204XM6oXMTFr3X4eUJPv5NeDLXsd7Ad
         HBa0ZHu/oU9ebul9huUtrb8YWi+TvnINUvVEInZ+TsWyUrBt32UQkFQulu+8WO/LXf9u
         bn0IhDIcOaylg16ujBuXo9eIjSUTJDv6CaTNXFEyILsxUTzu3d/ij4NjDJgp36eXdzYd
         oltar+nbhEbDuJGw+h96urRKeln1o0ExkisooXnFaHwtWgijEAciJiXRvJFnSuH9qsSE
         zxq82gIUYokT7yJxBQcyWYnzj5Uk/ErBLvUXUu3GKp8eftCUfqwOylDr8XdxtjbFvmVp
         ug6Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XqlF0gSLH5FTY2SKj/sRFF/YxnFoFyXQqaF3VQJjKf0=;
        b=Qw5mxCOXiH177foT92++vXtxO4KVX8ysPOzIL94FZUkqmBFh/FTBWAxcRVRD0QwMjs
         2xQM52zijbBN6He2t5ZmY3xJF09m6fVfXzsQLseJFto5efZ9avca3pDodwmX8kmsc1ny
         zyVKImGrq8FWQe1/U1Zk7UjgoHPdVB4F8Avt7NX4IuX8jM8w1dCrzsYCxV2x5OUWMmvy
         syKg97rESzNTGmfOJBm0x+HhxV7Jy+4w7uC8oyYvTlh5q3zXmJYSTYonQMAaTpYSrJQi
         ap67cZEdaclQ03EdgvS4r8zkqlp4D1ixTny28TYM/tP9j6NJnUP2oXokKD6qbg7Z3wtS
         ZZ3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=XqlF0gSLH5FTY2SKj/sRFF/YxnFoFyXQqaF3VQJjKf0=;
        b=iTk4Auu8yDlMZmwCktVaroOag5fogN0v4Onlc5MPjxAzWeS5Js3rj0GnDbWOxVWqJh
         5jzU2Z7duSLewBm3JT1TZxjG6HDDMKa1k9mACcq4XpxQj4EEEm+h/uzYYedI7obYKyS7
         8gfVvaeDQgErEWKpyMLaq0nWHmlb6W/nSe14vXhiEL447q9mWt/Iu6ot3fqe3i0dzFsG
         IeSpd0+g1WVL6JK+/fAlKtzVI0aGncBCY3DqKFuJHxUlp04KdXteffg39YCzQK4Ko5/k
         tpW9dbOg6y4Ba7ZnmPadhTn5Chh81PhBf8HPRClWQFUzbb37qMDSXCijaSp5FrD6gnht
         jL5A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53379FVc41UgKVCGSM88XePTAEEc/cq95H2j03CTPPDe/jpotJiF
	62CeacUpTHY0YlQD2AxeYrQ=
X-Google-Smtp-Source: ABdhPJyi4XY2EJPTwTiPyxl7hyb0mxG8I11w3HPjfWYzPlUNrHg34+6fuRftfnYMJsy2ki34Zt91dg==
X-Received: by 2002:a9d:5c86:: with SMTP id a6mr583712oti.298.1604041435761;
        Fri, 30 Oct 2020 00:03:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:14a:: with SMTP id h10ls1062739oie.11.gmail; Fri,
 30 Oct 2020 00:03:55 -0700 (PDT)
X-Received: by 2002:a54:4899:: with SMTP id r25mr698227oic.114.1604041435384;
        Fri, 30 Oct 2020 00:03:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1604041435; cv=none;
        d=google.com; s=arc-20160816;
        b=fVLH4PKTVvsT/Q84Kkj/e/8Djtt5gyv4ojfk3S2GRcQwXY0j/E9IQ7+HCcS/IlkE7j
         lpSUsVMhK84tSrC2T4NaFedTVx2BdowdBVzy74N/bsvfqGDZLBPswG0LpJux3Ssp9ba4
         HHWi79bRWQviyym7T8sq04IGdKiL730FLWGtkZvcRnS0rpwOrP9dPy4WwlgbZ9Ch9CDE
         15SH5NRaS6htibatn2L8p0WJfJY+/KcPPjL0K5k6fKRqM1ozmDSl80lSkmqd0IIY1T2v
         EGFM8d98d3XlG9OJ5EuP5DF0c6EgP+SmEFYm8bk5+Fv29k6bH1V1XQ/fj/7Nv8R9Emzn
         f3yw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=a+KCL2i75pyMR5DayuFvC108kUTQgujALGLgcCXwiJo=;
        b=W01NHwXMZobfLWOf9QRzQIJl3tgdx1qo2NP4VOgWJNwNF79SRBneR6RISUq1CxDe4y
         sc2g8qCB3giT2W7oBt7Nxd+Bw4rnkbN2UC813LjUF02XpFnzGydE7wNRWpuVrqrAwAPF
         AxP+3Ua9IeR9UuolipDGPfbuA2/fsxGye+YGtuCqykzN54EwW++kZcqpUE9IsvesZFSl
         ivzljemoFIIHb1lRKtmawOTGF0Qmt7H4G9Jsn6dhZ2cHZY/PilFz1QtMTvqq4RQAhgTD
         5r9+U0Yx8BChcZBMHBdA6mfgfoXrEHy5WtP5mMUKqYPE6QyGzT5QB2ZxpcULNPJZ+H4m
         PU6A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga06.intel.com (mga06.intel.com. [134.134.136.31])
        by gmr-mx.google.com with ESMTPS id w26si344348oih.1.2020.10.30.00.03.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Oct 2020 00:03:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) client-ip=134.134.136.31;
IronPort-SDR: AX9kY4PpBsxRzi390UgitGs2ty74wlhGa1TlojmsbMm4UJ8OVldDbvsOufGfErs5+JxrEV5Sfh
 PHpS7dEV8x1w==
X-IronPort-AV: E=McAfee;i="6000,8403,9789"; a="230205039"
X-IronPort-AV: E=Sophos;i="5.77,432,1596524400"; 
   d="gz'50?scan'50,208,50";a="230205039"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 Oct 2020 00:03:53 -0700
IronPort-SDR: Cg0QPDJ+ALcQ9/s9CAqtiFuT00r3CUTEDLjfAMwb/ycVzaO2SEm4UltjDDL4Y5PPnoDqArV2E+
 WJDwvPB7GUqw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,432,1596524400"; 
   d="gz'50?scan'50,208,50";a="356520834"
Received: from lkp-server02.sh.intel.com (HELO fcc9f8859912) ([10.239.97.151])
  by fmsmga002.fm.intel.com with ESMTP; 30 Oct 2020 00:03:51 -0700
Received: from kbuild by fcc9f8859912 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kYORy-00002R-La; Fri, 30 Oct 2020 07:03:50 +0000
Date: Fri, 30 Oct 2020 15:03:12 +0800
From: kernel test robot <lkp@intel.com>
To: Thomas Gleixner <tglx@linutronix.de>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [tglx-devel:highmem 17/18] include/linux/highmem.h:265:2: error:
 implicit declaration of function '__kunmap_local'
Message-ID: <202010301507.KA6WzpeF-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="vkogqOf2sHV7VnPd"
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


--vkogqOf2sHV7VnPd
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/tglx/devel.git highmem
head:   4025d33ae44c6f748765f64dcb1c97ed4b55e756
commit: eb739dc8f2b6808531c2f47bad9cb3f29c040ae2 [17/18] mm/highmem: Provide kmap_local*
config: arm-randconfig-r005-20201030 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project fa5a13276764a2657b3571fa3c57b07ee5d2d661)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install arm cross compiling tool for clang build
        # apt-get install binutils-arm-linux-gnueabi
        # https://git.kernel.org/pub/scm/linux/kernel/git/tglx/devel.git/commit/?id=eb739dc8f2b6808531c2f47bad9cb3f29c040ae2
        git remote add tglx-devel https://git.kernel.org/pub/scm/linux/kernel/git/tglx/devel.git
        git fetch --no-tags tglx-devel highmem
        git checkout eb739dc8f2b6808531c2f47bad9cb3f29c040ae2
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All error/warnings (new ones prefixed by >>):

   In file included from fs/open.c:16:
   In file included from include/linux/backing-dev.h:15:
   In file included from include/linux/blkdev.h:14:
   In file included from include/linux/pagemap.h:11:
>> include/linux/highmem.h:265:2: error: implicit declaration of function '__kunmap_local' [-Werror,-Wimplicit-function-declaration]
           __kunmap_local(addr);
           ^
   include/linux/highmem.h:284:20: error: static declaration of '__kunmap_local' follows non-static declaration
   static inline void __kunmap_local(void *addr)
                      ^
   include/linux/highmem.h:265:2: note: previous implicit declaration is here
           __kunmap_local(addr);
           ^
   2 errors generated.
--
   In file included from fs/aio.c:21:
   In file included from include/linux/backing-dev.h:15:
   In file included from include/linux/blkdev.h:14:
   In file included from include/linux/pagemap.h:11:
>> include/linux/highmem.h:265:2: error: implicit declaration of function '__kunmap_local' [-Werror,-Wimplicit-function-declaration]
           __kunmap_local(addr);
           ^
   include/linux/highmem.h:284:20: error: static declaration of '__kunmap_local' follows non-static declaration
   static inline void __kunmap_local(void *addr)
                      ^
   include/linux/highmem.h:265:2: note: previous implicit declaration is here
           __kunmap_local(addr);
           ^
   In file included from fs/aio.c:29:
   include/linux/mman.h:156:9: warning: division by zero is undefined [-Wdivision-by-zero]
                  _calc_vm_trans(flags, MAP_SYNC,       VM_SYNC      ) |
                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/mman.h:133:21: note: expanded from macro '_calc_vm_trans'
      : ((x) & (bit1)) / ((bit1) / (bit2))))
                       ^ ~~~~~~~~~~~~~~~~~
   1 warning and 2 errors generated.
--
   In file included from fs/io-wq.c:20:
   In file included from include/linux/blk-cgroup.h:23:
   In file included from include/linux/blkdev.h:14:
   In file included from include/linux/pagemap.h:11:
>> include/linux/highmem.h:265:2: error: implicit declaration of function '__kunmap_local' [-Werror,-Wimplicit-function-declaration]
           __kunmap_local(addr);
           ^
   include/linux/highmem.h:284:20: error: static declaration of '__kunmap_local' follows non-static declaration
   static inline void __kunmap_local(void *addr)
                      ^
   include/linux/highmem.h:265:2: note: previous implicit declaration is here
           __kunmap_local(addr);
           ^
   In file included from fs/io-wq.c:24:
   fs/../kernel/sched/sched.h:1059:5: warning: 'CONFIG_SMP' is not defined, evaluates to 0 [-Wundef]
   #if CONFIG_SMP
       ^
   1 warning and 2 errors generated.
--
   In file included from drivers/ata/ahci_ceva.c:11:
   In file included from include/linux/libata.h:21:
   In file included from include/scsi/scsi_host.h:11:
   In file included from include/linux/blk-mq.h:5:
   In file included from include/linux/blkdev.h:14:
   In file included from include/linux/pagemap.h:11:
>> include/linux/highmem.h:265:2: error: implicit declaration of function '__kunmap_local' [-Werror,-Wimplicit-function-declaration]
           __kunmap_local(addr);
           ^
   include/linux/highmem.h:284:20: error: static declaration of '__kunmap_local' follows non-static declaration
   static inline void __kunmap_local(void *addr)
                      ^
   include/linux/highmem.h:265:2: note: previous implicit declaration is here
           __kunmap_local(addr);
           ^
   drivers/ata/ahci_ceva.c:187:2: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
           AHCI_SHT(DRV_NAME),
           ^~~~~~~~~~~~~~~~~~
   drivers/ata/ahci.h:387:16: note: expanded from macro 'AHCI_SHT'
           .can_queue              = AHCI_MAX_CMDS,                        \
                                     ^~~~~~~~~~~~~
   drivers/ata/ahci_ceva.c:187:2: note: previous initialization is here
           AHCI_SHT(DRV_NAME),
           ^~~~~~~~~~~~~~~~~~
   drivers/ata/ahci.h:386:2: note: expanded from macro 'AHCI_SHT'
           ATA_NCQ_SHT(drv_name),                                          \
           ^~~~~~~~~~~~~~~~~~~~~
   include/linux/libata.h:1418:2: note: expanded from macro 'ATA_NCQ_SHT'
           __ATA_BASE_SHT(drv_name),                               \
           ^~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/libata.h:1400:16: note: expanded from macro '__ATA_BASE_SHT'
           .can_queue              = ATA_DEF_QUEUE,                \
                                     ^~~~~~~~~~~~~
   drivers/ata/ahci_ceva.c:187:2: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
           AHCI_SHT(DRV_NAME),
           ^~~~~~~~~~~~~~~~~~
   drivers/ata/ahci.h:391:17: note: expanded from macro 'AHCI_SHT'
           .sdev_attrs             = ahci_sdev_attrs
                                     ^~~~~~~~~~~~~~~
   drivers/ata/ahci_ceva.c:187:2: note: previous initialization is here
           AHCI_SHT(DRV_NAME),
           ^~~~~~~~~~~~~~~~~~
   drivers/ata/ahci.h:386:2: note: expanded from macro 'AHCI_SHT'
           ATA_NCQ_SHT(drv_name),                                          \
           ^~~~~~~~~~~~~~~~~~~~~
   include/linux/libata.h:1419:17: note: expanded from macro 'ATA_NCQ_SHT'
           .sdev_attrs             = ata_ncq_sdev_attrs,           \
                                     ^~~~~~~~~~~~~~~~~~
   2 warnings and 2 errors generated.
--
   In file included from drivers/ata/libahci_platform.c:19:
   In file included from include/linux/libata.h:21:
   In file included from include/scsi/scsi_host.h:11:
   In file included from include/linux/blk-mq.h:5:
   In file included from include/linux/blkdev.h:14:
   In file included from include/linux/pagemap.h:11:
>> include/linux/highmem.h:265:2: error: implicit declaration of function '__kunmap_local' [-Werror,-Wimplicit-function-declaration]
           __kunmap_local(addr);
           ^
   include/linux/highmem.h:284:20: error: static declaration of '__kunmap_local' follows non-static declaration
   static inline void __kunmap_local(void *addr)
                      ^
   include/linux/highmem.h:265:2: note: previous implicit declaration is here
           __kunmap_local(addr);
           ^
>> drivers/ata/libahci_platform.c:644:42: warning: shift count >= width of type [-Wshift-count-overflow]
                   rc = dma_coerce_mask_and_coherent(dev, DMA_BIT_MASK(64));
                                                          ^~~~~~~~~~~~~~~~
   include/linux/dma-mapping.h:76:54: note: expanded from macro 'DMA_BIT_MASK'
   #define DMA_BIT_MASK(n) (((n) == 64) ? ~0ULL : ((1ULL<<(n))-1))
                                                        ^ ~~~
   1 warning and 2 errors generated.
--
   In file included from drivers/ata/ahci_qoriq.c:19:
   In file included from include/linux/libata.h:21:
   In file included from include/scsi/scsi_host.h:11:
   In file included from include/linux/blk-mq.h:5:
   In file included from include/linux/blkdev.h:14:
   In file included from include/linux/pagemap.h:11:
>> include/linux/highmem.h:265:2: error: implicit declaration of function '__kunmap_local' [-Werror,-Wimplicit-function-declaration]
           __kunmap_local(addr);
           ^
   include/linux/highmem.h:284:20: error: static declaration of '__kunmap_local' follows non-static declaration
   static inline void __kunmap_local(void *addr)
                      ^
   include/linux/highmem.h:265:2: note: previous implicit declaration is here
           __kunmap_local(addr);
           ^
   drivers/ata/ahci_qoriq.c:167:2: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
           AHCI_SHT(DRV_NAME),
           ^~~~~~~~~~~~~~~~~~
   drivers/ata/ahci.h:387:16: note: expanded from macro 'AHCI_SHT'
           .can_queue              = AHCI_MAX_CMDS,                        \
                                     ^~~~~~~~~~~~~
   drivers/ata/ahci_qoriq.c:167:2: note: previous initialization is here
           AHCI_SHT(DRV_NAME),
           ^~~~~~~~~~~~~~~~~~
   drivers/ata/ahci.h:386:2: note: expanded from macro 'AHCI_SHT'
           ATA_NCQ_SHT(drv_name),                                          \
           ^~~~~~~~~~~~~~~~~~~~~
   include/linux/libata.h:1418:2: note: expanded from macro 'ATA_NCQ_SHT'
           __ATA_BASE_SHT(drv_name),                               \
           ^~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/libata.h:1400:16: note: expanded from macro '__ATA_BASE_SHT'
           .can_queue              = ATA_DEF_QUEUE,                \
                                     ^~~~~~~~~~~~~
   drivers/ata/ahci_qoriq.c:167:2: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
           AHCI_SHT(DRV_NAME),
           ^~~~~~~~~~~~~~~~~~
   drivers/ata/ahci.h:391:17: note: expanded from macro 'AHCI_SHT'
           .sdev_attrs             = ahci_sdev_attrs
                                     ^~~~~~~~~~~~~~~
   drivers/ata/ahci_qoriq.c:167:2: note: previous initialization is here
           AHCI_SHT(DRV_NAME),
           ^~~~~~~~~~~~~~~~~~
   drivers/ata/ahci.h:386:2: note: expanded from macro 'AHCI_SHT'
           ATA_NCQ_SHT(drv_name),                                          \
           ^~~~~~~~~~~~~~~~~~~~~
   include/linux/libata.h:1419:17: note: expanded from macro 'ATA_NCQ_SHT'
           .sdev_attrs             = ata_ncq_sdev_attrs,           \
                                     ^~~~~~~~~~~~~~~~~~
   2 warnings and 2 errors generated.
--
   In file included from drivers/virtio/virtio_mmio.c:59:
>> include/linux/highmem.h:265:2: error: implicit declaration of function '__kunmap_local' [-Werror,-Wimplicit-function-declaration]
           __kunmap_local(addr);
           ^
   include/linux/highmem.h:284:20: error: static declaration of '__kunmap_local' follows non-static declaration
   static inline void __kunmap_local(void *addr)
                      ^
   include/linux/highmem.h:265:2: note: previous implicit declaration is here
           __kunmap_local(addr);
           ^
>> drivers/virtio/virtio_mmio.c:609:33: warning: shift count >= width of type [-Wshift-count-overflow]
                   rc = dma_set_mask(&pdev->dev, DMA_BIT_MASK(64));
                                                 ^~~~~~~~~~~~~~~~
   include/linux/dma-mapping.h:76:54: note: expanded from macro 'DMA_BIT_MASK'
   #define DMA_BIT_MASK(n) (((n) == 64) ? ~0ULL : ((1ULL<<(n))-1))
                                                        ^ ~~~
   drivers/virtio/virtio_mmio.c:618:46: warning: shift count >= width of type [-Wshift-count-overflow]
                   rc = dma_set_mask_and_coherent(&pdev->dev, DMA_BIT_MASK(64));
                                                              ^~~~~~~~~~~~~~~~
   include/linux/dma-mapping.h:76:54: note: expanded from macro 'DMA_BIT_MASK'
   #define DMA_BIT_MASK(n) (((n) == 64) ? ~0ULL : ((1ULL<<(n))-1))
                                                        ^ ~~~
   2 warnings and 2 errors generated.
--
   In file included from drivers/gpu/drm/vgem/vgem_drv.c:36:
   In file included from include/linux/shmem_fs.h:6:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:22:
   In file included from include/linux/writeback.h:14:
   In file included from include/linux/blk-cgroup.h:23:
   In file included from include/linux/blkdev.h:14:
   In file included from include/linux/pagemap.h:11:
>> include/linux/highmem.h:265:2: error: implicit declaration of function '__kunmap_local' [-Werror,-Wimplicit-function-declaration]
           __kunmap_local(addr);
           ^
   include/linux/highmem.h:284:20: error: static declaration of '__kunmap_local' follows non-static declaration
   static inline void __kunmap_local(void *addr)
                      ^
   include/linux/highmem.h:265:2: note: previous implicit declaration is here
           __kunmap_local(addr);
           ^
>> drivers/gpu/drm/vgem/vgem_drv.c:449:10: warning: shift count >= width of type [-Wshift-count-overflow]
                                        DMA_BIT_MASK(64));
                                        ^~~~~~~~~~~~~~~~
   include/linux/dma-mapping.h:76:54: note: expanded from macro 'DMA_BIT_MASK'
   #define DMA_BIT_MASK(n) (((n) == 64) ? ~0ULL : ((1ULL<<(n))-1))
                                                        ^ ~~~
   1 warning and 2 errors generated.
--
   In file included from fs/xfs/scrub/agheader.c:6:
   In file included from fs/xfs/xfs.h:22:
   In file included from fs/xfs/xfs_linux.h:31:
   In file included from include/linux/blkdev.h:14:
   In file included from include/linux/pagemap.h:11:
>> include/linux/highmem.h:265:2: error: implicit declaration of function '__kunmap_local' [-Werror,-Wimplicit-function-declaration]
           __kunmap_local(addr);
           ^
   include/linux/highmem.h:284:20: error: static declaration of '__kunmap_local' follows non-static declaration
   static inline void __kunmap_local(void *addr)
                      ^
   include/linux/highmem.h:265:2: note: previous implicit declaration is here
           __kunmap_local(addr);
           ^
>> fs/xfs/scrub/agheader.c:153:32: warning: implicit conversion from 'int' to '__u16' (aka 'unsigned short') changes value from -49265 to 16271 [-Wconstant-conversion]
                                     XFS_SB_VERSION_EXTFLGBIT |
                                     ~~~~~~~~~~~~~~~~~~~~~~~~~^
   include/linux/byteorder/generic.h:96:21: note: expanded from macro 'cpu_to_be16'
   #define cpu_to_be16 __cpu_to_be16
                       ^
   include/uapi/linux/byteorder/little_endian.h:41:53: note: expanded from macro '__cpu_to_be16'
   #define __cpu_to_be16(x) ((__force __be16)__swab16((x)))
                                             ~~~~~~~~~~^~~
   include/uapi/linux/swab.h:107:12: note: expanded from macro '__swab16'
           __fswab16(x))
           ~~~~~~~~~ ^
   1 warning and 2 errors generated.
--
   In file included from fs/proc/meminfo.c:12:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:22:
   In file included from include/linux/writeback.h:14:
   In file included from include/linux/blk-cgroup.h:23:
   In file included from include/linux/blkdev.h:14:
   In file included from include/linux/pagemap.h:11:
>> include/linux/highmem.h:265:2: error: implicit declaration of function '__kunmap_local' [-Werror,-Wimplicit-function-declaration]
           __kunmap_local(addr);
           ^
   include/linux/highmem.h:284:20: error: static declaration of '__kunmap_local' follows non-static declaration
   static inline void __kunmap_local(void *addr)
                      ^
   include/linux/highmem.h:265:2: note: previous implicit declaration is here
           __kunmap_local(addr);
           ^
   fs/proc/meminfo.c:22:28: warning: no previous prototype for function 'arch_report_meminfo' [-Wmissing-prototypes]
   void __attribute__((weak)) arch_report_meminfo(struct seq_file *m)
                              ^
   fs/proc/meminfo.c:22:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void __attribute__((weak)) arch_report_meminfo(struct seq_file *m)
   ^
   static 
   1 warning and 2 errors generated.
--
   In file included from fs/kernfs/file.c:14:
   In file included from include/linux/pagemap.h:11:
>> include/linux/highmem.h:265:2: error: implicit declaration of function '__kunmap_local' [-Werror,-Wimplicit-function-declaration]
           __kunmap_local(addr);
           ^
   include/linux/highmem.h:284:20: error: static declaration of '__kunmap_local' follows non-static declaration
   static inline void __kunmap_local(void *addr)
                      ^
   include/linux/highmem.h:265:2: note: previous implicit declaration is here
           __kunmap_local(addr);
           ^
   fs/kernfs/file.c:127:15: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
                   return NULL + !*ppos;
                          ~~~~ ^
   1 warning and 2 errors generated.
..

vim +/__kunmap_local +265 include/linux/highmem.h

   262	
   263	static inline void __kunmap_atomic(void *addr)
   264	{
 > 265		__kunmap_local(addr);
   266	}
   267	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202010301507.KA6WzpeF-lkp%40intel.com.

--vkogqOf2sHV7VnPd
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--vkogqOf2sHV7VnPd--
