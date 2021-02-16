Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBCEDVWAQMGQENGAUIAY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103e.google.com (mail-pj1-x103e.google.com [IPv6:2607:f8b0:4864:20::103e])
	by mail.lfdr.de (Postfix) with ESMTPS id D566B31C5E7
	for <lists+clang-built-linux@lfdr.de>; Tue, 16 Feb 2021 04:52:41 +0100 (CET)
Received: by mail-pj1-x103e.google.com with SMTP id fa7sf10466940pjb.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 15 Feb 2021 19:52:41 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1613447560; cv=pass;
        d=google.com; s=arc-20160816;
        b=cNHDVjWg4ikzTvEiLyvSd5UYKTNG96+sx2zKGtW40F93ID0cND9i4TGxZ0XijMDqEs
         TF8vlbVQtMdW6HeR2SODnNw4GoTiuBcW03qkv1+ATl8N4riVaYceEc2DSCRIcX0sqRq9
         D9LEGKssTV6aMraHuGA5Y6oBNrJYdQLFUq09ibV89bNvYT9C2QX1QLiWNyCGOjhLaKXI
         01cB3l/K95pIfZdIlAgmqteQl72XAR8jzt26M5IdRD/CgMAYoTuBtjegjsQbZITbJYiJ
         +NFIKiNnGXj4txSkRAvQ1wnF1BogR+NXqWlEgRtaymUXEcSlbfTWJrMuqG3OWSvBhEeP
         WF6g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=xTlD5REbozGNm+Ex+NmjMMMv6KiCCvA9OpSxwH6MT4c=;
        b=JgH4qt9BIAa0vb26ucXUrhnaAY7KrCauzXhgg9Gok05W812WIDDY/71/vATBBIEc+P
         7zZTZ6sr0r23znxWGxgULnUQWqyQKDnFf3hRu12n3YtHQ7DAuboXhJObQ3B31iOGP70r
         19a1+zka2lGeP1fNJ2EHUGOQLP/LbZKhtW+9juY+rEp1ZubknkJZZRtg1IM48HrwyJqC
         wT8mw4TMw+Gn/mnsMdjuBWJDQ8+pNOc3d+vHEUYJNB41pbEKna7kfhxfiniSYs8+uiMf
         uu1marGABuzBKzxdtijyYHos79qRnMKQ0btRjK8ddpJRABklNYhQy+zSq3yO8sD7+pAl
         pWsw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xTlD5REbozGNm+Ex+NmjMMMv6KiCCvA9OpSxwH6MT4c=;
        b=rilXv/otKVQ8hxktKUDbSk9LAFlrOcNXpljg8o6B+lFcJrZgvNTyNhp2qhH2TJhsUz
         OoJLkFM1MN5tyQQVEsGFpsv9tP/R5QQOmujCvQPM00QzcWnBnzw/6buF+KHmoCLnsptl
         fmCyNrNJI/fbo6dvaB77xtUiZ9NCToC2G4bNZyZzJDAwqSMULnqvDLRu5Gy/hW7steE3
         DDo2k7LVVBgYVRlqA0+7Pg/8bCW5Yrc0f9YMWD37h1wG+Zv6WOhixYR6dKEpbRA9hafM
         0cUOooxfqtVy/fp7qH33IkkbgAEswBJLFEf5XvXMLa7wN1NgwZXiCgzYwNxkBRtEtuxn
         h4ZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=xTlD5REbozGNm+Ex+NmjMMMv6KiCCvA9OpSxwH6MT4c=;
        b=XdVGWnhXldKgwwuEOPCMNds/Gxr3XfLP9MZ3JBmtGX+8+n4R8AAvZFNlaL/BIw/YLT
         99N9MaxOusvALZ8euZ8mc7zYsIjNTf7ITDeBUCdR5MOiKeOZEVWgW/6m6OtBizPHAaOY
         IJCWMihZJr3M4c1vz70+N2Y2XJGbPaeXY2l9yDzsq9BExEB3BBt97rnmVb3u/fnPIuu4
         ImJQuRiCJslEWCboAU75RL6FOyrys8O/xknFyDojkKSUrN4YaCSYzZMRx3hyPwPzpI01
         LqrsTHawGvBPxOzMx+so8WSbXPHlmzBzKr8hRXmnMaABFM17gMyPL57Qci2aa+cP5z/C
         3LwA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532figgmO03pPerw56XkoRsuKjTPEfFM4Qh/tq2NQqhKdksrGSVg
	7fNUeHh2eSgcPfrcGr/RUWk=
X-Google-Smtp-Source: ABdhPJyL7AIiL00tDuZGipW9MvRvTbFUOl6vzwjkDusN5l8Q97Z8DAaHprFENMNKji4p4GMtaJ3l8Q==
X-Received: by 2002:a62:19d8:0:b029:1d9:e1dd:ac00 with SMTP id 207-20020a6219d80000b02901d9e1ddac00mr18376400pfz.52.1613447560289;
        Mon, 15 Feb 2021 19:52:40 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:ed0d:: with SMTP id u13ls1919448pfh.3.gmail; Mon, 15 Feb
 2021 19:52:39 -0800 (PST)
X-Received: by 2002:a62:2b8b:0:b029:1da:32ca:359f with SMTP id r133-20020a622b8b0000b02901da32ca359fmr18088874pfr.52.1613447559493;
        Mon, 15 Feb 2021 19:52:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1613447559; cv=none;
        d=google.com; s=arc-20160816;
        b=LEBq1KbC6xPDqdpVuyUf+ssycEbC0T3QaVbj8A2jlHd4ZLEcxf++VpTROX8wmtzT7V
         UGSL3aEEpIf+Aa4/ZUc5NkwXIMh92kJTM24x5CNjN1mwFpP8Y22DRLSCS5XftwmGmOAv
         XELmskv59TQkh5EHnprsmSpS6nYW7sm/GYrc8MdH2V1TsZ47T+r4ri6NzyvpPfp5D6xk
         yCg7lB7cBOecZuJoD1PfvPFzgYZSV3gNeHMXoqh5Vp4RdZqescRnnoUaLwXFF+VrYjQg
         IiTYUC1GqIvs6rU+r3KBpKn2ShDHmvD7f4n5wJUbYRC2byN34Qm+cNVUay7w/WAj8QLQ
         tABQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=aW7z07YEzlp2KlYBmFTDJ7qyU/xABVQdZntE/VL/aio=;
        b=NbZPpMxVVEzPzUO9Q7RYxjhh/1yq5ZpgZjXxYtR2cZsF+oIRCi46tpTmxaPH6IvURZ
         XTX0lBHGN830UAlq8s0m/Ap70mA0FWQjY2dQtMAbtDPYqMjoYWPtmvI3N28ksGHVtchL
         SEf0mluMBA7FNIDSHRIs92fLindxLpnyeY8xRIcpS/paZcBom5sDeP21hooSpQvYAyeo
         15x98DGlbSZC0yJ7JbUMiMTOW7CoUBdJXiq3Hh6MgclLnGGgTc5L/GqzOXcifWKh0cnP
         oIk1AWO5YmWbFJqbmmoB6wyusCYL25IZ4ri+9KejO11UGb56CK0MdazCO7ZZruG0s2DY
         BZlw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga05.intel.com (mga05.intel.com. [192.55.52.43])
        by gmr-mx.google.com with ESMTPS id h22si456544pgb.1.2021.02.15.19.52.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Feb 2021 19:52:39 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) client-ip=192.55.52.43;
IronPort-SDR: YxsP7/FUhyPaxWQA+1wxEJierxiyZVGvREawMglM7yzgRziqXtRF9HH9V0jCS/1jCLTHBy8wj2
 U9fZ0mc3cKGw==
X-IronPort-AV: E=McAfee;i="6000,8403,9896"; a="267648254"
X-IronPort-AV: E=Sophos;i="5.81,182,1610438400"; 
   d="gz'50?scan'50,208,50";a="267648254"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Feb 2021 19:52:32 -0800
IronPort-SDR: /3KhmNPpr5mn1hzkF/pyjSHRh3fLay/Uue6T1h3U3dQzyS+g3X8j4Hpi5+SS0yerM8gDZuBFrH
 53zrTu2QqIXg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,182,1610438400"; 
   d="gz'50?scan'50,208,50";a="424446805"
Received: from lkp-server02.sh.intel.com (HELO cd560a204411) ([10.239.97.151])
  by FMSMGA003.fm.intel.com with ESMTP; 15 Feb 2021 19:52:23 -0800
Received: from kbuild by cd560a204411 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lBrPS-0007qX-Qt; Tue, 16 Feb 2021 03:52:22 +0000
Date: Tue, 16 Feb 2021 11:52:20 +0800
From: kernel test robot <lkp@intel.com>
To: Peter Zijlstra <peterz@infradead.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [peterz-queue:sched/cleanup 54/54] kernel/rcu/tree.c:1380:5: error:
 implicit declaration of function 'irq_work_queue_remote'
Message-ID: <202102161116.6Eoa0nAX-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="gKMricLos+KVdGMg"
Content-Disposition: inline
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


--gKMricLos+KVdGMg
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/peterz/queue.git sched/cleanup
head:   ee09193893ed40f5e3bd2aeb7b7dc8617b8bea36
commit: ee09193893ed40f5e3bd2aeb7b7dc8617b8bea36 [54/54] rcu/tree: Use irq_work_queue_remote()
config: x86_64-randconfig-a005-20210215 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project c9439ca36342fb6013187d0a69aef92736951476)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/peterz/queue.git/commit/?id=ee09193893ed40f5e3bd2aeb7b7dc8617b8bea36
        git remote add peterz-queue https://git.kernel.org/pub/scm/linux/kernel/git/peterz/queue.git
        git fetch --no-tags peterz-queue sched/cleanup
        git checkout ee09193893ed40f5e3bd2aeb7b7dc8617b8bea36
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> kernel/rcu/tree.c:1380:5: error: implicit declaration of function 'irq_work_queue_remote' [-Werror,-Wimplicit-function-declaration]
                                   irq_work_queue_remote(rdp->cpu, &rdp->rcu_iw);
                                   ^
   kernel/rcu/tree.c:1380:5: note: did you mean 'irq_work_queue_on'?
   include/linux/irq_work.h:52:6: note: 'irq_work_queue_on' declared here
   bool irq_work_queue_on(struct irq_work *work, int cpu);
        ^
   1 error generated.


vim +/irq_work_queue_remote +1380 kernel/rcu/tree.c

  1255	
  1256	/*
  1257	 * Return true if the specified CPU has passed through a quiescent
  1258	 * state by virtue of being in or having passed through an dynticks
  1259	 * idle state since the last call to dyntick_save_progress_counter()
  1260	 * for this same CPU, or by virtue of having been offline.
  1261	 */
  1262	static int rcu_implicit_dynticks_qs(struct rcu_data *rdp)
  1263	{
  1264		unsigned long jtsq;
  1265		bool *rnhqp;
  1266		bool *ruqp;
  1267		struct rcu_node *rnp = rdp->mynode;
  1268	
  1269		raw_lockdep_assert_held_rcu_node(rnp);
  1270	
  1271		/*
  1272		 * If the CPU passed through or entered a dynticks idle phase with
  1273		 * no active irq/NMI handlers, then we can safely pretend that the CPU
  1274		 * already acknowledged the request to pass through a quiescent
  1275		 * state.  Either way, that CPU cannot possibly be in an RCU
  1276		 * read-side critical section that started before the beginning
  1277		 * of the current RCU grace period.
  1278		 */
  1279		if (rcu_dynticks_in_eqs_since(rdp, rdp->dynticks_snap)) {
  1280			trace_rcu_fqs(rcu_state.name, rdp->gp_seq, rdp->cpu, TPS("dti"));
  1281			rcu_gpnum_ovf(rnp, rdp);
  1282			return 1;
  1283		}
  1284	
  1285		/*
  1286		 * Complain if a CPU that is considered to be offline from RCU's
  1287		 * perspective has not yet reported a quiescent state.  After all,
  1288		 * the offline CPU should have reported a quiescent state during
  1289		 * the CPU-offline process, or, failing that, by rcu_gp_init()
  1290		 * if it ran concurrently with either the CPU going offline or the
  1291		 * last task on a leaf rcu_node structure exiting its RCU read-side
  1292		 * critical section while all CPUs corresponding to that structure
  1293		 * are offline.  This added warning detects bugs in any of these
  1294		 * code paths.
  1295		 *
  1296		 * The rcu_node structure's ->lock is held here, which excludes
  1297		 * the relevant portions the CPU-hotplug code, the grace-period
  1298		 * initialization code, and the rcu_read_unlock() code paths.
  1299		 *
  1300		 * For more detail, please refer to the "Hotplug CPU" section
  1301		 * of RCU's Requirements documentation.
  1302		 */
  1303		if (WARN_ON_ONCE(!(rdp->grpmask & rcu_rnp_online_cpus(rnp)))) {
  1304			bool onl;
  1305			struct rcu_node *rnp1;
  1306	
  1307			pr_info("%s: grp: %d-%d level: %d ->gp_seq %ld ->completedqs %ld\n",
  1308				__func__, rnp->grplo, rnp->grphi, rnp->level,
  1309				(long)rnp->gp_seq, (long)rnp->completedqs);
  1310			for (rnp1 = rnp; rnp1; rnp1 = rnp1->parent)
  1311				pr_info("%s: %d:%d ->qsmask %#lx ->qsmaskinit %#lx ->qsmaskinitnext %#lx ->rcu_gp_init_mask %#lx\n",
  1312					__func__, rnp1->grplo, rnp1->grphi, rnp1->qsmask, rnp1->qsmaskinit, rnp1->qsmaskinitnext, rnp1->rcu_gp_init_mask);
  1313			onl = !!(rdp->grpmask & rcu_rnp_online_cpus(rnp));
  1314			pr_info("%s %d: %c online: %ld(%d) offline: %ld(%d)\n",
  1315				__func__, rdp->cpu, ".o"[onl],
  1316				(long)rdp->rcu_onl_gp_seq, rdp->rcu_onl_gp_flags,
  1317				(long)rdp->rcu_ofl_gp_seq, rdp->rcu_ofl_gp_flags);
  1318			return 1; /* Break things loose after complaining. */
  1319		}
  1320	
  1321		/*
  1322		 * A CPU running for an extended time within the kernel can
  1323		 * delay RCU grace periods: (1) At age jiffies_to_sched_qs,
  1324		 * set .rcu_urgent_qs, (2) At age 2*jiffies_to_sched_qs, set
  1325		 * both .rcu_need_heavy_qs and .rcu_urgent_qs.  Note that the
  1326		 * unsynchronized assignments to the per-CPU rcu_need_heavy_qs
  1327		 * variable are safe because the assignments are repeated if this
  1328		 * CPU failed to pass through a quiescent state.  This code
  1329		 * also checks .jiffies_resched in case jiffies_to_sched_qs
  1330		 * is set way high.
  1331		 */
  1332		jtsq = READ_ONCE(jiffies_to_sched_qs);
  1333		ruqp = per_cpu_ptr(&rcu_data.rcu_urgent_qs, rdp->cpu);
  1334		rnhqp = &per_cpu(rcu_data.rcu_need_heavy_qs, rdp->cpu);
  1335		if (!READ_ONCE(*rnhqp) &&
  1336		    (time_after(jiffies, rcu_state.gp_start + jtsq * 2) ||
  1337		     time_after(jiffies, rcu_state.jiffies_resched) ||
  1338		     rcu_state.cbovld)) {
  1339			WRITE_ONCE(*rnhqp, true);
  1340			/* Store rcu_need_heavy_qs before rcu_urgent_qs. */
  1341			smp_store_release(ruqp, true);
  1342		} else if (time_after(jiffies, rcu_state.gp_start + jtsq)) {
  1343			WRITE_ONCE(*ruqp, true);
  1344		}
  1345	
  1346		/*
  1347		 * NO_HZ_FULL CPUs can run in-kernel without rcu_sched_clock_irq!
  1348		 * The above code handles this, but only for straight cond_resched().
  1349		 * And some in-kernel loops check need_resched() before calling
  1350		 * cond_resched(), which defeats the above code for CPUs that are
  1351		 * running in-kernel with scheduling-clock interrupts disabled.
  1352		 * So hit them over the head with the resched_cpu() hammer!
  1353		 */
  1354		if (tick_nohz_full_cpu(rdp->cpu) &&
  1355		    (time_after(jiffies, READ_ONCE(rdp->last_fqs_resched) + jtsq * 3) ||
  1356		     rcu_state.cbovld)) {
  1357			WRITE_ONCE(*ruqp, true);
  1358			resched_cpu(rdp->cpu);
  1359			WRITE_ONCE(rdp->last_fqs_resched, jiffies);
  1360		}
  1361	
  1362		/*
  1363		 * If more than halfway to RCU CPU stall-warning time, invoke
  1364		 * resched_cpu() more frequently to try to loosen things up a bit.
  1365		 * Also check to see if the CPU is getting hammered with interrupts,
  1366		 * but only once per grace period, just to keep the IPIs down to
  1367		 * a dull roar.
  1368		 */
  1369		if (time_after(jiffies, rcu_state.jiffies_resched)) {
  1370			if (time_after(jiffies,
  1371				       READ_ONCE(rdp->last_fqs_resched) + jtsq)) {
  1372				resched_cpu(rdp->cpu);
  1373				WRITE_ONCE(rdp->last_fqs_resched, jiffies);
  1374			}
  1375			if (!rdp->rcu_iw_pending && rdp->rcu_iw_gp_seq != rnp->gp_seq &&
  1376			    (rnp->ffmask & rdp->grpmask)) {
  1377				rdp->rcu_iw_gp_seq = rnp->gp_seq;
  1378				if (likely(rdp->cpu != smp_processor_id())) {
  1379					rdp->rcu_iw_pending = true;
> 1380					irq_work_queue_remote(rdp->cpu, &rdp->rcu_iw);
  1381				}
  1382			}
  1383		}
  1384	
  1385		return 0;
  1386	}
  1387	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202102161116.6Eoa0nAX-lkp%40intel.com.

--gKMricLos+KVdGMg
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
oFo+0lHUNTuc/wFWqA+tQvcBAA==

--gKMricLos+KVdGMg--
