Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBP6M7T7AKGQE5R37E7A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53c.google.com (mail-pg1-x53c.google.com [IPv6:2607:f8b0:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AC3A2DF4FF
	for <lists+clang-built-linux@lfdr.de>; Sun, 20 Dec 2020 11:24:01 +0100 (CET)
Received: by mail-pg1-x53c.google.com with SMTP id f6sf4732433pgh.3
        for <lists+clang-built-linux@lfdr.de>; Sun, 20 Dec 2020 02:24:01 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608459840; cv=pass;
        d=google.com; s=arc-20160816;
        b=p9TkxgJ5hKzkmW1N+TahwcTbugQoIM6RNkD2e9h9jWEIXXQ82bh8H6NENVEJAbcKTT
         f/ts7a3V0D6KEKYeVDdgbxQcUxrCR2pelG3TV7rN9e9CD6ysK/CAWmt2dzBCI3X/cViw
         x0+qxLkLE8C/Jjb3ffpgRVwHXaeEryR6p/Ph9PthlOiJPYrXjbVoHaVSi3EikxHKTtFW
         O349x8WEf6EcFzuWnKr+IekEZPUr73LEAwiqxVMwA110n+mZulJ45Pi0+EBHeCWbDqX7
         AR74yg7cP/LjoRCC/nQ6GWsZdM68qlIG4D5AHnBTH8K29kXlAVJroroaC7xFa2gqACYQ
         +C4Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=3rAmFNyU5CgzpyRX0lECcEDSBKpDv/cW9r9knj8JV08=;
        b=cUqtPzCgy+0770IjSbThNDGPpLr36rdMX6BwK2konptIypvCcfhMAXP3/B0HxgVAmg
         UXdLUGo6ZyirtDpfBnOmYVFOdMvqSgXNDxWF3x/o2Inz4qeJltoKRfJb6Ag2yDIOecXM
         hJ+oN20QmZQKrUkDzwTNxf4c/sjFfBIHG97rBHd4FIYkfXVShHp9qrovDcFTVZA+eOYY
         GWMsrqUq4g89iOfGM2peR/T0twJi/2z909pj07IY7LMuya83hsaDsEtS/QP22YzFZcZh
         v/ADQCjwPh1Jw5lU7z1DXD96YlWRMEEtvcPb1UFFZDG+ZqjUC456IUCaZ04BaBzGrn3m
         BitA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3rAmFNyU5CgzpyRX0lECcEDSBKpDv/cW9r9knj8JV08=;
        b=aqTRmvJUS61jKYlysI8Caf3SG1VlEnajxQgcy8cGUCjjgxj+P8Y3qMW+N7xjHoVp3Q
         w70sWjp5/owmoow/dIHYM5lu7+JsAyO4poK5jwNldYtg6Y2GXLdkSjkzdW4LLRTadrfz
         sDVwaiQAAgdK4fMaPO/k0NC+uka2P5F/doN89uTr++0rQKHLAI+/vUy/+PrMUOQGTgwF
         ncQY6Jyrk19qyFtZQls06+cCdEPTXks2LRfOiBcIP/wGbaJknpFB/QqzATuScQEjoXmj
         HwNm8aYK718Ro6SGZ0Z/+f1zWSjeQYoSDwAfuKvhMkakOOPc1cKfGpbMwuJcULwUttCG
         Sn4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=3rAmFNyU5CgzpyRX0lECcEDSBKpDv/cW9r9knj8JV08=;
        b=IhoUrDkJXPfvkEARFc9hibKOwIolAc2JjTrJYJ2qRi2D31GYui5Ai7jPXYOsSboZOI
         SrLpy2LhNSwbNmhZVqcY7eReJSXLZju/ASVToYx/A71wCDlrZaSXbw//znognrgam8f0
         KVhADIywUNUCxcF3BRJSAZOs0xhV3aAKH4fixlKcm0XpM3CmuWtt8LXLeOMcUHdjRtRc
         5OKvnQblgDB54ed8r/BlasuSOT+cm032i6jy9JQo4N227vsBFMqwSWD+wJ5xOAHVxRAW
         lA7Q74YknEGVY7P2BahBvBNa38gRozAmccwEPo+aM7msnh7ABuu7u0qtVKIq5OhbQEXb
         2lGw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531+D0SDg+wx3PIfBELvTynmmTvEZL/+zRtj5jP0d0SJV+7fnKbe
	q2gcNFU2eVjc2l7GiuLP9ms=
X-Google-Smtp-Source: ABdhPJxT8XsMDs1OUN79xSoMaT1vgzru8tP2So7RBLjU6Fuvk1ommPL4uFjvKbNyrMCJxwrJIla+Tw==
X-Received: by 2002:a65:4785:: with SMTP id e5mr11230763pgs.0.1608459839877;
        Sun, 20 Dec 2020 02:23:59 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:9155:: with SMTP id 21ls13799260pfi.3.gmail; Sun, 20 Dec
 2020 02:23:59 -0800 (PST)
X-Received: by 2002:a63:3d8:: with SMTP id 207mr10757837pgd.215.1608459839083;
        Sun, 20 Dec 2020 02:23:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608459839; cv=none;
        d=google.com; s=arc-20160816;
        b=efXAjZL5ERoJD2JsYx/RspdObOIf6hnR0LxAQa4qD1urKktjEzNZOpUaYD/lwzSVwk
         Nja1VWbwdeDu9RbZcUcYOyAcHfACq8IUGFbthTasxJcVqX+BZXLKjRaIcflOjdGldyYH
         oQtWdFs4KVBkY7Tgk3fyJGvzku8yKUxGnE3m/Q8lJMTzy7eSppUu7ICkgiAw8zV1O6Ew
         ayARx35MowV2aVLtBFy1Pj1zeXHFsKocPog8rM2j2FXO7phZdyTXZH1B1LYanu7tvfH4
         kG4PV68cb3vJ3PQu8fSWpmy9DHsFf26JTnmnHmeDcbz2ruEO39XVuv8QDY7b2+ynd9Gl
         Ge7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :from:date:ironport-sdr:ironport-sdr;
        bh=TAhQRHnGSd9RkWEjbBzQ475GznoZGqm2DdRPbKJlD2Q=;
        b=OqJ+1aaRM4X1SF4YXCDuBnF2jSXQSQ6ul6rHnCBVGWh0AXs+jtlSM3JvHXjnkKljT8
         u6II6Ewm/Aj5S2gHR2UTO2u9nKt3ZY77qeg8uk5g85yncRy7ChyvAMY9Vlsuxc4+m73W
         lmLkGh0qGE7k98kbIAXR80HeuASRb6hu0PAFwkp+RNWPRd+l72kYFOBiLJLfkhVD0zsV
         QwznrBIEy5XVJH05n6hCtYM5K7mXhPMCfUW5BxoB79zboacr665iqDKdB+fC/hEbHE1c
         FLgMtyyIFc01L8LrYY+h6oGk+oNkzqqKvXHjSDDhgqRpAJ9x86GXdqJ9iOEn6jCFDrpR
         bBoQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga11.intel.com (mga11.intel.com. [192.55.52.93])
        by gmr-mx.google.com with ESMTPS id r142si396758pfr.0.2020.12.20.02.23.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 20 Dec 2020 02:23:59 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) client-ip=192.55.52.93;
IronPort-SDR: Wt1jO9vsx7kP+n+aMlrI65msLNzAxK0jGlkidkDvF3hZYqX8ZvQ+nJZA8+P3b2TPaLPzK7kSX2
 iJzbWIVGiZhA==
X-IronPort-AV: E=McAfee;i="6000,8403,9840"; a="172118687"
X-IronPort-AV: E=Sophos;i="5.78,434,1599548400"; 
   d="gz'50?scan'50,208,50";a="172118687"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Dec 2020 02:23:58 -0800
IronPort-SDR: Ifb5jagpKu+B+cFHuDh8FNME1VzIXVuZm6524QmBhWAM9YWfsmPaPVRZQtjTPGermYJ0HIcJPf
 7pqu2bG+NQOA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,434,1599548400"; 
   d="gz'50?scan'50,208,50";a="455416370"
Received: from lkp-server02.sh.intel.com (HELO c4fb2a2464e8) ([10.239.97.151])
  by fmsmga001.fm.intel.com with ESMTP; 20 Dec 2020 02:23:56 -0800
Received: from kbuild by c4fb2a2464e8 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kqvsZ-0002lI-W2; Sun, 20 Dec 2020 10:23:55 +0000
Date: Sun, 20 Dec 2020 18:23:37 +0800
From: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [tip:efi/core 2/7] /tmp/cfi_util-545227.s:205: Error: unrecognized
 opcode `zext.b a5,s2'
Message-ID: <202012201830.TdagmfEn-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="opJtzjQTFsWo+cga"
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


--opJtzjQTFsWo+cga
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

CC: linux-kernel@vger.kernel.org
CC: x86@kernel.org
TO: Arvind Sankar <nivedita@alum.mit.edu>
CC: Ard Biesheuvel <ardb@kernel.org>

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git efi/core
head:   b283477d394ac41ca59ee20eb9293ae9002eb1d7
commit: 688eb28211abdf82a3f51e8997f1c8137947227d [2/7] efi/x86: Only copy the compressed kernel image in efi_relocate_kernel()
config: riscv-randconfig-r022-20201217 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project cee1e7d14f4628d6174b33640d502bff3b54ae45)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install riscv cross compiling tool for clang build
        # apt-get install binutils-riscv64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git/commit/?id=688eb28211abdf82a3f51e8997f1c8137947227d
        git remote add tip https://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git
        git fetch --no-tags tip efi/core
        git checkout 688eb28211abdf82a3f51e8997f1c8137947227d
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=riscv 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   In file included from drivers/mtd/chips/cfi_util.c:14:
   In file included from arch/riscv/include/asm/io.h:149:
   include/asm-generic/io.h:556:9: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           return inb(addr);
                  ^~~~~~~~~
   arch/riscv/include/asm/io.h:55:76: note: expanded from macro 'inb'
   #define inb(c)          ({ u8  __v; __io_pbr(); __v = readb_cpu((void*)(PCI_IOBASE + (c))); __io_par(__v); __v; })
                                                                           ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:87:48: note: expanded from macro 'readb_cpu'
   #define readb_cpu(c)            ({ u8  __r = __raw_readb(c); __r; })
                                                            ^
   In file included from drivers/mtd/chips/cfi_util.c:14:
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
   In file included from drivers/mtd/chips/cfi_util.c:14:
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
   In file included from drivers/mtd/chips/cfi_util.c:14:
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
   In file included from drivers/mtd/chips/cfi_util.c:14:
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
   In file included from drivers/mtd/chips/cfi_util.c:14:
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
   In file included from drivers/mtd/chips/cfi_util.c:14:
   In file included from arch/riscv/include/asm/io.h:149:
   include/asm-generic/io.h:1005:55: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           return (port > MMIO_UPPER_LIMIT) ? NULL : PCI_IOBASE + port;
                                                     ~~~~~~~~~~ ^
   7 warnings generated.
   /tmp/cfi_util-545227.s: Assembler messages:
>> /tmp/cfi_util-545227.s:205: Error: unrecognized opcode `zext.b a5,s2'
   clang-12: error: assembler command failed with exit code 1 (use -v to see invocation)
--
   #define readb_cpu(c)            ({ u8  __r = __raw_readb(c); __r; })
                                                            ^
   In file included from kernel/workqueue.c:39:
   In file included from include/linux/hardirq.h:10:
   In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:13:
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
   In file included from kernel/workqueue.c:39:
   In file included from include/linux/hardirq.h:10:
   In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:13:
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
   In file included from kernel/workqueue.c:39:
   In file included from include/linux/hardirq.h:10:
   In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:13:
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
   In file included from kernel/workqueue.c:39:
   In file included from include/linux/hardirq.h:10:
   In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:13:
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
   In file included from kernel/workqueue.c:39:
   In file included from include/linux/hardirq.h:10:
   In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:13:
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
   In file included from kernel/workqueue.c:39:
   In file included from include/linux/hardirq.h:10:
   In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:13:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:149:
   include/asm-generic/io.h:1005:55: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           return (port > MMIO_UPPER_LIMIT) ? NULL : PCI_IOBASE + port;
                                                     ~~~~~~~~~~ ^
   7 warnings generated.
   /tmp/workqueue-056927.s: Assembler messages:
>> /tmp/workqueue-056927.s:12693: Error: unrecognized opcode `zext.b a2,s1'
   clang-12: error: assembler command failed with exit code 1 (use -v to see invocation)
--
                                                     ^
   In file included from drivers/bcma/driver_chipcommon_pmu.c:12:
   In file included from drivers/bcma/bcma_private.h:9:
   In file included from include/linux/bcma/bcma.h:5:
   In file included from include/linux/pci.h:38:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:13:
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
   In file included from drivers/bcma/driver_chipcommon_pmu.c:12:
   In file included from drivers/bcma/bcma_private.h:9:
   In file included from include/linux/bcma/bcma.h:5:
   In file included from include/linux/pci.h:38:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:13:
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
   In file included from drivers/bcma/driver_chipcommon_pmu.c:12:
   In file included from drivers/bcma/bcma_private.h:9:
   In file included from include/linux/bcma/bcma.h:5:
   In file included from include/linux/pci.h:38:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:13:
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
   In file included from drivers/bcma/driver_chipcommon_pmu.c:12:
   In file included from drivers/bcma/bcma_private.h:9:
   In file included from include/linux/bcma/bcma.h:5:
   In file included from include/linux/pci.h:38:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:13:
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
   In file included from drivers/bcma/driver_chipcommon_pmu.c:12:
   In file included from drivers/bcma/bcma_private.h:9:
   In file included from include/linux/bcma/bcma.h:5:
   In file included from include/linux/pci.h:38:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:13:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:149:
   include/asm-generic/io.h:1005:55: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           return (port > MMIO_UPPER_LIMIT) ? NULL : PCI_IOBASE + port;
                                                     ~~~~~~~~~~ ^
   7 warnings generated.
   /tmp/driver_chipcommon_pmu-623081.s: Assembler messages:
>> /tmp/driver_chipcommon_pmu-623081.s:655: Error: unrecognized opcode `zext.b a4,a0'
>> /tmp/driver_chipcommon_pmu-623081.s:1681: Error: unrecognized opcode `zext.b s3,a0'
>> /tmp/driver_chipcommon_pmu-623081.s:2210: Error: unrecognized opcode `zext.b s3,a2'
   clang-12: error: assembler command failed with exit code 1 (use -v to see invocation)
--
   /tmp/hexdump-633179.s: Assembler messages:
>> /tmp/hexdump-633179.s:120: Error: unrecognized opcode `zext.b a1,a0'
   /tmp/hexdump-633179.s:122: Error: unrecognized opcode `zext.b a0,a0'
   clang-12: error: assembler command failed with exit code 1 (use -v to see invocation)
--
   /tmp/nls_koi8-r-130682.s: Assembler messages:
>> /tmp/nls_koi8-r-130682.s:96: Error: unrecognized opcode `zext.b a2,s3'
   clang-12: error: assembler command failed with exit code 1 (use -v to see invocation)

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202012201830.TdagmfEn-lkp%40intel.com.

--opJtzjQTFsWo+cga
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--opJtzjQTFsWo+cga--
