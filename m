Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBG7FUH3QKGQEKHYIHFY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x338.google.com (mail-ot1-x338.google.com [IPv6:2607:f8b0:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id 390721FA9DB
	for <lists+clang-built-linux@lfdr.de>; Tue, 16 Jun 2020 09:19:57 +0200 (CEST)
Received: by mail-ot1-x338.google.com with SMTP id t10sf9446165otl.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 16 Jun 2020 00:19:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592291996; cv=pass;
        d=google.com; s=arc-20160816;
        b=cMgBDvo/Il/PEQcm3fQYhlpBqAvpnMgWKMMS8FI67I9w/vOuxUZXsxYLIRHuwoeuW0
         7iTx2zBwgAwgD8HpICPTr5dxsg3OU2Q0Zn0JnHiRTemPdvISAqf5fpEgOWysCSNensRD
         FIaKPjpNFcz29HvJpNPg82mUCiUY5Zbjs3thtBPqyMyrgWXeN5QBNrBEIc9ZssMTscph
         lMxtPqOhMnOgIAjZcwJJaF4waWyoA4laKMSsSGwnPRjm3fQeEWPVSa7gYMPYWnpUlvTc
         gIBOqYTrK8Pu07O/+cOTRr58fsrn/LNziXYOBbT1sayoo1hW4Cmr8acpQFMWTfg8zoed
         sx0Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=4Ue4Rbw09pOcYPZXuv8iAK9TshItYX0We2usGTwAV5k=;
        b=M4gwOg14tc54eVoy/oi1Aoao8JZpX/TvYJCYy+zn86qLBHacnRz5bgNL1uo0On1wWF
         Ei8nTq26g55d4nyFUbSAKlwRtn4Pb4UCJncbRdhrYT6qrAX1cmr3bJxmto1Hc8/Cpy5D
         Av8D5CQNgHSgQxdyGMyfFzDZJ0iP1ZnUDmmshnNrUhs6J6/6HWKyFJdXsi9pya7vQGcO
         azboQYFFysZUz+1PoTT/aulDR0997VC2Dku+ymuDqO4/Q/7XkvM+uPiZpN2o7zkwqj/S
         IXq7O1oXejW4n1jaWba7Y6qGEywxFZjmI1CZFqEvWzrDUV9os2K194/k+mGTrhf4q42w
         H1qA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4Ue4Rbw09pOcYPZXuv8iAK9TshItYX0We2usGTwAV5k=;
        b=G07UBhM8y/kmHtd5TdegML+Q4wJ7jHvxk7JS3Xh3MaVZTHizFfpJ9Gg84eKOHcJwP7
         tess+ovsWmb6QLLG5a9vI18ZW4Di0Asp8CK61lYZtEUp2dRJ4TvvBIn3WrkMw6R60Yxq
         Y7fLZILpWAVJDFwsyLrxU0WPAU2/xPpzUDv7ZQFDOsUNqyjL3hqCjLf7D/D4SwnbIIVr
         iUMuOFTIBigWCcQrSCeXwMalLyIVUCGDkWzLtvoZJ97NfUdr+JdH2fRwmtsl9hgErzi3
         WJmxHhuY2lZw4havnLRUYELp9eoOyWp1l0+y7xaXkvU2jlVlh1mATdi23lKzNL6MSmvm
         15+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4Ue4Rbw09pOcYPZXuv8iAK9TshItYX0We2usGTwAV5k=;
        b=mhqS5dLU0nzQ4e5oPZ5LFZ2dAvd9JtuAoC+ilMnf0YUy3oTOufJmv9TX+vD3O0U420
         MG4CtKujL/bw17N1GakwR3TxB2uV9rj4KLa428rVWgiDnKGjiUWb3kTTc4CEKNv1JHSO
         uI6Du9OQRiOoJKB/yoHKgbLn7JZiBLdbGFACrWVa0UoODZWMEfeVZ8Wk9ApFB7+LE8Hq
         lvFMQ7Nd/2rj5kqKYiLGyUCzNVH4t/XHn6cOP5p9IKgJUyYAk6bsSDIilrAtpvybB2ga
         HNGhJslTJYm7PzAt9onFovGQiTnjrFdzmFV8Y/XUv/4BYA11l/WOCGo+k0V1Nq5Bkmkm
         ihgQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533TFl8HvtLdvVW/58/lgX9jFu+08N8vhEx3DT6QVzfkUSO2EbxB
	bgCAlkyVpFdXzBmJo1I/9L8=
X-Google-Smtp-Source: ABdhPJwSkfWccli8tt6V7v6zIEj+nT+0WkNkGR20oppoSYzO1OeR6mt2yV3UDP5XR7geJbUvdy2Ysw==
X-Received: by 2002:a4a:a5cf:: with SMTP id k15mr1260258oom.39.1592291995889;
        Tue, 16 Jun 2020 00:19:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:c38e:: with SMTP id t136ls425284oif.10.gmail; Tue, 16
 Jun 2020 00:19:55 -0700 (PDT)
X-Received: by 2002:aca:f48c:: with SMTP id s134mr2458266oih.57.1592291995586;
        Tue, 16 Jun 2020 00:19:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592291995; cv=none;
        d=google.com; s=arc-20160816;
        b=lRpDbFPr9Z0oOmFzMtyJGwNvUoEb8g3DMt0pn3A6SFgaQNgO19LQML4OhsYxnkv7Bf
         4las5nt+qFsMBSh7gZ3bcnVk6Abn+9v3AgC4OyJ30H3UDXUEmJ4w7+Dtuu+FyttUxa+y
         /UMnkc9V6pw4E4y1TOYGFxWr9bw5B1dRmE9zGP8MN/Fs/pzBa5l2A0q7V9pdjXfomct4
         2mjVmCXa/dlkRS0M2YCHfbY9J5wJm1SCrMELpwRCzDdBywSGjvOFZjjFxgVK78RsVYwL
         toNebkeSv976hWCtnpsc4LvGjyzh5LSf2fVph9dDlLctNPlcl2cJrknK0MPCJJO3E3jc
         xWRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=zE7xIH914ku/Yc2koxdsYNjUjsZNR2iqBLDvAHrxAAM=;
        b=C9Ch3ToQk839uKmOmsAM+Bz7U2ijcV4U+MKJhKJXaZAdjpajZJPhPrdB20Wj6Ud26E
         3GatXeSDbcHDVJ3ooSbIl4yW6GYthzA5xR5pDkbTQHSg4VaVRoHfxxUb5Gdm2OPCrm/z
         sKocU9VlBS9wQIa/YPYeHCt1R0w/tkqcNUmvjYXPaX41zklXKZWkykIvRT2a3XPhg5YC
         04N3nzmKNoyGOUZEqZqokHSQTQ3p79lmcHPrqQfkf3qcOh2B/UZ7Cq5QtvpxYyFqSWcn
         HHzU3JovrpGRoufdtW3bkoGSAgDCt/8i0Qs9XiJSCGunF3ze/2wQq5LsaVLit6E0BuST
         jHLw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga04.intel.com (mga04.intel.com. [192.55.52.120])
        by gmr-mx.google.com with ESMTPS id e69si1440464oob.2.2020.06.16.00.19.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Jun 2020 00:19:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) client-ip=192.55.52.120;
IronPort-SDR: /HAZJjW0aV/YDQBa7CQxU1qOxn3b1tMtsB2jUykJU0EaYgOwGRCtJBvWv0KxVq4BZyJj43x4yh
 x2iYQaWTYyhA==
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Jun 2020 00:19:53 -0700
IronPort-SDR: kvGEbtPwedOVsqwVuo4HYfGDOMInZsdQRhGIgM44q2nCi08ny5Wj0r2UdIh9uQ419HjKUCvs+p
 LA72xbiciM+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,518,1583222400"; 
   d="gz'50?scan'50,208,50";a="308375257"
Received: from lkp-server02.sh.intel.com (HELO ec7aa6149bd9) ([10.239.97.151])
  by orsmga008.jf.intel.com with ESMTP; 16 Jun 2020 00:19:51 -0700
Received: from kbuild by ec7aa6149bd9 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1jl5st-0000Zi-1u; Tue, 16 Jun 2020 07:19:51 +0000
Date: Tue, 16 Jun 2020 15:19:08 +0800
From: kernel test robot <lkp@intel.com>
To: Mathieu Desnoyers <mathieu.desnoyers@efficios.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: Re: [RFC PATCH] sched_pair_cpu: Introduce scheduler task pairing
 system call
Message-ID: <202006161559.A0MN7fpu%lkp@intel.com>
References: <20200615202210.1944-1-mathieu.desnoyers@efficios.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="sm4nu43k4a2Rpi4c"
Content-Disposition: inline
In-Reply-To: <20200615202210.1944-1-mathieu.desnoyers@efficios.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted
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


--sm4nu43k4a2Rpi4c
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Mathieu,

[FYI, it's a private test report for your RFC patch.]
[auto build test ERROR on tip/x86/asm]
[also build test ERROR on tip/sched/core]
[cannot apply to linus/master linux/master v5.8-rc1 next-20200616]
[if your patch is applied to the wrong git tree, please drop us a note to help
improve the system. BTW, we also suggest to use '--base' option to specify the
base tree in git format-patch, please see https://stackoverflow.com/a/37406982]

url:    https://github.com/0day-ci/linux/commits/Mathieu-Desnoyers/sched_pair_cpu-Introduce-scheduler-task-pairing-system-call/20200616-042458
base:   https://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git 2ce0d7f9766f0e49bb54f149c77bae89464932fb
config: x86_64-allnoconfig (attached as .config)
compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 487ca07fcc75d52755c9fe2ee05bcb3b6eeeec44)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>, old ones prefixed by <<):

In file included from arch/x86/kernel/asm-offsets.c:9:
In file included from include/linux/crypto.h:21:
In file included from include/linux/uaccess.h:5:
>> include/linux/sched.h:1913:15: error: no member named 'pair_cpu' in 'struct task_struct'
if (current->pair_cpu >= 0)
~~~~~~~  ^
include/linux/sched.h:1928:15: error: no member named 'pair_cpu' in 'struct task_struct'
if (current->pair_cpu >= 0)
~~~~~~~  ^
include/linux/sched.h:1938:5: error: no member named 'pair_cpu' in 'struct task_struct'
t->pair_cpu = -1;
~  ^
>> include/linux/sched.h:1939:5: error: no member named 'pair_cpu_need_worker' in 'struct task_struct'
t->pair_cpu_need_worker = 0;
~  ^
>> include/linux/sched.h:1940:5: error: no member named 'pair_cpu_worker_active' in 'struct task_struct'
t->pair_cpu_worker_active = 0;
~  ^
>> include/linux/sched.h:1941:5: error: no member named 'pair_cpu_queued_work' in 'struct task_struct'
t->pair_cpu_queued_work = 0;
~  ^
>> include/linux/sched.h:1942:13: error: no member named 'pair_cpu_work' in 'struct task_struct'
memset(&t->pair_cpu_work, 0, sizeof(t->pair_cpu_work));
~  ^
include/linux/sched.h:1942:41: error: no member named 'pair_cpu_work' in 'struct task_struct'
memset(&t->pair_cpu_work, 0, sizeof(t->pair_cpu_work));
~  ^
In file included from arch/x86/kernel/asm-offsets.c:13:
In file included from include/linux/suspend.h:5:
In file included from include/linux/swap.h:9:
In file included from include/linux/memcontrol.h:13:
In file included from include/linux/cgroup.h:17:
In file included from include/linux/fs.h:34:
In file included from include/linux/percpu-rwsem.h:7:
In file included from include/linux/rcuwait.h:6:
In file included from include/linux/sched/signal.h:6:
include/linux/signal.h:87:11: warning: array index 3 is past the end of the array (which contains 1 element) [-Warray-bounds]
return (set->sig[3] | set->sig[2] |
^        ~
arch/x86/include/asm/signal.h:24:2: note: array 'sig' declared here
unsigned long sig[_NSIG_WORDS];
^
In file included from arch/x86/kernel/asm-offsets.c:13:
In file included from include/linux/suspend.h:5:
In file included from include/linux/swap.h:9:
In file included from include/linux/memcontrol.h:13:
In file included from include/linux/cgroup.h:17:
In file included from include/linux/fs.h:34:
In file included from include/linux/percpu-rwsem.h:7:
In file included from include/linux/rcuwait.h:6:
In file included from include/linux/sched/signal.h:6:
include/linux/signal.h:87:25: warning: array index 2 is past the end of the array (which contains 1 element) [-Warray-bounds]
return (set->sig[3] | set->sig[2] |
^        ~
arch/x86/include/asm/signal.h:24:2: note: array 'sig' declared here
unsigned long sig[_NSIG_WORDS];
^
In file included from arch/x86/kernel/asm-offsets.c:13:
In file included from include/linux/suspend.h:5:
In file included from include/linux/swap.h:9:
In file included from include/linux/memcontrol.h:13:
In file included from include/linux/cgroup.h:17:
In file included from include/linux/fs.h:34:
In file included from include/linux/percpu-rwsem.h:7:
In file included from include/linux/rcuwait.h:6:
In file included from include/linux/sched/signal.h:6:
include/linux/signal.h:88:4: warning: array index 1 is past the end of the array (which contains 1 element) [-Warray-bounds]
set->sig[1] | set->sig[0]) == 0;
^        ~
arch/x86/include/asm/signal.h:24:2: note: array 'sig' declared here
unsigned long sig[_NSIG_WORDS];
^
In file included from arch/x86/kernel/asm-offsets.c:13:
In file included from include/linux/suspend.h:5:
In file included from include/linux/swap.h:9:
In file included from include/linux/memcontrol.h:13:
In file included from include/linux/cgroup.h:17:
In file included from include/linux/fs.h:34:
In file included from include/linux/percpu-rwsem.h:7:
In file included from include/linux/rcuwait.h:6:
In file included from include/linux/sched/signal.h:6:
include/linux/signal.h:90:11: warning: array index 1 is past the end of the array (which contains 1 element) [-Warray-bounds]
return (set->sig[1] | set->sig[0]) == 0;
^        ~
arch/x86/include/asm/signal.h:24:2: note: array 'sig' declared here
unsigned long sig[_NSIG_WORDS];
^
In file included from arch/x86/kernel/asm-offsets.c:13:
In file included from include/linux/suspend.h:5:
In file included from include/linux/swap.h:9:
In file included from include/linux/memcontrol.h:13:
In file included from include/linux/cgroup.h:17:
In file included from include/linux/fs.h:34:
In file included from include/linux/percpu-rwsem.h:7:
In file included from include/linux/rcuwait.h:6:
In file included from include/linux/sched/signal.h:6:
include/linux/signal.h:103:11: warning: array index 3 is past the end of the array (which contains 1 element) [-Warray-bounds]
return  (set1->sig[3] == set2->sig[3]) &&
^         ~
arch/x86/include/asm/signal.h:24:2: note: array 'sig' declared here
unsigned long sig[_NSIG_WORDS];
^
In file included from arch/x86/kernel/asm-offsets.c:13:
In file included from include/linux/suspend.h:5:
In file included from include/linux/swap.h:9:
In file included from include/linux/memcontrol.h:13:
In file included from include/linux/cgroup.h:17:
In file included from include/linux/fs.h:34:
In file included from include/linux/percpu-rwsem.h:7:
In file included from include/linux/rcuwait.h:6:
In file included from include/linux/sched/signal.h:6:
include/linux/signal.h:103:27: warning: array index 3 is past the end of the array (which contains 1 element) [-Warray-bounds]
return  (set1->sig[3] == set2->sig[3]) &&
^         ~
arch/x86/include/asm/signal.h:24:2: note: array 'sig' declared here
unsigned long sig[_NSIG_WORDS];
^
In file included from arch/x86/kernel/asm-offsets.c:13:
In file included from include/linux/suspend.h:5:
In file included from include/linux/swap.h:9:
In file included from include/linux/memcontrol.h:13:
In file included from include/linux/cgroup.h:17:

vim +1913 include/linux/sched.h

  1910	
  1911	static inline void sched_pair_cpu_set_notify_resume(struct task_struct *t)
  1912	{
> 1913		if (current->pair_cpu >= 0)
  1914			set_tsk_thread_flag(t, TIF_NOTIFY_RESUME);
  1915	}
  1916	
  1917	static inline void sched_pair_cpu_preempt(struct task_struct *t)
  1918	{
  1919		sched_pair_cpu_set_notify_resume(t);
  1920	}
  1921	
  1922	void __sched_pair_cpu_handle_notify_resume(struct ksignal *sig,
  1923						   struct pt_regs *regs);
  1924	
  1925	static inline void sched_pair_cpu_handle_notify_resume(struct ksignal *ksig,
  1926							       struct pt_regs *regs)
  1927	{
  1928		if (current->pair_cpu >= 0)
  1929			__sched_pair_cpu_handle_notify_resume(ksig, regs);
  1930	}
  1931	
  1932	/*
  1933	 * Clear paired cpu on clone.
  1934	 */
  1935	static inline void sched_pair_cpu_fork(struct task_struct *t,
  1936					       unsigned long clone_flags)
  1937	{
  1938		t->pair_cpu = -1;
> 1939		t->pair_cpu_need_worker = 0;
> 1940		t->pair_cpu_worker_active = 0;
> 1941		t->pair_cpu_queued_work = 0;
> 1942		memset(&t->pair_cpu_work, 0, sizeof(t->pair_cpu_work));
  1943	}
  1944	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202006161559.A0MN7fpu%25lkp%40intel.com.

--sm4nu43k4a2Rpi4c
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
wGA3RVvsZo/qP8sv0kJcagAA

--sm4nu43k4a2Rpi4c--
