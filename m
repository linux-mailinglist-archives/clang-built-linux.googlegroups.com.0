Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBF4OTD7QKGQEEE3Y5ZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1039.google.com (mail-pj1-x1039.google.com [IPv6:2607:f8b0:4864:20::1039])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C95B2E2BD7
	for <lists+clang-built-linux@lfdr.de>; Fri, 25 Dec 2020 16:36:56 +0100 (CET)
Received: by mail-pj1-x1039.google.com with SMTP id bj5sf2649734pjb.9
        for <lists+clang-built-linux@lfdr.de>; Fri, 25 Dec 2020 07:36:56 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608910615; cv=pass;
        d=google.com; s=arc-20160816;
        b=F3PS8s4eZYm4bc8ISeAih6N/5B3/hLdZsZPXBFKSupBj/6eTkptNJcu+olRQrSYORD
         4ZUEnL3d/kBj4m2CeB90TtnsySaH/NUntW9dYDGhUOip2vAxjc7lSkUIe3BVEuYQJdve
         0dt5QSbhB8wRwE6P1miFxF4G8/ucg6HkdoHe7tlhADwh/7mIPr3i8c7YFhof3RhXWvi2
         hgdOAGraWgLdKkdEZYkmqkpcUJjnm0yVaXtR1Xi7MoKBNYnJwGfoSQyWPdrljkw6mX4x
         Sj13d49Xxov7T3uct/a1GlxM1S61ILMNuX0/Tb+A7OBShIV946Q7mGtQv3uuJhmoFUwG
         n4Vg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=/TNzzfXKIU/kSmeTTHjUCOc3GQnVkc16r5Z4x/SVaNM=;
        b=X96JhBrHdfrPfBRVr1Ka/CWG8bMqjCjoWqWb1avq9HDRYFfYSh3ChGqsz5CUM+S8/N
         GjojXXlkvBGVrCvzKDcXN/Ut8+yc/xnzj7w71uCDfLzeF9NqWe1p4W89qpkkEkQ2L0xi
         dhVJ2rntaLxX4agvHvSs3EN1abt/WIhYHdQR5TxycRG4urFNw2xp5gaUqgU/8dhPFIe3
         lTthxLzf8HFo5QwK1QTdm7QCHHggQb1Te9gr/TWDQHBwijXThjrEo7lDnOEHQVonZcB1
         98u9F9JZG8NvaHIPkhkApWKtCM3j5RGWpyzXEfUtk/Pawfh/i2Ryv5VaFLb+0cdv1CqF
         M4bA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/TNzzfXKIU/kSmeTTHjUCOc3GQnVkc16r5Z4x/SVaNM=;
        b=samqgwhPxXkFMDGLrzpGUyrAQMQZDk3McnMHXeJBjdXT8I3Jfan5g06yLdAXLNa8K9
         B02crrG2afX7nUoyMkXKLjOWsAzz9cdzLmsrcTM9B5YNVZRa/eVaLeqDGSQWv01Vb/gp
         LuLwzrA53ueuzv9Tm7XnfwGdzWve3TkrN6A/qiRvWpjDWjLW4aYZltvM1FKt1opAd/mu
         DDt03hr8ixI2ds1c9v/HSnF1GgrqzvOTNYOHU6dr0vBqKbktQtpRzvgwm9nzVcLlpezC
         IAsMvYCGN06W0FdPRepyA8LM0jjdUNT/xx293/BTV8ewoRRCgEgysG20GZ9jk9UZKFhn
         fytA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=/TNzzfXKIU/kSmeTTHjUCOc3GQnVkc16r5Z4x/SVaNM=;
        b=ktae/7vD3BM5LVAmj5mT8YI75/jP+pjRV6ifDYgQnZHp2atPNZqhyZKLoXcrbO5hNS
         iWS1lXbDLbNuUIjVoxJhHjZ1OmNnyuHhAeM6ouIhoyvxo6vf+rLDIwZ8y/+XMx+3qT1+
         rUn0i0cmBqbk3QiYuLzG9X55gVqLdKsEPI0ngQE5sefee8p9bV9+Ws5pyX6c2a9N2RfN
         cIl2bYSqiWlkqRwlnquqcWT/uNy7Qxq1mkaAAju5Hl9EQWWlE+ubth1q169MBWOSqPa7
         ey1/p/p/6mCjkw3QTaLdtfZebIPOb+w7FoGjwB1eyB2FcS31e3JWmFjEbo3GZih6Gqg1
         xMXQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530ObK6phXu4V+DZneEgfrJWclt0xcQhKv0V9Ygh6QV/4cYl8ICi
	Njsblteb0U3Ff+4k2ylJPo8=
X-Google-Smtp-Source: ABdhPJzaiyvphV8ofmfIEs04u2YFwUjG5nyldET9JPZRziA7fEcJn7Qvu2taErcM7GQISqvGl2lM3A==
X-Received: by 2002:a65:4bc2:: with SMTP id p2mr25648931pgr.169.1608910615256;
        Fri, 25 Dec 2020 07:36:55 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:5c85:: with SMTP id q127ls1179287pfb.11.gmail; Fri, 25
 Dec 2020 07:36:54 -0800 (PST)
X-Received: by 2002:a62:1749:0:b029:19d:960c:1bb8 with SMTP id 70-20020a6217490000b029019d960c1bb8mr32380501pfx.63.1608910614589;
        Fri, 25 Dec 2020 07:36:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608910614; cv=none;
        d=google.com; s=arc-20160816;
        b=vQHw4zohZmhKaR8zUs4w4BxhGW+d3+CkStXYWZGEkXNcDfZS4Y3iaPFeq49VAtOIHS
         DJhyAQZ0qbbh0mad1PCq+h6WZQNQ2ksL815sc3c6SV21Lsy3wA9WEvyqHRSl0pqZ7cCp
         O6OBHKeeKrGcQl3IY8flK9oG7AsrVnstaGw7l1H520WZGdEmuDr9MVJJnxvAZo1Ze6xN
         ODHWNJ2+An3q7/Jkri9bC07mXLVFk9KRavqtNvs486Jzd92siqrA+/y8YU6vJVxb82VQ
         XB0uEkj/yFm7vguyi3RWrVqfEdkII7zX33NTAn77PAGx5G9KS4uHO9ZZ0+5ml0kahurB
         DXaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=CodgRfpP3DFsXVCorAn6gFV9g444hmMlu98nkPiMjoI=;
        b=jGT+qfW5Hj0imIeWOVBf3GqKszbUUOtWB+45wYRAfX5cn/Yk+C3Wy+EtIyOsQTw9jK
         Szko4rwo23AYtJccZo+LGwnc91jRxChjN3wAgkB0tMzatNZgJsN1QeHO3OVQWVCy+iKC
         N+SW1se0CUIzw5KfPgkq/wfyv9F90dcjxOrDcTd6JKtqqzqBLP7V4Y48qMUMyPw6f7sf
         XEoV7YnIVXdQiFXAt7ZoazfodcyCQeWpzhsJx/lSgvwSGS0mB8gVw0K4O48ta5Qcyk9v
         PlF7DCWfadeYD00xebiIoxiEXxq6BhUc3FH49xHmMl+7JBpaKG7/Q+Y0K4Lk9nNbvogd
         wnPA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga09.intel.com (mga09.intel.com. [134.134.136.24])
        by gmr-mx.google.com with ESMTPS id lp7si260396pjb.0.2020.12.25.07.36.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 25 Dec 2020 07:36:54 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) client-ip=134.134.136.24;
IronPort-SDR: ESVU/a2Mjlsvi5phZe8EPni8hFDr8kp+3R2cfcFNLLRRIsJh6VpLVBx3IaGH+6z0zBLi26LUdX
 fcuhgDOUev5Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9845"; a="176376283"
X-IronPort-AV: E=Sophos;i="5.78,448,1599548400"; 
   d="gz'50?scan'50,208,50";a="176376283"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Dec 2020 07:36:53 -0800
IronPort-SDR: roczjel3mDmj9RZg17gSPBACdVRukMF+6df1as2n8JV2SeZsmmC1lSbj/F8/8eZOSoslw8zPWd
 m5m4lBeFFNLQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,448,1599548400"; 
   d="gz'50?scan'50,208,50";a="346097370"
Received: from lkp-server02.sh.intel.com (HELO 4242b19f17ef) ([10.239.97.151])
  by fmsmga008.fm.intel.com with ESMTP; 25 Dec 2020 07:36:50 -0800
Received: from kbuild by 4242b19f17ef with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1ksp98-0001bt-8Y; Fri, 25 Dec 2020 15:36:50 +0000
Date: Fri, 25 Dec 2020 23:36:04 +0800
From: kernel test robot <lkp@intel.com>
To: =?utf-8?B?5ZGo55Cw5p2wIChaaG91IFlhbmppZSk=?= <zhouyanjie@wanyeetech.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org, Vinod Koul <vkoul@kernel.org>,
	=?utf-8?B?5ryG6bmP5oyvIChRaSBQZW5nemhlbik=?= <aric.pzqi@ingenic.com>,
	Paul Cercueil <paul@crapouillou.net>
Subject: undefined reference to `__ubsan_handle_alignment_assumption'
Message-ID: <202012252358.c7LBGG16-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="4Ckj6UjgE2iN1+kY"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
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


--4Ckj6UjgE2iN1+kY
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   71c5f03154ac1cb27423b984743ccc2f5d11d14d
commit: 31de313dfdcf6971b0a1c30f86eabaa1eede74b3 PHY: Ingenic: Add USB PHY driver using generic PHY framework.
date:   3 weeks ago
config: s390-randconfig-r031-20201224 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project cee1e7d14f4628d6174b33640d502bff3b54ae45)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install s390 cross compiling tool for clang build
        # apt-get install binutils-s390x-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=31de313dfdcf6971b0a1c30f86eabaa1eede74b3
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout 31de313dfdcf6971b0a1c30f86eabaa1eede74b3
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=s390 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   s390x-linux-gnu-ld: init/main.o: in function `do_initcalls':
   main.c:(.init.text+0x1a34): undefined reference to `__ubsan_handle_alignment_assumption'
   s390x-linux-gnu-ld: init/initramfs.o: in function `unpack_to_rootfs':
   initramfs.c:(.init.text+0x3c4): undefined reference to `__ubsan_handle_alignment_assumption'
   s390x-linux-gnu-ld: initramfs.c:(.init.text+0x3e0): undefined reference to `__ubsan_handle_alignment_assumption'
   s390x-linux-gnu-ld: initramfs.c:(.init.text+0x3fc): undefined reference to `__ubsan_handle_alignment_assumption'
   s390x-linux-gnu-ld: init/initramfs.o: in function `dir_add':
   initramfs.c:(.init.text+0x1748): undefined reference to `__ubsan_handle_alignment_assumption'
   s390x-linux-gnu-ld: init/initramfs.o:initramfs.c:(.init.text+0x1b62): more undefined references to `__ubsan_handle_alignment_assumption' follow
   s390x-linux-gnu-ld: drivers/phy/ingenic/phy-ingenic-usb.o: in function `ingenic_usb_phy_probe':
   phy-ingenic-usb.c:(.text+0x88): undefined reference to `devm_platform_ioremap_resource'
   s390x-linux-gnu-ld: drivers/gpio/gpiolib.o: in function `gpiochip_add_data_with_key':
>> (.text+0x34f2): undefined reference to `__ubsan_handle_alignment_assumption'
   s390x-linux-gnu-ld: drivers/gpio/gpiolib.o: in function `kzalloc':
   gpiolib.c:(.text+0x5106): undefined reference to `__ubsan_handle_alignment_assumption'
   s390x-linux-gnu-ld: drivers/gpio/gpiolib.o: in function `kmalloc_array':
   gpiolib.c:(.text+0xc458): undefined reference to `__ubsan_handle_alignment_assumption'
   s390x-linux-gnu-ld: drivers/gpio/gpiolib-cdev.o: in function `gpio_ioctl':
   gpiolib-cdev.c:(.text+0x2a30): undefined reference to `__ubsan_handle_alignment_assumption'
   s390x-linux-gnu-ld: gpiolib-cdev.c:(.text+0x2b50): undefined reference to `__ubsan_handle_alignment_assumption'
   s390x-linux-gnu-ld: drivers/gpio/gpiolib-cdev.o:gpiolib-cdev.c:(.text+0x30da): more undefined references to `__ubsan_handle_alignment_assumption' follow

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202012252358.c7LBGG16-lkp%40intel.com.

--4Ckj6UjgE2iN1+kY
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
iHNkG/H/AHsgDY1w3gAA

--4Ckj6UjgE2iN1+kY--
