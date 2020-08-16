Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBXNZ434QKGQE5I2VSNY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83a.google.com (mail-qt1-x83a.google.com [IPv6:2607:f8b0:4864:20::83a])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E696245989
	for <lists+clang-built-linux@lfdr.de>; Sun, 16 Aug 2020 22:53:51 +0200 (CEST)
Received: by mail-qt1-x83a.google.com with SMTP id s29sf10750726qtc.12
        for <lists+clang-built-linux@lfdr.de>; Sun, 16 Aug 2020 13:53:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597611230; cv=pass;
        d=google.com; s=arc-20160816;
        b=UIGCVqDG7urWbmLj2B0wudBpNOACdWFcMSgAIMgJnQHS11V5svwMDEtZ2YPUzMNmR2
         2OQ4pOMHWwDUgHDyxqqQ6hCwEtuCxhuqQPtUVh9ZXrmK7Z+t+Gnsgn7MjyOI6KiHR8QJ
         tNqYEyGs0VhWRvc0DkzXTR+e5r2lyNIv+t2V2cv7pKnHixT/xrOf4FG4Iz7b3P0TlrdA
         oGOgZOgI093fl7vWmCoevbrHs1lMh9gPMoJt3AbkxVp9jTiXAPR7H2sXrSZNBajBTA0F
         gOcUQExn9QZUDonrFR2VhErMY/5CDdMMnUp0mOaBuOrxzjOL5wEnkewP1w0chmZNXpnQ
         OL7w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=BoclVUXOmawQ0W4MAUlGVkM3D8WdiE+nEh6JGYLWOUY=;
        b=gxf+KTYn6h2pfwJ6mPb4AeWHuyC1tjzxGZZiELc+lUHqCHKviShaotvvhst8GvL+2L
         sqdlWJkxpVJA+bBUuQCYQCkxNBP4O+K9oAfmNlyuomgvLfrgcqdnpPYrjy5+z6s7Ctlh
         hRujyrJQy5Ni02pTTwWPAoImNKqfmZQBBB76I754WBNrs8yagRYdRoTEYAkbp0UuGCwu
         5fC9noFW3Gph6HBW56gbpgy+wUQanUM+s4SXCMz3f5gYS63WIv/gzAVVa3j0oOaENdlX
         uQKIvUF/cI9GFw5KmZnSokhHNuP3ZJepX3X9begUDgEfrwCj/y0CEL9VMaB/ayH9MVak
         5ywQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=BoclVUXOmawQ0W4MAUlGVkM3D8WdiE+nEh6JGYLWOUY=;
        b=WwnWB3hxJBwgHk27ehiuRpIDzhUkgWkAjygCHHxKmHTotKM7M9mUbxMYWjiXuXG2F5
         vlxtNu1Y/QsP5+0uYO2u+7CW+L1jIT3G3hwkuw93ntGDYt0hYKyXDNb7IJycKJebZqlk
         Zgj0FCHK6jIwD1tmQ1LXUGWsUfGsLJp4pA7GKz3C82oYYFJJCc10mnZQO5X5FQ/Tu48r
         MCxUIun/EajaqmpbiIFIKafxZj9Za8cgLPZX2zJ+iG1hyEypW7VGH6V03IQXzE0I6p+h
         qv+rjO+WGhf31N6dLzT6rqJluUd1gVdC7pYdE9W/cb4wGH5VyOG2ZuOdDICPvITuXH14
         7ShQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=BoclVUXOmawQ0W4MAUlGVkM3D8WdiE+nEh6JGYLWOUY=;
        b=tmgwuTEWQa0jqlDYlA3pdTdiGZnwCamqY8A4J2mhneynhsTEvaL5FVrB5ykZwP1hDA
         ZuUbdMJo5gcriDJpIyeKHCfJBl8kvHD7g+wWN9Fqz7Ygbk9nfuMFqSRFeokfeX9YuJBA
         xIqD2LuP/mtONb863RC3MkfE74cn7q1UgpIPpBgyzGYeI3hjJgDT9KUG3rZy/UYdYE1P
         gfbHvnuIfvcbTN+TQsOuolW12GvD5vTSboz5rJWTKJMrRp9a31nG49IOJFSiQppm99s6
         psuYBoFJ8kOv6JA26ZxRWkQPTl+u9F8vMCXKeZuO7pMn8gWVR/jPDd2vF+r5J0ZIQj7c
         MhpA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533I9hNZq59eTe5cRJfrfaGYNsPj4n8V8i0XsPM2iRhEHs7KGUk8
	/2hGsyvXBl2ZO3Kjkgu/3Vw=
X-Google-Smtp-Source: ABdhPJy1bNwtFVjTUk6Qpaxso160yT9ZPs3gYF9PjLE7e+4gvs3lhtNk5/eoCl+cwxWv+Izi6ujs5Q==
X-Received: by 2002:ac8:faf:: with SMTP id b44mr10819119qtk.190.1597611229919;
        Sun, 16 Aug 2020 13:53:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:4c12:: with SMTP id bz18ls3647175qvb.0.gmail; Sun, 16
 Aug 2020 13:53:49 -0700 (PDT)
X-Received: by 2002:a0c:f4d0:: with SMTP id o16mr11558042qvm.225.1597611229507;
        Sun, 16 Aug 2020 13:53:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597611229; cv=none;
        d=google.com; s=arc-20160816;
        b=AI5IpZPm6YOUV1utRBjwBiOGyKBJc3dA1dsMWd0pI64KFKcfhjXYGenHeENP/l+4hv
         wfs/Im5FB4pNGY1NkKxOzq22Pp6Q1SqoeFwcBpMnvz4iW4zBSBMIJcUzKi2QgWTjAnAX
         HyJkrN2q5C8l1r8pbdOLPnD8o3EhQ5kLy8KcW6pHfJaK6DD4e8Q1HvH+MfFYPI/ZayQx
         8rULDIXNw9xeRrijAVArW5m4KgMBf7MvkurrmRQaKglrV2PSkc3TGKrksIB9JwMuE36f
         33AacQy3aCOGxAmTslaUr7nDFtxO6349hsukGmJpB4ggj41Wb6pIeKTfPDxw/Z7pb4Cz
         lJhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=JKbNU1Os3giVqF17k0H+8AnRQtDYRCSrdIZJUE/Rb1U=;
        b=TqJBke/Npjd0q2t7SAcsZq0JQX4Hu7beeExqRmi8gL2Hcok51Vl7XJzy2kg+4GBX94
         88uI7pnRM+Jl6gzAeQ3MIpIw7CZV51f7MrWDezs2UbPhONXWAyG/76gWNmAPagURVeAg
         DojvWpL2aXK7VmYBRqQMpbQBTSsCtBoQRFUUoBE1d+DPQN9fL56fIdpUZnmUkKw6QJzB
         QwN1FhOGz6e+cM26D+FouBd5f4KdHExn/vs1jApKtDZ8MILjUR2WAkaO5jq8gcyfTRQt
         8mu2dYlzGaAFk+mSvR6KVPz3lP+QtMF0RnrFfI7u9SQM9naAGRLoFMTdkyllP8x0E66B
         Axnw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga01.intel.com (mga01.intel.com. [192.55.52.88])
        by gmr-mx.google.com with ESMTPS id m13si870884qtn.0.2020.08.16.13.53.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 16 Aug 2020 13:53:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) client-ip=192.55.52.88;
IronPort-SDR: cHqSg3wg3f8FiGTFUD+eFBpr13ulNigEgWA1T2ifVEjuzsnsB5c/89jen3Rx0jG5m0eEakkQLh
 wDREpXZ+f4UA==
X-IronPort-AV: E=McAfee;i="6000,8403,9715"; a="172660031"
X-IronPort-AV: E=Sophos;i="5.76,321,1592895600"; 
   d="gz'50?scan'50,208,50";a="172660031"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Aug 2020 13:53:46 -0700
IronPort-SDR: svJYXKaM4WS8wXD/mMa2uCb4QURLrSE72jUvZaG1XWGiSS1QJBLQOqKBjAF9NTwvTtPXhmuhmZ
 GEull0a0w6RA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,321,1592895600"; 
   d="gz'50?scan'50,208,50";a="309896518"
Received: from lkp-server02.sh.intel.com (HELO 2f0d8b563e65) ([10.239.97.151])
  by orsmga002.jf.intel.com with ESMTP; 16 Aug 2020 13:53:41 -0700
Received: from kbuild by 2f0d8b563e65 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1k7Peu-0000E9-KX; Sun, 16 Aug 2020 20:53:40 +0000
Date: Mon, 17 Aug 2020 04:53:01 +0800
From: kernel test robot <lkp@intel.com>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Masahiro Yamada <masahiroy@kernel.org>
Subject: arch/mips/include/asm/atomic.h:49:1: warning: converting the result
 of '<<' to a boolean always evaluates to true
Message-ID: <202008170454.3uMigV0w%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="C7zPtVaVf+AK4Oqc"
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


--C7zPtVaVf+AK4Oqc
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Nathan,

FYI, the error/warning still remains.

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   2cc3c4b3c2e9c99e90aaf19cd801ff2c160f283c
commit: afe956c577b2d5a3d9834e4424587c1ebcf90c4c kbuild: Enable -Wtautological-compare
date:   4 months ago
config: mips-randconfig-r001-20200817 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project ab9fc8bae805c785066779e76e7846aabad5609e)
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
   arch/mips/kernel/asm-offsets.c:322:6: warning: no previous prototype for function 'output_pbe_defines' [-Wmissing-prototypes]
   void output_pbe_defines(void)
        ^
   arch/mips/kernel/asm-offsets.c:322:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void output_pbe_defines(void)
   ^
   static 
   22 warnings and 3 errors generated.
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202008170454.3uMigV0w%25lkp%40intel.com.

--C7zPtVaVf+AK4Oqc
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
DyvjnZckqVD/fTNu+vrJVBTYCEg8lpG6NqvtkqcR5jY9j5rN9nZtmNx1+m7Jmg2R2jSraTKP
ZbvdHatENBNakgSLxcrU3J2ODqOxvw0WzsLXacqYTSa2kRAn/dLBgJUln34+vt3wb2/vr3/8
rnBp374+voIG9Y42Mazy5gUR+L7A5//8A/9rjrVESwa5gfw/yp0u94yLpbs30EzeTQb9NCM0
t1TZZLvm395Bk8phtf355vXpRT3iNLnuPZdVazmYQILxQ13E170i2MdvXSnYsPcmxeWehG9g
R1vlwA8lyhjiiDNqoxy+JFubO0b7qIjaiJtts/bxkRPjqWNjLekf2q788vT4hhiMoLZ//1XN
pjKVfnz+8oR//uP17V2ZWb4+vfz4+Pztt+8337/doEijxHDjtIC0tknhcM5Lpy68Se1MSUYi
HObmpQUmDTA5k5MUqSKSlFkNSQfLkKxT2mvsQ+1UTYzSnww6ZHU7iGDovLRA1zEdH4XQkZV6
TcKwobkKiu2XzMe///Ffvz3/dAdy4v0xCIudYjqlQDZ1JZOmw9zCejKqJNwdjLzW4tK/ccFh
ULlGriPGqkzTCT6ow+LtCNqBN+bdu9OPSSAn0qKEbUBCJggZD9bNkiDk8e2KysHyeLMi0mXN
0ywhCMdKLjebafonhZBXEFPFOVEMl9vgNiTTw2BJrkikUNftg5gptrerYE20IGbhAsarLbPJ
gxsWvUguVwVicb6QMEIDnfPcgocYCBnbLRJq2GSdg4g0TT/zaBuypmmoBku23bDFYup0Wr5/
fXr1LXYtvn9/f/rPm9+/w3YGGyWww673+PL2Hfbwf/7x/Apb4I+nX58fX3pogL9/h/LRIvf7
k40V37dlpa53Bb0WV3T7Y8nC8JbCuBtWmdysNwsigPw+3qypdXzKYUzIBaW+o34vUFA8ndF0
sg2oOHfYtsdC6ojjHilNjHrksn/Z4BAqxdnxVLVdfQqb7eYvIBT84283748/nv52w+IPIP/8
dTq4wn7R5VjrVNqpechEXyoMuT2evT2ZtDSqTg0qhNNZhqbqqLBvXRUlKw8HOkhTkRUcVNSB
XI4DJXvx6c2ZG7Rk9bNhV5QyTaClKOTg6u8Jk1U8vtk4nWyVnvE9/DOpV2ehDtiBrCGgbFcP
TawrqtG9sd8ZiT/Z43pRuHzWca8oTviQRVNXyj0ql90W1hz2S83mH0JkWs0x7YsmvMKzT8Ir
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
nUaB9QEA

--C7zPtVaVf+AK4Oqc--
