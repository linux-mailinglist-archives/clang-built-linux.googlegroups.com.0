Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBGE36T3QKGQECWRFUYI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3e.google.com (mail-yb1-xb3e.google.com [IPv6:2607:f8b0:4864:20::b3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 033072115F9
	for <lists+clang-built-linux@lfdr.de>; Thu,  2 Jul 2020 00:26:34 +0200 (CEST)
Received: by mail-yb1-xb3e.google.com with SMTP id r17sf27536416ybj.22
        for <lists+clang-built-linux@lfdr.de>; Wed, 01 Jul 2020 15:26:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593642393; cv=pass;
        d=google.com; s=arc-20160816;
        b=eapNPjnSbMrdmzKmeF8doHsWj/9S4dkDOy6drEZuewKHLlF3tjbUl9iiZbrAyvGd/8
         m6LZDPvNQXNDy1ZzKfz97k++ZQj4mcDT/qRSbvCX0Exo0w9f+OVtysAQbWFpdg4DYMYX
         XGkLmS71OosRGhGQZX//WMJKii5895yx5PpoYWjsxd/a63KEBgvo8++ES3GU5MtK1ywo
         Nqg9VlM7awD8sCJc6xwq3HbF5z5xXphplm9wGMNBFgDveK5ZVTGIn0GtbnYYIj7L8BL6
         QNMwP8lJhwlHXS0KfvhmMvAqzXQz/CtZdZbZj0h9d/ldRsWO3DLD67COSOQHIur4rZo8
         /+7A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=TUepP0YnXs5EJY78jYhkEZvdewwBFAj/xopljvn8CX8=;
        b=jtWEL3uTIv3noidrDbNZSEr54lca2y4rXGpm2tNLu/eKMLLLJVbhCkEEw0LWSa9rTT
         1qZEMYLoaXm8F3E49peZ5oqHtKwl48Woo7JHwoBDPJoL6/Az7tT1WTlALmH7uQv8nVzX
         35SXstdiUFlgUoTQrjTDx1ZhRAeWuiaQf0O2oop4idL+IuHZX9EJEwWfBUge8Fg7sQ8A
         BDIgoKJ3CpdNus9IU2uXzW8vd93h8nu+KnvrxU2hjJCb1FCYWsbFMHdvEJtFJPu027Xa
         hOkzqFWa5hs9owUG6H1479zSy4gHqFv1Fiugrxm+e4jN1+vsfaauWbejlA6j3ZkJ+4K2
         8uXw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TUepP0YnXs5EJY78jYhkEZvdewwBFAj/xopljvn8CX8=;
        b=LvgBvW1fOLdGZ1FF2HN7IxRRSpW5MmxrcbGOpfRAxwYfoD70lM8MJU86Wm5lZI21NU
         8+L6ArjeUyswzH+rtEadEhmwZX1TwynsUwkPrKEjdRCOX6JWvG+ew3SAnp9lHS4I8abq
         9zn6LX+pW0P2VQqjJXfETPxCw1b7IsfSGLxLdKrh0kNLFO1ndpKB61m+amKX6jtlevQj
         yCtwXOjWjtord3nYSYvaAjcFS96iggUxv1ft0DkfMvdJ2HNm8Vmst9YPU4NMeN2KHoP/
         AaJMxzrtbZcjAzkNU5htWsDkkkm2LDbSFSMfbDb5hTpuWUf6ZnMFMi8uJ8gceehTBssw
         mcZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TUepP0YnXs5EJY78jYhkEZvdewwBFAj/xopljvn8CX8=;
        b=hjhoCrm6YyWUgY2BobdaTJAgSwD7+VzGENLaktmgOngG2vckBfgFP/gpKBXpArNMnt
         EMlC6ImDQJa4EeGHOvxL9WOBb+hctx6ikYzLfx6njOvty5hSCSPYwxRnbIdF7rgApajv
         zGZZ5zkiJ0mZJidy+Eo/rK4MZ0T2xsgYMkZ0lo70+/cCzw7UEdvqWvJv94YHnx+FmbJH
         FqLmB9WU5B/qafdvD3UVuc/rkyEG+dLZ600SRlq7BKdzR6VAHM0o81Dwo0WO7YSxqSjQ
         zUgZ9ELUFwqdVj6gUM5Ug7ZngJDC2s1JDdgrvkk2y7oYBPWbxTzNOwZbWUchZLO54Dxr
         LZRQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533HPWoWJvMp03hrNRd+HgFejmDWW27teeVTCmRxwBE8r6icB6ry
	i7Zun1jJl2ulCyp/iJ2gQnY=
X-Google-Smtp-Source: ABdhPJy2yL8uzzRsfEtnoXyPgIpF1tO9J+ol5Joa+BaDmwwr+AfECAwlDGd0URMeVKHy04vDv1oLiQ==
X-Received: by 2002:a25:ba09:: with SMTP id t9mr47814511ybg.128.1593642392799;
        Wed, 01 Jul 2020 15:26:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:4707:: with SMTP id u7ls1560110yba.5.gmail; Wed, 01 Jul
 2020 15:26:32 -0700 (PDT)
X-Received: by 2002:a25:1941:: with SMTP id 62mr50655811ybz.16.1593642392387;
        Wed, 01 Jul 2020 15:26:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593642392; cv=none;
        d=google.com; s=arc-20160816;
        b=IIXsIQBuL0aNv+QHz+HRxqAXa1mhIfOWryh6XnAT3laYqw0YsK/GvHmDY3XupnnNAd
         TROvd8Trspxd+aXoQ0fx7RbqvJfleW1q+s/WrF/9lB2v9pfBqt+jZiJoElIfp+28s8FV
         yEf11Grf2kesWLcq1KSOpc2IPJiX5FZtI93ZGcBn+O8oAU2DoH8/JGMnDm95RVzGzF6O
         r/s2IWzPVq8bsWh/P9FgVQ4TUzB0eB96Hg7daxp8TGVUjZOw5Z9uT2xD3Z+WB/7FTSfg
         tlyuT0BWSQY7ou89EUj96Pri/mU0X5cjCY8vuYTB5kSFwf4fAmb13pT4J5Brn+NvQgb/
         cNIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=YjC11J28GEVh+sOjhhjt4bQ0ZYF2rBkfUoSwob61z44=;
        b=QhWwDZEbpQ1MQgiFqn/5d9C1ippK+X+2wmlMBmQ0wxUTThCnwkQEBrc9DG6laNQLzp
         JIABmCv7oIWT0xqk20NetoPbibDKqS1vwhm3iI6ugt+Z2upQqEWXTuE8kWGJU5n+D7xp
         dTpmBRr+73IoR5MRndPh83gMT5H2CzdHMZJZpvkq67ejP4bXOomn/8gt+O/eaKDSXq4a
         GWK1OYcZ3oP/UeJXmL9312FBaOyas71AH4WQbOI1qwXipCqu+mmT0Xi59Kb/iNUfJF4x
         6qbvQHzaW7mA88h0jU/gdcEDhyBy9IfeFT+Lpjufi19XIF5V533DahUEglBoU8N2bgjw
         VDfA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga09.intel.com (mga09.intel.com. [134.134.136.24])
        by gmr-mx.google.com with ESMTPS id a7si347176ybj.5.2020.07.01.15.26.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Jul 2020 15:26:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) client-ip=134.134.136.24;
IronPort-SDR: 53/KRwg+0ncBQ9CntLjIAFO7mr1EvHS+LoNhfBc4o/X+/xixaCh9kp7morHwaJYe4nIoBeyqsr
 llvdfXFBLUrQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9669"; a="148271367"
X-IronPort-AV: E=Sophos;i="5.75,302,1589266800"; 
   d="gz'50?scan'50,208,50";a="148271367"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Jul 2020 15:26:30 -0700
IronPort-SDR: NtaPaK1Lqh+UhRnUltxtS/nEa2DvyDIHBN/VMyp4pzHpOWMyRjGY1V0IIiIvZh8iEwMdteM9Sq
 TgB+lzEMhBoQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,302,1589266800"; 
   d="gz'50?scan'50,208,50";a="295696104"
Received: from lkp-server01.sh.intel.com (HELO 28879958b202) ([10.239.97.150])
  by orsmga002.jf.intel.com with ESMTP; 01 Jul 2020 15:26:27 -0700
Received: from kbuild by 28879958b202 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1jqlBS-0003MB-Jz; Wed, 01 Jul 2020 22:26:26 +0000
Date: Thu, 2 Jul 2020 06:25:40 +0800
From: kernel test robot <lkp@intel.com>
To: Adrian Reber <areber@redhat.com>,
	Christian Brauner <christian.brauner@ubuntu.com>,
	Eric Biederman <ebiederm@xmission.com>,
	Pavel Emelyanov <ovzxemul@gmail.com>,
	Oleg Nesterov <oleg@redhat.com>,
	Dmitry Safonov <0x7f454c46@gmail.com>,
	Andrei Vagin <avagin@gmail.com>,
	Nicolas Viennot <Nicolas.Viennot@twosigma.com>,
	=?utf-8?B?TWljaGHFgiBDxYJhcGnFhHNraQ==?= <mclapinski@google.com>,
	Kamil Yurtsever <kyurtsever@google.com>,
	Dirk Petersen <dipeit@gmail.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH v4 3/3] prctl: Allow ptrace capable processes to change
 /proc/self/exe
Message-ID: <202007020627.VssLd1av%lkp@intel.com>
References: <20200701064906.323185-4-areber@redhat.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="4Ckj6UjgE2iN1+kY"
Content-Disposition: inline
In-Reply-To: <20200701064906.323185-4-areber@redhat.com>
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


--4Ckj6UjgE2iN1+kY
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Adrian,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on pcmoore-selinux/next]
[also build test ERROR on kselftest/next linus/master v5.8-rc3 next-20200701]
[cannot apply to security/next-testing]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use  as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Adrian-Reber/capabilities-Introduce-CAP_CHECKPOINT_RESTORE/20200701-145119
base:   https://git.kernel.org/pub/scm/linux/kernel/git/pcmoore/selinux.git next
config: x86_64-allnoconfig (attached as .config)
compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project c8f1d442d0858f66fd4128fde6f67eb5202fa2b1)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   In file included from kernel/fork.c:50:
>> include/linux/security.h:1130:9: error: implicit declaration of function 'cap_prctl_set_mm_exe_file' [-Werror,-Wimplicit-function-declaration]
           return cap_prctl_set_mm_exe_file(exe_file);
                  ^
   include/linux/security.h:1130:9: note: did you mean 'security_prctl_set_mm_exe_file'?
   include/linux/security.h:1128:19: note: 'security_prctl_set_mm_exe_file' declared here
   static inline int security_prctl_set_mm_exe_file(struct file *exe_file)
                     ^
   1 error generated.
--
   In file included from kernel/events/core.c:34:
   In file included from include/linux/syscalls.h:85:
   In file included from include/trace/syscall.h:7:
   In file included from include/linux/trace_events.h:10:
   In file included from include/linux/perf_event.h:59:
>> include/linux/security.h:1130:9: error: implicit declaration of function 'cap_prctl_set_mm_exe_file' [-Werror,-Wimplicit-function-declaration]
           return cap_prctl_set_mm_exe_file(exe_file);
                  ^
   include/linux/security.h:1130:9: note: did you mean 'security_prctl_set_mm_exe_file'?
   include/linux/security.h:1128:19: note: 'security_prctl_set_mm_exe_file' declared here
   static inline int security_prctl_set_mm_exe_file(struct file *exe_file)
                     ^
   kernel/events/core.c:6490:6: warning: no previous prototype for function 'perf_pmu_snapshot_aux' [-Wmissing-prototypes]
   long perf_pmu_snapshot_aux(struct perf_buffer *rb,
        ^
   kernel/events/core.c:6490:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   long perf_pmu_snapshot_aux(struct perf_buffer *rb,
   ^
   static 
   1 warning and 1 error generated.
--
   In file included from kernel/printk/printk.c:34:
>> include/linux/security.h:1130:9: error: implicit declaration of function 'cap_prctl_set_mm_exe_file' [-Werror,-Wimplicit-function-declaration]
           return cap_prctl_set_mm_exe_file(exe_file);
                  ^
   include/linux/security.h:1130:9: note: did you mean 'security_prctl_set_mm_exe_file'?
   include/linux/security.h:1128:19: note: 'security_prctl_set_mm_exe_file' declared here
   static inline int security_prctl_set_mm_exe_file(struct file *exe_file)
                     ^
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
   2 warnings and 1 error generated.
--
   In file included from kernel/sched/fair.c:23:
   In file included from kernel/sched/sched.h:61:
>> include/linux/security.h:1130:9: error: implicit declaration of function 'cap_prctl_set_mm_exe_file' [-Werror,-Wimplicit-function-declaration]
           return cap_prctl_set_mm_exe_file(exe_file);
                  ^
   include/linux/security.h:1130:9: note: did you mean 'security_prctl_set_mm_exe_file'?
   include/linux/security.h:1128:19: note: 'security_prctl_set_mm_exe_file' declared here
   static inline int security_prctl_set_mm_exe_file(struct file *exe_file)
                     ^
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
   5 warnings and 1 error generated.
--
   In file included from kernel/sched/rt.c:6:
   In file included from kernel/sched/sched.h:61:
>> include/linux/security.h:1130:9: error: implicit declaration of function 'cap_prctl_set_mm_exe_file' [-Werror,-Wimplicit-function-declaration]
           return cap_prctl_set_mm_exe_file(exe_file);
                  ^
   include/linux/security.h:1130:9: note: did you mean 'security_prctl_set_mm_exe_file'?
   include/linux/security.h:1128:19: note: 'security_prctl_set_mm_exe_file' declared here
   static inline int security_prctl_set_mm_exe_file(struct file *exe_file)
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
   3 warnings and 1 error generated.
--
   In file included from kernel/time/hrtimer.c:30:
   In file included from include/linux/syscalls.h:85:
   In file included from include/trace/syscall.h:7:
   In file included from include/linux/trace_events.h:10:
   In file included from include/linux/perf_event.h:59:
>> include/linux/security.h:1130:9: error: implicit declaration of function 'cap_prctl_set_mm_exe_file' [-Werror,-Wimplicit-function-declaration]
           return cap_prctl_set_mm_exe_file(exe_file);
                  ^
   include/linux/security.h:1130:9: note: did you mean 'security_prctl_set_mm_exe_file'?
   include/linux/security.h:1128:19: note: 'security_prctl_set_mm_exe_file' declared here
   static inline int security_prctl_set_mm_exe_file(struct file *exe_file)
                     ^
   kernel/time/hrtimer.c:120:21: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
           [CLOCK_REALTIME]        = HRTIMER_BASE_REALTIME,
                                     ^~~~~~~~~~~~~~~~~~~~~
   kernel/time/hrtimer.c:118:27: note: previous initialization is here
           [0 ... MAX_CLOCKS - 1]  = HRTIMER_MAX_CLOCK_BASES,
                                     ^~~~~~~~~~~~~~~~~~~~~~~
   kernel/time/hrtimer.c:121:22: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
           [CLOCK_MONOTONIC]       = HRTIMER_BASE_MONOTONIC,
                                     ^~~~~~~~~~~~~~~~~~~~~~
   kernel/time/hrtimer.c:118:27: note: previous initialization is here
           [0 ... MAX_CLOCKS - 1]  = HRTIMER_MAX_CLOCK_BASES,
                                     ^~~~~~~~~~~~~~~~~~~~~~~
   kernel/time/hrtimer.c:122:21: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
           [CLOCK_BOOTTIME]        = HRTIMER_BASE_BOOTTIME,
                                     ^~~~~~~~~~~~~~~~~~~~~
   kernel/time/hrtimer.c:118:27: note: previous initialization is here
           [0 ... MAX_CLOCKS - 1]  = HRTIMER_MAX_CLOCK_BASES,
                                     ^~~~~~~~~~~~~~~~~~~~~~~
   kernel/time/hrtimer.c:123:17: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
           [CLOCK_TAI]             = HRTIMER_BASE_TAI,
                                     ^~~~~~~~~~~~~~~~
   kernel/time/hrtimer.c:118:27: note: previous initialization is here
           [0 ... MAX_CLOCKS - 1]  = HRTIMER_MAX_CLOCK_BASES,
                                     ^~~~~~~~~~~~~~~~~~~~~~~
   4 warnings and 1 error generated.
--
   In file included from kernel/time/posix-stubs.c:13:
   In file included from include/linux/syscalls.h:85:
   In file included from include/trace/syscall.h:7:
   In file included from include/linux/trace_events.h:10:
   In file included from include/linux/perf_event.h:59:
>> include/linux/security.h:1130:9: error: implicit declaration of function 'cap_prctl_set_mm_exe_file' [-Werror,-Wimplicit-function-declaration]
           return cap_prctl_set_mm_exe_file(exe_file);
                  ^
   include/linux/security.h:1130:9: note: did you mean 'security_prctl_set_mm_exe_file'?
   include/linux/security.h:1128:19: note: 'security_prctl_set_mm_exe_file' declared here
   static inline int security_prctl_set_mm_exe_file(struct file *exe_file)
                     ^
   kernel/time/posix-stubs.c:25:17: warning: no previous prototype for function 'sys_ni_posix_timers' [-Wmissing-prototypes]
   asmlinkage long sys_ni_posix_timers(void)
                   ^
   kernel/time/posix-stubs.c:25:12: note: declare 'static' if the function is not intended to be used outside of this translation unit
   asmlinkage long sys_ni_posix_timers(void)
              ^
              static 
   kernel/time/posix-stubs.c:73:5: warning: no previous prototype for function 'do_clock_gettime' [-Wmissing-prototypes]
   int do_clock_gettime(clockid_t which_clock, struct timespec64 *tp)
       ^
   kernel/time/posix-stubs.c:73:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   int do_clock_gettime(clockid_t which_clock, struct timespec64 *tp)
   ^
   static 
   2 warnings and 1 error generated.

vim +/cap_prctl_set_mm_exe_file +1130 include/linux/security.h

  1127	
  1128	static inline int security_prctl_set_mm_exe_file(struct file *exe_file)
  1129	{
> 1130		return cap_prctl_set_mm_exe_file(exe_file);
  1131	}
  1132	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202007020627.VssLd1av%25lkp%40intel.com.

--4Ckj6UjgE2iN1+kY
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
av8Bo1/wiv5rAAA=

--4Ckj6UjgE2iN1+kY--
