Return-Path: <clang-built-linux+bncBCX2JBVY5MBBB2FS677AKGQE7DJDYKQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x537.google.com (mail-pg1-x537.google.com [IPv6:2607:f8b0:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 02A862DEE31
	for <lists+clang-built-linux@lfdr.de>; Sat, 19 Dec 2020 11:43:54 +0100 (CET)
Received: by mail-pg1-x537.google.com with SMTP id f6sf3317272pgh.3
        for <lists+clang-built-linux@lfdr.de>; Sat, 19 Dec 2020 02:43:53 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608374632; cv=pass;
        d=google.com; s=arc-20160816;
        b=L1A/cVgZyHXDLwEgo5xFv1BwsODp9lzPWW8drHDvkOkzLgVvGZzP/jNIScWjSuGiRo
         0+MI4vP68DdEz+4vT4TlpLRVbjneFnm8DAH2+ATcnQoefLwvnh0UbUdNzurabPXMtBCs
         PyKgj60Yj63gmRZHlJ4eE/LSWsZtH/pI/kvIOTGGHDdOdWzHpVs/lDFQX/0xbpv6QZZA
         7yRrU1eDhIuuaGSKNHSmqhP93H+6EvWBKm48T6j5x4rUaeFGwHzJfvM2ogM1/j1umpoG
         fOi4zsGYB9SrCgRPe8dWLBeXVocEPKoIsnSD5HMzFIfDA8EADy3ntM6wWq4JLhWRuzgT
         VPPg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=09vxFQrr5P+16Lsbr34ZfYsLBJSxOpYciI/9aPVp/Mg=;
        b=itGIDIYclkIQpTM1ujQatbo9+L08EeYbtk9VITrSQP6wk2zpa5Ow6w3DCdQ0ceE8dB
         xrtYukJ0pyJbdq6pGNDkx96df/kq1vQyFSEagzoij0k5vdrV3HeCZtD7wdvMA1PhjH/Y
         vj1pyJcd3SIPu2kCcwRYtSJho/vKKhiQc4pYU4AbSt8OlnCmJe9JWd6ztXK5FsnymqW7
         5mlj5l2MB/xArp7Ndc03Kx/a5JKQYiCh6+WfstGZ0PTI6L/SGC3yRy7TiyXHqnt0Rckc
         hpe3ika2VFKFAVNe7TbmtlO1eVzIf6sbAod95eNklkv/ZneRIPiCi2je/XOBnPJssYtz
         jOfw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=09vxFQrr5P+16Lsbr34ZfYsLBJSxOpYciI/9aPVp/Mg=;
        b=tDqeSATiie59M60YnZjcSm12Vc/e1Zdwy7QzMODWKieduZBX8zxF7sSRXUIokhemNz
         WGR3sDQnX/LiI2mMBS1caO+OoWe9TGqgNTl2nVDUvBfXn/TLAieVIgiQeXVRH8RPTlfO
         MIu/dYZnxr6ayRwpJiAGAQJBIFVNC2VJ3JBGqnYY/8R4xsCDNXyKKPjm0XIh+ZqK6V+V
         jlzQRjyqFjdLt8GW89rhibf27yJl7nAG+hnVRKwKH88xk7lKPWqPvOep+41vIIqc1Mpz
         wymDxbZJyTuD0MlsCV0cKfPzUI3vL7liBPvx2L9N9LpWSqXoBzaKoJPaaPIxOFOD76G1
         8fCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=09vxFQrr5P+16Lsbr34ZfYsLBJSxOpYciI/9aPVp/Mg=;
        b=lne92pbIPL2R6bEvVAodMA6LCG3aICg+gxkmZRi24LcPc0+D/++XasfOObPeL12j/c
         s9uOnDRDKKM/TZ00CqPBM3WW+U2LfpFdH0eCmkP/by/NIB0WXtlQdA19KsV6bC1GlRwX
         TnKp6GVzjzMCWHPkdERnzgeGUR0PprcC6F1eSl8GOJ9j4klfxyqFpAwLeOCr6rJPzjvD
         7lcrYBdaFDvzRGavahCX/0tvuglOXzCuXrz0wC0EPEbFXrcaH5aPcHbJJsZGGITjNb0i
         ihLaFkZX8kgFzCisjzfikRfMXhkFGXaORDA2iPgx54+K1ivBpvs1BbPCWzGqLGDCD4PX
         HUDA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533k8e8FGsX4AV2KfPwkxlwm+V+fqcpUsbB3KL9ANndQwCCUpR5a
	V6uQv60I4OA9TSOa+lO4Xps=
X-Google-Smtp-Source: ABdhPJyh0ZCjekEhqIhXO15ILghXquhRpBvTRAfS2TuhGt6g5i+C5Ig+azxUYEaRjMJDFsSbNKlACw==
X-Received: by 2002:a63:5460:: with SMTP id e32mr7898758pgm.59.1608374632657;
        Sat, 19 Dec 2020 02:43:52 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:7d97:: with SMTP id y145ls13002037pfc.10.gmail; Sat, 19
 Dec 2020 02:43:52 -0800 (PST)
X-Received: by 2002:a65:6290:: with SMTP id f16mr7839148pgv.69.1608374632000;
        Sat, 19 Dec 2020 02:43:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608374631; cv=none;
        d=google.com; s=arc-20160816;
        b=gF64vr0kxoBqyXRRLknAmn6tncPMtVH+MltxOvD9Hymit7iO1bF3BbRfIvda7NkOoM
         1q0sR41fHr5J8G97oEMExVRxxnXRxYWsflvWgW58EiDWFuh14LTQ4RiIC/QZv/9G8a7b
         mVFCQgKRxkBl8m/2I3LFZblw8ceWJXDAugQctah2JqPpSOsl3uSBnyKqp0XfYVz/1pJP
         sJenBU4MLYT5udNS8gvwSMUxt7epQAg4TK7CaHgULp0SaHnsJUEcIBE6rSEYUAZ9Asp5
         UafzARz8+xneYaXrCmF58/jZYNuprV6tGxKxRMq1/TGjUQNY6/dAKgQOOsxrY76HTZvz
         Z0Fg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=8EqCakHo6EDZ3qz3Xsl9vZxSmUcbCpmrFWf5yhwMv/U=;
        b=STlvs65ggCqhUBL705MkzJLoBAhK1zldhBm9Aqc+Tne05+5aicDAnSOQvg350grOKr
         P9bZlnoNy5BWO6urObo1hLTGPZKYWxpD67cVC9ogqIS4rO5eR96gyHVi5iKlcQvsok+S
         AZF46Lyd3dPi3o6u0cyt/p7aUK1KZurx9nLrzqhge4cM7VrVKxFxTAo4okzjNFyEX8aW
         d6ZLL8ZPPu2Ef4SZVQ2ns9Mb3VltiWH2JymYWqCo6CsiMY+946FS9uDah+QeNh4OqTo3
         Pmn6G3aiRyIKBOoWl4fHDgMlA3kUpDJUoJw52+q65Di5cXMze5x65zSDxZaNiCRLo4Dw
         02JA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga02.intel.com (mga02.intel.com. [134.134.136.20])
        by gmr-mx.google.com with ESMTPS id mt17si708345pjb.0.2020.12.19.02.43.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 19 Dec 2020 02:43:51 -0800 (PST)
Received-SPF: pass (google.com: domain of philip.li@intel.com designates 134.134.136.20 as permitted sender) client-ip=134.134.136.20;
IronPort-SDR: CB8adaOqsvQ2wpiKbeI4F7VwDlT4ngZ7k2haSgLkfWbq0TtAE6vSpmtzwDEQbd+YcGRj8GDwob
 eha7dQSkiDHw==
X-IronPort-AV: E=McAfee;i="6000,8403,9839"; a="162617590"
X-IronPort-AV: E=Sophos;i="5.78,433,1599548400"; 
   d="scan'208";a="162617590"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Dec 2020 02:43:51 -0800
IronPort-SDR: Gw2l+Kjif+PdIAKFoQ8ZDUDsQjOl6EFF62BsljqoYjADWx+aW1DktgYYlF1eHENZ7DYDHrlFly
 /+EXcekv05mA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,433,1599548400"; 
   d="scan'208";a="371129306"
Received: from pl-dbox.sh.intel.com (HELO intel.com) ([10.239.159.39])
  by orsmga008.jf.intel.com with ESMTP; 19 Dec 2020 02:43:48 -0800
Date: Sat, 19 Dec 2020 18:40:06 +0800
From: Philip Li <philip.li@intel.com>
To: Pavel Machek <pavel@ucw.cz>
Cc: kernel test robot <lkp@intel.com>,
	kernel list <linux-kernel@vger.kernel.org>,
	Zheng Yongjun <zhengyongjun3@huawei.com>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com,
	Linux Memory Management List <linux-mm@kvack.org>
Subject: Re: [kbuild-all] Re: [linux-next:master 13538/13785]
 /tmp/metronomefb-846872.s:300: Error: unrecognized opcode `zext.b a2,a2'
Message-ID: <20201219104006.GA14905@intel.com>
References: <202012191403.y8Aomjpm-lkp@intel.com>
 <20201219075606.GA20870@amd>
 <20201219102820.GA14085@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201219102820.GA14085@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: philip.li@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of philip.li@intel.com designates 134.134.136.20 as
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

On Sat, Dec 19, 2020 at 06:28:20PM +0800, Philip Li wrote:
> On Sat, Dec 19, 2020 at 08:56:06AM +0100, Pavel Machek wrote:
> > Crazy robot, stop spamming. This report is obviously bogus, yet, you
> > sent me 5 copies.
> Thanks Pavel for input, sorry for the false positive. It tries to
> bisect error like below (the new error), but it may be related to
> assember support. We will adjust the system to not report this out
> wrongly. Kindly allow some time for us to resolving this.
> 
> > > >> /tmp/metronomefb-846872.s:300: Error: unrecognized opcode `zext.b a2,a2'
> 
> Thanks
> 
> > 
> > Whoever is responsible for this, please sign emails with your real
> > name!
This is Philip who maintains the 0-day ci, and lkp@intel.com is the
mailing list for the team here to be contacted.

> > 
> > 								Pavel
> > 
> > 
> > On Sat 2020-12-19 14:19:16, kernel test robot wrote:
> > > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> > > head:   0d52778b8710eb11cb616761a02aee0a7fd60425
> > > commit: f08fdc654a5940aa23259e1ed53ab0f401ca7068 [13538/13785] leds: ss4200: simplify the return expression of register_nasgpio_led()
> > > config: riscv-randconfig-r014-20201217 (attached as .config)
> > > compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project cee1e7d14f4628d6174b33640d502bff3b54ae45)
> > > reproduce (this is a W=1 build):
> > >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> > >         chmod +x ~/bin/make.cross
> > >         # install riscv cross compiling tool for clang build
> > >         # apt-get install binutils-riscv64-linux-gnu
> > >         # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=f08fdc654a5940aa23259e1ed53ab0f401ca7068
> > >         git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
> > >         git fetch --no-tags linux-next master
> > >         git checkout f08fdc654a5940aa23259e1ed53ab0f401ca7068
> > >         # save the attached .config to linux build tree
> > >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=riscv 
> > > 
> > > If you fix the issue, kindly add following tag as appropriate
> > > Reported-by: kernel test robot <lkp@intel.com>
> > > 
> > > Note: the linux-next/master HEAD 0d52778b8710eb11cb616761a02aee0a7fd60425 builds fine.
> > >       It may have been fixed somewhere.
> > > 
> > > All errors (new ones prefixed by >>):
> > > 
> > >    In file included from include/asm-generic/hardirq.h:17:
> > >    In file included from include/linux/irq.h:20:
> > >    In file included from include/linux/io.h:13:
> > >    In file included from arch/riscv/include/asm/io.h:149:
> > >    include/asm-generic/io.h:564:9: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
> > >            return inw(addr);
> > >                   ^~~~~~~~~
> > >    arch/riscv/include/asm/io.h:56:76: note: expanded from macro 'inw'
> > >    #define inw(c)          ({ u16 __v; __io_pbr(); __v = readw_cpu((void*)(PCI_IOBASE + (c))); __io_par(__v); __v; })
> > >                                                                            ~~~~~~~~~~ ^
> > >    arch/riscv/include/asm/mmio.h:88:76: note: expanded from macro 'readw_cpu'
> > >    #define readw_cpu(c)            ({ u16 __r = le16_to_cpu((__force __le16)__raw_readw(c)); __r; })
> > >                                                                                         ^
> > >    include/uapi/linux/byteorder/little_endian.h:36:51: note: expanded from macro '__le16_to_cpu'
> > >    #define __le16_to_cpu(x) ((__force __u16)(__le16)(x))
> > >                                                      ^
> > >    In file included from drivers/video/fbdev/metronomefb.c:28:
> > >    In file included from include/linux/interrupt.h:11:
> > >    In file included from include/linux/hardirq.h:10:
> > >    In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
> > >    In file included from include/asm-generic/hardirq.h:17:
> > >    In file included from include/linux/irq.h:20:
> > >    In file included from include/linux/io.h:13:
> > >    In file included from arch/riscv/include/asm/io.h:149:
> > >    include/asm-generic/io.h:572:9: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
> > >            return inl(addr);
> > >                   ^~~~~~~~~
> > >    arch/riscv/include/asm/io.h:57:76: note: expanded from macro 'inl'
> > >    #define inl(c)          ({ u32 __v; __io_pbr(); __v = readl_cpu((void*)(PCI_IOBASE + (c))); __io_par(__v); __v; })
> > >                                                                            ~~~~~~~~~~ ^
> > >    arch/riscv/include/asm/mmio.h:89:76: note: expanded from macro 'readl_cpu'
> > >    #define readl_cpu(c)            ({ u32 __r = le32_to_cpu((__force __le32)__raw_readl(c)); __r; })
> > >                                                                                         ^
> > >    include/uapi/linux/byteorder/little_endian.h:34:51: note: expanded from macro '__le32_to_cpu'
> > >    #define __le32_to_cpu(x) ((__force __u32)(__le32)(x))
> > >                                                      ^
> > >    In file included from drivers/video/fbdev/metronomefb.c:28:
> > >    In file included from include/linux/interrupt.h:11:
> > >    In file included from include/linux/hardirq.h:10:
> > >    In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
> > >    In file included from include/asm-generic/hardirq.h:17:
> > >    In file included from include/linux/irq.h:20:
> > >    In file included from include/linux/io.h:13:
> > >    In file included from arch/riscv/include/asm/io.h:149:
> > >    include/asm-generic/io.h:580:2: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
> > >            outb(value, addr);
> > >            ^~~~~~~~~~~~~~~~~
> > >    arch/riscv/include/asm/io.h:59:68: note: expanded from macro 'outb'
> > >    #define outb(v,c)       ({ __io_pbw(); writeb_cpu((v),(void*)(PCI_IOBASE + (c))); __io_paw(); })
> > >                                                                  ~~~~~~~~~~ ^
> > >    arch/riscv/include/asm/mmio.h:91:52: note: expanded from macro 'writeb_cpu'
> > >    #define writeb_cpu(v, c)        ((void)__raw_writeb((v), (c)))
> > >                                                              ^
> > >    In file included from drivers/video/fbdev/metronomefb.c:28:
> > >    In file included from include/linux/interrupt.h:11:
> > >    In file included from include/linux/hardirq.h:10:
> > >    In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
> > >    In file included from include/asm-generic/hardirq.h:17:
> > >    In file included from include/linux/irq.h:20:
> > >    In file included from include/linux/io.h:13:
> > >    In file included from arch/riscv/include/asm/io.h:149:
> > >    include/asm-generic/io.h:588:2: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
> > >            outw(value, addr);
> > >            ^~~~~~~~~~~~~~~~~
> > >    arch/riscv/include/asm/io.h:60:68: note: expanded from macro 'outw'
> > >    #define outw(v,c)       ({ __io_pbw(); writew_cpu((v),(void*)(PCI_IOBASE + (c))); __io_paw(); })
> > >                                                                  ~~~~~~~~~~ ^
> > >    arch/riscv/include/asm/mmio.h:92:76: note: expanded from macro 'writew_cpu'
> > >    #define writew_cpu(v, c)        ((void)__raw_writew((__force u16)cpu_to_le16(v), (c)))
> > >                                                                                      ^
> > >    In file included from drivers/video/fbdev/metronomefb.c:28:
> > >    In file included from include/linux/interrupt.h:11:
> > >    In file included from include/linux/hardirq.h:10:
> > >    In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
> > >    In file included from include/asm-generic/hardirq.h:17:
> > >    In file included from include/linux/irq.h:20:
> > >    In file included from include/linux/io.h:13:
> > >    In file included from arch/riscv/include/asm/io.h:149:
> > >    include/asm-generic/io.h:596:2: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
> > >            outl(value, addr);
> > >            ^~~~~~~~~~~~~~~~~
> > >    arch/riscv/include/asm/io.h:61:68: note: expanded from macro 'outl'
> > >    #define outl(v,c)       ({ __io_pbw(); writel_cpu((v),(void*)(PCI_IOBASE + (c))); __io_paw(); })
> > >                                                                  ~~~~~~~~~~ ^
> > >    arch/riscv/include/asm/mmio.h:93:76: note: expanded from macro 'writel_cpu'
> > >    #define writel_cpu(v, c)        ((void)__raw_writel((__force u32)cpu_to_le32(v), (c)))
> > >                                                                                      ^
> > >    In file included from drivers/video/fbdev/metronomefb.c:28:
> > >    In file included from include/linux/interrupt.h:11:
> > >    In file included from include/linux/hardirq.h:10:
> > >    In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
> > >    In file included from include/asm-generic/hardirq.h:17:
> > >    In file included from include/linux/irq.h:20:
> > >    In file included from include/linux/io.h:13:
> > >    In file included from arch/riscv/include/asm/io.h:149:
> > >    include/asm-generic/io.h:1005:55: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
> > >            return (port > MMIO_UPPER_LIMIT) ? NULL : PCI_IOBASE + port;
> > >                                                      ~~~~~~~~~~ ^
> > >    7 warnings generated.
> > >    /tmp/metronomefb-846872.s: Assembler messages:
> > > >> /tmp/metronomefb-846872.s:300: Error: unrecognized opcode `zext.b a2,a2'
> > > >> /tmp/metronomefb-846872.s:313: Error: unrecognized opcode `zext.b a5,a6'
> > > >> /tmp/metronomefb-846872.s:350: Error: unrecognized opcode `zext.b a3,a3'
> > > >> /tmp/metronomefb-846872.s:371: Error: unrecognized opcode `zext.b a4,a4'
> > >    /tmp/metronomefb-846872.s:409: Error: unrecognized opcode `zext.b a2,a2'
> > > >> /tmp/metronomefb-846872.s:433: Error: unrecognized opcode `zext.b s1,t1'
> > > >> /tmp/metronomefb-846872.s:521: Error: unrecognized opcode `zext.b a1,a1'
> > >    clang-12: error: assembler command failed with exit code 1 (use -v to see invocation)
> > > 
> > > ---
> > > 0-DAY CI Kernel Test Service, Intel Corporation
> > > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> > 
> > 
> > 
> > -- 
> > http://www.livejournal.com/~pavelmachek
> 
> 
> 
> > _______________________________________________
> > kbuild-all mailing list -- kbuild-all@lists.01.org
> > To unsubscribe send an email to kbuild-all-leave@lists.01.org
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201219104006.GA14905%40intel.com.
