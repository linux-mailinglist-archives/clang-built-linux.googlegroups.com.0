Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBTOU5KCAMGQEDQHSCVY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x539.google.com (mail-pg1-x539.google.com [IPv6:2607:f8b0:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D12B37AB44
	for <lists+clang-built-linux@lfdr.de>; Tue, 11 May 2021 18:01:19 +0200 (CEST)
Received: by mail-pg1-x539.google.com with SMTP id w8-20020a6556c80000b02902072432fdabsf12599445pgs.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 11 May 2021 09:01:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620748878; cv=pass;
        d=google.com; s=arc-20160816;
        b=UhmpExoYvtvYgv4Bvjfz+2MkNvkDkCqV/MK08UyWSNOIw4QWG+29f61SiqJdKhT70e
         D20whOY5b/jkxNRPb3+M2ueCG/THHBt6fPPfI7kpyC5yl4FEOSAjZkfUe7Yc5EA4IEXE
         zyOwdHjdqdi/wsBpMjM52boxpYbZuUanZhy1AABUygHxGuyTXgeOFtLEtlA+V9Ix4PUS
         u7uaN5MeNnHR6Ic5PMy7qspJ2Db1OFW7jiBiBM2SXUoESVsM97xtGUEHeIJsx+yZmDwa
         5AiT/bJPJboLkgl4sH5BgOR3eutyuzOIDCABrDtjTy7jofGnhn9yr1SktPqLGzA2wUct
         JnUw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=i2iSsFksHajm2tTI3Vz+2yLXot+tu/cyzWLjN/wDPGk=;
        b=ZUJmMyCOyBkZ5HOOU/9tMk2BE4LuJsGc8aeUWMxAzJi5RSeXXxJfFt74nsu9fRNtlV
         QLM1723zs/a+EVYqm+G0o5bnC4zX+ON0QJ5848ivF7Wvm27IjCzyAra5i+4hDKXBAo3h
         x8xHYsxFY++LCY+V6rmrdZWRyIJ5fPtOwStAWLAVCzCi82JvFBK9KvMt63jtIIgGF6E3
         P85iTNEI8TzS3F/lLv52FVBUZDiNlWghN8NfDrMyeRpxJdZ9DHpr6AnkVxFx8Evsz2KU
         gL0RbcTvTWrA4jwKE87IOQ+3wuFT2C+Tm5WQjhWUHku1Bk5osDPo3QoU+Gy3D0lHMw4g
         D5LQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=i2iSsFksHajm2tTI3Vz+2yLXot+tu/cyzWLjN/wDPGk=;
        b=ULhf1PNmeifYPq95hf+zSRPPzsGMxD+3saBIfXJZs9XUkNM4j0MYNWFLuSh+C5kQwd
         2jQ9ds0aSQyWbmsuc1gspKRsLeCtkKEJ2KvESGl/njyTWVMUC4Vzlf6HDkUHWJQt+fKq
         6RZv7kaioYKjMOx0ZYIg0cpg19K7Debw9EKMMcPLVopHc2IB5i69as0+I90b9uenOzW6
         T3k/Hd92muyde+6y0BenDV1QK+ZBPNbQFRSxoAI2/XSDz/iJTC5uLdCslcE9kQOyZAxn
         zjBCIZpmm+C0MfxNjC+eYcGGpbPq5NQFYcKNXm3JRYLqqVb2rX2ZJEyN5dK5rKGFUaI0
         d4cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=i2iSsFksHajm2tTI3Vz+2yLXot+tu/cyzWLjN/wDPGk=;
        b=e0G3QaGqj6A0cIWHyM3bt7+z1xIcJ74x6nZGjcH80ZagUem9nH/mGAxmuIhGg5hKzk
         eCZwXzNaeLshIsZrz5bsQcWoEHKRjf5564UnIex/A6K20LMQ7sbocGOBWafHTEZfxTP6
         TkA5exnf7jJtpHfyvD+3lp64eiSMO7DcxYF0HYOCCWw9oA+q5pOUIPhqqrvzjoASzaCl
         W71mETfcLyp/F1EIURn50SGtl/BOBN6tT+SoB+43FwI+Hmx5T8Uw4fFaC0LWK/jgp2Is
         /VQZNBb8h8ORNtNYxCs3kV2ohM5K6GCUpqOs014sOQC6w6xdFC2v3EC75AbL7FubiALt
         PR/g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533zzwLnccDH84MpmWKlyGTQBXVzpnM3O0a0ia/hmQdEPVbujuqf
	/9B26F1ZP2iObEHc2VEnWMU=
X-Google-Smtp-Source: ABdhPJyLG4j37RkKrHXUCdgI18uVnK1gl/LnW/LyWGYmLyxdiKFfOnYfs8tIVw65Mev+zo03xwJ7kw==
X-Received: by 2002:a65:6849:: with SMTP id q9mr10151456pgt.377.1620748877996;
        Tue, 11 May 2021 09:01:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:f87:: with SMTP id ft7ls2017210pjb.2.canary-gmail;
 Tue, 11 May 2021 09:01:17 -0700 (PDT)
X-Received: by 2002:a17:90b:612:: with SMTP id gb18mr33832741pjb.78.1620748877154;
        Tue, 11 May 2021 09:01:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620748877; cv=none;
        d=google.com; s=arc-20160816;
        b=Be7V6ebAmoRIeGlQiv3r1tb8orRb67fPONz7v+srS5GIT1q70STT/aFYxYnjKpHJqJ
         ax6N1LppWZiLP6lMkMyUsna0M1+97DEG/GHPgfPbxCg+E/qew4vyRjQdJTolakeB+yUS
         7I1m0RCaIJPZTo/yzQHEYXLopBce6Z4Ssu3IpgZwlvrzccSgJ+mw3vFJK3zTUKov6i1H
         iRNJlHU/X70bJw+ymL6twVtMi1vUUURhDgjlpu9AWH8fF0vP759cAPqD6zjFRltz6TpF
         4WHe6HIN23Mu5y6C7kvt3lje9KW4QRk0kX57hYRwjMf45dqPlSFkHGBx/4Tr15wMl7Sx
         zpBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=0AMczuslJANdJoxMuZDW6NBlpD2miTThrGrXVrsaepk=;
        b=XUPqlE3dCcwcuczL4XCPdDPixArBpd8xNp26G6uwTV5CrsxVWMYCVrHc2XXZaRZrwX
         nulJ+/Tjzcx02XHcQZZUhKriW+pJiRvcS9XE4xd020LH1Xc5uSWsRTWiDc3OXib8+veK
         RaAoPInxFvQyl4Rc7KkZk5jsFonOkAtMadkMWIoADY3eyt78jXVqEmASUj6sa+Jz05Yy
         RnftaiLrxPHzswFnTOpImasCeYt6+wQQP0tctyYt4RB0RGUyEKc0Y13/R+njwVHF8tQ5
         3j0/ziMbcC8teMfLknyauYcyBbcKj7ZU2w2XdCEXFzdjFNAYvbnVfDVNXFtxaIdvW+T1
         /FLQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga03.intel.com (mga03.intel.com. [134.134.136.65])
        by gmr-mx.google.com with ESMTPS id c16si276840pjo.1.2021.05.11.09.01.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 11 May 2021 09:01:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) client-ip=134.134.136.65;
IronPort-SDR: SX0OEkSIzoIB6aKZ8+bBP8+7fHENjpir5prKJaKVBcpAfbSnZJcgm+r8YskMV0DLuq3k8eKzqT
 JHBwCncM7R2w==
X-IronPort-AV: E=McAfee;i="6200,9189,9981"; a="199530999"
X-IronPort-AV: E=Sophos;i="5.82,291,1613462400"; 
   d="gz'50?scan'50,208,50";a="199530999"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 May 2021 09:00:47 -0700
IronPort-SDR: /WryTFRxvsSqP8mn8ubXTEfbcva6ovIc6LGCZ94WBKhGLjtoXRsFijbFpvh1zVoHyqr1asT4Kf
 ctuLlUZLyL+Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,291,1613462400"; 
   d="gz'50?scan'50,208,50";a="391457687"
Received: from lkp-server01.sh.intel.com (HELO f375d57c4ed4) ([10.239.97.150])
  by orsmga003.jf.intel.com with ESMTP; 11 May 2021 09:00:43 -0700
Received: from kbuild by f375d57c4ed4 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lgUoN-0000mZ-6l; Tue, 11 May 2021 16:00:43 +0000
Date: Wed, 12 May 2021 00:00:17 +0800
From: kernel test robot <lkp@intel.com>
To: Vincent Guittot <vincent.guittot@linaro.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org, Ingo Molnar <mingo@kernel.org>,
	"Peter Zijlstra (Intel)" <peterz@infradead.org>,
	Valentin Schneider <valentin.schneider@arm.com>
Subject: kernel/sched/fair.c:9551:12: warning: stack frame size of 1376 bytes
 in function 'load_balance'
Message-ID: <202105112356.JuDlybKz-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="M9NhX3UHpAaciwkO"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
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


--M9NhX3UHpAaciwkO
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   1140ab592e2ebf8153d2b322604031a8868ce7a5
commit: 0826530de3cbdc89e60a89e86def94a5f0fc81ca sched/fair: Remove update of blocked load from newidle_balance
date:   9 weeks ago
config: mips-randconfig-r022-20210511 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project a0fed635fe1701470062495a6ffee1c608f3f1bc)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install mips cross compiling tool for clang build
        # apt-get install binutils-mips-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=0826530de3cbdc89e60a89e86def94a5f0fc81ca
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout 0826530de3cbdc89e60a89e86def94a5f0fc81ca
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 ARCH=mips 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   kernel/sched/fair.c:5381:6: warning: no previous prototype for function 'init_cfs_bandwidth' [-Wmissing-prototypes]
   void init_cfs_bandwidth(struct cfs_bandwidth *cfs_b) {}
        ^
   kernel/sched/fair.c:5381:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void init_cfs_bandwidth(struct cfs_bandwidth *cfs_b) {}
   ^
   static 
   kernel/sched/fair.c:11166:6: warning: no previous prototype for function 'free_fair_sched_group' [-Wmissing-prototypes]
   void free_fair_sched_group(struct task_group *tg) { }
        ^
   kernel/sched/fair.c:11166:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void free_fair_sched_group(struct task_group *tg) { }
   ^
   static 
   kernel/sched/fair.c:11168:5: warning: no previous prototype for function 'alloc_fair_sched_group' [-Wmissing-prototypes]
   int alloc_fair_sched_group(struct task_group *tg, struct task_group *parent)
       ^
   kernel/sched/fair.c:11168:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   int alloc_fair_sched_group(struct task_group *tg, struct task_group *parent)
   ^
   static 
   kernel/sched/fair.c:11173:6: warning: no previous prototype for function 'online_fair_sched_group' [-Wmissing-prototypes]
   void online_fair_sched_group(struct task_group *tg) { }
        ^
   kernel/sched/fair.c:11173:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void online_fair_sched_group(struct task_group *tg) { }
   ^
   static 
   kernel/sched/fair.c:11175:6: warning: no previous prototype for function 'unregister_fair_sched_group' [-Wmissing-prototypes]
   void unregister_fair_sched_group(struct task_group *tg) { }
        ^
   kernel/sched/fair.c:11175:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void unregister_fair_sched_group(struct task_group *tg) { }
   ^
   static 
   kernel/sched/fair.c:486:20: warning: unused function 'list_del_leaf_cfs_rq' [-Wunused-function]
   static inline void list_del_leaf_cfs_rq(struct cfs_rq *cfs_rq)
                      ^
   kernel/sched/fair.c:5362:20: warning: unused function 'sync_throttle' [-Wunused-function]
   static inline void sync_throttle(struct task_group *tg, int cpu) {}
                      ^
   kernel/sched/fair.c:5387:37: warning: unused function 'tg_cfs_bandwidth' [-Wunused-function]
   static inline struct cfs_bandwidth *tg_cfs_bandwidth(struct task_group *tg)
                                       ^
   kernel/sched/fair.c:5391:20: warning: unused function 'destroy_cfs_bandwidth' [-Wunused-function]
   static inline void destroy_cfs_bandwidth(struct cfs_bandwidth *cfs_b) {}
                      ^
>> kernel/sched/fair.c:9551:12: warning: stack frame size of 1376 bytes in function 'load_balance' [-Wframe-larger-than=]
   static int load_balance(int this_cpu, struct rq *this_rq,
              ^
   10 warnings generated.


vim +/load_balance +9551 kernel/sched/fair.c

23f0d2093c789e kernel/sched/fair.c Joonsoo Kim               2013-08-06  9546  
1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9547  /*
1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9548   * Check this_cpu to ensure it is balanced within domain. Attempt to move
1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9549   * tasks if there is an imbalance.
1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9550   */
1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17 @9551  static int load_balance(int this_cpu, struct rq *this_rq,
1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9552  			struct sched_domain *sd, enum cpu_idle_type idle,
23f0d2093c789e kernel/sched/fair.c Joonsoo Kim               2013-08-06  9553  			int *continue_balancing)
1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9554  {
88b8dac0a14c51 kernel/sched/fair.c Srivatsa Vaddagiri        2012-06-19  9555  	int ld_moved, cur_ld_moved, active_balance = 0;
6263322c5e8ffd kernel/sched/fair.c Peter Zijlstra            2013-08-19  9556  	struct sched_domain *sd_parent = sd->parent;
1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9557  	struct sched_group *group;
1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9558  	struct rq *busiest;
8a8c69c3277886 kernel/sched/fair.c Peter Zijlstra            2016-10-04  9559  	struct rq_flags rf;
4ba2968420fa9d kernel/sched/fair.c Christoph Lameter         2014-08-26  9560  	struct cpumask *cpus = this_cpu_cpumask_var_ptr(load_balance_mask);
1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9561  
8e45cb545d98bc kernel/sched/fair.c Peter Zijlstra            2012-02-22  9562  	struct lb_env env = {
8e45cb545d98bc kernel/sched/fair.c Peter Zijlstra            2012-02-22  9563  		.sd		= sd,
ddcdf6e7d9919d kernel/sched/fair.c Peter Zijlstra            2012-02-22  9564  		.dst_cpu	= this_cpu,
ddcdf6e7d9919d kernel/sched/fair.c Peter Zijlstra            2012-02-22  9565  		.dst_rq		= this_rq,
ae4df9d6c93510 kernel/sched/fair.c Peter Zijlstra            2017-05-01  9566  		.dst_grpmask    = sched_group_span(sd->groups),
8e45cb545d98bc kernel/sched/fair.c Peter Zijlstra            2012-02-22  9567  		.idle		= idle,
eb95308ee2a694 kernel/sched/fair.c Peter Zijlstra            2012-04-17  9568  		.loop_break	= sched_nr_migrate_break,
b9403130a5350f kernel/sched/fair.c Michael Wang              2012-07-12  9569  		.cpus		= cpus,
0ec8aa00f2b4dc kernel/sched/fair.c Peter Zijlstra            2013-10-07  9570  		.fbq_type	= all,
163122b7fcfa28 kernel/sched/fair.c Kirill Tkhai              2014-08-20  9571  		.tasks		= LIST_HEAD_INIT(env.tasks),
8e45cb545d98bc kernel/sched/fair.c Peter Zijlstra            2012-02-22  9572  	};
8e45cb545d98bc kernel/sched/fair.c Peter Zijlstra            2012-02-22  9573  
65a4433aebe36c kernel/sched/fair.c Jeffrey Hugo              2017-06-07  9574  	cpumask_and(cpus, sched_domain_span(sd), cpu_active_mask);
1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9575  
ae92882e5646d8 kernel/sched/fair.c Josh Poimboeuf            2016-06-17  9576  	schedstat_inc(sd->lb_count[idle]);
1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9577  
1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9578  redo:
23f0d2093c789e kernel/sched/fair.c Joonsoo Kim               2013-08-06  9579  	if (!should_we_balance(&env)) {
23f0d2093c789e kernel/sched/fair.c Joonsoo Kim               2013-08-06  9580  		*continue_balancing = 0;
1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9581  		goto out_balanced;
23f0d2093c789e kernel/sched/fair.c Joonsoo Kim               2013-08-06  9582  	}
1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9583  
23f0d2093c789e kernel/sched/fair.c Joonsoo Kim               2013-08-06  9584  	group = find_busiest_group(&env);
1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9585  	if (!group) {
ae92882e5646d8 kernel/sched/fair.c Josh Poimboeuf            2016-06-17  9586  		schedstat_inc(sd->lb_nobusyg[idle]);
1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9587  		goto out_balanced;
1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9588  	}
1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9589  
b9403130a5350f kernel/sched/fair.c Michael Wang              2012-07-12  9590  	busiest = find_busiest_queue(&env, group);
1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9591  	if (!busiest) {
ae92882e5646d8 kernel/sched/fair.c Josh Poimboeuf            2016-06-17  9592  		schedstat_inc(sd->lb_nobusyq[idle]);
1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9593  		goto out_balanced;
1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9594  	}
1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9595  
78feefc512a091 kernel/sched/fair.c Michael Wang              2012-08-06  9596  	BUG_ON(busiest == env.dst_rq);
1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9597  
ae92882e5646d8 kernel/sched/fair.c Josh Poimboeuf            2016-06-17  9598  	schedstat_add(sd->lb_imbalance[idle], env.imbalance);
1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9599  
1aaf90a4b88aae kernel/sched/fair.c Vincent Guittot           2015-02-27  9600  	env.src_cpu = busiest->cpu;
1aaf90a4b88aae kernel/sched/fair.c Vincent Guittot           2015-02-27  9601  	env.src_rq = busiest;
1aaf90a4b88aae kernel/sched/fair.c Vincent Guittot           2015-02-27  9602  
1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9603  	ld_moved = 0;
8a41dfcda7a32e kernel/sched/fair.c Vincent Guittot           2021-01-07  9604  	/* Clear this flag as soon as we find a pullable task */
8a41dfcda7a32e kernel/sched/fair.c Vincent Guittot           2021-01-07  9605  	env.flags |= LBF_ALL_PINNED;
1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9606  	if (busiest->nr_running > 1) {
1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9607  		/*
1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9608  		 * Attempt to move tasks. If find_busiest_group has found
1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9609  		 * an imbalance but busiest->nr_running <= 1, the group is
1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9610  		 * still unbalanced. ld_moved simply stays zero, so it is
1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9611  		 * correctly treated as an imbalance.
1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9612  		 */
c82513e513556a kernel/sched/fair.c Peter Zijlstra            2012-04-26  9613  		env.loop_max  = min(sysctl_sched_nr_migrate, busiest->nr_running);
8e45cb545d98bc kernel/sched/fair.c Peter Zijlstra            2012-02-22  9614  
5d6523ebd2f67d kernel/sched/fair.c Peter Zijlstra            2012-03-10  9615  more_balance:
8a8c69c3277886 kernel/sched/fair.c Peter Zijlstra            2016-10-04  9616  		rq_lock_irqsave(busiest, &rf);
3bed5e2166a5e4 kernel/sched/fair.c Peter Zijlstra            2016-10-03  9617  		update_rq_clock(busiest);
88b8dac0a14c51 kernel/sched/fair.c Srivatsa Vaddagiri        2012-06-19  9618  
88b8dac0a14c51 kernel/sched/fair.c Srivatsa Vaddagiri        2012-06-19  9619  		/*
88b8dac0a14c51 kernel/sched/fair.c Srivatsa Vaddagiri        2012-06-19  9620  		 * cur_ld_moved - load moved in current iteration
88b8dac0a14c51 kernel/sched/fair.c Srivatsa Vaddagiri        2012-06-19  9621  		 * ld_moved     - cumulative load moved across iterations
88b8dac0a14c51 kernel/sched/fair.c Srivatsa Vaddagiri        2012-06-19  9622  		 */
163122b7fcfa28 kernel/sched/fair.c Kirill Tkhai              2014-08-20  9623  		cur_ld_moved = detach_tasks(&env);
1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9624  
1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9625  		/*
163122b7fcfa28 kernel/sched/fair.c Kirill Tkhai              2014-08-20  9626  		 * We've detached some tasks from busiest_rq. Every
163122b7fcfa28 kernel/sched/fair.c Kirill Tkhai              2014-08-20  9627  		 * task is masked "TASK_ON_RQ_MIGRATING", so we can safely
163122b7fcfa28 kernel/sched/fair.c Kirill Tkhai              2014-08-20  9628  		 * unlock busiest->lock, and we are able to be sure
163122b7fcfa28 kernel/sched/fair.c Kirill Tkhai              2014-08-20  9629  		 * that nobody can manipulate the tasks in parallel.
163122b7fcfa28 kernel/sched/fair.c Kirill Tkhai              2014-08-20  9630  		 * See task_rq_lock() family for the details.
1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9631  		 */
163122b7fcfa28 kernel/sched/fair.c Kirill Tkhai              2014-08-20  9632  
8a8c69c3277886 kernel/sched/fair.c Peter Zijlstra            2016-10-04  9633  		rq_unlock(busiest, &rf);
163122b7fcfa28 kernel/sched/fair.c Kirill Tkhai              2014-08-20  9634  
163122b7fcfa28 kernel/sched/fair.c Kirill Tkhai              2014-08-20  9635  		if (cur_ld_moved) {
163122b7fcfa28 kernel/sched/fair.c Kirill Tkhai              2014-08-20  9636  			attach_tasks(&env);
88b8dac0a14c51 kernel/sched/fair.c Srivatsa Vaddagiri        2012-06-19  9637  			ld_moved += cur_ld_moved;
163122b7fcfa28 kernel/sched/fair.c Kirill Tkhai              2014-08-20  9638  		}
163122b7fcfa28 kernel/sched/fair.c Kirill Tkhai              2014-08-20  9639  
8a8c69c3277886 kernel/sched/fair.c Peter Zijlstra            2016-10-04  9640  		local_irq_restore(rf.flags);
88b8dac0a14c51 kernel/sched/fair.c Srivatsa Vaddagiri        2012-06-19  9641  
f1cd0858100c67 kernel/sched/fair.c Joonsoo Kim               2013-04-23  9642  		if (env.flags & LBF_NEED_BREAK) {
f1cd0858100c67 kernel/sched/fair.c Joonsoo Kim               2013-04-23  9643  			env.flags &= ~LBF_NEED_BREAK;
f1cd0858100c67 kernel/sched/fair.c Joonsoo Kim               2013-04-23  9644  			goto more_balance;
f1cd0858100c67 kernel/sched/fair.c Joonsoo Kim               2013-04-23  9645  		}
f1cd0858100c67 kernel/sched/fair.c Joonsoo Kim               2013-04-23  9646  
88b8dac0a14c51 kernel/sched/fair.c Srivatsa Vaddagiri        2012-06-19  9647  		/*
88b8dac0a14c51 kernel/sched/fair.c Srivatsa Vaddagiri        2012-06-19  9648  		 * Revisit (affine) tasks on src_cpu that couldn't be moved to
88b8dac0a14c51 kernel/sched/fair.c Srivatsa Vaddagiri        2012-06-19  9649  		 * us and move them to an alternate dst_cpu in our sched_group
88b8dac0a14c51 kernel/sched/fair.c Srivatsa Vaddagiri        2012-06-19  9650  		 * where they can run. The upper limit on how many times we
97fb7a0a8944bd kernel/sched/fair.c Ingo Molnar               2018-03-03  9651  		 * iterate on same src_cpu is dependent on number of CPUs in our
88b8dac0a14c51 kernel/sched/fair.c Srivatsa Vaddagiri        2012-06-19  9652  		 * sched_group.
88b8dac0a14c51 kernel/sched/fair.c Srivatsa Vaddagiri        2012-06-19  9653  		 *
88b8dac0a14c51 kernel/sched/fair.c Srivatsa Vaddagiri        2012-06-19  9654  		 * This changes load balance semantics a bit on who can move
88b8dac0a14c51 kernel/sched/fair.c Srivatsa Vaddagiri        2012-06-19  9655  		 * load to a given_cpu. In addition to the given_cpu itself
88b8dac0a14c51 kernel/sched/fair.c Srivatsa Vaddagiri        2012-06-19  9656  		 * (or a ilb_cpu acting on its behalf where given_cpu is
88b8dac0a14c51 kernel/sched/fair.c Srivatsa Vaddagiri        2012-06-19  9657  		 * nohz-idle), we now have balance_cpu in a position to move
88b8dac0a14c51 kernel/sched/fair.c Srivatsa Vaddagiri        2012-06-19  9658  		 * load to given_cpu. In rare situations, this may cause
88b8dac0a14c51 kernel/sched/fair.c Srivatsa Vaddagiri        2012-06-19  9659  		 * conflicts (balance_cpu and given_cpu/ilb_cpu deciding
88b8dac0a14c51 kernel/sched/fair.c Srivatsa Vaddagiri        2012-06-19  9660  		 * _independently_ and at _same_ time to move some load to
88b8dac0a14c51 kernel/sched/fair.c Srivatsa Vaddagiri        2012-06-19  9661  		 * given_cpu) causing exceess load to be moved to given_cpu.
88b8dac0a14c51 kernel/sched/fair.c Srivatsa Vaddagiri        2012-06-19  9662  		 * This however should not happen so much in practice and
88b8dac0a14c51 kernel/sched/fair.c Srivatsa Vaddagiri        2012-06-19  9663  		 * moreover subsequent load balance cycles should correct the
88b8dac0a14c51 kernel/sched/fair.c Srivatsa Vaddagiri        2012-06-19  9664  		 * excess load moved.
88b8dac0a14c51 kernel/sched/fair.c Srivatsa Vaddagiri        2012-06-19  9665  		 */
6263322c5e8ffd kernel/sched/fair.c Peter Zijlstra            2013-08-19  9666  		if ((env.flags & LBF_DST_PINNED) && env.imbalance > 0) {
88b8dac0a14c51 kernel/sched/fair.c Srivatsa Vaddagiri        2012-06-19  9667  
97fb7a0a8944bd kernel/sched/fair.c Ingo Molnar               2018-03-03  9668  			/* Prevent to re-select dst_cpu via env's CPUs */
c89d92eddfad11 kernel/sched/fair.c Viresh Kumar              2019-02-12  9669  			__cpumask_clear_cpu(env.dst_cpu, env.cpus);
7aff2e3a56b724 kernel/sched/fair.c Vladimir Davydov          2013-09-15  9670  
78feefc512a091 kernel/sched/fair.c Michael Wang              2012-08-06  9671  			env.dst_rq	 = cpu_rq(env.new_dst_cpu);
88b8dac0a14c51 kernel/sched/fair.c Srivatsa Vaddagiri        2012-06-19  9672  			env.dst_cpu	 = env.new_dst_cpu;
6263322c5e8ffd kernel/sched/fair.c Peter Zijlstra            2013-08-19  9673  			env.flags	&= ~LBF_DST_PINNED;
88b8dac0a14c51 kernel/sched/fair.c Srivatsa Vaddagiri        2012-06-19  9674  			env.loop	 = 0;
88b8dac0a14c51 kernel/sched/fair.c Srivatsa Vaddagiri        2012-06-19  9675  			env.loop_break	 = sched_nr_migrate_break;
e02e60c109ca70 kernel/sched/fair.c Joonsoo Kim               2013-04-23  9676  
88b8dac0a14c51 kernel/sched/fair.c Srivatsa Vaddagiri        2012-06-19  9677  			/*
88b8dac0a14c51 kernel/sched/fair.c Srivatsa Vaddagiri        2012-06-19  9678  			 * Go back to "more_balance" rather than "redo" since we
88b8dac0a14c51 kernel/sched/fair.c Srivatsa Vaddagiri        2012-06-19  9679  			 * need to continue with same src_cpu.
88b8dac0a14c51 kernel/sched/fair.c Srivatsa Vaddagiri        2012-06-19  9680  			 */
88b8dac0a14c51 kernel/sched/fair.c Srivatsa Vaddagiri        2012-06-19  9681  			goto more_balance;
88b8dac0a14c51 kernel/sched/fair.c Srivatsa Vaddagiri        2012-06-19  9682  		}
1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9683  
6263322c5e8ffd kernel/sched/fair.c Peter Zijlstra            2013-08-19  9684  		/*
6263322c5e8ffd kernel/sched/fair.c Peter Zijlstra            2013-08-19  9685  		 * We failed to reach balance because of affinity.
6263322c5e8ffd kernel/sched/fair.c Peter Zijlstra            2013-08-19  9686  		 */
6263322c5e8ffd kernel/sched/fair.c Peter Zijlstra            2013-08-19  9687  		if (sd_parent) {
63b2ca30bdb3db kernel/sched/fair.c Nicolas Pitre             2014-05-26  9688  			int *group_imbalance = &sd_parent->groups->sgc->imbalance;
6263322c5e8ffd kernel/sched/fair.c Peter Zijlstra            2013-08-19  9689  
afdeee0510db91 kernel/sched/fair.c Vincent Guittot           2014-08-26  9690  			if ((env.flags & LBF_SOME_PINNED) && env.imbalance > 0)
6263322c5e8ffd kernel/sched/fair.c Peter Zijlstra            2013-08-19  9691  				*group_imbalance = 1;
6263322c5e8ffd kernel/sched/fair.c Peter Zijlstra            2013-08-19  9692  		}
6263322c5e8ffd kernel/sched/fair.c Peter Zijlstra            2013-08-19  9693  
1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9694  		/* All tasks on this runqueue were pinned by CPU affinity */
8e45cb545d98bc kernel/sched/fair.c Peter Zijlstra            2012-02-22  9695  		if (unlikely(env.flags & LBF_ALL_PINNED)) {
c89d92eddfad11 kernel/sched/fair.c Viresh Kumar              2019-02-12  9696  			__cpumask_clear_cpu(cpu_of(busiest), cpus);
65a4433aebe36c kernel/sched/fair.c Jeffrey Hugo              2017-06-07  9697  			/*
65a4433aebe36c kernel/sched/fair.c Jeffrey Hugo              2017-06-07  9698  			 * Attempting to continue load balancing at the current
65a4433aebe36c kernel/sched/fair.c Jeffrey Hugo              2017-06-07  9699  			 * sched_domain level only makes sense if there are
65a4433aebe36c kernel/sched/fair.c Jeffrey Hugo              2017-06-07  9700  			 * active CPUs remaining as possible busiest CPUs to
65a4433aebe36c kernel/sched/fair.c Jeffrey Hugo              2017-06-07  9701  			 * pull load from which are not contained within the
65a4433aebe36c kernel/sched/fair.c Jeffrey Hugo              2017-06-07  9702  			 * destination group that is receiving any migrated
65a4433aebe36c kernel/sched/fair.c Jeffrey Hugo              2017-06-07  9703  			 * load.
65a4433aebe36c kernel/sched/fair.c Jeffrey Hugo              2017-06-07  9704  			 */
65a4433aebe36c kernel/sched/fair.c Jeffrey Hugo              2017-06-07  9705  			if (!cpumask_subset(cpus, env.dst_grpmask)) {
bbf18b19495942 kernel/sched/fair.c Prashanth Nageshappa      2012-06-19  9706  				env.loop = 0;
bbf18b19495942 kernel/sched/fair.c Prashanth Nageshappa      2012-06-19  9707  				env.loop_break = sched_nr_migrate_break;
1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9708  				goto redo;
bbf18b19495942 kernel/sched/fair.c Prashanth Nageshappa      2012-06-19  9709  			}
afdeee0510db91 kernel/sched/fair.c Vincent Guittot           2014-08-26  9710  			goto out_all_pinned;
1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9711  		}
1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9712  	}
1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9713  
1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9714  	if (!ld_moved) {
ae92882e5646d8 kernel/sched/fair.c Josh Poimboeuf            2016-06-17  9715  		schedstat_inc(sd->lb_failed[idle]);
58b26c4c025778 kernel/sched_fair.c Venkatesh Pallipadi       2010-09-10  9716  		/*
58b26c4c025778 kernel/sched_fair.c Venkatesh Pallipadi       2010-09-10  9717  		 * Increment the failure counter only on periodic balance.
58b26c4c025778 kernel/sched_fair.c Venkatesh Pallipadi       2010-09-10  9718  		 * We do not want newidle balance, which can be very
58b26c4c025778 kernel/sched_fair.c Venkatesh Pallipadi       2010-09-10  9719  		 * frequent, pollute the failure counter causing
58b26c4c025778 kernel/sched_fair.c Venkatesh Pallipadi       2010-09-10  9720  		 * excessive cache_hot migrations and active balances.
58b26c4c025778 kernel/sched_fair.c Venkatesh Pallipadi       2010-09-10  9721  		 */
58b26c4c025778 kernel/sched_fair.c Venkatesh Pallipadi       2010-09-10  9722  		if (idle != CPU_NEWLY_IDLE)
1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9723  			sd->nr_balance_failed++;
1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9724  
bd939f45da24e2 kernel/sched/fair.c Peter Zijlstra            2012-05-02  9725  		if (need_active_balance(&env)) {
8a8c69c3277886 kernel/sched/fair.c Peter Zijlstra            2016-10-04  9726  			unsigned long flags;
8a8c69c3277886 kernel/sched/fair.c Peter Zijlstra            2016-10-04  9727  
1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9728  			raw_spin_lock_irqsave(&busiest->lock, flags);
1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9729  
97fb7a0a8944bd kernel/sched/fair.c Ingo Molnar               2018-03-03  9730  			/*
97fb7a0a8944bd kernel/sched/fair.c Ingo Molnar               2018-03-03  9731  			 * Don't kick the active_load_balance_cpu_stop,
97fb7a0a8944bd kernel/sched/fair.c Ingo Molnar               2018-03-03  9732  			 * if the curr task on busiest CPU can't be
97fb7a0a8944bd kernel/sched/fair.c Ingo Molnar               2018-03-03  9733  			 * moved to this_cpu:
1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9734  			 */
3bd3706251ee8a kernel/sched/fair.c Sebastian Andrzej Siewior 2019-04-23  9735  			if (!cpumask_test_cpu(this_cpu, busiest->curr->cpus_ptr)) {
1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9736  				raw_spin_unlock_irqrestore(&busiest->lock,
1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9737  							    flags);
1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9738  				goto out_one_pinned;
1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9739  			}
1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9740  
8a41dfcda7a32e kernel/sched/fair.c Vincent Guittot           2021-01-07  9741  			/* Record that we found at least one task that could run on this_cpu */
8a41dfcda7a32e kernel/sched/fair.c Vincent Guittot           2021-01-07  9742  			env.flags &= ~LBF_ALL_PINNED;
8a41dfcda7a32e kernel/sched/fair.c Vincent Guittot           2021-01-07  9743  
969c79215a35b0 kernel/sched_fair.c Tejun Heo                 2010-05-06  9744  			/*
969c79215a35b0 kernel/sched_fair.c Tejun Heo                 2010-05-06  9745  			 * ->active_balance synchronizes accesses to
969c79215a35b0 kernel/sched_fair.c Tejun Heo                 2010-05-06  9746  			 * ->active_balance_work.  Once set, it's cleared
969c79215a35b0 kernel/sched_fair.c Tejun Heo                 2010-05-06  9747  			 * only after active load balance is finished.
969c79215a35b0 kernel/sched_fair.c Tejun Heo                 2010-05-06  9748  			 */
1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9749  			if (!busiest->active_balance) {
1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9750  				busiest->active_balance = 1;
1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9751  				busiest->push_cpu = this_cpu;
1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9752  				active_balance = 1;
1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9753  			}
1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9754  			raw_spin_unlock_irqrestore(&busiest->lock, flags);
969c79215a35b0 kernel/sched_fair.c Tejun Heo                 2010-05-06  9755  
bd939f45da24e2 kernel/sched/fair.c Peter Zijlstra            2012-05-02  9756  			if (active_balance) {
969c79215a35b0 kernel/sched_fair.c Tejun Heo                 2010-05-06  9757  				stop_one_cpu_nowait(cpu_of(busiest),
969c79215a35b0 kernel/sched_fair.c Tejun Heo                 2010-05-06  9758  					active_load_balance_cpu_stop, busiest,
969c79215a35b0 kernel/sched_fair.c Tejun Heo                 2010-05-06  9759  					&busiest->active_balance_work);
bd939f45da24e2 kernel/sched/fair.c Peter Zijlstra            2012-05-02  9760  			}
1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9761  
d02c071183e1c0 kernel/sched/fair.c Srikar Dronamraju         2016-03-23  9762  			/* We've kicked active balancing, force task migration. */
1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9763  			sd->nr_balance_failed = sd->cache_nice_tries+1;
1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9764  		}
e9b9734b74656a kernel/sched/fair.c Vincent Guittot           2021-01-07  9765  	} else {
1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9766  		sd->nr_balance_failed = 0;
e9b9734b74656a kernel/sched/fair.c Vincent Guittot           2021-01-07  9767  	}
1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9768  
e9b9734b74656a kernel/sched/fair.c Vincent Guittot           2021-01-07  9769  	if (likely(!active_balance) || need_active_balance(&env)) {
1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9770  		/* We were unbalanced, so reset the balancing interval */
1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9771  		sd->balance_interval = sd->min_interval;
1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9772  	}
1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9773  
1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9774  	goto out;
1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9775  
1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9776  out_balanced:
afdeee0510db91 kernel/sched/fair.c Vincent Guittot           2014-08-26  9777  	/*
afdeee0510db91 kernel/sched/fair.c Vincent Guittot           2014-08-26  9778  	 * We reach balance although we may have faced some affinity
f6cad8df6b30a5 kernel/sched/fair.c Vincent Guittot           2019-07-01  9779  	 * constraints. Clear the imbalance flag only if other tasks got
f6cad8df6b30a5 kernel/sched/fair.c Vincent Guittot           2019-07-01  9780  	 * a chance to move and fix the imbalance.
afdeee0510db91 kernel/sched/fair.c Vincent Guittot           2014-08-26  9781  	 */
f6cad8df6b30a5 kernel/sched/fair.c Vincent Guittot           2019-07-01  9782  	if (sd_parent && !(env.flags & LBF_ALL_PINNED)) {
afdeee0510db91 kernel/sched/fair.c Vincent Guittot           2014-08-26  9783  		int *group_imbalance = &sd_parent->groups->sgc->imbalance;
afdeee0510db91 kernel/sched/fair.c Vincent Guittot           2014-08-26  9784  
afdeee0510db91 kernel/sched/fair.c Vincent Guittot           2014-08-26  9785  		if (*group_imbalance)
afdeee0510db91 kernel/sched/fair.c Vincent Guittot           2014-08-26  9786  			*group_imbalance = 0;
afdeee0510db91 kernel/sched/fair.c Vincent Guittot           2014-08-26  9787  	}
afdeee0510db91 kernel/sched/fair.c Vincent Guittot           2014-08-26  9788  
afdeee0510db91 kernel/sched/fair.c Vincent Guittot           2014-08-26  9789  out_all_pinned:
afdeee0510db91 kernel/sched/fair.c Vincent Guittot           2014-08-26  9790  	/*
afdeee0510db91 kernel/sched/fair.c Vincent Guittot           2014-08-26  9791  	 * We reach balance because all tasks are pinned at this level so
afdeee0510db91 kernel/sched/fair.c Vincent Guittot           2014-08-26  9792  	 * we can't migrate them. Let the imbalance flag set so parent level
afdeee0510db91 kernel/sched/fair.c Vincent Guittot           2014-08-26  9793  	 * can try to migrate them.
afdeee0510db91 kernel/sched/fair.c Vincent Guittot           2014-08-26  9794  	 */
ae92882e5646d8 kernel/sched/fair.c Josh Poimboeuf            2016-06-17  9795  	schedstat_inc(sd->lb_balanced[idle]);
1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9796  
1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9797  	sd->nr_balance_failed = 0;
1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9798  
1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9799  out_one_pinned:
3f130a37c442d5 kernel/sched/fair.c Valentin Schneider        2018-09-26  9800  	ld_moved = 0;
3f130a37c442d5 kernel/sched/fair.c Valentin Schneider        2018-09-26  9801  
3f130a37c442d5 kernel/sched/fair.c Valentin Schneider        2018-09-26  9802  	/*
5ba553eff0c3a7 kernel/sched/fair.c Peter Zijlstra            2019-05-29  9803  	 * newidle_balance() disregards balance intervals, so we could
5ba553eff0c3a7 kernel/sched/fair.c Peter Zijlstra            2019-05-29  9804  	 * repeatedly reach this code, which would lead to balance_interval
5ba553eff0c3a7 kernel/sched/fair.c Peter Zijlstra            2019-05-29  9805  	 * skyrocketting in a short amount of time. Skip the balance_interval
5ba553eff0c3a7 kernel/sched/fair.c Peter Zijlstra            2019-05-29  9806  	 * increase logic to avoid that.
3f130a37c442d5 kernel/sched/fair.c Valentin Schneider        2018-09-26  9807  	 */
3f130a37c442d5 kernel/sched/fair.c Valentin Schneider        2018-09-26  9808  	if (env.idle == CPU_NEWLY_IDLE)
3f130a37c442d5 kernel/sched/fair.c Valentin Schneider        2018-09-26  9809  		goto out;
3f130a37c442d5 kernel/sched/fair.c Valentin Schneider        2018-09-26  9810  
1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9811  	/* tune up the balancing interval */
47b7aee14fd7e4 kernel/sched/fair.c Valentin Schneider        2018-09-26  9812  	if ((env.flags & LBF_ALL_PINNED &&
5b54b56be5b540 kernel/sched/fair.c Peter Zijlstra            2011-09-22  9813  	     sd->balance_interval < MAX_PINNED_INTERVAL) ||
47b7aee14fd7e4 kernel/sched/fair.c Valentin Schneider        2018-09-26  9814  	    sd->balance_interval < sd->max_interval)
1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9815  		sd->balance_interval *= 2;
1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9816  out:
1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9817  	return ld_moved;
1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9818  }
1e3c88bdeb1260 kernel/sched_fair.c Peter Zijlstra            2009-12-17  9819  

:::::: The code at line 9551 was first introduced by commit
:::::: 1e3c88bdeb1260edc341e45c9fb8efd182a5c511 sched: Move load balance code into sched_fair.c

:::::: TO: Peter Zijlstra <a.p.zijlstra@chello.nl>
:::::: CC: Ingo Molnar <mingo@elte.hu>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202105112356.JuDlybKz-lkp%40intel.com.

--M9NhX3UHpAaciwkO
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--M9NhX3UHpAaciwkO--
