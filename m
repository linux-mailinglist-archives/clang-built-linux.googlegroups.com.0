Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBZX4UD4AKGQEUP4FGBI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3a.google.com (mail-oo1-xc3a.google.com [IPv6:2607:f8b0:4864:20::c3a])
	by mail.lfdr.de (Postfix) with ESMTPS id AACBC21B2F1
	for <lists+clang-built-linux@lfdr.de>; Fri, 10 Jul 2020 12:09:43 +0200 (CEST)
Received: by mail-oo1-xc3a.google.com with SMTP id u19sf3415640oof.21
        for <lists+clang-built-linux@lfdr.de>; Fri, 10 Jul 2020 03:09:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594375782; cv=pass;
        d=google.com; s=arc-20160816;
        b=wyMIF7EqCrLcUPgfpQa+ajaKXvaaz0ui1mO4IiO3k3u80gI9YnO5QApnrUgP7FAJBh
         vglMZ0I6ASSXh0fxy8EOHMrB7zIjubW5JZ5LYAQY9rQNHZpHSi8FLIxJebG4dhNMyTsr
         l8r3EbSHjm6bsVRrh54wRwF16TJHYAu858yzUilhIu86y7zVKVuchzAV/gxN5C/ZDL3a
         HotDuzf/8E+td25aZvaSCwgZf9kXJQks0ptMnYFFnn8MHMqS6QYWsWedJqK34XYq3QJW
         YZumAj3n/Oqcrxbirltq1ba/7f2rg8NjMleHnjh4M+KrMJCNQEcsn8EG5khl3TAtTSqi
         05jw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=/THWmHUkIRJkXHYbU/GogSIf8EiATjeTR0pY5dVkJso=;
        b=T7MLY9WZKqKTVSW3W+zOVdACO+spXj4aMjBHZscl1tC6zMoGGUaQJE/+Q52dRsbhc1
         mecjwE+xWloy3Tf9Ta/3qC5/yeFGkLO2YggEkyGwCagANqWpNl5v2Kq4Afza99nkm8kq
         4Cl95HFF+wwSF6aj7KAZPV0LXMNtY/5Zojb2NbSPWvYOfxXo5XQg97DChhODTIzEgd4g
         YaVuZpe04tnYj15Qz+Vxw/+YwwBHLRehcU2FN6xAjueEv3xyopeQcJykViohpLfr+rEB
         onSgk7njPyxkiAfaIfSIdWaKs9inN6DqpO/nT8AXkUc23Xg2a2JPXJl87Fdb3nuF/50w
         Pk+Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/THWmHUkIRJkXHYbU/GogSIf8EiATjeTR0pY5dVkJso=;
        b=V+Z/hAbCXdnQmVGkQ90y+BMtKG4vI/b7+PuDzT76ybHg+iMPo4thAIcEHBa8tKS3As
         86GlfBhnn1S1Shos4fRBit4CzMcfW6hcRXyliuDMjDKSCe8Vn18Hmnr3IwpU07d/wSGo
         Dl8OcdM7nJplvh72KpAqtXtr45voQp8HOoA5n+r6hkJpt7pqBTL2TXFd2JrZM1JmH9R/
         6dWu3Ej8hws74QRxJCtz1p8OBqxw94Uc9aTd/XEdnw6M7Um0n2Dw3m+/ognpMNT3QYzs
         4aF+lDqGm8aImbaUF++FXJP/eIvL/GGYlIDgBSuyC4GHiTcDPEZxrawZGeGijrjpfLhq
         ggPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=/THWmHUkIRJkXHYbU/GogSIf8EiATjeTR0pY5dVkJso=;
        b=Eb9LcbgEJkFlqWpBeS3mek8ofr+01c5tw/XT7ez5CFWLhqSmi+igvgUdXQYEExYDeG
         9EYisEXsm+dbTVUQxJj5Op/2QkAr0Jcn/lgoI9DgIhnSztOvxsbS6ajMB7IMYk93JNCv
         Us9fzROvAhlH5rX0rf4spUCjBZlJBcTRWFi8fyDI+d499+MsjZKQV2pOTh4rPGWbTs5w
         oV1etWy09NaM0ulKrCLLNkP1DOOhuV3GBRAODRN57Z8g8EeJ93QBx3+icYj7dixyag4W
         G2+1inVTTUy0zUAW56Dm+L8gganU8CvhCRHfcbJ+J+isYHg1/YpJcHWbkW4BDsufZbXc
         tSVw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533iaCl58bDJLLVLy1s4xa1dRqa8pS4dD4uylT116AQORxzd0JWz
	0RVy63p423PH916DAyrmk8Y=
X-Google-Smtp-Source: ABdhPJy4Z18zMdLT7AlzjF2rzAzZFxFr3Ay2IGs+m0tv/pe91s1cu5iUw7floeVxVHSgB3V7AIkgIQ==
X-Received: by 2002:aca:b884:: with SMTP id i126mr3592012oif.65.1594375782539;
        Fri, 10 Jul 2020 03:09:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:3116:: with SMTP id b22ls1874532ots.6.gmail; Fri,
 10 Jul 2020 03:09:42 -0700 (PDT)
X-Received: by 2002:a05:6830:309b:: with SMTP id f27mr43522217ots.315.1594375782052;
        Fri, 10 Jul 2020 03:09:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594375782; cv=none;
        d=google.com; s=arc-20160816;
        b=sOpVGYd+x3ECgZ0CPbbZGHseU0/4xShp3SYR5hNd/9g4V2huSGTSmwlfwtNJKHyf4Y
         Qa1nmr5GE86jWzWJ6LMXcWEfTdqnuN66Gz1S2BWXoFu6Fvvh6dscwPAEZzsVpEPur3+U
         GNBwkhTibeQMQ1ZM/YnVvFXSm3vmZjAr3XljW3GrwmuAJ2RSflwlCOWhSAWtuiB7hGjQ
         8LvZaqrhqQO6DmyNpO8LmcLwUHxuZzfSR1Ri6bdswM+TIqmSsYa/Dc6qESOIbv3tbHU4
         y3E4fKSc9WqiEsj0HWGMVQKEZObluiX8Xh29FuUnxWTTMb09OG8C2ngCdfZY8RAMtX9h
         qZ1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=MtwuWa9RJtUcZJd+Z4sFjb8SJs4chlQKc44/tTY6IJY=;
        b=YlNsPdgL0gYegg/mFqdcoq+HPpc1FqqalChAwSTl3Js3dzCq1Vm3J1p0eKH4tRX3rA
         8aRN5iP5lyLFOwAXQJC6DuXWyDElOSRS/vzw7oJqCHmsZ0E0/kOtvzAbzjhRCHrXAuY/
         F9uzqsmVR+7vGPMSRI6vdWX8Wag5zvw85IRdTnJLkhcqHa1k8MNSDdtwPPzMD7ir1C2i
         k7FZJt/mnDw/QbPh9uAd6KA8UtYrV0RDQVw7XsUu9o+26U7GTfAJ6NNlNniLQcMO/Rmr
         aKZjn+CAaS+sP7jrvkuUTeCFv2L0acqBz9ld5zmZmRYsrld3Mv6cV3BXxSXym//lygfj
         EPcg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga17.intel.com (mga17.intel.com. [192.55.52.151])
        by gmr-mx.google.com with ESMTPS id j2si270511otr.0.2020.07.10.03.09.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Jul 2020 03:09:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) client-ip=192.55.52.151;
IronPort-SDR: 0XGcDbYt/kxlnWg6usFfqtbIgLc42wbxzXzu/ZsqYBBldLU0QeBRHhCCkoqbclZeCO2i1Z9Yke
 UNuUEvG/4OrA==
X-IronPort-AV: E=McAfee;i="6000,8403,9677"; a="128244232"
X-IronPort-AV: E=Sophos;i="5.75,335,1589266800"; 
   d="gz'50?scan'50,208,50";a="128244232"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Jul 2020 03:09:40 -0700
IronPort-SDR: XDVIa/ovvotSiy9ZCvxN577GdmmQxSl6aqFule+rjdpsMN9tYPSLAWu/ZOSU2/dKJRl86q0tVH
 yNsWiGd2u/Cw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,335,1589266800"; 
   d="gz'50?scan'50,208,50";a="324557002"
Received: from lkp-server02.sh.intel.com (HELO 0fc60ea15964) ([10.239.97.151])
  by orsmga007.jf.intel.com with ESMTP; 10 Jul 2020 03:09:38 -0700
Received: from kbuild by 0fc60ea15964 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1jtpyL-00006q-8o; Fri, 10 Jul 2020 10:09:37 +0000
Date: Fri, 10 Jul 2020 18:09:23 +0800
From: kernel test robot <lkp@intel.com>
To: Vincent Guittot <vincent.guittot@linaro.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Valentin Schneider <valentin.schneider@arm.com>,
	Dietmar Eggemann <dietmar.eggemann@arm.com>
Subject: [vincent.guittot:sched/pelt 1/2] kernel/sched/fair.c:4056:25:
 warning: comparison of distinct pointer types ('typeof (task_h_load(p)) (aka
 'unsigned long and 'typeof (1) (aka 'int
Message-ID: <202007101820.LWRXMbQL%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="ZGiS0Q5IWpPtfppv"
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


--ZGiS0Q5IWpPtfppv
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.linaro.org/people/vincent.guittot/kernel.git sched/pelt
head:   cc807c0b8d03785da906a6a8436be5838bfe9d54
commit: a057128bc3087ebc9505454a1b5d7a4ae35c6e04 [1/2] sched/fair: handle case of task_h_load() returning 0
config: s390-randconfig-r031-20200710 (attached as .config)
compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 02946de3802d3bc65bc9f2eb9b8d4969b5a7add8)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install s390 cross compiling tool for clang build
        # apt-get install binutils-s390x-linux-gnu
        git checkout a057128bc3087ebc9505454a1b5d7a4ae35c6e04
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=s390 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

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
   In file included from kernel/sched/fair.c:23:
   In file included from kernel/sched/sched.h:17:
   In file included from include/linux/sched/isolation.h:6:
   In file included from include/linux/tick.h:8:
   In file included from include/linux/clockchips.h:14:
   In file included from include/linux/clocksource.h:21:
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
   In file included from kernel/sched/fair.c:23:
   In file included from kernel/sched/sched.h:17:
   In file included from include/linux/sched/isolation.h:6:
   In file included from include/linux/tick.h:8:
   In file included from include/linux/clockchips.h:14:
   In file included from include/linux/clocksource.h:21:
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
   In file included from kernel/sched/fair.c:23:
   In file included from kernel/sched/sched.h:17:
   In file included from include/linux/sched/isolation.h:6:
   In file included from include/linux/tick.h:8:
   In file included from include/linux/clockchips.h:14:
   In file included from include/linux/clocksource.h:21:
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
   In file included from kernel/sched/fair.c:23:
   In file included from kernel/sched/sched.h:17:
   In file included from include/linux/sched/isolation.h:6:
   In file included from include/linux/tick.h:8:
   In file included from include/linux/clockchips.h:14:
   In file included from include/linux/clocksource.h:21:
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
>> kernel/sched/fair.c:4056:25: warning: comparison of distinct pointer types ('typeof (task_h_load(p)) *' (aka 'unsigned long *') and 'typeof (1) *' (aka 'int *')) [-Wcompare-distinct-pointer-types]
           rq->misfit_task_load = max(task_h_load(p), 1);
                                  ^~~~~~~~~~~~~~~~~~~~~~
   include/linux/kernel.h:891:19: note: expanded from macro 'max'
   #define max(x, y)       __careful_cmp(x, y, >)
                           ^~~~~~~~~~~~~~~~~~~~~~
   include/linux/kernel.h:875:24: note: expanded from macro '__careful_cmp'
           __builtin_choose_expr(__safe_cmp(x, y), \
                                 ^~~~~~~~~~~~~~~~
   include/linux/kernel.h:865:4: note: expanded from macro '__safe_cmp'
                   (__typecheck(x, y) && __no_side_effects(x, y))
                    ^~~~~~~~~~~~~~~~~
   include/linux/kernel.h:851:29: note: expanded from macro '__typecheck'
                   (!!(sizeof((typeof(x) *)1 == (typeof(y) *)1)))
                              ~~~~~~~~~~~~~~ ^  ~~~~~~~~~~~~~~
   kernel/sched/fair.c:7662:11: warning: comparison of distinct pointer types ('typeof (task_h_load(p)) *' (aka 'unsigned long *') and 'typeof (1) *' (aka 'int *')) [-Wcompare-distinct-pointer-types]
                           load = max(task_h_load(p), 1);
                                  ^~~~~~~~~~~~~~~~~~~~~~
   include/linux/kernel.h:891:19: note: expanded from macro 'max'
   #define max(x, y)       __careful_cmp(x, y, >)
                           ^~~~~~~~~~~~~~~~~~~~~~
   include/linux/kernel.h:875:24: note: expanded from macro '__careful_cmp'
           __builtin_choose_expr(__safe_cmp(x, y), \
                                 ^~~~~~~~~~~~~~~~
   include/linux/kernel.h:865:4: note: expanded from macro '__safe_cmp'
                   (__typecheck(x, y) && __no_side_effects(x, y))
                    ^~~~~~~~~~~~~~~~~
   include/linux/kernel.h:851:29: note: expanded from macro '__typecheck'
                   (!!(sizeof((typeof(x) *)1 == (typeof(y) *)1)))
                              ~~~~~~~~~~~~~~ ^  ~~~~~~~~~~~~~~
   kernel/sched/fair.c:8180:19: warning: unused function 'check_misfit_status' [-Wunused-function]
   static inline int check_misfit_status(struct rq *rq, struct sched_domain *sd)
                     ^
   23 warnings generated.

vim +4056 kernel/sched/fair.c

  4036	
  4037	static inline void update_misfit_status(struct task_struct *p, struct rq *rq)
  4038	{
  4039		if (!static_branch_unlikely(&sched_asym_cpucapacity))
  4040			return;
  4041	
  4042		if (!p) {
  4043			rq->misfit_task_load = 0;
  4044			return;
  4045		}
  4046	
  4047		if (task_fits_capacity(p, capacity_of(cpu_of(rq)))) {
  4048			rq->misfit_task_load = 0;
  4049			return;
  4050		}
  4051	
  4052		/*
  4053		 * Make sure that misfit_task_load will not be null even if
  4054		 * task_h_load() returns 0.
  4055		 */
> 4056		rq->misfit_task_load = max(task_h_load(p), 1);
  4057	}
  4058	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202007101820.LWRXMbQL%25lkp%40intel.com.

--ZGiS0Q5IWpPtfppv
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
jMRpgGLV/wEGlRneVqgBAA==

--ZGiS0Q5IWpPtfppv--
