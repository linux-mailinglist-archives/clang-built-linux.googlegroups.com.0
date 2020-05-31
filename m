Return-Path: <clang-built-linux+bncBAABBUFHZ73AKGQELXGMNXA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C14F1E98B0
	for <lists+clang-built-linux@lfdr.de>; Sun, 31 May 2020 17:57:05 +0200 (CEST)
Received: by mail-pf1-x43c.google.com with SMTP id w5sf3675323pfb.17
        for <lists+clang-built-linux@lfdr.de>; Sun, 31 May 2020 08:57:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590940624; cv=pass;
        d=google.com; s=arc-20160816;
        b=gLVyTfwovyn2wFhFchyewqdqsMTO/klW5y3LoF4J2zaGCxRgW5KyBiQZIGLbBLDeXC
         uPwnbffbIExk6dlitMKcRhXvP90ulA+4kuY4AhdR2/9PqlVYhqHPJDL3NMWRrozIdlHB
         PzwDE7axrA438+4bwgwv1V4aNey26QWAWbe2aGZG1bF2V2ic0HNoz1iWoPDbyGsYiwGx
         HoiV3jCHDP3kypSznTK8shqvaEI5Xr70Zzoxl6h+G/Q241DDo6beGMAnpbg14a8UlLkw
         W29zFt9CbVoby686D3O9aM0uHUnYhmcoCVJqL+xZtxap8599mCakAiL55e/Df6yEzvTZ
         ogIA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:reply-to:message-id
         :subject:cc:to:from:date:sender:dkim-signature;
        bh=0OesNGlNiZnLGuePgDRCA4iO5Ww1mNjlsJXHyQrcsWU=;
        b=jDK0CdgLI069V5S2P4pGfOulnn0RhPTYRFJzLguWWeM7osxSAYWUOFVZb/DzyCs3kg
         OSIbz7pteDDX0r/74uD6RcakPuIFwGSZ1bvCqNg4Wb1sqSlM4r+lm3qrv+W20C1HA1O0
         DQQ4oQyymf4LZ+UigeDgP+UoB7eTOjrnZmLiuzlBhlPpYFw2PgAZtOIk7c0vdtFoy9cH
         BQthW+QL3h3JooyRL5ax5pOjZgl154lqNgT3GLzigrNctj65YFpovGktj94FXLEtxqCN
         FZyVUnY4onUq8PLkC1QQtSCobJZzuGu2fTP61gz1JlszEpuYwUrejkf21l12DPsxJxI7
         GtjQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=F1rvmXeU;
       spf=pass (google.com: domain of srs0=wnl4=7n=paulmck-thinkpad-p72.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=WNl4=7N=paulmck-ThinkPad-P72.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:reply-to:references
         :mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0OesNGlNiZnLGuePgDRCA4iO5Ww1mNjlsJXHyQrcsWU=;
        b=kBTIxNaVcS1dd67/ITszK9r1vPbhZu6QJXxwORb+6O/xnY8vEzxhNsEUKLqWLu6nf6
         viCqrPUuS2h1S7zhiivULrcE/BFxvTEGohAOh65YIPcW4l9ICmlqzKmP4OKLf/bi4GyM
         ylcIWlTUcja49un0EpUpVseWbiPOHngMG88MxuSnBVMFvw3BwpVE5ldmAQGSc16s6VNx
         REyqjIoZ588xf96dzwhdzWMlZ+0na8NOJmctI/duBT/HL9B3PAsT2mz6/1liNmOaobkt
         WDtNWITB9VupPG8nWoGvfLGA1U/LEBU5FPD8h9sJ14d4WOdEYDjKqUsgm4Nvu16K7vA3
         ts6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :reply-to:references:mime-version:content-disposition:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0OesNGlNiZnLGuePgDRCA4iO5Ww1mNjlsJXHyQrcsWU=;
        b=blI6OQ2VcgBI+hV9Bs4BZaYs1DV6SlH9Q5ZLF1U7Burlhj8MdBkQJFeMqhkzWHtcfy
         TBVySTucwKUZuofnihIb3aB474fkU0ULK0jeLtdlK5+A5vmQ6MMaps+FDEhaYON853VH
         yJsmldxUWLaIIlQ8YbvlXT1wBCmD1x6x2+9GpG/nJdvFamljSJrwiL2YTj4pZDPyYe7T
         0FgQ5CniGr89/aDZkksR5tiIWXonAopPio2mp6TsyVH6tcrQF0wU0pUMGjhIbq7bvvz9
         8hZSp4jjzgUL991TN5wS8Wg/S20W+PuDhC2tZ4tNtg9NP24zc0lEs10zuCPSQIklrDiN
         YBBg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531S15E+X/KqCGdLAMLBgukZPTVOD+i1hXdZStWyOWe9gF72XgKX
	idFRtsw1Cr9SD/RZTGf+CsI=
X-Google-Smtp-Source: ABdhPJxDP79PrFCuWYFjGrSkYU3LEIAYgU0EyUmluCqxb4+DWePj2ciIzRsoxbLfMp8UY1Sl0oL1Tw==
X-Received: by 2002:a17:90b:4d06:: with SMTP id mw6mr20205544pjb.190.1590940624318;
        Sun, 31 May 2020 08:57:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7b82:: with SMTP id w2ls4732193pll.1.gmail; Sun, 31
 May 2020 08:57:04 -0700 (PDT)
X-Received: by 2002:a17:90a:3606:: with SMTP id s6mr6990454pjb.118.1590940624053;
        Sun, 31 May 2020 08:57:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590940624; cv=none;
        d=google.com; s=arc-20160816;
        b=MgVM2fa5GxuzgCHjEWLfDZqjiB7YF3j6B8TtdXENM7vq5EwqmXbZMc0K80SUr4INNP
         P5RbA9fIOsMU74N5N8mdXzIi0hKu3eNdEAYOKJy+E+gc/z8LSyQF5KMeVsbQmSG4T3eL
         C/LJVCk1+vZ0w14PynmQxv1ZWIMKqmXfYcgJZ/TYw7HrrKjf6HZ8ScOZvy31yntMtyNZ
         eXymRwCM/wI23zWF6Z/1iDzxgMdvEpEbR2qRhxS7KVPkXWYvATK7KKKAMTvIYFh3bZ5/
         ztgaoNEuu8DXqCPwC+wJhEJVEiD/bMFzhKTDRtTU3E/kyibb8qvUq7R+fkS7bkK5Ix/2
         S6sA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=eCBtqLHtKnIMy5+I/1cYZkPLzyQqfbASy9kA5bOmoQk=;
        b=PM5MgLvpQDVJ9niA+ljy7FqbX39QlVtia/IBHaPGvH4AHh0QYcmM2WJ2w+K+b4ueIl
         Usl9wD3YF6vgsQCVNEtnG2CaXSdo1bfFWA3GGqZ5orUdhkliDw6iRu1S4BFThE1Zjf+t
         RDwOzs+I4uHSCKbDm+1rR8ROfgdfqzp0tSqR6lu1pRetCWBoF+A5TNPxfjUQs2fgm0Mr
         xig8WUwvxw7E/FXy95YFmLGPOyksIPyNUC69htUrxg9v4KeCw0Y5TZsv36IYdwY8EZLR
         0NtjuG6w4/5vaWbzU2gFGnA9tCIsUX1aUTHd14Bnqd4oLTpHOJ6P2VebEtcY5Po3cFlx
         PMqw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=F1rvmXeU;
       spf=pass (google.com: domain of srs0=wnl4=7n=paulmck-thinkpad-p72.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=WNl4=7N=paulmck-ThinkPad-P72.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x14si98331pjt.2.2020.05.31.08.57.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 31 May 2020 08:57:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of srs0=wnl4=7n=paulmck-thinkpad-p72.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from paulmck-ThinkPad-P72.home (50-39-105-78.bvtn.or.frontiernet.net [50.39.105.78])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id B290F2074A;
	Sun, 31 May 2020 15:57:03 +0000 (UTC)
Received: by paulmck-ThinkPad-P72.home (Postfix, from userid 1000)
	id 5D93F35227BA; Sun, 31 May 2020 08:57:03 -0700 (PDT)
Date: Sun, 31 May 2020 08:57:03 -0700
From: "Paul E. McKenney" <paulmck@kernel.org>
To: kbuild test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: Re: [linux-next:master 4053/14131] kernel//rcu/tasks.h:257:6:
 warning: no previous prototype for function 'rcu_tasks_postscan'
Message-ID: <20200531155703.GK2869@paulmck-ThinkPad-P72>
Reply-To: paulmck@kernel.org
References: <202005312323.3njarq3E%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202005312323.3njarq3E%lkp@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: paulmck@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=F1rvmXeU;       spf=pass
 (google.com: domain of srs0=wnl4=7n=paulmck-thinkpad-p72.home=paulmck@kernel.org
 designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=WNl4=7N=paulmck-ThinkPad-P72.home=paulmck@kernel.org";
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

On Sun, May 31, 2020 at 11:00:26PM +0800, kbuild test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> head:   e7b08814b16b80a0bf76eeca16317f8c2ed23b8c
> commit: e4fe5dd6f26f74233e217d9dd351adc3e5165bb9 [4053/14131] rcu-tasks: Further refactor RCU-tasks to allow adding more variants
> config: x86_64-randconfig-a015-20200529 (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 2d068e534f1671459e1b135852c1b3c10502e929)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         git checkout e4fe5dd6f26f74233e217d9dd351adc3e5165bb9
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>, old ones prefixed by <<):

Fixed by b47663597c1b ("rcu-tasks: Make rcu_tasks_postscan() be static"),
now in -rcu on branch "dev".

							Thanx, Paul

> In file included from kernel//rcu/update.c:588:
> >> kernel//rcu/tasks.h:257:6: warning: no previous prototype for function 'rcu_tasks_postscan' [-Wmissing-prototypes]
> void rcu_tasks_postscan(void)
> ^
> kernel//rcu/tasks.h:257:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
> void rcu_tasks_postscan(void)
> ^
> static
> 1 warning generated.
> 
> vim +/rcu_tasks_postscan +257 kernel//rcu/tasks.h
> 
>    255	
>    256	/* Processing between scanning taskslist and draining the holdout list. */
>  > 257	void rcu_tasks_postscan(void)
>    258	{
>    259		/*
>    260		 * Wait for tasks that are in the process of exiting.  This
>    261		 * does only part of the job, ensuring that all tasks that were
>    262		 * previously exiting reach the point where they have disabled
>    263		 * preemption, allowing the later synchronize_rcu() to finish
>    264		 * the job.
>    265		 */
>    266		synchronize_srcu(&tasks_rcu_exit_srcu);
>    267	}
>    268	
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200531155703.GK2869%40paulmck-ThinkPad-P72.
