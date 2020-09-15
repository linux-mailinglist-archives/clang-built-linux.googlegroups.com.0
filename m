Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBIE5QL5QKGQEV4RGOWI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd40.google.com (mail-io1-xd40.google.com [IPv6:2607:f8b0:4864:20::d40])
	by mail.lfdr.de (Postfix) with ESMTPS id C0FC926A289
	for <lists+clang-built-linux@lfdr.de>; Tue, 15 Sep 2020 11:51:30 +0200 (CEST)
Received: by mail-io1-xd40.google.com with SMTP id k133sf1764086iof.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 15 Sep 2020 02:51:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600163489; cv=pass;
        d=google.com; s=arc-20160816;
        b=PNh+2fO7qkdhnqAgx4qQ3wUQ1DRUcidbcbFOUheq1d+fWQwlQU4wTTHBLag0biWHiw
         nvss/Knts1RNi7HZTuk811gGwjn4RiE5d7torOIMcVo5Ka/Vt4u2XLtlY6QsZHnDnC/u
         xBOjHsfh154q0dA1OMFoyIA8Gi2fP254CRMX8ByTwWflfckYAirTZ+Ly9xWpmOfBa0hI
         TmCdrWIaKVy3gNUv9GUo+zzRiLf9Lvca+VUZ2uRalAZH3eK6uDw3uzF6etRjXqofcs67
         apOL+vKNrqsyZj42eXOK5KXN3Kz4dZNGnZJhtwQEdM79qu+qDJLe9K6oSjcTOwVqPitt
         Dvyg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=/zcnvIJqz76N8CCNwZa/ehXcrRu85MjffJVQjfOKkuk=;
        b=Kxyaji6WM+cCm+ppQ1RHTjO0aWHZWrUhHMi87ckc7juhyzNyC49C9mCO8r8fKWB6Tp
         WgVPyfMuRYCqXTNev/LhkF6+C11vIZVTsvhTCj7NkjmnNArec0FZmK4ULI3pB580ZojK
         56IqeC4Feu6+97jPo9fUKVGiJR1V07ldoJgGIjNFlgg6g8Y33Gt6fE1Db/Sd5i3gamau
         gdvOMFws1UCRjaI606vf6CHCI34daNzGM9JNFpugiF8ze3yJa5TCaHri7gqhOSeGVWDG
         nbzyoh+Cmygkas4NOvkwYaNbjIr09m1SCUa3HiBVOsZnc/Hz3gf96FcZM/GU/9kPUaW9
         +2Uw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/zcnvIJqz76N8CCNwZa/ehXcrRu85MjffJVQjfOKkuk=;
        b=ckQoWlleJ0uVK2AzEHsdZ2ZXxG9D/oimBM2djzGTmlstTqo65ztQ52bXIX/OPl4oYR
         NKlz1IWJZQDqXH/xom9MTGwcZEE8hj2JziNnV1CgKDEwwv6GHCsPAHxtyv0WOHPE1YVA
         qAbw8cPnpUd5ZpTz2oIqVZvXsE/vfnp2d5eD5v1QXJc+kCy02A+oeBGOXXQNH34OOUU5
         i+5xojM/WO4nRS350K8a8/Ch7QOykCZWO2pYebANDo+kTEcEa+Yqskv2TQGfyFfNPrNQ
         NABbhmbdjjdo8e4aeEUOMjMbRQWMp6GEZvaJcugTAqXI7SNZxGaBk7JYxO96StkCpgxc
         8TrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=/zcnvIJqz76N8CCNwZa/ehXcrRu85MjffJVQjfOKkuk=;
        b=jPhud0s5aA0DiFyvAQ21MdCHya15wHaGtte6ky39WeEMDq0ikPer2JYDzIp3tnMtfL
         SFZRsOfqbNxGGZOqOEvCBKGn8tkJz77V1+1TGXw6Htvt4brrqC7klDWsgCzgusDRoRT6
         HScvjeHGltED3zEyS34BrhY4sUYpHtz+Jt0CA5YyIUMltm+/4QsFJS9RmRr6mHoKgiJp
         NqptQbKxErhxvfx+w+A90wztQFCipaNydy9Izk7FoGHNYjGb5P1srgbamoIvwbKuB/dx
         88rF0+pzatJ+gzNJICoOW6RdlEMAzj4FLj2i4Nusutj7WmLJarzDg0z9nFAFA4BRoddA
         3qDg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531sDPburogao/CPdq1Ye40uvY8xsZyPU+75LOKBGPE42CmkVRIK
	MyZRUO1IEykE+xq9VOPP1VU=
X-Google-Smtp-Source: ABdhPJzJaihGA189BtePej7HxVCxAv+uZFaCvrVg324Jl1UCqfMJ8kHvbEok8q/nrZeeM3V7flrL7g==
X-Received: by 2002:a5e:a613:: with SMTP id q19mr14737604ioi.36.1600163488359;
        Tue, 15 Sep 2020 02:51:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6602:2ac2:: with SMTP id m2ls2014374iov.7.gmail; Tue, 15
 Sep 2020 02:51:28 -0700 (PDT)
X-Received: by 2002:a5e:a909:: with SMTP id c9mr14221829iod.56.1600163487894;
        Tue, 15 Sep 2020 02:51:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600163487; cv=none;
        d=google.com; s=arc-20160816;
        b=fbQVgxuEpue3MZzGQ3VdEairewTfbSBbwU16r8SNKU7IrwZzEFHpk+PJAhHWqrCbbq
         YK7Io1x/8i1wBQr1kigloCk8Bg18PWbkSoYND+292InUZWXL4mTajMR+mpgKierv1/ob
         eJWhK7JxFg30REeII/nfybPukkPbpxFVxHNAKhJqzdvhSYyvleYm35PrX7EOryGSa08n
         0f0Yev3tHE9LEE+6TUzxFV4vO1hLKGeX+Amc3tIdhp+qCvFaxT/zmFWSnAmYTM+fcQIt
         gtBrtUfqVHcmPZf6Tk0A453GoVWYSzpWjduQ9wKWZLzlyyg8reCpuG+xj3PX3c36EGk6
         i/6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=VxHLMeOaQmdqNDupJMNif/SeUTlRpfBEimfjCOU0jmY=;
        b=QyxF9sagrIwoyL7kQApcmhHg5fDHGO3wjaZG7epB83JK/0Cmjx4djtqirzAYUFoNi9
         59yuvGjqUPQu9ZqOE5Wz31JWzQgwxaX1rRIxEAuUDMbGGiiQboiscwuIBvXnybl7iPLR
         V02gef51jeA2FAhoixaCRAehCHaxubkAQmLTUV35lnQuUGuBwZ7B25hp4WMAD7wWu5Ab
         wwVrEaIPb3MQ0PULKeF7HaibdUP1NQ+7uOwnbev0WLj8pq87NKI+w3a9a3dSsDg22LlA
         rseiu3WuB8ciOwjGTadwjiDpLtMrS3T3vwL2X2+3U/MJycGzkDhM0D4pDOWdiOLtcnWu
         2XPA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga11.intel.com (mga11.intel.com. [192.55.52.93])
        by gmr-mx.google.com with ESMTPS id q22si663153iob.1.2020.09.15.02.51.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 15 Sep 2020 02:51:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) client-ip=192.55.52.93;
IronPort-SDR: XwvAVhxZhQ1miGZ0GrV7slw7McfOTi3JoNtQnYtx80yEtBBjHf4owfSK6AwYCuAJGxKyIA8u7X
 eTUtEUg+5ieQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9744"; a="156658022"
X-IronPort-AV: E=Sophos;i="5.76,429,1592895600"; 
   d="gz'50?scan'50,208,50";a="156658022"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Sep 2020 02:51:26 -0700
IronPort-SDR: YPiiUaOFqZBnpiDsl0vf4tFdGYVG1ZVhmNn4HzJw6Lw+EJ1oG+SwBaeFp7wCkWUaIE3L5PXRDe
 sYjwRS6WxYsA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,429,1592895600"; 
   d="gz'50?scan'50,208,50";a="306519640"
Received: from lkp-server01.sh.intel.com (HELO 96654786cb26) ([10.239.97.150])
  by orsmga006.jf.intel.com with ESMTP; 15 Sep 2020 02:51:24 -0700
Received: from kbuild by 96654786cb26 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kI7cR-00004o-EW; Tue, 15 Sep 2020 09:51:23 +0000
Date: Tue, 15 Sep 2020 17:50:41 +0800
From: kernel test robot <lkp@intel.com>
To: Toke =?iso-8859-1?Q?H=F8iland-J=F8rgensen?= <toke@redhat.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [toke:bpf-freplace-multi-attach-alt-04 2/8]
 drivers/usb/host/ehci-platform.c:251:24: warning: shift count >= width of
 type
Message-ID: <202009151733.lJkbGX81%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8t9RHnE3ZwKMSgU+"
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


--8t9RHnE3ZwKMSgU+
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/toke/linux.git bpf-freplace-multi-attach-alt-04
head:   4b32f3fa732bbc5ab739fc9a0b9864c66a6183fd
commit: 90c87648e09050acc77c42e0ed26a8c30e175111 [2/8] bpf: verifier: refactor check_attach_btf_id()
config: s390-randconfig-r011-20200914 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project b2c32c90bab09a6e2c1f370429db26017a182143)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install s390 cross compiling tool for clang build
        # apt-get install binutils-s390x-linux-gnu
        git checkout 90c87648e09050acc77c42e0ed26a8c30e175111
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=s390 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:119:21: note: expanded from macro '__swab32'
           ___constant_swab32(x) :                 \
                              ^
   include/uapi/linux/swab.h:20:12: note: expanded from macro '___constant_swab32'
           (((__u32)(x) & (__u32)0x0000ff00UL) <<  8) |            \
                     ^
   In file included from drivers/usb/host/ehci-platform.c:23:
   In file included from include/linux/dma-mapping.h:11:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:72:
   include/asm-generic/io.h:490:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:119:21: note: expanded from macro '__swab32'
           ___constant_swab32(x) :                 \
                              ^
   include/uapi/linux/swab.h:21:12: note: expanded from macro '___constant_swab32'
           (((__u32)(x) & (__u32)0x00ff0000UL) >>  8) |            \
                     ^
   In file included from drivers/usb/host/ehci-platform.c:23:
   In file included from include/linux/dma-mapping.h:11:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:72:
   include/asm-generic/io.h:490:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:119:21: note: expanded from macro '__swab32'
           ___constant_swab32(x) :                 \
                              ^
   include/uapi/linux/swab.h:22:12: note: expanded from macro '___constant_swab32'
           (((__u32)(x) & (__u32)0xff000000UL) >> 24)))
                     ^
   In file included from drivers/usb/host/ehci-platform.c:23:
   In file included from include/linux/dma-mapping.h:11:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:72:
   include/asm-generic/io.h:490:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:120:12: note: expanded from macro '__swab32'
           __fswab32(x))
                     ^
   In file included from drivers/usb/host/ehci-platform.c:23:
   In file included from include/linux/dma-mapping.h:11:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:72:
   include/asm-generic/io.h:501:33: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writeb(value, PCI_IOBASE + addr);
                               ~~~~~~~~~~ ^
   include/asm-generic/io.h:511:59: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writew((u16 __force)cpu_to_le16(value), PCI_IOBASE + addr);
                                                         ~~~~~~~~~~ ^
   include/asm-generic/io.h:521:59: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writel((u32 __force)cpu_to_le32(value), PCI_IOBASE + addr);
                                                         ~~~~~~~~~~ ^
   include/asm-generic/io.h:609:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           readsb(PCI_IOBASE + addr, buffer, count);
                  ~~~~~~~~~~ ^
   include/asm-generic/io.h:617:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           readsw(PCI_IOBASE + addr, buffer, count);
                  ~~~~~~~~~~ ^
   include/asm-generic/io.h:625:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           readsl(PCI_IOBASE + addr, buffer, count);
                  ~~~~~~~~~~ ^
   include/asm-generic/io.h:634:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           writesb(PCI_IOBASE + addr, buffer, count);
                   ~~~~~~~~~~ ^
   include/asm-generic/io.h:643:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           writesw(PCI_IOBASE + addr, buffer, count);
                   ~~~~~~~~~~ ^
   include/asm-generic/io.h:652:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           writesl(PCI_IOBASE + addr, buffer, count);
                   ~~~~~~~~~~ ^
   In file included from drivers/usb/host/ehci-platform.c:37:
   In file included from include/linux/usb/of.h:12:
   In file included from include/linux/usb/otg.h:13:
   In file included from include/linux/phy/phy.h:17:
   In file included from include/linux/regulator/consumer.h:35:
   In file included from include/linux/suspend.h:5:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:13:
   In file included from include/linux/cgroup.h:28:
   In file included from include/linux/cgroup-defs.h:22:
   In file included from include/linux/bpf-cgroup.h:5:
   include/linux/bpf.h:677:15: error: must use 'struct' tag to refer to type 'bpf_trampoline'
   static inline bpf_trampoline *bpf_trampoline_get(u64 key, void *addr,
                 ^
                 struct 
>> drivers/usb/host/ehci-platform.c:251:24: warning: shift count >= width of type [-Wshift-count-overflow]
                   pdata->dma_mask_64 ? DMA_BIT_MASK(64) : DMA_BIT_MASK(32));
                                        ^~~~~~~~~~~~~~~~
   include/linux/dma-mapping.h:139:54: note: expanded from macro 'DMA_BIT_MASK'
   #define DMA_BIT_MASK(n) (((n) == 64) ? ~0ULL : ((1ULL<<(n))-1))
                                                        ^ ~~~
   21 warnings and 1 error generated.
--
   include/asm-generic/io.h:490:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:119:21: note: expanded from macro '__swab32'
           ___constant_swab32(x) :                 \
                              ^
   include/uapi/linux/swab.h:20:12: note: expanded from macro '___constant_swab32'
           (((__u32)(x) & (__u32)0x0000ff00UL) <<  8) |            \
                     ^
   In file included from drivers/mmc/host/sdhci.c:14:
   In file included from include/linux/dmaengine.h:12:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:72:
   include/asm-generic/io.h:490:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:119:21: note: expanded from macro '__swab32'
           ___constant_swab32(x) :                 \
                              ^
   include/uapi/linux/swab.h:21:12: note: expanded from macro '___constant_swab32'
           (((__u32)(x) & (__u32)0x00ff0000UL) >>  8) |            \
                     ^
   In file included from drivers/mmc/host/sdhci.c:14:
   In file included from include/linux/dmaengine.h:12:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:72:
   include/asm-generic/io.h:490:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:119:21: note: expanded from macro '__swab32'
           ___constant_swab32(x) :                 \
                              ^
   include/uapi/linux/swab.h:22:12: note: expanded from macro '___constant_swab32'
           (((__u32)(x) & (__u32)0xff000000UL) >> 24)))
                     ^
   In file included from drivers/mmc/host/sdhci.c:14:
   In file included from include/linux/dmaengine.h:12:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:72:
   include/asm-generic/io.h:490:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:120:12: note: expanded from macro '__swab32'
           __fswab32(x))
                     ^
   In file included from drivers/mmc/host/sdhci.c:14:
   In file included from include/linux/dmaengine.h:12:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:72:
   include/asm-generic/io.h:501:33: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writeb(value, PCI_IOBASE + addr);
                               ~~~~~~~~~~ ^
   include/asm-generic/io.h:511:59: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writew((u16 __force)cpu_to_le16(value), PCI_IOBASE + addr);
                                                         ~~~~~~~~~~ ^
   include/asm-generic/io.h:521:59: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writel((u32 __force)cpu_to_le32(value), PCI_IOBASE + addr);
                                                         ~~~~~~~~~~ ^
   include/asm-generic/io.h:609:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           readsb(PCI_IOBASE + addr, buffer, count);
                  ~~~~~~~~~~ ^
   include/asm-generic/io.h:617:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           readsw(PCI_IOBASE + addr, buffer, count);
                  ~~~~~~~~~~ ^
   include/asm-generic/io.h:625:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           readsl(PCI_IOBASE + addr, buffer, count);
                  ~~~~~~~~~~ ^
   include/asm-generic/io.h:634:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           writesb(PCI_IOBASE + addr, buffer, count);
                   ~~~~~~~~~~ ^
   include/asm-generic/io.h:643:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           writesw(PCI_IOBASE + addr, buffer, count);
                   ~~~~~~~~~~ ^
   include/asm-generic/io.h:652:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           writesl(PCI_IOBASE + addr, buffer, count);
                   ~~~~~~~~~~ ^
   In file included from drivers/mmc/host/sdhci.c:24:
   In file included from include/linux/regulator/consumer.h:35:
   In file included from include/linux/suspend.h:5:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:13:
   In file included from include/linux/cgroup.h:28:
   In file included from include/linux/cgroup-defs.h:22:
   In file included from include/linux/bpf-cgroup.h:5:
   include/linux/bpf.h:677:15: error: must use 'struct' tag to refer to type 'bpf_trampoline'
   static inline bpf_trampoline *bpf_trampoline_get(u64 key, void *addr,
                 ^
                 struct 
>> drivers/mmc/host/sdhci.c:3953:40: warning: shift count >= width of type [-Wshift-count-overflow]
                   ret = dma_set_mask_and_coherent(dev, DMA_BIT_MASK(64));
                                                        ^~~~~~~~~~~~~~~~
   include/linux/dma-mapping.h:139:54: note: expanded from macro 'DMA_BIT_MASK'
   #define DMA_BIT_MASK(n) (((n) == 64) ? ~0ULL : ((1ULL<<(n))-1))
                                                        ^ ~~~
   drivers/mmc/host/sdhci.c:4254:20: warning: shift count >= width of type [-Wshift-count-overflow]
                   host->dma_mask = DMA_BIT_MASK(64);
                                    ^~~~~~~~~~~~~~~~
   include/linux/dma-mapping.h:139:54: note: expanded from macro 'DMA_BIT_MASK'
   #define DMA_BIT_MASK(n) (((n) == 64) ? ~0ULL : ((1ULL<<(n))-1))
                                                        ^ ~~~
   22 warnings and 1 error generated.
--
           val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:119:21: note: expanded from macro '__swab32'
           ___constant_swab32(x) :                 \
                              ^
   include/uapi/linux/swab.h:20:12: note: expanded from macro '___constant_swab32'
           (((__u32)(x) & (__u32)0x0000ff00UL) <<  8) |            \
                     ^
   In file included from drivers/usb/gadget/udc/bdc/bdc_core.c:15:
   In file included from include/linux/iopoll.h:14:
   In file included from include/linux/io.h:13:
   In file included from arch/s390/include/asm/io.h:72:
   include/asm-generic/io.h:490:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:119:21: note: expanded from macro '__swab32'
           ___constant_swab32(x) :                 \
                              ^
   include/uapi/linux/swab.h:21:12: note: expanded from macro '___constant_swab32'
           (((__u32)(x) & (__u32)0x00ff0000UL) >>  8) |            \
                     ^
   In file included from drivers/usb/gadget/udc/bdc/bdc_core.c:15:
   In file included from include/linux/iopoll.h:14:
   In file included from include/linux/io.h:13:
   In file included from arch/s390/include/asm/io.h:72:
   include/asm-generic/io.h:490:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:119:21: note: expanded from macro '__swab32'
           ___constant_swab32(x) :                 \
                              ^
   include/uapi/linux/swab.h:22:12: note: expanded from macro '___constant_swab32'
           (((__u32)(x) & (__u32)0xff000000UL) >> 24)))
                     ^
   In file included from drivers/usb/gadget/udc/bdc/bdc_core.c:15:
   In file included from include/linux/iopoll.h:14:
   In file included from include/linux/io.h:13:
   In file included from arch/s390/include/asm/io.h:72:
   include/asm-generic/io.h:490:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:120:12: note: expanded from macro '__swab32'
           __fswab32(x))
                     ^
   In file included from drivers/usb/gadget/udc/bdc/bdc_core.c:15:
   In file included from include/linux/iopoll.h:14:
   In file included from include/linux/io.h:13:
   In file included from arch/s390/include/asm/io.h:72:
   include/asm-generic/io.h:501:33: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writeb(value, PCI_IOBASE + addr);
                               ~~~~~~~~~~ ^
   include/asm-generic/io.h:511:59: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writew((u16 __force)cpu_to_le16(value), PCI_IOBASE + addr);
                                                         ~~~~~~~~~~ ^
   include/asm-generic/io.h:521:59: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writel((u32 __force)cpu_to_le32(value), PCI_IOBASE + addr);
                                                         ~~~~~~~~~~ ^
   include/asm-generic/io.h:609:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           readsb(PCI_IOBASE + addr, buffer, count);
                  ~~~~~~~~~~ ^
   include/asm-generic/io.h:617:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           readsw(PCI_IOBASE + addr, buffer, count);
                  ~~~~~~~~~~ ^
   include/asm-generic/io.h:625:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           readsl(PCI_IOBASE + addr, buffer, count);
                  ~~~~~~~~~~ ^
   include/asm-generic/io.h:634:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           writesb(PCI_IOBASE + addr, buffer, count);
                   ~~~~~~~~~~ ^
   include/asm-generic/io.h:643:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           writesw(PCI_IOBASE + addr, buffer, count);
                   ~~~~~~~~~~ ^
   include/asm-generic/io.h:652:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           writesl(PCI_IOBASE + addr, buffer, count);
                   ~~~~~~~~~~ ^
   In file included from drivers/usb/gadget/udc/bdc/bdc_core.c:23:
   In file included from include/linux/phy/phy.h:17:
   In file included from include/linux/regulator/consumer.h:35:
   In file included from include/linux/suspend.h:5:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:13:
   In file included from include/linux/cgroup.h:28:
   In file included from include/linux/cgroup-defs.h:22:
   In file included from include/linux/bpf-cgroup.h:5:
   include/linux/bpf.h:677:15: error: must use 'struct' tag to refer to type 'bpf_trampoline'
   static inline bpf_trampoline *bpf_trampoline_get(u64 key, void *addr,
                 ^
                 struct 
>> drivers/usb/gadget/udc/bdc/bdc_core.c:557:36: warning: shift count >= width of type [-Wshift-count-overflow]
                           !dma_set_mask_and_coherent(dev, DMA_BIT_MASK(64))) {
                                                           ^~~~~~~~~~~~~~~~
   include/linux/dma-mapping.h:139:54: note: expanded from macro 'DMA_BIT_MASK'
   #define DMA_BIT_MASK(n) (((n) == 64) ? ~0ULL : ((1ULL<<(n))-1))
                                                        ^ ~~~
   21 warnings and 1 error generated.

# https://git.kernel.org/pub/scm/linux/kernel/git/toke/linux.git/commit/?id=90c87648e09050acc77c42e0ed26a8c30e175111
git remote add toke https://git.kernel.org/pub/scm/linux/kernel/git/toke/linux.git
git fetch --no-tags toke bpf-freplace-multi-attach-alt-04
git checkout 90c87648e09050acc77c42e0ed26a8c30e175111
vim +251 drivers/usb/host/ehci-platform.c

cc7eac1e4afdd1 Yoshihiro Shimoda   2020-01-27  230  
41ac7b3ab7fe1d Bill Pemberton      2012-11-19  231  static int ehci_platform_probe(struct platform_device *dev)
7a7a4a592f42d9 Hauke Mehrtens      2012-03-13  232  {
7a7a4a592f42d9 Hauke Mehrtens      2012-03-13  233  	struct usb_hcd *hcd;
7a7a4a592f42d9 Hauke Mehrtens      2012-03-13  234  	struct resource *res_mem;
a4aeb211757129 Hans de Goede       2014-02-07  235  	struct usb_ehci_pdata *pdata = dev_get_platdata(&dev->dev);
a4aeb211757129 Hans de Goede       2014-02-07  236  	struct ehci_platform_priv *priv;
ad3db5dabad169 Hans de Goede       2014-02-07  237  	struct ehci_hcd *ehci;
27b3df4139d558 Martin Blumenstingl 2018-03-03  238  	int err, irq, clk = 0;
7a7a4a592f42d9 Hauke Mehrtens      2012-03-13  239  
7a7a4a592f42d9 Hauke Mehrtens      2012-03-13  240  	if (usb_disabled())
7a7a4a592f42d9 Hauke Mehrtens      2012-03-13  241  		return -ENODEV;
7a7a4a592f42d9 Hauke Mehrtens      2012-03-13  242  
f3bc64d6d1f21c Arnd Bergmann       2013-03-27  243  	/*
a4aeb211757129 Hans de Goede       2014-02-07  244  	 * Use reasonable defaults so platforms don't have to provide these
a4aeb211757129 Hans de Goede       2014-02-07  245  	 * with DT probing on ARM.
f3bc64d6d1f21c Arnd Bergmann       2013-03-27  246  	 */
a4aeb211757129 Hans de Goede       2014-02-07  247  	if (!pdata)
a4aeb211757129 Hans de Goede       2014-02-07  248  		pdata = &ehci_platform_defaults;
e1fd7341837238 Russell King        2013-06-27  249  
c99e76c55f68ea Andreas Herrmann    2015-01-12  250  	err = dma_coerce_mask_and_coherent(&dev->dev,
c99e76c55f68ea Andreas Herrmann    2015-01-12 @251  		pdata->dma_mask_64 ? DMA_BIT_MASK(64) : DMA_BIT_MASK(32));
17f69b5fa6f642 Jeremy Linton       2015-08-19  252  	if (err) {
17f69b5fa6f642 Jeremy Linton       2015-08-19  253  		dev_err(&dev->dev, "Error: DMA mask configuration failed\n");
22d9d8e8316d7f Russell King        2013-06-10  254  		return err;
17f69b5fa6f642 Jeremy Linton       2015-08-19  255  	}
f3bc64d6d1f21c Arnd Bergmann       2013-03-27  256  
7a7a4a592f42d9 Hauke Mehrtens      2012-03-13  257  	irq = platform_get_irq(dev, 0);
b33f37064b743d Stephen Boyd        2019-07-30  258  	if (irq < 0)
7a7a4a592f42d9 Hauke Mehrtens      2012-03-13  259  		return irq;
7a7a4a592f42d9 Hauke Mehrtens      2012-03-13  260  
a4aeb211757129 Hans de Goede       2014-02-07  261  	hcd = usb_create_hcd(&ehci_platform_hc_driver, &dev->dev,
a4aeb211757129 Hans de Goede       2014-02-07  262  			     dev_name(&dev->dev));
a4aeb211757129 Hans de Goede       2014-02-07  263  	if (!hcd)
a4aeb211757129 Hans de Goede       2014-02-07  264  		return -ENOMEM;
a4aeb211757129 Hans de Goede       2014-02-07  265  
a4aeb211757129 Hans de Goede       2014-02-07  266  	platform_set_drvdata(dev, hcd);
a4aeb211757129 Hans de Goede       2014-02-07  267  	dev->dev.platform_data = pdata;
a4aeb211757129 Hans de Goede       2014-02-07  268  	priv = hcd_to_ehci_priv(hcd);
ad3db5dabad169 Hans de Goede       2014-02-07  269  	ehci = hcd_to_ehci(hcd);
a4aeb211757129 Hans de Goede       2014-02-07  270  
a4aeb211757129 Hans de Goede       2014-02-07  271  	if (pdata == &ehci_platform_defaults && dev->dev.of_node) {
ad3db5dabad169 Hans de Goede       2014-02-07  272  		if (of_property_read_bool(dev->dev.of_node, "big-endian-regs"))
ad3db5dabad169 Hans de Goede       2014-02-07  273  			ehci->big_endian_mmio = 1;
ad3db5dabad169 Hans de Goede       2014-02-07  274  
ad3db5dabad169 Hans de Goede       2014-02-07  275  		if (of_property_read_bool(dev->dev.of_node, "big-endian-desc"))
ad3db5dabad169 Hans de Goede       2014-02-07  276  			ehci->big_endian_desc = 1;
ad3db5dabad169 Hans de Goede       2014-02-07  277  
ad3db5dabad169 Hans de Goede       2014-02-07  278  		if (of_property_read_bool(dev->dev.of_node, "big-endian"))
ad3db5dabad169 Hans de Goede       2014-02-07  279  			ehci->big_endian_mmio = ehci->big_endian_desc = 1;
ad3db5dabad169 Hans de Goede       2014-02-07  280  
314b41b16a71ee Wu Liang feng       2014-12-24  281  		if (of_property_read_bool(dev->dev.of_node,
314b41b16a71ee Wu Liang feng       2014-12-24  282  					  "needs-reset-on-resume"))
b4629a7bdfd8fc Alban Bedel         2015-08-04  283  			priv->reset_on_resume = true;
314b41b16a71ee Wu Liang feng       2014-12-24  284  
40f2f2a3255314 Joachim Eastwood    2015-05-16  285  		if (of_property_read_bool(dev->dev.of_node,
40f2f2a3255314 Joachim Eastwood    2015-05-16  286  					  "has-transaction-translator"))
b4629a7bdfd8fc Alban Bedel         2015-08-04  287  			hcd->has_tt = 1;
40f2f2a3255314 Joachim Eastwood    2015-05-16  288  
cc7eac1e4afdd1 Yoshihiro Shimoda   2020-01-27  289  		if (soc_device_match(quirk_poll_match))
cc7eac1e4afdd1 Yoshihiro Shimoda   2020-01-27  290  			priv->quirk_poll = true;
cc7eac1e4afdd1 Yoshihiro Shimoda   2020-01-27  291  
a4aeb211757129 Hans de Goede       2014-02-07  292  		for (clk = 0; clk < EHCI_MAX_CLKS; clk++) {
a4aeb211757129 Hans de Goede       2014-02-07  293  			priv->clks[clk] = of_clk_get(dev->dev.of_node, clk);
a4aeb211757129 Hans de Goede       2014-02-07  294  			if (IS_ERR(priv->clks[clk])) {
a4aeb211757129 Hans de Goede       2014-02-07  295  				err = PTR_ERR(priv->clks[clk]);
a4aeb211757129 Hans de Goede       2014-02-07  296  				if (err == -EPROBE_DEFER)
a4aeb211757129 Hans de Goede       2014-02-07  297  					goto err_put_clks;
a4aeb211757129 Hans de Goede       2014-02-07  298  				priv->clks[clk] = NULL;
a4aeb211757129 Hans de Goede       2014-02-07  299  				break;
a4aeb211757129 Hans de Goede       2014-02-07  300  			}
a4aeb211757129 Hans de Goede       2014-02-07  301  		}
a4aeb211757129 Hans de Goede       2014-02-07  302  	}
a4aeb211757129 Hans de Goede       2014-02-07  303  
8e84f8aa5306bb Masahiro Yamada     2017-11-02  304  	priv->rsts = devm_reset_control_array_get_optional_shared(&dev->dev);
8e84f8aa5306bb Masahiro Yamada     2017-11-02  305  	if (IS_ERR(priv->rsts)) {
8e84f8aa5306bb Masahiro Yamada     2017-11-02  306  		err = PTR_ERR(priv->rsts);
8e84f8aa5306bb Masahiro Yamada     2017-11-02  307  		goto err_put_clks;
d0e08b0077f49e Jiancheng Xue       2016-05-12  308  	}
d0e08b0077f49e Jiancheng Xue       2016-05-12  309  
8e84f8aa5306bb Masahiro Yamada     2017-11-02  310  	err = reset_control_deassert(priv->rsts);
76d15c8fba655c Hans de Goede       2016-06-08  311  	if (err)
8e84f8aa5306bb Masahiro Yamada     2017-11-02  312  		goto err_put_clks;
2d87bbd634b0fe Boris Brezillon     2014-05-13  313  
843d5e036419bd Alan Stern          2014-02-11  314  	if (pdata->big_endian_desc)
843d5e036419bd Alan Stern          2014-02-11  315  		ehci->big_endian_desc = 1;
843d5e036419bd Alan Stern          2014-02-11  316  	if (pdata->big_endian_mmio)
843d5e036419bd Alan Stern          2014-02-11  317  		ehci->big_endian_mmio = 1;
b4629a7bdfd8fc Alban Bedel         2015-08-04  318  	if (pdata->has_tt)
b4629a7bdfd8fc Alban Bedel         2015-08-04  319  		hcd->has_tt = 1;
b4629a7bdfd8fc Alban Bedel         2015-08-04  320  	if (pdata->reset_on_resume)
b4629a7bdfd8fc Alban Bedel         2015-08-04  321  		priv->reset_on_resume = true;
843d5e036419bd Alan Stern          2014-02-11  322  

:::::: The code at line 251 was first introduced by commit
:::::: c99e76c55f68eaa0c307ba25803c4e59c2fca1ca USB: host: Introduce flag to enable use of 64-bit dma_mask for ehci-platform

:::::: TO: Andreas Herrmann <andreas.herrmann@caviumnetworks.com>
:::::: CC: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202009151733.lJkbGX81%25lkp%40intel.com.

--8t9RHnE3ZwKMSgU+
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--8t9RHnE3ZwKMSgU+--
