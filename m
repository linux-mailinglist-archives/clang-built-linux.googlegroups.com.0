Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBNNIW6AQMGQET5B37EQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x737.google.com (mail-qk1-x737.google.com [IPv6:2607:f8b0:4864:20::737])
	by mail.lfdr.de (Postfix) with ESMTPS id A4C9731E45A
	for <lists+clang-built-linux@lfdr.de>; Thu, 18 Feb 2021 03:43:02 +0100 (CET)
Received: by mail-qk1-x737.google.com with SMTP id p27sf391901qkp.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 17 Feb 2021 18:43:02 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1613616181; cv=pass;
        d=google.com; s=arc-20160816;
        b=N+JSZh71B9JzfJ6rCWE7K1bZ90U+8nct9BGDig/9Z526P6f+Rj7f/6bNoPckTgsra0
         bXgR8QyKa6h05OPG+gBZch/Gw3vnmaHV5D5wGNeZv9v5uD2IgKYtXMcRjK8DeTNjrmFR
         U76OeLzF/iUZvn1zTkEHZLsViP0kpna+8xrOd9PkKKb4ayceR7WCGQjss1kwddPQ7/0i
         lDvr8aMpgUqXm8uh7RJ8fMRbXqckgxjm3JZg2CAazVavKCdiE2kiRGwz/khalC93tvY3
         4Qm8hlAPQu7SHO2WDknT2UHtZK0UWQ5vzlFfPVnyT8/qxaQ3D20AbrvdTXAdwlxBwbuj
         WT3w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=U6h1Il2AJCkmKFjvM9LaeLE1kRAgb6q7oSyLZNdyH/E=;
        b=SXbX6Fsq462J3cW5yyA//sXNGdB1rfVLjNsG0GPcCKMVQT3a58zkQRerWDOhIZhfJI
         Y1nh26dN/jtehrxjlcI2RTD4vYFu5uhvK5K2KkH9m0Q8xbq/y7cRBxCfNORndR3P+qrR
         vr43/RmtEBG5MD0wUpSVCoMa6xTc37M+UqKWsw3L7JaG3rfZC5VoEmBrBw/mcxR9C5JE
         RVfXX8B8ZV11OiZW38e4tKrosfHFueISx9wgrnbX9K/6LXmEfAT3kpccuVtfWYrlFELL
         soc0yJ2TsDAlWS1avZHTkwWXLvUZCCUatWr1wXW/g9gGkE4qmCjUW3KKdLp5AkGs9KPb
         awKA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=U6h1Il2AJCkmKFjvM9LaeLE1kRAgb6q7oSyLZNdyH/E=;
        b=mi3LsTMHDpsKNPJBZe6lTP/YgIZcQSyTKeyO5nHl9R4O0mMLvQsF5ABpmPPtkeLECT
         tNdY/44bQ9Nn5XTgunaIVaifIjn8l33rY8ksu/Tugb5m1LhgL43g8mFaksN4YI9XL7ic
         FabfgHFG0losxDu1N7A58DmK57NWeVi4D+8MBhxyrhNJ+dWXxwZmdUjmfu4uGIl//YAW
         4uj20e2d5dxPJMABpFdfd6rYXO43Uw501l0hs18/loEzP31lnTDUx1HrfnFOm3I/5GgC
         5b6eyWc0NxTbcTHwPLBWsr4544ujex6nIkg/BKc7orOJNuCnIqJKmMr1YinITc3DAshD
         iTMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=U6h1Il2AJCkmKFjvM9LaeLE1kRAgb6q7oSyLZNdyH/E=;
        b=rh0WaTLuP3xW8Xr/3Zb4+MDk0XL0zcvOYFiCxPPr5MuIOGzULWNGeOx7vODKF17rh6
         STocNyeCmlmkBJKh9IiJO/36KlwhituxqmWooSwzStuPcS3nqiF4zVvb/pq1jz45lsHw
         kyi/IWaBoibaif6bIa1rAibqAYA+LpcW4MQEPMd+ObZrmVJllfE32WIgN7Nz57THhqbi
         h3W8D7ruisnnFazjFLj7DDLxsBQxhCzFyOkiug+sgB7LGxRa8pelxt8WcwR+9eZfwNnt
         j3wiDTRje8goFnHvfqV/YfDr00PZd4MaAsvXRuY6OHRcaVRFgJqmsgJI3HI1eHj/QO5U
         QBKw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533doBH3GKyrkfEk340r6zGGgnh1TjTGDL8pbDXKw076TGkYoMyz
	W/dIi8Ib5gbRJeMg/TFnD2c=
X-Google-Smtp-Source: ABdhPJw3t6BQEP7El5N2ivaSEPtIz1pNy/427mbFEV2WyXMCeKzMPloEANdjFnrmJ16Ik1P5mi1m/g==
X-Received: by 2002:ac8:110e:: with SMTP id c14mr2412322qtj.78.1613616181429;
        Wed, 17 Feb 2021 18:43:01 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:5d10:: with SMTP id f16ls1565167qtx.6.gmail; Wed, 17 Feb
 2021 18:43:01 -0800 (PST)
X-Received: by 2002:a05:622a:3ca:: with SMTP id k10mr2432182qtx.270.1613616180810;
        Wed, 17 Feb 2021 18:43:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1613616180; cv=none;
        d=google.com; s=arc-20160816;
        b=qVZPSr5hW64Ytmz/mfFAJTBwlI+SZHyx1N0nXyLxxH8lh+AnZJRIaKcftacxSKxsAs
         rmmksmScwVLH389domlnec4v/YXku+yiI0siH8o1QSPLkeWnwDynp7iUdnq/V3KPxp3y
         Tzf3Wl9hSl6fDTmTSAAEBurLnNOQNa4AdeFDwG+LEXCJP0gVjNo+XiuAAqBup7rcjwwe
         KqftKzBUjxp7GWXB+/ue7mqGvzI+bmmUMH4woBDTmATqBaov6ZjL21Ah2il025n4Jt/x
         64GBcU4u3HNclQldgJtNzPAz5/p0s6CoMCzrBhdjYp1zGQ0sMvVVFfYGyUk54l5Vp/3A
         fbnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=SOyhVUvbQQ+PrFtfANydljC/qiDp/Q0DNXijarG3nmU=;
        b=gkzw+yMME/VgNGLFiG6H6pMGrumS6e98O1gkCxaj3eDbtXBmCdn4Cu2qf1PAwWfxhU
         fhXHellda1eBmkfx5cWPLed3FDG8hqjC38FbnmFKzQkZTsSiiUWmW1uChMy6ft3Z9D4e
         TufNbPiAvmkHtk8rAolsPp/0+cXx+R1Co1GlYF6YrPUJwQuuIe/98TL9uFQ4Ui/2f+oG
         hCAFXV/PuAXkUSDuRYjrGzvE9LgfAOuLZzLD+v+pL/e7VbrGsoZJo8XKIMGtJBL8GQn7
         C92Ydkc7a2xbhcGR8PZaObu5yqOkqvagCAC28k+cD14R5RdvIk1MyOhCGmmmHd+8M3pT
         OJPQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga03.intel.com (mga03.intel.com. [134.134.136.65])
        by gmr-mx.google.com with ESMTPS id b16si266006qtr.2.2021.02.17.18.43.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Feb 2021 18:43:00 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) client-ip=134.134.136.65;
IronPort-SDR: VZfBiM4ac70HCpd5opNRXYoyrEKbjOFrL3hN4J6oC0+oDxXPsMaHVHYFk5F9K+gnj0dPOvMEDe
 /EQwCW5XmESg==
X-IronPort-AV: E=McAfee;i="6000,8403,9898"; a="183451664"
X-IronPort-AV: E=Sophos;i="5.81,185,1610438400"; 
   d="gz'50?scan'50,208,50";a="183451664"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Feb 2021 18:42:58 -0800
IronPort-SDR: IWzeScr0IRt1jDccEA+FhqeLJVc29+q0etNIL3IjARsd6gHOfft90o7OQP13s4PKEdDzNrwxC+
 IAzN4IQezGjA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,185,1610438400"; 
   d="gz'50?scan'50,208,50";a="581100749"
Received: from lkp-server02.sh.intel.com (HELO cd560a204411) ([10.239.97.151])
  by orsmga005.jf.intel.com with ESMTP; 17 Feb 2021 18:42:56 -0800
Received: from kbuild by cd560a204411 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lCZHL-0009O6-P9; Thu, 18 Feb 2021 02:42:55 +0000
Date: Thu, 18 Feb 2021 10:41:56 +0800
From: kernel test robot <lkp@intel.com>
To: Johannes Thumshirn <johannes.thumshirn@wdc.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	David Sterba <dsterba@suse.com>
Subject: [kdave-btrfs-devel:dev/auth-hash 158/162] fs/btrfs/super.c:608:8:
 warning: shift count >= width of type
Message-ID: <202102181051.kIibpQUC-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="gKMricLos+KVdGMg"
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


--gKMricLos+KVdGMg
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://github.com/kdave/btrfs-devel.git dev/auth-hash
head:   212f7564065bdfda0a55ab1ef52a4868572359de
commit: 13be51617b056261da9212d109c77311a895bb6f [158/162] btrfs: add authentication support
config: powerpc64-randconfig-r032-20210215 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project c9439ca36342fb6013187d0a69aef92736951476)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc64 cross compiling tool for clang build
        # apt-get install binutils-powerpc64-linux-gnu
        # https://github.com/kdave/btrfs-devel/commit/13be51617b056261da9212d109c77311a895bb6f
        git remote add kdave-btrfs-devel https://github.com/kdave/btrfs-devel.git
        git fetch --no-tags kdave-btrfs-devel dev/auth-hash
        git checkout 13be51617b056261da9212d109c77311a895bb6f
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

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
   <scratch space>:115:1: note: expanded from here
   __do_insw
   ^
   arch/powerpc/include/asm/io.h:557:56: note: expanded from macro '__do_insw'
   #define __do_insw(p, b, n)      readsw((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from fs/btrfs/super.c:6:
   In file included from include/linux/blkdev.h:14:
   In file included from include/linux/pagemap.h:11:
   In file included from include/linux/highmem.h:10:
   In file included from include/linux/hardirq.h:10:
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
   <scratch space>:117:1: note: expanded from here
   __do_insl
   ^
   arch/powerpc/include/asm/io.h:558:56: note: expanded from macro '__do_insl'
   #define __do_insl(p, b, n)      readsl((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from fs/btrfs/super.c:6:
   In file included from include/linux/blkdev.h:14:
   In file included from include/linux/pagemap.h:11:
   In file included from include/linux/highmem.h:10:
   In file included from include/linux/hardirq.h:10:
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
   <scratch space>:119:1: note: expanded from here
   __do_outsb
   ^
   arch/powerpc/include/asm/io.h:559:58: note: expanded from macro '__do_outsb'
   #define __do_outsb(p, b, n)     writesb((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from fs/btrfs/super.c:6:
   In file included from include/linux/blkdev.h:14:
   In file included from include/linux/pagemap.h:11:
   In file included from include/linux/highmem.h:10:
   In file included from include/linux/hardirq.h:10:
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
   <scratch space>:121:1: note: expanded from here
   __do_outsw
   ^
   arch/powerpc/include/asm/io.h:560:58: note: expanded from macro '__do_outsw'
   #define __do_outsw(p, b, n)     writesw((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from fs/btrfs/super.c:6:
   In file included from include/linux/blkdev.h:14:
   In file included from include/linux/pagemap.h:11:
   In file included from include/linux/highmem.h:10:
   In file included from include/linux/hardirq.h:10:
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
   <scratch space>:123:1: note: expanded from here
   __do_outsl
   ^
   arch/powerpc/include/asm/io.h:561:58: note: expanded from macro '__do_outsl'
   #define __do_outsl(p, b, n)     writesl((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
>> fs/btrfs/super.c:608:8: warning: shift count >= width of type [-Wshift-count-overflow]
                           if (btrfs_test_opt(info, AUTH_KEY)) {
                               ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   fs/btrfs/ctree.h:1396:7: note: expanded from macro 'btrfs_test_opt'
                                            BTRFS_MOUNT_##opt)
                                            ^~~~~~~~~~~~~~~~~
   <scratch space>:81:1: note: expanded from here
   BTRFS_MOUNT_AUTH_KEY
   ^~~~~~~~~~~~~~~~~~~~
   fs/btrfs/ctree.h:1387:34: note: expanded from macro 'BTRFS_MOUNT_AUTH_KEY'
   #define BTRFS_MOUNT_AUTH_KEY            (1 << 32)
                                              ^  ~~
   fs/btrfs/super.c:628:8: warning: shift count >= width of type [-Wshift-count-overflow]
                           if (btrfs_test_opt(info, AUTH_KEY)) {
                               ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   fs/btrfs/ctree.h:1396:7: note: expanded from macro 'btrfs_test_opt'
                                            BTRFS_MOUNT_##opt)
                                            ^~~~~~~~~~~~~~~~~
   <scratch space>:88:1: note: expanded from here
   BTRFS_MOUNT_AUTH_KEY
   ^~~~~~~~~~~~~~~~~~~~
   fs/btrfs/ctree.h:1387:34: note: expanded from macro 'BTRFS_MOUNT_AUTH_KEY'
   #define BTRFS_MOUNT_AUTH_KEY            (1 << 32)
                                              ^  ~~
   fs/btrfs/super.c:1127:3: warning: shift count >= width of type [-Wshift-count-overflow]
                   btrfs_set_opt(info->mount_opt, AUTH_KEY);
                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   fs/btrfs/ctree.h:1393:40: note: expanded from macro 'btrfs_set_opt'
   #define btrfs_set_opt(o, opt)           ((o) |= BTRFS_MOUNT_##opt)
                                                   ^~~~~~~~~~~~~~~~~
   <scratch space>:69:1: note: expanded from here
   BTRFS_MOUNT_AUTH_KEY
   ^~~~~~~~~~~~~~~~~~~~
   fs/btrfs/ctree.h:1387:34: note: expanded from macro 'BTRFS_MOUNT_AUTH_KEY'
   #define BTRFS_MOUNT_AUTH_KEY            (1 << 32)
                                              ^  ~~
   fs/btrfs/super.c:1574:6: warning: shift count >= width of type [-Wshift-count-overflow]
           if (btrfs_test_opt(info, AUTH_KEY))
               ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   fs/btrfs/ctree.h:1396:7: note: expanded from macro 'btrfs_test_opt'
                                            BTRFS_MOUNT_##opt)
                                            ^~~~~~~~~~~~~~~~~
   <scratch space>:102:1: note: expanded from here
   BTRFS_MOUNT_AUTH_KEY
   ^~~~~~~~~~~~~~~~~~~~
   fs/btrfs/ctree.h:1387:34: note: expanded from macro 'BTRFS_MOUNT_AUTH_KEY'
   #define BTRFS_MOUNT_AUTH_KEY            (1 << 32)
                                              ^  ~~
   16 warnings generated.
--
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
   <scratch space>:85:1: note: expanded from here
   __do_insw
   ^
   arch/powerpc/include/asm/io.h:557:56: note: expanded from macro '__do_insw'
   #define __do_insw(p, b, n)      readsw((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from fs/btrfs/disk-io.c:7:
   In file included from include/linux/blkdev.h:14:
   In file included from include/linux/pagemap.h:11:
   In file included from include/linux/highmem.h:10:
   In file included from include/linux/hardirq.h:10:
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
   <scratch space>:87:1: note: expanded from here
   __do_insl
   ^
   arch/powerpc/include/asm/io.h:558:56: note: expanded from macro '__do_insl'
   #define __do_insl(p, b, n)      readsl((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from fs/btrfs/disk-io.c:7:
   In file included from include/linux/blkdev.h:14:
   In file included from include/linux/pagemap.h:11:
   In file included from include/linux/highmem.h:10:
   In file included from include/linux/hardirq.h:10:
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
   <scratch space>:89:1: note: expanded from here
   __do_outsb
   ^
   arch/powerpc/include/asm/io.h:559:58: note: expanded from macro '__do_outsb'
   #define __do_outsb(p, b, n)     writesb((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from fs/btrfs/disk-io.c:7:
   In file included from include/linux/blkdev.h:14:
   In file included from include/linux/pagemap.h:11:
   In file included from include/linux/highmem.h:10:
   In file included from include/linux/hardirq.h:10:
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
   <scratch space>:91:1: note: expanded from here
   __do_outsw
   ^
   arch/powerpc/include/asm/io.h:560:58: note: expanded from macro '__do_outsw'
   #define __do_outsw(p, b, n)     writesw((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from fs/btrfs/disk-io.c:7:
   In file included from include/linux/blkdev.h:14:
   In file included from include/linux/pagemap.h:11:
   In file included from include/linux/highmem.h:10:
   In file included from include/linux/hardirq.h:10:
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
   <scratch space>:93:1: note: expanded from here
   __do_outsl
   ^
   arch/powerpc/include/asm/io.h:561:58: note: expanded from macro '__do_outsl'
   #define __do_outsl(p, b, n)     writesl((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
>> fs/btrfs/disk-io.c:2321:7: warning: shift count >= width of type [-Wshift-count-overflow]
           if (!btrfs_test_opt(fs_info, AUTH_KEY))
                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   fs/btrfs/ctree.h:1396:7: note: expanded from macro 'btrfs_test_opt'
                                            BTRFS_MOUNT_##opt)
                                            ^~~~~~~~~~~~~~~~~
   <scratch space>:102:1: note: expanded from here
   BTRFS_MOUNT_AUTH_KEY
   ^~~~~~~~~~~~~~~~~~~~
   fs/btrfs/ctree.h:1387:34: note: expanded from macro 'BTRFS_MOUNT_AUTH_KEY'
   #define BTRFS_MOUNT_AUTH_KEY            (1 << 32)
                                              ^  ~~
   13 warnings generated.
--
   In file included from fs/btrfs/ioctl.c:7:
   In file included from include/linux/bio.h:8:
   In file included from include/linux/highmem.h:10:
   In file included from include/linux/hardirq.h:10:
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
   <scratch space>:27:1: note: expanded from here
   __do_insw
   ^
   arch/powerpc/include/asm/io.h:557:56: note: expanded from macro '__do_insw'
   #define __do_insw(p, b, n)      readsw((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from fs/btrfs/ioctl.c:7:
   In file included from include/linux/bio.h:8:
   In file included from include/linux/highmem.h:10:
   In file included from include/linux/hardirq.h:10:
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
   <scratch space>:29:1: note: expanded from here
   __do_insl
   ^
   arch/powerpc/include/asm/io.h:558:56: note: expanded from macro '__do_insl'
   #define __do_insl(p, b, n)      readsl((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from fs/btrfs/ioctl.c:7:
   In file included from include/linux/bio.h:8:
   In file included from include/linux/highmem.h:10:
   In file included from include/linux/hardirq.h:10:
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
   <scratch space>:31:1: note: expanded from here
   __do_outsb
   ^
   arch/powerpc/include/asm/io.h:559:58: note: expanded from macro '__do_outsb'
   #define __do_outsb(p, b, n)     writesb((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from fs/btrfs/ioctl.c:7:
   In file included from include/linux/bio.h:8:
   In file included from include/linux/highmem.h:10:
   In file included from include/linux/hardirq.h:10:
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
   <scratch space>:33:1: note: expanded from here
   __do_outsw
   ^
   arch/powerpc/include/asm/io.h:560:58: note: expanded from macro '__do_outsw'
   #define __do_outsw(p, b, n)     writesw((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from fs/btrfs/ioctl.c:7:
   In file included from include/linux/bio.h:8:
   In file included from include/linux/highmem.h:10:
   In file included from include/linux/hardirq.h:10:
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
   <scratch space>:35:1: note: expanded from here
   __do_outsl
   ^
   arch/powerpc/include/asm/io.h:561:58: note: expanded from macro '__do_outsl'
   #define __do_outsl(p, b, n)     writesl((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
>> fs/btrfs/ioctl.c:271:7: warning: shift count >= width of type [-Wshift-count-overflow]
                   if (btrfs_test_opt(fs_info, AUTH_KEY)) {
                       ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   fs/btrfs/ctree.h:1396:7: note: expanded from macro 'btrfs_test_opt'
                                            BTRFS_MOUNT_##opt)
                                            ^~~~~~~~~~~~~~~~~
   <scratch space>:147:1: note: expanded from here
   BTRFS_MOUNT_AUTH_KEY
   ^~~~~~~~~~~~~~~~~~~~
   fs/btrfs/ctree.h:1387:34: note: expanded from macro 'BTRFS_MOUNT_AUTH_KEY'
   #define BTRFS_MOUNT_AUTH_KEY            (1 << 32)
                                              ^  ~~
   13 warnings generated.


vim +608 fs/btrfs/super.c

   547	
   548	/*
   549	 * Regular mount options parser.  Everything that is needed only when
   550	 * reading in a new superblock is parsed here.
   551	 * XXX JDM: This needs to be cleaned up for remount.
   552	 */
   553	int btrfs_parse_options(struct btrfs_fs_info *info, char *options,
   554				unsigned long new_flags)
   555	{
   556		substring_t args[MAX_OPT_ARGS];
   557		char *p, *num;
   558		int intarg;
   559		int ret = 0;
   560		char *compress_type;
   561		bool compress_force = false;
   562		enum btrfs_compression_type saved_compress_type;
   563		int saved_compress_level;
   564		bool saved_compress_force;
   565		int no_compress = 0;
   566	
   567		if (btrfs_fs_compat_ro(info, FREE_SPACE_TREE))
   568			btrfs_set_opt(info->mount_opt, FREE_SPACE_TREE);
   569		else if (btrfs_free_space_cache_v1_active(info)) {
   570			if (btrfs_is_zoned(info)) {
   571				btrfs_info(info,
   572				"zoned: clearing existing space cache");
   573				btrfs_set_super_cache_generation(info->super_copy, 0);
   574			} else {
   575				btrfs_set_opt(info->mount_opt, SPACE_CACHE);
   576			}
   577		}
   578	
   579		/*
   580		 * Even the options are empty, we still need to do extra check
   581		 * against new flags
   582		 */
   583		if (!options)
   584			goto check;
   585	
   586		while ((p = strsep(&options, ",")) != NULL) {
   587			int token;
   588			if (!*p)
   589				continue;
   590	
   591			token = match_token(p, tokens, args);
   592			switch (token) {
   593			case Opt_degraded:
   594				btrfs_info(info, "allowing degraded mounts");
   595				btrfs_set_opt(info->mount_opt, DEGRADED);
   596				break;
   597			case Opt_subvol:
   598			case Opt_subvol_empty:
   599			case Opt_subvolid:
   600			case Opt_device:
   601				/*
   602				 * These are parsed by btrfs_parse_subvol_options
   603				 * and btrfs_parse_early_options
   604				 * and can be happily ignored here.
   605				 */
   606				break;
   607			case Opt_nodatasum:
 > 608				if (btrfs_test_opt(info, AUTH_KEY)) {
   609					btrfs_info(info,
   610						   "nodatasum not supported on an authnticated file-system");
   611					break;
   612				}
   613				btrfs_set_and_info(info, NODATASUM,
   614						   "setting nodatasum");
   615				break;
   616			case Opt_datasum:
   617				if (btrfs_test_opt(info, NODATASUM)) {
   618					if (btrfs_test_opt(info, NODATACOW))
   619						btrfs_info(info,
   620							   "setting datasum, datacow enabled");
   621					else
   622						btrfs_info(info, "setting datasum");
   623				}
   624				btrfs_clear_opt(info->mount_opt, NODATACOW);
   625				btrfs_clear_opt(info->mount_opt, NODATASUM);
   626				break;
   627			case Opt_nodatacow:
   628				if (btrfs_test_opt(info, AUTH_KEY)) {
   629					btrfs_info(info,
   630						   "nodatacow not supported on an authnticated file-system");
   631					break;
   632				}
   633				if (!btrfs_test_opt(info, NODATACOW)) {
   634					if (!btrfs_test_opt(info, COMPRESS) ||
   635					    !btrfs_test_opt(info, FORCE_COMPRESS)) {
   636						btrfs_info(info,
   637							   "setting nodatacow, compression disabled");
   638					} else {
   639						btrfs_info(info, "setting nodatacow");
   640					}
   641				}
   642				btrfs_clear_opt(info->mount_opt, COMPRESS);
   643				btrfs_clear_opt(info->mount_opt, FORCE_COMPRESS);
   644				btrfs_set_opt(info->mount_opt, NODATACOW);
   645				btrfs_set_opt(info->mount_opt, NODATASUM);
   646				break;
   647			case Opt_datacow:
   648				btrfs_clear_and_info(info, NODATACOW,
   649						     "setting datacow");
   650				break;
   651			case Opt_compress_force:
   652			case Opt_compress_force_type:
   653				compress_force = true;
   654				fallthrough;
   655			case Opt_compress:
   656			case Opt_compress_type:
   657				saved_compress_type = btrfs_test_opt(info,
   658								     COMPRESS) ?
   659					info->compress_type : BTRFS_COMPRESS_NONE;
   660				saved_compress_force =
   661					btrfs_test_opt(info, FORCE_COMPRESS);
   662				saved_compress_level = info->compress_level;
   663				if (token == Opt_compress ||
   664				    token == Opt_compress_force ||
   665				    strncmp(args[0].from, "zlib", 4) == 0) {
   666					compress_type = "zlib";
   667	
   668					info->compress_type = BTRFS_COMPRESS_ZLIB;
   669					info->compress_level = BTRFS_ZLIB_DEFAULT_LEVEL;
   670					/*
   671					 * args[0] contains uninitialized data since
   672					 * for these tokens we don't expect any
   673					 * parameter.
   674					 */
   675					if (token != Opt_compress &&
   676					    token != Opt_compress_force)
   677						info->compress_level =
   678						  btrfs_compress_str2level(
   679								BTRFS_COMPRESS_ZLIB,
   680								args[0].from + 4);
   681					btrfs_set_opt(info->mount_opt, COMPRESS);
   682					btrfs_clear_opt(info->mount_opt, NODATACOW);
   683					btrfs_clear_opt(info->mount_opt, NODATASUM);
   684					no_compress = 0;
   685				} else if (strncmp(args[0].from, "lzo", 3) == 0) {
   686					compress_type = "lzo";
   687					info->compress_type = BTRFS_COMPRESS_LZO;
   688					info->compress_level = 0;
   689					btrfs_set_opt(info->mount_opt, COMPRESS);
   690					btrfs_clear_opt(info->mount_opt, NODATACOW);
   691					btrfs_clear_opt(info->mount_opt, NODATASUM);
   692					btrfs_set_fs_incompat(info, COMPRESS_LZO);
   693					no_compress = 0;
   694				} else if (strncmp(args[0].from, "zstd", 4) == 0) {
   695					compress_type = "zstd";
   696					info->compress_type = BTRFS_COMPRESS_ZSTD;
   697					info->compress_level =
   698						btrfs_compress_str2level(
   699								 BTRFS_COMPRESS_ZSTD,
   700								 args[0].from + 4);
   701					btrfs_set_opt(info->mount_opt, COMPRESS);
   702					btrfs_clear_opt(info->mount_opt, NODATACOW);
   703					btrfs_clear_opt(info->mount_opt, NODATASUM);
   704					btrfs_set_fs_incompat(info, COMPRESS_ZSTD);
   705					no_compress = 0;
   706				} else if (strncmp(args[0].from, "no", 2) == 0) {
   707					compress_type = "no";
   708					info->compress_level = 0;
   709					info->compress_type = 0;
   710					btrfs_clear_opt(info->mount_opt, COMPRESS);
   711					btrfs_clear_opt(info->mount_opt, FORCE_COMPRESS);
   712					compress_force = false;
   713					no_compress++;
   714				} else {
   715					ret = -EINVAL;
   716					goto out;
   717				}
   718	
   719				if (compress_force) {
   720					btrfs_set_opt(info->mount_opt, FORCE_COMPRESS);
   721				} else {
   722					/*
   723					 * If we remount from compress-force=xxx to
   724					 * compress=xxx, we need clear FORCE_COMPRESS
   725					 * flag, otherwise, there is no way for users
   726					 * to disable forcible compression separately.
   727					 */
   728					btrfs_clear_opt(info->mount_opt, FORCE_COMPRESS);
   729				}
   730				if (no_compress == 1) {
   731					btrfs_info(info, "use no compression");
   732				} else if ((info->compress_type != saved_compress_type) ||
   733					   (compress_force != saved_compress_force) ||
   734					   (info->compress_level != saved_compress_level)) {
   735					btrfs_info(info, "%s %s compression, level %d",
   736						   (compress_force) ? "force" : "use",
   737						   compress_type, info->compress_level);
   738				}
   739				compress_force = false;
   740				break;
   741			case Opt_ssd:
   742				btrfs_set_and_info(info, SSD,
   743						   "enabling ssd optimizations");
   744				btrfs_clear_opt(info->mount_opt, NOSSD);
   745				break;
   746			case Opt_ssd_spread:
   747				btrfs_set_and_info(info, SSD,
   748						   "enabling ssd optimizations");
   749				btrfs_set_and_info(info, SSD_SPREAD,
   750						   "using spread ssd allocation scheme");
   751				btrfs_clear_opt(info->mount_opt, NOSSD);
   752				break;
   753			case Opt_nossd:
   754				btrfs_set_opt(info->mount_opt, NOSSD);
   755				btrfs_clear_and_info(info, SSD,
   756						     "not using ssd optimizations");
   757				fallthrough;
   758			case Opt_nossd_spread:
   759				btrfs_clear_and_info(info, SSD_SPREAD,
   760						     "not using spread ssd allocation scheme");
   761				break;
   762			case Opt_barrier:
   763				btrfs_clear_and_info(info, NOBARRIER,
   764						     "turning on barriers");
   765				break;
   766			case Opt_nobarrier:
   767				btrfs_set_and_info(info, NOBARRIER,
   768						   "turning off barriers");
   769				break;
   770			case Opt_thread_pool:
   771				ret = match_int(&args[0], &intarg);
   772				if (ret) {
   773					goto out;
   774				} else if (intarg == 0) {
   775					ret = -EINVAL;
   776					goto out;
   777				}
   778				info->thread_pool_size = intarg;
   779				break;
   780			case Opt_max_inline:
   781				num = match_strdup(&args[0]);
   782				if (num) {
   783					info->max_inline = memparse(num, NULL);
   784					kfree(num);
   785	
   786					if (info->max_inline) {
   787						info->max_inline = min_t(u64,
   788							info->max_inline,
   789							info->sectorsize);
   790					}
   791					btrfs_info(info, "max_inline at %llu",
   792						   info->max_inline);
   793				} else {
   794					ret = -ENOMEM;
   795					goto out;
   796				}
   797				break;
   798			case Opt_acl:
   799	#ifdef CONFIG_BTRFS_FS_POSIX_ACL
   800				info->sb->s_flags |= SB_POSIXACL;
   801				break;
   802	#else
   803				btrfs_err(info, "support for ACL not compiled in!");
   804				ret = -EINVAL;
   805				goto out;
   806	#endif
   807			case Opt_noacl:
   808				info->sb->s_flags &= ~SB_POSIXACL;
   809				break;
   810			case Opt_notreelog:
   811				btrfs_set_and_info(info, NOTREELOG,
   812						   "disabling tree log");
   813				break;
   814			case Opt_treelog:
   815				btrfs_clear_and_info(info, NOTREELOG,
   816						     "enabling tree log");
   817				break;
   818			case Opt_norecovery:
   819			case Opt_nologreplay:
   820				btrfs_warn(info,
   821			"'nologreplay' is deprecated, use 'rescue=nologreplay' instead");
   822				btrfs_set_and_info(info, NOLOGREPLAY,
   823						   "disabling log replay at mount time");
   824				break;
   825			case Opt_flushoncommit:
   826				btrfs_set_and_info(info, FLUSHONCOMMIT,
   827						   "turning on flush-on-commit");
   828				break;
   829			case Opt_noflushoncommit:
   830				btrfs_clear_and_info(info, FLUSHONCOMMIT,
   831						     "turning off flush-on-commit");
   832				break;
   833			case Opt_ratio:
   834				ret = match_int(&args[0], &intarg);
   835				if (ret)
   836					goto out;
   837				info->metadata_ratio = intarg;
   838				btrfs_info(info, "metadata ratio %u",
   839					   info->metadata_ratio);
   840				break;
   841			case Opt_discard:
   842			case Opt_discard_mode:
   843				if (token == Opt_discard ||
   844				    strcmp(args[0].from, "sync") == 0) {
   845					btrfs_clear_opt(info->mount_opt, DISCARD_ASYNC);
   846					btrfs_set_and_info(info, DISCARD_SYNC,
   847							   "turning on sync discard");
   848				} else if (strcmp(args[0].from, "async") == 0) {
   849					btrfs_clear_opt(info->mount_opt, DISCARD_SYNC);
   850					btrfs_set_and_info(info, DISCARD_ASYNC,
   851							   "turning on async discard");
   852				} else {
   853					ret = -EINVAL;
   854					goto out;
   855				}
   856				break;
   857			case Opt_nodiscard:
   858				btrfs_clear_and_info(info, DISCARD_SYNC,
   859						     "turning off discard");
   860				btrfs_clear_and_info(info, DISCARD_ASYNC,
   861						     "turning off async discard");
   862				break;
   863			case Opt_space_cache:
   864			case Opt_space_cache_version:
   865				if (token == Opt_space_cache ||
   866				    strcmp(args[0].from, "v1") == 0) {
   867					btrfs_clear_opt(info->mount_opt,
   868							FREE_SPACE_TREE);
   869					btrfs_set_and_info(info, SPACE_CACHE,
   870						   "enabling disk space caching");
   871				} else if (strcmp(args[0].from, "v2") == 0) {
   872					btrfs_clear_opt(info->mount_opt,
   873							SPACE_CACHE);
   874					btrfs_set_and_info(info, FREE_SPACE_TREE,
   875							   "enabling free space tree");
   876				} else {
   877					ret = -EINVAL;
   878					goto out;
   879				}
   880				break;
   881			case Opt_rescan_uuid_tree:
   882				btrfs_set_opt(info->mount_opt, RESCAN_UUID_TREE);
   883				break;
   884			case Opt_no_space_cache:
   885				if (btrfs_test_opt(info, SPACE_CACHE)) {
   886					btrfs_clear_and_info(info, SPACE_CACHE,
   887						     "disabling disk space caching");
   888				}
   889				if (btrfs_test_opt(info, FREE_SPACE_TREE)) {
   890					btrfs_clear_and_info(info, FREE_SPACE_TREE,
   891						     "disabling free space tree");
   892				}
   893				break;
   894			case Opt_inode_cache:
   895			case Opt_noinode_cache:
   896				btrfs_warn(info,
   897		"the 'inode_cache' option is deprecated and has no effect since 5.11");
   898				break;
   899			case Opt_clear_cache:
   900				btrfs_set_and_info(info, CLEAR_CACHE,
   901						   "force clearing of disk cache");
   902				break;
   903			case Opt_user_subvol_rm_allowed:
   904				btrfs_set_opt(info->mount_opt, USER_SUBVOL_RM_ALLOWED);
   905				break;
   906			case Opt_enospc_debug:
   907				btrfs_set_opt(info->mount_opt, ENOSPC_DEBUG);
   908				break;
   909			case Opt_noenospc_debug:
   910				btrfs_clear_opt(info->mount_opt, ENOSPC_DEBUG);
   911				break;
   912			case Opt_defrag:
   913				btrfs_set_and_info(info, AUTO_DEFRAG,
   914						   "enabling auto defrag");
   915				break;
   916			case Opt_nodefrag:
   917				btrfs_clear_and_info(info, AUTO_DEFRAG,
   918						     "disabling auto defrag");
   919				break;
   920			case Opt_recovery:
   921			case Opt_usebackuproot:
   922				btrfs_warn(info,
   923				"'%s' is deprecated, use 'rescue=usebackuproot' instead",
   924					   token == Opt_recovery ? "recovery" :
   925					   "usebackuproot");
   926				btrfs_info(info,
   927					   "trying to use backup root at mount time");
   928				btrfs_set_opt(info->mount_opt, USEBACKUPROOT);
   929				break;
   930			case Opt_skip_balance:
   931				btrfs_set_opt(info->mount_opt, SKIP_BALANCE);
   932				break;
   933	#ifdef CONFIG_BTRFS_FS_CHECK_INTEGRITY
   934			case Opt_check_integrity_including_extent_data:
   935				btrfs_info(info,
   936					   "enabling check integrity including extent data");
   937				btrfs_set_opt(info->mount_opt,
   938					      CHECK_INTEGRITY_INCLUDING_EXTENT_DATA);
   939				btrfs_set_opt(info->mount_opt, CHECK_INTEGRITY);
   940				break;
   941			case Opt_check_integrity:
   942				btrfs_info(info, "enabling check integrity");
   943				btrfs_set_opt(info->mount_opt, CHECK_INTEGRITY);
   944				break;
   945			case Opt_check_integrity_print_mask:
   946				ret = match_int(&args[0], &intarg);
   947				if (ret)
   948					goto out;
   949				info->check_integrity_print_mask = intarg;
   950				btrfs_info(info, "check_integrity_print_mask 0x%x",
   951					   info->check_integrity_print_mask);
   952				break;
   953	#else
   954			case Opt_check_integrity_including_extent_data:
   955			case Opt_check_integrity:
   956			case Opt_check_integrity_print_mask:
   957				btrfs_err(info,
   958					  "support for check_integrity* not compiled in!");
   959				ret = -EINVAL;
   960				goto out;
   961	#endif
   962			case Opt_fatal_errors:
   963				if (strcmp(args[0].from, "panic") == 0)
   964					btrfs_set_opt(info->mount_opt,
   965						      PANIC_ON_FATAL_ERROR);
   966				else if (strcmp(args[0].from, "bug") == 0)
   967					btrfs_clear_opt(info->mount_opt,
   968						      PANIC_ON_FATAL_ERROR);
   969				else {
   970					ret = -EINVAL;
   971					goto out;
   972				}
   973				break;
   974			case Opt_commit_interval:
   975				intarg = 0;
   976				ret = match_int(&args[0], &intarg);
   977				if (ret)
   978					goto out;
   979				if (intarg == 0) {
   980					btrfs_info(info,
   981						   "using default commit interval %us",
   982						   BTRFS_DEFAULT_COMMIT_INTERVAL);
   983					intarg = BTRFS_DEFAULT_COMMIT_INTERVAL;
   984				} else if (intarg > 300) {
   985					btrfs_warn(info, "excessive commit interval %d",
   986						   intarg);
   987				}
   988				info->commit_interval = intarg;
   989				break;
   990			case Opt_rescue:
   991				ret = parse_rescue_options(info, args[0].from);
   992				if (ret < 0)
   993					goto out;
   994				break;
   995	#ifdef CONFIG_BTRFS_DEBUG
   996			case Opt_fragment_all:
   997				btrfs_info(info, "fragmenting all space");
   998				btrfs_set_opt(info->mount_opt, FRAGMENT_DATA);
   999				btrfs_set_opt(info->mount_opt, FRAGMENT_METADATA);
  1000				break;
  1001			case Opt_fragment_metadata:
  1002				btrfs_info(info, "fragmenting metadata");
  1003				btrfs_set_opt(info->mount_opt,
  1004					      FRAGMENT_METADATA);
  1005				break;
  1006			case Opt_fragment_data:
  1007				btrfs_info(info, "fragmenting data");
  1008				btrfs_set_opt(info->mount_opt, FRAGMENT_DATA);
  1009				break;
  1010	#endif
  1011	#ifdef CONFIG_BTRFS_FS_REF_VERIFY
  1012			case Opt_ref_verify:
  1013				btrfs_info(info, "doing ref verification");
  1014				btrfs_set_opt(info->mount_opt, REF_VERIFY);
  1015				break;
  1016	#endif
  1017			case Opt_err:
  1018				btrfs_err(info, "unrecognized mount option '%s'", p);
  1019				ret = -EINVAL;
  1020				goto out;
  1021			default:
  1022				break;
  1023			}
  1024		}
  1025	check:
  1026		/* We're read-only, don't have to check. */
  1027		if (new_flags & SB_RDONLY)
  1028			goto out;
  1029	
  1030		if (check_ro_option(info, BTRFS_MOUNT_NOLOGREPLAY, "nologreplay") ||
  1031		    check_ro_option(info, BTRFS_MOUNT_IGNOREBADROOTS, "ignorebadroots") ||
  1032		    check_ro_option(info, BTRFS_MOUNT_IGNOREDATACSUMS, "ignoredatacsums"))
  1033			ret = -EINVAL;
  1034	out:
  1035		if (btrfs_fs_compat_ro(info, FREE_SPACE_TREE) &&
  1036		    !btrfs_test_opt(info, FREE_SPACE_TREE) &&
  1037		    !btrfs_test_opt(info, CLEAR_CACHE)) {
  1038			btrfs_err(info, "cannot disable free space tree");
  1039			ret = -EINVAL;
  1040	
  1041		}
  1042		if (!ret)
  1043			ret = btrfs_check_mountopts_zoned(info);
  1044		if (!ret && btrfs_test_opt(info, SPACE_CACHE))
  1045			btrfs_info(info, "disk space caching is enabled");
  1046		if (!ret && btrfs_test_opt(info, FREE_SPACE_TREE))
  1047			btrfs_info(info, "using free space tree");
  1048		return ret;
  1049	}
  1050	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202102181051.kIibpQUC-lkp%40intel.com.

--gKMricLos+KVdGMg
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
VBmJ9tKdkkfLTSoZlTaoWDc2/w8POsklmy8CAA==

--gKMricLos+KVdGMg--
