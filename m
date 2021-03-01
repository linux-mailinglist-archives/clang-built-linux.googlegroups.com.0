Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB64K6KAQMGQEZ456HMA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3a.google.com (mail-vk1-xa3a.google.com [IPv6:2607:f8b0:4864:20::a3a])
	by mail.lfdr.de (Postfix) with ESMTPS id CD8A8327762
	for <lists+clang-built-linux@lfdr.de>; Mon,  1 Mar 2021 07:11:08 +0100 (CET)
Received: by mail-vk1-xa3a.google.com with SMTP id k21sf3934442vke.3
        for <lists+clang-built-linux@lfdr.de>; Sun, 28 Feb 2021 22:11:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614579068; cv=pass;
        d=google.com; s=arc-20160816;
        b=oWrGMdt9FP4Z+/qNCjyA3ixLshenqCCNCj3MDykyx6PSjHR7zUmMETw3Uef8VAHOnh
         y3tsvq4XliHoy/NwOEnWqyePSxYPxSVIGBbEnlK7cq9WQ420inl5g/n3nH8Pbdcc09DU
         RzgyTuRV/4ELA55C2kVWxVVqI5H46bl7cps73Q8/C5RUM667dzon2qWhdM5QNav8J3sZ
         pIBzrt5Zg5z/6gVRg495BRCvOX3lKSL0eQHqKqwqROGv0XXHpnbANJ+X8VVRmpEt9+nf
         kWOne27TzoCqgjx4q9EVnD4Gt3tcoSOw+y0/RK2mcjGKgg+swJs5EN/YvMKZUIm+tl++
         UDcQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=TRNJ5zJAaWWW/+sO6ciBWV/AEROQJr3N7xLnCAS7Cbg=;
        b=Fb3FQXXOp1twhAaBfInJdh3FnyltJUGDEvHrVIWpphvVic7que4xEOQOoOLtUKLhqe
         mLrloBFavtI4pvNpLNEi25J9Y39yW/YvKF8Nf82/SwH0/Erzb4GGxfPP2jwSvk9SEnyd
         wNnIHQvr8n1M9ahUSIjiZv++43i8JDGd62+xWJOJjP+aXJDFLVy51Lqo8iKR2ZVOErYN
         OSVwg4jQLJ4Bu+ryoGFSSXsJ+jnl1lMJVhifr7ILmZwGKOBGNAaxAaNJfw2Ifp6gPKUm
         8b3VbafnPf6OuJSDhGIT/W9UTaJUqDwfHu2Sqrb7PL1FqRG9gYw4R3emLvx5PWqb5APE
         0kAg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=TRNJ5zJAaWWW/+sO6ciBWV/AEROQJr3N7xLnCAS7Cbg=;
        b=C1HQr9JdB4Xp4jpbh7Yi+WXOEA+OFChf9QWe/CJ9Uht2kq0QqydLBV7frD1ePDnZ4a
         BDVpPuU/pjyA49aXzAfEPgsSf2oOqzkU8m/8kZz1rYd9hwQRI/dcEoVf3fPcRBeKQxbC
         u1n60VyUj/VN28wxCRVT9O4zETb8QbskX1BkuO0zNnhPslkQco+H4eaBghefczVrd8Mf
         MXe1bHaXDonsznU9BGtS/4Ev3j0cfWK+QNxXTS6bOQFy2VixGpiTp2nl/qc5UJxr4ffA
         fjwwGXihNoXQ4ufi4o6a6ZpDb7MEmaY9lOlWQGdeeyeT0pPen2twIrlv+wvrY6nZGtN0
         4GPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=TRNJ5zJAaWWW/+sO6ciBWV/AEROQJr3N7xLnCAS7Cbg=;
        b=m+59Yl3NdGAhniWpglZQ5O2GRtrmR/B7J8hYv0L4jgz/16PJ4XxmB2qCZ5AB5nmF1l
         zp5vT9v27jj4E9HDelpJvfXNZGY7aR+FMkXLd5F+yaz0k+jH29sf89MnqbxuhNB/M2ex
         uJAhuWAAT2dbwOF64dOlvrlSuoUjyH4NMubM/TJge/oq1VkxAkfRdo+wPVQ40i/23jJl
         lWYrBWBn7anCtb0JLOjcAVASd93JnN6Msm4YleshZl1Bu1RuIxGPtShz+YElJ7l6qDla
         DJauMhcZ/iNqXVFiMwxD5bv6XPiIEpaoaAQU8lycbaixdS9RwkUPREogpI4vSk07Rps/
         R6Xw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530K0hyhxXJ0Odvk4oM5F4B1WX1+nXv0SS06pyUmcf6cEMRzbmLN
	R2hfzhnLc/PBVSkWpSFgue4=
X-Google-Smtp-Source: ABdhPJyMSudgZ6mvHGnsaVkAu7iW7VFmmUI6qXQHSlZOu9SiIUivjgnWV46+y5zDIRbNRl5kwcvzRw==
X-Received: by 2002:a1f:2a03:: with SMTP id q3mr7266833vkq.0.1614579067802;
        Sun, 28 Feb 2021 22:11:07 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:a294:: with SMTP id l142ls751785vke.8.gmail; Sun, 28 Feb
 2021 22:11:07 -0800 (PST)
X-Received: by 2002:a1f:c7c3:: with SMTP id x186mr7249494vkf.0.1614579067082;
        Sun, 28 Feb 2021 22:11:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614579067; cv=none;
        d=google.com; s=arc-20160816;
        b=xsnoytgjo9kGl38GErW+OCbpoUdxjyeGrQAIvPC5K2s/5TOcljsO25kkh5oN4h6E4H
         D1qdmQcf4abwNzqPURH6l4PEbPwrmGgzUimQB1DT31VWSCAYhahyJ2o7ORjvN4b+w6HZ
         Ua++CeMqLbd4KC1iPArGSAngBKq9/AxRDgPkMtKlkCsNkNGquEGK/TC4DQbgPGfyQwmv
         ElYyYK/nsiXa5n5gTwwlLlgm2sTV5fFretJv1ecg/1VSgvcrOVGsCBZAwJ2QclBHV43w
         yMUfcGHv8t5oyAOs26oyoG7dgOJ88PI8csly2/vqlrbf+q/HQ+kDYu3un6Begohf3xgr
         fG6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=yBsDxiPA5BmkAlscPl4ESZbRzBNFBbNSUg/7SPjF5aY=;
        b=PhXZGiMzaPNUHrFR7DmiSF0UEj3AqVs48KKchXMr62DN9AV4bGX4WWzFGywStX5k+g
         RX11T5gX+uzOd+9DiqVDEOH9h7Kt+543X75VL9oCYo6rYl0JIiddb3XPQdmMVmQebqBu
         /yNSKT9APwCDgS4YshR6oVjlVJN/pjzQPByr+5Sy/mSZ9M6EW6v+irPtTwWDALJq30e8
         AkDJbnZsEHBRQMq/UXVp7fZHh9JVFMwSYMENCN0kjkG2ix/pB33X9Tk0tvN0lfzxSakf
         ScrJsWGqCfvHwgXJJmg1MMIkgVX7BuGs/rAACe5JaYHWNNYXb0RDO9f/tQ7edIvltyNZ
         j4kQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga03.intel.com (mga03.intel.com. [134.134.136.65])
        by gmr-mx.google.com with ESMTPS id r5si606555vka.3.2021.02.28.22.11.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2021 22:11:06 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) client-ip=134.134.136.65;
IronPort-SDR: w5tnP/CCwLqeV99/ssY3jePhn7KW3rTAfORFIssdH+u/qVK59h7E8cQR1k8kJiQPFAIQd0uxH3
 oC5pOM2n41hQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9909"; a="186422431"
X-IronPort-AV: E=Sophos;i="5.81,214,1610438400"; 
   d="gz'50?scan'50,208,50";a="186422431"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Feb 2021 22:11:04 -0800
IronPort-SDR: lFbI9z4tcDoaB14v/yCvjlRJME6OSGwpUh9mpQEXnVHVHifvDi0LBGnHUVrlsnEu57wfged7Xb
 Ii1fRIbGHXwA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,214,1610438400"; 
   d="gz'50?scan'50,208,50";a="504613704"
Received: from lkp-server01.sh.intel.com (HELO 16660e54978b) ([10.239.97.150])
  by fmsmga001.fm.intel.com with ESMTP; 28 Feb 2021 22:11:01 -0800
Received: from kbuild by 16660e54978b with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lGblk-0004Ra-R4; Mon, 01 Mar 2021 06:11:00 +0000
Date: Mon, 1 Mar 2021 14:10:12 +0800
From: kernel test robot <lkp@intel.com>
To: Samuel Thibault <samuel.thibault@ens-lyon.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: drivers/accessibility/speakup/speakup_dtlk.c:334:14: warning:
 performing pointer arithmetic on a null pointer has undefined behavior
Message-ID: <202103011457.M1TABamy-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="oyUTqETQ0mS9luUI"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted
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


--oyUTqETQ0mS9luUI
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Samuel,

First bad commit (maybe != root cause):

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   fe07bfda2fb9cdef8a4d4008a409bb02f35f1bd8
commit: 2067fd92d75b6d9085a43caf050bca5d88c491b8 staging/speakup: Move out of staging
date:   7 months ago
config: riscv-randconfig-r002-20210301 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 5de09ef02e24d234d9fc0cd1c6dfe18a1bb784b0)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install riscv cross compiling tool for clang build
        # apt-get install binutils-riscv64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=2067fd92d75b6d9085a43caf050bca5d88c491b8
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout 2067fd92d75b6d9085a43caf050bca5d88c491b8
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=riscv 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   In file included from drivers/accessibility/speakup/speakup_dtlk.c:18:
   In file included from drivers/accessibility/speakup/spk_priv.h:16:
   In file included from drivers/accessibility/speakup/spk_types.h:17:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:148:
   include/asm-generic/io.h:556:9: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           return inb(addr);
                  ^~~~~~~~~
   arch/riscv/include/asm/io.h:54:76: note: expanded from macro 'inb'
   #define inb(c)          ({ u8  __v; __io_pbr(); __v = readb_cpu((void*)(PCI_IOBASE + (c))); __io_par(__v); __v; })
                                                                           ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:93:48: note: expanded from macro 'readb_cpu'
   #define readb_cpu(c)            ({ u8  __r = __raw_readb(c); __r; })
                                                            ^
   In file included from drivers/accessibility/speakup/speakup_dtlk.c:18:
   In file included from drivers/accessibility/speakup/spk_priv.h:16:
   In file included from drivers/accessibility/speakup/spk_types.h:17:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:148:
   include/asm-generic/io.h:564:9: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           return inw(addr);
                  ^~~~~~~~~
   arch/riscv/include/asm/io.h:55:76: note: expanded from macro 'inw'
   #define inw(c)          ({ u16 __v; __io_pbr(); __v = readw_cpu((void*)(PCI_IOBASE + (c))); __io_par(__v); __v; })
                                                                           ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:94:76: note: expanded from macro 'readw_cpu'
   #define readw_cpu(c)            ({ u16 __r = le16_to_cpu((__force __le16)__raw_readw(c)); __r; })
                                                                                        ^
   include/uapi/linux/byteorder/little_endian.h:36:51: note: expanded from macro '__le16_to_cpu'
   #define __le16_to_cpu(x) ((__force __u16)(__le16)(x))
                                                     ^
   In file included from drivers/accessibility/speakup/speakup_dtlk.c:18:
   In file included from drivers/accessibility/speakup/spk_priv.h:16:
   In file included from drivers/accessibility/speakup/spk_types.h:17:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:148:
   include/asm-generic/io.h:572:9: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           return inl(addr);
                  ^~~~~~~~~
   arch/riscv/include/asm/io.h:56:76: note: expanded from macro 'inl'
   #define inl(c)          ({ u32 __v; __io_pbr(); __v = readl_cpu((void*)(PCI_IOBASE + (c))); __io_par(__v); __v; })
                                                                           ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:95:76: note: expanded from macro 'readl_cpu'
   #define readl_cpu(c)            ({ u32 __r = le32_to_cpu((__force __le32)__raw_readl(c)); __r; })
                                                                                        ^
   include/uapi/linux/byteorder/little_endian.h:34:51: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) ((__force __u32)(__le32)(x))
                                                     ^
   In file included from drivers/accessibility/speakup/speakup_dtlk.c:18:
   In file included from drivers/accessibility/speakup/spk_priv.h:16:
   In file included from drivers/accessibility/speakup/spk_types.h:17:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:148:
   include/asm-generic/io.h:580:2: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           outb(value, addr);
           ^~~~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:58:68: note: expanded from macro 'outb'
   #define outb(v,c)       ({ __io_pbw(); writeb_cpu((v),(void*)(PCI_IOBASE + (c))); __io_paw(); })
                                                                 ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:97:52: note: expanded from macro 'writeb_cpu'
   #define writeb_cpu(v, c)        ((void)__raw_writeb((v), (c)))
                                                             ^
   In file included from drivers/accessibility/speakup/speakup_dtlk.c:18:
   In file included from drivers/accessibility/speakup/spk_priv.h:16:
   In file included from drivers/accessibility/speakup/spk_types.h:17:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:148:
   include/asm-generic/io.h:588:2: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           outw(value, addr);
           ^~~~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:59:68: note: expanded from macro 'outw'
   #define outw(v,c)       ({ __io_pbw(); writew_cpu((v),(void*)(PCI_IOBASE + (c))); __io_paw(); })
                                                                 ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:98:76: note: expanded from macro 'writew_cpu'
   #define writew_cpu(v, c)        ((void)__raw_writew((__force u16)cpu_to_le16(v), (c)))
                                                                                     ^
   In file included from drivers/accessibility/speakup/speakup_dtlk.c:18:
   In file included from drivers/accessibility/speakup/spk_priv.h:16:
   In file included from drivers/accessibility/speakup/spk_types.h:17:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:148:
   include/asm-generic/io.h:596:2: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           outl(value, addr);
           ^~~~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:60:68: note: expanded from macro 'outl'
   #define outl(v,c)       ({ __io_pbw(); writel_cpu((v),(void*)(PCI_IOBASE + (c))); __io_paw(); })
                                                                 ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:99:76: note: expanded from macro 'writel_cpu'
   #define writel_cpu(v, c)        ((void)__raw_writel((__force u32)cpu_to_le32(v), (c)))
                                                                                     ^
   In file included from drivers/accessibility/speakup/speakup_dtlk.c:18:
   In file included from drivers/accessibility/speakup/spk_priv.h:16:
   In file included from drivers/accessibility/speakup/spk_types.h:17:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:148:
   include/asm-generic/io.h:1017:55: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           return (port > MMIO_UPPER_LIMIT) ? NULL : PCI_IOBASE + port;
                                                     ~~~~~~~~~~ ^
>> drivers/accessibility/speakup/speakup_dtlk.c:334:14: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
                   port_val = inw(speakup_info.port_tts - 1);
                              ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:55:76: note: expanded from macro 'inw'
   #define inw(c)          ({ u16 __v; __io_pbr(); __v = readw_cpu((void*)(PCI_IOBASE + (c))); __io_par(__v); __v; })
                                                                           ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:94:76: note: expanded from macro 'readw_cpu'
   #define readw_cpu(c)            ({ u16 __r = le16_to_cpu((__force __le16)__raw_readw(c)); __r; })
                                                                                        ^
   include/uapi/linux/byteorder/little_endian.h:36:51: note: expanded from macro '__le16_to_cpu'
   #define __le16_to_cpu(x) ((__force __u16)(__le16)(x))
                                                     ^
   drivers/accessibility/speakup/speakup_dtlk.c:341:15: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
                           port_val = inw(synth_portlist[i]) & 0xfbff;
                                      ^~~~~~~~~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:55:76: note: expanded from macro 'inw'
   #define inw(c)          ({ u16 __v; __io_pbr(); __v = readw_cpu((void*)(PCI_IOBASE + (c))); __io_par(__v); __v; })
                                                                           ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:94:76: note: expanded from macro 'readw_cpu'
   #define readw_cpu(c)            ({ u16 __r = le16_to_cpu((__force __le16)__raw_readw(c)); __r; })
                                                                                        ^
   include/uapi/linux/byteorder/little_endian.h:36:51: note: expanded from macro '__le16_to_cpu'
   #define __le16_to_cpu(x) ((__force __u16)(__le16)(x))
                                                     ^
   9 warnings generated.
--
   In file included from drivers/accessibility/speakup/speakup_keypc.c:17:
   In file included from drivers/accessibility/speakup/spk_priv.h:16:
   In file included from drivers/accessibility/speakup/spk_types.h:17:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:148:
   include/asm-generic/io.h:556:9: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           return inb(addr);
                  ^~~~~~~~~
   arch/riscv/include/asm/io.h:54:76: note: expanded from macro 'inb'
   #define inb(c)          ({ u8  __v; __io_pbr(); __v = readb_cpu((void*)(PCI_IOBASE + (c))); __io_par(__v); __v; })
                                                                           ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:93:48: note: expanded from macro 'readb_cpu'
   #define readb_cpu(c)            ({ u8  __r = __raw_readb(c); __r; })
                                                            ^
   In file included from drivers/accessibility/speakup/speakup_keypc.c:17:
   In file included from drivers/accessibility/speakup/spk_priv.h:16:
   In file included from drivers/accessibility/speakup/spk_types.h:17:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:148:
   include/asm-generic/io.h:564:9: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           return inw(addr);
                  ^~~~~~~~~
   arch/riscv/include/asm/io.h:55:76: note: expanded from macro 'inw'
   #define inw(c)          ({ u16 __v; __io_pbr(); __v = readw_cpu((void*)(PCI_IOBASE + (c))); __io_par(__v); __v; })
                                                                           ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:94:76: note: expanded from macro 'readw_cpu'
   #define readw_cpu(c)            ({ u16 __r = le16_to_cpu((__force __le16)__raw_readw(c)); __r; })
                                                                                        ^
   include/uapi/linux/byteorder/little_endian.h:36:51: note: expanded from macro '__le16_to_cpu'
   #define __le16_to_cpu(x) ((__force __u16)(__le16)(x))
                                                     ^
   In file included from drivers/accessibility/speakup/speakup_keypc.c:17:
   In file included from drivers/accessibility/speakup/spk_priv.h:16:
   In file included from drivers/accessibility/speakup/spk_types.h:17:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:148:
   include/asm-generic/io.h:572:9: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           return inl(addr);
                  ^~~~~~~~~
   arch/riscv/include/asm/io.h:56:76: note: expanded from macro 'inl'
   #define inl(c)          ({ u32 __v; __io_pbr(); __v = readl_cpu((void*)(PCI_IOBASE + (c))); __io_par(__v); __v; })
                                                                           ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:95:76: note: expanded from macro 'readl_cpu'
   #define readl_cpu(c)            ({ u32 __r = le32_to_cpu((__force __le32)__raw_readl(c)); __r; })
                                                                                        ^
   include/uapi/linux/byteorder/little_endian.h:34:51: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) ((__force __u32)(__le32)(x))
                                                     ^
   In file included from drivers/accessibility/speakup/speakup_keypc.c:17:
   In file included from drivers/accessibility/speakup/spk_priv.h:16:
   In file included from drivers/accessibility/speakup/spk_types.h:17:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:148:
   include/asm-generic/io.h:580:2: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           outb(value, addr);
           ^~~~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:58:68: note: expanded from macro 'outb'
   #define outb(v,c)       ({ __io_pbw(); writeb_cpu((v),(void*)(PCI_IOBASE + (c))); __io_paw(); })
                                                                 ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:97:52: note: expanded from macro 'writeb_cpu'
   #define writeb_cpu(v, c)        ((void)__raw_writeb((v), (c)))
                                                             ^
   In file included from drivers/accessibility/speakup/speakup_keypc.c:17:
   In file included from drivers/accessibility/speakup/spk_priv.h:16:
   In file included from drivers/accessibility/speakup/spk_types.h:17:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:148:
   include/asm-generic/io.h:588:2: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           outw(value, addr);
           ^~~~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:59:68: note: expanded from macro 'outw'
   #define outw(v,c)       ({ __io_pbw(); writew_cpu((v),(void*)(PCI_IOBASE + (c))); __io_paw(); })
                                                                 ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:98:76: note: expanded from macro 'writew_cpu'
   #define writew_cpu(v, c)        ((void)__raw_writew((__force u16)cpu_to_le16(v), (c)))
                                                                                     ^
   In file included from drivers/accessibility/speakup/speakup_keypc.c:17:
   In file included from drivers/accessibility/speakup/spk_priv.h:16:
   In file included from drivers/accessibility/speakup/spk_types.h:17:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:148:
   include/asm-generic/io.h:596:2: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           outl(value, addr);
           ^~~~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:60:68: note: expanded from macro 'outl'
   #define outl(v,c)       ({ __io_pbw(); writel_cpu((v),(void*)(PCI_IOBASE + (c))); __io_paw(); })
                                                                 ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:99:76: note: expanded from macro 'writel_cpu'
   #define writel_cpu(v, c)        ((void)__raw_writel((__force u32)cpu_to_le32(v), (c)))
                                                                                     ^
   In file included from drivers/accessibility/speakup/speakup_keypc.c:17:
   In file included from drivers/accessibility/speakup/spk_priv.h:16:
   In file included from drivers/accessibility/speakup/spk_types.h:17:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:148:
   include/asm-generic/io.h:1017:55: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           return (port > MMIO_UPPER_LIMIT) ? NULL : PCI_IOBASE + port;
                                                     ~~~~~~~~~~ ^
>> drivers/accessibility/speakup/speakup_keypc.c:268:14: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
                   port_val = inb(synth_port);
                              ^~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:54:76: note: expanded from macro 'inb'
   #define inb(c)          ({ u8  __v; __io_pbr(); __v = readb_cpu((void*)(PCI_IOBASE + (c))); __io_par(__v); __v; })
                                                                           ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:93:48: note: expanded from macro 'readb_cpu'
   #define readb_cpu(c)            ({ u8  __r = __raw_readb(c); __r; })
                                                            ^
   drivers/accessibility/speakup/speakup_keypc.c:278:15: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
                           port_val = inb(synth_portlist[i]);
                                      ^~~~~~~~~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:54:76: note: expanded from macro 'inb'
   #define inb(c)          ({ u8  __v; __io_pbr(); __v = readb_cpu((void*)(PCI_IOBASE + (c))); __io_par(__v); __v; })
                                                                           ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:93:48: note: expanded from macro 'readb_cpu'
   #define readb_cpu(c)            ({ u8  __r = __raw_readb(c); __r; })
                                                            ^
   9 warnings generated.
--
   In file included from include/linux/hardirq.h:10:
   In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:13:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:148:
   include/asm-generic/io.h:564:9: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           return inw(addr);
                  ^~~~~~~~~
   arch/riscv/include/asm/io.h:55:76: note: expanded from macro 'inw'
   #define inw(c)          ({ u16 __v; __io_pbr(); __v = readw_cpu((void*)(PCI_IOBASE + (c))); __io_par(__v); __v; })
                                                                           ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:94:76: note: expanded from macro 'readw_cpu'
   #define readw_cpu(c)            ({ u16 __r = le16_to_cpu((__force __le16)__raw_readw(c)); __r; })
                                                                                        ^
   include/uapi/linux/byteorder/little_endian.h:36:51: note: expanded from macro '__le16_to_cpu'
   #define __le16_to_cpu(x) ((__force __u16)(__le16)(x))
                                                     ^
   In file included from drivers/accessibility/speakup/serialio.c:2:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:13:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:148:
   include/asm-generic/io.h:572:9: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           return inl(addr);
                  ^~~~~~~~~
   arch/riscv/include/asm/io.h:56:76: note: expanded from macro 'inl'
   #define inl(c)          ({ u32 __v; __io_pbr(); __v = readl_cpu((void*)(PCI_IOBASE + (c))); __io_par(__v); __v; })
                                                                           ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:95:76: note: expanded from macro 'readl_cpu'
   #define readl_cpu(c)            ({ u32 __r = le32_to_cpu((__force __le32)__raw_readl(c)); __r; })
                                                                                        ^
   include/uapi/linux/byteorder/little_endian.h:34:51: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) ((__force __u32)(__le32)(x))
                                                     ^
   In file included from drivers/accessibility/speakup/serialio.c:2:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:13:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:148:
   include/asm-generic/io.h:580:2: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           outb(value, addr);
           ^~~~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:58:68: note: expanded from macro 'outb'
   #define outb(v,c)       ({ __io_pbw(); writeb_cpu((v),(void*)(PCI_IOBASE + (c))); __io_paw(); })
                                                                 ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:97:52: note: expanded from macro 'writeb_cpu'
   #define writeb_cpu(v, c)        ((void)__raw_writeb((v), (c)))
                                                             ^
   In file included from drivers/accessibility/speakup/serialio.c:2:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:13:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:148:
   include/asm-generic/io.h:588:2: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           outw(value, addr);
           ^~~~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:59:68: note: expanded from macro 'outw'
   #define outw(v,c)       ({ __io_pbw(); writew_cpu((v),(void*)(PCI_IOBASE + (c))); __io_paw(); })
                                                                 ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:98:76: note: expanded from macro 'writew_cpu'
   #define writew_cpu(v, c)        ((void)__raw_writew((__force u16)cpu_to_le16(v), (c)))
                                                                                     ^
   In file included from drivers/accessibility/speakup/serialio.c:2:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:13:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:148:
   include/asm-generic/io.h:596:2: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           outl(value, addr);
           ^~~~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:60:68: note: expanded from macro 'outl'
   #define outl(v,c)       ({ __io_pbw(); writel_cpu((v),(void*)(PCI_IOBASE + (c))); __io_paw(); })
                                                                 ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:99:76: note: expanded from macro 'writel_cpu'
   #define writel_cpu(v, c)        ((void)__raw_writel((__force u32)cpu_to_le32(v), (c)))
                                                                                     ^
   In file included from drivers/accessibility/speakup/serialio.c:2:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:13:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:148:
   include/asm-generic/io.h:1017:55: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           return (port > MMIO_UPPER_LIMIT) ? NULL : PCI_IOBASE + port;
                                                     ~~~~~~~~~~ ^
>> drivers/accessibility/speakup/serialio.c:87:2: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           outb(cval | UART_LCR_DLAB, ser->port + UART_LCR);       /* set DLAB */
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:58:68: note: expanded from macro 'outb'
   #define outb(v,c)       ({ __io_pbw(); writeb_cpu((v),(void*)(PCI_IOBASE + (c))); __io_paw(); })
                                                                 ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:97:52: note: expanded from macro 'writeb_cpu'
   #define writeb_cpu(v, c)        ((void)__raw_writeb((v), (c)))
                                                             ^
   drivers/accessibility/speakup/serialio.c:88:2: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           outb(quot & 0xff, ser->port + UART_DLL);        /* LS of divisor */
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:58:68: note: expanded from macro 'outb'
   #define outb(v,c)       ({ __io_pbw(); writeb_cpu((v),(void*)(PCI_IOBASE + (c))); __io_paw(); })
                                                                 ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:97:52: note: expanded from macro 'writeb_cpu'
   #define writeb_cpu(v, c)        ((void)__raw_writeb((v), (c)))
                                                             ^
   drivers/accessibility/speakup/serialio.c:89:2: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           outb(quot >> 8, ser->port + UART_DLM);          /* MS of divisor */
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:58:68: note: expanded from macro 'outb'
   #define outb(v,c)       ({ __io_pbw(); writeb_cpu((v),(void*)(PCI_IOBASE + (c))); __io_paw(); })
                                                                 ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:97:52: note: expanded from macro 'writeb_cpu'
   #define writeb_cpu(v, c)        ((void)__raw_writeb((v), (c)))
                                                             ^
   drivers/accessibility/speakup/serialio.c:90:2: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           outb(cval, ser->port + UART_LCR);               /* reset DLAB */
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:58:68: note: expanded from macro 'outb'
   #define outb(v,c)       ({ __io_pbw(); writeb_cpu((v),(void*)(PCI_IOBASE + (c))); __io_paw(); })
                                                                 ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:97:52: note: expanded from macro 'writeb_cpu'
   #define writeb_cpu(v, c)        ((void)__raw_writeb((v), (c)))
                                                             ^
   drivers/accessibility/speakup/serialio.c:93:2: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           outb(0, ser->port + UART_IER);
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:58:68: note: expanded from macro 'outb'
   #define outb(v,c)       ({ __io_pbw(); writeb_cpu((v),(void*)(PCI_IOBASE + (c))); __io_paw(); })
                                                                 ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:97:52: note: expanded from macro 'writeb_cpu'
   #define writeb_cpu(v, c)        ((void)__raw_writeb((v), (c)))
                                                             ^
   drivers/accessibility/speakup/serialio.c:94:2: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           outb(UART_MCR_DTR | UART_MCR_RTS, ser->port + UART_MCR);
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:58:68: note: expanded from macro 'outb'
   #define outb(v,c)       ({ __io_pbw(); writeb_cpu((v),(void*)(PCI_IOBASE + (c))); __io_paw(); })
                                                                 ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:97:52: note: expanded from macro 'writeb_cpu'
   #define writeb_cpu(v, c)        ((void)__raw_writeb((v), (c)))
                                                             ^
   drivers/accessibility/speakup/serialio.c:97:6: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           if (inb(ser->port + UART_LSR) == 0xff) {
               ^~~~~~~~~~~~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:54:76: note: expanded from macro 'inb'
   #define inb(c)          ({ u8  __v; __io_pbr(); __v = readb_cpu((void*)(PCI_IOBASE + (c))); __io_par(__v); __v; })
                                                                           ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:93:48: note: expanded from macro 'readb_cpu'
   #define readb_cpu(c)            ({ u8  __r = __raw_readb(c); __r; })
                                                            ^
   drivers/accessibility/speakup/serialio.c:139:2: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           outb(UART_MCR_DTR | UART_MCR_RTS | UART_MCR_OUT2,
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:58:68: note: expanded from macro 'outb'
   #define outb(v,c)       ({ __io_pbw(); writeb_cpu((v),(void*)(PCI_IOBASE + (c))); __io_paw(); })
                                                                 ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:97:52: note: expanded from macro 'writeb_cpu'
   #define writeb_cpu(v, c)        ((void)__raw_writeb((v), (c)))
                                                             ^
   drivers/accessibility/speakup/serialio.c:142:2: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           outb(UART_IER_MSI | UART_IER_RLSI | UART_IER_RDI,
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:58:68: note: expanded from macro 'outb'
   #define outb(v,c)       ({ __io_pbw(); writeb_cpu((v),(void*)(PCI_IOBASE + (c))); __io_paw(); })
                                                                 ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:97:52: note: expanded from macro 'writeb_cpu'
   #define writeb_cpu(v, c)        ((void)__raw_writeb((v), (c)))
                                                             ^
   drivers/accessibility/speakup/serialio.c:144:2: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           inb(speakup_info.port_tts + UART_LSR);
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:54:76: note: expanded from macro 'inb'
   #define inb(c)          ({ u8  __v; __io_pbr(); __v = readb_cpu((void*)(PCI_IOBASE + (c))); __io_par(__v); __v; })
                                                                           ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:93:48: note: expanded from macro 'readb_cpu'
   #define readb_cpu(c)            ({ u8  __r = __raw_readb(c); __r; })
                                                            ^
   drivers/accessibility/speakup/serialio.c:145:2: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           inb(speakup_info.port_tts + UART_RX);
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:54:76: note: expanded from macro 'inb'
   #define inb(c)          ({ u8  __v; __io_pbr(); __v = readb_cpu((void*)(PCI_IOBASE + (c))); __io_par(__v); __v; })
                                                                           ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:93:48: note: expanded from macro 'readb_cpu'
   #define readb_cpu(c)            ({ u8  __r = __raw_readb(c); __r; })
                                                            ^
   drivers/accessibility/speakup/serialio.c:146:2: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           inb(speakup_info.port_tts + UART_IIR);


vim +334 drivers/accessibility/speakup/speakup_dtlk.c

c6e3fd22cd5383 drivers/staging/speakup/speakup_dtlk.c William Hubbs 2010-10-07  315  
c6e3fd22cd5383 drivers/staging/speakup/speakup_dtlk.c William Hubbs 2010-10-07  316  static int synth_probe(struct spk_synth *synth)
c6e3fd22cd5383 drivers/staging/speakup/speakup_dtlk.c William Hubbs 2010-10-07  317  {
c6e3fd22cd5383 drivers/staging/speakup/speakup_dtlk.c William Hubbs 2010-10-07  318  	unsigned int port_val = 0;
c6e3fd22cd5383 drivers/staging/speakup/speakup_dtlk.c William Hubbs 2010-10-07  319  	int i = 0;
c6e3fd22cd5383 drivers/staging/speakup/speakup_dtlk.c William Hubbs 2010-10-07  320  	struct synth_settings *sp;
8e69a811068657 drivers/staging/speakup/speakup_dtlk.c Domagoj Trsan 2014-09-09  321  
c6e3fd22cd5383 drivers/staging/speakup/speakup_dtlk.c William Hubbs 2010-10-07  322  	pr_info("Probing for DoubleTalk.\n");
c6e3fd22cd5383 drivers/staging/speakup/speakup_dtlk.c William Hubbs 2010-10-07  323  	if (port_forced) {
c6e3fd22cd5383 drivers/staging/speakup/speakup_dtlk.c William Hubbs 2010-10-07  324  		speakup_info.port_tts = port_forced;
c6e3fd22cd5383 drivers/staging/speakup/speakup_dtlk.c William Hubbs 2010-10-07  325  		pr_info("probe forced to %x by kernel command line\n",
c6e3fd22cd5383 drivers/staging/speakup/speakup_dtlk.c William Hubbs 2010-10-07  326  			speakup_info.port_tts);
c6e3fd22cd5383 drivers/staging/speakup/speakup_dtlk.c William Hubbs 2010-10-07  327  		if ((port_forced & 0xf) != 0xf)
c6e3fd22cd5383 drivers/staging/speakup/speakup_dtlk.c William Hubbs 2010-10-07  328  			pr_info("warning: port base should probably end with f\n");
c6e3fd22cd5383 drivers/staging/speakup/speakup_dtlk.c William Hubbs 2010-10-07  329  		if (synth_request_region(speakup_info.port_tts - 1,
c6e3fd22cd5383 drivers/staging/speakup/speakup_dtlk.c William Hubbs 2010-10-07  330  					 SYNTH_IO_EXTENT)) {
c6e3fd22cd5383 drivers/staging/speakup/speakup_dtlk.c William Hubbs 2010-10-07  331  			pr_warn("sorry, port already reserved\n");
c6e3fd22cd5383 drivers/staging/speakup/speakup_dtlk.c William Hubbs 2010-10-07  332  			return -EBUSY;
c6e3fd22cd5383 drivers/staging/speakup/speakup_dtlk.c William Hubbs 2010-10-07  333  		}
c6e3fd22cd5383 drivers/staging/speakup/speakup_dtlk.c William Hubbs 2010-10-07 @334  		port_val = inw(speakup_info.port_tts - 1);
c6e3fd22cd5383 drivers/staging/speakup/speakup_dtlk.c William Hubbs 2010-10-07  335  		synth_lpc = speakup_info.port_tts - 1;
c6e3fd22cd5383 drivers/staging/speakup/speakup_dtlk.c William Hubbs 2010-10-07  336  	} else {
c6e3fd22cd5383 drivers/staging/speakup/speakup_dtlk.c William Hubbs 2010-10-07  337  		for (i = 0; synth_portlist[i]; i++) {
c6e3fd22cd5383 drivers/staging/speakup/speakup_dtlk.c William Hubbs 2010-10-07  338  			if (synth_request_region(synth_portlist[i],
c6e3fd22cd5383 drivers/staging/speakup/speakup_dtlk.c William Hubbs 2010-10-07  339  						 SYNTH_IO_EXTENT))
c6e3fd22cd5383 drivers/staging/speakup/speakup_dtlk.c William Hubbs 2010-10-07  340  				continue;
c6e3fd22cd5383 drivers/staging/speakup/speakup_dtlk.c William Hubbs 2010-10-07  341  			port_val = inw(synth_portlist[i]) & 0xfbff;
c6e3fd22cd5383 drivers/staging/speakup/speakup_dtlk.c William Hubbs 2010-10-07  342  			if (port_val == 0x107f) {
c6e3fd22cd5383 drivers/staging/speakup/speakup_dtlk.c William Hubbs 2010-10-07  343  				synth_lpc = synth_portlist[i];
c6e3fd22cd5383 drivers/staging/speakup/speakup_dtlk.c William Hubbs 2010-10-07  344  				speakup_info.port_tts = synth_lpc + 1;
c6e3fd22cd5383 drivers/staging/speakup/speakup_dtlk.c William Hubbs 2010-10-07  345  				break;
c6e3fd22cd5383 drivers/staging/speakup/speakup_dtlk.c William Hubbs 2010-10-07  346  			}
c6e3fd22cd5383 drivers/staging/speakup/speakup_dtlk.c William Hubbs 2010-10-07  347  			synth_release_region(synth_portlist[i],
c6e3fd22cd5383 drivers/staging/speakup/speakup_dtlk.c William Hubbs 2010-10-07  348  					     SYNTH_IO_EXTENT);
c6e3fd22cd5383 drivers/staging/speakup/speakup_dtlk.c William Hubbs 2010-10-07  349  		}
c6e3fd22cd5383 drivers/staging/speakup/speakup_dtlk.c William Hubbs 2010-10-07  350  	}
c6e3fd22cd5383 drivers/staging/speakup/speakup_dtlk.c William Hubbs 2010-10-07  351  	port_val &= 0xfbff;
c6e3fd22cd5383 drivers/staging/speakup/speakup_dtlk.c William Hubbs 2010-10-07  352  	if (port_val != 0x107f) {
c6e3fd22cd5383 drivers/staging/speakup/speakup_dtlk.c William Hubbs 2010-10-07  353  		pr_info("DoubleTalk PC: not found\n");
7aa4d5c8ffed00 drivers/staging/speakup/speakup_dtlk.c Alan Cox      2014-12-15  354  		if (synth_lpc)
c6e3fd22cd5383 drivers/staging/speakup/speakup_dtlk.c William Hubbs 2010-10-07  355  			synth_release_region(synth_lpc, SYNTH_IO_EXTENT);
c6e3fd22cd5383 drivers/staging/speakup/speakup_dtlk.c William Hubbs 2010-10-07  356  		return -ENODEV;
c6e3fd22cd5383 drivers/staging/speakup/speakup_dtlk.c William Hubbs 2010-10-07  357  	}
c6e3fd22cd5383 drivers/staging/speakup/speakup_dtlk.c William Hubbs 2010-10-07  358  	while (inw_p(synth_lpc) != 0x147f)
c6e3fd22cd5383 drivers/staging/speakup/speakup_dtlk.c William Hubbs 2010-10-07  359  		cpu_relax(); /* wait until it's ready */
c6e3fd22cd5383 drivers/staging/speakup/speakup_dtlk.c William Hubbs 2010-10-07  360  	sp = synth_interrogate(synth);
c6e3fd22cd5383 drivers/staging/speakup/speakup_dtlk.c William Hubbs 2010-10-07  361  	pr_info("%s: %03x-%03x, ROM ver %s, s/n %u, driver: %s\n",
c6e3fd22cd5383 drivers/staging/speakup/speakup_dtlk.c William Hubbs 2010-10-07  362  		synth->long_name, synth_lpc, synth_lpc + SYNTH_IO_EXTENT - 1,
c6e3fd22cd5383 drivers/staging/speakup/speakup_dtlk.c William Hubbs 2010-10-07  363  		sp->rom_version, sp->serial_number, synth->version);
c6e3fd22cd5383 drivers/staging/speakup/speakup_dtlk.c William Hubbs 2010-10-07  364  	synth->alive = 1;
c6e3fd22cd5383 drivers/staging/speakup/speakup_dtlk.c William Hubbs 2010-10-07  365  	return 0;
c6e3fd22cd5383 drivers/staging/speakup/speakup_dtlk.c William Hubbs 2010-10-07  366  }
c6e3fd22cd5383 drivers/staging/speakup/speakup_dtlk.c William Hubbs 2010-10-07  367  

:::::: The code at line 334 was first introduced by commit
:::::: c6e3fd22cd538365bfeb82997d5b89562e077d42 Staging: add speakup to the staging directory

:::::: TO: William Hubbs <w.d.hubbs@gmail.com>
:::::: CC: Greg Kroah-Hartman <gregkh@suse.de>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202103011457.M1TABamy-lkp%40intel.com.

--oyUTqETQ0mS9luUI
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
zonU21tlynXYDqx/8+SR5sZZAgA=

--oyUTqETQ0mS9luUI--
