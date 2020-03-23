Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB24L4HZQKGQE5YX5KCI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83d.google.com (mail-qt1-x83d.google.com [IPv6:2607:f8b0:4864:20::83d])
	by mail.lfdr.de (Postfix) with ESMTPS id F087F18EF0F
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 06:15:25 +0100 (CET)
Received: by mail-qt1-x83d.google.com with SMTP id 88sf12078983qtb.18
        for <lists+clang-built-linux@lfdr.de>; Sun, 22 Mar 2020 22:15:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584940525; cv=pass;
        d=google.com; s=arc-20160816;
        b=DfslpnPvFN7qWMIZ/bqhxEggLLPd66zoYcHyA65UQnt7YP1BMXz6DvhBIPEcvLnJXc
         3uU0EfZOwgyvQEtqyHbEoXQyVXVschCGUhrY6M0pKMhlsshM2KWg3deQ+WK9GFXydKpR
         00Mbzz+wrhdUJeOvAHBD5u+XKCmCgZxjIeUx1XbHHulKdaibwUrLFkHwsKkJGbTKVzPJ
         2i95G1q7dPNLzUVS+Wn1etH0hHizad8o9jV2Sq+sojs4xCsK/4iklz1jbJzPZGudKAbh
         KkY3i99udwa4XXk8Ls0PX6FPUYigh2Zb89RqvhX1WgatoiMtpxt3F/LB0EP+yZpe2Hul
         L2FQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=iRswT9amDi63Q5uC3UM7qXEnC5zLSU8bwolok/GBT68=;
        b=W6saw77+A3OZF9Fy6Q/8z7eJyY+r+EOz0ThbP37CEEL3t+tdPXVXll68hks4yT+yV4
         xaPhjkhqgW2yMHT40qdMxgYHwmZM82AQrJOuq2+RPtjjWv+DVeA+vwqxOazNmZf0OC6U
         7IgA+jI8riIbRvwW0aAs7BpSrDX097pdaXdfyTLQJkpmNgzsUUN96g7Ykr2A7A1/yfC2
         hBpO36R7ZCO6XI0rSn0zQBolXyfBhDgLWeYUuuE/fFFPxvi1R0ae+fpDCzekmQDmU9Im
         92JKwmKph3VrDmjd/P5oKRLPMY6fTn/IZggxogHMbmbfWpp1LTddFrHblFNaXn03gDzZ
         ZOBA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=iRswT9amDi63Q5uC3UM7qXEnC5zLSU8bwolok/GBT68=;
        b=APnAKap09vAmslhafioXlvJgngGfWA5aWCe7cHParCF5lDw/eIgZuCgHOllcbp9ZxF
         5eqLxZDdBiJ7fCb692p0gL331/KRzLehONGfaYoRbbpAjaszcahPy8I0x2LRY92UrdTM
         MQQfbN1QDeuTDs9S/tvoEcPiF4HQ2YuPqItX/Ydbw3+1mIHA0E163bYWo81W6p/F0z5h
         NO/VFWCeGJpbb7HMcixnMy7IoAlGOY/rdEC1r0h9XYZllYnTCGNTvL44A+EFWTmHQazi
         hdKJDDkvSayuRYZSiSlBgM4Dr545ns5FJ8lr2jkynyHmmp3FEmcSoubQq84hi4cNbVBl
         y5zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=iRswT9amDi63Q5uC3UM7qXEnC5zLSU8bwolok/GBT68=;
        b=KePkGBRSC+0PZw4xUvO6NGJY9Q3x3tb/hl037iSyMqVenSqdvthzYir5HQ+5znms3O
         wQxodvGzcg6/OQbtrPil3h4aND5x3q5JNcRWa6OUspknjNpNMpITIHPxjMM3k78v+is4
         3VuRk3JSFQwAo0SIqYtrlektFQE5nPCO2bWgunO5HtqiOCDRBmE4+hEtblKvzbh3CtGU
         dV1nHyh4YLZQjhrfbRoJFPzL2nX3OpYSDOcQ9qomiFSp/CI3323439uNCoHtwpYhxEuA
         pjrwrM9dcbR36RGeikc+hJlcGKrVS93xraRT1CbEaTPjLsShz1ZX7JgrbZOGhSmMV2vX
         2aLA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1pyfFALd4yjz5ijdyjH4XPzPZj1xqjXD49SpFeYjyTHhSmW+rN
	/FQQmLSQrwwG1pyEA25Qk98=
X-Google-Smtp-Source: ADFU+vv9rCB2UZ3ba/9nTQBbNeL+x9xr/NRuMdtjWSGM7JrfmtIppM6Tnz8pxZYjYc+Eawg0uKyKYA==
X-Received: by 2002:ac8:7501:: with SMTP id u1mr19878005qtq.149.1584940523955;
        Sun, 22 Mar 2020 22:15:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:2ca1:: with SMTP id g30ls5742522qtd.1.gmail; Sun, 22 Mar
 2020 22:15:23 -0700 (PDT)
X-Received: by 2002:ac8:1c17:: with SMTP id a23mr20008310qtk.239.1584940523246;
        Sun, 22 Mar 2020 22:15:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584940523; cv=none;
        d=google.com; s=arc-20160816;
        b=xJploFO/Yu8YkdnW1pqJca+nGc/qYqvGneCXZmVe/nZ46jHgTYWQWWc7BmqhXXysEG
         4ge1MwDWokckuBVRucj2Cvt7/X1YhiCI/QAokubQdsqaLzAHMqNNbGWuqoair7ma0ltY
         a374aldf2tRrSIQaqND+8iXzONkjv7IPjJBLehhTuVZewPiCzu7iaoYJbPKmLpIeNWaI
         up8x5UWNzRayQGgJYVP+voPerc+43lXndHqEUfetVr+nfQp8C1q7btQ38DbPdZRgJBnT
         +/R8kyNibGqA7XqqeVlNvuOs92xgoNo48/jKNyWdPN9EU5yCYNYciy0M85L84OpDL1kq
         pzpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=gW4gomHWjNg4bmzYehhe/B+gJZxuPbcO0Ek3yWyFmBA=;
        b=DBBD5qxax7Go5jmvhLgRrvR7zyNKrGARLfXa1jQYM0mFBu5wxXmcvw+XrQ/hjwmCIm
         Q8FyylGsIKoJteQfyp4KbK/zeCrpW50SuwRWASk4as/rKjFmhkOzo5zYd7mCSqSGUyeS
         17WuGvbu2IE8bX5EQehkc2mKOoUO2LGD3XTTuLbeVsFkAUrrHyseNzY1/NYUgoOq5ReR
         1uo5/xpNMyCc4aF8Q5kVe1zQHOq5WbM5qUYAxvOyl9zLSXbYicug7Zmoa8bNaceT7QLZ
         aBQ7KFT0ZPpeP2MZbuS5wGg+XAxViGzmsTHc0I/Iqjn13gqC+w8NhwSip2GQ+p+z+pgB
         gURA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga05.intel.com (mga05.intel.com. [192.55.52.43])
        by gmr-mx.google.com with ESMTPS id d34si868879qte.4.2020.03.22.22.15.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Mar 2020 22:15:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) client-ip=192.55.52.43;
IronPort-SDR: 1j3Akhl5astEIsfuoD1DB1/N1HdMJSQgZUV33yn/2PuiRf7YoucSy3AnI0xT8t3yQzl58zV0P6
 4BRIVzV92DsA==
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 Mar 2020 22:15:19 -0700
IronPort-SDR: mqyzoZnvSOuaal1LyBlAGYplOaG/fMfLHeVeBb5QTQho6vpBa0s+DoOatBpM+3R9VGs6gqjC9C
 RwWg4lt7rkVg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,295,1580803200"; 
   d="gz'50?scan'50,208,50";a="246084002"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by orsmga003.jf.intel.com with ESMTP; 22 Mar 2020 22:15:17 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1jGFQi-000ImJ-AB; Mon, 23 Mar 2020 13:15:16 +0800
Date: Mon, 23 Mar 2020 13:14:28 +0800
From: kbuild test robot <lkp@intel.com>
To: Michal Simek <monstr@monstr.eu>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [monstr-microblaze:master-next-test 48/84]
 drivers/gpio/gpio-xilinx.c:68:25: error: field has incomplete type 'struct
 of_mm_gpio_chip'
Message-ID: <202003231322.cbv1sC9T%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="mYCpIKhGyMATD0i+"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted
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


--mYCpIKhGyMATD0i+
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   git://git.monstr.eu/linux-2.6-microblaze master-next-test
head:   851bfc6a2e2551b819a7f0d8791ea0a0cce089bf
commit: 8a0be21c42a2613cc1b9ddb339447b9fe199134b [48/84] Merge remote-tracking branch 'xlnx_rebase_v5.4' into master-next-test
config: x86_64-randconfig-f003-20200323 (attached as .config)
compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 006244152d6c7dd6a390ff89b236cc7801834b46)
reproduce:
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        git checkout 8a0be21c42a2613cc1b9ddb339447b9fe199134b
        # save the attached .config to linux build tree
        COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

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

e9a98626baf3b3 drivers/gpio/gpio-xilinx.c John Linn          2012-06-29   52  
b23d352f6774a3 drivers/gpio/gpio-xilinx.c Michal Simek       2013-05-29   53  /**
b23d352f6774a3 drivers/gpio/gpio-xilinx.c Michal Simek       2013-05-29   54   * struct xgpio_instance - Stores information about GPIO device
8fd1942dec9edd drivers/gpio/gpio-xilinx.c Michal Simek       2013-07-19   55   * @mmchip: OF GPIO chip for memory mapped banks
7c9997cc698ba9 drivers/gpio/gpio-xilinx.c Nava kishore Manne 2018-10-16   56   * @mmchip_dual: Pointer to the OF dual gpio chip
8fd1942dec9edd drivers/gpio/gpio-xilinx.c Michal Simek       2013-07-19   57   * @gpio_state: GPIO state shadow register
8fd1942dec9edd drivers/gpio/gpio-xilinx.c Michal Simek       2013-07-19   58   * @gpio_dir: GPIO direction shadow register
8fd1942dec9edd drivers/gpio/gpio-xilinx.c Michal Simek       2013-07-19   59   * @offset: GPIO channel offset
796ae5e3e4ae5f drivers/gpio/gpio-xilinx.c Michal Simek       2013-07-19   60   * @irq_base: GPIO channel irq base address
796ae5e3e4ae5f drivers/gpio/gpio-xilinx.c Michal Simek       2013-07-19   61   * @irq_enable: GPIO irq enable/disable bitfield
184f4682479b34 drivers/gpio/gpio-xilinx.c Shubhrajyoti Datta 2018-05-03   62   * @no_init: No intitialisation at probe
8fd1942dec9edd drivers/gpio/gpio-xilinx.c Michal Simek       2013-07-19   63   * @gpio_lock: Lock used for synchronization
796ae5e3e4ae5f drivers/gpio/gpio-xilinx.c Michal Simek       2013-07-19   64   * @irq_domain: irq_domain of the controller
34b6b71b142476 drivers/gpio/gpio-xilinx.c Maulik Jodhani     2017-02-10   65   * @clk: clock resource for this driver
b23d352f6774a3 drivers/gpio/gpio-xilinx.c Michal Simek       2013-05-29   66   */
0bcb6069a6e1af drivers/gpio/xilinx_gpio.c John Linn          2008-11-12   67  struct xgpio_instance {
0bcb6069a6e1af drivers/gpio/xilinx_gpio.c John Linn          2008-11-12  @68  	struct of_mm_gpio_chip mmchip;
7c9997cc698ba9 drivers/gpio/gpio-xilinx.c Nava kishore Manne 2018-10-16   69  	struct of_mm_gpio_chip *mmchip_dual;
b23d352f6774a3 drivers/gpio/gpio-xilinx.c Michal Simek       2013-05-29   70  	u32 gpio_state;
b23d352f6774a3 drivers/gpio/gpio-xilinx.c Michal Simek       2013-05-29   71  	u32 gpio_dir;
fb2379e7035e98 drivers/gpio/gpio-xilinx.c Michal Simek       2012-10-19   72  	u32 offset;
32161b344f3eb8 drivers/gpio/gpio-xilinx.c Michal Simek       2013-09-03   73  	int irq_base;
796ae5e3e4ae5f drivers/gpio/gpio-xilinx.c Michal Simek       2013-07-19   74  	u32 irq_enable;
184f4682479b34 drivers/gpio/gpio-xilinx.c Shubhrajyoti Datta 2018-05-03   75  	bool no_init;
b23d352f6774a3 drivers/gpio/gpio-xilinx.c Michal Simek       2013-05-29   76  	spinlock_t gpio_lock;
796ae5e3e4ae5f drivers/gpio/gpio-xilinx.c Michal Simek       2013-07-19   77  	struct irq_domain *irq_domain;
34b6b71b142476 drivers/gpio/gpio-xilinx.c Maulik Jodhani     2017-02-10   78  	struct clk *clk;
0bcb6069a6e1af drivers/gpio/xilinx_gpio.c John Linn          2008-11-12   79  };
0bcb6069a6e1af drivers/gpio/xilinx_gpio.c John Linn          2008-11-12   80  
0bcb6069a6e1af drivers/gpio/xilinx_gpio.c John Linn          2008-11-12   81  /**
0bcb6069a6e1af drivers/gpio/xilinx_gpio.c John Linn          2008-11-12   82   * xgpio_get - Read the specified signal of the GPIO device.
0bcb6069a6e1af drivers/gpio/xilinx_gpio.c John Linn          2008-11-12   83   * @gc:     Pointer to gpio_chip device structure.
0bcb6069a6e1af drivers/gpio/xilinx_gpio.c John Linn          2008-11-12   84   * @gpio:   GPIO signal number.
0bcb6069a6e1af drivers/gpio/xilinx_gpio.c John Linn          2008-11-12   85   *
8fd1942dec9edd drivers/gpio/gpio-xilinx.c Michal Simek       2013-07-19   86   * This function reads the specified signal of the GPIO device.
8fd1942dec9edd drivers/gpio/gpio-xilinx.c Michal Simek       2013-07-19   87   *
8fd1942dec9edd drivers/gpio/gpio-xilinx.c Michal Simek       2013-07-19   88   * Return:
8fd1942dec9edd drivers/gpio/gpio-xilinx.c Michal Simek       2013-07-19   89   * 0 if direction of GPIO signals is set as input otherwise it
8fd1942dec9edd drivers/gpio/gpio-xilinx.c Michal Simek       2013-07-19   90   * returns negative error value.
0bcb6069a6e1af drivers/gpio/xilinx_gpio.c John Linn          2008-11-12   91   */
0bcb6069a6e1af drivers/gpio/xilinx_gpio.c John Linn          2008-11-12   92  static int xgpio_get(struct gpio_chip *gc, unsigned int gpio)
0bcb6069a6e1af drivers/gpio/xilinx_gpio.c John Linn          2008-11-12   93  {
0bcb6069a6e1af drivers/gpio/xilinx_gpio.c John Linn          2008-11-12  @94  	struct of_mm_gpio_chip *mm_gc = to_of_mm_gpio_chip(gc);
fb2379e7035e98 drivers/gpio/gpio-xilinx.c Michal Simek       2012-10-19   95  	struct xgpio_instance *chip =
fb2379e7035e98 drivers/gpio/gpio-xilinx.c Michal Simek       2012-10-19   96  	    container_of(mm_gc, struct xgpio_instance, mmchip);
fb2379e7035e98 drivers/gpio/gpio-xilinx.c Michal Simek       2012-10-19   97  
fb2379e7035e98 drivers/gpio/gpio-xilinx.c Michal Simek       2012-10-19  @98  	void __iomem *regs = mm_gc->regs + chip->offset;
324c11445a4877 drivers/gpio/gpio-xilinx.c Michal Simek       2012-11-27   99  
b23d352f6774a3 drivers/gpio/gpio-xilinx.c Michal Simek       2013-05-29  100  	return !!(xgpio_readreg(regs + XGPIO_DATA_OFFSET) & BIT(gpio));
0bcb6069a6e1af drivers/gpio/xilinx_gpio.c John Linn          2008-11-12  101  }
0bcb6069a6e1af drivers/gpio/xilinx_gpio.c John Linn          2008-11-12  102  

:::::: The code at line 68 was first introduced by commit
:::::: 0bcb6069a6e1af5c114a2a8873ec43ada8933596 GPIO: add new Xilinx driver for powerpc

:::::: TO: John Linn <john.linn@xilinx.com>
:::::: CC: Linus Torvalds <torvalds@linux-foundation.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202003231322.cbv1sC9T%25lkp%40intel.com.

--mYCpIKhGyMATD0i+
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
SEf6nBimXRF3eil651/G5Xjx/x/v4nVDAgIA

--mYCpIKhGyMATD0i+--
