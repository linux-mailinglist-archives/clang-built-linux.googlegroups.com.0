Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB34V6T4QKGQEOEHDJYI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93d.google.com (mail-ua1-x93d.google.com [IPv6:2607:f8b0:4864:20::93d])
	by mail.lfdr.de (Postfix) with ESMTPS id ED75E249B99
	for <lists+clang-built-linux@lfdr.de>; Wed, 19 Aug 2020 13:20:16 +0200 (CEST)
Received: by mail-ua1-x93d.google.com with SMTP id c18sf1501830uad.15
        for <lists+clang-built-linux@lfdr.de>; Wed, 19 Aug 2020 04:20:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597836015; cv=pass;
        d=google.com; s=arc-20160816;
        b=cllcxs3KIGcBQdlLZH2L5t25faG7tCWDRV8B/P7iQkgL6sQitpfzh3fOMn/6qQXGN9
         Iz1NZiBr2202moaylh0zDU+QDPlIq3KQnJs4V+FH77rj2x5BIrJMOKkOoOwGkZPP+XcQ
         6v6lvnQ5EHYq0FFTx5QmoglWK8DQsvWltZW3XlCqfXb6r1ny7PiDnVkjgde94Q5wBpZ0
         Di91t2xE+qFLBzeBi0om40fEjQGUvGOvEORIbPVYUhrVaRx/JKfnkkl93F+SDOhesSRx
         nTeuGgBJkSHnQSAmXvUrF7Wt/OK3tn3cy0lbKdVDjT7pZHs6kEAFsIhDduNpQpJiUI9K
         JoEQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=CAS43JIdU2Shrmoa0cc0/Lx2fJ9ybkxqlKba9yUTN+g=;
        b=cFbgFhKFVZGWt0Cpt1Cnbl0yyA0TyX/u/JpDmzTjb1fAY1YWF7h48gD1SKWq4Bsa0E
         fylA8JqPFUuOYrCL2Ks1ToxHygQZYxguniJbI8VF7zxXQAcwef19ZkBU6nt23gPGNdYU
         kcxoJ+/gmJ/nJ1AFD+yEgJd+qnKBVqjveMxlGkOzoDroFJeQZg0x0SXZIW+OH5fJkCp1
         TzBVfVYWXNZyw5ISj0F5Hnwtg3/nCEHPL2atV2Yi/3UL8guqoJOPHnRt7KqsCQgM66QV
         mLbkNutIcZ0Hul0C22IsDJPMRsqU/GrUvio8BIhyx7nlyYkYbJTMPnH7aIWmyM5rlGhU
         /oJg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=CAS43JIdU2Shrmoa0cc0/Lx2fJ9ybkxqlKba9yUTN+g=;
        b=ogScK8ZRgZQ1R6KfunvKD1EvQqnL+OYGI2x+Md84YQNkJJGQDi1F/4YwFLCxZVNs6c
         Jho71LSwaLA6bgn4lwvucfUZjRQCTiXyVlbBLJdCmpFOcnU6cTFMFdWxpRtZnIUkuCAa
         UxBKL8sagFTTR+bKT8x6Q3GHz/QzcdejTXiJmWWwIvSftzE6ydK2GlULt2bZTuv22GPU
         RsDCT/Ib1kX6jDE7ffxAhZWX6NV1YXEATBPqHWiKIuXQjYXpnD9kX9mJRT9tUwgyN3jW
         Ln1nIWu+qNAK6YKbHX0elr2mWpygAoboC/8pEihP/m6hV+kZyZJ7bha0Jps9ej/b1acY
         08zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=CAS43JIdU2Shrmoa0cc0/Lx2fJ9ybkxqlKba9yUTN+g=;
        b=CxY6Mj2FQoMUGUi9PAcXbDntFxX9GkfAUTBVqblBZjWC4Xxwa+cIfJ/2OHMEeVjGIu
         aU789Ri4pdIh4dKNvVSZte/VrgxVzXDzFyimlEch9fcFS6u3Yaff4Oudct6R7uMKwU5X
         sQco9uXj1hf1H4/DbrjPNrO7x/fAQlMmNP5MXDWrOOOd9Z9k2/KvNcBPaDSHibkMr6/5
         0p3evjYoNtFDfWolpLm+FobukAMnjslYEIu5mIHXqi+03XFigxkG/cHouvhv+eEy+RlL
         hfAI878lX25lCNqA1zKBG8XNlCNRgbojC3WZbwC0HP4CsCqztldsEL4QbdGB0dnidc/j
         d6og==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533jPsvZNVIgZR6lUFgjNWOUr/46tcjYeJBqn9RfeS/KWMtDBz04
	hc1lr94cNFtu/ua0wFh75gc=
X-Google-Smtp-Source: ABdhPJwx4Jy71QiRejAMvZjtnZn5PwItk0WNm2Ekb2xlFyCldyx8LQyZxbBGu8g/lD27egKH70zgJw==
X-Received: by 2002:a05:6102:382:: with SMTP id m2mr14247354vsq.34.1597836015581;
        Wed, 19 Aug 2020 04:20:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:7f0b:: with SMTP id a11ls2754078vsd.1.gmail; Wed, 19 Aug
 2020 04:20:15 -0700 (PDT)
X-Received: by 2002:a67:310a:: with SMTP id x10mr14115518vsx.48.1597836015085;
        Wed, 19 Aug 2020 04:20:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597836015; cv=none;
        d=google.com; s=arc-20160816;
        b=xBGrkB8O6lwiePBZD6cE/0zOAY/XKkHG1WurEu3sHFfRkXpb6f4kLZiTLYxKEUub8o
         iAkKASQDO0cW5bzn6Ham5tqYxRwwadUvNB0GZ7qeh30AUlngHUCllMXtoozwa7iZDYnK
         9Xn9Rk1qYi48Dunw1xI3qzKaKR67JUuDxBVOXYq5r9DLvNScdS4/KiaxNK4XA0g7gFxd
         4D/hxKI3ISIjnRnNfFLcyMA4jy+jsaCuH+ygTZV//nLlVm9X/54KWDBGoBsx9EegB3PX
         NSz7Qwh137TUHgrQ5ekZU2yt9mS3cleGBLYlfiwt6fR55wBha+fMyD2dOMXeakD+a8Mo
         4Xrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=YV+ckO2UeDhQKHWTQCVbBPdhsx8pcmtDn/ZMEOGWTQ0=;
        b=rVb2S80SP5LLKLQzwbTUegNqD/IX+2Q2XTzSkjGKQwaX8QQnOsbifKuhgu/1cDwGHB
         Q8R8TW1ZiOU94qY6f49IE2156G9VQxsUteuxHZdoRmnx74VBm9Y5Cn+AvJ4yOqmMJDAc
         8hB+1QkKMhANgnbZTsGjna94W6keHYNtNeZRvw7PRzXq1NX/4ed/MN0L7VN4NJNNFbr4
         yBw9soh22gGd7DPtakoMLTFDW+OSTCfkUDkizBHF6I8OAC4WoM/Nf/Nzf4N2C6hQlMRC
         jRbIozLVNgMdOSSkA8DbDhON0030gXJSk6SRG0FANEBoveK8SZRmi1fgD11SCGAMyqDM
         6vrQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga14.intel.com (mga14.intel.com. [192.55.52.115])
        by gmr-mx.google.com with ESMTPS id k201si1236888vka.4.2020.08.19.04.20.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 19 Aug 2020 04:20:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) client-ip=192.55.52.115;
IronPort-SDR: dn2AA3rSoxmfwCZFofNckkUeZnpDXk2dgOiRYpd/ObU/Yu8wJzop+aMSu4+ng+qBOSPr2msvOP
 WOMsMQJPot5g==
X-IronPort-AV: E=McAfee;i="6000,8403,9717"; a="154352401"
X-IronPort-AV: E=Sophos;i="5.76,331,1592895600"; 
   d="gz'50?scan'50,208,50";a="154352401"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Aug 2020 04:20:12 -0700
IronPort-SDR: YfFa2tCaoInCWftqsEFcUJWH+dh2B6DunXhN2vXKbgVcpDdT0jGlRK7SqPxVNx15s5mhwI+bGM
 oSt10QZqWcMg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,331,1592895600"; 
   d="gz'50?scan'50,208,50";a="497203081"
Received: from lkp-server01.sh.intel.com (HELO 4cedd236b688) ([10.239.97.150])
  by fmsmga006.fm.intel.com with ESMTP; 19 Aug 2020 04:20:10 -0700
Received: from kbuild by 4cedd236b688 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1k8M8X-0000HX-Mt; Wed, 19 Aug 2020 11:20:09 +0000
Date: Wed, 19 Aug 2020 19:19:21 +0800
From: kernel test robot <lkp@intel.com>
To: David Stevens <stevensd@chromium.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Gerd Hoffmann <kraxel@redhat.com>
Subject: [kraxel:drm-qemu-next 1/1] include/linux/topology.h:119:9: error:
 implicit declaration of function 'cpu_logical_map'
Message-ID: <202008191909.qu12xyPm%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="Qxx1br4bt0+wmkIi"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted
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


--Qxx1br4bt0+wmkIi
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi David,

First bad commit (maybe != root cause):

tree:   git://git.kraxel.org/linux drm-qemu-next
head:   9fe2f897499f129f9f0ef4c51a11512dcf2ab7d0
commit: 9fe2f897499f129f9f0ef4c51a11512dcf2ab7d0 [1/1] virtio: fix build for configs without dma-bufs
config: mips-randconfig-r016-20200818 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project b34b1e38381fa4d1b1d9751a6b5233b68e734cfe)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install mips cross compiling tool for clang build
        # apt-get install binutils-mips-linux-gnu
        git checkout 9fe2f897499f129f9f0ef4c51a11512dcf2ab7d0
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=mips 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   arch/mips/include/asm/atomic.h:52:1: warning: converting the result of '<<' to a boolean always evaluates to true
   arch/mips/include/asm/atomic.h:40:9: note: expanded from macro 'ATOMIC_OPS'
   return cmpxchg(&v->counter, o, n); ^
   arch/mips/include/asm/cmpxchg.h:204:7: note: expanded from macro 'cmpxchg'
   if (!__SYNC_loongson3_war) ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war (1 << 31)
   ^
   In file included from arch/mips/kernel/asm-offsets.c:12:
   In file included from include/linux/compat.h:10:
   In file included from include/linux/time.h:73:
   In file included from include/linux/time32.h:13:
   In file included from include/linux/timex.h:65:
   In file included from arch/mips/include/asm/timex.h:19:
   In file included from arch/mips/include/asm/cpu-type.h:12:
   In file included from include/linux/smp.h:13:
   In file included from include/linux/cpumask.h:13:
   In file included from include/linux/atomic.h:7:
   arch/mips/include/asm/atomic.h:52:1: warning: converting the result of '<<' to a boolean always evaluates to true
   arch/mips/include/asm/atomic.h:45:9: note: expanded from macro 'ATOMIC_OPS'
   return xchg(&v->counter, n); ^
   arch/mips/include/asm/cmpxchg.h:102:7: note: expanded from macro 'xchg'
   if (!__SYNC_loongson3_war) ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war (1 << 31)
   ^
   In file included from arch/mips/kernel/asm-offsets.c:12:
   In file included from include/linux/compat.h:10:
   In file included from include/linux/time.h:73:
   In file included from include/linux/time32.h:13:
   In file included from include/linux/timex.h:65:
   In file included from arch/mips/include/asm/timex.h:19:
   In file included from arch/mips/include/asm/cpu-type.h:12:
   In file included from include/linux/smp.h:13:
   In file included from include/linux/cpumask.h:13:
   In file included from include/linux/atomic.h:7:
   arch/mips/include/asm/atomic.h:257:1: warning: converting the result of '<<' to a boolean always evaluates to true
   ATOMIC_SIP_OP(atomic, int, subu, ll, sc)
   ^
   arch/mips/include/asm/atomic.h:251:7: note: expanded from macro 'ATOMIC_SIP_OP'
   if (!__SYNC_loongson3_war) ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war (1 << 31)
   ^
   In file included from arch/mips/kernel/asm-offsets.c:12:
   In file included from include/linux/compat.h:10:
   In file included from include/linux/time.h:73:
   In file included from include/linux/time32.h:13:
   In file included from include/linux/timex.h:65:
   In file included from arch/mips/include/asm/timex.h:19:
   In file included from arch/mips/include/asm/cpu-type.h:12:
   In file included from include/linux/smp.h:13:
   In file included from include/linux/cpumask.h:13:
   In file included from include/linux/atomic.h:7:
   arch/mips/include/asm/atomic.h:261:1: warning: converting the result of '<<' to a boolean always evaluates to true
   ATOMIC_SIP_OP(atomic64, s64, dsubu, lld, scd)
   ^
   arch/mips/include/asm/atomic.h:251:7: note: expanded from macro 'ATOMIC_SIP_OP'
   if (!__SYNC_loongson3_war) ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war (1 << 31)
   ^
   In file included from arch/mips/kernel/asm-offsets.c:12:
   In file included from include/linux/compat.h:10:
   In file included from include/linux/time.h:73:
   In file included from include/linux/time32.h:13:
   In file included from include/linux/timex.h:65:
   In file included from arch/mips/include/asm/timex.h:19:
   In file included from arch/mips/include/asm/cpu-type.h:12:
   In file included from include/linux/smp.h:15:
   In file included from include/linux/smp_types.h:5:
   include/linux/llist.h:222:9: warning: converting the result of '<<' to a boolean always evaluates to true
   return xchg(&head->first, NULL);
   ^
   arch/mips/include/asm/cmpxchg.h:102:7: note: expanded from macro 'xchg'
   if (!__SYNC_loongson3_war) ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war (1 << 31)
   ^
   In file included from arch/mips/kernel/asm-offsets.c:12:
   In file included from include/linux/compat.h:14:
   In file included from include/linux/sem.h:5:
   In file included from include/uapi/linux/sem.h:5:
   In file included from include/linux/ipc.h:5:
   In file included from include/linux/spinlock.h:59:
   In file included from include/linux/lockdep.h:27:
   include/linux/debug_locks.h:17:9: warning: converting the result of '<<' to a boolean always evaluates to true
   return xchg(&debug_locks, 0);
   ^
   arch/mips/include/asm/cmpxchg.h:102:7: note: expanded from macro 'xchg'
   if (!__SYNC_loongson3_war) ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war (1 << 31)
   ^
   In file included from arch/mips/kernel/asm-offsets.c:12:
   In file included from include/linux/compat.h:17:
   In file included from include/linux/fs.h:15:
   In file included from include/linux/radix-tree.h:18:
   In file included from include/linux/xarray.h:14:
   In file included from include/linux/gfp.h:9:
>> include/linux/topology.h:119:9: error: implicit declaration of function 'cpu_logical_map'
   return cpu_to_node(raw_smp_processor_id());
   ^
   arch/mips/include/asm/mach-loongson64/topology.h:7:27: note: expanded from macro 'cpu_to_node'
   #define cpu_to_node(cpu) (cpu_logical_map(cpu) >> 2)
   ^
   In file included from arch/mips/kernel/asm-offsets.c:12:
   In file included from include/linux/compat.h:17:
   In file included from include/linux/fs.h:15:
   In file included from include/linux/radix-tree.h:18:
   In file included from include/linux/xarray.h:14:
   In file included from include/linux/gfp.h:9:
   include/linux/topology.h:176:9: error: implicit declaration of function 'cpu_logical_map'
   return cpu_to_node(cpu);
   ^
   arch/mips/include/asm/mach-loongson64/topology.h:7:27: note: expanded from macro 'cpu_to_node'
   #define cpu_to_node(cpu) (cpu_logical_map(cpu) >> 2)
   ^
   In file included from arch/mips/kernel/asm-offsets.c:12:
   In file included from include/linux/compat.h:17:
   In file included from include/linux/fs.h:15:
   In file included from include/linux/radix-tree.h:18:
   In file included from include/linux/xarray.h:14:
   In file included from include/linux/gfp.h:9:
   include/linux/topology.h:210:25: error: implicit declaration of function 'cpu_logical_map'
   return cpumask_of_node(cpu_to_node(cpu));
   ^
   arch/mips/include/asm/mach-loongson64/topology.h:7:27: note: expanded from macro 'cpu_to_node'
   #define cpu_to_node(cpu) (cpu_logical_map(cpu) >> 2)
   ^
   In file included from arch/mips/kernel/asm-offsets.c:15:
   In file included from include/linux/mm.h:33:
   In file included from include/linux/pgtable.h:6:
   arch/mips/include/asm/pgtable.h:210:3: warning: converting the result of '<<' to a boolean always evaluates to true
   cmpxchg64(&buddy->pte, 0, _PAGE_GLOBAL);
   ^
   arch/mips/include/asm/cmpxchg.h:220:2: note: expanded from macro 'cmpxchg64'
   cmpxchg((ptr), (o), (n)); ^
   arch/mips/include/asm/cmpxchg.h:194:7: note: expanded from macro 'cmpxchg'
   if (!__SYNC_loongson3_war) ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war (1 << 31)
   ^
   In file included from arch/mips/kernel/asm-offsets.c:15:
   In file included from include/linux/mm.h:33:
   In file included from include/linux/pgtable.h:6:
   arch/mips/include/asm/pgtable.h:210:3: warning: converting the result of '<<' to a boolean always evaluates to true
   arch/mips/include/asm/cmpxchg.h:220:2: note: expanded from macro 'cmpxchg64'
   cmpxchg((ptr), (o), (n)); ^
   arch/mips/include/asm/cmpxchg.h:204:7: note: expanded from macro 'cmpxchg'
   if (!__SYNC_loongson3_war) ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war (1 << 31)
   ^
   In file included from arch/mips/kernel/asm-offsets.c:17:
   In file included from include/linux/suspend.h:5:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:22:
   In file included from include/linux/writeback.h:14:
   In file included from include/linux/blk-cgroup.h:23:
   In file included from include/linux/blkdev.h:8:
   In file included from include/linux/genhd.h:35:
   In file included from include/linux/device.h:16:
   In file included from include/linux/energy_model.h:10:
>> include/linux/sched/topology.h:254:9: error: implicit declaration of function 'cpu_logical_map'
   return cpu_to_node(task_cpu(p));
   ^
   arch/mips/include/asm/mach-loongson64/topology.h:7:27: note: expanded from macro 'cpu_to_node'
   #define cpu_to_node(cpu) (cpu_logical_map(cpu) >> 2)
   ^
   In file included from arch/mips/kernel/asm-offsets.c:24:
   include/linux/kvm_host.h:332:9: warning: converting the result of '<<' to a boolean always evaluates to true
   return cmpxchg(&vcpu->mode, IN_GUEST_MODE, EXITING_GUEST_MODE);
   ^
   arch/mips/include/asm/cmpxchg.h:194:7: note: expanded from macro 'cmpxchg'
   if (!__SYNC_loongson3_war) ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war (1 << 31)
   ^
   In file included from arch/mips/kernel/asm-offsets.c:24:
   include/linux/kvm_host.h:332:9: warning: converting the result of '<<' to a boolean always evaluates to true
   arch/mips/include/asm/cmpxchg.h:204:7: note: expanded from macro 'cmpxchg'
   if (!__SYNC_loongson3_war) ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war (1 << 31)
   ^
   arch/mips/kernel/asm-offsets.c:26:6: warning: no previous prototype for function 'output_ptreg_defines'
   void output_ptreg_defines(void)
   ^
   arch/mips/kernel/asm-offsets.c:26:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void output_ptreg_defines(void)
   ^
   static
   arch/mips/kernel/asm-offsets.c:78:6: warning: no previous prototype for function 'output_task_defines'
   void output_task_defines(void)
   ^
   arch/mips/kernel/asm-offsets.c:78:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void output_task_defines(void)
   ^
   static
   arch/mips/kernel/asm-offsets.c:93:6: warning: no previous prototype for function 'output_thread_info_defines'
   void output_thread_info_defines(void)
   ^
   arch/mips/kernel/asm-offsets.c:93:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void output_thread_info_defines(void)
   ^
   static
   arch/mips/kernel/asm-offsets.c:110:6: warning: no previous prototype for function 'output_thread_defines'
   void output_thread_defines(void)
   ^
   arch/mips/kernel/asm-offsets.c:110:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void output_thread_defines(void)
   ^
   static
   arch/mips/kernel/asm-offsets.c:138:6: warning: no previous prototype for function 'output_thread_fpu_defines'
   void output_thread_fpu_defines(void)
   ^
   arch/mips/kernel/asm-offsets.c:138:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void output_thread_fpu_defines(void)
   ^
   static
   arch/mips/kernel/asm-offsets.c:181:6: warning: no previous prototype for function 'output_mm_defines'
   void output_mm_defines(void)
   ^
   arch/mips/kernel/asm-offsets.c:181:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void output_mm_defines(void)
   ^
   static
   arch/mips/kernel/asm-offsets.c:242:6: warning: no previous prototype for function 'output_sc_defines'
   void output_sc_defines(void)
   ^
   arch/mips/kernel/asm-offsets.c:242:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void output_sc_defines(void)
   ^
   static
   arch/mips/kernel/asm-offsets.c:255:6: warning: no previous prototype for function 'output_signal_defined'
   void output_signal_defined(void)
   ^
   arch/mips/kernel/asm-offsets.c:255:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void output_signal_defined(void)
   ^
   static
   arch/mips/kernel/asm-offsets.c:334:6: warning: no previous prototype for function 'output_pm_defines'
   void output_pm_defines(void)
   ^
   arch/mips/kernel/asm-offsets.c:334:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void output_pm_defines(void)
   ^
   static
   arch/mips/kernel/asm-offsets.c:348:6: warning: no previous prototype for function 'output_kvm_defines'
   void output_kvm_defines(void)
   ^
   arch/mips/kernel/asm-offsets.c:348:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void output_kvm_defines(void)
   ^
   static
   24 warnings and 4 errors generated.
   Makefile arch include kernel scripts source [scripts/Makefile.build:117: arch/mips/kernel/asm-offsets.s] Error 1
   Target 'missing-syscalls' not remade because of errors.
   Makefile arch include kernel scripts source [arch/mips/Makefile:401: archprepare] Error 2
   Target 'prepare' not remade because of errors.
   make: Makefile arch include kernel scripts source [Makefile:185: __sub-make] Error 2
   make: Target 'prepare' not remade because of errors.

git remote add kraxel git://git.kraxel.org/linux
git fetch --no-tags kraxel drm-qemu-next
git checkout 9fe2f897499f129f9f0ef4c51a11512dcf2ab7d0
vim +/cpu_logical_map +119 include/linux/topology.h

7281201922a0063 Lee Schermerhorn 2010-05-26  114  
7281201922a0063 Lee Schermerhorn 2010-05-26  115  /* Returns the number of the current Node. */
7281201922a0063 Lee Schermerhorn 2010-05-26  116  #ifndef numa_node_id
7281201922a0063 Lee Schermerhorn 2010-05-26  117  static inline int numa_node_id(void)
7281201922a0063 Lee Schermerhorn 2010-05-26  118  {
7281201922a0063 Lee Schermerhorn 2010-05-26 @119  	return cpu_to_node(raw_smp_processor_id());
7281201922a0063 Lee Schermerhorn 2010-05-26  120  }
7281201922a0063 Lee Schermerhorn 2010-05-26  121  #endif
7281201922a0063 Lee Schermerhorn 2010-05-26  122  

:::::: The code at line 119 was first introduced by commit
:::::: 7281201922a0063fa60804ce39c277fc98142a47 numa: add generic percpu var numa_node_id() implementation

:::::: TO: Lee Schermerhorn <lee.schermerhorn@hp.com>
:::::: CC: Linus Torvalds <torvalds@linux-foundation.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202008191909.qu12xyPm%25lkp%40intel.com.

--Qxx1br4bt0+wmkIi
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--Qxx1br4bt0+wmkIi--
