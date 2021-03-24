Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBL5F5SBAMGQEP2OS5PA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x637.google.com (mail-pl1-x637.google.com [IPv6:2607:f8b0:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id CE4F93475D1
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Mar 2021 11:21:36 +0100 (CET)
Received: by mail-pl1-x637.google.com with SMTP id 17sf776181plj.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Mar 2021 03:21:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616581295; cv=pass;
        d=google.com; s=arc-20160816;
        b=CDI6ny/UuL8KWjrphv+5wQqDnwFXaUpxJau7X3aKpN/tueKYUHyas4i77FMjzwJFAG
         J1fwsfM466/t4br082xPPwBrteyBf2G9WUhROr4QFaHgChZx6Sbl9WNiKnAgxpySfzbu
         ZbrG/CzLZVwJYh5pGGSBHHMj9BcKLHqPVGzj7kDiuNc5/mTbwv2yGpJEbAMcXqdq0wnj
         Tc4Is++4MNbHJPlsLDeWy8wwxNzTXftjdmlQ0PfKq9ESCJ/pwP5VMDXj76kls3rxsvKN
         M0Oaw9Q+muRrp7fH0hRe4i5eUW8PFFhpYY+TSXY0DfXcCOY12Y56Qy5rpfa1g4/QvBWZ
         OewA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=oqwJFmidDIdnC5EMafCVejZtEA0R7/Vt5XAIiu67qnA=;
        b=rv89ffEvyB69EbYKG41OuIYv0eJpuCyVfxw5l/jjI9VsIl88JxhFN5ocXTSfhR+ZLN
         MuMCfrvGs2APYM2I//sxUMO9Q1CJOrZJ8zJF1Zu6Y37ehySJXXDy24Ps5KOnlTMcykzg
         jRZusQuT240iaCXiWe9/afirq08ROAYQP4jP+Yg32lhDy4enVH/pIOf0yu5pCdJxcd1r
         4oI+EbwHJZBZdPbhW/rBX9EriqS7mqKIWSQld0ACyr15Y0PneOW/tNrBvjVC4fkCv4rO
         5hgyekYf/L/6QYZQ/8UcBE8pMTwmGUfT5pRMWbJFL3WKjgPJ4jIRV6D8+hQsmc3RIfN/
         PLaQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=oqwJFmidDIdnC5EMafCVejZtEA0R7/Vt5XAIiu67qnA=;
        b=LLi3MXbntUdCZ2M9ljH/5N+u5BI1q9GhbrGc0pRnoyzQqWq1H++U+Q4Epu0EEnJQtq
         T3XpvL38MSjDeIMQ3P1JVEGC/H426YJtnNXCwUnQ8cvltpEMmOx4JlKfmgcLDY02t0KZ
         uEYOWfRwpMDtd6kxXEcljs8+JuZHgLhy/UhgaJ59myVVWptnOexfFXSrYzhft2iJ/H3a
         BBVhmURpciKwTnw1mqVWiocMClIsswseEnfyELIZTOWE2NHxf5N4tcDavVqcte52l2C8
         o0s13IPwb8KdYTkwXVwja6YiS1z/AvXIgUbT2cgcWmvXEIG2zYXPtZNgNg0meEcaJ0L2
         5oKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=oqwJFmidDIdnC5EMafCVejZtEA0R7/Vt5XAIiu67qnA=;
        b=ZqcDUzuHy85OreOJztASeghQHiQy1XaLwSwW2A72z30dxS7hv1SMwRhATF3DuHzFhy
         GBSNd0RBS552RkrXPaarf18Fo3cd/sKqogIHR6C0iNB6AG/7nu7fZ3Fr8WKJgcDefN9j
         FctfyjMK2d7cKEIs0szyd/0IPSyHjlY+aDjbc4X3rcrlDLSMOklyeuIHRKekT9u7Q4Av
         iwMpGnRxQkGGhCv69gFGSYakcMR7CH5tQxcKZKjX8O+sUg+7N/gBjRPg8jd/aLAvOCv0
         yCQ3lhC8v8G+FhHI0h8m92aeNQPQ1vwStu1eY3ny4bLMeG6Plu58YXS0IfHVfaGPS5KC
         g6pQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532HGBgAH1XFqyEZ99zbevqWGkkWN8p9Jy3tUBovMNMPxriOejAG
	z7/6WbmRumWGjZKBoANa+vk=
X-Google-Smtp-Source: ABdhPJwUxZT187lNshxlRkKZ1ohHN3UNxKE8IipAPcW/OQoeR5hv40pZSP03NklpRFBX3Hm7L87Szg==
X-Received: by 2002:a63:d40b:: with SMTP id a11mr2361912pgh.192.1616581295377;
        Wed, 24 Mar 2021 03:21:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:6256:: with SMTP id q22ls667546pgv.2.gmail; Wed, 24 Mar
 2021 03:21:34 -0700 (PDT)
X-Received: by 2002:a62:83c6:0:b029:21b:b0e5:4560 with SMTP id h189-20020a6283c60000b029021bb0e54560mr2466707pfe.69.1616581294624;
        Wed, 24 Mar 2021 03:21:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616581294; cv=none;
        d=google.com; s=arc-20160816;
        b=v/2xYSrt0GZNBjO12DLxWpWEnA1IaLI7YWg6xcs3KA9F6WoBLa69cP0pbc9v/2vbN1
         zNw1PHsbwASY+8+1dxzftxUdTjm0V/gORFUkMdT6j/ft4QuVekEyez0ZXmwer0rEuNcW
         01dgIQ13dtLeETy3XnaxuAmxuzctoJQE5HBQsrKAP976Dz86caQqaHJcpXqM1/JlORgh
         CFvIpHhFrCX7QQX8jjhu7v1tCy8MAvdsI5jxodNHfbwzmJ4IX1Sz9J50mM6njd2SXvUL
         7Up3OMvfTbRmcOzYI0kJFmSaouRcdTyREVKrCq6JodDByQSfgdtAOJRQp0YCH1Tv4zBS
         duBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=lNsGTz8Y/a3obk4nmv2EVxRxDghbZjGD98O103AgyBg=;
        b=dMZ80wM1wGYAuAjd0lqd5H61YwIoQLON1PZD8IdkPcm5e7dsRmuegdAlZANRzNmGkX
         erHrZrrIcZctjyS1zUA7iKUa/lK1VZKa98rbCJa9Se/cBwGL70RDwo+peq+HqDQx2PVI
         Uof3FrZTQupA9mxoR1/C2yUAbKO3VsGKCkxoAfC1lsx98GpeW/u7INvZJt+HAryeBv+R
         0Hs/jVLhvZbZLGnhRjiGy2UbVBWfY/Vx04C6zK4YFYBdqkqTpW3Oo8C7Vfd6uaUsiSsM
         3lR4u77DHs+L1xbMEUzgZjM3ZqZfqawfTmKZrmusgajwmY31bhzpeGmImcp9hFJv6JHn
         gxng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga11.intel.com (mga11.intel.com. [192.55.52.93])
        by gmr-mx.google.com with ESMTPS id 131si78002pfa.2.2021.03.24.03.21.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Mar 2021 03:21:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) client-ip=192.55.52.93;
IronPort-SDR: 0/wFQEZj8oZky7CvCNbDmuvYI2XVje8CtIC/ravN7ktXkGl6Li0GO2yCP/zB7UQySyJhJzYVb4
 HfWi3Pk5QZvw==
X-IronPort-AV: E=McAfee;i="6000,8403,9932"; a="187363127"
X-IronPort-AV: E=Sophos;i="5.81,274,1610438400"; 
   d="gz'50?scan'50,208,50";a="187363127"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Mar 2021 03:21:33 -0700
IronPort-SDR: Ok/PJtTj2yaIJx2KhtElEc6QK4L2gZmNy3OQ+vUL/xUjKVvih0Ebd4AD13t0pKnnZqvF3hG/dU
 LQeFasrcYlhg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,274,1610438400"; 
   d="gz'50?scan'50,208,50";a="415422065"
Received: from lkp-server01.sh.intel.com (HELO 69d8fcc516b7) ([10.239.97.150])
  by orsmga008.jf.intel.com with ESMTP; 24 Mar 2021 03:21:31 -0700
Received: from kbuild by 69d8fcc516b7 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lP0dm-0001AX-Pg; Wed, 24 Mar 2021 10:21:30 +0000
Date: Wed, 24 Mar 2021 18:21:12 +0800
From: kernel test robot <lkp@intel.com>
To: Thomas Gleixner <tglx@linutronix.de>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org, x86@kernel.org,
	Ingo Molnar <mingo@kernel.org>
Subject: [tip:tmp.tmp 15/21] kernel/rcu/../locking/rtmutex_common.h:58:28:
 error: no member named 'pi_waiters' in 'struct task_struct'
Message-ID: <202103241805.DpvaOjQh-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="T4sUOijqQbZv57TR"
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


--T4sUOijqQbZv57TR
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git tmp.tmp
head:   5965a7adbd72dd9b288c0911cb73719fed1efa08
commit: 18970ac4e37011fd0c709b6c2a640f01eecf2dd7 [15/21] locking/rtmutex: Remove pointless CONFIG_RT_MUTEXES=n stubs
config: s390-randconfig-r034-20210324 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project a4fb88669cd98db6fef7dcac88e3ec425d40c00d)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install s390 cross compiling tool for clang build
        # apt-get install binutils-s390x-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git/commit/?id=18970ac4e37011fd0c709b6c2a640f01eecf2dd7
        git remote add tip https://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git
        git fetch --no-tags tip tmp.tmp
        git checkout 18970ac4e37011fd0c709b6c2a640f01eecf2dd7
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=s390 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   In file included from kernel/rcu/tree.c:48:
   In file included from include/linux/suspend.h:5:
   In file included from include/linux/swap.h:9:
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
   In file included from kernel/rcu/tree.c:48:
   In file included from include/linux/suspend.h:5:
   In file included from include/linux/swap.h:9:
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
   In file included from kernel/rcu/tree.c:48:
   In file included from include/linux/suspend.h:5:
   In file included from include/linux/swap.h:9:
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
   In file included from kernel/rcu/tree.c:4671:
   In file included from kernel/rcu/tree_plugin.h:14:
>> kernel/rcu/../locking/rtmutex_common.h:58:28: error: no member named 'pi_waiters' in 'struct task_struct'
           return !RB_EMPTY_ROOT(&p->pi_waiters.rb_root);
                                  ~  ^
   include/linux/rbtree.h:40:42: note: expanded from macro 'RB_EMPTY_ROOT'
   #define RB_EMPTY_ROOT(root)  (READ_ONCE((root)->rb_node) == NULL)
                                            ^~~~
   include/asm-generic/rwonce.h:49:33: note: expanded from macro 'READ_ONCE'
           compiletime_assert_rwonce_type(x);                              \
                                          ^
   include/asm-generic/rwonce.h:36:35: note: expanded from macro 'compiletime_assert_rwonce_type'
           compiletime_assert(__native_word(t) || sizeof(t) == sizeof(long long),  \
                                            ^
   note: (skipping 1 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/linux/compiler_types.h:320:22: note: expanded from macro 'compiletime_assert'
           _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
                               ^~~~~~~~~
   include/linux/compiler_types.h:308:23: note: expanded from macro '_compiletime_assert'
           __compiletime_assert(condition, msg, prefix, suffix)
                                ^~~~~~~~~
   include/linux/compiler_types.h:300:9: note: expanded from macro '__compiletime_assert'
                   if (!(condition))                                       \
                         ^~~~~~~~~
   In file included from kernel/rcu/tree.c:4671:
   In file included from kernel/rcu/tree_plugin.h:14:
>> kernel/rcu/../locking/rtmutex_common.h:58:28: error: no member named 'pi_waiters' in 'struct task_struct'
           return !RB_EMPTY_ROOT(&p->pi_waiters.rb_root);
                                  ~  ^
   include/linux/rbtree.h:40:42: note: expanded from macro 'RB_EMPTY_ROOT'
   #define RB_EMPTY_ROOT(root)  (READ_ONCE((root)->rb_node) == NULL)
                                            ^~~~
   include/asm-generic/rwonce.h:49:33: note: expanded from macro 'READ_ONCE'
           compiletime_assert_rwonce_type(x);                              \
                                          ^
   include/asm-generic/rwonce.h:36:35: note: expanded from macro 'compiletime_assert_rwonce_type'
           compiletime_assert(__native_word(t) || sizeof(t) == sizeof(long long),  \
                                            ^
   note: (skipping 1 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/linux/compiler_types.h:320:22: note: expanded from macro 'compiletime_assert'
           _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
                               ^~~~~~~~~
   include/linux/compiler_types.h:308:23: note: expanded from macro '_compiletime_assert'
           __compiletime_assert(condition, msg, prefix, suffix)
                                ^~~~~~~~~
   include/linux/compiler_types.h:300:9: note: expanded from macro '__compiletime_assert'
                   if (!(condition))                                       \
                         ^~~~~~~~~
   In file included from kernel/rcu/tree.c:4671:
   In file included from kernel/rcu/tree_plugin.h:14:
>> kernel/rcu/../locking/rtmutex_common.h:58:28: error: no member named 'pi_waiters' in 'struct task_struct'
           return !RB_EMPTY_ROOT(&p->pi_waiters.rb_root);
                                  ~  ^
   include/linux/rbtree.h:40:42: note: expanded from macro 'RB_EMPTY_ROOT'
   #define RB_EMPTY_ROOT(root)  (READ_ONCE((root)->rb_node) == NULL)
                                            ^~~~
   include/asm-generic/rwonce.h:49:33: note: expanded from macro 'READ_ONCE'
           compiletime_assert_rwonce_type(x);                              \
                                          ^
   include/asm-generic/rwonce.h:36:35: note: expanded from macro 'compiletime_assert_rwonce_type'
           compiletime_assert(__native_word(t) || sizeof(t) == sizeof(long long),  \
                                            ^
   note: (skipping 1 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/linux/compiler_types.h:320:22: note: expanded from macro 'compiletime_assert'
           _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
                               ^~~~~~~~~
   include/linux/compiler_types.h:308:23: note: expanded from macro '_compiletime_assert'
           __compiletime_assert(condition, msg, prefix, suffix)
                                ^~~~~~~~~
   include/linux/compiler_types.h:300:9: note: expanded from macro '__compiletime_assert'
                   if (!(condition))                                       \
                         ^~~~~~~~~
   In file included from kernel/rcu/tree.c:4671:
   In file included from kernel/rcu/tree_plugin.h:14:
>> kernel/rcu/../locking/rtmutex_common.h:58:28: error: no member named 'pi_waiters' in 'struct task_struct'
           return !RB_EMPTY_ROOT(&p->pi_waiters.rb_root);
                                  ~  ^
   include/linux/rbtree.h:40:42: note: expanded from macro 'RB_EMPTY_ROOT'
   #define RB_EMPTY_ROOT(root)  (READ_ONCE((root)->rb_node) == NULL)
                                            ^~~~
   include/asm-generic/rwonce.h:49:33: note: expanded from macro 'READ_ONCE'
           compiletime_assert_rwonce_type(x);                              \
                                          ^
   include/asm-generic/rwonce.h:36:35: note: expanded from macro 'compiletime_assert_rwonce_type'
           compiletime_assert(__native_word(t) || sizeof(t) == sizeof(long long),  \
                                            ^
   note: (skipping 1 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/linux/compiler_types.h:320:22: note: expanded from macro 'compiletime_assert'
           _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
                               ^~~~~~~~~
   include/linux/compiler_types.h:308:23: note: expanded from macro '_compiletime_assert'
           __compiletime_assert(condition, msg, prefix, suffix)
                                ^~~~~~~~~
   include/linux/compiler_types.h:300:9: note: expanded from macro '__compiletime_assert'
                   if (!(condition))                                       \
                         ^~~~~~~~~
   In file included from kernel/rcu/tree.c:4671:
   In file included from kernel/rcu/tree_plugin.h:14:
>> kernel/rcu/../locking/rtmutex_common.h:58:28: error: no member named 'pi_waiters' in 'struct task_struct'
           return !RB_EMPTY_ROOT(&p->pi_waiters.rb_root);
                                  ~  ^
   include/linux/rbtree.h:40:42: note: expanded from macro 'RB_EMPTY_ROOT'
   #define RB_EMPTY_ROOT(root)  (READ_ONCE((root)->rb_node) == NULL)
                                            ^~~~
   include/asm-generic/rwonce.h:49:33: note: expanded from macro 'READ_ONCE'
           compiletime_assert_rwonce_type(x);                              \
                                          ^
   include/asm-generic/rwonce.h:36:48: note: expanded from macro 'compiletime_assert_rwonce_type'
           compiletime_assert(__native_word(t) || sizeof(t) == sizeof(long long),  \
                                                         ^
   include/linux/compiler_types.h:320:22: note: expanded from macro 'compiletime_assert'
           _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
                               ^~~~~~~~~
   include/linux/compiler_types.h:308:23: note: expanded from macro '_compiletime_assert'
           __compiletime_assert(condition, msg, prefix, suffix)
                                ^~~~~~~~~
   include/linux/compiler_types.h:300:9: note: expanded from macro '__compiletime_assert'
                   if (!(condition))                                       \
                         ^~~~~~~~~
   In file included from kernel/rcu/tree.c:4671:
   In file included from kernel/rcu/tree_plugin.h:14:
>> kernel/rcu/../locking/rtmutex_common.h:58:28: error: no member named 'pi_waiters' in 'struct task_struct'
           return !RB_EMPTY_ROOT(&p->pi_waiters.rb_root);
                                  ~  ^
   include/linux/rbtree.h:40:42: note: expanded from macro 'RB_EMPTY_ROOT'
   #define RB_EMPTY_ROOT(root)  (READ_ONCE((root)->rb_node) == NULL)
                                            ^~~~
   include/asm-generic/rwonce.h:50:14: note: expanded from macro 'READ_ONCE'
           __READ_ONCE(x);                                                 \
                       ^
   include/asm-generic/rwonce.h:44:65: note: expanded from macro '__READ_ONCE'
   #define __READ_ONCE(x)  (*(const volatile __unqual_scalar_typeof(x) *)&(x))
                                                                    ^
   include/linux/compiler_types.h:271:13: note: expanded from macro '__unqual_scalar_typeof'
                   _Generic((x),                                           \
                             ^
   In file included from kernel/rcu/tree.c:4671:
   In file included from kernel/rcu/tree_plugin.h:14:
>> kernel/rcu/../locking/rtmutex_common.h:58:28: error: no member named 'pi_waiters' in 'struct task_struct'
           return !RB_EMPTY_ROOT(&p->pi_waiters.rb_root);
                                  ~  ^
   include/linux/rbtree.h:40:42: note: expanded from macro 'RB_EMPTY_ROOT'
   #define RB_EMPTY_ROOT(root)  (READ_ONCE((root)->rb_node) == NULL)
                                            ^~~~
   include/asm-generic/rwonce.h:50:14: note: expanded from macro 'READ_ONCE'
           __READ_ONCE(x);                                                 \
                       ^
   include/asm-generic/rwonce.h:44:65: note: expanded from macro '__READ_ONCE'
   #define __READ_ONCE(x)  (*(const volatile __unqual_scalar_typeof(x) *)&(x))
                                                                    ^
   include/linux/compiler_types.h:278:15: note: expanded from macro '__unqual_scalar_typeof'
                            default: (x)))
                                      ^
   In file included from kernel/rcu/tree.c:4671:
   In file included from kernel/rcu/tree_plugin.h:14:
>> kernel/rcu/../locking/rtmutex_common.h:58:28: error: no member named 'pi_waiters' in 'struct task_struct'
           return !RB_EMPTY_ROOT(&p->pi_waiters.rb_root);
                                  ~  ^
   include/linux/rbtree.h:40:42: note: expanded from macro 'RB_EMPTY_ROOT'
   #define RB_EMPTY_ROOT(root)  (READ_ONCE((root)->rb_node) == NULL)
                                            ^~~~
   include/asm-generic/rwonce.h:50:14: note: expanded from macro 'READ_ONCE'
           __READ_ONCE(x);                                                 \
                       ^
   include/asm-generic/rwonce.h:44:72: note: expanded from macro '__READ_ONCE'
   #define __READ_ONCE(x)  (*(const volatile __unqual_scalar_typeof(x) *)&(x))
                                                                           ^
   In file included from kernel/rcu/tree.c:4671:
   In file included from kernel/rcu/tree_plugin.h:14:
>> kernel/rcu/../locking/rtmutex_common.h:58:10: error: invalid operands to binary expression ('void' and 'void *')
           return !RB_EMPTY_ROOT(&p->pi_waiters.rb_root);
                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/rbtree.h:40:58: note: expanded from macro 'RB_EMPTY_ROOT'
   #define RB_EMPTY_ROOT(root)  (READ_ONCE((root)->rb_node) == NULL)
                                 ~~~~~~~~~~~~~~~~~~~~~~~~~~ ^  ~~~~
   In file included from kernel/rcu/tree.c:4671:
   In file included from kernel/rcu/tree_plugin.h:14:
   kernel/rcu/../locking/rtmutex_common.h:63:21: error: no member named 'pi_waiters' in 'struct task_struct'
           return rb_entry(p->pi_waiters.rb_leftmost, struct rt_mutex_waiter,
                           ~  ^
   include/linux/rbtree.h:38:50: note: expanded from macro 'rb_entry'
   #define rb_entry(ptr, type, member) container_of(ptr, type, member)
                                                    ^~~
   include/linux/kernel.h:708:26: note: expanded from macro 'container_of'
           void *__mptr = (void *)(ptr);                                   \
                                   ^~~
   In file included from kernel/rcu/tree.c:4671:
   In file included from kernel/rcu/tree_plugin.h:14:
   kernel/rcu/../locking/rtmutex_common.h:63:21: error: no member named 'pi_waiters' in 'struct task_struct'
           return rb_entry(p->pi_waiters.rb_leftmost, struct rt_mutex_waiter,
                           ~  ^
   include/linux/rbtree.h:38:50: note: expanded from macro 'rb_entry'
   #define rb_entry(ptr, type, member) container_of(ptr, type, member)
                                                    ^~~
   include/linux/kernel.h:709:34: note: expanded from macro 'container_of'
           BUILD_BUG_ON_MSG(!__same_type(*(ptr), ((type *)0)->member) &&   \
                                           ^~~
   include/linux/compiler_types.h:256:63: note: expanded from macro '__same_type'
   #define __same_type(a, b) __builtin_types_compatible_p(typeof(a), typeof(b))
                                                                 ^
   note: (skipping 1 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/linux/compiler_types.h:320:22: note: expanded from macro 'compiletime_assert'
           _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
                               ^~~~~~~~~
   include/linux/compiler_types.h:308:23: note: expanded from macro '_compiletime_assert'
           __compiletime_assert(condition, msg, prefix, suffix)
                                ^~~~~~~~~
   include/linux/compiler_types.h:300:9: note: expanded from macro '__compiletime_assert'
                   if (!(condition))                                       \
                         ^~~~~~~~~
   In file included from kernel/rcu/tree.c:4671:
   In file included from kernel/rcu/tree_plugin.h:14:
   kernel/rcu/../locking/rtmutex_common.h:63:21: error: no member named 'pi_waiters' in 'struct task_struct'
           return rb_entry(p->pi_waiters.rb_leftmost, struct rt_mutex_waiter,
                           ~  ^
   include/linux/rbtree.h:38:50: note: expanded from macro 'rb_entry'
   #define rb_entry(ptr, type, member) container_of(ptr, type, member)
                                                    ^~~
   include/linux/kernel.h:710:20: note: expanded from macro 'container_of'
                            !__same_type(*(ptr), void),                    \
                                           ^~~
   include/linux/compiler_types.h:256:63: note: expanded from macro '__same_type'
   #define __same_type(a, b) __builtin_types_compatible_p(typeof(a), typeof(b))
                                                                 ^
   note: (skipping 1 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/linux/compiler_types.h:320:22: note: expanded from macro 'compiletime_assert'
           _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
                               ^~~~~~~~~
   include/linux/compiler_types.h:308:23: note: expanded from macro '_compiletime_assert'
           __compiletime_assert(condition, msg, prefix, suffix)
                                ^~~~~~~~~
   include/linux/compiler_types.h:300:9: note: expanded from macro '__compiletime_assert'
                   if (!(condition))                                       \
                         ^~~~~~~~~
   12 warnings and 12 errors generated.


vim +58 kernel/rcu/../locking/rtmutex_common.h

23f78d4a03c53c kernel/rtmutex_common.h         Ingo Molnar     2006-06-27  55  
23f78d4a03c53c kernel/rtmutex_common.h         Ingo Molnar     2006-06-27  56  static inline int task_has_pi_waiters(struct task_struct *p)
23f78d4a03c53c kernel/rtmutex_common.h         Ingo Molnar     2006-06-27  57  {
a23ba907d5e65d kernel/locking/rtmutex_common.h Davidlohr Bueso 2017-09-08 @58  	return !RB_EMPTY_ROOT(&p->pi_waiters.rb_root);
23f78d4a03c53c kernel/rtmutex_common.h         Ingo Molnar     2006-06-27  59  }
23f78d4a03c53c kernel/rtmutex_common.h         Ingo Molnar     2006-06-27  60  

:::::: The code at line 58 was first introduced by commit
:::::: a23ba907d5e65d6aeea3e59c82fda9cd206a7aad locking/rtmutex: replace top-waiter and pi_waiters leftmost caching

:::::: TO: Davidlohr Bueso <dave@stgolabs.net>
:::::: CC: Linus Torvalds <torvalds@linux-foundation.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202103241805.DpvaOjQh-lkp%40intel.com.

--T4sUOijqQbZv57TR
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
8+RK2Yr/D87FHigougAA

--T4sUOijqQbZv57TR--
