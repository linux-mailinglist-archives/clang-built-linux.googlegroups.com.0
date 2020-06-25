Return-Path: <clang-built-linux+bncBDMODYUV7YCRBJ652L3QKGQE2FZNMZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63a.google.com (mail-pl1-x63a.google.com [IPv6:2607:f8b0:4864:20::63a])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AC9020A08D
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jun 2020 16:03:21 +0200 (CEST)
Received: by mail-pl1-x63a.google.com with SMTP id b5sf3748405pls.17
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jun 2020 07:03:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593093799; cv=pass;
        d=google.com; s=arc-20160816;
        b=dRXl+DLnY29KNeD0IuExYYeOYEVKLYDEXaa99AFaoOuo2g1eCeIpwcTWVYS9/HP+Qv
         Uh6kQGT9FHIM39KMsVmgBXxBSzpldt/WfxVqNTnwrovS8HhcIoveSYjyCwfb+dM1SiA4
         VyOMktN9WUi+xwKcA5gRI7UbA3SK6cD11TIFKu8C99/c+SsOq2XZ4zRv/UH2/5qNm+8S
         VFuhm7OuefUSujK/T2UULuF2ttmSevN+pV44EpNMEOHZSIC8DrkGeRj/e/EiOD2jdSOz
         BrWMRl4fYJbnzGQHzrjydB3YjkXc9kse5QiO+kchdjuIM2JdSYJumxqt49AUKGUm+KKM
         0OKA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=X07CrpxNaniqFSxz1Ww98aknLLSBbNiXmagziBDGHyY=;
        b=rNlML6duPBKIIBlQYagyQoCEbZfZviQw8VmzquIPJnzTHv1nyPoLCKmpjH5Tlx5DQU
         8fbAWxvhF0Fu4IsFfI/upDdWqSp93VQvDUjyE0hzFQWuSH3GMUj0fV78/8s9rwEQIpXX
         Zmz3oVOuJKoMV7VB7nkb/pAzcFKH/XRkZeOghjP2MlnJF79FNq0AL5ajCYn4WQjrYsfM
         Q/6rfYEc26n/13a2eT/DIFCIApTLOXcZ0gLd7dJMO0xnB7XwBttjuaeMazdXwS4Zz4Ar
         FA067JYWujvBLJnu7JTkSb0rTUcI163iIDmIyvf6WEalzeefEDsDAyQ10NM/+YGwQJLY
         rFww==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@joelfernandes.org header.s=google header.b=jf8zHeXk;
       spf=pass (google.com: domain of joel@joelfernandes.org designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=joel@joelfernandes.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=X07CrpxNaniqFSxz1Ww98aknLLSBbNiXmagziBDGHyY=;
        b=h5j/bzdBnopxTX846KwpyWV1K1Df60/XR890Wbt4I8iIheOJMcRMB1l1vupSL74VpZ
         ahBNApQKomd8LH9+tcJmZHghGBTrxfqWcQdp1g7Q7AnMEyUWUMuVIx3JcVWlfSroUriG
         9iq63kjqfEETMreFusGgq+t8WAyaaUvAg54jAnv5otQ/3xcX5RMv3rmPdAWic9q9bWJ2
         7mtV56+9bmlsL4M06jCpCfetyO6ceoaZDHQo82TRVQbMzrGJFyXVWdgNZHR7DvSFyCn6
         5iBibkz8tMf0ZU6b3y5Y4Mhb/AmlLNBxM1kuSU9gIKJcMApqVQIiE1hWxa426ysS3l/s
         ntuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=X07CrpxNaniqFSxz1Ww98aknLLSBbNiXmagziBDGHyY=;
        b=g6DIaADrqPbxnrLKOq0baDtnENUqntC2ZBQqgCQRc7pl8lAJIRjCnX87dw6qCMNRVI
         gOEq9bf4aOm8S5EOZjinxV7cT00hl9BmYa4MElDV7Ybjwlawddeh/YbLX/s2qQP4M8xR
         K6991HG7qG1GKR/heqXem8TkdDLAYbhbRuNmq2+zQ5duGpHF/A78wCZhUvG1mnggFDTG
         w79+RfgWARIroNjlQwwF71D9IbM0t0XXC8bvz2RM/r7bOhXW+vC3dOfbRgWN956+KTPG
         dSVhi2WQ8aza5uikurC2a1MuVGSGcB3sneAO4W97jB0nhAMXRs72yqpG0QKUtBe1UG2g
         VuHA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532IrrsFpwWvDoT0HtuVAotdy482qCe68iCac5FUnxMgDSjU1CeJ
	DDGc43dsTjklkGmLioDurYE=
X-Google-Smtp-Source: ABdhPJzy9JLYqOoPYUFhDacTE125YU/j3Z1G8mfdEPqQtztp6GC2A++fFtto3nZ1aduATvcTb6bzgg==
X-Received: by 2002:a17:90a:f8e:: with SMTP id 14mr3714355pjz.172.1593093799407;
        Thu, 25 Jun 2020 07:03:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7686:: with SMTP id m6ls2331827pll.1.gmail; Thu, 25
 Jun 2020 07:03:19 -0700 (PDT)
X-Received: by 2002:a17:90a:7bc3:: with SMTP id d3mr3380172pjl.98.1593093798927;
        Thu, 25 Jun 2020 07:03:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593093798; cv=none;
        d=google.com; s=arc-20160816;
        b=TKDdU5F8F3IvozcDt3E9z2L9Gs+PlTD1IVgT7a58qI6zg2PgLU9hnFBcGf5er/Z0VT
         bfvBWCYJj4AwgwEJH8tqxQ4zsV/C3szGqkaHPXKocRo/7rvC0wmQ7/OY9EYZrdbsuWMK
         VsXIGJpaQBsBj9HGIniBZSpKYXolPSYDJ2jD+8KfOJCed7mQWgRVH8/yX7QE6q3Gtayc
         ajzay/9O31oP4kV8GJ7QP5wyqxUKvwvDIT4hbucsKJvYi2Mwmf4U34g4slbkkdFActBb
         pej8XHm8U5gB/6YmIUBu3BxYu7sNDOX+aiWXSDWj1wvp9d11yRHjrFXKiVgGFi+lQ3l0
         wIMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=XxFnzRIjxSAChIaHCVuKvTP+mQOz1IqICoegudiUYZs=;
        b=L9xYgS+6Wc+01LNEDzBC3TF0bCvxDR4ePj5XTNfMvFd+6gajgG5Xlf1Y5CvbaEl5yp
         w83IyaKa6pA0oy6jzE9af0KXh58OX69GbkhKUgLlEYDR51f2zQ8i9NWLW0rvk32s80nS
         g1J8R8BT48WaaG6kztpIS8kelQz9xmy5u7bnhVZCAQ1ItQrZP+oR4rBELLaW0d52HFfT
         r5jjTRmHSTqdAK3sexLJ2/Lcrj3MHprSm2QtIHzbL5XilslEhu2OxCenxDFPXbDx5fzf
         VHmXYMaPlbS6achGHtlLz6W/6AO+bK2dj1c6mReu/u/u/s8KZQydf4EROH9ckPCb7Nvw
         /ACA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@joelfernandes.org header.s=google header.b=jf8zHeXk;
       spf=pass (google.com: domain of joel@joelfernandes.org designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=joel@joelfernandes.org
Received: from mail-qt1-x842.google.com (mail-qt1-x842.google.com. [2607:f8b0:4864:20::842])
        by gmr-mx.google.com with ESMTPS id w13si446669pll.2.2020.06.25.07.03.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Jun 2020 07:03:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of joel@joelfernandes.org designates 2607:f8b0:4864:20::842 as permitted sender) client-ip=2607:f8b0:4864:20::842;
Received: by mail-qt1-x842.google.com with SMTP id e12so4628063qtr.9
        for <clang-built-linux@googlegroups.com>; Thu, 25 Jun 2020 07:03:18 -0700 (PDT)
X-Received: by 2002:ac8:19ad:: with SMTP id u42mr11898814qtj.168.1593093798315;
        Thu, 25 Jun 2020 07:03:18 -0700 (PDT)
Received: from localhost ([2620:15c:6:12:9c46:e0da:efbf:69cc])
        by smtp.gmail.com with ESMTPSA id 21sm5232150qkj.56.2020.06.25.07.03.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Jun 2020 07:03:17 -0700 (PDT)
Date: Thu, 25 Jun 2020 10:03:17 -0400
From: Joel Fernandes <joel@joelfernandes.org>
To: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: Re: [jfern:rcu-segcb 3/10] kernel/rcu/tree_plugin.h:792:57: error:
 too few arguments to function call, expected 4, have 3
Message-ID: <20200625140317.GB22079@google.com>
References: <202006250242.s2Nd0kvk%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202006250242.s2Nd0kvk%lkp@intel.com>
X-Original-Sender: joel@joelfernandes.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@joelfernandes.org header.s=google header.b=jf8zHeXk;       spf=pass
 (google.com: domain of joel@joelfernandes.org designates 2607:f8b0:4864:20::842
 as permitted sender) smtp.mailfrom=joel@joelfernandes.org
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

Hmm, so this branch is deleted. Can we drop testing of it?

thanks,

 - Joel

On Thu, Jun 25, 2020 at 02:54:50AM +0800, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/jfern/linux.git rcu-segcb
> head:   039f56b3996656cf3a0bdc306fcd09fc02fe3fbb
> commit: 94e6141197fc434bf1fcccfa862129e4958fb6e0 [3/10] rcu/trace: Add name of the source for gp_seq
> config: x86_64-allyesconfig (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 1d4c87335d5236ea1f35937e1014980ba961ae34)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         git checkout 94e6141197fc434bf1fcccfa862129e4958fb6e0
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>):
> 
>    In file included from kernel/rcu/tree.c:4456:
> >> kernel/rcu/tree_plugin.h:792:57: error: too few arguments to function call, expected 4, have 3
>                                   __this_cpu_read(rcu_data.gp_seq), TPS("cpuqs"));
>                                                                                 ^
>    include/trace/events/rcu.h:69:1: note: 'trace_rcu_grace_period' declared here
>    TRACE_EVENT_RCU(rcu_grace_period,
>    ^
>    include/trace/events/rcu.h:11:25: note: expanded from macro 'TRACE_EVENT_RCU'
>    #define TRACE_EVENT_RCU TRACE_EVENT
>                            ^
>    include/linux/tracepoint.h:512:2: note: expanded from macro 'TRACE_EVENT'
>            DECLARE_TRACE(name, PARAMS(proto), PARAMS(args))
>            ^
>    include/linux/tracepoint.h:376:2: note: expanded from macro 'DECLARE_TRACE'
>            __DECLARE_TRACE(name, PARAMS(proto), PARAMS(args),              \
>            ^
>    include/linux/tracepoint.h:232:21: note: expanded from macro '__DECLARE_TRACE'
>            static inline void trace_##name(proto)                          \
>                               ^
>    <scratch space>:15:1: note: expanded from here
>    trace_rcu_grace_period
>    ^
>    1 error generated.
> 
> vim +792 kernel/rcu/tree_plugin.h
> 
> f41d911f8c49a5 kernel/rcutree_plugin.h  Paul E. McKenney          2009-08-22  779  
> 45975c7d21a1c0 kernel/rcu/tree_plugin.h Paul E. McKenney          2018-07-02  780  /*
> 90326f0521a880 kernel/rcu/tree_plugin.h Sebastian Andrzej Siewior 2019-10-15  781   * Note a quiescent state for PREEMPTION=n.  Because we do not need to know
> 45975c7d21a1c0 kernel/rcu/tree_plugin.h Paul E. McKenney          2018-07-02  782   * how many quiescent states passed, just if there was at least one since
> 45975c7d21a1c0 kernel/rcu/tree_plugin.h Paul E. McKenney          2018-07-02  783   * the start of the grace period, this just sets a flag.  The caller must
> 45975c7d21a1c0 kernel/rcu/tree_plugin.h Paul E. McKenney          2018-07-02  784   * have disabled preemption.
> 45975c7d21a1c0 kernel/rcu/tree_plugin.h Paul E. McKenney          2018-07-02  785   */
> 45975c7d21a1c0 kernel/rcu/tree_plugin.h Paul E. McKenney          2018-07-02  786  static void rcu_qs(void)
> d28139c4e96713 kernel/rcu/tree_plugin.h Paul E. McKenney          2018-06-28  787  {
> 45975c7d21a1c0 kernel/rcu/tree_plugin.h Paul E. McKenney          2018-07-02  788  	RCU_LOCKDEP_WARN(preemptible(), "rcu_qs() invoked with preemption enabled!!!");
> 45975c7d21a1c0 kernel/rcu/tree_plugin.h Paul E. McKenney          2018-07-02  789  	if (!__this_cpu_read(rcu_data.cpu_no_qs.s))
> 45975c7d21a1c0 kernel/rcu/tree_plugin.h Paul E. McKenney          2018-07-02  790  		return;
> 45975c7d21a1c0 kernel/rcu/tree_plugin.h Paul E. McKenney          2018-07-02  791  	trace_rcu_grace_period(TPS("rcu_sched"),
> 45975c7d21a1c0 kernel/rcu/tree_plugin.h Paul E. McKenney          2018-07-02 @792  			       __this_cpu_read(rcu_data.gp_seq), TPS("cpuqs"));
> 45975c7d21a1c0 kernel/rcu/tree_plugin.h Paul E. McKenney          2018-07-02  793  	__this_cpu_write(rcu_data.cpu_no_qs.b.norm, false);
> 45975c7d21a1c0 kernel/rcu/tree_plugin.h Paul E. McKenney          2018-07-02  794  	if (!__this_cpu_read(rcu_data.cpu_no_qs.b.exp))
> 45975c7d21a1c0 kernel/rcu/tree_plugin.h Paul E. McKenney          2018-07-02  795  		return;
> 45975c7d21a1c0 kernel/rcu/tree_plugin.h Paul E. McKenney          2018-07-02  796  	__this_cpu_write(rcu_data.cpu_no_qs.b.exp, false);
> 63d4c8c97948b0 kernel/rcu/tree_plugin.h Paul E. McKenney          2018-07-03  797  	rcu_report_exp_rdp(this_cpu_ptr(&rcu_data));
> d28139c4e96713 kernel/rcu/tree_plugin.h Paul E. McKenney          2018-06-28  798  }
> d28139c4e96713 kernel/rcu/tree_plugin.h Paul E. McKenney          2018-06-28  799  
> 
> :::::: The code at line 792 was first introduced by commit
> :::::: 45975c7d21a1c0aba97e3d8007e2a7c123145748 rcu: Define RCU-sched API in terms of RCU for Tree RCU PREEMPT builds
> 
> :::::: TO: Paul E. McKenney <paulmck@linux.vnet.ibm.com>
> :::::: CC: Paul E. McKenney <paulmck@linux.vnet.ibm.com>
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200625140317.GB22079%40google.com.
