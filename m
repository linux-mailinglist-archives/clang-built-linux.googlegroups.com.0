Return-Path: <clang-built-linux+bncBCX2JBVY5MBBBZNA7L7AKGQEGDAT2BI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103a.google.com (mail-pj1-x103a.google.com [IPv6:2607:f8b0:4864:20::103a])
	by mail.lfdr.de (Postfix) with ESMTPS id AC50E2DF240
	for <lists+clang-built-linux@lfdr.de>; Sun, 20 Dec 2020 00:44:38 +0100 (CET)
Received: by mail-pj1-x103a.google.com with SMTP id c21sf4363778pjr.8
        for <lists+clang-built-linux@lfdr.de>; Sat, 19 Dec 2020 15:44:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608421477; cv=pass;
        d=google.com; s=arc-20160816;
        b=kcWw3PEqUJQXpTnzILKYhPRQwfAAOUAZ4d+32/yuzP6mUSPwYifa+2fXbOnQVIjqVx
         cpO0z9rzSWokUq03hUvzId+NwQIHA1JL37Ht+kRcdhjqocAw7YqwWsRAxlxT9OAhO61i
         of1ZBu5axXw5A9hOwOGmTguFlf4XOPYXX0PWhB/FsqjzGQxWTJDATwub1NMEVS084Lmg
         29ZAjw5PZwU2X1mSBR1d9v68KI31SIVJ9IozM7SUrnE2L7W7d9a50BRmuf28qReN9wXk
         4SvZrUZlJ9fCfljissbxoIxMc/E0VPhooogmO83SMukxGEqtIC39Tx+FqbhTmpQqXWXb
         q6wQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=SJHrE78qoNwlsm6YSzvRMDijFHIpByHEdpVI0mCacEo=;
        b=yMmKi0qD9Lm9W0nTLH6OBO3K2LNyRd7pwH8edInfU86QN55maOeObGyKsqszTTHPIP
         faZG0xB313CYEnmEdJmnKtA7iqice1nAo0hWY1OgdgQeZcI5kGlZU/sd0fLfkW8yIEuE
         wpbMgZYU03XsKz59jULAB5Q5rbtAhchDjGcn5mX4u0Zroir3RVIQCJxM6PeluRwyS4MT
         E4PUudKPNTWc0SlrwQseU3Fk8IBEZtzKorDjfqA/qrx7YLo8FsG1Q1YgRpm/H54OopfD
         k33C6MGAYjQPc6JgxET//t5C6jHeVFVYpoaoUXO5m55BEP6JYiXXc3YyShfTFg9E37qL
         mYfw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SJHrE78qoNwlsm6YSzvRMDijFHIpByHEdpVI0mCacEo=;
        b=ZAZ8oSD8XdM7IFqCBkxMsQi5dnGVQGfVzr2J8N37xSHnkgrEkJzhWKnmv5mWTctxBK
         iL/2j85wQ7/tA3Gp/u2+VeHFdaByv1BaN2/U3a6CESBml/J+8CCTmGRoe19cty2aynXs
         2hlbjtR8dmPwl42wN3Q/ut3P5XbICHhrgNJb+tJAx/vwuRWwpWlLuwEzLz7YwdnhTSeO
         v91KyY5NgNMfWcP8kxFoqrVIDxEm31rY8KvCbcJuvAtmTHpvdw1KvulbIxbj3/cT4+lE
         BgJRtNhxCPG0jYYZ2Hg2Lxn1T6YNAYeH7Dw/7fzMuPKJ7AjyjaL0PLH50+aS3EWFbIC7
         DbSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SJHrE78qoNwlsm6YSzvRMDijFHIpByHEdpVI0mCacEo=;
        b=oZC2HJLZyUCXkxPn5ArodXQ+qeVcCGeUiFNxg8eeYD6e3TDgBJiu0ftNjn3f5oJNUU
         M0iY5PQcaHbKMny3O/BhHapwAQqrANl/JodR1XH7CJ82LNiaBSoo727Lff1qykAHhLOL
         kY41WveqJVFhonluvEDpABaLmdvocLMsI6miIqIXdN6Alk6DpoQnC2l3SMN4HSsqN1A5
         RDROYf6I/79I0qlhzJecuVvcu/xwksg5vJAl4Xd67lUdXPZH87SAUfLn6IzVZTWGM4it
         ppzPrasHB9Y9EombQmNiPhFLdH+2ZQkvQTnP9IPL1qA3EU+ba1IHkYMwTPQDoP/NEqwp
         KohQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532LqMuABNNhv1sh99P5x+vWJMKotMTSOq+TGcJWP3cL+rYst/a/
	iCp/dTgFQj6XYcP2B0Kc2oI=
X-Google-Smtp-Source: ABdhPJyjHx52TCaaUtYIfvK0xzYg3oiC7aqcWtmlWGqSDhYV1fO9rgnZ65u4PreZavbsOJee6mEwmQ==
X-Received: by 2002:a62:543:0:b029:19e:5627:1c4d with SMTP id 64-20020a6205430000b029019e56271c4dmr10085805pff.31.1608421477142;
        Sat, 19 Dec 2020 15:44:37 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:a510:: with SMTP id v16ls8579646pfm.11.gmail; Sat, 19
 Dec 2020 15:44:36 -0800 (PST)
X-Received: by 2002:a63:752:: with SMTP id 79mr9626858pgh.272.1608421476458;
        Sat, 19 Dec 2020 15:44:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608421476; cv=none;
        d=google.com; s=arc-20160816;
        b=gJgZleuNQN0nC3qt+V+NsQvRqBqwyr/d0xg3VE52ozWNx/X49rr3nifbZZ5aj6ZKox
         adOVgQZPKo0ocxiw6IsbLrL1HwIf7Xy2oOSdEaM2yst16P2lY3/zVVQOvJl4Zgv3MQNS
         doQneX8EZgy1e5DUM0gYG52x/rMvrXkMIjI98zc1nhCt4dhKjDJ5m3T/KHyIiRy7WSOC
         lSYQFdULV5ySL2cvZD4hpYaMtoivNK9X3r8r1VmVaVnC8cfG9S414hmC7SzVJca5XCuQ
         zgfCiSIo/hKscm71kZ1WlqBoTkg49X9vyo80/5r/VRohXtP9nlXPoPWtk8fyclgwrn7o
         IaLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=JxHdv9pbmjioGNUU2wRTjH05lfqdGgynPFdQJZq/szU=;
        b=OWlTEcDJUNViNW22remRr2lydE3kHBN3/WvM2iYN0U5Fp/A11CftHYSRgC6Fr3sm2R
         IDtHh8c4mWJ+Ix9M3knwSwKCBsSF5cLdxuXE0DQ+3a+5bF1LnMDahWiY7EI8fj2469P8
         R+Gpcc5+JydWUPI+XsNyWvhlyJC9Q86WR4HNmlAHtrSFg1AFGUOeZNss/1DIIE5zBP3/
         npP0Mcx837ytle4yqybFQSeJK414GIOLBOTGyIniQvDvCDNJ8P+NO8lU0Oy5qmqyR6bx
         JXR032ZvWDQPPvvsLH2+qmyH1h3fCyIYzlsHL7zhJ3VHvw8iLkMbhf2mtflSatyPtCRM
         PP1Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga18.intel.com (mga18.intel.com. [134.134.136.126])
        by gmr-mx.google.com with ESMTPS id d22si1066656pgb.1.2020.12.19.15.44.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 19 Dec 2020 15:44:36 -0800 (PST)
Received-SPF: pass (google.com: domain of philip.li@intel.com designates 134.134.136.126 as permitted sender) client-ip=134.134.136.126;
IronPort-SDR: xxz9gtuB3kAjUtjbM659/KGc4sITYX5hnSfurIGoGoMkVk5wBoKpkOeTfuzOmRfX2zoiYBimNo
 S3adBpIrpdeA==
X-IronPort-AV: E=McAfee;i="6000,8403,9839"; a="163329934"
X-IronPort-AV: E=Sophos;i="5.78,433,1599548400"; 
   d="scan'208";a="163329934"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Dec 2020 15:44:35 -0800
IronPort-SDR: F7x0aRlhYDjmLsm9LpBV30fO6eZpbcySTWendvN3U1poABAFhiUUzIFu7LW0brRn3DWi4rc4Ur
 6sJR54Ii+lfg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,433,1599548400"; 
   d="scan'208";a="415009972"
Received: from pl-dbox.sh.intel.com (HELO intel.com) ([10.239.159.39])
  by orsmga001.jf.intel.com with ESMTP; 19 Dec 2020 15:44:33 -0800
Date: Sun, 20 Dec 2020 07:40:52 +0800
From: Philip Li <philip.li@intel.com>
To: kernel test robot <lkp@intel.com>
Cc: Petr Machata <petrm@nvidia.com>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com,
	Ido Schimmel <idosch@nvidia.com>, Amit Cohen <amcohen@nvidia.com>,
	Jiri Pirko <jiri@nvidia.com>
Subject: Re: [kbuild-all] [jpirko-mlxsw:combined_queue 2/30]
 /tmp/pinctrl-da9062-152917.s:464: Error: unrecognized opcode `zext.b a1,s1'
Message-ID: <20201219234052.GA3505@intel.com>
References: <202012190116.AKhNFZZ3-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202012190116.AKhNFZZ3-lkp@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: philip.li@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of philip.li@intel.com designates 134.134.136.126 as
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

On Sat, Dec 19, 2020 at 01:42:21AM +0800, kernel test robot wrote:
> tree:   https://github.com/jpirko/linux_mlxsw combined_queue
> head:   b522603173a3860c1e8aa8035d17d5227604e173
> commit: 1994d0a13629739cd5a41b66d0524ef44f83c40c [2/30] devlink: Add ecn_mark trap
> config: riscv-randconfig-r014-20201217 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project cee1e7d14f4628d6174b33640d502bff3b54ae45)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install riscv cross compiling tool for clang build
>         # apt-get install binutils-riscv64-linux-gnu
>         # https://github.com/jpirko/linux_mlxsw/commit/1994d0a13629739cd5a41b66d0524ef44f83c40c
>         git remote add jpirko-mlxsw https://github.com/jpirko/linux_mlxsw
>         git fetch --no-tags jpirko-mlxsw combined_queue
>         git checkout 1994d0a13629739cd5a41b66d0524ef44f83c40c
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=riscv 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
Kindly ignore this report, we will check whether it is a real isue.

> 
> Note: the jpirko-mlxsw/combined_queue HEAD b522603173a3860c1e8aa8035d17d5227604e173 builds fine.
>       It only hurts bisectibility.
> 
> All errors (new ones prefixed by >>):
> 
>    In file included from drivers/pinctrl/pinctrl-da9062.c:17:
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
>    In file included from drivers/pinctrl/pinctrl-da9062.c:17:
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
>    In file included from drivers/pinctrl/pinctrl-da9062.c:17:
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
>    In file included from drivers/pinctrl/pinctrl-da9062.c:17:
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
>    In file included from drivers/pinctrl/pinctrl-da9062.c:17:
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
>    In file included from drivers/pinctrl/pinctrl-da9062.c:17:
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
>    In file included from drivers/pinctrl/pinctrl-da9062.c:17:
>    In file included from include/linux/regmap.h:20:
>    In file included from include/linux/iopoll.h:14:
>    In file included from include/linux/io.h:13:
>    In file included from arch/riscv/include/asm/io.h:149:
>    include/asm-generic/io.h:1005:55: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            return (port > MMIO_UPPER_LIMIT) ? NULL : PCI_IOBASE + port;
>                                                      ~~~~~~~~~~ ^
>    7 warnings generated.
>    /tmp/pinctrl-da9062-152917.s: Assembler messages:
> >> /tmp/pinctrl-da9062-152917.s:464: Error: unrecognized opcode `zext.b a1,s1'
>    clang-12: error: assembler command failed with exit code 1 (use -v to see invocation)
> --
>    /tmp/leds-lp3944-623310.s: Assembler messages:
> >> /tmp/leds-lp3944-623310.s:248: Error: unrecognized opcode `zext.b a0,a1'
>    /tmp/leds-lp3944-623310.s:360: Error: unrecognized opcode `zext.b a2,a1'
> >> /tmp/leds-lp3944-623310.s:365: Error: unrecognized opcode `zext.b a1,s1'
>    /tmp/leds-lp3944-623310.s:386: Error: unrecognized opcode `zext.b a2,a1'
> >> /tmp/leds-lp3944-623310.s:455: Error: unrecognized opcode `zext.b s4,s4'
>    /tmp/leds-lp3944-623310.s:468: Error: unrecognized opcode `zext.b a3,s2'
>    /tmp/leds-lp3944-623310.s:472: Error: unrecognized opcode `zext.b a2,a1'
>    clang-12: error: assembler command failed with exit code 1 (use -v to see invocation)
> --
>    #define readb_cpu(c)            ({ u8  __r = __raw_readb(c); __r; })
>                                                             ^
>    In file included from drivers/iio/accel/mma8452.c:26:
>    In file included from include/linux/iio/trigger.h:6:
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
>    In file included from drivers/iio/accel/mma8452.c:26:
>    In file included from include/linux/iio/trigger.h:6:
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
>    In file included from drivers/iio/accel/mma8452.c:26:
>    In file included from include/linux/iio/trigger.h:6:
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
>    In file included from drivers/iio/accel/mma8452.c:26:
>    In file included from include/linux/iio/trigger.h:6:
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
>    In file included from drivers/iio/accel/mma8452.c:26:
>    In file included from include/linux/iio/trigger.h:6:
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
>    In file included from drivers/iio/accel/mma8452.c:26:
>    In file included from include/linux/iio/trigger.h:6:
>    In file included from include/linux/irq.h:20:
>    In file included from include/linux/io.h:13:
>    In file included from arch/riscv/include/asm/io.h:149:
>    include/asm-generic/io.h:1005:55: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            return (port > MMIO_UPPER_LIMIT) ? NULL : PCI_IOBASE + port;
>                                                      ~~~~~~~~~~ ^
>    7 warnings generated.
>    /tmp/mma8452-400513.s: Assembler messages:
>    /tmp/mma8452-400513.s:851: Error: unrecognized opcode `zext.b a1,a1'
>    /tmp/mma8452-400513.s:1026: Error: unrecognized opcode `zext.b a1,a1'
>    /tmp/mma8452-400513.s:1191: Error: unrecognized opcode `zext.b a2,a0'
>    /tmp/mma8452-400513.s:1210: Error: unrecognized opcode `zext.b a2,s4'
>    /tmp/mma8452-400513.s:1211: Error: unrecognized opcode `zext.b a1,a0'
>    /tmp/mma8452-400513.s:1308: Error: unrecognized opcode `zext.b a2,a0'
>    /tmp/mma8452-400513.s:1553: Error: unrecognized opcode `zext.b a0,a0'
>    /tmp/mma8452-400513.s:1828: Error: unrecognized opcode `zext.b a2,s3'
>    /tmp/mma8452-400513.s:1882: Error: unrecognized opcode `zext.b a2,a0'
>    /tmp/mma8452-400513.s:1887: Error: unrecognized opcode `zext.b a2,a0'
>    /tmp/mma8452-400513.s:1930: Error: unrecognized opcode `zext.b a1,a1'
>    /tmp/mma8452-400513.s:1938: Error: unrecognized opcode `zext.b a1,a1'
> >> /tmp/mma8452-400513.s:1939: Error: unrecognized opcode `zext.b a2,a2'
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201219234052.GA3505%40intel.com.
