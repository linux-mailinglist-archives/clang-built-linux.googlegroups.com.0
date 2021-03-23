Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBMPP5CBAMGQESG5L2LQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73b.google.com (mail-qk1-x73b.google.com [IPv6:2607:f8b0:4864:20::73b])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D631346805
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Mar 2021 19:47:15 +0100 (CET)
Received: by mail-qk1-x73b.google.com with SMTP id o70sf2626090qke.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Mar 2021 11:47:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616525234; cv=pass;
        d=google.com; s=arc-20160816;
        b=NHX2qs2oa/Cn+7GSu6ZBAFvkwO35yqoGbXNy/pgYrmRzAGKdm8Rg6SYB7hNDastry0
         fVLHoiacaKaC2tonWSKjM/jmX6m6vi1Z2i5YS/N2aARTbjr+hyppn4HfT1BP1cDR2dpC
         /XtPgprxi3V/0zL7fhgQxVZcBJUIGY85NejOcpnYMFZO4exoxHQhkNlYUevgOPExwmO/
         RVnUgixKf6976sQDYPJPiyQOitzq809gAFeEx6oqaT5eIii8CvpDI+yAykrwNh78hL7a
         4szfwS2n4i3P1Vx6ufueS2YmOqJ36MyywyFnDlTDAYlGg6Dtb2BjMGnUR3OsalxMIfrV
         7jhg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=6rSUsxoT2P88VRoEweKxqiK0YGOSct2jgQ2KOFY5unk=;
        b=wxuTVYdKos/1fDNzWjt3f2YU8ZsLAJZl1VhtQAIKnwZU4zx22VG28SyGtbG05hO+0G
         iygL6hnXHZVzvj2JAObdUmJB1rhfd0i9BSGvPcJK3MKWh61j9COsCBzCI9ZwDZbWhRKF
         8i4K2plRckAiRJv8c3JPpoWNsayc+JKAIajsD3UazFpIzgyofR0E8lkB2Z0KjyJmlSP6
         B7d8/FGmzA8aETpizp7y/0XxspCFWH2ItxoEGHdBjx0waW0A1HM8g0hBUf7oKrQEPs66
         A8Z2owC4kX5tSnL/pBK10UerY6A5EYSPsoh5GBVMVyQapCGt40ccoXopxHHsKYZP9mZB
         NVMg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6rSUsxoT2P88VRoEweKxqiK0YGOSct2jgQ2KOFY5unk=;
        b=M2QRkqn6tT9yYiS52JwgHiQLcybf9gvEKoGR1p8RGugJlv8PGXDfRaoDQScBRIooMB
         9bi4Vg9IPDeFFMpGPrKG7fLoknP0TJGPjhr9S9q+GpgrnAMc8T8O7AdD8WR0s9EoAzHU
         j4gBWfeCZd7nUvQLmydIUVH4qHHTp1cr6Bq/LWRrPszAvvBgrIiUzSXv6KlVWxo3sDMm
         kCganOnYQTg+ezJDdqxklEZcm547nnyViL6Mj0WH+Wfbuv2mHc3u6aThdRxFS5XJfQ0t
         sEvELaGBLclqbR1/d3ieOlPPU9OI9f/r5s5qReVl6BALFUxJ3MGvSVT9QkoO1Da9ypVH
         xDcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=6rSUsxoT2P88VRoEweKxqiK0YGOSct2jgQ2KOFY5unk=;
        b=ObAG7k8LP+B+Cp/kFm6KgqXeSlQsSm7G/pBAkyisCWDoGFvqPC9amSUA9fkZVssEBx
         3XyGi9ROQjEcQfNijRRstdWBMk3k0zXRjX2DFahWFhh/lWN2Wl5/LuNnWBdG6mPRcqeA
         mut3ZwrtySxjL9LKpUNyJJFa2T5dn2JeIJZzxuvHlwCvCxKZWsXau/liJX22eMrnMYyX
         2xW39kd8ggiKoRhAkqGejHt84HEKUZBShMuyZm7djYRZpnjJkCZwX2OAiiCkPya9Cvkm
         g+uT1x53ObU7XjY/5YbqnJ9FMFVJ6JE5eoYJ3ATHR/tWGeYWQeyMELJ2HuHUliMrg0Pg
         TQLQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533UQ5Lbi0rUSL9CggnGp/VCIcFal78cE5DZ5tI5FR/Akwrk9xuF
	1vRXWEFDGQXZ4LS4SbCk7iQ=
X-Google-Smtp-Source: ABdhPJznHmvYrgcE/gBeOpGDv/mqCXPtZvdTh3AbnE+xXVccQvCnt/VhI4+mQzYB1kCFjbfwQ+tExQ==
X-Received: by 2002:a37:9e0e:: with SMTP id h14mr6923691qke.197.1616525234065;
        Tue, 23 Mar 2021 11:47:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:5189:: with SMTP id b9ls4448053qvp.7.gmail; Tue, 23 Mar
 2021 11:47:13 -0700 (PDT)
X-Received: by 2002:a0c:f950:: with SMTP id i16mr6160155qvo.54.1616525233367;
        Tue, 23 Mar 2021 11:47:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616525233; cv=none;
        d=google.com; s=arc-20160816;
        b=ARVX8RgqvrDafhbhZKy6jXGBGhLrfjbnZtH36mfOBVpImLdh9g0/9icCgjeCrGbX9A
         qVPeQMO9/8mBLOtAuoyn2Bc1oYCvHB1X+1SAdDeuXZlJxZjDsj/PNnZWvpUFeEwwHxCQ
         pA9ZD53IKz+BuykCTe0dBX7nno6g4wgicH6P1LulDQdwL5XprQbuExZhM6STenpPIBHD
         +VWMJFXMqMrnF6EqwkkkgSNsp5MDhiToc7HpT7A/EFekJrM5VfQQnNKSKcPtJSpGKdZn
         SKxy64toC3PfULhsUv/FkXvMTyMRR5VEaP0gAI3bRj7I1G4m40yDgm2FaDDQy+P4h6/m
         diwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=5/Y5RiN2uUgQ1s0H3IvF5JkZzPNcWKTnhjFZnOIYXyc=;
        b=N/Q5ScDCDVHYtMJEiEALO7OZriLJugwbY0SFfRIFzbMdGlcrPHcgO4W22cFqrLLvkZ
         uRJHLUuUdqythYZvpG8qOLh2zpnibUoDpJHumyknp2YXpSieFRXRuGveOPQ2aMYNMKNe
         kw5djjh4r3SQnUHt2de+6gA1HNT+egw7FWctGwrtvPjYu7mzh/adIkxc9we48jiXf98X
         fb5wGhcj8EWk/4nJwUq3hS+tKVYAyfaTH5PGb6ezSlcVkZGDXq/P+Z8pBtofajH48O8m
         fZzToPqJYTIVEY7Y/x0SSehU4wiAYGEdnEAq51fa6GkZwdjarcbjZPlBT+UkidnpWNdK
         kuag==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga12.intel.com (mga12.intel.com. [192.55.52.136])
        by gmr-mx.google.com with ESMTPS id h28si1119756qkl.1.2021.03.23.11.47.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Mar 2021 11:47:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) client-ip=192.55.52.136;
IronPort-SDR: +qkiW9Hvz7cOlVTbnc1xMUbaSICN4HcF339xdA7IE0Mu1n6qVmL64Uz+1Px2M3ByCr2hYyghPJ
 0ca1JAx3PbyQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9932"; a="169875811"
X-IronPort-AV: E=Sophos;i="5.81,272,1610438400"; 
   d="gz'50?scan'50,208,50";a="169875811"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Mar 2021 11:47:11 -0700
IronPort-SDR: Rt3SPdMLlL03sFyMZZEDvp4DOIvGvN29n7fssRaC0DYQbRidJdZQLK19iCFxk9dhQU6BgKyNMU
 z6+qkHLOhmLA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,272,1610438400"; 
   d="gz'50?scan'50,208,50";a="513870659"
Received: from lkp-server01.sh.intel.com (HELO 69d8fcc516b7) ([10.239.97.150])
  by fmsmga001.fm.intel.com with ESMTP; 23 Mar 2021 11:47:10 -0700
Received: from kbuild by 69d8fcc516b7 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lOm3Z-0000kv-FL; Tue, 23 Mar 2021 18:47:09 +0000
Date: Wed, 24 Mar 2021 02:46:59 +0800
From: kernel test robot <lkp@intel.com>
To: Pratyush Yadav <p.yadav@ti.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [ti:ti-linux-5.4.y 9094/13425]
 drivers/mtd/spi-nor/spi-nor.c:5721:18: error: implicit declaration of
 function 'of_read_number'
Message-ID: <202103240257.JncpkU0A-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="huq684BweRXVnRxX"
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


--huq684BweRXVnRxX
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Pratyush,

FYI, the error/warning still remains.

tree:   git://git.ti.com/ti-linux-kernel/ti-linux-kernel.git ti-linux-5.4.y
head:   ca222ae72ea37d74141ed53deaa0a07263ef34e8
commit: 6f9db649f76819bbe6b9ee1a7758717d0f2e01ee [9094/13425] HACK: mtd: spi-nor: Look for PHY pattern partition
config: x86_64-randconfig-a013-20210323 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 78a65cd945d006ff02f9d24d9cc20a302ed93b08)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        git remote add ti git://git.ti.com/ti-linux-kernel/ti-linux-kernel.git
        git fetch --no-tags ti ti-linux-5.4.y
        git checkout 6f9db649f76819bbe6b9ee1a7758717d0f2e01ee
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> drivers/mtd/spi-nor/spi-nor.c:5721:18: error: implicit declaration of function 'of_read_number' [-Werror,-Wimplicit-function-declaration]
                           op.addr.val = of_read_number(reg, a_cells);
                                         ^
   1 error generated.


vim +/of_read_number +5721 drivers/mtd/spi-nor/spi-nor.c

  5556	
  5557	int spi_nor_scan(struct spi_nor *nor, const char *name,
  5558			 const struct spi_nor_hwcaps *hwcaps)
  5559	{
  5560		const struct flash_info *info;
  5561		struct device *dev = nor->dev;
  5562		struct mtd_info *mtd = &nor->mtd;
  5563		struct device_node *np = spi_nor_get_flash_node(nor);
  5564		struct device_node *child;
  5565		struct spi_nor_flash_parameter *params = &nor->params;
  5566		struct spi_mem_op op;
  5567		int ret;
  5568		int i;
  5569	
  5570		ret = spi_nor_check(nor);
  5571		if (ret)
  5572			return ret;
  5573	
  5574		/* Reset SPI protocol for all commands. */
  5575		nor->reg_proto = SNOR_PROTO_1_1_1;
  5576		nor->read_proto = SNOR_PROTO_1_1_1;
  5577		nor->write_proto = SNOR_PROTO_1_1_1;
  5578	
  5579		/*
  5580		 * We need the bounce buffer early to read/write registers when going
  5581		 * through the spi-mem layer (buffers have to be DMA-able).
  5582		 * For spi-mem drivers, we'll reallocate a new buffer if
  5583		 * nor->page_size turns out to be greater than PAGE_SIZE (which
  5584		 * shouldn't happen before long since NOR pages are usually less
  5585		 * than 1KB) after spi_nor_scan() returns.
  5586		 */
  5587		nor->bouncebuf_size = PAGE_SIZE;
  5588		nor->bouncebuf = devm_kmalloc(dev, nor->bouncebuf_size,
  5589					      GFP_KERNEL);
  5590		if (!nor->bouncebuf)
  5591			return -ENOMEM;
  5592	
  5593		info = spi_nor_get_flash_info(nor, name);
  5594		if (IS_ERR(info))
  5595			return PTR_ERR(info);
  5596	
  5597		nor->info = info;
  5598	
  5599		spi_nor_debugfs_init(nor, info);
  5600	
  5601		mutex_init(&nor->lock);
  5602	
  5603		/*
  5604		 * Make sure the XSR_RDY flag is set before calling
  5605		 * spi_nor_wait_till_ready(). Xilinx S3AN share MFR
  5606		 * with Atmel spi-nor
  5607		 */
  5608		if (info->flags & SPI_NOR_XSR_RDY)
  5609			nor->flags |=  SNOR_F_READY_XSR_RDY;
  5610	
  5611		if (info->flags & SPI_NOR_HAS_LOCK)
  5612			nor->flags |= SNOR_F_HAS_LOCK;
  5613	
  5614		/*
  5615		 * Atmel, SST, Intel/Numonyx, and others serial NOR tend to power up
  5616		 * with the software protection bits set.
  5617		 */
  5618		if (JEDEC_MFR(nor->info) == SNOR_MFR_ATMEL ||
  5619		    JEDEC_MFR(nor->info) == SNOR_MFR_INTEL ||
  5620		    JEDEC_MFR(nor->info) == SNOR_MFR_SST ||
  5621		    nor->info->flags & SPI_NOR_HAS_LOCK)
  5622			nor->clear_sr_bp = spi_nor_clear_sr_bp;
  5623	
  5624		/* Init flash parameters based on flash_info struct and SFDP */
  5625		spi_nor_init_params(nor);
  5626	
  5627		if (!mtd->name)
  5628			mtd->name = dev_name(dev);
  5629		mtd->priv = nor;
  5630		mtd->type = MTD_NORFLASH;
  5631		mtd->writesize = 1;
  5632		mtd->flags = MTD_CAP_NORFLASH;
  5633		mtd->size = params->size;
  5634		mtd->_erase = spi_nor_erase;
  5635		mtd->_read = spi_nor_read;
  5636		mtd->_suspend = spi_nor_suspend;
  5637		mtd->_resume = spi_nor_resume;
  5638	
  5639		if (nor->params.locking_ops) {
  5640			mtd->_lock = spi_nor_lock;
  5641			mtd->_unlock = spi_nor_unlock;
  5642			mtd->_is_locked = spi_nor_is_locked;
  5643		}
  5644	
  5645		/* sst nor chips use AAI word program */
  5646		if (info->flags & SST_WRITE)
  5647			mtd->_write = sst_write;
  5648		else
  5649			mtd->_write = spi_nor_write;
  5650	
  5651		if (info->flags & USE_FSR)
  5652			nor->flags |= SNOR_F_USE_FSR;
  5653		if (info->flags & SPI_NOR_HAS_TB)
  5654			nor->flags |= SNOR_F_HAS_SR_TB;
  5655		if (info->flags & NO_CHIP_ERASE)
  5656			nor->flags |= SNOR_F_NO_OP_CHIP_ERASE;
  5657		if (info->flags & USE_CLSR)
  5658			nor->flags |= SNOR_F_USE_CLSR;
  5659	
  5660		if (info->flags & SPI_NOR_NO_ERASE)
  5661			mtd->flags |= MTD_NO_ERASE;
  5662	
  5663		mtd->dev.parent = dev;
  5664		nor->page_size = params->page_size;
  5665		mtd->writebufsize = nor->page_size;
  5666	
  5667		if (of_property_read_bool(np, "broken-flash-reset"))
  5668			nor->flags |= SNOR_F_BROKEN_RESET;
  5669	
  5670		/*
  5671		 * Configure the SPI memory:
  5672		 * - select op codes for (Fast) Read, Page Program and Sector Erase.
  5673		 * - set the number of dummy cycles (mode cycles + wait states).
  5674		 * - set the SPI protocols for register and memory accesses.
  5675		 */
  5676		ret = spi_nor_setup(nor, hwcaps);
  5677		if (ret)
  5678			return ret;
  5679	
  5680		if (info->flags & SPI_NOR_4B_OPCODES)
  5681			nor->flags |= SNOR_F_4B_OPCODES;
  5682	
  5683		ret = spi_nor_set_addr_width(nor);
  5684		if (ret)
  5685			return ret;
  5686	
  5687		/* Send all the required SPI flash commands to initialize device */
  5688		ret = spi_nor_init(nor);
  5689		if (ret)
  5690			return ret;
  5691	
  5692		/*
  5693		 * Find out if a PHY pattern partition is present.
  5694		 *
  5695		 * TODO: Teach the mtd core to find the partition for us so we don't
  5696		 * have to repeat the parsing logic here that mtd already has.
  5697		 */
  5698		child = NULL;
  5699		do {
  5700			int len;
  5701			char *label = NULL;
  5702	
  5703			child = of_get_next_child(np, child);
  5704			if (child)
  5705				label = (char *)of_get_property(child, "label", &len);
  5706	
  5707			if (label && !strcmp(label, "ospi.phypattern")) {
  5708				const __be32 *reg;
  5709				int a_cells, s_cells;
  5710	
  5711				reg = of_get_property(child, "reg", &len);
  5712				if (!reg)
  5713					continue;
  5714	
  5715				a_cells = of_n_addr_cells(child);
  5716				s_cells = of_n_size_cells(child);
  5717				if (len / 4 != a_cells + s_cells)
  5718					continue;
  5719	
  5720				op = spi_nor_spimem_read_op(nor);
> 5721				op.addr.val = of_read_number(reg, a_cells);
  5722				spi_mem_set_calibration_read_op(nor->spimem, &op);
  5723				break;
  5724			}
  5725		} while (child);
  5726	
  5727		dev_info(dev, "%s (%lld Kbytes)\n", info->name,
  5728				(long long)mtd->size >> 10);
  5729	
  5730		dev_dbg(dev,
  5731			"mtd .name = %s, .size = 0x%llx (%lldMiB), "
  5732			".erasesize = 0x%.8x (%uKiB) .numeraseregions = %d\n",
  5733			mtd->name, (long long)mtd->size, (long long)(mtd->size >> 20),
  5734			mtd->erasesize, mtd->erasesize / 1024, mtd->numeraseregions);
  5735	
  5736		if (mtd->numeraseregions)
  5737			for (i = 0; i < mtd->numeraseregions; i++)
  5738				dev_dbg(dev,
  5739					"mtd.eraseregions[%d] = { .offset = 0x%llx, "
  5740					".erasesize = 0x%.8x (%uKiB), "
  5741					".numblocks = %d }\n",
  5742					i, (long long)mtd->eraseregions[i].offset,
  5743					mtd->eraseregions[i].erasesize,
  5744					mtd->eraseregions[i].erasesize / 1024,
  5745					mtd->eraseregions[i].numblocks);
  5746		return 0;
  5747	}
  5748	EXPORT_SYMBOL_GPL(spi_nor_scan);
  5749	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202103240257.JncpkU0A-lkp%40intel.com.

--huq684BweRXVnRxX
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICK81WmAAAy5jb25maWcAjFxbd9u2sn7vr9BKX7ofmvgW73Sf5QeQBCVEBMEAoC5+4VJt
OdunvuTIdtv8+zMD8AKAoFKvrNjCDO6DmW8GA/38088z8vb6/Lh7vb/ZPTx8n33dP+0Pu9f9
7ezu/mH/P7NMzEqhZzRj+j0wF/dPb39/+PvTZXN5Mfv4/uL9x4vZcn942j/M0uenu/uvb1D5
/vnpp59/gn8/Q+HjN2jn8J/ZzcPu6evsz/3hBciz0/P3J+9PZr98vX/9z4cP8P/j/eHwfPjw
8PDnY/Pt8Py/+5vX2b8/7S4/3tz+dvHx9uTk8u7u5Ozut9uzi9vfbm7OTnbnJ2f729/Ofz/5
9C/oKhVlzubNPE2bFZWKifLqpCuEMqaatCDl/Op7X4gfe97T8xP4cSqkpGwKVi6dCmmzIKoh
ijdzoUWUwEqoQx2SKJWWdaqFVEMpk1+atZBO20nNikwzThu60SQpaKOE1ANdLyQlGTSfC/iv
0URhZbPCc7NhD7OX/evbt2EhEimWtGxE2SheOV2XTDe0XDVEzmF+nOmr8zPcp268vGLQu6ZK
z+5fZk/Pr9hwV7sQKSm6JXv3LlbckNpdGzOxRpFCO/wLsqLNksqSFs38mjnDcykJUM7ipOKa
kzhlcz1VQ0wRLgaCP6Z+VdwBuasSMuCwjtE318dri+Pki8iOZDQndaGbhVC6JJxevfvl6flp
/69+rdWaOOurtmrFqnRUgL9TXbiTroRim4Z/qWlNo+NKpVCq4ZQLuW2I1iRdRPlqRQuWREmk
BrUSmZXZICLTheXAwZGi6CQejs/s5e33l+8vr/tH5+jTkkqWmtNVSZE4x9AlqYVYxynpwhVF
LMkEJ6z0yxTjMaZmwajEIW/HjXPFkHOSMOrHHRUnWsJGwPzhlIEeiXNJqqhcEY0nkIuM+kPM
hUxp1moR5mpBVRGpaDu6fl/cljOa1PNc+fu3f7qdPd8FOzFoVpEulaihz2ZNdLrIhNOj2VaX
JSOaHCGjxnK19kBZkYJBZdoUROkm3aZFZMuNUl0NEhSQTXt0RUutjhJRn5IshY6Os3GQBJJ9
rqN8XKimrnDInSjr+0cwiDFp1ixdgvamIK5OU4vrpoK2RMZSd79KgRSWFTRymOCXBqvSaEnS
pbf5IcXKyajh2AFl8wXKnFleY9p6mRhNyVEpklJeaWi1jKuUjmElirrURG4jXbc8wyy6SqmA
OqNitFTtYqdV/UHvXv6YvcIQZzsY7svr7vVltru5eX57er1/+jos/4pJaLGqG5Kadu269QM1
u+OTI0ONNILC4J9NI6DxXhKVoSZLKehZ4NDRNUMsoDTRKrZWinkqHdRNZzAyphBnZNFz/Q9W
yqyoTOuZGstutyNAHuYKHwDcgPQ6e6Q8Dg3VwiKc3LgdmG9RIFjhovQpJQU9p+g8TQrmnkGk
5aQUtb66vBgXNgUl+dXppUtJhAhbMEWwhAXZXn0EuNivrOlapAnudnRF/ZXq939p/3AkYtmv
ofCOOFsuQHfDWYvCMgRaOZg2luurs5NhH1ipl4C+chrwnJ57prYGlGpRZ7qA9TMKrTs16ua/
+9s3gPCzu/3u9e2wfzHF7bwiVE+Tq7qqAMmqpqw5aRICoDv1dJDhWpNSA1Gb3uuSk6rRRdLk
Ra0WAWvfIEzt9OyTo8zmUtSVctcMsEk6jx6apFi2FWIK0xDsWgzt54TJJkpJczAPpMzWLNML
t384/U6F6Z4qlnnjbotlNgEnW3oO5+Wayul2M7pivj5vCSClk/qkGxOV+TF6UuXHOgbMMCwQ
AlMAGqDHhrIaZcL1iQCEup8BNUqvABbJ+1xS7X2GJU6XlQCxQMMEQMkBA1as0TMx43NXBJAB
bF9GQWcBvAr1YbeReOIj00UxgkU2GEU6EmE+Ew4NW6ji+D4yG7kXUDRyLQaS7+tAgXFx3MqB
4+ASLrzNTxsBBpGza4qW3myxkBxOZBQ2BNwK/vD8BusveGqEZaeXIQ8o/ZQaO2xwBg3qVKmq
ljCWgmgcjOM5Vrk7eGs6IuMMOuVg3BgKjzOOOdUcDEkzQoF280fF+QJOswsmrS/UYx1PvYaf
m5Iz1/91zgEtcjBarmBOz54AKs9rb1Q1gLXgI5wKp/lKeJNj85IUuSOWZgJugQGtboFagM50
NC5zvGYmmlr6ujtbMRhmu37OykAjCZGSubuwRJYtV+OSxlv8vtQsAZ48zVbUkwtnx1wvUxpk
k8cUrTEdGKQZRgaNlGmwHeAKeX4QMNMsi6puK7zQZxN6D6YQhtOsuHHaOkPahsmq/eHu+fC4
e7rZz+if+yeAVQRsaYrACoCzg6JijRvNGuuit8j/sJseo3Lbh4XPHZbvHQReEbDMchlZAVWQ
xNOkRR338pERFl7OaYc+J1ozFg1xWyPhAAruymWd54BPKgKNuK6w4zqInBVxHG70jjENnqfi
R8465suLxHU4NybU6X129byN7qFyy2gKfrcj8AArK0CWRsXqq3f7h7vLi1///nT56+XFO08u
YVFaGPhud7j5L0ZXP9yYYOpLG2ltbvd3tsSNuS3BanV4yFkqDc6cmfGYxrkDpE3fHLGWLMEC
Meu9Xp19OsZANhgvjDJ0wtI1NNGOxwbNDaC7jzoo0mSu0esInjJ1Cnst0ZhN9pS07ZxsO2vT
5Fk6bgS0CUskxhIsuP8+UhzoxmE3mxiNAL7AaDENrGTPAaIJw2qqOYip687jmBTVFm9ZV1FS
Z+bGnelIRhtBUxKjHYvajU17fOaQRNnseFhCZWlDRWDYFEuKcMiqVhWFvZogG7hulo4UzaIG
81okA8s1ePe4f+dO8NaE8UzlKTjfKjYYeqfRenugSAkKgGRi3Yg8h+W6Ovn79g5+bk76n3ij
tYkDOtKQgxmnRBbbFONkrqnLtoBSQRKqxVYxEIeG2xh7p17m1kEqQFmCpfvooCTcXxgitScP
N5imVjkZtV8dnm/2Ly/Ph9nr92/WmXYcqWDNPH3KY84J6qOcEl1LanG1WwWJmzNSsXSiJq9M
vM85AKLIcuZ6WZJqwBH2FsNr2J4AgHSyiKp55KEbDXKDstgimklOPKdFU1RKTbIQPrTT+jKR
aTGh8oYnXqCjK7NSFTdKxiUQHMQyB6jeq46Yqd/CyQKkAyB4XlM3JgCLSTDI4xmituxI3xta
RrpZgikO2rfB0KrGyB7IWaFbhDd0torH3LEte6LCyG04yiD8FAsidaxdWKBv5DNhxUIgDjHj
jof4U1keIfPlp3h5pdI4ARFb/BYGzKzgkQn0Sr5yrF8ng7IEq91qcBsbuXRZitNpmlap317K
q026mAdwAeO+K78EzCPjNTdHKge1U2ydqBQymL0D54krB1AgN6g2e3TGxXBcxoWL7dwNkXXF
KSA+Ukfavl4QsXGvIhYVtULiMGfcO21zAsLBBICLeMCAFMCxHXN0tstYLYWYD+xWQufQ/Wmc
CLplTGox5YgwFMC8CrTt/lWC2V68uWxQYQaSIbpCTyNJKgHVWX+4vWBNhNAYx51WY9xXW9Yo
OOj88fnp/vX5YMPPwwEd0H+rK+sSRT92QEesklTF1eM0PcWAseuGOhxG64o1lS5Unhivu2Sn
lyPcTFUFBjc8Dt1lDOCZuiBtgH5Q3Z9ivgZYZilS716rL+rPw6AIehJMJq4qeg6wf1YP5CSN
X0qYPVQxw9BaRZb5E/xoQIJfljEJqKCZJ4hwVKAfKoLYQYPjw1IXusJOAEYBqU/ltvKMTEAC
LWvgb7I94mFZaGTsv61KIsCvJ3enKqDTAqfRXvriRaMzT1YUdA7HqbWkeD9XU8Rq+93tifPj
L22FvWHFdDu5/Ca2By6DUOiwy9qEkyY2xN6EYsB77ShVrqWjwPATYjamAa5PlrdL1C/FyQQb
LhpGKozmGWkjM0cSLiQYTQWgEg818aPJhhz6v9iI4u5N/oChau6HEwcKmKMf4K92I1vQih7B
km6nVZmtpNXGbD2i8YlNCBnL+AB7BgzNRnulOYsFC2iKbqTb6OK6OT05ibYBpLOPk6Rzv5bX
3IljB6+vTh0/w8LHhcSLQMdXoRvqGQ1TgN7fVAoFUeD/11Gk33sioBsk+jyn4fEBfxQDISik
x+qDbzsvof6Z5yl1Dk8rAuD14uWYczds3PRVppwQoD2moQb3PIWQZSPKIn6wQ87JW+GUZ8a3
BlNbxGyDyFgOE8j0OJJrHOwCVGOFl0ueRTvilo3cd5JlTaC4Da1VEO0SLoSuijq822p5VFWA
q1GhcdUtjo5w6UUFtmkuiXtvXT3/tT/MwPjuvu4f90+vZrAkrdjs+Rvm2r24uKF13ePSPnj+
MXlx9E3F+zucAZFwDPjibUE29m0GnrRw5rb+YrEEnOOcpQzjjBOGpXPZcV4ObfSpExsj9Qq0
vFjWVdAYrOBCt0lEWKVyQz6mBARFg9mxYzNgSI2jZYbTzHTuGgmvuPGvGmzjVSrt+MKhV8y3
4mZwAERyZYcy4UEBl6SrRqyolCyjfVhmmh2UTiRvx+Ug6QAQTUFCNBjt7Wh8Sa11VF4MdQXj
EUFLOSnD1fIFHouM6yMpyIdSAalNeQCMHeLUgMyy0RL3RBjTeJ1tNTKfg7HGAPLUrPSCSk6K
YF5prcDBbDIFmgZVunOrN2gKU92c5bqCc5yFAzxGC65N7bBTEKhCjOUG/tYE1OLkJFp1BL6M
799YGU3CVfdBiDNfTvVCZKP1hL+mU/eMhFWUBZq4L/cvyVx2vxPDO1/QaTFGBsrKz8Fe2XKp
2jCMO/qs0vn4uLmVx0lrFVpKUYHYBO7KxqoQjz7VrP07D9A/qMzOvR6UuI96uuylWX7Y/9/b
/unm++zlZvcQeIzdiZrK6InU7htmtw/7IRqJLflnqytp5mIFUCHL/PF6ZE7LmJvv8WgqJut3
ca6ocFlSFxNzDXo/DceXNCAzTIsbIMAP7apZn+TtpSuY/QLHcbZ/vXnvpJzjCbXunWctoZRz
+yEWtbR3HBhl8B2+MvHFA6+oE3eeE8OxQ71/2h2+z+jj28OuQwZdh+T8LO5xm6DxeSz7oMWA
biDfFo1gIgZE6ssLCzVBANz7qDbDuK85zGQ0Wj8EtjIrJExOj5lefn94/Gt32M+yw/2f9q50
cBSy2C1tziRfo3cGEM26T4Ma4IzFYRJQbGZALN8aafg2gIPbhqAUUCs6KWD0iiIhfnw0Xzdp
Ph+3NUTOhJgXtB9lLLsB204rF2P0Rf5dJJZ2Vxvdgun918Nudtct261ZNjd9a4KhI48W3NPm
yxV3Z4sx4hoE4HoEML13CnjFef+6v0Go/evt/ht0hWdvgLKeb+Tfz1t3yi8zQxH2+tcp7krQ
0owV7NJeDEU35TO4Y6DjEhrXQNDbAGbr0kg8JheliC7GXr55AaFZ2SR+Jr5piMFM8F40ciu4
DK+ubCnezsQIooqXt83gO5A8ln6T16X1+wFaIqIqP9s4QMDmmeshO9+0uAAIHhDx3CI+YfNa
1JHEagUrbPS9zUgPVs1cmAISR6+uzZ8aMyjahaEmiG3EjY8W3Y7cPqix1/fNesE09RNG+4tO
1XvK2uQQmRphk4qjG9o+gQn3AFABAMMysxeEraT4mt/y2eyT6Pbgc53Jip7LZUoW6yaBCdp8
uIDG2QbkdSArM8CAyaTfgbDVsgQVB1vh5fKEyS8R+VgQmaGfa7IB7Y2oqRFrJNJ/l+Ei20XD
GElsH4fDepwaSSSya57WLSTH3JORKFnRtxm07e1OuPa21N4kTNAyUU9corfmE+2jfYjRPa6K
8GKkeuCPTbcNi7XZBo4Jnih3auIiFyARAXF0pd0p5/ba2yObCI7Ta1h3gLd+NThSInrzOIxv
zTRY21YWzH1tKDDp5CsHQ/5hKr7Vx9F8fO/wCBRO96bN04aliQXDZmFWBEaM/ilfU9XRNpGO
WV5hiMNIhCFiSEnBaYt2pURuNKHejuaRdRF/msLpduQJSDWGVtB4YcYinpzIOtEN02hWzJso
TUYRLZQPU92Esr20mGF8XnZRwGA6iBoIv9aQsBRp18k2mmrEZYk01ZINO6YkjgWv2nbmRBch
1Ups+1JpbFdhbZkND/ZZWwMH+ghJHSh81AKKzdsw3/kIibd0Elhxk9VmZHtU4/xsTBqmj7I3
ub9wchmYz/aFolxv3NM/SQqrW4GLVo+R+uoS8+bsmx8nJG7LTO7sUZUCznoBLlEbQ/fNdg/e
AGHEEBoaNjdtMqzaZpo6N3cWAqdi9evvu5f97ewPm6X57fB8dx868sjWLtyxVFbD1qHcLhu2
S2080pO3FPheGqNErIymRv4ArHdNgW7lmI7sHg6TvqswP9W5OLOqxd2wdofNyzNYVxLz4lqe
ukR6qKjaqj3RbbkDZPE7YFtdybR/ulzEM5s6ThZP52nJeJwknchnankwt20NCEwpNED9u4iG
cRP9jjmAJcghHOktT4SXYt1qafNoKoyCJ/4NAz5TUKnCKPIXP8Goe8CQqHm0sGDJuBzDKnPJ
XJvSkTCPLfOLu9sbg2+kT1snelTQ8C9huzaPKV4a6xIXTFSkfzBc7Q6v9yixM/39m5t2B2PS
zOLr9mbDOcjgZpYDx5UXmvRITVpzUpJo2M9npFSJzWQXjb39n+yGZBNhhJDRxCQBXP2DEUmm
UrbxemWbgR7tDpProhxdCxzsj7dyHUETyeJLykl6tE2uMqFibeIbyYypZecDOCkeJcxE1cmx
ZpUoYEiqvaSPjKuGRkwAqe8j9v4u47GhYfHoFk3N2Q+Wty7Mg++jw64nJHNJJCdHq2KYKDJW
jNJdfoo36pzg2LC7aGpwyDxdNIob4jHlXzBKOipDqO6+O8FiczdpH/+L4c2hc5KhHhP2Uj4D
JBbmrzrk5TaJRv47epJ/cS2h318vyao8dSJypf3eDwDT4KSgJRqhpeF+UwuMJUi+vhrDDfNl
C5lpxrxzn2aR6xiDAVXds5YmoTn+Qi/a/0oAh9deva8lqWyM0awx/Xt/8/a6+/1hb74EZmZS
v16d1U5YmXON8H6EJmMk+ODH7Mzw0KXvnyOjp9A+cHV23ralUsncB99tMVhR5w4Tm2yDBP3e
Tc3DTJLvH58P32d8CP+PQpBHs52GVClQ/jWJUUKfq0u2ocqPkA85WRsw5y4OH0grG8EepW2N
OMad2hNo8lzH9By/O2Hugod2mAx140hNe5kOMc1k0xy0PfSYhXnhCUjglri5Dj0bxg2b4BUA
JrNgGoZsdPhCJwEE7rpNNq1ZoOs0FC6Vm+vfCp1ZUPuNDZm8ujj5rU/vnXDlh0f3MReeFGuy
jWG4KDe3r+cifr0yaSB+uDhSEjRqElRMMtnA4z0LWTorkBaUlAFzLmHl/T5S/0UCfJzM/Ohp
LlDDQnzQoq7+7cmQE5eINHXtD+K6EsI5XddJnQ3H/vo8B4/XHeS1sm/ijiSCm2uSLvju+NtZ
98JsHETqVWZl3gj5ERn7gGAVxMhg3U1WNX43gzvAOb6eBs9wwUn0XZ2JJGDWlNl0vFnLY3oe
B2KCN8Tz/KbV2iAUvUNa7l//ej78AV5hLJUITuuSRp/clsxBsbXBWal3F2TKMkbiDpMuJlIM
c8mNuYpS8cH3kk4kiWZwPPBbWKI+FLNTHu6FK/tMGL/OJdocMPSpTibjOwoYqqYqXfExn5ts
kVZBZ1iMeeLVVGfIIImM03HerGLHiHM0p5TXm8gwLUej67L0ATIABVC2Yskm7sFsxZVmk9Rc
xDP+W9rQbbwD3JaGxB+wGBo4x9NEVqFBmdjtYbpuIQpkUKTTqiv2m6+zalqADYck6x9wIBX2
BePbcbHF3uHPeS9tMePR8aR14oZpOyPW0a/e3bz9fn/zzm+dZx9VPAGhWl36Yrq6bGUdEUr8
ux8Mk/1WAMxVbzISv0HH2V8e29rLo3t7GdlcfwycVZf/z9mzLLeO6/grXk11V91Tbcl24ixm
QVGUzWO9Isq2cjYq35P0dOqmk1SSvj3z90OQepAUaE3Nok/HAEjxCQIgAPqxzpo1UYLXk15L
WHtTYWOv0LlU/agSn+qHkk1K65V2panAaUq461Qei1cI1ej78YLtbtr0PPc9RSbPFjx8So4u
ZB6EKyH3+JnQSJlLmYXlCZaVTmyYSayvlVBsVF5BSvYQU+plioJ6GGYV46MohxnvNKnxOMQ0
9Hwhqni8w9wx9I0gbG1hSUYdCK3slJK83S7D4B5Fx4zmDD+G0pTikW6kJik+d024wasiJR6c
X+4L3+dv0uJcEtxIwRlj0KfN2rcqpklvxi7TCBnbOAeTvtQ6Tszy3ozk9BFlocOtUSXLT+LM
a0/6wRMiF5jthCSffj6elZ7DS6efwT+5F34JRrdUSpBeinQFscfAh69R5VTgB3OXggdoyorj
URUGDU2JEBxjfuqMa0CNkjqrlVkkurcECcjI8d12BjWly8XX0+eXc8WhWneodwxfXWo7VYU8
voqcO366g6Q7qd5BmFKtMTckq0jsGxfPao88sa2JHKDKx3SS9kCxcNQzr1iqfYXGDyc72E3B
1OuzR7w+PT1+Lr7eFv98kv0Em8Yj2DMWktErAsMU1kFA8wBNAdIfNDoxgRE7cuYSirPX5MDR
uzOYlTtD4NW/R3udNX135ZUAaEo4LmBUZSZULg9POBBl5b71ZRPNE3wmSiHPL4+3vJIkExyH
nbU9r4LcCrb6LLeUbJ6VBichPC00NzPPD9ZtmF4Li5/+/fzTdGq0iLl90sBv38FkWVPdH12S
UWEBGRgltaFkHC4JJqjGozCizCbUoo8Xwcd/JJnEJk6J1OWFkN250oA+cONYalK0QdfTWwEZ
xB7awyG16knv2uiMl4f0rfYQ+/K5Au7+yKuDO9DXR03u4CN2UgIKDGzARTqvcrdeXuBHB+Dk
seDHEfwwUJ90r1j6CAPwQnYZF8B+vr1+fby9QHbAR3dxnzKw4nTr//P5v17P4GcKpeib/EP8
9f7+9vFleVlLHffsTFd8VpmPp1BWTmGQS2IyuR1cVeNbJj2NU2krRePOPNqdPNd6otn55fEJ
Yqgl9skYHkiX2vd3dGifpR2uXvCxHuaBvT6+vz2/2qMJwfS9e6C1BHr4EK/gWQ5McjHIE27K
aj08ryP0zLZaM7Tv8+/nr59/XF0uajecO+mpZlR91KjUX4XZOEpQNa8iJY/tI6wDtbXgt2Hg
L9Mq5RC0JIieXC2nNXSRfVKSqpvWd8s/1JYRWWDn3F4NWI/tdfzUMQO/C27ci/Q4MDfmU7Dy
O2iplDT73Vhd3p8f4dZLj+hkJoyR2dw2yIdK0TYIHOhvtuZiMUtISRDNf9iRVI0iWZnT7mno
6Gz+/LM7UxeFe7Nz1M47e5Y6rvUGGKK290aMlxyjOisTi4X3MCmoHnP8YJNSWB6T9ErKY/XN
IVJBZcyfsNPBE//lTbKFj7EnyVl5zZi9GEDKmB1D2lfjLq6pKzJ8zejeWEq53Q5DM7QUJRji
HpDJGwv0rjEmr3R7NIjHRAWJnswbvV6kVt4zOM6BGjMEfiJxxU+oSNOh2aliYloM2FtXVqqm
4PuJGx6AjKiL145Yed1fuYFQnqjHuvDkqQf06ZhCgq2Ip7zmpmNVxXbW7YP+3fLQ3PUaJkzP
wQ52DiZkWWbet/f1mQnrgS8pJ1O1mhJ7YQAyYVLM0vEAKOP3bMghwOpRycBWamETbGgAhRTJ
6UQn7AcwFxh7zWorflH+VHMmplLL4MTwfvn4tD0MavCYvVVeEGIcQgCbDhIOSo6YyhBzBaUD
FeBaVbttfQvsllpVqIgT5bHosa1MS8B90jQIf+K10XdYjcNR/rnI3sDrQeeNrD8ur586TGuR
Xv5nMjJRepCbSLijrHqET0jnGFIZ0cNJbYTc5pNfbXW2zfQS5tFg49aHEyKJcTVRZG4ho7EF
hKFZ06cuKS3I4B8jd4m24PQaXkWy36oi+y15uXxKIeWP5/fpuaoWUsLtKr+zmFHNJCy4ZBQt
ApblwU6mTPRFbvtZdui8gIZ7egkEEaSRgbvFsx0v1+NTA+9dgUC4Y0XGajSHP5Bof+r80Kq0
2a3hToNgw6vYtY2Fj/MAgYVuf5wrOZcewkfleYmMcRaLOp7C5VlPptBjzVNn65PMARQOgETK
R8QUd/xrSPuzXN7fweTVAZVxSFFdfkKiC9P6phpWgE2kgaEE277HaxVW9f4BMs94xkmOxO1N
o5tvFeN0D2BPMSaicNJnetgu180ELGgUtklKxN6G56z+enqxYel6vdw1NkxHAZ8gPKVyWwlq
nRxYlDXODajOjv/08vs30Douz69PjwtZZ3dmGRvc/mJGN5vAO9rwGIrqq5cio/syXB3CzY1n
bIWow03q9lSkTj+tKdYL0v5OHU9GxuXeIfTXPUPj589/fStev1EYq4lty+5tQXcrdPDnx9Va
CkTFcVQOO5ScGDAoECKtIMDwXHEzw4RJ0Ulj7sD0aN99vkkTNsCmd/6hV1SMUlBu90QKYvnO
/R5CIs8qzL9Fs5ZzO+20WUekEuF0ut7fv8lz/yIV5pcF0Cx+19xltDa4U6ZqihnEvbp2nykd
JQkmBQ/4rDFV1QG8K3mBgIcs6Z2mmj1//rTPT3mEd4+CYGMI/wh+dSbkdBd7tDD4/xY5PBHl
23aQE0MPvGpdWsZxtfgP/f9wUdJs8af2zfFwBl0A2wzzVU0aUlQOE9VA5UK6Vte/3ZN0o/gj
KbL60N4fSSz/xkWksjsV1V++6XeokEywRsOOkSPySEB7TlVEldiDb5fpl9cTRCzqXq8Lly4O
PBqzqewCqF16ZBHmGzDU66Y4BYTK/xod8SOywFKguVmIdHhnl11oVP01CDOv5VbzlVuRUkgz
qURDHqqp4vLx9vX28+3FNJnlpZ0+qQvSsK7uuriN/Jim8AO//eqIElzj6NFgKhUCDg5ersIG
v1zqiY8Zw8+WniCVEvdVgriKrrcnn8GLwwy+wVPT9njf6UhjKcLA7SaNT/gX5Bmvkjm1rPbc
WasrtdkJmRuBStizoG9lTxmbmtcB6iRWGMbxlNlvggGp9mohdvtNgoRElZXNUkPppKaaYhxV
o0i1Y5Z92QD7V4hJ5LkSNElq1wWlv0Y2B2o4cAxLRc/uWC4kL5X8SKzS0zI0Y4jiTbhp2rgs
DCXCANpGGxMBlpsBER+z7ME2yPAog6wDpoM0yWtTdK55kvUzOlqqAHjbNJhFW87W3SoU66Vh
IGI5TQsBucYhqSaHF3yM2diXLU+xt2dIGYu77TIkqaE0c5GGd8vlyoWES7POfjRridt4sjb2
NNE+uL29TqJacrfEHCP3Gb1ZbUIrNZQIbra4y82ps86C9cUTuCMPuloOkZSzylV3eYK3zcc5
rNsXzxOsDTxy0bQiTpgZsw23EFUtDLfc8lSS3E5hDIY6eAMMVDqkahra+e/0b7n6ZHtJ1YbB
ZtkLjoyVoNyZt1b9ilEYyeJC7LnSEbuxLrU1+EoW2I4iI83N9nbjr/luRZsbY/320KZZ3yBf
5HHdbu/2JRP4cdWRMRYsl2uUSzgjMYxddBssJ9tPQ70u9CNW7m1xzAYrTpfM578vnwv++vn1
8def6kGXzz8uH1I5+gLbHHx98SKVpcWj5FLP7/CnOS81WCfQHvw/6sVYX8fL1DfJy9fTx2WR
lDtiJBd6+/sVbP2LP5VdcfELpCN7/niS3w6pkU+LgMOgyohsJrHu89VyBCT/M3fxCK8bTP3o
tvIpo7xvMH/9khpQxqmUsj+eXtT71+PidkjAMB2PqZTsr6oXSabymaA88RQEFFrmJM83vIjE
oCXGNu7fPr/Ggg6SXj4eHaRqn5f+7X3Iliq+5OCY4QW/0EJkvxoa/tD2eJJu6towG3cg53v7
TkT+Hh+C0ImKKkZBgnoYY8sZ3RcOQyQphawzpiPMwCht8J5EJCct4abFzTruR0rIfxHbfsDx
NMM7xFv3JotPV9pSwdhZYUgKFeExPKJshr8Blf3LfhZHQSCtpQ4QGT/bfU9ntv1F7tt//WPx
dXl/+seCxt8ktzI22yDsGgYDuq80rMZUBY9v41DI4/HVoykmMaqeDLKGJQ4AhsIr6hAYhR+n
QJIWux3+fIVCq5Rt6obOGqi653B2Cl1VApJIwnz4v5nQOQqu/p0QWd+BpKFq3t1eAyblkfyf
t2xVDmtmtJw5HZsM1Fmlp/fVGe/dJbdvq5hYckQPVzFp/opalhnSbQ8k6ZGYuwzbKMNRUFu+
b6A3yU0fFZCZBtgAJnpKmk7tHdsLwB9lEePqkkKXdriBXg+G083fz19/SOzrN5Eki9fLl2Rt
i2d4Su33y0/roFW1kT1F85b3ONOWZZfkUmYLbkJMYNWlwYdF1WHMEyAET8O1laUVgGiG9izG
NnaGucZEvZfjSK7fQ/E7rnUE3WYW1yh7VR4zDnXama2T1lTKbNpIY/QUoJAFhWO6CCBLxUqd
EuDFgMv6oFmCT0PXBpRGb+0rBCIqEXSHTI7CiazVkNaxvDlIYqhTHUz59u7YfwZjGqQOQ837
0w7WscmeCYIX/yJY3a0XvyRSEjvL/36dnlYJrxg4LZsD2MPaAl/pA14OQ4gW9EUdjASFwO+s
r7baMN0RKmWyAhLsK6cMjI3KRuiHpZyHZV3BPSry2BcBo7RzXHu4V/kwr8Qz+swTYJZgvtsX
QiGkBF+VpRd1anwYuOfweLbsfHcchArmbTuc14XP4bqOulHHr+65NxylPuLNl/D2pCatKoQ8
MvHvnhhqq+osbbljZkozj45PKjdaR/N+cGgf9aVHWxiOn6Vu9fzPv0Dc7bzViJFYyboQ6D1J
/49FBukXUpbrMFdjDZ1YHksJeEULO1OrVOsZrvDWD+W+QBOHGPWRmJS1/dBFB1JvVcAOnqlg
x+z9xepgFfiiV/tCKaFwWUetN7ZFyqUC4tnbY9GauSl8mDxo8SnW+mct5jqRkR92pUyqEP1E
zJW1jmD5cxsEgdceXMKiW3liwbK4bXaot5n5QcmK8prb4tS9J0eMWa6i6JIi0M3CTldUp75o
tRS/8AaE5xEDifHNztwyOUrB0O6ngrR5tN2ib70YhaOqILGzW6I1HuMW0Qw4J86sorzBB4P6
ll3Nd0W+8laGb1f9joV7i2QWnFmIssOU2NpshKayMspAgdx+V16eB1igglXoxI/WuNb7Yw7O
oTm8uomHA5kkp3mSaOdhagZN5aHR7WtLz4GX8vsj94WN9Uinjcgg7FkqbEfzDtTW+BYZ0PjK
GND4Eh3Rsy2T8mxh8zKOuRiYRSBFc24nCGlaRgm+FuNZphjbR4oO40/RC3ezFARwWlbuNMSv
zYRcBZ5oIKM+yJHPrIxoEQtn285+gGsAyip1knezwh0a3GQU2dtPW5XBHN/aH8nZfj5jz2cn
kG/DTdOgbZ48qcfwJrDukSyLbukJYt/hYXsS7tnbvPEVcQ88G+Orbu1rmUT4yngeBUyyYImv
Mr7D+fv3bGbSM1KdmP28a3bKfDxHHHZ4y8ThAYukMD8kv0LywlrjWdqsW080rsRtWvftSRMr
zlfRCWYjMtvDaWWvtoPYbtf4+Qkoj/+cRskv4p6/B/FD1tq4bit4e4puOxv8kIbb7zf4baNE
NuFaYnG0HO3b9WpGblFfFcxMpG5iHypre8PvYOlZAgkjaT7zuZzU3cdGhqtBuNomtqttOMOF
5J+scuwaIvQs4FODZliwq6uKvHC8D5KZ8yC3+8SlcAzJtnKpc8DDJK0rsk1r2K7ulvZBFB7m
V01+kiKAdRqqxLQxrncaBYuD1WJ4bWmGcevETF2gmCWD74l6lwQd8AcG4TMJn5H4S5YLSNlt
XXAUs4fJfVrs7Nvm+5SsGo8b0H3qlYNlnQ3LWx/6Hk2SYzbkCNc+mSVq3lO4xPXlRKmy2SVR
xVbXqpvlemYvVAz0SEsw2QarO0+6E0DVBb5Rqm1wczf3MbkOiEA5RwXpLyoUJUgmZSI7PSmc
n64eipRk5lMVJgISqibyP2vTCo+dS8IhgIzOaaGCp8TmKvQuXK4wLxarlO3gyMWdh0FLVHA3
M6EiE9YaYCWnvhdHgfYuCDw6GyDXc7xUFBRMYQ1u0RG1Oi6s7tUZJNGdn7pjbnOMsnzI5GL1
icw7j6Mehbwhuee04OhD30YjHvKilMqrJbefadukO2eXTsvWbH+sLZapITOl7BLwgpIUWyDF
kfBkU6ode+m0zpPN7+XPtoJHofDzjsPlVSqnFU16aFR75j+chHUa0p43vgU3EOCv2RqVa/8h
s/LOo4g03M8iO5o0lWPto0niGF8NUpLy+BOrhDgRqAy47KiDnk8+IVzOni8XiJYpQSS8u9tk
eGKmssSZsXB0TmWXBYeKb5/Pj0+Lo4iGG3agenp67HKxAKbPSkMeL+9fTx/T25Rzaj6PCb9G
s2qmTwwMV1tWT/nzyr2axG58EotdaWbmyDNRhiEMwfbWAgTVa44eVCVZucV+CvDzwaen4iLb
YF5kZqWj1oQhmRTJvGNakc50gOGG4xtDmn4ZJsLMRGHCaw/9j4fYPLVNlLLXslzZV7TLnUr6
szg/Q96eX6Y5jn6F5ECfT0+Lrz96KiTQ4Oy7HcoaMDHjG/v4ndfi2PrzRELoJxpYoe64xiw4
o0ApYk/mp1M22Xr89f2vL68vDc9L891q9bNNWWx6nipYkkDq2dR6pU1jILuVdoy3wDq18iFT
cZ5j0xUuI5Ck/eAExg2xsy/wlOTgHmDNQFe+gGcd7Eswi+B78aCTMlhQdkLayU76hVNjsHwp
hXSBA3uIClJZVxA9THIhnL0bBOVms8V94x0iTGwdSepDhDfhvg6WHtdfi8bj+2vQhIFHYx9o
4i7/W3WzxTPnDZTp4eDxtx9IIHBpnkKtN0/49kBYU3KzDvAklybRdh3MTIVeqjN9y7arEN/9
Fs1qhkZyndvV5m6GiOKMZCQoqyD02Hh6mpyda88d7UADqQHBMDXzuU4Nmpm4Io0TLvbdi3cz
NdbFmZwJ7hUwUh3z2RVVZ2FbF0e692U+HiiberYyCO+Cl4pxu+XIl64xJcj7ahyLPaQlOUmL
3civRsQqxshjjkBpEVUEge+S0HL4GREVej1g4Vs7IciIO3K5DbMCU/0HIiWzEFojHRM8ZmcO
F0sIss5si8FYobIKXfvkmVQVNxOJD5iM7JTpFq1YPSRUVNg1nE0TEdvIPGLhvTuPs8rYsTOP
v3vSGQ9EP/Ys3x+xa8RxAYjNMgjQSYWj7+jJ/jsQNaUn9/BAUQqgcT2qELqm8ljse4pEcHLj
uYlQ+0Kl9vX4iWkC2MJCqiQeE3u3+aRYjYxZlfG14wenQHbGF4DY+V4UJIscmmS5cmgkBMJ7
rBwwAA/jzsHfpQ+CCSR0ISvLhNrB8FtKjdxYx6/WuS4fjyp0gP9WLHo33V5JsxuMRFw6FOpn
y7fLtZUGQoPlv55QTI2n9Takt8HSrU7qWKUIXahUShFoRc52oBMAO2cTSY6rovorIsx8eRO7
airq1mHhtdhhtumoh2dYGzuSMTdAtYe1uZDCHFL5QJCupzXBTWqwPBhrZcAk2XYZmE7A2EyP
QQOI+K8l6j8uH5efoGVPgvJq83Wyk/VgufJN089npO7Df6e6Jxhh+7MBGxWm2kDAkzSuf2A/
zjlv7rZtWdvGLh3qpMCeSSMpvKeqs4fZorqy6Nae9UofaEpi05+RPvyAY8zYxVnREK2op+YO
UWCRETedK7jNg5SMr78O6eHXPbrdoRb24keRmRE9pmKdt/s4tT0C2p3AjZEq8ZQ8kXMs2ZAK
boYFMS7RXpizoKnK5QdpudynBOHBD48ZVKIODq5LDPLxfHmZpvnpptZ4qd1GbMPN0uVPHVh+
q6yYSv3UZ/jxrx1VwHqfwkQkMPsHHDfZAFYT7BdhrI/hLu8GRcZyKfwbB5KJzKv2qJJkrTFs
Ba/xZuwaCWtqJqWx2Ne+jOQP0wSMKKlKdQYBt7OU+m1rlxTrgCCeET1bjyzaKPfAGGqrw+0W
jREwiNLSNHVYQ8GHNBX52+s3gMlK1IJVZs1pwJIuLNW7VbBcTiZQw5sJHGYr1flV3G70qH65
+fsyUA4rJHAobNnIAGKMu0N/F5i9qkMKSvNmunU02LtBBA1uuLhtGicVjYv2Y5RIN23riMfD
AzqyTpb4XpMdjNOkfQ7+yuB4KNvooSSeB07tklDqGhlPmpvmBruq6OupsIEAMWd2vQCRXCpq
p0+WSqWiESawcW2tQgebiFTupG5A3QaNyPl2KVqeJylr0Olx8N5lBlz0R7DaWEFU9mnjlqB1
leqsOtMuqJdej9hJsj/1+SwNAUn7y/dtM+2iZcal7J3Hqee1pCzq7nK0Up3AW9dmMoFz91Q4
doKfIEHVKOyXJXh9G5DsrLOA/y9jV9IkN46r/4pPL2YO/Ua7lIc5KCllJtvaLCorVb5kVLfd
bce4xg4v89r//gGkFpICVXNwlBMfuFMgSILArCFhaB6r5vhQRtLRTWEQJ1rJnWPvBq05s0uJ
u15Ye+iN8cDgX0c+YCorZr9UgsIdetvIq+oRPbE/2xTpWEUf7K3au7YbOxC0oauQ0e71HtEQ
dA65OI1Vp8YBI07W9f0l/LjLUySYoaZtSMCm2I/UqCMIi6l5lA3E+joubpx+fPr+8cun939B
g7Ae0m8Y4VlgSrY5ZLXgamBR6CWb4qAb80Mc+S7gL2MyT1BfkrGTJrSuRtZVhfFmeK8xevrJ
fS5qm9p5PgCwY9dnAZLy6txiyMMNEWq+nPtDYcsuCl+NW8/XO/YKcgb6B3wZvudqW2XO/XgS
MTY5oc+AF3wMHV2GvgJja2AU7S6iLAs2palXEe7SajwqpjfOiMNen/RzgpBgF7s4LmrHEQ6A
HecjfXqBaCMP9ajtt0SlZRjM26vZdsFhW32IN8Qk9Da0QzKaNLQ9sBoApK43Pg3ljIGB0kBc
BcqcWb113S+Fwc9v398/v/oNffBO/g//9gwz59PPV++ff3v/Dq+8/zFx/QIqJDpG/Ls5hxjK
LtOVG5Jhb8rPjfTAYKpJFqi9kKUZYPduRn6wM3C4J7PYjvkj7B65I6IW8JZ1+eCeZM4rHwRf
l3VXOUKkAdxuLif0Gcdy8pWwmhD14Hh+h7Cy1tiMa/kXrBn/BjUBeP6hhMHTZKXgmB6ThzJQ
S84X97cx5K24l8TFbfv9gxKDU2nabDKnCiFInfLM+DCG69H6VCpDEVhIkycXuyOVsxWn8fLK
gtL2BZaNhzitJdvXqTykjnqNA1x0QTDHD9dIi2thnVYuAbJxi1A/fcNRXd+vUw44pYcDqa7T
mjrCo3KEoCxN6freYWU65o1VyfWNkNGY+avTdHCk36Q3jmezcKDCPhVPHBwFI0Otixfp5BA2
aKhCKwdaRobOTxXBFqM4NPS9hnRjOOaWTzsNxBM58/0HUmHbloE09wK7IoKfuOPBrRzM0XFF
h+CItq1udPPla+Dbx+ZN3d3Pb9QsW2bL7Dtwmjb6YVUnx9/Q3pC2PpC34n8gOFRlEowOw0jM
sMqdja+p7e1FPxWEH4Yeqi4KBLd8lq7kTx/Rp5E+8TELVErJOnQd4Vxx6CCfz7//i1JLAbz7
cZbdme3rXDfbmUzV0CzEGV5Rs995evdOemUHYS0L/va/+uPgbX3m3oF8cK+3dhcQUNXWf+P/
tDP5KeTABlBCjcpQ7ibVC1aLWLMuCIWXrbNlRuZVdpsGNlh9//jAy9s21eYZ0pJd346u6/8l
47xp2qbKX5Phn2amssgxTNTrbeEgwGADOehntDN0LmvecMx6i8EGlwaq8sbF8dqft5C4Nj0X
5RyOx+5V3Knl2woyEaVVGBNdisBBu6xCyWecMk4E6SsVvThOzlRjP9A57qb/0DkR79+Ywk5N
Fft8QeYgHgUZQEiCs4NlowRlQ+Kt20Pl6fb56csX0DmlDN/oEKqyddFpeyRJK255ZzV7nfGz
cmXC3NwZSFr1CMsKDo6rJfUxS0Q62i0pm7d+kG6yexizmDY2krBTiM/NvJ+mOpoxv6kuUvIL
RMQvE4oXbDudeEr9LLPbwYcstTpW7Z8sSuj7dtIbb9B3hk0VfsKiTG/Dbh2XbYmkvv/rC8hR
YgIowzSrXmo6eRQ1GC2qPAkIt9RTZoQ6ktSh4yzIfM9WWq0qqjl8Kl6oes/ftk1uFXEsDnHq
17cHi/5r3ry9D7p7F0lWuw2rq6suPEThZgoqmeKaY0MnktjLkk2TgXzwA5v8ph4lr1nElR39
iDRHV3Ogzg6HyJjG215aQoRtes8sizgqMDpyyMZxI5tqENYt9VpiGnV+l4+6/cTqUhkTTkKm
wyUJ9gULA/vlhxaojGogKmG700Perxx8oglycjvbXbMwzDJ77ndctKLf5DX2OYyXwx3/toZm
QaD6XLVwKDLIkGyb/8v/fZx2cKt6uRR88+dYt2il2NJWiitTIYIoo45ZdBb/VusVmYHpJILI
VZw52Wii6nqTxKen/+gmB5Ch2mqiawyzCooucJe2JWOjvNgFZE5ABvZBLVwfSYPHp07izFwS
R/ZBSAOZs6ahb/WuBtEnhiYPbcWq88SkG1+dI808VyXSjD5INBpXeuRzA4PFT3WZZc4FTQmV
AUrzB/qyTKF9Kch3h0tw0656NJRfje50ItsVuWLUPvpJ4ckLhsG0B3SbubqJxthlVgLcHJ2x
+rCgeol2Yj6llv2ZGF2tIxm99zNYKJFlMARU7uJI9+dcYQufUPX4V6LbphzfBOloLg4WhEc8
O7WduS7Fm20PFvkBvSZvO9CiLz0+doF+jz7z23T12x43pMJG9HQtYYuSX8/lNiNYMPzUi8ix
mzBKvhossLzpyee6g5oEsyWkZM7MAsmzg25/OANVl6VBuu0Pe0+xZiSHdKeoagiT2N/miC2I
4pQoCwYy8uPRARyI0UIgiB1ZpWFMAnFGZSXqYxil1KjIgcRbreAQ7X01s00TlUc/xN7uwPTD
IYq1+l5uKoiK/vP+wAubNJ2fqt2gsidRrjEJu6fJIfuRD9fztb+api0WSNV1YSrS0NfsDTV6
5EdktojQ68vKUvseGejV5IipchFI6IIRol7BGBzm0qlBh4B8Zr5yDOnoe1SVBugjBxD5pMN9
Be33AHAkgTNx+lJdo5TqPhGmVE0FS5OA7JjXGfq82h3O175n81gcp7z244stQdewAV1VCsN9
7VKvo2UBNdO7siwI+jB2ZCsKkZBvwFfcd7S/KKsKBIbjFHhi4vFr2BVRrwGWHoCtvheftlWW
ZwDB6UwhcZjGYgvUzA/TLEQVg6rxSbAL6V52YRhAE78O+VASmZ+r2M9ETWUMUOA5LLkmDlBU
ciLPNAm21Au/JH5IjC6HPc4sE4mujslt7ozj9RLORiJbdbCyyfFXRq7CMwyTtveDgKgnhiHN
zyWVp1pBqNAJBseBynVgsDL6NBD4saO4KAj2WiE5IkIiSCBx1CNIiHrgou775MeCUOIl9HGb
weTvyWnJkWR00QdyEOWmPQ1chv0LU5LsrjuSIzw4SkgSh58kgyfem56SY68JB8ddzvLtd+H+
0jmwJCYXbDaO5Nypkz0FoKqpBQOoIUmlp2edprutAgbqxcMKZ+Qqio8kX8g32/0Ga1oiVPUL
owAM+xMBGPY79RAHITFKEoioj18CxPfbsSwNE7J7EIqCdKcezcDUAQoXQ0uszA0b4DskRhqB
lB5sgGBTuieLkOPgkcpj07E6pW9+l0adsvig9VBnmnAtfDQZVcCA0owwxhM7nToiDW9Ed+3v
vBMk2odxEBBDBkDmJcQg874TceSREpSLKslgeX9hdgWw+aNCkhqrS0pI0AlAW7trlQ/6czON
Jcx8oosm6U4OHGCBl8YvyFaQbxmdcRhFESFncA+bZEQ7urGERYRIMXQigm01qTgDFodJurf0
XFlx8CiVE4GAAt5WCamjistAdSKQqckC5PAvkswobtuYbdFW69JPw3QLlKA0Rl5I9QpAgW8f
RW95klvg0ad6S61qwaK03psDM8uBHB+FHsPDnswC7TZOpNl/bWybDTwg5bqEwr3vRgyDSCnl
C3YAsLKTy6ofZEXmE3M0L0SaBS4gJUrJoZszeh/Cmzzw9mYuMpjPHRZ6SMqngaWEcBouNYup
76rufI/Q4iWdnFcS2VvWgcEhBRHZVXLQvxPrrpOiv0kPcJIlpCnTzDH4Aa3DPgxZQDo7mxlu
WZimIbFhQyDzCypThA6+IyKKzhPsbdwkB7EaSzq5GCsE9t/SVuGl4iuQzgP9zE3nSRq68fDV
XYgdrkJKCVE2svY3wNAAbDop2J59DK8936c0bKnH5JrNy0RAL/kDx7flYouVddmfywYfh2KJ
7emEG/788V6LNdjVzIzRq/Ht+X3oQRfQT0pnjqI85ddquJ9bDOhUdvcbF7T1FZXilPNevYZz
N89IgM+KlZuBlyoz3ZBUVctw0d/J36wIla+zcQQf2ireTYNFHd5vwAsV3/CjM+nc9rKvRVdD
A9ln45noaiAq48nJwliVk2dZU5Dllt2LAaRqK07WUziTYZ2O65wHjjDyRqIiaxbIsJ3L8qOY
29nrPr9UkmRJol2X7Za5aTu7zHnQhrVkF2q32tq9F5HPxHXLB3YpWm06zBSrMxdy097yx1Z3
OrVA6v2TfGCD0SDgyywILvRLI03/MBNvA0ubqXmUbk/ff//w7vOfr7qv779/fH7/+cf3V+fP
0NJ/f9aHaUnc9eWUM05WonCTAaRYpQs1F1tjBdt9gb2ToUef99gMWTBFKjVb7HJiJdrTsA7b
M0nWStLs1PKDl4REUjTU8pIDgdyKHDItNLuyyRWiNm2WznvLeY/3xDNG31Uqy2iSaa7njapj
PibhSBcMbb3ul5qzN1cMqgRNofHiAf3NwRdnccx4xWt8EST74qdOTX3PN6nlkd1hvxZN/baU
IQ+cs00d5uHr0LslqICGlYaAvE586Fiw377y2rdU9VeRckwhd7po2Gjnote/lRNIeKv2PAk9
rxRHVx4l7gBUP6xpoDXuGg2gcAenXdwJXrr9/lC2YM7kArYIzu6QhzR+aE775kEOjda4xFMN
pq4Vu2tsJsd91GwiaM4WRML0mKrGaouytCozaahjG9nOKp7d8UDP0nTTtyt6mFD9+2KXt1bV
YPKVHezrDJlhrVIYZ5YupuEHLxzteQSSLvX8zJEGH/fmgT8lms3ffvnt6dv7d6tkxACuhrKA
fmjYjkSB7NQLi7llMI+7Vgh+tN5/C+rG6MjqnGRHYKPZyCeQf/z49+9owD77bdnoFfWpsNZX
pECG8cHT94ySurWDRLJtFLHSzKerSF9sqJe6r1TbwINicXmRks1Ac2ufOtVd0NAId72QyaPg
BTW90K9k+pwXcVzg4mC3snINpI5CFzA0e842VZGdwnx07b7pTkV2eCnQOdT4rNJswLdmgjP6
yAdTqo/tzTXvX5Pv7ibWqmPSgvunThBmyLBVK0ZneHd2GVBBdFVZcUtfGs9UlRCRyvCL6e/G
J4iYNORldVvor5gQWEx5jQKzrKvpEFYrGtvzfjF3sab1mKbJwd3fylSHOvWS6JCACLXrB8Lr
FPjHmjKXKt/Kh9ad+b2j4mJWeLYi0is802zfpDZsPjad7I+tV6ayVGWjaxGljYxJEzxKE9ud
hwTq2DwmWojuV2aS5fVjBuPhiJN2HOOpvo5uh50B09+jIG3g97wOwxi2aIKp+3cNXcy/zRRV
bdjfoGG378WO6FnSGNynr58UmFLXI7Ko1ZDc6AesQpelZEyUJZ2yNDfTTXSHTZ7Bol4Aasit
8oM0JEazqsPYHvqtUTtSNy839KVnsuG3PoqJvFPjmcN4/LmI+yAyibc6xlPPDU13Tqdo2UF+
ojYts2sI1NDfk9qEqf7eGj8nJS50FpL9sHUFTnwsoaPbash1A8aVAV2QXKWDn0Zc65LMHU9x
5CHOykXkBBLznOkP61coZ0OW6afrGlTE4SHTZ4aGNfCHNk3SmKSOQvT1yqLpQUQGiz60mwcs
3IF+HWUhPoWc8gY2eXFMl+sUbSsLF9Uh9GhrC4ML1HafOg1fmeCrTEJycFCopT5dR4nR8lVn
ylIyxLbJ4uoHvI6knVubPEmaUNWn1mQTjTPqRsjgyZLo4Mg8SxJy2OWSHgckNOllpmw08VS/
dTeh7EDnCloCPc8QCULqy100iw0itQciL0pj0NDT9a0dvI5ie8gyj3RIZfFkZNdK6EBCtl6x
IqI6x7662SVqhDfDfhJSqrrBlAQhPdxq7Q0c/bKzcNtM5jJoob4jLK3FFkT/RUnG07IVW5af
GWH2PGV3y0l/xR0+fXv01sDagg4HLtGHKRy4niYHhaVHX9Gkb+weg4oZJwMg4lwRpCcMfVG5
8JqVV3IjjmnRZR7XljPez94cdVJzfWgH01yR44uTos8dUR7wfmXoy7x+64jHwfv5NSdWwNm2
c9t31fVsNcBkueYN7XQC0GGApJy6D4JxmB0PGG1VjswIknLyWvNB+cswmupoAZQxHtvxXjzQ
N6Myooh8g2O58ZJHH+evT18+fPz9G+UnID9TB+gP5xz0P+2J8kSQ7srO3VX80090SNz4gC/m
W+Morugdzkn7+l50d2b6ilG3P5Bk9Zq7XtBo5PmW6NXf8h/vPn5+xT53Xz8D8O3z17+jb5E/
Pv754+sTaoBGDv9VApni9PXp+f2r33788Qd6KLFd+J6OsDXG8AzaGRHQmnbgp0edZJwx876W
bn1gnKh7a8ig0PdIWAj8O/Gq6kvdzfsEsLZ7hOzyDcDRGfux4mYS2KDReSFA5oUAndcJZBw/
NyBbYMo1Rh8c2+Gy0tfGA8LPE0BOCOCAYoaqJJisVrS6ZRl2W3kqexAgd91lMNAvJbserTbB
TEV3AzoNv1rpRsig1iCJJ1dowsh14JXsEXRJP18MGdPlw+wbaHOyiAPE+/5qnNcAsavplQr5
H49lH3jk0QrA6IzSzAsa6FMqGs7PSFd5sIPOuZWajEuhdZ9fzMdrWrYqvKSZ0eRZzHV+uXK4
Y0WtPMsI0bXq+YM5ykiwHZbO5N3yJAdZms7FU/LtC87gMvNi3ZIQRxA20VWFTtYb3TMBTjH5
sNjqOEW81xgBouFX6gGBxoVhAN5cTTE0YWeKaJw+a/nkD2VjVaTPi5KMfojTbnj0A7OZiqR9
TD9N0Ga+sw3Lci1esWKLjdZoIvHFoRKUYTHS8wdjD7+QpmmzIeeM6YYECHD7MwbKnY5yN4N+
bDXigdPaBs79sgXhy6mjGUBfP/atVXxYnOhjMiynbYu2pS0SER6yxBFkByVez4uycXx8ue6g
Rsqy0J7+NW9KigZKQF7fy4fccKRjgOwqhpbWILBP8ViTrhZaKJ/HIYp1a1Oga28R9VGQ5zb2
lzgH+XV8gkfoM0sUTjTpoeFc2PJnRneEoqhT31oLJuWF1Ejk4nN8+v1fnz7++eH7q/95BV/O
NhzZuvdgoCBXuRBE6MKJZfmiDMa1kSs+u8ghIPvUckXk6zW9n1eog71U5N9vFRlGd+UT+SXX
fQ5pmRddluk7TgtKSUjbpFMNUQ9ctq03DvS1FA9x4KVVR7fxWCS+R5ura3Xt2ciahpwFL4y1
po+jIV85X9SChvvt8yfQSD5++/Lp6eekmWz96qIez4iIEucc/qfMWATr26rC2lLmIde6fty6
hzbI8Le61o34Z+bReN/e0A2y9l2AJIBV+4SmD2zry3r1Przfyrm0qj0bWxT8jc/T0G0ufO/k
6Gg8LgVLY2HVdQjk6fhSt83+a04m2qvuhEj+vLdCzFfQ6wW4gaAVEXyhZGhDYWTYFMpHtEnq
WG0SLrei7ExSn99qrkfDQuKvuR5ka6ZMYYKMEIBCVRcNDU1izUcYyda8tpwqhWS6SRKdW2Ik
u/RuJ9iIF49NjtepsKy0vcNHfFPMW+c7rBAgp0hv9liLvmX3kzBb9FD2x1aUEjwJu34rypuB
+mxkJS13mjNpTm1nir0x9tfG6W5DlrzxyNlIt5V3cYbvyc5SlKBKNox0XiDHrbtGnn+3XMTj
KHdVeDdjRWDh45aWs0N6x0MuZtVJukQX9hwVnV1HKSoc9cvxDMaaakOXP9jTbI7e4Ccx/fxw
aatduqz+5OzEchWp53+c31tYzbE+pbzws0xbXVQbBLoE+2nRIm9L5HFkPL5AouAX/W5R0gbO
x00/Kqrc5TpeayPTNctI8/EZDOxKAS20abfAIrwdwjDITOJxyHQndQvpjvFZlbN6A2S553uJ
Rau5aUqEU3N8BEVlOxEV3e4VJqKAdAAzgclo1VHRMOTjvRDW3GPDeOKb+Zv3VU6/rgf0LB+u
mNlU+SOmMJulsolMokxt0VRqi1gbDt2USM7tmpbs0oYuwYJBpc6tWVFF4yS1+NXOfuYmny9q
6Ub7651idzmSTag1TGUjfPTlQBCtL6gU/iHMNn0B1IR8nQPgHDJMX5FwMmwotUkCvdpP/WDT
MUgOaI/uqmOGsspG1xSa4drO93Xbn/3A3l3oU6WtyEdACI1JlESGBwScNHkpYIsU2iM005VS
4BKwfMR1xMiwqQPdC78SmuPFWr963g2wITX5+roMN10JxAP5gG3G9CtHKbnbhrMHfiytlWja
AZvMsHf/f8qepLtxnMf7/Aofuw89bUteD3OQJdlWoi2i7Dh18Usnriq/rsQZx/mma379ACQl
ERSYmu+SFwPcxAULiWXu2QRBAxVhtVGgZRaisFrZe15v4A/ZyooRr6IGR3/I62sSK1tuLp00
jRWL21r/YVUpMZU4kNaDSL7E/+UNx3OLTzqM9eSmT6r4PnEEJ1dT6YgUDbg9+4gsmSv6ITeh
k5Oor6FsEuIyBj+7EFx1FefresN2CwWtZy2N2G5I7CBor1NsVQjEt+MTZrDB4fRudLF8MEbz
bntUQVhtOdomcbYWLIGCT3WDqC2uFB3lMk5vk5zCVMBiG5bALxtYbNdBRWFZEMJueLCHBSJt
lNzGbDJA2ZR8d7JrhQ+wuVhJHrGwFOtCxhXuhtDBDisj1jMWjzOBMDLaOI3DIrNgX2Cc9kjW
cbZMKu5KQWJXldUINCFTolrQh5gC7oO0Lkq7M4wVLWmIaw8e1g9Vz+vKQCfog2G3mtT8MUPc
TbB0RMlHbH2f5Bv2LUV9ai4SODGFtY3S0Io9JIFxZAPyYlfYYwUtOMHj4OhS3mjKTM725kvx
ss0GPqzSQFhLIV+K172ySVgVeEFhgQtM6BRb2x9TlibMKud1QgGgDpqv1/I8BDl6bKVFRQiR
AYa96vj6Mq4DDNhstQgHFG+8OSC+If7k4Mw9u4mG1RI8Bl/oKSKFoVe4aUX/7CdZ4CJiIkjU
5JAqn2Usl3iMRWWn7DTxdRxYJxJAcYo6myl/SMQ2L9OtBawyaw3XmNoYFCMzhHEDUqSGDhCz
jN4UD9iyY4x1sitoH0AKRGwfkHoDhyuzYZjmSmvlLcaEMkPaIus6lIK/oJfUKEkcFiCI3Sd5
Zg34S1wVdO4aSI/6fnmIgJfZ5025GB82ZpYTA67u7fUvWiJIS7XRmgC+DH/t8kYRGaAzk8A0
VUnEijt2NcOnNREbZ4vSFh4Trzrb5ZtopSyzy0a2EMtDsQkT+rLdTS/i9a2TueYIhgOMUid/
kLDANsUEJ3ZiF6MA/Ju7fBEQL/NSbwJx2ISR1bujhrrAkLOGhWQ+zk4iauHl95/vpydY0fTx
J5/AJy9K2eA+jJOd8wNUQHrXJ9bBZlfYg21X45NxWJ0E0dqRY69+KB2ZjLBihVfVyuaFN8dh
fQ0ykGUwcbtJNhtY/ybPyDIgrqenvxlfpabuNhfBKsbAvdvM9FwSIL8dljrZXwtsIb0eNpiD
jc3OY/dYJ6sMPf9fepgbyYzzgz/fM9hqYppkduAYM/7cUk8UvFehrAx/qacpDnZQ8gLJZg24
ZYWcMgeBVGbGxuSJ9JFJTgM+PPUmWNYPZL5C2mYg/Ol4wotesoB8BOO09A5LnAg6MPdm3WCn
Y2PyWuDQdBmR0NaMlbav0gjwdwCygNOQWvWFPhtcIOoWO2G+qZxMPP7pucPzvK3FTz8ZclrO
+WdgvS/iHUajNxO8dFMx2feGq+FON66mDLEAl1DgkyNvLIZm1CaJ6NwNKHwZefNhf8K0F5gY
e6wxgVpf2+xZQuswQNNZG5qGk8Vobw8X99rkn4YIdLt/8PV8Gfz14/T692+j3yUlrdbLgX6W
/cAQ+xzPHvzWyTy/W+dnKdOw2ztUZ1aztyjArdyWFI8OFK5ZQQ/W+XLfa1P5Felbefbg15fT
t2/9k48seE0eJkyw/bBGcAXQm01R91a3wUeJ4PPWk1JZzamupMgmBol1GQe1YyCMfRvBhwx1
a3BBCMJuUnMvLqQcfQ6n36mjKcjnEDnfp7crZp56H1zVpHf7Kj9ev55+YIK4J2mTOfgN1+b6
ePl2vNqbql0DtKRNyO0c/bwgs/xrCboMXOo6KZbHdRRzXi1WY3gVlTtGEmwj83YcTYrQcTkB
6dCwGg1GowfgWAEagHGP8Qn8zZNlkHMbIwYadABKg8+dIqy2hvYoUYy0iXCmpaoO6asJAjAu
2nQ+mmtM2wbiJAPmbALQT7mxXO/B2nfPzjK4w+14iQjz7vVscvFVUyUDJN10PlnA9XPQI40b
J8DSNFI6RXgm1oDrCmrdAGBmgEINLYJaFW4/4A7IDGoR0Hy2zrj7766EMdZ7HFBoeZ5rqDFo
XUzJ4t2k3cM6Zrw0onEyOQynIYrtQX1BO7lhm5mumRjxkIeHen+gQ84CnWWvtwYH2L9Rc94B
vNyuBuc3tK+miR6x2VVi23M0YrauyH6URGGMmBWOgdcRdCEgkKVVQKsJ1sja7wjJggbbPRDr
Mg04Mrgljr2YgDxZUUAZVTu8VE6qO4qIQPjtEN1nY9Ygl+aB6aziKiwclwFbnR5I32E7ywA5
4+51ZPVqSy0zEJitpo4nKcQmO7HJYs4UBU9f/3F/tyz26y3ZOip7OzE6Uvncszjf9nWi09Pl
/H7+eh1sfr4dL3/sBt8+jqC4MIr9BrS4aseu/q9a6RpZV/GDSxEVdbBOcu6hFIOENKncOO+d
IMRYLmxiSYVKqjiNhUGyELyJVibFAs4nvQqgHQMstiDfBaW6om53dbQMTCKsgrUvk4KMygA7
BmeWEFlmtdh2S1v8pClAHQLzGLVQEqRKd1vM56ZNp4RWS+I0vtreJDWQNTUUznxTF5AR6khm
vuhQgmYc1+hvatxbla0BcLexynaB+Hu50v7mTrJYu4cG8kggnxCYiRTbagVbwHdMJgrft2UQ
Ka5mOtGbCDQnYf2EHMUlD4ZuUUxJWMcApny3ahSprym0Tu/ocZdEMad60VIgW9/GGIowNc3L
dOTDTRSYTiJNPJw8LYxcnvKUtIeMho8jxwm34jIrVnaDCK832zxCE62UiPr7JAAhzLkDMtHD
NesfB3e69256ihKoTOXeNCriXSE2yZJwLg06LOtDtboFiZKbVV1mQ2asgd5nZCfJjsKsdGT4
ViJRXg+HQ++wc2jQqpR8sNspsd1qYLesuScr3XppLJWOxpfZbpdo/V3V5LjqhwlmDrtF2WfO
BWuq3zmiTcgn3cM6Y9981TArQSNwKS0fnxsAksehI9ZW+4mJY9Y1VcCXWv+w3Nau7LO6pW2e
1HZbzQSke0dye/lihrG96yCvE2VZbDUstQ5RejBWnh5ug/vYfSLKUEmO8rbN63F8dfsu3o7H
54E4/jg+XQf18en76/nH+dvPwQmwl6+PxOqdTjM+O6G0CNMsQXLKzGeIf7eD9rxmSuHqNmXj
YnAok5JobjJwRoUZ6fmFDDdVkcXtCvBsJQN+F+RFt1DMOobpLYgb6JKKqQ+71xyMAAg4NPwo
A1PNUBcjiGtk9vD88nJ+BU0AczlL34P/OV/+NgWrrg56hC7GbMQoo5BIJr4ZrN9CTZyoMYmh
buDCKIxnQ86UxCwk0HvuEJbmYju+ztis96JMcjZttqokzh8XLngYdBnvYIvNvYkRRED+PFAr
Rii5TKO2ZDc2rn1j/YMkXTrSUSbw2VunC3B1fDlfj2+X81N/2MqDHM2XzaEwNVRLby/v35hG
StCcybUAAnoJzQnSkPubTknjRn//Ol2uHxhO1RG3TTV4C9qWuV86KEgmmSNIiFHGqegZheJ6
o59+zE316ShbAQWt+FHmaM2Lzh+vz/eYqbG70lCIIhz8Jn6+X48vgwL26vfT2++Dd7x4/Xp6
Mt5llC/0C5ApAItzSB7cGs9nBq3qvSuC56jWxyqPo8v58fnp/OKqx+JVDrZ9+efqcjy+Pz3+
OA7uzpfkztXIr4qqq8T/zPauBno4ibyDxYGhOcfO4g1mW9gB2WTl/enH6fUfq81WFJRhWXfh
1tzmXI32Sfz/tfQG75Tq5aqK77grwT3KF812i/+5PgHl6wWw7a4DZXEZmfjGcvLplZFJHT8r
sRIBMAZeYtJFHEKixrYSpT9ekFgfGt8ErHG3gOkyfDOBoIaXdT4h0QM1vKrni5kf9OAim0zM
kP4a3DxUWw+6RcWRkMRUcjFxl3JqMvhECzuES66ofL/sxY1C/O0qWclSFKzvnkH40X0RrPp3
Jdg6dFhNrwI0lKot4plFxH3PXVCDm+KOoTV6gCJJT08gfl3OL0c7JXMAxHk09di3vgZnuFME
0T71zSxAGmCHeGzAfJQxiZ15ViszK4hbA7SaXmbBaM694QGCZElbZiFsRn3JwEKp6zbBCKrt
R4HnOHJR4LNpFCNQQiJz6iSAJmM0jHtUrz4fhkSueN2UCfYJL8be7kW0cGDCm9vRkM0QnYW+
ZybBy7JgRrKDaoAVZVUDadg9AE5pKigAza0IiB1mMZmM7AB9CmoDiD18tg/HwyEbmG8fTj1z
7CIMfJpNp76d+2bgIQQsg8nQlDqs46KO0Osj8PvB9Tx4Pn07XUEaAZoPhP5K+FKAUSTXGYZE
SGt64R3NRh73zA8Ibzo1t/3MW4ysqt6C85TATKczWnU67P0+JEqVDaogTc2jQNDW0ZvNplNr
DLPp/MCbHCCSPZKIMFNlyd8++T2fz8jvBQ1hhZAxv6kRteCuBnRUYBIdUydLtjJWhiFG5Bo5
Io2qWLjAikhLm2Q+9kmouM1+xpIAlRCHjgPTX41NBxkJINYNCFgYk4L8eOhZgBFJ+aQgcwrw
SWxfUCenZqgSzONH4ykDQKWtMgALUiXOD19G/VnMg62dcK27LUuw9HA+4ia4QfpGrw1sLIY0
D5FCjLyRzx0FjR3OBUkS1FSai+GkD56OxJSm8pUIaGLExzRU6NmCdXHsQrNa8wOIOg3HEzah
s5Zk902dhgR9Rm5MgrS6nF+vg/j1mWoZPaRWad5+gLzbkwHmPk3mZig5bQVV4/vxRdr/iePr
O0lJEdRpAHLMprNPNTh2PGXJQxiKubnBkuBOc4NON0B7+ipBYXFdsqZfohQm+9p9mS/25F7C
HrJyhDk9a8AAuKu+vKA+KJozK0GNpvqy0J0o1pmusu2bolomugxZXucZI8qmXjsmKgeIsq2n
hsU9H9CSyqK4U4V6fZBqtTUuHkf4hYXTi6geqvX2hZ38qDYlzzcnJFMhRl01o07gb5qCEyB8
hi5EjAkThN9EhJ1MFh6a8IjYahDhfIuThV/RJoZ0tFNvXNE5ATo+IqE5kbBPfY9Wm0/t37bo
idDF1BFQGJCzCRHH4fec/p5awgRAeDlkYvNqf2jx4vnckYEvEuOx4zE7m3o+G9cSWNJkZLK1
sBzPzJTrCFh4lGxHAfAGj9oDKvBkYrJVBZuRgKQaNtWBpht7hc82qLonhwP8/PHy0kS/MC7C
0eJABtqId+s4tw5EkuH7hcS7MUpRE1QxJAVahba7V7cHpAOmHf/74/j69HMgfr5evx/fT/+L
NoRRJP4s07S51VJXoevj6/HyeD1f/oxO79fL6a8PHdivXWrMD0vI6Gf1VOaK74/vxz9SKHZ8
HqTn89vgN+j398HXdlzvxrjMvlYgUJHDDgAd8Vf3/u+23UX4+XROCIX69vNyfn86vx1hkzbM
zdKThw4lUGFH/udY1kFT6dhTi7btKzFmhYxlth6RcDzyt63ISphFR1b7QHggNbJ0xGBo64eq
AEXUOIbl1h+SnBAKYCvmmgmo+k4lNanXvmcH6LWOYn8lFM8+Pv64fjdEjwZ6uQ6qx+txkJ1f
T1cqlazisco6SgAG7ca7rOGIhuXVMD5oFNufgTSHqAb48XJ6Pl1/GtuqGUzm+TSferSpRzyF
3aB0y8YRJ65DGFzGDAy3qQXJval+0/2iYYR7beotSdmZzIZDmuARIB6/jL0P1q+NQFPRwPnl
+Pj+cTm+HEE0/YAJJKQAT8N4SIiBBE37oDk5BsmIniEFcbBNjSRffJvtzWTzSb7DjT6VG53c
MZoI6wQYKP7mS5+RVGTTSOwtrtDCWcGrwTXHun1jdU6r2QDO2YFE6TShHY9RxtsyGlZ/u2pL
F3MlbmDvESYbpMDth8Zdb1BGYuGTJUXIwlquzWg24cknonj1IfO90dx84wQAdQABiO/wgwDU
dMrmi16XXlDC5g6Gw5Wti+gU2d5iOPoss6wqYoZzlJCRKd6Yt3+p7Yap4KWKZakRNyLAYBMd
oCorUGvZZO00WFxaVxMznka6A/I2ps6pQPTGYz4oqkYtiNJfBCNX6P+irGHBuakt4Qu8ISJN
2jIamYPF3yTRfH3r+yTTdn3Y7hLhTRgQPTod2GKGdSj88YgTgyVmxmfvhiWcTLk7VImZE2EZ
QbMZJ/cCZjzxjQnYislo7hHX512Yp47FUCjf+PhdnKXToRmJb5dORyZ5/AIrAvNORCp6yJUJ
6OO31+NVXXsyx/92vpgRHhDcDhcLB7/St+lZsM6dwRnNMs4sVsHa5/PtGucEW4jrIovR2dcn
M5lloT/x2OCymrDK7qXA0qO5zeg/Q8PAbXRrMZeFk7mZj8dCWJvVQhLu1CCrzGeTvSs436DG
WYyDXewupdvbj+M/1jMugWue/vTj9OraMOYtSR6mSc4ukFFKvXQdqqLuxXMw+B3TpRxM4240
+GPwfn18fQZd7vVoX5/ouHbNlY1jV0hrpmpb1o5XNvT8wcBoPFpmdOUuhfgREiXk7XwFBn7q
XupaTjvxKFWKBBxx9kEH9Oqxec8gASafVACaJSzEVOj8wzPiRmxGcsQoUkYLD/kE2WU6HA1Z
5dv6bHZKYMquRCdLs3IxGv5Cl6C1laJ6Ob6jqMSQuGU5nA4zIw/rMis9Kmjib1vfkjByXqNS
EJ5FmDqxP9+Upn4Cev+IqgQK4koopZD0Fa5MfdVGAxCTKU01ryCuNhWStgkwf9YjgNanmFBW
hlUY0nI9GdNbpk3pDafcuL6UAUh3xn2ZBtCeGqBF7Xpr3gm6r6fXb8xWEP5CP/OYDJMU1rvp
/M/pBdUdONEYJxVO9hN7hyBFwInjBi1NIrRGxoQfO0fKx+XIc6VfWUWz2XjISRuiWpnqrtgv
SPhmRJPsVrt04qdDJqByO5Gffq62ins//0Cv11++lnpiYd18eGLkuh74RbOKCRxf3vCGih5v
U8hNMpUevAiLbenwkjJOax2zydizdL8YTkfmRYKEkKesrBwO6fMSQjjDmhp4hikTy9+eeQkT
7P3RfDIl7IT51qZ8XhNnQviJ9vFMz4gJMsKREZQ4UglLnB0WzcDF5cpuSln11TF3phFfJvm6
LHLDvwGhdVGk9heUccWFAZLF0WPVdsPcZbEznEd5T6x8lThT3Q2evp/e+hbPTepY7VXWyCJ2
+ZbclRi/V8Vda5hEEVSYrjBMPCq/ybipSVmENY3ZDqQyrtFEqMbg0FRUUYRn8zAQH3+9S5u2
bqhNwH9AG72H2eEWsw5uxdKTqHYE8ONQ7oODN8+zw0YkJMI6QWJdfi6hVIgJu5yxQ+hYjZoY
FCsM2BNmWmvBDyufKgDSsn02K4+Xr+fLiyRFL+pWjjiuNcP4pFirVAeWG03ri9JbgeD1+XI+
PZN74jyqCke0m6a4SfSX+S5KMkc+HzZOVA672rCMlz+VyNkG+bsfXC+PT5JT9Z33RM2Ztyuj
wHpj+4HUG9sttoU7suC2+HVthAJroZnYcn3URD1v4UxmkeaSsf+RTaurcm141GoH5BKUkNIy
NsKCh2xdtWUEzcpp48NdySD1Cz6Ralok5hnfFx6DXVZJZKbL0H2sqjj+EvewupOykgnNkHGR
J3bZYhWve1qTiY9WHNXe5glmANolwO0UxTLuePlQsmmSLc04VwhQDthhXaV00atQOeKY7cIH
IIaX26kVrXrZOv0ADidph+mdHsLcxod7DA+n/P4Nb9gA5SmQpUARK4NKmJaXAEqKzMxNHO9r
70BjjGvQYR/UNaclAt4/rMgFmgZh6vRkDyNK2ZVoSok43FZ8FAgoMu63PXa2bZVpWibfN7Z9
CG+WkSGq4C+7BDSVLeUcmyOp4gRmE3Arzu7gRiLMibz55YzcfD4biO4FNJB18JYAAx1xA9mr
gbyYv++2RW0Qhr05MrNxRFRcjAFEFDnmKLMDQRgY9AMy4wEi6j6ocrsHd9Kk9Up41vR2V6vh
J8hl3V+YToBK0n7VZqm9Zro6iuHpKf60hjof5qc1iM/XvCn1ybrLIrD5QJCiO0rVlfFPkvwG
SIuT6AkHC7UWvj0lKD/aZEDBVHCvQ1Gyc5GksXRESkwhNgNRAOMTPdh4c3xxHlYP5WdfsItd
8yPs3HiRDUgUQIb3Mc51YJdrDkbbrwRgQAMMMtT59vHCH2Zg0DVwn/N++wpvURgFrIHjmTvv
bpXVhx133aQwBtmSDYR1ajUJELSNKs3wPcG2LlZiTIiCgtkbf4vhch2nD1YjDR4stJKuHp++
k3yGokc6NUieKnYfafwGqFqxroLMpMUK1SPRClws8RyAOCmML5Yo3HvGF3ewPk01cO0IWBat
P1V9dvRHVWR/YgJN5NI9Jg1SxWI6HdpMoUgTR4TAL1CDpTjbaNW00oyD71tdHhb/V9mRLTeO
4973K1J52q3qmY1zdbJV/UBLtM21ruiInbyo3Ik77ZrOUTlqp/frlwBJiQfo6X2YSRuAKJIC
QYDE0fxzxtp/Fi3drxkKNvdMTD5DC7vrgdp62uRggsobFRQ+Oz35TOFFCcF60pb7crh7e764
OLv8bXJoMYVF2rUz6lKxaM2uagM8VkBYvbLnJzIHymB6237cPx98o+ZmLMdiLXIJWoL2TF3q
AVLqkM5CRCDMC+QLFk5ZeEQlC5GlNS/8JyCbKWTRhEVi289LXhdOiRht8RgzLa/cHiPgL3Yh
RROoeOMxUDeXInBK8oS0ujD0mEPg9ihlTALQuZhDVLeaAjsoGP6MSpKxS8OvMbxHNCqdjxxw
y3NryGUNORcDhYulMeWMzQJijtsPTb7wVCj5WyWzdZbNlMdVjmkcFT41aHZKS7F0Uw3RHH9k
a4Eas5J7pK5mFVExgbDp8pyRQWRDQ0ad8eGEujDgLH3beyHsQXDiDe7LJe7y8RHfOonBFAzv
qkZgNxXBbmVg8rNfsyLhqXopJT8NZXZbhm167x/BTZv6YAbdIpPsmqfiS2rsb9cuOKyQWOr2
RG4/Nhuo30oRc2piaUTeOnkPm6uONQtanK+DdZCLQn5fkrrMPem7qDzAVbE+9daKBJ2HVOeU
KVPrF1CCVe7CdkoB9Ru2iwxsW8Ne1lmeIpBf2EaOUtygTwc0rdINdIuEpHTpLk5HVnc2DYUG
FvqFVqwW9g/XbJfEq+yBG7J9I7R7TtHTPRw6cHi//fZj8749DBpOwpJ6LoEf1q/Bgco17nbX
NI90Hpup30oiulBPYeB1GW4HGrbHOB1I4mt8ILkV1MGuNCtWZb2kN7XCV3XABDr2fjs5eBUk
ciaCSCfXBUCaVaTovSKPRLnVZdkCRfRJMBwyPmfJjTTFqG9liECX4RkQeQOh0k9KNRyi96QZ
WFqSGKWg9xNG6kxUUDGtK+oq8X/3c69qoILGWSDh1YJmxkS4uxP8VuYOdTWJWKiWs4IsOLCL
mvlzzBKgWnG27KsVqFZ0anCk6iootxLHxw7zEBnaQwOUvvUY8eCoX/V+QReP8Bf6p805mqBM
WUyZYnE967Kiv1SR2Ysss2SaZaRYaGPl9NLKcZjWxn0+oe42XZLPlmOCg7k4O3J7ZGEcxxcP
R8UBeyTxHl+cU44qHskk1q/zPf1y/QRjRJQHokdyFn37eRRzGZnjy5PzGAZnn+7mJRm+45Kc
XsY68/nUb1ha+MBhPWnr2s9OjqM8IVETv13WJIJ2IrTfSgt3myI2WoM/cftkwKc+MxhEjEMN
/pxuL+Bag6DDoZ0xxplvIImx3kDgMd6yFBd97bIPwjoXBpl0pU5rp3o04IRnrUj8aVKYouVd
TWUtGUjqUpoKdqmPAXNTiywTSYiZM07Da27XIDJgITvI7EK/A6LoRBuCcZhkl9quXopm4SLg
eMfx4MtoZa8rBPA5efbmXIWpiNHt3ccr+OOMuYB1O7Ah2QcoN814Kjq8DME1VKlt2j6+/Uj9
oxFSVytaeKIWxTxi8usmqfspddbNU9Mxuw99upAmMleFvCJJYbWdDTl+G/SPaGsRyfBH3SsE
yMiWifIFs5jCWsiipcUg89uC1Skv5JA6zCBc3aA+kzDnvCsgsscetjBjYS3w8bhQmtxwpN+U
XR05kMd7sQTbg4qJC55VpKOrOXUc55VZSyVr8i+HEPN3//yfp08/N4+bTz+eN/cvu6dPb5tv
W9nO7v4TpPB7AOb79PXl26Hix+X29Wn74+D75vV+i95yI1/+bayMcrB72kHYyu6/GzfyMEnw
/AyO5vtrBp7D9sqDXzDAZNkXZeHlcB9QjEzKiQSQYgnrMzop9D0KuIN3CUYfaLr3Bh0f/BB8
7S/X8RhDLg44mVHn6q8/X96fD+6eX7cHz68H37c/XuzAU0UshzJntsOCAz4O4ZylJDAknWbL
RFQL+97Ix4QPLZgt8ixgSFrbV2UjjCQcdNNHv+vRnrBY75dVFVJLYNg2iMqQVAp8Nifa1XCn
6qhGRYpruA9CkjwUOZh5PWh+PpscX0DRd7+bRWen6rWAYdfxD/H98SAuCeBuGnoNbEQetjDP
OikJUcxAfm7DwtXH1x+7u9/+2P48uENufnjdvHz/GTBx3TBi1lKq3KHG8SQJesaTdEEA67QZ
0vCzj/fv4At+t3nf3h/wJ+yVXIMH/9m9fz9gb2/PdztEpZv3TdDNJMmD9ucI87ueLOQ2yo6P
qjK78WOk/LU3F83k+IIYv0HJfzSF6JuGkya0/iz8SlwTo18wKdKuzfinGML9+Hxv31OaPk9D
Dkhm06DNpK2pEZP3mUM3psT4snpF7l4aXc6m+9CV7G/8jWtiBUkdY1WzcJ0XC/OZwmU0oHD6
9+HZ9fo4FCFQma7tcmL0cCngJNBXjnubt++x7+NUrDCiNWfhV1urT+m/8Tp3S5KYEIvt23v4
sjo5OSb4AcHKOS9kDEBSrAFw+b0yKb32fdH12j/bCdppJ0epmFHdUhj9llA+LZyCp4aFxs8e
cJf5rFBtgLTRjfBOT4N28/QshAm5FCFbumv9GAGYp3Khx98CeDdadkQcn53vm1VJcXJMxs5q
wbFgk1DIS6Dk+IafUCj5Ro0MJ06izybHCh1/KQQcq4aCTxUHn03CBSjBJyEwJ2DgYzIt58Qc
tvN6crlHtK6qswnF18hUPTJcX4jQJ15pcbuX724q43EGGA+FVATWt4SOx5vhvdT2UXRTsUco
Yw/q5JQYGYDjD06zcgWZuAPWMIjg1NnHq0VF9BmqSkk7nu0RAppibCOCV5umlMqGMhBXAeVx
nBQsY5MBKux009JR0DaB1ZV9o2vac/L15/uGAp8ydaugGB2KLC0xIk96nvLYXM7wLzHi5YLd
MjpRpVluUA5jn9gxGlL4ATUiziRQE3ifIlRXkPc0EAAKjvt4bMCGxppq6vUD0THxQQPyfC+6
5XuYvV2VM0EYVBoeW2cGHeEWF92frNhNlMZhOpPC/gUi6VyT3TAU3tMGHXL8DTTs4jSU5tkt
wdtwBR1QaqcEFWu2ebp/fjwoPh6/bl9NfiKqe1DRrk8qyvBM6ylmN+xojFazgtWFuOiFlEWU
0LdOI0Xw3n8LKHrHIfbHPS6ybMqeQcWWv3j/QNhoi/iXiOtItXGfDs4O4iPDHVIUs5IYwGJF
PMeamzzncKqHR4JQLHicGQtZddNM0zTd1CVbnx1d9gmHUzLwLeGB+3+1TJoL8Fq9BiyWuyEo
Pkt+aBo4CRywagFAtpVvaEK+YVHPt93DkwrBu/u+vftj9/Qwcp663e5bqESujj1rx0U4xDdf
Dg89LF+3EHoyjih4PqCQZvot/3J6dHk+UHL5j5TVN3/ZmWmGpS2b9hco8AOj0+nh4XjC9StT
ZJqcigI6hT7Esy9D+pmvr5vXnwevzx/vuyfbGIKwOqdLUyE1OyiEZs2KCYCTSl+RwHlqXeae
C7RNkvEigi04uGQK+6bUoGaiSOX/ajkJU+HFttSpIIs/4kEyy8LGoLicF5FiUB4Y3QvBgyDJ
q3WyUPf+NZ95FHCAOgOtBUvMVJlwD6ySPkmkfHFAE0fxSPrQ1pKdabveferk2Ps5FA909QbE
yCXLpzd0igGHhFaRkIDVK7UCvCflR6Afcvf5xNlhks/WcbeYhlZvcmHJlbV7ulmzIi1ze8QD
yvOHsqAQu+XDwfEOpKS7d94qrc6DOo5dDpRq2fbzGsftenW51GT/bPctD0zRr28B7P/WB4Mu
DKM/q5BWMPuzaSCrcwrWLrp8GiAaKbXDdqfJvwOYV21zGFA/vxXWyrMQ2a1TsHNErG8j9NZg
zMImrommiWVUrVldsxu1gO09sCkTIQXJNe+RYETBmpfSwg4NVSBw0uwdKQJwp+hogYWcVK1R
KQ7ndhgo4rDuKqvwasn3dsaSr2la963UE6f2Zc0oi8o64UjYFcMtoLWvrETZZtZHBMoEO6hO
qbbfNh8/3iHW/3338PH88XbwqK5hNq/bzQHkdPyXpe7Jh2H/gytLuFYG/2vLZ3hAN3AeM71p
aRvJprIa+hlrSNABPC4RGYwEJCwT8yIHw+XCuh4GhCn+RzzYzDPFRtbEXdnbS1Y6B6/we5BW
5EW76/ycZLdwDWo3IeorLA5I+cNXwvEgLkWKAalyi3W4VHKuWQPXaVOGK2POW/AvLmepzd6z
Eqy3weXYhl78OTn3QHB7qAqTWVwG0eZlRrBnBRHUzj3agOpUYGk/y7pmoQJ6XCK8cFyxzCpC
haCUV6X9crkwnDUId9fF3N0uhzwjnvrjXqsaHROhL6+7p/c/VCqOx+3bQ+gEgKrVstee5OMl
twKDPxp9O6UcWKWCMc+kgpUNd3CfoxRXneDtl9OBIbT+HLRwankLgEul7krKvRpR40K4KRgU
344Hg0enYTBadz+2v73vHrUK+oakdwr+Gk6a8urTpksAk3yddgl33M0tbCMVLtorwSJKV6ye
0WcD83QK4aWiIi9VeIHXhHkHh1IQHWmxfs1yrmJNLyaXxzarVXLrgCwBtqttLY03bEui/GG6
bsELDukvGlWrkFz9EN2Qg5wTEATrqOiqwUbFaUI4S86gyNe4EjwMDgCCaW+8JWWCukVZhDOv
thjlJgqVfqqOZJRfZoWBi9lcYHBTfTV2xwIObgLqu3w5+nNCUak0H/6kKD/gcDAQ8xOcJWvP
g3T79ePhwTEz0WFFGoGQKp+aG8DjRhF3dylXReRoANFVKaB+buRUYHyL5KlIaXEkqUv5+Vjv
7z8elQpmjFQfV8yUsSnBhLi56JmVIj2TzBBOhsHsax65rQPptYfqmkqjMWwcmkbUbRd+9whY
1bjyPF5wUNjskjW2q5l2lEGo2TwjWKgWxea2L5jblN/G6JiFiLKDOGAqmEHhcc3z8Dk1j2ph
RB9GIltBA+5QOHIFB8sgmPplUl4HEyGbk2BIEwTO9NZEaeqx60CmhSx6y9XA+pQkRkoQiXWX
45FwFnzRZiFQbmg1Vnb5AHKYf7woqbPYPD1Yuw4Y810lH20l/9uWQVPO2igS9lCo7ZPbZBUr
bG6I04BQ7fiXychudarxKvYeFAf5jfLK2RBGKtOhyEoBZL+AKr8ta5bELK6upMCXYj8tlfP9
kAaEnixbMEH3IbKOjsp38HqYRy4S9cyuHcGNHHPqB8oooKsMIAwDG3w6w/TpsDt7cgNeuuS8
+gtpWnOeV2HKIZiRkfkP/v72snsCt463TwePH+/bP7fyH9v3u99///0fLmOpdueodPpqdFWX
12SGAnwQhkm6D6JIh0Omlq/ti0vN+7rYayDlaPLVSmGkcC9XFbNNUP2mVeNECiko9tCzglSE
YBVOvUZEB4PlluWWnfHY0zB9eJqu9XZ6l8JOyTXRQkRLdLcbR0zYZKM18H98cDMaJeWk6Jll
jthH3kSkPTrUt+QUQiF5aexLHlZnW3u4c6n26OhEyv+uIWeWfSyrJ1G4Fbs1twM42pobKadg
mMJCSKV0Ty8TqadDiCnLwnQNddKRqhSuhFqXFfWBfaSb9qe2H4RHIGddwAMW3nvWwkgdtkd9
e5BTxxPnSf0hLRC/suOYTNpEZ6jeqrvSmnONOnM4zyrviVQuITkveWqgP0TP6xoT/eqMLE7c
aU6T0UEKvIVC27/+wJ5UMGY9MqkbJzdtaRngeIc1LohQKBaY3leiHE9uyQizrlAWy37svGbV
gqYxBu3M+4QEsl+JdgEHKY3/HoXOMZeWJIB7B48EUjIg+wClVOGdMjOqEbhh9I9nEt2aanpE
qhcmrkzHUwy/5CqWtEF6xxKUf1rgJJUQMpgaveXBGRPZ46A9DaAi0dXs0AaNXM0ilSbPIhGT
k8tTPGcDnZukruUUQLQ7LE94F9wSU6dfPHcXMBoyRY/2jpxMyCUtnFBMBhV+Gh+gJ1nXBHok
keq8JEBqmRzAF6t+Kk39JU6nE+epn4Mit9TxokLreuOZUOVkXaT65cZ8atT1DGqcwUrOU7iE
ixpsyraZp85BI/zeZ151U7QdpBbXwqmDUr3HAJqpZz3YcOuwNTzvk/2Fw0Ch41LtU2p3Uw3l
BWd1dmMOs7rGvpO4OO/1doiaeFfRT0XaSqfzyANYKXmd2q678K6qxXjUROUOGGZlREV32tXa
2q/LTtpAJtLeVWGzKR6IeoIjz0UZEabwbrgSSUHoBhdmUEULTv/6o/WFE4ZoIXikNK6h6OLn
hwMNhIzEdRY8iwQjyXWlqtieUGj1KErRPfgiFxElz5kePMfyD66M1OogNgUU1Oh9QFesBKQq
7cvaMeIHuDofRDkQSb7oHTL/D/BOUNgwwAEA

--huq684BweRXVnRxX--
