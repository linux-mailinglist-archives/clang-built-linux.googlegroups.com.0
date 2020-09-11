Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB4ON5T5AKGQEIBYKY6Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103b.google.com (mail-pj1-x103b.google.com [IPv6:2607:f8b0:4864:20::103b])
	by mail.lfdr.de (Postfix) with ESMTPS id CFB90265A81
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Sep 2020 09:27:46 +0200 (CEST)
Received: by mail-pj1-x103b.google.com with SMTP id o9sf1651573pjg.7
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Sep 2020 00:27:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599809265; cv=pass;
        d=google.com; s=arc-20160816;
        b=Gvty44jBvgz7Eu2dWi5AzYkG6wqaajxq9tJBEFM0ABV51acmSpjsjiFUJZsp9Pyny1
         eKLnLP3TD/HmD5k7YhmtBaHt8C7x0H7ywA1yySNy/Fsgp2N2aZwe6tt2lcQ19I3v6gG6
         I+4UsdDYWucFxrJkjigJKKKW8Krh03ijtn6FtHs3DXjqVAJYOh/QV+2yKe3A9ZDzPwUJ
         MED3IiOiojSK1qgym8LejxpCQFxV7AKYKKWJ/I00NKLMqGnU2WwpeUHJW4emtYI0RY01
         USPQI+LGhuvaxRgwGoxlpHKTju9k5H6cn1ZOa6/kww55s35mWHqWv0O+AIG7dAtv+YRX
         Z8Fw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=vGVmJ4JnUzCDUksa9rA+wEVMPV0GvQuadYv0SSdvo4A=;
        b=YRminG++S5wlbist8wGmSLXNrBC4ndefu3a/mcH6w43csZGsZtQmX+XvWHUdftaBe+
         Qgvsef2e8rh3O7CI386IDJcmnYAgVGN99Xf9gC1uLybcg9CkiKjNJFDFRyCvzKxL6bxU
         jBDM21ead+vyHhtaRFNOKYuVBCFwE5dCAI15XQ6YnuodOzo//Z2Ikl0B3g9wc6bz95Up
         GdaW/c/M1XJAjHwEnitYyIIxkEtwJkWl9CToqPFdr0JWTi8zoldvY24SXykG7tECU4AA
         MiHjTj+DIvb2QnaGdN4NHWpVlPQ2i7QxWVndrZHZcCSgaFCpq2ZQ6GKjHCtuC8o5lBQm
         kM6A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vGVmJ4JnUzCDUksa9rA+wEVMPV0GvQuadYv0SSdvo4A=;
        b=CTK6VxtXvtht10Kn/z2BAqHOpT/c9qqWF9G44cz2y/Gz8X01QS3s2+NvVySOWE1BJp
         KeKPnWa+FhLtuYoDa5dMXZsM8yBDE3yAJ2iUmOjz6E0bhS5NAs01jBSC9l0kr8xEBgoh
         YVShdRJgmboAiooYtiADWuf1bCCVlXc73+uywOvemelIxbC414ICF39tFbgcDOiLIXqj
         D/J0hz26FX6YG7fJivNDG8KtOMP3xrKB8VtClVhXk9rP/y9517SSVD2NkrxYtxKFtYji
         uE4w5abhszehYUyG6Wetp1Rvk73i8/HD/txghoY+kN/piYL6eMFECpOjabRSnwdc4Ms3
         Yo9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=vGVmJ4JnUzCDUksa9rA+wEVMPV0GvQuadYv0SSdvo4A=;
        b=RaqeY8Lb3WJrjPLyUHRa5WDPiEr8iw/qzA3x3/KKxLJ0b4Uy4CD9goD1rDW/UbAZ9a
         jupk3KwgK2nUjcb/g01NQJS55MNtSAB1ee1bSS8zBgk8x1WS2MFUGldevaEWXG1l5cLU
         Qm/zzeU+cAOOuSuHMT2gA91+e88zfQkkzfctOgDUG0Q2FyYlpn8bv/kDg4CmR3BDFDAJ
         dzoMjlEgm8lDYOG5pg5wA1+Fv3GX+fyXxYUepTG69l/Pt9J+C3ZE8QIlvLFl3DnrxlWb
         K4PKUpkJYa6doeeRTQymqfwQzQm0fUHl/OgTqK1h3k9TRm2Lj90Eoc17+YYHCkvTVcHR
         drww==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531tuCsuwyl+8BUA0Dyv8qINIDzl7tHX2zfkrBDS0hOVV9n4cX6M
	4V8kmXUGDqCUVCT2yVooQ5Y=
X-Google-Smtp-Source: ABdhPJx9mAOE39BnB6Q/MuwqzQsM+XqePMdCE25ajFraI5OUiC5naZQPg+FNWDB6uL7lNxBrz/Bamw==
X-Received: by 2002:a62:e911:: with SMTP id j17mr1002847pfh.94.1599809265164;
        Fri, 11 Sep 2020 00:27:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:9250:: with SMTP id s16ls471662pgn.7.gmail; Fri, 11 Sep
 2020 00:27:44 -0700 (PDT)
X-Received: by 2002:aa7:81c4:: with SMTP id c4mr1045530pfn.70.1599809264480;
        Fri, 11 Sep 2020 00:27:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599809264; cv=none;
        d=google.com; s=arc-20160816;
        b=xU0iEQFlDW8GmeROFaz0zYibUy3gc/z0b20TQM4RsH91llaSTngAIZ3xDgikttQL2V
         dpmddUPsiGezxtYWcBmxPiXpfvm2XqvN4l8TBeiVFzokYqKPHVbksoDuRMwxVbebNrwy
         nDL/blMByfY92WwEizbFHvHcbVaF9ujXlWT7lylvUafjUhcsZx5fB50q0HoPKeP1I0yq
         Xk/mqJ1wXH0cOA+6Dhzvx3hSUyuGs1hjIkTXoahlnpT4w1pnXPUPSDIKnL8wRobfpwUj
         DdvzOrnwCcaXFLCsT19U5SrSePSiJA8ao/ZwQJzb5rooc/R57F5AalTmkwS+QQfPPvWG
         Q/nw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=wu7igJ/B7eUt6AFfzWXxU3PMfSGSI512BJJU7Dqn9lg=;
        b=Tfc2NLauBUDe1lBE9l+CukEX08lD94zZG5sORSFsLoX/AffgCcf0d0MXpwzg0GDUrW
         FIKZA9oSXgtWpa47hrBBbjoBDWwbWEcxLNbvjqUdWMF/SRl5njjuJa2x6Ftn2POa6WqV
         54O63e7tAUZAzvGuQcgVB9K4qbJFHm+DYkglCw+7vpBKwMABfKliO2DMUB+4wws1n6KJ
         3ciy9EnZgvmsD8fawkdNFPcfhdiWAZ0x3jRIex7YbPKiG4kZlut2p7Tv7TGfsAKBN5L8
         zYFMK5PRWgORBTvCO/sNnO4bNSnlG2cB1OGJxt+AviPIj4J2m5AO/tmuiN2+NKE/WY0m
         yacA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga04.intel.com (mga04.intel.com. [192.55.52.120])
        by gmr-mx.google.com with ESMTPS id o185si74262pfg.4.2020.09.11.00.27.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Sep 2020 00:27:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) client-ip=192.55.52.120;
IronPort-SDR: K630+9KKFsHi+lpnc+AxgxYUYdX731x0tvjw/l2H8E80ZBe+gcE0QrZ6Cwa0VlQfWDRhIX0S8M
 yP9mA5BtAInQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9740"; a="156109639"
X-IronPort-AV: E=Sophos;i="5.76,414,1592895600"; 
   d="gz'50?scan'50,208,50";a="156109639"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Sep 2020 00:27:43 -0700
IronPort-SDR: pNEQSqvfFZLKL/7tn2F675UNaj1bFZgWIfM4Gd4zgGpkgJvcSPUDGsRmXfNJCOmueGkDudfv+O
 H95YYCtPN5KA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,414,1592895600"; 
   d="gz'50?scan'50,208,50";a="449899079"
Received: from lkp-server01.sh.intel.com (HELO a75722977aa5) ([10.239.97.150])
  by orsmga004.jf.intel.com with ESMTP; 11 Sep 2020 00:27:41 -0700
Received: from kbuild by a75722977aa5 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kGdTA-00006w-NH; Fri, 11 Sep 2020 07:27:40 +0000
Date: Fri, 11 Sep 2020 15:27:11 +0800
From: kernel test robot <lkp@intel.com>
To: Kevin Kim <ckkim@hardkernel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Dongjin Kim <tobetter@gmail.com>,
	Olliver Schinagl <oliver@schinagl.nl>
Subject: [tobetter-linux:odroid-5.9.y 26/72] drivers/pwm/pwm-gpio.c:60:22:
 warning: no previous prototype for function 'gpio_pwm_timer'
Message-ID: <202009111507.MEFBBpwv%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="/04w6evG8XlLl3ft"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted
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


--/04w6evG8XlLl3ft
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://github.com/tobetter/linux odroid-5.9.y
head:   a17882c45f6b82a3646f55b5b179fdf7f332ab6a
commit: aaf1638fa462820bcbc5f711b79494eeda268f56 [26/72] ODROID-COMMON: pwm: gpio: Add a generic gpio based PWM driver
config: s390-randconfig-r032-20200911 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 0448d11a06b451a63a8f60408fec613ad24801ba)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install s390 cross compiling tool for clang build
        # apt-get install binutils-s390x-linux-gnu
        git checkout aaf1638fa462820bcbc5f711b79494eeda268f56
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=s390 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

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
   include/uapi/linux/swab.h:20:12: note: expanded from macro '___constant_swab32'
           (((__u32)(x) & (__u32)0x0000ff00UL) <<  8) |            \
                     ^
   In file included from drivers/pwm/pwm-gpio.c:23:
   In file included from include/linux/of_gpio.h:14:
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
   In file included from drivers/pwm/pwm-gpio.c:23:
   In file included from include/linux/of_gpio.h:14:
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
   In file included from drivers/pwm/pwm-gpio.c:23:
   In file included from include/linux/of_gpio.h:14:
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
   In file included from drivers/pwm/pwm-gpio.c:23:
   In file included from include/linux/of_gpio.h:14:
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
>> drivers/pwm/pwm-gpio.c:60:22: warning: no previous prototype for function 'gpio_pwm_timer' [-Wmissing-prototypes]
   enum hrtimer_restart gpio_pwm_timer(struct hrtimer *timer)
                        ^
   drivers/pwm/pwm-gpio.c:60:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   enum hrtimer_restart gpio_pwm_timer(struct hrtimer *timer)
   ^
   static 
   21 warnings generated.

# https://github.com/tobetter/linux/commit/aaf1638fa462820bcbc5f711b79494eeda268f56
git remote add tobetter-linux https://github.com/tobetter/linux
git fetch --no-tags tobetter-linux odroid-5.9.y
git checkout aaf1638fa462820bcbc5f711b79494eeda268f56
vim +/gpio_pwm_timer +60 drivers/pwm/pwm-gpio.c

    59	
  > 60	enum hrtimer_restart gpio_pwm_timer(struct hrtimer *timer)
    61	{
    62		struct gpio_pwm_data *gpio_data = container_of(timer,
    63							      struct gpio_pwm_data,
    64							      timer);
    65		if (!gpio_data->run) {
    66			gpio_pwm_off(gpio_data);
    67			gpio_data->pin_on = false;
    68			return HRTIMER_NORESTART;
    69		}
    70	
    71		if (!gpio_data->pin_on) {
    72			hrtimer_forward_now(&gpio_data->timer,
    73					    ns_to_ktime(gpio_data->on_time));
    74			gpio_pwm_on(gpio_data);
    75			gpio_data->pin_on = true;
    76		} else {
    77			hrtimer_forward_now(&gpio_data->timer,
    78					    ns_to_ktime(gpio_data->off_time));
    79			gpio_pwm_off(gpio_data);
    80			gpio_data->pin_on = false;
    81		}
    82	
    83		return HRTIMER_RESTART;
    84	}
    85	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202009111507.MEFBBpwv%25lkp%40intel.com.

--/04w6evG8XlLl3ft
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
t9D/ABrIFc6uWwEA

--/04w6evG8XlLl3ft--
