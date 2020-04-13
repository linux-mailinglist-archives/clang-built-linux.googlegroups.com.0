Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB25W2D2AKGQE4Q6ZLQI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63f.google.com (mail-pl1-x63f.google.com [IPv6:2607:f8b0:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id 831371A63EA
	for <lists+clang-built-linux@lfdr.de>; Mon, 13 Apr 2020 09:57:33 +0200 (CEST)
Received: by mail-pl1-x63f.google.com with SMTP id z9sf5873050plk.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 13 Apr 2020 00:57:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586764652; cv=pass;
        d=google.com; s=arc-20160816;
        b=aVBZdID7SDJSgwGpJAM8Xtcb4lDx8abX/GX7lBLIinbGthqufd/xh3ML1wGA+99VvA
         9XE0PAT8R8fE8sUYzQCNRsdfDmtxD+du7s6+9N1vV0Y/BQ4q4FIr3nriGyXM4WrjP696
         FtZ/LyLB6XNowk8QYU/ND9vZQrggV0Pcaj6sJMLR0IaORPzH6+OKSM9FeWrcC88DquBJ
         /vFNvYyK7Il/AsHzokpTrPR9gjjjUpN5O44b/TiBupJ1cfHFZfws0Q1yS19gjfOepkah
         EnUs+liWFFcV9ms1S+RuOqZaE7RAh7WvfAg8x5up/3wTNgTeZkFwIkGTIIQI9YWgAB5Y
         OT9Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=pEfg41DlTBUnYftxcdKNDQsnQFr0mvrdZoB+i2uCn8s=;
        b=LenntXErASj9J6Sya/XPuof9ERGWnlh+wadjbPBb6cA7DrIXAr+GkPIVW3O7WqS7Wz
         04FqMMTfc2zq4FLY69iJH4fjnhji6+ktWf+qa6TxTId+y52iWifBt9an5ylfwzAj9Ips
         LP8xvfjI+oNMDQoZKOHiQIKeFPnSluAwzyPaGpkI2aXCKMfcsCymWx/jhd+hq7kuz4Af
         tZ6EqG1HajCZ5A6dUzRk6Znjpba3mS5/TPJojoirETfJCwvAdzRYejYGU5Se2sy+NRmj
         7jhi7zS6wF0L+fOL+WNml0dOyiNVQCUc6YJgIm+HmZ9/UDkN/bG/wZThUDIqatTIlTEl
         HbFg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=pEfg41DlTBUnYftxcdKNDQsnQFr0mvrdZoB+i2uCn8s=;
        b=HTG6fN8kqZ7AsJE9LuD3Vg12SrVrdXv13bJYTu0EiMntDZg6QzQ0OlpuUp8GPJOgGq
         YI9z6DXGHRgDVgxpzL/NBoq7XAlj0auirLq3fBMRTUsMZYOfdM2LKCanM62iASCVg/Fq
         f7hsLe+i5rEX4cWc1cI8mU46W/JEXTyEj7puy5yiLleqRBuxXBdjte/+uKudWAoP14Ly
         2HjTUT03jQ7/f75Ah7kF/lWxGn7TzwhNMfjqOSgVLaDkGToO+XtQYKwxmxYeDUjSqSQj
         qK8DDyW7sTBMkTLP/Z2NcoSsiYrmXX559OQ+A3UjiMWbFhKwSp7qgKCZqtiGFpzLJMQK
         GGzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=pEfg41DlTBUnYftxcdKNDQsnQFr0mvrdZoB+i2uCn8s=;
        b=S3NpboSiYEAdHHU9U/l3JsFT23Py8avDvnBrIVMqP1NzbOQZcaEPDtl+IcH8ivQnO5
         2z4BJkDX6ZWlb1/DtvscmBv4FZZM/Vs7DFcajXznBr39wGwRY/Da41u0lzHiK6Rd29SW
         noaPd8VYj9UiPr2tT2zinTFeIR2yZE/lr7Jr1nF5Kvp2YCuANSTQ3aC5+9qXmhbI2D65
         JMYPBlz0lzPN0UOmhWkmlH+YjbN6Y54PE6ZgHaYv1hseoLZCYe+v0yK45sQ3QdMc/qYg
         Gvrm0jHy7YSAMd1VTFmDnvFiyW5XSrtCpgFYRgPXh+vOEYI8E1uz1/BUV1zK2s8/iedS
         c+AA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PubOa+XXRdTfBbFZluW5Jvs60/6wrAMYm0Q3y/do02k4OiDvqyEW
	wEQqk4WjxNHb1BoCt663he0=
X-Google-Smtp-Source: APiQypIj+tt1nF2PDyi0Q6LeWdQSMFmhcAal1M913TGLmm+Tqupu5JBRWULq6SyqXXD5iGZOMBJU6g==
X-Received: by 2002:a62:5c07:: with SMTP id q7mr17055366pfb.200.1586764651873;
        Mon, 13 Apr 2020 00:57:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:7b82:: with SMTP id w124ls6734269pfc.10.gmail; Mon, 13
 Apr 2020 00:57:31 -0700 (PDT)
X-Received: by 2002:a63:513:: with SMTP id 19mr16726288pgf.48.1586764651453;
        Mon, 13 Apr 2020 00:57:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586764651; cv=none;
        d=google.com; s=arc-20160816;
        b=ArmC8qkhVIJ0DjLIKo33UFblFYpZrziMMS7pWWill0YbUmOlBuW+uJ0pkfX8g8NFJJ
         7gMKeHoYOvzTGGGurNOOOsI/hDL+iClgQgk0LkxUeR0raDOIvmtxgFx7w53AGltJvhLh
         yi3LG3OAL7/6vl9XBV0KCiJB16ZcbppzDLozLvRdb/K2lAp1hECvG/K9mJ/B3VViXSUB
         hcSgx5I/E1shz4uVi7peEsZGAKvzh5DCyiujEHolDcR5oi0cbft0ybn9SdZyCoMKuw4h
         DQ+WS3X0ep+DOCnvqefJlZHTNYOgKg5yJlshHpYLlCt1yeQh1V6WeYCbAmFDv1gRLJFn
         Em/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=rBMaVu+oHM2XBo7NQTm+i4eXLqbA6+mcWifrkKTl/r0=;
        b=t3yBigVliPASSROEX/jWEoEoOYG8Un0UmTG31YhM7TszuXViM6LNO17vRFGABDL22w
         0ro2GvcwPd/2J58+u6IKCSlPVPbbrpkrbIPVCd9mbOBHCY+VJNgKJYT4KJg4WDlqLIFk
         FLRt32Gv5q2Lmo8Fz3pBJwvcWMjgc5ztpf2JKvTMwLRZEq89YKYzWzKIHkA1EM8NBqfB
         7gDRLtPDMH/rJlcFWFBZ1T+1Up9rFosn3iQuGsV4Y8z4HyuOira5z7DOyosj1KUQW8tw
         oVCrkOWaA+EPAGtkbnA1dB4/baAGhSW/SQM1OBRfpzdhWS4K/a/Jy+oXI2hEiy26ADcM
         2mPQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga18.intel.com (mga18.intel.com. [134.134.136.126])
        by gmr-mx.google.com with ESMTPS id 63si428545plf.2.2020.04.13.00.57.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Apr 2020 00:57:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) client-ip=134.134.136.126;
IronPort-SDR: GNFzzmI251R9/DYTKcB2Imn2326yTZbGT8I42kXfLDbEojmNy38lSdblNjVkHAd3b+Dse6fgSQ
 r6QLyk2Qu0uQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Apr 2020 00:57:30 -0700
IronPort-SDR: FoozU8M/T54+VV2fxuKsd1kyPjsfubcOP7R30oFlVuo4OzhCKcweiYG58HFdqxrwqf33VvB3K7
 j39mK8FmNZSQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,378,1580803200"; 
   d="scan'208";a="256109661"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by orsmga006.jf.intel.com with ESMTP; 13 Apr 2020 00:57:29 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1jNtyD-000DWI-0c; Mon, 13 Apr 2020 15:57:29 +0800
Date: Mon, 13 Apr 2020 15:57:19 +0800
From: kbuild test robot <lkp@intel.com>
To: Andrew Lunn <andrew@lunn.ch>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [lunn:v5.6-rc5-net-next-cable-test 11/22]
 drivers/net/phy/Kconfig:243:error: recursive dependency detected!
Message-ID: <202004131511.3vTRWkx9%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
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

tree:   https://github.com/lunn/linux.git v5.6-rc5-net-next-cable-test
head:   b31a0e1be47110cf03960f7d8514f9f69ad67430
commit: a76b78a551a315bc67ffd8e945c63c514696d8d8 [11/22] net: ethtool: Add infrastructure for reporting cable test results
config: powerpc-defconfig
compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project dd030036f0a2ace74d0bd2242cfdbcf726ef565d)
reproduce:
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        git checkout a76b78a551a315bc67ffd8e945c63c514696d8d8
        COMPILER=clang make.cross ARCH=powerpc  defconfig
        COMPILER=clang make.cross ARCH=powerpc 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> drivers/net/phy/Kconfig:243:error: recursive dependency detected!
>> drivers/net/phy/Kconfig:243: symbol PHYLIB is selected by ETHTOOL_NETLINK
>> net/Kconfig:455: symbol ETHTOOL_NETLINK is selected by PHYLIB
   For a resolution refer to Documentation/kbuild/kconfig-language.rst
   subsection "Kconfig recursive dependency limitations"

vim +243 drivers/net/phy/Kconfig

90eff9096c01ba Florian Fainelli 2017-03-23  232  
9525ae83959b60 Russell King     2017-07-25  233  config PHYLINK
9525ae83959b60 Russell King     2017-07-25  234  	tristate
9525ae83959b60 Russell King     2017-07-25  235  	depends on NETDEVICES
9525ae83959b60 Russell King     2017-07-25  236  	select PHYLIB
9525ae83959b60 Russell King     2017-07-25  237  	select SWPHY
9525ae83959b60 Russell King     2017-07-25  238  	help
9525ae83959b60 Russell King     2017-07-25  239  	  PHYlink models the link between the PHY and MAC, allowing fixed
9525ae83959b60 Russell King     2017-07-25  240  	  configuration links, PHYs, and Serdes links with MAC level
9525ae83959b60 Russell King     2017-07-25  241  	  autonegotiation modes.
9525ae83959b60 Russell King     2017-07-25  242  
6073512cc8e2c4 Jerome Brunet    2017-09-18 @243  menuconfig PHYLIB
9e8d438e8ba43a Florian Fainelli 2018-04-27  244  	tristate "PHY Device support and infrastructure"
6073512cc8e2c4 Jerome Brunet    2017-09-18  245  	depends on NETDEVICES
6073512cc8e2c4 Jerome Brunet    2017-09-18  246  	select MDIO_DEVICE
a76b78a551a315 Andrew Lunn      2019-04-29  247  	select ETHTOOL_NETLINK
6073512cc8e2c4 Jerome Brunet    2017-09-18  248  	help
6073512cc8e2c4 Jerome Brunet    2017-09-18  249  	  Ethernet controllers are usually attached to PHY
6073512cc8e2c4 Jerome Brunet    2017-09-18  250  	  devices.  This option provides infrastructure for
6073512cc8e2c4 Jerome Brunet    2017-09-18  251  	  managing PHY devices.
6073512cc8e2c4 Jerome Brunet    2017-09-18  252  

:::::: The code at line 243 was first introduced by commit
:::::: 6073512cc8e2c48bed5c6625c02c5e4ae50cec34 net: phy: Kconfig: Fix PHY infrastructure menu in menuconfig

:::::: TO: Jerome Brunet <jbrunet@baylibre.com>
:::::: CC: David S. Miller <davem@davemloft.net>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202004131511.3vTRWkx9%25lkp%40intel.com.
