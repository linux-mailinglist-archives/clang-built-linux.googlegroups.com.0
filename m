Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBTNY6L6QKGQER2JXT3I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CD342C1D9F
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Nov 2020 06:38:23 +0100 (CET)
Received: by mail-pf1-x43f.google.com with SMTP id i124sf3848892pfc.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Nov 2020 21:38:23 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606196302; cv=pass;
        d=google.com; s=arc-20160816;
        b=HY2PBj7OoMcKyHGCxj8P+N0FNoObIG9Q/lxZ9kcEmrx0ZUslX7RquvphiI7OyVikev
         4xv8L5v/7owC+/vdsEFH2EN+263VR/FY3hkYc37PEN68UaBSfqLDjISfuwVZSMAEug0h
         doAR6/xg1zg+IKwyTpLEjSun8b5UfIy9kDBXFEKpgM9uKGWe9IaN+vWtuJGFxCdCUvl2
         6G7kYAVlHzPXPvK2Kzhv5/usZsXAFeD5i8GhOsYhX3dIzPHCxT884bSR8+c6V1NwTIUe
         hohhMnBiHGOayVEXhvNZclpdo6V9ckno29xsL582HH0OX2zKKfNSeUBeZroeXZzHY//C
         cgEg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=dlUV0/72wBRFmLcSEHsamomMQ5MRRrmDORqegY1mQps=;
        b=qdV64W8k4RkBzkHb1zlEiZ077hTLN1glttdxpSP4bLKmKrTjssHoHN+D2R49xkEP8f
         PFTQSXaH71HH6/2GAV/bVHEOyGeAiZmn8SrG1SYCB1Euucd1Ui9Br5JzsjxOs1dnrl2r
         Ohe3Fa1XLQWSDHV+1Tadaye9vkMqZKVQ4WokWVCzcZY53FgdXA4grrAQFL9A9WewGhPu
         a9jC3hjMSMRaBi/tnpEPL4zx2dCj/DshwWEd8IW3YfgjwHR0Zt7/vE3fg0LQ0Q1zwpKt
         tG7dNwBPkhdDbcQwR8lPXzQfFbisEpybly6tDLx7i9HkkeLamNhkWkGxaT2KZJMTBXPK
         404w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dlUV0/72wBRFmLcSEHsamomMQ5MRRrmDORqegY1mQps=;
        b=nmO8Ih4dUDDQ5igOYn70imH503YJTPQntRJxDn59oZAVq1Ug4vWEj1Q0nO/kK8rWVG
         henZh9XhIg2i0P3gq3v56ETsMZXmLo66dw5Hv2/y+eCllTDg67enFvTE/VlQzKf+euaa
         2t0av2AP40juYvvP1y6JQxIt2FHd9qQkhz4mmnT9qM7WEZfiK8zcmgG/R+QIYeGPO4SM
         XzG1a79PTKdDQOUoHJPsZa2d9GeQ9SLLZ980PR0L5eIzM4ZEpQpy4U7gDzf7gwM7ZFMT
         qkB+UffUUKNLOUZngvnsnjAbAHZg2AOw79OQEf79cuV9cTehSl/NNp952r0+6wpjYJxe
         oYQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=dlUV0/72wBRFmLcSEHsamomMQ5MRRrmDORqegY1mQps=;
        b=iPoRcat8aN/T6ZaB9OfFipEmPIapcVwUwsZ0os4ZQvru8LBY9JkrUXGIV3jSF0UL0S
         e37viWorCAaCEDzKu4TfksqKlKlOymmf3LV43tuOj0AsdbXM+xmnBnvVNPugdaVEUiNm
         Vr8LzW2lLynwnq+q5/JOC/O62c/Xc06Gm6qxo4MlUQdvdx+ASYDQBQnqhBwhOiy9r1dk
         +RqjkaUVXVpZFkXAcjzFLFGUjeM+xkNBaBjIMfDZpnOZJR9GJ2VsUMRUWPrk4nY6uv69
         j6daxE13MAKg79K9BQMV5ksngN7RdNY9GJk//5fJ4+F4hZ9GjhCUt4OCD0HWYr4jyHTH
         4RUA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531uBHVRvrTbUUu/4lG5g89bCAx3h/IjKXyKmKYhrZ0BUcz/TL4t
	ScEN/lrJB0AnSAseTQP83xg=
X-Google-Smtp-Source: ABdhPJzxn7i8lMcSsGPIIgdIHtMT/WXhS+y/Db7Uejjftq29/QUCF7X6EX71xY5GBD4tS3CsvaBIjg==
X-Received: by 2002:a17:90a:d90a:: with SMTP id c10mr2927215pjv.129.1606196301860;
        Mon, 23 Nov 2020 21:38:21 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:7745:: with SMTP id s66ls5965288pfc.0.gmail; Mon, 23 Nov
 2020 21:38:21 -0800 (PST)
X-Received: by 2002:a63:5c19:: with SMTP id q25mr2452439pgb.189.1606196301125;
        Mon, 23 Nov 2020 21:38:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606196301; cv=none;
        d=google.com; s=arc-20160816;
        b=hxwy60+26BQ5RxWsUXxmzAwNnDqGr12RimPJXKWLSD0Yz8ZjKl20p/FrlpMaZ/pn1w
         1xE5clfk8iSsN9DwPYOu8hFc3Y7JwONnp4R/Y+Mr+j60SAdUWPNSx0euFjpue+C7bPMV
         3V2yl51fdOwSnL8mtheG1lnjgykA9Ofq3/YVbQjwegveeXJ/+P65GFofO7nUNznopvmx
         OAp2J26diEpTP57uxh5/tOcHoeXFIobI0I07OBQ2j4sH/8MGTtvaAE5eiVSW8T1dJwpE
         fW1Wee5STems8tfTH+kIYtcSCBH6Vl7WaRNwwHmW0ZpakoKSQjIpmKWYgpkNBxr46AeV
         1ehw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=1ph/upr0LwL+jo5PZ2MKvr+gun3Z2/5CMrHb8UnuGqw=;
        b=jv4NA5kfqhvKIsfTKzG+OOSdD7K4PjIkirUzJz4X6DlmuQ2pnlE8ia/6d3Hn+7Cs07
         5Aeu5d6pGnxjeuHf1l6ZktcD9uS0w50HYVb4htxJQ5LzQVVvRgKKkSCAXqiyheHz2GHT
         pbrRQ4zFyrjkeCxg3+jIYUPgX5qqRWy8bcMkuPqNLxuhlwDLXa1trIvN7IpgxStZ4GgH
         QlqOLM7fqdGoVrzgRIO5ax38QUxSvV/C4vQuyx7Q6lWPxi0pDj5K5iAMBTxXgsEA8UT7
         VQrheHYcUQj/O0uaTNLAVmf3ezDkghJcCqPOk0WLPxiIUB1P94GtMkUAXqx0G+qheCcd
         NofQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga04.intel.com (mga04.intel.com. [192.55.52.120])
        by gmr-mx.google.com with ESMTPS id l8si143550pjt.1.2020.11.23.21.38.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Nov 2020 21:38:21 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) client-ip=192.55.52.120;
IronPort-SDR: ylyMjNjUKNBSaXV5sC9Xa+IaiFjXITj7GytW640l2Usi4pNLCLt14bUVE82osexPYcg/W+2XTQ
 wiiH6xZiplpw==
X-IronPort-AV: E=McAfee;i="6000,8403,9814"; a="169330155"
X-IronPort-AV: E=Sophos;i="5.78,365,1599548400"; 
   d="gz'50?scan'50,208,50";a="169330155"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Nov 2020 21:38:20 -0800
IronPort-SDR: KbltaCtPXWZYNthNkPm6VQq4IH27v3V+zAiiQEtrC08J3sqLVuaYS9+J/msH3SJ9peLUL0km9/
 afApoMg1NuWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,365,1599548400"; 
   d="gz'50?scan'50,208,50";a="534726841"
Received: from lkp-server01.sh.intel.com (HELO d32bb8956768) ([10.239.97.150])
  by fmsmga006.fm.intel.com with ESMTP; 23 Nov 2020 21:38:18 -0800
Received: from kbuild by d32bb8956768 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1khR1t-00002L-Py; Tue, 24 Nov 2020 05:38:17 +0000
Date: Tue, 24 Nov 2020 13:37:47 +0800
From: kernel test robot <lkp@intel.com>
To: Con Kolivas <kernel@kolivas.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [zen-kernel-zen-kernel:5.9/muqss 1/20] kernel/sched/MuQSS.c:639:6:
 warning: no previous prototype for function 'resched_task'
Message-ID: <202011241342.PHBylV9d-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="VS++wcV0S1rZb1Fb"
Content-Disposition: inline
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


--VS++wcV0S1rZb1Fb
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://github.com/zen-kernel/zen-kernel 5.9/muqss
head:   8969d3bb632504cea984c900b71176e2d4c7997e
commit: 49e82d66c704858ba77947984535811593d6dacb [1/20] MultiQueue Skiplist Scheduler v0.204
config: arm-randconfig-r036-20201124 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project df9ae5992889560a8f3c6760b54d5051b47c7bf5)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install arm cross compiling tool for clang build
        # apt-get install binutils-arm-linux-gnueabi
        # https://github.com/zen-kernel/zen-kernel/commit/49e82d66c704858ba77947984535811593d6dacb
        git remote add zen-kernel-zen-kernel https://github.com/zen-kernel/zen-kernel
        git fetch --no-tags zen-kernel-zen-kernel 5.9/muqss
        git checkout 49e82d66c704858ba77947984535811593d6dacb
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All error/warnings (new ones prefixed by >>):

>> kernel/sched/MuQSS.c:639:6: warning: no previous prototype for function 'resched_task' [-Wmissing-prototypes]
   void resched_task(struct task_struct *p)
        ^
   kernel/sched/MuQSS.c:639:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void resched_task(struct task_struct *p)
   ^
   static 
>> kernel/sched/MuQSS.c:3076:15: warning: no previous prototype for function 'nr_active' [-Wmissing-prototypes]
   unsigned long nr_active(void)
                 ^
   kernel/sched/MuQSS.c:3076:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   unsigned long nr_active(void)
   ^
   static 
>> kernel/sched/MuQSS.c:6234:6: warning: no previous prototype for function 'resched_cpu' [-Wmissing-prototypes]
   void resched_cpu(int cpu)
        ^
   kernel/sched/MuQSS.c:6234:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void resched_cpu(int cpu)
   ^
   static 
>> kernel/sched/MuQSS.c:7697:6: warning: no previous prototype for function 'init_idle_bootup_task' [-Wmissing-prototypes]
   void init_idle_bootup_task(struct task_struct *idle)
        ^
   kernel/sched/MuQSS.c:7697:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void init_idle_bootup_task(struct task_struct *idle)
   ^
   static 
   kernel/sched/MuQSS.c:429:20: warning: unused function 'lock_all_rqs' [-Wunused-function]
   static inline void lock_all_rqs(void)
                      ^
   kernel/sched/MuQSS.c:441:20: warning: unused function 'unlock_all_rqs' [-Wunused-function]
   static inline void unlock_all_rqs(void)
                      ^
   kernel/sched/MuQSS.c:454:20: warning: unused function 'trylock_rq' [-Wunused-function]
   static inline bool trylock_rq(struct rq *this_rq, struct rq *rq)
                      ^
   kernel/sched/MuQSS.c:464:20: warning: unused function 'unlock_rq' [-Wunused-function]
   static inline void unlock_rq(struct rq *rq)
                      ^
   kernel/sched/MuQSS.c:1233:26: warning: unused function 'rq_order' [-Wunused-function]
   static inline struct rq *rq_order(struct rq *rq, int cpu)
                            ^
   kernel/sched/MuQSS.c:1238:20: warning: unused function 'smt_schedule' [-Wunused-function]
   static inline bool smt_schedule(struct task_struct *p, struct rq *rq)
                      ^
   kernel/sched/MuQSS.c:1976:19: warning: unused function 'select_best_cpu' [-Wunused-function]
   static inline int select_best_cpu(struct task_struct *p)
                     ^
   kernel/sched/MuQSS.c:3195:19: warning: unused function 'steal_ticks' [-Wunused-function]
   static inline u64 steal_ticks(u64 steal)
                     ^
   kernel/sched/MuQSS.c:3681:20: warning: unused function 'sched_start_tick' [-Wunused-function]
   static inline void sched_start_tick(struct rq *rq, int cpu) {}
                      ^
   kernel/sched/MuQSS.c:3682:20: warning: unused function 'sched_tick_start' [-Wunused-function]
   static inline void sched_tick_start(int cpu) { }
                      ^
   kernel/sched/MuQSS.c:3683:20: warning: unused function 'sched_tick_stop' [-Wunused-function]
   static inline void sched_tick_stop(int cpu) { }
                      ^
   15 warnings generated.
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
   <scratch space>:76:1: note: expanded from here
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
   <scratch space>:77:1: note: expanded from here
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
   <scratch space>:78:1: note: expanded from here
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
   <scratch space>:79:1: note: expanded from here
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
   <scratch space>:83:1: note: expanded from here
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

vim +/resched_task +639 kernel/sched/MuQSS.c

   631	
   632	/*
   633	 * resched_task - mark a task 'to be rescheduled now'.
   634	 *
   635	 * On UP this means the setting of the need_resched flag, on SMP it
   636	 * might also involve a cross-CPU call to trigger the scheduler on
   637	 * the target CPU.
   638	 */
 > 639	void resched_task(struct task_struct *p)
   640	{
   641		int cpu;
   642	#ifdef CONFIG_LOCKDEP
   643		/* Kernel threads call this when creating workqueues while still
   644		 * inactive from __kthread_bind_mask, holding only the pi_lock */
   645		if (!(p->flags & PF_KTHREAD)) {
   646			struct rq *rq = task_rq(p);
   647	
   648			lockdep_assert_held(rq->lock);
   649		}
   650	#endif
   651		if (test_tsk_need_resched(p))
   652			return;
   653	
   654		cpu = task_cpu(p);
   655		if (cpu == smp_processor_id()) {
   656			set_tsk_need_resched(p);
   657			set_preempt_need_resched();
   658			return;
   659		}
   660	
   661		if (set_nr_and_not_polling(p))
   662			smp_sched_reschedule(cpu);
   663		else
   664			trace_sched_wake_idle_without_ipi(cpu);
   665	}
   666	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202011241342.PHBylV9d-lkp%40intel.com.

--VS++wcV0S1rZb1Fb
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICPKMvF8AAy5jb25maWcAlFxbc+O4jn6fX6Hqqdo6+9DTthPnslt5oCTK5rEoKiJlO3lR
uRN3j3cSO2s7fab//QLUjZSo9Nl5mIkBXkEQ+ABQ8/tvv3vk/Xx43Zx3T5uXl5/e9+1+e9yc
t8/et93L9r+9UHiJUB4NmfoDGse7/fvfXzbHV2/6x+0fI2+xPe63L15w2H/bfX+HjrvD/rff
fwtEErFZEQTFkmaSiaRQdK3uPj29bPbfvR/b4wnaeePJHyMY4x/fd+f/+vIF/v26Ox4Pxy8v
Lz9ei7fj4X+2T2fv+dvtZju9vZ3c3NxOr0abm28XT1fXV6Ov08vn6Wg6/np5/XT99dv0Pz/V
s87aae9GNTEOG9rkYjrS/xjLZLIIYpLM7n42RPzZ9BlPOh3mRBZE8mImlDA62YxC5CrNlZPP
kpgltGWx7L5YiWwBFBDg795MH8SLd9qe399akcpgTsOC5/dStn39TCxoUoCYJU+NIROmCpos
C5KBABhn6u5i0ixF8JTFFA5GGguMRUDietOfGpH6OQMBShIrgzgnS1osaJbQuJg9MmNikxM/
cuLmrB+HeoghxiUwfvcqljG1tzt5+8MZhdXj4wI+4q8fTW63r3DMCOtwdAlpRPJYaakbUqrJ
cyFVQji9+/SP/WG/bdVVPsglSwNznhVRwby4z2lOHRPlksbM74iIZNCD5HBNYTw4w7jWI9Ar
7/T+9fTzdN6+tno0ownNWKDVLs2Eb2iiyZJzsRrmFDFd0tjNp1FEA8VwaVFUcCIX5oqzENrI
Qq6KjEqahO4xgrmpVUgJBScssWmScVejYs5ohmJ5sLkRkYoK1rJhOUkYg873F8Elwz6DjN56
yqHqFVhd9dwiC+D6qnlGSchMcyNTkkla9WgUwRRGSP18Fklblbf7Z+/wrXPILlFy0EFW77S/
nwAu/gIOM1GyVhy1ewU77dIdxYIFGBsKKmCYjkQU80c0K1wk5h6AmMIcImSBQ5nLXgxW1RnJ
kCmbzVFNYF5enlKz794a6z5pRilPFQylbWyzmJq+FHGeKJI9OC1D1crkaZEEaf5FbU5/eWeY
19vAGk7nzfnkbZ6eDu/7827/vSMk6FCQIBAwV3nazRRLlqkOGw/DuRw8P9y70dYhyVQya6eg
obXtCZkkfkxDp+78G5tqR8UVMyliosBB9OSTBbknXfqSPBTAa48UfhR0DWph6I+0Wug+HRLY
EKm7VlrrYPVIeUhddJWRoGY0m+uwCrykBfedUrO3apzVovzDcUBsMYcBnXam9Or6EtbXTz79
uX1+f9kevW/bzfn9uD1pcjW9g2sc0iwTeSodS4BpgkUqWKLwQimRWZcDPEckQWlA/QOiuupS
Hx2NifvW+PECOi+1A8zcnX0hQOuHBAToSKSg6OyRoqVEswH/4SQJrGV2m0n4wzGados5C8dX
BlBKo/ZHo4DNyNpIgnvNnIuXM6rQjxWVh3XMWUqw9cAVOSrtrnU9hWTryqIN2CA4pYVjDvAC
5kA0jkCiGXXLm4BPiXJ7rQ03ygGVO2agqTBXL9ksIXEUWlcFFx65D1m7kQEeYcJt4kSRZ267
RsIlg11UQjUuD6fcJ1nGTH+2wCYPXPYphXUiDVVLCHUaoYqlKP1j1BgL8Xs7MzRKAi1/w7hJ
ajlx7bg11SVr7tMwpAYA0nqLql80/rhWCSSCehZLDusSFmRMg/HosmeQq/As3R6/HY6vm/3T
1qM/tnuw7gTsSID2Hfxna6ntaTs76E7vtIv/5oz1hEteTldox2bZRgxQiILYZmHZqJj47tsZ
577rRsbC7/aH88tmtPaO7tHmeRQBkEsJNNS7JWAtnU05J6lusiryBG0fIzFYJLf+A9SOWNxR
9EZ4dszXqp2Bb0EpC5mnqcgUqHQK4gOjpb2xhZ+YwBYAuw38LBUJFqV3q0aw4r4FGP4+o/ZQ
8xUFGOZgwBVhfgbuAuQJnqFzW5ql5jrIMJV5DjsRUSSpuhv9PRrdWCF5PXpp7OouM4Uwpow6
5N2kcpTaBXvq59u2BGn1seQuY4KL0ieWJWHhQ7RUcMDvNx/xyfpufGUcBhjEZBZjyMWX19xU
Lt2b+pKMxyO3+dMN0tuL9XqYH4GT9DMWztw2XbcJxfIDrl7AByuQF8Hk8qMlEHU7HpTeOqgx
Srj9sYMLfj5ut95h/wKSqHDy4Xje/v2ZfKn+4N7m9PP1dXs+7p681/eX8+7teHjank4ALr23
l80ZbcXJPD0pIGzh62v3Laq5eeyO/JG/jK7sQ7AEoPjFxPAkpKZFl5NbN/3q1kIKLef68spt
F4wmV7eOlbQN5teXF309ioAzfEQxWPybj86Qp3LScwhpKffDsb4vBq4vldkgqHnOfZHEDw4y
3PsUL6PNupj86A5C/AzDMLiONj3VjJjOSNAZPwC5UOiSusi9RQKhSHKuI+fbUXeXUYudjQus
d2AP46MvTkJGEpte0gqfmvqio6ByPVVoZeFT4IYW14V1cU4A2hAVK2MQY5HxuNqynLNI3U1N
XsgJghAwj1FEs25f0+669gUmV/dOSUYMaYbwS+Mhhz3WPATaDl5G0V4uaQAeEsInUVij4nJ5
mptRu2mx9Xn57xjDv72BtTCDHJNswpn+oUKAXEX6jf8mGQWNaBapHfmgu9EyS7JiljLR9pk/
FhFbAzYbWdmMIdMKrMnIZXKQMR11ciIXw6NMh1kwt3uGO5jBzhHPM0xBGIEvKv2kymEa50OJ
z1zJxDRKiiU4dxOartzAVLdfEYBx2m+TuJjnECzFxh3TmS/0pcUjHJTIIA6+G48Nk00DBHyu
vAZoKWZLDBxQUbpJEVPHuqpS6tkBhj68YZHCUB6EtCKy7K8iM1f4/Kjj10zwspwBetTn+FKa
DFR/kqZwBeFIQuXbZp7rqZBewV2XpeChrhR8+tT2XLO0OkhXh4xIQAi5WQogOdzLR4xzwjAz
5WSJpE5yeenhX9ujxzf7zfftK6D3xrEDLzpu//d9u3/66Z2eNi9lzsuyfVFmRzpmpsnRuxmY
Pb90PBIL+5YVacVMLAvcih2pu1pxmuSDQygqeh4SDqVZjRcedz/KAMk6NODjGAO+F/hxKq/H
47WrodFswbLFSoiwbmYbzceH5N7NQXRmcKyp6fohEfIXE/MlBHTgOYcGuQdlLGQ6sNHqNN2C
Ms+6PFCT0tMrLdno5bA5ayh42O3P3hYQYl1ILI/k7L1sNyfQ0/225QKQBNLXLazqZft03j6b
rmNwyBIf6GW8Nsvo2wSZy9QqS1QEVG76aGYcaoZcwJ3EbIBhp0CIMaWpRcGb2KeuyIJiDCbd
1Kp6N249lsWdWZNaaQFeBu8uRXAHj3jq8cL6XQdjZVXDygys7otUrGiG5R4WMIzkHWH14FAO
+XRbCCNjp3Ejv+tCnfIAUiEl66Eo7NIeZqMfgxpQKuTu+PqvzXHw/suAMwzllQiEywK3bbRs
ukWikp22Q7hYzp4Ry/gKkA3CNyu2V3mWMYhVxbrIVspSAT/gl9frdZEsAZc5FqsoLfxkrYpo
ZZWehMAgt57RnbXj6yKULqeNHGmm3StCkYZNfWn7/bjxvtWiftaiNu/wQIPmincPqWODs4dU
CdfhSIgNAa9yAKtRCiqm7jol983x6c/dGWwKIIfPz9s3mNBpJDRWEmVKpwvAEVRg1RxwCUCC
FelWxxPuBF06PTMXwriATY2Ap6XnKquH/QaaialbBPh52lkQ5i0BhCkWPUB8nGdBd8XYYAG3
sUzfO5hV2CCyB+fK9aogns1yiGhWc6ZozMynBbrVxcRnCnF4oTqDZHQmC4KGFNNUiOqoxAxX
V0xVdtUkaUyK/V10TOdXY3YgUQNaWRoUZfm1fvng2F8FUOFCxMq0/7qFHh9vsw6COim3X9JR
aMIsBusx4W9EmVolFqzHHiggdlo5SoedFhzwR7nBlAYsMqtqwMpjKrUuY5kho65kuObAwQks
yHQGp2s47a6+BjFEABBoBgswLKFxaALfmLBZZa4vegwSVK6qRXNljrjUKtznUMIHF6ozjgCD
Q/0gpRkDXaiZhJY9SDgLxPLz181p++z9VYYVb8fDt10X+2KzYVTeLEM3q4xGVZRoE8AfzGQJ
Ft84pXE+q91xJ4H8CwvWhM1wobEGZOZldUFEYob/zgjPKlVwZbEqJVEAjECWYmFaHr+qaDY/
F+AEJANNus+td0d17dCXVnHLIMfMnfdvq46KzjKmPq5NYvAZOnaB/CrQKk1BZq9t5aseoeD3
/bVioaT7SMPcPUSBIiXuehw2KJ+FFTTR/stVZE83x/NOA2BMoFjYBFauGHbCohmWTV1bJRxu
UtvUuO4yhMjBwaARs8gtiuosxRQQv9cmiglbbhq+lQ+TRFvFtnYBPZkocxghGA6UhzvB2rZb
PPgDRdu6hR+5Y1J7FS1GSMYGdinPRIJrLPJE2wv7ZU/J1/6v5H/Ec/ZdgebSoc4m0+5t5/qI
AhscFADYHGY6Aa0Q4N9ikqboKzARgB5WpsSEAm18o4+E/r19ej9vvkKIh+9BPV3UOxsYyGdJ
xJV2AlGYmt4DSEHngUHVWAYZS10BQrPYqmEEwYmjP5Jdd7jl4ovHZYpvH1P9KhLdraGHZUPO
pLFcXGsFEBrlGNq9Fg3fvh6OP41gtg8QcSmAmAzp4toSEWoAb1fn9N4Rf+nqsq0HMo3Bv6VK
KwD4fHl3q/8xb/4MlQz1wF1F1xn4oipPgrFmmCpAiAVWvm5C4Z4AZtKoYmHFEEFMwZxgNtqV
FUuFiM3Wj37uMjyPFxE48j5upSSLH+Ci6jyyqYmE0yqtbIW0NNNBnSLK5Y9meVr4YD7nnFSV
4+owh8+rHTuh/UdfVZGrDQWNIINw38ISaRAQ++lLG1jsnqoxPNHLQJbwY07j1HQ8FhmOWM2t
d6VLxdOoU6cvaeCUAci4S2MKoBpBBOYK0LNyxibM1O9+a1vQBFwvh82zDtXqk1qB48eXTcbh
1SStmSEWKgzLsAZM20xi7KntpVF7Vx5OdhEBVPGt+922Q3yIVs4UEnB7mtwPKqs9GjGlrvAj
hqgthfMNMPr/MGNLc90VlS4zE2iVVHx+XXXAQoowH6GkvLgHj7zI8R23/U67pFX90u4r7qY2
j+FBrkTngS+WR/3cWArETtbVK39DzHB73SOySdCjyZhxx4DoMXu01bhH4txECfU8pp+rxwsC
o6SARTBd5wmrOpjNisAI0DKg7kHk/l1s6lDP+rr3Uj4lvMRHIEXsyqL4WcCl8osZkz50MJbp
qzGEsVbiX5PWzImm14paPm/OJIsZ/MCK72AWZkWZa1U6kUt9NjFHlIynmCnA8qHLgi7pWl+a
6qGeca9kXPBadVoYNmfdgawKXi3QRjkT89MF/AWoOAOv1CFytXAzJIOw3snJ/XWPwVVjwFq4
+rY5nrqoU2EcfK2Brhu/Yws/4FcX63W/ldHGiCPMIhmyRNRQrWHLkANOEoylIi7/rZcXSdeg
VWeVrW063o0UjszRBe6MLlh9wApZpl3vQxXEfR4PDgDQtHoiZb5j6zdDEFw9J3CEEPWZ6EPJ
T1gnOCAsL1+OqeNmf6oS//Hmp+WJ9cHECzCwnb3UMKq1/coVmidAbjviryKzcqEscXfMorAo
+7aXS0ah+5pKPjC9VgyR9k+1DLjwcx/8ZKHB5ICLvmSCf4leNqc/PQj036rcaEckQcTsIf9J
Qxp0fAHSwV0034BYagkjYCSpn9uKZEjf0TL7JIGYmIVqXoztwTvcyYfcS5uL87OxgzZxrRRN
dAzYYuha4mZ4KFXYHxBQEelTc8Xijj6bLxs0QXQIxJeAoEwN/+C4yjhi8/aGlaqKiEFG2Wrz
hI9YOmcq0HavUW4YxXV1Zv4gLUduEKtcmZsH+8+wnn1jfxhnNomp8TWdycDj06d3N3GxzfqN
ScdUK1FW4txkzyiHYMXNY+v0cr3u2dC6Z8qEjm4HjbgMppNRELrfjmEDCAN0mwFNUnI6HY3s
tYFPJdfdJeUBOILc9cRaLxiCwVKh2hjlF7pQPnjcvnz7/HTYnze7/fbZg6EqH2uYAWsZIVEE
Ik85H7rAwTydXCwm0yt7T1KqyTTubkrGnTpS5xTcVSY9jwq7FwifFSmhICTVj4suR7dXHS7N
dEISuePJTccbo32foAB6Qdvu9Ndnsf8coPCGIjgtGxHMjEyzD0E4/AmYnN+NL/tUdXdpvGP6
5UHotSQQcdmTglFHYgcblES8GFij0UmfruzrNhXAH3ImVSsB12HinkQSLnOzFmD1U+nQxJM1
eorZRxqQkVWBbYevX8ocDSqZamFpscUp3uH/KP878dKAe69lCO/0drqZvZ978NvC7dnKQYtk
yZ2r+PXcv3U3ZCcpDLIun1wiltUP5NzYAJoSmWICRnLXsWIDjAQKGVnP/vUcax1pRc54Aq2Q
37GjQChWsa7LyDmmZDrXTjfwqV+9OpiMujz8hLLnZ5Axi3Pqmq0HxJAxf4Dw3R2ChMoIMk0P
AgAaI98q3G2GAzIgUHxH5RoNuJh4wwqFNVKZeHKyFsL/p0UIHxLCmbWqOoVq0aywVUT689Zs
iRjOzAOWDBEvaWcXZYb2wbGJ8k0vvsGvipu6Zlk91jcrAEj6qAbSs5VwCagnm+eXNQwGatFN
4Gqi/koKs1EuKI0N5itufY6AtIj4YLBklxp0CIBDZlQ5ibA3cEjzLHdzY2E+GDY5A5MAverT
Gh9TEiU4252ejJRAfetoIvGta8zkRbwcTaxPo0g4nUzXRZgKFxINc84fup/5gmBuLybycuR8
dK84Bfdo5qppAkuXeUYx2l2ygFoBpQ76A8GSgDo/UtN8vMJZaoxJ0lDe3owmJLYGYzKe3I5G
F643Hpo1MYBQLRcFnOnUwfDn4+trB11PfjsyAtg5D64upob3CuX46sb4jbcWdl5ARHPRy1RI
C2dIjSPW1NjtGj/CWRcyjExqukxJwiwDG0y696msi1BwK9x4tFyfjKbDmU2MUKYlTnvE5gF8
+/lcyeBkfXVzPXV/YVc2ub0I1leOg2nY6/XlVW9GgOrFze08pXLd41E6Ho0uzSvR2Wj1cufv
zclj+9P5+P6qv+06/bk5AgI6Y5CO7bwXQETeM1ye3Rv+aT/r+X/3dt27KrloPCA2eGzicqIE
X24QDHbS9n+PsD9vXzyw7ODtj9sX/X8+MZ+iV12XIh1Mcn00RCPfYC4soG/alRLVB5LV8LGn
VrpozoVlZzLCINwE1zUAKXA813JdExnWSxEXjDCwal1K59ZqeKgzzSHFJy3OEQpMihETooV6
D6MeZdyn9BtdWtFK2Holi6qfIhrvlXyd+rdysdWXGgOvJCt2ZW9l2c7Rn+gPQTM6Y2BXe1/H
d0QX8vptWF+soflFBm/mayl+Hpnp8rpNibHAbCRkRjP9qsV67NNpV76Iwux4t5XPEDMzabpw
IKf4NEoq/cITlMQUAXBzCI4ylg589RhWz/Fc/pAXMiGp/b+SCPETHaaTUkuGD7K6a6xPsUP5
P8q+rTtuHEnzr+hpp/rs9hTvl4d+YJLMTFq8mWBmUn7hUduqLZ1xST62qqd6f/0iAJDEJUB5
HmxJ8QVxRyAABCKo8vxRobJNlMlcHohWfioX8MIxYyWNuamGocMszykGQ1PJ61M5qL2FDFSZ
On+sLQAZLcBZQ5aHmHKZiwuxND/zVyN/zq8dFRLVke/LB4UE29RRz4UTly3s0HXjGd4ikOpk
GxfiC7oM2zjIrRrzsw2tuxPvZVwKFs07hkFCF9Rf0PO1oSzLO9dPg7tfjs/fn270399M2Xys
hvJWDcol0+6XijptZvry7c8360JQtdyflHQ0TQlUiyiwjQ8Hwf1O2dTaNSjHwFxU2xNoHNwx
zT3d7lkzaDI696d7viNcj++/giuRZ3ju/dujoj2Ljzq6L6ZZb4NKpc89yS6TFSU53bK18/QP
1/GCfZ6Hf8RRorJ86B541lply6vWGBqqyX5OzvqGWWtbutJ2+sQ/ptPq0GWyve1CoRuJPgxl
9VpFkkQuioalaI9uTOP9ATPRWBk+jq4TYlkDEOOA50YYsDyGQUsLN2X3cNcUJeFeeep7WmA0
BfM1tc7BHvWZ5WLnxDD+S6zxxzyLAtl1iIwkgYs3Pp8JuxVpEt/z0Y8B8v39jqO7gtgPsdfE
G0tO8LL1g+thG8yVg7RXMve3QRH1K1o1eBdyy374ey/ttryNskaxAl1Pd7OdYhmxYj1VqpNp
wvMVR5j77XXq6uJY0SWIP1ncZyZjd8tu6OmLxAO/kzzD6kLLw4epAZz5V3gDfiSRtzto4CA3
wIZi481jd8nPeI+NtzpwfAfNdNIlgMmSZz2dtvgL85XpkOMnwduwG+9ZP9pXDxDXktIOf1Lh
7yEkuoPr1bvzFTk8YPJsw6meUNGffY9/TrX3rB+rHLdwNriooqnYu2ws+UOvngluEDPkZ86X
8DJQrY2qKhZVRypECfec+OH/lhcbFZUlpyN4edSzMjPC6riaV2jJ5g9Zj+4cO/56IGuF5ZD2
3YLoW3YbGyuUNZ8rodIiy8xsQNhbv9q6VTFuWlUFIh5Sr2kutJlutujAQsu98fj4PNsYimqf
Ie8OA+7CcmU5Hb37dzgGi5tMhWNGzdo2FrprrctG3qutGOjZdISPaEORqqBKcos/2F25xqbI
0c8r9nx879Mb+GOSn9isCNjU1LUsr7dSge1zJxtrqdBBcf+0YWBjW2J5jbeqoH+gdfh0Ltvz
BZsj20ggoeO6SLqgry62yTrWk6nP2G3TXtJHUmXRQR/czJ+O0mOcIqY5bdW8awJ02IgEQM5w
Pdsu4BU7a05Lkr5JImeau1ZZu4RGXcRuYOj+nIrNUYEo5oYCGapPXZvNZz7BEeWdna7TpY7V
xFqHQ5O5sj4sNgT+5MyHy6hoNmJj1YDiMl+ZbyT1bnBh4LqNULh22hh0vjhKfVGJnW3YlKRe
iDdpk7t+nPiQG17gpqFqreqlggNMTz6UZW97YbFxFWXe4VNcYmJNouee97QL7IW7n8YPqU4c
yhO8Xu4G0TAmPl7sSY49iULPTewc2dR7dIT25b3ZKEK12j621nnhXKqtJXRhP6xf91ndZEQp
oz6O8mPoRD7tWdTh1cqUhHFgDNJbI3oWSZdirMw7nT7cJ06IDGCz04cOnK3CxVVXYLkVWeqE
Hh+61pSAKfLx8X2jmycXxAkyxYup9gNMweY41b+9KDWHZJP5jmPMeUHWtRlRwuHqgVQ7m8ok
xhmFGCfCF9sFGLMKYOcPe01Hci9exJFeIzKCLHLXdt1uGJoqwE/Gzo/fvzAz+erX7g5OqJTL
0UHeb7M/4X/Vrxwnw/uJe/klNCfX1UHZAHDqkClGmSIFfqej+brSmCjaWD398WSGXE9DxXus
RF3d5xQivVHdSxtUYhOj5cSPHSzFvTAepBSnrCk1x3yCMrckDBOEXiv3eFiPbRdYyJEjv/36
/fH74+e3p+/mHfgoX6tcZR/3XUu6mlnet4R7lyAy58KA0XR/EOcbyr2R4S1XoblWvrTVlFK5
Pj5g04pfuDJ0S3Mj8jfA//DC1SCmLqj+wi634FHJcsJJnr4/P341TZGE4sRMS/KuVQcGBRJP
vRdfiZLf3cXeVh88C6cbhaGTzVeq3GQtaoYucx9BMb+3pSXa0To1Fr6mbKkOgXrYlLjaYb4w
k/IAQwd4gN6UeyzlNDJXSbbiNllLu6nDje9lRmFNdYW8bImxxyNgi/FOWvxSUzXtUepFMlsW
xe2dtMvG9ukwekmCrVoyk/ACaEuDToUe/Ny/kwpsZzS7BxlmL1/2Rgg8a6AzHZw1m9ZFry9/
h1Qohc0YdsFvXnDzhGA9oEk5roOUZQN/ZtSu3O4e1zJPueOVsqkgTMNusrBfsDcndtitQT9T
eORsU2Wgur7vOqYk4fTJoGuHtxsVK43JZBVnML1qzVBVg97PYeVcxYerccAdYl4ZuXPy9pmH
49sSYrQzZ1iqZy/imcBU873JbNoNMteqpesV/9ASca9o1bGy+HgVHHBcWO3Iro9mniTP26nH
cmPA+11FcjeqSMzqitRphe2IrjgbOH6QIdjo+nEohyJDm0w8zrJ/LZTFD2N2sqwLGsf7DSI+
EMlZMZiYbNkylj2Z6ZBdCnCl/A/XDT3HsZXu50pWHadoihARMRGqzeDVX7H3kxcWdD3B667C
1pnBnNzOttLAKTRguxJ8TeGnVoXB8jiLw/DCse71LPV525YTuA0qqlOVU6VwQKa2zrI30ekO
laA236IVqOb1yfVDc0r1A6YnAfknJrLqAVmm7pSVOw58r0u6284KSSevkS2lWUdIU9WHMoOT
EqJvK3V0xmeYyiNXbn3Hoejy+uf5ONTaJbKAWngTAu/p5fv7dj4XtXQYtV5BKjsmmSoM0Y0W
aC91Lb7azme5//aqxY/7z9d8LvKd0cS86VywrQV72g5VpTlabcihtGZkis1Mknl82Rl9Vd8g
UYgYFTTIxbRMoYNJ7qzZJEkIGJ7J5mEMopUB42B2J3FUHJwwmFQ6gS63GokF4So6PWV21NId
de77nMyHRlnZxBYEEMZyQF92tH3ewLIns21pizQOI4JRymGnonSTzN1yISQev6PqlEcJG3rI
At/FgNWjzzbgVgz0xKE9YXXcmBaxg3zflKTD4x9JPGhElA3n3k/x9KGhdz+GG/pRs/bb0JzO
DYu1Ae0D2pCYdV15vVeaGN5G6d4hwCcyo8PzZencYczpvx7vPZnM+CB+oaKQCarJplySSMQ5
H9TT/wWDW1fbrkfmqSilLeU9goy2l2s36uCVVgSMPKcHpEij73/qZTN6HdE1SQPXNMmVkeom
9YPNmts88to6jzf+cKFLNjxrX52ecGsvL0fs9ZTLKtoOzCgC3qUpJ7lebvf/zECImKfYylFi
w8zj+DMVFlPh69NftNhQDvbsESsMuKbgR5A0ybou6cbfSFRb6zYqz1ApNQD1mAe+gz1EWDj6
PEvDwDXT5MBfCFC1sBZh2Q0lPgsBL0rp450CNfWU97XiEXa3CeXvhdsZOBBUy63ZS7DWrk/d
oRrlIbIexOpO7+Usqik8F2b0BjbEuPP8f4JnDfFK+Jc/Xn+8ff333dMf/3z68uXpy92vguvv
ry9/h+fDf9PGANtGaCVlC41GG1NX7wHme5rU3LkjxPWj6umY2do6m6ZKy4hu0ryEabNKupRM
F7ShQ683BX7ftXpi3OuKMZdoR9hMPtgwya50iFRqWkUJga6Y2yNVlGogq7wVXc7B9CKtOwFL
kdg2Rk21bMqrTmLrW6gSzenKJvgSjfSD5nuUD7DTuc5a/SoOpHhjn110hbeUHtb+ujeEXdX1
vnwWALQPn4I4cfRs6z73sKWdTdhSeYvASGMU6gk3Yxx5xnhtrlEwoWcCDJ20Cdt2TVZU93oq
QkmzpNJp9ouMxq2hlVS0fZGCUUmInqGqTA0d7qgdNoCt1iD9lBkEbPTy94L6dBiqSuvN4d7X
cmBxhOS3OYx4nhsq9GotF1I1Y5nrTQK+fCz1EdtbmTLqf7PIPBgxNjIaLz4aOoOBlzaimr13
09qAPLQfL1Sp1mYPOw9HSPOhV8IvU/pyAK8XZ6HPttoj7jGAfGu0NuDnLBqtHnRCn07G2j3k
mWmzXv5FVZ8XuhumHL/SFY0uM49fHr8xfcj0LsGqnnWEbs/Mk//u7Xe+lop0pCVLXY/k1Vgi
Hy0P2KyrqNJ15jgXqxZ70KjLb3gYhUl9oMMijtGXbbRULPOJR+VbnvNLhwl9pT/zAtLq9Eem
lav7VFBum8cf0DH568vb99evEA3UeGXAPAto6z2jDakfqHcCQB3PMWZczr+gojGb/Vi5dmAf
NWVtpkT1hAuxnhQt3810ghWWI1/gmSr2kyqqSrR0oG2ahElUno4IeuRPRoUXf15nYi8DqB4f
jR6jat0hUy+e2S6Kbgna3HIGueHvVBu9RmLDZFE0LB9qagQjsQcSKu1IKp0AB59GJYEsSqoC
iy+K+WqkDfcIx7qc9Pe5FLKoZABRvYP+PGrZ8GsrifBB90gAxLpPksCdh9FytisqYtsOLvhO
fzAVBH7Lc31CCuCoA5qGwmlCQ1Fo98J3iNyEVN2Yj9UFoZp9xK+BVAcBQO9yFkRZbyzmFMYW
/A8YxoqNdisOCUAcKkxdY/igOWkHIm05H7WuWbCZfNTq1deO5xnpTJmH3/BQkO4e7tWQ8Yxq
tNjHi8ZC9ZgoMIUDyd2kIpFjMS0CjjNEgu+wRZzDRpLwWnOncc1bPxnUD/wFTbcgl2H9vG0l
Gp2sMMBwCrRGApsmgxTpJEllUjJtpsrm2IYpT64b6J8wuudQOWNxXqUwwUsytSzjNKUqBVPH
gD5B2HpLBrqGxWi1NoLAbIVk9MexP2krLYvjZK4fQG76+fQRkZNZY3q0Yuu9dEaBHB2wZlbd
ja2f9t9f314/v34VOoOmIdB/2ntI1n51GXkTHouOfQUKlaXVNn850icNPvDPuqIn6H1vxmLo
x/7u89fXz/8lNQBXXF+Yn+7+/ACRAuDtaVuOt264B8dw7LybjFkDTvPu3l5pek93VD2luu0X
5n2SKrws1R//KbuqMDNbqridTwnC4nJXADMPwb7hlN7IOonEDwdSx0uba5ZykBL9Dc9CAUR4
ZvPIbCkMs2TG9LqVgWprdG0O1NwZIrt+WIiHxk0Sx6QXWRI6c3/pkW+Y8a5n0jcLJg1o8t7z
iZOoZ6gGqkwsHcUaY/iUYa8gJRgp5fBJDgiwUHkgYIQ+uaGDVIkK3uOElYmb+Hv4VFuYuC34
Losw5NrlYUbbuxxdXtao86KV4VYjleMbAyM1kqL77nWAaQePKn0+YWNSQCE61gWIB+VdRzBs
E2yPGxUmH3uXvLY3nFhqB3ALlj+c2guZtUPzBW33O7IlvU1b3lg8e+K9vhDoVSuHumrx9qM7
vHe/nA+nIB/NSisKu0RMmsZCRwvBEDQYqMzwEa279ahunUfyuZhE9EKk7ECPMelEGrT1+o+J
E+EvphSeJNgdVh8Dx03RljEzwDhiZNpQIHJcVCbS2iRRtNftwJFGiMxviiaN3BBtoWSKA1t2
qYvdGCkccYSnmqZI7TgQWbNLk53sPuYkcNCi8lCY5FDZHjGvYi6P3QQXgEWjtS3GkgR7gobW
QHl/JtE9lK7791wA84ZcReCYZ7eoG9s7wxwJMm9yiG2XDkD0YWTR53SLvKUgaFELai6fR3Gl
sr/IUq4hyWI/26/dwhcHe7Nm4/JsReIw5l/P5EJH6Abvr+obX/yOnrEyZrjttMl4+FnG/Oda
q0SUrRWNURG2wXuK7sqVolN1g3+yQil2qGFy+fuZ/eRQS8Ofar00dPez2xX0EtteJ6QRIvI3
NEZk0obicnLD058rYIoqgICTc+w5uCsVnW13LV2ZUrw6FPMzS1UpFnvWijL0vcHDmKxjh6Hv
Dx1g83+OLYx/okCJpeMZhqzYHJt8RGIrN3wyla6maYJpG5rZqkI+Bh7STQKKUG1KXBYGe6qI
4MGGAIPOVHpboKZ3wxjLd6zmqmNu2nYylg6rLMhcF4gmtKJ0c7IHk7pAJan8/Z5OsvFNBF3e
pGJGePBGhNPd25xLfPjUksukzH8Rsu3L8+P49F93355fPr99R57vlVU7wpk8ol9aiPMVGY/M
6U02VKii1Yxe7OyvL+ymYF9+MZa9pa4ZE8VqXKZ76KiEgrl7MqkZozhChS4gMe50TGZJ4/fr
tF+AxI2R2Qb0BBWUFAn3dxpj5Ke8OdZAcZZRYnwK5n/IXpJuJuIaa3oGYPKTASki7ziAjLDy
46Wqq8NQXfR46Dx48IWMdOPCDIEkR5PwN/3KIDB30MyXJHf5HrrrU6ruqOnbyyfV8FFctkiG
sHAQaTm3YGUhD+RI1LSWc02NyjydOZuFI3e//8fjt29PX+5YFsbkZd/FdEexRBRbC8ZjgrBr
cFvJ9HMoiTgTswX4VblGGyj/oRyGB7h2nXoNNU3YVvJ0IvwsScdM+zZuvGneMiswcn3MHXTc
sh57w8vAssqNKyYO4DtCbmU2wg/HxTQ2uXdlwzgFHpC2Pdc3vSeqrjfKBT698iu2KeewfrK8
UNVnfHy0HZKIxAa1bD9pspLTe+a6xd4q/KbXVrBmMgb7pE8K3X6Muw2onciaKpxP2Puwn6wj
H+yADP6hwF/88lmcNVlYeFQYdYfLDpvtMlOgnTlASduTOddMfBUGrHJUds2T5rhP43ggueV1
AcONJ84G6CaRke9IggQ93Gaoqb8x8i0vhOmNTJ1gnszEnOr8+tGWB7+IVL/4VF7tAviTnnEG
XrLzs7oAWmXtaobMqE9/fXt8+WLKYMQ/qUzXn9zrTC128sulxW3WDMWktQI/1dgYUB+LfHKA
GbpvjkZBt7gI2Fjk3a6ggr8dM8Gxr3IvsQtLOqBScYsiWZVpbc3Xw2Nh9gHS2mgQKw5z11hG
GQ8FrZDb3DA/uHwRYb565O/OI5U8e8t+3fupvEsSxCRGGh3IYYRtPERXqkrX2r9wf2b2oHFn
pnYHiUIHm9jCOdTuh6mrd7sge2Z6H5spwbRQjq5+OhXxkR/cwDGrxD0d2dK6Lcfj22w2R8pq
FbA7i6km5UaB2dK+m7rGSslmoKtTc99XLop5n1SkI+aKM1EZG6CBRnhaW2TU5dmmWQF1gJ9O
dCHJFON3kVR+L5sAsZC0rE3cv//3szAqNewkbq4wyZwL4gVyKJINUVZ2+QP31mCAqvtsdHKq
5JoixZKLS74+/utJLSm3dR3P5aDmy+mkUd2OrADUzMGmnsqRIGlygMX4VKMxKxyub/s0sgCe
5YvECa1V8PGlQOXBFCmVw7dn4FMlBb9mV/mSd3lCB5vLMkcszyAVcC1tUzqBDXFjZGSJESRt
n+GV65xdMdHJMQhsJV8Ab0S2a7nXlhYdp7ua/aRFBEjkva3CpF/2aBj8OtqMkGVmbvPA/3in
YPWYe6kcmkgG4ThBHrIyJsqCg4jBvwpPRiRzGV8er75Tdq4H2xLh6Nrk7zbawB96vJOnrHIO
JYsH3HSFbMzNs0UxpXjMiZ1ceAjY1cgfWotCLn1fP5gV53Rr+BeFaYlrtiVRZLPh+l9gGTxt
BUz+YHHRaftIeDEEAaosUJxsJMeCxxtprfAhG+li8rA6W0UyhIelEC4GdEVHvvBZvs3yMUmD
MDOR/OY58r3/QgfBFClqi4wkmD6qMLjWT7GTwYWBHKQd9FIrhbhExlGIy+eHjzC0JiugvzXW
4XOB7RB0rmKcL3TM0G6DkYvWk+rWltVLZgn3moIyKLYCC50OPjd2ArRrBLaXLGPx1EOlpaEX
J6Q7I4wNfcc3Own0ffWMZUH0HYXBILp0J9d69KPQNTOFygRhHJsId/bWCZZIjjIlfcwc8mJl
ZtVM8WV/4eE2Jc0BvxNZuOigCdwQP2RSeFJ8vMg8HnqzJ3PE6pNcCQq1QiAciXx0vU6+5uAH
SAPzTRf2hdh1xebQPWWXU8kX3gCVD4s7ld2WGEYqyXAjibXQdIlBNcOF4ZIT13E8s/B025ym
oaR2aVEw2Z/ztVJOLzhRPD87qw7aufe8x7fnfz1hbiZF4MSCFlc21N/ogZWeYPTGdZS3KQoQ
2oDIBijXrQqENq/M4crTUgJSL8BCRxZjPLkWwLcBgR1AG4ECkYdXadQNalCOEP1Yt7VEOHLL
SfLKMUE83hZ87oxDVyOFB8+GufL8YE1cvfJY6ePUu1h5D6M791eb7yfOk9P/smqY835A33oJ
toJEWORQiPKJDUPhHzorcqxcEKNqwratC8MRbPPCI/YtQIl3xF+9b0yhH4eWQIuC52Rx4sXR
xf86r4H+aR26CWlQwHNQgKpYGVYdCuBejAXMPQO02Kfn6hy5/t5Qrg5NpjssXZG+tLwpW1jG
BFuEFvhDHnhmPalyO7geNlJYNMlTiRWGrxN744FzxPaPY0sIUZ2LYPOKgSlW5jGnSzo6tQDy
3HfKHHgeKoQYZDH/U3hQyy+VA5l8oAm5LlpsgCIHPa1VWNwUTzaKkMUIgBRZA9jZY+whw4Qj
PtLkEEZXcwuhQD5utKDwoGqxwqF6TlKgdG/Q83Kn+Nd57zuezXut4KmnoTzBhN7JZMyjEFUF
ctVPpxgFTeRjVCxsM6XivOhqR+m4+YfEgJ24b3CCliFBy5BYypC8VwbU+FCCkeFHqWgZ0tDz
kZZnQIBMNA4gylafJ7EfocMEoMDbG2TtmPOT4IqMqrNKgecjnYZIBQCIY6Q4FKAbeaQhxOML
BCCZj0nxLs/nXnvipWAp3a+XKIa10jEJVZdFvR4uymy/W/PO/JGtOjSlflVAzqOLtBMl46KH
Av5fO1lSPEc/LJqSyrm93i6pphE4SG9SwHMtQARnOUj5G5IHcbODYLOBY4fFqkpHx5HE4Z5G
S5omitAdR+56SZHg+xcSJ54NiNG2zGi9k3cEbNVm+MtJmQEb8JTue5gmO+bqm5iVfm7ycH8z
MDa9a3uMLrPghoMKy56cpQyBg7YYILubEcoQuj726XJ+vfPxdXQ9bPd1S/w49k9YqgAlLh5f
TeZJf4bHwyIIKhzI5GF0ZLByOkgWMNezlL2Ok9ASyUDmieSHPBIUefEZ3dNwrDzjJ/grl3GR
vB0sw3KR4d6qFr+oWLHJgWrshFQHxZEvOSh/zKSoOvCzL/NupZMY8OJTBu5D02ZpeMibDE0b
AOOIhT2q/+3Pl8/wDnyJgmIcuDTHQnMQBBTzdByoPPrLqdd2q+wDuuO3RCRYYNwAFoy7toDA
6kfZ6CWxY0TqkVlWbzxa+ZkLHvDWkneNkS4Dz3VeoLEmjyz4Z5g6svhj1MWARMuLhdPCaOry
D3TdyGOjGVEkN8TmV4N1HdjRoturFZUNdldighHlrd1G9My+rnL0XRf0JTvol5++LcTQSEec
feDuOiQGpGUYYqu1/iJ/pfkGzQ2NUSfeAdZ9hgp1YDllYwkeGNjZiNaZuetP+sARRHVTLQPm
OOm9SH70wWgTLdWAzL1m8sJ5JJl1OJ8rutVzWVeoSVIgDKcFUMyeelsvA0jLy83VpLR4tF+9
bPdlQzmtw5fd4FkM3Dbc1tHL/Z8+n/QrEEE1LKk2ukVB2RhQI6cNVu9MVnqCvn8UcJI6Zhnh
FhVJKknR7faGJsZHY+SjpyILqGqxjFq2R8/VvHmvHOUn5tYWM2FksgIwtToQp1ClLNdpyk5m
ifOnjV+TwbIqCnsyZBXjsSr1ag5j6FjCkTM4D8cwsfUbOJlItGq24Ri5GpGUOVIgUgVxpIcY
YUATyvuUlWTYgTDk/iGhIxxXmBkDD4pnedidHaZwa671w+wAgXeMxVZNmOrBtqVY+Joc8kar
x2KZIdFGcAXk+1T0jCRXTo4B1Y0qOS2Jk8RIpW70EcbsIuV6weWb66BXffzGTr4x4ZRYkyiS
OaVB1ddM865vKepiFWqSwyhEEzEmNaMnEVaXFVasNyWqh1Ox1XXF7EszZaFyW3amv8QD1dy1
L/FEhYmHnISAskuhjnEKRE7wzlC81a4X+3u6Yd34oW/I5TH3wyTFdwcMj+somvAbbP595Cfx
Owypv8dg2MwqcN3l5zY7ZdjtP9O+TPNmiWw53pc5DC2EqXleoKd4a0JtV66B+kBjJroxQksM
WuCY3/ruhNGwASqQPcUYWEJnpzkkg2JFwt2CBLVCZqK+Ozd0GxDroelkjGqsuJWEmoCHnVQI
Get7VCywSBaaKGUQA4iOsFCnBvtRb9L1jYaqpZ2zIoOTeSzSLjAspxwgzYdSObIYmOFtj8xW
2QG9bR+6ZLLGPFaSXgMh28zYNo5jNUFYxK4eM9n1/8YAIT4uPIYRuTSlJSMIVMpCpK98u7lS
DfRE5TGWn1BOYzwf2GAnEX6zpXLBNny3DFkR+vIUk5CW/uhRRMiCuuhcSwEFBx1WYCW4XwJt
B7wh0kYayUPMpN20kU33Bi5KJzZiDGsyC1P0U0y4vqgweejzF43FxapxzNrQD8MQrwlDE9S+
cGNSDe6lCOJs62dHrqHv4NnyveFuphWpU9+xFJuCkRe7+Gu7jY2u0pGPL8cSE9UIY+x8VmPx
8KIwS7z38wD97J08qK4WYo1paHEqpD4ZkzCujexnSnmiOMITWPa6uykAU5jYUzA89GFMSRSk
WPUYJHu0UCFlj6tBnmXkMBC1BNV4cKkn7chxLJGtuyRMHMboGyOVI0a3hipPIt8eyVDv0h0D
jvVh4OLF6pMkTC0Folj03sBu+o9xanHBKHGNkW85wFWZvHfqT1lCy3Dnxw67n5v7Nwk7VOiT
N4kjz+hyaRFoO7a8EtPx8ql0HVsSVyqHLS7PNK535DXjSdFp098aPHdmXjv0DW4MqvHpTmlx
rgs5zFclus/GsBx1IDmII493ykG8ps+cfbENPARfFUnYJHGEig9uzYoi9YnuWhy0Ybn6fOg6
Nf6AznAdyuPhcsRrzln6275auKnjaBJsizFfG8tJm8T6kLhOtK/+UZ7EC1Dti0Fxi0F0/x66
kY/KItj+ez4u0/mhh4cKV/PwRMcSVMKZByka5trLqR61GJhl/HI02F/tzdMUA7MVazkawbLm
px7vdPxOfHNpR6PfwEqQ/VZ6Y9L33AoS4HPI3DVrEqXODtUBewI36AeilKD5gqirAdutDxCY
JO8KZddbDXNbroCcCkWGPFwQtKEZS/Qey4drjrFsDKRrH6QSSEDWPnQ4cs6G3lLqhu467w/F
e8Wamn6/WBW3vTczH/KmMQHWvNcqL4lWnhJ9dVcNSxg3JW0WEL1S8ztC9M57haTHvBpU/1PQ
q3pARUq7Ve2hawuRgdKNU4grLawd0CODfK67rhdveWV+7mKmQiedCNIks5NLO2FLLEAs8qza
8SLO95C1pKnGUR8XRs3GrD2hcd4G5eFhblw0AKXtxuqouOhoyqLKGDaox2krHbb5HRogmvMI
XE9SkGln16P2KFDgh2K4srCCpKzLXMlg8162HAy9/fub/ORbFC9r2EU4XoKszeruNI9XGwPE
qBuh8a0cQ1aAM5UV1OtQDO82z+IHyJYFe9Mo5yB75VJrv3x4rYoSxMjV6MaOvYlQYg0X18My
EFirXp+/PL0G9fPLn3/dvX6DszepWXnK16CWJvFGU++jJTr0ZUn7Uj5B5nBWXPVYTxzg53JN
1YLaSIe0HE+OpcliYMw1ZcrpbwZ6a5VnsyxRqp2B+yWEWjS8caqT3MRYU0gj7/MWZmprKH2C
rC0ODY2fc9oSY6kVz//3+e3x6914xTKBzmsa9HKVQdlEWzjrR1gC3Uj9TkSk4G2M24QyNhZC
lJQsHAMVgYSAnylLhpe6XLtzrSBSBXn+rpZFvL4ihudvz1/fnr4/fbl7/EEz+fr0+Q1+f7v7
jyMD7v6QP/4PuU34nFyqjRR06XVPE4AbHRngjN6UTScHsdgQZQCZ6TVZXXf63Fg/JCdl9G4i
gZt16RnSHu+FaNMR4QfNQp5zUnnDtIeOypGrECQ8Ouh87Ss6UyrS1xbPUgh7Tnvhgl61CeYm
CoJoznPVPGUB/TBk2M73fhTOFY9Wbi3IocTKrQoi7e0Xp1IJc+0uhkyrDJISy4STwGOZjxJx
icc86/+lU3kwyqwhxiggfg6AHKddAGyvWeSNIW0HqpqRjNBl26iAcJAuzJiCuTLy2xCIzay9
/BeJhD0V3Jbt6cbSVBDSjVTWybkYU0FaVLsfSzOrpTSMZSelrAn8mG6a+6MxK/RARjJVTBWz
1QU89kb/CeQ6IiMZXMqxJK3lZBzXSl+chNFhRYyFdQGMTubWljmpkP5htha5JbwQ5xkhJh9u
6QqyiYpAD3xMCNFkXTZ0GWZqb03+K9i13sG6KEJqKmsbaQgzfKUpXK3FYdqRLYvj8/enG7hz
+aUqy/LO9dPgb3fZlpVU3GM1lMUoKUwSca7a/oLpXrIPOE56fPn8/PXr4/d/mwazvHVhe8GU
JPZR9ueX51eqw31+BW9N/+fu2/fXz08/frzS9Q8CNv3x/BeSxHhdLB9UcpHFgRrbbAXSBPXK
v+JumsbGRBjLLArc0Bh4jK4axAkZSHo/QN3/iXWG+L5sBLVQQ19+4rNRa98zFrixvvqek1W5
5x907EIr4gdIC9yaJI4xY8AN9lM9tWvvxaTpjWZhm/fDeJw5to6Jn+tL1u1DQVZGvXdJlkWL
q0CRssK+6ehyElqFqVYND3x3ZjnnwM60NzxIEGUAgMjBfMRveBIY2wNBhg2jmeZhTFzsMmtF
wwj9KMKtYTh+TxzXw9+2ieFaJxGtS4RdLKx9ESvWKjLZnC9wJ6f4Plfpou7aXO5DNzCTAnJo
ZEzJMfe1oE/xm5fs9Ml4SxVPIxI1wqguMrmv/eR76HWfaM1sSj12TiuNUBj4j8q8MMcqa80Y
v4wSsmDyQk2AqVs0dHY8vVgnWKz5sJWAxC4m2JSJkabhAG6TsXH4AW4LIHGk+/MxlO87FDI+
rbIi9ZMUO1MV+H2SIMP4TBJP9bmpNajUyM9/UDH3r6c/nl7e7j7//vzNaO1LX0SB47uGIOeA
8FGu5GOmua2Vv3KWz6+UhwpXMAxCswUpGofemRgS2poC9wFZDHdvf77Q/eWS7OZdUYP4qv/8
4/MTXfBfnl7//HH3+9PXb8qnesPGvuUtmphDoRejr22F7mCerlDlB5TpQgiFRT2xl4oX6/GP
p++PNIMXujyJIySjCenGrWrheKo2Mm2qrO8x5FyFmKiumslz7eKJwcb6C9TQ0BaAKsfy2qgp
MjMp3d9ZWQBWrWfEJu3qRTsKE8ChUV6gJobIZlRDu6HUOEB4w8hCRQtJ6XvrW3eNIjRAzvZ9
jOYWI+UNoxShxp7qvGGl28xmVob99o0jTM5CurufJaii0F3T/dzSyFxqu6vrJ6o9glgHSRR5
9rHcjGnjOIacZmRMOQfARUN8rHivmEuv5BHPZnRdQ/mi5KvjIj3FADQO9Ya75qpDBsd3+tw3
Wq3tutZxUagJm642dtNDkeUNtpcYPoRBa28WEt5HWWZ+xuh7IpYyBGV+2hudlCU8ZFgIa1n8
GacjY1LeG+KKhHnsN8oihwtfJpdrSrNtHLMiTDyjVbP72I8R4VDc0nhH4gIcGYWl1MSJ52ve
yOVVCsW31V8ff/wuLRuG2gHmSnZVBuzrI6TLwaIviFAtT81x9dasrbdKaifiRpGyKhpfSPt2
wMyDgXwqvCRxePzm4WqeACifLV+Ja5tLy25ZePv8+ePt9Y/n//cEZ+BMiTCuqhj/TKqml58K
yxjs09XghhqaeOkeqLxOMdKNXSuaJon65kuGyyyM0RgMJleM59CQylGf1yvo6DmWyBI6m8XA
ymCzvOFS2bwIfbmnMrm+pdU+jq7yPkjGptxzvMRW3ykPHfQMRWUKFFslpVhTTVMIyR4am7eM
HM2DgCTyVlFBM6qnKU+OjFGkPGeT0GPuOK6lrRjm7WC+dfDxPNG3JhJbKRoLTeOYUy3zJwZO
kgwkounYL3JFmS5ZujOcSeW5qO9JmakaU1cNBCCjA10H3isF7WbfcYejZXQ2buHSlg0src7w
A62s4jcfE2KydPvxxI5yj99fX97oJ+uNHnvH8ePt8eXL4/cvd7/8eHyje5Pnt6e/3f0msYpi
wLErGQ9OkkoKtiBGrjzmOfHqpM5fckutZNSqXqCR6zp/GUlFiqrD7k/pbJEfZTNakhTE545j
sPp9fvzn16e7/31H1wS6wXz7/vz41VrTYpju1dQXYZx7RaEVsFInHytLmySBar2+kc1wbxT7
O7H2gJJEPnmBa21ChqqBGFm+o+/iryIA/VTT/vPxI7sNx92PsQYIz25gsUdeep0u19ZeP0QO
Nn48c6Sx8YGNNMforMSRHUUtPegoFosLK/clp5T5WhJ3Qo992EdCGhSuJsA2kPcTvqJt+WIG
izyNzJxUPMkII8YI0dNbio5Tfc6MhC55Gh+dREZ/QNSpTM+aN2i8xqSAUTze/fIz84v0VHUx
Wo5RbU1C6+TFSJNQoqdVFMajb0w+OqcxvzkA1XTDnrhY7dSndUBvpzHCFQEx00KtODB9/FAb
jEV1gFZuDjg5N8gxkI0qcbrNyoTCqdGVol6JSs2OqeNqZSxzVK77kTHaqDbuObrpElADV7Ug
A2AYay9BvXduqN6jIGK1En8qXLqSghVMVyA5sxOfdVjmQvzvCFaY8Ql6jr61mmfICUG3CQou
x+KlKNlIaEna1+9vv99ldLf5/Pnx5df71+9Pjy934zZtfs3ZUlWMV+sEoqPQcxxjcHZDCK6p
rFIHcNe3LwWHnO4BratLfSpG3zdzFXTshF6Co0ztpvpEO9WUATB5UUdmbJhektDTBgenzcYl
saBfgxoRD+4qtSpS/LzYSj3XmJkJLi09hyhZqOv7//of5Tvm8PZRqzdTJgJ/DTy5WHNJCd69
vnz9t1AJf+3rWh/zlLS7wtHaUQGvC5ANStdJRsp8sZRbjgPufnv9zjUbQ7fy0+nhgzYa2sPZ
CxFaatB6cxoyKrbdABAeLgaOljYj6r3JiZoYhO27rw9dkpxqvbRA1BfYbDxQvdQ3ZXAUhYZ6
XE1e6IRYODOh3w50udYHG0huXyvfuRsuxNfmW0bybvRKjbOsy3Y1Mc1f//jj9eWuomPw+2+P
n5/ufinb0PE892+yGaRxELYIXSdNjenca8JG3bMYWxNWjPH19euPuze4PvzX09fXb3cvT/9t
1dQvTfMwH0vzDMg0+WCJn74/fvv9+fOPux9/fvtGJfGWHIueOIM7N/nyTaYyw5NbViuPNKpm
mqv+crX6rijk0Fb0D25mVRwqjKpaBwG96Kkom5j7/qJEBwcwMc/8jZYRp5KyPoI5jordNwR6
v1dMjgX9eNggtSwsQVqihozz2PVd3Z0e5qE8YnZe8MGR2ReXDbwoqeRHABvYXcuBW2HSlVTN
jjPUZXY/9+cHwsKBWTKqu6yY6Va5gD5qbpn65FO0Y15iBosAnspmBmd8thZRsDW2pLh5vaOC
znbFCAlQVtp9VFPDTq4WBlLVShC7hd5OPTvrS5NpBwyNWIy2snFFZGjM60VI9FzUeaG3HCPO
5Nzd5ktblMNwwbzQsjGc1dVi0ak1YteURSYXUi6DzHk9qZ7bGY32Aa60UJBZ6BWYp4sNvdFK
NMbUYlh9Lexpk7MZOUplAKM+KzpWulNCdXyTei5QHx3sY5A8epG5OLK5z2AlGjUpQAlCrkjE
PmvLelMdfnz7+vjvu/7x5emrMXwZK4vOsIb+smQtOMmFzJ8ch0qIJuzDuaV7ojCNkPznQ1fO
5wrefntxWtg4xqvruLdLM7c1mgr0IEbXD+03pKyrIpvvCz8cXWXxXDmOZTVV7XxPc6YS3jtk
qnmPwviQtaf5+EA1JS8oKi/KfAf3kLd9VYHx7D39kfq43mJyVmmSuDlW1qptu5ouEb0Tp59y
Y8hwpg9FNdcjLWNTOpaT7I35vmpPYhrTVnLSuHACtOXLrIDS1eM9TfTsu0F0e4eP5n0u6E4r
RXtMGDvXRarFf5LSovCB7qg/or6MVL5TEMZo98JTw7ZO6D74XCuHixtHd82gyGz0KqdOGAvd
PUd4cbu6asppBglKf20vdFThsaKkT4aKQHCn89yN4E0xxR4MS+ykgH90pI5emMRz6I/odKD/
Z6Rrq3y+XifXOTp+0DpoxWRH4mN3yc8kH8qyxVkfiopOzaGJYld1aY4ygQnTO9UfuvbQzcOB
jtXC8rDWHDEkKtyo2B/VG2/pnzPLfJaYIv+DM1kMgywfND9dgiTJnJn+GYReeXTQIShzZxna
U6Ss7rs58G/Xo3tCGdj71PojHR2DSyZLRpyJOH58jYvbO0yBP7p16Vj6mlQj7cBqostOHKPO
Amy8/k8kmKQ2DVgwgxFwlk+BF2T3PVoNwRFGYXbfYBxjD7bXjpeMdA6iTSE4Ar8Zy8zO0Z9c
XHCMw6V+EOtiPN8+/n/Krq3JbRtZ/5WpfTiVPGwtLyIlbZUfIBKiGPFmEpIov7C83okzFcdO
zUwqyb9fNMALLg2Oz4vH6q+JOxoNoNHdZwRju+Yd15nrHubNXj8On3m4OGkoHyN903hRlARb
7WrdWNjVzw9tnmbo4jgjmm6wbAoPz0///WwqjkladbaWkZx41zGeJqi/odXB0xLDSZWIZeec
arDED/DO2aXAlzQjEJgM/PanTQ9+XzI6HHaRxzdmR2NRqm6Fut1SEa5QN6wKN7HVcS1J6dB0
uzhAJMcMogZNQgvLYSjnO8NlrYTyvYcGfZ9QLTqHJIJqg3YiO+UVRFRO4pC3mu8Fxqes7k75
gYzmz+aWw0C3q+jOQPlqcWw2vlVBDnRVHPHWRt3uTt82qR90MlSn9rl8D8wlAKn6OETjJZls
211vbJdmNDXEAuyjLCteAxiMlx0mrFmQi5E9bzhs4kBOB9tJpsqQB51kcO32Rz4sW+0YwRAD
9hw2tlkJZpokWq9NmuyiZ1b2nUU4HgyS7h5gJtkNxPLqLjab/S6MtqkNgAYcqEeEKhDq0RZV
aIOOuYmjzLmgD98zO9mWNkQ7C5gAvg5F6jWiQt+GkXF40BRGQCrRmuJN45AdXXOe5WmH6nBc
NaQVE2cpw/tL3p4NriI/wKvsVDjJl0Zhzx9/e3z4zx8///z4/JCae/7jYUjKFEKULelwmnA3
cFdJahWmExZx3oLUABI9wiutomi5WNdSBiCpmzv/nFgA3wlm9MA3PBbS0uvQ5D0tIGDJcLgz
vbzdvcOzAwDNDgA8u6atwVKNLx8Mfl6qkjQNBXerRhLHuqV5Vg20SnM9UB0HDzU7jQi6qAEL
/2NzLDgvGOMyfk7eqK724PkI78GPXGXnBVUFFWRDknORZye9lhCDejzR0pOB7T20CR/VGTqG
fvn4/N8/Pz4joSf416QtE+MECXqwaDp4mYPXMy97rQREd2ghBox4rI9/nh30scB/w2PIdxu1
T69tYKRZc7UJDmzxsx9oZD8V/uNcuHjn6QJvJdc8sIUKCtMT7TYT2LWbVsj8NMiDJ9g4JnoH
lfrCMZK4TptQ9D4HkgvNJoVHyvI0t6XZrc0ZdqYDfKMjc/Xb/FAOWc82EXqKAF0wBrnVxycx
nOxy2ujDFU+lpKD416XevYe2Jml3opSZNRIqkaMWHdwWb80hwGc2aqMGDnm4aqqyTzTFcQRu
m8b55i3A6ZphW3fgGSXqZEeLCWkx9Q4fP/365enzL68P//fAh8LkV8S6vIDzBeFvY/T9s7QZ
IMXm6HFFMGD6JktAZccXwOyIjlbBwK5h5L2/6inK1bi3iVr0NCCytA42pU67ZlmwCQOy0cnT
22SdynfBYbw/Zl6MlJ2PzvPRsUcHFqlOOOEanuQHqEPeWW6a7TonsHBI1+SriRheABdABlhZ
/dYOt7Jgo+dNtIYLl/BWcCsotlwvXKYDsQVBIvpo4G7nMPI1uNAAxAuPHQBEacAl1gTW/nHo
ESe0d3Rbs8Nd4mosWpwCpTygZrVonlh88AnTHfsqGV15+26LBsMOaex7aGp8reyTqkITpKkq
Yt4QJNP3wkgfVw5GfX28Kf768u0L1wHGnYXUBWyxJK9n+Y+u1iNcHVtS8uXneARbOQnjF8Xr
Gc1yos60RRF+D+K4la+jjgNXhYfLaR83gFSYkuLCAv2J0VxM61Z5KlhXXyo1crXxYzC8wgOp
USNujISBFqlNzGmyV5/iAT0tCa0yOAKw0jndUtropI6+txYMoLfkVuZprhO5DJFO4+vjEe5b
dfQn6YDNoEgfDaPPq7lVAa27Du6Fkdk3VQ9pm1M7EbW0vsNlkqjt6NqMqyfg88rJd6Xtoe54
C7Z5xc6OEi7ulEzi9L0z/YQVw5XAHRRs5BzpX0ui+zUd++sCPoFsspxqZnkAGNsMNgjkUmAW
6hMndPlAr3yHaSdvDweS7LfyTM5qBYffj1P6T/HWd5EPok9TYnRySsAdGG15j3Ip1tnoNJK1
XAHgG0BBcFQSWOSAPFBzKuiY2CC98+0cGogqKMwNHBrgxChahheIFIyev4NTHlCtFFyydXlW
EkYLu/ASv+YEaxgJggh/M4ckb9tL506EE2lPKtdAUhiJpx2A26hq6ImhQ9ohvTRyiJcRLrTL
Q08LJq2PKxsQAW2GDoJfjBPlnbfI93nk2rm11E6MF3scIjZGe+b4qoHBUtRQ+A/0XbzRJltr
CHNOICTJrQm/ItaE9VKO2iiJT2ujWThBTnLNofSETDN0ZcEBtmnRQJJO7dJL8kB6cQjqLujM
1TWp6mhrhkuQT+ZiNwLJB65RbwN/X/Z72B1wHTo5OVlbBu+8ER7p6MlqtZk8NKkT4o3mgrrO
+RWH1hIFGEl470uUlPss8KRXHd9s+SUV8AiM+iyxUuujJTE0KbFxSt1ZNSke0Uzn4gPB7pwy
P7c1rNA1q3W0TE7N9B3/YbTWISn5djdyJ5zcs8qWfvyzOBSBHbvhdso7VqDOeoGVNnvglOPC
UA648K7EyakxuKUN7bdkdFYElrPH58fHl08fueqbNJf5zdZoobmwjo4bkU/+ra+yUDewNyJd
i0xzQDqS40D53mqPObUL70L8iExLunMtOzMHPo8Bou6C5ckxL1xlo1DV1aKB6SbU4OKuAbBw
VlTpX+0wtbwwak55HPiePeZ++rDZbjxlPGrZn/P2fKvr1C6DVRWX6iBQcQnbSaPNgmt4hd2g
kudMaXlQjfd0GJeUEoNQS3xfl9MqLe58+auygWvlFJu87DwcWHIVskEaJEJbjnsn0Zrkty/f
Pj99euCbvlf++7cXfTTLSySi+ntUyD3cURxNubBgbZpaW4gFZjWHHY2pcKUl3ABwXcxS0nUm
aJz2SMwdlsakuhe0wPrCXKjYXXJdqbWErMIDM4un8WaNBGNeuVPi4no1ESjHcGF50WHllXpZ
VlzQhsh6vTI2gx8Q3jUE3XBoLKDkMuxUZx5+gpvtp6vmySD17TGoFavvcJVJABmD99yeWVDw
JdojEsVIAo7rVhnaOjmDucNKLUfrIaN8o0lRk5SW2JysjWAYuNIdedCVc06gTM/iAmTnvc0k
gw+YTCVp2XtMrmufr5ZUJDPngeumXUPvXZ5SG2H1gbZl3SKCsKhvBTGPcQQg7uvKvECEa1fV
N5tap22dIymRtkpJgRRrqj4rAytio8nDN+yEKyulv1seOy0rljrO28evjy8fXwDVHX1OKZ42
fEF17yvEgExI+8Yi6czSqkHeIqoAUE07DBsbdFftGsOls84MBFYf52VxbTQ1tpSd6FzPTNlq
+3QstxU+Vj59ev4mnGg/f/sKx4fCRfADiIePapvZqpz0JSw1IyQzANc3UGMCMIVazV/m/6NU
cun+8uXPp6/gf83qaqPY0v/tKL91YPcWMB6PWLW9VJGXO09QTN6Nta1EOFbFiigRScVuHa5O
p4gn0xqy0hh2PwljfmtY2LOFPf7F50r+9eX1+Q9wvzdPVTO9fKDgtxwVdmCEtQZeFlC+wrIy
TUmuFuvfmKyYfHuTbm1tmrjKhOBzcnYRnuhdYTHCHe6wso2cecrkYJ4lKRhXbd797Wr+/3z7
+Pzfl4c/n15/cXcFWrJwNTyQVoaVozng+Wkb+HSgV80F1HePFDvPlYBEE8voNxtd60dMilxV
DbYyGjnfWqt7dmwyomf2oTe3hR96i4OlyHAWtnlVOoZGHnsHjEctm5V5yS0KKUWQytq3kstC
PcVuNoBbOZwuByQtDhDrUFMkBbaqHioFp2M4F5b6uzBG6fsQK7Sg62GjDUzzaKlimEpH0m0Y
+j4GkAu2H5gwP9yG2JARGG47rrP0jkz9bWwdcKmYI4q0xeZoIkB3zqx3vqv5RtSd6n67dSPr
37nzHD0TY4jv79zIcLq52lDAb7bhdYdOGQHgrXfVXFwtQOf7Wyyp88b3kO0D0NGanTcb87p0
pEdhhNPNO4SRHvtYQTl9g9UM6FgfcPoW5Y/CHTahz1Gku75cpFcSxagXCo3DvG4B4JAGuzhA
anNgQ5cguvYUo9kkv/e8fXi1tuYCa+tuEDdHhgG/zdmFUYE6vtQ5kPJKAOkuCURowQSE3/wv
PJug2OA+MzSe6C25IrmQPpAA0uMC2KKV3QQxMmSBvrVOHWbEKqGLbe0aaWLre0sIYHyhjzp7
UTk2qLQWCOYJRGHYFj7eCtsiQIcCB7CpLoCdC9gjq54EArzgECNhtdJ94G0wkQDANkBk3XhM
7FABAA2iA34bPzFsPecLmvkIAxlq4qoMHVICWRM6ggERuPL2DaWHWOWF/RvSOaD321T5NAJv
KNpt/XCDVYYjwQb3nLOw7EIfe0ygMgRIfSUdX6JHDF3cM1bG2FJ5SkliPJ8wIEQlzcV8wpYA
eD88tOfQw7TIvCMHWmCHUUW52W8iVIMr6uRUkYxAZN+1g1i4IUeKCjELdt4OaUmJYPNxRJBR
IpAw2royCrE1WCARpl0IJEYUNQHsA1cJ9gHSuiPiSi3EZP+EjOPJavwZ79LbauMDm7MpI3TK
y8qvibayK3d7Px5uYLk7ndms8IyxHG2mJin9GFOzAdjuEPExAvg8E+C+xyo1Qm+s3hMXOlMB
3MWI6BoBd5kAdCUZeh4yBwQQI/02As68BOjMizc2MkMmxJ2oQF2pRr4X4KlGfvCXE3DmJkA0
My6/UNnbFly7RUYRp4cbTCa0TAtkoJAxnZyT91iu4GcYyxXoiITg9NBz0VGVXyJvzPGWRZGP
ViaKfbQ2fJOAFluPgKDR0WJHceRIJ0JmLtCxES3oiAgUdEe+MdodekwFjY4IX0l3DDSO7ZBV
VNJdQnlEje5C2Ph2/Xu4fP+7uKI3BohyT2ki+WaLCTRhf4ieYE3IcixuMYhHy4T/awQzXjjm
exyHAjcdCNp3Hl0Z4D4IVY4IU0cBiD1UlR8hcz/k4HL0PYc3ERrOauZgBFV8gR5hncNIFCDz
iNOT/TaO0VLABQBZuxJipAsibH8qgNgBbLGJxYHIw+QlAFsfqaoAAjypeINt5kRgPWwbwY5k
v9tiwBKkbhXElx+VAZUMCwPaATMc+v2aecLCF/RYtVX4jZIKFlnWleK8XRi+qQhRRX9MJE16
H/V8MPN1IQmCLXbT3smzBDR1wCKXLaLgkNcr6Me3IvZWCyXiEmInRjJgITJIBbBDs+O67D4M
1+SP4MBSvRV+gCn6N4hYg8yIW+kHkTfQK7LC3soAFeecHuD0yLfNVGZk7SRuNkBAPuX7rbWW
5wwbV6473AGtyoBNX0FH+tJliAKWq5iGBnQ9Cp2GYG7MVQZMexJ0Z5KbtXsOYMAWAEFHZ6SI
qflGA263qIACZLfe47sdtiWWdFwWjRgqMIWpMV67veeqnds4eWLANFWgR+gZMCCrO1rBgHfr
HlsUgY4dKQg6evYkkDdG1n7nbBA0NqLGgCg9wi7K0VB7R+n3+LxDbbgEHVHRBR1RDAQdUcUF
HS3/3sNOB4CO12u/xXZYQPfRXuR0vMk7AvEZV3XvDwVfJhxPYmcecX++j3HPxRNXUW52ESo8
4CxmG60dkAsObD8kjnGwjU+Z+OF2hx06FUHsY/K1ZHGIbfUEHd25ciR+o2kqcN69unYDxw5b
HAUQIB0qAaQGEkBlA2tIzLfZxOHEWDMpML6Wex2wZnXWVG50spY0J4txZFOe38gXdHlqG1ed
VBtC/mM4CGuMO1f5W1pl7KShLVEsES/y27lY8PX4sMc2V/v98RM4FYcyLHYU2qdkA24L0QoL
OGkdpvYCbRqHo1WBXuB1FNJEosK0OKs21EBLTuDB0Kxccsr5r7sjnaS+ZKTV0ylJQorirhOb
tk7zM713VvriVZor+bvxFAqIvEOyugKXj2paC3U4YnYz8CUFV81HPTVa0KQuDdoHXlKdlNHy
kLd21x9bzMRbQEXd5vXFqjBPWriIdHx2vlM95xspWN2YqVxzehO+KV2539vJgbT2XZ6Q1D1m
cK8mgPxEDurFA5DYLa9OxBhEZ1p1OZ9CtUEvEvFe0CBSq0ELWtVXzI2XAOssh/lifTTS4UeD
mdHNDGrvA7G9lIeCNiQNLCjjapEkznkB+Xai4FTJOcZKkuVJyfudmqUseUe26Otlid6PBems
urVUjmzXZznYCtRHZuVWwzMK6pq45aVguRiHepdULDdTqlvjPa46rUnFuNjgQ13rSYXsbqmG
MlLcq97Mr+ECBxwuuAZpU5BKeLhMcMNUKW7ASbIT7kjuemMsYWER7ii38EVW5NVZb7mOUVJa
JD5W+NpADRHGU28KWzS0JW5EICY0OJQlnS4q9VLDI4Cf6juk7GRiuXN2cSnTUWqsjOAcMStN
WnvpmPnaXqVaUvYCq+jQdKEh2/K8rJk1U/q8KnEXFIB+oG1t1lGF7ylfNk3503G5VLdgY4jS
E170uhx/6RykaLTg29iqPju4R9UNMK6c1AbF4bzGO7+bVoizztEdhvqU5JaDs7lZgGP01YC0
SqmGR2puLXgnoBjRCtpZJsOhqFU3FTNpdB3xbqeoaKCdXYirDMMYU0HGmiuTf3Xpv+CTh9O3
l1fwWzLFy0hNm1P4ePIeoZBIW/I/mrwC8mion/L/OwrSpSfkMyBy4cKO2IoOHPIZFLxv5Kx6
URRIdzYGoDRXxsar+LRPzA8md2Cu4qtHA6JhS3H+3xpdx4uJ1TIX7vBSrqahU2zmEu/wKlJY
rArjZBVtZuO4aRFpn+APatssUoS847YuPDPN5D3vIMdXp+69MUbls2UzjRL1TiI66aZcqZdc
U2S5Nu5HyjwOx5i7v317/rt7ffr0K6bhzx9dqo4cKV/Lu0uJaVhlx/Vja6p1M8XK7M0pU9Gb
4QoEfskH5hhtmJQPGxGqAl+SVcEo4EMLfpMqcHBzukG8lSqj8wNVcJ1lGY+Lz2zrcEEmhPla
3F9JrUIviPaaiw4J8FUV9yYo4S6MN6ibMgnfAiMcq6wRvFpHjywXWDWIla2k23dKWut5EDRr
Y2VBCz8KvBAPKCA42KXl2xguNSrVW4eAhNs0z0pTkHGDywV3uHwb8XiDnanM6D4wuwuonm9S
4RBDPWwWRN4++0i1o1Kpk38vvURAdJanCfebjVkcTozMLIomivoePGqUqj4wY3pcrIW81lQc
j9eautlFHm4VN+FbNLTnhO5iu39FU6F+12Y41sPsCrr0Tgd3nAzVlgST9KZnfSs96LnrwXUs
P9h0HnqUKkt1K40mb2kGYY1sOZIGO8/qOxZGe3uGjn71XJlax3FyRiUkjlR/cJJaJNFei/Ap
kyD9dhvvzTRgDkV/GcSaaXdEgnZmaRDvzerkXegfi9Dfm9mNgLzQMySnfEz15enrrz/4Pz5w
Je+hzQ4Po1PCP75CtCJEG334YVHcfzRk7wH2LWa/cHUgseYHl9GeJerKouedaBDBjYGZYpNP
Pof17mNciS0v44x0dWKXlaG/8dT2YM9Pnz/bSwnjK1Cm+dxTyaY/NA2r+bp1qpkDLVnqQE6U
K7gHSlxfIt6DNTxpLg6EJHxzlrO73WgjgykUca7RGdOgt69oyaffXyFQ5svDq2zOZRhVj68/
P315haBX377+/PT54Qdo9dePz58fX39UVRq9fVtSdeBf27mUTZUmJW3tNXyCG2IcZLnY4JTW
OWzmdtSfPIOb367LDxAXSDnUI75/5xoMyQs4dZ79LU4Htx9//eN3aAvhS/Hl98fHT78ob+Aa
Ss4X1WBHEgbY65NCX89m7F6xEy9NxTpMLbHZmmQlmaYuCmyFNNguacNapJwCPVSdO4eUJqxA
XfmZbLRnK8l8TyJnem8SVykLnoI7fTj6ejP9rjnrPkE0lPVNu1YDcBOIXmc4hsmUCwXLcr7c
gZ/FLmnVkwcBjRv2hdoy8ImgeY4HktDC0dmRgj04+KK0fSNx6HA5Tt6OlKF7rxLw/K4altwE
VTtPGD93ZMqhoayvdHR7v8Y2xVJE4x1KFi5RG20gqnRYnBgt0fY36jjP7Eu/RNRbTo7SzWa7
wxSHvMwg1meeD4Yj9hPz4zPqpbgRDqvljgf2/h1Rg4o0YyC2ms3YP/6xJAuBKcGV8qEAv6Bo
46ksmLxTcGPfNiJqNcBnOOZhUoF1iSUpvOzVBS3dNW0wCXaFmJ/iKy0xQYVD6m48uOLSOiPJ
3RqywovCy7efXx9Of//++PzP68PnPx75Nnc5T1sClr7BOhUpa+n9YDgnYyT7H2VPttzGruOv
uM7TTFXOxNos+eE8UL1IjHtTk60oeenysZVEdRM7ZTv3nszXD8Glmwsoe17iCABJcGkQBEGA
orbdMAi7gfQNbRxdpsxT80YvMn9tXWZDeG7U9JMVBYFcRWEMb6Vl9UI7aQo3YqrGRNSAumiS
/lBPlphOvoVAjUlh2RfED5kttK6dvcwQQnTFhtg2JaW1eZUMsDEYttIXvj8ORhEVHKgtL9rj
l+PT8eHueHF/fD59tQUTTeyEq1Afa1autxQA99lBh9RleIyxN7ZrN7RlKd4jdRSwvTJd5PXc
fgFn4dqblf0QwcJs6ZU4yaEoltjvkxxEE0HQhfcU0EMuMFcpl8b2dncx8yjGdmC1MOtyslrh
qCRNsqUbj97DeiHZESKZy7lPmkglOiIf/j2OZJuspNWrVCrhzCuDNy0bZnvE2eUPFP5u7ByA
AN/VLd25oIJNLqcrArnFU7qJdO4APgbn2WlIURKGcuMcxS14fagiJfYJvrClbT2Po7bLSAfK
spmGKZowynW6nKxQf197sukhS0WltqIvxz2BS2/mAuuPYmUs7IP6AF2i0Gsfuib0hhQ9n3hg
PumTpIOpwxEp3XuIpJzCU4R034SIlf3QVgN7iKKJQ/sNsbP6GNSNE1/DGjPatHb0NUMfxu80
mG2L2QQNtnID0Yxg3Gpk8AwPAi2l5phF87VFsqVCtl0l+xlqRvUJryOLUiBjjlUe1fItVMvr
VbKfvs7R1dR22xe7WcYF1M6sx3i3RoktxOzKtRTan5BQuVC9sTwkevt2Bp6Wh1WJ3XoNyAot
grlaDMid0QTow9fjw+lOBtYJrwSELpZBitVkY8xCdlM2Vr3oRufBJ5su1m+ii0yrT4YfGyyi
w8QLXegiV+jbdkPDhaAwk2Kuh7EhQ6caXKrEXOMuPZxq2x6QBvp2oCmVx/vTLT/+C5odJ8gW
4uCqxbObmIznUzwIjUczmZ6pYDIVO0Aj2H5LPXB2Y65PWUjzodlAmKJP+Bk6pC/zTZJjBwSE
tHy19f3/q+19Vr2N+mp5haew8aiWmLurR3Md3bQlUvXyLY0JWjUhbyRGxiZOq0YmyunyCvUK
9mliW4FC9hnfvoEhSbqlueIHo1hNZrgCBSj76UqAGtYUTrCKl13NlIJ1bpQkVUL8CY2SDt9X
nKLppOtBbC/yyPCrMZyepPgFb6z2Cs8cGJK/7QtXpK/MhlnD53v/5s96tfDT6sSOtY6wxs8w
h83bNO5o8FyplImDB/4K0tb9/dC52eFTVcMlfXk1R+0GhqBLGVPHO/sGis2S6Xxy6ZYcTTgS
O7WwKPeSbD57jUydaXO6R9M8QKxSjH+JYAnEdoghZiSwt4Dj34EiIPG/OrkJtHCFa1rQm7vq
KqIWB4SrtxJeR4IWKZaS7vyscwjsGZx9MJcgec7dlKAOYaapj6yhlev8MsKk+5Rjlh1R0ZVr
0cAT6bONmkC1CAKOtE7TLCv7buXlcbS0Kfb46+kOyfSpEgrV1slZQcSRbO2e4VibeOdak4Eh
SORkTnsKgxnYdVBQ7x4UIohIf56wyvRjT5p1tMKc87K9FB9mUJAemrk4ksYKmvDbPiuQlCUl
/Wx52R+asFbpVncV1jqaPFtI7BtrFQ7zQZ1tGh8wFc/WT6PVVQsqpj6oSUajPcPcnssIlbHG
qiYpl2bMrDVAUkhY1XOehMwTVl5Pr+J16gVUiW8mpbChdMHiStcH4ApEgINUGWeDCeIFYUtk
Zg4syoR0vp6GZboZNhoDuhLfXZtFazUnHWTtVXImuFjQpDnTgB6ALC8jzlKaoGjgHThqgVIE
DYW4AVv31kTjhFCcTaM7jZycBt1NFdKIHATaF00oKRrmCCjS6kWD6xric4N3KWtSnBkm0upM
cmCBR9+OCor9spRXc46TpEpB09j5oXVWmgDCk7XuQ9AnrRqUCQ/HwUTjtw2aYPjNeRmuC2ne
7NsGWanjOuY3cWkAW7n/dSpGPoAu6/aUbfWoJaV7m2zg4mPEl51WsfpaTDPGhqmAl87NWjZM
E4/u98Crv0m6WLgVJJy6ySbNWibVpu4PnET0cP01HCJvElbyey9bzN1tQE6cSwENblDNQzUH
CWY2Tbg2AM4bJ0uDGh6ZkQbSmvMzEpNB5lLnDpzwRMzv5KzIKmmxzkjHo0tosPGEMkshBGNi
2s9aoTz80HQiNlXYUgWXV3MnOzKqiwwFiWC6tmzK8L2XW2svgAErHRJzR6npBhabYja9lLS4
lFB7u9jj2o/iA9V1juveKAWxCgqeiQ3WL6ZMn7FCymIaFNK9lm8QkFIy3S9pEiaOkpZEAg2r
SRNvNEBmJGW688BSQ+9LtnGhMtuBx41sTrSEudVToWB34t89MQbU9vjj8eX48+nxDnMybzN4
QgO2ffTgiBRWlf788fw1VFTbRnTAMk7DT8Xuxn3y5GMA4GMt1wLDjdOqJSQhlY2fak/5Yol+
/Rf7/fxy/HFRP1wk304//xs8be5OX053od87qHxN2adCAaIV0zl5R75ctBlgk7cGUhAEI2JS
9VR74pzPNFyaRQnr0CyBVqqehFZ5HZYXuJGfaA1Z5nLtVVIODaBLAOue6jd4LN3j3YbX3OoW
1JIU8jcIShCmTh4xC8Wqum5wzUIRNVMiy+PMhjyNmoPOpWc/3x4T7OWtmc/10+Pt/d3jD69n
9sFJnqjkk1RsxxXVrYV+zLgjVtFqZb3VoXk/pjPbPT7RHT6qu44mQsOR6R/HPnQCxgo74U2X
OHuRzN0mVHfcKz5tCJlaPoxWoTZpnAQIrzGq3ET/pzzEhk7tvsl+en7ZylmCWyC78aBedT0k
To7//BNtT50rd+UG3V4VttLeOeb2JKxRP6AZTWbId66luivnxUfVkiR3vXAEvAGvvo8twRc6
ULAkcosByPHiwHg0YbxJrne/br+LRRddzGrrAveqXYlzIynAbgMZHlL8ZkwJcqFv9AwTZArN
1pbtSoKKwl2oEiiEPx7SQGJZ6bvzudgUyscJPiYVY3HxgY6WvSq1su1o6J+YgK/Icok+grHQ
s0gx/CrGIohcNFoUJBJKeaRYv0qRoAFARnw2wflHL4lGtBMdZoROUOgUhc5R6AJnJxJdyMJH
+nEduROzKPBITyN+hfc1MgRuD1pxiPDTejllEjtUhgKV9dpxxh104k3rhB4Y4K+K3dEWP54U
tbGd7ZEyGgmVu6FNNKIpscPYgMS0Eo0c3vtAmJAmkgC21lmdhM6+rwtONpmhdubYkM0CMnzG
gR4/FXfS/KXUiEDbPJy+nx78zUgX1Il59klnC26khMvGZ56hkuptiq111hJDne3zNtuh08ET
eYEie5H983L3+HCRHv99EgfAQEdWxFYuHmviJCZn5HqOOj1oAv1mzwWW5DCZL5ZLpEKBms0W
mIPfSOA9utKIwavNr7Lh1WKywMWqJlEbitipxWEZDauu6Vq+ul7OSNA2KxcLN8qpRsBz+8gL
RbG5OUkQ4XDdFJPltC8b+8U9eIgVQmnjjhatnE36Kitxv2Jx3l7MBF9o2G1pI8zLZNpnazeA
pUlwiFdK0Y44JjbxA+RV7kwEAOVraJxVSNwEpr4oFg7X1D+3evgbb4FqOGjvsVJZW7g5WSVU
afNRXoz5O1KpSlHtjoc2O7rALV3vuQui5cYH2GmYNMSOaK9B2pplA3fsanpJXKB8DjvzYQn4
UAodlPsjETduA1aeJ/0ioLDCi4pomcEryIYemAvQiecCSxjg5AtW9CmpxB6CNRBmz7SR2p6K
mxElhd5N/WqRwC8uPnZPLJFNRoKegfknXh3H4hkojHfzOADFBMbKwOWVO+Zyy/RANHOeq2vY
tg0+eP6x8DkQoL5A/aIBq+673Eo+Dw8CaLu7uBObHBIfpd3pybCE5kacr/YzDNZTzmJwfVJ2
0dWeupZd8eFSNKKFTK8B/DhCWdr6CcWlp1lstOIJlGwo5ng5UImuWsqehrafycSgRuM1E1vw
JYDP2ZWTzmfXVLpdKaawySItp+Ao3TdZqx6kjlvc56phMKLRLUZsgs72ItofLv3FMKVZxJwt
JJoghZhI6FEe0BUvO8dQqjVJaEJs5mtaoWWLuq42YAhrEnirkzjGAH/ZDQ02JLnp/ddB8gGn
wNUJR4PnkRbCjMGcSbddAeVtXRS2jfE1DOFbO9a2Bh7YxA6JoaDhZqbhZ7YzhwJ+JZHrG+14
zFLsgaZCiklZhq2r7PUbPMSLIoEQXRRbuBqt9ie/u8HuY4F18EfSrqO1Vl6SbgUdLmuj5QYL
is+PRDRp4sPdlzoa5sVO0lD4YspmskCGURwAIIXnmVGUfjhRtgfvXr9RywMHhXs55RXy86fK
ESPaz8d4p/uO8jiVdlaX8r7Zfrpgv/5+liecUdjrYJm9QI8sWEChqze0Tx00gI1KI4Nhced4
C+jYAxnA6YsZq16nqE6JLCrG435IppSxfjIlQIdf44Z0MyGQKO6aPRKDm94byWQXgPZc5mYo
IgPVqMHCgkgBiXr2IWtzB1o90oCi1mnFeBpB5/tgbtS7D4l0ERWbyglLbQcrWUI6oBFOELDT
ssVRyOrgKlO3YtfjODJcSgbDxLfgRiVwsKTY466TQAV6hnrmAPxGxrikByEoowtPX1V65T0S
edcZb2JLQcrD3og2wKhKVnZ20Sph3e/bwxQcg7y1GBK2Qulw51pd9c6WC4AnRSdjAIbLRO5m
ZtrdBatQZ4ZyL06avWhCcNjxkvoVGPxKhvsB2YPXI84S/XRViZMas1PhOahwHQNKLUu30bKZ
neMZfEuCUQBol7MQeGABbZ1kRc1BK0kzr4TUIsJvRd8s7+aXk2uMZbWliSnGLN0Dwa5skGp3
4cBIuIw+CFpjnpW87vdTtFGg2jI5wtGVOFaHWTft/q0urw5h71sir6KRfsOBEbaZWSDnbSJj
ZJXfjJsvMMSnjIayZbTTBtJq9IH81GTe2tN6btr0e6FA1yhSypE4Wjfobm3a8iPWW2xvNBRq
at3Si2Y/nVwGwsMiGVQKrLyNjG+tA9XZTZBxdb6ezARDYiSiH/hIONeEQbc43c4vl2c+XHXO
EXjxw5soeaKeXM/7Ztr5FadEKyiRakl5tZijH7NKVv+Rfh7B0lyiDxGuKBV6H8QjmPnNK7Uc
toL4tqVosjJmXwRNSpm5QR/07xP1kcrV7IZ+wGW6Y1qgaZGJFj9ktidfmTjfpvgJql1giG+O
T18en37cwpv9H48Pp5fHJycQxLjx9EmCnbil4dX2cDU7dp+mrcaMPTrTmqWUkzDOCnm4f3o8
3Ts8VWlb0xQdOkNumEqJdQiq9mVWej8Hs6sDlIdlGtACuE5qbs2BtihnuQpI7ZAblToD76Gg
MoNV1Q29U0hw/5UtRa+/ZYvxa9xdDm3iZx8jJ+NVDCQeBw6PoDZ6o6GHVH7eEKHD6vQghtCh
2udXQu6Y2kL3m4BVt8FqD7H9No19/ZdMwTHOa016ixmYSmDw8eLl6fbu9PA1NJwx7px3xU94
UCC24DVhMQOOpgCHSO4XDkIdWThWd21iR8pySmrsEBwNNVmB6LFzKxhIrzIujJYiA2ccO70M
aLFzIZU1nCJQE7Z1DLQcjusgKcSp3JIb4ldfblpzXrc59XE9QVMxaUfGphWaixenN0BJX0u0
DUPKIsn1BkIQ3bFOaOnuhBAekDTJ5pcRXEmS7aGeIth1S9ONsyI0p3mbZZ8zjUe/Y81NA1Hr
4nfEspU221Db1FHnOFwC07wIIX1eZjgUOhgMucGdYd+hU4zE2AcqknfoxKqttveNQcO+ZQ+4
ONBBaF8I3FPVaeZidPB193bWQqjo5yMDI4ZAjCY8FpVD5UdFcagY7mguUessp7nHVZ1YyhXP
BpEn/us4Oukv1gYP2gTEJhbL5pANzn/lr+8vp5/fj/8cnxAnr+7Qk3SzvJ4637EGs8n8coXv
aN0heuMrUPrB1ujNhfAw6EliV2rs2IHU9Q2G32CWjrXHClr6VmsB0l5enl+UJQZb8f/KUcVs
KOgOccyqLM8hq3PIXQQp+a2ZUDQcTVaIAaDCBrpm3B5kz71BTn5+gjh8UjF1nOT24mCYEp6J
dQe3HwyXMwycr20NNjvwaW+rXxrQHwjnjsgwiKZmVKylBDe5GyqWJV1LObbXCpJZn/seD7M3
1T17ve55WPf8TXXP31K3F6Rfwm6EZsWl3701jh/W6dT95ZcVrZXrRGw6jqWaipnLmTMlA1CQ
Js47YYtcTRjC9gevtg/2WLhg03kX6rEtCTnhFJ5GOSN9kC0hLGxyNvVmZc3bgHrUwGmhSuCC
eBprB+9ZdoAglP6iUDCd6aFuIk1Rcb4DCjyeXg4B/5L2U8PdDdoGC1Vh4zQtsPssssRypuJN
jnWlA8BSHiVIRiXGuSZnolbuuppjm7CEe846pON1zuaxiVDo6DR1kKgKx9ViBAryyUMrcXZ7
9+3oSLacyY8EPW1qakWe/ilOPO/TfSqFJCIjKauvwdiMLp4uzc0aNZXjFaroozV7nxP+PjvA
vxX3mhxmgjvfXslEOQey90ngtwlwDNnkGgiuOZ8tMTytIRgmy/hff5yeH1erxfWfkz8wwo7n
K/uD8BtVEKTaXy9fVkONFTeiZPxSuREQ2NEQkO1HZ0c7N2zKLPJ8/HX/ePEFn0FwpsKnT2LE
iblIWzsk3U3WVnZPPWOD+jN2y1hLQiaGKaRMhZdVYVud0ahbCJca/yRIGpNcJPekdCblh7+V
GaCOukojjjzbWDMCAXmFnJbWWY4APKG/9tkLNpVBxHsQXdPlyN2A+SikoEDmeUSOKUImjuyk
xaTlUFGgqwyY85v+QHZm11c0cOMCQTlBoNeNicDnVfS5oPg9l0IXn3GrpcK24DYWbb/t1q6X
hGarFBJCHJPQi2GbpGlp3XqR1208o5/xA6BNlJN93bWxbggOY8suaUnpfHXyt9p7xTkvQKjY
9KPyv+sI26I17w/eQoTQlwcHUpceybYJxNiuOszjn63AXsWxrW4ANzczXqPv5oT02HtMdPFq
sjbcaI2QLWzbacGMFHe2hFFeCwKzq/RiV8ErHEm8JNUuDo3C65Cs7ETVHmYaxSyiTa4WS3R8
XCLUj8MjmcRav5rGW7/CrtU8knm04jPdurp6veLraPHr2avFrxeXZ4pjd18uyfw61i03fTXg
hJYF667H7QxOaUha/1rbgmbiNyGDmUcKmua9GTbgKQ6e4eBo52JL3+Cv8PqCr8kgrqODNfQn
tvgGgjne5mThwm9quupbBNa5sJIkINzs/KcGnGSQMAuDVzzr2hrBtLU4MqJ1fWppUWC1bUiG
w9vM9sU2YCq4IlXqj7BEVR3FfTadjgr+ImMMJLxrb5zg6YBwNeuuooljs9QAsUW3JSnoZ5mx
dkgZYKucjl1HvQs/3v16Or38DlMc6CzD1q++zXZdBiZO157QZC0TB3UxLUDWCoXR2XI4JLTM
ZMbeyMajzrEIydh4n26FTpSpbLy2qq2Vqj4V2qp0wuMtta1zhsDdBnNxMIfjrbpwQe9qREuJ
PP6CWuI/gEfRkFll+9cf75//Pj28//V8fPrxeH/889vx+8/j03C+MeefkXFirb6ClX/9AWEn
7h//8/Du9+2P23ffH2/vf54e3j3ffjkKBk/3704PL8evMGnv/v755Q81jzfHp4fj94tvt0/3
xwe4jRnn08p6d3F6OL2cbr+f/vcWsFZ00kR648Jhu9+TVqxlyk2iGEtzwqggj6hrOaDgsAle
wRGd0aIgRWE1g9UBFNBErB5p/BA6npWwJ6gJ3mKJzzmS08d6PIyOkUHHh3h4i+Z/TIbTQ90q
RdT2uJc5RLxrLAkrszJpPvnQg53wS4GanQ9pCU2vxFeQ1I7CK76u2hj2k6ffP18eL+4en44X
j08XanlaK0ESg0GJOOHybfA0hGckRYEhKbtJaLN1ggG5iLDI1s3NMQJD0tYOnzjCUMJBiw0Y
j3JCYszfNE1IfWNfUJga4JQXkoqNQeghYb0aHi0AL4rIush8y7Cm2uST6arsigBRdQUOdIMK
K7j8g4bx133q+DaTqW+UdeXX399Pd3/+6/j74k4utq9Ptz+//Q7WWMtIwEIaTnRm328NsHSL
MJolbcpwV3DTla7dZ9PFYuLoQsoH5dfLt+PDy+nu9uV4f5E9SN7FZ3zxn9PLtwvy/Px4d5Ko
9PblNuhMkpTh6COwZCs2TzK9bOri02R2uUC+mg1lYtbC7yPb0eCrFl3eEiHk9mbw1zJoEew8
zyGP63Akk3wdwni4EBNkdWVJWLbQtjgXWue40UKjG8FZfHkdkKaFSgBhI8IlvI0PLGTN4V04
JWByGcZve/v8LTZ8JQnHb6uAfo8OZ3u0V4WUkff09fj8EjbWJrMpVrNEnBmsAyot1wW5yabh
dCk4w9vhk8sUzTBs1jfaVHQCynSOwBZI2yUVq1r6fJ8ZxPb/KjuW5bZx5K/4OFu145Vsx5M5
+ACSkISIr4Ck5fjCcmyV48rIdkny1nz+djcIEgCbmuwhFau7CYJ49RPdWcJtEwRfzzjwxadr
5l2AuGQrYdpttxLz8V6ELfzpmgN/mnMnKCA4zcpis0vumRpklqhgEywbinqp53+OWcOmNJ0w
7P7l/Yfnu++PGW7SATp14d9S5E2kJlIwdxQ65rId9guu2PjloQLEUL4gWI8Caz2pMcuIKepi
6qGq5hYYwjl7huVC7OAs6P9Tn75eiXtxglFWIq3ExXhxWqbArYKpUJEer0u+dGS/uK6YZmvJ
+ecsclOwU9TBh8E2K+xt977fHg5GoQhfBDJWKsLcDQHLmDD2dujPbDqZ/tnxmQKw1figvq/q
vqq2fnh9etud5R+779v92XL7ut2HCpFd7ZVq45KTKhMdLW2ZNgYzwRcMTrBF6V0SjgUjYgT8
olB7khjg7OoMjpDcdinTXOn/r5fv+wfQdfZvH8eXV4bXpSrqjogxvOMZ9roZ85UO1YmpAyKz
8J2Wpkh4VC/MnW6hJ2PRycRnWj4Gcqq6lzd/niI59fpJfjh83QlxEIl6bhOO84q/PAq6YJZJ
NISQ6QQvSoxd4Nv9EVOkgER7oEz4WNDt4fgBWuHjj+3jT1Bw3XKX6IbEKcWqvFVv53EMIiEF
rTz8yxRttN7uX3irqVY8uUCNiuuqvhbSRqCEwL7Tjt0uVbkUuiWfqXtbQFC4xQCIFHBbTOLq
aONUwo9uKnNYe9kS2HQO6nq70HTpxtXhXJJU5gEWVP/EuzylVSZBB8sirxSzMXmJdNxsGasw
0qqqs7I1xUwd0wB+AgZKxFl5F6+WFGyipVt/TMegwMBJ4oHmwZKL2xMCYdyqumn9Bi4DUQgA
vVmSbwQJUuh89O0z86jBXE0wCyIRejPNbZAiUhOvvvYYSez/coueq6iXzQcCRw4NJXBYe0mR
OZ8+oNCZi8dz6pUgA/7V+4I96Crm4RT2G8KR3zHkBObo7+4RHP5u7z57q6CD0i2VkhPOOwIl
rq+Y57CK5OQzgKxXsPyZ56oSFvH0k1H8ZdRxf6TtniFbISbTcuYHk2lWRVpk/h3wAYoW6vn1
BA7e5eKieOX9oFB/tKVqkXnWP0w1ClubjhgtHNaNJlbl36pAUJI5TBB+YDzZAMixSwjF+05o
nZY+MfQyFRovHqykf8m3T8VQybopxy0jIC9y+2CbBXUkEC/wau5EgE61TM2oO5ORFpH/i9kb
/YxR6Wdvd6b3bS2cFjCvBVbyHiBZqUwJ6GHTLhLXK4B3RFLlQ8qiSINxyQtEkInFPWQFhhSU
btn7Cs6VYGBKvM7L19Ipoi9iyQ5WjWyV9d2MOKJv97ccm6Dv+5fX488zkHLPnnbbw/PYuxOb
CyjACpYpcLa0t4X+MUnxtVGyvrnqh9jUZB63cOUEVXzLogJO7VZqnYuMP5dp4bTwDxhsVIRX
lbqvn/yiXgV5+Wv7+/Fl1wkSByJ9NPC98/2O14nsplmD2iPGvHKhkrBpZbsROr+Zzy6u3Fkq
sYgEfqCnKWopEmoWkHzUlMTkOJhSBlZRygWZm+GoJJXgxEiwTNTumRJiqHttkaduQCe1sSjw
MtGiyeMuRlQt8/bSNQK5dBsp1ujKa20mGyuy/erY0uCSLvXyaNdlsv3+8fyMzhL1ejjuP3bb
16N7j0AsTfJ27eaLHYC9x8ZM1s3s7zlHZdLN8C10qWgqdF3mMZUQ9z/er5newejE2rSnZgij
zlRl6DKMtj/RzoQjrIkq4XmrCNDWU/lwDTrCJN+8BcYQhGn6AjStg4y3GaxjpFjHxW0b6WIt
c3cl/NLc+oOEkZEyHY9M2EXXR9m3O6wTitGQd7XMK+X790xziCcew8dH4dPFhk96RMiyUFWR
Kz/dp48hViDyIH5vijj0WAb9hfMfdjEbPIk6Rzd2IAKksCnD7fpPcPQfEi+jgLub+fVsNgs7
0NP2LtEFf20pICfXbxVPsLXu6CK/bYPMgeNwcNYmHY3Mk/66gdfEbTae49uMzOZhlHZIoyP2
0XIJQvaS3zWGKKeCAeb62Sk6k5qSHMucImFc5GuB+2hsFTDYTaHXZknRioJZakWSdOJ46I4e
tkPAIVYmY5lxIiDRWfH2fvj3Wfr2+PPj3RzSq4fX54O7j6gSBrALT8TzwHjJp4Fl4yMxcLRo
ajfEtioWNWqSKDTKGtZzwRbPIlS7wuwItai8qTZLr0f1L5lfOK+JiqIm6dkhpD4xL5uk7T5q
Zgk3X4FtAvNMCu826+lhNAEzwAKfPpDvuefUEALAoP15w49cS1ma08YYO9BlNxynvx3eX17R
jQe92H0ct39v4Y/t8fH8/PxfrgRj2tMgkje1vJOnFq2txXZqXf9jI3pTyewUgRHVQU+HzztB
1t11Ia3BSrp8s3RvBtZV3Wg5VXNkszFd54Xm/2NkPfEeeLBrQiEZC0NRmhwN8nCCGa1+fNas
zdk+Ym5maf00rPPp4fhwhjzzEU1fzgbtBki5ilDH4jpgOLGcFmEPtFotlGdLIt4DKquoBZqf
dGMvFQU7YKKbfvuxhoHIa5Cu+gogOm449u3OoCctY9F3qRdTU4v4U89quUBmlE6uDWqgm0nv
SfmVuVEylFfxPsP/ajg5jLysraTsqzG0ZEFUQSucM4nE13tRnPqkQyxB24yublIMj1dPEUkw
UR2uQqIEaSN3PeNEEXcPmlYGpGk77qpDDme4wHR77GURaxaA76CkGJ0sK3snysN+x012k29U
nuA1Z+1YMDCPiMGEI+YbRbsN4AjzlGZicWWphQ7zLVxerP5wsCcOHhXLJOZlRKt1ZWpVVPXU
nRfbO3pR+/liInG2T1amMzYjspWWKEmO+azweZXHaZOA0vKE4/yfw3F3eXFeBRqMecnqWwXq
0dVsNsci6gwFVhGapsjHBsEBFvbj4/Wx8/md/3Di/qXQ6Tc0Y+c1p0xjqFullivXRmxBaKdf
V5jzBYTW3A2T80l6irZ209MORLGovewAA8Y8VaqGnbKATtbR7ZyfXIfSZOuQMINslcOB0M1v
7fS1bJyEGmN06IjvTid/37lWoHp7OCKbQ5Elfvvvdv/wvHUCevEG8dAPc6GY3u9eXBnuGYcw
eUeHBYujQ8mPQLPsB20/he4SGAXaW5nxZMxoFgs62aabdtvtrhjaV5463tZ+qKQR0EEsRxXY
HJpuJbOOun8RacqdJQl3i9CoAfLCDNGi3Uc3qH1PGBcMlf4KPZTCaHC0aYcdq+FgR08RjjeK
Ub4POl0nfjobJCOJAtbrxOlIJJnK0TrFC25EET5vhQorLpEEFiwPHWEUSwh07echY6fsBrdY
WtM+yE1fZxRm7MZuIKyPoY9YybukcfPymU8zdlcTx12NkZUXkEvQNYBrt0QdQen0W4zG31iH
p4cW8LCgUy50hPBN4xbrItBd4DYgIN55XnglsAis0SNVkwktGA3PU0UglbgJb4BhY+c41ypR
L5TOQDh2cy+BjFKn7DliXMcswvHSjlZEhBnJJxaCGZ1EpqOhwChqARMymguS7yfUd/ukMkdl
/yCAwg6EceH84TsKHrc+btsyaRaZqipcf0kR09ngHSD/A43lk+SEFgIA

--VS++wcV0S1rZb1Fb--
