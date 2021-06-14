Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBQ5QTWDAMGQE4QYBHMQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x640.google.com (mail-pl1-x640.google.com [IPv6:2607:f8b0:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id 00F4F3A67B9
	for <lists+clang-built-linux@lfdr.de>; Mon, 14 Jun 2021 15:23:17 +0200 (CEST)
Received: by mail-pl1-x640.google.com with SMTP id d1-20020a1709027281b0290112c70b86f1sf4665241pll.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 14 Jun 2021 06:23:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623676995; cv=pass;
        d=google.com; s=arc-20160816;
        b=nni8ATAkVcCs+snvzbOTYF/jV+dTILzhbXuYYi7895WQ2nbK7zBYT3KZaVX22r8YVc
         rw50GQVGJZDh0AX82u0OPt2MLtGNhcxfm60HCTVXVqYn0xpIQp+FxwS81vb22YXj8BTO
         7nRoNpCggk2IqdOLkTrzRtPRYvWRtASawjtZEtu+oKCS4AH+rsxeouqB6se2gdzKsH1h
         iOMN+dXs8mp0je2SGEUy9F5e6hPy1Dp88OeJNAw9+uyjP79hzFHiMiRSpLHmUi9SWBgh
         Jd25NjjLW70DNPQW4fbqZlwmykYh2VNjqR0jRytjbZh7O4H0hghpNltPBUnYsP1VVPos
         3j4w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=AOVKGKnY20CcF9Rsetd1ajRsCQFbir7mOlVFwms5YvE=;
        b=Wz8VgOiVLM2uMSeaFwYVKvh8qyH85fQbhkltDWl2gbojmVooIlc2yg+Lu1baTMJ/Hd
         9vPZt4V9gq0H3iNrJP+FvE+oej9Po7HJsmdfSYKgy2yOk94eqmDPwKHini/TnrrILFhb
         GCJJ9Jt4etSWYAdEXDKOm1wR2+tukil/1IEClTYFgbGAW/szh9HKUAyIASy3mykvlUKW
         x/yoSvKACMkcPTvngBhqfuA62qhT6pmD6Zzh15nrR+Ul8z3teMaO6bSXlOJlEwDGmMXH
         bEKAnrOzHJidpdFldCa0qweSgMK+PB3KcbDsFcnTBRpCBpdausjDuXqWqwDt+reNjQJW
         Vbrg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=AOVKGKnY20CcF9Rsetd1ajRsCQFbir7mOlVFwms5YvE=;
        b=DfJK1Houiz6/e+9fz6Sy/VjrMaNLlfsSSt0KM28yBnShXoKQDmi4/aVaMS1xPWwoSa
         uor1ZCYjRnFJ0hOxHlZC3/d/V+Jabcpk1UYgWw05HhyVp42STUERPr9zcQcgBteHmuTV
         hX7nAjXfQN70p1+MegYqLti/CbgKLWt7VvDsOh5xeD+dSfjxBYsb9uPC/OQNDr7K4aoM
         7l0LrV0sHf3R9S1oDPuHqpXQJ1QDTHSzYBRVZb8lVQHYW8Kie45Plw7t02KacgekJ4c5
         c6i9BjkKbIBTyARX8ud8dnUwlXZ7C2vN4TnJ4TJ1PyIFtI7BuOe2GaJEfoeggnFnFZHh
         xxDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=AOVKGKnY20CcF9Rsetd1ajRsCQFbir7mOlVFwms5YvE=;
        b=tpi7xWisR0/5DMDpHtO+PmXY7jzPQm7RYNYd2UMS1CXfWy2MJ1H5ztHpc33+ot3DH+
         y4jQcBmC9HHpUWSO8xWlzIl37U0oNOThSMWOSaghp/mjClmwhYr0KQSRFlQOenmqhB3S
         uJR4lWAH0XI+Ktq9/XittvZiyFxH7sRJ0UqU8gf6ez2vE6UB+lMH0vWq0aa/RZaet0P7
         /RsBAvey5mlW4Resul0DHR+Gf60i9TNiEMFHYDG2FscyLZOywO72t99FpO7nacgYv2I4
         /x59X3bx1QvGUHf0O9mT8JuxOwljKbWdw6OGw+v5KZPJ+RgI62nXahhRxJiTGh3eippf
         BCPw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533diJWg8YdUYzorICtQVZqarexODmGx51sYOpXUvVT4zUAksvBV
	y5OOEt0wfOmiMY7QY9aRG9U=
X-Google-Smtp-Source: ABdhPJyNN+rXUgyxzDJ1S5xfiEJownIgeJ1xSy3KoB0WnkxaLucLr1nazp60FUGl3k75uK0HL+uw5g==
X-Received: by 2002:a62:2785:0:b029:2ec:b165:db1f with SMTP id n127-20020a6227850000b02902ecb165db1fmr21567759pfn.34.1623676995171;
        Mon, 14 Jun 2021 06:23:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:4107:: with SMTP id w7ls7986404pgp.3.gmail; Mon, 14 Jun
 2021 06:23:14 -0700 (PDT)
X-Received: by 2002:a63:7d14:: with SMTP id y20mr2909888pgc.182.1623676994384;
        Mon, 14 Jun 2021 06:23:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623676994; cv=none;
        d=google.com; s=arc-20160816;
        b=gU88GxsCyChseweATBFHElqSo6sYVGVqwBnWGkW3rYyA868xWpBvsCcM0Qu1N7k5KK
         2ojhXmrFP9dsZlM0tFlY3LXJBVxW+1UmghyPYA4P6va6w4HspUKbe/+vJRtlie9RyB4A
         r5QdHTXLXlMcAqrDdjTAka3oQYBKWdtErVrg2XNNu0ynUG7JrnfM0drqZ+j22aXIibb7
         Yo5jD04tXlkJ06YKoJjI0UNOQoYG7LMl0Kkq5WM55RH3W/PLE7oeVrkGvyXGQTMc0Ev5
         4qthOmL0CLupZEf3gdMld9A+tfpp107BUZs+34WbP3KIKfehb5SHEKJGZ17geG094Wgm
         VOOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=9yY1Nq3RQUXC7685A3RCP3WgPVwVbQk/PvHoWhLoEXw=;
        b=rNZlyEiXzovGxyTbNWADBhDNrJNu5srn9RUvCjWL+s2xynAjnve5T9giO+Mhol35s5
         HzhQK+KSjQXFgDAGcfb0S8jaGNScYSvCcultXMVFVVc9HyaFdhqHOHIfTzXsaHd/u2el
         Nlbd0Giezc40SleW82hneYh5lndRn6zGp2GPInolEsDYvZMTHf6Byzg117O5JxfM8yeY
         JRoGirVaJ2CEDgp2rqK2mKjvVigWGdlXOHfIMTDd9wlgcWwHvSKxau+qQop7Y7QpzvrT
         /M+HjIIgBZvnzaqkfNe6SOb1S3WuL8H/N/IQSTOV15MWtLF6WzlkbPUjd+xXBi2hRQta
         0+TQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga07.intel.com (mga07.intel.com. [134.134.136.100])
        by gmr-mx.google.com with ESMTPS id q7si661278pgf.3.2021.06.14.06.23.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 14 Jun 2021 06:23:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) client-ip=134.134.136.100;
IronPort-SDR: RVTiizmCOYR8WHCigj7ZSBnr1dXLCK08chzB3pB2lfFJd2ylbCb6A3oB22zvFmctA+I/fwjsc2
 uQwzd/tWpzQg==
X-IronPort-AV: E=McAfee;i="6200,9189,10014"; a="269658554"
X-IronPort-AV: E=Sophos;i="5.83,273,1616482800"; 
   d="gz'50?scan'50,208,50";a="269658554"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Jun 2021 06:23:13 -0700
IronPort-SDR: IK0rC7ktsG5EU1mSqzK4RKiePd4ZOOOXRl04RiNrnIyonUfldbDZFnJS20t9XPfueQIGjmZ7KV
 nEAHdcF3lKfw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,273,1616482800"; 
   d="gz'50?scan'50,208,50";a="484085517"
Received: from lkp-server01.sh.intel.com (HELO 4aae0cb4f5b5) ([10.239.97.150])
  by orsmga001.jf.intel.com with ESMTP; 14 Jun 2021 06:23:10 -0700
Received: from kbuild by 4aae0cb4f5b5 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lsmYY-00001M-7V; Mon, 14 Jun 2021 13:23:10 +0000
Date: Mon, 14 Jun 2021 21:22:41 +0800
From: kernel test robot <lkp@intel.com>
To: Juri Lelli <juri.lelli@redhat.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [jlelli:fixes/rt-double_enqueue 1/1] kernel/sched/core.c:7082:6:
 warning: variable 'new_effective_prio' is used uninitialized whenever 'if'
 condition is false
Message-ID: <202106142122.t3SrLOHr-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="0F1p//8PRICkK4MW"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
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


--0F1p//8PRICkK4MW
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://github.com/jlelli/linux.git fixes/rt-double_enqueue
head:   f06324e1cbda29c75934fd8596ec7048deb9d810
commit: f06324e1cbda29c75934fd8596ec7048deb9d810 [1/1] sched/rt: Fix double enqueue cause by rt_effective_prio
config: x86_64-randconfig-a001-20210614 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 64720f57bea6a6bf033feef4a5751ab9c0c3b401)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        # https://github.com/jlelli/linux/commit/f06324e1cbda29c75934fd8596ec7048deb9d810
        git remote add jlelli https://github.com/jlelli/linux.git
        git fetch --no-tags jlelli fixes/rt-double_enqueue
        git checkout f06324e1cbda29c75934fd8596ec7048deb9d810
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   kernel/sched/core.c:3277:13: warning: variable 'rq' set but not used [-Wunused-but-set-variable]
           struct rq *rq;
                      ^
>> kernel/sched/core.c:7082:6: warning: variable 'new_effective_prio' is used uninitialized whenever 'if' condition is false [-Wsometimes-uninitialized]
           if (pi) {
               ^~
   kernel/sched/core.c:7107:34: note: uninitialized use occurs here
           __setscheduler(rq, p, attr, pi, new_effective_prio);
                                           ^~~~~~~~~~~~~~~~~~
   kernel/sched/core.c:7082:2: note: remove the 'if' if its condition is always true
           if (pi) {
           ^~~~~~~~
   kernel/sched/core.c:6884:24: note: initialize the variable 'new_effective_prio' to silence this warning
           int new_effective_prio, policy = attr->sched_policy;
                                 ^
                                  = 0
   kernel/sched/core.c:3267:20: warning: unused function 'rq_has_pinned_tasks' [-Wunused-function]
   static inline bool rq_has_pinned_tasks(struct rq *rq)
                      ^
   kernel/sched/core.c:5115:20: warning: unused function 'sched_tick_start' [-Wunused-function]
   static inline void sched_tick_start(int cpu) { }
                      ^
   kernel/sched/core.c:5116:20: warning: unused function 'sched_tick_stop' [-Wunused-function]
   static inline void sched_tick_stop(int cpu) { }
                      ^
   kernel/sched/core.c:5773:20: warning: unused function 'sched_core_cpu_starting' [-Wunused-function]
   static inline void sched_core_cpu_starting(unsigned int cpu) {}
                      ^
   6 warnings generated.


vim +7082 kernel/sched/core.c

c69e8d9c01db2a kernel/sched.c      David Howells             2008-11-14  6876  
d50dde5a10f305 kernel/sched/core.c Dario Faggioli            2013-11-07  6877  static int __sched_setscheduler(struct task_struct *p,
d50dde5a10f305 kernel/sched/core.c Dario Faggioli            2013-11-07  6878  				const struct sched_attr *attr,
dbc7f069b93a24 kernel/sched/core.c Peter Zijlstra            2015-06-11  6879  				bool user, bool pi)
^1da177e4c3f41 kernel/sched.c      Linus Torvalds            2005-04-16  6880  {
383afd0971538b kernel/sched/core.c Steven Rostedt            2014-03-11  6881  	int newprio = dl_policy(attr->sched_policy) ? MAX_DL_PRIO - 1 :
383afd0971538b kernel/sched/core.c Steven Rostedt            2014-03-11  6882  		      MAX_RT_PRIO - 1 - attr->sched_priority;
da0c1e65b51a28 kernel/sched/core.c Kirill Tkhai              2014-08-20  6883  	int retval, oldprio, oldpolicy = -1, queued, running;
0782e63bc6fe7e kernel/sched/core.c Thomas Gleixner           2015-05-05  6884  	int new_effective_prio, policy = attr->sched_policy;
83ab0aa0d5623d kernel/sched.c      Thomas Gleixner           2010-02-17  6885  	const struct sched_class *prev_class;
565790d28b1e33 kernel/sched/core.c Peter Zijlstra            2020-05-11  6886  	struct callback_head *head;
eb58075149b7f0 kernel/sched/core.c Peter Zijlstra            2015-07-31  6887  	struct rq_flags rf;
ca94c442535a44 kernel/sched.c      Lennart Poettering        2009-06-15  6888  	int reset_on_fork;
7a57f32a4d5c80 kernel/sched/core.c Peter Zijlstra            2017-02-21  6889  	int queue_flags = DEQUEUE_SAVE | DEQUEUE_MOVE | DEQUEUE_NOCLOCK;
eb58075149b7f0 kernel/sched/core.c Peter Zijlstra            2015-07-31  6890  	struct rq *rq;
^1da177e4c3f41 kernel/sched.c      Linus Torvalds            2005-04-16  6891  
896bbb2522587e kernel/sched/core.c Steven Rostedt (VMware    2017-03-09  6892) 	/* The pi code expects interrupts enabled */
896bbb2522587e kernel/sched/core.c Steven Rostedt (VMware    2017-03-09  6893) 	BUG_ON(pi && in_interrupt());
^1da177e4c3f41 kernel/sched.c      Linus Torvalds            2005-04-16  6894  recheck:
d1ccc66df8bfe3 kernel/sched/core.c Ingo Molnar               2017-02-01  6895  	/* Double check policy once rq lock held: */
ca94c442535a44 kernel/sched.c      Lennart Poettering        2009-06-15  6896  	if (policy < 0) {
ca94c442535a44 kernel/sched.c      Lennart Poettering        2009-06-15  6897  		reset_on_fork = p->sched_reset_on_fork;
^1da177e4c3f41 kernel/sched.c      Linus Torvalds            2005-04-16  6898  		policy = oldpolicy = p->policy;
ca94c442535a44 kernel/sched.c      Lennart Poettering        2009-06-15  6899  	} else {
7479f3c9cf67ed kernel/sched/core.c Peter Zijlstra            2014-01-15  6900  		reset_on_fork = !!(attr->sched_flags & SCHED_FLAG_RESET_ON_FORK);
ca94c442535a44 kernel/sched.c      Lennart Poettering        2009-06-15  6901  
20f9cd2acb1d74 kernel/sched/core.c Henrik Austad             2015-09-09  6902  		if (!valid_policy(policy))
^1da177e4c3f41 kernel/sched.c      Linus Torvalds            2005-04-16  6903  			return -EINVAL;
ca94c442535a44 kernel/sched.c      Lennart Poettering        2009-06-15  6904  	}
ca94c442535a44 kernel/sched.c      Lennart Poettering        2009-06-15  6905  
794a56ebd9a57d kernel/sched/core.c Juri Lelli                2017-12-04  6906  	if (attr->sched_flags & ~(SCHED_FLAG_ALL | SCHED_FLAG_SUGOV))
7479f3c9cf67ed kernel/sched/core.c Peter Zijlstra            2014-01-15  6907  		return -EINVAL;
7479f3c9cf67ed kernel/sched/core.c Peter Zijlstra            2014-01-15  6908  
^1da177e4c3f41 kernel/sched.c      Linus Torvalds            2005-04-16  6909  	/*
^1da177e4c3f41 kernel/sched.c      Linus Torvalds            2005-04-16  6910  	 * Valid priorities for SCHED_FIFO and SCHED_RR are
ae18ad281e8259 kernel/sched/core.c Dietmar Eggemann          2021-01-28  6911  	 * 1..MAX_RT_PRIO-1, valid priority for SCHED_NORMAL,
dd41f596cda0d7 kernel/sched.c      Ingo Molnar               2007-07-09  6912  	 * SCHED_BATCH and SCHED_IDLE is 0.
^1da177e4c3f41 kernel/sched.c      Linus Torvalds            2005-04-16  6913  	 */
ae18ad281e8259 kernel/sched/core.c Dietmar Eggemann          2021-01-28  6914  	if (attr->sched_priority > MAX_RT_PRIO-1)
^1da177e4c3f41 kernel/sched.c      Linus Torvalds            2005-04-16  6915  		return -EINVAL;
aab03e05e8f7e2 kernel/sched/core.c Dario Faggioli            2013-11-28  6916  	if ((dl_policy(policy) && !__checkparam_dl(attr)) ||
aab03e05e8f7e2 kernel/sched/core.c Dario Faggioli            2013-11-28  6917  	    (rt_policy(policy) != (attr->sched_priority != 0)))
^1da177e4c3f41 kernel/sched.c      Linus Torvalds            2005-04-16  6918  		return -EINVAL;
^1da177e4c3f41 kernel/sched.c      Linus Torvalds            2005-04-16  6919  
37e4ab3f0cba13 kernel/sched.c      Olivier Croquette         2005-06-25  6920  	/*
37e4ab3f0cba13 kernel/sched.c      Olivier Croquette         2005-06-25  6921  	 * Allow unprivileged RT tasks to decrease priority:
37e4ab3f0cba13 kernel/sched.c      Olivier Croquette         2005-06-25  6922  	 */
961ccddd59d627 kernel/sched.c      Rusty Russell             2008-06-23  6923  	if (user && !capable(CAP_SYS_NICE)) {
d50dde5a10f305 kernel/sched/core.c Dario Faggioli            2013-11-07  6924  		if (fair_policy(policy)) {
d0ea026808ad81 kernel/sched/core.c Dongsheng Yang            2014-01-27  6925  			if (attr->sched_nice < task_nice(p) &&
eaad45132c564c kernel/sched/core.c Peter Zijlstra            2014-01-16  6926  			    !can_nice(p, attr->sched_nice))
d50dde5a10f305 kernel/sched/core.c Dario Faggioli            2013-11-07  6927  				return -EPERM;
d50dde5a10f305 kernel/sched/core.c Dario Faggioli            2013-11-07  6928  		}
d50dde5a10f305 kernel/sched/core.c Dario Faggioli            2013-11-07  6929  
e05606d3301525 kernel/sched.c      Ingo Molnar               2007-07-09  6930  		if (rt_policy(policy)) {
a44702e8858a07 kernel/sched.c      Oleg Nesterov             2010-06-11  6931  			unsigned long rlim_rtprio =
a44702e8858a07 kernel/sched.c      Oleg Nesterov             2010-06-11  6932  					task_rlimit(p, RLIMIT_RTPRIO);
5fe1d75f349740 kernel/sched.c      Oleg Nesterov             2006-09-29  6933  
d1ccc66df8bfe3 kernel/sched/core.c Ingo Molnar               2017-02-01  6934  			/* Can't set/change the rt policy: */
8dc3e9099e01df kernel/sched.c      Oleg Nesterov             2006-09-29  6935  			if (policy != p->policy && !rlim_rtprio)
^1da177e4c3f41 kernel/sched.c      Linus Torvalds            2005-04-16  6936  				return -EPERM;
8dc3e9099e01df kernel/sched.c      Oleg Nesterov             2006-09-29  6937  
d1ccc66df8bfe3 kernel/sched/core.c Ingo Molnar               2017-02-01  6938  			/* Can't increase priority: */
d50dde5a10f305 kernel/sched/core.c Dario Faggioli            2013-11-07  6939  			if (attr->sched_priority > p->rt_priority &&
d50dde5a10f305 kernel/sched/core.c Dario Faggioli            2013-11-07  6940  			    attr->sched_priority > rlim_rtprio)
^1da177e4c3f41 kernel/sched.c      Linus Torvalds            2005-04-16  6941  				return -EPERM;
8dc3e9099e01df kernel/sched.c      Oleg Nesterov             2006-09-29  6942  		}
c02aa73b1d18e4 kernel/sched.c      Darren Hart               2011-02-17  6943  
d44753b843e093 kernel/sched/core.c Juri Lelli                2014-03-03  6944  		 /*
d44753b843e093 kernel/sched/core.c Juri Lelli                2014-03-03  6945  		  * Can't set/change SCHED_DEADLINE policy at all for now
d44753b843e093 kernel/sched/core.c Juri Lelli                2014-03-03  6946  		  * (safest behavior); in the future we would like to allow
d44753b843e093 kernel/sched/core.c Juri Lelli                2014-03-03  6947  		  * unprivileged DL tasks to increase their relative deadline
d44753b843e093 kernel/sched/core.c Juri Lelli                2014-03-03  6948  		  * or reduce their runtime (both ways reducing utilization)
d44753b843e093 kernel/sched/core.c Juri Lelli                2014-03-03  6949  		  */
d44753b843e093 kernel/sched/core.c Juri Lelli                2014-03-03  6950  		if (dl_policy(policy))
d44753b843e093 kernel/sched/core.c Juri Lelli                2014-03-03  6951  			return -EPERM;
d44753b843e093 kernel/sched/core.c Juri Lelli                2014-03-03  6952  
dd41f596cda0d7 kernel/sched.c      Ingo Molnar               2007-07-09  6953  		/*
c02aa73b1d18e4 kernel/sched.c      Darren Hart               2011-02-17  6954  		 * Treat SCHED_IDLE as nice 20. Only allow a switch to
c02aa73b1d18e4 kernel/sched.c      Darren Hart               2011-02-17  6955  		 * SCHED_NORMAL if the RLIMIT_NICE would normally permit it.
dd41f596cda0d7 kernel/sched.c      Ingo Molnar               2007-07-09  6956  		 */
1da1843f9f0334 kernel/sched/core.c Viresh Kumar              2018-11-05  6957  		if (task_has_idle_policy(p) && !idle_policy(policy)) {
d0ea026808ad81 kernel/sched/core.c Dongsheng Yang            2014-01-27  6958  			if (!can_nice(p, task_nice(p)))
dd41f596cda0d7 kernel/sched.c      Ingo Molnar               2007-07-09  6959  				return -EPERM;
c02aa73b1d18e4 kernel/sched.c      Darren Hart               2011-02-17  6960  		}
8dc3e9099e01df kernel/sched.c      Oleg Nesterov             2006-09-29  6961  
d1ccc66df8bfe3 kernel/sched/core.c Ingo Molnar               2017-02-01  6962  		/* Can't change other user's priorities: */
c69e8d9c01db2a kernel/sched.c      David Howells             2008-11-14  6963  		if (!check_same_owner(p))
37e4ab3f0cba13 kernel/sched.c      Olivier Croquette         2005-06-25  6964  			return -EPERM;
ca94c442535a44 kernel/sched.c      Lennart Poettering        2009-06-15  6965  
d1ccc66df8bfe3 kernel/sched/core.c Ingo Molnar               2017-02-01  6966  		/* Normal users shall not reset the sched_reset_on_fork flag: */
ca94c442535a44 kernel/sched.c      Lennart Poettering        2009-06-15  6967  		if (p->sched_reset_on_fork && !reset_on_fork)
ca94c442535a44 kernel/sched.c      Lennart Poettering        2009-06-15  6968  			return -EPERM;
37e4ab3f0cba13 kernel/sched.c      Olivier Croquette         2005-06-25  6969  	}
^1da177e4c3f41 kernel/sched.c      Linus Torvalds            2005-04-16  6970  
725aad24c3ba96 kernel/sched.c      Jeremy Fitzhardinge       2008-08-03  6971  	if (user) {
794a56ebd9a57d kernel/sched/core.c Juri Lelli                2017-12-04  6972  		if (attr->sched_flags & SCHED_FLAG_SUGOV)
794a56ebd9a57d kernel/sched/core.c Juri Lelli                2017-12-04  6973  			return -EINVAL;
794a56ebd9a57d kernel/sched/core.c Juri Lelli                2017-12-04  6974  
b0ae1981137503 kernel/sched.c      KOSAKI Motohiro           2010-10-15  6975  		retval = security_task_setscheduler(p);
^1da177e4c3f41 kernel/sched.c      Linus Torvalds            2005-04-16  6976  		if (retval)
^1da177e4c3f41 kernel/sched.c      Linus Torvalds            2005-04-16  6977  			return retval;
725aad24c3ba96 kernel/sched.c      Jeremy Fitzhardinge       2008-08-03  6978  	}
725aad24c3ba96 kernel/sched.c      Jeremy Fitzhardinge       2008-08-03  6979  
a509a7cd797470 kernel/sched/core.c Patrick Bellasi           2019-06-21  6980  	/* Update task specific "requested" clamps */
a509a7cd797470 kernel/sched/core.c Patrick Bellasi           2019-06-21  6981  	if (attr->sched_flags & SCHED_FLAG_UTIL_CLAMP) {
a509a7cd797470 kernel/sched/core.c Patrick Bellasi           2019-06-21  6982  		retval = uclamp_validate(p, attr);
a509a7cd797470 kernel/sched/core.c Patrick Bellasi           2019-06-21  6983  		if (retval)
a509a7cd797470 kernel/sched/core.c Patrick Bellasi           2019-06-21  6984  			return retval;
a509a7cd797470 kernel/sched/core.c Patrick Bellasi           2019-06-21  6985  	}
a509a7cd797470 kernel/sched/core.c Patrick Bellasi           2019-06-21  6986  
710da3c8ea7dfb kernel/sched/core.c Juri Lelli                2019-07-19  6987  	if (pi)
710da3c8ea7dfb kernel/sched/core.c Juri Lelli                2019-07-19  6988  		cpuset_read_lock();
710da3c8ea7dfb kernel/sched/core.c Juri Lelli                2019-07-19  6989  
b29739f902ee76 kernel/sched.c      Ingo Molnar               2006-06-27  6990  	/*
d1ccc66df8bfe3 kernel/sched/core.c Ingo Molnar               2017-02-01  6991  	 * Make sure no PI-waiters arrive (or leave) while we are
b29739f902ee76 kernel/sched.c      Ingo Molnar               2006-06-27  6992  	 * changing the priority of the task:
0122ec5b02f766 kernel/sched.c      Peter Zijlstra            2011-04-05  6993  	 *
25985edcedea63 kernel/sched.c      Lucas De Marchi           2011-03-30  6994  	 * To be able to change p->policy safely, the appropriate
^1da177e4c3f41 kernel/sched.c      Linus Torvalds            2005-04-16  6995  	 * runqueue lock must be held.
^1da177e4c3f41 kernel/sched.c      Linus Torvalds            2005-04-16  6996  	 */
eb58075149b7f0 kernel/sched/core.c Peter Zijlstra            2015-07-31  6997  	rq = task_rq_lock(p, &rf);
80f5c1b84baa81 kernel/sched/core.c Peter Zijlstra            2016-10-03  6998  	update_rq_clock(rq);
dc61b1d65e353d kernel/sched.c      Peter Zijlstra            2010-06-08  6999  
34f971f6f7988b kernel/sched.c      Peter Zijlstra            2010-09-22  7000  	/*
d1ccc66df8bfe3 kernel/sched/core.c Ingo Molnar               2017-02-01  7001  	 * Changing the policy of the stop threads its a very bad idea:
34f971f6f7988b kernel/sched.c      Peter Zijlstra            2010-09-22  7002  	 */
34f971f6f7988b kernel/sched.c      Peter Zijlstra            2010-09-22  7003  	if (p == rq->stop) {
4b211f2b129dd1 kernel/sched/core.c Mathieu Poirier           2019-07-19  7004  		retval = -EINVAL;
4b211f2b129dd1 kernel/sched/core.c Mathieu Poirier           2019-07-19  7005  		goto unlock;
34f971f6f7988b kernel/sched.c      Peter Zijlstra            2010-09-22  7006  	}
34f971f6f7988b kernel/sched.c      Peter Zijlstra            2010-09-22  7007  
a51e91981870d0 kernel/sched.c      Dario Faggioli            2011-03-24  7008  	/*
d6b1e9119787fd kernel/sched/core.c Thomas Gleixner           2014-02-07  7009  	 * If not changing anything there's no need to proceed further,
d6b1e9119787fd kernel/sched/core.c Thomas Gleixner           2014-02-07  7010  	 * but store a possible modification of reset_on_fork.
a51e91981870d0 kernel/sched.c      Dario Faggioli            2011-03-24  7011  	 */
d50dde5a10f305 kernel/sched/core.c Dario Faggioli            2013-11-07  7012  	if (unlikely(policy == p->policy)) {
d0ea026808ad81 kernel/sched/core.c Dongsheng Yang            2014-01-27  7013  		if (fair_policy(policy) && attr->sched_nice != task_nice(p))
d50dde5a10f305 kernel/sched/core.c Dario Faggioli            2013-11-07  7014  			goto change;
d50dde5a10f305 kernel/sched/core.c Dario Faggioli            2013-11-07  7015  		if (rt_policy(policy) && attr->sched_priority != p->rt_priority)
d50dde5a10f305 kernel/sched/core.c Dario Faggioli            2013-11-07  7016  			goto change;
75381608e8410a kernel/sched/core.c Wanpeng Li                2014-11-26  7017  		if (dl_policy(policy) && dl_param_changed(p, attr))
aab03e05e8f7e2 kernel/sched/core.c Dario Faggioli            2013-11-28  7018  			goto change;
a509a7cd797470 kernel/sched/core.c Patrick Bellasi           2019-06-21  7019  		if (attr->sched_flags & SCHED_FLAG_UTIL_CLAMP)
a509a7cd797470 kernel/sched/core.c Patrick Bellasi           2019-06-21  7020  			goto change;
d50dde5a10f305 kernel/sched/core.c Dario Faggioli            2013-11-07  7021  
d6b1e9119787fd kernel/sched/core.c Thomas Gleixner           2014-02-07  7022  		p->sched_reset_on_fork = reset_on_fork;
4b211f2b129dd1 kernel/sched/core.c Mathieu Poirier           2019-07-19  7023  		retval = 0;
4b211f2b129dd1 kernel/sched/core.c Mathieu Poirier           2019-07-19  7024  		goto unlock;
a51e91981870d0 kernel/sched.c      Dario Faggioli            2011-03-24  7025  	}
d50dde5a10f305 kernel/sched/core.c Dario Faggioli            2013-11-07  7026  change:
a51e91981870d0 kernel/sched.c      Dario Faggioli            2011-03-24  7027  
dc61b1d65e353d kernel/sched.c      Peter Zijlstra            2010-06-08  7028  	if (user) {
332ac17ef5bfcf kernel/sched/core.c Dario Faggioli            2013-11-07  7029  #ifdef CONFIG_RT_GROUP_SCHED
dc61b1d65e353d kernel/sched.c      Peter Zijlstra            2010-06-08  7030  		/*
dc61b1d65e353d kernel/sched.c      Peter Zijlstra            2010-06-08  7031  		 * Do not allow realtime tasks into groups that have no runtime
dc61b1d65e353d kernel/sched.c      Peter Zijlstra            2010-06-08  7032  		 * assigned.
dc61b1d65e353d kernel/sched.c      Peter Zijlstra            2010-06-08  7033  		 */
dc61b1d65e353d kernel/sched.c      Peter Zijlstra            2010-06-08  7034  		if (rt_bandwidth_enabled() && rt_policy(policy) &&
f44937718ce3b8 kernel/sched.c      Mike Galbraith            2011-01-13  7035  				task_group(p)->rt_bandwidth.rt_runtime == 0 &&
f44937718ce3b8 kernel/sched.c      Mike Galbraith            2011-01-13  7036  				!task_group_is_autogroup(task_group(p))) {
4b211f2b129dd1 kernel/sched/core.c Mathieu Poirier           2019-07-19  7037  			retval = -EPERM;
4b211f2b129dd1 kernel/sched/core.c Mathieu Poirier           2019-07-19  7038  			goto unlock;
dc61b1d65e353d kernel/sched.c      Peter Zijlstra            2010-06-08  7039  		}
332ac17ef5bfcf kernel/sched/core.c Dario Faggioli            2013-11-07  7040  #endif
332ac17ef5bfcf kernel/sched/core.c Dario Faggioli            2013-11-07  7041  #ifdef CONFIG_SMP
794a56ebd9a57d kernel/sched/core.c Juri Lelli                2017-12-04  7042  		if (dl_bandwidth_enabled() && dl_policy(policy) &&
794a56ebd9a57d kernel/sched/core.c Juri Lelli                2017-12-04  7043  				!(attr->sched_flags & SCHED_FLAG_SUGOV)) {
332ac17ef5bfcf kernel/sched/core.c Dario Faggioli            2013-11-07  7044  			cpumask_t *span = rq->rd->span;
332ac17ef5bfcf kernel/sched/core.c Dario Faggioli            2013-11-07  7045  
332ac17ef5bfcf kernel/sched/core.c Dario Faggioli            2013-11-07  7046  			/*
332ac17ef5bfcf kernel/sched/core.c Dario Faggioli            2013-11-07  7047  			 * Don't allow tasks with an affinity mask smaller than
332ac17ef5bfcf kernel/sched/core.c Dario Faggioli            2013-11-07  7048  			 * the entire root_domain to become SCHED_DEADLINE. We
332ac17ef5bfcf kernel/sched/core.c Dario Faggioli            2013-11-07  7049  			 * will also fail if there's no bandwidth available.
332ac17ef5bfcf kernel/sched/core.c Dario Faggioli            2013-11-07  7050  			 */
3bd3706251ee8a kernel/sched/core.c Sebastian Andrzej Siewior 2019-04-23  7051  			if (!cpumask_subset(span, p->cpus_ptr) ||
332ac17ef5bfcf kernel/sched/core.c Dario Faggioli            2013-11-07  7052  			    rq->rd->dl_bw.bw == 0) {
4b211f2b129dd1 kernel/sched/core.c Mathieu Poirier           2019-07-19  7053  				retval = -EPERM;
4b211f2b129dd1 kernel/sched/core.c Mathieu Poirier           2019-07-19  7054  				goto unlock;
332ac17ef5bfcf kernel/sched/core.c Dario Faggioli            2013-11-07  7055  			}
dc61b1d65e353d kernel/sched.c      Peter Zijlstra            2010-06-08  7056  		}
dc61b1d65e353d kernel/sched.c      Peter Zijlstra            2010-06-08  7057  #endif
332ac17ef5bfcf kernel/sched/core.c Dario Faggioli            2013-11-07  7058  	}
dc61b1d65e353d kernel/sched.c      Peter Zijlstra            2010-06-08  7059  
d1ccc66df8bfe3 kernel/sched/core.c Ingo Molnar               2017-02-01  7060  	/* Re-check policy now with rq lock held: */
^1da177e4c3f41 kernel/sched.c      Linus Torvalds            2005-04-16  7061  	if (unlikely(oldpolicy != -1 && oldpolicy != p->policy)) {
^1da177e4c3f41 kernel/sched.c      Linus Torvalds            2005-04-16  7062  		policy = oldpolicy = -1;
eb58075149b7f0 kernel/sched/core.c Peter Zijlstra            2015-07-31  7063  		task_rq_unlock(rq, p, &rf);
710da3c8ea7dfb kernel/sched/core.c Juri Lelli                2019-07-19  7064  		if (pi)
710da3c8ea7dfb kernel/sched/core.c Juri Lelli                2019-07-19  7065  			cpuset_read_unlock();
^1da177e4c3f41 kernel/sched.c      Linus Torvalds            2005-04-16  7066  		goto recheck;
^1da177e4c3f41 kernel/sched.c      Linus Torvalds            2005-04-16  7067  	}
332ac17ef5bfcf kernel/sched/core.c Dario Faggioli            2013-11-07  7068  
332ac17ef5bfcf kernel/sched/core.c Dario Faggioli            2013-11-07  7069  	/*
332ac17ef5bfcf kernel/sched/core.c Dario Faggioli            2013-11-07  7070  	 * If setscheduling to SCHED_DEADLINE (or changing the parameters
332ac17ef5bfcf kernel/sched/core.c Dario Faggioli            2013-11-07  7071  	 * of a SCHED_DEADLINE task) we need to check if enough bandwidth
332ac17ef5bfcf kernel/sched/core.c Dario Faggioli            2013-11-07  7072  	 * is available.
332ac17ef5bfcf kernel/sched/core.c Dario Faggioli            2013-11-07  7073  	 */
06a76fe08d4daa kernel/sched/core.c Nicolas Pitre             2017-06-21  7074  	if ((dl_policy(policy) || dl_task(p)) && sched_dl_overflow(p, policy, attr)) {
4b211f2b129dd1 kernel/sched/core.c Mathieu Poirier           2019-07-19  7075  		retval = -EBUSY;
4b211f2b129dd1 kernel/sched/core.c Mathieu Poirier           2019-07-19  7076  		goto unlock;
332ac17ef5bfcf kernel/sched/core.c Dario Faggioli            2013-11-07  7077  	}
332ac17ef5bfcf kernel/sched/core.c Dario Faggioli            2013-11-07  7078  
c365c292d05908 kernel/sched/core.c Thomas Gleixner           2014-02-07  7079  	p->sched_reset_on_fork = reset_on_fork;
c365c292d05908 kernel/sched/core.c Thomas Gleixner           2014-02-07  7080  	oldprio = p->prio;
c365c292d05908 kernel/sched/core.c Thomas Gleixner           2014-02-07  7081  
dbc7f069b93a24 kernel/sched/core.c Peter Zijlstra            2015-06-11 @7082  	if (pi) {
f06324e1cbda29 kernel/sched/core.c Juri Lelli                2021-04-23  7083  		newprio = fair_policy(attr->sched_policy) ?
f06324e1cbda29 kernel/sched/core.c Juri Lelli                2021-04-23  7084  			NICE_TO_PRIO(attr->sched_nice) : newprio;
f06324e1cbda29 kernel/sched/core.c Juri Lelli                2021-04-23  7085  
c365c292d05908 kernel/sched/core.c Thomas Gleixner           2014-02-07  7086  		/*
0782e63bc6fe7e kernel/sched/core.c Thomas Gleixner           2015-05-05  7087  		 * Take priority boosted tasks into account. If the new
0782e63bc6fe7e kernel/sched/core.c Thomas Gleixner           2015-05-05  7088  		 * effective priority is unchanged, we just store the new
c365c292d05908 kernel/sched/core.c Thomas Gleixner           2014-02-07  7089  		 * normal parameters and do not touch the scheduler class and
c365c292d05908 kernel/sched/core.c Thomas Gleixner           2014-02-07  7090  		 * the runqueue. This will be done when the task deboost
c365c292d05908 kernel/sched/core.c Thomas Gleixner           2014-02-07  7091  		 * itself.
c365c292d05908 kernel/sched/core.c Thomas Gleixner           2014-02-07  7092  		 */
acd58620e415ae kernel/sched/core.c Peter Zijlstra            2017-03-23  7093  		new_effective_prio = rt_effective_prio(p, newprio);
ff77e468535987 kernel/sched/core.c Peter Zijlstra            2016-01-18  7094  		if (new_effective_prio == oldprio)
ff77e468535987 kernel/sched/core.c Peter Zijlstra            2016-01-18  7095  			queue_flags &= ~DEQUEUE_MOVE;
dbc7f069b93a24 kernel/sched/core.c Peter Zijlstra            2015-06-11  7096  	}
c365c292d05908 kernel/sched/core.c Thomas Gleixner           2014-02-07  7097  
da0c1e65b51a28 kernel/sched/core.c Kirill Tkhai              2014-08-20  7098  	queued = task_on_rq_queued(p);
051a1d1afa4720 kernel/sched.c      Dmitry Adamushko          2007-12-18  7099  	running = task_current(rq, p);
da0c1e65b51a28 kernel/sched/core.c Kirill Tkhai              2014-08-20  7100  	if (queued)
ff77e468535987 kernel/sched/core.c Peter Zijlstra            2016-01-18  7101  		dequeue_task(rq, p, queue_flags);
83b699ed20f521 kernel/sched.c      Srivatsa Vaddagiri        2007-10-15  7102  	if (running)
f3cd1c4ec059c9 kernel/sched/core.c Kirill Tkhai              2014-09-12  7103  		put_prev_task(rq, p);
f6b53205e17c8c kernel/sched.c      Dmitry Adamushko          2007-10-15  7104  
83ab0aa0d5623d kernel/sched.c      Thomas Gleixner           2010-02-17  7105  	prev_class = p->sched_class;
a509a7cd797470 kernel/sched/core.c Patrick Bellasi           2019-06-21  7106  
f06324e1cbda29 kernel/sched/core.c Juri Lelli                2021-04-23  7107  	__setscheduler(rq, p, attr, pi, new_effective_prio);
a509a7cd797470 kernel/sched/core.c Patrick Bellasi           2019-06-21  7108  	__setscheduler_uclamp(p, attr);
f6b53205e17c8c kernel/sched.c      Dmitry Adamushko          2007-10-15  7109  
da0c1e65b51a28 kernel/sched/core.c Kirill Tkhai              2014-08-20  7110  	if (queued) {
81a44c5441d7f7 kernel/sched/core.c Thomas Gleixner           2014-02-07  7111  		/*
81a44c5441d7f7 kernel/sched/core.c Thomas Gleixner           2014-02-07  7112  		 * We enqueue to tail when the priority of a task is
81a44c5441d7f7 kernel/sched/core.c Thomas Gleixner           2014-02-07  7113  		 * increased (user space view).
81a44c5441d7f7 kernel/sched/core.c Thomas Gleixner           2014-02-07  7114  		 */
ff77e468535987 kernel/sched/core.c Peter Zijlstra            2016-01-18  7115  		if (oldprio < p->prio)
ff77e468535987 kernel/sched/core.c Peter Zijlstra            2016-01-18  7116  			queue_flags |= ENQUEUE_HEAD;
1de64443d755f8 kernel/sched/core.c Peter Zijlstra            2015-09-30  7117  
ff77e468535987 kernel/sched/core.c Peter Zijlstra            2016-01-18  7118  		enqueue_task(rq, p, queue_flags);
81a44c5441d7f7 kernel/sched/core.c Thomas Gleixner           2014-02-07  7119  	}
a399d233078edb kernel/sched/core.c Vincent Guittot           2016-09-12  7120  	if (running)
03b7fad167efca kernel/sched/core.c Peter Zijlstra            2019-05-29  7121  		set_next_task(rq, p);
cb46984504048d kernel/sched.c      Steven Rostedt            2008-01-25  7122  
da7a735e51f962 kernel/sched.c      Peter Zijlstra            2011-01-17  7123  	check_class_changed(rq, p, prev_class, oldprio);
d1ccc66df8bfe3 kernel/sched/core.c Ingo Molnar               2017-02-01  7124  
d1ccc66df8bfe3 kernel/sched/core.c Ingo Molnar               2017-02-01  7125  	/* Avoid rq from going away on us: */
d1ccc66df8bfe3 kernel/sched/core.c Ingo Molnar               2017-02-01  7126  	preempt_disable();
565790d28b1e33 kernel/sched/core.c Peter Zijlstra            2020-05-11  7127  	head = splice_balance_callbacks(rq);
eb58075149b7f0 kernel/sched/core.c Peter Zijlstra            2015-07-31  7128  	task_rq_unlock(rq, p, &rf);
b29739f902ee76 kernel/sched.c      Ingo Molnar               2006-06-27  7129  
710da3c8ea7dfb kernel/sched/core.c Juri Lelli                2019-07-19  7130  	if (pi) {
710da3c8ea7dfb kernel/sched/core.c Juri Lelli                2019-07-19  7131  		cpuset_read_unlock();
95e02ca9bb5324 kernel/sched.c      Thomas Gleixner           2006-06-27  7132  		rt_mutex_adjust_pi(p);
710da3c8ea7dfb kernel/sched/core.c Juri Lelli                2019-07-19  7133  	}
95e02ca9bb5324 kernel/sched.c      Thomas Gleixner           2006-06-27  7134  
d1ccc66df8bfe3 kernel/sched/core.c Ingo Molnar               2017-02-01  7135  	/* Run balance callbacks after we've adjusted the PI chain: */
565790d28b1e33 kernel/sched/core.c Peter Zijlstra            2020-05-11  7136  	balance_callbacks(rq, head);
4c9a4bc89a9cca kernel/sched/core.c Peter Zijlstra            2015-06-11  7137  	preempt_enable();
4c9a4bc89a9cca kernel/sched/core.c Peter Zijlstra            2015-06-11  7138  
^1da177e4c3f41 kernel/sched.c      Linus Torvalds            2005-04-16  7139  	return 0;
4b211f2b129dd1 kernel/sched/core.c Mathieu Poirier           2019-07-19  7140  
4b211f2b129dd1 kernel/sched/core.c Mathieu Poirier           2019-07-19  7141  unlock:
4b211f2b129dd1 kernel/sched/core.c Mathieu Poirier           2019-07-19  7142  	task_rq_unlock(rq, p, &rf);
710da3c8ea7dfb kernel/sched/core.c Juri Lelli                2019-07-19  7143  	if (pi)
710da3c8ea7dfb kernel/sched/core.c Juri Lelli                2019-07-19  7144  		cpuset_read_unlock();
4b211f2b129dd1 kernel/sched/core.c Mathieu Poirier           2019-07-19  7145  	return retval;
^1da177e4c3f41 kernel/sched.c      Linus Torvalds            2005-04-16  7146  }
961ccddd59d627 kernel/sched.c      Rusty Russell             2008-06-23  7147  

:::::: The code at line 7082 was first introduced by commit
:::::: dbc7f069b93a249340e974d6e8f55656280d8701 sched: Use replace normalize_task() with __sched_setscheduler()

:::::: TO: Peter Zijlstra <peterz@infradead.org>
:::::: CC: Thomas Gleixner <tglx@linutronix.de>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202106142122.t3SrLOHr-lkp%40intel.com.

--0F1p//8PRICkK4MW
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--0F1p//8PRICkK4MW--
