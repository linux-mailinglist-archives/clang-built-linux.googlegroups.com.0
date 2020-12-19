Return-Path: <clang-built-linux+bncBCX2JBVY5MBBB7NB7L7AKGQEW3EKE5A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83b.google.com (mail-qt1-x83b.google.com [IPv6:2607:f8b0:4864:20::83b])
	by mail.lfdr.de (Postfix) with ESMTPS id 106922DF244
	for <lists+clang-built-linux@lfdr.de>; Sun, 20 Dec 2020 00:47:11 +0100 (CET)
Received: by mail-qt1-x83b.google.com with SMTP id c14sf4589100qtn.5
        for <lists+clang-built-linux@lfdr.de>; Sat, 19 Dec 2020 15:47:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608421630; cv=pass;
        d=google.com; s=arc-20160816;
        b=MSTUmtp4XCCeBAJqCMkw3H5VS7jApHb8YZNVFN2WLUEgCJ1C2iCwQlNTa89cg+KOSz
         t7Nw+L4R7HTiaH6JgxJvaaGgqzbM/uB2b51Qa1ofr+wDvGDqXe9gT226KFPSgF4fPPyN
         qXYfVvCxhXx+zJ3R2xznfPNRvrdDYmLaNM+S0ek4Oys1KHqOFC32tYXBw9Fj46ECKUtl
         /A2CCcWb2HKGeE9C00jPefKKgD/sKrA17AlXg6GkQCLaZMolSJqZvYaUgnCZGM4xeSCV
         YsXMZSVCWRGu5/Oi7x7SHgjmuCdpyFmQ1AebXhpr1pruFIOLAa/yV4R4OcbVpRRyxv7F
         3nZA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=NNhD6jLkVCjZfXZA2LLuecuR1NpKpHlL+eDsyFSfgwo=;
        b=AZpFwg6lMcutASU8lh2JmT65DWb97WfkI21n02mQibEZBesPOM5QAJt+PRbaW7dAB9
         PlLjs/RoJ7CsOBAhg8AD/3ZiARx/dNkXOlVDc9NUVc9VZivBbfT6MFI8w3dblrcPvBq2
         Va6f3HMnUbGEAybfrnTCXMrYyztVRuKFkIZD8OwwVffHW2V7pr0l+7OX4PRnOGz3v0eQ
         QvY5CL6N3jS+H8+cDm+4tDJX1cEOBV4LNlvpM2eJJzG91xcAMmceY5tBuPjbAkCQrL30
         jM5uHleAxXgiamLoMAOosGmV6L+f6AiCDSzSDoN6mglQydNcGM1EFyacuIv2QaLAAQgN
         abdw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NNhD6jLkVCjZfXZA2LLuecuR1NpKpHlL+eDsyFSfgwo=;
        b=cdCmNzw/dmhfRaSyMxs6C8r6UE17ln0yGqls0H7UKwBEEN7cWlr6beNWaDXzModYOi
         +s6LTP7gF3KEPePIrIWkdW/rtgkiAGSMtlGhqOAhN9qzxgqfa12rP2PXFNqyimyYMlJs
         Rtmy5TJpiUqpnvemxl/NkgqM25T2oceceepJQM7UgRdhGDRisJtAwDX7gwPg3P01qG/W
         V0tuJEzFnUJzq+0An7Xnj1QOMGso2eIQW4K/E4hrmstLE4gMwh90d/qBR5Ex1XToy/ho
         jCrgYUW+Z9zO7MGY4UsSQT0mvhoQbN0praLRJKBzeu4RFSEDARZedjL18I5zn9SOheXD
         7SuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NNhD6jLkVCjZfXZA2LLuecuR1NpKpHlL+eDsyFSfgwo=;
        b=GBJxpuHVkQRUB0D8uFJAnvIn8D8Aj/0uoaVaCmZO6MSC7zb63S9AxVz/eZyR6kdf6X
         R/3bHcemgncdrwTHWZsDI8vL5yKDV+kpYH/9beUiz4CIfVkWDzhy4LfBgyQqOv3dCijd
         eWGDJxD/kjpHEJgqdwiQFKFXyz7TDF6zhyXKyDd0C19aJ5sJMVQKYbWISaykuC6qO0i+
         yO0d4DR5BG72iKQY/zFMqySmTGXUJhV6rvSvGRVQNzaoqvt3Wl1G0sqFY64VWYjkHF60
         WHXb0CjwcjBbxbJzJ+GEOtVeWi9vzWc/De/9V3klzn8t/qzhUOo2IyNcoHM8nO0BogNb
         Kpiw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5306rPnuZ/4Sgd/ACXTX7JA7351aAEvF083VCRrpfmucyFawT1Wa
	CAU526r7opxEQJbSUsw2QD4=
X-Google-Smtp-Source: ABdhPJyizaaDmx6wxdJ5Tj417s1FUxWATtLrd3u43RZal+gWmIa9f15i/dM6eDQZYJ1G7ulSQx3YVQ==
X-Received: by 2002:a05:620a:227:: with SMTP id u7mr11741932qkm.256.1608421630035;
        Sat, 19 Dec 2020 15:47:10 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:3824:: with SMTP id q33ls10403147qtb.2.gmail; Sat, 19
 Dec 2020 15:47:09 -0800 (PST)
X-Received: by 2002:ac8:4e87:: with SMTP id 7mr10965783qtp.310.1608421629614;
        Sat, 19 Dec 2020 15:47:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608421629; cv=none;
        d=google.com; s=arc-20160816;
        b=WDrraVmisAuIsdrycdZn/GNgqI4Hx8ExZ+PQNepllZEKq9A8r7MUGqhl7EM6fwFk0l
         GUHXBN7/EWsPoWkxMU7tT6xB2frHIc+JGGfwy5jYi2dMjcs7hBTyZ58JCYPM1xj1cO7r
         LSithhLiUR8zGx4RYglxkZOJYofymhQ/jX26Fb+tBzOsGqmGF9QLRnkbIM1BbgRZm2qY
         D4+4Q9rgFX5w9sELRaba0IIU9v28LfpM1jtqUThptyrq80wneYCoHDlW/PqnJeGUkt+n
         7fM5vLJ/+PJU1XZvw0CoMTBKM78GgUs+Z4ErocXzTbYU9cHksGlZWVVJ7gy6pEmJTXiy
         ZWsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=/tM9YkBsGEYeCiXOEpZ63rybidz2zxp2DuBvzsirMZI=;
        b=efzeUNoggDcC1KW67dJxtmcLF7QmAQpr+pDG5r6gt9NUpaJprIlDCTQaUUBMTH+SVm
         SYxULYkuhm62os2i/YT02BUecuLmlv7Mj04YM1w/+Wg/NnRCpkOBOkMwiU2H3BgNXs4k
         PNl+2j0cTff/6UMGjaFqMEUvPWBNZoh5K0NDYerzSfoUxu/JgeAUg9LHJCx3LTzmNERB
         A65ODk9dkQx6ITic1N112lIwi2zJwzglOCaF/uuNnn//fbB9pztSfoIw88e6CJaioPin
         pU33fRuhSQV7LdpbMwlB+Bxsn3MRgnx3xMs01dU6yV1X1GfYrJceLQEc4BvZvwmWbk4j
         4gHw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga14.intel.com (mga14.intel.com. [192.55.52.115])
        by gmr-mx.google.com with ESMTPS id f16si1062510qkg.3.2020.12.19.15.47.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 19 Dec 2020 15:47:09 -0800 (PST)
Received-SPF: pass (google.com: domain of philip.li@intel.com designates 192.55.52.115 as permitted sender) client-ip=192.55.52.115;
IronPort-SDR: UqGBPuuWeX+5kGyqQ464kZ0/4cBQG1uE7YtCXd0pAZhu0ucWC2SVzH0HjuiLwG9XuUJKTphcA9
 IbpLi+g2sKDQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9839"; a="174830812"
X-IronPort-AV: E=Sophos;i="5.78,433,1599548400"; 
   d="scan'208";a="174830812"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Dec 2020 15:47:08 -0800
IronPort-SDR: KWz55kbXuf+t/Brwm16Gw7fwe00QHcd+9fD+kvGRgbEg/hnLfmxyzbqT+JTd3Goi78irPyv3HX
 Ru3X1Wi136Hw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,433,1599548400"; 
   d="scan'208";a="395010370"
Received: from pl-dbox.sh.intel.com (HELO intel.com) ([10.239.159.39])
  by FMSMGA003.fm.intel.com with ESMTP; 19 Dec 2020 15:47:05 -0800
Date: Sun, 20 Dec 2020 07:43:24 +0800
From: Philip Li <philip.li@intel.com>
To: kernel test robot <lkp@intel.com>
Cc: Luben Tuikov <luben.tuikov@amd.com>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com,
	Linux Memory Management List <linux-mm@kvack.org>,
	Alex Deucher <alexander.deucher@amd.com>,
	Souptick Joarder <jrdr.linux@gmail.com>
Subject: Re: [kbuild-all] [linux-next:master 5576/13785]
 /tmp/clk-cdce925-041827.s:1150: Error: unrecognized opcode `zext.b a1,s2'
Message-ID: <20201219234324.GD3505@intel.com>
References: <202012190608.fJM14huA-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202012190608.fJM14huA-lkp@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: philip.li@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of philip.li@intel.com designates 192.55.52.115 as
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

On Sat, Dec 19, 2020 at 06:50:23AM +0800, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> head:   0d52778b8710eb11cb616761a02aee0a7fd60425
> commit: b1246bd4a18b50c0f424a877ab64605ce8ebad86 [5576/13785] drm/amdgpu: Fix missing prototype warning
> config: riscv-randconfig-r022-20201217 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project cee1e7d14f4628d6174b33640d502bff3b54ae45)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install riscv cross compiling tool for clang build
>         # apt-get install binutils-riscv64-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=b1246bd4a18b50c0f424a877ab64605ce8ebad86
>         git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
>         git fetch --no-tags linux-next master
>         git checkout b1246bd4a18b50c0f424a877ab64605ce8ebad86
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=riscv 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
Hi Luben, kindly ignore this false positive report.

Thanks

> 
> Note: the linux-next/master HEAD 0d52778b8710eb11cb616761a02aee0a7fd60425 builds fine.
>       It may have been fixed somewhere.
> 
> All errors (new ones prefixed by >>):
> 
>    In file included from drivers/clk/clk-cdce925.c:18:
>    In file included from include/linux/regmap.h:20:
>    In file included from include/linux/iopoll.h:14:
>    In file included from include/linux/io.h:13:
>    In file included from arch/riscv/include/asm/io.h:149:
>    include/asm-generic/io.h:556:9: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            return inb(addr);
>                   ^~~~~~~~~
>    arch/riscv/include/asm/io.h:55:76: note: expanded from macro 'inb'
>    #define inb(c)          ({ u8  __v; __io_pbr(); __v = readb_cpu((void*)(PCI_IOBASE + (c))); __io_par(__v); __v; })
>                                                                            ~~~~~~~~~~ ^
>    arch/riscv/include/asm/mmio.h:87:48: note: expanded from macro 'readb_cpu'
>    #define readb_cpu(c)            ({ u8  __r = __raw_readb(c); __r; })
>                                                             ^
>    In file included from drivers/clk/clk-cdce925.c:18:
>    In file included from include/linux/regmap.h:20:
>    In file included from include/linux/iopoll.h:14:
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
>    In file included from drivers/clk/clk-cdce925.c:18:
>    In file included from include/linux/regmap.h:20:
>    In file included from include/linux/iopoll.h:14:
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
>    In file included from drivers/clk/clk-cdce925.c:18:
>    In file included from include/linux/regmap.h:20:
>    In file included from include/linux/iopoll.h:14:
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
>    In file included from drivers/clk/clk-cdce925.c:18:
>    In file included from include/linux/regmap.h:20:
>    In file included from include/linux/iopoll.h:14:
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
>    In file included from drivers/clk/clk-cdce925.c:18:
>    In file included from include/linux/regmap.h:20:
>    In file included from include/linux/iopoll.h:14:
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
>    In file included from drivers/clk/clk-cdce925.c:18:
>    In file included from include/linux/regmap.h:20:
>    In file included from include/linux/iopoll.h:14:
>    In file included from include/linux/io.h:13:
>    In file included from arch/riscv/include/asm/io.h:149:
>    include/asm-generic/io.h:1005:55: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            return (port > MMIO_UPPER_LIMIT) ? NULL : PCI_IOBASE + port;
>                                                      ~~~~~~~~~~ ^
>    7 warnings generated.
>    /tmp/clk-cdce925-041827.s: Assembler messages:
> >> /tmp/clk-cdce925-041827.s:1150: Error: unrecognized opcode `zext.b a1,s2'
> >> /tmp/clk-cdce925-041827.s:1207: Error: unrecognized opcode `zext.b a5,a6'
> >> /tmp/clk-cdce925-041827.s:1255: Error: unrecognized opcode `zext.b a1,a0'
> >> /tmp/clk-cdce925-041827.s:1333: Error: unrecognized opcode `zext.b s3,s2'
> >> /tmp/clk-cdce925-041827.s:1335: Error: unrecognized opcode `zext.b a2,s5'
> >> /tmp/clk-cdce925-041827.s:2162: Error: unrecognized opcode `zext.b a2,s2'
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201219234324.GD3505%40intel.com.
