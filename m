Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB2MQU6CAMGQEU7JTOGY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93e.google.com (mail-ua1-x93e.google.com [IPv6:2607:f8b0:4864:20::93e])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D4BB36E077
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Apr 2021 22:41:15 +0200 (CEST)
Received: by mail-ua1-x93e.google.com with SMTP id r26-20020ab058da0000b02901e9245a03f1sf6055716uac.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Apr 2021 13:41:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619642474; cv=pass;
        d=google.com; s=arc-20160816;
        b=qiQoyWh1ny6/ivphB29qtgPCHvJjx8eWrxVEVPXzFvt51IFrZzfvjYkFFerrSvvG9R
         GECaOWgPj8ar2jQLE3AYctAM+pephZ8TE0cC7PKqJOQztcIQX31w7N/fdGWtXCmzjkxo
         vU0mKvl2+33OiAAFBS0nKrvz69BekWu6aEc8o+b2zRLtsp66uLb3LwTyHUqANGTYfFkZ
         e5WBiM6mT0OxV8vaypL0TWqBtn8p6qdOj6qOqhckDHbirZdnni+hdUZmOLYzCQufsqXv
         nc19wXUq1+AsEM7jC3rP8EShIJLTrSyb0R04P/mE1sF+ytEKZ9Yj+0v4WG8+wTfaCmi0
         4b4A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=bG3p8hQ4QQafRXYkJBoT5jNUNv6q0WmbsAmYQMnfGKE=;
        b=MSkafEobmcVJs1GPXSXK0uF4ykowZWe1yzUeyvm4wPe94galjXxLVjFtvB6Blvuehm
         EVmPYIqY4J0VIDjKNgi7bv73JQfFqAqCrLsrhDcYy9RIkPtfvFb8X+aQIIAT5SXA7xi4
         PXUgItW3lX8UCjpzjBmv3RsxR2rgtWTnzp6IbJOtCqN1Yvl4f0u9AL0C3PlxE56rtWpA
         hCInzQ/hH88s4O6WMg3T87HaC9yvidLC9cPC0mqlkykmUgmWuf8r7tOyr1n8al5ELy3j
         jgo6WfDpfnKhAigxVHROMAdkBSaTMXoAgKeTmwCYFbhR51CHtSJkxA8XKaCuvQDcWj+6
         tqIQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bG3p8hQ4QQafRXYkJBoT5jNUNv6q0WmbsAmYQMnfGKE=;
        b=TZu/0jlgevG7H8zkfnCkGjZPGp6yEmLK9VdwOivJNnYYCiKXtiALnRTWD4H40SYBVt
         PHSS6P9kFVihYueEU8Dk/q1xNz6l0JBpcMyjszFyoxYb0my2TEe90vqWj/W6u22eUFC+
         FdWbZS1kSFGSYtFhbISqTXnvy3/ktlk/rkudARItVYE5uAJbi2R6CHlnDw4E+600kYC5
         fd8PZh73eZZR8NRQo+u/AIJWDUQnWJbnsRYB7R900Ns1OAwZLVA8+W/wpT9cLVGtHdhY
         f8PTj0YMZj4n2eOWA2ECMfNwBO9T6tKjVaKWPxQurXUXlwbNZluqKXw97vARZcBn4hrD
         t1Tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=bG3p8hQ4QQafRXYkJBoT5jNUNv6q0WmbsAmYQMnfGKE=;
        b=T71rQ+YRGGKq1t5cFi7mSt240jy2777ucH8UZfAWp/1RSWzqr1oPzzn431uRFUVdXp
         Q9MPuPYyYXfi7Rc7aKOvywoce/7y/0jGk4hxLQfqeBo54iI/9mjKl5QS2buQz49Erp/0
         Sb9Y9PWonspkIF3c/l+qJ2RJTZndWId6wEJ1aMO1axJH++D6q7L+KPKaid8elkLDoY/S
         OCc0pGxsbsO8qp6EhEX6W4qKFai9UkSHKDMUwk+qmjNpk1U5a9JPDw7p4fDfiU+NV556
         T202F6Knn3Ef406F2Kud+47TOZjiIpR2p6RkOoeBBR7Ih3C8QbQ4wszRoVOZLDRrFifw
         6wSA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5332/XLFWyQpd+vYMUbNbpPQYbmFVEd7R1Ok3NR8BioHX+lS98Rz
	uKqkc9lxbK50ypzzbNzF1oM=
X-Google-Smtp-Source: ABdhPJzwpwUCqAJt20Fkb64wo/mwVco8zE9XF5CKb7H+eiVfes/QmPuqQrFDXTODEeYmnxhdIeMpBA==
X-Received: by 2002:a67:ea92:: with SMTP id f18mr27067433vso.35.1619642473959;
        Wed, 28 Apr 2021 13:41:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:f301:: with SMTP id p1ls206825vsf.10.gmail; Wed, 28 Apr
 2021 13:41:13 -0700 (PDT)
X-Received: by 2002:a05:6102:242a:: with SMTP id l10mr27990172vsi.0.1619642473370;
        Wed, 28 Apr 2021 13:41:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619642473; cv=none;
        d=google.com; s=arc-20160816;
        b=zuyZEVixs6CSJ0DkFL7mR6wjcV2K1F60ZyITup2qKRLQvzRnNwIvmC6r4CzAp8EZ2B
         ddGsLIMV2Y1dXmVi66a0WJn5LW2D/BbB2f8FNqRrbd1iyg5uHsMC2srpmnMZvuqCfZuZ
         SnBwnGc1Xu7d+AEeZOUakIpp9fkwkX79r/1J154uMiF6zZGZMzDpmnSCgRmCWrd2DU7d
         eTRmuqTfregCYfSmiQtCaz0k5XoLJ/NxI6lF6t4zXhCn1QTetK9AFDQubSM3SHGUs9es
         IuwmqTXwvEXhHzlAF2H0uEY+CyQgGhQpXh1l5OZH1fRWn61jnblv96fembkfiN08ubxY
         Np6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=YK8mD6pJPh2L/7ag/RjCRWK9eoyPcFL4IsPRJhdgzJc=;
        b=tdbezA1DhlPDttU+9r4r0M+Hk/xlna+Ool1fErdgGIdwbt13yrAcD2Ex+RlwNiyQJQ
         cM1U4+NrNaKyEEs4dDWhbPMv5Xkzy1PDY+/e8tC4rXiAkZRYIRg7MG+XTgNMSvfl9Seo
         RNFQdYZkjB+a8EdrPs3dxQyzC5geHFtKh7++H7E7cKBjaraufjA4cPoYEftTJ2Du5Cwf
         P6WKhHFrMfQ/lq3ofalUknJ4sr+g3AEtdzC3rss+G++DYfvXxTNCpc0p3abj0wDZaZ0O
         fW+yEj4yFWCnW8Fh04nRVBNo0wwus7W4QsN3Q9xzlTnyzHAOmeo8QdxfZxNyA/HzZDnL
         qutg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga11.intel.com (mga11.intel.com. [192.55.52.93])
        by gmr-mx.google.com with ESMTPS id a6si104635vkh.0.2021.04.28.13.41.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Apr 2021 13:41:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) client-ip=192.55.52.93;
IronPort-SDR: OmAMhRspwi9Ezm8YhvWILphjBcW/um8SQ76Rx9FEvBi90eUNjI1AuoThNMeiKGexowMNyUwUXq
 VtycnVbNpBIw==
X-IronPort-AV: E=McAfee;i="6200,9189,9968"; a="193658859"
X-IronPort-AV: E=Sophos;i="5.82,258,1613462400"; 
   d="gz'50?scan'50,208,50";a="193658859"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Apr 2021 13:41:10 -0700
IronPort-SDR: viRn/fbNaht+dW7S1PQN/WBXzs0gFG2lwWt7HJdpcAMNBxeEFuI7oH1Bt1lngSRnYfYNcnCzSq
 gnKaMnEvvHWA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,258,1613462400"; 
   d="gz'50?scan'50,208,50";a="430494475"
Received: from lkp-server01.sh.intel.com (HELO a48ff7ddd223) ([10.239.97.150])
  by orsmga008.jf.intel.com with ESMTP; 28 Apr 2021 13:41:08 -0700
Received: from kbuild by a48ff7ddd223 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lbqzb-0007IK-Dq; Wed, 28 Apr 2021 20:41:07 +0000
Date: Thu, 29 Apr 2021 04:40:19 +0800
From: kernel test robot <lkp@intel.com>
To: Mark Rutland <mark.rutland@arm.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [mark-rutland:atomics/arch-atomic 29/33]
 include/asm-generic/atomic-long.h:59:9: error: implicit declaration of
 function 'atomic64_add_return'
Message-ID: <202104290405.JQd6kPQe-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="J2SCkAp4GZ/dPZZf"
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


--J2SCkAp4GZ/dPZZf
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/mark/linux.git atomics/arch-atomic
head:   2d06ef035a1f5b7e3e0378fbf58320ef632f776c
commit: 3f42021c420d7039f0f30038ad0b32bdbdefab9d [29/33] locking/atomic: s390: move to ARCH_ATOMIC
config: s390-randconfig-r006-20210428 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 87fc97169e7901dfe56ca0da0d92da0c02d2ef48)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install s390 cross compiling tool for clang build
        # apt-get install binutils-s390x-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/mark/linux.git/commit/?id=3f42021c420d7039f0f30038ad0b32bdbdefab9d
        git remote add mark-rutland https://git.kernel.org/pub/scm/linux/kernel/git/mark/linux.git
        git fetch --no-tags mark-rutland atomics/arch-atomic
        git checkout 3f42021c420d7039f0f30038ad0b32bdbdefab9d
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 ARCH=s390 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   In file included from arch/s390/kernel/asm-offsets.c:11:
   In file included from include/linux/kvm_host.h:7:
   In file included from include/linux/hardirq.h:5:
   In file included from include/linux/context_tracking_state.h:5:
   In file included from include/linux/percpu.h:7:
   In file included from include/linux/smp.h:13:
   In file included from include/linux/cpumask.h:13:
   In file included from include/linux/atomic.h:87:
>> include/asm-generic/atomic-long.h:59:9: error: implicit declaration of function 'atomic64_add_return' [-Werror,-Wimplicit-function-declaration]
           return atomic64_add_return(i, v);
                  ^
>> include/asm-generic/atomic-long.h:83:9: error: implicit declaration of function 'atomic64_fetch_add' [-Werror,-Wimplicit-function-declaration]
           return atomic64_fetch_add(i, v);
                  ^
>> include/asm-generic/atomic-long.h:275:9: error: implicit declaration of function 'atomic64_fetch_and' [-Werror,-Wimplicit-function-declaration]
           return atomic64_fetch_and(i, v);
                  ^
   include/asm-generic/atomic-long.h:275:9: note: did you mean 'atomic64_fetch_inc'?
   include/asm-generic/atomic-instrumented.h:1098:1: note: 'atomic64_fetch_inc' declared here
   atomic64_fetch_inc(atomic64_t *v)
   ^
   In file included from arch/s390/kernel/asm-offsets.c:11:
   In file included from include/linux/kvm_host.h:7:
   In file included from include/linux/hardirq.h:5:
   In file included from include/linux/context_tracking_state.h:5:
   In file included from include/linux/percpu.h:7:
   In file included from include/linux/smp.h:13:
   In file included from include/linux/cpumask.h:13:
   In file included from include/linux/atomic.h:87:
>> include/asm-generic/atomic-long.h:335:9: error: implicit declaration of function 'atomic64_fetch_or' [-Werror,-Wimplicit-function-declaration]
           return atomic64_fetch_or(i, v);
                  ^
>> include/asm-generic/atomic-long.h:365:9: error: implicit declaration of function 'atomic64_fetch_xor' [-Werror,-Wimplicit-function-declaration]
           return atomic64_fetch_xor(i, v);
                  ^
>> include/asm-generic/atomic-long.h:413:9: error: implicit declaration of function 'atomic64_cmpxchg' [-Werror,-Wimplicit-function-declaration]
           return atomic64_cmpxchg(v, old, new);
                  ^
   include/asm-generic/atomic-long.h:413:9: note: did you mean '__atomic64_cmpxchg'?
   arch/s390/include/asm/atomic_ops.h:133:20: note: '__atomic64_cmpxchg' declared here
   static inline long __atomic64_cmpxchg(long *ptr, long old, long new)
                      ^
   In file included from arch/s390/kernel/asm-offsets.c:11:
   In file included from include/linux/kvm_host.h:15:
   In file included from include/linux/mm.h:28:
>> include/linux/page_ref.h:175:19: error: implicit declaration of function 'atomic_cmpxchg' [-Werror,-Wimplicit-function-declaration]
           int ret = likely(atomic_cmpxchg(&page->_refcount, count, 0) == count);
                            ^
   include/linux/page_ref.h:175:19: note: did you mean '__atomic_cmpxchg'?
   arch/s390/include/asm/atomic_ops.h:123:19: note: '__atomic_cmpxchg' declared here
   static inline int __atomic_cmpxchg(int *ptr, int old, int new)
                     ^
   In file included from arch/s390/kernel/asm-offsets.c:11:
   In file included from include/linux/kvm_host.h:33:
   In file included from include/linux/kvm_para.h:5:
   In file included from include/uapi/linux/kvm_para.h:36:
   In file included from arch/s390/include/asm/kvm_para.h:25:
   In file included from arch/s390/include/asm/diag.h:12:
   In file included from include/linux/if_ether.h:19:
   In file included from include/linux/skbuff.h:31:
   In file included from include/linux/dma-mapping.h:10:
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
   In file included from arch/s390/kernel/asm-offsets.c:11:
   In file included from include/linux/kvm_host.h:33:
   In file included from include/linux/kvm_para.h:5:
   In file included from include/uapi/linux/kvm_para.h:36:
   In file included from arch/s390/include/asm/kvm_para.h:25:
   In file included from arch/s390/include/asm/diag.h:12:
   In file included from include/linux/if_ether.h:19:
   In file included from include/linux/skbuff.h:31:
   In file included from include/linux/dma-mapping.h:10:
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
   In file included from arch/s390/kernel/asm-offsets.c:11:
   In file included from include/linux/kvm_host.h:33:
   In file included from include/linux/kvm_para.h:5:
   In file included from include/uapi/linux/kvm_para.h:36:
   In file included from arch/s390/include/asm/kvm_para.h:25:
   In file included from arch/s390/include/asm/diag.h:12:
   In file included from include/linux/if_ether.h:19:
   In file included from include/linux/skbuff.h:31:
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
   12 warnings and 7 errors generated.
--
   WARNING: unmet direct dependencies detected for ADI_AXI_ADC
   Depends on IIO && HAS_IOMEM && OF
   Selected by
   - AD9467 && IIO && SPI
   In file included from arch/s390/kernel/asm-offsets.c:11:
   In file included from include/linux/kvm_host.h:7:
   In file included from include/linux/hardirq.h:5:
   In file included from include/linux/context_tracking_state.h:5:
   In file included from include/linux/percpu.h:7:
   In file included from include/linux/smp.h:13:
   In file included from include/linux/cpumask.h:13:
   In file included from include/linux/atomic.h:87:
>> include/asm-generic/atomic-long.h:59:9: error: implicit declaration of function 'atomic64_add_return'
   return atomic64_add_return(i, v);
   ^
>> include/asm-generic/atomic-long.h:83:9: error: implicit declaration of function 'atomic64_fetch_add'
   return atomic64_fetch_add(i, v);
   ^
>> include/asm-generic/atomic-long.h:275:9: error: implicit declaration of function 'atomic64_fetch_and'
   return atomic64_fetch_and(i, v);
   ^
   include/asm-generic/atomic-long.h:275:9: note: did you mean
   include/asm-generic/atomic-instrumented.h:1098:1: note: 'atomic64_fetch_inc' declared here
   atomic64_fetch_inc(atomic64_t
   ^
   In file included from arch/s390/kernel/asm-offsets.c:11:
   In file included from include/linux/kvm_host.h:7:
   In file included from include/linux/hardirq.h:5:
   In file included from include/linux/context_tracking_state.h:5:
   In file included from include/linux/percpu.h:7:
   In file included from include/linux/smp.h:13:
   In file included from include/linux/cpumask.h:13:
   In file included from include/linux/atomic.h:87:
>> include/asm-generic/atomic-long.h:335:9: error: implicit declaration of function 'atomic64_fetch_or'
   return atomic64_fetch_or(i, v);
   ^
>> include/asm-generic/atomic-long.h:365:9: error: implicit declaration of function 'atomic64_fetch_xor'
   return atomic64_fetch_xor(i, v);
   ^
>> include/asm-generic/atomic-long.h:413:9: error: implicit declaration of function 'atomic64_cmpxchg'
   return atomic64_cmpxchg(v, old, new);
   ^
   include/asm-generic/atomic-long.h:413:9: note: did you mean
   arch/s390/include/asm/atomic_ops.h:133:20: note: '__atomic64_cmpxchg' declared here
   static inline long __atomic64_cmpxchg(long long old, long new)
   ^
   In file included from arch/s390/kernel/asm-offsets.c:11:
   In file included from include/linux/kvm_host.h:15:
   In file included from include/linux/mm.h:28:
>> include/linux/page_ref.h:175:19: error: implicit declaration of function 'atomic_cmpxchg'
   int ret = likely(atomic_cmpxchg(&page->_refcount, count, 0) == count);
   ^
   include/linux/page_ref.h:175:19: note: did you mean
   arch/s390/include/asm/atomic_ops.h:123:19: note: '__atomic_cmpxchg' declared here
   static inline int __atomic_cmpxchg(int int old, int new)
   ^
   In file included from arch/s390/kernel/asm-offsets.c:11:
   In file included from include/linux/kvm_host.h:33:
   In file included from include/linux/kvm_para.h:5:
   In file included from include/uapi/linux/kvm_para.h:36:
   In file included from arch/s390/include/asm/kvm_para.h:25:
   In file included from arch/s390/include/asm/diag.h:12:
   In file included from include/linux/if_ether.h:19:
   In file included from include/linux/skbuff.h:31:
   In file included from include/linux/dma-mapping.h:10:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:80:
   include/asm-generic/io.h:464:31: warning: performing pointer arithmetic on a null pointer has undefined behavior
   val = __raw_readb(PCI_IOBASE + addr);
   ~~~~~~~~~~ ^
   include/asm-generic/io.h:477:61: warning: performing pointer arithmetic on a null pointer has undefined behavior
   val = __le16_to_cpu((__le16 __force)__raw_readw(PCI_IOBASE + addr));
   ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:36:59: note: expanded from macro '__le16_to_cpu'
   #define __le16_to_cpu(x) __swab16((__force __u16)(__le16)(x))
   ^
   include/uapi/linux/swab.h:102:54: note: expanded from macro '__swab16'
   #define __swab16(x) (__u16)__builtin_bswap16((__u16)(x))
   ^
   In file included from arch/s390/kernel/asm-offsets.c:11:
   In file included from include/linux/kvm_host.h:33:
   In file included from include/linux/kvm_para.h:5:
   In file included from include/uapi/linux/kvm_para.h:36:
   In file included from arch/s390/include/asm/kvm_para.h:25:
   In file included from arch/s390/include/asm/diag.h:12:
   In file included from include/linux/if_ether.h:19:
   In file included from include/linux/skbuff.h:31:
   In file included from include/linux/dma-mapping.h:10:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:80:
   include/asm-generic/io.h:490:61: warning: performing pointer arithmetic on a null pointer has undefined behavior
   val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
   ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
   ^
   include/uapi/linux/swab.h:115:54: note: expanded from macro '__swab32'
   #define __swab32(x) (__u32)__builtin_bswap32((__u32)(x))
   ^
   In file included from arch/s390/kernel/asm-offsets.c:11:
   In file included from include/linux/kvm_host.h:33:
   In file included from include/linux/kvm_para.h:5:
   In file included from include/uapi/linux/kvm_para.h:36:
   In file included from arch/s390/include/asm/kvm_para.h:25:
   In file included from arch/s390/include/asm/diag.h:12:
   In file included from include/linux/if_ether.h:19:
   In file included from include/linux/skbuff.h:31:
   In file included from include/linux/dma-mapping.h:10:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:80:
   include/asm-generic/io.h:501:33: warning: performing pointer arithmetic on a null pointer has undefined behavior
   __raw_writeb(value, PCI_IOBASE + addr);
   ~~~~~~~~~~ ^
   include/asm-generic/io.h:511:59: warning: performing pointer arithmetic on a null pointer has undefined behavior
   __raw_writew((u16 __force)cpu_to_le16(value), PCI_IOBASE + addr);
   ~~~~~~~~~~ ^
   include/asm-generic/io.h:521:59: warning: performing pointer arithmetic on a null pointer has undefined behavior
   __raw_writel((u32 __force)cpu_to_le32(value), PCI_IOBASE + addr);
   ~~~~~~~~~~ ^
   include/asm-generic/io.h:609:20: warning: performing pointer arithmetic on a null pointer has undefined behavior
   readsb(PCI_IOBASE + addr, buffer, count);
   ~~~~~~~~~~ ^
   include/asm-generic/io.h:617:20: warning: performing pointer arithmetic on a null pointer has undefined behavior
   readsw(PCI_IOBASE + addr, buffer, count);
   ~~~~~~~~~~ ^
   include/asm-generic/io.h:625:20: warning: performing pointer arithmetic on a null pointer has undefined behavior
   readsl(PCI_IOBASE + addr, buffer, count);
   ~~~~~~~~~~ ^
   include/asm-generic/io.h:634:21: warning: performing pointer arithmetic on a null pointer has undefined behavior
   writesb(PCI_IOBASE + addr, buffer, count);
   ~~~~~~~~~~ ^
   include/asm-generic/io.h:643:21: warning: performing pointer arithmetic on a null pointer has undefined behavior
   writesw(PCI_IOBASE + addr, buffer, count);
   ~~~~~~~~~~ ^
   include/asm-generic/io.h:652:21: warning: performing pointer arithmetic on a null pointer has undefined behavior
   writesl(PCI_IOBASE + addr, buffer, count);
   ~~~~~~~~~~ ^
   12 warnings and 7 errors generated.
   Makefile arch include kernel scripts source usr [scripts/Makefile.build:116: arch/s390/kernel/asm-offsets.s] Error 1
   Target '__build' not remade because of errors.
   Makefile arch include kernel scripts source usr [Makefile:1235: prepare0] Error 2
   Target 'prepare' not remade because of errors.
   make: Makefile arch include kernel scripts source usr [Makefile:215: __sub-make] Error 2
   make: Target 'prepare' not remade because of errors.

Kconfig warnings: (for reference only)
   WARNING: unmet direct dependencies detected for ADI_AXI_ADC
   Depends on IIO && HAS_IOMEM && OF
   Selected by
   - AD9467 && IIO && SPI


vim +/atomic64_add_return +59 include/asm-generic/atomic-long.h

586b610e43a5ad Will Deacon  2015-08-06  55  
c020395b6634b7 Marco Elver  2019-11-26  56  static __always_inline long
b5d47ef9ea5c5f Mark Rutland 2018-09-04  57  atomic_long_add_return(long i, atomic_long_t *v)
b5d47ef9ea5c5f Mark Rutland 2018-09-04  58  {
b5d47ef9ea5c5f Mark Rutland 2018-09-04 @59  	return atomic64_add_return(i, v);
b5d47ef9ea5c5f Mark Rutland 2018-09-04  60  }
b5d47ef9ea5c5f Mark Rutland 2018-09-04  61  
c020395b6634b7 Marco Elver  2019-11-26  62  static __always_inline long
b5d47ef9ea5c5f Mark Rutland 2018-09-04  63  atomic_long_add_return_acquire(long i, atomic_long_t *v)
b5d47ef9ea5c5f Mark Rutland 2018-09-04  64  {
b5d47ef9ea5c5f Mark Rutland 2018-09-04  65  	return atomic64_add_return_acquire(i, v);
b5d47ef9ea5c5f Mark Rutland 2018-09-04  66  }
b5d47ef9ea5c5f Mark Rutland 2018-09-04  67  
c020395b6634b7 Marco Elver  2019-11-26  68  static __always_inline long
b5d47ef9ea5c5f Mark Rutland 2018-09-04  69  atomic_long_add_return_release(long i, atomic_long_t *v)
b5d47ef9ea5c5f Mark Rutland 2018-09-04  70  {
b5d47ef9ea5c5f Mark Rutland 2018-09-04  71  	return atomic64_add_return_release(i, v);
b5d47ef9ea5c5f Mark Rutland 2018-09-04  72  }
b5d47ef9ea5c5f Mark Rutland 2018-09-04  73  
c020395b6634b7 Marco Elver  2019-11-26  74  static __always_inline long
b5d47ef9ea5c5f Mark Rutland 2018-09-04  75  atomic_long_add_return_relaxed(long i, atomic_long_t *v)
b5d47ef9ea5c5f Mark Rutland 2018-09-04  76  {
b5d47ef9ea5c5f Mark Rutland 2018-09-04  77  	return atomic64_add_return_relaxed(i, v);
b5d47ef9ea5c5f Mark Rutland 2018-09-04  78  }
b5d47ef9ea5c5f Mark Rutland 2018-09-04  79  
c020395b6634b7 Marco Elver  2019-11-26  80  static __always_inline long
b5d47ef9ea5c5f Mark Rutland 2018-09-04  81  atomic_long_fetch_add(long i, atomic_long_t *v)
b5d47ef9ea5c5f Mark Rutland 2018-09-04  82  {
b5d47ef9ea5c5f Mark Rutland 2018-09-04 @83  	return atomic64_fetch_add(i, v);
b5d47ef9ea5c5f Mark Rutland 2018-09-04  84  }
b5d47ef9ea5c5f Mark Rutland 2018-09-04  85  

:::::: The code at line 59 was first introduced by commit
:::::: b5d47ef9ea5c5fe31d7eabeb79f697629bd9e2cb locking/atomics: Switch to generated atomic-long

:::::: TO: Mark Rutland <mark.rutland@arm.com>
:::::: CC: Ingo Molnar <mingo@kernel.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202104290405.JQd6kPQe-lkp%40intel.com.

--J2SCkAp4GZ/dPZZf
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--J2SCkAp4GZ/dPZZf--
