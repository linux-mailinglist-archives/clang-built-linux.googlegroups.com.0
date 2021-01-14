Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBAHLQGAAMGQEILVDD6Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3c.google.com (mail-vs1-xe3c.google.com [IPv6:2607:f8b0:4864:20::e3c])
	by mail.lfdr.de (Postfix) with ESMTPS id EB51A2F6631
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 17:46:57 +0100 (CET)
Received: by mail-vs1-xe3c.google.com with SMTP id d1sf972253vsp.20
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 08:46:57 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610642817; cv=pass;
        d=google.com; s=arc-20160816;
        b=VlJIDc0N1SfQULgjF3hmwZ1pUJr3BUJzc6Hu/5Jw8GF6lwaWauMQoZ0qu2MmoqbGS8
         82rE/w9o59qzBDUBsrY9+NK+z6F6GqvaMA5oA+AWp8S6+a0JV5i1jtKHPuEHgAvfO2Ll
         VPj+7A7s30IFu00uB2n85WEDOQHtOAvYTZvpX752Gk+3MVCbCFk9sMhBrMaSeRD9A/V/
         bylpmFdJOZRt59lGYR3acPhAD6QX6Ou/E9zz89NsAdxetXVmip7d2lzc71zZkwu53GAz
         4hiit900ZYYZD/YaesVaeEHEm2bQ6O2ZMPMv8rrELzGvwQ1NdQsaWQWZQOZY2WFqffTK
         rfFQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=NCZwpOf9zVkpg/5urNiTY+2HBb5Q5M/+/PjOUZZsz9k=;
        b=cHInGJDpzkOHU6F1g/ufGty5Xm9oylkITPz/V1BZwsB9N7uped1xx+9EPKX+bMLz0O
         GYOU5dSKIpikgAF4LTSv054PbfU7SM2pJ5B7ivjsk66kv5FZghzoO2Y8/1Rtt0jmvtF5
         smMp/M9qNasnno+TFesGVGeqsAlzDfLWxQ/ieNMvYLXu5YnssrIa7OLczNRNZln1NzbU
         77GJM4zidyS37s7e4YMgi9sW5UMWVgIi8Nv4CL7InoDvjWdpVmSAQLN0OLDtLp7YH6Uk
         /ZkXgWVkDEr9D4DOxO3ecLKMljrWGOKEJOkcm2SKGXI3BLSleVF3iBnY1L40tXjTqD4p
         TjVQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=NCZwpOf9zVkpg/5urNiTY+2HBb5Q5M/+/PjOUZZsz9k=;
        b=MAnC1gZ+oc2iZ42XjoH4iEovQiYJaFmAuYC9ybyNo4AmTu4RJmWICkYMA0LsDsdbH2
         g6VxhbLTI7YIvbgkYy9eu5RooXdaaZVFnCbST8l2MBNTyLRNxeDFNX3DAmlkonPeCuSq
         Fva8KFmLqjTTDox858zFdbuaRSFS0RaaqkEmvpax2XS1eq9roD9yBIrRYUK5q1NOW+2R
         pY0MYUX8gjLZgazt4iPhaPQsVGNj9/MynnwbWtPExXz+FHvAd6J+gykPn1BXa7AVLEVu
         Z2Nt1118IbaLwU0zidzOQQKrY9h3IVSSZhfnTOicoDkfS1ErU6Xyxhqc+7XZ3H1V8z/D
         UUNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=NCZwpOf9zVkpg/5urNiTY+2HBb5Q5M/+/PjOUZZsz9k=;
        b=ZQo7e3NAFN743tUKYN3Pz9Hzccy3jTOpjN5FyA4pSugzGXSQt0nVKys3nRZzEo+E9V
         jnw6fODSOpJBZ8Xb8ffCT+ZpW9BuBegaDtC8U9AlM9gt01HRKOKgz1Gi2bfS6HTyGLKR
         k0IemhWuqz6ctYMVbDKnfVRaPLl8c7P2mad9nK4TmaIPqFI9MvEO3uA6hzB6MVWxu8jd
         ynyFuCBIyvF3MjxTkALl0i/SCyeMJAUVfaQekhEQYp2YWHFgd/yLQ+vQ+8gMBNP4PGEJ
         crivFWJnFdbOt83qbmD3NWT9wrLQEOOuTjaPGlwoCQTTbz4yR8fQPJHQ4IxRdKnBqrBv
         QdoQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531ITZoXrYHOSNZQoX9LEKVd0m+Hp95+cny0WvZNx/HjN1AzXTIw
	RefMUNGndDDl/Fm6fr9iJSQ=
X-Google-Smtp-Source: ABdhPJzCeF6YGjRg4hrzGSROXiFshqa7EP2B0vepOtFP3kLIT5r4LqrHiyIrymHZdhO4LwqjdZMxLA==
X-Received: by 2002:a67:ecd8:: with SMTP id i24mr7445676vsp.28.1610642816764;
        Thu, 14 Jan 2021 08:46:56 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:6c44:: with SMTP id q4ls443531uas.7.gmail; Thu, 14 Jan
 2021 08:46:56 -0800 (PST)
X-Received: by 2002:ab0:1d95:: with SMTP id l21mr6246372uak.138.1610642816121;
        Thu, 14 Jan 2021 08:46:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610642816; cv=none;
        d=google.com; s=arc-20160816;
        b=FwVUnqhJ61I8VfUxqTmo9mORNGRExv6AOoont8gkk4dlAmkfNT9BBo87ofheeixDjf
         XBiDdG+bko6opSkjjJHuq19+YsnshVBnQJ1Pu9fAf3zYzkqi/lz8GWXucS3qZSrfL5yK
         o1SLAdgwvYnkgeRL3kBxFMcxLw0eL+G8ZBPyBPNwtQTO6Xgic4SPZwrGjUiNVs/lW7io
         DEsEaz9VdBhgb6HYvSYPguWb86K7KWlebLHPAyBFhojA9XjXf9sf6Vw542pJLSZiSSjA
         0lygIoSB61Viitua3/UBUXQ4aBuvqeq3Zrl7xwrZQXmodx+IkmFalwWKalMNPJjk46dM
         8gGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=J6yooVlL8u2KwT0kHW8P9fGyVswNDNbTAFQ2VnXjX1Y=;
        b=mVP/h0Z7TN+Obt6n/WGEnX42MC+PAR6ggCeGp9U6kSvmOP09YrjpUXV+/mposBUKyg
         HP5O97MCz5p4ExjErg9QXhAmOZN32EpJRqvBEj0Kjmb0ml/yKE40kfwtKehNxQ7DY6Vg
         az9t8n44aQ7EEcCl8vJkIvsavqrgLanMeHIIB8gsnpgRDAbxD1aUAJO731Rd32jIcLIE
         L4YqhstDfy3PRexo2SMtxCr2UsXOK7qg6lVRpM7y1b7SZB2fjhBB4OYmzK4Y68S0Yovo
         hLVnj5ZAbDw+WYlhLTgkQxWD8hC2tTRUoYYpzm9cNaCuioS8OZaL3IsOJnaFOZjhlJ/V
         MQDg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga18.intel.com (mga18.intel.com. [134.134.136.126])
        by gmr-mx.google.com with ESMTPS id g3si392147vkl.1.2021.01.14.08.46.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Jan 2021 08:46:56 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) client-ip=134.134.136.126;
IronPort-SDR: jwP/EOg0J2wWjyWPuvsFNGfRA74CB3PSMrGALvwo5+H2Y6VY5emHFh0njEmumIsP3zjHKKG6EX
 Y/qZErSohUfg==
X-IronPort-AV: E=McAfee;i="6000,8403,9864"; a="166070008"
X-IronPort-AV: E=Sophos;i="5.79,347,1602572400"; 
   d="gz'50?scan'50,208,50";a="166070008"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Jan 2021 08:46:51 -0800
IronPort-SDR: RFg9HtjuT4GxHWlCd2zIflbY0v5X+HOKwojSPrTwtd3oSdAHZ4A/EjXSpjsufGUNcTNpRlq8ke
 GWReMJDdh4Eg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,347,1602572400"; 
   d="gz'50?scan'50,208,50";a="400963988"
Received: from lkp-server01.sh.intel.com (HELO d5d1a9a2c6bb) ([10.239.97.150])
  by fmsmga002.fm.intel.com with ESMTP; 14 Jan 2021 08:46:48 -0800
Received: from kbuild by d5d1a9a2c6bb with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1l05lo-00011S-5w; Thu, 14 Jan 2021 16:46:48 +0000
Date: Fri, 15 Jan 2021 00:46:33 +0800
From: kernel test robot <lkp@intel.com>
To: Mark Brown <broonie@kernel.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org
Subject: sound/soc/intel/keembay/kmb_platform.c:180:3: warning: converting
 the result of '<<' to a boolean always evaluates to true
Message-ID: <202101150028.EvFmPpYL-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="IJpNTDwzlM2Ie8A6"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
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


--IJpNTDwzlM2Ie8A6
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   65f0d2414b7079556fbbcc070b3d1c9f9587606d
commit: 84569f329f7fcb40b7b1860f273b2909dabf2a2b Merge remote-tracking branch 'asoc/for-5.9' into asoc-next
date:   6 months ago
config: mips-randconfig-r026-20210114 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 68ff52ffead2ba25cca442778ab19286000daad7)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install mips cross compiling tool for clang build
        # apt-get install binutils-mips-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=84569f329f7fcb40b7b1860f273b2909dabf2a2b
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout 84569f329f7fcb40b7b1860f273b2909dabf2a2b
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=mips 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

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
   In file included from sound/soc/intel/keembay/kmb_platform.c:8:
   In file included from include/linux/clk.h:14:
   In file included from include/linux/notifier.h:14:
   In file included from include/linux/mutex.h:14:
   In file included from ./arch/mips/include/generated/asm/current.h:1:
   In file included from include/asm-generic/current.h:5:
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
   In file included from sound/soc/intel/keembay/kmb_platform.c:8:
   In file included from include/linux/clk.h:14:
   In file included from include/linux/notifier.h:14:
   In file included from include/linux/mutex.h:16:
   In file included from include/linux/spinlock_types.h:18:
   In file included from include/linux/lockdep.h:44:
   include/linux/debug_locks.h:17:9: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
           return xchg(&debug_locks, 0);
                  ^
   arch/mips/include/asm/cmpxchg.h:102:7: note: expanded from macro 'xchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from sound/soc/intel/keembay/kmb_platform.c:8:
   In file included from include/linux/clk.h:14:
   In file included from include/linux/notifier.h:16:
   In file included from include/linux/srcu.h:21:
   In file included from include/linux/workqueue.h:9:
   In file included from include/linux/timer.h:6:
   In file included from include/linux/ktime.h:24:
   In file included from include/linux/time.h:74:
   In file included from include/linux/time32.h:13:
   In file included from include/linux/timex.h:65:
   In file included from arch/mips/include/asm/timex.h:19:
   In file included from arch/mips/include/asm/cpu-type.h:12:
   In file included from include/linux/smp.h:15:
   In file included from include/linux/smp_types.h:5:
   include/linux/llist.h:222:9: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
           return xchg(&head->first, NULL);
                  ^
   arch/mips/include/asm/cmpxchg.h:102:7: note: expanded from macro 'xchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from sound/soc/intel/keembay/kmb_platform.c:11:
   In file included from include/sound/pcm.h:15:
   In file included from include/linux/mm.h:32:
   In file included from include/linux/pgtable.h:6:
   arch/mips/include/asm/pgtable.h:210:3: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
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
   In file included from sound/soc/intel/keembay/kmb_platform.c:11:
   In file included from include/sound/pcm.h:15:
   In file included from include/linux/mm.h:32:
   In file included from include/linux/pgtable.h:6:
   arch/mips/include/asm/pgtable.h:210:3: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
   arch/mips/include/asm/cmpxchg.h:220:2: note: expanded from macro 'cmpxchg64'
           cmpxchg((ptr), (o), (n));                                       \
           ^
   arch/mips/include/asm/cmpxchg.h:204:7: note: expanded from macro 'cmpxchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
>> sound/soc/intel/keembay/kmb_platform.c:180:3: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
                   cmpxchg(&kmb_i2s->tx_ptr, ptr, new_ptr);
                   ^
   arch/mips/include/asm/cmpxchg.h:194:7: note: expanded from macro 'cmpxchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
>> sound/soc/intel/keembay/kmb_platform.c:180:3: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
   arch/mips/include/asm/cmpxchg.h:204:7: note: expanded from macro 'cmpxchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   sound/soc/intel/keembay/kmb_platform.c:185:3: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
                   cmpxchg(&kmb_i2s->rx_ptr, ptr, new_ptr);
                   ^
   arch/mips/include/asm/cmpxchg.h:194:7: note: expanded from macro 'cmpxchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   sound/soc/intel/keembay/kmb_platform.c:185:3: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
   arch/mips/include/asm/cmpxchg.h:204:7: note: expanded from macro 'cmpxchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   16 warnings generated.


vim +180 sound/soc/intel/keembay/kmb_platform.c

c5477e966728f8e9 Sia Jee Heng 2020-06-09  160  
c5477e966728f8e9 Sia Jee Heng 2020-06-09  161  static void kmb_pcm_operation(struct kmb_i2s_info *kmb_i2s, bool playback)
c5477e966728f8e9 Sia Jee Heng 2020-06-09  162  {
c5477e966728f8e9 Sia Jee Heng 2020-06-09  163  	struct snd_pcm_substream *substream;
c5477e966728f8e9 Sia Jee Heng 2020-06-09  164  	bool period_elapsed;
c5477e966728f8e9 Sia Jee Heng 2020-06-09  165  	unsigned int new_ptr;
c5477e966728f8e9 Sia Jee Heng 2020-06-09  166  	unsigned int ptr;
c5477e966728f8e9 Sia Jee Heng 2020-06-09  167  
c5477e966728f8e9 Sia Jee Heng 2020-06-09  168  	if (playback)
c5477e966728f8e9 Sia Jee Heng 2020-06-09  169  		substream = kmb_i2s->tx_substream;
c5477e966728f8e9 Sia Jee Heng 2020-06-09  170  	else
c5477e966728f8e9 Sia Jee Heng 2020-06-09  171  		substream = kmb_i2s->rx_substream;
c5477e966728f8e9 Sia Jee Heng 2020-06-09  172  
c5477e966728f8e9 Sia Jee Heng 2020-06-09  173  	if (!substream || !snd_pcm_running(substream))
c5477e966728f8e9 Sia Jee Heng 2020-06-09  174  		return;
c5477e966728f8e9 Sia Jee Heng 2020-06-09  175  
c5477e966728f8e9 Sia Jee Heng 2020-06-09  176  	if (playback) {
c5477e966728f8e9 Sia Jee Heng 2020-06-09  177  		ptr = kmb_i2s->tx_ptr;
c5477e966728f8e9 Sia Jee Heng 2020-06-09  178  		new_ptr = kmb_pcm_tx_fn(kmb_i2s, substream->runtime,
c5477e966728f8e9 Sia Jee Heng 2020-06-09  179  					ptr, &period_elapsed);
c5477e966728f8e9 Sia Jee Heng 2020-06-09 @180  		cmpxchg(&kmb_i2s->tx_ptr, ptr, new_ptr);
c5477e966728f8e9 Sia Jee Heng 2020-06-09  181  	} else {
c5477e966728f8e9 Sia Jee Heng 2020-06-09  182  		ptr = kmb_i2s->rx_ptr;
c5477e966728f8e9 Sia Jee Heng 2020-06-09  183  		new_ptr = kmb_pcm_rx_fn(kmb_i2s, substream->runtime,
c5477e966728f8e9 Sia Jee Heng 2020-06-09  184  					ptr, &period_elapsed);
c5477e966728f8e9 Sia Jee Heng 2020-06-09  185  		cmpxchg(&kmb_i2s->rx_ptr, ptr, new_ptr);
c5477e966728f8e9 Sia Jee Heng 2020-06-09  186  	}
c5477e966728f8e9 Sia Jee Heng 2020-06-09  187  
c5477e966728f8e9 Sia Jee Heng 2020-06-09  188  	if (period_elapsed)
c5477e966728f8e9 Sia Jee Heng 2020-06-09  189  		snd_pcm_period_elapsed(substream);
c5477e966728f8e9 Sia Jee Heng 2020-06-09  190  }
c5477e966728f8e9 Sia Jee Heng 2020-06-09  191  

:::::: The code at line 180 was first introduced by commit
:::::: c5477e966728f8e9d1434543d4ee677d515e1078 ASoC: Intel: Add KeemBay platform driver

:::::: TO: Sia Jee Heng <jee.heng.sia@intel.com>
:::::: CC: Mark Brown <broonie@kernel.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202101150028.EvFmPpYL-lkp%40intel.com.

--IJpNTDwzlM2Ie8A6
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICPpuAGAAAy5jb25maWcAlFxbc9w2sn7Pr5hKXrJVSSyNbvY5pQeQBGfgIQkaAEcjvaDG
0tiZs7KkGknJ+t9vN8ALAIJyztZW7OkGGrdG99eNpn/56ZcZeX15/LZ92d9u7++/z77uHnaH
7cvubvZlf7/731nGZxVXM5ox9Qc0LvYPr/95923/9Dw7++P9H0e/H24vZqvd4WF3P0sfH77s
v75C7/3jw0+//JTyKmcLnaZ6TYVkvNKKbtTlz7f324evs792h2doNzue/3H0x9Hs16/7l/95
9w7++21/ODwe3t3f//VNPx0e/293+zI7P7q4uDs7O3l/vD3fbk92H04vdl8utp/vbk/Otxdn
x2e3Zx/e377f/uvnbtTFMOzlUUcssjEN2jGp04JUi8vvTkMgFkU2kEyLvvvx/Aj+58hYEqmJ
LPWCK+508hmaN6puVJTPqoJVdGAx8UlfcbEaKEnDikyxkmpFkoJqyQWKgp3+ZbYwx3Y/e969
vD4Ne88qpjSt1poIWBQrmbo8mfeD87JmIEdR6Uyp4CkpumX+/LM3uJakUA5xSdZUr6ioaKEX
N6wepLicBDjzOKu4KUmcs7mZ6sGnGKfA+GXWspxZzfbPs4fHF9ybEd/M7a0GOMO3+Jsblxv2
5ZEpwUQjXTKak6ZQ5sScHe7ISy5VRUp6+fOvD48Pu0HP5RVxtl1eyzWr0xEB/0xVMdCviEqX
+lNDG+pOMRVcSl3SkotrTZQi6TIy10bSgiWd6oGizp5fPz9/f37ZfRtUb0ErKlhq9LgWPHFU
22XJJb+Kc2ie01QxOGGS57okchVvx6qP2A60NcpOl65eIiXjJWGVT5OsjDXSS0YFEeny2ufm
RCrK2cAGVayyAm6Nq5xI6QRBr0AEFynNtFoKSjLmGh939hlNmkUuzRntHu5mj1+C/Q47Gfuw
xuMmRTGWmcL1XtE1rZSMMEsudVNnRNHucNX+G9jp2Pkqlq40rygcoGM9Kq6XN2hZSnMevWIB
sYYxeMbS6G2y/RhsWETfLDNv3AXBH+hNtBIkXXnbF3LsTruTMfIi4yzZYqkFlWYThbfpo33o
+tSC0rJWILPyxujoa140lSLiOrrstlVkLl3/lEP37jTSunmnts//nr3AdGZbmNrzy/bleba9
vX18fXjZP3wdzmfNBPSuG01SI8PbowgTtcDXUKNKsd7G7Mp0CepL1otWtfs1WYZaUlGSAtch
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

--IJpNTDwzlM2Ie8A6--
