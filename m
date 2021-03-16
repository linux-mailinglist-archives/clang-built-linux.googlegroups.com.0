Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBBGPYOBAMGQEXJRVG6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53f.google.com (mail-pg1-x53f.google.com [IPv6:2607:f8b0:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CE2833DA6E
	for <lists+clang-built-linux@lfdr.de>; Tue, 16 Mar 2021 18:14:46 +0100 (CET)
Received: by mail-pg1-x53f.google.com with SMTP id h14sf7337812pgb.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 16 Mar 2021 10:14:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1615914885; cv=pass;
        d=google.com; s=arc-20160816;
        b=R0sme0TydsnOhr/UcmBKwqLoQ6qLXnLHQEBfiaBu7XiUGuIbxBc5rMFkEZYQ/1Kxcn
         cISeBozqYlE49tiqDRweMx7/nb3zu/FCzNeIfyDSOiJuldDPRgot1PqRq2aPDpJkA47L
         Zp8topJNTdQ+vY8SYYx5P1CG+m/gSzpQGEo1Cl4I4PwJj1p/C4O1sVz4fm8Jgs7mbOqX
         rPSDX//LZcLkF6spSuA2F9ulSTc3jcWIA22tLNf0q57QXOnMhbiHDWzLlXYjX4WUEsjz
         GL09YIP5Y0J+tRxMH0VcRUrIhLvKgk/yGad4a952bwNrkropuG9jdLypNIaTsLpyyitC
         5Lcg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=72HvENFiCsQZgEzMK0zBWdx2F1NK/fTho/zbAoHTsXI=;
        b=nXdZxLcUCBcTpHGaSrMudEEcwCjavfy6IMZXLU13K1n/ZMYmbkc46hf6mKOdcfTUQS
         GQYbDChjdnEtY7vtZmiAdncDfkvy/hrrBQ5gWlF6MvAMHVU96zTxD8DobKI6zze8RIsC
         Y/KTorFZIeswEPfxLaki/szJLpCGP8SlcIgFapj9hZzEj6cGY9PCAnd6BRibm2/UoKch
         bVlyr/PYh6ICfRqTMdWhum4dzoe3tqY2vwoTa92ZrEcd2ICgB6ZYNH/1mzXXA9mE0ocC
         L4j1iS5iyM9r97i8+X3XPterljnca9mf5E1i8cWW/taXl0zu8JAmFne7CRXz+XpaULYM
         BmQA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=72HvENFiCsQZgEzMK0zBWdx2F1NK/fTho/zbAoHTsXI=;
        b=qMyOPn8TpIc6CwXUAwmZywcParNccIGoofVWjtuzA0eRQAX5YEwqijHWiUPvM14KA0
         yxSVFm9x2k+dFe42yv5AW+TurKIsEizp2OYzwfxyjAuh/6uYtYzLDGYJkBBSH3v6joLg
         Ug6xBmkQJGFDsSBs55uDkmFJEA8hMlmo8ZqMyXQIJRm9ogvU6IFTeKfhh+5i7gVik8iA
         PEkgZii0wjxb33fLG7oy1hIFYZLJjbBuQEqryS+lMdDxOIWHpVJyaZ1j53X6Fk4gbr28
         FRbG+jCB8a1pTZAXrErmiRbWn1rfXQIbGzZRSDKfPvPXApI3ODPu8thBY/Sk7pyBMsMh
         AD5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=72HvENFiCsQZgEzMK0zBWdx2F1NK/fTho/zbAoHTsXI=;
        b=GU/Mr6V2uzYOdVdcV5+jA6G9UmsLcMl0UWnOUc679tTGuK4yywXw6vJdqsugi+MSp5
         E9/FtML7LxfSomq33efJwhi+ur0ffDv8ieUPoyL4hBtovgwNDWZMJ/6rE0WqKo/P8nr1
         6z3HNWcO5LCQmippfZmbaK3JGCsmZ6ApA5P0qJxYQE1VWB9Kyjf2GJuvEhoPHCi0HBIo
         1GmimrE99KHCO30FbvxXQoSGNW75gmrmH0kCQkQbn1PYLGP+TvSzEBjyx4fda8GokzNN
         J14WA9rOQAN3qN5NRVfH3dNQ5j5VQZMOg/xo1884JCnv+MdnZII7saqeWw8qSjeWmakg
         fHvg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530UdtPQqj+GrG2nOrZMjg07koQ+e0eoYT/ASPVvA2xf2SSw6Vub
	nGnOZvludAYx/mhNEZ2ANUo=
X-Google-Smtp-Source: ABdhPJwf2jaGPcKuIidPgagQ4acY0M1Y8C60XPNlzNtTpktvUpVxl5wcKcaLM93nMvwzKQgr8pUETQ==
X-Received: by 2002:a17:902:c40a:b029:e4:99fc:c09f with SMTP id k10-20020a170902c40ab02900e499fcc09fmr528656plk.46.1615914885050;
        Tue, 16 Mar 2021 10:14:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:1b43:: with SMTP id b3ls7715072pgm.11.gmail; Tue, 16 Mar
 2021 10:14:44 -0700 (PDT)
X-Received: by 2002:a63:f14b:: with SMTP id o11mr612023pgk.440.1615914884405;
        Tue, 16 Mar 2021 10:14:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1615914884; cv=none;
        d=google.com; s=arc-20160816;
        b=Ayp7nbfSSKJZh5pi0msh0/dxzSIkVCkT3POtEe6MixFrO6vqxLdXBH92+VwvML/hWb
         7JG35lslkZs162NWOMacYfTCbkoySD2ug4gfaeo/E2+Oc2szC4kpW8QrHfiYRjfubiit
         opZJgN6u4whJ1JEbvbXPPVyZVAklQCFTGknENRSZWTSUBymjmK1sCbVNt+SdzN0vJgzz
         Sj0gj8mqiNsT3ytRH3F3pL1pZ5X4caudSpYWRJOEFWA/nddMq1bHn5mFzM2XOB1LucwA
         L0E0ULB1dgO/1ZXr3ickWFlUePUwqolxcEATZebSRH5jZmJgBo2UTcgBq3aJBtiZKFCf
         cv+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=IlyXazJ1NZF1nwYP5SoNVLepWAlxddTjRYvc5RvfWUU=;
        b=omqS5bsuCpe5cwZdo/qIGceeVa4r4SdzLr1uYL2qhx2RLoFevMNTzST1jaRnRwj/FG
         6x3qlCvw1QzEBm311i4nYmZOFTCJusWwhc2vTbzddkrVHTmHphdr/53QBkenJXtzwJs7
         NcO06dmL1NqAYVw2BtNWXxSBCHELsl4wGWyyhIJZqOeq4Hpet53f2d8c+Vgo34zd7SR7
         R44w/vXRF+hSOsTFj1MLBaR1HkjLDEZfAONlHRi7dHfpf6RANgwAjdJyVunlHi9K+Spv
         TyM3AU0+gmGUdgBhgSbPUgOAobiQLEO6b8a7+b0IURqBhswlLiJLGgIuTE3W1bVZYlUC
         2U6g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga06.intel.com (mga06.intel.com. [134.134.136.31])
        by gmr-mx.google.com with ESMTPS id md20si30050pjb.1.2021.03.16.10.14.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Mar 2021 10:14:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) client-ip=134.134.136.31;
IronPort-SDR: oqDppisBw8bjqzhZ33ZfsbqZ9F3HVLhcvWmYL7OcnoS5g/oE1ssjJKcZKwrP13dE3dUpDG3cQr
 mKEicEpb1nqg==
X-IronPort-AV: E=McAfee;i="6000,8403,9925"; a="250664603"
X-IronPort-AV: E=Sophos;i="5.81,254,1610438400"; 
   d="gz'50?scan'50,208,50";a="250664603"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Mar 2021 10:14:43 -0700
IronPort-SDR: +1omIvddc3xd5dSU2XxERY6FGeichL1rHjpXoxMEl0pUdbno/Urnpyq8Uz3SklEMCDAuuvp5Xa
 gw7P+/cJ4CcA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,254,1610438400"; 
   d="gz'50?scan'50,208,50";a="388533793"
Received: from lkp-server02.sh.intel.com (HELO 1c294c63cb86) ([10.239.97.151])
  by orsmga002.jf.intel.com with ESMTP; 16 Mar 2021 10:14:41 -0700
Received: from kbuild by 1c294c63cb86 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lMDHE-0000EP-Fu; Tue, 16 Mar 2021 17:14:40 +0000
Date: Wed, 17 Mar 2021 01:13:57 +0800
From: kernel test robot <lkp@intel.com>
To: Pratyush Yadav <p.yadav@ti.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [ti:ti-linux-5.4.y 9094/13420]
 drivers/mtd/spi-nor/spi-nor.c:5721:18: error: implicit declaration of
 function 'of_read_number'
Message-ID: <202103170154.joagH2ll-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="GvXjxJ+pjyke8COw"
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


--GvXjxJ+pjyke8COw
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Pratyush,

FYI, the error/warning still remains.

tree:   git://git.ti.com/ti-linux-kernel/ti-linux-kernel.git ti-linux-5.4.y
head:   b26f403d01870360392f2fe778304d3a8cba0bef
commit: 6f9db649f76819bbe6b9ee1a7758717d0f2e01ee [9094/13420] HACK: mtd: spi-nor: Look for PHY pattern partition
config: arm-randconfig-r026-20210316 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 50c7504a93fdb90c26870db8c8ea7add895c7725)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install arm cross compiling tool for clang build
        # apt-get install binutils-arm-linux-gnueabi
        git remote add ti git://git.ti.com/ti-linux-kernel/ti-linux-kernel.git
        git fetch --no-tags ti ti-linux-5.4.y
        git checkout 6f9db649f76819bbe6b9ee1a7758717d0f2e01ee
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm 

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202103170154.joagH2ll-lkp%40intel.com.

--GvXjxJ+pjyke8COw
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--GvXjxJ+pjyke8COw--
