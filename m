Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBMEWRWDQMGQEJZIXT5A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23c.google.com (mail-oi1-x23c.google.com [IPv6:2607:f8b0:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B2E93BC27C
	for <lists+clang-built-linux@lfdr.de>; Mon,  5 Jul 2021 20:10:58 +0200 (CEST)
Received: by mail-oi1-x23c.google.com with SMTP id t22-20020a0568081596b029023a41b03dc9sf12651107oiw.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 05 Jul 2021 11:10:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625508657; cv=pass;
        d=google.com; s=arc-20160816;
        b=zm/Uy3OpyftsgVeNH/xScAOZIXUXVplYa4XLyakV2hbm6rCPu+9bq0126/UuMPw8gT
         +O5R3hOlEr3r8YcDMlHDWzg+w6ijeBfqAAxY1rSzsEXHEBijqO1aA8gRgLvAuqr9UwTN
         QtMBM1frgD6OkOnaHJb6ennf+ZztowBHQYHarO8gLjZZ5CyyFK+1HfqyJ86OsnxjtqoM
         trR0tr10KJKH6iuKUBr4l5mf3ZhugVn7oUKU1vaZ55tFMkx9RkRQ/7eVsMMX+K2kDgCK
         Ozd/sUsTyq15S0GXfpA2tuZpNyvqhur08GZ6y263Sije63actUc8Te+kFMJH0Ru5uJv8
         OMVw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=ecWhON44nk04Utk2N3NX43mi4WNBjJWGrRmBgJJW5zk=;
        b=LbTKQZe2JB+gs1esIx11MRrOXBdV8M1KbvfeJPMJJqRcdk5vqBjcq6qVZ03zmBJJ4Q
         G64QifDcb0lKkcU2UH7Ad1QnloIV91RzX99OLb/kHV542QxygznjGvPtP1SO/+LlM2N2
         RER8uv3dh3VRX/TiRfCcSbbTo46/VfbkOZwF4D3nZQRfNkB8unrZttbFkU3rnu1tGaBS
         tewfJb4oKana8EL52nHXleaxqmBuzi27ii+QFiBF/Z47J+OITdCg34IwZ+B64wnO+085
         l5gvoWbBEm9Gg45jj9k73eHAUcDMcUNZpxt6w37taHDaftGuTDPTa/SoP6sndGp4GARz
         kILg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ecWhON44nk04Utk2N3NX43mi4WNBjJWGrRmBgJJW5zk=;
        b=RUGvL3SK0d1tBJxVqrg3gaVTU5rgsay64ma69ZqwxpyuZeSfCeO1wh87Ux0lYsEYPA
         wyUTJyFS5nhbz5HlsfO9a3/GyW0klQWaPbSMmF4DTCk8UUaAZzvxcAUAy5xS3452n/OE
         Uru3U6BrNP+hDRw3MZylLfdhABFdpddKlhGqnbEWiXWB0TBRJsGQ7Ny82MYxp+JKxkOE
         NFyXw+audQjTb3exwRxC9DU4b08fRtLYhHHfgq6WLzdNWinTmpB89uKyyojp2C4Xf7h/
         5JzqQ5LIzJ295wx4/UUUoFzIW5x3VRQuM3fttL2vVMNWyutSprQrRXP53eSag0AQ6XG6
         qcqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ecWhON44nk04Utk2N3NX43mi4WNBjJWGrRmBgJJW5zk=;
        b=h8WZN5a4M83HVBsrnJGEkEXA9rA5YCtVU1f0OzTpcngilZKjn0/QJ7ej2vQjAngvwA
         Kmy4uhOjZ+caGz9VPPL9YIfuZ4PPSY48QllKuIfEC5ziQpH98tiW9v9jH3+rJzZ+3Jib
         R6a+LlVOiE0GRIRmdsIVQyjGs4tWHI/o7jOXMmkCnJ5+7UAIphKNcNtVqbAvSrAJjpTX
         9dH2Upi5hdojW5TxSWnxsekXA1WsiYAqxE3WNIt7JpwuCh1PHEKw0ISsfAw6L1Zyfe+Y
         towlfducv0S7rG5NulUjduAmowrLjgd4pOZG0qJBWJxR8u/HSAb9SyNttF0KnURJs/3n
         ZvjA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530DkFIbFuUr7G/UBZU2n5kbPK+AEpp9p9+wXXml25kisawt8XZP
	goyKhQQ1n6XG85QVgGV9I6c=
X-Google-Smtp-Source: ABdhPJzFw2isrg/LzHuCo/brYWXaAtUpORgI5dsYa3V4vWdqlt1VoPklC9udugyvn5mG9ktnaCOacw==
X-Received: by 2002:a05:6830:22d6:: with SMTP id q22mr11452156otc.40.1625508656996;
        Mon, 05 Jul 2021 11:10:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1f24:: with SMTP id e4ls6815394oth.4.gmail; Mon, 05
 Jul 2021 11:10:56 -0700 (PDT)
X-Received: by 2002:a9d:5e8b:: with SMTP id f11mr11884233otl.274.1625508656425;
        Mon, 05 Jul 2021 11:10:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625508656; cv=none;
        d=google.com; s=arc-20160816;
        b=cdEXFiX1cH5+DK+WZ9VO9WARKIFxxa7opDoQkDKO8R/b13cAZkhUhSaphkT1ZS3bDM
         AfrHF/mvbK0f4sUeLkxLHohjuMZ5jYIMuajeFyqAxmmzFoh7S4BPbLyfLWsCkedHaTtn
         h7si+JeMecUnHnIC/SsBEwk0iMXtpuXC1rDu87ZD1Cx01MCWOUIU57Ju/b3SpyDePyye
         fPKbT0lpu0GyYPG/NYGGeO0LY8qbSr1FS4hobFNhmHBiTi37Un5pJspFkd3NnvHb27y5
         TjAuYvF9im/ggyU8zfU8g4RYyFBDTk5ZmC6OxuKAtz3l6NdE0sUNq3ODj561aBFwcxvk
         +WoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=SvZpOtmCXkUXTRiDsiQcoa4MQfKogEtJw/eat9tQAqQ=;
        b=aQKX3FLGsrF+lBbtZd4fCqUUg5vgUM/8fGc4zAs78M6xktY0ZKhDWEzuIL+KDTNilu
         nIY88SQbkbbDMzLToZ+4HwXzmHZzVlikl9s+lF5mV5hCNt7beu1RqUmG9N5Tb11a9wNN
         Uz//GefWVTUz/o7kEQGuR9IoonzdmsajkAelpW+GycDCv+KdP3fB8UJPJjrsUm1B3/us
         4S0cFhcXZTIIMXn200uH50Pq+hM4bhmgRAElQCpZNtAyezREx699OFaSXUlHZVrtNXHP
         6k8se7cCDRTStcn4yGX/ixJlQ5eNbWW4kqcqcDq14m9KOcT4kDrxwDZsrgfVDs2Ghx19
         xo/A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga14.intel.com (mga14.intel.com. [192.55.52.115])
        by gmr-mx.google.com with ESMTPS id m16si1458824oih.4.2021.07.05.11.10.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Jul 2021 11:10:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) client-ip=192.55.52.115;
X-IronPort-AV: E=McAfee;i="6200,9189,10036"; a="208830805"
X-IronPort-AV: E=Sophos;i="5.83,326,1616482800"; 
   d="gz'50?scan'50,208,50";a="208830805"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Jul 2021 11:10:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,326,1616482800"; 
   d="gz'50?scan'50,208,50";a="646907436"
Received: from lkp-server01.sh.intel.com (HELO 4aae0cb4f5b5) ([10.239.97.150])
  by fmsmga005.fm.intel.com with ESMTP; 05 Jul 2021 11:10:53 -0700
Received: from kbuild by 4aae0cb4f5b5 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1m0T3U-000CWX-Bp; Mon, 05 Jul 2021 18:10:52 +0000
Date: Tue, 6 Jul 2021 02:10:42 +0800
From: kernel test robot <lkp@intel.com>
To: daniel.almeida@collabora.com
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org
Subject: Re: [RFC,WIP PATCH 2/2] Cedrus: add support for dynamic arrays in
 H264
Message-ID: <202107060150.UUS45nAt-lkp@intel.com>
References: <20210702020129.470720-3-daniel.almeida@collabora.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="r5Pyd7+fXNt84Ff3"
Content-Disposition: inline
In-Reply-To: <20210702020129.470720-3-daniel.almeida@collabora.com>
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


--r5Pyd7+fXNt84Ff3
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi,

[FYI, it's a private test report for your RFC patch.]
[auto build test ERROR on linuxtv-media/master]
[also build test ERROR on next-20210701]
[cannot apply to sunxi/sunxi/for-next v5.13]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/daniel-almeida-collabora-com/cedrus-h264-add-support-for-dynamically-allocated-ctrl-arrays/20210702-100300
base:   git://linuxtv.org/media_tree.git master
config: riscv-randconfig-r011-20210705 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 3f9bf9f42a9043e20c6d2a74dd4f47a90a7e2b41)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install riscv cross compiling tool for clang build
        # apt-get install binutils-riscv64-linux-gnu
        # https://github.com/0day-ci/linux/commit/a7e6f08c21b9153ac6bd1b556f389d658a3b8cc8
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review daniel-almeida-collabora-com/cedrus-h264-add-support-for-dynamically-allocated-ctrl-arrays/20210702-100300
        git checkout a7e6f08c21b9153ac6bd1b556f389d658a3b8cc8
        # save the attached .config to linux build tree
        mkdir build_dir
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross O=build_dir ARCH=riscv SHELL=/bin/bash drivers/staging/media/sunxi/cedrus/

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

                                                                           ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:87:48: note: expanded from macro 'readb_cpu'
   #define readb_cpu(c)            ({ u8  __r = __raw_readb(c); __r; })
                                                            ^
   In file included from drivers/staging/media/sunxi/cedrus/cedrus.c:21:
   In file included from include/media/v4l2-device.h:13:
   In file included from include/media/v4l2-subdev.h:15:
   In file included from include/media/v4l2-common.h:270:
   In file included from include/linux/spi/spi.h:15:
   In file included from include/linux/scatterlist.h:9:
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
   In file included from drivers/staging/media/sunxi/cedrus/cedrus.c:21:
   In file included from include/media/v4l2-device.h:13:
   In file included from include/media/v4l2-subdev.h:15:
   In file included from include/media/v4l2-common.h:270:
   In file included from include/linux/spi/spi.h:15:
   In file included from include/linux/scatterlist.h:9:
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
   In file included from drivers/staging/media/sunxi/cedrus/cedrus.c:21:
   In file included from include/media/v4l2-device.h:13:
   In file included from include/media/v4l2-subdev.h:15:
   In file included from include/media/v4l2-common.h:270:
   In file included from include/linux/spi/spi.h:15:
   In file included from include/linux/scatterlist.h:9:
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
   In file included from drivers/staging/media/sunxi/cedrus/cedrus.c:21:
   In file included from include/media/v4l2-device.h:13:
   In file included from include/media/v4l2-subdev.h:15:
   In file included from include/media/v4l2-common.h:270:
   In file included from include/linux/spi/spi.h:15:
   In file included from include/linux/scatterlist.h:9:
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
   In file included from drivers/staging/media/sunxi/cedrus/cedrus.c:21:
   In file included from include/media/v4l2-device.h:13:
   In file included from include/media/v4l2-subdev.h:15:
   In file included from include/media/v4l2-common.h:270:
   In file included from include/linux/spi/spi.h:15:
   In file included from include/linux/scatterlist.h:9:
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
   In file included from drivers/staging/media/sunxi/cedrus/cedrus.c:21:
   In file included from include/media/v4l2-device.h:13:
   In file included from include/media/v4l2-subdev.h:15:
   In file included from include/media/v4l2-common.h:270:
   In file included from include/linux/spi/spi.h:15:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/riscv/include/asm/io.h:149:
   include/asm-generic/io.h:1024:55: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           return (port > MMIO_UPPER_LIMIT) ? NULL : PCI_IOBASE + port;
                                                     ~~~~~~~~~~ ^
>> drivers/staging/media/sunxi/cedrus/cedrus.c:59:14: error: use of undeclared identifier 'V4L2_CTRL_FLAG_DYNAMIC_ARRAY'
                           .flags  = V4L2_CTRL_FLAG_DYNAMIC_ARRAY,
                                     ^
>> drivers/staging/media/sunxi/cedrus/cedrus.c:216:30: error: invalid application of 'sizeof' to an incomplete type 'const struct cedrus_control []'
           v4l2_ctrl_handler_init(hdl, CEDRUS_CONTROLS_COUNT);
           ~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~
   drivers/staging/media/sunxi/cedrus/cedrus.c:173:31: note: expanded from macro 'CEDRUS_CONTROLS_COUNT'
   #define CEDRUS_CONTROLS_COUNT   ARRAY_SIZE(cedrus_controls)
                                   ^
   include/linux/kernel.h:42:32: note: expanded from macro 'ARRAY_SIZE'
   #define ARRAY_SIZE(arr) (sizeof(arr) / sizeof((arr)[0]) + __must_be_array(arr))
                                  ^
   include/media/v4l2-ctrls.h:513:37: note: expanded from macro 'v4l2_ctrl_handler_init'
                   v4l2_ctrl_handler_init_class(hdl, nr_of_controls_hint,  \
                                                     ^~~~~~~~~~~~~~~~~~~
   drivers/staging/media/sunxi/cedrus/cedrus.c:223:29: error: invalid application of 'sizeof' to an incomplete type 'const struct cedrus_control []'
           ctrl_size = sizeof(ctrl) * CEDRUS_CONTROLS_COUNT + 1;
                                      ^~~~~~~~~~~~~~~~~~~~~
   drivers/staging/media/sunxi/cedrus/cedrus.c:173:31: note: expanded from macro 'CEDRUS_CONTROLS_COUNT'
   #define CEDRUS_CONTROLS_COUNT   ARRAY_SIZE(cedrus_controls)
                                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/kernel.h:42:32: note: expanded from macro 'ARRAY_SIZE'
   #define ARRAY_SIZE(arr) (sizeof(arr) / sizeof((arr)[0]) + __must_be_array(arr))
                                  ^~~~~
   drivers/staging/media/sunxi/cedrus/cedrus.c:229:18: error: invalid application of 'sizeof' to an incomplete type 'const struct cedrus_control []'
           for (i = 0; i < CEDRUS_CONTROLS_COUNT; i++) {
                           ^~~~~~~~~~~~~~~~~~~~~
   drivers/staging/media/sunxi/cedrus/cedrus.c:173:31: note: expanded from macro 'CEDRUS_CONTROLS_COUNT'
   #define CEDRUS_CONTROLS_COUNT   ARRAY_SIZE(cedrus_controls)
                                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/kernel.h:42:32: note: expanded from macro 'ARRAY_SIZE'
   #define ARRAY_SIZE(arr) (sizeof(arr) / sizeof((arr)[0]) + __must_be_array(arr))
                                  ^~~~~
   7 warnings and 4 errors generated.

Kconfig warnings: (for reference only)
   WARNING: unmet direct dependencies detected for LOCKDEP
   Depends on DEBUG_KERNEL && LOCK_DEBUGGING_SUPPORT && (FRAME_POINTER || MIPS || PPC || S390 || MICROBLAZE || ARM || ARC || X86)
   Selected by
   - PROVE_LOCKING && DEBUG_KERNEL && LOCK_DEBUGGING_SUPPORT
   - DEBUG_LOCK_ALLOC && DEBUG_KERNEL && LOCK_DEBUGGING_SUPPORT


vim +/V4L2_CTRL_FLAG_DYNAMIC_ARRAY +59 drivers/staging/media/sunxi/cedrus/cedrus.c

    30	
    31	static const struct cedrus_control cedrus_controls[] = {
    32		{
    33			.cfg = {
    34				.id	= V4L2_CID_STATELESS_MPEG2_SEQUENCE,
    35			},
    36			.codec		= CEDRUS_CODEC_MPEG2,
    37		},
    38		{
    39			.cfg = {
    40				.id	= V4L2_CID_STATELESS_MPEG2_PICTURE,
    41			},
    42			.codec		= CEDRUS_CODEC_MPEG2,
    43		},
    44		{
    45			.cfg = {
    46				.id	= V4L2_CID_STATELESS_MPEG2_QUANTISATION,
    47			},
    48			.codec		= CEDRUS_CODEC_MPEG2,
    49		},
    50		{
    51			.cfg = {
    52				.id	= V4L2_CID_STATELESS_H264_DECODE_PARAMS,
    53			},
    54			.codec		= CEDRUS_CODEC_H264,
    55		},
    56		{
    57			.cfg = {
    58				.id	= V4L2_CID_STATELESS_H264_SLICE_PARAMS,
  > 59				.flags  = V4L2_CTRL_FLAG_DYNAMIC_ARRAY,
    60				.dims	= {32},
    61				/* FIXME: I suppose these last two will not be necessary */
    62				.type	= V4L2_CTRL_TYPE_H264_SLICE_PARAMS,
    63				.name	= "H264 Slice Parameters",
    64			},
    65			.codec		= CEDRUS_CODEC_H264,
    66		},
    67		{
    68			.cfg = {
    69				.id	= V4L2_CID_STATELESS_H264_SPS,
    70			},
    71			.codec		= CEDRUS_CODEC_H264,
    72		},
    73		{
    74			.cfg = {
    75				.id	= V4L2_CID_STATELESS_H264_PPS,
    76			},
    77			.codec		= CEDRUS_CODEC_H264,
    78		},
    79		{
    80			.cfg = {
    81				.id	= V4L2_CID_STATELESS_H264_SCALING_MATRIX,
    82			},
    83			.codec		= CEDRUS_CODEC_H264,
    84		},
    85		{
    86			.cfg = {
    87				.id	= V4L2_CID_STATELESS_H264_PRED_WEIGHTS,
    88			},
    89			.codec		= CEDRUS_CODEC_H264,
    90		},
    91		{
    92			.cfg = {
    93				.id	= V4L2_CID_STATELESS_H264_DECODE_MODE,
    94				.max	= V4L2_STATELESS_H264_DECODE_MODE_SLICE_ARRAY_BASED,
    95				.def	= V4L2_STATELESS_H264_DECODE_MODE_SLICE_BASED,
    96			},
    97			.codec		= CEDRUS_CODEC_H264,
    98		},
    99		{
   100			.cfg = {
   101				.id	= V4L2_CID_STATELESS_H264_START_CODE,
   102				.max	= V4L2_STATELESS_H264_START_CODE_NONE,
   103				.def	= V4L2_STATELESS_H264_START_CODE_NONE,
   104			},
   105			.codec		= CEDRUS_CODEC_H264,
   106		},
   107		/*
   108		 * We only expose supported profiles information,
   109		 * and not levels as it's not clear what is supported
   110		 * for each hardware/core version.
   111		 * In any case, TRY/S_FMT will clamp the format resolution
   112		 * to the maximum supported.
   113		 */
   114		{
   115			.cfg = {
   116				.id	= V4L2_CID_MPEG_VIDEO_H264_PROFILE,
   117				.min	= V4L2_MPEG_VIDEO_H264_PROFILE_BASELINE,
   118				.def	= V4L2_MPEG_VIDEO_H264_PROFILE_MAIN,
   119				.max	= V4L2_MPEG_VIDEO_H264_PROFILE_HIGH,
   120				.menu_skip_mask =
   121					BIT(V4L2_MPEG_VIDEO_H264_PROFILE_EXTENDED),
   122			},
   123			.codec		= CEDRUS_CODEC_H264,
   124		},
   125		{
   126			.cfg = {
   127				.id	= V4L2_CID_MPEG_VIDEO_HEVC_SPS,
   128			},
   129			.codec		= CEDRUS_CODEC_H265,
   130		},
   131		{
   132			.cfg = {
   133				.id	= V4L2_CID_MPEG_VIDEO_HEVC_PPS,
   134			},
   135			.codec		= CEDRUS_CODEC_H265,
   136		},
   137		{
   138			.cfg = {
   139				.id	= V4L2_CID_MPEG_VIDEO_HEVC_SLICE_PARAMS,
   140			},
   141			.codec		= CEDRUS_CODEC_H265,
   142		},
   143		{
   144			.cfg = {
   145				.id	= V4L2_CID_MPEG_VIDEO_HEVC_DECODE_MODE,
   146				.max	= V4L2_MPEG_VIDEO_HEVC_DECODE_MODE_SLICE_BASED,
   147				.def	= V4L2_MPEG_VIDEO_HEVC_DECODE_MODE_SLICE_BASED,
   148			},
   149			.codec		= CEDRUS_CODEC_H265,
   150		},
   151		{
   152			.cfg = {
   153				.id	= V4L2_CID_MPEG_VIDEO_HEVC_START_CODE,
   154				.max	= V4L2_MPEG_VIDEO_HEVC_START_CODE_NONE,
   155				.def	= V4L2_MPEG_VIDEO_HEVC_START_CODE_NONE,
   156			},
   157			.codec		= CEDRUS_CODEC_H265,
   158		},
   159		{
   160			.cfg = {
   161				.id	= V4L2_CID_STATELESS_VP8_FRAME,
   162			},
   163			.codec		= CEDRUS_CODEC_VP8,
   164		},
   165		{
   166			.cfg = {
   167				.id = V4L2_CID_MPEG_VIDEO_HEVC_DECODE_PARAMS,
   168			},
   169			.codec		= CEDRUS_CODEC_H265,
   170		},
   171	};
   172	
   173	#define CEDRUS_CONTROLS_COUNT	ARRAY_SIZE(cedrus_controls)
   174	
   175	struct v4l2_ctrl *cedrus_find_control(struct cedrus_ctx *ctx, u32 id)
   176	{
   177		unsigned int i;
   178	
   179		for (i = 0; ctx->ctrls[i]; i++)
   180			if (ctx->ctrls[i]->id == id)
   181				return ctx->ctrls[i];
   182	
   183		return NULL;
   184	}
   185	
   186	void *cedrus_find_control_data(struct cedrus_ctx *ctx, u32 id)
   187	{
   188		struct v4l2_ctrl *ctrl;
   189	
   190		ctrl = cedrus_find_control(ctx, id);
   191		if (ctrl)
   192			return ctrl->p_cur.p;
   193	
   194		return NULL;
   195	}
   196	
   197	u32 cedrus_control_num_elems(struct cedrus_ctx *ctx, u32 id)
   198	{
   199		struct v4l2_ctrl *ctrl;
   200	
   201		ctrl = cedrus_find_control(ctx, id);
   202		if (ctrl) {
   203			return ctrl->elems;
   204		}
   205	
   206		return 0;
   207	}
   208	
   209	static int cedrus_init_ctrls(struct cedrus_dev *dev, struct cedrus_ctx *ctx)
   210	{
   211		struct v4l2_ctrl_handler *hdl = &ctx->hdl;
   212		struct v4l2_ctrl *ctrl;
   213		unsigned int ctrl_size;
   214		unsigned int i;
   215	
 > 216		v4l2_ctrl_handler_init(hdl, CEDRUS_CONTROLS_COUNT);
   217		if (hdl->error) {
   218			v4l2_err(&dev->v4l2_dev,
   219				 "Failed to initialize control handler\n");
   220			return hdl->error;
   221		}
   222	
   223		ctrl_size = sizeof(ctrl) * CEDRUS_CONTROLS_COUNT + 1;
   224	
   225		ctx->ctrls = kzalloc(ctrl_size, GFP_KERNEL);
   226		if (!ctx->ctrls)
   227			return -ENOMEM;
   228	
   229		for (i = 0; i < CEDRUS_CONTROLS_COUNT; i++) {
   230			ctrl = v4l2_ctrl_new_custom(hdl, &cedrus_controls[i].cfg,
   231						    NULL);
   232			if (hdl->error) {
   233				v4l2_err(&dev->v4l2_dev,
   234					 "Failed to create new custom control\n");
   235	
   236				v4l2_ctrl_handler_free(hdl);
   237				kfree(ctx->ctrls);
   238				ctx->ctrls = NULL;
   239				return hdl->error;
   240			}
   241	
   242			ctx->ctrls[i] = ctrl;
   243		}
   244	
   245		ctx->fh.ctrl_handler = hdl;
   246		v4l2_ctrl_handler_setup(hdl);
   247	
   248		return 0;
   249	}
   250	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202107060150.UUS45nAt-lkp%40intel.com.

--r5Pyd7+fXNt84Ff3
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
6sXGvRIpI+gcT7oXO/F/lbowlgPkAQA=

--r5Pyd7+fXNt84Ff3--
