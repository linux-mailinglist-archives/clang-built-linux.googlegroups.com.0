Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBMNNSOBAMGQEFR5WQII@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb39.google.com (mail-yb1-xb39.google.com [IPv6:2607:f8b0:4864:20::b39])
	by mail.lfdr.de (Postfix) with ESMTPS id 66A1433013D
	for <lists+clang-built-linux@lfdr.de>; Sun,  7 Mar 2021 14:35:46 +0100 (CET)
Received: by mail-yb1-xb39.google.com with SMTP id l3sf9400803ybf.17
        for <lists+clang-built-linux@lfdr.de>; Sun, 07 Mar 2021 05:35:46 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615124145; cv=pass;
        d=google.com; s=arc-20160816;
        b=u37+rVkMYgq15//bBUcXbdkSso46Nge3Z/TtCwE7L6M9//O/oH6tMw4xOnBFV//qGF
         8IG/Nm3ORK12rcFNU6ch5TZwbseotPt83lNYVdYLXBbXlVk8t/+fXXDArjR4o6214UvD
         d2+ZM7n61gsnR6rhCdgAwp1WxLnRrKL+QykfkJOY4zdpzD8rLEWUWQfOmc98FiUxkHu5
         bNiyi07BwOKrcNGjLvWqAug1xK2U0UATswTfHkxUClRwPxeCCHf9pAq3XZ3mpsZ0vvqt
         OIudnNQeFnScBoxUqdJWUFD3D1iRx3dpn1k8NjQwktFHkrhERbtKArnHqVYgebddB2fY
         d8cA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=MsBloD6fEUDoMz8uG6BLyLpAs3y8u8Ge2+GdBF3edFg=;
        b=ne1wtIN4mhMMEpKauziHSBcHBon7OLhICMwLO/1OSikgatXrTIXeM8csvujKGRQuV/
         C6KlSuamedAo8zvY07iOAEQHWnHq+sIOdMuWAbvDPAuot7c6SlHLxgYvvGW8gyjWqCsY
         Kca3a73cOq78gnLkUJ7rEpBzPMqDtGkiBhTzY/Ds/8ULx+jrIZ5r0D5TpMRo/foxkDD3
         RnhmoIuRSO9cdstDuEtLxtBpb/PbEu8ZqNBKsZDIA3M2quO2uXHHH3hPKrMZXOROFA1j
         VXKoEJK42qxNAehcD/7GocnYUT1sORAOVgrSpxKUiauEJdPNMycRIIUYqIwRE6Khjswb
         n2YA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=MsBloD6fEUDoMz8uG6BLyLpAs3y8u8Ge2+GdBF3edFg=;
        b=mfGmfLSRGDvoWjjoTjtWh4rTIrFso/P9Yy4N5uQMat6Xr+emiI2h7Me1qeY9lkUB8F
         i8hksYE/Wm2Au0EFjxDgjc5lEJjoYKLZGlrpV010o+P6zElh5fl7OA0E8lHY+WmLXjp1
         SUEaUNhnnn3KEZ/iDhuFnBRRxNLG32HxCY1Wkq/vctZyC7frUfLUiyaKtrF1XKEq777W
         BSxjh6++kl6S1D197uPerLokGITCf6av6XDRdTH7OtQDJcSc0WSsf8sIZ57u6WGj+gJZ
         F4g7R+M0kzjmTMpR4G2YjkieyoNBtuBTQ00zg1Q+vg3Ctk4Ao1x8k6EPs93P+kTHlwr8
         JLAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=MsBloD6fEUDoMz8uG6BLyLpAs3y8u8Ge2+GdBF3edFg=;
        b=Vv7ly1LfKNQ3SFAnuvI0OK8m7PTQ1yZ5DkJIS13c0tvWp4B/Gw5BhAq5RL9+E+VTW1
         b1k0T018BbzhUpJ/4oPVwAxf6k7kqtVaySn1vBkChe/t3gn6r/SnIGIuejzrA46V/wgZ
         vWYikoC2k4ZJY0/OUSngv0sixYLrf8WtwM+v9Wdc92DTFl9pqxVCZbz7ccIt3ykURVOb
         Tx5J5CAJXEMLrLziH7fptv4GEQTZOZyTcme6BA5ex1Bncxru7YQPu0xpH/ZKrmoUkPe3
         KveNPzn/YZRbFpuaZQk1c3xeJQhSTSysszXgFJ0J/ZAIvS75qDXD0HlmvKsZy7CpaDin
         gtow==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530HzvZGTrMwi6kK0i1uV+brQHRzME+bjWSFfMZab4o/ReH3suvA
	1S3SfAkVHNs8NHpx+sCdwFQ=
X-Google-Smtp-Source: ABdhPJwC55jDAqxjS7DsPyIYTjB0XN2gw6K0kWfg7Ho0PKHbz2AreZLgxPerEUFuf7NV5kPU69rdWQ==
X-Received: by 2002:a5b:782:: with SMTP id b2mr27327023ybq.28.1615124145382;
        Sun, 07 Mar 2021 05:35:45 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:68d4:: with SMTP id d203ls7249011ybc.9.gmail; Sun, 07
 Mar 2021 05:35:44 -0800 (PST)
X-Received: by 2002:a25:b099:: with SMTP id f25mr28325015ybj.143.1615124144751;
        Sun, 07 Mar 2021 05:35:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615124144; cv=none;
        d=google.com; s=arc-20160816;
        b=RWNiO3BWZwCmYNj5qSgHMjxc580mP0It6292TBQ/dhLHfhuNMDhcVluVRPsToYuypA
         PgcO+WXBnCg5MRzVjmvXZ7d6NQEzeTw1tS/GyF9XJODzgAYXLmxnsDUOFpT27cYp0ju/
         uMw5gTPBOHppTzbij5jek6yTW1TXAMiKnVf//S4rnk6t2srkVvmP1lx1OREyYGlwWDeI
         ECTxzqGDzs4V97Y5CdPR35ST0s3uKKbqxUPKRdrdz1fCvVstmxeMBl5aS56SJIC+voZf
         TEN81NxFLcQwMQ3tt8xnLrpZIIssTwRr1iEw5i/RHeOaKKaUtihl8ejQY0QtpyPdE55h
         ul+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=iB5G2g/DvLytNyR2WGXJJfA8GnmQrElsl0GA5T3FG4o=;
        b=U/EcbkeYICdI10xSjJZFzNrYXWRnAZGn9bgIewzmK3YgUS37+8/5/WE7fLfjQssNTC
         XnMticiQOaNPiYIrYzmzqVt8IIJeA3aPEkszIi+xlEkp5rUkAs98P/R2tk9wC0loN/bd
         ZyEcuB6YePITU5oUaxEuHcWOQxyJ9/mNcrlYB020NtcrhSctJEZORsG3WRV06qTeHsqY
         jWeDXUxqxfbEWSNkO8plVITgTWX8quKlY9NZYSy9zYuSxrU5QV502GQ1Ab4+PrT9sWdB
         7RCaZ/TRjn/jdYzjQw3YZuSfzxURiKKcF5PB4hJqXfgDBQxT7/EWTHPA9O2/vyH3w+L8
         YI7w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga01.intel.com (mga01.intel.com. [192.55.52.88])
        by gmr-mx.google.com with ESMTPS id s44si540279ybi.3.2021.03.07.05.35.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 07 Mar 2021 05:35:44 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) client-ip=192.55.52.88;
IronPort-SDR: qDoJQYEOBi3u8n/Gn8RSBiOsHmq7ErOK4HhhJbe8O+5aAiVNmtQ1NppXk/gLIM4MqfpjMC8HRd
 44Dc4KCr9vKg==
X-IronPort-AV: E=McAfee;i="6000,8403,9915"; a="207653526"
X-IronPort-AV: E=Sophos;i="5.81,230,1610438400"; 
   d="gz'50?scan'50,208,50";a="207653526"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Mar 2021 05:35:42 -0800
IronPort-SDR: JcWx5LcpwXdqV6xYb70v8XBUnjgW7CzJYA1+noL6vv6AdQMNJJDmr+HyqMOa6FClorflGb4uwJ
 /+pn77fVxZIQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,230,1610438400"; 
   d="gz'50?scan'50,208,50";a="601815682"
Received: from lkp-server01.sh.intel.com (HELO 3e992a48ca98) ([10.239.97.150])
  by fmsmga005.fm.intel.com with ESMTP; 07 Mar 2021 05:35:39 -0800
Received: from kbuild by 3e992a48ca98 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lItZL-0000PO-AP; Sun, 07 Mar 2021 13:35:39 +0000
Date: Sun, 7 Mar 2021 21:35:15 +0800
From: kernel test robot <lkp@intel.com>
To: Atish Patra <atish.patra@wdc.com>
Cc: kbuild-all@01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Palmer Dabbelt <palmerdabbelt@google.com>,
	Greentime Hu <greentime.hu@sifive.com>,
	Anup Patel <anup@brainfault.org>
Subject: include/linux/scatterlist.h:137:10: error: use of undeclared
 identifier 'max_mapnr'
Message-ID: <202103072157.TAlyfucF-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="5mCyUwZo2JvN/JJP"
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


--5mCyUwZo2JvN/JJP
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   a38fd8748464831584a19438cbb3082b5a2dab15
commit: 4f0e8eef772ee4438f304b2178bc28c958b6c13d riscv: Add numa support for riscv64 platform
date:   7 weeks ago
config: riscv-randconfig-r005-20210307 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 4d90e460bcc7b3e5ff6c7e2e05e974772489c4b8)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install riscv cross compiling tool for clang build
        # apt-get install binutils-riscv64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=4f0e8eef772ee4438f304b2178bc28c958b6c13d
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout 4f0e8eef772ee4438f304b2178bc28c958b6c13d
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=riscv 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All error/warnings (new ones prefixed by >>):

                                                                           ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:88:76: note: expanded from macro 'readw_cpu'
   #define readw_cpu(c)            ({ u16 __r = le16_to_cpu((__force __le16)__raw_readw(c)); __r; })
                                                                                        ^
   include/uapi/linux/byteorder/little_endian.h:36:51: note: expanded from macro '__le16_to_cpu'
   #define __le16_to_cpu(x) ((__force __u16)(__le16)(x))
                                                     ^
   In file included from mm/filemap.c:20:
   In file included from include/linux/kernel_stat.h:9:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:17:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:149:
   include/asm-generic/io.h:572:9: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           return inl(addr);
                  ^~~~~~~~~
   arch/riscv/include/asm/io.h:57:76: note: expanded from macro 'inl'
   #define inl(c)          ({ u32 __v; __io_pbr(); __v = readl_cpu((void*)(PCI_IOBASE + (c))); __io_par(__v); __v; })
                                                                           ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:89:76: note: expanded from macro 'readl_cpu'
   #define readl_cpu(c)            ({ u32 __r = le32_to_cpu((__force __le32)__raw_readl(c)); __r; })
                                                                                        ^
   include/uapi/linux/byteorder/little_endian.h:34:51: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) ((__force __u32)(__le32)(x))
                                                     ^
   In file included from mm/filemap.c:20:
   In file included from include/linux/kernel_stat.h:9:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:17:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:149:
   include/asm-generic/io.h:580:2: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           outb(value, addr);
           ^~~~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:59:68: note: expanded from macro 'outb'
   #define outb(v,c)       ({ __io_pbw(); writeb_cpu((v),(void*)(PCI_IOBASE + (c))); __io_paw(); })
                                                                 ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:91:52: note: expanded from macro 'writeb_cpu'
   #define writeb_cpu(v, c)        ((void)__raw_writeb((v), (c)))
                                                             ^
   In file included from mm/filemap.c:20:
   In file included from include/linux/kernel_stat.h:9:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:17:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:149:
   include/asm-generic/io.h:588:2: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           outw(value, addr);
           ^~~~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:60:68: note: expanded from macro 'outw'
   #define outw(v,c)       ({ __io_pbw(); writew_cpu((v),(void*)(PCI_IOBASE + (c))); __io_paw(); })
                                                                 ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:92:76: note: expanded from macro 'writew_cpu'
   #define writew_cpu(v, c)        ((void)__raw_writew((__force u16)cpu_to_le16(v), (c)))
                                                                                     ^
   In file included from mm/filemap.c:20:
   In file included from include/linux/kernel_stat.h:9:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:17:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:149:
   include/asm-generic/io.h:596:2: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           outl(value, addr);
           ^~~~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:61:68: note: expanded from macro 'outl'
   #define outl(v,c)       ({ __io_pbw(); writel_cpu((v),(void*)(PCI_IOBASE + (c))); __io_paw(); })
                                                                 ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:93:76: note: expanded from macro 'writel_cpu'
   #define writel_cpu(v, c)        ((void)__raw_writel((__force u32)cpu_to_le32(v), (c)))
                                                                                     ^
   In file included from mm/filemap.c:20:
   In file included from include/linux/kernel_stat.h:9:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:17:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:149:
   include/asm-generic/io.h:1005:55: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           return (port > MMIO_UPPER_LIMIT) ? NULL : PCI_IOBASE + port;
                                                     ~~~~~~~~~~ ^
   In file included from mm/filemap.c:23:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:22:
   In file included from include/linux/writeback.h:14:
   In file included from include/linux/blk-cgroup.h:23:
   In file included from include/linux/blkdev.h:26:
>> include/linux/scatterlist.h:137:10: error: use of undeclared identifier 'max_mapnr'
           BUG_ON(!virt_addr_valid(buf));
                   ^
   arch/riscv/include/asm/page.h:138:33: note: expanded from macro 'virt_addr_valid'
   #define virt_addr_valid(vaddr)  (pfn_valid(virt_to_pfn(vaddr)))
                                    ^
   arch/riscv/include/asm/page.h:133:62: note: expanded from macro 'pfn_valid'
           (((pfn) >= ARCH_PFN_OFFSET) && (((pfn) - ARCH_PFN_OFFSET) < max_mapnr))
                                                                       ^
   In file included from mm/filemap.c:24:
   include/linux/mman.h:156:9: warning: division by zero is undefined [-Wdivision-by-zero]
                  _calc_vm_trans(flags, MAP_SYNC,       VM_SYNC      ) |
                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/mman.h:133:21: note: expanded from macro '_calc_vm_trans'
      : ((x) & (bit1)) / ((bit1) / (bit2))))
                       ^ ~~~~~~~~~~~~~~~~~
   In file included from mm/filemap.c:45:
   mm/internal.h:459:8: error: use of undeclared identifier 'max_mapnr'
                   if (!pfn_valid(pfn))
                        ^
   arch/riscv/include/asm/page.h:133:62: note: expanded from macro 'pfn_valid'
           (((pfn) >= ARCH_PFN_OFFSET) && (((pfn) - ARCH_PFN_OFFSET) < max_mapnr))
                                                                       ^
   8 warnings and 2 errors generated.
--
   In file included from include/asm-generic/hardirq.h:17:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:149:
   include/asm-generic/io.h:564:9: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           return inw(addr);
                  ^~~~~~~~~
   arch/riscv/include/asm/io.h:56:76: note: expanded from macro 'inw'
   #define inw(c)          ({ u16 __v; __io_pbr(); __v = readw_cpu((void*)(PCI_IOBASE + (c))); __io_par(__v); __v; })
                                                                           ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:88:76: note: expanded from macro 'readw_cpu'
   #define readw_cpu(c)            ({ u16 __r = le16_to_cpu((__force __le16)__raw_readw(c)); __r; })
                                                                                        ^
   include/uapi/linux/byteorder/little_endian.h:36:51: note: expanded from macro '__le16_to_cpu'
   #define __le16_to_cpu(x) ((__force __u16)(__le16)(x))
                                                     ^
   In file included from mm/mempool.c:15:
   In file included from include/linux/highmem.h:10:
   In file included from include/linux/hardirq.h:10:
   In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:17:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:149:
   include/asm-generic/io.h:572:9: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           return inl(addr);
                  ^~~~~~~~~
   arch/riscv/include/asm/io.h:57:76: note: expanded from macro 'inl'
   #define inl(c)          ({ u32 __v; __io_pbr(); __v = readl_cpu((void*)(PCI_IOBASE + (c))); __io_par(__v); __v; })
                                                                           ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:89:76: note: expanded from macro 'readl_cpu'
   #define readl_cpu(c)            ({ u32 __r = le32_to_cpu((__force __le32)__raw_readl(c)); __r; })
                                                                                        ^
   include/uapi/linux/byteorder/little_endian.h:34:51: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) ((__force __u32)(__le32)(x))
                                                     ^
   In file included from mm/mempool.c:15:
   In file included from include/linux/highmem.h:10:
   In file included from include/linux/hardirq.h:10:
   In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:17:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:149:
   include/asm-generic/io.h:580:2: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           outb(value, addr);
           ^~~~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:59:68: note: expanded from macro 'outb'
   #define outb(v,c)       ({ __io_pbw(); writeb_cpu((v),(void*)(PCI_IOBASE + (c))); __io_paw(); })
                                                                 ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:91:52: note: expanded from macro 'writeb_cpu'
   #define writeb_cpu(v, c)        ((void)__raw_writeb((v), (c)))
                                                             ^
   In file included from mm/mempool.c:15:
   In file included from include/linux/highmem.h:10:
   In file included from include/linux/hardirq.h:10:
   In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:17:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:149:
   include/asm-generic/io.h:588:2: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           outw(value, addr);
           ^~~~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:60:68: note: expanded from macro 'outw'
   #define outw(v,c)       ({ __io_pbw(); writew_cpu((v),(void*)(PCI_IOBASE + (c))); __io_paw(); })
                                                                 ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:92:76: note: expanded from macro 'writew_cpu'
   #define writew_cpu(v, c)        ((void)__raw_writew((__force u16)cpu_to_le16(v), (c)))
                                                                                     ^
   In file included from mm/mempool.c:15:
   In file included from include/linux/highmem.h:10:
   In file included from include/linux/hardirq.h:10:
   In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:17:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:149:
   include/asm-generic/io.h:596:2: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           outl(value, addr);
           ^~~~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:61:68: note: expanded from macro 'outl'
   #define outl(v,c)       ({ __io_pbw(); writel_cpu((v),(void*)(PCI_IOBASE + (c))); __io_paw(); })
                                                                 ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:93:76: note: expanded from macro 'writel_cpu'
   #define writel_cpu(v, c)        ((void)__raw_writel((__force u32)cpu_to_le32(v), (c)))
                                                                                     ^
   In file included from mm/mempool.c:15:
   In file included from include/linux/highmem.h:10:
   In file included from include/linux/hardirq.h:10:
   In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:17:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:149:
   include/asm-generic/io.h:1005:55: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           return (port > MMIO_UPPER_LIMIT) ? NULL : PCI_IOBASE + port;
                                                     ~~~~~~~~~~ ^
   In file included from mm/mempool.c:20:
   In file included from include/linux/blkdev.h:26:
>> include/linux/scatterlist.h:137:10: error: use of undeclared identifier 'max_mapnr'
           BUG_ON(!virt_addr_valid(buf));
                   ^
   arch/riscv/include/asm/page.h:138:33: note: expanded from macro 'virt_addr_valid'
   #define virt_addr_valid(vaddr)  (pfn_valid(virt_to_pfn(vaddr)))
                                    ^
   arch/riscv/include/asm/page.h:133:62: note: expanded from macro 'pfn_valid'
           (((pfn) >= ARCH_PFN_OFFSET) && (((pfn) - ARCH_PFN_OFFSET) < max_mapnr))
                                                                       ^
   7 warnings and 1 error generated.
--
   In file included from include/asm-generic/hardirq.h:17:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:149:
   include/asm-generic/io.h:572:9: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           return inl(addr);
                  ^~~~~~~~~
   arch/riscv/include/asm/io.h:57:76: note: expanded from macro 'inl'
   #define inl(c)          ({ u32 __v; __io_pbr(); __v = readl_cpu((void*)(PCI_IOBASE + (c))); __io_par(__v); __v; })
                                                                           ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:89:76: note: expanded from macro 'readl_cpu'
   #define readl_cpu(c)            ({ u32 __r = le32_to_cpu((__force __le32)__raw_readl(c)); __r; })
                                                                                        ^
   include/uapi/linux/byteorder/little_endian.h:34:51: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) ((__force __u32)(__le32)(x))
                                                     ^
   In file included from mm/oom_kill.c:30:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:13:
   In file included from include/linux/cgroup.h:26:
   In file included from include/linux/kernel_stat.h:9:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:17:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:149:
   include/asm-generic/io.h:580:2: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           outb(value, addr);
           ^~~~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:59:68: note: expanded from macro 'outb'
   #define outb(v,c)       ({ __io_pbw(); writeb_cpu((v),(void*)(PCI_IOBASE + (c))); __io_paw(); })
                                                                 ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:91:52: note: expanded from macro 'writeb_cpu'
   #define writeb_cpu(v, c)        ((void)__raw_writeb((v), (c)))
                                                             ^
   In file included from mm/oom_kill.c:30:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:13:
   In file included from include/linux/cgroup.h:26:
   In file included from include/linux/kernel_stat.h:9:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:17:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:149:
   include/asm-generic/io.h:588:2: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           outw(value, addr);
           ^~~~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:60:68: note: expanded from macro 'outw'
   #define outw(v,c)       ({ __io_pbw(); writew_cpu((v),(void*)(PCI_IOBASE + (c))); __io_paw(); })
                                                                 ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:92:76: note: expanded from macro 'writew_cpu'
   #define writew_cpu(v, c)        ((void)__raw_writew((__force u16)cpu_to_le16(v), (c)))
                                                                                     ^
   In file included from mm/oom_kill.c:30:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:13:
   In file included from include/linux/cgroup.h:26:
   In file included from include/linux/kernel_stat.h:9:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:17:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:149:
   include/asm-generic/io.h:596:2: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           outl(value, addr);
           ^~~~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:61:68: note: expanded from macro 'outl'
   #define outl(v,c)       ({ __io_pbw(); writel_cpu((v),(void*)(PCI_IOBASE + (c))); __io_paw(); })
                                                                 ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:93:76: note: expanded from macro 'writel_cpu'
   #define writel_cpu(v, c)        ((void)__raw_writel((__force u32)cpu_to_le32(v), (c)))
                                                                                     ^
   In file included from mm/oom_kill.c:30:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:13:
   In file included from include/linux/cgroup.h:26:
   In file included from include/linux/kernel_stat.h:9:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:17:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:149:
   include/asm-generic/io.h:1005:55: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           return (port > MMIO_UPPER_LIMIT) ? NULL : PCI_IOBASE + port;
                                                     ~~~~~~~~~~ ^
   In file included from mm/oom_kill.c:30:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:22:
   In file included from include/linux/writeback.h:14:
   In file included from include/linux/blk-cgroup.h:23:
   In file included from include/linux/blkdev.h:26:
>> include/linux/scatterlist.h:137:10: error: use of undeclared identifier 'max_mapnr'
           BUG_ON(!virt_addr_valid(buf));
                   ^
   arch/riscv/include/asm/page.h:138:33: note: expanded from macro 'virt_addr_valid'
   #define virt_addr_valid(vaddr)  (pfn_valid(virt_to_pfn(vaddr)))
                                    ^
   arch/riscv/include/asm/page.h:133:62: note: expanded from macro 'pfn_valid'
           (((pfn) >= ARCH_PFN_OFFSET) && (((pfn) - ARCH_PFN_OFFSET) < max_mapnr))
                                                                       ^
   In file included from mm/oom_kill.c:48:
   mm/internal.h:459:8: error: use of undeclared identifier 'max_mapnr'
                   if (!pfn_valid(pfn))
                        ^
   arch/riscv/include/asm/page.h:133:62: note: expanded from macro 'pfn_valid'
           (((pfn) >= ARCH_PFN_OFFSET) && (((pfn) - ARCH_PFN_OFFSET) < max_mapnr))
                                                                       ^
   7 warnings and 2 errors generated.
..


vim +/max_mapnr +137 include/linux/scatterlist.h

82f66fbef58de4ad Jens Axboe    2007-10-22  125  
18dabf473e15850c Jens Axboe    2007-10-22  126  /**
18dabf473e15850c Jens Axboe    2007-10-22  127   * sg_set_buf - Set sg entry to point at given data
18dabf473e15850c Jens Axboe    2007-10-22  128   * @sg:		 SG entry
18dabf473e15850c Jens Axboe    2007-10-22  129   * @buf:	 Data
18dabf473e15850c Jens Axboe    2007-10-22  130   * @buflen:	 Data length
18dabf473e15850c Jens Axboe    2007-10-22  131   *
18dabf473e15850c Jens Axboe    2007-10-22  132   **/
82f66fbef58de4ad Jens Axboe    2007-10-22  133  static inline void sg_set_buf(struct scatterlist *sg, const void *buf,
d32311fed70d12f1 Herbert Xu    2005-09-17  134  			      unsigned int buflen)
d32311fed70d12f1 Herbert Xu    2005-09-17  135  {
ac4e97abce9b80c0 Rusty Russell 2013-05-30  136  #ifdef CONFIG_DEBUG_SG
ac4e97abce9b80c0 Rusty Russell 2013-05-30 @137  	BUG_ON(!virt_addr_valid(buf));
ac4e97abce9b80c0 Rusty Russell 2013-05-30  138  #endif
642f149031d70415 Jens Axboe    2007-10-24  139  	sg_set_page(sg, virt_to_page(buf), buflen, offset_in_page(buf));
d32311fed70d12f1 Herbert Xu    2005-09-17  140  }
d32311fed70d12f1 Herbert Xu    2005-09-17  141  

:::::: The code at line 137 was first introduced by commit
:::::: ac4e97abce9b80c020e7113325f49e58b7b15e3f scatterlist: sg_set_buf() argument must be in linear mapping

:::::: TO: Rusty Russell <rusty@rustcorp.com.au>
:::::: CC: Jens Axboe <axboe@kernel.dk>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202103072157.TAlyfucF-lkp%40intel.com.

--5mCyUwZo2JvN/JJP
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICFmnRGAAAy5jb25maWcAjDxNd9u2svv+Cp1007u4jS07dvze8QIEQREVv0yAsuwNj6LI
qV4cK0eW0/bfvxmQFAFwqDSnta2ZwWCAGcwXQf36y68T9nbYfVsdtuvV8/M/ky+bl81+ddh8
njxtnzf/OwnzSZbriQil/h2Ik+3L29/v99vX9Y/Jh9/Pz38/++9+PZ3MN/uXzfOE716etl/e
YPx29/LLr7/wPIvkrOa8XohSyTyrtVjq23fr59XLl8mPzf4V6CbnF7+f/X42+e3L9vA/79/D
z2/b/X63f//8/ONb/X2/+7/N+jC5/Hxztrm8Ovu0Xl9/uth8eHq6Wl9vppuzD5ub68vr6+nl
x5v15aeP/3nXzTrrp70964BJOIQBnVQ1T1g2u/3HIgRgkoQ9yFAch59fnMG/I7nF2MUA95ip
mqm0nuU6t9i5iDqvdFFpEi+zRGaiR8nyrr7Py3kP0XEpGIicRTn8qDVTiAQV/DqZGY0+T143
h7fvvVJkJnUtskXNShBfplLfXkyBvJs9TwuZCFCY0pPt6+Rld0AOx/XmnCXdgt+9o8A1q+zl
BpWEPVIs0RZ9KCJWJdoIQ4DjXOmMpeL23W8vu5cN6PYon3pQC1lwW7QjrsiVXNbpXSUqQRLc
M83jehxfKZHIgFg2q+Ac9GuK2ULA/gEvgwCZYPlJj/egRh2gu8nr26fXf14Pm2+9OmYiE6Xk
RrUqzu97JjZGZn8IrnHPSTSPZeFaSZinTGYuTMmUIqpjKUpczMOQeaokUo4iBvPELAvBelrO
zlBVsFIJmp1hJYJqFilA/jrZvHye7J68PaMGpWAusp21tBSAuuFglXOVVyUXjaENpjUUYiEy
rTo16e03cE+UprTk8zrPBGjJYpXldfyIpyY1yjmaEgALmCMPJW2rzTgJYhPm1iCjyrYp+IVO
tNYl43NpXJZ1aF1cHeWw6DHGjphyFtelULC6FI6vK2qrhcGWWCeuFCItNPDNqOk69CJPqkyz
8sGeukWeGMZzGNUphhfVe716/To5gDiTFYj2elgdXier9Xr39nLYvnzpVbWQJYwuqppxw0Pa
Hp5AokHYoqFl4YZYJKQSAxWCsDkXSiEptRb0yEozY2AWCKw9YQ9mkIdYEjCZuyvp91BJUmX/
YrOOdgU7IVWesNa9mM0ueTVRxBEAxdSAs0WAj7VYgq1Tq1cNsT3cA+H2GB7tmSRQA1AVCgqO
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
oKgQyP8AJszHJZe4AQA=

--5mCyUwZo2JvN/JJP--
