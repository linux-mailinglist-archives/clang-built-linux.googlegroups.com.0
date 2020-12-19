Return-Path: <clang-built-linux+bncBCX2JBVY5MBBBJ5N677AKGQEBWWFTNI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93e.google.com (mail-ua1-x93e.google.com [IPv6:2607:f8b0:4864:20::93e])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A9742DEE2B
	for <lists+clang-built-linux@lfdr.de>; Sat, 19 Dec 2020 11:32:08 +0100 (CET)
Received: by mail-ua1-x93e.google.com with SMTP id c46sf1837242uad.1
        for <lists+clang-built-linux@lfdr.de>; Sat, 19 Dec 2020 02:32:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608373927; cv=pass;
        d=google.com; s=arc-20160816;
        b=SExMt0MEJ9U+aEZrT9ra58y/2o0gtoiuqP6IBLGJ4CTsvKgptTCRUzOvjD7wzyk9LR
         qYygQRLgqFNGKT6vKVYYmSz+9VPqHmBwr0VBR4oWWX7Y5WE2Q9SKmXUE+rm8gdbhZkVg
         7BCOPmbarQTFUSaD5gtIaveJAP5ZvnFpzp4Fj67fxWxVog1C9zHCGF8sjypAjlQfoOjT
         F2TZ3OYbQ/KOc7Yjs4UjZGOQBufb8bACa/xo8oLqEFTwmi9MYyUiwlbrAsroxzoM9pes
         WCzFrbqZQYk12k8tBuRGXsO5XYeyt2TzwBGaGDhF6map4+9dBbZMhm5T2blw4LO19VHv
         EDiQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=HgUuRgQO1PRKmcE132h5M5D8KmLs1HpYQ6/j9M835HQ=;
        b=cjhGSE5OX/z1iIkajIDNjj2nLEBmhrtomLeyNBijsnT5Lo/0YoKuXndgmBH07ilyt3
         zVi7AsjmY8/6efl9fUSrfvXZhUUk0ktO5+i/7D5RYCkVrTpFqJn4EHlNSV9B6b9j3hus
         QwnlQNOD95Db3yXpallztSDHAy9zTDDv3YtkbB3C2QjhT6ebpAJmEFyHEscOQuDlmyc7
         8l6QcM0PRcarTH5+WVFO2hd9n3PIytx7pPnGplnh4W+O6ZTlsXn0R2+M8zpRRS2CTeqF
         ui7Y3ZBa3sdTjE5tM2meZW9KppkW6nT+/kwjSNKLbDXA87c09IZXHk4/f4RDC9TQEMzx
         D9wA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HgUuRgQO1PRKmcE132h5M5D8KmLs1HpYQ6/j9M835HQ=;
        b=mx1jjncY/8JZP6+z4jNd2VgPcKT1UP2gtWgUojjGNqmKU/YUTN3Aw8xwLJqptcA5OP
         v8M+m1eTU/mcuh+J86YR6QgyimlbSyprlLQG6TyxPM7ddnuzdPFJWB6AudadM3dnZhEL
         S9BkgSMieeP7l6VQBNhWHKnohvYDi0xuGO2jGi51ISJYSueOtM9DIsEpmdMYdiPc1Pl0
         zsTcqA87FtN2zN5xjaSUu8yliZnN00UMe3uaUV9kJgDR0xY+QM6Fa8Tksj/G1QQce4DH
         DocA9ZwvNVm/RCztWaenjueQUi2Dqs9kASsmJh9CYrxmTHzstsXc7r7bcGGtZjAdm5Fs
         g0/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HgUuRgQO1PRKmcE132h5M5D8KmLs1HpYQ6/j9M835HQ=;
        b=er/HRL+ue1pdUquZVYBHxlzW5UGCBFX2LP0SLrjJPRV+B3MBqFAtVRbBHwm5N5jJoM
         51KtLkTNXJzIJICrn3bFdyTw3TTOb5oPnvrHwbnOTPulYWbA9xAghnw7LTYdqVipJtZ0
         LolBkveFj0lI0uIIhZDSZlpSNwC8/6TiCFGnA1EhIVtMVQxu/m65sgTUd9DFHZqqYurn
         aL3VAN1w2bFW1iGlpYXGXSAy5VXfMqjoJk75I6t43/CtO2Km5EI2cDNuM9uAFu+WufoP
         kH3DPyPjmxKAwkAckaynnvwuZpzEQQZ7xQhDGCQOSkMSrzBbG8g37YyVxLhy7Lmgrh+J
         HQ2g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531fFGE1zkXwXniWOzVm26By0ZWz9AMoVdKafGaMLS+0VLfdWvgF
	vOxqrVBkcCxjvj3v1PwSl+M=
X-Google-Smtp-Source: ABdhPJyle/klfngnGfXN88YnxbGLW56YZWjEVsfMCk3L8air5Y/gTlp/ZgoTtMWWeZDYWDySt1r3Eg==
X-Received: by 2002:a67:f113:: with SMTP id n19mr7781326vsk.6.1608373927474;
        Sat, 19 Dec 2020 02:32:07 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:8d45:: with SMTP id p66ls4219586vsd.11.gmail; Sat, 19
 Dec 2020 02:32:07 -0800 (PST)
X-Received: by 2002:a67:1946:: with SMTP id 67mr7257413vsz.60.1608373926958;
        Sat, 19 Dec 2020 02:32:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608373926; cv=none;
        d=google.com; s=arc-20160816;
        b=JT21pVZsUAkhM6RuPQ5OwL+9IDZdJ5O+yZZGuQICAq2zGe7dKzqKRXzBeGFSlduhZo
         v7EpmJFIAl51SbSxgEBmJIs0Khu4Xo8tr7qZNXe6xheZfFQ7kDbq7dnF9fdZjfh2QIie
         DuyCQMZ8SHBQAFFgtmyXZCSx1y3n5UcwslKQ8hkahF1/Et3+uDvFybRbHjwMlG4lhowQ
         rwR1qjzPNapr7tEQxIpn19VGbzso+br7lC8XRI9PEq+HfOE0CaK4+sDWPWJHFse95aRQ
         SW9NA8ul4dp0xkQQknvSma6FTg3ejHUWenF74GNGWGuGYwNvHUKLT7tHX2dTnTEw1gxo
         UxwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=06SEbQrOLj+E7iwQ741gbJ8Lrerx38qJe7QDsOXfreA=;
        b=cR+io9LcaGWV5K8bHVwPBLql0xxkQ4L7d+dYATrw6+DqQ4FZh8F8iBK7VF6Ie73T+V
         k/g11Xeil7gr/Y6FnQqwP8LCG77ceic8fKzfRbbUcZL+3GbtKUQLeF/GqtX7v6jfviGX
         oqhy0OuODFZMRiy6EygHA5ILeMON19kbsG5tXl9bO8UCX2I/NLJ4fW9GkTtR7w2ZCuy1
         wjxayg5YMiSYxDP9/dTM89DSEUSxeVSF0ooABxG6HorHBMiB6rjrMOa5S80aoJ0c5imi
         SR3EO+VjyMzOyjHuov85bGlTsmHw+k7J6rDWtkAoToiBLmDp0KraI2oCXpCHY4N2K6GL
         GzuQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga04.intel.com (mga04.intel.com. [192.55.52.120])
        by gmr-mx.google.com with ESMTPS id r207si705623vkf.2.2020.12.19.02.32.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 19 Dec 2020 02:32:06 -0800 (PST)
Received-SPF: pass (google.com: domain of philip.li@intel.com designates 192.55.52.120 as permitted sender) client-ip=192.55.52.120;
IronPort-SDR: ffrqyYL/k/JpXUrwshxmhS0VCL+CcazMDXncgHJ62kkGi3hhRSm5tKxRo8sqVhAIWgVZNELrKQ
 RLSA+O7VX8XA==
X-IronPort-AV: E=McAfee;i="6000,8403,9839"; a="172998107"
X-IronPort-AV: E=Sophos;i="5.78,433,1599548400"; 
   d="scan'208";a="172998107"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Dec 2020 02:32:05 -0800
IronPort-SDR: 0Vk6DnzCEgMJUC14Rkbz3sbP3QUlB+L283iLLTfJNPL8v9rnVnD3q9qCcCK2FeSgq95ma6NhdH
 mwWsUSa8UocQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,433,1599548400"; 
   d="scan'208";a="339576751"
Received: from pl-dbox.sh.intel.com (HELO intel.com) ([10.239.159.39])
  by orsmga003.jf.intel.com with ESMTP; 19 Dec 2020 02:32:02 -0800
Date: Sat, 19 Dec 2020 18:28:20 +0800
From: Philip Li <philip.li@intel.com>
To: Pavel Machek <pavel@ucw.cz>
Cc: kernel test robot <lkp@intel.com>,
	kernel list <linux-kernel@vger.kernel.org>,
	Zheng Yongjun <zhengyongjun3@huawei.com>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com,
	Linux Memory Management List <linux-mm@kvack.org>
Subject: Re: [kbuild-all] Re: [linux-next:master 13538/13785]
 /tmp/metronomefb-846872.s:300: Error: unrecognized opcode `zext.b a2,a2'
Message-ID: <20201219102820.GA14085@intel.com>
References: <202012191403.y8Aomjpm-lkp@intel.com>
 <20201219075606.GA20870@amd>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201219075606.GA20870@amd>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: philip.li@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of philip.li@intel.com designates 192.55.52.120 as
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

On Sat, Dec 19, 2020 at 08:56:06AM +0100, Pavel Machek wrote:
> Crazy robot, stop spamming. This report is obviously bogus, yet, you
> sent me 5 copies.
Thanks Pavel for input, sorry for the false positive. It tries to
bisect error like below (the new error), but it may be related to
assember support. We will adjust the system to not report this out
wrongly. Kindly allow some time for us to resolving this.

> > >> /tmp/metronomefb-846872.s:300: Error: unrecognized opcode `zext.b a2,a2'

Thanks

> 
> Whoever is responsible for this, please sign emails with your real
> name!
> 
> 								Pavel
> 
> 
> On Sat 2020-12-19 14:19:16, kernel test robot wrote:
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> > head:   0d52778b8710eb11cb616761a02aee0a7fd60425
> > commit: f08fdc654a5940aa23259e1ed53ab0f401ca7068 [13538/13785] leds: ss4200: simplify the return expression of register_nasgpio_led()
> > config: riscv-randconfig-r014-20201217 (attached as .config)
> > compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project cee1e7d14f4628d6174b33640d502bff3b54ae45)
> > reproduce (this is a W=1 build):
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # install riscv cross compiling tool for clang build
> >         # apt-get install binutils-riscv64-linux-gnu
> >         # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=f08fdc654a5940aa23259e1ed53ab0f401ca7068
> >         git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
> >         git fetch --no-tags linux-next master
> >         git checkout f08fdc654a5940aa23259e1ed53ab0f401ca7068
> >         # save the attached .config to linux build tree
> >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=riscv 
> > 
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kernel test robot <lkp@intel.com>
> > 
> > Note: the linux-next/master HEAD 0d52778b8710eb11cb616761a02aee0a7fd60425 builds fine.
> >       It may have been fixed somewhere.
> > 
> > All errors (new ones prefixed by >>):
> > 
> >    In file included from include/asm-generic/hardirq.h:17:
> >    In file included from include/linux/irq.h:20:
> >    In file included from include/linux/io.h:13:
> >    In file included from arch/riscv/include/asm/io.h:149:
> >    include/asm-generic/io.h:564:9: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
> >            return inw(addr);
> >                   ^~~~~~~~~
> >    arch/riscv/include/asm/io.h:56:76: note: expanded from macro 'inw'
> >    #define inw(c)          ({ u16 __v; __io_pbr(); __v = readw_cpu((void*)(PCI_IOBASE + (c))); __io_par(__v); __v; })
> >                                                                            ~~~~~~~~~~ ^
> >    arch/riscv/include/asm/mmio.h:88:76: note: expanded from macro 'readw_cpu'
> >    #define readw_cpu(c)            ({ u16 __r = le16_to_cpu((__force __le16)__raw_readw(c)); __r; })
> >                                                                                         ^
> >    include/uapi/linux/byteorder/little_endian.h:36:51: note: expanded from macro '__le16_to_cpu'
> >    #define __le16_to_cpu(x) ((__force __u16)(__le16)(x))
> >                                                      ^
> >    In file included from drivers/video/fbdev/metronomefb.c:28:
> >    In file included from include/linux/interrupt.h:11:
> >    In file included from include/linux/hardirq.h:10:
> >    In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
> >    In file included from include/asm-generic/hardirq.h:17:
> >    In file included from include/linux/irq.h:20:
> >    In file included from include/linux/io.h:13:
> >    In file included from arch/riscv/include/asm/io.h:149:
> >    include/asm-generic/io.h:572:9: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
> >            return inl(addr);
> >                   ^~~~~~~~~
> >    arch/riscv/include/asm/io.h:57:76: note: expanded from macro 'inl'
> >    #define inl(c)          ({ u32 __v; __io_pbr(); __v = readl_cpu((void*)(PCI_IOBASE + (c))); __io_par(__v); __v; })
> >                                                                            ~~~~~~~~~~ ^
> >    arch/riscv/include/asm/mmio.h:89:76: note: expanded from macro 'readl_cpu'
> >    #define readl_cpu(c)            ({ u32 __r = le32_to_cpu((__force __le32)__raw_readl(c)); __r; })
> >                                                                                         ^
> >    include/uapi/linux/byteorder/little_endian.h:34:51: note: expanded from macro '__le32_to_cpu'
> >    #define __le32_to_cpu(x) ((__force __u32)(__le32)(x))
> >                                                      ^
> >    In file included from drivers/video/fbdev/metronomefb.c:28:
> >    In file included from include/linux/interrupt.h:11:
> >    In file included from include/linux/hardirq.h:10:
> >    In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
> >    In file included from include/asm-generic/hardirq.h:17:
> >    In file included from include/linux/irq.h:20:
> >    In file included from include/linux/io.h:13:
> >    In file included from arch/riscv/include/asm/io.h:149:
> >    include/asm-generic/io.h:580:2: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
> >            outb(value, addr);
> >            ^~~~~~~~~~~~~~~~~
> >    arch/riscv/include/asm/io.h:59:68: note: expanded from macro 'outb'
> >    #define outb(v,c)       ({ __io_pbw(); writeb_cpu((v),(void*)(PCI_IOBASE + (c))); __io_paw(); })
> >                                                                  ~~~~~~~~~~ ^
> >    arch/riscv/include/asm/mmio.h:91:52: note: expanded from macro 'writeb_cpu'
> >    #define writeb_cpu(v, c)        ((void)__raw_writeb((v), (c)))
> >                                                              ^
> >    In file included from drivers/video/fbdev/metronomefb.c:28:
> >    In file included from include/linux/interrupt.h:11:
> >    In file included from include/linux/hardirq.h:10:
> >    In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
> >    In file included from include/asm-generic/hardirq.h:17:
> >    In file included from include/linux/irq.h:20:
> >    In file included from include/linux/io.h:13:
> >    In file included from arch/riscv/include/asm/io.h:149:
> >    include/asm-generic/io.h:588:2: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
> >            outw(value, addr);
> >            ^~~~~~~~~~~~~~~~~
> >    arch/riscv/include/asm/io.h:60:68: note: expanded from macro 'outw'
> >    #define outw(v,c)       ({ __io_pbw(); writew_cpu((v),(void*)(PCI_IOBASE + (c))); __io_paw(); })
> >                                                                  ~~~~~~~~~~ ^
> >    arch/riscv/include/asm/mmio.h:92:76: note: expanded from macro 'writew_cpu'
> >    #define writew_cpu(v, c)        ((void)__raw_writew((__force u16)cpu_to_le16(v), (c)))
> >                                                                                      ^
> >    In file included from drivers/video/fbdev/metronomefb.c:28:
> >    In file included from include/linux/interrupt.h:11:
> >    In file included from include/linux/hardirq.h:10:
> >    In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
> >    In file included from include/asm-generic/hardirq.h:17:
> >    In file included from include/linux/irq.h:20:
> >    In file included from include/linux/io.h:13:
> >    In file included from arch/riscv/include/asm/io.h:149:
> >    include/asm-generic/io.h:596:2: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
> >            outl(value, addr);
> >            ^~~~~~~~~~~~~~~~~
> >    arch/riscv/include/asm/io.h:61:68: note: expanded from macro 'outl'
> >    #define outl(v,c)       ({ __io_pbw(); writel_cpu((v),(void*)(PCI_IOBASE + (c))); __io_paw(); })
> >                                                                  ~~~~~~~~~~ ^
> >    arch/riscv/include/asm/mmio.h:93:76: note: expanded from macro 'writel_cpu'
> >    #define writel_cpu(v, c)        ((void)__raw_writel((__force u32)cpu_to_le32(v), (c)))
> >                                                                                      ^
> >    In file included from drivers/video/fbdev/metronomefb.c:28:
> >    In file included from include/linux/interrupt.h:11:
> >    In file included from include/linux/hardirq.h:10:
> >    In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
> >    In file included from include/asm-generic/hardirq.h:17:
> >    In file included from include/linux/irq.h:20:
> >    In file included from include/linux/io.h:13:
> >    In file included from arch/riscv/include/asm/io.h:149:
> >    include/asm-generic/io.h:1005:55: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
> >            return (port > MMIO_UPPER_LIMIT) ? NULL : PCI_IOBASE + port;
> >                                                      ~~~~~~~~~~ ^
> >    7 warnings generated.
> >    /tmp/metronomefb-846872.s: Assembler messages:
> > >> /tmp/metronomefb-846872.s:300: Error: unrecognized opcode `zext.b a2,a2'
> > >> /tmp/metronomefb-846872.s:313: Error: unrecognized opcode `zext.b a5,a6'
> > >> /tmp/metronomefb-846872.s:350: Error: unrecognized opcode `zext.b a3,a3'
> > >> /tmp/metronomefb-846872.s:371: Error: unrecognized opcode `zext.b a4,a4'
> >    /tmp/metronomefb-846872.s:409: Error: unrecognized opcode `zext.b a2,a2'
> > >> /tmp/metronomefb-846872.s:433: Error: unrecognized opcode `zext.b s1,t1'
> > >> /tmp/metronomefb-846872.s:521: Error: unrecognized opcode `zext.b a1,a1'
> >    clang-12: error: assembler command failed with exit code 1 (use -v to see invocation)
> > 
> > ---
> > 0-DAY CI Kernel Test Service, Intel Corporation
> > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> 
> 
> 
> -- 
> http://www.livejournal.com/~pavelmachek



> _______________________________________________
> kbuild-all mailing list -- kbuild-all@lists.01.org
> To unsubscribe send an email to kbuild-all-leave@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201219102820.GA14085%40intel.com.
