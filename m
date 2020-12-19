Return-Path: <clang-built-linux+bncBCX2JBVY5MBBBINC7L7AKGQEU4M5VZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13f.google.com (mail-il1-x13f.google.com [IPv6:2607:f8b0:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id E1B1C2DF245
	for <lists+clang-built-linux@lfdr.de>; Sun, 20 Dec 2020 00:47:46 +0100 (CET)
Received: by mail-il1-x13f.google.com with SMTP id q2sf5867597ilt.20
        for <lists+clang-built-linux@lfdr.de>; Sat, 19 Dec 2020 15:47:46 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608421666; cv=pass;
        d=google.com; s=arc-20160816;
        b=kK3jSno4eVaIV+xvJZFoOP6fXkmcAnNy5mzqJM4a5Usq5ZGjabet3t+7i1aPxbvHoG
         T4MpfGsMtttoSzVkcw2drtE4PIhy5VtZSLOHQafchElQA5/prlAD7adK+6s+s1ZvbkHu
         9izhAD1ECMDFLlJkcB48eJ9xSBLTxoBMNM3IR8vNYxtZZuW6PbEGxOYcq5ewPF7RWRQv
         oDgUZyeZuIn0SNmSqE+Nv/MjQQjgJeKVR/q3H5BfPAJ3PKjqzMPf3jkfy6DU4LUJeCg9
         YYUzblFEKlljutjMIQn76zroOJ9U6xQ+oXGKo4u62ismcmhG04rVjuLt5P/hQGPYudHJ
         HEJA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=cu21Je2KcQ1ZlvuxFAhutImIuxKZmhJg3i/f04wWvwE=;
        b=HuUXOunHXG2s9Oho3ueJaIPHQQjpMeTwOSPfyHeiFhHwHJ0Ol19oRrPRdp1mjs3QwS
         gWVaA8tU5NE4cDKa38dfhg/bvWbdhqSrPiKMBBHMH4aw/RWJp7a0K7IQ0B3fKuZpBheT
         +KbJpY3QuhUn+KgFBmD7LbVWq3Qt0VT/Nuz93z21bYDKr56fnaYC8+eaQDMxfbZ1cW+Y
         kDh9LTxgtAYSJn5SNdvtqEvFbwA9YWuuNUqzBlwn5QXfb1DKFyz14HkEKGIjIU0Ckh20
         uPDXFzeOH3Ncec0B1LIQKU0/clSxvSWz8SMcyD6UZkqf2eA73ze9eyXKxn1v9PNCIEDR
         Q7Eg==
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
        bh=cu21Je2KcQ1ZlvuxFAhutImIuxKZmhJg3i/f04wWvwE=;
        b=etzs9MSDRYTZFMyKhD82zP/bhRVhnGXcd6T2l4MoH3mQabqURsn9vHwlVhqt0xdG/G
         Fnbrm+yoMYcTaW0EvNn1+v5vfXQiG4VHgV6k0q7AyRM1hnZ2XFGs9YfFhimMQGYw/pqc
         L4GdlKschHTulO5dALtii02BYc1+zzCbD8d4RXg7D7A3f7ndqW0isq16ZK9INwY7WZ1h
         ISMPVQGocMz1bdm46rkUtoizWyi2BSe8XzeCzkAdb84fd3ebEH/IWpVvZ+74O9YEA/d8
         ojFQi/sc/FqBA3JvYWnZyDW5g/j7weIwaEvlXpTzN/T50ykFpLqB2gLqpb0f20OekG/V
         02zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cu21Je2KcQ1ZlvuxFAhutImIuxKZmhJg3i/f04wWvwE=;
        b=aTWsj65LOL8YHr8ZOCPAgcGkHEtzKLMCpOuN4azKIK6gmwIMfzrUX7CfbRanCpmM21
         /TZWdhf4TIxpVhbOTxZB2I5nT/Vk4sSuFEB/JKz6pnvqcFiYekF+X6azedbajMOHIrnb
         lxZ4G/cEA9OMz8G19BfMfI558/ZcPDZiBZRA6JUoWaSsVZ9DxUMnHAd3m9KKBc3gHWwd
         IxZRqpLRRvResSCUTjrZYBFiISz+CsuVwqf749ge6hYXoBXQlOPkF37fTmdozCdDqXBY
         nTqRwqguLf+YgufBN1OIGpYhqp7dZFGgiCk5kqaJdhCRZvRTtDi5y5d7ngmUCdP/GS5J
         ul2Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531B86qHUlA+6UVxQIpg4E+ph+5wJToNXavmdwNyzYEUwy8PEioj
	MUXjhPA/1vlss5k0E0Elj0g=
X-Google-Smtp-Source: ABdhPJzwq/2S9tmoxYLsiJi3dlKyTKPwazRsTx8DmbezYMMd98fQipKfkH44RSwmhQeJMky8wLUiAw==
X-Received: by 2002:a02:a60a:: with SMTP id c10mr9613058jam.123.1608421665784;
        Sat, 19 Dec 2020 15:47:45 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:2681:: with SMTP id o1ls4157623jat.3.gmail; Sat, 19
 Dec 2020 15:47:45 -0800 (PST)
X-Received: by 2002:a05:6638:ccd:: with SMTP id e13mr9838621jak.140.1608421665371;
        Sat, 19 Dec 2020 15:47:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608421665; cv=none;
        d=google.com; s=arc-20160816;
        b=Wc29suzXWU4eyEQBpY7U9iD1uDeXyT06z46uZaIZGzUDj+W7RzS2Jw8BS65TtbRKMz
         yGy1NwpwdDy2S5SWDhz3QKL5Dq/le60AlAMYCQLdiZI2LURF1vIcM2xcZqw2SZ3zyDKi
         n7b0DtXWRehZoZCqYakPNct86t5T+6aM/6+v5OizX3eFwIj8Eol13UWcpw5fUQbIJ4ot
         +geo7VganyV4Bha6ehfho1Pyc+6SwvPT3iLUyreYgRTVnpe7CcAeSGhSujoU6sxL+m2n
         0coz7GQ42rzPmURug2bFlLv8FtCaWIrTAgSHdYeHLZD+XkHV/g97/ZokvczCUJwdJEA0
         kf5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=W/RWwDZdaFSse+Ytj6hObrv9Uz1Sxsu3jjnrgOTC35E=;
        b=a2w4H7IExaoxna6SPF3JJM7vMqY12jcOQYzBh5yq0jCgCqz0H0uoqeCrHr1JO1gUcp
         jezq6Cq4Ly5JpDCGeK1JZitRliwCFngv4eOrtq5jofYZ2X7N6s+jcPl4gwfmEybfm44A
         2llpABOEmtDSeUQeXVNRy9n2VnQmflD903PBzGUrpVWKWQwidwucQGkAUXAx7kJp4j36
         KbLZhUIwICd+f0+HwhY+9D1HRIL6O1iak7Fwg4ckJE1V5OafjHM+vrDB03q2Hsr1Q268
         BBD+Rxl6va4ACpCK+kWt/JyaT+L1L9BwQ2OG8baGpzHwkeg6Dj/KIKClBilOU5NlzeGD
         +jNg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga12.intel.com (mga12.intel.com. [192.55.52.136])
        by gmr-mx.google.com with ESMTPS id q4si905983iog.3.2020.12.19.15.47.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 19 Dec 2020 15:47:45 -0800 (PST)
Received-SPF: pass (google.com: domain of philip.li@intel.com designates 192.55.52.136 as permitted sender) client-ip=192.55.52.136;
IronPort-SDR: k8p2DAC/YIA6bbr9jzHBzvapWF8MexSy1YCWPg0Qr0oL1wv1im+tFakAZ+2bnjwYsznprC2Ff2
 ULIVz2oubBiQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9840"; a="154821723"
X-IronPort-AV: E=Sophos;i="5.78,433,1599548400"; 
   d="scan'208";a="154821723"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Dec 2020 15:47:37 -0800
IronPort-SDR: iOwlp9RUbbZmRz4Mi2d8/49y8UZP+/SYQGlxmrVKvDoVhMTF5y1chnE9clQCVewvSb7nhEScDg
 slgQVgGHGlSw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,433,1599548400"; 
   d="scan'208";a="559277056"
Received: from pl-dbox.sh.intel.com (HELO intel.com) ([10.239.159.39])
  by orsmga005.jf.intel.com with ESMTP; 19 Dec 2020 15:47:34 -0800
Date: Sun, 20 Dec 2020 07:43:53 +0800
From: Philip Li <philip.li@intel.com>
To: kernel test robot <lkp@intel.com>
Cc: Gioh Kim <gi-oh.kim@cloud.ionos.com>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com, Jens Axboe <axboe@kernel.dk>,
	Jack Wang <jinpu.wang@cloud.ionos.com>
Subject: Re: [kbuild-all] [block:block-5.11 6/15] /tmp/core-555936.s:425:
 Error: unrecognized opcode `zext.b s4,s1'
Message-ID: <20201219234353.GE3505@intel.com>
References: <202012190816.kGUoEGJo-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202012190816.kGUoEGJo-lkp@intel.com>
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

On Sat, Dec 19, 2020 at 08:37:25AM +0800, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/axboe/linux-block.git block-5.11
> head:   71425189b2b75336d869cfdedea45c9d319fc9c9
> commit: 512c781fd28cb401ee9f2843e32bf4640732c671 [6/15] block/rnbd: Set write-back cache and fua same to the target device
> config: riscv-randconfig-r014-20201217 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project cee1e7d14f4628d6174b33640d502bff3b54ae45)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install riscv cross compiling tool for clang build
>         # apt-get install binutils-riscv64-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/axboe/linux-block.git/commit/?id=512c781fd28cb401ee9f2843e32bf4640732c671
>         git remote add block https://git.kernel.org/pub/scm/linux/kernel/git/axboe/linux-block.git
>         git fetch --no-tags block block-5.11
>         git checkout 512c781fd28cb401ee9f2843e32bf4640732c671
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=riscv 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
Hi Gioh, kindly ignore this false positive report.

Thanks

> 
> Note: the block/block-5.11 HEAD 71425189b2b75336d869cfdedea45c9d319fc9c9 builds fine.
>       It only hurts bisectibility.
> 
> All errors (new ones prefixed by >>):
> 
>    /tmp/core-555936.s: Assembler messages:
>    /tmp/core-555936.s:422: Error: unrecognized opcode `zext.b a1,a0'
> >> /tmp/core-555936.s:425: Error: unrecognized opcode `zext.b s4,s1'
>    /tmp/core-555936.s:453: Error: unrecognized opcode `zext.b a1,a0'
>    /tmp/core-555936.s:457: Error: unrecognized opcode `zext.b s4,s1'
>    /tmp/core-555936.s:503: Error: unrecognized opcode `zext.b a1,a0'
>    /tmp/core-555936.s:529: Error: unrecognized opcode `zext.b a1,s6'
>    /tmp/core-555936.s:795: Error: unrecognized opcode `zext.b a1,a0'
>    /tmp/core-555936.s:821: Error: unrecognized opcode `zext.b a1,s5'
> >> /tmp/core-555936.s:847: Error: unrecognized opcode `zext.b s5,s7'
>    clang-12: error: assembler command failed with exit code 1 (use -v to see invocation)
> --
>    In file included from include/asm-generic/hardirq.h:17:
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
>    In file included from drivers/input/rmi4/rmi_smbus.c:11:
>    In file included from include/linux/interrupt.h:11:
>    In file included from include/linux/hardirq.h:10:
>    In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
>    In file included from include/asm-generic/hardirq.h:17:
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
>    In file included from drivers/input/rmi4/rmi_smbus.c:11:
>    In file included from include/linux/interrupt.h:11:
>    In file included from include/linux/hardirq.h:10:
>    In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
>    In file included from include/asm-generic/hardirq.h:17:
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
>    In file included from drivers/input/rmi4/rmi_smbus.c:11:
>    In file included from include/linux/interrupt.h:11:
>    In file included from include/linux/hardirq.h:10:
>    In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
>    In file included from include/asm-generic/hardirq.h:17:
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
>    In file included from drivers/input/rmi4/rmi_smbus.c:11:
>    In file included from include/linux/interrupt.h:11:
>    In file included from include/linux/hardirq.h:10:
>    In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
>    In file included from include/asm-generic/hardirq.h:17:
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
>    In file included from drivers/input/rmi4/rmi_smbus.c:11:
>    In file included from include/linux/interrupt.h:11:
>    In file included from include/linux/hardirq.h:10:
>    In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
>    In file included from include/asm-generic/hardirq.h:17:
>    In file included from include/linux/irq.h:20:
>    In file included from include/linux/io.h:13:
>    In file included from arch/riscv/include/asm/io.h:149:
>    include/asm-generic/io.h:1005:55: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            return (port > MMIO_UPPER_LIMIT) ? NULL : PCI_IOBASE + port;
>                                                      ~~~~~~~~~~ ^
>    7 warnings generated.
>    /tmp/rmi_smbus-578663.s: Assembler messages:
> >> /tmp/rmi_smbus-578663.s:254: Error: unrecognized opcode `zext.b s7,a0'
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201219234353.GE3505%40intel.com.
