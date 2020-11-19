Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBE6P3P6QKGQECD2GEMQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 6027B2B9D14
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Nov 2020 22:45:57 +0100 (CET)
Received: by mail-pf1-x43e.google.com with SMTP id g14sf4989760pfb.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Nov 2020 13:45:57 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605822356; cv=pass;
        d=google.com; s=arc-20160816;
        b=Xal27G/OmGCnVPD5rq5mhe5glazRiBK8Nnry9dPvtGyXW5uIYCm4oe37cOPKkCt0mY
         aRqyrk5e/jgMdbcLG18Sf6pSNmtK2tlbIp3k3OuJUoGKZq1Mi+0uDp8+kHeYGiYf3CuV
         LFgnT6vPedzxxkkONyTfueTcmBO+2AUybYiVrL/2uc1PeJ0a8EbWW61/HvKdfgabwPIw
         d1iZ1rjT5tHuWP0lcMCjLdOyAbFttCmP5eptz+GPrpJSp6GdUtDOO65Dbk1pjKN43UcK
         rCp6YR87GQclCuSMIHZPSntjKhK4OQF4rR5h+GxAUNwN9VDYE/sqCHETgoVIj1PcjnoV
         preQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=KtM57oK5ZX5clT/9VlSV7LiEyJ3VIM0oyGEbGnChzBY=;
        b=XU1/bxMobaG14KshTk3+Ow9BUa/QtBGtLnqqDD4onvyUjaMuGh26SYznmFnBiIB5H/
         NAl4R5t3pIcjJ13U1ACWKH18ACOsH1/Fml6lsNZutlmc7rtV9IagR4jAG2pgXd6Md5Lv
         eJsEwQ749F3A/j72FLw8tN//cmIc6o+Ei/e/4AkyjbrSCgGqxfQAlGMo2Zew9wnE4Ay6
         CyNZV6P19DPk0Ew+2+JBuWjpy54xgo9lnmQKzvOec7RRsD8xrTMMJwblhP/ekmorLNvb
         /OA7TzwCkarN1lgG8hvuKp2gOtoNHJO2tVt11Oxe7Nk6neUD2Tzl3oIzznjduArNMdzH
         VPdg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KtM57oK5ZX5clT/9VlSV7LiEyJ3VIM0oyGEbGnChzBY=;
        b=ECf2TIOiIEwLLzWvjC3NV3Dn31dIMrC08hOplNHAy0tWeW6tWbUIm0pnhN+YXIl8Nn
         b7wRs2wRA7QzMIOzwDUxdU6Lg5kNpMy01KPTtQbDneo2np89r2rJ2AxjRh6yckuQXJC8
         W6Hnmoofl+/UTfG/kn+Kl1e3RKpwEedCl1HGw3ckgWrn4wKTl12kO0p5hWoXlL/B3pGd
         VA99sKXXcEUycx6SWgqdgwH4XlPRub/ZlqYJUtQ+oU0znLbZjaUiKKWf+c/CsY+anbDQ
         mCHepT1TKF7Vv6/28mE6ItknWAiFe6ryymnzTuESLEBsA8mWBBArUGUbwimKnk64s+Pu
         yUCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=KtM57oK5ZX5clT/9VlSV7LiEyJ3VIM0oyGEbGnChzBY=;
        b=f/i8ZsRkfZhQCwk0yKnGbUz1XMdIzoidcPF17fw+yPuq++REoI3HKsG3WfmFxl80HM
         sqy3KX1GSkd+leRqvLqtG9Hi7iSrxyysF6V1aThgN5nrUjHWqssELMn9wJOAjp2b42Jk
         BBXeJE5XQV0r52D5EXtA95Wz6LmrSWPG6M4y2HolBEU2ZK9TNmOZE/SkCXzroTFNmvMV
         RU3Hr2Zs1XIMPvrbtWDoCs6uHwiCqoHM03erbVgT3yuMjJ7yFJnVMfIbOnSanUw2xXHU
         aSKI+FCoK5oK+4dBZqIA9NYYakKk7KuhlAOo/ig8c2e5hguGg+E124vcE8KWfBfEHCco
         /ERQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532UuEKyO2ePj/GCCYrFMKmLIsrAwAtHIg65YFQiDtB8jJpy7Cg3
	+4gKVXjCxWvhFVULOgEKksI=
X-Google-Smtp-Source: ABdhPJz4CJKQSjUDrUg4TCEapw7CbJxUUhPGg2aa2PN7pAxMl+WPsccTVXBWuhx34N860PLcyC4Scg==
X-Received: by 2002:a63:4511:: with SMTP id s17mr14279852pga.4.1605822355967;
        Thu, 19 Nov 2020 13:45:55 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:2a8:: with SMTP id q8ls1552756pfs.9.gmail; Thu, 19
 Nov 2020 13:45:55 -0800 (PST)
X-Received: by 2002:a63:343:: with SMTP id 64mr14437832pgd.14.1605822355182;
        Thu, 19 Nov 2020 13:45:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605822355; cv=none;
        d=google.com; s=arc-20160816;
        b=UM4Ebdr/2zDuUlTcoWejpbESIV2+tCcHh6bQSZjizJRxZwS5Y42EYdk3UUUpLpK71I
         tasjIXlZUc+5rDctU24zl5hT3rwAdaf4XMYKH5w684uaaq2UPin2B/nZKPGglz0Eu/2o
         DZUGCIfCImUXOW1Z2n8cZfrwi2SSS1h/AidY4aoMfim2qd8+8aGC78/Bq+t7W8faYwCe
         uKN+VrCnknoDubJyG5qIJw5itaoB3vfJrd3R6qUYPKRA2/hqYAsXuxnTKKk/k8HnnRJ4
         zMZYN6PaG7Zwtm1xjbi2pcOccErV+wWOdzUS0oybIjlgQKIbQK4/ZvG0wIVOTWuHnhqs
         MutA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=AT8k0Ujx30fTIy3gFAsO4occKkWQs4JEI8e3daI7OpE=;
        b=J1rqbz7ZiDH/6TsndLdsq5eXhgwLD7jvrXcJWSy7Um8Ra48NrEKodtSXHI1+WEO8fK
         HTxGulkLkV7vK1yJsBV8mY7TkuLST22PWGVPAmPefOZRa/zj27N0Z27XL/DZC6DXE0T6
         bJCQQLrhoMuUbsTtr2i+UOp0w2JcWsYYbYAzTirM2rMGu0Qqul9O0SgWQ8CUKcLijL3o
         lz92yRB01qMRUXWTQpjbQnaonNq+Gl5IPF5jastReDTW/R/YWlriE9WOrDSAySvxF77E
         qaLIhk52TJ/1fygHsrOcx6GS1G0lOENESmFICzZp7d0T5ghIAZhB9Nirmp8ngQ2mhAJ6
         geEg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga12.intel.com (mga12.intel.com. [192.55.52.136])
        by gmr-mx.google.com with ESMTPS id x24si72483pll.5.2020.11.19.13.45.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Nov 2020 13:45:55 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) client-ip=192.55.52.136;
IronPort-SDR: HzudxIw0Wq5oJ2F2dokZOZivAhgyeE0MC2EUy+cqFqaDn+E5j+wkGnDQnGUU+tgPbZd3zAfkV6
 moUIZgiN0WEQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9810"; a="150638831"
X-IronPort-AV: E=Sophos;i="5.78,354,1599548400"; 
   d="gz'50?scan'50,208,50";a="150638831"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Nov 2020 13:45:54 -0800
IronPort-SDR: cWSLwsHrmLuJZok5qlpYsKLz/2KNFovhBpxyqnVExYKXFlyTTWjAJ0TUgsb01Vx+8CxWJleb85
 htZ8Q6JoVgNQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,354,1599548400"; 
   d="gz'50?scan'50,208,50";a="360175252"
Received: from lkp-server01.sh.intel.com (HELO 1b817e3f8ad2) ([10.239.97.150])
  by fmsmga004.fm.intel.com with ESMTP; 19 Nov 2020 13:45:52 -0800
Received: from kbuild by 1b817e3f8ad2 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kfrkV-0000DM-KP; Thu, 19 Nov 2020 21:45:51 +0000
Date: Fri, 20 Nov 2020 05:45:38 +0800
From: kernel test robot <lkp@intel.com>
To: Mel Gorman <mgorman@suse.de>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [mel:sched-imbalancespread-v3r1 5/5] kernel/sched/fair.c:8897:8:
 error: implicit declaration of function 'allow_numa_imbalance'
Message-ID: <202011200535.jTIaJAI5-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="bp/iNruPH9dso1Pn"
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


--bp/iNruPH9dso1Pn
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/mel/linux.git sched-imbalancespread-v3r1
head:   6c487a4a345505854f9a80fd57197b9b06cf2a48
commit: 6c487a4a345505854f9a80fd57197b9b06cf2a48 [5/5] sched: Limit the amount of NUMA imbalance that can exist at fork time
config: arm64-randconfig-r001-20201119 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project b2613fb2f0f53691dd0211895afbb9413457fca7)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install arm64 cross compiling tool for clang build
        # apt-get install binutils-aarch64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/mel/linux.git/commit/?id=6c487a4a345505854f9a80fd57197b9b06cf2a48
        git remote add mel https://git.kernel.org/pub/scm/linux/kernel/git/mel/linux.git
        git fetch --no-tags mel sched-imbalancespread-v3r1
        git checkout 6c487a4a345505854f9a80fd57197b9b06cf2a48
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   kernel/sched/fair.c:5371:6: warning: no previous prototype for function 'init_cfs_bandwidth' [-Wmissing-prototypes]
   void init_cfs_bandwidth(struct cfs_bandwidth *cfs_b) {}
        ^
   kernel/sched/fair.c:5371:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void init_cfs_bandwidth(struct cfs_bandwidth *cfs_b) {}
   ^
   static 
>> kernel/sched/fair.c:8897:8: error: implicit declaration of function 'allow_numa_imbalance' [-Werror,-Wimplicit-function-declaration]
                           if (allow_numa_imbalance(local_sgs.sum_nr_running, sd->span_weight))
                               ^
>> kernel/sched/fair.c:9006:20: error: static declaration of 'allow_numa_imbalance' follows non-static declaration
   static inline bool allow_numa_imbalance(int dst_running, int dst_weight)
                      ^
   kernel/sched/fair.c:8897:8: note: previous implicit declaration is here
                           if (allow_numa_imbalance(local_sgs.sum_nr_running, sd->span_weight))
                               ^
   kernel/sched/fair.c:11171:6: warning: no previous prototype for function 'free_fair_sched_group' [-Wmissing-prototypes]
   void free_fair_sched_group(struct task_group *tg) { }
        ^
   kernel/sched/fair.c:11171:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void free_fair_sched_group(struct task_group *tg) { }
   ^
   static 
   kernel/sched/fair.c:11173:5: warning: no previous prototype for function 'alloc_fair_sched_group' [-Wmissing-prototypes]
   int alloc_fair_sched_group(struct task_group *tg, struct task_group *parent)
       ^
   kernel/sched/fair.c:11173:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   int alloc_fair_sched_group(struct task_group *tg, struct task_group *parent)
   ^
   static 
   kernel/sched/fair.c:11178:6: warning: no previous prototype for function 'online_fair_sched_group' [-Wmissing-prototypes]
   void online_fair_sched_group(struct task_group *tg) { }
        ^
   kernel/sched/fair.c:11178:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void online_fair_sched_group(struct task_group *tg) { }
   ^
   static 
   kernel/sched/fair.c:11180:6: warning: no previous prototype for function 'unregister_fair_sched_group' [-Wmissing-prototypes]
   void unregister_fair_sched_group(struct task_group *tg) { }
        ^
   kernel/sched/fair.c:11180:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void unregister_fair_sched_group(struct task_group *tg) { }
   ^
   static 
   5 warnings and 2 errors generated.

vim +/allow_numa_imbalance +8897 kernel/sched/fair.c

  8764	
  8765	/*
  8766	 * find_idlest_group() finds and returns the least busy CPU group within the
  8767	 * domain.
  8768	 *
  8769	 * Assumes p is allowed on at least one CPU in sd.
  8770	 */
  8771	static struct sched_group *
  8772	find_idlest_group(struct sched_domain *sd, struct task_struct *p, int this_cpu)
  8773	{
  8774		struct sched_group *idlest = NULL, *local = NULL, *group = sd->groups;
  8775		struct sg_lb_stats local_sgs, tmp_sgs;
  8776		struct sg_lb_stats *sgs;
  8777		unsigned long imbalance;
  8778		struct sg_lb_stats idlest_sgs = {
  8779				.avg_load = UINT_MAX,
  8780				.group_type = group_overloaded,
  8781		};
  8782	
  8783		do {
  8784			int local_group;
  8785	
  8786			/* Skip over this group if it has no CPUs allowed */
  8787			if (!cpumask_intersects(sched_group_span(group),
  8788						p->cpus_ptr))
  8789				continue;
  8790	
  8791			local_group = cpumask_test_cpu(this_cpu,
  8792						       sched_group_span(group));
  8793	
  8794			if (local_group) {
  8795				sgs = &local_sgs;
  8796				local = group;
  8797			} else {
  8798				sgs = &tmp_sgs;
  8799			}
  8800	
  8801			update_sg_wakeup_stats(sd, group, sgs, p);
  8802	
  8803			if (!local_group && update_pick_idlest(idlest, &idlest_sgs, group, sgs)) {
  8804				idlest = group;
  8805				idlest_sgs = *sgs;
  8806			}
  8807	
  8808		} while (group = group->next, group != sd->groups);
  8809	
  8810	
  8811		/* There is no idlest group to push tasks to */
  8812		if (!idlest)
  8813			return NULL;
  8814	
  8815		/* The local group has been skipped because of CPU affinity */
  8816		if (!local)
  8817			return idlest;
  8818	
  8819		/*
  8820		 * If the local group is idler than the selected idlest group
  8821		 * don't try and push the task.
  8822		 */
  8823		if (local_sgs.group_type < idlest_sgs.group_type)
  8824			return NULL;
  8825	
  8826		/*
  8827		 * If the local group is busier than the selected idlest group
  8828		 * try and push the task.
  8829		 */
  8830		if (local_sgs.group_type > idlest_sgs.group_type)
  8831			return idlest;
  8832	
  8833		switch (local_sgs.group_type) {
  8834		case group_overloaded:
  8835		case group_fully_busy:
  8836	
  8837			/* Calculate allowed imbalance based on load */
  8838			imbalance = scale_load_down(NICE_0_LOAD) *
  8839					(sd->imbalance_pct-100) / 100;
  8840	
  8841			/*
  8842			 * When comparing groups across NUMA domains, it's possible for
  8843			 * the local domain to be very lightly loaded relative to the
  8844			 * remote domains but "imbalance" skews the comparison making
  8845			 * remote CPUs look much more favourable. When considering
  8846			 * cross-domain, add imbalance to the load on the remote node
  8847			 * and consider staying local.
  8848			 */
  8849	
  8850			if ((sd->flags & SD_NUMA) &&
  8851			    ((idlest_sgs.avg_load + imbalance) >= local_sgs.avg_load))
  8852				return NULL;
  8853	
  8854			/*
  8855			 * If the local group is less loaded than the selected
  8856			 * idlest group don't try and push any tasks.
  8857			 */
  8858			if (idlest_sgs.avg_load >= (local_sgs.avg_load + imbalance))
  8859				return NULL;
  8860	
  8861			if (100 * local_sgs.avg_load <= sd->imbalance_pct * idlest_sgs.avg_load)
  8862				return NULL;
  8863			break;
  8864	
  8865		case group_imbalanced:
  8866		case group_asym_packing:
  8867			/* Those type are not used in the slow wakeup path */
  8868			return NULL;
  8869	
  8870		case group_misfit_task:
  8871			/* Select group with the highest max capacity */
  8872			if (local->sgc->max_capacity >= idlest->sgc->max_capacity)
  8873				return NULL;
  8874			break;
  8875	
  8876		case group_has_spare:
  8877			if (sd->flags & SD_NUMA) {
  8878	#ifdef CONFIG_NUMA_BALANCING
  8879				int idlest_cpu;
  8880				/*
  8881				 * If there is spare capacity at NUMA, try to select
  8882				 * the preferred node
  8883				 */
  8884				if (cpu_to_node(this_cpu) == p->numa_preferred_nid)
  8885					return NULL;
  8886	
  8887				idlest_cpu = cpumask_first(sched_group_span(idlest));
  8888				if (cpu_to_node(idlest_cpu) == p->numa_preferred_nid)
  8889					return idlest;
  8890	#endif
  8891				/*
  8892				 * Otherwise, keep the task on this node to stay close
  8893				 * its wakeup source and improve locality. If there is
  8894				 * a real need of migration, periodic load balance will
  8895				 * take care of it.
  8896				 */
> 8897				if (allow_numa_imbalance(local_sgs.sum_nr_running, sd->span_weight))
  8898					return NULL;
  8899			}
  8900	
  8901			/*
  8902			 * Select group with highest number of idle CPUs. We could also
  8903			 * compare the utilization which is more stable but it can end
  8904			 * up that the group has less spare capacity but finally more
  8905			 * idle CPUs which means more opportunity to run task.
  8906			 */
  8907			if (local_sgs.idle_cpus >= idlest_sgs.idle_cpus)
  8908				return NULL;
  8909			break;
  8910		}
  8911	
  8912		return idlest;
  8913	}
  8914	
  8915	/**
  8916	 * update_sd_lb_stats - Update sched_domain's statistics for load balancing.
  8917	 * @env: The load balancing environment.
  8918	 * @sds: variable to hold the statistics for this sched_domain.
  8919	 */
  8920	
  8921	static inline void update_sd_lb_stats(struct lb_env *env, struct sd_lb_stats *sds)
  8922	{
  8923		struct sched_domain *child = env->sd->child;
  8924		struct sched_group *sg = env->sd->groups;
  8925		struct sg_lb_stats *local = &sds->local_stat;
  8926		struct sg_lb_stats tmp_sgs;
  8927		int sg_status = 0;
  8928	
  8929	#ifdef CONFIG_NO_HZ_COMMON
  8930		if (env->idle == CPU_NEWLY_IDLE && READ_ONCE(nohz.has_blocked))
  8931			env->flags |= LBF_NOHZ_STATS;
  8932	#endif
  8933	
  8934		do {
  8935			struct sg_lb_stats *sgs = &tmp_sgs;
  8936			int local_group;
  8937	
  8938			local_group = cpumask_test_cpu(env->dst_cpu, sched_group_span(sg));
  8939			if (local_group) {
  8940				sds->local = sg;
  8941				sgs = local;
  8942	
  8943				if (env->idle != CPU_NEWLY_IDLE ||
  8944				    time_after_eq(jiffies, sg->sgc->next_update))
  8945					update_group_capacity(env->sd, env->dst_cpu);
  8946			}
  8947	
  8948			update_sg_lb_stats(env, sg, sgs, &sg_status);
  8949	
  8950			if (local_group)
  8951				goto next_group;
  8952	
  8953	
  8954			if (update_sd_pick_busiest(env, sds, sg, sgs)) {
  8955				sds->busiest = sg;
  8956				sds->busiest_stat = *sgs;
  8957			}
  8958	
  8959	next_group:
  8960			/* Now, start updating sd_lb_stats */
  8961			sds->total_load += sgs->group_load;
  8962			sds->total_capacity += sgs->group_capacity;
  8963	
  8964			sg = sg->next;
  8965		} while (sg != env->sd->groups);
  8966	
  8967		/* Tag domain that child domain prefers tasks go to siblings first */
  8968		sds->prefer_sibling = child && child->flags & SD_PREFER_SIBLING;
  8969	
  8970	#ifdef CONFIG_NO_HZ_COMMON
  8971		if ((env->flags & LBF_NOHZ_AGAIN) &&
  8972		    cpumask_subset(nohz.idle_cpus_mask, sched_domain_span(env->sd))) {
  8973	
  8974			WRITE_ONCE(nohz.next_blocked,
  8975				   jiffies + msecs_to_jiffies(LOAD_AVG_PERIOD));
  8976		}
  8977	#endif
  8978	
  8979		if (env->sd->flags & SD_NUMA)
  8980			env->fbq_type = fbq_classify_group(&sds->busiest_stat);
  8981	
  8982		if (!env->sd->parent) {
  8983			struct root_domain *rd = env->dst_rq->rd;
  8984	
  8985			/* update overload indicator if we are at root domain */
  8986			WRITE_ONCE(rd->overload, sg_status & SG_OVERLOAD);
  8987	
  8988			/* Update over-utilization (tipping point, U >= 0) indicator */
  8989			WRITE_ONCE(rd->overutilized, sg_status & SG_OVERUTILIZED);
  8990			trace_sched_overutilized_tp(rd, sg_status & SG_OVERUTILIZED);
  8991		} else if (sg_status & SG_OVERUTILIZED) {
  8992			struct root_domain *rd = env->dst_rq->rd;
  8993	
  8994			WRITE_ONCE(rd->overutilized, SG_OVERUTILIZED);
  8995			trace_sched_overutilized_tp(rd, SG_OVERUTILIZED);
  8996		}
  8997	}
  8998	
  8999	#define NUMA_IMBALANCE_MIN 2
  9000	
  9001	/*
  9002	 * Allow a NUMA imbalance if busy CPUs is less than 25% of the domain.
  9003	 * This is an approximation as the number of running tasks may not be
  9004	 * related to the number of busy CPUs due to sched_setaffinity.
  9005	 */
> 9006	static inline bool allow_numa_imbalance(int dst_running, int dst_weight)
  9007	{
  9008		return (dst_running < (dst_weight >> 2));
  9009	}
  9010	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202011200535.jTIaJAI5-lkp%40intel.com.

--bp/iNruPH9dso1Pn
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
ub3oQ0VdtZZcMQ5BsizvUe3/AB0w2blppgIA

--bp/iNruPH9dso1Pn--
