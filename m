Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBKPM4CBQMGQEVZXT77A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x340.google.com (mail-ot1-x340.google.com [IPv6:2607:f8b0:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id D4BC23609C4
	for <lists+clang-built-linux@lfdr.de>; Thu, 15 Apr 2021 14:48:42 +0200 (CEST)
Received: by mail-ot1-x340.google.com with SMTP id l12-20020a056830154cb0290286784bf0f0sf2954525otp.13
        for <lists+clang-built-linux@lfdr.de>; Thu, 15 Apr 2021 05:48:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618490921; cv=pass;
        d=google.com; s=arc-20160816;
        b=Hz0wYZ0RHMQ1UCJVLqGqriStf8alORSvbmsJCc+6jw3sIE7ksynk8AzHYJ/yKmjqX9
         DMJqivS21o3VZsJ4R/3Co5yKLq39s8Ug4Z7gcm7E7Sj+x5CYka2/4MRSmKyH0Eyf94qI
         wSLM13Ow+bsayS4HgeUFU8joyPVxxzRE4ru7KQqhDTjXxR590/aI7Vc8l6OctyPtajUd
         Kd97X/TzoopFNj+fMRs/LgqYHePJ1oWYD3B9L2brpzxMMJGxZdIFf2TqsT1mOOfDqQN8
         nPlVGlkbyQFOE2lIxFYntE7jKBrqZEA63s7qqQs+1Mo7XotlgABXIhdEPbChPnlbDGra
         B6Bw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=GR7fuyiIWb+OvT/vISS9s8Ox0Ov3mupRbfj7KC00OLE=;
        b=J2nizuhlCER3SMIfnYRK+C/3ICgF8ocRB047Sq7W623NWNxVcB2AWp3Yc2sSiaZjBT
         TFS/WXfiRAbutsnk7Nth3Xy/3Gd02JW1xzRwYAGE54xHeR0JeOn1/l3CyXBDh3KRgdAK
         bt8pskpq3a8Uo31Itwdlkti2BSKcQmtwodxjb3qbniFO6zgftasG+ZcZxtM4CgJ0lLni
         tMm3Q/DI1SM79tkWwCsqEA1AnP+TmiwGPZDWC3mqAokeXNA76+DwAWQI0KA8uBDpQX1K
         FZoGkW2fyAH3Ohx5S0KdRPB14UsETzF6bdfDlqf0fyaRloPb+meB9kUUswDj9Hp5dy53
         fqKQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GR7fuyiIWb+OvT/vISS9s8Ox0Ov3mupRbfj7KC00OLE=;
        b=Ug/Y78w00b2GeBjRg/sTud83yMhMWln6qJUYO+TNnVFTehGYX+UgWH70LbHBdstFjs
         6sf2dNFhLtd586Vj9n9spcaNo9iR3XRAxctKKiLkEzp80wInd+rFCVaQprxNWkfwHzGk
         PiLuctHfpLitFn9PiwgabqiqeNhQE6xeRz5lMmbNWvoa9+Aykd6tr3Mrw0ACb6I6X8Oh
         tWgcGZltzr1o1AuU8PmWIN9WtsY4e7Bukbi9Xpy2RI9SQcLOR+Q4Rvwt5Y9fG9JJHMN2
         gDEv9avw03bHREwZCAV2rXeLAWob4dyvAf00ueJiZYvddYuhtTDs3qg018SwU2XbGrH2
         ojXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=GR7fuyiIWb+OvT/vISS9s8Ox0Ov3mupRbfj7KC00OLE=;
        b=PqZKXrpuf32gEgHhu//e68tJbocvU+U2HJei2D7ZZ92qM+ZB2DmTbY5U4o98e5z3qC
         hfA7tmW45AwzmgmtXnT3Bp9y15S3fAQrec5vOl2k+Ig4j4ZxnWWZ0SKl/2wBp5hkyQyb
         qB6dqGtupJX5ThAhvrfgptmFWhRl2TdtFuG8AqSuFdhTqibufrJiclUlQR4go/DEYmFU
         2iVmPemUiwbkCxhi3tmAird/kn/1ZNDqggVbmpB3j/KyCTTcWRGzRekmLNiE+it76d7/
         5aSlNdU1qaeEQ63x2qwmWVThlQbIh/Cjvpkinn94Q3CQtb1iOePsFOOE6dSBlice5y2N
         3ohA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530c+0Gh2s6amWA0uR8RMCYDq1jvUVPtW/sJbewoWIwCx4QLgA6b
	WlEW9XCgLTg34dyE8VN3SJw=
X-Google-Smtp-Source: ABdhPJxUm05KNk16jpoIhcHdtkl6OJSL+AQBr31idCokZqGvmPW2P0GFb4smJ90oypxbs97+ssD6+Q==
X-Received: by 2002:a54:4001:: with SMTP id x1mr2483654oie.21.1618490921603;
        Thu, 15 Apr 2021 05:48:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:954a:: with SMTP id n10ls307992ooi.7.gmail; Thu, 15 Apr
 2021 05:48:41 -0700 (PDT)
X-Received: by 2002:a4a:960c:: with SMTP id q12mr2520531ooi.83.1618490921040;
        Thu, 15 Apr 2021 05:48:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618490921; cv=none;
        d=google.com; s=arc-20160816;
        b=CRFK8g9d+Fq93HOnyBXb/3s1hSzOGMbCWPjnBrg9yzAF0UaE/KhSlx4hrrO5Cu/QEd
         T8e1IwXjepnU64Nx0rRbCarf4CgsPHitkAN9t/hKmRCndqN4MbW5ja+haomMtjKZQtvC
         3iFvLT+XkE6s0isjJTjO7GokEueMhJ2fKGPMtio6FUANy0gNE4QsuimWoaybI5bqflqJ
         JfTsrJyfOoi7NNk/tK6xIIhCqR+PEtzTHrR1BinZHOzpX1zCq0GFkRiyhAtkyMFuUZLk
         gCsT7KFqS3a/6wnpenHBjulbQ7av0/T+c4sJ2fVCN+N2g/QEQpOdGkCPLTbpp7CJgFjP
         OdMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=5n0SeSEva1cmAZwr2qdGdgWU93Xnm+wLPr8lDfSyYIw=;
        b=0IrIEZMrJaJej7fMzp/YBu/zIr6YOrOh1zZehpO7QwLgsBECsApBIIGk0OsVKggz8J
         9MHQ1DK/aN8nQizi2Z4j0rNyT2YF3RF2p+eB8CuvJ+RepVtBWyX+9nnZcoHHXCawcaZS
         YJRRNU/587AI6vnXoMxrqu/Kxbu1Zatik6KmUH2wKEGUPX/9kc9YY+Mv1FClRN7u9cYZ
         ROWlDAQgY9mtViC1F9cYRyuawZL6j+p4vueORlqtyBDLqEsqrBCEJWqBpCA606I/YDQ8
         Q/5if1RouJo5E4DYrVPtXk5Qt8Ifmul6T7EbSTqCf0zHOYhsdda3y7DGnfY0Ll7Q5IOp
         ayhg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga01.intel.com (mga01.intel.com. [192.55.52.88])
        by gmr-mx.google.com with ESMTPS id b11si226739ots.2.2021.04.15.05.48.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Apr 2021 05:48:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) client-ip=192.55.52.88;
IronPort-SDR: gGQ4vLU1FThs066dXDNp5OS1RE81nTG2W7bvjbHWie9NLzLg/erwXz1u2u1md8SPpKb1WDbqhz
 4YmAzZYcyrcQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9955"; a="215348900"
X-IronPort-AV: E=Sophos;i="5.82,225,1613462400"; 
   d="gz'50?scan'50,208,50";a="215348900"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Apr 2021 05:48:37 -0700
IronPort-SDR: wQacyarPmfDhn+mGJOGAX3b7nEzltQaZ9IJ3TXcn9Tx6mTqVNGZ/DxQ5lW/6MbHU0wuENqCi7F
 PNVrTiYd9FpQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,225,1613462400"; 
   d="gz'50?scan'50,208,50";a="452898816"
Received: from lkp-server02.sh.intel.com (HELO fa9c8fcc3464) ([10.239.97.151])
  by fmsmga002.fm.intel.com with ESMTP; 15 Apr 2021 05:48:36 -0700
Received: from kbuild by fa9c8fcc3464 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lX1QB-0000xp-FB; Thu, 15 Apr 2021 12:48:35 +0000
Date: Thu, 15 Apr 2021 20:48:12 +0800
From: kernel test robot <lkp@intel.com>
To: Guo Ren <guoren@linux.alibaba.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [csky-linux:v5.12-rc4-riscv-atomic-arch 4/4]
 include/linux/atomic-arch-fallback.h:1463:9: error: implicit declaration of
 function 'arch_atomic64_add_return'
Message-ID: <202104152005.CWPsLZtx-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="82I3+IH0IqGh5yIs"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted
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


--82I3+IH0IqGh5yIs
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://github.com/c-sky/csky-linux v5.12-rc4-riscv-atomic-arch
head:   c03ab3439319e20825642c84c3f23c968dfef552
commit: c03ab3439319e20825642c84c3f23c968dfef552 [4/4] riscv: atomic: Using ARCH_ATOMIC in asm/atomic.h
config: riscv-randconfig-r021-20210415 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 6a18cc23efad410db48a3ccfc233d215de7d4cb9)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install riscv cross compiling tool for clang build
        # apt-get install binutils-riscv64-linux-gnu
        # https://github.com/c-sky/csky-linux/commit/c03ab3439319e20825642c84c3f23c968dfef552
        git remote add csky-linux https://github.com/c-sky/csky-linux
        git fetch --no-tags csky-linux v5.12-rc4-riscv-atomic-arch
        git checkout c03ab3439319e20825642c84c3f23c968dfef552
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 ARCH=riscv 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   In file included from arch/riscv/kernel/asm-offsets.c:10:
   In file included from include/linux/sched.h:14:
   In file included from include/linux/pid.h:5:
   In file included from include/linux/rculist.h:11:
   In file included from include/linux/rcupdate.h:25:
   In file included from include/linux/atomic.h:81:
>> include/linux/atomic-arch-fallback.h:1447:2: error: implicit declaration of function 'arch_atomic64_add' [-Werror,-Wimplicit-function-declaration]
           arch_atomic64_add(1, v);
           ^
   include/linux/atomic-arch-fallback.h:1447:2: note: did you mean 'arch_atomic_add'?
   arch/riscv/include/asm/atomic.h:57:1: note: 'arch_atomic_add' declared here
   ATOMIC_OPS(add, add,  i)
   ^
   arch/riscv/include/asm/atomic.h:50:9: note: expanded from macro 'ATOMIC_OPS'
           ATOMIC_OP (op, asm_op, I, w, int,   )
           ^
   arch/riscv/include/asm/atomic.h:39:6: note: expanded from macro 'ATOMIC_OP'
   void arch_atomic##prefix##_##op(c_type i, atomic##prefix##_t *v)        \
        ^
   <scratch space>:139:1: note: expanded from here
   arch_atomic_add
   ^
   In file included from arch/riscv/kernel/asm-offsets.c:10:
   In file included from include/linux/sched.h:14:
   In file included from include/linux/pid.h:5:
   In file included from include/linux/rculist.h:11:
   In file included from include/linux/rcupdate.h:25:
   In file included from include/linux/atomic.h:81:
>> include/linux/atomic-arch-fallback.h:1463:9: error: implicit declaration of function 'arch_atomic64_add_return' [-Werror,-Wimplicit-function-declaration]
           return arch_atomic64_add_return(1, v);
                  ^
   include/linux/atomic-arch-fallback.h:1463:9: note: did you mean 'arch_atomic_add_return'?
   arch/riscv/include/asm/atomic.h:128:1: note: 'arch_atomic_add_return' declared here
   ATOMIC_OPS(add, add, +,  i)
   ^
   arch/riscv/include/asm/atomic.h:119:9: note: expanded from macro 'ATOMIC_OPS'
           ATOMIC_OP_RETURN(op, asm_op, c_op, I, w, int,   )
           ^
   arch/riscv/include/asm/atomic.h:110:8: note: expanded from macro 'ATOMIC_OP_RETURN'
   c_type arch_atomic##prefix##_##op##_return(c_type i,                    \
          ^
   <scratch space>:186:1: note: expanded from here
   arch_atomic_add_return
   ^
   In file included from arch/riscv/kernel/asm-offsets.c:10:
   In file included from include/linux/sched.h:14:
   In file included from include/linux/pid.h:5:
   In file included from include/linux/rculist.h:11:
   In file included from include/linux/rcupdate.h:25:
   In file included from include/linux/atomic.h:81:
   include/linux/atomic-arch-fallback.h:1472:9: error: implicit declaration of function 'arch_atomic64_add_return' [-Werror,-Wimplicit-function-declaration]
           return arch_atomic64_add_return_acquire(1, v);
                  ^
   include/linux/atomic-arch-fallback.h:1276:42: note: expanded from macro 'arch_atomic64_add_return_acquire'
   #define arch_atomic64_add_return_acquire arch_atomic64_add_return
                                            ^
   include/linux/atomic-arch-fallback.h:1481:9: error: implicit declaration of function 'arch_atomic64_add_return' [-Werror,-Wimplicit-function-declaration]
           return arch_atomic64_add_return_release(1, v);
                  ^
   include/linux/atomic-arch-fallback.h:1277:42: note: expanded from macro 'arch_atomic64_add_return_release'
   #define arch_atomic64_add_return_release arch_atomic64_add_return
                                            ^
   include/linux/atomic-arch-fallback.h:1490:9: error: implicit declaration of function 'arch_atomic64_add_return' [-Werror,-Wimplicit-function-declaration]
           return arch_atomic64_add_return_relaxed(1, v);
                  ^
   include/linux/atomic-arch-fallback.h:1278:42: note: expanded from macro 'arch_atomic64_add_return_relaxed'
   #define arch_atomic64_add_return_relaxed arch_atomic64_add_return
                                            ^
>> include/linux/atomic-arch-fallback.h:1544:9: error: implicit declaration of function 'arch_atomic64_fetch_add' [-Werror,-Wimplicit-function-declaration]
           return arch_atomic64_fetch_add(1, v);
                  ^
   include/linux/atomic-arch-fallback.h:1544:9: note: did you mean 'arch_atomic_fetch_add'?
   arch/riscv/include/asm/atomic.h:128:1: note: 'arch_atomic_fetch_add' declared here
   ATOMIC_OPS(add, add, +,  i)
   ^
   arch/riscv/include/asm/atomic.h:118:9: note: expanded from macro 'ATOMIC_OPS'
           ATOMIC_FETCH_OP( op, asm_op,       I, w, int,   )               \
           ^
   arch/riscv/include/asm/atomic.h:91:8: note: expanded from macro 'ATOMIC_FETCH_OP'
   c_type arch_atomic##prefix##_fetch_##op(c_type i, atomic##prefix##_t *v)\
          ^
   <scratch space>:175:1: note: expanded from here
   arch_atomic_fetch_add
   ^
   In file included from arch/riscv/kernel/asm-offsets.c:10:
   In file included from include/linux/sched.h:14:
   In file included from include/linux/pid.h:5:
   In file included from include/linux/rculist.h:11:
   In file included from include/linux/rcupdate.h:25:
   In file included from include/linux/atomic.h:81:
   include/linux/atomic-arch-fallback.h:1553:9: error: implicit declaration of function 'arch_atomic64_fetch_add' [-Werror,-Wimplicit-function-declaration]
           return arch_atomic64_fetch_add_acquire(1, v);
                  ^
   include/linux/atomic-arch-fallback.h:1318:41: note: expanded from macro 'arch_atomic64_fetch_add_acquire'
   #define arch_atomic64_fetch_add_acquire arch_atomic64_fetch_add
                                           ^
   include/linux/atomic-arch-fallback.h:1562:9: error: implicit declaration of function 'arch_atomic64_fetch_add' [-Werror,-Wimplicit-function-declaration]
           return arch_atomic64_fetch_add_release(1, v);
                  ^
   include/linux/atomic-arch-fallback.h:1319:41: note: expanded from macro 'arch_atomic64_fetch_add_release'
   #define arch_atomic64_fetch_add_release arch_atomic64_fetch_add
                                           ^
   include/linux/atomic-arch-fallback.h:1571:9: error: implicit declaration of function 'arch_atomic64_fetch_add' [-Werror,-Wimplicit-function-declaration]
           return arch_atomic64_fetch_add_relaxed(1, v);
                  ^
   include/linux/atomic-arch-fallback.h:1320:41: note: expanded from macro 'arch_atomic64_fetch_add_relaxed'
   #define arch_atomic64_fetch_add_relaxed arch_atomic64_fetch_add
                                           ^
>> include/linux/atomic-arch-fallback.h:1618:2: error: implicit declaration of function 'arch_atomic64_sub' [-Werror,-Wimplicit-function-declaration]
           arch_atomic64_sub(1, v);
           ^
   include/linux/atomic-arch-fallback.h:1618:2: note: did you mean 'arch_atomic_sub'?
   arch/riscv/include/asm/atomic.h:58:1: note: 'arch_atomic_sub' declared here
   ATOMIC_OPS(sub, add, -i)
   ^
   arch/riscv/include/asm/atomic.h:50:9: note: expanded from macro 'ATOMIC_OPS'
           ATOMIC_OP (op, asm_op, I, w, int,   )
           ^
   arch/riscv/include/asm/atomic.h:39:6: note: expanded from macro 'ATOMIC_OP'
   void arch_atomic##prefix##_##op(c_type i, atomic##prefix##_t *v)        \
        ^
   <scratch space>:144:1: note: expanded from here
   arch_atomic_sub
   ^
   In file included from arch/riscv/kernel/asm-offsets.c:10:
   In file included from include/linux/sched.h:14:
   In file included from include/linux/pid.h:5:
   In file included from include/linux/rculist.h:11:
   In file included from include/linux/rcupdate.h:25:
   In file included from include/linux/atomic.h:81:
>> include/linux/atomic-arch-fallback.h:1634:9: error: implicit declaration of function 'arch_atomic64_sub_return' [-Werror,-Wimplicit-function-declaration]
           return arch_atomic64_sub_return(1, v);
                  ^
   include/linux/atomic-arch-fallback.h:1634:9: note: did you mean 'arch_atomic_sub_return'?
   arch/riscv/include/asm/atomic.h:129:1: note: 'arch_atomic_sub_return' declared here
   ATOMIC_OPS(sub, add, +, -i)
   ^
   arch/riscv/include/asm/atomic.h:119:9: note: expanded from macro 'ATOMIC_OPS'
           ATOMIC_OP_RETURN(op, asm_op, c_op, I, w, int,   )
           ^
   arch/riscv/include/asm/atomic.h:110:8: note: expanded from macro 'ATOMIC_OP_RETURN'
   c_type arch_atomic##prefix##_##op##_return(c_type i,                    \
          ^
   <scratch space>:210:1: note: expanded from here
   arch_atomic_sub_return
   ^
   In file included from arch/riscv/kernel/asm-offsets.c:10:
   In file included from include/linux/sched.h:14:
   In file included from include/linux/pid.h:5:
   In file included from include/linux/rculist.h:11:
   In file included from include/linux/rcupdate.h:25:
   In file included from include/linux/atomic.h:81:
   include/linux/atomic-arch-fallback.h:1643:9: error: implicit declaration of function 'arch_atomic64_sub_return' [-Werror,-Wimplicit-function-declaration]
           return arch_atomic64_sub_return_acquire(1, v);
                  ^
   include/linux/atomic-arch-fallback.h:1360:42: note: expanded from macro 'arch_atomic64_sub_return_acquire'
   #define arch_atomic64_sub_return_acquire arch_atomic64_sub_return
                                            ^
   include/linux/atomic-arch-fallback.h:1652:9: error: implicit declaration of function 'arch_atomic64_sub_return' [-Werror,-Wimplicit-function-declaration]
           return arch_atomic64_sub_return_release(1, v);
                  ^
   include/linux/atomic-arch-fallback.h:1361:42: note: expanded from macro 'arch_atomic64_sub_return_release'
   #define arch_atomic64_sub_return_release arch_atomic64_sub_return
                                            ^
   include/linux/atomic-arch-fallback.h:1661:9: error: implicit declaration of function 'arch_atomic64_sub_return' [-Werror,-Wimplicit-function-declaration]
           return arch_atomic64_sub_return_relaxed(1, v);
                  ^
   include/linux/atomic-arch-fallback.h:1362:42: note: expanded from macro 'arch_atomic64_sub_return_relaxed'
   #define arch_atomic64_sub_return_relaxed arch_atomic64_sub_return
                                            ^
>> include/linux/atomic-arch-fallback.h:1715:9: error: implicit declaration of function 'arch_atomic64_fetch_sub' [-Werror,-Wimplicit-function-declaration]
           return arch_atomic64_fetch_sub(1, v);
                  ^
   include/linux/atomic-arch-fallback.h:1715:9: note: did you mean 'arch_atomic_fetch_sub'?
   arch/riscv/include/asm/atomic.h:129:1: note: 'arch_atomic_fetch_sub' declared here
   ATOMIC_OPS(sub, add, +, -i)
   ^
   arch/riscv/include/asm/atomic.h:118:9: note: expanded from macro 'ATOMIC_OPS'
           ATOMIC_FETCH_OP( op, asm_op,       I, w, int,   )               \
           ^
   arch/riscv/include/asm/atomic.h:91:8: note: expanded from macro 'ATOMIC_FETCH_OP'
   c_type arch_atomic##prefix##_fetch_##op(c_type i, atomic##prefix##_t *v)\
          ^
   <scratch space>:199:1: note: expanded from here
   arch_atomic_fetch_sub
   ^
   In file included from arch/riscv/kernel/asm-offsets.c:10:
   In file included from include/linux/sched.h:14:
   In file included from include/linux/pid.h:5:
   In file included from include/linux/rculist.h:11:
   In file included from include/linux/rcupdate.h:25:
   In file included from include/linux/atomic.h:81:
   include/linux/atomic-arch-fallback.h:1724:9: error: implicit declaration of function 'arch_atomic64_fetch_sub' [-Werror,-Wimplicit-function-declaration]
           return arch_atomic64_fetch_sub_acquire(1, v);
                  ^
   include/linux/atomic-arch-fallback.h:1402:41: note: expanded from macro 'arch_atomic64_fetch_sub_acquire'
   #define arch_atomic64_fetch_sub_acquire arch_atomic64_fetch_sub
                                           ^
   include/linux/atomic-arch-fallback.h:1733:9: error: implicit declaration of function 'arch_atomic64_fetch_sub' [-Werror,-Wimplicit-function-declaration]
           return arch_atomic64_fetch_sub_release(1, v);
                  ^
   include/linux/atomic-arch-fallback.h:1403:41: note: expanded from macro 'arch_atomic64_fetch_sub_release'
   #define arch_atomic64_fetch_sub_release arch_atomic64_fetch_sub
                                           ^
   include/linux/atomic-arch-fallback.h:1742:9: error: implicit declaration of function 'arch_atomic64_fetch_sub' [-Werror,-Wimplicit-function-declaration]
           return arch_atomic64_fetch_sub_relaxed(1, v);
                  ^
   include/linux/atomic-arch-fallback.h:1404:41: note: expanded from macro 'arch_atomic64_fetch_sub_relaxed'
   #define arch_atomic64_fetch_sub_relaxed arch_atomic64_fetch_sub
                                           ^
>> include/linux/atomic-arch-fallback.h:1831:2: error: implicit declaration of function 'arch_atomic64_and' [-Werror,-Wimplicit-function-declaration]
           arch_atomic64_and(~i, v);
           ^
   fatal error: too many errors emitted, stopping now [-ferror-limit=]
   20 errors generated.
--
   In file included from arch/riscv/kernel/asm-offsets.c:10:
   In file included from include/linux/sched.h:14:
   In file included from include/linux/pid.h:5:
   In file included from include/linux/rculist.h:11:
   In file included from include/linux/rcupdate.h:25:
   In file included from include/linux/atomic.h:81:
>> include/linux/atomic-arch-fallback.h:1447:2: error: implicit declaration of function 'arch_atomic64_add' [-Werror,-Wimplicit-function-declaration]
           arch_atomic64_add(1, v);
           ^
   include/linux/atomic-arch-fallback.h:1447:2: note: did you mean 'arch_atomic_add'?
   arch/riscv/include/asm/atomic.h:57:1: note: 'arch_atomic_add' declared here
   ATOMIC_OPS(add, add,  i)
   ^
   arch/riscv/include/asm/atomic.h:50:9: note: expanded from macro 'ATOMIC_OPS'
           ATOMIC_OP (op, asm_op, I, w, int,   )
           ^
   arch/riscv/include/asm/atomic.h:39:6: note: expanded from macro 'ATOMIC_OP'
   void arch_atomic##prefix##_##op(c_type i, atomic##prefix##_t *v)        \
        ^
   <scratch space>:139:1: note: expanded from here
   arch_atomic_add
   ^
   In file included from arch/riscv/kernel/asm-offsets.c:10:
   In file included from include/linux/sched.h:14:
   In file included from include/linux/pid.h:5:
   In file included from include/linux/rculist.h:11:
   In file included from include/linux/rcupdate.h:25:
   In file included from include/linux/atomic.h:81:
>> include/linux/atomic-arch-fallback.h:1463:9: error: implicit declaration of function 'arch_atomic64_add_return' [-Werror,-Wimplicit-function-declaration]
           return arch_atomic64_add_return(1, v);
                  ^
   include/linux/atomic-arch-fallback.h:1463:9: note: did you mean 'arch_atomic_add_return'?
   arch/riscv/include/asm/atomic.h:128:1: note: 'arch_atomic_add_return' declared here
   ATOMIC_OPS(add, add, +,  i)
   ^
   arch/riscv/include/asm/atomic.h:119:9: note: expanded from macro 'ATOMIC_OPS'
           ATOMIC_OP_RETURN(op, asm_op, c_op, I, w, int,   )
           ^
   arch/riscv/include/asm/atomic.h:110:8: note: expanded from macro 'ATOMIC_OP_RETURN'
   c_type arch_atomic##prefix##_##op##_return(c_type i,                    \
          ^
   <scratch space>:186:1: note: expanded from here
   arch_atomic_add_return
   ^
   In file included from arch/riscv/kernel/asm-offsets.c:10:
   In file included from include/linux/sched.h:14:
   In file included from include/linux/pid.h:5:
   In file included from include/linux/rculist.h:11:
   In file included from include/linux/rcupdate.h:25:
   In file included from include/linux/atomic.h:81:
   include/linux/atomic-arch-fallback.h:1472:9: error: implicit declaration of function 'arch_atomic64_add_return' [-Werror,-Wimplicit-function-declaration]
           return arch_atomic64_add_return_acquire(1, v);
                  ^
   include/linux/atomic-arch-fallback.h:1276:42: note: expanded from macro 'arch_atomic64_add_return_acquire'
   #define arch_atomic64_add_return_acquire arch_atomic64_add_return
                                            ^
   include/linux/atomic-arch-fallback.h:1481:9: error: implicit declaration of function 'arch_atomic64_add_return' [-Werror,-Wimplicit-function-declaration]
           return arch_atomic64_add_return_release(1, v);
                  ^
   include/linux/atomic-arch-fallback.h:1277:42: note: expanded from macro 'arch_atomic64_add_return_release'
   #define arch_atomic64_add_return_release arch_atomic64_add_return
                                            ^
   include/linux/atomic-arch-fallback.h:1490:9: error: implicit declaration of function 'arch_atomic64_add_return' [-Werror,-Wimplicit-function-declaration]
           return arch_atomic64_add_return_relaxed(1, v);
                  ^
   include/linux/atomic-arch-fallback.h:1278:42: note: expanded from macro 'arch_atomic64_add_return_relaxed'
   #define arch_atomic64_add_return_relaxed arch_atomic64_add_return
                                            ^
>> include/linux/atomic-arch-fallback.h:1544:9: error: implicit declaration of function 'arch_atomic64_fetch_add' [-Werror,-Wimplicit-function-declaration]
           return arch_atomic64_fetch_add(1, v);
                  ^
   include/linux/atomic-arch-fallback.h:1544:9: note: did you mean 'arch_atomic_fetch_add'?
   arch/riscv/include/asm/atomic.h:128:1: note: 'arch_atomic_fetch_add' declared here
   ATOMIC_OPS(add, add, +,  i)
   ^
   arch/riscv/include/asm/atomic.h:118:9: note: expanded from macro 'ATOMIC_OPS'
           ATOMIC_FETCH_OP( op, asm_op,       I, w, int,   )               \
           ^
   arch/riscv/include/asm/atomic.h:91:8: note: expanded from macro 'ATOMIC_FETCH_OP'
   c_type arch_atomic##prefix##_fetch_##op(c_type i, atomic##prefix##_t *v)\
          ^
   <scratch space>:175:1: note: expanded from here
   arch_atomic_fetch_add
   ^
   In file included from arch/riscv/kernel/asm-offsets.c:10:
   In file included from include/linux/sched.h:14:
   In file included from include/linux/pid.h:5:
   In file included from include/linux/rculist.h:11:
   In file included from include/linux/rcupdate.h:25:
   In file included from include/linux/atomic.h:81:
   include/linux/atomic-arch-fallback.h:1553:9: error: implicit declaration of function 'arch_atomic64_fetch_add' [-Werror,-Wimplicit-function-declaration]
           return arch_atomic64_fetch_add_acquire(1, v);
                  ^
   include/linux/atomic-arch-fallback.h:1318:41: note: expanded from macro 'arch_atomic64_fetch_add_acquire'
   #define arch_atomic64_fetch_add_acquire arch_atomic64_fetch_add
                                           ^
   include/linux/atomic-arch-fallback.h:1562:9: error: implicit declaration of function 'arch_atomic64_fetch_add' [-Werror,-Wimplicit-function-declaration]
           return arch_atomic64_fetch_add_release(1, v);
                  ^
   include/linux/atomic-arch-fallback.h:1319:41: note: expanded from macro 'arch_atomic64_fetch_add_release'
   #define arch_atomic64_fetch_add_release arch_atomic64_fetch_add
                                           ^
   include/linux/atomic-arch-fallback.h:1571:9: error: implicit declaration of function 'arch_atomic64_fetch_add' [-Werror,-Wimplicit-function-declaration]
           return arch_atomic64_fetch_add_relaxed(1, v);
                  ^
   include/linux/atomic-arch-fallback.h:1320:41: note: expanded from macro 'arch_atomic64_fetch_add_relaxed'
   #define arch_atomic64_fetch_add_relaxed arch_atomic64_fetch_add
                                           ^
>> include/linux/atomic-arch-fallback.h:1618:2: error: implicit declaration of function 'arch_atomic64_sub' [-Werror,-Wimplicit-function-declaration]
           arch_atomic64_sub(1, v);
           ^
   include/linux/atomic-arch-fallback.h:1618:2: note: did you mean 'arch_atomic_sub'?
   arch/riscv/include/asm/atomic.h:58:1: note: 'arch_atomic_sub' declared here
   ATOMIC_OPS(sub, add, -i)
   ^
   arch/riscv/include/asm/atomic.h:50:9: note: expanded from macro 'ATOMIC_OPS'
           ATOMIC_OP (op, asm_op, I, w, int,   )
           ^
   arch/riscv/include/asm/atomic.h:39:6: note: expanded from macro 'ATOMIC_OP'
   void arch_atomic##prefix##_##op(c_type i, atomic##prefix##_t *v)        \
        ^
   <scratch space>:144:1: note: expanded from here
   arch_atomic_sub
   ^
   In file included from arch/riscv/kernel/asm-offsets.c:10:
   In file included from include/linux/sched.h:14:
   In file included from include/linux/pid.h:5:
   In file included from include/linux/rculist.h:11:
   In file included from include/linux/rcupdate.h:25:
   In file included from include/linux/atomic.h:81:
>> include/linux/atomic-arch-fallback.h:1634:9: error: implicit declaration of function 'arch_atomic64_sub_return' [-Werror,-Wimplicit-function-declaration]
           return arch_atomic64_sub_return(1, v);
                  ^
   include/linux/atomic-arch-fallback.h:1634:9: note: did you mean 'arch_atomic_sub_return'?
   arch/riscv/include/asm/atomic.h:129:1: note: 'arch_atomic_sub_return' declared here
   ATOMIC_OPS(sub, add, +, -i)
   ^
   arch/riscv/include/asm/atomic.h:119:9: note: expanded from macro 'ATOMIC_OPS'
           ATOMIC_OP_RETURN(op, asm_op, c_op, I, w, int,   )
           ^
   arch/riscv/include/asm/atomic.h:110:8: note: expanded from macro 'ATOMIC_OP_RETURN'
   c_type arch_atomic##prefix##_##op##_return(c_type i,                    \
          ^
   <scratch space>:210:1: note: expanded from here
   arch_atomic_sub_return
   ^
   In file included from arch/riscv/kernel/asm-offsets.c:10:
   In file included from include/linux/sched.h:14:
   In file included from include/linux/pid.h:5:
   In file included from include/linux/rculist.h:11:
   In file included from include/linux/rcupdate.h:25:
   In file included from include/linux/atomic.h:81:
   include/linux/atomic-arch-fallback.h:1643:9: error: implicit declaration of function 'arch_atomic64_sub_return' [-Werror,-Wimplicit-function-declaration]
           return arch_atomic64_sub_return_acquire(1, v);
                  ^
   include/linux/atomic-arch-fallback.h:1360:42: note: expanded from macro 'arch_atomic64_sub_return_acquire'
   #define arch_atomic64_sub_return_acquire arch_atomic64_sub_return
                                            ^
   include/linux/atomic-arch-fallback.h:1652:9: error: implicit declaration of function 'arch_atomic64_sub_return' [-Werror,-Wimplicit-function-declaration]
           return arch_atomic64_sub_return_release(1, v);
                  ^
   include/linux/atomic-arch-fallback.h:1361:42: note: expanded from macro 'arch_atomic64_sub_return_release'
   #define arch_atomic64_sub_return_release arch_atomic64_sub_return
                                            ^
   include/linux/atomic-arch-fallback.h:1661:9: error: implicit declaration of function 'arch_atomic64_sub_return' [-Werror,-Wimplicit-function-declaration]
           return arch_atomic64_sub_return_relaxed(1, v);
                  ^
   include/linux/atomic-arch-fallback.h:1362:42: note: expanded from macro 'arch_atomic64_sub_return_relaxed'
   #define arch_atomic64_sub_return_relaxed arch_atomic64_sub_return
                                            ^
>> include/linux/atomic-arch-fallback.h:1715:9: error: implicit declaration of function 'arch_atomic64_fetch_sub' [-Werror,-Wimplicit-function-declaration]
           return arch_atomic64_fetch_sub(1, v);
                  ^
   include/linux/atomic-arch-fallback.h:1715:9: note: did you mean 'arch_atomic_fetch_sub'?
   arch/riscv/include/asm/atomic.h:129:1: note: 'arch_atomic_fetch_sub' declared here
   ATOMIC_OPS(sub, add, +, -i)
   ^
   arch/riscv/include/asm/atomic.h:118:9: note: expanded from macro 'ATOMIC_OPS'
           ATOMIC_FETCH_OP( op, asm_op,       I, w, int,   )               \
           ^
   arch/riscv/include/asm/atomic.h:91:8: note: expanded from macro 'ATOMIC_FETCH_OP'
   c_type arch_atomic##prefix##_fetch_##op(c_type i, atomic##prefix##_t *v)\
          ^
   <scratch space>:199:1: note: expanded from here
   arch_atomic_fetch_sub
   ^
   In file included from arch/riscv/kernel/asm-offsets.c:10:
   In file included from include/linux/sched.h:14:
   In file included from include/linux/pid.h:5:
   In file included from include/linux/rculist.h:11:
   In file included from include/linux/rcupdate.h:25:
   In file included from include/linux/atomic.h:81:
   include/linux/atomic-arch-fallback.h:1724:9: error: implicit declaration of function 'arch_atomic64_fetch_sub' [-Werror,-Wimplicit-function-declaration]
           return arch_atomic64_fetch_sub_acquire(1, v);
                  ^
   include/linux/atomic-arch-fallback.h:1402:41: note: expanded from macro 'arch_atomic64_fetch_sub_acquire'
   #define arch_atomic64_fetch_sub_acquire arch_atomic64_fetch_sub
                                           ^
   include/linux/atomic-arch-fallback.h:1733:9: error: implicit declaration of function 'arch_atomic64_fetch_sub' [-Werror,-Wimplicit-function-declaration]
           return arch_atomic64_fetch_sub_release(1, v);
                  ^
   include/linux/atomic-arch-fallback.h:1403:41: note: expanded from macro 'arch_atomic64_fetch_sub_release'
   #define arch_atomic64_fetch_sub_release arch_atomic64_fetch_sub
                                           ^
   include/linux/atomic-arch-fallback.h:1742:9: error: implicit declaration of function 'arch_atomic64_fetch_sub' [-Werror,-Wimplicit-function-declaration]
           return arch_atomic64_fetch_sub_relaxed(1, v);
                  ^
   include/linux/atomic-arch-fallback.h:1404:41: note: expanded from macro 'arch_atomic64_fetch_sub_relaxed'
   #define arch_atomic64_fetch_sub_relaxed arch_atomic64_fetch_sub
                                           ^
>> include/linux/atomic-arch-fallback.h:1831:2: error: implicit declaration of function 'arch_atomic64_and' [-Werror,-Wimplicit-function-declaration]
           arch_atomic64_and(~i, v);
           ^
   fatal error: too many errors emitted, stopping now [-ferror-limit=]
   20 errors generated.
   make[2]: *** [scripts/Makefile.build:116: arch/riscv/kernel/asm-offsets.s] Error 1
   make[2]: Target '__build' not remade because of errors.
   make[1]: *** [Makefile:1235: prepare0] Error 2
   make[1]: Target 'modules_prepare' not remade because of errors.
   make: *** [Makefile:215: __sub-make] Error 2
   make: Target 'modules_prepare' not remade because of errors.
..


vim +/arch_atomic64_add_return +1463 include/linux/atomic-arch-fallback.h

37f8173dd84936 Peter Zijlstra 2020-01-24  1442  
37f8173dd84936 Peter Zijlstra 2020-01-24  1443  #ifndef arch_atomic64_inc
37f8173dd84936 Peter Zijlstra 2020-01-24  1444  static __always_inline void
37f8173dd84936 Peter Zijlstra 2020-01-24  1445  arch_atomic64_inc(atomic64_t *v)
37f8173dd84936 Peter Zijlstra 2020-01-24  1446  {
37f8173dd84936 Peter Zijlstra 2020-01-24 @1447  	arch_atomic64_add(1, v);
37f8173dd84936 Peter Zijlstra 2020-01-24  1448  }
37f8173dd84936 Peter Zijlstra 2020-01-24  1449  #define arch_atomic64_inc arch_atomic64_inc
37f8173dd84936 Peter Zijlstra 2020-01-24  1450  #endif
37f8173dd84936 Peter Zijlstra 2020-01-24  1451  
37f8173dd84936 Peter Zijlstra 2020-01-24  1452  #ifndef arch_atomic64_inc_return_relaxed
37f8173dd84936 Peter Zijlstra 2020-01-24  1453  #ifdef arch_atomic64_inc_return
37f8173dd84936 Peter Zijlstra 2020-01-24  1454  #define arch_atomic64_inc_return_acquire arch_atomic64_inc_return
37f8173dd84936 Peter Zijlstra 2020-01-24  1455  #define arch_atomic64_inc_return_release arch_atomic64_inc_return
37f8173dd84936 Peter Zijlstra 2020-01-24  1456  #define arch_atomic64_inc_return_relaxed arch_atomic64_inc_return
37f8173dd84936 Peter Zijlstra 2020-01-24  1457  #endif /* arch_atomic64_inc_return */
37f8173dd84936 Peter Zijlstra 2020-01-24  1458  
37f8173dd84936 Peter Zijlstra 2020-01-24  1459  #ifndef arch_atomic64_inc_return
37f8173dd84936 Peter Zijlstra 2020-01-24  1460  static __always_inline s64
37f8173dd84936 Peter Zijlstra 2020-01-24  1461  arch_atomic64_inc_return(atomic64_t *v)
37f8173dd84936 Peter Zijlstra 2020-01-24  1462  {
37f8173dd84936 Peter Zijlstra 2020-01-24 @1463  	return arch_atomic64_add_return(1, v);
37f8173dd84936 Peter Zijlstra 2020-01-24  1464  }
37f8173dd84936 Peter Zijlstra 2020-01-24  1465  #define arch_atomic64_inc_return arch_atomic64_inc_return
37f8173dd84936 Peter Zijlstra 2020-01-24  1466  #endif
37f8173dd84936 Peter Zijlstra 2020-01-24  1467  
37f8173dd84936 Peter Zijlstra 2020-01-24  1468  #ifndef arch_atomic64_inc_return_acquire
37f8173dd84936 Peter Zijlstra 2020-01-24  1469  static __always_inline s64
37f8173dd84936 Peter Zijlstra 2020-01-24  1470  arch_atomic64_inc_return_acquire(atomic64_t *v)
37f8173dd84936 Peter Zijlstra 2020-01-24  1471  {
37f8173dd84936 Peter Zijlstra 2020-01-24  1472  	return arch_atomic64_add_return_acquire(1, v);
37f8173dd84936 Peter Zijlstra 2020-01-24  1473  }
37f8173dd84936 Peter Zijlstra 2020-01-24  1474  #define arch_atomic64_inc_return_acquire arch_atomic64_inc_return_acquire
37f8173dd84936 Peter Zijlstra 2020-01-24  1475  #endif
37f8173dd84936 Peter Zijlstra 2020-01-24  1476  
37f8173dd84936 Peter Zijlstra 2020-01-24  1477  #ifndef arch_atomic64_inc_return_release
37f8173dd84936 Peter Zijlstra 2020-01-24  1478  static __always_inline s64
37f8173dd84936 Peter Zijlstra 2020-01-24  1479  arch_atomic64_inc_return_release(atomic64_t *v)
37f8173dd84936 Peter Zijlstra 2020-01-24  1480  {
37f8173dd84936 Peter Zijlstra 2020-01-24  1481  	return arch_atomic64_add_return_release(1, v);
37f8173dd84936 Peter Zijlstra 2020-01-24  1482  }
37f8173dd84936 Peter Zijlstra 2020-01-24  1483  #define arch_atomic64_inc_return_release arch_atomic64_inc_return_release
37f8173dd84936 Peter Zijlstra 2020-01-24  1484  #endif
37f8173dd84936 Peter Zijlstra 2020-01-24  1485  
37f8173dd84936 Peter Zijlstra 2020-01-24  1486  #ifndef arch_atomic64_inc_return_relaxed
37f8173dd84936 Peter Zijlstra 2020-01-24  1487  static __always_inline s64
37f8173dd84936 Peter Zijlstra 2020-01-24  1488  arch_atomic64_inc_return_relaxed(atomic64_t *v)
37f8173dd84936 Peter Zijlstra 2020-01-24  1489  {
37f8173dd84936 Peter Zijlstra 2020-01-24  1490  	return arch_atomic64_add_return_relaxed(1, v);
37f8173dd84936 Peter Zijlstra 2020-01-24  1491  }
37f8173dd84936 Peter Zijlstra 2020-01-24  1492  #define arch_atomic64_inc_return_relaxed arch_atomic64_inc_return_relaxed
37f8173dd84936 Peter Zijlstra 2020-01-24  1493  #endif
37f8173dd84936 Peter Zijlstra 2020-01-24  1494  
37f8173dd84936 Peter Zijlstra 2020-01-24  1495  #else /* arch_atomic64_inc_return_relaxed */
37f8173dd84936 Peter Zijlstra 2020-01-24  1496  
37f8173dd84936 Peter Zijlstra 2020-01-24  1497  #ifndef arch_atomic64_inc_return_acquire
37f8173dd84936 Peter Zijlstra 2020-01-24  1498  static __always_inline s64
37f8173dd84936 Peter Zijlstra 2020-01-24  1499  arch_atomic64_inc_return_acquire(atomic64_t *v)
37f8173dd84936 Peter Zijlstra 2020-01-24  1500  {
37f8173dd84936 Peter Zijlstra 2020-01-24  1501  	s64 ret = arch_atomic64_inc_return_relaxed(v);
37f8173dd84936 Peter Zijlstra 2020-01-24  1502  	__atomic_acquire_fence();
37f8173dd84936 Peter Zijlstra 2020-01-24  1503  	return ret;
37f8173dd84936 Peter Zijlstra 2020-01-24  1504  }
37f8173dd84936 Peter Zijlstra 2020-01-24  1505  #define arch_atomic64_inc_return_acquire arch_atomic64_inc_return_acquire
37f8173dd84936 Peter Zijlstra 2020-01-24  1506  #endif
37f8173dd84936 Peter Zijlstra 2020-01-24  1507  
37f8173dd84936 Peter Zijlstra 2020-01-24  1508  #ifndef arch_atomic64_inc_return_release
37f8173dd84936 Peter Zijlstra 2020-01-24  1509  static __always_inline s64
37f8173dd84936 Peter Zijlstra 2020-01-24  1510  arch_atomic64_inc_return_release(atomic64_t *v)
37f8173dd84936 Peter Zijlstra 2020-01-24  1511  {
37f8173dd84936 Peter Zijlstra 2020-01-24  1512  	__atomic_release_fence();
37f8173dd84936 Peter Zijlstra 2020-01-24  1513  	return arch_atomic64_inc_return_relaxed(v);
37f8173dd84936 Peter Zijlstra 2020-01-24  1514  }
37f8173dd84936 Peter Zijlstra 2020-01-24  1515  #define arch_atomic64_inc_return_release arch_atomic64_inc_return_release
37f8173dd84936 Peter Zijlstra 2020-01-24  1516  #endif
37f8173dd84936 Peter Zijlstra 2020-01-24  1517  
37f8173dd84936 Peter Zijlstra 2020-01-24  1518  #ifndef arch_atomic64_inc_return
37f8173dd84936 Peter Zijlstra 2020-01-24  1519  static __always_inline s64
37f8173dd84936 Peter Zijlstra 2020-01-24  1520  arch_atomic64_inc_return(atomic64_t *v)
37f8173dd84936 Peter Zijlstra 2020-01-24  1521  {
37f8173dd84936 Peter Zijlstra 2020-01-24  1522  	s64 ret;
37f8173dd84936 Peter Zijlstra 2020-01-24  1523  	__atomic_pre_full_fence();
37f8173dd84936 Peter Zijlstra 2020-01-24  1524  	ret = arch_atomic64_inc_return_relaxed(v);
37f8173dd84936 Peter Zijlstra 2020-01-24  1525  	__atomic_post_full_fence();
37f8173dd84936 Peter Zijlstra 2020-01-24  1526  	return ret;
37f8173dd84936 Peter Zijlstra 2020-01-24  1527  }
37f8173dd84936 Peter Zijlstra 2020-01-24  1528  #define arch_atomic64_inc_return arch_atomic64_inc_return
37f8173dd84936 Peter Zijlstra 2020-01-24  1529  #endif
37f8173dd84936 Peter Zijlstra 2020-01-24  1530  
37f8173dd84936 Peter Zijlstra 2020-01-24  1531  #endif /* arch_atomic64_inc_return_relaxed */
37f8173dd84936 Peter Zijlstra 2020-01-24  1532  
37f8173dd84936 Peter Zijlstra 2020-01-24  1533  #ifndef arch_atomic64_fetch_inc_relaxed
37f8173dd84936 Peter Zijlstra 2020-01-24  1534  #ifdef arch_atomic64_fetch_inc
37f8173dd84936 Peter Zijlstra 2020-01-24  1535  #define arch_atomic64_fetch_inc_acquire arch_atomic64_fetch_inc
37f8173dd84936 Peter Zijlstra 2020-01-24  1536  #define arch_atomic64_fetch_inc_release arch_atomic64_fetch_inc
37f8173dd84936 Peter Zijlstra 2020-01-24  1537  #define arch_atomic64_fetch_inc_relaxed arch_atomic64_fetch_inc
37f8173dd84936 Peter Zijlstra 2020-01-24  1538  #endif /* arch_atomic64_fetch_inc */
37f8173dd84936 Peter Zijlstra 2020-01-24  1539  
37f8173dd84936 Peter Zijlstra 2020-01-24  1540  #ifndef arch_atomic64_fetch_inc
37f8173dd84936 Peter Zijlstra 2020-01-24  1541  static __always_inline s64
37f8173dd84936 Peter Zijlstra 2020-01-24  1542  arch_atomic64_fetch_inc(atomic64_t *v)
37f8173dd84936 Peter Zijlstra 2020-01-24  1543  {
37f8173dd84936 Peter Zijlstra 2020-01-24 @1544  	return arch_atomic64_fetch_add(1, v);
37f8173dd84936 Peter Zijlstra 2020-01-24  1545  }
37f8173dd84936 Peter Zijlstra 2020-01-24  1546  #define arch_atomic64_fetch_inc arch_atomic64_fetch_inc
37f8173dd84936 Peter Zijlstra 2020-01-24  1547  #endif
37f8173dd84936 Peter Zijlstra 2020-01-24  1548  
37f8173dd84936 Peter Zijlstra 2020-01-24  1549  #ifndef arch_atomic64_fetch_inc_acquire
37f8173dd84936 Peter Zijlstra 2020-01-24  1550  static __always_inline s64
37f8173dd84936 Peter Zijlstra 2020-01-24  1551  arch_atomic64_fetch_inc_acquire(atomic64_t *v)
37f8173dd84936 Peter Zijlstra 2020-01-24  1552  {
37f8173dd84936 Peter Zijlstra 2020-01-24  1553  	return arch_atomic64_fetch_add_acquire(1, v);
37f8173dd84936 Peter Zijlstra 2020-01-24  1554  }
37f8173dd84936 Peter Zijlstra 2020-01-24  1555  #define arch_atomic64_fetch_inc_acquire arch_atomic64_fetch_inc_acquire
37f8173dd84936 Peter Zijlstra 2020-01-24  1556  #endif
37f8173dd84936 Peter Zijlstra 2020-01-24  1557  
37f8173dd84936 Peter Zijlstra 2020-01-24  1558  #ifndef arch_atomic64_fetch_inc_release
37f8173dd84936 Peter Zijlstra 2020-01-24  1559  static __always_inline s64
37f8173dd84936 Peter Zijlstra 2020-01-24  1560  arch_atomic64_fetch_inc_release(atomic64_t *v)
37f8173dd84936 Peter Zijlstra 2020-01-24  1561  {
37f8173dd84936 Peter Zijlstra 2020-01-24  1562  	return arch_atomic64_fetch_add_release(1, v);
37f8173dd84936 Peter Zijlstra 2020-01-24  1563  }
37f8173dd84936 Peter Zijlstra 2020-01-24  1564  #define arch_atomic64_fetch_inc_release arch_atomic64_fetch_inc_release
37f8173dd84936 Peter Zijlstra 2020-01-24  1565  #endif
37f8173dd84936 Peter Zijlstra 2020-01-24  1566  
37f8173dd84936 Peter Zijlstra 2020-01-24  1567  #ifndef arch_atomic64_fetch_inc_relaxed
37f8173dd84936 Peter Zijlstra 2020-01-24  1568  static __always_inline s64
37f8173dd84936 Peter Zijlstra 2020-01-24  1569  arch_atomic64_fetch_inc_relaxed(atomic64_t *v)
37f8173dd84936 Peter Zijlstra 2020-01-24  1570  {
37f8173dd84936 Peter Zijlstra 2020-01-24  1571  	return arch_atomic64_fetch_add_relaxed(1, v);
37f8173dd84936 Peter Zijlstra 2020-01-24  1572  }
37f8173dd84936 Peter Zijlstra 2020-01-24  1573  #define arch_atomic64_fetch_inc_relaxed arch_atomic64_fetch_inc_relaxed
37f8173dd84936 Peter Zijlstra 2020-01-24  1574  #endif
37f8173dd84936 Peter Zijlstra 2020-01-24  1575  
37f8173dd84936 Peter Zijlstra 2020-01-24  1576  #else /* arch_atomic64_fetch_inc_relaxed */
37f8173dd84936 Peter Zijlstra 2020-01-24  1577  
37f8173dd84936 Peter Zijlstra 2020-01-24  1578  #ifndef arch_atomic64_fetch_inc_acquire
37f8173dd84936 Peter Zijlstra 2020-01-24  1579  static __always_inline s64
37f8173dd84936 Peter Zijlstra 2020-01-24  1580  arch_atomic64_fetch_inc_acquire(atomic64_t *v)
37f8173dd84936 Peter Zijlstra 2020-01-24  1581  {
37f8173dd84936 Peter Zijlstra 2020-01-24  1582  	s64 ret = arch_atomic64_fetch_inc_relaxed(v);
37f8173dd84936 Peter Zijlstra 2020-01-24  1583  	__atomic_acquire_fence();
37f8173dd84936 Peter Zijlstra 2020-01-24  1584  	return ret;
37f8173dd84936 Peter Zijlstra 2020-01-24  1585  }
37f8173dd84936 Peter Zijlstra 2020-01-24  1586  #define arch_atomic64_fetch_inc_acquire arch_atomic64_fetch_inc_acquire
37f8173dd84936 Peter Zijlstra 2020-01-24  1587  #endif
37f8173dd84936 Peter Zijlstra 2020-01-24  1588  
37f8173dd84936 Peter Zijlstra 2020-01-24  1589  #ifndef arch_atomic64_fetch_inc_release
37f8173dd84936 Peter Zijlstra 2020-01-24  1590  static __always_inline s64
37f8173dd84936 Peter Zijlstra 2020-01-24  1591  arch_atomic64_fetch_inc_release(atomic64_t *v)
37f8173dd84936 Peter Zijlstra 2020-01-24  1592  {
37f8173dd84936 Peter Zijlstra 2020-01-24  1593  	__atomic_release_fence();
37f8173dd84936 Peter Zijlstra 2020-01-24  1594  	return arch_atomic64_fetch_inc_relaxed(v);
37f8173dd84936 Peter Zijlstra 2020-01-24  1595  }
37f8173dd84936 Peter Zijlstra 2020-01-24  1596  #define arch_atomic64_fetch_inc_release arch_atomic64_fetch_inc_release
37f8173dd84936 Peter Zijlstra 2020-01-24  1597  #endif
37f8173dd84936 Peter Zijlstra 2020-01-24  1598  
37f8173dd84936 Peter Zijlstra 2020-01-24  1599  #ifndef arch_atomic64_fetch_inc
37f8173dd84936 Peter Zijlstra 2020-01-24  1600  static __always_inline s64
37f8173dd84936 Peter Zijlstra 2020-01-24  1601  arch_atomic64_fetch_inc(atomic64_t *v)
37f8173dd84936 Peter Zijlstra 2020-01-24  1602  {
37f8173dd84936 Peter Zijlstra 2020-01-24  1603  	s64 ret;
37f8173dd84936 Peter Zijlstra 2020-01-24  1604  	__atomic_pre_full_fence();
37f8173dd84936 Peter Zijlstra 2020-01-24  1605  	ret = arch_atomic64_fetch_inc_relaxed(v);
37f8173dd84936 Peter Zijlstra 2020-01-24  1606  	__atomic_post_full_fence();
37f8173dd84936 Peter Zijlstra 2020-01-24  1607  	return ret;
37f8173dd84936 Peter Zijlstra 2020-01-24  1608  }
37f8173dd84936 Peter Zijlstra 2020-01-24  1609  #define arch_atomic64_fetch_inc arch_atomic64_fetch_inc
37f8173dd84936 Peter Zijlstra 2020-01-24  1610  #endif
37f8173dd84936 Peter Zijlstra 2020-01-24  1611  
37f8173dd84936 Peter Zijlstra 2020-01-24  1612  #endif /* arch_atomic64_fetch_inc_relaxed */
37f8173dd84936 Peter Zijlstra 2020-01-24  1613  
37f8173dd84936 Peter Zijlstra 2020-01-24  1614  #ifndef arch_atomic64_dec
37f8173dd84936 Peter Zijlstra 2020-01-24  1615  static __always_inline void
37f8173dd84936 Peter Zijlstra 2020-01-24  1616  arch_atomic64_dec(atomic64_t *v)
37f8173dd84936 Peter Zijlstra 2020-01-24  1617  {
37f8173dd84936 Peter Zijlstra 2020-01-24 @1618  	arch_atomic64_sub(1, v);
37f8173dd84936 Peter Zijlstra 2020-01-24  1619  }
37f8173dd84936 Peter Zijlstra 2020-01-24  1620  #define arch_atomic64_dec arch_atomic64_dec
37f8173dd84936 Peter Zijlstra 2020-01-24  1621  #endif
37f8173dd84936 Peter Zijlstra 2020-01-24  1622  
37f8173dd84936 Peter Zijlstra 2020-01-24  1623  #ifndef arch_atomic64_dec_return_relaxed
37f8173dd84936 Peter Zijlstra 2020-01-24  1624  #ifdef arch_atomic64_dec_return
37f8173dd84936 Peter Zijlstra 2020-01-24  1625  #define arch_atomic64_dec_return_acquire arch_atomic64_dec_return
37f8173dd84936 Peter Zijlstra 2020-01-24  1626  #define arch_atomic64_dec_return_release arch_atomic64_dec_return
37f8173dd84936 Peter Zijlstra 2020-01-24  1627  #define arch_atomic64_dec_return_relaxed arch_atomic64_dec_return
37f8173dd84936 Peter Zijlstra 2020-01-24  1628  #endif /* arch_atomic64_dec_return */
37f8173dd84936 Peter Zijlstra 2020-01-24  1629  
37f8173dd84936 Peter Zijlstra 2020-01-24  1630  #ifndef arch_atomic64_dec_return
37f8173dd84936 Peter Zijlstra 2020-01-24  1631  static __always_inline s64
37f8173dd84936 Peter Zijlstra 2020-01-24  1632  arch_atomic64_dec_return(atomic64_t *v)
37f8173dd84936 Peter Zijlstra 2020-01-24  1633  {
37f8173dd84936 Peter Zijlstra 2020-01-24 @1634  	return arch_atomic64_sub_return(1, v);
37f8173dd84936 Peter Zijlstra 2020-01-24  1635  }
37f8173dd84936 Peter Zijlstra 2020-01-24  1636  #define arch_atomic64_dec_return arch_atomic64_dec_return
37f8173dd84936 Peter Zijlstra 2020-01-24  1637  #endif
37f8173dd84936 Peter Zijlstra 2020-01-24  1638  

:::::: The code at line 1463 was first introduced by commit
:::::: 37f8173dd84936ea78000ed1cad24f8b18d48ebb locking/atomics: Flip fallbacks and instrumentation

:::::: TO: Peter Zijlstra <peterz@infradead.org>
:::::: CC: Thomas Gleixner <tglx@linutronix.de>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202104152005.CWPsLZtx-lkp%40intel.com.

--82I3+IH0IqGh5yIs
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICJoqeGAAAy5jb25maWcAlDzLdtu4kvv+Cp305s6iE1EvyzPHCwgEJUQkwSZAmfaGR5GV
tOY6do4s53b//RTAF0AW7Uwv0lFVASgU6g0wv//2+4i8Xp6/7y+nw/7x8Z/Rt+PT8by/HB9G
X0+Px/8Z+WIUCzViPlcfgTg8Pb3+/el8ejn8HM0/epOP4z/Oh9loezw/HR9H9Pnp6+nbK4w/
PT/99vtvVMQBXxeUFjuWSi7iQrFc3Xw4PO6fvo1+Hs8vQDfyph/HH8ejf307Xf770yf48/vp
fH4+f3p8/Pm9+HF+/t/j4TJa7L3l4TCZHr/uH2be+OHLbLmfHg5fATR9mHjzh+PVw+zw5fq/
PtSrrttlb8YWK1wWNCTx+uafBqh/NrTedAz/1bjQ708CMJgkDP12itCicyeAFTdEFkRGxVoo
Ya3qIgqRqSRTKJ7HIY9Zi+Lpn8WtSLctRG1SRoCtOBDwR6GI1Eg4gt9Ha3Oij6OX4+X1R3so
POaqYPGuICmwzyOubqYTIK9XF1HCQwYHJtXo9DJ6er7oGZr9CkrCesMfPrTjbERBMiWQwauM
g7gkCZUeWgF9FpAsVIYvBLwRUsUkYjcf/vX0/HRsj1neyR1PKOy24eGWKLop/sxYxuzV272l
QsoiYpFI7wqiFKEbhMtMspCvWhFvyI6BsGBmkoE1wLqw07CWMhzJ6OX1y8s/L5fj91bKaxaz
lFNzYnIjbtvpbAyPPzOqtCidI/ZFRHgHJnmEERUbzlLN3J3NcOzDCVYEQNuiZEJSyVyYzZDP
Vtk6kEaox6eH0fPXzgaxQRGcE69WTdt5jcgo6MVWiiylrDzh3rKGgu1YrGQtU3X6Di4CE6vi
dFuImIFIraliUWzuteZGRpLNeQMwgTWEzylyzuUoDkzbYwwU1Z4NX2+KlElgIgI9d2kqYfU4
rxdLUsaiRMH0sbNcDd+JMIsVSe/QpSsqZBP1eCpgeC0/mmSf1P7l36MLsDPaA2svl/3lZbQ/
HJ5fny6np28dicKAglAzBzcOsllZn6/er4VGOVxJH3gRlIGBASnKquTtkcGPxsR9LskqZL6t
db+wBcuugX0uRUi0KdkrG2mkNBtJRJVAcgXg7N3Cz4LloDMY/7Iktod3QOB8pZmj0m0E1QNl
PsPgKiW0g9ATSwWup9V0CxMzBq6Vrekq5FLZonT337iQbfkX57C3jVYJzGL4dgPBBnT/5nvX
iiXdwPrGlmstlIe/jg+vj8fz6Otxf3k9H18MuOIKwTqOQ2ZJIlIliziLSLEiEKopt4P3r8Eb
JWNxq2O12qxTkSUS1WcdcsBZgj4jcoC90m0ieKy0P1AidUy6FIUOgWZ+dHoIIoEE3sB8KVHM
RxZJWUgsp74Kt0C/M040tRIQ85tEMFvpZa0QmvrF+p4nlp74xQoAE0fl/SK8jwjGgF/k987g
8F70hs7wkfdSObJeCaGdlP47JlBaiATcDL9nRSBS7bXhfxEcoSPZLpmEv2CGChFahWDIlCXK
JJ/amNqdlBbe/jbxC6K+FbvkmqkIDLFoo33n7CoEerpBGQsxHygkz6sA4oYBUKYt7lkzTGIr
AmE8yAxn9aoZJNmdn0Vi+VyTyJRgGiU53TjGzxLhbqfeLl/HJAwslTPs2wATvW2A3ECSZWUC
3Ep/uSiytBNliL/jsJ9KppjJwXwrkqbcPqStpr2LZB9SEFswDdQITduV4jtHsVZJ8OaBauUw
biTALHUL0nQkGa2Y76NGbY5Aa3fRZDy1BmggrFPsIuBCOHltQr3xrBfXqtorOZ6/Pp+/758O
xxH7eXyCIEnAxVIdJiEXaQMeuqxJ+PDFK0f9i8u03O6icpUyJ+llSladQVSxSnGtlyFZDSCy
FaalobBSdj0aVCZds9r/27qZBQGkxwkBrNktAQ9u4e+kYlHhE0V0ZccDTombokN0DHjoBB3j
YUxEcHJntwSriaeTlZ0Ip1zSXSdtjiKSFGkM/hoKjiKCYmD5Fp7kN96VM18hV5blR5GVR+yI
GaWrvnpDNWTWQkA4IggkUzfjv+m4/M8N0KaUALusQmtnB1BEQWlTF1uR8FnYobgloCMmfyBh
scnA44ar7iR1EpCBzFdMOqfUYqvBgY2H4m5bJlEVWeewdGYbhGQt+/imMiFQB6YQnkGJnFjc
EMgs6kM3twwqBWu+AFw+I2l4B78LxzEma6VFV4RgMKG8aQ5Ep1GQHFislRnVMwVVejweqjZL
axQCMjDQ1B1e92r0jrtJbZuIOZOaWZPH/UUb++jyz49j60DMkaS76YQ7vruELmYct3Nz9LBt
PxS3WOhv8CS2RAzQDAQjy/LYOljQ9WRzJ7XeeWvb5CMr0YlTXRNIMJq2ehMqCTNTKyBcqCxm
/axdp5J2lelD8Sc3PFDtSWmnCd5TVyAm8dREUFNao3ReDhSmSDGRAfQhleAdN1m8ddIpY7dQ
CxW05+tfXn/8eD7r7lwSZZ1jKceZ2JZEme1+kFFWkuIKohnkHr4daZw0vhbrfeGNx1ikuy8m
83GnGp+6pJ1Z8GluYJqeayt2Yw8JUm0poVlcPcNczz+0XlthkEa+aarZzSsWcFQWzgylaTz/
B0oWCIP7b8fvEAWt+dtwHeGCHRpqxgan8/f/7M/HkX8+/SzjdntUPI1uScq08wDHj4pwLcQa
DKYm7WmQOn4770df61UezCp2QTZAUKN7/Dk9xv358NfpAj4EpP/Hw/EHDHKFUws/JXIDsT+1
wsW269s/Z1FSQARnbtqtIAzTYsu052dhMNCg3KZMdSc0WVdvmRL6DnkBLjvo1A9VHh0b11Sw
NIVSBOnktX1DM34jxLaD9MFhwG/F15nIZD+SgE8z/amqy9sJjrpJDPG5CrEDSJ+nJgyTpMuY
jLSTrTq23d2nDAIjFDFlHNUdHdPY6VUTJnHUxBhcZ83VBH4W9RjQbDpH/QbWztp7ZBAkdDb5
BgrMIlROfYcOMbzCuSsQmUkJbeWzMFhfXIm6t2fPqE+X5cpowNbJGA0a6a51KOCI6nSLUZ2L
dkOkNCEI7MGICNECg4KjFLpsxmTk5JJv5aGdHNTkb3V7RYnEF7dxOQCSJeHcaIQgGYhQdAuu
yXcK36oMMCmxEQUiW7OaMKU8ZIpblsZaIW7zDq8IRT/7b41DgYUpdzbruDtI/CZkaxc6XdE1
2WlVYkFGXddWpeukYvfHl/0LROd/l9Hrx/n56+mx7M62fh3IKkaGRKO3Y8jKwoQVdcOirkLe
WMlRB31zppMkHqNVzDtOvgnS4G50k8F2qSY7kbq4bG/T6hRPBzjd7FE91baPpKIGSsjdQ0Gw
6rqiyWKN7+WS5VAE2feBg86x5jmlzVWX3Wlot4SwXm2UYipukXS6TRZGboiHxn6XZjKZ/QrV
fPELVNMl1t9zaebeBJOAVsvNzYeXv/ZA8KG3gDb8FILKW0xoe7mF6ldK3cltWrIFj4xloUPB
ciM4ZHCKfrHVXZ9B/mXZww8hLmdO/2alTRtr3hHdFLC1JPbaX1lc3taCp+axUTO6HXIJRIE3
pgWkanYXUjfmzGBQK/CldrxKb6HUHkIaTzSAM+vqCGFuRX2YyFzItQRD8MazRBEXt1ah1fw2
Xor9fTy8XvZfHo/m3cDI9IguTva64nEQKR2HsD5miZQ05Qnmpis8VOoW9j1gIewr+gpxj5KD
/qa6JMNwoHhOG06nrTqRQbP7IUEYSUTH78/nf0YRVjY0Gckb/ZK21xKROCMYplNxmp52AjZk
qlZsJkhLUviLdbDl0s1Fmj0ohOicKKNoprCedSI47d68tcWQ7iSlTOt95+6wXpav0856ZU5c
9PqgWxkhE9QpiEk9IrAC4vvpzWx8vbCYDBmJKaEbzPlSu8qHH2XERkB2g0kDQXWIvPGu23Xu
EyHwFvL9KvNxhCx7rghjdR1gmkcFB/Vz8nhTGhj59tPLqiehiyYnjK6zZOhpR2NziWJlukmc
NGJYia1rM4bNbJILppvsn3nTzPKPP08Hu9x16gfq9JjgJ+aPKYV0sr2LTGgEPHd/m2ShoLx5
XZDQPw7788Poy/n08M10M9pS9nSoGBqJroFmZa63YWFiO1gHDKehNk5nwWc7FSUBFoXgbGKf
hE7RACHRTNdU/ObJTM15U4M/Pu8fTPVeDQtuzS5tvhqQ0RBI4LOgRWrbJ80i1pVhO8oUb93N
ougiAP3VyT1GV4d5W5G626hHVQXFrnG0VjwwmQCOG4LqrNtPoWZMe1C2S93ssoRrw6iGgMuK
xA7zFoaIyLuY1qSmU9CqHZTDjpmWvws+oT2YtAvqBhb1gTro9me0X/HUsCltOdH9hSrAwfEH
jiAAFbCYsu7laO1zysaFSEQo1kjr26Cr/qhbKPRNqGzGvb6MHozJWzYViVwxO+/fcOBUPy9o
U8ESVJ4Q3qSzZrYcXTyUWyqsdPCVdToisHVDBDq3UwNeE7A6edCppD1B5bNR1FasPjsAHbBK
G2lhzuEKXd2Dxe10ZDex3uYO9DSFkhtnzu1hQ/R37zoqQEHy5fLqetFHeJPlrA+NBeQDTSkb
76Bul2Wz2W4pOvAyETq9HPpqIFksRSqLkMtpuBtP7E6XP5/MoY5PhGr12gIas0IR2rZaS8ii
6M6VKafyejqRs7HXkoFBhEJmqb54SHec2pkTSXx5vRxPSGgBuQwn1+PxtAuZjO1eU7k7BZj5
fNyuViNWG+/qCoGbFa/HTmdiE9HFdD5BNduX3mKJo7QawnYKRpMp8gyjbXykBEuxcn3dCcWJ
HzBL2skuIbHdkaIT+7aKMXCMUX0JYVcEJQaqoIFKtcXPEWYqbMjWhN7ZsqkQEckXy6s3Rl5P
aW5pegPN89kCmY/7qlhebxIm87e4Zcwbj2d4beBKourH/71/GfGnl8v59bu5TodK+Xx8GF3O
+6cXTTd6PD0dRw9gMacf+q9us/7/PRoztioAtcdv48CysCxRN1KJTl4SqwxhdGPFp0z3i40T
r1NH2+zLq0wqeQWxNKRmA5C6BLJjCzagfID79OP1MjgVj8u31e0bNw0A5fGxlKxEBoF2smGd
tTi4sn7adm5hHJKIqJTnmgREYFjMXo7nR/2G8aTfSnzdH9w7tGqY0D0Lthuc97O4A3RrfiWU
7VBgWcBYAuql253lt+xuJSCdHt6W5s9u9JirTzlxgnUNBDUZeFjXkqzu8B5ejYfEg8P/E6c3
06IhAyMJOLX3lmnoChlBIvHmkvQucQNxizIllnnhgWFZCLkrGMFbuHL9gc1A0s9CjhmcxYLI
6GbLUQYC/fx+iIN6YQcBEa4u8Bw4vSMJ9hywxOrNVKlsZ1yN6fqNIbLeaXQIdzLPczLMyTqB
lLine+1pD7HRGJPUT5/fIDFPM7CUr0Lr05AUkjurc2EBdVmg3xlyO4mw8cSXV8vZYgh5tby6
egN3be+9jx3w3gihkye5eDq4RuqNJ96vrKEi/bgjV4MzZaJIeE55ip6ETbrKJt7Ym76zoqGa
XOOSoxue6KsoTuPl1Fvi+6Z3S6oi4s3GQ0yXFGvPw14suIRKyaS87x5YyxA4SSyCL89ogBdN
MTNrvMONT67H8wkuGV/bTSpwLjYkSuSGD22CMcXxWSFFC0n+Fq51QxhJTvUnVTgyyD5zJbMh
uayF8DmesDlb4z5kZ+8IDrJfUConD7fRciHvrhbeO5Oss9i+f3X2uVXBxJtcDe1F+8x3Zmeh
wOe+JRSS09vl2NQ56PQlyZC/tCkhtfa85fi9rUZUzvW5DawXRdLzsHslh4iFgb594MlsSO6R
+fHe2UX5Iguh+KK4fHjMcjeQOEtsrzy8onI8PYsjfQX83hlBIRGoeT5e4HZk/p6at4MD7Ji/
3/L3lEHxgkTTKVTCyr3BcJjueV1MNXy1vMrzYQd1G4EjzXFcRL3p1XL6xma5mnjTwc1KarwD
9iVhh24yHuf1q6KhuSad6myQav72JFfvTJJQk/gjmDQq3Ga840R4yNBLbZdIVkeBz6G8yXTy
3hwqCpTEOQRcMuCjZJYGhLJeyejQ5MvF/F0hJ3IxH1/lQ5u4Z2oxmbwX5u/NTfpAlBf63S4v
doHdbXFOQmyiKlOYDm2G/ynnOfbww2FDf37DrQhX1UrcdjclbLlMoiWoqYih1OoWbJCLebMc
h3ZP3MHBaQxmqGXyBepoOO7ys4IUx5ZPVTlO8zFIRikR99cE9391BYdX7uGN1BkIl9eT+ft0
pYcoktu0XHO4+ozIctZnVxcBxQoiuN3btlA+o6K8FumsbLA7/bx7cMltrj5fdxdM2ToL9QcD
kBTpOqOPV1m7nS5PRvcn3nKYguTJBJQkYdu++NVtOBtPx78grZrSbLDLIiAX49kAMisbJh1o
QsJIXww2XPd4SygY22I61U+QB9kCouX8atY/jXS7HM/19B116R9ZKvRHsrpRa861w6dPribL
cXU0sivbMv+tDLDHg8EiKtsjWkyHpiiDYTFwE17LYOABb23WeTidYW6nxINXmiyuSXdrNCJu
puyAcQ/ip7vJAnRt02+j9OkWc0uq2ESLq3cnkiqJOPUa6VXINOKzukRqH8NrIF5fGpRTtZaQ
aNWbIBhjccSgJn7V7ewwEnievcMKhueAJXKKVYEVatadfUq6kPm8btRt9ucHcy/KP4mRbmM6
VyQpdz6+NAD9p265Y7fLBp+QdLuyP8wzUAiPZePOgabktguqmr2auLc0APUjk8GlSUoLZBWS
rNDpjHUDBpkvqzdf/V6TiHW+2KkgRSzn86WtBg0mxFvzmMybf/kA6yyXndO/9uf94XI89++y
lHIcw06hmpPFPL+GMKDu8BZYebnRw9dYH/IL84Vx9ZaxbKkfz6f9Y/Vwv6M6JGy+QHKVARDL
iXsp1QCt75Orx7Wye241pbeYz8ek2BEAxQMv82z6gMeKYW/sbCLqXATbmMhUF+h3gBZVnBYZ
SZV+rYRgU/3eOmINCboQyxWLO59yooREJvrZ1U7P9g5b/q3zz4u4KPwgUjVZLnNE+CIoEkhH
9PvZ3hcf8fPTH3o0QIximFsh5Dauox/tRzZvbRoyvCn+4Y9DkPf2qQUUcsV6G60R7bF5HQr3
sxELqG80pQj7yPKbuN5SktI4TxCwt+BSl7tuw66LfmNgpzPew3fS9S7hikaLKVp0VASVQ/6s
yFrLqLfhDt4STHepAcpidZcQiT5XcsaZ1btysHDmOz2BGZ9NtCKZrz+wvPG8+aT9vrSirG6d
E1mv1ttDiuUHFTKQYREmKJ/wi+XmsRFfc6gWRYpMrn3MvTfF7pHrY01Sv69yABzUR63fKEc1
QoutKOXmWXefrmfvWhpVaVhfh7ioGPgwr8xS5x9jiIuNH6IPDkXoB1xuTBRrJouzMOzGterT
Wh5jTnyzo72XVxqGfJlcMarfcJUPf9owWv2jCFaN38DKD2ZvrAeeBs7wS4Qkwa9V9SexkHTU
h2UnyJCo1v+gETrl5rb6pqbndctHh6P/Y+xKutzGkfRfyVO/mUNNcyd16ANFUhIrCZJJUhIz
L3ou29WVr22nn5cez7+fCIALlgDVBy+KLwgE9gggEHhv1xDQdQw69qNY3yYiejKytL4FYt/U
oAbyEp11XjDK5+vWTGUPtwsrGFkYgB41bK7xDP60TGoWJGAgNfVEQ1BNNvVsaSXesk69Gzpj
eDCIGL3lKjHxvQ2bxBNPCZS64NYqgdbnS6OZsghvJXyBusBjvfGZKNXg+y+tF9gRbRNVR5W6
gqmvetZOi2caLPqkKmsqpYuhwbsqjNlzP/BILIuzqHAQADPLdJyQ3RWxvrh3AMaZU8niApdG
OwGr4pUARHYe5wzZz08/Xr9++vgLZMXMs79ev5ISwAy/F5YBJFlVRX1UlrIpWc5B29QLA/y9
yVENWeA7EdHwMwcY7rswUA5RVOjXZgZtWeM8vZFBVxz1xPPC8qmRPKvGrK1ysmNsVrcsxeTP
i4aF2qDCgUBpzrQ6NkoYi5kIlSF3rMXAQjfNtY3XjsfDUj38gU6cYn17+K/Pb99/fPq/h4+f
//j44cPHDw9/n7h+A432PQj/32onyXBQ8PVPESYvMHQN96LWdxc0uK9S0tVXY5s1bT2lghUX
eoMA0c3O2aBk5I4JgFCTa55at+8efXKTCBurZEOR6R8IZcpYropfMGF8AeUCeP4OzQzN8O7D
u698FtENSS7T5ECqVcGQNv0NVhgj/ebHX6LXTYlL7az4IEEah56+hG/tRUqhh/NeF2q7WdHh
W7UoVjr2Y70CBWL4rEhCGnL56vWhvO6RBjper6kq80J8lXBJRwLVSaIvw5CVsJIicMqkpUPx
Kce1VrvNgiQjB6Rxv2KxkwBWCnv3HTtB9vblx7e3TxinjXAdw++EPk9pyQiOJf8XZm6MuSAL
iVeK90o4Vk48D5DcoXpWyRmsV7V83iMKNg9Nxb5B5IoO7rSlJWB0qLfIfOi1CgRb8XaoitGo
2WnOUdKuWOzcqopyKRCJo7K/V9NBopF4A6OqrLV66JrsEZ1Y1JoE+zIp+8jxNLKwfjUB2Ui6
mSE0YmBBxRRCojFxSODLc/3E2tvxyRA/ZbnSnaQ1yPT3RLFW9QD5229vP97ev32a+qHR6+AP
rdTzNmiaFi+k8LsaenmGqoi8kdYwecqWWUO9l3HqpSEHPxT1SOzmwnT2fhk9yzUjTv70ij67
0p0nSACVJsm3ulU2v+CneQNC2BttP6dnVix+BrYG3ih65FHblAxmiG8n6rlN2DTfE/UhMU22
5yLPFEv67Zux4rdDC9K+vf+XDhRf+NXJ9vQMo4PH+6yLAUMd34DEAwOAIctavEL44w3E+PgA
CwssVR9e8Y4JrF881e//IztJm5ktsguNStpAnq61TMBNRIZccaCLDmryo/Y1BwNRv8D/0Vko
wBQfYBFpbYZJmLT3Y4/aGF8Y8NBQcQicEX5etfUpy1rP751E1fcNVBneOmoieF9b3XVakNEN
HWo2WRgGdhipoogzSNrAn1j4MeJG2k1WVHLc4KUgZQYTK0yrt36a0kXgWOjG3999f/j6+uX9
j2+fFL1ljq1qYTFyQHtLvpo40bM+iCs/NEXiQGIDdo4NkNz7sCjKUjMRbgdY/fGi4hT9O3SX
aFbNQdOj50/K7okvO8aVOV27lb4TgTLVtEAJKi5yKgvxdqG8yjhsxOXiVHRG8J3VphS3Uz+/
+/oVLAYuFqFn8i/jYBwNBUBlMZUaTWKhj9gkzq9pu5eC5CLtMOA/juto5VjmhVXTV+BO1zI4
+VRd6UMJjqLrfHah/flE5e2TqI+pcSjgon7R/BFFi6YsDXMP+lyzP9tT3whFN3eMjPRe4KhQ
OLTaA3XiduBOLPp9ZKrFF+uSUz/++goLCtUT0rwNwySxSZLmdas3xxUaKteEE11Rb1hO9Uaa
qoVg54efuIvg6wWfqBO/Kj7HYlqVmRjQ4cLazENbZl7iOvJWIlFrYnwd8v+oNr0NcdKufGlq
ylYQfjx57IReYvQ6oLuJZ22lfQ6V4LKrOa8Ihw+7PMLlw5Zu1SaxPxrSIDmMwo2xxed669Ca
fKj0Zuarm9YjNHe8qc3QfS6JtO9nzyKKvDPmnIns6dzCbUhnFv5CGnVy/DSJRtGAuNsFynUw
sy8tiv+dPgZztxtRLoZz5fruzjUbTYxQOnqOYMh8P0mo80zRPGXf9J3RwcYOrwlQPiYiUXG9
WSo5UUJexMvrtx8/QYvV1i1l8ByPXXHksWq12QdswnMr50KmNn9zdecl0/3tf1+nLRXCyrq6
0zbBLe+9wHKvVGZyr9QRwsqhnlCt9P5YysITUsnS9p/e/fujLii32W7DqegsIgiGXomTspCx
fE6oiCYBiRW4YVA+NfCBwqG6NqsfUzvNCofn06kmVkl9xwYoHk0q5NuaVeJJ7vLQKr3MEScO
XZ44cS0FLZyALlBSuDHRY6aesejFzZWHcegL5f6nRN4wrCQmVSHWEf4AgHISL3NUQ+btQs+W
/+JMSls1CifP5Y6oQq+y5SZQQWoOVDCmruBh+jH4kLSTJD5TsfUoGU8VZdAqIga/qp5N4QSd
iu9AsZ2ujNQc2zwVjKbBnebZbZ/itqJ0bDd7KGvfTB6cOKjP0ibbRBbMCjV0dCqPD6LRcG/n
iCcroCE5kXKGNEl2S7Mh2QUhbXPMTNnVc1xKYZkZcEBF0kiT6YmNTsrDEWpszAz9Xg3kOBUR
yGQRWFqnBK4lun/y4nFUPJ00yOIUqnOd8qe1+pcyiQtwRrMAXbjCm7XAESK/pUW5vzbZoBwh
62J28sZOQqSNcJLcDueiuh3T87GgkserWDGoZZv9ZWKi126FyXNpUWem2aMclFvarJwrZHYE
30ytG0NaF5tT4cOTVKxmDkNXnQHUz1XTVUZIY29m0C3tVRredzclrgY/ulMoPGN2I486A156
YiEizPJGCaIwosoxmxD3ahCYdnQ7zEwwWgI3pFte4dltjQHk8MLYbAoEYnl3SwJCyJcqHELJ
brtsyLMjlXWZI5I99Zbpie39gBBVmFU7oj9NllVsTp58bIo1PnDN2WZ2pjKT7AaY6UNTuHPW
u45DTFCEZbxCu92OvHTFl0rpxAJ/3i6l4gkmiNNh6KlUTq2EE+m7H2A+UFtpS5SaPPbJ25wS
Q+BKjvAKXSnTijC8X76ZJnKEVKIIRDZAus+jAKqKLENuTF34kzh2XkDF7smHeHQdunQD1Bjt
OrtyBPaPA3e7aoAj8miRAjLOEAeoyjwNFilAcbacoC0cWRxtN+FY3g5pzYM9dk1F1j93qt5K
Yxhb1yxQBn+lJT650DVmqWa07c8mmPeRR1QRhlbyiJymK0UiVAKFEbV6iF0w4g40kHiHo5nU
IQ79OOzNT47yPcOZON+qQ6mIWj1WoZuQkTQlDs/pGZEdKJcpmWYc0UrGwsC3wFP6ZtTMdCpP
kUtep5k5Stz6vmrPPC7gkGyN1d+zwKM6M6hhnetZ9i3XiEh1ATrARvJiHSDaWwCxFVD9AnVQ
PViXwZ1DVYKAKMVd4oBFn+jMCHhuaAE8YkrhgKXMgRfZBARoa2bgUQZcckZGyIs3WwpZIiei
/bYlFndHjBwEosSW826re/G9x9jzyFQB8YmQcBiqDOcVGvCJ1YoDAdEUHAjJ2ZpDu7u1BjKS
at46rbS+Qwk7ZFEYUHUGqpPnJxGtFS/JFvXBc/css9r2C2cXw7zkUwtYNo5EJ2SRT9UHuuhs
jQ8W+2THZWRQOQmmxjiLye5UseTOhMMSyvyRYGqgsiSmc9tsWYCJbgtUoq6BGno+2dwcCrZG
tuAIqY/bLIn9aEtK5Ai4ZacB9ZCJvd+yH/SrHBNHNsCw3qpP5IgpHQiAOHGI6qnbjMVUt+OH
bjtpnLRq+K2Fjyaj0ulFEVVHHNrshPhUSnsozDoq9+yWHQ5tT0B13567W9n2bU9VXtn5obep
ygFH4kSEil92bR8GDjFnlH0VJaCm0OPTC52I2iFXFrk4sayacbLurJJLk5+4ZB+clo4tY0as
EFSJAPEc2ywPSEh/A7MuNZIRCYKAXEFxcyQiNzIWjhZqgejMLYviKBjIMdKOBSyK25PSUxj0
v7tOkm7pFzDrB05AqQuAhH4U76hCnbN8Rz8BJnN4DqGcj3lbuNTC+1JBgYgP+v3Qk3EvezB4
toYX4B6plwDg/9r+MCM/zFkBqsH22lyAQk+fMkocnuuQqxZAEe4abwnH+iyIGaERzgi1PAhs
7+/IMdwPQx+H27kyUFjoaS5zvSRP3K0uzqPnecQUwIGYGGwp1ERC6S9lnaL7HEkfR0pCQHxt
SjSVnyzemkiGE8tCcngPrHWdbWuKs2x1CM5AKh6ABJaDcJllc74HhtAldIPL4Hou0Y2uiR/H
PmHXIpC4uVn1COzcnP5i59kAUt3jCO2vIbFUMA0P9L1XmSdSHy6WwMiLT4d7uQBTcaKO3hYe
za1CpqvaPdd4UvpW0DUdslPeUM9t9P0eX6HuS+XJVqBKVYos/EbhqeFnWQv3WiSFhS41sEwB
8i1Ognt8Q4NKHQFjJ5J7kP/58wt/p3SOymC4SrBDrt3qQMp8uCad/yG192PX1Tj5kbDkqMn4
CSJ3bNI408FLYofKjcddwhsDWcMo6FRl6tYMQlDocOeQl785LHk5yQnO508GTd1WQPrihKrk
K6j2qK0ri+3yOq9z9D4l184FlQ8CFmJCEXcORVSP0bFdcIeNvAa1oHK4S0xp2q9TNlUkuuIE
vdBDkybvry403+BzQ60kx3Qo0Ktd27njlZy5/ijbExJRvRwqA3ooXoRaL/J2lpY4lRHM7byC
5I4A6smtTfsyoxYVBCGfVn5UCdMqn/rIG/XsHwumXUSUQBEEzdH7oCDTc/SCR5bTVNFDRzcI
Y1qPmhjiOPIo/XKFZde1lSr72q1Uda1Z6ElA1eAEJzsn1tpXuCEYTYhky47NitN+ORwfIs2W
NmByL4uD837MWuriZRRhDTUxMz2YlYRhIDS1rPPJsOLcP4cN046VddgI9ow5DKFjOWfmcBYO
IWnzc/QxcRIjxTocIlLrRLQvMu3eO6eWQRzpEUM4wELH1WuME+1XQjnL43MCfZlWANP9GDqO
Ldgv/3zyGRUOlQN7ff/tjb/u/e3ty+v77w8cfyjnQPTkrT5ksfhZCGyOATl7Nf7n2Siizu5K
Ek0JXZqaq2TV+jvrEBMH/EaCFdN7ouZsi0e8rhOqAX75gTAd4XmOYKlmZDjmrlR9QTPPlGdR
Z59jkxxGIZmI0Ys5PYlsioTpEixRPTIxoFu6g8KiRameMJjufTJg8ORRYupPM5Kec9n1bo5b
qMd5xU+ulevF/ta4qJgf+sacPWR+mOzs68rwxMbE8lAmJtpkpzo9ppQXD9fEhMO7prIJIrV0
z9BdTcsjn+XEimCh62hKD9Jcx6gytrnEcNg2FQIYOI6ei2q5rDSqpBNChy+dGXTtaXK4M7S0
xcNcnst5iFe8OTCONDJ5VJDfeNosMoUu1Il4VU0vWJbvtACOC95xJ+TW6KZKAhjHprox17nB
GqxyyfEcbJbQLCCxA7rGLtWuhK/AoRwxillTDemxoBgwZs5ZhFDqz6wgU8d4feKhVolrrYSF
D7S6Iz1PKTy6wriCaNYllqsYKpfuWWky5aG/S2g5J0tv+3thS36mEdmilBDNdlsRo3cqkJuo
rkAaOFo6n8Q1mZJ3+Dauz2hMlN2nskQeLbEwnO597npk1QLiyQuZhrhkD0/r0A9lm07DksSh
8tI1UCkQMDepNosgWC6hb+nIZV/tfPLqqsITebGbUoLD4hb5I4mAvhS7dK4co3byZZYk9kbb
56ir3P2crmpDo1GhxDIUK7Fg3+mTyBXF1AHSyoMWYyhrawo0G4NE4vz0JaDsa40n2khg59Ar
r8bl3ZvbOFe43YamFatj8jmvhiUOOXUJzIvoVpockO7JDlwJ6aki87QutIRl8mBtGLh3mrlN
knBnEROw6N5kydqneGdxDpK4wKJ26V11jWl7kE+WCVHjeNczCMnJTjfNZcR0xjaZDsloW2Hb
w/ml0OJ8UmwXmDUtGw4al8XtQeMi3RVWnid8sIQH5CBqioPnfn+7aAHUVpYu7dt90XXPGA9E
ea4IQ65sZj1vHJgAKI8kfQgSh1y+uoFdPLJFe4+1Kf0RQj2tafQhS+IoJqHqCHaBrZUn7fZO
w/TPietE22oU8CQYm5AqE0JxTUmH58Ju5FtG+Wyd3xEP2Tzag0RlCh35bp2OxaTwpnGvYztS
a+CY63t0N5y3Ae6LrNzs1bHAskDPlv795DXDX0KFKX6n6i+WyHYrx2IcEl8Lq+7e54q9qSCK
6adNA1W6L/dqXPjMuktQ5GV6y4qM3zUT8cWXz5CcnWLfo/Vh8e30nXF0dfz27utfuCtGRF/O
icjNKdDWsKGL3SeTxXvg3959/vjwx88//8TwXHqc0cP+lrEcHVfXigNa3Qzl4VkmyeVcHh6H
AlGb+Jgo/DmUVdUV2aCkjEDWtM/weWoAJQOLcl+V6if9c7+m9VkDlrR0YE1LRg7QrOWxvhU1
tEWtZLNvhtNKXwsLSHmcALJdgQOyGaqCYNJK0ci+VUDMiwOsMGBNq3eKAMFrklOsRfquHPAM
ZcVLOGDEI71/KO3+1xwazzgLhWSaFl/K6OQnCFFeN9fOmpA47VevFPQZO44DaB2OVoL5aotN
+mmXgK4tVgxdUzesUNu1ZK16CozEHgTVVeX5FXmq84unxt+9/9en13/+9ePhbw9VllvfhgXs
llVpj6G1LmWmZI5YFRwcxwu8waFVWc7Dei/xjwfL4RVnGS4wvz1RwcoQLqty58lhQmai7zm6
REPeeAHluY/g5Xj0At9LAzUpKWqlRE1Z70e7w1F+i2wqD3SDx4OjbJUichphmqaWKgSbgcHU
KB+w4xXaCt8yU6uYwB+H3At9Cln2bA1kucm5+gwsGGE5GTx8cbhWRU4lrr9ptiKzIwANgTXh
0CJxkNxBWnmk4zHze7EDRSfOjX/aJJZSxxDAZFSSlWc5laDLwHe4NhNQIzxIEl6g0uKqpRPe
56DeUR1LyrvLxqyuybR5Gy6zwp2xv/TZRg3wib/xjgdG0oW5iR7LK8/lmLr0qYDElFXnwdNf
OJ/ENDSCWbC+OdeydxP+vDV9b5x6qMgNH+qo0pK81aMkWOc3LRIgktqMqYQuvbIyL1Ui5Faw
sxQ2D4msHIsOISNFKxHmpPOx1F4TmWAuHF0K/kgpenawsm66XhMjHXm49P4fvifTJ53sBivW
LVXu0mCGXYNxZ1Xipej2Db6cDKAdU0PTc+m0OKszaf5IyxrKOnbnmvosG6rbJa3KPMWggnot
9cXTGYOP2WqJtefAcfUXGlAa7o2llSg/M/as8qUYP1MlsaFNL4pzHSf2tK80F1I86sEfhtHS
4vLpiWEjsbT2xsBQd075b+nPD69vsi680OSUTxgEAhTGqmowDPJL8Y8oUIQy2p+7sOkVfBnb
JnssLG5t+FnOjyYzi7sf5tRkZjFAoTZ0kFMpOdXAjzW8wtAV9XE4KSg+0bT8PuO3n+Vv10B5
4vT/68f3+G4EZmwoh8ifBvzFcCWNNOvkQJcL6XY4aNS2rQrt2zNWvkrbF9VjWau07IR7L4r/
EaeW8IvafeFocz7KAVKRxtIM2tpICAZuXj4W5NNJPCluramlMV5+RyLU97Gpu1IeuyvNqJGC
9SatKhQnQE57ES9AKkIfC7YvOzqmH8cPZGwjDlVNVzZygHakXkqYQvJSzRoyFo9BKqyPz4Uu
zjWthoby7RFJF9e+qTUXMpTkueNTluW7EsMmqgIpLwEh4fd0r/ooInG4lvWJtL5EoWoMODo0
WjerMi0MCycWuU6om0uj54gRFHFwWNsDTNAy42/OW6RiUIOdLhJLnw+gDp/kKQfpYCfyfmXP
DkOU9s2BnpQ4R4MPoFie2+QM52oobU8mI0M9lLpcMCmTz3TxYZbW6IMMnU8JKSCRb2SUIf5t
MaTVc61NNC0+xpPluhATGQxCW2oTg/hWBqoUL5fX2rOFE/TcD0Zv1SaSEtQKS6Z9Ch3kUW3e
Hsyqc33UiHiJHR98UWXrhyJlGudQFBWunIU2liFRUJmMMnSMdhPhQxE3tNO+pFR+niQD/eD3
5pmnK6/FEt3efkN5aVQRYbbooZy6iMMJRib97IyA8U0SMyC+woRvRF1vbU9b4Xy2KkvWDLRP
BeJjWTNaqUf0pegaLK6d4TmHNdA6rQkf/dtJfYFAQjIoIx5Y8F/WXNKqpd8WoNbx9X0NSqvg
j3ng8D3I7bFSb8cGlsiRzE1PVE9zMURmTYzgxdOX/+fsWpobR3L0fX+Fjt0R2zt8SzrMgSIp
iW1SpElKVtVF4bZVLkXbkteWY7rm128iM0kCSdDVs5dyCQCTyXwikQC+Yh2l1HiG6wISjLm0
N6jmrLuZ2GKbFCfcaymdGo2SAdfX08OfXOqS7qHtpg6XCeRH2+Zk9AxKWV/erzwYgi5zk9zB
3oI0CPiljB/IxNLRDmof4DhyoW5hyTB7IcHhN0JPAQCqSOyIq6TLsi8khlqefCwMG9vB9xOK
unEtx5+HJrl2AxIpoagQQuaa1QG0Ouyl0lN9kxpVlmV7tu0Z9CQD5DeXoF5JhrT9sESHI1Jz
lSYHI5mvOv7c4W+VOgFrJC2WFFCpebkLbMk2PUZUoeC/yh2aOq4/+L7St7APW0v0JVBhnmMd
o+Nhh5meaPYgEKlnjibPfDZisOWCfwbz0Iy9fevbyje/QlONHIsdK3DNB1q3QbFx022r47I3
SZJrZn/TxMh2vNqSMbi0NDY7IxnpsUPcI1QzNK4/N9t5YDeUVO0mYVCbKIRryEF1mizy5zYb
H6RKY7xWEGMkE1g3g3wufFU9PwwIkHSw24oZZFDT2rWXmWvP94OKaJZDv8FYvCbfLm+TP55P
5z9/sX+diG1iUq0Wki+e+YCUudx+OPmlVzZ+xUu96ijQvnglRH1hthedPfb94M44+BaJVfNl
ROVQ/SUdz/UMHSu78zynjVivcteWaaXUfc/z/ft3CYrRXN4evn+y1FfNzJcZXLpWbd5OT09D
wUZsJStiDMJk00RIeIXYgNZFMxygmr9OhAa5SEJ+YyeinRn356JRySecJ0JhJBTTtOFsCESO
GqoJK06Wodh/D9LuJlvx9HoFbJL3yVU1ZT8QN8frt9MzwCQ9XM7fTk+TX6DFr/dvT8frr3yD
A3CmOK0mm/H2i8Kczx9OpMQxC0MiGDywIW1GuMqtfuztDW29bhwtYEryM4vtlzCKEojsTDO+
PxKx8qKLdkTtO0bKaChsA0xCslqdr7/cbyKlQ7FViiGOEW6h6sEXCtZiu5xcXsGlmgbDfNlE
cEXNHfPVU+LkvUsG1+qaZ1h3NbVOsiXkiUWaoeaIyYNxZzAVmqBJCBIcYUcm4pVW0I1vQ120
3cdpDQdhtrnECGORMLd4r95CcvS42oHtESAK0LACVgzZgRWLL0mcsbdYQd4t6diE36JtU7GK
bpkSJDsnWJMdaXDlCLfSQyO4QoE1f8Out8VNrckLMC6z67kWSDfltqHvhNJy6gWAyK2TxoEZ
m620jMMe1EhSwSxU6wOWnivDgwxEZ71fvl0n6x+vx7ffdpOnj6M4z2B3lDa24CeibZVWVfKF
pq9pwlWK0dzExpdg86P6bU6IjqpWXTk50q/J4WbxT8fyZp+ICbUGS1p9w2jhPK1bGGKuUbVU
WofDMaF5ZZSRAHFEdjyejK7TEdklN/k9Y2ZzpwfMD8Ye5IM/O4ncnbIxQlogzMtMNE5aOJYF
TcC8RYmUkeMGIPHZ6zrRwDVFqaAY9DOCb4zIzoAslniWWtsBTlbS0wHGqg6HgwuewItKT5+x
GWfQczOL6zrBCTzrk76LG4c4fSKyPUIeDihJ9rmKA4N3IEcSDndUaPl57jphw3zaMvM/G5Qh
IFGkhe0cZtyYgQUwrYrDyO14O+dghKaOdcPZeLRMFOwBnb0YtEpeRoHjMa0Sxre2s/jsvRsh
1BxCZySlNxEqmM+TLB440pCwg3jQy4KXhYsyYseomLFhzM71PA4/XyXk3jJsDsHYflZVaWW6
dQc1qX12EYOL0m6hNNnRQk0yCmmO5yXD2ADv9jCFeOZRLixR3ghftSbPkxtrzTTL7TaEex0o
vBQS4+0zc/zhlBREnyUemD69UX8Bg82sIV5/ufUKg+oZH8wxGnyc6clVsQX/wfY4mIrh8H69
fzqdn9DxUXmcPjwcn49vl5fjlZwVQ6Eg2oFjoWGiSTo1WeuaSp9XZZ7vny9PANf4eHo6XQGj
8XIWLzWBZsJ4OmOjOATDmRFwqk+LxC9t2X+cfns8vR1VpCR5ffcOSMZMdllNGolNbbkqu4pZ
s5+9V333/ev9gxA7PxxHW6dvAhv7T4jfUy/AL/55YeqAI2sj/ih2/eN8/X58PxkdMZ+x5kzJ
8HB/jxankoYfr/+6vP0pG+XHv49v/z1JX16Pj7KOEfuV/tx1cfl/swQ9dmWKcsAcffoxkSMQ
Rnga4Rck0xmezppAc+S0xDaOvRvbY+VrlMj3yzMYrv7GQHdq2zFT7HVIkp8X013PMJMYnVaV
Fq780Yd+5efHt8vpkfiUa9KwCAloy+6mq/qwLFchQL5wh7pNKg6qdRmSqF9waV5y4rk8xBR5
WWySTUNWbMmSfm5jz8VpjhPxAIn0qD6lHKCqVUGgjVtW6/DOvKIVIX42LVGarRhygQ43PVHh
EXPvHwMBafnE5acl7tJFpWO7BwUuqjReJTHg5jLFlqkn70pUXML9+5/HKxdqYHDap/cpgM2m
0GpLpJkt0ySL4d0GuOc6h2smqFU9BE5vh1uZp6KF69QNRlLKo7RFIMy11QBpoaWI7y2xgwkE
4EcZuj8UP8BUIHoIAH9+mILgTiZGckI2XYBMoIV0tN53GOsdLbONxBzTUZHc3JvxHuVITIai
8QpMK1KnvuvZhl6JmWyKRipjnEwQxxvlUF9lxIviKJmy6GeGEGRFGimiFkqT0Bk57yRcCzNQ
DogDLEP0AAASiL+rZEN0qZbdhWZyddpFnL85EmgzUfA9odIujGDSy7ptQrGyLNKmPtxVZZYJ
4saZrYk2KFteI74PaGIgR8gYozBWRbVRZpz1ndj4Nlkhr9fVviXBs+vLxxuXak/eESgXA0Ip
q2JB61BXUWsB08QqraOdvmXo7/I7GOYybQJvgRUCtipojQjTbFFwB15pOaSev4rU257VWgj7
++lhoiyN5f3TUVr9J/XQRvYzUeRxId8kTV5LfvlrJZRdqwzrulkLtX3F+WgVSyX+zw6f+uVy
Pb6+XR6GnVMl4BADLsyo0TtaD8PcaR+DotQrXl/en5jSy7zG+UPg5wGjnytKZ1rt30PK62yH
sMffpVWft+rycX68A1C/PqpNMYpo8kv94/16fJkU50n0/fT66+Qd7gO/iQ6JjUPNi1DJBbm+
RBx2N8dW8UNvl/vHh8vL2IMsXym++/Ify7fj8f3hXoyH28tbejtWyM9E1dXT/+T7sQIGPMlM
znIoZqfrUXEXH6dnuKvqGml4cZg2CQ4/gp/gwNwis2TkJlBxt4sqWSkXa6+v0t9/uazr7cf9
s2jG0XZm+UhzEFVs0oGSuz89n85/jZXJcTs/q781uDpNKgd1Z1klt+2o1T8nq4sQPF9wG2uW
0Et2OtLtUGziJA83yGMRC5VJBUFb4QZfYBAB0Btroabw7C4Hz0jxYqFROwWp+cCrqf/IQ7KD
S8v+Am7fRP0dafLXVRxW9GwdFqOEJRLj7wovtetFzVrWoVB5OLOcFjCx2TQZ8qS7Pq8q9SLj
/g9aRm3u428vm41PknlqetXM5lMXeUtpep37PrZdazJ4vY18iGCJ4Sz+dfkklWLtrtD1Yop3
U0DFWWyXS7yZ9rRDtGDJcR6O0ZPNioQNIy44ng1yPwH/Bs4EIEXJ+l5ZqDdcDdV/8cUuemYg
Kt9aw9zoRBwsUt8N7vw0mS2xr5oa2y8jtjB0gFfWMD5TQsvlUsOE8T5zMVCOJpgGCEVs0yti
8tQZzQrX8keQMfPQwVkmxG8SS69+06RqmkbiZRZ5JGaAvNfPeKpZBuIYXxSHDjvX49DFGrsY
iVVskasbReKaWHJsZCtDDriqEm6MS7rZ1zEfNXmzj36/sS17JLdo5DojGRHyPJx6vj+eS1nz
R7LeCW5AMZMEaeax6X0EZ+77tpk9UVFNAnIxy/eR6FlytBKkwBlZQusodEdQGZobcdIliS2A
tAhNXMr/v4W4G95iy1zloZjbWRPiKTS15nbl06kytdl7T2DQDNJgXWZBRoAxt/GsFL8d4/eM
1MObBuR3YBkWZaAc0iXkxCvDKhQ6FedZQeTI5AO7b2CWOQ1mB+74DqwZOYADZT62agkWlyAI
zPKzKfnsuUPuAaZzb268ZT6SSzOM517AxfiGcBmyTzVWXUtUCcwJqp4GxVW0/gwdQVYbeyR9
sMrALXZcUnqy2SVZUSYd2Co6Aqczz0VoLOs9SeqnPF9pXQFxxpsSE4skzTiDgOTMyYKmSGwy
5nBvWxTJViGjsfNRsXDaSoBK82zzcZfNtgcWpwB/KoB90cTyguA5ZAYBaT6S9SpPNoevtmos
5n2bcKtRlZC7EahgqrOYJ2TE/g40SNPnuUsGdUiNhME9Z/dJoVJA8DEKTyx11byIByhCMv8x
GZmNfNqa2eTdLZW9UGmZXm1RPBnFsB3b5Qx7mmvNahsrl+1Ds9rIiaAZgV0HDrfSSb4oC2P+
Kdp0TrFJFHXmsq7rmhnMZmYxyrUaG4ja7M7GPBaMJos8n0UPw9jTqCww5bnt7EbuX4FtmdCX
2ty1H4BX/6f3isu3y/kqzrmPaH8CVbJKxE6ZJcyNIHpCGyVen8V50tjhZm5AVoV1Hnlm8r/O
bNEVoHTT78eX0wNcwh3P7xdDYW0yMaXKNRN6RCSSr4UWwfpbEhDIePnb1PEkjWxVUVQTH5c0
vKVKSpnXU4vA+EVxmwfaoFFkTElSgeWICsGfVQpnrlWJA0bqssY/d19n8z2xKJrtpoK0T4+a
IG/aosvLy+VMo6a1TqnOJHQpMtjtqQONCr58PJTyuocZcvpY7rpsnzPrJI84ddk9pSplHKl6
AQhTw7nbBwWTxxqjMjyPDACDpztf30Kr2SUm2r2aHrzC5xM0OcjNG5BLcN/FI1P89jCuE/z2
AiLvmZqK788dPhRP8lx2rgiO5ZFyA8erKDgHEGeB+dvMjQ7UeTByYhPMqe8b4lOf2xGAERBd
Vfwm4IySwqu5/nRqVfTZuU2fnboszJRYsGY0hUNcFpCVh9XCas/D7pJC47HVOQepQAEO68oD
x3Udosr4NlJF4ffModqKN3V8Spg75mYIDoUzB4J9+F1M8H1/am7Igjp12cw3mhnQY5DagYy2
QJ4Tn0yBzk3n8ePl5Ye2UBozXVkP27Qd/UWCwVM2jZFLB1NWmWbY+g5qozOQHf/343h++NG5
fvwbonDiuP5HmWWtAV5d2sjrkvvr5e0f8en9+nb64wO8YgzHE99x2dd/WoQso/x+/378LRNi
x8dJdrm8Tn4RVfh18q2r4juqIl5llp5LfWsEQfe+fvt/Wnafm+zT5iFr4dOPt8v7w+X1KD68
3cD7w1FtB9bMopMSiPaICaLl8jNeGqgCsnTuq5rEhkqKh9tlka/sgCgC8NtUBCSN7APLfVg7
4rCC9/CeRvd2RDdWSrSlrr5UxcFlnUHKrWsRtABFYDctVQy4MfAsCHT+hA2RXya7WbmORTzV
xntXqRnH++frd6SytdS366S6vx4n+eV8utLBsEw8D6tNikAWe7CGW6PnQ2A5RBnh3oeYuIqq
gh8vp8fT9QczVHPHxceIeN1QBO81HFwsNplCHDnWiOFuvYUsVA1KULRuagdv9uo37WhNM4yO
62Y7BtmYCoWUxf0UDIf066AF1JItlqcrhCS+HO/fP96OL0eh83+IFh1MZs8ic02S6ISUpKk/
kJqRKZkaUzJlpmTaTkk0zYp6NsXW35ZCn+2o5OmbfI91jXSzO6RRDjjvqEBMNYE/CI83goKI
mLyBnLzYq5UwHHJ4xKyRUtX8zeo8iGtk1KB0uiQZPNIS5nMu8QX9ZDTgAqBfD+Ac/IOj9tcl
KgRP5rRjdojfxVxxbaL9bsFuhIdZ5qr51e8SmdCvLC5QIyzjeu7iDpWUORmj9dRVOJ9dgYu1
PWWd6oGBdfUoF4/OsFeOIGDdT/x2sZkxgih8n/CDAJu4V6UTlha1JSma+ELL4jKYSOA6W7QC
A7+d1pnYD20WO1XxHD70RjJtNu8kvonIzNQuil5WBRqXv9eh7Rg5mcvK8j9FZTWzZWZN5eMY
lGwnRoEXoW8We4LYQQiQj6IgMNxNEQpdA91cFWUjxgfp/VLUViZxGFtebXsEqA1Y3sjVQ3Pj
umzyajHztru0djDAdUui61hPNvaCJqpdz/bYF0sei4vR4d+KrvYDknJCkli0OeBMp2R4CpLn
s6BY29q3Zw65p9pFm8yzRlLwK6bLDbpdkksDGTmaSNqIn+UuC2z2Vu6r6HLRvzZe4+h6pKIM
75/Ox6u64GFWqpvZfIoP9fAbX4jeWPM5Xsf0/WEerjZkpenJoxeevQTFzQxXro3xYtD8A+mk
KfKkSSp1Udg+lEeu73jWYPGX5StFkGX1aiTL7tVIBrIYsKFnnjt6kWjK8bteK1Xlro0nOaWb
m7TB5Yv+EubhOhR/at8lgSDsIPivDr/39fn4FzmFSYvXlhjmiKBWrx6eT+fByOLOCOkmytJN
149s6yFx5S5wqAouE1i3nTNvl69vcytMfgOX/POjOM6fj7hi8HXrSrlFamPgiHYCqF9VtS0b
ZDRE7Aa8zcGNnPdkkMHxiNXVna+h1ijOQv2XWSXuz08fz+L/r5f3k4xYGcxeuWN6ANbM7l46
wZWCLoMkHAldK37+JnIkfr1chcp0YqKRfGdKdsUYIjRHLrR8z7QheVjxUARsVYoAGZ3CKQqS
7Y7ccAme/wnPtsxIj3b1LzNrAPBuHBuNFmBbR3TolUyDLC/n9mCnGClZPa0sKG/Hd9BTmUV7
UVqBla/wqlw69CQCv6nmrGnGQT7O1mLv4U7vcSk0WP78p5Jy9pzScsmBIirtsfNumdk2RsyU
vw3sQEWjaNBl5tIHa5/ejMrfBrq2opkAmILqcje7eh8wPg5T2aOI4hgvaXyPnQDr0rECVMbX
MhR6djAg0De1RCMEajBC+jPJGQKRmDU5rN25y99gDZ/Tw/Dy1+kFztawUjye3lVQ23AtAkWb
arZpHFbSNfWww2bkhe1Q6JXSQFNodeslhNVRlKm6Wlq8fljv5yN66X5uQCVAIfxpARQ31xrB
ldplvpspBHe2AX/SUn8vLK1bU516TgwQEKRmkU39J2WpvfD48go2WrqO9DMVNhArFNtbkpfs
R8MtwJzHaxZqUn6ApKJ5ERXbMhtkq9WrxWjZebafW4HNgqZKFt4pmlwcJ9FEkb/RPtGI3RYj
ZcjfVGcHY5s98wO297iWQkP0bogHA9lTHr6fXplEj9UtBEwQ+3B2WKZs8sQwTqrwoLK0tCNf
xmGIfRsfmnTASJZGeBAMKoE6twyjGzPCq31DUicNdiUnGEDAW1RRXjcLfYfO9p8SVOrF6u4T
kSbVqNKDNoRwuPrjj3fp3t03oE6ZDdFyyKTQEw95KhT1mLAXUX64AZjebb1w6JPwBCQ53gil
simqirhMY6Yuse92xKtToQpyxhkiFGa7wixhWWeHNN/P8luo20gJkLA/Q9/1gpnlPjw4s01+
WNc4vRRhwWeT479gFlGSFXDpW8UJn8WUdkBXMLixG/h1cVNyqa7zaIGVtcUhK2HnUr17fPt2
eXuRy+CLMmVz2W0+E+sGrEQGH8TLtrNrE1dFGrNf2MXStt8RIpPOZpcnKA+4/GkmtdJE8Eeq
Y5wcWDEqVYKyxN9Nrm/3D3ITNReFuiFJosRPMC81kLyoZleGXgKQjEhmMmDJO8IRG00OwTuV
hvot2CxZSKhLDYfcNHrusqlCisKjZnyzZpubaYK2UAhPxvbPBha+UpwOS8PNZMCScDm4AaCo
Q76qOtF61A+7E9XuRvzRuZMSB0/PtM+3vDyM1vvCYbgqvJcac2XFllWSfE00n3mvrlQJh161
i1ZG0VWySrE3S7E06PRL4yUL8FQTQ5v4KVPjQpDtpoj5fIkgpHJAy+iIn8mst9zShgRCmXKb
VFgwxbbALSuStUhkRLPxRBGx+ygkThHNt++t88hkMYyvyrfg7raazh00JjWxtj3sHwdUmgsV
KF2Cl6GBZBBKV+aHoiSraZ2ycZF1luYLjBkABOUQCWh+9H5FNKr4/yaJ+ESNYjhtGta0ASH5
6KNlrL/K1tYfTGnMkHIvOD0L3UjuFKghNSSKWChq8KKusRUESEWdikaNUHRCsocQzyWxsbW0
wwJCXUVrcVoLJPw7AF+lNEOK3SYGh9AvRIIdVQexTVdfSo3g0pN3QrVovtA5ookqUpQvTUss
tqkYfRvwiN+EzZYiu9VdEsJ+L1Uk9qZNclR6U1ybcPSR223RkFRhEgZHkQ93YbUx2qJ3xJUS
Y1+nuI1Yv/pvuV3mzWGHzniKgNR0+VTUoN4Ot02xrL3DEo1qRSOk5RawO0gy/YiHcdBZ+vAW
XYh+yMIvpMCeBjgOKWAZHsQf7qFeIMzuQgkbmGXFHSuabmIcl4k4eSK+vCi/tMvP/1V2JMtt
7Lj7+wqXTzNVeRlL8ZapyoFiU2pGvbkXy/ZFpdiKo4q3suT3JvP1A5C9cAEVzyWOADR3gthI
8NXtj7Wlbk1BlOaxIM/NllrLTdv1293zwXfYb95285IjKcDcTUSloCh019RxoLAFmwnMTyGt
UGp9ETmWSQRi8gCeizKz0i61MtJg8UiLwGXquJmJOplMqR3NSh4vYwwwlzOW1VK3yvAzqj96
qZgRQP4A9dwM3xdENqDf5bTamJf4NrsqjWiLUIzBWkM9CCa3qrqnFIcFWrKULKqoaju4Vv3u
L5TP8Ro2vlNcfRkdjY+PfLIEGSq+v9Iao4Z51STJTd6jg/UD1fFQiNsYQMbcrMNGnx+PzW/d
BtxUdfSOFgRrd/vYjQ1RldmLjoxcaGTH3vOF2VeKnu5T3+TDu/X3h9VufegRKuGb6BLew9/X
IFhX1PUM0zMOP4YGbLbPmFD9z9HhUBQScJDt1DY/Ji2eFsnZJ+tSi407o73BFtE5GWrgkBiG
QAdzEsSc2b0eMGb4g4OxopwcHJ1+wCGiTF4OyXFwvM5PKd+vQ3K6p4n0FUiL6DMZTWiTmAGD
zsfjYO2fj6mLnHYDz7y+yyrHJbik4qGtb0fjk9C0AWpko1jFpQxVRbnqTbzXxQ4RmtsOf2yP
Wgc+ocGndpM78BkN/hxq1Oh3rTJf/LHgJ+4AzXN5vqQE/x7ZuJ+Aarss8zSQcLmj4AJzoAQK
1gSgcjRlbrdUYcqc1Zhu5tHDXJcySST3MTMmEtPe1cNBKJ37YFDdE/10g9dwmTWSPgKsztO5
pDsSEOzn1ntWiGjqqXHBqskkruaBpAWAll2moCjdKId2/9K44S/Ol4sLU8SxlC192WR9+/aK
7oXhPfReOLs2Tgb8BRLtRSNQr0OB0zh9RVlJkItAPwAy0BNmthCHeZ+ESkhHSkhad2oJzCUE
v5dRjImtdao56utK8EbrUyBMKdNwXUozWXlH4ENsUbMvKBP1Ii/pl+57ooK5lqqOAqMLuNK0
MPe3Tv29vywMsNjXM8xbVInazB7Z41ArjfJFhvGJv0EvBSsTS2FUSrFCoyAuEkyrznFVZZSG
FKBGi8HMVXMDtAobwTqRzE0VYFkgVHmU97gVdYdJZ+b1XBiCw4fV0x3eI/iA/9w9//304dfq
cQW/Vncvm6cP29X3NRS4ufuwedqt73Hlf/j28v1Qb4b5+vVp/aDSrK+V03LYFH8MWaIONk8b
jPnc/HfV3m7oJHeutA7UQ5eXDANUZO0naCCpMC+ZsW8RBCsJBhEnwzaT9iiWJF3pgZG0SLEK
0jYgMQPGUmdStVJiOBRodbQJBjMVPTAdOjyu/dU0lw31o4W8Ie+139dfL7vng9vn1/XB8+vB
j/XDi3lpRhNDV2bWI2AWeOzDBYtIoE9azbksYtMY5SD8T2JmMncD6JOW1pv6PYwkNFQbp+HB
lrBQ4+dF4VPPi8IvAbUUnxTOODYjym3hwQ+WkazYJBFLnR/DpZpNR+NzKwd1i8iahAb6NRXq
rwdWfyyrcdfDpo7hQCL2SUugDtjOE/X27WFz++fP9a+DW7Uw7zHV9y9vPZbWg9EaFhn54FqQ
4NwjEzzyV4/gZUQUWaV+/4FPXorxycnoc9do9rb7gVFBt6Bb3h2IJ9VyDM/6e7P7ccC22+fb
jUJFq93KtDN1JXJKi+ymjFvuqO6TGOQFNj4q8uQaA4zD3zMxkxXMOlFIJS7kJW2S7kYlZsCq
LBr9xpu6V/b4fLfeelPDJ9ybBz6d+LC6pDpWk4+Kd+2ZEAssKWmfdovOycSn/WKecKIVV/ta
ATLUomSF16Es7mbDQzHML1I3KdF6TPPjD3CMKasC45syf1HHGuj1A7oX7sil/qgLj1tvd35l
Jf809qtTYKq+K2TD4RonCZuL8cQrT8N9fgX11KOjSE59TkYeAsEJSKNjAnZCzEcqYdErD/+e
kSvTyLpB1G2omI28agA4PjmlaE9G1BgCgtIwe470yS8Kjf+T3D/pFoWuQvOczcsPy7PWM4iK
aAVAnecB3RnLF/ajwQ6iu93vTSlLBWiRPq/lTD9lTX9U1f6kIvSUaHtEpgFqkVN9fHlltQyV
ZJNlAQL2Ph5TpXSwW3fCLXIcEm+X8+fHF4wNtEXerhPK8Eq0J7kh37nVyPNj/8RKbo4pWOzv
a7QWd+ulBLH/+fEge3v8tn7t7hA7V4+7xZJVcsmLkvTldf0pJ7MuCROBCTAwjXN4CkkEx8n+
yr16v0oU9AWGVhXXPkeFSkFOn7qC8sPm2+sKBPPX57fd5ongz3j7jAmfl6lbaZrPdSFS1OQO
VOHuIJFesEZJIRIa1QsxfQnujrDJSHTHbkEcw7dMR/tI9jW0Z9vhXgyiDknUM1l3POMFMYys
uk5TgVYNZRCprwvD9GIgi2aStDRVM7HJrk6OPi+5KGs5lRw9JL1PfXASzHl1jl7eS8RjKZqG
clkA6VnrvBKee15jUU7GUqwAIznL8LV6oT3q6OZWzZFEDB/He5XflZS6VXlCt5v7Jx1Ieftj
ffsTtEgj7AIfb8JgOmUz+nJ4Cx9v/4VfANkS5POPL+vH3pGifXimWaq0spn5+OrLofu1uKpL
Zg6p971H0b6he/T51DIC5VnEymu3ObTJSJcMWw5zaVY1Tdz5ft8xgl2TJzLDNigf//RLfw81
xDwwhx0rl8rxafvxWChIYiLh3MeEQsZAdbGXIBJkvLheTss87WIUCJJEZA6W52VkhS6WMhWg
CaYTK8Wbth6yxC+24BLf2WaWqstBxwFuazIRPjq1KXxBjy9l3SwtVZN/Gjs/TRutsfkVBjav
mFwHcr2ZJGSuN03AyoV3DCNiErBTA/Y0UNyxUwrl6gNm5svc3Ahy0iK2ORNZlKf2OLQoxzVs
QDGGzYXfIB+FAy+xdp6CDrJI18qbnCyDdmQ7HmyLmmyJ6bN2wBT91Q2C3d/Lq/NTD6YCZguf
VjLzyaQWyMqUgtUx7AZzKlsUJm2hdIYWPeFfiY9wxkizbO+9nt1IYy8ZiAkgxiTm6oYEw6yR
8Fbqczaysl7az/exqsq5hK1/KWAgSmZITWh/hW1vBulqEIaLLS12gHDr9eRMAJMGCJIpa7/5
7LZ6uZQnTPnpY2HHhCOWp1ZQFYIKUQLHYm5OV63orr+v3h52eANjt7l/e37bHjxqU+vqdb06
wLdm/m3IdFCKypMJRaLPDINeRmayzA5focqoQkWovW9SGSX9ChUkafOzTcTIDIVAwhKQClIc
qHNzoFgx5A+1hqtHLCvqnOlmZiIyDmJ6aXj0qlmi14mxfJJ8Yv8iOFO/xuoc9Gxz6/HkZlkz
a3vJ8gIlRCo+Ki2k9QQE/JhGRj25jFT8LZx1xlpVwUzKir9gifWcOnq6slnfYFII8M5wt1My
L4W14DuE0gyqOInkpyCyDCKTfciGp0VkGuJNZCRUALys1FwtRK/i9U6ETvhT0JfXzdPup74c
9bje3vt+TK4DZjBdUwISSNJbzs+CFBeNFPWX437iWknXK+HYFM3SSY7ytyjLjKV0OF6wsb2C
vXlY/7nbPLYi2laR3mr4K5WyWu8E1PyoUNISGqKCNVVE2B/Guilg+vBOgh3KVgoWKYM8IIny
YoHXijBaEdajaYJv96Pgyg+dyiplNTeOfRej2rTMM9sdqUvRnsJpk+lPFHtYfhpTZlG1NRYs
q9ueFrkKXzbDZE24215d00KwuXpmnhc65XInPr93Nv4wU8q0izRaf3u7V3nb5NN29/qGz8JY
85aymVShlGSy7LZ9FTE67bbAf0mu25Ohb0VRphixvaeStsDW0dgfe+rUhPGdz6JJCL68uMI8
AcXc4GIt/eDER7o4z/Km1GHYqLiQTVeUyhUURs8jaiE0k4plZqUKACoVIxNHaQespplgPhrT
/mEildgwkDjFa3ioOaDly6kxLhoYycvO1+uU1mSw+3iM24/svqbKJ18xohjP1T1UkzynV4dG
C5A3gs0ezuO+6UqX12NsBPO/a8nbi00HA/irGsNrPdmn9Sn35RrRysiMQb3G52DzzC8O8eqg
p6Mh8et8kdGmDWXRyGWVZ5ZNYCgYmOTUOZ2VjKgIFld+axaU5NMroHXUpNYdDg2hEklZpeqF
QHCIFhEQC0hSdOy/g0y9bfHbFi0xeCbcrJI36hx5R30oexbNnhsnNrnI1NHVnc0ji2W16w8k
iwT4vTuvv4NjShZYFXmiTTij06OjowBl6x+mkX3wxHTqj1BPpSJDKk5GjbUnrQrqaCorqr3i
MWgmGiUy0EljwefBlXoJHZrVOGJ+Sy7TPbMzfLgv8r6llWXdME9QCIB13hsVbkLsaX1Co2xP
Ki2abc8ZsjDfequxuDJRYs5yoJI16iYsivpYdDuWZeA7ztjHeKu6c0Qi0UH+/LL9cIBPh769
aCEhXj3dW+d9ARVyDKLJ6UtIFh5vPzXiy5GNxO2XN/UAxsO0KYjUBlU+rYNIzI+KeSlSk0zV
8B6atmmjYUyw/GXcwLDWrLJ2kF7rParvwGhs6KRDVQOhqomyIYZo3QFbXIBYCHJmZLoZ1Smm
+2LfSds3hTpGEsS/uzeU+czDaBD91cYL3XjS2NY3Y8LQdmAtPKoadxvgGM6FcB+30PZaDHMY
juF/bF82Txj6AB17fNut/7OG/6x3tx8/fvynYcpVkXpYtsoEPGRK7NZemV+a1+MscMkWuoAM
xta5xqLg2McgF0NTS1OLK9P91O6xITmlzSFo8sVCY5YVCLIYmekSlItKX9qxoKqFjkFABUyK
giLVYGc+tE0AKoY5CXa0HT1luuiO5cquE18QwCt+3fnRVzP0jTjP++U09b/vDAD/x6Lodwre
zUZLxjRhM2/YfLg6c7wL3UrHw8DDJquEiGATaOvvnrNlrs9ywgyGe/SnFjTvVrvVAUqYt+jL
ILThoILRniS/wdNmJYVStyWl1jAHDoYyCEj2rGbokMCHvULPi+3th9sOXoo2VLbyBgSkKFIw
1rvSzPRqrYvBDg9SmMpiQcBDKxFxIPsa3xHjhER4TCsDQc/xxyO7GLVWyClArLiofG46PFBj
dd0Tti9atb5U4gJZB3oHMn5d59SOzdS7a9A8M1UQSpB47VH1CZHKomDsAL1juM2zlHXOzYSn
nmpX9BY/hT+wyUGxW0i0j7gtKEBCT2FdlRfh+q3yWoDBz/vuT8OjXzF8KN5fbq+b7e1f1oIz
LXL1ertD3oKnJsd8mKt762W8eZNJaq10uwlNZuo5v6/aTGRe322tQC6FdYcZpYwetU8onfP8
0hMKQRQEcDuDhRXlgPT0KgWNBD2NtT72VKQISQgibdA0u3f0vMhpbfT8HyPaPD3MTwEA

--82I3+IH0IqGh5yIs--
