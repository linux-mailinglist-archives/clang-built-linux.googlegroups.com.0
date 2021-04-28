Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBJHOUWCAMGQEYXS6JFQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb39.google.com (mail-yb1-xb39.google.com [IPv6:2607:f8b0:4864:20::b39])
	by mail.lfdr.de (Postfix) with ESMTPS id ED98436D9F0
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Apr 2021 16:54:29 +0200 (CEST)
Received: by mail-yb1-xb39.google.com with SMTP id u7-20020a259b470000b02904dca50820c2sf42156188ybo.11
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Apr 2021 07:54:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619621669; cv=pass;
        d=google.com; s=arc-20160816;
        b=wm5/YS4K5gPiLoDKVl2oCLKt/iXS5cve7fuq3IJ6j0FDcJgG7WvwEs7Mj1yv5YpIjK
         z9+0WVf/fcl4CZ+QYX5LYHMi0HnaEd4r113p9nB+S9lqMOG0hybYU0MwUH3WAcNneGr6
         N7BEa/sxUZ4bejJPyhqsZOxPazLnNWNWUuuQ/b/r44erzSfXErbMTcrF8GsyBSsYMxbe
         /wc2Jd25+2XfnP6WFO8FJCdtWJnRwUvWTWn5MBE+TdQMVw56igOO/X1uXA+Ffs+M03Vf
         j+awmzJwG3sZRhkGOYCdtjAT34otwxH3eRv7GHMPLNvj739QHRRIb3MeeB81M6dcCwJE
         4SBg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=vdGRI1UYWz1fi3xvnRL7mgG67znGxfpja6d9E7gEM+4=;
        b=bv3fqGxrnHo8UQptFJ3/nwwBP29jN4f/jK8TQWUPE8jMKC5KG4wfa6kdGxmNSIlwhd
         wmevAXM9b3k7A7vomTohyQCPuKx275H9d2x1Unla5QpdE0My+PewaTuysMXSq+FKI0zb
         IO9o0cKPmYVMB9qv7HEoMtnZHahUG96iHeG3expmVQR0adjSLm1YEd8JPva3UR0BU24w
         D5ckVktDlRZy9GmfJpPjW3xJ0S2lVRhOYsw8t9p6cnvX3Yht24z/sgkONZpsBr2jXmk1
         nz7jMl4dp/YscMxPIRFzjT8BFQ/sxX7QuLF7IGztUaafAfqyghODwM3+wRdggDnhC7U7
         27uw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vdGRI1UYWz1fi3xvnRL7mgG67znGxfpja6d9E7gEM+4=;
        b=b6jMp88wkxFr0RHxZNNpnzQzLKO0xOB6oNee251C7Q0FaixOJAYUjaq69kgyMEE5q6
         tCsEmeRfFAKcZgqM7cgNoG0vEb+2GHNl2zNjMdxnSL1Sp1TjTxOl50bqEssac3imcIbA
         7JLMEq+hlAstt0nPlKvnwIRI0ONY0YGh/HNOSNOF1OoX2jcUAEZ/ovZ2ko10kymdQtAx
         y2eA4YmiXxieJvqHhvrDAcYIigI8G/PSX2G9X0NjrcVBaVqf6BRR1fdDnrUqMEJ8AADf
         PMtTxWzTU5N5oyZz85wh/9lGE8RQDo6/K5BRTi2oviZ7JQ0Wo6E8LU3dYBUYKmdALX33
         srmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=vdGRI1UYWz1fi3xvnRL7mgG67znGxfpja6d9E7gEM+4=;
        b=ZVo6nlYpzXLpbkStKfoqAgCVl40w5kaUGG08jDeWDKAd6+aEvVcCELRhWW1DUqkf2V
         EfXxTs955rVvyy6RJCuv76A84HELfbLvMRMvogtohsDRfjmqYuRkTqaJTcPrZOtVlwri
         jL6aDg+ILPheY96ir4wSMK8m3xuJ/ujHGXtVpOmqxNWwSZfB3Jx3LZPEAIwUWpVgje0X
         v4th8gQ80LnQ+0s0v4RWny1IHVhMO3I5NT2pmeLZssjWUzOsGqNNjhZlEYtEpqNANd7M
         /wKp9OjUidvzLuTXVVAGIB8HDdPEo3xmkRQ71x+lRot727E41Xj2atmgS5wU34S3edBg
         CDow==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5302vDjMeCXVLBsq6vrLxs+HKb6PvzpH7fEBZ7LU9ZwpdpjEWg9+
	fpzbAPnNOhoLlfUu77rD+nw=
X-Google-Smtp-Source: ABdhPJyg3rhoanshxWV368i/IZ23x/PDieO4CigM+eCSfxiA9O3me/MQ2p6BdwVXwhe8qcQSwHW2CA==
X-Received: by 2002:a25:a067:: with SMTP id x94mr43306959ybh.42.1619621668965;
        Wed, 28 Apr 2021 07:54:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:9307:: with SMTP id f7ls85994ybo.10.gmail; Wed, 28 Apr
 2021 07:54:28 -0700 (PDT)
X-Received: by 2002:a25:c8c3:: with SMTP id y186mr20217308ybf.277.1619621668338;
        Wed, 28 Apr 2021 07:54:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619621668; cv=none;
        d=google.com; s=arc-20160816;
        b=M5hPEx3Yw9usRlz3YBtQFp09hk8c//F4lZTjDFVzlJPgSt9qec1qiOaMD4FXMTFeAC
         /5qgRi5uwZ1EIw0/v+hCTsEwcDQUOrR/u+PtDrN244WJmkFOdWkolykVYAcblwMTn5cf
         tPH0zZirp4J8xnlttWzg2Eaw1Gb1ubGuHRJWgiQsCAUWaZc80ojjPMnpOfCeqwtxxLEL
         kTx5QWdbITKkKOGhDlaQ3Q6d3oInT0A+OZ3Uo7cNh05/1xav+2KeIip3Tv0toRSuDaoy
         dhMTGAnT/CKz6G8WiwGvynSJzGMwtKrlAB/ZNnWme/siIeWQHqYNg4c+OZNSHUT9v2OP
         /l2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=//QQWOWGplvESK5Sh/PwwA8Ql3sLDa357X1VnV6X7l4=;
        b=Ci0x9dF1TrAnr4CfdfB3m1C74/Zc0kDzxvUqdE+9uO4YgFnB6ALYLKw7U+vztRGbLQ
         upb4X+JwEv+wvNSVane5MeSGE2fm+xPbDgvvdA65vwS1ZBMl7XhMidG73wkeJgccFZ2+
         g/m6vDkFMpGcvyKyflahd7uvf4oPywLgj0ox9ootHZmg/KI3CfRCmp5iEe6+jifm0NSH
         8Wy6F4HMvwjaIaShw4Se5eI4gEx6UaBiqjLchFcLEeB83nF3NitZQZqeuUQ5/t93Bg7A
         0KRefedUz2fPfhcIt9FpiNo0pNN+JFSp+haSrJ52JBJuVtcDM/yvX/91ICo5ieymcBhn
         YsFg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga03.intel.com (mga03.intel.com. [134.134.136.65])
        by gmr-mx.google.com with ESMTPS id l14si23246ybp.4.2021.04.28.07.54.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Apr 2021 07:54:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) client-ip=134.134.136.65;
IronPort-SDR: /b7etCb3hBpFpZLwnd/9T/UMFJvwFA4SBCfjJclofIHrraHZ54VQ07Eg98UiIkGF7zjF53K2tj
 ITEMpsi75mqQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9968"; a="196816022"
X-IronPort-AV: E=Sophos;i="5.82,258,1613462400"; 
   d="gz'50?scan'50,208,50";a="196816022"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Apr 2021 07:54:24 -0700
IronPort-SDR: CKn4VGor3WSbaTqUexwQmYRLLwylA9HQKhkW8M3smje4BJ6qgkYb2GI4wNwdFlTNGnNdWlBGGv
 Tgp/9ZmC6bXA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,258,1613462400"; 
   d="gz'50?scan'50,208,50";a="430335894"
Received: from lkp-server01.sh.intel.com (HELO a48ff7ddd223) ([10.239.97.150])
  by orsmga008.jf.intel.com with ESMTP; 28 Apr 2021 07:54:22 -0700
Received: from kbuild by a48ff7ddd223 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lbla1-0007Aa-SC; Wed, 28 Apr 2021 14:54:21 +0000
Date: Wed, 28 Apr 2021 22:54:12 +0800
From: kernel test robot <lkp@intel.com>
To: Michal Simek <monstr@monstr.eu>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-arm-kernel@lists.infradead.org
Subject: [xlnx:xlnx_rebase_v5.4 1277/1755] drivers/gpio/gpio-xilinx.c:68:25:
 error: field has incomplete type 'struct of_mm_gpio_chip'
Message-ID: <202104282258.DydARn5f-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="wac7ysb48OaltWcw"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted
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


--wac7ysb48OaltWcw
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://github.com/Xilinx/linux-xlnx xlnx_rebase_v5.4
head:   77883b257c27f47445381c70c9236ade8f87eeaa
commit: af0c19b6f15388c554317280433100fd9f3d7d0a [1277/1755] gpio: xilinx: Use xilinx tested gpio driver
config: x86_64-randconfig-a004-20210428 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 87fc97169e7901dfe56ca0da0d92da0c02d2ef48)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        # https://github.com/Xilinx/linux-xlnx/commit/af0c19b6f15388c554317280433100fd9f3d7d0a
        git remote add xlnx https://github.com/Xilinx/linux-xlnx
        git fetch --no-tags xlnx xlnx_rebase_v5.4
        git checkout af0c19b6f15388c554317280433100fd9f3d7d0a
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All error/warnings (new ones prefixed by >>):

>> drivers/gpio/gpio-xilinx.c:68:25: error: field has incomplete type 'struct of_mm_gpio_chip'
           struct of_mm_gpio_chip mmchip;
                                  ^
   drivers/gpio/gpio-xilinx.c:68:9: note: forward declaration of 'struct of_mm_gpio_chip'
           struct of_mm_gpio_chip mmchip;
                  ^
>> drivers/gpio/gpio-xilinx.c:94:34: error: implicit declaration of function 'to_of_mm_gpio_chip' [-Werror,-Wimplicit-function-declaration]
           struct of_mm_gpio_chip *mm_gc = to_of_mm_gpio_chip(gc);
                                           ^
>> drivers/gpio/gpio-xilinx.c:94:26: warning: incompatible integer to pointer conversion initializing 'struct of_mm_gpio_chip *' with an expression of type 'int' [-Wint-conversion]
           struct of_mm_gpio_chip *mm_gc = to_of_mm_gpio_chip(gc);
                                   ^       ~~~~~~~~~~~~~~~~~~~~~~
>> drivers/gpio/gpio-xilinx.c:98:28: error: incomplete definition of type 'struct of_mm_gpio_chip'
           void __iomem *regs = mm_gc->regs + chip->offset;
                                ~~~~~^
   drivers/gpio/gpio-xilinx.c:68:9: note: forward declaration of 'struct of_mm_gpio_chip'
           struct of_mm_gpio_chip mmchip;
                  ^
   drivers/gpio/gpio-xilinx.c:115:34: error: implicit declaration of function 'to_of_mm_gpio_chip' [-Werror,-Wimplicit-function-declaration]
           struct of_mm_gpio_chip *mm_gc = to_of_mm_gpio_chip(gc);
                                           ^
   drivers/gpio/gpio-xilinx.c:115:26: warning: incompatible integer to pointer conversion initializing 'struct of_mm_gpio_chip *' with an expression of type 'int' [-Wint-conversion]
           struct of_mm_gpio_chip *mm_gc = to_of_mm_gpio_chip(gc);
                                   ^       ~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpio/gpio-xilinx.c:118:28: error: incomplete definition of type 'struct of_mm_gpio_chip'
           void __iomem *regs = mm_gc->regs;
                                ~~~~~^
   drivers/gpio/gpio-xilinx.c:68:9: note: forward declaration of 'struct of_mm_gpio_chip'
           struct of_mm_gpio_chip mmchip;
                  ^
   drivers/gpio/gpio-xilinx.c:147:34: error: implicit declaration of function 'to_of_mm_gpio_chip' [-Werror,-Wimplicit-function-declaration]
           struct of_mm_gpio_chip *mm_gc = to_of_mm_gpio_chip(gc);
                                           ^
   drivers/gpio/gpio-xilinx.c:147:26: warning: incompatible integer to pointer conversion initializing 'struct of_mm_gpio_chip *' with an expression of type 'int' [-Wint-conversion]
           struct of_mm_gpio_chip *mm_gc = to_of_mm_gpio_chip(gc);
                                   ^       ~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpio/gpio-xilinx.c:150:28: error: incomplete definition of type 'struct of_mm_gpio_chip'
           void __iomem *regs = mm_gc->regs;
                                ~~~~~^
   drivers/gpio/gpio-xilinx.c:68:9: note: forward declaration of 'struct of_mm_gpio_chip'
           struct of_mm_gpio_chip mmchip;
                  ^
   drivers/gpio/gpio-xilinx.c:187:34: error: implicit declaration of function 'to_of_mm_gpio_chip' [-Werror,-Wimplicit-function-declaration]
           struct of_mm_gpio_chip *mm_gc = to_of_mm_gpio_chip(gc);
                                           ^
   drivers/gpio/gpio-xilinx.c:187:26: warning: incompatible integer to pointer conversion initializing 'struct of_mm_gpio_chip *' with an expression of type 'int' [-Wint-conversion]
           struct of_mm_gpio_chip *mm_gc = to_of_mm_gpio_chip(gc);
                                   ^       ~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpio/gpio-xilinx.c:190:28: error: incomplete definition of type 'struct of_mm_gpio_chip'
           void __iomem *regs = mm_gc->regs;
                                ~~~~~^
   drivers/gpio/gpio-xilinx.c:68:9: note: forward declaration of 'struct of_mm_gpio_chip'
           struct of_mm_gpio_chip mmchip;
                  ^
   drivers/gpio/gpio-xilinx.c:218:34: error: implicit declaration of function 'to_of_mm_gpio_chip' [-Werror,-Wimplicit-function-declaration]
           struct of_mm_gpio_chip *mm_gc = to_of_mm_gpio_chip(gc);
                                           ^
   drivers/gpio/gpio-xilinx.c:218:26: warning: incompatible integer to pointer conversion initializing 'struct of_mm_gpio_chip *' with an expression of type 'int' [-Wint-conversion]
           struct of_mm_gpio_chip *mm_gc = to_of_mm_gpio_chip(gc);
                                   ^       ~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpio/gpio-xilinx.c:221:28: error: incomplete definition of type 'struct of_mm_gpio_chip'
           void __iomem *regs = mm_gc->regs;
                                ~~~~~^
   drivers/gpio/gpio-xilinx.c:68:9: note: forward declaration of 'struct of_mm_gpio_chip'
           struct of_mm_gpio_chip mmchip;
                  ^
   drivers/gpio/gpio-xilinx.c:251:41: error: incomplete definition of type 'struct of_mm_gpio_chip'
                   chip->gpio_state = xgpio_readreg(mm_gc->regs +
                                                    ~~~~~^
   drivers/gpio/gpio-xilinx.c:49:45: note: expanded from macro 'xgpio_readreg'
   # define xgpio_readreg(offset)          __raw_readl(offset)
                                                       ^~~~~~
   drivers/gpio/gpio-xilinx.c:68:9: note: forward declaration of 'struct of_mm_gpio_chip'
           struct of_mm_gpio_chip mmchip;
                  ^
   drivers/gpio/gpio-xilinx.c:253:39: error: incomplete definition of type 'struct of_mm_gpio_chip'
                   chip->gpio_dir = xgpio_readreg(mm_gc->regs + XGPIO_TRI_OFFSET);
                                                  ~~~~~^
   drivers/gpio/gpio-xilinx.c:49:45: note: expanded from macro 'xgpio_readreg'
   # define xgpio_readreg(offset)          __raw_readl(offset)
                                                       ^~~~~~
   drivers/gpio/gpio-xilinx.c:68:9: note: forward declaration of 'struct of_mm_gpio_chip'
           struct of_mm_gpio_chip mmchip;
                  ^
   drivers/gpio/gpio-xilinx.c:255:23: error: incomplete definition of type 'struct of_mm_gpio_chip'
                   xgpio_writereg(mm_gc->regs + chip->offset + XGPIO_DATA_OFFSET,
                                  ~~~~~^
   drivers/gpio/gpio-xilinx.c:50:56: note: expanded from macro 'xgpio_writereg'
   # define xgpio_writereg(offset, val)    __raw_writel(val, offset)
                                                             ^~~~~~
   drivers/gpio/gpio-xilinx.c:68:9: note: forward declaration of 'struct of_mm_gpio_chip'
           struct of_mm_gpio_chip mmchip;
                  ^
   drivers/gpio/gpio-xilinx.c:257:23: error: incomplete definition of type 'struct of_mm_gpio_chip'
                   xgpio_writereg(mm_gc->regs + chip->offset + XGPIO_TRI_OFFSET,
                                  ~~~~~^
   drivers/gpio/gpio-xilinx.c:50:56: note: expanded from macro 'xgpio_writereg'
   # define xgpio_writereg(offset, val)    __raw_writel(val, offset)
                                                             ^~~~~~
   drivers/gpio/gpio-xilinx.c:68:9: note: forward declaration of 'struct of_mm_gpio_chip'
           struct of_mm_gpio_chip mmchip;
                  ^
   drivers/gpio/gpio-xilinx.c:274:34: error: implicit declaration of function 'to_of_mm_gpio_chip' [-Werror,-Wimplicit-function-declaration]
           struct of_mm_gpio_chip *mm_gc = to_of_mm_gpio_chip(gc);
                                           ^
   drivers/gpio/gpio-xilinx.c:274:26: warning: incompatible integer to pointer conversion initializing 'struct of_mm_gpio_chip *' with an expression of type 'int' [-Wint-conversion]
           struct of_mm_gpio_chip *mm_gc = to_of_mm_gpio_chip(gc);
                                   ^       ~~~~~~~~~~~~~~~~~~~~~~
>> drivers/gpio/gpio-xilinx.c:277:10: error: no member named 'of_gpio_n_cells' in 'struct gpio_chip'
           if (gc->of_gpio_n_cells == 3 && flags)
               ~~  ^
   drivers/gpio/gpio-xilinx.c:307:29: error: incomplete definition of type 'struct of_mm_gpio_chip'
                   temp = xgpio_readreg(mm_gc->regs + XGPIO_IPIER_OFFSET);
                                        ~~~~~^
   drivers/gpio/gpio-xilinx.c:49:45: note: expanded from macro 'xgpio_readreg'
   # define xgpio_readreg(offset)          __raw_readl(offset)
                                                       ^~~~~~
   drivers/gpio/gpio-xilinx.c:68:9: note: forward declaration of 'struct of_mm_gpio_chip'
           struct of_mm_gpio_chip mmchip;
                  ^
   drivers/gpio/gpio-xilinx.c:309:23: error: incomplete definition of type 'struct of_mm_gpio_chip'
                   xgpio_writereg(mm_gc->regs + XGPIO_IPIER_OFFSET, temp);
                                  ~~~~~^
   drivers/gpio/gpio-xilinx.c:50:56: note: expanded from macro 'xgpio_writereg'
   # define xgpio_writereg(offset, val)    __raw_writel(val, offset)
                                                             ^~~~~~
   drivers/gpio/gpio-xilinx.c:68:9: note: forward declaration of 'struct of_mm_gpio_chip'
           struct of_mm_gpio_chip mmchip;
                  ^
   fatal error: too many errors emitted, stopping now [-ferror-limit=]
   6 warnings and 20 errors generated.


vim +68 drivers/gpio/gpio-xilinx.c

    52	
    53	/**
    54	 * struct xgpio_instance - Stores information about GPIO device
    55	 * @mmchip: OF GPIO chip for memory mapped banks
    56	 * @mmchip_dual: Pointer to the OF dual gpio chip
    57	 * @gpio_state: GPIO state shadow register
    58	 * @gpio_dir: GPIO direction shadow register
    59	 * @offset: GPIO channel offset
    60	 * @irq_base: GPIO channel irq base address
    61	 * @irq_enable: GPIO irq enable/disable bitfield
    62	 * @no_init: No intitialisation at probe
    63	 * @gpio_lock: Lock used for synchronization
    64	 * @irq_domain: irq_domain of the controller
    65	 * @clk: clock resource for this driver
    66	 */
    67	struct xgpio_instance {
  > 68		struct of_mm_gpio_chip mmchip;
    69		struct of_mm_gpio_chip *mmchip_dual;
    70		u32 gpio_state;
    71		u32 gpio_dir;
    72		u32 offset;
    73		int irq_base;
    74		u32 irq_enable;
    75		bool no_init;
    76		spinlock_t gpio_lock;
    77		struct irq_domain *irq_domain;
    78		struct clk *clk;
    79	};
    80	
    81	/**
    82	 * xgpio_get - Read the specified signal of the GPIO device.
    83	 * @gc:     Pointer to gpio_chip device structure.
    84	 * @gpio:   GPIO signal number.
    85	 *
    86	 * This function reads the specified signal of the GPIO device.
    87	 *
    88	 * Return:
    89	 * 0 if direction of GPIO signals is set as input otherwise it
    90	 * returns negative error value.
    91	 */
    92	static int xgpio_get(struct gpio_chip *gc, unsigned int gpio)
    93	{
  > 94		struct of_mm_gpio_chip *mm_gc = to_of_mm_gpio_chip(gc);
    95		struct xgpio_instance *chip =
    96		    container_of(mm_gc, struct xgpio_instance, mmchip);
    97	
  > 98		void __iomem *regs = mm_gc->regs + chip->offset;
    99	
   100		return !!(xgpio_readreg(regs + XGPIO_DATA_OFFSET) & BIT(gpio));
   101	}
   102	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202104282258.DydARn5f-lkp%40intel.com.

--wac7ysb48OaltWcw
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
2QEA

--wac7ysb48OaltWcw--
