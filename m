Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB6MP7T6QKGQESVGZ7DA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x239.google.com (mail-oi1-x239.google.com [IPv6:2607:f8b0:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E0A42C4CBB
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Nov 2020 02:42:18 +0100 (CET)
Received: by mail-oi1-x239.google.com with SMTP id k200sf161006oih.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Nov 2020 17:42:18 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606354937; cv=pass;
        d=google.com; s=arc-20160816;
        b=Bk+mHXKU5bJq6kkyv8Bgj9CpZFx7eeW3+cD1rcMX2Kde2ve8iiyWp0dsTaFadk04Eq
         XEVNFCuvCt+GsQMiHdZtS7p8mcwuH6N+3PdEBndj3msW+NiFH93kaUYN2RQWqYRsdTEg
         e+gCx7v++FLSCDzcvvyNn5rARbfE8QLqbpt43gClu/YDk3pQCS1RBr7Hh48kASKvWJ4r
         P1bcmj14kS7CWs77sNgKehdxLKeGRRNRqamDpr/yDYC1ILIG/ZP9Kxop6hCAHCb6uG1x
         PyKaC42kv1rUu6O3Gv63fdkxIpezQqsQeoj4AxowFNkE7gsHe3g5obOV0M1c5FbLEaT3
         l0Ag==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=h9AviTvXAM9zISnZr/p287wy5ePZcOe8jt83fKqRtig=;
        b=RG7qXcE99XEN7kI99l5l9QyVjs5dLPGOsKExh1budOI/yvamyRx1IkVevpjk5NODq2
         7Z7cAjarEfKsFVdnUok1JPC8N1PdZstRCmPaREJHeRMatEiB1z8Sgpz77qZbVPz69cxk
         9sX94DpQJB4toXvbF6FZpHoni7QhRUlID5RAEYxzyOEqhWQqWKoh9SIbuQKXEmu/QAhr
         xsiJmpRsJv6L+cuFTm5i12CAsERNqcfXp1ijIfTAIG2AdMEdrLgSLW44rX14CvAN6o58
         t1eTqVEvF5PSkJ9S4yq3h2EJWTq+4K7cu6MtpZn/FtDsGJwTbz9fYuDLamukQu3ijfgX
         iPRg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=h9AviTvXAM9zISnZr/p287wy5ePZcOe8jt83fKqRtig=;
        b=LQre40k41cCnC9CfPtoSoQ+RKmspbgX+KxaaF5qvVmnF6iHh6kvl5JIYcHK5ihjLvu
         ahsiaiCcnYAfKLkuxZVeD9bd6N8g09MUTVLYnasTL7BweT3r9ULw/foIXTOn0BiNXDyz
         rhatvEcgQ+aGCkPuv1lvtef2aME40/pMO1ob1j5nCYrmjk4va7T5YHdMNdNZ3FFHLNsZ
         IF31FLuDKsb3TtDtYCqWmwurHZDc/vykAFG9KO2SEXPciGid/CbRHcbZ0y0EaK5nf+0t
         sAtmR8Tmcb9AjyeZTWQNFpxJEWl7+UHhcIXlIPWH4jqZeLLaHHKZdPpwYnOD7IAgvgBB
         8WOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=h9AviTvXAM9zISnZr/p287wy5ePZcOe8jt83fKqRtig=;
        b=FR6Hp1Ex9LPrLP7+ifKTZFtMKgz68Sx9Ylyl6NT/oHVM8YwjdYkbw6jb6ICJY59pVT
         Mxg9R7SYohgunZ4vOnH9hZqXa6R6gi7/UW61j09L+CUXhHhDyePc83z4GawgnT7D5BR8
         JHqaxV6XMQq3uxgulHEm0FgPZwCxmOzEK8dC6o25tIU1h+Obp9O3/ktnvcXwzs5B/CBa
         I7Xbh9taL4nMRrDld2G1Nt2e5WeZxuqvraPkLWjN9ovVfd0UFNBieknzN6GTDGKON4Ql
         8RHnegr5AM9I6+rZx/MNrnnuXWluV3i/zLLKPsJsdAa6T2y0huHD+oVq7uVHcVASlADp
         DL/g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533T3u0A/a+b7H9rSe/V9rYzrQf1yO9w6wX2IzjOf2bs/PLKQcSF
	4mmsrhPySJbEX8dys0bElTg=
X-Google-Smtp-Source: ABdhPJy2QGv9XSBGdT6y7BmQ5CfboSGJqqPHyd6ZgQCPmg4rmXmJv43lDUBZwD8PtSYtCHrxVbABog==
X-Received: by 2002:aca:1b0a:: with SMTP id b10mr628680oib.9.1606354937216;
        Wed, 25 Nov 2020 17:42:17 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:4fd0:: with SMTP id d199ls67939oib.5.gmail; Wed, 25 Nov
 2020 17:42:16 -0800 (PST)
X-Received: by 2002:aca:496:: with SMTP id 144mr647162oie.136.1606354936737;
        Wed, 25 Nov 2020 17:42:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606354936; cv=none;
        d=google.com; s=arc-20160816;
        b=sl2EeZNkw2eZz9ui4ump3vAEhPTIW60/zxWZtEx+ieEiKrHHbetQyPxw1Pn6bT3sUj
         7Sf7oFoxYwlPCBGuV+flDWBjJteXYCDb8n4d/dEd3F1gwvRMgYT7fCO637//YynwrH27
         G2u9hW/uNw9prANIesm8vs0qysYNi8hPmxk1NfVyByZQqlLP22Yrryqp7asPSsWi5E4q
         +o9W6ksaZmy9eH+IVoeMe+CgrudWvxvrocwRf1E1lx6ydY1WThjPgZHKLyVYZH+WrRcf
         nafN+sNywaVztX08I1g1qklV/OUB1pZMC+oY+AIxJ9s7xZnHlMuODs9m7jN+lX+Qu8OV
         BaNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=AHyQ3PFdkn/mYq7kPCVmLOW0naSs30kxko1ZR/nighQ=;
        b=AJST/zaukcVMMdBJAHIagcj6NxCvOoqY6fo7zThLg0hLltaVlI5LAJkyZPi+cItE/+
         FGqXSAsGn2imWPK+6KK0iX/Q96YEpW8dFh68KXG3KkthpcD5aI4FP6NAYZKstNUH1QBc
         wpOJOypVwj9NwSGHiwcMucCXNvaAT3nkx4aSk8HKhmyGZ+2OilZU0KKoozHlc6oQX7cl
         VurnCnBjg29m6Gj3+zu2NLf9CK5pegRLKoQm5t94j/XCibGlHpqleY3Agwb5eEbsyoJp
         HC1kFhrcBJF2wH9ARj1tYoXvqVW99dPj60kI7CxOHW4dqpxIHOT9tipWjMahii4gha3s
         WAbw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga09.intel.com (mga09.intel.com. [134.134.136.24])
        by gmr-mx.google.com with ESMTPS id w26si163990oih.1.2020.11.25.17.42.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Nov 2020 17:42:16 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) client-ip=134.134.136.24;
IronPort-SDR: JS3Qz8OKd8ikohGZvZN+MMwwKAm8oWWX8lxoRBfyAymzlC/A90qlC4pGIr4e/XTz1ZqirrFhFV
 07CvcoS+bmjQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9816"; a="172380190"
X-IronPort-AV: E=Sophos;i="5.78,370,1599548400"; 
   d="gz'50?scan'50,208,50";a="172380190"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Nov 2020 17:42:14 -0800
IronPort-SDR: U88hBDTrKCQCxzLW+qTI/XLY2I59N3QEvMPuaHJmkU3EiAzVJVAdPz3kIla3cr3UjlL4YHZCpB
 J/B0/jRbyLpA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,370,1599548400"; 
   d="gz'50?scan'50,208,50";a="535574620"
Received: from lkp-server01.sh.intel.com (HELO dd79da36dde1) ([10.239.97.150])
  by fmsmga006.fm.intel.com with ESMTP; 25 Nov 2020 17:42:12 -0800
Received: from kbuild by dd79da36dde1 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1ki6IW-00000t-0p; Thu, 26 Nov 2020 01:42:12 +0000
Date: Thu, 26 Nov 2020 09:42:00 +0800
From: kernel test robot <lkp@intel.com>
To: Barry Song <song.bao.hua@hisilicon.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Linux Memory Management List <linux-mm@kvack.org>,
	Christoph Hellwig <hch@lst.de>
Subject: [linux-next:master 7654/8449] kernel/dma/map_benchmark.c:195:37:
 warning: variable 'argp' is uninitialized when used within its own
 initialization
Message-ID: <202011260953.1BHKhZHc-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="SUOF0GtieIMvvwua"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted
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


--SUOF0GtieIMvvwua
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
head:   9d3e48f20e1159a7bb2ff5de96594b6375157fe0
commit: bfd2defed94d3be843b0c2d3d6b13571c24b4c33 [7654/8449] dma-mapping: add benchmark support for streaming DMA APIs
config: s390-randconfig-r013-20201126 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 175ebad958a0ebaf6c56c20ab30b9d4347742c29)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install s390 cross compiling tool for clang build
        # apt-get install binutils-s390x-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=bfd2defed94d3be843b0c2d3d6b13571c24b4c33
        git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
        git fetch --no-tags linux-next master
        git checkout bfd2defed94d3be843b0c2d3d6b13571c24b4c33
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
   In file included from kernel/dma/map_benchmark.c:11:
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
   include/uapi/linux/swab.h:20:12: note: expanded from macro '___constant_swab32'
           (((__u32)(x) & (__u32)0x0000ff00UL) <<  8) |            \
                     ^
   In file included from kernel/dma/map_benchmark.c:11:
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
   In file included from kernel/dma/map_benchmark.c:11:
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
   In file included from kernel/dma/map_benchmark.c:11:
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
   In file included from kernel/dma/map_benchmark.c:11:
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
>> kernel/dma/map_benchmark.c:195:37: warning: variable 'argp' is uninitialized when used within its own initialization [-Wuninitialized]
           void __user *argp = (void __user *)argp;
                        ~~~~                  ^~~~
   21 warnings generated.

vim +/argp +195 kernel/dma/map_benchmark.c

   190	
   191	static long map_benchmark_ioctl(struct file *file, unsigned int cmd,
   192			unsigned long arg)
   193	{
   194		struct map_benchmark_data *map = file->private_data;
 > 195		void __user *argp = (void __user *)argp;
   196		u64 old_dma_mask;
   197	
   198		int ret;
   199	
   200		if (copy_from_user(&map->bparam, argp, sizeof(map->bparam)))
   201			return -EFAULT;
   202	
   203		switch (cmd) {
   204		case DMA_MAP_BENCHMARK:
   205			if (map->bparam.threads == 0 ||
   206			    map->bparam.threads > DMA_MAP_MAX_THREADS) {
   207				pr_err("invalid thread number\n");
   208				return -EINVAL;
   209			}
   210	
   211			if (map->bparam.seconds == 0 ||
   212			    map->bparam.seconds > DMA_MAP_MAX_SECONDS) {
   213				pr_err("invalid duration seconds\n");
   214				return -EINVAL;
   215			}
   216	
   217			if (map->bparam.node != NUMA_NO_NODE &&
   218			    !node_possible(map->bparam.node)) {
   219				pr_err("invalid numa node\n");
   220				return -EINVAL;
   221			}
   222	
   223			switch (map->bparam.dma_dir) {
   224			case DMA_MAP_BIDIRECTIONAL:
   225				map->dir = DMA_BIDIRECTIONAL;
   226				break;
   227			case DMA_MAP_FROM_DEVICE:
   228				map->dir = DMA_FROM_DEVICE;
   229				break;
   230			case DMA_MAP_TO_DEVICE:
   231				map->dir = DMA_TO_DEVICE;
   232				break;
   233			default:
   234				pr_err("invalid DMA direction\n");
   235				return -EINVAL;
   236			}
   237	
   238			old_dma_mask = dma_get_mask(map->dev);
   239	
   240			ret = dma_set_mask(map->dev,
   241					   DMA_BIT_MASK(map->bparam.dma_bits));
   242			if (ret) {
   243				pr_err("failed to set dma_mask on device %s\n",
   244					dev_name(map->dev));
   245				return -EINVAL;
   246			}
   247	
   248			ret = do_map_benchmark(map);
   249	
   250			/*
   251			 * restore the original dma_mask as many devices' dma_mask are
   252			 * set by architectures, acpi, busses. When we bind them back
   253			 * to their original drivers, those drivers shouldn't see
   254			 * dma_mask changed by benchmark
   255			 */
   256			dma_set_mask(map->dev, old_dma_mask);
   257			break;
   258		default:
   259			return -EINVAL;
   260		}
   261	
   262		if (copy_to_user(argp, &map->bparam, sizeof(map->bparam)))
   263			return -EFAULT;
   264	
   265		return ret;
   266	}
   267	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202011260953.1BHKhZHc-lkp%40intel.com.

--SUOF0GtieIMvvwua
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
89zXKfS8BU9Y1K3G/wBp5JoPz7QBAA==

--SUOF0GtieIMvvwua--
