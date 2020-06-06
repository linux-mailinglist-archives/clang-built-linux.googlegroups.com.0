Return-Path: <clang-built-linux+bncBAABBBGC5P3AKGQEMYO2OEI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x940.google.com (mail-ua1-x940.google.com [IPv6:2607:f8b0:4864:20::940])
	by mail.lfdr.de (Postfix) with ESMTPS id B1FDD1F03C3
	for <lists+clang-built-linux@lfdr.de>; Sat,  6 Jun 2020 02:19:17 +0200 (CEST)
Received: by mail-ua1-x940.google.com with SMTP id o9sf1930579uar.22
        for <lists+clang-built-linux@lfdr.de>; Fri, 05 Jun 2020 17:19:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591402756; cv=pass;
        d=google.com; s=arc-20160816;
        b=Qb0VhWJkWvlZv6nWRSD3JuMmyBn9R2KL7VV+nG+vIg9wYEuRTFdk3d7g+7f0aM7bro
         tej+o9dbOGD7/AHd3AOIgrtTawMWlHQY+OFOTF02sSNdVtoYgTqYVPMZeCtAEr4xREjq
         XaHOieW9ZtpbHhoyzTImt9FWW4OSxvZ/eVYKuygSVgfJaSGSgZvESxTwraly4VpIvG0v
         7y2Lns0KTXP2btiI6y3k4iFsECLUfkKRMRGhHpF6M172+bmUdEdC26GniDfcWCHMynbM
         wNhEdDxscsCylzne5McFIEwPfIZqXYNbOXEFh3EAEuLWLERwp2sGujO9fBG9Wf6Z37kk
         h0qQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:reply-to:message-id
         :subject:cc:to:from:date:sender:dkim-signature;
        bh=UyUT9Q8OYYCPW+LCsUZyyiqNBvQbFzGmOkfA+aIghIM=;
        b=jJXnvL9QhVZLGaWyTX8zLcaxoHVtGRfyN5k96Nkt0gmyc+c3xBUeGZoJFkhZroU4Qc
         FixRG5oYhXx95yxxxcTDMqaRivIDW9s+ICI69iHK+JxvSUgZ3RcPE+xtwAkQh71glZ2Y
         Gnvjpu2O5yMe1PBPvTR6UEkkojopeu7zrM9jXeuj8WjUaf0sCkRiW1onPO5bU9vtXSSu
         yrVBUrZReaxedP23KIcjB7d4R/wwdYrVX0yhZAG2NwzWa/rjA8Zew509axGsTKISxycr
         6+QG494AfpVIyrQuJXMuPeUEZ6WmqMBhLH6v/cIhwaywlDUAi5gQqjmlOSndn4HOchof
         df6Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=HMzoJcM6;
       spf=pass (google.com: domain of srs0=fpks=7t=paulmck-thinkpad-p72.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=fpks=7T=paulmck-ThinkPad-P72.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:reply-to:references
         :mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UyUT9Q8OYYCPW+LCsUZyyiqNBvQbFzGmOkfA+aIghIM=;
        b=Dfs7wZSuP7h9BJLE6waxH4KSMWq4ggf+QgqZTJ3FBetM/B7GP+67W0nsc+MzLbMOZV
         xByDHfL/dVZ5OE5W9gkf9KDIvVQggWN+qVKEEPMYErAsE5HfPsfRn8fcWdCGlRUYgb0s
         FBgjmlxiZZrAZHEMIHvRVpZPzPO5Jzt5NnQsVE9+YUp3MfcwehkgGdEp2uDEl80VADc0
         1uEa9kTh8j7GDHSj1I8ngbhhn2wvTGh3yas/7S2l/j+sYL130QDHrcNKiP4ko6OStor5
         xDLwzrohZB4QRt8IlD27if2PVTWGynU6OyDvln8ZkD5K+4lqMmEY8/1Q879mSMdPHLav
         coUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :reply-to:references:mime-version:content-disposition:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=UyUT9Q8OYYCPW+LCsUZyyiqNBvQbFzGmOkfA+aIghIM=;
        b=qW7lWsha9T7CaS9fFZgVxx1jQSo6ScZnu+wQlQcYlhmbVk5GQ6m5WD6qsvvwSQdiIu
         OqjF+VtWbgfGaSlnwCPVEjKy26yFFYLxFpNh0uRBugzvNWKHsQl7ThWSjq7HAKIgKBfc
         w8HKqZiawq0EXx5pgbCSX6R0LtUcMY/rmvjJ4q0PWMBR4fAAECq5OX6BEzDXJWwIJ+XE
         fDilNIBrzg57wpBxPcH7bxe76dSmw5GX0yAeH/9WMvgfoY/8/zf3uVbTYX7HY27DEdvI
         TOKJtppeohTnrqJtsEittimxlkm43gfJ0bvYpTtKvloBzCwfcSr0MHaPMevy9f+4bM8D
         3pVg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532yZEKVueQPfllKbdwoVMyrEWvHEhwCsvqhZujnDTbqAyKDnyd6
	YwRfQD06yUkFXlQoR6plsyg=
X-Google-Smtp-Source: ABdhPJxchoqHxZRmyhH/zvaFED/+sp9H7g0RX7AyfQl9h60dv8ZpJINKTautSCRR0zgZlKHQ9vPGDg==
X-Received: by 2002:a67:dc89:: with SMTP id g9mr9088073vsk.206.1591402756750;
        Fri, 05 Jun 2020 17:19:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9f:3749:: with SMTP id a9ls866954uae.11.gmail; Fri, 05 Jun
 2020 17:19:16 -0700 (PDT)
X-Received: by 2002:ab0:77c5:: with SMTP id y5mr9073067uar.26.1591402756395;
        Fri, 05 Jun 2020 17:19:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591402756; cv=none;
        d=google.com; s=arc-20160816;
        b=OHCu9++CEAp1WpToU1pAhYeGdXAnWug6f/G7Zb5Kb/LJRBheJwzYUqBSQAseQbrxLh
         jlK4uhVt1TPlkPGXfovEPOryA83h2ALxSGLNVo2r3qHS/TWMh6Bah4JtdBmN0yX0FNmQ
         VF+x7gO0oUAocgTGHEaa+yrRNWbTuzmX07R7eOXtRNCa7MGGWIW7Zh+HviiewPEoeNEv
         DfS4WjSXgk8mbp1I3eAQMQYlhJiYzarJJUvrg9iOiwAJmYpZzWwBcI6fmCZVexsMc946
         dytMmAhdZoydWl6C8d4ftTp+Vmt4dsp+ZIznIBuDAFDnPMxMQXZusqhV+FJMkEnBUbMs
         PeYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=O6hBl4wuBsCaboWe5003PzZghHUka8nQ5uwRX5/x60M=;
        b=l1+0kSyXh7JoFJt5rhbQZ6WzoYf2aBcQk7IPe1HcAc560NLTBb026IXSrjo2F7cfDo
         uOeSRhDOjfnUZ4yA3rBXYbGzXIMgP/w/2NSTNWgBRQ8/O8zpRqP8lW3N9meW02r0EvVF
         ep1WBuTz9Z9FLkDN+WVHOd6gADRlQsNMJ8hytTKSA1Dz/gRovW1y5Z6qcxaZ/fR018pB
         dfdHy94Ri7GhGxEWr2QxStjEhxgURqJ9633TbMVaCZGhGDrbXDkwiAOuKhwfXjBU4FDu
         AnB9/r9RdW0X+R2YbPmWzg4X77vKi1fYGWiE6m6CiV8f5ynGtGturWDwXw5EZiXnSOV1
         OvYQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=HMzoJcM6;
       spf=pass (google.com: domain of srs0=fpks=7t=paulmck-thinkpad-p72.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=fpks=7T=paulmck-ThinkPad-P72.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id t139si546404vkd.3.2020.06.05.17.19.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 05 Jun 2020 17:19:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of srs0=fpks=7t=paulmck-thinkpad-p72.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from paulmck-ThinkPad-P72.home (50-39-105-78.bvtn.or.frontiernet.net [50.39.105.78])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 33425206DB;
	Sat,  6 Jun 2020 00:19:15 +0000 (UTC)
Received: by paulmck-ThinkPad-P72.home (Postfix, from userid 1000)
	id ECEAF3522B47; Fri,  5 Jun 2020 17:19:14 -0700 (PDT)
Date: Fri, 5 Jun 2020 17:19:14 -0700
From: "Paul E. McKenney" <paulmck@kernel.org>
To: kernel test robot <lkp@intel.com>
Cc: Ingo Molnar <mingo@kernel.org>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org,
	wangkefeng.wang@huawei.com
Subject: Re: [rcu:dev.2020.06.02a 67/90] kernel/rcu/rcuperf.c:727:38:
 warning: format specifies type 'size_t' (aka 'unsigned int') but the
 argument has type 'unsigned long'
Message-ID: <20200606001914.GE4455@paulmck-ThinkPad-P72>
Reply-To: paulmck@kernel.org
References: <202006060704.dM7SxfSK%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202006060704.dM7SxfSK%lkp@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: paulmck@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=HMzoJcM6;       spf=pass
 (google.com: domain of srs0=fpks=7t=paulmck-thinkpad-p72.home=paulmck@kernel.org
 designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=fpks=7T=paulmck-ThinkPad-P72.home=paulmck@kernel.org";
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

On Sat, Jun 06, 2020 at 07:07:10AM +0800, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/paulmck/linux-rcu.git dev.2020.06.02a
> head:   5216948905dd07a84cef8a7dc72c2ec076802efd
> commit: 7d16add62717136b1839f0b3d7ea4cbb98f38c2a [67/90] rcuperf: Fix kfree_mult to match printk() format
> config: arm-randconfig-r004-20200605 (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 6dd738e2f0609f7d3313b574a1d471263d2d3ba1)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install arm cross compiling tool for clang build
>         # apt-get install binutils-arm-linux-gnueabi
>         git checkout 7d16add62717136b1839f0b3d7ea4cbb98f38c2a
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>

Adding Kefeng on CC.  Kefeng, thoughts?

							Thanx, Paul

> All warnings (new ones prefixed by >>, old ones prefixed by <<):
> 
> >> kernel/rcu/rcuperf.c:727:38: warning: format specifies type 'size_t' (aka 'unsigned int') but the argument has type 'unsigned long' [-Wformat]
> pr_alert("kfree object size=%zun", kfree_mult * sizeof(struct kfree_obj));
> ~~~     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> %lu
> include/linux/printk.h:295:35: note: expanded from macro 'pr_alert'
> printk(KERN_ALERT pr_fmt(fmt), ##__VA_ARGS__)
> ~~~     ^~~~~~~~~~~
> 1 warning generated.
> 
> vim +727 kernel/rcu/rcuperf.c
> 
> e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  709) 
> e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  710) static int __init
> e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  711) kfree_perf_init(void)
> e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  712) {
> e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  713) 	long i;
> e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  714) 	int firsterr = 0;
> e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  715) 
> e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  716) 	kfree_nrealthreads = compute_real(kfree_nthreads);
> e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  717) 	/* Start up the kthreads. */
> e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  718) 	if (shutdown) {
> e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  719) 		init_waitqueue_head(&shutdown_wq);
> e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  720) 		firsterr = torture_create_kthread(kfree_perf_shutdown, NULL,
> e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  721) 						  shutdown_task);
> e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  722) 		if (firsterr)
> e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  723) 			goto unwind;
> e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  724) 		schedule_timeout_uninterruptible(1);
> e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  725) 	}
> e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  726) 
> b3e2d20973db3e Kefeng Wang             2020-04-17 @727  	pr_alert("kfree object size=%zu\n", kfree_mult * sizeof(struct kfree_obj));
> f87dc808009ac8 Joel Fernandes (Google  2020-03-16  728) 
> e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  729) 	kfree_reader_tasks = kcalloc(kfree_nrealthreads, sizeof(kfree_reader_tasks[0]),
> e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  730) 			       GFP_KERNEL);
> e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  731) 	if (kfree_reader_tasks == NULL) {
> e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  732) 		firsterr = -ENOMEM;
> e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  733) 		goto unwind;
> e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  734) 	}
> e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  735) 
> e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  736) 	for (i = 0; i < kfree_nrealthreads; i++) {
> e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  737) 		firsterr = torture_create_kthread(kfree_perf_thread, (void *)i,
> e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  738) 						  kfree_reader_tasks[i]);
> e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  739) 		if (firsterr)
> e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  740) 			goto unwind;
> e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  741) 	}
> e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  742) 
> e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  743) 	while (atomic_read(&n_kfree_perf_thread_started) < kfree_nrealthreads)
> e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  744) 		schedule_timeout_uninterruptible(1);
> e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  745) 
> e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  746) 	torture_init_end();
> e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  747) 	return 0;
> e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  748) 
> e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  749) unwind:
> e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  750) 	torture_init_end();
> e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  751) 	kfree_perf_cleanup();
> e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  752) 	return firsterr;
> e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  753) }
> e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  754) 
> 
> :::::: The code at line 727 was first introduced by commit
> :::::: b3e2d20973db3ec87a6dd2fee0c88d3c2e7c2f61 rcuperf: Fix printk format warning
> 
> :::::: TO: Kefeng Wang <wangkefeng.wang@huawei.com>
> :::::: CC: Paul E. McKenney <paulmck@kernel.org>
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200606001914.GE4455%40paulmck-ThinkPad-P72.
