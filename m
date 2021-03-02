Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBVXW7GAQMGQE7JBYTOI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53c.google.com (mail-pg1-x53c.google.com [IPv6:2607:f8b0:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id DE86132A88E
	for <lists+clang-built-linux@lfdr.de>; Tue,  2 Mar 2021 18:52:24 +0100 (CET)
Received: by mail-pg1-x53c.google.com with SMTP id e4sf38743pgt.17
        for <lists+clang-built-linux@lfdr.de>; Tue, 02 Mar 2021 09:52:24 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614707543; cv=pass;
        d=google.com; s=arc-20160816;
        b=FziK/Wb6iEjti6jIMJyHP6l3aHG+56FOPazQL68ywB3jiFBPe3XQtMPw5H1p7pJ9QX
         sIlmDvJLkWOGUSmkkTJGpcLGFQwc6fRIYgv28c2Pz1IS7Sv1BhcKdN1cEs1HjN2OyFA9
         QXlAad9X95JNO5J8wenLaRTXaIStARnFndY0CupHUfYjCfzFOw99rftfpELH32MHV3v0
         DDOgP1G/czq6uOy10CfgcPStaztLdGXEGd8K82/U/Emrk2LPkE5z7WEb3n8fZpNQBi8H
         xoeQmIthqDlKukqrYK6gm2OI3zzlxAJrhuUfMvvNoj28Efr6sfF31GvlCF/f6thClWOF
         FWWQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=WKjcm0cMwn+4QZVgto0Pk34skaLE+wX3YGCyKS5gGhs=;
        b=H+vbidOdTYG55UoxLJIkvI+Sg4Mwr/K3DvAZR5r9/R+cnjBR8rUVsOGCQVcto61kNl
         6hZvG2Jo9Or9LFT6k0aS8+Nx0v/eCiZuSl0ShGkZ+tYnMrmG/IFn9vMxj9/d8OBkQXCw
         C3ETU/Yx8g4zdf9DjJjLnhtMNx1IIG3BJmil8YJU9yanaAKJ/Dq5cQw+bQNj4J+Om5E0
         hcon+/mOrVOHorp4mRpPDYF46ZnDo6a9+guqbe++kLQqdugFHAe+5SWgT1Q3bhuSg1tH
         sMm/UWJcTnau3fl2M/d1Q3YdIMfy00AAaLpMeEcRP1f9Z/nHZ/ZTZyIRytE0VpygS/Mg
         +dbA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=WKjcm0cMwn+4QZVgto0Pk34skaLE+wX3YGCyKS5gGhs=;
        b=LbWy924bTBinb94jW1O542+7EZbZs6AxVMJzPMAULK1IzEh5eZZB6mnimKiCM8gSq7
         GL4RvNTsuop2AK6phD5IwiDwMCXRiZIeqQ6sm6qzDsNTKU19hM7MUOeRkfvhEfbdyWVh
         8OysfPzf/FZvSGpVJcLvPT8xWdXA95f39PVSX3ZIDZFcoHWtw0o6a4xg0FA4+nCNXltt
         5TLfqFY5S/eG7vlIBaFeyudryDkgDUj/jQ1QPyf1Nky8X3Qh4HSd1MaoOKmKPMLvQ0hN
         dghPu0fQnpwwA5fprj3YonbtwUCcr1WuNAzk3hvHTpLBqI4kO8Rb80JudvRnRGr/XeNu
         PuLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=WKjcm0cMwn+4QZVgto0Pk34skaLE+wX3YGCyKS5gGhs=;
        b=qm637ACbm5NOkJlqkIF4T8sT2fbkCn0uxPZMDvB071Xt8oKn2l297WHCMsMwm50tCq
         W6DyMiBSWsQgAj0CHEBzdfv+eGNAeXFkuU3mxIhxHpGtY0Cn9dYNunFe/OJErRcyBrbe
         cN/71JPwAg+TO+SOnnGTV2YVpY1WAK6YoN1GiBsD0typy8D9L6mh+C1p6VvUxLGojtxR
         cRw+eopP6a9t8WRwOfOHzT9phZhDtiwmGziLKFCz2lCgon70ppD1oTcrse1yGRxrEKrO
         //4/57MJKRk7bqNLKrWAe3ZWvb0yeRxczhdfhJN3GOoUI5nAQ+rpzFvzXADqukKtXKMc
         PEKw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532cDKK72+LElfGNTdFS6h6fKrV/Y1pmvVqItWWqztrL7YgEF8AP
	VpzA3KpYCd5YZWz+yO7hfA4=
X-Google-Smtp-Source: ABdhPJzQP57Vn+GDo1YOVOL6ugUh1/MC0RyAbYLDLIKBsJpMNcGYYI9YeihhEUFxIE7vfSTyMmz1tg==
X-Received: by 2002:a17:90b:e01:: with SMTP id ge1mr5671551pjb.117.1614707543084;
        Tue, 02 Mar 2021 09:52:23 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:6902:: with SMTP id j2ls4073326plk.10.gmail; Tue, 02
 Mar 2021 09:52:22 -0800 (PST)
X-Received: by 2002:a17:902:d4cc:b029:e4:9cd9:f189 with SMTP id o12-20020a170902d4ccb02900e49cd9f189mr4601387plg.53.1614707542289;
        Tue, 02 Mar 2021 09:52:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614707542; cv=none;
        d=google.com; s=arc-20160816;
        b=v+7MKLhHi7OuTLbQ9/mAT5uA75SOBkyBOCIq1auHSCl5efJC5PCUCzwxyz5doBfWdz
         WBVf4+lq7lDbK6bXgb6Q/eoujoO5+h7F8pH5sSvF8COszfOl3idL1L4lOXfe5/04ZP14
         IFK6VhUg7y9mDwlrZHmq+L3amHvXAs64iwk1OP97rrm6OcgpafglSqMA24U1oFjSy93j
         /tf5XjZ6A3rujprN1wyYiGn2KveZMOnjau63HXzBzp2emJcqlupgresNXEPMJEfBceBv
         KXNjK1LgBYLGg1L+4Y2PVlV/AKSku10X7nvXYBUowu2UMw5NXjGBbJ57fLrmQeetRIpK
         +i2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=c0KneZE8xK5nZ/idqVZiYme/+5AWlugCcBPLJo/AzI4=;
        b=0KPPbA+T87U/azMrKQezbl4BB22cZnv9HaCsOVDF8h/O9B6lesALJEByH1Mm284hZN
         UNNunRCm908suP1D2zUXIJVj2EYt7vK8GK0DpoRsyP2GROo4dCoV/HZg/yaz8gYguC87
         a1UDL6rQNH8OQIdavEZi7u+ZiVP5N6ihLtEG907B/roYnYGnnh1TacHgm9bfL0jOr72S
         tBpYYSIWZIbysz+/9wKsK+/q0kgE9U4lskfvr99Ut0PZj3XNWgPfPjkjuqMia92U2RSL
         g2IHjlOYCHbqdaV/FpopG9v2Wismv0Fy+8geaKx/uOsaRnYGpi44ZgOH+9pEsGoBD/hs
         Lddw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga12.intel.com (mga12.intel.com. [192.55.52.136])
        by gmr-mx.google.com with ESMTPS id r7si398522pjp.3.2021.03.02.09.52.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Mar 2021 09:52:22 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) client-ip=192.55.52.136;
IronPort-SDR: fnDWspzPKEsrm+j7MYxskkC4/Ox/DjLDh4LkzdWZ7Txfik5vWSvvF0FEr7hGkPTkWpjSxXGDcz
 fUTsxbFfeTxg==
X-IronPort-AV: E=McAfee;i="6000,8403,9911"; a="166153300"
X-IronPort-AV: E=Sophos;i="5.81,217,1610438400"; 
   d="gz'50?scan'50,208,50";a="166153300"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Mar 2021 09:52:02 -0800
IronPort-SDR: uqBtmbZlrebeCveLub215yzB8aL2+rrW2KOgfiO2GF7UKZeVEJjS3ckBUcwZyWb8hIJLlZD/G2
 IMFIh5zmUVeg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,217,1610438400"; 
   d="gz'50?scan'50,208,50";a="406832995"
Received: from lkp-server02.sh.intel.com (HELO 2482ff9f8ac0) ([10.239.97.151])
  by orsmga008.jf.intel.com with ESMTP; 02 Mar 2021 09:52:00 -0800
Received: from kbuild by 2482ff9f8ac0 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lH9Bf-0000Zi-I3; Tue, 02 Mar 2021 17:51:59 +0000
Date: Wed, 3 Mar 2021 01:51:31 +0800
From: kernel test robot <lkp@intel.com>
To: Peter Zijlstra <peterz@infradead.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [peterz-queue:sched/core-sched 41/42] kernel/sched/core.c:381:31:
 error: use of undeclared identifier '__sched_core_enabled'; did you mean
Message-ID: <202103030128.sLFKDjsd-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="huq684BweRXVnRxX"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted
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


--huq684BweRXVnRxX
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/peterz/queue.git sched/core-sched
head:   5e50471743a68f484b7d1ad91c7fd809f6a30145
commit: 2b9410cf5104df69fceb025cc73d7a0d97bd8aa7 [41/42] sched: Prepare to drop stop_machine() for core sched
config: riscv-randconfig-r022-20210302 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 5de09ef02e24d234d9fc0cd1c6dfe18a1bb784b0)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install riscv cross compiling tool for clang build
        # apt-get install binutils-riscv64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/peterz/queue.git/commit/?id=2b9410cf5104df69fceb025cc73d7a0d97bd8aa7
        git remote add peterz-queue https://git.kernel.org/pub/scm/linux/kernel/git/peterz/queue.git
        git fetch --no-tags peterz-queue sched/core-sched
        git checkout 2b9410cf5104df69fceb025cc73d7a0d97bd8aa7
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=riscv 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> kernel/sched/core.c:381:31: error: use of undeclared identifier '__sched_core_enabled'; did you mean 'sched_core_enabled'?
           if (!static_branch_unlikely(&__sched_core_enabled)) {
                                        ^~~~~~~~~~~~~~~~~~~~
                                        sched_core_enabled
   include/linux/jump_label.h:469:43: note: expanded from macro 'static_branch_unlikely'
           if (__builtin_types_compatible_p(typeof(*x), struct static_key_true))   \
                                                    ^
   kernel/sched/sched.h:1152:20: note: 'sched_core_enabled' declared here
   static inline bool sched_core_enabled(struct rq *rq)
                      ^
>> kernel/sched/core.c:381:31: error: use of undeclared identifier '__sched_core_enabled'; did you mean 'sched_core_enabled'?
           if (!static_branch_unlikely(&__sched_core_enabled)) {
                                        ^~~~~~~~~~~~~~~~~~~~
                                        sched_core_enabled
   include/linux/jump_label.h:470:38: note: expanded from macro 'static_branch_unlikely'
                   branch = arch_static_branch_jump(&(x)->key, false);             \
                                                      ^
   kernel/sched/sched.h:1152:20: note: 'sched_core_enabled' declared here
   static inline bool sched_core_enabled(struct rq *rq)
                      ^
>> kernel/sched/core.c:381:7: error: member reference base type 'bool (struct rq *)' (aka '_Bool (struct rq *)') is not a structure or union
           if (!static_branch_unlikely(&__sched_core_enabled)) {
                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/jump_label.h:470:40: note: expanded from macro 'static_branch_unlikely'
                   branch = arch_static_branch_jump(&(x)->key, false);             \
                                                     ~~~^ ~~~
>> kernel/sched/core.c:381:31: error: use of undeclared identifier '__sched_core_enabled'; did you mean 'sched_core_enabled'?
           if (!static_branch_unlikely(&__sched_core_enabled)) {
                                        ^~~~~~~~~~~~~~~~~~~~
                                        sched_core_enabled
   include/linux/jump_label.h:471:48: note: expanded from macro 'static_branch_unlikely'
           else if (__builtin_types_compatible_p(typeof(*x), struct static_key_false)) \
                                                         ^
   kernel/sched/sched.h:1152:20: note: 'sched_core_enabled' declared here
   static inline bool sched_core_enabled(struct rq *rq)
                      ^
>> kernel/sched/core.c:381:31: error: use of undeclared identifier '__sched_core_enabled'; did you mean 'sched_core_enabled'?
           if (!static_branch_unlikely(&__sched_core_enabled)) {
                                        ^~~~~~~~~~~~~~~~~~~~
                                        sched_core_enabled
   include/linux/jump_label.h:472:33: note: expanded from macro 'static_branch_unlikely'
                   branch = arch_static_branch(&(x)->key, false);                  \
                                                 ^
   kernel/sched/sched.h:1152:20: note: 'sched_core_enabled' declared here
   static inline bool sched_core_enabled(struct rq *rq)
                      ^
>> kernel/sched/core.c:381:7: error: member reference base type 'bool (struct rq *)' (aka '_Bool (struct rq *)') is not a structure or union
           if (!static_branch_unlikely(&__sched_core_enabled)) {
                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/jump_label.h:472:35: note: expanded from macro 'static_branch_unlikely'
                   branch = arch_static_branch(&(x)->key, false);                  \
                                                ~~~^ ~~~
   kernel/sched/core.c:400:31: error: use of undeclared identifier '__sched_core_enabled'; did you mean 'sched_core_enabled'?
           if (!static_branch_unlikely(&__sched_core_enabled))
                                        ^~~~~~~~~~~~~~~~~~~~
                                        sched_core_enabled
   include/linux/jump_label.h:469:43: note: expanded from macro 'static_branch_unlikely'
           if (__builtin_types_compatible_p(typeof(*x), struct static_key_true))   \
                                                    ^
   kernel/sched/sched.h:1152:20: note: 'sched_core_enabled' declared here
   static inline bool sched_core_enabled(struct rq *rq)
                      ^
   kernel/sched/core.c:400:31: error: use of undeclared identifier '__sched_core_enabled'; did you mean 'sched_core_enabled'?
           if (!static_branch_unlikely(&__sched_core_enabled))
                                        ^~~~~~~~~~~~~~~~~~~~
                                        sched_core_enabled
   include/linux/jump_label.h:470:38: note: expanded from macro 'static_branch_unlikely'
                   branch = arch_static_branch_jump(&(x)->key, false);             \
                                                      ^
   kernel/sched/sched.h:1152:20: note: 'sched_core_enabled' declared here
   static inline bool sched_core_enabled(struct rq *rq)
                      ^
   kernel/sched/core.c:400:7: error: member reference base type 'bool (struct rq *)' (aka '_Bool (struct rq *)') is not a structure or union
           if (!static_branch_unlikely(&__sched_core_enabled))
                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/jump_label.h:470:40: note: expanded from macro 'static_branch_unlikely'
                   branch = arch_static_branch_jump(&(x)->key, false);             \
                                                     ~~~^ ~~~
   kernel/sched/core.c:400:31: error: use of undeclared identifier '__sched_core_enabled'; did you mean 'sched_core_enabled'?
           if (!static_branch_unlikely(&__sched_core_enabled))
                                        ^~~~~~~~~~~~~~~~~~~~
                                        sched_core_enabled
   include/linux/jump_label.h:471:48: note: expanded from macro 'static_branch_unlikely'
           else if (__builtin_types_compatible_p(typeof(*x), struct static_key_false)) \
                                                         ^
   kernel/sched/sched.h:1152:20: note: 'sched_core_enabled' declared here
   static inline bool sched_core_enabled(struct rq *rq)
                      ^
   kernel/sched/core.c:400:31: error: use of undeclared identifier '__sched_core_enabled'; did you mean 'sched_core_enabled'?
           if (!static_branch_unlikely(&__sched_core_enabled))
                                        ^~~~~~~~~~~~~~~~~~~~
                                        sched_core_enabled
   include/linux/jump_label.h:472:33: note: expanded from macro 'static_branch_unlikely'
                   branch = arch_static_branch(&(x)->key, false);                  \
                                                 ^
   kernel/sched/sched.h:1152:20: note: 'sched_core_enabled' declared here
   static inline bool sched_core_enabled(struct rq *rq)
                      ^
   kernel/sched/core.c:400:7: error: member reference base type 'bool (struct rq *)' (aka '_Bool (struct rq *)') is not a structure or union
           if (!static_branch_unlikely(&__sched_core_enabled))
                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/jump_label.h:472:35: note: expanded from macro 'static_branch_unlikely'
                   branch = arch_static_branch(&(x)->key, false);                  \
                                                ~~~^ ~~~
   kernel/sched/core.c:3103:6: warning: no previous prototype for function 'sched_set_stop_task' [-Wmissing-prototypes]
   void sched_set_stop_task(int cpu, struct task_struct *stop)
        ^
   kernel/sched/core.c:3103:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void sched_set_stop_task(int cpu, struct task_struct *stop)
   ^
   static 
   1 warning and 12 errors generated.


vim +381 kernel/sched/core.c

   282	
   283	
   284	/*
   285	 * Serialization rules:
   286	 *
   287	 * Lock order:
   288	 *
   289	 *   p->pi_lock
   290	 *     rq->lock
   291	 *       hrtimer_cpu_base->lock (hrtimer_start() for bandwidth controls)
   292	 *
   293	 *  rq1->lock
   294	 *    rq2->lock  where: rq1 < rq2
   295	 *
   296	 * Regular state:
   297	 *
   298	 * Normal scheduling state is serialized by rq->lock. __schedule() takes the
   299	 * local CPU's rq->lock, it optionally removes the task from the runqueue and
   300	 * always looks at the local rq data structures to find the most eligible task
   301	 * to run next.
   302	 *
   303	 * Task enqueue is also under rq->lock, possibly taken from another CPU.
   304	 * Wakeups from another LLC domain might use an IPI to transfer the enqueue to
   305	 * the local CPU to avoid bouncing the runqueue state around [ see
   306	 * ttwu_queue_wakelist() ]
   307	 *
   308	 * Task wakeup, specifically wakeups that involve migration, are horribly
   309	 * complicated to avoid having to take two rq->locks.
   310	 *
   311	 * Special state:
   312	 *
   313	 * System-calls and anything external will use task_rq_lock() which acquires
   314	 * both p->pi_lock and rq->lock. As a consequence the state they change is
   315	 * stable while holding either lock:
   316	 *
   317	 *  - sched_setaffinity()/
   318	 *    set_cpus_allowed_ptr():	p->cpus_ptr, p->nr_cpus_allowed
   319	 *  - set_user_nice():		p->se.load, p->*prio
   320	 *  - __sched_setscheduler():	p->sched_class, p->policy, p->*prio,
   321	 *				p->se.load, p->rt_priority,
   322	 *				p->dl.dl_{runtime, deadline, period, flags, bw, density}
   323	 *  - sched_setnuma():		p->numa_preferred_nid
   324	 *  - sched_move_task()/
   325	 *    cpu_cgroup_fork():	p->sched_task_group
   326	 *  - uclamp_update_active()	p->uclamp*
   327	 *
   328	 * p->state <- TASK_*:
   329	 *
   330	 *   is changed locklessly using set_current_state(), __set_current_state() or
   331	 *   set_special_state(), see their respective comments, or by
   332	 *   try_to_wake_up(). This latter uses p->pi_lock to serialize against
   333	 *   concurrent self.
   334	 *
   335	 * p->on_rq <- { 0, 1 = TASK_ON_RQ_QUEUED, 2 = TASK_ON_RQ_MIGRATING }:
   336	 *
   337	 *   is set by activate_task() and cleared by deactivate_task(), under
   338	 *   rq->lock. Non-zero indicates the task is runnable, the special
   339	 *   ON_RQ_MIGRATING state is used for migration without holding both
   340	 *   rq->locks. It indicates task_cpu() is not stable, see task_rq_lock().
   341	 *
   342	 * p->on_cpu <- { 0, 1 }:
   343	 *
   344	 *   is set by prepare_task() and cleared by finish_task() such that it will be
   345	 *   set before p is scheduled-in and cleared after p is scheduled-out, both
   346	 *   under rq->lock. Non-zero indicates the task is running on its CPU.
   347	 *
   348	 *   [ The astute reader will observe that it is possible for two tasks on one
   349	 *     CPU to have ->on_cpu = 1 at the same time. ]
   350	 *
   351	 * task_cpu(p): is changed by set_task_cpu(), the rules are:
   352	 *
   353	 *  - Don't call set_task_cpu() on a blocked task:
   354	 *
   355	 *    We don't care what CPU we're not running on, this simplifies hotplug,
   356	 *    the CPU assignment of blocked tasks isn't required to be valid.
   357	 *
   358	 *  - for try_to_wake_up(), called under p->pi_lock:
   359	 *
   360	 *    This allows try_to_wake_up() to only take one rq->lock, see its comment.
   361	 *
   362	 *  - for migration called under rq->lock:
   363	 *    [ see task_on_rq_migrating() in task_rq_lock() ]
   364	 *
   365	 *    o move_queued_task()
   366	 *    o detach_task()
   367	 *
   368	 *  - for migration called under double_rq_lock():
   369	 *
   370	 *    o __migrate_swap_task()
   371	 *    o push_rt_task() / pull_rt_task()
   372	 *    o push_dl_task() / pull_dl_task()
   373	 *    o dl_task_offline_migration()
   374	 *
   375	 */
   376	
   377	void raw_spin_rq_lock_nested(struct rq *rq, int subclass)
   378	{
   379		raw_spinlock_t *lock;
   380	
 > 381		if (!static_branch_unlikely(&__sched_core_enabled)) {
   382			raw_spin_lock_nested(&rq->__lock, subclass);
   383			return;
   384		}
   385	
   386		for (;;) {
   387			lock = rq_lockp(rq);
   388			raw_spin_lock_nested(lock, subclass);
   389			if (likely(lock == rq_lockp(rq)))
   390				return;
   391			raw_spin_unlock(lock);
   392		}
   393	}
   394	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202103030128.sLFKDjsd-lkp%40intel.com.

--huq684BweRXVnRxX
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
YcSQySmSU9VH2fLYO0cgCYki/HR7F66qdIea250sCkbqRqxqiwUs6JRbdgQdunWepN7yGUM5
0orTZRyK5jSFUgwzpej/pO3ok3h6b1NS9thFit6vvwh3pS7gooq02bi5wvY63QLrDctz/5EA
FsqPlCOnnDg04lM2AhxX2/R8Hm5NpLgVKTsSt2gjv00i1SPW5pVPMv5VjafulezTzaYfnGgD
hpD5aEnIfNOkIr4grJFIkoZ8D9E2ZS27VpJ1uhdpqJciUog6DQ9LxGjzfZWK2DrLs3IjRbfZ
s1G/afXTNosU0ltelkJpeQlEg9OF0Q+2gjkeQxp9WuqlNSVyR6I+5XmKt6D6AhWtkVlk1S4z
S6PapSUbzSdHwqbKKRW71PYX59fAj2Cm1lKgIYWxouDujG+EWqChwA7JsFxrcNFLQIeXN4yB
Abrsq84EhGlk79/eXw5nD38cHv48Pn2l2b3xRZReLNeSMsQQr0gOaIs11yGk8cH3AYUNjHV+
felcM5fFKqk/+c3hbq1NuXDci5tMqiba8pFCyyT4P+zA+E7/A6OlhzWLii6ZLNKk7vRTMn3I
T3prFQtYStAoMForGZ/evwyUjULgpXetPQDoeUpJsrTwsKKsV1QWgnWRp13R5kuoaCQz9/9J
FhZbCYnxMGkQMNUAN4HtIoWz/QVwBJD66MYSk0uXItQhRSebtnO/mjmyNfwcXmVcZqAxsMfS
5afYFQkhiSSEMCRJfRdJAarxMDdOky4dPUS4v8gTPEhMobYuyLuUr57DKlmVOe3xgAKVQ3sG
1Sl1/0AoGir68M8orIGI7Wo0n42Q6UFBwWFKRihXMqg0I/UjgW4FD6elDHBUgZhKNZirdf8Z
wf7vbr9wnnYtVJu8R4IJWxKZXHIHhsUmdc4UC9Bm2/qxGV0aBdyWk1gseil+DfrgXrmOne82
nyXZdgSRfc4TFrH/zIKtvultbeYNTlsL7jCbr3O2JwqDxgGP2IEwVNcJ0ejwvUiWjkW/AaEx
VefwDYSvnIbnaKUmsqRGu+lt6vpCIlb45FVaA/PqEeaW7PD7/fu3t7OH56e349f35/fXs0fz
0HP/crgHhv1/h/8miiR8jIdLly8/wcD/MrkMMAqvnQyWimUUDc3Ap/Vkw5/WblERX3qXKOFM
WJEkyeSmyHFkFuO3OBQJ+sZFAt4gHn1flmkhQIipSfIGtcnMzJMFkZVL9xdluP6qacpcugww
+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

--huq684BweRXVnRxX--
