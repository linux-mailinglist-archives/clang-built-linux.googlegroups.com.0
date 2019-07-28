Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBSVK7DUQKGQEIFZKS2Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3b.google.com (mail-vk1-xa3b.google.com [IPv6:2607:f8b0:4864:20::a3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 55B90781DE
	for <lists+clang-built-linux@lfdr.de>; Sun, 28 Jul 2019 23:36:11 +0200 (CEST)
Received: by mail-vk1-xa3b.google.com with SMTP id n185sf25782856vkf.14
        for <lists+clang-built-linux@lfdr.de>; Sun, 28 Jul 2019 14:36:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564349770; cv=pass;
        d=google.com; s=arc-20160816;
        b=NcmRkhYk8LT35mfQjcVArkJBB0ZXZ7K/6MpjE017fvkI0Bqm/rkQEB1iqX/7GVV11P
         aDnhUJk6grZmRopD2Z9pfWg68S7nfxcw3y9FffLx4rJ2kAh0qj8ilaAUKtHYJtNd6UIC
         s+y4fbytqjjm8ejPuD4pbi/1M2KZMH6acRHtljPuIMDZxdlXOx3hz3VBAXZ6UC2bpT+v
         UmvBRiWMfDdnccuk4zYoVbNoj3zOgV9AzVj0wqZiRwLjBBX08KRvZTAvEoBTB9R0N0E9
         DXAraUeiDPe6MisCktcV1IY/atJ7w0DyFrBFRipCoJjDA2VsmHFjvtbHypQsnnk2iSDB
         WrTA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=s/we9mwRGcLN11bV1Xg1Eqyhg44BWh3iNpCmFnSjJAw=;
        b=n9dP4g6ZQj15O9Y9UzNWbs9f7gqTsjtENHipRkhhkvGGLCN8LlkU/R9B81dSOJQLbE
         FJfJ7I8lNdkBz+LveEs16Cv1BntecbK3zUQGc/2QbSaUGyHGozbyh0xsWSIBcuPK5/Ke
         VCuFSle5dOiEmXGOeCVzM2aD6cBFdTl7Z5DKkefiifkH9t4sPGV5CXYNWS7C4asefhzk
         OLg+4B3O+8JcuhUuYH3bHPGK1yb6dXMxTPuZ3pdJnA5Ask2uoUc8xAs3HhewHkZu5lSK
         il1/aaS83AYM9NaepAbec2S9l5SU9pDVtrhtTq2s2P/HEdz2SSjpJa8Q4oOPSPhlkGsq
         wnXA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=s/we9mwRGcLN11bV1Xg1Eqyhg44BWh3iNpCmFnSjJAw=;
        b=IVZ0LlNZBe1D3zi1LMRj89z7Geaob4nOyqTcWCsXKFhG7ua30Y1qOZghwvYd0mo7NF
         X0Hom7va/kNkinDvWMAFxGbwDi/J7IA6b2VRjgpm+jxbUW0pk7G3UozJN0q2UOC240Js
         rl8LcbnrzAOQGBZh3yAZV8DZtPJhJGNUuVYanlgFfXEALLfJGRAZxSfry3IAlBw66BMI
         00NnGtGKe2EsRoi3KpVKc4KPyuOvGjoGMHmXCYbK3RazbFk6qneHBzUnjzep9oSCTzO9
         anXfrQOJl7oGvIoxox2I0sPE7jcXPDz1qPw5Jh7eBbb4A+dsUGghnIAoEGg/Sm9P0pUp
         bovA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=s/we9mwRGcLN11bV1Xg1Eqyhg44BWh3iNpCmFnSjJAw=;
        b=ZEcUb9cPv6niJzVezXPeQD2fsNZ4zkKdcJi0KnIaAmQvt2ukRWpLZFEFBkYiPhx9Dc
         czokKD7cjadc5LfiEBZRZx+/WK6PyonG7+spf5w/ulooNTKaJY1dU9oy2vP6uFCLyBBB
         5wMgSv+mgWVwIIcF/CH8Q0HDvoBMQ3DchEyy5PzALq6o2q8DdObEKW3rFCZ+557jCgv9
         w39rWvlLiacbt06JysyzFLIGcnpTzRfMvFBuKUHbqRh7K2YrIvgfqiEDGoRdyraDutYl
         t3xvckX5EisYS4fFoaC9UPwyX/9JPfjCbcjN0VxiMetjYeVJIFIDy+zKwpP1jynihOp2
         niOA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVwFgRORnjvZ9A6hzOl3kwx0KqskXd9+LXn5JDUpmTJppvhgonD
	Gd0Kw/lahSkEdbp2M3DEb84=
X-Google-Smtp-Source: APXvYqyStgyDkt4ZBF8DnrPsnlnUeW0f8EPeoMPN+iYIqqetbtOAHaascRZKXYiEbSLVfkbIZijkuA==
X-Received: by 2002:ab0:6198:: with SMTP id h24mr2542356uan.41.1564349770161;
        Sun, 28 Jul 2019 14:36:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:c405:: with SMTP id c5ls7449917vsk.5.gmail; Sun, 28 Jul
 2019 14:36:09 -0700 (PDT)
X-Received: by 2002:a67:fa08:: with SMTP id i8mr66324312vsq.140.1564349769837;
        Sun, 28 Jul 2019 14:36:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564349769; cv=none;
        d=google.com; s=arc-20160816;
        b=f+/g5Xtjr5Y3rp3ETH74r8zD/tTAcPp/c+JiERs7W+se9GstsFoh4JsQ5udmCotbc1
         QALxMyelFXctpy1vX46EgKKEbxbtGTjGl/Mm4yYghqA6j3flDR4G3Lb9RIIK13a10YgY
         X8jA3A2trVA6iTLzgU9LTWXQPPyno7AX7j3npXniL8q7/ns/NTjiea9le2B34eM2IIoe
         2fQIbfJtbCQnxAY3BuSUDUYUFZkmG0tz3xbWiP1T5Qb7yOquGgDEif55NyS2PKICDPOK
         tdwOly1OLp6HxpLq3kXmSEc2Gn8DiOvuT1kDh1oTOMEtctgPFpgdUrXb2udwpiHaGCVz
         JRhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=NNSbyaepa8ZBEj/LKNFcTuYRpovXaT5L5u/hLiCcCKo=;
        b=KOcve2qfcP7tBNbJmRWN/O1eCYQISvmMGYpiEg4/bbRPhwpO41bBrFvpEylxi4oVBV
         DkcdZYjpNpunMpfzkfvRukCCj7LRg8Lb88PdX2F7pPIhdmZvcMsocf34+fv4nlcfgdqV
         n3ybuze69uxV3YwnzOcALfjCIFvR0+OYbdiBNWTJQvJJBmMn7LwRKXxJq/YBoZqWZVCc
         CWUJURWMP1JL1kV2nTZHRQ4uueBXWlT8gdNHWW7EbNo9NHx1cgHy9IEFfVaYVS0NE+CQ
         NuUM7LHleUOilee7mJ38Iky6xBxU6+Zp92+DSyHzkvf/Pq6nmsd15/SkRYRr4OSvs5B8
         stkA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga09.intel.com (mga09.intel.com. [134.134.136.24])
        by gmr-mx.google.com with ESMTPS id a128si2660658vkh.1.2019.07.28.14.36.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Jul 2019 14:36:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) client-ip=134.134.136.24;
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 28 Jul 2019 14:36:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,320,1559545200"; 
   d="scan'208";a="195090112"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by fmsmga004.fm.intel.com with ESMTP; 28 Jul 2019 14:36:06 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1hrqpq-000FsF-AN; Mon, 29 Jul 2019 05:36:06 +0800
Date: Mon, 29 Jul 2019 05:35:16 +0800
From: kbuild test robot <lkp@intel.com>
To: kbuild@01.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: [linux-review:UPDATE-20190724-183537/YueHaibing/RDMA-hns-Fix-build-error-for-hip06/20190723-181047
 1/1] drivers/net/ethernet/hisilicon/Kconfig:73: symbol HNS_DSAF is selected
 by INFINIBAND_HNS_HIP06
Message-ID: <201907290511.vgjTUyHr%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted
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

CC: kbuild-all@01.org
TO: YueHaibing <yuehaibing@huawei.com>
CC: 0day robot <lkp@intel.com>

tree:   https://github.com/0day-ci/linux/commits/UPDATE-20190724-183537/YueHaibing/RDMA-hns-Fix-build-error-for-hip06/20190723-181047
head:   b2164fbe951873cc0d4dfbb074e11e9e4b5bc895
commit: b2164fbe951873cc0d4dfbb074e11e9e4b5bc895 [1/1] RDMA/hns: Fix build error for hip06
config: powerpc-defconfig
compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
reproduce:
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        git checkout b2164fbe951873cc0d4dfbb074e11e9e4b5bc895
        make.cross ARCH=powerpc  defconfig
        make.cross ARCH=powerpc 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> drivers/net/ethernet/hisilicon/Kconfig:73:error: recursive dependency detected!
>> drivers/net/ethernet/hisilicon/Kconfig:73: symbol HNS_DSAF is selected by INFINIBAND_HNS_HIP06
>> drivers/infiniband/hw/hns/Kconfig:13: symbol INFINIBAND_HNS_HIP06 depends on HNS
>> drivers/net/ethernet/hisilicon/Kconfig:66: symbol HNS is selected by HNS_DSAF
   For a resolution refer to Documentation/kbuild/kconfig-language.rst
   subsection "Kconfig recursive dependency limitations"

vim +73 drivers/net/ethernet/hisilicon/Kconfig

57c5bc9ad7d799e Zhangfei Gao        2014-06-03   20  
57c5bc9ad7d799e Zhangfei Gao        2014-06-03   21  config HIX5HD2_GMAC
57c5bc9ad7d799e Zhangfei Gao        2014-06-03   22  	tristate "Hisilicon HIX5HD2 Family Network Device Support"
57c5bc9ad7d799e Zhangfei Gao        2014-06-03   23  	select PHYLIB
57c5bc9ad7d799e Zhangfei Gao        2014-06-03   24  	help
57c5bc9ad7d799e Zhangfei Gao        2014-06-03   25  	  This selects the hix5hd2 mac family network device.
57c5bc9ad7d799e Zhangfei Gao        2014-06-03   26  
542ae60af24f02e Dongpo Li           2016-07-15   27  config HISI_FEMAC
542ae60af24f02e Dongpo Li           2016-07-15   28  	tristate "Hisilicon Fast Ethernet MAC device support"
542ae60af24f02e Dongpo Li           2016-07-15   29  	depends on HAS_IOMEM
542ae60af24f02e Dongpo Li           2016-07-15   30  	select PHYLIB
542ae60af24f02e Dongpo Li           2016-07-15   31  	select RESET_CONTROLLER
542ae60af24f02e Dongpo Li           2016-07-15   32  	help
542ae60af24f02e Dongpo Li           2016-07-15   33  	  This selects the Hisilicon Fast Ethernet MAC device(FEMAC).
542ae60af24f02e Dongpo Li           2016-07-15   34  	  The FEMAC receives and transmits data over Ethernet
542ae60af24f02e Dongpo Li           2016-07-15   35  	  ports at 10/100 Mbps in full-duplex or half-duplex mode.
542ae60af24f02e Dongpo Li           2016-07-15   36  	  The FEMAC exchanges data with the CPU, and supports
542ae60af24f02e Dongpo Li           2016-07-15   37  	  the energy efficient Ethernet (EEE).
542ae60af24f02e Dongpo Li           2016-07-15   38  
4a841ee928f430e Zhangfei Gao        2015-01-14   39  config HIP04_ETH
4a841ee928f430e Zhangfei Gao        2015-01-14   40  	tristate "HISILICON P04 Ethernet support"
979d804e5bc926f Krzysztof Kozlowski 2016-03-04   41  	depends on HAS_IOMEM	# For MFD_SYSCON
4a841ee928f430e Zhangfei Gao        2015-01-14   42  	select MARVELL_PHY
4a841ee928f430e Zhangfei Gao        2015-01-14   43  	select MFD_SYSCON
5b904d39406a61c huangdaode          2015-09-17   44  	select HNS_MDIO
4a841ee928f430e Zhangfei Gao        2015-01-14   45  	---help---
4a841ee928f430e Zhangfei Gao        2015-01-14   46  	  If you wish to compile a kernel for a hardware with hisilicon p04 SoC and
4a841ee928f430e Zhangfei Gao        2015-01-14   47  	  want to use the internal ethernet then you should answer Y to this.
4a841ee928f430e Zhangfei Gao        2015-01-14   48  
2ede8489c1a9a29 Jiangfeng Xiao      2019-07-09   49  config HI13X1_GMAC
2ede8489c1a9a29 Jiangfeng Xiao      2019-07-09   50  	bool "Hisilicon HI13X1 Network Device Support"
2ede8489c1a9a29 Jiangfeng Xiao      2019-07-09   51  	depends on HIP04_ETH
2ede8489c1a9a29 Jiangfeng Xiao      2019-07-09   52  	help
2ede8489c1a9a29 Jiangfeng Xiao      2019-07-09   53  	  If you wish to compile a kernel for a hardware with hisilicon hi13x1_gamc
2ede8489c1a9a29 Jiangfeng Xiao      2019-07-09   54  	  then you should answer Y to this. This makes this driver suitable for use
2ede8489c1a9a29 Jiangfeng Xiao      2019-07-09   55  	  on certain boards such as the HI13X1.
2ede8489c1a9a29 Jiangfeng Xiao      2019-07-09   56  
2ede8489c1a9a29 Jiangfeng Xiao      2019-07-09   57  	  If you are unsure, say N.
2ede8489c1a9a29 Jiangfeng Xiao      2019-07-09   58  
5b904d39406a61c huangdaode          2015-09-17   59  config HNS_MDIO
0fa28877b26641c Arnd Bergmann       2015-10-09   60  	tristate
0fa28877b26641c Arnd Bergmann       2015-10-09   61  	select PHYLIB
5b904d39406a61c huangdaode          2015-09-17   62  	---help---
5b904d39406a61c huangdaode          2015-09-17   63  	  This selects the HNS MDIO support. It is needed by HNS_DSAF to access
5b904d39406a61c huangdaode          2015-09-17   64  	  the PHY
5b904d39406a61c huangdaode          2015-09-17   65  
6fe6611ff275522 huangdaode          2015-09-17  @66  config HNS
6fe6611ff275522 huangdaode          2015-09-17   67  	tristate "Hisilicon Network Subsystem Support (Framework)"
6fe6611ff275522 huangdaode          2015-09-17   68  	---help---
6fe6611ff275522 huangdaode          2015-09-17   69  	  This selects the framework support for Hisilicon Network Subsystem. It
6fe6611ff275522 huangdaode          2015-09-17   70  	  is needed by any driver which provides HNS acceleration engine or make
6fe6611ff275522 huangdaode          2015-09-17   71  	  use of the engine
6fe6611ff275522 huangdaode          2015-09-17   72  
511e6bc071db148 huangdaode          2015-09-17  @73  config HNS_DSAF
511e6bc071db148 huangdaode          2015-09-17   74  	tristate "Hisilicon HNS DSAF device Support"
511e6bc071db148 huangdaode          2015-09-17   75  	select HNS
511e6bc071db148 huangdaode          2015-09-17   76  	select HNS_MDIO
511e6bc071db148 huangdaode          2015-09-17   77  	---help---
511e6bc071db148 huangdaode          2015-09-17   78  	  This selects the DSAF (Distributed System Area Frabric) network
511e6bc071db148 huangdaode          2015-09-17   79  	  acceleration engine support. The engine is used in Hisilicon hip05,
511e6bc071db148 huangdaode          2015-09-17   80  	  Hi1610 and further ICT SoC
511e6bc071db148 huangdaode          2015-09-17   81  
b5996f11ea5496d huangdaode          2015-09-17   82  config HNS_ENET
b5996f11ea5496d huangdaode          2015-09-17   83  	tristate "Hisilicon HNS Ethernet Device Support"
b5996f11ea5496d huangdaode          2015-09-17   84  	select PHYLIB
b5996f11ea5496d huangdaode          2015-09-17   85  	select HNS
b5996f11ea5496d huangdaode          2015-09-17   86  	---help---
b5996f11ea5496d huangdaode          2015-09-17   87  	  This selects the general ethernet driver for HNS.  This module make
b5996f11ea5496d huangdaode          2015-09-17   88  	  use of any HNS AE driver, such as HNS_DSAF
b5996f11ea5496d huangdaode          2015-09-17   89  
15e8e5ffd624702 Salil               2017-08-02   90  config HNS3
15e8e5ffd624702 Salil               2017-08-02   91  	tristate "Hisilicon Network Subsystem Support HNS3 (Framework)"
15e8e5ffd624702 Salil               2017-08-02   92  	depends on PCI
15e8e5ffd624702 Salil               2017-08-02   93  	---help---
15e8e5ffd624702 Salil               2017-08-02   94  	  This selects the framework support for Hisilicon Network Subsystem 3.
15e8e5ffd624702 Salil               2017-08-02   95  	  This layer facilitates clients like ENET, RoCE and user-space ethernet
15e8e5ffd624702 Salil               2017-08-02   96  	  drivers(like ODP)to register with HNAE devices and their associated
15e8e5ffd624702 Salil               2017-08-02   97  	  operations.
15e8e5ffd624702 Salil               2017-08-02   98  
7a7056e3dfa6636 Huazhong Tan        2018-07-02   99  if HNS3
7a7056e3dfa6636 Huazhong Tan        2018-07-02  100  
15e8e5ffd624702 Salil               2017-08-02  101  config HNS3_HCLGE
15e8e5ffd624702 Salil               2017-08-02  102  	tristate "Hisilicon HNS3 HCLGE Acceleration Engine & Compatibility Layer Support"
7a7056e3dfa6636 Huazhong Tan        2018-07-02  103  	default m
15e8e5ffd624702 Salil               2017-08-02  104  	depends on PCI_MSI
15e8e5ffd624702 Salil               2017-08-02  105  	---help---
15e8e5ffd624702 Salil               2017-08-02  106  	  This selects the HNS3_HCLGE network acceleration engine & its hardware
15e8e5ffd624702 Salil               2017-08-02  107  	  compatibility layer. The engine would be used in Hisilicon hip08 family of
15e8e5ffd624702 Salil               2017-08-02  108  	  SoCs and further upcoming SoCs.
15e8e5ffd624702 Salil               2017-08-02  109  
cacde272dd00496 Yunsheng Lin        2017-09-27  110  config HNS3_DCB
cacde272dd00496 Yunsheng Lin        2017-09-27  111  	bool "Hisilicon HNS3 Data Center Bridge Support"
cacde272dd00496 Yunsheng Lin        2017-09-27  112  	default n
7a7056e3dfa6636 Huazhong Tan        2018-07-02  113  	depends on HNS3_HCLGE && DCB
cacde272dd00496 Yunsheng Lin        2017-09-27  114  	---help---
cacde272dd00496 Yunsheng Lin        2017-09-27  115  	  Say Y here if you want to use Data Center Bridging (DCB) in the HNS3 driver.
cacde272dd00496 Yunsheng Lin        2017-09-27  116  
cacde272dd00496 Yunsheng Lin        2017-09-27  117  	  If unsure, say N.
cacde272dd00496 Yunsheng Lin        2017-09-27  118  
e963cb789a29b89 Salil Mehta         2017-12-14  119  config HNS3_HCLGEVF
e963cb789a29b89 Salil Mehta         2017-12-14  120  	tristate "Hisilicon HNS3VF Acceleration Engine & Compatibility Layer Support"
e963cb789a29b89 Salil Mehta         2017-12-14  121  	depends on PCI_MSI
e963cb789a29b89 Salil Mehta         2017-12-14  122  	depends on HNS3_HCLGE
e963cb789a29b89 Salil Mehta         2017-12-14  123      ---help---
e963cb789a29b89 Salil Mehta         2017-12-14  124  	  This selects the HNS3 VF drivers network acceleration engine & its hardware
e963cb789a29b89 Salil Mehta         2017-12-14  125  	  compatibility layer. The engine would be used in Hisilicon hip08 family of
e963cb789a29b89 Salil Mehta         2017-12-14  126  	  SoCs and further upcoming SoCs.
e963cb789a29b89 Salil Mehta         2017-12-14  127  
e963cb789a29b89 Salil Mehta         2017-12-14  128  config HNS3_ENET
e963cb789a29b89 Salil Mehta         2017-12-14  129  	tristate "Hisilicon HNS3 Ethernet Device Support"
7a7056e3dfa6636 Huazhong Tan        2018-07-02  130  	default m
e963cb789a29b89 Salil Mehta         2017-12-14  131  	depends on 64BIT && PCI
2aa55dccf83d7ca Arnd Bergmann       2018-12-10  132  	depends on INET
e963cb789a29b89 Salil Mehta         2017-12-14  133  	---help---
e963cb789a29b89 Salil Mehta         2017-12-14  134  	  This selects the Ethernet Driver for Hisilicon Network Subsystem 3 for hip08
e963cb789a29b89 Salil Mehta         2017-12-14  135  	  family of SoCs. This module depends upon HNAE3 driver to access the HNAE3
e963cb789a29b89 Salil Mehta         2017-12-14  136  	  devices and their associated operations.
e963cb789a29b89 Salil Mehta         2017-12-14  137  
7a7056e3dfa6636 Huazhong Tan        2018-07-02  138  endif #HNS3
7a7056e3dfa6636 Huazhong Tan        2018-07-02  139  
57c5bc9ad7d799e Zhangfei Gao        2014-06-03  140  endif # NET_VENDOR_HISILICON

:::::: The code at line 73 was first introduced by commit
:::::: 511e6bc071db1484d1a3d1d0bd4c244cf33910ff net: add Hisilicon Network Subsystem DSAF support

:::::: TO: huangdaode <huangdaode@hisilicon.com>
:::::: CC: David S. Miller <davem@davemloft.net>

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201907290511.vgjTUyHr%25lkp%40intel.com.
