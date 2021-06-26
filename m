Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBJOW3SDAMGQEGIZWZAQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3e.google.com (mail-io1-xd3e.google.com [IPv6:2607:f8b0:4864:20::d3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 58CB33B4EB7
	for <lists+clang-built-linux@lfdr.de>; Sat, 26 Jun 2021 15:27:03 +0200 (CEST)
Received: by mail-io1-xd3e.google.com with SMTP id a6-20020a0566021486b02904db010ce8e8sf9264425iow.11
        for <lists+clang-built-linux@lfdr.de>; Sat, 26 Jun 2021 06:27:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624714022; cv=pass;
        d=google.com; s=arc-20160816;
        b=biBqbpG1TIb42W4EiiltwJuly/txI9Da11hMFFQRMJV1DFQxZnL0hLoLse2XGigyXO
         zbEZQR8t2NPl+Qhv2ZdiVlMEvCVMdGWIBRJonpoA0/pMggxSNkk/bgCrK9BRhRF16JmE
         d7+HKE0B3Bq6WR1I+UDdagrkSTDXwPGpwV4MBXeWTYjeuHf+AtDr819FaBMSffV7bWmS
         zkQ0Xmi7USdhPoseziIS7Asp35pgKyNcQ9qVJbvMO0QHV0ebIhx/nF28SGOaoWtMnbeV
         qIM+4LGXNjCEQfs98TJtZD//TPpsFjFrnK5P7KrN3gbZM8QZZVloFtOd/PBXjeUVmkEI
         LBLg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr:sender
         :dkim-signature;
        bh=5lXoO8+eN7o3X+/52VxTdPi+kLxYJRUalgB3F2q+Gwo=;
        b=DsP5HMb2F/8hS1ie50B9AId3cxiHySWQrKdC7sIX9vIec9YzGaC0279t4NtMFvcCfE
         KIX4YYa2K5VK33Y83tftJ0Xub/4pNTthu3Rqp8wgvAz6SIzHwjrI0kt+OHg+3oZPMBBJ
         GWutCzKCO1kzcD4mDnQa+3DHWgsE3VF9MLpVlbc5P9SQQwd2EizJOMZwquNxLEMZDd8m
         ySUlTtxJjQNK62GcTnjWNF7/XFNPWxR5UU7fadIEYO4cKairw6xbnqju69pUPjaJB+6C
         xPx6mq2D2SVwKWE7F52ho+se7VAZIH348czfy/+Zf9bVH4Ha6aQMdGgW8NO6tUlSMmK6
         ZORA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5lXoO8+eN7o3X+/52VxTdPi+kLxYJRUalgB3F2q+Gwo=;
        b=AAverugZ17aGexrxBdmLtEEb6w3ZY+syLjmaFuL1Rfz7+Q7z2/VGzOVnlovpgYukT6
         SCHcFf/+p+fcfBsHx5Cxq/CDDRs6qr7TlCD1ubpGtlBBS/4+rN9Lk1jVtOB8gnSo8UFe
         b+ql6ymr3FFoGEbpiZCLEkGaQNXcSIXZjSLgV9kdd1ctHb3/65mOsJsKpBZN/BhuL9N1
         jM8pNPU2+xCbdyadGfTtygXtjo9tKaonIeQZ2mbEJ8VAU9Wi5ZY5gTUmxSoQ9xyw5bpR
         5xSsxakrJs5aiyzDv05bfXonSMcVFSFkkDFsc+t1PZ2R8hYPv2ya5BhVmNWnTNoQYd2M
         paTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:date:from:to:cc:subject
         :message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=5lXoO8+eN7o3X+/52VxTdPi+kLxYJRUalgB3F2q+Gwo=;
        b=svdNu9/nOu2igXfrVr1YgUAB52ThHWHghw7th7bNRujOyo89e/RWZ0va8ubBGnIXlL
         Uz+lACOojVDLnNMlEhBNqnwoHA4G/wi4nKiNWhkJB563DquRIM1db1PLXWpBvvolkjZB
         mE6Yj4svWc0qzEr2n9O6MN6xGqcNlYszDwREfjXLi+GYi83eKpv213h8mjzktIOKYzqC
         1hSIOk851dBzPBVhRhGEMPsVQU0O6KWN/RKJcpcH7ha8FL5FKPiCcNzn7JS9rEOn1lOH
         EcHenbitRH7+kkOZSFQK14lA/s0vKojlQIbHhMVuq0jr2RXVoINQi91qf2YxTWdOJvZe
         mzhA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532s5nt3tn1avAYUvXgalfxghCbWzBDV9AfihL+TVeHjsDT6Mgpw
	7HYY7lgdBt2NH1aEyjv4id0=
X-Google-Smtp-Source: ABdhPJwP/PORb+HUIYTl0Pc15rRvMdSlyQBz4bPMbRQwXXWnGpGjmIv5s3vR2XM540RD+NIFVwbNpA==
X-Received: by 2002:a05:6638:3d3:: with SMTP id r19mr14195507jaq.78.1624714021843;
        Sat, 26 Jun 2021 06:27:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:aa99:: with SMTP id u25ls1949035jai.4.gmail; Sat, 26 Jun
 2021 06:27:01 -0700 (PDT)
X-Received: by 2002:a02:7348:: with SMTP id a8mr13936883jae.116.1624714021292;
        Sat, 26 Jun 2021 06:27:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624714021; cv=none;
        d=google.com; s=arc-20160816;
        b=l5ia74xaweQqDCSd7MJAZuEARfwogcEi4vfmmJjLJttXVrttZe7b8OWiZz0ows6a1u
         Uv8QfnJKxuqzEEDNN9SDk8x7xrAkm6dCAJ4apy7DYA0657l6JdS5jUEKhYBGJJ7lnVLx
         5BtVT1SxkdkpjIHN+TWex9m46KiLrTFxzixVFwJf9ngi67tY5guGsGQ4kjSVNAo4mIy+
         MnQxxDGFpzdjTsf1Oav9qVuqp2jse6sCQOaiJSpAUWcTxhO18S5UloH8HMsa7W3W6JRH
         WdYmtQ1YsuKonbjDZGKhwShEVpIQ0/o0JDaGqi1aaBNRV2rZVCl8pidSnZG9OcMYNyQx
         Wv3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr;
        bh=WXTzjNdI4SG35Q3sGcvfXIvG6FMhrISF3yzG/CINBh8=;
        b=JNwKCVXgqrcmLN6V1NjEReI9VWAga1cvo0Aoq61UvV8rzXgkRDkAmOM+UjNgbEIprZ
         Px/CHMGt1u7lf5/Xy7xxMGAfIlBJsHOrTjdMwj8nkluFCH09WP41WZKY29WYfcVywlVr
         9Lm1gjGV7Afp+2XJvfi8e1vfHUpN59mOC5JdZEFM9lAx9OzHH2NEkvmM6hxw3NBdaVjK
         O9NnhE4gAh751LvdAsAdrlL0jVni4veDSexrOQ2lkUlAAXntUk/apJVB8NvMUu9dPhci
         87r2piR6PKLwvn5W3xRacC0xTvoiNp28fZkUEknfo0Zgp2T8uoXaRJ7+jQUXcS9Yiez/
         ONfA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga11.intel.com (mga11.intel.com. [192.55.52.93])
        by gmr-mx.google.com with ESMTPS id h10si615992ilr.1.2021.06.26.06.27.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 26 Jun 2021 06:27:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) client-ip=192.55.52.93;
IronPort-SDR: BP7NJf7HsBs03x6Ly9q1W5XQ0NMcFmzfmCykNPcJzAkImQLjmoKj9Mi4ReD0Q/dI7/Xo9lBF+C
 ghiaUdjxAHfA==
X-IronPort-AV: E=McAfee;i="6200,9189,10027"; a="204782085"
X-IronPort-AV: E=Sophos;i="5.83,301,1616482800"; 
   d="gz'50?scan'50,208,50";a="204782085"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Jun 2021 06:26:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,301,1616482800"; 
   d="gz'50?scan'50,208,50";a="407229272"
Received: from lkp-server01.sh.intel.com (HELO 4aae0cb4f5b5) ([10.239.97.150])
  by orsmga006.jf.intel.com with ESMTP; 26 Jun 2021 06:26:57 -0700
Received: from kbuild by 4aae0cb4f5b5 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lx8Km-0007lP-N6; Sat, 26 Jun 2021 13:26:56 +0000
Date: Sat, 26 Jun 2021 21:26:41 +0800
From: kernel test robot <lkp@intel.com>
To: Peter Zijlstra <peterz@infradead.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Valentin Schneider <valentin.schneider@arm.com>
Subject: mm/vmscan.c:1071:21: warning: stack frame size (2064) exceeds limit
 (2048) in function 'shrink_page_list'
Message-ID: <202106262126.An2i4ZxC-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="M9NhX3UHpAaciwkO"
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


--M9NhX3UHpAaciwkO
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   b7050b242430f3170e0b57f5f55136e44cb8dc66
commit: b02a4fd8148f655095d9e3d6eddd8f0042bcc27c cpumask: Make cpu_{online,possible,present,active}() inline
date:   2 months ago
config: powerpc-randconfig-r034-20210626 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 557b101ce714e39438ba1d39c4c50b03e12fcb96)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc cross compiling tool for clang build
        # apt-get install binutils-powerpc-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=b02a4fd8148f655095d9e3d6eddd8f0042bcc27c
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout b02a4fd8148f655095d9e3d6eddd8f0042bcc27c
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   In file included from mm/vmscan.c:19:
   In file included from include/linux/kernel_stat.h:9:
   In file included from include/linux/interrupt.h:11:
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
   <scratch space>:186:1: note: expanded from here
   __do_insw
   ^
   arch/powerpc/include/asm/io.h:557:56: note: expanded from macro '__do_insw'
   #define __do_insw(p, b, n)      readsw((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from mm/vmscan.c:19:
   In file included from include/linux/kernel_stat.h:9:
   In file included from include/linux/interrupt.h:11:
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
   <scratch space>:190:1: note: expanded from here
   __do_insl
   ^
   arch/powerpc/include/asm/io.h:558:56: note: expanded from macro '__do_insl'
   #define __do_insl(p, b, n)      readsl((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from mm/vmscan.c:19:
   In file included from include/linux/kernel_stat.h:9:
   In file included from include/linux/interrupt.h:11:
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
   <scratch space>:194:1: note: expanded from here
   __do_outsb
   ^
   arch/powerpc/include/asm/io.h:559:58: note: expanded from macro '__do_outsb'
   #define __do_outsb(p, b, n)     writesb((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from mm/vmscan.c:19:
   In file included from include/linux/kernel_stat.h:9:
   In file included from include/linux/interrupt.h:11:
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
   <scratch space>:198:1: note: expanded from here
   __do_outsw
   ^
   arch/powerpc/include/asm/io.h:560:58: note: expanded from macro '__do_outsw'
   #define __do_outsw(p, b, n)     writesw((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from mm/vmscan.c:19:
   In file included from include/linux/kernel_stat.h:9:
   In file included from include/linux/interrupt.h:11:
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
   <scratch space>:202:1: note: expanded from here
   __do_outsl
   ^
   arch/powerpc/include/asm/io.h:561:58: note: expanded from macro '__do_outsl'
   #define __do_outsl(p, b, n)     writesl((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
>> mm/vmscan.c:1071:21: warning: stack frame size (2064) exceeds limit (2048) in function 'shrink_page_list' [-Wframe-larger-than]
   static unsigned int shrink_page_list(struct list_head *page_list,
                       ^
   14 warnings generated.


vim +/shrink_page_list +1071 mm/vmscan.c

e2be15f6c3eece Mel Gorman              2013-07-03  1067  
^1da177e4c3f41 Linus Torvalds          2005-04-16  1068  /*
1742f19fa920cd Andrew Morton           2006-03-22  1069   * shrink_page_list() returns the number of reclaimed pages
^1da177e4c3f41 Linus Torvalds          2005-04-16  1070   */
730ec8c01a2bd6 Maninder Singh          2020-06-03 @1071  static unsigned int shrink_page_list(struct list_head *page_list,
599d0c954f91d0 Mel Gorman              2016-07-28  1072  				     struct pglist_data *pgdat,
f84f6e2b0868f1 Mel Gorman              2011-10-31  1073  				     struct scan_control *sc,
3c710c1ad11b4a Michal Hocko            2017-02-22  1074  				     struct reclaim_stat *stat,
8940b34a4e082a Minchan Kim             2019-09-25  1075  				     bool ignore_references)
^1da177e4c3f41 Linus Torvalds          2005-04-16  1076  {
^1da177e4c3f41 Linus Torvalds          2005-04-16  1077  	LIST_HEAD(ret_pages);
abe4c3b50c3f25 Mel Gorman              2010-08-09  1078  	LIST_HEAD(free_pages);
730ec8c01a2bd6 Maninder Singh          2020-06-03  1079  	unsigned int nr_reclaimed = 0;
730ec8c01a2bd6 Maninder Singh          2020-06-03  1080  	unsigned int pgactivate = 0;
^1da177e4c3f41 Linus Torvalds          2005-04-16  1081  
060f005f074791 Kirill Tkhai            2019-03-05  1082  	memset(stat, 0, sizeof(*stat));
^1da177e4c3f41 Linus Torvalds          2005-04-16  1083  	cond_resched();
^1da177e4c3f41 Linus Torvalds          2005-04-16  1084  
^1da177e4c3f41 Linus Torvalds          2005-04-16  1085  	while (!list_empty(page_list)) {
^1da177e4c3f41 Linus Torvalds          2005-04-16  1086  		struct address_space *mapping;
^1da177e4c3f41 Linus Torvalds          2005-04-16  1087  		struct page *page;
8940b34a4e082a Minchan Kim             2019-09-25  1088  		enum page_references references = PAGEREF_RECLAIM;
4b793062674707 Kirill Tkhai            2020-04-01  1089  		bool dirty, writeback, may_enter_fs;
98879b3b9edc16 Yang Shi                2019-07-11  1090  		unsigned int nr_pages;
^1da177e4c3f41 Linus Torvalds          2005-04-16  1091  
^1da177e4c3f41 Linus Torvalds          2005-04-16  1092  		cond_resched();
^1da177e4c3f41 Linus Torvalds          2005-04-16  1093  
^1da177e4c3f41 Linus Torvalds          2005-04-16  1094  		page = lru_to_page(page_list);
^1da177e4c3f41 Linus Torvalds          2005-04-16  1095  		list_del(&page->lru);
^1da177e4c3f41 Linus Torvalds          2005-04-16  1096  
529ae9aaa08378 Nick Piggin             2008-08-02  1097  		if (!trylock_page(page))
^1da177e4c3f41 Linus Torvalds          2005-04-16  1098  			goto keep;
^1da177e4c3f41 Linus Torvalds          2005-04-16  1099  
309381feaee564 Sasha Levin             2014-01-23  1100  		VM_BUG_ON_PAGE(PageActive(page), page);
^1da177e4c3f41 Linus Torvalds          2005-04-16  1101  
d8c6546b1aea84 Matthew Wilcox (Oracle  2019-09-23  1102) 		nr_pages = compound_nr(page);
98879b3b9edc16 Yang Shi                2019-07-11  1103  
98879b3b9edc16 Yang Shi                2019-07-11  1104  		/* Account the number of base pages even though THP */
98879b3b9edc16 Yang Shi                2019-07-11  1105  		sc->nr_scanned += nr_pages;
80e4342601abfa Christoph Lameter       2006-02-11  1106  
39b5f29ac1f988 Hugh Dickins            2012-10-08  1107  		if (unlikely(!page_evictable(page)))
ad6b67041a4549 Minchan Kim             2017-05-03  1108  			goto activate_locked;
894bc310419ac9 Lee Schermerhorn        2008-10-18  1109  
a6dc60f8975ad9 Johannes Weiner         2009-03-31  1110  		if (!sc->may_unmap && page_mapped(page))
80e4342601abfa Christoph Lameter       2006-02-11  1111  			goto keep_locked;
80e4342601abfa Christoph Lameter       2006-02-11  1112  
c661b078fd62ab Andy Whitcroft          2007-08-22  1113  		may_enter_fs = (sc->gfp_mask & __GFP_FS) ||
c661b078fd62ab Andy Whitcroft          2007-08-22  1114  			(PageSwapCache(page) && (sc->gfp_mask & __GFP_IO));
c661b078fd62ab Andy Whitcroft          2007-08-22  1115  
e2be15f6c3eece Mel Gorman              2013-07-03  1116  		/*
894befec4d70b1 Andrey Ryabinin         2018-04-10  1117  		 * The number of dirty pages determines if a node is marked
e2be15f6c3eece Mel Gorman              2013-07-03  1118  		 * reclaim_congested which affects wait_iff_congested. kswapd
e2be15f6c3eece Mel Gorman              2013-07-03  1119  		 * will stall and start writing pages if the tail of the LRU
e2be15f6c3eece Mel Gorman              2013-07-03  1120  		 * is all dirty unqueued pages.
e2be15f6c3eece Mel Gorman              2013-07-03  1121  		 */
e2be15f6c3eece Mel Gorman              2013-07-03  1122  		page_check_dirty_writeback(page, &dirty, &writeback);
e2be15f6c3eece Mel Gorman              2013-07-03  1123  		if (dirty || writeback)
060f005f074791 Kirill Tkhai            2019-03-05  1124  			stat->nr_dirty++;
e2be15f6c3eece Mel Gorman              2013-07-03  1125  
e2be15f6c3eece Mel Gorman              2013-07-03  1126  		if (dirty && !writeback)
060f005f074791 Kirill Tkhai            2019-03-05  1127  			stat->nr_unqueued_dirty++;
e2be15f6c3eece Mel Gorman              2013-07-03  1128  
d04e8acd03e5c3 Mel Gorman              2013-07-03  1129  		/*
d04e8acd03e5c3 Mel Gorman              2013-07-03  1130  		 * Treat this page as congested if the underlying BDI is or if
d04e8acd03e5c3 Mel Gorman              2013-07-03  1131  		 * pages are cycling through the LRU so quickly that the
d04e8acd03e5c3 Mel Gorman              2013-07-03  1132  		 * pages marked for immediate reclaim are making it to the
d04e8acd03e5c3 Mel Gorman              2013-07-03  1133  		 * end of the LRU a second time.
d04e8acd03e5c3 Mel Gorman              2013-07-03  1134  		 */
e2be15f6c3eece Mel Gorman              2013-07-03  1135  		mapping = page_mapping(page);
1da58ee2a0279a Jamie Liu               2014-12-10  1136  		if (((dirty || writeback) && mapping &&
703c270887bb51 Tejun Heo               2015-05-22  1137  		     inode_write_congested(mapping->host)) ||
d04e8acd03e5c3 Mel Gorman              2013-07-03  1138  		    (writeback && PageReclaim(page)))
060f005f074791 Kirill Tkhai            2019-03-05  1139  			stat->nr_congested++;
e2be15f6c3eece Mel Gorman              2013-07-03  1140  
e62e384e9da8d9 Michal Hocko            2012-07-31  1141  		/*
283aba9f9e0e48 Mel Gorman              2013-07-03  1142  		 * If a page at the tail of the LRU is under writeback, there
283aba9f9e0e48 Mel Gorman              2013-07-03  1143  		 * are three cases to consider.
283aba9f9e0e48 Mel Gorman              2013-07-03  1144  		 *
283aba9f9e0e48 Mel Gorman              2013-07-03  1145  		 * 1) If reclaim is encountering an excessive number of pages
283aba9f9e0e48 Mel Gorman              2013-07-03  1146  		 *    under writeback and this page is both under writeback and
283aba9f9e0e48 Mel Gorman              2013-07-03  1147  		 *    PageReclaim then it indicates that pages are being queued
283aba9f9e0e48 Mel Gorman              2013-07-03  1148  		 *    for IO but are being recycled through the LRU before the
283aba9f9e0e48 Mel Gorman              2013-07-03  1149  		 *    IO can complete. Waiting on the page itself risks an
283aba9f9e0e48 Mel Gorman              2013-07-03  1150  		 *    indefinite stall if it is impossible to writeback the
283aba9f9e0e48 Mel Gorman              2013-07-03  1151  		 *    page due to IO error or disconnected storage so instead
b1a6f21e3b2315 Mel Gorman              2013-07-03  1152  		 *    note that the LRU is being scanned too quickly and the
b1a6f21e3b2315 Mel Gorman              2013-07-03  1153  		 *    caller can stall after page list has been processed.
283aba9f9e0e48 Mel Gorman              2013-07-03  1154  		 *
97c9341f727105 Tejun Heo               2015-05-22  1155  		 * 2) Global or new memcg reclaim encounters a page that is
ecf5fc6e9654cd Michal Hocko            2015-08-04  1156  		 *    not marked for immediate reclaim, or the caller does not
ecf5fc6e9654cd Michal Hocko            2015-08-04  1157  		 *    have __GFP_FS (or __GFP_IO if it's simply going to swap,
ecf5fc6e9654cd Michal Hocko            2015-08-04  1158  		 *    not to fs). In this case mark the page for immediate
97c9341f727105 Tejun Heo               2015-05-22  1159  		 *    reclaim and continue scanning.
283aba9f9e0e48 Mel Gorman              2013-07-03  1160  		 *
ecf5fc6e9654cd Michal Hocko            2015-08-04  1161  		 *    Require may_enter_fs because we would wait on fs, which
ecf5fc6e9654cd Michal Hocko            2015-08-04  1162  		 *    may not have submitted IO yet. And the loop driver might
283aba9f9e0e48 Mel Gorman              2013-07-03  1163  		 *    enter reclaim, and deadlock if it waits on a page for
283aba9f9e0e48 Mel Gorman              2013-07-03  1164  		 *    which it is needed to do the write (loop masks off
283aba9f9e0e48 Mel Gorman              2013-07-03  1165  		 *    __GFP_IO|__GFP_FS for this reason); but more thought
283aba9f9e0e48 Mel Gorman              2013-07-03  1166  		 *    would probably show more reasons.
283aba9f9e0e48 Mel Gorman              2013-07-03  1167  		 *
7fadc820222497 Hugh Dickins            2015-09-08  1168  		 * 3) Legacy memcg encounters a page that is already marked
283aba9f9e0e48 Mel Gorman              2013-07-03  1169  		 *    PageReclaim. memcg does not have any dirty pages
283aba9f9e0e48 Mel Gorman              2013-07-03  1170  		 *    throttling so we could easily OOM just because too many
283aba9f9e0e48 Mel Gorman              2013-07-03  1171  		 *    pages are in writeback and there is nothing else to
283aba9f9e0e48 Mel Gorman              2013-07-03  1172  		 *    reclaim. Wait for the writeback to complete.
c55e8d035b28b2 Johannes Weiner         2017-02-24  1173  		 *
c55e8d035b28b2 Johannes Weiner         2017-02-24  1174  		 * In cases 1) and 2) we activate the pages to get them out of
c55e8d035b28b2 Johannes Weiner         2017-02-24  1175  		 * the way while we continue scanning for clean pages on the
c55e8d035b28b2 Johannes Weiner         2017-02-24  1176  		 * inactive list and refilling from the active list. The
c55e8d035b28b2 Johannes Weiner         2017-02-24  1177  		 * observation here is that waiting for disk writes is more
c55e8d035b28b2 Johannes Weiner         2017-02-24  1178  		 * expensive than potentially causing reloads down the line.
c55e8d035b28b2 Johannes Weiner         2017-02-24  1179  		 * Since they're marked for immediate reclaim, they won't put
c55e8d035b28b2 Johannes Weiner         2017-02-24  1180  		 * memory pressure on the cache working set any longer than it
c55e8d035b28b2 Johannes Weiner         2017-02-24  1181  		 * takes to write them to disk.
e62e384e9da8d9 Michal Hocko            2012-07-31  1182  		 */
283aba9f9e0e48 Mel Gorman              2013-07-03  1183  		if (PageWriteback(page)) {
283aba9f9e0e48 Mel Gorman              2013-07-03  1184  			/* Case 1 above */
283aba9f9e0e48 Mel Gorman              2013-07-03  1185  			if (current_is_kswapd() &&
283aba9f9e0e48 Mel Gorman              2013-07-03  1186  			    PageReclaim(page) &&
599d0c954f91d0 Mel Gorman              2016-07-28  1187  			    test_bit(PGDAT_WRITEBACK, &pgdat->flags)) {
060f005f074791 Kirill Tkhai            2019-03-05  1188  				stat->nr_immediate++;
c55e8d035b28b2 Johannes Weiner         2017-02-24  1189  				goto activate_locked;
283aba9f9e0e48 Mel Gorman              2013-07-03  1190  
283aba9f9e0e48 Mel Gorman              2013-07-03  1191  			/* Case 2 above */
b5ead35e7e1d34 Johannes Weiner         2019-11-30  1192  			} else if (writeback_throttling_sane(sc) ||
ecf5fc6e9654cd Michal Hocko            2015-08-04  1193  			    !PageReclaim(page) || !may_enter_fs) {
c3b94f44fcb072 Hugh Dickins            2012-07-31  1194  				/*
c3b94f44fcb072 Hugh Dickins            2012-07-31  1195  				 * This is slightly racy - end_page_writeback()
c3b94f44fcb072 Hugh Dickins            2012-07-31  1196  				 * might have just cleared PageReclaim, then
c3b94f44fcb072 Hugh Dickins            2012-07-31  1197  				 * setting PageReclaim here end up interpreted
c3b94f44fcb072 Hugh Dickins            2012-07-31  1198  				 * as PageReadahead - but that does not matter
c3b94f44fcb072 Hugh Dickins            2012-07-31  1199  				 * enough to care.  What we do want is for this
c3b94f44fcb072 Hugh Dickins            2012-07-31  1200  				 * page to have PageReclaim set next time memcg
c3b94f44fcb072 Hugh Dickins            2012-07-31  1201  				 * reclaim reaches the tests above, so it will
c3b94f44fcb072 Hugh Dickins            2012-07-31  1202  				 * then wait_on_page_writeback() to avoid OOM;
c3b94f44fcb072 Hugh Dickins            2012-07-31  1203  				 * and it's also appropriate in global reclaim.
c3b94f44fcb072 Hugh Dickins            2012-07-31  1204  				 */
c3b94f44fcb072 Hugh Dickins            2012-07-31  1205  				SetPageReclaim(page);
060f005f074791 Kirill Tkhai            2019-03-05  1206  				stat->nr_writeback++;
c55e8d035b28b2 Johannes Weiner         2017-02-24  1207  				goto activate_locked;
283aba9f9e0e48 Mel Gorman              2013-07-03  1208  
283aba9f9e0e48 Mel Gorman              2013-07-03  1209  			/* Case 3 above */
283aba9f9e0e48 Mel Gorman              2013-07-03  1210  			} else {
7fadc820222497 Hugh Dickins            2015-09-08  1211  				unlock_page(page);
c3b94f44fcb072 Hugh Dickins            2012-07-31  1212  				wait_on_page_writeback(page);
7fadc820222497 Hugh Dickins            2015-09-08  1213  				/* then go back and try same page again */
7fadc820222497 Hugh Dickins            2015-09-08  1214  				list_add_tail(&page->lru, page_list);
7fadc820222497 Hugh Dickins            2015-09-08  1215  				continue;
e62e384e9da8d9 Michal Hocko            2012-07-31  1216  			}
283aba9f9e0e48 Mel Gorman              2013-07-03  1217  		}
^1da177e4c3f41 Linus Torvalds          2005-04-16  1218  
8940b34a4e082a Minchan Kim             2019-09-25  1219  		if (!ignore_references)
6a18adb35c2784 Konstantin Khlebnikov   2012-05-29  1220  			references = page_check_references(page, sc);
02c6de8d757cb3 Minchan Kim             2012-10-08  1221  
dfc8d636cdb95f Johannes Weiner         2010-03-05  1222  		switch (references) {
dfc8d636cdb95f Johannes Weiner         2010-03-05  1223  		case PAGEREF_ACTIVATE:
^1da177e4c3f41 Linus Torvalds          2005-04-16  1224  			goto activate_locked;
645747462435d8 Johannes Weiner         2010-03-05  1225  		case PAGEREF_KEEP:
98879b3b9edc16 Yang Shi                2019-07-11  1226  			stat->nr_ref_keep += nr_pages;
645747462435d8 Johannes Weiner         2010-03-05  1227  			goto keep_locked;
dfc8d636cdb95f Johannes Weiner         2010-03-05  1228  		case PAGEREF_RECLAIM:
dfc8d636cdb95f Johannes Weiner         2010-03-05  1229  		case PAGEREF_RECLAIM_CLEAN:
dfc8d636cdb95f Johannes Weiner         2010-03-05  1230  			; /* try to reclaim the page below */
dfc8d636cdb95f Johannes Weiner         2010-03-05  1231  		}
^1da177e4c3f41 Linus Torvalds          2005-04-16  1232  
^1da177e4c3f41 Linus Torvalds          2005-04-16  1233  		/*
^1da177e4c3f41 Linus Torvalds          2005-04-16  1234  		 * Anonymous process memory has backing store?
^1da177e4c3f41 Linus Torvalds          2005-04-16  1235  		 * Try to allocate it some swap space here.
802a3a92ad7ac0 Shaohua Li              2017-05-03  1236  		 * Lazyfree page could be freed directly
^1da177e4c3f41 Linus Torvalds          2005-04-16  1237  		 */
bd4c82c22c367e Huang Ying              2017-09-06  1238  		if (PageAnon(page) && PageSwapBacked(page)) {
bd4c82c22c367e Huang Ying              2017-09-06  1239  			if (!PageSwapCache(page)) {
63eb6b93ce725e Hugh Dickins            2008-11-19  1240  				if (!(sc->gfp_mask & __GFP_IO))
63eb6b93ce725e Hugh Dickins            2008-11-19  1241  					goto keep_locked;
feb889fb40fafc Linus Torvalds          2021-01-16  1242  				if (page_maybe_dma_pinned(page))
feb889fb40fafc Linus Torvalds          2021-01-16  1243  					goto keep_locked;
747552b1e71b40 Huang Ying              2017-07-06  1244  				if (PageTransHuge(page)) {
b8f593cd0896b8 Huang Ying              2017-07-06  1245  					/* cannot split THP, skip it */
747552b1e71b40 Huang Ying              2017-07-06  1246  					if (!can_split_huge_page(page, NULL))
b8f593cd0896b8 Huang Ying              2017-07-06  1247  						goto activate_locked;
747552b1e71b40 Huang Ying              2017-07-06  1248  					/*
747552b1e71b40 Huang Ying              2017-07-06  1249  					 * Split pages without a PMD map right
747552b1e71b40 Huang Ying              2017-07-06  1250  					 * away. Chances are some or all of the
747552b1e71b40 Huang Ying              2017-07-06  1251  					 * tail pages can be freed without IO.
747552b1e71b40 Huang Ying              2017-07-06  1252  					 */
747552b1e71b40 Huang Ying              2017-07-06  1253  					if (!compound_mapcount(page) &&
bd4c82c22c367e Huang Ying              2017-09-06  1254  					    split_huge_page_to_list(page,
bd4c82c22c367e Huang Ying              2017-09-06  1255  								    page_list))
747552b1e71b40 Huang Ying              2017-07-06  1256  						goto activate_locked;
747552b1e71b40 Huang Ying              2017-07-06  1257  				}
0f0746589e4be0 Minchan Kim             2017-07-06  1258  				if (!add_to_swap(page)) {
0f0746589e4be0 Minchan Kim             2017-07-06  1259  					if (!PageTransHuge(page))
98879b3b9edc16 Yang Shi                2019-07-11  1260  						goto activate_locked_split;
bd4c82c22c367e Huang Ying              2017-09-06  1261  					/* Fallback to swap normal pages */
bd4c82c22c367e Huang Ying              2017-09-06  1262  					if (split_huge_page_to_list(page,
bd4c82c22c367e Huang Ying              2017-09-06  1263  								    page_list))
0f0746589e4be0 Minchan Kim             2017-07-06  1264  						goto activate_locked;
fe490cc0fe9e6e Huang Ying              2017-09-06  1265  #ifdef CONFIG_TRANSPARENT_HUGEPAGE
fe490cc0fe9e6e Huang Ying              2017-09-06  1266  					count_vm_event(THP_SWPOUT_FALLBACK);
fe490cc0fe9e6e Huang Ying              2017-09-06  1267  #endif
0f0746589e4be0 Minchan Kim             2017-07-06  1268  					if (!add_to_swap(page))
98879b3b9edc16 Yang Shi                2019-07-11  1269  						goto activate_locked_split;
0f0746589e4be0 Minchan Kim             2017-07-06  1270  				}
0f0746589e4be0 Minchan Kim             2017-07-06  1271  
4b793062674707 Kirill Tkhai            2020-04-01  1272  				may_enter_fs = true;
^1da177e4c3f41 Linus Torvalds          2005-04-16  1273  
e2be15f6c3eece Mel Gorman              2013-07-03  1274  				/* Adding to swap updated mapping */
^1da177e4c3f41 Linus Torvalds          2005-04-16  1275  				mapping = page_mapping(page);
bd4c82c22c367e Huang Ying              2017-09-06  1276  			}
7751b2da6be0b5 Kirill A. Shutemov      2016-07-26  1277  		} else if (unlikely(PageTransHuge(page))) {
7751b2da6be0b5 Kirill A. Shutemov      2016-07-26  1278  			/* Split file THP */
7751b2da6be0b5 Kirill A. Shutemov      2016-07-26  1279  			if (split_huge_page_to_list(page, page_list))
7751b2da6be0b5 Kirill A. Shutemov      2016-07-26  1280  				goto keep_locked;
e2be15f6c3eece Mel Gorman              2013-07-03  1281  		}
^1da177e4c3f41 Linus Torvalds          2005-04-16  1282  
98879b3b9edc16 Yang Shi                2019-07-11  1283  		/*
98879b3b9edc16 Yang Shi                2019-07-11  1284  		 * THP may get split above, need minus tail pages and update
98879b3b9edc16 Yang Shi                2019-07-11  1285  		 * nr_pages to avoid accounting tail pages twice.
98879b3b9edc16 Yang Shi                2019-07-11  1286  		 *
98879b3b9edc16 Yang Shi                2019-07-11  1287  		 * The tail pages that are added into swap cache successfully
98879b3b9edc16 Yang Shi                2019-07-11  1288  		 * reach here.
98879b3b9edc16 Yang Shi                2019-07-11  1289  		 */
98879b3b9edc16 Yang Shi                2019-07-11  1290  		if ((nr_pages > 1) && !PageTransHuge(page)) {
98879b3b9edc16 Yang Shi                2019-07-11  1291  			sc->nr_scanned -= (nr_pages - 1);
98879b3b9edc16 Yang Shi                2019-07-11  1292  			nr_pages = 1;
98879b3b9edc16 Yang Shi                2019-07-11  1293  		}
98879b3b9edc16 Yang Shi                2019-07-11  1294  
^1da177e4c3f41 Linus Torvalds          2005-04-16  1295  		/*
^1da177e4c3f41 Linus Torvalds          2005-04-16  1296  		 * The page is mapped into the page tables of one or more
^1da177e4c3f41 Linus Torvalds          2005-04-16  1297  		 * processes. Try to unmap it here.
^1da177e4c3f41 Linus Torvalds          2005-04-16  1298  		 */
802a3a92ad7ac0 Shaohua Li              2017-05-03  1299  		if (page_mapped(page)) {
013339df116c2e Shakeel Butt            2020-12-14  1300  			enum ttu_flags flags = TTU_BATCH_FLUSH;
1f318a9b0dc399 Jaewon Kim              2020-06-03  1301  			bool was_swapbacked = PageSwapBacked(page);
bd4c82c22c367e Huang Ying              2017-09-06  1302  
bd4c82c22c367e Huang Ying              2017-09-06  1303  			if (unlikely(PageTransHuge(page)))
bd4c82c22c367e Huang Ying              2017-09-06  1304  				flags |= TTU_SPLIT_HUGE_PMD;
1f318a9b0dc399 Jaewon Kim              2020-06-03  1305  
bd4c82c22c367e Huang Ying              2017-09-06  1306  			if (!try_to_unmap(page, flags)) {
98879b3b9edc16 Yang Shi                2019-07-11  1307  				stat->nr_unmap_fail += nr_pages;
1f318a9b0dc399 Jaewon Kim              2020-06-03  1308  				if (!was_swapbacked && PageSwapBacked(page))
1f318a9b0dc399 Jaewon Kim              2020-06-03  1309  					stat->nr_lazyfree_fail += nr_pages;
^1da177e4c3f41 Linus Torvalds          2005-04-16  1310  				goto activate_locked;
^1da177e4c3f41 Linus Torvalds          2005-04-16  1311  			}
^1da177e4c3f41 Linus Torvalds          2005-04-16  1312  		}
^1da177e4c3f41 Linus Torvalds          2005-04-16  1313  
^1da177e4c3f41 Linus Torvalds          2005-04-16  1314  		if (PageDirty(page)) {
ee72886d8ed5d9 Mel Gorman              2011-10-31  1315  			/*
4eda48235011d6 Johannes Weiner         2017-02-24  1316  			 * Only kswapd can writeback filesystem pages
4eda48235011d6 Johannes Weiner         2017-02-24  1317  			 * to avoid risk of stack overflow. But avoid
4eda48235011d6 Johannes Weiner         2017-02-24  1318  			 * injecting inefficient single-page IO into
4eda48235011d6 Johannes Weiner         2017-02-24  1319  			 * flusher writeback as much as possible: only
4eda48235011d6 Johannes Weiner         2017-02-24  1320  			 * write pages when we've encountered many
4eda48235011d6 Johannes Weiner         2017-02-24  1321  			 * dirty pages, and when we've already scanned
4eda48235011d6 Johannes Weiner         2017-02-24  1322  			 * the rest of the LRU for clean pages and see
4eda48235011d6 Johannes Weiner         2017-02-24  1323  			 * the same dirty pages again (PageReclaim).
ee72886d8ed5d9 Mel Gorman              2011-10-31  1324  			 */
9de4f22a60f731 Huang Ying              2020-04-06  1325  			if (page_is_file_lru(page) &&
4eda48235011d6 Johannes Weiner         2017-02-24  1326  			    (!current_is_kswapd() || !PageReclaim(page) ||
599d0c954f91d0 Mel Gorman              2016-07-28  1327  			     !test_bit(PGDAT_DIRTY, &pgdat->flags))) {
49ea7eb65e7c50 Mel Gorman              2011-10-31  1328  				/*
49ea7eb65e7c50 Mel Gorman              2011-10-31  1329  				 * Immediately reclaim when written back.
49ea7eb65e7c50 Mel Gorman              2011-10-31  1330  				 * Similar in principal to deactivate_page()
49ea7eb65e7c50 Mel Gorman              2011-10-31  1331  				 * except we already have the page isolated
49ea7eb65e7c50 Mel Gorman              2011-10-31  1332  				 * and know it's dirty
49ea7eb65e7c50 Mel Gorman              2011-10-31  1333  				 */
c4a25635b60d08 Mel Gorman              2016-07-28  1334  				inc_node_page_state(page, NR_VMSCAN_IMMEDIATE);
49ea7eb65e7c50 Mel Gorman              2011-10-31  1335  				SetPageReclaim(page);
49ea7eb65e7c50 Mel Gorman              2011-10-31  1336  
c55e8d035b28b2 Johannes Weiner         2017-02-24  1337  				goto activate_locked;
ee72886d8ed5d9 Mel Gorman              2011-10-31  1338  			}
ee72886d8ed5d9 Mel Gorman              2011-10-31  1339  
dfc8d636cdb95f Johannes Weiner         2010-03-05  1340  			if (references == PAGEREF_RECLAIM_CLEAN)
^1da177e4c3f41 Linus Torvalds          2005-04-16  1341  				goto keep_locked;
4dd4b920218326 Andrew Morton           2008-03-24  1342  			if (!may_enter_fs)
^1da177e4c3f41 Linus Torvalds          2005-04-16  1343  				goto keep_locked;
52a8363eae3872 Christoph Lameter       2006-02-01  1344  			if (!sc->may_writepage)
^1da177e4c3f41 Linus Torvalds          2005-04-16  1345  				goto keep_locked;
^1da177e4c3f41 Linus Torvalds          2005-04-16  1346  
d950c9477d51f0 Mel Gorman              2015-09-04  1347  			/*
d950c9477d51f0 Mel Gorman              2015-09-04  1348  			 * Page is dirty. Flush the TLB if a writable entry
d950c9477d51f0 Mel Gorman              2015-09-04  1349  			 * potentially exists to avoid CPU writes after IO
d950c9477d51f0 Mel Gorman              2015-09-04  1350  			 * starts and then write it out here.
d950c9477d51f0 Mel Gorman              2015-09-04  1351  			 */
d950c9477d51f0 Mel Gorman              2015-09-04  1352  			try_to_unmap_flush_dirty();
cb16556d913f2b Yang Shi                2019-11-30  1353  			switch (pageout(page, mapping)) {
^1da177e4c3f41 Linus Torvalds          2005-04-16  1354  			case PAGE_KEEP:
^1da177e4c3f41 Linus Torvalds          2005-04-16  1355  				goto keep_locked;
^1da177e4c3f41 Linus Torvalds          2005-04-16  1356  			case PAGE_ACTIVATE:
^1da177e4c3f41 Linus Torvalds          2005-04-16  1357  				goto activate_locked;
^1da177e4c3f41 Linus Torvalds          2005-04-16  1358  			case PAGE_SUCCESS:
6c357848b44b40 Matthew Wilcox (Oracle  2020-08-14  1359) 				stat->nr_pageout += thp_nr_pages(page);
96f8bf4fb1dd26 Johannes Weiner         2020-06-03  1360  
7d3579e8e61937 KOSAKI Motohiro         2010-10-26  1361  				if (PageWriteback(page))
41ac1999c3e356 Mel Gorman              2012-05-29  1362  					goto keep;
7d3579e8e61937 KOSAKI Motohiro         2010-10-26  1363  				if (PageDirty(page))
^1da177e4c3f41 Linus Torvalds          2005-04-16  1364  					goto keep;
7d3579e8e61937 KOSAKI Motohiro         2010-10-26  1365  
^1da177e4c3f41 Linus Torvalds          2005-04-16  1366  				/*
^1da177e4c3f41 Linus Torvalds          2005-04-16  1367  				 * A synchronous write - probably a ramdisk.  Go
^1da177e4c3f41 Linus Torvalds          2005-04-16  1368  				 * ahead and try to reclaim the page.
^1da177e4c3f41 Linus Torvalds          2005-04-16  1369  				 */
529ae9aaa08378 Nick Piggin             2008-08-02  1370  				if (!trylock_page(page))
^1da177e4c3f41 Linus Torvalds          2005-04-16  1371  					goto keep;
^1da177e4c3f41 Linus Torvalds          2005-04-16  1372  				if (PageDirty(page) || PageWriteback(page))
^1da177e4c3f41 Linus Torvalds          2005-04-16  1373  					goto keep_locked;
^1da177e4c3f41 Linus Torvalds          2005-04-16  1374  				mapping = page_mapping(page);
01359eb2013b4b Gustavo A. R. Silva     2020-12-14  1375  				fallthrough;
^1da177e4c3f41 Linus Torvalds          2005-04-16  1376  			case PAGE_CLEAN:
^1da177e4c3f41 Linus Torvalds          2005-04-16  1377  				; /* try to free the page below */
^1da177e4c3f41 Linus Torvalds          2005-04-16  1378  			}
^1da177e4c3f41 Linus Torvalds          2005-04-16  1379  		}
^1da177e4c3f41 Linus Torvalds          2005-04-16  1380  
^1da177e4c3f41 Linus Torvalds          2005-04-16  1381  		/*
^1da177e4c3f41 Linus Torvalds          2005-04-16  1382  		 * If the page has buffers, try to free the buffer mappings
^1da177e4c3f41 Linus Torvalds          2005-04-16  1383  		 * associated with this page. If we succeed we try to free
^1da177e4c3f41 Linus Torvalds          2005-04-16  1384  		 * the page as well.
^1da177e4c3f41 Linus Torvalds          2005-04-16  1385  		 *
^1da177e4c3f41 Linus Torvalds          2005-04-16  1386  		 * We do this even if the page is PageDirty().
^1da177e4c3f41 Linus Torvalds          2005-04-16  1387  		 * try_to_release_page() does not perform I/O, but it is
^1da177e4c3f41 Linus Torvalds          2005-04-16  1388  		 * possible for a page to have PageDirty set, but it is actually
^1da177e4c3f41 Linus Torvalds          2005-04-16  1389  		 * clean (all its buffers are clean).  This happens if the
^1da177e4c3f41 Linus Torvalds          2005-04-16  1390  		 * buffers were written out directly, with submit_bh(). ext3
^1da177e4c3f41 Linus Torvalds          2005-04-16  1391  		 * will do this, as well as the blockdev mapping.
^1da177e4c3f41 Linus Torvalds          2005-04-16  1392  		 * try_to_release_page() will discover that cleanness and will
^1da177e4c3f41 Linus Torvalds          2005-04-16  1393  		 * drop the buffers and mark the page clean - it can be freed.
^1da177e4c3f41 Linus Torvalds          2005-04-16  1394  		 *
^1da177e4c3f41 Linus Torvalds          2005-04-16  1395  		 * Rarely, pages can have buffers and no ->mapping.  These are
^1da177e4c3f41 Linus Torvalds          2005-04-16  1396  		 * the pages which were not successfully invalidated in
d12b8951ad17cd Yang Shi                2020-12-14  1397  		 * truncate_cleanup_page().  We try to drop those buffers here
^1da177e4c3f41 Linus Torvalds          2005-04-16  1398  		 * and if that worked, and the page is no longer mapped into
^1da177e4c3f41 Linus Torvalds          2005-04-16  1399  		 * process address space (page_count == 1) it can be freed.
^1da177e4c3f41 Linus Torvalds          2005-04-16  1400  		 * Otherwise, leave the page on the LRU so it is swappable.
^1da177e4c3f41 Linus Torvalds          2005-04-16  1401  		 */
266cf658efcf6a David Howells           2009-04-03  1402  		if (page_has_private(page)) {
^1da177e4c3f41 Linus Torvalds          2005-04-16  1403  			if (!try_to_release_page(page, sc->gfp_mask))
^1da177e4c3f41 Linus Torvalds          2005-04-16  1404  				goto activate_locked;
e286781d5f2e9c Nick Piggin             2008-07-25  1405  			if (!mapping && page_count(page) == 1) {
e286781d5f2e9c Nick Piggin             2008-07-25  1406  				unlock_page(page);
e286781d5f2e9c Nick Piggin             2008-07-25  1407  				if (put_page_testzero(page))
^1da177e4c3f41 Linus Torvalds          2005-04-16  1408  					goto free_it;
e286781d5f2e9c Nick Piggin             2008-07-25  1409  				else {
e286781d5f2e9c Nick Piggin             2008-07-25  1410  					/*
e286781d5f2e9c Nick Piggin             2008-07-25  1411  					 * rare race with speculative reference.
e286781d5f2e9c Nick Piggin             2008-07-25  1412  					 * the speculative reference will free
e286781d5f2e9c Nick Piggin             2008-07-25  1413  					 * this page shortly, so we may
e286781d5f2e9c Nick Piggin             2008-07-25  1414  					 * increment nr_reclaimed here (and
e286781d5f2e9c Nick Piggin             2008-07-25  1415  					 * leave it off the LRU).
e286781d5f2e9c Nick Piggin             2008-07-25  1416  					 */
e286781d5f2e9c Nick Piggin             2008-07-25  1417  					nr_reclaimed++;
e286781d5f2e9c Nick Piggin             2008-07-25  1418  					continue;
e286781d5f2e9c Nick Piggin             2008-07-25  1419  				}
e286781d5f2e9c Nick Piggin             2008-07-25  1420  			}
^1da177e4c3f41 Linus Torvalds          2005-04-16  1421  		}
^1da177e4c3f41 Linus Torvalds          2005-04-16  1422  
802a3a92ad7ac0 Shaohua Li              2017-05-03  1423  		if (PageAnon(page) && !PageSwapBacked(page)) {
802a3a92ad7ac0 Shaohua Li              2017-05-03  1424  			/* follow __remove_mapping for reference */
802a3a92ad7ac0 Shaohua Li              2017-05-03  1425  			if (!page_ref_freeze(page, 1))
49d2e9cc454436 Christoph Lameter       2006-01-08  1426  				goto keep_locked;
802a3a92ad7ac0 Shaohua Li              2017-05-03  1427  			if (PageDirty(page)) {
802a3a92ad7ac0 Shaohua Li              2017-05-03  1428  				page_ref_unfreeze(page, 1);
802a3a92ad7ac0 Shaohua Li              2017-05-03  1429  				goto keep_locked;
802a3a92ad7ac0 Shaohua Li              2017-05-03  1430  			}
^1da177e4c3f41 Linus Torvalds          2005-04-16  1431  
802a3a92ad7ac0 Shaohua Li              2017-05-03  1432  			count_vm_event(PGLAZYFREED);
2262185c5b287f Roman Gushchin          2017-07-06  1433  			count_memcg_page_event(page, PGLAZYFREED);
b910718a948a91 Johannes Weiner         2019-11-30  1434  		} else if (!mapping || !__remove_mapping(mapping, page, true,
b910718a948a91 Johannes Weiner         2019-11-30  1435  							 sc->target_mem_cgroup))
802a3a92ad7ac0 Shaohua Li              2017-05-03  1436  			goto keep_locked;
9a1ea439b16b92 Hugh Dickins            2018-12-28  1437  
9a1ea439b16b92 Hugh Dickins            2018-12-28  1438  		unlock_page(page);
e286781d5f2e9c Nick Piggin             2008-07-25  1439  free_it:
98879b3b9edc16 Yang Shi                2019-07-11  1440  		/*
98879b3b9edc16 Yang Shi                2019-07-11  1441  		 * THP may get swapped out in a whole, need account
98879b3b9edc16 Yang Shi                2019-07-11  1442  		 * all base pages.
98879b3b9edc16 Yang Shi                2019-07-11  1443  		 */
98879b3b9edc16 Yang Shi                2019-07-11  1444  		nr_reclaimed += nr_pages;
abe4c3b50c3f25 Mel Gorman              2010-08-09  1445  
abe4c3b50c3f25 Mel Gorman              2010-08-09  1446  		/*
abe4c3b50c3f25 Mel Gorman              2010-08-09  1447  		 * Is there need to periodically free_page_list? It would
abe4c3b50c3f25 Mel Gorman              2010-08-09  1448  		 * appear not as the counts should be low
abe4c3b50c3f25 Mel Gorman              2010-08-09  1449  		 */
7ae88534cdd962 Yang Shi                2019-09-23  1450  		if (unlikely(PageTransHuge(page)))
ff45fc3ca0f3c3 Matthew Wilcox (Oracle  2020-06-03  1451) 			destroy_compound_page(page);
7ae88534cdd962 Yang Shi                2019-09-23  1452  		else
abe4c3b50c3f25 Mel Gorman              2010-08-09  1453  			list_add(&page->lru, &free_pages);
^1da177e4c3f41 Linus Torvalds          2005-04-16  1454  		continue;
^1da177e4c3f41 Linus Torvalds          2005-04-16  1455  
98879b3b9edc16 Yang Shi                2019-07-11  1456  activate_locked_split:
98879b3b9edc16 Yang Shi                2019-07-11  1457  		/*
98879b3b9edc16 Yang Shi                2019-07-11  1458  		 * The tail pages that are failed to add into swap cache
98879b3b9edc16 Yang Shi                2019-07-11  1459  		 * reach here.  Fixup nr_scanned and nr_pages.
98879b3b9edc16 Yang Shi                2019-07-11  1460  		 */
98879b3b9edc16 Yang Shi                2019-07-11  1461  		if (nr_pages > 1) {
98879b3b9edc16 Yang Shi                2019-07-11  1462  			sc->nr_scanned -= (nr_pages - 1);
98879b3b9edc16 Yang Shi                2019-07-11  1463  			nr_pages = 1;
98879b3b9edc16 Yang Shi                2019-07-11  1464  		}
^1da177e4c3f41 Linus Torvalds          2005-04-16  1465  activate_locked:
68a22394c286a2 Rik van Riel            2008-10-18  1466  		/* Not a candidate for swapping, so reclaim swap space. */
ad6b67041a4549 Minchan Kim             2017-05-03  1467  		if (PageSwapCache(page) && (mem_cgroup_swap_full(page) ||
ad6b67041a4549 Minchan Kim             2017-05-03  1468  						PageMlocked(page)))
a2c43eed8334e8 Hugh Dickins            2009-01-06  1469  			try_to_free_swap(page);
309381feaee564 Sasha Levin             2014-01-23  1470  		VM_BUG_ON_PAGE(PageActive(page), page);
ad6b67041a4549 Minchan Kim             2017-05-03  1471  		if (!PageMlocked(page)) {
9de4f22a60f731 Huang Ying              2020-04-06  1472  			int type = page_is_file_lru(page);
^1da177e4c3f41 Linus Torvalds          2005-04-16  1473  			SetPageActive(page);
98879b3b9edc16 Yang Shi                2019-07-11  1474  			stat->nr_activate[type] += nr_pages;
2262185c5b287f Roman Gushchin          2017-07-06  1475  			count_memcg_page_event(page, PGACTIVATE);
ad6b67041a4549 Minchan Kim             2017-05-03  1476  		}
^1da177e4c3f41 Linus Torvalds          2005-04-16  1477  keep_locked:
^1da177e4c3f41 Linus Torvalds          2005-04-16  1478  		unlock_page(page);
^1da177e4c3f41 Linus Torvalds          2005-04-16  1479  keep:
^1da177e4c3f41 Linus Torvalds          2005-04-16  1480  		list_add(&page->lru, &ret_pages);
309381feaee564 Sasha Levin             2014-01-23  1481  		VM_BUG_ON_PAGE(PageLRU(page) || PageUnevictable(page), page);
^1da177e4c3f41 Linus Torvalds          2005-04-16  1482  	}
abe4c3b50c3f25 Mel Gorman              2010-08-09  1483  
98879b3b9edc16 Yang Shi                2019-07-11  1484  	pgactivate = stat->nr_activate[0] + stat->nr_activate[1];
98879b3b9edc16 Yang Shi                2019-07-11  1485  
747db954cab64c Johannes Weiner         2014-08-08  1486  	mem_cgroup_uncharge_list(&free_pages);
72b252aed506b8 Mel Gorman              2015-09-04  1487  	try_to_unmap_flush();
2d4894b5d2ae0f Mel Gorman              2017-11-15  1488  	free_unref_page_list(&free_pages);
abe4c3b50c3f25 Mel Gorman              2010-08-09  1489  
^1da177e4c3f41 Linus Torvalds          2005-04-16  1490  	list_splice(&ret_pages, page_list);
886cf1901db962 Kirill Tkhai            2019-05-13  1491  	count_vm_events(PGACTIVATE, pgactivate);
060f005f074791 Kirill Tkhai            2019-03-05  1492  
05ff51376f01fd Andrew Morton           2006-03-22  1493  	return nr_reclaimed;
^1da177e4c3f41 Linus Torvalds          2005-04-16  1494  }
^1da177e4c3f41 Linus Torvalds          2005-04-16  1495  

:::::: The code at line 1071 was first introduced by commit
:::::: 730ec8c01a2bd6a311ada404398f44c142ac5e8e mm/vmscan.c: change prototype for shrink_page_list

:::::: TO: Maninder Singh <maninder1.s@samsung.com>
:::::: CC: Linus Torvalds <torvalds@linux-foundation.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202106262126.An2i4ZxC-lkp%40intel.com.

--M9NhX3UHpAaciwkO
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
D+2Zw9wY7gEA

--M9NhX3UHpAaciwkO--
