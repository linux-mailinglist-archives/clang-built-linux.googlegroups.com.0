Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBIPTZX7AKGQED6DQUJA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23f.google.com (mail-oi1-x23f.google.com [IPv6:2607:f8b0:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id E30242D76F4
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Dec 2020 14:52:34 +0100 (CET)
Received: by mail-oi1-x23f.google.com with SMTP id k66sf542917oia.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Dec 2020 05:52:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607694753; cv=pass;
        d=google.com; s=arc-20160816;
        b=qSIScQJAxWNzFm1wzHfIt0kxgcDEv/qXKMbiuJUZVzUKR4NxyOCtSB/2c0EbdhfcBM
         qGUCW6GtpV5pivu/rbmU4+2S6GLelQftuITC1lNycVGTzorCrKpCUz32rSW8jL3d5Vks
         r73pugnwwKjXt9T4fflFH7D8TPW40YrTMQCRR2Fno7elL/vX/p/sKTJIwli4GBN4fVqK
         Vw6t2bBdocteSyq08AhWDr/rAvsaFcjeCgIZ6/An4WFIYvNkaMOOrUpyCGwukHVOXidH
         0yVL4WY6j/ggAEL0NurmMSVNpWPpWocRRrawtTPz4EW6N2jTyZd+OJqt3xkmihsswbiR
         sOEQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=fguezAfCskkeDU2njXdoE4ZEOAoaVhvhInR2fONFIRg=;
        b=N2E0/j2T5mUfKPoMb3MJBokT5EwlodnOa0Ds2sSRCI3EWrs005XAVZ8w5SNPmj0I53
         LFwC3ZMzA/E6g4VhVJKwvgi7zjOslH/qyjYK9DIbOoFhJ3cf9cTJQ4gNyZtXRFAlrXFN
         w/4HDKp6Vm95sm3isgb0r0A0uaMZQbcC8AFwt4ektF1GNIwyTwQwIEwUFsEWUnhZqswy
         S4fzaLtaFc3TqPnytbWmrAehnaQ0e9Rgn7FRuyA4SDqGy6aL+pBVeCE+FbQuz9YoI4IB
         aVBuM6KWP5WSXpKooMR9yb+8ySwn6nKQsuUvP0M8dp8rYFapxroZtn65P0DL2EdnpY9y
         XY4w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=fguezAfCskkeDU2njXdoE4ZEOAoaVhvhInR2fONFIRg=;
        b=tNtLUmzEJu7dTMrwJbSvAwFeONn9NioiFgDPhj9CmLZDllex/OqcIruJxLgppNeqcs
         735b1l/lB58QDoxiE74D1Zl8d+TK5ad5Z9GaKDYpFxx0M1IEHYvVWG1FBEwM/JSLrPhA
         zGNne198rc5xArrZulbbWahhiWgy9hUk9L/wPBrdUdthsaXMQS7C466HHJ65mzndXltO
         floy1YxhLBnH6TAux9FWfW7OZc1GwmQiFnAdEofKQqZ0xZNL9lv8C8hhshf4Qdcnxqb4
         Pbt0JoiWNxmjC58ERiHg4msf6B1eMxKuYoo8LsSTGEZDxcX5geMjGRlCuUTAsMCFNt+E
         p6Jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=fguezAfCskkeDU2njXdoE4ZEOAoaVhvhInR2fONFIRg=;
        b=jIo6oOlUp0w1ql0nfOD3nsQMX9491Q6JDna9RGWD26yHxXn7R+Q8LgwQDOvxA/LlFx
         jhbqXaQH1EnkJ7wQRSE5qtWiRWH+fmNOkCSf2WJ8OMFuXba5DtPhcLw+aCttBq+7Q2Ys
         FEz+h3q0Jfj1D24cAg+3R2/MIKactF+kHoZcVo1elH5z4vdwQrsEfsZebN8Euv/cRB3O
         5sXA2NHT02Uxe6H6yvOW2JdvxDZaGNi56dg0C5SdTfgS3sEr6YApoD5D3cx1xn329Uc+
         2Mr4pBoYgyO1e5OSgiESuI7/48FI0pqAvNloNwDTHLH/rl7eI8WXfHXKoNEIIEq97560
         LL2Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531XotXVh4Sg2iYDuGCIfMS3lfW2JFtMaOlR6ocrXfdWlXJWWg/f
	dYxqsR6mtTh8yL6XpGDoWQM=
X-Google-Smtp-Source: ABdhPJy64U5sUL+ycpU/kcJZhIK7K9Ga778u+KSR64A5klZXEa9xXlhRpLP0eQfo8MrVzUbMcvU7+A==
X-Received: by 2002:aca:c757:: with SMTP id x84mr4343957oif.103.1607694753544;
        Fri, 11 Dec 2020 05:52:33 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:aad2:: with SMTP id t201ls1716447oie.1.gmail; Fri, 11
 Dec 2020 05:52:33 -0800 (PST)
X-Received: by 2002:aca:3194:: with SMTP id x142mr970559oix.82.1607694752938;
        Fri, 11 Dec 2020 05:52:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607694752; cv=none;
        d=google.com; s=arc-20160816;
        b=aeOKnF+PWaT4YFIdAYkWD6bkWiLryzfjLPmehhvxyWhyFRynCDeI6HEGssQNoFT5SU
         +Eyn78510JwKUrWvRwBmKCi/mIujI0wZv3ilhsM/0bVvtF5WJeZJfA9gI8tipeUZPkqA
         qmcgOxPYDRFcDe83zsTPzrx38Fajk9RzMqRqKTEP3UX1dDbitmDnfmFj84L10hxU/q8u
         r4ud9BwAJ35Ve3WG0r7251K6JSvM3MOchxQ2Bn+Ytv8YolQeIgvSURXQDFv/ieMPMsTL
         JLdWXPumxNK9jh8odi1U3Bz2bLewrW9RWNQYf5YWrtrC8XBD+Tg1lH2iO6XBBTqRVqRN
         vX5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=5BCKq5XgpNK1lMxYFC+9OMD5RoquoiOdzMTWtO7rtgI=;
        b=HCqP77XTVRfDlE4W8zYsXDipxDxGEAFU3HXLoYs8+B62RTNExr42PMWMlsRl7PSZpI
         xN7sYh9zl+8AGtli8B5F3zVsb2dOHrWN/6MaRPGc51V+AAj5SDCZYkhdTBswZMtuaHAK
         VGwRNvv+4vE1NPEVo01EEN8QkI+7T1nTaUzm5l6oQMZHnACK6loTXEw5BgcZd+ozG4K7
         ria8FWjPBhzkCHME298d6hAcmMufTCDWMw/H0VTx0y+o7J3BH4be3rdq09lH/aGt7e/o
         ptcBu4yvw05pGOhUQIxM9nHyv8HKl3Fwckm9LB9seJMjfsCQdWlethKuvJyQMMWyPKVG
         AlSQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga12.intel.com (mga12.intel.com. [192.55.52.136])
        by gmr-mx.google.com with ESMTPS id l29si521708otb.3.2020.12.11.05.52.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Dec 2020 05:52:32 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) client-ip=192.55.52.136;
IronPort-SDR: ZEW4or4Ef1wXgmpx29g3vyxKXUbUeGnpaanR31z7WOlo6BlN3Ry0qWOWf5fkwxZVIo2RnSpt0s
 NgRGjIrIPi7w==
X-IronPort-AV: E=McAfee;i="6000,8403,9831"; a="153664969"
X-IronPort-AV: E=Sophos;i="5.78,411,1599548400"; 
   d="gz'50?scan'50,208,50";a="153664969"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Dec 2020 05:52:31 -0800
IronPort-SDR: w2rjhZbhJ5y6XUN/s7s4fh6ynJFR61Zl6W8XZBIN9FNr41VHlWWZaOEA60WskGsEj0cNKW74LX
 NrYZcV0sKEBQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,411,1599548400"; 
   d="gz'50?scan'50,208,50";a="374396406"
Received: from lkp-server01.sh.intel.com (HELO ecc0cebe68d1) ([10.239.97.150])
  by fmsmga002.fm.intel.com with ESMTP; 11 Dec 2020 05:52:28 -0800
Received: from kbuild by ecc0cebe68d1 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kniqS-0000ua-6g; Fri, 11 Dec 2020 13:52:28 +0000
Date: Fri, 11 Dec 2020 21:51:36 +0800
From: kernel test robot <lkp@intel.com>
To: Alistair Delva <adelva@google.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	"Pan, Kris" <kris.pan@intel.com>
Subject: [intel-linux-intel-lts:4.19/android_r 19120/20689]
 arch/x86/kernel/smp.c:273:1: warning: unused label 'finish'
Message-ID: <202012112118.BG0XVBlI-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="SUOF0GtieIMvvwua"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted
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


--SUOF0GtieIMvvwua
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://github.com/intel/linux-intel-lts.git 4.19/android_r
head:   4a6aef8d991e7c47e5da39927e0ad28ec90cd01b
commit: b652a52d36a85d1b731921ba08e701d7150ce200 [19120/20689] Merge branch 'aosp/android-4.19-stable' into android_r
config: x86_64-randconfig-r005-20201209 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 5ff35356f1af2bb92785b38c657463924d9ec386)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        # https://github.com/intel/linux-intel-lts/commit/b652a52d36a85d1b731921ba08e701d7150ce200
        git remote add intel-linux-intel-lts https://github.com/intel/linux-intel-lts.git
        git fetch --no-tags intel-linux-intel-lts 4.19/android_r
        git checkout b652a52d36a85d1b731921ba08e701d7150ce200
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   arch/x86/kernel/smp.c:190:16: warning: no previous prototype for function 'smp_reboot_interrupt' [-Wmissing-prototypes]
   __visible void smp_reboot_interrupt(struct pt_regs *regs)
                  ^
   arch/x86/kernel/smp.c:190:11: note: declare 'static' if the function is not intended to be used outside of this translation unit
   __visible void smp_reboot_interrupt(struct pt_regs *regs)
             ^
             static 
>> arch/x86/kernel/smp.c:273:1: warning: unused label 'finish' [-Wunused-label]
   finish:
   ^~~~~~~
   arch/x86/kernel/smp.c:285:28: warning: no previous prototype for function 'smp_reschedule_interrupt' [-Wmissing-prototypes]
   __visible void __irq_entry smp_reschedule_interrupt(struct pt_regs *regs)
                              ^
   arch/x86/kernel/smp.c:285:11: note: declare 'static' if the function is not intended to be used outside of this translation unit
   __visible void __irq_entry smp_reschedule_interrupt(struct pt_regs *regs)
             ^
             static 
   arch/x86/kernel/smp.c:306:28: warning: no previous prototype for function 'smp_call_function_interrupt' [-Wmissing-prototypes]
   __visible void __irq_entry smp_call_function_interrupt(struct pt_regs *regs)
                              ^
   arch/x86/kernel/smp.c:306:11: note: declare 'static' if the function is not intended to be used outside of this translation unit
   __visible void __irq_entry smp_call_function_interrupt(struct pt_regs *regs)
             ^
             static 
   arch/x86/kernel/smp.c:316:28: warning: no previous prototype for function 'smp_call_function_single_interrupt' [-Wmissing-prototypes]
   __visible void __irq_entry smp_call_function_single_interrupt(struct pt_regs *r)
                              ^
   arch/x86/kernel/smp.c:316:11: note: declare 'static' if the function is not intended to be used outside of this translation unit
   __visible void __irq_entry smp_call_function_single_interrupt(struct pt_regs *r)
             ^
             static 
   5 warnings generated.

vim +/finish +273 arch/x86/kernel/smp.c

7d007d21e539db Don Zickus      2012-05-11  185  
f9e47a126be2ea Glauber Costa   2008-03-03  186  /*
f9e47a126be2ea Glauber Costa   2008-03-03  187   * this function calls the 'stop' function on all other CPUs in the system.
f9e47a126be2ea Glauber Costa   2008-03-03  188   */
f9e47a126be2ea Glauber Costa   2008-03-03  189  
cd7b77710e3d52 Duan, YayongX   2017-12-27 @190  __visible void smp_reboot_interrupt(struct pt_regs *regs)
4ef702c10b5df1 Andi Kleen      2009-05-27  191  {
6dc17876055360 Thomas Gleixner 2015-05-15  192  	ipi_entering_ack_irq();
cd7b77710e3d52 Duan, YayongX   2017-12-27  193  	store_regs(regs);
fba4f472b33aa8 Tiantian Feng   2017-04-19  194  	cpu_emergency_vmxoff();
4ef702c10b5df1 Andi Kleen      2009-05-27  195  	stop_this_cpu(NULL);
4ef702c10b5df1 Andi Kleen      2009-05-27  196  	irq_exit();
4ef702c10b5df1 Andi Kleen      2009-05-27  197  }
4ef702c10b5df1 Andi Kleen      2009-05-27  198  
ce7fdd5cd83e0a Grzegorz Halat  2019-06-28  199  static int register_stop_handler(void)
ce7fdd5cd83e0a Grzegorz Halat  2019-06-28  200  {
ce7fdd5cd83e0a Grzegorz Halat  2019-06-28  201  	return register_nmi_handler(NMI_LOCAL, smp_stop_nmi_callback,
ce7fdd5cd83e0a Grzegorz Halat  2019-06-28  202  				    NMI_FLAG_FIRST, "smp_stop");
ce7fdd5cd83e0a Grzegorz Halat  2019-06-28  203  }
ce7fdd5cd83e0a Grzegorz Halat  2019-06-28  204  
5d2b86d90f7cc4 Don Zickus      2012-05-11  205  static void native_stop_other_cpus(int wait)
f9e47a126be2ea Glauber Costa   2008-03-03  206  {
f9e47a126be2ea Glauber Costa   2008-03-03  207  	unsigned long flags;
76fac077db6b34 Alok Kataria    2010-10-11  208  	unsigned long timeout;
f9e47a126be2ea Glauber Costa   2008-03-03  209  
f9e47a126be2ea Glauber Costa   2008-03-03  210  	if (reboot_force)
f9e47a126be2ea Glauber Costa   2008-03-03  211  		return;
f9e47a126be2ea Glauber Costa   2008-03-03  212  
4ef702c10b5df1 Andi Kleen      2009-05-27  213  	/*
4ef702c10b5df1 Andi Kleen      2009-05-27  214  	 * Use an own vector here because smp_call_function
4ef702c10b5df1 Andi Kleen      2009-05-27  215  	 * does lots of things not suitable in a panic situation.
7d007d21e539db Don Zickus      2012-05-11  216  	 */
7d007d21e539db Don Zickus      2012-05-11  217  
7d007d21e539db Don Zickus      2012-05-11  218  	/*
7d007d21e539db Don Zickus      2012-05-11  219  	 * We start by using the REBOOT_VECTOR irq.
7d007d21e539db Don Zickus      2012-05-11  220  	 * The irq is treated as a sync point to allow critical
7d007d21e539db Don Zickus      2012-05-11  221  	 * regions of code on other cpus to release their spin locks
7d007d21e539db Don Zickus      2012-05-11  222  	 * and re-enable irqs.  Jumping straight to an NMI might
7d007d21e539db Don Zickus      2012-05-11  223  	 * accidentally cause deadlocks with further shutdown/panic
7d007d21e539db Don Zickus      2012-05-11  224  	 * code.  By syncing, we give the cpus up to one second to
7d007d21e539db Don Zickus      2012-05-11  225  	 * finish their work before we force them off with the NMI.
4ef702c10b5df1 Andi Kleen      2009-05-27  226  	 */
4ef702c10b5df1 Andi Kleen      2009-05-27  227  	if (num_online_cpus() > 1) {
7d007d21e539db Don Zickus      2012-05-11  228  		/* did someone beat us here? */
7d007d21e539db Don Zickus      2012-05-11  229  		if (atomic_cmpxchg(&stopping_cpu, -1, safe_smp_processor_id()) != -1)
7d007d21e539db Don Zickus      2012-05-11  230  			return;
7d007d21e539db Don Zickus      2012-05-11  231  
7d007d21e539db Don Zickus      2012-05-11  232  		/* sync above data before sending IRQ */
7d007d21e539db Don Zickus      2012-05-11  233  		wmb();
7d007d21e539db Don Zickus      2012-05-11  234  
4ef702c10b5df1 Andi Kleen      2009-05-27  235  		apic->send_IPI_allbutself(REBOOT_VECTOR);
4ef702c10b5df1 Andi Kleen      2009-05-27  236  
76fac077db6b34 Alok Kataria    2010-10-11  237  		/*
ce7fdd5cd83e0a Grzegorz Halat  2019-06-28  238  		 * Don't wait longer than a second for IPI completion. The
ce7fdd5cd83e0a Grzegorz Halat  2019-06-28  239  		 * wait request is not checked here because that would
ce7fdd5cd83e0a Grzegorz Halat  2019-06-28  240  		 * prevent an NMI shutdown attempt in case that not all
ce7fdd5cd83e0a Grzegorz Halat  2019-06-28  241  		 * CPUs reach shutdown state.
76fac077db6b34 Alok Kataria    2010-10-11  242  		 */
76fac077db6b34 Alok Kataria    2010-10-11  243  		timeout = USEC_PER_SEC;
ce7fdd5cd83e0a Grzegorz Halat  2019-06-28  244  		while (num_online_cpus() > 1 && timeout--)
4ef702c10b5df1 Andi Kleen      2009-05-27  245  			udelay(1);
4ef702c10b5df1 Andi Kleen      2009-05-27  246  	}
4ef702c10b5df1 Andi Kleen      2009-05-27  247  
7d007d21e539db Don Zickus      2012-05-11  248  	/* if the REBOOT_VECTOR didn't work, try with the NMI */
ce7fdd5cd83e0a Grzegorz Halat  2019-06-28  249  	if (num_online_cpus() > 1) {
ce7fdd5cd83e0a Grzegorz Halat  2019-06-28  250  		/*
ce7fdd5cd83e0a Grzegorz Halat  2019-06-28  251  		 * If NMI IPI is enabled, try to register the stop handler
ce7fdd5cd83e0a Grzegorz Halat  2019-06-28  252  		 * and send the IPI. In any case try to wait for the other
ce7fdd5cd83e0a Grzegorz Halat  2019-06-28  253  		 * CPUs to stop.
ce7fdd5cd83e0a Grzegorz Halat  2019-06-28  254  		 */
ce7fdd5cd83e0a Grzegorz Halat  2019-06-28  255  		if (!smp_no_nmi_ipi && !register_stop_handler()) {
ce7fdd5cd83e0a Grzegorz Halat  2019-06-28  256  			/* Sync above data before sending IRQ */
7d007d21e539db Don Zickus      2012-05-11  257  			wmb();
7d007d21e539db Don Zickus      2012-05-11  258  
7d007d21e539db Don Zickus      2012-05-11  259  			pr_emerg("Shutting down cpus with NMI\n");
7d007d21e539db Don Zickus      2012-05-11  260  
7d007d21e539db Don Zickus      2012-05-11  261  			apic->send_IPI_allbutself(NMI_VECTOR);
ce7fdd5cd83e0a Grzegorz Halat  2019-06-28  262  		}
7d007d21e539db Don Zickus      2012-05-11  263  		/*
ce7fdd5cd83e0a Grzegorz Halat  2019-06-28  264  		 * Don't wait longer than 10 ms if the caller didn't
ce7fdd5cd83e0a Grzegorz Halat  2019-06-28  265  		 * reqeust it. If wait is true, the machine hangs here if
ce7fdd5cd83e0a Grzegorz Halat  2019-06-28  266  		 * one or more CPUs do not reach shutdown state.
7d007d21e539db Don Zickus      2012-05-11  267  		 */
7d007d21e539db Don Zickus      2012-05-11  268  		timeout = USEC_PER_MSEC * 10;
7d007d21e539db Don Zickus      2012-05-11  269  		while (num_online_cpus() > 1 && (wait || timeout--))
7d007d21e539db Don Zickus      2012-05-11  270  			udelay(1);
7d007d21e539db Don Zickus      2012-05-11  271  	}
7d007d21e539db Don Zickus      2012-05-11  272  
7d007d21e539db Don Zickus      2012-05-11 @273  finish:
cd7b77710e3d52 Duan, YayongX   2017-12-27  274  	store_regs(NULL);
f9e47a126be2ea Glauber Costa   2008-03-03  275  	local_irq_save(flags);
f9e47a126be2ea Glauber Costa   2008-03-03  276  	disable_local_APIC();
8838eb6c0bf3b6 Ashok Raj       2015-08-12  277  	mcheck_cpu_clear(this_cpu_ptr(&cpu_info));
f9e47a126be2ea Glauber Costa   2008-03-03  278  	local_irq_restore(flags);
f9e47a126be2ea Glauber Costa   2008-03-03  279  }
f9e47a126be2ea Glauber Costa   2008-03-03  280  

:::::: The code at line 273 was first introduced by commit
:::::: 7d007d21e539dbecb6942c5734e6649f720982cf x86/reboot: Use NMI to assist in shutting down if IRQ fails

:::::: TO: Don Zickus <dzickus@redhat.com>
:::::: CC: Ingo Molnar <mingo@kernel.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202012112118.BG0XVBlI-lkp%40intel.com.

--SUOF0GtieIMvvwua
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICH5W018AAy5jb25maWcAlDxdc9u2su/nV2jSl/ahib/ipueOH0ASlFCRBAuAspwXjmLL
qe+xZR9ZbpN/f3cBkARA0PHtdDIWdvG12G8s+NO/fpqRl8Pjw+Zwd725v/8++7rdbfebw/Zm
dnt3v/2fWcZnFVczmjH1HpCLu93Ltw/fPp2352ezs/fHv78/PjueLbf73fZ+lj7ubu++vkD3
u8fdv376F/z/EzQ+PMFI+3/Pru83u6+zv7f7ZwDPjk/eH70/mv389e7w7w8f4N+Hu/3+cf/h
/v7vh/Zp//i/2+vD7OPt7enH04/nt8eb25MvX34/+e3Txy+nn67PP/52dn76+8nZze/b69NP
57/AVCmvcjZv52narqiQjFcXR10jtDHZpgWp5hffu8Yiw8aiyIYmjdF3Pz45gv+cMRZEtkSW
7Zwr7nTilVSiSRUXcmhl4s/2kovl0JI0rMgUK2lL14okBW0lF2qAq4WgBNZU5Rz+aRWR2FkT
ca5P5X72vD28PA17ZRVTLa1WLRGwHVYydXF6gjTvFlbWDKZRVKrZ3fNs93jAEfr985QU3V7f
vYs1t6Rxd6p30EpSKAd/QVa0XVJR0aKdf2b1gO5CEoCcxEHF55LEIevPUz34FOAMAD0BnFW5
+w/hem0RAvnrC3utP782JizxdfBZZMKM5qQpVLvgUlWkpBfvft497ra/vBv6yyu5YnUaHbvm
kq3b8s+GNjSKkAouZVvSkourlihF0kUUr5G0YEkURBrQBJGl61MgIl0YDFgmcFHR8S8Iw+z5
5cvz9+fD9sGRVVpRwVItK7XgCR1O1QXJBb+MQ2ie01QxnDrP29JITIBX0ypjlRbI+CAlmwui
UAii4HTh8jS2ZLwkrPLbJCtjSO2CUYFkuRoPXkoWX5QFjObxFk2UgMMGGoO4guaJYwkqqVjp
zbUlz6i/xJyLlGZW7zBXNcqaCEmnSZbRpJnn0lWcPF1K3sCA7SVR6SLjznCaL1yUjCgS77wi
BQMobQsiVZtepUWEKbQSXQ08FoD1eHRFKyVfBbaJ4CRLYaLX0Uo4R5L90UTxSi7bpsYld8yu
7h7AxsX4ffEZuFEwnrHUVSgVRwjLirjUGnDeFEVE7jTQHWzB5gs8d00kIeNCXGWCs0xr91Y2
EkWkTSjIMOMirloEpWWtYLqKRlbRgVe8aCpFxJW7Igt8pVvKoVdHvrRuPqjN839mB6DjbLO7
mT0fNofn2eb6+vFld7jbfR0Iqli6bKFDS1I9hmHifuYVEyoA48FFd4hsrflqwI3iJTJDXZVS
0KSAqqJIaLulIipO/lqyuHqGlTLJCy2vLoami0ibmRzzlAIatgBz9w0/wccAVosRXRpkt3vQ
hItvvSYcEPZTFOhTlK6mREhFQYtIOk+TgrkyYtyFhFUnqaN4luaPcYsmq9u8ALVEXZ+q4Dho
DgaB5eri5MhtR+KVZO3Aj08GPmOVWoLjktNgjONTz4A14MkZzyxdwJ60Euj4Ul7/tb15AU92
drvdHF722+fhEBpwHMu6c9n8xqQBRQJaxDD5R08nyqauwQeUbdWUpE0IuJ+pp4g11iWpFACV
XlNTlQRmKpI2Lxq5CFD7AWHDxyefPC3jTRFhjHQueFM75K7JnJplU+GOBA5EOj2AoZ2LnxMm
WgcWZX6Q1AmUMY0NpjuFnbpmmZxemMh8R8425yACn6mY7rdo5hQI7nWtwUeaEG/bK6MrlsaU
pYXDEKg/YrugIn9t5KR+FayNc9ySgE8Jph10V2xZC5ouaw6Mg+YDXArqLs0IBBoMPUl0eDDI
uYTpQa2DTzJ1zrQgV5Hpk2KJJNMxjXBCMv2blDCw8RCcyENkQcABDUGcAS2h+w5NE667Ro67
7RoUc9khKuQ12A32maI/pc+OixKEzCNfiCbhj5huBpdGOR6NUUosOz53fDONA/o9pbV27IA8
KQ361Kmsl7AasCW4HEcn1/nww9gId516rsjCSghLGLC8pwckiAX63K31xOIbwpPrPTWXV3AX
0z3zBXgprvNnohvj1TitWrWHv9uqZK4d8rwCWuSg1UTc2QoIF2NUAp4xemPDBHmj6Dr4CbrI
IXTNXXzJ5hUpcofL9bbcBu16ug1yAWrX0fbMCYFJtmKwKEtMhzrQJSFCMOrEB0tEuSrluKX1
vOmhNQGfBLaEvA1KK4KhSYKCjaGYx2vtyElHJtJRrrs5bbswuzIsGHpWqT4nR5ol/dM9Sa3p
dGvknGAkmmU0CyUDpm/74MA59+Ojs5HPZRNb9XZ/+7h/2OyutzP693YH3igBvzRFfxRc/cEP
mBjcrFMDYfvtqtRhW5T/VqXp39ndqKbmZU3AI9DJpUGiChIP2WXRJDHRLHgS9gf6C7D5Ng8R
9dh5zgrPRTk/S5jj9K11btD77c6iGpFwiDVAuHAe3ApYm9gumc2qoYpDxMxlYt6oulGtVrXq
4t32/vb87Ndvn85/PT975zEVbMX6m+82++u/MHX54VrnKZ9tGrO92d6aFjcFtgQz1nlTjhAq
ki61vh3DyrIJGLpET01gaMVMFHlx8uk1BLLG9F0UoTvybqCJcTw0GO74fBS9S9Jmbr6tAxgl
OW7s5brVvoGnfDu0xSWFqFOF2ydXnTFq88zx7MWlpGW7ThdzkoFPUcy5YGpRjscFzcESgdmA
DL2GiL5Arx8XuI7BCPgsLTAr1eY2ggGsDBtq6zmwtQr0BLh3xhUzAaSgDs10wNOBtJ6BoQTm
KxZNtZzA0950FM2shyVUVCZVA6ZOsqQIl9xF6hNgHSagr9rWJcRjCyKiGJq4pHC8WovyGWJ7
5I1Tx3/SyTzdeSrQ6NwaTFwDrcfRS49ptSCQQau/UGW0sqynujY6O+hwXg6uACWiuEoxs+Ua
xnpuIrgC1CiYwj7esul7SZAdUIzxzGlqUmda2df7x+vt8/Pjfnb4/mQyD+NIryOSoxPcZeNW
ckpAy1Hjbbu6D4HrE1KzNKLuEFjWOu/m9pnzIsuZXER6CKrArQD2dvFRRAtwV+N5CZyErhUw
ETJmxMfxMM1YRR1Vz4hAymEUG+84jjuXeVsmbNxiOGEcXfASeC0HZ7/XNbFE8xUIFLg74ETP
G+qmG4B2BDM+nlm3ba8ERT2KrIGDMRMZz5mlIp44WvsJpc43AkPerW9I/q9KKwX5RGaoW8sr
magQtUtS9IP8QVix4Oho6AXEk4YJ58rIzRDWLz9FF1XWMu6rlOidncRBRPGY89xrdteP7HhN
VGDkrdo26ZlzF6U4noYpGeiTtKzRwASeCKZrV34LWFNWNqVW0TkpWXF1cX7mIugDg1illF7w
Y3OAGMvRgqYxMuOQoMKMHDnpbtsM0jNuTMH3I43j6SxqatjBact0dDPoCAJswDg4IPG0AFhY
Iq5ewQBXAbRYjFG06ZKtIBWYlYTO0YeJA0GnXHw8HgGtK+nQ1EKcFiP9slRjlVBOqUp9S9mi
Lg34iHeNnioTVHAMYTD2TgRf0kpLAGZ945KoWcNP3xgj4YQCD4+7u8Pj3mSkB8YYYgCrQZtq
OtwcIQtSF29ETTHFHE3HO6haR/NLP3LH3R2fJ9GbPIR1dyvg3DRFdzc22JhPyzgbsRSEAmR4
yryBBD140lg3LPPP76O2235bxgQIWDtP0HcYWdS0JmjQFZOKpTFL5QaXwKapuKo9TkMKOaCY
GDR+Cgl7YNvEPsGXIWnNum690s2oxJu1quVqAU6hbhhlaKkvo35nX/EZH0m7DGb9JOIz9uBO
EgO4Vl7dnTDeEXppGuPIG6D2wWKBWlHQOQijtdl4hdfQi6NvN9vNzZHzn3fymGyEOIVjXlyI
pvbvXxEF5RONXNnNPyCa7j66uerE/P6lo1pKJfzUNfxGH5ApFk/54lAQQgVUAmMqwbNESSY2
u+2CQQNmvAwZU0JUNjGD1Qslq8NOBgLG6wde2XAm6MQiTZb0alqVmU5KrvURtzyPZ5BjqDHv
JoLnV4rQ3LNQ8BNkNJ6GoClGrS724nN7fHQUXSCATj5Ogk79Xt5wR45J/XyBDW5RxprGXRwN
wThxqqCCyEWbNVHjWS+uJEMrBdoJvNKjb8dWDtxcON7eo9i+1h+i4HkF/U88McquIMDAagHD
CRAfg4VzNgnSUzRz62kN15e9VDkIcYIaT/WHaDbnsMokj2wCVUN6FRoUL2QJUcI75mGmMtPR
POwhljEGNmQ5ECJT46yjDukLtqI1XqNFUgGYiejMiwszSrUjsiXGj3AE/OUmQtEXN8lTo+O1
n8tCLWKHkXUBYRCG8LWyrn0EC6N3nVFwq1eMh/L4z3Y/Aw9l83X7sN0ddCCL9mj2+ISFec+u
s2JTCjHu8/RZXY4jqAGUFs4qL/80/gYW57CUYS5zMD2DRoA4YG4NzpTN7sN/XL1DhtGvjoW0
JEkwAXzZhLmEEjNUtkwJu9RuRkq3ANMosJNm8dq1kk6WzwkEaxvBzqMWxIxVp8IsJ1xpzcaj
YSyRSzPzRPAJWIKuWmArIVhG+xzQNDroLVumM7VIkoI75ndKiAITHrufM+BGKd8X1M0rWFFM
+DUwJ+MOGfD1FL4OxAQFLpIyIN4QcxnXdxLMshHhe2DQzmoIph68Jl91xmcg87kAplOj8dC1
K0kRDOm7gmafjYQYuc0k6Cs0MM7F5qCV9Iha4Jsa5DyjI1J60CmadgkXby8pwzsAFS6LQwAK
WlaMZurIYvTc1FQdFuNhHGYEI5lkR9+vckhUUrXgISyZR8RS0KzBkrYFEdklEei9FLGVDmqA
1NRRJn67f4sYQR8w5wvflR8glFV/TAupQcGc8HSCKqtVPtYNvfZleLUMvOg50CnougwL5aYQ
urOGv3PpR2Wg0IN8g9TeXFedNcv32/++bHfX32fP15t7ryCrE14/saHFec5XWHOK+RI1AQ6L
i3ogSrtL3h6AC52owuhQuqJanMC5nf9/dELSS+CMt3fBS05daPH2LrzKKCwsXjQR7QEwW925
ipaZxProrEqjWDFxAlPlCx7O2+gxSYcYYrf7ScYYtjqB4u6s59TbkFNnN/u7v70rW0AzVFKD
FAxtOr2d0VVADANtyjKmXIbgqA6slJauNO1GcK2vTqdb84ewiXHBW6MZuCkmUShYxQPZPTP5
4FLrS02H5782++2N4/xFhytY4hKO3dxvfan2TWrXoklfgPPsqgsPWNLKsaKGLnYsPVvy8tyt
bfYz2KTZ9nD93nnPAU1Oih9slskG+W1laX4EmLp+2i2H0GiY5j0+Wvi4aZWcHMGS/2yYf60O
QIouYNLEDJeeXAYrnKrfRpgeP6g8YK/dTqRo1fSFWef6Y6Q9sRSMscOxsQgjHnojlLg10thA
U1L6LchPBZa7xmjM3Hy6nk4E1KiJdEMdPSJJ/DRT5zTg+Y8yrtB2/bg77B/vsfhyEGDDrJub
LeZiAWvroGH59dPT4/7gMRJeLmS0cm+p3Fb97iI8+x5I40VvuJ9cwb/H0eQDgnHYkW3rAfZK
JFjSGqss1u5iVmU2ok22fb77ursEAddkSh/hD9lv3N9HdqmVmZ50aicDlr/b/iDo7ubp8W7n
kxVz/zr5F3CSbR3cjIAzKbBm+Dapn+n5n7vD9V/xk3c5/hL+ZxDTK5oOqhCrHEBgHb1jyh7w
bsDxgTCNG8hLCp5j7K4VOmbMUba2AbSRNO8RMPlyehSCrciKdavWrQ5mh+n7ITDrW82Di9we
OqkahjmaEkuwotfKHVK6APPqGpwOUOKq2hRs3OgYxObp7obxmTRHMdB/NIiS7ONv69emr2W7
Xsfmx67nn37QFWTkZEx7sdaQ09COYtFhMtpNcrfb7L/P6MPL/SYwhYycnkxcdSCEwNlOpkvX
p7GnYzYp5pZSmKbwt76RavDGAJN8YCyDUiosiUUG4W5htg5TuqvUuU516C3md/uHf1AZZKGo
0MytLcwyzAC7+8yZKHXABMFdkLZ28oFF0YokfoWYpRmwYBxUMhaTKWg39aHexSY4cqRqS5Iu
MNVX8Uonj3OwgAlxk2H5ZZvm83AAt7XLFw7QOefzgvabdQlgQbKMP82wYLzH0/eGJurWWbW3
o/N40t0iY1U9uLkc/tQXnDqlNeJiIMbsZ/rtsN0933253w5HzrAU8XZzvf3FsQDdgQMFV8St
3MIWKt3ytQ4HnVYsunyYAPThBGg+P79lzmnZ8ZAPwKcZHXCoXkOIwBKHkraXINa1KS/z7g2Q
gAXHlyA6NyF4/HoUUVNSywZrfzR6rCYUkFRQlKE7mkSDxFwMptgKchXz9hqNW7u+bt9kCx3N
C7Dt1/1mdtsdjVGczjMw/WJ15SVYsZSjAR3wOf74p3sAjDWMd4ftNVYl/XqzfdrubjDFO3Lu
O4fKXKrbRm6qN6mrL7s2W3Wq67zrgsZ0uV52P8ZoVMyW9ImD4QLFVG5Fj+yPpqyNLzg125BC
biqtIPENQoopuPEFnX5upFjVJvKShK+QGXAuFklGCv2WYW2ZacXqqhiA1/F2OwxEsuAORiry
86Yy93RUCMxQVn+Ye7sAzUs5DY9q9YgLzpcBEE0DSgWbN7yJVGZKoLAOxcwjz8jFB9gfhdcm
9nXFGEHS7no4ujDzaN2U6raXCwbxnfcIrC88lP2NlX7CY3oEQwo6l/g60VTo2aP2nTaDJ90U
k27y7iB0y+KyTWBxy8A11bCSrYGVBrDUUwdImL3AKrtGVGCIgEpeHX1YTR45OkxDYvSkH+WY
YkPdIzZIZP6uYFxYcuA9Y+wMBjkKyZQ21vTgG6dJIKu6V7ej4zccaV7O2ZKqkO6m1RTkTMAy
3kyUq1oniNVpa54cd98jiODyInPwY4Swd8m2rtfJX060m0LfsBi0889swagH1peTrn7zwT+8
ySoUH32GAprCUXu0ydy1pgpT4CRZ5tB1kyEHoWqga6XVx9IrzdXgifexoe4cv4ydUFEVVptQ
W4WMt5NvxWvrJnynYRgQq5lX5UidG6LyHL0QoULFVPKsK36hKUitwysAavCKEO0FvgPC2vHI
dumaKdTk+mW/IqNLWGQM3V0XfnjF5cP6vOr+AEFPENXJfq/hwUBkXKfaf2oQFyUylAVrdHzE
M+af+qpT8aoIoYbxrO4YmzKgLTM32v2rCcdrwA+JsLm9fz4dhUUWTgIb2cdVCTNVkTHCI8P0
x+bkT7rW12rEwCwxMGT2Mx3i0nlY8Aoo7G7YLNo9Buq7C3ytYt7CO0Uipm3qCwDDvmugOISr
tqoE6CY7h3Se8tWvXzbP25vZf8yTpqf94+2df3eDSHZ3kaVpaOfq+Z9dmISYOBUUKfqiXiZW
oKsJqsnlOP2KTOLbqOHDPVZeQwE2n67Qfr5LKgtsKgTESxR5Zi1M3CW1I0iR9l/AKeLxRofJ
4skZC37lfVOnivQL/L5kYSjUKeJ35DXxP55BZHXshCOVfoVBdTG7JsRIdw1VFRDygDcGsbBD
Xv10UXeGvfPLyjWX5t3OBBBnmoL1Lrr+NE02VNoPKNOQsLO4jHcdtQ9C2b0k7N6doU/lfw7F
wTVFSDYa9VIES9YuWJbRqs1EabOacTZyUMGvQ8XzRmxdgcrfii21hn8zquTpW9HnNXvzKmzo
+kN0W6RziQ4JkNhAfrhuWHP9ZmLrQpSkyU/e2qGRyZspyPE9nHw7BZu3ouqvDP0IFewW6AqO
L5/GSaFv2+uXwwbzQfjVtpmuUD846YCEVXmp0GUZmdIYCH74D28tkkwF82unLaBkMpZ8xkFs
0KLXWW4fHvffZ+VQmzZKXMTrkTtgX8xckqohMcjQpB/fdfmMvtja8xO7GloqvbyrU1K9xlo+
GgOtTJZrVHU9whhPmvha2Ws2tYFeN/OOFSgM0WSku91F/+GYYGD70Md8Vq7ylN5UUaPfbnfk
2VkfocsIcm16YqZusjLSFjvqQkfzLOQsqCxNw3xYN+b/EfYsS67bOv5K111MJYtMbPnR8iIL
WqJtHuvVomzLvVF1TrsmXfe86nTnzuTvByD1ICnQWpykDYBPgSQAAuA4axc6zKIjZ9lUblSy
DqrK7UuhND0Rev1RGkzUDU19ap0HKi7/WM4266GblELjEzG1IaQ6gCRqGamihDPtW27AnGwl
KfP6YPY4KycX3neB6C7/mG+sb2doTuR+81zQDrbPW1NLe5Y6jN20JnbBlzBbhS+BUhcGmqFf
UgZSn3a8pXvStqEcgGg5q4uXdym6vbM1hKlg0c4MaE4rfGFelrw3YSl1FJOOUJEOaElTBGOF
upcgdIRoFww5DGUAEzXrqMezY4JofYZVJilD3sYUMDzDG72SUkyLimvN19wgM94n2MpuH//7
/ee/0RuG8AiGFXfk1OBBtLTuo/E3MBGjvzJoi5QLy660wyTgt5LG6Os1xKqYkp3PlUqRyNO2
wUjYiGZnRaO3i3uVkCFEPQ3MH0ZY0OXjAqWDo5MQqGMaPfXDlWKhTyXMO0dWBwQsPqMLFgi1
GLVGmZWAqMjMvITqdxMfosJpDMHK69/XGBKUrKTxOG5RePJnauReXQqlJ+rOQFM01SnLuJP/
BYRdUHqE525AFzxX9P0aYnc5fRPZ4oZm6QbwszSMzn+pcFx6Zkx3DQ8nz9cehmsCNRvi6a4P
DCt5hEtxv4It525ZXIgOqIqKDmx3/hQX/oWrKEp2maBALHx12DRzelFg6/DnvudlYrJ6mui0
Na103anb4f/41+e//3z7/C+79jReOdp3z9Pntb0Izut2JaGwR9/CKiKdzAB3gSb2WBBw9Ot7
jLO+yzlrgnXsPqSioDIw6cKTTLSe4KL1mI2c/g14NWVtfofRtaTdaWehmigpqtHHAFizJh1t
FDpTXjUorFbXgo9K63HdmcFO6NfxIHcI1Qj9eMn36ya5TLWnyOA0pkPIYFIxDzReQuCB7dkk
i6pAi7+UYmclz+xKg2yrnZ0rlnpFKyDWVxwkdlvcQcJuGUeR94yQkef8KGN6fitfkmJW0Qkn
ksDTwrYUMSlQ69sp3Iskc6YMQWRl54RlTTgL5k8kOuZRxulTOUkiOtUBq1hCx0PXwYquihV0
pqbikPuaXyf5BWRm+vtwznFMq6WPK+7kXYwjyjU0ztAYDSrlmZemgL+Fz8dQCzqTleUFz87a
H4+efkJMMvsJ+uPRf/CkhecsxxFmkm7yIGmGV7Oieuq4vlkUyQKzSuPBcY8qiyS1/ZWmz1a5
U/lirdj2wnJ2adM3qt2gFHQeQoNG7xbUHqpOcMyEKq+NnXhu+2QJYZig7ZOgGU4lbwN9naX6
ZpYSQpWoBYzZ5p639YuHj9v7h5MbQY3tWPly8B5YWrLYN3QP92/p/rMdzEHp24R2zTGi8pNc
RMkT7V4yNLzb4+qaj8xuPeLb7fb6/vDx/eHP28PtG9rhXtEG9wBHgiIYzFsdBNUNVNYOyjFK
pacy4oIvAqD0drs7CjoPNMzsprD0Pfit7B4qU6D1CTb3koRGTHjSi/Li0Pjywmc7T056CeeV
L7E1CtI7Gkedut3ehN7UtqkEVgV0T6c+tM8BfsY9hbIfsau6VWgphrp2TCS53vbMg4a3i6Xj
8vj2n7fPpqfl4Kf19rkFP+Rj/fqkzRUHnhTkmoL+VGlhO0t3MBDLThnN7sBPWcwSX+g0iL2q
2d7PU+VmHnF070345fvLq+mytru0TnWGkbgGEXTwpRyiF3ta7buiR2oOhyToXTzpBZvgNoPO
sJ1N+Y5tKS7F2SPmtAT8XHrkQk2APoJtNY02WVLaCxIxdbnUkuo3DHq+MZIdqaANzxMHiD6f
EszKthWJqIRpqNbXR+7vRpgptVuYNN2kWthlPgKlqZk6tKvPzPSPTmUqfVyMmbJ3duYh+OQq
HKK7zx9mDl3R7JwofYDPq1ospplf4K6ANzvaIjvUco501Y0TcGNYhWFf8Djb7DPTMxB/gdhd
CjMcVwNFuaMxp209IIYbGER16Qc0mpZQKuo8zi1X63yHprPK8ygLYI/59pPhKLFTNmfL5RFg
1geD346RCSCtH6vPEm3Ew2vnK1uX9AGaworp7aB35mQoCJvFjj7bDRp5Uk8kEN3uiFgdho+b
9bhr8yBcjqFZ3na6g5tmM2UzU0seVCvZ5n/osgF+fP/8/YsZb5IVbe4BLeecU274Wusbrrf3
z2NuZ/EqWNVNXOR2yPIAxgVNfSmDApd3z6sq9rBlgkEP2Kb4PBE1dQeWVXlqsrTcY/BWROW0
rsQu1Zl3v1qgx7qeGzE2kdwsArmcGVsM7AxJLjH5IYZriogbocUH2GUSM2lxEcsNCEMskWa/
hEyCzWy2oGwDChUYmVwkz2ReyqYCzGo1swyMLWp7mD8+0plLOhLVk82MlrgOabRerKgYj1jO
12Fg9v3cnq14WnmsJXjhrNWOZifZZhlSQWMJqyqBIWdRsRii7oZ+l4zWoa2oK88Gg1e1TVlJ
w/0oCuylrn8Dj0E7rGxAsZzBKPVNM4dDLDWC6/q2NQa04YBiqQG7MrhFA7VfgBFwoMEgAq/D
x5U58BazWUQ1ZSLr0XW9XBPlRFw14eZQcEmZqqPt43zWsf1w2iio995twMLKkyCWWG5X1e3/
Xt4fxLf3j59/f1Vpo9tg3I+fL9/ecQYfvrx9uz28wq7x9gP/NGe0wnjOu4ybCLnw7Rxo6VGJ
0QrLAqhzRwkC1Jj33AO0qon8ooiIGSWct0vgnEai4xmMTPnykIro4b8eft6+qMfl3u1tcyBB
aSHu4iXcVlVGYjmSMGQEGgtdEFFkmXNeeIoAhiwx9PHw/f1jKOggo5efrw5S9c9L//1Hn3dW
fsDkmO4Rv0S5TH91lQzse+zElIAweXmyhUv4PWRn1VEHJY9QLLgODnY8Ohh7cr85tGHXg2DT
I2AD89niRNxHdUu0iOhzcByJi8hGR6gPOsFJUnEvaNp6mC82y4dfQDe5XeDfr+MKQQnhqLkb
SlwLafKDYsShnQ7hM7QNBLmkhCfQ4IEbc0z7pYR+S3oFJMYRpph9dVtRbgvQrL4ENsQ5Zc1x
3tvY5urVMlpHcRMPDBvdk4oh8ig/6lKIe84O6DoaR2mzXe3DoA7jSQSx99hzoSHpybYGHYx0
CByNrrbt/NG2EeG1nlYnuvsAb85q+tXLeJ52z7yi8i9r24qSvA0Gy5LUc/SD2O30T287aG8Z
DgQnvj1+g8Pj7c+/cdNs43CZEQM2DormmIAoM+8HcXyg/Mew/heRnabwDOc8p+We6locctLz
xqiPxazAwGtLqFUglfQO19JEBXtu8z2v5ou57ya5K5SwqBTQyMGSihIBuyV1A28VrbibwIpn
wmMl1GdoJacGkbJnu1Kesf5DTJW1tkH4Gc7n88bhOEPCg7ILz0VEGjf1nkzRaTYIW0RWCTuf
6ZPHycosV0YkSzEcZm4nP6oS31VJMvciPKnMAOP7OlNscoIjzx6ngjTZNgzJZA1GYf00oL1a
tkv6gmUbpbgPeuzoWU1PRuRju0rs82zhrYxerjp5HcrtvoITjAgDjpz8YtuMynBrlBmyaZi7
OyUfWIXO4mTNa3U4ZWgNRI8wz9NWJsl5mmS792xqBk25J7UA1Tu8jjV7mIink/BdTHRIp2PE
yA88kbY1vgU1Fb0uejTNDj2a5ssBPdkzEO9yewMTlFZhFsG40cxaXnuOydTJjW/oU40ZZmhc
PLlbxvZZo31tEkGmLjdKtQb+oaEkoM3MEtjDTQ42rg8zRXDLF27Lg8m+8+f2JdlhkhWkyQp8
rCWDoxDTPzTuTjKu6WBnyy3ozDNmgRO7cEueP4jJDyzCYFXX5J7fJbQfRkJ3gbd5dy26mcfh
Yk9fLAHcs+BF7SvinoI2xlfd0tczQPjKeNwSd+l8RnPYp3SCuVJWnrn9Vlp6Tn17jzx6PGfl
8UrZrMyGoBWW5RYfp0m9bDyXs4Bb+d9NA6y83EXvLhP9EVFpc9VRhuGSPjwRtaL3TI2CFmlz
9FE+Q621m2qK7k8+WrJZFISf1rQ9EZB1sAQsjYbZflwuJoQW1arkZii5ib2WtloOv+czDwvs
OEuyieYyVrWNDZuqBtEamAwXYTCx28CfaMG3BGIZeBj4XJO+PXZ1ZZ7lqSVmZLuJPT+jJzBc
bGb2CRIcp1khO8P5bh11+ulsWi80CuZHOw16dcgndl3tft3mg7Kk6gNTSXHIWbxyvB/diQkZ
/inJ93ZO1qeELeqaFpaeEq+I+pR4eA4aq3nWeMuRbqBmD08swUxpVh8j9gjHBl6A0JW2+BPz
CL9PUCMc2h7/vDKdPHDL2Jq0cj1bTqwBTNlXcUvoYB57SDhfbDyOd4iqcs+LpOF8vZnqBLAQ
k+RCKNERqyRRkqUgB9k3DnhuukopUZKbaTlMRJ6wcgf/7NwJHp8RgKM3QDSlkkqR2LmlZbQJ
Zov5VClrWcHPjWfDBtR8M/GhZSot3uCFiHyPFyDtZj73KHCIXE7trTKP0MpV0+YdWanjwxpe
lSqj5OSnO2X2ZlMU15R7rnSRPThtRozQKS3znB6CfNrE6MQ1ywvQZC1Z/RI1dbJ3Vu+4bMUP
p8rabTVkopRdAlM5gRjDPIbAyjGDjus728cE/GzKg/A45SD2jMH6oqIszUa1F/HsXPBrSHNZ
+ZitJ1h4CHZxTH8mEHk8O63ymdyiDE8LeTpf4dknFReHq899TAt/KLttNquU9t0tEk8YSlF4
3qN2CiiDKl7e/Pb+9np7wJuM9ipBUd1ur63fHmI6L0b2+vLj4/ZzfOmAN7nKxay9BjBswCqq
mFX07obII+hjHgsfogu+Z9Lj/oL4skrCuecZlAFPS86IR0k09Jz6iId/Pv0d0aI40PvJxdmP
O2/K5kI+y47kgyU51eclhasO9kF6uOO+CNiVT6SzK01NX1wTZdj+CGxnKyFQzkNvLqqUwsl6
i9ezNEuXQqYr6ibdrHTQFSkkB5nVO6cls70eLVwvvFBIM9uxiTCTfpnwykP/fI1N2cREKRM1
z5R1SbsdKKfah8sb+sX+Mg5g/BWdb99vt4ePvzoqIlvpxXe9ldZoVad3ydMnUclT4w9Tgw1P
CsrpRnlHD86kg9FAxsRF57cff394b0xFVpysQB98/DjhsXVSauhuhyG+iZNzxCFCr3DfNZqm
0EHfR18uUE2UsqoUtUukxnN6v/38gi/PvHV5Kd/tC31VHu9J7/fjU369T8DPU3hnpzCme+TD
a5U88us2Z6V1P9PBYL8qVquQfjDTIaKk9IGkOm7pFp6q+czjuGTQBHOPMaKniduginId0uEo
PWVyhL7cJ8G8INMUir888SY9YRWx9XK+niQKl/OJadZsODG2NFwE9BK3aBYTNLC1PC5Wmwki
TxDxQFCU88BjvupoMn6pPDfJPQ3G26DNbaK5VqObIKryC7sw2rFgoDplk0ySw4ZA30gM3zUN
mio/RQdfTHVPWVeT7UWsAK1qggG2Ea2wDN+kOqrHUojVauxWhq+MemK3kAEBAg2ikBR8e40p
MNpl4P9FQSFBK2IFBqbfRYICaSe36Emia2G7Dxvtih0mKD5SOJXioMudOQjqPZ4neEh7Ar2M
DnIUijz2IKM1xQxk1oWBaIc5Jt17/wF9TtXfd6voZskpfs+nWxGAPpxw1ck7RMBjq80jzfqa
IrqygtZuNB4n1fXoc0jOsq5rdq8S7ybdjrVnmfsNDXSOz9f4iMaIafq+Q5OoQFxPtgNNgDMr
QQf0XD60K1B4XqIuU7EcXT5ode/l56vOj/17/oBClZVrqDRDIQi3eIdC/WxEOFsGLhD+azvR
anBUhUH0OJ+5cJCu9LlvQyNh7ScaCjozAS3ZxXZ3RmDrsQLktEKsW5EBRkgTy6StpIzUtvbV
ARdtN5zq9IHvafEkXWf+HrVnKXf9FbSI+NfLz5fPqHOPHOmrygqOPvvylGzCpqiuxpbX5h7z
ARuddTFYre3RMfUapY6tKulTKMufc99tSbOX9KGjI1ykE5k2GNG2UZPEdE4tBVfhRG32wxYO
UrDznjtAjqltptO+mbefby9fxp5j7YBVppzIzKvUIsJgNSOB0BKcMBEom7HKoJCbmR5NOh16
4c6wQu1QQabi9EyiSDsHejphvrBntWq+IGQieM1KX39SnoEYRz9YO1Blpbp1wKxVBLbLbN+R
kA3xGjTd2CMsm4RMPdbUnL3XHNZkXCZJyioIQ+p60CRKrEcYrQkSsXfu8po+nlqifNf7JY+Y
M/v+7TesBCCKS5V1jgg3aKsCcXzhNbebJB6juybBKU0E+ZR6S2GnwzOABk+6tX7yLP6uXzJF
91lM7ZfsGhUm63P4dUvoZFbRHVfZtoSMoqz2GEc7ivlayEeP9NwStcfKp4rtp7ivJZ0iE7t6
XXs015ZEv4AEJ8tkZXBg3UOXhf80BPROJsDmU21EeOuCWchjsRcR7L20i3X3pWD3eJ4vVn6G
wlBWlEQNuxAcbmj3yyr6UFAo+g3IwnmhrvVMJhikE6dA0QG+y+LEjHNWUHyCJeaRlShQIQqV
sU2FEZMYzG9s3xrq+tR9AJ3Gy6STlpu+BklB+a0p3AXfcY7zvdN79TYhvm0zhJ1dhufZXZB+
rkLkVt7IATtycxpQLKUusge8vgciwCocv+9cdi6ZFZWHagawl8dF/8LIQORDYd8N4e/Gfcan
w7FsHx14dHTf+Kwi+FekxMQpsE0n5ChQqoUTTXYldACjWwCVEG2MpyUlg0oAJOMem4hJmJ3O
uc92gnQZKVkhRt8KOL2k2jXQUbk1AiUjFEuLFGPB66sNV5NQLRbPRbD0Y1Rstx9rhYECf6rn
Ho3AUH629RDYRpOrZRnoIOrBNwJshyuXRUorf4hoHMu3uwPdL+ykjBuQLduVJ6meJ5gmGt4I
Glt6Qccd29MD9/FvZJvxK7kIVdYhzJ5qg93nvBQMH/yArdjcyABMp8ZDTJv6AKV5uybHmKPW
SLLPt0P+CRxXr9xiJJsTUldED1AJwP/CaLV7z+jpysV8tVgZu2kHXC8IYO0C0/hxZedc66GN
XIYh5YvYkmC8g10bKNhzty5QeqgbR41KK7uCQoh6ac9epjy2AhIIPdyEztilkKvVZgxcL2bO
lxJys67dTw77v6e3gIGtoYuNVC+IkV9ERukQQYk8/M/7x+3rw5+YTUHTP/zyFT7tl38ebl//
vL3i3fXvLdVvIER//uvtx692lRGublTX7VHFXIp9psI27aBvB9nJ7O5YDRKZ+J4FduuKaJXZ
IduyK6jKggo0RUqe8nNg91cN7x8X0uh8gvrRpbx0mSv329AVO0WMVFgMkvK4qN1aYW+sOGlO
BmT/vmebwPvj9vMbqDuA+l0v25fW74BkjljkaCg8BdHoYySZb60NKR3s0bV5EhK0fPmGl2/z
and6fm5ykMncNiuWSxAM6ZNAEYjs6gkc1UsCNkF91dYyfP7xFwx9mAyD6+2JSJM6KpLY5oGd
FKNvQb+Aq1DIs86aTlTGHxU1PuZ2DPb2OjoPJLhfT5DQbwrrPC6DSlEQ7wMbOJ2fzC1BGn5g
r0lf3pGrouE8iMcX5ViBVuRoJQfRtVD/146qnq7BcbW13jpSwFOFqkBytbJR4MvXOprIU9ew
K9jV4YO10XjCLmigQJuQr7qLkwhHAZMscHvlGtMNVJI+zpokKexKlD6pXtN2gMR3zfXa8NRf
1CxQj6aOYGrIFhz9OV1ndYSDfh/CqTXzqMBAUaO/racH/S5lwJ6v2VNaNPsnOaRCQc7qEqa0
LDZiKPjn3NSbU5nnBSZ/0q8zOp+gSvg6qD3GAqzZe+rIIqX8gA6mDwv8sGQ8fW0gzUen+2hc
Bf7yhqkczOFhFSj7kbq5/exxIe/4LmVVgRSjhYuwtlnKFoaVRol6JvGotDrafjBQjWzLFFF7
LkyRueuj7/D/qCcrP77/HIumVQHD+f7538Qj3TAD81UY6lfsHfef1n8QvUq8aVENP6CX19c3
9A6CY1W19v7fvnbaxzg7nMiiqjQfOGoTdbWIRuVglFYBEPFJeoD3Lz/aJfAvugmNMMz4Kl++
bpvisLZXTC4eg2A0DBVhbKbob8FpVAQLOaNeXu5IJEyobdnsMfV8NaOUmr52Vj8+roMZVbg8
hjPaE6WjoMS+EVF04GV5PQtOxRV1RCMTTt8EqOcVqdL39bMsy7OEHckZiHjMShAIySeaWho4
zs68hFao+dfBklj9ve5HvO2Ag0j4RcjtqdyTX+eUlUJydXd/9xuBvszGdUdy+ZiERp4eXOLW
idYCQKqWVYHumDr/52oedBT5zpHElRTeZs9yahHlU3tyWRxPlHcee1awduU4UOWmM+vl6/bh
ma8vP36AmqS2LMI/UJV8XMLxiqIBMXN6EEowsrLDKXAaF+QDFIiML6ywHppXULx/8pXYVfi/
2Xw2KtVvFYRG4lCWHuFFYQ/JJR6NQnj8GxQyuWa1j6n0rG/DtXys3W/Bs+d58Ggk2lNQ9S6q
A8TXt0z7iwKe63DlcGMnmLTqQgFnyG/tx8V7fucDW/P6OA/D2mlWVKHbPWk7mXSwhS98QxFc
RIZ5W+4QyPk6Woaj8/L/KbuS5sZxZP1XfHrRHW8migC4gId3oEhKZpuU2CIlq+qicLtU3Y4o
2xVeZrrn1z8kwAVLgu45VNnOL4kdiUwgkQADXxb68ucPsbxh4xJxODThrd2Yag64A0jSPWEE
1GF+nqURW2RY8yjB5L+E+7bKKZdDV82+dfFh7fbVlx0abkDCqyKNEtLcHp0BW2RpgEZnm1F7
7Axavk76Jdt+Ofd97SRftywNsVh0Q0sWmCgYFz9/A/ZtF0cBx4KYzXhK7GLeNpyRSajBHorT
rJZIkptr9gBY9Zbzv1F4sersrq2MIbCcDHFAYhcpFST3tM2M9kXOKBrNRc2nXZEdq7qeo0a1
H9RICGcSu/nII97Un5GaCcSWSzljnAcWta26Xbe3xc0+I2HARnkDWxmL5TR2NAZAhmKVn5N/
/vth2LSdbaWJaww4Dl6tO02WzkjR0TAN9JR1hFP8G3LbYJ8M+4F6wbrvd/+6mGVSOyIQ2MFM
RNE7OEBzyVCaIDJKowHc9wWHCwjFynq+1eAhuJeumQ42uwwOyvCyCfXUUzZG9LFnQpiUMDk4
nl3CAzy7hBNfC/AyQC+HGCwkMbRDOBo9Z0dsy0lh8A5e734iyYN5gWvkGptH47BZ4Nc+23tz
q/ucpp4bTDrfkMwHOU5qBZqGQqejYyStPTjJyqd7td3x4TMUU8nDS6v1ZzdbRfdu6rVFphjn
9IQA4ymNBvI8iuR6cIapIlWpeagoQLJjp5YQuXpMa/polcHG3Ocz523DY9S8g02ODYwioYwE
sXZsM36b5T1PwyjD0oUR7XH50FnQiKgGgybIDTp1y9Ot9AfxhtID8dHNfPUrTU7owjjlItQJ
/fxHp0cUrXOWWhf1LAbRsyQJwsAt+oBQNzuJUGIcOIx1E6qZ6BlUGI0sVddCwm67yFEWaEd7
I1C3PJEKvJOdZ7rPKUJYmz1WUDHDWewJ4aEViIRRkizkUJS9PNJRvHEUu6VX6ljKsFKIPg9J
hKu6Bg96D1znoFHiZg1AwiK3qQUQ8TRAxmazYiHa1EpnXCyHZKEkcQfTJjtsSiVVQ4Klvu/F
tMX8la5vG+NNUfgT3tm1ScO5iDLklSvf3ZuwwDA/0yHs8qrqD5vD/qB7GluQ0WkTWiSMYMuf
xhASbYAbdI7RGxJQ4gMiY0PagDAdw+RIkdoBYKoSGpRSNLjEzNEnJxJgqfaiWQI81V5U/IMg
2JIHi51gcMQUzzlMPEUKE7z5ulyYSEvZ3XAIaId9e0MCgBa+XWcNia6nVdTNHW5zdA12ODsX
EC66I3WSbrgIvT+1yAgquhgLWA6xwylxUynKuhYyoEG+kGuMaNIcmxLK0F2oThXdCHtw5aYL
GyJBtMYSlXsldI0ePE4sEUuizk22yQlLOJPlRTpg3eXXqAvdyLCpI8I7pB0EQIOucZtuI5SL
DCVTrASDWwC2AzyyXFfXMWFI71WrJiuRIgh6W56w3KooQiOkjTicJ/uGO+xOLXz6Sx6iFRSD
f0+oZxdijiC+LX2P7048ctXAd+wNHnRt0jjESosKPYAo+TCDkFJso8fgCCO3VyQQI1NZAcik
BV3C8ErSgTiII2y2SIzgN0MNnhjbxNM50gQtEiPqfAdLNV6WpZKDpWiycWzeZtKACBn7EvCX
MEUfYWjylgWeC6/TGw557HnAbkql3K4pWTW5UjkWl6rcODgfO7yR3mzu4Go+eCFCMGAatQaj
Q0LQk4/Sxe82zwyoOaTBDKumfnqjUROMN0U6WVCRMSGoqD4m6BFlSwqZ5AiRCaUApLRtzhOG
TVoAQorUZNvnaoOq6oxHtCc878XUYziQJIjgEICwRlHhClCKbsFMHG3eJKcT1l5y+zzFZ0Pb
eJyCxm9vG1i13Fp01z1B2lGQMT1DkNmfWNkEkC/P08EzcqGMRVOShCFdVAqtALZRnVIKgJIA
nZsCim9psCTdIHRWmDRYNQckRbRWha1YmqDt0Pdd4jFP5xQaISOXxRChvOCE41p5R4IPlj3B
k3C6tGBIjoRgdchE0/HFdaHaZjRAlgWg67FfNTqjFM2sz5Ol6dBfN3mETOe+aYWRhCYIyJLU
lQyINSfoxqNEOp2iCggE4srbg21UYHwxj1GXspGjJ5Sg7XPsOWXL4+mWsyRhvitgMw8nvtuC
M09KlrRryUELt40kgExQSUfXOIWATPL4p2iMdcKjHjEWFBQbnoIzFNPkGrVPFFZe47F5Jy65
F7pQsBOcqI+bFrhD9jSj4KqAtTc7G4A3AdFvesvFKDO8TwYSPI7Qy2fG0fsyA1PZlHtRNLih
PGxNg3mYfT43nf5Y6Mju04lGfLd2ina+3Vfyav6531e6R9OIjw+xb3ZHUeayPd9WXYlVSGdc
Z9VevR+I9gv2iXwHsmszT+A47JPhOKOud3mGPwY4fmWWya3kh5UDBvBjlf8tFvC/qMvfqwO8
DYmMI+W1NgCL2UCscv/b7eNJ9WJSv+721a8Yx4Crx5lkXfI6azQ3BIV0u/xc9GLx2HVr+4aB
wTBWVL8bIThYGJzAoe/l0bi1PpVvYFmsw1DG/BrjUm91vby/vv1lvL8FV4vw6DTj7UNMqkD8
vl3XVSvjonq3Mv6Ac3MI/6azzpJrxj0ZdEW1sz9HYDvR4ZlSz6b9Km8yJEEgaxvKwKSyzisP
94QbJyIT0KExkCU+vqOKfDqWHaKZ5o3nKWid0RcERTHZZ2/KUeX9+9vDt/ene3AbHYOxOYtB
sy6s++BAwU6+JL1jCbqtOoKmTQ8RiJSvj2fnRn6W9ZQngXMLQWeBi4zndV2ejECGM3Rd50Vu
AjJ8TaAbzpKK+d7IdE4tFdPOG0QGmmkPN0Ow7gbUdkCcaeYdSI1u3SGVeYC7InrVekJ5ZPeK
JKP7VbID5EGfpv9ORPOUD1Ia9mWt4NQug3HlcKI7BQNqjG1zTSAzG0adMFpJGx5OsvlyAnG+
UaJ5pVQHnF64rmKhQsvm0M5/erhE1FW5sTkAVPF9W2N6KKSlRPKvh2x/g9zcqtscnBFNQqcT
5rVD9k5+3Re5EWxyzsSMYmHSR6dUoxc0GI8kCkzSaSxvdoV0oDG+vxGWRI0r6QDLE3Z0P3hG
I7PA46G8PVvUAalDHZ2vHSqPMaqu8k9UHrpUngaJPTGla4LdgpKc4rtfM44ZthLtY7DLzYzG
3T+9scsvcBcGvekupzlgZjKYaxbQ92V/MKs7HqVrYmCg2KcwE90feQtycL3hTLyPAk/4QQnn
UR9xzCCW6A3XbWFJ2kZ9LI87jXS6Ml9aOLoqTOKTpadJoIkCgpCsiSvpN5+5GJeOrIQtF7R+
2eoUBe56Zn4s7HdvoS2/YaD11TlrGIuEYtjlmb3WKcdOe96CowPqYzskWDcH+5M2q5sMNePa
LiZBZBwHqTN8z0msAlG3Wpn94DNq1XLwCkCoyhHAKCxUQVTR49urcUQxvi+lJY5vXE8MPF7I
RLm3+gTg5P3q1klQ3VVpQjpXkgtMSFrPxkt/W4cBWxh3ggHeeliaL7c1oQlDFMK6YRFzRlif
s4invj62XN2llqU8o1Giq1SMgE9PQh9nltVoIrUPZ9FIYNNArCM07tDCwP2WmV5LM9XzjLHG
gHQuIFGwqIHKsvkqvd9dN0K/TQjXNzv30qW1tUTgvtyAJa2fLEwkZU5gwLo6QcyuXd1nmxJj
gEAZBxVfqDs0pqvUzAV7CnJLYeJDKzx/IKOPoMwOq9AsNmKyYoUblI4EaQVp7/A48kHSFHrE
ipYVEUtx4aExbcUPfDNWY3JcUh0W16TRsKnjkbQnq+eDMuS29oHwKGtisZyDbYE2mOvb4WGK
MeXAYKG645CFEDz3dbaNWIT6lsxMZlCJma7sBT9yjBhaoKqrUxZEeNcIMKYJwbbhZyYhfWOG
djus/ImnshLDvY51Jp7Q5e6US6in+LVaApa/B+fIJMaKP6n8aAUAjdB7JQaPZR4YGI/DFC+5
BGNs1TZ5UlxijJaCr+A8RS/yWDwJ85R7NG7wxKWR83GzcH0N1LDBIPYsCaO3kw/i+vmjBgkr
xzwsMjH6QYEtI0mT/qPlgmHrw5fS8GzTsCPnQYwODAlxP5TiCd422BfKWEH4Z5PFgTSbwsUE
FMSe9UZogBGJ2fLQ0pR1FKPKFwFPXijgntDyNhuq3NtMHJ33k6Lvwwij+FAajYG/U0IaekJy
mWxC2V6syHG4QI987z2OM1gM3TEfLFYjQb8RC++eyDsWKtjNvLP7ePn6cHd1//yCvLChvsqz
Ru4yTh/PuqTEhVpS74RZcBxZvPlDmMhe6HUzq5vaPoN7cx+l1BV7LQmzuPDOugfabfs9vMKw
d/OdsXNxxMLiHKuilC85zakq0jGshZV1WEH0yky/yz3DNi0rjpN6PJVDQUo5bqqtfI9mu/GE
YFLMcNzQ3ZQQhB075VRM/WGrH83K4q7rrLuGx1LOufits9HbrRHqUqazOqzhmrXGOlKLRnSI
FnRStJ9l+gEFYi+aFPV610Doe6jMFF5I/zA7iQbLWngr6P9IrEPF520G+5yyucwX0gAtIdJE
V8pAE+d613XwpgDSTsB8qMupS4br8TAxkKM1NV7gzaePRqnsHmvOqel29+PtHZtxQ4/dCnUl
tAdNfxtzd7yoXdnKExDQ4hE9e/a9NqazHnZLo25OLsv37qs9RhU/3T3dfX/+/dMff/328vD1
qj9isVpUsvmJRtzjD6k4uixLCOpTp+HyKqzegw+/P7zdfYesYdt6eLpMO7qC3s+OCTGvCczU
867DtuuBYXUoNmVvaUAzYKc3sGdYwB8Nb+Eg1UqP5nQ4uGrN2N0Y6soW4GrrQ7/DligJ9sTM
se2ZNVsHjxB9ghWrfSWKbNdzpJ+briq34EvhyVVIgEMLwenFH5ZggfHFznm104VnWE8RHqYn
5qxZkmfr8pzn5ouuI+TE0rI4fME34UBFLYPesTdFhbKSHCI29y0meAyWY28GrhtnWXjO9kKX
+rJwhi+5dkehVHvuEhpsKeX4LDMTE8oybmDbJSOep+vt5MIPyybWxST8uHAD27k8LvheGJwy
JGahewjBWGrKhop/41DCB4bgk1dDESZjcjnDcnZMKXMHx4eZ0GqWGFU8ACU/L1+vmib/BF4N
Y1hE3Ter6aTDg0jlOC4984frh5fLLVxq/6kqy/KKsDT82SMY19W+LPqjOe8Hov0C26hINXD1
bX7zQGZ+//z4CO4DcjkdX6hz1r2jG15weKgH8mxuM1S5HRURamkdMx3RwSRddP6utUWIRECn
AZWw2qDpNdI/yfdhh35kyDhbbC8IdGsfVVvqwtgWmgP5fDxqvngwFqpsK8Sb6kltcbx7un/4
/v3u5a85furb+5P4+Q/RwE+vz/DLA70Xf/14+MfVt5fnp7fL09fXn119CBTg/VFG7e2EQpr7
taKs7zN5Zj1FeSmf7p+/yky/XsbfhuxlYLNnGfnyj8v3H+IHxHCdYs9l718fnrWvfrw8319e
pw8fH/40RvQ4zLJDUe1cWd0XWRKiRvGEpzw01IQBKOHZtgjfcddYPO4rw+LTtSz0PNswLGAd
Y2hwshGOmH5tYKbWjGb2UOnrI6NBVuWUOWvvociEnkXdigorNEmwbc8ZZqnbsMeWJl3TYhbu
MG5328/nVb8+C6ZRfdsX3dSzrrYoRnpshf6RTMeHr5dn/Tvb8IKrfYg9JsjMbga1epwwchw4
+vlABnGPQTykbsMMAHzjbZtVz0lqpyiIZmzpiRxjG50KvekCiDllJdXUPBYljxOseEIjx/Y2
B/gmYeYln8FIvk0T9C7yBPMgOR/zBhVfBJlgCvCPH7l9nIROD470oVPsOXlsI+LZ3NE4PI8K
TxxJ4IkkOtptlKO3YkY4TfXrHxrVEe9ANaOfjfPrxKxbjdpkAEl4ZwhKe1rI5k0Q7VXaZKEv
4cvTQnJmbAQN8Ly4qc3EZGHISTzCpiRzu1+SU6dxgRwR4iHjEzhlPHXkZHbDOXHkQ3/diVkz
RfrK7x4vL3fDguY+3zWkJNSlLUTUrp2VvqmytsWQqoHecVsZ6Oi9EwXvjlSo4m5fAz3CjmBm
mCNTU9L9S8LuGKncXKqzVElqYjfn7jhcunQyjuKFkQJw6gyU3TGhEcESSxJP+LeJIUZjEMxw
glQzSbDKp8Yt0pEqzLeI2+RjF8f6yxiDzO7TJmDOviKQjTu6E7lVsRVsch8EzjQAMiFY2sfA
PBDVALYkAYGDoP6+wxDfByxoc+a0yXa32wYEhZqo2dWd25H7X6Jwu5BVdBNnGSKZgI4dLU1w
WOabE/phtMqwAEn69LVLX/a8vEF28/J93eyKg+cBqzHHPGENc2Ty+vvd6x9e+VK0JI4cSQj+
ODEyt+CkOIw9Yv/hUajZ/7o8Xp7eJm3c+v7QFmK2MPQ8WueQV09nTf6TykAYiz9ehBoPDudj
Bo7yl0T0ejIvheV8JQ0Xmx9M6iY7UbVmKMvn4fX+Ioyep8szvARiWhW2IE+YuzY3EbWudA9y
1+NyMyRWpTF+lXtINTullONPP88puEtxNxhK76/CshcN9vp8f75XS46y6UZbCbyxl2q76YgQ
NaZ9CN9oGwOzVX4qKOeBChC/x/Yzla2nzh7GhfD99e358eE/F9iLVWama0fKL+CZiBbdNdSZ
hDlGzPcXLZTTdAnUg7K66ZrXRy085dzjxqvzlVmUxOg1B4crwYvSdFUQeAvS9DRAY3PZTLGn
GSRmuuOZKI3xAWmxEfZRLeHhdlOx19FTTgP0Qq/JFAWBpyKnPAwCb/LNqRafRtjencuWODta
A5qHYcf1SGAGCjImjnwlUEOKfFTFdR4Eul7qYNQ3FCSK+kG7paC+UpbQiB8WUeicvuHE+b6L
RRo93kj9IUsXhnNXURJ9PK2qPiWo55jOtBcauKcUoptZQPZrvA6/NqQgojFDin8t8ZWoY2iJ
tdfLFRwcr8c9slHsylP21zdhhN29fL366fXuTSw+D2+Xn+ftNF0KwvZf168CnmKq+IDGRJ8I
ingM0uBPc4NREt1jLUGOhZX9J9rSMwM2peV5rJgmpzmKuFm9e/kowf9eiQVDrOBv8FypWVEt
oWJ/ujFrMUrenBbGQ6qyUBVMMF+ZtpyHCTWrr4hTgFpB+mf39zpAmL0hQV2xJ5Qyu4BNzwiu
BQP6pRZ9xrC9mRlNnZ6KrkmIbsCM3StWYaehxPjA5/H0UZo6oycmuhvkPKQsIiycSmsz8oSO
C/DYzeNXRlAhIB7LjpxS65RxnOIFCewhriDVNcwtFY1PTqkOWUy8LaFSis2UFDExc1Ydbs84
MR51H1qZYSfWMYuv6JhTFYgJn5HYHfxi+SH6eO2vfvLOJLPTW6GRePscwJNTUZoEjmxQZN8p
sRyPzJpmYhoXJqUWVjwnTheJ2oUns87bUx8HZjj2YSqhbo/jVGGRNQCKagWtrMdy08m5w50A
2WEGautQ0wCZBVAZblLLHBXLLE7cVhbqMw1wh/WJISQel3bZDAURqxj4uOzwO3VTMty1GWBo
5YOwXhhUMEPx/d+5ESjaz650VHIncYqS9Z0oyfb55e2Pq0xYLQ/3d0+fbp5fLndPV/089D/l
cmEp+qN3ORFjiQaBNcx3+2gIPmIRib57Is/ccmEL2zKw3hQ9Y3aiAzWyu7XeiCXKOwlh7gSp
mVJ24BGlGO0MZ3UY/RjWlpyGhMkUSL3qimW5oX+aUuIMd46LKxp0o2SSWZhL6f/8V/n2OXj2
Y8t1yKbzn2Jw3NESFPbt978G0/FTW9dmqrBFao5FuWKIKgmxii4mEpLuo8pCLvPxgatxH+Xq
2/OL0hwc3YWlp8+/WANju7qmkZmToLVmhJ2J6hNx4Mwf6vHWJ6I92xSR2amD5YsZA2qQdnxT
R/aIFsSTJZyzfiU0eubKvjiOLE2zOgk7PLLcBKQ5QJ3RlK3TgDlFvt7tDx3D9ovkN12+66nl
ZHVd1lqQmlx5GFRivL18u7u/XP1UbqOAUvIz/tCrIygDv8bd0nGI9M/P31/hQS0xPi7fn39c
PV3+7RegxaFpPp/XpSP1Ni93P/54uH91PQCzjRHvUvwJT1bE2HY+YOotJ+uDDn1yGhB4gtsK
NLLpNTvpuMnO2V5bRQeCdMLctAfdAROg7rbq4c2pnXGaXnge4CnAraW1DzvHuCZXP6nT/Py5
HU/xf4Y3Gb89/P7+cgcOI9Opf1Nc1Q+/vYDfwsvz+9vD02Uyt9Yvd4+Xq9/ev337f8aepLtx
m8m/4mNyyESiVs+8HCgSpBBxM0Fq6Quf41bcfvE2tvp96X8/VQAXACyo55C4VVUAsRYKhVow
jaOtDI1gqtMQA3wOXQRYllc8OukgvTud6UkD10DKEjBCi7fAqFCGv4fj0x+bImMTIrShSZKS
BWNEkBcn+Jg/QvDUj9km4WYRcRJ0XYgg60KEXtfQT2hVXjIeZw3L4MZLmRR3XzTMZnAAWMTK
koWN7vaMxLBKjDRZODh+sJOJVQ0oJgtocz+bVVc8kU2teNYb5xqz/K3L+DyKSoIjx0tgLMMK
B1CRela3AQKDGOUN5gDMs4w2X8HaThtWepaqSYfjSqCL+mVgfdUXPIFRpo3n5ISLyomEcZ3S
urlICm50llLAsYjOMozbwIp1reO2sbPGvGCZO1kwLoJpKF2F6IHJ9jzkvjWgCuhUqQ8U7sSR
A02/4Fx0Jd87e8dX5LMfYBK2nixWa2tWA7+E7Zij8T6ZnRurtJl2B3Omv+gJDOdm3DVWQpwe
1KSYRCjjdWq1r0OfRMXvakrHPhDFdFnaLRnH0Q+ZmVOkB/6skIMrtEjLBg43T3WaemsC5KgI
kAYTgN9NMCLpE8klQTjGHUcg+ltiZg2BmLn5gvD3vmlC3QPdY9bi/SBgiflpLuxvc9HMSCVI
h5wurCJWonZjR7Ecjg7u3JW7U0mF0QLMLIzM8UNA3wO9Dolwdn2f52GeT43J3FfrpZ64CE+N
kocssya43Bm/i3RmVANbN7VFgxYGsoufSoNjvbEGMqhFlVNJg3GczTghEiKCOjoasDpMjN98
k8Kiq+YLXf8g50f6x1trJmWwObM8pd+OI3WN8460kQMey2Xuh2LLmOPsU29y5moTqIVYmbB0
NTXys7Q7BLfUWBpCoHRBQs8qHjATk8yjycSbe5X+CCsRqfDWszjSL0kSXu1ni8nd3oTCMXvr
eUezCgTOzGSsCK7C3JtTs4jIfRx785nnz836O5ttfUJkb5dsOUtp6zHZ2vB2Qh4uiPRTMVve
RrFuBdZ2HdbSLjIjAyNme1zPFlRUfETmVTrzvIUeta6fGXoCBvyQTrT/njatMqQH2UftCz85
FAdK5R1LVOEMGGCSmAEDBlzraP2TdsocGD+hKdL17XzaHBJGK94GSuFvfUe6+IHI6fuptSos
1mv9DddC6WlGBtQ4OpbWh8EZmp7S5WxC3cUtmltynxfrhe40rI1H565M4Kg0Pf36MyIpaF/a
L7zJKinoXmzC5XRCbQdt9MrgGGQZveDakCeUBUvsY7Baba9sw1TzyUry2LgP42/MKlGD2AUc
muYHA41btNeIgqSuPM+RGyCvzYSrKk87XF5H6oYtNx7a4OeQJqwqWRZXdO5bICz9A4mqt+Qt
GaseGInSt72fH1CrhwUIxQyW8OcVc6TfleggqKu8vkpROpy6JNa533ssp3XwEi9q+s4jkTVc
vOnAq3KUWbLjdMROha7yoonoKM5IoDJ9X0Fz+HUFn5fCv9K1IK9j/wpaPom70cppx4mHtRPn
Mh+3k4Sl4lr3WeK7Bw/9T3JaBaXQ9BaUuC875h61mKUbXtJsX+Ijh+YLkds8qdjOXTbP44Q1
Wz91RTKSVNVyPXOjofHXt8Pu5B7yOgD+4hDtEX/wE1f8Idm0U+kOqowEHB0w3djKjfvT3zjO
UcRWB55tryyHHcsEB052pWlJMEoLaeIdZ73CZfnevaJwTK/yMHmfSvP6ymZI/ZP02HcSlExt
KXcNHMPO5hGtApEUeQZs/8riT+uk4tdXV4ZKiix0D0ZW0conhSs5rclBLNwarmyews8whnWS
X9mcBctglB3qNkVQ+ZjO3U0APBVkaTcemBLewawQ9iZNyUEUvTKRUMGVXVLmQeBwt0U08PRr
wyTgUlE7wrVL/LUjQ+Z4A+HjSvUV8938D7AsEXD+OxSFkqbOiuTKoQrXbTf/KRnLfHHlWBKp
X1Z/5qern6j4lc0M/E+wK7yg2gKjcQ9BtcXw6SrJtJsNo2TVFIK+UylGfO14O3Ce5leY6ZHD
PnBiv7Ayvzo+X04hyFRXWI3K/dBsazrOhJSNkmLs2IwJxEkZFUNtoJz6Yu9Geh5acrjOOj+x
eQNo8fF2eXt4I8PnYx27jbv+EbvufVnNHvSF0AHdkotVkdfL+fmGA2t3FVRqX7G1i2utybcB
b/CFBOQH9XIz3EW0OCUmUPlpmzC4D8F3fNFsdfUnYIbbV63i8OuXBlkyy4C3BqzJ2KHVJIxn
2LS8x8kYOYJjXV1GC3wJ4sJqtjvkixyJimZuLa45bIE/JlzQHLSj2iTyEigqexFrdCARCFQy
xpgoFgBygF/sVULvEsQd5BxYniPDIn37vODbZ/dsHdovW7L0cnWcTORcGdNzxOWgoMYnJTzc
xHRo6J4CZ3dcH6XjQiRrP+Zamsfam062BdUezLk8XR7t0gZNBPMBFVz5AqbYw/jrxAdyom0G
QX298SJZT6fj8e3B0IPcXJ3lGo0jblfjQkjeZo0wORXqCYVrlSFWRp9IVUCmfoGol+2b4Pn+
89PFwPyAPiTkFi6RsVBBUOXiDEfzXKXjR/sMjpn/vpFDUuUlpsz8en5HOwj0QxGB4Dd/fb/c
bJIdcoRGhDcv9z+6d/r758+3m7/ON6/n89fz1/+BSs9GTdvz87s0vnnB0GRPr3+/dSWx+/zl
/vHp9VHzdjI3XhisHZ70gOaFK0yaLCvHPSwDc2YlOPZlWJ92Horn+wu08OUmfv5+vknufwy+
Nqmco9SH1n89G04ucvB53uRZQotakskdAsp8p0V55spCSNNmNlHGJfdfH8+X38Pv98+/Af84
y0bcfJz/9/vTx1nxXUXSnTdozwJTcX5FG7uv9mDK+oEX8wIkbIdGo6cLMW5vmZO+O0NlAbeX
lyrseP3sCaoSGDOwfiEYCqvRiP9jqm0eMloE7HjOivCiwkGRQzGyIZB8QoiVN7HbjLIskTQH
qzJPOrJOlvKlNZMA8pYmyA/rqj6Ov7wXzH3SJSzOK+d9VlI4eV4XbyU4rQI9rYbCyURBIz4e
um+vkodXIXcrbGQvUdEWwtwk/snFi7mAP/t4xEDJXBqSY+FjA0gim1JGqDZ6wvODX5bcBiOr
HR9wglWKCUf8WNVOxsEFqo2jg1nlCQocrWn+IkflaM0+yBr411tMj5vRKSFA5IF/zBZk9j+d
ZI6hKYyK8c7WwMhKZzNRWXO69XOxY6fOwA1Xb/Htx+fTw/2z4mn08i22mr1UlhdKUggY35t8
U6aU3m90E5zK3+5zKVXqecU6oMqHtDl1YqBztAs0gDY70/NnY/AU9IqliE2EBlWOS+qYlDK1
06iw66jvPPzhEdj2tGuyOm02dRSh7ZOnTcT54+n92/kDpmIQBm3+3IlIdUir7uTnShtNCC32
uBVH3yODs8rzcI812kUQOnPLWyIrsJQUJt13K2wMZRqLyA2UVt81j2Axvjl15FayGpPxpOFi
MVu6xyZjleetrJ3aAjHWkz0AErV2ih5NnO9qx6dYbLisaaukjS1n8QT1T3L9VadCj2EhfzZV
UBisu4c6xkfhy2q6mk6pN1uFj5ArTbQBUuAapD+NEcCvUU6h9vsydO76SB6j1Y/382+B8jF7
fz7/e/74PTxrv27Ef54uD9/GKgNVN4b/LPhMtnAx83QW19bsP1/OH6/3l/NNijLSiNOpesKi
8ZMqNWKiyo0Dck5rAjtGiPbqjrcnix+D8II3R7NMnRS8QT6pr6gDdTFIU21ui0Mp2B2IDrqT
SwtsLTb05K4YE672S3r3QR3yhBhf3GWkORVszn01NepxyXKIE+HW1CD0QOdmHShkBsQr9QJz
qaKUrj2PGr/0hUMSMekqRzJqgwqk0lRsySQdPVkbdlJzJ+1REf6dmX7LgDxshCNPFk4Qj9KG
jEgq69UDECMg2Kymow/sZQjlNHWkCEGKejNz3KAQXVudtpDhli9hD7jL49NoxXauRGLY7jti
jVS52PKNf6VYWu3M/quBPrLMSIU0zKERlThlKSag3ZkO0grmSo94hgvqD3F5eviHyIrYla0z
gXFJQbKu0/4erxf9qcKnr0rOf6qJUz3mT/nIkzWz9ZHsQGkdqwTF1WlB1R6qvTRDB1SCqQjS
BExFmTYMIRC3KVFOzvCSsT2g/JnFbKwYxRc3Qq8ha+gsW4g2SrzvV1NPjwqvoEVttdIXs+Vc
N4lS7QvS5cxbU9CFDe1yqZntC8rJBF2yKKcNSSBtpiZWa8a5kTrwck6JQz321jBt66CT6XFU
1ziBgomH3twuHKF8JIEzl5v6LOYPo01Sejzp19liFwuZTkLqpUfDgNk/aY484Km7UY9dekSl
68XkaqVrV0TddpmzPUZu4VQY2mFEdWsoHWqnd+xQy5k9oV26p8qvTAlBYp2mcT1WTxHRAoOp
NxeT9cJu2iEdDVOfhcA9EpsQpF7n1LZpKcXcm9i7Mqlmi9uZBRylDlHa9sDHdBGj7ldJsLid
ku4FqrYunePLaL9JPzZrj3QpFd2d3VWhtySvKKq3YjaNktn01p7FFuEN0RMGLid1nX89P73+
88v0VymilvHmprU7+P76FYXdsbnUzS/Dq+Ovw2GhpgTv/anVhD4poNXp5OjIStqhYQ1YVWH+
rVFFGQ9W681YmseOVB9Pj4/GoaY/othHSPe2UvFUT19g4HI4RbZ55Si5ZSDobphfOUoPxvv2
GugoAkdYfYPIDyq+546k2Ablde7ZUXXPX/k4tP7T+wVVtJ83FzWUw9rIzpe/n/Ayg86Ofz89
3vyCI365/3g8X+yF0Y9s6WcYoP1K/0cxz2m6wod5/zkZXI6tV9meDv0AMG023HQdI8nh/xkI
fxm1ShnwMxDZc3wZFEFZaw5nEjV6AUWoRZOw2A9OuENMvbJEupVHEh1vGXUPlzi2WugHtITx
tXe70o8FBTUjRbQwbwxjs6ln+qBJ+HFGp5BThRZz0gukRRoxDlrYlPgGX9HOJGUVNIajHwKA
j8+X6+m6xfQ1IU6KiERFIWa1lu/HeokB6pDD8bFl5O6JwbhZFhs+HQjrEwyC8JmxRJjYVlGh
QXItWBBKyKUPEnis1D8d2aHxjxyptXt4JBIYNfPRr33QByjp1Nuic78K9RTzdyAWoQUANCaN
04pCGG0JZUp4MwnLwWpdR2bkk9iKutVr9cMaPD+dXy+GGO6LUwbXsSOS0nNoapqHiWhKX5oc
d7Vv6mhsBSBrRyWsvgTEQcKJz21PBfJNWZnWEw063tUGlu2BC6J1MtWXwJg+vz4SDxU9Gjgh
o4TB2syHDT+bgNPmrYgrMJY6tIeXd06aEFMX/ITGJ+NKIwYO7yAX+gMPV/mEOhttq7XAu2mr
NVmurMm9jLg0MuOXRgDjIOPXUrk2tTCwM++i0ARaJFkuiw8TLaGG1UIHQVP6MZ2ViqgHw9Yz
QyD3iJg6cyQ6xYRQLyNQ50wz+NqXd83mVOCtOPUzP5YizfAl4EdXEkwg2o5XjxCUVesRJ0yf
Hj7ePt/+vtxsf7yfP37b3zx+P39eKOMiuQmo6I1w0YiVu3ULAC7DQm2E1W/bL7OHKglGbjz+
hTW7zR/eZL6+QgYyuk45sUhTLoJxxpcWucmzcNQyk/+0wMIvbTudFsOFfzU1R1cBWtA456kl
ks/VbVtHA1bdrqfeCJzJUkvlJGh/FDBhTd1uDHzkEx1WKMFj8wxqsft0t544HAJbkrW3WDSC
4vEtwU79xQNeTwVYJevprUdLz4B0JaEq16upRz2QKMdCMww0wI4xH61/uCbd//P9HQXhT7R+
+Hw/nx++aYeLWtsqqp/GBmQQ1C95qVvPaUA4CMZRiBXmSzlbGjE2deSm/mLuXL1GR9ZznShJ
E4d73Yiq/H9U5+/Fkp0I4zz/9evH25Nh/dGN1Cb3HXbVIAs1IAetXCkSMVPMAf4jbCUG0S4m
D/VYNFER+xhJQ3soyTic5AL2sfFMIqHQTZGXrouITiPz1rhWPSavCZJdc0wy9LLaHb44+o5O
xg57+jR3WBjuxGpCxhWMS3YyHslbQMOENwbioFh5cjoUlSdnRESbknbY7k5sg/OY+mCS5wXe
pK9UKH0rxhXiozhRYWexcaVClV4slEYIo2pbb8FRvbRHed/GAzmc8snLXcpKKd+B7Rc2G60b
1BZ8PjPiBaTVrkkJa7v4/vOf82Uc4LvbpbEvdqxqohIu7Ydcd3XvKPyCHduTaUAeeYI3FyED
oOjt4DFmwKP59HG91DJVjc19u76l6lY+fK3VBOYBCB6arN4BXkZ0BzMZXgtnmvyGP160H3DK
G5pvCWIqX7y0o6TkHaCBUcpCYHSdraVRQcozTHJqFzdp/ONVmmALe5b140YLGilLEj/Ljz0Z
dfQmO5QxYeftam0gtuiwiqyrKBlwSGYISi1b+8OMlhU8vz38o6Lp/Oft459hUWmMUOmejbAH
AN2KkNryWrk+/fQLjbydrxdUE+1MyBpG8MVsMSULAWo6d2Hmc0v60XBk1EyNJAgDtpJO+FQF
iLXcygkiGQWtCQqyU4rzjOH7wIjLsT0As4FFaHJaNZlyFsXb948HwoYB6mL7ClVOevx/gG6S
0IbiU8YmNya73+bplhLMisAwAuq0I1AJ9UKrqreEc3UbNFLnKpCVOzU+v2J8yBuJvCnuH89S
G6rZ/hil5d0kEnalvXcB3MUq2JF1vLVJeL7XBMM8aqwLp5+GTlCz187rATo0xlYEyc6QCk+4
MpYsNY315UCU55e3yxlznVFPpFAmrzCP3vgIKd9fPh/HK6QsUmGE+pEA1I7RLz4KLTVPsTQu
BAClEpRk/eW1Z/V1FqJM2JnjwLp9/SrTEQ76O4WAHvwifnxezi83OfCqb0/vv6I0//D0N6yC
4YVcia8vz2+PABZvgdZBidp8vN1/fXh7oXDZsfg9+jifPx/uYSXdvX3wO4rs6b/SIwW/+37/
jKkNLdxwqjUV75bv8en56fVfmrJLARrUOp8p5NkaleyOGF12rAL5kiMrZ/9e4L7TuQWMrAcU
8Ug0asHtSsyq2fyWCuHckgHPns4XKy1Ew4CYzRYGtxow8untaqWr1Xo+I5pVVuvbFRkSsiUQ
6WIx0V42W3BndmoZQeQOd3lOSnhZpclo8AP3sgngoaFIkCAcSLqy1k6sYoFZC/D0uMiz2IRW
eZ5YdIZ4JGnw+aZVZ3QXPRAvlAmZXBTwExb/09dHYkUgaeDfToPjXE/1A9BK8OncTCsF0Mjf
jR3e5AfeMPA7UT/HYqv1pE+8gtSuBYq07YNit/gPqfGjV+FqIL8CcanZJgGaeerHKCJR+R5V
hiUYgqWRArUgFVJYn0CIqSEfoINLlIaSD/jrvtOoncV0K2MbRcCgu4J2hsAhG6Nrm39ssvKP
aU9YoNeDmtcWJG/kDaZM98zo2eqeDUXyoHLct0smZM7qLt89fbklLiBw24Kz9q9PyZGHfnQh
05RFeF/DJkibXZ7JTOkeIqkh357Qyrjx1lkqDdi1UdZRWIWJgmOx2OYZa9IwXS71tyvEyqNJ
GcWbxTQED8wyrW+0+pbOhAFXAXDqkRd3ebcNdH2y4qalXxgBuniYMED96ciMGmgvZ/DDXHEI
SIrB6Pn8gTbP968P6Nrz+nR5+xivrtI3hI1qC6cuKzd5MrbuJDQ/cBMqc1JJEPraW2YG2za1
ftr7tA2j0/SpfVUwmsPN5eP+AX24Rk0Xlbal4AfcZ/Iqbza+MWcDAvU6lYmQgXeNSyAAQfIo
A4YrX9AOShqRbjtgSWwVGdWx0F8aWim4KJvW14wQkQfkyBxeq7NJ47IvIUzzThsf7AsC2YoW
SlNhI+HePp84cKkfbI+5R3yzzfqu9an9SIHWC0FeFwnpWigLlyzmpgUKCNgaxlUujMw4gS0M
OJUj4F1H4Ee0fN0T0NaOkTDMT+Fn59vcZLQSAUmUb78VsUpDbHXTBISLIE9NSrFhUhUzcKe0
yWUKuWE1hwfi+7qK0zgtBNdDhOKvpleUDeCEp5b5OYIUywyqkj5MWqMJPALik1R9JE04ZjHR
Eyri5cGhP88HsMRYc8jLsDUA0ccGWKvgGCFSi3DJjijw6OylgzQbvBo3ZlxiDjwXwcZTVopq
ngqkQRuvzTV0KChPhTOcDVDs4dCrqEMtEn046UHHrUDke7/EWMJP5I/ruKvz6v8qO5bltnHk
fb/CldNu1c6MZcuJfcgBIiGJI74MkpbsC8txNIlqEjtl2bUz+/Xb3QBFPBqK95By1N14Emg0
Gv3ghGFMuT1vpr09KxrmgObQggNIADAusgrGk4tbh2KEYYCZDENM9/DH2bsMicjXgmJE53nF
rVOrTAaH0oZtcAMTQ8NgsYVsBQa3Pqiz7h++OnG+G1paNvM2ILKhjEQqNhTLrGmrhRJsLE9D
Mzx8BoWrGR7xvR9jQB/c++3r56eTP2AzBHsB7+u9qyAg0CriqkxItOZrre1BwBodyoqqzNDr
0UWBvJmnSpZBKx171q+kKu314J3sbVG7HSbAuG3ZSdY0G9G23Amx7BayzWd2KwZEw7I2sSzm
aZ8o6YThO8SvWGQLUbZZ4pXSf7yNAdz2RigEjSb1+NxMToC3wLULe0soNFf3ayBe4X29AxD6
2jSkgOe0hLDMnFsNegRK/zcqrUBGQNmlIPfcgCC/q44hp0eRyySOpuzkMeRd06ZxbBThj2bQ
yTnLMhwX5xEa0k//X3pr9G8pYU/IW+idOTri1OpN2mFO3n3e/vHt/mX7LiAkMZaZM1S7HesR
z9lK2eKrEb/sS2/F4++bM++384qlIT4bsJGOTl5Det4WX2E2hXLOc20siUebkUTSknuIGoiQ
o6GEUjZeX/n3UAE3AYx8UFnRcFBe8H/iYJy58IPrwM1S1Yn/u180FtMBQCMJ1q/UzEkuZMjj
RqiJrJe8K3KSEWMbKeG3PgM5+3XCCjy34WiG3nRqmFjn/Qep1lLg2wWyWz4gHFF1dQLVxfGx
g4CQwSE7QnkflRGPN8AawyFGzHmI8A39M8d6xFggFX1kVQoqy6Kuav5LlbYdKvwYOcBu/3R5
eXH1y+SdjYbmJZ3103NLJetgPpw73hIu7gP3auWQXLr2Nh6OWz8eyUWkX5cXTko0F8dm0PJI
Ju5MWZizWJN2MAsPM43WFh3A+/dRzFUEc3UeK3N1cRqdjqvzn87z1TTW5OUHb2hwNcSV1F9G
Rjxx0in7KG/WRZNkmdvyUP+Eb/aMB5/z4Clf9wUPfs9X8oEHX/kL+9BzTjXsEEyjRWMbalVl
l73yixGUV00gGi2zVVWwWXgGfCLz1taJjfCylZ2q/CYJpyrRZhEX6APRLcZrzziDmYFkIWTO
tY1hGFchOEswAkzKIMrOTmnkDN2JZDdg2k6tsmbp1tS1c+fJIs05Gacrs8T14teAvqxUIfLs
jgLY9o3M5/REPcSp3j68Pu9e/g4N1fGAGWvDXyTACWtAJoodGpgDXsE1wJE9ZqYc09sWg0XK
VDcyvrlpzcQAt6qC3326xHQ8OhAvVyed6Vl7i9bjDb0FtCpLHMl7IInYuWhk5GwjTtGKGeq6
QTqNxwOeV4rUHlrdyupiRUsBbaRCrZJODGUJUBwamm+XH9/9tv+0e/ztdb99xsBXv+ic9++8
T1k8fX5F24Htt+2DyS02LB1jIDBOle0q5GM/vjM1r7bPj9tvlIxq+4h67XGxWN7eJ7vH3cvu
/tvuv/duq0lCF1fUePR4Hc1Ke1fgLxxzsoKlWjpCv4WKSTJEAusaBbsk4l/mkc5hF1uU1hUa
F1910Ls8//3j5enkAWO0PT2f6Km2BkXE0O7Cse5wwGchXIqUBYaks3yVUFyyOCYstNRe6SEw
JFWODfwBxhJat1iv69GeiFjvV3UdUgPQMhQyNSC7YbrTiACWLoPSMmGAg3+CX97AndxpBoXb
kFVu2AUxuRpxBmStTVD9Yj45uyy6PECUXc4Dw2HX9DcYEd5rrzvZyaAA/UmZERUaEx8UbNQl
sOKgRs/vQAObrAhX9CLvhoR3aE85bCnx+vJ1+/iye4A7/+cT+fiAWwxYxcl/dpgid79/etgR
Kr1/uQ+2WpIUQeuLpAgHvoRrjTg7rav8doKpbMP9tsganWHLn5sBFbk2WURnF5w5iVcN/Kcp
s75ppPPu6jdmkb2l3TeSF5h29P2Ut5v3aN5W2SQW/sknent1vbjZsLd1s7rkNUVd88tL+MLA
z8MwyDOyF8TDcR8uoFnCVJXMuUBEA7INmUXC7HBpP3IbWK7WTHM19CLe3oapG2SftRI1t1ox
HnLbFcEsLO/3X2OT4PhJDidEIbip2Rzt642u6R8mofF27/hfHbhQcs4apzt4kzYwZGHJecgJ
CQrzmCNHDXcVoNvJaep6IHpcgz0mo/xiQJBpuH2jHhZzOg1PmjSsp8hg1coc/wb0qkh5joQI
Vm0w4oElcPWdn52G3HopJkG/EAg7tpHnHAoZjkYylV1Mzg4l/Z5TtQVvZO9W/1MibKY4sk11
PVzvLybhAgIwM9IiHGC7UJOrsPy65mqlRdXTqkSft2FF6z1BoQ7DzShkuN0BhpaVgTQE4Mj6
Q5TVYsAlym7GZk0e8CqZMvtollfreRZTgLo0pmdHtrlA4/8slNwGRGxsB7w+8+C0eDvlWZy0
aUc9dsBAAMsnU7MJrK4cG3bThsuSoMeGkjLLAmDnvYT7fKTMfJAP/d6uluJO8G5ew9IXeQPy
0pFhGIkqKmqNnQrq9lJK+FhVO5ksXTiJEUPdAfcxNNY8hoO3iM5++rWaghtBK1kXUYNcV3NH
YePCg8cSDx35li66P1+L22gLzvAH/5cfz9v93r2DD6uInidDWeWuCmCX05DJ5Xdhb+mdMYDi
2+DA/tT94+en7yfl6/dP22ft6zCoCEJm1WR9UqvIi7IehJotyD883CSIMcIMh+GOfcJwch4i
AuDvGWaQk2hgWt8yq4U8seDqf+TtyCNszEX5TcQqkuHGp0OVQnwC6aTKynn4zZdrhvHc9LVI
8THwGI49y2w8nLosPknqGLxP02DdU7j92pTyxz+U0z+PzZSppmaTIFo014LjqQbTp8vLq4u/
Et4t16NNImnCfbL3Zxt20HZ7N/MjnaKGbvgAHExjN0cEZbIIzNw03AGqT8oSw9tFvod2kvlZ
b5JESU5XKprbArP/ZgnpgDGuxtgVC1l3s9zQNN3MJdtcnF71iUStbJagcUYtlGuPv0qaD8aW
xcJq9rR9fkGnnPuX7Z4Cme13Xx7vX16ftycPX7cPf+4ev9jBXdC4wNZuK8c+L8Q3qGR1sXLT
osXr2N+gfEBBoSg+Tk+v3h8oJfwnFeqW6cyo8dbVjTlhDE1wn8x3n57vn/8+eX56fdk92rfK
GSwBieEgrF5qFb2w7nODHX3TqjKpb/u5Ilt1+xvYJLksI9hStn3XZvZz8oCaZ2WKLuIYYd3W
Lx9s+DHaiRsTdUB5YDK1QpOKpKg3yVIbQig59yhQp42RKXT2uDrPXMViAmsaDgsHNHnvbpKk
P3JVhX61Xe9W4F6H8R5sPejYFSMGNoSc3fJxsxwSPq6lIRFqLVpua2q8M9cAcsWZxP3lBjjM
Zke0A4n1jrvZuCe3EmVaFe7gDYq36UIoWm/78DvoAx6ErkxE0EBS4s3QEMrVzNulxQzSkJrt
H2+ERmCOfnOHYPts0BCUENlvbNDk6VFzH8IQZMKV7g1YRHKCjuh22UVu94YGA14caXiW/M60
60fyNthxSvrFne1+ZCFmgDhjMfmdHWhs4A30sCQce1PRNFWSAZO7kTBEJaxsEcgTgJvYniMa
hJbcvcNlEO6ENislZn7RAcVySk/s4ShCmiBv/sAylIK7panqW7gJOHsSMcZ62bEgb9ZZ1eaW
2rJZ5Hq01pZdSpTcskUpMDuIw2PqrhDNqq/mc3qh4zZx3fXKGXN6bR0KZY4GUlZj+R2+r1qA
SqVutC4YIP8KqK5RS8fZ4xV15sTuqygT5QJOO2V9ty5pzvDocU5rCjowrIOb1E6INUAXssUg
ntU8tVfB4XjQnsZZyaBq9Cdyng4PqE47DPTzHGORk7H3+JFwrlNZ25FjdL9HZvjde7UdhBSC
/njePb78eQI3spPP37f7L+HDP+XPWlFwUvtbkEkmRkrJ4bzPDy+CH6IU110m24/Tw4cw4lVQ
w9SyGEBrSNN+KmOB6IY8eXy0RLz+7r5tf3nZfTci2p5G+6Dhz+GAtVWdex8aYWj83yXSeUmz
sA0c/LyRrEWUroWa86fsIp1hWM+sbtkomyU9KxYdKqxwM449pGAoPVRcOgHIcDHUwKLQWa1w
bCgU3AmpNkCyBiQdpZ66LWaVLV+R3UO1Lm3pZsgPY+0VqBykQL+TmhCEUTI+KbKmEE5GCR9D
46EEYt6S729EnqUkWAbdqNCrTdts6sC2IwUlIEY5V12zwIMdgJ7oj6d/TTgq7XrqN6wtbj86
Ie9P0u2n1y9fnFsBzSDI7Jir2dU46noQT4w3bndSV1lTlVnk9q+rURXMj4ifjUijXTgafyQG
zMhTLh5NJ8L+D1gKZ8zGPXXITACfSCUq6Wgx/bQa+NZ4wCSY9zhcmwOV2UADrzl8XeLt5jMC
J85h9YR9GjBHJl0vzg452xGqG27DHfi9odGBW8NeGER0QrT//2BVcyhswORsBVeTXipVqbib
rlmKegOhmNF4B6E1XvRWmufVOuyrg+acYATJTDDwFeYqsc4XbSNE0EOcTh7brEFMWNi2aRqM
TX88DWZ3lVQ3QU1QAMCUdA82l/P2ifTHPvjSC0qq3z9x15/kTw9/vv7Qx83y/vGLHQ4crpBd
DXW0MP22MImJy6NIPA9BPhaFTVZjROq30CDP7KS95lVq8Fqwww0L01Y4qjSLauhQZDoQ2S/R
sbwFSZAlWl/3FOUqrTh9ru4lsP/KkUwdsD8IjSShq2vHz93AiFI/ZqcGugc7wchJwKfTW1mW
6eEQ8z49NrqSsmY1JGh2cOD9J//c/9g9oinC/t8n319ftn9t4T/bl4dff/31X+6i0HVTDLMx
JtDI/BVspsGPk51hrVttWS9rcy6ghqKVGxmw/SHqkg8fyb0ZWK81rm9ge6NF4rHjaN3IIn4a
aJ2xe90ghxNZh+0aRLSyITx6LmOldYy47HDCcR2jLsFyx6tOkC9xHLqpgTfsTFbEU8YxkUAD
48Q8OXCJg3WmtRfMaaPPrOgg4d8NhjmwVW1mgJmr/zG8PAtcNd2vv/DrGc6KYKEkIAPLsgUZ
6BCABc5pTtaJTR8e6xjnJSaeIN4ra2HwSILJhVkcNv7ZxClp5txpTl4zAdXd5XxthEc1iI32
9bZfAmPN9aFGHn0UVYQzG+eOWEdQrQueyG5RZxD4+Xk92hmT4HpojVvQ0O8yuW0r6wpOT0Tj
Qg3TB9ARPe9KLZgTkYphF0rUS55muKTNvf3AIPt11i7xUu6LHAZdkIwHBKgQ8EjQTZjWBVKC
lFy2QSX4WHfrARNTm656ROoGE5cp0u1ap7BkgcarrFnbqg6sKcLU9bB4YR/4fZZKSu89Ob+a
kvYGJTue0aLSp86iq1zB2LJCbygdFrh0FjllfiXFf1NF8uYRSRQ7G5cRcMVgb4/bcdai0XUU
Twm74aDvj5MZkT/CQvQh8H7KqsRpHEu5Qd+5IwPVmhRtucq7ARDdCgjbio8LTASkw+DU+oSd
ZW3h5tYawLDzc95Wgyg6z5ndxXJyt0uhUI9OPgxxmujDNWHhDh4bVb6y7HN1d5HXUCyDYKg1
/z5JjzgwD/0MGNeyEIoXK03K4iPhgPXnpBgCR6Yz0DG5i4H8MIyLilsSLleJgM8crxsoovt2
qB7FkoxbylDYX8B0qS17uuID51JdEMFjEEIEZsZ0g50Q6IiAYQiW636m4L5LfNSKOmSKu6Fb
DNTEU8xNsh0XqX+5XroG1cgENe/xzowJB4q2vQ2qttBp/TN0P58do5hVydJyQ7IuqYvUSe6C
v4/d5LsZ3UThitJixH+RO9d5wh5XBFCUqcz4KUvrsNO+TIZiBGO2Cx6j2TKmnMjhssxkCRIq
vx10rTphtcGgNZERNOlyacfhtUtF6kpnC0cGd5ByzsUj8vvSb9JZ4naobsnr2Q84NaK4audZ
Xy9a8pdm7jKcMUZadcAcg4gN5v6Xz0glH9NrFEVWRYQq7Cc+NaUofAVKNsx4gpyIzBv6083l
6Xix9XGwKCY8TnOzMRe3iyXfqvMAR43ZLlcjQvJHzYEi5J4hDbbKit9GeLW7CGP2Jlw/B6Bu
I+LqXosjgQMq4JAFbkO45Ga+7tRpZ5AQvebLIjt229PflDTQtsq57tDPDIURo44Y09CUawwK
pHq4czh8YYBrlT5xX9ce7H9vGMLXuMEBAA==

--SUOF0GtieIMvvwua--
