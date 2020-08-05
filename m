Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBZ5OVT4QKGQE5VFVK7Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x639.google.com (mail-pl1-x639.google.com [IPv6:2607:f8b0:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id A89FA23D307
	for <lists+clang-built-linux@lfdr.de>; Wed,  5 Aug 2020 22:32:41 +0200 (CEST)
Received: by mail-pl1-x639.google.com with SMTP id q22sf8831416pls.13
        for <lists+clang-built-linux@lfdr.de>; Wed, 05 Aug 2020 13:32:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596659560; cv=pass;
        d=google.com; s=arc-20160816;
        b=IqQiUBXKn4ktyAT17rYM/Ywo8ReW2DTHg/F1OAR0HnC/Oou09vpG8sZI+eGxlXdCK+
         hBgYHV0oXfVvSn0taSbknJnldiJc/flaICEK8bWtvppheUjAxDKUZqMHKeU21k3r8SyD
         hLxM0t/I0QB+jxEhB8PZSQjytWY0NDTa1D0NrarOOwDVVZLs3z6S0y6Jpaqzj8YcZy2e
         tGKx1KxjwQZiCkhLuDxRej8K/+F6+ARGOF8BgJkS2Wv1Bxq/uCg8l3hzdlwMH42B+//G
         wLzAmtT2Bfbgsf9EAwZS00hP1qevQxSrjt9kgBbh8us4x1M7wHmlDUypyjafsfFlIqWE
         ZYHg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=XY8wSS6aIEyKd23vg04+SMdCHnW2ZM+/l+MFOcFG4wk=;
        b=vWBweeMA8+42SW7bzkfwFMZWze+YRO4GE+xGcsSaUW9CEAg2NMYWVhafpIYN70RCk5
         2znW4OEeHufMnVNz3HtnUMFcNSpmcHz+lJ8TewNmAjdkrhnCzMg9W1sbdBPfwkbUj1hd
         mwvY64QB/hoTatVGa7TlShI68Fd5nLCb1fED+Phw8xNw2ctPlamx11JsvMXQ9LziJRKh
         Vjz+zbW2GgeGhTq40z48jJ6AZZmkhazUD+qRAoK9R8K1vypwLYTH+9xQL66zH1Tvt7l2
         eiG0boh7M7oZFFsGCDZMZodp5g+RpgCAlja0crp8mS2ZQjjrMWzJ0ModgukUScFeZIq2
         7kLg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XY8wSS6aIEyKd23vg04+SMdCHnW2ZM+/l+MFOcFG4wk=;
        b=BuIxlvLhwXQ/pew78XzRfT0csdZqDO0taTxC3t4MCeDh5LvUjcrK/RMsWkUugZ3liD
         iG0qa7M29UqMyMaCTNveWYi1JF71mc3xzuD8wyuGIWNdOOMJhu5COFkwehgV8jmSe+rj
         /G6JDR9zO4OlPS0CVzeUb91fdybfsNE/nkleJij5HwLqmlbQT4OM1hKPM9183zq3A2/1
         Wi44PeVmVWXIWAPICNf+rlX9J2+kUJ0vlc2HPmvrhNes1jkbb1B8H0M5b4bjLg/EG5pX
         o8PifB3go2oBQcle3qxt8A+/Yqu9RT0CLHWsscWEKyTwPinv9vi68yF/+rbOMCVtxwhu
         lgUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=XY8wSS6aIEyKd23vg04+SMdCHnW2ZM+/l+MFOcFG4wk=;
        b=c+d5OA4sCuiVnKsY9t25WAcn4G38tQYqxNdHKM+GOwCQU5ZpaxzmyMRZYJz6psI4wG
         iF5LZLzfUFt9oxYnYxY2fCbhitpTvM49aOrQGi9flnTFQOn69Ym7M+3kTzHXXSQTMYp+
         CJx+gipbpfapwcsgWFacGNCLpYQeo8aW4fiGyHKTmhY6HlAM8VN/wcLMVgj4l+7Mgu2K
         aQmG/PjtyoTHNvPUBLW7VbraHcDYbC8bzm5j4CTwxyE4icb3YgHaXHh051pYsWY05ebR
         bX+AANcMn3YFvWflJAwtsIzpSlngmPkibcojKBRf7AzLIvjcvWEidqEq5LOKhhd/LxaB
         52iw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531s7kIEwV9suhJZXU4aQPHsWAHjclhCr6tfIBQa886ndwtxsHFh
	7QTKZIQvEBXnEzjHuDpNPeY=
X-Google-Smtp-Source: ABdhPJxUydegzmAdJCAr7ccXiSA8wSXApDT6gRSf7E6NvYooUhhUxWBzBE6dMgnt/M1gcjfPl3EvUQ==
X-Received: by 2002:a63:5613:: with SMTP id k19mr4697774pgb.424.1596659559948;
        Wed, 05 Aug 2020 13:32:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:79d3:: with SMTP id u202ls1224563pfc.1.gmail; Wed, 05
 Aug 2020 13:32:39 -0700 (PDT)
X-Received: by 2002:a63:450d:: with SMTP id s13mr353094pga.246.1596659559437;
        Wed, 05 Aug 2020 13:32:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596659559; cv=none;
        d=google.com; s=arc-20160816;
        b=MJMmPEybGtDoxhpTUIMWfnRxtpU+5nsfnNie/h2apvLXZ7r9N6mW3dyzCRcFoQYuQb
         2+KcPxZyvVY7t6HdlOczkEQSavk+kBwY6Obfx406/wt3J8RVvAyKAmCQyTNrIwrU3ik5
         ngvWYN8KrRXL/iOerN7L5FMMPIJ6++1ogA9MoVn2XPOH/jUG8hwoMr5HtWOpHj1Ymp83
         2vxp9Ee9+cWcVtDN/KScNIjWGXVvaNhdT4ZhU+6xTQwdldwoBhiYVbzHwi9KDbHuqVkR
         h8/yYB3Y7pbX6mvTDUaSsiUQLf/X9Sjrt760yJ58bQKeyv9Lz9OPJ3UR+a1doctrdxba
         3JWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=P8HP/XkBvEXMar8a5MW1IboZsxBtv/mDSRCF3s0MHCk=;
        b=qurkUCQYbsn83KDBtBlGg+jKGyLaWsL4pIrDPmaDc34Bm09oC3+9fEyM5owox1DnJv
         qL7tdBy4o4mMOSFYqndBfwgjVO/qQazDl0RfgHllj79fA6io3IyH3CEoFhgAxIjPq/NH
         EHy87RItwky0jX/hc3MYcyhqKiU+CtF4YYXagj1IV4Op8d3qfCSpOMKMAv+ws+vEvEx0
         SrssRHvXVYJNymcrUA5Ir7bA+kfgmqertJ4rnzSPZH/SXfTZaO5fRdYAtgEmkKsqGo/M
         ISpy2R6OGIcrky+6oOO2uV9pBLYzJpxwWYFnx+hyy0TU2lal9ck2yVHEFWlHJs06lWn2
         0FHA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga01.intel.com (mga01.intel.com. [192.55.52.88])
        by gmr-mx.google.com with ESMTPS id h2si178834pls.2.2020.08.05.13.32.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 05 Aug 2020 13:32:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) client-ip=192.55.52.88;
IronPort-SDR: U2mSaQq47uguOmhXyQ9+NIgOtCLTIe3OmWGxIyIuKLnClw9tk913p/Y3jZhm42gu0yW2NhFRwB
 NXt6EH5C94Gg==
X-IronPort-AV: E=McAfee;i="6000,8403,9704"; a="170728398"
X-IronPort-AV: E=Sophos;i="5.75,438,1589266800"; 
   d="gz'50?scan'50,208,50";a="170728398"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Aug 2020 13:32:37 -0700
IronPort-SDR: qFjYZGmZu5pod0fXhVtQR/VJnE1DMSXWCyI4h8JhVd6D8Qq9MJ1iIG+q2bWvy1NU5K/UlAR7Bd
 n63jBvCeh10Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,438,1589266800"; 
   d="gz'50?scan'50,208,50";a="323209737"
Received: from lkp-server02.sh.intel.com (HELO 37a337f97289) ([10.239.97.151])
  by orsmga008.jf.intel.com with ESMTP; 05 Aug 2020 13:32:35 -0700
Received: from kbuild by 37a337f97289 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1k3Q5S-0000uO-S0; Wed, 05 Aug 2020 20:32:34 +0000
Date: Thu, 6 Aug 2020 04:31:35 +0800
From: kernel test robot <lkp@intel.com>
To: Mao Han <han_mao@linux.alibaba.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Guo Ren <guoren@linux.alibaba.com>
Subject: [csky-linux:linux-5.8-rc7 14/21]
 drivers/perf/thead_xt_pmu_v1.c:695:2: error: implicit declaration of
 function 'sbi_ecall'
Message-ID: <202008060431.tKqJCkeW%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="7AUc2qLy4jB3hD7Z"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted
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


--7AUc2qLy4jB3hD7Z
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://github.com/c-sky/csky-linux linux-5.8-rc7
head:   9b8c946f3e338c1c876d6c563c473ba1a9e2704d
commit: 98c678b7fc2459463a513d8e136df4ad37149855 [14/21] riscv/thead_xt: perf PMU record support
config: riscv-randconfig-r035-20200805 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project e8b7edafc3dd0ab85903eebdfdb3bb7cc2d66743)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install riscv cross compiling tool for clang build
        # apt-get install binutils-riscv64-linux-gnu
        git checkout 98c678b7fc2459463a513d8e136df4ad37149855
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=riscv 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All error/warnings (new ones prefixed by >>):

   In file included from include/linux/hardirq.h:10:
   In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:13:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:148:
   include/asm-generic/io.h:564:9: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           return inw(addr);
                  ^~~~~~~~~
   arch/riscv/include/asm/io.h:55:76: note: expanded from macro 'inw'
   #define inw(c)          ({ u16 __v; __io_pbr(); __v = readw_cpu((void*)(PCI_IOBASE + (c))); __io_par(__v); __v; })
                                                                           ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:94:76: note: expanded from macro 'readw_cpu'
   #define readw_cpu(c)            ({ u16 __r = le16_to_cpu((__force __le16)__raw_readw(c)); __r; })
                                                                                        ^
   include/uapi/linux/byteorder/little_endian.h:36:51: note: expanded from macro '__le16_to_cpu'
   #define __le16_to_cpu(x) ((__force __u16)(__le16)(x))
                                                     ^
   In file included from drivers/perf/thead_xt_pmu_v1.c:5:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:13:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:148:
   include/asm-generic/io.h:572:9: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           return inl(addr);
                  ^~~~~~~~~
   arch/riscv/include/asm/io.h:56:76: note: expanded from macro 'inl'
   #define inl(c)          ({ u32 __v; __io_pbr(); __v = readl_cpu((void*)(PCI_IOBASE + (c))); __io_par(__v); __v; })
                                                                           ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:95:76: note: expanded from macro 'readl_cpu'
   #define readl_cpu(c)            ({ u32 __r = le32_to_cpu((__force __le32)__raw_readl(c)); __r; })
                                                                                        ^
   include/uapi/linux/byteorder/little_endian.h:34:51: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) ((__force __u32)(__le32)(x))
                                                     ^
   In file included from drivers/perf/thead_xt_pmu_v1.c:5:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:13:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:148:
   include/asm-generic/io.h:580:2: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           outb(value, addr);
           ^~~~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:58:68: note: expanded from macro 'outb'
   #define outb(v,c)       ({ __io_pbw(); writeb_cpu((v),(void*)(PCI_IOBASE + (c))); __io_paw(); })
                                                                 ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:97:52: note: expanded from macro 'writeb_cpu'
   #define writeb_cpu(v, c)        ((void)__raw_writeb((v), (c)))
                                                             ^
   In file included from drivers/perf/thead_xt_pmu_v1.c:5:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:13:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:148:
   include/asm-generic/io.h:588:2: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           outw(value, addr);
           ^~~~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:59:68: note: expanded from macro 'outw'
   #define outw(v,c)       ({ __io_pbw(); writew_cpu((v),(void*)(PCI_IOBASE + (c))); __io_paw(); })
                                                                 ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:98:76: note: expanded from macro 'writew_cpu'
   #define writew_cpu(v, c)        ((void)__raw_writew((__force u16)cpu_to_le16(v), (c)))
                                                                                     ^
   In file included from drivers/perf/thead_xt_pmu_v1.c:5:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:13:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:148:
   include/asm-generic/io.h:596:2: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           outl(value, addr);
           ^~~~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:60:68: note: expanded from macro 'outl'
   #define outl(v,c)       ({ __io_pbw(); writel_cpu((v),(void*)(PCI_IOBASE + (c))); __io_paw(); })
                                                                 ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:99:76: note: expanded from macro 'writel_cpu'
   #define writel_cpu(v, c)        ((void)__raw_writel((__force u32)cpu_to_le32(v), (c)))
                                                                                     ^
   In file included from drivers/perf/thead_xt_pmu_v1.c:5:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:13:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:148:
   include/asm-generic/io.h:1017:55: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           return (port > MMIO_UPPER_LIMIT) ? NULL : PCI_IOBASE + port;
                                                     ~~~~~~~~~~ ^
>> drivers/perf/thead_xt_pmu_v1.c:394:5: warning: no previous prototype for function 'riscv_pmu_event_is_frequent' [-Wmissing-prototypes]
   int riscv_pmu_event_is_frequent(int idx)
       ^
   drivers/perf/thead_xt_pmu_v1.c:394:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   int riscv_pmu_event_is_frequent(int idx)
   ^
   static 
>> drivers/perf/thead_xt_pmu_v1.c:400:5: warning: no previous prototype for function 'riscv_pmu_event_set_period' [-Wmissing-prototypes]
   int riscv_pmu_event_set_period(struct perf_event *event)
       ^
   drivers/perf/thead_xt_pmu_v1.c:400:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   int riscv_pmu_event_set_period(struct perf_event *event)
   ^
   static 
>> drivers/perf/thead_xt_pmu_v1.c:607:13: warning: no previous prototype for function 'riscv_pmu_handle_irq' [-Wmissing-prototypes]
   irqreturn_t riscv_pmu_handle_irq(void)
               ^
   drivers/perf/thead_xt_pmu_v1.c:607:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   irqreturn_t riscv_pmu_handle_irq(void)
   ^
   static 
>> drivers/perf/thead_xt_pmu_v1.c:695:2: error: implicit declaration of function 'sbi_ecall' [-Werror,-Wimplicit-function-declaration]
           sbi_ecall(0x09000001, 0, 1, 0, 0, 0, 0, 0);
           ^
>> drivers/perf/thead_xt_pmu_v1.c:706:5: warning: no previous prototype for function 'riscv_pmu_device_probe' [-Wmissing-prototypes]
   int riscv_pmu_device_probe(struct platform_device *pdev,
       ^
   drivers/perf/thead_xt_pmu_v1.c:706:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   int riscv_pmu_device_probe(struct platform_device *pdev,
   ^
   static 
>> drivers/perf/thead_xt_pmu_v1.c:756:12: warning: no previous prototype for function 'riscv_pmu_probe' [-Wmissing-prototypes]
   int __init riscv_pmu_probe(void)
              ^
   drivers/perf/thead_xt_pmu_v1.c:756:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   int __init riscv_pmu_probe(void)
   ^
   static 
   12 warnings and 1 error generated.

vim +/sbi_ecall +695 drivers/perf/thead_xt_pmu_v1.c

   606	
 > 607	irqreturn_t riscv_pmu_handle_irq(void)
   608	{
   609		struct perf_sample_data data;
   610		struct pmu_hw_events *cpuc = this_cpu_ptr(riscv_pmu.hw_events);
   611		struct pt_regs *regs;
   612		int idx;
   613	
   614		/*
   615		 * Did an overflow occur?
   616		 */
   617		if (!csr_read(SCOUNTEROF))
   618			return IRQ_NONE;
   619	
   620		/*
   621		 * Handle the counter(s) overflow(s)
   622		 */
   623		regs = get_irq_regs();
   624	
   625		for (idx = 0; idx < RISCV_MAX_COUNTERS; ++idx) {
   626			struct perf_event *event = cpuc->events[idx];
   627			struct hw_perf_event *hwc;
   628	
   629			/* Ignore if we don't have an event. */
   630			if (!event)
   631				continue;
   632			/*
   633			 * We have a single interrupt for all counters. Check that
   634			 * each counter has overflowed before we process it.
   635			 */
   636			if (!(csr_read(SCOUNTEROF) & BIT(idx)))
   637				continue;
   638	
   639			hwc = &event->hw;
   640			riscv_perf_event_update(event, &event->hw);
   641			perf_sample_data_init(&data, 0, hwc->last_period);
   642			riscv_pmu_event_set_period(event);
   643	
   644			if (perf_event_overflow(event, &data, regs))
   645				riscv_pmu_stop_event(event);
   646		}
   647	
   648		/*
   649		 * Handle the pending perf events.
   650		 *
   651		 * Note: this call *must* be run with interrupts disabled. For
   652		 * platforms that can have the PMU interrupts raised as an NMI, this
   653		 * will not work.
   654		 */
   655		irq_work_run();
   656	
   657		return IRQ_HANDLED;
   658	}
   659	
   660	static void riscv_pmu_free_irq(void)
   661	{
   662		int irq;
   663		struct platform_device *pmu_device = riscv_pmu.plat_device;
   664	
   665		irq = platform_get_irq(pmu_device, 0);
   666		if (irq >= 0)
   667			free_percpu_irq(irq, this_cpu_ptr(riscv_pmu.hw_events));
   668	}
   669	
   670	static int init_hw_perf_events(void)
   671	{
   672		riscv_pmu.hw_events = alloc_percpu_gfp(struct pmu_hw_events,
   673						      GFP_KERNEL);
   674		if (!riscv_pmu.hw_events) {
   675			pr_info("failed to allocate per-cpu PMU data.\n");
   676			return -ENOMEM;
   677		}
   678	
   679		riscv_pmu.pmu = (struct pmu) {
   680			.pmu_enable     = riscv_pmu_enable,
   681			.pmu_disable    = riscv_pmu_disable,
   682			.event_init     = riscv_pmu_event_init,
   683			.add	    = riscv_pmu_add,
   684			.del	    = riscv_pmu_del,
   685			.start	  = riscv_pmu_start,
   686			.stop	   = riscv_pmu_stop,
   687			.read	   = riscv_pmu_read,
   688		};
   689	
   690		return 0;
   691	}
   692	
   693	static int riscv_pmu_starting_cpu(unsigned int cpu)
   694	{
 > 695		sbi_ecall(0x09000001, 0, 1, 0, 0, 0, 0, 0);
   696		csr_set(sie, BIT(IRQ_S_PMU));
   697		return 0;
   698	}
   699	
   700	static int riscv_pmu_dying_cpu(unsigned int cpu)
   701	{
   702		csr_clear(sie, BIT(IRQ_S_PMU));
   703		return 0;
   704	}
   705	
 > 706	int riscv_pmu_device_probe(struct platform_device *pdev,
   707				  const struct of_device_id *of_table)
   708	{
   709		int ret;
   710	
   711		ret = init_hw_perf_events();
   712		if (ret) {
   713			pr_notice("[perf] failed to probe PMU!\n");
   714			return ret;
   715		}
   716		riscv_pmu.max_period = ULONG_MAX;
   717		riscv_pmu.plat_device = pdev;
   718	
   719		ret = cpuhp_setup_state(CPUHP_AP_PERF_RISCV_ONLINE, "perf riscv:online",
   720					riscv_pmu_starting_cpu,
   721					riscv_pmu_dying_cpu);
   722		if (ret) {
   723			riscv_pmu_free_irq();
   724			free_percpu(riscv_pmu.hw_events);
   725			return ret;
   726		}
   727	
   728		ret = perf_pmu_register(&riscv_pmu.pmu, "thead_xt_pmu", PERF_TYPE_RAW);
   729		if (ret) {
   730			riscv_pmu_free_irq();
   731			free_percpu(riscv_pmu.hw_events);
   732		}
   733	
   734		return ret;
   735	}
   736	
   737	const static struct of_device_id riscv_pmu_of_device_ids[] = {
   738		{.compatible = "riscv,thead_xt_pmu"},
   739		{.compatible = "riscv,c910_pmu"},
   740		{},
   741	};
   742	
   743	static int riscv_pmu_dev_probe(struct platform_device *pdev)
   744	{
   745		return riscv_pmu_device_probe(pdev, riscv_pmu_of_device_ids);
   746	}
   747	
   748	static struct platform_driver riscv_pmu_driver = {
   749		.driver = {
   750			   .name = "thead_xt_pmu",
   751			   .of_match_table = riscv_pmu_of_device_ids,
   752			   },
   753		.probe = riscv_pmu_dev_probe,
   754	};
   755	
 > 756	int __init riscv_pmu_probe(void)

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202008060431.tKqJCkeW%25lkp%40intel.com.

--7AUc2qLy4jB3hD7Z
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--7AUc2qLy4jB3hD7Z--
