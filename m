Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBZEN7L3QKGQENHMWLJI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc40.google.com (mail-oo1-xc40.google.com [IPv6:2607:f8b0:4864:20::c40])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C9CF2130DE
	for <lists+clang-built-linux@lfdr.de>; Fri,  3 Jul 2020 03:16:21 +0200 (CEST)
Received: by mail-oo1-xc40.google.com with SMTP id w2sf4847240ook.14
        for <lists+clang-built-linux@lfdr.de>; Thu, 02 Jul 2020 18:16:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593738980; cv=pass;
        d=google.com; s=arc-20160816;
        b=UKvLjWT78pLbv9iWUFFKENPADP9clI7HNx5DfmRhb3c6Ia8BZiRchAUti1juWE3rKW
         rvhKCkAFomA6s92P2ze+NIKWyP575rDyzLSIUB1aeEooY4cd5Nx0Gqe6mDqiTxspzo+t
         LTphoxqUtFaUV+8Z2nxg3tI5o9Ma+efOG+hO9EPdCocW4lULmXQ+DLN/hsfQOyL9xKuJ
         QzmLew075QZ9NzulWrfOFeNXZmgSNOIHBrHrXISSKQgEnWOQKaKMw2XPULfN3NLhbBBU
         37LzEZgdPgoQMilMW7VIb/bp+EdAimYzoBCMGPdwY9Fjr5vMZi3rZZy+UGb/HHy4PRph
         kXyg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=i0OvMYsUg9AIup0cSofeAN5He95VS39LTkvuIhSSPuo=;
        b=KRwp4W5/yjlNz3wnjTObkHjTsmQvU6RbSEZrlRqvcLxaNFHIZIJu3vP2qVEx9UrZlf
         3bFtGMurIE3njOtmT9frgzPB9AiyrrvEHs571JLGcyCPdoTx48jtUjwbqgSvCgRFu/OS
         xG//KzqhwFG54subo5CrRtiGN9kKJX5YTx1oNaeCr7BlZmK+5gYSYe8v6A35MFzBUTv2
         LxLV+Tx6T7lsWj/BmJYM7/MuM99fYkLqg740N7lEpHxZg9hkm6v8c4nZqbwdkqmgTr/H
         kM+Xjg9xQgR3EkB5vdXpImecLbucfjEGsfWg8HoxQg8Z3F40JK8NsYBoevXtDnTgDq+v
         pr1A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=i0OvMYsUg9AIup0cSofeAN5He95VS39LTkvuIhSSPuo=;
        b=SF4nwEWXgh5PtfquM+bO1NqMGzjOZonDmcv0e1PsNYL36aKJxHCb3/Hf1zaUVlbtfG
         aEBuB4fTbdlj5s081ZOeIW64JiTr6Qw3dU8AUQ5UQ31ThHgakduY4Po5PcAGBU5YX2n2
         lm/2ec3nQm+/0o7BRCZcs326lfQj/Le7o0/7A6iQ2LeFbmuW6u7qOM1cnFyTrIgXQQ6m
         ECgXdCw83T0iMU0v0fV3YzLzuwYDaV2QE3ZGmWS4aGnkexgLVTQzrT3+XEgnDv3NUGwD
         EvPY3K0TvX2pkyzgiwjGkzv4G/m5FrZ9fXe2C9BfNphx9CD2r9pDVA9deHtA9cCVaR84
         rM/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=i0OvMYsUg9AIup0cSofeAN5He95VS39LTkvuIhSSPuo=;
        b=IgdM+SGYc1Rj1B7EeUNrJ1Cxk+7BXpSEGaos5kjbrTYvKCRaAaXWO5VfMoic270Kx8
         jztZ7r2+pxkQv7X+JoQshF8ZV+0b6YF/ZhxCSv4wdnU5qXhgawqPrpd2IZVIoQNdOLyn
         Jb2JFvBYgqv4t920MxbFeWsUoDwfmKUKA5bN29CNEuX1G4ExUmMXZQyTweaQZlPGMr9u
         7lzfJixiF4y+XdBzIgzk9sZMIrgG+Yud3tqfI+1IMFjuqXKrn6PeuLwwV7LiMpgs7Org
         VZ/bXy6/1caM9YedrX5oxRO17oKz4ZS0HyOT4qgScb15Gqr2biwz/3wdRK/4qcq7SDGm
         tuBg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533ugiEp4wEG81LlHYdNoW61OCdppKfsLY+FVbudDhPYfzzAk74G
	WkaFa9BEy8VSyrlBfxkOB2g=
X-Google-Smtp-Source: ABdhPJxr3wgd+Vdg4aqOtKmryBM56Kq11Uy63IEKArd1vgNgvkfj54JexmgpmE/zN+0pxZJi++wJWA==
X-Received: by 2002:a9d:d13:: with SMTP id 19mr30704814oti.83.1593738980128;
        Thu, 02 Jul 2020 18:16:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1599:: with SMTP id i25ls1719474otr.3.gmail; Thu,
 02 Jul 2020 18:16:19 -0700 (PDT)
X-Received: by 2002:a05:6830:1c2a:: with SMTP id f10mr19096002ote.238.1593738979627;
        Thu, 02 Jul 2020 18:16:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593738979; cv=none;
        d=google.com; s=arc-20160816;
        b=hUktdyJe4jSyX3qxVvX9yJkYV2ZnbzMiMYyc8Zcmz29mV+dRKTFyCth632ju//PMh2
         PtDnFbb5vqMIqEqM7O0/Hkyd7n5MkvVJUzfACFNbDJQYOkmzteJ9yrMDMqxek1jHUKm9
         8XmZoWNv//VJi5bkrVw1t+Jp2Uv8qZNCUfwgq5Tbi1U6vAqaPTQa6sRLtXorFOyzcZUd
         oE8xgK1QstWAJtwaFprVrVCKSCAZ4OEHeftNivZLGIuInVJVIyov5Ftehp1b50i0mZbF
         5jZJhBzIuPb6bH3MN3USFOyRbRmdN0Tw0vB2buQmEt4OfJPLV1XD3q6CZSGdmgyh/Zmf
         kkYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=1xrpDvo6wrVkKdPYaew1how/yLUHH/ITsF/Wnw3+p0M=;
        b=ePM3y6sFJpdWbuIY+SP8RuA3GVblAIxByltQO9cS0sfjFvqyq9vVmKcvbMfHuLimT9
         QhB8ojpovYaDUcTYDbtonGczADqD7LImMqYJDkcBpMsQMDeC6uftGN6yO2hxBj+WMFd6
         JM+D6GwI1yEAPWi77DAbm46MU21pPPVM9bKUfAlSrn98/z3lv/zmbwhCssdlOzXK012T
         RWc+0WtP440YgYpoVl1tWY59fycTujU2bFoHjLchkPKYTrFI93ZDc+BFc9BLWrlyI7VZ
         51XL2b0KBk+JJ4OOSbae5nCisYZK1evmH0Dtqa1lCC7ncJPq75pemiZIt20qfD2LCgnJ
         CTZQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga02.intel.com (mga02.intel.com. [134.134.136.20])
        by gmr-mx.google.com with ESMTPS id l131si699440oif.4.2020.07.02.18.16.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Jul 2020 18:16:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) client-ip=134.134.136.20;
IronPort-SDR: RsULh97psfsA8AOEWnEg1NgSlIpzCNjqlvEnWtJhSfoxdNKCCdykqMmw6de9tVHxonof6TSm+H
 nF0MA84OdG1g==
X-IronPort-AV: E=McAfee;i="6000,8403,9670"; a="135346324"
X-IronPort-AV: E=Sophos;i="5.75,306,1589266800"; 
   d="gz'50?scan'50,208,50";a="135346324"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Jul 2020 18:16:18 -0700
IronPort-SDR: jpAXKPN27WbHU72arkcX9LVMocMLFP+Jt7AsLkhDV7cudzANIjiEHpW+Qg2HSTB9qa3cGtkb/C
 PG+jiI3WeQHw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,306,1589266800"; 
   d="gz'50?scan'50,208,50";a="265845510"
Received: from lkp-server01.sh.intel.com (HELO 28879958b202) ([10.239.97.150])
  by fmsmga007.fm.intel.com with ESMTP; 02 Jul 2020 18:16:15 -0700
Received: from kbuild by 28879958b202 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1jrAJL-0003uj-9f; Fri, 03 Jul 2020 01:16:15 +0000
Date: Fri, 3 Jul 2020 09:15:49 +0800
From: kernel test robot <lkp@intel.com>
To: Song Liu <songliubraving@fb.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Alexei Starovoitov <ast@kernel.org>
Subject: [linux-next:master 4648/5054] kernel/bpf/stackmap.c:363:3: error:
 implicit declaration of function 'stack_trace_save_tsk'
Message-ID: <202007030944.omJdUhl3%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="oyUTqETQ0mS9luUI"
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


--oyUTqETQ0mS9luUI
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
head:   d37d57041350dff35dd17cbdf9aef4011acada38
commit: fa28dcb82a38f8e3993b0fae9106b1a80b59e4f0 [4648/5054] bpf: Introduce helper bpf_get_task_stack()
config: s390-randconfig-r002-20200701 (attached as .config)
compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 003a086ffc0d1affbb8300b36225fb8150a2d40a)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install s390 cross compiling tool for clang build
        # apt-get install binutils-s390x-linux-gnu
        git checkout fa28dcb82a38f8e3993b0fae9106b1a80b59e4f0
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=s390 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   In file included from include/linux/skbuff.h:31:
   In file included from include/linux/dma-mapping.h:11:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:72:
   include/asm-generic/io.h:490:45: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu(__raw_readl(PCI_IOBASE + addr));
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
   In file included from kernel/bpf/stackmap.c:6:
   In file included from include/linux/filter.h:13:
   In file included from include/linux/skbuff.h:31:
   In file included from include/linux/dma-mapping.h:11:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:72:
   include/asm-generic/io.h:490:45: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu(__raw_readl(PCI_IOBASE + addr));
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
   In file included from kernel/bpf/stackmap.c:6:
   In file included from include/linux/filter.h:13:
   In file included from include/linux/skbuff.h:31:
   In file included from include/linux/dma-mapping.h:11:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:72:
   include/asm-generic/io.h:490:45: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu(__raw_readl(PCI_IOBASE + addr));
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
   In file included from kernel/bpf/stackmap.c:6:
   In file included from include/linux/filter.h:13:
   In file included from include/linux/skbuff.h:31:
   In file included from include/linux/dma-mapping.h:11:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:72:
   include/asm-generic/io.h:490:45: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu(__raw_readl(PCI_IOBASE + addr));
                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:120:12: note: expanded from macro '__swab32'
           __fswab32(x))
                     ^
   In file included from kernel/bpf/stackmap.c:6:
   In file included from include/linux/filter.h:13:
   In file included from include/linux/skbuff.h:31:
   In file included from include/linux/dma-mapping.h:11:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:72:
   include/asm-generic/io.h:501:33: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writeb(value, PCI_IOBASE + addr);
                               ~~~~~~~~~~ ^
   include/asm-generic/io.h:511:46: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writew(cpu_to_le16(value), PCI_IOBASE + addr);
                                            ~~~~~~~~~~ ^
   include/asm-generic/io.h:521:46: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writel(cpu_to_le32(value), PCI_IOBASE + addr);
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
>> kernel/bpf/stackmap.c:363:3: error: implicit declaration of function 'stack_trace_save_tsk' [-Werror,-Wimplicit-function-declaration]
                   stack_trace_save_tsk(task, (unsigned long *)(entry->ip + init_nr),
                   ^
   20 warnings and 1 error generated.

vim +/stack_trace_save_tsk +363 kernel/bpf/stackmap.c

   350	
   351	static struct perf_callchain_entry *
   352	get_callchain_entry_for_task(struct task_struct *task, u32 init_nr)
   353	{
   354		struct perf_callchain_entry *entry;
   355		int rctx;
   356	
   357		entry = get_callchain_entry(&rctx);
   358	
   359		if (!entry)
   360			return NULL;
   361	
   362		entry->nr = init_nr +
 > 363			stack_trace_save_tsk(task, (unsigned long *)(entry->ip + init_nr),
   364					     sysctl_perf_event_max_stack - init_nr, 0);
   365	
   366		/* stack_trace_save_tsk() works on unsigned long array, while
   367		 * perf_callchain_entry uses u64 array. For 32-bit systems, it is
   368		 * necessary to fix this mismatch.
   369		 */
   370		if (__BITS_PER_LONG != 64) {
   371			unsigned long *from = (unsigned long *) entry->ip;
   372			u64 *to = entry->ip;
   373			int i;
   374	
   375			/* copy data from the end to avoid using extra buffer */
   376			for (i = entry->nr - 1; i >= (int)init_nr; i--)
   377				to[i] = (u64)(from[i]);
   378		}
   379	
   380		put_callchain_entry(rctx);
   381	
   382		return entry;
   383	}
   384	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202007030944.omJdUhl3%25lkp%40intel.com.

--oyUTqETQ0mS9luUI
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICAh+/l4AAy5jb25maWcAlDzLdtu4kvv+Cp305s7idvxKOp45XkAgKCEiCYYAJdsbHMdW
0pp2rBxZ7r7pr58qgA8ABOlMLzpWVeFVQD1R4K+//DojL8f9t7vj7v7u8fHH7Ov2aXu4O24f
Zl92j9v/mSViVgg1YwlXvwFxtnt6+c/b5/PLk9m73z78dvLvw/3pbLU9PG0fZ3T/9GX39QVa
7/ZPv/z6CxVFyheaUr1mleSi0Ipdq6s39493T19nf20Pz0A3Oz397eS3k9m/vu6O//32Lfz/
2+5w2B/ePj7+9U1/P+z/d3t/nN3fXby/eH9+eXd6f/nwcH55cbH9fPLu3ZcvD2e/X77ffrg/
2/4O6C//9aYdddEPe3XSArOkg52dX5yY/5xpcqlpRorF1Y8OiD+7NqenQQNKCp3xYuU06IFa
KqI49XBLIjWRuV4IJUYRWtSqrFUUzwvomvUoXn3SG1E5M5jXPEsUz5lWZJ4xLUXldKWWFSMJ
dJMK+B+QSGwKm/XrbGF2/nH2vD2+fO+3jxdcaVasNamAgTzn6ur8DMjbuYm85DCMYlLNds+z
p/0Re+g4LijJWv69eRMDa1K7zDDz15JkyqFfkjXTK1YVLNOLW1725C5mDpizOCq7zUkcc307
1kKMIS7iiLpAZlRMSpYARcciZ94uh0K8mf0UAa5hCn99O91aRPbHW1PYxF1QpG3CUlJnypwQ
Z69a8FJIVZCcXb3519P+aduLptwQZwPljVzzkg4A+C9VWQ8vheTXOv9Us5rFoX2TbiUbouhS
G2xkBbQSUuqc5aK60UQpQpdu41qyjM8j7UgN6jA4BKSCgQwCZ0EyZ+YB1EgbCO7s+eXz84/n
4/abI20gz4nICS98GbcwveSswoFueuyCFaziVOeSI+UoYtCtLEklWdOmW3PbyrRg83qRSv9U
bZ8eZvsvwfzDMY3+WQ8Y0aIpyP+KrVmhZMsPtfsGBiHGEtChKy0KJpfC4Xkh9PIWtU8uCnf+
ACxhDJFwGtk424onGXPbGGhUdpZ8sdQgAGZBVZwTg5l3R7NiLC8VdF94w7XwtcjqQpHqJjp0
QxVZRNueCmje8o+W9Vt19/zn7AjTmd3B1J6Pd8fn2d39/f7l6bh7+tpzdM0raF3WmlDTB3dN
XgSpCzBka28Nki5ZAtaEVTnJtNERdRUTsblMAC0oEGCPzg6GGL0+d+wUGCa0n9IdFIFwKDNy
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

--oyUTqETQ0mS9luUI--
