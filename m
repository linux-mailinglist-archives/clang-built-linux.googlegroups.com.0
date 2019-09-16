Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBB6M7XVQKGQEUQKSW2Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 55CF7B384C
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Sep 2019 12:38:01 +0200 (CEST)
Received: by mail-pf1-x438.google.com with SMTP id r7sf26812730pfg.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Sep 2019 03:38:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568630280; cv=pass;
        d=google.com; s=arc-20160816;
        b=SeJoXIZJE7oAu0pbp4PuONPWaE+HWKVRqlE/2IdBdBSxZWCCbx625NA3UwLVbz9cK5
         nvcTGo7fi52N6qEWS7RHP4gVK7LshCLeP5jqmLLLUGplZxbyj6b7ovVZOeLUefDWGcHT
         MjZB2hPSJnAc1aw0ZUgORZH3mylE605jko3Wy7/IMO7589gywjXtpMFUH6zfCKbeZuYm
         QZ054MOzOiwn6U5Ya7WEmxTgVZIdxyvp1ikzxO0QTE7eRQmMU8DRNTClFSLRSwG+LrT1
         JshraJWo8U5sxbd468X3oaUfiPOvYkiGGBprxObN+EPD8onR0+EQplcNj3w3oC45yqYW
         L0qg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=H7YBv7b0cOj2vUvLyHL64OBRoufVG1U3WFnyMVePUXQ=;
        b=QCGO4vrR3Nyrg0DWyYmL9y765858EDphilsUPeG9FHCx8LwMXIJN6HtQr1amopTrS+
         SMyxbJ0IcTUfpfxj1c1e/tE7EO6OMuzMZY3Iiirh2jPKlWuJPSWEa04ZZvzc9uHlOgyL
         3/eamXNEhcWU+DvCAQ66hmt3n/qcqVuYG19ngcTkdc/tdHaFVVDOZCRN0BZYlwDccsIe
         qftosmGloCr+g1eSmusknEX4HqEhEpc7kY/DskksTsOlOz6N4Ve/d6y7KavFyD6RKnOB
         LIJUx8hX/aF49fJ8+tkJL8zjjgWeCflqwcfEFeKo6b09vDI+i0r+wqqGHle+zCZDcQqW
         WrDw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=H7YBv7b0cOj2vUvLyHL64OBRoufVG1U3WFnyMVePUXQ=;
        b=MQCKgiP8dhUQQAEwbhoOkL8tsapzNPu3BEQp/tA/qe5EAPCDpUKf+n4IG0cst4uiJi
         Vb9L2iNzw9WxtsNbzUUvqNhIwQ7crPRoPU2OK7o4/ZIZ7842LSnwbGrAQhKgdvzfUj7n
         XiorKUFO8gGvGwZRBzFBRJUEZ8sqAFD+/HY4vPNLbYUYEOvjznp6qNEklDUG1yp1Bs8j
         mmpRUOgU6yk/2rU9rSwH6B6oMep0SxKzA4K4PdpmqNnkiEcde5mgval4ARREUGJodhEU
         ftCWTRv4zyv1WiMjjbyv1rVgswjmdSYUIIJVpvMMWohOGoL3OPm1fRAObLfPXe8pfFK8
         Ev5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=H7YBv7b0cOj2vUvLyHL64OBRoufVG1U3WFnyMVePUXQ=;
        b=hBTMFOErHYMwMFROVsZ1sXOXnMz1q9ejFvC6DVvDcgu3THUltEFtUS94CkZ6HEm18L
         Xns8otBP2jvOm2Q9/TgC0KemLJIFIftB5sZuG3GYUYUa9jXoJGsEoV5Pa5/qe3OG6+py
         aBgBeTNWvWtjlJos2iK9csI2JaIOlMd7CHY6run8uaCvI803lL9IfFdzymCktjiofRRC
         RvCoTwFM5uq8H/aVhjBN0eRnwKWBb8QuO8kzk6McjSaFEHwdYo98flafEaFGSp0Qnkeh
         CJD/IuzPxwkOClzfen06FP4GXV2/BBjNVoPBVyS+CbfyaMFkXl/Ig3dZVVuw3PZYs+OL
         /7VQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUdk+LxyoOyMVtc4Xap2NqpbsWu8fIIY282I1SvOBGYkw6Z1epr
	TSc2KGXfjS8z0UvztiaH4c8=
X-Google-Smtp-Source: APXvYqzMwtxCwa3+aQpz4DXSETY119jy2tPEJLmlCPchcPM1h18a47uezBXFxiH08fycmDKWbSR5Sg==
X-Received: by 2002:a17:902:166:: with SMTP id 93mr64175070plb.195.1568630279799;
        Mon, 16 Sep 2019 03:37:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:fa7:: with SMTP id 36ls3392330pjz.5.canary-gmail;
 Mon, 16 Sep 2019 03:37:59 -0700 (PDT)
X-Received: by 2002:a17:90b:318:: with SMTP id ay24mr20528133pjb.28.1568630279381;
        Mon, 16 Sep 2019 03:37:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568630279; cv=none;
        d=google.com; s=arc-20160816;
        b=F37Xs1oTCDDuYxgOuugbCDLhUTCBkVyFe1H5VDW8Cou54hZWKv3d6tB7vXPYAjKqSu
         S2AMSPdnUz74C+bVc+qm7TFFECztt8gpZxEzhmffuzyppqNilQW4+Dr/sma3LVmE2rBm
         IEBTzpZVo6agOGxpJ123ZKZoEyZdKiGAe6eu/DWde7hvgcVAe1oyfUyWR11LsUwWFW5k
         GRa9CMnBncjyg9Xyx9f963UHKZaBr3jpdO5L6fJpDCUrtlz/ni8gXteObnBQi2OOtzCm
         LDS7I6nJUIBj+9Fp0bOrWVrxmPN+CWHpnsl3YGKhlus6sEE2iMD7dw3nSRHuvu/Zm5MI
         Z38Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=Kq4c7qKTp/t+g+DohX/KOq8Zg401PQ2Y2Gk+NBIlihw=;
        b=aaYsIp5wZ7AdKhlpClFOJGVCI0xcwGH5V/bfAJvoWo1nvwDQh/oT8Ls99vJuC95/4b
         DL+w6sK5vPGCkwTGm35xjJBvkp9oktXT31gs9jrG1jcG/O84QbSw3vSmuBJ2+chO5ogG
         HVoDdMSeBu820YyFv8h38OIkvK6hSpqxfO52D3WxNLeUQS88zirhcBc21eC6boxNQt1T
         Qk6wXEkSPr0pzN6b+HvmWmLxyVoh6aon7mfPOan554g9oCPSIFwhwIqxHHdt6p3BKjci
         VVDInWaH63mvjMyH10+lAkIjdXz+ZwG29C9KWCv4vy+1J8TLW0YyiMndgzTAuUj0sdvu
         VDqA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga03.intel.com (mga03.intel.com. [134.134.136.65])
        by gmr-mx.google.com with ESMTPS id j21si130394pfe.5.2019.09.16.03.37.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Sep 2019 03:37:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) client-ip=134.134.136.65;
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 16 Sep 2019 03:37:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,512,1559545200"; 
   d="gz'50?scan'50,208,50";a="211110737"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by fmsmga004.fm.intel.com with ESMTP; 16 Sep 2019 03:37:55 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1i9oOJ-000Hvx-Gm; Mon, 16 Sep 2019 18:37:55 +0800
Date: Mon, 16 Sep 2019 18:37:22 +0800
From: kbuild test robot <lkp@intel.com>
To: kbuild@01.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: [android-common:android-mainline-tracking 26/165]
 kernel/sched/fair.c:6424:6: warning: variable 'latency_sensitive' is used
 uninitialized whenever 'if' condition is true
Message-ID: <201909161819.6hE3UddX%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="f7tswe3rezm3nnmz"
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


--f7tswe3rezm3nnmz
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

CC: kbuild-all@01.org
CC: Guenter Roeck <groeck@google.com>
BCC: philip.li@intel.com
TO: cros-kernel-buildreports@googlegroups.com

tree:   https://android.googlesource.com/kernel/common android-mainline-tracking
head:   01404b7c3d8961cbf4ed3dc0a7a7db617815532a
commit: ba702c5960cc857e7645c309a07f6eca8fb83238 [26/165] ANDROID: sched/fair: Bias EAS placement for latency
config: arm64-defconfig (attached as .config)
compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
reproduce:
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        git checkout ba702c5960cc857e7645c309a07f6eca8fb83238
        # save the attached .config to linux build tree
        make.cross ARCH=arm64 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> kernel/sched/fair.c:6424:6: warning: variable 'latency_sensitive' is used uninitialized whenever 'if' condition is true [-Wsometimes-uninitialized]
           if (!task_util_est(p))
               ^~~~~~~~~~~~~~~~~
   kernel/sched/fair.c:6508:6: note: uninitialized use occurs here
           if (latency_sensitive)
               ^~~~~~~~~~~~~~~~~
   kernel/sched/fair.c:6424:2: note: remove the 'if' if its condition is always false
           if (!task_util_est(p))
           ^~~~~~~~~~~~~~~~~~~~~~
   kernel/sched/fair.c:6397:24: note: initialize the variable 'latency_sensitive' to silence this warning
           bool latency_sensitive, boosted;
                                 ^
                                  = 0
   1 warning generated.

vim +6424 kernel/sched/fair.c

390031e4c309c9 Quentin Perret            2018-12-03  6348  
390031e4c309c9 Quentin Perret            2018-12-03  6349  /*
732cd75b8c920d Quentin Perret            2018-12-03  6350   * find_energy_efficient_cpu(): Find most energy-efficient target CPU for the
732cd75b8c920d Quentin Perret            2018-12-03  6351   * waking task. find_energy_efficient_cpu() looks for the CPU with maximum
732cd75b8c920d Quentin Perret            2018-12-03  6352   * spare capacity in each performance domain and uses it as a potential
732cd75b8c920d Quentin Perret            2018-12-03  6353   * candidate to execute the task. Then, it uses the Energy Model to figure
732cd75b8c920d Quentin Perret            2018-12-03  6354   * out which of the CPU candidates is the most energy-efficient.
732cd75b8c920d Quentin Perret            2018-12-03  6355   *
732cd75b8c920d Quentin Perret            2018-12-03  6356   * The rationale for this heuristic is as follows. In a performance domain,
732cd75b8c920d Quentin Perret            2018-12-03  6357   * all the most energy efficient CPU candidates (according to the Energy
732cd75b8c920d Quentin Perret            2018-12-03  6358   * Model) are those for which we'll request a low frequency. When there are
732cd75b8c920d Quentin Perret            2018-12-03  6359   * several CPUs for which the frequency request will be the same, we don't
732cd75b8c920d Quentin Perret            2018-12-03  6360   * have enough data to break the tie between them, because the Energy Model
732cd75b8c920d Quentin Perret            2018-12-03  6361   * only includes active power costs. With this model, if we assume that
732cd75b8c920d Quentin Perret            2018-12-03  6362   * frequency requests follow utilization (e.g. using schedutil), the CPU with
732cd75b8c920d Quentin Perret            2018-12-03  6363   * the maximum spare capacity in a performance domain is guaranteed to be among
732cd75b8c920d Quentin Perret            2018-12-03  6364   * the best candidates of the performance domain.
732cd75b8c920d Quentin Perret            2018-12-03  6365   *
732cd75b8c920d Quentin Perret            2018-12-03  6366   * In practice, it could be preferable from an energy standpoint to pack
732cd75b8c920d Quentin Perret            2018-12-03  6367   * small tasks on a CPU in order to let other CPUs go in deeper idle states,
732cd75b8c920d Quentin Perret            2018-12-03  6368   * but that could also hurt our chances to go cluster idle, and we have no
732cd75b8c920d Quentin Perret            2018-12-03  6369   * ways to tell with the current Energy Model if this is actually a good
732cd75b8c920d Quentin Perret            2018-12-03  6370   * idea or not. So, find_energy_efficient_cpu() basically favors
732cd75b8c920d Quentin Perret            2018-12-03  6371   * cluster-packing, and spreading inside a cluster. That should at least be
732cd75b8c920d Quentin Perret            2018-12-03  6372   * a good thing for latency, and this is consistent with the idea that most
732cd75b8c920d Quentin Perret            2018-12-03  6373   * of the energy savings of EAS come from the asymmetry of the system, and
732cd75b8c920d Quentin Perret            2018-12-03  6374   * not so much from breaking the tie between identical CPUs. That's also the
732cd75b8c920d Quentin Perret            2018-12-03  6375   * reason why EAS is enabled in the topology code only for systems where
732cd75b8c920d Quentin Perret            2018-12-03  6376   * SD_ASYM_CPUCAPACITY is set.
732cd75b8c920d Quentin Perret            2018-12-03  6377   *
732cd75b8c920d Quentin Perret            2018-12-03  6378   * NOTE: Forkees are not accepted in the energy-aware wake-up path because
732cd75b8c920d Quentin Perret            2018-12-03  6379   * they don't have any useful utilization data yet and it's not possible to
732cd75b8c920d Quentin Perret            2018-12-03  6380   * forecast their impact on energy consumption. Consequently, they will be
732cd75b8c920d Quentin Perret            2018-12-03  6381   * placed by find_idlest_cpu() on the least loaded CPU, which might turn out
732cd75b8c920d Quentin Perret            2018-12-03  6382   * to be energy-inefficient in some use-cases. The alternative would be to
732cd75b8c920d Quentin Perret            2018-12-03  6383   * bias new tasks towards specific types of CPUs first, or to try to infer
732cd75b8c920d Quentin Perret            2018-12-03  6384   * their util_avg from the parent task, but those heuristics could hurt
732cd75b8c920d Quentin Perret            2018-12-03  6385   * other use-cases too. So, until someone finds a better way to solve this,
732cd75b8c920d Quentin Perret            2018-12-03  6386   * let's keep things simple by re-using the existing slow path.
732cd75b8c920d Quentin Perret            2018-12-03  6387   */
256fe932094827 Chris Redpath             2019-03-27  6388  static int find_energy_efficient_cpu(struct task_struct *p, int prev_cpu, int sync)
732cd75b8c920d Quentin Perret            2018-12-03  6389  {
8b81a4a5368a72 Quentin Perret            2019-09-12  6390  	unsigned long prev_delta = ULONG_MAX, best_delta = ULONG_MAX;
732cd75b8c920d Quentin Perret            2018-12-03  6391  	struct root_domain *rd = cpu_rq(smp_processor_id())->rd;
ba702c5960cc85 Quentin Perret            2019-02-27  6392  	int max_spare_cap_cpu_ls = prev_cpu, best_idle_cpu = -1;
ba702c5960cc85 Quentin Perret            2019-02-27  6393  	unsigned long max_spare_cap_ls = 0, target_cap;
8b81a4a5368a72 Quentin Perret            2019-09-12  6394  	unsigned long cpu_cap, util, base_energy = 0;
ba702c5960cc85 Quentin Perret            2019-02-27  6395  	unsigned int min_exit_lat = UINT_MAX;
732cd75b8c920d Quentin Perret            2018-12-03  6396  	int cpu, best_energy_cpu = prev_cpu;
ba702c5960cc85 Quentin Perret            2019-02-27  6397  	bool latency_sensitive, boosted;
ba702c5960cc85 Quentin Perret            2019-02-27  6398  	struct cpuidle_state *idle;
732cd75b8c920d Quentin Perret            2018-12-03  6399  	struct sched_domain *sd;
8b81a4a5368a72 Quentin Perret            2019-09-12  6400  	struct perf_domain *pd;
732cd75b8c920d Quentin Perret            2018-12-03  6401  
732cd75b8c920d Quentin Perret            2018-12-03  6402  	rcu_read_lock();
732cd75b8c920d Quentin Perret            2018-12-03  6403  	pd = rcu_dereference(rd->pd);
732cd75b8c920d Quentin Perret            2018-12-03  6404  	if (!pd || READ_ONCE(rd->overutilized))
732cd75b8c920d Quentin Perret            2018-12-03  6405  		goto fail;
732cd75b8c920d Quentin Perret            2018-12-03  6406  
256fe932094827 Chris Redpath             2019-03-27  6407  	cpu = smp_processor_id();
256fe932094827 Chris Redpath             2019-03-27  6408  	if (sync && cpumask_test_cpu(cpu, p->cpus_ptr)) {
256fe932094827 Chris Redpath             2019-03-27  6409  		rcu_read_unlock();
256fe932094827 Chris Redpath             2019-03-27  6410  		return cpu;
256fe932094827 Chris Redpath             2019-03-27  6411  	}
256fe932094827 Chris Redpath             2019-03-27  6412  
732cd75b8c920d Quentin Perret            2018-12-03  6413  	/*
732cd75b8c920d Quentin Perret            2018-12-03  6414  	 * Energy-aware wake-up happens on the lowest sched_domain starting
732cd75b8c920d Quentin Perret            2018-12-03  6415  	 * from sd_asym_cpucapacity spanning over this_cpu and prev_cpu.
732cd75b8c920d Quentin Perret            2018-12-03  6416  	 */
732cd75b8c920d Quentin Perret            2018-12-03  6417  	sd = rcu_dereference(*this_cpu_ptr(&sd_asym_cpucapacity));
732cd75b8c920d Quentin Perret            2018-12-03  6418  	while (sd && !cpumask_test_cpu(prev_cpu, sched_domain_span(sd)))
732cd75b8c920d Quentin Perret            2018-12-03  6419  		sd = sd->parent;
732cd75b8c920d Quentin Perret            2018-12-03  6420  	if (!sd)
732cd75b8c920d Quentin Perret            2018-12-03  6421  		goto fail;
732cd75b8c920d Quentin Perret            2018-12-03  6422  
732cd75b8c920d Quentin Perret            2018-12-03  6423  	sync_entity_load_avg(&p->se);
732cd75b8c920d Quentin Perret            2018-12-03 @6424  	if (!task_util_est(p))
732cd75b8c920d Quentin Perret            2018-12-03  6425  		goto unlock;
732cd75b8c920d Quentin Perret            2018-12-03  6426  
ba702c5960cc85 Quentin Perret            2019-02-27  6427  	latency_sensitive = uclamp_latency_sensitive(p);
ba702c5960cc85 Quentin Perret            2019-02-27  6428  	boosted = uclamp_boosted(p);
ba702c5960cc85 Quentin Perret            2019-02-27  6429  	target_cap = boosted ? 0 : ULONG_MAX;
ba702c5960cc85 Quentin Perret            2019-02-27  6430  
732cd75b8c920d Quentin Perret            2018-12-03  6431  	for (; pd; pd = pd->next) {
8b81a4a5368a72 Quentin Perret            2019-09-12  6432  		unsigned long cur_delta, spare_cap, max_spare_cap = 0;
8b81a4a5368a72 Quentin Perret            2019-09-12  6433  		unsigned long base_energy_pd;
732cd75b8c920d Quentin Perret            2018-12-03  6434  		int max_spare_cap_cpu = -1;
732cd75b8c920d Quentin Perret            2018-12-03  6435  
8b81a4a5368a72 Quentin Perret            2019-09-12  6436  		/* Compute the 'base' energy of the pd, without @p */
8b81a4a5368a72 Quentin Perret            2019-09-12  6437  		base_energy_pd = compute_energy(p, -1, pd);
8b81a4a5368a72 Quentin Perret            2019-09-12  6438  		base_energy += base_energy_pd;
8b81a4a5368a72 Quentin Perret            2019-09-12  6439  
732cd75b8c920d Quentin Perret            2018-12-03  6440  		for_each_cpu_and(cpu, perf_domain_span(pd), sched_domain_span(sd)) {
3bd3706251ee8a Sebastian Andrzej Siewior 2019-04-23  6441  			if (!cpumask_test_cpu(cpu, p->cpus_ptr))
732cd75b8c920d Quentin Perret            2018-12-03  6442  				continue;
732cd75b8c920d Quentin Perret            2018-12-03  6443  
732cd75b8c920d Quentin Perret            2018-12-03  6444  			/* Skip CPUs that will be overutilized. */
732cd75b8c920d Quentin Perret            2018-12-03  6445  			util = cpu_util_next(cpu, p, cpu);
732cd75b8c920d Quentin Perret            2018-12-03  6446  			cpu_cap = capacity_of(cpu);
732cd75b8c920d Quentin Perret            2018-12-03  6447  			if (cpu_cap * 1024 < util * capacity_margin)
732cd75b8c920d Quentin Perret            2018-12-03  6448  				continue;
732cd75b8c920d Quentin Perret            2018-12-03  6449  
ffeaec761d76d5 Patrick Bellasi           2018-12-18  6450  			/* Skip CPUs which do not fit task requirements */
ffeaec761d76d5 Patrick Bellasi           2018-12-18  6451  			if (cpu_cap < uclamp_task_util(p))
ffeaec761d76d5 Patrick Bellasi           2018-12-18  6452  				continue;
ffeaec761d76d5 Patrick Bellasi           2018-12-18  6453  
732cd75b8c920d Quentin Perret            2018-12-03  6454  			/* Always use prev_cpu as a candidate. */
ba702c5960cc85 Quentin Perret            2019-02-27  6455  			if (!latency_sensitive && cpu == prev_cpu) {
8b81a4a5368a72 Quentin Perret            2019-09-12  6456  				prev_delta = compute_energy(p, prev_cpu, pd);
8b81a4a5368a72 Quentin Perret            2019-09-12  6457  				prev_delta -= base_energy_pd;
8b81a4a5368a72 Quentin Perret            2019-09-12  6458  				best_delta = min(best_delta, prev_delta);
732cd75b8c920d Quentin Perret            2018-12-03  6459  			}
732cd75b8c920d Quentin Perret            2018-12-03  6460  
732cd75b8c920d Quentin Perret            2018-12-03  6461  			/*
732cd75b8c920d Quentin Perret            2018-12-03  6462  			 * Find the CPU with the maximum spare capacity in
732cd75b8c920d Quentin Perret            2018-12-03  6463  			 * the performance domain
732cd75b8c920d Quentin Perret            2018-12-03  6464  			 */
732cd75b8c920d Quentin Perret            2018-12-03  6465  			spare_cap = cpu_cap - util;
732cd75b8c920d Quentin Perret            2018-12-03  6466  			if (spare_cap > max_spare_cap) {
732cd75b8c920d Quentin Perret            2018-12-03  6467  				max_spare_cap = spare_cap;
732cd75b8c920d Quentin Perret            2018-12-03  6468  				max_spare_cap_cpu = cpu;
732cd75b8c920d Quentin Perret            2018-12-03  6469  			}
ba702c5960cc85 Quentin Perret            2019-02-27  6470  
ba702c5960cc85 Quentin Perret            2019-02-27  6471  			if (!latency_sensitive)
ba702c5960cc85 Quentin Perret            2019-02-27  6472  				continue;
ba702c5960cc85 Quentin Perret            2019-02-27  6473  
ba702c5960cc85 Quentin Perret            2019-02-27  6474  			if (idle_cpu(cpu)) {
ba702c5960cc85 Quentin Perret            2019-02-27  6475  				cpu_cap = capacity_orig_of(cpu);
ba702c5960cc85 Quentin Perret            2019-02-27  6476  				if (boosted && cpu_cap < target_cap)
ba702c5960cc85 Quentin Perret            2019-02-27  6477  					continue;
ba702c5960cc85 Quentin Perret            2019-02-27  6478  				if (!boosted && cpu_cap > target_cap)
ba702c5960cc85 Quentin Perret            2019-02-27  6479  					continue;
ba702c5960cc85 Quentin Perret            2019-02-27  6480  				idle = idle_get_state(cpu_rq(cpu));
ba702c5960cc85 Quentin Perret            2019-02-27  6481  				if (idle && idle->exit_latency > min_exit_lat &&
ba702c5960cc85 Quentin Perret            2019-02-27  6482  						cpu_cap == target_cap)
ba702c5960cc85 Quentin Perret            2019-02-27  6483  					continue;
ba702c5960cc85 Quentin Perret            2019-02-27  6484  
ba702c5960cc85 Quentin Perret            2019-02-27  6485  				if (idle)
ba702c5960cc85 Quentin Perret            2019-02-27  6486  					min_exit_lat = idle->exit_latency;
ba702c5960cc85 Quentin Perret            2019-02-27  6487  				target_cap = cpu_cap;
ba702c5960cc85 Quentin Perret            2019-02-27  6488  				best_idle_cpu = cpu;
ba702c5960cc85 Quentin Perret            2019-02-27  6489  			} else if (spare_cap > max_spare_cap_ls) {
ba702c5960cc85 Quentin Perret            2019-02-27  6490  				max_spare_cap_ls = spare_cap;
ba702c5960cc85 Quentin Perret            2019-02-27  6491  				max_spare_cap_cpu_ls = cpu;
ba702c5960cc85 Quentin Perret            2019-02-27  6492  			}
732cd75b8c920d Quentin Perret            2018-12-03  6493  		}
732cd75b8c920d Quentin Perret            2018-12-03  6494  
732cd75b8c920d Quentin Perret            2018-12-03  6495  		/* Evaluate the energy impact of using this CPU. */
ba702c5960cc85 Quentin Perret            2019-02-27  6496  		if (!latency_sensitive && max_spare_cap_cpu >= 0) {
8b81a4a5368a72 Quentin Perret            2019-09-12  6497  			cur_delta = compute_energy(p, max_spare_cap_cpu, pd);
8b81a4a5368a72 Quentin Perret            2019-09-12  6498  			cur_delta -= base_energy_pd;
8b81a4a5368a72 Quentin Perret            2019-09-12  6499  			if (cur_delta < best_delta) {
8b81a4a5368a72 Quentin Perret            2019-09-12  6500  				best_delta = cur_delta;
732cd75b8c920d Quentin Perret            2018-12-03  6501  				best_energy_cpu = max_spare_cap_cpu;
732cd75b8c920d Quentin Perret            2018-12-03  6502  			}
732cd75b8c920d Quentin Perret            2018-12-03  6503  		}
732cd75b8c920d Quentin Perret            2018-12-03  6504  	}
732cd75b8c920d Quentin Perret            2018-12-03  6505  unlock:
732cd75b8c920d Quentin Perret            2018-12-03  6506  	rcu_read_unlock();
732cd75b8c920d Quentin Perret            2018-12-03  6507  
ba702c5960cc85 Quentin Perret            2019-02-27  6508  	if (latency_sensitive)
ba702c5960cc85 Quentin Perret            2019-02-27  6509  		return best_idle_cpu >= 0 ? best_idle_cpu : max_spare_cap_cpu_ls;
ba702c5960cc85 Quentin Perret            2019-02-27  6510  
732cd75b8c920d Quentin Perret            2018-12-03  6511  	/*
732cd75b8c920d Quentin Perret            2018-12-03  6512  	 * Pick the best CPU if prev_cpu cannot be used, or if it saves at
732cd75b8c920d Quentin Perret            2018-12-03  6513  	 * least 6% of the energy used by prev_cpu.
732cd75b8c920d Quentin Perret            2018-12-03  6514  	 */
8b81a4a5368a72 Quentin Perret            2019-09-12  6515  	if (prev_delta == ULONG_MAX)
732cd75b8c920d Quentin Perret            2018-12-03  6516  		return best_energy_cpu;
732cd75b8c920d Quentin Perret            2018-12-03  6517  
8b81a4a5368a72 Quentin Perret            2019-09-12  6518  	if ((prev_delta - best_delta) > ((prev_delta + base_energy) >> 4))
732cd75b8c920d Quentin Perret            2018-12-03  6519  		return best_energy_cpu;
732cd75b8c920d Quentin Perret            2018-12-03  6520  
732cd75b8c920d Quentin Perret            2018-12-03  6521  	return prev_cpu;
732cd75b8c920d Quentin Perret            2018-12-03  6522  
732cd75b8c920d Quentin Perret            2018-12-03  6523  fail:
732cd75b8c920d Quentin Perret            2018-12-03  6524  	rcu_read_unlock();
732cd75b8c920d Quentin Perret            2018-12-03  6525  
732cd75b8c920d Quentin Perret            2018-12-03  6526  	return -1;
732cd75b8c920d Quentin Perret            2018-12-03  6527  }
732cd75b8c920d Quentin Perret            2018-12-03  6528  

:::::: The code at line 6424 was first introduced by commit
:::::: 732cd75b8c920d3727e69957b14faa7c2d7c3b75 sched/fair: Select an energy-efficient CPU on task wake-up

:::::: TO: Quentin Perret <quentin.perret@arm.com>
:::::: CC: Ingo Molnar <mingo@kernel.org>

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201909161819.6hE3UddX%25lkp%40intel.com.

--f7tswe3rezm3nnmz
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
28gJQf8LvHJ19XwMAwA=

--f7tswe3rezm3nnmz--
