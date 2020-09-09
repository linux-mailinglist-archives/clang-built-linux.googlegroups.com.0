Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBY4U4P5AKGQE3YUFV2Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa39.google.com (mail-vk1-xa39.google.com [IPv6:2607:f8b0:4864:20::a39])
	by mail.lfdr.de (Postfix) with ESMTPS id 88354262E84
	for <lists+clang-built-linux@lfdr.de>; Wed,  9 Sep 2020 14:28:20 +0200 (CEST)
Received: by mail-vk1-xa39.google.com with SMTP id q69sf688908vka.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 09 Sep 2020 05:28:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599654499; cv=pass;
        d=google.com; s=arc-20160816;
        b=ek/SDlaGaolTCyn2m3meCWBmOMCyFZKlC7KsM27l/130/1hP6ii3p2g0szZRLwHhb8
         JrKwrI5/HlmtItpm2AU51bYGlh7FvF8qilfqlY09DJjJ5r/gtav3Ngarx6ZSY3jRvX9n
         2Z/mdzf8+WNLT9SeBA/EFjnCbjyA6OnZSR5sa4P95Pb8EZ55TiDhLq5gudCoX91JQlnG
         rDWWoU3XB6BVnfFbkcpJXzOanvQ38IMRFyUYJXsBlaOkYinHPsTE7D36wAQ35ZXRbS+X
         9/JaAVcreq3BaUntblRncNA5Z2N5mooPPeC2xqCMp/f/KJbQ9RQPgvkSM17GuiXmBVH4
         DJ7g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=WLBVc2Xq5lxcnJ1lRDAM0B3wqBt5JhT/JbHTZmy3AQI=;
        b=T+vBKaA9rKlVpux6cJgcGy0Cw1xAmR0drZ/Qfyc+fvdbDuy+rF5Kuh+l6BKLeGmXqi
         bulYUq/hhPecGcwWD/QMIxURPJhQhI/jaFK4ZOCXEpGUMFbD/iqx11LSDM4N02tVXicH
         af0pFNrC9yJXApp3+WQm6Es5dkjd6x9zRstx7EF5bt+xuN2iwEYLCSeVDEz8/Fwtp5kK
         XX1M/4LDwg/v/b+d0DuKIv1IGP/nV+ipJrUoPcbahRTVPTbdGAahXsgWjV+wvaRl/O3O
         gEY6CuLtCM/bqikmrADXHXnT3njqKHuaxsED1NvhPkI5vfQVheVY7FPuf5Arq83S4fMH
         iAkQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WLBVc2Xq5lxcnJ1lRDAM0B3wqBt5JhT/JbHTZmy3AQI=;
        b=BAOXTpxqXjTlyNdBMLFhX5MMUXOfnRvAAeDpoV1CC9hcTD/mG+vmSFIi8RqCmZKCeJ
         Xk7KSLdYHez8IgAmkA/3aFAFhPzmgl22vDZoaGgvoOXKQj6hlAWrqi2PjVpnMYkP8o/E
         fQ5tVO8I7WVFmOTHUgzkR4V+pTKQWv+IJp2p0oIgK7vQOkkNuIgR9eQ+m4pPXeCe7Qp6
         29uOGheBs473pX6GduRHSmoNd8lU2Jw/P4/3UTcuwAEXQq1iIBTMChA+pCsdNpGM5cjR
         g7J09p2/86ocC1TkDxZHQR6M/j8v95oi0s5eLQbF7aT8VS9KW+D5Jmx0GSDtshJ3jO//
         ZBvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WLBVc2Xq5lxcnJ1lRDAM0B3wqBt5JhT/JbHTZmy3AQI=;
        b=QoFjCiug5JzBxMPv4tQ6zFdp2NZey3icE1iRaJLSfY95wIiF92uDQHcTbXM/57jPgB
         g7VHJcJcQtMR0uGhSjXqlO9ZNlGW3xlth2WR+znv5YbrHmAcX8D1IGwt3/kMdHcTtRmT
         DIvgbJChlYjUwVdbgX8M3fGfTTyQax3rJAKflcS+4AlcISJlXI01sYonT0TxabNW6D7P
         bqzuW/V7qWYrHTtj3TtZxlRCqDY/zUocy1h5pyz4PRLN2YcHOAt8VWlKJjb+6WUa1dfS
         mhIqYxgZio02xbpEis9jsZaeAGnyygU8PRZYkWY7d9oDVALK+rQJpE+fD7qgHWuA6Ukr
         MCkA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5339QXk5y71/So4paVEORZEiWLC5KarXw//Lyu0eThdvxe3iRo5b
	Qw3/6hyrWIdGhuTXNawJb4A=
X-Google-Smtp-Source: ABdhPJx4NuTD2AsJ1ryj7+JAKQ0a3HrrU619QvP4l3EQ/2iVmjZEwoCD268qWdXSvUceB8NJvpxYCQ==
X-Received: by 2002:a05:6102:3105:: with SMTP id e5mr295637vsh.87.1599654499237;
        Wed, 09 Sep 2020 05:28:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:db19:: with SMTP id z25ls293344vsj.0.gmail; Wed, 09 Sep
 2020 05:28:18 -0700 (PDT)
X-Received: by 2002:a05:6102:1045:: with SMTP id h5mr323746vsq.42.1599654498614;
        Wed, 09 Sep 2020 05:28:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599654498; cv=none;
        d=google.com; s=arc-20160816;
        b=iCzcrCuko/cELaw8zMT8zQoXofC0ewKNzjb2GvFaWd4fgD3iRMzUC6g+fn06hPu0p6
         /b3eyvFNLopQy81Cru44UmhO2DW3CSfRg3drJ0JjilgJiigiPWOD3SQkJkriAZH11OpW
         CybQD0yhxvhC/gm3NIpSsu1HF8DQuBjEMU3BiE9vcKrUpzIyoxWcxLbWfXVOpxXiE4XW
         stkHmtMM9SbCvMNqVNeKMudSLK971iqOLiiB8JWfBkUuMwqVfUdTw4bit21N4T1/NF0v
         2WdeBY3WaqMElZmox0p3QEl9ogryP9Qh8vyKdWQyE0bbKFpeRFWm0sarupSFz7d5ds98
         7DFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=UD2A9QRSLWK5Lf4zWpPqjZ0m6cemlcgpvEylDza2kFU=;
        b=Iaw9Smxgk6axbcfAJrGhlYIBHeh3vFrZd4/i2X6BcLVrrJSCcFxesq+xtC8HSaNtnQ
         /CLloEKOtEOLsS0oAMFaKytpizbfviU2u7JIqP59Byh4X8U8Pm2SXeM0/qJcjGYEjijP
         rk4Fu2hwV1jC5gabhwiORdY2AoLtWHmK5aNFhwr8p5HhgFzukGoi8iaBAWBv1gg9XkPf
         C1OPWfBxUV120CtgNM6PiidAW4Ct56TTKsqb3uCD1G/O4VAomQvXPj+WBf3oHo+FdKDz
         nQnWHJJ+GSxi70KPTCQUC3bZpVxFtB3td5PzWHYW+2i59+FdbcYiKmUHDMxe/WRbFVxz
         4U5g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga14.intel.com (mga14.intel.com. [192.55.52.115])
        by gmr-mx.google.com with ESMTPS id s9si173697uar.0.2020.09.09.05.28.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 09 Sep 2020 05:28:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) client-ip=192.55.52.115;
IronPort-SDR: yfwlG4uCkKjk2HCYzhGJ+NV++QAR8oihw50bOLX7Tcp81O38wd8IVcrGOeZ6PwDJMh3IZVzzWm
 n64ZIs0Rvknw==
X-IronPort-AV: E=McAfee;i="6000,8403,9738"; a="157594633"
X-IronPort-AV: E=Sophos;i="5.76,409,1592895600"; 
   d="gz'50?scan'50,208,50";a="157594633"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Sep 2020 05:28:16 -0700
IronPort-SDR: nNFBalRbRzoojXxJ4OxK3ZhrtZXpP9JIbM9wAn9SQlZDs1o7TRCCO/sUADlqSTbzRHIsBzGufC
 OY+m3/6I6tTA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,409,1592895600"; 
   d="gz'50?scan'50,208,50";a="504726443"
Received: from lkp-server01.sh.intel.com (HELO 12ff3cf3f2e9) ([10.239.97.150])
  by fmsmga006.fm.intel.com with ESMTP; 09 Sep 2020 05:28:14 -0700
Received: from kbuild by 12ff3cf3f2e9 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kFzCw-0000Pu-7z; Wed, 09 Sep 2020 12:28:14 +0000
Date: Wed, 9 Sep 2020 20:27:15 +0800
From: kernel test robot <lkp@intel.com>
To: Kairui Song <kasong@redhat.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: Re: [RFC PATCH 2/3] vmcore: Add interface to write to old mem
Message-ID: <202009092032.f78NysVv%lkp@intel.com>
References: <20200909075016.104407-3-kasong@redhat.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="huq684BweRXVnRxX"
Content-Disposition: inline
In-Reply-To: <20200909075016.104407-3-kasong@redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted
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


--huq684BweRXVnRxX
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Kairui,

[FYI, it's a private test report for your RFC patch.]
[auto build test ERROR on linux/master]
[also build test ERROR on linus/master v5.9-rc4 next-20200908]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Kairui-Song/Add-writing-support-to-vmcore-for-reusing-oldmem/20200909-155222
base:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git bcf876870b95592b52519ed4aafcf9d95999bc9c
config: riscv-randconfig-r015-20200909 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 8893d0816ccdf8998d2e21b5430e9d6abe7ef465)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install riscv cross compiling tool for clang build
        # apt-get install binutils-riscv64-linux-gnu
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=riscv 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All error/warnings (new ones prefixed by >>):

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
   In file included from net/core/dev.c:88:
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
   In file included from net/core/dev.c:88:
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
   In file included from net/core/dev.c:88:
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
   In file included from net/core/dev.c:88:
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
   In file included from net/core/dev.c:88:
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
   In file included from net/core/dev.c:140:
>> include/linux/crash_dump.h:131:45: warning: omitting the parameter name in a function definition is a C2x extension [-Wc2x-extensions]
   static inline ssize_t read_from_oldmem(char*, size_t, u64*, int, bool)
                                               ^
   include/linux/crash_dump.h:131:53: warning: omitting the parameter name in a function definition is a C2x extension [-Wc2x-extensions]
   static inline ssize_t read_from_oldmem(char*, size_t, u64*, int, bool)
                                                       ^
   include/linux/crash_dump.h:131:59: warning: omitting the parameter name in a function definition is a C2x extension [-Wc2x-extensions]
   static inline ssize_t read_from_oldmem(char*, size_t, u64*, int, bool)
                                                             ^
   include/linux/crash_dump.h:131:64: warning: omitting the parameter name in a function definition is a C2x extension [-Wc2x-extensions]
   static inline ssize_t read_from_oldmem(char*, size_t, u64*, int, bool)
                                                                  ^
   include/linux/crash_dump.h:131:70: warning: omitting the parameter name in a function definition is a C2x extension [-Wc2x-extensions]
   static inline ssize_t read_from_oldmem(char*, size_t, u64*, int, bool)
                                                                        ^
>> include/linux/crash_dump.h:136:1: error: expected identifier or '('
   {
   ^
   12 warnings and 1 error generated.

# https://github.com/0day-ci/linux/commit/6d641ec8d1a1d979916bca93ddf975a9a860c8f2
git remote add linux-review https://github.com/0day-ci/linux
git fetch --no-tags linux-review Kairui-Song/Add-writing-support-to-vmcore-for-reusing-oldmem/20200909-155222
git checkout 6d641ec8d1a1d979916bca93ddf975a9a860c8f2
vim +136 include/linux/crash_dump.h

ae7eb82a92fae4 Thiago Jung Bauermann 2019-08-06  122  
ae7eb82a92fae4 Thiago Jung Bauermann 2019-08-06  123  #ifdef CONFIG_PROC_VMCORE
ae7eb82a92fae4 Thiago Jung Bauermann 2019-08-06  124  ssize_t read_from_oldmem(char *buf, size_t count,
ae7eb82a92fae4 Thiago Jung Bauermann 2019-08-06  125  			 u64 *ppos, int userbuf,
ae7eb82a92fae4 Thiago Jung Bauermann 2019-08-06  126  			 bool encrypted);
6d641ec8d1a1d9 Kairui Song           2020-09-09  127  ssize_t write_to_oldmem(char *buf, size_t count,
ae7eb82a92fae4 Thiago Jung Bauermann 2019-08-06  128  			u64 *ppos, int userbuf,
6d641ec8d1a1d9 Kairui Song           2020-09-09  129  			bool encrypted);
6d641ec8d1a1d9 Kairui Song           2020-09-09  130  #else
6d641ec8d1a1d9 Kairui Song           2020-09-09 @131  static inline ssize_t read_from_oldmem(char*, size_t, u64*, int, bool)
6d641ec8d1a1d9 Kairui Song           2020-09-09  132  {
6d641ec8d1a1d9 Kairui Song           2020-09-09  133  	return -EOPNOTSUPP;
6d641ec8d1a1d9 Kairui Song           2020-09-09  134  }
6d641ec8d1a1d9 Kairui Song           2020-09-09  135  static inline ssize_t write_to_oldmem(char*, size_t, u64*, int, bool);
ae7eb82a92fae4 Thiago Jung Bauermann 2019-08-06 @136  {
ae7eb82a92fae4 Thiago Jung Bauermann 2019-08-06  137  	return -EOPNOTSUPP;
ae7eb82a92fae4 Thiago Jung Bauermann 2019-08-06  138  }
ae7eb82a92fae4 Thiago Jung Bauermann 2019-08-06  139  #endif /* CONFIG_PROC_VMCORE */
ae7eb82a92fae4 Thiago Jung Bauermann 2019-08-06  140  

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202009092032.f78NysVv%25lkp%40intel.com.

--huq684BweRXVnRxX
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICCq7WF8AAy5jb25maWcAnDxrb+O2st/7K4QtcNEDnLaOk3ide5EPFEXZPNZrScqPfBG8
iXbr28Re2E4f//4OqRcpj7zFLdDuemY4JGeG8yLVH3/40SPv58Pb9rx73r6+/u19LfflcXsu
X7wvu9fyf7wg9ZJUeSzg6hcgjnb7979+Pe5Oz394979Mfxl5i/K4L189eth/2X19h6G7w/6H
H3+gaRLyWUFpsWRC8jQpFFurxw/Pr9v9V++P8ngCOu9m/MsIePz0dXf+719/hf++7Y7Hw/HX
19c/3opvx8P/ls9nbzp9uH0ZTW8mz88vX6YPD9OXcTm++Xx/dzsqH14m28/lx/LL3eT+Xx+a
WWfdtI+jBhgFlzCg47KgEUlmj39bhACMoqADGYp2+M14BP9YPOZEFkTGxSxVqTXIRRRprrJc
oXieRDxhHYqLT8UqFYsOouaCEVhYEqbwn0IRqZEg6B+9mVHZq3cqz+/fOtHzhKuCJcuCCNgT
j7l6vB0DeTN7Gmc8YqAWqbzdydsfzppDK4SUkqjZ8IcPGLggub1dP+cgOUkiZdEHLCR5pMxi
EPA8lSohMXv88NP+sC87DcqNXPKMdtxrgP6Tqgjg7UayVPJ1EX/KWc6QjayIovPCYO1RuWQR
9236FkVyMHaE05wsGQgTuBkKvRISRY0WQGXe6f3z6e/TuXzrtDBjCROcGo3KebrqdmRjePIf
RpUWtWMCQRoT3oNJHmNExZwzoRe3uZwhllxTDiIu5pmTJADTqDk7Q2VGhGQ4O8OK+fkslEbU
5f7FO3zpSQYbFIMt8HpW0fE1sqZgcguZ5oKyyooupjUUbMkSJRtlqN0beBhMH4rTRZEmDHRh
sZo/FRnwSgNObSNJUo3hsCrUUAwaMxQ+mxeCSZgshqNiy+JiYZYdC8biTAHXBLPjBr1MozxR
RGycM1AhrwyjKYxqxEOz/Fe1Pf3unWE53haWdjpvzydv+/x8eN+fd/uvPYHBgIJQw4MbV9nO
LOmcBeCdmIhJpGeTMhfY+n0ZADqlQKBZWcLvY4rlrT2DdnVSESVRHWSSu/Ba0P9gi5YvhO1x
mUZEH0GbnZGWoLknEUsCyRaA6zYCPwq2BkOyNicdCjOmB9LbM0Nre75A5QEyD0gkirQTj22n
oTEJA4VINqN+xKVycSFJIAo9Tu4ugUXESPh4M+mkYpil1NfiQWVfrU8JQs0CCxOhYh/VhyvE
1n8tqr9YHm3RGm5KbfAcmFeHqQ1FOuaE4FV5qB7HIxuuFRqTtYW/GXcngidqAYEqZD0eN7d9
11JZt3EwzdmRz7+VL++v5dH7Um7P78fyZMD1NhFsL9zD5DfjqZUFzESaZ9a+MjJj1XG1fWHM
Yjrr/SwW8Id9VPxoUfNDDmCFqLbUMQoJFwWKoaEsfHDJKx6ouWVGaoC8gmY8kBdAEcTEXmcN
DuE0PDGB2hZoUDL3zLuDA7bklF1MBeNc71LD/SxEVmCiFTKHTOmipSGKdOx0tgIxEJxVB8uV
LBJps9eZSoI7LNiW6OEaxfOgYtNMxVSPLUicLrIUTEiHF5WijrayWZ2bmfU7znojQakBAzdN
iWIBMlqwiFgphLYokLSJvMLStvlNYuBWhWYrtxNBMXvizrwA8gE0RgUCyOgpJthagmL9ZFme
Jkx7fKOnOyzYpKkOebVr6eRHizSDoMyfWBGmQsd8+CMmCcUE2aeW8BcnIa0SUec3+H/KMmXq
He0XLUm6BljFCWRWkwtpI3FYa0G3+WZzdKuEyfIcJhNukw7H39l5uuVHWBSCnIS9TgLpXZg7
E+VQu/V+grXa+eKS1WAaZ2s6t2fIUpuX5LOERKFlSma9NsCkcjaAcKvM4GmRC27XayRYclhz
LR9r5+AdfSIEt2W50CSb2DlWDayAPxGNtGgjGn1AFF+6mrWU02k49lkQoIfMyEsbX+GmrXUt
nZXHL4fj23b/XHrsj3IPaQuB8EJ14gLZY5XC1crtmKBh9x9ybBa2jCtmTfyxXTnUi0QVvl2U
yoj4jn+Jch/zSEAGyhAQ1+rCz2VhAoFOVgoBFp1a9Y2c52EIlYiJiSBfqD7B6zknQ7HYuGhd
nfOQU+KWUZBGhDxy7MUcTONFndTcLaMb4smdb9ccgku67FUocUwgxCXg46AoLGIopG6m1wjI
+nF85zAs4iJOA6c+jeMckeQT1AYFBNPbcbeGJTF8H28fugyigtxPnJwiDUMIqY+jv6aj6h9n
kSGYNRyYgiXEt52KQa4I2IRJiiDJn+czpiK/RyLzLEuFklVMNTMahVnKUoQuqmyxJu7pRNeC
sIyZvMQ3CZnjvCxgeywLo1jHcts6kUDFLyDuwRKdINcSyDy+hM5XDOo5ay3ZTGkRQcK8ZOBu
buu88EBBU6/ls9sAg0wCfF7oOAwNW3Kzve7oAGzBkkBsFENPssvfTJm9bs/6WHvnv7+Vtlcw
ChHL2zFHbKhGTu4sB061+UVwRoPItCi6iNkiSLLBolUa5CAKWXUvbN9L1tl8I7VFjWeWrcg4
szIcYfK8x2k3IZTlWZTP+jVHYyY52H9XJ3WJgDlFXJKCIqPCLLcPuis22/FaGX2znKfiZjSy
pwLI+H6EZjKAuh0NooDPCIsFT4833VGskre50FW3Yx6Magd8zcd3BYfekX8AssM3bSzWdmgc
mEYjZGvtcIeysqvDn1DAQLTYfi3fIFhc8smsc5LF1ZF3IBCTdVYVICgaOTtbfYIju4KcmIXg
vbkOPnWQQDc7uDanFbo9Pv+2O8NZAYH8/FJ+g8HoPrqWnnFA8zRdXDoAMFnTA6p7sD2/p2s6
cKs62UjFZgAZcMi4gYZYxl/NLY3rrzuqsoc10V2wGQo3hYTxqUWQxxeMjU+urKaACOgUk3Up
agZDgFSwNshvdeOpx0V7qV7zR4sFiw46KoB6A4jZRPT5wBbrFWWM6ihtOQrjQaTejslGtSPv
jaZptmka4MpO8KAwB3/gwy5WRASXycrtGOKgSTB7K05Nig6xbMFEAv5NrNZWatLapq777YRI
XvSGZjRd/vx5eypfvN+rY/jtePiye61aaC0jTVbPNeSRtUIMWZWxmHTHSU+uzdTPYb5j/1Yt
H+us3S5mTZIrYz37qKejvtJ0VUR1E8U+FDUqT1BwNaJFdulOdwZQ/9nEGUHbywc3V7+g5LNr
aG0guld5jUanLyvI56TUZt8W/gWPTaKDKDJPwIrhBGxiP40uxCWr9l8ETia3jqtfd5fanwuI
ApLDQfiUM7uB19TivpyhQMhu+s2gqnRXbCa4wsJ3Q6PzysBlWoeKwvT7hYtb+ao/E4CK+BMq
zmoSnaSFuLzNlkFuaUZwnWqC6ooM0lMqNhnap822x/NOG7inILDb0YpAPDU1eROW7NUTqH+T
jgY7n1BVt3h7aCrD6wNjPiP4UKhYBMcHd3ZI6FX2sQxSibPXPfWAywVUV2zgnPAEtiVz/9oM
uicOuVWxnk6ceVp752vwvKybqsNFQYwvTSMu+m5dojMbkEozZaRETx3NyDzBwAsi4gEdsPD6
XPrOcTLFmFqHw2LbpCg9O7RPTgzZDuXuaQKYjrN2k0ODTY5VXS2mXV/ZMmsYx9MqYQwgNLo3
yBZysfHtA9yA/fDT45t1S+dM0lqwTG7srp/Ztcx4Ynw4REfnIrDGm0Bd4a/h0LEr8FRsaLCN
dEe3ITSOebqy6o32t5Ek+6t8fj9vP7+W5nmDZ5oiZ0umPk/CWIEDFjxTCPsar4tlS1sOsDuD
HbhIowD3bBXNkya6RmCSqqDok7lEEKooqLTNgWBElRi2Sh7avxFOXL4djn978ZW8v24SWL1A
vbkEakSd/7r5rcwiSL4yZZRlyrwH84/VvNJdCcF0NIUIi3XEoYIEnx2IQvUbMUkax7lpQ3NI
48AnxKb1KuXjjVW9RgzcPQFzx3opWZpa/urJz52w8HQb9pTWbFlAJlAsTc5sD4CkXGfKF1eV
TQqoLyEges1jYrfQWsvKFKuyY+KkfcNKaSXB7Hbawgc5KJY05YTRbFKe/zwcf4dU0VKppQa6
YJhZaffuOns4GM6Fk4EFnOC+HHJ1FL4ORWzKF/xWHeqlBdvgI4PM3M3gN0O8EoV1C1N10ymR
+OECgrZQFSlkwgLjmhVZYtl19bsI5jTrTabB+uYhG5pMEwgicLzeN8/4NeRMh1oW52tkmRWF
7pAkzOlDy00CviBdcIZroxq4VHwQG6b4/W+N66bFJ9BqKch8GAd59TCSZ/3Gh41tt2sDtUH2
QIpmDdhlnwfZsAEbCkFW36HQWNCLVCLFzVbPDn+dtdaGtbYaGpr7dn3cPJVq8I8fnt8/754/
uNzj4L5X8bRWt5y4Zrqc1LauX2uEA6YKRNXdl4TjUwQEj15695Nrqp1c1e0EUa67hphnk2Fs
z2ZtlOTqYtcAKyYCk71BJ5DEUhPL1CZjF6MrS7uyVO1pMt0l0s3hgZNgCI30h/GSzSZFtPre
fIYMggkdJhFZhDJqUqNMUcuvmZ8X9lJB9TwXLwVtP6AfK+p2kw5uV2kgpJuGDITJOOtFfZu4
alnhKVF2BQm+KKB00ANLOuCdRYCrDHSKSxgSIRQejQdm8AUPZlgiYnpcxo9I55VEDUKZLSOS
FNPR+AYvuQNGE4YrK4oofg8PFWmE6249vsdZkQx/QZnN06HpJ1G6yghe73LGmN7T/d2QVVT9
cXzLFLt6DBKpn0qk+s2qqXYaZYD6iOkHoMzSjCVLueKK4r5tiSQh9jqhWlkMB404G4iU1YsP
fMq5HE6XqpUGDN+MpohuITmX2ukPUX0SaniChErM1Qr73ZIIzfM9OxqvM/f5SvWgRjPMBNSb
6LufjoZGREqO+WsTlvXrLrkp3OcF/icn9zFX8wpqzrjuYw0wC3Wnr3oj7abM3rk8nXvNXLP+
hZox3IrNsRUpxOQUqpO0J9Q6rb9g30PYqbplAyQWJBiS3MCp8vGDSEIQoRhybmGxoDEirBUX
LNJVlq3WcKZP7c1FQ65F7Mvy5eSdD97nEvapy88XXXp6EFUMgdXTqCG6jNJl0dw84zMvb0bd
jCsOUNyNhwuOPuLQWnmwrx7N767x4qjvAXkZZsmZ41kTZdm8GHpUnoS4pDMJcXDofbFOf0Mc
dyWuBxLOji56rasskcLyqscxLYuQ8ChdomeCqbmC6rhxZc2hCMo/ds+lFxx3fzidqOpSyu5r
9X/Ub8klCsRudAFtGgNwxrHGAGCJdG4hawh2jdPizEWjhMXiqnDI9BuEf0SMvyFzCKG4xw6T
FkEse4IaepOvcZ9yLhayt7UrpqqxUuUDQRqQPMWDgcaBix7GkZ5j7lxUfX8PVJcNeoA9H/bn
4+FVv5B9ac3I4R0q+O/NwD26JtAfjTQmMyzytX71s75YQ1Cedl/3q+2xNMuhB/iLfP/27XA8
9xYCpfaqyHR/S084uBpIZfvt+9qVX5uqargdPoMEdq8aXV4upekADVNVK96+lPpdl0F34tUf
GeDboiRgYK1De2se0H+XbdvvxtXaqpztX74ddvv+QgqWBOaxDjq9M7Bldfpzd37+7R8YkVzV
SZFidJD/MLfu0FEigq6nmtGYcmInkhXE3IEWlKPvlYEDeLHGh2b05+ft8cX7fNy9fC2dhW9Y
ovB0PwsmH8cPeNI8HY8eBl7Wkoz3soXulcTuufbjXtrv8ubVlfecRZl9ceCAwQWoufNF11LF
Weg4pwYGmVDeV3NNAmE+CUjU++Sl27eo5gy5iM1Fk/nI7GJD4e749qc+Z68HsNqj1a9eGc3Y
u2BrJUjLsHoJ06eu3lZUG0XX1VHiF8m1kfXX1WZRxLxyWdo9+ibzMpfOOK4HteSsL1cDwZcD
y60J2FIMNCYqAl3g12ygaIrTJVatGiIiNwltSDOR+qw7I4LNnHuA6nfBx/QCJiHl1kfjrQ+3
HxfXMH2Rc8nUvgMKYtLck/h5GNpK16jQOL3eq+zmjU/1BiiFYiKdbZxnF/hZqd5YvZ+8F5MS
Occ4TtdqoPqVXCd7+hUUntfEc15UAumeZ1mTWLlmCskf7VUXzZ4Sab9+hF8FmHN1r2ADY/0V
TINoOVf0XIQ1bmCCIvfXzWjLHcYKq9cCZek+dd7Bp6G+RFADX6ECVt8w6XcTNoOCERFtcNQi
9f/jAIJNQmLuLMDcKTFbSgBzbAl+O/cqqX6YBNtdgnE5F2AVQvcXHJjOq503plB+mhetbz1A
QdbT6ceHiRNTatTNeIp93NCgkxTqUGtf9WMO7A1IkkeR/oGFJ6hVY6c1Uo/RuYKUsF3Fs9vx
Gq+3GuIchIIwb9BRmmYXCzVQ/Q6h/jhx2seblx6pGYusLxD+wJ1qs+nv4OXiO/j19CpeEGzL
Rp66P0CDpZU5OODaPzkPX12C1cWtpd2nM+alizRk/qqi1YvEhPY9mQm5vsyZk2XMrMy0qU4B
Wn07gsxjhiBVuB5TdcqJ/VGZgc9XzreMBhYSH9yzFSEqKO0BFBEz9+7PAhs7G1pMTRLS3sQt
vG9+Nlb1G81NE8cWWJXq707PVqxoVBncj+/XBaTBlmOwgCZooggdIVsE5APxxvgv24nMIclI
8R614mFsVIfdhVD5cDuWd6MbmxvEzijVX/Zqn7/kdCCPmENIjlKEK8kC+TAdjYnbguAyGj+M
Rrd4ZmuQY+zRtGSJTIUsFJDc34/slTYof37z8SNeRDYkZlEPI+w2dR7Tye392Mmy5M1kOkZo
dRQCiRSMZrfNR2f2gnp+Aq2Bhi9Xqjq2kEHIsLft2TIjiR3d6LiOM9WDFwbZWYyVghUGvMkY
izEd9t4xgwocsRmh+FVnTRGT9WT68X6Y88MtXU+srLyBrtd3k86yazAPVDF9mGdMri9wjN2M
RnfOIxd3z5aL9T/ejC7svvofBpR/bU8e35/Ox/c3833U6TdI3F+883G7P2k+3utuX3ovcI53
3/RfbVkq3WZBPcH/g++lnUZc3uoTf9WYDRH4Czxm6PsyoqutLLrYO9+fy1cPUiTvv7xj+Wr+
5y+nvrdfQqh2UvVl7Rab52NXmFjJJUtWn/Cwxugc72vrV02wAaq/16S4DAyJUHI9SDEnPklI
QfD/WYDjnauvefSFRwW5lIV5nhun1oNZQXhQ6GTUEpCmsh7m6DG9z6ANTH/n3nsY262gntp8
qeL9BEby+7+98/Zb+W+PBj+Dkf/LernWZC120jEXFcwKLy2dcx/WUg70vBv0wH2Y2Qn8XZfz
A7dihgSqqxn+1MugJdV3crq2bLolRgqqOSunng7gTNRS70s1pBVieCnc/PeCyGGv/+88l0o1
8Ij78Ifj5xuU6U9K9M1KRSMya9XN5129jV4IbmU+NxviGcwvRBDMCxEQLGY0aIjWcnWxBUCw
GHcjDZ5EOUEPEnZsnMwVq3kDrGKJsTrSb641OnIDudICrwnq7EV+n7JqbQg241LBsR54mt0W
IVgJUGeH/dxYUYhk5rU/npQBWn/4wbH8SSMz41Eshjo11R+/1BMOJFFaZ5cEjUb9rEmeLcZh
LrEH9vp+3ru5fbjzfgp3x3IF//4fZc+y7DaO669kOb2YO3pYsryYhSzJtnL0OiJty9m40p1z
q1M3maQ6maqevx+CpGQ+AKvvIt3HAMQnSIIgHr/4u+OhHit4JnwsmhkCtUVWPTOCshZ4EPTs
hnLc0zYZj30qXIQTXUF7vj9mte9KyiZFCtkoBhp4POcjfrOqXs95U1NhLuTjM77YpNlaRciO
bV6ACQg+5QOJukwUBhRhxFPXPh+rc4kbtRwJYxfRPuZq3h/9gpOiJx49+RlvoIDfL3LSxp6J
/Rf/+uJcih8IdS2mGK1rWmKl56NrSqPekT4Lke7zr/8GOYepd4TccLqy3iXm96C/+InxCAse
Y9zm2Yu4MghRKC56yxJXv0PERbLFrWceBBn+kHAR14YK1/Lw23DqURcJo0V5mQ+8sh5xNQjk
zhGW8koBx8pejhUP45CydZ0/avICvAIK+wBs6qJn2MFufcorxymnqMRd6pkEzdlaJ9r8g+Nl
IuTOeSrXvrUdk9oyC8PQ1fMYMyq+jfGnHz3bXVs4Cx6pVWxQHa9zlM0E9+Nw6FBvyV05byjD
siYkEZSOqwmpeVhjiPPYj5aYrSD3bp9lqAe28fF+7PPSWVn7Db6g9kULmybhttFN+GAUFIPx
+th3uCIECsMXpop/ARd+6sMVlhMdhudgq78dJqUZ3+j3Y8tKNEet76yPLvXZGld+OnfwgiYG
5D7gFjUmyWWdZH8kti+DZiRomvr17D6WekinEUgvT1XDbHsiDbpzfA0saHzqFzTOgw/0asuE
INjb21KN3Q3MT6RfjrWUjhW4DaLb2UNQWt3nSvuUUHb8TY3qaI2vtCXSo6ImwiVpJqabiOlk
lFe150aGNXpwfhWttr36UJzs4FYKcu8GCO3SiUOshRdrd2fwSzqc39ecnZFD/NBe3ofZyj53
7PtjYy3CI/pea3xyOufXqkb38zqLkmnCUR23HUqqEN1GARy4dAFh6H7EbZIEnFjn9UR9IhBE
JYChittQLRMI6hvCwuvQhgHOiPUR3+vf448jjzFv81Fc9q1Rby8ttT2xlyPeMvZywxTWZkWi
lrzrrWXQNtPmThi3ClziaVBNLLs+RR+uK+2pi9HmtheWZRv8LAVUgm+rCiVqxD0oXtgHUaqn
LsTb03srviui7H2KPy4I5BRtBBZHi9HebuKVtS1rZWKvRRdkextra77E7zAgWOBQ5U23Ul2X
c13ZY09WIPyuxLI4Q59lzDIrDgF1LUmYRQQDXybUMcIubuy7vrU2vO6wcmR0dp/qu6jn/7dJ
Z/EuQHbofCIvklX0Qmqh9deDe6NEWn4R8oZ19MrIGSX+5mt82L9YfRb0/coxr9w/xVgc666y
JPqTuMwI3ke7cqvAUOlQr1wuhqpjENPNevTrV0WP16Y/2vbAr00eT4QRwmtDStWizKnq7hT6
FXXFMxtyhpeH1hJcX4t8K0428kVmxp9zQix/LeDdinLdGttV7hhLO/pVGmxWluNYwQXWEp+y
MN4RjlKA4j2+VscsTHdrlQlGyhm6eY3gODOiKJa3QnKzo0vDEU4YOphfVtUrXiTErziIf9a+
wQiNm4DfDzDfK0zNarGL2/r2XRTE4dpX9jNFzXbEGSFQ4W5lQlnLCmRjYm2xCwvCHrQa6oIy
rIbydmFIXDMBuVnb8llfiKUNWR7QqeDyVLOGgLfgV7g+vefO3paG4dZWRKwYYKEKV5oW4E/U
EYdajcWbMxtx6/pB3LetG8i1uE/NsUVfWYxveXU6c2tfVpCVr+wv6nsxCOkKHCgZ4RjKV5U9
F/tQET/v46kmrG8BK8RQMa1o8CCj2Gv9obPtbxTkfk0ohlsI4jWljLKAMAvXNhH5VNPbqKZp
GjHWqxM01SOuTwVENODPiIeyJB6b64E4GkCE15GrcQHhdKMciJRkDILtbpe0hJl4Q4QPGAYc
zpwPpLr69O3Hz7//+Pzp7d2Z7ZcnaKB6e/ukPbcAM/uw5Z8+fv/59of/EnRV26Tx66ErbtVp
hOG4pcoVP5882gls4slbaKGt6ZhoogydH4Kd9SYIar4YE6hRHBPWttWD+QU+PWPN2gSzwzEL
fVwKMWQl5EVyTMdcK08w3CIaYEjThsFEmIHJTDgn6D/cSlMiMFFS/1x1tqZJr78xvxW+bUQl
fQjfXT+DG+DffJfJX8DX8Mfb27ufv89UiJ/IlXoka0G6x/Vx6iWR1fgBI1/zEK+6h+jLSnSD
vlh7j/h5HxxrXW2p8/3fP0mzlLqz0gvJn/emKg3zBQU7HMCGubEMoBUGnGmVCbEFVklfXiyz
foVpcwjHpTGyjecfb398gXwbnyG09P9+dIzj9Wc9BMojPJEVyfv+9pygujh4BwtxR7+a40Z5
L6oPXqrbvs9H6wVmhon9akiSDDcHdogw2fhBwl/2eA2vPAyIsLIWDWHSaNBEIaGZWGhK7Z4+
phnu2L9QNi8vhMHwQnIciEu9RSE5i/DcXwh5kaebEA/4YRJlm3BlKhRbrvStzeIIX+UWTbxC
I3aXbZzgb6oPogKXIR4EwxhGhC5rpumqKydeqRcaiFwACriV6vRda2Xi+qY81OyEBpj3SuT9
Nb/muInEg+rcrXJU/cpS4r3r0U2x4+BPIgajxGI1rpTD2+jO+3NxoiJOLZQTX214kQ/iBrVS
477Az44HJ3CI/YdqSIzN01IAAuA+MEzXq3CIo46Ei5tUU8n+4zKnJBItTnZbTDpR+OKWD7lf
dgVHvGOQahFc2DRNOfIluaXozty6fOB1wUhzV5cOpNWnJw1EOcKcYxSBjOhj3W4UBMoFm4GC
CI9kUtWDkLHWqE55J4QSIpjag+xlL36sEQ3VMWdnIqiNIlNcIeQgIf1i06t7D+zBxOXDjPts
AMGCFXKZ1Lby0KTIS7bNNvjGbtNts+0WaYlHtMObonDa15CuYufq7jDCMQyi0PbAsPBwo7i3
prbDQp/FmVdPRT3i+P05CoMwtuwDXXSEyRImFTxMQATsuuiyOMzwhha3rOBtHm4CqjJFcQxD
7CJuE3LOhtmwkSYgB03jLe8VH7/xDPMwGmrxY7Tr013muyCJ8LkCD0LB5HiTT3k7sFPtmHoa
BFVFhNaziI55k2PPND4R4rNpEU1FjGcaMKmQx2cTfez7sl5rzqkuq2qgul03tWDhtTJYym7b
NMTH/XjuzIxLVi9f+CEKoy2BdfSzNg61rzUo5H54v2aBdIEiCZ5sMkIkDMMswBTCFlnBEngz
RytpWxaGGwJXNQeIdVsPG3wAWvkDx9XtlJ6bO2dk8+uumnArZLOKl20Y4c0TImir001iE1CK
GyhPpiClWEf+PULSlZU2yL+vNTnXagNem+6SZ9tp0psWWs5VXAMI1bhJBscuxAPoWc1R13lr
7sN4m8X4AMq/a3GTo/CskLtAj4+wQEdBMDmJvXyKDTVuCo15b/lUW4IHinygih/bOxq/1doY
6sbKtWHj2LPZYjyMYkwWtonaA2dkEefxIAQ7z+sKI52yNKFHcmBpEmzXeedDxdOIuI5adPId
eKVNY39qtQhBcJC4Y1n2PvpmUbPChWXZ0GaCmfpO3FDM8VJoIU+FG2yX12gpJQlecDYkhd0L
sSQJXGgVT4FoPedWOmStbpq2WzGgVGsUfhfDGxGvidCYM2W2ixJV0BrdbosUaJOp5XwfrqNu
uaNza9s82ySBC5a6kb04Ru3whAayrIq+xAMTP4gukNjKemOXuAJW4aNNT7qZ81qG/OAV/nS4
6MjYIG51ivIZ4cTfE+FqtJ7xCgmDn5Zxq6TS+glF0YbBs1rALaOBhHFrs5dPQyRYfKhe/Ek4
y/8960vetBC/Gxtlm7A4JEEaCyZpz349Apsl6C1b46/tzCjePANOsgD59fiSBQm0US0bn4PG
HnJKg/UScJtLoqRjveq86iV2fSkBWRqvkqnD9v6UXYGv6dkspybeTG4fNNg9OWwkZdOhqMSu
GaU7/O1tZsnclb7dURgvUSqYTbEkFTF7oUwTjBKhm7coT6c/QnA+NtBbE+OgbgqXPVUjx7b2
L2ISiCt1JErd7Gxy1mK24RJ1COJHc2eIK9pIeFRqT2eXPgw9SORC4sDrwyHG1YcKmViyj3oV
/fjHJxnLqf5H/851RtUNfryrAgD+S5rmK4ohHymtoiYoalyvp9BNvRdov+Yxvz4pVPuyOAW7
NbOo9ZKw2cWMBaF01PhBNu6rDVWvAcyYo7MavoXumLeVHStnhtw7liQZAm82Jtct4Ko9h8EL
rlVfiA6tc1NbHLawKX/4uyNPceqh6/ePf3z8DR7EvXgfnBsRgS5mkmrlEAfRqTqm0tAzk3Im
eMBOVx8m6B5gSApSWnlPIVnDLrsP3DZiUcEcJBiZykZGRYds0jpll3LLfvvj88cvxqOqMcV5
o8IzFVZyHoXIIlPcM4BGUmqdnI3hdGGaJEF+v+QCNCdwRcgO8AKPaXRNIm8ArQa1OY6wQpua
iGrKR6o96PZtEnSjtBdk/9xg2BFy77XVQoLWIfN+lMQjm0mYs6ES43whDRStcaB3kqV1PMoy
wnJMkfUHGW0SAqV6G2v37V9/h2IERDKVtDZBApboooRAHpNGbCYJdinRBNDxRtzRvXmcESRr
LATLfIUOhX3pNoBGmW6D3zPMjVwjveyxJphsKCuKbhrszVeCw7RmoO5A27mgaYyr9/Lw+JVZ
k+mj5z3PwWOaIwU5FHMHV4uUxbndNXAyI22PrTCTaJ+fS0gR/M8wTKIg8FpXH6Z0SvGQRJJA
m50N7E70zyb4C90bseGGs/evfAp8qnodemWMA3V2C+SBNfdm0IPqfimRdXdoqsndQ1y+78Su
CMEu62NdiCME2yB9IqxrHsMNrsP9HIPCPpucFrUFHxsphHgs3qn4JaVjBCItljkpyBW3oslL
4r297adc2Yk15JPmBFa7kEeOcO65dQXcg4k0KTP6fqTiP6BWpvdT2RiqnuWl35JQTKgOuYjs
Yd39yAhzqP5D36LVQzhCVdVDySUzgJNZmHTecMuKTc+bTH959uUFGUIQZlvUpLOJL7UNozTR
Q5s9DJThkQ4iQC+8Wtyk4BW3bKyMewCV0ZYhUb11f5YYCOClbCyoIpXJqDIrBMWkcYUDtGmk
pwDidHBorjmkiOiPfvWgi+kPmP+owO/9uk0ZdATnjvZR1QKSSV6EWA/BMo0N5IFXY4lU+iAp
xOx1Viw1sFcQW4QvRChzwXe/0bL3slDMaIIQmxnygGzUM8xjUS9w1LGCFWMkFQzGSM6ZEdA9
iWzeXKIYZCusqPj9YgFkFioZb/fRekiNIOHVhf0zSlLjY5ffeSH+DfgyFSdSc9u7pgJzGHCy
yfM8j2fGZdqzJdKysrmLCsRE0QwCLH7cpcmLOEl6G6zyN1usCtCTIMZt/gS2PU9z3e2/v/z8
/P3L25+i2dCO4vfP39HGiCNyr26kouymqbpj5VYqivUMUjy0qtsBN7zYxIERzW5GDEW+SzYh
hfgTa8JQd7CXPWnFWFlLBcAyV9xf+LRtpmJoSjOe29MhNL/X4cDhhmgPAbNDO8vRbo69lcVx
BoqOm3yzXLwh+PFj3vRKfydKFvDfv/34uRIJXhVfh0mM2zku+JSIQDnjpyf4ttwmRJIyhYYg
HiS+9pQPJpKKtwbIoa4nXIcF2E6+ExHKfMBLB0PBunhqPzmBNUuSHT1yAp/GhKpToXcpfisE
9KUm9KgKN4x+3Hq5pfznx8+3r+9+hajYasLf/e2r4IQv/3n39vXXt0/goPAPTfV3cbP8TfDt
L/aaLwRfKgnQWy6sPnYyzjx2WyVpUe8DIKra6hLZ3K7rdSB3leOv7t57aUWB5KVqBzQXKSB7
ae5plynW09IFu/7xJZ7c4lndemkSDDSRSaP6U5wK/xKStqD5h1qSH7UnCLEUdeBqsiKe90zI
Qf7p3v/8XW1Duh5j9t06DgwP8UhuK85QONlSTFSTX7zTQQJ1KNInvALR9Um3+AcJbIUrJNQ5
bR63xncxGv9vsDzLIIqi52Fj4FTiMEO8Bli1ZKeG+3778QfMe/HYjUt/emS0RnnXxm8ygJ5U
UEfljEy0R5wg+9zxEwXwmYOE2mCuaoB/hK2x+j0vY29ErqACJFsKuWHQda+RdroCAB6YYfQG
gG4a7nCFtqzhAKFvp1Z9TbsN7k1DXAJl8Q2lehHYXqyuurvZLRqmPLJUPQvMUXIKONyCZRwE
q6WsCDNxCgSRTaxVVhZpO9WFDZmkY7UNUq5+FuzDrXtth/vx1RsniJf11WBCQ2TB9IfQiLO/
j8Gnwx/ffn777dsXzcge24p/uOApp2YJw1iZgVYBxZsqjabAGR29kbggeWVyxlfCVZQnuHby
0UxZzQYzQsTJ5C/xw5Kt1RMWMxP1/JglKgn+8hmiE5v9hiJA4ibuyL5X1sAHUc633/4PzTzE
h3uYZBlE4ix8zybt0aX9H8F9iEwYarh2ffz06TM4fIlDSFb843/MeHt+e+bR0RKxoenQaUA0
4i6TEJrJyurOEvENepCfD2fxmf1mASWJv/AqFGIZG7Wz02L63KqcxdvICqC5YMCAATeFmEnk
6zum8JsJ2mKIYhZktvWuh7VWoYvF2sbEpBGqvIVkChNUX78Q8PYw+dUq0wusUmnv8KTAvqia
3tYIaYxgz1OXH3NMCbV0Fy66uT3ZAC/YZtuECYGIKcQuoBDGvgqHglgbHkCIjoxDNgWdvzIJ
o5miPziKzvmTenx1Y9ooHiQuulJEFbvQgdllGYn71L1bJav/+vH7dyGGy8K8J0L53XYjzhj7
iJRwJR4YD7zyaq4PbvOFV1pGXan8sxINz3E09sDhfwFq8m527SFG2406jrYkL4Gn5lo6PZKB
TC6F1/h2n6Vsi/G8Guy8zZMyEuzQ78/ex+p8fTJRhWnlIYHXotxZRjES6rvWq2loy/vBvXrO
igF6jpdLmoS+/fld7OPOYaqKf+JNqQk6zLxHDTwk5Su9JksvPOJZ8EFAuJUpmwRQvqCRmTQa
7LMmZ3r5UBdRFgZWKHx/BNTqOJT+yFjdHusPfZc7VezLbZBEmc/+0iaLaq6yyXKKUvdIl0OH
eLeJveKbIdvGT4ZL7YFU9bOhples2rKpz8Yi4UkWe7OL+PLZswBWtlnqcLcEZ6k/ZwK8CwO/
FoXAlSaK4rWdspRqhrJcc2oDYKLqmleQzwdLgsOVlbPnGeFfqHm0vss4lYQT7UxUKaoIVx+p
mSiLOHJt3o3ciVgHQJJe6YDY+MMUM3KcuSYOd6G/IanVTRjySIIijrOM3MyHmvVsdGZmGsEp
KjanBumBvUKPx7E65rx3y2qFUHu2fGGumPeHyiybXyy7FRkOqhhQgUPSQ+YxQ2lqAGeR0JRj
DCzpSOkSwZ+csgYxiRteRLuEiDls0LU8dZyrESJdKd4zfYo9wS0vV8YrSQUPEZCbw7xgKWoU
B5maWhy1ZAEemhsOVUKTgStzhbdcWrWhuUQgA6LNXeECeTbCK2jwXJwBBRMkCbXCCTFO1gCX
uCOwnTh2g9R4dtjnoDG53fOCZ7tNkvuY4hoFUp5dapoxJYu2GX7cWiTYKrAIIr9Wtjef6HTr
LaCK4ecA58/3r9F2MvUaDsK1YHHRJb+fxVSKMQX2eNb+2WfQKwocwLbO2yFFRMSJ1t2ejcaf
zKvksCD2hwyOcNNFbobbl4JHMXJMze4sBfE4JQJtGo0IN4ntvOsRlRWX+m1FnSbYSWoUOEsQ
DkbM0yZMJr8HEmFepkxElGzthDcP1DbGrooGhZA9AmxcWLuPN5i/8kygBJNd4DPpMT8fK7Wd
bkKfVWfTC7/3IxdLNfH7eC5YGAQR1kwtQT7rY7nb7RLDmVDl4vtq/bxf6tJ+ywegVm6fkEBS
3cef4mKAWYnq/GvlNg4ty10Dswlx6cQiwfr0IGjBg9u0CTMRCYVI8Qa1hD+2RRET1YXbLYrY
RZsAQ/DtFBKIOETT3QFqE1JmkSYNtiNbFGmE17zZ0jWjqd4WCiGkYL1hxTZFJ2iq74e8WxSe
yJdgwIo2hk/Dsw6WLI3QXkB2v+jpl8oFJi8Lvz36soUUWycv4jaNaylmmsM2zIIEjzlt0mTR
AQ8N8SBK4m2CWxoritlNTfXCL4AzXp05HH1PCjk2SZix1h8GgYgC1mIlH7dpQDymPCgodwRN
oN5JMf+qmeRUn9IwRlit3rd5hbRYwIdqQieOZ9jGPqPfF5sI+0zIYGMYPc1Z2dRdJQ5avzGL
5hFByXMC5TCF2pLhEFw6yjzXoNohIwjGLGGCLFZARCGym0pEhOwlErGhvkjR5alQuAiyMDd4
3T/d3oAiDVKkaokJdwQizXDEDtnV5R3WUdPbuPgZd0DiTHRTlIgYb2Ga4twoUcl/WXuS7bhx
JH8lT91Vb6ZecUluhzowSWYmnQRJk8xFvvBly+my3shSjST3tP9+IsANAAOUX88cZEsRQewI
RACxvFudvhvUSmBRaZPnahOhI/ScPsm3lrlhkSpUTAdIdLkQq4G5NgWljhKA2uSyYYsHE6CJ
rgPUpwvTKDwCASWnC2hq0TOfbENA7wMW0EbbI5ocM1DZbWJqOGJNbWqOIFpbRr5nu8QMIGJt
eVSb8yZqMWEIS2slYf2cNGpgsy0NIlJ4HskJAQUq6fIhgjSBQV1AjRRlxDxqPfIL4EDKilyy
mTmG+tGZvXNm1fuG4p4Atkyql4Cw/7VcXkR/uGDONQoyLAH+RCtxA00CQsTaWJojoLBMg1iI
gHDxRoHoLqujtccWMAHJ4Trsxg6WDus62jsud3lhJAPieIvYhRxhkwpB3TS15ywdNjVjLnXU
ALszLT/2TeJQ4YGyLB3CI+c1hEH1F0XXNA8tgzg5EE6tdIDbFs3hPVJda/YsWjxmGlaC+kQU
iHBioXA4MQwAX1PLB+H0dgGMY9LWmwPJKQ1d312WTk+NaWmsOCcS3yJjwA8EZ9/2PHtHtRJR
vqnz3Jtogp+hsX6CZmn7cgJi4XZwZGey8YSAzzzfaWryU0C5ua7zsPv2lAOCTJLst+T3s+g8
BIF4kcQPIyWCVgfCTIVNWmvc7QeihCXVLsnRaba/gW7jJAvvWlb/YajEhXA9PcDOVcpD8LVN
lZY11Y446SxCdwVmb07K9pzWtA0F9cU2TCs4CEIy4yL1AbpgY5RfOavbQKkvkiT9ufYiJZrx
8X8WmjlrXo+PyuPSRGJ2L+5HvdgINEEgCTprmYGOuraf3GkUiOJZOYLz4hzeFUc5Sv6A7HyG
uBsFJozcZGRikpEco7xyqygszyDK48Yaswu58/Xt/uvn5z9X5cvt7eHb7fn722r3/M/by9Oz
eD83llJWSV8JTgPRJ5kANpwUY1RHlhcF9byvIy/RP0p4AyHIxLXckf9QeqwL/lwX22aazG8k
WKhJuKntLlWJb/ubovkK6eOkUJ5YfWyUAUWMTr8i59V1r8xEmRICnUH3cLKnTRRm1IKe1DSq
rP45aqF9/dPUvH29w+t8OD6lKY9NMscMIUvmhfW2QPQYnpfah5qufbmQXw4RUKjPR6IwS5ln
GiYGjCMJUtc2jKTeaAk68wsVPY1/G1q89GHxllH62z+ur7fP0zKOri+fpVd1DBASLbYbCtRY
KmOU2KKu043ilF5TJvCbiIUkOSJmnIbb4n75/nSP5plDmIzZQwDbxgq3RMj8OZJDa9sTY70M
MMUgEuaxsy+yaF2dfxY2lu8ZM4t8kYTHLUPrbCUvyITcZ1GsCT+8jbugyYbGWIMTxIHjmexM
WRXzSnhMKmUMujhVkoEmwlV7xAmmo5XNOPk8qLaLI9B21AHgYJ+6WRmx4jPcBJQtFXCukK2R
RlcjVn5hxbJ6BkvfZAoEkrfhCHfmMNciYDZRrakJ0Y/oXdgkaLFct7uaDHqNgx+ZmMVMsg+Y
wAs9Gijm01larhWoTd2nLuhDszDi09Ndg944dRpRegAioR7Fyi4rAapxR0Oc4qomNKaL5672
+UOYf2ojVsSkxSlSqNZqCOuiERryGHRAR62Bg13SrrjbCN2LtTp23cMzeYU/oR1D3VUI9V26
MFLdGtH+2la3Lj7oe7Ma0I6EoAyoLgCYehzl2MaVrvAGWKDWOEgEU53Jp8sQ2VPc2xykjD6I
TFRGLUQNNg0SMxiC44UxtXlGtOq3x6uibNVEfOMYpAUFR44mhyLw4MvG7ByYO41LPjkjtk4i
4iyr07XnXpSI2RzBHMNUa+BAnRE2Jzjc+bBorfmHJMsJNxfHMGZB3MINRtBZyNOKJTas1B2O
o2mW9EWDDjm27VwwMCw9i0jWm5sqH6OpisYiuC87Y9rl1HkBTFp2Wbum4UhWhJ0hBh3gvA/R
Kk/c3KR0gsrGICPcMqlLyKH53JxWnbce4bj0taxQtG7ZzW1cR2hn4jqHWjR0flyOmM5hUMYA
F7ZNaYjP2dqwF5YVEGCiyuV1d85My7OXaTJmO9r93JsKK+3ldrvqrJ0uvqMTYqbHWFniVE20
BaAaWVJE6U92LhhZa7nEM3NMw5rD1BkFpYtg/xyqWzCAXBvzYiTD5Qk2XxQ9fLYkRjvnGUy1
txubSKYUQUbLwxfHnulfFAF4wKgG8fJXpKlTx9S4nqdwYu5bJLdbdZYYFNKej8tREnRqzvjx
EIZWHIQpNq3O9Xai2KYXDNdWZE24E86XiQBjqRy7SEr1kYm+uhMN3qHxK7SJ6tucCmSmXcdN
iJb2wtdiW1F5812HaoGg1xGFh7Fjk4tWIOlUQKLZc0VQwHGliWQmExFhIkdTmToD/IkqUqPT
UpOuc95QSBy6T3NnPh0RxSYlEkvkKQrGpNfBNswd2yFZ50SkCmoTJq2zwDboE0+ici3PpJ9l
JrIldz2BCoQOj1w5HGPRGN+zNDth7hxDkuimL+sOqeXvgcb1XLp+ytqWJHJ8l27CoMa8V4Lv
rgNtG3yXDIUn00iajIISrTAVlKz2K0iPftFTqMhHYXUIRBFPxQW2tg2e1tRAJbMoK2eBqNfs
x6OFpPBIowiZxg80HJBFpQlTvcxuWOmsTXosSt93AopJIMa90N989AKL5CyoakpBmyWMmLBA
xoiBf2VMQC6wUS0gRuQnODRleE+RbY+fEvOdQ7E8+b7hGpq2IJJ0XVJoAnI4yzOjes+diuQA
ARNy0HnJ1cJ133d6XVusDDX+WDJVrXk1F6gc5nsubXMiUPWa73tk2Q4zTi+P5iQGUiVAPYbG
GkCi8i0y78VEA0qSY8KKpqZn1FHJNiDWst/hrZ0uSu+XUafVFo+67U8UH2gWLcea9nvT0Smv
6/ckpkGJ/RmyQGPkPiNbZnejBkuO0EmNxEDQaM0OZBKH3LW9FjZNXTQ/ACI4QGgulaUVGYE/
GrKFSGwvrdo8iZYSiXCOMBBMjeJwl4R/OEUkvC7yOwEhtqEO8zsynYlEtA+r8j0iBkrMYRMv
9+jCSrKFaee0QnWVsTmCjykGwJRPkkjImELXv08vzj62lEHA2nXd4i3TRe7vuq1NZImekRi4
WBOnDnlelYTsk2ZBYe27oiqz426hinR3DHNN1DbYUQ18mtKTBuM1RMnRfd6FetB8jx3gQV21
WH3Fl01xaeMTZU8Rze5sEZIXTbpNRS2aJ1fnOHT8VEJr8mSbx6xOfKQgW4EkVZjmsLrj4qyS
SZUMFYiXGyKi3aYZHSF3INvE1YmHY6yTLInGx2R2+/xwHa4o3n78JcZG7fsXMv4yOHZRwsLM
Z8WubU46Aoze3ITZAkUVote5BlnHlQ41hODQ4bn3qzgzY6iKWZeFobh/fiGSqJ/SOEEudRIu
ibrRKbgzkhTYNz5t5ldC88J5paeHz7fndfbw9P1fQ5p6tdbTOhOEhQkmX8IJcJzsBCZbjufW
EYTxSXu11FF010oszVHoC/NdIqacwOJZwix0j5ZGg2O2WVjvMbd8G8FvtYo95+hJLQwK1Xlp
Ksa4cbOhUUcfB322MydslXw84nLoxqQzo3i8XV9vOAZ8HXy9vvHgUTcecurzvAnV7b+/317f
VmF3Z5tcSmA9LMlhcYvhpbRN50Txw58Pb9fHVXOadwmXDWPiKxpCctHHn5OEF5jFsGzwPDfd
aYIRiTlJ8YWcTx9tg87JeATYOuHhqYAH1+hmRJoXAfExS0aX9rGbREdEfjIP89fv2SgdtiTN
mDkvGLqnZWedybaQEoTXdP/87Rvet/LKNbtpc9xayrvbBCd2GofDai/KmsLErFtm6Y4sj4VZ
VoiegQwN7sO8aFncnCh4RW/pptxJu2lifl3053q+06Nwm7RRpHnqH2i43ZSWF4welRIUY54p
IDVCnwhVGi9iTo30NIIdG7lL1y/NmlzqPh4ZKn5uicSi32s0MoDShgClov0fTgguRTg15YHn
p8pUqzxVKZP700Phf+0QwzcWoz5CiTOatXv78HI7w8/qlzRJkpVpB+tfV+Gs/ThG2xSEP3GV
CcAuxxdxKiqPFN12w5S+cNJHaZZhNrhOmJAliOvT/cPj4/XlB2HO1QkKTRPyVI9dOKiKx0Pq
t+r1+9vzb6+3x9v9G3Def/xY/T0ESAeYl/x39YBEGZS/sfGir98/Pzz/5+qfeLbwkIEvVwAI
1b3+G/VNZzUvktcBIsT982chYmJ0/XZ7ucJcPb0+E6Hm+y0FPCtH4SVT90TN0rAsKcw+dRxX
BabsYomZgAVoQEHFi7IJKntuTPCAVqdHAtuk7qkntHzH3cGLk+WSgfMntBPQn5EXYQKars1b
rM1xRS97AUoWBnDq3nhAu0pUq+kzb2kkOQH1YjKhRZ+LAepZjknV5nkWdfUwoskee65HNt1b
Hj7fn6/J4hS4a7KwgH5UGNCm7c/X56l2XYtYn6wJmEGm0RbwtkV/SLsCj/hSCtYwghsp6/cE
Ns2ZaA7gk2ES08MRZAbiCW+as2rqyrCNMrKJYc2LIjdMjtSX6rAiU2WXtvrgrPN5Vc7BDUMS
ahPQdRLtZmc+wJ1NuJ2BOXObdyFp/ORA3ysP5UWezZQLjCELBclwOS/OAEaJoYMW5PikKV+P
Pni2N9t28Tnw5gwXoL7htaeIiZqNVH13cD9eX79qD4UYn2JmY4wWLe5sxwLUXbtibXLZY9C1
/4cjrzvcsbC5jBFdYsv3jS60NReTFGFC+kzRzY85v07jlTTfn6bo8P++MCCUjLHry0y0rRNw
TRz6lujCPkN6Fy3SBKypxQa+6LUtIZPQ8Vzdlxyp+ZI1lnHRNOgSWYboFyrjHMPQ9PISrbU4
Fq3Xtc/dLzuVFQTk7Qvoszi3/9flhIYxr28gQl1fPq9+eb2+3R4fH95uv66+9DW8akjveSDo
/1jBWnoBLRxzeREfQVt/q5fLRZJm9cv75UR9pQQ6bGrA5s8vb19XIbCgh/vr0++H55fb9WnV
TAX/HvFGg7hNlJHW8U80hFPJPfrbT346aOgC1er56fHH6g232+vvIGcOpDUoGv2NxcBFVl+A
o/LhHKXbTrtOoZaXL9d70ECS3DEsy/yVTrfSbe3n58dXjM0Nxd4en/9aPd3+R2qqfC1xZOyu
3SYks9fpGbyQ3cv1r68P96/Ezd0uxHQ+gqrWAfg9yq488juUoQ1iWgz4o2Up8rZNSkFrBRqX
bXi8DNmIFByPhsUkl5EJXifZFtVKStcFogPool06HblQhG83E0oqecuvAJfdHZEOszO1sPtj
1AwZZjzQtAK6FyWR3IIdhp9nobZ1Em4MA3x74mrTChbY19vjX/AbZmORFwMU0KV28gyDepAc
COo0M9212nmeyeZSco4c+JREPKNyZrF6dc3sOEDF5mc573YBvDQUyxJJRcrTLlFW2wnGTIZU
UVihA9s+ZoJfzojJTnEtg8swT7JhsOOH178erz9W5fXp9jgbX04KOwHqTaoaVokmGrtAWx/r
9pNhNG3DnNJp8wbUvEA3Pd03myIB9RXtbiwvkGJzyTTNyTTM85G1ebZcoKbPsxN/wiRZGoft
IbadxrRteYA7im2SXtK8PaAbX8qsTSgGJZDI7tA1eXtneIa1jlML5GIjpkhTzAZ7gP8C27Ko
KkeCFGQGM6IHJs3zIsNUXYYXfIroJ7aJ+kOctlkDTWOJ4eiyzU/khzTfxWldoof6ITYCLyYD
oAgjn4QxtjlrDlD+3jbX7pnqu0AHzdjHIDIF1BDUIauPOeaSDoy1QVFkgNwYtvORng9E79aO
Z6v7v0Pj63ae+cba32ek0ieQFqcQm8xXtBwCmiQKDHN5lRZZypJLm0Ux/pofYXkV9BwXVVpj
/Mt9WzRoRhtQwbMF8jrGH1ipjeX4XuvYcrbriRL+DesCc0ieThfT2Br2OictYKZPqrAuN0lV
3WGOkuIY7euoSpKcbngV3sUpbNiKuZ4Z0OY8JDVoXu+tTUwrw8fkw95wPGh28F7Li3wDWu0G
Vn9sa+ZvWG+1G5tuvFzeRJvY+9CiR0Agcu0PxoWMfqMhZ+82MvH90Gjhz7VjJVvyuoP+LAwN
kkEm6aFo1/b5tDV3JAE3ssg+wtqqzPpimJoWdmS1YXsnLz6/17CBem03ZpaItygi725gAtNL
Wzee9xMkfnAiGQpamYTRZW2tw0OpaX1P47hOeKCi+E6kTVmAbAD6VQNL0aQq7CnWNgMNzqQX
CacpdybpZCSQVcfsrj9Rvfb88bILqWE4pTVIc8UF91FgBQFdJ3CbMoHVcClLw3Eiy7NIiVqR
D8TaNlUai04FwmE9YCQRY9IKNi8Pn/+8zaSNKM4xmmaq3fjRHua3gQpQ5tPYV3I5tD+yAJTz
qMGaYUU5oeVvKPI4smQXYlhajNUUlxe0sd0l7cZ3jJPdbpUDLT9nGmkfBceyye21HJiwG6cq
jJO2rH3Xom77FJq1sltBpIWf1O8ikkqINDCsi9wOBGIQN2Wxd9JQP1maNjT7NAfBax+5NgyW
achXrZyiqPfpJuycpzyXjrxLENJWmwQhffHHCeEE2pa60LU9RZ27DsyMT6c1GIopY9OqDZO6
ZUeSzoIFOEuYX1x77ahDKeI9xc2DIotLeYZ4us/45DnmjKEKKI31D1/xlPzfA7lO9m2+pef7
UWprFZW7o7IvLoruAYDtZqLBPHEI3l982/EkH/ABhcKsZdEeHCKNvabODJFiLXvlDSiWAje2
P1KK8kBSJWWoqMMDCk4Oh7RuFQg826korgdSGlp6cHOJj8e0OoxGB9uX67fb6h/fv3zB9Iaq
Sgj6ecRijO06lQowbkt2J4LEBg+aONfLifZioVt8ys2yqjPlkhFRUd7B5+EMAXrYLtlkqfxJ
fVfTZSGCLAsRYllTy6FVRZWku7xN8jglIxwONRZiJrUt2qRsQfRM4laMQg9wtA7M0t1ebhsm
ZejvFuRiUI/FZsGk7sg5+jqk+yReB3Cc0qrSRG8EbMlo22b88A5EZ0undwFBCJwdhoQ2fOGz
UzfU0gYUBnbq8rlK02DGs7gRuLh4Dl9dLVV60uJST5ObAAc8BAGMNsXGUuE009wyYc+bO1Pj
RddhdaialgMQE57CHX1hgdhUO4N5UsDK1VjFAP5wV9GxvwBnx1vtCJyKIi4KWg1CdAMHurY3
DZzTiX5lhBVtH8sXpLbQKKwYnS4VR0gNNIDTv2Ht7tKsHVLZAgIh/YDUt87PlP6GJSi4FyxR
PsJMZ5bGaZLPIAowmraD/msbnsJ4auapOZqG5zGKRfNtv7ne/9fjw59f31Z/W4GuPhiFzi6R
UY/nJo291fe0DRGTrbcGSE9WY9gKgtVwXu22hqPAm5PtGB9PYg8Q3h2glIQxYG3ReQqBTVxY
a6YWdNrtrLVthdSFDuKF7HXSd6BF2m6w3Rm0RNX3CVbOYUsqu0jQCQhqyUXDbJANqMuNkcFr
hnjCT3kFZyjJ32kCU7lYBlzvarjYIu4vdc5EG7gJqfrHT5gwRhc4STNQkB61xYTuDLFQiGrx
/dc2QrpwjqRTfgpEpe849NabiCjXqnlfFN9rYa6kbDJC3SfHMryspHCb2DUNTzNqVXSJcvqI
mah6j/zFNmd9joieO7zDA8ZnI3x7p6UOLp3/GF7Jnl6fH0G46AXx3sKNfJaCX+tCjpoGYPit
izNYR2i8rDpHDKIpfyqbSqDA8H92ZHn9h2/Q+Ko4139Yzshaq5Alm+MW5LB5yQSyT9zTlhUI
g9WdxI8J6qpoZm9Ri4X38mATHpLi1Mv0g+XH8jCP/KjYSSmz8e+W38eCAJlT4XQECpgL09V8
HWXHxlIT5fVtm71FTiXUxTGXJPou0zJI+bMFAkCxbvhzSoTVVEm+a+igW0CoOAv1iONeydMD
JfYMddai+q/bPb4XY8tm9pz4YbjG61lhCyAsqsRkyCOoFVOxcWhZiiuLg46gYwh2j7y7SXZI
cxkW7fF6WoWl8NedXGBUHLuUGVJ/WYhhLqlU8PwbbgahlHNXgthdy0AY4V2R48W9fGMyQKHH
urlpE3y1XUBn/8vYkzQ3cvP6V1xz+lKVvGi3fPgOVHdLYtSbm2wtvnQ5Hs9EFS9Ttqde5v36
B5C9cAE1OcwiAGRzJwBiSeDKCaPvdgnNLevpzFa8okRGhV2bz9sKkoJcW9TCHk/4glL+O9CT
M2UHlsqidEd4z5ODenUINeJUqUPAroujIbpbFSd96BDzB1tVzjzJA8+3LHe3zC7JMdG0JE8d
JEgjJ5eeAibeTkmTvNhTB4ZCFhuu9sMzBcUftulbjwksBMRXdbZKk5LFk0tUm5vZyMEb2MM2
SVKh95+zD0ACymDmaQlKk6TIuAd6nLGTcvaxJ0E5G24KbxYyDlcZ3mnhr6Hut0pCOzOrU8n1
orQ+mEtuA4pKJjv38yUI3XBuwGIPbY0ykSw95c7pVcK5AhwBCdQqGwJOqCtMtK7Pbl7KcvW4
EdFCq6LBK5bm2BAtGL4mBzrXvg3Zi1M5dsBd5g2WkAkLnz+AhRUFd0YSbit8rExrynNDrRFT
k6lOBHxiZIKb+b07ELF0BbAa8o/idOETku8L53QoSmE5sijgFk6GzIVVtZAZg34aZ4IJJZpU
443blIKMmoknJefoEGx/6cjzrHBrukuq4kLH7k4x3KiFcyfqePbNtnZWZAuPoOkY9EH9cj/I
0lKQTAzFAfQWPDbD0leI6uwtj8n6vGIdwgT2rIpYNcU24g3q8YAV1LrEoXeID7jc1mnJm1D6
FSSA/+ahWIqIVwGxt0w0W3un1mT4Y+XlG/XcPxJhT1wzOISXf/14Pz/AkKb3PyxDuf4TeVGq
Co9RwvfBDiiP6L3XxXY4L3zJqYbFm4Q+kOWpvOSxjMy5OHBJR3a1PaDKQyWSW2B6MjJ8p8b2
pjt9MSBvVmkRcAtXjlm1k5fYKIm2dJ31qvbz0q5e29f3D5QcOlvFmPBSzCLfPdbCingb0a+Y
6tN8DVuNumYQ66fvVDWqmMvOR4ArL7ZN4EZAkmh1HXgcQ+xeuU7To474GrrBFzCVI7st0S30
zgZtxa3bvO4Vjw4gjhSZ3JnWxRnmzrCumg7mj3Zrd/78+vZDfJwf/qYcytqydS7QyREY9Dqz
xOhMlFVxYQUBD+4hve/+m+XStUTNexaYrY7oD8UH5c10GQhK2xFWczKdV54ckDU1hBH85fpa
DzDtj20xnohbVcie5CDVNNsD2qvmm8QXSjHVhDfyqjxjcjyx85BpeD4dTeak/ZLGi+nCit+u
oZj5aeoAV1G2mJqG7QN07kK7MMMWrBqNxrOx6a2h4Ek6nk9GU8v2XSFU7FASOPGBTlq9HnxD
q2479Gh8dOrqI1vZdUGHbuako5BCuyH09Acwfi6p7u2wc6LRGBCffrIY8PT7Qo8PxBts8cs5
aR/UYZcLd8xV3+fuQLVQR6nYoxZTt0AXjlQyWbt7w837o4CtotgdIeC3xpOZGC3pV23dggNl
R6RQQ4xPZyXHk+XIW1lyOr9xd0Ib5c1rmIwYhnIKt0qm0fxmTJor6IqHgOV2wXCMvH5TzP/x
S3VRwUPldjKeLG78EeZiOl6n0/FNsKUthc5J5pxNyk3hz6fzy9//Gf+imJ9qs7pq0+R8f0H7
bYKTvfrPwP//4pxuKxSKMr9/6REmMzzcGEc11AF0kFqdTAFAz5CKXu2lnxuOk2t/1tv4YMEv
bbLpWBkU9eMk385fvzrXlq4LroEN7WHPoijBjB5opGypddl4fIL7g/E0TTpFLTkmHP7OgUXI
KVYogV3lB22pZAT8/soG6LvNDLEEwG0EDMiJajhiASNBeLDraYHd29Knt4+H0Se71mDAXcDl
+0wZ66tBBMDVubOvMS5HJOS5XOssS26jFQa4Epqx7imggYE2YPwek7NFiQqbQggSHbmOzEsG
I2sp2Go1v0vE1G2txiXFHf2UNJAcf1K/H4G3xcQC33Av1o4k19SdZhAsrif2TCN8e8qW88XU
R2C2n5vRiGpPG5P0YoPCL4YWhR1620CpuKIXSnf5BVywmEdTqp9cpOMJlCC+plGk/aFDsqCK
HwFzqZ8q66kVZNBEOFlSLNyUjj1sklAzpxBL4oPZbCyXI3LAFSaYdqkjuxjjuaO5nU4o9Vrf
Oh1UlFhWl2MYmkQ3pIWwQdKF1ndXh5upokMI4F5vRswfsjVcEtMRURNs5jENny/HVO+wRMDg
ryNJMpAKLm+rag8klyegwkingaCrXXfnFBvWY2M4bZbd2YmeyT85O3H13Fz+oiL5yfk0HRH7
VsHn1JpFzOzSBlEE13SVN8TcqRNPPWO6I3pzPQrM6Qxm+9IpdVxgxgH6mJotA4crnLuXDiPY
35PxhDw2sqi8vgkdRsqENo/bxAP95GKQFv+C9MYMpK/A5YQYnZn8p40mT3u1pm8iq8tt2LH7
D2Ban3/WtPFkScwawOdjctoQM7+8XvG6XGKm1oyTb6AG3fVsQi/PyYz0EusJPHsbC3PpSmmz
a3nLSsjd+Foy4l7MZktJDRLCp+T2QsycDLDeEYhsMZlN/G+tbmeWxNbPczmPTI+VDo7TT+yR
1mSIhM/JW+xywOmW6O6U32alt9ZeX36LyvpnJ104CFh/YUj4H3k12LqXYcd6dqk9SgXmvnS6
XE9tz6O+mW507t52Quj4Hxc3VK96HUxlMOVdF8LVgxkR73zcnlZaAoVvAY4R4pJ8Y1mAI6xP
zrFleZ6kdiOs9MAMI3syWJobwBhkh4YdOVIbHi5rkYJ4ZZJx5VTDAWb7SZfpEcsSM6Fs3rZY
osk2mfXCMqDI5QhNwuZcwrk6YxOfXKgXcViWFjcFiFYxkW8SYdHT+fHlw1r5TJzyqJHeAJhz
7Trkd/Wt6rUfWlDVt+amVYs4KKg1rVC2yYp9Mtj/m19EbBcKgIx7p0m2CSuFV62CKjE3yUxD
KafFxhjUx9aVihyBEt0eiEbgsm2I8HeV5NZrpoagWojKz7WPS2ZS83W0p4wY9ttCyIYXMjUD
OChgxc0nbQVzSfDjVpsUNE+odyONE5HgTqVdWy0YmjOI9lmySdGj7NRxH9n54e31/fXLx9X2
x7fHt9/2V19V2FDzvbSLaPET0u6bmyo5rUw1ppBso90b+r5FGHeA3lmVTFNOR2+upJhPAmH9
tUm1HbWrMw67//v7N4z6oWzw3r89Pj78ZWyGMmG72jDwbAG4H+S2YVEuhSGVONiySNMiWLaO
S2k9Ytv4VU5tHJsmTiKZ7sJ1AD45UkvEJkuxkkAn0NQl/AFR7or65x+Qx7K6UIuy5Aw93VPz
Y1Skl4+O+uNNL3v5/PZ6/mwu1A7krL9mVbDKMI/B2JIH+NMG5TZupYOUJxVwRRYYCxoVf+K/
i5mPj6DCFj2dDC3ubm9cAOTL/UY063LDMFH68Nk653AgipJVzk7B2LFRumuOaY6mnLvDHWkZ
hI4Za9vtCH43bJONJ4vZrlmnHm4VLxYgn808BFrFz0YrQ89rIq5jEj6fWnZoJuY6Dm1aJEFX
gfEi7G7SkkzJGGgWwdxrmPbgGwXgrk9Jh5mRIqVFsPAGrYzi5XxmsS0tpmLL5TWteGgpxCIe
TdiFj2IYgPFk7H1UJCUcin6/xRak3gXRPXRHmSxpRalBEsptZZFQ2kGTYEq0F+Hzsd/e1puR
gqMDvd8R9INEC/hgE2QqlpORv7jraLwY+y0D8PWIAJcxkF8T9RyUgXMhrWMvUxdukZVFnuSS
fmLfiWs6i2d7dTZ4MFSFYezVITpfSx+jzaUdoLbs88FmMvoBqFMb+BjH5LQDV+zgA/d8Vdkv
iH2flHM3HJfbkzmZHTpg49ShnayUfdPIx8wOi2Y0fkMcA5YO7FroDLwln9nyrA7hdf/+9+OH
EVVpMKi3MUNFR56iDISzuKb6uuZJGmNTrIBc2wxtFbCJAi3FrPetKjq2OCN6PFEz1lFWxZpj
eHaj77cp6W7vS5/9jVby0jSsRv+VSLEn3XWV7jCSFywmi6fqCKEVScmsXBX9/Ra49fwMNRQV
9VwRoIOzmz7aDDIvfZRPIvgc7w+60Yic06YKNtWYUk/ZJLMZNVqIuTauNQMTxVFyPVoEcTph
HdWgSKBHcBPR+VXMj19IimWQkXkNKUL9IvFTKnK3GwT7aE6O1ZCGlaq2TSGRkQcQEuhgCSsu
RXOoyjQFYD5ZbsvIWvcwI2sQNClYs67nsxEs/sjKcbE9wFmUk5Zd0dPrw99X4vX728OjryaS
PEsqS+uiIbDHV3YDBCZgykwzlIqLaK/pB6Ay9cI4I7DB5WK2MmVysil9QcbTVWElmOyD2Wfb
mpzRTkO0Kqi32LZG6/G4enx+/Xj89vb6QKjMVPoifKo2G02U0DV9e37/SlRSZsISUBVARUek
lH8KqbRLG2WU/hzCIMDFGtqHrrFWowzJB/2vUETxhdoiuvqP+PH+8fh8VbxcRX+dv/2CktPD
+cv5wTD90yLS89PrVwCLV1ux2olLBFqXQ1Hsc7CYj9VOym+v958fXp9D5Ui8IsiP5e/rt8fH
94d7kANvX9/4baiSn5Eq2vP/ZMdQBR5OIW+/3z9hWo5QKRLfi5l6q6fGCxpMUyP7l57j+en8
8o9X98AdqBwTkbNp2k9ThXsR+l+tBmOHqmw46yq5pcxdjjJSPjGqcck/HyCYt3piyqZUkzdr
weBepXjalqA1A7SBXQbYYcQGxFQH5ffgIA7MrIe3ARUwBGsJ+lSaDljm87GZ366FVxIztDIP
LrL53HxaacGdrbtxpsLBZLuZck7Hasglre/aZ4nrHNDN4MHwjYMfvhEPAkM2QohD1ftaOrXw
W7GYmG/wCFS2mpZJH0KVIWOAkVINUrvBO7h4dasCk/oepIDBC8jib6GJnLQJZzHeIFDEvdd4
Lo1bud2SZcqty8FrRN+GEgQgl8tWaqNGlhGfkJEmtPoIyhaRZIaOpUpEIu2MW8P1onCrKsqE
XOGvKJAVThPqV5ENnVRPk2B8qZOI7Adg/YS7PV2J73++q/NhGO/WmVbJYz8IYBtJTKOHwYgw
aGzOcL1PkIxeAFC8fadrQBisnGAhBFVsNcPECJ5UlaV+t7AsJf0ckQaXOM+Oy+wWW2vXngHP
lxpdfDaR5ZE1k2WeNVthhm+wUNh/t1EZK8styP1NFmeLBblYkKyIkrRAzU0VJ9oKp12X9kz1
RVD8jpi1M7IooCEPMNHQ2pm3MAbVabff8rgqWkfugC415at8H/PMDF+RolvEHm6VxIDmMSLM
U2NFhgsq1k7BmB3bFxvj1YgZvo6ddaP5sz//bGCZwa6ImRVwpI250CTIM2beoGwPVx9v9w/n
l6/+ESXM8xJ+IL8ti2bFcJk8+wgMHCVthNKD25UAl1dFvX2qOWIGdpuwSq4SRiriB7K1rJgZ
jEQfHNLyquhgwbfNniDktN8TCEk5VfXoTBhR24bPSk5AvZRtxET0ipJyY9zLrThRVnAEe/ln
PaQSTyjlC9TZZJuqLyFaI51B7ehQRHsqcEdP1fJzjrapR/MomalkFJfqyFi0PRaTthIT60a8
bNsEPF1y1wVSHIq0bYFRwNSwdWnlf1T1VcmG257QsDENTKiVsXpVsLsHsIatadmvJ6CdsdbC
HnLBlRsRHi+YjZGuEohaZ9eAEtGgQLfTZ7KsTh4XKA0Xq7H1FWSVoBrPtGXgcLIb54DyAoeh
Pg7x5FWWiG9Pj/9YHpU9PWZK3FzfTKzbrgWL8YzUSCHa4TsxXEhmS5jUh41zhpOSuEh5pnkh
A6CFW8wsbXG26A8f6RinpIqmzqWdSxl4z+a2ZnFMp5EthDRvRkf+0GHyzvhaqO5KM0MNw/jp
Eo5CgWFLhbXSRcMLK2UlMO+TxmacW1BzZFLSeiugmAJFCDe7iNvVOZdNyGiiSji0GL7uWOR3
4GibkPF1egLUg6A7Q0EWp7rV0vyhP/ps/i4LgYFEI4OpRbBIorpyXC0QHvZEVaUwnA46DFL9
PnZfH8RhgNzWhaQtXo5m64IUAYU+oooco1xi0KKa5qSQ6MAqOoLTkeptx0KvxcTpSxFpGFnX
SuqZoSVDnl4oup54JVvMHXChzoTS85kc8fna3QEapp1Om6KkvoDmQ6jf3WnLjl4wy2N8/jkF
8Gs0Q4mqU2kHVQEw8Ht6SbmgnjPwEKuawwkLEjnf5EzWdrxJQRgtaRDJsSiMcouy7h8WLKLW
pmVshgA011F6P3UgrllEX1llBfi2BC4yGKPQJ9zua6CEe96ArTPZ7McuYOKUiqQx8Zhbey1m
1hLRMHvV1BgfyBjYCACE5RS5CjEMFga/dnZDD8UILBzjuDYxp84kipKlB6bisaZpcRiaZZDy
PE6OJCbH5Xd04zAYBJj3QI0COWsGYZbAcBaltTC0Vuz+4S87nPgaZHs4tkmlXkutyePfQB75
HXO8483mXWxcFDcgVFqT8UeRcjPh8h0Qmfg6XneD332R/oo2FyzE72smf0+O+DeI7HY7Bo5E
AGXoTNpDWXo1qGqtxaUhcbJmwCrB1YzqdgH9+fT948vyUy/LSe9yUKDQAayQ1cFkfy72TCtJ
3h+/f369+kKNvLpTzWFVANS2SIsJUuBoy9O4SiiGeZdUuVmNI7P2oTw2fMNyiVoYtrFeSvGf
gTfolAZ+y/vTmAtt56kNLY1vFSpVurPXWUwDusHsoOvwfZWos52e/603jQDB8DHBmzEJXW+r
bhS6zzoNjyqW+b/1fWY9rgtgQcXWJO0g+gJTW9fsvI3WZxLZ+J4QJa6sbDCuV8D71CVVggPF
j1N0TQmMd1n7XdKcHtn2O8fA0sWndzOivvSuIGs73l3u1Z2QlFjV42dKfbRSj6V3CfHhJFsl
ICfEBGpdsQ0mtdcTpSuYGofRMbxUM475OQLIIgstvW3pcee3+XEWIgfcwlv3LTDowtt+3VAl
Kwha5yRxszrpheyii9yFl0JaqeP1bzxwU5SQcBGpaIGmal+TwFz3aEqL2VHNzEo85DYKo5ez
yYB0WqyWTBgbRLgd664W65D2m96R0awa1Zt/U8Ls4L+ht/pMFaAHoe/jp8+PX57uPx4/eYRe
2NYWg6/R4Q/0qkS3WBUIuNaiYSNTu/0k9tYRXXu7QkOaQ+VEUrQIwjJmUhWhTQhM+aGodvRV
mDt7DX+brLP6bT04aogreZpIKzWJhjS0sUxVFBIpaOlvrSI1tCb7IL+QnWuJkLtIUiSy2x5z
wVZwV9VxSUUhAxLqdN7g5OPdwgvj3FX3p/MTe2t9sI0QMRzWdV6ZpjL6d7OxD54WGp7fKCm3
9PRG3F5I+FupGwTlwqmwDKUHkBSUKiMZfCLsOg4JQ6MjZMpoRbiiqkuM0hrGhzQuCun5bQ1Q
OlLNgMe3hBLDnwbsphThT9pXxCx0BbLw1XlTBvaZ6RcGP4az6fz+ulzOb34bfzLRmO8Iedxm
NjWyCVuY6zDm2rJis3BLMnu7QzK5UJx+13aIKFsDm8SOqe7gKGNvh8R6YXRwtLm8Q0RZFzok
88D4LheLIOYm2K2bKWUTbpOYxhZO4Ungkzez8CeXZNANJAFpGFddswx8bzyZhycIkPSRjVRM
RJxi0c2vjt3J6xBksDQDP7UHoQPP7F504DkNXtDg61CjKDdjqzdTukIzaJkFd9q1K/iyqdzR
VlDK5Q6R6H8JrC3L7S8gOEpA9IkoeC6TuioITFUwaYXl7DGniqcpVduGJalpANDDq8QO29sh
OLSLDiLUU+Q1l+4o9B11UhB5RLKudjxwFyFNLdeBHGUpzbPVOY+cd7UWw4vmcGvqGaznFm2E
+Pjw/e388cN3MMVLyRwf/N1UyW2diFZUo/jOpBIcmDOQ5oAeHSZtrbTWGydx+MoDRBNvMf2Q
jtpN3VFIo5S6PNI0lkzbvmw0cZYIZVkjKx4S8Fvai0hahEQLBJV3O4feoM4ZVYmKJ4mU74Rh
Nu8QmY31a1gzPwGDYUzAUKeExJgXQqeFIFrXqeOGsWDGFkhF9t9PaBD8+fV/X379cf98/+vT
6/3nb+eXX9/vvzxCPefPv2K4qa+4Mn7989uXT3qx7B7fXh6fVDqrxxd81B8WjRHK8ur8cv44
3z+d/+8escOKiiKlGkPdbLNnFewjMy0Y/sIORjuY29wSWgyUwwWZBCA7q+Hve2+/hXc0+Lxu
kJA63UBHOnR4HHprTndbDVosWP9F95Ycvf349vF69fD69jgk/TYGTBFDrzasNKKOW+CJD09Y
TAJ9UrGLeLk1n1cdhF9ka4VgN4A+aWW+Gg0wktAQ852GB1vCQo3flaVPDUC/BhTAfVI4xIF5
8Ott4RZD16ICsfjsgr0Yp16Oveo36/FkmdWph8jrlAZSLSnVv7SkoCnUP9T91o1KLbdwUJua
VwU3jfnL738+nR9++/vxx9WDWsNfMQPJD2/pVoIRbYwpi6MW9/+VHdty2zruVzJ92p3Z7cRp
kiYPfaAk2lajW3SJnbxoXMeTeHpyGds5p5+/AElJIAm53YczPQFgihcQBEhcZBh6Y5Vh5POc
DMuIBnV3o2vKO3l2cTG57voqPg7Pm9fDdr06bB5P5KvqMGzKk3+2h+cTsd+/rbcKFa0OK28E
YZh635iFqdedcA5Hojg7LfLkXqVacn8k5CzGFDvMfFTydiT7dj/WuQD5ZdFoR30V1/Hy9kjz
f3Q9Cvw1DGl9zQ5m3zD3UNZM7/oTMD9JSq4IjEHmU+4nBXRy/DfLuvJ6C2f/ohT+Xs7m/cx7
2xxzJtSNv2aYcfKuY5P5av88NpNWwpNO5qXC59QlTro/zDsnRYkpZPy02R/8j5XhlzOuEYU4
MlnLuaB5vg04SMSNPPNXXcP9+YWv1JPTKJ768okV/aP8nkbnDMyOWjPQGNhbefIe4YUyjfjN
g4hLPi35QHF2wZm0A/4LzZzU7cq5mHjDBSC0xYEvJpw4BgRv5Hd4u5iig0QXgYAG+naieFZO
rrnPLYqLiZ8ALNy+P1tuar1Iqpg2ANqyb1cdPmuCmP1hGfL1mnuWyxdTx/RxmE+kEsw4RqoL
HZFtXUoSnL/pEXrptaOdtW3YVP3rKwxz8cAoUpVIKsFwSyf//R9IGbEyvyzG6m/2vMEGlnan
sfA+VS9yO9e/DR/y/pq6cS/vu81+b+vo3TypVxjvC/r90IZd0eRlPZ2/+dXziwfFJ5M+RHD1
+vj2cpJ9vPzY7E5mm9fNzjUhOhas4jYsyszfGlEZzLo0PAyGldoaw0k3hdEHpI/wgN9jTCYg
MVjENvOIltiCzn7kMtoh7PTwPyIus5Fbd4cObYFxxsK+dd6H1Ej5a/tjtwKjaPf2cdi+Mqdk
EgdGojBwEA0+QwDCHEN9nc0jNCxObzu/TKdHwqN6ZZF0wFNrLMLxiUM6Tr4gvDslQSHG5+3J
MZJjYxnVcYaBEhWUI+oPMHeYc055E9V9iuV041BdumCZlqFVgiyaIDE0VRPYZMuL0+s2lKW5
r5GDS+/w7HgTVlfoUXeHeGxF03A3TED6FTZ4VeEFL9/UV2WrtGN169DXEJNYSO0Agp6I3U2S
f3RudgeMwAQDYa8yv++3T6+rwwcY7OvnzfonWP80Jxu+S7Y1lm7Sd1yl5Tnp46tvnz45WLms
MTBhmC/v9x6F9pk4P72+tG6v8iwS5b3bHX5KdMuw07CUWFXzxJ3/2R/MSdflIM6wD8pZctpJ
lGRUlKBDryhb5dlEfQOE44MaxKAaYUI4Mjtd3Fsm67ap48RWUfIyYtVLLHMmwZpOA0wvN4R5
K3agoYB9WF0Yux7ooDODnQjC35Ye4YRXOsPWaNgvFBbXDQ00Utq+9YkvZ32uPnv7KgxsPxnc
8zfHFgmvUygCUS40vzm/hNnmf3R5bvXQ/otEBIPgMWYNHR950umNl+FRXWRRnpIxMz2w/E9e
KFR7V9lw9JjCg81WbB602Hag1HfGhpKWCZzzoRlznkFqtn+Ww4wN5uiXDwgmc6j+bpc0q5WB
qfDDwqeNBV1BAxS0ZucAq+ewRzwEpjrz2w3C7x7M8K0BDgNqZw9xwSKWDyzY0kFFVeVhDJv1
TkInS0FrsgoVKkLjDDUI3SdaawMj3Ephqvw4Mf+niKKyrdvL84DeVSMGepQI5ZszVzqfjc3y
rEO0aWoHfqp2MWh1xHesmiX6Jptsp6IBM5V2ObqlsinJA/uvQVSQFzHjTNi1mTy0tSC/i8tb
VDBIu2kRW/Ux4I9pREaaqwqcMzgwSur2n8OgGTcVhLNhCEh/9evKaeHqF00iXmEQbU77JtM+
4K2jwSeCSBY56WIFC2dNHD4HZTNblJqDzTuXXNkf56XUjdnvIZ0eoKDvu+3r4afKB/74stk/
+U9r6jS8UflbLNVFg9HTg79NNmWqk3yWwOGX9HfmX0cpbhv0LT8f5kyrTV4L50MvMG9Z15VI
jiVrje4zkcbjJUwsvI7oJGpMGuSoLsqyBCqapVhRw39wtAe5CVIwizM6rb0xu/1r89/D9sVo
IXtFutbwnb8I+lvG0PFgGKzQhLblTrBVkcS87U6IooUop/yNyCwKMG4pLkayy8lMPRSkDV57
jMSLqQrmKvTk29XkmqSuRA4vQDJiRPVIgbgSTED1BaBiCeYS0zNgIAZsKvbNTQ8U1ExUlNBN
PRU1LZbrYlRPMWbr3hGzCwGbXQ+myFXMDY0BonB/MaY5RkxrHy8s5F7wiVf+mDt0Wji8eNiu
u+0dbX58PD3hM1/8uj/sPl5MbuduT2FhY1SgaSILAuzfGvWafjv9NeGoTAJTtgWTnaLCx/cM
awl9sheBuj6qh2k1rzfAZGPw9naJhe+LG0tAI4ZZ6Sao7DLXCgB2heCCpzUywLRHNIpFQTGY
wW9IJGCQpXx+CWXI6Q6QCJg/WiF7jrRrpbvVTYfo63XfGA2XUd5EYHdhbW/3zdhqEAnV2c27
12Iz+SIbudBRaOB1rGY+YqgNX4E9zOWv7iNQNOVi6W+aPPguwxHBY3Z1IviISoNWT/ENHiW8
NQkiKzJUMot8Cea0d8fLII3M8jRtTAQ7m6NcL6RK1NO5FLjTpUUD6nzso5b2S7gRyIz+7YvG
ovMx6g1ZDlRxDQa30g0tO0C3oMb97dTzJhgYy5vPOWaz8d6HkP4kf3vf/+ckeVv//HjXQmu+
en2iygR0J0THhjwvLJOZgDGiuiHXThqJ+kfe1Kqr3crl0xo9gpsCulYDl+Q8p2pkO29gRmpR
8Yu7uMX0quE8yjkNQe1s/S07SvzYqLXPEkjwxw9VH5XsVYv3PJdcBVb+xOwBwTXprhJO142U
hbM19Y0GPsMOYuhf+/ftKz7NwiBePg6bXxv4n81h/fnz539TsaIbRmukqeVypMC54REmy6BD
8vtGykUl0/FNJOocdbYqgVH6u8gEAut7aa5oQE+vQo6BdTCetx2x3RcL3V9qqAyK+P8xnT0/
KW932Ehgys8qxyjw4iCUMgKCGgv6ShkBy+gLhyOTd6Pl5sg+/amPosfVYXWCZ9Aa78P2/mLj
7doxyf4bfHXsWNA+cU6BxUGxR9GftZGoBSrkZVO4N57OJhwZkvvVEFRlOLxBQ6m8uSnDhj9Q
AYFieeqxh0XxGx5CEpTrSkXtxdnZhOK9lUegvGWjULpUjlan3eGCVNNaZ8nom7Ydo/YBaA0Y
G8cPEm+dsvC+zjlNCouzq+6Xjho3bTKtWx/HzkBBm4/Q6N2SqqQecLji9ahDgrGxalqRUing
ZFPpRnV+fTtbkW44dILbVOr+ZjqlHQEDFL6N9NbVLvxT45zpeu9e90lTJgKkWlDzviilTIGz
QW0e7bn1vc62dz9kCP2qoW5+JjSYkff8pkfXaWyJhquSjkBlfOavA7R+5TYNA4dDfOrB9bno
f2m+AB40cM7I1OtpmMHngCoDnWpOL1wcRK982cukmw1A6MIa60E65UUsnFQ+obzSbAhEBuJP
4EOH/qVkgx47YmDsjsxfch9jOuNPX5c4Lc41cuR1BctnKH7nRbOeDb0h4sw9ZSiRYuc2AKEx
T0VpObDTndETjLUDHwOLEhTirobQwHpmxWsBsrc4Ip/J535LTHalulMap6xEWiQjSoz25Mb5
BnXfO2t22/36b+u0oZd09WZ/QF0Cdcnw7e/NbvW0Ic7umNGHPj/oFD9Kjo8EUA1JgDgPdYWU
SzWY1r6H1TglWpUfKA0kMAc43ozlpWGFMYPTZFzgaGzTBYySML8z615YBngJ4l+JLuiJrs/C
Fk+C6XbvSo9Oq+corS9I/wexx7Ky5aUBAA==

--huq684BweRXVnRxX--
