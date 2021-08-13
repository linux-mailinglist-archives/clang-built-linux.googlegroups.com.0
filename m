Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBOFR3GEAMGQEEJG2NSA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x238.google.com (mail-oi1-x238.google.com [IPv6:2607:f8b0:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id B002E3EB495
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Aug 2021 13:34:17 +0200 (CEST)
Received: by mail-oi1-x238.google.com with SMTP id n2-20020aca40020000b029025c9037b7fasf4261012oia.14
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Aug 2021 04:34:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628854456; cv=pass;
        d=google.com; s=arc-20160816;
        b=hjc8wZk0iU2LKPXHvRTWaFFV1P4ALlUqX7+FWrjlETEWX753+6xhpPwz8qKoJFmzBB
         Q5WXhqDH8qIKueBx8vgUtZHD5q/klFKWMnC3oUEAjZ7IlR4nm9YXot27p6tEi/aVOKyv
         ijEsQSvHYLVDS0akpxmDpYk5d2WkwdPMu2GCYBaovAmRAK18InsjWSbLYpdMdyrW0Jqn
         GQygKEN0TYsjJl8iyC/nVcaEzB+64CEKHMF/sQjZmrwZmOH1xk9HuyIOTsS6mZAaVmkR
         vKDwaN7ZDQUvofLZ9GS/4Qf8nYblhFhWKXNEL2L3MKDcnc82VkXqZBLlBeuQE/vZzM34
         R1IQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=h+hLeJwmfN8uw343Eun3pnCfY8+FN7B0k1neYY65J0Q=;
        b=cAZhB+PgOQbVy15ssEIPRCNp59qCbYwKndR+zilXFQoNCYyvqpFSeYsmZT28Uur1UJ
         dvHvKFQ0Xqw6Z0Cag5Z59X1EfrWqv1Ivjp9cFswxGsTme4XePidsidkIYQkB3znRpV8i
         Fh1tO7cyjaf11tSG+guCC+Vs88S8YrMiNA14OEqKnP9jKoeBW8IsguoBQf89vYDauLHQ
         gx/5rG9z/sOkz4nMPBoEYUQ3la4/Ai5D6FfuHMBe2unB9XvuCB9Jz6HiKUAK1RY+2bXz
         YoBu8eVdQgrrTfdWn4k/QCDMAas/EEwHj9M2ZNqDCsygCTFimwfS9GIdTvBmf7x6Usvn
         tMFQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=h+hLeJwmfN8uw343Eun3pnCfY8+FN7B0k1neYY65J0Q=;
        b=oaYiwvSrfdiL8fNIfHzKz4vxqfoDr/4g6jeB0Q0F6WIKYe7muUDxbIRdkyPV+zag/m
         Srl+YIKyqoYmSYsLse25e3TxXiUacdj0p/0/1W7KueGtFz9JLjj3vcYmwHxrAMktAROr
         d2+wcOb8nbFWYO0Had8ctXiGW2fVqJZZ4FbedXuOOB0fdhb5Lz0FtaTMdXOTp1jwMF05
         +ZZVykVZ+rUnW8N5f6X6o8p88FPNBdnP0+SI31H0qKYLYbPHGsDawrgIFFZphHGaFCOR
         oqJmNZzgHw8qPrIWHdrJwHPKW0dVy+OpS6XAqtD9/znXV2yD63GVr57j8WFnzajtfcgJ
         R4Mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=h+hLeJwmfN8uw343Eun3pnCfY8+FN7B0k1neYY65J0Q=;
        b=eCrjwHop8dIrhUtYbU5+vJl7GzUMSXTWUYCWD1yovqhFshLLFkVwZCeEnLVPDWmrlI
         yGLyyYPXNEf3UOXzb+U7tSjaCKP8jLH0TUv5+Kl8rc+X5rBdO5vXx7H6Crx0pyPRbpdu
         BRyp05KjL3dy/VPCVCNw8E9TfqYi+b8vpqbre0C+yLo5nSTF6Vy5NkvzYgdabnOVPEpt
         VxsmYcOMNctc37WXXTvd7DI1fHs2d0Dw61KP88oMmYsFOPFW3HZiIZlv24871wzYfv/L
         gcRQWpaY9SfVEixeCfzdQhdM6SRbj7OGp8guSTdaH3ilUuTEfYfEm+Stb+A54wj/iDP0
         xCPQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531RZPBaSwv0iItgXCOYdxomPqrWkSMrPNMfBE7S5BWNM7hoR1YI
	Osu21ieLsd44WZASKtF7vuM=
X-Google-Smtp-Source: ABdhPJyclKR+BTFiWZC1+4wkYuI3/spAZJv2cFA93bZDxeNH0rdUZNvmeTvtDqkgOU81lj0Th1spVA==
X-Received: by 2002:a4a:e874:: with SMTP id m20mr1489523oom.29.1628854456294;
        Fri, 13 Aug 2021 04:34:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:df09:: with SMTP id w9ls338259oig.4.gmail; Fri, 13 Aug
 2021 04:34:15 -0700 (PDT)
X-Received: by 2002:aca:2105:: with SMTP id 5mr1714889oiz.98.1628854455715;
        Fri, 13 Aug 2021 04:34:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628854455; cv=none;
        d=google.com; s=arc-20160816;
        b=X5UIfIWlsQqtTAIBQUbDtzEu2u5AIs7pyJeIJhE8kqXa3XqDR7dDsdK6Sv2VwyKJmj
         cxMCQ0Qz6UfYzIyp03Xsm91MIa7GF6xera52i/w7ujMPgyLcaxyfytDE5uLv7WtVz97a
         Gt7HbpJYrlZDeJJjpCkc543wKKVoaxArYcrYdfpql3RcrGTyRFusvasAoj6RJEZkc0fh
         4ijbIQEttyT+ORpJyer8qMNF9imSt6mqHPMLmU/bqKQOgravEO7oOx0lBFIXF2nSW7Il
         i6IYfmGpFva/o+mKAHCjQr2WiZnXYzLn35ajwUDlamWIy3ITVUf8hQEEGY73QMm3k+Ib
         NtOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=Tn0vOVtSKGuiN4TT4lV4zYOhM0gXv/nX06RcxtQali0=;
        b=ZVMiZzRI1S3O6R7wnL9aAVfoaOK5WIjtt5RfGU3tAqwGIODA5bvqPsn7tsv1ngUfVH
         44kO6+4TOwSzkfmDJdRVb5W9gxqyYU2Nah6XVizoU+xIaYJ22OCtM7GQCiGSmF83A/0n
         OvC5/TmKnR41Bgx+n4YJR5oFFn61ZNl3LrldbsskLr/yYEXjzoEkl+SkPU4RfgDAyB+q
         NOjVeclp1wPOo7/5ZGh45XydO+fkZEYaaL+Ifm0fhggQ1WVIe+dDqacjtu0x9EpF7N7h
         u51A/o4CcTQ64vh4sF5Qg2JKebzz13ExneleFd+1hRCbuOs8ikOz9x8dCWygzJ0jaQ/O
         2wHQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga01.intel.com (mga01.intel.com. [192.55.52.88])
        by gmr-mx.google.com with ESMTPS id k2si98160oou.2.2021.08.13.04.34.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Aug 2021 04:34:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) client-ip=192.55.52.88;
X-IronPort-AV: E=McAfee;i="6200,9189,10074"; a="237588679"
X-IronPort-AV: E=Sophos;i="5.84,318,1620716400"; 
   d="gz'50?scan'50,208,50";a="237588679"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Aug 2021 04:34:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,318,1620716400"; 
   d="gz'50?scan'50,208,50";a="508188665"
Received: from lkp-server01.sh.intel.com (HELO d053b881505b) ([10.239.97.150])
  by fmsmga004.fm.intel.com with ESMTP; 13 Aug 2021 04:34:11 -0700
Received: from kbuild by d053b881505b with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1mEVRz-000NkT-2Z; Fri, 13 Aug 2021 11:34:11 +0000
Date: Fri, 13 Aug 2021 19:33:26 +0800
From: kernel test robot <lkp@intel.com>
To: Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	linux-arm-kernel@lists.infradead.org,
	Michal Simek <monstr@monstr.eu>,
	Harini Katakam <harini.katakam@xilinx.com>
Subject: [xlnx:xlnx_rebase_v5.10 813/1761]
 drivers/net/ethernet/xilinx/xilinx_axienet_main.c:1141:3: warning:
 comparison of distinct pointer types ('unsigned long *' and 'typeof (flags)
 *' (aka 'unsigned int *'))
Message-ID: <202108131920.UYU6n66W-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="17pEHd4RhPHOinZp"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted
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


--17pEHd4RhPHOinZp
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://github.com/Xilinx/linux-xlnx xlnx_rebase_v5.10
head:   e14d4574ca81a569ee6d07e03271f2ae2dad38e4
commit: 1b5d1c43433b3ec5407db48688e717285e7edafe [813/1761] net: xilinx: axiethernet: Add check for transmit data FIFO vacancy
config: s390-randconfig-r012-20210812 (attached as .config)
compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project 767496d19cb9a1fbba57ff08095faa161998ee36)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install s390 cross compiling tool for clang build
        # apt-get install binutils-s390x-linux-gnu
        # https://github.com/Xilinx/linux-xlnx/commit/1b5d1c43433b3ec5407db48688e717285e7edafe
        git remote add xlnx https://github.com/Xilinx/linux-xlnx
        git fetch --no-tags xlnx xlnx_rebase_v5.10
        git checkout 1b5d1c43433b3ec5407db48688e717285e7edafe
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=s390 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

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
   In file included from drivers/net/ethernet/xilinx/xilinx_axienet_main.c:28:
   In file included from include/linux/etherdevice.h:20:
   In file included from include/linux/if_ether.h:19:
   In file included from include/linux/skbuff.h:31:
   In file included from include/linux/dma-mapping.h:10:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:80:
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
   In file included from drivers/net/ethernet/xilinx/xilinx_axienet_main.c:28:
   In file included from include/linux/etherdevice.h:20:
   In file included from include/linux/if_ether.h:19:
   In file included from include/linux/skbuff.h:31:
   In file included from include/linux/dma-mapping.h:10:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:80:
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
   In file included from drivers/net/ethernet/xilinx/xilinx_axienet_main.c:28:
   In file included from include/linux/etherdevice.h:20:
   In file included from include/linux/if_ether.h:19:
   In file included from include/linux/skbuff.h:31:
   In file included from include/linux/dma-mapping.h:10:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:80:
   include/asm-generic/io.h:490:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:120:12: note: expanded from macro '__swab32'
           __fswab32(x))
                     ^
   In file included from drivers/net/ethernet/xilinx/xilinx_axienet_main.c:28:
   In file included from include/linux/etherdevice.h:20:
   In file included from include/linux/if_ether.h:19:
   In file included from include/linux/skbuff.h:31:
   In file included from include/linux/dma-mapping.h:10:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:80:
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
>> drivers/net/ethernet/xilinx/xilinx_axienet_main.c:1141:3: warning: comparison of distinct pointer types ('unsigned long *' and 'typeof (flags) *' (aka 'unsigned int *')) [-Wcompare-distinct-pointer-types]
                   spin_lock_irqsave(&lp->ptp_tx_lock, flags);
                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/spinlock.h:384:2: note: expanded from macro 'spin_lock_irqsave'
           raw_spin_lock_irqsave(spinlock_check(lock), flags);     \
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/spinlock.h:251:3: note: expanded from macro 'raw_spin_lock_irqsave'
                   typecheck(unsigned long, flags);        \
                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/typecheck.h:12:18: note: expanded from macro 'typecheck'
           (void)(&__dummy == &__dummy2); \
                  ~~~~~~~~ ^  ~~~~~~~~~
   drivers/net/ethernet/xilinx/xilinx_axienet_main.c:702:12: warning: unused function 'axienet_free_tx_chain' [-Wunused-function]
   static int axienet_free_tx_chain(struct net_device *ndev, u32 first_bd,
              ^
   In file included from drivers/net/ethernet/xilinx/xilinx_axienet_main.c:25:
   In file included from include/linux/clk.h:13:
   In file included from include/linux/kernel.h:12:
   In file included from include/linux/bitops.h:29:
   arch/s390/include/asm/bitops.h:90:4: error: invalid operand in inline asm: 'ni	$0,${1:b}'
                           "ni     %0,%b1\n"
                           ^
   arch/s390/include/asm/bitops.h:90:4: error: invalid operand in inline asm: 'ni	$0,${1:b}'
   arch/s390/include/asm/bitops.h:90:4: error: invalid operand in inline asm: 'ni	$0,${1:b}'
   arch/s390/include/asm/bitops.h:69:4: error: invalid operand in inline asm: 'oi	$0,${1:b}'
                           "oi     %0,%b1\n"
                           ^
   arch/s390/include/asm/bitops.h:69:4: error: invalid operand in inline asm: 'oi	$0,${1:b}'
   22 warnings and 5 errors generated.


vim +1141 drivers/net/ethernet/xilinx/xilinx_axienet_main.c

  1118	
  1119		if (msg_type == TX_TS_OP_NOOP) {
  1120			buf[0] = TX_TS_OP_NOOP;
  1121		} else if (msg_type == TX_TS_OP_ONESTEP) {
  1122			buf[0] = TX_TS_OP_ONESTEP;
  1123			buf[1] = TX_TS_CSUM_UPDATE;
  1124			buf[4] = TX_PTP_TS_OFFSET;
  1125			buf[6] = TX_PTP_CSUM_OFFSET;
  1126		} else {
  1127			buf[0] = TX_TS_OP_TWOSTEP;
  1128			buf[2] = cur_p->ptp_tx_ts_tag & 0xFF;
  1129			buf[3] = (cur_p->ptp_tx_ts_tag >> 8) & 0xFF;
  1130		}
  1131	
  1132		if (lp->axienet_config->mactype == XAXIENET_1G ||
  1133		    lp->axienet_config->mactype == XAXIENET_2_5G) {
  1134			memcpy(&val, buf, AXIENET_TS_HEADER_LEN);
  1135			swab64s(&val);
  1136			memcpy(buf, &val, AXIENET_TS_HEADER_LEN);
  1137		} else if (lp->axienet_config->mactype == XAXIENET_10G_25G ||
  1138			   lp->axienet_config->mactype == XAXIENET_MRMAC) {
  1139			memcpy(&tmp, buf, XXVENET_TS_HEADER_LEN);
  1140			/* Check for Transmit Data FIFO Vacancy */
> 1141			spin_lock_irqsave(&lp->ptp_tx_lock, flags);
  1142			if (!axienet_txts_ior(lp, XAXIFIFO_TXTS_TDFV)) {
  1143				spin_unlock_irqrestore(&lp->ptp_tx_lock, flags);
  1144				return NETDEV_TX_BUSY;
  1145			}
  1146			axienet_txts_iow(lp, XAXIFIFO_TXTS_TXFD, tmp);
  1147			axienet_txts_iow(lp, XAXIFIFO_TXTS_TLR,
  1148					 XXVENET_TS_HEADER_LEN);
  1149			spin_unlock_irqrestore(&lp->ptp_tx_lock, flags);
  1150		}
  1151	
  1152		return 0;
  1153	}
  1154	#endif
  1155	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202108131920.UYU6n66W-lkp%40intel.com.

--17pEHd4RhPHOinZp
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
AA==

--17pEHd4RhPHOinZp--
