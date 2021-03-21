Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBJ5S3KBAMGQERCGGXPQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3d.google.com (mail-vk1-xa3d.google.com [IPv6:2607:f8b0:4864:20::a3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B8BF34306A
	for <lists+clang-built-linux@lfdr.de>; Sun, 21 Mar 2021 01:54:01 +0100 (CET)
Received: by mail-vk1-xa3d.google.com with SMTP id n196sf13843869vkn.23
        for <lists+clang-built-linux@lfdr.de>; Sat, 20 Mar 2021 17:54:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616288040; cv=pass;
        d=google.com; s=arc-20160816;
        b=p8TBaDw6fxpyjEst8JoRx74pS7lf7x5FyZVOMF0PeFk6kpjo2PQ1qytEjblhqpSRtD
         Hvpgc/pBwXCbPCtyiH4WDV70pYMwNyd2d5dPx/X9SajnDTvrnY+lZ7ITOSxE3O9/Ct0y
         EMlw3T/MfAxcoRnjXyaqAPiJvWnbt0QMdyWofjbyKmGnFtGBKMKw82dAktIclNj3zF2f
         H39RnjV+rqfOvcFKtdb1O5vPZxcS3n7PZAkVXaLEBC973f6GzY4vVjV3ovJoezpSLYsN
         H26IrLt/u2MXlkfAYiGN71OSgQsCFC0xIZk63rMoUaHvLXg1p3dx1cWOegXzP7KtT6j1
         eXgw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=tKUXPYtz6de9MrLrkG33h7f7vh33b7q8t+TUeuToiL4=;
        b=iEj1FkudGFqFmNKEURxdVh9HtRNwRuzYd76HSyqt/JU1iHMNZexTWeorWU5rBT3M4M
         yPHLNrAWWOHnUh08id88pz6MpHSxDna0FjF66rPDU2uRLYx9l5Wiwc0eAHgOxriUqbAb
         lxteumGEz9gbZGyVOTh7BAXF2HyqniantHp+N7xul8cAO7boqxFRK9VUAMg0aTdxKL+0
         Mzw7+Ngv4529UGT++hkvCcPFmw0jQtJrvP/m9ZXK7/AgKAKVanwMyz1bLMncYL7kIBZ/
         1iiCwqESdDVH1an/TgO0nUcAx8z+MhgkF6cDnDnVaokfmDeEStvMK8EMAr04/hJbQe11
         9Ijw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tKUXPYtz6de9MrLrkG33h7f7vh33b7q8t+TUeuToiL4=;
        b=l8YZ9JhRbZC+RvNMyqem5a5KT2CIQF0f2gM6YYGyDBVmB1lzDPkzaq6DMxi/Km1J8g
         9o8s6SToF7Fm9CuUmkECmJlb0Ga3DPQgifSIjL/+oFuywm2IYU/pFKKfiqNCn1ovyQRE
         QC5C16ue4kTLICooRD8SEjeVbSvX1jTjIxCoXUDUZyralOY5CrWXEFTVTztC9OpRHk6I
         ya1ZDbVn9GKdLemQjm0LmnBVexaDE8/4DPoZPPkBN64dCvNpWziiuNR27u+ZaZdpJQdf
         FbaaiO3ApgJ6TCesdlscqFJV8n9hYC7vyP/ThEePf5vB9HV229lOMX1CC2R1gl6r/RG2
         birA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=tKUXPYtz6de9MrLrkG33h7f7vh33b7q8t+TUeuToiL4=;
        b=Y74KO7VHjdM3yv+CVe6JT+AEC+pBW+lrGG77EdoktAJ8hh5yOiyqeROTmPhzXoxIrr
         zCFk2GHucHy/GKURk49LnlKUgb84ldCIdo/mnOgLmeCxdU63lL75QrxnCQ90TqQf+b6C
         Ds0qvPJRSsdljA3eyPysO+spCe6j8mkrtl9IlOc42/x4bnfSUntCDcFashnVWa2+cbiV
         KkpObj19wYLTk3iDZE39SQq7zo5zxUliY1sU1D828qXTS2r06E94Db/zOxmGQ35jQ/ta
         kKBeingjQgE5ttW+ijyTSs4rg5BpxsZiMjVfKylfMRMZPDdUbMbEsM1c+oFTlvAY5ogM
         1E9Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530xLup0LMHyGm7mCgnNemdx7ciPPpd57Aw4LuO7fIuWnlMsJIXE
	BCBz0hHRZQtMfTTJduOaV20=
X-Google-Smtp-Source: ABdhPJywGqz4Z2YPfBAs3U9pGld0/JBcZRxJKlwZNi4l+quzLblkXGMSQXd0m3VVMsuzl4YBfilQ3g==
X-Received: by 2002:a67:e05:: with SMTP id 5mr6357134vso.15.1616288039785;
        Sat, 20 Mar 2021 17:53:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:2404:: with SMTP id j4ls1107939vsi.2.gmail; Sat, 20
 Mar 2021 17:53:59 -0700 (PDT)
X-Received: by 2002:a67:ed84:: with SMTP id d4mr1443154vsp.9.1616288039199;
        Sat, 20 Mar 2021 17:53:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616288039; cv=none;
        d=google.com; s=arc-20160816;
        b=ewN4Mb4TMhtcJtNSvdKydqrEgTC1RqIiY9ITDerHIi7HSj64CKncUUZ1y5WGmb0T5F
         OrAgWFMPcjY9RHYS9U0x/OV4o9uBE67cnKuPVJ6s2W7av2FSBgwwq7wy5Yw04vRAAcXI
         U3y1o/ek52NHAffWRRdk5c4t7qr8i3ET1otD6qz5Ho/zSNrmH9F4gVGG9WG1RgFkmo7d
         QIHBRC8WX96OHt6r03eO2OcYsvlQZ/mkUIvwXakMEcfnF+YMwO0pLkweCqmlUWQWDdrT
         bWMMIr4ObJ0ryLb99YivKWrDkrChs8ir2wLV5jRW3d65UmzhQ578BTlCGo8BxcVwMk/C
         sztw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=26m5hbHaM0NFfBBiAn0NPnas4PpyfFUXGqfHcLQdi2Y=;
        b=tgLpHw/FY7AKtNIIRWGEFykLuGd4c+/yW3pqC6hV2iYa3mmXXIe1b7xnnszaagG+NP
         n7VqTV21xTs6VOAeE6vXWRo9xwmZ0ymHFq/grNnrH9fl4/WDHNH9MbnUwpUmNTuV1dng
         MjTnaB7bTQQkrdDN/IcM61GusfnMK8B8mbJWzT+vpQUFx0Ogkokj/Snu0Ey4MyZg+s6M
         ysfoReUII1EbTf6hmie6WTQmyITnJXuGS7WGd077w5v5VY0qRU8cgDmG20/QLhJ8lF+q
         M6Q8RlMf8WsIcxxeQUBLcPoyQkCqRaF8sbHAzl/qfRiKeXXbpasdvewIp6mIbW/IbFAH
         OGZg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga12.intel.com (mga12.intel.com. [192.55.52.136])
        by gmr-mx.google.com with ESMTPS id j11si536469vsi.0.2021.03.20.17.53.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 20 Mar 2021 17:53:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) client-ip=192.55.52.136;
IronPort-SDR: ftCPdc2byH2xOCZhxZCNiJu7tbPNSn2Oo1I8Z3h/MBNyom+nfAQ/njNkuiJ/kU9hhmC0c18Hz7
 fjnLBbq0g2oA==
X-IronPort-AV: E=McAfee;i="6000,8403,9929"; a="169405354"
X-IronPort-AV: E=Sophos;i="5.81,265,1610438400"; 
   d="gz'50?scan'50,208,50";a="169405354"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Mar 2021 17:53:55 -0700
IronPort-SDR: SeCvEUSq5zOdPjL8bcCAbiZZx0nnLMrA2aiFeLo8LurC46iw9JEJ8FMI7tGfTST5dbHXkO5vWv
 6oXawJsdqbZQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,265,1610438400"; 
   d="gz'50?scan'50,208,50";a="407300628"
Received: from lkp-server02.sh.intel.com (HELO 1c294c63cb86) ([10.239.97.151])
  by fmsmga008.fm.intel.com with ESMTP; 20 Mar 2021 17:53:54 -0700
Received: from kbuild by 1c294c63cb86 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lNmLp-0002qi-P7; Sun, 21 Mar 2021 00:53:53 +0000
Date: Sun, 21 Mar 2021 08:53:42 +0800
From: kernel test robot <lkp@intel.com>
To: Andy Lutomirski <luto@kernel.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [luto:x86/kentry 1/10] arch/s390/kernel/traps.c:300:2: error:
 unknown type name 'irqentry_state_t'; did you mean
Message-ID: <202103210836.htOYIRaL-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="dDRMvlgZJXvWKvBx"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted
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


--dDRMvlgZJXvWKvBx
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/luto/linux.git x86/kentry
head:   b0d7a5e5a9b11a6ddb50b90e31877e3cb1f93362
commit: 5dcab84f1c3db061936e3d79f78222f9e89a33e2 [1/10] kentry: Rename irqentry to kentry
config: s390-randconfig-r011-20210321 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 14696baaf4c43fe53f738bc292bbe169eed93d5d)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install s390 cross compiling tool for clang build
        # apt-get install binutils-s390x-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/luto/linux.git/commit/?id=5dcab84f1c3db061936e3d79f78222f9e89a33e2
        git remote add luto https://git.kernel.org/pub/scm/linux/kernel/git/luto/linux.git
        git fetch --no-tags luto x86/kentry
        git checkout 5dcab84f1c3db061936e3d79f78222f9e89a33e2
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=s390 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   In file included from arch/s390/kernel/traps.c:28:
   In file included from include/linux/entry-common.h:6:
   In file included from include/linux/tracehook.h:50:
   In file included from include/linux/memcontrol.h:22:
   In file included from include/linux/writeback.h:14:
   In file included from include/linux/blk-cgroup.h:23:
   In file included from include/linux/blkdev.h:26:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:80:
   include/asm-generic/io.h:464:31: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __raw_readb(PCI_IOBASE + addr);
                             ~~~~~~~~~~ ^
   include/asm-generic/io.h:477:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le16_to_cpu((__le16 __force)__raw_readw(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:36:59: note: expanded from macro '__le16_to_cpu'
   #define __le16_to_cpu(x) __swab16((__force __u16)(__le16)(x))
                                                             ^
   include/uapi/linux/swab.h:102:54: note: expanded from macro '__swab16'
   #define __swab16(x) (__u16)__builtin_bswap16((__u16)(x))
                                                        ^
   In file included from arch/s390/kernel/traps.c:28:
   In file included from include/linux/entry-common.h:6:
   In file included from include/linux/tracehook.h:50:
   In file included from include/linux/memcontrol.h:22:
   In file included from include/linux/writeback.h:14:
   In file included from include/linux/blk-cgroup.h:23:
   In file included from include/linux/blkdev.h:26:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:80:
   include/asm-generic/io.h:490:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:115:54: note: expanded from macro '__swab32'
   #define __swab32(x) (__u32)__builtin_bswap32((__u32)(x))
                                                        ^
   In file included from arch/s390/kernel/traps.c:28:
   In file included from include/linux/entry-common.h:6:
   In file included from include/linux/tracehook.h:50:
   In file included from include/linux/memcontrol.h:22:
   In file included from include/linux/writeback.h:14:
   In file included from include/linux/blk-cgroup.h:23:
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
>> arch/s390/kernel/traps.c:300:2: error: unknown type name 'irqentry_state_t'; did you mean 'kentry_state_t'?
           irqentry_state_t state;
           ^~~~~~~~~~~~~~~~
           kentry_state_t
   include/linux/entry-common.h:416:3: note: 'kentry_state_t' declared here
   } kentry_state_t;
     ^
>> arch/s390/kernel/traps.c:305:10: error: implicit declaration of function 'irqentry_enter' [-Werror,-Wimplicit-function-declaration]
           state = irqentry_enter(regs);
                   ^
   arch/s390/kernel/traps.c:305:10: note: did you mean 'kentry_enter'?
   include/linux/entry-common.h:450:24: note: 'kentry_enter' declared here
   kentry_state_t noinstr kentry_enter(struct pt_regs *regs);
                          ^
>> arch/s390/kernel/traps.c:305:8: error: assigning to 'kentry_state_t' (aka 'struct kentry_state') from incompatible type 'int'
           state = irqentry_enter(regs);
                 ^ ~~~~~~~~~~~~~~~~~~~~
>> arch/s390/kernel/traps.c:346:2: error: implicit declaration of function 'irqentry_exit' [-Werror,-Wimplicit-function-declaration]
           irqentry_exit(regs, state);
           ^
   arch/s390/kernel/traps.c:346:2: note: did you mean 'kentry_exit'?
   include/linux/entry-common.h:476:14: note: 'kentry_exit' declared here
   void noinstr kentry_exit(struct pt_regs *regs, kentry_state_t state);
                ^
   12 warnings and 4 errors generated.
--
   In file included from arch/s390/kernel/irq.c:23:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/s390/include/asm/io.h:80:
   include/asm-generic/io.h:464:31: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __raw_readb(PCI_IOBASE + addr);
                             ~~~~~~~~~~ ^
   include/asm-generic/io.h:477:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le16_to_cpu((__le16 __force)__raw_readw(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:36:59: note: expanded from macro '__le16_to_cpu'
   #define __le16_to_cpu(x) __swab16((__force __u16)(__le16)(x))
                                                             ^
   include/uapi/linux/swab.h:102:54: note: expanded from macro '__swab16'
   #define __swab16(x) (__u16)__builtin_bswap16((__u16)(x))
                                                        ^
   In file included from arch/s390/kernel/irq.c:23:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/s390/include/asm/io.h:80:
   include/asm-generic/io.h:490:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:115:54: note: expanded from macro '__swab32'
   #define __swab32(x) (__u32)__builtin_bswap32((__u32)(x))
                                                        ^
   In file included from arch/s390/kernel/irq.c:23:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
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
>> arch/s390/kernel/irq.c:135:2: error: unknown type name 'irqentry_state_t'; did you mean 'kentry_state_t'?
           irqentry_state_t state = irqentry_enter(regs);
           ^~~~~~~~~~~~~~~~
           kentry_state_t
   include/linux/entry-common.h:416:3: note: 'kentry_state_t' declared here
   } kentry_state_t;
     ^
>> arch/s390/kernel/irq.c:135:27: error: implicit declaration of function 'irqentry_enter' [-Werror,-Wimplicit-function-declaration]
           irqentry_state_t state = irqentry_enter(regs);
                                    ^
   arch/s390/kernel/irq.c:135:27: note: did you mean 'kentry_enter'?
   include/linux/entry-common.h:450:24: note: 'kentry_enter' declared here
   kentry_state_t noinstr kentry_enter(struct pt_regs *regs);
                          ^
>> arch/s390/kernel/irq.c:135:19: error: initializing 'kentry_state_t' (aka 'struct kentry_state') with an expression of incompatible type 'int'
           irqentry_state_t state = irqentry_enter(regs);
                            ^       ~~~~~~~~~~~~~~~~~~~~
>> arch/s390/kernel/irq.c:158:2: error: implicit declaration of function 'irqentry_exit' [-Werror,-Wimplicit-function-declaration]
           irqentry_exit(regs, state);
           ^
   arch/s390/kernel/irq.c:158:2: note: did you mean 'kentry_exit'?
   include/linux/entry-common.h:476:14: note: 'kentry_exit' declared here
   void noinstr kentry_exit(struct pt_regs *regs, kentry_state_t state);
                ^
   arch/s390/kernel/irq.c:166:2: error: unknown type name 'irqentry_state_t'; did you mean 'kentry_state_t'?
           irqentry_state_t state = irqentry_enter(regs);
           ^~~~~~~~~~~~~~~~
           kentry_state_t
   include/linux/entry-common.h:416:3: note: 'kentry_state_t' declared here
   } kentry_state_t;
     ^
   arch/s390/kernel/irq.c:166:27: error: implicit declaration of function 'irqentry_enter' [-Werror,-Wimplicit-function-declaration]
           irqentry_state_t state = irqentry_enter(regs);
                                    ^
   arch/s390/kernel/irq.c:166:19: error: initializing 'kentry_state_t' (aka 'struct kentry_state') with an expression of incompatible type 'int'
           irqentry_state_t state = irqentry_enter(regs);
                            ^       ~~~~~~~~~~~~~~~~~~~~
   arch/s390/kernel/irq.c:187:2: error: implicit declaration of function 'irqentry_exit' [-Werror,-Wimplicit-function-declaration]
           irqentry_exit(regs, state);
           ^
   12 warnings and 8 errors generated.


vim +300 arch/s390/kernel/traps.c

56e62a73702836 Sven Schnelle 2020-11-21  295  
56e62a73702836 Sven Schnelle 2020-11-21  296  void noinstr __do_pgm_check(struct pt_regs *regs)
56e62a73702836 Sven Schnelle 2020-11-21  297  {
56e62a73702836 Sven Schnelle 2020-11-21  298  	unsigned long last_break = S390_lowcore.breaking_event_addr;
56e62a73702836 Sven Schnelle 2020-11-21  299  	unsigned int trapnr, syscall_redirect = 0;
56e62a73702836 Sven Schnelle 2020-11-21 @300  	irqentry_state_t state;
56e62a73702836 Sven Schnelle 2020-11-21  301  
56e62a73702836 Sven Schnelle 2020-11-21  302  	regs->int_code = *(u32 *)&S390_lowcore.pgm_ilc;
56e62a73702836 Sven Schnelle 2020-11-21  303  	regs->int_parm_long = S390_lowcore.trans_exc_code;
56e62a73702836 Sven Schnelle 2020-11-21  304  
56e62a73702836 Sven Schnelle 2020-11-21 @305  	state = irqentry_enter(regs);
56e62a73702836 Sven Schnelle 2020-11-21  306  
56e62a73702836 Sven Schnelle 2020-11-21  307  	if (user_mode(regs)) {
56e62a73702836 Sven Schnelle 2020-11-21  308  		update_timer_sys();
56e62a73702836 Sven Schnelle 2020-11-21  309  		if (last_break < 4096)
56e62a73702836 Sven Schnelle 2020-11-21  310  			last_break = 1;
56e62a73702836 Sven Schnelle 2020-11-21  311  		current->thread.last_break = last_break;
56e62a73702836 Sven Schnelle 2020-11-21  312  		regs->args[0] = last_break;
56e62a73702836 Sven Schnelle 2020-11-21  313  	}
56e62a73702836 Sven Schnelle 2020-11-21  314  
56e62a73702836 Sven Schnelle 2020-11-21  315  	if (S390_lowcore.pgm_code & 0x0200) {
56e62a73702836 Sven Schnelle 2020-11-21  316  		/* transaction abort */
56e62a73702836 Sven Schnelle 2020-11-21  317  		memcpy(&current->thread.trap_tdb, &S390_lowcore.pgm_tdb, 256);
56e62a73702836 Sven Schnelle 2020-11-21  318  	}
56e62a73702836 Sven Schnelle 2020-11-21  319  
56e62a73702836 Sven Schnelle 2020-11-21  320  	if (S390_lowcore.pgm_code & PGM_INT_CODE_PER) {
56e62a73702836 Sven Schnelle 2020-11-21  321  		if (user_mode(regs)) {
56e62a73702836 Sven Schnelle 2020-11-21  322  			struct per_event *ev = &current->thread.per_event;
56e62a73702836 Sven Schnelle 2020-11-21  323  
56e62a73702836 Sven Schnelle 2020-11-21  324  			set_thread_flag(TIF_PER_TRAP);
56e62a73702836 Sven Schnelle 2020-11-21  325  			ev->address = S390_lowcore.per_address;
56e62a73702836 Sven Schnelle 2020-11-21  326  			ev->cause = *(u16 *)&S390_lowcore.per_code;
56e62a73702836 Sven Schnelle 2020-11-21  327  			ev->paid = S390_lowcore.per_access_id;
56e62a73702836 Sven Schnelle 2020-11-21  328  		} else {
56e62a73702836 Sven Schnelle 2020-11-21  329  			/* PER event in kernel is kprobes */
56e62a73702836 Sven Schnelle 2020-11-21  330  			__arch_local_irq_ssm(regs->psw.mask & ~PSW_MASK_PER);
56e62a73702836 Sven Schnelle 2020-11-21  331  			do_per_trap(regs);
56e62a73702836 Sven Schnelle 2020-11-21  332  			goto out;
56e62a73702836 Sven Schnelle 2020-11-21  333  		}
56e62a73702836 Sven Schnelle 2020-11-21  334  	}
56e62a73702836 Sven Schnelle 2020-11-21  335  
56e62a73702836 Sven Schnelle 2020-11-21  336  	if (!irqs_disabled_flags(regs->psw.mask))
56e62a73702836 Sven Schnelle 2020-11-21  337  		trace_hardirqs_on();
56e62a73702836 Sven Schnelle 2020-11-21  338  	__arch_local_irq_ssm(regs->psw.mask & ~PSW_MASK_PER);
56e62a73702836 Sven Schnelle 2020-11-21  339  
56e62a73702836 Sven Schnelle 2020-11-21  340  	trapnr = regs->int_code & PGM_INT_CODE_MASK;
56e62a73702836 Sven Schnelle 2020-11-21  341  	if (trapnr)
56e62a73702836 Sven Schnelle 2020-11-21  342  		pgm_check_table[trapnr](regs);
56e62a73702836 Sven Schnelle 2020-11-21  343  	syscall_redirect = user_mode(regs) && test_pt_regs_flag(regs, PIF_SYSCALL);
56e62a73702836 Sven Schnelle 2020-11-21  344  out:
56e62a73702836 Sven Schnelle 2020-11-21  345  	local_irq_disable();
56e62a73702836 Sven Schnelle 2020-11-21 @346  	irqentry_exit(regs, state);

:::::: The code at line 300 was first introduced by commit
:::::: 56e62a73702836017564eaacd5212e4d0fa1c01d s390: convert to generic entry

:::::: TO: Sven Schnelle <svens@linux.ibm.com>
:::::: CC: Vasily Gorbik <gor@linux.ibm.com>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202103210836.htOYIRaL-lkp%40intel.com.

--dDRMvlgZJXvWKvBx
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
AAA=

--dDRMvlgZJXvWKvBx--
