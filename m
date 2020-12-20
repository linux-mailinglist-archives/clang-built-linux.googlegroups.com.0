Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBU6S7L7AKGQEBAGPJ6Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93b.google.com (mail-ua1-x93b.google.com [IPv6:2607:f8b0:4864:20::93b])
	by mail.lfdr.de (Postfix) with ESMTPS id 826AA2DF29B
	for <lists+clang-built-linux@lfdr.de>; Sun, 20 Dec 2020 02:31:00 +0100 (CET)
Received: by mail-ua1-x93b.google.com with SMTP id 62sf2519925uak.18
        for <lists+clang-built-linux@lfdr.de>; Sat, 19 Dec 2020 17:31:00 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608427859; cv=pass;
        d=google.com; s=arc-20160816;
        b=KURU5otUOwurjrgXEgNQeuCJ2TFobN4O8uZqOba/3St/FRCBQV2FNU5Bo5F2O+YrHo
         TbYoRvGlcujNVZs4Lwum6XBehvXlGTour2r2E/qi7ie5Pd6jTvp7x6UMjPCzg4DgweaM
         CdOnMS9xLi1OrwtxvGg0WfdETuf9270WBIws0tbQJAd1d9tdfPI6ocWpm75jKrnIWlIp
         Pz75k+lNK/YiJqX7gEPVcFhdw4br3pSvDBNAFI90I33nvuuXSVMwucVFNjiQFAM6AxYN
         brIDdD6bajrHkXpHf5SiUGdY48tFgW4Vhx8jiEwMh6VIM+/FoYMVa/iRGwW/2u4Mejzs
         W6kw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=9qaq7zy29rru1GmobD0A4HoDZCH16SSwdkVPESiCHX4=;
        b=HQpjQo5TlgucmJbkJrmtDAzv2YqMs3Ij6Z+aip2VnoFbW1Vbitz4Lc4tzn1RdcEPBf
         asaFumsSffAxZ5TmVC+ZiyLpvphA+KES4CZ0SEmdz3MuoqZs3f+4i+P/fBtqdGZcO2ly
         MVOQ5A1aSCXo7620q3qoesQnoAvQPrTSSug5Z+qKhyXPXm87qbtvnMv3sVAER1dF2T0e
         sAo9PIMyTYjK5VKsgQXQaPoL4Jk4FXau6oB7nxtBhOOhDNpQGC5I/HZiOrrs3bSxrvx1
         m1g/9WXZpbdRNltNHFCPZJfyTICb16VtBizT0rE7lGVkO0h1eWdMkp3XF5UAvNh5geLq
         olhg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9qaq7zy29rru1GmobD0A4HoDZCH16SSwdkVPESiCHX4=;
        b=cWpPIikMfZoaEIMstX/OksgUMcBmQdBCWypqW/xU00r9cEW5Bs+qARoDFGMyPJmUAq
         5L5TQYuYLphVi5BFz2+iwX0AcU+N7ssBilA8JcI0vpSajOONVPRijjRhuP9GaRDFOJ9e
         v/lttzXbCyt2NAxcftRtjcn6uGiczHp5tAXy4HckpBWb41xjQPmFmfomc424hE/G+8GT
         NEg5HD+RW0/CRZP+pxvU9WpucR6bey9nd55mnrzzHvo+D3OgI8IZWGr2cpOFd0Dp26vX
         AdNdPfXPOOEpNcDNGlRwiy9XugJxj4O6fZX7FY9mgl34HEIg6z4Q9zUsOlm5vMlW5xW+
         7HCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=9qaq7zy29rru1GmobD0A4HoDZCH16SSwdkVPESiCHX4=;
        b=GcFHNO/KsRypaHRbKtQNO8x8t/Bw83gCt6V8SUxW8Hn+GFdvvslbhMJlH4amaKV5Aj
         XY4BW5K4Mu2tXtc6gZFat8lCdZth7llXcxRNgJ7EkkPY2L43dZJeQvLP5ukWg1ec7d0/
         +alGC2oqccFrhJQsHpDHMwVz12Cg/6y8ON3P6rNipRt+367hTeaTcEe+ecL/wOSTE/UU
         pH32xrrsXEWwXMkHBPb/eq/rfTXXnzc0ZWttFUcjYacbzII1ZwpmfgAftVILhh7l5mDZ
         2nDUSJIFfYTEUipljFxHnVNvoGKKMSg3yuNKkxU7ItGBShKsDCjq4KR35G70GyhP+mGo
         Z7xA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532jJBlLqizqxXjClZJnBN84i9O1DnMYJyze8Bu64HsBCLVK5hn9
	mu2wVzZ5aYc5u+qzAAQQraE=
X-Google-Smtp-Source: ABdhPJwwctegJM/8+a8zlwhGEb5uzub5ZG+AePemYeN+XBQLaqDcShvTZ7z5cCqPTTP4aVOX1fKkWg==
X-Received: by 2002:a67:f14f:: with SMTP id t15mr10066492vsm.0.1608427859343;
        Sat, 19 Dec 2020 17:30:59 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:2743:: with SMTP id c3ls2618309uap.4.gmail; Sat, 19 Dec
 2020 17:30:59 -0800 (PST)
X-Received: by 2002:a9f:2886:: with SMTP id d6mr9942045uad.113.1608427858874;
        Sat, 19 Dec 2020 17:30:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608427858; cv=none;
        d=google.com; s=arc-20160816;
        b=VzQ7aS3grHa6H4ALh4fNutUUlROG3l0BCFN52pYWngGu7If3obLVy414XjKSRiRxHr
         K2JLcCNuuEqKDwZ5xSmzuwdwo8glr1lmrfLvSjQgkua6ENXYKLoxB9+uIK1R1q/a91mM
         glJ4LmmF5JqMblwF0PQX3a6NxllM2v1eQ+RY6r19CpfVtxxsl1mrBqIYgc0u4K9Y0xfl
         SNBb0iOBoPEP3YoV3gR6Mgaw/7r3W+HUxYsMr6pfbz16prC8k71uUSSZIRoxv3ind7XK
         36t4V0P8S4l2OhvcHccwEihR3GQmlqRhxalyxavLyuYWTZOxaj/53zJU27XgKTFWXnEj
         Z1dg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :from:date:ironport-sdr:ironport-sdr;
        bh=RgboHpVSQhKcLmeM0oAqgLHxKM3w7I2w3xqHRZniiqw=;
        b=BgYObxaunpc/1R8HQ1+qYhJIHehsRFpnb4/3Kzlphs1FkZ7/QgNzxDIHh1MMDPRvUc
         +9VM9H351miWUsGGv6GdW8jmWof73d5LyzBNoBEQDjh9lgTqiJrv4lvwkpIzPX9Gs3x+
         8u/oOa4DrItVapE/kVQ16KKdPnuYqcbwIov7UF3sxgwJ50v0hxD49bxES9pTAgEIsjjO
         MUpnn1rega2SNwHC4YM/feIBhi7ruA3ReVWVgoRKLdl2OPVnjQr8d0Kx+Ob7RJEcxFKk
         WsLYGCMmHuwHzwD9YvVqL0F2h1vWcxi1YKXCqB9lE/THHc5jZN9PsOiaTy325NeoU8CR
         Tq9A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga11.intel.com (mga11.intel.com. [192.55.52.93])
        by gmr-mx.google.com with ESMTPS id f26si902790uao.0.2020.12.19.17.30.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 19 Dec 2020 17:30:58 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) client-ip=192.55.52.93;
IronPort-SDR: La50GF3Vllt4P02z3dbK/ITx+q/Zm1f1qTTlqjAECVn/z05go8LAYpe2LMnRGBY5mfeYBr9qc3
 wGXdGL4mymhA==
X-IronPort-AV: E=McAfee;i="6000,8403,9840"; a="172100538"
X-IronPort-AV: E=Sophos;i="5.78,433,1599548400"; 
   d="gz'50?scan'50,208,50";a="172100538"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Dec 2020 17:30:54 -0800
IronPort-SDR: itpkDbba7ewvTXfG/8JI3tm3aVat/tPNOky3cHqHdzWrAOHDNcYCrz9M6RFWOnk6U6M4S2JnPr
 JSXolAUD23rA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,433,1599548400"; 
   d="gz'50?scan'50,208,50";a="387623920"
Received: from lkp-server02.sh.intel.com (HELO c4fb2a2464e8) ([10.239.97.151])
  by fmsmga004.fm.intel.com with ESMTP; 19 Dec 2020 17:30:52 -0800
Received: from kbuild by c4fb2a2464e8 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kqnYi-0001wF-4m; Sun, 20 Dec 2020 01:30:52 +0000
Date: Sun, 20 Dec 2020 09:30:03 +0800
From: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [drm-intel:drm-intel-gt-next 1/15] /tmp/repaper-597914.s:3252:
 Error: unrecognized opcode `zext.b a1,a0'
Message-ID: <202012200902.Ii4JsTLm-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="tKW2IUtsqtDRztdT"
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


--tKW2IUtsqtDRztdT
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

CC: intel-gfx@lists.freedesktop.org
CC: dri-devel@lists.freedesktop.org
TO: Chris Wilson <chris@chris-wilson.co.uk>
CC: Matthew Auld <matthew.auld@intel.com>

tree:   git://anongit.freedesktop.org/drm-intel drm-intel-gt-next
head:   4f963d363af57fa4deaaea9b1f34f135b94884e1
commit: 840291a7b90b97246d430227aa9a157b7f26e98c [1/15] drm/i915/selftests: Tidy prng constructor for client blits
config: riscv-randconfig-r022-20201217 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project cee1e7d14f4628d6174b33640d502bff3b54ae45)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install riscv cross compiling tool for clang build
        # apt-get install binutils-riscv64-linux-gnu
        git remote add drm-intel git://anongit.freedesktop.org/drm-intel
        git fetch --no-tags drm-intel drm-intel-gt-next
        git checkout 840291a7b90b97246d430227aa9a157b7f26e98c
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=riscv 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

Note: the drm-intel/drm-intel-gt-next HEAD 9bb36cf66091ddf2d8840e5aa705ad3c93a6279b builds fine.
      It only hurts bisectibility.

All errors (new ones prefixed by >>):

   In file included from include/linux/dma-buf.h:16:
   In file included from include/linux/dma-buf-map.h:9:
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
   In file included from drivers/gpu/drm/tiny/repaper.c:17:
   In file included from include/linux/dma-buf.h:16:
   In file included from include/linux/dma-buf-map.h:9:
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
   In file included from drivers/gpu/drm/tiny/repaper.c:17:
   In file included from include/linux/dma-buf.h:16:
   In file included from include/linux/dma-buf-map.h:9:
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
   In file included from drivers/gpu/drm/tiny/repaper.c:17:
   In file included from include/linux/dma-buf.h:16:
   In file included from include/linux/dma-buf-map.h:9:
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
   In file included from drivers/gpu/drm/tiny/repaper.c:17:
   In file included from include/linux/dma-buf.h:16:
   In file included from include/linux/dma-buf-map.h:9:
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
   In file included from drivers/gpu/drm/tiny/repaper.c:17:
   In file included from include/linux/dma-buf.h:16:
   In file included from include/linux/dma-buf-map.h:9:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:149:
   include/asm-generic/io.h:1005:55: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           return (port > MMIO_UPPER_LIMIT) ? NULL : PCI_IOBASE + port;
                                                     ~~~~~~~~~~ ^
   In file included from drivers/gpu/drm/tiny/repaper.c:30:
   In file included from include/drm/drm_fb_helper.h:39:
   In file included from include/linux/vgaarb.h:34:
   include/video/vga.h:215:2: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           outw(VGA_OUT16VAL (val, reg), port);
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:60:68: note: expanded from macro 'outw'
   #define outw(v,c)       ({ __io_pbw(); writew_cpu((v),(void*)(PCI_IOBASE + (c))); __io_paw(); })
                                                                 ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:92:76: note: expanded from macro 'writew_cpu'
   #define writew_cpu(v, c)        ((void)__raw_writew((__force u16)cpu_to_le16(v), (c)))
                                                                                     ^
   drivers/gpu/drm/tiny/repaper.c:983:11: warning: cast to smaller integer type 'enum repaper_model' from 'const void *' [-Wvoid-pointer-to-enum-cast]
                   model = (enum repaper_model)match;
                           ^~~~~~~~~~~~~~~~~~~~~~~~~
   9 warnings generated.
   /tmp/repaper-597914.s: Assembler messages:
>> /tmp/repaper-597914.s:3252: Error: unrecognized opcode `zext.b a1,a0'
   clang-12: error: assembler command failed with exit code 1 (use -v to see invocation)
--
   /tmp/lm95234-304438.s: Assembler messages:
>> /tmp/lm95234-304438.s:278: Error: unrecognized opcode `zext.b a2,a0'
>> /tmp/lm95234-304438.s:672: Error: unrecognized opcode `zext.b a1,a0'
   /tmp/lm95234-304438.s:679: Error: unrecognized opcode `zext.b a1,a0'
   /tmp/lm95234-304438.s:700: Error: unrecognized opcode `zext.b a1,a0'
   /tmp/lm95234-304438.s:707: Error: unrecognized opcode `zext.b a1,a0'
   /tmp/lm95234-304438.s:807: Error: unrecognized opcode `zext.b a1,a0'
   /tmp/lm95234-304438.s:828: Error: unrecognized opcode `zext.b a1,a0'
   /tmp/lm95234-304438.s:852: Error: unrecognized opcode `zext.b a1,a0'
>> /tmp/lm95234-304438.s:1243: Error: unrecognized opcode `zext.b a2,a1'
>> /tmp/lm95234-304438.s:1426: Error: unrecognized opcode `zext.b a1,a1'
   /tmp/lm95234-304438.s:1635: Error: unrecognized opcode `zext.b a1,a1'
   /tmp/lm95234-304438.s:2110: Error: unrecognized opcode `zext.b a1,a1'
>> /tmp/lm95234-304438.s:2299: Error: unrecognized opcode `zext.b s1,s1'
   clang-12: error: assembler command failed with exit code 1 (use -v to see invocation)
--
   In file included from drivers/mmc/host/dw_mmc-k3.c:13:
   In file included from include/linux/of_address.h:7:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:149:
   include/asm-generic/io.h:556:9: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           return inb(addr);
                  ^~~~~~~~~
   arch/riscv/include/asm/io.h:55:76: note: expanded from macro 'inb'
   #define inb(c)          ({ u8  __v; __io_pbr(); __v = readb_cpu((void*)(PCI_IOBASE + (c))); __io_par(__v); __v; })
                                                                           ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:87:48: note: expanded from macro 'readb_cpu'
   #define readb_cpu(c)            ({ u8  __r = __raw_readb(c); __r; })
                                                            ^
   In file included from drivers/mmc/host/dw_mmc-k3.c:13:
   In file included from include/linux/of_address.h:7:
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
   In file included from drivers/mmc/host/dw_mmc-k3.c:13:
   In file included from include/linux/of_address.h:7:
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
   In file included from drivers/mmc/host/dw_mmc-k3.c:13:
   In file included from include/linux/of_address.h:7:
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
   In file included from drivers/mmc/host/dw_mmc-k3.c:13:
   In file included from include/linux/of_address.h:7:
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
   In file included from drivers/mmc/host/dw_mmc-k3.c:13:
   In file included from include/linux/of_address.h:7:
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
   In file included from drivers/mmc/host/dw_mmc-k3.c:13:
   In file included from include/linux/of_address.h:7:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:149:
   include/asm-generic/io.h:1005:55: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           return (port > MMIO_UPPER_LIMIT) ? NULL : PCI_IOBASE + port;
                                                     ~~~~~~~~~~ ^
   7 warnings generated.
   /tmp/dw_mmc-k3-562474.s: Assembler messages:
>> /tmp/dw_mmc-k3-562474.s:441: Error: unrecognized opcode `zext.b a5,a4'
>> /tmp/dw_mmc-k3-562474.s:515: Error: unrecognized opcode `zext.b a3,s1'
>> /tmp/dw_mmc-k3-562474.s:575: Error: unrecognized opcode `zext.b a3,a2'
   clang-12: error: assembler command failed with exit code 1 (use -v to see invocation)
--
   #define readb_cpu(c)            ({ u8  __r = __raw_readb(c); __r; })
                                                            ^
   In file included from drivers/mfd/lm3533-core.c:14:
   In file included from include/linux/gpio.h:62:
   In file included from include/asm-generic/gpio.h:11:
   In file included from include/linux/gpio/driver.h:7:
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
   In file included from drivers/mfd/lm3533-core.c:14:
   In file included from include/linux/gpio.h:62:
   In file included from include/asm-generic/gpio.h:11:
   In file included from include/linux/gpio/driver.h:7:
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
   In file included from drivers/mfd/lm3533-core.c:14:
   In file included from include/linux/gpio.h:62:
   In file included from include/asm-generic/gpio.h:11:
   In file included from include/linux/gpio/driver.h:7:
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
   In file included from drivers/mfd/lm3533-core.c:14:
   In file included from include/linux/gpio.h:62:
   In file included from include/asm-generic/gpio.h:11:
   In file included from include/linux/gpio/driver.h:7:
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
   In file included from drivers/mfd/lm3533-core.c:14:
   In file included from include/linux/gpio.h:62:
   In file included from include/asm-generic/gpio.h:11:
   In file included from include/linux/gpio/driver.h:7:
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
   In file included from drivers/mfd/lm3533-core.c:14:
   In file included from include/linux/gpio.h:62:
   In file included from include/asm-generic/gpio.h:11:
   In file included from include/linux/gpio/driver.h:7:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:149:
   include/asm-generic/io.h:1005:55: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           return (port > MMIO_UPPER_LIMIT) ? NULL : PCI_IOBASE + port;
                                                     ~~~~~~~~~~ ^
   7 warnings generated.
   /tmp/lm3533-core-962577.s: Assembler messages:
>> /tmp/lm3533-core-962577.s:1302: Error: unrecognized opcode `zext.b a2,a0'
>> /tmp/lm3533-core-962577.s:1303: Error: unrecognized opcode `zext.b a3,a3'
   /tmp/lm3533-core-962577.s:1330: Error: unrecognized opcode `zext.b a2,a0'
   /tmp/lm3533-core-962577.s:1331: Error: unrecognized opcode `zext.b a3,a3'
   clang-12: error: assembler command failed with exit code 1 (use -v to see invocation)

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202012200902.Ii4JsTLm-lkp%40intel.com.

--tKW2IUtsqtDRztdT
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICFuR3l8AAy5jb25maWcAlDzbctu4ku/zFaxM1dY5D5no5ttu+QECQQkjgmAIUpb8wlJk
JdGOLbkkOSf5++0GSBEgIc9sqhJb3Q2g0eg7oPz+2+8BeTvtX1an7Xr1/Pwr+LbZbQ6r0+Yp
+Lp93vxPEMogkXnAQp7/AcTxdvf289Nhe1z/CK7+6Pf+6H08rIfBbHPYbZ4Dut993X57g/Hb
/e6333+jMon4pKS0nLNMcZmUOVvk9x/Wz6vdt+DH5nAEuqA/+APmCf71bXv670+f4N+X7eGw
P3x6fv7xUr4e9v+7WZ+C9WbT39w89UdfR9eD26fr/s3oy3B4Peo9XfUGX75+HX65Gq02o6t/
f6hXnTTL3vdqYBx2YUDHVUljkkzuf1mEAIzjsAFpivPw/qAHf6w5pkSVRIlyInNpDXIRpSzy
tMi9eJ7EPGEWSiYqzwqay0w1UJ59Lh9kNmsg+TRjBNhNIgn/lDlRiATx/x5M9Gk+B8fN6e21
OZBxJmcsKeE8lEitqROelyyZlyQDAXDB8/vhAGY58yNSHjM4Q5UH22Ow259w4rPEJCVxLZ0P
H5pxNqIkRS49g8cFB4krEuc4tAKGLCJFnGu+POCpVHlCBLv/8K/dfrdpTl4t1ZyntNlYBcCf
NI8b+APJ6bT8XLDCEnuhWMzHzecpmTOQCBCSAqwA5yBxXEsYjiM4vn05/jqeNi+NhCcsYRmn
+rTUVD4009kYnvzJaI7yco43lIJwL6yccpYhL0ubvySEU6kIgNbad0oyxVyYvX7IxsUkQuX6
PdjsnoL919Z+fIMEyJ5Xq2bNvFpCFM56pmSRUWZOrbOspmBzluSqFmG+fQFP4JNizukMtJSB
BK2ppo9lCnPJkFPNeQVOJGI4cGXrl4v2aN6UT6ZlxhQsJljmyKLDWDNbmjEm0hxmTZhn0ho9
l3GR5CRb2oxWyHeGUQmjavHQtPiUr45/BSdgJ1gBa8fT6nQMVuv1/m132u6+tQQGA0pC9Rxc
u7TzynOe5S00HoxXXqniLrwSyj9gR7Od0SJQviNNliXgbLbgY8kWcKY+mShDbA9vgcDfKT1H
pWMeVAdUhMwHzzNC2Zm9asfuTs5GOTO/WGY6Ox+jdDSTz6bgoEG5vF4TnV8EToJH+X3/plEF
nuQz8IgRa9MM2zal6JSFxrJqpVHr75unt+fNIfi6WZ3eDpujBlc78mBb8QgW7w9u7U3QSSaL
VHl1Bdans1TCILQkiFd+EzR8YgTQc/lplipS4JjAFCjJWeglylhMlr4oEs9g6Fy7nsyK3Poz
ETCx8U1WMMnCcvLIU0cdw3IMoIFnAUDFj4K0qBc+v6JJrURAfx61Rj6q3L/DsZToBvB3v8Rp
KVPwWPyRlZHM0CHCD0ES6nNHbWoFvzjR0YmK5jNYJGVprpM2tIoGb0zV3okOCRA3M/+RTlgu
wLzKKnS+c+4eigofmYDTcJFKxReN03bMxuYNIpxnOhZHIN7Mmm9MIFJGhY7s58FRAQmrb3gq
XULFJwmJo9BDq1mMQptaxz8vMeGWynBZFlnLhZNwzoHRSlB+cxRMjEmWcfc8KuQMhy2FJbMa
Upq0pg3VgkGLy/mcOZJNo3ePFLhgYch829Q5FepseU4F6gNEIKhSORcwr+tHU9rvjezZtE+r
ao90c/i6P7ysdutNwH5sdhCSCHg7ikEJongTgbzL6kzIv3jlM//hMlawFWYVE8393h9TapJD
Pm6l8yomY0e14mLsN5lYXkKQMShBNmF1rnyZLIKUI+YKHDfYlxS+AOyQTUkWQthx1FlNiyiC
FDQlsKIWHIEY4JlKCJJqgoeySNApcxKDKwod35MzUYYkJ1hp8YjDXE6CDME14jG3azXtn3T4
cdI3t/ipia9HYzsvzbii81YWq9nMEggDkO6XAlLx/u17BGRxPxg5E5aiFDJ0rEWIwiORR8gf
y1CQ4aDhYU70vPfDu/OeK8jVdQMBUcsoUiy/7/287Zk/DpMRWCx4AijoyNh2nBr5QEAxdf5A
4nJagIeOxy0SVaSpzHJV2wasWBtFfVg5oTOTMlXErTPBegHYmKgu/lwPgAaMM4j0sAwEdQ+B
KkQXOn1gkLdb86WTHLdZxmBzMcjOqkpnkE1YDJj8aE/hGJ43a7dToSRkU6B0czs8AgwTZ0fj
AQYVdJgtc+bNkt359ZLp8+qEriM4/XrdmMzeknY2Hw64LyAY5PWIW40B1K0YLDyMdWXZZAVn
BEl8+RGgC5CRMkWn5f5AhdPpUqG6DCau9xGpL6YVoLaddNuoPlekpLWcj2+vr/sDtpNS0P/2
zs0AHWBS1zzOgvRMYIXn1D/IFbUdJZxsuKkn+72e10UCanB1ETV0RznT9ex69b5vGafJgqcZ
1mqeANNk5MjieA+T719Ri6wQRkWoW0W6y1INdyiNwu3/Axk+hKrVt80LRKruPKlwwqswpu4r
TAWUF1aMevgM+dcDy0oWgYfmGOWqSGPv6CIDmr1oe3j5z+qwCcLD9ocToSOeiQeSMUxkwNNa
1i/lBPS3xncQmNHpzDmvXN55bxUBTAgAJS1az24r4nlqBSYW8ZKRLF5SHYxM42Lz7bAKvtb7
eNL7sOusCwQ1uiMBp2e3Oqy/b0/gQUAbPj5tXmGQ9xD/LERaQoxmseOZQb3ARS3B9UKuiy07
X0dLe+mplLOuhwXD182Uqr3YCg5YI0LsQYHKbHkBGXIo4oDGPkKzttLxseoJqhZWZ2EZm3jh
WGWYwFOGhehMjMv7BOLD2klthwx8JCZn76BADeNcd8AaZ2kwlxJezTbkLznDnq4z0MFcGg+/
Y/9cn9rMyYA0+kJ3xxf5MeKDUYeQujl2pOeBk6k2mjKKGZgVJ3QAUTpHxhIKJWg3yDGbGQNz
YJ2hciKTSXSHA8hjdEV0KdRJXXJCUjJjWYJn9LCwXItNiTyA+mUMkzGUndW8h6BvJ9/nVuOE
yvnHL6sjhJO/jLt9Pey/bp+dJhoSVct7FFtjTRLK3IrJg2ly0XcWdoSPtxZpXEx44s1l/8Yp
nCMxWB2WrsyyIR1mFRY2zdVHnRCg08X2Qd456jYA6Si2pIhTAlTIIkGEP/PoWvtFN1CzldHz
tYEt6IZrDwvVXrx9EIvkwoRoEP0LswJqMBj5K26X6ur6H1ANb//JXFd9Xx/KogGdnN5/OH5f
9T+0sGhzGVNdudaITuerjXcbW20yU8gJrhR6GryJUalO+oWuGzxsFwkYLTidpRjLuMMXtl8Z
qpacFQ5bY7Rnn8NQSb+ZBCtKzIrAbfFEayKdtez3XNJAfSogxkEa4bFwIbh8GNcug/3crN9O
qy/PG30jGujq/+QkkGOeRCKHxC7j3rb+eeaKECszZ38N2NfUNFiQM71/aRoHGavi39lHXOJU
syo2L/vDr0C8kw1WBWMjEQSUCZQU6GfdMK7SGBx5mmtPCzFH3d/pP059mjGUthOosMooSRhm
Zd6uxBMJJXJZdQVAFbjQLUjQ3/6ZhIH2QBqgo9zMSV5pzEhCCeTWXpV9TKX0tRUfx0XYSLXO
fXSiV3KpY4sljwx0vJx3ojdwhAxh0uVvyE2KtByzhE4FybyKXCtImjMTdYkTPS4fnnW/xRzl
0Ycebn5s154E26RTlLvNNV/5mVIKobyRUEoFMNf+rMNBSfk5zqb043p1eAq+HLZP33S11aS2
23XFUCDbGliYmD1lcWpfLTpgUK186twGz3ORRk4vz0DArZhrNDvNSkISX7yz08ucqw99J13v
6JyrP+9XTzrLr5XiQe8e+H3pgLQZhHh3Y3fPIX1rSphmI80oneOehdBUuz6CMgI3jCmXr2d+
HmCFgm71Ue3orIzareM1iuVkzqLFVlCYQdLssFbB2RwW8VqAIcAypBoNzkHIufccRPlZqnJW
4GsEt3DR44laJrSeBdKtMWskbwbVONYaDjWFY8/mc8kHtAODGNKBYVzoDrbv1kNBTEatzzxq
yQiQETgBZqoub+PigoGYVsDbMXjSBu0EHyEXOfNenEIcxqasAF6cXFxMOYK8DNiLWP4rUb5w
LnKrLIQPWtzq/qXyAavDaYv8B6+rw9HxP0hLshswj0zTN6wBompuGKR/1VJG57EWFOSuq3+D
+uVDmZIUSlaTVNx/7F+cAFKIqpftdru7hFgfyyReeiXaFYOWTgG/BmKPt7DmBiE/rHbHZ/1y
KohXvzrykjJVbTZweY71EiicICp3L3zMNTwRnzIpPkXPq+P3AIqH16oN0ZqeRtyV2J8sZNSY
lwOHGFnWYPfcIo63U1UFd+nk0GbGJJmVDzzMp2XfnbyFHbyLHblYXJ/3PbCBj1MOpXQMvvgC
m3ozIlR56KoYwiGKkO4yRc7jls4R0dJPKVwKMlYscVpm7xyXSeNWr69QM9ZAzPEM1WoNJts+
U4keYIFyg5R40lUfbPkSX7tCY1uhvoGVJJHJEqJrZ8aCgukWC3/VgOMho4Qteg3l77Zm+vab
568f1/vdabXdQS0Nc1buytJqZ0W8SYI8Vk0v6SOdpoPhDEo2d6dK5YOr1oGquHOk6RRBLSnA
39YmTTa2Pf71Ue4+UtxUJzVzuZZ0MvRfLPytAPRcCSQ6Lf+RMAS6O6qA5qptWT5kPGd+iqbZ
7zBao2V+SY1qisEC3cbEI66MPJRIclFrIBh3CExtRinI5RtIor4nsLuvPmyN0/LRxHEK1Ujw
X+bnADJXEbyYdNvrJzWZK6LP+uVl4xOrJf5+4t/ae5RZSwkNULe6RjN9b+O8BdUmN+YdQPkQ
67atmkrIYEe9u+s2wZiNqxeeg17LhAEbQSxpOYYOzSQu2NhXMiDBdAmpKaYd5+2EuZVkycj+
HSv33M3UAIjFJ/YDHKApzLyomRz/6QDCZUIEd1bVlafTEQGYk8FJ7GlCdj3HiGrXwgYh47m7
KqSwmXNtCSFZ3zNaSU0FKsni9vbm7tqX8lYU/cHtqC44krlggepqtQM3MWF7XFuZYZ3Gh1eD
q0UZpnZj1ALqtPfFhzC5b5O3FkIsUUpedeBU3Q0HatTr+57JJDSWqsjwyjGbc8qcgEHSUN3d
9gYk9iULXMWDu15v2DBvIIOeLVuInwpMoswBd3Xhpq6mGU/7Nze+G7uaQDN011vYTE4FvR5e
+Xpwoepf3w5sZlAtYZMl5E3D9x5vqVZ0qMALfNawKFUYMUtr03lKEm63fgaVghkXyMDxCMf9
1cLXmJLkF3qWDf7Kd3QGG7MJoZZ6V2BBFte3N1e2oCrM3ZAufCp+Ri8WIyvUVmDI58rbu2nK
1KKDY6zf6420nGvH7u65uov7uToGfHc8Hd5e9LOc43cobp+CE+bVSBc8YyR4AmPZvuKv7kXd
/3t0Uy5D2k0wKUxjWxkYnUp/nmObq0lqqOJ1FG8OslYWQGKD1A4tvgHmNfru9e3Unaqx1iQt
um2i6erwpDsB/JMMcIjlRhS+tLb6fvgR/6100AGDG5uNQ9c8ER7zcap8JmTQEP/bM1VChVGd
NdRAOHdB1YCMauo2OB17oJPUTGRzWmiUv3tHhG5kek/TJ7vzW3rfaZjjAO1arU9QAnb8dp47
j8Xn/rdbEDIXd7dlmi+9j4q11WqsdSl2BlbvyyHntXxXyBXVb3PbNzhV3n3Yrp67KRFKjcT2
zbhz9oC6bT2gMMFtv/uoEUczr7Ywj75Wc4C7GV56ouGQ+CuPiqSAajnmua/nVFG4L0ItoP4u
joy7yM5jIRtsjWrzoihNFhdeQNcU/Wuubhbvbqmykz9zMsHdXd5ZRYhErkW5OP0QCG9I7kfv
EI1JEeKTrft+/2pgPWwxlDxaXC+ue51lqvCWqgtcZLQjRrTqS5JHXJKVhtt+CxmpGDJ1vU57
XIN653g0EaT1UD2/L1f4xBZ4ox7yCadgO5lHf9ok7ywsWFI+9oe+iFzrRZqFdjBsWWaLOsHv
kGHTO3N6WEk5DWPqffoShxFX08oNeaBVDu7ZQlLEMVJ4FbZ6JsgTX6O6YhZ7zk7RgMudX3R3
YOat333zJhKhdh8+Trvak6awiu348dUEhIOK0J/jpuL8hadLBGPknuuvPQEPEfHeP08fqme2
DY9nkHknziVWHR7smIyGfR/C8O/DUJpnycSHWfB0CtZ87tTqrk6wvhyUsOUO9jArqdOuxbsh
QZJy1PO+hGvQIzdpp9lgtPCG04us2FcJUAEJ7zkAatbC1VpD4W9q1XMagF/7dFx+Be2SYU30
4gGWNLvqdcmhtirxMjXuDkIUeBaeMPtVs41NirnMAWlJDNF6vgtbm8PesAOxWHq4zIfDx3Qw
8myqwrg3IB2ss3fw4vHSMdIaglW95Ze6KU6znVrjs0Ll+qsu5pqqkyYAX92E2GEW5TWWoGfY
g3HB5slRC6afr88b5hEoikVddIu35xPk95ufwDYurlt1Pg4g/IxNHglTxjFLJqwzqcbbDrKB
i8L3rZIaH+d0NOxdu6wjIqXk7mrU765kED+7iIxNukARL2gaO1Hk3Y3b46tbR0wUXf5IPJF4
n//SHN05N8ZbpUaKzdHqb9QFX/DOqWr6/utlfzw9/wo2L182T09QgH2qqD5Cxojd4H+7x0BR
8bScnV2GDL+Qo29xtYFfQqqY2NlbC4vdanwWZVsikjDB5gN/IAAscnPhcGdMGLlbMIkMqvYS
cKDn5S+ulM2G/uwQkYqLnPlCPCJNLnbuIfwEM91BEgGoT0rgaa2eVq/adrv9ac2eaVhdXDwn
UpXgpzsWLU/fjYZV61hnb9fjF7XH3oTKi7ErS89xalDVSvAQ6ytL7D+2D8BcWNPWVxk7BKj1
bf1BeH3lau2ns4Wh5cdomCiEVNd41pXygw1ukmb7fhrjkF7WBbWn0jDd0zQlXcoDsTriKdP9
7nTYP+MXQj0XEjjOpP++1A2RC65/ghd0/gMDhIFLGBP3K2waXOSYJsW+bynosArxIKGsvcfa
NB1BoIxC90uZFRRv7C8sANVXiem9E9wQUTltCxKLm14Zx6lLZ0qEcRdoZnRYkVR/cfkCK5mk
Mzrlrfmh/rvl6ro3aIFNwenAxMJucyNkAcFPtAVijN5fTgL6cZl8Fmk5+YyKcYmICE9vABXJ
ih/dFhbyWJzdDdKnh/1pv94/Vxp4dInhL0Zp9xSkTPGdi3nT4ew/j9n1YNFrS10b+AWZdy4H
FOT4zaepsrQCPjg5humZKR6sz2ZzfuGkwc9bbCE6XzGBKTD38Mo1db9VbVLyPIV59uu/2nGT
7fQDv3S6BOXTX79PWI7/Hwje5uoaAuo9gde9wWkP820C8Ljgzp/0GwTw8XrW4x+2t+0uZjHH
EygjfHknGorzH2VUAH17hI+0qgumq/6gppBRy7zqITz7rC2g9dCoS2y+J9yCUUdZzqBy3m9B
O99Y0lBBFjfDXpMDmku6l9XrK+QfOpp32l563M1osTCPgl4cuPGVtjYaloxLuyBJcFckbQmz
jHL80ev3bFO2d/J+jmAoswsJicZO44eww2ksJ5zOve0BLa/x7bW6WbSlyJLH/uCmfVxEkP9j
7Eqa48aV9F/R7V0mogmAIMHDHFgkq4pPBIsqUFVUXxget3raMbbVYbvf9JtfP1i4YElSdoRs
K7/EwsSWCSQStMSyG10Oz0FBZjLbKkfdLXbNIE3emcaM+Hk5HoszaF7utO2ilWrq699/yrEV
tnledpQy5rd42XZ+V7uPjqpn9bQI6n94CNp4ovtHbzaL1vtJmHSib57arUzggdgEHxlNw7z7
ri4wQxEoYECAZlAdy1CwXrtd618vbb5d30OZIobZHoP8HsTvt80xlmcRxZ74J6XcJTYdyWLi
NV/TsZQM4XCRZJpAW3ZLM6YJjYJ0Xd5IFW0r2bWgPWXEH08976qwSQpCWQaZlFOLCVk+S7zP
0WSW+ANZkzPk99KJjP1M7k0cEZ/5zhlBfsaKSCNbLQZ6xaIh7A5DOfWiJA5HF0EZGsBB5y8F
vCCEscjj7WpxEVePdbjmSH6js+kaVtDvzaeTtL39e/DeAJeK30YYlDt0nG6uXCr/BPvi80oc
c0FS7Li72ejGOuCz6BAuzs65zdH0Bc7oZhm8Twgm75SyW8A06+9ghnQ5Hh0F10DT/U91DxqU
q/Ke4O9ymTLVbRHQQDnfuV1D/et4q50ddkOcrEip2oRHYB9+yIUHMrAXd4QyJSiGFNiVIUZO
SBkHYbtJOYowgtMqiIKCcXngW04uT/Y+D0Hv8qA03f+YDMfWHLQCfTog0GFEQQTteoNIjhg5
51g2gLZyjRN4b8jh2fdD0RwUbBw5wneTiiJNNtp1UI5drb5FegUvw6yZdFVVAh/eDx0KyaVI
MCAm5R+DIXa9CMuPLMIGO8oVPqJHGGD4eIKEfkwpSSm0kM4cvEAkZUSXGdTn1FDEBIdylhCO
BBgUZeZIkygH8pSNAFC1Tp+3UOuc63OCyF7T1kpd1zMPUNO6Z+lur/tnEcMeGAaWM94VYQyM
IeWLn9u72wugVoKYbgEpkJUB3B18H3R3tmwwAwey2ixHdH8KUTwYwYeqFgfGWwXg+N3ESQQ1
q4GgxXzpm/mA5J/wmxWQRAmF6qQxlL2TbZKwsHUUkAGNo7UnT3twMbLvXqd8wuSA369TkpAM
LDtJYrwBULDdNZTtLQum1hnQp3nRkQiam/oioTEgs6o9YnTghb/0LwzXVM4UBF5Oi00fjqmP
8IS8w7A750uYAEOGwyuIpO8JTcIMHAWc7deBEWAm4AyaHziDJgcOtZSkwoOSZ5CWacEUE6Al
NRADo80A4GDrCmn2JXtfrzhivfcRJG77YuzP1ZXXAo7ssDAWvRyvgBAVkKaAHCWQsggYNW1X
8HQY4G+RRn0Gz5Yd926F+WnvfGv1Eud+d3qVOAaELsnk7/DDJLkAuEteyUkI6DqVXN/jCBgD
EsBostxCKLlj0Gt5qQYXRZxyqN4TkoGzpUEPJNtfkUXfi5TuV4DL2Q9SawuEWckQML3npUiZ
jtwJASmsGUpZMLy/hNZtjqN9ZV6xDNAmhMVAMNQP+iIFzZj+zIt3nLp73kkr432WvdlCMwCy
lPQ4gqor6eDqwTuKgBF86xFGAP+dkTQloE6rIIagSBo2R4ZKSGwawvB9Godnf9nRLHujWjI0
KaP2NUwXSmz3IwtKcHo+biEVCJkNJUhSelcJ8otRs25uXeGaCCY4kujrQoRYpcMmtspPdtpk
MHHpRi7+07ooM7NrdQD2d5s4Lsftqun7VjpqXX+t3dudM8cc6/x0ucl6V914rwW0YQ7xH/P6
ugT42c3ZBFXqYKe1OcH7Wf5sJRWfOhQeD07IfRtea2QXVFa347V6mjl3iqj4c+MFjpwh98RG
WaMJXjqL7XNV6zB/22XNZzByOobS6+Dy5QUKpybEQcWvFbUTmFFSnV9GUdYXFeTe5l37v8Ww
UcR0D949RTsUPAcKV+RVKppJFy3sgI+aLPR1So84F8XzYix4u4GGFZndFlbvq9//+qqDJob3
Oqd0/Fh6XnuKkhc9k9Zo7lEFSW3baqa5ll7HdSt2VOrwgCh1orzHLI2ggpVbnnYlKJzrvQt0
bgp720EB8tNpFg2Dy74cX9h10/kMHY4GZTaDU41i4cp/DvLP0N+mOjmxSluI9mGIymbam3Fs
cItuDHenYI1Ai8QMJkARCQloyLXyFPWU95U62RbjSUCHkfq7C0QGV9W1yKPnygBwOLfgNNDh
BGcu7VxL6xRpsVnbvr3ygxJ14eiXiirz7BowCpbMq34SCR7c/P0jKEVjrJMmV+TL25C3BK7R
JPI6ljL5Y5qmgZT0ydRmn18OrvzMJJUlEDUjAJXFxP8ISWdZBJmhC4opmAg0+FeUeeX3CUn8
+ktalnptPtv3K2v1q/aq7PxaFIq4OQyvVQ9F+VWQtLyo7PhOZ5lpagmBTbKZYePsRpfZ04gQ
94PWw0O3eo8sgk4FNNbSPkGeAEVVAFOeqOM0GWbAKUE0mO10fsFphNyqapK3NGj64wuTvdaZ
qPPDQKNoyytPp5rOR80xYs8/ffz2psPwfnv7+unj9weNP9QqVvfvH6DQSJrBn+gMMfCLmg8D
f74Yp6rzQZcjwF75WBFCh7EXhdctLDb/fNrQWMoYkGEDhp7WnVIfQTu6XCcSFFHIjDPHyPaJ
iKGk3my2HDf7NdH0DLbnFgaMtoa4+hJzAv9vgEyTYMaY8tvq8eH590J1jr8tKoap7o62g3iX
qSdMTuwEsvyn03RgzM2IeoPIcSqXQBLFu4Pi3iCcEiDThhNKvDl78iUIKv3EB7YR1lDldCnO
bX7KwajvSoUxzh2efmSIofRmABBeIeK0wdCpqP5STlGE/TSKCh71GVCtKmEStZpsJ4kjr4Ms
Hg9+NpLqa24hQ6BwLb4SAQ1SwnRtt2RyvZy58Z0ZgvrNmFTuNteFJTlmvgIheqUSQR15mouP
oUSKMiP+5Z8Jv+oguV3QlZ0MdOCekaNolOs17OS1Z0bMFbxWJ2Uh2vf1FpLvTL0Cx3qoSvWq
U2+OxNaqLyzqPtazufYnnjn4BMfKrMxcEzRzZl+n0pVLanUnNU/BkNYSwapM2iC8DbmyzabT
bk3zkpLMWVwszBhH++mNJQZ8wmKPBYhlJgGl7rmDeVwbBzA2F+A5BvAZO+gnmBLw9SCXhcDf
JTEMzlYeC4KTH/OWEkph/w2PjTF4MV7ZfL0TYDHG0W59DcuNko2OWosmI9F7VZZcCU7Rfj9V
ilEK9jONYGhUK/UBg8Nr8fgDEUq3cqMJ3UrEGCyDxiy8+x8neZI0gTOYrbx3pKjYKINCdDg8
s8sihLEkzuDOp8HkvU41GXjvVYFlFJwWZlNvSwraPP2J78vIThYs2h/BhgknUA+Y9xbcq2cu
ntpHfS7EMviziw7JNsEbku9ojN756o4xmm18s8QSSOm3WZ7SzPYQsSBpU9vbbC6Ct+QsMQqp
HS5LAndDz4xfkcWmCZEil+scmJ029UH6YrWH2PH5VxWbBm6Q7iZn13eHguYCT9Y9ngwUfHfn
EPmpuHBzowUUvIafxWG8wQe+K+c1F92hul5f1C2by3NxFsW1qtpRBTpqX+Dcp72H/XyXzQYo
gz5m4MGszTLteYDJ+Q3c01pZBOZdHoEdVkEC7suCcpYmKQitmxUh1pyofhAGwmSyKMlhOUiQ
effkYZ60heokzUyKEgKueMo8xc7WmIvJaWZDurPJv1srawcAxhABRWUM9hhccBdrfQvLECji
0G/dwibndViR37j3tHKEh5IuBh5LOiyOGekN0CY/1AfrfmER7sVVZZ1revC8lmY+p8RWrA17
wOqQgUdNZvxQXm/63reomqoIo0jx198+fZjNLfXwkhvV0tQ15zpYlikMshs1W97m6s3T/mbV
1stJBVPpVZz4G5Sbx3zNS3V34p1SRXndks58zWoL14Gp7bou940CmcwJb3VZXUbn5tokI+Of
ax5X1iK8ffrt9S3WT6+HUftNPre4sV+QW2ju3opFV+1ZyfZ0d1gMg4riG7wE5fEYS5jXrV4l
2lMFLSS6JF5xrJzunU/VyPHezo/kTfKCvtTqXOuFS0sOnrABHrt7Lvu9JiTrHGv20+cfryre
24fvD+bZNvX/Hw//OGrg4Yud+B+e8A/PR+yNzJUONIymq4eTOgEhKk646gP208JWfuGzmLKI
tYOao9aNxljbwnD5PWNtKh3FpnGefVXDwy/Gr4YV4B2OL+62gtUwH75+/PT58wcw7KqZE/o+
L87zkMj/+u3TmxxYH9/U5Zv/UK/pqCDBb7It1Z3YL5/+drIwn9ffgt3TCSjzNCaQwr/gGbMv
GEzkKk9iRAsgQ4WASsgkaNGR2FYJDLkQhEQszK4QlIAeyCvcEJwD9WhuBEd5XWACPxVq2J7L
HBHQP9zgcqVKXW/SlU5gp7BpqulwKngHaQuGQVzal/HQH6V1MdgXrH6ufU2E81IsjPaKMxWQ
51JtYGBndFKuM+1ObnJmVDcUNj/H4MRvV0WO2QCRkygGJ2AFqFV8tygWYyhPSVZJ/e566BnK
fH5JpAnAmQTERxGp+71eet6wRFY2CQAp+BShYMwYciAKvfmRuifFLrIrjP7WURSHuSoyDYaZ
JKdRFIiuv2M2BRr16FkG+g9acBJmlmXh19+6gWAcVIjnQ4b1/UyrF6p+/sEZBv58pmWZBl9d
DJia2cpdV8G+/vp1Z+SkssG3h67CGQ3lpQdBClu+Nge837dykHhb6Bq33Q1WMrWtN4c8DYqg
qIyw7LBd1CNjQIc9C4YjQMiLQC0hf/oi569/mZd7VBCjoCWfuzKRlgjK/WIMMJ3kO+WEea4L
4y+G5eOb5JGzpjoGmYsFpseU4jO8Wu9nZs7Yy+vDj7++vn7zP0ypC7JfY5RSe2L3+ZcI1q9y
9f/6+vbX94c/Xj//aeXnj8azSMnOcOQUO3c+DNU7NJs+Xr2q1dWl7z9sBerdqNVyS9mrq5P9
SaAkwc7H+yksBUhhuYm6BGi1DurZHs/taioUf33/8fbl0/+9PvQ3I+dAkdL80+swzoGehUqF
B/mBW2E2hrPINzEt0PENCApIbdc8F80YSzeSVjlNE7RZdQ2DPgQWFxd1FG2Uznvs+uZ5WLLx
wRpzfW5cFCcbB+guG9q4EGuzPfUo8kMwAGxDgSP4ZNdhos72lIvFkXu86FR2aGRS8OplyJaG
VrNBizgWLCIbQlVTiH2aEvYi+xqEjR4L2cRoB8NwhTRG9ocGgg8BbcZqIyqmW5RcqqPNLsPY
VSQyl+09i6lOz3lmujOYj6gxou+NiLrPENkYrVe51G213tCQCF2PcMInjkokxRkH21AWfoi8
+O7QJGaCvL+9ff6u4hr99vqv189vfz58ff3fh9+/SYtfpgRmzdCoNM/Qffvw5x/KTSuIVFVe
rSBx8he9PozloYaowvLZUNSyG/PnYYkx6WI6EMDyFLOT2yMX82tvAf14AB6CWzOURXK5ivWX
7tJcTi/jtTpCg1ElOOr9HsAvfgXVYxZmdwFFkVucYWiq/NE84Sg2Q7BKZv0aoGzlcnnmbpNV
fgCs1yvwVPFRO6J77wHOwtnCVDpxVhsZC7pE95nUs4e3bxtrt8rAhAqVNkLitoiJq9g4oUdm
ugoop9atjDk7wgHs32eyAuds1c0odlcexuXVkrjIEZU7xrPFanPeTpXXvW9SjH5tr0V+VcHz
ziWHnKcXluZWCje3LjdPJs+vHf35+cO/HzqpP332qqwZx1xVoLoK2R9dTcRiEc9i/FVOgGPP
aUfHtieUZvAquqY6XKrxXKtjYqkKQq6oLmt/k2vp/ZmPbZMAHzR/KFCQUaJ2C6iauszHx5LQ
HrknVivPsaqHuh0fZTXGmuNDvnGhzUnxoi7QHF+iNMJxWeMkJ9H+p9Yq9v2j/CdzTgUAhloq
X6iA61q37aVREWejNPu1gHwxVt5/lvXY9LKGvIpcFWPlUe+Yl7Xo1B2rxzLK0tI1wa1mqPJS
1a/pH2VuZ4Li5L5bvJVAln4u5bKdQVUQORfPrXoCITOBqsOcJHiICH2KQMEp+BTTlEBgW8nB
37AoZufG1kYsjsstV/XUnRuBFbBYkiTF+Ts8WYTAnszztq9V/N/8GNH0XlEEi/rS1LwaxqYo
1X/bZ9k7Ie9zK8G1FlVfqffbe+WPloE1vIhS/chu3ku1Jx0p6aEZRP2di0tbF+PtNqDoGJG4
hXvPxvk0zPpS1nKQX3mSogxsCItF2/YQy6U9XMbrQXbqkoAcc28SSYmS8h2WipxzsEtZLAn5
ZzREG1OHw8chdRPkZSyPRvlrTHF1jEBh2Nx5Dn9HVT9expjcb0d02qifVIa6sXmSbX5FYgCP
9QNuEZH0lpb3jYrNTDHpUVNtMNW9bCrZ10Wfpj/DAo5dh4VlN5BH7WDnxRDjOH/s9jhoQvNH
DnH0pdqql33qLs5wr+o7dQohbblejjLwcyaOmHBpAW+Ma83TnWBnaIvt+ty8TGttOt6fhhM4
nG+1kIrkZVDjJcNZBpcp546ukv1o6LqI0gKn8GaLpy7YpR2udXmqXBVvWr1nxNE41msXh+X5
aSupDrVcitqvbnGWba18i5XmR6ANJq2wTmuVJLXmIfAvvvIr51g5iTR9lqCt7u4yPQ/BYqt0
DllGuakbc/Waz7nuVByBshuUu9mpGg+MRjcyHu9ue7X3ZrVZvJKUYtr1LYnBCBdG1te8rMZO
sCRUHBbIXzmlnix/aubEhjJAnUW2u+VMdAJ2GKJ+wXhqZQfqz+qJ4P5cJESKCkkdyMMv4lwf
8un0IMG76H7a1JeYh0PbKyFbSoNs5JJ17OLNsajuH7cJlU3GEihtVyIsIgTvoism40UhZ6+8
HRLv/HCTMWVgCIeALcHBB+lXAMxO+0YOeujxc9kxGie2xbI9dL2aXovu9Lz5IXwQR2gjXzmr
Kfw8MEJTK7LZDCidF2MKAyR2plMbikFH05mD13LCJk99mO216nJj7wfZyqUGds+1GFJCvb2C
ajDeO8qpST/CDcyWUkmr2l5b/+PTc3199JQvFYh5ep5mfvT+24cvrw//9dfvv6vI8L7xeTzM
b3WvpUlae+nr44tNsj9z3hHQ+wPAV6pM5c+xbhr1UvdawwkoLt2LTJ4HgLT3TtWhqd0k4kXA
eSkAzEsBcF5SuFV9aseqLWs3DI4ED5f+PCHwVx3qE5xSFtPLWW4vrf4K5S5iV6esjlLzrcrR
vjmpCsqLx6Y+nd3Kq1iX03aIcNiV8a0+VXavE9juf8zvMAChKmX6i1zd9RMWG1VHZXBDW5HV
rU9wHKumPPDxNPQx3XjyTbLML1LBhU53cFwBVEqXu/DKbW1pjpAotecisNPrjz58+Pg/nz/9
9x8/1Ku+RbnzzqKynIomF2J6FQqo5tJMDuNauRV/7EtMHf1/xcwNPlBKK1N3h0IYrvgUHgAo
eooRACDzJW0A0t6L96Yq4Sobr8l3qpyXyiEdbn6Pa+OkeeWaL8XvyiB09LaKMfebIEjKPyF2
BEgPykBErn8UlPdyQSSsn5qYr2BB0E1pq/L64tXut7vv51i1uVEcpfbDFyt2KBMUpaC0rsVQ
tO1Gf61KUP1/Z2jNpeiDVXgqU9uV9swqVRX4/dVg939NIy7PLbQoKV/5y7mo3bnaLk1x7PiX
cuf0ubtfRfU0VpxD2v2ELge0c92UC+v0ouF6ysMLvd6Hzri8+EWUv6hED+e37z/gJ16sXLwr
j4okSvnJ1rnNTBpVeOuiqISKvwQkGbumP3IooXqB+5qLvN0CvcCzLthn7qGvDZb3goszeMt2
YZvflAGyP6p/bct7hXjdHKr8uXexef3xG2Mj4IgS8N0VVXmf5OTlIOmH5rk61hUcRcGwVMNL
exH/z9mzLaeOJPkrxDx1R2zv6I54mAchCdBYQrJKYM55Idw27SbaNl4bx86Zr9/KKklkllL4
zD6BMrPut6ysvNA6gcw+c6ezMN4S6VWLu3EpaCPblwV1mVu0YvEtDDsBrcQtBRQ4IuOlr3bp
uuTHtsDmNRd4VBB/mxdEumvSeg1uqgpsNJ4W4LfrZggxHAmpMA/ifHz4i+Na+kSbtYgWKTgX
3xTpcA2hXL5cQ+v0DjY3Em8XrvBwtpNtqYfulR8l9uxCRBDsWEcNZSaDopPXY7mzruVyhAiP
8QqUsZOuJ2C/HSjUqmS9q5gXAo7WruX4WH6rweAr0TUaN4+LwMW+Bi9QPzQyiGvLsj3b9gx4
mkMMWddQMlAoxdtwt+ML1jHK7h0aDHIKWPXWHjuj8TcUfNSXvcKawf10VuCWgzPE77GYm2qB
PtE26YC+MiAsDH/PPZa1uL1gXTYRa5XcYkPimaUDEm6kA4ZYA0YBVSgRf9iFLXzMfU1PE7hm
D3SOEeR9dTNcQKPWNQpr8rM9cND5SRTbjies0DeKJ4Z1CsI4DNDTPXFCyxl2d+P6I/4V9eTS
NqBjTWjiCMysjOo2eezP7B0zVVuD3WuLxf/XMFnn92gsXSZce5G79szszRbh7PqoXpedZvLH
6X3y+/Px9a9f7F8nkjOa1Mv5pOX8PiFaxkS8HR4gavEqSy6hH+WHkusti1/JXUr1MkSf5W4x
Cjt0paObl+/kqI2PAXhfGM0SgtR9a1JzBJQ3nW5hcvsM9VDVd03zfnx6Gu7Cjdy8l4YhBUbo
qMCjs6QlKuXuvyobY2Z22KJJRrNfpZKjlPwNx7USQkaqQPBxtRkpPoqbbJvhcNIETT0/EVTn
olL1tOrJ49sZwp99TM66Oy8zan04ayMeMAD64/g0+QV6/Xz//nQ4D6dT37t1tBYgFRufJH0D
lena13TyopaNrqcLEYQ/XI/1mGmlorntbA4v9FxAklTuY0PTtLqJ9yRAGwAGDAkAV3FTyjXE
WStKrMQ08vZD82mBndjib+/nB+tvmMD0oSJBKvhKN5QSMDl24l7CngFptm4WOtbbSKUUQVWX
RrUUWGtfDfMDFaZNliolqJFswcZRaWghlSGo6YCH6oiHbBTBWDuzJsqKcj73v6eCtZHuSdLy
+2yYazTfjWWq/KhcyTIRStT1g4fvY7kMNvU3Hj/1WHhAHGq08NW3IvQDd1j3oYOyDgPO/Ges
tiSiaOVNXGLTWRNHM+oWoiWphR+7XHsykdsO9g9NEcR3DcUEQ8xOwv1hGcovu2FzjVHWSIgA
QuQG12aUIjGczmBUeL2EwrObMXcxLcn81nVuri2s3tzaLH/ghq5P0lp9X8t1aPzdjWjrBZFF
BDazuoS8PsysaDg+i8K1uZrXcjXSAEMI44e8iBsn5t2gtARpIS9jU6bUrYSHbKkSwxoyXghC
omvdt9wvuP4XidwawgFHA2KOq9sizJYZO9cUhrsike2IWVMKzm4AgPGuz15FwqlAYwLiYwPv
TDazkOvZlGpcX0bVMwZ+QBDYI3MGtiCPdYlCNkpmk5JL2LEdl2lAXE1nPq2/eqldJ63buX5E
weLsywMvEfJS7HAN15grPtFpXa+Nhprgs9gZm+LObFiMjpv7fH+W14+Xr9pgOyEzphJOrMcw
3GcWDZyAob9fREWWfxuZmZLg+rQLwhnfm/bUCUd8YiEa7ydowp/J5zrr4HjUULXHXPGIhkiu
nkyiubGnTcScsIUXNsSNCIK7Pr+9hI3PmyT3JKIInKvNnd96IbcF1ZUfW8z8gBlpcbW58taF
SUZiXKD1ot6mrtRYB+/u7uKn19/kfez6GhhIw/ujrpH/LO48NZwk9RvM4IG3RyknTdfWuYrM
2dYahAHi8Ppxer9ecyR7bzEJuD+He4jgYOZVBGG2RGwsEUMtB3DHYAa2B1jv53EVrddpTkve
lyiGnY4HLafd0ohSn9ypoHwSyl0YIZZ8aqTQzi8zCQ24I1SHRu4iuSdVgn36q2fZFaTdF8sC
3RMvCNSGO1Utw61FC70AhLyD6XR9B8Z99POu+eLbOt43OyrKlx+GJUzfz/s6yhKU5XyzGLo9
UZkuMhI/4U5BSRky7b4ot+lAK6XFdRY5glQEMKs0qsSAXkHV5TfV/FKnwESr2bd9s2sVBvEo
rhLPm7JeBLIC+ivOMtAguBReRbVS71F6PJeaVq22tEL+wzLAdam6x0fvjgqhXwj2RSpEtOQ0
E8CACRQY5hC9hARZxRj+iEcUg+cNXItLI9oUePuApbW/4shEorHMSH+DMHMzAG6TynCLocBz
MHMaaUKXXcGKrNsM0Re81F6as1VRM7KyyecmsM5wOBwNMyqtYHFdCtG+Me9z0PP81j9sgaPx
j9Mf58nqx9vh/bft5Onz8HEmKii99fJ10q7MZZ1+m29wCJ8mWmY4LksMBkboIVh/m7tqD9Uy
O7W4su/p/mb+D8fywitkkqfFlJZBWmQi3g8c1rTIeblOBjWjG0sL7JYJmmctJhPRldnWJY+L
OOvpBrnHc8nmSF5uHw9xEmGFHGINuNv9FFzaj2KTrHS8EXwezat4BCenL4e53UTKTkNmXXH4
0MEPshegzwL3IhrAb/QvSB7ZnhhtCIdosGbKBVyXm0avJi2lk0v143z/dHx9Mj08RQ8Ph+fD
++nlcCbMRCT3ZTtw8FW4BXkW1gYz0us8X++fT0/KDvX4dDzfP4PMWRZ6Nt6Zo2Qasj45JcIJ
aTHXssSFdujfj789Ht8P2sc1Kb4vAwIcB7h5CqAufQOgDoNiVuerwnRj79/uHyTZK7g4G+mS
S7uNOC8SMvUMe77OCvjLfFutf6iY/NFo8eP1/Ofh40hKnYXY36D6JgbHo3noSN2H8/+e3v9S
nfLj34f3/5pkL2+HR1WxmG2lP3NJuPifzKGdsCou+OH18P70Y6KmHUzrLKYzK52Gvsf223gG
Wu5++Dg9wyvdT0xfR96TTS8Dne+kL7Lp7VqZpWmcNNoivDviotfH99PxER9lHQgparUp52VU
83HuukuCfkxh1uBS7BfVMoJA8ESRa51J7k5UbCQDUJddUL1a+b2PloXtBN6NZHkGuHkSBK43
9QYI0EX3rPmaR2AldQT33RH4lDBQLQY01G325o0IXGyfQeA+D/dG6D2bhXvhGDwYwKs4kbN6
2Fd1FIbTYXVEkFhONMweTO9sx2Z6RKSV8FmRa0ewsm1rWDFQE3bCGZejUiDmxSuEhDsHMIHL
tAPgPgM3LQAQnFiptXCwHNAstgHPwYfRsLs3sR3Yw2IlmJjSdeAqkeRTJp879cpZNlh3TjG4
ZVGV63SNzRQUQql3GrAkK2hAD8VfswE1WlZ2D2u6LhFT3iE64wM8jh1OPW7zW0lHwcbyu2DL
Ch7Jubzr6O5qzttsXkdGeOABkTaDSsD/AktXZR4VEWlfF/cffx3OyHPARQ+WYpAMAaQS0FkL
bFgA+ohQDXhcxfHOCtAZgwrKGvLhg6si268ykbnB1Iho0sZVU56qGTe4bdiAACszDoU//U5f
ZRWSBqwgmEicI11B+aGcWJTlzaYaEsobc1pFWNyhtTzaTPCtoYUy4r0hTR8v7YVHyo3Q54qU
tyffsDwykGzsYEpjeyM1lzhWT42SYJ13hImTOJ1afIsAp4O3MTjhWHDXqcYqpX1v84KFC5l+
LfySijV6QATb2B+px7WYIYisdYHLywmAQBvMzbNG7O/qKs8lcO2Eqyomc1J29EJeKjnYfrHx
PUtOzJiotq/uJA+/zsv4ZrDc4+fTw18Tcfp850JnKmUiIpvUkKou56QC2brRKLLzZnFdgs2p
XGlN4M15rp2rQL/moyyflzgQZedPtlghMUgnMNWkl/J1al7hvT68nM4HcBPKafzWaVE2KaiL
jDCzg8Q607eXjydGEF0VAqu2wKeWoi5BTW0cAwAT20uzLrUhpfbbKNgm3GXq8NIvdqfP18c7
eXNBMmuNkK38Rfz4OB9eJuXrJP7z+Pbr5AM07v44PiDNZc1uv8iLngSLU0w6rmO9GbROJzM8
PI4mG2K1BdX76f7x4fQylo7F60vYrvr74v1w+Hi4fz5Mbk/v2e1YJl+Rak2y/y52YxkMcAp5
+3n/LKs2WncW34+eXs/YF7QKLty/v+6Oz8fXfxl5X45kEOtv4w2eJlyK3tHgT02BfhUWXWTl
XuquPyfLkyR8PdHF1EVhVuGetYl2uU7SImJtZzB1ldaw2iPy7kQIIOi2iPBuiNF9uCzyioLT
R0LIfh7sDl17kuHWcGn8Pt2OaQKmuyYeEReDI++aU8rLsOgqA6HzZrHArqousH0850j35P2G
wtsnKQ4LVgCDaGKAvwGWDqgouFU7lGdZW0OC1X8Xgk1DG9OVKmCgexIHk4i7i6Hj5VVLI9oE
bC/Teg4Gihf1IUmGFvZxDFOHQ9pAUbLLXc8fAGiw4A5oyNMkcEqDlmrQiGlQhyVZz4vIDomc
TEIcZ8TQsYg8VnVuXsS2bynl0RznfYGapSIMaVUSaXFl/+na1MNIEdUJe8PVGOx2CQBU+0UN
f9OW68Ldg8noZicScv9WgGFMVoLlr4k3u/if4GuLuniMXYc1NimKaOph8XcLMCJHt0DdbZdc
JXgsHpbEhZ7PqSFIzMz3bSN+VAs1AbQVyl8nGx16FwdEii/iyCU+uURzI28zZOoCaB6NeKz7
f0jG+zkvz42liv6eNxFePFNrZtdk4U1t7NoDvmdElDt1goCutqkz49e5RBhJZyH59qZEXD4N
rMH3PltAtEbwe5LneFkRtLElyPtfYHyHe9uo9XREuRJQYw2azsjzxZT4zJXfM4fiZ96MfmO7
jiiZeQFJnyn1hAhHr49jCGVkU6AO375fVgSarrdpXlapHOVm4ClnlYWey0vNVrvpyB0wW0fO
bmcGy26RWrmYVixvYsfD0QAVIPQNwCwwATRUerSzLYePqwc42x7xU6CRrPtdiXHo5R5AvAIv
CAmIPK6IK9exaNB7CfJY7W/AzGzDXfJ6/93WncWlqJzAmdGeXEebKVGJ0pfwfsz7vPvQY/ts
LKj5hWT7NYmkYPXndACxvVG6SAACzi60CIkTR6lY3ka6RhVkhTbXHx0SvyF1ME9Yjj3MyXZs
lxv3FmuFwrYGudlOKCxqxt8iAlsEDu8TRuJlXrY/SCWmM9YeTCND1/OGScIgHK210IZyRqIm
jz3f45drF7K6GBtlFbrabTcOTtdiEdgWnYftVWjXjd9/+ny6AGfBk7TzFow4kDqVJ2Ke8kfd
IHF7d357lhcq42wLXbzbr4rYc4gHfJRK1+HPw8vxAZ4dle4bZVybXC6yarUX6VqMyIc1Tfq9
vEY0L9KA1TiKYxHS3SGLbkdiiVeFmFrUE6GIE3c09jjUJ6vB3ZBYVlh7XlQCf26/hzMS/WXQ
JVo/8PjY6QfCq2Is79qnV3wD5wnw9aMQbSeJln3TAhNRden6TDFvKqo+lRb/GZehC8FqM8ft
GGZMkjVGZXgcYSYMXMshtg/heuafIXSImq887+VbAeGofB1hEzEcvjvKi/h8qF9AeITHkd+E
1/D9mQNWhCI1ygI4n6M/c2uahUUrHjhebfJaPhG16+8hzeyi8XCBTn3upFGI0CQNRnpBO5Mj
pFNrpH1T7IVUcmMuVUYJQ4tesqoSHPLwW2kiPM/xWJTkaOyAde4HvE6AT7UicFyXHECS9/Bt
1nW8RIT06JOchjdlH1cBM3PogSdbYoWOMr02wL4/NY9UCZ26I1xhiw5GXPLrQ2TQb73mx5VF
0+sWPX6+vHQ+5I29Qcu/kk1REAMAE6dFFtzFdkDZi4mIDgWpQuuk6/A/n4fXhx+9vsq/wYw6
ScTfqzzv5LtaHr8EbZD78+n978nx4/x+/P0TVHmIikxnfUbk+CPptKnFn/cfh99ySXZ4nOSn
09vkF1nur5M/+np9oHpRcczC4833FaYd/bYi/2kxFzdeV7uHbJlPP95PHw+nt4OsS3cGX25B
wg4sLP7QINs1dk0N5H2Tt0ImdhVGya4WOooKlhnVwhsxC5gXS5vNabGLhCMvI/gwucDoIYPg
ZHcsqo1r4ZBZLcDcL9uDaPmtLkdlNlmzdB2L6LmN97g+4g/3z+c/ESfUQd/Pk/r+fJgUp9fj
2WSSFqnnsRGBNAY7mIl2rmUbAU00jHdLyxaNkLi2uq6fL8fH4/kHM5MKx6V8erJqRva0FVwS
LP4FUuKcsdgvq0Y47AG9ajYOOm1EJhk5n347ZKAG7dCbodwOzuC44eVw//H5rqNPfcp+YcSt
vFCyxZkshwJO+fNX4fACnBeZHQy+zRnaQnmx62JXinCKxV8dxMymh/MZ3RS7AHVstt7us7jw
HKK0gKGDhYRxfBlAIpdhoJYheVXAiGG2HWpMSNqu4VwUQSJ27Py/MuD4AINB2hONXwy9HGna
HYby88bstP9M9sK1CVO0AdEL3nsh2gz9hgCXCFAlYubizleQGZ4vkZi6Di5nvrKneM+Dbzzh
4kLSh1QXowBjR+5CVbhGxHsJCViZLCAC6oN/WTlRZVlcxholG2tZCzLStyJwbNkTrPJNd8EQ
uTxibMLHUhwbJkqhbGp2/08R2Ub8oxZTV7Xlk22mLaF1y4SEbDX1NrSVg+phbXS5KXsejUql
IeQNYF1GpvJdiymrxrUo/1zJaitPU/yWKzLbHvGkCSg2/KpoblyXPmbI9bTZZoJlg5tYuB72
gKUAU2fYYY3sd+1C4cLmAmjERh9w0yk3JBLj+Vi1cCN8O3SQLuA2Xue0pzXEpZEd00LJajgp
jUJhVaFtHth4+XyXoyG7nrB1dBPQxi33T6+Hs35PQNvD5ZS4CWdTTmlJIfCrwY01m5H1rV+2
imi5ZoHsO5hCmO850dLlvecXRez6DtaNbXdXlY3ikHgU2GJfQYMfIgPdTZJVEfuh53JLukWN
PICZVIQB7JB14drkeYjAzePGwA5OnM4oiRtiPfifz+fj2/OBxm1WMpsNkQ0RwpYpeXg+vjLz
pj/DGLwi6JwyTX4DHfXXR3kBfD2YgkEVCrveVM2XD9TKXw1P1VaFL7A9FV8lr6mjvr4+fT7L
/2+nj6MyuWAWg9r1vX1V8pE7fyY3cgV6O53l0X5k7GR8B+9QibBprL5o53tEhgAArPOtAfRF
Ja48i38YkRjbpW8ddANTFIQHaKrcsi0SaHOkVWyL5UBgc9W8qGa2xd9aaBJ9C4aYqJIxYviZ
eWUFVrHEG0vlUD4Wvs3NR8Ho83u+kjss2rOTSri4B1YVHpIsrmyLrN2iym3bN7+NF2wNMy6D
uUsTCp++RKlvIyMNM3dOCXU5QVK72VV1KoZboIKy0lGNMQppfP4euKocK0B5fK8iybwFAwAt
qQN2hXQCCXPEL0ztK1i5cCeXcGfmayc+B0m6dlqd/nV8gfsXLOHH44e2gxpMMsWg+ZTRgYhj
NbgqTvdb9kVwbjt4xVbELrVegEkW9Wgo6oXFCxfFbuay56FE+OT4kFmg13bgMVzC2W9z382t
nWmJ9kVH/JxJU7+XOcKUs4CJk/l8+3MmTvoEOby8gYSM3QHUHm1F8uBIC+Q4AcSus5DuoRmE
NEnroozLDXH7XOS7mRVgplFDyGNkUZFQheobveQ38mCiU0RBHNa/cLRzbQgJj8aAa2Q/ebCj
TPmhD0GsnwdAZSvMvShJXNQUab5f5XESq9xeaFJwg7BoOF1uwLZdbCZSfli5nQCQyuEoFjur
ahtK2AoGT8UU1NzlA8Beu7rXvEh9q4I2DkOLSgzoThO3frJlGceg1ZmIt8B4YFcLWoO0yrOY
yIbNAvvyqii+2WvLbsSm1ZksNavKuIlydkXLfTUFE511U5d5TvkYvTWtvk3E5+8fSrv00r5l
upaZx2CegmwzLsA2ABFBz2MIX7mOwH26o1JexkSmaF2U7JuyrtM18liBkTRHjBFRvi1pjjCZ
smIXFrdQJE1WZLs0R7XEU0qiq120d8J1sV8JdswIDbTHzKCM07yEp7s6SXmmjfYsSg1asXFU
sfwSaoX8kDO/f9asDu/gCkntly9aeMk5CrhGhqYFtbgwTDW7Cb1O6jJL8Pwc2m4mEWcx0/mG
xJ/9XkKBoBYikqjo2rm6m5zf7x/UGWquOrmE0RnUFGDq0ID/BzmIHAIirTQU0b3tIJAoN7Wc
YBIiShq6FGGvuVZFZIumjgx1WOXkpVmxc4RpbJcpmLPS7UWZUVS1XO+DJ/qLfPP/KnuW5TZ2
HffzFS6v7lTlnLEVO3EWWVBsttRRv8zutmRvuhxbSVQnfpRlzz2Zrx+A7AdIonVyN3EEoPkE
QYAEAfiqzRZ6IK+mjkx7ws4HwwYP85GJVGcnE7hMyOWmmLk6psH6Kb66tsRaqZswAVjXgBIj
xNr9UnvlabVI3MDZRUwxU92LnBe8HaSNM2d+KBz7daAwQ+I330GGLR3QIuYzXcUVm2MAA8XD
UGzMYPg2dfioAMxqUH8WHz/RbKIdsDo9o8oaQt0cIQjBh08Thnnw/KHM2qJ09r4qKTgxUKVJ
5kYjAYB1B5O1Tv1loqVNw8cdrhYNEhA2hDV32YgIeIZ0ZHjTVIPwBBlbN/QFID429d6jyj66
bG8b2kwlEX0qEu9+gqZkxDgZ8SuBmjlo5XGFDqSV07gKTXnMrSaJgmGzernqVA9r5/gADIaV
fwmHsX9apADlnmNQDDAj9XXp5gJ3wLAKF07VgL2C7ZwNQRxXQ4SlUdJbEHujYTDmQYdTgwg/
GZ0Cm6LmEg6Lpi7i6qylbxQszAHFUFlLtxPZuM4oXeAfNuQwpkbHtI+0wBEGqzhKMMVYC3/G
CjgCka6FyeaVpsWadp0QJ3mk+Ls/QoQ5eU03/4kwU7XATGfB9i1v7344+dwqCQLaFXUWZMLw
T/BZR7FMqrpYaMFnhe+ppuyAHl/Mv+AgpUlV0zXWtdRqNfvt2/3T0TdYYsEKwwd+zhQbAEaH
r1MPCGs+jUCrHMErpXP6rad8CC2X7RJdXpMFplEGpVYsnMfC+MfyHGk609xR9lQ2hJkNJ0bq
KjSG6Or5d1z6ZmXyDPoljquZ0/ce0gVqOiE3OD1mDYtZ2cu5ySIrUH8EDQs9fL0Rda0ZOCPI
BlylZKOdYPAWhSEB8EQHxU5hpE/Qkxsby9zrRXrDvb61OI1PWMNPdDNP+LdcXVtMgqm8yDmf
RkpS6qToOsMWgVGt/rGeWFyBIsh3Axo6MpQHw1Sb+JAusmN34Gsco3EwB+iNExt+BFd15IMF
DmQYYH74xuOEAU5mm2l/Uy8VLiSTkZLbwUGauH23EExowBnNReZJfAvBoAz4tu26S4TgIIHd
HGgJUowqAPY3hitLcefu2TQggCE+hDwbkdQqHNBLORCwDNNRXpzNfosO55AldMkmG+x3tw/X
5hzrhB3vyQ41jY4FR8+3cGjA8f3228/b1+1xUHBnjB2qG99bT9fVGWL+WADLEQuUxvmEH2O7
dvuni4vzT3+cHlM0ZnDGbaI9e/+RDp6D+8iei7sk9HrTwVycn7gtIpjZ5Dfnk998nMJ8mKyH
+r94mNlkpy/Ypy4eydlklecHCuYeSngknyYK/vTeeUzm4liPRe/z2VTBZ58mC774yJ+tI1FS
FchWLXdX5hRyOnMDq/lIzikMaUy0UX8w+1p5TwlKwfvcUoqpae7xZ36rewTnQUHxwUz1iKnV
1OM/TXaX965wSDj/A4fAW1qrIrlotbtADKxxYRhsF7Ykkbufmxi8ClPAheSYsEM1uvC7Y3C6
gG2VzSc8kFzrJE25ghdC9afMPkYrxWV46PEJtFXkkT8zBpU3CSfpnc57WTV7HBjlKz7ZL1I0
dez4NTV5gpzPmZ1Fu76k2rljqNu3INu7txe8bgoiDq/UtaOM4G+w6y4bhacCaL5we4vSFRgz
MFNIjxFgnTJq3QAyMmUxX3e2eEdATZXrNlpi6mUtel2ZtstGO+40K15T6FWzNspUZU79a51I
fuvuaVnDw4RPWgodqRzaiQY9GpstBtiVXbq00T3VJ+Orwxzl0tCghmwzvTI19zFkx67Q0NRp
lX0+Rif2+6d/P777dftw++7n0+398+7x3f722xbK2d2/wwRE33G63319/nZsOWC1fXnc/jRp
r7fmYnbkhP8a00Ie7R536Bi5+79b15VeSmMlomXeXgkNfJ/UYb4nlupGuYvZAGE05GrKGiEU
MOCkGq4MpMAqpsoxJz4wa27eLY8Cj2RdgvEAkB+YHj09rsNzKX/tjZYArIKi9x+VL7+eX5+O
7p5etkdPL0c/tj+f6bMMSwyGNQ3f3QFFuhD0aNoBz0K4EhELDEmrlUzKJT3S8xDhJ8AASxYY
kmonHvMAYwmJsu41fLIlYqrxq7IMqVdlGZaAmnpICiJdLJhyO7ijHrqoNkoqMU+VifbExmV2
ydUG1HdLHNS2iE9nF1mTBoi8SXlg2BPzh2EGY8TSB/IW3oWgtidWb19/7u7++Gv76+jOsO53
zED9K+BYXYmg/CjkECXD6pQEwodgLJXUUcUdmfa8mc2CokCWXqnZ+blJj2Sv+d5ef6Db0x3Y
XfdH6tF0Ah3J/r17/XEk9vunu51BRbevt0GvpMzCCWFgcglbqJidlEV63SX68dfdIsG8LeEK
U5fJFTNMSwFC66qXGnPzoOnh6Z4eefZ1z2XYnngewuqQlSXDcEqG36Z6zXB7Ec+np6fk2rVh
6oMtf61Nbg6/fIFB5OuGDYXXtRUjJg1Xqbf7H1NjhIkf/DlZ2mwQfq0baDi7tXf4Ky/jRe+X
t92/hvVq+X7GTA+Cg/ZsNkaohuMwT8VKzQ6MtSWowuWgZX16EiVxgFmw8nuSfbPojGlXFrEP
AzpkAjxsfBIk86nOMCbt9NeIp68eRvDs/EO4cWSREwm4X1tLcRouOFinTBEAPj/lRDogOCtw
EELvw2prUDPmxSKUqwttA8D4dazLc/dNglUVds8/nFvPQZYwuoHC9K4s7xTrmDc/eiYRmQJT
SoTcI2y424yqUgR3zkLDoY1UyJmx+cu0txJpJWbsY39X1IbDrnTpONoMU3QWzsS6cOOwuvCx
13Yinh6e0W/SVZX7zpnTxlBi3hQMM12wmZuGT8KGmuPVANodc1v/wdvH+6eHo/zt4ev2pX/z
uutiC3hMkldJK0vNXqr2/dHzhZfYg2ImZKbFTWWEp0SwCx2uPKj3S4J2gUKXrvI6wGKloN/H
voL9c/f15RYU+pent9fdI7Ml4NMubiWZJ19WnvYeYAybEqoDEwpEll2HkrjaLAmPGvSZwyWM
ag+H5hYgwntxD8pbcqM+nx4iOVT9sG1M946oRhzRIJT9cV6umeEV1XWWKTT5zXlBfU0dHQmy
bOZpR1M1c5dsc37yqZVKd0cNanRqGA/eV7K6wHuyK8RjKZaGOykB0o99VqKJoj4avRrLmXin
tcDDhVJZ7wf0VYiZ6yXL4/iu8ZvRafcmYfl+9/3Rurje/dje/QUGKvGVwXhCeJ9nTlc+H9/B
x/v/wS+ArAXF/s/n7cNw8G+vc+nZjnby6YT46vMxudDo8NaiIePLvuSB/0RCXzO1+eXBWsMU
3tVwEsX6l/3OuPS1z5Mcq4bpzev48/C6c0pqpEmuhG7N3Ta9cxLGSWUEzBPY/THLjnN3Kwsd
JazjpcbLybzJ5k5iHnsyJoh9NzijyqRNiky4Yai1BFMF5CQri+SpsyfLNtQJZZvUTevsnfL9
zPs55Btz5aHBwDpT82teoSMEZ16rESP02uMPj2LOHr0Cjl6xwE9n95TEhRwkTKeIUwJii3Wa
N82BKPKoyEifmRbgHTRuPe7+f2Mlrgflr1gRil6AIdy5cx2h5KrVgbOlOBepHpij39y0jnuZ
/d1uLhzB3EGNW2/JG0odSeLl+fPxQvP+NiO6XsLCYEa+o8BEJ9JvfzuXXwKYl61v6Hy7uEnI
eRBBpDdOwj+KKCbgNMu4AmlWFWnh6M4UisfjFxMoKJWgjKvglUhbNCvoPlcVMgE5caVgqLQg
qhEezoKMoC7JFmTy8FnZQeB+akN0yyMXOdgyk3dRlOZ0m7YB3YoQJ6JIt3X74QzWqlsW9CUV
5oZ7qVw/eMTmRd4jMCJo6WJFGSRqc8AtDWReLVJ7AkxkZlo4Tjf4+9CClulNWwty+pHoS1Ru
iBjOysTxPIEfcUQ6VSSR8YoFG5BMSFxA/wIPFAO9+JtKZwPCc3VopZLUWwUDzFboD5dJqgWb
w/FIlW4eILwOyRdsV8nbLW+r83eapNDKTol7s9CrFwb6/LJ7fP3LPm962O6/hzdPZoNdtb43
UweWwn+mMeyYxiMC85aksJ+mw8Hwx0mKyyZR9eezYao6bSwo4WxsBSZb6ZsSqVTwqll0nYss
kZMOgA7eyzoK2ui8QC1UaQ1Udgy6KZgcvMHq3P3c/vG6e+jUl70hvbPwFzLUY0tNC9AcYjui
cnMqnTVo2C+V5G5DYw2tbNdC5zb1ocNUJYgdfNmQcVaPViIy5QMNneolwDGudpIDt6YpN4B2
NQPHowtdllSZqCWxzn2MaV5b5CnNiWrKiAvzLKHJZecEnOAD9tnck1lrAevM9rQsjIAlEs+B
8xWslViZOOGydMLa//acmUkzxvrurl9a0fbr23eTayx53L++vD24qWgzsUiMP6i+JPJoBA4X
W3aWP5/8fcpR2VdUfAndC6sK74UxzP3xsdf5KhiOygjdNf5L53zA4k2IIcjQpZ1fXm5JE7eF
5qrWTN5qEZH5dOHt5QajyJcrRx4ihvUxrNwrewOAfdZ9reSh55jLguN/i0bHWCK3DcywYebs
fsYWtA0gzxB+iyPcGUDPX8WMPbYjMBy7W86hXCKmUVSC1YZRL6nOYgtDbL+5evUMqF66HPCL
wzqKde7ZxsZkLpKqyAO7LqgJhEzMnQj0/s2Wcr0J22m9s7l566RPKnyu6gYY9twU1rs/Jv8E
x70a+lWkrT1d+XBycjJB6RtVHnq4sY65vnvE5la+ki5jd100N+mNnzl5lPCwJ0QdlcqjyS3C
G+0r6OaiNjLHG4qrLGwEUOMNyoTLyUCj52FhUA2YVa4TisXlRZY13XMk3mWkWxQm34XxB+B0
DuvXsBK4ZsMDL4tdFxotfqgSqJIac/+i9mstKd+dYFxoHrMtEz3mK0Gio+Lpef/uCEMFvj3b
TWN5+/jdzfYBFUr0Yyi8hzMcHl/sNMpJrJ1Io4YVDcm3ja9smnIMcz7uuUVcTyJRb8Iw8hkl
MzX8Dk3XtFM6O1hDu2xgYGtRrdgpXF9iUj65jNhUdkag2lqoRD08uNZrCjbq+zfcnRm5aNeE
Z4VYYHfqTGHmqQnlA65snylxTlZKlZ70swdSeO87bgP/2j/vHvEuGHrz8Pa6/XsL/9m+3v35
55//Tc6q8G2VKdvkGQ0Mj1JjUvnufZWrlCNCi7UtIochnRLJhgC7O7mI0dRsarVRgdLQJwDz
4RPk67XFgIgu1qWolz6BXlfOCxQLNS30LEKEgbXEkTJgUReo1lepUmUoc7rxM+Zob2lxq9K0
A1YPPs6zkn6oZuzZeLI2sFPsfzQei1WRLXUtkjq0SkYT7z9gnmEZoR85Gr69pKWGZu9kPi5J
1MPRNavJK6UiWBT24Gx6m7LbsCv6/rLazv3t6+0Rqjl3eGJLNN9uvBM6dJ1KwAHpqUC/PeAx
tKPkG5UgbyNRC7TYMERS4nqEHWybW77U0Pe8Bt256numZcOqWXaFSXK9xrMGkLQmprt3doXw
Kb5AHOhH5DvOSsMC/HlEoLqsDvCS2x9/LYBotoaRNiYRtwoEqJbyui7IKsuL0jaF7CxG8Rrs
t8PYBSjqywkay8eZeUgLg4IH8B4JvqxD1jWUxtoj7GELxYAirfeywhYsXflljlv8FFkmarKh
d24I4A8s+bqt1gmasn7zSVGdQVSt6cFYqZXKgFnBXJtsuVNff57jV9QRMudSAXvgVm5eUXXf
cMcGU1M2NVvj88qeANYGXn3xeS9QJ/WLhjEA1SJmyrQbtIWz29dynYr6EEHHQB2TcHK9Y5Eq
F2W1LOqAd3pEf07gzeMcJCVMf9dpY/V6W7GBixyEl8DLMfuBH33DJweGPkhYXef1kgnoTby6
sd+Wd5P8C/8+feS8dg7LepkJ7aSZpUw8EBysTqTmgBk7wdItJGbI63ppJ4fjwm7W+u30l4+o
BYjO0pO140L9HQqjaPZ8MdVpWgx77TcsYnPsGFiAlcCg6mHUkpfd/u5/nY2FHs7W2/0r7vSo
4ErMfnj7fUveADQ5PZ03P638puc6Fux238LUxjSKxRlB6vqv9psunnwWuuMlGy6iH4WMJyKv
1GMju6fLc957GyN5qOeQ4boCbgosO7DnkMnsLJfOUQfSc3spbC5GLFpF2fObSVcRDeBiDRS8
wq4ccWvgWZLjOamjZlpGA1qm5nmvjRle93WEOV4VheoBvWOaYEznsingSpBkKMgmvrXq8ocz
ZvmZrizVJmpoLDHbQXtXYR9KVN4ngKyc+w7rQgHgmmbiNdDuJt8tfZ7UmfCrbJrEeeVjgBtz
icbLKMRjUIIYtuMp01PjFXJ/CuJ+OukYZbBJxDk5W25ZZUE7oUe89W+7VuFmg45SY+iIJI/w
KyKp3eHgEssPQq7mzuuhNJNS3Rcp9gNWhFjfDYoYTUnqWhEw16iEYCrqCdazfTeiNGAv8x7H
+Kn4/cPLNNACuNBU/bdo4iW1VyZ8x0DN4xI8o6SRoFU29NZ9ScKL6uC5ib1s+3+0pd0v6lAB
AA==

--tKW2IUtsqtDRztdT--
