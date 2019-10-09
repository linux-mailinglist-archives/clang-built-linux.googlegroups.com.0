Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBQNU67WAKGQENNG3W6Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83c.google.com (mail-qt1-x83c.google.com [IPv6:2607:f8b0:4864:20::83c])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E1CCD0F7B
	for <lists+clang-built-linux@lfdr.de>; Wed,  9 Oct 2019 15:01:55 +0200 (CEST)
Received: by mail-qt1-x83c.google.com with SMTP id k53sf2052698qtk.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 09 Oct 2019 06:01:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570626114; cv=pass;
        d=google.com; s=arc-20160816;
        b=MJ+PrJU1Iy4fHzBmrwE10vFw4GFguYyit2JYrxhqiKfjgeaGaspYP7es7brRz2FDyk
         DWTKekGAtPLl5frlRe0o/EU4mLkUGDU7Cm3qHFB2QpcrFxEYoE7LS4LgoS14xx/9dHPR
         94NIvOqszLH7TJvJ0/uXekk6HrXUsNc4qzz703l5eSbxv3crU52VFlZH54Dbp4mERzbp
         MXoLfZF3kTLmmrp3jIDs937R/oJiKxJ+RnNeO8osxIrRc46gMI+IUr9ntFJk3xR3fkk3
         q6ydLs4MnOacrQ+pwJ5OgrzCib/9YCEQhVUqSUkx4zw39PxdRrzbLBSxW3KWmxnCSq51
         mGGw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=wTBVAyMhUUqmbARp44LC1md+P71NQ/5WrMO3LDdR7uM=;
        b=RSDbRTr1F2jBhaK1tAWvxWvq9n6JT+F7xilH/JzsgMIudkVIrS3KooHKG4ziKJoBFD
         g62533L6dN9mmuYtxzCsUwCQ4kLOjqisic4kYnSSHicJnlLkRrelyrEHHgOScjtsqeeV
         cGW6B0gB2iogZ2EsRD5EQm5z15sDNy3mOufIxwQIgct1nX7KBxWtJ1WI6t5oOYcYesUa
         mfkvZkWR1YWMC6Q0LmwD9D9wLMe+T90M8RGENOYN8+nKNvw5Tug6qCsT8oKKQBtvZw4a
         8o6JZwu+BSuPqOt5OZ0pldvZvlu9q+bboVPy84Y/9HdjdRm5PbHoHkhdGnXR5rzF6Uxn
         l2Jw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wTBVAyMhUUqmbARp44LC1md+P71NQ/5WrMO3LDdR7uM=;
        b=oBcEsSAsttrhYMDbjfDrP+93Zq7B+C+tJ0bUTpvoGk9BJYpVEDsYpr77+hIhriP4Fs
         PyeMGCRg84A5u0moVc77ApRYmICN+F2JGOSVFgnwn6nMNcRYPu+BA1HblWp/4uLveMOj
         n0Gfbqv+AUumw6CABb0KE0ON+1L87MhY6g18xYgb/qbOeUi44tLqezVgsqJhdUnn8dz6
         lrGl4tz8c/YIwKif+gw+vI+TDS0AmUH9Z/SHhurSxwvcrEFG/ZLTjPtbAFhGtUSA/Dkb
         Gf19jb8KE0Ugn1zHLo/smzFJ3n+zoErLfUcIvH7z5EyBYrt6YJvdgbnWDfAWfawFbSdy
         bf4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wTBVAyMhUUqmbARp44LC1md+P71NQ/5WrMO3LDdR7uM=;
        b=FZpl80el6rIv9qACREw8g/ysn846iD+IPta8DSV/9gdiP74O1zkib3xEX/a9+M4NYZ
         g6cAbARe57zp9DsGH8kSIisfuQqxBU3FD8Y9XbyXEa4CjrbA0MO4ws9kr4uKgUjhF7Ny
         SuD6+J51EcosSyb1PZB15/sBoPyEdHPttYXUUi0ceuA7vbJPzfWYYSPOrOxAE3aiuNhc
         Y8GIfYjub4v1jp1VTIxTbTVL1ymy0iCmT8IoiRglXMI0ULOW1+70fd8OPb+WohqacOwE
         YKK1g+d+x3p3uT9asHP3G6doMG1LRsNcUpgT/zmYazL2WZqp/cQDC4nTkw/lELzJM/c/
         MS4Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXBY+WSAdR8xNp4NBbmGl0y6EjgPQIYX8MV+5V0/vQ6aKg7P7GR
	YvhV4EMcynaW5ts+i6B6dmM=
X-Google-Smtp-Source: APXvYqwBnrU0N/NmdUx54FS2rLhPS2TpO26WRdU9OUIT51AKSRhnkJw5cQav36IFrplXkyLv3LH1kA==
X-Received: by 2002:a37:aa11:: with SMTP id t17mr3351404qke.347.1570626113880;
        Wed, 09 Oct 2019 06:01:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:d92:: with SMTP id 140ls358577qkn.13.gmail; Wed, 09 Oct
 2019 06:01:53 -0700 (PDT)
X-Received: by 2002:ae9:f306:: with SMTP id p6mr3416764qkg.169.1570626113427;
        Wed, 09 Oct 2019 06:01:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570626113; cv=none;
        d=google.com; s=arc-20160816;
        b=HJHQH7b3xoHux5XDszQAs54fdfY9XOxhTz+ZQIcW+1xc82faMMm/5UDb6vJmJ/ORKQ
         E099jTg/KtJwpXo0L1pO2Fp0xZZbTk6WPAxkn0nolM9taRHUqhgMV8vNfbkl3EOJU9Gb
         L9Lk0wPNrnidXx0HgFfDJV+bLZe0FC1fY141epDaruxfRbHozBp6PwEPmUwBTxQqKAqY
         ep7bMJv1yjukQqgSoDQXupkFxSxfCG0XjbvqKxf+GD7Mquh0pokQtkQnnS6MHksQ+xKt
         yTrv/ZEwbp1EwGSKWLNECW2aDG6slMR1lAMUAvys0/UH/Uq3jw2nM87wtjl/nQ2YUIQ/
         IoGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=/4X0PPb+6ZFs+PNEEt3RL0m2V/WQSX50Y6I5tlbuNo8=;
        b=ojlUSTMGso0OmkzqSJ5+Oe9TUYPR21FWGc1kcGBhhju+4Ka7nRtpeK+4L3kShYIyuU
         zZF8KW9I/h09sl9rAS3Q0NoGwbn1vqHQoRUeoY4oHB5AYQ6QLBvnL2c6Cl4SkMv2PTjr
         s1kUEPkeOh65B+u6zLB4SjrH/r0KAk3dqpEBLuL2IA/rYWeVaGeawIwbIjbw1NxwbY9x
         dRNDavVoWEJ5jQn3xLKQ3Adsu7yDNHLbGl/qBvUhWfflNBBtRMP/gFuKd+ePKzvUadOi
         kJD8jIpgT60qAMBeZ795/SRvyyQVDcGl73PlxhEmYh+uW8TJYmSaA1fLyw206bm2vzbd
         QPoA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga11.intel.com (mga11.intel.com. [192.55.52.93])
        by gmr-mx.google.com with ESMTPS id u44si207077qtb.5.2019.10.09.06.01.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 09 Oct 2019 06:01:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) client-ip=192.55.52.93;
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 09 Oct 2019 06:01:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,276,1566889200"; 
   d="gz'50?scan'50,208,50";a="200121608"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by FMSMGA003.fm.intel.com with ESMTP; 09 Oct 2019 06:01:50 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1iIBbB-000HdF-Ux; Wed, 09 Oct 2019 21:01:49 +0800
Date: Wed, 9 Oct 2019 21:00:55 +0800
From: kbuild test robot <lkp@intel.com>
To: kbuild@01.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: [peterz-queue:locking/jump_label 14/30]
 include/linux/module.h:741:20: error: redefinition of 'within_module_init'
Message-ID: <201910092154.pdg3KpdC%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="4q7c34flytsja37d"
Content-Disposition: inline
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted
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


--4q7c34flytsja37d
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

CC: kbuild-all@01.org
TO: Josh Poimboeuf <jpoimboe@redhat.com>
CC: Peter Zijlstra <peterz@infradead.org>

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/peterz/queue.git locking/jump_label
head:   ef36041eb3c323ddc4050649298755a82b367782
commit: 46e5aa859935cf4e2ec84915693a41cc45085127 [14/30] static_call: Add inline static call infrastructure
config: x86_64-allnoconfig (attached as .config)
compiler: clang version 10.0.0 (git://gitmirror/llvm_project 41c934acaf8539dedad4b48bbc88580c74fed25a)
reproduce:
        git checkout 46e5aa859935cf4e2ec84915693a41cc45085127
        # save the attached .config to linux build tree
        make ARCH=x86_64 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All error/warnings (new ones prefixed by >>):

   In file included from arch/x86//entry/common.c:26:
   In file included from include/linux/livepatch.h:12:
>> include/linux/module.h:741:20: error: redefinition of 'within_module_init'
   static inline bool within_module_init(unsigned long addr, const struct module *mod)
                      ^
   include/linux/module.h:730:20: note: previous definition is here
   static inline bool within_module_init(unsigned long addr,
                      ^
   1 error generated.
--
   In file included from arch/x86//kernel/traps.c:17:
   In file included from include/linux/kallsyms.h:13:
>> include/linux/module.h:741:20: error: redefinition of 'within_module_init'
   static inline bool within_module_init(unsigned long addr, const struct module *mod)
                      ^
   include/linux/module.h:730:20: note: previous definition is here
   static inline bool within_module_init(unsigned long addr,
                      ^
   In file included from arch/x86//kernel/traps.c:19:
   In file included from include/linux/kprobes.h:29:
   In file included from include/linux/ftrace.h:14:
   In file included from include/linux/ptrace.h:7:
   In file included from include/linux/sched/signal.h:6:
   include/linux/signal.h:87:11: warning: array index 3 is past the end of the array (which contains 1 element) [-Warray-bounds]
                   return (set->sig[3] | set->sig[2] |
                           ^        ~
   arch/x86/include/asm/signal.h:24:2: note: array 'sig' declared here
           unsigned long sig[_NSIG_WORDS];
           ^
   In file included from arch/x86//kernel/traps.c:19:
   In file included from include/linux/kprobes.h:29:
   In file included from include/linux/ftrace.h:14:
   In file included from include/linux/ptrace.h:7:
   In file included from include/linux/sched/signal.h:6:
   include/linux/signal.h:87:25: warning: array index 2 is past the end of the array (which contains 1 element) [-Warray-bounds]
                   return (set->sig[3] | set->sig[2] |
                                         ^        ~
   arch/x86/include/asm/signal.h:24:2: note: array 'sig' declared here
           unsigned long sig[_NSIG_WORDS];
           ^
   In file included from arch/x86//kernel/traps.c:19:
   In file included from include/linux/kprobes.h:29:
   In file included from include/linux/ftrace.h:14:
   In file included from include/linux/ptrace.h:7:
   In file included from include/linux/sched/signal.h:6:
   include/linux/signal.h:88:4: warning: array index 1 is past the end of the array (which contains 1 element) [-Warray-bounds]
                           set->sig[1] | set->sig[0]) == 0;
                           ^        ~
   arch/x86/include/asm/signal.h:24:2: note: array 'sig' declared here
           unsigned long sig[_NSIG_WORDS];
           ^
   In file included from arch/x86//kernel/traps.c:19:
   In file included from include/linux/kprobes.h:29:
   In file included from include/linux/ftrace.h:14:
   In file included from include/linux/ptrace.h:7:
   In file included from include/linux/sched/signal.h:6:
   include/linux/signal.h:90:11: warning: array index 1 is past the end of the array (which contains 1 element) [-Warray-bounds]
                   return (set->sig[1] | set->sig[0]) == 0;
                           ^        ~
   arch/x86/include/asm/signal.h:24:2: note: array 'sig' declared here
           unsigned long sig[_NSIG_WORDS];
           ^
   In file included from arch/x86//kernel/traps.c:19:
   In file included from include/linux/kprobes.h:29:
   In file included from include/linux/ftrace.h:14:
   In file included from include/linux/ptrace.h:7:
   In file included from include/linux/sched/signal.h:6:
   include/linux/signal.h:103:11: warning: array index 3 is past the end of the array (which contains 1 element) [-Warray-bounds]
                   return  (set1->sig[3] == set2->sig[3]) &&
                            ^         ~
   arch/x86/include/asm/signal.h:24:2: note: array 'sig' declared here
           unsigned long sig[_NSIG_WORDS];
           ^
   In file included from arch/x86//kernel/traps.c:19:
   In file included from include/linux/kprobes.h:29:
   In file included from include/linux/ftrace.h:14:
   In file included from include/linux/ptrace.h:7:
   In file included from include/linux/sched/signal.h:6:
   include/linux/signal.h:103:27: warning: array index 3 is past the end of the array (which contains 1 element) [-Warray-bounds]
                   return  (set1->sig[3] == set2->sig[3]) &&
                                            ^         ~
   arch/x86/include/asm/signal.h:24:2: note: array 'sig' declared here
           unsigned long sig[_NSIG_WORDS];
           ^
   In file included from arch/x86//kernel/traps.c:19:
   In file included from include/linux/kprobes.h:29:
   In file included from include/linux/ftrace.h:14:
   In file included from include/linux/ptrace.h:7:
   In file included from include/linux/sched/signal.h:6:
   include/linux/signal.h:104:5: warning: array index 2 is past the end of the array (which contains 1 element) [-Warray-bounds]
                           (set1->sig[2] == set2->sig[2]) &&
                            ^         ~
   arch/x86/include/asm/signal.h:24:2: note: array 'sig' declared here
           unsigned long sig[_NSIG_WORDS];
           ^
   In file included from arch/x86//kernel/traps.c:19:
   In file included from include/linux/kprobes.h:29:
   In file included from include/linux/ftrace.h:14:
   In file included from include/linux/ptrace.h:7:
   In file included from include/linux/sched/signal.h:6:
   include/linux/signal.h:104:21: warning: array index 2 is past the end of the array (which contains 1 element) [-Warray-bounds]
                           (set1->sig[2] == set2->sig[2]) &&
                                            ^         ~
   arch/x86/include/asm/signal.h:24:2: note: array 'sig' declared here
           unsigned long sig[_NSIG_WORDS];
           ^
   In file included from arch/x86//kernel/traps.c:19:
   In file included from include/linux/kprobes.h:29:
   In file included from include/linux/ftrace.h:14:
   In file included from include/linux/ptrace.h:7:
   In file included from include/linux/sched/signal.h:6:
   include/linux/signal.h:105:5: warning: array index 1 is past the end of the array (which contains 1 element) [-Warray-bounds]
                           (set1->sig[1] == set2->sig[1]) &&
--
   In file included from arch/x86//kernel/sys_x86_64.c:6:
   In file included from include/linux/syscalls.h:85:
   In file included from include/trace/syscall.h:7:
   In file included from include/linux/trace_events.h:10:
   In file included from include/linux/perf_event.h:49:
   In file included from include/linux/ftrace.h:11:
   In file included from include/linux/kallsyms.h:13:
>> include/linux/module.h:741:20: error: redefinition of 'within_module_init'
   static inline bool within_module_init(unsigned long addr, const struct module *mod)
                      ^
   include/linux/module.h:730:20: note: previous definition is here
   static inline bool within_module_init(unsigned long addr,
                      ^
   In file included from arch/x86//kernel/sys_x86_64.c:14:
   include/linux/mman.h:134:9: warning: division by zero is undefined [-Wdivision-by-zero]
                  _calc_vm_trans(flags, MAP_SYNC,       VM_SYNC      );
                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/mman.h:111:21: note: expanded from macro '_calc_vm_trans'
      : ((x) & (bit1)) / ((bit1) / (bit2))))
                       ^ ~~~~~~~~~~~~~~~~~
   1 warning and 1 error generated.
--
   In file included from arch/x86//events/intel/pt.c:25:
   In file included from arch/x86//events/intel/../perf_event.h:15:
   In file included from include/linux/perf_event.h:49:
   In file included from include/linux/ftrace.h:11:
   In file included from include/linux/kallsyms.h:13:
>> include/linux/module.h:741:20: error: redefinition of 'within_module_init'
   static inline bool within_module_init(unsigned long addr, const struct module *mod)
                      ^
   include/linux/module.h:730:20: note: previous definition is here
   static inline bool within_module_init(unsigned long addr,
                      ^
>> arch/x86//events/intel/pt.c:674:2: warning: array index -1 is before the beginning of the array [-Warray-bounds]
           TOPA_ENTRY(last, -1)->base = topa_pfn(topa);
           ^                ~~
   arch/x86//events/intel/pt.c:601:6: note: expanded from macro 'TOPA_ENTRY'
                   : &topa_to_page(t)->table[(i)])
                      ^                       ~
   arch/x86//events/intel/pt.c:578:2: note: array 'table' declared here
           struct topa_entry       table[TENTS_PER_PAGE];
           ^
   arch/x86//events/intel/pt.c:675:2: warning: array index -1 is before the beginning of the array [-Warray-bounds]
           TOPA_ENTRY(last, -1)->end = 1;
           ^                ~~
   arch/x86//events/intel/pt.c:601:6: note: expanded from macro 'TOPA_ENTRY'
                   : &topa_to_page(t)->table[(i)])
                      ^                       ~
   arch/x86//events/intel/pt.c:578:2: note: array 'table' declared here
           struct topa_entry       table[TENTS_PER_PAGE];
           ^
   arch/x86//events/intel/pt.c:724:2: warning: array index -1 is before the beginning of the array [-Warray-bounds]
           TOPA_ENTRY(topa, -1)->base = page_to_phys(p) >> TOPA_SHIFT;
           ^                ~~
   arch/x86//events/intel/pt.c:601:6: note: expanded from macro 'TOPA_ENTRY'
                   : &topa_to_page(t)->table[(i)])
                      ^                       ~
   arch/x86//events/intel/pt.c:578:2: note: array 'table' declared here
           struct topa_entry       table[TENTS_PER_PAGE];
           ^
   arch/x86//events/intel/pt.c:725:2: warning: array index -1 is before the beginning of the array [-Warray-bounds]
           TOPA_ENTRY(topa, -1)->size = order;
           ^                ~~
   arch/x86//events/intel/pt.c:601:6: note: expanded from macro 'TOPA_ENTRY'
                   : &topa_to_page(t)->table[(i)])
                      ^                       ~
   arch/x86//events/intel/pt.c:578:2: note: array 'table' declared here
           struct topa_entry       table[TENTS_PER_PAGE];
           ^
   arch/x86//events/intel/pt.c:728:3: warning: array index -1 is before the beginning of the array [-Warray-bounds]
                   TOPA_ENTRY(topa, -1)->intr = 1;
                   ^                ~~
   arch/x86//events/intel/pt.c:601:6: note: expanded from macro 'TOPA_ENTRY'
                   : &topa_to_page(t)->table[(i)])
                      ^                       ~
   arch/x86//events/intel/pt.c:578:2: note: array 'table' declared here
           struct topa_entry       table[TENTS_PER_PAGE];
           ^
   arch/x86//events/intel/pt.c:729:3: warning: array index -1 is before the beginning of the array [-Warray-bounds]
                   TOPA_ENTRY(topa, -1)->stop = 1;
                   ^                ~~
   arch/x86//events/intel/pt.c:601:6: note: expanded from macro 'TOPA_ENTRY'
                   : &topa_to_page(t)->table[(i)])
                      ^                       ~
   arch/x86//events/intel/pt.c:578:2: note: array 'table' declared here
           struct topa_entry       table[TENTS_PER_PAGE];
           ^
   arch/x86//events/intel/pt.c:1171:3: warning: array index -1 is before the beginning of the array [-Warray-bounds]
                   TOPA_ENTRY(buf->last, -1)->base = topa_pfn(buf->first);
                   ^                     ~~
   arch/x86//events/intel/pt.c:601:6: note: expanded from macro 'TOPA_ENTRY'
                   : &topa_to_page(t)->table[(i)])
                      ^                       ~
   arch/x86//events/intel/pt.c:578:2: note: array 'table' declared here
           struct topa_entry       table[TENTS_PER_PAGE];
           ^
   arch/x86//events/intel/pt.c:1172:3: warning: array index -1 is before the beginning of the array [-Warray-bounds]
                   TOPA_ENTRY(buf->last, -1)->end = 1;
                   ^                     ~~
   arch/x86//events/intel/pt.c:601:6: note: expanded from macro 'TOPA_ENTRY'
                   : &topa_to_page(t)->table[(i)])
                      ^                       ~
   arch/x86//events/intel/pt.c:578:2: note: array 'table' declared here
           struct topa_entry       table[TENTS_PER_PAGE];
           ^
   8 warnings and 1 error generated.

vim +/within_module_init +741 include/linux/module.h

   740	
 > 741	static inline bool within_module_init(unsigned long addr, const struct module *mod)
   742	{
   743		return false;
   744	}
   745	

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201910092154.pdg3KpdC%25lkp%40intel.com.

--4q7c34flytsja37d
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--4q7c34flytsja37d--
