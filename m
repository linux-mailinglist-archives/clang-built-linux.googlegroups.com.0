Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBB4SW37QKGQEY45HMMA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73e.google.com (mail-qk1-x73e.google.com [IPv6:2607:f8b0:4864:20::73e])
	by mail.lfdr.de (Postfix) with ESMTPS id 356A82E7EAE
	for <lists+clang-built-linux@lfdr.de>; Thu, 31 Dec 2020 09:17:13 +0100 (CET)
Received: by mail-qk1-x73e.google.com with SMTP id p13sf14232115qki.14
        for <lists+clang-built-linux@lfdr.de>; Thu, 31 Dec 2020 00:17:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609402632; cv=pass;
        d=google.com; s=arc-20160816;
        b=DVOw7Z557OxxAPmb3TKBb+v91MJ/Ong86M9noTYYWuwAEVjKXLeURUx8EBEG/PnimJ
         70iQV9qQeRH0KdrEotOCD+ymW67tZAQYecQ8NI7bc5ghCzxMbgie657O55jWOIQwstru
         PTsPy99iU+7xXPZ4Yl1bhp1ji1sYsGfHF8wNQrMcCw3vRLaEBKXjhFcI78a/W0ufCHhP
         ClVgMCleWGsDrf5fFKoTw4SIOkyN8UwXXS6lj2PWF2DdxeJOEL2QVBYwM5v+jWt1dCwS
         pFbbAp4BNV3mBn8r8zaDEDn8UUn5QXXP9EBW3Lys5yZzuNVrAnC6YzgH3cam7FKe9Ljb
         xifw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=kLL+oS7XcxM6S5zbC5jjThbUnZNdGPQJqmd45BFAsdo=;
        b=NBR8C7IkefKXDn8/yYvTPhBlb9xgpKbyfteeF36vLl6UyHaUlQA+/8jDOozrpa5Vgp
         eMAfwp6+e/S8aS2riJvS8zT1oiPWOPk6WIiWJHClEafyxpugBlbD/KqkOS1boxWUsbDl
         AHxTyVIht30dyvNUM2d9ndIAGFJEarxlDXB+NF1DGKyZ1wpwOaOkGdyHuHgo+Gnv0b4/
         Pxx2DEBujrqVQ3Mo9MgUxNl5LB4WE8/JdHVopP5pTM/CvS7m5vdZlhlJHjiVmu9T2+Sr
         eysl1PIAUhz8K+9Br/2JfsdJmQKCargybLuGAme1H7ivVyJJTXUHIHvoouzxOgYAiBHi
         00yw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=kLL+oS7XcxM6S5zbC5jjThbUnZNdGPQJqmd45BFAsdo=;
        b=HJkzVt4FwVSaA9GJFXe+FmKMkGV1xSZT1LbS9X0+vq5A8kvNO9hdDHOGEdVHPM3dng
         M54w/8Hqy9+g6qXYHDFoZxIXv5dQJ4C9W0hEQNE/bu3YVDufAwwYAJJjCVZSmvkDpaeR
         1CwP0K/88/Rs+1ozzR3j8lW/VNwRZIzxg6tYvXbVVad3tLkbEfO+jJqCSZP4OT9AvQQw
         PQkIFfEddPyXEqMs7KoMXHqrDdFEpAHXrgeCjKchJCJLHQwj9pbXiv5F8XcUHPqKlZfJ
         6Eg74JbAxSg8Sa/jHKOw9zirJSD2ehdwpbqZ/8oTJBRB8taUalBXf64qYIPqW2yRxfJT
         w9uA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=kLL+oS7XcxM6S5zbC5jjThbUnZNdGPQJqmd45BFAsdo=;
        b=RqTMuS94NeBxRsSMfDASP5tSfZnGygfTYQsWGKX8Sdomk8jBSQf9vzaX/SFGYC9yLi
         5kbVUBmuM1q0EEa7BJz5afwBCG2MOe0IFeoA8IgcBOpoCzYq44aiBZe6MAOXxleP2S8m
         3DqB78XY3zquL6P7lzLe/XTOpxZFrPidZr+r8esknJws3MCrIQdAT5e2xtADW2BW0P3O
         7oBHTHoa2t7XRyvIHLttnYqgsZR0prvN70ed8cVCJx17NFQ62aPLwc3DcP+90QhYonwz
         54WM0MxPTy5zeSmft5a0xV0rzv6xIch7hCTA/wCL9K1Igl89rwSyIjMi7H9Aw5AMHfol
         HIJg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531EEy+UNmL9X2WOy0z/XtHDs0zPcZCFWYKh6L5na1yIFnvZJmzx
	fcR8w2hklNdaPL1R1kvlRR0=
X-Google-Smtp-Source: ABdhPJwYRfcq2lSFPORZikQnqHfYtffGwlJGCbJzjot4KPY2B1cE2H89BPJvDnUa9r7Lwb1iZJU8SA==
X-Received: by 2002:ad4:46e7:: with SMTP id h7mr60328251qvw.44.1609402631978;
        Thu, 31 Dec 2020 00:17:11 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:3824:: with SMTP id q33ls22593100qtb.2.gmail; Thu, 31
 Dec 2020 00:17:11 -0800 (PST)
X-Received: by 2002:aed:2b04:: with SMTP id p4mr57464246qtd.99.1609402631526;
        Thu, 31 Dec 2020 00:17:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609402631; cv=none;
        d=google.com; s=arc-20160816;
        b=qNKubsOxdGkUww27feaYqE5Gt4M/IdFU7sugEVUsHJ3Z1LCwjNKUhRmhDjIE/UzEL5
         hKELURc4K/d9uKdG11zuVuu+10ecJRuNrwYvxTvubcDR1BS4/trAuGAoeEuchhgdbL1g
         By0HN6ZMeeO60hDtYir6NyIAHNx4ofmX0Z6g3wlZYS0gnZWoAoAh5RJTSYJq9BujWwqM
         pWK2f424s6fWAr2QiB2lODhx1Y9p6npZgcrq1Nt1QV/KnUx0xiDSMLkjW9L8RJXk0rkP
         DcXU4k96XL5d7/KQC4oUmZMqYPYbf9XR/cRj79tglHymCj/IdmzGudtDTs50mZbFQZ5Z
         duYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=A4oDrD/Ud4a/FvtulS8Mi9i4l600fnFNgMTbrX7Q+GY=;
        b=FQAi04CN6ZExTCAWIKhOZtDjnbXfu8jG8Ky1HLDyF9I/lLph1E3bjVM2TK8DcptHU6
         Ifdeit3EHt2yqiRnNicKa1gJtPE6tDWfX1q3ys27HIFnpuSlrgklTeqePi02+gBRuecd
         s99fcd0oqayJVY7K95WHSzaf4Zi+65jRfMt1gqND7qyOiFTU2Rq2J/+VfzhD1+BcuWqU
         ZsM27rHgcaFwy1LD+SkKPi2xGHqIRhiygpGKF6v0Vrtd7qbLGZNjKsNLiSwb0wUbfNul
         vPZOhlUGIOfgeXcfD8Tp141whMu+uvvHJJQb0oMt2FtMM/LPsDVj6+mHTCMT3CGzhzOv
         KT7Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga12.intel.com (mga12.intel.com. [192.55.52.136])
        by gmr-mx.google.com with ESMTPS id y56si3593683qtb.4.2020.12.31.00.17.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 31 Dec 2020 00:17:11 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) client-ip=192.55.52.136;
IronPort-SDR: SC+QBGzuMobZhktns4NREyDb2o7kfrwFGoXXh/UE8Pd3+SXl5FAtduO7txcn9JbRym2WCoILE5
 CN0HWU47uMAQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9850"; a="155882014"
X-IronPort-AV: E=Sophos;i="5.78,463,1599548400"; 
   d="gz'50?scan'50,208,50";a="155882014"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 31 Dec 2020 00:17:09 -0800
IronPort-SDR: TdI87tWq/BIGsYly4AoBwgRZnaQk5cMXknjs2qjwqTuMQjrkuzIigrtoqHhDddQ7q4Xcz6VZyH
 zfJw19Q/voNQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,463,1599548400"; 
   d="gz'50?scan'50,208,50";a="385432052"
Received: from lkp-server02.sh.intel.com (HELO 4242b19f17ef) ([10.239.97.151])
  by orsmga007.jf.intel.com with ESMTP; 31 Dec 2020 00:17:06 -0800
Received: from kbuild by 4242b19f17ef with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kut8r-0004pQ-Pf; Thu, 31 Dec 2020 08:17:05 +0000
Date: Thu, 31 Dec 2020 16:16:38 +0800
From: kernel test robot <lkp@intel.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Masahiro Yamada <yamada.masahiro@socionext.com>,
	Sasha Levin <alexander.levin@microsoft.com>
Subject: [linux-stable-rc:linux-4.19.y 4058/6859]
 drivers/bluetooth/hci_bcm.c:775:39: warning: unused variable
 'acpi_bcm_int_last_gpios'
Message-ID: <202012311635.bZr0C4Sw-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="lrZ03NoBR/3+SXJZ"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted
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


--lrZ03NoBR/3+SXJZ
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git linux-4.19.y
head:   3a10b2060ca30843d9251b80a2e1ca71e68035bd
commit: f66a52d991de7ca6c6dc7db768b50e6a28916d1f [4058/6859] kbuild: clang: choose GCC_TOOLCHAIN_DIR not on LD
config: powerpc64-randconfig-r001-20201231 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 6b316febb4388764789677f81f03aff373ec35b2)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc64 cross compiling tool for clang build
        # apt-get install binutils-powerpc64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git/commit/?id=f66a52d991de7ca6c6dc7db768b50e6a28916d1f
        git remote add linux-stable-rc https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git
        git fetch --no-tags linux-stable-rc linux-4.19.y
        git checkout f66a52d991de7ca6c6dc7db768b50e6a28916d1f
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

                                    ^
   In file included from drivers/bluetooth/hci_bcm.c:42:
   In file included from include/net/bluetooth/bluetooth.h:29:
   In file included from include/net/sock.h:51:
   include/linux/netdevice.h:3474:15: warning: comparison of integers of different signs: 'int' and 'unsigned int' [-Wsign-compare]
           BUG_ON(index >= dev->num_rx_queues);
                  ~~~~~ ^  ~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/bug.h:77:7: note: expanded from macro 'BUG_ON'
                   if (x)                                          \
                       ^
   In file included from drivers/bluetooth/hci_bcm.c:42:
   In file included from include/net/bluetooth/bluetooth.h:29:
   In file included from include/net/sock.h:51:
   include/linux/netdevice.h:3785:37: warning: comparison of integers of different signs: 'int' and 'unsigned long' [-Wsign-compare]
           if (debug_value < 0 || debug_value >= (sizeof(u32) * 8))
                                  ~~~~~~~~~~~ ^   ~~~~~~~~~~~~~~~
   In file included from drivers/bluetooth/hci_bcm.c:42:
   In file included from include/net/bluetooth/bluetooth.h:29:
   In file included from include/net/sock.h:64:
   In file included from include/linux/filter.h:24:
   In file included from include/net/sch_generic.h:16:
   In file included from include/net/rtnetlink.h:6:
   include/net/netlink.h:358:18: warning: comparison of integers of different signs: 'const __u32' (aka 'const unsigned int') and 'int' [-Wsign-compare]
                   nlh->nlmsg_len <= remaining);
                   ~~~~~~~~~~~~~~ ^  ~~~~~~~~~
   include/net/netlink.h:395:21: warning: comparison of integers of different signs: 'const __u32' (aka 'const unsigned int') and 'int' [-Wsign-compare]
           if (nlh->nlmsg_len < nlmsg_msg_size(hdrlen))
               ~~~~~~~~~~~~~~ ^ ~~~~~~~~~~~~~~~~~~~~~~
   include/net/netlink.h:430:21: warning: comparison of integers of different signs: 'const __u32' (aka 'const unsigned int') and 'int' [-Wsign-compare]
           if (nlh->nlmsg_len < nlmsg_msg_size(hdrlen))
               ~~~~~~~~~~~~~~ ^ ~~~~~~~~~~~~~~~~~~~~~~
   In file included from drivers/bluetooth/hci_bcm.c:42:
   In file included from include/net/bluetooth/bluetooth.h:29:
   In file included from include/net/sock.h:64:
   In file included from include/linux/filter.h:24:
   In file included from include/net/sch_generic.h:16:
   include/net/rtnetlink.h:25:21: warning: comparison of integers of different signs: 'int' and 'unsigned long' [-Wsign-compare]
           if (nlmsg_len(nlh) >= sizeof(struct rtgenmsg))
               ~~~~~~~~~~~~~~ ^  ~~~~~~~~~~~~~~~~~~~~~~~
   In file included from drivers/bluetooth/hci_bcm.c:42:
   In file included from include/net/bluetooth/bluetooth.h:29:
   In file included from include/net/sock.h:64:
   In file included from include/linux/filter.h:24:
   include/net/sch_generic.h:387:33: warning: comparison of integers of different signs: 'unsigned long' and 'int' [-Wsign-compare]
           BUILD_BUG_ON(sizeof(qcb->data) < sz);
                        ~~~~~~~~~~~~~~~~~ ^ ~~
   include/linux/build_bug.h:69:19: note: expanded from macro 'BUILD_BUG_ON'
           BUILD_BUG_ON_MSG(condition, "BUILD_BUG_ON failed: " #condition)
                            ^~~~~~~~~
   include/linux/build_bug.h:45:58: note: expanded from macro 'BUILD_BUG_ON_MSG'
   #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)
                                                            ^~~~
   include/linux/compiler.h:360:22: note: expanded from macro 'compiletime_assert'
           _compiletime_assert(condition, msg, __compiletime_assert_, __LINE__)
                               ^~~~~~~~~
   include/linux/compiler.h:348:23: note: expanded from macro '_compiletime_assert'
           __compiletime_assert(condition, msg, prefix, suffix)
                                ^~~~~~~~~
   include/linux/compiler.h:337:18: note: expanded from macro '__compiletime_assert'
                   int __cond = !(condition);                              \
                                  ^~~~~~~~~
   In file included from drivers/bluetooth/hci_bcm.c:42:
   In file included from include/net/bluetooth/bluetooth.h:29:
   In file included from include/net/sock.h:64:
   In file included from include/linux/filter.h:24:
   include/net/sch_generic.h:488:13: warning: comparison of integers of different signs: 'int' and 'const unsigned int' [-Wsign-compare]
           return ntx < dev->real_num_tx_queues ?
                  ~~~ ^ ~~~~~~~~~~~~~~~~~~~~~~~
   include/net/sch_generic.h:532:15: warning: comparison of integers of different signs: 'u32' (aka 'unsigned int') and 'int' [-Wsign-compare]
           return (hwtc < netdev_get_num_tc(dev)) ? hwtc : -EINVAL;
                   ~~~~ ^ ~~~~~~~~~~~~~~~~~~~~~~
   In file included from drivers/bluetooth/hci_bcm.c:42:
   In file included from include/net/bluetooth/bluetooth.h:29:
   In file included from include/net/sock.h:64:
   include/linux/filter.h:1009:16: warning: comparison of integers of different signs: 'const __u32' (aka 'const unsigned int') and 'int' [-Wsign-compare]
                   if (first->k == SKF_AD_OFF + SKF_AD_ALU_XOR_X)
                       ~~~~~~~~ ^  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   In file included from drivers/bluetooth/hci_bcm.c:42:
   In file included from include/net/bluetooth/bluetooth.h:29:
   include/net/sock.h:2241:43: warning: comparison of integers of different signs: 'unsigned int' and 'int' [-Wsign-compare]
           return refcount_read(&sk->sk_wmem_alloc) < (sk->sk_sndbuf >> 1);
                  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ^  ~~~~~~~~~~~~~~~~~~
   drivers/bluetooth/hci_bcm.c:776:42: warning: missing field 'quirks' initializer [-Wmissing-field-initializers]
           { "device-wakeup-gpios", &first_gpio, 1 },
                                                   ^
   drivers/bluetooth/hci_bcm.c:777:38: warning: missing field 'quirks' initializer [-Wmissing-field-initializers]
           { "shutdown-gpios", &second_gpio, 1 },
                                               ^
   drivers/bluetooth/hci_bcm.c:778:40: warning: missing field 'quirks' initializer [-Wmissing-field-initializers]
           { "host-wakeup-gpios", &third_gpio, 1 },
                                                 ^
   drivers/bluetooth/hci_bcm.c:783:40: warning: missing field 'quirks' initializer [-Wmissing-field-initializers]
           { "host-wakeup-gpios", &first_gpio, 1 },
                                                 ^
   drivers/bluetooth/hci_bcm.c:784:43: warning: missing field 'quirks' initializer [-Wmissing-field-initializers]
           { "device-wakeup-gpios", &second_gpio, 1 },
                                                    ^
   drivers/bluetooth/hci_bcm.c:785:37: warning: missing field 'quirks' initializer [-Wmissing-field-initializers]
           { "shutdown-gpios", &third_gpio, 1 },
                                              ^
>> drivers/bluetooth/hci_bcm.c:775:39: warning: unused variable 'acpi_bcm_int_last_gpios' [-Wunused-const-variable]
   static const struct acpi_gpio_mapping acpi_bcm_int_last_gpios[] = {
                                         ^
>> drivers/bluetooth/hci_bcm.c:782:39: warning: unused variable 'acpi_bcm_int_first_gpios' [-Wunused-const-variable]
   static const struct acpi_gpio_mapping acpi_bcm_int_first_gpios[] = {
                                         ^
   33 warnings generated.
   Assembler messages:
   Fatal error: invalid listing option `6'
   clang-12: error: assembler command failed with exit code 1 (use -v to see invocation)


vim +/acpi_bcm_int_last_gpios +775 drivers/bluetooth/hci_bcm.c

89ab37b489d11e2 Daniel Drake   2017-01-05  774  
89ab37b489d11e2 Daniel Drake   2017-01-05 @775  static const struct acpi_gpio_mapping acpi_bcm_int_last_gpios[] = {
9644e6b98cda048 Hans de Goede  2018-03-16  776  	{ "device-wakeup-gpios", &first_gpio, 1 },
9644e6b98cda048 Hans de Goede  2018-03-16  777  	{ "shutdown-gpios", &second_gpio, 1 },
9644e6b98cda048 Hans de Goede  2018-03-16  778  	{ "host-wakeup-gpios", &third_gpio, 1 },
89ab37b489d11e2 Daniel Drake   2017-01-05  779  	{ },
89ab37b489d11e2 Daniel Drake   2017-01-05  780  };
89ab37b489d11e2 Daniel Drake   2017-01-05  781  
89ab37b489d11e2 Daniel Drake   2017-01-05 @782  static const struct acpi_gpio_mapping acpi_bcm_int_first_gpios[] = {
9644e6b98cda048 Hans de Goede  2018-03-16  783  	{ "host-wakeup-gpios", &first_gpio, 1 },
9644e6b98cda048 Hans de Goede  2018-03-16  784  	{ "device-wakeup-gpios", &second_gpio, 1 },
9644e6b98cda048 Hans de Goede  2018-03-16  785  	{ "shutdown-gpios", &third_gpio, 1 },
0395ffc1ee0509d Frederic Danis 2015-08-11  786  	{ },
0395ffc1ee0509d Frederic Danis 2015-08-11  787  };
0395ffc1ee0509d Frederic Danis 2015-08-11  788  

:::::: The code at line 775 was first introduced by commit
:::::: 89ab37b489d11e2ec3a70635139dcda076c16354 Bluetooth: hci_bcm: Add support for BCM2E95 and BCM2E96

:::::: TO: Daniel Drake <drake@endlessm.com>
:::::: CC: Marcel Holtmann <marcel@holtmann.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202012311635.bZr0C4Sw-lkp%40intel.com.

--lrZ03NoBR/3+SXJZ
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
lNe3d4kxLd1KffT/AXAEcFykcwEA

--lrZ03NoBR/3+SXJZ--
