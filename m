Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBKU52CCAMGQE7EUTQLA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id D340E3757C6
	for <lists+clang-built-linux@lfdr.de>; Thu,  6 May 2021 17:43:39 +0200 (CEST)
Received: by mail-pl1-x63d.google.com with SMTP id 31-20020a1709020022b02900eeddd708c8sf2579769pla.11
        for <lists+clang-built-linux@lfdr.de>; Thu, 06 May 2021 08:43:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620315818; cv=pass;
        d=google.com; s=arc-20160816;
        b=CzBgQVvuWFynIs6KgYpWQtvtTXrgxP4BxOCbI/t45ucpjggLzt3Rw0zIslFSzDgslO
         hIQYUfrUYOzjd3HYuQyS8sZxvHOMRKNL318gtDviHjtR+H9FM3wuQSuaMWSzUrqEolnJ
         4Ngf7Hrcfxq+zDvTu3Hg/JCePUxPGA1RvJ7Dy0CAtamwJqJu/iUqRTdR3fryvlc8LVWY
         rUtDeKYyDGkmEX/x7ii/VsSed7el5t2oZNduoUXnUKFxokUjJ99ruplYOi5Oi0mMahYj
         kCwIzULRVpX63NtfnfedSD0EJiSrmI/UiNgirO2JjvU4GPkFyoKQm9D9aAbQF0SA77ma
         6prw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=AYDtXVmU0HEuNYbAwyT47vNvnT+aGibssgCMswp7/2o=;
        b=Breua+plF/sjJIoOeELHC9scbyUSk45I/4YuPtTayeZNu1LhOhBLBEHfIc+rwZhio3
         o+TgkpuDow5Vq5kaQ1j/oGQzCycE/dMk/BKw9JJMJmZrXV55TKAFYVjiRdEPgA9OwAnH
         h8f+1t0ESO68hrvNqxs6u7ohl7WoaZd0mZ8OLhOsSEK27zToReAMR7YAxPGNZH99vx+3
         JDRq//Iw1E726aROt+reoePhppPx3k4stTLlt2Vpi0RaxsvV9QWe+5ziEPgBOWhBpX/E
         0syPAM95bB8cF9TwfWoPCyS20JVW6t5CFiRyXoqm+nS+rWcD2sueK4DFv8NwJPr1Hvjv
         2o9A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=AYDtXVmU0HEuNYbAwyT47vNvnT+aGibssgCMswp7/2o=;
        b=fSUtw8bLjCzMHh6/REebLLOpCsvFQWsp+CwBAiNleINYacVNe1q9Jde5FZphsaEXl2
         dLkkyCyvyf6ONs6JpUNSH0+l2IXu7yFbLbSzfvtV85uWSDdPPN1vz7WVknzLRbS3CDdH
         IVwzmfeFGBdllJV7F9o338IaXj5S6JE2AV7Cpe0nu0nqh3MVv2d1j3Vr39uoEGCStCPn
         5crA+PUsDjmyZkTOheICzv2dXuhSgrynaIAU3zXQees/D1Z2O+qCM5GUwpqW0UNVUxt8
         TD6uePaiiA2B1mssdGdoE1QR7Hb2WHrHvF4vkhEEjOFyyz8P9Q5NZt6suFVleXXOZS0J
         ufGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=AYDtXVmU0HEuNYbAwyT47vNvnT+aGibssgCMswp7/2o=;
        b=nCG3FjEGyAfPJExui2/Sc6tHeIUP4vl0CdY1C16L6dGqRtvHP4HnMBrgfeDIPuYvED
         z/zh9HNam/iDlyUl7LEDOERE7Nt0cxlKdE70l8IspB2jt0G7M62q2k7II2fb8KTc3SBc
         JNyt/K+tSuakWwtNwYLMMzFgltqj6w845cMhZH5qmTLY6eKeOxo9IG2JDzpGHSJv9Qt+
         zbjy7WlkwaxAVxHijWYb5WLtZXi72ITS7AxYHbfjIPJlgu3u1rWHsc1hcYmpcnQ8BWnK
         kJzZvvsnUZGoYK8jB5gv/+Gc6ZcejKJ7bInFkN6pkzmqNQzfrRnFQOAYOQ/OYBzevys4
         46NQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5330NSsXB9BEPL8JXMAvJGFNavlciH4PDuWphxI8r4jGKeBKd7RZ
	F6pFVQB8NB5fdvxtMwyNruo=
X-Google-Smtp-Source: ABdhPJzNx0cpPPxxrYFQ/S+vVU3Vd3NJl5P+dEsVlo3EtL42IrvhMhgMvOnaotyvVllZMIwMqtA3sw==
X-Received: by 2002:a62:28b:0:b029:28e:e592:fe65 with SMTP id 133-20020a62028b0000b029028ee592fe65mr5234783pfc.75.1620315818329;
        Thu, 06 May 2021 08:43:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:1393:: with SMTP id t19ls1349213pfg.1.gmail; Thu,
 06 May 2021 08:43:37 -0700 (PDT)
X-Received: by 2002:a63:e64b:: with SMTP id p11mr4882633pgj.10.1620315817360;
        Thu, 06 May 2021 08:43:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620315817; cv=none;
        d=google.com; s=arc-20160816;
        b=sJIvsyiNbAgJs0kOFKiJvLKM/D86VTTRWDtEju8o+fKHnDcT7cae4Fch+Abq3G4UQr
         O6it5rZfTVqjTu8JKCneNvlNAlTwYQnLaJ0zEJQQQjN3H7z89dwx+6zKKerJM0f6j8I0
         BIUWMao4VLDtW5FMI7Ub3/kzJmUaqa0dGwDq8muK8spa04+21/ZwfJ43ExfG5akEVo2S
         tcblsBqbdVCq28SpLV9I9gAQzwSl8pxOEjwRhPa8kUlNK+vtMC3scW7iFZDRHKhMoUHW
         aC5rp4J2x/nLe90dbG3pFBMZ/JyY17hisEbkEQX7mOewdZuwOukxhmmrxsFzJfPcFA8f
         fu9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=ccY4NPI1OXBh700xfaj3bK0KgftcDKEPHWjlfK/3tIU=;
        b=BAxUASRzQTeWPMbgrda9t2pUvGfSsz8vp9uYQ6tgqXsNnukR1tDfMJ1TFpxEFAu96u
         Znhjh7h87oteL5XFFbe9nZLw+KVlTdbAqPqFa7yq0PtyrfuyNckuqo6c97TSItQnSxP2
         0uaD8mX8d+3a/6HnOFC0yUezcP5/x/8EVOjK7qfr9Suwf4HqpplPKex8p1Ac4Ogl1Vss
         /0RRngReYxH/Vwtjj+ggFoZ7nzH4j/nAEiXVcr3BoatCHY3dWgtJU16ATHBmRdLDSpxG
         Ijq3vDoM1Z0ky2D0KWdaZf8CN6VgJPq7kGUjayyK/fHpCwXwkUXsXevJVKSiixI3dLm4
         lToQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga17.intel.com (mga17.intel.com. [192.55.52.151])
        by gmr-mx.google.com with ESMTPS id z28si183604pgk.2.2021.05.06.08.43.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 06 May 2021 08:43:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) client-ip=192.55.52.151;
IronPort-SDR: 1Okue0uV0zT0NnN21byFGs38QMs2x6vZdH/pUZ2Tgajmlsu4I6Sfq0DtqQxaoX4C3IQah+0vXY
 LyOePc64qKGg==
X-IronPort-AV: E=McAfee;i="6200,9189,9976"; a="178743144"
X-IronPort-AV: E=Sophos;i="5.82,277,1613462400"; 
   d="gz'50?scan'50,208,50";a="178743144"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 May 2021 08:43:35 -0700
IronPort-SDR: hOWfQ7pD0LBtLwuu6zMGb8bDUjMKFKnNDAXZBeQi5b3001I3XxA1DJ0spw9G+gkA4cDto4vWi+
 w9bssce4d+AA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,277,1613462400"; 
   d="gz'50?scan'50,208,50";a="428606091"
Received: from lkp-server01.sh.intel.com (HELO a48ff7ddd223) ([10.239.97.150])
  by orsmga007.jf.intel.com with ESMTP; 06 May 2021 08:43:32 -0700
Received: from kbuild by a48ff7ddd223 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1legA0-000Ak6-2V; Thu, 06 May 2021 15:43:32 +0000
Date: Thu, 6 May 2021 23:43:25 +0800
From: kernel test robot <lkp@intel.com>
To: Rui Miguel Silva <rui.silva@linaro.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-usb@vger.kernel.org,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [usb:usb-testing 7/9] drivers/usb/isp1760/isp1760-regs.h:286:21:
 warning: initializer overrides prior initialization of this subobject
Message-ID: <202105062318.xxK3ju2U-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="azLHFNyN32YCQGCU"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted
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


--azLHFNyN32YCQGCU
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/usb.git usb-testing
head:   83a9d2a05296bf5a5fee13206dc4499a40978908
commit: 54dacbcc6b8921a211bd736d2f208d3c78594241 [7/9] usb: isp1760: move to regmap for register access
config: riscv-randconfig-r006-20210506 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 8f5a2a5836cc8e4c1def2bdeb022e7b496623439)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install riscv cross compiling tool for clang build
        # apt-get install binutils-riscv64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/usb.git/commit/?id=54dacbcc6b8921a211bd736d2f208d3c78594241
        git remote add usb https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/usb.git
        git fetch --no-tags usb usb-testing
        git checkout 54dacbcc6b8921a211bd736d2f208d3c78594241
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 ARCH=riscv 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

                  ^~~~~~~~~
   arch/riscv/include/asm/io.h:56:76: note: expanded from macro 'inw'
   #define inw(c)          ({ u16 __v; __io_pbr(); __v = readw_cpu((void*)(PCI_IOBASE + (c))); __io_par(__v); __v; })
                                                                           ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:88:76: note: expanded from macro 'readw_cpu'
   #define readw_cpu(c)            ({ u16 __r = le16_to_cpu((__force __le16)__raw_readw(c)); __r; })
                                                                                        ^
   include/uapi/linux/byteorder/little_endian.h:36:51: note: expanded from macro '__le16_to_cpu'
   #define __le16_to_cpu(x) ((__force __u16)(__le16)(x))
                                                     ^
   In file included from drivers/usb/isp1760/isp1760-if.c:13:
   In file included from include/linux/usb.h:16:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:11:
   In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:17:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:149:
   include/asm-generic/io.h:572:9: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           return inl(addr);
                  ^~~~~~~~~
   arch/riscv/include/asm/io.h:57:76: note: expanded from macro 'inl'
   #define inl(c)          ({ u32 __v; __io_pbr(); __v = readl_cpu((void*)(PCI_IOBASE + (c))); __io_par(__v); __v; })
                                                                           ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:89:76: note: expanded from macro 'readl_cpu'
   #define readl_cpu(c)            ({ u32 __r = le32_to_cpu((__force __le32)__raw_readl(c)); __r; })
                                                                                        ^
   include/uapi/linux/byteorder/little_endian.h:34:51: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) ((__force __u32)(__le32)(x))
                                                     ^
   In file included from drivers/usb/isp1760/isp1760-if.c:13:
   In file included from include/linux/usb.h:16:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:11:
   In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:17:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:149:
   include/asm-generic/io.h:580:2: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           outb(value, addr);
           ^~~~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:59:68: note: expanded from macro 'outb'
   #define outb(v,c)       ({ __io_pbw(); writeb_cpu((v),(void*)(PCI_IOBASE + (c))); __io_paw(); })
                                                                 ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:91:52: note: expanded from macro 'writeb_cpu'
   #define writeb_cpu(v, c)        ((void)__raw_writeb((v), (c)))
                                                             ^
   In file included from drivers/usb/isp1760/isp1760-if.c:13:
   In file included from include/linux/usb.h:16:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:11:
   In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:17:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:149:
   include/asm-generic/io.h:588:2: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           outw(value, addr);
           ^~~~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:60:68: note: expanded from macro 'outw'
   #define outw(v,c)       ({ __io_pbw(); writew_cpu((v),(void*)(PCI_IOBASE + (c))); __io_paw(); })
                                                                 ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:92:76: note: expanded from macro 'writew_cpu'
   #define writew_cpu(v, c)        ((void)__raw_writew((__force u16)cpu_to_le16(v), (c)))
                                                                                     ^
   In file included from drivers/usb/isp1760/isp1760-if.c:13:
   In file included from include/linux/usb.h:16:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:11:
   In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:17:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:149:
   include/asm-generic/io.h:596:2: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           outl(value, addr);
           ^~~~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:61:68: note: expanded from macro 'outl'
   #define outl(v,c)       ({ __io_pbw(); writel_cpu((v),(void*)(PCI_IOBASE + (c))); __io_paw(); })
                                                                 ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:93:76: note: expanded from macro 'writel_cpu'
   #define writel_cpu(v, c)        ((void)__raw_writel((__force u32)cpu_to_le32(v), (c)))
                                                                                     ^
   In file included from drivers/usb/isp1760/isp1760-if.c:13:
   In file included from include/linux/usb.h:16:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:11:
   In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:17:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:149:
   include/asm-generic/io.h:1024:55: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           return (port > MMIO_UPPER_LIMIT) ? NULL : PCI_IOBASE + port;
                                                     ~~~~~~~~~~ ^
   In file included from drivers/usb/isp1760/isp1760-if.c:22:
   In file included from drivers/usb/isp1760/isp1760-core.h:19:
   In file included from drivers/usb/isp1760/isp1760-hcd.h:8:
>> drivers/usb/isp1760/isp1760-regs.h:286:21: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
           [HW_OTG_DISABLE]        = REG_FIELD(ISP1761_DC_OTG_CTRL_CLEAR, 10, 10),
                                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/regmap.h:1210:37: note: expanded from macro 'REG_FIELD'
   #define REG_FIELD(_reg, _lsb, _msb) {           \
                                       ^~~~~~~~~~~~~
   drivers/usb/isp1760/isp1760-regs.h:279:21: note: previous initialization is here
           [HW_OTG_DISABLE]        = REG_FIELD(ISP1761_DC_OTG_CTRL_SET, 10, 10),
                                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/regmap.h:1210:37: note: expanded from macro 'REG_FIELD'
   #define REG_FIELD(_reg, _lsb, _msb) {           \
                                       ^~~~~~~~~~~~~
   In file included from drivers/usb/isp1760/isp1760-if.c:22:
   In file included from drivers/usb/isp1760/isp1760-core.h:19:
   In file included from drivers/usb/isp1760/isp1760-hcd.h:8:
   drivers/usb/isp1760/isp1760-regs.h:287:22: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
           [HW_SW_SEL_HC_DC]       = REG_FIELD(ISP1761_DC_OTG_CTRL_CLEAR, 7, 7),
                                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/regmap.h:1210:37: note: expanded from macro 'REG_FIELD'
   #define REG_FIELD(_reg, _lsb, _msb) {           \
                                       ^~~~~~~~~~~~~
   drivers/usb/isp1760/isp1760-regs.h:280:22: note: previous initialization is here
           [HW_SW_SEL_HC_DC]       = REG_FIELD(ISP1761_DC_OTG_CTRL_SET, 7, 7),
                                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/regmap.h:1210:37: note: expanded from macro 'REG_FIELD'
   #define REG_FIELD(_reg, _lsb, _msb) {           \
                                       ^~~~~~~~~~~~~
   In file included from drivers/usb/isp1760/isp1760-if.c:22:
   In file included from drivers/usb/isp1760/isp1760-core.h:19:
   In file included from drivers/usb/isp1760/isp1760-hcd.h:8:
   drivers/usb/isp1760/isp1760-regs.h:288:19: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
           [HW_VBUS_DRV]           = REG_FIELD(ISP1761_DC_OTG_CTRL_CLEAR, 4, 4),
                                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/regmap.h:1210:37: note: expanded from macro 'REG_FIELD'
   #define REG_FIELD(_reg, _lsb, _msb) {           \
                                       ^~~~~~~~~~~~~
   drivers/usb/isp1760/isp1760-regs.h:281:19: note: previous initialization is here
           [HW_VBUS_DRV]           = REG_FIELD(ISP1761_DC_OTG_CTRL_SET, 4, 4),
                                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/regmap.h:1210:37: note: expanded from macro 'REG_FIELD'
   #define REG_FIELD(_reg, _lsb, _msb) {           \
                                       ^~~~~~~~~~~~~
   In file included from drivers/usb/isp1760/isp1760-if.c:22:
   In file included from drivers/usb/isp1760/isp1760-core.h:19:
   In file included from drivers/usb/isp1760/isp1760-hcd.h:8:
   drivers/usb/isp1760/isp1760-regs.h:289:21: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
           [HW_SEL_CP_EXT]         = REG_FIELD(ISP1761_DC_OTG_CTRL_CLEAR, 3, 3),
                                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/regmap.h:1210:37: note: expanded from macro 'REG_FIELD'
   #define REG_FIELD(_reg, _lsb, _msb) {           \
                                       ^~~~~~~~~~~~~
   drivers/usb/isp1760/isp1760-regs.h:282:21: note: previous initialization is here
           [HW_SEL_CP_EXT]         = REG_FIELD(ISP1761_DC_OTG_CTRL_SET, 3, 3),
                                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/regmap.h:1210:37: note: expanded from macro 'REG_FIELD'
   #define REG_FIELD(_reg, _lsb, _msb) {           \
                                       ^~~~~~~~~~~~~
   In file included from drivers/usb/isp1760/isp1760-if.c:22:
   In file included from drivers/usb/isp1760/isp1760-core.h:19:
   In file included from drivers/usb/isp1760/isp1760-hcd.h:8:
   drivers/usb/isp1760/isp1760-regs.h:290:21: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
           [HW_DM_PULLDOWN]        = REG_FIELD(ISP1761_DC_OTG_CTRL_CLEAR, 2, 2),
                                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/regmap.h:1210:37: note: expanded from macro 'REG_FIELD'
   #define REG_FIELD(_reg, _lsb, _msb) {           \
                                       ^~~~~~~~~~~~~
   drivers/usb/isp1760/isp1760-regs.h:283:21: note: previous initialization is here
           [HW_DM_PULLDOWN]        = REG_FIELD(ISP1761_DC_OTG_CTRL_SET, 2, 2),
                                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/regmap.h:1210:37: note: expanded from macro 'REG_FIELD'
   #define REG_FIELD(_reg, _lsb, _msb) {           \
                                       ^~~~~~~~~~~~~
   In file included from drivers/usb/isp1760/isp1760-if.c:22:
   In file included from drivers/usb/isp1760/isp1760-core.h:19:
   In file included from drivers/usb/isp1760/isp1760-hcd.h:8:
   drivers/usb/isp1760/isp1760-regs.h:291:21: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
           [HW_DP_PULLDOWN]        = REG_FIELD(ISP1761_DC_OTG_CTRL_CLEAR, 1, 1),
                                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/regmap.h:1210:37: note: expanded from macro 'REG_FIELD'
   #define REG_FIELD(_reg, _lsb, _msb) {           \
                                       ^~~~~~~~~~~~~
   drivers/usb/isp1760/isp1760-regs.h:284:21: note: previous initialization is here
           [HW_DP_PULLDOWN]        = REG_FIELD(ISP1761_DC_OTG_CTRL_SET, 1, 1),
                                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/regmap.h:1210:37: note: expanded from macro 'REG_FIELD'
   #define REG_FIELD(_reg, _lsb, _msb) {           \
                                       ^~~~~~~~~~~~~
   In file included from drivers/usb/isp1760/isp1760-if.c:22:
   In file included from drivers/usb/isp1760/isp1760-core.h:19:
   In file included from drivers/usb/isp1760/isp1760-hcd.h:8:
   drivers/usb/isp1760/isp1760-regs.h:292:20: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
           [HW_DP_PULLUP]          = REG_FIELD(ISP1761_DC_OTG_CTRL_CLEAR, 0, 0),
                                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/regmap.h:1210:37: note: expanded from macro 'REG_FIELD'
   #define REG_FIELD(_reg, _lsb, _msb) {           \
                                       ^~~~~~~~~~~~~
   drivers/usb/isp1760/isp1760-regs.h:285:20: note: previous initialization is here
           [HW_DP_PULLUP]          = REG_FIELD(ISP1761_DC_OTG_CTRL_SET, 0, 0),
                                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/regmap.h:1210:37: note: expanded from macro 'REG_FIELD'
   #define REG_FIELD(_reg, _lsb, _msb) {           \
--
   In file included from drivers/usb/isp1760/isp1760-core.c:15:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:149:
   include/asm-generic/io.h:556:9: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           return inb(addr);
                  ^~~~~~~~~
   arch/riscv/include/asm/io.h:55:76: note: expanded from macro 'inb'
   #define inb(c)          ({ u8  __v; __io_pbr(); __v = readb_cpu((void*)(PCI_IOBASE + (c))); __io_par(__v); __v; })
                                                                           ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:87:48: note: expanded from macro 'readb_cpu'
   #define readb_cpu(c)            ({ u8  __r = __raw_readb(c); __r; })
                                                            ^
   In file included from drivers/usb/isp1760/isp1760-core.c:15:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:149:
   include/asm-generic/io.h:564:9: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           return inw(addr);
                  ^~~~~~~~~
   arch/riscv/include/asm/io.h:56:76: note: expanded from macro 'inw'
   #define inw(c)          ({ u16 __v; __io_pbr(); __v = readw_cpu((void*)(PCI_IOBASE + (c))); __io_par(__v); __v; })
                                                                           ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:88:76: note: expanded from macro 'readw_cpu'
   #define readw_cpu(c)            ({ u16 __r = le16_to_cpu((__force __le16)__raw_readw(c)); __r; })
                                                                                        ^
   include/uapi/linux/byteorder/little_endian.h:36:51: note: expanded from macro '__le16_to_cpu'
   #define __le16_to_cpu(x) ((__force __u16)(__le16)(x))
                                                     ^
   In file included from drivers/usb/isp1760/isp1760-core.c:15:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:149:
   include/asm-generic/io.h:572:9: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           return inl(addr);
                  ^~~~~~~~~
   arch/riscv/include/asm/io.h:57:76: note: expanded from macro 'inl'
   #define inl(c)          ({ u32 __v; __io_pbr(); __v = readl_cpu((void*)(PCI_IOBASE + (c))); __io_par(__v); __v; })
                                                                           ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:89:76: note: expanded from macro 'readl_cpu'
   #define readl_cpu(c)            ({ u32 __r = le32_to_cpu((__force __le32)__raw_readl(c)); __r; })
                                                                                        ^
   include/uapi/linux/byteorder/little_endian.h:34:51: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) ((__force __u32)(__le32)(x))
                                                     ^
   In file included from drivers/usb/isp1760/isp1760-core.c:15:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:149:
   include/asm-generic/io.h:580:2: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           outb(value, addr);
           ^~~~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:59:68: note: expanded from macro 'outb'
   #define outb(v,c)       ({ __io_pbw(); writeb_cpu((v),(void*)(PCI_IOBASE + (c))); __io_paw(); })
                                                                 ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:91:52: note: expanded from macro 'writeb_cpu'
   #define writeb_cpu(v, c)        ((void)__raw_writeb((v), (c)))
                                                             ^
   In file included from drivers/usb/isp1760/isp1760-core.c:15:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:149:
   include/asm-generic/io.h:588:2: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           outw(value, addr);
           ^~~~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:60:68: note: expanded from macro 'outw'
   #define outw(v,c)       ({ __io_pbw(); writew_cpu((v),(void*)(PCI_IOBASE + (c))); __io_paw(); })
                                                                 ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:92:76: note: expanded from macro 'writew_cpu'
   #define writew_cpu(v, c)        ((void)__raw_writew((__force u16)cpu_to_le16(v), (c)))
                                                                                     ^
   In file included from drivers/usb/isp1760/isp1760-core.c:15:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:149:
   include/asm-generic/io.h:596:2: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           outl(value, addr);
           ^~~~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:61:68: note: expanded from macro 'outl'
   #define outl(v,c)       ({ __io_pbw(); writel_cpu((v),(void*)(PCI_IOBASE + (c))); __io_paw(); })
                                                                 ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:93:76: note: expanded from macro 'writel_cpu'
   #define writel_cpu(v, c)        ((void)__raw_writel((__force u32)cpu_to_le32(v), (c)))
                                                                                     ^
   In file included from drivers/usb/isp1760/isp1760-core.c:15:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:149:
   include/asm-generic/io.h:1024:55: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           return (port > MMIO_UPPER_LIMIT) ? NULL : PCI_IOBASE + port;
                                                     ~~~~~~~~~~ ^
   In file included from drivers/usb/isp1760/isp1760-core.c:21:
   In file included from drivers/usb/isp1760/isp1760-core.h:19:
   In file included from drivers/usb/isp1760/isp1760-hcd.h:8:
>> drivers/usb/isp1760/isp1760-regs.h:286:21: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
           [HW_OTG_DISABLE]        = REG_FIELD(ISP1761_DC_OTG_CTRL_CLEAR, 10, 10),
                                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/regmap.h:1210:37: note: expanded from macro 'REG_FIELD'
   #define REG_FIELD(_reg, _lsb, _msb) {           \
                                       ^~~~~~~~~~~~~
   drivers/usb/isp1760/isp1760-regs.h:279:21: note: previous initialization is here
           [HW_OTG_DISABLE]        = REG_FIELD(ISP1761_DC_OTG_CTRL_SET, 10, 10),
                                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/regmap.h:1210:37: note: expanded from macro 'REG_FIELD'
   #define REG_FIELD(_reg, _lsb, _msb) {           \
                                       ^~~~~~~~~~~~~
   In file included from drivers/usb/isp1760/isp1760-core.c:21:
   In file included from drivers/usb/isp1760/isp1760-core.h:19:
   In file included from drivers/usb/isp1760/isp1760-hcd.h:8:
   drivers/usb/isp1760/isp1760-regs.h:287:22: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
           [HW_SW_SEL_HC_DC]       = REG_FIELD(ISP1761_DC_OTG_CTRL_CLEAR, 7, 7),
                                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/regmap.h:1210:37: note: expanded from macro 'REG_FIELD'
   #define REG_FIELD(_reg, _lsb, _msb) {           \
                                       ^~~~~~~~~~~~~
   drivers/usb/isp1760/isp1760-regs.h:280:22: note: previous initialization is here
           [HW_SW_SEL_HC_DC]       = REG_FIELD(ISP1761_DC_OTG_CTRL_SET, 7, 7),
                                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/regmap.h:1210:37: note: expanded from macro 'REG_FIELD'
   #define REG_FIELD(_reg, _lsb, _msb) {           \
                                       ^~~~~~~~~~~~~
   In file included from drivers/usb/isp1760/isp1760-core.c:21:
   In file included from drivers/usb/isp1760/isp1760-core.h:19:
   In file included from drivers/usb/isp1760/isp1760-hcd.h:8:
   drivers/usb/isp1760/isp1760-regs.h:288:19: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
           [HW_VBUS_DRV]           = REG_FIELD(ISP1761_DC_OTG_CTRL_CLEAR, 4, 4),
                                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/regmap.h:1210:37: note: expanded from macro 'REG_FIELD'
   #define REG_FIELD(_reg, _lsb, _msb) {           \
                                       ^~~~~~~~~~~~~
   drivers/usb/isp1760/isp1760-regs.h:281:19: note: previous initialization is here
           [HW_VBUS_DRV]           = REG_FIELD(ISP1761_DC_OTG_CTRL_SET, 4, 4),
                                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/regmap.h:1210:37: note: expanded from macro 'REG_FIELD'
   #define REG_FIELD(_reg, _lsb, _msb) {           \
                                       ^~~~~~~~~~~~~
   In file included from drivers/usb/isp1760/isp1760-core.c:21:
   In file included from drivers/usb/isp1760/isp1760-core.h:19:
   In file included from drivers/usb/isp1760/isp1760-hcd.h:8:
   drivers/usb/isp1760/isp1760-regs.h:289:21: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
           [HW_SEL_CP_EXT]         = REG_FIELD(ISP1761_DC_OTG_CTRL_CLEAR, 3, 3),
                                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/regmap.h:1210:37: note: expanded from macro 'REG_FIELD'
   #define REG_FIELD(_reg, _lsb, _msb) {           \
                                       ^~~~~~~~~~~~~
   drivers/usb/isp1760/isp1760-regs.h:282:21: note: previous initialization is here
           [HW_SEL_CP_EXT]         = REG_FIELD(ISP1761_DC_OTG_CTRL_SET, 3, 3),
                                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/regmap.h:1210:37: note: expanded from macro 'REG_FIELD'
   #define REG_FIELD(_reg, _lsb, _msb) {           \
                                       ^~~~~~~~~~~~~
   In file included from drivers/usb/isp1760/isp1760-core.c:21:
   In file included from drivers/usb/isp1760/isp1760-core.h:19:
   In file included from drivers/usb/isp1760/isp1760-hcd.h:8:
   drivers/usb/isp1760/isp1760-regs.h:290:21: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
           [HW_DM_PULLDOWN]        = REG_FIELD(ISP1761_DC_OTG_CTRL_CLEAR, 2, 2),
                                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/regmap.h:1210:37: note: expanded from macro 'REG_FIELD'
   #define REG_FIELD(_reg, _lsb, _msb) {           \
                                       ^~~~~~~~~~~~~
   drivers/usb/isp1760/isp1760-regs.h:283:21: note: previous initialization is here
           [HW_DM_PULLDOWN]        = REG_FIELD(ISP1761_DC_OTG_CTRL_SET, 2, 2),
                                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/regmap.h:1210:37: note: expanded from macro 'REG_FIELD'
   #define REG_FIELD(_reg, _lsb, _msb) {           \
                                       ^~~~~~~~~~~~~
   In file included from drivers/usb/isp1760/isp1760-core.c:21:
   In file included from drivers/usb/isp1760/isp1760-core.h:19:
   In file included from drivers/usb/isp1760/isp1760-hcd.h:8:
   drivers/usb/isp1760/isp1760-regs.h:291:21: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
           [HW_DP_PULLDOWN]        = REG_FIELD(ISP1761_DC_OTG_CTRL_CLEAR, 1, 1),
                                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/regmap.h:1210:37: note: expanded from macro 'REG_FIELD'
   #define REG_FIELD(_reg, _lsb, _msb) {           \
                                       ^~~~~~~~~~~~~
   drivers/usb/isp1760/isp1760-regs.h:284:21: note: previous initialization is here
           [HW_DP_PULLDOWN]        = REG_FIELD(ISP1761_DC_OTG_CTRL_SET, 1, 1),
                                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/regmap.h:1210:37: note: expanded from macro 'REG_FIELD'
   #define REG_FIELD(_reg, _lsb, _msb) {           \
                                       ^~~~~~~~~~~~~
   In file included from drivers/usb/isp1760/isp1760-core.c:21:
   In file included from drivers/usb/isp1760/isp1760-core.h:19:
   In file included from drivers/usb/isp1760/isp1760-hcd.h:8:
   drivers/usb/isp1760/isp1760-regs.h:292:20: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
           [HW_DP_PULLUP]          = REG_FIELD(ISP1761_DC_OTG_CTRL_CLEAR, 0, 0),
                                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/regmap.h:1210:37: note: expanded from macro 'REG_FIELD'
   #define REG_FIELD(_reg, _lsb, _msb) {           \
                                       ^~~~~~~~~~~~~
   drivers/usb/isp1760/isp1760-regs.h:285:20: note: previous initialization is here
           [HW_DP_PULLUP]          = REG_FIELD(ISP1761_DC_OTG_CTRL_SET, 0, 0),
                                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/regmap.h:1210:37: note: expanded from macro 'REG_FIELD'
   #define REG_FIELD(_reg, _lsb, _msb) {           \
                                       ^~~~~~~~~~~~~
>> drivers/usb/isp1760/isp1760-core.c:163:41: warning: variable 'base' is uninitialized when used here [-Wuninitialized]
           hcd->regs = devm_regmap_init_mmio(dev, base, &isp1760_hc_regmap_conf);
                                                  ^~~~
   include/linux/regmap.h:988:39: note: expanded from macro 'devm_regmap_init_mmio'
           devm_regmap_init_mmio_clk(dev, NULL, regs, config)
                                                ^~~~
   include/linux/regmap.h:974:18: note: expanded from macro 'devm_regmap_init_mmio_clk'
                                   dev, clk_id, regs, config)
                                                ^~~~
   include/linux/regmap.h:666:52: note: expanded from macro '__regmap_lockdep_wrapper'
   #define __regmap_lockdep_wrapper(fn, name, ...) fn(__VA_ARGS__, NULL, NULL)
                                                      ^~~~~~~~~~~
   drivers/usb/isp1760/isp1760-core.c:129:20: note: initialize the variable 'base' to silence this warning
           void __iomem *base;
                             ^
                              = NULL
   15 warnings generated.


vim +286 drivers/usb/isp1760/isp1760-regs.h

   240	
   241	static const struct reg_field isp1761_dc_reg_fields[] = {
   242		[DC_DEVEN]		= REG_FIELD(ISP176x_DC_ADDRESS, 7, 7),
   243		[DC_DEVADDR]		= REG_FIELD(ISP176x_DC_ADDRESS, 0, 6),
   244		[DC_VBUSSTAT]		= REG_FIELD(ISP176x_DC_MODE, 8, 8),
   245		[DC_SFRESET]		= REG_FIELD(ISP176x_DC_MODE, 4, 4),
   246		[DC_GLINTENA]		= REG_FIELD(ISP176x_DC_MODE, 3, 3),
   247		[DC_CDBGMOD_ACK]	= REG_FIELD(ISP176x_DC_INTCONF, 6, 6),
   248		[DC_DDBGMODIN_ACK]	= REG_FIELD(ISP176x_DC_INTCONF, 4, 4),
   249		[DC_DDBGMODOUT_ACK]	= REG_FIELD(ISP176x_DC_INTCONF, 2, 2),
   250		[DC_INTPOL]		= REG_FIELD(ISP176x_DC_INTCONF, 0, 0),
   251		[DC_IEPRXTX_7]		= REG_FIELD(ISP176x_DC_INTENABLE, 25, 25),
   252		[DC_IEPRXTX_6]		= REG_FIELD(ISP176x_DC_INTENABLE, 23, 23),
   253		[DC_IEPRXTX_5]		= REG_FIELD(ISP176x_DC_INTENABLE, 21, 21),
   254		[DC_IEPRXTX_4]		= REG_FIELD(ISP176x_DC_INTENABLE, 19, 19),
   255		[DC_IEPRXTX_3]		= REG_FIELD(ISP176x_DC_INTENABLE, 17, 17),
   256		[DC_IEPRXTX_2]		= REG_FIELD(ISP176x_DC_INTENABLE, 15, 15),
   257		[DC_IEPRXTX_1]		= REG_FIELD(ISP176x_DC_INTENABLE, 13, 13),
   258		[DC_IEPRXTX_0]		= REG_FIELD(ISP176x_DC_INTENABLE, 11, 11),
   259		[DC_IEP0SETUP]		= REG_FIELD(ISP176x_DC_INTENABLE, 8, 8),
   260		[DC_IEVBUS]		= REG_FIELD(ISP176x_DC_INTENABLE, 7, 7),
   261		[DC_IEHS_STA]		= REG_FIELD(ISP176x_DC_INTENABLE, 5, 5),
   262		[DC_IERESM]		= REG_FIELD(ISP176x_DC_INTENABLE, 4, 4),
   263		[DC_IESUSP]		= REG_FIELD(ISP176x_DC_INTENABLE, 3, 3),
   264		[DC_IEBRST]		= REG_FIELD(ISP176x_DC_INTENABLE, 0, 0),
   265		[DC_EP0SETUP]		= REG_FIELD(ISP176x_DC_EPINDEX, 5, 5),
   266		[DC_ENDPIDX]		= REG_FIELD(ISP176x_DC_EPINDEX, 1, 4),
   267		[DC_EPDIR]		= REG_FIELD(ISP176x_DC_EPINDEX, 0, 0),
   268		[DC_CLBUF]		= REG_FIELD(ISP176x_DC_CTRLFUNC, 4, 4),
   269		[DC_VENDP]		= REG_FIELD(ISP176x_DC_CTRLFUNC, 3, 3),
   270		[DC_DSEN]		= REG_FIELD(ISP176x_DC_CTRLFUNC, 2, 2),
   271		[DC_STATUS]		= REG_FIELD(ISP176x_DC_CTRLFUNC, 1, 1),
   272		[DC_STALL]		= REG_FIELD(ISP176x_DC_CTRLFUNC, 0, 0),
   273		[DC_BUFLEN]		= REG_FIELD(ISP176x_DC_BUFLEN, 0, 15),
   274		[DC_FFOSZ]		= REG_FIELD(ISP176x_DC_EPMAXPKTSZ, 0, 10),
   275		[DC_EPENABLE]		= REG_FIELD(ISP176x_DC_EPTYPE, 3, 3),
   276		[DC_ENDPTYP]		= REG_FIELD(ISP176x_DC_EPTYPE, 0, 1),
   277		[DC_UFRAMENUM]		= REG_FIELD(ISP176x_DC_FRAMENUM, 11, 13),
   278		[DC_FRAMENUM]		= REG_FIELD(ISP176x_DC_FRAMENUM, 0, 10),
   279		[HW_OTG_DISABLE]	= REG_FIELD(ISP1761_DC_OTG_CTRL_SET, 10, 10),
   280		[HW_SW_SEL_HC_DC]	= REG_FIELD(ISP1761_DC_OTG_CTRL_SET, 7, 7),
   281		[HW_VBUS_DRV]		= REG_FIELD(ISP1761_DC_OTG_CTRL_SET, 4, 4),
   282		[HW_SEL_CP_EXT]		= REG_FIELD(ISP1761_DC_OTG_CTRL_SET, 3, 3),
   283		[HW_DM_PULLDOWN]	= REG_FIELD(ISP1761_DC_OTG_CTRL_SET, 2, 2),
   284		[HW_DP_PULLDOWN]	= REG_FIELD(ISP1761_DC_OTG_CTRL_SET, 1, 1),
   285		[HW_DP_PULLUP]		= REG_FIELD(ISP1761_DC_OTG_CTRL_SET, 0, 0),
 > 286		[HW_OTG_DISABLE]	= REG_FIELD(ISP1761_DC_OTG_CTRL_CLEAR, 10, 10),
   287		[HW_SW_SEL_HC_DC]	= REG_FIELD(ISP1761_DC_OTG_CTRL_CLEAR, 7, 7),
   288		[HW_VBUS_DRV]		= REG_FIELD(ISP1761_DC_OTG_CTRL_CLEAR, 4, 4),
   289		[HW_SEL_CP_EXT]		= REG_FIELD(ISP1761_DC_OTG_CTRL_CLEAR, 3, 3),
   290		[HW_DM_PULLDOWN]	= REG_FIELD(ISP1761_DC_OTG_CTRL_CLEAR, 2, 2),
   291		[HW_DP_PULLDOWN]	= REG_FIELD(ISP1761_DC_OTG_CTRL_CLEAR, 1, 1),
   292		[HW_DP_PULLUP]		= REG_FIELD(ISP1761_DC_OTG_CTRL_CLEAR, 0, 0),
   293	};
   294	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202105062318.xxK3ju2U-lkp%40intel.com.

--azLHFNyN32YCQGCU
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--azLHFNyN32YCQGCU--
