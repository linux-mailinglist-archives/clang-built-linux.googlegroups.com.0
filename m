Return-Path: <clang-built-linux+bncBCX2JBVY5MBBBRNQ233AKGQEXQ5QDDY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3f.google.com (mail-oo1-xc3f.google.com [IPv6:2607:f8b0:4864:20::c3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 13D261EB28A
	for <lists+clang-built-linux@lfdr.de>; Tue,  2 Jun 2020 02:07:35 +0200 (CEST)
Received: by mail-oo1-xc3f.google.com with SMTP id t24sf5634688oor.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 01 Jun 2020 17:07:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591056453; cv=pass;
        d=google.com; s=arc-20160816;
        b=AJTXgkQ1dKMlYjF7VWrzpBD3vFJUmgrhHGrhCHIoXiy7CTtaRtDJSQAMqmjh8XQxgp
         aeXRBb6H6ivbItOTy4n3LEMG5zdrv2yrktLa5K+M2KikFefaR3ZXmyACb591oUi8Vifo
         zrF0SqGBJvl2M5deLBUVU5CKrwHsoQ8vQu1B13tsQ4vS1/uTmFf78FQuPfRfxwZ7IjzI
         +exGesecy56DbGh0aVysoFzZ8PGkCC6kMfScLwhyM1wYU+ZvRGScHjXPbWHBw32OlCfN
         ZRuJQh1YRXkqmheGALRW4S0nJnM34P2HqMtvWqJg5Fns9gHI8lQ8aDqcWlOUrrp2z1Z1
         W8Ww==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=SatNfWAS4fZmInykLACykyIOufnP0iMGnE8fr1hNVE8=;
        b=HdVYkcs6rXhD3wQpSQhAu7xcnVFBegWJxL9pxlefIRHMK7MXY6rJ8/QJkgqnmIIY1z
         Dto0cNHN52y6wp6ktKoo9exV7fPWNRInLSD+RxNWZKHkzq8thdkizjsmQi/r367O8iow
         TpnkBSlD/iHEUxU38tjZPEzE3r2dot3xXgzi03CV0GIFfc1hiFxRcykVeZLp7bJbCxck
         0DqWPE8bJYAbp1nYn5DvavcvFe1JJkSaIdnfve0NB1Wfrw0RsNl1DKswyNJ+952izj7R
         msrs1v/iJ0027VmkLpwiknlwhrjc6PDyXPxOJ86GtQ4dhrbtVjUbyci/Ic2KI3l2FHxL
         mrVQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SatNfWAS4fZmInykLACykyIOufnP0iMGnE8fr1hNVE8=;
        b=Vzlonl+UNEcCOBxlmGW762qPZ9Dk2d8zMDGD+RTn1Hk4kzY4cpn11ZxhjY4BlTjk5C
         RUdwyOxJDwzF45tYx0rdmDuOwN1qSnuofWBKt+8qk3re4ZJxzMczdn0o/vshaspNb79m
         D1bIE+G3Nenk4DTmd2ScoJAOVZ7691iD5ld+6ZEqfPc6iBx7yK5DlFLfUIIpqOdgf/uE
         ml27Tq4L/hd8g15XjXLZ9X87U+xT4JqDx+9cUnM65tnG+GLD4FkOltCBAmDP0+hB6bsN
         mC1WDCafFoTB2j2cBntM5T1s/pxo/6LEAj1BL7SFe6NM/w/Qj0BzSwRz0jP8iwm3Qj9J
         4N7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SatNfWAS4fZmInykLACykyIOufnP0iMGnE8fr1hNVE8=;
        b=NWaXkWubMuMfKbT7e9ZIHBtyJ8VZfIfysErLenmrPtSciXpUtzfQx2ut4PXqG6EMji
         Z60Mq53Rdqnz1uvAV7OZ2GG3KwB+b8rJUd1TgYewS351Hfl7c1oNgxa8WRKfDtQ9rNkI
         zdFS728d1QIG7NalOP8rh1LYfLl+M8Z1Hjb8ZC0lQMoCWVEUOE42D/+pTYeDlyx7qhfZ
         /sEz6tLNOvGuCRrfKV3wjGswT2VaS4Izclx8yxQe8PDK8+/YExNwCRlXzI60fes93frs
         2WfkO4Dcv9FNvsuw+4l2N+ikOaKsdj5vYmE1JmFaj3wO06RPFKokv9lcu+SVI8jsXsQ1
         70cQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Gu4O5Z32hb1FXWpkUU5t/nSG29g58FefRL8Ctpf7NCZSrqbh8
	sTUz25yIei/cr7TFduoTb7s=
X-Google-Smtp-Source: ABdhPJxzTm1y/0svyM7qo4zt7q8lqlDVqGhBELKkTTV73RCqOhKdQtOWorzdXUrNYbAhJeOe/n5AoQ==
X-Received: by 2002:aca:40d:: with SMTP id 13mr1182574oie.8.1591056453553;
        Mon, 01 Jun 2020 17:07:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:cf10:: with SMTP id f16ls2858762oig.10.gmail; Mon, 01
 Jun 2020 17:07:33 -0700 (PDT)
X-Received: by 2002:aca:b3c5:: with SMTP id c188mr1313255oif.86.1591056453023;
        Mon, 01 Jun 2020 17:07:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591056453; cv=none;
        d=google.com; s=arc-20160816;
        b=jEOIa97WHZ7sytLLPyAKKe96IOPUv9tQ3Gq9OHHmFh1bTjXA6OZu+Zo/CCxYRkiRmG
         NmHhQCJ52QyeDL/ZQQAQkdzGP0oN97grdHAQIwIE/epT/Y85o8gMEtTIRA/g+o9B7uKr
         FeR6iG6a5zzxqoDdLto44p4MrsXAjiGQEfh+CCiDhrsC3+6QodF17kv08inY6OsRcMDp
         z0dpycWlL4NNOD6IN/Jp7V+SkIkfksEiTYgR5bKOPoPAgHS6yhaRKVloMgzwpu7lOAJd
         e8FeH+1DSTqnNvd9wAiuo0uFRh48H7rWi43QkCQYiX1gnkqLvgUl1PeJ1M7j5S3D2Nul
         zTgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=0V0hhwDpQHH/rAGaNPINXziYYayRmSHo/+JLtInD8kk=;
        b=WRX74ztPZR/+lgTxs/A2uG6oU9FhpNW2fOVeP6gFtqCOvDUg3GE4+0lDM1QieW2/lc
         25dB7Hcais1pzRnrikzJL3+LjFwrH7skPBXs7G5qM/4yoXNY1eyHb8t0JYw8QQRj1xbP
         ePRkCY/t478Qy3Je7e7I/5PFtw2GrJQAnc8k1FWAnq7mwPLSsGZDBzlX9TPVp8GmipMy
         MxtkrpQoy8Ue6j6aDsImO3ePL3DSOj7zQic9S/zlS1ZFPdNSdH0vJOuImIxqKGvnu+J6
         1t8cH7koHmRFMmwwWXdJn7zh6zNQAR/eWM1316DFoIEO2Kj3Bq3b9nMwxR6r6MLX4HeQ
         Hoow==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga14.intel.com (mga14.intel.com. [192.55.52.115])
        by gmr-mx.google.com with ESMTPS id o199si52611ooo.0.2020.06.01.17.07.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Jun 2020 17:07:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of philip.li@intel.com designates 192.55.52.115 as permitted sender) client-ip=192.55.52.115;
IronPort-SDR: F5Ao+uJfXi5hfIh41LIC9i5ptNkbTwA4CDHUqdMQ12+PcZ0U0ctV0NlxhPD7qx1Dh+POWATMOX
 6aq6qAKdTnDg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Jun 2020 17:07:32 -0700
IronPort-SDR: x21/RN9A78lYTgGkgjF0eZn2nugKXcxt4BpedqFASbp7ohcm7bf734qY2o4aAcurBlL/618/R3
 jrZzF2raolmg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,462,1583222400"; 
   d="scan'208";a="293371984"
Received: from pl-dbox.sh.intel.com (HELO intel.com) ([10.239.159.39])
  by fmsmga004.fm.intel.com with ESMTP; 01 Jun 2020 17:07:29 -0700
Date: Tue, 2 Jun 2020 08:06:36 +0800
From: Philip Li <philip.li@intel.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: kbuild test robot <lkp@intel.com>,
	"Muchun, Song," <songmuchun@bytedance.com>, kbuild-all@lists.01.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Peter Zijlstra <peterz@infradead.org>
Subject: Re: [linux-next:master 10017/14131] kernel/sched/cpuacct.c:350:3:
 error: invalid input size for constraint 'qi'
Message-ID: <20200602000636.GA28064@intel.com>
References: <202006011945.SmpRQmd0%lkp@intel.com>
 <CAKwvOdm75T+gzjgd6yGUrou-xJMqBhaqa363YKcOJxLxPecnDw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdm75T+gzjgd6yGUrou-xJMqBhaqa363YKcOJxLxPecnDw@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: philip.li@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of philip.li@intel.com designates 192.55.52.115 as
 permitted sender) smtp.mailfrom=philip.li@intel.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=intel.com
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

On Mon, Jun 01, 2020 at 11:02:52AM -0700, Nick Desaulniers wrote:
> Nevermind this failure, Clang doesn't support i386 yet (WIP)
sorry for the noise, we will disable this.

> 
> On Mon, Jun 1, 2020 at 4:39 AM kbuild test robot <lkp@intel.com> wrote:
> >
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> > head:   e7b08814b16b80a0bf76eeca16317f8c2ed23b8c
> > commit: 12aa2587388de6697fd2e585ae6a90f70249540b [10017/14131] sched/cpuacct: Use __this_cpu_add() instead of this_cpu_ptr()
> > config: i386-randconfig-a012-20200601 (attached as .config)
> > compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 2388a096e7865c043e83ece4e26654bd3d1a20d5)
> > reproduce (this is a W=1 build):
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # install i386 cross compiling tool for clang build
> >         # apt-get install binutils-i386-linux-gnu
> >         git checkout 12aa2587388de6697fd2e585ae6a90f70249540b
> >         # save the attached .config to linux build tree
> >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=i386
> >
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kbuild test robot <lkp@intel.com>
> >
> > All errors (new ones prefixed by >>, old ones prefixed by <<):
> >
> > >> kernel/sched/cpuacct.c:350:3: error: invalid input size for constraint 'qi'
> > __this_cpu_add(ca->cpuusage->usages[index], cputime);
> > ^
> > include/linux/percpu-defs.h:458:2: note: expanded from macro '__this_cpu_add'
> > raw_cpu_add(pcp, val);                                                     ^
> > include/linux/percpu-defs.h:422:32: note: expanded from macro 'raw_cpu_add'
> > #define raw_cpu_add(pcp, val)           __pcpu_size_call(raw_cpu_add_, pcp, val)
> > ^
> > include/linux/percpu-defs.h:377:11: note: expanded from macro '__pcpu_size_call'
> > case 1: stem##1(variable, __VA_ARGS__);break;                                      ^
> > <scratch space>:35:1: note: expanded from here
> > raw_cpu_add_1
> > ^
> > arch/x86/include/asm/percpu.h:401:34: note: expanded from macro 'raw_cpu_add_1'
> > #define raw_cpu_add_1(pcp, val)         percpu_add_op(, (pcp), val)
> > ^
> > arch/x86/include/asm/percpu.h:147:16: note: expanded from macro 'percpu_add_op'
> > : "qi" ((pao_T__)(val)));                                                          ^
> > >> kernel/sched/cpuacct.c:350:3: error: invalid input size for constraint 'qi'
> > include/linux/percpu-defs.h:458:2: note: expanded from macro '__this_cpu_add'
> > raw_cpu_add(pcp, val);                                                     ^
> > include/linux/percpu-defs.h:422:32: note: expanded from macro 'raw_cpu_add'
> > #define raw_cpu_add(pcp, val)           __pcpu_size_call(raw_cpu_add_, pcp, val)
> > ^
> > include/linux/percpu-defs.h:378:11: note: expanded from macro '__pcpu_size_call'
> > case 2: stem##2(variable, __VA_ARGS__);break;                                      ^
> > <scratch space>:60:1: note: expanded from here
> > raw_cpu_add_2
> > ^
> > arch/x86/include/asm/percpu.h:402:34: note: expanded from macro 'raw_cpu_add_2'
> > #define raw_cpu_add_2(pcp, val)         percpu_add_op(, (pcp), val)
> > ^
> > arch/x86/include/asm/percpu.h:147:16: note: expanded from macro 'percpu_add_op'
> > : "qi" ((pao_T__)(val)));                                                          ^
> > >> kernel/sched/cpuacct.c:350:3: error: invalid input size for constraint 'qi'
> > include/linux/percpu-defs.h:458:2: note: expanded from macro '__this_cpu_add'
> > raw_cpu_add(pcp, val);                                                     ^
> > include/linux/percpu-defs.h:422:32: note: expanded from macro 'raw_cpu_add'
> > #define raw_cpu_add(pcp, val)           __pcpu_size_call(raw_cpu_add_, pcp, val)
> > ^
> > include/linux/percpu-defs.h:379:11: note: expanded from macro '__pcpu_size_call'
> > case 4: stem##4(variable, __VA_ARGS__);break;                                      ^
> > <scratch space>:85:1: note: expanded from here
> > raw_cpu_add_4
> > ^
> > arch/x86/include/asm/percpu.h:403:34: note: expanded from macro 'raw_cpu_add_4'
> > #define raw_cpu_add_4(pcp, val)         percpu_add_op(, (pcp), val)
> > ^
> > arch/x86/include/asm/percpu.h:147:16: note: expanded from macro 'percpu_add_op'
> > : "qi" ((pao_T__)(val)));                                                          ^
> > kernel/sched/cpuacct.c:366:3: error: invalid input size for constraint 'qi'
> > __this_cpu_add(ca->cpustat->cpustat[index], val);
> > ^
> > include/linux/percpu-defs.h:458:2: note: expanded from macro '__this_cpu_add'
> > raw_cpu_add(pcp, val);                                                     ^
> > include/linux/percpu-defs.h:422:32: note: expanded from macro 'raw_cpu_add'
> > #define raw_cpu_add(pcp, val)           __pcpu_size_call(raw_cpu_add_, pcp, val)
> > ^
> > include/linux/percpu-defs.h:377:11: note: expanded from macro '__pcpu_size_call'
> > case 1: stem##1(variable, __VA_ARGS__);break;                                      ^
> > <scratch space>:113:1: note: expanded from here
> > raw_cpu_add_1
> > ^
> > arch/x86/include/asm/percpu.h:401:34: note: expanded from macro 'raw_cpu_add_1'
> > #define raw_cpu_add_1(pcp, val)         percpu_add_op(, (pcp), val)
> > ^
> > arch/x86/include/asm/percpu.h:147:16: note: expanded from macro 'percpu_add_op'
> > : "qi" ((pao_T__)(val)));                                                          ^
> > kernel/sched/cpuacct.c:366:3: error: invalid input size for constraint 'qi'
> > include/linux/percpu-defs.h:458:2: note: expanded from macro '__this_cpu_add'
> > raw_cpu_add(pcp, val);                                                     ^
> > include/linux/percpu-defs.h:422:32: note: expanded from macro 'raw_cpu_add'
> > #define raw_cpu_add(pcp, val)           __pcpu_size_call(raw_cpu_add_, pcp, val)
> > ^
> > include/linux/percpu-defs.h:378:11: note: expanded from macro '__pcpu_size_call'
> > case 2: stem##2(variable, __VA_ARGS__);break;                                      ^
> > <scratch space>:138:1: note: expanded from here
> > raw_cpu_add_2
> > ^
> > arch/x86/include/asm/percpu.h:402:34: note: expanded from macro 'raw_cpu_add_2'
> > #define raw_cpu_add_2(pcp, val)         percpu_add_op(, (pcp), val)
> > ^
> > arch/x86/include/asm/percpu.h:147:16: note: expanded from macro 'percpu_add_op'
> > : "qi" ((pao_T__)(val)));                                                          ^
> > kernel/sched/cpuacct.c:366:3: error: invalid input size for constraint 'qi'
> > include/linux/percpu-defs.h:458:2: note: expanded from macro '__this_cpu_add'
> > raw_cpu_add(pcp, val);                                                     ^
> > include/linux/percpu-defs.h:422:32: note: expanded from macro 'raw_cpu_add'
> > #define raw_cpu_add(pcp, val)           __pcpu_size_call(raw_cpu_add_, pcp, val)
> > ^
> > include/linux/percpu-defs.h:379:11: note: expanded from macro '__pcpu_size_call'
> > case 4: stem##4(variable, __VA_ARGS__);break;                                      ^
> > <scratch space>:163:1: note: expanded from here
> > raw_cpu_add_4
> > ^
> > arch/x86/include/asm/percpu.h:403:34: note: expanded from macro 'raw_cpu_add_4'
> > #define raw_cpu_add_4(pcp, val)         percpu_add_op(, (pcp), val)
> > ^
> > arch/x86/include/asm/percpu.h:147:16: note: expanded from macro 'percpu_add_op'
> > : "qi" ((pao_T__)(val)));                                                          ^
> > 6 errors generated.
> >
> > vim +/qi +350 kernel/sched/cpuacct.c
> >
> >    332
> >    333  /*
> >    334   * charge this task's execution time to its accounting group.
> >    335   *
> >    336   * called with rq->lock held.
> >    337   */
> >    338  void cpuacct_charge(struct task_struct *tsk, u64 cputime)
> >    339  {
> >    340          struct cpuacct *ca;
> >    341          int index = CPUACCT_STAT_SYSTEM;
> >    342          struct pt_regs *regs = task_pt_regs(tsk);
> >    343
> >    344          if (regs && user_mode(regs))
> >    345                  index = CPUACCT_STAT_USER;
> >    346
> >    347          rcu_read_lock();
> >    348
> >    349          for (ca = task_ca(tsk); ca; ca = parent_ca(ca))
> >  > 350                  __this_cpu_add(ca->cpuusage->usages[index], cputime);
> >    351
> >    352          rcu_read_unlock();
> >    353  }
> >    354
> >
> > ---
> > 0-DAY CI Kernel Test Service, Intel Corporation
> > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> >
> > --
> > You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202006011945.SmpRQmd0%25lkp%40intel.com.
> 
> 
> 
> -- 
> Thanks,
> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200602000636.GA28064%40intel.com.
