Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBMPZ734QKGQE7FJ7QVA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3b.google.com (mail-yb1-xb3b.google.com [IPv6:2607:f8b0:4864:20::b3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A2A824D4E5
	for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 14:23:16 +0200 (CEST)
Received: by mail-yb1-xb3b.google.com with SMTP id w17sf1957056ybl.9
        for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 05:23:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598012595; cv=pass;
        d=google.com; s=arc-20160816;
        b=KlhAt3JIrIFlipNp3mslsKNCL/O4p3BpHnjj3hr+i/p4u1BbP84VaKQmXbjoNqUpfJ
         7n4hGLpVKinlN+0t6hLfyQqVC8btuOVtFqbSEqGMot0UlRfzRXkHYESp4lOXNGaTN8W9
         8iutub860Db1tcm1/VXAqLn1mdyj2+tAQTst1VTC7eYbBicPSpdnzOsIb8SDE3fX+7m1
         JY+HkelL7En1+6nta59XgYvrpH5px/v0VBUR53yW9VnJ+DkA41Zg92+IH3gU1xW5LICE
         qzxhlRgoQMcK5+UEYIIhqVsvhRBsbqpWmC608v5k0aAAZ6C26XJMaN+gz2JHTVAITsOL
         suHA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=h1qMB02wqdF+UavceGj1z0OUjCEskBeO3wyxbcNUORA=;
        b=uPIYpdz0rz5Xp+WZuDLP6AkWj2qolVL8Ke2qzAg9k/hR3FLzMieGpUJvHm6M7i6tuM
         i8FFvLNtn22rcL2KS/Wgd0kGiixtND/QVUodlBLqQlr1Bg1rNLv1BnG989onXb7Yws0i
         QKEA9q4YGgp9vT+cAaVS+5/qXMxFLdR3sn8K87MJkIPXEHMUbfWKQ9zgeXpcIWg5oFDQ
         pUtE1FOMqjSmz/gMRpmZeZ51I3DPyoNq4LGE/H2PaX60mhP7b0FS27Ql4TQehkRkvN2h
         3dEV1ZjlvrPsIVsuDvU15/lRfKLEPIfWTFNmLjUDsqMnEqJPk41dpu9zsdkHE3IS+Xpb
         qoWA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=h1qMB02wqdF+UavceGj1z0OUjCEskBeO3wyxbcNUORA=;
        b=FjqWVftxD6TwL6aCNY7i36ihBg2wCr1j+xIzNkjHcINIzXeQGHQ57U+HAj1SFpyu7E
         /a/RfjywY3xDTNfe7QaTDf+oZqoMOuh2vIkGUPCDPg4MY1f/2A6Sd0wEaQq3wbMr5PKc
         kWSWBBXz6i5U15zmbY4y7zz79ON24OgbbJ3yZvdy6r5FoGWTyGxbXe4olmhidG/0mxAl
         2VUZXzc2iXIMtLhpiCv/i2BFx/FticlXRZVj/OrZXyzlt8z/vhVcmY+iWWtu1sXZeO95
         TsatAt+61oPjCvg5eQ4BCFpW9PYsnyQbBOxj4bghavuPRSDvPuYEeNJ1pB5hdrB3al+m
         t7pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=h1qMB02wqdF+UavceGj1z0OUjCEskBeO3wyxbcNUORA=;
        b=O8d8UffmatBfdrNQzpanQroVh+IFhZbpMlIZ36apbjXpjnFeqd+/xpu+qL3VJO4htb
         +8MIXq2JRJanMa6+k+o2TrLrtD4h2KNWZNyBNk+BThW7YZ+c2sC6FwTaGqmHTiWzPVPt
         npsZVZaFcztrKrAfY/FcerenHrNvkDgoysE0TKdWpUt0EzLVXF4jWZIdoln2xAuB28Ub
         RkaLx2pXTZ41wkrjWbBM3JlbgBHUMAt7RmpkMEN5b5sH/tKz6uyK3ikKMFQBaUaQye4I
         LkPpUPCqth5wQSz+5hH4bQYZXGct0eG9HHod5M4hYI7aX6cApIWSg973IqYirMMZEDA1
         0uNA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533VS/3I0IKEiNahoCAlGhLMwmN2xsT0keZ37Vme/Dr0X8FL3KI/
	A0p+7bu9B0Qejm48jv3gALs=
X-Google-Smtp-Source: ABdhPJz7sXd1beYX3Yu9u9yJHWdErKiSRXE57JrYqZ5MRfnezJL9WswtDwAtA4iWu08va3RPAc5gRQ==
X-Received: by 2002:a25:aa89:: with SMTP id t9mr3423022ybi.313.1598012593946;
        Fri, 21 Aug 2020 05:23:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:5755:: with SMTP id l82ls721402ybb.5.gmail; Fri, 21 Aug
 2020 05:23:13 -0700 (PDT)
X-Received: by 2002:a25:d707:: with SMTP id o7mr3374819ybg.418.1598012593457;
        Fri, 21 Aug 2020 05:23:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598012593; cv=none;
        d=google.com; s=arc-20160816;
        b=VoFFx+Bz6HRKZ6BR0pCyp9FomjtYnpBBmGDYlfZiyp7UmUWXfuDiMUlUHrFyqIb573
         pzjKB/i84tsZbxW4T1cutJq9MfV7E80WJ56wd8yQPHwgsNZZSNhW7Tvsmx8XW4WrByfx
         Gwko8cIAv+dXerjWLgBGwQWTFE3EsnVk9YMFJfo3kDaQ6MWw5enCjpTejGGLUYjnQalA
         YWbah3+fbpiGUhH3flCiRF5QqxDGw5YRCrJMPeaJhghAIYWLSID3SKVZuXU6E8puV3VM
         GUiN9/h32e5J8oshkdLABMt/Q1rTo2wPlLqix6zr0J3Vkz0h3ufKJv94XfkVxdXJxB6x
         KTcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=1w9i3oiBg3OT2wEuvgYJrPpOC+BrYibcBF9vFFCVOek=;
        b=w2vyk67ifQRoQktZOMCYx5XLzJR+JHeQPlvTiOj9jlYWEGZv6rW0B55t/2oMFDVcaf
         xzpz0VgJp+5vgfydcDOdmWcdsMTUH7/H+uWCQLGvFrcqqL5iwDu4THV+sSGm0EyyJasr
         SRqrqITBLZV9bwSdaQzCXRq99pjN43E/1SP3Iqll4wXfZjUvqZ17IDw81KwNr8lmg4V8
         K4yOEEmjOxRFWEqhn1/gpIB45kyF2Yjyo8/xbLBlzcW2l2Jx+YHHLDUUgPowAfZCw8b6
         yqC823lexM1nMxrYzaY/fCoJlm1UPlMWmMYKpbVW8rfHBiF3CfuGg9s0FtiiEoHUDi9J
         Bgtg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga18.intel.com (mga18.intel.com. [134.134.136.126])
        by gmr-mx.google.com with ESMTPS id i144si100501yba.4.2020.08.21.05.23.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 21 Aug 2020 05:23:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) client-ip=134.134.136.126;
IronPort-SDR: jXJ00YuIQv3kuvK/cT8etfjg3o0E25ww2lcV9y/yVHPDl7rmaPzoVwuDye8G3GqIuylDUxiz22
 uzgmWNC55ahQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9719"; a="143157555"
X-IronPort-AV: E=Sophos;i="5.76,335,1592895600"; 
   d="gz'50?scan'50,208,50";a="143157555"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Aug 2020 05:23:11 -0700
IronPort-SDR: 6SLQL7eWnwj8LWUCVupU4xz93XkbLBRVCgx5nczO7eXNIwjoMTHZeYOd/7vzSC3SHvkQBaAHC3
 i8iI+Ck+102w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,335,1592895600"; 
   d="gz'50?scan'50,208,50";a="473031927"
Received: from lkp-server01.sh.intel.com (HELO 91ed66e1ca04) ([10.239.97.150])
  by orsmga005.jf.intel.com with ESMTP; 21 Aug 2020 05:23:09 -0700
Received: from kbuild by 91ed66e1ca04 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1k964b-00010r-3W; Fri, 21 Aug 2020 12:23:09 +0000
Date: Fri, 21 Aug 2020 20:22:37 +0800
From: kernel test robot <lkp@intel.com>
To: Herbert Xu <herbert@gondor.apana.org.au>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-crypto@vger.kernel.org
Subject: [cryptodev:master 2/35] drivers/crypto/stm32/stm32-crc32.c:128:2:
 error: implicit declaration of function 'writel_relaxed'
Message-ID: <202008212033.z5PbDJuy%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="yrj/dFKFPuw6o+aM"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted
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


--yrj/dFKFPuw6o+aM
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/herbert/cryptodev-2.6.git master
head:   3d29e98d1d7550fc959a7ad4258bd804b533b493
commit: 0c3dc787a62aef3ca7aedf3797ec42fff9b0a913 [2/35] crypto: algapi - Remove skbuff.h inclusion
config: arm-randconfig-r016-20200820 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project b587ca93be114d07ec3bf654add97d7872325281)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install arm cross compiling tool for clang build
        # apt-get install binutils-arm-linux-gnueabi
        git checkout 0c3dc787a62aef3ca7aedf3797ec42fff9b0a913
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> drivers/crypto/stm32/stm32-crc32.c:128:2: error: implicit declaration of function 'writel_relaxed' [-Werror,-Wimplicit-function-declaration]
           writel_relaxed(bitrev32(mctx->key), crc->regs + CRC_INIT);
           ^
>> drivers/crypto/stm32/stm32-crc32.c:134:17: error: implicit declaration of function 'readl_relaxed' [-Werror,-Wimplicit-function-declaration]
           ctx->partial = readl_relaxed(crc->regs + CRC_DR);
                          ^
   drivers/crypto/stm32/stm32-crc32.c:134:17: note: did you mean 'writel_relaxed'?
   drivers/crypto/stm32/stm32-crc32.c:128:2: note: 'writel_relaxed' declared here
           writel_relaxed(bitrev32(mctx->key), crc->regs + CRC_INIT);
           ^
   drivers/crypto/stm32/stm32-crc32.c:166:2: error: implicit declaration of function 'writel_relaxed' [-Werror,-Wimplicit-function-declaration]
           writel_relaxed(bitrev32(ctx->partial), crc->regs + CRC_INIT);
           ^
>> drivers/crypto/stm32/stm32-crc32.c:176:4: error: implicit declaration of function 'writeb_relaxed' [-Werror,-Wimplicit-function-declaration]
                           writeb_relaxed(*d8++, crc->regs + CRC_DR);
                           ^
   drivers/crypto/stm32/stm32-crc32.c:176:4: note: did you mean 'writel_relaxed'?
   drivers/crypto/stm32/stm32-crc32.c:128:2: note: 'writel_relaxed' declared here
           writel_relaxed(bitrev32(mctx->key), crc->regs + CRC_INIT);
           ^
   drivers/crypto/stm32/stm32-crc32.c:192:4: error: implicit declaration of function 'writeb_relaxed' [-Werror,-Wimplicit-function-declaration]
                           writeb_relaxed(*d8++, crc->regs + CRC_DR);
                           ^
   drivers/crypto/stm32/stm32-crc32.c:196:17: error: implicit declaration of function 'readl_relaxed' [-Werror,-Wimplicit-function-declaration]
           ctx->partial = readl_relaxed(crc->regs + CRC_DR);
                          ^
   6 errors generated.
--
>> drivers/crypto/stm32/stm32-hash.c:492:18: error: implicit declaration of function 'dma_map_sg' [-Werror,-Wimplicit-function-declaration]
                   rctx->dma_ct = dma_map_sg(hdev->dev, &rctx->sg_key, 1,
                                  ^
>> drivers/crypto/stm32/stm32-hash.c:493:8: error: use of undeclared identifier 'DMA_TO_DEVICE'
                                             DMA_TO_DEVICE);
                                             ^
>> drivers/crypto/stm32/stm32-hash.c:501:3: error: implicit declaration of function 'dma_unmap_sg' [-Werror,-Wimplicit-function-declaration]
                   dma_unmap_sg(hdev->dev, &rctx->sg_key, 1, DMA_TO_DEVICE);
                   ^
   drivers/crypto/stm32/stm32-hash.c:501:3: note: did you mean 'dma_map_sg'?
   drivers/crypto/stm32/stm32-hash.c:492:18: note: 'dma_map_sg' declared here
                   rctx->dma_ct = dma_map_sg(hdev->dev, &rctx->sg_key, 1,
                                  ^
   drivers/crypto/stm32/stm32-hash.c:501:45: error: use of undeclared identifier 'DMA_TO_DEVICE'
                   dma_unmap_sg(hdev->dev, &rctx->sg_key, 1, DMA_TO_DEVICE);
                                                             ^
   drivers/crypto/stm32/stm32-hash.c:588:18: error: implicit declaration of function 'dma_map_sg' [-Werror,-Wimplicit-function-declaration]
                   rctx->dma_ct = dma_map_sg(hdev->dev, sg, 1,
                                  ^
   drivers/crypto/stm32/stm32-hash.c:589:8: error: use of undeclared identifier 'DMA_TO_DEVICE'
                                             DMA_TO_DEVICE);
                                             ^
   drivers/crypto/stm32/stm32-hash.c:598:3: error: implicit declaration of function 'dma_unmap_sg' [-Werror,-Wimplicit-function-declaration]
                   dma_unmap_sg(hdev->dev, sg, 1, DMA_TO_DEVICE);
                   ^
   drivers/crypto/stm32/stm32-hash.c:598:34: error: use of undeclared identifier 'DMA_TO_DEVICE'
                   dma_unmap_sg(hdev->dev, sg, 1, DMA_TO_DEVICE);
                                                  ^
   8 errors generated.

# https://git.kernel.org/pub/scm/linux/kernel/git/herbert/cryptodev-2.6.git/commit/?id=0c3dc787a62aef3ca7aedf3797ec42fff9b0a913
git remote add cryptodev https://git.kernel.org/pub/scm/linux/kernel/git/herbert/cryptodev-2.6.git
git fetch --no-tags cryptodev master
git checkout 0c3dc787a62aef3ca7aedf3797ec42fff9b0a913
vim +/writel_relaxed +128 drivers/crypto/stm32/stm32-crc32.c

10b89c43a64eb0d drivers/crypto/stm32/stm32-crc32.c Nicolas Toromanoff    2020-05-12  111  
10b89c43a64eb0d drivers/crypto/stm32/stm32-crc32.c Nicolas Toromanoff    2020-05-12  112  static int stm32_crc_init(struct shash_desc *desc)
10b89c43a64eb0d drivers/crypto/stm32/stm32-crc32.c Nicolas Toromanoff    2020-05-12  113  {
10b89c43a64eb0d drivers/crypto/stm32/stm32-crc32.c Nicolas Toromanoff    2020-05-12  114  	struct stm32_crc_desc_ctx *ctx = shash_desc_ctx(desc);
10b89c43a64eb0d drivers/crypto/stm32/stm32-crc32.c Nicolas Toromanoff    2020-05-12  115  	struct stm32_crc_ctx *mctx = crypto_shash_ctx(desc->tfm);
10b89c43a64eb0d drivers/crypto/stm32/stm32-crc32.c Nicolas Toromanoff    2020-05-12  116  	struct stm32_crc *crc;
7795c0baf5ac25e drivers/crypto/stm32/stm32-crc32.c Nicolas Toromanoff    2020-05-12  117  	unsigned long flags;
10b89c43a64eb0d drivers/crypto/stm32/stm32-crc32.c Nicolas Toromanoff    2020-05-12  118  
10b89c43a64eb0d drivers/crypto/stm32/stm32-crc32.c Nicolas Toromanoff    2020-05-12  119  	crc = stm32_crc_get_next_crc();
10b89c43a64eb0d drivers/crypto/stm32/stm32-crc32.c Nicolas Toromanoff    2020-05-12  120  	if (!crc)
10b89c43a64eb0d drivers/crypto/stm32/stm32-crc32.c Nicolas Toromanoff    2020-05-12  121  		return -ENODEV;
10b89c43a64eb0d drivers/crypto/stm32/stm32-crc32.c Nicolas Toromanoff    2020-05-12  122  
49c2c082e00e0bc drivers/crypto/stm32/stm32-crc32.c Nicolas Toromanoff    2020-05-12  123  	pm_runtime_get_sync(crc->dev);
73463ade0a57d2c drivers/crypto/stm32/stm32_crc32.c lionel.debieve@st.com 2018-06-26  124  
7795c0baf5ac25e drivers/crypto/stm32/stm32-crc32.c Nicolas Toromanoff    2020-05-12  125  	spin_lock_irqsave(&crc->lock, flags);
7795c0baf5ac25e drivers/crypto/stm32/stm32-crc32.c Nicolas Toromanoff    2020-05-12  126  
b51dbe90912a0ce drivers/crypto/stm32/stm32_crc32.c Fabien DESSENNE       2017-03-21  127  	/* Reset, set key, poly and configure in bit reverse mode */
49c2c082e00e0bc drivers/crypto/stm32/stm32-crc32.c Nicolas Toromanoff    2020-05-12 @128  	writel_relaxed(bitrev32(mctx->key), crc->regs + CRC_INIT);
49c2c082e00e0bc drivers/crypto/stm32/stm32-crc32.c Nicolas Toromanoff    2020-05-12  129  	writel_relaxed(bitrev32(mctx->poly), crc->regs + CRC_POL);
49c2c082e00e0bc drivers/crypto/stm32/stm32-crc32.c Nicolas Toromanoff    2020-05-12  130  	writel_relaxed(CRC_CR_RESET | CRC_CR_REV_IN_WORD | CRC_CR_REV_OUT,
49c2c082e00e0bc drivers/crypto/stm32/stm32-crc32.c Nicolas Toromanoff    2020-05-12  131  		       crc->regs + CRC_CR);
b51dbe90912a0ce drivers/crypto/stm32/stm32_crc32.c Fabien DESSENNE       2017-03-21  132  
b51dbe90912a0ce drivers/crypto/stm32/stm32_crc32.c Fabien DESSENNE       2017-03-21  133  	/* Store partial result */
49c2c082e00e0bc drivers/crypto/stm32/stm32-crc32.c Nicolas Toromanoff    2020-05-12 @134  	ctx->partial = readl_relaxed(crc->regs + CRC_DR);
b51dbe90912a0ce drivers/crypto/stm32/stm32_crc32.c Fabien DESSENNE       2017-03-21  135  
7795c0baf5ac25e drivers/crypto/stm32/stm32-crc32.c Nicolas Toromanoff    2020-05-12  136  	spin_unlock_irqrestore(&crc->lock, flags);
7795c0baf5ac25e drivers/crypto/stm32/stm32-crc32.c Nicolas Toromanoff    2020-05-12  137  
49c2c082e00e0bc drivers/crypto/stm32/stm32-crc32.c Nicolas Toromanoff    2020-05-12  138  	pm_runtime_mark_last_busy(crc->dev);
49c2c082e00e0bc drivers/crypto/stm32/stm32-crc32.c Nicolas Toromanoff    2020-05-12  139  	pm_runtime_put_autosuspend(crc->dev);
73463ade0a57d2c drivers/crypto/stm32/stm32_crc32.c lionel.debieve@st.com 2018-06-26  140  
b51dbe90912a0ce drivers/crypto/stm32/stm32_crc32.c Fabien DESSENNE       2017-03-21  141  	return 0;
b51dbe90912a0ce drivers/crypto/stm32/stm32_crc32.c Fabien DESSENNE       2017-03-21  142  }
b51dbe90912a0ce drivers/crypto/stm32/stm32_crc32.c Fabien DESSENNE       2017-03-21  143  
7795c0baf5ac25e drivers/crypto/stm32/stm32-crc32.c Nicolas Toromanoff    2020-05-12  144  static int burst_update(struct shash_desc *desc, const u8 *d8,
7795c0baf5ac25e drivers/crypto/stm32/stm32-crc32.c Nicolas Toromanoff    2020-05-12  145  			size_t length)
b51dbe90912a0ce drivers/crypto/stm32/stm32_crc32.c Fabien DESSENNE       2017-03-21  146  {
b51dbe90912a0ce drivers/crypto/stm32/stm32_crc32.c Fabien DESSENNE       2017-03-21  147  	struct stm32_crc_desc_ctx *ctx = shash_desc_ctx(desc);
49c2c082e00e0bc drivers/crypto/stm32/stm32-crc32.c Nicolas Toromanoff    2020-05-12  148  	struct stm32_crc_ctx *mctx = crypto_shash_ctx(desc->tfm);
49c2c082e00e0bc drivers/crypto/stm32/stm32-crc32.c Nicolas Toromanoff    2020-05-12  149  	struct stm32_crc *crc;
7795c0baf5ac25e drivers/crypto/stm32/stm32-crc32.c Nicolas Toromanoff    2020-05-12  150  	unsigned long flags;
49c2c082e00e0bc drivers/crypto/stm32/stm32-crc32.c Nicolas Toromanoff    2020-05-12  151  
10b89c43a64eb0d drivers/crypto/stm32/stm32-crc32.c Nicolas Toromanoff    2020-05-12  152  	crc = stm32_crc_get_next_crc();
10b89c43a64eb0d drivers/crypto/stm32/stm32-crc32.c Nicolas Toromanoff    2020-05-12  153  	if (!crc)
10b89c43a64eb0d drivers/crypto/stm32/stm32-crc32.c Nicolas Toromanoff    2020-05-12  154  		return -ENODEV;
b51dbe90912a0ce drivers/crypto/stm32/stm32_crc32.c Fabien DESSENNE       2017-03-21  155  
73463ade0a57d2c drivers/crypto/stm32/stm32_crc32.c lionel.debieve@st.com 2018-06-26  156  	pm_runtime_get_sync(crc->dev);
73463ade0a57d2c drivers/crypto/stm32/stm32_crc32.c lionel.debieve@st.com 2018-06-26  157  
7795c0baf5ac25e drivers/crypto/stm32/stm32-crc32.c Nicolas Toromanoff    2020-05-12  158  	spin_lock_irqsave(&crc->lock, flags);
7795c0baf5ac25e drivers/crypto/stm32/stm32-crc32.c Nicolas Toromanoff    2020-05-12  159  
49c2c082e00e0bc drivers/crypto/stm32/stm32-crc32.c Nicolas Toromanoff    2020-05-12  160  	/*
49c2c082e00e0bc drivers/crypto/stm32/stm32-crc32.c Nicolas Toromanoff    2020-05-12  161  	 * Restore previously calculated CRC for this context as init value
49c2c082e00e0bc drivers/crypto/stm32/stm32-crc32.c Nicolas Toromanoff    2020-05-12  162  	 * Restore polynomial configuration
49c2c082e00e0bc drivers/crypto/stm32/stm32-crc32.c Nicolas Toromanoff    2020-05-12  163  	 * Configure in register for word input data,
49c2c082e00e0bc drivers/crypto/stm32/stm32-crc32.c Nicolas Toromanoff    2020-05-12  164  	 * Configure out register in reversed bit mode data.
49c2c082e00e0bc drivers/crypto/stm32/stm32-crc32.c Nicolas Toromanoff    2020-05-12  165  	 */
49c2c082e00e0bc drivers/crypto/stm32/stm32-crc32.c Nicolas Toromanoff    2020-05-12  166  	writel_relaxed(bitrev32(ctx->partial), crc->regs + CRC_INIT);
49c2c082e00e0bc drivers/crypto/stm32/stm32-crc32.c Nicolas Toromanoff    2020-05-12  167  	writel_relaxed(bitrev32(mctx->poly), crc->regs + CRC_POL);
49c2c082e00e0bc drivers/crypto/stm32/stm32-crc32.c Nicolas Toromanoff    2020-05-12  168  	writel_relaxed(CRC_CR_RESET | CRC_CR_REV_IN_WORD | CRC_CR_REV_OUT,
49c2c082e00e0bc drivers/crypto/stm32/stm32-crc32.c Nicolas Toromanoff    2020-05-12  169  		       crc->regs + CRC_CR);
49c2c082e00e0bc drivers/crypto/stm32/stm32-crc32.c Nicolas Toromanoff    2020-05-12  170  
49c2c082e00e0bc drivers/crypto/stm32/stm32-crc32.c Nicolas Toromanoff    2020-05-12  171  	if (d8 != PTR_ALIGN(d8, sizeof(u32))) {
49c2c082e00e0bc drivers/crypto/stm32/stm32-crc32.c Nicolas Toromanoff    2020-05-12  172  		/* Configure for byte data */
49c2c082e00e0bc drivers/crypto/stm32/stm32-crc32.c Nicolas Toromanoff    2020-05-12  173  		writel_relaxed(CRC_CR_REV_IN_BYTE | CRC_CR_REV_OUT,
49c2c082e00e0bc drivers/crypto/stm32/stm32-crc32.c Nicolas Toromanoff    2020-05-12  174  			       crc->regs + CRC_CR);
49c2c082e00e0bc drivers/crypto/stm32/stm32-crc32.c Nicolas Toromanoff    2020-05-12  175  		while (d8 != PTR_ALIGN(d8, sizeof(u32)) && length) {
49c2c082e00e0bc drivers/crypto/stm32/stm32-crc32.c Nicolas Toromanoff    2020-05-12 @176  			writeb_relaxed(*d8++, crc->regs + CRC_DR);
b51dbe90912a0ce drivers/crypto/stm32/stm32_crc32.c Fabien DESSENNE       2017-03-21  177  			length--;
b51dbe90912a0ce drivers/crypto/stm32/stm32_crc32.c Fabien DESSENNE       2017-03-21  178  		}
49c2c082e00e0bc drivers/crypto/stm32/stm32-crc32.c Nicolas Toromanoff    2020-05-12  179  		/* Configure for word data */
49c2c082e00e0bc drivers/crypto/stm32/stm32-crc32.c Nicolas Toromanoff    2020-05-12  180  		writel_relaxed(CRC_CR_REV_IN_WORD | CRC_CR_REV_OUT,
49c2c082e00e0bc drivers/crypto/stm32/stm32-crc32.c Nicolas Toromanoff    2020-05-12  181  			       crc->regs + CRC_CR);
b51dbe90912a0ce drivers/crypto/stm32/stm32_crc32.c Fabien DESSENNE       2017-03-21  182  	}
b51dbe90912a0ce drivers/crypto/stm32/stm32_crc32.c Fabien DESSENNE       2017-03-21  183  
49c2c082e00e0bc drivers/crypto/stm32/stm32-crc32.c Nicolas Toromanoff    2020-05-12  184  	for (; length >= sizeof(u32); d8 += sizeof(u32), length -= sizeof(u32))
49c2c082e00e0bc drivers/crypto/stm32/stm32-crc32.c Nicolas Toromanoff    2020-05-12  185  		writel_relaxed(*((u32 *)d8), crc->regs + CRC_DR);
49c2c082e00e0bc drivers/crypto/stm32/stm32-crc32.c Nicolas Toromanoff    2020-05-12  186  
49c2c082e00e0bc drivers/crypto/stm32/stm32-crc32.c Nicolas Toromanoff    2020-05-12  187  	if (length) {
49c2c082e00e0bc drivers/crypto/stm32/stm32-crc32.c Nicolas Toromanoff    2020-05-12  188  		/* Configure for byte data */
49c2c082e00e0bc drivers/crypto/stm32/stm32-crc32.c Nicolas Toromanoff    2020-05-12  189  		writel_relaxed(CRC_CR_REV_IN_BYTE | CRC_CR_REV_OUT,
49c2c082e00e0bc drivers/crypto/stm32/stm32-crc32.c Nicolas Toromanoff    2020-05-12  190  			       crc->regs + CRC_CR);
49c2c082e00e0bc drivers/crypto/stm32/stm32-crc32.c Nicolas Toromanoff    2020-05-12  191  		while (length--)
49c2c082e00e0bc drivers/crypto/stm32/stm32-crc32.c Nicolas Toromanoff    2020-05-12  192  			writeb_relaxed(*d8++, crc->regs + CRC_DR);
49c2c082e00e0bc drivers/crypto/stm32/stm32-crc32.c Nicolas Toromanoff    2020-05-12  193  	}
b51dbe90912a0ce drivers/crypto/stm32/stm32_crc32.c Fabien DESSENNE       2017-03-21  194  
b51dbe90912a0ce drivers/crypto/stm32/stm32_crc32.c Fabien DESSENNE       2017-03-21  195  	/* Store partial result */
391775191f38f80 drivers/crypto/stm32/stm32_crc32.c lionel.debieve@st.com 2017-07-13  196  	ctx->partial = readl_relaxed(crc->regs + CRC_DR);
b51dbe90912a0ce drivers/crypto/stm32/stm32_crc32.c Fabien DESSENNE       2017-03-21  197  
7795c0baf5ac25e drivers/crypto/stm32/stm32-crc32.c Nicolas Toromanoff    2020-05-12  198  	spin_unlock_irqrestore(&crc->lock, flags);
7795c0baf5ac25e drivers/crypto/stm32/stm32-crc32.c Nicolas Toromanoff    2020-05-12  199  
73463ade0a57d2c drivers/crypto/stm32/stm32_crc32.c lionel.debieve@st.com 2018-06-26  200  	pm_runtime_mark_last_busy(crc->dev);
73463ade0a57d2c drivers/crypto/stm32/stm32_crc32.c lionel.debieve@st.com 2018-06-26  201  	pm_runtime_put_autosuspend(crc->dev);
73463ade0a57d2c drivers/crypto/stm32/stm32_crc32.c lionel.debieve@st.com 2018-06-26  202  
b51dbe90912a0ce drivers/crypto/stm32/stm32_crc32.c Fabien DESSENNE       2017-03-21  203  	return 0;
b51dbe90912a0ce drivers/crypto/stm32/stm32_crc32.c Fabien DESSENNE       2017-03-21  204  }
b51dbe90912a0ce drivers/crypto/stm32/stm32_crc32.c Fabien DESSENNE       2017-03-21  205  

:::::: The code at line 128 was first introduced by commit
:::::: 49c2c082e00e0bc4f5cbb7c21c7f0f873b35ab09 crypto: stm32/crc32 - fix ext4 chksum BUG_ON()

:::::: TO: Nicolas Toromanoff <nicolas.toromanoff@st.com>
:::::: CC: Herbert Xu <herbert@gondor.apana.org.au>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202008212033.z5PbDJuy%25lkp%40intel.com.

--yrj/dFKFPuw6o+aM
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICEG2P18AAy5jb25maWcAjFxbd9u4rn6fX+HVednnYdo4t7bnrDxQEmVzLIkKKTlOXrTc
RO34TBL3OE5n+u8PQN1ICsrMrLV3awAEbyDwAaT66y+/ztjrcf+0Pe7ut4+PP2ff6uf6sD3W
D7Ovu8f6f2aRnGWymPFIFO9BONk9v/79YXt4ml28//z+5LfD/Xy2qg/P9eMs3D9/3X17hca7
/fMvv/4SyiwWiyoMqzVXWsisKvimuHp3/7h9/jb7UR9eQG42P31/8v5k9p9vu+N/f/gA//+0
Oxz2hw+Pjz+equ+H/f/W98fZl4tPH++3n8++1PP5+cPJx/r+7MvXy4vz7cPD548PHz99PD07
vTj9NP+vd12vi6Hbq5OOmERjGsgJXYUJyxZXPy1BICZJNJCMRN98fnoC/1k6lkxXTKfVQhbS
auQyKlkWeVmQfJElIuMDS6jr6kaqFVBgLX+dLcy+PM5e6uPr92F1AyVXPKtgcXWaW60zUVQ8
W1dMwWxEKoqrs1PQ0vUr01wkHDZEF7Pdy+x5f0TF/fRlyJJuqu/eUeSKlfZEg1LAmmmWFJb8
kq15teIq40m1uBPW8GxOcpcymrO5m2ohpxjnA8PtuJ+61as9c5+/uXuLCyN4m31OrGrEY1Ym
hdkba5U68lLqImMpv3r3n+f9cw2m3KvVt3ot8pDQmUstNlV6XfLSsh2bio3DIrGX4IYV4bIy
XEJlqXkigkEZK+Hoe+vNFCgwDNTOksQTH6jGdsGWZy+vX15+vhzrp8F2FzzjSoTG1HMlA2sG
Nksv5c00p0r4mic0n8cxDwuBA47jKmV6RcuJ7HeUA2O3pqkiYOlK31SKa55FdNNwads1UiKZ
MpG5NC1SSqhaCq5wLW/HylMtUHKSMepnybIIjnSr2WmK4rFUIY+qYqk4i4Tt7HTOlOZ0Z6Yj
HpSLWBsLqp8fZvuv3oZSjVIwadGOSY31huBLVrBxWaE7Iyl2TxASKDspRLgCD8dhu21DvKty
0CUjEdrGnUnkCOiWsG34A2NQVSgWrpxF8DnNeo0UEzqXYrFEE4FhpuAb7WUaTak/oIrzNC9A
Z+b00dHXMimzgqlb0su0UpQ7aNuHEpp3Cxvm5Ydi+/Ln7AjDmW1haC/H7fFltr2/378+H3fP
34alXgsFrfOyYqHR0axR37PZCZdNjIJQghtvK0ITwfWaUNTLBTpC1xByrVG0IIUKONi6YIWm
V0sLl95uzr9YFrN8KixnmjLK7LYC3mBC8KPiG7BJy0i1I2HatCR39MbuuFGB57NKA3LM7lj6
471q/mId+FVvEDK0yUtQ3hhpH9MxeMfgSkVcXJ2eDJYksmIFET3mnsz8zD/MOlyCZzFHurM5
ff9H/fD6WB9mX+vt8fVQvxhyOw2C25/DhZJlbg0wZwve2LPtR1Keho5lBsmqbUsde8Noxjno
iJlQlcsZAFKsqwCc142IiiVpVmDiVltSpO02FxFtmS1fRRNQpOXHcKjvuJqeV8TXwvVVLQNM
fPLQdIPjKp7WHOQxodYEBKKRluGql2GFheoQ10CYgWM80MpCV5n1GwCO8xtwiGoIw1EWEVDI
6WS88FjdmJc8XOUSrBmddCGVhTIaw0UkawZtdwUIBkwg4uBRQ1ZMbLDiCbsl+kRjhE0xSE9Z
Fmd+sxQUa1lieBlQoIpGSBVIAZBOiQ6A1cJmW3pDhScjauFl8/vca3mni4iah5QYS1zfAjmL
zMF3izuOQdJYkFQpyzwT9MQ0/IWymQ6d2vCyFNH80koujBW2P3oP2/dkpAnVBoKgFTn7uuAF
AsGqhajkvjabT0h0nqPBNT7g7gGA40P931WWCjtxspY2YIDD4tKG03EJsMT7CefAWo9c2vJa
LDKWxJbRmVHZBAO7bAIT0onNsirVVEBm0Vpo3q0NdeDANQdMKWG76xXK3qZ6TKmc5KGnmpXA
44Xo3bGEapxxYDKCafTQMwhlADKbwz4YuubXxIChFY8iOzIYI0S7rnqI2m0hEsGmqnUKY5AO
8szD+YmT95mQ1xZH8vrwdX942j7f1zP+o34GoMEgGIYINQAjDrjC7bZXbnzuqHsSJPzLHgfd
67TpsAuzpBuVac6KKjAFieGgJCygT1BSBtRpT6SVWWJr2DQFAb5Ngi3esoxjSGdM+DdzZeC7
7b7TlOWGc1OVGXpWwRLwMZQfA5MpeGpiElZwRCxAW5PuWaBaxiIZmX27pm71ZbA8K62DTipd
5rlUENhYDmsKDoi5WSXkEEKiBCSjVtoI4DVcNQiw1WADtHAFYWjM6NDX8oZDBkIw4JSIQEHw
gtWFOOUdmH6opUm9bRtfwkxkHGteXJ38fXLy6cSudXXaHceVLwoWwG6ZXFxfnbYg0MDUWfHz
e90kIt3GlcQemUGZPVUZBD4BI0shvf30Fp9truaX1maA98sWCZYn0vXH1N5d05oHms3nJ7Rf
MwL557PNZpofQzwMlIgWfFomkus3uGYAb4xAn4Wn528NgRWf55Ortwk7/B3VP3Zw7o+Hup7t
nx9hJdpccH841n//xj60f0ln25efT0/18bC7nz29Ph533w/7+/rlBdKf2ffH7RFdyIu9ewDy
KpFuPtKIqOOWCYXDkbuOL+cng+WsG3+Wi6IJVL6VFunZqXPqWUeNz08/U+HHErj8PNH04/kl
OXxb5PJt7cuP52djC4uBM7U9CQSIT5uNN8M016fdruXN2u8P3ZnpnC/k0o1BW4RiWaaBzJJb
ggxnP8cD6bLOTn/4SligsAoBR9Kl54aR8AULPf0hrACHJjlFHg0SCFVWpqa49PnEn2U85IbW
ITYzcKAkKAowUGeRYBkVnEBANCOIhB5PPHqDFwDCj0RYjLk4lmTezqzJfS/s/YaAkjIEHZgc
x1xh66m9773tMA8njkL2gopyBukBVToGssFEhEM2PETXBE9xdJhrHkLs1FUhK5B1J5jmpV2x
sl222azgFetX37+Du7AzeJtsw5zxjpoAPhlNzOJkkIbngEF76vKuisUGENnJsERAm/KcwDp9
g3UxyTpzWw2Mi5MTe3uavmnZq4thNk0+uVRYJrMAONrzaXs3YK0+Z4GF44e6eh5n1Rpid+R5
ihsGEM2EX5ZUyxISmSTwNlNGJWKmxIasppCJsbK6kxmXKgInO5/bthciuKOqiWCNWMtzYFJL
e7t65yLR3igai9qD2P47XhJaZoJBQFppHkC1hTWJIRFvzgj4YFWGFui5M7mqkmlzyQiWNuYE
WhuGc4ZZnsN5BL1RQSHWMI3Mvdw76zpmI/J2N6kGimlAAaV9G4cVhuoO05koUvZxc9aiK9bO
8v1f9WGWbp+33+onAO598AZefKj/77V+vv85e7nfPja1W8dRxspNcux6J9G6VyweHmtfl19F
d3Q1DWzKaNxGX/y43x4NnNjvno+zGlBGd0Ns+Ow4e6y3L7AOz/XABTACpC819PtY3x/rB9v7
TKps4osZxlM/jLGx6VLnzo1OS+hKbY5rbll6BbuOaSV1UMAeE86d6g3QcNsNnW5yw1Yc0b0N
vS1qe207H9yLw12EdjOv51GFbjB5OzGhxxUmK2dEHeJvbpacrPTmusrlDeTbPIacSmAO2WZy
tGpPVb9q0xK2TzDAJPW8Yrc/udRajOI3Nhl2uzegSRNpLHZ3ePpre6hn0WH3w0nOTY4RpgKz
xUKG0rlWHZhmSZoZkIAA5XJHyYhlqbBcuVDpDVMcsYKTQC6kxLyn448YWAkxbrBwIU7Lxmq6
zLRMnHJJpxTcLW8QTq+HmNVIVS886m6dRx3iLepvh+3sa7fgD2bB7aM+IdB7An+rnM1Xt3nh
lLYaCoA5NkcJ0n0bCca1m9239HAJaJCdnlQQSTNCcy6T2/nZycWEdqYh4QFAlgIai3Ow7/6S
riswbA/3f+yO4PEgYP72UH+HeZIuzMAF2RQtuHckMJbigwyIyxDzbpj/8MIpQA64wxQgllIS
l+Q6zU0waK+PxwKGiZVIhLJl7g0Ii3MAQwoR33aV77HAClyBXzDvmS1AluqWHLkZVYsJqpul
KHgidOHpOTsNIMsEKFr5zxkUX8B2o5PHQgyiGnPfmPvLhAVEqkqI7Sm6ucJodHqAoMdzeOvR
3L93722I+bUQDc534tyCGQmjH12JQfleUcmmDyHN4eCySfIe16gPJ6/MDXv6rteWIq57PQmA
ru1ccx5igW7gN6hWG7PmCa42Vfw1HNhDiTcOnnK+wfKCZ7phAnAYkqpwBS4zsvZP4ksmsWjD
xtmIwbynIm1ptDEvnCUxOlNTA/8QuZc2GMrt2qtTeW38QijXv33ZvtQPsz8bNP39sP+685Ef
ik1j0n4YRqx1Gm3lfShxvtGTs5r4tC5PykWHBbwS6T94sD41hQONlxl25dFU/TWWtodcsN19
p5DTpDlNYpNIRpeiWqkye0uiPXT0nWKrQauwf/Q2cWHUSQoadLVsNBQFnuUtmaagnQqNpczh
3rQSqakfkE3LDI4GmOZtGsiEFimUSDu5Fd6wULWt9pwVAIJhWeXK9uNBe7vf/1wBUNECDuN1
yW1X2919BnpBEp23ZcNFacEXShS3b7Cqwq4bdmzMaZ2be/MQoEnaGsdKXZyj0E3gjRoIVXrt
d4HXLrGmqXTvuMYyZ9RBRHbz0LPimYEMjich2VUMNoFuqq8Sbg/HncmRsEzjFGdhwoUwjVi0
xhtZ6jYk1ZHUg+jQPY+FQx7gstejPd702sQAId1pAFlF9sNOJBrw3rwIlMMjEAvVQCshmypK
BM66fRE7nJGBvboN3J21ri8biSCm82C36wGZZfNhsHihZLZBAyQxLsQ2freixwoIOWEFyJvw
+xlshQTvkbA8xwONBQDEFuZQW8C+zzvN6vC/6/vX4/bLY20eYc/MPd7RWqdAZHFamJgXR7kd
LIEUOm8cWlEdKpH7iAhH2PJjyAgdQx7IlB0PXHxhvM7xrXFuXiEXjaX6isCjheR24WgRHJF7
NbUQZpXS+ml/+GnVG8YoGQcIsNFaaBxxJiOTqLiXcGZFEISae2R3x3WeQGzPCxOvAe3oq8/m
v95uDTSF+AXe2z5RpvipOBqKA3lMxb1qLy0b58w3CDqv5r0Ix1oX5lwArlZ2JpJwONlYlLaq
X7m008i7oLSAzt1ZLBMCs3Omkls4LqZIbI2ZK5M144M6Jx3E90DglpYpUytyt6Y3ZJiUfcW7
CmDWBc9MBO5sP6uPf+0Pf2J1Z7SdcGhWtobmdxUJtnDO7sb9hVm5PRNDw0Z0qCRfNWxiOxvE
XxCqF9Ij+a9NDBEjmIrhvE+oBVcSYO4kzFWL2zYVC7zBnWwJmwSJjgi1P7alR4A8Q9oZCL6X
WnGnw5b0Rp86dR48wM/pZdxEuXkQxgtqOYVjCSJvHuuETDtOCOhdHKuUBLRIxXIQyrPcUQa/
q2gZjolYjhhTFVPeyohcjCgLhRfpabnxGVVRZk5lv5f3V7dREigApDhVOnzBWpi5TrxMysBj
ypXg08/gRL4uBLFQyCsjerixLEeEYWr2Kz1kGusaRowkgKn0dJoRTdwwGG4/HrfR9AENc8xK
F29hnF4mLAM7PHYfW3T8q3f3r1929+9c7Wl04UH5fnPWl7b5rC9bu8SX17Fruh0PZhPLCV3t
Ezk8wVXEIn8NLmGlJ1f10l9zh+efd9NbKvJLdysvG+/gm0TDIjYGtXjW5TK1oPCCYU2ogyMx
1cKxyo4ypcd4kBxrVFjjpI9HIzh9vJop8MVlldw03UwNzQhBKAx9c8iTvq13/BMWkPrSvLBd
lfnpWVpDW5X4VRd+s6Wdw4qfiWGNCAOze4rzIscP1yCZjG/HTfLlralXQBRJc++lP8g01Sb6
WX7+BhPcRhSGpGnia2nbAeOvKgoWlQx+DzPH9zes9rg2Ls+sNx5OKjRNiWOt91/pxW8xaJ+L
Lf7lCN7qWU08Ay/oT7sAuVrgtMB7GTsodRTzpixMPU7C7G8JkZLmkrmUQJ1efnJeAg9U2Krx
DrdSyam9hfjL+UTIpq/PqIWymy+c2JvaP5qXVk4uYSiVWKRgSJmU+eRnI43gGpahLZrSX6q0
ck63TYkcA5Bm7mmiCOBtFtWnk9P5Nc1i6vPZ2ZzmBSpMsSiUOk8EPQEfQziNIepgjXIi2Hei
C33jviy3mfDnJJLoZLgnRIikxYqew0rfTXWtiuS8+ufeZcgTSYMlW+w6/KcxgjV8Pjs5o8ep
f8eneRdTYy0UEwl5HIyReRYw0KrF2jYui5E6jIiHDSS2XvwiZRr3JokDxuHnKblGrGDJiuRs
Tik/lrDceX2VL8ExUkH9MpE3ObNMtyVY3sBjZEtnyBYZ2kzgYVsoVmyR8uyfBZeSRqO2DEbY
6VkZkVQGInGqkjYXd8bJ6m0mAO0xYwEMvEtZRgqHSAtMtkQvb0DBaDq23n9cSFsYF/SNNbBF
jR1aYIdzjnZ8cU7Rqixp/2I+1xC4aSwhJZsckWQNBmY/0GyYE0e9+5DLlBKuX+vXevf87UNb
73O+dGylqzDwPDcSl0VAEGMdjqlNmHZ8BpJzJSjQ37ENWCU6VvZnCB1Rx8RodEw0L/h1QlCD
mBpiGFCZeccF/EdoYjivMX2h3DJ4R4+0XyzyBOBPuzzXt1NqTEyv6c71KqAZ4VKu+Jh8bVZu
vBwyIuF5x4+vGxGyLVtRSczQlLCmJbG+uSDGCx039LGRJeR3eMMWanJTxi90mjuEx+3Ly+7r
7t77BzywXZiMVAEJL+wEXdbtJIpQZBGnH7R3Msa1nL8pEt+8yS7JV9e9fr32qjkd9ZKaVAxu
583eJr8z7Zclj8f9oVq3OthxUvz3GKauFk1xxUi8OSYWUiG6NyERO+9gopB66xhlGr+RlPhv
fFgwHDwcMxdKFK376wQzYSQ98i4bBg75vs7ip22NkNDpow6fR3LMp372WCQA6jUAZm/BO/zW
ljQtRNdSuip0r6hnJJCo4P0duX/N3VkvTO9hIrKVV+VO88QtAhgKQH1nnw2txSmT5pNp2rSW
moKdxqTM8kR87Y4gOcN/YwOrYQ7rWhWO2ePvSqf0nbxhFiX1bs6w0qXwj1AWaqrc2X6IbMog
TniwGE1txAu5alMFpb6t3A8rg2vH8+OXiL+TtS7zjWKhOEvb++cr92ZjdqxfjiMokq8K759I
MNmHkjmg0EwU0qu1tFcuI50ew75GGRLcVLHIrEh7n3z/Z32cqe3Dbo9vPo77+/2jc63MvExh
uLwjP8cI3MONXw3yaKKQhB+ZkCqAHmlPT6pjfIs0pan1ALQ6zZO44NofWsxZUZrKvvditnmr
/vhaH/f74x+zh+aDqgf/RSioWIYiKHTkfkTb0EumSBMxzKhIrMJAp+gsHKsJkpKHTNEnphFZ
w/+m2Klak48RCszaiYED1R/48GJ9akUsa4nhCCm6phVXq9D+ZtI7Jy35Riie4G3oiILpiEXF
5MS97jYk91+9MCSd346EhOWkwniBiYVdqTEpzNzUW1MAfvYiddLo6Hgi8Zr2hqkMvCz57Wwn
HXJ8A9l+fFrJrNTjAZgXNTBb8yU33nvxRRQQYvgarv3npowIXt1R6mCqig0ikVDOtwxWt/CD
J0mZMEhORUbGIkcav2fYmPKjIvrtSqz5/3P2JV1y4zyCfyXfHPp1H2pKuxSHOigkRYSc2lJU
RCh90cuysz7n6yzbz86aru/fD0Bq4QJG1szBSwDgKhIEQABklokz9qpJlPV5ujha3Ka8amxh
Of+Euih91QXCfR/6jED0GQae4sqsaOwysn9E9dv/+vPl68+3H8+v05c3ad5X0rqwHL8rBTLC
G2MzBR+5boYeCOi7qVgq1LJA1ygpaVZ00wo/mNsdBHFx3zKChxr9qepCl8VWJBvSFWe2cRre
r77N9tbayz1jVmRnRw15xW50S8zfjbh5ZXgnDA3CSCwRrrfVdy0BSpTuD/elLISI38bROIPL
pjvT+2QmwCg7i0i30zSkXWe4dc3gXvNhncG2r5OlpRzCAb/0ueYwqEURGjnwzGTOV3SnSfEe
XCBoBh+GR+MrrXjklbJyQ4vCBzK0h6UgRGtaeXmQANJtnwZR9cCcDZPmtgOCKOe5miTP8+jU
sv8klwWLC+oBG/CQllWrqGrFcBratlpUhg0hvKBnmfU3NUacDHJJ672kuXUZSh/y7zorU/03
d8WdsnJ15emyXz49/fh89/uPl8//4o6KW6jDy6e54bt29fLZHHSES/SpqDrS9A1TMdSdqrct
MBCXzxYLMWzBJk8r7Z5vGUMvGl1jbHhKy2Uoa5zJ67enzzxCZfkIVz5s+SusIO7+lWN0sPSJ
+HG8BurIR/FWjscNWEe/0S0OxUrbyxozY2Tmvq9SUMrDtS6rC548ncIPWcaSUyr4Xw6ilOVD
cXRx6QvtYyEcJau5LEYqa4kTlu9STw8tk+6+5Xp4DSlP9jLXw5NZENWI8gtRsdS0bMQlZQYG
MpyHVstGiXkL9rKwBuKP4jMnfk+llxkwVpU1URY9Sw3Y1TVAdS2z4KUdOVUjBqGzEyymfI5D
VyYakIeiyYQMQAdzWvbjGv4tBH1Z5+mzmg376ViyPXAL5baobseBvC0q6xGkNDkPJiuRs+IH
FvOz2USKkS/rOfUUufAOrJpq/lWoQ/dUrnVKAevLQKQTogU+nRnK9bIqGkbWPii2bvgpfDIM
7XFzm/7+9OOn6ug8YLhLzN2tZckNwJLzuo5qDxQ0PbAVrPQKlgQP+uNI8tObPeQdP//EON5v
6CItkgYNP56+/pwDc6unfxtD2Vf3sMmNDnAvWlp2XLBTT2fSPQykLf6gZrLF31N/pZbbTLoK
QPmkABg75NJmZbWK5rPddtpMr87xsNeEpWs5H/q0/rVv618Pr08/v9x9+vLyXTIVKKPODpSx
CjEfirzINM6DcGBOa3pcvSpuw2x5nIBlqaKTM6YyvJ94LsPJVSvXsN5NbKCtVGi/dAmYR/UU
3WArm/VmHU6d06noFgI4w1OzxfNQVsbqVzNpqLiWis7km2nPitkRacm5af+0wg396ft3NLPN
QPRRF1RPnzDNibpR8MSGScCJRecVfX2dHpk4V5TezuA50Mw6qIWsPbxLgooAj0WwUgJvTmPL
HOni3wab0qZtHkECM1hBV6WD8UUWv/F3ZlAkk3p+/eOXT9++vj29fH3+fAd1Wm1y2B7m+jpU
oG+p3VzB07Uvh0JkA3vUO7tRtQN1z8O3RnbqPP/eCyO9NGODF5KOfoisRAoW7bPQaV94O0Ou
JG0Rv6ehHdJK6JGBs4s0bNHzSDrEul6icmpgup44woQW8PLzv39pv/6S4YTbVAI+KW12lHxn
9vzKtAH5q/7NDUzo8FuwfeH3P56wkIN8rjaKEM3Cx1lzUyBGn8cZPH9V8Ykt07qQzpKfrSb7
918ovBGZ81H/RqLnRZZhAvFTCmKcYn+hCXQHe8HGrpzUtp66clqnYrH94zTyCa063OP/If71
QCGr7/4UQRqW00kUsDEFUc3UXOh9/H5rRs+1lH4bmOvsAXdrxdxFlBshEo5ckD6U6tSe9yZg
ulY8BJidMBhG2zOcYF/s55wbnqP2CbEHOO+BdVo+A1Icq3NBNbzEEilVnh5BuaOl13yQBJNW
cd0AARD1GMuzDYDF+CaM35QrmAN9SNR9u/+gAPLHJq1LpQNL0JoCU1SQ9qBG9sDvOpf1lvbA
k+j3FxScilobkgiQoxLpigxpmN5wjqrnwfJzHsTNQ02AqCsOESUqca05bLQ5VxX+kKvRcdPy
XMP8OABl3MpBMjBrxxtfGopG4zk7e6LjRQqJuazRq7zfkyl6l07vc7NFhSlJwLkHW+5EGWec
KXyQeEGZ5Rc5fl4Gz6ong1FtypVCcOV2CZuHIl8DaL+i7tzFFfm+uicGQw6bngyAosd0sWXG
B0ZW3LE1u9miVABUO3M4SAQYpIMS/MIxp2tNLg+OPKT7XgnQ4lDDispJKQskxwxpf5R3mASE
5Q8Sx6k/G9XNeFxRt+vVQnVlzCGj4SJkYTty5JkUYvHLz0+m6QCEa4ap6KqS+dXF8eRcH3no
heOUd3LGGAmoWldkhGJKyc91/ag9f5Gxne+xwJF0laLJqpbhzS+ypVLJTJ52OdsljpeqTk8l
q7yd41Au7QLlSfHpy0AHwIQhgdif3Dgm4LzxnSNFmZ3qLPJDSTPLmRsl0m9k7DACECY630jX
zRQmwLh0OBbSTI6Y9XacWH6Qod2lSxv5HMi8me2KCOWiQx1Kzgy4TCzHwJ72KB/NDat4Ws9g
kW/SXqxOxyiJQ+krCvjOz8aIgI5jYIJBk52S3akr2GjgisJ1nEBe2NpA56RFfz/9vCvxWu+v
P3li5Z9fnn6AXPuGZhKku3sFOffuM2yBl+/4X3mCBlRiSfnp/6Neybgt7SzcEZTEJJOI3STZ
ewdQGlC97hTVRUTrf317fr0DsQCEux/Pr/x1MOLTX+B800SaLer+RhXrR8hOrTz3CgtZdwPP
J5PLrsj8h7C4YSY5zBkHOsy3T3wSudHq15fPz/jnf//4+cbVyy/Pr99/ffn6x7e7b1/voAIh
oUqMCmB4LnWKt9GakwKQDLDkaYbI462jGgjk40AGE8cWB69XrEXftz1dGDqrWIiwH/i2yFS2
GWlMQwL0lBDpLcSHhplAzRuolq/z6+9//euPl78V++/cKOr0mPp/KY0JQRa97qd+qvJsIXUr
jbBPy3xCmVThsiyzvNdC1a7IELTaQjvNzKcYnvL0hah4U8N0eqULgJyqRW8IyOR6jiVdM8c6
oXQkzUBQ+IiKMlL1WJBtvXP+/tuoaobLkvjSSAmMkGqmrT0HDjKqraGe70/koxKBeOKqoEU6
WM4OfusryhrMJX8Bfvfy+1/IEdj/vLx9+nKXSimEKE11H/rkV10CdvYZiLEHm0swUqgS+gpN
m6F8WOOlNGw9xKHv6CuCYy5JUkRORE3bSlNmsNdOmDqUfbRGfSlUuyCO/wGJzsrthPSxQNIn
8S58p20kmWUvy4yMI+XUsNCsoXFG6TkW6+Y3fsjShL5bWCj6Ag+1+4nVt0bNapZJkWFmXyQ8
zvQ/rEpTgBeSSwm6OyZ7Y1nsj+O7BKpsayOSGPHKLv/ptloP3+GE3mSD2tqlaPK2n/ysVVOM
Cmuvn4Ux7be/ESRUGnWp6rRKM7TTZYpaNYsjA7OFVSyl6/Sjvo9WVE50uanxIc93Kn04IyNI
6Wr7jIaf4WRWVDoBAc08Scjc0VJhkRJCneN9QE8tMDc0WlpcHPhLFxZriNRgluaF9mBPnZJB
AUqhS3muydFnZd+rRv+MJbu/3xl2xvPiKJN2LOqyKdfVSDsdwKlmyfed06GKUpvFx/nJxk35
4JCp6TASo0mhB+gHok+xWdMh7dM8VS4PDgPMoi1N+WE4mlii2r4o8IUbOT1UoTB4vPvuHjiH
sd6Nj0cRqW4hOZZpA/1/pyfnD+XAzsQuOtSXD25iY+5zcZHtlVwup5KB1pmpKVRP5Riecm/C
npOdxlIwF3Z05wS6DWnDNgx5J303hsj3P/jpnF6LkhxQmXihzs4XFN57kpg67S9FpV5cXvRP
RhSDMmnTjkq5amRXQzqV0QfqllyuFY52NbjtniVJ6JL1CRRUawuYkyptjf3WZF7yIaI3CSBH
LwDsO7uE18yKWpE+4PzN5nDxyRrCI1XSpMNcBYErMC1qW9MLuFGlnhL2W/H/xj0Sf+cQOysd
bVwvHROQuOh3S+bCXWYrDLuitYkuc4e6omGYP5UcL5yIFcqsco9BAouBD+tSpYE3YwlWAjS5
2LZzX787hz1MM0sZ2eMeA6p6EsXSmp3VdCdsPO4Li/1ZLlkUD3SVbZX2hyrt6eWCkqHSXJ3t
XDoocv6UnCLb0SH9HGkpj03pSKq/GbqxjLS4xwa+vZQeDzUeKO/P0GPTduxR9fa7ZtNY6Wzd
LHspFVEAfk4YXZGVA2UTlApey4+a+i0g0zW0HcYrAf0GiFS5sI/Klc8W03Qs7at3pqmqadBp
qCZ6WsBGhNeRnj1wTGwPf8pAxdlwIesLHYg68rkplQxGAlEO+1S5rJ5rnZTcZzJUPN8iM2IZ
iS6MfWHJjKsQzhmcRtKXlJPODcmgTSrQEMp9gYB0D4Hj7kxo4kSB0X9+mtRlaXEjQpKxy6iP
050eVf9rDpBfvrt28pvfFT7M3ZfHI/qmcoS4QinLO/hp9XNhBznrT142k1IrKEAaYNZrZqh+
suwRTtktszoeUctUSwE4iQWYLiTiGrWRL5qO2jOgDgM3cKg2giRxLY1kJegxqVrVrFOowBw0
l63RjTF1iZ94nqV2xA5Z4rpaXVgoSAhgFFPAnQrkDxupoDLrqjPTYCg1TuM1fVThFUPlyHVc
N9MQ46ACZumSBrrOUUNw8c+ECWuPBTy4BAYlKn2iGx7xllaWmUY3jgFtPuYqS4fE8W2L7EFq
a5EaZqOPBuRyggYEAcEcHLfhaH0Aldp1Rsr+ikYKWOVlptW9GGgU4HwkHGFbez3+bcw+iNW7
XShfxXZdp/zAB9HVxH4IzAt07lBfku+W5wIo/gTIuuuMApwBI+eiJZOua9OB5oaIo1WPrhvo
0AEsgknCLP3jXv16B7mn/0CKA0zJjsYqNdUQYtdwCctrzpwGE5ZYTCuIxkBQ/j9FDufc+vTt
59svP18+P9+d2X65oeBUz8+fnz/zayfELCHb6een72/PP8ybkmul5rxZY1+vZBwgkq9GqLyG
xa8UlrGk8KZS1MrjCvNPQ0lBOC1WSZUtrP6dNrOSZfIFRYlBUcw2Bs4X322ap9xlJaWdymSE
Ag6HVdEPKTXRC2oaTmWDETxUuRV54w2m+loeSktOFKV7RV7Ctqby5yhklJJ9LSs0NYF2ZjMB
bRTkrYDcQp+q4kw/eKP6Qp5CLVjwe3UyRYWGn9OO1FrkQnLMTnZ1PcfRfwtyphjfFYxsT5er
Hkp1PK4XUjd3iJANPfA7UX/rr04LiHWWBVILwr9yLrza9blD8jtT8/ExlzVhGcXFvqJRDa3z
Vu7TR1qEFehr5YeOckezReRemUU05m/C4Bo3eGTxledyv75guOt/mjkq/uvu7Ru/vX/7slAZ
Uu9VTjl3yqtM/aXfny4wu2EQCTgTIqaBIw+91oRyKnPI6Em3ZWh/PYPuoHYOTo1sypkXhZ4S
HwFE1MqQ8qBtt67y7RQG3Fg+AAreS3Qo7aPAcou/mtLIBSTmvZo8cPYH+f7Xm/Wmn4chy5Is
/FxClhXY4YDOoGqiB4HB1CuK36YAM54o4l4JvROYOgX9aZwxawzT69PXz3cv+Nz5H0+KG9pc
qMX3UHgz28woGAz/PVNMSSNjIL4VzTT+5jpecJvm8bc4SlSSD+0j2YviAmBr48VFhDtLX8Tm
vi8K3BeP+1aJ410gIDd0YegpHF3FJQltB1aJqKu+jWS431NtP4A2IzvIKYiY7tPD4LnkbftK
kc85k/ooCckqqvt70qF2JdBtGgqCr1CLHLkSDlkaBS5tsZWJksBNbvVELG56FHXie5RHokLh
+2RhYK+xH978aLXsqbRBu971XALBmgtoQtdevCygY8t6JKBNcR3kK9wVgZm48HSkerCZcA3M
0F7Ta0q1DyXoJciGuiuoHgA/CQj4kPmw2KnBDLU3De05O2lvK2wE1ypw/JtLd5w3ilkYteup
oA2OG1HaoSJ9q4W9nINn+6oDvtCjxsJIPIw+SBYGhinsabVRkPCk7JYXDwQBzprgkTeo9Gdk
FumxLoNJF7w4UPPYUJG0TCZQtWS04pCDnDl4gaD3sBKgjXAvn10tdXo5Ec0M8XSI7xiQQIeE
4cL3T08/PvPY/vLX9g6PYcXXWuka/4l/z368ChjzPdzLN2ECDFqNeJ5egQoJSy0v/DUIYgCh
WcEo0Gcz9aZgC0SHTdIaOCcQ7JdR3l3nZcjbPXdaF2b2oNlFhpq8zV+VEHGED9qXpx9Pn1Bz
N7zbh0HZ9Bfq+gofn9klUzfI2ZqE47MVOMdreGEkKZw5bAWerEB/324Ol/zx8vRK2IxhhtJK
hARlMtudEYmnOquvQPkJ7jngmKZzozB00umSAqhRg9JlsgPq6JSSKBNl5qu0CpqMC5MImp7f
PrLfAgrb40uUdbGSkG3wF4pym8lIIkxZh082XSw535Sxs8o2pJxOPar0iBb6lZENXkK6Z8hE
VZfNuqteB+YZmFVPY2E1377+gsUBwlcYt3IRzuBzVchYoDLHpa/hdCra3UBbtOKZ5KIuTy0Z
BzeTg3jju465mgV8NOCKeLLBpEVo4qz7CFdBVQ7U0l1QS8X2EayU6zp2NQo1TEkC3tg6DDTz
i+WpC0HxcKNPLMuasaOq5QhqUCalG5UsJmWUmQQklEjxj1ThN0Y3n0QfhvRodTxQSW9v2PIw
RmNkrqLZmt8xXv4d9I3+1nCUKTQ3FvRCSg27p+WcGY0miap7b0I4VdkcqmJ8jzRD7wGeQKg8
lhmcQdQ9w/K9MUdPRi0Zjnh/4Kzrc6p4h+LuP1hvQ+17pASgnZL6fGdDXxl64IxsMMod80n1
5PMb05HJnpIYUjrIDwnwdDzz4w46lKm5uy5LciPFrIXQjJKF5/7x51bP1PHLY01xZNAhi6co
YDA/ZiM/6rHBQDK5FNVva4DoHKBp8MkStInpBHNUyWPkUDxeuFVTh2PQmXgRWVFDNhwbLG+5
cBrhEbE9uadVr9qcBQjYoa22K6bdztuj3klM5N0etPe+6r3ROmVQvM6vVEsfeAHxx5hAgFVe
rNyw+zRQ3eU3lPgCt5oTm4CqNoO10KyGJGH3vftkF3LxDo4bV9RLGswQh0m1A4d0qNnQgcxL
s94LRnl6pdSvW5YiW58kI2pxqQvqpgkQ91rEORqDrRnLhgz+dDU9zYCwFSmZoX/O8BsltOAJ
CQyqfkhN40ICaq15Oycj8RKqKVpal5YJm/OlHW7QXWDQGCY2Upeua48H3//YeQE5mhlnCZ4w
yJQbGjhGq0eNjS0wI9HNvFxMBU3+9uJD9mc4ezA5lsikZ1q4oa+mYVt2KMK543YTfN5PBYs8
PRrsBKSKRRuAwqFK+Pr89fr28v31+W/oNjbO07EQYjX/8P1eaMH81YCiOVpsM6IFW9bPDS26
YZSrhizwHdp8udB0WboLA+qiTKX42xj41JUNnkImoi+OKpC/ummnr6sx6yolA8rN2ZTLiySL
XI1WK2Zq0j4+7dWx3ZeDCYQhrnZ4aGw1K2DOue0Tbuvq3z/fnv+8+x0z0s0Zj/7zz28/317/
fff85+/Pn9FZ4NeZ6hfQtjAg87/0NZDhBrjxZfMC80fzRJY6X9LQrErJxIsamRRjJBEUdXHx
VJDqordAlGQaatYXzq5q8pZFYEBy1ULcEHFf1PDVrasTtFuPMi9wntfWaV7eq71sNVszwuDL
qsFVEq6/9219ZmU9FBqv4OfvIaCAsV413valQ0mKxIhfXVLn18KB130FMRZQv8K6hXX1NPuW
ELGTWH5I0Y58MZX79u2L2DFzPdIaNRagsEVP5jOZmw3NthnUmthwpgKPOArXpjZlFc9ly8Py
zVUtsjFboiA2Ety175BYA9mlk0Eq55OiuHyU4amuZT5G0JpHUIYVW0x1V97VTz/xY2bfvr79
+Pb6Cv81bviwlFBn1ZrQRxn/hUOilF+ERJjh6MvlDjMwTAKjK0FuSS7Ah7ewC23Y10lJMDLD
1NymCBRqqiYWLYjbbaPtARVXorDOJhWkxnmMVu0tIjY3PnELW6JsHvU+dJXjUSZrxC2eiHoZ
lrlJySLHVk4YctTmNTF/BU0PRk/rUc7vgZBRD/HgQM5sLF34+Ng81N10fCCmPa0JszQuZ+lw
NtMEYMc2sQjpu/lJknkfaKse/miX5whd3tyZLKmykGaoisgbHWPW9fNQwtZ0pMuJfICmU58+
6JYs87TLxtAhhTFhCPv0+iKygZjiIFYqchpN91x7pPux0PBLg+2bS5j51F7b/BcmBX56+/bD
EGHQn/PT67dP/21+PHxu2A2TBCoVKc8WJaxL/Mj07lbJ8dFp0hNJo8qHxOvUG22TJKMz1Jl9
X1vRpcslJfSMmPijQZJ4AHAlHkKiR6H0cG4y7ZIEa4L/0U0IhKTP4hk0t00umKVfebpzIvq+
bCGZDf3U3M4UddZ5PnMSVcUxsAoL0bEmhpWNEgC6wkc3lO3vK3yoDwQY3RTiSPVOWXD9feJQ
j5gueBEMaNYpbP1GdQBOakrHVwgaa1HSmVkmeDC7cjlErkNOhszIFfAhiHYW1CkOfGoKc0U0
4Hn1eCadDBRhUIi5iC7lSsXfStzGDOBpEDEH2pwpMXS9haI9aKL/UqTsH+bTTVncul2Vd4E/
x0ZMIkduuTplKPdicTZFWmSc/PPp+3fQo/jRb1yC8nJxMI6aCCLS4mpilNC0V7FIhuZX8Vau
DDsM+I/jOsbY1u1OXK0pdD05NafqSlmaOa5qj2V20Wdmu+BT5mufRCw2oF0GpAZ0zIx+gCQT
0dd04gumdRrmHiy9dn+29XeVXLSyZUsLY8vayMg0exyrbSMOu2b5zg/0Qa3akwz8WFyIOccQ
qoP+8uJiY7AvtFXV59Dnv78/ff2sqVBzBmbDtU5FN53WzeN1EqYOcwfog+dQbzTGNMNxW9oa
5jYb3yw6w98tGpuLv8sOSRjf+LpDV2Zeol8TS0qXNpdisx9yc46NGfbM7qR9+bFtKJ9qjt7n
sRN6iTajAHUTAgoDduvrxWgEj+aQEt43rOQ1fBqyqTA56GznMLa2v5MZ/QxM4jAKiS+O3N/W
D+l4NcGhDl5c5bSPJxzibE0MHYOakkiri4M9NzGrQ0QS2et7gLPUqE141pnQSLlyEIyhTnY7
Jc8fsZJWBeSdXQwHiRtRyQ6XefTdnWtwVr5nXR2a+X6S6L3tStayXudifeoGc8qi5TbT7Ku6
GY7HvjimQ6vXVYPUfJZYDX+HhI/T/eV/XmbjzaZ9rcO/uuuDn8wLEmqpbyTiLCFKuldF59xQ
FvPmRsCOpTx+orPyINjrk5LiD+oRxiTMNVMrfRNwplzErWAcqxPaEIkVgYExOSqlFgrXtxWN
tPnZUKTvr0yRWHuqpjJTUWTki0Lh2wv7U9ZT1jCVyjJPQjEga44T6kZMpXDpWpPCCWwYNybW
0LxWVjkab3ynVH3hhKevyDpS5eb0mPJa1j02IH9C575tUjuWDcq7OjLaas/SifC/A+3dIpNW
Q+bt5ASzMrIeIt/zadxcPY1cjdi2YZjy3A2y9dKdctgt+DM38yOdM3AuRuIwW3FNo0TL+OZk
9Wh2XMBvmHEUMiMt9EaGUetISl+74qtWBnpG7tMBWN/jlCRdnUSyGo1XjJhBAGUeENE3xFIk
u3qOq4gHCwb3jiUhj0xCbkCFwLXVntAmioWE7S1Pgc5j0vAzViTc4VhztPsHLx5V90YNZbmR
1qlO+YNZu5DtSLgrC00LHM57N1YEEQ1D1MUxnkt8YvvHhzLJTvZUXxAoHHqxCdd1za0iPrc3
v0o1+BEZJSn1xg3CmGg2LwZ+EShIojAih6JJoMogd4mJgE8WuCExLRyxI6pChBcSHURE7IfU
1AAqhFZujBspEjW/07qS670fUC/rLASzVByb6+GYno+F4NaBa/a4H3aBrFAscH5Td2b7Ljdx
54y5juORoxQ60K1R5rvdLpQOVs7wtJ/TRX5fXYDmezphFBJexU9voDpT7upzVvQ89l3FvUTC
BC4lfSsE0lrZ4LXreC5dJ6Iou6JKEdlq3VkQvksj3Di29GMH4t/Nfgzx6DpUrQPMmEPXOsCM
2PyxZRpqaysUkWdtIH6v24GcyH1FMJ9Mis8yUFGpyRvxZRZ8UqMZ+rYiCNBVPFPTxKk4S/ay
rWl06781lmHsiJ5l8Fda9iggtiY2ZxH1WgBm9qeXpDhvYOJol0+JiJjVQ+yCHnCg6kVU4h0o
h8qNJPTjkJnVHnWn3pl+AOXsPKQDeZ2zFq5CN2E1VQGgPIdR9tGVAqSVlOhQHHkEVLifNCbm
VJ4i1yc3SbmvU9KhUCLoitGssxwSci9/yAJbVJMgAIGvdz0y9faWuL8p4FA2GxVnAvHlBSK2
IvTc0Tr6nYcEkGpHzh86j7mW7JEyjefSaZ4VGvrmXKYIQlsnPDJOWKUgti+KJa5rQURORMw1
x7gE6+eIKKF6iKgdJQ1IBD4IgcSyFhif4CL4TAbJLTnC31k6EkXBrXnmFNRLJhyxI9aY6OGO
KpJ1vuXsrauxL/Bxa8rSv76qkkWy3LGWLZqD5+7rbJVEiLMpGy0OH8uSqCM6u/xGcPNsA7RP
7LeaOu4ASjILgFOC14ZOiEnFSG8SSjacUEyhpj4WQInlB1Cf7vou9PxbAhmnCIjlKRDkTu6y
JPZv7mSkCDxiUM2QCQtfyTTHw5UiG2B73v7oSBPHt3kV0ICKfGsPIcXOIVZu0/EkeyaizbKp
0+7lJZwJ5BctO2l2O9WTdaWjwSiNetRS3WN2uANx9sBBOGWHQ8eoqS0b1p37qewYmcVyJev9
0KM4FiDm3IwGomNh4JAspGRVlLj+LbZa1V7oRIT8zo+0mOTVMwr9k89VOlginlZaP3Fth4SW
bVI9J8gHQyQSz7ExfcCENNcHNkxxAcQEQUDXlkQJOQ3dWMAxd2srggYbOAF1ZgEm9KOYOCPP
WY5J3akGEeVZ0rguNGPeFa53W8D6WEV08vWFgJ0G6pMBmD6qAOH/fbu+jPgeeV3AuU3y/aLO
8FLnRp1A4bkOwecBEaF9j+h/zbIgrukhzDhbomGFbO/fFFVYdgojHpupvm2i4CkOzRE+sRnZ
MDBySbO6jigRDE5310vyhNb3Wazc3iqImFIuYUoTkis1qeeQYhRiLHGtK4FPcrohi0mmMJzq
LLy9+Ie6c28eO5yAWDMcTswIwANqJSGc3gqACd1b6/YyuJ5LFr0mfhz7tDldpkncW1o4Uuzc
3OwzR3i5reXdrU5zAlIeERiUUq0OehJpBdx3uHX+CZpIccbeULBpTgcbpjgpej2XdFIy8aER
zLhAjAiRFdG01/SxPVMXSCuNCPDkwVRT0WCal5xoApP58PhGqO03h2jK8PzidsHr09unL5+/
/euu+/H89vLn87e/3u6O3/7P84+v37Sr6KWeri/mZqZje7FXaMuVxdrDQMzVbA0lMLNlRkJs
XpzcHrOiyGXC/Td9kkamoBsQzgz2optCZPZ7jlA3ER/LssfbURPDwawjMKC1TddcfrgTbWtd
4oRkv5dwgpszcxigRsd13pm/660JmJ1CqB6D1oqZBEgMd4ghe17Wo4cjJdoCVHyuOnUeZh88
ohnhlm/Chb+PWgt8xyn1XBXI2H7qWsbKvZKcgu01Eh49i6kyZOqNTSkkFI8CAsxPqddAoFWo
iLHVnEL3WZ2S/UCEsVt5qMAff339hNkhrXnQ60NusDCEpdmQ7IKQ8nziaObH6pG0QEl7E6bG
ovzJeKF08JLYufEACxJhvC6PUdGS4hJUpyojLb1IgcnSd46sLHIo5YbGKxw7z7HddfKpmyO5
lPBURKxew0p9AnqjvplAiwjhLbEgriwGvxXvv4NP3sHvaGFpw9Oirvj2ZUabAfjHR0ZMxvyt
WPlGGCuczwZiKmaMfRZ1W/4Ci4gmIt+AKZfQCDumQ3Ft+3vDbM8/Web6o3htzjo5C82ND995
kXz1hbBTGYHIuOSVmxHo6tjxyVZhUPUSyCtVUT6wyKOmHZG6dyTC+O2441DAkAAq9+hiAeu3
1jNU85PcoKHBEQQ8oaOnN4IdvdxWgiS4SZDsnPg23rPvFnGLTml0GzYxxjVEtB1uQe70aVtE
kA1cfORh4Z1KmM0gpTkQ5s7WAXTZIYS1b58h+LijxdrLKx9C50bpPguHMKH0A469Txxjdvom
HCKXzpWKeFZktidkOboM4mjUkjpxRB3K+tgKMh9eQcz9YwLrlzrD0v0YOo5xWKZ7TJR1s2ez
26/wiR3ql08/vj2/Pn96+/Ht68unn3cczx955ql2CbEaCTQzJgctvHHxYf3ndSv9495e6gwN
GILo++E4DQwEzkzF6h7UApbESWLUUtVnfY67tKrJJPHoveE6oeJ2JNyfSZOZQMUaA5L8pZVW
BXxn236S54harOQjI48uCR9GIdENz9UnZHbOJju3s/gVSATGoUcT0TePMwlwd9mVYpHyjQws
M9zmS8drm2nSs5IzfvYbJ+VKzAEf+7e2S1X7oa8tLiNpLAfW5v4d4iqKRiokXlQT+Uk87vXK
gfP6BnTxk1fqr9rs1KRH8vVHLgWJ2AhDjhTgG+f/QmGT/DzqVohPaB26qhPSAiU3jUDi2WUW
wTPLurgAHVgMyTPadw0BhyK5JSchSejcmCYp+EA+OtpTLSJMSPuhTKKGpqiFdYzQMquOBwdT
KI5gem/YgBIbdRMxlzxoC9kItVpsBesGklOz2FS6tfByxSL3awWa/rcGhXhl6dJWg+IvsRFg
xqyzyGPHzsrUbDSYTpZ1mJFNoiK6A1LkUYtWoanqxLL6NKrIItVtZKjaJhHloSbR5KEvO0lK
mAb+6ejBCK34ZsWmAirh1uVJ1D2v0HfGtmqyNzuRqRKkhBDqLIXSVTQNE1pWmxFhTZP41uIe
ycY0Epfq1yFtQj+U9UANp0QLbTjV6LLBhTpmx1xCn6yvZNXOd8hu4G2rF7sphYNzMFLjCCUc
CGAx7SCkEdEKu0yUxKSCqJLYvu8s+7xbPrGs6kqc7LfLA00UR9QcmdqmigsTWzEjKl7Hkink
FKIkCnbWGpKI1PRUmh29oQwXba1viUePKutc6DZdZRcGbmTpbZck5EsGKklE8qy6e4h31pkE
nfYdfriGyFiKh5Qvj0qyIz8/BtMGIbkhdWVZwhzOHwvbs6cS2QVYhyXmQ6Miwz40mp1l+ria
fLM4q474SqulvBBS9m3L6KfsdMpLXxz25wM1ZYKgu5JnPQOd2YlSSycek8QLbnMYThM3dAXo
9+BGehJaiowrj/+AzKOtMCoRbCTLslz0zn/QEiqi77fk+t6NlkApfb8KLRJYx74z/5JaSuEW
jZGq3vokhyQuzslhiOJCnKdKZ+aTFBlwP/o5xKokgyZ7tMtnba7J6CU+UL6iyAqBpM9CikQm
iBaCbd4A/uGSkXDWNo8SQm6Lpc1je7s1dkr7jqy3Bhn7fp9bqh7r7nbFpQgqocr2WV3fKMyn
F5P2Mu0zpUMJ37huBzIHH4pLY3jKPa210hbwt3SyT+n8/mIO8HlI26cs8j4daGMlTu3QF2n9
0bK2sPVj23fV+XijifJ4TtWUCDJ2GKBoaZnDJd2W8lFF4pRSW0E8B7W+dkRi6qFPG1aXw2Bf
0aykUdCHcd+OU36xZISEAbTkE8KFuUv5u4scY0mqvhFgpKfxvIhCRVBwI+rxx9P3L2jeNLJo
5XIwOvyY6hLz5e1LCso0aN5N6Xk0083my4uUk5rhbYOzojpYsqUh0X3N5mypaqUIP+xJlKgX
elQzfN+na6v2+Agr+cBUusMeU5IXNTLUUrbibkh8yS6tqjb7DUQFE10VKX/yl2kx+0iBGX4n
+BT5hM9yqskJ5xnLZHURYceinvCi2jZgBbdme3n++unb5+cfd99+3H15fv0O/8PUrT+VLzsn
A44dNah/wbCy0nJJGCT8sWTQGHcJfXobdLr3mJRTxdZjPqS0r83s31g7vmuYq5PCQcDg2+t0
boDV9mftM9ZpBau1ZF0lP83F57OFjZLKJiK5YXVcl6Pl8ROOhC9jRfZZ2qOvyCm35PBbiapL
bq9mKC0X83wtYkLI7KwOD6ROA2Bu2y5teC5vPvH5y8/vr0//vuuevj6/anPPCbl3DRlfL5Gw
M5s+Og7svDrswqkZ/DDc0feRW6l9W8DRhsqbF+9oVqoSDxfXca/nemoqSkrciHFaiTFjrtzO
NoaiKvN0us/9cHB96iJuIz0U5Vg20z30Bk5ab5/KOqRC9pg2x+nw6MSOF+SlF6W+k9PNl/j2
yj38s/NJjxCCstwliZtRLZdN01aYxtqJdx+zlG7xQ15O1QBdqwsndCw63EZ+XzbHeU/BLDm7
OHfsvGP+DEWaY1er4R5aOPluEF1vf7etAPTolLuJfMUvfUfxIt9U5TslzF2qCZB7xw8f6E+D
6GMQysEzGxKF3aZKnCA5VbKlTKJoL/hWsljnLtkBiWTnuBFF0lZlXYwTMjP4b3OGNdXSn6rt
S4Yx7KepHdCuu6PcjCRyluMfWJ6DFybxFPoDuR3g7xSk7DKbLpfRdQ6OHzQOOZo+Zd0eOO0j
pjLdHs+jSR/zEvZoX0exuyOnTyJJPEuDbbNvp34PyzP3SYplDbAod6P8HZLCP6UePbcSUeR/
cEaHlnstBWpKlSNpkyR1JvgZhF5xcMh5kanT1LH0tyjv2ynwr5eDa/FS3Gi5ElQ9wEroXTY6
tAXUoGeOH1/i/EpGhxDUgT+4VWEZUznAtyxHOIri+J+Q+JZhy0TJjrLXS8SoOqbZGHhBet+R
bc4UYRSm9zVFMXQtiDSOl4CKkJH9nikCvx6K1E7RHV2aRQz9uXqcz8p4uj6Mx5Qiu5QMBFXQ
N2C77LwdyRCBdXQFrJyx65wwzLzYk2Uc7YyXi+/7Mj8WVJUrRhETNs+I/Y+Xz//SpbUsb5gp
cGQn+HQD1ImyqG984OVUAVDD83RYVyme6xOq1zapqMZnDE9lh+EceTeiC9mxmPZJ6Fz86XBV
u9VcK1mxUVpCgbYbGj8gLV9ilvo0L6aOJZFHsJYVSaZU4LJZiau6TBQ3L4Eod443mkBPfp1T
AFGeIT/icCobzDaWRT7MGj4VrfdxaNmp3KfCVyAmk8oRZPE71VD2VyHMTsOhC/SdAGDWRCF8
gSQyMEOXux5z5DgpxMCphTlIR/jPGPnBDWysZCRVsHmnD4S/sJFf4pC0wPOFelXXi7a9zL2h
tNxn3VGT1+uRGYCDkooL07tznWdM/DCmheSFBiVCj8wkIlP4gUs1gKjA4kK40NQlsEP/gXzE
aybpiy5VtNgFAWw7VN1DJEzsh5Sxh++kytVlsKHMGSnPgJhUNAPX66eHc9nfs4V9HX48/fl8
9/tff/yBDxroeuZhD0o2PuIt7SGANe1QHh5lkPT/Wb3nyr5SKoM/h7KqemBlBiJru0colRoI
UIOOxb4q1SLskdF1IYKsCxF0XV3fXkrgScdiwJ/npk67rkBHmkJRELD7bV+Ux2YqmrwkQ+OX
rrVykvIDvkl2ACERKpUvhAGOac9mG4ZaAFVK7CmshSP5rb4sT3oYjvh80kalNuIRb+ypm3Nn
Ym2Q6A1lGdrsAClTY+DxcRyCkAzqBILZx0MddoEyS1ury8pUQhEI4rqve2LM/IVcvHyq9k+f
/vv15V9f3u7+4w7UCP0J4XWuUMXIqpSx2QC99QcxVXBw4HzwBjlsjyNqBvv9eJDv4jl8uPih
83BRoYL9jCbQlw84BA556wW1Crscj17ge2mggs2XgBAKcrIf7Q5HJzI6DJ/u/qAKkYgR/JP4
dFz7wss6L5R2EtqXq/J4GizTtuF177sNszqArB3ZcDyd47WyvPS70c0hIES/FZokkR8N1VBq
guQNufij36ycO1XsqLo7fN1MjdjYkDcu4qTeGTExG86adlLq2gVmJq7oW4iNbJ9HrvNOR/ps
zJqG7snsW/ZeZ/RPOe/dd3bo0hfkzC3NJdGIKK3y9tiqvyZuOgAWqxoPJNTlmLr0wS4RZdV5
8LyAHIRxfbC0z9pzo0a7NuYzLKcyNznSqVTKwc8tPePQgyoznMgeA6F2rTUjzicl9RvUt2Xw
F47k358/4fur2B3jMEH6NEALi1pHmvXqe3UrcDocbB2c4GAln9PiuDOct5Xayr6o7stGhWUn
NLfoTYNuA7+ouyWObc/HtFfrqdMsrapHrXJ+XaTBHru+kOUqBMJkH9sGrU+qtLxAb81CgZc1
VApVjqyKTH1Ti0M/3he2wR2Lel/2+jc+yEcDh1QgBbZnbRxQLTdbadDHQgVc00r4KkqwS1lc
uZFM7+zxseeipqW/JcadqlVpT3Qj6EO6J7OlI264ls0pbfSRNPjUydBq8CrjjucasMh1QNNe
Wg0G+pC58hco/uj+L2NPspxIDuyvEHOaieh5bTbbHOYgVAWoXZtrAdyXCtqm3UTb4AAcb/y+
/imlUpWWFJ5Lu8nM0q5UKpVLZnEWiUEnF7B5FU8jfhEIBvVMs44B1HwyuqrNbLYAXi3CMLqw
XLhEy2jMpzW0V3cEIpYNfJjxU9vqkHjUnju0DEw401lpgUFfkYfO/ourqGRiJXkampTM/ibN
y/DOu0v4MQpu9HzVYhEHBEVYkuhBTyIhoJAImzpMtAFzkdJfY0PSHl6fUsLB9SlN6HnJ0oko
+qYvKCKSCAUftXZulsMLkQkrCLyA2F1vtKfeRojYipBM2E9RhgR/8muwfI3yIyX0d5Q3IIsq
zFdHLEH9JBcsBJTopNBZcQsyto4oOyZ5+S19gAo6jA51PimZvdk5eyvC0Fk2oC2aYxEIJRIy
2Nq5A3WotaPhowrO6TorsJc0wWoZA4MX+7M1S2I0tzTHfQ/ztOl8+42C+VnH94eAH9j2vpdx
LepFNXWWkcQ0uYrkL/9JH2V45kZM2uiStmISkcgQy4zMsg6tQujAVgAq+AV4QVkN1+kobC7v
Xa8B39iH6F0GMN+7dZkzfOsAQRVBCkc7SaVGwP+b+FIoAL7JAVXUC5NlWRZCYoQABj3TpLQW
nv36OO0e+bhGmw885WiSZqLGNQ3Z0ttemcXnUo/idQFGHheHBJ35C8202kCCeYgz3/IhC3Fr
IPgwT/n0FitWoqdQrHu/Zqu8CO+5KIYAXT0Ep6qnkNUOKRbCLtSVEYAfyMGIR0nY/PfXIvgK
lL3F4XS+mEQUPrYylAKI5DH/w0ygNKYtAtkLo7lFwJc8Pgp2QilB7vOlgq7gCiHR0JXZoAAy
I5Wz2IFOoyqcsdBwEpeYcP2QpIXdHjASYcObyS1dDlDNUkN0NzQLrHi/2TVfCFcmnN4v7MFb
FPd2rXGJzXDMBfaS6XZ1CtJOlJb0rDjvHn8j4THUJ1VSkFkIaRWq2FxkRZan3mXG7wzTJp+j
U9mnayoJV0IO0UTOEB6MQIVjSJwttBaCIn437oiE1MclGM9BICinOYhSCb9B1YsVmMQl89C9
C4OawBkz8b0bHUCASTK8GownxGk+gfhr2OEqW0Pj66HpGdXBURcB2V3Tz0nC8qur/qhvBkQX
mDDqjwdXwyt04QoKoRy7cj4UYMzIpcMOrVaAHkpPW9ACJwN7yFwPCQGW+cRwq3hB4FU5ybrA
hRt7I2uxpq6vAY/HbZA6/7emI7gCSp0e0gk0G0CLtnygBNybHKzB0v5gVFzpURsFQveMNFZR
MLi9QnpbDseeGBNyyXqVmQJdUgJuAk6xZUTHkz7qqCrnG4mK0S6kMRYzUX7mxooQcFYM+7No
2J+4w9igrKB71sbu/Twcez9edvvff/b/EtJAPp/2Gv3gO2TKwoTD3p+dGP6XLs/IAYdrCyae
C6wdj0B2T4Q2toDgZGqBRHLuhzK0wDISgRNesdt2NwhwcDOyi+kiFLTDVB53z88uAwQBdG5o
PnVwbfkUG7iUs91FWrorp8HHJX5/NYgWIRdupiHBXjcNwvbe7K2PZngcEYOIUH47YyUuYRqU
HrnaoAnCGeGnVC0mSwz17u28+fGyPfXOcry75Zdszz93L5Dl/fGw/7l77v0J03LeHJ+357/w
WZHm8vC66pkCSmIrfJOBzgi/2X/WhyQsDTNyqwTQDttLsR3MJqBCWzuhNIS4X2AsiWkUGf83
YVOSaJJaBxMbBWJLoUgSBM2AfIKuJVI3Qc+DmHDJe6W3VfuWZSnDgjFoJHmZ4/UCosmw7Sld
UPCeLVH3lJCfAzXn9hBfqqB5pb12C1R3eVR9KWkt8/a2lQFIyEy4CQ9E6xIOMA7/5KhpNesd
3sBTXw/l8pBQeALXg8CtBNRQSIuv6zhdhs2rva9+IFPOB95GAhFnB56rvdVU1SxSrR2T80Uw
Gt3cGicTi+eQYYQxv1at7F/feUIFSTsHKV3yE6woyByPAQc+GULJF9WpR0evk2DCiYa31KkN
pgPA43cTgq8wobohgPwNB2/lAJdBRhzgFLww9OOngbMkq0q3XCu8iQZW5h01svwUtdkA/gsu
yBpEhCRkaRlNbWAujRe6igUUuukscxFv6HT4ee4tPt62x7+Xvef3Lb/VdNqgLnbFJ6SawvDB
jK5ekrnVIgpuD/jNNy+jiOHKYo66vRkMPdnSmmqk55HTUbJ/Oh52T3qHFMgtYpoSVPs95/ez
bE4g2qumx0oYF3iKjBjed2DQMfO4RsFs8BHIuJiQoJFx74qbKyOfsxxSEWY2T2MX4Tr3KIzx
CqmASlqwwXokzg5oe7cpjPW+o8A5WbnAJZvmVu5V1SdhKxiAbstFWhmBG6gRSEsBiwAjtaLx
KHDlyQvJZG5P6aO2Of3enjUnoO752cR0xa9ZBEmZYD5mqC0PaGKgfkOsWMRwrYZ2FbWxccAM
oMGoHE+R6eMJn2Z5yg/UEA1TPDPTWKdRMGMe9YIWDBPlvXzdha31i9bILuJIt7ubmJp4FCCF
zbO4mDvlNDNmAXkfy9QFd45+Tt1iiU8JriBRRMvppQYKJdPM7Wqjg1/oAkmLgkDOFlhkn4PN
Nde3i4ay7friMIoIGFhrxkbdPMkUMfx6AR6tmMZKEui7YQEmIzTS9jD/IVwH09TIfawIIZB0
ZvATefFqCukGkpMuigBTnHUftOEgrRNAQ09GnsCmGpkvmIJGYuc6M1BoSDWdgo2HRmZBEzX2
ovojH2bkxeh53jQMDWh4oxuRWbjJYIzjisEVxDDMjBnW8n8bM3af5gzLYa8VmKwztKIlxRsg
NOIzP2pxg+KakF+eOZNxrGKPGnxNsdXI4vVtjGkmWmRijpGAZQhMy3u6WHGulOhqYPpyePzd
Kw7vRywms9ANcDm3K0FCOBubhkZVBQRFiPW92gCjjIJex4GL0bQ63cJr0/jMqiYrNH0lyePl
TQz8ylSxL2f8FCxt7UZTBB8XfiQbtzlhrwAeDvDZ9WiK3lDQ0WonkrBomq6NptXxwog6CRXH
nAg7sxse2XzSQoeDK/GJcQmPSgjO7CmpaYjxhJRvXw/n7dvx8OjOsoyQwOfUOPw6KN+xIeYW
BJ0xvm2lT5jCvC2wGTykCbJpb6+nZ6RVzbHaNQgA4qhE2iKRwvpzDjo97TJtYQBgY9sLVddY
o1Ftz8Asb8XyLojq4X3/tIJc453tu0SktPdn8XE6b1976b5Hf+3e/uqdQD35c/eoPbBImf71
5fDMwcWBGi+vSr5H0PI7XuD2yfuZi5W2zcfD5unx8Gp913aRGpnLlbkl9pFM+rrOvs6O2+3p
cfOy7d0fjpwloyXfV4zSOkzmhjtAxWEzokedr/SEWPdhXQaG3AD+2TnNYnSDftYYqcD7n3iN
N1HyBboc1FlcBynfSLoqCoZGcFR9YJzCRBX375sXPlr2GLdfoXi9HmHtJL5Y7152+3+dgjpJ
HfI/LGmFjgf2cWtJ8Z+WqKYigVgQy1keYkduuC5ppyIN/z0/HvZudo62LEnO55JwiQl3kG5I
PDraBquFXbM/hLRYwzEujTUkWZmM+560PA1JXt5OboZ4PJWGpIjH4yv8+auhUIYR/n5wCurG
PIw5czVNVYl03LkZ8FMwxmR+fl6Mh7xJBitnnve3bGXsImlGk9+L8BGIHU1+3yR71hozBx/n
IQarWVmY8GSph48nEZeL9M42GQlyTV7honvJhNdRFvI9X9lnDB897ZIFu5d/DuZkuQVNyrgx
N1YWQHY3W/KM0Lvm+trpU2RoG5altETT8rRmOHlYhKV5yW3PUwejnbWAa9gu/KIET0ckCZnw
+Zxj1tqSoMlXYlfeXCtMmDJWMaDgPagev8SyAIud4v3HSbCLbk00puCW0qMDNm59BhrAKqGK
sK0q9Qw9FGKJJAQwg9r5TqWcKdM8N95MdKRbncIULMxz4sGRSLfpAxQcNVKEhuaYuJjL9JGv
e9ma1IPbJOZ3Sn2JGyjooL4GRKEkyxZpEtZxEF9fo8//QJbSMEpLWJWBGfIKkHJnwIV88UDR
Q8Gcy7Zg0ILZwfupa0WWbY8/D8fXzZ5z9tfDfnc+HF1eAdudUsPxQ7CuuEK6pIa5hvedrAnT
rtp6oTZtWxD34UNXlKomJEGeMtyfpFWiNrSBbhubLI2AROKnrSKRQMFtmEML4JSmpTG6EqW2
QghSNHbhM8lkGWZDpLydIm1czq77V23N5lfJEqwh5pnOo5pwz7Itau8vVr3zcfO42z+7E20E
xoGgOELDVU9JYdr1dyjwb0QzFEFEnSqOH8zyuMidN7GbUyvnUYe99MQsmWWpvbIoSD1HoQUK
jYsKgWamVXoLd2Jbdxam7mBqsm02x0WNWYHa4oH5FOfe6y6ClQjM/fay/dcw4mzp1zUJ5jeT
gRkXXoKL/gjVSwHayVABjlGxLVbowcGtNrRcJq7TTFuLBdNvzPCrdvXlRcSsPLccIK90TURH
bfxzKqMd4FDTtdXG3MbxJWRiz7WJvkenjvI7Ix71NJbJtrr3T1Nclj67O36PkZxam8glgZhK
ZcjXBchIhvEJBzF+czE4DZeTBvUMe6HhmGE9KyzioSg4LcDZn2LyjqIpQlrlrNT2LMeM3AJH
8PAP7s+iKXiBI6NSp0RfXZatq4DdVQnofuApusN8m5qRHuG3Nwg9ry+eUkIXhmjE+EhzjNm9
FsyJKe4D0ZIIdQpL0EcVrfh6TcoyR2s2RsitQBsntCXfBA1S+1r1S/t9X6UlMUHI/ADYNH0H
SJqId2Fh7+CpTs2c8R0peEfKekZwQXs+KwbW+DcgyIgBobTqIMJO0ZS2X1qQOh3QKQLWEgdE
VeOi0VbaUhUl8dg7SJImXCMp7iJP7kOdDp2aaZlbk6Mg2HS0OLEcBZuaN9umrbKlyasEYr5y
dO0Ybhi01i6TQDlXeMHhDGLbWQYjSgBhkT0Zs4GzrwQIhhcfleaLdquY333CvxSNy1MERg6d
2z5hCcaSb5zlyxCXTqXwHA7enswTQvY7l+59W9DH/sA4yOaoEiZNuvmJihbHolBtCv2anQTw
gP3gwfNC+XUof8jMIJ4GmN/d54UPx+TGF79NvZ1YEKjR2Kxonw47cyHX3qg9eQVGGV12NRDv
J4qTtbQCAIZxQiUszvIZ3+q4miTn+OaLFckT5vGFkxS+E0ViyzzUTpT7WVzWS8NTX4KwI1IU
QEuD75OqTGfFyFpPFtqz2sSJrL/xGk6gjZGPue4ggCsElEJy/NLN4y8j9EuhTk9tBQjQBZap
KBasKNN57vEZVFSIkG1RpFPYqnXE0IC4ggZ2gT4ILcxmeRqmbZ4uvTUDIAcj+Jvfn75CHGMQ
4Bz5jRXphN/vrdH9lkbM47f0nX/hmeMqmDnTr5qEN0PaBabFV37Ifg3X8G9S4g2dCe6rcY+C
f2dAljYJ/FZGsxBRLIPcPaPhDYZnKTznFGH5zx+70wGSP/zd/wMjrMrZrc4S7UolBCn2/fzz
ti0xKZ1DRoB8W1Yg85Uho18aNqkfOW3fnw69n9hwCvHPbIAALWNPGjKBBU1cqZ0I8k1uwaIg
1yNF3oV5oo+JbcIh/nQDoBQsbnP1R9FCGonC82oYY2yEs1BISKpTaZoGS26B38uB9dvwKJEQ
z6ktkKN/Xi3yUe1JQAPJzBPPtpFNE5vaiwcOGUHguwd+GqGdb4hg6PnFP0isvgasgFTqfI9m
mIsoJ0Gt83IQOjN+WKaazRuc1PZPGA2jQtutoKiSPKP273quh6PgAMhoyWH1XT410us05Kob
LBHyErjAUvCk9NgvNh95NlWDXmdcygejbb0+GmYL/LSijK8jbeLhtzxIsKNSYMHGddW1WU6k
URtQrUTQ8RUo73F7MkFVZRDsw48XQqivIc49p4Piz0YdHjRiGQTZwIdaEv6H9hXxlM8iRDvz
0yC7oWUdAbHYFvGJFZPMohQAX8kCiV9pJQq7zKr1Hum7LSoU+zfOkm6vRUV7HNX8OMIL7Ehu
hsajoom7wWIBGiS3esIfCzPwYsbeKm/RGFsmybW3yuu+FzPwV3mNeUFaJCNvwWMv5tqLmXgw
k6Hvm4l3nCdDf9cmownO9I3m3GBeiUDChTFYX/Wtp+r+wHSas5FYGEygEe4LZpmqqj4OHuDg
IQ4e4eAxDr7GwTc4eOJpt6cpptergcGf7IHkLmW3NcZmW2Rl1hYTCu8ierQGBaYhuB5jcH4X
rPIUweQpKRla1kPOoggrbU7CyHwIaTH8IogrCxUF400kCSYgtBRJxUqscNFnPMKkIimr/I7p
vieAMMXsIDKTjESx91CvEgYLvPu2AdRJmkPSiO8ydqhyENIFUEPDLW2nto/vx935w3VagoNQ
F3gfQNF0X4Xgh2DfNiHYG7+n8ekEQnAlQTM9Q6yVMLBKbtQZHbwtlf+ugwUExJQxqrAy1ZlV
B3FYiBf1Mmf6g4SrdVIQQ35XxTQiNoLBnO3sz+q1EcqrRWdEvHN1d2YunIJWRT6poQ90vMdU
aF0goJ6dVQVFy1r++Hr6sdt/fT9tj6+Hp+3fMkuJdji3jeILBILm4XJlS8TXL751WpIyjdMH
TMneUpAsI7yhOTIyCiVkws/wrdTxgTSjpfQKww5l93SBlgh5cDKG6xZbogcS48+I3RCSGdh5
2G/hbm38kpGukjoqMJ06qltugXXB5gnhfAa/YHV04GOKy6XM049wiTVHXf+xOe64mE0UENR/
toj/+QOsfZ8O/7v/8rF53Xx5OWye3nb7L6fNzy2n3D192e3P22fgVF82b28bvraPX07bl93+
/d8vp9fN4+8v58Pr4ePw5cfbzz8ka7vbHvfbFxF8d7uHN+COxWlROXq7/e6827zs/m8D2I7/
USqMjECtVy9JzseQla4DL0oF8Zw6EgHiO5becQ6dhOb8tSh+pVCle6bQIIUq0FXCwH1a3Meo
6U9tlgQGgfxU1Ejw52V8jBTaP8St4aN9vqiWriFvMax5w/OFHwQwclKxd/x4Ox96j4fjtku3
pM2PIAb1ODG9fzTwwIWHuj+0BnRJizvKsoXpfmMg3E9MJqYBXdI8mWMwlFDje1bDvS0hvsbf
ZZlLfaebCagS4HnFJeXCDpkj5TZw9wMzXINJ3Wo7rOfjhmo+6w9u4ypyEEkV4UDTy0HCxR9M
tFMdrcpFmFDkS09ytwbbWldLVeT7j5fd49+/tx+9R7FwnyHe7IezXvOCOC0P3EUT6obZLQwl
zAOkSM5wl+FgPO5PVAPJ+/nXdn/ePW7O26deuBethIzy/7s7/+qR0+nwuBOoYHPeOM2mNHan
B4HRBZcNyeAqS6OHvpH/ut1rc1b0zag+al+F955oZ21fF4RzL4NGmtkLXxGQd05uy6fuSNLZ
1IWV7jKlyKIMqfttlK8cWGrmQGigGfW4DwrsGqmPS8GrnLj7M1n4xxiC5pWVOzvwWLpUC2Kx
Of3yjRmX+lw+JoF2j9ZWj2z8MjYP/SYTy/P2dHbrzelwgEwXgB3oeo2y22lE7sKBO0cS7o4v
L7zsXwVs5q5vtHzvqMfBCIEhdIwvY2HP6vY0jwO5N1ywrnHqwIPxNQY2otWr7bXQ8/t0QKwI
Dh73kSNxQYYuMEZg8PY6TefIeinneX+CKpIlfpXJmqUMsHv7ZZjVtVzEnUgOq0tEEkiqKUOo
czpCWsdFkpXX3VmtGALOtgyLeNxSSG99431Aw7mLAqDuNFgmxw10Jv76a79bkO+IlFOQqCDI
ulAs2/3AirHagvOM3/T99RexuxHK0D2j+JV5xpAd1sC7AZRL4fD6dtyeTqaQrsZpFhE9/JPi
y99TpAO3owvLL/ruNp7DFhjr+16UbnS8fLN/Orz2kvfXH9tjb77db4/2zUItzILVNMMEwSCf
zq0QIzpmgbFnicE4lsBgxxsgHOA3kU44BNeJ7MHBiphCmMCtEKoJ9li1eCU9+6egJc0TjIG0
aBDbL6xCeLBChXFhFGjdMl52P44bftM5Ht7Puz1yJEZsinIdAZe8xEU0Z44Wxd9LgzGohfSt
Byq5SdECJOpiHZe+bgXFyyXo8qSLDjwjow5LLvay7+E/k0skl6r3Hrpd7y7InEDkOegWruAG
MQ7ATYISEvuYuEnTTBi4p4QFsjN1YiJW4H+ivVyQbTKDkHxDtryOF4pabF4MKpaUn/QJKKTt
dV0uouAfvk4+JQdn8Yb6anT734b3P47sZbLsjn5OBJduH1HBKzKjxGlIUsaQhpdeFIk7QliV
V6MLkgSQQhTngLo3AMDZ4an0dgpXFS7eXsB6mLX++QMaHkAfjlm4pqF7HwckpYYNnt7/GFIm
0Hq+xr/U8PZSJ8VDDFmpOBaeCMA6AkVm1TRqaIpq6iUrsxinWY+vJjUNQVXPKHgA2Ob/fCkV
t2CyCFlyRRk2hSob+/JGxT7rsN2DisCD/qG2kol0imM2TyAEUiiNS4UB8P9XdmS7jdvAXwny
1AJtdrcN0vYhDzroWI2u6Fg7eRFcx8gGaZyF7RT7+Z2DkjgUqW4fAsQzI4riMTMczoHdtLxh
WcjtDieMNIbz/ZFSex6fn/ab0/thd7b9stu+PO+fzGx16Flk3tZUwmt1iq+vz88trFo3VWAO
3uT5CUVHrOjy4x9Xwjpe5HFQ3dvdcdn3uV2Qp5jasm68PR8piGPgf/gBoyvfd4wWJwL1Kg1V
kMRXXWmE1/aQLlR5BAqceceETrxBBST5jSlHMTpW9D9M4FiF6enMAiKoIZCu4ML24aFwHsuj
8r5bVEVmWeRMklTlHmyu0DEwSYWTWxXL+1Ysc6G6vM1C6IUr6oJWp1k4aAhfjZIhkqafrCYr
JyXL6EPRCyzKynW0ZNesSomzO4iiCHRYAfp0JSmmJ/6oS5q2k09ZSVMQMFyrOpkiEQDPUeH9
745HGeMuOK5JgmoFW2GGIvRc3wD2ytuyy7kCwGb62yScGl8iwxJhW1voIsnQ2UZPQCypls2P
1ANqZKCFy0PbA2uSFhTOcIOnv4TGygW/dFLDAc4Nd7aCBzsHOYFd9OsHBJujwJBuLYuRSiRF
AZsegxqeBKarjwYGMqPXCG2WsN/8L8Ecg9NXhNGfE5i+B9XA8TO7mwczE4GBSB+ywIMoPHDj
w/q9T3dVMs9faBZygh8UktpQQWLT5TWo6yJKgKkQC6xE0tKAQvPMKF0ExaLDWdCJ4p+5AgGD
UGBEdH60OY9uoltVSYNxslko8qsgCr42DSpELpUMmx9aqFXTltO3I4BykE6geZH3zXWZFW6I
eD5NeG69b1IeYaPJO5MDp0Uof5meI/3ApDJGbpg6SrRrrtYofeiawGgxqe7w9Ga8MSsTTrjb
dyfJxG/4sYiNlxdU9+oGpHRlenFgFH2RWsObFx3nLTIr0dGtaaxKMwFnDXzUEjeoKzi9ZiZi
Xl4v9+oTQb8envenl7MNPPn4ujs+Tf1qKMLlls4/luxEMLqWum0jHJSNKQFTkPLpcCf4m5fi
rk1Uc305jLvWNictXI69wGShfVdilQaeFMT3eYAJlv1BIYKisx3uR/XuPgsL1NFVVcEDLk8Y
bgH+QLMJC13CT0+Md7AHg+Hz37ufT8+vWnE7EumW4Yfp1PC7tHVoAsPia20kTaIGti5Tj2g2
iOJVUC3cYvomDjGCMyk98Toqp5vSrEXTsh39qmkWwB8VxU1dY7F0c22XwC0xj4LJPysVxNQo
oMyvWirMD1OjP3djuTqLT6o5Ng9DF7KgiaT/jsBQnzBO9X46eosC0wos2jzS8W5YtfnXX1wy
zXyAnck5Ub25KL572jlhK9pnn7f9bo53f70/PaEnQ7I/ng7vr7v9yQzqxwp+eIwwE+cYwMGd
gifr+uO3T0aAh0HHSW78X1g7hqn3svc5nw9keKlOlBmaZGZeohu0vVLasA7c7iDfNVryLRyu
Mf0cDHeZnFO1u8nQrsE1kXPBkRELR0p3Fm4O8STmXIE9+GyxysUBnM7dRYJFMc0jloSTPKGQ
XS+F9vWxusPBcM4Senhe00MD6kkKq3j6eI/x7zxyBGqRn5tP18AYYo1UeezlE9zI58xmc58z
uq613TsHZOXflIAtb0B1v3Es3bzIspZkuNuJU68IysBF7kmGPsH+VbcBTIPDQsxYdL3k2aLJ
Sh4U1S9QtYi+miwua0iXnA6L76eR6Kx4+3r86Sx92768f2Umstzsn0RytRJrQqA3VeEODBZ4
zCXRAleQSNQEirYB8DiPxaLBky2qiaqBleQp2sTIbtnCxzdB7XbUXN0B9wUeHBcu/ZBsTPwu
ivkZ8mPMDQC7DgNzfXynGlbT/cor0TLcMVDKV4L1dzWj25ijbTldOGq3SpW8e9kcg04gI0/6
4fj1eY+OIfAJr++n3bcd/LM7bS8uLn60ZT5o3VnbqLVpftHLYkzianMwfmCGF1er2h3Ix+i+
TEUKnzFtvk+xQHdms8UeKC4dlgi6f/p8llYr7q9bwf0fAyeU6gaj58YRIyGP3oltjnfHMNds
DHAwOGaQU78QWnYvLF4eN6fNGcqVLdreJnoa2e2s2SpdQJnatGdJaHa0zFSjGowsPO/ioAlQ
ea3a0jarWhvF02PZjwgUSDjCgeCv+yVbRa3YPaMVJWpRuVlM5lNQ+CZdEGF6CExy510b1JKe
SfGkunPE645pW0Xf7QEGrsN6WuUvJaR1e1q/INvR2ucsXAQH8Ty6l0WtUYwOOiP1vrKxBO0y
vpiqFNorLRKM9sX1SpQg03PzxpjzmusHuRXDsF9xshKLM9QBZvhzbfnRfqA4S5nWvug8QTO/
Oby6OGmbr5I8xitvM7QAM7wxxl7tdqYGvVn8yubnBZU26Chi9pO1x1Jg11Haxur6/HWz/fLh
ETv4M/x7eLuoz8c+DiaegZwoP7zvt9pv4+KLEYSAJ8J6WrZZryw5EuZpu9kdT8iiUBRFb//s
DpunnRGy0grdgd37Jxn5hde/gKk1TZ8TR8tEeqn2PARPr0XlzlVSZm4yx2wUC1pr/qZNQxUW
mfovqrkUKkGSsiY7UZolTRbcqj7ux3XgRJqkGHQY+xULlDme1kXnhjPJ3Na5jQqjBIZW/kDl
A7DekKUwwiK9i9/BTqbbZ/gmLv6Si8Th6W3cuLNhsLKEN0d1Ubk5LpFkSU61l/wU3ufDXqyS
pJ7h7CG62M3g0ZZZF2mBifG9VJSMBbTSbr4xzgjrx/d2QKfNX374Uq0xznpmZNgQxzFNbvHc
09VR6TZQ8cUpUDTOpO2EJiuXqPhNYLYL+lsFPFVk8VO0rSfUh7BrMlT78Zj2ZQFywU9R4UVM
g/aFmVH2RdgTNondoT68vG9n1j58fWFXFBPfjr5ZUTE3LWHpruTFSLyaXaIV00qDP/INEHnY
jfEe1d9aX+FoZhFRug/3ZTIgnLKC75adCOMadxJWBn2u/TuIR89vctVLnsL+vCkKmPeoLApg
ec82g0cLj7Wyb8Qm0GjA2MeHWdk8CRVic/m/9gVXoEebAQA=

--yrj/dFKFPuw6o+aM--
