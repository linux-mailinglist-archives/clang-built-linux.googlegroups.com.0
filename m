Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBZ456H7AKGQEZWMI7NY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3b.google.com (mail-vk1-xa3b.google.com [IPv6:2607:f8b0:4864:20::a3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A14F2DDEAD
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Dec 2020 07:40:40 +0100 (CET)
Received: by mail-vk1-xa3b.google.com with SMTP id 84sf664219vkx.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 17 Dec 2020 22:40:40 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608273639; cv=pass;
        d=google.com; s=arc-20160816;
        b=mlz9tN1Lan0CRyCjiCsbo3Z7No8WXNW4CJjRWFKinolb+lFZaLyJ1LSDc/aeVDJtyi
         DnxsnFMXf07HINAxWeGc60GZji5k2Vq+oO0RMe/FCgE+JtMdyEY5hivzNJlzP9hf4gct
         eQ14ICp4BOcN/z6l75yJk6AEv9no1XPe17DEJkgVpss+d5waGgRwbaV+1uMPN+C60lBL
         mfjzc1gAQflg7dPOfbIbvCjvqWrCmc0MrZtMhq/nvFyiaCDNdjNDGX/fhXq0FUTflnTK
         2iUD82sUxQu70jqOtTwWN8aolzhAb4Cv156AWmDfFeU7wzgK5aQ0J4bEEK8OV2FPnw1G
         D+1g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=Nno3lU2lmh5zcIV4oJWDsU5e75BuOiitSTfwHS9Hhh8=;
        b=M6AkQz+4mx8K+ywFv/IbTzpJShJPayCDoKE7EgnQwPSETX/f2FSY0ZXPKjmqLEtLvw
         MqfN/CN+roG2M+46gzIjahIxU1LOtk9X+hjc2GhdW+ohesYVthsk3XVwVIjYqL/XmbDV
         MXddnAwUqQIBVnFhutKCnkGCE2u0TG9n/PZSmA3/32m2ekz5jXCwErqFHXZ4KAhQetex
         0QVnl7QhV8btxlEjs5TPLCRMPriJ9FuC1R5E+mmLpk6ZsxyfvxFUdahwKNAu8mlhGe4c
         QtxsTVXvszh4S3Xsh3Yg4cytvN4fstYqIXJm+xPWEnxow3/c5/4/4tHJWC0TjWPxhG+o
         cNxg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Nno3lU2lmh5zcIV4oJWDsU5e75BuOiitSTfwHS9Hhh8=;
        b=AJU5ioFhjC67QaDjdNqz4FGpRZlwcYZ1vhw9DF+80cYCWU5gHz9eoDer9JJCKPwR17
         2MHtq93Cq2bTMGoJnM423u9L72nUdWXmTVUVeoIm/ZGA/XeW2maZ0e29OTDrP6UXulvX
         ZdfrtGDvktIfZB4vFRW/8OvD757kqTUCBFvXiyH0lUeStTR6OmHT1QEkYaEm4nhvkBQM
         p2EHT8gAol1jX3RlY1TOUSK51qQWrlGiCxyMiTo19yLkpo1JJ4dDFco8+3cnwJBelMnT
         S65aHXMNbPrLM8hzytrD60WhB+GKjhiwGCHPB2zQ2WuQ3s6N78cDcZTLaaDR/kqSqnVh
         kI9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Nno3lU2lmh5zcIV4oJWDsU5e75BuOiitSTfwHS9Hhh8=;
        b=Y3ZcTzySWtwhijc+JcQ21y5A/dx2RNUGGuO2aNDwvCVVzT1oJlV9kHyvDgYdl4Xs/z
         MkJVJWLQg0T41YSC0f11FyV46WM6ciW911WAOax3O0aefJlVMZcgEr2VyF+ENhAtgCN6
         utOCeMAk9krSu9S9GvVaQLGYgbExG430LTwfHujd22GYX7CHNoWa0cWWQOVOijN5rIyZ
         hgxTzrQuSYbdlTo968ooXD7KkvzIr0FW5LQukEteqGFKXtgkxc+Sa1AzDJpheZfZpFgA
         oHrDycahwQs8YnXk+MW5pGlY+WSSMocFnaOtLWtdEc6C0kzxMdu/IBU4uzhjKO2Guytc
         w6YQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531qbVUXOqwTV7s4i5Jm24hWndQ7jEfw0qdeaDLDxvTAEg8Egbzl
	o/rWXvQRsWEzMeIbmm24ZQQ=
X-Google-Smtp-Source: ABdhPJwH0sgg6TGNc/gscQUCxXkTTz3JdD+OWLGKykdXR8Bj3OW7PlzBRO9cZLgznAkzlxvR2Fscvg==
X-Received: by 2002:ab0:244f:: with SMTP id g15mr2247386uan.80.1608273639173;
        Thu, 17 Dec 2020 22:40:39 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:ea12:: with SMTP id g18ls3770824vso.9.gmail; Thu, 17 Dec
 2020 22:40:38 -0800 (PST)
X-Received: by 2002:a05:6102:2413:: with SMTP id j19mr2229045vsi.17.1608273638664;
        Thu, 17 Dec 2020 22:40:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608273638; cv=none;
        d=google.com; s=arc-20160816;
        b=oi2sp+wu/oM5fsoLVppz0AvIZr4m58QKF6sFwblTBCl7coDKFfjthbTvSb87FOqtMI
         QYSN+tI4eQH3FKg+TOEtq+8yGHE1bolMyAVRI/i4Br+Yl2ntHrcHRNt2VTb57juKSong
         ub1+VsVZ7dSW3+z3uxZf5sD1iKqJNeGaMP26bd4THFgsPbaXCNponrd8Z+wrVJNyOI0+
         b0ZQxKLmWGpPWkyKDPCZ845yH8UtdN/TSJcxORXwuWA04Z89Bmy28/Cei4cFoPQMCSF0
         H8yljfUK2u7uSCn1R+iNrv8hdhWYzZedCK8BQbsjo5vndpNjG9B4yao7C3AJfI2CWr2c
         kl9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=95YXLiZmHhC/+tYBi0DIKU0EXgqgdU95SltC59g5oHM=;
        b=iIJj+7MlS6S4MtLfnoONXrVCPQUIMNmOtZpCg2mPmMh9cSPX62+axhbp0oqWWUTfop
         K37cdGCHO+VpegzS60RQTHyyfFHQQJac55IeXQt3r8mctJt4WZJAcQx9S5kq1pQpczyx
         JFBlq8k8H5PIL7jLOhDBeyc9lV1OmsSix/cPxVmbtIfjT7wDMkUHxUXnpvH6YfIUy1Tq
         e1vs6a45DgHBZYpGhQTXjKA6IesREDIgVppNcDzbcmb0ADorQrtdjU2jHOvRkMwbHT2T
         BeMah9tqhWWVV2dYl1RzWBAScFqDn7E0HQdfloqq8lOKgFY9MdZDinZY0qnHmE91v9sY
         deWQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga03.intel.com (mga03.intel.com. [134.134.136.65])
        by gmr-mx.google.com with ESMTPS id a16si478778uas.1.2020.12.17.22.40.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 17 Dec 2020 22:40:38 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) client-ip=134.134.136.65;
IronPort-SDR: cBSbCGj5oB7Pv5l5SXuzyd2cAsj6uVh7kOBuIDkKpZNciBhtXZpsTLQ0kUaP5HXVXMMKiBod8Q
 Kz+7c8KuqapA==
X-IronPort-AV: E=McAfee;i="6000,8403,9838"; a="175490606"
X-IronPort-AV: E=Sophos;i="5.78,429,1599548400"; 
   d="gz'50?scan'50,208,50";a="175490606"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Dec 2020 22:40:36 -0800
IronPort-SDR: Bfy2OS9HZMRYAUPcu49xU6deKo08Dj8liCinqHbbaWYfBngcZ8QDafOEvQXVhwfzl9E2rui1I9
 kBrWpUeVsc0g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,429,1599548400"; 
   d="gz'50?scan'50,208,50";a="370407567"
Received: from lkp-server02.sh.intel.com (HELO c4fb2a2464e8) ([10.239.97.151])
  by orsmga008.jf.intel.com with ESMTP; 17 Dec 2020 22:40:34 -0800
Received: from kbuild by c4fb2a2464e8 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kq9RJ-000034-7k; Fri, 18 Dec 2020 06:40:33 +0000
Date: Fri, 18 Dec 2020 14:39:52 +0800
From: kernel test robot <lkp@intel.com>
To: Tom Zanussi <zanussi@kernel.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH v4 4/5] tracing: Add a backward-compatibility check for
 synthetic event creation
Message-ID: <202012181422.fcWUCC5H-lkp@intel.com>
References: <10708db9327a6db3e8cdd9639504923e6629ae85.1608238451.git.zanussi@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="a8Wt8u1KmwUX3Y2C"
Content-Disposition: inline
In-Reply-To: <10708db9327a6db3e8cdd9639504923e6629ae85.1608238451.git.zanussi@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted
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


--a8Wt8u1KmwUX3Y2C
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Tom,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on trace/for-next]
[also build test WARNING on linux/master linus/master v5.10 next-20201217]
[cannot apply to tip/perf/core]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Tom-Zanussi/tracing-More-synthetic-event-error-fixes/20201218-052110
base:   https://git.kernel.org/pub/scm/linux/kernel/git/rostedt/linux-trace.git for-next
config: riscv-randconfig-r014-20201217 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project cee1e7d14f4628d6174b33640d502bff3b54ae45)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install riscv cross compiling tool for clang build
        # apt-get install binutils-riscv64-linux-gnu
        # https://github.com/0day-ci/linux/commit/aa73dabdbd071e2cb537b974c0b4308d24f8d4ef
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Tom-Zanussi/tracing-More-synthetic-event-error-fixes/20201218-052110
        git checkout aa73dabdbd071e2cb537b974c0b4308d24f8d4ef
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=riscv 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   In file included from include/linux/hardirq.h:10:
   In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:13:
   In file included from include/linux/irq.h:20:
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
   In file included from kernel/trace/trace_events_synth.c:18:
   In file included from include/linux/trace_events.h:9:
   In file included from include/linux/hardirq.h:10:
   In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:13:
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
   In file included from kernel/trace/trace_events_synth.c:18:
   In file included from include/linux/trace_events.h:9:
   In file included from include/linux/hardirq.h:10:
   In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:13:
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
   In file included from kernel/trace/trace_events_synth.c:18:
   In file included from include/linux/trace_events.h:9:
   In file included from include/linux/hardirq.h:10:
   In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:13:
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
   In file included from kernel/trace/trace_events_synth.c:18:
   In file included from include/linux/trace_events.h:9:
   In file included from include/linux/hardirq.h:10:
   In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:13:
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
   In file included from kernel/trace/trace_events_synth.c:18:
   In file included from include/linux/trace_events.h:9:
   In file included from include/linux/hardirq.h:10:
   In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:13:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:149:
   include/asm-generic/io.h:1005:55: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           return (port > MMIO_UPPER_LIMIT) ? NULL : PCI_IOBASE + port;
                                                     ~~~~~~~~~~ ^
>> kernel/trace/trace_events_synth.c:1508:6: warning: variable 'save_argv' is used uninitialized whenever 'if' condition is true [-Wsometimes-uninitialized]
           if (!argc)
               ^~~~~
   kernel/trace/trace_events_synth.c:1564:12: note: uninitialized use occurs here
           argv_free(save_argv);
                     ^~~~~~~~~
   kernel/trace/trace_events_synth.c:1508:2: note: remove the 'if' if its condition is always false
           if (!argc)
           ^~~~~~~~~~
   kernel/trace/trace_events_synth.c:1496:33: note: initialize the variable 'save_argv' to silence this warning
           char *name, **argv, **save_argv;
                                          ^
                                           = NULL
>> kernel/trace/trace_events_synth.c:1508:6: warning: variable 'buf' is used uninitialized whenever 'if' condition is true [-Wsometimes-uninitialized]
           if (!argc)
               ^~~~~
   kernel/trace/trace_events_synth.c:1566:9: note: uninitialized use occurs here
           return buf;
                  ^~~
   kernel/trace/trace_events_synth.c:1508:2: note: remove the 'if' if its condition is always false
           if (!argc)
           ^~~~~~~~~~
   kernel/trace/trace_events_synth.c:1500:11: note: initialize the variable 'buf' to silence this warning
           char *buf;
                    ^
                     = NULL
   9 warnings generated.
   /tmp/trace_events_synth-97fa74.s: Assembler messages:
   /tmp/trace_events_synth-97fa74.s:3701: Error: unrecognized opcode `zext.b a2,a2'
   /tmp/trace_events_synth-97fa74.s:4380: Error: unrecognized opcode `zext.b s1,s1'
   /tmp/trace_events_synth-97fa74.s:4474: Error: unrecognized opcode `zext.b a5,a0'
   /tmp/trace_events_synth-97fa74.s:4705: Error: unrecognized opcode `zext.b a1,a1'
   /tmp/trace_events_synth-97fa74.s:5065: Error: unrecognized opcode `zext.b a5,a0'
   /tmp/trace_events_synth-97fa74.s:5399: Error: unrecognized opcode `zext.b a5,a0'
   /tmp/trace_events_synth-97fa74.s:5459: Error: unrecognized opcode `zext.b a5,a0'
   /tmp/trace_events_synth-97fa74.s:5516: Error: unrecognized opcode `zext.b a5,a0'
   /tmp/trace_events_synth-97fa74.s:5571: Error: unrecognized opcode `zext.b a5,a0'
   /tmp/trace_events_synth-97fa74.s:5648: Error: unrecognized opcode `zext.b a5,a0'
   /tmp/trace_events_synth-97fa74.s:5682: Error: unrecognized opcode `zext.b a5,a0'
   /tmp/trace_events_synth-97fa74.s:7129: Error: unrecognized opcode `zext.b a3,a3'
   clang-12: error: assembler command failed with exit code 1 (use -v to see invocation)


vim +1508 kernel/trace/trace_events_synth.c

  1492	
  1493	static char *insert_semicolons(const char *raw_command)
  1494	{
  1495		int i, argc, consumed = 0, n_fields = 0, semis_added = 0;
  1496		char *name, **argv, **save_argv;
  1497		int ret = -EINVAL;
  1498		struct seq_buf s;
  1499		bool added_semi;
  1500		char *buf;
  1501	
  1502		argc = 0;
  1503	
  1504		argv = argv_split(GFP_KERNEL, raw_command, &argc);
  1505		if (!argv)
  1506			return NULL;
  1507	
> 1508		if (!argc)
  1509			goto out;
  1510	
  1511		name = argv[0];
  1512		save_argv = argv;
  1513		argv++;
  1514		argc--;
  1515	
  1516		buf = kzalloc(MAX_DYNEVENT_CMD_LEN, GFP_KERNEL);
  1517		if (!buf) {
  1518			ret = -ENOMEM;
  1519			goto err;
  1520		}
  1521	
  1522		seq_buf_init(&s, buf, MAX_DYNEVENT_CMD_LEN);
  1523	
  1524		seq_buf_puts(&s, name);
  1525		seq_buf_putc(&s, ' ');
  1526	
  1527		if (name[0] == '\0' || argc < 1)
  1528			goto err;
  1529	
  1530		for (i = 0; i < argc - 1; i++) {
  1531			if (strcmp(argv[i], ";") == 0) {
  1532				seq_buf_puts(&s, " ; ");
  1533				continue;
  1534			}
  1535	
  1536			if (n_fields == SYNTH_FIELDS_MAX)
  1537				goto err;
  1538	
  1539			ret = save_synth_field(argc - i, &argv[i], &consumed,
  1540					       &s, &added_semi);
  1541			if (ret)
  1542				goto err;
  1543	
  1544			if (added_semi)
  1545				semis_added++;
  1546	
  1547			i += consumed - 1;
  1548		}
  1549	
  1550		if (i < argc && strcmp(argv[i], ";") != 0)
  1551			goto err;
  1552	
  1553		if (!semis_added) {
  1554			kfree(buf);
  1555			buf = NULL;
  1556			goto out;
  1557		}
  1558	
  1559		if (WARN_ON_ONCE(!seq_buf_buffer_left(&s)))
  1560			goto err;
  1561	
  1562		buf[s.len] = '\0';
  1563	 out:
  1564		argv_free(save_argv);
  1565	
  1566		return buf;
  1567	 err:
  1568		kfree(buf);
  1569		buf = ERR_PTR(ret);
  1570	
  1571		goto out;
  1572	}
  1573	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202012181422.fcWUCC5H-lkp%40intel.com.

--a8Wt8u1KmwUX3Y2C
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--a8Wt8u1KmwUX3Y2C--
