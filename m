Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBOM77D7AKGQEN26JQHQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 97E4A2DF007
	for <lists+clang-built-linux@lfdr.de>; Sat, 19 Dec 2020 15:35:38 +0100 (CET)
Received: by mail-pg1-x53a.google.com with SMTP id 18sf3566562pgf.19
        for <lists+clang-built-linux@lfdr.de>; Sat, 19 Dec 2020 06:35:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608388537; cv=pass;
        d=google.com; s=arc-20160816;
        b=UZyxJjCoqhdTXLYCr5BxsCteLaJ+JyD9GcFoKysbYh20ucTlAeaUCvRwwcJfEU+3WK
         gfDQxto7+CH3c4QLOYFwJQX8LvGW6d/zGAQUGI4kJ2W37uezjHOWeOPP2+6UGxVRJD2/
         lqfh2SP4vMlwTv5Ocl5zRVZ02hCi+oyWn46SPx0aDKa8hkbLLNjIhaTeOcPmLbNGOC8F
         JCsGt5c3/1hPLMzAGsttflKX191xwYy8chRJQSiWfh9vCdEAyH5zMgNzqsQCjqm/4JjF
         mSZtMMxrw4YYjfaHdCob+u+/M5KiYUj1kE/KAaZVAHcJyjfX6LP/A7CC2Eaj/Ld6cdZk
         LV1Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=87hkE0QG0+HwPKEah8U7kjjzjQ1EuvHfA+h0tUXAi5k=;
        b=ZbV7q1IAwyVXPEZFunFeJzDa4VgJ6HaNlOV3cH1JXfp71P+Z3+juv3E8vhMq86OY57
         qw47KvhuWHXS+mrsa4NO841wnNlMCo8E+PtRYwtXbGyDL22Lym7XPXLBDTMxM8z/5Zte
         U8j+2qZQ05vcKCX/YcSi+Odys7uGRMSZMV5eIEfvEOoP1z+FAkZal2y010SGicGAsD3L
         g7j73VBOkrLK0idssnnGj3HKIdz8ywPszS835vxlu+mCZVwqLPga9h1sPL2YT+b5kWxT
         +CbGEqzWPZRHNpXWn9ur+FoDp94Etp94uby5Wm4qp+I7zjUCYlCDuvYOA2www7InXRxR
         LstA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=87hkE0QG0+HwPKEah8U7kjjzjQ1EuvHfA+h0tUXAi5k=;
        b=YAstavEbmPbdjqKTYtJnVJUb2szDQEo9NrgZf+/Mo7zrrolsjvD/jyPFWmOeaKR9Ny
         JNfh1QqH861zXCRuq1/orOUQNEWtMUDcfd73vtzlzCk+5gtvjuVHjYa0EP4CteWdkgeD
         aY12ixUtpYBOmiiTVyxzFfaGms29XF4dd5lrELjUGc2wgLK2tGmTCEFX87BVtj0OahwT
         veOxftyclPQz+d/ya81+NsUZ0++BsYI3lATCXdLmIxVrUEgcUDjUlE9aNlUaur2J7nd4
         ly8u+qBimdiQk4i6QX3VwvqcQxd0HnAqElp0jMlgIrUAbg6yJVe0fZxSsIa/RNMvbBH1
         be4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=87hkE0QG0+HwPKEah8U7kjjzjQ1EuvHfA+h0tUXAi5k=;
        b=Ek6a2VxQ/QwEUMRF3E/f3WXca554+qNy2JrgAs57a/SdkHTN/8VUUmMpUBOPxPmnrw
         hqEnehVZhybaWtxOA0rpsbMtK1XYG7ZlrVkxV1Wd34/OvUNgYGPRHAwMWFXxGu8m7YRK
         fq2sMerPDg0nb3VYYZdYFDEk2t/yPs7J22iDaZd50tSC5XKYqTHwVWL4z6o4CZRSd1Wf
         pnJaJzX0T975Fug2YjjmcutuyJyjoiCG+yYSti1XVnz+V6xHn8rcMFagSURTo8ZjiQCB
         3M3QTGlL3v5gmtXEoiAmWG5Mongn0QsF+SCA3VYn4fNHl8G3yJJKcDFoiWPSZAeOYhi2
         TsfQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531ukBuicVxjDH7VRHVz05xRwe14ykstIV47G+GM3NDtiWC51ouk
	RQ+PiuANlEqW0UKgPcd/Fkw=
X-Google-Smtp-Source: ABdhPJy6eaQ+pqA0Q8MQ3WJI7uVgUun3D8mbOz58IOKtiQOGpUhcmlhxp9tODGQoj7vCLTV8YN7jvQ==
X-Received: by 2002:a63:fc5b:: with SMTP id r27mr8431563pgk.100.1608388537171;
        Sat, 19 Dec 2020 06:35:37 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:9550:: with SMTP id w16ls13187794pfq.0.gmail; Sat, 19
 Dec 2020 06:35:36 -0800 (PST)
X-Received: by 2002:aa7:959a:0:b029:1a1:ffc5:531d with SMTP id z26-20020aa7959a0000b02901a1ffc5531dmr8477881pfj.27.1608388536243;
        Sat, 19 Dec 2020 06:35:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608388536; cv=none;
        d=google.com; s=arc-20160816;
        b=Klu9lUBoNnKFYJWEFIJwP3YsyOSpqHmT23J7TKIojm+eOWJy1A5UIfkvIGzoztPZQU
         TpJow60WT1FEaprflDcj/+2DRdU5qZkjDAUuWW7UqHiPes46TQ8xIkXA5Z/pNwp6AGD6
         OY662Fn5KMmpQ3Jg5+tn3C5FoEDMw92J49Vbp8TJsyJBk10AOfKRlfxN8NsxgxrKqT7N
         tBWHlGIVnDe+l30DZ2tSbheeO+omNmfFGWmeHsdX4r2RhMSiQfy1AUqBa99OH9r0YbEj
         Htk7W79Vf84bG6RNLYLiHgnJfl5yQXRa3LcyrFfpBoicam2VfR+VDS0zxqciOvgqCM3e
         K30A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=gS7BFegQxe0XNSbk26OhSRBS3iTNgW/OQ8g+RQYhAOY=;
        b=qEcZNkx4gvWNtmj8mZewLBP2a/iJjSO+d8UJGCnp++ZAl9FjJ9XSBztuDL6Sl2boEx
         3ZS3yLtVQ2RZPQuHB9tTh6dTjfIwqBNTcRjSwJl200XnzXh/KUxYiWBLnmRVgY+DMik7
         /CuI+wb/6oTZuLzHOlrQx94yNn3hPtzVoiDnTIr96mIzFdvE8Jz3Tj8jCvvkqLobDWfD
         qjis6mO+bM/nwd9wP1vlBvc5W+pR+kUE6pK9QbuxXVMnN+1eRhoKfFBdFJn8g40m9RT5
         ZyF5IhDid6JBzMS/wG9pNli6KQco/llWAk2S0wXgyYpL10vcBjSi1iKBXuaRQehW0Gcp
         42dA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga01.intel.com (mga01.intel.com. [192.55.52.88])
        by gmr-mx.google.com with ESMTPS id kr15si742889pjb.2.2020.12.19.06.35.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 19 Dec 2020 06:35:36 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) client-ip=192.55.52.88;
IronPort-SDR: cqr59LGl/XQdir5NJU+VF/aDHUKAzlPYD+adnczu6wIoxSRIOZuANF8SlqQ6cNWwpa7GT+phex
 4I6qZ40KF8uA==
X-IronPort-AV: E=McAfee;i="6000,8403,9839"; a="193993244"
X-IronPort-AV: E=Sophos;i="5.78,433,1599548400"; 
   d="gz'50?scan'50,208,50";a="193993244"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Dec 2020 06:35:35 -0800
IronPort-SDR: Pm789x99Vgw1JqtLB386pO1ND38hBXhJdckBr6btDEaryYvKGts8anrAC+bUNc9ynhmGHy1AV7
 l9oHo+Ivprmg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,433,1599548400"; 
   d="gz'50?scan'50,208,50";a="394560746"
Received: from lkp-server02.sh.intel.com (HELO c4fb2a2464e8) ([10.239.97.151])
  by FMSMGA003.fm.intel.com with ESMTP; 19 Dec 2020 06:35:33 -0800
Received: from kbuild by c4fb2a2464e8 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kqdKX-0000me-3B; Sat, 19 Dec 2020 14:35:33 +0000
Date: Sat, 19 Dec 2020 22:34:47 +0800
From: kernel test robot <lkp@intel.com>
To: Mark Rutland <mark.rutland@arm.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Peter Zijlstra <peterz@infradead.org>
Subject: [peterz-queue:locking/core 23/23]
 include/linux/context_tracking.h:176:2: error: implicit declaration of
 function 'check_bogus_irq_restore'
Message-ID: <202012192242.B6CAxq47-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="rwEMma7ioTxnRzrJ"
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


--rwEMma7ioTxnRzrJ
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/peterz/queue.git locking/core
head:   0182cedcf7301c3d8659a10f04326945518f8652
commit: 0182cedcf7301c3d8659a10f04326945518f8652 [23/23] lockdep: report broken irq restoration
config: arm64-randconfig-r025-20201217 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project cee1e7d14f4628d6174b33640d502bff3b54ae45)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install arm64 cross compiling tool for clang build
        # apt-get install binutils-aarch64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/peterz/queue.git/commit/?id=0182cedcf7301c3d8659a10f04326945518f8652
        git remote add peterz-queue https://git.kernel.org/pub/scm/linux/kernel/git/peterz/queue.git
        git fetch --no-tags peterz-queue locking/core
        git checkout 0182cedcf7301c3d8659a10f04326945518f8652
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   In file included from arch/arm64/kernel/asm-offsets.c:10:
   In file included from include/linux/arm_sdei.h:8:
   In file included from include/acpi/ghes.h:5:
   In file included from include/acpi/apei.h:9:
   In file included from include/linux/acpi.h:13:
   In file included from include/linux/irqdomain.h:35:
   In file included from include/linux/of.h:17:
   In file included from include/linux/kobject.h:20:
   In file included from include/linux/sysfs.h:16:
   In file included from include/linux/kernfs.h:13:
   In file included from include/linux/idr.h:15:
   In file included from include/linux/radix-tree.h:17:
   In file included from include/linux/spinlock.h:318:
   include/linux/spinlock_api_smp.h:160:2: error: implicit declaration of function 'check_bogus_irq_restore' [-Werror,-Wimplicit-function-declaration]
           local_irq_restore(flags);
           ^
   include/linux/irqflags.h:212:3: note: expanded from macro 'local_irq_restore'
                   raw_local_irq_restore(flags);           \
                   ^
   include/linux/irqflags.h:165:3: note: expanded from macro 'raw_local_irq_restore'
                   check_bogus_irq_restore();              \
                   ^
   In file included from arch/arm64/kernel/asm-offsets.c:10:
   In file included from include/linux/arm_sdei.h:8:
   In file included from include/acpi/ghes.h:5:
   In file included from include/acpi/apei.h:9:
   In file included from include/linux/acpi.h:13:
   In file included from include/linux/irqdomain.h:35:
   In file included from include/linux/of.h:17:
   In file included from include/linux/kobject.h:20:
   In file included from include/linux/sysfs.h:16:
   In file included from include/linux/kernfs.h:13:
   In file included from include/linux/idr.h:15:
   In file included from include/linux/radix-tree.h:17:
   In file included from include/linux/spinlock.h:318:
   In file included from include/linux/spinlock_api_smp.h:190:
   include/linux/rwlock_api_smp.h:235:2: error: implicit declaration of function 'check_bogus_irq_restore' [-Werror,-Wimplicit-function-declaration]
           local_irq_restore(flags);
           ^
   include/linux/irqflags.h:212:3: note: expanded from macro 'local_irq_restore'
                   raw_local_irq_restore(flags);           \
                   ^
   include/linux/irqflags.h:165:3: note: expanded from macro 'raw_local_irq_restore'
                   check_bogus_irq_restore();              \
                   ^
   In file included from arch/arm64/kernel/asm-offsets.c:10:
   In file included from include/linux/arm_sdei.h:8:
   In file included from include/acpi/ghes.h:5:
   In file included from include/acpi/apei.h:9:
   In file included from include/linux/acpi.h:13:
   In file included from include/linux/irqdomain.h:35:
   In file included from include/linux/of.h:17:
   In file included from include/linux/kobject.h:20:
   In file included from include/linux/sysfs.h:16:
   In file included from include/linux/kernfs.h:13:
   In file included from include/linux/idr.h:15:
   In file included from include/linux/radix-tree.h:17:
   In file included from include/linux/spinlock.h:318:
   In file included from include/linux/spinlock_api_smp.h:190:
   include/linux/rwlock_api_smp.h:259:2: error: implicit declaration of function 'check_bogus_irq_restore' [-Werror,-Wimplicit-function-declaration]
           local_irq_restore(flags);
           ^
   include/linux/irqflags.h:212:3: note: expanded from macro 'local_irq_restore'
                   raw_local_irq_restore(flags);           \
                   ^
   include/linux/irqflags.h:165:3: note: expanded from macro 'raw_local_irq_restore'
                   check_bogus_irq_restore();              \
                   ^
   In file included from arch/arm64/kernel/asm-offsets.c:10:
   In file included from include/linux/arm_sdei.h:8:
   In file included from include/acpi/ghes.h:5:
   In file included from include/acpi/apei.h:9:
   In file included from include/linux/acpi.h:13:
   In file included from include/linux/irqdomain.h:35:
   In file included from include/linux/of.h:17:
   In file included from include/linux/kobject.h:20:
   In file included from include/linux/sysfs.h:16:
   In file included from include/linux/kernfs.h:13:
   In file included from include/linux/idr.h:15:
   In file included from include/linux/radix-tree.h:19:
   In file included from include/linux/xarray.h:14:
   In file included from include/linux/gfp.h:6:
   In file included from include/linux/mmzone.h:16:
   include/linux/seqlock.h:105:2: error: implicit declaration of function 'check_bogus_irq_restore' [-Werror,-Wimplicit-function-declaration]
           local_irq_restore(flags);
           ^
   include/linux/irqflags.h:212:3: note: expanded from macro 'local_irq_restore'
                   raw_local_irq_restore(flags);           \
                   ^
   include/linux/irqflags.h:165:3: note: expanded from macro 'raw_local_irq_restore'
                   check_bogus_irq_restore();              \
                   ^
   In file included from arch/arm64/kernel/asm-offsets.c:14:
   In file included from include/linux/kvm_host.h:24:
>> include/linux/context_tracking.h:176:2: error: implicit declaration of function 'check_bogus_irq_restore' [-Werror,-Wimplicit-function-declaration]
           local_irq_restore(flags);
           ^
   include/linux/irqflags.h:212:3: note: expanded from macro 'local_irq_restore'
                   raw_local_irq_restore(flags);           \
                   ^
   include/linux/irqflags.h:165:3: note: expanded from macro 'raw_local_irq_restore'
                   check_bogus_irq_restore();              \
                   ^
   In file included from arch/arm64/kernel/asm-offsets.c:14:
   In file included from include/linux/kvm_host.h:36:
   In file included from arch/arm64/include/asm/kvm_host.h:37:
   In file included from include/kvm/arm_pmu.h:10:
   In file included from include/linux/perf_event.h:57:
   In file included from include/linux/cgroup.h:26:
   In file included from include/linux/kernel_stat.h:9:
   include/linux/interrupt.h:457:2: error: implicit declaration of function 'check_bogus_irq_restore' [-Werror,-Wimplicit-function-declaration]
           local_irq_restore(*flags);
           ^
   include/linux/irqflags.h:212:3: note: expanded from macro 'local_irq_restore'
                   raw_local_irq_restore(flags);           \
                   ^
   include/linux/irqflags.h:165:3: note: expanded from macro 'raw_local_irq_restore'
                   check_bogus_irq_restore();              \
                   ^
   In file included from arch/arm64/kernel/asm-offsets.c:16:
   In file included from include/linux/suspend.h:5:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:22:
   In file included from include/linux/writeback.h:11:
   include/linux/flex_proportions.h:70:2: error: implicit declaration of function 'check_bogus_irq_restore' [-Werror,-Wimplicit-function-declaration]
           local_irq_restore(flags);
           ^
   include/linux/irqflags.h:212:3: note: expanded from macro 'local_irq_restore'
                   raw_local_irq_restore(flags);           \
                   ^
   include/linux/irqflags.h:165:3: note: expanded from macro 'raw_local_irq_restore'
                   check_bogus_irq_restore();              \
                   ^
   In file included from arch/arm64/kernel/asm-offsets.c:16:
   In file included from include/linux/suspend.h:5:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:22:
   In file included from include/linux/writeback.h:11:
   include/linux/flex_proportions.h:100:2: error: implicit declaration of function 'check_bogus_irq_restore' [-Werror,-Wimplicit-function-declaration]
           local_irq_restore(flags);
           ^
   include/linux/irqflags.h:212:3: note: expanded from macro 'local_irq_restore'
                   raw_local_irq_restore(flags);           \
                   ^
   include/linux/irqflags.h:165:3: note: expanded from macro 'raw_local_irq_restore'
                   check_bogus_irq_restore();              \
                   ^
   8 errors generated.
--
   In file included from arch/arm64/kernel/asm-offsets.c:10:
   In file included from include/linux/arm_sdei.h:8:
   In file included from include/acpi/ghes.h:5:
   In file included from include/acpi/apei.h:9:
   In file included from include/linux/acpi.h:13:
   In file included from include/linux/irqdomain.h:35:
   In file included from include/linux/of.h:17:
   In file included from include/linux/kobject.h:20:
   In file included from include/linux/sysfs.h:16:
   In file included from include/linux/kernfs.h:13:
   In file included from include/linux/idr.h:15:
   In file included from include/linux/radix-tree.h:17:
   In file included from include/linux/spinlock.h:318:
   include/linux/spinlock_api_smp.h:160:2: error: implicit declaration of function 'check_bogus_irq_restore' [-Werror,-Wimplicit-function-declaration]
           local_irq_restore(flags);
           ^
   include/linux/irqflags.h:212:3: note: expanded from macro 'local_irq_restore'
                   raw_local_irq_restore(flags);           \
                   ^
   include/linux/irqflags.h:165:3: note: expanded from macro 'raw_local_irq_restore'
                   check_bogus_irq_restore();              \
                   ^
   In file included from arch/arm64/kernel/asm-offsets.c:10:
   In file included from include/linux/arm_sdei.h:8:
   In file included from include/acpi/ghes.h:5:
   In file included from include/acpi/apei.h:9:
   In file included from include/linux/acpi.h:13:
   In file included from include/linux/irqdomain.h:35:
   In file included from include/linux/of.h:17:
   In file included from include/linux/kobject.h:20:
   In file included from include/linux/sysfs.h:16:
   In file included from include/linux/kernfs.h:13:
   In file included from include/linux/idr.h:15:
   In file included from include/linux/radix-tree.h:17:
   In file included from include/linux/spinlock.h:318:
   In file included from include/linux/spinlock_api_smp.h:190:
   include/linux/rwlock_api_smp.h:235:2: error: implicit declaration of function 'check_bogus_irq_restore' [-Werror,-Wimplicit-function-declaration]
           local_irq_restore(flags);
           ^
   include/linux/irqflags.h:212:3: note: expanded from macro 'local_irq_restore'
                   raw_local_irq_restore(flags);           \
                   ^
   include/linux/irqflags.h:165:3: note: expanded from macro 'raw_local_irq_restore'
                   check_bogus_irq_restore();              \
                   ^
   In file included from arch/arm64/kernel/asm-offsets.c:10:
   In file included from include/linux/arm_sdei.h:8:
   In file included from include/acpi/ghes.h:5:
   In file included from include/acpi/apei.h:9:
   In file included from include/linux/acpi.h:13:
   In file included from include/linux/irqdomain.h:35:
   In file included from include/linux/of.h:17:
   In file included from include/linux/kobject.h:20:
   In file included from include/linux/sysfs.h:16:
   In file included from include/linux/kernfs.h:13:
   In file included from include/linux/idr.h:15:
   In file included from include/linux/radix-tree.h:17:
   In file included from include/linux/spinlock.h:318:
   In file included from include/linux/spinlock_api_smp.h:190:
   include/linux/rwlock_api_smp.h:259:2: error: implicit declaration of function 'check_bogus_irq_restore' [-Werror,-Wimplicit-function-declaration]
           local_irq_restore(flags);
           ^
   include/linux/irqflags.h:212:3: note: expanded from macro 'local_irq_restore'
                   raw_local_irq_restore(flags);           \
                   ^
   include/linux/irqflags.h:165:3: note: expanded from macro 'raw_local_irq_restore'
                   check_bogus_irq_restore();              \
                   ^
   In file included from arch/arm64/kernel/asm-offsets.c:10:
   In file included from include/linux/arm_sdei.h:8:
   In file included from include/acpi/ghes.h:5:
   In file included from include/acpi/apei.h:9:
   In file included from include/linux/acpi.h:13:
   In file included from include/linux/irqdomain.h:35:
   In file included from include/linux/of.h:17:
   In file included from include/linux/kobject.h:20:
   In file included from include/linux/sysfs.h:16:
   In file included from include/linux/kernfs.h:13:
   In file included from include/linux/idr.h:15:
   In file included from include/linux/radix-tree.h:19:
   In file included from include/linux/xarray.h:14:
   In file included from include/linux/gfp.h:6:
   In file included from include/linux/mmzone.h:16:
   include/linux/seqlock.h:105:2: error: implicit declaration of function 'check_bogus_irq_restore' [-Werror,-Wimplicit-function-declaration]
           local_irq_restore(flags);
           ^
   include/linux/irqflags.h:212:3: note: expanded from macro 'local_irq_restore'
                   raw_local_irq_restore(flags);           \
                   ^
   include/linux/irqflags.h:165:3: note: expanded from macro 'raw_local_irq_restore'
                   check_bogus_irq_restore();              \
                   ^
   In file included from arch/arm64/kernel/asm-offsets.c:14:
   In file included from include/linux/kvm_host.h:24:
>> include/linux/context_tracking.h:176:2: error: implicit declaration of function 'check_bogus_irq_restore' [-Werror,-Wimplicit-function-declaration]
           local_irq_restore(flags);
           ^
   include/linux/irqflags.h:212:3: note: expanded from macro 'local_irq_restore'
                   raw_local_irq_restore(flags);           \
                   ^
   include/linux/irqflags.h:165:3: note: expanded from macro 'raw_local_irq_restore'
                   check_bogus_irq_restore();              \
                   ^
   In file included from arch/arm64/kernel/asm-offsets.c:14:
   In file included from include/linux/kvm_host.h:36:
   In file included from arch/arm64/include/asm/kvm_host.h:37:
   In file included from include/kvm/arm_pmu.h:10:
   In file included from include/linux/perf_event.h:57:
   In file included from include/linux/cgroup.h:26:
   In file included from include/linux/kernel_stat.h:9:
   include/linux/interrupt.h:457:2: error: implicit declaration of function 'check_bogus_irq_restore' [-Werror,-Wimplicit-function-declaration]
           local_irq_restore(*flags);
           ^
   include/linux/irqflags.h:212:3: note: expanded from macro 'local_irq_restore'
                   raw_local_irq_restore(flags);           \
                   ^
   include/linux/irqflags.h:165:3: note: expanded from macro 'raw_local_irq_restore'
                   check_bogus_irq_restore();              \
                   ^
   In file included from arch/arm64/kernel/asm-offsets.c:16:
   In file included from include/linux/suspend.h:5:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:22:
   In file included from include/linux/writeback.h:11:
   include/linux/flex_proportions.h:70:2: error: implicit declaration of function 'check_bogus_irq_restore' [-Werror,-Wimplicit-function-declaration]
           local_irq_restore(flags);
           ^
   include/linux/irqflags.h:212:3: note: expanded from macro 'local_irq_restore'
                   raw_local_irq_restore(flags);           \
                   ^
   include/linux/irqflags.h:165:3: note: expanded from macro 'raw_local_irq_restore'
                   check_bogus_irq_restore();              \
                   ^
   In file included from arch/arm64/kernel/asm-offsets.c:16:
   In file included from include/linux/suspend.h:5:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:22:
   In file included from include/linux/writeback.h:11:
   include/linux/flex_proportions.h:100:2: error: implicit declaration of function 'check_bogus_irq_restore' [-Werror,-Wimplicit-function-declaration]
           local_irq_restore(flags);
           ^
   include/linux/irqflags.h:212:3: note: expanded from macro 'local_irq_restore'
                   raw_local_irq_restore(flags);           \
                   ^
   include/linux/irqflags.h:165:3: note: expanded from macro 'raw_local_irq_restore'
                   check_bogus_irq_restore();              \
                   ^
   8 errors generated.
   make[2]: *** [scripts/Makefile.build:117: arch/arm64/kernel/asm-offsets.s] Error 1
   make[2]: Target '__build' not remade because of errors.
   make[1]: *** [Makefile:1198: prepare0] Error 2
   make[1]: Target 'prepare' not remade because of errors.
   make: *** [Makefile:185: __sub-make] Error 2
   make: Target 'prepare' not remade because of errors.


vim +/check_bogus_irq_restore +176 include/linux/context_tracking.h

91d1aa43d30505b Frederic Weisbecker 2012-11-27  169  
ebaac1736245e78 Paolo Bonzini       2016-06-15  170  static inline void guest_exit(void)
ebaac1736245e78 Paolo Bonzini       2016-06-15  171  {
ebaac1736245e78 Paolo Bonzini       2016-06-15  172  	unsigned long flags;
ebaac1736245e78 Paolo Bonzini       2016-06-15  173  
ebaac1736245e78 Paolo Bonzini       2016-06-15  174  	local_irq_save(flags);
ebaac1736245e78 Paolo Bonzini       2016-06-15  175  	guest_exit_irqoff();
ebaac1736245e78 Paolo Bonzini       2016-06-15 @176  	local_irq_restore(flags);
ebaac1736245e78 Paolo Bonzini       2016-06-15  177  }
ebaac1736245e78 Paolo Bonzini       2016-06-15  178  

:::::: The code at line 176 was first introduced by commit
:::::: ebaac1736245e78109cd47d453a86a18dcfc94b8 context_tracking: move rcu_virt_note_context_switch out of kvm_host.h

:::::: TO: Paolo Bonzini <pbonzini@redhat.com>
:::::: CC: Paolo Bonzini <pbonzini@redhat.com>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202012192242.B6CAxq47-lkp%40intel.com.

--rwEMma7ioTxnRzrJ
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--rwEMma7ioTxnRzrJ--
