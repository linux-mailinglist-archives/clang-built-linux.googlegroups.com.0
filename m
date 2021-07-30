Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBSGHR2EAMGQET2W7BEI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33a.google.com (mail-ot1-x33a.google.com [IPv6:2607:f8b0:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id 406403DB424
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Jul 2021 09:01:30 +0200 (CEST)
Received: by mail-ot1-x33a.google.com with SMTP id z11-20020a056830290bb02904d1d78ee61csf3383077otu.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Jul 2021 00:01:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627628489; cv=pass;
        d=google.com; s=arc-20160816;
        b=c50OIbLKLjHg1fNLPoBrWbCSozJBU3FZmrWLFAFzjw92EWif5NaYXp0aBiHjeqp0Tb
         T2ty/kqokaEsaHI1QiBvGFPv3nMkYXsIIn+zbUlD4x6kTuyFUNS38pTOuAsTZ+5qA3Yf
         E7X7Lt4J0gQUSxb4O5SP+YWKU5TlTv8P7mcovOOxbdztAKdW1Gbhv90eauYHxJzOB1kn
         /r7x4qfdYmEQVxcJ24PloA9ROo82uW4StgD5/seltiIK4pW6YR31WX7vcmLRVaQYv73w
         2mh2ieMUOrviiDo0DNgOiQroxR0dKEC3Fzh/qccK/3XEHZKaB5osGp/BiNJ8Ck+QoFpU
         xUkA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=IsPZYTGAIASKF6JnWaN0VjIFeoXDb+CQzaIuMIA6fpw=;
        b=VZ2+9gCwf0ZCyLlQ5Hqdg1oe6q5eQ+kEq1xXkh1MmXE3Q1/isbl+cPiNmwyNFqS+HC
         UqOIJoP8ex2aiS99+5mQ4NxrbuwrZCvQuE4P9XHWR7qAabL+CLNpna4VvLafIwOG7p9x
         8KqvUxspyb9dWcYHAu1+RECKc+gU6FJNzFS8Tg8uB2ciJYdFiUNum2EKCBrrhyu5arRh
         YKOJePc+scr0QycEZmHtw4KRAoWEeAKjQ3CfbcEqiiFciR+fgou83/KKvsFNXf2RB/Yu
         705P5ExUaO6ZUOlPNs70aL8Q1xugYcjTzpYpSq+hsu8KKHxFRsA3BXmg3DHExWR8UHsy
         hfWg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=IsPZYTGAIASKF6JnWaN0VjIFeoXDb+CQzaIuMIA6fpw=;
        b=jDbN3hl0/Zv3f/LktLl6dQW02Ax5XcvtgjJ45KpJ8FmFrn1Q46sXBmMcjBP7A44fOG
         jqW1/vIHeiz5JFfho1tlDd+w+bQ2lmFZdxcXRXv6Sufs6p8KirUvNzj4toebdFTPiiwk
         kAqkYNRznHDspg43IuCooG8paZjAwoaBafaevdjMji6tj4qFaF43BFbSlQta36+Z0SHo
         G2Cn2VLyVL0Ru4lYk5pmsCsueMjRFZU1y4OK+4w814fpnI5fVelE/BtCJf9Wwo8vt6N7
         PXor9SlxkdbQNwuEjegq6XD+FnsHLMHtrYg3zQLRfc4csvIoz0kj+PG1R7+cINOzKYI8
         iKWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IsPZYTGAIASKF6JnWaN0VjIFeoXDb+CQzaIuMIA6fpw=;
        b=BzYC0QpF62BU3EQKxeAkgS2b6RfiHQ7KNu260n28nQ/FFQU7Q+Abdfwpn1brkDl+Af
         WEsz4peJkrZdeQ4ex9C8zCypknd/F9FmOv1v5Ia2kQ2i80zvToaQ0ftd8N/rgBes76KE
         slG6N+SQxycpSI845Q2bU/vyu2WA9dtO+O1K4LGhw6OJ2gpHvysyS+yJWCUXs7TJMSpL
         A9elABsSG6VgehVefXmQH23axWB8rg5Ctb6c10s6eiVyOoU2Hv3jyWfvbOyaYLTi/C6b
         AjVMOYFfbD8OSAR1ldzvaRFz0e3E9mOthgOvSzbKMq8k4ik092oASs+iecRw2G+h88UZ
         yQig==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530S/PFGCiKQF6az2XCKyPwsTI2AiHIiT/7c3BmD/Beeh1XHPeU2
	okhzZjq+FHoKrv6fNCJaEAI=
X-Google-Smtp-Source: ABdhPJx6AMA1wXdGPKAp8NgB/lRSHeAzhvdcqguK21zeet7ncl9zDq96UVbuZzKZsoXxfgbviRIqSQ==
X-Received: by 2002:a05:6808:6cc:: with SMTP id m12mr904291oih.51.1627628488898;
        Fri, 30 Jul 2021 00:01:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:7c1:: with SMTP id 59ls190109oto.8.gmail; Fri, 30 Jul
 2021 00:01:28 -0700 (PDT)
X-Received: by 2002:a05:6830:18e5:: with SMTP id d5mr1007423otf.30.1627628488293;
        Fri, 30 Jul 2021 00:01:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627628488; cv=none;
        d=google.com; s=arc-20160816;
        b=o0khi/TsKDUy97boxCrZfguix9JvrKRM/R8UyDbit49w6B1dI4TY3wCJ4yRnXgbNpE
         rUnJnULTYB3YE/VQ/yBEorR4+M29PkORI/QZ9dzGSvItvFeieIpM/3nmGkW8JA2LITb1
         GxKYeqcoeHmQkmpPAT41RCFU8BEa7LSzPeSjF56c63GaXEN7XMAKAvIEKx7UCk0CYOhY
         7BB9MAeqvf3jctu4VQmKKQFN5NWFnQ2CB1tyOwMqCl5uzdvocaiYUoeZltP61uCJpWiw
         LN+JhRf2ZgHzo3W9YzdEvZn4UMdbbGuFolwgi0dsLJwW9IFuBKpP0vO9v8Ov2OA/Yqgc
         GvRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=VT5IgKVbxWMxqy5g8HyrcOhDca7+rA0EtbfQ48DBaCw=;
        b=uWgSGduxByFdlCME8Q6aUF7xnySxiRmbkv6d+l63ZOOVKPvUZSGYnbSSuMtFrzHsvW
         5vrcdT/lyivPevbH0ZyPscuxshsmSKR3p/7d9OK3Gpxc3uB3M5X8dFe322YlCpA9GnFE
         A/yuwIFsMT6c/HzFgyDI8JylFZQ1vdGT1K7Jc626WYL5P74G1q+t353QGfX1F4Go27wH
         VIhlAV0vC694Ql08WNmQTa4nMPCTvRsFSvWAJOSTk4Robs+sfhuTB3PFc9qxZ23eB2rb
         SSUvY96tEKYOkIcQ5m/cmH09veeUQPXzwMf4oiukpcZzE6QzFrrIpbTNDkoTVE4HHbAi
         hdAA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga01.intel.com (mga01.intel.com. [192.55.52.88])
        by gmr-mx.google.com with ESMTPS id l23si31329otb.2.2021.07.30.00.01.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Jul 2021 00:01:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) client-ip=192.55.52.88;
X-IronPort-AV: E=McAfee;i="6200,9189,10060"; a="234950399"
X-IronPort-AV: E=Sophos;i="5.84,281,1620716400"; 
   d="gz'50?scan'50,208,50";a="234950399"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 Jul 2021 00:01:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,281,1620716400"; 
   d="gz'50?scan'50,208,50";a="476867034"
Received: from lkp-server01.sh.intel.com (HELO d053b881505b) ([10.239.97.150])
  by fmsmga008.fm.intel.com with ESMTP; 30 Jul 2021 00:01:24 -0700
Received: from kbuild by d053b881505b with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1m9MWK-0009hg-3C; Fri, 30 Jul 2021 07:01:24 +0000
Date: Fri, 30 Jul 2021 15:00:47 +0800
From: kernel test robot <lkp@intel.com>
To: Thomas Gleixner <tglx@linutronix.de>
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	linux-kernel@vger.kernel.org, Peter Zijlstra <peterz@infradead.org>
Subject: [peterz-queue:locking/ww_rt_mutex 4/18] lib/test_lockup.c:505:10:
 error: no member named 'rlock' in 'raw_spinlock'
Message-ID: <202107301521.siXALSEA-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="HcAYCG3uE/tztfnV"
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


--HcAYCG3uE/tztfnV
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/peterz/queue.git locking/ww_rt_mutex
head:   513277f3c78127286fd37a34f616801bdcc3aa60
commit: 6b1fb4c05b188aedc0ef03087d0f48a912aa2761 [4/18] locking/mutex: Make mutex::wait_lock raw
config: x86_64-randconfig-a005-20210730 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project c49df15c278857adecd12db6bb1cdc96885f7079)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://git.kernel.org/pub/scm/linux/kernel/git/peterz/queue.git/commit/?id=6b1fb4c05b188aedc0ef03087d0f48a912aa2761
        git remote add peterz-queue https://git.kernel.org/pub/scm/linux/kernel/git/peterz/queue.git
        git fetch --no-tags peterz-queue locking/ww_rt_mutex
        git checkout 6b1fb4c05b188aedc0ef03087d0f48a912aa2761
        # save the attached .config to linux build tree
        mkdir build_dir
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross O=build_dir ARCH=x86_64 SHELL=/bin/bash lib/

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> lib/test_lockup.c:505:10: error: no member named 'rlock' in 'raw_spinlock'
                          offsetof(struct mutex, wait_lock.rlock.magic),
                          ^                               ~~~~~~
   include/linux/stddef.h:17:32: note: expanded from macro 'offsetof'
   #define offsetof(TYPE, MEMBER)  __compiler_offsetof(TYPE, MEMBER)
                                   ^                         ~~~~~~
   include/linux/compiler_types.h:140:35: note: expanded from macro '__compiler_offsetof'
   #define __compiler_offsetof(a, b)       __builtin_offsetof(a, b)
                                           ^                     ~
   1 error generated.


vim +505 lib/test_lockup.c

30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  448  
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  449  static int __init test_lockup_init(void)
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  450  {
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  451  	u64 test_start = local_clock();
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  452  
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  453  	main_task = current;
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  454  
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  455  	switch (state[0]) {
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  456  	case 'S':
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  457  		wait_state = TASK_INTERRUPTIBLE;
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  458  		break;
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  459  	case 'D':
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  460  		wait_state = TASK_UNINTERRUPTIBLE;
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  461  		break;
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  462  	case 'K':
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  463  		wait_state = TASK_KILLABLE;
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  464  		break;
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  465  	case 'R':
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  466  		wait_state = TASK_RUNNING;
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  467  		break;
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  468  	default:
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  469  		pr_err("unknown state=%s\n", state);
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  470  		return -EINVAL;
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  471  	}
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  472  
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  473  	if (alloc_pages_atomic)
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  474  		alloc_pages_gfp = GFP_ATOMIC;
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  475  
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  476  	if (test_kernel_ptr(lock_spinlock_ptr, sizeof(spinlock_t)) ||
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  477  	    test_kernel_ptr(lock_rwlock_ptr, sizeof(rwlock_t)) ||
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  478  	    test_kernel_ptr(lock_mutex_ptr, sizeof(struct mutex)) ||
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  479  	    test_kernel_ptr(lock_rwsem_ptr, sizeof(struct rw_semaphore)))
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  480  		return -EINVAL;
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  481  
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  482  #ifdef CONFIG_DEBUG_SPINLOCK
45e3d5a2af1d53 Sebastian Andrzej Siewior 2020-12-15  483  #ifdef CONFIG_PREEMPT_RT
45e3d5a2af1d53 Sebastian Andrzej Siewior 2020-12-15  484  	if (test_magic(lock_spinlock_ptr,
45e3d5a2af1d53 Sebastian Andrzej Siewior 2020-12-15  485  		       offsetof(spinlock_t, lock.wait_lock.magic),
45e3d5a2af1d53 Sebastian Andrzej Siewior 2020-12-15  486  		       SPINLOCK_MAGIC) ||
45e3d5a2af1d53 Sebastian Andrzej Siewior 2020-12-15  487  	    test_magic(lock_rwlock_ptr,
45e3d5a2af1d53 Sebastian Andrzej Siewior 2020-12-15  488  		       offsetof(rwlock_t, rtmutex.wait_lock.magic),
45e3d5a2af1d53 Sebastian Andrzej Siewior 2020-12-15  489  		       SPINLOCK_MAGIC) ||
45e3d5a2af1d53 Sebastian Andrzej Siewior 2020-12-15  490  	    test_magic(lock_mutex_ptr,
45e3d5a2af1d53 Sebastian Andrzej Siewior 2020-12-15  491  		       offsetof(struct mutex, lock.wait_lock.magic),
45e3d5a2af1d53 Sebastian Andrzej Siewior 2020-12-15  492  		       SPINLOCK_MAGIC) ||
45e3d5a2af1d53 Sebastian Andrzej Siewior 2020-12-15  493  	    test_magic(lock_rwsem_ptr,
45e3d5a2af1d53 Sebastian Andrzej Siewior 2020-12-15  494  		       offsetof(struct rw_semaphore, rtmutex.wait_lock.magic),
45e3d5a2af1d53 Sebastian Andrzej Siewior 2020-12-15  495  		       SPINLOCK_MAGIC))
45e3d5a2af1d53 Sebastian Andrzej Siewior 2020-12-15  496  		return -EINVAL;
45e3d5a2af1d53 Sebastian Andrzej Siewior 2020-12-15  497  #else
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  498  	if (test_magic(lock_spinlock_ptr,
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  499  		       offsetof(spinlock_t, rlock.magic),
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  500  		       SPINLOCK_MAGIC) ||
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  501  	    test_magic(lock_rwlock_ptr,
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  502  		       offsetof(rwlock_t, magic),
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  503  		       RWLOCK_MAGIC) ||
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  504  	    test_magic(lock_mutex_ptr,
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06 @505  		       offsetof(struct mutex, wait_lock.rlock.magic),
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  506  		       SPINLOCK_MAGIC) ||
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  507  	    test_magic(lock_rwsem_ptr,
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  508  		       offsetof(struct rw_semaphore, wait_lock.magic),
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  509  		       SPINLOCK_MAGIC))
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  510  		return -EINVAL;
45e3d5a2af1d53 Sebastian Andrzej Siewior 2020-12-15  511  #endif
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  512  #endif
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  513  
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  514  	if ((wait_state != TASK_RUNNING ||
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  515  	     (call_cond_resched && !reacquire_locks) ||
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  516  	     (alloc_pages_nr && gfpflags_allow_blocking(alloc_pages_gfp))) &&
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  517  	    (test_disable_irq || disable_softirq || disable_preempt ||
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  518  	     lock_rcu || lock_spinlock_ptr || lock_rwlock_ptr)) {
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  519  		pr_err("refuse to sleep in atomic context\n");
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  520  		return -EINVAL;
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  521  	}
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  522  
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  523  	if (lock_mmap_sem && !main_task->mm) {
c1e8d7c6a7a682 Michel Lespinasse         2020-06-08  524  		pr_err("no mm to lock mmap_lock\n");
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  525  		return -EINVAL;
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  526  	}
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  527  
aecd42df6d3993 Konstantin Khlebnikov     2020-04-06  528  	if (test_file_path[0]) {
aecd42df6d3993 Konstantin Khlebnikov     2020-04-06  529  		test_file = filp_open(test_file_path, O_RDONLY, 0);
aecd42df6d3993 Konstantin Khlebnikov     2020-04-06  530  		if (IS_ERR(test_file)) {
3adf3bae0d6123 Tiezhu Yang               2020-08-11  531  			pr_err("failed to open %s: %ld\n", test_file_path, PTR_ERR(test_file));
3adf3bae0d6123 Tiezhu Yang               2020-08-11  532  			return PTR_ERR(test_file);
aecd42df6d3993 Konstantin Khlebnikov     2020-04-06  533  		}
aecd42df6d3993 Konstantin Khlebnikov     2020-04-06  534  		test_inode = file_inode(test_file);
aecd42df6d3993 Konstantin Khlebnikov     2020-04-06  535  	} else if (test_lock_inode ||
aecd42df6d3993 Konstantin Khlebnikov     2020-04-06  536  		   test_lock_mapping ||
aecd42df6d3993 Konstantin Khlebnikov     2020-04-06  537  		   test_lock_sb_umount) {
aecd42df6d3993 Konstantin Khlebnikov     2020-04-06  538  		pr_err("no file to lock\n");
aecd42df6d3993 Konstantin Khlebnikov     2020-04-06  539  		return -EINVAL;
aecd42df6d3993 Konstantin Khlebnikov     2020-04-06  540  	}
aecd42df6d3993 Konstantin Khlebnikov     2020-04-06  541  
aecd42df6d3993 Konstantin Khlebnikov     2020-04-06  542  	if (test_lock_inode && test_inode)
aecd42df6d3993 Konstantin Khlebnikov     2020-04-06  543  		lock_rwsem_ptr = (unsigned long)&test_inode->i_rwsem;
aecd42df6d3993 Konstantin Khlebnikov     2020-04-06  544  
aecd42df6d3993 Konstantin Khlebnikov     2020-04-06  545  	if (test_lock_mapping && test_file && test_file->f_mapping)
aecd42df6d3993 Konstantin Khlebnikov     2020-04-06  546  		lock_rwsem_ptr = (unsigned long)&test_file->f_mapping->i_mmap_rwsem;
aecd42df6d3993 Konstantin Khlebnikov     2020-04-06  547  
aecd42df6d3993 Konstantin Khlebnikov     2020-04-06  548  	if (test_lock_sb_umount && test_inode)
aecd42df6d3993 Konstantin Khlebnikov     2020-04-06  549  		lock_rwsem_ptr = (unsigned long)&test_inode->i_sb->s_umount;
aecd42df6d3993 Konstantin Khlebnikov     2020-04-06  550  
ad3f434b87e7d2 Colin Ian King            2020-04-06  551  	pr_notice("START pid=%d time=%u +%u ns cooldown=%u +%u ns iterations=%u state=%s %s%s%s%s%s%s%s%s%s%s%s\n",
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  552  		  main_task->pid, time_secs, time_nsecs,
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  553  		  cooldown_secs, cooldown_nsecs, iterations, state,
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  554  		  all_cpus ? "all_cpus " : "",
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  555  		  iowait ? "iowait " : "",
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  556  		  test_disable_irq ? "disable_irq " : "",
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  557  		  disable_softirq ? "disable_softirq " : "",
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  558  		  disable_preempt ? "disable_preempt " : "",
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  559  		  lock_rcu ? "lock_rcu " : "",
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  560  		  lock_read ? "lock_read " : "",
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  561  		  touch_softlockup ? "touch_softlockup " : "",
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  562  		  touch_hardlockup ? "touch_hardlockup " : "",
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  563  		  call_cond_resched ? "call_cond_resched " : "",
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  564  		  reacquire_locks ? "reacquire_locks " : "");
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  565  
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  566  	if (alloc_pages_nr)
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  567  		pr_notice("ALLOCATE PAGES nr=%u order=%u gfp=%pGg %s\n",
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  568  			  alloc_pages_nr, alloc_pages_order, &alloc_pages_gfp,
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  569  			  reallocate_pages ? "reallocate_pages " : "");
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  570  
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  571  	if (all_cpus) {
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  572  		unsigned int cpu;
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  573  
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  574  		cpus_read_lock();
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  575  
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  576  		preempt_disable();
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  577  		master_cpu = smp_processor_id();
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  578  		for_each_online_cpu(cpu) {
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  579  			INIT_WORK(per_cpu_ptr(&test_works, cpu), test_work_fn);
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  580  			queue_work_on(cpu, system_highpri_wq,
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  581  				      per_cpu_ptr(&test_works, cpu));
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  582  		}
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  583  		preempt_enable();
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  584  
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  585  		for_each_online_cpu(cpu)
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  586  			flush_work(per_cpu_ptr(&test_works, cpu));
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  587  
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  588  		cpus_read_unlock();
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  589  	} else {
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  590  		test_lockup(true);
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  591  	}
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  592  
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  593  	if (measure_lock_wait)
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  594  		pr_notice("Maximum lock wait: %lld ns\n",
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  595  			  atomic64_read(&max_lock_wait));
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  596  
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  597  	if (alloc_pages_nr)
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  598  		pr_notice("Page allocation failed %u times\n",
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  599  			  atomic_read(&alloc_pages_failed));
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  600  
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  601  	pr_notice("FINISH in %llu ns\n", local_clock() - test_start);
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  602  
aecd42df6d3993 Konstantin Khlebnikov     2020-04-06  603  	if (test_file)
aecd42df6d3993 Konstantin Khlebnikov     2020-04-06  604  		fput(test_file);
aecd42df6d3993 Konstantin Khlebnikov     2020-04-06  605  
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  606  	if (signal_pending(main_task))
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  607  		return -EINTR;
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  608  
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  609  	return -EAGAIN;
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  610  }
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  611  module_init(test_lockup_init);
30428ef5d1e8ca Konstantin Khlebnikov     2020-04-06  612  

:::::: The code at line 505 was first introduced by commit
:::::: 30428ef5d1e8caf78639cc70a802f1cb7b1cec04 lib/test_lockup: test module to generate lockups

:::::: TO: Konstantin Khlebnikov <khlebnikov@yandex-team.ru>
:::::: CC: Linus Torvalds <torvalds@linux-foundation.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202107301521.siXALSEA-lkp%40intel.com.

--HcAYCG3uE/tztfnV
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--HcAYCG3uE/tztfnV--
