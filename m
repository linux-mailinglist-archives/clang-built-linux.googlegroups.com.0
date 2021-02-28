Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBOHS5OAQMGQEFGCTUKQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x738.google.com (mail-qk1-x738.google.com [IPv6:2607:f8b0:4864:20::738])
	by mail.lfdr.de (Postfix) with ESMTPS id C39A0327006
	for <lists+clang-built-linux@lfdr.de>; Sun, 28 Feb 2021 03:00:25 +0100 (CET)
Received: by mail-qk1-x738.google.com with SMTP id k185sf10821320qkb.17
        for <lists+clang-built-linux@lfdr.de>; Sat, 27 Feb 2021 18:00:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614477624; cv=pass;
        d=google.com; s=arc-20160816;
        b=E7yk2cDMcAqFtPjJlxpyY8vrpA7aKPKmEvyA4XggdOivW5qbExhvXwVqce1pNuq/ef
         WQ6fPgKmuy3wCQkW7w9LZ8BclM0H2u/uvrqmY7s+Vze2kOOeZCVs68ON85QCNjo8XQkZ
         rb52fpxgwmuCDU0OsVPnqZDdrhucCaRGCGOsjS8b9nsunWdytczAiQvlwrsNJUjRBxlO
         wwLEJqWGJBbl2zFBQZQSShgLeJvfZzHyD79wg+/pawjitAmdZp+uASUQCgUy2JernpF1
         eGXBw6F23ZVpdrAV9nBxWgIo4RPXKhecXkHPwiVC+ee6teB8kPBoAxamwcpEZ6+YD64Z
         kBWg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=pg0zRna8y4NCwKVHoP+DS6Ztg24G1ReU7G1nCeNBag4=;
        b=hWeiSIxE85fwjhGzCzsauExI3Huw/fEeYzTZ15PnlMTUDh7vyDtUORxDsn/KO9PaGW
         Vu30xi7MLYZ9MZipKOq/MDr/vRJYj8v4ZmrfNlOma/N0Y7TvuYbxHOg4iadSFibYA/Tb
         zqdhQmdKt0E9AbrMH2m3Cw1OPk88rlJQZAv52ZXTAbeHxUb8n0X8ge3ugnmf9L6Y60hw
         Apq6n3by/9PodwYuav4nyQeVxcy93TuQPE0s9FQItKX+OGAk6mVlaLA5wMVM05jO8Oam
         iUj1X7W66Ac5nVpm+kFOxI3yg9GCmcGyGpiE24BsF/V2fPhLnmqfZn9IeTv6eFNxZrRA
         1jBw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=pg0zRna8y4NCwKVHoP+DS6Ztg24G1ReU7G1nCeNBag4=;
        b=oj5t8V4G2Fla+2fF09nFV4QIDyHnrit//AABC7nVAcFiqKFtJsla1ZlyFOOec6UXwo
         BGu1zMe3AzYldYZ1J2FbsyVM3tftoE0GpWnHxBQw9NjZrl3DQTWWf1yx2EfUF4tyuMHm
         sjrx6e5+vxFpjQ7ezsB3lbfm1RKwIHMcgbnzlAzjdM/0g6SLFgZnpaEy7SuTcCj1YF+4
         60NOz6XJkWdetFKvA959qlS6U9xK2YE9rJWROpqZaD4zXPUPMRwr4SLGEqdidDtkp7V7
         kEkDmQW1FFz13xfo14cZTTEX2FQA8zCfNfcO7aLEm1i2NwbEuwygHKry+4+hQCAvrN7R
         fbtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=pg0zRna8y4NCwKVHoP+DS6Ztg24G1ReU7G1nCeNBag4=;
        b=oVGFTYv7tNNI9VS9OyJIROMux9wbkLA3qt/Ow1tETbJ+J0gDP1/TGowsuiH8FqXfwf
         xjEUuV65/lFS3L21u5JwPmGWFPHliyyR+2oQ9pP0BUaSOa9q9Uq3e3RzKJ8sLIvVQ1In
         zC1a+Thm2dNQDfUu9sVle4PeLe53vQxtURFM5EOeYwjo8xZjg3O/1y981VB8mjumWznm
         cDTONFctW11WZlg/VCAMdy1SzHQQzc7HnjKHAjnB0d+Xp+jE9tTXmJyHQj8zwDQkKvSI
         18KB+4rQFjSl64QUvoKH+QzzM8cuRx2ZbjYLBF5AKaysi1VY24/Qr0WstmXR265MUK27
         txSQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532wF0K8y1ZbPwLCoByzmJDZ1JY7ADepTos2dDXrS5NetYB0nx4u
	7OyfUgYXkv6KudAspoDDASk=
X-Google-Smtp-Source: ABdhPJwR7sEy3lzS2KzEOB85vqeEZCQk1jASjYJl0DWT5YwMyExwVpPpK0nMIX9XghubPzRGVWzQTw==
X-Received: by 2002:a05:620a:11bc:: with SMTP id c28mr9315357qkk.334.1614477624565;
        Sat, 27 Feb 2021 18:00:24 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:b642:: with SMTP id q2ls3499038qvf.8.gmail; Sat, 27 Feb
 2021 18:00:24 -0800 (PST)
X-Received: by 2002:a0c:b418:: with SMTP id u24mr9109713qve.20.1614477624020;
        Sat, 27 Feb 2021 18:00:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614477624; cv=none;
        d=google.com; s=arc-20160816;
        b=QppvGqRsBkLkLIBHGACWjLeikbar9/jQ07rjmS8MtSMfyoJFSrvkJItTK3a1yDOkDd
         3oyL3hZUiyI8/aJiU522CEcoQ8ueshe4lVq23LjhOWLlQOLBJPW4OY0+syezf7YSXMOn
         gMrFlbZaQlbCQ7OXDOWrTEeAVai7MtEkKhcAiwQ901B+VpLJ8jo6eNyGBGbz3KAB0/4y
         D0NQDfIXGkisa0vFuXf1J20rkMd4MrNxAF+XPw3lxqNSD5SB5MFwKsqYq0/+Kv0k1M32
         R99wY9dnxXlQJSEfeSMf9Pw2F6FsOOqMP5j8bjPmmLftIyYxQZtLOuQHVj26EAIz8EEc
         iJww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=QUJ1yxLi5XOR3cdaFHU9Tsb7bOa9dUYS6JvY3NKv4T4=;
        b=rmnvFUrwa8NDa+xAMXv30iQubXc84OBKB988U5sPVFXwJ7x0ua6VseSaJu1I01QAD0
         YW21+DDI0Weqdy3fXQ+Gu7dedNjvh8ZACc01X+JMrs6jiEPJDTQ6nJJ1jamen7MykJqi
         ubRqXHls9E+cmphnxowmFX6qkWtc1k5sddqa1EbrV0pz09ehojbao1cOasbT9Lfl1+kY
         uoyh0S071SBtOh7eh0ievhIdo9a2s2cwFTS+91tqiW14nzG3ei6e8Kx00AqVk+ZvxCtr
         fJTJZmB+4KtA/oDdR6hROp+W2sSeHXdfWGGoHYQo5+QEzsOMhLGwm4rJFveQhBFWrOAo
         XczQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga06.intel.com (mga06.intel.com. [134.134.136.31])
        by gmr-mx.google.com with ESMTPS id s20si405837qtb.2.2021.02.27.18.00.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 27 Feb 2021 18:00:23 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) client-ip=134.134.136.31;
IronPort-SDR: zVCpsTH30olPj97vmkz2UUMmGfPdT/G5bl/A+cM/A6tdigsUtfjsrsQcrrspByUdGdygwZJUKC
 ScFzOBeIDQmw==
X-IronPort-AV: E=McAfee;i="6000,8403,9908"; a="247602509"
X-IronPort-AV: E=Sophos;i="5.81,211,1610438400"; 
   d="gz'50?scan'50,208,50";a="247602509"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Feb 2021 18:00:20 -0800
IronPort-SDR: FMfTl42G5i6+pZAtB3wDJAonPKVDWXpBRRQOMuoSRMCTTdQKvXURfZFJqfJ1mgewvTOtvPYwDE
 J0MrzNg6u7qA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,211,1610438400"; 
   d="gz'50?scan'50,208,50";a="585039378"
Received: from lkp-server01.sh.intel.com (HELO 16660e54978b) ([10.239.97.150])
  by orsmga005.jf.intel.com with ESMTP; 27 Feb 2021 18:00:18 -0800
Received: from kbuild by 16660e54978b with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lGBNZ-0003x5-Br; Sun, 28 Feb 2021 02:00:17 +0000
Date: Sun, 28 Feb 2021 09:59:25 +0800
From: kernel test robot <lkp@intel.com>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Rob Herring <robh@kernel.org>,
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: rmem.c:undefined reference to `memremap'
Message-ID: <202102280923.8hUjoKgX-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="Kj7319i9nmIyA2yE"
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


--Kj7319i9nmIyA2yE
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   5695e51619745d4fe3ec2506a2f0cd982c5e27a4
commit: 5a3fa75a4d9cb6bcfc9081ef224a4cdcd4b3eafe nvmem: Add driver to expose reserved memory as nvmem
date:   3 weeks ago
config: s390-randconfig-r013-20210228 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 83bc7815c4235786111aa2abf7193292e4a602f5)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install s390 cross compiling tool for clang build
        # apt-get install binutils-s390x-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=5a3fa75a4d9cb6bcfc9081ef224a4cdcd4b3eafe
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout 5a3fa75a4d9cb6bcfc9081ef224a4cdcd4b3eafe
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=s390 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   s390x-linux-gnu-ld: kernel/dma/coherent.o: in function `dma_declare_coherent_memory':
   coherent.c:(.text+0x7c): undefined reference to `memunmap'
   s390x-linux-gnu-ld: kernel/dma/coherent.o: in function `dma_init_coherent_memory':
   coherent.c:(.text+0xf4): undefined reference to `memremap'
   s390x-linux-gnu-ld: coherent.c:(.text+0x1e0): undefined reference to `memunmap'
   s390x-linux-gnu-ld: drivers/dma/dw/platform.o: in function `dw_probe':
   platform.c:(.text+0x92): undefined reference to `devm_platform_ioremap_resource'
   s390x-linux-gnu-ld: drivers/dma/fsl-edma.o: in function `fsl_edma_probe':
   fsl-edma.c:(.text+0xd4): undefined reference to `devm_ioremap_resource'
   s390x-linux-gnu-ld: fsl-edma.c:(.text+0x20a): undefined reference to `devm_ioremap_resource'
   s390x-linux-gnu-ld: drivers/dma/idma64.o: in function `idma64_platform_probe':
   idma64.c:(.text+0x76): undefined reference to `devm_ioremap_resource'
   s390x-linux-gnu-ld: drivers/dma/sf-pdma/sf-pdma.o: in function `sf_pdma_probe':
   sf-pdma.c:(.text+0x5a): undefined reference to `devm_ioremap_resource'
   s390x-linux-gnu-ld: drivers/dma/qcom/hidma_mgmt.o: in function `hidma_mgmt_probe':
   hidma_mgmt.c:(.text+0x2f8): undefined reference to `devm_ioremap_resource'
   s390x-linux-gnu-ld: drivers/dma/qcom/hidma_mgmt.o: in function `hidma_mgmt_of_populate_channels':
   hidma_mgmt.c:(.init.text+0x152): undefined reference to `of_address_to_resource'
   s390x-linux-gnu-ld: hidma_mgmt.c:(.init.text+0x16a): undefined reference to `of_address_to_resource'
   s390x-linux-gnu-ld: drivers/dma/xilinx/xilinx_dpdma.o: in function `xilinx_dpdma_probe':
   xilinx_dpdma.c:(.text+0xbc): undefined reference to `devm_platform_ioremap_resource'
   s390x-linux-gnu-ld: drivers/net/can/grcan.o: in function `grcan_probe':
   grcan.c:(.text+0x84): undefined reference to `devm_platform_ioremap_resource'
   s390x-linux-gnu-ld: drivers/media/rc/ir-hix5hd2.o: in function `hix5hd2_ir_probe':
   ir-hix5hd2.c:(.text+0xd8): undefined reference to `devm_ioremap_resource'
   s390x-linux-gnu-ld: drivers/iio/adc/adi-axi-adc.o: in function `adi_axi_adc_probe':
   adi-axi-adc.c:(.text+0x3aa): undefined reference to `devm_platform_ioremap_resource'
   s390x-linux-gnu-ld: drivers/nvmem/rmem.o: in function `rmem_read':
>> rmem.c:(.text+0x142): undefined reference to `memremap'
>> s390x-linux-gnu-ld: rmem.c:(.text+0x19a): undefined reference to `memunmap'

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202102280923.8hUjoKgX-lkp%40intel.com.

--Kj7319i9nmIyA2yE
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--Kj7319i9nmIyA2yE--
