Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBEMIXP6QKGQEGOAKHDY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3d.google.com (mail-qv1-xf3d.google.com [IPv6:2607:f8b0:4864:20::f3d])
	by mail.lfdr.de (Postfix) with ESMTPS id D9D3F2B229F
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 18:36:18 +0100 (CET)
Received: by mail-qv1-xf3d.google.com with SMTP id y8sf6526407qvu.22
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 09:36:18 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605288978; cv=pass;
        d=google.com; s=arc-20160816;
        b=jNhFnAqn94bvn/jDLvFqM8Dybt0WYPaQJRTbvb2CrEjHAaII95bFBCaE0xY+xQDhV0
         LTNpAGmYiCQCBLmLAFbGV8VFHic/VMQ2x4y4H4w+XG9eNTS4X6NGcZg3IDi9Gok1yFPv
         mAUoeUD5Hc1Z+qvBn0px6LUGPm5KQf4XksnqiJEZX+WUmMMlzWNvRDQLIUyyaTPdwpFh
         Q0wWlFfxytxtM8Mg5lqNvfmh2o/iO65zlPlkT/PuYaqvEjmh6mPdY10mhRvHdF0e234W
         OZbOykGP/UwmSUrUkf4T+8PpbPYgzz7RHQ1+UMMvsOPxlBbZtx/oLMpgenQsT5a+t5nY
         +qjg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=+Glc8lkyO0iMmudn4efHjEI6XV55l+KQdihN9dAnww8=;
        b=L6f4NvdIbZ6afusTwQlo/VYAoY1qZOmhCRtwtB3SVq2YzPAs2cBqTiUa4gjW7KbtxR
         1h0GVoZ2S5ZOVYA542pzyGbqyL7vZ3sAXa830af9W07BnZr2zGSSmbad1wbHvEgA8Yuy
         WRtb9djpbqIubqp+qA1Hl0DBMqI7pAWp+zOxt+e1GT/h3vcOMPCN6qsehXG8+DIKCaht
         ZiYi+0l+9cXrkDYjanHc/6m8yhzGWWjVnlZgH/FAmzo+ROGkczZ3ccDxXqDShnbTDFDy
         RMz6A/3Ypq/rlN77b/n+4JIlisFSdmcH9wIqRTFohZ7ftkR1GXRx5lb0LIeni/i6uBy3
         qrdA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+Glc8lkyO0iMmudn4efHjEI6XV55l+KQdihN9dAnww8=;
        b=DIcUKmHyZEdWbLOhCOQLylIgbkJSj9WdwvpJFt0H1wzR2Ytk9KcKRAxCypRhe/L6Ym
         2aUhs8TY6YiXtah7YEznmMlf+4+4DBjlfvwis+EXK5ByqglP0I2JZEXWByDitth5skCI
         C/+K+FJCo0fzBXn41O7jfOYLLDERiEDseMFttAy4b1Okm8XLWLiMNkanwtAKBVxp3IQm
         kHMDCY8z9b54wiOGKk/uumQJR4UkG8k9ks0PYLEn8CTUPjkh+68NWmvyd36tWp62g81g
         YddyJGo8K6Oiex404kiiOHbno7nf/XzI38d3/6eGra/qC5coakpxnvMJjqSY7W/f24VQ
         F63Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+Glc8lkyO0iMmudn4efHjEI6XV55l+KQdihN9dAnww8=;
        b=RnKYNCc0fMZbjn8uEDOKgkPr0COaDtOuVEisiVHcn4L1a5gw/ze1EqeVuYjaxQozWu
         SyotB2aI+UdgItsJ0khh+PPCFN0l71H4QhZ5y+hrRYPPHiAnQtJw4FpEPDWC+csTP+b7
         Hysj2Ha//kBDT1r2MT/V0vh/y2HVLUUIUn6SI8zJnzFQgSHx5fLZyl+0MgoPEO9Abn3Z
         NtYS0N53gHmtjOzbMXYNjHyYP25P2bJeG3GKMuZgK1lnjqYonqNlvJoG8cGARHhpBvnT
         d+Or5xhkgTFS3cset1XwrOjLD0PYpgyaVdxOmCWjBndJmI0r2oth2nGVE8otlkVo+IfZ
         V+rQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532mwdndhW9Th7lrDDBqSz8S4FJ+32O6qQ2atZS+A8l08lEH318Q
	WrGe66suD3jWr3KPeBJmPkE=
X-Google-Smtp-Source: ABdhPJwWlCvjyrOWLzaQUCfvNElzSFRIyCvqVeUypz/IpEnqYAoD+jnpGMeNU10agyCc4L/0tGUCQw==
X-Received: by 2002:a37:8703:: with SMTP id j3mr3181197qkd.5.1605288977885;
        Fri, 13 Nov 2020 09:36:17 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:8844:: with SMTP id k65ls526751qkd.2.gmail; Fri, 13 Nov
 2020 09:36:17 -0800 (PST)
X-Received: by 2002:a37:73c6:: with SMTP id o189mr3069105qkc.216.1605288977312;
        Fri, 13 Nov 2020 09:36:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605288977; cv=none;
        d=google.com; s=arc-20160816;
        b=O1n+QvMR4n4SpfAZmYgwmTtWfUZc4xMsRqfBJ1XmbXlGrSqSHEulPghyxFVrM/ubYG
         ycT7Nc/xCOCFryrGTATypvc1pLoYY/muUlJuGPTNsumZ0iMCRAToaDceLJAzA0BvXPP7
         C52Sr4ThdcQqZvnM8D74xMdZnUJ5R7JzlvcKWtgYiAEjRUP0CcLbTREX8RJRTLysi91m
         fIputdmUBR8oNmhLP/4TKHDZkja30mitTVLyS/xf40iDdP5lQ1ItLAM8jVNO4ot6CsyB
         7mgNB11I1JFxV67EEZdTmj8REeKqTyLdRhf1dEJ7iIq5jous6dP+eqx+bUmkc8nKHjdM
         RsBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=1SXGrFg5ACTJXXAjeRGQNVrqV4e4Jxhr01Fv/bk+cxE=;
        b=0XwBSD7A7euiFPLsCZ5s4h3OJcH/PF1SWCavmd6405Hi0Q58I3NJRv65y7megPNrYf
         eDx/N7tsbqevdXQ2/1IiH30P+jrdlGG52cbH9b0gwOUtGJVjniZfl9mQW87lq6wgWFkC
         ++yrPY8V++iR9DkW0U6JStyg9rjAZG+A9Phy9BcPAKktgldzzZyM6cj4RXO259h6/hhH
         NFP85+Vq3Sg26pup84f7dsWdUwBs3faEmiEMH5Re1wwpf2/s4Z4UGAU2MeJdZ8ct0czr
         ATO0lcZiJQVWNOO9PYYvqnZazZKSmVj6qf7DEjHBiFXrwmylulWyaAyTUjTUPI6xH4RE
         +Quw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga05.intel.com (mga05.intel.com. [192.55.52.43])
        by gmr-mx.google.com with ESMTPS id g19si116185qko.1.2020.11.13.09.36.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Nov 2020 09:36:17 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) client-ip=192.55.52.43;
IronPort-SDR: ZvYLWFL9rNtwffWNB8IXfxpEWlQqYrt4i+3DOXC42VzYhUyRfFCKqUEkp8EU11dLNNrTMOStfa
 nldRCUsPknIQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9804"; a="255216533"
X-IronPort-AV: E=Sophos;i="5.77,476,1596524400"; 
   d="gz'50?scan'50,208,50";a="255216533"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Nov 2020 09:36:15 -0800
IronPort-SDR: qQ25kEQArYIZOdnCIkJWCRLHSHTn7IXUyOEMc+W8OU/jFIF4kPAbnoQD7QP/99dQgoBcHmuA/K
 iR/sU2iEdgtw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,476,1596524400"; 
   d="gz'50?scan'50,208,50";a="357589979"
Received: from lkp-server02.sh.intel.com (HELO 697932c29306) ([10.239.97.151])
  by fmsmga004.fm.intel.com with ESMTP; 13 Nov 2020 09:36:14 -0800
Received: from kbuild by 697932c29306 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kdczd-0000Si-Ml; Fri, 13 Nov 2020 17:36:13 +0000
Date: Sat, 14 Nov 2020 01:35:16 +0800
From: kernel test robot <lkp@intel.com>
To: Frederic Weisbecker <frederic@kernel.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH 19/19] rcu/nocb: Detect unsafe checks for offloaded rdp
Message-ID: <202011140158.JBqos9PW-lkp@intel.com>
References: <20201113121334.166723-20-frederic@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="Q68bSM7Ycu6FN28Q"
Content-Disposition: inline
In-Reply-To: <20201113121334.166723-20-frederic@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted
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


--Q68bSM7Ycu6FN28Q
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Frederic,

I love your patch! Yet something to improve:

[auto build test ERROR on rcu/dev]
[also build test ERROR on rcu/rcu/next next-20201113]
[cannot apply to tip/timers/core linus/master linux/master v5.10-rc3]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Frederic-Weisbecker/rcu-nocb-De-offload-and-re-offload-support-v4/20201113-201658
base:   https://git.kernel.org/pub/scm/linux/kernel/git/paulmck/linux-rcu.git dev
config: arm-randconfig-r013-20201113 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 9e0c35655b6e8186baef8840b26ba4090503b554)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install arm cross compiling tool for clang build
        # apt-get install binutils-arm-linux-gnueabi
        # https://github.com/0day-ci/linux/commit/4c0d56c4bf8ec775e46d5e895080a2df42e306d8
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Frederic-Weisbecker/rcu-nocb-De-offload-and-re-offload-support-v4/20201113-201658
        git checkout 4c0d56c4bf8ec775e46d5e895080a2df42e306d8
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   In file included from kernel/rcu/tree.c:4591:
>> kernel/rcu/tree_plugin.h:71:40: error: implicit declaration of function 'lockdep_is_cpus_held' [-Werror,-Wimplicit-function-declaration]
                     (IS_ENABLED(CONFIG_HOTPLUG_CPU) && lockdep_is_cpus_held()) ||
                                                        ^
   kernel/rcu/tree_plugin.h:71:40: note: did you mean 'lockdep_assert_cpus_held'?
   include/linux/cpu.h:136:20: note: 'lockdep_assert_cpus_held' declared here
   static inline void lockdep_assert_cpus_held(void) { }
                      ^
   1 error generated.

vim +/lockdep_is_cpus_held +71 kernel/rcu/tree_plugin.h

    57	
    58	static bool rcu_rdp_is_offloaded(struct rcu_data *rdp)
    59	{
    60		/*
    61		 * In order to read the offloaded state of an rdp is a safe
    62		 * and stable way and prevent from its value to be changed
    63		 * under us, we must either hold the barrier mutex, the cpu
    64		 * hotplug lock (read or write) or the nocb lock. Local
    65		 * non-preemptible reads are also safe. NOCB kthreads and
    66		 * timers have their own means of synchronization against the
    67		 * offloaded state updaters.
    68		 */
    69		RCU_LOCKDEP_WARN(
    70			!(lockdep_is_held(&rcu_state.barrier_mutex) ||
  > 71			  (IS_ENABLED(CONFIG_HOTPLUG_CPU) && lockdep_is_cpus_held()) ||
    72			  rcu_lockdep_is_held_nocb(rdp) ||
    73			  (rdp == this_cpu_ptr(&rcu_data) &&
    74			   !(IS_ENABLED(CONFIG_PREEMPT_COUNT) && preemptible())) ||
    75			  rcu_current_is_nocb_kthread(rdp) ||
    76			  rcu_running_nocb_timer(rdp)),
    77			"Unsafe read of RCU_NOCB offloaded state"
    78		);
    79	
    80		return rcu_segcblist_is_offloaded(&rdp->cblist);
    81	}
    82	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202011140158.JBqos9PW-lkp%40intel.com.

--Q68bSM7Ycu6FN28Q
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--Q68bSM7Ycu6FN28Q--
