Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBQUGTX4QKGQERAUUSXA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x338.google.com (mail-ot1-x338.google.com [IPv6:2607:f8b0:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CEAF239CE3
	for <lists+clang-built-linux@lfdr.de>; Mon,  3 Aug 2020 00:50:44 +0200 (CEST)
Received: by mail-ot1-x338.google.com with SMTP id z10sf11303193oto.11
        for <lists+clang-built-linux@lfdr.de>; Sun, 02 Aug 2020 15:50:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596408643; cv=pass;
        d=google.com; s=arc-20160816;
        b=mo4b7dYJ4SQRlqKg94FCgSzLQUT0YSjlhVzwP1GvF2B4GoEd0m13AA54N4q4zUWqX/
         poql75gtLmlijtB8rGN8HMW2TljyqyICNTA6emlECPt00+/SmVzW+kF5IW4f4WapSLPA
         Ob7W4sVsRQu3FYN3t0sVkr/tjSd8aAy7kuDwISdeCBDS2Y1woBUyxTKdsqGrQiEE2yPp
         zKUGE2v71EXgEU49g8cElQTytX4vZ7aXVJBb7Hn7O1GEf3kpEEj3sPhNosimwbzMr5Ud
         JSW4THG9XqS2K1wER3guJ2h5PgQmR6d6Rlse6x8g2ONr8qQhZ0EB6bbz6VuguIogGW/B
         P3NA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=dxX3UEQF8x1NEVLTlWH+PX0UJZJgSmlxSL+UuJhAHoM=;
        b=DfXzUuFNGp2WsiilBTBeJwlaePiHT+OyU4Pd+C1MCYSPr1/bFbFSnaCaVsznayuDHM
         mjuZk9vKLJpFGbQ6wbk2KiEhIlCxt5o2MMUe296yDeqLHbCPQDjy1+FTcKT9BtIW3ViH
         HZiE9nQvrfTYLzVzGJk7jZKNoLHBSaSrjO8d+tyRF5ZuN58LgiPsscnvxrCfO9ioSoIV
         ti8zjBczMKzF7xO4+om76kfi7drXeSonVP7alwD6OzNj3t4xny3/uUvRZjK4xXYJKJcD
         yavag90XcY5QZUCalHZYoWpCEH3+DfmTHXFpXkOmLMbQ5GiewawdB3hWJhB7ptvyq6Di
         6gUQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dxX3UEQF8x1NEVLTlWH+PX0UJZJgSmlxSL+UuJhAHoM=;
        b=TaV+/ZA8AM8LEvnqI6zqO/yCRBQc8K/GJYqiy/7rit3LERkneZTKlBJH33jiPOpQaK
         0TLnIcji+Q5CyCr97Gr+PK9o1q+iFRmGOsMvL4YLHuip6cjliCk6vQDzjLyTB1l4GkWA
         6niUigX9UryE656WvxtqWueRS6pzyyT/asypCBLAGwys22dq9L9ad605hNuh6lYwDcwA
         DR/V3qJCuZ8EJAzpEh/+F75Kex5RlHWZX4tGQp8Y+m01rSHwwZzjjClNGygUxBLhfaza
         OVq1RGS8bvoPbcHLyEBqysjj2Ye6xS9NiTP13xReLrSsNse2tZYXmm0Jm4CToWR7EJoV
         q//g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=dxX3UEQF8x1NEVLTlWH+PX0UJZJgSmlxSL+UuJhAHoM=;
        b=i43kuYeMn0XTTND2ILI5Qeee4hNr6MB/5QuGnvKt9VmzNWst3yA+vDT5VkRM9jhoGY
         uNzyek1gyqF0ZSNwBGd78rlYn619zYVgZz3Ep9FGD5xH5RS8LfmJZzxkgxS9MwqEOcXn
         hdM3zMU/3NjkdWeBGUYLNy23+E/Qi/5oZoiYAj6xq4PCUk1U3dEXvj6cnLkxXul/ud7O
         U+n1YUK3almkvVyK2j3hytrbBP6kWArfnnApatsCVVe42CyXgRmgHJY7z10hKN5r5w07
         edahhrBgbX+LhFQ46po9QkJ5pz+Zm6lrF70hw6IXi+bPL5Vyb9/7HHCY0YQY4kVSwFNC
         IV9g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532CcVUAtYTOjBELwyCQlv6J2h7rFbHMTnMd1tpUJHcT74ZGbq9P
	iI9uM3WFHyNXQIjjbHWiHJg=
X-Google-Smtp-Source: ABdhPJzsdomsIifN8S66MhDNUwAn1XedvE5QMxn/+Dmp/1HAjRd1NAxgAbdC6EI0g05TFf1LSKKjug==
X-Received: by 2002:a05:6830:cc:: with SMTP id x12mr5194644oto.54.1596408642918;
        Sun, 02 Aug 2020 15:50:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:66d7:: with SMTP id t23ls1198840otm.1.gmail; Sun, 02 Aug
 2020 15:50:42 -0700 (PDT)
X-Received: by 2002:a9d:1919:: with SMTP id j25mr11707490ota.321.1596408642543;
        Sun, 02 Aug 2020 15:50:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596408642; cv=none;
        d=google.com; s=arc-20160816;
        b=kqmsrCGr4hbUcg9HKDBGJVRjQgHOG2IT2e2jZwrhQ4SNhBNBDt4PZC+vB/S7YahOCI
         5jAEG7ANJAsHAH4wuf21XCR6R/3TFIg3Dhbd2Yl/sTVUqLvlgeee3l3DuhWsqIxvgupZ
         HsMYJe5GcVNn2KZDS/a/ck3O5Wiur6OGrKttakoEnk7zT1NXxhgioh/j18kk39quuiSH
         HtjvOLKZ+aNWNYmrfnlXtv+P0WJyfgqymh0DlYFUeT93tg8Rb/0rxGUqNc3/YK4UQDvF
         dBvz0jHXH1Ar8yo+X2yFJ13c2SySZs45KBpTfjrvOV/Je9oDSjxfk9QY7gtZ/AszqlLA
         hu3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=BO0TUxfUFUq3Dz/LaqgkY8lXQMUn7JxBHCcYVpbNjhU=;
        b=V+l/HiqtmM+ahHmDjPZEEqv2aEp3hEM35DkrgDYd7zpdOpENj3KrL94fZCIXq59eSQ
         HTzaCO0Ug8jm6AP8HAwmSHaVkgSule6uFchuGvwh54gt9zH1OG/RSKLBXxoGErN01SRn
         josnoZd9N+YPoAXbBdFNfs5zwNzfoma2vvr6FR3R8S6nXbI88oC7jUmfsT9R8Nb8mxwv
         y9sYqpJi2SKdbO7w/C5Er8gyMoSgHFtsBwszYrG8AZPGyE+zSC4YBAEpc8isqctIDyBd
         TBMWsijKtA80cSlXi1K30FNXcG0l3B8QMEf8IkwJzkVPdiQZZGpkGlciLWOgl9lU+VEP
         IJCA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga06.intel.com (mga06.intel.com. [134.134.136.31])
        by gmr-mx.google.com with ESMTPS id x2si502609oto.3.2020.08.02.15.50.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 02 Aug 2020 15:50:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) client-ip=134.134.136.31;
IronPort-SDR: cmkewfmlPqmmJjGJYAoyXMmFlq9hzkrVf7lvJdWZvfSKiHr29sAT/kFPsmwT/vZKuFZV9dKDt1
 e5GmgGWG54zg==
X-IronPort-AV: E=McAfee;i="6000,8403,9701"; a="213558087"
X-IronPort-AV: E=Sophos;i="5.75,427,1589266800"; 
   d="scan'208";a="213558087"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Aug 2020 15:50:40 -0700
IronPort-SDR: ZS+q+k/MVMlP+JMzgVFLXtMND5CqaB7bwT0TNP3uP02hBuFM5BPdDw62pFFECjwgH0Pkrf7AjC
 zu3syYvpZPGg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,427,1589266800"; 
   d="scan'208";a="329836109"
Received: from lkp-server01.sh.intel.com (HELO e21119890065) ([10.239.97.150])
  by FMSMGA003.fm.intel.com with ESMTP; 02 Aug 2020 15:50:39 -0700
Received: from kbuild by e21119890065 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1k2MoQ-0001kg-KJ; Sun, 02 Aug 2020 22:50:38 +0000
Date: Mon, 3 Aug 2020 06:49:44 +0800
From: kernel test robot <lkp@intel.com>
To: Andrew Lunn <andrew@lunn.ch>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [lunn:v5.8-rc6-net-next-phy-subdirs-v2 4/5] drivers/net/Kconfig:474:
 can't open file "drivers/net/mdio/Kconfig"
Message-ID: <202008030639.nD6aMF6M%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
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

tree:   https://github.com/lunn/linux.git v5.8-rc6-net-next-phy-subdirs-v2
head:   5707f27690213281b666b03e9cd74b68b726aa54
commit: 2e2ddd4ea9b8b95b657641febb7343038f4a0840 [4/5] net: mdio: Move MDIO drivers into a new subdirectory
config: x86_64-randconfig-a013-20200802
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 25af353b0e74907d5d50c8616b885bd1f73a68b3)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        git checkout 2e2ddd4ea9b8b95b657641febb7343038f4a0840
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64  randconfig
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> drivers/net/Kconfig:474: can't open file "drivers/net/mdio/Kconfig"
   make[2]: *** [scripts/kconfig/Makefile:71: oldconfig] Error 1
   make[1]: *** [Makefile:607: oldconfig] Error 2
   make: *** [Makefile:185: __sub-make] Error 2
   make: Target 'oldconfig' not remade because of errors.
--
>> drivers/net/Kconfig:474: can't open file "drivers/net/mdio/Kconfig"
   make[2]: *** [scripts/kconfig/Makefile:71: olddefconfig] Error 1
   make[1]: *** [Makefile:607: olddefconfig] Error 2
   make: *** [Makefile:185: __sub-make] Error 2
   make: Target 'olddefconfig' not remade because of errors.

vim +474 drivers/net/Kconfig

   449	
   450	config NET_SB1000
   451		tristate "General Instruments Surfboard 1000"
   452		depends on PNP
   453		help
   454		  This is a driver for the General Instrument (also known as
   455		  NextLevel) SURFboard 1000 internal
   456		  cable modem. This is an ISA card which is used by a number of cable
   457		  TV companies to provide cable modem access. It's a one-way
   458		  downstream-only cable modem, meaning that your upstream net link is
   459		  provided by your regular phone modem.
   460	
   461		  At present this driver only compiles as a module, so say M here if
   462		  you have this card. The module will be called sb1000. Then read
   463		  <file:Documentation/networking/device_drivers/cable/sb1000.rst> for
   464		  information on how to use this module, as it needs special ppp
   465		  scripts for establishing a connection. Further documentation
   466		  and the necessary scripts can be found at:
   467	
   468		  <http://www.jacksonville.net/~fventuri/>
   469		  <http://home.adelphia.net/~siglercm/sb1000.html>
   470		  <http://linuxpower.cx/~cable/>
   471	
   472		  If you don't have this card, of course say N.
   473	
 > 474	source "drivers/net/mdio/Kconfig"
   475	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202008030639.nD6aMF6M%25lkp%40intel.com.
