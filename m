Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBC667CBQMGQEUXER3QI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x840.google.com (mail-qt1-x840.google.com [IPv6:2607:f8b0:4864:20::840])
	by mail.lfdr.de (Postfix) with ESMTPS id F1F6D364FDB
	for <lists+clang-built-linux@lfdr.de>; Tue, 20 Apr 2021 03:31:56 +0200 (CEST)
Received: by mail-qt1-x840.google.com with SMTP id h2-20020a05622a1702b02901b9123889b0sf2959684qtk.10
        for <lists+clang-built-linux@lfdr.de>; Mon, 19 Apr 2021 18:31:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618882316; cv=pass;
        d=google.com; s=arc-20160816;
        b=HDbYtrkTVJgIPsnBucz2XW9tpQ9Q9X3Iq9wCJCe3PHGfdIvgCJnu2zZaMxarRCCGsf
         o+DDljORDRzEIwwzozmzbXQpRbHWROowAeTw5t/mRODgKI49i+KKLMQINYg4u9HjzTcu
         IxlGDK+lSACdxGP030Cg3PVb5x20GiBdunICNi1sUXnuHtA90VS1dtaneMj1T7ZPu2q0
         pTNVe3lIoYKv9nxNLF2a7pfRS6VHkp7l8rieCq/16elI/I+OwTB73Gae3IGtWuDKL23E
         oADEFN16NaRF7E7UVCIT2YXXVEsRkOXYCrq08CDRcbbbO9t4is5JUPVgmSac7tWDOP1z
         s2ug==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=gxR8JRXoPEfDmaV69qdp4bA82O//IutQr0Qt99V0jO0=;
        b=K5hLY8sUzGqMQ+OXJrb3/QnBQnujcP4saMtU7znnxYheMscsdwF52tUsyt3LAhDaxQ
         /7pay8V65OgEQ/YTgG9XgJnk8G3Wahyoy87IufzJFCsubw7i7X+cToi6QCHZWTNql7rG
         ZN2d4BGP6y17wmVaO09jnY4Piaplf0Ucu2IOEd9VKizfcSLcNe1O4Ka7bwJIndjRUj2E
         f34pgmAgiznlfoiTg3O3xUxOCL8EXcrYo8S5i1LzWgFg0EuHg0imMdHEoJev0eKJm9Rb
         P2UUNPLrriZaIbte3c8Q0QBnQ1CokJCNETisJA6hX5VOxyiCzjlQlZfdPlbEZMv7+8Ap
         ca5g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=gxR8JRXoPEfDmaV69qdp4bA82O//IutQr0Qt99V0jO0=;
        b=pnX3QAqM6o+rGDYUhpPUwAprWl5FViX6rf2e1ghzTPq33IixnwNQfP8vT2yX3k3CV1
         lpiuGWI5D3CWpNFxeBUqRYynE0Lejg1UIttL/2r6OKeampizQMRrRV/H6rkPgkiTMScu
         EeYVSD+RvJ7i7qv0tPYAs92cBTw1+9O9jRdCAi0BTY59ihDEZYomHfWl0e/u1XOydjog
         lqQC8CHFzhvmQagUs0nCTm5g6wlR0Nq5uq/o+lRo3aREfQb+/aytLTTTV9+4F8H8wkXs
         FizAbe8dt+Mb0FXm1WNOYxB2O7Pa+YQ/SfiKF9UOBFmVDme5ghFm7xQJ5LFIsHVR4zK3
         6OTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=gxR8JRXoPEfDmaV69qdp4bA82O//IutQr0Qt99V0jO0=;
        b=bIuSVtin7likcho+OBFKcclaJtWGW2glIHZxYrn2UEyZK3678E2DujWG0W59LgflfQ
         H7CZoN3ZehKoWj2qBh9ywu8uMJBKBRCzxaRLBJURhFPZD3uHxSeEJL7HqssZcMveGApw
         rzN58R9pSaNYLAp5KTS/eaCeih/eGTIVrE5A74sN06HXWlY4kAoGRhOfKNC7l/fAOXBe
         ATanFTd93APsXKJ01Rty4fp3m01mi7vBgUu1lUxybEdfGeqDfKS75LdvnCVnzEMlp+SS
         MisqGuTEToTO5FM0nTfTtlxpTJrHYkt4uf7soQVFvvA26BITAZCzg824rl+TAx8rQor4
         8R6Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5317Kl5y+bAnjNGblbF+n/nvyyfwddkRBYIxwNnX+/mMkbDaKtQQ
	7m/j1yYT/05UGER46gyVRRE=
X-Google-Smtp-Source: ABdhPJzkddzTK6XxRuM24CJzV/dnIKvlxwVv1hM7/RgBehDziBkwxd2O/M78GUFI0Du0m8llquEvcw==
X-Received: by 2002:ac8:6f72:: with SMTP id u18mr14271849qtv.295.1618882315855;
        Mon, 19 Apr 2021 18:31:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:f8e:: with SMTP id b14ls402080qkn.0.gmail; Mon, 19
 Apr 2021 18:31:55 -0700 (PDT)
X-Received: by 2002:a05:620a:950:: with SMTP id w16mr15235490qkw.188.1618882315302;
        Mon, 19 Apr 2021 18:31:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618882315; cv=none;
        d=google.com; s=arc-20160816;
        b=eC3v2A2rMlMIRqmYSURaJ9HeRZ2YT7mfbfH5vw7/0SIQSwMV4Ky1iBQYrw8MMnwmgv
         NanEFB77aDjMROhlj+a8RwPlNrFZtt2c9WBMz7nxNkMvyNOLDfTIRl+hHX9jLNfDNmJc
         DYuQdaX5AICYWVqSDG1w4VBORod7tDrQp+ebgs7dq8siPSqvI3HBtb0LRknQNoCJQhvu
         bqNHi9CGizMeea5J7d0vNqkjALwI2hm9V1W3Pb8pmYmVhglBUmnVVSxFXM2qdjhkz95J
         D8ePca1amqlOnv+3noWTmcrdvRG7Yytkay/9p6qfUrAI30Ab+I51x4u9mVrg0Vz64KA/
         f27Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=66zCt1l4iOsOD+MONzmJ8sokrIJkZh2fVN5OHcdn+no=;
        b=Ouh9D69DqdpOo+jw+kYGOVnQS0bvjFja+HlsKCKLCHZiu7uMIgcZP4luGen1kfmIIm
         iKLU9M43jNQsKq8M11tLZBUrySW0ZcKsqfwa4cbuUYdXihHmzWyiTLIPOiwb+edtUndD
         oMcFSW41uZIv0p7TH2d4KDc43LyEaGnLhI+GzOb50XokHIkXsoob970LR8RtHwYGhQZO
         kkfO0Zv0zAk49HELHtOsgoKtMSteIM8HnPUpOR10JH0D+X4OO5UXrbZERnwCbh+S4eb/
         jClKH6tJPgBVkN18xsqfXughQStrgSryehwH5sjX2GVkHYCCeeC+piREXqdyOYpya7gr
         4z3g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga09.intel.com (mga09.intel.com. [134.134.136.24])
        by gmr-mx.google.com with ESMTPS id k1si1997091qtg.2.2021.04.19.18.31.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Apr 2021 18:31:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) client-ip=134.134.136.24;
IronPort-SDR: oqYRyb6H2dQKzLhNwuUtDHK09swfhbxAFLmq1Q0tIXkP3zTbnKu221+JxTe5fITSv15rcMTOLg
 zP8rP+Uofo4Q==
X-IronPort-AV: E=McAfee;i="6200,9189,9959"; a="195539461"
X-IronPort-AV: E=Sophos;i="5.82,235,1613462400"; 
   d="gz'50?scan'50,208,50";a="195539461"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Apr 2021 18:31:53 -0700
IronPort-SDR: c4CR8/P/x9YwbVxvsfSaJSj23kOVy/hGYNCuFNp53iGz6f+RSNp8ppquKMGExgFGjg54+uYkCt
 6i/XiUOJ0N4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,235,1613462400"; 
   d="gz'50?scan'50,208,50";a="426723980"
Received: from lkp-server01.sh.intel.com (HELO a48ff7ddd223) ([10.239.97.150])
  by orsmga008.jf.intel.com with ESMTP; 19 Apr 2021 18:31:43 -0700
Received: from kbuild by a48ff7ddd223 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lYfEs-00021Q-K7; Tue, 20 Apr 2021 01:31:42 +0000
Date: Tue, 20 Apr 2021 09:30:53 +0800
From: kernel test robot <lkp@intel.com>
To: Peter Zijlstra <peterz@infradead.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [peterz-queue:sched/cleanup 4/4] kernel/rcu/tree.c:1385:5: error:
 implicit declaration of function 'irq_work_queue_remote'
Message-ID: <202104200948.dlmNjUMv-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="SLDf9lqlvOQaIe6s"
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


--SLDf9lqlvOQaIe6s
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/peterz/queue.git sched/cleanup
head:   05dd40f3f6f4b06c16b9ad246e5a5523f10b4dff
commit: 05dd40f3f6f4b06c16b9ad246e5a5523f10b4dff [4/4] rcu/tree: Use irq_work_queue_remote()
config: arm-randconfig-r034-20210419 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 2b50f5a4343f8fb06acaa5c36355bcf58092c9cd)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install arm cross compiling tool for clang build
        # apt-get install binutils-arm-linux-gnueabi
        # https://git.kernel.org/pub/scm/linux/kernel/git/peterz/queue.git/commit/?id=05dd40f3f6f4b06c16b9ad246e5a5523f10b4dff
        git remote add peterz-queue https://git.kernel.org/pub/scm/linux/kernel/git/peterz/queue.git
        git fetch --no-tags peterz-queue sched/cleanup
        git checkout 05dd40f3f6f4b06c16b9ad246e5a5523f10b4dff
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 ARCH=arm 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> kernel/rcu/tree.c:1385:5: error: implicit declaration of function 'irq_work_queue_remote' [-Werror,-Wimplicit-function-declaration]
                                   irq_work_queue_remote(rdp->cpu, &rdp->rcu_iw);
                                   ^
   kernel/rcu/tree.c:1385:5: note: did you mean 'irq_work_queue_on'?
   include/linux/irq_work.h:52:6: note: 'irq_work_queue_on' declared here
   bool irq_work_queue_on(struct irq_work *work, int cpu);
        ^
   1 error generated.


vim +/irq_work_queue_remote +1385 kernel/rcu/tree.c

  1260	
  1261	/*
  1262	 * Return true if the specified CPU has passed through a quiescent
  1263	 * state by virtue of being in or having passed through an dynticks
  1264	 * idle state since the last call to dyntick_save_progress_counter()
  1265	 * for this same CPU, or by virtue of having been offline.
  1266	 */
  1267	static int rcu_implicit_dynticks_qs(struct rcu_data *rdp)
  1268	{
  1269		unsigned long jtsq;
  1270		bool *rnhqp;
  1271		bool *ruqp;
  1272		struct rcu_node *rnp = rdp->mynode;
  1273	
  1274		raw_lockdep_assert_held_rcu_node(rnp);
  1275	
  1276		/*
  1277		 * If the CPU passed through or entered a dynticks idle phase with
  1278		 * no active irq/NMI handlers, then we can safely pretend that the CPU
  1279		 * already acknowledged the request to pass through a quiescent
  1280		 * state.  Either way, that CPU cannot possibly be in an RCU
  1281		 * read-side critical section that started before the beginning
  1282		 * of the current RCU grace period.
  1283		 */
  1284		if (rcu_dynticks_in_eqs_since(rdp, rdp->dynticks_snap)) {
  1285			trace_rcu_fqs(rcu_state.name, rdp->gp_seq, rdp->cpu, TPS("dti"));
  1286			rcu_gpnum_ovf(rnp, rdp);
  1287			return 1;
  1288		}
  1289	
  1290		/*
  1291		 * Complain if a CPU that is considered to be offline from RCU's
  1292		 * perspective has not yet reported a quiescent state.  After all,
  1293		 * the offline CPU should have reported a quiescent state during
  1294		 * the CPU-offline process, or, failing that, by rcu_gp_init()
  1295		 * if it ran concurrently with either the CPU going offline or the
  1296		 * last task on a leaf rcu_node structure exiting its RCU read-side
  1297		 * critical section while all CPUs corresponding to that structure
  1298		 * are offline.  This added warning detects bugs in any of these
  1299		 * code paths.
  1300		 *
  1301		 * The rcu_node structure's ->lock is held here, which excludes
  1302		 * the relevant portions the CPU-hotplug code, the grace-period
  1303		 * initialization code, and the rcu_read_unlock() code paths.
  1304		 *
  1305		 * For more detail, please refer to the "Hotplug CPU" section
  1306		 * of RCU's Requirements documentation.
  1307		 */
  1308		if (WARN_ON_ONCE(!(rdp->grpmask & rcu_rnp_online_cpus(rnp)))) {
  1309			bool onl;
  1310			struct rcu_node *rnp1;
  1311	
  1312			pr_info("%s: grp: %d-%d level: %d ->gp_seq %ld ->completedqs %ld\n",
  1313				__func__, rnp->grplo, rnp->grphi, rnp->level,
  1314				(long)rnp->gp_seq, (long)rnp->completedqs);
  1315			for (rnp1 = rnp; rnp1; rnp1 = rnp1->parent)
  1316				pr_info("%s: %d:%d ->qsmask %#lx ->qsmaskinit %#lx ->qsmaskinitnext %#lx ->rcu_gp_init_mask %#lx\n",
  1317					__func__, rnp1->grplo, rnp1->grphi, rnp1->qsmask, rnp1->qsmaskinit, rnp1->qsmaskinitnext, rnp1->rcu_gp_init_mask);
  1318			onl = !!(rdp->grpmask & rcu_rnp_online_cpus(rnp));
  1319			pr_info("%s %d: %c online: %ld(%d) offline: %ld(%d)\n",
  1320				__func__, rdp->cpu, ".o"[onl],
  1321				(long)rdp->rcu_onl_gp_seq, rdp->rcu_onl_gp_flags,
  1322				(long)rdp->rcu_ofl_gp_seq, rdp->rcu_ofl_gp_flags);
  1323			return 1; /* Break things loose after complaining. */
  1324		}
  1325	
  1326		/*
  1327		 * A CPU running for an extended time within the kernel can
  1328		 * delay RCU grace periods: (1) At age jiffies_to_sched_qs,
  1329		 * set .rcu_urgent_qs, (2) At age 2*jiffies_to_sched_qs, set
  1330		 * both .rcu_need_heavy_qs and .rcu_urgent_qs.  Note that the
  1331		 * unsynchronized assignments to the per-CPU rcu_need_heavy_qs
  1332		 * variable are safe because the assignments are repeated if this
  1333		 * CPU failed to pass through a quiescent state.  This code
  1334		 * also checks .jiffies_resched in case jiffies_to_sched_qs
  1335		 * is set way high.
  1336		 */
  1337		jtsq = READ_ONCE(jiffies_to_sched_qs);
  1338		ruqp = per_cpu_ptr(&rcu_data.rcu_urgent_qs, rdp->cpu);
  1339		rnhqp = &per_cpu(rcu_data.rcu_need_heavy_qs, rdp->cpu);
  1340		if (!READ_ONCE(*rnhqp) &&
  1341		    (time_after(jiffies, rcu_state.gp_start + jtsq * 2) ||
  1342		     time_after(jiffies, rcu_state.jiffies_resched) ||
  1343		     rcu_state.cbovld)) {
  1344			WRITE_ONCE(*rnhqp, true);
  1345			/* Store rcu_need_heavy_qs before rcu_urgent_qs. */
  1346			smp_store_release(ruqp, true);
  1347		} else if (time_after(jiffies, rcu_state.gp_start + jtsq)) {
  1348			WRITE_ONCE(*ruqp, true);
  1349		}
  1350	
  1351		/*
  1352		 * NO_HZ_FULL CPUs can run in-kernel without rcu_sched_clock_irq!
  1353		 * The above code handles this, but only for straight cond_resched().
  1354		 * And some in-kernel loops check need_resched() before calling
  1355		 * cond_resched(), which defeats the above code for CPUs that are
  1356		 * running in-kernel with scheduling-clock interrupts disabled.
  1357		 * So hit them over the head with the resched_cpu() hammer!
  1358		 */
  1359		if (tick_nohz_full_cpu(rdp->cpu) &&
  1360		    (time_after(jiffies, READ_ONCE(rdp->last_fqs_resched) + jtsq * 3) ||
  1361		     rcu_state.cbovld)) {
  1362			WRITE_ONCE(*ruqp, true);
  1363			resched_cpu(rdp->cpu);
  1364			WRITE_ONCE(rdp->last_fqs_resched, jiffies);
  1365		}
  1366	
  1367		/*
  1368		 * If more than halfway to RCU CPU stall-warning time, invoke
  1369		 * resched_cpu() more frequently to try to loosen things up a bit.
  1370		 * Also check to see if the CPU is getting hammered with interrupts,
  1371		 * but only once per grace period, just to keep the IPIs down to
  1372		 * a dull roar.
  1373		 */
  1374		if (time_after(jiffies, rcu_state.jiffies_resched)) {
  1375			if (time_after(jiffies,
  1376				       READ_ONCE(rdp->last_fqs_resched) + jtsq)) {
  1377				resched_cpu(rdp->cpu);
  1378				WRITE_ONCE(rdp->last_fqs_resched, jiffies);
  1379			}
  1380			if (!rdp->rcu_iw_pending && rdp->rcu_iw_gp_seq != rnp->gp_seq &&
  1381			    (rnp->ffmask & rdp->grpmask)) {
  1382				rdp->rcu_iw_gp_seq = rnp->gp_seq;
  1383				if (likely(rdp->cpu != smp_processor_id())) {
  1384					rdp->rcu_iw_pending = true;
> 1385					irq_work_queue_remote(rdp->cpu, &rdp->rcu_iw);
  1386				}
  1387			}
  1388		}
  1389	
  1390		return 0;
  1391	}
  1392	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202104200948.dlmNjUMv-lkp%40intel.com.

--SLDf9lqlvOQaIe6s
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
/h9WMdFtriIBAA==

--SLDf9lqlvOQaIe6s--
