Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBJVHU6DAMGQEKVZE4SA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id 15C873A9777
	for <lists+clang-built-linux@lfdr.de>; Wed, 16 Jun 2021 12:34:16 +0200 (CEST)
Received: by mail-pg1-x53d.google.com with SMTP id k5-20020a63ba050000b029021ab84617c0sf1208146pgf.14
        for <lists+clang-built-linux@lfdr.de>; Wed, 16 Jun 2021 03:34:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623839654; cv=pass;
        d=google.com; s=arc-20160816;
        b=N8CgKLxbS0TeDJyC9q+ZvZTSgxqBh5lqPesLbCMt0Tiry359BUEINTS5MNX8lVhGC0
         3H6/CKGom8DpOG8l5KQcFB55RaCuctWR4+CF+EvFjN7PIotFIGhD56oi1tiuIMf9Sha8
         YG3CfZi04V8yT0vL40b76jl71eaFC0we51AR9Lw6n7/xcjse0arUt6jrQtbIIxh8rze4
         kNJ0U0OArPBD7y+TJVr1JYTXIq9mfz73TU9APr4hDtxdSkGcyR5hP6JhAnqnsZX1Hmo7
         ej62zRhKHkd78X0qbcb6ZRURrqeoouPpz0+QmbBRtOJheTP7jlvNPtKgRj8/7eUjGAXx
         1gLw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=W94CGgVTPEDw79XHippMEzNvM1BF2oQot917cAV66sc=;
        b=Cks67yGSPxcWNNFL5pJjmpmnU7fCsb3qPV/EttaKimCmq8BL0CFusYZIp7PAc9C3IC
         liKDtc5adPgNB1GlPASzyHEI1LvqayDFduW6sCYvAUq85TkCABcdpl7Q08xG9Rc+Zc9Y
         yecDy96T+qHsoZv7f9S6jef6sO2wQTPVsc3Redf3Z83/Caun2ypBIGPMYfQAG3dzykvC
         i677M+YK9zYkupAbPgVkyZvpYLATT10mRsI1ZLFFEeHBIXqnQYjnlG1EBX43SwBagdbz
         GQk9HgK6Gv1aHw1YgmuJrgBT2eELpYri5cOc9cZHLkeJHyYN7xhM6mMlwDIcJ4YNYY80
         C2bw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=W94CGgVTPEDw79XHippMEzNvM1BF2oQot917cAV66sc=;
        b=AaE0N1xFg5/2DHobrcnUGgRdN6FWCcL74G4Bz9SnARhIvf5VFJ7Vy7LhnnoeyNpvA7
         JAiihL6NiRzrzqSPEAG52urXhv1LgQXugTfT5OwlD7J7nmR7+rEzg0BW0srLg5/i0mya
         7ncJd4tpD7eLgKZFd3IZPmieUBsG7A2ylcurhNqGO+SClgET/T93BIvNfpIGJPeqRTr7
         UcKfSWoMicvEe2X+TueOvSmBjb5RuflkGH3sgK4gDwr7u8oQuhurSs0TgWNTstRx25ea
         OFyCTVuKBzKIwGqwaTlmCcSsKCL+J2MVbz0ck+Hzq2O/lVsNY166dHUajbMt3V5IhmQt
         RtDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=W94CGgVTPEDw79XHippMEzNvM1BF2oQot917cAV66sc=;
        b=EjP3qPRZEWmktdrmmwr1ILm9H4YA6tvopFCdV3dSJ21GZomhwwZmMeGZpoS5IQvAov
         jw4Q7e0uIN//sKsSPls9kGdUl9mb1jwlEONrYGQmKXf6CiBOgJwfKxo7Dy9RhYhJH5sz
         4mnhWS5iIYLwqlDp1EtOflH1zUgEfBVJJMKDG1F84WHvKajvCe1cdhmHgbvJYHev/Zc8
         NcQoUUR0zyM8h+8w7Hs9PB8VK5MzpgwhiCba2Uw0X7SkLsbVJkjxFBPhyJbGx56TIMGS
         J3jJbhb+rJMv/TKMdI2mA2IvkRWQRPi9Kv0/ZaHmwhOP7v/XdWXSQUNEuG8dOxheWn/v
         xaxw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5339HsONbwirY8VIse56P2u6bqo7c5CqtmMUpns4mT9b4hhlUJlf
	ysOi+QgRC75ExV5J28FVJ0E=
X-Google-Smtp-Source: ABdhPJzbE6yXZ9YQYipWnfsvJzfzDiY2Xd1R6vR3Z3iPufmJTQN97ARBtu8pGNfj5nnNKEU5HdX79w==
X-Received: by 2002:a63:d908:: with SMTP id r8mr4284338pgg.414.1623839654550;
        Wed, 16 Jun 2021 03:34:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:903:1d2:: with SMTP id e18ls994443plh.6.gmail; Wed, 16
 Jun 2021 03:34:14 -0700 (PDT)
X-Received: by 2002:a17:90a:390d:: with SMTP id y13mr4333005pjb.52.1623839653742;
        Wed, 16 Jun 2021 03:34:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623839653; cv=none;
        d=google.com; s=arc-20160816;
        b=yYlOeF07nV1/6ONYsXAEjDdQtS/Y9MSCSBljSrzBfv9J4drr86+a4dvisIgtUqOaId
         4sCZSl6OHYHWnKLhBMR4frYVITKSb9f5eNp6WAypCCu3JQQjQnoSYyOnb9WJzDxias2u
         sUC5NJdFJAU+V26tJh0h88Fx47dcxWxSV5s0j2+kSQV9aemBsjIhtuehmi8+cgNHWTRf
         xw8EyIFTM+jjs8a5c1h6dtp6CzCbwiUC5b7DwJtCrjtAxUGhQsIED1YDj51IV8XstLWr
         WXaRr2xaaPRLQXgAkrE/hJXDgVSNuplVcVBv2sbnFDvjbNCYPPB9jen7QNma9RxTkc93
         Cp7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=5TsSdChgjCkZbkrvARCPU0Y9kMogdIpTakISWARtCeE=;
        b=MbfaJ8eB6XuXq8A8duYQ5LhnM/sE/GYF65+UI1P1vJFesaeV7CGnmXsyNdvMyQAVpk
         YVUJez2ZKEFnBT6sTAURl3XxI5PgotmJtZY5bseI0Rgp+s1OjNpmP4ctao8I78FAvLYv
         GMk3Tn/NzalCaowJxlNqVKESlounAvfY6sW1jVT+wivCbQOjFPZ2rb1lB1RYrD4Glor0
         1QHt2jf7SY7P2Zyatxy6fumdZ/v8+EAoG5sAZ7Ptgl8uDBzZNEZdAX0io9t1qdB1E1iw
         m/Pmlg/AxN+PJF/osy0duwVgvCd0XLe1iYqpm30aWCtqztRXZRCImwRzq7MKL+AJ7Y7L
         pX9Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga01.intel.com (mga01.intel.com. [192.55.52.88])
        by gmr-mx.google.com with ESMTPS id t15si122916plr.0.2021.06.16.03.34.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 16 Jun 2021 03:34:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) client-ip=192.55.52.88;
IronPort-SDR: kFR0idQxLULDbC86Z3BSK3w4H/tr6BHs8w/LfhxuEBPB6JAF6VlPLzwkFIERBxgJFk5SR64aGT
 MDmydAfqlkFw==
X-IronPort-AV: E=McAfee;i="6200,9189,10016"; a="227645233"
X-IronPort-AV: E=Sophos;i="5.83,277,1616482800"; 
   d="gz'50?scan'50,208,50";a="227645233"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Jun 2021 03:34:11 -0700
IronPort-SDR: JFvQAMIdAOMlg58OZP8t+g1RkjWhtsmI/6zxwOi6lBoD5xWZ9H6oPJ77BahORvv7z5YV7x1b9D
 lRSLlMSyI39g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,277,1616482800"; 
   d="gz'50?scan'50,208,50";a="452299231"
Received: from lkp-server01.sh.intel.com (HELO 4aae0cb4f5b5) ([10.239.97.150])
  by fmsmga008.fm.intel.com with ESMTP; 16 Jun 2021 03:34:09 -0700
Received: from kbuild by 4aae0cb4f5b5 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1ltSs4-00016z-U8; Wed, 16 Jun 2021 10:34:08 +0000
Date: Wed, 16 Jun 2021 18:33:22 +0800
From: kernel test robot <lkp@intel.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Linux Memory Management List <linux-mm@kvack.org>
Subject: [linux-next:master 9419/10007]
 drivers/mtd/nand/raw/arasan-nand-controller.c:1453:33: warning: shift count
 >= width of type
Message-ID: <202106161802.0TPrXeZY-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="zhXaljGHf11kAtnf"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted
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


--zhXaljGHf11kAtnf
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
head:   19ae1f2bd9c091059f80646604ccef8a1e614f57
commit: 236fd3e0427070413e7059dc3c52c3f9c89f7cc0 [9419/10007] Merge remote-tracking branch 'nand/nand/next'
config: riscv-randconfig-r013-20210615 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 64720f57bea6a6bf033feef4a5751ab9c0c3b401)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install riscv cross compiling tool for clang build
        # apt-get install binutils-riscv64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=236fd3e0427070413e7059dc3c52c3f9c89f7cc0
        git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
        git fetch --no-tags linux-next master
        git checkout 236fd3e0427070413e7059dc3c52c3f9c89f7cc0
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=riscv 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   In file included from drivers/mtd/nand/raw/arasan-nand-controller.c:17:
   In file included from include/linux/dma-mapping.h:10:
   In file included from include/linux/scatterlist.h:8:
   In file included from include/linux/mm.h:33:
   In file included from include/linux/pgtable.h:6:
   arch/riscv/include/asm/pgtable.h:521:9: error: implicit declaration of function 'pfn_pmd' [-Werror,-Wimplicit-function-declaration]
           return pfn_pmd(page_to_pfn(page), prot);
                  ^
   arch/riscv/include/asm/pgtable.h:521:9: note: did you mean 'pfn_pgd'?
   arch/riscv/include/asm/pgtable.h:222:21: note: 'pfn_pgd' declared here
   static inline pgd_t pfn_pgd(unsigned long pfn, pgprot_t prot)
                       ^
   arch/riscv/include/asm/pgtable.h:521:17: error: implicit declaration of function 'page_to_section' [-Werror,-Wimplicit-function-declaration]
           return pfn_pmd(page_to_pfn(page), prot);
                          ^
   include/asm-generic/memory_model.h:81:21: note: expanded from macro 'page_to_pfn'
   #define page_to_pfn __page_to_pfn
                       ^
   include/asm-generic/memory_model.h:64:14: note: expanded from macro '__page_to_pfn'
           int __sec = page_to_section(__pg);                      \
                       ^
   arch/riscv/include/asm/pgtable.h:521:17: note: did you mean '__nr_to_section'?
   include/asm-generic/memory_model.h:81:21: note: expanded from macro 'page_to_pfn'
   #define page_to_pfn __page_to_pfn
                       ^
   include/asm-generic/memory_model.h:64:14: note: expanded from macro '__page_to_pfn'
           int __sec = page_to_section(__pg);                      \
                       ^
   include/linux/mmzone.h:1314:35: note: '__nr_to_section' declared here
   static inline struct mem_section *__nr_to_section(unsigned long nr)
                                     ^
   In file included from drivers/mtd/nand/raw/arasan-nand-controller.c:17:
   In file included from include/linux/dma-mapping.h:10:
   In file included from include/linux/scatterlist.h:8:
   In file included from include/linux/mm.h:33:
   In file included from include/linux/pgtable.h:6:
   arch/riscv/include/asm/pgtable.h:521:9: error: returning 'int' from a function with incompatible result type 'pmd_t'
           return pfn_pmd(page_to_pfn(page), prot);
                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   In file included from drivers/mtd/nand/raw/arasan-nand-controller.c:17:
   In file included from include/linux/dma-mapping.h:10:
   In file included from include/linux/scatterlist.h:8:
   include/linux/mm.h:1552:29: error: static declaration of 'page_to_section' follows non-static declaration
   static inline unsigned long page_to_section(const struct page *page)
                               ^
   arch/riscv/include/asm/pgtable.h:521:17: note: previous implicit declaration is here
           return pfn_pmd(page_to_pfn(page), prot);
                          ^
   include/asm-generic/memory_model.h:81:21: note: expanded from macro 'page_to_pfn'
   #define page_to_pfn __page_to_pfn
                       ^
   include/asm-generic/memory_model.h:64:14: note: expanded from macro '__page_to_pfn'
           int __sec = page_to_section(__pg);                      \
                       ^
>> drivers/mtd/nand/raw/arasan-nand-controller.c:1453:33: warning: shift count >= width of type [-Wshift-count-overflow]
           ret = dma_set_mask(&pdev->dev, DMA_BIT_MASK(64));
                                          ^~~~~~~~~~~~~~~~
   include/linux/dma-mapping.h:76:54: note: expanded from macro 'DMA_BIT_MASK'
   #define DMA_BIT_MASK(n) (((n) == 64) ? ~0ULL : ((1ULL<<(n))-1))
                                                        ^ ~~~
   1 warning and 4 errors generated.


vim +1453 drivers/mtd/nand/raw/arasan-nand-controller.c

197b88fecc50ee Miquel Raynal 2020-05-19  1416  
197b88fecc50ee Miquel Raynal 2020-05-19  1417  static int anfc_probe(struct platform_device *pdev)
197b88fecc50ee Miquel Raynal 2020-05-19  1418  {
197b88fecc50ee Miquel Raynal 2020-05-19  1419  	struct arasan_nfc *nfc;
197b88fecc50ee Miquel Raynal 2020-05-19  1420  	int ret;
197b88fecc50ee Miquel Raynal 2020-05-19  1421  
197b88fecc50ee Miquel Raynal 2020-05-19  1422  	nfc = devm_kzalloc(&pdev->dev, sizeof(*nfc), GFP_KERNEL);
197b88fecc50ee Miquel Raynal 2020-05-19  1423  	if (!nfc)
197b88fecc50ee Miquel Raynal 2020-05-19  1424  		return -ENOMEM;
197b88fecc50ee Miquel Raynal 2020-05-19  1425  
197b88fecc50ee Miquel Raynal 2020-05-19  1426  	nfc->dev = &pdev->dev;
197b88fecc50ee Miquel Raynal 2020-05-19  1427  	nand_controller_init(&nfc->controller);
197b88fecc50ee Miquel Raynal 2020-05-19  1428  	nfc->controller.ops = &anfc_ops;
197b88fecc50ee Miquel Raynal 2020-05-19  1429  	INIT_LIST_HEAD(&nfc->chips);
197b88fecc50ee Miquel Raynal 2020-05-19  1430  
197b88fecc50ee Miquel Raynal 2020-05-19  1431  	nfc->base = devm_platform_ioremap_resource(pdev, 0);
197b88fecc50ee Miquel Raynal 2020-05-19  1432  	if (IS_ERR(nfc->base))
197b88fecc50ee Miquel Raynal 2020-05-19  1433  		return PTR_ERR(nfc->base);
197b88fecc50ee Miquel Raynal 2020-05-19  1434  
197b88fecc50ee Miquel Raynal 2020-05-19  1435  	anfc_reset(nfc);
197b88fecc50ee Miquel Raynal 2020-05-19  1436  
197b88fecc50ee Miquel Raynal 2020-05-19  1437  	nfc->controller_clk = devm_clk_get(&pdev->dev, "controller");
197b88fecc50ee Miquel Raynal 2020-05-19  1438  	if (IS_ERR(nfc->controller_clk))
197b88fecc50ee Miquel Raynal 2020-05-19  1439  		return PTR_ERR(nfc->controller_clk);
197b88fecc50ee Miquel Raynal 2020-05-19  1440  
197b88fecc50ee Miquel Raynal 2020-05-19  1441  	nfc->bus_clk = devm_clk_get(&pdev->dev, "bus");
197b88fecc50ee Miquel Raynal 2020-05-19  1442  	if (IS_ERR(nfc->bus_clk))
197b88fecc50ee Miquel Raynal 2020-05-19  1443  		return PTR_ERR(nfc->bus_clk);
197b88fecc50ee Miquel Raynal 2020-05-19  1444  
197b88fecc50ee Miquel Raynal 2020-05-19  1445  	ret = clk_prepare_enable(nfc->controller_clk);
197b88fecc50ee Miquel Raynal 2020-05-19  1446  	if (ret)
197b88fecc50ee Miquel Raynal 2020-05-19  1447  		return ret;
197b88fecc50ee Miquel Raynal 2020-05-19  1448  
197b88fecc50ee Miquel Raynal 2020-05-19  1449  	ret = clk_prepare_enable(nfc->bus_clk);
197b88fecc50ee Miquel Raynal 2020-05-19  1450  	if (ret)
197b88fecc50ee Miquel Raynal 2020-05-19  1451  		goto disable_controller_clk;
197b88fecc50ee Miquel Raynal 2020-05-19  1452  
61622f6791a1f4 Miquel Raynal 2021-05-27 @1453  	ret = dma_set_mask(&pdev->dev, DMA_BIT_MASK(64));
61622f6791a1f4 Miquel Raynal 2021-05-27  1454  	if (ret)
61622f6791a1f4 Miquel Raynal 2021-05-27  1455  		return ret;
61622f6791a1f4 Miquel Raynal 2021-05-27  1456  
acbd3d0945f9cc Miquel Raynal 2021-05-26  1457  	ret = anfc_parse_cs(nfc);
acbd3d0945f9cc Miquel Raynal 2021-05-26  1458  	if (ret)
acbd3d0945f9cc Miquel Raynal 2021-05-26  1459  		goto disable_bus_clk;
acbd3d0945f9cc Miquel Raynal 2021-05-26  1460  
197b88fecc50ee Miquel Raynal 2020-05-19  1461  	ret = anfc_chips_init(nfc);
197b88fecc50ee Miquel Raynal 2020-05-19  1462  	if (ret)
197b88fecc50ee Miquel Raynal 2020-05-19  1463  		goto disable_bus_clk;
197b88fecc50ee Miquel Raynal 2020-05-19  1464  
197b88fecc50ee Miquel Raynal 2020-05-19  1465  	platform_set_drvdata(pdev, nfc);
197b88fecc50ee Miquel Raynal 2020-05-19  1466  
197b88fecc50ee Miquel Raynal 2020-05-19  1467  	return 0;
197b88fecc50ee Miquel Raynal 2020-05-19  1468  
197b88fecc50ee Miquel Raynal 2020-05-19  1469  disable_bus_clk:
197b88fecc50ee Miquel Raynal 2020-05-19  1470  	clk_disable_unprepare(nfc->bus_clk);
197b88fecc50ee Miquel Raynal 2020-05-19  1471  
197b88fecc50ee Miquel Raynal 2020-05-19  1472  disable_controller_clk:
197b88fecc50ee Miquel Raynal 2020-05-19  1473  	clk_disable_unprepare(nfc->controller_clk);
197b88fecc50ee Miquel Raynal 2020-05-19  1474  
197b88fecc50ee Miquel Raynal 2020-05-19  1475  	return ret;
197b88fecc50ee Miquel Raynal 2020-05-19  1476  }
197b88fecc50ee Miquel Raynal 2020-05-19  1477  

:::::: The code at line 1453 was first introduced by commit
:::::: 61622f6791a1f4ac2b84b93f4e8bf5ca20d105aa mtd: rawnand: arasan: Use the right DMA mask

:::::: TO: Miquel Raynal <miquel.raynal@bootlin.com>
:::::: CC: Miquel Raynal <miquel.raynal@bootlin.com>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202106161802.0TPrXeZY-lkp%40intel.com.

--zhXaljGHf11kAtnf
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
7CZ2IFa6HTyFnYg6eZv2L5KWpO/4uwEA

--zhXaljGHf11kAtnf--
