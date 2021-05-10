Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBBFZ4SCAMGQEY7JXFYI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x239.google.com (mail-oi1-x239.google.com [IPv6:2607:f8b0:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id 858E237886D
	for <lists+clang-built-linux@lfdr.de>; Mon, 10 May 2021 13:44:05 +0200 (CEST)
Received: by mail-oi1-x239.google.com with SMTP id r204-20020aca44d50000b029013da91480a0sf9155292oia.17
        for <lists+clang-built-linux@lfdr.de>; Mon, 10 May 2021 04:44:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620647044; cv=pass;
        d=google.com; s=arc-20160816;
        b=uaaFoMSmS20yp9fQWTNMlRkflJEzYWBahNRo65Iedkwg5En5qrjYZYPHCPCDY5ewSN
         2zUsbQyJ0I7v0YnI0VmVhrnUspH1i74jS6qTO7axgh7TPp+W1qsvTzITzvKAjXgoYGGJ
         Y1/T0wHKNKje/G34K3ljj96PoNHcSx9jNAVKdyDCKFnLw8GeFTAbfRRQuX10kUydcdi/
         Z8P3J0eDYDRrENUNzVhE39nx5Nu7QT/HYmHpcMtq4w3xzo64SWKkIMH0BmR20MQZW00T
         b7SHzcyjUab3y0VwH5PAaygSgLqY1caty9DToc3N4URs0dqpH7bWNbvT13/sh4RboThZ
         o6XQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=n4HuV549u8C7EKF9j0jaZEfC1YttnxIuUdxAxPWjs50=;
        b=0b4j9ACTx4D2nVI464EvJZXpoSvi6cf+xKlm5E7EfuEorYkO+AENilwhxg3+4hgxod
         iop+i/yU7Y0/+VihXwfd9VAWnujxonf0MhfCE0wX1NhIzdBZPzcKKyQMYSp6xbJsSMlI
         ITrd/aeqMXFsGtQ6Szfjo+7lL4uQPJscNDnjKwOH0i+LMSvIOSHJK/ohqwuHrHczgFYh
         NI7blSZJopuaEBjJ1+nNZ0TaK+y2ZzM0/7AmUP8EbtdcUxFPBQ7oVOWpmk3H0ixbLqTT
         j+qFR55ri9UpAyFrYDx5T61WJR8+3zLf66Ute9hcUdUqBAID90NkJb1emITADv05iPYv
         UdDg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=n4HuV549u8C7EKF9j0jaZEfC1YttnxIuUdxAxPWjs50=;
        b=ifX7VK0w8mv8l0WMh6MGxoIJ6VzI4Ee0hlPSRsxZB/7X1B6QMjp0WEGFaGP0PLf/tS
         YNoCIo3AOyQLpE2ndhDNtdEpRMkEZ6TqZiQqecIcSHFIWRfs9AEQ1eoLhsvI/Pc8IeuY
         pcaKOtPGziDTPhAA/63LA7JE2XR2OOXeNeN2MX5BO4yX6c/tvmvVfT5OJ0ctb8+/HZJJ
         an++DbxS2jgaRgv4JeRrArDbqOzFhp7KOQty1NAkXSkmgkPzfrEgakooVklilHsr6q9W
         acnx/pxi2hEHG6l2+3mLjJ+QXAJ5wLLiHjjxDtrxgjD0oJzcimSpIHVfOObRZNyThkXE
         z99Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=n4HuV549u8C7EKF9j0jaZEfC1YttnxIuUdxAxPWjs50=;
        b=pgdpVkMueCiUiSHJcAK3oYg6dC81/rIYFoir23IoaUPSDKvGb4Dd164Ab7JTVpiWVj
         860SwdrFvn6/Rgp83XGHXqOBsncdUe+dhdTjMbc6GKSWYVip8X8haHK4MH7dt8z8qWuR
         66rRgqW5gS8ey7xwjlWS4x/R/LkVqK2Oh5rF2Btm+6P5SG/HCAWyEXn08f5mWpxGcqnN
         x/i+9L2J30zfCvnXN2gxTSK0Fm4kLcDltMX1qOI8XFsExNgB8gV4K5IZ6xkJvcHkEzUj
         QM1JOVBD15y8Jj5b/W8qawQp1KLqy1WB7Huv+qmYIkF+e3rCDYYjKB4Flis+wXbU5V18
         m44Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530gnwbXFEBnrVqQstTXLOfUotFFREc18qxLFNuaTtTxrH7Fk/O1
	mrBLJ/OgEExJcVAsrjktZwk=
X-Google-Smtp-Source: ABdhPJzLFaR30uar5Rg4QZDQGsG5OdyqoCYNbt73dYcQESqefnVZaK6v5BCoORGXpEOn1VlSlCKu9w==
X-Received: by 2002:a05:6808:f8d:: with SMTP id o13mr13343298oiw.111.1620647044478;
        Mon, 10 May 2021 04:44:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:83c2:: with SMTP id r2ls931834oog.7.gmail; Mon, 10 May
 2021 04:44:04 -0700 (PDT)
X-Received: by 2002:a4a:952b:: with SMTP id m40mr18669133ooi.69.1620647043974;
        Mon, 10 May 2021 04:44:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620647043; cv=none;
        d=google.com; s=arc-20160816;
        b=R5Rvi8kiYNy6cVZa1cIfww3K8Co3ef5inAoSJ3Y6vLEP4yg02k+sNhnojs7Z2iDk6+
         e+f5dKbNBbEjiuZNymQeqso0ptGlQkR1dDRllmVbJi4gZXC8NLH/ATNStWe3iOrWaaVX
         pq/1CUVHTCgXKHGGMI71hPr80krfTrVoJBi9qwAapjKNWp0Wg/OQ1uvN5mTufJalCfHX
         /a8Cm99gQiMYbUf5hq+QupyeBBL7NPx8FUJNN4Y2OwtHMpRx14oVa6cg/kd+mTqLJBsE
         h3PND4DZpBDM2n3GyEYsC7okoiULNw8KjoolKbuBa4Ux7FzMnPKK1w+7hpbFE54fQDQG
         oLqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=7U4L6vmXL9EUOYHfNaX+Zyec1T2wfz3VlG52Ea0g6ow=;
        b=eJdlYcgJqIYuevipWMKZif1mSIGiDYrWvm3XBsnkAlhmZ4Ge0hTo8Y7KhhHkyveLa9
         YLCLeNN3F4BAP+44sdShXksYAqvv+MqjHctr29zsWuPCOr4IrpUdmT34YD5cjsUroZvc
         bW/8QO5xsJguhFL0AG6f64YCzkJ7yqB8nm4mm7jKJauf/XMD0BKnl0bV1++7Rz3b9zBT
         cVLPn3r/fBMQBfGSnOOgyzCdntCBIk988Z/BW4usordhlQptqvIjm2e9qNO7d3pLaL2x
         tXL90x7upz8fIWnVgT9WtW4J4EP9ojdzqKP1bQeOwvGacix5KPlwiBDiBlAKfJ6m+iIj
         vTvA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga05.intel.com (mga05.intel.com. [192.55.52.43])
        by gmr-mx.google.com with ESMTPS id e13si1850349oth.3.2021.05.10.04.44.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 10 May 2021 04:44:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) client-ip=192.55.52.43;
IronPort-SDR: /Im4lR/268OF6kAlejpe/RDFOiAAr7UHmyorS/F8qDWY+auKpOljJVjxQHkA1LyJjxdRl6WI3W
 +PxSgVzq/XHw==
X-IronPort-AV: E=McAfee;i="6200,9189,9979"; a="284657860"
X-IronPort-AV: E=Sophos;i="5.82,287,1613462400"; 
   d="gz'50?scan'50,208,50";a="284657860"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 May 2021 04:44:02 -0700
IronPort-SDR: WO65LmZHbB8C5cdK+6yKooJRZ+SJDXKZCo+FmcKid98SfO32MYKaidhOmBcrfwcBaoHV5Iwdmy
 ERX+tqn1itqg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,287,1613462400"; 
   d="gz'50?scan'50,208,50";a="408311604"
Received: from lkp-server01.sh.intel.com (HELO f375d57c4ed4) ([10.239.97.150])
  by orsmga002.jf.intel.com with ESMTP; 10 May 2021 04:44:00 -0700
Received: from kbuild by f375d57c4ed4 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lg4KN-0000AF-IF; Mon, 10 May 2021 11:43:59 +0000
Date: Mon, 10 May 2021 19:43:10 +0800
From: kernel test robot <lkp@intel.com>
To: Christoph Hellwig <hch@lst.de>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-nvme@lists.infradead.org, Keith Busch <kbusch@kernel.org>,
	Sagi Grimberg <sagi@grimberg.me>, Hannes Reinecke <hare@suse.de>
Subject: [linux-nvme:nvme-5.13 4/4] drivers/nvme/host/multipath.c:810:6:
 warning: variable 'error' is used uninitialized whenever 'if' condition is
 true
Message-ID: <202105101904.hOaMo7Ow-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="J/dobhs11T7y2rNN"
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


--J/dobhs11T7y2rNN
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   git://git.infradead.org/nvme.git nvme-5.13
head:   8b951d3a91bdd748db10df3ad020257e49dd97b0
commit: 8b951d3a91bdd748db10df3ad020257e49dd97b0 [4/4] nvme-multipath: fix double initialization of ANA state
config: s390-randconfig-r013-20210510 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 492173d42b32cb91d5d0d72d5ed84fcab80d059a)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install s390 cross compiling tool for clang build
        # apt-get install binutils-s390x-linux-gnu
        git remote add linux-nvme git://git.infradead.org/nvme.git
        git fetch --no-tags linux-nvme nvme-5.13
        git checkout 8b951d3a91bdd748db10df3ad020257e49dd97b0
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 ARCH=s390 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   In file included from drivers/nvme/host/multipath.c:6:
   In file included from include/linux/backing-dev.h:15:
   In file included from include/linux/blkdev.h:26:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:80:
   include/asm-generic/io.h:464:31: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __raw_readb(PCI_IOBASE + addr);
                             ~~~~~~~~~~ ^
   include/asm-generic/io.h:477:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le16_to_cpu((__le16 __force)__raw_readw(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:36:59: note: expanded from macro '__le16_to_cpu'
   #define __le16_to_cpu(x) __swab16((__force __u16)(__le16)(x))
                                                             ^
   include/uapi/linux/swab.h:102:54: note: expanded from macro '__swab16'
   #define __swab16(x) (__u16)__builtin_bswap16((__u16)(x))
                                                        ^
   In file included from drivers/nvme/host/multipath.c:6:
   In file included from include/linux/backing-dev.h:15:
   In file included from include/linux/blkdev.h:26:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:80:
   include/asm-generic/io.h:490:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:115:54: note: expanded from macro '__swab32'
   #define __swab32(x) (__u32)__builtin_bswap32((__u32)(x))
                                                        ^
   In file included from drivers/nvme/host/multipath.c:6:
   In file included from include/linux/backing-dev.h:15:
   In file included from include/linux/blkdev.h:26:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:80:
   include/asm-generic/io.h:501:33: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writeb(value, PCI_IOBASE + addr);
                               ~~~~~~~~~~ ^
   include/asm-generic/io.h:511:59: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writew((u16 __force)cpu_to_le16(value), PCI_IOBASE + addr);
                                                         ~~~~~~~~~~ ^
   include/asm-generic/io.h:521:59: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writel((u32 __force)cpu_to_le32(value), PCI_IOBASE + addr);
                                                         ~~~~~~~~~~ ^
   include/asm-generic/io.h:609:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           readsb(PCI_IOBASE + addr, buffer, count);
                  ~~~~~~~~~~ ^
   include/asm-generic/io.h:617:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           readsw(PCI_IOBASE + addr, buffer, count);
                  ~~~~~~~~~~ ^
   include/asm-generic/io.h:625:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           readsl(PCI_IOBASE + addr, buffer, count);
                  ~~~~~~~~~~ ^
   include/asm-generic/io.h:634:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           writesb(PCI_IOBASE + addr, buffer, count);
                   ~~~~~~~~~~ ^
   include/asm-generic/io.h:643:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           writesw(PCI_IOBASE + addr, buffer, count);
                   ~~~~~~~~~~ ^
   include/asm-generic/io.h:652:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           writesl(PCI_IOBASE + addr, buffer, count);
                   ~~~~~~~~~~ ^
>> drivers/nvme/host/multipath.c:810:6: warning: variable 'error' is used uninitialized whenever 'if' condition is true [-Wsometimes-uninitialized]
           if (ana_log_size > max_transfer_size) {
               ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/nvme/host/multipath.c:832:9: note: uninitialized use occurs here
           return error;
                  ^~~~~
   drivers/nvme/host/multipath.c:810:2: note: remove the 'if' if its condition is always false
           if (ana_log_size > max_transfer_size) {
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/nvme/host/multipath.c:795:11: note: initialize the variable 'error' to silence this warning
           int error;
                    ^
                     = 0
   13 warnings generated.


vim +810 drivers/nvme/host/multipath.c

   790	
   791	int nvme_mpath_init_identify(struct nvme_ctrl *ctrl, struct nvme_id_ctrl *id)
   792	{
   793		size_t max_transfer_size = ctrl->max_hw_sectors << SECTOR_SHIFT;
   794		size_t ana_log_size;
   795		int error;
   796	
   797		/* check if multipath is enabled and we have the capability */
   798		if (!multipath || !ctrl->subsys ||
   799		    !(ctrl->subsys->cmic & NVME_CTRL_CMIC_ANA))
   800			return 0;
   801	
   802		ctrl->anacap = id->anacap;
   803		ctrl->anatt = id->anatt;
   804		ctrl->nanagrpid = le32_to_cpu(id->nanagrpid);
   805		ctrl->anagrpmax = le32_to_cpu(id->anagrpmax);
   806	
   807		ana_log_size = sizeof(struct nvme_ana_rsp_hdr) +
   808			ctrl->nanagrpid * sizeof(struct nvme_ana_group_desc) +
   809			ctrl->max_namespaces * sizeof(__le32);
 > 810		if (ana_log_size > max_transfer_size) {
   811			dev_err(ctrl->device,
   812				"ANA log page size (%zd) larger than MDTS (%zd).\n",
   813				ana_log_size, max_transfer_size);
   814			dev_err(ctrl->device, "disabling ANA support.\n");
   815			goto out_uninit;
   816		}
   817		if (ana_log_size > ctrl->ana_log_size) {
   818			nvme_mpath_stop(ctrl);
   819			kfree(ctrl->ana_log_buf);
   820			ctrl->ana_log_buf = kmalloc(ctrl->ana_log_size, GFP_KERNEL);
   821			if (!ctrl->ana_log_buf)
   822				return -ENOMEM;
   823		}
   824		ctrl->ana_log_size = ana_log_size;
   825		error = nvme_read_ana_log(ctrl);
   826		if (error)
   827			goto out_uninit;
   828		return 0;
   829	
   830	out_uninit:
   831		nvme_mpath_uninit(ctrl);
   832		return error;
   833	}
   834	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202105101904.hOaMo7Ow-lkp%40intel.com.

--J/dobhs11T7y2rNN
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--J/dobhs11T7y2rNN--
