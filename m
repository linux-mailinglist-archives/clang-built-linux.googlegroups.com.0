Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBXH3ZOAAMGQEYODL7HI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb38.google.com (mail-yb1-xb38.google.com [IPv6:2607:f8b0:4864:20::b38])
	by mail.lfdr.de (Postfix) with ESMTPS id 66D70307D66
	for <lists+clang-built-linux@lfdr.de>; Thu, 28 Jan 2021 19:09:33 +0100 (CET)
Received: by mail-yb1-xb38.google.com with SMTP id k7sf6907027ybm.13
        for <lists+clang-built-linux@lfdr.de>; Thu, 28 Jan 2021 10:09:33 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611857372; cv=pass;
        d=google.com; s=arc-20160816;
        b=dZ+n+xM71JNJmtsaX3FiXWIkYQEH/DXbATSKmYJFCuyqXgxd2sxPqzJRMk9rm76atT
         A3hBDOUGgiuCmVpx0oephjQHkvDV8IQJBAVB5ZVpq7AoBkgozIHmK6O+z/kxGaSXSAvS
         sk1sBe4Go71VOd7aUoyRQzX8xNEw6gqdkzjMtkchxe7BBcTwiZTRMWuBd+od5C9UucKl
         pnflOKF4tjADfVNs7Z7bdonN92DeGNxz/rut/0BWqvzHeIHcc3hw04hgLZFBu52JnDNo
         kem5vxxY/I17nwDrj/C37mTVkxqWCf10bXtQhQ0+n+xSxUe0xC8N3JW8X3i6K0kN3/N7
         nrAw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=gqyND8PGZtHnJlO6BvNaXzM8wt/2RdNyJxjf28NdlRA=;
        b=o2qfkWSsjMPei/Kj98a9/GzEWMgz1RFRzlxFTqYRGTaGj9EJTwC/h4z4MDfHrOIKRu
         sansNstHKs12VyGrd2QGSdx/eFRAM6Fbnx3PPcRv7GU5UghB/OLpC/RQeqa5kj6JtALt
         sKL3MakAVIumyD6pGh6aHCJXRifpsRvfwRoTbf2jEUjy9f7NMEhNqqvWPLIGrxAIYUvX
         ScDuvPxStGfaA+yxyyNWwBdgrbfemZkKeRzvX2Les2rqXxwv43ei/mEd4eyRv0a7S4Je
         ysx0OqLSIH7wRSB8S5eRGJMFNSaJ3bu9ezqpsbYZH1MDUqXerCcFx6xYLOuzGvqp0Foy
         xOrw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=gqyND8PGZtHnJlO6BvNaXzM8wt/2RdNyJxjf28NdlRA=;
        b=ZgHukuh8L2ekFQK3/JZdVr1vEJhK5Rs7xhrqB/19Z/ik9ofwbkeR0z/j1BtcnddxOe
         h0JlBdE1leXdWHEDaLi9Z/CEe5g0cqm//jaUE25aEq80IgUazCVSz+ubnbmHKRpoROIv
         Ampxl0f6WkRo6Gw9acH/foWhi/2eZ2Hc0KVJqGapPrPR/KxPtllmvqhWQ/DtCYQnTJfH
         cyl8Hp5RpnCoYLy67HOjiOUO1oHIP12QZxLk+7QWD6oxLYbzmJGVFy1YP5hBG+zipxF8
         5m4uVloOPQjuTL1FKjne6AwQUfZXf8O94TfZcExqXWY7Uj2tcN7FQ35tM9c8gWxD8Dcp
         A+tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=gqyND8PGZtHnJlO6BvNaXzM8wt/2RdNyJxjf28NdlRA=;
        b=f7higvLQFeGO8JUePKJaxonY/bOjJNrHjQipeLZuv9Qpcn5+y2biAcTe7IGKJZY3fG
         8mSWpW9FevN8/a2dVgqiF0e9p8Oj6GoraMtoWnWK6khv266d3lSx4VVO2ND1GT659k4z
         NC5elZoz0jjGA1UwwXxWHAEOdT5zAZ5RzaVxRrOpAAvXE2/e3Nn2cll8QGiX1JweAR8G
         Pk9d78MlugT6zwG+pgJYANy4d0NTOZIMhRpWL58IiMbYqeGPegax2RiTj3+3XEukAclT
         eR/K8qX53Inpb0Bf81u/Tf+smFeHCuyAVVgXZLeUFHUAa75TPMxroVUnlNHkFugwtsDD
         LM7Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532brRdiaotC3wBvejZGDwzQe1DT2M1s7vAUxvcKLEkmwVeHtX04
	uOZhE12xkl0Fm+WwFPOv5Gc=
X-Google-Smtp-Source: ABdhPJwpOASiYorEcUK/n9JFhTrAcgXGB5a3/+9uc6tm+4Yfra9ZmaBtBOybtWwwy2f/wLNrCaokuA==
X-Received: by 2002:a25:8312:: with SMTP id s18mr1623619ybk.470.1611857372213;
        Thu, 28 Jan 2021 10:09:32 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:d14b:: with SMTP id i72ls2679823ybg.11.gmail; Thu, 28
 Jan 2021 10:09:31 -0800 (PST)
X-Received: by 2002:a25:d6c4:: with SMTP id n187mr557057ybg.115.1611857371731;
        Thu, 28 Jan 2021 10:09:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611857371; cv=none;
        d=google.com; s=arc-20160816;
        b=wtw72VHQ48gSgi7bmUZ6mpAYQrXYGPkfxMoSofH+xS/tXrfkueFkjTgva7N9PM7fKk
         Gtvt8C4CPXSFtGNWzcxmjJclIqTjbI7uZ6JxszfJu3cWCPVxpGEoyJuA7ogYmSgRrrv0
         0ecx6E3KLgEtf1h0VsN/PxsIU2JxXruwExN8EcyAYbxNuOFMk9ctDg7nadgjIVJtUdOI
         9GgfsD7na6PeMAxLl6K+9VqKB4l1eZhlbM+FSttzwIztlZmxKL6jlIbvioJRAI7KInin
         sbOLG4TjDuHMHUSP8n+OtgRbeGqbGu3wIvokhZ0YFHzcLCIzudi2QDZpccOkae/TNWTz
         RBnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=pEVx4fszThOYW6EgeeTo5MyokJuU6j8B8UHA+NdVOrs=;
        b=EQu/x5beU3jqLHIVpi27U8pCVSNo60WfTKZ9ENMaF/+/ZMDZrAEpj2KpvEdCg0Kx1L
         LrLtWFAK7JmMWlozJRJFfqDzKL4Z4ys9YpYTAiqonDX0QTtHGAFBonCTRdaY9MopR4my
         nuFKqdErYuwiahpfKQgF3ZeT/1kknDHx22yKfW1a1AtMLYicm4uaLbJAnEUmqLvrmHLT
         pSkCSXlbtbNsHhtw82kucmWmkjnV9zWl1bUb0wqQPK3tVuLe1RgkowzNkths/Vnx57O0
         ziCtak/Uz5pgTWo0fBg+QP3tQdyi2+JowTO3gbi3cTCP8CcSMi4Xr2Lx3FNhvE7E1WSh
         jTRA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga14.intel.com (mga14.intel.com. [192.55.52.115])
        by gmr-mx.google.com with ESMTPS id c10si421818ybf.1.2021.01.28.10.09.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Jan 2021 10:09:31 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) client-ip=192.55.52.115;
IronPort-SDR: NzY66JTLON4Wh6JaQsRyDwp6CIU2MyK4nPZ6/BX1/VLTo/4qWK+6Yj9aKek+MySgW43fMsUoqo
 TLLGDIYO7viw==
X-IronPort-AV: E=McAfee;i="6000,8403,9878"; a="179502622"
X-IronPort-AV: E=Sophos;i="5.79,383,1602572400"; 
   d="gz'50?scan'50,208,50";a="179502622"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Jan 2021 10:09:29 -0800
IronPort-SDR: Jcb/N07B3l46GdITIuha2xT3qpl5wc1ldK9n04aUPXUxd2wtsuF9aWJ6c1y5KcfHaliwFhtHiX
 eGOchl1D0HGw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,383,1602572400"; 
   d="gz'50?scan'50,208,50";a="388931882"
Received: from lkp-server02.sh.intel.com (HELO 625d3a354f04) ([10.239.97.151])
  by orsmga008.jf.intel.com with ESMTP; 28 Jan 2021 10:09:27 -0800
Received: from kbuild by 625d3a354f04 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1l5BjS-000363-S9; Thu, 28 Jan 2021 18:09:26 +0000
Date: Fri, 29 Jan 2021 02:08:27 +0800
From: kernel test robot <lkp@intel.com>
To: Michal Rostecki <mrostecki@suse.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	David Sterba <dsterba@suse.com>
Subject: [kdave-btrfs-devel:dev/raid-policy 83/85] fs/btrfs/volumes.c:5739:6:
 warning: variable 'now' is used uninitialized whenever 'if' condition is
 false
Message-ID: <202101290222.XoWECQWB-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="tKW2IUtsqtDRztdT"
Content-Disposition: inline
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


--tKW2IUtsqtDRztdT
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://github.com/kdave/btrfs-devel.git dev/raid-policy
head:   92ab5dba1e9e01e617039e8450d1491b0806c31c
commit: 4535566286913fb8ad62c3efef00e6d2593b25e4 [83/85] btrfs: Add roundrobin read policy
config: s390-randconfig-r005-20210128 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 48bdd676a1d1338c10541460bf5beb69ac17e451)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install s390 cross compiling tool for clang build
        # apt-get install binutils-s390x-linux-gnu
        # https://github.com/kdave/btrfs-devel/commit/4535566286913fb8ad62c3efef00e6d2593b25e4
        git remote add kdave-btrfs-devel https://github.com/kdave/btrfs-devel.git
        git fetch --no-tags kdave-btrfs-devel dev/raid-policy
        git checkout 4535566286913fb8ad62c3efef00e6d2593b25e4
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=s390 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:119:21: note: expanded from macro '__swab32'
           ___constant_swab32(x) :                 \
                              ^
   include/uapi/linux/swab.h:19:12: note: expanded from macro '___constant_swab32'
           (((__u32)(x) & (__u32)0x000000ffUL) << 24) |            \
                     ^
   In file included from fs/btrfs/volumes.c:10:
   In file included from include/linux/blkdev.h:26:
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
   include/uapi/linux/swab.h:20:12: note: expanded from macro '___constant_swab32'
           (((__u32)(x) & (__u32)0x0000ff00UL) <<  8) |            \
                     ^
   In file included from fs/btrfs/volumes.c:10:
   In file included from include/linux/blkdev.h:26:
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
   In file included from fs/btrfs/volumes.c:10:
   In file included from include/linux/blkdev.h:26:
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
   In file included from fs/btrfs/volumes.c:10:
   In file included from include/linux/blkdev.h:26:
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
   In file included from fs/btrfs/volumes.c:10:
   In file included from include/linux/blkdev.h:26:
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
>> fs/btrfs/volumes.c:5739:6: warning: variable 'now' is used uninitialized whenever 'if' condition is false [-Wsometimes-uninitialized]
           if (last_sched_time != 0) {
               ^~~~~~~~~~~~~~~~~~~~
   fs/btrfs/volumes.c:5772:44: note: uninitialized use occurs here
           this_cpu_write(*fs_info->last_sched_time, now);
                                                     ^~~
   include/linux/percpu-defs.h:508:73: note: expanded from macro 'this_cpu_write'
   #define this_cpu_write(pcp, val)        __pcpu_size_call(this_cpu_write_, pcp, val)
                                                                                  ^~~
   include/linux/percpu-defs.h:380:29: note: expanded from macro '__pcpu_size_call'
                   case 8: stem##8(variable, __VA_ARGS__);break;           \
                                             ^~~~~~~~~~~
   include/asm-generic/percpu.h:342:64: note: expanded from macro 'this_cpu_write_8'
   #define this_cpu_write_8(pcp, val)      this_cpu_generic_to_op(pcp, val, =)
                                                                       ^~~
   include/asm-generic/percpu.h:148:29: note: expanded from macro 'this_cpu_generic_to_op'
           raw_cpu_generic_to_op(pcp, val, op);                            \
                                      ^~~
   include/asm-generic/percpu.h:72:26: note: expanded from macro 'raw_cpu_generic_to_op'
           *raw_cpu_ptr(&(pcp)) op val;                                    \
                                   ^~~
   fs/btrfs/volumes.c:5739:2: note: remove the 'if' if its condition is always true
           if (last_sched_time != 0) {
           ^~~~~~~~~~~~~~~~~~~~~~~~~~
   fs/btrfs/volumes.c:5736:9: note: initialize the variable 'now' to silence this warning
           u64 now;
                  ^
                   = 0
   In file included from fs/btrfs/volumes.c:6:
   In file included from include/linux/sched.h:14:
   In file included from include/linux/pid.h:5:
   In file included from include/linux/rculist.h:10:
   In file included from include/linux/list.h:9:
   In file included from include/linux/kernel.h:11:
   In file included from include/linux/bitops.h:32:
   arch/s390/include/asm/bitops.h:90:4: error: invalid operand in inline asm: 'ni	$0,${1:b}'
                           "ni     %0,%b1\n"
                           ^
   arch/s390/include/asm/bitops.h:90:4: error: invalid operand in inline asm: 'ni	$0,${1:b}'
   arch/s390/include/asm/bitops.h:90:4: error: invalid operand in inline asm: 'ni	$0,${1:b}'
   arch/s390/include/asm/bitops.h:90:4: error: invalid operand in inline asm: 'ni	$0,${1:b}'
   arch/s390/include/asm/bitops.h:69:4: error: invalid operand in inline asm: 'oi	$0,${1:b}'
                           "oi     %0,%b1\n"
                           ^
   arch/s390/include/asm/bitops.h:90:4: error: invalid operand in inline asm: 'ni	$0,${1:b}'
                           "ni     %0,%b1\n"
                           ^
   arch/s390/include/asm/bitops.h:90:4: error: invalid operand in inline asm: 'ni	$0,${1:b}'
   arch/s390/include/asm/bitops.h:90:4: error: invalid operand in inline asm: 'ni	$0,${1:b}'
   arch/s390/include/asm/bitops.h:69:4: error: invalid operand in inline asm: 'oi	$0,${1:b}'
                           "oi     %0,%b1\n"
                           ^
   arch/s390/include/asm/bitops.h:69:4: error: invalid operand in inline asm: 'oi	$0,${1:b}'
   arch/s390/include/asm/bitops.h:90:4: error: invalid operand in inline asm: 'ni	$0,${1:b}'
                           "ni     %0,%b1\n"
                           ^
   arch/s390/include/asm/bitops.h:90:4: error: invalid operand in inline asm: 'ni	$0,${1:b}'
   arch/s390/include/asm/bitops.h:69:4: error: invalid operand in inline asm: 'oi	$0,${1:b}'
                           "oi     %0,%b1\n"
                           ^
   arch/s390/include/asm/bitops.h:69:4: error: invalid operand in inline asm: 'oi	$0,${1:b}'
   arch/s390/include/asm/bitops.h:69:4: error: invalid operand in inline asm: 'oi	$0,${1:b}'
   arch/s390/include/asm/bitops.h:90:4: error: invalid operand in inline asm: 'ni	$0,${1:b}'
                           "ni     %0,%b1\n"
                           ^
   arch/s390/include/asm/bitops.h:69:4: error: invalid operand in inline asm: 'oi	$0,${1:b}'
                           "oi     %0,%b1\n"
                           ^
   arch/s390/include/asm/bitops.h:69:4: error: invalid operand in inline asm: 'oi	$0,${1:b}'
   arch/s390/include/asm/bitops.h:69:4: error: invalid operand in inline asm: 'oi	$0,${1:b}'
   fatal error: too many errors emitted, stopping now [-ferror-limit=]
   21 warnings and 20 errors generated.


vim +5739 fs/btrfs/volumes.c

  5712	
  5713	/*
  5714	 * find_live_mirror_roundrobin() searches for a raid1 mirror which can process
  5715	 * more requests.
  5716	 *
  5717	 * @fs_info:     the filesystem
  5718	 * @map:         extent mapping which contains stripes
  5719	 * @first:       number of the first mirror
  5720	 * @num_stripes: number of stripes in the array
  5721	 *
  5722	 * It calls __find_live_mirror_roundrobin() function to try to find a suitable
  5723	 * mirror, firstly non-rotational, then rotational.
  5724	 *
  5725	 * If no suitable mirror found, it selects the next (last used + 1) mirror.
  5726	 */
  5727	static int find_live_mirror_roundrobin(struct btrfs_fs_info *fs_info,
  5728					       struct map_lookup *map, int first,
  5729					       int num_stripes)
  5730	{
  5731		int preferred_mirror;
  5732		int rotational_first;
  5733		u64 last_sched_time;
  5734		u64 duration;
  5735		int limit;
  5736		u64 now;
  5737	
  5738		last_sched_time = this_cpu_read(*fs_info->last_sched_time);
> 5739		if (last_sched_time != 0) {
  5740			now = ktime_get_ns();
  5741			duration = now - last_sched_time;
  5742	
  5743			if (duration < (NSEC_PER_MSEC *
  5744					fs_info->fs_devices->read_policy_roundrobin_duration)) {
  5745				preferred_mirror = this_cpu_read(*fs_info->last_mirror);
  5746				goto out;
  5747			}
  5748		}
  5749	
  5750		limit = first + num_stripes;
  5751	
  5752		/* Try to find non-rotational mirror */
  5753		__find_live_mirror_roundrobin_nonrot(fs_info, map, first, limit,
  5754						     &preferred_mirror,
  5755						     &rotational_first);
  5756		if (preferred_mirror >= 0)
  5757			goto out;
  5758	
  5759		/* Try to find rotational mirror if any available */
  5760		if (rotational_first >= 0) {
  5761			preferred_mirror = __find_live_mirror_roundrobin_rot(
  5762				fs_info, map, first, num_stripes);
  5763			if (preferred_mirror >= 0)
  5764				goto out;
  5765		}
  5766	
  5767		/* If no suitable mirror found, return the next mirror */
  5768		preferred_mirror = (
  5769			this_cpu_read(*fs_info->last_mirror) + 1) % num_stripes;
  5770	
  5771	out:
  5772		this_cpu_write(*fs_info->last_sched_time, now);
  5773		this_cpu_write(*fs_info->last_mirror, preferred_mirror);
  5774		return preferred_mirror;
  5775	}
  5776	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202101290222.XoWECQWB-lkp%40intel.com.

--tKW2IUtsqtDRztdT
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
/R8sI2dzwNsAAA==

--tKW2IUtsqtDRztdT--
