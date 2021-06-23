Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBWV5ZSDAMGQEG3JNJMQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x337.google.com (mail-ot1-x337.google.com [IPv6:2607:f8b0:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id D62D03B1937
	for <lists+clang-built-linux@lfdr.de>; Wed, 23 Jun 2021 13:45:31 +0200 (CEST)
Received: by mail-ot1-x337.google.com with SMTP id f4-20020a0568302044b029044be209a5d7sf1067757otp.10
        for <lists+clang-built-linux@lfdr.de>; Wed, 23 Jun 2021 04:45:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624448730; cv=pass;
        d=google.com; s=arc-20160816;
        b=qwpTLUh4mnfvs9jCfaUZpfCcBfRD9JNC4YsjZEp8rhzxsvhlvJTPDxmIkJw46R28ca
         Y5VzZTCSLUkjrlAv/wq1eejz9xrwVuNLygxNyMdKYKyPeb7hc7UGrr53qJM0CO2LxqUg
         HrXvZ75SBV8PA51r0J4V7GaLdQKdCjV7vA1B9SdoP+LW6hSC6NnyUqGJ7/K3ZVFzxLqN
         Jf2D4YK0EMpDloOfoIbp+u+NlFVO0a1hr9t/S20RUXmLhdGJM35SEOfCLUdiHG29J6Jq
         5Z6ZKNEMo2eSxEVUywebMCIU0m96/BtD9ufjF4FBkKTgHiTttCubCWAHHltxLexPIZc4
         5ncg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=gtG8FshOju5O4cCGAgH4+e8Vc4kD8tzQFlX9dCzWLC0=;
        b=iuju3ZsoXbTU+JBeZ8gxs5oXMwJNCYGdFQ8/8U4LkhoVMioAu9epfbpXeWfB4f8ejy
         rBAjDSUG9BlAWyXIpr0yXqlrf7m8fHU/VcecroCJtq9crcSDG5z52UUzhXrP8jYOJ+gB
         zuXvg7HIOOvYUzxoc2F3MmcjqO/t9olisiSLnOaJKcOvS54YetBCqlX7Rt7wUE35lsFo
         dwzxMg4VQQVTGa/IZQ1HVEWqsMq14KlyowEvbMR5OmiJusXStTVfiQ1RLS1RRF1RmA22
         +gc4orFDgKns5N5v8MRJpKb2A/mAjq8wGNObStAXrT5HSgk7REB/MFaNsmDwGy4dlBjT
         cE8Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=gtG8FshOju5O4cCGAgH4+e8Vc4kD8tzQFlX9dCzWLC0=;
        b=GQnSGXasEU1W4HiZHUpICUDTW02iFb+md6TrUp8klkcq3WpvaBiR/sANs3CvRB1GF+
         HTOJLHlGLuTYwP44eQVJR59/N2U9E7JBJ41Ij2iC/i6rhooxz106HPj9oh4atAV2Elwm
         gTh8BMuTrxTT2AZEwT1e1KFjL6CIEcr1td8f77pIBe8c6gui84C5kw2kNeOe2Ldr6N62
         k+fc4vPKTVK+BGGypUREUwko07qQAsYTpOuouxHIhmNJiDuiH2HsQ06b7i05QGlZYfJu
         QwjV2GXB/H8vB5aHZDPzExcV19DxPTPLdbEX3nKa+zRPZqdXwvq+wz2hwbW3s7Z/Et0Q
         +TKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=gtG8FshOju5O4cCGAgH4+e8Vc4kD8tzQFlX9dCzWLC0=;
        b=al7Q7VHrMdnRtnQqdgYynstaw2PwWGSuHCclne+XNpVmCbW9OohYfoesqUMQCeLgug
         0fIQPYEHxohY995r7gibjUHcp8v2e7cQVWaYSkwMCMObifE9C19osiui/7Uxny1p/8Qn
         +dMM2uQy/oiC16uBcbB79r66ZTY4LBFwv4I5nkSK7+vsCwPbPh0QZpKls+dLhg5/SbAB
         CGzwRBYXDj0q5PA0FCcVV4j51Jqe0U9hZiyzlMQXOv/DS/2vsd75ApCtpHx9r+Sq284F
         LiLNuMAefHxjAbzdeFEwUWEwOk0W2hRP++HvL9aVl4Q6XMUyfsLeHogxif1rj9fZgA3X
         5Wtw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531SOxAi+SXXkQ80k+J140zSYB3b8EoHrWg1dXXCiGYghmAzXahX
	0jbyeOUUD3KvSINe/N4Td3k=
X-Google-Smtp-Source: ABdhPJy3FtKrwbwN80XA8Yom/MUwU0nj85TlLD93Ku4JoafZ3wv4ElsMLPdj5H2+DYqRJ/BCwM93Rg==
X-Received: by 2002:a05:6808:2019:: with SMTP id q25mr2864142oiw.84.1624448730592;
        Wed, 23 Jun 2021 04:45:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:db5a:: with SMTP id 26ls186093oot.9.gmail; Wed, 23 Jun
 2021 04:45:30 -0700 (PDT)
X-Received: by 2002:a4a:a18e:: with SMTP id k14mr7493492ool.29.1624448730019;
        Wed, 23 Jun 2021 04:45:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624448730; cv=none;
        d=google.com; s=arc-20160816;
        b=XiAzY4ab9e1gJCpFssAg11yvzL0lIsz5tbZB/WnH1PNQf8tLyVX2kLnIIFcxnKGlVP
         ZlxqhPdIMNN3Xzzn8I+Fi48LkmwPPA+vW+A3giaFl87k7SO4Scb5LKvE0IM69g1mSM9M
         RAziRAu1jXeX2rLT9/vCX2Fkx6YGeqUCh9UloAQURXtOTY74Q8VVmvM4iOUSRp27/yAg
         RhSo4f5Mnl4r2Oaiatbw7taFOwe/CZuYYkoYzCPEpQ2gZT1Pe6eyxXGn4QpRVCmow4j9
         diFh0mIY/A+qDM6rsFdwe860svazNAp2i01fSvUe0uDUSv7XQ6Kt35OFX3ZhJQUaARs+
         fIJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=VJ2rIUQr+h6RZFRzuiUWFe5uunE7LMQ0ReswBDpPYEs=;
        b=dgDjng3HQOINTNj+c1jIn15oLG5oMfWqWoOcHA1ezTxyd8PUu1CTG86JwpSUlQqjaq
         YiLWPnF8BiqI2xKoPX2usybx5bhVnZeKOyWnyjdAZ0laETG1f0WcKj7lMdqwEux2hjVo
         8USDnDZH+CjhzgFbk5xn+Nno3JPA1iDuAF8OWDhuTbQAOKEiq23OIA+AtZ6GOpYCDyrc
         OV69EXm8Ib+TnnTtx0K4pMFH4GTthgzOucXFN5EruIUQmTfpeT4eH+5lzxWgd/N0R6kj
         Fl8U0jP5QSnc3Nrg6+Z9J/ccN5jogY7YSKLOJ8hvFiOoHQ/8wQMY2IvM2otw3csWt9+8
         zb/g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga02.intel.com (mga02.intel.com. [134.134.136.20])
        by gmr-mx.google.com with ESMTPS id w16si492807oov.0.2021.06.23.04.45.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 23 Jun 2021 04:45:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) client-ip=134.134.136.20;
IronPort-SDR: gdOpv8piHOdhrbl3HgqlKHGU1lIH9ufMoW3sW823IYEy+TyJGECuQKWm/R3Qc3DrSqyG4rSl5L
 U5vg9P6euoeQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10023"; a="194384692"
X-IronPort-AV: E=Sophos;i="5.83,293,1616482800"; 
   d="gz'50?scan'50,208,50";a="194384692"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Jun 2021 04:45:21 -0700
IronPort-SDR: sijtngKRTxeAjku9MdXaG/6lMq/ZAyjGA3gOQIdzFCg3DJ7qbyMTslSv9FuEGdOAKy/jAhXNcu
 qd4dnFetP09g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,293,1616482800"; 
   d="gz'50?scan'50,208,50";a="423669661"
Received: from lkp-server01.sh.intel.com (HELO 4aae0cb4f5b5) ([10.239.97.150])
  by orsmga002.jf.intel.com with ESMTP; 23 Jun 2021 04:45:19 -0700
Received: from kbuild by 4aae0cb4f5b5 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lw1Jn-0005uf-2Z; Wed, 23 Jun 2021 11:45:19 +0000
Date: Wed, 23 Jun 2021 19:44:30 +0800
From: kernel test robot <lkp@intel.com>
To: Mike Rapoport <rppt@linux.ibm.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Mike Rapoport <rppt@kernel.org>
Subject: [rppt:meminit/descending-nodes/v1 2/3] mm/page_alloc.c:6511:2:
 error: void function 'init_unavailable_range' should not return a value
Message-ID: <202106231905.psssoVke-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="RnlQjJ0d97Da+TV1"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted
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


--RnlQjJ0d97Da+TV1
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/rppt/linux.git meminit/descending-nodes/v1
head:   4360e9f3bf49a500417f73e62a133567fdf9842e
commit: b3e781793b0c9f7c2ae41a9fe3d6dac8a7e53e06 [2/3] dev: fix memmap init for descending nodes
config: powerpc64-randconfig-r032-20210622 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project b259740801d3515810ecc15bf0c24b0d476a1608)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc64 cross compiling tool for clang build
        # apt-get install binutils-powerpc64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/rppt/linux.git/commit/?id=b3e781793b0c9f7c2ae41a9fe3d6dac8a7e53e06
        git remote add rppt https://git.kernel.org/pub/scm/linux/kernel/git/rppt/linux.git
        git fetch --no-tags rppt meminit/descending-nodes/v1
        git checkout b3e781793b0c9f7c2ae41a9fe3d6dac8a7e53e06
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   In file included from include/linux/hardirq.h:11:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:45:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insw, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:44:1: note: expanded from here
   __do_insw
   ^
   arch/powerpc/include/asm/io.h:557:56: note: expanded from macro '__do_insw'
   #define __do_insw(p, b, n)      readsw((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from mm/page_alloc.c:20:
   In file included from include/linux/highmem.h:10:
   In file included from include/linux/hardirq.h:11:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:47:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insl, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:48:1: note: expanded from here
   __do_insl
   ^
   arch/powerpc/include/asm/io.h:558:56: note: expanded from macro '__do_insl'
   #define __do_insl(p, b, n)      readsl((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from mm/page_alloc.c:20:
   In file included from include/linux/highmem.h:10:
   In file included from include/linux/hardirq.h:11:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:49:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsb, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:52:1: note: expanded from here
   __do_outsb
   ^
   arch/powerpc/include/asm/io.h:559:58: note: expanded from macro '__do_outsb'
   #define __do_outsb(p, b, n)     writesb((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from mm/page_alloc.c:20:
   In file included from include/linux/highmem.h:10:
   In file included from include/linux/hardirq.h:11:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:51:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsw, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:56:1: note: expanded from here
   __do_outsw
   ^
   arch/powerpc/include/asm/io.h:560:58: note: expanded from macro '__do_outsw'
   #define __do_outsw(p, b, n)     writesw((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from mm/page_alloc.c:20:
   In file included from include/linux/highmem.h:10:
   In file included from include/linux/hardirq.h:11:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:53:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsl, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:60:1: note: expanded from here
   __do_outsl
   ^
   arch/powerpc/include/asm/io.h:561:58: note: expanded from macro '__do_outsl'
   #define __do_outsl(p, b, n)     writesl((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   mm/page_alloc.c:3651:15: warning: no previous prototype for function 'should_fail_alloc_page' [-Wmissing-prototypes]
   noinline bool should_fail_alloc_page(gfp_t gfp_mask, unsigned int order)
                 ^
   mm/page_alloc.c:3651:10: note: declare 'static' if the function is not intended to be used outside of this translation unit
   noinline bool should_fail_alloc_page(gfp_t gfp_mask, unsigned int order)
            ^
            static 
>> mm/page_alloc.c:6511:2: error: void function 'init_unavailable_range' should not return a value [-Wreturn-type]
           return 0;
           ^      ~
   mm/page_alloc.c:6545:12: warning: variable 'zone_id' set but not used [-Wunused-but-set-variable]
           int i, j, zone_id, nid;
                     ^
   9 warnings and 1 error generated.


vim +/init_unavailable_range +6511 mm/page_alloc.c

^1da177e4c3f41 Linus Torvalds 2005-04-16  6459  
0740a50b9baa44 Mike Rapoport  2021-03-12  6460  #if !defined(CONFIG_FLAT_NODE_MEM_MAP)
0740a50b9baa44 Mike Rapoport  2021-03-12  6461  /*
0740a50b9baa44 Mike Rapoport  2021-03-12  6462   * Only struct pages that correspond to ranges defined by memblock.memory
0740a50b9baa44 Mike Rapoport  2021-03-12  6463   * are zeroed and initialized by going through __init_single_page() during
b3e781793b0c9f Mike Rapoport  2021-06-23  6464   * memmap_init_zone_range().
0740a50b9baa44 Mike Rapoport  2021-03-12  6465   *
0740a50b9baa44 Mike Rapoport  2021-03-12  6466   * But, there could be struct pages that correspond to holes in
0740a50b9baa44 Mike Rapoport  2021-03-12  6467   * memblock.memory. This can happen because of the following reasons:
0740a50b9baa44 Mike Rapoport  2021-03-12  6468   * - physical memory bank size is not necessarily the exact multiple of the
0740a50b9baa44 Mike Rapoport  2021-03-12  6469   *   arbitrary section size
0740a50b9baa44 Mike Rapoport  2021-03-12  6470   * - early reserved memory may not be listed in memblock.memory
0740a50b9baa44 Mike Rapoport  2021-03-12  6471   * - memory layouts defined with memmap= kernel parameter may not align
0740a50b9baa44 Mike Rapoport  2021-03-12  6472   *   nicely with memmap sections
0740a50b9baa44 Mike Rapoport  2021-03-12  6473   *
0740a50b9baa44 Mike Rapoport  2021-03-12  6474   * Explicitly initialize those struct pages so that:
0740a50b9baa44 Mike Rapoport  2021-03-12  6475   * - PG_Reserved is set
0740a50b9baa44 Mike Rapoport  2021-03-12  6476   * - zone and node links point to zone and node that span the page if the
0740a50b9baa44 Mike Rapoport  2021-03-12  6477   *   hole is in the middle of a zone
0740a50b9baa44 Mike Rapoport  2021-03-12  6478   * - zone and node links point to adjacent zone/node if the hole falls on
0740a50b9baa44 Mike Rapoport  2021-03-12  6479   *   the zone boundary; the pages in such holes will be prepended to the
0740a50b9baa44 Mike Rapoport  2021-03-12  6480   *   zone/node above the hole except for the trailing pages in the last
0740a50b9baa44 Mike Rapoport  2021-03-12  6481   *   section that will be appended to the zone/node below.
0740a50b9baa44 Mike Rapoport  2021-03-12  6482   */
b3e781793b0c9f Mike Rapoport  2021-06-23  6483  static void __init init_unavailable_range(unsigned long spfn,
0740a50b9baa44 Mike Rapoport  2021-03-12  6484  					  unsigned long epfn,
0740a50b9baa44 Mike Rapoport  2021-03-12  6485  					  int zone, int node)
0740a50b9baa44 Mike Rapoport  2021-03-12  6486  {
0740a50b9baa44 Mike Rapoport  2021-03-12  6487  	unsigned long pfn;
0740a50b9baa44 Mike Rapoport  2021-03-12  6488  	u64 pgcnt = 0;
0740a50b9baa44 Mike Rapoport  2021-03-12  6489  
b3e781793b0c9f Mike Rapoport  2021-06-23  6490  	pr_info("init_unavailable_range: node: %d zone: %s: %lx - %lx\n", node, zone_names[zone], spfn, epfn);
b3e781793b0c9f Mike Rapoport  2021-06-23  6491  
0740a50b9baa44 Mike Rapoport  2021-03-12  6492  	for (pfn = spfn; pfn < epfn; pfn++) {
0740a50b9baa44 Mike Rapoport  2021-03-12  6493  		if (!pfn_valid(ALIGN_DOWN(pfn, pageblock_nr_pages))) {
0740a50b9baa44 Mike Rapoport  2021-03-12  6494  			pfn = ALIGN_DOWN(pfn, pageblock_nr_pages)
0740a50b9baa44 Mike Rapoport  2021-03-12  6495  				+ pageblock_nr_pages - 1;
0740a50b9baa44 Mike Rapoport  2021-03-12  6496  			continue;
0740a50b9baa44 Mike Rapoport  2021-03-12  6497  		}
0740a50b9baa44 Mike Rapoport  2021-03-12  6498  		__init_single_page(pfn_to_page(pfn), pfn, zone, node);
0740a50b9baa44 Mike Rapoport  2021-03-12  6499  		__SetPageReserved(pfn_to_page(pfn));
0740a50b9baa44 Mike Rapoport  2021-03-12  6500  		pgcnt++;
0740a50b9baa44 Mike Rapoport  2021-03-12  6501  	}
0740a50b9baa44 Mike Rapoport  2021-03-12  6502  
b3e781793b0c9f Mike Rapoport  2021-06-23  6503  	pr_info("On node %d, zone %s: %lld pages in unavailable ranges",
b3e781793b0c9f Mike Rapoport  2021-06-23  6504  		node, zone_names[zone], pgcnt);
0740a50b9baa44 Mike Rapoport  2021-03-12  6505  }
0740a50b9baa44 Mike Rapoport  2021-03-12  6506  #else
b3e781793b0c9f Mike Rapoport  2021-06-23  6507  static inline void init_unavailable_range(unsigned long spfn,
b3e781793b0c9f Mike Rapoport  2021-06-23  6508  					  unsigned long epfn,
0740a50b9baa44 Mike Rapoport  2021-03-12  6509  					  int zone, int node)
0740a50b9baa44 Mike Rapoport  2021-03-12  6510  {
0740a50b9baa44 Mike Rapoport  2021-03-12 @6511  	return 0;
0740a50b9baa44 Mike Rapoport  2021-03-12  6512  }
0740a50b9baa44 Mike Rapoport  2021-03-12  6513  #endif
0740a50b9baa44 Mike Rapoport  2021-03-12  6514  

:::::: The code at line 6511 was first introduced by commit
:::::: 0740a50b9baa4472cfb12442df4b39e2712a64a4 mm/page_alloc.c: refactor initialization of struct page for holes in memory layout

:::::: TO: Mike Rapoport <rppt@linux.ibm.com>
:::::: CC: Linus Torvalds <torvalds@linux-foundation.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202106231905.psssoVke-lkp%40intel.com.

--RnlQjJ0d97Da+TV1
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
v5P/ANWVU0azlQEA

--RnlQjJ0d97Da+TV1--
