Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBZ6H277QKGQEEDKQZ7A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id AE11C2EC10B
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 Jan 2021 17:23:04 +0100 (CET)
Received: by mail-pf1-x437.google.com with SMTP id 15sf1973569pfu.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 06 Jan 2021 08:23:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609950183; cv=pass;
        d=google.com; s=arc-20160816;
        b=QvMlT3PH3HLbOdnmw2CGrPH75Gyz8cqaThEtnPtx4merTTxgA+5ZYWTEDcuWOLE8Lo
         82vqNgURmXiWPmA2yIQZYT8tXkocDkkMU+SsUhpJm8otoLta9VK4KXnX5DxuoKUfneJ6
         NsDC//Zj1MOvGBalh5/PEqy2j3caru6bflU9zLGenejonDtzq/CEDmAEFCaEha4LKGvy
         l0W5Ror9ttomQI+W1jk87KVFjloS3NY0EfmrU+2Bd71mrJczIC7pnFwwvacnNTOaDHh/
         5jSKMd2luORUS7aGp9UzZe77xzFK+Pl8Vve3QkeYmEN6vURT7bv3O5W0y8kd6NCMzebv
         vMPw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=c0lPes5pBpXRFgvobz82nmkajWOaeK6vGYdmnHrjCaY=;
        b=b8f/GgRmTbrmVPK92vuQ2EiA0ivewirjiF2jwydHBFeShRlLTc24ikfOkNshjnzgUN
         KEPfPKdTRM7z941nV/KTxXA8lo1EspjOFeNbpeJ22Y5DEJK9GoaqT6B4L16WNup46x8w
         kY1aP6PxRrOPygWtS47+ZvbXITIEqyNlR8iG2lLh4ZOtYzzx+fH7EpPEkop5Yk5ME7vu
         IlUtOEHJtiNphF3q3iU6UcyXc9UnvHypBaJryQ/NL7OMkGNeiTPxZzy29b92J2wD7G8v
         LG8t6z5mr/OP61ZMliqrbU7am+Y+v8Bq2cztkpjAm+j9DA7ZjaKhve4mwoysYUPriY1J
         hKCA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=c0lPes5pBpXRFgvobz82nmkajWOaeK6vGYdmnHrjCaY=;
        b=StMG7Syf4SSoTtaG5g3zU3LRdawdZSUduD0qY8oHftuznQnwzBkb32vy0+A204+oae
         pWnFWtEOS8GloUuGYHtL3+kPSuWWEpKIGjLeC+uz0YVEpoTjsQluAjigODKex5YcJ4tC
         PtGUbOce2mVqVaN20e4QQJHUAlwDGONb9SzYpec1hRkMbXxD4jRMBaljE+0ztmd+/oLu
         6FVSKez//3Ygol9fPobL1Kz6Y2q/Ognn7hPSYMMZhJ19BjRLG7ELzRzgu9u1LqHUoEhB
         RBEFq8DiC0OKBJ9spl45JywclLo40wRjctk6zsYW1k/Ec0T/Aut/dDbTB5xTFgs09MtQ
         D3gQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=c0lPes5pBpXRFgvobz82nmkajWOaeK6vGYdmnHrjCaY=;
        b=evpeit1BzQuOQwhEn6707UEzQIWHvGEujwddeVyPGC4kFg0RRESqTtHRh2nf7G3K8z
         9rOgOPk2hiPa59SOHwDnLGcqdwfvd/OcAIhxpb/V0Dm/KHrDaCCTYoWow1rIl8agx0nC
         /A5LMhwAvLlp+pYalLaNTBbRjyheDedUz3Kqcz+DwO+sgIk2Y5wfAvxeSlprW80HH8zF
         rT/NpdoGAL6OF4/mOALqnN50/l9TavhNU41QOZ/czP6C+x3xGpGXHlX4tdR5u0baaVc9
         64heLerhs/tz/u9NbKCqMj4UHKTFxaIXxThSDrJnDNo6ngSh19CvQsTgJjcDfYvu3/VH
         J8RA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533kyx89kH2AfpxncC1lfAX7IsSCf3xY38o+1UpPa/gPc7Ay/RXA
	Ozf5PRF0XcChG3J8lDyZbvE=
X-Google-Smtp-Source: ABdhPJx24trloyTtxOfjPiT3QNN/H2fBJOf7LoV0AymPtUY/vz7MQJvXdK/pSn83NA40uHOUSxpanQ==
X-Received: by 2002:a17:902:228:b029:da:6be8:ee22 with SMTP id 37-20020a1709020228b02900da6be8ee22mr4994732plc.44.1609950183159;
        Wed, 06 Jan 2021 08:23:03 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:a609:: with SMTP id u9ls1677395plq.7.gmail; Wed, 06
 Jan 2021 08:23:02 -0800 (PST)
X-Received: by 2002:a17:90b:f16:: with SMTP id br22mr4914625pjb.221.1609950182413;
        Wed, 06 Jan 2021 08:23:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609950182; cv=none;
        d=google.com; s=arc-20160816;
        b=K4jcd1zg2lJLjmggUYGV71YFa7hP93PusswF7x6nkAmxfQEad+hRRgWQ0b72UKpY/Y
         e73s9OlSj76Mj/47hfsB/V85mZ+tCfVsOUAg9/5CderewEFzA7hwxlXin85PE39PRIY5
         g2P0MoUZcyFogdbX9XWHybuPF3T0bBaMVlwOc8QLc1Ayu+xP9Va9rOU8GDIl2CGw2DRb
         HTfDdfgEvbi4qzIn/mMy8CCAe1D7DnF3K/Qxm4wfSwuo5RQCECQDrgEZMezAfWY435YL
         +sFLk4+yormymyWNi05VTu1KAe873w50RxvOy6AoRsoREuUSsCz176oInqmiuxK7RUoG
         2pzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=EtFK0BsSQ/ZJ2Kww/bD7y+SsVKnscFp2jE1thLUfV5Q=;
        b=IWew8DIxeYfoQzCA81Gv8yvL2xGd0W+6XXhdMm0bqv/4M28vOXStnmBmIKIoSrbGJY
         QTq+H4k9SbVGokO3FAoWpIQKFpz8L/b0zV79DqCiYn47ejdMRf9Xgp4yk5468XheActq
         gPuHV4LWF4iIHiURmiDlEAJYL3AZQUsfBE/Fw2ym7c8HUI2W24CU0LiXv1zYzaVQa6T6
         QGNZpbLD7LOftjSZKfgAxOtt9FPkezGsrxcYDsRdW+9MpkNIRlW32n1KbqgfC83PISkW
         sHU+3azuXY14KOpBsI/5Bjx3PVnufiry4V02lP5bdeazUW3FkXfqpIAe1tOWmN5pVbZh
         HNyA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga11.intel.com (mga11.intel.com. [192.55.52.93])
        by gmr-mx.google.com with ESMTPS id r2si197332pls.2.2021.01.06.08.23.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 06 Jan 2021 08:23:02 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) client-ip=192.55.52.93;
IronPort-SDR: bcahCImiYAuKFqd7JJBiLdKFYKUZnM8CzOfpVgqm2bLwsSgF/MMeiz0aIB7NlZZ5N4axXKb2eb
 j4+U5suS3zWw==
X-IronPort-AV: E=McAfee;i="6000,8403,9855"; a="173790815"
X-IronPort-AV: E=Sophos;i="5.79,480,1602572400"; 
   d="gz'50?scan'50,208,50";a="173790815"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 Jan 2021 08:23:01 -0800
IronPort-SDR: mZLbNppkF1v25ZLbBV0HL5y2xnTLYh+oL7YjB4SYAV82L8/J7Lw+rH++eojhZ39SeZgAk22avo
 dQ6ANXBwC+pA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,480,1602572400"; 
   d="gz'50?scan'50,208,50";a="346703499"
Received: from lkp-server02.sh.intel.com (HELO 4242b19f17ef) ([10.239.97.151])
  by orsmga003.jf.intel.com with ESMTP; 06 Jan 2021 08:22:57 -0800
Received: from kbuild by 4242b19f17ef with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kxBaK-000918-Mx; Wed, 06 Jan 2021 16:22:56 +0000
Date: Thu, 7 Jan 2021 00:22:08 +0800
From: kernel test robot <lkp@intel.com>
To: Tony Lindgren <tony@atomide.com>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-input@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-omap@vger.kernel.org, Arthur Demchenkov <spinal.by@gmail.com>,
	Carl Philipp Klemm <philipp@uvos.xyz>,
	Merlijn Wajer <merlijn@wizzup.org>, Pavel Machek <pavel@ucw.cz>,
	ruleh <ruleh@gmx.de>, Sebastian Reichel <sre@kernel.org>
Subject: Re: [PATCH 3/4] Input: omap4-keypad - use PM runtime to check keys
 for errata
Message-ID: <202101070005.gGLhtbyg-lkp@intel.com>
References: <20210106125822.31315-4-tony@atomide.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="mYCpIKhGyMATD0i+"
Content-Disposition: inline
In-Reply-To: <20210106125822.31315-4-tony@atomide.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted
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

Hi Tony,

I love your patch! Perhaps something to improve:

[auto build test WARNING on input/next]
[also build test WARNING on linus/master v5.11-rc2 next-20210104]
[cannot apply to hid/for-next linux/master]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Tony-Lindgren/Lost-key-up-interrupt-handling-for-omap4-keypad/20210106-210045
base:   https://git.kernel.org/pub/scm/linux/kernel/git/dtor/input.git next
config: s390-randconfig-r024-20210106 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 5c951623bc8965fa1e89660f2f5f4a2944e4981a)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install s390 cross compiling tool for clang build
        # apt-get install binutils-s390x-linux-gnu
        # https://github.com/0day-ci/linux/commit/69f44d8d3d1568dd3f330a46f6173a1bfc372ebd
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Tony-Lindgren/Lost-key-up-interrupt-handling-for-omap4-keypad/20210106-210045
        git checkout 69f44d8d3d1568dd3f330a46f6173a1bfc372ebd
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=s390 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

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
   include/uapi/linux/swab.h:19:12: note: expanded from macro '___constant_swab32'
           (((__u32)(x) & (__u32)0x000000ffUL) << 24) |            \
                     ^
   In file included from drivers/input/keyboard/omap4-keypad.c:15:
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
   In file included from drivers/input/keyboard/omap4-keypad.c:15:
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
   In file included from drivers/input/keyboard/omap4-keypad.c:15:
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
   In file included from drivers/input/keyboard/omap4-keypad.c:15:
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
   In file included from drivers/input/keyboard/omap4-keypad.c:15:
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
>> drivers/input/keyboard/omap4-keypad.c:536:32: warning: unused variable 'omap4_keypad_pm_ops' [-Wunused-const-variable]
   static const struct dev_pm_ops omap4_keypad_pm_ops = {
                                  ^
   21 warnings generated.

Kconfig warnings: (for reference only)
   WARNING: unmet direct dependencies detected for MFD_SYSCON
   Depends on HAS_IOMEM
   Selected by
   - MTD_NAND_STM32_FMC2 && MTD && MTD_RAW_NAND && (MACH_STM32MP157 || COMPILE_TEST
   - MTD_NAND_MESON && MTD && MTD_RAW_NAND && (ARCH_MESON || COMPILE_TEST
   - POWER_RESET_OCELOT_RESET && POWER_RESET && (MSCC_OCELOT || COMPILE_TEST
   - INGENIC_TCU_IRQ && (MIPS || COMPILE_TEST
   - PHY_BCM_SR_PCIE && OF && (ARCH_BCM_IPROC || COMPILE_TEST
   - PHY_HI3660_USB && (ARCH_HISI && ARM64 || COMPILE_TEST
   - PHY_HISTB_COMBPHY && (ARCH_HISI && ARM64 || COMPILE_TEST
   - PHY_DA8XX_USB && (ARCH_DAVINCI_DA8XX || COMPILE_TEST
   WARNING: unmet direct dependencies detected for MFD_STM32_TIMERS
   Depends on HAS_IOMEM && (ARCH_STM32 && OF || COMPILE_TEST
   Selected by
   - STM32_ADC_CORE && IIO && (ARCH_STM32 || COMPILE_TEST && OF && REGULATOR


vim +/omap4_keypad_pm_ops +536 drivers/input/keyboard/omap4-keypad.c

   535	
 > 536	static const struct dev_pm_ops omap4_keypad_pm_ops = {
   537		SET_RUNTIME_PM_OPS(omap4_keypad_runtime_suspend, NULL, NULL)
   538	};
   539	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202101070005.gGLhtbyg-lkp%40intel.com.

--mYCpIKhGyMATD0i+
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
l5HiQMid/g9lIJllMhUBAA==

--mYCpIKhGyMATD0i+--
