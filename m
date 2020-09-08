Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBZET335AKGQEBNJY5RA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33d.google.com (mail-ot1-x33d.google.com [IPv6:2607:f8b0:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id 8158D26121C
	for <lists+clang-built-linux@lfdr.de>; Tue,  8 Sep 2020 15:40:55 +0200 (CEST)
Received: by mail-ot1-x33d.google.com with SMTP id m8sf2362199otf.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 08 Sep 2020 06:40:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599572454; cv=pass;
        d=google.com; s=arc-20160816;
        b=nwjzLqHVxty/ikMemeITd+a/mfyELmhhEULXKTs95CquXYHTnrbZ1QGDkoYiQL7iJs
         TW3BW4kNATdPRd7Co66ejydcbsfe2Hx7BPSQZWA4X9BM/1GtCX5Vc9mYWco/7V9iO82s
         qMXYyCYHBe1f00KEfvGdtZFLNFndQ0vQV0Ye2DmNUnvCQ5j+zQ1q/S3atGSToa4ObO8W
         V/tTlRS6edaQf866HtmjpOXi/157MVZ42Fby6pzUdZKpEpGMkEhpspl7yGuIB0lnUCwO
         wpLLJ2kMWc+9dlh1Vxz3VqFB8w0YLLOPY/ZeqhnQrqyB8BGRhB92ibsAfCLdNENQGZM+
         9e6A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=nLUtUEoiBGo/UfVzgASmTW7eem+mqczgogg2haHUmtk=;
        b=fijWT1uOY+osjOopkBfcE89rdg0F0Dq11ZD/kZzilsBrZq1a0aAgZlRQ2zoMPILctm
         P8NLi84PSLN0pxA6EG+Q+xHxW0xh+Q/VpvbhczYZy589lCQuXMnkqn1Hs/Ho93Mg/VNc
         q1muo9hb8JJxDKww5QhCU3KHxtSmDjqMnW7EdyuwWCzUryHGQOqqpos6EtVeLVDL2CWW
         odhGvvUCgdSqp1WYWUmuIbk40HY8Y+c2hlK9foGCsSkeVe1sFXDLhD+omuusjisn0WQD
         gdIqLb1IwljzzYbcIAIPbAnNSa9gq+aW5socCqXUUwskA+YlgxXo3+H6bmFFduxArrUv
         abOw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nLUtUEoiBGo/UfVzgASmTW7eem+mqczgogg2haHUmtk=;
        b=ZW8Z/Ls8/Qsdy7Jz1GDa4d7EWMwQ73mT1io9GQ5K+yWA2aRtGy6YNQRFphic4MZdcy
         5QiGMX1B9vjR0w9/S87S9leTRrJiuEitCbMPIZTsNu7h/2Ac+zPaBFQefNwX9cKwclwq
         2/jFyO7CrlTMw7mabjey5S7gjMXy9UjphzSQIXQQUeykFhOH6xhwGETrjvkAhzVBQ9L0
         a2LyOSn3lMx0o4UOQbtXcB0YoqWzLwZwSfyGx6tN/QQgmEbSpJz1esUnl2ObXaVKvITQ
         37ad2MdmMz7ahoP/nwrW6QYdQrimzUNsOCodB23Eg5FxxVMBqLy0NbrYgzWi/8O0CS4a
         GHeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nLUtUEoiBGo/UfVzgASmTW7eem+mqczgogg2haHUmtk=;
        b=Pw/afB8p68wzUATWSdB/l0BvFHy66KCQSbMRV4tUMHlj5r3MkwvYMOeKWslfydp+44
         UNTPSaCWW//GKCBolL/rq6TUTXQj6s+CpspZ97JAjaiIX8akNM/8mrGAj14NH8bLD9n+
         dIN3TR2GiepLXkG4EGiUyFE4gvLah83ghbhPM7YRO23AIw9lGY8fm3LeAnUcJMYEdC0Z
         F3a0iueLbupyh1YGULBDzBC7WgjsWRCnVlCRjp5lE53fBGsCviUk/DraSuA03TH3gyMm
         Z2UWAfpSHTIB6LFcGOuVIxYY1ldFlKkVi/ynyTceItTZxBZ2Wp5vpPPDJFEo4CKilCwu
         5a3w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530qB64Iu8Hz0kaUuPOnxyzVicj8iXKG90to+3WrkBYsDU+LO1cA
	j04PW3jXbcsw4z9RTlpXfQo=
X-Google-Smtp-Source: ABdhPJyToIDTneYFtD8aJbPohzWtodRlEALgiwTt68OYW54f8eJnbByi0wp4N5oQr/gCotnWlE8f7A==
X-Received: by 2002:a9d:2782:: with SMTP id c2mr17786682otb.217.1599572452620;
        Tue, 08 Sep 2020 06:40:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1b72:: with SMTP id d18ls4970051ote.6.gmail; Tue,
 08 Sep 2020 06:40:50 -0700 (PDT)
X-Received: by 2002:a05:6830:1e56:: with SMTP id e22mr6692919otj.303.1599572450680;
        Tue, 08 Sep 2020 06:40:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599572450; cv=none;
        d=google.com; s=arc-20160816;
        b=FCIkdTkjz/f6VFum1HCPTwbd/3Q+m/BoSpF4/SRkVXQymyaRobyl8eIZC92StkxyU4
         /nwY14Tzhc0sNxZJZEBC5C2Qpo8+nLHAvNVMEhZCuxCgCBvFsseD8gMEKGkeYK/BUaEu
         /iEWAmIql3qs65wduWOp+cB7zKP9fWs3b00NUJMcNjx7AcRz5GHV4Lwp82ChRF2EtAVy
         GErIHmy0TkyENawrCVlvV1XFhQNzF/YJn7vgIqZxUr9tSBaDgvgc81WGab4sNPm0iJ83
         uI0O2aRXSOaXDi2qMCt1kWKg+1Dfun0tzWnvlj8FkLdnZqHonpH368A3C9Q5uInxczv9
         pVIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=MJy05qH3HQIOAivaaTPREllVVbtrUYeVC5pRvUaeMWM=;
        b=HoJIoYtuZnFzKuQzAH30lsiukQam/ZhVV7NxyPMYKCXUmCgq3aOlGLWeTJpM/iFVbI
         zHHch/LOCXJXJtfIGKxVxTaQu0MJyyZylwTjQYskZ0ewjvrY4JvtBg74NzzKcW64vLdH
         mrf8ql11clYsackvbi1vlONJ7CmcJ11o3/NCCUlH3DrwJHl/y3Vio6A0iRsM14h25o8q
         eI1SQiJdOiJ1GDhs2KEgMbW6ZGb5a2eIsEgslqRcr8rzqNxZWO4Mn6uHSlNDxS4WB03U
         AsVayUd3Xwp+NOyX4xtO7enU+hYGfiaoiSZewHukLkvuQtp/GWPyVwulgGTQP/CB5pIo
         lGzQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga17.intel.com (mga17.intel.com. [192.55.52.151])
        by gmr-mx.google.com with ESMTPS id k144si544017oih.5.2020.09.08.06.40.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 08 Sep 2020 06:40:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) client-ip=192.55.52.151;
IronPort-SDR: 5Tn6r5ImYknighGVqiJk94YFgapgUTm4eTAcIyCn2TEbR3imV7pt0xvu+JvLOR1zTAXotC/i+q
 KJWTq2We892w==
X-IronPort-AV: E=McAfee;i="6000,8403,9737"; a="138173979"
X-IronPort-AV: E=Sophos;i="5.76,405,1592895600"; 
   d="gz'50?scan'50,208,50";a="138173979"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Sep 2020 06:40:49 -0700
IronPort-SDR: 95RzcBT9f5MkMCGgRLD+YOm/UhRvegxgX9uOLqunxogVuWHNZvupgSOqtGO+X0FX4283OPdQzd
 XMzAM3U2E/2Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,405,1592895600"; 
   d="gz'50?scan'50,208,50";a="407132733"
Received: from lkp-server01.sh.intel.com (HELO fc0154cbc871) ([10.239.97.150])
  by fmsmga001.fm.intel.com with ESMTP; 08 Sep 2020 06:40:45 -0700
Received: from kbuild by fc0154cbc871 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kFdrY-00008a-TK; Tue, 08 Sep 2020 13:40:44 +0000
Date: Tue, 8 Sep 2020 21:39:57 +0800
From: kernel test robot <lkp@intel.com>
To: Pierre Morel <pmorel@linux.ibm.com>, linux-kernel@vger.kernel.org
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	pasic@linux.ibm.com, borntraeger@de.ibm.com, frankja@linux.ibm.com,
	mst@redhat.com, jasowang@redhat.com, cohuck@redhat.com,
	kvm@vger.kernel.org, linux-s390@vger.kernel.org,
	virtualization@lists.linux-foundation.org
Subject: Re: [PATCH v11 2/2] s390: virtio: PV needs VIRTIO I/O device
 protection
Message-ID: <202009082120.CffUI4N9%lkp@intel.com>
References: <1599471547-28631-3-git-send-email-pmorel@linux.ibm.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="MGYHOYXEY6WxJCY8"
Content-Disposition: inline
In-Reply-To: <1599471547-28631-3-git-send-email-pmorel@linux.ibm.com>
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


--MGYHOYXEY6WxJCY8
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Pierre,

I love your patch! Perhaps something to improve:

[auto build test WARNING on s390/features]
[also build test WARNING on linus/master v5.9-rc4 next-20200903]
[cannot apply to linux/master kvms390/next]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Pierre-Morel/s390-virtio-let-arch-validate-VIRTIO-features/20200907-174101
base:   https://git.kernel.org/pub/scm/linux/kernel/git/s390/linux.git features
config: s390-randconfig-r006-20200908 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 5f5a0bb0872a9673bad08b38bc0b14c42263902a)
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

   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:119:21: note: expanded from macro '__swab32'
           ___constant_swab32(x) :                 \
                              ^
   include/uapi/linux/swab.h:20:12: note: expanded from macro '___constant_swab32'
           (((__u32)(x) & (__u32)0x0000ff00UL) <<  8) |            \
                     ^
   In file included from arch/s390/mm/init.c:20:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:22:
   In file included from include/linux/writeback.h:14:
   In file included from include/linux/blk-cgroup.h:23:
   In file included from include/linux/blkdev.h:25:
   In file included from include/linux/scatterlist.h:9:
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
   In file included from arch/s390/mm/init.c:20:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:22:
   In file included from include/linux/writeback.h:14:
   In file included from include/linux/blk-cgroup.h:23:
   In file included from include/linux/blkdev.h:25:
   In file included from include/linux/scatterlist.h:9:
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
   In file included from arch/s390/mm/init.c:20:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:22:
   In file included from include/linux/writeback.h:14:
   In file included from include/linux/blk-cgroup.h:23:
   In file included from include/linux/blkdev.h:25:
   In file included from include/linux/scatterlist.h:9:
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
   In file included from arch/s390/mm/init.c:20:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:22:
   In file included from include/linux/writeback.h:14:
   In file included from include/linux/blk-cgroup.h:23:
   In file included from include/linux/blkdev.h:25:
   In file included from include/linux/scatterlist.h:9:
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
>> arch/s390/mm/init.c:165:5: warning: no previous prototype for function 'arch_has_restricted_virtio_memory_access' [-Wmissing-prototypes]
   int arch_has_restricted_virtio_memory_access(void)
       ^
   arch/s390/mm/init.c:165:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   int arch_has_restricted_virtio_memory_access(void)
   ^
   static 
   In file included from arch/s390/mm/init.c:11:
   In file included from include/linux/signal.h:5:
   In file included from include/linux/bug.h:5:
   In file included from arch/s390/include/asm/bug.h:68:
   In file included from include/asm-generic/bug.h:20:
   In file included from include/linux/kernel.h:12:
   In file included from include/linux/bitops.h:29:
   arch/s390/include/asm/bitops.h:69:4: error: invalid operand in inline asm: 'oi	$0,${1:b}'
                           "oi     %0,%b1\n"
                           ^
   arch/s390/include/asm/bitops.h:69:4: error: invalid operand in inline asm: 'oi	$0,${1:b}'
   arch/s390/include/asm/bitops.h:69:4: error: invalid operand in inline asm: 'oi	$0,${1:b}'
   21 warnings and 3 errors generated.

# https://github.com/0day-ci/linux/commit/e047ab912af7232ee2d97fd0cb83046c10aca7cf
git remote add linux-review https://github.com/0day-ci/linux
git fetch --no-tags linux-review Pierre-Morel/s390-virtio-let-arch-validate-VIRTIO-features/20200907-174101
git checkout e047ab912af7232ee2d97fd0cb83046c10aca7cf
vim +/arch_has_restricted_virtio_memory_access +165 arch/s390/mm/init.c

   164	
 > 165	int arch_has_restricted_virtio_memory_access(void)
   166	{
   167		return is_prot_virt_guest();
   168	}
   169	EXPORT_SYMBOL(arch_has_restricted_virtio_memory_access);
   170	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202009082120.CffUI4N9%25lkp%40intel.com.

--MGYHOYXEY6WxJCY8
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
DBCZGrZ4gQUZKexF+gVDSBqQBjMBAA==

--MGYHOYXEY6WxJCY8--
