Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBEEXYL3AKGQER6Z6QOQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 96F4C1E745E
	for <lists+clang-built-linux@lfdr.de>; Fri, 29 May 2020 06:12:02 +0200 (CEST)
Received: by mail-pf1-x43d.google.com with SMTP id w24sf1020611pfq.10
        for <lists+clang-built-linux@lfdr.de>; Thu, 28 May 2020 21:12:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590725521; cv=pass;
        d=google.com; s=arc-20160816;
        b=pSuQ7ARn92YEen3iw6QXvzRwaWA/NkKfL4dT+YLtWhIa0UTX+KZhTEHtTUhR0MpdTj
         dMI1aOfQstZq6hqgXkn1pvAzg2q5WWCktkAWAXiYBHoAxfCrw1zBMXhfwCWTnt2Jsiq2
         o1W4lztJaQzAaN6Rau7B0jzzAASxsW0mYrtx3ADDNsa2o4G+YMveUQDa/XbSDM7BQ01K
         mTjJ5U/YKc92l5HhZYY9D34WH44uN20Ni0eDfPKUbqX/npyJoWbT4YFM78jQf4TdA8Pz
         9it8Yi4hQO572EzDFYDjMUTiwbksdkGFYMPoTTtPyomXQDAKLapL8j4gnZVvkPZb8wMC
         6EMg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=2PSrrHYkd3qH/8zDs27OXGnoGGCPbeVcrV9kC2z6hh8=;
        b=WdmbBOGMP9bYarnWKzr0lQv67AM7UFabRbGlu0ZdGSHbQTIYKRttKmZCbRr7g8xA/S
         ERV1t8njkij4u6bQis7Rhym5dgTg9pFl2SrCyqUGufKwWPRYqXTaORsdATcMkXX40IFR
         0VrD2c6psm9lQsOzPh9sOHYCDOBiHmiQDIRe8XAEzxS1xnNlZXfWP9DAHmPIHRAcZR0c
         nDOx7GWF+k1/+6pGsU1XCx2/4cHIqTviSm1O34EpMAG3RY5T/RwRVM9+CprM3Nu5W+EI
         hfx0pXbDgaVPtETxBvraaSUddCNo8PXkUbaYq/FQdChmfTKqbCWB5biA3u6QZgONgRvb
         tOhA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2PSrrHYkd3qH/8zDs27OXGnoGGCPbeVcrV9kC2z6hh8=;
        b=SvUD/i4YtcSunM1rcJNQHI3PY+Z+W0mcoAH32AvD5nB07NBejzYnEHEKvpGLr9ISDr
         +JVkYYnoZb85/my4foO4c5isQLC/1G2tsvCoYUvRzxudDR8zOkQicjj3LpDGLFPZRAwX
         7dz4Jwd7si3cjvhjjZ+k79oDyPYdjl4M5tLtXvvlbaxPj4KDbv4jkDb+8Xdnz2iwrXLq
         4lfJRRM2LV4eRUDPIU6fjao/2uGAMiW/VF3zWxtH1wncA0kludGX4giU3ZArfe0ONjVy
         IO3WbqjfBibYI3+E2TBPweKxmfZtESbtzwpKqSL3tWYSY0FpnX7Ygs3voqZfcswFi2th
         H2mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=2PSrrHYkd3qH/8zDs27OXGnoGGCPbeVcrV9kC2z6hh8=;
        b=IOTp6hOmdLMVmbtImOJnWazoSpjzEpxiqFGbW1GQ9jUf9ve5zkOm8tUJHiIm3kgFhz
         zcX3yN2pVGOVRbYLju/mproeYgFyhfmOsUXsFY1DwcVHkolqvMn5GQnTybENITYrk1TO
         vNlvjI2Nm+ItgOacIiaN9jPFgIZX8xJpyF08crIpW+6bcVsvPBb4Of1ylE2pSSUJQfpX
         Sgibz4od8Rd8usoqjVaLaPQ9SZABK3HPHI7S2BKiNMXpGGsPdodIZ72tNSDKR0ZhtTzJ
         W6tkY9EcUz4JsOuKF5B4r0xH4Q00ejleZNa26ib20sX0QrU8phlpQb9ZKndbz+2j8hbV
         UMCw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5309FJRTjTGEUW3wXlR4z19fpqQImwNTuXl3MbB1zI3WqCdVWINX
	VYVumBhOsvnr+0Tm6YR5i7g=
X-Google-Smtp-Source: ABdhPJygrFVbkMs1Q34p9rp9aJ54aBRwt911DBAny+MUqbf+fvbxkb9oOmEmCMCpEg/ColLdT7vVMw==
X-Received: by 2002:a17:90b:e0c:: with SMTP id ge12mr7684785pjb.3.1590725521028;
        Thu, 28 May 2020 21:12:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:4c84:: with SMTP id my4ls2269698pjb.0.gmail; Thu, 28
 May 2020 21:12:00 -0700 (PDT)
X-Received: by 2002:a17:902:9d94:: with SMTP id c20mr7022186plq.224.1590725520442;
        Thu, 28 May 2020 21:12:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590725520; cv=none;
        d=google.com; s=arc-20160816;
        b=NYHygRYpp04NS9G2fVwGaEB5a6r3IK98TDKo4G18HGN/z3j0X+4FulHob5lE7zBtdA
         IRmW8A3g2Zj4fa9blMx2x49U9NNGaNarp3ef0TyJ44dHy+dK3TkWVitz4UMlR982iCAE
         wmvnEX6ml3tKzRS/5zE8t+cw/flSHlySrz8A+as5Yp7UUKAjP/gsWsYZzLsfwsl+qlmS
         h8jwTVp8kUSZ8LNLuFPAeMSmim/HlnCTNcOQip5xf/fYwyGFgeDYfiwI3AhkBtjnE0Ae
         +1NKf1QMO60CBTTqQ7zlg4Ptm2GQgyQs+ZxJQvpfkhvWFptfEc6EOBVSIlMu86zKj6VM
         ryPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=u6zOnvBqJcW44cORDWevy9l1uHQaVPt3u3oe3LdmhNY=;
        b=SIBHt08bva8/Ifi01UmrgWC+NrDtzuhgcdVxxJtJij9LTLszLMd6xAahPqoBx1y5kL
         zBn2klTxQWkVsvPe0PPwghl25OioJSw+IaOeO7r41fSZ2lWlQ68b9rKWUmdMz5Bmewjj
         eYQp14+DZCyrWJQw0boKwP/26f5MafIhMSxrtoTPlVuqAVzb4Ju4432H9cGZ+9PjtoNc
         UzQJlAFiPTwTO96mNTxF7fCVSRDxx+agYk4nQ2P58y00ndjXMRP32di+RWIG577tcXyk
         pYXh3mgjC85VqTLISki63FcHOIQqnRpV+OIbz3TVyhIqv5HNh2OsFxRQGiwQQ4oIYb7Y
         LAOg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga11.intel.com (mga11.intel.com. [192.55.52.93])
        by gmr-mx.google.com with ESMTPS id l22si575286pgt.3.2020.05.28.21.12.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 May 2020 21:12:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) client-ip=192.55.52.93;
IronPort-SDR: MWuHGLNrOBp0dTA2akddjYytimF2PexyT+z8TugXK1Wla202oIzE/zDAvevjVaAia36VAVcU6A
 KqZla9OFo/jA==
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 May 2020 21:11:59 -0700
IronPort-SDR: VkcbB/mUGHNRREGrbkjZAzIDmvXt0OHnJ4aoe/DCH3/0/wB4tCf+iLBrvFA2e0s8y1C+i4qD2T
 +KdS2yDg8vXA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,447,1583222400"; 
   d="gz'50?scan'50,208,50";a="443233036"
Received: from lkp-server02.sh.intel.com (HELO 5e8f22f9921b) ([10.239.97.151])
  by orsmga005.jf.intel.com with ESMTP; 28 May 2020 21:11:57 -0700
Received: from kbuild by 5e8f22f9921b with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1jeWNB-0000KW-2i; Fri, 29 May 2020 04:11:57 +0000
Date: Fri, 29 May 2020 12:11:20 +0800
From: kbuild test robot <lkp@intel.com>
To: Peter Zijlstra <peterz@infradead.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [peterz-queue:locking/irqstate 2/6] include/linux/irqflags.h:36:22:
 warning: declaration specifier missing, defaulting to 'int'
Message-ID: <202005291217.imM2QEbR%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="SUOF0GtieIMvvwua"
Content-Disposition: inline
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


--SUOF0GtieIMvvwua
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/peterz/queue.git locking/irqstate
head:   53a5109bcbaecd7ee2639bd53422eeea18b1eb2a
commit: d2706a31db9d55bf0c4c6d2c60beb02b4459805e [2/6] lockdep: Change hardirq{s_enabled,_context} to per-cpu variables
config: s390-randconfig-r006-20200528 (attached as .config)
compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 2d068e534f1671459e1b135852c1b3c10502e929)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install s390 cross compiling tool for clang build
        # apt-get install binutils-s390-linux-gnu
        git checkout d2706a31db9d55bf0c4c6d2c60beb02b4459805e
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=s390 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kbuild test robot <lkp@intel.com>

All warnings (new ones prefixed by >>, old ones prefixed by <<):

In file included from drivers/pci/access.c:2:
In file included from include/linux/pci.h:35:
In file included from include/linux/kobject.h:20:
In file included from include/linux/sysfs.h:16:
In file included from include/linux/kernfs.h:12:
In file included from include/linux/mutex.h:16:
In file included from include/linux/spinlock_types.h:18:
In file included from include/linux/lockdep.h:23:
In file included from arch/s390/include/asm/percpu.h:5:
In file included from include/linux/preempt.h:78:
In file included from arch/s390/include/asm/preempt.h:6:
In file included from include/linux/thread_info.h:38:
In file included from arch/s390/include/asm/thread_info.h:27:
In file included from arch/s390/include/asm/processor.h:41:
>> include/linux/irqflags.h:36:22: warning: declaration specifier missing, defaulting to 'int'
DECLARE_PER_CPU(int, hardirqs_enabled);
^
int
include/linux/irqflags.h:36:1: warning: declaration specifier missing, defaulting to 'int'
DECLARE_PER_CPU(int, hardirqs_enabled);
^
int
include/linux/irqflags.h:37:22: warning: declaration specifier missing, defaulting to 'int'
DECLARE_PER_CPU(int, hardirq_context);
^
int
include/linux/irqflags.h:37:1: warning: declaration specifier missing, defaulting to 'int'
DECLARE_PER_CPU(int, hardirq_context);
^
int
In file included from drivers/pci/access.c:2:
In file included from include/linux/pci.h:39:
In file included from include/linux/io.h:13:
In file included from arch/s390/include/asm/io.h:72:
include/asm-generic/io.h:466:31: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
val = __raw_readb(PCI_IOBASE + addr);
~~~~~~~~~~ ^
include/asm-generic/io.h:479:45: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
val = __le16_to_cpu(__raw_readw(PCI_IOBASE + addr));
~~~~~~~~~~ ^
include/uapi/linux/byteorder/big_endian.h:36:59: note: expanded from macro '__le16_to_cpu'
#define __le16_to_cpu(x) __swab16((__force __u16)(__le16)(x))
^
include/uapi/linux/swab.h:105:32: note: expanded from macro '__swab16'
(__builtin_constant_p((__u16)(x)) ?                                              ^
In file included from drivers/pci/access.c:2:
In file included from include/linux/pci.h:39:
In file included from include/linux/io.h:13:
In file included from arch/s390/include/asm/io.h:72:
include/asm-generic/io.h:479:45: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
val = __le16_to_cpu(__raw_readw(PCI_IOBASE + addr));
~~~~~~~~~~ ^
include/uapi/linux/byteorder/big_endian.h:36:59: note: expanded from macro '__le16_to_cpu'
#define __le16_to_cpu(x) __swab16((__force __u16)(__le16)(x))
^
include/uapi/linux/swab.h:106:21: note: expanded from macro '__swab16'
___constant_swab16(x) :                                               ^
include/uapi/linux/swab.h:15:12: note: expanded from macro '___constant_swab16'
(((__u16)(x) & (__u16)0x00ffU) << 8) |                                       ^
In file included from drivers/pci/access.c:2:
In file included from include/linux/pci.h:39:
In file included from include/linux/io.h:13:
In file included from arch/s390/include/asm/io.h:72:
include/asm-generic/io.h:479:45: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
val = __le16_to_cpu(__raw_readw(PCI_IOBASE + addr));
~~~~~~~~~~ ^
include/uapi/linux/byteorder/big_endian.h:36:59: note: expanded from macro '__le16_to_cpu'
#define __le16_to_cpu(x) __swab16((__force __u16)(__le16)(x))
^
include/uapi/linux/swab.h:106:21: note: expanded from macro '__swab16'
___constant_swab16(x) :                                               ^
include/uapi/linux/swab.h:16:12: note: expanded from macro '___constant_swab16'
(((__u16)(x) & (__u16)0xff00U) >> 8)))
^
In file included from drivers/pci/access.c:2:
In file included from include/linux/pci.h:39:
In file included from include/linux/io.h:13:
In file included from arch/s390/include/asm/io.h:72:
include/asm-generic/io.h:479:45: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
val = __le16_to_cpu(__raw_readw(PCI_IOBASE + addr));
~~~~~~~~~~ ^
include/uapi/linux/byteorder/big_endian.h:36:59: note: expanded from macro '__le16_to_cpu'
#define __le16_to_cpu(x) __swab16((__force __u16)(__le16)(x))
^
include/uapi/linux/swab.h:107:12: note: expanded from macro '__swab16'
__fswab16(x))
^
In file included from drivers/pci/access.c:2:
In file included from include/linux/pci.h:39:
In file included from include/linux/io.h:13:
In file included from arch/s390/include/asm/io.h:72:
include/asm-generic/io.h:492:45: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
val = __le32_to_cpu(__raw_readl(PCI_IOBASE + addr));
~~~~~~~~~~ ^
include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
#define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
^
include/uapi/linux/swab.h:118:32: note: expanded from macro '__swab32'
(__builtin_constant_p((__u32)(x)) ?                                              ^
In file included from drivers/pci/access.c:2:
In file included from include/linux/pci.h:39:
In file included from include/linux/io.h:13:
In file included from arch/s390/include/asm/io.h:72:
include/asm-generic/io.h:492:45: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
val = __le32_to_cpu(__raw_readl(PCI_IOBASE + addr));
~~~~~~~~~~ ^
include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
#define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
^
include/uapi/linux/swab.h:119:21: note: expanded from macro '__swab32'
--
In file included from drivers/iio/chemical/bme680_core.c:11:
In file included from include/linux/acpi.h:13:
In file included from include/linux/irqdomain.h:35:
In file included from include/linux/of.h:17:
In file included from include/linux/kobject.h:20:
In file included from include/linux/sysfs.h:16:
In file included from include/linux/kernfs.h:12:
In file included from include/linux/mutex.h:16:
In file included from include/linux/spinlock_types.h:18:
In file included from include/linux/lockdep.h:23:
In file included from arch/s390/include/asm/percpu.h:5:
In file included from include/linux/preempt.h:78:
In file included from arch/s390/include/asm/preempt.h:6:
In file included from include/linux/thread_info.h:38:
In file included from arch/s390/include/asm/thread_info.h:27:
In file included from arch/s390/include/asm/processor.h:41:
>> include/linux/irqflags.h:36:22: warning: declaration specifier missing, defaulting to 'int'
DECLARE_PER_CPU(int, hardirqs_enabled);
^
int
include/linux/irqflags.h:36:1: warning: declaration specifier missing, defaulting to 'int'
DECLARE_PER_CPU(int, hardirqs_enabled);
^
int
include/linux/irqflags.h:37:22: warning: declaration specifier missing, defaulting to 'int'
DECLARE_PER_CPU(int, hardirq_context);
^
int
include/linux/irqflags.h:37:1: warning: declaration specifier missing, defaulting to 'int'
DECLARE_PER_CPU(int, hardirq_context);
^
int
4 warnings generated.
--
In file included from drivers/iio/chemical/bme680_i2c.c:14:
In file included from include/linux/acpi.h:13:
In file included from include/linux/irqdomain.h:35:
In file included from include/linux/of.h:17:
In file included from include/linux/kobject.h:20:
In file included from include/linux/sysfs.h:16:
In file included from include/linux/kernfs.h:12:
In file included from include/linux/mutex.h:16:
In file included from include/linux/spinlock_types.h:18:
In file included from include/linux/lockdep.h:23:
In file included from arch/s390/include/asm/percpu.h:5:
In file included from include/linux/preempt.h:78:
In file included from arch/s390/include/asm/preempt.h:6:
In file included from include/linux/thread_info.h:38:
In file included from arch/s390/include/asm/thread_info.h:27:
In file included from arch/s390/include/asm/processor.h:41:
>> include/linux/irqflags.h:36:22: warning: declaration specifier missing, defaulting to 'int'
DECLARE_PER_CPU(int, hardirqs_enabled);
^
int
include/linux/irqflags.h:36:1: warning: declaration specifier missing, defaulting to 'int'
DECLARE_PER_CPU(int, hardirqs_enabled);
^
int
include/linux/irqflags.h:37:22: warning: declaration specifier missing, defaulting to 'int'
DECLARE_PER_CPU(int, hardirq_context);
^
int
include/linux/irqflags.h:37:1: warning: declaration specifier missing, defaulting to 'int'
DECLARE_PER_CPU(int, hardirq_context);
^
int
drivers/iio/chemical/bme680_i2c.c:46:36: warning: unused variable 'bme680_acpi_match' [-Wunused-const-variable]
static const struct acpi_device_id bme680_acpi_match[] = {
^
5 warnings generated.
--
In file included from drivers/iio/dac/ad5593r.c:9:
In file included from drivers/iio/dac/ad5592r-base.h:14:
In file included from include/linux/mutex.h:16:
In file included from include/linux/spinlock_types.h:18:
In file included from include/linux/lockdep.h:23:
In file included from arch/s390/include/asm/percpu.h:5:
In file included from include/linux/preempt.h:78:
In file included from arch/s390/include/asm/preempt.h:6:
In file included from include/linux/thread_info.h:38:
In file included from arch/s390/include/asm/thread_info.h:27:
In file included from arch/s390/include/asm/processor.h:41:
>> include/linux/irqflags.h:36:22: warning: declaration specifier missing, defaulting to 'int'
DECLARE_PER_CPU(int, hardirqs_enabled);
^
int
include/linux/irqflags.h:36:1: warning: declaration specifier missing, defaulting to 'int'
DECLARE_PER_CPU(int, hardirqs_enabled);
^
int
include/linux/irqflags.h:37:22: warning: declaration specifier missing, defaulting to 'int'
DECLARE_PER_CPU(int, hardirq_context);
^
int
include/linux/irqflags.h:37:1: warning: declaration specifier missing, defaulting to 'int'
DECLARE_PER_CPU(int, hardirq_context);
^
int
In file included from drivers/iio/dac/ad5593r.c:9:
In file included from drivers/iio/dac/ad5592r-base.h:15:
In file included from include/linux/gpio/driver.h:7:
In file included from include/linux/irq.h:20:
In file included from include/linux/io.h:13:
In file included from arch/s390/include/asm/io.h:72:
include/asm-generic/io.h:466:31: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
val = __raw_readb(PCI_IOBASE + addr);
~~~~~~~~~~ ^
include/asm-generic/io.h:479:45: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
val = __le16_to_cpu(__raw_readw(PCI_IOBASE + addr));
~~~~~~~~~~ ^
include/uapi/linux/byteorder/big_endian.h:36:59: note: expanded from macro '__le16_to_cpu'
#define __le16_to_cpu(x) __swab16((__force __u16)(__le16)(x))
^
include/uapi/linux/swab.h:105:32: note: expanded from macro '__swab16'
(__builtin_constant_p((__u16)(x)) ?                                              ^
In file included from drivers/iio/dac/ad5593r.c:9:
In file included from drivers/iio/dac/ad5592r-base.h:15:
In file included from include/linux/gpio/driver.h:7:
In file included from include/linux/irq.h:20:
In file included from include/linux/io.h:13:
In file included from arch/s390/include/asm/io.h:72:
include/asm-generic/io.h:479:45: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
val = __le16_to_cpu(__raw_readw(PCI_IOBASE + addr));
~~~~~~~~~~ ^
include/uapi/linux/byteorder/big_endian.h:36:59: note: expanded from macro '__le16_to_cpu'
#define __le16_to_cpu(x) __swab16((__force __u16)(__le16)(x))
^
include/uapi/linux/swab.h:106:21: note: expanded from macro '__swab16'
___constant_swab16(x) :                                               ^
include/uapi/linux/swab.h:15:12: note: expanded from macro '___constant_swab16'
(((__u16)(x) & (__u16)0x00ffU) << 8) |                                       ^
In file included from drivers/iio/dac/ad5593r.c:9:
In file included from drivers/iio/dac/ad5592r-base.h:15:
In file included from include/linux/gpio/driver.h:7:
In file included from include/linux/irq.h:20:
In file included from include/linux/io.h:13:
In file included from arch/s390/include/asm/io.h:72:
include/asm-generic/io.h:479:45: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
val = __le16_to_cpu(__raw_readw(PCI_IOBASE + addr));
~~~~~~~~~~ ^
include/uapi/linux/byteorder/big_endian.h:36:59: note: expanded from macro '__le16_to_cpu'
#define __le16_to_cpu(x) __swab16((__force __u16)(__le16)(x))
^
include/uapi/linux/swab.h:106:21: note: expanded from macro '__swab16'
___constant_swab16(x) :                                               ^
include/uapi/linux/swab.h:16:12: note: expanded from macro '___constant_swab16'
(((__u16)(x) & (__u16)0xff00U) >> 8)))
^
In file included from drivers/iio/dac/ad5593r.c:9:
In file included from drivers/iio/dac/ad5592r-base.h:15:
In file included from include/linux/gpio/driver.h:7:
In file included from include/linux/irq.h:20:
In file included from include/linux/io.h:13:
In file included from arch/s390/include/asm/io.h:72:
include/asm-generic/io.h:479:45: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
val = __le16_to_cpu(__raw_readw(PCI_IOBASE + addr));
~~~~~~~~~~ ^
include/uapi/linux/byteorder/big_endian.h:36:59: note: expanded from macro '__le16_to_cpu'
#define __le16_to_cpu(x) __swab16((__force __u16)(__le16)(x))
^
include/uapi/linux/swab.h:107:12: note: expanded from macro '__swab16'
__fswab16(x))
^
In file included from drivers/iio/dac/ad5593r.c:9:
In file included from drivers/iio/dac/ad5592r-base.h:15:
In file included from include/linux/gpio/driver.h:7:
In file included from include/linux/irq.h:20:
In file included from include/linux/io.h:13:
In file included from arch/s390/include/asm/io.h:72:
include/asm-generic/io.h:492:45: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
val = __le32_to_cpu(__raw_readl(PCI_IOBASE + addr));
~~~~~~~~~~ ^
include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
#define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
^
include/uapi/linux/swab.h:118:32: note: expanded from macro '__swab32'
(__builtin_constant_p((__u32)(x)) ?                                              ^
In file included from drivers/iio/dac/ad5593r.c:9:
--
In file included from drivers/regulator/da9210-regulator.c:7:
In file included from include/linux/i2c.h:13:
In file included from include/linux/acpi.h:13:
In file included from include/linux/irqdomain.h:35:
In file included from include/linux/of.h:17:
In file included from include/linux/kobject.h:20:
In file included from include/linux/sysfs.h:16:
In file included from include/linux/kernfs.h:12:
In file included from include/linux/mutex.h:16:
In file included from include/linux/spinlock_types.h:18:
In file included from include/linux/lockdep.h:23:
In file included from arch/s390/include/asm/percpu.h:5:
In file included from include/linux/preempt.h:78:
In file included from arch/s390/include/asm/preempt.h:6:
In file included from include/linux/thread_info.h:38:
In file included from arch/s390/include/asm/thread_info.h:27:
In file included from arch/s390/include/asm/processor.h:41:
>> include/linux/irqflags.h:36:22: warning: declaration specifier missing, defaulting to 'int'
DECLARE_PER_CPU(int, hardirqs_enabled);
^
int
include/linux/irqflags.h:36:1: warning: declaration specifier missing, defaulting to 'int'
DECLARE_PER_CPU(int, hardirqs_enabled);
^
int
include/linux/irqflags.h:37:22: warning: declaration specifier missing, defaulting to 'int'
DECLARE_PER_CPU(int, hardirq_context);
^
int
include/linux/irqflags.h:37:1: warning: declaration specifier missing, defaulting to 'int'
DECLARE_PER_CPU(int, hardirq_context);
^
int
In file included from drivers/regulator/da9210-regulator.c:10:
In file included from include/linux/irq.h:20:
In file included from include/linux/io.h:13:
In file included from arch/s390/include/asm/io.h:72:
include/asm-generic/io.h:466:31: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
val = __raw_readb(PCI_IOBASE + addr);
~~~~~~~~~~ ^
include/asm-generic/io.h:479:45: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
val = __le16_to_cpu(__raw_readw(PCI_IOBASE + addr));
~~~~~~~~~~ ^
include/uapi/linux/byteorder/big_endian.h:36:59: note: expanded from macro '__le16_to_cpu'
#define __le16_to_cpu(x) __swab16((__force __u16)(__le16)(x))
^
include/uapi/linux/swab.h:105:32: note: expanded from macro '__swab16'
(__builtin_constant_p((__u16)(x)) ?                                              ^
In file included from drivers/regulator/da9210-regulator.c:10:
In file included from include/linux/irq.h:20:
In file included from include/linux/io.h:13:
In file included from arch/s390/include/asm/io.h:72:
include/asm-generic/io.h:479:45: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
val = __le16_to_cpu(__raw_readw(PCI_IOBASE + addr));
~~~~~~~~~~ ^
include/uapi/linux/byteorder/big_endian.h:36:59: note: expanded from macro '__le16_to_cpu'
#define __le16_to_cpu(x) __swab16((__force __u16)(__le16)(x))
^
include/uapi/linux/swab.h:106:21: note: expanded from macro '__swab16'
___constant_swab16(x) :                                               ^
include/uapi/linux/swab.h:15:12: note: expanded from macro '___constant_swab16'
(((__u16)(x) & (__u16)0x00ffU) << 8) |                                       ^
In file included from drivers/regulator/da9210-regulator.c:10:
In file included from include/linux/irq.h:20:
In file included from include/linux/io.h:13:
In file included from arch/s390/include/asm/io.h:72:
include/asm-generic/io.h:479:45: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
val = __le16_to_cpu(__raw_readw(PCI_IOBASE + addr));
~~~~~~~~~~ ^
include/uapi/linux/byteorder/big_endian.h:36:59: note: expanded from macro '__le16_to_cpu'
#define __le16_to_cpu(x) __swab16((__force __u16)(__le16)(x))
^
include/uapi/linux/swab.h:106:21: note: expanded from macro '__swab16'
___constant_swab16(x) :                                               ^
include/uapi/linux/swab.h:16:12: note: expanded from macro '___constant_swab16'
(((__u16)(x) & (__u16)0xff00U) >> 8)))
^
In file included from drivers/regulator/da9210-regulator.c:10:
In file included from include/linux/irq.h:20:
In file included from include/linux/io.h:13:
In file included from arch/s390/include/asm/io.h:72:
include/asm-generic/io.h:479:45: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
val = __le16_to_cpu(__raw_readw(PCI_IOBASE + addr));
~~~~~~~~~~ ^
include/uapi/linux/byteorder/big_endian.h:36:59: note: expanded from macro '__le16_to_cpu'
#define __le16_to_cpu(x) __swab16((__force __u16)(__le16)(x))
^
include/uapi/linux/swab.h:107:12: note: expanded from macro '__swab16'
__fswab16(x))
^
In file included from drivers/regulator/da9210-regulator.c:10:
In file included from include/linux/irq.h:20:
In file included from include/linux/io.h:13:
In file included from arch/s390/include/asm/io.h:72:
include/asm-generic/io.h:492:45: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
val = __le32_to_cpu(__raw_readl(PCI_IOBASE + addr));
~~~~~~~~~~ ^
include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
#define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
^
include/uapi/linux/swab.h:118:32: note: expanded from macro '__swab32'
(__builtin_constant_p((__u32)(x)) ?                                              ^
In file included from drivers/regulator/da9210-regulator.c:10:
In file included from include/linux/irq.h:20:
In file included from include/linux/io.h:13:
In file included from arch/s390/include/asm/io.h:72:
include/asm-generic/io.h:492:45: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
val = __le32_to_cpu(__raw_readl(PCI_IOBASE + addr));
~~~~~~~~~~ ^
include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
#define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
^
include/uapi/linux/swab.h:119:21: note: expanded from macro '__swab32'
..

vim +/int +36 include/linux/irqflags.h

    35	
  > 36	DECLARE_PER_CPU(int, hardirqs_enabled);
    37	DECLARE_PER_CPU(int, hardirq_context);
    38	
    39	  extern void trace_hardirqs_on_prepare(void);
    40	  extern void trace_hardirqs_off_prepare(void);
    41	  extern void trace_hardirqs_on(void);
    42	  extern void trace_hardirqs_off(void);
    43	# define lockdep_hardirq_context(p)	(this_cpu_read(hardirq_context))
    44	# define lockdep_softirq_context(p)	((p)->softirq_context)
    45	# define lockdep_hardirqs_enabled(p)	(this_cpu_read(hardirqs_enabled))
    46	# define lockdep_softirqs_enabled(p)	((p)->softirqs_enabled)
    47	# define lockdep_hardirq_enter()			\
    48	do {							\
    49		if (this_cpu_inc_return(hardirq_context) == 1)	\
    50			current->hardirq_threaded = 0;		\
    51	} while (0)
    52	# define lockdep_hardirq_threaded()		\
    53	do {						\
    54		current->hardirq_threaded = 1;		\
    55	} while (0)
    56	# define lockdep_hardirq_exit()			\
    57	do {						\
    58		this_cpu_dec(hardirq_context);		\
    59	} while (0)
    60	# define lockdep_softirq_enter()		\
    61	do {						\
    62		current->softirq_context++;		\
    63	} while (0)
    64	# define lockdep_softirq_exit()			\
    65	do {						\
    66		current->softirq_context--;		\
    67	} while (0)
    68	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202005291217.imM2QEbR%25lkp%40intel.com.

--SUOF0GtieIMvvwua
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--SUOF0GtieIMvvwua--
