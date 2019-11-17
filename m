Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBFXHYLXAKGQEYYFJHYI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23c.google.com (mail-oi1-x23c.google.com [IPv6:2607:f8b0:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A573FF764
	for <lists+clang-built-linux@lfdr.de>; Sun, 17 Nov 2019 03:42:32 +0100 (CET)
Received: by mail-oi1-x23c.google.com with SMTP id c198sf2455793oig.2
        for <lists+clang-built-linux@lfdr.de>; Sat, 16 Nov 2019 18:42:32 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573958551; cv=pass;
        d=google.com; s=arc-20160816;
        b=AdSfWLogpohBac9f95qmA+5w6Frrc5kc2rrY36/i0HqP9Yh+pi9CX8tsipdawUFjr7
         G/cyYSD3jPLcTcQ0qyPWVviYm/lGCZLLrL7fKK6Ln99Cw7sd5XbKR5bSjOarLqiDJpYd
         +f3R6Kt5mt/daEtCZyGKgItEPnhvYd64vm8AgAIcEGD0oAflkykgYgHcdzg4vLSiU4ng
         psX94A/AeG+pBxWkrCBLdwqjERL4xI4Mi+LKpphq7XyVImI/L0Teq9j0Mp/kolPUxo+h
         EWB7W4YX12JUw+K0G6kHS5T1e/fcA9T+BJkzaxuNBuPkK7VUskHj7wk0yqz/3HCUi/Zm
         YTGg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=CUFSYcFRXm1VI2zXouyxfysIbyW1kH8diC1J2n3nP/Y=;
        b=eaSCeZz92PGyYbno7iAEMUJEsuxBLL0hZL118H6WjALFoatp3MYuMJaT4rppYo/V/t
         8LLfVwc5DyxydwUWRpmt8n41hPWgJvJ/884u4y7C9yq087pFOfDXNmxtvAuv391+eMq1
         xUArLkV3Xij28meyzdmDVPbSLI5uF3FDchIB91aXhLltzRst86gUFc8vP/uSNd9vXfHL
         v8FNK5iKDn3pS1AmpCn3Of3XAnhdKq1orVcdbk8WLiTyndguUCB2vvdow1Jyq1rrVyZb
         8hmEHsQzKQMzIk43SsoEJnQh0vRUlXFALICs+Q3kDSs1wo2psZ8NYRR9l8dp7UlZ25RW
         abMA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=CUFSYcFRXm1VI2zXouyxfysIbyW1kH8diC1J2n3nP/Y=;
        b=V4i9SdyO19PSEUbdpT5nJD3QYoxaqP6wDL6CfJZMKeSHQFGh1N4NcctyZ/sndATFm5
         f0CeKc5KRWO5J++khBe3n8MIGnXcWpBunQQQLkucuwudbu6kxDinUgW0ls1IleWUqHuC
         bnTErKyoMKVTC8YGl63cXO3L6lSyvABDynqT2tASKcfOtGxQX5noWrBKI2dARuGCcbv4
         mvW7AwVDWDDw8F0tAzU6qG6CBVm9YKYiAbYhsfPxW0ZgZGbjRSKgmFcF2oCgvtRwTg9K
         gUNrmVoEL8gLlUH1knP1G4SMTEhHGdJJcIButifIMh2tkYa4nb776Gb30ZlgXubo0qdb
         JHMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CUFSYcFRXm1VI2zXouyxfysIbyW1kH8diC1J2n3nP/Y=;
        b=lR7Yn5vJ5MHedg5kiP2+0eAztw5akEY3/zAzka7RXctcUkhiQdgcrx0FJlAhN+Nol/
         s8iQXfru35eUJ5AZvmBii0EjUpLG1APcT3DC3dU6Uby+70bmgJ4cY/OKVB2IoIU12Bj+
         luzF7328zdXg/pWfUuHzUuPHdCMBMA0O3uQZan6K5T9IMN3OdbxCCNqHv5At5jeD3yL9
         VTFnbnWBFmgJZnj1mwC25/mgU6Xt+vxm9XRid6ZId2CGRKW/uMps3zsXNl0oMRKx5yn+
         3X9Y8K4VFNmt4S9LTOViUuSVnsNUqvNmRVHcQZdfaIeJF/phwTRWxGkfmXo5UnrgSffx
         aRug==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV20z9vo1DJ1YW8uhYh14n+vS+vA2HNvlghrYpJIMOqnvTFipa1
	KdhM1b+0jFLRgmWJQwaAJZo=
X-Google-Smtp-Source: APXvYqyh9jlQs7B3VWFysPcoYEtFlCxYyQyFGlb7Y/p+Pxy8UfiN6BYHKpTR/3wfpkU+gKXpsP6L5w==
X-Received: by 2002:aca:c50f:: with SMTP id v15mr15039978oif.5.1573958550783;
        Sat, 16 Nov 2019 18:42:30 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6f85:: with SMTP id h5ls3449523otq.4.gmail; Sat, 16 Nov
 2019 18:42:30 -0800 (PST)
X-Received: by 2002:a9d:12a3:: with SMTP id g32mr18013578otg.61.1573958550362;
        Sat, 16 Nov 2019 18:42:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573958550; cv=none;
        d=google.com; s=arc-20160816;
        b=Cs+OPv0OniPZWiB9V2bS8a3j5ty1nyvQkGhP9YIrTslVJa83G+DxDAga9rRixy+yHE
         1aY9TtW+ZK3Tv1teD4D/L/VKUp4uUIsUoukH0O4HB71qgkyXGnXOvZ1ixgEWvlC+nHB2
         jKfJszgHYykiOgQhvLZKP5K9C8aCMqgT4vhPl+MKjCcewYDG9YqG5EbTsyAO8fo+uWCU
         QPGj14Jc4I4/GLSDziNcKp5Oe5xskL1dQa1k1sShjvQP4GVOMKrS9VpUY8eCoGI7UjJK
         EmpjbEQyyVbGICdDnyu7VmmnOPwWu56C8Nbr9CX5eGR54oelOonxFIsrM2hXVeRwwVE6
         OZzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=MlAPKVZ6/eyw5esrMMmIaGypmTLmJYpf6ExB7jIWGmY=;
        b=MJKm2b+koYprr+8Zr+V+APdNPRUDWqx8oavUJhz58+OF087huX14tDwvZXGnFGt0uU
         W4DQZtI+SI8CpbLXpcaIOMSO2Bs5c4VE6eLkwQToiFg278cbSNsxSImkOb1wrZKm9IfY
         RGgUnuianeDU3JhTgKgqVuR+4j8DsoHeSkK/SnGPjuFoKD90zAm20oXmS/kupT6fISl4
         aUjRg/Md8kqr//MzmXtmYEWLHJYKMiLfLxu2+MAQRV/M9+luCpC6qvpEEwZB/YW7zD4N
         szjNviR1qG76Rfig61+KiY+Y/mPSSoy2DVoVenteesfCalRkykuSQN8P5yb7Th3rlymE
         y5PA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga18.intel.com (mga18.intel.com. [134.134.136.126])
        by gmr-mx.google.com with ESMTPS id 144si723464oii.2.2019.11.16.18.42.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Nov 2019 18:42:29 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) client-ip=134.134.136.126;
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 16 Nov 2019 18:42:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,314,1569308400"; 
   d="gz'50?scan'50,208,50";a="208502291"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by orsmga003.jf.intel.com with ESMTP; 16 Nov 2019 18:42:26 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1iWAW9-0006lr-Vc; Sun, 17 Nov 2019 10:42:25 +0800
Date: Sun, 17 Nov 2019 10:42:07 +0800
From: kbuild test robot <lkp@intel.com>
To: kbuild@lists.01.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: [nvdimm:libnvdimm-pending 25/26] include/linux/xarray.h:416:24:
 error: use of undeclared identifier '__GFP_BITS_SHIFT'
Message-ID: <201911171004.1aFLrP6x%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="4p2xxinlttgoyp2m"
Content-Disposition: inline
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted
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


--4p2xxinlttgoyp2m
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

CC: kbuild-all@lists.01.org
TO: Dan Williams <dan.j.williams@intel.com>

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/djbw/nvdimm.git libnvdimm-pending
head:   6b9c189f694ae9d13d3e03141f5c851c5ea90c13
commit: 6bd18b9d913a7a5f4287e41a6b112ab1e4a497fa [25/26] x86/numa: Provide a range-to-target_node lookup facility
config: powerpc-allnoconfig (attached as .config)
compiler: clang version 10.0.0 (git://gitmirror/llvm_project 2916489c54a303971bc546f287b71532d49ddd33)
reproduce:
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        git checkout 6bd18b9d913a7a5f4287e41a6b112ab1e4a497fa
        # save the attached .config to linux build tree
        make.cross ARCH=powerpc 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   In file included from kernel/bounds.c:10:
   In file included from include/linux/page-flags.h:10:
   In file included from include/linux/bug.h:5:
   In file included from arch/powerpc/include/asm/bug.h:120:
   In file included from include/asm-generic/bug.h:19:
   In file included from include/linux/kernel.h:12:
   In file included from include/linux/bitops.h:26:
   In file included from arch/powerpc/include/asm/bitops.h:243:
   In file included from include/asm-generic/bitops/le.h:6:
   In file included from arch/powerpc/include/uapi/asm/byteorder.h:12:
   include/linux/byteorder/little_endian.h:8:2: warning: inconsistent configuration, CONFIG_CPU_BIG_ENDIAN is set [-W#warnings]
   #warning inconsistent configuration, CONFIG_CPU_BIG_ENDIAN is set
    ^
   1 warning generated.
   In file included from arch/powerpc/kernel/asm-offsets.c:14:
   In file included from include/linux/compat.h:10:
   In file included from include/linux/time.h:6:
   In file included from include/linux/seqlock.h:36:
   In file included from include/linux/spinlock.h:51:
   In file included from include/linux/preempt.h:11:
   In file included from include/linux/list.h:9:
   In file included from include/linux/kernel.h:12:
   In file included from include/linux/bitops.h:26:
   In file included from arch/powerpc/include/asm/bitops.h:243:
   In file included from include/asm-generic/bitops/le.h:6:
   In file included from arch/powerpc/include/uapi/asm/byteorder.h:12:
   include/linux/byteorder/little_endian.h:8:2: warning: inconsistent configuration, CONFIG_CPU_BIG_ENDIAN is set [-W#warnings]
   #warning inconsistent configuration, CONFIG_CPU_BIG_ENDIAN is set
    ^
   In file included from arch/powerpc/kernel/asm-offsets.c:14:
   In file included from include/linux/compat.h:10:
   In file included from include/linux/time.h:6:
   In file included from include/linux/seqlock.h:36:
   In file included from include/linux/spinlock.h:51:
   In file included from include/linux/preempt.h:78:
   In file included from ./arch/powerpc/include/generated/asm/preempt.h:1:
   In file included from include/asm-generic/preempt.h:5:
   In file included from include/linux/thread_info.h:21:
   arch/powerpc/include/asm/current.h:33:43: error: unknown register name 'r2' in asm
   register struct task_struct *current asm ("r2");
                                             ^
   In file included from arch/powerpc/kernel/asm-offsets.c:14:
   In file included from include/linux/compat.h:10:
   In file included from include/linux/time.h:6:
   In file included from include/linux/seqlock.h:36:
   In file included from include/linux/spinlock.h:445:
   In file included from include/linux/atomic.h:7:
   arch/powerpc/include/asm/atomic.h:138:10: error: unknown register name 'xer' in asm
           : "cc", "xer");
                   ^
   arch/powerpc/include/asm/atomic.h:154:10: error: unknown register name 'xer' in asm
           : "cc", "xer");
                   ^
   arch/powerpc/include/asm/atomic.h:171:10: error: unknown register name 'xer' in asm
           : "cc", "xer");
                   ^
   arch/powerpc/include/asm/atomic.h:187:10: error: unknown register name 'xer' in asm
           : "cc", "xer");
                   ^
   arch/powerpc/include/asm/atomic.h:262:10: error: unknown register name 'xer' in asm
           : "cc", "xer", "memory");
                   ^
   In file included from arch/powerpc/kernel/asm-offsets.c:14:
   In file included from include/linux/compat.h:15:
   In file included from include/linux/socket.h:8:
   In file included from include/linux/uio.h:10:
   In file included from include/crypto/hash.h:11:
   In file included from include/linux/crypto.h:19:
   In file included from include/linux/slab.h:15:
   In file included from include/linux/gfp.h:6:
   In file included from include/linux/mmzone.h:14:
   In file included from include/linux/numa.h:4:
   In file included from arch/powerpc/include/asm/io.h:27:
   In file included from include/linux/device.h:16:
   In file included from include/linux/kobject.h:20:
   In file included from include/linux/sysfs.h:16:
   In file included from include/linux/kernfs.h:13:
   In file included from include/linux/idr.h:15:
   In file included from include/linux/radix-tree.h:18:
>> include/linux/xarray.h:416:24: error: use of undeclared identifier '__GFP_BITS_SHIFT'
           return xa->xa_flags & XA_FLAGS_MARK(mark);
                                 ^
   include/linux/xarray.h:269:53: note: expanded from macro 'XA_FLAGS_MARK'
   #define XA_FLAGS_MARK(mark)     ((__force gfp_t)((1U << __GFP_BITS_SHIFT) << \
                                                           ^
   In file included from arch/powerpc/kernel/asm-offsets.c:14:
   In file included from include/linux/compat.h:15:
   In file included from include/linux/socket.h:8:
   In file included from include/linux/uio.h:10:
   In file included from include/crypto/hash.h:11:
   In file included from include/linux/crypto.h:19:
   In file included from include/linux/slab.h:15:
   In file included from include/linux/gfp.h:6:
   In file included from include/linux/mmzone.h:14:
   In file included from include/linux/numa.h:4:
   In file included from arch/powerpc/include/asm/io.h:27:
   In file included from include/linux/device.h:16:
   In file included from include/linux/kobject.h:20:
   In file included from include/linux/sysfs.h:16:
   In file included from include/linux/kernfs.h:13:
>> include/linux/idr.h:137:32: error: use of undeclared identifier '__GFP_BITS_SHIFT'
           INIT_RADIX_TREE(&idr->idr_rt, IDR_RT_MARKER);
                                         ^
   include/linux/idr.h:33:13: note: expanded from macro 'IDR_RT_MARKER'
                                           (1 << (ROOT_TAG_SHIFT + IDR_FREE)))
                                                  ^
   include/linux/radix-tree.h:65:25: note: expanded from macro 'ROOT_TAG_SHIFT'
   #define ROOT_TAG_SHIFT  (__GFP_BITS_SHIFT)
                            ^
   In file included from arch/powerpc/kernel/asm-offsets.c:14:
   In file included from include/linux/compat.h:15:
   In file included from include/linux/socket.h:8:
   In file included from include/linux/uio.h:10:
   In file included from include/crypto/hash.h:11:
   In file included from include/linux/crypto.h:19:
   In file included from include/linux/slab.h:15:
   In file included from include/linux/gfp.h:6:
   In file included from include/linux/mmzone.h:14:
   In file included from include/linux/numa.h:4:
   In file included from arch/powerpc/include/asm/io.h:27:
   In file included from include/linux/device.h:16:
   In file included from include/linux/kobject.h:20:
   In file included from include/linux/sysfs.h:16:
   In file included from include/linux/kernfs.h:13:
   include/linux/idr.h:311:26: error: use of undeclared identifier '__GFP_BITS_SHIFT'
           xa_init_flags(&ida->xa, IDA_INIT_FLAGS);
                                   ^
   include/linux/idr.h:248:45: note: expanded from macro 'IDA_INIT_FLAGS'
   #define IDA_INIT_FLAGS  (XA_FLAGS_LOCK_IRQ | XA_FLAGS_ALLOC)
                                                ^
   include/linux/xarray.h:273:47: note: expanded from macro 'XA_FLAGS_ALLOC'
   #define XA_FLAGS_ALLOC  (XA_FLAGS_TRACK_FREE | XA_FLAGS_MARK(XA_FREE_MARK))
                                                  ^
   include/linux/xarray.h:269:53: note: expanded from macro 'XA_FLAGS_MARK'
   #define XA_FLAGS_MARK(mark)     ((__force gfp_t)((1U << __GFP_BITS_SHIFT) << \
                                                           ^
   In file included from arch/powerpc/kernel/asm-offsets.c:14:
   In file included from include/linux/compat.h:15:
   In file included from include/linux/socket.h:8:
   In file included from include/linux/uio.h:10:
   In file included from include/crypto/hash.h:11:
   In file included from include/linux/crypto.h:19:
   In file included from include/linux/slab.h:15:
   In file included from include/linux/gfp.h:6:
   In file included from include/linux/mmzone.h:14:
   In file included from include/linux/numa.h:4:
   In file included from arch/powerpc/include/asm/io.h:27:
   In file included from include/linux/device.h:25:
   In file included from include/linux/ratelimit.h:6:
   In file included from include/linux/sched.h:22:
   include/linux/nodemask.h:98:39: error: use of undeclared identifier 'MAX_NUMNODES'
   typedef struct { DECLARE_BITMAP(bits, MAX_NUMNODES); } nodemask_t;
                                         ^
   include/linux/nodemask.h:111:13: error: use of undeclared identifier 'MAX_NUMNODES'
           return m ? MAX_NUMNODES : 0;
                      ^
   include/linux/nodemask.h:265:20: error: use of undeclared identifier 'MAX_NUMNODES'
           return min_t(int, MAX_NUMNODES, find_first_bit(srcp->bits, MAX_NUMNODES));
                             ^
   include/linux/nodemask.h:265:20: error: use of undeclared identifier 'MAX_NUMNODES'
   include/linux/nodemask.h:265:61: error: use of undeclared identifier 'MAX_NUMNODES'
           return min_t(int, MAX_NUMNODES, find_first_bit(srcp->bits, MAX_NUMNODES));
                                                                      ^
   include/linux/nodemask.h:271:19: error: use of undeclared identifier 'MAX_NUMNODES'
           return min_t(int,MAX_NUMNODES,find_next_bit(srcp->bits, MAX_NUMNODES, n+1));
                            ^
   include/linux/nodemask.h:271:19: error: use of undeclared identifier 'MAX_NUMNODES'
   include/linux/nodemask.h:271:58: error: use of undeclared identifier 'MAX_NUMNODES'
           return min_t(int,MAX_NUMNODES,find_next_bit(srcp->bits, MAX_NUMNODES, n+1));
                                                                   ^
   include/linux/nodemask.h:283:2: error: use of undeclared identifier 'MAX_NUMNODES'
           nodes_clear(*mask);
           ^
   include/linux/nodemask.h:145:48: note: expanded from macro 'nodes_clear'
   #define nodes_clear(dst) __nodes_clear(&(dst), MAX_NUMNODES)
                                                  ^
   include/linux/nodemask.h:301:19: error: use of undeclared identifier 'MAX_NUMNODES'
           return min_t(int,MAX_NUMNODES,
                            ^
   fatal error: too many errors emitted, stopping now [-ferror-limit=]
   1 warning and 20 errors generated.
   make[2]: *** [arch/powerpc/kernel/asm-offsets.s] Error 1
   make[2]: Target '__build' not remade because of errors.
   make[1]: *** [prepare0] Error 2
   make[1]: Target 'prepare' not remade because of errors.
   make: *** [sub-make] Error 2
   9 real  4 user  4 sys  91.41% cpu 	make prepare

vim +/__GFP_BITS_SHIFT +416 include/linux/xarray.h

ad3d6c7263e368 Matthew Wilcox 2017-11-07  405  
9b89a035514468 Matthew Wilcox 2017-11-10  406  /**
9b89a035514468 Matthew Wilcox 2017-11-10  407   * xa_marked() - Inquire whether any entry in this array has a mark set
9b89a035514468 Matthew Wilcox 2017-11-10  408   * @xa: Array
9b89a035514468 Matthew Wilcox 2017-11-10  409   * @mark: Mark value
9b89a035514468 Matthew Wilcox 2017-11-10  410   *
9b89a035514468 Matthew Wilcox 2017-11-10  411   * Context: Any context.
9b89a035514468 Matthew Wilcox 2017-11-10  412   * Return: %true if any entry has this mark set.
9b89a035514468 Matthew Wilcox 2017-11-10  413   */
9b89a035514468 Matthew Wilcox 2017-11-10  414  static inline bool xa_marked(const struct xarray *xa, xa_mark_t mark)
9b89a035514468 Matthew Wilcox 2017-11-10  415  {
9b89a035514468 Matthew Wilcox 2017-11-10 @416  	return xa->xa_flags & XA_FLAGS_MARK(mark);
9b89a035514468 Matthew Wilcox 2017-11-10  417  }
9b89a035514468 Matthew Wilcox 2017-11-10  418  

:::::: The code at line 416 was first introduced by commit
:::::: 9b89a0355144685a787b0dc5bcf7bdd6f2d02968 xarray: Add XArray marks

:::::: TO: Matthew Wilcox <willy@infradead.org>
:::::: CC: Matthew Wilcox <willy@infradead.org>

---
0-DAY kernel test infrastructure                 Open Source Technology Center
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201911171004.1aFLrP6x%25lkp%40intel.com.

--4p2xxinlttgoyp2m
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
zC4IEMS+OAKH+RcwwAC3YFgAAA==

--4p2xxinlttgoyp2m--
