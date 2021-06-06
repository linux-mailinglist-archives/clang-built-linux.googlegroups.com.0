Return-Path: <clang-built-linux+bncBCJZRXGY5YJBBV5H6GCQMGQENIUQO5Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33e.google.com (mail-ot1-x33e.google.com [IPv6:2607:f8b0:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id 10D9439CD3D
	for <lists+clang-built-linux@lfdr.de>; Sun,  6 Jun 2021 06:49:29 +0200 (CEST)
Received: by mail-ot1-x33e.google.com with SMTP id e28-20020a9d491c0000b02903daf90867besf4132286otf.11
        for <lists+clang-built-linux@lfdr.de>; Sat, 05 Jun 2021 21:49:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622954967; cv=pass;
        d=google.com; s=arc-20160816;
        b=ucWcWqyIAiXqI3zwyHOfBpMo/Bjmq0sqwIopt80DTd9SWaTjFzckPksI9DU1Bd0iNz
         /oFJ+yA+yFXixb457/GAhf32U3nVuJbKFAz2dGz1FB1Con3IhrIXGKxBya0+VfqAfwAN
         aZ4bBMRlvt27GHXRNgWSCqInOQVdbLYFgYvMPtqfhQcSigQF5VGEETHj2RQ0qb9oM2EJ
         6h5mUnf6OGUme3kLoaE6Zyr8qfTrTQiG8NXQZZQ6w3dH3onjDEfIctGfe0fv3AeKFDGw
         WdleTG7yUT3wG0EotANAGasE5q4dGgCh0t9zKvhdmKBv2nzWUZkjPTKz5uvXB8qS0ilu
         JELw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:reply-to:message-id:subject:cc:to:from:date
         :sender:dkim-signature;
        bh=sFHpp3sCMiBmOUPhEjCpb8H50xiACjWD9eS9y/BaiC0=;
        b=SyPNQjjYhCW5K7dlm5vwOM2ZoL204dusd75bvsKI6jSIGZymYld9UXTu4hWul+bw7C
         KCKdgVur8pDS5x6jZVQ1Jl4IduS32wgyYX/j3iPr8lLf73qSTXwX9xkjbh5UlJ6Bir/W
         iIwbOFMMLKnu+O4Clg0FqumGQnauWdf9N/J9zy149dWT4g3vq8MCoZrTpU6zJhqNNwy/
         lH6LE4K5y2WSfmJrgcfnZvnuOuBXvGj/9Dn2kkW/AMhly0lw6wo2hESM9Xbn1U3t0Efs
         +yVZD5eepO2m4eysbNxkXsPfuMUmoORhY+EWrxCZwBj+jdLFg/5PGIDfnMxO+0kgPNOR
         qLJA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=biCbh5Ch;
       spf=pass (google.com: domain of srs0=fgyk=la=paulmck-thinkpad-p17-gen-1.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=fgYk=LA=paulmck-ThinkPad-P17-Gen-1.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:reply-to:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=sFHpp3sCMiBmOUPhEjCpb8H50xiACjWD9eS9y/BaiC0=;
        b=EYS4+bkM8BL2M12+oeLMJMZzoHSzxNt0MTvZjAJeMIYsuljnPilG9pWeWKGjXkwprT
         YC90H6vBJo1xBFJgBXbB4V0YVEDt/ypq5Z0/6XI2KM921HLCYwYlDBHhOs3YVHAGZghO
         uc6e6Zi43Fj0xkcXPpN6Aaql2/+KdC+KtEo6iA+e/FocjgC4qMTaAA4AGbjpfkRL2Sih
         7rsgeqBsGXdXitxad9dj9Yg7nO1634pKRql4COBhMPKs/RK8ZXNoTC71Wlf7M28Onyw6
         QBE1yfjHLgSaQ/J4WihZBDBDlPy4KleHDouusIJ7WpOM+8uAHxM+4duvqx3UisV9hDmk
         1aHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :reply-to:references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=sFHpp3sCMiBmOUPhEjCpb8H50xiACjWD9eS9y/BaiC0=;
        b=h+JDUzczE+FBjl05H06pczEX2sT/CLgt0KZmd6hQARPNWh4bLovCHW5ozPG17GzRW6
         gZufZreqk+8GQqLbhdK/6GCsQ/f3fQbMJi3d8pB+IShqPoFBGO2U7RZxclMQTvrPPDsF
         RUAuWzOJljATCnOl9HypCUxKZI9UQ8MM7YJd79X+mDBjnEJIkaCyD6BnyVQIYgM0U1P3
         hwypkqNBaX7lGBR+CnEDPMOSsm8DAEmTrb5WSGJus8TsYmzADVLahDwX9URqH8s8UnnX
         bWLKMdog7Ojfo6mCiuFmDn8p8Wo1eNRDICON2Hxe3s5qoebMR/ErhmBq5MZl1JWL1WRs
         9tLw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531CWHkT5NpTxL5UbgBGn3fO9yb2pEyGjJCyVzrgvHw+T/wGKxp+
	83kGwd9mNiw0NH3tW+alqH4=
X-Google-Smtp-Source: ABdhPJxzwLl5uCk7RBqPI+mZf0e/DK2QlkTU/MRUsIHKj2/UdAnaXspT7qZC68CIJYenexJXfiCxuw==
X-Received: by 2002:a9d:3436:: with SMTP id v51mr9713198otb.346.1622954967766;
        Sat, 05 Jun 2021 21:49:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1d6e:: with SMTP id l14ls3823660oti.10.gmail; Sat,
 05 Jun 2021 21:49:27 -0700 (PDT)
X-Received: by 2002:a9d:798c:: with SMTP id h12mr9482820otm.253.1622954967425;
        Sat, 05 Jun 2021 21:49:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622954967; cv=none;
        d=google.com; s=arc-20160816;
        b=YARGfucfuVsbsy4pxFnNXN/30qW4qkWeG6499YMasLp6PTIDQlJEPV0tZWo/Wgri4/
         eek7ArhpXMX/SwqiNp1FBpX9EDXEscPcAEOsCKVdPG9Hq9qzeaabA357HU5YbDUnAPT2
         cOB1nLBG9PJlk6trLdAL9BgMNDeqd9pyni88XhZ9ycChOdl+KAVt3GhcZSGZ8HEjFOEc
         3MViFReZKrf9MXvXinlIAb2U7l8rptdpJdjaeLD1L9fhDTRusrMy7ChgCYcGxiEs4aKK
         51Lks+qc94Tu8ir2eqviYnXU+4tg3/dylH4np/8OsBqjO5yS1UxFD0bNJad3fqfEVKQa
         pqIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=J/jV4O6m5RdwaGH8KY0FL+pY73Nw67nyKw+D6sftHZs=;
        b=M4PsnheCVl/DCXR0hNLRMRZnJ+Yrk9yWqu0cehb4rbEFtDZ2x2tpWL92PMfhlVo/yD
         hC044xBdQuDB7PEuCRMUSQ1jpPLjnCaau2VJu25fiS8Scirgv8oMRB33dPpvjG2LoDFR
         zwyF3TCwCGYYnveGG1Suj8L/6IwmRnVymPe+GnRjDL3bipCWVi6WSP2XbwhzQ/H6Cc7/
         c/2qVT486dqhNthwe6MFdaBUU6eJJkLTclRYjQ9BonoQwbYD0UbEmpqLBqZanZVOLIDU
         dv7NmfMeQbHseWo8AA9UKR5clbS7O4OJ/6VtHsbZrF5IzvI2XD/oQT948XwfyBnvhVwr
         TUvg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=biCbh5Ch;
       spf=pass (google.com: domain of srs0=fgyk=la=paulmck-thinkpad-p17-gen-1.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=fgYk=LA=paulmck-ThinkPad-P17-Gen-1.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c9si726560ots.4.2021.06.05.21.49.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 05 Jun 2021 21:49:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of srs0=fgyk=la=paulmck-thinkpad-p17-gen-1.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id AB2E761421;
	Sun,  6 Jun 2021 04:49:26 +0000 (UTC)
Received: by paulmck-ThinkPad-P17-Gen-1.home (Postfix, from userid 1000)
	id 7B2BE5C0991; Sat,  5 Jun 2021 21:49:26 -0700 (PDT)
Date: Sat, 5 Jun 2021 21:49:26 -0700
From: "Paul E. McKenney" <paulmck@kernel.org>
To: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org
Subject: Re: kernel/rcu/tree.c:2073:23: warning: stack frame size of 2704
 bytes in function 'rcu_gp_kthread'
Message-ID: <20210606044926.GJ4397@paulmck-ThinkPad-P17-Gen-1>
Reply-To: paulmck@kernel.org
References: <202106061253.0X2QKyyI-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202106061253.0X2QKyyI-lkp@intel.com>
X-Original-Sender: paulmck@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=biCbh5Ch;       spf=pass
 (google.com: domain of srs0=fgyk=la=paulmck-thinkpad-p17-gen-1.home=paulmck@kernel.org
 designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=fgYk=LA=paulmck-ThinkPad-P17-Gen-1.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Sun, Jun 06, 2021 at 12:19:57PM +0800, kernel test robot wrote:
> Hi Paul,
> 
> FYI, the error/warning still remains.
> 
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> head:   f5b6eb1e018203913dfefcf6fa988649ad11ad6e
> commit: 7dffe01765d9309b8bd5505503933ec0ec53d192 rcu: Add lockdep_assert_irqs_disabled() to raw_spin_unlock_rcu_node() macros
> date:   5 months ago
> config: powerpc-randconfig-r023-20210606 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 551a697c5cf33275b66add4fc467fcf59084cffb)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install powerpc cross compiling tool for clang build
>         # apt-get install binutils-powerpc-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=7dffe01765d9309b8bd5505503933ec0ec53d192
>         git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
>         git fetch --no-tags linus master
>         git checkout 7dffe01765d9309b8bd5505503933ec0ec53d192
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
>    In file included from kernel/rcu/tree.c:21:
>    In file included from include/linux/kernel.h:12:
>    In file included from include/linux/bitops.h:29:
>    In file included from arch/powerpc/include/asm/bitops.h:62:
>    arch/powerpc/include/asm/barrier.h:49:9: warning: '__lwsync' macro redefined [-Wmacro-redefined]
>    #define __lwsync()      __asm__ __volatile__ (stringify_in_c(LWSYNC) : : :"memory")
>            ^
>    <built-in>:310:9: note: previous definition is here
>    #define __lwsync __builtin_ppc_lwsync
>            ^
> >> kernel/rcu/tree.c:2073:23: warning: stack frame size of 2704 bytes in function 'rcu_gp_kthread' [-Wframe-larger-than=]
>    static int __noreturn rcu_gp_kthread(void *unused)

Does -rcu commit 2f20de99a63b ("rcu: Make rcu_gp_cleanup() be noinline
for tracing") help?

							Thanx, Paul

>    2 warnings generated.
> 
> 
> vim +/rcu_gp_kthread +2073 kernel/rcu/tree.c
> 
> 7fdefc10e1d730 kernel/rcutree.c  Paul E. McKenney 2012-06-22  2069  
> 7fdefc10e1d730 kernel/rcutree.c  Paul E. McKenney 2012-06-22  2070  /*
> 7fdefc10e1d730 kernel/rcutree.c  Paul E. McKenney 2012-06-22  2071   * Body of kthread that handles grace periods.
> 7fdefc10e1d730 kernel/rcutree.c  Paul E. McKenney 2012-06-22  2072   */
> 0854a05c9fa554 kernel/rcu/tree.c Paul E. McKenney 2018-07-03 @2073  static int __noreturn rcu_gp_kthread(void *unused)
> 7fdefc10e1d730 kernel/rcutree.c  Paul E. McKenney 2012-06-22  2074  {
> 5871968d531f39 kernel/rcu/tree.c Paul E. McKenney 2015-02-24  2075  	rcu_bind_gp_kthread();
> 7fdefc10e1d730 kernel/rcutree.c  Paul E. McKenney 2012-06-22  2076  	for (;;) {
> 7fdefc10e1d730 kernel/rcutree.c  Paul E. McKenney 2012-06-22  2077  
> 7fdefc10e1d730 kernel/rcutree.c  Paul E. McKenney 2012-06-22  2078  		/* Handle grace-period start. */
> 7fdefc10e1d730 kernel/rcutree.c  Paul E. McKenney 2012-06-22  2079  		for (;;) {
> 0f11ad323dd3d3 kernel/rcu/tree.c Paul E. McKenney 2020-02-10  2080  			trace_rcu_grace_period(rcu_state.name, rcu_state.gp_seq,
> 63c4db78e80407 kernel/rcutree.c  Paul E. McKenney 2013-08-09  2081  					       TPS("reqwait"));
> 9cbc5b97029bff kernel/rcu/tree.c Paul E. McKenney 2018-07-05  2082  			rcu_state.gp_state = RCU_GP_WAIT_GPS;
> 9cbc5b97029bff kernel/rcu/tree.c Paul E. McKenney 2018-07-05  2083  			swait_event_idle_exclusive(rcu_state.gp_wq,
> 9cbc5b97029bff kernel/rcu/tree.c Paul E. McKenney 2018-07-05  2084  					 READ_ONCE(rcu_state.gp_flags) &
> 4cdfc175c25c89 kernel/rcutree.c  Paul E. McKenney 2012-06-22  2085  					 RCU_GP_FLAG_INIT);
> 55b2dcf5870004 kernel/rcu/tree.c Paul E. McKenney 2020-04-01  2086  			rcu_gp_torture_wait();
> 9cbc5b97029bff kernel/rcu/tree.c Paul E. McKenney 2018-07-05  2087  			rcu_state.gp_state = RCU_GP_DONE_GPS;
> 78e4bc34e5d966 kernel/rcu/tree.c Paul E. McKenney 2013-09-24  2088  			/* Locking provides needed memory barrier. */
> 0854a05c9fa554 kernel/rcu/tree.c Paul E. McKenney 2018-07-03  2089  			if (rcu_gp_init())
> 7fdefc10e1d730 kernel/rcutree.c  Paul E. McKenney 2012-06-22  2090  				break;
> cee43939893337 kernel/rcu/tree.c Paul E. McKenney 2018-03-02  2091  			cond_resched_tasks_rcu_qs();
> 9cbc5b97029bff kernel/rcu/tree.c Paul E. McKenney 2018-07-05  2092  			WRITE_ONCE(rcu_state.gp_activity, jiffies);
> 73a860cd58a1eb kernel/rcu/tree.c Paul E. McKenney 2014-08-14  2093  			WARN_ON(signal_pending(current));
> 0f11ad323dd3d3 kernel/rcu/tree.c Paul E. McKenney 2020-02-10  2094  			trace_rcu_grace_period(rcu_state.name, rcu_state.gp_seq,
> 63c4db78e80407 kernel/rcutree.c  Paul E. McKenney 2013-08-09  2095  					       TPS("reqwaitsig"));
> 7fdefc10e1d730 kernel/rcutree.c  Paul E. McKenney 2012-06-22  2096  		}
> 7fdefc10e1d730 kernel/rcutree.c  Paul E. McKenney 2012-06-22  2097  
> 4cdfc175c25c89 kernel/rcutree.c  Paul E. McKenney 2012-06-22  2098  		/* Handle quiescent-state forcing. */
> c3854a055bc834 kernel/rcu/tree.c Paul E. McKenney 2018-07-05  2099  		rcu_gp_fqs_loop();
> 4cdfc175c25c89 kernel/rcutree.c  Paul E. McKenney 2012-06-22  2100  
> 4cdfc175c25c89 kernel/rcutree.c  Paul E. McKenney 2012-06-22  2101  		/* Handle grace-period end. */
> 9cbc5b97029bff kernel/rcu/tree.c Paul E. McKenney 2018-07-05  2102  		rcu_state.gp_state = RCU_GP_CLEANUP;
> 0854a05c9fa554 kernel/rcu/tree.c Paul E. McKenney 2018-07-03  2103  		rcu_gp_cleanup();
> 9cbc5b97029bff kernel/rcu/tree.c Paul E. McKenney 2018-07-05  2104  		rcu_state.gp_state = RCU_GP_CLEANED;
> 4cdfc175c25c89 kernel/rcutree.c  Paul E. McKenney 2012-06-22  2105  	}
> b3dbec76e5334f kernel/rcutree.c  Paul E. McKenney 2012-06-18  2106  }
> b3dbec76e5334f kernel/rcutree.c  Paul E. McKenney 2012-06-18  2107  
> 
> :::::: The code at line 2073 was first introduced by commit
> :::::: 0854a05c9fa554930174f0fa7453c18f99108a4a rcu: Remove rsp parameter from rcu_gp_kthread() and friends
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210606044926.GJ4397%40paulmck-ThinkPad-P17-Gen-1.
