Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBZ5D5TVAKGQE2IFL3JY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63c.google.com (mail-pl1-x63c.google.com [IPv6:2607:f8b0:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C91494FAB
	for <lists+clang-built-linux@lfdr.de>; Mon, 19 Aug 2019 23:17:29 +0200 (CEST)
Received: by mail-pl1-x63c.google.com with SMTP id y5sf2706003plt.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 19 Aug 2019 14:17:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566249448; cv=pass;
        d=google.com; s=arc-20160816;
        b=W2CAnuOLwKJJVfAC1XTJRxtMjxEJdyw4h1KmYu0+B+fCGfATU6kQLerCIxvZ89G8pg
         0ahp8s8+8jupfAy3YnPVZsB0ydSpe5d5k1RDEvpqXjc7lqXSNtHQVS7kwDm1NV3jYsha
         5kRjDq571ZulGUi6P9Tj8akoMqpJn22B2VNyedzEQ/hyLrG2r+Hfpb+452TCYtknXjej
         gzRzmbA+GWI4DIwUQH5cHBNN0c78m8O73Cd8t7DEdFTeAiWjccttSS7+j91W7oQdJL3Y
         MmxFs4cMnrWK4B0mkn1JLAzzbItFFUn1lXehYbrJQBFnT0oQH05zgctB80K2Ie0QrBqC
         KIIQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Rh9xaw7XEM9Xd328C/jLEiU/fgslH2qOS3Cl0BHcRGQ=;
        b=PL2v9ZbVMErk7jqCjeqXH7Uom8mfFtMS+iZT7C2ZsyIPZx4/47KKwU+yeGo1gpsRcr
         KLstaViYlpmKNTysOWRrLhJFhUqPlA6LAkA54qgqkzrXbGXftudzv5usrj2+01dhY9SI
         q1XRJGGz5x+d8wLWLEUsRND8zgJQXJ+4VsVtLhpDPqJNzID2ozjWoGzDizi+9qotbf28
         qnfMwCiSJSKvpkBhZP20BavHSfRovckNOVQ1TSOZfEfcLXGZVkodaINZa+aVKLKlOiEc
         f8e0xEObD2uqv5k+//ShGgNyHvim4WyXThD2ZwKVhi2c//d1haZsvKwcXadjKm8U1SEQ
         /IhQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Rh9xaw7XEM9Xd328C/jLEiU/fgslH2qOS3Cl0BHcRGQ=;
        b=A+pSuAd8mKDAy7Yf+e7LKoQOEJLK6rrixIXqBkvtHnpaiH1AS2OvHEoQ5Ye3nGZbX9
         UbsH1akaHlUZGTWlxvSI5YfFAQrGU6/l1liO6vhfgZDFn6AiFE+UZMGQNPbgY4cW7Ioq
         r7HWcRYTpJfKXypftxFurDlsQnOYmB81NZY3/Ayz/T+iU6gD3vHY9MbirzrkTwqubZ1R
         IfWIvWhWApf2wL0YAJ9yD/37RU66JT9MNJQW0Stwn9vQ2H/9X5jUKMN2/0VNMdVcWj0i
         Lhoi1UChOaqIwmUtZd2BPr2ydE+ziS+4XGyHMtPdLf3ogIHFuPRdtYOK42FeAgPyrYhL
         g1dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Rh9xaw7XEM9Xd328C/jLEiU/fgslH2qOS3Cl0BHcRGQ=;
        b=XpbaI2kQmBrdHYLtnGLy0I54WiIy/c5EB0UEv7VFvODJdEHmHjqv3vMSTSPkf4CygB
         lJd8sB3+2FEkO2UDZhPdshzD06WL7SnztvHjVgXjKTqLgi2LU8gXfsW1Ww1ph3dQ42DV
         /yysD57/bhcHbo77UWSEHc23HVAyPFanFq3IV1I4isSbmo6TA+/O1GSadTAanvXh4meF
         udpiwnVvSQwaieSh/d4Vaff63XQhShmYG5DvysSER0slWC5eFUEhYKs+nTfkGKr/D4hv
         upmUSqWXQC2wGr3kKvKThsReLXP+uBSWYrig//b8J6E9j3GvlNtzemdTibv+6KSCZG1l
         SmBQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXTE96kWMc3QPcqmoErBBX++/fl7TBtNB4zZV9fpXNmNZ77conC
	EDklMSIXl+QIA+RhdqU5Lro=
X-Google-Smtp-Source: APXvYqzhuq4akMSbjqNyD6cwAotYRGx2E2OvmMgHPRosNkd5FnUEoVQahDa2lLWx8k/1OCbJzb1O9w==
X-Received: by 2002:a17:90a:9282:: with SMTP id n2mr58842pjo.0.1566249447267;
        Mon, 19 Aug 2019 14:17:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:6b81:: with SMTP id p1ls4308006plk.6.gmail; Mon, 19
 Aug 2019 14:17:26 -0700 (PDT)
X-Received: by 2002:a17:902:ff0a:: with SMTP id f10mr9646972plj.163.1566249446936;
        Mon, 19 Aug 2019 14:17:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566249446; cv=none;
        d=google.com; s=arc-20160816;
        b=IMGxhf5Z7ERfEpSzRLcH6vtgb+wvhEOuW8b0USxzWuWoZkHd9OYOH/r1cTGN6al3M8
         a2x9fEU/QEFwfXyWuoE/XbOJhrMj7kC5vh7Vm/v02AeNMD4XFFgVVcsqgmnsSuAmVMgM
         Ljcv46oOzbhoZds321lT2H5t8LZI5Zryy/+ue3eoP792p18s+a1Ixwg+AXok8jAGg3Ft
         YwdpR9QJPswN2slmHbjXnlbiicvYrgdyOcHm61ZH9qyjWv+VW3gJ7YHkRhRkJInUh19L
         blix0X2KvzJcW1WPXcrr7hPzAymIPRMqRUb0UfjnpM6lKOIQgvzbyEHbyOhKXHbrT4bE
         qiTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=ZakZ3xB9bFVAbqFp/13l9v3uVwdwRd2ioxdnEVPySqQ=;
        b=oXCqSDSV4n6481EEWTeDEUriOufwSjAXF24iYaY0pmPJvR8hL6oYPnQ/l0tz3NRokH
         O3eQKTa8pIsRLRa15Dp+VMpc20g6e81Wp6FFx12ODkZ93KZ6dvsa+Clj100ydLhsjxvw
         dwqANNBgmuEPNYirGkkQ3EHFNNOR/5rZFjrE7+tcwjQETDiSe0OD+RdGwEQ8nV9Hs/u8
         Rq+VAR0DIO+pApzFzjwDh75RfXH2L5fSuEiH0YV2+lqGP4Ua5UglFeLcYH9syZMEsal2
         +7ySTy6TP5RAYN0N4wNBTMp16qBIEs6VvpV3s3v6mR3ZHueQZjDdLLQVad4y4o/F8wjH
         bSow==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga03.intel.com (mga03.intel.com. [134.134.136.65])
        by gmr-mx.google.com with ESMTPS id i11si621284pju.1.2019.08.19.14.17.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Aug 2019 14:17:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) client-ip=134.134.136.65;
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 19 Aug 2019 14:17:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,406,1559545200"; 
   d="gz'50?scan'50,208,50";a="172243509"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by orsmga008.jf.intel.com with ESMTP; 19 Aug 2019 14:17:25 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1hzp1o-000Aev-RD; Tue, 20 Aug 2019 05:17:24 +0800
Date: Tue, 20 Aug 2019 05:16:33 +0800
From: kbuild test robot <lkp@intel.com>
To: kbuild@01.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: [tip:WIP.timers/core 67/68] include/linux/posix-timers.h:204:20:
 error: field has incomplete type 'struct cpu_timer'
Message-ID: <201908200528.UgQ40BHm%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="dtv4whdk5lsbiysu"
Content-Disposition: inline
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted
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


--dtv4whdk5lsbiysu
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

CC: kbuild-all@01.org
CC: linux-kernel@vger.kernel.org
CC: tipbuild@zytor.com
TO: Thomas Gleixner <tglx@linutronix.de>

tree:   https://kernel.googlesource.com/pub/scm/linux/kernel/git/tip/tip.git WIP.timers/core
head:   b16101077c4444bc7e0dde91e7ffb258ce1f979b
commit: 24afd498b40f107b01c0666ea75efaeff7ae4a5c [67/68] posix-cpu-timers: Utilize timerqueue for storage
config: x86_64-allnoconfig (attached as .config)
compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
reproduce:
        git checkout 24afd498b40f107b01c0666ea75efaeff7ae4a5c
        # save the attached .config to linux build tree
        make ARCH=x86_64 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   In file included from arch/x86/kernel/asm-offsets.c:9:
   In file included from include/linux/crypto.h:21:
   In file included from include/linux/uaccess.h:5:
   In file included from include/linux/sched.h:32:
>> include/linux/posix-timers.h:204:20: error: field has incomplete type 'struct cpu_timer'
                   struct cpu_timer        cpu;
                                           ^
   include/linux/posix-timers.h:204:10: note: forward declaration of 'struct cpu_timer'
                   struct cpu_timer        cpu;
                          ^
   1 error generated.
   make[2]: *** [arch/x86/kernel/asm-offsets.s] Error 1
   make[2]: Target '__build' not remade because of errors.
   make[1]: *** [prepare0] Error 2
   make[1]: Target 'prepare' not remade because of errors.
   make: *** [sub-make] Error 2
   19 real  7 user  7 sys  80.15% cpu 	make prepare

vim +204 include/linux/posix-timers.h

   157	
   158	/**
   159	 * struct k_itimer - POSIX.1b interval timer structure.
   160	 * @list:		List head for binding the timer to signals->posix_timers
   161	 * @t_hash:		Entry in the posix timer hash table
   162	 * @it_lock:		Lock protecting the timer
   163	 * @kclock:		Pointer to the k_clock struct handling this timer
   164	 * @it_clock:		The posix timer clock id
   165	 * @it_id:		The posix timer id for identifying the timer
   166	 * @it_active:		Marker that timer is active
   167	 * @it_overrun:		The overrun counter for pending signals
   168	 * @it_overrun_last:	The overrun at the time of the last delivered signal
   169	 * @it_requeue_pending:	Indicator that timer waits for being requeued on
   170	 *			signal delivery
   171	 * @it_sigev_notify:	The notify word of sigevent struct for signal delivery
   172	 * @it_interval:	The interval for periodic timers
   173	 * @it_signal:		Pointer to the creators signal struct
   174	 * @it_pid:		The pid of the process/task targeted by the signal
   175	 * @it_process:		The task to wakeup on clock_nanosleep (CPU timers)
   176	 * @sigq:		Pointer to preallocated sigqueue
   177	 * @it:			Union representing the various posix timer type
   178	 *			internals.
   179	 * @rcu:		RCU head for freeing the timer.
   180	 */
   181	struct k_itimer {
   182		struct list_head	list;
   183		struct hlist_node	t_hash;
   184		spinlock_t		it_lock;
   185		const struct k_clock	*kclock;
   186		clockid_t		it_clock;
   187		timer_t			it_id;
   188		int			it_active;
   189		s64			it_overrun;
   190		s64			it_overrun_last;
   191		int			it_requeue_pending;
   192		int			it_sigev_notify;
   193		ktime_t			it_interval;
   194		struct signal_struct	*it_signal;
   195		union {
   196			struct pid		*it_pid;
   197			struct task_struct	*it_process;
   198		};
   199		struct sigqueue		*sigq;
   200		union {
   201			struct {
   202				struct hrtimer	timer;
   203			} real;
 > 204			struct cpu_timer	cpu;
   205			struct {
   206				struct alarm	alarmtimer;
   207			} alarm;
   208		} it;
   209		struct rcu_head		rcu;
   210	};
   211	

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201908200528.UgQ40BHm%25lkp%40intel.com.

--dtv4whdk5lsbiysu
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
Q/4DgC49TLhoAAA=

--dtv4whdk5lsbiysu--
