Return-Path: <clang-built-linux+bncBDYJPJO25UGBB3NB77VQKGQEZJWICAI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3f.google.com (mail-yw1-xc3f.google.com [IPv6:2607:f8b0:4864:20::c3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 468E4B401B
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Sep 2019 20:14:07 +0200 (CEST)
Received: by mail-yw1-xc3f.google.com with SMTP id n3sf681545ywh.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Sep 2019 11:14:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568657646; cv=pass;
        d=google.com; s=arc-20160816;
        b=RO/3QmipLlBeE116JFScst/QuyrXcHZ6Eskop/1ICWOKRNuOAXqrATHp37HmPNcc8Y
         wiVOZ371F2t1ncetwXebf+z+bVkEDLVLwPsVUC00IhfO0UVXsE7tSKOCkbZzNVMBFgXS
         kLSL3BzAzrg9MQ0ab+cFYPX0IlUAtyx8tWKB0xZXRbtLnU5ti35+n5o/3xo7magAOFR7
         UhdJHRSHf5E4adHaJQZzwodepJA48fgwvqb6au32BGEXblmimBd0H9jodO5ZRuBAHO4R
         XX7zNRaalfEYu10INthtlUhdfTMR0Wbuwv7SxNX9x92+L11NzKORjj515pP0hwCv3jnk
         ZjKA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=jwXMWl/zF/g4MF/FUXSzN5Gy0yPtU9Dvk9gwnFQmwLg=;
        b=CEK5fFOt4PnmsiKYZhxfK7h9XOYYzwPzgGqMh7wiTKVhsrntUwakH2Qn/QSV3BsoY8
         Bj2ZIXcF+IUk6H4fKLv0r1yiFPijdkZu+sj6XstEtbNVQCFBmC0pfNKN1kkTpSQv5rG+
         rlO+fV4hhGUvZg5uAAdp6KM2Dd1jd/VjdenCke+3tyjVuZq8dHIEDBl+eK/RkhPLRVKC
         l2VZsSEdUerqJN8a55ouSiRkyfrGTj1MkJxoUfZGLDuZ3mwPlzv6G3eD+hlLf4b7gEMr
         Qh+pGFCMOJG5IBA5cY9Sl1dOyMa8Yj50p4zfVVIqqSo1yGU/t5m/eCZTVq8YWAtJJa5d
         Zkag==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=OW2HREUf;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jwXMWl/zF/g4MF/FUXSzN5Gy0yPtU9Dvk9gwnFQmwLg=;
        b=s/8qmNwSYuPpkMXnGUOGZZnd3XD6O49M7lMf2O9qnBYjC1dxlrfCwl8CvRqSpsabJf
         pOeD43oweSjeryxGL5d5u3G96LE9WdzE1+VB0jysWBNk2cpVtpiw8l21MWh3z1zDSRvp
         HvWCzmZLHtRNFGDrn3sBxqWho888pd7bfSrZ2liQMfod310ZrbLqIMOrot35Mrc3PExA
         KQ7/l/F8/XJxQ4Bif6oVe2pIQXHsJyY+/jZBoLaKkpiW+BG/wbO/tNgxqeAqOwO9bmb1
         inTEu7QZvXzMHvw6aRHg3uoi4BhkOCxjuIX+QSsZvPoM3yLRRCgLwGARA+ceoJq8qqJF
         9QpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jwXMWl/zF/g4MF/FUXSzN5Gy0yPtU9Dvk9gwnFQmwLg=;
        b=dfufTJQ1QBm8KKmGiXEq5v7xceSON485p4miaotZ+x3Zc3uv6YeN4Q0+tgDrxXpSln
         U2gxj1ckqLBglAPOd9s6h8CLnxKT1KuS5/61nxYQEEuuzwHDASeehrRI17OSR/dRhvxT
         eMZlovVE4pob5xe7P7KFehXakJ2uexzIa40N4I6Dd2zNLVUYU429DhF4AC90cDzE8w84
         A+mXRWqUBqTkgXaumI91+uY4AO0hot8W/SKl20jsstF0ENhjyINz16IuR72wB702aib6
         V1dtd4wujRG04msjgDHIyo4C60136VMW74m8/aNLNzEWsBrkf/9vyYCGKIo1D6rywYMB
         5H9A==
X-Gm-Message-State: APjAAAWkp273F88OHcgcYH/gNCYtAzn0q3vmbYRdR8WVIxJ6KaWZnE+Z
	xNKM+WuiK3D8HjG5rD67EdM=
X-Google-Smtp-Source: APXvYqzg1MdTOxU0uBeVI4uIWdWH/G9Rj22oW0V4ZImrb8VlUh7ym3pWt/tNMaW19HHaZiyDshmkwg==
X-Received: by 2002:a81:a208:: with SMTP id w8mr851329ywg.231.1568657646051;
        Mon, 16 Sep 2019 11:14:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:9d84:: with SMTP id v4ls151127ybp.0.gmail; Mon, 16 Sep
 2019 11:14:05 -0700 (PDT)
X-Received: by 2002:a25:f202:: with SMTP id i2mr519919ybe.178.1568657645699;
        Mon, 16 Sep 2019 11:14:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568657645; cv=none;
        d=google.com; s=arc-20160816;
        b=Mgo6EHCffyTsADgfF0OH4B8B+TTNuI4oz+euwS1RUi7k82Sv5RMhQs+uZA4fgp7fow
         U8VkpzHLFGBtimco+QXEDJVddz8XsV6jr24SktFxtiPqvtbXy0cgAhkfswe+pkr1DrKd
         tpI+XhZOiskKsehs1nB/zcORB1lwL54CR30d7r4mZRfJRfaJN26/4SwBqUu/Xx+ovskV
         hyNzPg/Q+2QVUX72YvrXl6la3VvrG5MVi+tBLbPByMxhYQYXmH/QDKzWd8ogTjDRN0nz
         3FoKN8Ristp+r7uyKZs/7JnZYY+fcQAyQikf/DR3UkFvEsTYQ3RipOj6CsbBvNQaKW1C
         d5Ew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=vNUY6YJ7ue+k2c1g7Xq99SrB2Qk2wyIYZtC1YSar6KU=;
        b=Aq2BtF8DB8b2dIZsi4ZTguOigxZUUvzyTjdplrCYDtGMIng+A+TG+OehgsAnVtEw6j
         36rKM2muRVmqtYumrYIa0CdZGeVa/eqxITeUtR2HyGs3Myoy4Ec74tT4EN0qP+q2uBKB
         14dUaK92anht/qj2S9+ZyvFm56Dg8iwxeHgxNEXiPLWb3SlljiE14MMDVZrdYyoYhWOs
         sVY4fbz3beGpCMQonfReSwiE7nCO4Qgzs+/ebQtUkhwvd5WzN3CjCGeeIoJpArvWa5NU
         ftyiji14pIc5rSFZ521dDKEAgitudxwi4japIWGAMPz1yzZiTIEP3PbhzMZgwtdFkmKq
         7wdQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=OW2HREUf;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id g4si222555ywe.2.2019.09.16.11.14.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Sep 2019 11:14:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id q5so375630pfg.13
        for <clang-built-linux@googlegroups.com>; Mon, 16 Sep 2019 11:14:05 -0700 (PDT)
X-Received: by 2002:a63:d909:: with SMTP id r9mr369861pgg.381.1568657644315;
 Mon, 16 Sep 2019 11:14:04 -0700 (PDT)
MIME-Version: 1.0
References: <201909161819.6hE3UddX%lkp@intel.com>
In-Reply-To: <201909161819.6hE3UddX%lkp@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 16 Sep 2019 11:13:53 -0700
Message-ID: <CAKwvOdk+=J0uJi3=tXewZ_BpKujMe2PPtL=NQA00whAMJWeQtQ@mail.gmail.com>
Subject: Re: [android-common:android-mainline-tracking 26/165]
 kernel/sched/fair.c:6424:6: warning: variable 'latency_sensitive' is used
 uninitialized whenever 'if' condition is true
To: kbuild test robot <lkp@intel.com>, Todd Kjos <tkjos@google.com>, Alistair Delva <adelva@google.com>, 
	Sandeep Patil <sspatil@google.com>
Cc: kbuild@01.org, clang-built-linux <clang-built-linux@googlegroups.com>, 
	Guenter Roeck <groeck@google.com>, kbuild-all@01.org, Philip Li <philip.li@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=OW2HREUf;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

Looks legit, consider when the `goto unlock` is taken, then the
conditional in that section compares against uninitialized memory.

On Mon, Sep 16, 2019 at 3:38 AM kbuild test robot <lkp@intel.com> wrote:
>
> CC: kbuild-all@01.org
> CC: Guenter Roeck <groeck@google.com>
> BCC: philip.li@intel.com
> TO: cros-kernel-buildreports@googlegroups.com
>
> tree:   https://android.googlesource.com/kernel/common android-mainline-tracking
> head:   01404b7c3d8961cbf4ed3dc0a7a7db617815532a
> commit: ba702c5960cc857e7645c309a07f6eca8fb83238 [26/165] ANDROID: sched/fair: Bias EAS placement for latency
> config: arm64-defconfig (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         git checkout ba702c5960cc857e7645c309a07f6eca8fb83238
>         # save the attached .config to linux build tree
>         make.cross ARCH=arm64
>
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
> >> kernel/sched/fair.c:6424:6: warning: variable 'latency_sensitive' is used uninitialized whenever 'if' condition is true [-Wsometimes-uninitialized]
>            if (!task_util_est(p))
>                ^~~~~~~~~~~~~~~~~
>    kernel/sched/fair.c:6508:6: note: uninitialized use occurs here
>            if (latency_sensitive)
>                ^~~~~~~~~~~~~~~~~
>    kernel/sched/fair.c:6424:2: note: remove the 'if' if its condition is always false
>            if (!task_util_est(p))
>            ^~~~~~~~~~~~~~~~~~~~~~
>    kernel/sched/fair.c:6397:24: note: initialize the variable 'latency_sensitive' to silence this warning
>            bool latency_sensitive, boosted;
>                                  ^
>                                   = 0
>    1 warning generated.
>
> vim +6424 kernel/sched/fair.c
>
> 390031e4c309c9 Quentin Perret            2018-12-03  6348
> 390031e4c309c9 Quentin Perret            2018-12-03  6349  /*
> 732cd75b8c920d Quentin Perret            2018-12-03  6350   * find_energy_efficient_cpu(): Find most energy-efficient target CPU for the
> 732cd75b8c920d Quentin Perret            2018-12-03  6351   * waking task. find_energy_efficient_cpu() looks for the CPU with maximum
> 732cd75b8c920d Quentin Perret            2018-12-03  6352   * spare capacity in each performance domain and uses it as a potential
> 732cd75b8c920d Quentin Perret            2018-12-03  6353   * candidate to execute the task. Then, it uses the Energy Model to figure
> 732cd75b8c920d Quentin Perret            2018-12-03  6354   * out which of the CPU candidates is the most energy-efficient.
> 732cd75b8c920d Quentin Perret            2018-12-03  6355   *
> 732cd75b8c920d Quentin Perret            2018-12-03  6356   * The rationale for this heuristic is as follows. In a performance domain,
> 732cd75b8c920d Quentin Perret            2018-12-03  6357   * all the most energy efficient CPU candidates (according to the Energy
> 732cd75b8c920d Quentin Perret            2018-12-03  6358   * Model) are those for which we'll request a low frequency. When there are
> 732cd75b8c920d Quentin Perret            2018-12-03  6359   * several CPUs for which the frequency request will be the same, we don't
> 732cd75b8c920d Quentin Perret            2018-12-03  6360   * have enough data to break the tie between them, because the Energy Model
> 732cd75b8c920d Quentin Perret            2018-12-03  6361   * only includes active power costs. With this model, if we assume that
> 732cd75b8c920d Quentin Perret            2018-12-03  6362   * frequency requests follow utilization (e.g. using schedutil), the CPU with
> 732cd75b8c920d Quentin Perret            2018-12-03  6363   * the maximum spare capacity in a performance domain is guaranteed to be among
> 732cd75b8c920d Quentin Perret            2018-12-03  6364   * the best candidates of the performance domain.
> 732cd75b8c920d Quentin Perret            2018-12-03  6365   *
> 732cd75b8c920d Quentin Perret            2018-12-03  6366   * In practice, it could be preferable from an energy standpoint to pack
> 732cd75b8c920d Quentin Perret            2018-12-03  6367   * small tasks on a CPU in order to let other CPUs go in deeper idle states,
> 732cd75b8c920d Quentin Perret            2018-12-03  6368   * but that could also hurt our chances to go cluster idle, and we have no
> 732cd75b8c920d Quentin Perret            2018-12-03  6369   * ways to tell with the current Energy Model if this is actually a good
> 732cd75b8c920d Quentin Perret            2018-12-03  6370   * idea or not. So, find_energy_efficient_cpu() basically favors
> 732cd75b8c920d Quentin Perret            2018-12-03  6371   * cluster-packing, and spreading inside a cluster. That should at least be
> 732cd75b8c920d Quentin Perret            2018-12-03  6372   * a good thing for latency, and this is consistent with the idea that most
> 732cd75b8c920d Quentin Perret            2018-12-03  6373   * of the energy savings of EAS come from the asymmetry of the system, and
> 732cd75b8c920d Quentin Perret            2018-12-03  6374   * not so much from breaking the tie between identical CPUs. That's also the
> 732cd75b8c920d Quentin Perret            2018-12-03  6375   * reason why EAS is enabled in the topology code only for systems where
> 732cd75b8c920d Quentin Perret            2018-12-03  6376   * SD_ASYM_CPUCAPACITY is set.
> 732cd75b8c920d Quentin Perret            2018-12-03  6377   *
> 732cd75b8c920d Quentin Perret            2018-12-03  6378   * NOTE: Forkees are not accepted in the energy-aware wake-up path because
> 732cd75b8c920d Quentin Perret            2018-12-03  6379   * they don't have any useful utilization data yet and it's not possible to
> 732cd75b8c920d Quentin Perret            2018-12-03  6380   * forecast their impact on energy consumption. Consequently, they will be
> 732cd75b8c920d Quentin Perret            2018-12-03  6381   * placed by find_idlest_cpu() on the least loaded CPU, which might turn out
> 732cd75b8c920d Quentin Perret            2018-12-03  6382   * to be energy-inefficient in some use-cases. The alternative would be to
> 732cd75b8c920d Quentin Perret            2018-12-03  6383   * bias new tasks towards specific types of CPUs first, or to try to infer
> 732cd75b8c920d Quentin Perret            2018-12-03  6384   * their util_avg from the parent task, but those heuristics could hurt
> 732cd75b8c920d Quentin Perret            2018-12-03  6385   * other use-cases too. So, until someone finds a better way to solve this,
> 732cd75b8c920d Quentin Perret            2018-12-03  6386   * let's keep things simple by re-using the existing slow path.
> 732cd75b8c920d Quentin Perret            2018-12-03  6387   */
> 256fe932094827 Chris Redpath             2019-03-27  6388  static int find_energy_efficient_cpu(struct task_struct *p, int prev_cpu, int sync)
> 732cd75b8c920d Quentin Perret            2018-12-03  6389  {
> 8b81a4a5368a72 Quentin Perret            2019-09-12  6390       unsigned long prev_delta = ULONG_MAX, best_delta = ULONG_MAX;
> 732cd75b8c920d Quentin Perret            2018-12-03  6391       struct root_domain *rd = cpu_rq(smp_processor_id())->rd;
> ba702c5960cc85 Quentin Perret            2019-02-27  6392       int max_spare_cap_cpu_ls = prev_cpu, best_idle_cpu = -1;
> ba702c5960cc85 Quentin Perret            2019-02-27  6393       unsigned long max_spare_cap_ls = 0, target_cap;
> 8b81a4a5368a72 Quentin Perret            2019-09-12  6394       unsigned long cpu_cap, util, base_energy = 0;
> ba702c5960cc85 Quentin Perret            2019-02-27  6395       unsigned int min_exit_lat = UINT_MAX;
> 732cd75b8c920d Quentin Perret            2018-12-03  6396       int cpu, best_energy_cpu = prev_cpu;
> ba702c5960cc85 Quentin Perret            2019-02-27  6397       bool latency_sensitive, boosted;
> ba702c5960cc85 Quentin Perret            2019-02-27  6398       struct cpuidle_state *idle;
> 732cd75b8c920d Quentin Perret            2018-12-03  6399       struct sched_domain *sd;
> 8b81a4a5368a72 Quentin Perret            2019-09-12  6400       struct perf_domain *pd;
> 732cd75b8c920d Quentin Perret            2018-12-03  6401
> 732cd75b8c920d Quentin Perret            2018-12-03  6402       rcu_read_lock();
> 732cd75b8c920d Quentin Perret            2018-12-03  6403       pd = rcu_dereference(rd->pd);
> 732cd75b8c920d Quentin Perret            2018-12-03  6404       if (!pd || READ_ONCE(rd->overutilized))
> 732cd75b8c920d Quentin Perret            2018-12-03  6405               goto fail;
> 732cd75b8c920d Quentin Perret            2018-12-03  6406
> 256fe932094827 Chris Redpath             2019-03-27  6407       cpu = smp_processor_id();
> 256fe932094827 Chris Redpath             2019-03-27  6408       if (sync && cpumask_test_cpu(cpu, p->cpus_ptr)) {
> 256fe932094827 Chris Redpath             2019-03-27  6409               rcu_read_unlock();
> 256fe932094827 Chris Redpath             2019-03-27  6410               return cpu;
> 256fe932094827 Chris Redpath             2019-03-27  6411       }
> 256fe932094827 Chris Redpath             2019-03-27  6412
> 732cd75b8c920d Quentin Perret            2018-12-03  6413       /*
> 732cd75b8c920d Quentin Perret            2018-12-03  6414        * Energy-aware wake-up happens on the lowest sched_domain starting
> 732cd75b8c920d Quentin Perret            2018-12-03  6415        * from sd_asym_cpucapacity spanning over this_cpu and prev_cpu.
> 732cd75b8c920d Quentin Perret            2018-12-03  6416        */
> 732cd75b8c920d Quentin Perret            2018-12-03  6417       sd = rcu_dereference(*this_cpu_ptr(&sd_asym_cpucapacity));
> 732cd75b8c920d Quentin Perret            2018-12-03  6418       while (sd && !cpumask_test_cpu(prev_cpu, sched_domain_span(sd)))
> 732cd75b8c920d Quentin Perret            2018-12-03  6419               sd = sd->parent;
> 732cd75b8c920d Quentin Perret            2018-12-03  6420       if (!sd)
> 732cd75b8c920d Quentin Perret            2018-12-03  6421               goto fail;
> 732cd75b8c920d Quentin Perret            2018-12-03  6422
> 732cd75b8c920d Quentin Perret            2018-12-03  6423       sync_entity_load_avg(&p->se);
> 732cd75b8c920d Quentin Perret            2018-12-03 @6424       if (!task_util_est(p))
> 732cd75b8c920d Quentin Perret            2018-12-03  6425               goto unlock;
> 732cd75b8c920d Quentin Perret            2018-12-03  6426
> ba702c5960cc85 Quentin Perret            2019-02-27  6427       latency_sensitive = uclamp_latency_sensitive(p);
> ba702c5960cc85 Quentin Perret            2019-02-27  6428       boosted = uclamp_boosted(p);
> ba702c5960cc85 Quentin Perret            2019-02-27  6429       target_cap = boosted ? 0 : ULONG_MAX;
> ba702c5960cc85 Quentin Perret            2019-02-27  6430
> 732cd75b8c920d Quentin Perret            2018-12-03  6431       for (; pd; pd = pd->next) {
> 8b81a4a5368a72 Quentin Perret            2019-09-12  6432               unsigned long cur_delta, spare_cap, max_spare_cap = 0;
> 8b81a4a5368a72 Quentin Perret            2019-09-12  6433               unsigned long base_energy_pd;
> 732cd75b8c920d Quentin Perret            2018-12-03  6434               int max_spare_cap_cpu = -1;
> 732cd75b8c920d Quentin Perret            2018-12-03  6435
> 8b81a4a5368a72 Quentin Perret            2019-09-12  6436               /* Compute the 'base' energy of the pd, without @p */
> 8b81a4a5368a72 Quentin Perret            2019-09-12  6437               base_energy_pd = compute_energy(p, -1, pd);
> 8b81a4a5368a72 Quentin Perret            2019-09-12  6438               base_energy += base_energy_pd;
> 8b81a4a5368a72 Quentin Perret            2019-09-12  6439
> 732cd75b8c920d Quentin Perret            2018-12-03  6440               for_each_cpu_and(cpu, perf_domain_span(pd), sched_domain_span(sd)) {
> 3bd3706251ee8a Sebastian Andrzej Siewior 2019-04-23  6441                       if (!cpumask_test_cpu(cpu, p->cpus_ptr))
> 732cd75b8c920d Quentin Perret            2018-12-03  6442                               continue;
> 732cd75b8c920d Quentin Perret            2018-12-03  6443
> 732cd75b8c920d Quentin Perret            2018-12-03  6444                       /* Skip CPUs that will be overutilized. */
> 732cd75b8c920d Quentin Perret            2018-12-03  6445                       util = cpu_util_next(cpu, p, cpu);
> 732cd75b8c920d Quentin Perret            2018-12-03  6446                       cpu_cap = capacity_of(cpu);
> 732cd75b8c920d Quentin Perret            2018-12-03  6447                       if (cpu_cap * 1024 < util * capacity_margin)
> 732cd75b8c920d Quentin Perret            2018-12-03  6448                               continue;
> 732cd75b8c920d Quentin Perret            2018-12-03  6449
> ffeaec761d76d5 Patrick Bellasi           2018-12-18  6450                       /* Skip CPUs which do not fit task requirements */
> ffeaec761d76d5 Patrick Bellasi           2018-12-18  6451                       if (cpu_cap < uclamp_task_util(p))
> ffeaec761d76d5 Patrick Bellasi           2018-12-18  6452                               continue;
> ffeaec761d76d5 Patrick Bellasi           2018-12-18  6453
> 732cd75b8c920d Quentin Perret            2018-12-03  6454                       /* Always use prev_cpu as a candidate. */
> ba702c5960cc85 Quentin Perret            2019-02-27  6455                       if (!latency_sensitive && cpu == prev_cpu) {
> 8b81a4a5368a72 Quentin Perret            2019-09-12  6456                               prev_delta = compute_energy(p, prev_cpu, pd);
> 8b81a4a5368a72 Quentin Perret            2019-09-12  6457                               prev_delta -= base_energy_pd;
> 8b81a4a5368a72 Quentin Perret            2019-09-12  6458                               best_delta = min(best_delta, prev_delta);
> 732cd75b8c920d Quentin Perret            2018-12-03  6459                       }
> 732cd75b8c920d Quentin Perret            2018-12-03  6460
> 732cd75b8c920d Quentin Perret            2018-12-03  6461                       /*
> 732cd75b8c920d Quentin Perret            2018-12-03  6462                        * Find the CPU with the maximum spare capacity in
> 732cd75b8c920d Quentin Perret            2018-12-03  6463                        * the performance domain
> 732cd75b8c920d Quentin Perret            2018-12-03  6464                        */
> 732cd75b8c920d Quentin Perret            2018-12-03  6465                       spare_cap = cpu_cap - util;
> 732cd75b8c920d Quentin Perret            2018-12-03  6466                       if (spare_cap > max_spare_cap) {
> 732cd75b8c920d Quentin Perret            2018-12-03  6467                               max_spare_cap = spare_cap;
> 732cd75b8c920d Quentin Perret            2018-12-03  6468                               max_spare_cap_cpu = cpu;
> 732cd75b8c920d Quentin Perret            2018-12-03  6469                       }
> ba702c5960cc85 Quentin Perret            2019-02-27  6470
> ba702c5960cc85 Quentin Perret            2019-02-27  6471                       if (!latency_sensitive)
> ba702c5960cc85 Quentin Perret            2019-02-27  6472                               continue;
> ba702c5960cc85 Quentin Perret            2019-02-27  6473
> ba702c5960cc85 Quentin Perret            2019-02-27  6474                       if (idle_cpu(cpu)) {
> ba702c5960cc85 Quentin Perret            2019-02-27  6475                               cpu_cap = capacity_orig_of(cpu);
> ba702c5960cc85 Quentin Perret            2019-02-27  6476                               if (boosted && cpu_cap < target_cap)
> ba702c5960cc85 Quentin Perret            2019-02-27  6477                                       continue;
> ba702c5960cc85 Quentin Perret            2019-02-27  6478                               if (!boosted && cpu_cap > target_cap)
> ba702c5960cc85 Quentin Perret            2019-02-27  6479                                       continue;
> ba702c5960cc85 Quentin Perret            2019-02-27  6480                               idle = idle_get_state(cpu_rq(cpu));
> ba702c5960cc85 Quentin Perret            2019-02-27  6481                               if (idle && idle->exit_latency > min_exit_lat &&
> ba702c5960cc85 Quentin Perret            2019-02-27  6482                                               cpu_cap == target_cap)
> ba702c5960cc85 Quentin Perret            2019-02-27  6483                                       continue;
> ba702c5960cc85 Quentin Perret            2019-02-27  6484
> ba702c5960cc85 Quentin Perret            2019-02-27  6485                               if (idle)
> ba702c5960cc85 Quentin Perret            2019-02-27  6486                                       min_exit_lat = idle->exit_latency;
> ba702c5960cc85 Quentin Perret            2019-02-27  6487                               target_cap = cpu_cap;
> ba702c5960cc85 Quentin Perret            2019-02-27  6488                               best_idle_cpu = cpu;
> ba702c5960cc85 Quentin Perret            2019-02-27  6489                       } else if (spare_cap > max_spare_cap_ls) {
> ba702c5960cc85 Quentin Perret            2019-02-27  6490                               max_spare_cap_ls = spare_cap;
> ba702c5960cc85 Quentin Perret            2019-02-27  6491                               max_spare_cap_cpu_ls = cpu;
> ba702c5960cc85 Quentin Perret            2019-02-27  6492                       }
> 732cd75b8c920d Quentin Perret            2018-12-03  6493               }
> 732cd75b8c920d Quentin Perret            2018-12-03  6494
> 732cd75b8c920d Quentin Perret            2018-12-03  6495               /* Evaluate the energy impact of using this CPU. */
> ba702c5960cc85 Quentin Perret            2019-02-27  6496               if (!latency_sensitive && max_spare_cap_cpu >= 0) {
> 8b81a4a5368a72 Quentin Perret            2019-09-12  6497                       cur_delta = compute_energy(p, max_spare_cap_cpu, pd);
> 8b81a4a5368a72 Quentin Perret            2019-09-12  6498                       cur_delta -= base_energy_pd;
> 8b81a4a5368a72 Quentin Perret            2019-09-12  6499                       if (cur_delta < best_delta) {
> 8b81a4a5368a72 Quentin Perret            2019-09-12  6500                               best_delta = cur_delta;
> 732cd75b8c920d Quentin Perret            2018-12-03  6501                               best_energy_cpu = max_spare_cap_cpu;
> 732cd75b8c920d Quentin Perret            2018-12-03  6502                       }
> 732cd75b8c920d Quentin Perret            2018-12-03  6503               }
> 732cd75b8c920d Quentin Perret            2018-12-03  6504       }
> 732cd75b8c920d Quentin Perret            2018-12-03  6505  unlock:
> 732cd75b8c920d Quentin Perret            2018-12-03  6506       rcu_read_unlock();
> 732cd75b8c920d Quentin Perret            2018-12-03  6507
> ba702c5960cc85 Quentin Perret            2019-02-27  6508       if (latency_sensitive)
> ba702c5960cc85 Quentin Perret            2019-02-27  6509               return best_idle_cpu >= 0 ? best_idle_cpu : max_spare_cap_cpu_ls;
> ba702c5960cc85 Quentin Perret            2019-02-27  6510
> 732cd75b8c920d Quentin Perret            2018-12-03  6511       /*
> 732cd75b8c920d Quentin Perret            2018-12-03  6512        * Pick the best CPU if prev_cpu cannot be used, or if it saves at
> 732cd75b8c920d Quentin Perret            2018-12-03  6513        * least 6% of the energy used by prev_cpu.
> 732cd75b8c920d Quentin Perret            2018-12-03  6514        */
> 8b81a4a5368a72 Quentin Perret            2019-09-12  6515       if (prev_delta == ULONG_MAX)
> 732cd75b8c920d Quentin Perret            2018-12-03  6516               return best_energy_cpu;
> 732cd75b8c920d Quentin Perret            2018-12-03  6517
> 8b81a4a5368a72 Quentin Perret            2019-09-12  6518       if ((prev_delta - best_delta) > ((prev_delta + base_energy) >> 4))
> 732cd75b8c920d Quentin Perret            2018-12-03  6519               return best_energy_cpu;
> 732cd75b8c920d Quentin Perret            2018-12-03  6520
> 732cd75b8c920d Quentin Perret            2018-12-03  6521       return prev_cpu;
> 732cd75b8c920d Quentin Perret            2018-12-03  6522
> 732cd75b8c920d Quentin Perret            2018-12-03  6523  fail:
> 732cd75b8c920d Quentin Perret            2018-12-03  6524       rcu_read_unlock();
> 732cd75b8c920d Quentin Perret            2018-12-03  6525
> 732cd75b8c920d Quentin Perret            2018-12-03  6526       return -1;
> 732cd75b8c920d Quentin Perret            2018-12-03  6527  }
> 732cd75b8c920d Quentin Perret            2018-12-03  6528
>
> :::::: The code at line 6424 was first introduced by commit
> :::::: 732cd75b8c920d3727e69957b14faa7c2d7c3b75 sched/fair: Select an energy-efficient CPU on task wake-up
>
> :::::: TO: Quentin Perret <quentin.perret@arm.com>
> :::::: CC: Ingo Molnar <mingo@kernel.org>
>
> ---
> 0-DAY kernel test infrastructure                Open Source Technology Center
> https://lists.01.org/pipermail/kbuild-all                   Intel Corporation



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdk%2B%3DJ0uJi3%3DtXewZ_BpKujMe2PPtL%3DNQA00whAMJWeQtQ%40mail.gmail.com.
