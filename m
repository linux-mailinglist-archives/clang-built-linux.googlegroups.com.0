Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBPX4VWBQMGQE6WC7QDQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x837.google.com (mail-qt1-x837.google.com [IPv6:2607:f8b0:4864:20::837])
	by mail.lfdr.de (Postfix) with ESMTPS id D192535481B
	for <lists+clang-built-linux@lfdr.de>; Mon,  5 Apr 2021 23:16:47 +0200 (CEST)
Received: by mail-qt1-x837.google.com with SMTP id b18sf9120480qte.21
        for <lists+clang-built-linux@lfdr.de>; Mon, 05 Apr 2021 14:16:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617657407; cv=pass;
        d=google.com; s=arc-20160816;
        b=Q6VRmSbKWXH7WwYR/WlH7+BShyglo7gel6iEm1z4xwZTMXT82ZAMj8Jq7dX8/X3IBb
         9ItnKlrsUBXDbx4hjg+YnrPeKsyPab9XvPIYm/Msvtez96E5tDkReQhNExYfqkGtr01b
         lPqcgWhbJin4HVwSSWrHeGU87G6lysJcs3c0S9W2IoF9gRl5Y/qRj2fRkVBC+x10OKST
         IVQDrZNTvCyjwYDXZ1ac4+zi8l/YyjZQOiuU5DNHu8F0LvEEwUKY4qnOGXxdjSLuxMpr
         NyW2ifj7VkXIxc25t1FGN8ZVt52m25CQnY+gkvxAPOLFbG0iWNK7q/23usWbkoD5pTxE
         5htQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=n2oBH1yMmHAUmcfaAXIUo8sj/phfjEI56yoVg8ITcto=;
        b=VEoEJP3Wu7JRmVnTG006fzmKT2tLe2Pp49/NM1WpBdH+hUbpEINPDkHuDe/jHM0E/J
         Wos951w7uDD8viGaZqyOVb3vcFgjYZiZF2M5lMdOn1NBpV/eX15bF0nJsaKuzL0WrvgY
         nztanIildr/NmRpOwhXKfkef9J9WYKKvH0wD6CvduMzrhejyuSNWjC7464nwWqbR1Q7w
         LblfOoOVIopYnA62DYOsfSlNIio9ATCuxTxXqcsLd34s5mx2yLWca+gJtPCl2jW8edIp
         ZD0C6XbNCHHNMNIajFGGdknF66p9DjoSKY6gMS8LvocI5KHoiG6lw7HGMQc0/mODo9lz
         orXw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=n2oBH1yMmHAUmcfaAXIUo8sj/phfjEI56yoVg8ITcto=;
        b=SOxG+Wg+WutYaX45H+uk4IAdLMmp28V2w5zDmVjq0NOrqgSarYYmyydaLQSggN7TPU
         G4rGszictt8evCjWNDlZhuExz3DEiVqggt90jc4UyTZS8D1GdR9qAbzqGTdc+6EY8oX0
         vA+1kU6M3ZEhtR/dvRHfky+QOKBj+d7YoVVmAPbJ0xr8iKudAKC7Fe0WhtadjF3kCWaM
         1nCKYF1W0G8o7ant5bROMxkCXyZ59F1QHLMjY/ypYcvlRo8hdeoTHPkTZ/KHp8wFqs8A
         gjsjJ2kvMNWOvNO23Qu8uBNL/OEg9AyGYIiCzVAh1EWV5e4aA2uPd9fUNKy2PGRJUiuG
         L8vQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=n2oBH1yMmHAUmcfaAXIUo8sj/phfjEI56yoVg8ITcto=;
        b=DlrZZRhD9vNEdUNaLJbo/dBdKC2pBjcDfUGelYXeHDWaSUwCP5Sgni2E74bIeEzQ7x
         tmxBc0p3VTg/6YqvqLeAkShL6jo/xTIuvgT3GyfOiBYPJdlZQtjktccebFxPwr3LKzYl
         TLqCgz8jppDETnPForrb2t/dCOOL+sFWGXGFaSsmFI9M6fV49MIWuuV0YJBYG2VFQZym
         M8WSAdlhdZwTZnU+3lrpgBdM5BUbxD7NJc4yVw6AVMkWH0CuI5KNtWdl0yH7q2u+5A2g
         K8P1ozM8S7Snvr85P2R3EgCNq8i/+Qr9pH/R5Ev4jg2Q5AcPl2yE6c28XfPg6dQbMLH+
         lg0g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531WnHv7KJKfN9a/Lc1sqDTWq6K5gdV0erbnLbRlAzpqDxI+pWDt
	Y0qZefXWjzxPi4gnMXgQf64=
X-Google-Smtp-Source: ABdhPJyOD1RIebpmw+/bZ7ejTQ+CM2JUxUJ58nmQNMkIhscDElXteccx0Sw0Qj5ox0xE2K5plvFBmg==
X-Received: by 2002:ae9:e513:: with SMTP id w19mr27479784qkf.231.1617657406769;
        Mon, 05 Apr 2021 14:16:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:622a:254:: with SMTP id c20ls6874406qtx.9.gmail; Mon, 05
 Apr 2021 14:16:46 -0700 (PDT)
X-Received: by 2002:ac8:703:: with SMTP id g3mr9669679qth.167.1617657406141;
        Mon, 05 Apr 2021 14:16:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617657406; cv=none;
        d=google.com; s=arc-20160816;
        b=aGWFi9k9BaxFhLKtPPyeYFClfWf5eFxlSCIIkvrDfb6J2wPzHuecS9lRlQNZHmouRA
         gihdkZMQVHouiQ9umM29fAx2mLfBIjtg/RE1zqFUNB3ly8nMuvUUuuptjLRkmP3sTcYT
         4taXEWRpcPPNwa6NzPf/TpOMaS6zOmW9iY6bTVQOCZwCirDzNmm1ZPFo5dkVilUGGgd4
         ZHkSzY2UyLT7a4t4nhHprPunyO0WwMMyKyFhNiiqFzLHmG1WE2mxFjw0bo5q7PzR1ZWq
         DN/9Jjt0jyr7Eq+rNCLF/DXTjAA8ytB+DKYhJXhX2WpKTI4W88Rdo64Kx3mVrG4nNX95
         EsLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=bYS5BHFX0Qyc0nrIZRsN6RnLhmX/FPLbVq9OONqHcAw=;
        b=S9rSEDfqKzmTK3tXTrb4yGwOVwjLPtPn13ZWOI9w3pFG/xjOEGER4ab79WsIhSrXJd
         EQ8TiUxvy0SKLjP5gYBfMcWFCSw0Y9JHnUXs30OOjtc06V6efleZ9c2enQFEChHp6Ype
         cnU+8FjrjMa5PccGSftnDURhtmW8EGzPkP8l+Z8Bz/q3BdVKsGVXDCIF7AyCpvh4J26W
         x4qolpyfofgcgRls7M4s0IMlNCIaJ34KUaMaZGrSUcQ+AvXePaO5cmVokgm6j2lSOKNS
         kMUqCr6OOs/AY9fEkeX3N0FruTGPwFtPRGJ4ddvSZx++bJ14tgRDRzjjJSQkskL/Nnnn
         8KYw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga01.intel.com (mga01.intel.com. [192.55.52.88])
        by gmr-mx.google.com with ESMTPS id a15si2911125qtn.4.2021.04.05.14.16.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Apr 2021 14:16:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) client-ip=192.55.52.88;
IronPort-SDR: DF/cFxXmzq3FQg6MB3JTMtaFpZQj3zcC5bDYt6AgOyQe2FyedLGCEABY1f31dm/Q5TR3XHJ7d/
 HYdTky7fOEcQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9945"; a="213274725"
X-IronPort-AV: E=Sophos;i="5.81,307,1610438400"; 
   d="gz'50?scan'50,208,50";a="213274725"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Apr 2021 14:16:44 -0700
IronPort-SDR: SsiLXQH2/FziUPABAA8vDd9iEe0+q5wi6Y30LQ1BSJsrk75PgwZeLggWuuZIIfkb0jBDnYBZe9
 tPyvU34HkOtQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,307,1610438400"; 
   d="gz'50?scan'50,208,50";a="597693868"
Received: from lkp-server01.sh.intel.com (HELO 69d8fcc516b7) ([10.239.97.150])
  by orsmga005.jf.intel.com with ESMTP; 05 Apr 2021 14:16:41 -0700
Received: from kbuild by 69d8fcc516b7 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lTWaO-000AiV-TI; Mon, 05 Apr 2021 21:16:40 +0000
Date: Tue, 6 Apr 2021 05:16:35 +0800
From: kernel test robot <lkp@intel.com>
To: Aditya Srivastava <yashsri421@gmail.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-doc@vger.kernel.org, Jonathan Corbet <corbet@lwn.net>
Subject: [lwn:docs-next 80/97] drivers/hid/hid-logitech-hidpp.c:265: warning:
 This comment starts with '/**', but isn't a kernel-doc comment. Refer
 Documentation/doc-guide/kernel-doc.rst
Message-ID: <202104060531.2vxbdXsx-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="J2SCkAp4GZ/dPZZf"
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


--J2SCkAp4GZ/dPZZf
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   git://git.lwn.net/linux-2.6 docs-next
head:   a4f413348f268c4313f58ca383173ee5986d968a
commit: 3e58e839150db0857dfcb3a0bb3d4af4c6ac1abf [80/97] scripts: kernel-doc: add warning for comment not following kernel-doc syntax
config: x86_64-randconfig-a005-20210405 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 2760a808b9916a2839513b7fd7314a464f52481e)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        git remote add lwn git://git.lwn.net/linux-2.6
        git fetch --no-tags lwn docs-next
        git checkout 3e58e839150db0857dfcb3a0bb3d4af4c6ac1abf
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/hid/hid-logitech-hidpp.c:265: warning: This comment starts with '/**', but isn't a kernel-doc comment. Refer Documentation/doc-guide/kernel-doc.rst
    * hidpp_send_message_sync() returns 0 in case of success, and something else
   drivers/hid/hid-logitech-hidpp.c:427: warning: This comment starts with '/**', but isn't a kernel-doc comment. Refer Documentation/doc-guide/kernel-doc.rst
    * hidpp_prefix_name() prefixes the current given name with "Logitech ".
   drivers/hid/hid-logitech-hidpp.c:470: warning: Function parameter or member 'input_dev' not described in 'hidpp_scroll_counter_handle_scroll'
   drivers/hid/hid-logitech-hidpp.c:1894: warning: Function parameter or member 'hidpp' not described in 'hidpp_touchpad_fw_items_set'
   drivers/hid/hid-logitech-hidpp.c:1894: warning: Function parameter or member 'feature_index' not described in 'hidpp_touchpad_fw_items_set'
   drivers/hid/hid-logitech-hidpp.c:1894: warning: Function parameter or member 'items' not described in 'hidpp_touchpad_fw_items_set'
   drivers/hid/hid-logitech-hidpp.c:1894: warning: expecting prototype for send a set state command to the device by reading the current items(). Prototype was for hidpp_touchpad_fw_items_set() instead
--
>> drivers/ipack/carriers/tpci200.c:3: warning: This comment starts with '/**', but isn't a kernel-doc comment. Refer Documentation/doc-guide/kernel-doc.rst
    * tpci200.c
--
>> drivers/iio/light/stk3310.c:3: warning: This comment starts with '/**', but isn't a kernel-doc comment. Refer Documentation/doc-guide/kernel-doc.rst
    * Sensortek STK3310/STK3311 Ambient Light and Proximity Sensor
--
>> drivers/phy/qualcomm/phy-qcom-usb-hs.c:3: warning: This comment starts with '/**', but isn't a kernel-doc comment. Refer Documentation/doc-guide/kernel-doc.rst
    * Copyright (C) 2016 Linaro Ltd
--
   drivers/scsi/megaraid/megaraid_sas_base.c:483: warning: expecting prototype for megasas_clear_interrupt_xscale(). Prototype was for megasas_clear_intr_xscale() instead
   drivers/scsi/megaraid/megaraid_sas_base.c:666: warning: expecting prototype for megasas_clear_interrupt_ppc(). Prototype was for megasas_clear_intr_ppc() instead
   drivers/scsi/megaraid/megaraid_sas_base.c:795: warning: expecting prototype for megasas_clear_interrupt_skinny(). Prototype was for megasas_clear_intr_skinny() instead
   drivers/scsi/megaraid/megaraid_sas_base.c:943: warning: expecting prototype for megasas_clear_interrupt_gen2(). Prototype was for megasas_clear_intr_gen2() instead
>> drivers/scsi/megaraid/megaraid_sas_base.c:4887: warning: This comment starts with '/**', but isn't a kernel-doc comment. Refer Documentation/doc-guide/kernel-doc.rst
    * dcmd.opcode            - MR_DCMD_CTRL_DEVICE_LIST_GET
   drivers/scsi/megaraid/megaraid_sas_base.c:5173: warning: expecting prototype for megasas_get_controller_info(). Prototype was for megasas_get_ctrl_info() instead
--
>> sound/pci/ctxfi/ctresource.c:3: warning: This comment starts with '/**', but isn't a kernel-doc comment. Refer Documentation/doc-guide/kernel-doc.rst
    * Copyright (C) 2008, Creative Technology Ltd. All Rights Reserved.
--
>> sound/pci/ctxfi/ctamixer.c:3: warning: This comment starts with '/**', but isn't a kernel-doc comment. Refer Documentation/doc-guide/kernel-doc.rst
    * Copyright (C) 2008, Creative Technology Ltd. All Rights Reserved.
--
>> sound/pci/ctxfi/ctvmem.c:3: warning: This comment starts with '/**', but isn't a kernel-doc comment. Refer Documentation/doc-guide/kernel-doc.rst
    * Copyright (C) 2008, Creative Technology Ltd. All Rights Reserved.
--
>> sound/pci/ctxfi/ctdaio.c:3: warning: This comment starts with '/**', but isn't a kernel-doc comment. Refer Documentation/doc-guide/kernel-doc.rst
    * Copyright (C) 2008, Creative Technology Ltd. All Rights Reserved.
--
>> sound/pci/ctxfi/ctsrc.c:3: warning: This comment starts with '/**', but isn't a kernel-doc comment. Refer Documentation/doc-guide/kernel-doc.rst
    * Copyright (C) 2008, Creative Technology Ltd. All Rights Reserved.
--
>> sound/pci/ctxfi/ctatc.c:3: warning: This comment starts with '/**', but isn't a kernel-doc comment. Refer Documentation/doc-guide/kernel-doc.rst
    * Copyright (C) 2008, Creative Technology Ltd. All Rights Reserved.


vim +265 drivers/hid/hid-logitech-hidpp.c

2f31c52529103d Benjamin Tissoires 2014-09-30  263  
8c9952b26b2be2 Benjamin Tissoires 2014-11-03  264  /**
8c9952b26b2be2 Benjamin Tissoires 2014-11-03 @265   * hidpp_send_message_sync() returns 0 in case of success, and something else
8c9952b26b2be2 Benjamin Tissoires 2014-11-03  266   * in case of a failure.
8c9952b26b2be2 Benjamin Tissoires 2014-11-03  267   * - If ' something else' is positive, that means that an error has been raised
8c9952b26b2be2 Benjamin Tissoires 2014-11-03  268   *   by the protocol itself.
8c9952b26b2be2 Benjamin Tissoires 2014-11-03  269   * - If ' something else' is negative, that means that we had a classic error
8c9952b26b2be2 Benjamin Tissoires 2014-11-03  270   *   (-ENOMEM, -EPIPE, etc...)
8c9952b26b2be2 Benjamin Tissoires 2014-11-03  271   */
2f31c52529103d Benjamin Tissoires 2014-09-30  272  static int hidpp_send_message_sync(struct hidpp_device *hidpp,
2f31c52529103d Benjamin Tissoires 2014-09-30  273  	struct hidpp_report *message,
2f31c52529103d Benjamin Tissoires 2014-09-30  274  	struct hidpp_report *response)
2f31c52529103d Benjamin Tissoires 2014-09-30  275  {
2f31c52529103d Benjamin Tissoires 2014-09-30  276  	int ret;
2f31c52529103d Benjamin Tissoires 2014-09-30  277  
2f31c52529103d Benjamin Tissoires 2014-09-30  278  	mutex_lock(&hidpp->send_mutex);
2f31c52529103d Benjamin Tissoires 2014-09-30  279  
2f31c52529103d Benjamin Tissoires 2014-09-30  280  	hidpp->send_receive_buf = response;
2f31c52529103d Benjamin Tissoires 2014-09-30  281  	hidpp->answer_available = false;
2f31c52529103d Benjamin Tissoires 2014-09-30  282  
2f31c52529103d Benjamin Tissoires 2014-09-30  283  	/*
2f31c52529103d Benjamin Tissoires 2014-09-30  284  	 * So that we can later validate the answer when it arrives
2f31c52529103d Benjamin Tissoires 2014-09-30  285  	 * in hidpp_raw_event
2f31c52529103d Benjamin Tissoires 2014-09-30  286  	 */
2f31c52529103d Benjamin Tissoires 2014-09-30  287  	*response = *message;
2f31c52529103d Benjamin Tissoires 2014-09-30  288  
2f31c52529103d Benjamin Tissoires 2014-09-30  289  	ret = __hidpp_send_report(hidpp->hid_dev, message);
2f31c52529103d Benjamin Tissoires 2014-09-30  290  
2f31c52529103d Benjamin Tissoires 2014-09-30  291  	if (ret) {
2f31c52529103d Benjamin Tissoires 2014-09-30  292  		dbg_hid("__hidpp_send_report returned err: %d\n", ret);
2f31c52529103d Benjamin Tissoires 2014-09-30  293  		memset(response, 0, sizeof(struct hidpp_report));
2f31c52529103d Benjamin Tissoires 2014-09-30  294  		goto exit;
2f31c52529103d Benjamin Tissoires 2014-09-30  295  	}
2f31c52529103d Benjamin Tissoires 2014-09-30  296  
2f31c52529103d Benjamin Tissoires 2014-09-30  297  	if (!wait_event_timeout(hidpp->wait, hidpp->answer_available,
2f31c52529103d Benjamin Tissoires 2014-09-30  298  				5*HZ)) {
2f31c52529103d Benjamin Tissoires 2014-09-30  299  		dbg_hid("%s:timeout waiting for response\n", __func__);
2f31c52529103d Benjamin Tissoires 2014-09-30  300  		memset(response, 0, sizeof(struct hidpp_report));
2f31c52529103d Benjamin Tissoires 2014-09-30  301  		ret = -ETIMEDOUT;
2f31c52529103d Benjamin Tissoires 2014-09-30  302  	}
2f31c52529103d Benjamin Tissoires 2014-09-30  303  
2f31c52529103d Benjamin Tissoires 2014-09-30  304  	if (response->report_id == REPORT_ID_HIDPP_SHORT &&
f677bb150c2f7b Peter Wu           2014-12-16  305  	    response->rap.sub_id == HIDPP_ERROR) {
f677bb150c2f7b Peter Wu           2014-12-16  306  		ret = response->rap.params[1];
f677bb150c2f7b Peter Wu           2014-12-16  307  		dbg_hid("%s:got hidpp error %02X\n", __func__, ret);
f677bb150c2f7b Peter Wu           2014-12-16  308  		goto exit;
f677bb150c2f7b Peter Wu           2014-12-16  309  	}
f677bb150c2f7b Peter Wu           2014-12-16  310  
a5ce8f5b12966d Simon Wood         2015-11-19  311  	if ((response->report_id == REPORT_ID_HIDPP_LONG ||
a5ce8f5b12966d Simon Wood         2015-11-19  312  			response->report_id == REPORT_ID_HIDPP_VERY_LONG) &&
f677bb150c2f7b Peter Wu           2014-12-16  313  			response->fap.feature_index == HIDPP20_ERROR) {
2f31c52529103d Benjamin Tissoires 2014-09-30  314  		ret = response->fap.params[1];
f677bb150c2f7b Peter Wu           2014-12-16  315  		dbg_hid("%s:got hidpp 2.0 error %02X\n", __func__, ret);
2f31c52529103d Benjamin Tissoires 2014-09-30  316  		goto exit;
2f31c52529103d Benjamin Tissoires 2014-09-30  317  	}
2f31c52529103d Benjamin Tissoires 2014-09-30  318  
2f31c52529103d Benjamin Tissoires 2014-09-30  319  exit:
2f31c52529103d Benjamin Tissoires 2014-09-30  320  	mutex_unlock(&hidpp->send_mutex);
2f31c52529103d Benjamin Tissoires 2014-09-30  321  	return ret;
2f31c52529103d Benjamin Tissoires 2014-09-30  322  

:::::: The code at line 265 was first introduced by commit
:::::: 8c9952b26b2be25311706082598e5e176eb92748 HID: logitech-hidpp: fix negated returns

:::::: TO: Benjamin Tissoires <benjamin.tissoires@redhat.com>
:::::: CC: Jiri Kosina <jkosina@suse.cz>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202104060531.2vxbdXsx-lkp%40intel.com.

--J2SCkAp4GZ/dPZZf
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
OweMToOTXET4CvwPRPYF8vYpAgA=

--J2SCkAp4GZ/dPZZf--
