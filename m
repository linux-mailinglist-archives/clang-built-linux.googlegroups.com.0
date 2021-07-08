Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBEEYTSDQMGQEQIL5GEI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id AEF0C3C1530
	for <lists+clang-built-linux@lfdr.de>; Thu,  8 Jul 2021 16:30:43 +0200 (CEST)
Received: by mail-pf1-x43c.google.com with SMTP id y1-20020a056a001801b029031e97eab9e5sf4032954pfa.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 08 Jul 2021 07:30:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625754642; cv=pass;
        d=google.com; s=arc-20160816;
        b=kxgUzATqAP/3PcyA6lDCHjua9wOnzt6Z5h9FNtKFPta0iD1dO6xNqskAEntWuHQmhh
         /xGFPLgau02vrqqlw0kgDz4jer3cRlNZRpwJOX6Wynke9zChfVB2jVkPL3eOyTcLez8i
         pmwY0mHypLx6M2MWXhGzCZ6d6dNKyVbicZHwmiDvqnShwdrjdLlAjn00Bve8EsBmYhk9
         vts3ICYLBlk7KP8ZCccSVCD1yjKCiislUbKKD/xzDh4RHF35uOzoTkXPSaA74zCXY+X3
         IWqrNluWnB2CJ+6J51SDXZF/rTx7RJSTqQB7spQQKQozN7iYUTFH9Il7ZrT5/7u9zP9T
         RCag==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=S91yKXiMnNaW+6EFRhKKUva5qUsXJtMcopHiRfwk9bI=;
        b=S50NxYHLoNt4bEVongwZIzabRgkr7GFIRFBMLNGvV64kv0276hABDgwyqFiHRY+eaV
         4/HR9pckM/Q0AwQjDs5wz0z2+u2zdqbJhvuFqS4Lu2KOOE/il0uGn4jyOBPQK9+yMEXw
         aq1TDchBtceU+DgZYUNGQSLDgdHuvvQX3GbiuPwOOAKGk1/Zhb5BwEX3Qqb73XBMApjA
         6PmdGi03T+XiRVMosFP0bdwfK95IphtKqKSl8KTZBSN5jKA+LMRrUwB9genjdqNEjWK7
         gFeaf1h9eD2tVYQ5cRGxhZDxCBu3III5d5u4QOfPi5lLyTzZ0IVfwOjmId84mXF4tT88
         6DgQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=S91yKXiMnNaW+6EFRhKKUva5qUsXJtMcopHiRfwk9bI=;
        b=kRBrvGVISdgUYOK4mZ4f9QyPT0qcolP4sN8mF9A0HjWTeIBZ0xcviQWeHPY5N2uHzr
         JTzIAh2ixuqPJIQWtA7qoppEi++t89FIsQUHq/dAIuhGsje3m4xKhYEwC5iTzB+hNLAY
         Yfgx7vTXhWhWNIPPqww5tcDRDrEXzbs1OD9Wlu+0+aziuuSDvUkW6CqH89I4ykuwsAw/
         wo9aj+73q4zKEzjQtDQE0QP+lf8s4aJUkkG9w2yeOhb2ZH25wG/m2M9b0tC3Bq6bxi99
         xhjN3vdtLgHOWZPKoqrY8ti3BJNAAT5wGTIKKm/b1aXeMhg6pMdMWndP+Vx2c2qK3XYG
         YELw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=S91yKXiMnNaW+6EFRhKKUva5qUsXJtMcopHiRfwk9bI=;
        b=eDk4bYruce3opLFwiWr54y6ULH8PjDNq6I2zxgY0M8zfLdDZvSbmw8A/sMJ5tGNppu
         Xw29wAkUilh83EFnQX46teqJ5ee4NGaTk8HZhFsG4kE8g5EVCtY0w1GgVM6GqDHbLmjI
         XxtMp5a/JUYzSdJRqFnfVCDp7vtJuNW5WZSCDBm6G245+l/+95SyxfWXi3pKW0xtjN6R
         gz/NeuajsJG0W8m/UonDDAbLA3NWh1Mvj+sao6ka93ZMldCCJBIbtTnAAaeLv78hAPxr
         +ko00RcRkWBhTXh82tVslzBqQc5JXogKM9P6xX3bTIQyMhMXD7Uv83AUFSC+uhLHLNTI
         1Fuw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530x47QpfJl69raM+Noa6Z5ZDIW7m/EprFcbcSPuUg7oCAwS0WYP
	Lk9epX0zUdIjf9DEdh32jJU=
X-Google-Smtp-Source: ABdhPJwBYP0T/5eJwuPruD9uCIn6KIPlDY5njV72mMeFoAKKM9eSSjIfgoZnFlJvap/4/qxBCh7OMQ==
X-Received: by 2002:a17:90a:9f06:: with SMTP id n6mr5128916pjp.219.1625754641026;
        Thu, 08 Jul 2021 07:30:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:1824:: with SMTP id y36ls1365345pfa.11.gmail; Thu,
 08 Jul 2021 07:30:40 -0700 (PDT)
X-Received: by 2002:a62:ce85:0:b029:316:8ca6:c2e with SMTP id y127-20020a62ce850000b02903168ca60c2emr31585271pfg.70.1625754640231;
        Thu, 08 Jul 2021 07:30:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625754640; cv=none;
        d=google.com; s=arc-20160816;
        b=spWsHgr9Mz9evGVLCFFTEJTdEfDrxY41RhNFFc3CjzzgaUVyyzlB2csU7Z00Gu9mVe
         Z2NMqUsHE7OYrZDDELoHYnEB/VInf1mLep08P24e2NXpN7B0UCwOiWukmDTQrPFcIokK
         KY9gYR2dm8p167BPiq9Q5O6qdAEUMuo91AF35L+4tpgEs+sTApTpTSG7uuo3LmU6i4qb
         /9j45xr5jFYJBnCVmFsS86D26OenUSJRNZ0iqUnzChy9j3nJKhei5KLvwZR+zWgNZlp/
         bchUbo0JPzMV1Hm4QEoaUcNWnqMqHbMN+R2VsaKDPQ7CdU5O8d5LyIVo/Fce+WzJWpiL
         dDwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=zCeEIiJrkRNUft9MadKkSzEmHmKVEL8UF83yvvjK8wE=;
        b=0MdpOR7qt8dmIo15EVuD7RPvpMjtNfaIhQDpezlQy9S73kAawzE9qVUAjzZ/0NQJY8
         YjIwf78uKF7ElQkpL6x36BvNbt93J9QFMDDkweKJSLeWrtSNMnY4dhqc4qKLkXHOrcjd
         Gr+eWBHpL6kD6zyJt0RXO39jtlqN5x+IQgoRNZPqj3zz0oWvgqbnZB4utvqqEoG6uCTP
         VI4AdynW1XB24uBjf0y9P2tyMnZNMO2Kt3+CwTT43hCl5V3x8lP8BcpwV/6kc2PcgarN
         gFe6EAoHkqXKzbV59dAT/6/6VuwDDf3nOqvSIjyF7DjhYEue2CmXwOvk95YL9moOl4Tk
         LrVg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga09.intel.com (mga09.intel.com. [134.134.136.24])
        by gmr-mx.google.com with ESMTPS id t1si428049pgj.4.2021.07.08.07.30.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Jul 2021 07:30:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) client-ip=134.134.136.24;
X-IronPort-AV: E=McAfee;i="6200,9189,10038"; a="209476705"
X-IronPort-AV: E=Sophos;i="5.84,224,1620716400"; 
   d="gz'50?scan'50,208,50";a="209476705"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Jul 2021 07:30:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,224,1620716400"; 
   d="gz'50?scan'50,208,50";a="645927985"
Received: from lkp-server01.sh.intel.com (HELO 4aae0cb4f5b5) ([10.239.97.150])
  by fmsmga006.fm.intel.com with ESMTP; 08 Jul 2021 07:30:35 -0700
Received: from kbuild by 4aae0cb4f5b5 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1m1V2w-000EKY-Ut; Thu, 08 Jul 2021 14:30:34 +0000
Date: Thu, 8 Jul 2021 22:29:45 +0800
From: kernel test robot <lkp@intel.com>
To: John Ogness <john.ogness@linutronix.de>
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	linux-kernel@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>,
	Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Subject: [linux-rt-devel:linux-5.13.y-rt-rebase 9/222]
 kernel/printk/printk.c:2648:4: error: implicit declaration of function
 'latched_seq_write'
Message-ID: <202107082242.AwyKYuKd-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="gBBFr7Ir9EOA20Yy"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted
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


--gBBFr7Ir9EOA20Yy
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/rt/linux-rt-devel.git linux-5.13.y-rt-rebase
head:   7e175e6b59975c8901ad370f7818937f68de45c1
commit: 7995ace9ab04969b9d5577e5fd74d77765c7d917 [9/222] printk: use seqcount_latch for console_seq
config: powerpc64-randconfig-r003-20210708 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 8d69635ed9ecf36fd0ca85906bfde17949671cbe)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc64 cross compiling tool for clang build
        # apt-get install binutils-powerpc64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/rt/linux-rt-devel.git/commit/?id=7995ace9ab04969b9d5577e5fd74d77765c7d917
        git remote add linux-rt-devel https://git.kernel.org/pub/scm/linux/kernel/git/rt/linux-rt-devel.git
        git fetch --no-tags linux-rt-devel linux-5.13.y-rt-rebase
        git checkout 7995ace9ab04969b9d5577e5fd74d77765c7d917
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   In file included from kernel/printk/printk.c:22:
   In file included from include/linux/kernel.h:12:
   In file included from include/linux/bitops.h:32:
   In file included from arch/powerpc/include/asm/bitops.h:62:
   arch/powerpc/include/asm/barrier.h:49:9: warning: '__lwsync' macro redefined [-Wmacro-redefined]
   #define __lwsync()      __asm__ __volatile__ (stringify_in_c(LWSYNC) : : :"memory")
           ^
   <built-in>:310:9: note: previous definition is here
   #define __lwsync __builtin_ppc_lwsync
           ^
   kernel/printk/printk.c:176:5: warning: no previous prototype for function 'devkmsg_sysctl_set_loglvl' [-Wmissing-prototypes]
   int devkmsg_sysctl_set_loglvl(struct ctl_table *table, int write,
       ^
   kernel/printk/printk.c:176:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   int devkmsg_sysctl_set_loglvl(struct ctl_table *table, int write,
   ^
   static 
   kernel/printk/printk.c:2282:2: error: FIXME
   #error FIXME
    ^
   kernel/printk/printk.c:2642:9: error: implicit declaration of function 'latched_seq_read_nolock' [-Werror,-Wimplicit-function-declaration]
                   seq = latched_seq_read_nolock(&console_seq);
                         ^
>> kernel/printk/printk.c:2648:4: error: implicit declaration of function 'latched_seq_write' [-Werror,-Wimplicit-function-declaration]
                           latched_seq_write(&console_seq, r.info->seq);
                           ^
   kernel/printk/printk.c:2658:4: error: implicit declaration of function 'latched_seq_write' [-Werror,-Wimplicit-function-declaration]
                           latched_seq_write(&console_seq, seq + 1);
                           ^
   kernel/printk/printk.c:2685:3: error: implicit declaration of function 'latched_seq_write' [-Werror,-Wimplicit-function-declaration]
                   latched_seq_write(&console_seq, seq + 1);
                   ^
   kernel/printk/printk.c:2776:4: error: implicit declaration of function 'latched_seq_write' [-Werror,-Wimplicit-function-declaration]
                           latched_seq_write(&console_seq, prb_first_valid_seq(prb));
                           ^
   kernel/printk/printk.c:3023:32: error: implicit declaration of function 'latched_seq_read_nolock' [-Werror,-Wimplicit-function-declaration]
                   exclusive_console_stop_seq = latched_seq_read_nolock(&console_seq);
                                                ^
   kernel/printk/printk.c:3027:3: error: implicit declaration of function 'latched_seq_write' [-Werror,-Wimplicit-function-declaration]
                   latched_seq_write(&console_seq, syslog_seq);
                   ^
   2 warnings and 8 errors generated.


vim +/latched_seq_write +2648 kernel/printk/printk.c

  2576	
  2577	/**
  2578	 * console_unlock - unlock the console system
  2579	 *
  2580	 * Releases the console_lock which the caller holds on the console system
  2581	 * and the console driver list.
  2582	 *
  2583	 * While the console_lock was held, console output may have been buffered
  2584	 * by printk().  If this is the case, console_unlock(); emits
  2585	 * the output prior to releasing the lock.
  2586	 *
  2587	 * If there is output waiting, we wake /dev/kmsg and syslog() users.
  2588	 *
  2589	 * console_unlock(); may be called from any context.
  2590	 */
  2591	void console_unlock(void)
  2592	{
  2593		static char ext_text[CONSOLE_EXT_LOG_MAX];
  2594		static char text[CONSOLE_LOG_MAX];
  2595		unsigned long flags;
  2596		bool do_cond_resched, retry;
  2597		struct printk_info info;
  2598		struct printk_record r;
  2599		u64 seq;
  2600	
  2601		if (console_suspended) {
  2602			up_console_sem();
  2603			return;
  2604		}
  2605	
  2606		prb_rec_init_rd(&r, &info, text, sizeof(text));
  2607	
  2608		/*
  2609		 * Console drivers are called with interrupts disabled, so
  2610		 * @console_may_schedule should be cleared before; however, we may
  2611		 * end up dumping a lot of lines, for example, if called from
  2612		 * console registration path, and should invoke cond_resched()
  2613		 * between lines if allowable.  Not doing so can cause a very long
  2614		 * scheduling stall on a slow console leading to RCU stall and
  2615		 * softlockup warnings which exacerbate the issue with more
  2616		 * messages practically incapacitating the system.
  2617		 *
  2618		 * console_trylock() is not able to detect the preemptive
  2619		 * context reliably. Therefore the value must be stored before
  2620		 * and cleared after the "again" goto label.
  2621		 */
  2622		do_cond_resched = console_may_schedule;
  2623	again:
  2624		console_may_schedule = 0;
  2625	
  2626		/*
  2627		 * We released the console_sem lock, so we need to recheck if
  2628		 * cpu is online and (if not) is there at least one CON_ANYTIME
  2629		 * console.
  2630		 */
  2631		if (!can_use_console()) {
  2632			console_locked = 0;
  2633			up_console_sem();
  2634			return;
  2635		}
  2636	
  2637		for (;;) {
  2638			size_t ext_len = 0;
  2639			size_t len;
  2640	
  2641	skip:
  2642			seq = latched_seq_read_nolock(&console_seq);
  2643			if (!prb_read_valid(prb, seq, &r))
  2644				break;
  2645	
  2646			if (seq != r.info->seq) {
  2647				console_dropped += r.info->seq - seq;
> 2648				latched_seq_write(&console_seq, r.info->seq);
  2649				seq = r.info->seq;
  2650			}
  2651	
  2652			if (suppress_message_printing(r.info->level)) {
  2653				/*
  2654				 * Skip record we have buffered and already printed
  2655				 * directly to the console when we received it, and
  2656				 * record that has level above the console loglevel.
  2657				 */
  2658				latched_seq_write(&console_seq, seq + 1);
  2659				goto skip;
  2660			}
  2661	
  2662			/* Output to all consoles once old messages replayed. */
  2663			if (unlikely(exclusive_console &&
  2664				     seq >= exclusive_console_stop_seq)) {
  2665				exclusive_console = NULL;
  2666			}
  2667	
  2668			/*
  2669			 * Handle extended console text first because later
  2670			 * record_print_text() will modify the record buffer in-place.
  2671			 */
  2672			if (nr_ext_console_drivers) {
  2673				ext_len = info_print_ext_header(ext_text,
  2674							sizeof(ext_text),
  2675							r.info);
  2676				ext_len += msg_print_ext_body(ext_text + ext_len,
  2677							sizeof(ext_text) - ext_len,
  2678							&r.text_buf[0],
  2679							r.info->text_len,
  2680							&r.info->dev_info);
  2681			}
  2682			len = record_print_text(&r,
  2683					console_msg_format & MSG_FORMAT_SYSLOG,
  2684					printk_time);
  2685			latched_seq_write(&console_seq, seq + 1);
  2686	
  2687			printk_safe_enter_irqsave(flags);
  2688	
  2689			/*
  2690			 * While actively printing out messages, if another printk()
  2691			 * were to occur on another CPU, it may wait for this one to
  2692			 * finish. This task can not be preempted if there is a
  2693			 * waiter waiting to take over.
  2694			 */
  2695			console_lock_spinning_enable();
  2696	
  2697			stop_critical_timings();	/* don't trace print latency */
  2698			call_console_drivers(ext_text, ext_len, text, len);
  2699			start_critical_timings();
  2700	
  2701			if (console_lock_spinning_disable_and_check()) {
  2702				printk_safe_exit_irqrestore(flags);
  2703				return;
  2704			}
  2705	
  2706			printk_safe_exit_irqrestore(flags);
  2707	
  2708			if (do_cond_resched)
  2709				cond_resched();
  2710		}
  2711	
  2712		console_locked = 0;
  2713	
  2714		up_console_sem();
  2715	
  2716		/*
  2717		 * Someone could have filled up the buffer again, so re-check if there's
  2718		 * something to flush. In case we cannot trylock the console_sem again,
  2719		 * there's a new owner and the console_unlock() from them will do the
  2720		 * flush, no worries.
  2721		 */
  2722		retry = prb_read_valid(prb, latched_seq_read_nolock(&console_seq), NULL);
  2723		if (retry && console_trylock())
  2724			goto again;
  2725	}
  2726	EXPORT_SYMBOL(console_unlock);
  2727	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202107082242.AwyKYuKd-lkp%40intel.com.

--gBBFr7Ir9EOA20Yy
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
Z+DfIX3ZJlW1WWVYUc0RR9z+BVZ4rUIx6AEA

--gBBFr7Ir9EOA20Yy--
