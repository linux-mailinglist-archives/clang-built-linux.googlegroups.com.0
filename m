Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBV5OST6AKGQECLKXAXY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43b.google.com (mail-pf1-x43b.google.com [IPv6:2607:f8b0:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 4667628C766
	for <lists+clang-built-linux@lfdr.de>; Tue, 13 Oct 2020 04:56:25 +0200 (CEST)
Received: by mail-pf1-x43b.google.com with SMTP id n85sf6386758pfd.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Oct 2020 19:56:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602557784; cv=pass;
        d=google.com; s=arc-20160816;
        b=Uj/fNs36NH+3xlRIaVX30sk8lJ6nCo79eHnnR1gpqoOQ9xdwZnMK5OyxqRfmdiA1sm
         ISswgvthDYaJTLvnz7Ucm7+lx5kGBKMDPDsB3/6DfejloLAOv0gyY9JTVliu88NCgeV0
         jh6HsbMJj5YsQSEPQr+4uHE9l4kD3PhVNmH+r/482WeDPtyvQfmYoGELpEyBBDYunxEe
         Sf07G4ta7wStCmBJUPPbAszb9hZYzQ48+3ho7BWl7h1iQpGLqHPBeu1lIy+LGhnoZnww
         eJ0V/jc1xUAUIC3o0yUWSBjrYcfhAaQaZ5fRX0xrhonOZ5HJ00PmDwKnEbzQ2eN288Xn
         SBWA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=WhAk+6QHMiprPEB4rgN7xPB60t+ce8HfEdK1MLLwcKY=;
        b=L5dhwiFwLlSqAtpl7jRGOxNnCJ28lIZjVMBzas6NDwoKWnpxfLjF/Fzr+628yC7p/n
         GCpu75gUYeizcGctaHuxozHSOhMazsFldNVPzMpKvRI84/5xkC2yS/fJN33WXsS1VrAJ
         rnOdHqTwDcjletHzUDiU//MEEpFtYO8I9C5HflC8K6jf/6znq4bchF6Wi2pNF28gjeh+
         92YOeZnMIK15FcRh09UKQ8ibAiGzisjMZFb6xFIpsav7rpytqPYpsmOTFosixB5i/nia
         s0oo208Ww2GZozFHpArpTaFXl18lzN+0eZEqzJf6dFE77uqRDa9lg9PuGUrb22LfG/FJ
         uKmA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=WhAk+6QHMiprPEB4rgN7xPB60t+ce8HfEdK1MLLwcKY=;
        b=bV39Hy4c7VowWn946XLaPfXMd68aIkRPIcwH1lHGa/bpgZ0iU5iGgnmIz8STAeVpEf
         w7Yg+1DEv0oJA4t1K+ufpJ6txR2J/nMX2skGer/VLqB4TZPZmmL1mpM9gEmKwsNOI3qH
         b3upmb5FT7VfioB25p6X2GSlZV19TrOYsN7CkJJ2qPCvINgRt3PWVwBnYsXVP0Ic6uBQ
         jc0HHQU2aIBIbv/XDGduIYHzO18GZ63lkLApayq151OuYCg5Ty7xWOvDZSW/5LhdZkq4
         T8XJ/1ccaxGfeQgstAyXzc2p5azcEfSwry/ZMNOeiBiHYvLA8L2dXEedAVZvKwZAGaRI
         MyKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=WhAk+6QHMiprPEB4rgN7xPB60t+ce8HfEdK1MLLwcKY=;
        b=G2MZPO6Q7RKI+4uw3Zf40bUqeQTg8JuZMLPSGL4oaeMYaG3JBhDj5lKZTTqzJIMlZG
         cFb9wAzLM9y1T5ykTaWi8f86VOaE695uzT81TxSIXBzEGLL8zsSh076FVrUw0MPg7gjQ
         dUmRawxovV2Slv0iWn+sV9o7oWZMCP0RBCuQjAML1zySSp8+tMTothOKE+pygxqNa7XQ
         o7QNyRjCVxl43D+kINLwcuXOFPMWnv+6I6Gm40hmtGpQtZRY7QwwlaokCVRMrcbMcjSp
         AgUcpN6VePN13PD7kLV91UWizWDJMVS9Gd0W/GZq6AzDrQcUP4WV6aUWl478jKs7Wdw7
         L44w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531+Y6C+LexIyaN0T0fMsv4lKd70UYh9eX9D8y0OQ9nUQrTE+PJp
	ZbHmBIV/S6ZXTJlzG2mB8M4=
X-Google-Smtp-Source: ABdhPJzaynYjwvBw9meH6LNh0HTRV0ddsOtVRc0zy0an+olw9zaUJajn34mz9MNPDUCa3q13nmxCAw==
X-Received: by 2002:a62:2c09:0:b029:142:2501:34f8 with SMTP id s9-20020a622c090000b0290142250134f8mr25912058pfs.81.1602557783687;
        Mon, 12 Oct 2020 19:56:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:1488:: with SMTP id v8ls6316144pfu.3.gmail; Mon, 12
 Oct 2020 19:56:23 -0700 (PDT)
X-Received: by 2002:a63:4083:: with SMTP id n125mr15690720pga.290.1602557783132;
        Mon, 12 Oct 2020 19:56:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602557783; cv=none;
        d=google.com; s=arc-20160816;
        b=MCgkAn41kYURABEs7dHoF7VKCkQ8lyBHLFNvFvRyp8XUpg4qyrzyIa1Q4hIk9o6vOq
         /Vm4TwTjWWdHYemTbXtXWI+EvvWqwfjYFVNBRCjRk14QhGJdH2Zaq0iZj7PuQD9VZUZH
         6hejTatNDRaVtQ6VyzigXuzo3DEENqGNGJc4e1BLY/5GBki+lbc5HatSVlehnYZTwGyP
         Fx1Afr1mqIOlnP1m1epE9RaRlbb7HegFZXnuYZfe/5aPLe3ijU4PZL0KYFVwAmhV1QAU
         WiaKgMZsbqvY8Fr8jVWSDJW0RHx/3jFzrkR4WD2EoIhC9oz6nBp/MSigIgewfHUI9Wvw
         /BVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=fefTO+GE2Ss2lFWjpGlANkEZvrspziv6dyMHyMBDYbM=;
        b=spKheQKPz03Eth1WP6Haa7ZOfjg5cSgPGHvxEn9wLOcws5a2J/9Gnl+z9Bxhe98asD
         8VkHh6iESx4Y+NUKF1+pb6gQlTbSUP9KR81dwB5dN8dLl/JU/fbBoNZtBW5Qfv/Rn3AV
         S6XHjLBckySKS/cLfHYGvYU9tQBRJCbyRGCj2/Gmhop1c87BoHG5sBfBuZyEfLECctCE
         1sTPe7+w3bYBZqjKyCsj6v6QYZ9ioBWb64+HCSY5gPcHkG/86jOgbh4/A8mFwKs6Q7Jt
         6P7/blKVf5HBGHiAn5GRx9IHy88uoVsCMNIhHINs0YxnfEH+ChfHSVukdALTZDAoTPK6
         NvrQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga04.intel.com (mga04.intel.com. [192.55.52.120])
        by gmr-mx.google.com with ESMTPS id j3si494765plk.0.2020.10.12.19.56.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Oct 2020 19:56:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) client-ip=192.55.52.120;
IronPort-SDR: pOTGLKBL2KKVz13DI+uGmC63/TX780/zidq+ovHdybv3P3H0BX01Mn9MamGMUwt3rMv2D+52ap
 u7zxwswU5PbQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9772"; a="163200955"
X-IronPort-AV: E=Sophos;i="5.77,369,1596524400"; 
   d="gz'50?scan'50,208,50";a="163200955"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Oct 2020 19:56:22 -0700
IronPort-SDR: P2g+PrcqoAB0w9LzI6SGmxXZKdn4WZWF+guXdnLk8K6nv5oMslfE7xbfUb92Q6NvhumRYxnYfm
 K/IN0IbwSiTQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,369,1596524400"; 
   d="gz'50?scan'50,208,50";a="345110563"
Received: from lkp-server01.sh.intel.com (HELO aa1d92d39b27) ([10.239.97.150])
  by fmsmga004.fm.intel.com with ESMTP; 12 Oct 2020 19:56:20 -0700
Received: from kbuild by aa1d92d39b27 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kSAU8-0000IG-22; Tue, 13 Oct 2020 02:56:20 +0000
Date: Tue, 13 Oct 2020 10:55:58 +0800
From: kernel test robot <lkp@intel.com>
To: "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Kuppuswamy Sathyanarayanan <sathyanarayanan.kuppuswamy@linux.intel.com>
Subject: [intel-tdx:guest 40/44] drivers/virtio/virtio_ring.c:258:6: error:
 implicit declaration of function 'is_tdx_guest'
Message-ID: <202010131057.T3gB53jf-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="h31gzZEtNLTqOjlF"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted
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


--h31gzZEtNLTqOjlF
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://github.com/intel/tdx.git guest
head:   422a2465ebe67c0db36e855df7f9d7018f878c28
commit: 0cb8b5708223bba7e3ccd67754376d91305a1085 [40/44] x86/tdx: Make VirtIO use DMA API in TDX guest
config: s390-randconfig-r032-20201012 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project a324d8f964bf421fa7d8b882b0f64ead28c4149c)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install s390 cross compiling tool for clang build
        # apt-get install binutils-s390x-linux-gnu
        # https://github.com/intel/tdx/commit/0cb8b5708223bba7e3ccd67754376d91305a1085
        git remote add intel-tdx https://github.com/intel/tdx.git
        git fetch --no-tags intel-tdx guest
        git checkout 0cb8b5708223bba7e3ccd67754376d91305a1085
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=s390 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:119:21: note: expanded from macro '__swab32'
           ___constant_swab32(x) :                 \
                              ^
   include/uapi/linux/swab.h:19:12: note: expanded from macro '___constant_swab32'
           (((__u32)(x) & (__u32)0x000000ffUL) << 24) |            \
                     ^
   In file included from drivers/virtio/virtio_ring.c:6:
   In file included from include/linux/virtio.h:7:
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
   include/uapi/linux/swab.h:20:12: note: expanded from macro '___constant_swab32'
           (((__u32)(x) & (__u32)0x0000ff00UL) <<  8) |            \
                     ^
   In file included from drivers/virtio/virtio_ring.c:6:
   In file included from include/linux/virtio.h:7:
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
   In file included from drivers/virtio/virtio_ring.c:6:
   In file included from include/linux/virtio.h:7:
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
   In file included from drivers/virtio/virtio_ring.c:6:
   In file included from include/linux/virtio.h:7:
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
   In file included from drivers/virtio/virtio_ring.c:6:
   In file included from include/linux/virtio.h:7:
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
>> drivers/virtio/virtio_ring.c:258:6: error: implicit declaration of function 'is_tdx_guest' [-Werror,-Wimplicit-function-declaration]
           if (is_tdx_guest())
               ^
   20 warnings and 1 error generated.

vim +/is_tdx_guest +258 drivers/virtio/virtio_ring.c

   214	
   215	/*
   216	 * Modern virtio devices have feature bits to specify whether they need a
   217	 * quirk and bypass the IOMMU. If not there, just use the DMA API.
   218	 *
   219	 * If there, the interaction between virtio and DMA API is messy.
   220	 *
   221	 * On most systems with virtio, physical addresses match bus addresses,
   222	 * and it doesn't particularly matter whether we use the DMA API.
   223	 *
   224	 * On some systems, including Xen and any system with a physical device
   225	 * that speaks virtio behind a physical IOMMU, we must use the DMA API
   226	 * for virtio DMA to work at all.
   227	 *
   228	 * On other systems, including SPARC and PPC64, virtio-pci devices are
   229	 * enumerated as though they are behind an IOMMU, but the virtio host
   230	 * ignores the IOMMU, so we must either pretend that the IOMMU isn't
   231	 * there or somehow map everything as the identity.
   232	 *
   233	 * For the time being, we preserve historic behavior and bypass the DMA
   234	 * API.
   235	 *
   236	 * TODO: install a per-device DMA ops structure that does the right thing
   237	 * taking into account all the above quirks, and use the DMA API
   238	 * unconditionally on data path.
   239	 */
   240	
   241	static bool vring_use_dma_api(struct virtio_device *vdev)
   242	{
   243		if (!virtio_has_dma_quirk(vdev))
   244			return true;
   245	
   246		/* Otherwise, we are left to guess. */
   247		/*
   248		 * In theory, it's possible to have a buggy QEMU-supposed
   249		 * emulated Q35 IOMMU and Xen enabled at the same time.  On
   250		 * such a configuration, virtio has never worked and will
   251		 * not work without an even larger kludge.  Instead, enable
   252		 * the DMA API if we're a Xen guest, which at least allows
   253		 * all of the sensible Xen configurations to work correctly.
   254		 */
   255		if (xen_domain())
   256			return true;
   257	
 > 258		if (is_tdx_guest())
   259			return true;
   260	
   261		return false;
   262	}
   263	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202010131057.T3gB53jf-lkp%40intel.com.

--h31gzZEtNLTqOjlF
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--h31gzZEtNLTqOjlF--
