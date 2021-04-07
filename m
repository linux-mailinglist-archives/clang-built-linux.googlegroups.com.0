Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBIEQXCBQMGQELZXTI7I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x340.google.com (mail-ot1-x340.google.com [IPv6:2607:f8b0:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CED33574F1
	for <lists+clang-built-linux@lfdr.de>; Wed,  7 Apr 2021 21:29:38 +0200 (CEST)
Received: by mail-ot1-x340.google.com with SMTP id a20sf11806279otd.21
        for <lists+clang-built-linux@lfdr.de>; Wed, 07 Apr 2021 12:29:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617823777; cv=pass;
        d=google.com; s=arc-20160816;
        b=fwlc6PgfPwj98wZ3GzaO9/ArR7CLi9KnTJyqInmz4koJx+kAGR+KE/fxxpngv/VqHV
         pMnl6W7PIpUrVYqhRYKSE+39eJ8bKl9c97K/sqfTiYxFAtMqVVatHO7EmxsGjepL8Bmp
         sLSsPn9V2/4T2KVUYRsHaujeyQfQ/bSFJz19fVsq393vQRkvqGCTjDQzXzO94ekN58sd
         9W8EcUz7mrbDJQKzLoTSawKcnjL7yojQKGL9TzVTrzRZTeP0mS96RR6NlqdbBS1cldVS
         Ouk/eJBRhbC6LD2TP8r26RuP8MIpliCL1L8HakJgY4Q4eAeptInF6iSzqZfmV7wmJZI4
         woIg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=4CBuSUZYAsYAZMGsrwpcvtrC5jgp/Gb4sZGFjjoVpMI=;
        b=Lu+m90nLKg12Yr4TdL3Ibn1G9f5UtiMeY0IAfMyUzxyt4JABWShgqUblCYq2Prv9T8
         yQzpV7/F6lfARGyxpP5dgThEdqV8Yycg+AxwdbpdLe/qvyH5gs0tPKzQIfcygTKDDDjW
         dVkRQF0MV9kmtG6lrbaBzEBS+O9dDxlBf4dr2+aYu4/BzBU8aWlXyd8fLKGwYM/Tw7bX
         EWKxqW6gZD+qxCY8ytwfITZiieuR8rayIQLOTnk2pRxy/87EFmI+BvNfsrVyKhqVVWI+
         FAosJg/QSGrhfekmfU4IhIpSaiN7FWi6cmglqpe/3j3CzG+gAs/CtT8kWZMbug2uwwMR
         iUoA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4CBuSUZYAsYAZMGsrwpcvtrC5jgp/Gb4sZGFjjoVpMI=;
        b=pO937bmOQW0JIVO4v5YXlPD6qyFsKcNeA+Imq8289sOsq9PRQ9yP+3erZvSmxep5Pa
         sOaP2nL8Pd6A/yz0tcd2jiHfP6xwWcWFKXc3KtkbMEaHntir2mHeMjojcZzrWYjQYuer
         B8UPrNM2b7hDXuKBHWYRL9NkU7dOlUAGotX+MjCYhUfKSG+xIOQ/Eg7S6z6VjXamtpr3
         GuKnYsYwDvUfdmSbFJRvBugFAiI0Oqgm8AfNDT0f4gBz8M6CuoLPl4LvEiF30I99Ovc1
         lbCsQ0B/YlOy8EB6fk9qWAJwvnsQcnB0jf/tz/HasqoOidXHMWKQ9L/SyCJGLg/bMAcm
         EY/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4CBuSUZYAsYAZMGsrwpcvtrC5jgp/Gb4sZGFjjoVpMI=;
        b=hL3IqvfRA76K8pHqjNMfX0O8v3CVrVBDyyzZh3397ZLUxUTyzh6e1OPZWwdGhSb/hk
         cOaFOj629bFgV60r+SMjhXmTyPjF6SNgCzVo+psZIsk/H81MBqbHWXFjxSpSDHomRqqR
         VvV08QhXfQYGp6bzvyI7GoDKKVrviHZQqNUKIykIQ0QjXWNDOaoQZ2ERw3rKuTgVkp2x
         OsV7pArKY+MODZkrt6tPlqI5BBTYFv7gs6VCkPjBw06UMJoUcc2y+g+Liiz8bp8tAgP4
         1dKDjZDQNl8FWafzwifE4HgTjPWBWGo6C7BqdvXaTKQYeftQXmhxJZ/w0AVAdM1i6I1a
         rhfg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533s+6XfSNY9YmeD5JzBlldA89hW+QKQkDEBCb9c7WDSANi4J8nj
	wMCja+b8hmR+oFC3yWWKhT4=
X-Google-Smtp-Source: ABdhPJywL5tnYMf3o8pzLb4HM2RZ27ozAeuSdYqzDP/S3gXYKhT1znjf+8+Re49bO4Q1xD+9KrEfLg==
X-Received: by 2002:a05:6830:2105:: with SMTP id i5mr4128817otc.215.1617823776986;
        Wed, 07 Apr 2021 12:29:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:a97:: with SMTP id q23ls739216oij.0.gmail; Wed, 07
 Apr 2021 12:29:36 -0700 (PDT)
X-Received: by 2002:a05:6808:b19:: with SMTP id s25mr3302221oij.103.1617823776381;
        Wed, 07 Apr 2021 12:29:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617823776; cv=none;
        d=google.com; s=arc-20160816;
        b=cU7MV253yOGE5w7qMCxQw4lPnNGF2tdR+Iz2r5nIXaPKsi55a2NTumbN625OcA8S2s
         cJgHgALdn1cBbtuNAjHEvBJGasDGRVNid14mdmtQ4OVn1xRwjgLYg33Zyc5WSoxHsiH9
         GWrGAH2BE9b5MODmalgweYWv+96nJD6yDkU/+rI1sP6/QUZ+bvlGVo0PRY7TvuDGKe+I
         uWrKVWJkRuhBSsAfPInvwUla11pf5S/zA6+fVrr1CDysJRPya/Zye/vNimT1lHCxeN3d
         SKRKAOmrhXDixpq2YouiOfTChDPMYNo8euBWHGpA5SnJjKo4kWpsDXMJNchY7/kYjCqg
         XnWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=omTv6YE39B/sMHagJpdUd5i++GL4YkZNUK0abUYuRsM=;
        b=dLxs6woUnSF45RV//00lmYeZOz+baWfcTLzerfwxnchPabyFE73XByden0EB2EvS/T
         SdVogAUZgPYizAxdiq7SWcUmX6mfH7w91LivvpmLFFFjWUckjBmiP48mVScIY6Fdy9Ky
         hetmUZ7Cp32+U1ixEpjbHO1+zJ3+Floij0wsNRBHuvxvBult1Fxbj+q7tSSRURY+wbC3
         /DnGeAtAn8DUI9ga2FLDUeevT4J0NV9fiobGxi+XV6w3aVe88fNkh5QeRxLfY0vjTlCk
         1ecSc+J4EYfdDW73V96STiY+Odh16ytzmwNP6V3oqcotUN34dSKysdJUAlKoHk4JoNWw
         7vvQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga01.intel.com (mga01.intel.com. [192.55.52.88])
        by gmr-mx.google.com with ESMTPS id h5si2445646otk.1.2021.04.07.12.29.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Apr 2021 12:29:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) client-ip=192.55.52.88;
IronPort-SDR: rPgUeyn/6mA43/9jfyVrddwT3jDVrRsQkSGM4Ln6WMkY3JkHI3BY8MHPSjZ+N7iNYbWG5TOcAn
 jRFh3A79CUiA==
X-IronPort-AV: E=McAfee;i="6000,8403,9947"; a="213780755"
X-IronPort-AV: E=Sophos;i="5.82,203,1613462400"; 
   d="gz'50?scan'50,208,50";a="213780755"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Apr 2021 12:29:34 -0700
IronPort-SDR: +7Nd7z5zpRtDvqhGE1ymK5q+HEMDRndRYRINcydp7524+pa9SXSAX6tbm0iCc2eSu4cQhq/IQL
 UFZ58MgYN+Xg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,203,1613462400"; 
   d="gz'50?scan'50,208,50";a="396780808"
Received: from lkp-server01.sh.intel.com (HELO 69d8fcc516b7) ([10.239.97.150])
  by orsmga002.jf.intel.com with ESMTP; 07 Apr 2021 12:29:31 -0700
Received: from kbuild by 69d8fcc516b7 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lUDrm-000DhT-BE; Wed, 07 Apr 2021 19:29:30 +0000
Date: Thu, 8 Apr 2021 03:28:35 +0800
From: kernel test robot <lkp@intel.com>
To: Marcelo Tosatti <mtosatti@redhat.com>,
	Thomas Gleixner <tglx@linutronix.de>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Frederic Weisbecker <frederic@kernel.org>,
	Peter Xu <peterx@redhat.com>,
	Nitesh Narayan Lal <nitesh@redhat.com>,
	Alex Belits <abelits@marvell.com>
Subject: Re: [PATCH] hrtimer: avoid retrigger_next_event IPI
Message-ID: <202104080359.9IYiD2fj-lkp@intel.com>
References: <20210407135301.GA16985@fuller.cnet>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="BOKacYhQ+x31HxR3"
Content-Disposition: inline
In-Reply-To: <20210407135301.GA16985@fuller.cnet>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted
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


--BOKacYhQ+x31HxR3
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Marcelo,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on tip/timers/core]
[also build test WARNING on linux/master linus/master v5.12-rc6 next-20210407]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Marcelo-Tosatti/hrtimer-avoid-retrigger_next_event-IPI/20210407-233005
base:   https://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git d4c7c28806616809e3baa0b7cd8c665516b2726d
config: arm64-randconfig-r032-20210407 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project c060945b23a1c54d4b2a053ff4b093a2277b303d)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install arm64 cross compiling tool for clang build
        # apt-get install binutils-aarch64-linux-gnu
        # https://github.com/0day-ci/linux/commit/defd4db9d63d1f16e3e21862bd9c9105a9f6a7e9
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Marcelo-Tosatti/hrtimer-avoid-retrigger_next_event-IPI/20210407-233005
        git checkout defd4db9d63d1f16e3e21862bd9c9105a9f6a7e9
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   kernel/time/hrtimer.c:120:21: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
           [CLOCK_REALTIME]        = HRTIMER_BASE_REALTIME,
                                     ^~~~~~~~~~~~~~~~~~~~~
   kernel/time/hrtimer.c:118:27: note: previous initialization is here
           [0 ... MAX_CLOCKS - 1]  = HRTIMER_MAX_CLOCK_BASES,
                                     ^~~~~~~~~~~~~~~~~~~~~~~
   kernel/time/hrtimer.c:121:22: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
           [CLOCK_MONOTONIC]       = HRTIMER_BASE_MONOTONIC,
                                     ^~~~~~~~~~~~~~~~~~~~~~
   kernel/time/hrtimer.c:118:27: note: previous initialization is here
           [0 ... MAX_CLOCKS - 1]  = HRTIMER_MAX_CLOCK_BASES,
                                     ^~~~~~~~~~~~~~~~~~~~~~~
   kernel/time/hrtimer.c:122:21: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
           [CLOCK_BOOTTIME]        = HRTIMER_BASE_BOOTTIME,
                                     ^~~~~~~~~~~~~~~~~~~~~
   kernel/time/hrtimer.c:118:27: note: previous initialization is here
           [0 ... MAX_CLOCKS - 1]  = HRTIMER_MAX_CLOCK_BASES,
                                     ^~~~~~~~~~~~~~~~~~~~~~~
   kernel/time/hrtimer.c:123:17: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
           [CLOCK_TAI]             = HRTIMER_BASE_TAI,
                                     ^~~~~~~~~~~~~~~~
   kernel/time/hrtimer.c:118:27: note: previous initialization is here
           [0 ... MAX_CLOCKS - 1]  = HRTIMER_MAX_CLOCK_BASES,
                                     ^~~~~~~~~~~~~~~~~~~~~~~
>> kernel/time/hrtimer.c:944:1: warning: unused label 'set_timerfd' [-Wunused-label]
   set_timerfd:
   ^~~~~~~~~~~~
   kernel/time/hrtimer.c:147:20: warning: unused function 'is_migration_base' [-Wunused-function]
   static inline bool is_migration_base(struct hrtimer_clock_base *base)
                      ^
   kernel/time/hrtimer.c:650:19: warning: unused function 'hrtimer_hres_active' [-Wunused-function]
   static inline int hrtimer_hres_active(void)
                     ^
   kernel/time/hrtimer.c:881:13: warning: unused function 'need_reprogram_timer' [-Wunused-function]
   static bool need_reprogram_timer(struct hrtimer_cpu_base *cpu_base)
               ^
   kernel/time/hrtimer.c:1793:20: warning: unused function '__hrtimer_peek_ahead_timers' [-Wunused-function]
   static inline void __hrtimer_peek_ahead_timers(void) { }
                      ^
   9 warnings generated.


vim +/set_timerfd +944 kernel/time/hrtimer.c

   895	
   896	/*
   897	 * Clock realtime was set
   898	 *
   899	 * Change the offset of the realtime clock vs. the monotonic
   900	 * clock.
   901	 *
   902	 * We might have to reprogram the high resolution timer interrupt. On
   903	 * SMP we call the architecture specific code to retrigger _all_ high
   904	 * resolution timer interrupts. On UP we just disable interrupts and
   905	 * call the high resolution interrupt code.
   906	 */
   907	void clock_was_set(void)
   908	{
   909	#ifdef CONFIG_HIGH_RES_TIMERS
   910		cpumask_var_t mask;
   911		int cpu;
   912	
   913		if (!tick_nohz_full_enabled()) {
   914			/* Retrigger the CPU local events everywhere */
   915			on_each_cpu(retrigger_next_event, NULL, 1);
   916			goto set_timerfd;
   917		}
   918	
   919		if (!zalloc_cpumask_var(&mask, GFP_KERNEL)) {
   920			on_each_cpu(retrigger_next_event, NULL, 1);
   921			goto set_timerfd;
   922		}
   923	
   924		/* Avoid interrupting nohz_full CPUs if possible */
   925		preempt_disable();
   926		for_each_online_cpu(cpu) {
   927			if (tick_nohz_full_cpu(cpu)) {
   928				unsigned long flags;
   929				struct hrtimer_cpu_base *cpu_base = &per_cpu(hrtimer_bases, cpu);
   930	
   931				raw_spin_lock_irqsave(&cpu_base->lock, flags);
   932				if (need_reprogram_timer(cpu_base))
   933					cpumask_set_cpu(cpu, mask);
   934				else
   935					hrtimer_update_base(cpu_base);
   936				raw_spin_unlock_irqrestore(&cpu_base->lock, flags);
   937			}
   938		}
   939	
   940		smp_call_function_many(mask, retrigger_next_event, NULL, 1);
   941		preempt_enable();
   942		free_cpumask_var(mask);
   943	#endif
 > 944	set_timerfd:
   945		timerfd_clock_was_set();
   946	}
   947	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202104080359.9IYiD2fj-lkp%40intel.com.

--BOKacYhQ+x31HxR3
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--BOKacYhQ+x31HxR3--
