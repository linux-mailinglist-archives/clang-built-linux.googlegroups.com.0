Return-Path: <clang-built-linux+bncBCPZXIGQSEHBBBXHRGCQMGQEJOXKNNY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x239.google.com (mail-lj1-x239.google.com [IPv6:2a00:1450:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id D1419382DC6
	for <lists+clang-built-linux@lfdr.de>; Mon, 17 May 2021 15:45:42 +0200 (CEST)
Received: by mail-lj1-x239.google.com with SMTP id b35-20020a2ebc230000b02900e586a5ceaesf3120949ljf.13
        for <lists+clang-built-linux@lfdr.de>; Mon, 17 May 2021 06:45:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621259142; cv=pass;
        d=google.com; s=arc-20160816;
        b=eZSEYDv37WDeoiUA9HqEQV6VzzDrrmkhVlisPFIXugDH73fPbqdt8FR3ALjH357ilb
         vcvzEDkTJSW4Rv90AlquLx9fKZOohokFNrWxby2Rt0Bz+QtkPZ09sS8xt7x8T8Lgxtkz
         Ih3zRqfFggJZ+nO0ZODtru3GUiLZUNlDv8ADzkOl50Uj9XNdpetn91ZOx1Qg5gIQHD5r
         SG6IGwrqEso3mPMMbP7s6XnWePk6yfkGG9cWq2fwNMJdHcoHe+d1L+HUpczAUx8EqKjm
         emCBaw4ogmrllTI0OXUj5yDk+B7FJNcKGq8XhhSKK8Qon5NYG/QXIWa1xKftdDk6SIB8
         27kA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=Wa+LQthc2TJ9ss9mgGan2hrBTVA84kADn+qN/AOsUYc=;
        b=Vss71c4JYpqll0zcVsrfxZQwKmnIs65FwPZ3fwjpKMhPjaJsAdEGjJZ1nt81tZur6k
         tS8nR5OGSUw6ooWpQPKrC6rpysXgUNkR3OTmdz2P9cl3NmTIo31u/7ZAtqAVvwuqRx0j
         VWhp5weITmuVaqUOxYufjzL7fD/Ji7w0eOSUc6RqaTv4rx15DWcB/xIApJyYVkC4nUNm
         J3C/+djkLbXSMih6Hs9W+x3k470g4elKSLQX688q0EVu5lqXC89bYoOB4+kygZXfIIJe
         T8E5MT1aMOFjllzj9K0qxHymkVRgyaKTAB/QeqQibMWL6fL/puG6jiE43HoCaO+KqK3u
         Gudg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=tK2yf252;
       spf=pass (google.com: domain of vincent.guittot@linaro.org designates 2a00:1450:4864:20::22a as permitted sender) smtp.mailfrom=vincent.guittot@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Wa+LQthc2TJ9ss9mgGan2hrBTVA84kADn+qN/AOsUYc=;
        b=WPputkQ8nhyuzBWwC6nsJFQwgXOM8DkPF5lw+jBq18Vf2KrubGipQ4iuk53hRdL6pW
         iwmb/AFfVnKSKTLny8fgICMpHBLesnoDa0qL/Tz3utHLgRd5wTOXrv0HAqop+/GZn8s5
         DPA2h+LAO3FItcX9824pz8kd4B7AwAuVBBXDYnLaeDkvNY2rWerYf+oM40syUxIkp0Sl
         EX9Xmhbk2eybJZ8yd0tTwMeuD7H7NDyrE13xPER3PNxbrj7rm7pUnwmDV3nN8dLWRJCu
         RfAxl91MybGIUr98X2TWzFCOFrmkFztsx69UCupK2Fxd1v5AePqVebR1u4ljE9Q4iNH7
         wokg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Wa+LQthc2TJ9ss9mgGan2hrBTVA84kADn+qN/AOsUYc=;
        b=o7NEzJair+4g4132Wtrzt/J1a3JO3Y8/LTuUxYQ5IYhPsNZlXGdwwPgYH3mYXDuUFk
         Hgo/SDpAN9/sBbX8oUlJq2tAOcQzmn7FerdXktcp45RiaKzE0D38QDT5mi5ycbFkBHW7
         ELRWabepYaPtKvvDcDiRX3+Gqz0YCvQnL+TJTXxcJbwCL0MP1newEL+/8yDPsqZ9/JH0
         kNuMPeFHx/+texynRCy09s+S0NjEuGlcsh1ChBuAP+ZkkHtTubLNmZsZlGBkTYyWZCM9
         k2y2CDAuSteQ1Y2euJ/KuBkYxuSw4BNZsq0dFAHAejSGQyru4cepoi695XXOmkXPvG7y
         pqyQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530sr3Mhisltof6pGBTLJdzCW1/yPRxZJQfLMJEmGSjl+NzxCyx7
	1pjivrs/N5Q3JQ+tihzGEDU=
X-Google-Smtp-Source: ABdhPJxddYwA49f1EMwOjbgIxg9iN2OSSdr2C1jfYT6jZEgUHd3DeJjn61a200HjvaGrVlbPQKKXQw==
X-Received: by 2002:a2e:90d6:: with SMTP id o22mr24905216ljg.473.1621259142418;
        Mon, 17 May 2021 06:45:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:bf0f:: with SMTP id c15ls2864540ljr.9.gmail; Mon, 17 May
 2021 06:45:41 -0700 (PDT)
X-Received: by 2002:a2e:9e57:: with SMTP id g23mr25474338ljk.148.1621259141303;
        Mon, 17 May 2021 06:45:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621259141; cv=none;
        d=google.com; s=arc-20160816;
        b=KbIWAKXJAuxSQ1/p6nI1T2HMhsCfX5ULo38jHoBBNm73k9vb5eklThtMmpRo3llYHk
         wVsVGyq+LyclO60PUW8NOWYwltN/Acq8+D5KYCG6bR//IibLtPdaDUHTUMjO/YRNZ0RW
         qTPXRkzsvtTz2wtaIMdJDdpdc/TCW/i8ph6guhGXZIujEHUpzTrnnTsqHQMG42lMz7xT
         D3CApnqod65phoNOV0nDVHkpIea55nIYPezKxbP4RM9I7VW0K9UA+ChBnYIo6GUzUupl
         U79dbNdAiQqya+mIN/u1NGx6F+8gWyYz/0tbcis7tfM0JuGBGciu/dmq9yulhrGTYJVN
         93Ew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=q7MBuRWVB2YZfNqEZhevNNM3VQDReKGcU4gfNN/14k0=;
        b=MqaabYJDFkwre1N0hpQGwIjf8YGyjwdupSFpF7El7gteilnF5lykHFby1Xn/niiOtz
         4Di4JvMIwMV1RHrck2cv1LzOSN2s2b9jHzYO6usfxL3VfnO7ThBFAKs4r5S93sz095Us
         Nw7vx3S4Ls4ZgTUamkBvqy8z8JoS8oNSZouhY+g8PuaWClBFRIvFyz4kHe+suSlCc3eX
         CAXFI5FwIDUmdreBEkQBbzaBWzwGJw8FeRuwlIr29gbRFaKgtozvSaudJPBpQAPtxFSQ
         LAhkuujf+3ivPv4N4GASPAGXeUY+3ZEeCGn9Zk1IpdbYiOLEd/8qMXqLmIyEn+CMkr/o
         cMEw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=tK2yf252;
       spf=pass (google.com: domain of vincent.guittot@linaro.org designates 2a00:1450:4864:20::22a as permitted sender) smtp.mailfrom=vincent.guittot@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com. [2a00:1450:4864:20::22a])
        by gmr-mx.google.com with ESMTPS id z25si553529lfu.6.2021.05.17.06.45.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 May 2021 06:45:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of vincent.guittot@linaro.org designates 2a00:1450:4864:20::22a as permitted sender) client-ip=2a00:1450:4864:20::22a;
Received: by mail-lj1-x22a.google.com with SMTP id e2so997309ljk.4
        for <clang-built-linux@googlegroups.com>; Mon, 17 May 2021 06:45:41 -0700 (PDT)
X-Received: by 2002:a2e:9116:: with SMTP id m22mr48072697ljg.176.1621259140643;
 Mon, 17 May 2021 06:45:40 -0700 (PDT)
MIME-Version: 1.0
References: <202105112356.JuDlybKz-lkp@intel.com>
In-Reply-To: <202105112356.JuDlybKz-lkp@intel.com>
From: Vincent Guittot <vincent.guittot@linaro.org>
Date: Mon, 17 May 2021 15:45:29 +0200
Message-ID: <CAKfTPtB9B9jv_uSk0fS7uOTtH5FCwLcAOrPjtXzRuURLUMFnoA@mail.gmail.com>
Subject: Re: kernel/sched/fair.c:9551:12: warning: stack frame size of 1376
 bytes in function 'load_balance'
To: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com, 
	linux-kernel <linux-kernel@vger.kernel.org>, Ingo Molnar <mingo@kernel.org>, 
	"Peter Zijlstra (Intel)" <peterz@infradead.org>, Valentin Schneider <valentin.schneider@arm.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: vincent.guittot@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=tK2yf252;       spf=pass
 (google.com: domain of vincent.guittot@linaro.org designates
 2a00:1450:4864:20::22a as permitted sender) smtp.mailfrom=vincent.guittot@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

On Tue, 11 May 2021 at 18:01, kernel test robot <lkp@intel.com> wrote:
>
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> head:   1140ab592e2ebf8153d2b322604031a8868ce7a5
> commit: 0826530de3cbdc89e60a89e86def94a5f0fc81ca sched/fair: Remove update of blocked load from newidle_balance
> date:   9 weeks ago
> config: mips-randconfig-r022-20210511 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project a0fed635fe1701470062495a6ffee1c608f3f1bc)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install mips cross compiling tool for clang build
>         # apt-get install binutils-mips-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=0826530de3cbdc89e60a89e86def94a5f0fc81ca
>         git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
>         git fetch --no-tags linus master
>         git checkout 0826530de3cbdc89e60a89e86def94a5f0fc81ca
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 ARCH=mips

It was a bit difficult to find the warning among the thousand

>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
>    kernel/sched/fair.c:5381:6: warning: no previous prototype for function 'init_cfs_bandwidth' [-Wmissing-prototypes]
>    void init_cfs_bandwidth(struct cfs_bandwidth *cfs_b) {}
>         ^
>    kernel/sched/fair.c:5381:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
>    void init_cfs_bandwidth(struct cfs_bandwidth *cfs_b) {}
>    ^
>    static
>    kernel/sched/fair.c:11166:6: warning: no previous prototype for function 'free_fair_sched_group' [-Wmissing-prototypes]
>    void free_fair_sched_group(struct task_group *tg) { }
>         ^
>    kernel/sched/fair.c:11166:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
>    void free_fair_sched_group(struct task_group *tg) { }
>    ^
>    static
>    kernel/sched/fair.c:11168:5: warning: no previous prototype for function 'alloc_fair_sched_group' [-Wmissing-prototypes]
>    int alloc_fair_sched_group(struct task_group *tg, struct task_group *parent)
>        ^
>    kernel/sched/fair.c:11168:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
>    int alloc_fair_sched_group(struct task_group *tg, struct task_group *parent)
>    ^
>    static
>    kernel/sched/fair.c:11173:6: warning: no previous prototype for function 'online_fair_sched_group' [-Wmissing-prototypes]
>    void online_fair_sched_group(struct task_group *tg) { }
>         ^
>    kernel/sched/fair.c:11173:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
>    void online_fair_sched_group(struct task_group *tg) { }
>    ^
>    static
>    kernel/sched/fair.c:11175:6: warning: no previous prototype for function 'unregister_fair_sched_group' [-Wmissing-prototypes]
>    void unregister_fair_sched_group(struct task_group *tg) { }
>         ^
>    kernel/sched/fair.c:11175:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
>    void unregister_fair_sched_group(struct task_group *tg) { }
>    ^
>    static
>    kernel/sched/fair.c:486:20: warning: unused function 'list_del_leaf_cfs_rq' [-Wunused-function]
>    static inline void list_del_leaf_cfs_rq(struct cfs_rq *cfs_rq)
>                       ^
>    kernel/sched/fair.c:5362:20: warning: unused function 'sync_throttle' [-Wunused-function]
>    static inline void sync_throttle(struct task_group *tg, int cpu) {}
>                       ^
>    kernel/sched/fair.c:5387:37: warning: unused function 'tg_cfs_bandwidth' [-Wunused-function]
>    static inline struct cfs_bandwidth *tg_cfs_bandwidth(struct task_group *tg)
>                                        ^
>    kernel/sched/fair.c:5391:20: warning: unused function 'destroy_cfs_bandwidth' [-Wunused-function]
>    static inline void destroy_cfs_bandwidth(struct cfs_bandwidth *cfs_b) {}
>                       ^
> >> kernel/sched/fair.c:9551:12: warning: stack frame size of 1376 bytes in function 'load_balance' [-Wframe-larger-than=]
>    static int load_balance(int this_cpu, struct rq *this_rq,

This is triggered by the removal of code in update_sd/sg_lb_stats()
which are in the call path of load_balance.
load_balance
  find_busiest_group
    update_sd_lb_stats
      update_sg_lb_stats

I don't expect the remove of code to increase the use of stack frame

>               ^
>    10 warnings generated.
>
>
> vim +/load_balance +9551 kernel/sched/fair.c
>
> 23f0d2093c789e kernel/sched/fair.c Joonsoo Kim               2013-08-06  9546
> 1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9547  /*
> 1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9548   * Check this_cpu to ensure it is balanced within domain. Attempt to move
> 1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9549   * tasks if there is an imbalance.
> 1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9550   */
> 1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17 @9551  static int load_balance(int this_cpu, struct rq *this_rq,
> 1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9552                   struct sched_domain *sd, enum cpu_idle_type idle,
> 23f0d2093c789e kernel/sched/fair.c Joonsoo Kim               2013-08-06  9553                   int *continue_balancing)
> 1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9554  {
> 88b8dac0a14c51 kernel/sched/fair.c Srivatsa Vaddagiri        2012-06-19  9555   int ld_moved, cur_ld_moved, active_balance = 0;
> 6263322c5e8ffd kernel/sched/fair.c Peter Zijlstra            2013-08-19  9556   struct sched_domain *sd_parent = sd->parent;
> 1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9557   struct sched_group *group;
> 1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9558   struct rq *busiest;
> 8a8c69c3277886 kernel/sched/fair.c Peter Zijlstra            2016-10-04  9559   struct rq_flags rf;
> 4ba2968420fa9d kernel/sched/fair.c Christoph Lameter         2014-08-26  9560   struct cpumask *cpus = this_cpu_cpumask_var_ptr(load_balance_mask);
> 1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9561
> 8e45cb545d98bc kernel/sched/fair.c Peter Zijlstra            2012-02-22  9562   struct lb_env env = {
> 8e45cb545d98bc kernel/sched/fair.c Peter Zijlstra            2012-02-22  9563           .sd             = sd,
> ddcdf6e7d9919d kernel/sched/fair.c Peter Zijlstra            2012-02-22  9564           .dst_cpu        = this_cpu,
> ddcdf6e7d9919d kernel/sched/fair.c Peter Zijlstra            2012-02-22  9565           .dst_rq         = this_rq,
> ae4df9d6c93510 kernel/sched/fair.c Peter Zijlstra            2017-05-01  9566           .dst_grpmask    = sched_group_span(sd->groups),
> 8e45cb545d98bc kernel/sched/fair.c Peter Zijlstra            2012-02-22  9567           .idle           = idle,
> eb95308ee2a694 kernel/sched/fair.c Peter Zijlstra            2012-04-17  9568           .loop_break     = sched_nr_migrate_break,
> b9403130a5350f kernel/sched/fair.c Michael Wang              2012-07-12  9569           .cpus           = cpus,
> 0ec8aa00f2b4dc kernel/sched/fair.c Peter Zijlstra            2013-10-07  9570           .fbq_type       = all,
> 163122b7fcfa28 kernel/sched/fair.c Kirill Tkhai              2014-08-20  9571           .tasks          = LIST_HEAD_INIT(env.tasks),
> 8e45cb545d98bc kernel/sched/fair.c Peter Zijlstra            2012-02-22  9572   };
> 8e45cb545d98bc kernel/sched/fair.c Peter Zijlstra            2012-02-22  9573
> 65a4433aebe36c kernel/sched/fair.c Jeffrey Hugo              2017-06-07  9574   cpumask_and(cpus, sched_domain_span(sd), cpu_active_mask);
> 1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9575
> ae92882e5646d8 kernel/sched/fair.c Josh Poimboeuf            2016-06-17  9576   schedstat_inc(sd->lb_count[idle]);
> 1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9577
> 1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9578  redo:
> 23f0d2093c789e kernel/sched/fair.c Joonsoo Kim               2013-08-06  9579   if (!should_we_balance(&env)) {
> 23f0d2093c789e kernel/sched/fair.c Joonsoo Kim               2013-08-06  9580           *continue_balancing = 0;
> 1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9581           goto out_balanced;
> 23f0d2093c789e kernel/sched/fair.c Joonsoo Kim               2013-08-06  9582   }
> 1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9583
> 23f0d2093c789e kernel/sched/fair.c Joonsoo Kim               2013-08-06  9584   group = find_busiest_group(&env);
> 1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9585   if (!group) {
> ae92882e5646d8 kernel/sched/fair.c Josh Poimboeuf            2016-06-17  9586           schedstat_inc(sd->lb_nobusyg[idle]);
> 1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9587           goto out_balanced;
> 1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9588   }
> 1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9589
> b9403130a5350f kernel/sched/fair.c Michael Wang              2012-07-12  9590   busiest = find_busiest_queue(&env, group);
> 1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9591   if (!busiest) {
> ae92882e5646d8 kernel/sched/fair.c Josh Poimboeuf            2016-06-17  9592           schedstat_inc(sd->lb_nobusyq[idle]);
> 1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9593           goto out_balanced;
> 1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9594   }
> 1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9595
> 78feefc512a091 kernel/sched/fair.c Michael Wang              2012-08-06  9596   BUG_ON(busiest == env.dst_rq);
> 1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9597
> ae92882e5646d8 kernel/sched/fair.c Josh Poimboeuf            2016-06-17  9598   schedstat_add(sd->lb_imbalance[idle], env.imbalance);
> 1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9599
> 1aaf90a4b88aae kernel/sched/fair.c Vincent Guittot           2015-02-27  9600   env.src_cpu = busiest->cpu;
> 1aaf90a4b88aae kernel/sched/fair.c Vincent Guittot           2015-02-27  9601   env.src_rq = busiest;
> 1aaf90a4b88aae kernel/sched/fair.c Vincent Guittot           2015-02-27  9602
> 1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9603   ld_moved = 0;
> 8a41dfcda7a32e kernel/sched/fair.c Vincent Guittot           2021-01-07  9604   /* Clear this flag as soon as we find a pullable task */
> 8a41dfcda7a32e kernel/sched/fair.c Vincent Guittot           2021-01-07  9605   env.flags |= LBF_ALL_PINNED;
> 1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9606   if (busiest->nr_running > 1) {
> 1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9607           /*
> 1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9608            * Attempt to move tasks. If find_busiest_group has found
> 1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9609            * an imbalance but busiest->nr_running <= 1, the group is
> 1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9610            * still unbalanced. ld_moved simply stays zero, so it is
> 1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9611            * correctly treated as an imbalance.
> 1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9612            */
> c82513e513556a kernel/sched/fair.c Peter Zijlstra            2012-04-26  9613           env.loop_max  = min(sysctl_sched_nr_migrate, busiest->nr_running);
> 8e45cb545d98bc kernel/sched/fair.c Peter Zijlstra            2012-02-22  9614
> 5d6523ebd2f67d kernel/sched/fair.c Peter Zijlstra            2012-03-10  9615  more_balance:
> 8a8c69c3277886 kernel/sched/fair.c Peter Zijlstra            2016-10-04  9616           rq_lock_irqsave(busiest, &rf);
> 3bed5e2166a5e4 kernel/sched/fair.c Peter Zijlstra            2016-10-03  9617           update_rq_clock(busiest);
> 88b8dac0a14c51 kernel/sched/fair.c Srivatsa Vaddagiri        2012-06-19  9618
> 88b8dac0a14c51 kernel/sched/fair.c Srivatsa Vaddagiri        2012-06-19  9619           /*
> 88b8dac0a14c51 kernel/sched/fair.c Srivatsa Vaddagiri        2012-06-19  9620            * cur_ld_moved - load moved in current iteration
> 88b8dac0a14c51 kernel/sched/fair.c Srivatsa Vaddagiri        2012-06-19  9621            * ld_moved     - cumulative load moved across iterations
> 88b8dac0a14c51 kernel/sched/fair.c Srivatsa Vaddagiri        2012-06-19  9622            */
> 163122b7fcfa28 kernel/sched/fair.c Kirill Tkhai              2014-08-20  9623           cur_ld_moved = detach_tasks(&env);
> 1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9624
> 1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9625           /*
> 163122b7fcfa28 kernel/sched/fair.c Kirill Tkhai              2014-08-20  9626            * We've detached some tasks from busiest_rq. Every
> 163122b7fcfa28 kernel/sched/fair.c Kirill Tkhai              2014-08-20  9627            * task is masked "TASK_ON_RQ_MIGRATING", so we can safely
> 163122b7fcfa28 kernel/sched/fair.c Kirill Tkhai              2014-08-20  9628            * unlock busiest->lock, and we are able to be sure
> 163122b7fcfa28 kernel/sched/fair.c Kirill Tkhai              2014-08-20  9629            * that nobody can manipulate the tasks in parallel.
> 163122b7fcfa28 kernel/sched/fair.c Kirill Tkhai              2014-08-20  9630            * See task_rq_lock() family for the details.
> 1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9631            */
> 163122b7fcfa28 kernel/sched/fair.c Kirill Tkhai              2014-08-20  9632
> 8a8c69c3277886 kernel/sched/fair.c Peter Zijlstra            2016-10-04  9633           rq_unlock(busiest, &rf);
> 163122b7fcfa28 kernel/sched/fair.c Kirill Tkhai              2014-08-20  9634
> 163122b7fcfa28 kernel/sched/fair.c Kirill Tkhai              2014-08-20  9635           if (cur_ld_moved) {
> 163122b7fcfa28 kernel/sched/fair.c Kirill Tkhai              2014-08-20  9636                   attach_tasks(&env);
> 88b8dac0a14c51 kernel/sched/fair.c Srivatsa Vaddagiri        2012-06-19  9637                   ld_moved += cur_ld_moved;
> 163122b7fcfa28 kernel/sched/fair.c Kirill Tkhai              2014-08-20  9638           }
> 163122b7fcfa28 kernel/sched/fair.c Kirill Tkhai              2014-08-20  9639
> 8a8c69c3277886 kernel/sched/fair.c Peter Zijlstra            2016-10-04  9640           local_irq_restore(rf.flags);
> 88b8dac0a14c51 kernel/sched/fair.c Srivatsa Vaddagiri        2012-06-19  9641
> f1cd0858100c67 kernel/sched/fair.c Joonsoo Kim               2013-04-23  9642           if (env.flags & LBF_NEED_BREAK) {
> f1cd0858100c67 kernel/sched/fair.c Joonsoo Kim               2013-04-23  9643                   env.flags &= ~LBF_NEED_BREAK;
> f1cd0858100c67 kernel/sched/fair.c Joonsoo Kim               2013-04-23  9644                   goto more_balance;
> f1cd0858100c67 kernel/sched/fair.c Joonsoo Kim               2013-04-23  9645           }
> f1cd0858100c67 kernel/sched/fair.c Joonsoo Kim               2013-04-23  9646
> 88b8dac0a14c51 kernel/sched/fair.c Srivatsa Vaddagiri        2012-06-19  9647           /*
> 88b8dac0a14c51 kernel/sched/fair.c Srivatsa Vaddagiri        2012-06-19  9648            * Revisit (affine) tasks on src_cpu that couldn't be moved to
> 88b8dac0a14c51 kernel/sched/fair.c Srivatsa Vaddagiri        2012-06-19  9649            * us and move them to an alternate dst_cpu in our sched_group
> 88b8dac0a14c51 kernel/sched/fair.c Srivatsa Vaddagiri        2012-06-19  9650            * where they can run. The upper limit on how many times we
> 97fb7a0a8944bd kernel/sched/fair.c Ingo Molnar               2018-03-03  9651            * iterate on same src_cpu is dependent on number of CPUs in our
> 88b8dac0a14c51 kernel/sched/fair.c Srivatsa Vaddagiri        2012-06-19  9652            * sched_group.
> 88b8dac0a14c51 kernel/sched/fair.c Srivatsa Vaddagiri        2012-06-19  9653            *
> 88b8dac0a14c51 kernel/sched/fair.c Srivatsa Vaddagiri        2012-06-19  9654            * This changes load balance semantics a bit on who can move
> 88b8dac0a14c51 kernel/sched/fair.c Srivatsa Vaddagiri        2012-06-19  9655            * load to a given_cpu. In addition to the given_cpu itself
> 88b8dac0a14c51 kernel/sched/fair.c Srivatsa Vaddagiri        2012-06-19  9656            * (or a ilb_cpu acting on its behalf where given_cpu is
> 88b8dac0a14c51 kernel/sched/fair.c Srivatsa Vaddagiri        2012-06-19  9657            * nohz-idle), we now have balance_cpu in a position to move
> 88b8dac0a14c51 kernel/sched/fair.c Srivatsa Vaddagiri        2012-06-19  9658            * load to given_cpu. In rare situations, this may cause
> 88b8dac0a14c51 kernel/sched/fair.c Srivatsa Vaddagiri        2012-06-19  9659            * conflicts (balance_cpu and given_cpu/ilb_cpu deciding
> 88b8dac0a14c51 kernel/sched/fair.c Srivatsa Vaddagiri        2012-06-19  9660            * _independently_ and at _same_ time to move some load to
> 88b8dac0a14c51 kernel/sched/fair.c Srivatsa Vaddagiri        2012-06-19  9661            * given_cpu) causing exceess load to be moved to given_cpu.
> 88b8dac0a14c51 kernel/sched/fair.c Srivatsa Vaddagiri        2012-06-19  9662            * This however should not happen so much in practice and
> 88b8dac0a14c51 kernel/sched/fair.c Srivatsa Vaddagiri        2012-06-19  9663            * moreover subsequent load balance cycles should correct the
> 88b8dac0a14c51 kernel/sched/fair.c Srivatsa Vaddagiri        2012-06-19  9664            * excess load moved.
> 88b8dac0a14c51 kernel/sched/fair.c Srivatsa Vaddagiri        2012-06-19  9665            */
> 6263322c5e8ffd kernel/sched/fair.c Peter Zijlstra            2013-08-19  9666           if ((env.flags & LBF_DST_PINNED) && env.imbalance > 0) {
> 88b8dac0a14c51 kernel/sched/fair.c Srivatsa Vaddagiri        2012-06-19  9667
> 97fb7a0a8944bd kernel/sched/fair.c Ingo Molnar               2018-03-03  9668                   /* Prevent to re-select dst_cpu via env's CPUs */
> c89d92eddfad11 kernel/sched/fair.c Viresh Kumar              2019-02-12  9669                   __cpumask_clear_cpu(env.dst_cpu, env.cpus);
> 7aff2e3a56b724 kernel/sched/fair.c Vladimir Davydov          2013-09-15  9670
> 78feefc512a091 kernel/sched/fair.c Michael Wang              2012-08-06  9671                   env.dst_rq       = cpu_rq(env.new_dst_cpu);
> 88b8dac0a14c51 kernel/sched/fair.c Srivatsa Vaddagiri        2012-06-19  9672                   env.dst_cpu      = env.new_dst_cpu;
> 6263322c5e8ffd kernel/sched/fair.c Peter Zijlstra            2013-08-19  9673                   env.flags       &= ~LBF_DST_PINNED;
> 88b8dac0a14c51 kernel/sched/fair.c Srivatsa Vaddagiri        2012-06-19  9674                   env.loop         = 0;
> 88b8dac0a14c51 kernel/sched/fair.c Srivatsa Vaddagiri        2012-06-19  9675                   env.loop_break   = sched_nr_migrate_break;
> e02e60c109ca70 kernel/sched/fair.c Joonsoo Kim               2013-04-23  9676
> 88b8dac0a14c51 kernel/sched/fair.c Srivatsa Vaddagiri        2012-06-19  9677                   /*
> 88b8dac0a14c51 kernel/sched/fair.c Srivatsa Vaddagiri        2012-06-19  9678                    * Go back to "more_balance" rather than "redo" since we
> 88b8dac0a14c51 kernel/sched/fair.c Srivatsa Vaddagiri        2012-06-19  9679                    * need to continue with same src_cpu.
> 88b8dac0a14c51 kernel/sched/fair.c Srivatsa Vaddagiri        2012-06-19  9680                    */
> 88b8dac0a14c51 kernel/sched/fair.c Srivatsa Vaddagiri        2012-06-19  9681                   goto more_balance;
> 88b8dac0a14c51 kernel/sched/fair.c Srivatsa Vaddagiri        2012-06-19  9682           }
> 1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9683
> 6263322c5e8ffd kernel/sched/fair.c Peter Zijlstra            2013-08-19  9684           /*
> 6263322c5e8ffd kernel/sched/fair.c Peter Zijlstra            2013-08-19  9685            * We failed to reach balance because of affinity.
> 6263322c5e8ffd kernel/sched/fair.c Peter Zijlstra            2013-08-19  9686            */
> 6263322c5e8ffd kernel/sched/fair.c Peter Zijlstra            2013-08-19  9687           if (sd_parent) {
> 63b2ca30bdb3db kernel/sched/fair.c Nicolas Pitre             2014-05-26  9688                   int *group_imbalance = &sd_parent->groups->sgc->imbalance;
> 6263322c5e8ffd kernel/sched/fair.c Peter Zijlstra            2013-08-19  9689
> afdeee0510db91 kernel/sched/fair.c Vincent Guittot           2014-08-26  9690                   if ((env.flags & LBF_SOME_PINNED) && env.imbalance > 0)
> 6263322c5e8ffd kernel/sched/fair.c Peter Zijlstra            2013-08-19  9691                           *group_imbalance = 1;
> 6263322c5e8ffd kernel/sched/fair.c Peter Zijlstra            2013-08-19  9692           }
> 6263322c5e8ffd kernel/sched/fair.c Peter Zijlstra            2013-08-19  9693
> 1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9694           /* All tasks on this runqueue were pinned by CPU affinity */
> 8e45cb545d98bc kernel/sched/fair.c Peter Zijlstra            2012-02-22  9695           if (unlikely(env.flags & LBF_ALL_PINNED)) {
> c89d92eddfad11 kernel/sched/fair.c Viresh Kumar              2019-02-12  9696                   __cpumask_clear_cpu(cpu_of(busiest), cpus);
> 65a4433aebe36c kernel/sched/fair.c Jeffrey Hugo              2017-06-07  9697                   /*
> 65a4433aebe36c kernel/sched/fair.c Jeffrey Hugo              2017-06-07  9698                    * Attempting to continue load balancing at the current
> 65a4433aebe36c kernel/sched/fair.c Jeffrey Hugo              2017-06-07  9699                    * sched_domain level only makes sense if there are
> 65a4433aebe36c kernel/sched/fair.c Jeffrey Hugo              2017-06-07  9700                    * active CPUs remaining as possible busiest CPUs to
> 65a4433aebe36c kernel/sched/fair.c Jeffrey Hugo              2017-06-07  9701                    * pull load from which are not contained within the
> 65a4433aebe36c kernel/sched/fair.c Jeffrey Hugo              2017-06-07  9702                    * destination group that is receiving any migrated
> 65a4433aebe36c kernel/sched/fair.c Jeffrey Hugo              2017-06-07  9703                    * load.
> 65a4433aebe36c kernel/sched/fair.c Jeffrey Hugo              2017-06-07  9704                    */
> 65a4433aebe36c kernel/sched/fair.c Jeffrey Hugo              2017-06-07  9705                   if (!cpumask_subset(cpus, env.dst_grpmask)) {
> bbf18b19495942 kernel/sched/fair.c Prashanth Nageshappa      2012-06-19  9706                           env.loop = 0;
> bbf18b19495942 kernel/sched/fair.c Prashanth Nageshappa      2012-06-19  9707                           env.loop_break = sched_nr_migrate_break;
> 1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9708                           goto redo;
> bbf18b19495942 kernel/sched/fair.c Prashanth Nageshappa      2012-06-19  9709                   }
> afdeee0510db91 kernel/sched/fair.c Vincent Guittot           2014-08-26  9710                   goto out_all_pinned;
> 1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9711           }
> 1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9712   }
> 1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9713
> 1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9714   if (!ld_moved) {
> ae92882e5646d8 kernel/sched/fair.c Josh Poimboeuf            2016-06-17  9715           schedstat_inc(sd->lb_failed[idle]);
> 58b26c4c025778 kernel/sched_fair.c Venkatesh Pallipadi       2010-09-10  9716           /*
> 58b26c4c025778 kernel/sched_fair.c Venkatesh Pallipadi       2010-09-10  9717            * Increment the failure counter only on periodic balance.
> 58b26c4c025778 kernel/sched_fair.c Venkatesh Pallipadi       2010-09-10  9718            * We do not want newidle balance, which can be very
> 58b26c4c025778 kernel/sched_fair.c Venkatesh Pallipadi       2010-09-10  9719            * frequent, pollute the failure counter causing
> 58b26c4c025778 kernel/sched_fair.c Venkatesh Pallipadi       2010-09-10  9720            * excessive cache_hot migrations and active balances.
> 58b26c4c025778 kernel/sched_fair.c Venkatesh Pallipadi       2010-09-10  9721            */
> 58b26c4c025778 kernel/sched_fair.c Venkatesh Pallipadi       2010-09-10  9722           if (idle != CPU_NEWLY_IDLE)
> 1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9723                   sd->nr_balance_failed++;
> 1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9724
> bd939f45da24e2 kernel/sched/fair.c Peter Zijlstra            2012-05-02  9725           if (need_active_balance(&env)) {
> 8a8c69c3277886 kernel/sched/fair.c Peter Zijlstra            2016-10-04  9726                   unsigned long flags;
> 8a8c69c3277886 kernel/sched/fair.c Peter Zijlstra            2016-10-04  9727
> 1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9728                   raw_spin_lock_irqsave(&busiest->lock, flags);
> 1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9729
> 97fb7a0a8944bd kernel/sched/fair.c Ingo Molnar               2018-03-03  9730                   /*
> 97fb7a0a8944bd kernel/sched/fair.c Ingo Molnar               2018-03-03  9731                    * Don't kick the active_load_balance_cpu_stop,
> 97fb7a0a8944bd kernel/sched/fair.c Ingo Molnar               2018-03-03  9732                    * if the curr task on busiest CPU can't be
> 97fb7a0a8944bd kernel/sched/fair.c Ingo Molnar               2018-03-03  9733                    * moved to this_cpu:
> 1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9734                    */
> 3bd3706251ee8a kernel/sched/fair.c Sebastian Andrzej Siewior 2019-04-23  9735                   if (!cpumask_test_cpu(this_cpu, busiest->curr->cpus_ptr)) {
> 1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9736                           raw_spin_unlock_irqrestore(&busiest->lock,
> 1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9737                                                       flags);
> 1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9738                           goto out_one_pinned;
> 1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9739                   }
> 1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9740
> 8a41dfcda7a32e kernel/sched/fair.c Vincent Guittot           2021-01-07  9741                   /* Record that we found at least one task that could run on this_cpu */
> 8a41dfcda7a32e kernel/sched/fair.c Vincent Guittot           2021-01-07  9742                   env.flags &= ~LBF_ALL_PINNED;
> 8a41dfcda7a32e kernel/sched/fair.c Vincent Guittot           2021-01-07  9743
> 969c79215a35b0 kernel/sched_fair.c Tejun Heo                 2010-05-06  9744                   /*
> 969c79215a35b0 kernel/sched_fair.c Tejun Heo                 2010-05-06  9745                    * ->active_balance synchronizes accesses to
> 969c79215a35b0 kernel/sched_fair.c Tejun Heo                 2010-05-06  9746                    * ->active_balance_work.  Once set, it's cleared
> 969c79215a35b0 kernel/sched_fair.c Tejun Heo                 2010-05-06  9747                    * only after active load balance is finished.
> 969c79215a35b0 kernel/sched_fair.c Tejun Heo                 2010-05-06  9748                    */
> 1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9749                   if (!busiest->active_balance) {
> 1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9750                           busiest->active_balance = 1;
> 1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9751                           busiest->push_cpu = this_cpu;
> 1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9752                           active_balance = 1;
> 1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9753                   }
> 1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9754                   raw_spin_unlock_irqrestore(&busiest->lock, flags);
> 969c79215a35b0 kernel/sched_fair.c Tejun Heo                 2010-05-06  9755
> bd939f45da24e2 kernel/sched/fair.c Peter Zijlstra            2012-05-02  9756                   if (active_balance) {
> 969c79215a35b0 kernel/sched_fair.c Tejun Heo                 2010-05-06  9757                           stop_one_cpu_nowait(cpu_of(busiest),
> 969c79215a35b0 kernel/sched_fair.c Tejun Heo                 2010-05-06  9758                                   active_load_balance_cpu_stop, busiest,
> 969c79215a35b0 kernel/sched_fair.c Tejun Heo                 2010-05-06  9759                                   &busiest->active_balance_work);
> bd939f45da24e2 kernel/sched/fair.c Peter Zijlstra            2012-05-02  9760                   }
> 1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9761
> d02c071183e1c0 kernel/sched/fair.c Srikar Dronamraju         2016-03-23  9762                   /* We've kicked active balancing, force task migration. */
> 1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9763                   sd->nr_balance_failed = sd->cache_nice_tries+1;
> 1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9764           }
> e9b9734b74656a kernel/sched/fair.c Vincent Guittot           2021-01-07  9765   } else {
> 1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9766           sd->nr_balance_failed = 0;
> e9b9734b74656a kernel/sched/fair.c Vincent Guittot           2021-01-07  9767   }
> 1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9768
> e9b9734b74656a kernel/sched/fair.c Vincent Guittot           2021-01-07  9769   if (likely(!active_balance) || need_active_balance(&env)) {
> 1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9770           /* We were unbalanced, so reset the balancing interval */
> 1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9771           sd->balance_interval = sd->min_interval;
> 1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9772   }
> 1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9773
> 1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9774   goto out;
> 1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9775
> 1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9776  out_balanced:
> afdeee0510db91 kernel/sched/fair.c Vincent Guittot           2014-08-26  9777   /*
> afdeee0510db91 kernel/sched/fair.c Vincent Guittot           2014-08-26  9778    * We reach balance although we may have faced some affinity
> f6cad8df6b30a5 kernel/sched/fair.c Vincent Guittot           2019-07-01  9779    * constraints. Clear the imbalance flag only if other tasks got
> f6cad8df6b30a5 kernel/sched/fair.c Vincent Guittot           2019-07-01  9780    * a chance to move and fix the imbalance.
> afdeee0510db91 kernel/sched/fair.c Vincent Guittot           2014-08-26  9781    */
> f6cad8df6b30a5 kernel/sched/fair.c Vincent Guittot           2019-07-01  9782   if (sd_parent && !(env.flags & LBF_ALL_PINNED)) {
> afdeee0510db91 kernel/sched/fair.c Vincent Guittot           2014-08-26  9783           int *group_imbalance = &sd_parent->groups->sgc->imbalance;
> afdeee0510db91 kernel/sched/fair.c Vincent Guittot           2014-08-26  9784
> afdeee0510db91 kernel/sched/fair.c Vincent Guittot           2014-08-26  9785           if (*group_imbalance)
> afdeee0510db91 kernel/sched/fair.c Vincent Guittot           2014-08-26  9786                   *group_imbalance = 0;
> afdeee0510db91 kernel/sched/fair.c Vincent Guittot           2014-08-26  9787   }
> afdeee0510db91 kernel/sched/fair.c Vincent Guittot           2014-08-26  9788
> afdeee0510db91 kernel/sched/fair.c Vincent Guittot           2014-08-26  9789  out_all_pinned:
> afdeee0510db91 kernel/sched/fair.c Vincent Guittot           2014-08-26  9790   /*
> afdeee0510db91 kernel/sched/fair.c Vincent Guittot           2014-08-26  9791    * We reach balance because all tasks are pinned at this level so
> afdeee0510db91 kernel/sched/fair.c Vincent Guittot           2014-08-26  9792    * we can't migrate them. Let the imbalance flag set so parent level
> afdeee0510db91 kernel/sched/fair.c Vincent Guittot           2014-08-26  9793    * can try to migrate them.
> afdeee0510db91 kernel/sched/fair.c Vincent Guittot           2014-08-26  9794    */
> ae92882e5646d8 kernel/sched/fair.c Josh Poimboeuf            2016-06-17  9795   schedstat_inc(sd->lb_balanced[idle]);
> 1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9796
> 1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9797   sd->nr_balance_failed = 0;
> 1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9798
> 1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9799  out_one_pinned:
> 3f130a37c442d5 kernel/sched/fair.c Valentin Schneider        2018-09-26  9800   ld_moved = 0;
> 3f130a37c442d5 kernel/sched/fair.c Valentin Schneider        2018-09-26  9801
> 3f130a37c442d5 kernel/sched/fair.c Valentin Schneider        2018-09-26  9802   /*
> 5ba553eff0c3a7 kernel/sched/fair.c Peter Zijlstra            2019-05-29  9803    * newidle_balance() disregards balance intervals, so we could
> 5ba553eff0c3a7 kernel/sched/fair.c Peter Zijlstra            2019-05-29  9804    * repeatedly reach this code, which would lead to balance_interval
> 5ba553eff0c3a7 kernel/sched/fair.c Peter Zijlstra            2019-05-29  9805    * skyrocketting in a short amount of time. Skip the balance_interval
> 5ba553eff0c3a7 kernel/sched/fair.c Peter Zijlstra            2019-05-29  9806    * increase logic to avoid that.
> 3f130a37c442d5 kernel/sched/fair.c Valentin Schneider        2018-09-26  9807    */
> 3f130a37c442d5 kernel/sched/fair.c Valentin Schneider        2018-09-26  9808   if (env.idle == CPU_NEWLY_IDLE)
> 3f130a37c442d5 kernel/sched/fair.c Valentin Schneider        2018-09-26  9809           goto out;
> 3f130a37c442d5 kernel/sched/fair.c Valentin Schneider        2018-09-26  9810
> 1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9811   /* tune up the balancing interval */
> 47b7aee14fd7e4 kernel/sched/fair.c Valentin Schneider        2018-09-26  9812   if ((env.flags & LBF_ALL_PINNED &&
> 5b54b56be5b540 kernel/sched/fair.c Peter Zijlstra            2011-09-22  9813        sd->balance_interval < MAX_PINNED_INTERVAL) ||
> 47b7aee14fd7e4 kernel/sched/fair.c Valentin Schneider        2018-09-26  9814       sd->balance_interval < sd->max_interval)
> 1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9815           sd->balance_interval *= 2;
> 1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9816  out:
> 1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9817   return ld_moved;
> 1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9818  }
> 1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9819
>
> :::::: The code at line 9551 was first introduced by commit
> :::::: 1e3c88bdeb1260edc341e45c9fb8efd182a5c511 sched: Move load balance code into sched_fair.c
>
> :::::: TO: Peter Zijlstra <a.p.zijlstra@chello.nl>
> :::::: CC: Ingo Molnar <mingo@elte.hu>
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKfTPtB9B9jv_uSk0fS7uOTtH5FCwLcAOrPjtXzRuURLUMFnoA%40mail.gmail.com.
