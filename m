Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBQVKVP4AKGQEHFTCFFQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x138.google.com (mail-il1-x138.google.com [IPv6:2607:f8b0:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id DC18921C837
	for <lists+clang-built-linux@lfdr.de>; Sun, 12 Jul 2020 11:17:55 +0200 (CEST)
Received: by mail-il1-x138.google.com with SMTP id k6sf7266395ilg.8
        for <lists+clang-built-linux@lfdr.de>; Sun, 12 Jul 2020 02:17:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594545475; cv=pass;
        d=google.com; s=arc-20160816;
        b=xkLRL/tiVvuLUnsJ+0yxEmYugzP78fkq2hyDvVHNVojXmYlAPnPbwjMHRDjyCaNsEV
         BroRBwMU58HMm44YAx2Pb+CKEkDTok0Bd04AO+sz5hro3+3hnZo5atcsNDWD11M/H4NP
         DY2mM21BjSrKMOUOvQ5EjK/6K5nAnic623OCmgYngltnvYlOgHfAfGmFdMUOfLqDO3sE
         WsbiFZ0KD6LSsJh7HNlh5De+NMQivt8zeaVKGNI/36RPMYipvLd5zx2TrPtikKkLdivD
         VYXFJuI05e7mkByNNhEwWRco+tHeKFyIrsLbf1HI7RtGzjeffULdqpWA9hAWWcDozo37
         oFpQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=Bw56gwJzQwDRQCIe67HVIelm7AisLDhS9H/4zUjCXxc=;
        b=rX3SGcznT3LTcRJ1ntNZ0wxHOJTyzAGOL5RslEx30aYDyoS4QD7t+lFnpTBEV/5S2U
         /XHaBZH/UNFBmvAOrUptWhDx50nrawdKdJ1IDbL1QLecv8FV0MWf8Eq4d3UPZlPSOxTv
         rIxr3igTH5erws69J2UU4kFYuc0P2es3yX9PJ24Aej5kjlDy1Y9Vx7NXnhEd0IjjcScT
         yOKBT+bkzhqeJHlyjHkUAbZvoac+Yq5p5q81JQmbM0hSRldO9bochW8/WDYLGKKbulOX
         wNBVSD9mE1qWlaKtFmsIhUQpKU9Q2ZWbPoyYUWTjK+PhL1Xg8iXWBP/UXemGhg8VPVU+
         UCLA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Bw56gwJzQwDRQCIe67HVIelm7AisLDhS9H/4zUjCXxc=;
        b=DcpehQzwvZSlZi05VmSpbo4QWON39NwJNUKzW869esxiMQWFLwQPpWdnMg5McW1dNU
         8iZbAkWJw2OkEdx4G0LLxEp1Gk3zPOtJ7u3x/uZwpBjnxcw3tpoexOZapWma/lnpnuAk
         I9RyvsLl9CycNWSMfvtP1Tyx1X6mrv2yzLn5YXp0oKhNp7tmgssptSRbbLwwxOtw+UiO
         VZVIu7G+cSLEnMqK9yxRfRT+vTHvCcBAkyUJDfO1RXN6AyGmXx1E93CiI6fLZN6ykDM2
         8sUHftTWGiwkS7qYLcqmaPEHw5wfEjPiVDsoHV0jpysi5VDPSrMvfkmlSZSdY43pBgA9
         rNTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Bw56gwJzQwDRQCIe67HVIelm7AisLDhS9H/4zUjCXxc=;
        b=NwPyDOut3OyU9W4bcN3MxU22fVnri+pRGUR7gzbthupLPjo03KJUlSdTI8VFFdrEUW
         z1XDoa4UOawQevGS7c/jOmk2e/u5QTTTAlO60r5mK75OUS/b14pR3r2I+z8EcI/Itqk2
         1Y+p/0/gAt6Ge1Ld8NS6MX9WdYMXSAqW4nWgfomCALIdI8ZCZyH+L77zx8640KjAnvi5
         40Z2JG2UjU2RAW1HPajLzcNyhaZ5cC8dlz9wRC6CCJEwT/kgLnwS71d2dD1L0K5un2fy
         k8zs0npn2aaxcI+ThvGflYMJdapSzMzNFRYU3+F+BWQk+LE+BYvMB//WS5OilEhE3m3C
         PVEw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530MBOCBDwf9k5SRQur0S0DjBwNZvG/GokohIM15fF9PLpcMtrAI
	uZIe3q061bNgO5lOssJxk4c=
X-Google-Smtp-Source: ABdhPJy1tRVsEGo+/fc8rNl2UnQtXNsen8EP2bdG8QVneojqAzTFiv2lTgiHD1pK2S6d1z2gUOTXow==
X-Received: by 2002:a6b:1ce:: with SMTP id 197mr56540361iob.76.1594545474691;
        Sun, 12 Jul 2020 02:17:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5e:de07:: with SMTP id e7ls2414800iok.5.gmail; Sun, 12 Jul
 2020 02:17:54 -0700 (PDT)
X-Received: by 2002:a05:6602:2e96:: with SMTP id m22mr48860359iow.165.1594545474330;
        Sun, 12 Jul 2020 02:17:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594545474; cv=none;
        d=google.com; s=arc-20160816;
        b=o8911zZNnoi0BaJXvESznSQzgGkqgHdtciPKfwCcq78guCxc81UabMjGSaQhLCgPCk
         z4nLxlIecqjX3T73emb1gd+UaIvcrLC2A84fruwUIMjR3kD6r6t8B4iyq8Xw2vDHuBdb
         01tFO59o1+MtjcRxG6S1yVtR5GNl4IW1mVHFHMXUiHAoZHOGcvDzWxXi3zsbfBMJX9+J
         L2TnhU/9x7HV+Aik+yH9cwxxq1t5oiKybyKZXBNnOQNWUO+Gu+3jGqAIOI4ev6juPUFy
         j4XeKJue8apM3jBE93VBFyVLCJER+WJ/01h//b2ybQFnxec52qAbZP2z+TFxqReVXY+K
         p8og==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=5NDh+q+AGIqkz0Qc1ZuQzmyBpsHv3mScsHaRoEArTzw=;
        b=TVUV8zXmk8TsMuf+VH4xi2vYvaEojdIcJPPP6R91pvZhnmETAuORzxXAbrnkoselYy
         XcF0PSiG2v3ZXNN4+1qzFJjTyfoPoURwURU+siXuMcIQiVLejd+9b2OxfynQF1F7qNle
         03pToeDXCr7DqzdoJDqWP2Qv4h4UyEceIhf8/VBbW9HDtXXd+iaD9LITmqaBrVhtKaiW
         HTqeDWTZslUJv3T6ZUugmmCg7s3MItwVpLLQIFybQ9Kw7HlM1TCu0hr0jyCLBONz21+f
         Z3+4ktc9raUL6FpaHqBuFK/q0IPH35kyj8KsHsQKkSpowqgQgBpNSgvB3LtIrh5MS2Md
         wzVA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga06.intel.com (mga06.intel.com. [134.134.136.31])
        by gmr-mx.google.com with ESMTPS id d3si369437iow.4.2020.07.12.02.17.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Jul 2020 02:17:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) client-ip=134.134.136.31;
IronPort-SDR: KYR4ZA0b7vKDReonWZkAA5U7bbz1caDlvKyDdcN1SYKa3XPRW6juS0pOPNz/if9PkhBsW/BC4i
 Xc/sRC9oP1ng==
X-IronPort-AV: E=McAfee;i="6000,8403,9679"; a="210021007"
X-IronPort-AV: E=Sophos;i="5.75,343,1589266800"; 
   d="gz'50?scan'50,208,50";a="210021007"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Jul 2020 02:17:52 -0700
IronPort-SDR: JjrwsyHjwtlnaBg9agiJiUUemouIHX3ziDnpcqDAg70ApPXhfSwKLdoNJ//Lp7iKtKwjIDxqGK
 ljpiFy+21SIQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,343,1589266800"; 
   d="gz'50?scan'50,208,50";a="315775816"
Received: from lkp-server02.sh.intel.com (HELO fb03a464a2e3) ([10.239.97.151])
  by orsmga008.jf.intel.com with ESMTP; 12 Jul 2020 02:17:50 -0700
Received: from kbuild by fb03a464a2e3 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1juY7J-000020-UX; Sun, 12 Jul 2020 09:17:49 +0000
Date: Sun, 12 Jul 2020 17:17:05 +0800
From: kernel test robot <lkp@intel.com>
To: Con Kolivas <kernel@kolivas.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	"Jan Alexander Steffens (heftig)" <jan.steffens@gmail.com>
Subject: [zen-kernel-zen-kernel:5.7/muqss 1/17] kernel/sched/MuQSS.c:637:6:
 warning: no previous prototype for function 'resched_task'
Message-ID: <202007121700.gr2NquSF%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="M9NhX3UHpAaciwkO"
Content-Disposition: inline
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


--M9NhX3UHpAaciwkO
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://github.com/zen-kernel/zen-kernel 5.7/muqss
head:   83fdcd9083978f28fe1f43bcc3af3a1ee87691e9
commit: cd3b420bc9cd575a1eaf051463cfb1204599e8d9 [1/17] MultiQueue Skiplist Scheduler v0.202
config: powerpc-randconfig-r036-20200712 (attached as .config)
compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 02946de3802d3bc65bc9f2eb9b8d4969b5a7add8)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc cross compiling tool for clang build
        # apt-get install binutils-powerpc-linux-gnu
        git checkout cd3b420bc9cd575a1eaf051463cfb1204599e8d9
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All error/warnings (new ones prefixed by >>):

>> kernel/sched/MuQSS.c:637:6: warning: no previous prototype for function 'resched_task' [-Wmissing-prototypes]
   void resched_task(struct task_struct *p)
        ^
   kernel/sched/MuQSS.c:637:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void resched_task(struct task_struct *p)
   ^
   static 
>> kernel/sched/MuQSS.c:2932:15: warning: no previous prototype for function 'nr_active' [-Wmissing-prototypes]
   unsigned long nr_active(void)
                 ^
   kernel/sched/MuQSS.c:2932:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   unsigned long nr_active(void)
   ^
   static 
>> kernel/sched/MuQSS.c:6000:6: warning: no previous prototype for function 'resched_cpu' [-Wmissing-prototypes]
   void resched_cpu(int cpu)
        ^
   kernel/sched/MuQSS.c:6000:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void resched_cpu(int cpu)
   ^
   static 
>> kernel/sched/MuQSS.c:7464:6: warning: no previous prototype for function 'init_idle_bootup_task' [-Wmissing-prototypes]
   void init_idle_bootup_task(struct task_struct *idle)
        ^
   kernel/sched/MuQSS.c:7464:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void init_idle_bootup_task(struct task_struct *idle)
   ^
   static 
>> kernel/sched/MuQSS.c:7488:20: warning: no previous prototype for function 'sched_create_group' [-Wmissing-prototypes]
   struct task_group *sched_create_group(struct task_group *parent)
                      ^
   kernel/sched/MuQSS.c:7488:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   struct task_group *sched_create_group(struct task_group *parent)
   ^
   static 
>> kernel/sched/MuQSS.c:7499:6: warning: no previous prototype for function 'sched_online_group' [-Wmissing-prototypes]
   void sched_online_group(struct task_group *tg, struct task_group *parent)
        ^
   kernel/sched/MuQSS.c:7499:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void sched_online_group(struct task_group *tg, struct task_group *parent)
   ^
   static 
>> kernel/sched/MuQSS.c:7510:6: warning: no previous prototype for function 'sched_destroy_group' [-Wmissing-prototypes]
   void sched_destroy_group(struct task_group *tg)
        ^
   kernel/sched/MuQSS.c:7510:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void sched_destroy_group(struct task_group *tg)
   ^
   static 
>> kernel/sched/MuQSS.c:7516:6: warning: no previous prototype for function 'sched_offline_group' [-Wmissing-prototypes]
   void sched_offline_group(struct task_group *tg)
        ^
   kernel/sched/MuQSS.c:7516:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void sched_offline_group(struct task_group *tg)
   ^
   static 
>> kernel/sched/MuQSS.c:7607:20: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
           .legacy_cftypes = cpu_legacy_files,
                             ^~~~~~~~~~~~~~~~
   kernel/sched/MuQSS.c:7606:20: note: previous initialization is here
           .legacy_cftypes = cpu_files,
                             ^~~~~~~~~
   kernel/sched/MuQSS.c:427:20: warning: unused function 'lock_all_rqs' [-Wunused-function]
   static inline void lock_all_rqs(void)
                      ^
   kernel/sched/MuQSS.c:439:20: warning: unused function 'unlock_all_rqs' [-Wunused-function]
   static inline void unlock_all_rqs(void)
                      ^
   kernel/sched/MuQSS.c:452:20: warning: unused function 'trylock_rq' [-Wunused-function]
   static inline bool trylock_rq(struct rq *this_rq, struct rq *rq)
                      ^
   kernel/sched/MuQSS.c:462:20: warning: unused function 'unlock_rq' [-Wunused-function]
   static inline void unlock_rq(struct rq *rq)
                      ^
   kernel/sched/MuQSS.c:1215:26: warning: unused function 'rq_order' [-Wunused-function]
   static inline struct rq *rq_order(struct rq *rq, int cpu)
                            ^
   kernel/sched/MuQSS.c:1220:20: warning: unused function 'smt_schedule' [-Wunused-function]
   static inline bool smt_schedule(struct task_struct *p, struct rq *rq)
                      ^
   kernel/sched/MuQSS.c:1908:19: warning: unused function 'select_best_cpu' [-Wunused-function]
   static inline int select_best_cpu(struct task_struct *p)
                     ^
   kernel/sched/MuQSS.c:3537:20: warning: unused function 'sched_start_tick' [-Wunused-function]
   static inline void sched_start_tick(struct rq *rq, int cpu) {}
                      ^
   kernel/sched/MuQSS.c:3538:20: warning: unused function 'sched_tick_start' [-Wunused-function]
   static inline void sched_tick_start(int cpu) { }
                      ^
   kernel/sched/MuQSS.c:3539:20: warning: unused function 'sched_tick_stop' [-Wunused-function]
   static inline void sched_tick_stop(int cpu) { }
                      ^
   19 warnings generated.
--
>> kernel/sched/membarrier.c:39:17: error: use of undeclared identifier 'runqueues'
           this_cpu_write(runqueues.membarrier_state,
                          ^
>> kernel/sched/membarrier.c:39:17: error: use of undeclared identifier 'runqueues'
>> kernel/sched/membarrier.c:39:17: error: use of undeclared identifier 'runqueues'
>> kernel/sched/membarrier.c:39:17: error: use of undeclared identifier 'runqueues'
>> kernel/sched/membarrier.c:39:2: error: indirection requires pointer operand ('void' invalid)
           this_cpu_write(runqueues.membarrier_state,
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/percpu-defs.h:508:34: note: expanded from macro 'this_cpu_write'
   #define this_cpu_write(pcp, val)        __pcpu_size_call(this_cpu_write_, pcp, val)
                                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/percpu-defs.h:377:11: note: expanded from macro '__pcpu_size_call'
                   case 1: stem##1(variable, __VA_ARGS__);break;           \
                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   <scratch space>:103:1: note: expanded from here
   this_cpu_write_1
   ^
   include/asm-generic/percpu.h:333:36: note: expanded from macro 'this_cpu_write_1'
   #define this_cpu_write_1(pcp, val)      this_cpu_generic_to_op(pcp, val, =)
                                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/asm-generic/percpu.h:148:2: note: expanded from macro 'this_cpu_generic_to_op'
           raw_cpu_generic_to_op(pcp, val, op);                            \
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/asm-generic/percpu.h:72:2: note: expanded from macro 'raw_cpu_generic_to_op'
           *raw_cpu_ptr(&(pcp)) op val;                                    \
           ^~~~~~~~~~~~~~~~~~~~
>> kernel/sched/membarrier.c:39:17: error: use of undeclared identifier 'runqueues'
           this_cpu_write(runqueues.membarrier_state,
                          ^
>> kernel/sched/membarrier.c:39:17: error: use of undeclared identifier 'runqueues'
>> kernel/sched/membarrier.c:39:2: error: indirection requires pointer operand ('void' invalid)
           this_cpu_write(runqueues.membarrier_state,
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/percpu-defs.h:508:34: note: expanded from macro 'this_cpu_write'
   #define this_cpu_write(pcp, val)        __pcpu_size_call(this_cpu_write_, pcp, val)
                                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/percpu-defs.h:378:11: note: expanded from macro '__pcpu_size_call'
                   case 2: stem##2(variable, __VA_ARGS__);break;           \
                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   <scratch space>:104:1: note: expanded from here
   this_cpu_write_2
   ^
   include/asm-generic/percpu.h:336:36: note: expanded from macro 'this_cpu_write_2'
   #define this_cpu_write_2(pcp, val)      this_cpu_generic_to_op(pcp, val, =)
                                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/asm-generic/percpu.h:148:2: note: expanded from macro 'this_cpu_generic_to_op'
           raw_cpu_generic_to_op(pcp, val, op);                            \
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/asm-generic/percpu.h:72:2: note: expanded from macro 'raw_cpu_generic_to_op'
           *raw_cpu_ptr(&(pcp)) op val;                                    \
           ^~~~~~~~~~~~~~~~~~~~
>> kernel/sched/membarrier.c:39:17: error: use of undeclared identifier 'runqueues'
           this_cpu_write(runqueues.membarrier_state,
                          ^
>> kernel/sched/membarrier.c:39:17: error: use of undeclared identifier 'runqueues'
>> kernel/sched/membarrier.c:39:2: error: indirection requires pointer operand ('void' invalid)
           this_cpu_write(runqueues.membarrier_state,
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/percpu-defs.h:508:34: note: expanded from macro 'this_cpu_write'
   #define this_cpu_write(pcp, val)        __pcpu_size_call(this_cpu_write_, pcp, val)
                                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/percpu-defs.h:379:11: note: expanded from macro '__pcpu_size_call'
                   case 4: stem##4(variable, __VA_ARGS__);break;           \
                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   <scratch space>:105:1: note: expanded from here
   this_cpu_write_4
   ^
   include/asm-generic/percpu.h:339:36: note: expanded from macro 'this_cpu_write_4'
   #define this_cpu_write_4(pcp, val)      this_cpu_generic_to_op(pcp, val, =)
                                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/asm-generic/percpu.h:148:2: note: expanded from macro 'this_cpu_generic_to_op'
           raw_cpu_generic_to_op(pcp, val, op);                            \
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/asm-generic/percpu.h:72:2: note: expanded from macro 'raw_cpu_generic_to_op'
           *raw_cpu_ptr(&(pcp)) op val;                                    \
           ^~~~~~~~~~~~~~~~~~~~
>> kernel/sched/membarrier.c:39:17: error: use of undeclared identifier 'runqueues'
           this_cpu_write(runqueues.membarrier_state,
                          ^
>> kernel/sched/membarrier.c:39:17: error: use of undeclared identifier 'runqueues'
>> kernel/sched/membarrier.c:39:2: error: indirection requires pointer operand ('void' invalid)
           this_cpu_write(runqueues.membarrier_state,
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/percpu-defs.h:508:34: note: expanded from macro 'this_cpu_write'
   #define this_cpu_write(pcp, val)        __pcpu_size_call(this_cpu_write_, pcp, val)
                                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/percpu-defs.h:380:11: note: expanded from macro '__pcpu_size_call'
                   case 8: stem##8(variable, __VA_ARGS__);break;           \
                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   <scratch space>:106:1: note: expanded from here
   this_cpu_write_8
   ^
   include/asm-generic/percpu.h:342:36: note: expanded from macro 'this_cpu_write_8'
   #define this_cpu_write_8(pcp, val)      this_cpu_generic_to_op(pcp, val, =)
                                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/asm-generic/percpu.h:148:2: note: expanded from macro 'this_cpu_generic_to_op'
           raw_cpu_generic_to_op(pcp, val, op);                            \
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/asm-generic/percpu.h:72:2: note: expanded from macro 'raw_cpu_generic_to_op'
           *raw_cpu_ptr(&(pcp)) op val;                                    \
           ^~~~~~~~~~~~~~~~~~~~
   kernel/sched/membarrier.c:63:17: error: use of undeclared identifier 'runqueues'
           this_cpu_write(runqueues.membarrier_state, 0);
                          ^
   kernel/sched/membarrier.c:63:17: error: use of undeclared identifier 'runqueues'
   kernel/sched/membarrier.c:63:17: error: use of undeclared identifier 'runqueues'
   kernel/sched/membarrier.c:63:17: error: use of undeclared identifier 'runqueues'
   kernel/sched/membarrier.c:63:2: error: indirection requires pointer operand ('void' invalid)
           this_cpu_write(runqueues.membarrier_state, 0);
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/percpu-defs.h:508:34: note: expanded from macro 'this_cpu_write'
   #define this_cpu_write(pcp, val)        __pcpu_size_call(this_cpu_write_, pcp, val)
                                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/percpu-defs.h:377:11: note: expanded from macro '__pcpu_size_call'
                   case 1: stem##1(variable, __VA_ARGS__);break;           \
                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   <scratch space>:107:1: note: expanded from here
   this_cpu_write_1
   ^
   include/asm-generic/percpu.h:333:36: note: expanded from macro 'this_cpu_write_1'
   #define this_cpu_write_1(pcp, val)      this_cpu_generic_to_op(pcp, val, =)
                                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/asm-generic/percpu.h:148:2: note: expanded from macro 'this_cpu_generic_to_op'
           raw_cpu_generic_to_op(pcp, val, op);                            \
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/asm-generic/percpu.h:72:2: note: expanded from macro 'raw_cpu_generic_to_op'
           *raw_cpu_ptr(&(pcp)) op val;                                    \
           ^~~~~~~~~~~~~~~~~~~~
   fatal error: too many errors emitted, stopping now [-ferror-limit=]
   20 errors generated.

vim +/resched_task +637 kernel/sched/MuQSS.c

   629	
   630	/*
   631	 * resched_task - mark a task 'to be rescheduled now'.
   632	 *
   633	 * On UP this means the setting of the need_resched flag, on SMP it
   634	 * might also involve a cross-CPU call to trigger the scheduler on
   635	 * the target CPU.
   636	 */
 > 637	void resched_task(struct task_struct *p)
   638	{
   639		int cpu;
   640	#ifdef CONFIG_LOCKDEP
   641		/* Kernel threads call this when creating workqueues while still
   642		 * inactive from __kthread_bind_mask, holding only the pi_lock */
   643		if (!(p->flags & PF_KTHREAD)) {
   644			struct rq *rq = task_rq(p);
   645	
   646			lockdep_assert_held(rq->lock);
   647		}
   648	#endif
   649		if (test_tsk_need_resched(p))
   650			return;
   651	
   652		cpu = task_cpu(p);
   653		if (cpu == smp_processor_id()) {
   654			set_tsk_need_resched(p);
   655			set_preempt_need_resched();
   656			return;
   657		}
   658	
   659		if (set_nr_and_not_polling(p))
   660			smp_sched_reschedule(cpu);
   661		else
   662			trace_sched_wake_idle_without_ipi(cpu);
   663	}
   664	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202007121700.gr2NquSF%25lkp%40intel.com.

--M9NhX3UHpAaciwkO
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
k8+5/we5uvYENN8BAA==

--M9NhX3UHpAaciwkO--
