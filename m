Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBDONVP7QKGQESLT26ZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb40.google.com (mail-yb1-xb40.google.com [IPv6:2607:f8b0:4864:20::b40])
	by mail.lfdr.de (Postfix) with ESMTPS id 213F72E6EDE
	for <lists+clang-built-linux@lfdr.de>; Tue, 29 Dec 2020 09:19:26 +0100 (CET)
Received: by mail-yb1-xb40.google.com with SMTP id m203sf22538516ybf.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 29 Dec 2020 00:19:26 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609229965; cv=pass;
        d=google.com; s=arc-20160816;
        b=Bk3oZZwyYDUKI/Bo8bW2QoKuZwfjIa3MFMc2yDTNsLKUgroMQuUtLivvHPNjzCI+1J
         DZRP8t1BewYk78r2W7QcjE3W+SsPaDlAotglRVJ+eqzj11DvzUhQITVtSgjeHkjtM2fe
         4aTtdircuJAWWXmiFBxP7M32pOSj8qie6jmPDB5uDVgh5e35WQj0v08mg06bq7RPpUjP
         6wDlWCRL1HnlSIFev0zTzdRlwQ1blA9qT1f9QaWWElqf4BE5oojLDZ2lHJAmTuCRN3PN
         /QPA+f694rTzXh6Bx+Xc8jooooOdWkgjcPHBHKY+9a7t3XnHWY7w9QG1bopBecI31GVX
         EwlA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=L3MA5bx4n8I7UC3QP38M+tNRTOa8Y3rxpVmt7+SRS4U=;
        b=FtJnPV0MPsxKitYF4vkCHA0EKabH2JpgDELtu/QNLnRRbVI6Skobi/oH0+TQytIED/
         WyI+XU4rDSDnEerHs1JIe+l5nAuN5eHX7A0YNthID9LFW5yZKg52xUHkt3fBiAPq2ps+
         fUQZhSzR8PnxRvRYHlakuxBjAGeME4yCYkvGGT60VhAkYSWTdPdMxKxM2Ug/mSxUbcFV
         5ODL9D9voDZLV3HR7bACvApRZrBZI4Ls5n8asNYKZjg1noVo+KV0416AGfTrVBlc7HxK
         TvpsaKrheN98XSWWYCiB67xEIHPaPZ475ayzDxNsrDEb9BOfuLt/2tNHvsA+A+uwYWh7
         pO+w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=L3MA5bx4n8I7UC3QP38M+tNRTOa8Y3rxpVmt7+SRS4U=;
        b=qzw0D804sXBr6BcrBLniz2EHdwJ59O/xlRHAOm6VIepbcMYo47n58YH8TBJ2aXZC7k
         NAiT9Qp/jfOtOjc9M+QjM7qhetb7mhgoip0WC6Wox/ppabbLAdDedA6he7e0LN/L11mm
         9C0aW4O549iLi2nS5lr4fGKXzfv3te7G3Xb1NhqsQdjvbxFByKPal6wuxXfx6xRhREmq
         0VZ7C9o0OKduPDdiwAgn2D+/2yhHZvuIvGax00osMZK7ICIaUyq0SK/YkkV6VdpQJqCT
         6tJj3rAaPYDdQVyDvrQKCmgyVmW4zKCYsuc++aLIWmnaCI4oENewM8eTSqkvdOPuR0us
         9fUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=L3MA5bx4n8I7UC3QP38M+tNRTOa8Y3rxpVmt7+SRS4U=;
        b=PbsCj1U1gf9DZt/jsHBDlAmj/1b1s6/2ubO5IOMePu0barLuY/27qGjWLkZ+rGljIV
         jOpJGwm9Rqe+SXz/DRm+Cy/n2frXYT/y7ZtbOUHgGJG+ON4lN44VqgyliWbay9+o5Pon
         fYMyaHyZ3PHfdA4Np+9gekS7TqGsZpR++YNyk35K6s3Gik887V1+EazGTRZs/ezbAWW2
         wy6TLUlZhKUC47lZoB35uQjMVPgcs4oE6wgp+cbex/vXya+vTNyCCoVUdGPBldAOGTca
         8rx999cH2ncoEUdDjg7tdifbi1idxTz3mMIGVUsZr1M/CjvI+lD2pwBOE9VyHmXVdzBE
         K7CQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531s1ojOBEDxub+HA99HYcUkdDeyaajWte5T9fupsbv4fLmnjeo4
	vDjXEoR53Hdl5AG1ZdC3znw=
X-Google-Smtp-Source: ABdhPJysYsFP4lolMM3utt/v/AteYbieX2RujbpV2SVyIETm27c1OmfSYad1qehoTJITiTsCx5PKAA==
X-Received: by 2002:a25:690b:: with SMTP id e11mr66806114ybc.314.1609229965139;
        Tue, 29 Dec 2020 00:19:25 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:df91:: with SMTP id w139ls29397369ybg.5.gmail; Tue, 29
 Dec 2020 00:19:24 -0800 (PST)
X-Received: by 2002:a05:6902:20a:: with SMTP id j10mr71024466ybs.293.1609229964557;
        Tue, 29 Dec 2020 00:19:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609229964; cv=none;
        d=google.com; s=arc-20160816;
        b=BiG/tFcAk8W/PoDfkStDoJ5wmoq8Psl7L8wWiy9QB/R84JVHRHEzfaJT0vKkgP/1Ph
         MDYobs8qTAn4TbxpTUOshhcuJMigbzCobquVTzeA+Hq6DpW7vlkCQhT/MUpWp1dEWRL0
         vlA1ei1vUtwpFY81729rNnP6rHbl9+QQBucWsZfywdNAiBZdUa3h3BHtXH2B89qDm9dg
         1Ehmo+Sun8rH8NuhauExf14eJXTe5q30LZDY21BpkpEy0a1yrRPQy3oeecwrsX1gNoX/
         AfNG46LnQ+CQRl7PXShbhuYDlPUHWqtqbpiWVwKWOy/b1XKHIR6KqjA/VtS8mwVfkffn
         NQQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=B4vf6mOJ+t34QBD9qV9LhDuTOljDkO1B80y+qnIV1As=;
        b=p8DlIN8JO213T8vkJlkizdOAwHEzukR+yF3pNSUvQlNavsaXp2dAvBByhy6LitM9nS
         nTtO9VEmH2LAtnBFyE/+klp945wjmSP3krqdWMcKouK7mOH8SF5JbMo+X3w4UeGtaatR
         osxip9iNav+CGvl+tencoxMPXm56yGaAXMuuI39snqG9KwSKUDGqi+qi8L+eU1V6o0go
         2FC6F0VJ4/P2g8I6ISNibFRpjgvcwuvs+luxhDQHS/WQ/CGAFwDjAD6LHxdnmRcEokJa
         oykI4Y4x6iZH78+iFv6wpbrnD4i2tthVTMKRKhpr5S8sHtjwfqe9LYnVcJzRqWXRGr3U
         CHGg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga14.intel.com (mga14.intel.com. [192.55.52.115])
        by gmr-mx.google.com with ESMTPS id i70si2429378ybg.1.2020.12.29.00.19.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 29 Dec 2020 00:19:24 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) client-ip=192.55.52.115;
IronPort-SDR: 2qUW4AyMJL9UkvBGFCYrNoNPMj5vz9pdXLXF+GQPjDEs/sU5yFOtC/i3OLcB0ba0LtNcZKho0e
 oHdn+o3Nnsog==
X-IronPort-AV: E=McAfee;i="6000,8403,9848"; a="175697420"
X-IronPort-AV: E=Sophos;i="5.78,457,1599548400"; 
   d="gz'50?scan'50,208,50";a="175697420"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 Dec 2020 00:19:23 -0800
IronPort-SDR: RmPqP1YwUiuw4Yn/M8mblgQfWecaeYotS+kDZvfmRjM+gE2ez7RpEqQmm8nUFHe0S8Ni8D/tqn
 Y8s9QFrO6w3A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,457,1599548400"; 
   d="gz'50?scan'50,208,50";a="395353158"
Received: from lkp-server02.sh.intel.com (HELO 4242b19f17ef) ([10.239.97.151])
  by fmsmga002.fm.intel.com with ESMTP; 29 Dec 2020 00:19:21 -0800
Received: from kbuild by 4242b19f17ef with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kuADw-0003RG-HK; Tue, 29 Dec 2020 08:19:20 +0000
Date: Tue, 29 Dec 2020 16:19:17 +0800
From: kernel test robot <lkp@intel.com>
To: Alexandru Ardelean <alexandru.ardelean@analog.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Mark Brown <broonie@kernel.org>,
	Andy Shevchenko <andy.shevchenko@gmail.com>
Subject: [broonie-misc:spi-5.12 4/6] drivers/spi/spi-stm32.c:1031:3: warning:
 format specifies type 'int' but the argument has type 'unsigned long'
Message-ID: <202012291609.6nXHFOKv-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="+HP7ph2BbKc20aGI"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted
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


--+HP7ph2BbKc20aGI
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/misc.git spi-5.12
head:   ffe9819b6766b9a623822f3427df4953ab448127
commit: f7005142dacea1769fba0152c493aaa61b33205c [4/6] spi: uapi: unify SPI modes into a single spi.h header
config: x86_64-randconfig-r026-20201229 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project cee1e7d14f4628d6174b33640d502bff3b54ae45)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/broonie/misc.git/commit/?id=f7005142dacea1769fba0152c493aaa61b33205c
        git remote add broonie-misc https://git.kernel.org/pub/scm/linux/kernel/git/broonie/misc.git
        git fetch --no-tags broonie-misc spi-5.12
        git checkout f7005142dacea1769fba0152c493aaa61b33205c
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/spi/spi-stm32.c:1031:3: warning: format specifies type 'int' but the argument has type 'unsigned long' [-Wformat]
                   spi_dev->mode & SPI_CPOL,
                   ^~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/dev_printk.h:123:39: note: expanded from macro 'dev_dbg'
           dynamic_dev_dbg(dev, dev_fmt(fmt), ##__VA_ARGS__)
                                        ~~~     ^~~~~~~~~~~
   include/linux/dynamic_debug.h:162:19: note: expanded from macro 'dynamic_dev_dbg'
                              dev, fmt, ##__VA_ARGS__)
                                   ~~~    ^~~~~~~~~~~
   include/linux/dynamic_debug.h:147:56: note: expanded from macro '_dynamic_func_call'
           __dynamic_func_call(__UNIQUE_ID(ddebug), fmt, func, ##__VA_ARGS__)
                                                                 ^~~~~~~~~~~
   include/linux/dynamic_debug.h:129:15: note: expanded from macro '__dynamic_func_call'
                   func(&id, ##__VA_ARGS__);               \
                               ^~~~~~~~~~~
   drivers/spi/spi-stm32.c:1032:3: warning: format specifies type 'int' but the argument has type 'unsigned long' [-Wformat]
                   spi_dev->mode & SPI_CPHA,
                   ^~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/dev_printk.h:123:39: note: expanded from macro 'dev_dbg'
           dynamic_dev_dbg(dev, dev_fmt(fmt), ##__VA_ARGS__)
                                        ~~~     ^~~~~~~~~~~
   include/linux/dynamic_debug.h:162:19: note: expanded from macro 'dynamic_dev_dbg'
                              dev, fmt, ##__VA_ARGS__)
                                   ~~~    ^~~~~~~~~~~
   include/linux/dynamic_debug.h:147:56: note: expanded from macro '_dynamic_func_call'
           __dynamic_func_call(__UNIQUE_ID(ddebug), fmt, func, ##__VA_ARGS__)
                                                                 ^~~~~~~~~~~
   include/linux/dynamic_debug.h:129:15: note: expanded from macro '__dynamic_func_call'
                   func(&id, ##__VA_ARGS__);               \
                               ^~~~~~~~~~~
   drivers/spi/spi-stm32.c:1033:3: warning: format specifies type 'int' but the argument has type 'unsigned long' [-Wformat]
                   spi_dev->mode & SPI_LSB_FIRST,
                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/dev_printk.h:123:39: note: expanded from macro 'dev_dbg'
           dynamic_dev_dbg(dev, dev_fmt(fmt), ##__VA_ARGS__)
                                        ~~~     ^~~~~~~~~~~
   include/linux/dynamic_debug.h:162:19: note: expanded from macro 'dynamic_dev_dbg'
                              dev, fmt, ##__VA_ARGS__)
                                   ~~~    ^~~~~~~~~~~
   include/linux/dynamic_debug.h:147:56: note: expanded from macro '_dynamic_func_call'
           __dynamic_func_call(__UNIQUE_ID(ddebug), fmt, func, ##__VA_ARGS__)
                                                                 ^~~~~~~~~~~
   include/linux/dynamic_debug.h:129:15: note: expanded from macro '__dynamic_func_call'
                   func(&id, ##__VA_ARGS__);               \
                               ^~~~~~~~~~~
   drivers/spi/spi-stm32.c:1034:3: warning: format specifies type 'int' but the argument has type 'unsigned long' [-Wformat]
                   spi_dev->mode & SPI_CS_HIGH);
                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/dev_printk.h:123:39: note: expanded from macro 'dev_dbg'
           dynamic_dev_dbg(dev, dev_fmt(fmt), ##__VA_ARGS__)
                                        ~~~     ^~~~~~~~~~~
   include/linux/dynamic_debug.h:162:19: note: expanded from macro 'dynamic_dev_dbg'
                              dev, fmt, ##__VA_ARGS__)
                                   ~~~    ^~~~~~~~~~~
   include/linux/dynamic_debug.h:147:56: note: expanded from macro '_dynamic_func_call'
           __dynamic_func_call(__UNIQUE_ID(ddebug), fmt, func, ##__VA_ARGS__)
                                                                 ^~~~~~~~~~~
   include/linux/dynamic_debug.h:129:15: note: expanded from macro '__dynamic_func_call'
                   func(&id, ##__VA_ARGS__);               \
                               ^~~~~~~~~~~
   4 warnings generated.


vim +1031 drivers/spi/spi-stm32.c

dcbe0d84dfa5a3e Amelie Delaunay 2017-06-21   995  
dcbe0d84dfa5a3e Amelie Delaunay 2017-06-21   996  /**
dcbe0d84dfa5a3e Amelie Delaunay 2017-06-21   997   * stm32_spi_prepare_msg - set up the controller to transfer a single message
1c52be8bed83e1a Alain Volmat    2020-03-20   998   * @master: controller master interface
1c52be8bed83e1a Alain Volmat    2020-03-20   999   * @msg: pointer to spi message
dcbe0d84dfa5a3e Amelie Delaunay 2017-06-21  1000   */
dcbe0d84dfa5a3e Amelie Delaunay 2017-06-21  1001  static int stm32_spi_prepare_msg(struct spi_master *master,
dcbe0d84dfa5a3e Amelie Delaunay 2017-06-21  1002  				 struct spi_message *msg)
dcbe0d84dfa5a3e Amelie Delaunay 2017-06-21  1003  {
dcbe0d84dfa5a3e Amelie Delaunay 2017-06-21  1004  	struct stm32_spi *spi = spi_master_get_devdata(master);
dcbe0d84dfa5a3e Amelie Delaunay 2017-06-21  1005  	struct spi_device *spi_dev = msg->spi;
dcbe0d84dfa5a3e Amelie Delaunay 2017-06-21  1006  	struct device_node *np = spi_dev->dev.of_node;
dcbe0d84dfa5a3e Amelie Delaunay 2017-06-21  1007  	unsigned long flags;
55166853b2f56ce Cezary Gapinski 2018-12-24  1008  	u32 clrb = 0, setb = 0;
dcbe0d84dfa5a3e Amelie Delaunay 2017-06-21  1009  
dcbe0d84dfa5a3e Amelie Delaunay 2017-06-21  1010  	/* SPI slave device may need time between data frames */
dcbe0d84dfa5a3e Amelie Delaunay 2017-06-21  1011  	spi->cur_midi = 0;
042c1c60df7b854 Amelie Delaunay 2017-06-27  1012  	if (np && !of_property_read_u32(np, "st,spi-midi-ns", &spi->cur_midi))
dcbe0d84dfa5a3e Amelie Delaunay 2017-06-21  1013  		dev_dbg(spi->dev, "%dns inter-data idleness\n", spi->cur_midi);
dcbe0d84dfa5a3e Amelie Delaunay 2017-06-21  1014  
dcbe0d84dfa5a3e Amelie Delaunay 2017-06-21  1015  	if (spi_dev->mode & SPI_CPOL)
55166853b2f56ce Cezary Gapinski 2018-12-24  1016  		setb |= spi->cfg->regs->cpol.mask;
dcbe0d84dfa5a3e Amelie Delaunay 2017-06-21  1017  	else
55166853b2f56ce Cezary Gapinski 2018-12-24  1018  		clrb |= spi->cfg->regs->cpol.mask;
dcbe0d84dfa5a3e Amelie Delaunay 2017-06-21  1019  
dcbe0d84dfa5a3e Amelie Delaunay 2017-06-21  1020  	if (spi_dev->mode & SPI_CPHA)
55166853b2f56ce Cezary Gapinski 2018-12-24  1021  		setb |= spi->cfg->regs->cpha.mask;
dcbe0d84dfa5a3e Amelie Delaunay 2017-06-21  1022  	else
55166853b2f56ce Cezary Gapinski 2018-12-24  1023  		clrb |= spi->cfg->regs->cpha.mask;
dcbe0d84dfa5a3e Amelie Delaunay 2017-06-21  1024  
dcbe0d84dfa5a3e Amelie Delaunay 2017-06-21  1025  	if (spi_dev->mode & SPI_LSB_FIRST)
55166853b2f56ce Cezary Gapinski 2018-12-24  1026  		setb |= spi->cfg->regs->lsb_first.mask;
dcbe0d84dfa5a3e Amelie Delaunay 2017-06-21  1027  	else
55166853b2f56ce Cezary Gapinski 2018-12-24  1028  		clrb |= spi->cfg->regs->lsb_first.mask;
dcbe0d84dfa5a3e Amelie Delaunay 2017-06-21  1029  
dcbe0d84dfa5a3e Amelie Delaunay 2017-06-21  1030  	dev_dbg(spi->dev, "cpol=%d cpha=%d lsb_first=%d cs_high=%d\n",
dcbe0d84dfa5a3e Amelie Delaunay 2017-06-21 @1031  		spi_dev->mode & SPI_CPOL,
dcbe0d84dfa5a3e Amelie Delaunay 2017-06-21  1032  		spi_dev->mode & SPI_CPHA,
dcbe0d84dfa5a3e Amelie Delaunay 2017-06-21  1033  		spi_dev->mode & SPI_LSB_FIRST,
dcbe0d84dfa5a3e Amelie Delaunay 2017-06-21  1034  		spi_dev->mode & SPI_CS_HIGH);
dcbe0d84dfa5a3e Amelie Delaunay 2017-06-21  1035  
dcbe0d84dfa5a3e Amelie Delaunay 2017-06-21  1036  	spin_lock_irqsave(&spi->lock, flags);
dcbe0d84dfa5a3e Amelie Delaunay 2017-06-21  1037  
55166853b2f56ce Cezary Gapinski 2018-12-24  1038  	/* CPOL, CPHA and LSB FIRST bits have common register */
55166853b2f56ce Cezary Gapinski 2018-12-24  1039  	if (clrb || setb)
dcbe0d84dfa5a3e Amelie Delaunay 2017-06-21  1040  		writel_relaxed(
55166853b2f56ce Cezary Gapinski 2018-12-24  1041  			(readl_relaxed(spi->base + spi->cfg->regs->cpol.reg) &
55166853b2f56ce Cezary Gapinski 2018-12-24  1042  			 ~clrb) | setb,
55166853b2f56ce Cezary Gapinski 2018-12-24  1043  			spi->base + spi->cfg->regs->cpol.reg);
dcbe0d84dfa5a3e Amelie Delaunay 2017-06-21  1044  
dcbe0d84dfa5a3e Amelie Delaunay 2017-06-21  1045  	spin_unlock_irqrestore(&spi->lock, flags);
dcbe0d84dfa5a3e Amelie Delaunay 2017-06-21  1046  
dcbe0d84dfa5a3e Amelie Delaunay 2017-06-21  1047  	return 0;
dcbe0d84dfa5a3e Amelie Delaunay 2017-06-21  1048  }
dcbe0d84dfa5a3e Amelie Delaunay 2017-06-21  1049  

:::::: The code at line 1031 was first introduced by commit
:::::: dcbe0d84dfa5a3e72b8e6ce622cd5ac78abbcab8 spi: add driver for STM32 SPI controller

:::::: TO: Amelie Delaunay <amelie.delaunay@st.com>
:::::: CC: Mark Brown <broonie@kernel.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202012291609.6nXHFOKv-lkp%40intel.com.

--+HP7ph2BbKc20aGI
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--+HP7ph2BbKc20aGI--
