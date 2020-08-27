Return-Path: <clang-built-linux+bncBAABBYHKUD5AKGQEXWHB63Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3a.google.com (mail-vs1-xe3a.google.com [IPv6:2607:f8b0:4864:20::e3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 42319255137
	for <lists+clang-built-linux@lfdr.de>; Fri, 28 Aug 2020 00:36:17 +0200 (CEST)
Received: by mail-vs1-xe3a.google.com with SMTP id f25sf2036572vsp.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 15:36:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598567776; cv=pass;
        d=google.com; s=arc-20160816;
        b=lAZtzJ8vUI3V9A9A2bAl/PGX+vJvIcF4Xb45SEyTxPMZWo6zs8M1v16dTIK4+C06SF
         8uKknJZCGB5fQjRLKu06NB0ITKBoLAFGME4L7tbfTYlka84GjCrLY4X8F0N/jIYchb5s
         PX1bEYAFW2Qb7LGX8heRmYeePbz2lt+7hpk5T4l+PwYYuthN6ucOmcWa0fzEF2nUYgAm
         qfC969XclITYdzFgY80W/f8tJmnei6VQrkuLVrKcoz7cmYjl5TH9m/tDnIWRuT99he9k
         CNez5tS9lOFpLi1sVBWJKJ/N7yHNFGfsTPGbn5AJViSqet6NuA8VGA9jLthSU7jyeVca
         d7/Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:reply-to:message-id
         :subject:cc:to:from:date:sender:dkim-signature;
        bh=xd+d5IIdQBgyDKkR+rveP61vTKtC9fJcdNW/+5BBXTE=;
        b=QIzGF8owJtBX9vXKim0QC9Y5HopRbpFihLqkued9U+OSAHkNoefLNcYcofdQlo2ZCQ
         RQCfOiUOy74YbqmqzoQ5P8sD3ZuHo4MI6Pa8WhxbX38SEnDQg0kAT2FuFdKgZnndvWU8
         aqOyy1cadesPC1avLWAqKEYS9w2eT3T0x529MQYhnvryV4Zyw2pkWiSBKrSmeQjM3BwS
         byUpijUv0HpKXHjMn6tdLSEYvH44KkBmn3sn/vvQ9Oj5U4pDd5O7JLjTdHbvJ7P3+la/
         X6tF3N964lPI5vUNPSNsMBn7wWv3nR1A5jyVmH88X6tchmJdq4Mbm37GS/fuphgnvVIU
         EyOw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=uEdGTT5m;
       spf=pass (google.com: domain of srs0=h74t=cf=paulmck-thinkpad-p72.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=H74t=CF=paulmck-ThinkPad-P72.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:reply-to:references
         :mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xd+d5IIdQBgyDKkR+rveP61vTKtC9fJcdNW/+5BBXTE=;
        b=WTOqKJ7Ch94CBBIwEhHxJbVg72Hr6GN1GXWZs5SyUjhFdFEtAtLpU4Xrwx7gJHJd6U
         BZxDzL/iGdF9aSLB0DSfx/t98Rah+AW2lhUQSApPd9Rjkscyj2um35jmtXyJ93bFDom0
         sasCXZX07NBsUEVkd1j6y9aDaqK1HygFmzMUMDXgfmaVzRdEjyy1Lb3iqx7qWiOKUaFY
         itAXkRP7lOcGbBzw5AfiT73dDOWrLnm0GH9QM/URu7+HjJamlgvKUHr8Bi7ur2sscjI4
         eQggxtXP4aDRqQA1XdSZHPSByS/g1QGhLn0RnZPDtLTy1jpeJiwbrpmdowDqvLwK7qbH
         4SZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :reply-to:references:mime-version:content-disposition:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xd+d5IIdQBgyDKkR+rveP61vTKtC9fJcdNW/+5BBXTE=;
        b=Yq8w/89IOX9yNFmxn17xF0R5iS+VpSgjJZN1hk1rs2/fWOlOTmi1qeDKd16X9wSBnv
         Xrkv21dqc1hwbbYUoPWrQIGYQsNiVdYeAxN3ZBQKjX3O/gaiAATuc/DHJt6kaaFGhLSL
         0c+IskSJ7KgteYWRc6SsUrcL2VSB5AUX33ssDVvHsqqIOnbeYFejyzphcS37rNgP7pqI
         Yjrqk3vbAvZgCjEqa9uddSHJSwb9ugvbfz1YcJqI4GHnmaDzoMlo/RQp0r1Y9A5BI7YI
         tGO8HNoKNcp9TtWJfvtnwpV0cwcfTy6mYNkeCam0UpuLLsWWr96w6E85zxGQgF0xEZ8r
         rPiw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5313mkbCrjuw1/P1bMCrzZKFrnQTmJL8/Je6T1qEoSrZZLbt1OA0
	BJ1OGfT4Kka01HxmoEJw69g=
X-Google-Smtp-Source: ABdhPJxYqe7KDJaegfWaQywfr0RsNb6ShvwLv/hRE2q75H2BvHrE587z3Qq0fGIgd0zJuuo1qQBYnw==
X-Received: by 2002:a05:6122:54c:: with SMTP id y12mr3188505vko.79.1598567776271;
        Thu, 27 Aug 2020 15:36:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:fe87:: with SMTP id b7ls487318vsr.10.gmail; Thu, 27 Aug
 2020 15:36:15 -0700 (PDT)
X-Received: by 2002:a05:6102:388:: with SMTP id m8mr14267496vsq.139.1598567775851;
        Thu, 27 Aug 2020 15:36:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598567775; cv=none;
        d=google.com; s=arc-20160816;
        b=xxxIeswcJMIbPTSFkcISHjAZke2xZ2fiEGXp+F3x1ERG1mz5qxukdD+bt8MMNMKATH
         /Rd4RCWA4/2uFk181xotg6acZw78GYH6XAF44Axa6PeET/BStslPQiyIXytfltMrMyV2
         ATycZCXYouegbwDpOpRNG8grvK/Y7FoWIYyBWx9+sAf6XJOtAls00cxMBrZ3UwC2VpO8
         pB2hjcLpaYl5wlUaMu99zmMcQm9sa4XFfxff4rOsMzR/jPlD/I8IangakxY1kj5he/jt
         MC88cq09rhQeI7ELVYJ448gtUQ5mHOx07YF2oymuMyq51GaaK0peNQmDd3BRwsD13289
         xRCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=oVxdgXfHfYfoTeDYYjDYvhXzF6akbPw1D7DT9TTVB+o=;
        b=bNMXU6tTppNvFzDWWXTRMAqU0AbufCUA921y5bY21m7hq5r3lGgbdzrNaLaBGGLfjX
         NO1pZgbDiUi+jix0Uq1F2yG6/zE3qNhh6FUDX5gnAl8ozU1pwHOlA5BhW5WcKd8T/Qp2
         NKm9Bdd72SUOr2k3+IiincaHKTk3hX7OU3b0SDpIa6JuU2hT6BzWgOG2m7Md6/FKJfpz
         MWhgWglR+1oFs7cThfWedSJ1+mqVXZ0NXoDxQKe6vRLBu5uyEPnusT5WTZJlAY/jYWGV
         bQFwhl+72zdB5ZVt3LFTh+1vkYxmutc4CCyJ25/nMlI05NLy7n5r0gH5l/Tx1ly+EmG6
         +cWw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=uEdGTT5m;
       spf=pass (google.com: domain of srs0=h74t=cf=paulmck-thinkpad-p72.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=H74t=CF=paulmck-ThinkPad-P72.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 134si107161vkx.0.2020.08.27.15.36.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 27 Aug 2020 15:36:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of srs0=h74t=cf=paulmck-thinkpad-p72.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from paulmck-ThinkPad-P72.home (unknown [50.45.173.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id CCB362080C;
	Thu, 27 Aug 2020 22:36:14 +0000 (UTC)
Received: by paulmck-ThinkPad-P72.home (Postfix, from userid 1000)
	id AA31F3522611; Thu, 27 Aug 2020 15:36:14 -0700 (PDT)
Date: Thu, 27 Aug 2020 15:36:14 -0700
From: "Paul E. McKenney" <paulmck@kernel.org>
To: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org
Subject: Re: [rcu:rcu/next 10/11] kernel/rcu/tasks.h:594:20: error: static
 declaration of 'exit_tasks_rcu_start' follows non-static declaration
Message-ID: <20200827223614.GM2855@paulmck-ThinkPad-P72>
Reply-To: paulmck@kernel.org
References: <202008280306.rWMY2XnY%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202008280306.rWMY2XnY%lkp@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: paulmck@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=uEdGTT5m;       spf=pass
 (google.com: domain of srs0=h74t=cf=paulmck-thinkpad-p72.home=paulmck@kernel.org
 designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=H74t=CF=paulmck-ThinkPad-P72.home=paulmck@kernel.org";
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

On Fri, Aug 28, 2020 at 03:45:13AM +0800, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/paulmck/linux-rcu.git rcu/next
> head:   2ec296bd21c79b080bd6b3fb143122f18440d930
> commit: 8c8942d72e9bf1e19b6af0a8df4c7f44d2d384c0 [10/11] rcu-tasks: Prevent complaints of unused show_rcu_tasks_classic_gp_kthread()
> config: x86_64-randconfig-a014-20200827 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 71f3169e1baeff262583b35ef88f8fb6df7be85e)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         git checkout 8c8942d72e9bf1e19b6af0a8df4c7f44d2d384c0
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>):
> 
>    In file included from kernel/rcu/update.c:578:
> >> kernel/rcu/tasks.h:594:20: error: static declaration of 'exit_tasks_rcu_start' follows non-static declaration
>    static inline void exit_tasks_rcu_start(void) { }
>                       ^
>    include/linux/rcupdate.h:181:6: note: previous declaration is here
>    void exit_tasks_rcu_start(void);
>         ^
>    In file included from kernel/rcu/update.c:578:
> >> kernel/rcu/tasks.h:595:20: error: static declaration of 'exit_tasks_rcu_finish' follows non-static declaration
>    static inline void exit_tasks_rcu_finish(void) { exit_tasks_rcu_finish_trace(current); }
>                       ^
>    include/linux/rcupdate.h:182:6: note: previous declaration is here
>    void exit_tasks_rcu_finish(void);
>         ^
>    2 errors generated.

Good catch, alleged fix folded into this commit.

							Thanx, Paul

> # https://git.kernel.org/pub/scm/linux/kernel/git/paulmck/linux-rcu.git/commit/?id=8c8942d72e9bf1e19b6af0a8df4c7f44d2d384c0
> git remote add rcu https://git.kernel.org/pub/scm/linux/kernel/git/paulmck/linux-rcu.git
> git fetch --no-tags rcu rcu/next
> git checkout 8c8942d72e9bf1e19b6af0a8df4c7f44d2d384c0
> vim +/exit_tasks_rcu_start +594 kernel/rcu/tasks.h
> 
>    591	
>    592	#else /* #ifdef CONFIG_TASKS_RCU */
>    593	static inline void show_rcu_tasks_classic_gp_kthread(void) { }
>  > 594	static inline void exit_tasks_rcu_start(void) { }
>  > 595	static inline void exit_tasks_rcu_finish(void) { exit_tasks_rcu_finish_trace(current); }
>    596	#endif /* #else #ifdef CONFIG_TASKS_RCU */
>    597	
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200827223614.GM2855%40paulmck-ThinkPad-P72.
