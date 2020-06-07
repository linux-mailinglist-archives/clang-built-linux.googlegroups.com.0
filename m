Return-Path: <clang-built-linux+bncBAABB27S6T3AKGQEVSLCGHQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x837.google.com (mail-qt1-x837.google.com [IPv6:2607:f8b0:4864:20::837])
	by mail.lfdr.de (Postfix) with ESMTPS id DC2A61F0EDA
	for <lists+clang-built-linux@lfdr.de>; Sun,  7 Jun 2020 21:01:00 +0200 (CEST)
Received: by mail-qt1-x837.google.com with SMTP id x6sf13635755qts.3
        for <lists+clang-built-linux@lfdr.de>; Sun, 07 Jun 2020 12:01:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591556459; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZPRQlzOZ74sVwTcTJNuJDxAFhoG1wWK9JmYXAp4eI6Zxg782zH1QWYKN6bTttLxLU7
         BaCc7qMfxwUl0+2HH4jl78ewW0OWsfvw1WMHyer5/DSysuGg5mKoPbqNJc2aIfqKLRy8
         ocNVDysAJ/ATruRpwIHBm5dMWUfn1HoTn3wDB1uncE+YpkFXj0X5QBK/d+Y3RyXljlyd
         C5qBelubmJ7Zvj41ERNLqOBlONrwORLzamuCFSgKD+n1ve8/CyIXX3SwSEt9VUlg3T9t
         zLV/Y7sG9DjSSN2x6Cn7RhawuupHdX7x9vz/g1x+uA+Cq1FnZ+xQH8ObmX0523Ucxhdn
         WVVw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:reply-to:message-id
         :subject:cc:to:from:date:sender:dkim-signature;
        bh=zSxV8fMCkFw3FWaV6xIT9btOtJgNzfT3zk03GvsvWCQ=;
        b=I2Xm6rHRePzPPK4G3BvnUfK4mWTIG0forCsV8206U4s0UeTC1zTU76yx7vcg3G/VWj
         ciqol9zAGiiWOEcqhyzMvM+eIy4gqWuplT+LZXqVK/+I0lS2MiU3uzWNiX5OfdXm8Nze
         CVqLHczUXQlj0z5QLAv9n1y7odedHfFvFl4ZI8aTRj3zIMFvRBVWlpVBJiU931NP3e5Y
         Zk+PO1VCSyk32kBChEEMbJeSzBIbabQwfb663tXlrBEvK65/ZT2XzDfzFQTDY23eA7nS
         yWzuSqZ39wnHFnI3nDWqYOsw8QyxvMpWZyHJIOIoB0uuSwLQJNst+KjhDg3ILLjvuXRl
         WAow==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=YckBe4jZ;
       spf=pass (google.com: domain of srs0=e5cu=7u=paulmck-thinkpad-p72.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=e5cU=7U=paulmck-ThinkPad-P72.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:reply-to:references
         :mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zSxV8fMCkFw3FWaV6xIT9btOtJgNzfT3zk03GvsvWCQ=;
        b=k2FLwfjk4M4EOKBDQYE2jlxplELkDABffl0sfrLXu7a4gfuwYkrGwAsbAQF8qRjUjU
         ZyXx6mj4CPOi6KOtJN56t+0ODcW4osJ744P23AGwxcFgbUEgTD4OWvQaNsfltDAZQvTw
         3BqGUkmULJiXcDet+NbNQsmpFw7WbTFw/o74KXJcuI2gqq96fsKcgJpjt82x7FUIeHDE
         0JX7vsewncLHUhOcomhj2YNFC2saKnmTsHN46YRVdW/YBII+fLzfz9GU34+UTVbxe9ps
         fToPumwjUonK9GNbf+Svmn48WC9xSVDMMwsfDIyHbMZU60LurYX1+wWPveEb8ALsgimM
         m2Dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :reply-to:references:mime-version:content-disposition:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zSxV8fMCkFw3FWaV6xIT9btOtJgNzfT3zk03GvsvWCQ=;
        b=fnCZcTmMRBEDuAVj9Swh5TvEm5xNXHNFKQkHFlNYNH9aSGLUXa4TDdE2WUCWPi3St8
         IIJO7A2Eqgn9wXn8vCo/sSFninH8MMuOxUM2XJdZIP0YVB6FzgLgN9iByFsEMztE3OCf
         XLkoZ87LrtC9lw8GwAqfzkhO19VVCgtP6LeY7vT+C88Sgpn9+7QcNo785ekdRO76b9Vo
         XROo0FwGM79aP9jU9aAfNbcektmWOOWBVwFbuPr22BmyC70RDU48UCKZ8aXZXwljR8RB
         hKbFXuP6N/epZcuoDd82wYmLiiwydH2JURJhKUzFm6azDjJBCx+EmGOmIstAV9Qdj9je
         xDkg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532cGXj0RmrPZ+cMBMWhQUItiYkBw+dMXAow/7auhsSW4JG9WFPL
	xtdKWOVyO9FccYmEJ953MZ0=
X-Google-Smtp-Source: ABdhPJx7ZlwShf6c4oCR83jGfKzz6gMkVvYU0wy/+xZflqTwnW1k1VLZuxIJBRqKl/MEQMP9BWrtXw==
X-Received: by 2002:a05:6214:405:: with SMTP id z5mr18612881qvx.112.1591556459359;
        Sun, 07 Jun 2020 12:00:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:9e92:: with SMTP id h140ls7026427qke.5.gmail; Sun, 07
 Jun 2020 12:00:59 -0700 (PDT)
X-Received: by 2002:a05:620a:205c:: with SMTP id d28mr20346772qka.436.1591556459064;
        Sun, 07 Jun 2020 12:00:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591556459; cv=none;
        d=google.com; s=arc-20160816;
        b=njGrvqpJ+IIlZ4pZ83zkC2zQNw5ELYEge9ist+9E2zWOEkXncD+J/frQPzoT7OjC2x
         gdGl/h4ivpzCr9Y73o1LzzG50Mt6UjV9NMEGOkXRRLi1aB69M4ARk+qm0/edI+ClM29a
         3uIKT6c8IfEd2NnwKPcSAvST7GAPwDu3I8IAwiPEBxLJYIfnZ9scoGNE0uPUU7dk1I4j
         0omYkR5qFT4BroCgdOXNzKXBjukJBNfIbmHxfrIFkOnOr1kddcYU8DgQCAljLIpnVNQZ
         nGwY7xGeszjXtMB1EDMzNaWkgXillDo6kYcShP0JB/ITlgX3kQ0AudJvSFBaKHSsuBK1
         Lb1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=FjZAJ7UXvzmmDMxcKkUP+12eZPDJCS3rao9+8ZdoKvs=;
        b=PSf73KOQ+Ewa9mAHn+ovthi75bOPdN17dOIGFZZ/ZjYJNDPxc2Tqe53dlNEkUWDOPp
         +JuKnzZGK9qpA/dGHrIxCUOG8YNDiaeq9fKNbCIXMS1wO2PdpLkGpRdHtTTrwUeO1ggn
         V+y2XOJJZEDsubVC4yKDdItrlnF6og470J1+I9l2lpw/zBAO+J2FU6YzmsyDZarXRgA6
         jDfBPBbJyy6FG5z+GEfX4U8VDNhxsYNBBAJHlMS6haduvZob8j/PCig7xzkRbSE4Vg9c
         5KGQl+tG4W0NhBQoh/UOYtitGccCmosqlwafhqv95/dIncO3uSyAGw0c+leyh3zbIQxv
         TGmQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=YckBe4jZ;
       spf=pass (google.com: domain of srs0=e5cu=7u=paulmck-thinkpad-p72.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=e5cU=7U=paulmck-ThinkPad-P72.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id b1si282175qte.1.2020.06.07.12.00.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 07 Jun 2020 12:00:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of srs0=e5cu=7u=paulmck-thinkpad-p72.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from paulmck-ThinkPad-P72.home (50-39-105-78.bvtn.or.frontiernet.net [50.39.105.78])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id DA4C82067B;
	Sun,  7 Jun 2020 19:00:57 +0000 (UTC)
Received: by paulmck-ThinkPad-P72.home (Postfix, from userid 1000)
	id BEE1835228C7; Sun,  7 Jun 2020 12:00:57 -0700 (PDT)
Date: Sun, 7 Jun 2020 12:00:57 -0700
From: "Paul E. McKenney" <paulmck@kernel.org>
To: kernel test robot <lkp@intel.com>
Cc: Ingo Molnar <mingo@kernel.org>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org,
	wangkefeng.wang@huawei.com
Subject: Re: [rcu:dev.2020.06.02a 67/90] kernel/rcu/rcuperf.c:727:38:
 warning: format specifies type 'size_t' (aka 'unsigned int') but the
 argument has type 'unsigned long'
Message-ID: <20200607190057.GA19362@paulmck-ThinkPad-P72>
Reply-To: paulmck@kernel.org
References: <202006060704.dM7SxfSK%lkp@intel.com>
 <20200606001914.GE4455@paulmck-ThinkPad-P72>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200606001914.GE4455@paulmck-ThinkPad-P72>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: paulmck@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=YckBe4jZ;       spf=pass
 (google.com: domain of srs0=e5cu=7u=paulmck-thinkpad-p72.home=paulmck@kernel.org
 designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=e5cU=7U=paulmck-ThinkPad-P72.home=paulmck@kernel.org";
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

On Fri, Jun 05, 2020 at 05:19:14PM -0700, Paul E. McKenney wrote:
> On Sat, Jun 06, 2020 at 07:07:10AM +0800, kernel test robot wrote:
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/paulmck/linux-rcu.git dev.2020.06.02a
> > head:   5216948905dd07a84cef8a7dc72c2ec076802efd
> > commit: 7d16add62717136b1839f0b3d7ea4cbb98f38c2a [67/90] rcuperf: Fix kfree_mult to match printk() format
> > config: arm-randconfig-r004-20200605 (attached as .config)
> > compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 6dd738e2f0609f7d3313b574a1d471263d2d3ba1)
> > reproduce (this is a W=1 build):
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # install arm cross compiling tool for clang build
> >         # apt-get install binutils-arm-linux-gnueabi
> >         git checkout 7d16add62717136b1839f0b3d7ea4cbb98f38c2a
> >         # save the attached .config to linux build tree
> >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm 
> > 
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kernel test robot <lkp@intel.com>
> 
> Adding Kefeng on CC.  Kefeng, thoughts?

Like this, perhaps?

							Thanx, Paul

diff --git a/kernel/rcu/rcuperf.c b/kernel/rcu/rcuperf.c
index 962869d..dc7483a 100644
--- a/kernel/rcu/rcuperf.c
+++ b/kernel/rcu/rcuperf.c
@@ -724,7 +724,7 @@ kfree_perf_init(void)
 		schedule_timeout_uninterruptible(1);
 	}
 
-	pr_alert("kfree object size=%zu\n", kfree_mult * sizeof(struct kfree_obj));
+	pr_alert("kfree object size=%zu\n", (size_t)kfree_mult * sizeof(struct kfree_obj));
 
 	kfree_reader_tasks = kcalloc(kfree_nrealthreads, sizeof(kfree_reader_tasks[0]),
 			       GFP_KERNEL);

> > All warnings (new ones prefixed by >>, old ones prefixed by <<):
> > 
> > >> kernel/rcu/rcuperf.c:727:38: warning: format specifies type 'size_t' (aka 'unsigned int') but the argument has type 'unsigned long' [-Wformat]
> > pr_alert("kfree object size=%zun", kfree_mult * sizeof(struct kfree_obj));
> > ~~~     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> > %lu
> > include/linux/printk.h:295:35: note: expanded from macro 'pr_alert'
> > printk(KERN_ALERT pr_fmt(fmt), ##__VA_ARGS__)
> > ~~~     ^~~~~~~~~~~
> > 1 warning generated.
> > 
> > vim +727 kernel/rcu/rcuperf.c
> > 
> > e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  709) 
> > e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  710) static int __init
> > e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  711) kfree_perf_init(void)
> > e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  712) {
> > e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  713) 	long i;
> > e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  714) 	int firsterr = 0;
> > e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  715) 
> > e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  716) 	kfree_nrealthreads = compute_real(kfree_nthreads);
> > e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  717) 	/* Start up the kthreads. */
> > e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  718) 	if (shutdown) {
> > e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  719) 		init_waitqueue_head(&shutdown_wq);
> > e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  720) 		firsterr = torture_create_kthread(kfree_perf_shutdown, NULL,
> > e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  721) 						  shutdown_task);
> > e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  722) 		if (firsterr)
> > e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  723) 			goto unwind;
> > e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  724) 		schedule_timeout_uninterruptible(1);
> > e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  725) 	}
> > e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  726) 
> > b3e2d20973db3e Kefeng Wang             2020-04-17 @727  	pr_alert("kfree object size=%zu\n", kfree_mult * sizeof(struct kfree_obj));
> > f87dc808009ac8 Joel Fernandes (Google  2020-03-16  728) 
> > e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  729) 	kfree_reader_tasks = kcalloc(kfree_nrealthreads, sizeof(kfree_reader_tasks[0]),
> > e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  730) 			       GFP_KERNEL);
> > e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  731) 	if (kfree_reader_tasks == NULL) {
> > e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  732) 		firsterr = -ENOMEM;
> > e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  733) 		goto unwind;
> > e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  734) 	}
> > e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  735) 
> > e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  736) 	for (i = 0; i < kfree_nrealthreads; i++) {
> > e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  737) 		firsterr = torture_create_kthread(kfree_perf_thread, (void *)i,
> > e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  738) 						  kfree_reader_tasks[i]);
> > e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  739) 		if (firsterr)
> > e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  740) 			goto unwind;
> > e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  741) 	}
> > e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  742) 
> > e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  743) 	while (atomic_read(&n_kfree_perf_thread_started) < kfree_nrealthreads)
> > e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  744) 		schedule_timeout_uninterruptible(1);
> > e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  745) 
> > e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  746) 	torture_init_end();
> > e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  747) 	return 0;
> > e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  748) 
> > e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  749) unwind:
> > e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  750) 	torture_init_end();
> > e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  751) 	kfree_perf_cleanup();
> > e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  752) 	return firsterr;
> > e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  753) }
> > e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  754) 
> > 
> > :::::: The code at line 727 was first introduced by commit
> > :::::: b3e2d20973db3ec87a6dd2fee0c88d3c2e7c2f61 rcuperf: Fix printk format warning
> > 
> > :::::: TO: Kefeng Wang <wangkefeng.wang@huawei.com>
> > :::::: CC: Paul E. McKenney <paulmck@kernel.org>
> > 
> > ---
> > 0-DAY CI Kernel Test Service, Intel Corporation
> > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> 
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200607190057.GA19362%40paulmck-ThinkPad-P72.
