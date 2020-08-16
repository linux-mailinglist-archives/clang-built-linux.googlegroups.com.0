Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBSPN434QKGQEZDE4QNY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3e.google.com (mail-yb1-xb3e.google.com [IPv6:2607:f8b0:4864:20::b3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 803A02459EC
	for <lists+clang-built-linux@lfdr.de>; Mon, 17 Aug 2020 00:44:26 +0200 (CEST)
Received: by mail-yb1-xb3e.google.com with SMTP id a75sf11693880ybg.15
        for <lists+clang-built-linux@lfdr.de>; Sun, 16 Aug 2020 15:44:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597617865; cv=pass;
        d=google.com; s=arc-20160816;
        b=a7mnYs9Dj3vYT+0C8uiAbVSTbGJ+Bt7sfLc5xVIwk6JFvFBFJ8qrePGGznnWj+70st
         4wtAx+1QTUSsGSn5exvbuXr9FRptOlw3Dy7G5rQbNs4+mKSdavOUBuZ/l5FpguRjIko9
         cSLjBrj2ifNfcnqwPoLb5VVWxYC6XixO1DSmFZYneina5PQGypHksQTpaVZwy4Rl+XvM
         CwAkKktzuBqvPcPPvFeKv4118Tjhh+tQrRKI9jf7qHtu2qhDFGxKya0YGp7aGVD4D4Ri
         QsFAcKcMiEJnTZlT8AgxoqAUvxWVH1QVvM+RQiUeBuElP4h57qZZdojC3No6Xb9iKYZr
         2Akw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=TMcrK9Hh749b2Uc9LU71zzyjfwtKNvt+IUWIOnTyJgQ=;
        b=hcm484tcE/VG8QyPe2cT0szbu+44f6mf+tn9bgUJgpfGQtPmVqZzU6V15NOHuSmv4V
         r1y65vSX+LiLFdHhe1awQxI6NKPY/TE9EoSFIQCh14+65pFCbmiN8nnMJ4Z+0F4mB5m/
         JrSjlPnLTtFIlKCTg7QVA+tYan6zOvm8eDOSNg4t9m6hbfjRC+STHQuase1gL3MYO7JE
         B15okAaO3Y/jOt0JFkRRbW2bKK0dT1hDAaKVUVKD3fgBorfUQ2uqnEHw/s83eYG2uL7M
         Zv3sFkkQjejb2WilOV3AZ0I9pEQQSlwlemxacPqKAjVxQU6XfFUTDjqg4bITCn4Hjz/f
         wdVg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=TMcrK9Hh749b2Uc9LU71zzyjfwtKNvt+IUWIOnTyJgQ=;
        b=pb2K++9NkU5bnH93K6UaZojLlMtgluSnYjoZ+I5Kl/jTZBWrGIuR6C6ManwatBd6uh
         Wk4w/8ZGPOpKwVo2lPXM4Pc0Q9yxXjfd3S16CgntbvedMbqQv9+udxBTmy0rxhhC7/bM
         1Lg+x5FhxDbnOLFY9gVu4zPnQM+uvnqdKJctOh9MOotFA/+xe25sE8AAuKFtmzX40tmS
         I5n8J58VwM/TRzDlwZUQqs9CM8Fa5lLZ8AJ6+Y7TKW9ty3sVz+Rv3ytPf8/O42yNRRx3
         z4FiHWG2fJHGuNhzCmebExPVgauFKBS5Cu4HWxNil+iSnsgRokcXiv8midRqFq99BjhL
         Xe8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=TMcrK9Hh749b2Uc9LU71zzyjfwtKNvt+IUWIOnTyJgQ=;
        b=kTbtHHVkQ7c8vyUaT0GY9BAc5I+xd5DHa0/boZtOpZqIZnkYL4LEzhILs2kFmzA5fZ
         BQsCu9wbxl1pxYl2LhffyX40tFW3MzqSSsHvghbyfB6Yw89SSuXaAIKRSnG3zUbAUCLp
         UZz5eKk/3hNOf+xSu6bOpCxPHSIRmzOclrDkAIVtXaBYvFZiAaX8b/E8m2uc54q5UIkv
         rNfRlzYxMGbi6V5fYBqU1iQH3s3JoWldSTjiepV5gyX+KKqEBl92o05GGz7LClbWVcIT
         A7i7PoYCWDiv3fkfOjj4WuyaZhN/Zg5rJwsY97mB4pjobWnUZE5aOfz5fgBYiW8SxklC
         AkBQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5312YJclYEmk+Z7hDcWd+l8u2sjTaHBUQsf5qBOlvnM3eP+S0TBm
	gW4WEjh3D85g4TH0zHcpmmo=
X-Google-Smtp-Source: ABdhPJwhnb7pw68e5DdRAwSka98l8d4kYGvnfm6Vgm9gDYcvf61OP8BncT6FqWhR+q9aJjPWdkTAuQ==
X-Received: by 2002:a25:ad15:: with SMTP id y21mr17074138ybi.295.1597617865240;
        Sun, 16 Aug 2020 15:44:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6902:70d:: with SMTP id k13ls775365ybt.9.gmail; Sun, 16
 Aug 2020 15:44:24 -0700 (PDT)
X-Received: by 2002:a25:3355:: with SMTP id z82mr17646254ybz.445.1597617864825;
        Sun, 16 Aug 2020 15:44:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597617864; cv=none;
        d=google.com; s=arc-20160816;
        b=f6Mxbz7+ubWUjrud7/AorbeWLJGZm1FMNFI/810rjoXa/SfrsdezjZThngSyTyVpPn
         YMGiAHL3t3ZzB/SRmklFwpHrBNcm6miWh8DVYCYEmVqtXX653kQsT3Se5rQK+9rMTjXx
         EKQcjKGpIyfxk/zvTWMo44kmnXmRMo6QWqV0C4N4m6CYRVw7th9Txq97/p4793W69l3T
         1WO1zAv/ToNLRTWybIl9mFN1tkmYcmN+yr0ZaTnYloQaRPaidyj/tS1NAIKrZI+NprOo
         x/hzXxTNptRQdnqhfnXU5woJ+uAJnkGdorhG6CXUMQ0RiORLnCsOqaPOBHGxI4zcgDMG
         0Hww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=MghhZVcePnDx4Xuxk/Y0JXD9Nu0jzscd5qPfVXJR6LY=;
        b=lmbv0eb/lSm1f0nOHukHhvnVjLl7C/B7gC9lffMmEavcKv/i2qAaeun9JJyvg7QBgM
         ZeZKOX8+KZEgwFK+s9FjAsh9fQlC+JToZxW5hp1Pgy19tkn6e2U/R1e0Ch3O7Lhthepc
         YhNg6WyOxDhvPotfNNxs1ZmMmj0q6rJkHwyoVDnMar79Rc3kjSjfyZj/Bz2/EwzzUWOo
         ZT369er34fmTmmUxdYQOm1rloQWQsRGNWnqSekWOLI6YtCMgEjUX8p3T2Br3R37r4ba5
         5eSuQ4gG0uUviJ1RizwHvOB/+ty4dZvmyq4GkhKzyBuROfVo7HqpDPggYe3yjntIu//D
         hviA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga01.intel.com (mga01.intel.com. [192.55.52.88])
        by gmr-mx.google.com with ESMTPS id 7si1022930ybc.0.2020.08.16.15.44.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 16 Aug 2020 15:44:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) client-ip=192.55.52.88;
IronPort-SDR: 2O4HWCXEQ7FmCpUU9Z+gQDtjmgxbi/yct/Kvdv1bGjOHFJTWGAbdHKaUwDBxWs8a6tCO0V+FSZ
 5Xq3ds76YkQA==
X-IronPort-AV: E=McAfee;i="6000,8403,9715"; a="172664636"
X-IronPort-AV: E=Sophos;i="5.76,321,1592895600"; 
   d="gz'50?scan'50,208,50";a="172664636"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Aug 2020 15:44:22 -0700
IronPort-SDR: qiGXUhNkGLyztMm9ZQyki4HwtzWhlPafFK/ees5ZUHeMA24PHdjz85/BwjkfUWIrOT9rkG5bc2
 Tciwe3hzno9Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,321,1592895600"; 
   d="gz'50?scan'50,208,50";a="399979824"
Received: from lkp-server02.sh.intel.com (HELO 2f0d8b563e65) ([10.239.97.151])
  by fmsmga001.fm.intel.com with ESMTP; 16 Aug 2020 15:44:20 -0700
Received: from kbuild by 2f0d8b563e65 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1k7RO0-0000Ft-2m; Sun, 16 Aug 2020 22:44:20 +0000
Date: Mon, 17 Aug 2020 06:43:29 +0800
From: kernel test robot <lkp@intel.com>
To: Lukasz Luba <lukasz.luba@arm.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	"Rafael J. Wysocki" <rjw@rjwysocki.net>
Subject: include/linux/sched/topology.h:237:9: error: implicit declaration of
 function 'cpu_logical_map'
Message-ID: <202008170623.tYjq1wEa%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="M9NhX3UHpAaciwkO"
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


--M9NhX3UHpAaciwkO
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Lukasz,

FYI, the error/warning still remains.

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   9123e3a74ec7b934a4a099e98af6a61c2f80bbf5
commit: 1bc138c622959979eb547be2d3bbc6442a5c80b0 PM / EM: add support for other devices than CPUs in Energy Model
date:   8 weeks ago
config: mips-randconfig-r001-20200817 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project ab9fc8bae805c785066779e76e7846aabad5609e)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install mips cross compiling tool for clang build
        # apt-get install binutils-mips-linux-gnu
        git checkout 1bc138c622959979eb547be2d3bbc6442a5c80b0
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=mips 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

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
   include/linux/llist.h:222:9: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
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
   In file included from arch/mips/kernel/asm-offsets.c:15:
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
   In file included from arch/mips/kernel/asm-offsets.c:17:
   In file included from include/linux/suspend.h:5:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:22:
   In file included from include/linux/writeback.h:14:
   In file included from include/linux/blk-cgroup.h:23:
   In file included from include/linux/blkdev.h:11:
   In file included from include/linux/genhd.h:36:
   In file included from include/linux/device.h:16:
   In file included from include/linux/energy_model.h:10:
>> include/linux/sched/topology.h:237:9: error: implicit declaration of function 'cpu_logical_map' [-Werror,-Wimplicit-function-declaration]
           return cpu_to_node(task_cpu(p));
                  ^
   arch/mips/include/asm/mach-loongson64/topology.h:7:27: note: expanded from macro 'cpu_to_node'
   #define cpu_to_node(cpu)        (cpu_logical_map(cpu) >> 2)
                                    ^
   In file included from arch/mips/kernel/asm-offsets.c:24:
   include/linux/kvm_host.h:332:9: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
           return cmpxchg(&vcpu->mode, IN_GUEST_MODE, EXITING_GUEST_MODE);
                  ^
   arch/mips/include/asm/cmpxchg.h:194:7: note: expanded from macro 'cmpxchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from arch/mips/kernel/asm-offsets.c:24:
   include/linux/kvm_host.h:332:9: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
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
   22 warnings and 4 errors generated.
   make[2]: *** [scripts/Makefile.build:114: arch/mips/kernel/asm-offsets.s] Error 1
   make[2]: Target 'missing-syscalls' not remade because of errors.
   make[1]: *** [arch/mips/Makefile:397: archprepare] Error 2
   make[1]: Target 'prepare' not remade because of errors.
   make: *** [Makefile:185: __sub-make] Error 2
   make: Target 'prepare' not remade because of errors.

# https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=1bc138c622959979eb547be2d3bbc6442a5c80b0
git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
git fetch --no-tags linus master
git checkout 1bc138c622959979eb547be2d3bbc6442a5c80b0
vim +/cpu_logical_map +237 include/linux/sched/topology.h

36a0df85d2e85e1 Thara Gopinath 2020-02-21  234  
ee6a3d19f15b9b1 Ingo Molnar    2017-02-06  235  static inline int task_node(const struct task_struct *p)
ee6a3d19f15b9b1 Ingo Molnar    2017-02-06  236  {
ee6a3d19f15b9b1 Ingo Molnar    2017-02-06 @237  	return cpu_to_node(task_cpu(p));
ee6a3d19f15b9b1 Ingo Molnar    2017-02-06  238  }
ee6a3d19f15b9b1 Ingo Molnar    2017-02-06  239  

:::::: The code at line 237 was first introduced by commit
:::::: ee6a3d19f15b9b10075481088b8d4537f286d7b4 sched/headers: Remove the <linux/topology.h> include from <linux/sched.h>

:::::: TO: Ingo Molnar <mingo@kernel.org>
:::::: CC: Ingo Molnar <mingo@kernel.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202008170623.tYjq1wEa%25lkp%40intel.com.

--M9NhX3UHpAaciwkO
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--M9NhX3UHpAaciwkO--
