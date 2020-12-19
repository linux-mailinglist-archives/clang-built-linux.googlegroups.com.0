Return-Path: <clang-built-linux+bncBCX2JBVY5MBBBONC7L7AKGQE4ADUFAI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13b.google.com (mail-il1-x13b.google.com [IPv6:2607:f8b0:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id 68EA92DF246
	for <lists+clang-built-linux@lfdr.de>; Sun, 20 Dec 2020 00:48:10 +0100 (CET)
Received: by mail-il1-x13b.google.com with SMTP id g1sf5878535ilq.7
        for <lists+clang-built-linux@lfdr.de>; Sat, 19 Dec 2020 15:48:10 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608421689; cv=pass;
        d=google.com; s=arc-20160816;
        b=jB/lgIJEM9KgBy6Zgg7a+37yL9ollSPEX5B76oGeBpqp5nYK6Q+olPUOWtAw1cJ09o
         bcsSY7ayPjVAjSPjZ/bZsSq86iprbWbHNxzFv2xgOXXJOJnvVxEx6NbRAfDjor3IY/kF
         WfQGXxd4y2cLkT5uHubwuoGLRehZQtZgxV6W+TmmKTtyh7ZHIywMv0NMY1VQV9iOTpSd
         JINzIlRdlqqULWsoPr2tOBV4ZcxBRjPFTIIi6oBpQRdWvvtYyhPU8JvP57IQ+2txg3s3
         ZGVCUVYEt5ETmgJopfQxsFyPBagUaNt415Dm2hotHAkD/x8FLZNA+jr6gFM0IDdw44NP
         2+lQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=Iiff6SFcjgU4HUMwyIhCsoJiD2TOk+fyZoz5mvsEznA=;
        b=ZwOZCoBnW9s019xgj09q3g7bUf7W9UHYcw6wkfghrgLCJ4eu2xkgG30XYovn7+p3ii
         vZiKnA6nw8CDjwpGbfyn8ccDR5pNqrAIpVU0iHuo3I/bKgN7h7HAyU/wcxiE39PtrO6p
         SjUHWKra0OhDKA/0NB1ErTPKjrnWqeVHV1k2HCi6irXWsUT8srHB/WKRxsNLb80EPImj
         Pnc9wnXkMH+zTLaDKrgm/ZZ/1XoaD5lOKOrsvavMhHXkFza3s4sPGUzmavCbppdk2M/Y
         DMbwuOkUuDZhWauAIFu+EN5vKg5tJFhSndaudtYwQhmRKLYu6e77CLL/1HHDVI48ZgCZ
         pnTA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Iiff6SFcjgU4HUMwyIhCsoJiD2TOk+fyZoz5mvsEznA=;
        b=OO+Re7ynaR1msV9Tgj0vsxzrDrgPI3VE4v32eZIQ1YgI2eUtE6Kt85yVYhJu3PXmky
         p+SXEG/L0MZDqhIhNjntaINqmBmTSEdPiXPDRmnE1TMhe936FCk/7OGbQOWXlJMSKosI
         9tfwy2WPkPI5ozvz7/igCFY0dTaXUOhQb2OQTtIiNtcayyL5AOJ22amk8TKTK1NgCMqe
         zH3I56a5ZkIf17rdISa6KlATxtJzfSMj0oo5c364XNDvi6q2ICy1hJI4BCbanXHZBOMD
         yIAhye6kLp43rAWVkegCVo6MkNLxmJfiO7U+nakf51knPjLpIuwONIMmElzQiM2BNcX5
         Vqxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Iiff6SFcjgU4HUMwyIhCsoJiD2TOk+fyZoz5mvsEznA=;
        b=IXBamgA8pTuSdPjNxK4rJfGCdL17xYnjk3PCEOP+2XHHR1FNevFCtol65FTtPGucpA
         TDmBV+M+OriGmSlb88qmo3QPHL8PyQ3vg8Tova//PUrUYFhwpy0zzy04ppoJxJ7NIiUw
         3kdGfmBHOqTRraCLXvLa/pJaXlWxBKYzUJj9XWpO9WDpqzX1GeQnKIpmuj22QIovCksP
         YX6dq8+6k9gl19Dje3DnXGSRPf31X8TekUh5Pb53+EicSNzUy5Z/k1q3yWbXt92vOPXf
         K3vELuoDrenvtx0pXa37Gc2GCYXejIb8kzb7kYDqeOxlEwelVHZOhB1zuewufkIJ512w
         WS1w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531PQfgU/u+N8EUvw71aMHp+jObPO3iMFj0ETQ3DOiGy1svaW7ve
	I9qxEPXF398aB/hRXanMTFg=
X-Google-Smtp-Source: ABdhPJz3+EmnnrVRPYknffJuNnBYcZp1gl4ApwNv/44EBRvqWqc4H2/cQbCfgBOdVvzelinfjQLSFA==
X-Received: by 2002:a05:6638:2243:: with SMTP id m3mr7093766jas.115.1608421689458;
        Sat, 19 Dec 2020 15:48:09 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:d83:: with SMTP id i3ls9089031ilj.1.gmail; Sat, 19
 Dec 2020 15:48:09 -0800 (PST)
X-Received: by 2002:a05:6e02:673:: with SMTP id l19mr10826961ilt.102.1608421689058;
        Sat, 19 Dec 2020 15:48:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608421689; cv=none;
        d=google.com; s=arc-20160816;
        b=m8PcG4uIhOgoRBI1bfurVlhDuYJ1Lo/uNvZTu/KBo8sBChP03WggdFQAgmlJgrfmR8
         E74vXJXfFwBvgn2sakAxWUyN2/b46iIJWFqNN+ksW/Wx/OQC3TKF4W0kOhA42mnw5QEI
         h5gpUpfhr+UUFPH83AL0SpOShIEFZKkz6PyUeb5hI99iCctu7dXRJobHlUqB7CW6pYwj
         QC0lJyGvTZc/YQ8mFpfUpIJMgswxTzH8S12xbaAUrdNxFiUq87/lu/6X1oSX2cNft5RR
         sdazck15dnib3eEwP69nRSUgk27LY/FMv2wP99ysIXfUzIJtJvxh3M01fytXeaoFhy+0
         QKJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=spGSBgfOx7ntnooCKHcJ4ipPQqZfO4+kAjy4K2mbP3M=;
        b=fv1zls2BP5Xj/Prk1T6i+fgzu5s9wauCZAxBiJO/vL3hRUrIXhX03iqpemuP0/8Pte
         nQpNoPrDG4g8E9soeJ66w/GmQl80V1FmpCKGHVFMPoxP7H4rq6035/bvAYqO/cge1TvE
         h4Wfjv1jAr8mQtXVbUor8KI7pWjmiT1IWaIJNGEW/KfKNupil0JpW7ShtyqjGYS0KtAj
         ZlawKgQShcyZcaDG+SEecvtfNc5ujmcBRoM6sFMcMY0PC5Sd60K0Cuz0z5Qce7LIl88g
         7Kc9yIchPBJgD+RYpCBzjMPq/6t4XYuzln/C3GttFLW71nuTFzjoH5NmrdfItJeo8hHe
         q9cQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga12.intel.com (mga12.intel.com. [192.55.52.136])
        by gmr-mx.google.com with ESMTPS id j4si1203043ilr.2.2020.12.19.15.48.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 19 Dec 2020 15:48:09 -0800 (PST)
Received-SPF: pass (google.com: domain of philip.li@intel.com designates 192.55.52.136 as permitted sender) client-ip=192.55.52.136;
IronPort-SDR: mdjxpxR6nnxyUKsr8YO/lxILHIOOVjHd7BpfxH7RNjJmPMKYpLjmhLnVSA2jgNgDUtVn8iSvtt
 wgiKmiaykIgQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9840"; a="154821736"
X-IronPort-AV: E=Sophos;i="5.78,433,1599548400"; 
   d="scan'208";a="154821736"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Dec 2020 15:48:08 -0800
IronPort-SDR: ikLVvPHeSzCEFnnKrz4+Oc+wn5U8Ka6RGoZy1cA3IIrOvsfLYBUiyZx0Np2bePzSJ40MJIFGSt
 vRSa0WHrcBFw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,433,1599548400"; 
   d="scan'208";a="381171520"
Received: from pl-dbox.sh.intel.com (HELO intel.com) ([10.239.159.39])
  by orsmga007.jf.intel.com with ESMTP; 19 Dec 2020 15:48:06 -0800
Date: Sun, 20 Dec 2020 07:44:24 +0800
From: Philip Li <philip.li@intel.com>
To: kernel test robot <lkp@intel.com>
Cc: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
	kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: Re: [kbuild-all] [drm-drm-misc:drm-misc-next 2/7]
 /tmp/lm3533-core-313344.s:1302: Error: unrecognized opcode `zext.b a2,a0'
Message-ID: <20201219234424.GF3505@intel.com>
References: <202012190953.ThWwtAEm-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202012190953.ThWwtAEm-lkp@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: philip.li@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of philip.li@intel.com designates 192.55.52.136 as
 permitted sender) smtp.mailfrom=philip.li@intel.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=intel.com
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

On Sat, Dec 19, 2020 at 09:20:59AM +0800, kernel test robot wrote:
> tree:   git://anongit.freedesktop.org/drm/drm-misc drm-misc-next
> head:   c67e62790f5c156705fb162da840c6d89d0af6e0
> commit: 4e7b9000b6d8ec609d5bff1a1eb4bf6cece35dcd [2/7] drm/amdgpu: stop using pages with drm_prime_sg_to_page_addr_arrays
> config: riscv-randconfig-r022-20201217 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project cee1e7d14f4628d6174b33640d502bff3b54ae45)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install riscv cross compiling tool for clang build
>         # apt-get install binutils-riscv64-linux-gnu
>         git remote add drm-drm-misc git://anongit.freedesktop.org/drm/drm-misc
>         git fetch --no-tags drm-drm-misc drm-misc-next
>         git checkout 4e7b9000b6d8ec609d5bff1a1eb4bf6cece35dcd
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=riscv 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
Hi Christian, kindly ignore this false positive report.

Thanks

> 
> Note: the drm-drm-misc/drm-misc-next HEAD a1b766d1b3646b5ef90f0fa7b42fd99bbd166766 builds fine.
>       It only hurts bisectibility.
> 
> All errors (new ones prefixed by >>):
> 
>    #define readb_cpu(c)            ({ u8  __r = __raw_readb(c); __r; })
>                                                             ^
>    In file included from drivers/mfd/lm3533-core.c:14:
>    In file included from include/linux/gpio.h:62:
>    In file included from include/asm-generic/gpio.h:11:
>    In file included from include/linux/gpio/driver.h:7:
>    In file included from include/linux/irq.h:20:
>    In file included from include/linux/io.h:13:
>    In file included from arch/riscv/include/asm/io.h:149:
>    include/asm-generic/io.h:564:9: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            return inw(addr);
>                   ^~~~~~~~~
>    arch/riscv/include/asm/io.h:56:76: note: expanded from macro 'inw'
>    #define inw(c)          ({ u16 __v; __io_pbr(); __v = readw_cpu((void*)(PCI_IOBASE + (c))); __io_par(__v); __v; })
>                                                                            ~~~~~~~~~~ ^
>    arch/riscv/include/asm/mmio.h:88:76: note: expanded from macro 'readw_cpu'
>    #define readw_cpu(c)            ({ u16 __r = le16_to_cpu((__force __le16)__raw_readw(c)); __r; })
>                                                                                         ^
>    include/uapi/linux/byteorder/little_endian.h:36:51: note: expanded from macro '__le16_to_cpu'
>    #define __le16_to_cpu(x) ((__force __u16)(__le16)(x))
>                                                      ^
>    In file included from drivers/mfd/lm3533-core.c:14:
>    In file included from include/linux/gpio.h:62:
>    In file included from include/asm-generic/gpio.h:11:
>    In file included from include/linux/gpio/driver.h:7:
>    In file included from include/linux/irq.h:20:
>    In file included from include/linux/io.h:13:
>    In file included from arch/riscv/include/asm/io.h:149:
>    include/asm-generic/io.h:572:9: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            return inl(addr);
>                   ^~~~~~~~~
>    arch/riscv/include/asm/io.h:57:76: note: expanded from macro 'inl'
>    #define inl(c)          ({ u32 __v; __io_pbr(); __v = readl_cpu((void*)(PCI_IOBASE + (c))); __io_par(__v); __v; })
>                                                                            ~~~~~~~~~~ ^
>    arch/riscv/include/asm/mmio.h:89:76: note: expanded from macro 'readl_cpu'
>    #define readl_cpu(c)            ({ u32 __r = le32_to_cpu((__force __le32)__raw_readl(c)); __r; })
>                                                                                         ^
>    include/uapi/linux/byteorder/little_endian.h:34:51: note: expanded from macro '__le32_to_cpu'
>    #define __le32_to_cpu(x) ((__force __u32)(__le32)(x))
>                                                      ^
>    In file included from drivers/mfd/lm3533-core.c:14:
>    In file included from include/linux/gpio.h:62:
>    In file included from include/asm-generic/gpio.h:11:
>    In file included from include/linux/gpio/driver.h:7:
>    In file included from include/linux/irq.h:20:
>    In file included from include/linux/io.h:13:
>    In file included from arch/riscv/include/asm/io.h:149:
>    include/asm-generic/io.h:580:2: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            outb(value, addr);
>            ^~~~~~~~~~~~~~~~~
>    arch/riscv/include/asm/io.h:59:68: note: expanded from macro 'outb'
>    #define outb(v,c)       ({ __io_pbw(); writeb_cpu((v),(void*)(PCI_IOBASE + (c))); __io_paw(); })
>                                                                  ~~~~~~~~~~ ^
>    arch/riscv/include/asm/mmio.h:91:52: note: expanded from macro 'writeb_cpu'
>    #define writeb_cpu(v, c)        ((void)__raw_writeb((v), (c)))
>                                                              ^
>    In file included from drivers/mfd/lm3533-core.c:14:
>    In file included from include/linux/gpio.h:62:
>    In file included from include/asm-generic/gpio.h:11:
>    In file included from include/linux/gpio/driver.h:7:
>    In file included from include/linux/irq.h:20:
>    In file included from include/linux/io.h:13:
>    In file included from arch/riscv/include/asm/io.h:149:
>    include/asm-generic/io.h:588:2: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            outw(value, addr);
>            ^~~~~~~~~~~~~~~~~
>    arch/riscv/include/asm/io.h:60:68: note: expanded from macro 'outw'
>    #define outw(v,c)       ({ __io_pbw(); writew_cpu((v),(void*)(PCI_IOBASE + (c))); __io_paw(); })
>                                                                  ~~~~~~~~~~ ^
>    arch/riscv/include/asm/mmio.h:92:76: note: expanded from macro 'writew_cpu'
>    #define writew_cpu(v, c)        ((void)__raw_writew((__force u16)cpu_to_le16(v), (c)))
>                                                                                      ^
>    In file included from drivers/mfd/lm3533-core.c:14:
>    In file included from include/linux/gpio.h:62:
>    In file included from include/asm-generic/gpio.h:11:
>    In file included from include/linux/gpio/driver.h:7:
>    In file included from include/linux/irq.h:20:
>    In file included from include/linux/io.h:13:
>    In file included from arch/riscv/include/asm/io.h:149:
>    include/asm-generic/io.h:596:2: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            outl(value, addr);
>            ^~~~~~~~~~~~~~~~~
>    arch/riscv/include/asm/io.h:61:68: note: expanded from macro 'outl'
>    #define outl(v,c)       ({ __io_pbw(); writel_cpu((v),(void*)(PCI_IOBASE + (c))); __io_paw(); })
>                                                                  ~~~~~~~~~~ ^
>    arch/riscv/include/asm/mmio.h:93:76: note: expanded from macro 'writel_cpu'
>    #define writel_cpu(v, c)        ((void)__raw_writel((__force u32)cpu_to_le32(v), (c)))
>                                                                                      ^
>    In file included from drivers/mfd/lm3533-core.c:14:
>    In file included from include/linux/gpio.h:62:
>    In file included from include/asm-generic/gpio.h:11:
>    In file included from include/linux/gpio/driver.h:7:
>    In file included from include/linux/irq.h:20:
>    In file included from include/linux/io.h:13:
>    In file included from arch/riscv/include/asm/io.h:149:
>    include/asm-generic/io.h:1005:55: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            return (port > MMIO_UPPER_LIMIT) ? NULL : PCI_IOBASE + port;
>                                                      ~~~~~~~~~~ ^
>    7 warnings generated.
>    /tmp/lm3533-core-313344.s: Assembler messages:
> >> /tmp/lm3533-core-313344.s:1302: Error: unrecognized opcode `zext.b a2,a0'
> >> /tmp/lm3533-core-313344.s:1303: Error: unrecognized opcode `zext.b a3,a3'
>    /tmp/lm3533-core-313344.s:1330: Error: unrecognized opcode `zext.b a2,a0'
>    /tmp/lm3533-core-313344.s:1331: Error: unrecognized opcode `zext.b a3,a3'
>    clang-12: error: assembler command failed with exit code 1 (use -v to see invocation)
> --
>    In file included from include/asm-generic/hardirq.h:13:
>    In file included from include/linux/irq.h:20:
>    In file included from include/linux/io.h:13:
>    In file included from arch/riscv/include/asm/io.h:149:
>    include/asm-generic/io.h:564:9: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            return inw(addr);
>                   ^~~~~~~~~
>    arch/riscv/include/asm/io.h:56:76: note: expanded from macro 'inw'
>    #define inw(c)          ({ u16 __v; __io_pbr(); __v = readw_cpu((void*)(PCI_IOBASE + (c))); __io_par(__v); __v; })
>                                                                            ~~~~~~~~~~ ^
>    arch/riscv/include/asm/mmio.h:88:76: note: expanded from macro 'readw_cpu'
>    #define readw_cpu(c)            ({ u16 __r = le16_to_cpu((__force __le16)__raw_readw(c)); __r; })
>                                                                                         ^
>    include/uapi/linux/byteorder/little_endian.h:36:51: note: expanded from macro '__le16_to_cpu'
>    #define __le16_to_cpu(x) ((__force __u16)(__le16)(x))
>                                                      ^
>    In file included from drivers/iio/light/cm36651.c:12:
>    In file included from include/linux/interrupt.h:11:
>    In file included from include/linux/hardirq.h:10:
>    In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
>    In file included from include/asm-generic/hardirq.h:13:
>    In file included from include/linux/irq.h:20:
>    In file included from include/linux/io.h:13:
>    In file included from arch/riscv/include/asm/io.h:149:
>    include/asm-generic/io.h:572:9: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            return inl(addr);
>                   ^~~~~~~~~
>    arch/riscv/include/asm/io.h:57:76: note: expanded from macro 'inl'
>    #define inl(c)          ({ u32 __v; __io_pbr(); __v = readl_cpu((void*)(PCI_IOBASE + (c))); __io_par(__v); __v; })
>                                                                            ~~~~~~~~~~ ^
>    arch/riscv/include/asm/mmio.h:89:76: note: expanded from macro 'readl_cpu'
>    #define readl_cpu(c)            ({ u32 __r = le32_to_cpu((__force __le32)__raw_readl(c)); __r; })
>                                                                                         ^
>    include/uapi/linux/byteorder/little_endian.h:34:51: note: expanded from macro '__le32_to_cpu'
>    #define __le32_to_cpu(x) ((__force __u32)(__le32)(x))
>                                                      ^
>    In file included from drivers/iio/light/cm36651.c:12:
>    In file included from include/linux/interrupt.h:11:
>    In file included from include/linux/hardirq.h:10:
>    In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
>    In file included from include/asm-generic/hardirq.h:13:
>    In file included from include/linux/irq.h:20:
>    In file included from include/linux/io.h:13:
>    In file included from arch/riscv/include/asm/io.h:149:
>    include/asm-generic/io.h:580:2: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            outb(value, addr);
>            ^~~~~~~~~~~~~~~~~
>    arch/riscv/include/asm/io.h:59:68: note: expanded from macro 'outb'
>    #define outb(v,c)       ({ __io_pbw(); writeb_cpu((v),(void*)(PCI_IOBASE + (c))); __io_paw(); })
>                                                                  ~~~~~~~~~~ ^
>    arch/riscv/include/asm/mmio.h:91:52: note: expanded from macro 'writeb_cpu'
>    #define writeb_cpu(v, c)        ((void)__raw_writeb((v), (c)))
>                                                              ^
>    In file included from drivers/iio/light/cm36651.c:12:
>    In file included from include/linux/interrupt.h:11:
>    In file included from include/linux/hardirq.h:10:
>    In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
>    In file included from include/asm-generic/hardirq.h:13:
>    In file included from include/linux/irq.h:20:
>    In file included from include/linux/io.h:13:
>    In file included from arch/riscv/include/asm/io.h:149:
>    include/asm-generic/io.h:588:2: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            outw(value, addr);
>            ^~~~~~~~~~~~~~~~~
>    arch/riscv/include/asm/io.h:60:68: note: expanded from macro 'outw'
>    #define outw(v,c)       ({ __io_pbw(); writew_cpu((v),(void*)(PCI_IOBASE + (c))); __io_paw(); })
>                                                                  ~~~~~~~~~~ ^
>    arch/riscv/include/asm/mmio.h:92:76: note: expanded from macro 'writew_cpu'
>    #define writew_cpu(v, c)        ((void)__raw_writew((__force u16)cpu_to_le16(v), (c)))
>                                                                                      ^
>    In file included from drivers/iio/light/cm36651.c:12:
>    In file included from include/linux/interrupt.h:11:
>    In file included from include/linux/hardirq.h:10:
>    In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
>    In file included from include/asm-generic/hardirq.h:13:
>    In file included from include/linux/irq.h:20:
>    In file included from include/linux/io.h:13:
>    In file included from arch/riscv/include/asm/io.h:149:
>    include/asm-generic/io.h:596:2: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            outl(value, addr);
>            ^~~~~~~~~~~~~~~~~
>    arch/riscv/include/asm/io.h:61:68: note: expanded from macro 'outl'
>    #define outl(v,c)       ({ __io_pbw(); writel_cpu((v),(void*)(PCI_IOBASE + (c))); __io_paw(); })
>                                                                  ~~~~~~~~~~ ^
>    arch/riscv/include/asm/mmio.h:93:76: note: expanded from macro 'writel_cpu'
>    #define writel_cpu(v, c)        ((void)__raw_writel((__force u32)cpu_to_le32(v), (c)))
>                                                                                      ^
>    In file included from drivers/iio/light/cm36651.c:12:
>    In file included from include/linux/interrupt.h:11:
>    In file included from include/linux/hardirq.h:10:
>    In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
>    In file included from include/asm-generic/hardirq.h:13:
>    In file included from include/linux/irq.h:20:
>    In file included from include/linux/io.h:13:
>    In file included from arch/riscv/include/asm/io.h:149:
>    include/asm-generic/io.h:1005:55: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            return (port > MMIO_UPPER_LIMIT) ? NULL : PCI_IOBASE + port;
>                                                      ~~~~~~~~~~ ^
>    7 warnings generated.
>    /tmp/cm36651-809095.s: Assembler messages:
> >> /tmp/cm36651-809095.s:1487: Error: unrecognized opcode `zext.b a2,s1'
>    clang-12: error: assembler command failed with exit code 1 (use -v to see invocation)
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org


> _______________________________________________
> kbuild-all mailing list -- kbuild-all@lists.01.org
> To unsubscribe send an email to kbuild-all-leave@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201219234424.GF3505%40intel.com.
