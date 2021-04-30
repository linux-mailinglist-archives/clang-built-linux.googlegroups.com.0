Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBVNYWCCAMGQE7AILYWQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc37.google.com (mail-oo1-xc37.google.com [IPv6:2607:f8b0:4864:20::c37])
	by mail.lfdr.de (Postfix) with ESMTPS id E42D736FCFA
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Apr 2021 17:03:50 +0200 (CEST)
Received: by mail-oo1-xc37.google.com with SMTP id n22-20020a4ad4160000b02901e94af54f75sf20960430oos.17
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Apr 2021 08:03:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619795029; cv=pass;
        d=google.com; s=arc-20160816;
        b=ooWGXKmusnXtBFLvvuIcHqa9SuhirReydgOxc7nztC1ASOKcW8fWV+sVUB9vgyIgNk
         /x1ECpT2xiq6q8frMzEc/Ln0MIyjNXn1GKbHJz1sjUBb54+GZNrHiFaBO7JuugEjt3/y
         fk9JEsCaMQEKmZkaqp/+R841J5m6XuzAClCj1+8hB6UvPTyvJiyUjRQCMZD7nHjuvQLd
         BdLJDHQCtD0HPeJNBKg2/95pvyN0UB2F/rZJ/9js01VIStCPM+NHtDzFcYo/lUUQL3SH
         IN3O5r9eZHCHAT8nmAuSOH9KzP/oVaxQ6zx4fjEhA3wb7dPIivmDxoN3KGHEGVp8ruVq
         14bQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=jkkhm8ZtVrus9giLl5AnQdb1mioKySyrMWAR8U3EP9k=;
        b=u2j3qMH2idN3VffLG6Krs8ML2/JxfgnRWr4h/znF3lcBIFKnUkVuV6n3BJMQyNgBvD
         S8EY7S3A6ubIUZ82385Epm0/BS1avvt1AuYeothkMEnZMEUb9WnlObXQfUZ3ImfKkBub
         QInOMGZTQ2gr2p2ka7i7ytj6PmL/R8o1qcpftWCnWub/SWcm7AWUWk0GWIH9WWqu7HU6
         d5M8/+lhrUXT1N+sQ9Hw66h6P2TQXyNL/05zTBluTLmO7LwxiN8iKyS18iCRyQfDqvnv
         ILVXqPuMquc2FPXq1BfBIvdApJxM3GX2XFz2nWaPOTHtZ/qXDpD72Tp84SpW1L1xl/vW
         ReCA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jkkhm8ZtVrus9giLl5AnQdb1mioKySyrMWAR8U3EP9k=;
        b=jnY9Z9+awJdl+73IMVIE2iIbZ8b1sB4QHANRZ8imRdLLYr+ogk3+Riapwznxp6naWQ
         /5t1iaRZBWFZzeyi3Sk0QeIGKmnVd8QWUXymM1gizn5sdDkTsOi6M2I1YPkSasgGqu/C
         SlitRhr8PJL2U0v7HNoTPaadkiNEQYs3ByUyt+AphCgcl85wnfqJfZVHJRYD86cH+dLS
         kypDXAo9zhWcGzfPneBIB0v02/6GtSpTaxVw3yU1InH7wgJWWduWrzk20lgpjtAiBPdd
         PqYm2tA/wypy6No8F3YZkR6y4ah6kUUzmJ1HCBxjKnanWvbykkwrF9U3Vd4KJTAmASfk
         zWtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=jkkhm8ZtVrus9giLl5AnQdb1mioKySyrMWAR8U3EP9k=;
        b=JNMw4xPxp9GOc0+BSAAPQoCAILoMGGbMvh+qBYQm5hQUEI7iwzn3svj4ymZqKrbdoQ
         njKupVT2bXsfxrqsQ8g/fsWiIOsQq7yUWKSaYPykRS5p1oy4hbf0U105WKcVxL4uL1Tt
         Wu02BeJ/VnhqHbygt22kArZdDERR8GJAExDBGCN5YgPtEsHvk81EdyN6DnM89IF3zKN7
         tNF8gICnp5IO3m+UV06kVbUBMpY5IcoaY9j425+Sk81z9NMjGgU+RBfpSsQmFXHt70vR
         uGi2swkxaApnnlo0ZnR+4TboAutCer2BcVspqQxjQ3D18/chDFsWzTK1p7uhcQdOyz8h
         zCTg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530ATVonyukAbPk4/NzN21po4IOI608lxv3KJJ9n/M4wA/84f9sa
	WItr4ia8jucEUIJvhEfvOQw=
X-Google-Smtp-Source: ABdhPJxiBHyTZzX9ARH+z5+ggov1DTraIFmo2KMxgpJ8UadQoNbZjNeikeHoSPhJ46a+2rMaaTu+hQ==
X-Received: by 2002:aca:90b:: with SMTP id 11mr11048819oij.77.1619795029276;
        Fri, 30 Apr 2021 08:03:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:19f8:: with SMTP id t24ls1835890ott.7.gmail; Fri,
 30 Apr 2021 08:03:48 -0700 (PDT)
X-Received: by 2002:a05:6830:30bc:: with SMTP id g28mr1482091ots.43.1619795028721;
        Fri, 30 Apr 2021 08:03:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619795028; cv=none;
        d=google.com; s=arc-20160816;
        b=je0RE5CnyZODuZ5DoiTRJUlgY87pnY0m2Wj1Gr43P7w28l/xHUz7pHum/M3aLaixCa
         zc8OF+UvZMzOlCtDU0lM0eQSeElv7fFlW5CFaGrr/MOEXhyipMwY5Y/lzxP7zvQXOjHV
         zIQqedGONGdDAxfqcra0fEDF0RxyEsCnJ4wAU9rWhMsn4s1XKV2X9kya8s+EjBDlUY8P
         xagYC7jkv9ohfU+Fzthp/XXRR+bWSZMCsOYEFRQzVZN9cwveYr0QBc74/ePW5F5iCx4a
         6YTvvuT1xmRqNmkAu5TFSLGLuCueIMxG4zmt1ug2KoEMEGhudBWT8jukP/3vM2/gczAw
         K7Dw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=IbEFcdzF+AsOMS1aDsUayS0nqoqTbc7h0VZwg6jHvdE=;
        b=KRauHeSFm5kGR6t+pWbgFoQCuxSwN1SaoOIVj2Uqd+U3yrY0+uaAl1IVpVmaglCud/
         ZElyIpCU5cJq6/eO4W1bKwWhduApiA/+6uZe6/acCXNZXT0dXHDvSbl7dlYs+8ntsRbS
         Mfj1RCTL0WYQ5ecj1tW1d+xcN441oYivbLnc8NT1HTKkw2+b+lMg/aPby912t8K6iUvW
         +qmdtkekGHjwuIWDcUZfZ6RkJaE9pd5oYGDNKjVzMO2nu6cLgQkGu6iMZPi1LY+ibl5D
         gdAkUIo0PPKGeq6wqCuPi4WgoWO+A1Ez0WeAVoQji5IXbclxuJb5u0Jh8/5ZDdn2hg24
         MiXA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga17.intel.com (mga17.intel.com. [192.55.52.151])
        by gmr-mx.google.com with ESMTPS id w16si683967oov.0.2021.04.30.08.03.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Apr 2021 08:03:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) client-ip=192.55.52.151;
IronPort-SDR: 0comVi1rknHpczQmoNckKb+mrwdGdxe1srmu/h1e9ga6aTg1ennXpFYO0jjAkuUL061N3ui8sa
 GxblVOA8ywTA==
X-IronPort-AV: E=McAfee;i="6200,9189,9970"; a="177452107"
X-IronPort-AV: E=Sophos;i="5.82,263,1613462400"; 
   d="gz'50?scan'50,208,50";a="177452107"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 Apr 2021 08:03:47 -0700
IronPort-SDR: vjP+KVCTnXvGfAuaqRUt8ntV2m+ybnWxtwg3q0biCF3pQ1AkZjnN7An7i/bdSzA6MrjKbrOCJT
 RKXMKuOU78bA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,263,1613462400"; 
   d="gz'50?scan'50,208,50";a="426478723"
Received: from lkp-server01.sh.intel.com (HELO a48ff7ddd223) ([10.239.97.150])
  by orsmga007.jf.intel.com with ESMTP; 30 Apr 2021 08:03:41 -0700
Received: from kbuild by a48ff7ddd223 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lcUg9-0008Bo-3f; Fri, 30 Apr 2021 15:03:41 +0000
Date: Fri, 30 Apr 2021 23:03:18 +0800
From: kernel test robot <lkp@intel.com>
To: Joel Stanley <joel@jms.id.au>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Sasha Levin <sashal@kernel.org>
Subject: [linux-stable-rc:linux-4.19.y 5303/9999] drivers/atm/eni.c:244:48:
 warning: for loop has empty body
Message-ID: <202104302309.NqGm8Csz-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="tThc/1wpZn/ma/RB"
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


--tThc/1wpZn/ma/RB
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git linux-4.19.y
head:   e864f43593ccf9180c61738abdf1c1dde091367d
commit: b92e5db0f492026778cb31dfc479e50f33f75bca [5303/9999] powerpc/32: Avoid unsupported flags with clang
config: powerpc-randconfig-r024-20210430 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 8f5a2a5836cc8e4c1def2bdeb022e7b496623439)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc cross compiling tool for clang build
        # apt-get install binutils-powerpc-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git/commit/?id=b92e5db0f492026778cb31dfc479e50f33f75bca
        git remote add linux-stable-rc https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git
        git fetch --no-tags linux-stable-rc linux-4.19.y
        git checkout b92e5db0f492026778cb31dfc479e50f33f75bca
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 ARCH=powerpc 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   include/linux/compiler.h:77:42: note: expanded from macro 'unlikely'
   # define unlikely(x)    __builtin_expect(!!(x), 0)
                                               ^
   In file included from drivers/atm/eni.c:12:
   In file included from include/linux/atmdev.h:13:
   In file included from include/net/sock.h:51:
   include/linux/netdevice.h:2703:34: warning: comparison of integers of different signs: 'int' and 'unsigned int' [-Wsign-compare]
                   skb_checksum_start_offset(skb) <
                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ^
   include/linux/netdevice.h:3477:15: warning: comparison of integers of different signs: 'int' and 'unsigned int' [-Wsign-compare]
           BUG_ON(index >= dev->num_rx_queues);
                  ~~~~~ ^  ~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/bug.h:76:27: note: expanded from macro 'BUG_ON'
           if (__builtin_constant_p(x)) {                          \
                                    ^
   In file included from drivers/atm/eni.c:12:
   In file included from include/linux/atmdev.h:13:
   In file included from include/net/sock.h:51:
   include/linux/netdevice.h:3477:15: warning: comparison of integers of different signs: 'int' and 'unsigned int' [-Wsign-compare]
           BUG_ON(index >= dev->num_rx_queues);
                  ~~~~~ ^  ~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/bug.h:77:7: note: expanded from macro 'BUG_ON'
                   if (x)                                          \
                       ^
   In file included from drivers/atm/eni.c:12:
   In file included from include/linux/atmdev.h:13:
   In file included from include/net/sock.h:51:
   include/linux/netdevice.h:3788:37: warning: comparison of integers of different signs: 'int' and 'unsigned int' [-Wsign-compare]
           if (debug_value < 0 || debug_value >= (sizeof(u32) * 8))
                                  ~~~~~~~~~~~ ^   ~~~~~~~~~~~~~~~
   In file included from drivers/atm/eni.c:12:
   In file included from include/linux/atmdev.h:13:
   In file included from include/net/sock.h:64:
   In file included from include/linux/filter.h:24:
   In file included from include/net/sch_generic.h:16:
   In file included from include/net/rtnetlink.h:6:
   include/net/netlink.h:358:18: warning: comparison of integers of different signs: 'const __u32' (aka 'const unsigned int') and 'int' [-Wsign-compare]
                   nlh->nlmsg_len <= remaining);
                   ~~~~~~~~~~~~~~ ^  ~~~~~~~~~
   include/net/netlink.h:395:21: warning: comparison of integers of different signs: 'const __u32' (aka 'const unsigned int') and 'int' [-Wsign-compare]
           if (nlh->nlmsg_len < nlmsg_msg_size(hdrlen))
               ~~~~~~~~~~~~~~ ^ ~~~~~~~~~~~~~~~~~~~~~~
   include/net/netlink.h:430:21: warning: comparison of integers of different signs: 'const __u32' (aka 'const unsigned int') and 'int' [-Wsign-compare]
           if (nlh->nlmsg_len < nlmsg_msg_size(hdrlen))
               ~~~~~~~~~~~~~~ ^ ~~~~~~~~~~~~~~~~~~~~~~
   In file included from drivers/atm/eni.c:12:
   In file included from include/linux/atmdev.h:13:
   In file included from include/net/sock.h:64:
   In file included from include/linux/filter.h:24:
   In file included from include/net/sch_generic.h:16:
   include/net/rtnetlink.h:25:21: warning: comparison of integers of different signs: 'int' and 'unsigned int' [-Wsign-compare]
           if (nlmsg_len(nlh) >= sizeof(struct rtgenmsg))
               ~~~~~~~~~~~~~~ ^  ~~~~~~~~~~~~~~~~~~~~~~~
   In file included from drivers/atm/eni.c:12:
   In file included from include/linux/atmdev.h:13:
   In file included from include/net/sock.h:64:
   In file included from include/linux/filter.h:24:
   include/net/sch_generic.h:387:33: warning: comparison of integers of different signs: 'unsigned int' and 'int' [-Wsign-compare]
           BUILD_BUG_ON(sizeof(qcb->data) < sz);
                        ~~~~~~~~~~~~~~~~~ ^ ~~
   include/linux/build_bug.h:69:19: note: expanded from macro 'BUILD_BUG_ON'
           BUILD_BUG_ON_MSG(condition, "BUILD_BUG_ON failed: " #condition)
                            ^~~~~~~~~
   include/linux/build_bug.h:45:58: note: expanded from macro 'BUILD_BUG_ON_MSG'
   #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)
                                                            ^~~~
   include/linux/compiler.h:348:22: note: expanded from macro 'compiletime_assert'
           _compiletime_assert(condition, msg, __compiletime_assert_, __LINE__)
                               ^~~~~~~~~
   include/linux/compiler.h:336:23: note: expanded from macro '_compiletime_assert'
           __compiletime_assert(condition, msg, prefix, suffix)
                                ^~~~~~~~~
   include/linux/compiler.h:328:9: note: expanded from macro '__compiletime_assert'
                   if (!(condition))                                       \
                         ^~~~~~~~~
   In file included from drivers/atm/eni.c:12:
   In file included from include/linux/atmdev.h:13:
   In file included from include/net/sock.h:64:
   In file included from include/linux/filter.h:24:
   include/net/sch_generic.h:493:13: warning: comparison of integers of different signs: 'int' and 'const unsigned int' [-Wsign-compare]
           return ntx < dev->real_num_tx_queues ?
                  ~~~ ^ ~~~~~~~~~~~~~~~~~~~~~~~
   include/net/sch_generic.h:537:15: warning: comparison of integers of different signs: 'u32' (aka 'unsigned int') and 'int' [-Wsign-compare]
           return (hwtc < netdev_get_num_tc(dev)) ? hwtc : -EINVAL;
                   ~~~~ ^ ~~~~~~~~~~~~~~~~~~~~~~
   In file included from drivers/atm/eni.c:12:
   In file included from include/linux/atmdev.h:13:
   In file included from include/net/sock.h:64:
   include/linux/filter.h:1011:16: warning: comparison of integers of different signs: 'const __u32' (aka 'const unsigned int') and 'int' [-Wsign-compare]
                   if (first->k == SKF_AD_OFF + SKF_AD_ALU_XOR_X)
                       ~~~~~~~~ ^  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   In file included from drivers/atm/eni.c:12:
   In file included from include/linux/atmdev.h:13:
   include/net/sock.h:2246:43: warning: comparison of integers of different signs: 'unsigned int' and 'int' [-Wsign-compare]
           return refcount_read(&sk->sk_wmem_alloc) < (sk->sk_sndbuf >> 1);
                  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ^  ~~~~~~~~~~~~~~~~~~
   In file included from drivers/atm/eni.c:12:
   include/linux/atmdev.h:274:61: warning: comparison of integers of different signs: 'unsigned int' and 'int' [-Wsign-compare]
           return (size + refcount_read(&sk_atm(vcc)->sk_wmem_alloc)) <
                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  ^
>> drivers/atm/eni.c:244:48: warning: for loop has empty body [-Wempty-body]
           for (order = 0; (1 << order) < *size; order++);
                                                         ^
   drivers/atm/eni.c:244:48: note: put the semicolon on a separate line to silence this warning
   drivers/atm/eni.c:1109:70: warning: comparison of integers of different signs: 'unsigned int' and 'int' [-Wsign-compare]
           if (dma_wr != dma_rd && ((dma_rd+NR_DMA_TX-dma_wr) & (NR_DMA_TX-1)) <
                                    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  ^
   drivers/atm/eni.c:1223:27: warning: comparison of integers of different signs: 'int' and 'unsigned long' [-Wsign-compare]
                   if (ENI_VCC(vcc)->txing < tx->words && ENI_PRV_POS(skb) ==
                       ~~~~~~~~~~~~~~~~~~~ ^ ~~~~~~~~~
   drivers/atm/eni.c:1761:29: warning: comparison of integers of different signs: 'u32' (aka 'unsigned int') and 'int' [-Wsign-compare]
                   if (readl(eni_dev->ram+i) != i) break;
                       ~~~~~~~~~~~~~~~~~~~~~ ^  ~
   29 warnings generated.
   Assembler messages:
   Fatal error: invalid listing option `3'
   clang-13: error: assembler command failed with exit code 1 (use -v to see invocation)


vim +244 drivers/atm/eni.c

^1da177e4c3f41 Linus Torvalds 2005-04-16  232  
^1da177e4c3f41 Linus Torvalds 2005-04-16  233  
^1da177e4c3f41 Linus Torvalds 2005-04-16  234  static void __iomem *eni_alloc_mem(struct eni_dev *eni_dev, unsigned long *size)
^1da177e4c3f41 Linus Torvalds 2005-04-16  235  {
^1da177e4c3f41 Linus Torvalds 2005-04-16  236  	struct eni_free *list;
^1da177e4c3f41 Linus Torvalds 2005-04-16  237  	void __iomem *start;
^1da177e4c3f41 Linus Torvalds 2005-04-16  238  	int len,i,order,best_order,index;
^1da177e4c3f41 Linus Torvalds 2005-04-16  239  
^1da177e4c3f41 Linus Torvalds 2005-04-16  240  	list = eni_dev->free_list;
^1da177e4c3f41 Linus Torvalds 2005-04-16  241  	len = eni_dev->free_len;
^1da177e4c3f41 Linus Torvalds 2005-04-16  242  	if (*size < MID_MIN_BUF_SIZE) *size = MID_MIN_BUF_SIZE;
^1da177e4c3f41 Linus Torvalds 2005-04-16  243  	if (*size > MID_MAX_BUF_SIZE) return NULL;
^1da177e4c3f41 Linus Torvalds 2005-04-16 @244  	for (order = 0; (1 << order) < *size; order++);
^1da177e4c3f41 Linus Torvalds 2005-04-16  245  	DPRINTK("trying: %ld->%d\n",*size,order);
^1da177e4c3f41 Linus Torvalds 2005-04-16  246  	best_order = 65; /* we don't have more than 2^64 of anything ... */
^1da177e4c3f41 Linus Torvalds 2005-04-16  247  	index = 0; /* silence GCC */
^1da177e4c3f41 Linus Torvalds 2005-04-16  248  	for (i = 0; i < len; i++)
^1da177e4c3f41 Linus Torvalds 2005-04-16  249  		if (list[i].order == order) {
^1da177e4c3f41 Linus Torvalds 2005-04-16  250  			best_order = order;
^1da177e4c3f41 Linus Torvalds 2005-04-16  251  			index = i;
^1da177e4c3f41 Linus Torvalds 2005-04-16  252  			break;
^1da177e4c3f41 Linus Torvalds 2005-04-16  253  		}
^1da177e4c3f41 Linus Torvalds 2005-04-16  254  		else if (best_order > list[i].order && list[i].order > order) {
^1da177e4c3f41 Linus Torvalds 2005-04-16  255  				best_order = list[i].order;
^1da177e4c3f41 Linus Torvalds 2005-04-16  256  				index = i;
^1da177e4c3f41 Linus Torvalds 2005-04-16  257  			}
^1da177e4c3f41 Linus Torvalds 2005-04-16  258  	if (best_order == 65) return NULL;
^1da177e4c3f41 Linus Torvalds 2005-04-16  259  	start = list[index].start-eni_dev->base_diff;
^1da177e4c3f41 Linus Torvalds 2005-04-16  260  	list[index] = list[--len];
^1da177e4c3f41 Linus Torvalds 2005-04-16  261  	eni_dev->free_len = len;
^1da177e4c3f41 Linus Torvalds 2005-04-16  262  	*size = 1 << order;
^1da177e4c3f41 Linus Torvalds 2005-04-16  263  	eni_put_free(eni_dev,start+*size,(1 << best_order)-*size);
^1da177e4c3f41 Linus Torvalds 2005-04-16  264  	DPRINTK("%ld bytes (order %d) at 0x%lx\n",*size,order,start);
^1da177e4c3f41 Linus Torvalds 2005-04-16  265  	memset_io(start,0,*size);       /* never leak data */
^1da177e4c3f41 Linus Torvalds 2005-04-16  266  	/*dump_mem(eni_dev);*/
^1da177e4c3f41 Linus Torvalds 2005-04-16  267  	return start;
^1da177e4c3f41 Linus Torvalds 2005-04-16  268  }
^1da177e4c3f41 Linus Torvalds 2005-04-16  269  

:::::: The code at line 244 was first introduced by commit
:::::: 1da177e4c3f41524e886b7f1b8a0c1fc7321cac2 Linux-2.6.12-rc2

:::::: TO: Linus Torvalds <torvalds@ppc970.osdl.org>
:::::: CC: Linus Torvalds <torvalds@ppc970.osdl.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202104302309.NqGm8Csz-lkp%40intel.com.

--tThc/1wpZn/ma/RB
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
1nFjh1D/P0y/stToawEA

--tThc/1wpZn/ma/RB--
