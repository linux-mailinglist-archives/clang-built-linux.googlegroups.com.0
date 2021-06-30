Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBCPM6GDAMGQE3ADH4BQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3d.google.com (mail-qv1-xf3d.google.com [IPv6:2607:f8b0:4864:20::f3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 442E43B839B
	for <lists+clang-built-linux@lfdr.de>; Wed, 30 Jun 2021 15:47:54 +0200 (CEST)
Received: by mail-qv1-xf3d.google.com with SMTP id q10-20020a056214018ab029027751ec9742sf1437158qvr.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 30 Jun 2021 06:47:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625060873; cv=pass;
        d=google.com; s=arc-20160816;
        b=FZASfyVSWUQ1G2WXIkZ+tju+sgWtQ2hDLEcYTkdWtrY6+ShMWAc7o/6lWOBMXFxUld
         C2vUBpsVWG0NNqdEMjGOAAsp3SZdJ8LnYWNaYykTpeyDBmtv8x6LQk80fQ3mxpJurSJx
         0NbA5sJzCqkQm4fGG6mAIYOItB5UkGxJwt5xc57puio5esUbFbxWjjf6VraCyU/o6lLd
         rWuY9v90j60f1PSB3p8JrwNo6fXtIwQuXXD8PCXMhh8r3ze963TLO0L6TSQvRwZ3d5BA
         8uSZ4gFlR87p+iSkc+rQ3/oifGMZTo6P56hrqUsKE6rBATn/6e+29UQnE35e2lbx+DSt
         NqLg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=H5LgMQ5ip0xzcWJ+tKl7GzvKgjdPd0clRksutprdwHY=;
        b=H5Xl6SfXjrjm0kgx12blt9zVBaKCsk+oyE55JmqzSqHqcB/yH9LPW+7VLjZjT5OUuV
         J+kzmsiQ5iZitJ5JB0kvrdEko4+CNW4joxsdCkYyKomGUyH4fFH4vtfY+4N1424V0/57
         aUtDJjashh0q6X+bj64WsLSEmNxLUHoZfBLbSIBazUqM4TVups/67HpE0nzqm+gya+2r
         aX3MlsR3BW3NGv6QlHO4zhnogypYNyuJt9qVnsJIvajDmGoHQmaO7OHBAvq7ot/QODzo
         +WsUc9fvd1xkjIKC7uiSON7+Z4GBOBXghXvfwDepZ0tYk0n9Fj+4QV/4zDrzJLx1XE4l
         ljLA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=H5LgMQ5ip0xzcWJ+tKl7GzvKgjdPd0clRksutprdwHY=;
        b=YmHVZkTg1o9pDQEmBCtpAxHXH+8IFl57qSNgu33FE/LzOr2/lXeE2Cnv1t8kbMc3B0
         b9OhvVMq0aGP8U9QO7bM/zGMr5orjI+cUeH0EyOIl3h1NqklUla/fEBYLrvV8om1uQTs
         ozD1SlLoflH27vu1QqSRM2EC3OCaE/j1FSETaxnUjspUMrVSr8cunUBnlZ53UaQqYTRO
         KlGwtHqrkQCWAiU6cFP2GatHucShenUJvImFsiYZee5IcPWYj0bUIepU8EBcodsAtjeX
         bhVBi/nkCjKqAKXsKEPnGZKZ6ZBQYcHL54ZtyMGEdmK4s26soeQG3g2IDbAw9FEW3gdq
         TuFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=H5LgMQ5ip0xzcWJ+tKl7GzvKgjdPd0clRksutprdwHY=;
        b=ix4EmG4fLaCW5XCxnBi8rWlLGTdC55vHbSxcYcf2mbxTDEGrguaxewCg/2bWtUKo1F
         HHlxheCZ2+DO+EKCXCx9irKDFERJCHr9icfRNLXXZXRg1Y3nuXAHSWFORMaKs5I8+SeG
         P+cX7YB3vt4Iy0Tpy1yCnz87lNv4gyT9hAob/pkWCOWaeuyW2DzMBpUH/KvHIz5NzsWJ
         UDNnSXzm1jiXrcw254bm8hIgI5tv9QaUMH3hlIkzXZD5aBfZdfS22NlLLfeRlOYD9mLs
         tFMR9B+NdXNr47ziK4FcJCasVWLd88fBxAvS5ZVEG4bQQqRxtXLGw1Y4WOqXSR3a+kg6
         8nCw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530FDa5RjshJHdBm7NKdmJgDCjD3tnUrtB2kvV18myend/yG3Wfz
	1Vw+wBt1HnErN79M3VHOhDE=
X-Google-Smtp-Source: ABdhPJxg6hGE3bktO5GWKAfXuOd3rO19eNKQbT2zo/DUd53CdJI/1Nseu1QhzyI6ASrXKW96ZdgbMQ==
X-Received: by 2002:a05:6214:b0d:: with SMTP id u13mr36900144qvj.55.1625060873334;
        Wed, 30 Jun 2021 06:47:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:f009:: with SMTP id z9ls450818qvk.6.gmail; Wed, 30 Jun
 2021 06:47:52 -0700 (PDT)
X-Received: by 2002:a0c:9e49:: with SMTP id z9mr36696365qve.52.1625060872781;
        Wed, 30 Jun 2021 06:47:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625060872; cv=none;
        d=google.com; s=arc-20160816;
        b=CaPkASfSOJsfYv+g5JvGur/WJyEmQxrOcNgxhEAVtEwHF65pbQTq1SDLetiw0yOekN
         fd6wa1tynVDJe4s8LlNcyylXaMiXweW9LYb8UjVJqVKqUlbX5sG4N2XjNx4TtzxkUvz5
         vKhjCQLCcMAVwrcwpuVU9EvPgajvskX7IotYNwcEGC7r2de1WV9VfRMbl0nvwjBWOBYE
         AoUvFs86fkm8d6M5WYGS2M+W+o77qhD30B7ea58R6ZozGoRXAdj4viCcRnFEG8UibzD7
         4VCN1nN9EyegIPJ5HEELouPXLhxirRjyEL9A3uEpUQHwVHg4D04evEhgzo3b+B1Dk5vi
         9OCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=KB8IizIN4rB69O1y7ZBwcZrP36PlDOhw4gjvOE+d+Q0=;
        b=PEIbcHJEpS+/vuM9ax9eEeFRBWL8w00WMYTKhTVKMDuqTSNKgBl685dAkm7/ap8xYs
         jMAYsXreorC6VETjjeYqRM20JPO7E4re+B0rkbaXefrMrBakZ2hjxk+drpPPPHEgNkzl
         Z5z4TFMniNbL3mFGeMsYAv5LDSblyqDcZ94dGXwqEEUJDkrnAs58gqlGwzu41xLelHnC
         EGuoqCYIFytgtHuFdq7wHYU6C2Hm9oTuS5yaY1LsKwsWaPRDimEg/wP3r3s9YTS3G0eq
         tS7S5G+DpezNN2caTTm6emla8dycJyaOV7XQaCDWJoWjW+o/7/PEaiYcSW3yHGY3dt+L
         G0cA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga02.intel.com (mga02.intel.com. [134.134.136.20])
        by gmr-mx.google.com with ESMTPS id i6si2350370qko.5.2021.06.30.06.47.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Jun 2021 06:47:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) client-ip=134.134.136.20;
X-IronPort-AV: E=McAfee;i="6200,9189,10030"; a="195503840"
X-IronPort-AV: E=Sophos;i="5.83,312,1616482800"; 
   d="gz'50?scan'50,208,50";a="195503840"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 Jun 2021 06:47:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,312,1616482800"; 
   d="gz'50?scan'50,208,50";a="457241725"
Received: from lkp-server01.sh.intel.com (HELO 4aae0cb4f5b5) ([10.239.97.150])
  by fmsmga008.fm.intel.com with ESMTP; 30 Jun 2021 06:47:48 -0700
Received: from kbuild by 4aae0cb4f5b5 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lyaZ9-0009mq-NY; Wed, 30 Jun 2021 13:47:47 +0000
Date: Wed, 30 Jun 2021 21:47:15 +0800
From: kernel test robot <lkp@intel.com>
To: Abd-Alrhman Masalkhi <abd.masalkhi@gmail.com>, axboe@kernel.dk
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	linux-block@vger.kernel.org, linux-kernel@vger.kernel.org,
	Abd-Alrhman Masalkhi <abd.masalkhi@gmail.com>
Subject: Re: [PATCH] block: Removed a warning while compiling with a cross
 compiler for parisc
Message-ID: <202106302152.4UFCIhHa-lkp@intel.com>
References: <20210630081028.161284-1-abd.masalkhi@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="BOKacYhQ+x31HxR3"
Content-Disposition: inline
In-Reply-To: <20210630081028.161284-1-abd.masalkhi@gmail.com>
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


--BOKacYhQ+x31HxR3
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Abd-Alrhman,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on block/for-next]
[also build test WARNING on v5.13 next-20210630]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Abd-Alrhman-Masalkhi/block-Removed-a-warning-while-compiling-with-a-cross-compiler-for-parisc/20210630-161407
base:   https://git.kernel.org/pub/scm/linux/kernel/git/axboe/linux-block.git for-next
config: s390-randconfig-r014-20210630 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 8d21d5472501460933e78aead04cf59579025ba4)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install s390 cross compiling tool for clang build
        # apt-get install binutils-s390x-linux-gnu
        # https://github.com/0day-ci/linux/commit/749f487a31d6818dadc37ba729475d0486daf81c
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Abd-Alrhman-Masalkhi/block-Removed-a-warning-while-compiling-with-a-cross-compiler-for-parisc/20210630-161407
        git checkout 749f487a31d6818dadc37ba729475d0486daf81c
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=s390 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   In file included from block/genhd.c:14:
   In file included from include/linux/blkdev.h:25:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:75:
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
   In file included from block/genhd.c:14:
   In file included from include/linux/blkdev.h:25:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:75:
   include/asm-generic/io.h:490:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:115:54: note: expanded from macro '__swab32'
   #define __swab32(x) (__u32)__builtin_bswap32((__u32)(x))
                                                        ^
   In file included from block/genhd.c:14:
   In file included from include/linux/blkdev.h:25:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:75:
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
>> block/genhd.c:1110:6: warning: no previous prototype for function 'print_disk_stats' [-Wmissing-prototypes]
   void print_disk_stats(struct seq_file *seqf,
        ^
   block/genhd.c:1110:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void print_disk_stats(struct seq_file *seqf,
   ^
   static 
   13 warnings generated.


vim +/print_disk_stats +1110 block/genhd.c

  1109	
> 1110	void print_disk_stats(struct seq_file *seqf,
  1111			      unsigned int inflight, struct disk_stats *stat)
  1112	{
  1113		seq_printf(seqf, "%lu %lu %lu %u "
  1114			   "%lu %lu %lu %u "
  1115			   "%u %u %u "
  1116			   "%lu %lu %lu %u "
  1117			   "%lu %u"
  1118			   "\n",
  1119			   stat->ios[STAT_READ],
  1120			   stat->merges[STAT_READ],
  1121			   stat->sectors[STAT_READ],
  1122			   (unsigned int)div_u64(stat->nsecs[STAT_READ],
  1123						 NSEC_PER_MSEC),
  1124			   stat->ios[STAT_WRITE],
  1125			   stat->merges[STAT_WRITE],
  1126			   stat->sectors[STAT_WRITE],
  1127			   (unsigned int)div_u64(stat->nsecs[STAT_WRITE],
  1128						 NSEC_PER_MSEC),
  1129			   inflight,
  1130			   jiffies_to_msecs(stat->io_ticks),
  1131			   (unsigned int)div_u64(stat->nsecs[STAT_READ] +
  1132						 stat->nsecs[STAT_WRITE] +
  1133						 stat->nsecs[STAT_DISCARD] +
  1134						 stat->nsecs[STAT_FLUSH],
  1135						 NSEC_PER_MSEC),
  1136			   stat->ios[STAT_DISCARD],
  1137			   stat->merges[STAT_DISCARD],
  1138			   stat->sectors[STAT_DISCARD],
  1139			   (unsigned int)div_u64(stat->nsecs[STAT_DISCARD],
  1140						 NSEC_PER_MSEC),
  1141			   stat->ios[STAT_FLUSH],
  1142			   (unsigned int)div_u64(stat->nsecs[STAT_FLUSH],
  1143						 NSEC_PER_MSEC)
  1144			);
  1145	}
  1146	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202106302152.4UFCIhHa-lkp%40intel.com.

--BOKacYhQ+x31HxR3
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--BOKacYhQ+x31HxR3--
