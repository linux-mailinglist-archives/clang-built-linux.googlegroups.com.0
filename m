Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBIPERGAAMGQEENIDBJI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73c.google.com (mail-qk1-x73c.google.com [IPv6:2607:f8b0:4864:20::73c])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ED8F2F8B56
	for <lists+clang-built-linux@lfdr.de>; Sat, 16 Jan 2021 05:57:07 +0100 (CET)
Received: by mail-qk1-x73c.google.com with SMTP id a17sf10264086qko.11
        for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 20:57:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610773026; cv=pass;
        d=google.com; s=arc-20160816;
        b=I3nz2ZhJpT+8QzKwWxXFdemiih9Xd0T39aQPxKni0aCuQn2zo4qlOHeGTsU/uoa9YX
         sHl9CGftLG9aipkd+sG1r008PH9PLMYFS7QAxFysD4Pr+kM28cgGTA0J+3vlAxVeSdKW
         GaFfyqBOZoYmJOJNK4rwtGiO2/wsNBJjU/S/UxUXeCO3qrmUOa1io9lWd9l3YszYCd4l
         gmnCtK0CgNNAks0odzIGMcf8g6hLn9iuSyeSfqHMLhmWhZwxS2DkaHTyyTVixj6SA1IY
         sOJ4t4UfKaD7eyjC3/+oXAdjB5E7Zr6Tq1ZsLTwUq/hBhHfKbFKq6P/19H560EZXPSB7
         B5Ig==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=CD0y5ia9FZnq+KHW2r3vMylqcinXFN/JYVZnHfXojZU=;
        b=NFVJ3D5oxTGEwdfwmFRvSRiyH5k+hSJX6HRGcJiZbz4F7zuDBua9DBlweSzB/q0A3e
         TPVqdIOad/mNOhGDigaVGWJ6qzi8n+OMVAU1D7GDZVnL9QUUb4S775WzuXP7qDMKK0d+
         ZmDA7e0nfkcg6lqZSt/WV3CqB76QVCHoQ6C6T3dYTvmOEwBsp5RZoLcsw8TFbVwTlFFr
         CmE/0kGlMqd980HC1Ku5GEXNFMKv+xLG1KJ1rHzpcSohZ4G2LkkA2s0XDEA1QF8fmNyW
         aVGq4JU836Avq/sQ3rb7GPj4OHwMHnNt9SsPxTOl3HofAt1KTePSPv/vxKF6LvJSdYKp
         szrg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=CD0y5ia9FZnq+KHW2r3vMylqcinXFN/JYVZnHfXojZU=;
        b=qUb2pdLERHlQJKuCuRAh5R56PhBtJ1rmS7NRv9SmxCH3pnRo1fAm4/+1QNecJFjoER
         cXtWSrbl8+b/a9uTfiunUlBk1wTReK772KWMTch2z+wBgnP+xr9mRDdbD1TFgpFo5mK+
         Mfy8tqtlVAo2sZp9M/7sZkunaaMrTYIt+mGh3a/jP/NZoTAFJbF43ut8gIGpCdb3WavR
         G52XKkyh3ITv9JmqR65r9709uUIqkUY4Oto1hrXAZhOt/PuLzV+jem0r80B+BSjGC8wF
         jMec4VYRij9EriTjaygQi/vS8AzdXkO5/vF4EnXll4qI8st9JXYB6CXMggZCn9vrrr94
         POow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=CD0y5ia9FZnq+KHW2r3vMylqcinXFN/JYVZnHfXojZU=;
        b=kjxAI7RdIWM3Cmdq2aN3vsyMsb+u2laQXU1xfcDw9snOEluJwFYLUXQfvLoRQ3cv1Y
         YYVdpBXdmnZpYMTAZYOCCtbhX3XO1RbVhWl3APiMyjdf0GraryQc/I6w883O2L4WPKAj
         RIZCBCr8lJ4dMdNLFxSzM0sy3l6o+7C1wO0JthKvbGTVw+9vOalWqKPuyjXMpSh0nuaX
         UJ4lHx/tLt/tpojWEsNwolwjHgEsjowtmoN69ALMo66I20gWPTcUZNppKrAxEZppIVxi
         wX4X6zHD+zZgtTdxzILO/qDsnhcjLvI+tzkc9LdrfpOTJKY7Fnsxx+M3jHV2eyHA0Xrf
         NrTQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533s19/pv2RDhqGqabnG1ZjoMrObKD7wFDilUUeDyVKKKdwkDiEG
	NIkoHbZ5rjdh9lc27VXOYvM=
X-Google-Smtp-Source: ABdhPJybb7p7a6jVDTZ+tCFnHMHklJxRI7Vg4//dE0yopc5M5M+e+/8u/aWHk8OZoqq40bmKogyGSQ==
X-Received: by 2002:a05:6214:4c7:: with SMTP id ck7mr15429276qvb.7.1610773025881;
        Fri, 15 Jan 2021 20:57:05 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:5a04:: with SMTP id n4ls4713583qta.5.gmail; Fri, 15 Jan
 2021 20:57:05 -0800 (PST)
X-Received: by 2002:aed:2ac1:: with SMTP id t59mr14876725qtd.165.1610773025352;
        Fri, 15 Jan 2021 20:57:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610773025; cv=none;
        d=google.com; s=arc-20160816;
        b=lWfH5CSduF+5Atw+j2CTYtkMRMJuk1O4BCVDgtARBGtRWSAiEFWz7HO9Z9H5f0W7EG
         JQcM1huSm9aapaGtuEv0IU2uXgZbDYzXvcV7VSObf+qiLsA6XVT1ApX5qIhwJms09ILx
         WcnaO3c1iVRAhw4r724AK0w4lhNxn2Ik0sm6ZDAZcLilA9f9W4zpJ8Xvod/1+xzWBC04
         mcZi8oBFI81hQFSCZ9JOtVYuW+GxbuA9p86+NuJJ7v2duT/IwEkFXSUd/xuAs/6ZdIz7
         hoJ77aMcKf3wj93bhvRlZdKXnOAXu7hX3UKee6/q+xRNoTrEko7cDnhriQWccVp5GCtn
         uTiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=/rtVUmSqZJxJkYCFo/hII1+FALULafXL26jkYp3Kvms=;
        b=j2x/4UnEtu5Hx7jjY6IrCQ8uxxjgZI9R17wgAeIfMSXS0peIr5qzfvW0LUTd4LZo7E
         Qtfdy6Sl2wfQW4ggXF9iDx++rXqF3M7KrqNl8J2tlfyQT8RbUDV7HyvsNOdovw7CUFbx
         N0lxbqiuwGok8OU7U5bvtkJlwe/lyrjJQDlGsGv+IEfK8BO0/K9olC4c7SbujYzczgSQ
         u+Bc7/9dJ/uWNo/2j8cpLW8XAo7iWF91DzsFiUBS9YIJ0v+xPV7mUo0dua38PPI1/mGJ
         +8wzTdXyujUvEK6tofmlN6yKCRYsiG2wmpUJc9C7f4YKYWxas3Jg+q/kZpznPtawwv3k
         /kNw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga11.intel.com (mga11.intel.com. [192.55.52.93])
        by gmr-mx.google.com with ESMTPS id y12si706529qkl.1.2021.01.15.20.57.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Jan 2021 20:57:05 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) client-ip=192.55.52.93;
IronPort-SDR: 5i+94fj87g38bvqle0qw8LjhbQmB9rXMlqoNZm3ZUe+i4weDBlF2f4Y7NQEWDOs4CoE7huqb5K
 SqY0bgWnMlkw==
X-IronPort-AV: E=McAfee;i="6000,8403,9865"; a="175138301"
X-IronPort-AV: E=Sophos;i="5.79,351,1602572400"; 
   d="gz'50?scan'50,208,50";a="175138301"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Jan 2021 20:57:02 -0800
IronPort-SDR: kZQT37HmDYht8nRXsGCYlUSPZFMK6oy01R3PxaTWiIeXFCfskm8nBDcFlLs5iM3eGyhTOX12Zv
 Fru8jKWIHlCQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,351,1602572400"; 
   d="gz'50?scan'50,208,50";a="398567817"
Received: from lkp-server01.sh.intel.com (HELO 260eafd5ecd0) ([10.239.97.150])
  by fmsmga004.fm.intel.com with ESMTP; 15 Jan 2021 20:57:00 -0800
Received: from kbuild by 260eafd5ecd0 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1l0ddz-0000if-Ja; Sat, 16 Jan 2021 04:56:59 +0000
Date: Sat, 16 Jan 2021 12:56:45 +0800
From: kernel test robot <lkp@intel.com>
To: "Darrick J. Wong" <djwong@kernel.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	"Darrick J. Wong" <darrick.wong@oracle.com>
Subject: [djwong-xfs:reserve-rt-metadata-space 109/196]
 fs/xfs/xfs_xchgrange.c:136:41: error: incompatible pointer types passing
 'struct xfs_trans to parameter of type 'struct xfs_trans dereference with
 COPYING CREDITS Documentation Kbuild Kconfig LICENSES MAINTAINERS Makefile
 README arch block certs crypto drivers fs include init ipc kernel lib mm net
 samples scripts security sound tools usr virt
Message-ID: <202101161237.6S7j41Fm-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="yrj/dFKFPuw6o+aM"
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


--yrj/dFKFPuw6o+aM
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/djwong/xfs-linux.git reserve-rt-metadata-space
head:   51f17deded84ae5863d2220a0a7c152ef4a8bbb2
commit: 4d8f99e0a4197987823f6df1681efd02e87c1b2a [109/196] xfs: add a ->xchg_file_range handler
config: powerpc64-randconfig-r016-20210115 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project d7bc3b7ce23b664d6620cdc32370a8614523ca2f)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc64 cross compiling tool for clang build
        # apt-get install binutils-powerpc64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/djwong/xfs-linux.git/commit/?id=4d8f99e0a4197987823f6df1681efd02e87c1b2a
        git remote add djwong-xfs https://git.kernel.org/pub/scm/linux/kernel/git/djwong/xfs-linux.git
        git fetch --no-tags djwong-xfs reserve-rt-metadata-space
        git checkout 4d8f99e0a4197987823f6df1681efd02e87c1b2a
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   arch/powerpc/include/asm/io-defs.h:47:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insl, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:61:1: note: expanded from here
   __do_insl
   ^
   arch/powerpc/include/asm/io.h:558:56: note: expanded from macro '__do_insl'
   #define __do_insl(p, b, n)      readsl((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from fs/xfs/xfs_xchgrange.c:6:
   In file included from fs/xfs/xfs.h:22:
   In file included from fs/xfs/xfs_linux.h:31:
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
   <scratch space>:63:1: note: expanded from here
   __do_outsb
   ^
   arch/powerpc/include/asm/io.h:559:58: note: expanded from macro '__do_outsb'
   #define __do_outsb(p, b, n)     writesb((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from fs/xfs/xfs_xchgrange.c:6:
   In file included from fs/xfs/xfs.h:22:
   In file included from fs/xfs/xfs_linux.h:31:
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
   <scratch space>:65:1: note: expanded from here
   __do_outsw
   ^
   arch/powerpc/include/asm/io.h:560:58: note: expanded from macro '__do_outsw'
   #define __do_outsw(p, b, n)     writesw((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from fs/xfs/xfs_xchgrange.c:6:
   In file included from fs/xfs/xfs.h:22:
   In file included from fs/xfs/xfs_linux.h:31:
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
   <scratch space>:67:1: note: expanded from here
   __do_outsl
   ^
   arch/powerpc/include/asm/io.h:561:58: note: expanded from macro '__do_outsl'
   #define __do_outsl(p, b, n)     writesl((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from fs/xfs/xfs_xchgrange.c:16:
   fs/xfs/xfs_quota.h:185:39: error: incompatible pointer types passing 'struct xfs_trans **' to parameter of type 'struct xfs_trans *'; remove & [-Werror,-Wincompatible-pointer-types]
           return xfs_trans_reserve_quota_nblks(&tp, ip, -nblks, -ninos, flags,
                                                ^~~
   fs/xfs/xfs_quota.h:141:67: note: passing argument to parameter 'tp' here
   static inline int xfs_trans_reserve_quota_nblks(struct xfs_trans *tp,
                                                                     ^
   fs/xfs/xfs_quota.h:190:1: error: redefinition of 'xfs_quota_reserve_blkres'
   xfs_quota_reserve_blkres(struct xfs_inode *ip, int64_t nblks,
   ^
   fs/xfs/xfs_quota.h:154:19: note: previous definition is here
   static inline int xfs_quota_reserve_blkres(struct xfs_inode *ip,
                     ^
   fs/xfs/xfs_quota.h:195:39: error: incompatible pointer types passing 'struct xfs_trans **' to parameter of type 'struct xfs_trans *'; remove & [-Werror,-Wincompatible-pointer-types]
           return xfs_trans_reserve_quota_nblks(&tp, ip, nblks, 0, flags, NULL);
                                                ^~~
   fs/xfs/xfs_quota.h:141:67: note: passing argument to parameter 'tp' here
   static inline int xfs_trans_reserve_quota_nblks(struct xfs_trans *tp,
                                                                     ^
>> fs/xfs/xfs_xchgrange.c:136:41: error: incompatible pointer types passing 'struct xfs_trans **' to parameter of type 'struct xfs_trans *'; dereference with * [-Werror,-Wincompatible-pointer-types]
                   error = xfs_trans_reserve_quota_nblks(tpp, req->ip1,
                                                         ^~~
                                                         *
   fs/xfs/xfs_quota.h:141:67: note: passing argument to parameter 'tp' here
   static inline int xfs_trans_reserve_quota_nblks(struct xfs_trans *tp,
                                                                     ^
   fs/xfs/xfs_xchgrange.c:146:41: error: incompatible pointer types passing 'struct xfs_trans **' to parameter of type 'struct xfs_trans *'; dereference with * [-Werror,-Wincompatible-pointer-types]
                   error = xfs_trans_reserve_quota_nblks(tpp, req->ip2,
                                                         ^~~
                                                         *
   fs/xfs/xfs_quota.h:141:67: note: passing argument to parameter 'tp' here
   static inline int xfs_trans_reserve_quota_nblks(struct xfs_trans *tp,
                                                                     ^
   fs/xfs/xfs_xchgrange.c:162:40: error: incompatible pointer types passing 'struct xfs_trans **' to parameter of type 'struct xfs_trans *'; dereference with * [-Werror,-Wincompatible-pointer-types]
           error = xfs_trans_reserve_quota_nblks(tpp, req->ip1, ip1_mapped, 0,
                                                 ^~~
                                                 *
   fs/xfs/xfs_quota.h:141:67: note: passing argument to parameter 'tp' here
   static inline int xfs_trans_reserve_quota_nblks(struct xfs_trans *tp,
                                                                     ^
   fs/xfs/xfs_xchgrange.c:167:39: error: incompatible pointer types passing 'struct xfs_trans **' to parameter of type 'struct xfs_trans *'; dereference with * [-Werror,-Wincompatible-pointer-types]
           return xfs_trans_reserve_quota_nblks(tpp, req->ip2, ip2_mapped, 0,
                                                ^~~
                                                *
   fs/xfs/xfs_quota.h:141:67: note: passing argument to parameter 'tp' here
   static inline int xfs_trans_reserve_quota_nblks(struct xfs_trans *tp,
                                                                     ^
   6 warnings and 7 errors generated.


vim +136 fs/xfs/xfs_xchgrange.c

   117	
   118	/* Make a particular type of quota reservation. */
   119	STATIC int
   120	xfs_xchg_range_reserve_quota_blocks(
   121		struct xfs_trans		**tpp,
   122		const struct xfs_swapext_req	*req,
   123		xfs_filblks_t			ip1_mapped,
   124		xfs_filblks_t			ip2_mapped,
   125		unsigned int			qmopts,
   126		bool				*quota_retry)
   127	{
   128		int				error;
   129	
   130		/*
   131		 * For each file, compute the net gain in the number of blocks that
   132		 * will be mapped into that file and reserve that much quota.  The
   133		 * quota counts must be able to absorb at least that much space.
   134		 */
   135		if (ip2_mapped > ip1_mapped) {
 > 136			error = xfs_trans_reserve_quota_nblks(tpp, req->ip1,
   137					ip2_mapped - ip1_mapped, 0,
   138					qmopts, quota_retry);
   139			if (!(*tpp) && req->ip1 != req->ip2)
   140				xfs_iunlock(req->ip2, XFS_ILOCK_EXCL);
   141			if (error || *quota_retry)
   142				return error;
   143		}
   144	
   145		if (ip1_mapped > ip2_mapped) {
   146			error = xfs_trans_reserve_quota_nblks(tpp, req->ip2,
   147					ip1_mapped - ip2_mapped, 0,
   148					qmopts, quota_retry);
   149			if (!(*tpp) && req->ip1 != req->ip2)
   150				xfs_iunlock(req->ip1, XFS_ILOCK_EXCL);
   151			if (error || *quota_retry)
   152				return error;
   153		}
   154	
   155		/*
   156		 * For each file, forcibly reserve the gross gain in mapped blocks so
   157		 * that we don't trip over any quota block reservation assertions.
   158		 * We must reserve the gross gain because the quota code subtracts from
   159		 * bcount the number of blocks that we unmap; it does not add that
   160		 * quantity back to the quota block reservation.
   161		 */
   162		error = xfs_trans_reserve_quota_nblks(tpp, req->ip1, ip1_mapped, 0,
   163				XFS_QMOPT_FORCE_RES | qmopts, NULL);
   164		if (error)
   165			return error;
   166	
   167		return xfs_trans_reserve_quota_nblks(tpp, req->ip2, ip2_mapped, 0,
   168				XFS_QMOPT_FORCE_RES | qmopts, NULL);
   169	}
   170	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202101161237.6S7j41Fm-lkp%40intel.com.

--yrj/dFKFPuw6o+aM
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
gf8BIScYGbSyAQA=

--yrj/dFKFPuw6o+aM--
