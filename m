Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBMNOSD5QKGQEP4AOG6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13b.google.com (mail-il1-x13b.google.com [IPv6:2607:f8b0:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id 918F026EC0A
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Sep 2020 04:10:58 +0200 (CEST)
Received: by mail-il1-x13b.google.com with SMTP id g188sf3365567ilh.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 17 Sep 2020 19:10:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600395057; cv=pass;
        d=google.com; s=arc-20160816;
        b=azncRTPsf7I2nlQBQ2E8ZNoiU1efpbbpZ0v9+vIiX/UQHDoKpw3JpFUN/8jrZPsAyq
         QD0g+dsqtJrnUlQUDbvM3ENos54WjbCFTKNZZLSfsqZfOvXyl+COWcMh/t+D7vjNRYxP
         300BosTRAbfs1Gtc+hieiV9YEFAHHvbr8YgvluAvqS69CSVS2DqiRqYbve8d71nq5fwW
         rUEx0Ka4WK9cs+JuGHPvi9TzzOC4ryupFNvNkEfA8XViqQ83cf53LmhXsyirAPcZRQ04
         lUryNRsqRB0nZX3wy3Vx4MpO63Lltt9EA68PEFgQWko6vcBzXKjgULrOOcNaSRVw0Kb5
         Wijw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=iiz78rPXrqtuQKLPtE67ama4ui49bWPDKD8erc9UYqI=;
        b=ODQgq3jKiTtX4NhkJIpb4FccQCIK1KmZ71fZJ+kj4Z6xrMkQTh7PT0ILX3Jj4cmU7f
         gCYpd3+CoLIrFG+OyhPpI9XVvrYScHnc2VQpP2vIfQfxFtUGgN9QPx7q6a10tJ1bmf8W
         2hAMkSp9qt28YynX5q3pQ5njlKiitW9wZ5CYYtZpS7jJyIvTFtTKTrwHmMggb+bTIuau
         kuHDZ2oTiF8Skii85Ck1q2DzOhBotJNpuuBKdRLCLZArtJ1r7R4g4H4Ws99yGHKCGK11
         ApoS2wRQCSkHofAI0LRNtpsSDzQDhNkSNWO3DT1Hu3R7W7/e5l5LVh9/qHxT/WmBwbpk
         mpGQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iiz78rPXrqtuQKLPtE67ama4ui49bWPDKD8erc9UYqI=;
        b=YH2jplYW82+d8q4Y23vb6dgswQNrEpgxneDzRNyKZkelcMAMwD8UEKxhiO0s9PkZnq
         c8FAeHR9DS8Z2aPJs4dpXtN1cXi4f6+GWsOXCNObISt6k0CWfKDw9rV9CBHnKyTmFZEu
         r3LD4v2eauqW849177ebNVz8RtdMV5X2DRyN3EehPdHcZTbgmCCi0x2vJbzBGYioIaFJ
         yR5XfK0dv9En9wvxuAIoJvAe1jE7RVGEUBY+T7ZVr6E1ZtvxWCU4rXQb6J+4drHyLr3S
         gHNRzFahY2tSb4tZgXNN5LlKRWZFBuQhFYpd6gyt3Dqoj51JRh6qGnDFUP1uR4/2Ne1r
         xhdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iiz78rPXrqtuQKLPtE67ama4ui49bWPDKD8erc9UYqI=;
        b=qSpRBqZnh6VFgBQ3WGlYRpTk2BZTU4/3/eneGTC5wzQ4UEmEJqIQ8mixYjpdOlD4zA
         OFW3W0xmie/Y1mYZHDp3MMtBMvWxg960qVWy0k6/+/p3UVq4/a0sqtHBpmxuFQ5Tlv1x
         8qy0/hbZXHcLxKcCuiUrCry9TKSARquCy/yXFIUCmSkgjdAQoSDYufMq9fmnUc78FMaP
         8E1D7HN4ofI02Owyz5ZoHvRhiLcnCgaTPmEoMJpA13TM49mkhkFqnv2/lRRjmmYqGJnZ
         0JXqjYHxgHDi8cMewJt+byLOQRCshehTfh895CfCKt/qL7kGBu5cpPiNXwkTS7iAgHt5
         aovQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531rP86YxbLI+5kE63DtEqvQ37SuI+h4sbApFDgO6zDZJRRTc4On
	ac4nuw/eaJbQeuabgdbu6V0=
X-Google-Smtp-Source: ABdhPJx6qJqeLcGyezqaEmPWdt9osbWnxGCkBcj6DKmbdDwkiNysns47elf+bU9HsawW1eDfqLI5fg==
X-Received: by 2002:a02:ccca:: with SMTP id k10mr29743302jaq.111.1600395057322;
        Thu, 17 Sep 2020 19:10:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:14d2:: with SMTP id o18ls871328ilk.6.gmail; Thu, 17
 Sep 2020 19:10:56 -0700 (PDT)
X-Received: by 2002:a92:5893:: with SMTP id z19mr17842416ilf.158.1600395056830;
        Thu, 17 Sep 2020 19:10:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600395056; cv=none;
        d=google.com; s=arc-20160816;
        b=M7okWLX8e9tak/InBDURnXggD2HVfZvbjsXgbj9eTdtyiPscQNX+cCQHSsbIFOwdyw
         8zSvaYOTelPFb/Ba/L8C+fBsQCPqH/l/QNgWYAyGFE96E4d7MDn1xc5yQ/a9gueAfuON
         ejGO7XCTkzwlFCzCfBsDrK6UECHDQMYI3xMfK3gSsJGR1+LODYET1ABrlJQ+paXpf4rc
         afYG047pNQxJe6PI7AAkOFQPglmAPYF8ZpogY6ZaEJqhmhYcOB0wcCVVyBJLb68AyS4b
         iek/Y346SqciQ7vxClz0d7A56SH8Lm3hKWGsByHZIRjN8sSDwcEHEkZflrViF39MKmD7
         UOlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=i6fnG4tdlLApmNzHZvdX0UKnDkOJ066Fe2TIZiW3GnM=;
        b=KlaZhx3w1CXcySWf/JfWg/2BcTy2rVed0huy7bSWovcid+R/Y/mqhM3n4EYVyu6rwh
         GI1+B09+Y92DUYPGMN9E+7j0U/9meUEa4zA9GaWznMOwXxXvUn/ReR6QUl005Oj93AlY
         +0g9rBGrG8qlaUMGtQhUlKuetrIiLxp732LUB7Lnazs/J9whkMVG9iICQ8EDlFibRUUh
         pEsqXqxzskCaimrUtPn7mwCi3eUz55KESWQRKE5P42YfUTsmYIpvXuj/OLPVSFMKOgkY
         /rT/Q9XEV2BXvyDw9QIj3QM1IEyCmxKHQpf3r2MZTEle8KmzsEukjSO+vzxLUeTKhnkj
         rxvA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga07.intel.com (mga07.intel.com. [134.134.136.100])
        by gmr-mx.google.com with ESMTPS id k18si104472ion.4.2020.09.17.19.10.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 17 Sep 2020 19:10:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) client-ip=134.134.136.100;
IronPort-SDR: p0gLNsYP2MqTEA9rNIlGHJlT36NwKSb7QlPDXdZWXVCAIdyvB5MIZDAx65vAOgsIr42PW6X6gf
 teEYQvhqdt0Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9747"; a="224004931"
X-IronPort-AV: E=Sophos;i="5.77,273,1596524400"; 
   d="gz'50?scan'50,208,50";a="224004931"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Sep 2020 19:10:51 -0700
IronPort-SDR: yHzP+s3SCXXI/lxV0rBDFNPJ890jC6pGMBaXKt3M4gjRAieNCU0l+qf3DgdosBzmVOcdR9Hlph
 ugl1y0YTqOhw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,273,1596524400"; 
   d="gz'50?scan'50,208,50";a="344573680"
Received: from lkp-server01.sh.intel.com (HELO a05db971c861) ([10.239.97.150])
  by FMSMGA003.fm.intel.com with ESMTP; 17 Sep 2020 19:10:47 -0700
Received: from kbuild by a05db971c861 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kJ5rK-0000EC-NB; Fri, 18 Sep 2020 02:10:46 +0000
Date: Fri, 18 Sep 2020 10:10:30 +0800
From: kernel test robot <lkp@intel.com>
To: Marek =?iso-8859-1?Q?Beh=FAn?= <marek.behun@nic.cz>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH leds v2 05/50] leds: various: guard of_match_table member
 value with of_match_ptr
Message-ID: <202009181021.cy2AfXte%lkp@intel.com>
References: <20200917223338.14164-6-marek.behun@nic.cz>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="dDRMvlgZJXvWKvBx"
Content-Disposition: inline
In-Reply-To: <20200917223338.14164-6-marek.behun@nic.cz>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted
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


--dDRMvlgZJXvWKvBx
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi "Marek,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on pavel-linux-leds/for-next]
[also build test WARNING on next-20200917]
[cannot apply to powerpc/next v5.9-rc5]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Marek-Beh-n/Start-moving-parsing-of-linux-default-trigger-to-LED-core-a-cleanup-of-LED-drivers/20200918-063850
base:   git://git.kernel.org/pub/scm/linux/kernel/git/pavel/linux-leds.git for-next
config: s390-randconfig-r003-20200917 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 0ff28fa6a75617d61b1aeea77463d6a1684c3c89)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install s390 cross compiling tool for clang build
        # apt-get install binutils-s390x-linux-gnu
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=s390 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   include/asm-generic/io.h:490:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:119:21: note: expanded from macro '__swab32'
           ___constant_swab32(x) :                 \
                              ^
   include/uapi/linux/swab.h:20:12: note: expanded from macro '___constant_swab32'
           (((__u32)(x) & (__u32)0x0000ff00UL) <<  8) |            \
                     ^
   In file included from drivers/leds/leds-gpio.c:10:
   In file included from include/linux/gpio.h:62:
   In file included from include/asm-generic/gpio.h:11:
   In file included from include/linux/gpio/driver.h:7:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/s390/include/asm/io.h:72:
   include/asm-generic/io.h:490:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:119:21: note: expanded from macro '__swab32'
           ___constant_swab32(x) :                 \
                              ^
   include/uapi/linux/swab.h:21:12: note: expanded from macro '___constant_swab32'
           (((__u32)(x) & (__u32)0x00ff0000UL) >>  8) |            \
                     ^
   In file included from drivers/leds/leds-gpio.c:10:
   In file included from include/linux/gpio.h:62:
   In file included from include/asm-generic/gpio.h:11:
   In file included from include/linux/gpio/driver.h:7:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/s390/include/asm/io.h:72:
   include/asm-generic/io.h:490:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:119:21: note: expanded from macro '__swab32'
           ___constant_swab32(x) :                 \
                              ^
   include/uapi/linux/swab.h:22:12: note: expanded from macro '___constant_swab32'
           (((__u32)(x) & (__u32)0xff000000UL) >> 24)))
                     ^
   In file included from drivers/leds/leds-gpio.c:10:
   In file included from include/linux/gpio.h:62:
   In file included from include/asm-generic/gpio.h:11:
   In file included from include/linux/gpio/driver.h:7:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/s390/include/asm/io.h:72:
   include/asm-generic/io.h:490:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:120:12: note: expanded from macro '__swab32'
           __fswab32(x))
                     ^
   In file included from drivers/leds/leds-gpio.c:10:
   In file included from include/linux/gpio.h:62:
   In file included from include/asm-generic/gpio.h:11:
   In file included from include/linux/gpio/driver.h:7:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/s390/include/asm/io.h:72:
   include/asm-generic/io.h:501:33: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writeb(value, PCI_IOBASE + addr);
                               ~~~~~~~~~~ ^
   include/asm-generic/io.h:511:59: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writew((u16 __force)cpu_to_le16(value), PCI_IOBASE + addr);
                                                         ~~~~~~~~~~ ^
   include/asm-generic/io.h:521:59: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writel((u32 __force)cpu_to_le32(value), PCI_IOBASE + addr);
                                                         ~~~~~~~~~~ ^
   include/asm-generic/io.h:609:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           readsb(PCI_IOBASE + addr, buffer, count);
                  ~~~~~~~~~~ ^
   include/asm-generic/io.h:617:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           readsw(PCI_IOBASE + addr, buffer, count);
                  ~~~~~~~~~~ ^
   include/asm-generic/io.h:625:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           readsl(PCI_IOBASE + addr, buffer, count);
                  ~~~~~~~~~~ ^
   include/asm-generic/io.h:634:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           writesb(PCI_IOBASE + addr, buffer, count);
                   ~~~~~~~~~~ ^
   include/asm-generic/io.h:643:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           writesw(PCI_IOBASE + addr, buffer, count);
                   ~~~~~~~~~~ ^
   include/asm-generic/io.h:652:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           writesl(PCI_IOBASE + addr, buffer, count);
                   ~~~~~~~~~~ ^
>> drivers/leds/leds-gpio.c:197:34: warning: unused variable 'of_gpio_leds_match' [-Wunused-const-variable]
   static const struct of_device_id of_gpio_leds_match[] = {
                                    ^
   21 warnings generated.
--
   include/uapi/linux/swab.h:19:12: note: expanded from macro '___constant_swab32'
           (((__u32)(x) & (__u32)0x000000ffUL) << 24) |            \
                     ^
   In file included from drivers/leds/leds-lm3532.c:9:
   In file included from include/linux/regmap.h:20:
   In file included from include/linux/iopoll.h:14:
   In file included from include/linux/io.h:13:
   In file included from arch/s390/include/asm/io.h:72:
   include/asm-generic/io.h:490:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:119:21: note: expanded from macro '__swab32'
           ___constant_swab32(x) :                 \
                              ^
   include/uapi/linux/swab.h:20:12: note: expanded from macro '___constant_swab32'
           (((__u32)(x) & (__u32)0x0000ff00UL) <<  8) |            \
                     ^
   In file included from drivers/leds/leds-lm3532.c:9:
   In file included from include/linux/regmap.h:20:
   In file included from include/linux/iopoll.h:14:
   In file included from include/linux/io.h:13:
   In file included from arch/s390/include/asm/io.h:72:
   include/asm-generic/io.h:490:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:119:21: note: expanded from macro '__swab32'
           ___constant_swab32(x) :                 \
                              ^
   include/uapi/linux/swab.h:21:12: note: expanded from macro '___constant_swab32'
           (((__u32)(x) & (__u32)0x00ff0000UL) >>  8) |            \
                     ^
   In file included from drivers/leds/leds-lm3532.c:9:
   In file included from include/linux/regmap.h:20:
   In file included from include/linux/iopoll.h:14:
   In file included from include/linux/io.h:13:
   In file included from arch/s390/include/asm/io.h:72:
   include/asm-generic/io.h:490:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:119:21: note: expanded from macro '__swab32'
           ___constant_swab32(x) :                 \
                              ^
   include/uapi/linux/swab.h:22:12: note: expanded from macro '___constant_swab32'
           (((__u32)(x) & (__u32)0xff000000UL) >> 24)))
                     ^
   In file included from drivers/leds/leds-lm3532.c:9:
   In file included from include/linux/regmap.h:20:
   In file included from include/linux/iopoll.h:14:
   In file included from include/linux/io.h:13:
   In file included from arch/s390/include/asm/io.h:72:
   include/asm-generic/io.h:490:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:120:12: note: expanded from macro '__swab32'
           __fswab32(x))
                     ^
   In file included from drivers/leds/leds-lm3532.c:9:
   In file included from include/linux/regmap.h:20:
   In file included from include/linux/iopoll.h:14:
   In file included from include/linux/io.h:13:
   In file included from arch/s390/include/asm/io.h:72:
   include/asm-generic/io.h:501:33: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writeb(value, PCI_IOBASE + addr);
                               ~~~~~~~~~~ ^
   include/asm-generic/io.h:511:59: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writew((u16 __force)cpu_to_le16(value), PCI_IOBASE + addr);
                                                         ~~~~~~~~~~ ^
   include/asm-generic/io.h:521:59: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writel((u32 __force)cpu_to_le32(value), PCI_IOBASE + addr);
                                                         ~~~~~~~~~~ ^
   include/asm-generic/io.h:609:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           readsb(PCI_IOBASE + addr, buffer, count);
                  ~~~~~~~~~~ ^
   include/asm-generic/io.h:617:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           readsw(PCI_IOBASE + addr, buffer, count);
                  ~~~~~~~~~~ ^
   include/asm-generic/io.h:625:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           readsl(PCI_IOBASE + addr, buffer, count);
                  ~~~~~~~~~~ ^
   include/asm-generic/io.h:634:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           writesb(PCI_IOBASE + addr, buffer, count);
                   ~~~~~~~~~~ ^
   include/asm-generic/io.h:643:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           writesw(PCI_IOBASE + addr, buffer, count);
                   ~~~~~~~~~~ ^
   include/asm-generic/io.h:652:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           writesl(PCI_IOBASE + addr, buffer, count);
                   ~~~~~~~~~~ ^
>> drivers/leds/leds-lm3532.c:737:34: warning: unused variable 'of_lm3532_leds_match' [-Wunused-const-variable]
   static const struct of_device_id of_lm3532_leds_match[] = {
                                    ^
   21 warnings generated.
--
>> drivers/leds/leds-pca963x.c:348:34: warning: unused variable 'of_pca963x_match' [-Wunused-const-variable]
   static const struct of_device_id of_pca963x_match[] = {
                                    ^
   1 warning generated.

# https://github.com/0day-ci/linux/commit/a98b683b6c841e96d2f36f884f12d6c8ded65713
git remote add linux-review https://github.com/0day-ci/linux
git fetch --no-tags linux-review Marek-Beh-n/Start-moving-parsing-of-linux-default-trigger-to-LED-core-a-cleanup-of-LED-drivers/20200918-063850
git checkout a98b683b6c841e96d2f36f884f12d6c8ded65713
vim +/of_gpio_leds_match +197 drivers/leds/leds-gpio.c

a314c5c0040aab Grant Likely 2011-02-22  196  
a314c5c0040aab Grant Likely 2011-02-22 @197  static const struct of_device_id of_gpio_leds_match[] = {
a314c5c0040aab Grant Likely 2011-02-22  198  	{ .compatible = "gpio-leds", },
a314c5c0040aab Grant Likely 2011-02-22  199  	{},
a314c5c0040aab Grant Likely 2011-02-22  200  };
472b854bbc0b55 Paolo Pisati 2014-03-06  201  

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202009181021.cy2AfXte%25lkp%40intel.com.

--dDRMvlgZJXvWKvBx
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
hqsoZ8QBAA==

--dDRMvlgZJXvWKvBx--
