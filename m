Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBT52QHZQKGQELNX6WZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc40.google.com (mail-yw1-xc40.google.com [IPv6:2607:f8b0:4864:20::c40])
	by mail.lfdr.de (Postfix) with ESMTPS id 28DE5179DA7
	for <lists+clang-built-linux@lfdr.de>; Thu,  5 Mar 2020 03:00:49 +0100 (CET)
Received: by mail-yw1-xc40.google.com with SMTP id r19sf5776339ywk.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 04 Mar 2020 18:00:49 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1583373648; cv=pass;
        d=google.com; s=arc-20160816;
        b=UOgmy9y2U4lEv9hhbm46mN8j7HGnpdhzt4Xv6dWy9AcZ0ruww3/tl2c6NI7jQVcXz2
         Mpro/94CijzMMk8ktImF/J9GAbXRhycZ60rMMnQjJPyNcY77reCpfPrzqjiccAEKx8U6
         Sp/vLwKaukKRXG5MTGvP4StC2AKukgMiGQuLpXOWI3qllseoilZBFQlmgjE1Fbcgv0FP
         ok4aQV5wYZ6i6GApJzoeIzfE3pTXFkydL4V57RlR6xz9nNstVLZgSZ++RfVQtzZOGvN5
         PsA3kEKIz1ABKamI7rWUdWh4nYiIfcbTqdV840keZGm6VtEb6nprT1xWmwzZQL4G6CPq
         kjWw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=ut6T0q2whtOKVwueN6NxqBVxjU8tDgVqYe9S7wNYak0=;
        b=dZvFyTyDoseswY6rXvz3/WdMMZBYdGvv1RSZ+USCremGkM0TvPvNNcNgNnUx3r7kma
         VbI8//CgoVH3L/VADcYUJ1uEtuLHhD7B+0p6fAe3WZacpjtUOVAcL/RPoP+jYqdaFQh5
         y9P65qKnTk3x0NrM8H95liT5qKemgSkVPkakjB3CDLDKUy1a0OXFd8Hommn+1Nu8bbob
         T70FWnZ/gvKgxS28ozzbo0keIxO/rVJA0RBoQs5AIuQUO5k1QKH3jytSlzsjZ3Ll5afJ
         nju7aMxjYOd85kCQq4YFBJBjCq4cT/iIKV2dTLXxMl8nq+YlFXmhjPA+9uRZzULXaexb
         oQKQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ut6T0q2whtOKVwueN6NxqBVxjU8tDgVqYe9S7wNYak0=;
        b=sjfqKjw+cru1BxyUI5xGqCGmTZMvjYbkppTVDE91SHTNeiIXYNspXt1OYJTEuQtbKN
         If3EOzQ9tZ3+cXbbLEFcO+zcmCz8fdJ3OK63KGe466k9QE0lunhjO7s9e0oJ2+EMsSOh
         aA19rRpkpmaHXIySXjdZ217vcKLI2K/DHJPUnKx/ZN7umHhzdKJtrXytEWUjke54HsgW
         k0FV6vod1WJbqghugsZRw/78X6G/n1kOrW5w1Aw3ZIOjUEWwv546lKlJDv3B4S6C+9Xi
         8VqhISVFfFhrBTNjMGk9qkMtu9sOHpn4iEbN/aFLL0TUvusz3wedY1cFD3lopcdaMYam
         KedQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ut6T0q2whtOKVwueN6NxqBVxjU8tDgVqYe9S7wNYak0=;
        b=uBWW9VAs/ugz8mwc+qYXuNh+N57uuiaCYLHZsjr8fxCtaI25yVzOsAUGp7ZQIokBsn
         YL+AGHjXg8fbANTOhsg16oSCKY1rI3+w1fjR5kMnqYl6TYkXYmpbBPA6ME3WrJTZyjI9
         1Jm81+9nPax1HX19ure4Jc824ZceyQLDMCRSwIq2OMPjNgf+lG4vnJwj698tUVH2Xy1G
         qR/kVCeSm8/SpdukCtwoEz5Hgx27o+qi0xhl7eX6k0MLIW7eeFGifuaG1lQdArgi5bNS
         AlVut5TTF3Zl3Hkcb2bD+LJr9y+7Yv7AurdUrOfIDOqMxjYTYPSOIMfRWCQ5JmsylDSs
         7wlg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0/Hu2g90V1l1nzSrNUCt2S1aLC+48a6s0CIUb9unHfshLDLjgK
	ILfmJdGqAgNY92pi5jEaTT0=
X-Google-Smtp-Source: ADFU+vvqIFIVz194brLgx0HMw72/MK4fbhzgJ5ED/+P5L+xn5CfWvzZUek9/IuJHlYBABgMWp1QHSQ==
X-Received: by 2002:a25:da0e:: with SMTP id n14mr5363585ybf.354.1583373647761;
        Wed, 04 Mar 2020 18:00:47 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:8644:: with SMTP id w65ls162949ywf.3.gmail; Wed, 04 Mar
 2020 18:00:47 -0800 (PST)
X-Received: by 2002:a81:6507:: with SMTP id z7mr5815710ywb.77.1583373647258;
        Wed, 04 Mar 2020 18:00:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583373647; cv=none;
        d=google.com; s=arc-20160816;
        b=RwfIn89wve36JKl3N/6bUOOzuWwB4AL5hktgGmRG8hLSgLRYHOWg/qs6THk9orJJyC
         GX2rm/kulgrncOlZPo+CJdb9C0XkzZ9xeQ/PFwj6D8dT3PI2riqLQqYFAQrornYIpA01
         pL6LRa0WOcG3qFpUHjiSU0ZaHuVqccGS54R7+5QjjqTPws6CDd98XKbTeuZMzg2xmwjQ
         95/k69KCSSE6mmDt8SL+QAbi8kXb0eMKp1/toM7+XLNay10g5ZcOCKJelfcYyIYde+DI
         O6t4XI67QOn2ukroYnrMVvDZtxOihLs6WNJqpLJN6/rNcRVyuaVtOUt1vLvX2w9QTBjn
         6XVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=tZx71cID6tRxYhLNtXx2cUU2RddZMI8oy6A8xWKNyEI=;
        b=kKik/zIZc1uHEdWL7d6k3yC9nOt9SIzzsj48QHDJRfMWUfzJWazb9Ruwt2ww/iFkjc
         d54jhoCb1VUsDGAaa7OxOioQJr5zupJwSVCHZamoDfuzyp4m71zgef+GVyOwHcNNP1Sa
         IQWsZOFvSWifbkOfZthqOho2E8PDacbipJwyLGLxI2A5XHAqX7wGlCwDHyltvZgkQiYO
         8yW/O78V+3h9qqxomong4y36KiRcPkyQ2cgu7g2P69w41c2AqGNaKpZU4S39/yo8dFjk
         KUpNgbBcc4IH5BOD8L2yFYlSrxxY9Uk1QC3Uuh4ZUQFzFzYZ7s9Ok82+yXYRImF7lJFW
         3ABQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga03.intel.com (mga03.intel.com. [134.134.136.65])
        by gmr-mx.google.com with ESMTPS id w18si225194ybe.0.2020.03.04.18.00.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Mar 2020 18:00:47 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) client-ip=134.134.136.65;
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 04 Mar 2020 18:00:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,516,1574150400"; 
   d="gz'50?scan'50,208,50";a="234247444"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by orsmga008.jf.intel.com with ESMTP; 04 Mar 2020 18:00:42 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1j9foY-00063S-8d; Thu, 05 Mar 2020 10:00:42 +0800
Date: Thu, 5 Mar 2020 09:59:45 +0800
From: kbuild test robot <lkp@intel.com>
To: "Paul E. McKenney" <paulmck@kernel.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org
Subject: [rcu:dev.2020.02.29a 43/43] kernel/rcu/tasks.h:212:20: error: no
 member named 'rcu_tasks_holdout' in 'struct task_struct'
Message-ID: <202003050939.7rO3Zf2C%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="WIyZ46R2i8wDzkSu"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted
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


--WIyZ46R2i8wDzkSu
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/paulmck/linux-rcu.git dev.2020.02.29a
head:   61f7110d6b78f4c84ea5d5480185740840889af7
commit: 61f7110d6b78f4c84ea5d5480185740840889af7 [43/43] rcu-tasks: Add an RCU-tasks rude variant
config: x86_64-defconfig (attached as .config)
compiler: clang version 11.0.0 (git://gitmirror/llvm_project f95095e9f612084fc95c5e797c2ab5eb8dd674b8)
reproduce:
        # FIXME the reproduce steps for clang is not ready yet

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All error/warnings (new ones prefixed by >>):

   In file included from kernel/rcu/update.c:562:
>> kernel/rcu/tasks.h:212:20: error: no member named 'rcu_tasks_holdout' in 'struct task_struct'
           if (!READ_ONCE(t->rcu_tasks_holdout) ||
                          ~  ^
   include/linux/compiler.h:293:34: note: expanded from macro 'READ_ONCE'
   #define READ_ONCE(x) __READ_ONCE(x, 1)
                                    ^
   include/linux/compiler.h:285:17: note: expanded from macro '__READ_ONCE'
           union { typeof(x) __val; char __c[1]; } __u;                    \
                          ^
   In file included from kernel/rcu/update.c:562:
>> kernel/rcu/tasks.h:212:20: error: no member named 'rcu_tasks_holdout' in 'struct task_struct'
           if (!READ_ONCE(t->rcu_tasks_holdout) ||
                          ~  ^
   include/linux/compiler.h:293:34: note: expanded from macro 'READ_ONCE'
   #define READ_ONCE(x) __READ_ONCE(x, 1)
                                    ^
   include/linux/compiler.h:287:22: note: expanded from macro '__READ_ONCE'
                   __read_once_size(&(x), __u.__c, sizeof(x));             \
                                      ^
   In file included from kernel/rcu/update.c:562:
>> kernel/rcu/tasks.h:212:20: error: no member named 'rcu_tasks_holdout' in 'struct task_struct'
           if (!READ_ONCE(t->rcu_tasks_holdout) ||
                          ~  ^
   include/linux/compiler.h:293:34: note: expanded from macro 'READ_ONCE'
   #define READ_ONCE(x) __READ_ONCE(x, 1)
                                    ^
   include/linux/compiler.h:287:42: note: expanded from macro '__READ_ONCE'
                   __read_once_size(&(x), __u.__c, sizeof(x));             \
                                                          ^
   In file included from kernel/rcu/update.c:562:
>> kernel/rcu/tasks.h:212:20: error: no member named 'rcu_tasks_holdout' in 'struct task_struct'
           if (!READ_ONCE(t->rcu_tasks_holdout) ||
                          ~  ^
   include/linux/compiler.h:293:34: note: expanded from macro 'READ_ONCE'
   #define READ_ONCE(x) __READ_ONCE(x, 1)
                                    ^
   include/linux/compiler.h:289:30: note: expanded from macro '__READ_ONCE'
                   __read_once_size_nocheck(&(x), __u.__c, sizeof(x));     \
                                              ^
   In file included from kernel/rcu/update.c:562:
>> kernel/rcu/tasks.h:212:20: error: no member named 'rcu_tasks_holdout' in 'struct task_struct'
           if (!READ_ONCE(t->rcu_tasks_holdout) ||
                          ~  ^
   include/linux/compiler.h:293:34: note: expanded from macro 'READ_ONCE'
   #define READ_ONCE(x) __READ_ONCE(x, 1)
                                    ^
   include/linux/compiler.h:289:50: note: expanded from macro '__READ_ONCE'
                   __read_once_size_nocheck(&(x), __u.__c, sizeof(x));     \
                                                                  ^
   In file included from kernel/rcu/update.c:562:
>> kernel/rcu/tasks.h:212:6: error: invalid argument type 'void' to unary expression
           if (!READ_ONCE(t->rcu_tasks_holdout) ||
               ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>> kernel/rcu/tasks.h:213:9: error: no member named 'rcu_tasks_nvcsw' in 'struct task_struct'
               t->rcu_tasks_nvcsw != READ_ONCE(t->nvcsw) ||
               ~  ^
>> kernel/rcu/tasks.h:216:30: error: no member named 'rcu_tasks_idle_cpu' in 'struct task_struct'
                !is_idle_task(t) && t->rcu_tasks_idle_cpu >= 0)) {
                                    ~  ^
   kernel/rcu/tasks.h:217:17: error: no member named 'rcu_tasks_holdout' in 'struct task_struct'
                   WRITE_ONCE(t->rcu_tasks_holdout, false);
                              ~  ^
   include/linux/compiler.h:310:17: note: expanded from macro 'WRITE_ONCE'
           union { typeof(x) __val; char __c[1]; } __u =   \
                          ^
   In file included from kernel/rcu/update.c:562:
   kernel/rcu/tasks.h:217:17: error: no member named 'rcu_tasks_holdout' in 'struct task_struct'
                   WRITE_ONCE(t->rcu_tasks_holdout, false);
                              ~  ^
   include/linux/compiler.h:311:30: note: expanded from macro 'WRITE_ONCE'
                   { .__val = (__force typeof(x)) (val) }; \
                                              ^
   In file included from kernel/rcu/update.c:562:
   kernel/rcu/tasks.h:217:17: error: no member named 'rcu_tasks_holdout' in 'struct task_struct'
                   WRITE_ONCE(t->rcu_tasks_holdout, false);
                              ~  ^
   include/linux/compiler.h:312:22: note: expanded from macro 'WRITE_ONCE'
           __write_once_size(&(x), __u.__c, sizeof(x));    \
                               ^
   In file included from kernel/rcu/update.c:562:
   kernel/rcu/tasks.h:217:17: error: no member named 'rcu_tasks_holdout' in 'struct task_struct'
                   WRITE_ONCE(t->rcu_tasks_holdout, false);
                              ~  ^
   include/linux/compiler.h:312:42: note: expanded from macro 'WRITE_ONCE'
           __write_once_size(&(x), __u.__c, sizeof(x));    \
                                                   ^
   In file included from kernel/rcu/update.c:562:
>> kernel/rcu/tasks.h:218:21: error: no member named 'rcu_tasks_holdout_list' in 'struct task_struct'
                   list_del_init(&t->rcu_tasks_holdout_list);
                                  ~  ^
   kernel/rcu/tasks.h:233:7: error: no member named 'rcu_tasks_nvcsw' in 'struct task_struct'
                    t->rcu_tasks_nvcsw, t->nvcsw, t->rcu_tasks_holdout,
                    ~  ^
   include/linux/printk.h:300:35: note: expanded from macro 'pr_alert'
           printk(KERN_ALERT pr_fmt(fmt), ##__VA_ARGS__)
                                            ^~~~~~~~~~~
   In file included from kernel/rcu/update.c:562:
   kernel/rcu/tasks.h:233:37: error: no member named 'rcu_tasks_holdout' in 'struct task_struct'
                    t->rcu_tasks_nvcsw, t->nvcsw, t->rcu_tasks_holdout,
                                                  ~  ^
   include/linux/printk.h:300:35: note: expanded from macro 'pr_alert'
           printk(KERN_ALERT pr_fmt(fmt), ##__VA_ARGS__)
                                            ^~~~~~~~~~~
   In file included from kernel/rcu/update.c:562:
   kernel/rcu/tasks.h:234:7: error: no member named 'rcu_tasks_idle_cpu' in 'struct task_struct'
                    t->rcu_tasks_idle_cpu, cpu);
                    ~  ^
   include/linux/printk.h:300:35: note: expanded from macro 'pr_alert'
           printk(KERN_ALERT pr_fmt(fmt), ##__VA_ARGS__)
                                            ^~~~~~~~~~~
   In file included from kernel/rcu/update.c:562:
>> kernel/rcu/tasks.h:239:38: warning: declaration of 'struct rcu_tasks' will not be visible outside of this function [-Wvisibility]
   static void rcu_tasks_wait_gp(struct rcu_tasks *rtp)
                                        ^
   kernel/rcu/tasks.h:271:7: error: no member named 'rcu_tasks_nvcsw' in 'struct task_struct'
                           t->rcu_tasks_nvcsw = READ_ONCE(t->nvcsw);
                           ~  ^
   kernel/rcu/tasks.h:272:18: error: no member named 'rcu_tasks_holdout' in 'struct task_struct'
                           WRITE_ONCE(t->rcu_tasks_holdout, true);
                                      ~  ^
   include/linux/compiler.h:310:17: note: expanded from macro 'WRITE_ONCE'
           union { typeof(x) __val; char __c[1]; } __u =   \
                          ^
   In file included from kernel/rcu/update.c:562:
   kernel/rcu/tasks.h:272:18: error: no member named 'rcu_tasks_holdout' in 'struct task_struct'
                           WRITE_ONCE(t->rcu_tasks_holdout, true);
                                      ~  ^
   include/linux/compiler.h:311:30: note: expanded from macro 'WRITE_ONCE'
                   { .__val = (__force typeof(x)) (val) }; \
                                              ^
   fatal error: too many errors emitted, stopping now [-ferror-limit=]
   1 warning and 20 errors generated.

vim +212 kernel/rcu/tasks.h

6b80543d90000c Paul E. McKenney 2020-03-02  205  
6b80543d90000c Paul E. McKenney 2020-03-02  206  /* See if tasks are still holding out, complain if so. */
6b80543d90000c Paul E. McKenney 2020-03-02  207  static void check_holdout_task(struct task_struct *t,
6b80543d90000c Paul E. McKenney 2020-03-02  208  			       bool needreport, bool *firstreport)
6b80543d90000c Paul E. McKenney 2020-03-02  209  {
6b80543d90000c Paul E. McKenney 2020-03-02  210  	int cpu;
6b80543d90000c Paul E. McKenney 2020-03-02  211  
6b80543d90000c Paul E. McKenney 2020-03-02 @212  	if (!READ_ONCE(t->rcu_tasks_holdout) ||
6b80543d90000c Paul E. McKenney 2020-03-02 @213  	    t->rcu_tasks_nvcsw != READ_ONCE(t->nvcsw) ||
6b80543d90000c Paul E. McKenney 2020-03-02  214  	    !READ_ONCE(t->on_rq) ||
6b80543d90000c Paul E. McKenney 2020-03-02  215  	    (IS_ENABLED(CONFIG_NO_HZ_FULL) &&
6b80543d90000c Paul E. McKenney 2020-03-02 @216  	     !is_idle_task(t) && t->rcu_tasks_idle_cpu >= 0)) {
6b80543d90000c Paul E. McKenney 2020-03-02  217  		WRITE_ONCE(t->rcu_tasks_holdout, false);
6b80543d90000c Paul E. McKenney 2020-03-02 @218  		list_del_init(&t->rcu_tasks_holdout_list);
6b80543d90000c Paul E. McKenney 2020-03-02  219  		put_task_struct(t);
6b80543d90000c Paul E. McKenney 2020-03-02  220  		return;
6b80543d90000c Paul E. McKenney 2020-03-02  221  	}
6b80543d90000c Paul E. McKenney 2020-03-02  222  	rcu_request_urgent_qs_task(t);
6b80543d90000c Paul E. McKenney 2020-03-02  223  	if (!needreport)
6b80543d90000c Paul E. McKenney 2020-03-02  224  		return;
6b80543d90000c Paul E. McKenney 2020-03-02  225  	if (*firstreport) {
6b80543d90000c Paul E. McKenney 2020-03-02  226  		pr_err("INFO: rcu_tasks detected stalls on tasks:\n");
6b80543d90000c Paul E. McKenney 2020-03-02  227  		*firstreport = false;
6b80543d90000c Paul E. McKenney 2020-03-02  228  	}
6b80543d90000c Paul E. McKenney 2020-03-02  229  	cpu = task_cpu(t);
6b80543d90000c Paul E. McKenney 2020-03-02  230  	pr_alert("%p: %c%c nvcsw: %lu/%lu holdout: %d idle_cpu: %d/%d\n",
6b80543d90000c Paul E. McKenney 2020-03-02  231  		 t, ".I"[is_idle_task(t)],
6b80543d90000c Paul E. McKenney 2020-03-02  232  		 "N."[cpu < 0 || !tick_nohz_full_cpu(cpu)],
6b80543d90000c Paul E. McKenney 2020-03-02  233  		 t->rcu_tasks_nvcsw, t->nvcsw, t->rcu_tasks_holdout,
6b80543d90000c Paul E. McKenney 2020-03-02  234  		 t->rcu_tasks_idle_cpu, cpu);
6b80543d90000c Paul E. McKenney 2020-03-02  235  	sched_show_task(t);
6b80543d90000c Paul E. McKenney 2020-03-02  236  }
6b80543d90000c Paul E. McKenney 2020-03-02  237  
61f7110d6b78f4 Paul E. McKenney 2020-03-02  238  /* Wait for one RCU-tasks grace period. */
61f7110d6b78f4 Paul E. McKenney 2020-03-02 @239  static void rcu_tasks_wait_gp(struct rcu_tasks *rtp)
6b80543d90000c Paul E. McKenney 2020-03-02  240  {
6b80543d90000c Paul E. McKenney 2020-03-02  241  	struct task_struct *g, *t;
6b80543d90000c Paul E. McKenney 2020-03-02  242  	unsigned long lastreport;
6b80543d90000c Paul E. McKenney 2020-03-02  243  	LIST_HEAD(rcu_tasks_holdouts);
6b80543d90000c Paul E. McKenney 2020-03-02  244  	int fract;
6b80543d90000c Paul E. McKenney 2020-03-02  245  
6b80543d90000c Paul E. McKenney 2020-03-02  246  	/*
61f7110d6b78f4 Paul E. McKenney 2020-03-02  247  	 * Wait for all pre-existing t->on_rq and t->nvcsw transitions
61f7110d6b78f4 Paul E. McKenney 2020-03-02  248  	 * to complete.  Invoking synchronize_rcu() suffices because all
61f7110d6b78f4 Paul E. McKenney 2020-03-02  249  	 * these transitions occur with interrupts disabled.  Without this
61f7110d6b78f4 Paul E. McKenney 2020-03-02  250  	 * synchronize_rcu(), a read-side critical section that started
61f7110d6b78f4 Paul E. McKenney 2020-03-02  251  	 * before the grace period might be incorrectly seen as having
61f7110d6b78f4 Paul E. McKenney 2020-03-02  252  	 * started after the grace period.
6b80543d90000c Paul E. McKenney 2020-03-02  253  	 *
61f7110d6b78f4 Paul E. McKenney 2020-03-02  254  	 * This synchronize_rcu() also dispenses with the need for a
61f7110d6b78f4 Paul E. McKenney 2020-03-02  255  	 * memory barrier on the first store to t->rcu_tasks_holdout,
61f7110d6b78f4 Paul E. McKenney 2020-03-02  256  	 * as it forces the store to happen after the beginning of the
61f7110d6b78f4 Paul E. McKenney 2020-03-02  257  	 * grace period.
6b80543d90000c Paul E. McKenney 2020-03-02  258  	 */
6b80543d90000c Paul E. McKenney 2020-03-02  259  	synchronize_rcu();
6b80543d90000c Paul E. McKenney 2020-03-02  260  
6b80543d90000c Paul E. McKenney 2020-03-02  261  	/*
61f7110d6b78f4 Paul E. McKenney 2020-03-02  262  	 * There were callbacks, so we need to wait for an RCU-tasks
61f7110d6b78f4 Paul E. McKenney 2020-03-02  263  	 * grace period.  Start off by scanning the task list for tasks
61f7110d6b78f4 Paul E. McKenney 2020-03-02  264  	 * that are not already voluntarily blocked.  Mark these tasks
61f7110d6b78f4 Paul E. McKenney 2020-03-02  265  	 * and make a list of them in rcu_tasks_holdouts.
6b80543d90000c Paul E. McKenney 2020-03-02  266  	 */
6b80543d90000c Paul E. McKenney 2020-03-02  267  	rcu_read_lock();
6b80543d90000c Paul E. McKenney 2020-03-02  268  	for_each_process_thread(g, t) {
61f7110d6b78f4 Paul E. McKenney 2020-03-02  269  		if (t != current && READ_ONCE(t->on_rq) && !is_idle_task(t)) {
6b80543d90000c Paul E. McKenney 2020-03-02  270  			get_task_struct(t);
6b80543d90000c Paul E. McKenney 2020-03-02  271  			t->rcu_tasks_nvcsw = READ_ONCE(t->nvcsw);
6b80543d90000c Paul E. McKenney 2020-03-02  272  			WRITE_ONCE(t->rcu_tasks_holdout, true);
6b80543d90000c Paul E. McKenney 2020-03-02  273  			list_add(&t->rcu_tasks_holdout_list,
6b80543d90000c Paul E. McKenney 2020-03-02  274  				 &rcu_tasks_holdouts);
6b80543d90000c Paul E. McKenney 2020-03-02  275  		}
6b80543d90000c Paul E. McKenney 2020-03-02  276  	}
6b80543d90000c Paul E. McKenney 2020-03-02  277  	rcu_read_unlock();
6b80543d90000c Paul E. McKenney 2020-03-02  278  
6b80543d90000c Paul E. McKenney 2020-03-02  279  	/*
61f7110d6b78f4 Paul E. McKenney 2020-03-02  280  	 * Wait for tasks that are in the process of exiting.  This
61f7110d6b78f4 Paul E. McKenney 2020-03-02  281  	 * does only part of the job, ensuring that all tasks that were
61f7110d6b78f4 Paul E. McKenney 2020-03-02  282  	 * previously exiting reach the point where they have disabled
61f7110d6b78f4 Paul E. McKenney 2020-03-02  283  	 * preemption, allowing the later synchronize_rcu() to finish
61f7110d6b78f4 Paul E. McKenney 2020-03-02  284  	 * the job.
6b80543d90000c Paul E. McKenney 2020-03-02  285  	 */
6b80543d90000c Paul E. McKenney 2020-03-02  286  	synchronize_srcu(&tasks_rcu_exit_srcu);
6b80543d90000c Paul E. McKenney 2020-03-02  287  
6b80543d90000c Paul E. McKenney 2020-03-02  288  	/*
61f7110d6b78f4 Paul E. McKenney 2020-03-02  289  	 * Each pass through the following loop scans the list of holdout
61f7110d6b78f4 Paul E. McKenney 2020-03-02  290  	 * tasks, removing any that are no longer holdouts.  When the list
61f7110d6b78f4 Paul E. McKenney 2020-03-02  291  	 * is empty, we are done.
6b80543d90000c Paul E. McKenney 2020-03-02  292  	 */
6b80543d90000c Paul E. McKenney 2020-03-02  293  	lastreport = jiffies;
6b80543d90000c Paul E. McKenney 2020-03-02  294  
61f7110d6b78f4 Paul E. McKenney 2020-03-02  295  	/* Start off with HZ/10 wait and slowly back off to 1 HZ wait. */
6b80543d90000c Paul E. McKenney 2020-03-02  296  	fract = 10;
6b80543d90000c Paul E. McKenney 2020-03-02  297  
6b80543d90000c Paul E. McKenney 2020-03-02  298  	for (;;) {
6b80543d90000c Paul E. McKenney 2020-03-02  299  		bool firstreport;
6b80543d90000c Paul E. McKenney 2020-03-02  300  		bool needreport;
6b80543d90000c Paul E. McKenney 2020-03-02  301  		int rtst;
6b80543d90000c Paul E. McKenney 2020-03-02  302  		struct task_struct *t1;
6b80543d90000c Paul E. McKenney 2020-03-02  303  
6b80543d90000c Paul E. McKenney 2020-03-02  304  		if (list_empty(&rcu_tasks_holdouts))
6b80543d90000c Paul E. McKenney 2020-03-02  305  			break;
6b80543d90000c Paul E. McKenney 2020-03-02  306  
6b80543d90000c Paul E. McKenney 2020-03-02  307  		/* Slowly back off waiting for holdouts */
6b80543d90000c Paul E. McKenney 2020-03-02  308  		schedule_timeout_interruptible(HZ/fract);
6b80543d90000c Paul E. McKenney 2020-03-02  309  
6b80543d90000c Paul E. McKenney 2020-03-02  310  		if (fract > 1)
6b80543d90000c Paul E. McKenney 2020-03-02  311  			fract--;
6b80543d90000c Paul E. McKenney 2020-03-02  312  
6b80543d90000c Paul E. McKenney 2020-03-02  313  		rtst = READ_ONCE(rcu_task_stall_timeout);
61f7110d6b78f4 Paul E. McKenney 2020-03-02  314  		needreport = rtst > 0 && time_after(jiffies, lastreport + rtst);
6b80543d90000c Paul E. McKenney 2020-03-02  315  		if (needreport)
6b80543d90000c Paul E. McKenney 2020-03-02  316  			lastreport = jiffies;
6b80543d90000c Paul E. McKenney 2020-03-02  317  		firstreport = true;
6b80543d90000c Paul E. McKenney 2020-03-02  318  		WARN_ON(signal_pending(current));
6b80543d90000c Paul E. McKenney 2020-03-02  319  		list_for_each_entry_safe(t, t1, &rcu_tasks_holdouts,
6b80543d90000c Paul E. McKenney 2020-03-02  320  					 rcu_tasks_holdout_list) {
6b80543d90000c Paul E. McKenney 2020-03-02  321  			check_holdout_task(t, needreport, &firstreport);
6b80543d90000c Paul E. McKenney 2020-03-02  322  			cond_resched();
6b80543d90000c Paul E. McKenney 2020-03-02  323  		}
6b80543d90000c Paul E. McKenney 2020-03-02  324  	}
6b80543d90000c Paul E. McKenney 2020-03-02  325  
6b80543d90000c Paul E. McKenney 2020-03-02  326  	/*
61f7110d6b78f4 Paul E. McKenney 2020-03-02  327  	 * Because ->on_rq and ->nvcsw are not guaranteed to have a full
61f7110d6b78f4 Paul E. McKenney 2020-03-02  328  	 * memory barriers prior to them in the schedule() path, memory
61f7110d6b78f4 Paul E. McKenney 2020-03-02  329  	 * reordering on other CPUs could cause their RCU-tasks read-side
61f7110d6b78f4 Paul E. McKenney 2020-03-02  330  	 * critical sections to extend past the end of the grace period.
61f7110d6b78f4 Paul E. McKenney 2020-03-02  331  	 * However, because these ->nvcsw updates are carried out with
61f7110d6b78f4 Paul E. McKenney 2020-03-02  332  	 * interrupts disabled, we can use synchronize_rcu() to force the
61f7110d6b78f4 Paul E. McKenney 2020-03-02  333  	 * needed ordering on all such CPUs.
6b80543d90000c Paul E. McKenney 2020-03-02  334  	 *
61f7110d6b78f4 Paul E. McKenney 2020-03-02  335  	 * This synchronize_rcu() also confines all ->rcu_tasks_holdout
61f7110d6b78f4 Paul E. McKenney 2020-03-02  336  	 * accesses to be within the grace period, avoiding the need for
61f7110d6b78f4 Paul E. McKenney 2020-03-02  337  	 * memory barriers for ->rcu_tasks_holdout accesses.
6b80543d90000c Paul E. McKenney 2020-03-02  338  	 *
61f7110d6b78f4 Paul E. McKenney 2020-03-02  339  	 * In addition, this synchronize_rcu() waits for exiting tasks
61f7110d6b78f4 Paul E. McKenney 2020-03-02  340  	 * to complete their final preempt_disable() region of execution,
61f7110d6b78f4 Paul E. McKenney 2020-03-02  341  	 * cleaning up after the synchronize_srcu() above.
6b80543d90000c Paul E. McKenney 2020-03-02  342  	 */
6b80543d90000c Paul E. McKenney 2020-03-02  343  	synchronize_rcu();
61f7110d6b78f4 Paul E. McKenney 2020-03-02  344  }
6b80543d90000c Paul E. McKenney 2020-03-02  345  

:::::: The code at line 212 was first introduced by commit
:::::: 6b80543d90000c684123b05f075ac1433d99fa85 tasks-rcu: Move Tasks RCU to its own file

:::::: TO: Paul E. McKenney <paulmck@kernel.org>
:::::: CC: Paul E. McKenney <paulmck@kernel.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202003050939.7rO3Zf2C%25lkp%40intel.com.

--WIyZ46R2i8wDzkSu
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
5gEA

--WIyZ46R2i8wDzkSu--
