Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBTFL5P3QKGQEY6H7WXA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x337.google.com (mail-ot1-x337.google.com [IPv6:2607:f8b0:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id BE4D920EE00
	for <lists+clang-built-linux@lfdr.de>; Tue, 30 Jun 2020 08:03:58 +0200 (CEST)
Received: by mail-ot1-x337.google.com with SMTP id z23sf12763255ote.14
        for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 23:03:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593497037; cv=pass;
        d=google.com; s=arc-20160816;
        b=wQOLCzwWAcuKxgXMGm8jN3753vIzj96jtpr6Z6jDUFtnIaizfl3cIfUaeH7I0l6cRf
         kGl44VWNADev+aNLD+vLvyAWc75Znx+QNbUZRPNhrqqETe/UDBYmC4Gd5iep3nKhct3Q
         jFDhWRY1Yec7UXff9YLogm6/voVjeCkPTqHMLprYaF4rjdWBtktbXjyF4nlV+yIV9aVV
         cQObeLk57JB1PFbDjyoG7omRHe+RkdSS+5X+rcfOlxItkZ5WSyZh1gWCqAikTpXTnqND
         2suiyZ1OyDAVmIToVlCdy761zh0CZNfuEUdzZs/YEneW839aSrE9ShDhiI+kl86RTrmM
         fg1w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=+sS3tO0lmSl+4x7LAu3FyQs29EzrqQEWd51a7qwF4Hk=;
        b=kWq6tDtEbL4krWpgUGhSAUkcDhS0lPAEc8sa+m3CCmM9G6gRgKATmhTqm/n7nBoO/A
         3WC2PHMU0yn0zh62UhgAkDNM9/i6jn7ilnQ2aZukTXVQumx5E5WYwrF9M810HLalXiRO
         V0CEKZUgpLABp0mhq3MvLodEQM8kiG2f0w+04w3UhaA+Z+cAAbjBSghxiAhCybfJQgQp
         IhOpnUR8o7L+cwS+rnPi8YvIgGvGONdROCl8yTyEU59rWW/qc8UCDSqABr9a9P1woYe2
         2aa+gW76rmvh6cU3ffuv6V8fvOxRWwQjxzlwLdcyS6h1SmLuXzhqWBSB/4MXVZhSPR5c
         TXag==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+sS3tO0lmSl+4x7LAu3FyQs29EzrqQEWd51a7qwF4Hk=;
        b=UN2fd+kCr1RLqUmQ9LZOqj5ZcbhGo0h82knrIrUrRxOlzwoUEdCdl4YHmGX1ap7H/I
         3GxnQ8IuVI6UDn8W38KjMVcinUySSThnaVuh+45AnbzpZy/g2VhtEe3H5i7CKSQOcqs9
         LLj0j8JibbhEjtVi88DpljdEenHaLX1p+PWV8euzLnXKEtKKc18+nTE0DQ8KVXd4hnJw
         NLZEHiH/mayDz0uXfKfx5ibe26PNRi9nPw7Q7dhm20G3TFq55Ath62diim4/LYH3xl/s
         x3pEJt+XT8VrJsP8oIfyI40S2ci4P99Idp2NX8tV6tJMsEfYABr+9oemk95nm1aTN0Oo
         3agw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+sS3tO0lmSl+4x7LAu3FyQs29EzrqQEWd51a7qwF4Hk=;
        b=tOJh2LFZ0UBg/l7ZP7d8KVsSttXTPS6fCbhwZwwWD8YRn388h2ROm/6qlfotI3rSRo
         YCdLZZyLlgAxWgAUnO7BMCn9q+vSPV6tSpwQ1hUA/rBnK5bpUvBv4DMtHs9GZJiKAhn6
         1OeB9rzGLmJ4q+VldBqCbWXY+uTppG8Hl6N8erlGy9TnrLTWpuFIJ7wrniib/YsLU7pK
         HWGR09F5z6bFze9e/UCe97jMakIv/KD2zHJMJrSBRQqZ9tuyWe+jfPsZROW+7suz7CHT
         1fNCDjiMhtFYh7qqn0IY75H5IBbEf0oE8f3NCLn60mkfBj56K2HgLywUtsBYAjigHzPr
         TRfQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530CKkuYKbg+3mrWGApgJpQcOPkMqIX+gtT11ktX1rQk3VlGBCOK
	DNJwsKOVl1UOyhhaJtmJUIQ=
X-Google-Smtp-Source: ABdhPJwOLzVyPjtAvuu6bTU4nwjsz5F4G3fFNfE8WNMW/qAKnOfJk/+fFF1pG3Z3U22iJrZih3HNtw==
X-Received: by 2002:a4a:b604:: with SMTP id z4mr17145456oon.12.1593497037046;
        Mon, 29 Jun 2020 23:03:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:d9c2:: with SMTP id l2ls826295oou.10.gmail; Mon, 29 Jun
 2020 23:03:56 -0700 (PDT)
X-Received: by 2002:a4a:b109:: with SMTP id a9mr7976810ooo.83.1593497036601;
        Mon, 29 Jun 2020 23:03:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593497036; cv=none;
        d=google.com; s=arc-20160816;
        b=BgMY1bhnjRWRJ8TPg6DJ0VRVofT+o9jQfJBSIJdEkz0Q0DNXacJZHrZGaWVU869oXg
         WO+xil2hHcTChJpLY66Dj/ukfM4zSndKi54DFjOP3IicWMPPfqaG9f3XXeRB/D7+HdrM
         j7dG+r1jt0qENKG4eYOU1n60+YRRpamiNxAk7zyFtOdCZUMojNFM2lxmhxHiMScI0KpZ
         jET7JMnkMOGCgGsmDpT62PV7anZYAaGm852OU5ByvBFIf1AR5el04Jpct8bLPv7ZG9jf
         vl1mfGjSIX2t0RS9SDScmiJM3J5EXTm6JljYEWzMwMA7ZoHhNiSMhYDmAYCwa7uYUvkB
         8pyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=KkoRj3+D1LoiaX53JVwUxNjyBCOZaoG3g/RLm2jIlYE=;
        b=xopdnRsD5QiYqBrXGVVx3IRzrD0EtQsTW+6S2YmjmYrxJwYAyX6nUz1ElGEG1YNZX9
         PqYsDDO0fPQiJzS51ZCLJ18vu/85Dafp/NBuivjIcjNYUawDhaR842B85KAnaI+zRvbo
         Ah7Odj4+EFmKqVnsrsO41e9GyLZ4b3sNOviqVVsgR0v0bRHNOI3HlZw4godck8A2PjjB
         tczOGGiJ29nVkms5t5hNGlqHHy+1RmXyHNcCkfkwpRkbamm5AYumfM/+talK12uvvILo
         W13vVAZ67MxnUzeEfcwwGbxHLMOQyS/n5Wa+ALHHQYMtqz7mHHQgCy3S9LxcOTKiivYU
         /WXw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga06.intel.com (mga06.intel.com. [134.134.136.31])
        by gmr-mx.google.com with ESMTPS id w28si42584oti.1.2020.06.29.23.03.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 Jun 2020 23:03:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) client-ip=134.134.136.31;
IronPort-SDR: vUKruOUGUczTt/sjkAT/8qGZNFu4R+IZMxCzaXyLQchniBQx49A+UEsDXwxWessbvjLmZrn8b8
 eJkI4kgR459g==
X-IronPort-AV: E=McAfee;i="6000,8403,9666"; a="207663464"
X-IronPort-AV: E=Sophos;i="5.75,296,1589266800"; 
   d="gz'50?scan'50,208,50";a="207663464"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 Jun 2020 23:03:55 -0700
IronPort-SDR: LyrcmOvyBP6neHRJywRpa0DEvYdK+Plwx05FO1NF9fd0DnckoBqmklvZ/RrHN7JXVR1Lz8/jJ5
 1wDb6++iWj+A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,296,1589266800"; 
   d="gz'50?scan'50,208,50";a="277319597"
Received: from lkp-server01.sh.intel.com (HELO 28879958b202) ([10.239.97.150])
  by orsmga003.jf.intel.com with ESMTP; 29 Jun 2020 23:03:53 -0700
Received: from kbuild by 28879958b202 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1jq9N2-0001Ld-EK; Tue, 30 Jun 2020 06:03:52 +0000
Date: Tue, 30 Jun 2020 14:03:12 +0800
From: kernel test robot <lkp@intel.com>
To: Ajay.Kathat@microchip.com
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] wilc1000: move wilc driver out of staging
Message-ID: <202006301302.9jscUTXl%lkp@intel.com>
References: <20200625123712.14156-1-ajay.kathat@microchip.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="+QahgC5+KEYLbs62"
Content-Disposition: inline
In-Reply-To: <20200625123712.14156-1-ajay.kathat@microchip.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted
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


--+QahgC5+KEYLbs62
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi,

I love your patch! Perhaps something to improve:

[auto build test WARNING on staging/staging-testing]
[also build test WARNING on wireless-drivers-next/master wireless-drivers/master v5.8-rc3 next-20200629]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use  as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Ajay-Kathat-microchip-com/wilc1000-move-wilc-driver-out-of-staging/20200625-203957
base:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git 9bea6eb3f59cb2fad8b46d91c666a17d0aa53456
config: x86_64-randconfig-a005-20200630 (attached as .config)
compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project cf1d04484344be52ada8178e41d18fd15a9b880c)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   In file included from kernel/rcu/update.c:587:
   kernel/rcu/tasks.h:405:6: warning: no previous prototype for function 'rcu_tasks_postscan'
   void rcu_tasks_postscan(struct list_head
   ^
   kernel/rcu/tasks.h:405:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void rcu_tasks_postscan(struct list_head
   ^
   static
   kernel/rcu/tasks.h:757:6: warning: no previous prototype for function 'rcu_read_unlock_trace_special'
   void rcu_read_unlock_trace_special(struct task_struct int nesting)
   ^
   kernel/rcu/tasks.h:757:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void rcu_read_unlock_trace_special(struct task_struct int nesting)
   ^
   static
   kernel/rcu/tasks.h:1135:6: warning: no previous prototype for function 'synchronize_rcu_tasks_trace'
   void synchronize_rcu_tasks_trace(void)
   ^
   kernel/rcu/tasks.h:1135:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void synchronize_rcu_tasks_trace(void)
   ^
   static
   kernel/rcu/tasks.h:1148:6: warning: no previous prototype for function 'rcu_barrier_tasks_trace'
   void rcu_barrier_tasks_trace(void)
   ^
   kernel/rcu/tasks.h:1148:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void rcu_barrier_tasks_trace(void)
   ^
   static
   kernel/events/core.c:6490:6: warning: no previous prototype for function 'perf_pmu_snapshot_aux'
   long perf_pmu_snapshot_aux(struct perf_buffer
   ^
   kernel/events/core.c:6490:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   long perf_pmu_snapshot_aux(struct perf_buffer
   ^
   static
>> drivers/net/wireless/microchip/wilc1000/cfg80211.c:49:42: warning: unused variable 'wowlan_support'
   static const struct wiphy_wowlan_support wowlan_support = {
   ^
   kernel/trace/trace.c:1535:37: warning: unused variable 'tracing_max_lat_fops'
   static const struct file_operations tracing_max_lat_fops;
   ^
   kernel/sched/core.c:2117:6: warning: no previous prototype for function 'sched_set_stop_task'
   void sched_set_stop_task(int cpu, struct task_struct
   ^
   kernel/sched/core.c:2117:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void sched_set_stop_task(int cpu, struct task_struct
   ^
   static
   kernel/sched/core.c:4263:35: warning: no previous prototype for function 'schedule_user'
   asmlinkage __visible void __sched schedule_user(void)
   ^
   kernel/sched/core.c:4263:22: note: declare 'static' if the function is not intended to be used outside of this translation unit
   asmlinkage __visible void __sched schedule_user(void)
   ^
   static
   4 warnings generated.
   kernel/sched/core.c:808:28: warning: unused function 'uclamp_bucket_base_value'
   static inline unsigned int uclamp_bucket_base_value(unsigned int clamp_value)
   ^
   kernel/sched/core.c:1047:1: warning: unused function 'uclamp_update_active'
   uclamp_update_active(struct task_struct enum uclamp_id clamp_id)
   ^
   kernel/trace/trace_seq.c:142: warning: Function parameter or member 'args' not described in 'trace_seq_vprintf'
   kernel/bpf/core.c:1353:12: warning: no previous prototype for function 'bpf_probe_read_kernel'
   u64 __weak bpf_probe_read_kernel(void u32 size, const void
   ^
   kernel/bpf/core.c:1353:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   u64 __weak bpf_probe_read_kernel(void u32 size, const void
   ^
   static
   kernel/time/hrtimer.c:120:21: warning: initializer overrides prior initialization of this subobject
   = HRTIMER_BASE_REALTIME,
   ^~~~~~~~~~~~~~~~~~~~~
   kernel/time/hrtimer.c:118:27: note: previous initialization is here
   [0 ... MAX_CLOCKS - 1] = HRTIMER_MAX_CLOCK_BASES,
   ^~~~~~~~~~~~~~~~~~~~~~~
   kernel/time/hrtimer.c:121:22: warning: initializer overrides prior initialization of this subobject
   = HRTIMER_BASE_MONOTONIC,
   ^~~~~~~~~~~~~~~~~~~~~~
   kernel/time/hrtimer.c:118:27: note: previous initialization is here
   [0 ... MAX_CLOCKS - 1] = HRTIMER_MAX_CLOCK_BASES,
   ^~~~~~~~~~~~~~~~~~~~~~~
   kernel/time/hrtimer.c:122:21: warning: initializer overrides prior initialization of this subobject
   = HRTIMER_BASE_BOOTTIME,
   ^~~~~~~~~~~~~~~~~~~~~
   kernel/time/hrtimer.c:118:27: note: previous initialization is here
   [0 ... MAX_CLOCKS - 1] = HRTIMER_MAX_CLOCK_BASES,
   ^~~~~~~~~~~~~~~~~~~~~~~
   kernel/time/hrtimer.c:123:17: warning: initializer overrides prior initialization of this subobject
   = HRTIMER_BASE_TAI,
   ^~~~~~~~~~~~~~~~
   kernel/time/hrtimer.c:118:27: note: previous initialization is here
   [0 ... MAX_CLOCKS - 1] = HRTIMER_MAX_CLOCK_BASES,
   ^~~~~~~~~~~~~~~~~~~~~~~
   kernel/dma/swiotlb.c:278:1: warning: no previous prototype for function 'swiotlb_late_init_with_default_size'
   swiotlb_late_init_with_default_size(size_t default_size)
   ^
   kernel/dma/swiotlb.c:277:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   int
   ^
   static
   kernel/time/hrtimer.c:143:20: warning: unused function 'is_migration_base'
   static inline bool is_migration_base(struct hrtimer_clock_base
   ^
   kernel/time/hrtimer.c:617:19: warning: unused function 'hrtimer_hres_active'
   static inline int hrtimer_hres_active(void)
   ^
   1 warning generated.
   kernel/trace/ring_buffer.c:1141: warning: Function parameter or member 'cpu_buffer' not described in 'rb_check_list'
   kernel/trace/ring_buffer.c:1141: warning: Function parameter or member 'list' not described in 'rb_check_list'
   1 warning generated.
   kernel/panic.c:85:13: warning: no previous prototype for function 'panic_smp_self_stop'
   void __weak panic_smp_self_stop(void)
   ^
   kernel/panic.c:85:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void __weak panic_smp_self_stop(void)
   ^
   static
   kernel/panic.c:95:13: warning: no previous prototype for function 'nmi_panic_self_stop'
   void __weak nmi_panic_self_stop(struct pt_regs
   ^
   kernel/panic.c:95:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void __weak nmi_panic_self_stop(struct pt_regs
   ^
   static
   kernel/panic.c:106:13: warning: no previous prototype for function 'crash_smp_send_stop'
   void __weak crash_smp_send_stop(void)
   ^
   kernel/panic.c:106:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void __weak crash_smp_send_stop(void)
   ^
   static
   kernel/locking/lockdep.c:668:4: warning: format specifies type 'short' but the argument has type 'int'
   class->wait_type_outer class->wait_type_inner,
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   3 warnings generated.
--
>> drivers/net/wireless/microchip/wilc1000/cfg80211.c:49:42: warning: unused variable 'wowlan_support' [-Wunused-const-variable]
   static const struct wiphy_wowlan_support wowlan_support = {
                                            ^
   1 warning generated.
   drivers/net/ethernet/intel/e1000/e1000_hw.c:1907: warning: Excess function parameter 'mii_reg' description in 'e1000_config_mac_to_phy'
   drivers/net/ethernet/intel/e1000/e1000_hw.c:2930: warning: Function parameter or member 'phy_data' not described in 'e1000_write_phy_reg'
   drivers/net/ethernet/intel/e1000/e1000_hw.c:2930: warning: Excess function parameter 'data' description in 'e1000_write_phy_reg'
   drivers/net/ethernet/intel/e1000/e1000_hw.c:4788: warning: Excess function parameter 'tx_packets' description in 'e1000_update_adaptive'
   drivers/net/ethernet/intel/e1000/e1000_hw.c:4788: warning: Excess function parameter 'total_collisions' description in 'e1000_update_adaptive'
   drivers/net/ethernet/intel/e1000/e1000_hw.c:5079: warning: Excess function parameter 'downshift' description in 'e1000_check_downshift'
   drivers/net/ethernet/intel/e1000/e1000_main.c:212: warning: Function parameter or member 'hw' not described in 'e1000_get_hw_dev'
   drivers/net/ethernet/intel/e1000/e1000_main.c:365: warning: Function parameter or member 'adapter' not described in 'e1000_configure'
   drivers/net/ethernet/intel/e1000/e1000_main.c:3500: warning: Function parameter or member 'txqueue' not described in 'e1000_tx_timeout'
   drivers/net/ethernet/intel/e1000/e1000_main.c:3799: warning: Function parameter or member 'napi' not described in 'e1000_clean'
   drivers/net/ethernet/intel/e1000/e1000_main.c:3799: warning: Function parameter or member 'budget' not described in 'e1000_clean'
   drivers/net/ethernet/intel/e1000/e1000_main.c:3799: warning: Excess function parameter 'adapter' description in 'e1000_clean'
   drivers/net/ethernet/intel/e1000/e1000_main.c:3830: warning: Function parameter or member 'tx_ring' not described in 'e1000_clean_tx_irq'
   drivers/net/ethernet/intel/e1000/e1000_main.c:3946: warning: Function parameter or member 'skb' not described in 'e1000_rx_checksum'
   drivers/net/ethernet/intel/e1000/e1000_main.c:3946: warning: Excess function parameter 'sk_buff' description in 'e1000_rx_checksum'
   drivers/net/ethernet/intel/e1000/e1000_main.c:3982: warning: Function parameter or member 'bi' not described in 'e1000_consume_page'
   drivers/net/ethernet/intel/e1000/e1000_main.c:3982: warning: Function parameter or member 'skb' not described in 'e1000_consume_page'
   drivers/net/ethernet/intel/e1000/e1000_main.c:3982: warning: Function parameter or member 'length' not described in 'e1000_consume_page'
   drivers/net/ethernet/intel/e1000/e1000_main.c:4020: warning: Function parameter or member 'stats' not described in 'e1000_tbi_adjust_stats'
   drivers/net/ethernet/intel/e1000/e1000_main.c:4561: warning: Function parameter or member 'rx_ring' not described in 'e1000_alloc_rx_buffers'
   drivers/net/ethernet/intel/e1000/e1000_main.c:4561: warning: Function parameter or member 'cleaned_count' not described in 'e1000_alloc_rx_buffers'
   drivers/net/ethernet/intel/e1000/e1000_main.c:4674: warning: Function parameter or member 'adapter' not described in 'e1000_smartspeed'
   drivers/net/ethernet/intel/e1000/e1000_main.c:4733: warning: Function parameter or member 'netdev' not described in 'e1000_ioctl'
   drivers/net/ethernet/intel/e1000/e1000_main.c:4733: warning: Function parameter or member 'ifr' not described in 'e1000_ioctl'
   drivers/net/ethernet/intel/e1000/e1000_main.c:4733: warning: Function parameter or member 'cmd' not described in 'e1000_ioctl'
   drivers/net/ethernet/intel/e1000/e1000_main.c:4752: warning: Function parameter or member 'netdev' not described in 'e1000_mii_ioctl'
   drivers/net/ethernet/intel/e1000/e1000_main.c:4752: warning: Function parameter or member 'ifr' not described in 'e1000_mii_ioctl'
   drivers/net/ethernet/intel/e1000/e1000_main.c:4752: warning: Function parameter or member 'cmd' not described in 'e1000_mii_ioctl'
--
>> drivers/net/wireless/microchip/wilc1000/cfg80211.c:49:42: warning: unused variable 'wowlan_support' [-Wunused-const-variable]
   static const struct wiphy_wowlan_support wowlan_support = {
                                            ^
   1 warning generated.
--
>> drivers/net/wireless/microchip/wilc1000/cfg80211.c:49:42: warning: unused variable 'wowlan_support' [-Wunused-const-variable]
   static const struct wiphy_wowlan_support wowlan_support = {
                                            ^
   1 warning generated.
   drivers/net/ethernet/intel/e1000/e1000_hw.c:1907: warning: Excess function parameter 'mii_reg' description in 'e1000_config_mac_to_phy'
   drivers/net/ethernet/intel/e1000/e1000_hw.c:2930: warning: Function parameter or member 'phy_data' not described in 'e1000_write_phy_reg'
   drivers/net/ethernet/intel/e1000/e1000_hw.c:2930: warning: Excess function parameter 'data' description in 'e1000_write_phy_reg'
   drivers/net/ethernet/intel/e1000/e1000_hw.c:4788: warning: Excess function parameter 'tx_packets' description in 'e1000_update_adaptive'
   drivers/net/ethernet/intel/e1000/e1000_hw.c:4788: warning: Excess function parameter 'total_collisions' description in 'e1000_update_adaptive'
   drivers/net/ethernet/intel/e1000/e1000_hw.c:5079: warning: Excess function parameter 'downshift' description in 'e1000_check_downshift'
   drivers/net/ethernet/intel/e1000/e1000_main.c:212: warning: Function parameter or member 'hw' not described in 'e1000_get_hw_dev'
   drivers/net/ethernet/intel/e1000/e1000_main.c:365: warning: Function parameter or member 'adapter' not described in 'e1000_configure'
   drivers/net/ethernet/intel/e1000/e1000_main.c:3500: warning: Function parameter or member 'txqueue' not described in 'e1000_tx_timeout'
   drivers/net/ethernet/intel/e1000/e1000_main.c:3799: warning: Function parameter or member 'napi' not described in 'e1000_clean'
   drivers/net/ethernet/intel/e1000/e1000_main.c:3799: warning: Function parameter or member 'budget' not described in 'e1000_clean'
   drivers/net/ethernet/intel/e1000/e1000_main.c:3799: warning: Excess function parameter 'adapter' description in 'e1000_clean'
   drivers/net/ethernet/intel/e1000/e1000_main.c:3830: warning: Function parameter or member 'tx_ring' not described in 'e1000_clean_tx_irq'
   drivers/net/ethernet/intel/e1000/e1000_main.c:3946: warning: Function parameter or member 'skb' not described in 'e1000_rx_checksum'
   drivers/net/ethernet/intel/e1000/e1000_main.c:3946: warning: Excess function parameter 'sk_buff' description in 'e1000_rx_checksum'
   drivers/net/ethernet/intel/e1000/e1000_main.c:3982: warning: Function parameter or member 'bi' not described in 'e1000_consume_page'
   drivers/net/ethernet/intel/e1000/e1000_main.c:3982: warning: Function parameter or member 'skb' not described in 'e1000_consume_page'
   drivers/net/ethernet/intel/e1000/e1000_main.c:3982: warning: Function parameter or member 'length' not described in 'e1000_consume_page'
   drivers/net/ethernet/intel/e1000/e1000_main.c:4020: warning: Function parameter or member 'stats' not described in 'e1000_tbi_adjust_stats'
   drivers/net/ethernet/intel/e1000/e1000_main.c:4561: warning: Function parameter or member 'rx_ring' not described in 'e1000_alloc_rx_buffers'
   drivers/net/ethernet/intel/e1000/e1000_main.c:4561: warning: Function parameter or member 'cleaned_count' not described in 'e1000_alloc_rx_buffers'
   drivers/net/ethernet/intel/e1000/e1000_main.c:4674: warning: Function parameter or member 'adapter' not described in 'e1000_smartspeed'
   drivers/net/ethernet/intel/e1000/e1000_main.c:4733: warning: Function parameter or member 'netdev' not described in 'e1000_ioctl'
   drivers/net/ethernet/intel/e1000/e1000_main.c:4733: warning: Function parameter or member 'ifr' not described in 'e1000_ioctl'
   drivers/net/ethernet/intel/e1000/e1000_main.c:4733: warning: Function parameter or member 'cmd' not described in 'e1000_ioctl'
   drivers/net/ethernet/intel/e1000/e1000_main.c:4752: warning: Function parameter or member 'netdev' not described in 'e1000_mii_ioctl'
   drivers/net/ethernet/intel/e1000/e1000_main.c:4752: warning: Function parameter or member 'ifr' not described in 'e1000_mii_ioctl'
   drivers/net/ethernet/intel/e1000/e1000_main.c:4752: warning: Function parameter or member 'cmd' not described in 'e1000_mii_ioctl'
   WARNING: Symbol version dump "Module.symvers" is missing.
            Modules may not have dependencies or modversions.
   WARNING: modpost: Symbol info of vmlinux is missing. Unresolved symbol check will be entirely skipped.

vim +/wowlan_support +49 drivers/net/wireless/microchip/wilc1000/cfg80211.c

15162fbc78a74a drivers/staging/wilc1000/wilc_wfi_cfgoperations.c Arnd Bergmann 2015-11-16  48  
73584a40d7484f drivers/staging/wilc1000/wilc_wfi_cfgoperations.c Glen Lee      2016-01-25 @49  static const struct wiphy_wowlan_support wowlan_support = {
73584a40d7484f drivers/staging/wilc1000/wilc_wfi_cfgoperations.c Glen Lee      2016-01-25  50  	.flags = WIPHY_WOWLAN_ANY
73584a40d7484f drivers/staging/wilc1000/wilc_wfi_cfgoperations.c Glen Lee      2016-01-25  51  };
73584a40d7484f drivers/staging/wilc1000/wilc_wfi_cfgoperations.c Glen Lee      2016-01-25  52  

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202006301302.9jscUTXl%25lkp%40intel.com.

--+QahgC5+KEYLbs62
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--+QahgC5+KEYLbs62--
