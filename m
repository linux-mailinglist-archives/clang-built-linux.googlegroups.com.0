Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBV56XCAQMGQEDLNL32A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93a.google.com (mail-ua1-x93a.google.com [IPv6:2607:f8b0:4864:20::93a])
	by mail.lfdr.de (Postfix) with ESMTPS id 23E0F31E734
	for <lists+clang-built-linux@lfdr.de>; Thu, 18 Feb 2021 09:03:37 +0100 (CET)
Received: by mail-ua1-x93a.google.com with SMTP id d8sf548899uad.13
        for <lists+clang-built-linux@lfdr.de>; Thu, 18 Feb 2021 00:03:37 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1613635416; cv=pass;
        d=google.com; s=arc-20160816;
        b=Yvp3vUQdD5HgPjpK5n0K5PP9dio+1U88tVzLLir/ecyracsA79R4T1rrQY/48+N1CC
         IwYdVAzztfnRqQbcw7KrT9Jn3gXa8QC0WbfxqYSBxzZxEqFv3j6d48JqnuASq/sGZulD
         ee7VoelBHiSvP3kpew71X/By16PI1jH7zvvmAgOi04iRJYzF/0iaavboS1ZNdo7cWp5o
         uBgmf0Gk1He1jgfg6AOvuH9SEI9WMp5vWriTuGPfGd3QWbfGKFkQUV6iC4TkIhEzlTsl
         w1TfpoZ6Tst17lpivublefGHWZEliZ+AyVn3rq6xXLXm5G1QBUkRVvclPXQV2BrwsYca
         tCxQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=v6s8n697AxwyPODCxrCyzldl/48RH5+o/HplLY0dOBc=;
        b=YRMFoWlV7VItd+vcN3rfxc4x/nbynTIrtYEz5MYbaqATlSM92IAnlOJ9h4zII6R0oE
         JA+bvvA8rggIkp8wqXzLXrNy3754oKl6sdbFPzdDFHwQ4pg3oxz5Rugc0twdWxjBX8Al
         tgs2NdOoU9SlpZBL+ngMDiim40r+f5AeZ9s80rbHc+PD/GJeD4yJuf6fTapFHC6G4Q4H
         9r+nycGRKRLimicG3ftjpj9ik1XB10tLDscxKVKYmrkMvhkZRyK/xaVd2FRHc5mlWZ0n
         5rUTDiDuUy39cGaMUtq7pvIElQvg2beeKPRHc8jq7s4qmTCoz4s3TLJeakkxMauWhUb4
         0kOg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=v6s8n697AxwyPODCxrCyzldl/48RH5+o/HplLY0dOBc=;
        b=Vxv48G+2w3pWaIG+o0kzLrK2MCX+U9rRdvJoZ4Tpfj6Gy8ZWGZkz0dMSMTYu4BfGHt
         TacNrsPz4kXGrjQvqzzbk3Li1KRxlB0h/w0D46nQ2yC8Z0w8lcD6VFErFvzpkbk3DIz2
         n/AboLRQfeGnRkrXO6eBBgoi5r/1IZtIOLblYcOB3f9aDgwVtab/aHznGDfwMI2+t6tz
         Lgdgbe860UOk9pK1Z4tgHbynpF1Wmtm1cetz5Wl8ckaPABtwPyOd7zYT3Mb0SrPGYDvO
         y03voetoroZEiKqKcYDVg+ODzqifM6+1tecxiFUB1ul09wnMF1O+Yq+Mw2nDlGBDhIjB
         1QgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=v6s8n697AxwyPODCxrCyzldl/48RH5+o/HplLY0dOBc=;
        b=lcClKHLqvSRB0i5l/iCQtUD9dUtzyWPcjmuOtneMTM3LGQuR11t3L3KPof8hN2gRZ7
         96sG20qs6Fw3KMclumQFGskOWyXK7SNBcwe/OwrH/06ed5niIfPyifpyHV2u1uQe5WZS
         Be+vvojVSRfKstgjcWtN38xYHSzB1r1uZsZovbplMq2bYbVJLcvM+pDBbXrPBZMkzeSC
         d8uu8OvJv/nsfs33SHiKB9XkKXUyhgqqqkXj9e/vYdBzDxwTT525tNB2RE/OlNjcKvmJ
         rXUyKgcWjh/NxniA2c1JjfC3lS2QbHi6FeJr0z2+qPx6W3fRqCN28nbNhsHhIjLxllQa
         uP+Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531NGvs0IAztLKfv2Q1cjnXKYS5DP5Nbl4ZgPWs3Zp+pgaquaruk
	HPSsB9Zk2ZrCp9nNO6/+bJ0=
X-Google-Smtp-Source: ABdhPJwV5Yf6G5X53JuOUsRIYb1vFy7GIQPx78fh9dT0AoJ4fkOMB1/PKv3ZYgOTRYM++4fk8PMrsA==
X-Received: by 2002:ab0:4501:: with SMTP id r1mr2188464uar.21.1613635415929;
        Thu, 18 Feb 2021 00:03:35 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:5c96:: with SMTP id q144ls234245vkb.7.gmail; Thu, 18 Feb
 2021 00:03:35 -0800 (PST)
X-Received: by 2002:a1f:5382:: with SMTP id h124mr2146520vkb.23.1613635415255;
        Thu, 18 Feb 2021 00:03:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1613635415; cv=none;
        d=google.com; s=arc-20160816;
        b=Zf0RFJxVI9Ehj9+TOWHObfHCpNAqxF8FWGCs1UJDFMiW+PXK0D46wfSyy2+/xGN2vC
         Pa7SktNk7zBs6zjcGjoCfqgq0Z8rxNcgS8t7T7zQHNNG17HJRokyPl+v3QSqTiSDCFWG
         vhAfmEUbDLgkvIAR29Y4I8KNjXeKrD+/l/XlNaxB36tLcLuUvaWT7kzRc7+Oy5ClCfo3
         fSo0hU46Cd/6wksrX6vC/lZFdDZNfmzbPT6d2m9G9Q40cXlUFDqemOxsJSNGdWaHDN47
         SQ9oDsmnIbYJ6FbujzoCKxxYQxW1zRBLZPOsN6cMQfGg+Xac+YwZaQMOVb0DAvqsjcDJ
         dUKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=uvvTT7tt/H4LyCSK/TNpGLWUtr6p68/hsnRJ9ypK3pU=;
        b=xcPFhOMgA4a86FcpCJnljP9dSAo8gqGwkYsh/7Ac4Zr54bST2kQr491Sj8m3PNreO8
         fc+y/ZlSaL0ZFBDqjBW+87kdlcsNJJNDDMVPhV2dfjMsQfJpTh5iwDtk7WBeBAIY0cdz
         gwd9Kfp294PILyKc/HsrH3LQJ4K8bVASRv6/P7rqi1utQNVcwmroYa4NdgUeUtrnLBed
         9urX+ZNJrO9tz2Sx0p5IQjd2LjY/oVWiCs0bEUJtxbyS8mqOgDEQDotfddCPIWOp9v/P
         +sn3VTvfpjsNzVzGAopkRb8gbEiK6EzdGMLCoJHbOdFNesKrCyx5dZuRK5cA+KR1thSR
         HuEg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga06.intel.com (mga06.intel.com. [134.134.136.31])
        by gmr-mx.google.com with ESMTPS id q23si466951ual.1.2021.02.18.00.03.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Feb 2021 00:03:34 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) client-ip=134.134.136.31;
IronPort-SDR: CQ+ZF+tgndeOmvH4T9hlfCSOkpCGxSDatmhm/iU07hbsVEpezO4sY7YCMz9f1hAY/5wLD3he0t
 Mc4xNjNfXRgw==
X-IronPort-AV: E=McAfee;i="6000,8403,9898"; a="244889225"
X-IronPort-AV: E=Sophos;i="5.81,186,1610438400"; 
   d="gz'50?scan'50,208,50";a="244889225"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Feb 2021 00:03:32 -0800
IronPort-SDR: 1ZwkTHKpxaNEpz27SohrBkk8jiY/rtXAJbA+iYKAzwYgEdr8E4o29Pa4CoRdmb7ssVRG2ZecZ2
 HRbD2xUReWYA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,186,1610438400"; 
   d="gz'50?scan'50,208,50";a="427067607"
Received: from lkp-server02.sh.intel.com (HELO cd560a204411) ([10.239.97.151])
  by FMSMGA003.fm.intel.com with ESMTP; 18 Feb 2021 00:03:31 -0800
Received: from kbuild by cd560a204411 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lCeHa-0009XK-AS; Thu, 18 Feb 2021 08:03:30 +0000
Date: Thu, 18 Feb 2021 16:03:06 +0800
From: kernel test robot <lkp@intel.com>
To: Pratyush Yadav <p.yadav@ti.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [ti:ti-linux-5.4.y 9094/13391]
 drivers/mtd/spi-nor/spi-nor.c:5721:18: error: implicit declaration of
 function 'of_read_number'
Message-ID: <202102181604.Ub2MHiFK-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="HlL+5n6rz5pIUxbD"
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


--HlL+5n6rz5pIUxbD
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Pratyush,

FYI, the error/warning still remains.

tree:   git://git.ti.com/ti-linux-kernel/ti-linux-kernel.git ti-linux-5.4.y
head:   26692c45bd67ced28dc36459ce28adea53187341
commit: 6f9db649f76819bbe6b9ee1a7758717d0f2e01ee [9094/13391] HACK: mtd: spi-nor: Look for PHY pattern partition
config: x86_64-randconfig-a005-20210215 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project c9439ca36342fb6013187d0a69aef92736951476)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202102181604.Ub2MHiFK-lkp%40intel.com.

--HlL+5n6rz5pIUxbD
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--HlL+5n6rz5pIUxbD--
