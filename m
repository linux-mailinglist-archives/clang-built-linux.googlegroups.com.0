Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBIP75ODAMGQELSOOL2A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd39.google.com (mail-io1-xd39.google.com [IPv6:2607:f8b0:4864:20::d39])
	by mail.lfdr.de (Postfix) with ESMTPS id F24BE3B7122
	for <lists+clang-built-linux@lfdr.de>; Tue, 29 Jun 2021 13:10:26 +0200 (CEST)
Received: by mail-io1-xd39.google.com with SMTP id d24-20020a5d95180000b02904f1970a0af0sf9719109iom.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 29 Jun 2021 04:10:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624965025; cv=pass;
        d=google.com; s=arc-20160816;
        b=YzL5UUfjN/Se0e+W3QqRoXaCo6ejrK2T221Tf0VxgNAZJxQ/hoxpYFI2Xrx0Dsj6JY
         JBepuoCWiXz0IjphKcJ3U2WV3YNk+rnxJ9yedPZKlB306QX7ekjRLsHZUaFN/u0RwHKl
         MPfEqftGZux5ysVpPg+OJ6Vt1+uK5tmFaPuGCTgCHxyot0TXfGLjM8kgFMJDvaG3CAFI
         7icisYAJk2yvOSCQBPCZSb1gVCejWs5AfAKwh8lCJBlgzy+pOqR8jgIAqlrvDPWQ8QF2
         RUymG94XeMHnz9o+iR/eThwOmfPTc1NCTClG7qr5/gdP0jo6AXx+9eG6yrZRBnRZWZ9Q
         bq2g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=nV1FRFpDwUQZjncWaf96GCPlrj+6X4SeY1ivDd5BYj8=;
        b=gYJ541XaWOkPeAiJh/rGypXPFpEMk1Scl8O36xDAbPIyvFBWH62Irbhqd7VbhW2yNl
         rkq5oy1ZmfH6xjHSZ9XRGEjbyusbZBdcicBmuKztjeMkpu1TN4WVNWwUf4P+Xk28chyR
         2uxwkkFzvfwH8YEbVEl/kK1nSEaCkHEP+i+7Kxdv+GK4jbVnQXA+ASGLPcP8kvWfQ3A5
         aOYZoch+ErZ2wJpOb58o5PE6LEiuQbr4P+KP/PSg+/oiuqaOpFjkxyuw3F4LeYqX5og0
         wy+D8TCVRzTBqazz/5ixMjMcMQK3PGgnCgR5Jk3kSdv0nHk211186s51Ztbf9B4uoYf5
         r6HA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nV1FRFpDwUQZjncWaf96GCPlrj+6X4SeY1ivDd5BYj8=;
        b=Fu59ViiNi/loKsldDe9uq6q3d+iOen4uVnAHqk7QpM/dtCvTMGGSuEUU8k5rdU+9Fm
         oVjU7JWmQiJWM4dSQ74ONWALfd4IXovsnLjdm3aQ7hNuds2wu0aMXC4K1R9SFY6+LZIU
         EX05dbIPGulsMMxF1MfUoKw7iL8EWx5zXlDWv8brEcBOR6u1n/QkeyjnkWPkarrSKFt9
         7719gwxgFRKXG6D56Lo0PZ+pk5Vv5MZ5uq2VNQG9bMFtZ1u3Ij1aa1m9PsfNYA8c8hhL
         vp7mqNgEshwj1KGJSuZThovTM7zS1Czd6+0J3dih4xYw11ONoCDMAGQA82aBhdSlLRp7
         A7rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nV1FRFpDwUQZjncWaf96GCPlrj+6X4SeY1ivDd5BYj8=;
        b=E9OxS5L1zGqaHjrEcpWdE9RmCnhYWf+obbIo8G4MfRo9qxLT7sTdL7jbz+VCyimFwo
         tEQXK4mOAJAMdkdtjb5EyK6FWI5c4aHt0swvLkrcTdDYhQI8hgKnUNWRWdrz4lNwhglC
         dzCrn9T1PlZovobiluK7HZgXEJ0VTZl94C6lAYtcxPmUg+2paNKvW60lk3HObhBTvfEy
         vkakaMTYHHPWhFgEH0MlYmd64iICIwt49YHW+7jVg/+0lFZtIhjx8hAZM3Yf3jtZQOJ6
         pAHiFIN/3obFzrzzkfoVyaT3dG73iLWAqf/5exsMt7j3Kg47lJT2v2vMQHDaZ/1dGRn3
         IWTQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531jkotIpxWWD5A148ZmO2acnxwlWm8NSRRNNqCxpgJLHtyi8CEM
	EjOG+arkY/FBJTfAoFzGOgM=
X-Google-Smtp-Source: ABdhPJzDOebeXVoezaDNzuG+TQpKz7tHonKnX85btVc9U0J9EaPfZIUeapwNRY/BUtQdeJGvBJkV6g==
X-Received: by 2002:a92:c243:: with SMTP id k3mr10530452ilo.134.1624965025391;
        Tue, 29 Jun 2021 04:10:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:b511:: with SMTP id e17ls825136iof.1.gmail; Tue, 29 Jun
 2021 04:10:25 -0700 (PDT)
X-Received: by 2002:a05:6602:249a:: with SMTP id g26mr3501452ioe.150.1624965024841;
        Tue, 29 Jun 2021 04:10:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624965024; cv=none;
        d=google.com; s=arc-20160816;
        b=V/Obl/EBdFUlXWCPLlQv+FsLdRXOcUfR3cKUyzq5cB01RiYs1uQAgUMrSbqiRbgID/
         KaNHq14NgUvmXmS1+hdwCMFqvFZpdz38G8MVjvJOYJt6fBpqGYZBX3fS074d6j4SiGaR
         T5baTdoWQYqgtWQFyO7FuWHAcxAoDcKqTvgJD5/vH5IauNK/XD2sAGzR3AuHh8e3Nm3V
         MgED6CzRxQryV0ZyIMPghzqef0gEem8mZClMH/d0DgJtkQGdmoIZtQlyPro6EkNm0Tyw
         0IZMcfQM17wEzTARR73ywKTpZQv3V7CU3QoACXrKbWSXC8QTXVB/3efyVkIHRhbMeSsQ
         IxIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=6XGh4bTc8/llYPF1zvm79dO0QzGaPmuYelv0jLWNroM=;
        b=bQTHqntlruZTAQ5f794TQ1IMfPU1l7FmUPkCv9MKemZ6RyEEHbHIII5/QRNnlZRI21
         rMTwIF+RtzixGQni+PaAH/Ma4CtUd9xbyyHoDUbBMu8apkINfAL1MmueyuIv20ywvQtI
         6W83/azaB3yKO0hzepXAHGYc91gbYg1QFizoCLoBYpTP/y/tyH3X9+GYakNiVIZGaOl4
         dqytX8ozx1FChl3oT9fRIlPf1eqtRB7QkrY4TXMnJ/M4mnrN0VZhru4hk1Z4z0V/CN5V
         4otlozQKaUYPAjP/3YNT2AGTlyIF87kVkCu1mDE6mrg/JCbtNJNCGp7hT9ta2Nhp6NMg
         Hv7Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga11.intel.com (mga11.intel.com. [192.55.52.93])
        by gmr-mx.google.com with ESMTPS id j13si596996ila.0.2021.06.29.04.10.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 29 Jun 2021 04:10:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) client-ip=192.55.52.93;
X-IronPort-AV: E=McAfee;i="6200,9189,10029"; a="205118747"
X-IronPort-AV: E=Sophos;i="5.83,308,1616482800"; 
   d="gz'50?scan'50,208,50";a="205118747"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 Jun 2021 04:10:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,308,1616482800"; 
   d="gz'50?scan'50,208,50";a="408129711"
Received: from lkp-server01.sh.intel.com (HELO 4aae0cb4f5b5) ([10.239.97.150])
  by orsmga006.jf.intel.com with ESMTP; 29 Jun 2021 04:10:20 -0700
Received: from kbuild by 4aae0cb4f5b5 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lyBdE-00095e-4c; Tue, 29 Jun 2021 11:10:20 +0000
Date: Tue, 29 Jun 2021 19:10:01 +0800
From: kernel test robot <lkp@intel.com>
To: Daniel Bristot de Oliveira <bristot@redhat.com>
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	Linux Memory Management List <linux-mm@kvack.org>,
	"Steven Rostedt (VMware)" <rostedt@goodmis.org>
Subject: [linux-next:master 12896/14055] kernel/trace/trace_osnoise.c:438:6:
 warning: no previous prototype for function 'osnoise_trace_irq_entry'
Message-ID: <202106291957.ayo0oPv1-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="YZ5djTAD1cGYuMQK"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted
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


--YZ5djTAD1cGYuMQK
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Daniel,

FYI, the error/warning still remains.

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
head:   73748627df83aab934c81332ca83a44ab8c7b3e3
commit: bce29ac9ce0bb0b0b146b687ab978378c21e9078 [12896/14055] trace: Add osnoise tracer
config: arm64-randconfig-r023-20210629 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project aad87328fabff9382bac0b452c83934515e6d0c8)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install arm64 cross compiling tool for clang build
        # apt-get install binutils-aarch64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=bce29ac9ce0bb0b0b146b687ab978378c21e9078
        git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
        git fetch --no-tags linux-next master
        git checkout bce29ac9ce0bb0b0b146b687ab978378c21e9078
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> kernel/trace/trace_osnoise.c:438:6: warning: no previous prototype for function 'osnoise_trace_irq_entry' [-Wmissing-prototypes]
   void osnoise_trace_irq_entry(int id)
        ^
   kernel/trace/trace_osnoise.c:438:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void osnoise_trace_irq_entry(int id)
   ^
   static 
>> kernel/trace/trace_osnoise.c:461:6: warning: no previous prototype for function 'osnoise_trace_irq_exit' [-Wmissing-prototypes]
   void osnoise_trace_irq_exit(int id, const char *desc)
        ^
   kernel/trace/trace_osnoise.c:461:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void osnoise_trace_irq_exit(int id, const char *desc)
   ^
   static 
>> kernel/trace/trace_osnoise.c:520:5: warning: no previous prototype for function 'hook_irq_events' [-Wmissing-prototypes]
   int hook_irq_events(void)
       ^
   kernel/trace/trace_osnoise.c:520:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   int hook_irq_events(void)
   ^
   static 
>> kernel/trace/trace_osnoise.c:552:6: warning: no previous prototype for function 'unhook_irq_events' [-Wmissing-prototypes]
   void unhook_irq_events(void)
        ^
   kernel/trace/trace_osnoise.c:552:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void unhook_irq_events(void)
   ^
   static 
>> kernel/trace/trace_osnoise.c:569:6: warning: no previous prototype for function 'trace_softirq_entry_callback' [-Wmissing-prototypes]
   void trace_softirq_entry_callback(void *data, unsigned int vec_nr)
        ^
   kernel/trace/trace_osnoise.c:569:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void trace_softirq_entry_callback(void *data, unsigned int vec_nr)
   ^
   static 
>> kernel/trace/trace_osnoise.c:592:6: warning: no previous prototype for function 'trace_softirq_exit_callback' [-Wmissing-prototypes]
   void trace_softirq_exit_callback(void *data, unsigned int vec_nr)
        ^
   kernel/trace/trace_osnoise.c:592:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void trace_softirq_exit_callback(void *data, unsigned int vec_nr)
   ^
   static 
>> kernel/trace/trace_osnoise.c:706:1: warning: no previous prototype for function 'trace_sched_switch_callback' [-Wmissing-prototypes]
   trace_sched_switch_callback(void *data, bool preempt, struct task_struct *p,
   ^
   kernel/trace/trace_osnoise.c:705:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void
   ^
   static 
>> kernel/trace/trace_osnoise.c:724:5: warning: no previous prototype for function 'hook_thread_events' [-Wmissing-prototypes]
   int hook_thread_events(void)
       ^
   kernel/trace/trace_osnoise.c:724:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   int hook_thread_events(void)
   ^
   static 
>> kernel/trace/trace_osnoise.c:741:6: warning: no previous prototype for function 'unhook_thread_events' [-Wmissing-prototypes]
   void unhook_thread_events(void)
        ^
   kernel/trace/trace_osnoise.c:741:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void unhook_thread_events(void)
   ^
   static 
>> kernel/trace/trace_osnoise.c:753:6: warning: no previous prototype for function 'save_osn_sample_stats' [-Wmissing-prototypes]
   void save_osn_sample_stats(struct osnoise_variables *osn_var, struct osnoise_sample *s)
        ^
   kernel/trace/trace_osnoise.c:753:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void save_osn_sample_stats(struct osnoise_variables *osn_var, struct osnoise_sample *s)
   ^
   static 
>> kernel/trace/trace_osnoise.c:768:6: warning: no previous prototype for function 'diff_osn_sample_stats' [-Wmissing-prototypes]
   void diff_osn_sample_stats(struct osnoise_variables *osn_var, struct osnoise_sample *s)
        ^
   kernel/trace/trace_osnoise.c:768:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void diff_osn_sample_stats(struct osnoise_variables *osn_var, struct osnoise_sample *s)
   ^
   static 
   11 warnings generated.


vim +/osnoise_trace_irq_entry +438 kernel/trace/trace_osnoise.c

   428	
   429	/*
   430	 * osnoise_trace_irq_entry - Note the starting of an IRQ
   431	 *
   432	 * Save the starting time of an IRQ. As IRQs are non-preemptive to other IRQs,
   433	 * it is safe to use a single variable (ons_var->irq) to save the statistics.
   434	 * The arrival_time is used to report... the arrival time. The delta_start
   435	 * is used to compute the duration at the IRQ exit handler. See
   436	 * cond_move_irq_delta_start().
   437	 */
 > 438	void osnoise_trace_irq_entry(int id)
   439	{
   440		struct osnoise_variables *osn_var = this_cpu_osn_var();
   441	
   442		if (!osn_var->sampling)
   443			return;
   444		/*
   445		 * This value will be used in the report, but not to compute
   446		 * the execution time, so it is safe to get it unsafe.
   447		 */
   448		osn_var->irq.arrival_time = time_get();
   449		set_int_safe_time(osn_var, &osn_var->irq.delta_start);
   450		osn_var->irq.count++;
   451	
   452		local_inc(&osn_var->int_counter);
   453	}
   454	
   455	/*
   456	 * osnoise_irq_exit - Note the end of an IRQ, sava data and trace
   457	 *
   458	 * Computes the duration of the IRQ noise, and trace it. Also discounts the
   459	 * interference from other sources of noise could be currently being accounted.
   460	 */
 > 461	void osnoise_trace_irq_exit(int id, const char *desc)
   462	{
   463		struct osnoise_variables *osn_var = this_cpu_osn_var();
   464		int duration;
   465	
   466		if (!osn_var->sampling)
   467			return;
   468	
   469		duration = get_int_safe_duration(osn_var, &osn_var->irq.delta_start);
   470		trace_irq_noise(id, desc, osn_var->irq.arrival_time, duration);
   471		osn_var->irq.arrival_time = 0;
   472		cond_move_softirq_delta_start(osn_var, duration);
   473		cond_move_thread_delta_start(osn_var, duration);
   474	}
   475	
   476	/*
   477	 * trace_irqentry_callback - Callback to the irq:irq_entry traceevent
   478	 *
   479	 * Used to note the starting of an IRQ occurece.
   480	 */
   481	static void trace_irqentry_callback(void *data, int irq,
   482					    struct irqaction *action)
   483	{
   484		osnoise_trace_irq_entry(irq);
   485	}
   486	
   487	/*
   488	 * trace_irqexit_callback - Callback to the irq:irq_exit traceevent
   489	 *
   490	 * Used to note the end of an IRQ occurece.
   491	 */
   492	static void trace_irqexit_callback(void *data, int irq,
   493					   struct irqaction *action, int ret)
   494	{
   495		osnoise_trace_irq_exit(irq, action->name);
   496	}
   497	
   498	/*
   499	 * arch specific register function.
   500	 */
   501	int __weak osnoise_arch_register(void)
   502	{
   503		return 0;
   504	}
   505	
   506	/*
   507	 * arch specific unregister function.
   508	 */
   509	void __weak osnoise_arch_unregister(void)
   510	{
   511		return;
   512	}
   513	
   514	/*
   515	 * hook_irq_events - Hook IRQ handling events
   516	 *
   517	 * This function hooks the IRQ related callbacks to the respective trace
   518	 * events.
   519	 */
 > 520	int hook_irq_events(void)
   521	{
   522		int ret;
   523	
   524		ret = register_trace_irq_handler_entry(trace_irqentry_callback, NULL);
   525		if (ret)
   526			goto out_err;
   527	
   528		ret = register_trace_irq_handler_exit(trace_irqexit_callback, NULL);
   529		if (ret)
   530			goto out_unregister_entry;
   531	
   532		ret = osnoise_arch_register();
   533		if (ret)
   534			goto out_irq_exit;
   535	
   536		return 0;
   537	
   538	out_irq_exit:
   539		unregister_trace_irq_handler_exit(trace_irqexit_callback, NULL);
   540	out_unregister_entry:
   541		unregister_trace_irq_handler_entry(trace_irqentry_callback, NULL);
   542	out_err:
   543		return -EINVAL;
   544	}
   545	
   546	/*
   547	 * unhook_irq_events - Unhook IRQ handling events
   548	 *
   549	 * This function unhooks the IRQ related callbacks to the respective trace
   550	 * events.
   551	 */
 > 552	void unhook_irq_events(void)
   553	{
   554		osnoise_arch_unregister();
   555		unregister_trace_irq_handler_exit(trace_irqexit_callback, NULL);
   556		unregister_trace_irq_handler_entry(trace_irqentry_callback, NULL);
   557	}
   558	
   559	#ifndef CONFIG_PREEMPT_RT
   560	/*
   561	 * trace_softirq_entry_callback - Note the starting of a softirq
   562	 *
   563	 * Save the starting time of a softirq. As softirqs are non-preemptive to
   564	 * other softirqs, it is safe to use a single variable (ons_var->softirq)
   565	 * to save the statistics. The arrival_time is used to report... the
   566	 * arrival time. The delta_start is used to compute the duration at the
   567	 * softirq exit handler. See cond_move_softirq_delta_start().
   568	 */
 > 569	void trace_softirq_entry_callback(void *data, unsigned int vec_nr)
   570	{
   571		struct osnoise_variables *osn_var = this_cpu_osn_var();
   572	
   573		if (!osn_var->sampling)
   574			return;
   575		/*
   576		 * This value will be used in the report, but not to compute
   577		 * the execution time, so it is safe to get it unsafe.
   578		 */
   579		osn_var->softirq.arrival_time = time_get();
   580		set_int_safe_time(osn_var, &osn_var->softirq.delta_start);
   581		osn_var->softirq.count++;
   582	
   583		local_inc(&osn_var->int_counter);
   584	}
   585	
   586	/*
   587	 * trace_softirq_exit_callback - Note the end of an softirq
   588	 *
   589	 * Computes the duration of the softirq noise, and trace it. Also discounts the
   590	 * interference from other sources of noise could be currently being accounted.
   591	 */
 > 592	void trace_softirq_exit_callback(void *data, unsigned int vec_nr)
   593	{
   594		struct osnoise_variables *osn_var = this_cpu_osn_var();
   595		int duration;
   596	
   597		if (!osn_var->sampling)
   598			return;
   599	
   600		duration = get_int_safe_duration(osn_var, &osn_var->softirq.delta_start);
   601		trace_softirq_noise(vec_nr, osn_var->softirq.arrival_time, duration);
   602		cond_move_thread_delta_start(osn_var, duration);
   603		osn_var->softirq.arrival_time = 0;
   604	}
   605	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202106291957.ayo0oPv1-lkp%40intel.com.

--YZ5djTAD1cGYuMQK
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--YZ5djTAD1cGYuMQK--
