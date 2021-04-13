Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBOVV3CBQMGQE7M4WFJI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103b.google.com (mail-pj1-x103b.google.com [IPv6:2607:f8b0:4864:20::103b])
	by mail.lfdr.de (Postfix) with ESMTPS id B454535E8FE
	for <lists+clang-built-linux@lfdr.de>; Wed, 14 Apr 2021 00:27:12 +0200 (CEST)
Received: by mail-pj1-x103b.google.com with SMTP id q60-20020a17090a7542b02900ddfd0d8edcsf5091728pjk.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 13 Apr 2021 15:27:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618352826; cv=pass;
        d=google.com; s=arc-20160816;
        b=jQan56aaW81gxL8IyOSDCaie3ZCoI72OtmvOWgoGv8SitR0hqb/3qx3e+8kUhnNtJU
         TTRbuj5GE0hAK13GN9r0wNSfzzuBGviAdYPkgCLs9G2LRekC/67EcfSUrPe1RplzdjVq
         jxWpmHxEqXxeCeo3+dNBH4/uWS/mCQbESSibj0M66Tz5Nrgvqy6ZegjfQAKrTgWKxn1S
         DfJJ8KhVIvC5w9SGbiUE2UjAyvhCe0owwD+h0cKoOTy0SqHtOZhMRqNFY7MSYNKpMuXk
         eEo0c/9fWwl+i/YiITf7qBoIUIM+I1RN9KHTQHE2WNlt0nzGDxb3/3fOy58EtMxyYYfz
         dw2A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=d670HB5oyJQKd9mSKzCEDcLtehKaebDFsBd/mNB5/hQ=;
        b=AOQx1Ys/DRGjsDKJOQRQlguotnlbvGxArwdlhXbCPmyytsvRiPGB0dzgGkZ3525fCu
         7/2IVXcbosiCW6+L0e4fHqi+0EO5W6a863xD3VG6U0cRKv5L2YipYnHN8yMDDo67WvnQ
         ph405RLZd9Dp6A36JheDvYi3brMVdWouwJ2wat03S4uvDRw+iJmNlOnJnT9s/O+52teL
         83xrAOP/vnkKWCFBGy7Aq+4HSmZtbf5qs1GLKJhVS/hlvoEZS3bUXglFbwwQiyME8N+q
         nSNRl4+/xUHwuFtuRXytDuz4TNyS5qIntJaaRyLyF11Ubm9Np8xeX7A2Wkw0b5yzXbOG
         XJ8Q==
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
        bh=d670HB5oyJQKd9mSKzCEDcLtehKaebDFsBd/mNB5/hQ=;
        b=VzzhRylwhvFdQFppsPVn1zPgujyePW1LmWDNfdnSkgdJ7q2+s5OtneQ+5Z0ISWYMfN
         M1Fn7srm58ZRlQEYur5xMq5FG3cjZCLXbq4lXuvhkdxMFwHEhn9s4xyv+3tjSTAOUEs+
         bbgT7Tal9zINNYsKXUun+60D1LWBCy5pHsBjIVJR/l/HyeIQ7goP+4rF+r4XLECncPhf
         QyBevx/FxF8MofCKfd5vfSpyJQ+LEDoU4fOp9VdniPn22dodtbCK4j1UbtUR/H/tYZqK
         z+8Zo7xp+KiFcJ716smfW7ExchyQYWpa8mfdrfUyIrFwV1drtylDTE3YN40fiyhe/sSu
         cspg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=d670HB5oyJQKd9mSKzCEDcLtehKaebDFsBd/mNB5/hQ=;
        b=r2Oc1xDJ8fqzHIhjxWynMD8jAgHT5HPNCI82qIGmXxTzAI094ffhUNiAzq7pHTAVlq
         BYMC1j0fj4CVmolb+vdVRf5L7ugENkWlyaKgkbQmFTE8+UFREhZOBPXF5IGYNsKbByJr
         sdB7QdABB+BeQfutr6ohTDKWig7oeoJIf9XPIX+HxJR319XfTYeeLU+B518j582/VSv5
         qJv3NF4+JOnlC50frJxhcva01kaZfmCyfFHRQEbdHgxjrsjKOAt7K/qyDqCuqCKtkiag
         TcwZ+Wnxd8vFDQK6tDuZ2cF0Xm6IQddMe0noR9sWHZ0/ymRGxrxmi/WsOg+YTIpCANVZ
         Cs5A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530EeBjw75lm/hsvrjKi/Ha+BsRDMrWO1PqXfo42si1PLAeJX3Kp
	wZotC9vlnMbznlcWZ50KdrQ=
X-Google-Smtp-Source: ABdhPJzUzUtxZhS36l1mVyGYJfKhcPoIgg2sJnShxSqRUhZ66wdvC5ccR1Gmstj4kuXxDnp+IIn5LQ==
X-Received: by 2002:a17:902:d2c9:b029:e9:67f7:9844 with SMTP id n9-20020a170902d2c9b02900e967f79844mr32961734plc.66.1618352826230;
        Tue, 13 Apr 2021 15:27:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:348e:: with SMTP id p14ls89674pjb.1.canary-gmail;
 Tue, 13 Apr 2021 15:27:05 -0700 (PDT)
X-Received: by 2002:a17:90b:3b87:: with SMTP id pc7mr25993pjb.87.1618352825661;
        Tue, 13 Apr 2021 15:27:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618352825; cv=none;
        d=google.com; s=arc-20160816;
        b=R1SLNwk9hh+sLP6TjDcdOhVoJcYRSnk41OlhVQyBNjmoCnGQKUirTCVWdZ3gGNg8wS
         3hma8Jy3MZTNYYwaP5Rel8UR3r4jTplNlnXrDq7okd+7PZkTTMcLZsvyH/1G90c3Enuf
         o+6b2JDJQCg7F1iTw610P4LtYVRXvrjA3aN1DHnmX5iEcTV1fd73Mo7ZEhtj0bkb5lUP
         bRRZf57mIIpnb/TpXQbKtA7NfjB8nwH20N1WXFvKs5XqjcdMjmThl2VadhbWC+gr+b8p
         6HiUN/jGbRJ5Y09Ik9cKPcBIxCRXq6TvUKHpm5JZYMuuUtA/M5uesGmCNz6CJGoSxiCm
         cLQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=DXF0tfwEHp2hA/Jr4M7bn8pX+nhJnpm/rFyDpwQ23lw=;
        b=dHDxTh1ZmCd6VWGN4ptCe5w6Ijvc0CzDg6+fVCIreJntqFBTMpweoXA/CzeGIBpJkf
         ak4lZafBCceHfHZqIfcRgt9+AfoPqQgAczP1Kc0hMYVQOrmFlZqCsRGcViJb8jjQTEU/
         /pn2kKuZlSJ0KC0dNQgbTcpjly5/iC5hX3J6EWJTFTU07dwNDks1x8kvx8AqIcj1V+gx
         R0/Oop4NGQeNEvEDw5gOBA1yU7MigoC+Iy+T0cbXl9vF9GoR/jwH62dB3XBAOaYsbvO0
         DTRyBY34/0WY/hjaIvCgF9BJNYH4x33elu+xCWopa/0rFhmSXCGqWgHwPKqT1sJxVaoy
         3+iw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga01.intel.com (mga01.intel.com. [192.55.52.88])
        by gmr-mx.google.com with ESMTPS id u21si1112836pfc.0.2021.04.13.15.27.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Apr 2021 15:27:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) client-ip=192.55.52.88;
IronPort-SDR: qT06EAokoige3o+DxZPc0JC9mwFuKRONful3Jwun0M4Pk6RuLLhcf1TnwBwgZWniF6rSBQAIYF
 P1PHee5ay3cQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9953"; a="215001261"
X-IronPort-AV: E=Sophos;i="5.82,220,1613462400"; 
   d="gz'50?scan'50,208,50";a="215001261"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Apr 2021 15:26:43 -0700
IronPort-SDR: f5lgS2wFUZN3gUEiylbrdElmowmYLysMaVJjsontaHEVxfCKT/DvwInBD8M5NaLrqJQ3UQvBws
 wKNmCcUP8Lkw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,220,1613462400"; 
   d="gz'50?scan'50,208,50";a="615078663"
Received: from lkp-server01.sh.intel.com (HELO 69d8fcc516b7) ([10.239.97.150])
  by fmsmga005.fm.intel.com with ESMTP; 13 Apr 2021 15:26:39 -0700
Received: from kbuild by 69d8fcc516b7 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lWRUV-0001KJ-0H; Tue, 13 Apr 2021 22:26:39 +0000
Date: Wed, 14 Apr 2021 06:25:36 +0800
From: kernel test robot <lkp@intel.com>
To: Sean Christopherson <seanjc@google.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: Re: [RFC PATCH 1/7] sched/vtime: Move guest enter/exit vtime
 accounting to separate helpers
Message-ID: <202104140633.4a9nDtAC-lkp@intel.com>
References: <20210413182933.1046389-2-seanjc@google.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="ew6BAiZeqk4r7MaW"
Content-Disposition: inline
In-Reply-To: <20210413182933.1046389-2-seanjc@google.com>
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


--ew6BAiZeqk4r7MaW
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Sean,

[FYI, it's a private test report for your RFC patch.]
[auto build test ERROR on kvm/queue]
[also build test ERROR on vhost/linux-next linus/master v5.12-rc7 next-20210413]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Sean-Christopherson/KVM-Fix-tick-based-vtime-accounting-on-x86/20210414-023106
base:   https://git.kernel.org/pub/scm/virt/kvm/kvm.git queue
config: powerpc64-randconfig-r023-20210413 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 9829f5e6b1bca9b61efc629770d28bb9014dec45)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc64 cross compiling tool for clang build
        # apt-get install binutils-powerpc64-linux-gnu
        # https://github.com/0day-ci/linux/commit/c68e2a1489e453b217384eb985d04dd6784c3b53
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Sean-Christopherson/KVM-Fix-tick-based-vtime-accounting-on-x86/20210414-023106
        git checkout c68e2a1489e453b217384eb985d04dd6784c3b53
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   In file included from arch/powerpc/kernel/asm-offsets.c:23:
   In file included from include/linux/suspend.h:5:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:13:
   In file included from include/linux/cgroup.h:26:
   In file included from include/linux/kernel_stat.h:9:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:9:
>> include/linux/vtime.h:68:3: error: implicit declaration of function 'vtime_guest_enter' [-Werror,-Wimplicit-function-declaration]
                   vtime_guest_enter(current);
                   ^
>> include/linux/vtime.h:76:3: error: implicit declaration of function 'vtime_guest_exit' [-Werror,-Wimplicit-function-declaration]
                   vtime_guest_exit(current);
                   ^
>> include/linux/vtime.h:111:13: error: conflicting types for 'vtime_guest_enter'
   extern void vtime_guest_enter(struct task_struct *tsk);
               ^
   include/linux/vtime.h:68:3: note: previous implicit declaration is here
                   vtime_guest_enter(current);
                   ^
>> include/linux/vtime.h:112:13: error: conflicting types for 'vtime_guest_exit'
   extern void vtime_guest_exit(struct task_struct *tsk);
               ^
   include/linux/vtime.h:76:3: note: previous implicit declaration is here
                   vtime_guest_exit(current);
                   ^
   4 errors generated.
--
   In file included from arch/powerpc/kernel/asm-offsets.c:23:
   In file included from include/linux/suspend.h:5:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:13:
   In file included from include/linux/cgroup.h:26:
   In file included from include/linux/kernel_stat.h:9:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:9:
>> include/linux/vtime.h:68:3: error: implicit declaration of function 'vtime_guest_enter' [-Werror,-Wimplicit-function-declaration]
                   vtime_guest_enter(current);
                   ^
>> include/linux/vtime.h:76:3: error: implicit declaration of function 'vtime_guest_exit' [-Werror,-Wimplicit-function-declaration]
                   vtime_guest_exit(current);
                   ^
>> include/linux/vtime.h:111:13: error: conflicting types for 'vtime_guest_enter'
   extern void vtime_guest_enter(struct task_struct *tsk);
               ^
   include/linux/vtime.h:68:3: note: previous implicit declaration is here
                   vtime_guest_enter(current);
                   ^
>> include/linux/vtime.h:112:13: error: conflicting types for 'vtime_guest_exit'
   extern void vtime_guest_exit(struct task_struct *tsk);
               ^
   include/linux/vtime.h:76:3: note: previous implicit declaration is here
                   vtime_guest_exit(current);
                   ^
   4 errors generated.
   make[2]: *** [scripts/Makefile.build:116: arch/powerpc/kernel/asm-offsets.s] Error 1
   make[2]: Target '__build' not remade because of errors.
   make[1]: *** [Makefile:1235: prepare0] Error 2
   make[1]: Target 'prepare' not remade because of errors.
   make: *** [Makefile:215: __sub-make] Error 2
   make: Target 'prepare' not remade because of errors.


vim +/vtime_guest_enter +68 include/linux/vtime.h

    64	
    65	static __always_inline void vtime_account_guest_enter(void)
    66	{
    67		if (vtime_accounting_enabled_this_cpu())
  > 68			vtime_guest_enter(current);
    69		else
    70			current->flags |= PF_VCPU;
    71	}
    72	
    73	static __always_inline void vtime_account_guest_exit(void)
    74	{
    75		if (vtime_accounting_enabled_this_cpu())
  > 76			vtime_guest_exit(current);
    77		else
    78			current->flags &= ~PF_VCPU;
    79	}
    80	
    81	
    82	#else /* !CONFIG_VIRT_CPU_ACCOUNTING */
    83	
    84	static inline bool vtime_accounting_enabled_this_cpu(void) { return false; }
    85	static inline void vtime_task_switch(struct task_struct *prev) { }
    86	
    87	static __always_inline void vtime_account_guest_enter(void)
    88	{
    89		current->flags |= PF_VCPU;
    90	}
    91	
    92	static __always_inline void vtime_account_guest_exit(void)
    93	{
    94		current->flags &= ~PF_VCPU;
    95	}
    96	
    97	#endif
    98	
    99	/*
   100	 * Common vtime APIs
   101	 */
   102	#ifdef CONFIG_VIRT_CPU_ACCOUNTING
   103	extern void vtime_account_kernel(struct task_struct *tsk);
   104	extern void vtime_account_idle(struct task_struct *tsk);
   105	#endif /* CONFIG_VIRT_CPU_ACCOUNTING */
   106	
   107	#ifdef CONFIG_VIRT_CPU_ACCOUNTING_GEN
   108	extern void arch_vtime_task_switch(struct task_struct *tsk);
   109	extern void vtime_user_enter(struct task_struct *tsk);
   110	extern void vtime_user_exit(struct task_struct *tsk);
 > 111	extern void vtime_guest_enter(struct task_struct *tsk);
 > 112	extern void vtime_guest_exit(struct task_struct *tsk);
   113	extern void vtime_init_idle(struct task_struct *tsk, int cpu);
   114	#else /* !CONFIG_VIRT_CPU_ACCOUNTING_GEN  */
   115	static inline void vtime_user_enter(struct task_struct *tsk) { }
   116	static inline void vtime_user_exit(struct task_struct *tsk) { }
   117	static inline void vtime_guest_enter(struct task_struct *tsk) { }
   118	static inline void vtime_guest_exit(struct task_struct *tsk) { }
   119	static inline void vtime_init_idle(struct task_struct *tsk, int cpu) { }
   120	#endif
   121	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202104140633.4a9nDtAC-lkp%40intel.com.

--ew6BAiZeqk4r7MaW
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
zyKt5v8DqTWP1Q23AQA=

--ew6BAiZeqk4r7MaW--
