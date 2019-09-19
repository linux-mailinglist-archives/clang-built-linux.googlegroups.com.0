Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBJMNR3WAKGQE5MTR5FA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa40.google.com (mail-vk1-xa40.google.com [IPv6:2607:f8b0:4864:20::a40])
	by mail.lfdr.de (Postfix) with ESMTPS id 26488B7AC1
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Sep 2019 15:46:15 +0200 (CEST)
Received: by mail-vk1-xa40.google.com with SMTP id c65sf1293116vkg.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Sep 2019 06:46:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568900774; cv=pass;
        d=google.com; s=arc-20160816;
        b=qIG55D24G5cEq8cYMcDPxYAVYWybZAWxiF4ZGeqPwYVGMAYcSOWnqVIq3JnAYjGvD6
         /Zn0XL1ofpwwjNIkR2PFFPmPoftmul52SuGLc//o+WltO50nPA1hwaFp5g9J7x6bldr5
         YmYR9O3woculzn72br7j7mYtGV0u4FUIUfcTTF9DCShhs/5yZeMMbD4B+66BCxS856ft
         JeW02hV/FXLRHjrJhN79BwzsGdtIXUZUjEMX8TIX+HUe43ZxlyQC3s/Nq6xJCrtn8Hvm
         MwHcCSRLrhMxRviCKIa7hq6BVU1y96XzqmtO17fQB+Uf9EpzvhwFSLLVTeP36NVNmpr2
         SYyg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=SYwWmbhxGNpaA+QqS8MxbNory9F5vRjpaZaqaBJ52f0=;
        b=JLEZhYwXE4Zypj/QC8uZkX9WbFVjDP83RZpDorhnn55Lk6of94Cin30I81l8k09M7K
         /9RYX5kUZzYZhFECrYvZcXtv0TUHstpo+CyimmVSmqZxM1lGql7CEORPkcqa9flOl9dl
         ReWjZ/lcZHHzNsWvPkVOAQsl8JOAXBA03satMJ3eG1YNX2QMjkv7BBOVFFVc7nd+1i1j
         kSpeTphmd/lO4mBL4fsyuLmKFiEYzeXkltAVRsQ0WYNIF97vun+Q1bB2IyT0Nx/AMRRV
         /nlwnW/WzBpBlq3Sw+yRIyuQcPLTowgxQCLB7cD7gcvd13lffsSDrxNoU7sFk9G7JRCT
         Efow==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=SYwWmbhxGNpaA+QqS8MxbNory9F5vRjpaZaqaBJ52f0=;
        b=J99k+6I5ipaTli8CLyLNACsmuCh5whdktKGoxuowPCIpvyI4+rhOERhsSciCNszz2X
         716XcvPNHnbm6RSdf2N5ol6hTiH1maJVzvjMAZm/WT90g0c4OvCVDOwSijjaZTnm2d0/
         0JCAeQyT1Zs7hMeuNG0T/9mVJlgV+87JXLJifmsPSKvJY/F7PDWCb9Yz4VvNaiuZwZWg
         XMQtpyPNtbmkdTKyNWSOgCdWtRJ7zjmE55+fHnOYaZ9JNTMlPmQj+paYHpzKf3WJBvGl
         5H8SVbnvMm3hsjqjSPI9amocyEmoM+Prgcpi+BlW5nzWzpU0UbaDbLAqbwEiph45L2Fq
         9gjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SYwWmbhxGNpaA+QqS8MxbNory9F5vRjpaZaqaBJ52f0=;
        b=smSF9/9oKFrovpnKTp2YP4HnXpTVdUBH4AWNMDn05opAZBPGCUxaYWKH4p9tM7qpr2
         j8lesK459AD8PPBdgYLyCxQkuf1CDclCUnyUouezWZhdfOB5WgaFvZjACN6VxJC2zNIu
         wTvfaPKC14TaprPE4NLjfAinc3twZugyLHzgxG9+VzmPgJSsa+MTJmoJUIFxJ5abBXhd
         tAYi6uzShdw/lmjslPI9jIEc+qjh9oY2AjdFOcZUeWEMqoPMpNgesMLb3/1N+cvZGR/9
         4tPDTryAVjbJX09VpbmXWLvDmG9cJLCk137RVkaTh2xPmZzLlA0+hqYcN7H1UL/kl8X9
         IWpQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXrk8vLCYbAEnX/FTsA5QOIN0u+Y3zQft12AcTuFQUiOQKHHl2t
	pemx8fKA2MXyxfj7wxvdns8=
X-Google-Smtp-Source: APXvYqxkRp3hs/dyoWjaS8/44myAay4swrbzzfenTKV3VCNsUqZRwkjKl2GVUHwnvwOzVipsekQYPg==
X-Received: by 2002:ab0:4ac9:: with SMTP id t9mr5340546uae.112.1568900773558;
        Thu, 19 Sep 2019 06:46:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9f:3e05:: with SMTP id o5ls176299uai.5.gmail; Thu, 19 Sep
 2019 06:46:13 -0700 (PDT)
X-Received: by 2002:ab0:2481:: with SMTP id i1mr5317712uan.122.1568900772973;
        Thu, 19 Sep 2019 06:46:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568900772; cv=none;
        d=google.com; s=arc-20160816;
        b=GtS79UUdFQxFbYRc1b4j1cRZfvpc07YcjC8gBmA2NlxI6Ix4Y9IWKB9tAh2KqYZXVj
         Bh+bPM/2wfQEjpK0OCdwTRYzaXnypiv/thl0dc4zgA5Be7cQNBYQvH7++S+OkxxAmgMO
         lKo5WdnMx9ybHM7I/xzjjbpT9aPnoCsOWfGXSEek4mGwiWz5Rvehm9XVCILK0FkXR7nm
         i4nFSfNKqZx7YNQH24hV8YjkCTRTc+AWwAyxePIrrbzuIg2VQciDnEXsGZMt4mX7D71C
         vq9FLX422AcL9x/V/Mk/4HfVf2a/MrK2bWnEuXCLZlV7SLy5DiI3G6mXlopPii9ZxUY5
         bbIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=ckbe2NloopGmjkSz2rEtRNhX4mzhsv0UCRq6mDqS69k=;
        b=OGMNOuRk2u8QoDBaWpLMN46WauX5d3ctvqkPKClBOrmz1CnOwLHcHSsqu5AJq1F2VF
         fm7n8o22MBUyGr/3jZW7heE8uhRukj6S/s+ICRebk/YPaoMCUZP+S6rchGUK+UmI2dEF
         SXyUoS08ZFhh8kgayVQYp76bGUhc/pNX/Q96/41phUxl9XbrSKkWj18FES9O6TARLGlC
         0pKiBWDbH8SXedXF0W6f86lhFdfsDMMGPgmGboWue4Mm2loAzFnICDeSV19egKxRAFC+
         pAEH9hRFGUzAwqL8mfF9IBiYP8VQ+fRs5dyoLsOPVkSGS1o++kWRXelkHjenOjoMSzR5
         6Kww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga07.intel.com (mga07.intel.com. [134.134.136.100])
        by gmr-mx.google.com with ESMTPS id d4si969379uam.0.2019.09.19.06.46.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Sep 2019 06:46:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) client-ip=134.134.136.100;
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 19 Sep 2019 06:46:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,523,1559545200"; 
   d="gz'50?scan'50,208,50";a="189607619"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by orsmga003.jf.intel.com with ESMTP; 19 Sep 2019 06:46:09 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1iAwl6-000FRW-Hk; Thu, 19 Sep 2019 21:46:08 +0800
Date: Thu, 19 Sep 2019 21:45:40 +0800
From: kbuild test robot <lkp@intel.com>
To: kbuild@01.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: [linux-pb:lkml/utilclamp_mainline_testing 13/18]
 kernel/sched/core.c:5033:62: error: no member named 'cpu' in 'struct
 task_struct'
Message-ID: <201909192136.1jAiPQmd%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="mcvsf2gy7r3m65qp"
Content-Disposition: inline
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted
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


--mcvsf2gy7r3m65qp
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

CC: kbuild-all@01.org
TO: Patrick Bellasi <patrick.bellasi@arm.com>

tree:   git://linux-arm.org/linux-pb.git lkml/utilclamp_mainline_testing
head:   f4889b4c3fabe850193877e1e009faa1b70cec2d
commit: fb1e1edea919b39bb9e2c96fb311c0ef31eb14fa [13/18] TESTING: Syscall
config: x86_64-allnoconfig (attached as .config)
compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
reproduce:
        git checkout fb1e1edea919b39bb9e2c96fb311c0ef31eb14fa
        # save the attached .config to linux build tree
        make ARCH=x86_64 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   In file included from kernel/sched/core.c:9:
   kernel/sched/sched.h:1032:13: error: expected ';' after return statement
           return true
                      ^
                      ;
>> kernel/sched/core.c:5033:62: error: no member named 'cpu' in 'struct task_struct'
                   printk(KERN_WARNING "cpu=%d util_min=%u util_max=%u\n", p->cpu,
                                                                           ~  ^
   kernel/sched/core.c:5034:19: error: no member named 'uclamp' in 'struct rq'
                                   READ_ONCE(rq->uclamp[UCLAMP_MIN].value),
                                             ~~  ^
   include/linux/compiler.h:269:34: note: expanded from macro 'READ_ONCE'
   #define READ_ONCE(x) __READ_ONCE(x, 1)
                                    ^
   include/linux/compiler.h:261:17: note: expanded from macro '__READ_ONCE'
           union { typeof(x) __val; char __c[1]; } __u;                    \
                          ^
   kernel/sched/core.c:5034:19: error: no member named 'uclamp' in 'struct rq'
                                   READ_ONCE(rq->uclamp[UCLAMP_MIN].value),
                                             ~~  ^
   include/linux/compiler.h:269:34: note: expanded from macro 'READ_ONCE'
   #define READ_ONCE(x) __READ_ONCE(x, 1)
                                    ^
   include/linux/compiler.h:263:22: note: expanded from macro '__READ_ONCE'
                   __read_once_size(&(x), __u.__c, sizeof(x));             \
                                      ^
   kernel/sched/core.c:5034:19: error: no member named 'uclamp' in 'struct rq'
                                   READ_ONCE(rq->uclamp[UCLAMP_MIN].value),
                                             ~~  ^
   include/linux/compiler.h:269:34: note: expanded from macro 'READ_ONCE'
   #define READ_ONCE(x) __READ_ONCE(x, 1)
                                    ^
   include/linux/compiler.h:263:42: note: expanded from macro '__READ_ONCE'
                   __read_once_size(&(x), __u.__c, sizeof(x));             \
                                                          ^
   kernel/sched/core.c:5034:19: error: no member named 'uclamp' in 'struct rq'
                                   READ_ONCE(rq->uclamp[UCLAMP_MIN].value),
                                             ~~  ^
   include/linux/compiler.h:269:34: note: expanded from macro 'READ_ONCE'
   #define READ_ONCE(x) __READ_ONCE(x, 1)
                                    ^
   include/linux/compiler.h:265:30: note: expanded from macro '__READ_ONCE'
                   __read_once_size_nocheck(&(x), __u.__c, sizeof(x));     \
                                              ^
   kernel/sched/core.c:5034:19: error: no member named 'uclamp' in 'struct rq'
                                   READ_ONCE(rq->uclamp[UCLAMP_MIN].value),
                                             ~~  ^
   include/linux/compiler.h:269:34: note: expanded from macro 'READ_ONCE'
   #define READ_ONCE(x) __READ_ONCE(x, 1)
                                    ^
   include/linux/compiler.h:265:50: note: expanded from macro '__READ_ONCE'
                   __read_once_size_nocheck(&(x), __u.__c, sizeof(x));     \
                                                                  ^
   kernel/sched/core.c:5035:19: error: no member named 'uclamp' in 'struct rq'
                                   READ_ONCE(rq->uclamp[UCLAMP_MAX].value));
                                             ~~  ^
   include/linux/compiler.h:269:34: note: expanded from macro 'READ_ONCE'
   #define READ_ONCE(x) __READ_ONCE(x, 1)
                                    ^
   include/linux/compiler.h:261:17: note: expanded from macro '__READ_ONCE'
           union { typeof(x) __val; char __c[1]; } __u;                    \
                          ^
   kernel/sched/core.c:5035:19: error: no member named 'uclamp' in 'struct rq'
                                   READ_ONCE(rq->uclamp[UCLAMP_MAX].value));
                                             ~~  ^
   include/linux/compiler.h:269:34: note: expanded from macro 'READ_ONCE'
   #define READ_ONCE(x) __READ_ONCE(x, 1)
                                    ^
   include/linux/compiler.h:263:22: note: expanded from macro '__READ_ONCE'
                   __read_once_size(&(x), __u.__c, sizeof(x));             \
                                      ^
   kernel/sched/core.c:5035:19: error: no member named 'uclamp' in 'struct rq'
                                   READ_ONCE(rq->uclamp[UCLAMP_MAX].value));
                                             ~~  ^
   include/linux/compiler.h:269:34: note: expanded from macro 'READ_ONCE'
   #define READ_ONCE(x) __READ_ONCE(x, 1)
                                    ^
   include/linux/compiler.h:263:42: note: expanded from macro '__READ_ONCE'
                   __read_once_size(&(x), __u.__c, sizeof(x));             \
                                                          ^
   kernel/sched/core.c:5035:19: error: no member named 'uclamp' in 'struct rq'
                                   READ_ONCE(rq->uclamp[UCLAMP_MAX].value));
                                             ~~  ^
   include/linux/compiler.h:269:34: note: expanded from macro 'READ_ONCE'
   #define READ_ONCE(x) __READ_ONCE(x, 1)
                                    ^
   include/linux/compiler.h:265:30: note: expanded from macro '__READ_ONCE'
                   __read_once_size_nocheck(&(x), __u.__c, sizeof(x));     \
                                              ^
   kernel/sched/core.c:5035:19: error: no member named 'uclamp' in 'struct rq'
                                   READ_ONCE(rq->uclamp[UCLAMP_MAX].value));
                                             ~~  ^
   include/linux/compiler.h:269:34: note: expanded from macro 'READ_ONCE'
   #define READ_ONCE(x) __READ_ONCE(x, 1)
                                    ^
   include/linux/compiler.h:265:50: note: expanded from macro '__READ_ONCE'
                   __read_once_size_nocheck(&(x), __u.__c, sizeof(x));     \
                                                                  ^
   12 errors generated.

vim +5033 kernel/sched/core.c

  4763	
  4764	static int __sched_setscheduler(struct task_struct *p,
  4765					const struct sched_attr *attr,
  4766					bool user, bool pi)
  4767	{
  4768		int newprio = dl_policy(attr->sched_policy) ? MAX_DL_PRIO - 1 :
  4769			      MAX_RT_PRIO - 1 - attr->sched_priority;
  4770		int retval, oldprio, oldpolicy = -1, queued, running;
  4771		int new_effective_prio, policy = attr->sched_policy;
  4772		const struct sched_class *prev_class;
  4773		struct rq_flags rf;
  4774		int reset_on_fork;
  4775		int queue_flags = DEQUEUE_SAVE | DEQUEUE_MOVE | DEQUEUE_NOCLOCK;
  4776		struct rq *rq;
  4777	
  4778		/* The pi code expects interrupts enabled */
  4779		BUG_ON(pi && in_interrupt());
  4780	recheck:
  4781		/* Double check policy once rq lock held: */
  4782		if (policy < 0) {
  4783			reset_on_fork = p->sched_reset_on_fork;
  4784			policy = oldpolicy = p->policy;
  4785		} else {
  4786			reset_on_fork = !!(attr->sched_flags & SCHED_FLAG_RESET_ON_FORK);
  4787	
  4788			if (!valid_policy(policy))
  4789				return -EINVAL;
  4790		}
  4791	
  4792		if (attr->sched_flags & ~(SCHED_FLAG_ALL | SCHED_FLAG_SUGOV))
  4793			return -EINVAL;
  4794	
  4795		printk(KERN_WARNING "__sched_setscheduler: sched_priority=%d flags=%llu\n",
  4796		       attr->sched_priority, attr->sched_flags);
  4797	
  4798		/*
  4799		 * Valid priorities for SCHED_FIFO and SCHED_RR are
  4800		 * 1..MAX_USER_RT_PRIO-1, valid priority for SCHED_NORMAL,
  4801		 * SCHED_BATCH and SCHED_IDLE is 0.
  4802		 */
  4803		if ((p->mm && attr->sched_priority > MAX_USER_RT_PRIO-1) ||
  4804		    (!p->mm && attr->sched_priority > MAX_RT_PRIO-1))
  4805			return -EINVAL;
  4806		if ((dl_policy(policy) && !__checkparam_dl(attr)) ||
  4807		    (rt_policy(policy) != (attr->sched_priority != 0)))
  4808			return -EINVAL;
  4809	
  4810		/*
  4811		 * Allow unprivileged RT tasks to decrease priority:
  4812		 */
  4813		if (user && !capable(CAP_SYS_NICE)) {
  4814			if (fair_policy(policy)) {
  4815				if (attr->sched_nice < task_nice(p) &&
  4816				    !can_nice(p, attr->sched_nice))
  4817					return -EPERM;
  4818			}
  4819	
  4820			if (rt_policy(policy)) {
  4821				unsigned long rlim_rtprio =
  4822						task_rlimit(p, RLIMIT_RTPRIO);
  4823	
  4824				/* Can't set/change the rt policy: */
  4825				if (policy != p->policy && !rlim_rtprio)
  4826					return -EPERM;
  4827	
  4828				/* Can't increase priority: */
  4829				if (attr->sched_priority > p->rt_priority &&
  4830				    attr->sched_priority > rlim_rtprio)
  4831					return -EPERM;
  4832			}
  4833	
  4834			 /*
  4835			  * Can't set/change SCHED_DEADLINE policy at all for now
  4836			  * (safest behavior); in the future we would like to allow
  4837			  * unprivileged DL tasks to increase their relative deadline
  4838			  * or reduce their runtime (both ways reducing utilization)
  4839			  */
  4840			if (dl_policy(policy))
  4841				return -EPERM;
  4842	
  4843			/*
  4844			 * Treat SCHED_IDLE as nice 20. Only allow a switch to
  4845			 * SCHED_NORMAL if the RLIMIT_NICE would normally permit it.
  4846			 */
  4847			if (task_has_idle_policy(p) && !idle_policy(policy)) {
  4848				if (!can_nice(p, task_nice(p)))
  4849					return -EPERM;
  4850			}
  4851	
  4852			/* Can't change other user's priorities: */
  4853			if (!check_same_owner(p))
  4854				return -EPERM;
  4855	
  4856			/* Normal users shall not reset the sched_reset_on_fork flag: */
  4857			if (p->sched_reset_on_fork && !reset_on_fork)
  4858				return -EPERM;
  4859		}
  4860	
  4861		if (user) {
  4862			if (attr->sched_flags & SCHED_FLAG_SUGOV)
  4863				return -EINVAL;
  4864	
  4865			retval = security_task_setscheduler(p);
  4866			if (retval)
  4867				return retval;
  4868		}
  4869	
  4870		/* Update task specific "requested" clamps */
  4871		if (attr->sched_flags & SCHED_FLAG_UTIL_CLAMP) {
  4872			retval = uclamp_validate(p, attr);
  4873			if (retval)
  4874				return retval;
  4875			printk(KERN_WARNING "__sched_setscheduler: uclamp updated\n");
  4876		}
  4877	
  4878		if (pi)
  4879			cpuset_read_lock();
  4880	
  4881		/*
  4882		 * Make sure no PI-waiters arrive (or leave) while we are
  4883		 * changing the priority of the task:
  4884		 *
  4885		 * To be able to change p->policy safely, the appropriate
  4886		 * runqueue lock must be held.
  4887		 */
  4888		rq = task_rq_lock(p, &rf);
  4889		update_rq_clock(rq);
  4890	
  4891		/*
  4892		 * Changing the policy of the stop threads its a very bad idea:
  4893		 */
  4894		if (p == rq->stop) {
  4895			retval = -EINVAL;
  4896			goto unlock;
  4897		}
  4898	
  4899		/*
  4900		 * If not changing anything there's no need to proceed further,
  4901		 * but store a possible modification of reset_on_fork.
  4902		 */
  4903		if (unlikely(policy == p->policy)) {
  4904			if (fair_policy(policy) && attr->sched_nice != task_nice(p))
  4905				goto change;
  4906			if (rt_policy(policy) && attr->sched_priority != p->rt_priority)
  4907				goto change;
  4908			if (dl_policy(policy) && dl_param_changed(p, attr))
  4909				goto change;
  4910			if (attr->sched_flags & SCHED_FLAG_UTIL_CLAMP)
  4911				goto change;
  4912	
  4913			p->sched_reset_on_fork = reset_on_fork;
  4914	
  4915			printk(KERN_WARNING "__sched_setscheduler: DONE "
  4916			       "(policy not changed)\n");
  4917	
  4918			retval = 0;
  4919			goto unlock;
  4920		}
  4921	change:
  4922	
  4923		if (user) {
  4924	#ifdef CONFIG_RT_GROUP_SCHED
  4925			/*
  4926			 * Do not allow realtime tasks into groups that have no runtime
  4927			 * assigned.
  4928			 */
  4929			if (rt_bandwidth_enabled() && rt_policy(policy) &&
  4930					task_group(p)->rt_bandwidth.rt_runtime == 0 &&
  4931					!task_group_is_autogroup(task_group(p))) {
  4932				retval = -EPERM;
  4933				goto unlock;
  4934			}
  4935	#endif
  4936	#ifdef CONFIG_SMP
  4937			if (dl_bandwidth_enabled() && dl_policy(policy) &&
  4938					!(attr->sched_flags & SCHED_FLAG_SUGOV)) {
  4939				cpumask_t *span = rq->rd->span;
  4940	
  4941				/*
  4942				 * Don't allow tasks with an affinity mask smaller than
  4943				 * the entire root_domain to become SCHED_DEADLINE. We
  4944				 * will also fail if there's no bandwidth available.
  4945				 */
  4946				if (!cpumask_subset(span, p->cpus_ptr) ||
  4947				    rq->rd->dl_bw.bw == 0) {
  4948					retval = -EPERM;
  4949					goto unlock;
  4950				}
  4951			}
  4952	#endif
  4953		}
  4954	
  4955		/* Re-check policy now with rq lock held: */
  4956		if (unlikely(oldpolicy != -1 && oldpolicy != p->policy)) {
  4957			policy = oldpolicy = -1;
  4958			task_rq_unlock(rq, p, &rf);
  4959			if (pi)
  4960				cpuset_read_unlock();
  4961			goto recheck;
  4962		}
  4963	
  4964		/*
  4965		 * If setscheduling to SCHED_DEADLINE (or changing the parameters
  4966		 * of a SCHED_DEADLINE task) we need to check if enough bandwidth
  4967		 * is available.
  4968		 */
  4969		if ((dl_policy(policy) || dl_task(p)) && sched_dl_overflow(p, policy, attr)) {
  4970			retval = -EBUSY;
  4971			goto unlock;
  4972		}
  4973	
  4974		p->sched_reset_on_fork = reset_on_fork;
  4975		oldprio = p->prio;
  4976	
  4977		if (pi) {
  4978			/*
  4979			 * Take priority boosted tasks into account. If the new
  4980			 * effective priority is unchanged, we just store the new
  4981			 * normal parameters and do not touch the scheduler class and
  4982			 * the runqueue. This will be done when the task deboost
  4983			 * itself.
  4984			 */
  4985			new_effective_prio = rt_effective_prio(p, newprio);
  4986			if (new_effective_prio == oldprio)
  4987				queue_flags &= ~DEQUEUE_MOVE;
  4988		}
  4989	
  4990		queued = task_on_rq_queued(p);
  4991		running = task_current(rq, p);
  4992		if (queued)
  4993			dequeue_task(rq, p, queue_flags);
  4994		if (running)
  4995			put_prev_task(rq, p);
  4996	
  4997		prev_class = p->sched_class;
  4998	
  4999		__setscheduler(rq, p, attr, pi);
  5000		__setscheduler_uclamp(p, attr);
  5001	
  5002		if (queued) {
  5003			/*
  5004			 * We enqueue to tail when the priority of a task is
  5005			 * increased (user space view).
  5006			 */
  5007			if (oldprio < p->prio)
  5008				queue_flags |= ENQUEUE_HEAD;
  5009	
  5010			enqueue_task(rq, p, queue_flags);
  5011		}
  5012		if (running)
  5013			set_next_task(rq, p);
  5014	
  5015		check_class_changed(rq, p, prev_class, oldprio);
  5016	
  5017		/* Avoid rq from going away on us: */
  5018		preempt_disable();
  5019		task_rq_unlock(rq, p, &rf);
  5020	
  5021		if (pi) {
  5022			cpuset_read_unlock();
  5023			rt_mutex_adjust_pi(p);
  5024		}
  5025	
  5026		/* Run balance callbacks after we've adjusted the PI chain: */
  5027		balance_callback(rq);
  5028		preempt_enable();
  5029	
  5030		printk(KERN_WARNING "__sched_setscheduler: DONE (policy changed)\n");
  5031	
  5032		if (queued) {
> 5033			printk(KERN_WARNING "cpu=%d util_min=%u util_max=%u\n", p->cpu,
  5034					READ_ONCE(rq->uclamp[UCLAMP_MIN].value),
  5035					READ_ONCE(rq->uclamp[UCLAMP_MAX].value));
  5036		}
  5037	
  5038		return 0;
  5039	
  5040	unlock:
  5041		task_rq_unlock(rq, p, &rf);
  5042		if (pi)
  5043			cpuset_read_unlock();
  5044		return retval;
  5045	}
  5046	

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201909192136.1jAiPQmd%25lkp%40intel.com.

--mcvsf2gy7r3m65qp
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICLl/g10AAy5jb25maWcAlFxbc9vGkn7Pr0AlVVv2Q2zdrMhnSw9DYEBMiJsxA170gmJI
SOZGIrUkldj/frsHADEAemhvzklsoXvuPd1fX0a//fKbw96Ou5flcbNaPj9/d57KbblfHsu1
87h5Lv/b8RInTpTDPaE+AHO42b59+/jt7ra4vXE+fbj+cOFMyv22fHbc3fZx8/QGbTe77S+/
/QL//w0+vrxCN/v/OKvn5fbJ+afcH4DsXF58gP857542x/98/Aj/fdns97v9x+fnf16K1/3u
f8rV0bn5tLx+XF9d3D7+Bf/+8cfy4u7z7d3q8+fl3eUfV6u/Hq9Wq/X64vE9DOUmsS/Gxdh1
iynPpEji+4vmI3wTsnBDFo/vv58+4o8n3ssL/Mdo4LK4CEU8MRq4RcBkwWRUjBOVtASRfSlm
SWawjnIRekpEvOBzxUYhL2SSqZaugowzrxCxn8B/CsUkNtYbNtbb/+wcyuPba7uuUZZMeFwk
cSGj1Bg6Fqrg8bRg2RimGwl1f32F215POYlSAaMrLpWzOTjb3RE7bhkCmAbPBvSaGiYuC5sd
+vXXtplJKFiuEqKx3oNCslBh02Y8NuXFhGcxD4vxgzBWYlJGQLmiSeFDxGjK/MHWIrERblpC
d06nhZoTIjfQmNY5+vzhfOvkPPmG2F+P+ywPVREkUsUs4ve/vtvutuV745jkQk5F6pJ9u1ki
ZRHxKMkWBVOKuQHJl0seihExvt5KlrkBCADoBhgLZCJsxBjuhHN4++vw/XAsX4zryWOeCVdf
mTRLRrw9AZMkg2TWvV9eEjERU9+KQPAM57Gg+4qYysS8gLmB0Koko7kyLnk2ZQoFOko83h3J
TzKXe/W1FaYWkSnLJEcmLTbldu3sHnurbzVO4k5kkkNfxYwpN/ASoye9lSaLxxQ7Q8arb2qz
ljJloYDGvAiZVIW7cENim7V2mran1iPr/viUx0qeJaJiYp4LA51ni+CgmPdnTvJFiSzyFKfc
iI/avIChoCQoeChSaJV4wjUvapwgRXghJ6VYk2kNKMYBnr7ekEx2eerjHMymmUyacR6lCrqP
uTmb5vs0CfNYsWxBDl1zmbTKZqb5R7U8/O0cYVxnCXM4HJfHg7NcrXZv2+Nm+9RuhxLupIAG
BXPdBMaqhPM0xFRkqkfGbSeng4KupaLlpactBblLPzFtvbzMzR05PFgYb1EAzZw+/AgWFM6b
sk6yYjaby6Z9PaXuUMZSJ9VfbGotj2Vttt0A7r0W5EY05epruX4DSOM8lsvj27486M/1iAS1
c4NlnqYABWQR5xErRgxAiNtRKJprxmIFRKVHz+OIpYUKR4Uf5jLosZ46FLG6vLozd88dZ0me
Slr9B9ydpAk0QuEHtUjfm2r9aOF1XyRPxkNGC/gonICZmmpVlXnEZgOkSlKQOfHAUcfizYY/
ItiTznXqs0n4CyUQoMxUCALj8lQrcpUxl/eMf+rKdAIjhUzhUC21kjNz2AjMqwD7l9FbM+Yq
AuBW1DqUZlpIX57l8AMW27RWmkiwXJRiOmkQOMAJvfe55fZ210+3ZWDS/Nw241zxOUnhaWLb
BzGOWeh7JFEv0ELT5sNCkwHAF5LCBA2oRFLkmU2vMW8qYN31YdEbDgOOWJYJi0xMsOEiotuO
Uv+sJKCkaUjnU1dFX3b0P9opQG8xWE+4ux2dKfkXoj204p7Hvf51gDGLk503pOTyogM6tY6r
Hb203D/u9i/L7ap0+D/lFnQ8A+3nopYHO9mqdEvnHgfhrIiw5mIaaWxG2pSfHNEweFE1YKFN
mO3eoF/EQMNm9N2RIaMQrwzzkbkOGSYja3s4p2zMG5RuZ/MBBIQCcFoGeiChxbnLGLDMA+Rk
uxO574PhShkMfsK8FuWR+CIc3IZ657t+aLMFtzcjE3XOdRig87Ppm0qV5a7WxB53AVQb2DvJ
VZqrQmt7cBDL58fbm9+/3d3+fnvza0fkYQOrH+9/Xe5XXzHy8HGlIw2HOgpRrMvH6supJdpr
j6eNcTTgOvg5E20WhrQoynu2NULDm8VeAYvWEPb+6u4cA5uj900yNBLXdGTpp8MG3V3eDsAy
gPtRhujeQ7vbmzEqCIR7aJPnFA3cPI5xDa6NKMEBIgHXpkjHIB6qpywkV3mKF7eClOAMtQwx
B6DQkLSyga4y9D+C3IyidPi0lJJs1XzECDzgyikDWyjFKOxPWeYy5bBxFrIGUnrrWFgEOZjs
cNSyPABsL7yIXRvBBu3M6sY2oFWrL5i6vl82tlz7t4b35IMt5ywLFy76mNyAHum4QpshqK5Q
3t/0Ik6S4XGh5OKZcLdyYrVGTve7VXk47PbO8ftrBbo7qLS3UFplRDSuw8vtc6byjBcYYJCE
SkSeKNU+sKkZx0no+ULSEYWMK8AJIILWUSsJBjCX0ZYSefhcwbmjLJ1DMhV+TSI4Uj+DNRQa
8lqsd7AAuQQMAAhznNsiZtHkjv6eSjrQEqGBpoNHoPq6Gr9/19O8q2v13GPQpPVFloHw1f2t
yRJe2mlKut3+3Cidu8G4p8LRIZ92v4DKElEe6ZPxWSTCxf3tjcmgLwWg70hmXUc4cbnEHZU8
BMmlfADoEi6NXpsRiGg+s8gbfgwW4yQefnbB8LM8GxIeApbMzfBRkHJV4c4OMIkEMcFY6yqJ
Bhq01YiPoaNLmggSOSTVEGBAaD/ADEPU6N2Qjj5NDLQWLBW9gwMgW3/sXIqMg5emKiepjhiP
kkSha08DIX22Lh8gPRNwvey2m+NuX4Ud2pNtsR2eEVysWf9a1UjC0ld3Ek0kCkxHHmqNTwP4
OxqxRcIFSYOLYV+lpC99rW8EDaeQ+kmrZYvy80QGYl2MR2gPJGFPQdGDWLjZIu34lrhlBskG
+KvwYsXICOt3IjdC1qPrS9dEeTGuadwwEYZ8DNJVq0QMG+b8/uLbulyuL4x/enuFgQMAKIlE
zyPL0/5ZdcQRg6pg15IZqov2tFRGH4ae9BkgjJ1KwEpWolYiRR6JH7GA4vsRR7VptclFCDLh
C/oWSe4icKONykNxeXFBBZoeiqtPF6ZMwJfrLmuvF7qbe+jGzBnMuS3izyTg6bw70eY6Bwsp
UNcAzgBQfPHtsn/4ACnRmUApPNce4Ok4hvZXveYoa+6if8+prvqc8yQOF+Y+9Rkw+kqvOPI0
1AUdSAMJuBHCXxShpyjP3IS+oZjyFANyZnjxHPoaKALmeQWlJKqL3YhbkKg0zPvxwJpHpiEA
mRS1rTJDkunu33LvgIZdPpUv4B3rmTA3Fc7uFZOxHSxYI2baJaTQSBfWYrcdRYbDkJfCFwOz
AorW8ffl/76V29V357BaPvesisYXWTeAYQaYidanjsX6uez3NUwIGH1VDU6H+cNN1J2P3g7N
B+dd6gqnPK4+vDfHFZIVo5zWFEgDHI7G267gFtIfkZO2jF3Na7Nd7r87/OXteTk4cwEuzg8s
K448v76ixx30rTv3N/uXf5f70vH2m3+qwE8bt/NoCQNnL5qB54jyblPk4yQZh/zEOpAiVT7t
l85jM/paj24G4S0MDXkw7252eBr1Myg5KLWHwdZ10vUYm9gcyxVe/t/X5SsMhTLU3j9ziKQK
vRjWvPlSxJEY4tI/QWcDQhyRKET3yH1fuALjXnmsNTBG7V2E3j1NggE3zMwrAdBQzlg/Ay/A
WcFgBOH9T/oObfUV3TmKkKT097obLGXwqQC9n8eVueVZBjBWxH9W5rfHBhvV+6LXp3sMkmTS
I+Klg5+VGOdJTqQ0wQnWyqLO8VKBEVB/aCyqJCvBIHmDtCzEGitGg02vZl7VhFQxs2IWCKXD
fURAA1yKBTjkmMTV+Qfdotdlxsegq2OvihvUsoBqp88n+RfbAWBNibVhMAMPg7Mqh9SjRWIO
8teSpZ5OjwnD3RgLyLMYLDhsrTDjg/3gNHHeGAdFKwjek8ersIhuQXVCjN/En7N6ixAYUefS
Xr7zVB1zUwATBqdfSWshmc8bj7vfVX1l68NHmNDjqNtVDqGF5iV5x0VoZ1kD1Dq4R3LgHoRw
YP2QXz/s1BjXOjTVIQ/y4F3y2SKSmVAB6KTqLHSspn9geH35XOkrPunkTDXZkuru67dhkrsv
vAkKR9RPlDTaJUafCxUtRhOJg7LyFWlO9ol0zIGkxE2viAj4JEg7fbSJrzWLWgzW4TVOInfh
dhkRBCDlIahgNAY89LXkEvvE54A2QQ/oihw8F0Kv6ebaYeuEk9v5dULkPQY9AKlwu63aqHst
COmiUZcq7HdaSVBdAzO0G7BWUYHpUyqg5dDpDS0f1FLwkE4bYWScmq/nsnZwswXc7LqiK5sZ
wfkzpH7z6uAsPBlmSvK4E2Zovg2yuYPFpbAxABJrLw/2TTbexdhNpr//tTyUa+fvKh33ut89
bp47dSinWSB30aCZqrSozSmd6akzI6ziRDdIxLLT/ufAVtOVTmNLzC7eX3Z8PhR+YjOaa6Ey
jjGLBCyLuZcjNDZEMxFX+ZQU1FceI1NdDtala3Gt6OdoZNtZBmjA1tgkdlv3PDeVIGYAUE1g
wi85z9EAwSJ0JZmdJZtRDFpIm3R0MeI+/oHWtVtMZ/BWvvssY2nKT/kM/q1cvR2Xfz2XuvrY
0YHDY8ezGInYjxQqHjrLXpGlm4mUjuDXHJGwBOxxBf0oyUkEbRPUM4zKlx34SVHrQw7w/9mI
XBvOi1icM4rSV/JNkIpLbsIwI244B3E29VlLmlY+WBtabO12n8emOrAYQcudTkoMka2PFYjj
7j3qRjqoPHsV5tAhjipSfmOeTpQy1xJ0xCgUBlqyQvVT1RoeqAQ9c3MyE0mFPJraWr09Vemi
l93fXHy+NapWCBtvswAValcBGIqOy9VJhk46fqcLYCzWmRxLaItO5j2ktljXwyinXfIHOSzA
6HlHOm3Z+IbEbU51OroGMW3QMgJBFujF0cEmnun8jGKKDpaA3IAmid0gYtlZ44rDa5TDOubG
fh3bMWJOxd4rdIIFO39qGdK32yv/2azMYEeHWUhmrh1/tnWcup0IGgZy6Eotl3Wr5tqIw2ZV
z8NJhhG+vKqACXiYWjKdcFYqSn1LNFsBnmOhLagKukZ3f4rk6EL/wTRPQZbn3XJdh2fqHvwZ
WFd8d0Bq2H5DI9QIUjrTBYW0ij4tDvPzXgaumG31moFPM07vQMWAjyLqbsBAo1twPlWryyQt
Re1InuYh1iGMBGg3wYfAZnimp4DjWotep9DU/GxcmVhaCtcUffkT33axIjEOVCOw4JJmdbVM
KwjVp8HJx2AzHPn2+rrbH80Zd75X9nJzWHXW1ux/HkULhDJ0SWDshonEqgTMLgnXcogSfEg6
0olFT/NCer4tUXJFrotzONzIORgra2akKcXna3d+S6OGbtM6ivlteXDE9nDcv73okrbDVxD7
tXPcL7cH5HMAGJfOGjZp84p/7YY4/9+tdXP2fAQI7fjpmBkB0t2/W7xtzssOa5eddxhk3+xL
GODKfd885RLbIyB2gJDOfzn78lk/EWs3o8eC4uk1gdmqbhqcUOLzNEm7X1vHKkn7cfTeIMHu
cOx11xLd5X5NTcHKv3s9pXPkEVZnGo53biKj94buP83dG0Sfz+2TITNukJCy0rkUXZ/cO72P
kK4UNZNxBo3kAxGhpalhqAaGdmCuiFWC6UGt76hNf307DkdsMwxxmg+vTABnoCVMfEwcbNLN
ROE7jp9TP5rVVD5jFvH+LT0tlhq2PR1iIdWs4AItV3A9KJWkFF3ijqjHUoQMpImNhuthobZl
1lRRGomiKg63lCvNzqXK46lN/0Gf4yqLrxMNJI9y4d+Ubq946PZd4TavNthEIxihZwvAOZc6
UkdXh5lMWLwyhAqVQF65pBxe0YXEJrvBfU1bAGnLaaYRTQj6b2IaG5kOr1KqUmf1vFv93dee
fKv9SnBi8MUdph8BneLDUvRr9GEBNItSrNg97qC/0jl+LZ3ler1BuLB8rno9fDCV0XAwY3Ii
tpbYjVOR9N79nWizS3qtWAFUsKnlqYKmop9Ke+UVHYMVIX3TgllkSV2qgGfgwtBzrd/ZUW6m
HJllo+0hS6r4ewQeF8k+6rliFbJ5ez5uHt+2KzyZRtush2nSyPf0S8zCAkWQHqH8095eoBCZ
SeFeW1tPeJSGNPbTnavb689/WMky+nRBnzYbzT9dXGgkbm+9kK7lzJCsRMGi6+tPcyxMZJ59
B9SXaH5HI6uzG21oFT7G5LfFE424J1gTKBs6XPvl69fN6kCpG89SdwrfCw8LEt1BdwyaEHje
/Fzxuanzjr2tNzuAJqdKk/eDZ/ZtDz/VoHLO9suX0vnr7fERFLU3tHaW+gOyWeWkLFd/P2+e
vh4B84SudwYoABWf3kusi0TwTofoMBmlAYCdtfGDfjDyycXqn6Jx4ZM8pp7c5KAgksAVBThs
KtTVnYIZ+QSkt68IWvcbPudhKvqW3SCfIheB6/WaDuQFv2k8v+6CT/yefv1+wF/b4ITL72hy
hwomBhCNI85dLqbkBp7pp7umMfPGFuWtFqlFgWHDLMF0y0woyxPzKLJcfR5JfN9K4xs+K0Lu
0camyloL7WoviDPgHnObeLh0s9x4E6BJg7chGShaMIfdD5F7eXN7d3lXU1plo9xKbmnVgPp8
4LZWEaaIjXKfLNrC0DqmVMgj7LUz9iGfe0KmtveZueWZnI6VEp5Ah0EkcEBxPlhEtFntd4fd
49EJvr+W+9+nztNbCX7aYRgR+BGrsX7FxrZ3e1i51DwCKIitbf36AJxwfuK1vfALQxYn8/Pv
CoJZkykZrN/VaEvu3vYdk38K6074VBXi7urTtZFNDyej0Dt9bdE01ZfptolwlNCFrCKJotxq
07LyZXcs0eGllAZGuxSGLGgsTTSuOn19OTyR/aWRbISG7rHTsqeZZ4KoAZMwt3dSv+t2ki24
HZvX987htVxtHk9xtJOqZC/Puyf4LHduZ3qN4STIVTvoEJx3W7MhtbKF+91yvdq92NqR9Cpy
Nk8/+vuyxNLG0vmy24svtk5+xKp5Nx+iua2DAU0Tv7wtn2Fq1rmTdPO88BdLDA5rjineb4M+
u/G4qZuTskE1PkU1fkoKDCdDK4hhgWmj++fKild10oq+aRYtms6iwU5gTHMFs6S04YBmxgKw
psEWKdBOlS6PAUsbEr4yuI+d37jQenl1eBoZSBzmRsUkiRma8SsrF3qn6ZwVV3dxhJ4wbc07
XNgfedrdqfbcQ9dSMBq5Q9hEvDqhNv0cm7HDbGis2Xa9323W5nay2MuS/kuSRlvU7AYQYLTm
jvsRpSqUNsPQ7mqzfaJQtVS0naqeMqiAnBLRpeECYISYjIEIi8WRoYiswSx8YQJ/j3tvwFrb
XD3XpuFNN/FWp5dA7VVSYlhXr3r6Nksyo/y1RS3N78XxZaET3LQ3yOdoMoGnymwnlt+goQtc
kMOGS6CH+nWPreYaOABiCVtoUVdFWnRORSusv53CZ2daf8kTRR8uprB8eVNYUoMV2Ub1sUrE
QktgoQBDe+RKhJerrz33UxKJ7wYSVdzVHT+Ub+udLsRoRaFVGYBfbNPRNDcQoZdZfhuO/s0d
NParnhH7lHPXlkGJMYsVqtaqRNAQdPyD2MRGIQ3XZCg6ISs3AGanuAXBxpbfXZHHYvhC7v8q
u5bmtm0g/Fc8OfXgZpzUk+biA/U0R3yZIM00F40iq6rGteKR7Zmmv77YXYAEwF2oOSXhrvgA
FosF8H1f+kNXZzhRgbXbvp0Orz+41UiMCNVCPOtFzlzhxIS4taiv1EMAmSRadKrKMXHBdoZF
AoMiAg4HRAe6al/Oxnfgxkexh/PmX71JoGstvGl80G5HsIGRDM2SOCjMTOU3735snjaXcPb2
fDhevmz+3OmfHx4uD8fX3R6a/52nvPHX5vSwO0LCHnrFRR4d9AR22Px9+NduDtmgM9KFevjq
LFgHRFMUESTYZAjgdUySbAm6AFocmrz/ZIm/aZxBzEL09eEb4TcF0iBMk/TVYRjCziiEtFyO
UlF2+HYCpsvp+9vr4egnpSoZpfqgitLBXkx18C3gMBiCg6EZaJdsXgjWRVpY1QTCLjlZo56l
MYRONU1hyeeic3p5u3IM2oFM7UDKV/V8cTOG9SB6C1WQqiz1KSnTWufPadoIs3k9/fBJsqyb
D1ezlEfvgTlt2rV425ChNFg+XUsW0cDve2fpBB8ksSinvAAAHVz99hEgfgtRcPPLV9BCYROZ
gp7yEX5wCYqREFmnYBcpgJEp3Fpa6+haNreBDQwGptyEaEyko7GQOdWlJelluJtXwAUhhAw/
wkHZUZKBmqV5REzSBuz9TJXjMNaTLhyBlYsZq3pSAVrRo6n0ptaQWFA+DSuLECILCa5LMg/X
DVNXsRR602SYUb7wk/X2kTDSePX5pJP6Ix7rPTztXvZjbKj+Q5VYVC6Rct6Tun8XPe7adN4M
giF61lUwb47ucD28s/gelOxIr/dX1PDTldb28QVdt0bHlysHCC4FYrZ8PW0IrnjqC+fOTP+T
OEeX1MXNx6vrz34vVKi5K+pqAXgan5AofhHUFjrdwWlUPimF2og+QSr4UCRXoaCRNAv2+nQI
ypaWBPQYZfjkuprLE2lTPHTCxlkDFZppPobzEH5aiaqj82Rl8aZ8df1/u9+pSZMlTGx/qJqT
HaOnE7dh/FYhBtutZWa7b2/7fag6AdGN0i9KWlQF8jxycVl2hbB4IrpOqevOMz1ZlyDSKssr
k1c5AQojt1wgaiI1kc5fhn8V/NxaYhGF/d+qAIIceN2L7G6cUciH6K7jtzCGyO0NrhtKPOlT
8WGrRLmnaKY2xas22QtW1ekVgUvkM5eRknM1qhyHCBp97GrqKtwMOktAXiF5sMoTVwH/WPvf
BmBFAxjWz7/Ivm8f355pGN1ujnv/XKdcNAGHkW27nuk4AHcQCxIubyL3cl4ZjHoZq2c3IJCy
Tt0dC51w9mT4b3MHkV5vQq1fBjsonN2Kj/hGnO/b5saRkSBBJ4p30P0aTShBz8AtVvN5FYxj
qvbhcKUPkotfXvQaDBE0lxdPb6+7f3b6L8Cwf//eEZjHPSG89xLLg/H5b1WX9/GdIbwH1GKx
kGLOl8IBB0KcUQhz15ETSBV2VRLuA/q5rFPSjgI54FvLOZWc7KFqptv8zL2g+aCWtBUW/2x8
qg5llCETE+3wodFy7Sc63FvtG6Ig/2iYl4HK1BZK19rAkJJReSaj04wQa580OqNUZ+wqNmlZ
snWsr6e1/pKiSZNsvF8Hosrs5AxqzciqFrsJPM72JTqJzY2S0HeKW4E4os9O6g+HhFFzX9dM
FWTXTKaFQgkCYacV9jBYH1t/9iRzQXnSp92jU0jS7q3LOqlueR+rCsDKKvhGpFtzrHhjzok1
Ws9h4yEk2BrqHnoSvz+8iQ6dOuQjT83dcktSNUa4jZBJF5EwAO52TlEEvw6hCEN5Os/FSMPi
rEChfUHMakgCerLlWaNOYbOceYtl+Hes4monWL3oqa6BlYMly9qoASsXTfgrVAzIPc6fU8nB
CRL8lyfImHE1f6l3dbGyyHQhxbU5irHN60mpUDepEUS/iREW0Z9GVEZzhqTT8SdJJGQgC+ea
qT2b4Ipe6pM8T8twwHmvZ0Rp2TnD7maUJLO6vvry2dPqcgyCEm/v0c5EgfTeR5awqpLIZgs1
BI62WMLP0zObUlbAcb3wM2K/gO7SAlpKJ04vRO3189qavSsoa/InH8G2yX9BynMKmmgAAA==

--mcvsf2gy7r3m65qp--
