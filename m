Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB45L2L3QKGQE7BGPPQI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83f.google.com (mail-qt1-x83f.google.com [IPv6:2607:f8b0:4864:20::83f])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C7EF209E4A
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jun 2020 14:17:56 +0200 (CEST)
Received: by mail-qt1-x83f.google.com with SMTP id b1sf3881413qti.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jun 2020 05:17:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593087475; cv=pass;
        d=google.com; s=arc-20160816;
        b=kTMnOnWPnNrB89x8T6/7u2MZxpcSMM5FNe6vX8N64DGgbFr9CKRzT/ZsHT4wJpD5SO
         s0Fi53Xg5jomZkhbVY4E+6jSYfFUraQSrZaOIPEE/SQyu8YCvUxxNVcpIFh5CpeblgkB
         A1HQri1DXXXx1NtMMYs9bH59fc9jWgphOK4twtBsf/+pedhhrHZ7k7p3YlT/39DxyzX+
         sN4XU3eXPm2Yislm1BEXxPn37O59CHwzVTkXZ7KL8LzAC9pI7VIxdmCly0bVJaG4gUP0
         AKAKTSEATqnIsbWsUtBLn9uArOXwbdj84hdUNHI9tCC9XMqwXcCBlMG1Qdct2YmNYrUL
         4osA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=tih8Qwsw2zq16JlhtP5MrCy3ZxupYJuhkfHe2vMhFh0=;
        b=JQxTG1tL1WXAEcRIzD+xEjeDIXxnCDHrD0qERe99bN77cTGQ+j4IT662fRv1PwFy0b
         gHh+l/f2fJJ9PyDyrs+PrHRmwil9tfk1SwEL1nj2OPnS9jL1N6TUN7d/C1NIsYxJDVkC
         aipgXySwp4si6KuhFauYEWsHgJFWTiABR9kAeA8mP6/uNXhgtJTxTPcp7F/2Ux+vC6rX
         RALSNNXeTU8vgjbnynoXm+JmyTFKdZM5LFrnYsttPj4dQ81qLIWcAYRpeFuir5/0GmD/
         0FSHdDffNGjzXTrlY0/xIxPDQ7yz9sOPYyzG3iG3hYFJruqrxIUqT1RVgfZv+/iJhENN
         sOTA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tih8Qwsw2zq16JlhtP5MrCy3ZxupYJuhkfHe2vMhFh0=;
        b=qfFmzar/g1cyvtYRbPpr+uKb+wbG6mfZb+19KWXDsvkl5e5ESa6QGgow2l7KJcL7g2
         aZr7EZw9/kIXepl3fFL3Y4NqQ0WZ37Zv21UeKObXeg4RFojnDAaZTShOSwQnE4pbAOXd
         WuVpiBQYSvg7nVFIjAMK3PnGiTlvTfgILsGgjkJHTxH+DPTPPLdbIldDG3PBsLBuamgn
         ndy8ptvZvAm83Noydrg1kOFl2d71bj10MI4Bo6U0tCYIusmtzVh/JSFUrXnBpko9xi1t
         C20D2WpiPfiMOkgvIa9pgrmi07f1dfqESFKazrk8PLCd/MVNQbx0vlulOFuEJz371yW4
         uj+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=tih8Qwsw2zq16JlhtP5MrCy3ZxupYJuhkfHe2vMhFh0=;
        b=EYawadBo/QAjK+xzU/GvSxtdAmf0Rwbc8RaODsKJQFuUoYnSDHn776swjywTOxebIY
         5o7zm0eIWgyVpS0Cq1cTR5iLJnfvHR+9i8ZXMog1yC91YtDty2wxSGhkI/kbs3tEeA9i
         4dSd0SFDtSsCa2xO9z82c+O3pJcfLr9HQofV/pD0pbumn2Az3YDS2gryPrUq4F7t5nqs
         x7kexMMhTwmwx3FDuBad4jFA7y6VCofroVAgFnP7R5uuc0LaALRCXY858187+mUDKso6
         s0/dcMYFA02lmxJO5yC1nygLHuVfAFKjkjkQLgZZJtfaqZXdLKyIzshxVzTHmaEfde+e
         hNdQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530RV0ZCCFCJTFNRXv/J2ma0OpvJRAqOCFyDzOhBPxmH85vutCY5
	qjX2qIpbvlmk8ZYvZNsWutA=
X-Google-Smtp-Source: ABdhPJxAJj5IyCKEidANPJc+EtT1PQzEh3hSDY7s0mYtPsq7hJP1WiTCOVg4gXPYGS84GRtS7EOlOw==
X-Received: by 2002:a37:7e82:: with SMTP id z124mr7621125qkc.307.1593087475150;
        Thu, 25 Jun 2020 05:17:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:f78b:: with SMTP id s11ls1230312qvn.5.gmail; Thu, 25 Jun
 2020 05:17:54 -0700 (PDT)
X-Received: by 2002:a0c:aa9b:: with SMTP id f27mr13320417qvb.9.1593087474722;
        Thu, 25 Jun 2020 05:17:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593087474; cv=none;
        d=google.com; s=arc-20160816;
        b=qPP6QS3UBWD2VOalwlx4xcUGbH9MRNlZ1F7DzgF+gSWAxws5xdjz6HbU63//vQXXFc
         gzbZXP7/useztVpdblKKJUqesQ5diKfiPJCHhVg0vdhikgXV6CuZnbclzmTkcmQ34qGq
         dbyQeU0qFPjAce02UTZsK1C4Xd9H8abP0OIndJGJHHo0wxhVJBTwvxvjHAUrhL8HJt7Y
         l46IAbGfwlfAd+xZLUymWg1TPLzvffjg0pWCCmpHWpy1+DGCpv5OMzB92mmxGw6lzArH
         ughsQrZRMV5OOGlG00kmkh7CPFGVv0wFXtYnAZX0b12gasQRAY0jK6sCHqlgNpd/J11z
         opbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=+Bk1/5W/kOBbasCsNGY4PMsWK+2ikPRMBG6i6xDilRE=;
        b=mQpBQrhdNiaQzK5UFkH6TmILTmudtwEjirITGLfAR6W7mmvZyM6tLRVINqLrmeZTYt
         jqzobc9uE90HPJCRXAW3srk0GtVRcvpLsKpSUE4qLtiKk4j1nmd8fSV24MEtyXj5u49+
         7kPyuWZygR5rtPNnFCubxywZPrpOhJvgrQYTj4X8TY+FEbByKjlbSgWxZ2RLajQ8YEuQ
         Y0oZIrYCV5bUMioTpoom3eJCdg/S82RLPd/9zj3fwQOFnFvW1hyuAjWZQ3FLkfzrKazG
         bliXSD3HsLKpt6dC0EkCg3jPsp6aJDd+/PII4uDuN6zckBfTB1+bD3T096Xd3EMz1MkC
         t6WQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga06.intel.com (mga06.intel.com. [134.134.136.31])
        by gmr-mx.google.com with ESMTPS id m1si1717555qki.3.2020.06.25.05.17.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Jun 2020 05:17:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) client-ip=134.134.136.31;
IronPort-SDR: DFjYg29hm9EFEz9wXv5PqIOxQv2kzDL0NRrclpurISCFOvJDcF/XZzkOwP7QoyP6f34X8Ouzjz
 h4bKzm7d7GEg==
X-IronPort-AV: E=McAfee;i="6000,8403,9662"; a="206391345"
X-IronPort-AV: E=Sophos;i="5.75,279,1589266800"; 
   d="gz'50?scan'50,208,50";a="206391345"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Jun 2020 05:17:52 -0700
IronPort-SDR: WkLH7OxXgfsiQYr8VXr4MevxhdfYa8BRNMmtiq3Pq8xl4alf1bn2Oa+DtXiI9N6ZcfUE2GoKXH
 QHV8pxD+slDw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,279,1589266800"; 
   d="gz'50?scan'50,208,50";a="276001543"
Received: from lkp-server01.sh.intel.com (HELO 538b5e3c8319) ([10.239.97.150])
  by orsmga003.jf.intel.com with ESMTP; 25 Jun 2020 05:17:50 -0700
Received: from kbuild by 538b5e3c8319 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1joQpB-0001bM-Ui; Thu, 25 Jun 2020 12:17:49 +0000
Date: Thu, 25 Jun 2020 20:17:34 +0800
From: kernel test robot <lkp@intel.com>
To: Peter Zijlstra <peterz@infradead.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	"Paul E. McKenney" <paulmck@kernel.org>
Subject: [rcu:rcu/urgent 1/1] kernel/rcu/tree.c:253:8: error: implicit
 declaration of function 'arch_atomic_add_return'
Message-ID: <202006252031.pBEfpgI2%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="xHFwDpU9dbj6ez1V"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted
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


--xHFwDpU9dbj6ez1V
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/paulmck/linux-rcu.git rcu/urgent
head:   239341154165cec3676955bab4cc1d61852257ed
commit: 239341154165cec3676955bab4cc1d61852257ed [1/1] rcu: Fixup noinstr warnings
config: s390-randconfig-r025-20200624 (attached as .config)
compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 8911a35180c6777188fefe0954a2451a2b91deaf)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install s390 cross compiling tool for clang build
        # apt-get install binutils-s390-linux-gnu
        git checkout 239341154165cec3676955bab4cc1d61852257ed
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=s390 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   include/uapi/linux/swab.h:19:12: note: expanded from macro '___constant_swab32'
           (((__u32)(x) & (__u32)0x000000ffUL) << 24) |            \
                     ^
   In file included from kernel/rcu/tree.c:50:
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
   include/uapi/linux/swab.h:20:12: note: expanded from macro '___constant_swab32'
           (((__u32)(x) & (__u32)0x0000ff00UL) <<  8) |            \
                     ^
   In file included from kernel/rcu/tree.c:50:
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
   In file included from kernel/rcu/tree.c:50:
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
   In file included from kernel/rcu/tree.c:50:
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
   In file included from kernel/rcu/tree.c:50:
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
>> kernel/rcu/tree.c:253:8: error: implicit declaration of function 'arch_atomic_add_return' [-Werror,-Wimplicit-function-declaration]
           seq = arch_atomic_add_return(RCU_DYNTICK_CTRL_CTR, &rdp->dynticks);
                 ^
   kernel/rcu/tree.c:253:8: note: did you mean 'atomic_add_return'?
   arch/s390/include/asm/atomic.h:37:19: note: 'atomic_add_return' declared here
   static inline int atomic_add_return(int i, atomic_t *v)
                     ^
   kernel/rcu/tree.c:277:8: error: implicit declaration of function 'arch_atomic_add_return' [-Werror,-Wimplicit-function-declaration]
           seq = arch_atomic_add_return(RCU_DYNTICK_CTRL_CTR, &rdp->dynticks);
                 ^
>> kernel/rcu/tree.c:283:3: error: implicit declaration of function 'arch_atomic_andnot' [-Werror,-Wimplicit-function-declaration]
                   arch_atomic_andnot(RCU_DYNTICK_CTRL_MASK, &rdp->dynticks);
                   ^
   kernel/rcu/tree.c:283:3: note: did you mean 'atomic_andnot'?
   include/linux/atomic-fallback.h:652:1: note: 'atomic_andnot' declared here
   atomic_andnot(int i, atomic_t *v)
   ^
>> kernel/rcu/tree.c:316:11: error: implicit declaration of function 'arch_atomic_read' [-Werror,-Wimplicit-function-declaration]
           return !(arch_atomic_read(&rdp->dynticks) & RCU_DYNTICK_CTRL_CTR);
                    ^
   kernel/rcu/tree.c:316:11: note: did you mean 'atomic_read'?
   arch/s390/include/asm/atomic.h:20:19: note: 'atomic_read' declared here
   static inline int atomic_read(const atomic_t *v)
                     ^
   20 warnings and 4 errors generated.

vim +/arch_atomic_add_return +253 kernel/rcu/tree.c

   235	
   236	/*
   237	 * Record entry into an extended quiescent state.  This is only to be
   238	 * called when not already in an extended quiescent state, that is,
   239	 * RCU is watching prior to the call to this function and is no longer
   240	 * watching upon return.
   241	 */
   242	static noinstr void rcu_dynticks_eqs_enter(void)
   243	{
   244		struct rcu_data *rdp = this_cpu_ptr(&rcu_data);
   245		int seq;
   246	
   247		/*
   248		 * CPUs seeing atomic_add_return() must see prior RCU read-side
   249		 * critical sections, and we also must force ordering with the
   250		 * next idle sojourn.
   251		 */
   252		rcu_dynticks_task_trace_enter();  // Before ->dynticks update!
 > 253		seq = arch_atomic_add_return(RCU_DYNTICK_CTRL_CTR, &rdp->dynticks);
   254		// RCU is no longer watching.  Better be in extended quiescent state!
   255		WARN_ON_ONCE(IS_ENABLED(CONFIG_RCU_EQS_DEBUG) &&
   256			     (seq & RCU_DYNTICK_CTRL_CTR));
   257		/* Better not have special action (TLB flush) pending! */
   258		WARN_ON_ONCE(IS_ENABLED(CONFIG_RCU_EQS_DEBUG) &&
   259			     (seq & RCU_DYNTICK_CTRL_MASK));
   260	}
   261	
   262	/*
   263	 * Record exit from an extended quiescent state.  This is only to be
   264	 * called from an extended quiescent state, that is, RCU is not watching
   265	 * prior to the call to this function and is watching upon return.
   266	 */
   267	static noinstr void rcu_dynticks_eqs_exit(void)
   268	{
   269		struct rcu_data *rdp = this_cpu_ptr(&rcu_data);
   270		int seq;
   271	
   272		/*
   273		 * CPUs seeing atomic_add_return() must see prior idle sojourns,
   274		 * and we also must force ordering with the next RCU read-side
   275		 * critical section.
   276		 */
   277		seq = arch_atomic_add_return(RCU_DYNTICK_CTRL_CTR, &rdp->dynticks);
   278		// RCU is now watching.  Better not be in an extended quiescent state!
   279		rcu_dynticks_task_trace_exit();  // After ->dynticks update!
   280		WARN_ON_ONCE(IS_ENABLED(CONFIG_RCU_EQS_DEBUG) &&
   281			     !(seq & RCU_DYNTICK_CTRL_CTR));
   282		if (seq & RCU_DYNTICK_CTRL_MASK) {
 > 283			arch_atomic_andnot(RCU_DYNTICK_CTRL_MASK, &rdp->dynticks);
   284			smp_mb__after_atomic(); /* _exit after clearing mask. */
   285		}
   286	}
   287	
   288	/*
   289	 * Reset the current CPU's ->dynticks counter to indicate that the
   290	 * newly onlined CPU is no longer in an extended quiescent state.
   291	 * This will either leave the counter unchanged, or increment it
   292	 * to the next non-quiescent value.
   293	 *
   294	 * The non-atomic test/increment sequence works because the upper bits
   295	 * of the ->dynticks counter are manipulated only by the corresponding CPU,
   296	 * or when the corresponding CPU is offline.
   297	 */
   298	static void rcu_dynticks_eqs_online(void)
   299	{
   300		struct rcu_data *rdp = this_cpu_ptr(&rcu_data);
   301	
   302		if (atomic_read(&rdp->dynticks) & RCU_DYNTICK_CTRL_CTR)
   303			return;
   304		atomic_add(RCU_DYNTICK_CTRL_CTR, &rdp->dynticks);
   305	}
   306	
   307	/*
   308	 * Is the current CPU in an extended quiescent state?
   309	 *
   310	 * No ordering, as we are sampling CPU-local information.
   311	 */
   312	static __always_inline bool rcu_dynticks_curr_cpu_in_eqs(void)
   313	{
   314		struct rcu_data *rdp = this_cpu_ptr(&rcu_data);
   315	
 > 316		return !(arch_atomic_read(&rdp->dynticks) & RCU_DYNTICK_CTRL_CTR);
   317	}
   318	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202006252031.pBEfpgI2%25lkp%40intel.com.

--xHFwDpU9dbj6ez1V
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
PWrNOiEBAA==

--xHFwDpU9dbj6ez1V--
