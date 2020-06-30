Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBTO55L3QKGQEIC2WE7Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73c.google.com (mail-qk1-x73c.google.com [IPv6:2607:f8b0:4864:20::73c])
	by mail.lfdr.de (Postfix) with ESMTPS id B2EB620EBE8
	for <lists+clang-built-linux@lfdr.de>; Tue, 30 Jun 2020 05:17:34 +0200 (CEST)
Received: by mail-qk1-x73c.google.com with SMTP id k1sf10439507qko.14
        for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 20:17:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593487053; cv=pass;
        d=google.com; s=arc-20160816;
        b=GFl8CwSldapGysCRHn6lVrANOUqHcatN0F58DTm6JaT9N6Y7dMC6t09Wmk2d2Fgp0+
         sT4QtUkHE5x7+ACFZJ6MHw8zTKZXvxwespSkbSHJYOosIe/LgTRx+G40L4XS+FpiYHrH
         y6LJJHpjRPZmfyscTbFgT9ctLWKMtM5A0Iw+I4Q/z41lzYYATH63x8/dkhVuEbI9OUGq
         k5SDzvJI4DK+wmv9uDCtmujJYbpDvrz9cbwb3LDDMRD2fbiuxN6rdK5KptJ5rX9ynhWN
         9QGXo1y0C4RLL6Lve37whVCLvZprczvASFo5g9SRYT5wlTC9e+HUAmA+pdjlk0EtxOns
         Yp5w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=wZy5UI/3nFaD7ulhvONtSCrsVEvQYHPWBIaIc8uzQ80=;
        b=fj1NknKkf01QASgmTPXep+at71roUEoGLUmVF6MzJyRxdoRxi/7E94+fR4ZB+IUIQy
         T9rUmZjXgVFWqI3dBrFRm9Ecvht41MXfezZ+taJG/oszKVUMYFBLpHwt9/xf9Gcc3m7e
         HtKam/GL1m9u5Ai4YhFiywyuxJs7XFGmNS3AoWp73P0GcFtt5fnAyJ7z5GXHyT+yX/40
         YBFFiU0AxtSbV2mq/L/rZW3TNW+zK2xHVW6SOI/GYolrOlGeLdcUYvkE4/EibMLnOBsr
         zqu0oXUeinron+PsSk5fEi0YvEq/5ristgIXCvyfRp4yfXD3vS9Cx9uWZRZlEUY3qoQe
         8gnw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wZy5UI/3nFaD7ulhvONtSCrsVEvQYHPWBIaIc8uzQ80=;
        b=fP7ULMfrAwAW4wUzaxnCFRjyDRVNlbaILC2+XOeMLHhp6/h55cfhMBnQcV1FBqJJ60
         MwkTpG397ZMiDQTS5XR85eW8IzmlKtj7yV1kwHLBC0QJJsRzoD/FInSbQVmNoxkpYBGy
         rHMuv3ezNUzMEAZgSbqNHGxkahi3anb/JEANELNycSILD0cBYlHKY9faspLrXFu60W2C
         gwAfMTHXRKnGGsSLDyX419Y/jr67s8WKlEt/CGZLuPeDgpqJ8s+qsuRmKMzZW1vQb8no
         rOYWVPWYkE7YBNULzVMurO1lRi3onSB93gq2yTYER5jL4qhEVNtzcMgZPTdQ7B8VElKj
         J6EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=wZy5UI/3nFaD7ulhvONtSCrsVEvQYHPWBIaIc8uzQ80=;
        b=i8CqlHMC8eSUMuDjZ6znnLB3n/z0+WjmjdDZHaLa1SYSz0ULxVIaemW6KKLkn9eJhD
         mn7PUvrcfBvNabyGA7oktywpofRARoay4PBx/vHHPx/arCbU+8vTjOwpsaJ3StjhFAss
         HMwCXXMFZwLOQMwFoI2onYoFBHIl7ZFVPBA+wC/ADEwB/UhOu9dc+3BJZFk2VIrq/hgt
         1iSAPbQDxDapfKrDxyPZv3zLNiaLLkomS1v1wKjhrdv23IslKUFWXPRKvuXU5vRZkfKA
         UyYMoHqQa2c79Hb5rkCx0hy9Kgq33nwUj2gHKwpbCGmSLxsMieVG6icyrTu6SjCYX1+U
         49bw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5317Rh4lAaCtA1Fo4fpxvh+NA1IVPY0FcBW9dFmHSsn93/NTrgyN
	MlvgBrOuOoVUzVDog2spO7U=
X-Google-Smtp-Source: ABdhPJw9y/2dIkvocGfccJSM0aKHNTqv0Ub/wUHS1/QrOVfax+9QYiu2k+NxcOVmtJsX09n4nq2Kbw==
X-Received: by 2002:a37:a6ce:: with SMTP id p197mr17648030qke.211.1593487053222;
        Mon, 29 Jun 2020 20:17:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:7416:: with SMTP id p22ls6913203qtq.8.gmail; Mon, 29 Jun
 2020 20:17:32 -0700 (PDT)
X-Received: by 2002:aed:3023:: with SMTP id 32mr18687811qte.37.1593487052757;
        Mon, 29 Jun 2020 20:17:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593487052; cv=none;
        d=google.com; s=arc-20160816;
        b=uFNUqYI+hCyBduYdDrTM+fQHFnjRKmkhsvI1ym8AAMmRxvPmQ7CTd/bZ5LdaKOBpyR
         7f7jttPIPV6kQ26GcDCFx86wREpHXAN3iZE4U5uIcP7lzJdYFa0CnQfgP0HM7MSWgYMw
         T4pE9Bye+jyib+15qyBTQjufcDX4u/D2P3a/NFm4lBmf3147qOnIDc01t0MP7iEBb2vm
         uAfcRrYtnnn2WAhVMKlg6KMlw+3xBN+EQkEDicc6rEbTPDffpfcGG2KbjINFnq2aQsUC
         bRkpR/a2N6JYk2RiTMCYG1JOBu9aH/JWR+0XRx+mQqGgnuGp5XKEsfI/QBq86R/Y6A5Q
         NYmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=/m6/tWm4y3Pf2vAUfi2zUDFO+8xnqXE5v5FOVArDajU=;
        b=jfG5C7k7L7KIGTBfKEBt0LuCyQ1wUUfQ2gy0E3dU+ORom0KaMKIwJz0EfpzJhMKGS4
         4DLwuvufyQE5fnW5J0q12VcA5cWoy+7clA5WcCQQJhC7ILdpq1hPtefiY6rhjcN5wxEJ
         BkoD+HKMZ1hxvOaugHjfsLXIFoQJMQ+kWxwghzKKn7VOwyClvbTaF2PF+jkx58+4city
         xbzb1ua1ojsd8kQAyReXlX9PAQnHT9xvSUpFEA8QjsooBBVy3DFknxp0R5qNsZPBI09P
         JOOyBq4i3yMLhU2Q5/bHp85Ks4X5pLUn1+l0C2X/dlbXMe5ov/ZUo3ehvF/36cv1N1Rk
         eJCw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga01.intel.com (mga01.intel.com. [192.55.52.88])
        by gmr-mx.google.com with ESMTPS id w123si74604qka.1.2020.06.29.20.17.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 Jun 2020 20:17:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) client-ip=192.55.52.88;
IronPort-SDR: /6w9XYMcmKRz4frdbHuyafFNwADeFBVO313tiCvGOnC7KU6V9sk/yPV8ugnsRH1oKqGcQXhvZx
 X6esLAGu4yuA==
X-IronPort-AV: E=McAfee;i="6000,8403,9666"; a="164144689"
X-IronPort-AV: E=Sophos;i="5.75,296,1589266800"; 
   d="gz'50?scan'50,208,50";a="164144689"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 Jun 2020 20:17:30 -0700
IronPort-SDR: +5DPxugy79PI5a7Xq5KTdm0O1dGRm8CcmoHJvO/mJ7csg7B7PZDE7/MWScNXwvJ9DNlGbEKQMO
 6tvDJbw+sUFw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,296,1589266800"; 
   d="gz'50?scan'50,208,50";a="295076351"
Received: from lkp-server01.sh.intel.com (HELO 28879958b202) ([10.239.97.150])
  by orsmga002.jf.intel.com with ESMTP; 29 Jun 2020 20:17:28 -0700
Received: from kbuild by 28879958b202 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1jq6m0-0001Jq-1C; Tue, 30 Jun 2020 03:17:28 +0000
Date: Tue, 30 Jun 2020 11:17:01 +0800
From: kernel test robot <lkp@intel.com>
To: Petr Machata <petrm@mellanox.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [jpirko-mlxsw:petrm_qdisc 64/66] kernel/sched/fair.c:4056:20:
 warning: unused function 'remove_entity_load_avg'
Message-ID: <202006301151.pjF9p3fT%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="C7zPtVaVf+AK4Oqc"
Content-Disposition: inline
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


--C7zPtVaVf+AK4Oqc
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://github.com/jpirko/linux_mlxsw petrm_qdisc
head:   ae5398e64c10d6844d4206cc3479b736a2a3dad2
commit: 4db03aa2851596355dc37ef740cd7b4970a49ebb [64/66] selftests: mlxsw: qos_lib: Split devlink_..._set() into save & set
config: x86_64-allnoconfig (attached as .config)
compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project cf1d04484344be52ada8178e41d18fd15a9b880c)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        git checkout 4db03aa2851596355dc37ef740cd7b4970a49ebb
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   kernel/events/core.c:1094:1: warning: unused function 'perf_cgroup_switch' [-Wunused-function]
   perf_cgroup_switch(struct task_struct *task, struct task_struct *next)
   ^
   arch/x86/kernel/apic/apic.c:1883:20: warning: unused function '__x2apic_enable' [-Wunused-function]
   static inline void __x2apic_enable(void) { }
                      ^
   1 warning generated.
   1 warning generated.
   arch/x86/kernel/apic/apic.c:2126: warning: Function parameter or member 'spurious_interrupt' not described in 'DEFINE_IDTENTRY_IRQ'
   arch/x86/kernel/apic/apic.c:2126: warning: Excess function parameter 'regs' description in 'DEFINE_IDTENTRY_IRQ'
   arch/x86/kernel/apic/apic.c:2126: warning: Excess function parameter 'vector' description in 'DEFINE_IDTENTRY_IRQ'
   arch/x86/mm/init.c:81:6: warning: no previous prototype for function 'x86_has_pat_wp' [-Wmissing-prototypes]
   bool x86_has_pat_wp(void)
        ^
   arch/x86/mm/init.c:81:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   bool x86_has_pat_wp(void)
   ^
   static 
   arch/x86/mm/init.c:86:22: warning: no previous prototype for function 'pgprot2cachemode' [-Wmissing-prototypes]
   enum page_cache_mode pgprot2cachemode(pgprot_t pgprot)
                        ^
   arch/x86/mm/init.c:86:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   enum page_cache_mode pgprot2cachemode(pgprot_t pgprot)
   ^
   static 
   arch/x86/kernel/cpu/common.c:281:19: warning: unused function 'flag_is_changeable_p' [-Wunused-function]
   static inline int flag_is_changeable_p(u32 flag)
                     ^
   arch/x86/kernel/cpu/bugs.c:614:27: warning: unused function 'spectre_v2_module_string' [-Wunused-function]
   static inline const char *spectre_v2_module_string(void) { return ""; }
                             ^
   arch/x86/mm/init.c:915:13: warning: no previous prototype for function 'mem_encrypt_free_decrypted_mem' [-Wmissing-prototypes]
   void __weak mem_encrypt_free_decrypted_mem(void) { }
               ^
   arch/x86/mm/init.c:915:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void __weak mem_encrypt_free_decrypted_mem(void) { }
   ^
   static 
   1 warning generated.
   3 warnings generated.
   1 warning generated.
   kernel/dma/swiotlb.c:278:1: warning: no previous prototype for function 'swiotlb_late_init_with_default_size' [-Wmissing-prototypes]
   swiotlb_late_init_with_default_size(size_t default_size)
   ^
   kernel/dma/swiotlb.c:277:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   int
   ^
   static 
   kernel/sched/cputime.c:255:19: warning: unused function 'account_other_time' [-Wunused-function]
   static inline u64 account_other_time(u64 max)
                     ^
   1 warning generated.
   1 warning generated.
   kernel/sched/fair.c:5352:6: warning: no previous prototype for function 'init_cfs_bandwidth' [-Wmissing-prototypes]
   void init_cfs_bandwidth(struct cfs_bandwidth *cfs_b) {}
        ^
   kernel/sched/fair.c:5352:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void init_cfs_bandwidth(struct cfs_bandwidth *cfs_b) {}
   ^
   static 
   kernel/sched/fair.c:11078:6: warning: no previous prototype for function 'free_fair_sched_group' [-Wmissing-prototypes]
   void free_fair_sched_group(struct task_group *tg) { }
        ^
   kernel/sched/fair.c:11078:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void free_fair_sched_group(struct task_group *tg) { }
   ^
   static 
   kernel/sched/fair.c:11080:5: warning: no previous prototype for function 'alloc_fair_sched_group' [-Wmissing-prototypes]
   int alloc_fair_sched_group(struct task_group *tg, struct task_group *parent)
       ^
   kernel/sched/fair.c:11080:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   int alloc_fair_sched_group(struct task_group *tg, struct task_group *parent)
   ^
   static 
   kernel/sched/fair.c:11085:6: warning: no previous prototype for function 'online_fair_sched_group' [-Wmissing-prototypes]
   void online_fair_sched_group(struct task_group *tg) { }
        ^
   kernel/sched/fair.c:11085:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void online_fair_sched_group(struct task_group *tg) { }
   ^
   static 
   kernel/sched/fair.c:11087:6: warning: no previous prototype for function 'unregister_fair_sched_group' [-Wmissing-prototypes]
   void unregister_fair_sched_group(struct task_group *tg) { }
        ^
   kernel/sched/fair.c:11087:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void unregister_fair_sched_group(struct task_group *tg) { }
   ^
   static 
   kernel/sched/fair.c:488:20: warning: unused function 'list_del_leaf_cfs_rq' [-Wunused-function]
   static inline void list_del_leaf_cfs_rq(struct cfs_rq *cfs_rq)
                      ^
   kernel/sched/fair.c:2971:20: warning: unused function 'account_numa_enqueue' [-Wunused-function]
   static inline void account_numa_enqueue(struct rq *rq, struct task_struct *p)
                      ^
   kernel/sched/fair.c:2975:20: warning: unused function 'account_numa_dequeue' [-Wunused-function]
   static inline void account_numa_dequeue(struct rq *rq, struct task_struct *p)
                      ^
   kernel/sched/fair.c:2979:20: warning: unused function 'update_scan_period' [-Wunused-function]
   static inline void update_scan_period(struct task_struct *p, int new_cpu)
                      ^
>> kernel/sched/fair.c:4056:20: warning: unused function 'remove_entity_load_avg' [-Wunused-function]
   static inline void remove_entity_load_avg(struct sched_entity *se) {}
                      ^
   kernel/sched/fair.c:5333:20: warning: unused function 'sync_throttle' [-Wunused-function]
   static inline void sync_throttle(struct task_group *tg, int cpu) {}
                      ^
   kernel/sched/fair.c:5346:19: warning: unused function 'throttled_lb_pair' [-Wunused-function]
   static inline int throttled_lb_pair(struct task_group *tg,
                     ^
   kernel/sched/fair.c:5358:37: warning: unused function 'tg_cfs_bandwidth' [-Wunused-function]
   static inline struct cfs_bandwidth *tg_cfs_bandwidth(struct task_group *tg)
                                       ^
   kernel/sched/fair.c:5362:20: warning: unused function 'destroy_cfs_bandwidth' [-Wunused-function]
   static inline void destroy_cfs_bandwidth(struct cfs_bandwidth *cfs_b) {}
                      ^
>> kernel/sched/fair.c:5363:20: warning: unused function 'update_runtime_enabled' [-Wunused-function]
   static inline void update_runtime_enabled(struct rq *rq) {}
                      ^
>> kernel/sched/fair.c:5364:20: warning: unused function 'unthrottle_offline_cfs_rqs' [-Wunused-function]
   static inline void unthrottle_offline_cfs_rqs(struct rq *rq) {}
                      ^
   kernel/sched/rt.c:253:6: warning: no previous prototype for function 'free_rt_sched_group' [-Wmissing-prototypes]
   void free_rt_sched_group(struct task_group *tg) { }
        ^
   kernel/sched/rt.c:253:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void free_rt_sched_group(struct task_group *tg) { }
   ^
   static 
   kernel/sched/rt.c:255:5: warning: no previous prototype for function 'alloc_rt_sched_group' [-Wmissing-prototypes]
   int alloc_rt_sched_group(struct task_group *tg, struct task_group *parent)
       ^
   kernel/sched/rt.c:255:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   int alloc_rt_sched_group(struct task_group *tg, struct task_group *parent)
   ^
   static 
   kernel/sched/rt.c:668:6: warning: no previous prototype for function 'sched_rt_bandwidth_account' [-Wmissing-prototypes]
   bool sched_rt_bandwidth_account(struct rt_rq *rt_rq)
        ^
   kernel/sched/rt.c:668:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   bool sched_rt_bandwidth_account(struct rt_rq *rt_rq)
   ^
   static 
   kernel/locking/rwsem.c:219:20: warning: unused function 'is_rwsem_reader_owned' [-Wunused-function]
   static inline bool is_rwsem_reader_owned(struct rw_semaphore *sem)
                      ^
   kernel/locking/rwsem.c:284:35: warning: unused function 'rwsem_owner' [-Wunused-function]
   static inline struct task_struct *rwsem_owner(struct rw_semaphore *sem)
                                     ^
   kernel/locking/rwsem.c:295:1: warning: unused function 'rwsem_owner_flags' [-Wunused-function]
   rwsem_owner_flags(struct rw_semaphore *sem, unsigned long *pflags)
   ^
   kernel/sched/rt.c:420:20: warning: unused function 'need_pull_rt_task' [-Wunused-function]
   static inline bool need_pull_rt_task(struct rq *rq, struct task_struct *prev)
                      ^
   kernel/sched/rt.c:425:20: warning: unused function 'pull_rt_task' [-Wunused-function]
   static inline void pull_rt_task(struct rq *this_rq)
                      ^
   kernel/sched/rt.c:475:20: warning: unused function 'rt_task_fits_capacity' [-Wunused-function]
   static inline bool rt_task_fits_capacity(struct task_struct *p, int cpu)
                      ^
>> kernel/sched/rt.c:1112:6: warning: unused function 'inc_rt_prio_smp' [-Wunused-function]
   void inc_rt_prio_smp(struct rt_rq *rt_rq, int prio, int prev_prio) {}
        ^
>> kernel/sched/rt.c:1114:6: warning: unused function 'dec_rt_prio_smp' [-Wunused-function]
   void dec_rt_prio_smp(struct rt_rq *rt_rq, int prio, int prev_prio) {}
        ^
   3 warnings generated.
   8 warnings generated.
   16 warnings generated.
   arch/x86/mm/ioremap.c:737:17: warning: no previous prototype for function 'early_memremap_pgprot_adjust' [-Wmissing-prototypes]
   pgprot_t __init early_memremap_pgprot_adjust(resource_size_t phys_addr,
                   ^
   arch/x86/mm/ioremap.c:737:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   pgprot_t __init early_memremap_pgprot_adjust(resource_size_t phys_addr,
   ^
   static 
   1 warning generated.
   kernel/sched/deadline.c:623:20: warning: unused function 'need_pull_dl_task' [-Wunused-function]
   static inline bool need_pull_dl_task(struct rq *rq, struct task_struct *prev)
                      ^
   kernel/sched/deadline.c:628:20: warning: unused function 'pull_dl_task' [-Wunused-function]
   static inline void pull_dl_task(struct rq *rq)
                      ^
   2 warnings generated.
   2 warnings generated.
   kernel/events/core.c:139: warning: Function parameter or member 'cpu' not described in 'cpu_function_call'
   kernel/events/core.c:11482: warning: Function parameter or member 'flags' not described in 'sys_perf_event_open'
   kernel/events/core.c:11940: warning: Function parameter or member 'overflow_handler' not described in 'perf_event_create_kernel_counter'
   kernel/events/core.c:11940: warning: Function parameter or member 'context' not described in 'perf_event_create_kernel_counter'
   kernel/irq/matrix.c:287: warning: Function parameter or member 'msk' not described in 'irq_matrix_alloc_managed'
   kernel/irq/matrix.c:287: warning: Function parameter or member 'mapped_cpu' not described in 'irq_matrix_alloc_managed'
   kernel/irq/matrix.c:287: warning: Excess function parameter 'cpu' description in 'irq_matrix_alloc_managed'
   kernel/irq/irqdomain.c:105: warning: Function parameter or member 'fwnode' not described in 'irq_domain_free_fwnode'
   kernel/irq/irqdomain.c:915: warning: Function parameter or member 'd' not described in 'irq_domain_xlate_onecell'
   kernel/irq/irqdomain.c:915: warning: Function parameter or member 'ctrlr' not described in 'irq_domain_xlate_onecell'
   kernel/irq/irqdomain.c:915: warning: Function parameter or member 'intspec' not described in 'irq_domain_xlate_onecell'
   kernel/irq/irqdomain.c:915: warning: Function parameter or member 'intsize' not described in 'irq_domain_xlate_onecell'
   kernel/irq/irqdomain.c:915: warning: Function parameter or member 'out_hwirq' not described in 'irq_domain_xlate_onecell'
   kernel/irq/irqdomain.c:915: warning: Function parameter or member 'out_type' not described in 'irq_domain_xlate_onecell'
   kernel/irq/irqdomain.c:934: warning: Function parameter or member 'd' not described in 'irq_domain_xlate_twocell'
   kernel/irq/irqdomain.c:934: warning: Function parameter or member 'ctrlr' not described in 'irq_domain_xlate_twocell'
   kernel/irq/irqdomain.c:934: warning: Function parameter or member 'intspec' not described in 'irq_domain_xlate_twocell'
   kernel/irq/irqdomain.c:934: warning: Function parameter or member 'intsize' not described in 'irq_domain_xlate_twocell'
   kernel/irq/irqdomain.c:934: warning: Function parameter or member 'out_hwirq' not described in 'irq_domain_xlate_twocell'
   kernel/irq/irqdomain.c:934: warning: Function parameter or member 'out_type' not described in 'irq_domain_xlate_twocell'
   kernel/irq/irqdomain.c:957: warning: Function parameter or member 'd' not described in 'irq_domain_xlate_onetwocell'
   kernel/irq/irqdomain.c:957: warning: Function parameter or member 'ctrlr' not described in 'irq_domain_xlate_onetwocell'
   kernel/irq/irqdomain.c:957: warning: Function parameter or member 'intspec' not described in 'irq_domain_xlate_onetwocell'
   kernel/irq/irqdomain.c:957: warning: Function parameter or member 'intsize' not described in 'irq_domain_xlate_onetwocell'
   kernel/irq/irqdomain.c:957: warning: Function parameter or member 'out_hwirq' not described in 'irq_domain_xlate_onetwocell'
   kernel/irq/irqdomain.c:957: warning: Function parameter or member 'out_type' not described in 'irq_domain_xlate_onetwocell'
   kernel/irq/irqdomain.c:982: warning: Function parameter or member 'd' not described in 'irq_domain_translate_onecell'
   kernel/irq/irqdomain.c:982: warning: Function parameter or member 'fwspec' not described in 'irq_domain_translate_onecell'
   kernel/irq/irqdomain.c:982: warning: Function parameter or member 'out_hwirq' not described in 'irq_domain_translate_onecell'
   kernel/irq/irqdomain.c:982: warning: Function parameter or member 'out_type' not described in 'irq_domain_translate_onecell'
   kernel/irq/irqdomain.c:1003: warning: Function parameter or member 'd' not described in 'irq_domain_translate_twocell'
   kernel/irq/irqdomain.c:1003: warning: Function parameter or member 'fwspec' not described in 'irq_domain_translate_twocell'
   kernel/irq/irqdomain.c:1003: warning: Function parameter or member 'out_hwirq' not described in 'irq_domain_translate_twocell'
   kernel/irq/irqdomain.c:1003: warning: Function parameter or member 'out_type' not described in 'irq_domain_translate_twocell'
   kernel/irq/irqdomain.c:1583: warning: Function parameter or member 'domain' not described in 'irq_domain_alloc_irqs_parent'
   kernel/irq/irqdomain.c:1602: warning: Function parameter or member 'domain' not described in 'irq_domain_free_irqs_parent'
   arch/x86/kernel/traps.c:87:5: warning: no previous prototype for function 'is_valid_bugaddr' [-Wmissing-prototypes]
   int is_valid_bugaddr(unsigned long addr)
       ^
   arch/x86/kernel/traps.c:87:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   int is_valid_bugaddr(unsigned long addr)
   ^
   static 
   arch/x86/mm/extable.c:26:16: warning: no previous prototype for function 'ex_handler_default' [-Wmissing-prototypes]
   __visible bool ex_handler_default(const struct exception_table_entry *fixup,
                  ^
   arch/x86/mm/extable.c:26:11: note: declare 'static' if the function is not intended to be used outside of this translation unit
   __visible bool ex_handler_default(const struct exception_table_entry *fixup,
             ^
             static 
   arch/x86/mm/extable.c:36:16: warning: no previous prototype for function 'ex_handler_fault' [-Wmissing-prototypes]
   __visible bool ex_handler_fault(const struct exception_table_entry *fixup,
                  ^
   arch/x86/mm/extable.c:36:11: note: declare 'static' if the function is not intended to be used outside of this translation unit
   __visible bool ex_handler_fault(const struct exception_table_entry *fixup,
             ^
             static 
   arch/x86/mm/extable.c:57:16: warning: no previous prototype for function 'ex_handler_fprestore' [-Wmissing-prototypes]
   __visible bool ex_handler_fprestore(const struct exception_table_entry *fixup,
                  ^
   arch/x86/mm/extable.c:57:11: note: declare 'static' if the function is not intended to be used outside of this translation unit
   __visible bool ex_handler_fprestore(const struct exception_table_entry *fixup,
             ^
             static 
   arch/x86/mm/extable.c:72:16: warning: no previous prototype for function 'ex_handler_uaccess' [-Wmissing-prototypes]
   __visible bool ex_handler_uaccess(const struct exception_table_entry *fixup,
                  ^
   arch/x86/mm/extable.c:72:11: note: declare 'static' if the function is not intended to be used outside of this translation unit
   __visible bool ex_handler_uaccess(const struct exception_table_entry *fixup,
             ^
             static 
   arch/x86/mm/extable.c:83:16: warning: no previous prototype for function 'ex_handler_rdmsr_unsafe' [-Wmissing-prototypes]
   __visible bool ex_handler_rdmsr_unsafe(const struct exception_table_entry *fixup,
                  ^
   arch/x86/mm/extable.c:83:11: note: declare 'static' if the function is not intended to be used outside of this translation unit
   __visible bool ex_handler_rdmsr_unsafe(const struct exception_table_entry *fixup,
             ^
             static 
   arch/x86/mm/extable.c:100:16: warning: no previous prototype for function 'ex_handler_wrmsr_unsafe' [-Wmissing-prototypes]
--
   kernel/sched/core.c:225:1: warning: unused function 'rq_csd_init' [-Wunused-function]
   rq_csd_init(struct rq *rq, call_single_data_t *csd, smp_call_func_t func)
   ^
   kernel/sched/core.c:3815:20: warning: unused function 'sched_tick_start' [-Wunused-function]
   static inline void sched_tick_start(int cpu) { }
                      ^
   kernel/sched/core.c:3816:20: warning: unused function 'sched_tick_stop' [-Wunused-function]
   static inline void sched_tick_stop(int cpu) { }
                      ^
   3 warnings generated.
   kernel/events/core.c:6490:6: warning: no previous prototype for function 'perf_pmu_snapshot_aux' [-Wmissing-prototypes]
   long perf_pmu_snapshot_aux(struct perf_buffer *rb,
        ^
   kernel/events/core.c:6490:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   long perf_pmu_snapshot_aux(struct perf_buffer *rb,
   ^
   static 
   kernel/events/core.c:1094:1: warning: unused function 'perf_cgroup_switch' [-Wunused-function]
   perf_cgroup_switch(struct task_struct *task, struct task_struct *next)
   ^
   kernel/dma/swiotlb.c:278:1: warning: no previous prototype for function 'swiotlb_late_init_with_default_size' [-Wmissing-prototypes]
   swiotlb_late_init_with_default_size(size_t default_size)
   ^
   kernel/dma/swiotlb.c:277:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   int
   ^
   static 
   kernel/sched/cputime.c:255:19: warning: unused function 'account_other_time' [-Wunused-function]
   static inline u64 account_other_time(u64 max)
                     ^
   1 warning generated.
   1 warning generated.
   kernel/sched/fair.c:5352:6: warning: no previous prototype for function 'init_cfs_bandwidth' [-Wmissing-prototypes]
   void init_cfs_bandwidth(struct cfs_bandwidth *cfs_b) {}
        ^
   kernel/sched/fair.c:5352:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void init_cfs_bandwidth(struct cfs_bandwidth *cfs_b) {}
   ^
   static 
   kernel/sched/fair.c:11078:6: warning: no previous prototype for function 'free_fair_sched_group' [-Wmissing-prototypes]
   void free_fair_sched_group(struct task_group *tg) { }
        ^
   kernel/sched/fair.c:11078:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void free_fair_sched_group(struct task_group *tg) { }
   ^
   static 
   kernel/sched/fair.c:11080:5: warning: no previous prototype for function 'alloc_fair_sched_group' [-Wmissing-prototypes]
   int alloc_fair_sched_group(struct task_group *tg, struct task_group *parent)
       ^
   kernel/sched/fair.c:11080:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   int alloc_fair_sched_group(struct task_group *tg, struct task_group *parent)
   ^
   static 
   kernel/sched/fair.c:11085:6: warning: no previous prototype for function 'online_fair_sched_group' [-Wmissing-prototypes]
   void online_fair_sched_group(struct task_group *tg) { }
        ^
   kernel/sched/fair.c:11085:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void online_fair_sched_group(struct task_group *tg) { }
   ^
   static 
   kernel/sched/fair.c:11087:6: warning: no previous prototype for function 'unregister_fair_sched_group' [-Wmissing-prototypes]
   void unregister_fair_sched_group(struct task_group *tg) { }
        ^
   kernel/sched/fair.c:11087:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void unregister_fair_sched_group(struct task_group *tg) { }
   ^
   static 
   kernel/sched/fair.c:488:20: warning: unused function 'list_del_leaf_cfs_rq' [-Wunused-function]
   static inline void list_del_leaf_cfs_rq(struct cfs_rq *cfs_rq)
                      ^
   kernel/sched/fair.c:2971:20: warning: unused function 'account_numa_enqueue' [-Wunused-function]
   static inline void account_numa_enqueue(struct rq *rq, struct task_struct *p)
                      ^
   kernel/sched/fair.c:2975:20: warning: unused function 'account_numa_dequeue' [-Wunused-function]
   static inline void account_numa_dequeue(struct rq *rq, struct task_struct *p)
                      ^
   kernel/sched/fair.c:2979:20: warning: unused function 'update_scan_period' [-Wunused-function]
   static inline void update_scan_period(struct task_struct *p, int new_cpu)
                      ^
>> kernel/sched/fair.c:4056:20: warning: unused function 'remove_entity_load_avg' [-Wunused-function]
   static inline void remove_entity_load_avg(struct sched_entity *se) {}
                      ^
   kernel/sched/fair.c:5333:20: warning: unused function 'sync_throttle' [-Wunused-function]
   static inline void sync_throttle(struct task_group *tg, int cpu) {}
                      ^
   kernel/sched/fair.c:5346:19: warning: unused function 'throttled_lb_pair' [-Wunused-function]
   static inline int throttled_lb_pair(struct task_group *tg,
                     ^
   kernel/sched/fair.c:5358:37: warning: unused function 'tg_cfs_bandwidth' [-Wunused-function]
   static inline struct cfs_bandwidth *tg_cfs_bandwidth(struct task_group *tg)
                                       ^
   kernel/sched/fair.c:5362:20: warning: unused function 'destroy_cfs_bandwidth' [-Wunused-function]
   static inline void destroy_cfs_bandwidth(struct cfs_bandwidth *cfs_b) {}
                      ^
>> kernel/sched/fair.c:5363:20: warning: unused function 'update_runtime_enabled' [-Wunused-function]
   static inline void update_runtime_enabled(struct rq *rq) {}
                      ^
>> kernel/sched/fair.c:5364:20: warning: unused function 'unthrottle_offline_cfs_rqs' [-Wunused-function]
   static inline void unthrottle_offline_cfs_rqs(struct rq *rq) {}
                      ^
   kernel/sched/rt.c:253:6: warning: no previous prototype for function 'free_rt_sched_group' [-Wmissing-prototypes]
   void free_rt_sched_group(struct task_group *tg) { }
        ^
   kernel/sched/rt.c:253:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void free_rt_sched_group(struct task_group *tg) { }
   ^
   static 
   kernel/sched/rt.c:255:5: warning: no previous prototype for function 'alloc_rt_sched_group' [-Wmissing-prototypes]
   int alloc_rt_sched_group(struct task_group *tg, struct task_group *parent)
       ^
   kernel/sched/rt.c:255:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   int alloc_rt_sched_group(struct task_group *tg, struct task_group *parent)
   ^
   static 
   kernel/sched/rt.c:668:6: warning: no previous prototype for function 'sched_rt_bandwidth_account' [-Wmissing-prototypes]
   bool sched_rt_bandwidth_account(struct rt_rq *rt_rq)
        ^
   kernel/sched/rt.c:668:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   bool sched_rt_bandwidth_account(struct rt_rq *rt_rq)
   ^
   static 
   kernel/locking/rwsem.c:219:20: warning: unused function 'is_rwsem_reader_owned' [-Wunused-function]
   static inline bool is_rwsem_reader_owned(struct rw_semaphore *sem)
                      ^
   kernel/locking/rwsem.c:284:35: warning: unused function 'rwsem_owner' [-Wunused-function]
   static inline struct task_struct *rwsem_owner(struct rw_semaphore *sem)
                                     ^
   kernel/locking/rwsem.c:295:1: warning: unused function 'rwsem_owner_flags' [-Wunused-function]
   rwsem_owner_flags(struct rw_semaphore *sem, unsigned long *pflags)
   ^
   kernel/sched/rt.c:420:20: warning: unused function 'need_pull_rt_task' [-Wunused-function]
   static inline bool need_pull_rt_task(struct rq *rq, struct task_struct *prev)
                      ^
   kernel/sched/rt.c:425:20: warning: unused function 'pull_rt_task' [-Wunused-function]
   static inline void pull_rt_task(struct rq *this_rq)
                      ^
   kernel/sched/rt.c:475:20: warning: unused function 'rt_task_fits_capacity' [-Wunused-function]
   static inline bool rt_task_fits_capacity(struct task_struct *p, int cpu)
                      ^
>> kernel/sched/rt.c:1112:6: warning: unused function 'inc_rt_prio_smp' [-Wunused-function]
   void inc_rt_prio_smp(struct rt_rq *rt_rq, int prio, int prev_prio) {}
        ^
>> kernel/sched/rt.c:1114:6: warning: unused function 'dec_rt_prio_smp' [-Wunused-function]
   void dec_rt_prio_smp(struct rt_rq *rt_rq, int prio, int prev_prio) {}
        ^
   3 warnings generated.
   8 warnings generated.
   16 warnings generated.
   kernel/sched/deadline.c:623:20: warning: unused function 'need_pull_dl_task' [-Wunused-function]
   static inline bool need_pull_dl_task(struct rq *rq, struct task_struct *prev)
                      ^
   kernel/sched/deadline.c:628:20: warning: unused function 'pull_dl_task' [-Wunused-function]
   static inline void pull_dl_task(struct rq *rq)
                      ^
   2 warnings generated.
   2 warnings generated.
   kernel/events/core.c:139: warning: Function parameter or member 'cpu' not described in 'cpu_function_call'
   kernel/events/core.c:11482: warning: Function parameter or member 'flags' not described in 'sys_perf_event_open'
   kernel/events/core.c:11940: warning: Function parameter or member 'overflow_handler' not described in 'perf_event_create_kernel_counter'
   kernel/events/core.c:11940: warning: Function parameter or member 'context' not described in 'perf_event_create_kernel_counter'
   kernel/irq/matrix.c:287: warning: Function parameter or member 'msk' not described in 'irq_matrix_alloc_managed'
   kernel/irq/matrix.c:287: warning: Function parameter or member 'mapped_cpu' not described in 'irq_matrix_alloc_managed'
   kernel/irq/matrix.c:287: warning: Excess function parameter 'cpu' description in 'irq_matrix_alloc_managed'
   kernel/irq/irqdomain.c:105: warning: Function parameter or member 'fwnode' not described in 'irq_domain_free_fwnode'
   kernel/irq/irqdomain.c:915: warning: Function parameter or member 'd' not described in 'irq_domain_xlate_onecell'
   kernel/irq/irqdomain.c:915: warning: Function parameter or member 'ctrlr' not described in 'irq_domain_xlate_onecell'
   kernel/irq/irqdomain.c:915: warning: Function parameter or member 'intspec' not described in 'irq_domain_xlate_onecell'
   kernel/irq/irqdomain.c:915: warning: Function parameter or member 'intsize' not described in 'irq_domain_xlate_onecell'
   kernel/irq/irqdomain.c:915: warning: Function parameter or member 'out_hwirq' not described in 'irq_domain_xlate_onecell'
   kernel/irq/irqdomain.c:915: warning: Function parameter or member 'out_type' not described in 'irq_domain_xlate_onecell'
   kernel/irq/irqdomain.c:934: warning: Function parameter or member 'd' not described in 'irq_domain_xlate_twocell'
   kernel/irq/irqdomain.c:934: warning: Function parameter or member 'ctrlr' not described in 'irq_domain_xlate_twocell'
   kernel/irq/irqdomain.c:934: warning: Function parameter or member 'intspec' not described in 'irq_domain_xlate_twocell'
   kernel/irq/irqdomain.c:934: warning: Function parameter or member 'intsize' not described in 'irq_domain_xlate_twocell'
   kernel/irq/irqdomain.c:934: warning: Function parameter or member 'out_hwirq' not described in 'irq_domain_xlate_twocell'
   kernel/irq/irqdomain.c:934: warning: Function parameter or member 'out_type' not described in 'irq_domain_xlate_twocell'
   kernel/irq/irqdomain.c:957: warning: Function parameter or member 'd' not described in 'irq_domain_xlate_onetwocell'
   kernel/irq/irqdomain.c:957: warning: Function parameter or member 'ctrlr' not described in 'irq_domain_xlate_onetwocell'
   kernel/irq/irqdomain.c:957: warning: Function parameter or member 'intspec' not described in 'irq_domain_xlate_onetwocell'
   kernel/irq/irqdomain.c:957: warning: Function parameter or member 'intsize' not described in 'irq_domain_xlate_onetwocell'
   kernel/irq/irqdomain.c:957: warning: Function parameter or member 'out_hwirq' not described in 'irq_domain_xlate_onetwocell'
   kernel/irq/irqdomain.c:957: warning: Function parameter or member 'out_type' not described in 'irq_domain_xlate_onetwocell'
   kernel/irq/irqdomain.c:982: warning: Function parameter or member 'd' not described in 'irq_domain_translate_onecell'
   kernel/irq/irqdomain.c:982: warning: Function parameter or member 'fwspec' not described in 'irq_domain_translate_onecell'
   kernel/irq/irqdomain.c:982: warning: Function parameter or member 'out_hwirq' not described in 'irq_domain_translate_onecell'
   kernel/irq/irqdomain.c:982: warning: Function parameter or member 'out_type' not described in 'irq_domain_translate_onecell'
   kernel/irq/irqdomain.c:1003: warning: Function parameter or member 'd' not described in 'irq_domain_translate_twocell'
   kernel/irq/irqdomain.c:1003: warning: Function parameter or member 'fwspec' not described in 'irq_domain_translate_twocell'
   kernel/irq/irqdomain.c:1003: warning: Function parameter or member 'out_hwirq' not described in 'irq_domain_translate_twocell'
   kernel/irq/irqdomain.c:1003: warning: Function parameter or member 'out_type' not described in 'irq_domain_translate_twocell'
   kernel/irq/irqdomain.c:1583: warning: Function parameter or member 'domain' not described in 'irq_domain_alloc_irqs_parent'
   kernel/irq/irqdomain.c:1602: warning: Function parameter or member 'domain' not described in 'irq_domain_free_irqs_parent'
   In file included from kernel/rcu/update.c:587:
   kernel/rcu/tasks.h:1192:6: warning: no previous prototype for function 'show_rcu_tasks_gp_kthreads' [-Wmissing-prototypes]
   void show_rcu_tasks_gp_kthreads(void) {}
        ^
   kernel/rcu/tasks.h:1192:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void show_rcu_tasks_gp_kthreads(void) {}
   ^
   static 
   1 warning generated.
   In file included from kernel/printk/printk.c:60:
   kernel/printk/internal.h:59:20: warning: no previous prototype for function 'vprintk_func' [-Wmissing-prototypes]
   __printf(1, 0) int vprintk_func(const char *fmt, va_list args) { return 0; }
                      ^
   kernel/printk/internal.h:59:16: note: declare 'static' if the function is not intended to be used outside of this translation unit
   __printf(1, 0) int vprintk_func(const char *fmt, va_list args) { return 0; }
                  ^
                  static 
   kernel/printk/printk.c:174:5: warning: no previous prototype for function 'devkmsg_sysctl_set_loglvl' [-Wmissing-prototypes]
   int devkmsg_sysctl_set_loglvl(struct ctl_table *table, int write,
       ^
   kernel/printk/printk.c:174:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   int devkmsg_sysctl_set_loglvl(struct ctl_table *table, int write,
   ^
   static 
   kernel/events/hw_breakpoint.c:461: warning: Function parameter or member 'context' not described in 'register_user_hw_breakpoint'
   kernel/events/hw_breakpoint.c:560: warning: Function parameter or member 'context' not described in 'register_wide_hw_breakpoint'
   2 warnings generated.
   kernel/panic.c:85:13: warning: no previous prototype for function 'panic_smp_self_stop' [-Wmissing-prototypes]
   void __weak panic_smp_self_stop(void)
               ^
   kernel/panic.c:85:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void __weak panic_smp_self_stop(void)
   ^
   static 
   kernel/panic.c:95:13: warning: no previous prototype for function 'nmi_panic_self_stop' [-Wmissing-prototypes]
   void __weak nmi_panic_self_stop(struct pt_regs *regs)
               ^
   kernel/panic.c:95:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void __weak nmi_panic_self_stop(struct pt_regs *regs)
   ^
   static 
   kernel/panic.c:106:13: warning: no previous prototype for function 'crash_smp_send_stop' [-Wmissing-prototypes]
   void __weak crash_smp_send_stop(void)
               ^
   kernel/panic.c:106:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void __weak crash_smp_send_stop(void)
   ^
   static 
   kernel/panic.c:576:6: warning: no previous prototype for function '__warn' [-Wmissing-prototypes]
   void __warn(const char *file, int line, void *caller, unsigned taint,
        ^
..

vim +/remove_entity_load_avg +4056 kernel/sched/fair.c

536bd00cdbb7b9 Rafael J. Wysocki 2016-05-06  4055  
9d89c257dfb9c5 Yuyang Du         2015-07-15 @4056  static inline void remove_entity_load_avg(struct sched_entity *se) {}
6e83125c6b151a Peter Zijlstra    2014-02-11  4057  

:::::: The code at line 4056 was first introduced by commit
:::::: 9d89c257dfb9c51a532d69397f6eed75e5168c35 sched/fair: Rewrite runnable load and utilization average tracking

:::::: TO: Yuyang Du <yuyang.du@intel.com>
:::::: CC: Ingo Molnar <mingo@kernel.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202006301151.pjF9p3fT%25lkp%40intel.com.

--C7zPtVaVf+AK4Oqc
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
9h+nglZV/msAAA==

--C7zPtVaVf+AK4Oqc--
