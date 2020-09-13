Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBVEP7H5AKGQEZE7ZV4Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x239.google.com (mail-oi1-x239.google.com [IPv6:2607:f8b0:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id D4753268037
	for <lists+clang-built-linux@lfdr.de>; Sun, 13 Sep 2020 18:24:53 +0200 (CEST)
Received: by mail-oi1-x239.google.com with SMTP id j20sf865511oig.15
        for <lists+clang-built-linux@lfdr.de>; Sun, 13 Sep 2020 09:24:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600014292; cv=pass;
        d=google.com; s=arc-20160816;
        b=wst1jb8IjDA5R/ptR1Bcm6H66AnNvBkEQL2Mmo+gqh2HulXQ9vr/5AZDkUlEHDhTmD
         4L/HjoeMiP94kNJJzXlFpPHWuTLWvCVaQOz5aw9c3cIE86+YtwLFZty7IShWgNwGQbFa
         4XWscokRDa4WLMLezjXwVChpontW3fMBXvRi62r6MSSSgaUpHjZg36S8xUY32n4sCc6d
         1usGiGqqgfrhD8jbB12VLwlJ4a28i5JHGjjMmWso88DiyJ0v4NpS7egzfjMn6ROYzpBN
         yRrAzWzGNr+k8d1u/yg4sKvIeQ7ElDmgEAHKNg7h2uxcN4ZGkSMsPTWMSsllmFY55nlU
         PQ2A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=/rzAoyso3eqJAE4Aw05f1+8m4od9ndxzT63kaCrsNeo=;
        b=DC6X6m4EFRVpBjgpZOyLAYUuBm4C/jv9Cg2O/mVWrq3YCRjfJt4YXfHbKBnRI4O9nC
         qZi4GrsQ3QE2pAavFCT42Z09+8/5AH0j3voIoEc3cP1R6dZnrkGg+5wTwqcAvyDSuCYX
         ZkAb7yQRLVK4HfGasU4P/I/LWJ0Rp3l/Nc50HphP+lJRz5rjldkHVjzMrprVpxATCBBU
         c2hvrTSTtw6WyCzIuLO8LUX3n729Xlc8anupPbdHoV+2o7UgCEMByAVXpEdF+GapP91U
         lJ4oKKlasBwK29gxA3nlRlFmEhwH9ZxCeu2eVA1+fMsP+J2E1jz94W6vle/RN0zR+ydt
         kzvA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/rzAoyso3eqJAE4Aw05f1+8m4od9ndxzT63kaCrsNeo=;
        b=BTMUF6JTPnDEdAmJH+QDJVfZORXWEXRoFHdpk1l2TFn9mZhfO+rAZXRI0E8vmJqpTs
         tCCdLYgyGNKqvJLU5XJasUkfDIWhYoHp/u3fb9P+snk7O6pd1bIeupdJS4EDaid2y5Eg
         PuuK02yf8zttkvOuTMYJOdWWE16A+ncBU429wgNQhBaqitoEVTB1/Zlqe2E4ieZMZVYV
         0He9JaXkjNA+M5QloVDzKVlRu9NxDjRLIugTpgzz8MWUZ1/xJI2dNbZvc0CETP2LlV4A
         DWicWIW9G5jMbEY+OcL3nlkMRkvJPisrbbQaIzzrmzKg41sNa1pnF6rsfg9JrYY/NeIr
         csqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=/rzAoyso3eqJAE4Aw05f1+8m4od9ndxzT63kaCrsNeo=;
        b=ssRe8tB7UC2fN19RvjC8d/yFYpIO9ZIRAjtYlgRwZvJ3ruwb44PVYmEjQN1K1Npq3E
         30OIlvEZtJGNS6BS9Z2G0TQkPbNXba+HsHu6nb3rvEVJNHoyqtegiQehDBa3j25ZJ2lT
         c2c+NU0uPHoFHd7W9nWU34vHeHv2nztmF4Um85tZaDBBn0BxSTj7ySKUYl6QjJYBO4JH
         zVy8KOq16k85AIl7Fkfyv+ZPRhAm5iO7QkukCPLWZsN4J0Fc4AKk0flk7A2l9Xasohja
         qA6Gx2/pOI0BZM+MXmXXgWP1jo4D4SdK8brl6TbDB8SSw+QP5QYjQkQZyxZ7f42h4yNY
         3eUQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530A77lEwBIrsaM5PFmXT2bvXHw+XbsjOpPUdajv0asC6HWobGUy
	Vx698hy9MCDiBQD5OXgTGaQ=
X-Google-Smtp-Source: ABdhPJwPcAsny35Dj7j3CDeHpsaW9JHfHs1DgvVquRa3omCMxkf3x/02hI23w0ZtD2yjmtmqt/6+Fw==
X-Received: by 2002:a9d:6aca:: with SMTP id m10mr6767823otq.125.1600014292252;
        Sun, 13 Sep 2020 09:24:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:2231:: with SMTP id o46ls1492711ota.11.gmail; Sun, 13
 Sep 2020 09:24:51 -0700 (PDT)
X-Received: by 2002:a9d:758a:: with SMTP id s10mr7321120otk.4.1600014291774;
        Sun, 13 Sep 2020 09:24:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600014291; cv=none;
        d=google.com; s=arc-20160816;
        b=hjUYmK3uoJG7KkXMAfvkFQCbTM7+NMYxmce1YvGnaziOIzxYJBWMhbO2mLCp7Jpt2x
         XVhqtzyHv/4D3HSC/kboQ2KwzhCnJw8iTYv+yGmBjQjgtl3+N9y0OgRgk1f2gmdqDN3n
         t2TMZWluFDm9GzudFQWOoabYr3iB9APVdbMFKcV8Gr9EDHkhZzkrH4dnaZihM2YVN72n
         b/d8dxKc27GhnPk5bqw0+R9valPz/t9BxaNE+Us9ollLn/ulcZ3AUXleK/OyReVpgZ/d
         cSD0R8g6DRNA72CAp82dXSrJp9yN6UQyVvq/cCfsr2CbixHGuzpwo6srcM1S9eaqTa+Z
         MymA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=ir5mM/0jG5AddR/4KQcxmRl2HvTfUCsT/7kr/kVPDVU=;
        b=b3Gnxj+jDdsz+50vX+s26kqHiSXfgF7eLA+B0INIPXuWDMWiGHq2NcSfZioRGfhvTH
         P+lYTI+ylzpVnwdbEoo/8XynzCwUktsNf+hHSVsstvu0gZJti3WW0DMtZHFS5uOd1WoC
         QcVuLmfZehU4LbL/gEz0j6xpHFw/VPCyC15gQ1XrpQboiXRyX2uICBMwsydkd8mfA8Lv
         JF9VMEYHGEcNOiiRwm02/InQ42cXvqGqv3TW9uVHJzLZVnX/8IF3CPq6NK+3E8hMudez
         cbnOKBlq3Xq7rW0BzdhoCZlXo2TS1Xhyg3jCsMJwzZ/jcdBD7RZECOzNcl3TVd/a6agS
         zMFQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga05.intel.com (mga05.intel.com. [192.55.52.43])
        by gmr-mx.google.com with ESMTPS id l19si558420oih.2.2020.09.13.09.24.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 13 Sep 2020 09:24:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) client-ip=192.55.52.43;
IronPort-SDR: sIp3IqvvPouJCX3MVxLp+Jb0HBCj8MMYVS4WQZdhJykmfayurrdb9NzLuOZ2iiKmljcyfX/sed
 ryoryNwfX/GA==
X-IronPort-AV: E=McAfee;i="6000,8403,9743"; a="243823092"
X-IronPort-AV: E=Sophos;i="5.76,422,1592895600"; 
   d="gz'50?scan'50,208,50";a="243823092"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Sep 2020 09:24:49 -0700
IronPort-SDR: m1D+Srz6wJxdvl1/kWUh0h5RuCE4N6r/d5GLY+e7p0JB88xubJU8hBg//vN9T6E1yf6dyu2lJZ
 j4rENyyaUz9w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,422,1592895600"; 
   d="gz'50?scan'50,208,50";a="450599821"
Received: from lkp-server01.sh.intel.com (HELO a75722977aa5) ([10.239.97.150])
  by orsmga004.jf.intel.com with ESMTP; 13 Sep 2020 09:24:33 -0700
Received: from kbuild by a75722977aa5 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kHUnn-0000r3-UX; Sun, 13 Sep 2020 16:24:31 +0000
Date: Mon, 14 Sep 2020 00:24:10 +0800
From: kernel test robot <lkp@intel.com>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Masahiro Yamada <masahiroy@kernel.org>
Subject: arch/mips/include/asm/atomic.h:49:1: warning: converting the result
 of '<<' to a boolean always evaluates to true
Message-ID: <202009140006.nUtCUCrG%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="fdj2RfSjLxBAspz7"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted
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


--fdj2RfSjLxBAspz7
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Nathan,

FYI, the error/warning still remains.

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   ef2e9a563b0cd7965e2a1263125dcbb1c86aa6cc
commit: afe956c577b2d5a3d9834e4424587c1ebcf90c4c kbuild: Enable -Wtautological-compare
date:   5 months ago
config: mips-randconfig-r014-20200913 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project d6fadc49e3d7eb0977bca3ff92bf156bd059fcd4)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install mips cross compiling tool for clang build
        # apt-get install binutils-mips-linux-gnu
        git checkout afe956c577b2d5a3d9834e4424587c1ebcf90c4c
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=mips 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   clang-12: warning: argument unused during compilation: '-mno-branch-likely' [-Wunused-command-line-argument]
   clang-12: warning: argument unused during compilation: '-mno-branch-likely' [-Wunused-command-line-argument]
   In file included from kernel/bounds.c:14:
   In file included from include/linux/spinlock_types.h:18:
   In file included from include/linux/lockdep.h:44:
   In file included from include/linux/debug_locks.h:6:
   In file included from include/linux/atomic.h:7:
>> arch/mips/include/asm/atomic.h:49:1: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
   ATOMIC_OPS(atomic, int)
   ^
   arch/mips/include/asm/atomic.h:40:9: note: expanded from macro 'ATOMIC_OPS'
           return cmpxchg(&v->counter, o, n);                              \
                  ^
   arch/mips/include/asm/cmpxchg.h:194:7: note: expanded from macro 'cmpxchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from kernel/bounds.c:14:
   In file included from include/linux/spinlock_types.h:18:
   In file included from include/linux/lockdep.h:44:
   In file included from include/linux/debug_locks.h:6:
   In file included from include/linux/atomic.h:7:
>> arch/mips/include/asm/atomic.h:49:1: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
   arch/mips/include/asm/atomic.h:40:9: note: expanded from macro 'ATOMIC_OPS'
           return cmpxchg(&v->counter, o, n);                              \
                  ^
   arch/mips/include/asm/cmpxchg.h:204:7: note: expanded from macro 'cmpxchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from kernel/bounds.c:14:
   In file included from include/linux/spinlock_types.h:18:
   In file included from include/linux/lockdep.h:44:
   In file included from include/linux/debug_locks.h:6:
   In file included from include/linux/atomic.h:7:
>> arch/mips/include/asm/atomic.h:49:1: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
   arch/mips/include/asm/atomic.h:45:9: note: expanded from macro 'ATOMIC_OPS'
           return xchg(&v->counter, n);                                    \
                  ^
   arch/mips/include/asm/cmpxchg.h:102:7: note: expanded from macro 'xchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from kernel/bounds.c:14:
   In file included from include/linux/spinlock_types.h:18:
   In file included from include/linux/lockdep.h:44:
   In file included from include/linux/debug_locks.h:6:
   In file included from include/linux/atomic.h:7:
   arch/mips/include/asm/atomic.h:53:1: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
   ATOMIC_OPS(atomic64, s64)
   ^
   arch/mips/include/asm/atomic.h:40:9: note: expanded from macro 'ATOMIC_OPS'
           return cmpxchg(&v->counter, o, n);                              \
                  ^
   arch/mips/include/asm/cmpxchg.h:194:7: note: expanded from macro 'cmpxchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from kernel/bounds.c:14:
   In file included from include/linux/spinlock_types.h:18:
   In file included from include/linux/lockdep.h:44:
   In file included from include/linux/debug_locks.h:6:
   In file included from include/linux/atomic.h:7:
   arch/mips/include/asm/atomic.h:53:1: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
   arch/mips/include/asm/atomic.h:40:9: note: expanded from macro 'ATOMIC_OPS'
           return cmpxchg(&v->counter, o, n);                              \
                  ^
   arch/mips/include/asm/cmpxchg.h:204:7: note: expanded from macro 'cmpxchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from kernel/bounds.c:14:
   In file included from include/linux/spinlock_types.h:18:
   In file included from include/linux/lockdep.h:44:
   In file included from include/linux/debug_locks.h:6:
   In file included from include/linux/atomic.h:7:
   arch/mips/include/asm/atomic.h:53:1: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
   arch/mips/include/asm/atomic.h:45:9: note: expanded from macro 'ATOMIC_OPS'
           return xchg(&v->counter, n);                                    \
                  ^
   arch/mips/include/asm/cmpxchg.h:102:7: note: expanded from macro 'xchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from kernel/bounds.c:14:
   In file included from include/linux/spinlock_types.h:18:
   In file included from include/linux/lockdep.h:44:
   In file included from include/linux/debug_locks.h:6:
   In file included from include/linux/atomic.h:7:
   arch/mips/include/asm/atomic.h:258:1: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
   ATOMIC_SIP_OP(atomic, int, subu, ll, sc)
   ^
   arch/mips/include/asm/atomic.h:252:7: note: expanded from macro 'ATOMIC_SIP_OP'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from kernel/bounds.c:14:
   In file included from include/linux/spinlock_types.h:18:
   In file included from include/linux/lockdep.h:44:
   In file included from include/linux/debug_locks.h:6:
   In file included from include/linux/atomic.h:7:
   arch/mips/include/asm/atomic.h:262:1: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
   ATOMIC_SIP_OP(atomic64, s64, dsubu, lld, scd)
   ^
   arch/mips/include/asm/atomic.h:252:7: note: expanded from macro 'ATOMIC_SIP_OP'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from kernel/bounds.c:14:
   In file included from include/linux/spinlock_types.h:18:
   In file included from include/linux/lockdep.h:44:
>> include/linux/debug_locks.h:17:9: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
           return xchg(&debug_locks, 0);
                  ^
   arch/mips/include/asm/cmpxchg.h:102:7: note: expanded from macro 'xchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   9 warnings generated.
   In file included from arch/mips/kernel/asm-offsets.c:12:
   In file included from include/linux/compat.h:10:
   In file included from include/linux/time.h:6:
   In file included from include/linux/seqlock.h:36:
   In file included from include/linux/spinlock.h:51:
   In file included from include/linux/preempt.h:78:
   In file included from ./arch/mips/include/generated/asm/preempt.h:1:
   In file included from include/asm-generic/preempt.h:5:
   In file included from include/linux/thread_info.h:38:
   In file included from arch/mips/include/asm/thread_info.h:16:
   In file included from arch/mips/include/asm/processor.h:14:
   In file included from include/linux/atomic.h:7:
>> arch/mips/include/asm/atomic.h:49:1: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
   ATOMIC_OPS(atomic, int)
   ^
   arch/mips/include/asm/atomic.h:40:9: note: expanded from macro 'ATOMIC_OPS'
           return cmpxchg(&v->counter, o, n);                              \
                  ^
   arch/mips/include/asm/cmpxchg.h:194:7: note: expanded from macro 'cmpxchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from arch/mips/kernel/asm-offsets.c:12:
   In file included from include/linux/compat.h:10:
   In file included from include/linux/time.h:6:
   In file included from include/linux/seqlock.h:36:
   In file included from include/linux/spinlock.h:51:
   In file included from include/linux/preempt.h:78:
   In file included from ./arch/mips/include/generated/asm/preempt.h:1:
   In file included from include/asm-generic/preempt.h:5:
   In file included from include/linux/thread_info.h:38:
   In file included from arch/mips/include/asm/thread_info.h:16:
   In file included from arch/mips/include/asm/processor.h:14:
   In file included from include/linux/atomic.h:7:
>> arch/mips/include/asm/atomic.h:49:1: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
   arch/mips/include/asm/atomic.h:40:9: note: expanded from macro 'ATOMIC_OPS'
           return cmpxchg(&v->counter, o, n);                              \
                  ^
   arch/mips/include/asm/cmpxchg.h:204:7: note: expanded from macro 'cmpxchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from arch/mips/kernel/asm-offsets.c:12:
   In file included from include/linux/compat.h:10:
   In file included from include/linux/time.h:6:
   In file included from include/linux/seqlock.h:36:
   In file included from include/linux/spinlock.h:51:
   In file included from include/linux/preempt.h:78:
   In file included from ./arch/mips/include/generated/asm/preempt.h:1:
   In file included from include/asm-generic/preempt.h:5:
   In file included from include/linux/thread_info.h:38:
   In file included from arch/mips/include/asm/thread_info.h:16:
   In file included from arch/mips/include/asm/processor.h:14:
   In file included from include/linux/atomic.h:7:
>> arch/mips/include/asm/atomic.h:49:1: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
   arch/mips/include/asm/atomic.h:45:9: note: expanded from macro 'ATOMIC_OPS'
           return xchg(&v->counter, n);                                    \
                  ^
   arch/mips/include/asm/cmpxchg.h:102:7: note: expanded from macro 'xchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from arch/mips/kernel/asm-offsets.c:12:
   In file included from include/linux/compat.h:10:
   In file included from include/linux/time.h:6:
   In file included from include/linux/seqlock.h:36:
   In file included from include/linux/spinlock.h:51:
   In file included from include/linux/preempt.h:78:
   In file included from ./arch/mips/include/generated/asm/preempt.h:1:
   In file included from include/asm-generic/preempt.h:5:
   In file included from include/linux/thread_info.h:38:
   In file included from arch/mips/include/asm/thread_info.h:16:
   In file included from arch/mips/include/asm/processor.h:14:
   In file included from include/linux/atomic.h:7:
   arch/mips/include/asm/atomic.h:53:1: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
   ATOMIC_OPS(atomic64, s64)
   ^
   arch/mips/include/asm/atomic.h:40:9: note: expanded from macro 'ATOMIC_OPS'
           return cmpxchg(&v->counter, o, n);                              \
                  ^
   arch/mips/include/asm/cmpxchg.h:194:7: note: expanded from macro 'cmpxchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from arch/mips/kernel/asm-offsets.c:12:
   In file included from include/linux/compat.h:10:
   In file included from include/linux/time.h:6:
   In file included from include/linux/seqlock.h:36:
   In file included from include/linux/spinlock.h:51:
   In file included from include/linux/preempt.h:78:
   In file included from ./arch/mips/include/generated/asm/preempt.h:1:
   In file included from include/asm-generic/preempt.h:5:
   In file included from include/linux/thread_info.h:38:
   In file included from arch/mips/include/asm/thread_info.h:16:
   In file included from arch/mips/include/asm/processor.h:14:
   In file included from include/linux/atomic.h:7:
   arch/mips/include/asm/atomic.h:53:1: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
   arch/mips/include/asm/atomic.h:40:9: note: expanded from macro 'ATOMIC_OPS'
           return cmpxchg(&v->counter, o, n);                              \
                  ^
   arch/mips/include/asm/cmpxchg.h:204:7: note: expanded from macro 'cmpxchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from arch/mips/kernel/asm-offsets.c:12:
   In file included from include/linux/compat.h:10:
   In file included from include/linux/time.h:6:
   In file included from include/linux/seqlock.h:36:
   In file included from include/linux/spinlock.h:51:
   In file included from include/linux/preempt.h:78:
   In file included from ./arch/mips/include/generated/asm/preempt.h:1:
   In file included from include/asm-generic/preempt.h:5:
   In file included from include/linux/thread_info.h:38:
   In file included from arch/mips/include/asm/thread_info.h:16:
   In file included from arch/mips/include/asm/processor.h:14:
   In file included from include/linux/atomic.h:7:
   arch/mips/include/asm/atomic.h:53:1: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
   arch/mips/include/asm/atomic.h:45:9: note: expanded from macro 'ATOMIC_OPS'
           return xchg(&v->counter, n);                                    \
                  ^
   arch/mips/include/asm/cmpxchg.h:102:7: note: expanded from macro 'xchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from arch/mips/kernel/asm-offsets.c:12:
   In file included from include/linux/compat.h:10:
   In file included from include/linux/time.h:6:
   In file included from include/linux/seqlock.h:36:
   In file included from include/linux/spinlock.h:51:
   In file included from include/linux/preempt.h:78:
   In file included from ./arch/mips/include/generated/asm/preempt.h:1:
   In file included from include/asm-generic/preempt.h:5:
   In file included from include/linux/thread_info.h:38:
   In file included from arch/mips/include/asm/thread_info.h:16:
   In file included from arch/mips/include/asm/processor.h:14:
   In file included from include/linux/atomic.h:7:
   arch/mips/include/asm/atomic.h:258:1: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
   ATOMIC_SIP_OP(atomic, int, subu, ll, sc)
   ^
   arch/mips/include/asm/atomic.h:252:7: note: expanded from macro 'ATOMIC_SIP_OP'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from arch/mips/kernel/asm-offsets.c:12:
   In file included from include/linux/compat.h:10:
   In file included from include/linux/time.h:6:
   In file included from include/linux/seqlock.h:36:
   In file included from include/linux/spinlock.h:51:
   In file included from include/linux/preempt.h:78:
   In file included from ./arch/mips/include/generated/asm/preempt.h:1:
   In file included from include/asm-generic/preempt.h:5:
   In file included from include/linux/thread_info.h:38:
   In file included from arch/mips/include/asm/thread_info.h:16:
   In file included from arch/mips/include/asm/processor.h:14:
   In file included from include/linux/atomic.h:7:
   arch/mips/include/asm/atomic.h:262:1: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
   ATOMIC_SIP_OP(atomic64, s64, dsubu, lld, scd)
   ^
   arch/mips/include/asm/atomic.h:252:7: note: expanded from macro 'ATOMIC_SIP_OP'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from arch/mips/kernel/asm-offsets.c:12:
   In file included from include/linux/compat.h:10:
   In file included from include/linux/time.h:6:
   In file included from include/linux/seqlock.h:36:
   In file included from include/linux/spinlock.h:83:
   In file included from include/linux/spinlock_types.h:18:
   In file included from include/linux/lockdep.h:44:
>> include/linux/debug_locks.h:17:9: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
           return xchg(&debug_locks, 0);
                  ^
   arch/mips/include/asm/cmpxchg.h:102:7: note: expanded from macro 'xchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from arch/mips/kernel/asm-offsets.c:12:
   In file included from include/linux/compat.h:10:
   In file included from include/linux/time.h:74:
   In file included from include/linux/time32.h:13:
   In file included from include/linux/timex.h:65:
   In file included from arch/mips/include/asm/timex.h:19:
   In file included from arch/mips/include/asm/cpu-type.h:12:
   In file included from include/linux/smp.h:15:
>> include/linux/llist.h:222:9: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
           return xchg(&head->first, NULL);
                  ^
   arch/mips/include/asm/cmpxchg.h:102:7: note: expanded from macro 'xchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from arch/mips/kernel/asm-offsets.c:12:
   In file included from include/linux/compat.h:15:
   In file included from include/linux/socket.h:8:
   In file included from include/linux/uio.h:10:
   In file included from include/crypto/hash.h:11:
   In file included from include/linux/crypto.h:19:
   In file included from include/linux/slab.h:15:
   In file included from include/linux/gfp.h:9:
   include/linux/topology.h:119:9: error: implicit declaration of function 'cpu_logical_map' [-Werror,-Wimplicit-function-declaration]
           return cpu_to_node(raw_smp_processor_id());
                  ^
   arch/mips/include/asm/mach-loongson64/topology.h:7:27: note: expanded from macro 'cpu_to_node'
   #define cpu_to_node(cpu)        (cpu_logical_map(cpu) >> 2)
                                    ^
   In file included from arch/mips/kernel/asm-offsets.c:12:
   In file included from include/linux/compat.h:15:
   In file included from include/linux/socket.h:8:
   In file included from include/linux/uio.h:10:
   In file included from include/crypto/hash.h:11:
   In file included from include/linux/crypto.h:19:
   In file included from include/linux/slab.h:15:
   In file included from include/linux/gfp.h:9:
   include/linux/topology.h:176:9: error: implicit declaration of function 'cpu_logical_map' [-Werror,-Wimplicit-function-declaration]
           return cpu_to_node(cpu);
                  ^
   arch/mips/include/asm/mach-loongson64/topology.h:7:27: note: expanded from macro 'cpu_to_node'
   #define cpu_to_node(cpu)        (cpu_logical_map(cpu) >> 2)
                                    ^
   In file included from arch/mips/kernel/asm-offsets.c:12:
   In file included from include/linux/compat.h:15:
   In file included from include/linux/socket.h:8:
   In file included from include/linux/uio.h:10:
   In file included from include/crypto/hash.h:11:
   In file included from include/linux/crypto.h:19:
   In file included from include/linux/slab.h:15:
   In file included from include/linux/gfp.h:9:
   include/linux/topology.h:210:25: error: implicit declaration of function 'cpu_logical_map' [-Werror,-Wimplicit-function-declaration]
           return cpumask_of_node(cpu_to_node(cpu));
                                  ^
   arch/mips/include/asm/mach-loongson64/topology.h:7:27: note: expanded from macro 'cpu_to_node'
   #define cpu_to_node(cpu)        (cpu_logical_map(cpu) >> 2)
                                    ^
   In file included from arch/mips/kernel/asm-offsets.c:15:
   In file included from include/linux/mm.h:95:
>> arch/mips/include/asm/pgtable.h:210:3: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
                   cmpxchg64(&buddy->pte, 0, _PAGE_GLOBAL);
                   ^
   arch/mips/include/asm/cmpxchg.h:220:2: note: expanded from macro 'cmpxchg64'
           cmpxchg((ptr), (o), (n));                                       \
           ^
   arch/mips/include/asm/cmpxchg.h:194:7: note: expanded from macro 'cmpxchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from arch/mips/kernel/asm-offsets.c:15:
   In file included from include/linux/mm.h:95:
>> arch/mips/include/asm/pgtable.h:210:3: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
   arch/mips/include/asm/cmpxchg.h:220:2: note: expanded from macro 'cmpxchg64'
           cmpxchg((ptr), (o), (n));                                       \
           ^
   arch/mips/include/asm/cmpxchg.h:204:7: note: expanded from macro 'cmpxchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from arch/mips/kernel/asm-offsets.c:24:
>> include/linux/kvm_host.h:332:9: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
           return cmpxchg(&vcpu->mode, IN_GUEST_MODE, EXITING_GUEST_MODE);
                  ^
   arch/mips/include/asm/cmpxchg.h:194:7: note: expanded from macro 'cmpxchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from arch/mips/kernel/asm-offsets.c:24:
>> include/linux/kvm_host.h:332:9: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
   arch/mips/include/asm/cmpxchg.h:204:7: note: expanded from macro 'cmpxchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   arch/mips/kernel/asm-offsets.c:26:6: warning: no previous prototype for function 'output_ptreg_defines' [-Wmissing-prototypes]
   void output_ptreg_defines(void)
        ^
   arch/mips/kernel/asm-offsets.c:26:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void output_ptreg_defines(void)
   ^
   static 
   arch/mips/kernel/asm-offsets.c:78:6: warning: no previous prototype for function 'output_task_defines' [-Wmissing-prototypes]
   void output_task_defines(void)
        ^
   arch/mips/kernel/asm-offsets.c:78:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void output_task_defines(void)
   ^
   static 
   arch/mips/kernel/asm-offsets.c:93:6: warning: no previous prototype for function 'output_thread_info_defines' [-Wmissing-prototypes]
   void output_thread_info_defines(void)
        ^
   arch/mips/kernel/asm-offsets.c:93:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void output_thread_info_defines(void)
   ^
   static 
   arch/mips/kernel/asm-offsets.c:110:6: warning: no previous prototype for function 'output_thread_defines' [-Wmissing-prototypes]
   void output_thread_defines(void)
        ^
   arch/mips/kernel/asm-offsets.c:110:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void output_thread_defines(void)
   ^
   static 
   arch/mips/kernel/asm-offsets.c:138:6: warning: no previous prototype for function 'output_thread_fpu_defines' [-Wmissing-prototypes]
   void output_thread_fpu_defines(void)
        ^
   arch/mips/kernel/asm-offsets.c:138:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void output_thread_fpu_defines(void)
   ^
   static 
   arch/mips/kernel/asm-offsets.c:181:6: warning: no previous prototype for function 'output_mm_defines' [-Wmissing-prototypes]
   void output_mm_defines(void)
        ^
   arch/mips/kernel/asm-offsets.c:181:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void output_mm_defines(void)
   ^
   static 
   arch/mips/kernel/asm-offsets.c:242:6: warning: no previous prototype for function 'output_sc_defines' [-Wmissing-prototypes]
   void output_sc_defines(void)
        ^
   arch/mips/kernel/asm-offsets.c:242:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void output_sc_defines(void)
   ^
   static 
   arch/mips/kernel/asm-offsets.c:255:6: warning: no previous prototype for function 'output_signal_defined' [-Wmissing-prototypes]
   void output_signal_defined(void)
        ^
   arch/mips/kernel/asm-offsets.c:255:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void output_signal_defined(void)
   ^
   static 
   arch/mips/kernel/asm-offsets.c:334:6: warning: no previous prototype for function 'output_pm_defines' [-Wmissing-prototypes]
   void output_pm_defines(void)
        ^
   arch/mips/kernel/asm-offsets.c:334:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void output_pm_defines(void)
   ^
   static 
   arch/mips/kernel/asm-offsets.c:348:6: warning: no previous prototype for function 'output_kvm_defines' [-Wmissing-prototypes]
   void output_kvm_defines(void)
        ^
   arch/mips/kernel/asm-offsets.c:348:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void output_kvm_defines(void)
   ^
   static 
   24 warnings and 3 errors generated.
   make[2]: *** [scripts/Makefile.build:101: arch/mips/kernel/asm-offsets.s] Error 1
   make[2]: Target 'missing-syscalls' not remade because of errors.
   make[1]: *** [arch/mips/Makefile:414: archprepare] Error 2
   make[1]: Target 'prepare' not remade because of errors.
   make: *** [Makefile:180: sub-make] Error 2
   make: Target 'prepare' not remade because of errors.

# https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=afe956c577b2d5a3d9834e4424587c1ebcf90c4c
git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
git fetch --no-tags linus master
git checkout afe956c577b2d5a3d9834e4424587c1ebcf90c4c
vim +49 arch/mips/include/asm/atomic.h

^1da177e4c3f41 include/asm-mips/atomic.h      Linus Torvalds 2005-04-16  47  
1da7bce8591d58 arch/mips/include/asm/atomic.h Paul Burton    2019-10-01  48  #define ATOMIC_INIT(i)		{ (i) }
1da7bce8591d58 arch/mips/include/asm/atomic.h Paul Burton    2019-10-01 @49  ATOMIC_OPS(atomic, int)
^1da177e4c3f41 include/asm-mips/atomic.h      Linus Torvalds 2005-04-16  50  

:::::: The code at line 49 was first introduced by commit
:::::: 1da7bce8591d58bf2a442b0324659af7390401c2 MIPS: atomic: Deduplicate 32b & 64b read, set, xchg, cmpxchg

:::::: TO: Paul Burton <paul.burton@mips.com>
:::::: CC: Paul Burton <paul.burton@mips.com>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202009140006.nUtCUCrG%25lkp%40intel.com.

--fdj2RfSjLxBAspz7
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--fdj2RfSjLxBAspz7--
