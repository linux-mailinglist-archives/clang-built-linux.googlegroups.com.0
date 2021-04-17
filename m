Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBSPV5OBQMGQEI46PDCI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3a.google.com (mail-oo1-xc3a.google.com [IPv6:2607:f8b0:4864:20::c3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 73EB53630D0
	for <lists+clang-built-linux@lfdr.de>; Sat, 17 Apr 2021 17:12:10 +0200 (CEST)
Received: by mail-oo1-xc3a.google.com with SMTP id o3-20020a0568200403b02901e6226d0806sf4111103oou.16
        for <lists+clang-built-linux@lfdr.de>; Sat, 17 Apr 2021 08:12:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618672329; cv=pass;
        d=google.com; s=arc-20160816;
        b=UHjy9tHQ42zNuYnhHuQMuNLkU/7YkrV4Nb6r6QYP2+wtJlYQSiYacjxTWqVFnXRaXN
         xYNablWCG/N9XnuWy69HBsp/KdyTW+NPej0GM8yZy+8H4yqlvd0U33/iOUX8HOADWMZC
         0bY8o8DSBVjTUEBB3p4rLUdxER5CqGk7i0Xb5TsGSYtpU9PogXlapMQW1J+GKyYBZh9z
         GPYW5Vr0d5U+eGotQ1isfZSeK30HgoPveaDbQXFJN7A3BwB3uhwd6yIRSpM6i4ZsZhg6
         BWaJ+l8kYRxIbOY5N9/lPK1B5Pvqfq9IpPEmbYM456l+9HEv/izsT4unBXHIPLyGbkaf
         kYcQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=UU4uXxjebfP6ZgibljEur6ZUQg3iuzwMc5Nv9R31sy0=;
        b=QEkn/3YIJ93Dlcd+lKAdideVR9bwnIO/2Jo80AH9gwmMhwGar2ax8lgCLxPFrZJCIm
         tcB67ycGNfzn47+ApHgcUk0A9XUDOqkisaUb1GIwLHgjn9OmOpdJjr68/Vm5IOMV9LR0
         0cn7FVfSdlCa6aoAXTluoizCwe+/3j7eCzdA4knAyFvy++Oi0adlOYNkxzBUDHkPVoN7
         iBh9fsGNLHi2OLrYXQNp6ycxbps+hALLuZa2OGQrchqGQXUvkdp/U8+4dvFPr8vV6cw/
         MbINgl4mfVj0kJwtwTF0TcfPau2eKmnLMR7bMYnkkmJgQAspXgpEpyTglSGwTXz4iDKY
         YPaA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=UU4uXxjebfP6ZgibljEur6ZUQg3iuzwMc5Nv9R31sy0=;
        b=Bx73//jLpDdThPpX/h1Y5j1y41Ur9LG4e27BsAVB4i6dBZ6vp6ggh/QQntaiElpqip
         j9ZKhAfiBPxbbafo++k0fhfRevGK45j+HisRK8BFFQ8dUtg8flf8PQPEddoyh/kTAlMQ
         3UCCr60JpHshySAr+GDeMgN1MHxRGUlb+A3Sw43B1HQ5aPEGOWhfWiZtKn0RNubHgNZe
         3KeUL/+lN22qzx5F8OP6Y2H1SGjGFD6OXgClUg+TA8rcWxp+Sa4Tb084S1yc7m9Hxqkk
         ik6O4WzLGiuXYo5BauglMm3Fw26fBk4hO1/XCOQwC28h+RfEuWK73NAiD+q+JOz9T8lM
         Fgew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=UU4uXxjebfP6ZgibljEur6ZUQg3iuzwMc5Nv9R31sy0=;
        b=QpjZPVbC34venhYfqHBmJPUUi619ux2VkDkKgRa7uGYb/kDwxMTvuXo0vAeDhAI0Gf
         RHzrE9tdGzi1qVjasFOjJ+/vwuQRYSdO8VX7tLLg+8BiopYIJ8HnKFmTMF4XQ1H3RLqS
         PpKXd5gmYe2W8XXdp4gePcRxxyXNwvwE3b0HUDnn5nL6RGLcpyHDez73wdi+KoiEne+V
         4itSkB7aWN63AMcu767ryNcWpRPVHOnIP4HYxTb0d1sTYQfjZwpabSGx6T0zIYBpQN1x
         gXZ4ezhjt6LpKhMxVTA23FP9KQlsarFdZpWlHdHme7Q5rmuKki6G2peoizvI8bcOchiP
         dR8A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531sMRrOy/PmXLwGkE5NFp7Ueuqnbor0MwxRX0oamwPWtvpnMTqz
	YjaVpKiXBEHz+78IVrD2rJA=
X-Google-Smtp-Source: ABdhPJxnAZpTe4r8yZsOrlwmjLfbVklVrNtRPocxkE859ujMEt52gB1zKv4GhljiXqxrU+BxLY0HwA==
X-Received: by 2002:a54:4384:: with SMTP id u4mr10253922oiv.33.1618672329201;
        Sat, 17 Apr 2021 08:12:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:e050:: with SMTP id v16ls773369oos.1.gmail; Sat, 17 Apr
 2021 08:12:08 -0700 (PDT)
X-Received: by 2002:a4a:8247:: with SMTP id t7mr7258577oog.53.1618672328652;
        Sat, 17 Apr 2021 08:12:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618672328; cv=none;
        d=google.com; s=arc-20160816;
        b=O1s8AvGtLvXnmrSalz6igBM4K+Ts9lclaGjtnceXcdph3cxnm+Cuso+QxC0vSAT7hZ
         MZA5KVYMqxJzLcuPJtUAAhdIJIhY7JaOMxDesjYcWuIVai3JY8kh6MekuN6kCTS9sF94
         MCZiHGfs3UFkcV1Np+qqAtQL+MD5YlBnapgCKVdBR4QSrfqf5Ta64YLOSScac6SWJjva
         sLoZwPIhxKQ0LWKBQrOZrEjrSNBaGypcgoDqHYNnDi6uwLldgw7k5Ukfl9Nqeq8uc2Xd
         2iucxrcjn2uVmWiM2ivkgSisYEImhMR7cst37WaYq233Cp+0/KjUK7qW70yvMwkrwKzq
         bGTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=0icDO6U61r5FeBxoyvc/Yh8eHmLX5RO+ecwwWhne0A8=;
        b=RnI/GD8pIMY/0otTHCm6Fr4/Ecxf2WmMyH0FOnchjgB7PHZsFCd7dZ/8pTrzgxfgLG
         6uBJoWCDbUM2CgXHC2hypeHpOXHSHVBnkvB6pV/6HEPcZJ+r4nroW6dVzDtnlrtxNAl0
         WXTa2FCwBguCXiy7Y2r+ObAVXY6GcBdqnlzUC1QH2qqWu2vJoaXnRJWZYR/QaqIG4ugA
         x9LxSHfB5azOv29e0M4Wgwh1bvgjPaK0bU1svCdbEpj8hg9/BzKM5nEgzlXCSixb4gPz
         6tBa8qrumaTvQfF+kTJPa2I2jgeozI6VrtY/7i5Xet2J/h6fYgCHZQ2jEUuGIFJcoapn
         7lSA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga17.intel.com (mga17.intel.com. [192.55.52.151])
        by gmr-mx.google.com with ESMTPS id n25si754592otf.1.2021.04.17.08.12.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Apr 2021 08:12:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) client-ip=192.55.52.151;
IronPort-SDR: MkoAhBw94PMJh7VLeIf3lh36mdizb/sekc/jG4BVATZTqYddaR8Sv3hVG/DOdYUXKp0wsMz+0a
 Iy3EAk5Vjc4w==
X-IronPort-AV: E=McAfee;i="6200,9189,9957"; a="175276850"
X-IronPort-AV: E=Sophos;i="5.82,230,1613462400"; 
   d="gz'50?scan'50,208,50";a="175276850"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Apr 2021 08:12:07 -0700
IronPort-SDR: yMgxSa76wmRIK8IF+l83zUBd1/935m09bEeuNM9GOEcz2bDCPNVL7EjM27uHosl4Bg7VvU4uwL
 4X/9WanasLuA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,230,1613462400"; 
   d="gz'50?scan'50,208,50";a="533728321"
Received: from lkp-server01.sh.intel.com (HELO a48ff7ddd223) ([10.239.97.150])
  by orsmga004.jf.intel.com with ESMTP; 17 Apr 2021 08:12:02 -0700
Received: from kbuild by a48ff7ddd223 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lXmc5-0000uu-Lz; Sat, 17 Apr 2021 15:12:01 +0000
Date: Sat, 17 Apr 2021 23:11:49 +0800
From: kernel test robot <lkp@intel.com>
To: Aravind Ramesh <aravind.ramesh@wdc.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org, Jaegeuk Kim <jaegeuk@kernel.org>,
	Damien Le Moal <damien.lemoal@wdc.com>,
	Niklas Cassel <niklas.cassel@wdc.com>, Chao Yu <yuchao0@huawei.com>,
	Chao Yu <chao@kernel.org>
Subject: fs/f2fs/super.c:3266:12: warning: stack frame size of 2192 bytes in
 function 'f2fs_scan_devices'
Message-ID: <202104172338.SG4uwR1b-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="2fHTh5uZTiUOsy+g"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted
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


--2fHTh5uZTiUOsy+g
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   9cdbf6467424045617cd6e79dcaad06bb8efa31c
commit: de881df97768d07b342cbd1f8359b832afccace9 f2fs: support zone capacity less than zone size
date:   7 months ago
config: powerpc-randconfig-r011-20210417 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project f549176ad976caa3e19edd036df9a7e12770af7c)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc cross compiling tool for clang build
        # apt-get install binutils-powerpc-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=de881df97768d07b342cbd1f8359b832afccace9
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout de881df97768d07b342cbd1f8359b832afccace9
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 ARCH=powerpc 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:45:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insw, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:193:1: note: expanded from here
   __do_insw
   ^
   arch/powerpc/include/asm/io.h:542:56: note: expanded from macro '__do_insw'
   #define __do_insw(p, b, n)      readsw((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from fs/f2fs/super.c:12:
   In file included from include/linux/buffer_head.h:14:
   In file included from include/linux/pagemap.h:11:
   In file included from include/linux/highmem.h:10:
   In file included from include/linux/hardirq.h:10:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:47:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insl, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:195:1: note: expanded from here
   __do_insl
   ^
   arch/powerpc/include/asm/io.h:543:56: note: expanded from macro '__do_insl'
   #define __do_insl(p, b, n)      readsl((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from fs/f2fs/super.c:12:
   In file included from include/linux/buffer_head.h:14:
   In file included from include/linux/pagemap.h:11:
   In file included from include/linux/highmem.h:10:
   In file included from include/linux/hardirq.h:10:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:49:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsb, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:197:1: note: expanded from here
   __do_outsb
   ^
   arch/powerpc/include/asm/io.h:544:58: note: expanded from macro '__do_outsb'
   #define __do_outsb(p, b, n)     writesb((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from fs/f2fs/super.c:12:
   In file included from include/linux/buffer_head.h:14:
   In file included from include/linux/pagemap.h:11:
   In file included from include/linux/highmem.h:10:
   In file included from include/linux/hardirq.h:10:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:51:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsw, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:199:1: note: expanded from here
   __do_outsw
   ^
   arch/powerpc/include/asm/io.h:545:58: note: expanded from macro '__do_outsw'
   #define __do_outsw(p, b, n)     writesw((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from fs/f2fs/super.c:12:
   In file included from include/linux/buffer_head.h:14:
   In file included from include/linux/pagemap.h:11:
   In file included from include/linux/highmem.h:10:
   In file included from include/linux/hardirq.h:10:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:53:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsl, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:201:1: note: expanded from here
   __do_outsl
   ^
   arch/powerpc/include/asm/io.h:546:58: note: expanded from macro '__do_outsl'
   #define __do_outsl(p, b, n)     writesl((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   fs/f2fs/super.c:3419:12: warning: stack frame size of 2704 bytes in function 'f2fs_fill_super' [-Wframe-larger-than=]
   static int f2fs_fill_super(struct super_block *sb, void *data, int silent)
              ^
>> fs/f2fs/super.c:3266:12: warning: stack frame size of 2192 bytes in function 'f2fs_scan_devices' [-Wframe-larger-than=]
   static int f2fs_scan_devices(struct f2fs_sb_info *sbi)
              ^
   14 warnings generated.


vim +/f2fs_scan_devices +3266 fs/f2fs/super.c

26d815ad75156a Jaegeuk Kim   2015-04-20  3265  
3c62be17d4f562 Jaegeuk Kim   2016-10-06 @3266  static int f2fs_scan_devices(struct f2fs_sb_info *sbi)
3c62be17d4f562 Jaegeuk Kim   2016-10-06  3267  {
3c62be17d4f562 Jaegeuk Kim   2016-10-06  3268  	struct f2fs_super_block *raw_super = F2FS_RAW_SUPER(sbi);
7bb3a371d19915 Masato Suzuki 2017-02-27  3269  	unsigned int max_devices = MAX_DEVICES;
3c62be17d4f562 Jaegeuk Kim   2016-10-06  3270  	int i;
3c62be17d4f562 Jaegeuk Kim   2016-10-06  3271  
7bb3a371d19915 Masato Suzuki 2017-02-27  3272  	/* Initialize single device information */
7bb3a371d19915 Masato Suzuki 2017-02-27  3273  	if (!RDEV(0).path[0]) {
7bb3a371d19915 Masato Suzuki 2017-02-27  3274  		if (!bdev_is_zoned(sbi->sb->s_bdev))
3c62be17d4f562 Jaegeuk Kim   2016-10-06  3275  			return 0;
7bb3a371d19915 Masato Suzuki 2017-02-27  3276  		max_devices = 1;
7bb3a371d19915 Masato Suzuki 2017-02-27  3277  	}
3c62be17d4f562 Jaegeuk Kim   2016-10-06  3278  
7bb3a371d19915 Masato Suzuki 2017-02-27  3279  	/*
7bb3a371d19915 Masato Suzuki 2017-02-27  3280  	 * Initialize multiple devices information, or single
7bb3a371d19915 Masato Suzuki 2017-02-27  3281  	 * zoned block device information.
7bb3a371d19915 Masato Suzuki 2017-02-27  3282  	 */
026f05079b00a5 Kees Cook     2018-06-12  3283  	sbi->devs = f2fs_kzalloc(sbi,
026f05079b00a5 Kees Cook     2018-06-12  3284  				 array_size(max_devices,
026f05079b00a5 Kees Cook     2018-06-12  3285  					    sizeof(struct f2fs_dev_info)),
026f05079b00a5 Kees Cook     2018-06-12  3286  				 GFP_KERNEL);
3c62be17d4f562 Jaegeuk Kim   2016-10-06  3287  	if (!sbi->devs)
3c62be17d4f562 Jaegeuk Kim   2016-10-06  3288  		return -ENOMEM;
3c62be17d4f562 Jaegeuk Kim   2016-10-06  3289  
7bb3a371d19915 Masato Suzuki 2017-02-27  3290  	for (i = 0; i < max_devices; i++) {
7bb3a371d19915 Masato Suzuki 2017-02-27  3291  
7bb3a371d19915 Masato Suzuki 2017-02-27  3292  		if (i > 0 && !RDEV(i).path[0])
7bb3a371d19915 Masato Suzuki 2017-02-27  3293  			break;
7bb3a371d19915 Masato Suzuki 2017-02-27  3294  
7bb3a371d19915 Masato Suzuki 2017-02-27  3295  		if (max_devices == 1) {
7bb3a371d19915 Masato Suzuki 2017-02-27  3296  			/* Single zoned block device mount */
7bb3a371d19915 Masato Suzuki 2017-02-27  3297  			FDEV(0).bdev =
7bb3a371d19915 Masato Suzuki 2017-02-27  3298  				blkdev_get_by_dev(sbi->sb->s_bdev->bd_dev,
7bb3a371d19915 Masato Suzuki 2017-02-27  3299  					sbi->sb->s_mode, sbi->sb->s_type);
7bb3a371d19915 Masato Suzuki 2017-02-27  3300  		} else {
7bb3a371d19915 Masato Suzuki 2017-02-27  3301  			/* Multi-device mount */
3c62be17d4f562 Jaegeuk Kim   2016-10-06  3302  			memcpy(FDEV(i).path, RDEV(i).path, MAX_PATH_LEN);
7bb3a371d19915 Masato Suzuki 2017-02-27  3303  			FDEV(i).total_segments =
7bb3a371d19915 Masato Suzuki 2017-02-27  3304  				le32_to_cpu(RDEV(i).total_segments);
3c62be17d4f562 Jaegeuk Kim   2016-10-06  3305  			if (i == 0) {
3c62be17d4f562 Jaegeuk Kim   2016-10-06  3306  				FDEV(i).start_blk = 0;
3c62be17d4f562 Jaegeuk Kim   2016-10-06  3307  				FDEV(i).end_blk = FDEV(i).start_blk +
3c62be17d4f562 Jaegeuk Kim   2016-10-06  3308  				    (FDEV(i).total_segments <<
3c62be17d4f562 Jaegeuk Kim   2016-10-06  3309  				    sbi->log_blocks_per_seg) - 1 +
3c62be17d4f562 Jaegeuk Kim   2016-10-06  3310  				    le32_to_cpu(raw_super->segment0_blkaddr);
3c62be17d4f562 Jaegeuk Kim   2016-10-06  3311  			} else {
3c62be17d4f562 Jaegeuk Kim   2016-10-06  3312  				FDEV(i).start_blk = FDEV(i - 1).end_blk + 1;
3c62be17d4f562 Jaegeuk Kim   2016-10-06  3313  				FDEV(i).end_blk = FDEV(i).start_blk +
3c62be17d4f562 Jaegeuk Kim   2016-10-06  3314  					(FDEV(i).total_segments <<
3c62be17d4f562 Jaegeuk Kim   2016-10-06  3315  					sbi->log_blocks_per_seg) - 1;
3c62be17d4f562 Jaegeuk Kim   2016-10-06  3316  			}
3c62be17d4f562 Jaegeuk Kim   2016-10-06  3317  			FDEV(i).bdev = blkdev_get_by_path(FDEV(i).path,
3c62be17d4f562 Jaegeuk Kim   2016-10-06  3318  					sbi->sb->s_mode, sbi->sb->s_type);
7bb3a371d19915 Masato Suzuki 2017-02-27  3319  		}
3c62be17d4f562 Jaegeuk Kim   2016-10-06  3320  		if (IS_ERR(FDEV(i).bdev))
3c62be17d4f562 Jaegeuk Kim   2016-10-06  3321  			return PTR_ERR(FDEV(i).bdev);
3c62be17d4f562 Jaegeuk Kim   2016-10-06  3322  
3c62be17d4f562 Jaegeuk Kim   2016-10-06  3323  		/* to release errored devices */
3c62be17d4f562 Jaegeuk Kim   2016-10-06  3324  		sbi->s_ndevs = i + 1;
3c62be17d4f562 Jaegeuk Kim   2016-10-06  3325  

:::::: The code at line 3266 was first introduced by commit
:::::: 3c62be17d4f562f43fe1d03b48194399caa35aa5 f2fs: support multiple devices

:::::: TO: Jaegeuk Kim <jaegeuk@kernel.org>
:::::: CC: Jaegeuk Kim <jaegeuk@kernel.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202104172338.SG4uwR1b-lkp%40intel.com.

--2fHTh5uZTiUOsy+g
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICJ30emAAAy5jb25maWcAnFxbk9u2kn7Pr2A5VVtnHxxLmvtuzQNIgiIikuAQoKSZF5as
oR1t5raSJif+99sN8AKQ0Di1rooz0924NdDdXzdA//rLrx55P74+b4677ebp6Yf3vX6p95tj
/eh92z3V/+2F3Mu49GjI5G8gnOxe3v/+8vb673r/tvUufrv5bfJ5vz33FvX+pX7ygteXb7vv
79DB7vXll19/CXgWsXkVBNWSFoLxrJJ0LW8/bZ82L9+9v+r9AeS86dlvk98m3r++747/9eUL
/P282+9f91+env56rt72r/9Tb4/et4vzm+nV5ebx5upyu9mc1dOb+vFxcnb5+O1mc1VPZ1dX
k823q+1/fmpHnffD3k5aYhKOaSDHRBUkJJvf/jAEgZgkYU9SEl3z6dkE/hh9xERURKTVnEtu
NLIZFS9lXkonn2UJy6jB4pmQRRlIXoieyoq7asWLRU/xS5aEkqW0ksRPaCV4YQwg44ISWEwW
cfgLRAQ2hc351ZurzX7yDvXx/a3fLpYxWdFsWZEC9MBSJm/PZiDeTSvNGQwjqZDe7uC9vB6x
h05xPCBJq6RPn1zkipSmitT8K0ESacjHZEmrBS0ymlTzB5b34k5iSCNSJlLN3eilJcdcyIyk
9PbTv15eX2o4JN1yxIrkjmWIe7FkeQAjdJIrIoO4uitpSR0NgoILUaU05cV9RaQkQdxPrxQ0
YX7/u1odKaA7UoJpwWCgnaTdF9hi7/D+9fDjcKyf+32Z04wWLFAnQMR81Xc35FQJXdLEzU/Z
vCASN8fJDmJTrUgJeUpYZtMiXgQ0bM4WM+1G5KQQFIVM1ZkjhNQv55EwVfirV788eq/fBisf
zk+d8WWvrAE7gDO2gIVn0jAXpWS0MMmCReUXnIQBEfLD1h+KpVxUZR4SSdvtkrtn8GSuHVNj
8ozCnhhdZbyKH9CMUrUJnZKAmMMYPGSB43zpVixMqNlGU6MySU41sUZg87gqqFCaLNxbMFpN
21teUJrmEnrNrCm09CVPykyS4t7u1pZyzLJtH3Bo3uo0yMsvcnP40zvCdLwNTO1w3BwP3ma7
fX1/Oe5evg+0DA0qEqg+9HnsRl6yQg7YVQYWsKTOibrEYfOdsnic1aHsZd2LF8yp63+wys69
wIyY4ElrukpLRVB6wnHsQKMV8PojB79UdA2nyziGwpJQbQYkCBVCNW0Ov4M1IpUhddFlQQLH
nIQES+5NweBkFPyLoPPAT5hph8iLSAZh9PbyfEwEz0ei2+llr3vNE1Jbg+P8qdF44KOKT067
UkE09dXBanbP1n7nHhf6B8NhLmJoDPZ2+6y3TWz/qB/fn+q9963eHN/39UGRm24d3AFYYJmc
zq4NoDAveJkL89BDHArcZ9FPFk0DVxBTjEoEMTWAT0RYUTk5QQTOkmThioUyNscHGzIaOCfS
jJWzUHzEL8KUnJ5pBMf2gRbGjHKItWYAyAse4CANx5xk00dIlyxwO4NGApqChcuPRPw8+oit
gp5rGTENFjmHHUW/DEjPwH9KdQorqT7MmUMMBM2HFHxnAJEodB1rmpB7A2TBtsNCFUAqjB1U
v5MUehO8hKBugKcibEFWv61h5QNp5lwqMJMH52YBZ/0w6Cd54Kd7OT/FehDStVifcwwgtt2B
tfAc3DN7oAhYMLjC/1KSBVb8GooJ+MExhIJsgFNDdAQBBzcHGIBUFAFy1nrlrtMPBd1wM5AJ
+OiA5lIlSuh5jO3Lo/6XzpP35g4gl8HxLpx6E3MqU/BnVQOd3OPjEeigVdc2isG8E7d15Fyw
tRNLdLYHB3vh2q/S2CefAGBECGONW0Kq6GhJc25iP8HmGUki40Cr6ZgEhelMgojBO5pjEeY+
ioxXZXEqppNwyWDejcrc64dxfFIUzN6XNo/BZvep4apaSmXB246q9IRmjdjFOhrVCBPjWVCp
j7nwDgv386qwmU+ChQsyG2LiPgPsq91Tb4+C3rm2KPVpGJphQtkOml/VwfP+jATTiWXuKhY2
BYW83n973T9vXra1R/+qXwAbEYiSAaIjQKkaKjb99N07sdY/7LGd8jLVnWlYSs0MXCSlrx26
5UYgLSYSUoeF2wYT4rvsDvqyHHvC3WLEh+0o5rRNae1GwMVIiFCpKsBgeXqqk04sJkUIsM6y
izKKILHPCQwDxwIydghI9kClgkkgUkhGTjgSSVPt8iDdZxELRs4RQnLEkoFhdTgU/J4KiMLE
WnapoovteXB53oLhfP+6rQ+H1z3kLm9vr/ujdTryAIPE4kxUl+eOYTs+rVSPw6zPhIa9rE2L
TCEUGPDTFIEmGFbs6gvZBh1klU82tic1EvOsUHgGCzNGTyHnhU8bR9pobqyW7oiHgp/NLOhU
+Wi/WciIAccvz31mIHBrnspXpCkBnJYBNmCQPKdkbUzLJcCy2+m1W6C1oraj6dU/kMP+ppav
AaCH0JIWOpMD8G6oDjOLlqV8VRWxAiwiiMtsYakY8jtxezHtFpOlrGI5M/ZEguvUSYIo89wu
vCkydBElZC7GfKw3AIIbM9pDF68o5OvSOixGWCNFct9EWEOEZE2hBDOk6fVk6KBcJqtwJk+Z
BO9AIJtV5meCalWkUjswnqUVynXoYD4tNNJBiCCYn9CBSLNmrKQU3KfCNggIrdq/QrSbn+Qx
EojbmZsXfsRbAm9imQ1ZGYt94Bl42dQ4MflcF1ZVVU3cnjf+5mlzxFDicjcClO0udLXwRiQA
uLXtu9DmAuLPvKRm5ktzkhfoeQmWKGyt8EhDYITyAJCsMjLywXcARlzDNuvj29ZYvGhf/+97
/bL94R22myddVulPDBgIxIs7Zzx1t247Zo9Ptfe43/1V74HUDYdk414AaxqDglZLq+Z8WSUE
cIQLO1lSKc3Kk11Iyn/WPiaJbFCl3li+okUedBP2QrUOK0k/LWPqRy/XoJhqsaqjkDAHTjWP
TpkJj17f8KLFgkHxQzWdTFz5y0M1u5gM6o1ntuigF3c3t9BNFwuIjMGHlsmgomzTR+B+wI5X
VZmxNE8obKU7m4V8Coso4HARgWAh3j7gqioP7Jxl6FeHaJZmyoCb6nzMZZ6M3NZIpoCfTKC9
oGtqXQgoAgSPxGXBANQRQBHL+RlEdX9iBN8CcEEVlqmVb2OBUVXIINa7Cryl6aYyyDUhzsQs
krddeIVEAIMdHniUVkJw9AfYXC86oULoXobumiY0kK1qUpBIhhKq7A8CjRqNAkOS0DlJ2qBS
LUlS0tvJ3xeP9ebxa11/m+g/dpzXI6ngYG/0+ULh00FUUJBVr7yP1s3NV0PuioUKmg5l1YUG
Ig7l/jlA4+J2emZHSJGa+5WGys325RK6Bu9bSQIgHbBrT8+tXDNPT9aCgBUkRixf3VXKzVQ0
AhTNMBkxwb+d17SuQPkC//1g+AYj5CR+YLY15fpTlAGqkRDZ9UWbiS1AyTyKsIo2+Xs7sf/0
VqKu56CP4iOxPL4XkBr0gkMBDHIlSdiDVfFu84DNfvvH7lhvsT76+bF+gwVBLjdetDarwKqr
abO1acoKuE5MTNEhPPkdDBTCkm/qpVPXvUBLiWzD5rkcdqIG6ze1zGCZ8wxrfUEAJjgwLbRg
vCKVLKt8vK00pldQd+cMFodQGZhywBotSVNP9XRq+k03FXr3Qa1K8aMyC5Rzp0XBAUlnv9PA
jhH9HahqHwMSGqNLBC4qUGtjdhQpwHIli+7b8uWge5Giu2runYdrQHRZQbasYXyj/YqYAF/L
CXp3upiBWYGLa2PXno6lmWbExt2PFOI6ZZg9ziFuQmMdPzCTd7LxuuInItpfsochLldTwCxH
kIiCj8vXQTyMkytKFhjIKJajSHBXsmLYzYrAsWbKL+NlcPsawLFSQQPMSzCIWhmHkoCf8b2I
Oh8L65ZZsWHbMZ9+GJAdF3g/l8ADN7Sh8eXeMGrysI1+NMBKh6FrHpYQTpXxgktQZTtH/3QN
eRUYibq4xyPhOOCquarpWPvV69DKrj9KzY2su2+dLSFnADM3WgYJpkBYFVyRIjQYHN9psLko
YcGZeQ2ks/GzGYyidOZYBjr8SvIms+oL5YDWzEqbGJUC5wFffv66OdSP3p861r3tX7/tnqw7
YBQaBaxubMVtnLtdXHVw+prTRwMPC1M/CUgdAAQUhZVt05+quq5IcfSJfX5Q2ZW6s5Cjo2Xh
aS2tQUzCifvCrZEqs6FEzx87ypMetOkNDjYE2WDMEEXQPfcxNd6vzLEC0UIx9/RakcEdhcER
MZl+tPhGZjZz3zANpC4u/4HU2bWroGjLXExnLg1Uqhj46fDHBgQ+jQZAsyogJJ3uHqu0qypl
QuhXDSkFII5Vp1SVV0wllRn4IjDf+9TniatLWbC0lVrYFxMmtVrFTKoSsoFxW3enXhEkEMlL
I675aOPmrwsA1ILB0bmzKxztHaUv5k6ifkJl3WTrK01J5wWT945FtTKI6kO70wbB6xhVDDte
+a5Sme4Oq0hmZdakdiNZvaH2eG4XzC0B/fYPkqeguM+Hd4S6KrHZH3foTDz54602IK6qxSuo
RcIlXm6aKAlQbtZLnGRUAeSGmeWYhxKUCu66kBvKMdMXDJkkjD7gqmxH2jn2UKZgImBrpx4J
W/eCTgkuop9IkJTNyc9kIGNhbpnWHEhgKb03bBFy8WHTJEzdTZExyhyNK94TM+rtPwEDP6Gg
tpMyc4+9IBCCftI/jT7WCT6ovLx2nUXDEI2h2/rX4NibNpfeKSjHuG2KKuHWDyl5/5rGsBho
x7jO6fGS3i6XGszFvQ+O4bmrZDRkP7ozZ2gP0lsl1hnMOJpNTYfaGDwWrFREHkG/rkROJCC/
oCpS48GnwhC6MdgEX2Umdi5WgqanmApvneB16ebpatpP6mxG42Llbjqi99fNKeMr45Hs8PdO
MMOpA7hISJ5j3CNhiGGyUrGvl+/fBqnDQP+ut+/HzdenWr1t99Q18NE4Fj7LolQi3u77gF/s
QkEjJIKC5bI/Gw0ZInEAROPOpaCY5DlLu6cmpGab1s+v+x9eunnZfK+fnbWND6tyfUEOHHtJ
XByjcohXYuoNSQ6gYlABNEp7a6yJUhdrCX9hqjGs/o0khmUCfJk3N9GC2uUFpbl6fmAbhqpg
tjx80W4cFq0F84mkOQ7ejuAs1DN4XOCo5agobNOblVjO3BZo35pzZdmuqHCysizyBBKnXCrj
VPe6XbVSpVbB0CGr/L2g6CDc1+iOV96YTWvszI1EVaVlaECVHF70+pCP2U+lFsL1rqBduDoA
sC2qu9vzyc1ln1BSACYEvKfZW2C/FevoDznnbqT04Jfu1OZBpU/c9W66rSTp+9KmMNYvEiZP
iwJdmvrUQmtWfUVgluHD9llEW4pwDKTvTpc00I8mWv3q2jvWCC04Psc3gwD34pQUrhdSfd4s
qa4vECs5Pe0f+jEy6sKwuvqIr4Z+Z91767D+a7c1b7ra6QcBKULTpeVBCnMZw9Pg83azf/S+
7neP3xU87eu1u23TsceHPqzUqX9Mk9yMRBYZNC9jTDa6OQCil2keubIYUHQWkmT8Rl11GDEI
o6TQBdVwtIhot3/+92Zfe0+vm0d1c9nu7Uql1eYUO5I6GIAKSuuFHt4FtKMZiVLfSpUBu3X3
F8MuAXCT+pWW69h1Ddp00TwmwxW1rVSFDhOjNkJZmFtllSbXafXqMr1gS1MrDZUuC7tCoelY
GW+aVNoHuvJQFCLqwVkjqq+BnocWrSp4peSDW6KCzi0L179XbBaMaCJhqV+KMd0sAXe0dExE
iDIeqbgbtw4CA8mEKd5AkUIfm8hSILAi8Au0ewFql5rGttTd+DwqGzZxLl9LKk3jFeqWFW+a
/PLEk8WYjXnGdVE7SLcZmRDG1mQIw2B3wFnZxFQuekbvBZU8K6KG5/LfKFL661G3qbT8Evyq
js64gNinEG+b/cHOBCRWcK9U6iGGvZl5ibMGAzI8creFrVUPMkZtHYlNOys12RJ+9NJXzCb0
y0S537wcntQXlV6y+TGaPmQ8YG7C0ktTchmTqoKbM42kO85mA0YbBpFuti+icNhHe9BEFAb9
BERa6aam6rDmbFFy/QB+oMouLUSMCnDRfhCiv4Mh6ZeCp1+ip83hD2/7x+6teWQx0FUQMXvE
32lIg4F7QTq+yGjJ9pmALBefEnFVpDl1KtDifZItKvVdRGUkfg7u7EPuuc3F8dnUQZs5aJmE
DGEt7aWpFaShGFsPciB8uh7wt+xSssEugupHZ9/5+lSZmi8gCiv59hua0zun06DN29vu5XtL
xBxJS222+KrRfPmi5sjRv61RiZgZntofBL0YI54dxOYyw1Zny2svq6/tu2pTJKHGp8UmAzdV
fyczGxzwRoBHp6YLKU2r5xb+/UQv+juj+unb5+3ry3Gze6kfPeiqcd9u68CCRZRgRXqwoR2j
WhVMUv2u1/2Zny0OmdEpCwnifHa2mF1c2psghJxdJMMJiASWf3K8PP6IC/8N2EOnONORROPg
3eHPz/zlc4C6PAWK1SJ5MD8z8v8g1t9rV6nx1KSnSsjo+i+8frovai4ZIFl7UKTohwu2J80o
cpzEZrP0zlnZqyHTIKqTOmzlBvvplJmt0XPOT+tcSdEgqMQKchFAUNncnrlDAAJIMJx8QVZK
9MQwgOGqRiud4pVGlW6THHJU7z/0/2eQvaTes86onKahxOxZ3qlSQh8kmiF+3vHgaOM0ueuN
I3JLfxCwgFCtEvUaQsQ8Ca00uxXwqd98tz+bDHlYcLHgccuYJyVVo1nTU92hkZzc9/geEhTf
+TwtlAbk5pH5M1ZA5eChTFSB15DSerMARJ24O1kL7v9uEcL7jKTMGrWtDlo0C6JzvJ4HdLlE
gGGWxTSDJ0t7VF16vLcHBtje1kECHtOCZsbS9FU8PuZu3oGo6wH71XdLMFNtTQJx12uxhknW
19dXN4YbbRnT2fX5qHs4a9jf6HrNda+WlUmCv7jez4YQtMd3dAlgOsMnGlRVF9JfeF8P+erK
izdttRcufHCJuwPWRh+9r/V2836oPfUlJyT9EOoYljb0nJ7q7bF+NKq4Ta8YMEcTxKcOehbT
SxdPPYlRJtVXqXCpVb6QQbh0+Rp9A4G9tLWUbJlST3SPwltMDdTWd/dAG4m68Epk7HrhiQLx
yvo8WtEi4hd41TbsLHL+2wFL9Y+D4MvEfnsMIpwOCLxxUQ4Gabj2tpqcKLDcq7lwDd92h+04
LyXhxexiXYW5+TjNINq5usnAxLybSFim6b0yZUMJoJObs5k4n7ifAUBmnXBRFviJSIGf/bqz
YJKH4uZ6MiPOm3ImktnNZHLWz1FTZhOjpEszwQtRSeBcXDgYfjy9urLeY7ccNfjNxHXZGqfB
5dmFgfVDMb28nvU6QS8Jq4LwmZ+1H8Sa+b87LK/xayzIsMOIGklbvlRfk1gl2xk6kVH+RWmO
oP8wPPOaXhE5MzxRT7zox2qI+FQ4uB/JpmR9eX11Ya6k4dycBetLx4o69np9fuloBzi8ur6J
cyrcd8mNGKXTyWTwVKS9vbHXrP8lkPrvzcFjL4fj/v1ZfVt4+GOzBxd2xCQe5bwngHzo2ra7
N/zR/Kbg/9HarNlBYkwwQcmT0f6wl2P95EFgBGCyr5/Uv+/k+Grl/xh7lua4cZzv36/wcbdq
5huJ1IM6qqXutsZSS2nJ3UouXV7HO+Nax51ynK3Mv1+CpCQ+QGUOKacBiA8QBAESBE9cT/v2
ftaKmJle3LaGk6LP/lmERexbadii/KfTZggRmcxiR7BE/EjTapEOx7wqIe2OcVGTU5m/VPTZ
UoEq+eb9r69PN//gnP3PLzfvD1+ffrkpyl/5+P5T58+0UvTYOlDcHiUSCWjp9QQFE90egRVG
EgXRYuE/5M6tVp2kbvd7/ExCoPsiP8gNVaPrwyRV3yy+gkkqOfnFhEOeKsVhswGAqasN/+Nt
w7HTvp38IKsZ/2d26jxlMVrkRGDExpq4HOmr7X7X3xal1XwJFM40hNQZalHh+WJ/6GeKldIv
5bm4DMV6YZveE6shBNFzCUAg56gG65tbdGpiM8WIVsFtd/wkTS3sYKjggS3VYWjhporYmjdE
4Vwdyl2O8o1bBoZpcemkvaTbLgLm8kUpsK/f311tsAjGobt3l6Xbh7fP4vCj+q29sSUdMi0t
EoJY6JLiL+ODS8WCiBijLcDcur7b4AyVBHx2dD3BxluguS+rSasAqTV57LhA9sTGKnUvMXZj
egIm5UpreG8vVnNsis5ur0Ww72RNSJfuLd7u82arfJ1l41/BLoc+jhm27T8R1JGuMrAhXZYo
REiklPB19IG7CW+aLbpIPBo4KE8bZOShfkIkLtzqUUF1J1R0WxsXlcCl0q3SrqkuMpMGnqKD
E2xUIhqxb3vc5WgQ7O1ZxYLrpc9AmfyiarkXu/btZZNHNMRLkKpn9euiGI76ng1vtpVQg0Pu
rDZoMx23QWE7xz5NhPtYAg4HHCSeXTbOyb3InCM7rFc9FPxf5zFy648wll9sCOxNaGaLKy3a
iYfi8/G+H8RCJM9eXYVFCtdqMdwa/oMXkB9LFceyiAIp/He1BVKkbjiZRTX347S6N99f3rl9
+PSD9wDaIfYyscZwPbCRE5kXWdfbw17bWFSFCrxTFYfKCi1wPRQRDRK3lK7IszgK3S8k4ocx
WSZUdeCShh5EKYrjdm+WWG61D93Kmnosuro04ijWmGW2SZ3Fw5Gzp029Ok2eRSB/+eP69vz+
55dvFuPrfWvE2kzArtjZrJDgHF36rTrmemc1CUe2y9Avoilylt38Cw501QnCP75cv72//HXz
9OVfT58/c+v+N0X16/X1Vzha+KfZhQImjhAOq73lFpLyiCiLFUsKKLfN9kRMHqgCLchlSu75
+xRdY9R4t226GrPJxbibSTwB1IJ1g9vTgObMRltuEB3vKO45CjmommGLbcQAUi7s01bX9gdX
NK8PLzAsv3H54SPy8Pnhq9A+2rVzvXlyJ89ROe37n1KGVTHa4Jojt+srXd155cXq03CPZaYR
qDrXt0hnkPKi7SkKkSBmUOUCB2G3h0tivI6ppmm17yjGfhnXsVgy3YodznHytFkP06vUBrH0
orrqpnn4BkNVXF/f364vkLSvdEdNOFTCYMMNKkCP0u/iOhgPHgQk1xib3Ey2CsEaA5gL9UfN
ROTggi9LVvSe7O40Ob1N2ZnJKjXMYewuu3o7GrtwgDDXCIDUTRpc6roz6cQV5GrjAmWJRjNa
SGNyQE0zjj22xZ2ZqhagfRGyqk8CYoGrHWTMMmptRv2YACAjpKG0QHKqGrBPHw8fmu6y/2AE
CYkxbOZjRCEa2sribmBAE+5Hnb57u75fH68vSqa+mcT8n7QpdSa3bQdRYTKVgIEa6m1CxsAe
fjEtPSx1zk5UxNNiJKKC0ek3B/mPOTOWjL3p+pvHl2e5m2UzAaiLWtyBvpsMORe1HIy4OLVc
zFWp9OXXN2fV64aON+T6+B8bsX0VEdjd7UcumSIH62E7QIJtOJcX9mU/5A1EE9y8X3nHn264
nuU6+rMI3uGKW5T67f+N7CBOZXPbbdNkCmZTiMucynP5wLC0NHqwaKZr1uYX8D+8ComwwvL8
htbUqnzsSJBpQ6DgTdER2gfMNG0drDFVbKyLgcts9datrR/DOBj19s+Yodnhy/FcWz6maULw
dCcTUZfXDbqHNREc71hgbENPiLbY1i2a3Xiun7sJudunoo/SOoxdJggE8yEyTcXBJDCyiyuA
OOuFcyV1GKwlsmp3ls6ePqmOH0y1KiXEJbazkwmYkydYQIH1NFjcE3kc/uXh61duZQIFZumI
L9NoHEWMJbZB0M3bINpWg3Bm1NL3xSqtPOcdZsJIC3OAP0FoqEy9U2vGrKQ72tawAN/WZ8w0
Fbi63VfFqbDa32xY0qejzcXt4VNIUou2z5s8LgkXjnZz745QYV4bEOBzUWY0wk6XBHo2Tw0+
N+VlpzanzQB0bBhnN0NAn3585VoVG9687OKYMXRKKoIDHnAiGX6+4Ga/JnUBJovE7p5wQqkH
agYLLJjULpv7bixO7VKGrioI43JlmdwWb+TU2JV/i2ceNSYJjtWn9oBbmoJgU6ZBTNA9N4UO
GWFWLzYl73DYnE8WvMyzQJxHmnV4PTIp9h3NImqVVHcsdYZg1ppm8Zgyd/Fx4HzoVfBywgxN
t3X6MhQ0Zpl3vgxdn8QkZJYwCHAWEqcJw4dmZNiRpcSe6ySI3IafG0ZDbxsAGxsShkjSbGg6
Emap3NDIgKn4ScMsdEcHplhoExeUMhbYk6nq2/5oAcdjHkb6ObosYAlbn0443Fab6mm/P273
drZSVVhxd48rkTMeIiBzLuUn1A4QOIgWMnazNbCodaXchUgk/M6P+D69TlwPBclifDNep2uG
hBK63uqpUl/r5Zrx06okmQS1Oyxu9bgVx3RwK1HzTORnKA6CRxoLZdUNV2JrzCO0AmTEz8vJ
yHImQGrvQRo4Mlbn4Z2vWe4+yRyLUaY0jMwzlhkThXgWCYMEU7QLQRMGJNQPd3REjNcLKDwx
hUmT/ZyG4lNApwnTdL0HGYkCrAdDOoYB3oOBMxVT3jpFFHpKjcIQjZoBVIIfsWkUnpAbgYrX
Pu5pikTx5H3BFyJsBEeItTyIW5fHtkYI+m5rZF+e4MPYhS647Pl655YC8T8kxLgsV2beM3Qj
TBHt0pimce9Wt+8Lt7KmCGnKKJTpIndDP2zvh3zYYsXVccj6BmM9R5EAvVc6U6RJkKOfponv
iFIRyL1jXJ9NRLfVbRLSNXGswIw3VcyE+r2IiMsLrq6OISGoqMGVonzv2X6baEDjR2viKClS
t0EKYTrkNtLebtPR2Ron4HwnjBHxBAQJY5cVAkGI54vI90WC806gwpUGcpMkDHEFAagkSNa4
KkjCDJF8QCQMR2QpCqdhShDZkBiKzGWIcoPJjLc9Sei6Qhc00ZoCFBSxr2Z/NzLsk6KjAa55
hiKJsZRI86fbw46Em6ZQkwrR8sU4IhLTJBQRlwbTyxxKUWiMQpGucygy3nXD0NoYReW1YauT
uGEpOg+b9UnIl1zPZ3RdrTTcjKTrNougidammKRA+HgYigtkF2yq3rgCP+OLIWUBwRgFqMwO
tLRpuqJJR8wHmtUuOOCZpp0683bvTNfIMADU3iGrZsBmW1+63dYVjGrTXIrdznyFaUYe+u7+
eKm6vkNj1iayI40JZkxwBAuSCEN0fRwF6DSs+jphfMFeHUoSB0niWSiE/OOLRMrg7B3yN6NX
VzRayrBVQeli1LCWujb4iZYnAehQp+ESg61QUpUxvDE0iiLUVuU4lrA1G74bt3zNQJeroeuj
gK9+q2LNiWKapNlKFfdFmQUB0ltAEAwxlt02xFbdTzVvK6LOu3MDhpL7QX87hKgfwhFkbYw4
nv7wfFisux1bbmhGAebJahSEey9uPzgiOZMAmUN90xdR2oQZqoD6Yei52Kz1p2n44onY62UR
ElYysQOEaJQ+Zehmm0GRIgKb864wgiCqQ24cxuhwbN3kcEqwgoYijVC5vW2KGN9inEmajnuY
PydZG0RBgKyxHB4FWHM5HNOOHB6HFBO1M6NpStHjfY2ChaXv4yz0BXVqNATb6DQoEFNEwGOM
+xIDs9FzKKcR1lyhDb3LEolKDnu0Y769RJ1Av7IiFnU9hZQCyMzX/WCk/JtwW/Fc0aH4OO8S
XUp4ku7SaK9vTMSWdzWBW+OwcoLCVVaZQf9YoevpRDhdyINHHrhz2l3OlZnBCSMUjx2K5Bx4
fDTyiczo3OERm9MHZtluX+1GImgI/riYESA6emmG3kfIkqKo0A6V2xO88bFKs4yperJhpZ9m
SpRpp96VoelYjetPFymeWi7bvQuxIodm8KE95x/be2Njc0bKyFt5cUBmKMOm7EzedtvD/IZO
gJTnXD4Qe4nnh/fHPz9f/7jp3p7gQdfr9/eb/fW/T2+vV31rcS6lO25VJTB8SJ9MAj49tW0k
H9FB3tVz22zRdXC1a40JGr0u66L8v6wO+y7K9+1uWMZSV0U6QqsKaZA6rtKLmSRX7nDhiIQi
CHlYssiWdcYytUdcBoAcYJ7HEhcHFusbHNQGSTbjMCYLDYxJudC8aBPVfYCVUj9V1RGi7txi
BbjvEIw6K8eYeEabcTzEQxKytXbAbgIdR5w5kz5Y+V4eHl7OpZ5fEd5JEqC/HNAsn9OUpcZg
XHISAhm24PUb5IUqDtVWVE7Sl1ULL8jjtDPaWMw5XGWvsg+EpuYXkFLVKRDAekGCTFTeo+nt
BH6qCfLOFs3BLE1vh1Myft1GhK79+/vro8g65M0ZsistbQyQvBhYFsVGJwS8p2noyc2t0ATb
vOoasUiIU2+nzHwgLA28t5WAZGi4yw5Ri4V5aWJB3tYFukkOFJxJcRaM2smngM6n4WbXIUrK
IpUwsR1rwN2T7QUK1J72KAIjAlOMwxxGZJQnwBTb0JixDP8I3YFasIYTJYYIlC7FrMoZq99b
hpKU/jaCwzS43ME2WiYwsVeGhN7HZGhGUpNrHBbq+6EA2+fDFsL/5BmI0TA4/xh1D0sD2rHF
OmplODuSkMyWgtsq4Y6OYBza11u4eZj3VYFv9wGaV2kFYBg1VB/6hGCDBUipf+1GMdY1DH0S
bMHGJisFMAlshuVjGMVp6kDFwoBB7SGSUJZgtBlFaFlEnbHJR5YFqZdDAk98M0dgM7cLHMic
moaEJj6+AVLfeBewybzQh2D7SdyVQfMpwawEnF0zN6vuvR3sil3MJwTmoItvhzig1BaCYxEP
MfN+c8d0f16ApLlgMqp3nl8S0CpKkxFDNHEQ2n0TQN/aKgjuPjIuZ4aiyjdjHKwuF1MIkAyW
GZrnx7erSDHydn19fvx2I/DiMvzbvx8en9BofyCx57yFhYAWAzsFuvz9Go1WT5F+GmyAgHRK
4/Ey9IVxYgvYOQTLYCrEYHni8VSRdXPv4ZwMrdI8065PwiAeTUhsRVhKWIrH7oo6BQEaMLWg
M8cyUFFZ2Ob31JMp3szpIkfE6DGhVrAzywWcJT/pSIaGPWhoa4mcoOZxroGxznIVjmtqT2zH
cK6jgHongQpAQ6bhuQ5JSu30YyA1DY2ppXZV0JzVZhH6ZnOubovbQ77P0RxYYEHJgEbL1JJA
zEiYUM4cs40Ygr7bAj1t4jCwRgJgoSNm3F/jy4C3GGw54NDIu4xKx9CuWTiLjgQouGM+2bt3
CwzjlmikjxHH9raRAaG21TNhwDW3NP78DWG2YPYD2DTYLrvSvTu77zJW2fVk56fo9WucPo9l
/ng6sjIc2gnovQq2UOwqeEL31NZDvjczDisC9WihuBF+3+jXxBca2KaTr/TMVEhJ3Hbac3WC
FaDMqhT7bPa+kO/yMqYZQ7+aHBeEK5MHtMoYRxIMlBlPbKFGX72Tj4VO4oWusK0ibGSFR/E3
iBLMtDFIiKkELBwm2pr45IeYxnGMFyCwjGGqYSEy78cu8KqvMxp4SoaTYJKGWGLXhQgsAv0Y
ysIQrFZYKsmIf2OvriYuxtZXjUSuH2jJHJWkCd7TybdYLRyI+FKNdWj2QtCGT97Iz0pnSZR5
SmdJ4pEf4T38VEgFVYr7fRYVui7ZNKg6mP2rFS5k6zNFul0BKjUSR/ABUC6zaWWY+JRRH4pl
eI1FF/Jxw3FdHIW+rnaMxXjUlUmUrKvHpvuQZl6p4i7gTxSHjOxGW88xMapcZ88SqdJ7DUIj
KXK+jnia3O3uP23xZ8Y1ohNXZj5pF0iGnzFbVOhOlEZzbjAZ/lC0jbzBivZAoO/7zeXkS4S/
0Aq39mc00s9dbSlYRthIza62g+lJ0+Wm72sie8+OqkYVNyxN1lWB5iq7uHofh0bwiYbjnwVJ
jnOYIxlBr5lZNOkBLwACY0Iu96slaF4mXkRCrM0XDxnXDusabfJUsXHSvFAcF1KUubMz6WMA
x/6Ehdo9I9caNa8aLwjlZqC1SldhtU4xeep8U220g5LC2dQByKEdql1l5PTZllUucOqFM/OD
4jaleuCSJF9ItZMdDaHeD8b9PUW4KY8nkbxFvpvlHno8fX5+mFyHd/ONRdXovBGb73a7JTY/
5HXLHeiTj6Cs9tXAnQM/xTEv4RoajuzLow81XU314cWTKjoP5zucTpc1Vjxe35DUi6eq3LYX
I/+Q4k4rbjrUxmsmp43rqrmFi0pPz5+frlH9/Pr9h/vWmaz1FNWaaCww0znW4DDq25P5pLdE
wyMOU6YCAyF9vKY6gGbOD3v9OoMoU6a2rzlRwf+nBd9I7Fm9Ljb3F+uXweU5dYjTa5uxwE+M
lU4JKpf9H8/vDy83w0kreYn74EMDL3YhM12g8pHzKO8GSPK3JEsGlEoUIXlkvvIDWJGCqZev
vV/qtu/hmjMeesLJ4RVb5FlL1UGkC/pcdTdf5QyaGo70TQzy5n5HLGW1wBEhE3B4vk3PzLBg
IPk3DFKlHZ9r5TXWk2u8gmXGLnkUDSlc0rdg4EvRV+Q4WrUZ2MFQ70rmxZUjH1MuRp4JCZov
g1slqWAE2YweN6AMyqHDdlYMktNgHHgAlzjLCdwKVEzyiKqfl6AyEawUoab4DU7ub3gRU8ol
cx+/6cXRPv8Q34OAFmovWuHpiUxJ1YT34fXx+eXlAX1xQK4nw5CLK/fio/z75+crV9WPV7j+
+gs8RQ4PfUCmE8hZ8uX5h9V8ydvhlN+X6BmJwpd5GlFiSxIHZywKbHEYtnkShbGxiahh0AvZ
Srb6jkZ64LGS2J7SgLnFFX1MI/ygdyGoKcGvuasm1SdKgrwqCMWyPkii+zIPaUTcFnAzKE3X
WgAEFIvaVstPR9K+6ZwZ1beHj5fNsLsATrvi/PfGV752VPYzob1C9nmexIzpJRvky0rrLYKv
jGnIAkR9CARmJS/4iDk9BnASRPbQKzAYfdgXLHJWegXGvtgMTL+2NQPjxO0GByf49VmJv+uD
kGAOk5LkmiW85UnqygxnfhqiJzw6fkRmD+x28Xnon6anLg4jR+ELcOxO01OXBoHDv+FMWBC5
0CwLqMsmAV/jExCsdPbUjZQQRIy4ZZER80BPk0oQ9gdjLiAinoapu/iNJJYqy7S8UNl/ep3L
xsZwZfgFnsWe2ZH6+SHxMTYNqBmeoCE8F7omioyyzK/b8jvGQmTxHm57RoIAXa4s9mgse/7C
VdJ/5VOjkA7SGZf7rkyigIa5LWESwaiulHxlLmvdb5Lk8cppuCKEYx20WtB4aUxujczi6yXI
w/3yePP+/fXpzS4WjAa4RhSqBwemo3mLfn7f4omv4q9P1+/fbv58evnqljczPaV6qgs1GWJi
XK+UUOucTnUUnpfuqtK+dqEl2/c0RUr5w5entwf+zStfVNw3OZTIdEN1AH+ytpt0W8Vx4jaq
ajijsONDDZ3ZnQZozDBo6iwTAEUY1EBCEgwaOzOsPZEkQvQQwD2buwsBehyjoWO7F+0pTiKn
vQIau+wTcDwIaSJI8AOH5Xszo4EGx45YFnSGND0l+s25GSrPeJwqUt7RlSrSJHVWJigMHwvG
1+qVwjKUqZmV42eCh5TF+I6tWpv6JEFP/9WkHLIm0O+QaWBKkBWNI0J0C3/Gd4GZcHtGDAF6
03HBh6FjnXPwKQix9p0C15YHcOhS98eABl1BnTE6tO0hCFFUEzdt3bv9OJZ50axY/8ff4+jg
SFYf3yV57rQLoBSBRttij8ghx8SbfLcy2n1T5R22zyHR24Ft7xxt1MdFShuqLyq4BpXPyXEY
th0xLdQxW+FOfpfSFLEoynOWruhWQCcM/YwF6eVUNOg6YTRVvnot3t70rQglHJ056xbE/CTO
jOTQRD23M70/bZQ9p6BaWyn3fchnp8545wvNjQZcvnjvqqRiLAljgcxrejzpLfofZVfS3LiR
rP8KYw4T7ZhxGPtyeAcQAEmY2IQCKaovCLmbLSssiR0UHZ6eXz+ZhYW1JCi/Qy/ML2vLylqR
lUkkUy5LdyW/wuz78c/3y+n1+b9HvILiy78cc/SaYoitfOMKumeDo7UZWDPPKxXGwAr/Jt+c
BZ1WsE9a38hsYRCIJqkimEau70kzmQ6T9lACV8EyQ3zfKWGtZcgWISpKm9KqTPaNLCyPtCaU
mUx7poZ3rWnIfo1E9BBbhjVjQSmxuYa6AyfZHIO2FRMre8ghM5fRPdajfjuDxo7DAmNeWrgP
pm0hNc0yA7qMVWxIi5WGWXOlc5Q0NtYLt+gCUhTgfP6wDf24F4ogaJgH+dCu2qTK7KLQmAk9
J88VlunOGJ8LbFkbmjNu5kW2BlYX6nmToge2YTarGaUuzMQEaTszYuT4EkQgBWOhJkdx1nw/
8svV1fn0doEk76PLZW6s936Bo/7j+evi0/vjBQ4uz5fjT4tvAutQDbzhZe3SCEJhvz8QB18G
0gcF1u6N0PjPzF0xR2UTroHsmeatVJ7iVYh/I4GxdaC7h8NBkDBbeQNPCeAL90D9rwUsRnBQ
vZyfH19mRZE0h61aj3Fmj62EfvLB25DNjGRe1TIIHNHG60q0x6UQSD+zv9Nb8cFyTF3GnGzR
Fxq8uNY2afMnRD/n0Nc2NXFf0VDTBXdj0rfSoy5YQaBrlSFeVE+cuv5xndE5QzU5rtDj/YfS
bQZt2j6msuS1Fsn7lJkH0vqKJxrmjcTUGtFDfefYegUt0di054/4+Pqh961HEX2CaKniASU8
qOUwS4qcybWc2Vr90S1yZHpazaGO3G5xUtJ28Wl2JMnqUcNGh57/J3h+eEMDLZ9cna+opU00
qJGkTcswuBNZELnn+IFJtVm0ikZqeWh1xYUxJUULHYaKLW7oecHZEgVeLOXkIznWuH0ka8xI
rTWq7LtGaEGgSidahfSCj2Aam9S4tD1fJvK9v2WoVghIdUw5WBQCTZtbAen+74pauhZ7yrzx
OTFhfcWv31WiDtnhNKItA6is8TD9z86mON4DdXz0ArS0FWmgz0+y/Uzma1WJWgY1KU/ny++L
CI65z18e337Zns7Hx7dFex1Mv8R8qUra/Wx9QQ8tw1DGeNW4pqUvoEg2Z0fDMoZDpr6O5Ouk
tW1jfmAODHNr3QB7kTLS1tCpipj5aDWUeT/aBa5lqX3cUzuQzEyxA8PeyRVlwjLMaQLLWHJ7
BhOThqJXn2G0BfTEaRl4QLgWIa/k//y4XFnPYjSon1+t+dbBkbeukk2KUMzi9PbyY9g+/lLn
udzG/ipaLpwvZNBUmPjnZ2+BK9SHHkvj0W5mvJ1YfDud+02OtuOyw8PDr2o18nK5IR+ITqC2
HwFqTTrNmkBtwUDbfWdWlzmqKkFPVGZ4vEvQdiD5mgXrnP7KPeHk0w+eZbuELa6tDVCYhDzP
ndtLZwfLNdy9oqJ4xLL6dUJbEcg3qghuqmbH7EhLw+KqteibGJ4szdNSDzgcn15fT2/CS8tP
aekalmX+JFpYacYa4wRvhKEyedSWeO80dybiZben08s7xpcBXTy+nL4v3o5/zZ4AeNjzFWFT
p5uU8MzX58fvv+NTUs2WL2kE22n4wT8wdckyo6hMet+O9KSGWe0wxiOkOgmZuM/tQimop7I0
X/HYRRK2LdgQa0+nr5ZXSK4LzxBqVLC2a6u6yqv1Q9ekZJBgTLDiloGTRyO5qB6s9mnT227B
oioX1zPkacTDBKF3uJlwl8iMMSI7OE0n3SprCjX4lixQybgBaeu06LgPkBmJzGF7ReIs3qRT
fCp8nTx85F3ArKdcx0qV7yNOws6OPKcMDCzL+6gBWlKMGYZXimFATiMqlxzF4FY1+21LU+gX
11wyVZEmkWRgI7DK1dyvyXCpHAIJy2Js4qhB3zibpNDGA8fyfULbw/H8eHTVbl1Tr6iRoY5K
HvJ6WCzfv788/ljUj2/HF6WBnLGLMM+0YaDCYsAkgYHtWPfZMGBMFG7tdiUcCNzQU2veMy+r
tNtk+DDI8kPKTlBmbfemYd7viq7MPVlIPQ9KgqpTf1FOpUjzLIm6bWK7rWnbFMcqzQ5Z2W2h
5C4rrGVkyDsxkfEB3aWtHmCTYDlJZnmRbdxuVJZnbbqFf0LJBJ1gyMIgMGOSpSyrHGOQGn74
OY6o9v+aZF3eQrWK1HDVNW/i2mblOslYjS7ztokR+olBfQsSxJ1GCdYub7eQ7cY2He+ezlrg
hPI3CZwvKEM2oceigu1AmHkSGqJVoJAlgEs4V97N9QcyrB3XJ9fyiavEJwN5AEfDTS7eGQsc
1T7CunNFlm5fKBY4TnoUS5VnRXro8jjB/5Y70KmKrnfVZCxt03jTVS36Pwlpk0MhAUvwDyho
a7mB37l2Oz8f9Eng74hVZRZ3+/3BNFaG7ZT0xcKUpIlYvUyb5gFj/VW7eMPiJk1Lqmua6CHJ
YJQ2heebondkkgUtg2hJNFW5rLpmCYqb0OdlTV+Yl5heQnbSlSW1N5H1AYtn/2oc5M8UM3zF
361ZGgSR0cFPx7XSlexCmeaPog/yTrNt1Tn2/X5lrikxo+fHusvvQDcakx1my+zZmGH7ez+5
n/mcQPA7dmvm6cf8WQt9mR061vr+/5P79vCVeINwT/YqGsBG8cGxnGhbk2IaOFzPjbYFxdHW
aKJsWEELI5OcJgYOxy7aNJrnqNf9RbWONrv8YVgt/e7+7rCO6M7aZwx2j9UBx05ohbQ90ZUd
Jpo6BX061LXhurHl08Zcysov1m/ZZMmaXD0nRNo8XM8zy/Pz16ejtsGLkxLjiNDOMjjDBjq1
hQJwG2jP3C3h7nVYrYBU8jjNM7qC+wJgStSdbpGuI4zNg96Yk/qAz4DXabcMXGNvd6t7uRPL
+1w8l4gI7CXrtrQdT+vZJkrSrmaBp5yzZZC0auJb6AxVPAukSCw9kIWGbCQ1khV/+xKK2yCy
P9tNVsL+ahN7NgjLhP2Lgldsky2jwW7Yu436cl0VNFBQWE5WtaMOCiCz0nNB1oGnIW2dmBYz
ZDfhiPUv4mA6iMqDZ5PxTFQ2P5A+D4hoUssAj42e7H3X1OZRAcID1dxpa9rF60R+DnvVB6Q+
msTEaVtG+0yZ9gai4ORWFlIT12vaTRcfFAe2okx8MTYy4ptDYLu+dOU8QrhNtSz6dkfksclw
DyKHI3pLGIEigwnYvpMeZY5Yk9ZRnVITwMgBK4Qr6pJA921XOcvmODM8yLT00D/8xDewKWsZ
NSPC5i0tW36+7+52WbNVuDDiaROVSTXF9F6dH1+Pi9/+/PYNQ3mrJ8vVEo7bCUbwueYDNP7I
9UEkCf8fTvz8/C+liuHPKsvzBuZKDYir+gFSRRoAx7N1uoRziISwB0bnhQCZFwJ0XiDRNFuX
XVomWSSFDwVwWbWbASH1ClngH53jikN5Lcx7U/ZKK6Q3dit8T7iCfW6adKJbaSwmird5tt7I
lcfAccN1CFOqjkdkbGyLoZzVyz+p339/PH/96/F8pCz6IKOKincH9P06kh1JIC+s9vjQkD4C
YJvNhHu8mMXRzx1dHoYcWR9axxUv/LEevRMipflFinuzqqDunlb9RwIpesCVhuGDUxJQ7NQB
qUHT0XNyJ09aUos0OzkBY/gZzRevNskRyXtk+fjlj5fnp98vi38u4CQ3vmO+3nJOpeI5jz/W
xXfLGemmfVIniVFs3ZWjd3h2M5PeKwWRVndFpLHw5/X3OQ8OR+Qw677/yjK6y32l0gMYBKQV
ncLjz2QwuvW8mQOagtqGMOcoUEgideDKvhyu2Oik4mapcpxqIeM9iMPPa7pBy8QzZ1yBCiJp
4kNcUnPalWfwTnYdjUINhu4ctPoD3R3Tw5SCMRaEqz1uI6vMcgOkXknCtqkiTxfaB4ExB1bt
SknrWEndmKHflGoTZ9pUPqVDjsHfAGWXVkjTRn3fsPSuS4FMMA/ocGn4KuTRLfMq3goGbSNp
fJkeiMjwnUF4+9s//92c3i+L+PqBh/DoicmJN+oCyhIQxzwqeyIUkB0kzLymyg25GfEd5CeT
NuxOJhSt2Pa0wDgcW9F8r6dMXg6E4Ovs8vzlD+rd8ZBkV7JolWKs15048xesbqpB6tdy2ETR
SpiX7ZC4TO9xZAhKjL8GxwoErXe+cC1cQIpdDnWvcjHyGIfhgAUDsEyBZ3OPH6vKNR+LveF+
mlCrPE9IzXMyRxS1pkX6J+rh0jYsN5RuDnqA2Z7jUv7YehgjGElPAvuGxIVnzxgXXxlcyglR
LyfuI1itS9wYBhogUMdUzpDmJkyesj0WB/gySBItre6zS+aIeuJ734kYyofqiW6QCyCHVV9Z
nDi4zVMyQh+4s81G1LXU1sG6yr2TFVLgwgkTwxNdiWptkOjpWQeuoSfHpVoRDI8+7x609gz0
OafIE49n60IdnYnCYrOjvphOTK5am8Gz+6tCjE3LYYb8ULavwT31sY1DpH/OXrMTK5gJN9XL
qbVd0iayH0/TdkhSFNWVHKe2cYRunrRqt3nshiZpC9HnRoScF4D5yo2uxPVh5P5HEbXoGFyk
b9vE8uSYkJyeMdtc5bZJBq8XOSx+6aJMiNwe5reX57c/Ppk/LWBFXzTr5WIInfMnRmFfsO/H
L2jBs8mmWXTxCX7wC6x18dN1ou97EU7O20KpvOq7um9pfgBl0BqErlPnmoJPfZYPbarpTu+1
ehiz8yo0ehKb52DrwjYd3ZYIRdKen5+epKWtzxTWnrW0SRPJPGCJulyNWAUr1qZqdUUc8KKl
bb0lpk0aNe0yjahdmMRInKYlPK53umAHLIrbbJ+1VGB2iU8NQCKBYwwXuYu4fJ+/X9Dq8H1x
6YV81b/yePn2/HJBm4DT27fnp8Un7IvL4/npeFGVb5J5E5UMr4XUgT+2lDv5mhFDjVGTZrG2
TRtVkychoRsWsTOjOE4x+At+U6ZEl8Ic2sFkiJ6WWNzshDslDmmuvpAqipdz9TdnesAqkUdx
g8VpsFcILeEpddPGeFt25UIChmn0AjPQkXEDN1UGiZu4raAipNYiDlgLxwqimogqtURSuYcd
67iTA8LiebydFcYhMmZlu+plIGfA6ZIrM5Ha7bKUGwipDUFHcnic0DQV7VWwHtrOekylR8QY
kWi5dD+nzKaQtPocyl3R0w8BlVPC+BXKq17nHuliUP5dQ+mcyOg7dNa+M4RhorL31O9ZCsvm
oQhc2snywIHBo0LJ3eQVUPzVSoBPAkqYkBEZA1Vo9WuYG9s+6XJy4MhYblpilAsZECN+KwhR
jwPQXUqUPJLxjBm3xDPjsVpksT17toiPU8vPVibROmZLe6oeGHSH4CNwZ1tbnTxFj9C7JEbP
qpR9ysjB4GgRildNI7CC9domVKmBgSM/4RQQN5hxqSokJs1+R4a0gFOfTzZlbxtkLNgrQxCI
UW2nFrqF3gqWwGAOxn0b3jHcnHqwy0Iib053ZsazbdwaC5zBpacJh9QbjpDOaAWGkB79XmhS
Qzn0xVPTtZcc6Eiq6+U3W9LAdwh97ecja2YEWXMP2qbkce2Hc9rCP1OWyRDCYepGdIGkrySE
LOGce6t7+voREyPXwzC25pApHCsvtn55vMBR4PW2esVFRQ5f6FCLfOImMLjyyxARcW9NULjg
BBgpt8jyhxl1A4abHcRZbs0uwOBbATlLI+R8nL8fBLfmC54L0RcJsxzRbdpEV0KpiXSPmjza
rem3EaXbTtAqXt4FxL7dMGSZ840+srDCs5xbKrq8cwKD0sPajQ1SKVBBby08UwQVLeW8Y+OB
4fNDeVfU44R6evsZDj23lX6IYUuVNvjivFHcqoX/GSY12alx5iZA9+k+Csy3yc+EU3WGuz/e
NDyus96LCdm8BKMM4ucv8XP5RFN34gKyl+6aAdA/oaOv1LRcS5/QkTZFTtlEZZnmcsl9IOjx
4ISeniNQrjUggqnFfRcdMuQWDmgrlsN5phD2Bhm3ZMqAJprNDC5Iew3okjqRg3DyL3IbTNQV
64J2A3DloW057nnViC5iq67uWzJJLX55Pr5dpFk/Yg9l3LWHTingKiT+geNVl3PXRFki9Mly
t9I9DfPcV1kuXZ+we06nvgD1+YjMPaUrqn06GETQcujZxpcf5OuMnmWTRrWsBhOVHxXTQvyg
pjRsUpbdYTBLE7+TOY4vO7jMCpRwnGX4qZj6CBU13NqEm5VchVwP5rscvEY1H8hNxQXqyuT+
A0RXwOFfCiI02PBhiOoR+8c/rjXERzb4GXuJUdEpAwSRQfoWJwD86wnZPKlZQ4orYSd+VYUf
oLD97Jc1dzKQoLveARDkixAfi/ky7ta16ppIzLnZMUopcH7oCGfJ+J5CbO3wwqJIS9qmap/U
M05jeZBdNd3g5e/L+fR++nZZbH58P55/3i+e/jy+XyRLg8kL323WseLrJn1Y7oTnEayNYLCK
kZnxBUum/lYn34na357xoZV9Trvt8v8swwlusMHGVuQ0FNYiY7Eu7wFcVqWgHQNRfsg1EMex
oTJnLJrNvY5z3zRJsuVoOXGyR3KLH6eu5ED0FSOSPZosvVKfgML2SQ9yA0NU1DnIL6ssw8DG
avXrGerYsj2Oq0VPuGeT6UHLA9lSXwSoPdeoA1Fs6AJIItgHFyZFNwKygjwFIRqg02FihXSB
eMFzpXuOfNAakdYKyM2NgMs2oCJwo5M47s6USMaOFHDroIukKGwr0gfBKnfFwI5jD6Oj+qwy
rS7Qex+wLGuqjlDKDNUvs4xtrEGxd8AgE5UGFHXsWQ7R0ii5My3aVGvgKIGpxRjq5N5ZZqq0
RnKgyOYB00uIagGaR8s6Rs27VTkYhxG1Xl/hJCJED/SCkBKQd0RVuWXBnU0oGHMt6mg7oIHl
OlpmQHRJYkcM8m3/r3S9TkwwtyYXekRrVBB4S/dSU+3afmHqr7izavF+eXx6fnsSDg79Y8wv
X44vx/Pp9Sg744tgB2Z6lnixNZAc6bWnkr7P8+3x5fTEX0YPngO+nN6gULUEPxAvh+A3TBni
9vBmPmJJI/zb889fn8/HPp4kXWbr2+LwHAhybPaR2Md/V6vzUWGD497vj1+A7Q1jtHwoB8kd
OPz2HU+Uw8eZDY9HsDaTtwb24+3y+/H9WSoqDMSgRvy3I5vMz+TBSyiPl79O5z+4JH7893j+
9yJ7/X78yisWk01zQ1tyIf03cxhU8wKqCimP56cfC65gqMBZLB2xktQPXEeebybdnMug//h0
fD+94DfzDzvIYuYYQnL0z/9B2ukxNDHylN1j77NtHKrR29fz6fmrfIrczD1Uz9SP45Oq9rmo
RS2rqJGm7jXrVvU6whMMvbsvMzi2sZoM9Iv22Sthm9j/7qJ1YVqes4UlVMOWiefZju8oFtcI
4aMIx1jOmqhPPD61eAgMrp1o5V5fXMh0fChhihdwAt22jBm6S9NlJ8kSMmMNPjI4orsoie5p
9DpOQOEpCTZREJAOpAeceYlhRXpJ+OLTtEwiR5bWsFzSd4ojy8Y0STcDI84S0wpCKnNuN36r
vpxBlwCn20Q7kO6S7egfqNwoanr7qCbFNy70/cLIkKNnfqo/drHpkR6mr7j0HWQk1wmk88Vr
5AG559YKVSs6BsUDMCz8dVWmZctUAL+TyyRui6zQkqywFFK/9skHX37R0VSF2NQRopxkaEzc
WIWQx4RXayrvvKpqtHW5kbKJ7qmU+2zZRPSjxqlN/Clfgh5B9AbLkXtH6rgvUMi0kdyIsoTK
Stp31JnDV8veAczj+x/Hi+Ao42oJLiNj6kOW42UqdsVKKGmVpXmCRfUmE1OtNwXaumIlQAYz
4TTXVZ6sMvL2aYNW83EuWDPDD+5epaq2O+GJ8MiIr0xgGUml7WpRlUomE434KIDUDUu2c4eL
MeVoQ0Dv8gUumF/Vk+SIavFDdRaWuTCxk3VHyDVnsgZw7oArsDjyrYmA+AZZZpzEqW+op3sR
DclP4P9j7VmaE0eavO+vIPr0bcT0Nnog4DAHIQlQW6+WBKZ9IWibaROfMV5jxzeeX7+VVZLI
rErRMxF76MbKzHq/srLygYmkO6dtUPBFq9il5EolwPVt4g1Z81uUtlEVOLJ14xcOIlgHo56k
TTTy68mb6IApFToub8Xiy0AL3pAdBk+n+38PqtP76/3efGmRCoDkdUNBijKfRWQ9VGXQFtvu
rXFQ5mAvLRZ77bkkMCBbapfQj5NZTpZDFyQtXXKeadonF0h11LJp5X6IkUzTFWf90XDKx9Pb
HqJbMc9qUZrXkWg7fVHroPIMYplUJldV2svx/JMpqEgrrEsGn+oBZwEqqv0YAOhYJINua0NK
7RhnMK65jWVca/XWf3p/frgVtyT0SqYQeTD4V/VxftsfB/nzIHg8vPz34Ay6tn8c7pERheLy
j+ImKcDViWoLtOw7g1bpRIb7h95kJlbZ3L2edg/3p2NfOhavLnyb4sv8db8/3++e9oNvp9f4
m5FJ01PfVnEQNK9X7HD/Ki+lNvo/6aavmgZOIr+9755E3Xsbx+IvwxuIxdvevTaHp8Pzn30N
bCMeBiu2eVziLhbC35obHRsAjtHW8zL61j0Aqs/B4iQIn0/k2VehxFG9bp0T5FkYpT61CcNk
RVTCtuHzL92EMr8FP1XrqC8r0O0Wl8NfZ+RXVbyO9PYwZluXxm+jteBoOf3XTR1cNF2iP9/E
xbtZjaaxkiIWd/hg+9UPiBfuBtVjedFgBZdguaMxUsi5IBwHiwUvcHGVcNGV8oKgNgMNvNOi
08B1RsPENfCynkzHjm9kU6WjEdbKaMBg1Ee5WAiJWqKX1RifT+IDHprmWMP9AtsGMxZMH+sJ
XFcbQFgw7MozsFbTCrsBDnarnqoRuNHKFkc5V0P1J1YWRmkMUllqBUuhI7HRaQgBnW8Zu2Od
oknLTB9aYTmVOxGPLnJFwiwldOXujC0O2eD64SZxXCSMaAD08tYCNRGnAI5tLa+x3ai1aUDN
ZHyW+lZPCAaBsllVH4FwsdBbfdMY0A2MVGGWBmIVSMX7hIfqeSAMySn0W/FyB3CsHkdKqV+G
vO9EiaE+YgHExlSUk6Ru6uLA3ewyAAQHOoXX8GAmo+FvNlU4xa2RgB6rVYXTrq03m+AruORj
Y3UEju0Q81Z/7OIobQ2AzrQWSGYaAD2P5jVxsS6cAExHI0uL7dxAdQCNeiJjrfDiKYHz7BGP
qwLf4WO0VPWNuHUiYQgAZv7o/+3NQxzSi9QXW0tS+3g5jodTqyS3HHgXsF22/oCa8kr78IrC
hsoBxNQiRdpTW/uekG93TF5Kxh69XSrINp6L81+6YkqSKOFLvtCpJYnzGPdVV1zht7TCmgIQ
QKb8CpYobmbDq9NkjLe48dR2tCpNXU65FBDTDU46dT2SVSy12QSvgYCbwh5uJAzXXEAnE4Dy
sgzwmj+0dHyLBbVAWkroT2HXWxSqnJYFyNZRkhcQq72Wvr0uqGUsWBQi+1huxj27YVIHtsuG
oJKYCdoWJGDq6QAcmErwU6Bpj1exAFkWHzJJopD9CABsl0hWAOSwNhEg4fGwUkoaFI6NzW8A
4GLzDwBMaeCjbHtnqbFC0ML27CmFZf5qPMFaGoqx0wdF3kvXwI82BskfBFMVabyNyeBe4Ose
uABjjf4MjC+0Gleh5IHTPGysddEOl4opQnKuZZZD8JZ61GH4/bCFudUQG1ErsGVbDrHXacDD
SWX1mAW3CScV726lwXtW5dmekbXI1uIEXAo5nmJmWsEmDpayNTBvQpSHmqylYXRP5qm4CGxo
d4OHtSRwR3SqrueeNexd9c0Fc2Pg/+lzuPRTPoiIE3LgJ8pIHHzSH4eeJ0rRyCdensTd1GBP
J05PFO5lGrj6O1EnzOjyUpk97o+He3hcltrM+HSsE7FeiuW2irIKu4RQiOgubzEXXy1p5E2G
+jdlSxqY4krQHltN2MeZ2P8mOZHLOk6r8RBHAa6C0Bm27ApiKgAKNiA8ywFYcV2Ofe6MhHbF
Jbg8qxYFVoGrioqE9LybTEkIeqM3lbL44aFVFocXaOUlH0tFeAI8WdKq6ez2vUNJuaqiTYcy
xTxrVXTp1AbHKYZSyuWKyEHNMjSmGNfrowdHWH8N14wcjW0BUczlWuD5ttHQczEvMnJwJE34
nhAdjpFLA70AxOUZHYEgl7rRaGqDcXcVGVAN4GiAIa2iZ7ulfqEbEdtK9W3STD39zieg4xG3
u0rERCf1+CvsaOyRh1KAjIfc/Rkw2O+xYL4c6ktY7EaTPke4RQ5Ou1gfkpXrUqU6waJYHuta
C5gXj8YOTj3bcfjDS3AbI1b/EBATm7Ih7hgrEQBgSt2b1krpc2KDP46+w1JQjEYsZ6aQYwdz
Pw3MI7GJ5YnUGqF3SkBX1kSnUPbwfjy2QSvw1mLgGl99+/993z/ff3Q6RX+B44kwrJrwMejh
ZQEaO7u30+uX8ADhZn68g44VPYmmhqUteUXpyULZxj3uzvvPiSDbPwyS0+ll8C9RBQic01bx
jKqIN4G564zIqheAsYW77p/mfXGYd7V7yFb18+P1dL4/vewH5+4E1URIwx7xjMJarCfwFke2
Bylz8oZ0eW/KymUVS2fpgoRjUt+6gEbCyJYz3/iVDTGw0Kl9gdHTHMGpnKFYOUM8Og2Apm5O
gsX3Mm8kKvohIVEXgQyLvshj8BNavRCXiyE7KfuHTh3X+93T2yNiiFro69ug3L3tB+np+fBG
eaV55LqYKVEAsruCiHrYe7ECFInYzJaHkLiKqoLvx8PD4e2DnYep7bDceLis8f1qCTcCfCVb
1pWNN0v1TedQA9NkCct6xcZpqmLBvhHRCkBsfqSMNqn9Tuwmb+A057jfnd9f98e9YJffRR8Z
GrNEyNmAPBM0HtElJYGscf4sjS2PcLhxu6Z0GFkP801eTcbEy2gD0ddTAyWpb9KNhwYhztbb
OEhdsRUMeajGjGEMyRgwYmV6cmXiZwmCIEsWIWhWakUmVeqF1cZYqQ2c5RJbXDuD2qOrf5hx
BjBc1H0Khl5eJ5SjIekw8mzcdcKv4bZyLCLgWoFsBE8WCP9LRV6JYD+GnDGhX4TV1KHWJRI2
9XpE9Utr3BPRHFA9J0iQOrbV420BcD3MkUA5PVb3AbiGYxVTBMIboQ5aFLZfDLGIRUFEhwyH
c3Rnau8HVWJPh1h8RDE2wkiIZZNl+bXyLdtiTaGLcjjCu1SbsXKZh+Vf5YjaRCdrMaRuwCtc
iW3Z7YserlDIp0yW+9KVAxrwvKidIft8VIimSIeAuNKxZeHKwjd+TqrqG8fBjhfEylmt48pG
wqYORNfZBUwO+jqoHNfCMhcA4HeotiNrMR4jD51vEoA9vwFgjJMKgDvCaqGramRNbKT0uw6y
xNWC9yiYw03AdZQm3hDfxhVkTDNIPIvdue/EaIg+t/B1ne4GylBx9/N5/6YeE5h94mYyxV59
5PcIfw+nU8zlNw9gqb/IWCD7XCYR2nEqYGJ7YqdiGjgjG8cUarZVmQ3PN7VFX0NjtkqbDss0
GJFHdQ1BjwwdSY6NFlmmjhaJnGJ0UQ5P1EqVWlNSbjD/qwsf/vK0/5PcKaSkZbXBhxAhbLiP
+6fDszFD0LHF4CVB6+Fu8HmgIpc/nZ73tHSwrS/LVVF3D+HYxBpGB1xwcS/dXfl8Kc3p9yy4
SukdZff88/1J/P1yOh+kzQzTkr9DTu5CL6c3cUYfGPOlkU1Co4P9ItpN4E7u4hDBEoCdzygA
cQkE13RxnLDvpYVr4a0HALAXaamtIbug6iKRzDgxxGEbyDZedDpmRJO0mFrtLteTnUqirsOv
+zMwO8zeMyuG3jBd4O2isKm4Fb51ZlTCyJoLk6XYN9FOHBaVQzmbZcHGKYqDAjqN3OsSyxrp
3/rrdgPt8eJcJI5loV00rUYeefWR39rrtoLRS6eAOeh1q9nNijKqzD1OQll2VGG0/bceuWyP
LAt76BHZ3F3hC77LY9emMboXpvQZjJLMQa+cafMyiM8sQtzMm9OfhyNclWC5PhzOykDNyFBy
ViMaNwtCBpbgiTzarnukaTOLd5RUEIP7cg7WcljvqSrnWAxabaaUhdlMR9quLxJwaxoYA/Bb
g07/ZOQkw41uF/iLjvjHtmZTTdwC1mc9coVfZKvOgP3xBWRhdImT193ppOf5NE5VBJw8yFck
/GOabKZDzyKCVAVjB61OBd+Ow9HAN9lba3HMsIyrRNgkVg4IL6zJiJ/wXHO7uXOLFIHFR+de
8qJ+eJuaXuMRDvxhzGstF+mTGvEmAJM+m/HTuCwOnlrbi2FcfpNRUc0IvwIDKuL4HridYxem
4Lyn9Letv46WDdAzROd44Qc3vWYeYveJwIgoq8s8Seghr5b68vugev9xlhqsl3o2npSk6cwH
A2xifRH0LIA4r5kPiok2NbqBFI0Hpm2dl6VSmWOQNEeMqfxkndMcYcTidDNJv0GRZKxlDTdR
cqknN+qCqtj4W3uSpdtlhYeBoKA9tOQ8iJIcXp3KMKqIkJh0J6oQqNsGfsEyGDPMXMzEnENH
Uyn1RzX70XbuZGGZx0QZuAFtZ3Em5pGYHH3vzdSINIln2TqMU2L/NUtupNvVos9ENQMnNpzp
VibDu8RoLc1qYpOQz41c26SyGtub6Dv2NeQjO4fWyyz+NFd7AwYViir0+fo34UG2EVgzpMbS
WN4O3l539/J0NGPYiAXP8TTSnVW9JNLjBrZd1Eu2Hh1BWnHWHh26qGM2XyYWRivyNJtwSQ/W
wUxxcxpYXHzKsBAwE7I8ZAMFCZLUr+rWp/SRpm5QyxUXNw0R+FURRTgml0BVQZ5qkFmkWcEJ
YB5gbg78Q4gjbXOR1KGLF6f/L65p4jBejKc21yENtrJc7KgBoJr2tYA0fiy4G59hoVCk27wo
iJ5BnHP2TlUSp+Cc6AMDlI5QUJeJPifKQAV8ZC2nVkBAxrcWWa38MGTj8l2MmmqxM4kNrF4R
Tc68sTVq7yJUVV89Dx6exHEtN0TS6WsfWEXBJooraOGXvCt5gYvz1Ce9FG1qe8u7z97Uzpbu
Aw1IbMAVRDQMOA2NlqaKglUZ1+gAEhjXzNAF4wgZ6Q6qwi7pJuGvinWvFKt5lvo6C8krMnz3
8jMi13QW+MGSqLGUUSx6WeDmPLPw1UA1iI1EXOoC399WeU2c8m36mksoSt4ZAaDyDCL5Kefq
vUS3fsm7EQBkX3cs5pVNGjCry7ZJl+Ougf2iER2Z6FzBeMGCW5S8y/iOtFxlgn/JBFUXG1HL
r6/mCutXYtxqtrJlNIeI85p7v/YQjJOm5Zfd0lYNpwCIM0I6qCHbbvy6ptuFfaWTNBpzYkuM
6jja+RIh7Sp4iyOVpXSWFmdfxeYWY/XKtkAwlof7NotM7nIO6HKtu6t6ojmgzEo2aN5dnkXG
1IIB9rmdHXckXv5gqqlvOwrWRNTKC26dgn/DLeDJRRoMxkAv9HsPXmQqOOzye6F1KgaLe8pC
bxJMO3bez6suAudFb8f0QdkdWRIjDc5Q6b6Zh9xymBwkPKjJQeiv6nxeufx+ppB0wsstHa2L
QACQfEC5McQEuWg/hFfmYWJhhjGE/9yKH8L6MiR+cuvLWJtJkt+y8w6lAs6ej4qCiDaiV2Uz
mdYjsjQSHZcX31s+KdjdP5IAq5U6RI4awHB7CECYXbgDO1hHjdweyXJUmeFnwX1/CdehZBUu
nEI7P6p86nlDMlpf8ySOyIZ4J8jYsV6F83Y1toXzBSr5a159mfv1l2gD/2c1X6W5tlumlUhH
IOuG5IiTtO4eIdZ2AQ5FXWfM4eMcPH6Ki/vvnw7n02Qymn62PnGEq3o+wduGXi8FYbJ9f/tj
gpyZZjXDFLQs3bUeUSKE8/794TT4g/TU5eYLhuLsyCgT8mWchGWE9p2bqMxwI7Q4IXVaGJ/c
JqoQxvmlwDHcZDzOU4O4Nc7F7bWM/Jr4s4Cfy77e3vbNll8Y50o58FWucVGN8xIczmqnsB+2
ACQdbE54fkfw5/2MXCS3bb7Xl1rJ4rtIVgYzFPXxgjNt49Rb8nWusxwtpNkGhpjhbDC34iSJ
lHIFU6Qiq1Zp6mPr1i51O8g6nJkVHQ7xJlp1EBMBj+4xr+asaO+IqoiClbUKz9tlu5rFfZ0Z
lH6KO1N9qzNec+pSiUtatewZ8PWmfzKkcSZ6oQeZp/0Jl0Vftb9lG1cbdgHyDL6nAfYxt2VT
OpL5Swg4BAJT4O96RFGFFuOiwYuqpmr98hs2vgQumO2IGgSCi7uGdK8il0E/euJe5hGRSyo0
sJcdntsZFdmVHPSmtZs8O5BMa/8evXuV/lqPtPRM1XHf/DpbI8NPT3+5j/efDLKsyqm39AYD
PkGutXJuXDl0itLnJH3tUAp+3xj+WXLDweAfrOpPeu0BdwO+S8AD9O+ey6BTfyP4Rb8SHLrN
oJv26xmIw2dNFthKW7bqW+2/lEqPQlbmWtIW0kdpnr0d5qpUpCXidugOeRdzovQMxykQH5dJ
Y/JRgG4Zsa1gxGjCDjPGb8AUMyb6WQQ3YXWoNRL7SnJOZ0kj6avxhOp0azjuHU4jsXsaPMHO
FDWM298W79dt8bzetkx72zJ1OJsbSoLtArXEfa2cYosdWhmsrAUYceWASYX9RZMElj3qHwqB
7BsLGflA79C2sL5ELd7WS2wRvIompuAt0jFF31C2eI/voDEPntJ+61ro9DWB9a1GCIwleZPH
k23Z2zCJ5h5dAJn6AbAcfqZnCogggvjWvRkrkqyOVmV+najM/Tr2eaFmR/S9jJMk5iT0LcnC
jxIa+qbDlFHEvtI1+Fg0xc9CrpFxtoq5w5n0jhZrvsXVq/KGdzAIFM3V9cIkZ3GgvS5dLGjw
C4KyVdzfv7+CWoYROKV5OOzyhW9xcH5bReAzE0QS/FEflVUsLmpZDSnKOFvwPPGsyZI7uJSw
TDCuTB224VJcJqLS77tPtKcdROyo5Lt9XcYBeiVvCfBpLh0wijt9GGWiWBCggTBn6yeCPW7i
NneUGtEV1HYuMphpHpVMKtjFqoJO3IZ4npdSpFflqzJAfAWImeNAZpGKwV5GSYFlfiwa4rgu
f//05fzj8Pzl/bx/PZ4e9p8f908v+9fuMG9FHJdexFGHkioVbOPp/t8Pp/88//axO+5+ezrt
Hl4Oz7+dd3/sRcUPD79BrNKfMKd++/Hyxyc1zW72r8/7p8Hj7vVhL7WkLtNNPSvuj6fXj8Hh
+QCmBYe/do0xW3ubC0S3VVIMt137pVhNcW2GpWWp7gSnQ9/1YvBkC6oeWZ5xgmdEIYYPFcPl
ARRQRF8+UuArJhEKA2zkJGjmYmfpiRR8eQHl+6hF93dxZzOsr/W2ppu8VBdBcoEWSzDvxJmv
Hy9vp8H96XU/OL0O1KRB4yOJt/O4MHIAebeP1dsJ2DbhkR+yQJO0ugniYonnvYYwk4j5sWSB
JmlJYtZ0MJawY4+PesV7a+L3Vf6mKBhquL2ZYHFm+AsmjwZOY44Q1DaMK38m7jlGrKq+BNFG
3O9Mckq8mFv2RAUWpohslfBAro6F/O0vRf6EZmev6qU4O4xiaPywBtj5XFOS1/cfT4f7z//e
fwzu5VT/+bp7efwwZnhZ+Ux9Q+5sbssJAiZFFFxPU4ZsQWJPXkf2aESjxiqdpve3R9Bavt+9
7R8G0bNsBqiE/+fw9jjwz+fT/UGiwt3bzmhXEKRGty0YWLAUB79vD4s8+U5DpHYrdRFDYExz
TUbfYuI6vGvr0he74Npo0EzaKMMZdTarO+M6NZhzejEtsjaXSVCb21WE3fc1sKS8NWD5fMbO
3BnrjUhhN0x5gqW5Lf3CmJ/Zsr+PQ8Eo1itzdEDWum6n9HJ3fuzrPgglqBe4JPEF2xrzPb3W
Av61Gvf785tZWBk4tpmzBJvlbdgdepb4N5HNdbjCXNmRRDm1NQzjuTm/2aJ6ez0NXaPP0pCj
G22LwmxwGouZLvUouR4tU4gA0N8MwFNxxAVh61q+BoXDuhtsV+bSt8zlKoBsMwRClMeBaSio
DuyYwJSB1YIDmuULpoX1otQcuVH8baFKVozK4eWRKIt3+1LFZC2g2zq+1nl+tprFV89HvwxY
R+Xt/MxvwTu8MXVaROvhytwZAz+NxFWVe6fvKFRcA+IhC+FGRqkANQcvJK/NDS8nf5lq3Sz9
O5/X6WjH0k8q/9qMa08RZkSqKLqed1QWmsdbgyTlxS8dN3ClR+vbXI6WwUIo+KWz1WQ7HV/A
dITeVdo+le8KRr+C8owOm7g2Q+catZAvAwYU3kDaGpW754fTcZC9H3/sX1sHH1z1/KyKt0HB
MblhOZMu3VZGnSSGPScURu2nBnf0f5VdWXPbyBH+K648JVWJI20pWu+DH0AAJGHiEg6R8gvK
q+UqKq9klY6Nf3766x4APQcY50FV4nRj7um7ZwAj9rs868DwGvuUQe9KEW9f3/jcitoi7Wnt
aih/3P/6/IW0pOdvb6/3jwHeh+TzKPX5MCelCzOZXj/21mTGCcJkX6vHk5dQwqBJuDtdw4QW
BCcLYxv5Gomw8Gycn0I51fwif5xHd0I8BNICB9n6MhZHSh8WirXP0NtyhBF1RD4hfp8iBjMi
enV2sfAm34ws4UsntjLhtNE6PchVvKEq4phY3ekaoiKvNlk8bA6+0uTAXadR1N4URQqTF1vL
ups6DQLrfpUbnLZf2WiHf539MsQpTE9ZDOeoRBXPCPUubj8MdZNdA4o6DMaDxvh5fO93/n42
EzIcmhk+D856m21gJqtTibbj2Ex0x3nPS04/7qT4nZWfl3e/f3t+93J/9yj5Tbf/Pt5+vX+8
mykB3+8IDx8bFD/+5ZY+fvknviC0gXTA90/Hh8kiJmEnQ9f0rTFJNlbQnw9vlV/SQEV5VlPq
fe9hiAfy4uyXSzUlKf2TRM2N253wBErNRLHiXZ61XRh5jOX6gRkcu7zKSvSB1r/s1h+nOzyW
KC+e6b4cavWg8lgyrEhfJ4bSqBAEhC5HzcCxPYqUITnLmvdVRiIjntlVcznmVZE0WcawvzZV
4YRDapQ8LR1oXDWJJvw0xCIdyr5YWe/5ivU5UoeTpMAtB7PHRX2ItxsODm1SS+uI6ehnXWcV
nV/aGEZXedBlWdcP9le25kQ/p2fHbWLIEDrm6ermwwJlUyhhMZYRomYvm9b5cpUtiWJxMCiM
yi+cWkK3wRGb8NXGWBkVXD2RdktSFXoeJpAVQfKgS5PUL0ccEuSK3Dqjn4WzOqVW0ItVqmpW
5RdBbCv8xcIO1WIFvDjFIfzDZxTrKZeS4RB8+skAOclOK3+mPIsuLwJ1RU0ormMGdls6QIHv
8GRiyFxiwKv4k9cD25Y3j3jYfNbJoApw+Ky2CWkXQ1vllaUx6VI4n/SZtGBUq4atYqXW0Q+O
Hen4lm8dpsiZRNdRPkDF1by4reKMCMl1SnPURJYjiZN1dHKeFCFyfZAkHlVuvSxBPxDT7hUM
qxs8MDKXlzwygRMh3HRbBwYAtcXOJN1vUDrAoiRphm64vCAiYDdH85RHHEu0Te0MVf6u9h57
t4oH/YJRu8nFgaLmk59hcl1em7yythh+T9QgRInyz0MX6eupmisIt4qmF7X9QDH9WCdqMEgP
bWDv7HQwZYsc1cplDVgnJGoOli+EClCB3owTNsMw/9jJeIM6zzYhvB7PH9A+X+d9ux0zlZaQ
ihjCqeosnFhJWlfaP0rrae0xOFDLjc1ipmsPHKZve/tGwYtLn57vH1+/Sv7/w/Hlznc5xyb2
ioTbnFh7PrlVfl7EuOoRvn4xT6gInF4NKpCrWFWQfNOmKaNCzYVsPvojoWJVtcLtzDgX+z7Z
Ae7/OP7j9f7BSEsvjHor5c9qpHMaB7cGDTboAWffTNHDvoMkn7mXayIuKSdvfSR95YNeo5po
ChJ4C8vU1aRRwrURMBydmiJTHqHctBvyUCSZOZaSLISA7CLqYkUuXAh3D1loduIK17Kumpgk
+r6MTTZMhuuQFl5q15/s02jHb9HEdfhxqR9eBV4Gto3c3457NTn++nbHLxBnjy+vz2+41U7t
zCKCukUCdaOkWFU4+W5l5T6efT9XccMKb/FyazPUNjBjLVPA/eAsjo8Gnx5jFshOPdGIqRAO
cM1KmBPR8u02iSJ75tcchEG/F/2ADNxZnyer0OwoKP3bZWVP/CLqohb2ni3J4Gc+EVu1kUn/
I9UIY5hbYZjupSCTTlUH50zAK7xcF8x1YTBSD5wmTjUvm7kQhjfnSUDHZXhw1/7QPrTXD3kd
+qEfKTWd1eEUU2XzRuaIOdI1cZW6ZjtSB6Ajt3W21wQaidOJgGO0Ue1Ly2LAZoAqa6tStLjZ
EmBBaE+aBM9wdJGN7EZeBPqMvM4TKNUKOZDBOKK8X41IaqK4GCKRGz1k1obYdk6Uyp3Z/1UO
ds9yg6j955dnZ2cLmK6a54CnKJL1qXFP6Bwt08bB6CND9znQpQdf1evWEmNKDDDFPRXgU6EU
wfH4Sm3XNMxNx2TAmYrrwt91hA1f42K02YTVnGIg3CYpb5vQOi93y+151nR95J27hWJ5QY4D
fAKHSdgYxOtgZtG8n3h+kWe4JoLtV2SBQ1KuhETtIpAn36wr0H3V7OTozcSNZPsxX8IOP5pp
iteXLS7X8bzCwH9XfXt6+fs7XPn99iRcefvl8e5F06WSeCQShSzlxSrGRQe9Ml3DxNLX88M9
8xmt1t0iEO9zs4qm0bidH8Fx+yD1D9ue5o+Yl3W+5RxOIH4Bt+q7j+c/nfkNzWiLfXFQpq5M
67C/wuvn8TapwgZBZkUymnCG4sm1knhREqx+e4M0pZnLHGIWANvnApOwS1NzQ5lYDhHoMTO+
v7483T8i+IN68fD2evx+pH+Or7fv37//m7rAD8nbXOWGlRN5lVftnIaOhUrRnlkIA5poL1WU
NCdLBlRGAK1fJBtQx/suPWhLpTkN5t1kjy6E0fd7gRB/qfYcqOkgNPvWSn6UUu6hox9Lylsd
Qg0UR11VQDrN0/AnmFyo5qP2Zwmo3DydLtxlMriK9rwtp7EF1PFZlfw/dsHYTc44gubOxN1R
axk4l7FOgnDNvoSTmXiXGA09jiwiwbg55Ux8Fensty+vX95BLLuFYdx6YZbnK9OGR0PqQ4Xa
wiElnKOfWUZmkTyGhIRi2KVx/Whmoket87rQN5c8xw0NmgTtKG89It3EfVBYlKMS9+6xoiJn
sHoTWNonYeItXW93KLjzrYLgTg5+jikAA/9khXWiqz+d2+0u56MBml4F8innSwOtGXHnkgit
KKWNp47axgQ+ICRuw2un+l9WtfTOCiy/VnrxaeiG1JptGCe5KSMc6LWz/aUCOTAF315Eswt3
h4NCamrMkwpMkrRLT9CNzYdSi9oC3B3Or3PallZjJwUVlMV9pJbfgGV8y9cDDRGz2O4zmBfc
gauqjGbb7rUBq27StKDTQ/p3cFhee6OTyG3IIPrcxp1tMG1sS79qf4WnvRVc3tDeWlji6Xs6
pHCZWpWLoO7XOYeiN1ck7KyXmxWB39t0+zzqQoORRTfbKSTlmv3SliQEbyt/I42ASVq2F3VF
5Jv2ghnraMvQbJ7Lo5JIawRXqXyQBlPxzQV94705lrmDalqlsjODV8WEz5TywpbdNvD5bH+D
a9ZcHb04T+ZkyJU9zlTxdg65UvW5CIDHiqOc7fyYLnUEYjxJbibR22lmcT1n2wjoIiLptUO1
58P9IxgsrI7bJzymcCXqtCcprmexfUZthAfgtbDABXqaWxfbANnhvbPuxdVg9uKEPfGCZkSL
0NkyCLzX/OZ3Tdotgew7/MbSZOWVNUjgJiqcwUDlj0F+BW8pMBjXa1zEjnNSJHCuqyaYMexi
aJlwVxji4+vRfJdkZuyP+opCSdIyGMopU3kQ8SV8+8/x+enWUULGDVDHU3rDPm2aKkTNgCRA
vXNwkIRSkqhMQrjKICf8tMC7oGL1sAVhZNwhUyjeak9JoNlPfVEPebRK82GdRiz2sOFEX8mz
gKIu/5lPG53aQ1+farFos0E8OoHzilHhoEDNxe2RgUYORbVoG9o4QT2Yo6jJb0KClcKpu4TG
GJS7/IXVHqXu+PIK5QBKafztz+Pzl7ujXvldXy4EJIzy9cBLPl99FiLoIxt1UK2Zty9QO2X2
2hEh9UwudFBAXw1ZUcqbjY1fo72V3YANLJ92SiRQ4LppelieXSeBhUULHTVpJCbGs+945WOy
RDTEvVhgEX1YAkBnnXKXdIW6mpoNCeBbLcQg/cgsIEVWwqsUulhAqLp8ZDHYVt/rp7j8qMjx
5nXVgBVc6m6h9tjbIMsT73KNtIGMYfMKUY4vL7TvUw9kmx6wk51S4y8VD7UWMw2wjXXWqMTA
UXFXHZyKpgArXWi8s+6cUzHt7zxZmvO+zxKn+oOEHdiFIVsjAxpE3LCFdNm2BJSlDmRJ5G6g
XREaRvhGPoZeF2LrcL9CENeAXNrQcc5wu3KmBSS7G+usKfaRvoxV6mThwVtaTqzlID8b4hqD
nRORFjGJyWFf1FgzjC3BJPGxCjYm6zve02LRnHKSYno5o+Ko/y9g3dLENpkBAA==

--2fHTh5uZTiUOsy+g--
