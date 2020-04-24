Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBUMJRL2QKGQEX7KLQUQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd37.google.com (mail-io1-xd37.google.com [IPv6:2607:f8b0:4864:20::d37])
	by mail.lfdr.de (Postfix) with ESMTPS id 958241B6E04
	for <lists+clang-built-linux@lfdr.de>; Fri, 24 Apr 2020 08:18:58 +0200 (CEST)
Received: by mail-io1-xd37.google.com with SMTP id y4sf8969598ioy.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 23 Apr 2020 23:18:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587709137; cv=pass;
        d=google.com; s=arc-20160816;
        b=ftonFfb0jwOaH8txdLyZZkysPtbAYwXYnEFRs7E87f8mLMRDQg2VxoEpyRdRqAIMoT
         f0j0HNTtvCYsnqCzW4gfB4SC44F0rnb/Fa81to/LTC9dT1xMyWmqQiqu91d6esNmqtFJ
         YRMemGPGDrUQCmJDelqTd7VIVE4OK1+ZI/Z3jDavZkZ3pJfmifF/DbP+dstwBUQ5uMHz
         vp4PIq0Mvf1o9sEDClc3quT84w0Z/vIujKKG63hAR7GcKlvZhz2/9EyGrqHh38Cp6AB4
         faI9HJjPPXAP0KL0hS58l+IlBmEY+24fPqr8p5RV1jr14OU2Yle1FQGshIByFGtEraGx
         bL0A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=8eVH7KPOCz/FSgIWKTjdYzI261RPrklwrl+kCG99Etw=;
        b=nUAyiwNWrzoqrd9ATqaavCMy1hH5lEF2sP0/0IRzqnjKHMQ1dNjD60l1ToQMgAldz+
         PCWDB0vIi9AUMeXL6eiKLxPlj/JgZL2HKftVQfFDy1M/IbSXp+869XGMbLNwsBYLo31b
         btaiZVpvKeDHzMuC9FEuUBhCQ+PgjqskFH48bWSTQhuJ+3e6JgHGDUb5oijkgkyPNrse
         7uPTq2uVmH2ZTr4SHW0X0RNWyM7M4jU66xbp5/vmra02oAhaDuCh2xW7Dm4qqvYB1Ejx
         P7+iMsV4Hg4GMm6xaMmCCPkCe5/Ix3wKNPubUNHU2R/lm9V6Vb6mgRt2qlOt+KWS+Hjc
         6XuA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8eVH7KPOCz/FSgIWKTjdYzI261RPrklwrl+kCG99Etw=;
        b=ESD6Cn7vAyt+0MwWJ2q3sUkDjYT+uOHaLoPzN6oQWlxCGVq4hQIIGi9LV8LwXuGLg2
         PfC0c4+KryRyM+fYlKV89Ft/nsR5zz8BwOjKqeGtpcfMjZ3ZctkmsSl3nQgo9bYVoOoj
         /XTc+h9nL61lOFHtpRubYmsH0po9dxNMnz6+XSEsGQUKSNcvdK2cmjOyxBoARhZrLK0X
         GVUEG5+6DzI5TRou+fUPOaBLmssH5fLlS2ZL2DMsE7c5xGgUVfZyxdDywxCOK/wmjsJW
         y6nSMZVGJSdbY5o3MXaQil4BXE6mQ3U4Rz2kfByp36O1mVQgaOjyFZOVhNM3X81oyjdI
         VQTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=8eVH7KPOCz/FSgIWKTjdYzI261RPrklwrl+kCG99Etw=;
        b=ZaAOwjDQN/zQsS9ZczXDmE35MI3TbCL+uIynZCYASh3zCg5CzFpP7kJYrlQXSt98HT
         j+BIHOZhW8nVSq+var+cAkvvc4EluEpffIFWLlWr2p5aYcmumzRkZpsThfeRDh3epjxb
         15ANQjBuO2eXWL1lQrCFrddhRkSOlxDTm9c0l1wpKlCkA19BE/92W3ckrb5o8xlCQqqT
         aJb0rswVWbABRlus9VhInDp0TIdS0JT3RCk+cuGeJVZ52Yo2fMFMTYlAPxGfaXPnkANF
         HLb0iZgNRDAjryXxXbd4r+Jltj127er/EqA7c7wdMvyX8Rz01BjKyAlz4Pow6ICXeIVS
         XLCg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZwa0QcD9SFM3Eu2wIqMgUWPXv6I2LWSEKs3LbRBuKpog8HYWU0
	mZqpQ2v/Qbm0/CI2onLOl+M=
X-Google-Smtp-Source: APiQypKH054+sCwyWH/jBzP2lKIK8CdZ8Whl9k52NruBM5sV3CdYIbkCy7DBqrYi9y6ZvPtILdPEmQ==
X-Received: by 2002:a5d:88d3:: with SMTP id i19mr7319629iol.194.1587709137221;
        Thu, 23 Apr 2020 23:18:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:4919:: with SMTP id w25ls3076011ila.10.gmail; Thu, 23
 Apr 2020 23:18:56 -0700 (PDT)
X-Received: by 2002:a92:8c90:: with SMTP id s16mr7245234ill.164.1587709136862;
        Thu, 23 Apr 2020 23:18:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587709136; cv=none;
        d=google.com; s=arc-20160816;
        b=grJRLwH762aFqKlhmyzuWKvcVEJBF+TUG2qS3y21P2oXalHGVlrwslq83QvKNiagIL
         uwFA3dT8g3K2ahS6nd0N4kfYxMhv7VqDtMJV3lfPkJcQw8xFm2GYtq+0UHTEZLLWjVnl
         Aj3RV89X5ouE8/Y6WB1tmwDxNLWoChbyz0B2+/o82koC1GALpUnx7j3a5jQLVavHJ6++
         tPV845OaaYnwjewCIFAyjG4yGUcXm+CqhDFYOVSL65WVLjjDGGFv6eSFetTWt1Bia2Ss
         gkIvXdx8SKUxWohwEjzfB7OCUo2bw/b2kMYT51THaLUDlE/S3LrDCIzMp2Ug8WYot8rm
         TVLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :from:date:ironport-sdr:ironport-sdr;
        bh=scBvAdvtU+t7kZoSvUwDzuyntJT/vqreueyn2bL0CCk=;
        b=z/NQm5pho1AFMnZpoeRfZl087YgN1mGlcVEd1Abcm72Iyxwx+8kzqIgSuBTdewJ9hG
         uQFWInSX4m+Es5deral52OxqAvJtVh3yC7fpw7llVnl24wmyNAd0azH1w+a0WxCAagKg
         TJIy7gInLo7YmeJda/tmQy2Y2Zm/EhmGjd8YGHjDONZ2tMAlZfuYE4v1Tp7DHAe4QPqb
         rIlhKpn/ukUtfQt4z/XzdB37ag+zv0X9u/Nna+tOivghwURmm6Wcx9QWCipsNnByG05A
         1dq0rBi0NYRTuSuroe9W8Y36hAvDQI0JlgW+ZTUjhQFRISo37uno1ULWvro9VytsjJll
         z8RQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga01.intel.com (mga01.intel.com. [192.55.52.88])
        by gmr-mx.google.com with ESMTPS id v22si508274ioj.2.2020.04.23.23.18.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 23 Apr 2020 23:18:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) client-ip=192.55.52.88;
IronPort-SDR: Xr48clYb1iUWBh2AEnM2hTOIwMAp6ZiZVFC5qDwFHmPQbns1cketXwjIcPALptgFf6vjGy3bh5
 7tOxDcPzxfkQ==
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Apr 2020 23:18:55 -0700
IronPort-SDR: JQowudNVlG7yl6oPzDso26+Bc4m9kYkXopwvErp/dYQ2b0qxwSrTuaAS0hk+y2kB/GoWHRth7Z
 JPp8OW2tqJBw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,310,1583222400"; 
   d="gz'50?scan'50,208,50";a="274498247"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by orsmga002.jf.intel.com with ESMTP; 23 Apr 2020 23:18:53 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1jRrfn-000FFj-Ew; Fri, 24 Apr 2020 14:18:51 +0800
Date: Fri, 24 Apr 2020 14:18:26 +0800
From: kbuild test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [stable:linux-4.19.y 9628/9999]
 drivers/gpu/drm/panel/panel-sitronix-st7789v.c:196:12: warning: stack frame
 size of 19128 bytes in function 'st7789v_prepare'
Message-ID: <202004241414.ovgCwqXh%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="vkogqOf2sHV7VnPd"
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


--vkogqOf2sHV7VnPd
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

TO: Dirk Mueller <dmueller@suse.com>
CC: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
CC: David Gibson <david@gibson.dropbear.id.au>
CC: Rob Herring <robh@kernel.org>

Hi Dirk,

First bad commit (maybe != root cause):

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable.git linux-4.19.y
head:   7edd66cf61670d2d0c31f89cb3a247016e489a8a
commit: 621f2ded601546119fabccd1651b1ae29d26cd38 [9628/9999] scripts/dtc: Remove redundant YYLOC global declaration
config: x86_64-randconfig-a001-20200423 (attached as .config)
compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project bbf386f02b05db017fda66875cc5edef70779244)
reproduce:
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        git checkout 621f2ded601546119fabccd1651b1ae29d26cd38
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kbuild test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/gpu/drm/panel/panel-sitronix-st7789v.c:196:12: warning: stack frame size of 19128 bytes in function 'st7789v_prepare' [-Wframe-larger-than=]
   static int st7789v_prepare(struct drm_panel *panel)
              ^
   1 warning generated.

vim +/st7789v_prepare +196 drivers/gpu/drm/panel/panel-sitronix-st7789v.c

7142afb3a186ed Maxime Ripard 2017-04-03  195  
7142afb3a186ed Maxime Ripard 2017-04-03 @196  static int st7789v_prepare(struct drm_panel *panel)
7142afb3a186ed Maxime Ripard 2017-04-03  197  {
7142afb3a186ed Maxime Ripard 2017-04-03  198  	struct st7789v *ctx = panel_to_st7789v(panel);
7142afb3a186ed Maxime Ripard 2017-04-03  199  	int ret;
7142afb3a186ed Maxime Ripard 2017-04-03  200  
7142afb3a186ed Maxime Ripard 2017-04-03  201  	ret = regulator_enable(ctx->power);
7142afb3a186ed Maxime Ripard 2017-04-03  202  	if (ret)
7142afb3a186ed Maxime Ripard 2017-04-03  203  		return ret;
7142afb3a186ed Maxime Ripard 2017-04-03  204  
7142afb3a186ed Maxime Ripard 2017-04-03  205  	gpiod_set_value(ctx->reset, 1);
7142afb3a186ed Maxime Ripard 2017-04-03  206  	msleep(30);
7142afb3a186ed Maxime Ripard 2017-04-03  207  	gpiod_set_value(ctx->reset, 0);
7142afb3a186ed Maxime Ripard 2017-04-03  208  	msleep(120);
7142afb3a186ed Maxime Ripard 2017-04-03  209  
7142afb3a186ed Maxime Ripard 2017-04-03  210  	ST7789V_TEST(ret, st7789v_write_command(ctx, MIPI_DCS_EXIT_SLEEP_MODE));
7142afb3a186ed Maxime Ripard 2017-04-03  211  
7142afb3a186ed Maxime Ripard 2017-04-03  212  	/* We need to wait 120ms after a sleep out command */
7142afb3a186ed Maxime Ripard 2017-04-03  213  	msleep(120);
7142afb3a186ed Maxime Ripard 2017-04-03  214  
7142afb3a186ed Maxime Ripard 2017-04-03  215  	ST7789V_TEST(ret, st7789v_write_command(ctx,
7142afb3a186ed Maxime Ripard 2017-04-03  216  						MIPI_DCS_SET_ADDRESS_MODE));
7142afb3a186ed Maxime Ripard 2017-04-03  217  	ST7789V_TEST(ret, st7789v_write_data(ctx, 0));
7142afb3a186ed Maxime Ripard 2017-04-03  218  
7142afb3a186ed Maxime Ripard 2017-04-03  219  	ST7789V_TEST(ret, st7789v_write_command(ctx,
7142afb3a186ed Maxime Ripard 2017-04-03  220  						MIPI_DCS_SET_PIXEL_FORMAT));
7142afb3a186ed Maxime Ripard 2017-04-03  221  	ST7789V_TEST(ret, st7789v_write_data(ctx,
7142afb3a186ed Maxime Ripard 2017-04-03  222  					     (MIPI_DCS_PIXEL_FMT_18BIT << 4) |
7142afb3a186ed Maxime Ripard 2017-04-03  223  					     (MIPI_DCS_PIXEL_FMT_18BIT)));
7142afb3a186ed Maxime Ripard 2017-04-03  224  
7142afb3a186ed Maxime Ripard 2017-04-03  225  	ST7789V_TEST(ret, st7789v_write_command(ctx, ST7789V_PORCTRL_CMD));
7142afb3a186ed Maxime Ripard 2017-04-03  226  	ST7789V_TEST(ret, st7789v_write_data(ctx, 0xc));
7142afb3a186ed Maxime Ripard 2017-04-03  227  	ST7789V_TEST(ret, st7789v_write_data(ctx, 0xc));
7142afb3a186ed Maxime Ripard 2017-04-03  228  	ST7789V_TEST(ret, st7789v_write_data(ctx, 0));
7142afb3a186ed Maxime Ripard 2017-04-03  229  	ST7789V_TEST(ret, st7789v_write_data(ctx, ST7789V_PORCTRL_IDLE_BP(3) |
7142afb3a186ed Maxime Ripard 2017-04-03  230  					     ST7789V_PORCTRL_IDLE_FP(3)));
7142afb3a186ed Maxime Ripard 2017-04-03  231  	ST7789V_TEST(ret, st7789v_write_data(ctx,
7142afb3a186ed Maxime Ripard 2017-04-03  232  					     ST7789V_PORCTRL_PARTIAL_BP(3) |
7142afb3a186ed Maxime Ripard 2017-04-03  233  					     ST7789V_PORCTRL_PARTIAL_FP(3)));
7142afb3a186ed Maxime Ripard 2017-04-03  234  
7142afb3a186ed Maxime Ripard 2017-04-03  235  	ST7789V_TEST(ret, st7789v_write_command(ctx, ST7789V_GCTRL_CMD));
7142afb3a186ed Maxime Ripard 2017-04-03  236  	ST7789V_TEST(ret, st7789v_write_data(ctx, ST7789V_GCTRL_VGLS(5) |
7142afb3a186ed Maxime Ripard 2017-04-03  237  					     ST7789V_GCTRL_VGHS(3)));
7142afb3a186ed Maxime Ripard 2017-04-03  238  
7142afb3a186ed Maxime Ripard 2017-04-03  239  	ST7789V_TEST(ret, st7789v_write_command(ctx, ST7789V_VCOMS_CMD));
7142afb3a186ed Maxime Ripard 2017-04-03  240  	ST7789V_TEST(ret, st7789v_write_data(ctx, 0x2b));
7142afb3a186ed Maxime Ripard 2017-04-03  241  
7142afb3a186ed Maxime Ripard 2017-04-03  242  	ST7789V_TEST(ret, st7789v_write_command(ctx, ST7789V_LCMCTRL_CMD));
7142afb3a186ed Maxime Ripard 2017-04-03  243  	ST7789V_TEST(ret, st7789v_write_data(ctx, ST7789V_LCMCTRL_XMH |
7142afb3a186ed Maxime Ripard 2017-04-03  244  					     ST7789V_LCMCTRL_XMX |
7142afb3a186ed Maxime Ripard 2017-04-03  245  					     ST7789V_LCMCTRL_XBGR));
7142afb3a186ed Maxime Ripard 2017-04-03  246  
7142afb3a186ed Maxime Ripard 2017-04-03  247  	ST7789V_TEST(ret, st7789v_write_command(ctx, ST7789V_VDVVRHEN_CMD));
7142afb3a186ed Maxime Ripard 2017-04-03  248  	ST7789V_TEST(ret, st7789v_write_data(ctx, ST7789V_VDVVRHEN_CMDEN));
7142afb3a186ed Maxime Ripard 2017-04-03  249  
7142afb3a186ed Maxime Ripard 2017-04-03  250  	ST7789V_TEST(ret, st7789v_write_command(ctx, ST7789V_VRHS_CMD));
7142afb3a186ed Maxime Ripard 2017-04-03  251  	ST7789V_TEST(ret, st7789v_write_data(ctx, 0xf));
7142afb3a186ed Maxime Ripard 2017-04-03  252  
7142afb3a186ed Maxime Ripard 2017-04-03  253  	ST7789V_TEST(ret, st7789v_write_command(ctx, ST7789V_VDVS_CMD));
7142afb3a186ed Maxime Ripard 2017-04-03  254  	ST7789V_TEST(ret, st7789v_write_data(ctx, 0x20));
7142afb3a186ed Maxime Ripard 2017-04-03  255  
7142afb3a186ed Maxime Ripard 2017-04-03  256  	ST7789V_TEST(ret, st7789v_write_command(ctx, ST7789V_FRCTRL2_CMD));
7142afb3a186ed Maxime Ripard 2017-04-03  257  	ST7789V_TEST(ret, st7789v_write_data(ctx, 0xf));
7142afb3a186ed Maxime Ripard 2017-04-03  258  
7142afb3a186ed Maxime Ripard 2017-04-03  259  	ST7789V_TEST(ret, st7789v_write_command(ctx, ST7789V_PWCTRL1_CMD));
7142afb3a186ed Maxime Ripard 2017-04-03  260  	ST7789V_TEST(ret, st7789v_write_data(ctx, ST7789V_PWCTRL1_MAGIC));
7142afb3a186ed Maxime Ripard 2017-04-03  261  	ST7789V_TEST(ret, st7789v_write_data(ctx, ST7789V_PWCTRL1_AVDD(2) |
7142afb3a186ed Maxime Ripard 2017-04-03  262  					     ST7789V_PWCTRL1_AVCL(2) |
7142afb3a186ed Maxime Ripard 2017-04-03  263  					     ST7789V_PWCTRL1_VDS(1)));
7142afb3a186ed Maxime Ripard 2017-04-03  264  
7142afb3a186ed Maxime Ripard 2017-04-03  265  	ST7789V_TEST(ret, st7789v_write_command(ctx, ST7789V_PVGAMCTRL_CMD));
7142afb3a186ed Maxime Ripard 2017-04-03  266  	ST7789V_TEST(ret, st7789v_write_data(ctx, ST7789V_PVGAMCTRL_VP63(0xd)));
7142afb3a186ed Maxime Ripard 2017-04-03  267  	ST7789V_TEST(ret, st7789v_write_data(ctx, ST7789V_PVGAMCTRL_VP1(0xca)));
7142afb3a186ed Maxime Ripard 2017-04-03  268  	ST7789V_TEST(ret, st7789v_write_data(ctx, ST7789V_PVGAMCTRL_VP2(0xe)));
7142afb3a186ed Maxime Ripard 2017-04-03  269  	ST7789V_TEST(ret, st7789v_write_data(ctx, ST7789V_PVGAMCTRL_VP4(8)));
7142afb3a186ed Maxime Ripard 2017-04-03  270  	ST7789V_TEST(ret, st7789v_write_data(ctx, ST7789V_PVGAMCTRL_VP6(9)));
7142afb3a186ed Maxime Ripard 2017-04-03  271  	ST7789V_TEST(ret, st7789v_write_data(ctx, ST7789V_PVGAMCTRL_VP13(7)));
7142afb3a186ed Maxime Ripard 2017-04-03  272  	ST7789V_TEST(ret, st7789v_write_data(ctx, ST7789V_PVGAMCTRL_VP20(0x2d)));
7142afb3a186ed Maxime Ripard 2017-04-03  273  	ST7789V_TEST(ret, st7789v_write_data(ctx, ST7789V_PVGAMCTRL_VP27(0xb) |
7142afb3a186ed Maxime Ripard 2017-04-03  274  					     ST7789V_PVGAMCTRL_VP36(3)));
7142afb3a186ed Maxime Ripard 2017-04-03  275  	ST7789V_TEST(ret, st7789v_write_data(ctx, ST7789V_PVGAMCTRL_VP43(0x3d)));
7142afb3a186ed Maxime Ripard 2017-04-03  276  	ST7789V_TEST(ret, st7789v_write_data(ctx, ST7789V_PVGAMCTRL_JP1(3) |
7142afb3a186ed Maxime Ripard 2017-04-03  277  					     ST7789V_PVGAMCTRL_VP50(4)));
7142afb3a186ed Maxime Ripard 2017-04-03  278  	ST7789V_TEST(ret, st7789v_write_data(ctx, ST7789V_PVGAMCTRL_VP57(0xa)));
7142afb3a186ed Maxime Ripard 2017-04-03  279  	ST7789V_TEST(ret, st7789v_write_data(ctx, ST7789V_PVGAMCTRL_VP59(0xa)));
7142afb3a186ed Maxime Ripard 2017-04-03  280  	ST7789V_TEST(ret, st7789v_write_data(ctx, ST7789V_PVGAMCTRL_VP61(0x1b)));
7142afb3a186ed Maxime Ripard 2017-04-03  281  	ST7789V_TEST(ret, st7789v_write_data(ctx, ST7789V_PVGAMCTRL_VP62(0x28)));
7142afb3a186ed Maxime Ripard 2017-04-03  282  
7142afb3a186ed Maxime Ripard 2017-04-03  283  	ST7789V_TEST(ret, st7789v_write_command(ctx, ST7789V_NVGAMCTRL_CMD));
7142afb3a186ed Maxime Ripard 2017-04-03  284  	ST7789V_TEST(ret, st7789v_write_data(ctx, ST7789V_NVGAMCTRL_VN63(0xd)));
7142afb3a186ed Maxime Ripard 2017-04-03  285  	ST7789V_TEST(ret, st7789v_write_data(ctx, ST7789V_NVGAMCTRL_VN1(0xca)));
7142afb3a186ed Maxime Ripard 2017-04-03  286  	ST7789V_TEST(ret, st7789v_write_data(ctx, ST7789V_NVGAMCTRL_VN2(0xf)));
7142afb3a186ed Maxime Ripard 2017-04-03  287  	ST7789V_TEST(ret, st7789v_write_data(ctx, ST7789V_NVGAMCTRL_VN4(8)));
7142afb3a186ed Maxime Ripard 2017-04-03  288  	ST7789V_TEST(ret, st7789v_write_data(ctx, ST7789V_NVGAMCTRL_VN6(8)));
7142afb3a186ed Maxime Ripard 2017-04-03  289  	ST7789V_TEST(ret, st7789v_write_data(ctx, ST7789V_NVGAMCTRL_VN13(7)));
7142afb3a186ed Maxime Ripard 2017-04-03  290  	ST7789V_TEST(ret, st7789v_write_data(ctx, ST7789V_NVGAMCTRL_VN20(0x2e)));
7142afb3a186ed Maxime Ripard 2017-04-03  291  	ST7789V_TEST(ret, st7789v_write_data(ctx, ST7789V_NVGAMCTRL_VN27(0xc) |
7142afb3a186ed Maxime Ripard 2017-04-03  292  					     ST7789V_NVGAMCTRL_VN36(5)));
7142afb3a186ed Maxime Ripard 2017-04-03  293  	ST7789V_TEST(ret, st7789v_write_data(ctx, ST7789V_NVGAMCTRL_VN43(0x40)));
7142afb3a186ed Maxime Ripard 2017-04-03  294  	ST7789V_TEST(ret, st7789v_write_data(ctx, ST7789V_NVGAMCTRL_JN1(3) |
7142afb3a186ed Maxime Ripard 2017-04-03  295  					     ST7789V_NVGAMCTRL_VN50(4)));
7142afb3a186ed Maxime Ripard 2017-04-03  296  	ST7789V_TEST(ret, st7789v_write_data(ctx, ST7789V_NVGAMCTRL_VN57(9)));
7142afb3a186ed Maxime Ripard 2017-04-03  297  	ST7789V_TEST(ret, st7789v_write_data(ctx, ST7789V_NVGAMCTRL_VN59(0xb)));
7142afb3a186ed Maxime Ripard 2017-04-03  298  	ST7789V_TEST(ret, st7789v_write_data(ctx, ST7789V_NVGAMCTRL_VN61(0x1b)));
7142afb3a186ed Maxime Ripard 2017-04-03  299  	ST7789V_TEST(ret, st7789v_write_data(ctx, ST7789V_NVGAMCTRL_VN62(0x28)));
7142afb3a186ed Maxime Ripard 2017-04-03  300  
7142afb3a186ed Maxime Ripard 2017-04-03  301  	ST7789V_TEST(ret, st7789v_write_command(ctx, MIPI_DCS_ENTER_INVERT_MODE));
7142afb3a186ed Maxime Ripard 2017-04-03  302  
7142afb3a186ed Maxime Ripard 2017-04-03  303  	ST7789V_TEST(ret, st7789v_write_command(ctx, ST7789V_RAMCTRL_CMD));
7142afb3a186ed Maxime Ripard 2017-04-03  304  	ST7789V_TEST(ret, st7789v_write_data(ctx, ST7789V_RAMCTRL_DM_RGB |
7142afb3a186ed Maxime Ripard 2017-04-03  305  					     ST7789V_RAMCTRL_RM_RGB));
7142afb3a186ed Maxime Ripard 2017-04-03  306  	ST7789V_TEST(ret, st7789v_write_data(ctx, ST7789V_RAMCTRL_EPF(3) |
7142afb3a186ed Maxime Ripard 2017-04-03  307  					     ST7789V_RAMCTRL_MAGIC));
7142afb3a186ed Maxime Ripard 2017-04-03  308  
7142afb3a186ed Maxime Ripard 2017-04-03  309  	ST7789V_TEST(ret, st7789v_write_command(ctx, ST7789V_RGBCTRL_CMD));
7142afb3a186ed Maxime Ripard 2017-04-03  310  	ST7789V_TEST(ret, st7789v_write_data(ctx, ST7789V_RGBCTRL_WO |
7142afb3a186ed Maxime Ripard 2017-04-03  311  					     ST7789V_RGBCTRL_RCM(2) |
7142afb3a186ed Maxime Ripard 2017-04-03  312  					     ST7789V_RGBCTRL_VSYNC_HIGH |
7142afb3a186ed Maxime Ripard 2017-04-03  313  					     ST7789V_RGBCTRL_HSYNC_HIGH |
7142afb3a186ed Maxime Ripard 2017-04-03  314  					     ST7789V_RGBCTRL_PCLK_HIGH));
7142afb3a186ed Maxime Ripard 2017-04-03  315  	ST7789V_TEST(ret, st7789v_write_data(ctx, ST7789V_RGBCTRL_VBP(8)));
7142afb3a186ed Maxime Ripard 2017-04-03  316  	ST7789V_TEST(ret, st7789v_write_data(ctx, ST7789V_RGBCTRL_HBP(20)));
7142afb3a186ed Maxime Ripard 2017-04-03  317  
7142afb3a186ed Maxime Ripard 2017-04-03  318  	return 0;
7142afb3a186ed Maxime Ripard 2017-04-03  319  }
7142afb3a186ed Maxime Ripard 2017-04-03  320  

:::::: The code at line 196 was first introduced by commit
:::::: 7142afb3a186ed2cd028318205a4852f04283380 drm/panel: Add driver for sitronix ST7789V LCD controller

:::::: TO: Maxime Ripard <maxime.ripard@free-electrons.com>
:::::: CC: Thierry Reding <treding@nvidia.com>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202004241414.ovgCwqXh%25lkp%40intel.com.

--vkogqOf2sHV7VnPd
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICA+Aol4AAy5jb25maWcAjFxdd9s20r7vr9BJb9qLJrbjOOm+xxcgCUqoSIIBQMnKDY8i
06nftSWvLLfJv98ZgB8ACHrrkxNbmMH3YOaZwUA///TzjLycDo/b0/1u+/DwY/at2TfH7am5
nd3dPzT/N0v4rOBqRhOm3gJzdr9/+f7u+6er+upydvn2/Pe35+fvZ8vmuG8eZvFhf3f/7QWq
3x/2P/38E/z7GQofn6Cl479mu4ft/tvsr+b4DOTZ+fnbs7dns1++3Z/+9e4d/P94fzweju8e
Hv56rJ+Oh/9vdqfZ16937z9d3Z1dfD37cPv17Pzj3e326urTxw+73Yfmtrn7ePbx4+8Xl5e/
QlcxL1I2r+dxXK+okIwX12ddIZQxWccZKebXP/pC/Njznp+fwY9VYUFkTWRez7niViVeSCWq
WHEhh1ImPtdrLpZDSVSxLFEspzW9USTKaC25UANdLQQlSc2KlMN/tSISK+sVm+steJg9N6eX
p2FikeBLWtS8qGVeWl0XTNW0WNVEzOuM5Uxdv7/Ade/Gm5cMeldUqtn982x/OGHDXe2MxyTr
luDNm1BxTSp7AfTEakkyZfEvyIrWSyoKmtXzL8wank2JgHIRJmVfchKm3HyZqsGnCJdA6BfA
GpU9f5+ux/YaA47wNfrNl9dr88DqOyNuyxKakipT9YJLVZCcXr/5ZX/YN7++GdqUa1IGWpMb
uWJlPDTVFuDvWGVDecklu6nzzxWtaLh0qDIIkuBS1jnNudjURCkSL4ITriTNWBQYHqlAh3hb
RkS8MATskGTWIF8prddExQu/UAlKuyME53H2/PL1+cfzqXm0dAMtqGCxPq6l4JE1e5skF3zt
nu2E54QVbplkeYipXjAqcF6bcOM5UQLWGWYFZwy0SJhLUEnFiig8fzlPqNtTykVMk1aHMFun
yZIISZHJ3ju75YRG1TyVgQ2KYURLySto26xwwq2W9VbZLAlR1pG1KSuSMaDSOiNS1fEmzgIL
rXXjarTBHVm3R1e0UPJVIqpFksTQ0etsOewMSf6ognw5l3VV4pA7AVL3j2CnQjK0+FKXUIsn
LLaXuOBIYUlGg6dCk4OUBZsvcLv1gojQvpQg2HmpoI2C2l125SueVYUiYhNsv+V6pd2YQ/Vu
4nFZvVPb53/PTrACs+3+dvZ82p6eZ9vd7vCyP93vvw1LsWICapdVTWLdhpHEvmfF4qVHDowi
0AhujCvwWlicXjprJBM8yTEF3QR0Zffv0+rV+0D/aHmlIlrMhqFDIZyUjGx0zYlq9U3bpV3G
uDtQvaoirmZyLEvAsqmBNjQBHwAwgIBZzUqHQ9dxi+CXApQBGpDES2d5fIrRHL4xj1hxYZkN
tjR/jEv0cg7FGccWUtCXLFXXF2eDYLFCLQEjpNTjOX/vqP8KsJTBRvEC9Jk+r57GkVVZAnCS
dVHlpI4IYLbYmaLmWpNCAVHpZqoiJ2WtsqhOs0ouphqEMZ5ffLLWai54VTpiANYungdPVZQt
2wohRaoJZlJD+ylhog5S4hTUGCmSNUvUwu4fToZVYbqnkiXSn0gtEg2pBgNuilM49V+omG4s
oStmy0hbDEfUlfaubyrSUWFUpoGutekJARceL3sex6ogAAKTBkd4KKtQGGzsDQincLYNIIiA
opDKY4nHW1AVZoUVj5clBylB7QyG2loSI66Ii/Wg7fbAoMFuJhSUK5j34KYJ1CvWGcxQ1aw0
kBeWVOjPJIfWjFm14LZIOpQ9iEryCoQF4iR8BZoLXe06FsTWny2cCh4SL0Evsy8UtYqWAy5y
OJ6OkfLZJPwRxq4ORCVg7GAFAPlYO210BkvOrxyMCxVBZ8a01GgJVR316pSxLJcwxIwoHKO1
9qUlu77e9XrKAZUzFC2r8zlVOSr9EYwxYjAU2/KB420pgZVIF6AJshEuN+jAKtU61v9cFzmz
tbulJ2mWgjmwpXh6VQhAyLSy55NWYEe8j3CarOZL7syfzQuSpZY46wnYBRqY2QVyAfrWEgFm
SR9JVkzSbtmsdYAqERGC2duyRJZNLscltbNJfameMB5LxVbUkY7xzqIEaA/NHrq2LBgwGIYD
NYvYW3GA5g4u1wpRlwYEAVqiSWLbCSPL0H3dA+MB5sXnZ5d2Kxp3tIGZsjneHY6P2/2umdG/
mj3gOQLILkZEBzB3ACQTjZtxaiJMv17l2nsJgbnc1DaY0gisE4ogYKbFMqQAMhI55ySroqC+
khkPeZdYH1ZfzGnnQbutARUtX8bAIxFwwnge1kKK5toGYVyIpSzWLph9zHjKMgeAaIWjDYUl
cFeXke3s3uiAmfPZVvQmooTaK6Ex6DxLlnmlykrVWrWq6zfNw93V5W/fP139dnX5xpE+mHUL
295sj7s/MUb3bqcDcs9tvK6+be5MiR3nWYKt6kCRdRbBv1/qmY1peV55kp8j4BIFIknjal1f
fHqNgdxgjCrI0AlJ19BEOw4bNHd+NfKiJakTO6jUERytaBX2CqDWm+lo245tsabgril/+uAm
tHamThMLIIu1BHG6iRdzkgBeyOZcMLXIx+2CimGRQJc5ccFBr1jQQ8IB3oRoBPBIDVJJtXkN
cIDMwoTqcg7y68dgJFUGxhkvTFAbf1HAOR1JKyRoSqBTv6iK5QRfSeAQBtnMeFhERWFCG2Db
JIsyf8iykiWFXZ4ga7S/qKCXMk/AbBAR5NCLSzLNCd7AwPIFHGmUjfdWMNLEkLDylL/QwRgM
2sJaj52QnrNVl7AMWk/aBkeSAgec8HXN0xSW/vrs++0d/OzO+p9wo5UOWFkymQIqoERkmxhj
RLblLOfGq8pAF4Ot/GBBNhQGGAM1BxylgcYmCKXtRXk87Jrn58NxdvrxZNz/u2Z7ejk2lpHo
ls9RsHnIEUK1l1KiKkENlLerIPHmgpQsDup5JOelDmcFWp7zLEmZdL0lqgCEwCkItodHOgMU
qyZ7A0cZhA4FuUVEk5ymrayUIccBGUg+tDI4VMNYuEzrPGJhA6edC56DOKaA/3t1FOhqsYEz
B8AIcPW8onZoC9aNYGTFgQht2dgPGyZHi1CYGsx61/4Q2F7lraAHg4l9Z5Ohm56jc/v7pv8g
LFtwRBq610DrBa8jzpWR+sFdX34KziovZVjGcoRnYZcJrG0QIvQau7SMYCcTAh2WVh2bgMeV
zZKdT9OUjN324rxEw+GhBoxVrtwSsJIsr3KtelOSs2xzfXVpM+hdAqcjl8IRBxMaQ5+MZjQY
5MImQQEZebdcv7YYpHxcGAP8I5WFYBYlNVJglSXaTRni0wTEgHEAFsG9AOsIHJsxRycN2u5I
xHVgEyI6B9xwHibCAR+TOsDoE4YCmFeG1hl9cnf19U1ZjVrMEwfeFTqaQ1ABiM64wu2FHgoy
BjnltBqM6QjZ25D+8bC/Px2OTmzWQvKtuqoKz/0bcQhSZq/RY4yTTrSgNR5f25uMQz+/GuFg
KkswXb5cdzcBgDKqrAPdg8L8FPIZchaDDJvbkeHgdoVm0OHD3fPAsF9ruAYzY052SlwVrvdF
hpSyPqVlxRJ3gh+0NXbLEibg4NXzCLGCZdptdxJENhab0tG9uNgWKXTZprGDtp6GkQRQVk8e
PCaHrtVCd+WHt1BOJMNAX0PU2GRqGKho6iUKX43BaMvxyTI6h9PTGji8N6ooAqJme3tm/bir
XuKIsWIcvvDQ64/BO/AOuEQPXFQ6NDSxV+aqDSPVa0tx5kpYooyfEDcxBQBwsrxd5n45zybY
cOEx3qAVzUj56DkSfzPAGkoAdniKiRs91mTj0rrSJcFZGtsoUAS5GzocKGBy/gfmGfYbgSNC
+CXdTGsuU0nJGy0+CHknNsFnLMID7Bkw9hqKmaR2SCplAHOryC3J2Y29epLG6Eva3S2+1Odn
ZyG49aW++HDmsb53Wb1Wws1cQzN2isANDeMTTUHnLQxpY0EkOP5VEHuXi41kaJtAaQt0M85d
7wKcSbyAdvWCESOM1WJIzBUe7ePpWnYYsusFHNh5Ab1cOJ0kG4D9gJZasQHXFqyfg9n7Dg1L
eJ7G2V8lMrTnRhX4BsRR1j4L3qSGe8oT7UaDTQ7FZkH0WArTSNQ4Lqh96YytaNkmJwy9d4VT
ClJnGiVJHbICrUppF3DBVZlVvuM54hHw18pX9y2XLDPwLNBxLlULvA2gOPzdHGcAKLbfmsdm
f9LOH4lLNjs8YT7Xs7kebk+NcdBDYmf7oa2H4JSQZIV3BElPGqKMQO3yDoItg6dgBRPWnw3g
gFOdsphh1HHCjnUuNM7Goo0+dXKiD4UEg8CXVek1lmP8p01ewSqlHe/RJW0Q0YxNIyY5jqFp
Tr0Cc9ueOMV1e9kwWFzdfBkLM8KQOOlZlMzvCU1wKn2ApkmCrmoQFiFYQu2Ai9srqKFA4ojL
Q0IRYU2JiAL7vvF6jiqlXEWvi1cwkNA518SUjCskIMVT/NopEhRERcrAmhj/x8e1Hpk51zEu
cbISmc/BwLcJPu541YKKnIT0y6ANNJ8+r1U5FyQZ74hDnZr+6IyZUcYMw+hB3KgXjYMLB2pw
PPRW/wSUdYiLcdcvMvIb+Rth0IzbUVxJ8L+hH7XgITVjBGjuBjhaeU4qVC8LIpI14ixeZGGz
otnhr9A6DAeclNRSE265e90WYB845ws3+jVQKCv+mJqhYcBIqqdIk1KlweNsJW4Nnj6aYF6C
PHoo2Ftz/XcwmmNwd+/FD3YgdWJYXQbRLD02/3lp9rsfs+fd9sFxTLsT6UYO9Bmd8xVmFmJA
Qk2QAQrk9n1MT8QjbI+sJ3T5lFjbuqMOm/9gJVxlCfv+z6ug4tZpC/+8Ci8SCgMLJnmE+IHW
Zgjaht5ZK/dGPsjRTW2C3s9jgt4NenKznDH20nHnS8fs9nj/l3MRCWxmyq4gtGU6tppQLxBm
XITSU+ZadOO4q+0SOhvxOgV+R16DuHAFX9fLT141wFVGHmkhwd1bMbVxOQA40QQQgomUCVZw
r+lLExAFrNmt2fOf22Nza+GwYHMZi+xFZrcPjXvqXDvWleidygB+2qrEIea0qJxgjF5nP9VR
dxy9PHfDnP0CZmbWnHZvreR8KLLAIJghEwFxy/LcfPA4dXatffOv2TDkeX7m4G3kjovo4gzG
/7li7nWzzUURk0VVGNLokUgWAqJA0e1Kv9fpwLo2uaoK3VwjCTc8wzzFfuZOTcZXk62WInyN
oGlEsiBIxy5J5MZzOquN2zaKNkLZ7rA/HQ8PD+AlDMfViNv2tsE4JHA1Fhumzz49HY4n23PA
Za9jgCyglXSO++TgUwX/n09418iAtbt4/OQW1zd4XX8zmlHSPN9/26/hYOnJxQf4Q/bD7SdN
97dPh/u9PwWMI+uoVXClnv++P+3+DC+YKxFr+MfAYKuJAABeYnsCalGSnGCQ2UIAoH2KyD43
MbFTyso4jxlxpQtLQP5IUscsmAcHLcAQejcx/m23Pd7Ovh7vb781zow2GPkPb0Ry9fHi9/AM
P12c/T6RtQZzSxgP0rTq28g0Gqug+/32+GNGH18etp6+ZOT9xUR8GSmEV9OXgzfvL0KLYyIT
9kWyKfI/64B/dXVp4iSgUe1ci/aZhl/T3N2s9Dbz0s+D6y6i5tpF1VNP74+Pf6NEJ745pYkD
seHjRCwuZSLXqBkQvgkfWklAWVaLKHxFk8RJRMKKNMmZq4RsikmUCwxE02JS1DmJFxiSwYRA
jN+lJMsiYucJMxlL0JFRCqvMbDAyEIaydF3HaZufZ8/OLu/CQMFBzzmfZ7RfqJH8wRhnv9Dv
p2b/fP/1oRk2hWGu1d121/xqKZpuQ2BiK2JnnGAJlXbIoONBhGMucob9dEk9UExAS4QDBWYl
l9Y+W4Sc3PTEIQEHKQIvcXNar+FsltQfL95koSbBPBBwIQXPXHpMSllhXoLmcWnKub6G1oEP
vGnMyGSu54TxemVeIC3rHDDWnExE9yvdaWl31Re5KVhYikcNzt+i1tcifUqEar4dt7O7bheN
Jreeg+iXZysr6oV32hUc8y8jLbPSFqugIYfT0FBgrZawzPvYvsMC+8PgcJiA1bX3cBDzv+5P
zQ7zNn67bZ6a/S0G9Eb40cSPY0+YuMlxC0mNnmxHHwbWlaA7PPYRlyZxJXiY/qjy0iCR0Pb5
GS+6+yHaVxVamWImdoxRFy9Sh/kD+L5BsaKO8Mmc1xCDeWM6WSAlahnseYkJJiECL8PlbTP4
ZDMNpSWnVWHuUKgQGGcq/jB3Kh6bE2QYns3pFhecLz0imgs8fmxe8SqQwyZhyTW2N8/HvFXT
2WIAizHO3eadjxnwAJoQUHBg5mmrSWqs1wumdNql1w6maMn+gkA/nTE1vCYFncsafEyTsdRu
tQt7DJ+0XThd5ISLdcliXUcwOJPX79H0xZBFlrprj0k/LQA5qEQBFglWyUk89hN0A1uHYSlE
+/o5hEm+8p5QDI0E+u9ycEW7HHj5E9qD4WD5yxRXbegwNe8lw0RWdI/4RttvJNK87mmTVPx1
N6UmN2KClvBqIrGvBUyIiMxjxu55coAXr+cH/tBCtPd7bQakBbomyk1KpJ8c1ynMNoHOIXfv
8rqG/bpDsMytBtLOgy/ihsGDbwDYp91qnQzmywMe9PDTL03+n4/rjCZ87YWdo3AKfXXdZl/i
ddU/5avLyk9kN+KEWZyrfKSczd7xFDGMUL6ayXnSpTDQGLO0ragATyq8vEHtj08eMGc2MF16
wxTqZf2QV5HRszPcZl29u58Mjc/JavbNFHYQ1LBurSFROtCuleU81YjNEmiqJWt2vNIdy0+5
6RS2ynyqEbxWE4wNE6wtM3eKfba4Db616+pqajyvks3b68P3Iy+ppRPPDPZuVsRMKlloN1CK
JvcSDhsDY9Q+uBfrG/vATpL86ka4gtVDpL66wNx888jWgrGmTD+0eVULlLDO4J62F/awML0z
Po/56rev2+fmdvZv89Lj6Xi4u28D7oPLAmzt/F67dNJsHZQb323jF2tggMgJwoF6yfEtkC1Y
+jWNxDciVgaMOZb2ArQrpl+kapcgnKpluKriNY7WQoQxZtuCFHH/hRbZRFpYy8nCMbyWjMII
PkjIae2UD34Vwej6OHJft+KzP+2fCvrZzd3tHgRGch4sNIFerxyDsnNhos39iDsiZmyH4oD6
FWub8tB7PRZtHSm/OSiq5efg+nTkPPSayQzFpAt7i4DZzqUGCibCtD2e7tFTmakfT26ECcao
mEbMXRZBSJ5zUCADq2UaZMJliIDeX6BYb9goKoNDzj+7key2DK2tfrRmvoOCz+Tuz+b25cEJ
xTBuErwLzu1vcWlLE1DEuB1jSpx6T8daF7+tEAqhtCwTNXEAr9Rq+71+s7v7T/9eCCY5PVKL
uNxEtix1xVFqQXQii3OLpTDvV0rAO3jYYeXNl1i4dG2oDP01WrDuGo4HnapsE93aXg6J4uiv
iHztcSDg0N+dkuhJ6K/DmGYR6xCDNjXds8E6oin+QrTvfgWIxWvymdpwTCd59HuzezltMfqE
X+I004nCJ0sGI1akuUKAM7KxIRJ88IMEeoDofPTygmhpQTGwE9KMbbMyFsxNZW0JOZOh7BHs
pnVx9Mzy5vFw/DHLhyylUVAjnLXaEfuU15wUFQlRfKjZJTxS6QZth9zaG8y3oiHSykTXRum3
I45xp561cIpr/czAqWaeAMIignsZqN7OgkmehYBc+5bCfBtV4cjaVOKZW97OyDHvLkMnJryY
0FbT2Wttxpoy6hjz8i+9ShG+s3JjbVqc44nAIFgI4T/sXGx0Ep6olf94MwKYZiNb86yF15Ed
XVlKS3K6yerNN988k4jry7Pfr4YBhrykKXRmYiVqUdZuHMt5drd03sLEGSUmVTh0rLxvhsjJ
5Hcz9DTbbGMhjJzI/1L2rL2N40j+lWA+HGaA3UNsx469wHygKMpWR6+Isq30FyHb7bsNtrsz
SNJ7g/v1V0VSEkkV5b0FejauKj7EZ1WxHr/fWzPhymtD7Z8rz5hyxERHmqX7LIMexr0WS3m+
9To86zRHxZYSOKcS8XBsage2iVeWBaZeRpQv1mki1cPwK9cXDCFD9RejYYiCH3JWU4JJ1Qgt
xdqHUSGmD0gAg50DfAawnq6dKIawgA+ttQpUnZPF5eN/Xt/+iaYVkwMStsWDXb/+DfPGrLE6
FmlrfyX+ViTkfIHkSBkNJbWzJPG3us3oRzbEDq4WYRJ5jDp08wtZ/yON3t9zlcBspbJJOS0y
4Ig+CMq+rY0rFa5E2BJ5qudrfE2sdLAIjEpFPd1WoxGs8gaqvcJJGsHyTUVwUfUN4COJNlb1
atBORpqGNXSgtoEMxKKoJL0sgaQq7N2lfnfxgVdegwjGW4SOsWcIalbTeLWCq0CAPo3cq2et
/NgS3dQUXXMsCuEF2yhg+5QPaeD5QRc8NZSVB+KOsVWrBU/K4wQw9sCdDESzwAwgTsjAmOnO
4e6nZgaxftcUUG8AZBD0DeOYHfsU8xVEQvhl3VNC94JXPdjtPI5e8MhQFDU7X6FALMw76krp
/Y6tw5/7OYlwoOHHyNYV9td0jwdZ5+ffX7784taex2tPIzCs6tPG3QanjdnQyC8mga0ARNqV
HM+fLg5oNfDrN3MLZzO7cjbE0nH7kKfVJoxNMxZYdRty1Wyur7vNlYW3ma4875NGvBpl45A/
ef11v4Te3Qol02YyfwDrNjW1ihS6QB5bscjNU2VL6YicfBUCnbOih9Cks2c69u0YoWaJPst0
DWpggt8r9psuO0/PyRELbArFdY0EXmQv5Er851sbiUFx8a0FuZ/AIVs1FYbilTJNnpxTVZUF
vlxpfOEqzCuHnQMK//FmAA2ngcXF12kMbOFY6nsfn/jtgvwSSMofl7dJDONJzSOnNUFp72vT
kjdKhqTn4vyogjOkSmPwb9JmJX2WTilLSZ9PBUaJKgrFPYcIMKYf1AOscohCL+ArXWlnqOAy
lYIeIUCdnEJa21b9bWYW7b5p9g2X9F2w+1Vdtk+zJDG6xc/gcYyC7I5GzxWvBdoChElgEIAq
reaHEEigD1MaM2L/2vz/x4y+M5wxC5KYMQvix48OkphxC91cm9CoaJtPwX9cPv6tbwZSFRkw
6UCSiNBisKTFFjgP1WoOTUHMeZAnljzAL9cxPaVwO5A+Vo0jZ8FPOFBTim1EVMbcMLIIy6uS
ttxEZFQvN1t6GWbLhoxE3VT+wTs5iNN9DiOASmgvbKzBn6Cf5nWeDhyrLRGQR5TMO2wRRNlY
YZXb2+XC0YeP0G5/CuxYiyb3aJwFY/OWagEN8l0/YBl3ftgRiBpm26vgu40yg3PBaRXHnvAF
AIwEQMYEb5drmzhjFWmCfig9EXaTleeKBdgqIQSOxTpweolmGq/UMhSlOhAX+EgqS4w5b60U
WH1MvfU462OA9n+eiBptKtsCwILHrseQhSloa2yLIg/I9nb1g9aMqiDsKlBWojhps3B6LRr9
A81OqcvdF8fyilTQ6NinVsCrgxshRs2k6oh31Vv4bNXlMBQCAxmc/MIFl7Rzggn2qti/OqW8
PS0KzRzGDsfV1S3qX586N+xk9OjwtRjA8RPp36dCOwIzzXLP3NNozm4+Lu8f3jO66u1Dsxf0
tlDnTl2CwFgWqXddDEdWXrN4fCKsnr/88/JxUz9/fXnFp/uP1y+v3yxVHdPb1/oFizZnGM7w
5DOYdUnHq6o91Y5qmLX/uVzf/DDf+vXyr5cvl6kTVv6Q2ozupnJsK6LqUaArq723nkDm7NA6
LYlbEn6w4U/M0plz17MXTb9rdqZWBmAi7pbs9ud+TOHXTaw/KJ56XSDtiQcONoVs57Ay87AW
zvFHQwBnGUfDHJRSnaDc2N+a+F6MAxhum/P7eyqcBOJSZV1d2CFJle08NaqVYA/KNSYhnQ3x
Kz8xDBbhFzRgtOwJD5ChoUKoWWQil4QzyoihRHar71TB/rOCXXs4MVyBcyRV1s40js8bk4k0
wI5LewHKCirp7f1ti2uG+SFWi0Xrdz/n1XK9oMOv6NUVqVc0fJ0gH1jtBysMsipi5ywHWJ2g
9yxZtosKUXnkCIJudVP+1qNBk8ZyNKS06+A5yR8C5pDGldPjg/TKBoKeKEyAP0bbFJElgVw3
UWPdydpX6NvPy8fr68c/gkdg1PjBz/Cr7dMHB7Zx8QeeRo2M7fjFGnpkdUPB8Gh0jg8Ldbgj
wUX54O4BCxdxGRp1Q8Gaw+ohUJq0RrPwq3NqhxGzMNOR6jG1m0vGwjxyilO3u7rftC1ZaV6f
Jq3FTbaYzsWKT2DZUbi+cRp+Ojh2PUMjdtcR1MmYZFsQ3TyYeR6lKJBt27qiuUpAPnAyGrHH
nxgwvg7VxpjOgHBGMkcpdUajYDfemwK5CRx4skdG3hqxIlMA5Y7jGp30tHgGiQwdc7ozqzEM
qhvkuSfj6LnTB1DuyoL0Yhyo0QgOPkLFDVdhhvZxRLSNFjS9oSaSqOhTZPO9br+iTwqLLpgO
Z/iSOmbTCC4D+uzENMsZ94a0h2hLUE4gao5GAjjd2Ty2OzjLiiQ5HaizzyYdrBNm2+xj6fzy
/eXH+8fb5Vv3j49fJoS5sOWHAYwnNAGeGBLY9cj+1d7TB7illTf63AfKhuFIH5QXmwqHfDtu
k9yOn6x+mlp1cL7BgLpOHlJbrtC/vc8ywLSojs0Euq/s4x9lg13l/x4NBh0hYhfOlMFZapts
wa9piBcFnapnbexROrHWuagOHZ20q0isBQs/QLTcp41jqwDAwj40DQCt4JwvM2A8GwPaPY4n
8ERWKS7PbzfJy+UbBqz//v3nj5cvSl138yuU+M3c3O+uwpLDQkrud/e3NKeKBDKlzlzEJK6C
xYC6dEnp3hBbFevVyh0ABcIiLhjd//yx0rAQrRlGexDbihhwDTS1uB+6Ss51sZ7pv2x264O1
rirJ8sq2V1NP0YkFsB6RPIibUiNGh0U0QhpBINfDgsvcV3IlO4sTKi/Ivf2kTn5DYV2FLM3K
08R9Rxi5v2fzJuLg6C358sWAb8pplLOjzmVwEFlFMsDQnyavXBVPD+tyNO4nb3VWxCyb5vJS
bQ3+1yoz02QvDM7E316fv9puqMl56lXbwmE6VGhljxlotSOZ/jy7MyTB4HhNfJPyxUKFpWWv
2XM3WVaeAzgPao2hknXq9BTQqw/CUB14+9AEyMSYajptVEhr1ZGMKbtbQxwKZ2oFf1YRKAM5
BBF9OmYYfT5Ks9Q4MPf3g9g7Fmv6t7v9DczZ+gMsnwLz3L5s+hptI2Z0ClWB8mPMxpW4843I
RAXkUD481EpHn1JlNGg21H89//z2oSJcvPz3z9ef7zfftWUurM3nm/eX/738zRJ6sW0V4jF6
grG2srL2CLShw+ARe7ysx2upR0sMPKrK0rycTTdWRV1+To2pqxpxcIyyM1Jmj0P8hu0Y8oa4
g+B6US7suR+/Y2ywhPOS04rCfSGdUwV/Q5V1gpJiyujndkV0jNo5mryhlD5xYy2+MrH/Rsu/
xnXOB2CSYZwu238UgNokk0Q9lNEnB2D8fh0YGsk6QgzAnEVcJq5lJPzOHSm7TPpXBAeGV8Q0
q4YVyVG7mhr+fjyTNYh6L7GN4pRFnGFNB9PMPpuCr9EFYjfupHHRcURM47VTHIGPhB+0qsMQ
JfQzS49GPZ+UMcx7Wq2WLa1f6oljxncbOt5OT3LMBa1m7gkyz6tk2kgdzXe5uIKXD1fwLZ0F
oMfXjP4CHtdljgp+Hp/oFjAtEK6lTgRMKjU/f3XOro1ALdtpwKLilItp4BCEenL+MI6n3H0j
QFLSJNQmSFgEV5ht3qKg3AM0rN7bW9ECqiVAYxI+6dCA8ReO9vd4ef9ina79PMTr5Rokt8oO
3GAB3cvURjg3KrAd+ZOfKjeNcsz6Tc5PdQA+J/DMIvcYpovTT6JNmuRqluj3VC53q6W8u12Q
aLiYs1JiChUMpuerfweyA9z4GR0siVWx3IF0zMhXwFRmy93trSXAaMjydoRgNLuyll0DmLUb
ArtHRYcF/T7RE6he7G4dzfch55vVmoqsFMvFZru0aUFoNa+RXSLZ7m5LNYaXDwxRJ3i1GoOp
9T2pmWMoYQfymiRIH8+FpX8LaCcrUeGT2/sklI+Cw1mxdNKQj+A1PcsaP41r7+KBMdls761H
QQPfrXi7IaBtezcFp3HTbXeHSkj3GSK6X9xOlqkJgvPn8/tNioqgn99V/jgTk/Dj7fnHOw7A
zbeXH5ebr7BfX/7AP21eqMHYd/SuMWsjS+UqIKAyfFZgKDZVrs2iiUdPv+YMWPh3haBpaYqT
FsROOaGTwFhO326Agbn5j5u3y7fnDxiKdzd63EiCHGLchw3yO6Byj01NlSRPk0BBRJFlTnCA
0kUAQ5YY+3h4ff8YC3pIjgHfXKTqX5D+9Y8hj5T8gMGxHfZ+5aXMf/OFcez7tN8gUJ0f6dkR
/EAfduhJ2NWYKIB+ydMhINyAymk8XfLom90/C002uXLc1hE6x4d2lsYqfC11yLqBnVRxJzmd
ghjzDQ+aD4FfPYTKqzE+ZqkOm57q9F2/wnb8519uPp7/uPzlhsd/hb1vxeIc+CX70fhQa5gb
S9dASxnYxkNVZFrhvs490Y6dbk19FPyNGhLbvUbBs3K/dzPdI1RFiFOiuzMKTX8qvXtTJjGm
Mk6RV0/CSbAOIEdhJAbpDsCzNIL/c+7IHqWDfAXM8jVVXc0uIkxT0meSGdevwjSc9BRROJVk
aBL0To94u49WmizcLSS6u0YUFe1yhiYSyxmkWUKrc9fC/9RuCrd0qAI2CAoLdezagKzTE8hA
tEI94/g0OINmfL57LOX3sx1Agt0Vgt3dHEF+mv2C/HTMZ2YqrpBJpg9Q3T7az8tAZhdNUXMv
/5GLF9C/JY3PgclRp2UhziFrqoFmJtPPQDM/FFWzukawnCWQOaub6pG6TRT+mMgDjycbS4OD
BicOzVzGQbPiQbKcOTfgeocjMqWfmA0rU52C209nEuwwfKSnOhtI4FhL6Or1IBWBxs1l164W
u8XMntnHAaG6P4lnRjENvPJqJKZdmlnqgGehMMP6yxoxsxHlU75e8S0cWXQUW0X0qOamWyy3
M+08ZqybG2HEXzmBs2qugpivdus/Z7Y0fsnunpZhFcU5vl/sZgYjbNWqOZb8ysFZ5dvbgBis
V3kyP0RaATNzjR1EJtMS6ijJLPT2BRuOlswObLFe0sNgSB7Dm9FQ6HWznlt48cyGKGWsV3bQ
M4EFgjGTGe+MGsbVJDUcZMXIz86JUAwRRdq/ILIyzK5TAl+S6A2Cih98VzJ9oKU1zeCECZKj
9LwAtUwihLhZrHZ3N78mL2+XM/z7jYpKnqS1QCMaum6D7IpSUqJ5jiYLTYmpuNTzkWvfgAGn
c0xmGjVWuAn9Po/KHP8Z1Je/+9msXf8C/RtOlNuFXUMPvl0vgpWgXe2kIu4Ge+6hZb67/ZM+
MlwScjX07aWwjqYtlvnyVmuZiDoVKnh3+nScYpfRd2UyIwqIij+nWQA2AT8d4zLDAh1pMLli
GIdrR9txBUk+w3+CSLhUMX9bEJ/Gzf39ck3vLCRgecSkZHHwkMhBKKnTz6HEMNhG2DUIAxTB
DND7RtUdRskyK6cqCbRPsbRKROB8ZcHSNIFUcYhEKU+ZyIdJDiHHBERObxH96vny/vH28vef
qOyROsQ/syItT41HlXm8s2tx0Z5EAbPRrXiZE3cLXAmBC3gk2NKh9E9lHeJUmqfqUJKhcKwe
sZhVjXBU9AakcggmKXkw2RXshReXvFmsFqGIDX2hDKSpFBpxcnjILOUlGWPPKdoIP4GYCLGh
Ro/YkIEu7Epz9rksyCnT+Y7HGvN4u1gsgq9BFZ5RK3prmskscp4FTP4xlwMI3dd6+3hkReNy
KewxEPbILmcbItpwXLKlm6mqyULHS0azaogI7ftsEZqea+vkWINs4nRMQboi2m7JPJtW4agu
WextuOiO3mcRz9GQI6DpKlp6MHho3TXpvixWwcoCzLTKIei/O9gFyazozgdzL2tcVFCW1lYZ
k5XFLgP8C2kVaBc6pUdnXJvDsUDbIRiQrqKdzG2S03WSaB841Syaek9abKjeYYgBu4dZ+nj0
M4sQX6ZlBVcRqsWHhl73A5qe7gFNr7sRfaIyc9g9A3bY6Zd/6BFFMKR74WyfvcDM8cMlRfep
7QRnNC6mExlYjcbuZaJD1tCOyXYpowMfG8qW9Hu6hOn3c7lN68OEL8J56IrE8mrfxWd+cNMk
a0hXVBKDB8Jdh1ZAnX9STGtKjp/SRh6Juz7JT58W2yvn3sHNTVzRqYntAkd2tnMQWqh0u1zb
zhQ2yvhujJ9LNyR8zzAFCLyx7aMQPLDr0zZUxL8KR8xdoPVP+ZWFkbMaxHzno/NTHso4JB8C
ejH58EQ9YNsNQSusKJ01mGftXRfSfWbtOmwuAFh5nkUnlNuk3Z+U1+5kP8jt9o6+2BC1ps87
jYIWaVuzB/kZag29w3n9KSfbreDL7aeAORIg2+UdYGk0jPb93erKxlKtSpHTWyV/qh0dBv5e
3AaWQCJYVlxprmCNaWw8EDWIrLKQ29V2eWWrw5+i9pLMyGVgAZ9a0ibSra4uizIX5IgU9EBt
V7tb4mxjbehOKcQy7KhpSivW+UpnT3CFOxeaiiQeC9q2aSxYPjiTgBlmr1yeJkKiKPZp4Sps
DkylpyI/5Umg6XOSXuHEtabQrvQxY6vQ69FjFmQ0H7PA6oTGWlF0wXJkzDS7h0eWoeeo00fO
7tHPVzm6UpUafNDb4xE9woUXbWrA1vnV+a9jZ9Dqze3dld1SC5QBHdZiu1jtAnofRDUlvZXq
7WKzu9ZYIfQrMIHDAA41iZIsB67G8eeRePX5QiZRUtj5b2xEmYHwDv8czl6G1Ojo7YLzfWXZ
yjRzXcsl3y1vV5TW0Snlvj+nchdSgKdysbsyoTKXnDh6ZM53Cx5IKiiqlAdfe6C+3SLghK2Q
d9dOZFlyOI8dj0Ab26hLxxmCJldK4qvTeyzcg6eqnnIRsPLGJRSw0+UYSyOgsCxSyrPO7sRT
UVbS9biMz7xrsz0dN84q24jDsXGfBRTkSim3BOZuA+aHBXzDm4yMzmDVd3KvDPjZ1YdQqj/E
oq8rTxtK729Ve04/ewF0NKQ7r0OLbSBYXWPo27SmdYWIWAaePpM4Drz0plUVGnQZGe6+Z3qA
GR4DJdtAJ/a1huAjT5HCOvARaRMx23Knr6DLjy0N7b0nR+7LRqK3Sy0o90hFNmgkbKDrjqlA
hxQNf4TusNsSbHX0qCU9BBVByX3NowIbhQRRqjo8OWk75Bkg489MxBjxd79H56PDkNAPunAD
P6fRCRwtIVKQKjWjG/QJenS73d7vNpFp0NLRbW9XbbBWmGe0bQlUCtjtvcY6ErfRvwVK8ZSz
mHXOkBiNhV9TDLMbriiukGteujUhsOHbxWJSF1LfbYOfqvCb+0BbicoX51WZ8iqDZRqqURt9
tmf2FCTJ0HamWdwuFjzQcIZ+/PYHGkGWBoLQ4iGU9DeFKQksBG4WBAaFFxdcKG9/5tX+OCU0
vJg/fIZrCnw48k3TTuLF7EEasbhtLR8E1PzD+ZZy6RKe0kZIKVygThjd7WHzLWv872ToQO7d
7da2+WZVVc6PLpK43D1gLNA5SrhAP4YpwvKqcr1DKxPwO+AgC/hSBwG0AJMalJ0kXVpnHWns
RGsySyv718E5JhE7ZEIKhHpTNMp2imhUIVUsX/xr0594aIf81/eXr5ebo4wGa1Ysfrl8vXzF
VCYK04fpYl+f/8BAjsSb/tljBhTu/IKufWgH8O3y/n4Tvb0+f/3784+vlpOJtu7/odKn2J34
eIVqLqYGRBDH8TnwmHPKURxeUaeI1g52nlypzbHCIjRaDwQ82NGbZuIXncrYTXgNv7v0jgr1
olDcSduGv7o+v5tbh0Lhf1zO2LzlAqfxj+e3r1bmXO8pF+1xTyFOFZAi5aHgzth6DIO0T/cs
FCv28ARU1CXuj0euqyPj5mhctijTIQ/NdwTNfpoudEh4SNMxEKiNPUMC45PUafN5hkRWQsQJ
owUXTZLC34UIjKUmOW82AaFJ42FlfaKlcjv9MfzoqihzxOweNrUPM54Df/z8CNrae/E11E8v
EoeGJQlmIXHj4GgMBgl04itpsE5a8+AmEFGYnAE31hqM6uPx/fL2DQ8KKqyXKYRWPkQzPRzj
Ktgcr4eVcLeIomt/X9wu7+Zpnn6/32xdkk/lE9G0OHm+pT04PA2TYAlOyQfxFJU6btKo5zWw
Dlg8WhE8ElTr9ZKWh1yiLe3D6RFROpiRpHmI6H4+Ant1f6UXj81yEVA+DzSxCbZZb7a0U9dA
mT08BHw+BxKUUK5TqKUcuG8Hwoazzd2CjpFsE23vFleGWe+DK9+Wb1dL+sXToVldoYFr9X61
pk1bRqJAxpaRoPo/yr6kOW5cWfevKO7iRXe829GcyVq8BYtkVdHiZJI1yJsKtVztVhxbckjy
Oe37628mAJIYEqV+Cw+VXxIzEgkgkdm7nuW6YuJpiuNokYQzD3phxTuWd7IT53XvdFxb5Zty
2Imo0O+kOLbHFDYI73Dtm3dHVAvii75qXgZB7Z3Hdp/ttGg3BOexChz/nQlxGt8tFG4bzsU7
cgKWfte1nIDPTOuM1huWoTDC/qK2nHpLgvUKDlIVo3RQOjdnYJ7GlYMfTmGvVUFfyizhPWSu
soOd0Htcu7QB5dISfmlhu13Dj/eYugI0JtIfm2DiDiRAmwUNPzCXDzZi+FJkbRh8hqevRknS
1UnknM5tA51EojYwzWM3OJlF4XTL01GFRXn6LZCxht0cDDZWIR1d16mrPnUWi6d/cs7r/WgT
IULlyIbu1uIVXqgYpziOVj4e5Y7XB2l6SlZeyBvG3uCZ68eJf+6OPS+coWjUIPBDx2iELtWj
gTD6tvNou88JxhO5oqA9I0k8eZG1il8ijoFenHb2wqZjlQ7n9dgMRJ+PJXPnMxa0tjprKqDf
NYLTWsbb0/hhZebByGKxZdvUa13dHou+tsUb4zx3Rarv3TWOrHYdevHjeF9seRgCYsBojONe
aVh99nZDFHpusvDYp86p82BGduqlmUiGLwh0KhbeQ7nu6bhCggsv8TiXPiD25DagyzZJGAcG
+ViLsWmWGzGjHHpb3yZOiDW7NuHY6O7bMe3v0B6BGuR5unJCj5ZoDAtnTCsBopFvTnmN7Qh6
lYsi01rKTjPsn2TiqfIDeoGdhmPqO5arC85R5gXIjhzPb2Bbl9rFAGzSPZT6fNwamzMGR6EE
623BGOKJwT7wWch6Uqj0dRmc9Ri2jEivHAxS3W8xSr3WKBvZb8ZEYetnq9G9XHg70PllX6GC
4ukU3zEogVGVjSUggwCVLQo/bJvOL8rf2xv9ubRaBcJjksbBfp7LxAk8nQh/676VOJCNiZfF
ruU2lrF0WdkNlH0Vh6tyDbCZMu06nmPCEpx/p2Y2eLX6zp5/0GcUd9qtFao4tJO2yAo7377J
H+y1JtymdaE6mZ0o52aA7S5Br5RhMJOLeu86t/Q2aGbagLrlGoMi++v+5f4Bz1QNvzujGtj1
QJ0FYaDQFawto3pLzF/xMrK1s0HjbPjr/9z2/LppP7U1eXt53soBeNlZpRF8hVMHzbx03p3Z
3pRULOYb+vtDr4jUrVNx4IGjl5uj4nCrecri3gkuL4/3X82XIqL6zINaJgsuASSe7nRnJkNe
XY9GukXO4gpCC1pG/vSB4r1MBjZ4PXVLY0AaWiWGtVwExZWFnJXsp1QGilPaWzIaaHrTM2Mi
KfizjPb7BqPEzSxkSxWnsWhy0txJZkvZcer5oHprV+p7pOn96CXJicaqbrDUrC5zW9/W7YnS
lwRLu5kfjk/HlM3z02/4JXCzkcZuLojLEZECbC182s5XYTCrhG1TlWNBFHyCpiFjT3zmnPvW
1TjU96gSURqPev4fBtKZOgeHLGtO5vDnZOsgHzI3Kge81yYLNMNEaZZPaU3DYFO0DoGKFevD
mG7JQanhVxrHwnle33XpcFU0iy+tBn2CrdycopPl4FSwiAvWbng3MVh4r8F9Z3lyz+HNUMGs
0/PQx1IDogi915bbMgMB3xONZjK9P7bxtJ4byeipMa+3Y1/hemN94QMYRkZqRuroaXeYPNXK
V9nM9SDR82VXl3h8lFfkVn13BGWpyVtp9ZxJLPImqCh8dTNQLd7DAvCHcgZZM76SAf3B5bSs
HzSXbRgRDe0/jJWVm0TdPNi1F7ziZgf28gqDjl4wJFeg2D0t1EB2gpf1XiDf33Rm3IX6mMrO
R1mAY62n0Ok8oxeH4f95YSQ1SGe7xkybbbYr8I08dgh1cJfBn47uQ5nM+MrBeOjPqMoxpmAc
SGOxCQWZxk/RqE8RpK4dCbZmf2iVDRuCjXyCiAQyp3dyyPq1/sUBWuTMolVeKdUw+v6nTvXh
p2MWkW6waZ7wYdJk6FSB1iTVDQDIyupOkyMTDdZ/er8n+r3fo/f1bm/MFSy2ec2qeo5HL7Ws
a1rQLrf0e1KE2VYH+kAx10MAjUNSSvIycJeqAW+QyM0BueHbj69vj9+/Xv6GiYylzf56/E4W
GZaINd9ZQZJVVTRq4F2RrHG5ZsCKKeJErsYs8J2ISrDL0lUY0BsslefvK/l2ZYMrgZkzNLlK
zIur/HV1yroqVwHhtx03LiqQVtt2XY4mEUo89QC2+nw+gF4FNfeGXXYz1Ej/Cz0HoiPwl+ev
X1HumrYQPPnSDX36mnTGI/qKcMZPV/A6j0NLWFgO41ttK14mFrczDBwsoRg5WFt8lgDYleUp
sM6B8XzM9MHVsFcsloNtD8NWDGG4srcj4JHlmk7Aq8hy7gfwweLrQWAgNA1hgoLC1ulDVhO+
M1H6/Hx9u3y7+QN9p/NPb375BgPp68+by7c/Lp/R1Ot3wfUbbGkeYP7/qqeeoQy8MrPzAqMJ
Mc9X6nKngdIeSklfYrF7k9DTslj7IFtRFwfqJAsx1T55opx5oJ6y+cAcxasMt0VtTPmWXVmr
NJjUchUlpL/1Nak3lDX3ACHRuLo+yYXib1CunmBnCdDvXALcCxs8yyAQbtTPFZ4eWqo/pngr
fJi3se3bX1zyiyykgaInL0SftdXFhfOZhyex5L9RHRaxphj31NN3BlWKkjeThH9dcxyhc3i7
++eZBUXwOyxr8tpWUzDQ/4ktghBiPGCr/gV5XgVzu75/FaGyJxFv2AYxt5psf6gnmp64003+
ds5SnuWFgPKt8Edg+WiZdEbVj5YnpwIU0TKUbyxiBCG2jVRs9wWRaPUWxlnZUHolot0p9eTn
1wtNOygD+mTrrFKHzE1AwDueSj6J53kyaZq1Eu3TXfOx7s7bj7zkcw9PcQpEV2sdC380IzKk
Ll67bH6zkWusisg7kedLk48ePWE+k3Cfc+0r4SED97tj31ZyPeUHvbtB/aGoq/wOZCgl7WW2
/2Xkr4/o6nppjR3zIJcqxtqKZg4/r7jAa8YOOcytK9BEXqaOi0nCthVdDdyyzZ+S+QSxI2oS
EQvLnNEXjHp0//b8Ymp0YwfFeH74F1EIKLkbJsk5E87gpu1Kl/hR4Kj28yrz+VY2DjUUWCAo
qjcywP+kmw4RU2cBpEN2lIgiSWKwCOScDn7seUYh+O32iqDLpxcTEeOz+oOTKN0tsKFstuRZ
0MxwckPV8f2EsJvmK1+u07uxT8vKLFC2K/r+7lAWRxPTDmbmxGDPq+yy57TSpmmbKr0tqDJm
RZ72oD3Q1gsTF8jqQ9Hb7AAmLu50BHO6ylZmxbs8VXEsh/W+p1a5ueH3TV8OBfPwT/QpxrhK
ieYYgrjyQwuwko6EcHYpa4MggOI2jBhmA1aOGnZaoetNHO1GU/aYoqcGhZlSKfuPulsEPugt
yxVLavLyLNPELNKozOLSWTbdPITTt/vv30H9ZlkYF1Xsuzg4nYxVlFeDKQG2ksHE6kbjm/yY
drTJGoPxpsiW4GbEfxzXMRKdxYY9DjXn64nO2FXH3EixtOwBGVjdNSc2yOws9TqJhphyEsFh
kJX7TisIdGWmmvAw8uGUhJTQYKCqrncgx38TPYq3/Fd6dRO7yuUVr/WYxEb+2nZYg/To1ox+
LJt121A3bxwe3CgLEvnwgZX08vf3+6fPmtbPx5JpJa7CTWcUgo93enO8MHjWPmIHOr7eRIKq
hqoSCFon6fxjV2ZewsYsn3ab3KysUVXP0SUGc9qYGpVc56swduvjwV7NrAflid1rHKhVi89K
Zrqk5cltlows+U7UllLVJbFvjggufO2FZGZqThLZkmV4EpmtC+SVq5dcWKAZpRA2Z9Zxyeyr
tLSAuFoF8wyDrcZ7Y/XK4RPvszGxWDvzpoIFsb0ifTCODfozO1ts/iemgnN5tJkQt2fLM9+z
eEDgE7zFF7iVqu7MO4l3GgIWDjeizsOm2Yc+wvXm5rPW1amZ7yeJPim6cmiHXiOe+tQNZDut
ozt1nvvbfx7F+eay95nLfHTFVpm9g2jpVlmY8sELEuqAR2Zxj7VckAmQ1XRRqOHr/b/l+ytg
Fnsj0PyUQ4YZGWzR2WYOLKNDnx6qPJRkVThcpUHlTyML4Fm+AA2YrA1+QzoUUTls5fB9EHSZ
DUxoIJaHlAq4ltIXTmBD3FjSIdFK+JweBp3UF4PsIlYimjsXCVP1Fh3B/45aFHqZpxozb2Vx
GyzziWQoFVviMvUUE+WkdkPfWQmevmCBSnSDayVRjMRe3elV51QzGnaHfgWQg5I6QklM8ww2
WiPMQ+X9PLe6Zx8r45Pb3OLhx556Lipw4zsWZtYoygyLAsyPJIiU8ewBPUSgQuBE0nicvk2z
MVkFYWoimbAD1sg4sCNlVZQRMsKawuBaP6WH1sRSFVvQ7A/Ug+iJZVjL1/Si5pw4J8f9MDLy
1ezWHz1rPJa51EzhuVbhdOXKzyfm3mBG8lRDcITMdbKst4xMhJPkvNkXsGVO99vC7DoYn26s
2CdoiEcViWEe6ZN5YpmM9UFBy6gk+pPFHeDUIGzmODYfqJzn2nOyiQcVRy++Mg9UEbhkzwaF
XPQ5xTHzI9IzvlR2Nwjj2Ew2L0Z2CcNZojCicuZPeqisYQgGbnhtVjOOFTHAEPDC2JZqbLlV
lXjChHSlNc+qeu0HZPrirUh8deawAcpXlIBq25lPGNqaI7YfQ8cnm60fQZ5drx+74NkP646+
A9oda9o4BLWoVDUn4ST0dj6Wg+WtwcRU1AVk36BRs1jYYIhUKUyxQQ5iPbFbbDUm+NiX7O0d
egHqrmUrQsFBY2K0nqKDnfVQUJWQGTdp2fPw31cLIX/CIr8PnRYO/OonQsOpqjazBiWZvrOX
imCU60nAeHd0Vl1MyfBSE6qZ3in4NNbYUTYxZPLisOmLjxN0tc7oiDjVXbMvKeGLH+9qQtx7
ECttVqWWKHKcaWizcz4OVHLLrT2w+gEsUHjZ+k0xS5dTQ5Z/Uqxsd5WLOXzE25kzejZHt/+W
cFeyVkYkOGlZ6Zjt8lbq84livPOZgaY9pnftntJmZx5uKMnj5RUNTsmcTIudshrNerx/e/jr
8/MX04vCoum2m3FOxjoSQu8f8IQkjzqepHbSTuTsn9ZFs/HcdZ1RrZynUPxc2rAIfddkFXa+
JvCpLNlbLROZnnCZiLgMJpD8SFZyUmOu1TM9Rf6JKiF7Q2mS0+zjHgMBKfVnofIwfoUgLzpe
VdZo84R0WgkEhth1XJ1BwMU6O2d+EqjZ4TGtkxR6ZkOHngbPY0ZeY0NKm3LsMno8FPu+nSpA
z/B1DGnTpSzXdSofuRzTDQhTrXRl5DtOMaztORQRdoQNhWrZsh+T2PU2ahshUS/Crrs2FPgR
pprKkLker7a02cySOHB9PfHmYGl52Mid1BSybh9q+aADM3FwbiJ+vI7N2qBrSrpBjokfefFO
axGgJnFsElcLUdpVZbtPltRxJBXdCcYlMT2acoWeA/W2KbPYcRNr54K0OaeeMQmmw9Xf/rh/
vXxeJCsGI1YEKr4QzK4KS0i5I4I4z0l2L5e3x2+X5x9vN9tnkNdPz7pXLyH0O5ALZV20e6bw
UM2D3hXaYSjXyiuSYa38gMnay/b27KusZMFhya8nVCeiybv+1SIRFBZLYYe8bK/kO8EqlVu0
Y6HYUxxb5iobfeyzsFmuNNdZnRKFQ7L6i8fWxaNwmnvGlT3tDAykE3CGL/XQUpxKjg58s7qx
oMomlSPikGoxdf7zx9PD2+Pzk+npc5okm1wzYkSKdN6zTCekD37sUluxCVQOFWumbGl3TIwz
Hb0kdgyFimHMd8amKk7aawyDZ1dleaYmDK0QrhzZFIpRp5srrRTT+YpBEzbrchNxYz+9sJMN
oDA7txR3NgdQvuVU3dSfYqGfSrD8Z4MCtVhITqib3BnVfOtjV6FiR8Y2mFH53g5TEgqlZq8m
IfQ7hpkhNJOLPCqpiDrQE6BydsZaLXPRzb3R3px8pTUnDu3FAkK7MgpgKdG9/kwqwIjWqEOZ
SVcGSIOEuCWtkhbf1nzcp/3tbJBLDoGqy6zWAYjR1+XLPg1LK+kuCh2txDUjcQPHfZLFgeBc
DXx9yoxM/gmf1WUhsH1Im08g7Fo6fBJy6HbJSOO+fRy9iTnZNgGmk3Bt2CwndNokxMM3i3O5
hYG8UF7glW/kFsdJYFKTlRMTRM+Y5Iy8oo4xFzTRUhojUMw02rQnW8jFp9NZPdZnYsMk4W5G
L1aXbUKYr/QpLfvIvAmWUePEjlGzcAwTmxBAW7fE+KQJx8jihg7xAcU2HRKVwWUQR/qzXAbU
oRoZdSbaJzJjub1LYHxZ/GCyNAZLBLv1KXScK4F58OOx7qxVmS7RJNqIQZl9PzydxyHTzuMR
rzp/FdjaG8/Pk8RIsKrNwZBWdUqeOnZD5DqhIqS5YYZLHShzKNZm7GTJoefK6eTJ9Ax7rjHR
kZ4EsfWzkrA4kYAwoo+TpSypu+8Z5iYn5mcrskUk2CNaBaimEjMjylNwgYAU9aWbv+mUw5wA
E5Luc1kBnZwsmR8cK9eLfQKoaj805/qY+WFiiQWOuM1Ijalvs+2SSTTbYwKM5mAakhdo1ahD
1zG0E6Ra/MxwWJfRJmwbFQAGjqMXQtgN6cngSZld2xIMhKKGSOhc/5QbJcmytd3VoFXHbiKr
2tMZm9rRs3sxgjRvWAyA+8A/tNWYqg8vFxZ8273nj+iHfW25/F7Y8bSeHdaTHxjsoCNsFSMw
BRI6Bw1F8gK+YLinSqLQBqnX6xKWh768jktIA/90JML3VyQ0bdKIJjKvlQ0Wc4MlYfOAINIm
rQcNLk3HkAbKtPsgkuZbiavpzjsLCvFUM18No3a70jhNm9APQ7JX9VgjC1IO1con1VOFJ/Ji
lxwTIDgjn+wDXLdj14qQTcCuwy2pifWOROha68qBhHDJboOiOKIg8+JcxcLE9lkSBWRmDIrI
2bHo30SvCT38aq8xHttAFTr5ewkYV/0Syn1xviPqkCtZUSYnEg9sBVxyoCAiW9SpyIrsCN0Z
oIRs9p8sET8lpkOSOHSPMCixTFAGknqexCPbRS7k+daQAqcNhQkYu5MFG0C/dyLa8HjhAk0r
dCNL8G6FjenH/4DN8y1ecVS20LH40tbZyKcEOhM96Rjm+qSUkbRuCxZYlo5JO/4npQft9r3S
T4oulYRpPGSqHeo7swUwVTMFC96ZA7qelYn9qUpp2rHclPJjvV6wfZMIGF5g/l2VsrFqn02O
c1WHmBikc4bou7Iet+Hvs0TvsXw4vJvR0DZ37/KkzV1LMUksu7TvZkfB35TPa9AEb9f5e7mc
6u56HmXdNlIWcjMfykyNvtJnko9hW46FJWgcQLvyFO5yiw8HXpRrmO68UmsODD1j+xq9rpXW
RuL+/Wyo8MFjHTFF3qeWyObYh5ajRYTGvkjrT6nFXqWfHgddK3q5bfuu2m+vVX67TxuL+wqQ
GSN8WpKbiWx+zKyNPf5Yxl4o/oLE4k2DLWlXUO4NzIqSRa2LHONb7jvhJGi5QPp2+fx4f/Pw
/EIEUOFfZWnNLinmj6ULWMSh7ap2ex4PE4s1f/SChs+HFlZp28k4+hTfmVizGvL+3UxQiloT
gB/46pt2aHYo84JFLVxKxUmHoFI0Pk5N88OVN9uch29z67JB3SJttpaoEJwZryCH26IqaM/a
WAr0teDBH62UiGyODYiohZgf1tr6gpRaiVmDlEZ+Q8BY0hPULe1GXELcSIbyuybFuwNWoUH9
jDsaGooMDdVgYgwD/LVVefZVod1hstFHRUFi3cVaxOzvpd2Can6oKa5NqcNIZJsbjnPpXby0
K4q6vtKM/jjTsDsfir21JMxOnyjFzIRN8A+KiyNYZzMLM19NqjEx+IsqPpMvn2/qOvsd7+In
XyuqRVk9sIt6dJRNyTc2Geeh8FOl4wG6ar3O/cAg1ZoYwvL7n7maOjCl5arKOEsEBmjJ/kcr
jIxnLNIwJl+MiYKkaRw70U6v1VhsokS9o+QAP+Q0Wnq8/H3/elM+vb69/PjGHDEgY/L3zaYW
w/rml2G8YaYovy6SlXXher/xtCm60IXMMegwSNtOH74MyWsu38otmV7NzFTViXf/9PD49ev9
y8/FmdLbjyf497+hhk+vz/ifR+8Bfn1//O+bP1+en94uT59ffzVn6rBfY0g1dBk2gATL7PI5
HcdUjpnBRzMuw14Gy+j8jLd4enj+zIry+TL9TxTqBsNpPTNPP39dvn6Hf9DN0+yCI/3x+fFZ
+ur7y/PD5XX+8Nvj34qFBC/AeNDOuwU5T+PA13sCyatEfkIhyAXGTwozc7YyhIwBLeTP0PnK
YbCY5IPvq1dfEz30A/o6YmGofI96US8KVB18z0nLzPPXeq77PHX9wKg07GDiODQLg3Sfiqgl
Vs/Oi4e6O+nJsT3AetycOca6rs+HuePkQSa+SNNIe7rNmA6Pny/P8nf6Oh27ia9nvx4Td2VW
BsghddM7o1Gkp3Q7OCAbjBWlSqJDHEUGgKLHVY8kZYASntMQ7UI3MNqRkUNzLB662HEIvWU8
eolDScYJXq0co7UY1ag5Ul0j50N38j1vfqbOewdn3r0yMcn+jd2YVnzFsD55YRKYASN5Hpen
qymTT4IkPCHGNhs85JWhjId6EyDZD3w6PX9Fb4YEx22SXBsEuyHxnLlxs/tvl5d7IRhN17X8
m/bgRaawQmpIzID2EEWhvcbtIYxWRoXbQ6ycMc9UnrGRRRxdaVRMjPrsMESR5Q26mHPjqra9
l585Rteld9gzx8EhbwUW3JVPVsUI6h3f6TLfaOb+Qxg087vxzdf717/0mLF89D5+g4Xq3xfU
Iub1TBXLXQ6t6ctXBjLARNyyAP7OU314hmRh9UMbQTJVFKpx6O2G6WvYZN0wLUBdVevH14cL
KAtPl2d03qmuu/oQjX1ThNShF6+M5uGXtiLGAV/df6DZLhT39fnh/MDHN1dPpqLgkQG18HOl
BtF00XYnpfqUe0nicFduvWwpyLSScd+wQzc+qX68vj1/e/yfy8144E1B7E3YF+j3sCM9OMlM
oC24eiAGDU882pxB51JMJIws5JshDV0lSWwBmaps+5KBli/roXQcy4f16Kl2mhom3wYYmG9r
KUC9iDTEUplc9QRYRjGGJ21xITGdMs/xElsSpyx0yNNelUl1Da6U8FRBCuFwDY2NwxGBZkEw
JPL0UtD05LnyJbQ5SNyERjcZdKa12RhKnb0bTJaSicw9WwZF8H6bbjJY/q3TqE6SfoggFdtz
Aakw+3TlOKShszK5PVd9Piuj5bhySXNamamHxZo4h5o72nfcfvNOGh9rN3ehZWWN3MDXUO9A
E2Cvl5v8sL7ZTPu2WU7iwd/rG6hk9y+fb355vX8Dwf74dvl12eLJ8g6PLYZx7SQrSskXaOSq
VpqcfHBWDuXHekZd6qMI1OMrX0XK8suOrGDGyMKG0ZIkH3zXmVdFrdYPLE77/72BZQLWxzcM
enKl/nl/It2uAzSJ3szLc6MyJc5Gy4d1kySBfGW/EOdCA+m3wdpF0negGQeurIvPRPmul+Uw
+q6W6acKes+PKOLKqFK4cwOLtezUrZ4lCvM0VuiZPn+9WqklEUPCIMLgMoYPrpIOaUk69ZWj
XG5O33iRqyd1KAb3ZNHV2WdCDOSuLd7dwsW750qxoADaAAYZRU0qnhK1Bi5oTA0Dvf1gaOpz
Zhxg2dP4YBIp6xgbQuskSl2zFaG4sSsP3fHmF+v8ksvSJdycSR0pSKUErKiTF+vl4kSPHLI+
tXiJqW3M2yoK4oTeRyxVDWxla05j5Jg9BxPPYh48TTc/tI2QvFxjN8hhBGVypueVs5eXDvXA
RoI7I7WV0deirolKTTcrZaVHWpG5+sc4Sf3IGI6gintOT1ADV/W/gUA/Vl5CXtovqGeO7SjR
E/qUu7Dc4kVFSwZjmwqROPIQzsRSYR28KCYSfdbwVvNckuqbjeQxuxu+exsHyLN5fnn76yaF
3c/jw/3T77fPL5f7p5txmUy/Z2wBy8fDlWULRqLnWDzJIN72oUubwE0ot/ZQPlpntR9abGLZ
5Nnmo+9fyVUw2NZFAUepMSu30K1XVh6c5o5NR0n3SegZdeHUM7Ti1c/wOF7rNMzMnYVdOeTX
pZ1a0pUl0ryYhYl9gWSi13MGJWNVQ/g//5+lGTO0vbSJR6aQBP58RJs/fnl8u/8q602wWf/6
U2yUf++qSp0fQDAWabYmQkVhvXhv5WRcK/PIbyiyyf/2dJ5y8+fzC9eYCPXNX53uPtiHZLPe
kaZ/Auz0qcxomthBk85A9Uk3k690OMdtkh+PBjSBUW2HZFuFBFG1zmWfj2vQhK3iEyRSFIV/
a/U4eaETHvSk2P7Ksw9NXBN8rai7tt8PfqotHkPWjl6hp78rKs02hnfj87dvz083JQzelz/v
Hy43vxRN6Hie+ysdPUYT546hTXbeNJbH5+evrzdveCb978vX5+83T5f/XNkD7Ov67rwxS7h9
uf/+1+PDKxUvMd1Srt4O2xQDEEmHYZzALt+33Z5dvC8HkwAOx3JEz90t9XoulwN0wI9zXeIx
lxqbAul5BwLtdOU5K2NinqJrLUlOHYpqg/fciyUUYrf1IIIGqd8gfbMmoc0aw9nNnm0osD0U
Pb+0hEVTrQdnqIr0Fl3ID3b/lciMwVfPsF/Oz5uyrzHwg63iHd6mq0VZQovgpaS4Ybh5Nm4e
pU94jB7QryI1KX6nXblRYNIxiCSe0q1kR8oGqB4hItyneWHzC9SzeHpbIo5XmnU3v/Br0uy5
m65Hf8VQHX8+fvnxco9Pyufr1Dq/qR7/eMFr4pfnH2+PTxd1akA+Tbs/FCltGsFqsXJJ4YoN
vC20kXaAYaPX81AftxuLRgHwtk5D2x4M4H1O20uxJrJEoWDTaJtuvSvpZmUP4u38EYaxlafP
0h5dzexyMv7wzFIdcqPWH0/2cq/bbGcxM+mnwIhnrfMlhi5tmKd/saa/fv96//Omu3+6fNVG
M2ME2QRpFv0Ak1X117CwYAWs5eEs5mk5wVRiZNdb+Gfl00qJyVmuksTVJq5gaZq2wgBoTrz6
lKUUy4e8PFcjKCJ14YT6tm0peloP+wZjOq80t89UUwDfNghjck2fuVqMMMDc57QjPjhakcWD
v9OhbcrsfDicXGfj+EGjbLNmzj4dujXGdsD4Ke0ehkfWF0VD16dP7/JyD2OvjhKPXtKNug9R
4e9Sj8pbYon8D85JPp8muZI0JSsxFOVtew7842HjbkkGZvNbfXQdt3eHk3z/YDANTuCPblVY
mMqxh4Y9wQYsjpPVQeVZ92Uuu89cvpsRZe4s+sn65fHzF1NGcjtJyC5tTrHmtluWKXkzkEv3
vl4zTSBP6WfEbKmDOXguGrvFM5NqGFJ9V3YYaDLvTugRYVuc10noHPzz5mgpFy5C3dj4QUTM
EFyGzt2QRJ7lgIOZeGGTl4ntqT3nKVcO6Ud/Qj0/0LMfd2WDzq2zyIf6u47lipixtsOuXKf8
DWoc0Q83GSNMoU0X2Ha5YmHG2/zQct/MurzPuq19adiVQwl/rWt7h9anYUMbLvNSNnc5GaOC
DQbs5zujtfIr62jvepaTW74aXllv7NiQHtKtTeeaRWHRjEwTPKOntNtBnXgY02QONswv0l/u
v11u/vjx558YV0y3ewClM6vzCsbFkg7Q2OuKO5kkt86kHTJdkSguJgp/NmVV9UU2KikjkLXd
HXyeGkBZQ/3XVal+MoDeSqaFAJkWAnJaS8mhVG1flNsGJn9eppT58JSjYj24QbvdDawZRX6W
jd+Y0p7t12r+aOnOgvEpVPS5LVR8NWVUFbCkMEq3ZLf9NYUJJQyAsemYdkUOK0C7mhY1+OEd
LIOWjSrAaZ9pjZeCbIJWoxVB1oHDaAVBJlvCJ2zY4SA9MQArNpRCiMM0UO9hsTcscw+gtkOB
3xeUKTF2upsb7nIwj0OZW+YsoH15sGJlbNF/AKuKxAljWoTgULFHQ8BM7XsZ7KPxziacOGqD
BvoGBxFDMCloaR17NmmH7Vq0MENLWqIDfnvX03bLgPk20YxZtm3etvRSg/AI66q1oiNoLIV9
eKeWCF1sllkThU1LTYdmxMbTvajgwFnDRu00BradGrBMnp7pRIVHAFX6FKjEtXWhZYbnpB6p
ZKEg69s0H3ZFoUqy3R3IsIOWkNXCB7EBrxRi/Ys6Ji0lZvF5rrLcfAGDxKxKh0G8LFORKtg4
oNl4o6MYxzCoHrzE324s4TkYy3jwQ+cjdeKDMO6gPNl8byL68r0GEse89YJaL8Fhu/UC30tp
xQs5qHBaCgPbONT0wGA1MPZdEgjbCj9abbZqyG3RNjAQbzcWr/LIsjslfkiZhiIIOzPYhaqB
EaZepDtrwY3YadIAMDyjLFh3pBS6BTddJSyY/Qn7wpN2nbqFl7Kuk1Xgno9VQbtEXziHFHZY
lHX5wqKHQJJKMPsMJFIGMEkstzwal+XuYOG6EhJDSkp3pqF0U+Q7ZOczaEVXoeqS0PK0W2GK
LWYSUoegzvtOO5sPr6UhqPqQXDI/QPvHVUeXf51HrkPNCKnR+uyUNQ2VtnATI51to6EnrSXi
oZgyZVtLIOOh3atB4HiwVdDTjVeLQJSThJ9LaJCxL5rtSHvcA0bt/awA9jxFKb1lZvOrqO+X
B7wGw+IY9xDInwZ4zKOmkWa9HL90Jp03G40q5qtMGvaDXsd0D9sFyuE5a4Ciui0bNREeB1Sn
lfBLJ7b7bdrr+WXMBM3WkqCDd6CSUjopotDS25ZF2FS3pxP1vKGM4vDLAq8UtBbCB0dq9GxG
/XRb0Eoh78J6XfbUNo+hG/lGBSmQFjtT06h3hZ7tMa3Gln6xzFK+6w1X/hJcortyNY9y1Agf
0rUcfBRJ47FsdmmjF7nBALNK4FakV9kUYkgmFrlOaNpDq9HabWmO5ImKP7pOm84csQRvQrzf
1+uq6NLcu8a1XQUOPSgQPYIqV5njginidbsfjE6q07sNrN5WQcAfrW+t3VSX+Pyy3YxGwi0+
Hy2oQN4M3ldjSYyjZixVAmiGxa1KgrUAoxpUbS9HGV6IRvW7Ykwxvqhexg7mOOg2liKCptaw
c9Fs0JLrS1Av9MSGtNRcAyggO+81vumKAg9n6F0H4xiLlNKCBAadDfK30AoIWXXVXiP2tday
WzwThw2/GgBzItoFD98cnKfhJOdbp/34ob1TM5epvGuUGo7lgbrJZVDbDYU+HfGQc1vrtH4/
jDwQoJy+TLdXaI/L3bkbfDXRY1mi9wq9vKeyqemlGdFPRd9iRS1ZfbrLYW3T5dAA8qntz7v9
mqRnUAf04cN+aetf1S0GMF6m6QFzyfCIdleaagMe1X+9wW2m7UPm0hYY9M8njWBYn9tdVp7x
dKsqxKHbUkbEjf0dEkFtgjTT4bzLFCVF804hfcGdh7PCIROWVNIxZnr318/XxwfQQar7n4o1
xJxF03YswVNWlHSIV0R5mOC15dhtTHeHVi+s+n2abwv6oGGECUQfi+CHfQvtyI0crDywRuFR
Bu1wARn2VVeebYXfH6k2rmXHuN2xH4qPoGOoBpWCbH/rU2fntRrgfiZNvhKSWS7ga/J9qvi+
AGZmVDFZqrNH+/zd/u759Q3v5Sc7l9xw8F5nuptFJA35TvVYPxPtXppnDt3fs5lENW5qIkMM
Ug77wkGeDCo4rly6VADmx6wedqSjyplNhHOh09jgv5bgcMh1XA/0xpb1QLkBaWPHqbMptQw2
J9msfLBfaHfnjB6byJKtY5ujUUAPzP1JbbkqQo491L2MYB6Rr2gwg4/EkJhuxLRBIXHU4y3d
2ifQECkFSepTxdtIDbr7WGZqaoJmelKRIssPb48P/6K9hIiv982QbgoMG7qvyRmKgTOMOTrM
FCMz+7QzM2cDp7Z07MT0gamMzdlPLJ5vJ8Y+JD37NcUR5Z+kYOAvfgalqNwz9WzXcBnTusft
egObtPPuiCZhzbYw10o8CiJanqVw5XiF4Wm314q7zurIVx/WLfSQ8pzI66O6DeW03nHQAjcw
EmOHa5aTxBmnTDMmNJJfWs3ElXcysuK+FO1Z8RDvVH8yWPcgyvNC19zU+/wZDY3idWF4Qmfm
da1G051Rj7LxXlCfSDAyc0lC2ZJiInJ3oHqe1kM8MUKLA3pyKakTi6XpQrPJBd0W9mXmURyo
MurkJHlMx705Z8wwrjqeuV4wOInllJ3lSx7dMohwk8xHfu4l6osVRhbBGoaAts3hbTz64Urv
OeJslY/UK55FGcOYpegc0pbZWGXhSnkwNM8l2XyY52WGHOCVGnx3U/nuSk9FAN5ptjJfxA4z
6v7j6+PTv35xf2W6br9d34gT6h8YLp46f7v5Zdk0SX53eJPj1rM2Woi70bc3UF2dMNrHVQbo
ZVsDon9qrdoY4CpZK3UeXx6/fFH0O976IKu3ysmpTD5jbCk98QlrQcLv2tGo7oTvCtBF10VK
K+0K63zG+z5rRhoeKixpBnvgcryzlJuUjRM4RQ9V+4u14uP3N3wY83rzxptyGSbN5e3Px69v
aLTL7FxvfsEWf7t/+XJ508fI3LJ92gxom2IpJXeOZwG7tCn1OTBhTTEqPtzSLCsw+hTaNCo2
OyX83YCG1lAb0QKkEujULTplG7Je3kkzyNiEIlVOnXFxQyEzMqXKZWhoMrjdqZ4wGbGIQ4/W
dhhcJt4qttyTcAbf9rBSwDbbXA4XvnuV4eTT1y/86zC4mrjuAUCH3atw7NPeYscMTZ2W7kIC
SO4gStzERAzlD4m7DFT6O+okBlFAxnaXqekI4nSV+V8vbw/Of8kMuht/IDWHupiNsYBw8zjZ
Pyp6IrLCWra5MrhmFlDRqb3fjPP5Yn6HTwH2ZcEeE1i+R99k8g4bD42w0MZtzcRshhBSEApI
1+vwUzH4ehk5dkosD+JmFua4/0r580HYGpD0cwZCat/fUbkjR0z6wlsYIsV3vKDv7uokjHwT
MJzACzoGRl0poRMWQA18pABeaAFWRB668+6JPISZT1WiHCqQAwnVMBy62uqCJaI+PwFCuosX
eJdtEkW3VgCHaliG+FYkIkcXg8g373NjBu6YUN3C6Gpwzwlbf/S9W5MsfGhT5bjuyHthYh66
r5R2gP3ZSr52n4BN7bs+UY0eZpdL08PEpfmpMVfUvuPFVNV69ERvun/EI5+rcgQbeEX0JqMH
tsnqvCsHQtunAa3iKyyUki8zrMjeZXObdDwwN9IqdsjWDiy9EGl+8JS5HJCBFBRBQ8x2mAse
d3lhViDr4pVtvjJz7iYXIXTmzkW3deZiQTSr79l8/isFoy3Ol1EGXb/KPGOcdV/v32Af9O29
cmR1a1v5Red6CSnKAAnpUCgSQ0gMZFw6kvC8Seuysi0+ERmqUmFYWT6NPct+W+YJ/gFPco2H
1wH1D9ynv9OCcUAMu3zwAicg6GZcGxl5p9y2yJizoBxv3XhMqYU4SEa6pxHxr/UHMoQrIsmh
jjyq7uuPQUJNxb4LM0oe4CAnpz0/oLlStE93zce6M1NcoreySfH89BvuP9+ZK5sR/udYjtyX
WZtS73cXkTLZVus90xwMzZx9wEKsXBcCsDm4NhOnw9DZAor7zaPXoRxDzB70OAUL1XLuDgzm
owp0MFw0W+VRBdLmQF27tGmKalBRvEtSKa1kp5BWIzqXr4dtLsdlzo/n9FQit7RV2QwVbJ9k
NnFPC7RIWUsFvU1HrAjV2Cw8zA6/PNfbmvJWvHAoxcpZzGbVr/pxKujSwIKRvlXZDfszT3du
7OzrI3qPVl6OD3dNdh5PZ60OS0uKHY3RPec+ZRZrU+rr/ebm+Tu+6ZV6k6W+KZXA3UdGlXpn
f8rLoatS2SIsD4JY1iXLGsualSUazMqNsBvd6JY8aMf355xZEPbqWc+ehU+gDBcQ6XAWbIum
7D8qKUALFPUCKKmltqtn9AVe9FlreSXA8svKyeLPytMUIyW42Of9Xt2lI7He2DyZIro7XM0Q
J9z5irt79vZ3aRrxFrguGiV+pyDTQ1SAa3x/L9ttCHrZdPuRSKyu1UN54Tn04eX59fnPt5vd
z++Xl98ON19+XF7fCMvNyf5e+Y0RTLtUfoop6EbhhjHdlqq5EUziIqevZfsk8bw1/fyjH4cQ
9ox0649RpC7c/EgBav76dv/l8emLbqCRPjxcvl5enr9ddA/8KUwvN/Is1ukCJfwdp0/3X5+/
MM8Vwh3Lw/MTZKn6PE3zOJKdEPDf53KDURLx0WZVFYpvFoWBjqMNLLHqghEoCbktAMBdeRqr
l1hrM1Xlj8ffPj++XHhce6VeUkJj7KuZCnfI3+8fIJGnh4u1ceTSuCG9/DOI1uexAQIz55yV
ePaOM/x8evvr8vqoZbhKLLsEBgVGqs3l7T/PL/9iLfTzfy4v/31Tfvt++czql1kqFa58c6Oa
Qmv++3Jzebq8fPl5wwbi/1L2LMuN40je9yscfZo99JZI6nnoA0RSEkt8maBkuS4Mt61pK6Zs
eW05pmu+fjMBggTAhKo2whEyM5N4EUAmEvnAiZqE5rvxbD4ZtqI6fpy/41XMT+ebzxfW3PDh
yOGQsaSrjOMLAPKwTgZN4W/Hh399vmH10Kbjzcfb8fj4rHei3QSagXlyO9We3s+nJ5PPbqzo
IYqx6XsLeqainhQ4zCY2k+EhKmTVPi52tUCSHRJUm12+/QkJcHEngerbsmAVfRGljFRk9l6S
JFrnNFtZ82ZVrtmyKOgLnl2ewAhw2DhItLx9bsJ02xzS/ID/3H1zNBN90lZ0LXdJinHkRsJQ
6icUtJVSwc2Iq/DchFa4GxObO0zWBFK4L7jRUeJwRBVYK+9uh9zyGR2FeF3F90vzeroFNfhh
qoJ2oVI0VISbAZFl1DjAu+/4OoqCNsLr8TIv1lUiYYV+lcKVz0zh98mywjv1q0QyXEOEgYLo
9YDu68vi4P7OZTJ25buvt41lkyUjQj18/Ot40eK8D5bwmvFtXDerimXxXeFwwDwkKZ6D8LOu
KGOHuCpWgNROXApiX9l08AOr64qAlwXH0BRhSuB4HO4q61qyQ+543OwzTEkIn4uenC2tuLFN
8q8yRdQ1St58S+gd8DCfarmR5BmWGJgyk9eixjJSW2OZlJSNWLiBxRV3pWuDKjEFTGtWyozM
/aanUCWHeeguFihqwyBCpW8ykpYroJXHW4HTkrofU9iyKurCKgsTIKLVLOG5n8VpyvLi0HVY
ezXdivBaRbHdadqWDTp24fZeVjEwAT1zZbf1q1NnG7Qt/H5+/Jd0+kc5Rl8IGrtw6n0QueHR
1pLo1XsZOyxcuj+NTFwYUaX3JDyZBBPPUQ0gPer2zCQZj6nxQIzuW6hhwiiMZ7p4buGMWzEd
J2LwNaE5DwFR36VT2kdWe1umy6W6uQ8preDmDiZjrptJym/Kz5/vj8ehwglKivc13u3r2mLx
2Jjml0C5TCObEk3CYDPW29it92xDGZWUoaF6URqlpSPQQFuBuA52SGFZtqPSzrWy8Mv5csSU
UsSlj8j7iWpkNVbV28vHXwRhmXH9Ph0fhVLEUBkKqFBDrdFiCQGUWlCQ2Wd+4S95l1RdmCL4
Xq9Pd3BI0fR6ElGEN//gPz4ux5ebAlbs8+ntv1Gsfjz98/So2b1K8fkFDmoA5ufQPuQu388P
T4/nFwqXH8ovq/fj8ePxAWT22/N7ckuRnf4nO1Dw28+H71CyXXTXVbTdVv08nL6fXv+mKYGd
JiCY7kPNLLUUbGRVxbedwkw+3qzP8Pbr2dCmShSwkn3rDdAUeRRnLNd0WTpRGVc4c1mue4gb
BCgDcdhYaTQajYHA7XybcZ7sY7vlAx+BvpNNvDeMmeJDHYpjjigg/vsCB6t2hgyLkcRwqAub
r8y041aoQ2nFfjfxtlFXC271tXkdjBd0KBWDMETvcooVtlTDlPI9Igj0tPY9XCVlJxDz8RBR
1fPFTI9r2sJ5NpmY5pwtQjnXXOsd0ISKndN7F2wwFeVbmOhrP0HF3W610k0Ce1gTLkkw2oAX
OdrPW69tUfhEKhPcGrKhcEHUJf/VJVPtnQGpqJXjaulIfJ2E3/VhFvp9WiLaFwiNh6V0U/yh
VblpF1MKtNBBhzQYG7fsLcg+0llYrt92LDPm6apyePZ94zn0JiNh+5fSUFM+NDBGTRHz9Yoi
Fhg5MjJWRUY4UgFYWADdhEJzxJPVBZH12VqxU2K7WGP6x6nVq3iGceDw3v0aHvM1KXx/ej7w
iIrzvT2EX7feyEwamoWBT8Y/zjI2G0+Mb9yCHN9YYS3xHMFTh7E74ObjCZk3J0M7ds+6S2qh
VvEAoq5RMpFjSE/2cwinvr6/8ZCZ2Rt4vZ0b6T8QsGSTLuT9r2qWgf+tMwbLMq2Zvmxm/tTU
OPsLz3qem6tqNp45tMczq6iZVdRsEVhFzeeUbQsgFr5NulhQJw5kYCPMf6zfggmm1sJ6yVno
oDwEUxI3XtLar0Rsgct3XdLvxPk+TosSUyTXcEYurJALwIboo87mMCNNN5Kc+YeD3Qhpumc3
u0fXoT+ekd4iiJlrk0sAFnpuMOC7I98CeFYOEwmjr1YQF5AWD3jUm1rZqcIy8EnnI8SM9eDs
OdvNDBMFIVXzMkuaxBqeHrOnvxKPhACUFZHtz1EniBnJSLRdgQrqUPwr9JiPSB8difd8L5jb
NXmjOff0XinaOR9NhuCpx6f+1AJDAd7Ehs0WejpRCZtPTS8fhGYgTB2cMwlDaKbheDImuyWt
COG7msMvzrCBe43sV1Nv1E5pfb8SOa5uYitqO3KSKoZNMB0GbWcvb9/hiGNta/NA7DmykOfj
i/CpbhMTanR1ykBc2Qyc05dZPDUZPj7bTFzADPYdhnxuzu6E3YaFQ4+7/zYnNy+dLcuWccVe
jCGxaAZDszk9KaMSvNWUuhwzok0rGkj5rfU6o9G9zCePm7xUZXflmiIdL7XGY9GUgs+kNEII
tOKDKsMYewtnfAML1w5cq836fL1oB9IuBwbmtRXzj2aSk5Ee6x2eg6l1PTYJ5pRoAoixbzC7
yXg8tZ4NcXUyWfjooWPGOmnhdA2TRVCZRYzM1k79cWWOEW7508C6051M51On8zOiF1On0DyZ
6eKKeJ6bz2ZeLgGhlHGIWFikmIWUJJ3PzeCEUVnU7rjKfDz2qSqzqR/omYeAR008k/tN5vpX
BL40nulaPQQszKQ0sGtCQ0Zz3/Y0NPCTiZ7qU26K0rOns0V4+nx5+dEnTtUnudRciHQWgwOV
hpO6Aufq0ym7I2Ab5PX4v5/H18cf3TX4f9AlL4p4mx1G0yOu8Ur64XJ+/xKdMJvMn59t7oHu
Yy2kCb20g31++Dj+nsKLx6eb9Hx+u/kHlIi5bVSNH1qNeikrkJ76vE7t+v3rx/v54/H8drz5
GGzx4kw4sk0dEOiRpwmFM1apOFfqqU7hmFjxsZnHYZmtXWmNtL10fV8VcAij5mG5C0Y6x24B
5NYniyEPXALlPo8JtH4cU+h6HWgZqTfHh++XZ41nKuj75aZ6uBxvsvPr6XK2rBZW8XhML1aB
GRurKhgZicZaSJfVZfP5cno6XX5oH7WvKPMDOhXFptZPzBsUr0ZWfLYuYE2WRNZ12KbmviPF
z6bekZIdT2Yj044fIf7QPCaBFXJB/9aX48PH57vMEP0Jg0iYErmc1losyWyWWeJNDaEFn22h
RcAMZrDNDnra4CTf48ybipln6KN0hDElNYR1pm7nXMqzacRdsg52yvSK06HWppSe/nq+kFMi
hDnNUmqfY9FX+OqBKZmxFHb9EWWSycqILwLzuCNgC1c8y403I1OtI0KXI8Ms8D3dhwIBOu+B
50D3NILnqa4ZwOepqVfQJcE22qQVnLklXJc+K2FistFI0wF28hVP/cXIMw4HJs4RtVkgPTJY
qa58SgeRDluMo7VfOfOsNMNVWY0mjtWpmjoMCqEdiavJiH473cPGM3YFdWGHsSOpcVHWgZE6
u4RG+yMTxhPP0/Np4bOpkuT1NghIMxJYO7t9wnVhowOZi7AHG4u7DnkwNoNrCNCMPsaqYazh
o07IE7zAzA0tDIJmjgIBN56QXmI7PvHmvqaN3Id5auba3scZHCP1e9d9OjU0sd/gC/hSCSxt
VB/+ej1epLKYEAa288VMl43xWZdbt6PFQmcfraI2Y+ucBJJqXYGwdYtsDdsP9YW1lYAvxnWR
xRjvTdfTZlkYTPyxbqwt91VRFc3mVfOuoUmlrJoCmyyczMeB0/TJprNODv/V5Wp++37825Di
sAnZrouXkLw+fj+9Dr4ZtVckeZgmeTdC14dTXjU0VVGr1GSiVBWa4eb3G5lF+vv59WifXvGC
qqp2ZU3dS5jcDR2inbcXSkJ9O1+A259I0+GJPyPzI3HPTA8Px5Dx3FSdCRClKsUTycjIEA8A
L7AOMRMdUJepLn3ZLYexuujhLLJy4Y16cbF8P36gUEMsumU5mo6ytb5OSt/UruCzvZYEbHCy
V5xuySorqGnHTmLTTH9TkgIpnHo8z7w0EBDXnYFEGu0BWODpareMT6b69iGfzY61MHt/AGhA
fch2uapeEVDyeCAxJieYjPXptCn90VR78VvJQBKZDgBm8QqouVcKgewVrZCHn54Hi2DST5Hz
36cXFOjRG/NJ5HB/JCaMECistANpEmFutaSOmz3pVLtCc25dicqr1chge/ywmJBMHCnnqpH/
HxtpTzsu1ceXNzwAm0tAX6kJZjiKq6wIi50re5o2j+s4o03nsvSwGE092utEIslIVXVWjszA
+gJCO7HVsK05ZCWB8mnL07ymQ0rus9iO56gEpjvNYA0e5H5qglidxWmzScMotO2eEB1WNIOS
OPctPOLRF21V0+aOiE9Lzp2BFnuCa1kRkEoEsiL1QIit71KzwwBoAzlLBlndivyUQ08bwGAG
ME2CwSSKSSjyj+bVH15HWLJw21gGycL8HPb9MKGjU2FwXpbCu0VY6+k6YG+Ja7zvr6siTc2Y
tRJXJ9fCMK0IS1u06uWff34IA6a+g637FBr9Gi0Ps2Zb5AxNLXzbIlgN5Oa+KQ+s8ed51mx4
YoYC1ZFYCP3pgEreALpipSJFxspyU+Rxk0XZdOo4uAsDodDhD5CFy+GAHN/RU1xskS9S1TL8
/hUzPmi92eVRXC2LdGjw1ntMqKmSR1VhxthvQc0ywWLgwzvuFpNlvo+SjExYxjRliwou07VW
ZBRoYrSt64LObO5uLu8Pj4KB2P3jtfY6PHTKTg3Ei10FYh5AeGF4Qfa4LjaWeejq8Ku6YiG9
I0tLpZrMZFOujeDTrcViiQPX2Jc+2jtNtq46Ym5LAjZFuKcclzuq1hbO4PQdEsTf8ciBy1i4
ORQ+gbUzJrZVlChRS95VWW9U8dpwsilWNFwAo1U66C/AYFdwDhii2WpHvkb7Pa7MxIvwKCJv
ojl0XkRkRUDShto2s21oCHk/ZZQKmxy1DARqGaPJlSb6YdR4GL5Dr83SDkhDO0c4I4GcsZ4t
fGOetWDujR2ejUjgCKuIKHTu1PhN1hSlxkGkd1CzT0AIWRqB0JPiYD4hP7EGi6dJZr4FAHkZ
H9ZVl6h2dUKfL7HX62aZIczJuLnDIPgyjpr+FdCgV48eGh9qX/pM6PZ3fuccQdsVBqabhQQY
XhN6aYHuNkEXOLYLHLvcMFoU6YWBuDgPq/vSkVRCUFjOIF+XkW8+2RRQXbYUo2ry6ARYu3DQ
oBRvlivKV7o7X82uaFC7lUiIR3CMi6uVe5D1vOjPt7uiNub6Qa+caCziq9p+o8gxZaSMpOd4
yWokghiHUambFZPCTlfiesX9xhH0rAiHSCWj1JXVQwWhp1uHha8FshoynrU97YbE1S5vOMuB
TljC062U1K7AfxIre082qIpXmDQ6WVFLIE9SOQTarPOtKSQAOAcoMtuVSYHJQVJIak2aRHIU
HZ9NFXN1yQkiYfnATItV+bbbDapffIY05NoW0D/B3EMkpA08byb6TNJY+F9Y/vFouo5WTPcG
Bd33n3Wbd+lV+7tzCSKN0wRGhUXta2HOVwaLXADQeVO4RwjV28olj5UV4Ns37liVu3opKVxT
/naV1c3e0DBIEHVwFkWFtfbNFAQNW0qmmeGzXV2suMkSJMyc+ehsZ7KuEEDUBQOsu5TdW8Q9
FBPcJJh5toGfq+/3lCy9YyKDbJoWd5rQ1pOi+H8gMTnOnoMZi1RDH2A6iA47WpvFMG5FacyK
1uH/8dlI/MsV1zIBYhcxxkIhNsBfirXLdVFRuSaEwhdLXM9wwjF9jwUSV9bQyCqMfofDzJdo
HwmpZiDUgBy1gFOh9QW/FmnicFb+Bm+QDGUXrWQpUj9b8C/Aqr7kNV3vytptMw5vWK3YSyJq
PAChgvNiFnIRuGMczLpdv17ZhQmQa3wFsrrrVIEfx8+n880/qYaL8F2GCggBW9O+WsBQxaAv
SwHElmL6psSw6RSocJOkURVrB5JtXOV6VZbyqc5Ks48CcFUgkRSKpfWKvd0atrclOdZwRl5F
TVjB+VTrYZdiZp2sWV4nsmc9Xv7YbsOrZM8qQ+jIEi7jA8moB+Y+UmGyAJcgyCKr9BYgv6OC
rewmCNZCg6CrnA9iu2wGDdBRMu8SKWDFgzkoQE45ZzBY9ushbB+OlvDbHeMbB3J/cI1hluQw
VazdO7vS4dJV0m1+GFsdANB00IcWOBiEXvon6lerRDg/a6tGPONGkMLcFNzOvIdoCdJvxTXk
WEf2nLxDb8KOwNmoZj72rxXzjdfRL5RypQS7l2r/cxemd1tR0z28WqhNr/f0540YNOC37/85
/zYgspRjLbz1X7VbMNSHmXhYJrDB9Gvjnu/pCbWzZqx8bu4qIxniTjuP9ewkrjGegr51UXxF
D1MHD/0onD7O8/lk8bv3m1Zmyjtu1owD+urDIJr9EtGMdugwiOakgZBFYpi7WDjq9sAimblf
n/68dtNC18KRuWxMksD8EhpmfKXgXxm6KeVYZJEsnHUsAtoX1ST6+edZBO7PsxhTfmxmE3XL
E8SAnIcztJk7xs3zTftSG0lfzyGVCOPnaI+q1aMbM+iiQlB36Dp+8I0VwjVvFX5KN2RGgxc0
2HQVNDCUybdBMLFf3RbJvKFOUx1yZ7+CQSKBsTLqQK3wYZzWeh6JHg4n3p1uztBhqoLVRkbC
DnNfJWlq3mkp3JrFgHFODkFSxTEdqkZRJNBaK1fFkCbfJTQnM4YkuToq9a7aJnxjdnFXrwxD
xCg1jnXSA+X4+PmO1gSDkJjb+F7jCvg0OKhj+mo448HII74CidSUI9v3KAEfc3LGkVVJq1Hp
4V1R8NxEm6aAGoUZkkO8bPVZGPuSi1vUukpCiu0Pda4KYhxkVHktG9V6jrtHzZZpjCsgVaZR
w5YoBnxYVdQNR0cH46pnwcU7vg2rojiHwdiJmJzlfYMhHkPTzW5AdAUF59E0XVqxCoZU2Dde
Msetc1EJTZW886N6hErqUJSGWc5lknNtSCm07P1vXz7+PL1++fw4vr+cn46/Px+/vx3ffyMG
lcPSzHd0RJOeKHOF3OpI6iIr7qkLno6ClSWDhlbEnFAoEYkM40dmzZ6lu/gPj6ipI964stAN
Sd2Hj442LVhUJtTG0JHcMztG8Nqc+B0InZhzBjtJTCEZv8+yGNeTtWh7Em1RV9bpVCtnFzm2
u4SM7BvvtctreGhQKQDi726n56EXiCiSKgPzNgswOEzNYTKipAuln6E+eb9z2kSWe5SD7I/f
Ht7eHmA2v3dHiQNOGFQsa8oFsekVSqsTvv94u5xvHs/vx5vz+41cBVpIIUEMW8GaGT6TOtgf
wmMWkcAh6TLdhkm50RetjRm+hNOaBA5Jq3xNwUhC7TxoNd3ZEuZq/bYsh9Rb/dJWlYBsjmgO
N9TtLTSibBpaXBxGw0EBVs7WRPNa+LBeM1WaSd1ECRdMSNxaDajWK8+fZ7t0gMh3KQ0cVo/c
63YX7+IBRvxExJhkEuMeGLarN3EeEq/acahMLE+y4Sxew57btHzkMO/8ldnn5RlNbh8fLsen
m/j1EZcVxtD99+nyfMM+Ps6PJ4GKHi4Pg+UVhtmwIgIWbhj8+aOySO/tRCTdKlsnmGmC3PMs
mvSnRP6EOsVZxcA/PE8azmP/SoNSjexX6v1Fctg6d3w6pg24LJpfK8yzwiQ7iX69uIbtD9Rh
XE20+DbZE0MXw8dOcjNjuIz3Jdw3UWz5GM6lJTXTwxV1qa6Q9XDJh8QCj/XwRS0sFYplu7oS
WuGu70CUDVz8rtJyKzx8PLs6aCQmUJs/BTzIsTCB+6z31Y1Ofx0/LsMaqjDwyVEUCGlfdmU4
kYrYvwAKA5NSOyQga28UJSs3xvXqmmSG2g5BI0Q0T91DXs3ZiIINy8kSmJxxir/EQFVZZO1B
Q7zu9tiDYeVT4MAfUvMN84i6EQxLk8dk9oOOBrcYQUUXMfH8YSFkVRltZWrW9FMirC+7skZl
Oc62Xn2R7GJ2ZXjqdSWjx1vMuZx41BYvpmAjpmcDW/ZgeUhB8/T2bEarVPv9cDMAmAwrOAQ7
pi2iVNUUE8p3y4TSDCh8FQ7LBMH5bpUQi0shiKTPNoVs7pW9gmEs2IQN132LcHW4w0s2CQzm
1yl9NymG67Ziimi44TYgoGbtg00TSGhlrk6gleEerYiYKwALmjiKXX1aid8hv9mwb8QhhbOU
M2KvUZKXE+GqnscxUUtclTIU5GBZSowQLX46HIr46vD/X2NHthw3jvsV1zztVu2m4okrk3nw
gw6qW9O6TElp2y+qJNvrcc3YSfmomvn7BUBKAklQ3oeU0wTEmwAI4mBIUo0hXdhocFDSpWQ4
trjXNz4zCLGdNYMjM+iCpw9HnhHHw3FmYg6G/APd3JzAFsvWodfDUKa5bYOyTxchPaxupQmn
x9H4ZOCj59w5/eXxP98fzprXh6+npzkch9RTTIQ8ZZ10mc11upvzywgQUTAyEEluIIgkDyIg
KPytHAalFfqUdOGi4FVyktQGM0DuwgLtY3frBUN7CWc8MGoc4gtBTKtsilaoYn8UvnN1UtNw
03HTjxXYjWllcfoxddFQLTRlCrWaZYYv112inRt3d8j6X6zNRQyK11asnncctWkYaF8ZY0Iy
/cQWSiFNd4YxLf5Ld9VnSvH+fH/3aNzgvv1++vbH/eMdc+cwiTdCbVsU3l/+xNWoBq6uB3SM
WEceUzW2TZ7oQLsn6RxNxWlF8dX7Idq1FYOWnOzEflpUZGnZYHtko1hcLv6RX5++PP199vT9
9eX+kV9CML3Xx6m7YhbC5aAVpoNiy2yeDbj/1ewU1Q+6yVA5rtvaU7ZwlEo1EWijhmkcSv6G
PoOKsskxCwWMFDoVwjGZlmeQP4O8YjJkQoPHrO6us/2OjFO1KjwMNHUqUGawXhKle1izKcuA
QjhF5x9djPDaA50Zxsn96oMnduJVqldVEQ0kblHgHKr0JqYMYSgxnkgoiT56G9aBm7nmH0WY
duaxi0xyHq7KdLl/rpjsvfn62iWbOmnytmYTsoI8+xtWil5BfvktBm4BgujyRCoNOKVsPYSl
Us2eORErFfvBzYK8Ygn/+haL/d9WO+eWkUdfF+KWCRc8bGHC8zKsZcN+rNMAgKl5wnrT7De+
5LY0onZcxzbtbrmDKAM4oolTzvo/H2rhAU+DODr1bdWiIPYgleKz6Cf5A2yQR4jr+zYrgdJ9
VjAv2klUmJDrD3ckNEVohTw5pAbLnUSPDbVocioCGdzxl0qCUeLIpKPHPd/4krJe5rmeBpAB
HSKIEGtM7Vjn98eyHSq2oP2uMjPHDiD5JQgPVvkVJ/FVm7q/hCPZVK7nRFbd4ssuK2h17upU
YDjyC5a+QnWOpImqu9KJzSR0HeAFTz2OPqTo+wfchy3kmPU/I0Ny+Sq6xraVN/W4kCaVQtkI
oA4TRDrS4AIajePYVFRjv/dsyGGRs0OuupZ1tYeFdfYQMO9aTQ2cS2DDjpUb9VxkFcTnD6en
x9OfZ79/mYUeKv3xdP/48oeJePBwer4LrRVIWjhMAzTLV44M9jBBUwUCQbU8J/0SxbgaSzVc
XizLZsW+oIYLZubQtsPcfq6qJJJY6aZJaiABcopZvBTd/3n698v9gxX5nmm030z5UzhgqmeW
loMy9FMYM+W8zjBoD5KBzKYZUn5MdCGz4V2eol9Y2UVcpVRDr1L1iNoLPKqScTwmeyLvk8tP
57/+7G6RDmgZRjGo5fo13COoBcCSDCYbkJRy/Dxt3YhZZLfRHhslGSaZsXMDkD20g7H4aQz+
PPfGZwltw+tkyPaO8O/BaJzoUSe58tCJQuOBMg8MSWyfWnSwPqrkQGkBMJ+zQGISjFkAIjbP
BMsKl+dpszqX7/86l7BMvAJ/sGjjrxbP0/r08B2E8fz09fXuzrmc0ATD1ULB/VgaCcKJlkt2
sXTBasu+bRzq5pZPTWt99aIYt0q3ctPohbex73ULK5DEs+EYLOPeIu9MuzWqRNIck1mPnU8g
vhWsZ9jNGbJVPW2YESnTBtZn6WgsJN7imGzVYS8sIHpKTPINIBSco9tC8lmDm8ektKZwUzhd
q2zDZoEGgp5NhXGiksY5g2PzSSM6JD038Jt/rvZjWGCuvEI9BtqO6Dqnws9KcoQVZ9pc/BFr
a64PWcsS+WaZ4cxJA8XGL3LiErCLjb9mekr2dxp3uWschyhlA3RzrEmxWMnvyHZS9xgJxWdA
dJTPMJbs6w/DevZfHu/cZH1tMeCtc+yWmPzimujcYhkhDVkyLGTtZOhiWFJdrMsInPYjnOoh
6eVDcbwC8gpENo/kYeyAWmRAfKcW5EyR7jC4NeJ67wJxELA/1uIeBpf7/s+m0OXJVBb42xlM
c45Vk4dM0ls0bP+gVOcpXoxqBJ+eF1J89o/nH/eP+Bz9/K+zh9eX018n+M/p5du7d+/+ySKP
oVMs1U0JGG2CL4dVajh5mz6wVAcObYuioipiUNdqk1zapGobKG9XcjwaJCC+7RENCjdwqecx
NmRQMGEi8sQKZj2kTHZajFbUyrJy56gp2N4o68fumWvX59vJQiwNeYATC9f9Hb8k4daZfarn
alDGgFGB/IOPHLDBjCZC4DGGhUUHD/8+YwQcrkGzA/d8Oi1rLQmwtcTyFjLAmWFsLW8GEi0Q
t9KLTWu09tnoyCKrnJiNlHUsztERI7Y6LlI0uA1C1dWWs5jdoFdWjtOBBOdhGpd14FYYakVa
JZHDllyB0NVRNrw01hYgDm3VKFulq8EEgPl/P3jbxx81WU12Y7KJzjI8vhmsu5xRqKXHnVkU
xxoaSFYxNkb43obudNLtZZz5rlZ4B0wATsdy2OM1vffbMeA6a0dgyTjPOvdQ0PMWjythgvTa
DEEl+JJz4xVmtjZT9Qo0DWZuXkm6bfs5ySiUPeE7cjb8GXDT9TCmLJyaTitVdwMqOcQeB/XN
Wi+/IosYLqk/39GVfGMRWU9N1H5OsaAUJJnCfiQ/ehB3DhHmVTjChl0bXTe63almWWViZr6a
+ibp+n0rnW1TSQqkG9YAmHCBgaOcVzUHpuAgRITTGSFpGozeisnp6Es5SfCMDBtyRguXLITY
zoSzYYSbjVlOqwOFkpqDg0gXeehVqtZFnL/siqBMxoyd5LcP8bLF7MRof5sGRzvYB0MCfKWL
sxUMIRUb+TzhrmYWn8xskFxvccxpnFKgo/s60c69ktGAFUFmZQzzze6zU0ZqrzimmQ8FkjWp
iXE6N4Zs1jDIjonyaJmrqd1n5fmHXy9If4z3T5mRotoZxJKYG7uGpUMVJfaZ5tm8169i2yGP
BLSkKx89XvZeSlwXJQpNV54G4t6G1JEOMMMbqXkxxAvO6TYayD8gbcThRtD9eLH9fEdD2qvr
fIwEVDVjNtpdY40dIYB0YwbEQQxYT+Dl6ZcXLipmtyooBjGkkn3sCAM9ReJQSb3gYmh83SNf
r42Zibn1ELTMJa2D2UiHmgn71F0UfMiTyy0HoseFN3pahsHLJ5p/WJS6hquB8ubTxv148Gcr
UGG7C0zuW2RTsAbHULX7pEJKsmYiXRoQR4wA7vvHJZgvR+JDTKezy51Agfh7S8sypqisIdVg
eUuMjEmTqacQCpHF5TNoSVXuGlStbGyy9A0dEHA6fG8pe7p3HrkNmvFStBhrMcWgFiHupTCU
o9Dgyt7f6HWC561Xia6scYWbs5iVT3m6k0+5g6UKOaKvg4Spfq9z0fgcu9kNSFGCxGwrSG6h
KKduN0w+gnvfYsGX8naE8xvElrDKlSqlh67Yblz4tKQmwZ7isy+GepUo6LqYlknedGp6f/3p
/apL8mGwN85lmDmcLB2wA0VB8PIDYxAzFJvb6hM1+bfwYUgMQhxf/Fym1t77eBe5b6S96tLj
GXpPyuwi64T4Y+sNFghLjeeXVLQxPZVpia5SW0qIutxaQLPO9BjTOZJCNwINIS4aFTbG5mhi
AbfaeUdeys1bGIlwrrD8P25zRFxaCAIA

--vkogqOf2sHV7VnPd--
