Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBRH2VGAAMGQEFZNSEEQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D0172FFD47
	for <lists+clang-built-linux@lfdr.de>; Fri, 22 Jan 2021 08:22:46 +0100 (CET)
Received: by mail-pf1-x43f.google.com with SMTP id n123sf2872846pfn.10
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 23:22:46 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611300164; cv=pass;
        d=google.com; s=arc-20160816;
        b=nH12Uqmm8K+iRmQJrvrN3Mk+FQoRTxRWm1v12ObEkUhzzs8FVTiyPTtPbpw3ffNOYm
         KNXKCIwdELS5xrDImNTyMTr2pCGhJPkBPeQj3u58s6Joiv3CzC6UiSiftg/XpeN+tFix
         /y3ptBNz4v35wqk2jdbQz2WeEHxGfc/0BGGujQMsIRfEUNJm/mLh/xSvHs4XldFVFIIx
         JldfIH5GnhQwp/t4eG5wmA9VDt9bmAc09dqctgVXJX27XQMmldnGO2sBP5r/mOnbFVPF
         SFHkg1wHH2fIahqYPDFReh8uMpMf+nIWqWaYjW0lzfYpO1T0oPdDUFdXkVBkiHJtrNpb
         e1iA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=5OI8I6y6MF/A0kyvqGXiwxL9vxXXVpvXCD5fjZeOFSg=;
        b=pAATe8/YIkHaz7EHNY3aWKzFwQOp749pv4wWHvfG/8LiCQ1rDepzWcDJPkLhrFJAen
         zV5aQb9XiOuLQSc/9o/3BZIwGyIWrL86FB9VWtOthCVL/lHH98SvOwZbUDaQ7JoTwAA0
         6E1NlL02R0z26JbFcRhO0UrMGgJoE4MasoINR9Hx2/Coz2TtCCw3X2zhE+f1/IuPoELC
         l1Zs9R0X4CaIoGx4IzrEJOk2swpqgaxT1bEBhlCmA0iDKUt5DBOwDb/vV8Ac3f7QKYd/
         +/xNnzYk4KeVP2Zp75+ve6h4xkQc9LiU7vWNisXolTb339pLTZUp/dIsItxTDaxcC3Bp
         K1dA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5OI8I6y6MF/A0kyvqGXiwxL9vxXXVpvXCD5fjZeOFSg=;
        b=IqapBLQpQMFJAmxCsCc+Pwai5KB8eHf9Pu+VMGx29vL/Lni4gHPHvwmSJQukTS1iWd
         gh76g5Cz2hfEnAI3Yy57Ic8AXGmt8EP+hScUB8ftjFmDAWu/nwTEI9LEdZw+tlaAhFTn
         wGRu49uQ9Ff5+0tGxuW2T9DTeAktx5jTJ9LH4v++kpqKlzJdprHR/xIxeisM4GqttQEF
         qjFsDKwJK6FRM6B3V6rdQLOBRRwuqGlywsY2f5hCb3JzhcmOZBpeobwnaBjMy/o0ZkJa
         wFRGSdzzaS/Ed4cM9728aUCHmjoDLNK9depMcYLzeJDQJJThuG2EKS/bBT2gQfch58Os
         2u2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5OI8I6y6MF/A0kyvqGXiwxL9vxXXVpvXCD5fjZeOFSg=;
        b=jHHyUYZ2dvN+GxdL7EYwegw5e8Ziy5aymxJPTpbxA6MHxUBbZkoT4tqIbyg/Z0tPvA
         KEbgertl26gap+3/xgrko6rUNGoVFbbx3AjmR+i7uby9Xfx369tiI5xx7pW9o+I9cSta
         LrpzjHH0kcBrYuGBKx/NqN9PfohaUUl5tyozq/xJAi41KMO8Jl/G/FcZht/EbHV59Eyt
         ggyEXW3XhCTvaLLaPGuNIk+toRhh9MXNH+wUjxrV8pIEBWKt/ejICRj5h1q2QIh1DoHS
         cDcfZIOctezWd453obZZZwULsbRO3J+m5rRaPfRJ50bMZsa+lF7s/ormIy1b/7UpmIhl
         CuIw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530OtlUbOzihWWLx8HzC70wA4YOySP/XtAwrkA0wsNld1AREPLgP
	7cWEas9bd9SsElvGbyThi6o=
X-Google-Smtp-Source: ABdhPJw6ISaK1YsN5kJz1VBDRyiIGT+f9hget47QhSqCEaxs/KvMPhsHcEFT+eJqaPbPJ/+j25LZ4Q==
X-Received: by 2002:a17:90a:ab8e:: with SMTP id n14mr3632380pjq.96.1611300164411;
        Thu, 21 Jan 2021 23:22:44 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:9286:: with SMTP id j6ls1839656pfa.7.gmail; Thu, 21 Jan
 2021 23:22:43 -0800 (PST)
X-Received: by 2002:a65:648e:: with SMTP id e14mr3429342pgv.453.1611300163714;
        Thu, 21 Jan 2021 23:22:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611300163; cv=none;
        d=google.com; s=arc-20160816;
        b=eAPr1u9RI3sOOqYY8q3uNGPlPq/nswcul8+Lj/MwvtT/4tC4IGuGBDfUGal30kOpwx
         zFQW1hSEHgjMCn12IUaJlyiZRJBzsd2OuDHuQhbomhadlQ/CoPBR1PvZ9Q0nWORqm0jy
         CKTsN00D2LiL+AzzAZIllYRyJWXyLsfvBRfCyyxC33dsPhY1a38oqV0JqfIXlSTcxdz8
         EYTyo5FFYq7RUAJmogiaD4IqoC28iXYK1Dk7cyDMTo9r1UbnuMNJOxvK0Cw7NFbf1bS5
         XmA6OGGk+3F+z7OCc7ZUqj7v7GKkW3oOeDmiVuwhCHhXiUnhgbkFtBhVL2hcSazP9EJF
         pBwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=9KVuzN00EvUoNioEkpC4nnlWU/K3/TyMB4/ubsCQjiY=;
        b=Bp2BQVMydfA2uTVC5QNjdtCHywHttssSKoXbvUIywZElHFAD00VYU8cV7gR3gTc7R2
         pN1BIj9HpPtdx60GJYYmMfCmi+BwzuHram/wopyePNFCQ6WY8EJFgYSEmbTxKvRdqcU8
         4xAphI+XHzrnC1PyyUFARJYnsIaJPJ1sfkpCuJ66WSfcSlu0yL+aRxvypMXlJNLjdTrA
         3GfzzM0rGPRi0TmgnSBnkaW1TRCxV4eFqlCCc+i3bgd5bFYd9/DFXgZiLCaAa5eT00E6
         Kl+1ODbLq6Wo1BoFsjy+ls5G9exAJV9NfYyy0qvbOcX0dU884/zDmZYVkmKKXkLLSBOk
         wNtg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga11.intel.com (mga11.intel.com. [192.55.52.93])
        by gmr-mx.google.com with ESMTPS id c3si402509pll.0.2021.01.21.23.22.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Jan 2021 23:22:43 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) client-ip=192.55.52.93;
IronPort-SDR: XcUG7VxqC3se/5WuvQ6L4GCEAh6pl0EuKkqKwXGJXs1j6ocFy2C5b/iPwJ2BmsgT8RLhCQahL6
 HY2pHV7Jyd9Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9871"; a="175890896"
X-IronPort-AV: E=Sophos;i="5.79,366,1602572400"; 
   d="gz'50?scan'50,208,50";a="175890896"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Jan 2021 23:22:42 -0800
IronPort-SDR: 56qowPoZEJhWJUhUvGrFxvpy20s8N/uPOazAhGT6PCd6uA2Iw3pzY8QaLvULJg7BHVGlvZO8rG
 ZRqYEL+411xA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,366,1602572400"; 
   d="gz'50?scan'50,208,50";a="427876306"
Received: from lkp-server01.sh.intel.com (HELO 260eafd5ecd0) ([10.239.97.150])
  by orsmga001.jf.intel.com with ESMTP; 21 Jan 2021 23:22:39 -0800
Received: from kbuild by 260eafd5ecd0 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1l2qmE-00074e-Fp; Fri, 22 Jan 2021 07:22:38 +0000
Date: Fri, 22 Jan 2021 15:22:34 +0800
From: kernel test robot <lkp@intel.com>
To: Sia Jee Heng <jee.heng.sia@intel.com>, vkoul@kernel.org,
	Eugeniy.Paltsev@synopsys.com, robh+dt@kernel.org
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	andriy.shevchenko@linux.intel.com, jee.heng.sia@intel.com,
	dmaengine@vger.kernel.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v10 12/16] dmaengine: dw-axi-dmac: Add Intel KeemBay
 AxiDMA support
Message-ID: <202101221550.1lHFzIqY-lkp@intel.com>
References: <20210121055641.6307-13-jee.heng.sia@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="HlL+5n6rz5pIUxbD"
Content-Disposition: inline
In-Reply-To: <20210121055641.6307-13-jee.heng.sia@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted
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

Hi Sia,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on 9791581c049c10929e97098374dd1716a81fefcc]

url:    https://github.com/0day-ci/linux/commits/Sia-Jee-Heng/dmaengine-dw-axi-dmac-support-Intel-KeemBay-AxiDMA/20210121-143156
base:    9791581c049c10929e97098374dd1716a81fefcc
config: s390-randconfig-r013-20210121 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 22b68440e1647e16b5ee24b924986207173c02d1)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install s390 cross compiling tool for clang build
        # apt-get install binutils-s390x-linux-gnu
        # https://github.com/0day-ci/linux/commit/62b1af38b9707f0b5ff771080825f5d2deb9aa39
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Sia-Jee-Heng/dmaengine-dw-axi-dmac-support-Intel-KeemBay-AxiDMA/20210121-143156
        git checkout 62b1af38b9707f0b5ff771080825f5d2deb9aa39
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=s390 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   s390x-linux-gnu-ld: kernel/dma/coherent.o: in function `dma_declare_coherent_memory':
   coherent.c:(.text+0x76): undefined reference to `memunmap'
   s390x-linux-gnu-ld: kernel/dma/coherent.o: in function `dma_init_coherent_memory':
   coherent.c:(.text+0xd0): undefined reference to `memremap'
   s390x-linux-gnu-ld: coherent.c:(.text+0x19e): undefined reference to `memunmap'
   s390x-linux-gnu-ld: drivers/phy/ingenic/phy-ingenic-usb.o: in function `ingenic_usb_phy_probe':
   phy-ingenic-usb.c:(.text+0x58): undefined reference to `devm_platform_ioremap_resource'
   s390x-linux-gnu-ld: drivers/clk/clk-fixed-mmio.o: in function `fixed_mmio_clk_setup':
   clk-fixed-mmio.c:(.text+0x24): undefined reference to `of_iomap'
   s390x-linux-gnu-ld: clk-fixed-mmio.c:(.text+0x36): undefined reference to `iounmap'
   s390x-linux-gnu-ld: drivers/dma/altera-msgdma.o: in function `request_and_map':
   altera-msgdma.c:(.text+0x566): undefined reference to `devm_ioremap'
   s390x-linux-gnu-ld: drivers/dma/dw-axi-dmac/dw-axi-dmac-platform.o: in function `dw_probe':
   dw-axi-dmac-platform.c:(.text+0xc4): undefined reference to `devm_ioremap_resource'
>> s390x-linux-gnu-ld: dw-axi-dmac-platform.c:(.text+0xfc): undefined reference to `devm_platform_ioremap_resource'
   s390x-linux-gnu-ld: drivers/dma/dw/platform.o: in function `dw_probe':
   platform.c:(.text+0x92): undefined reference to `devm_platform_ioremap_resource'
   s390x-linux-gnu-ld: drivers/dma/fsl-edma.o: in function `fsl_edma_probe':
   fsl-edma.c:(.text+0xce): undefined reference to `devm_ioremap_resource'
   s390x-linux-gnu-ld: fsl-edma.c:(.text+0x1aa): undefined reference to `devm_ioremap_resource'
   s390x-linux-gnu-ld: drivers/dma/idma64.o: in function `idma64_platform_probe':
   idma64.c:(.text+0x72): undefined reference to `devm_ioremap_resource'
   s390x-linux-gnu-ld: drivers/soc/litex/litex_soc_ctrl.o: in function `litex_soc_ctrl_probe':
   litex_soc_ctrl.c:(.text+0xa8): undefined reference to `devm_platform_ioremap_resource'
   s390x-linux-gnu-ld: drivers/pcmcia/cistpl.o: in function `release_cis_mem':
   cistpl.c:(.text+0x82): undefined reference to `iounmap'
   s390x-linux-gnu-ld: drivers/pcmcia/cistpl.o: in function `set_cis_map':
   cistpl.c:(.text+0x3e8): undefined reference to `ioremap'
   s390x-linux-gnu-ld: cistpl.c:(.text+0x41e): undefined reference to `iounmap'
   s390x-linux-gnu-ld: cistpl.c:(.text+0x44a): undefined reference to `iounmap'
   s390x-linux-gnu-ld: cistpl.c:(.text+0x45c): undefined reference to `ioremap'
   s390x-linux-gnu-ld: drivers/input/keyboard/omap4-keypad.o: in function `omap4_keypad_probe':
   omap4-keypad.c:(.text+0x156): undefined reference to `ioremap'
   s390x-linux-gnu-ld: omap4-keypad.c:(.text+0x196): undefined reference to `iounmap'
   s390x-linux-gnu-ld: drivers/input/keyboard/omap4-keypad.o: in function `omap4_keypad_remove':
   omap4-keypad.c:(.text+0x204): undefined reference to `iounmap'

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202101221550.1lHFzIqY-lkp%40intel.com.

--HlL+5n6rz5pIUxbD
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--HlL+5n6rz5pIUxbD--
