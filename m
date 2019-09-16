Return-Path: <clang-built-linux+bncBCRIVXEMQILRB4FC77VQKGQEQJOEFRQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id EE8D9B4020
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Sep 2019 20:16:16 +0200 (CEST)
Received: by mail-wr1-x440.google.com with SMTP id t11sf250430wrq.19
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Sep 2019 11:16:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568657776; cv=pass;
        d=google.com; s=arc-20160816;
        b=cfXt1gENTEDyEEQ8ibhWTyoI6bZQBwMgpylN7TuEnUtTufRfnU63I5M6rkVyvfyda7
         hqrQ+0FHtNFuvabEak9onQ2rGrT3i0rbwh8S3jQEPMm39cwGBqs4wMBjXBllXuh1LK8e
         IoZXvQ7TN8oej0f1JBvYgEg56XMhKVfUVHFnrWJM4/r5FuHsDHr+wr3mFDgKBWfx20gv
         DMV1vRAxyFafHj3PyocIQMdF9zO/g+/bJqevVivhsKh2y3jF0pY/ynCHPtuu/UwjqEzf
         aYgT9R7dJsp14s8h7a2VT/32ShzfCgXKOCYrngTj4rs8XRBbgp7gtdP89D3aRoI+Aax3
         LJ6w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=gHx1tkmaEufswCTofaghM92SxSpJnsSNaDN6uDe7wEU=;
        b=Oicpz8VbtdiCOK3/MwKNs28C5XBuOTbOecxb++RawCMEzt4AWOyOIwSOiu48e7I8tV
         /xGnHawy77thaSIRZAj/A8B+ZEWq3Y8fYbkGAdot4Yrzi0BXlaf66bEVVwf/Dbt0eq0Z
         w7U/B+RxngVLwE8u4z+k9dz3vCVM1+KCUlfRqQxswaj1SPQRZJLisSIR9juK55mtE+xs
         cZ2avjXV3cJSg71lBpKvkX5NKuR7x1USaH4JjcHb8ga2WvMqnq6yGrtF+a/6x5tc9Sik
         5dof6e9eMqs+j2yiXGTcPfD/wElqND0nCOmHNfoELzXcshul5AiZ6FDDvIANYXSyzN/z
         u1ew==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=k+wlaIBY;
       spf=pass (google.com: domain of tkjos@google.com designates 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=tkjos@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gHx1tkmaEufswCTofaghM92SxSpJnsSNaDN6uDe7wEU=;
        b=FC2dAHbMPdAGq3MPcCsN1TBYfvYsrmN/jrvIylb7A64Cv936lW0YZ9zzRrq3uZTdKu
         uLzopOAo7/UdUlw9HJcm2ZeW3W7NqoHtY9VQYpj4WsshI1KNwvv4YUu+ZLebvZNfykU9
         PEYKwimM8AdVasFFxuQ/CrkNLjDw7CmrvAs+yapnTLs/iy3GTfsL7WybLG/cRB4JtyNg
         RH1Y6qWyokluTOST9h0pAHc//wh6loMaCvh26m8YmiautRSRweDmhIJlfkaPCQPaYLA4
         Z2vz3gS2lOGMhGQGn4Jkuw50uDo7eZoLQa8E5wBL1WZ1a7eVbkNtvsZ9qWhPCQ76X4nA
         5zxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gHx1tkmaEufswCTofaghM92SxSpJnsSNaDN6uDe7wEU=;
        b=VXoMk0VXKB2iOgO9FGNuXjBLbEEOPjJkzcj40w8FMfXEyCpHlnZhhBKNOApxd5Uann
         SZ+do6irDlGjiWPB+IsDHdVaA8VDjOHN3FeVgla0Tnysi6JzYkW2xWK2vcfXOL663L4r
         sypfCds3NTJJC/b2iibI1be8KRHGuWg3ZllGnOdi39YvvTMrgKrPYQJ8k6cqyl09rkMe
         gsNJNVcvR7caXTMJeSAe0ZyizOC8Sb5HLJ9LcvD2fBkiKuxQ7FOO2RCH2ZyNKcK4JKQG
         RensugVODnPSJeQXiOgK3DRopnx3jUBGs9VGxYK2pwIO5Ch4rGbir+Y1sOEBr/kBQ2si
         hy1Q==
X-Gm-Message-State: APjAAAW/gwjdBVW2XCs19PCJqKSkYNRa4mUC+/8e9ZeAMpLfPxebGOHp
	Vmj78MSy50UVb430Zgh0Ab4=
X-Google-Smtp-Source: APXvYqyfHa4bf2cPuZGKZDER8+6k6DoN4ZpmHnbygSRzJI92s/7X3ZTMJa+R251rUm/UJHomvIcCvA==
X-Received: by 2002:adf:e410:: with SMTP id g16mr885556wrm.297.1568657776627;
        Mon, 16 Sep 2019 11:16:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:aacd:: with SMTP id i13ls238288wrc.3.gmail; Mon, 16 Sep
 2019 11:16:16 -0700 (PDT)
X-Received: by 2002:adf:df81:: with SMTP id z1mr896609wrl.295.1568657776006;
        Mon, 16 Sep 2019 11:16:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568657776; cv=none;
        d=google.com; s=arc-20160816;
        b=seQ2zjIrsBmaxTWuTlLw1brTPV3q1z0z0pVVDKz5J3u3sQDUhj3p0HsIdRAYbH3Kko
         4Awqbry6gnmkBMEDzRFbKTp48LudbGNkansUandddWN8q5V5ibJxrPFKidTzZ1zYgo69
         1BS7oQA9SsYowsGSreEMmUTv8zAQ2cfhn/ihq5++NxaxqgrqSWnFw+Jc2b08sIhibGH1
         fitAlp+VNwpApKmDb8cdTds6RkVVv+2rFzw+H5vK9qeft5DgQ1aQdeXyFNqDmGTRAPOe
         5uFSlB/B9eXq07EyeV18c8iMbt/5gdEg7rUol6VEi2KwRT34Fj/iNsJbBJEM8MjoHLv4
         bXnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=TehtaNZoWYLTMvmMx/ST234PDRmafbX+SOqgg7RIYPY=;
        b=RTxAo/UxTDeN0XF8YqSy8bGhnm4CDGt81cmPWjMc0CZ2sM6zMKN0KXiFFTSyGnh6Kk
         KmFoxzofvGjP2zwoy0Sm0/q483c6eixh8t220Ta+aUj8INi7CxE6ycnL7WApvuFM4eOp
         z9phxuvL/KmpcqMubo+yAbVe8nV9eHcJeaIWi1csRv/iOqGeG2RiQJxwkLghH32gK2JD
         RavYbc0UT9Ef3e0dVA7Qx+VUBM87rlJOSoI+RUwa2wsuB5OT2OUVeVj1ZxI3yFCMr/vT
         dIKX4pkStAi5QVvixgbgLMY/aay1505K7APM8/AGx9tJMpYlRew4va/7/3BWeo8NmHfD
         UlEw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=k+wlaIBY;
       spf=pass (google.com: domain of tkjos@google.com designates 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=tkjos@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x243.google.com (mail-lj1-x243.google.com. [2a00:1450:4864:20::243])
        by gmr-mx.google.com with ESMTPS id s194si2352wme.2.2019.09.16.11.16.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Sep 2019 11:16:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of tkjos@google.com designates 2a00:1450:4864:20::243 as permitted sender) client-ip=2a00:1450:4864:20::243;
Received: by mail-lj1-x243.google.com with SMTP id q64so813136ljb.12
        for <clang-built-linux@googlegroups.com>; Mon, 16 Sep 2019 11:16:15 -0700 (PDT)
X-Received: by 2002:a2e:3618:: with SMTP id d24mr480512lja.179.1568657774870;
 Mon, 16 Sep 2019 11:16:14 -0700 (PDT)
MIME-Version: 1.0
References: <201909161819.6hE3UddX%lkp@intel.com> <CAKwvOdk+=J0uJi3=tXewZ_BpKujMe2PPtL=NQA00whAMJWeQtQ@mail.gmail.com>
In-Reply-To: <CAKwvOdk+=J0uJi3=tXewZ_BpKujMe2PPtL=NQA00whAMJWeQtQ@mail.gmail.com>
From: "'Todd Kjos' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 16 Sep 2019 11:16:03 -0700
Message-ID: <CAHRSSEye3PB6V9FnpBbtJTimzvDJavb6SJ_XdfkyWxjMFH_5=A@mail.gmail.com>
Subject: Re: [android-common:android-mainline-tracking 26/165]
 kernel/sched/fair.c:6424:6: warning: variable 'latency_sensitive' is used
 uninitialized whenever 'if' condition is true
To: Nick Desaulniers <ndesaulniers@google.com>, Quentin Perret <quentin.perret@arm.com>
Cc: kbuild test robot <lkp@intel.com>, Alistair Delva <adelva@google.com>, Sandeep Patil <sspatil@google.com>, 
	kbuild@01.org, clang-built-linux <clang-built-linux@googlegroups.com>, 
	Guenter Roeck <groeck@google.com>, kbuild-all@01.org, Philip Li <philip.li@intel.com>
Content-Type: multipart/alternative; boundary="0000000000007269430592af9931"
X-Original-Sender: tkjos@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=k+wlaIBY;       spf=pass
 (google.com: domain of tkjos@google.com designates 2a00:1450:4864:20::243 as
 permitted sender) smtp.mailfrom=tkjos@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Todd Kjos <tkjos@google.com>
Reply-To: Todd Kjos <tkjos@google.com>
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

--0000000000007269430592af9931
Content-Type: text/plain; charset="UTF-8"

+Quentin Perret <quentin.perret@arm.com>

On Mon, Sep 16, 2019 at 11:14 AM Nick Desaulniers <ndesaulniers@google.com>
wrote:

> Looks legit, consider when the `goto unlock` is taken, then the
> conditional in that section compares against uninitialized memory.
>
> On Mon, Sep 16, 2019 at 3:38 AM kbuild test robot <lkp@intel.com> wrote:
> >
> > CC: kbuild-all@01.org
> > CC: Guenter Roeck <groeck@google.com>
> > BCC: philip.li@intel.com
> > TO: cros-kernel-buildreports@googlegroups.com
> >
> > tree:   https://android.googlesource.com/kernel/common
> android-mainline-tracking
> > head:   01404b7c3d8961cbf4ed3dc0a7a7db617815532a
> > commit: ba702c5960cc857e7645c309a07f6eca8fb83238 [26/165] ANDROID:
> sched/fair: Bias EAS placement for latency
> > config: arm64-defconfig (attached as .config)
> > compiler: clang version 10.0.0 (git://gitmirror/llvm_project
> 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
> > reproduce:
> >         wget
> https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross
> -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         git checkout ba702c5960cc857e7645c309a07f6eca8fb83238
> >         # save the attached .config to linux build tree
> >         make.cross ARCH=arm64
> >
> > If you fix the issue, kindly add following tag
> > Reported-by: kbuild test robot <lkp@intel.com>
> >
> > All warnings (new ones prefixed by >>):
> >
> > >> kernel/sched/fair.c:6424:6: warning: variable 'latency_sensitive' is
> used uninitialized whenever 'if' condition is true
> [-Wsometimes-uninitialized]
> >            if (!task_util_est(p))
> >                ^~~~~~~~~~~~~~~~~
> >    kernel/sched/fair.c:6508:6: note: uninitialized use occurs here
> >            if (latency_sensitive)
> >                ^~~~~~~~~~~~~~~~~
> >    kernel/sched/fair.c:6424:2: note: remove the 'if' if its condition is
> always false
> >            if (!task_util_est(p))
> >            ^~~~~~~~~~~~~~~~~~~~~~
> >    kernel/sched/fair.c:6397:24: note: initialize the variable
> 'latency_sensitive' to silence this warning
> >            bool latency_sensitive, boosted;
> >                                  ^
> >                                   = 0
> >    1 warning generated.
> >
> > vim +6424 kernel/sched/fair.c
> >
> > 390031e4c309c9 Quentin Perret            2018-12-03  6348
> > 390031e4c309c9 Quentin Perret            2018-12-03  6349  /*
> > 732cd75b8c920d Quentin Perret            2018-12-03  6350   *
> find_energy_efficient_cpu(): Find most energy-efficient target CPU for the
> > 732cd75b8c920d Quentin Perret            2018-12-03  6351   * waking
> task. find_energy_efficient_cpu() looks for the CPU with maximum
> > 732cd75b8c920d Quentin Perret            2018-12-03  6352   * spare
> capacity in each performance domain and uses it as a potential
> > 732cd75b8c920d Quentin Perret            2018-12-03  6353   * candidate
> to execute the task. Then, it uses the Energy Model to figure
> > 732cd75b8c920d Quentin Perret            2018-12-03  6354   * out which
> of the CPU candidates is the most energy-efficient.
> > 732cd75b8c920d Quentin Perret            2018-12-03  6355   *
> > 732cd75b8c920d Quentin Perret            2018-12-03  6356   * The
> rationale for this heuristic is as follows. In a performance domain,
> > 732cd75b8c920d Quentin Perret            2018-12-03  6357   * all the
> most energy efficient CPU candidates (according to the Energy
> > 732cd75b8c920d Quentin Perret            2018-12-03  6358   * Model) are
> those for which we'll request a low frequency. When there are
> > 732cd75b8c920d Quentin Perret            2018-12-03  6359   * several
> CPUs for which the frequency request will be the same, we don't
> > 732cd75b8c920d Quentin Perret            2018-12-03  6360   * have
> enough data to break the tie between them, because the Energy Model
> > 732cd75b8c920d Quentin Perret            2018-12-03  6361   * only
> includes active power costs. With this model, if we assume that
> > 732cd75b8c920d Quentin Perret            2018-12-03  6362   * frequency
> requests follow utilization (e.g. using schedutil), the CPU with
> > 732cd75b8c920d Quentin Perret            2018-12-03  6363   * the
> maximum spare capacity in a performance domain is guaranteed to be among
> > 732cd75b8c920d Quentin Perret            2018-12-03  6364   * the best
> candidates of the performance domain.
> > 732cd75b8c920d Quentin Perret            2018-12-03  6365   *
> > 732cd75b8c920d Quentin Perret            2018-12-03  6366   * In
> practice, it could be preferable from an energy standpoint to pack
> > 732cd75b8c920d Quentin Perret            2018-12-03  6367   * small
> tasks on a CPU in order to let other CPUs go in deeper idle states,
> > 732cd75b8c920d Quentin Perret            2018-12-03  6368   * but that
> could also hurt our chances to go cluster idle, and we have no
> > 732cd75b8c920d Quentin Perret            2018-12-03  6369   * ways to
> tell with the current Energy Model if this is actually a good
> > 732cd75b8c920d Quentin Perret            2018-12-03  6370   * idea or
> not. So, find_energy_efficient_cpu() basically favors
> > 732cd75b8c920d Quentin Perret            2018-12-03  6371   *
> cluster-packing, and spreading inside a cluster. That should at least be
> > 732cd75b8c920d Quentin Perret            2018-12-03  6372   * a good
> thing for latency, and this is consistent with the idea that most
> > 732cd75b8c920d Quentin Perret            2018-12-03  6373   * of the
> energy savings of EAS come from the asymmetry of the system, and
> > 732cd75b8c920d Quentin Perret            2018-12-03  6374   * not so
> much from breaking the tie between identical CPUs. That's also the
> > 732cd75b8c920d Quentin Perret            2018-12-03  6375   * reason why
> EAS is enabled in the topology code only for systems where
> > 732cd75b8c920d Quentin Perret            2018-12-03  6376   *
> SD_ASYM_CPUCAPACITY is set.
> > 732cd75b8c920d Quentin Perret            2018-12-03  6377   *
> > 732cd75b8c920d Quentin Perret            2018-12-03  6378   * NOTE:
> Forkees are not accepted in the energy-aware wake-up path because
> > 732cd75b8c920d Quentin Perret            2018-12-03  6379   * they don't
> have any useful utilization data yet and it's not possible to
> > 732cd75b8c920d Quentin Perret            2018-12-03  6380   * forecast
> their impact on energy consumption. Consequently, they will be
> > 732cd75b8c920d Quentin Perret            2018-12-03  6381   * placed by
> find_idlest_cpu() on the least loaded CPU, which might turn out
> > 732cd75b8c920d Quentin Perret            2018-12-03  6382   * to be
> energy-inefficient in some use-cases. The alternative would be to
> > 732cd75b8c920d Quentin Perret            2018-12-03  6383   * bias new
> tasks towards specific types of CPUs first, or to try to infer
> > 732cd75b8c920d Quentin Perret            2018-12-03  6384   * their
> util_avg from the parent task, but those heuristics could hurt
> > 732cd75b8c920d Quentin Perret            2018-12-03  6385   * other
> use-cases too. So, until someone finds a better way to solve this,
> > 732cd75b8c920d Quentin Perret            2018-12-03  6386   * let's keep
> things simple by re-using the existing slow path.
> > 732cd75b8c920d Quentin Perret            2018-12-03  6387   */
> > 256fe932094827 Chris Redpath             2019-03-27  6388  static int
> find_energy_efficient_cpu(struct task_struct *p, int prev_cpu, int sync)
> > 732cd75b8c920d Quentin Perret            2018-12-03  6389  {
> > 8b81a4a5368a72 Quentin Perret            2019-09-12  6390       unsigned
> long prev_delta = ULONG_MAX, best_delta = ULONG_MAX;
> > 732cd75b8c920d Quentin Perret            2018-12-03  6391       struct
> root_domain *rd = cpu_rq(smp_processor_id())->rd;
> > ba702c5960cc85 Quentin Perret            2019-02-27  6392       int
> max_spare_cap_cpu_ls = prev_cpu, best_idle_cpu = -1;
> > ba702c5960cc85 Quentin Perret            2019-02-27  6393       unsigned
> long max_spare_cap_ls = 0, target_cap;
> > 8b81a4a5368a72 Quentin Perret            2019-09-12  6394       unsigned
> long cpu_cap, util, base_energy = 0;
> > ba702c5960cc85 Quentin Perret            2019-02-27  6395       unsigned
> int min_exit_lat = UINT_MAX;
> > 732cd75b8c920d Quentin Perret            2018-12-03  6396       int cpu,
> best_energy_cpu = prev_cpu;
> > ba702c5960cc85 Quentin Perret            2019-02-27  6397       bool
> latency_sensitive, boosted;
> > ba702c5960cc85 Quentin Perret            2019-02-27  6398       struct
> cpuidle_state *idle;
> > 732cd75b8c920d Quentin Perret            2018-12-03  6399       struct
> sched_domain *sd;
> > 8b81a4a5368a72 Quentin Perret            2019-09-12  6400       struct
> perf_domain *pd;
> > 732cd75b8c920d Quentin Perret            2018-12-03  6401
> > 732cd75b8c920d Quentin Perret            2018-12-03  6402
>  rcu_read_lock();
> > 732cd75b8c920d Quentin Perret            2018-12-03  6403       pd =
> rcu_dereference(rd->pd);
> > 732cd75b8c920d Quentin Perret            2018-12-03  6404       if (!pd
> || READ_ONCE(rd->overutilized))
> > 732cd75b8c920d Quentin Perret            2018-12-03  6405
>  goto fail;
> > 732cd75b8c920d Quentin Perret            2018-12-03  6406
> > 256fe932094827 Chris Redpath             2019-03-27  6407       cpu =
> smp_processor_id();
> > 256fe932094827 Chris Redpath             2019-03-27  6408       if (sync
> && cpumask_test_cpu(cpu, p->cpus_ptr)) {
> > 256fe932094827 Chris Redpath             2019-03-27  6409
>  rcu_read_unlock();
> > 256fe932094827 Chris Redpath             2019-03-27  6410
>  return cpu;
> > 256fe932094827 Chris Redpath             2019-03-27  6411       }
> > 256fe932094827 Chris Redpath             2019-03-27  6412
> > 732cd75b8c920d Quentin Perret            2018-12-03  6413       /*
> > 732cd75b8c920d Quentin Perret            2018-12-03  6414        *
> Energy-aware wake-up happens on the lowest sched_domain starting
> > 732cd75b8c920d Quentin Perret            2018-12-03  6415        * from
> sd_asym_cpucapacity spanning over this_cpu and prev_cpu.
> > 732cd75b8c920d Quentin Perret            2018-12-03  6416        */
> > 732cd75b8c920d Quentin Perret            2018-12-03  6417       sd =
> rcu_dereference(*this_cpu_ptr(&sd_asym_cpucapacity));
> > 732cd75b8c920d Quentin Perret            2018-12-03  6418       while
> (sd && !cpumask_test_cpu(prev_cpu, sched_domain_span(sd)))
> > 732cd75b8c920d Quentin Perret            2018-12-03  6419
>  sd = sd->parent;
> > 732cd75b8c920d Quentin Perret            2018-12-03  6420       if (!sd)
> > 732cd75b8c920d Quentin Perret            2018-12-03  6421
>  goto fail;
> > 732cd75b8c920d Quentin Perret            2018-12-03  6422
> > 732cd75b8c920d Quentin Perret            2018-12-03  6423
>  sync_entity_load_avg(&p->se);
> > 732cd75b8c920d Quentin Perret            2018-12-03 @6424       if
> (!task_util_est(p))
> > 732cd75b8c920d Quentin Perret            2018-12-03  6425
>  goto unlock;
> > 732cd75b8c920d Quentin Perret            2018-12-03  6426
> > ba702c5960cc85 Quentin Perret            2019-02-27  6427
>  latency_sensitive = uclamp_latency_sensitive(p);
> > ba702c5960cc85 Quentin Perret            2019-02-27  6428       boosted
> = uclamp_boosted(p);
> > ba702c5960cc85 Quentin Perret            2019-02-27  6429
>  target_cap = boosted ? 0 : ULONG_MAX;
> > ba702c5960cc85 Quentin Perret            2019-02-27  6430
> > 732cd75b8c920d Quentin Perret            2018-12-03  6431       for (;
> pd; pd = pd->next) {
> > 8b81a4a5368a72 Quentin Perret            2019-09-12  6432
>  unsigned long cur_delta, spare_cap, max_spare_cap = 0;
> > 8b81a4a5368a72 Quentin Perret            2019-09-12  6433
>  unsigned long base_energy_pd;
> > 732cd75b8c920d Quentin Perret            2018-12-03  6434
>  int max_spare_cap_cpu = -1;
> > 732cd75b8c920d Quentin Perret            2018-12-03  6435
> > 8b81a4a5368a72 Quentin Perret            2019-09-12  6436
>  /* Compute the 'base' energy of the pd, without @p */
> > 8b81a4a5368a72 Quentin Perret            2019-09-12  6437
>  base_energy_pd = compute_energy(p, -1, pd);
> > 8b81a4a5368a72 Quentin Perret            2019-09-12  6438
>  base_energy += base_energy_pd;
> > 8b81a4a5368a72 Quentin Perret            2019-09-12  6439
> > 732cd75b8c920d Quentin Perret            2018-12-03  6440
>  for_each_cpu_and(cpu, perf_domain_span(pd), sched_domain_span(sd)) {
> > 3bd3706251ee8a Sebastian Andrzej Siewior 2019-04-23  6441
>        if (!cpumask_test_cpu(cpu, p->cpus_ptr))
> > 732cd75b8c920d Quentin Perret            2018-12-03  6442
>                continue;
> > 732cd75b8c920d Quentin Perret            2018-12-03  6443
> > 732cd75b8c920d Quentin Perret            2018-12-03  6444
>        /* Skip CPUs that will be overutilized. */
> > 732cd75b8c920d Quentin Perret            2018-12-03  6445
>        util = cpu_util_next(cpu, p, cpu);
> > 732cd75b8c920d Quentin Perret            2018-12-03  6446
>        cpu_cap = capacity_of(cpu);
> > 732cd75b8c920d Quentin Perret            2018-12-03  6447
>        if (cpu_cap * 1024 < util * capacity_margin)
> > 732cd75b8c920d Quentin Perret            2018-12-03  6448
>                continue;
> > 732cd75b8c920d Quentin Perret            2018-12-03  6449
> > ffeaec761d76d5 Patrick Bellasi           2018-12-18  6450
>        /* Skip CPUs which do not fit task requirements */
> > ffeaec761d76d5 Patrick Bellasi           2018-12-18  6451
>        if (cpu_cap < uclamp_task_util(p))
> > ffeaec761d76d5 Patrick Bellasi           2018-12-18  6452
>                continue;
> > ffeaec761d76d5 Patrick Bellasi           2018-12-18  6453
> > 732cd75b8c920d Quentin Perret            2018-12-03  6454
>        /* Always use prev_cpu as a candidate. */
> > ba702c5960cc85 Quentin Perret            2019-02-27  6455
>        if (!latency_sensitive && cpu == prev_cpu) {
> > 8b81a4a5368a72 Quentin Perret            2019-09-12  6456
>                prev_delta = compute_energy(p, prev_cpu, pd);
> > 8b81a4a5368a72 Quentin Perret            2019-09-12  6457
>                prev_delta -= base_energy_pd;
> > 8b81a4a5368a72 Quentin Perret            2019-09-12  6458
>                best_delta = min(best_delta, prev_delta);
> > 732cd75b8c920d Quentin Perret            2018-12-03  6459
>        }
> > 732cd75b8c920d Quentin Perret            2018-12-03  6460
> > 732cd75b8c920d Quentin Perret            2018-12-03  6461
>        /*
> > 732cd75b8c920d Quentin Perret            2018-12-03  6462
>         * Find the CPU with the maximum spare capacity in
> > 732cd75b8c920d Quentin Perret            2018-12-03  6463
>         * the performance domain
> > 732cd75b8c920d Quentin Perret            2018-12-03  6464
>         */
> > 732cd75b8c920d Quentin Perret            2018-12-03  6465
>        spare_cap = cpu_cap - util;
> > 732cd75b8c920d Quentin Perret            2018-12-03  6466
>        if (spare_cap > max_spare_cap) {
> > 732cd75b8c920d Quentin Perret            2018-12-03  6467
>                max_spare_cap = spare_cap;
> > 732cd75b8c920d Quentin Perret            2018-12-03  6468
>                max_spare_cap_cpu = cpu;
> > 732cd75b8c920d Quentin Perret            2018-12-03  6469
>        }
> > ba702c5960cc85 Quentin Perret            2019-02-27  6470
> > ba702c5960cc85 Quentin Perret            2019-02-27  6471
>        if (!latency_sensitive)
> > ba702c5960cc85 Quentin Perret            2019-02-27  6472
>                continue;
> > ba702c5960cc85 Quentin Perret            2019-02-27  6473
> > ba702c5960cc85 Quentin Perret            2019-02-27  6474
>        if (idle_cpu(cpu)) {
> > ba702c5960cc85 Quentin Perret            2019-02-27  6475
>                cpu_cap = capacity_orig_of(cpu);
> > ba702c5960cc85 Quentin Perret            2019-02-27  6476
>                if (boosted && cpu_cap < target_cap)
> > ba702c5960cc85 Quentin Perret            2019-02-27  6477
>                        continue;
> > ba702c5960cc85 Quentin Perret            2019-02-27  6478
>                if (!boosted && cpu_cap > target_cap)
> > ba702c5960cc85 Quentin Perret            2019-02-27  6479
>                        continue;
> > ba702c5960cc85 Quentin Perret            2019-02-27  6480
>                idle = idle_get_state(cpu_rq(cpu));
> > ba702c5960cc85 Quentin Perret            2019-02-27  6481
>                if (idle && idle->exit_latency > min_exit_lat &&
> > ba702c5960cc85 Quentin Perret            2019-02-27  6482
>                                cpu_cap == target_cap)
> > ba702c5960cc85 Quentin Perret            2019-02-27  6483
>                        continue;
> > ba702c5960cc85 Quentin Perret            2019-02-27  6484
> > ba702c5960cc85 Quentin Perret            2019-02-27  6485
>                if (idle)
> > ba702c5960cc85 Quentin Perret            2019-02-27  6486
>                        min_exit_lat = idle->exit_latency;
> > ba702c5960cc85 Quentin Perret            2019-02-27  6487
>                target_cap = cpu_cap;
> > ba702c5960cc85 Quentin Perret            2019-02-27  6488
>                best_idle_cpu = cpu;
> > ba702c5960cc85 Quentin Perret            2019-02-27  6489
>        } else if (spare_cap > max_spare_cap_ls) {
> > ba702c5960cc85 Quentin Perret            2019-02-27  6490
>                max_spare_cap_ls = spare_cap;
> > ba702c5960cc85 Quentin Perret            2019-02-27  6491
>                max_spare_cap_cpu_ls = cpu;
> > ba702c5960cc85 Quentin Perret            2019-02-27  6492
>        }
> > 732cd75b8c920d Quentin Perret            2018-12-03  6493               }
> > 732cd75b8c920d Quentin Perret            2018-12-03  6494
> > 732cd75b8c920d Quentin Perret            2018-12-03  6495
>  /* Evaluate the energy impact of using this CPU. */
> > ba702c5960cc85 Quentin Perret            2019-02-27  6496
>  if (!latency_sensitive && max_spare_cap_cpu >= 0) {
> > 8b81a4a5368a72 Quentin Perret            2019-09-12  6497
>        cur_delta = compute_energy(p, max_spare_cap_cpu, pd);
> > 8b81a4a5368a72 Quentin Perret            2019-09-12  6498
>        cur_delta -= base_energy_pd;
> > 8b81a4a5368a72 Quentin Perret            2019-09-12  6499
>        if (cur_delta < best_delta) {
> > 8b81a4a5368a72 Quentin Perret            2019-09-12  6500
>                best_delta = cur_delta;
> > 732cd75b8c920d Quentin Perret            2018-12-03  6501
>                best_energy_cpu = max_spare_cap_cpu;
> > 732cd75b8c920d Quentin Perret            2018-12-03  6502
>        }
> > 732cd75b8c920d Quentin Perret            2018-12-03  6503               }
> > 732cd75b8c920d Quentin Perret            2018-12-03  6504       }
> > 732cd75b8c920d Quentin Perret            2018-12-03  6505  unlock:
> > 732cd75b8c920d Quentin Perret            2018-12-03  6506
>  rcu_read_unlock();
> > 732cd75b8c920d Quentin Perret            2018-12-03  6507
> > ba702c5960cc85 Quentin Perret            2019-02-27  6508       if
> (latency_sensitive)
> > ba702c5960cc85 Quentin Perret            2019-02-27  6509
>  return best_idle_cpu >= 0 ? best_idle_cpu : max_spare_cap_cpu_ls;
> > ba702c5960cc85 Quentin Perret            2019-02-27  6510
> > 732cd75b8c920d Quentin Perret            2018-12-03  6511       /*
> > 732cd75b8c920d Quentin Perret            2018-12-03  6512        * Pick
> the best CPU if prev_cpu cannot be used, or if it saves at
> > 732cd75b8c920d Quentin Perret            2018-12-03  6513        * least
> 6% of the energy used by prev_cpu.
> > 732cd75b8c920d Quentin Perret            2018-12-03  6514        */
> > 8b81a4a5368a72 Quentin Perret            2019-09-12  6515       if
> (prev_delta == ULONG_MAX)
> > 732cd75b8c920d Quentin Perret            2018-12-03  6516
>  return best_energy_cpu;
> > 732cd75b8c920d Quentin Perret            2018-12-03  6517
> > 8b81a4a5368a72 Quentin Perret            2019-09-12  6518       if
> ((prev_delta - best_delta) > ((prev_delta + base_energy) >> 4))
> > 732cd75b8c920d Quentin Perret            2018-12-03  6519
>  return best_energy_cpu;
> > 732cd75b8c920d Quentin Perret            2018-12-03  6520
> > 732cd75b8c920d Quentin Perret            2018-12-03  6521       return
> prev_cpu;
> > 732cd75b8c920d Quentin Perret            2018-12-03  6522
> > 732cd75b8c920d Quentin Perret            2018-12-03  6523  fail:
> > 732cd75b8c920d Quentin Perret            2018-12-03  6524
>  rcu_read_unlock();
> > 732cd75b8c920d Quentin Perret            2018-12-03  6525
> > 732cd75b8c920d Quentin Perret            2018-12-03  6526       return
> -1;
> > 732cd75b8c920d Quentin Perret            2018-12-03  6527  }
> > 732cd75b8c920d Quentin Perret            2018-12-03  6528
> >
> > :::::: The code at line 6424 was first introduced by commit
> > :::::: 732cd75b8c920d3727e69957b14faa7c2d7c3b75 sched/fair: Select an
> energy-efficient CPU on task wake-up
> >
> > :::::: TO: Quentin Perret <quentin.perret@arm.com>
> > :::::: CC: Ingo Molnar <mingo@kernel.org>
> >
> > ---
> > 0-DAY kernel test infrastructure                Open Source Technology
> Center
> > https://lists.01.org/pipermail/kbuild-all                   Intel
> Corporation
>
>
>
> --
> Thanks,
> ~Nick Desaulniers
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHRSSEye3PB6V9FnpBbtJTimzvDJavb6SJ_XdfkyWxjMFH_5%3DA%40mail.gmail.com.

--0000000000007269430592af9931
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: base64

PGRpdiBkaXI9Imx0ciI+PGEgY2xhc3M9ImdtYWlsX3BsdXNyZXBseSIgaWQ9InBsdXNSZXBseUNo
aXAtMCIgaHJlZj0ibWFpbHRvOnF1ZW50aW4ucGVycmV0QGFybS5jb20iIHRhYmluZGV4PSItMSI+
K1F1ZW50aW4gUGVycmV0PC9hPjxicj48L2Rpdj48YnI+PGRpdiBjbGFzcz0iZ21haWxfcXVvdGUi
PjxkaXYgZGlyPSJsdHIiIGNsYXNzPSJnbWFpbF9hdHRyIj5PbiBNb24sIFNlcCAxNiwgMjAxOSBh
dCAxMToxNCBBTSBOaWNrIERlc2F1bG5pZXJzICZsdDs8YSBocmVmPSJtYWlsdG86bmRlc2F1bG5p
ZXJzQGdvb2dsZS5jb20iPm5kZXNhdWxuaWVyc0Bnb29nbGUuY29tPC9hPiZndDsgd3JvdGU6PGJy
PjwvZGl2PjxibG9ja3F1b3RlIGNsYXNzPSJnbWFpbF9xdW90ZSIgc3R5bGU9Im1hcmdpbjowcHgg
MHB4IDBweCAwLjhleDtib3JkZXItbGVmdDoxcHggc29saWQgcmdiKDIwNCwyMDQsMjA0KTtwYWRk
aW5nLWxlZnQ6MWV4Ij5Mb29rcyBsZWdpdCwgY29uc2lkZXIgd2hlbiB0aGUgYGdvdG8gdW5sb2Nr
YCBpcyB0YWtlbiwgdGhlbiB0aGU8YnI+DQpjb25kaXRpb25hbCBpbiB0aGF0IHNlY3Rpb24gY29t
cGFyZXMgYWdhaW5zdCB1bmluaXRpYWxpemVkIG1lbW9yeS48YnI+DQo8YnI+DQpPbiBNb24sIFNl
cCAxNiwgMjAxOSBhdCAzOjM4IEFNIGtidWlsZCB0ZXN0IHJvYm90ICZsdDs8YSBocmVmPSJtYWls
dG86bGtwQGludGVsLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPmxrcEBpbnRlbC5jb208L2E+Jmd0OyB3
cm90ZTo8YnI+DQomZ3Q7PGJyPg0KJmd0OyBDQzogPGEgaHJlZj0ibWFpbHRvOmtidWlsZC1hbGxA
MDEub3JnIiB0YXJnZXQ9Il9ibGFuayI+a2J1aWxkLWFsbEAwMS5vcmc8L2E+PGJyPg0KJmd0OyBD
QzogR3VlbnRlciBSb2VjayAmbHQ7PGEgaHJlZj0ibWFpbHRvOmdyb2Vja0Bnb29nbGUuY29tIiB0
YXJnZXQ9Il9ibGFuayI+Z3JvZWNrQGdvb2dsZS5jb208L2E+Jmd0Ozxicj4NCiZndDsgQkNDOiA8
YSBocmVmPSJtYWlsdG86cGhpbGlwLmxpQGludGVsLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPnBoaWxp
cC5saUBpbnRlbC5jb208L2E+PGJyPg0KJmd0OyBUTzogPGEgaHJlZj0ibWFpbHRvOmNyb3Mta2Vy
bmVsLWJ1aWxkcmVwb3J0c0Bnb29nbGVncm91cHMuY29tIiB0YXJnZXQ9Il9ibGFuayI+Y3Jvcy1r
ZXJuZWwtYnVpbGRyZXBvcnRzQGdvb2dsZWdyb3Vwcy5jb208L2E+PGJyPg0KJmd0Ozxicj4NCiZn
dDsgdHJlZTrCoCDCoDxhIGhyZWY9Imh0dHBzOi8vYW5kcm9pZC5nb29nbGVzb3VyY2UuY29tL2tl
cm5lbC9jb21tb24iIHJlbD0ibm9yZWZlcnJlciIgdGFyZ2V0PSJfYmxhbmsiPmh0dHBzOi8vYW5k
cm9pZC5nb29nbGVzb3VyY2UuY29tL2tlcm5lbC9jb21tb248L2E+IGFuZHJvaWQtbWFpbmxpbmUt
dHJhY2tpbmc8YnI+DQomZ3Q7IGhlYWQ6wqAgwqAwMTQwNGI3YzNkODk2MWNiZjRlZDNkYzBhN2E3
ZGI2MTc4MTU1MzJhPGJyPg0KJmd0OyBjb21taXQ6IGJhNzAyYzU5NjBjYzg1N2U3NjQ1YzMwOWEw
N2Y2ZWNhOGZiODMyMzggWzI2LzE2NV0gQU5EUk9JRDogc2NoZWQvZmFpcjogQmlhcyBFQVMgcGxh
Y2VtZW50IGZvciBsYXRlbmN5PGJyPg0KJmd0OyBjb25maWc6IGFybTY0LWRlZmNvbmZpZyAoYXR0
YWNoZWQgYXMgLmNvbmZpZyk8YnI+DQomZ3Q7IGNvbXBpbGVyOiBjbGFuZyB2ZXJzaW9uIDEwLjAu
MCAoZ2l0Oi8vZ2l0bWlycm9yL2xsdm1fcHJvamVjdCA0NWEzZmQyMDZmYjA2Zjc3YTA4OTY4Yzk5
YTgxNzJjYmYyY2NkZDBmKTxicj4NCiZndDsgcmVwcm9kdWNlOjxicj4NCiZndDvCoCDCoCDCoCDC
oCDCoHdnZXQgPGEgaHJlZj0iaHR0cHM6Ly9yYXcuZ2l0aHVidXNlcmNvbnRlbnQuY29tL2ludGVs
L2xrcC10ZXN0cy9tYXN0ZXIvc2Jpbi9tYWtlLmNyb3NzIiByZWw9Im5vcmVmZXJyZXIiIHRhcmdl
dD0iX2JsYW5rIj5odHRwczovL3Jhdy5naXRodWJ1c2VyY29udGVudC5jb20vaW50ZWwvbGtwLXRl
c3RzL21hc3Rlci9zYmluL21ha2UuY3Jvc3M8L2E+IC1PIH4vYmluL21ha2UuY3Jvc3M8YnI+DQom
Z3Q7wqAgwqAgwqAgwqAgwqBjaG1vZCAreCB+L2Jpbi9tYWtlLmNyb3NzPGJyPg0KJmd0O8KgIMKg
IMKgIMKgIMKgZ2l0IGNoZWNrb3V0IGJhNzAyYzU5NjBjYzg1N2U3NjQ1YzMwOWEwN2Y2ZWNhOGZi
ODMyMzg8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAjIHNhdmUgdGhlIGF0dGFjaGVkIC5jb25maWcg
dG8gbGludXggYnVpbGQgdHJlZTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoG1ha2UuY3Jvc3MgQVJD
SD1hcm02NDxicj4NCiZndDs8YnI+DQomZ3Q7IElmIHlvdSBmaXggdGhlIGlzc3VlLCBraW5kbHkg
YWRkIGZvbGxvd2luZyB0YWc8YnI+DQomZ3Q7IFJlcG9ydGVkLWJ5OiBrYnVpbGQgdGVzdCByb2Jv
dCAmbHQ7PGEgaHJlZj0ibWFpbHRvOmxrcEBpbnRlbC5jb20iIHRhcmdldD0iX2JsYW5rIj5sa3BA
aW50ZWwuY29tPC9hPiZndDs8YnI+DQomZ3Q7PGJyPg0KJmd0OyBBbGwgd2FybmluZ3MgKG5ldyBv
bmVzIHByZWZpeGVkIGJ5ICZndDsmZ3Q7KTo8YnI+DQomZ3Q7PGJyPg0KJmd0OyAmZ3Q7Jmd0OyBr
ZXJuZWwvc2NoZWQvZmFpci5jOjY0MjQ6Njogd2FybmluZzogdmFyaWFibGUgJiMzOTtsYXRlbmN5
X3NlbnNpdGl2ZSYjMzk7IGlzIHVzZWQgdW5pbml0aWFsaXplZCB3aGVuZXZlciAmIzM5O2lmJiMz
OTsgY29uZGl0aW9uIGlzIHRydWUgWy1Xc29tZXRpbWVzLXVuaW5pdGlhbGl6ZWRdPGJyPg0KJmd0
O8KgIMKgIMKgIMKgIMKgIMKgIGlmICghdGFza191dGlsX2VzdChwKSk8YnI+DQomZ3Q7wqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgXn5+fn5+fn5+fn5+fn5+fn48YnI+DQomZ3Q7wqAgwqAga2VybmVs
L3NjaGVkL2ZhaXIuYzo2NTA4OjY6IG5vdGU6IHVuaW5pdGlhbGl6ZWQgdXNlIG9jY3VycyBoZXJl
PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIGlmIChsYXRlbmN5X3NlbnNpdGl2ZSk8YnI+DQom
Z3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgXn5+fn5+fn5+fn5+fn5+fn48YnI+DQomZ3Q7wqAg
wqAga2VybmVsL3NjaGVkL2ZhaXIuYzo2NDI0OjI6IG5vdGU6IHJlbW92ZSB0aGUgJiMzOTtpZiYj
Mzk7IGlmIGl0cyBjb25kaXRpb24gaXMgYWx3YXlzIGZhbHNlPGJyPg0KJmd0O8KgIMKgIMKgIMKg
IMKgIMKgIGlmICghdGFza191dGlsX2VzdChwKSk8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAg
Xn5+fn5+fn5+fn5+fn5+fn5+fn5+fjxicj4NCiZndDvCoCDCoCBrZXJuZWwvc2NoZWQvZmFpci5j
OjYzOTc6MjQ6IG5vdGU6IGluaXRpYWxpemUgdGhlIHZhcmlhYmxlICYjMzk7bGF0ZW5jeV9zZW5z
aXRpdmUmIzM5OyB0byBzaWxlbmNlIHRoaXMgd2FybmluZzxicj4NCiZndDvCoCDCoCDCoCDCoCDC
oCDCoCBib29sIGxhdGVuY3lfc2Vuc2l0aXZlLCBib29zdGVkOzxicj4NCiZndDvCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCBePGJyPg0KJmd0O8KgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgPSAwPGJyPg0K
Jmd0O8KgIMKgIDEgd2FybmluZyBnZW5lcmF0ZWQuPGJyPg0KJmd0Ozxicj4NCiZndDsgdmltICs2
NDI0IGtlcm5lbC9zY2hlZC9mYWlyLmM8YnI+DQomZ3Q7PGJyPg0KJmd0OyAzOTAwMzFlNGMzMDlj
OSBRdWVudGluIFBlcnJldMKgIMKgIMKgIMKgIMKgIMKgIDIwMTgtMTItMDPCoCA2MzQ4PGJyPg0K
Jmd0OyAzOTAwMzFlNGMzMDljOSBRdWVudGluIFBlcnJldMKgIMKgIMKgIMKgIMKgIMKgIDIwMTgt
MTItMDPCoCA2MzQ5wqAgLyo8YnI+DQomZ3Q7IDczMmNkNzViOGM5MjBkIFF1ZW50aW4gUGVycmV0
wqAgwqAgwqAgwqAgwqAgwqAgMjAxOC0xMi0wM8KgIDYzNTDCoCDCoCogZmluZF9lbmVyZ3lfZWZm
aWNpZW50X2NwdSgpOiBGaW5kIG1vc3QgZW5lcmd5LWVmZmljaWVudCB0YXJnZXQgQ1BVIGZvciB0
aGU8YnI+DQomZ3Q7IDczMmNkNzViOGM5MjBkIFF1ZW50aW4gUGVycmV0wqAgwqAgwqAgwqAgwqAg
wqAgMjAxOC0xMi0wM8KgIDYzNTHCoCDCoCogd2FraW5nIHRhc2suIGZpbmRfZW5lcmd5X2VmZmlj
aWVudF9jcHUoKSBsb29rcyBmb3IgdGhlIENQVSB3aXRoIG1heGltdW08YnI+DQomZ3Q7IDczMmNk
NzViOGM5MjBkIFF1ZW50aW4gUGVycmV0wqAgwqAgwqAgwqAgwqAgwqAgMjAxOC0xMi0wM8KgIDYz
NTLCoCDCoCogc3BhcmUgY2FwYWNpdHkgaW4gZWFjaCBwZXJmb3JtYW5jZSBkb21haW4gYW5kIHVz
ZXMgaXQgYXMgYSBwb3RlbnRpYWw8YnI+DQomZ3Q7IDczMmNkNzViOGM5MjBkIFF1ZW50aW4gUGVy
cmV0wqAgwqAgwqAgwqAgwqAgwqAgMjAxOC0xMi0wM8KgIDYzNTPCoCDCoCogY2FuZGlkYXRlIHRv
IGV4ZWN1dGUgdGhlIHRhc2suIFRoZW4sIGl0IHVzZXMgdGhlIEVuZXJneSBNb2RlbCB0byBmaWd1
cmU8YnI+DQomZ3Q7IDczMmNkNzViOGM5MjBkIFF1ZW50aW4gUGVycmV0wqAgwqAgwqAgwqAgwqAg
wqAgMjAxOC0xMi0wM8KgIDYzNTTCoCDCoCogb3V0IHdoaWNoIG9mIHRoZSBDUFUgY2FuZGlkYXRl
cyBpcyB0aGUgbW9zdCBlbmVyZ3ktZWZmaWNpZW50Ljxicj4NCiZndDsgNzMyY2Q3NWI4YzkyMGQg
UXVlbnRpbiBQZXJyZXTCoCDCoCDCoCDCoCDCoCDCoCAyMDE4LTEyLTAzwqAgNjM1NcKgIMKgKjxi
cj4NCiZndDsgNzMyY2Q3NWI4YzkyMGQgUXVlbnRpbiBQZXJyZXTCoCDCoCDCoCDCoCDCoCDCoCAy
MDE4LTEyLTAzwqAgNjM1NsKgIMKgKiBUaGUgcmF0aW9uYWxlIGZvciB0aGlzIGhldXJpc3RpYyBp
cyBhcyBmb2xsb3dzLiBJbiBhIHBlcmZvcm1hbmNlIGRvbWFpbiw8YnI+DQomZ3Q7IDczMmNkNzVi
OGM5MjBkIFF1ZW50aW4gUGVycmV0wqAgwqAgwqAgwqAgwqAgwqAgMjAxOC0xMi0wM8KgIDYzNTfC
oCDCoCogYWxsIHRoZSBtb3N0IGVuZXJneSBlZmZpY2llbnQgQ1BVIGNhbmRpZGF0ZXMgKGFjY29y
ZGluZyB0byB0aGUgRW5lcmd5PGJyPg0KJmd0OyA3MzJjZDc1YjhjOTIwZCBRdWVudGluIFBlcnJl
dMKgIMKgIMKgIMKgIMKgIMKgIDIwMTgtMTItMDPCoCA2MzU4wqAgwqAqIE1vZGVsKSBhcmUgdGhv
c2UgZm9yIHdoaWNoIHdlJiMzOTtsbCByZXF1ZXN0IGEgbG93IGZyZXF1ZW5jeS4gV2hlbiB0aGVy
ZSBhcmU8YnI+DQomZ3Q7IDczMmNkNzViOGM5MjBkIFF1ZW50aW4gUGVycmV0wqAgwqAgwqAgwqAg
wqAgwqAgMjAxOC0xMi0wM8KgIDYzNTnCoCDCoCogc2V2ZXJhbCBDUFVzIGZvciB3aGljaCB0aGUg
ZnJlcXVlbmN5IHJlcXVlc3Qgd2lsbCBiZSB0aGUgc2FtZSwgd2UgZG9uJiMzOTt0PGJyPg0KJmd0
OyA3MzJjZDc1YjhjOTIwZCBRdWVudGluIFBlcnJldMKgIMKgIMKgIMKgIMKgIMKgIDIwMTgtMTIt
MDPCoCA2MzYwwqAgwqAqIGhhdmUgZW5vdWdoIGRhdGEgdG8gYnJlYWsgdGhlIHRpZSBiZXR3ZWVu
IHRoZW0sIGJlY2F1c2UgdGhlIEVuZXJneSBNb2RlbDxicj4NCiZndDsgNzMyY2Q3NWI4YzkyMGQg
UXVlbnRpbiBQZXJyZXTCoCDCoCDCoCDCoCDCoCDCoCAyMDE4LTEyLTAzwqAgNjM2McKgIMKgKiBv
bmx5IGluY2x1ZGVzIGFjdGl2ZSBwb3dlciBjb3N0cy4gV2l0aCB0aGlzIG1vZGVsLCBpZiB3ZSBh
c3N1bWUgdGhhdDxicj4NCiZndDsgNzMyY2Q3NWI4YzkyMGQgUXVlbnRpbiBQZXJyZXTCoCDCoCDC
oCDCoCDCoCDCoCAyMDE4LTEyLTAzwqAgNjM2MsKgIMKgKiBmcmVxdWVuY3kgcmVxdWVzdHMgZm9s
bG93IHV0aWxpemF0aW9uIChlLmcuIHVzaW5nIHNjaGVkdXRpbCksIHRoZSBDUFUgd2l0aDxicj4N
CiZndDsgNzMyY2Q3NWI4YzkyMGQgUXVlbnRpbiBQZXJyZXTCoCDCoCDCoCDCoCDCoCDCoCAyMDE4
LTEyLTAzwqAgNjM2M8KgIMKgKiB0aGUgbWF4aW11bSBzcGFyZSBjYXBhY2l0eSBpbiBhIHBlcmZv
cm1hbmNlIGRvbWFpbiBpcyBndWFyYW50ZWVkIHRvIGJlIGFtb25nPGJyPg0KJmd0OyA3MzJjZDc1
YjhjOTIwZCBRdWVudGluIFBlcnJldMKgIMKgIMKgIMKgIMKgIMKgIDIwMTgtMTItMDPCoCA2MzY0
wqAgwqAqIHRoZSBiZXN0IGNhbmRpZGF0ZXMgb2YgdGhlIHBlcmZvcm1hbmNlIGRvbWFpbi48YnI+
DQomZ3Q7IDczMmNkNzViOGM5MjBkIFF1ZW50aW4gUGVycmV0wqAgwqAgwqAgwqAgwqAgwqAgMjAx
OC0xMi0wM8KgIDYzNjXCoCDCoCo8YnI+DQomZ3Q7IDczMmNkNzViOGM5MjBkIFF1ZW50aW4gUGVy
cmV0wqAgwqAgwqAgwqAgwqAgwqAgMjAxOC0xMi0wM8KgIDYzNjbCoCDCoCogSW4gcHJhY3RpY2Us
IGl0IGNvdWxkIGJlIHByZWZlcmFibGUgZnJvbSBhbiBlbmVyZ3kgc3RhbmRwb2ludCB0byBwYWNr
PGJyPg0KJmd0OyA3MzJjZDc1YjhjOTIwZCBRdWVudGluIFBlcnJldMKgIMKgIMKgIMKgIMKgIMKg
IDIwMTgtMTItMDPCoCA2MzY3wqAgwqAqIHNtYWxsIHRhc2tzIG9uIGEgQ1BVIGluIG9yZGVyIHRv
IGxldCBvdGhlciBDUFVzIGdvIGluIGRlZXBlciBpZGxlIHN0YXRlcyw8YnI+DQomZ3Q7IDczMmNk
NzViOGM5MjBkIFF1ZW50aW4gUGVycmV0wqAgwqAgwqAgwqAgwqAgwqAgMjAxOC0xMi0wM8KgIDYz
NjjCoCDCoCogYnV0IHRoYXQgY291bGQgYWxzbyBodXJ0IG91ciBjaGFuY2VzIHRvIGdvIGNsdXN0
ZXIgaWRsZSwgYW5kIHdlIGhhdmUgbm88YnI+DQomZ3Q7IDczMmNkNzViOGM5MjBkIFF1ZW50aW4g
UGVycmV0wqAgwqAgwqAgwqAgwqAgwqAgMjAxOC0xMi0wM8KgIDYzNjnCoCDCoCogd2F5cyB0byB0
ZWxsIHdpdGggdGhlIGN1cnJlbnQgRW5lcmd5IE1vZGVsIGlmIHRoaXMgaXMgYWN0dWFsbHkgYSBn
b29kPGJyPg0KJmd0OyA3MzJjZDc1YjhjOTIwZCBRdWVudGluIFBlcnJldMKgIMKgIMKgIMKgIMKg
IMKgIDIwMTgtMTItMDPCoCA2MzcwwqAgwqAqIGlkZWEgb3Igbm90LiBTbywgZmluZF9lbmVyZ3lf
ZWZmaWNpZW50X2NwdSgpIGJhc2ljYWxseSBmYXZvcnM8YnI+DQomZ3Q7IDczMmNkNzViOGM5MjBk
IFF1ZW50aW4gUGVycmV0wqAgwqAgwqAgwqAgwqAgwqAgMjAxOC0xMi0wM8KgIDYzNzHCoCDCoCog
Y2x1c3Rlci1wYWNraW5nLCBhbmQgc3ByZWFkaW5nIGluc2lkZSBhIGNsdXN0ZXIuIFRoYXQgc2hv
dWxkIGF0IGxlYXN0IGJlPGJyPg0KJmd0OyA3MzJjZDc1YjhjOTIwZCBRdWVudGluIFBlcnJldMKg
IMKgIMKgIMKgIMKgIMKgIDIwMTgtMTItMDPCoCA2MzcywqAgwqAqIGEgZ29vZCB0aGluZyBmb3Ig
bGF0ZW5jeSwgYW5kIHRoaXMgaXMgY29uc2lzdGVudCB3aXRoIHRoZSBpZGVhIHRoYXQgbW9zdDxi
cj4NCiZndDsgNzMyY2Q3NWI4YzkyMGQgUXVlbnRpbiBQZXJyZXTCoCDCoCDCoCDCoCDCoCDCoCAy
MDE4LTEyLTAzwqAgNjM3M8KgIMKgKiBvZiB0aGUgZW5lcmd5IHNhdmluZ3Mgb2YgRUFTIGNvbWUg
ZnJvbSB0aGUgYXN5bW1ldHJ5IG9mIHRoZSBzeXN0ZW0sIGFuZDxicj4NCiZndDsgNzMyY2Q3NWI4
YzkyMGQgUXVlbnRpbiBQZXJyZXTCoCDCoCDCoCDCoCDCoCDCoCAyMDE4LTEyLTAzwqAgNjM3NMKg
IMKgKiBub3Qgc28gbXVjaCBmcm9tIGJyZWFraW5nIHRoZSB0aWUgYmV0d2VlbiBpZGVudGljYWwg
Q1BVcy4gVGhhdCYjMzk7cyBhbHNvIHRoZTxicj4NCiZndDsgNzMyY2Q3NWI4YzkyMGQgUXVlbnRp
biBQZXJyZXTCoCDCoCDCoCDCoCDCoCDCoCAyMDE4LTEyLTAzwqAgNjM3NcKgIMKgKiByZWFzb24g
d2h5IEVBUyBpcyBlbmFibGVkIGluIHRoZSB0b3BvbG9neSBjb2RlIG9ubHkgZm9yIHN5c3RlbXMg
d2hlcmU8YnI+DQomZ3Q7IDczMmNkNzViOGM5MjBkIFF1ZW50aW4gUGVycmV0wqAgwqAgwqAgwqAg
wqAgwqAgMjAxOC0xMi0wM8KgIDYzNzbCoCDCoCogU0RfQVNZTV9DUFVDQVBBQ0lUWSBpcyBzZXQu
PGJyPg0KJmd0OyA3MzJjZDc1YjhjOTIwZCBRdWVudGluIFBlcnJldMKgIMKgIMKgIMKgIMKgIMKg
IDIwMTgtMTItMDPCoCA2Mzc3wqAgwqAqPGJyPg0KJmd0OyA3MzJjZDc1YjhjOTIwZCBRdWVudGlu
IFBlcnJldMKgIMKgIMKgIMKgIMKgIMKgIDIwMTgtMTItMDPCoCA2Mzc4wqAgwqAqIE5PVEU6IEZv
cmtlZXMgYXJlIG5vdCBhY2NlcHRlZCBpbiB0aGUgZW5lcmd5LWF3YXJlIHdha2UtdXAgcGF0aCBi
ZWNhdXNlPGJyPg0KJmd0OyA3MzJjZDc1YjhjOTIwZCBRdWVudGluIFBlcnJldMKgIMKgIMKgIMKg
IMKgIMKgIDIwMTgtMTItMDPCoCA2Mzc5wqAgwqAqIHRoZXkgZG9uJiMzOTt0IGhhdmUgYW55IHVz
ZWZ1bCB1dGlsaXphdGlvbiBkYXRhIHlldCBhbmQgaXQmIzM5O3Mgbm90IHBvc3NpYmxlIHRvPGJy
Pg0KJmd0OyA3MzJjZDc1YjhjOTIwZCBRdWVudGluIFBlcnJldMKgIMKgIMKgIMKgIMKgIMKgIDIw
MTgtMTItMDPCoCA2MzgwwqAgwqAqIGZvcmVjYXN0IHRoZWlyIGltcGFjdCBvbiBlbmVyZ3kgY29u
c3VtcHRpb24uIENvbnNlcXVlbnRseSwgdGhleSB3aWxsIGJlPGJyPg0KJmd0OyA3MzJjZDc1Yjhj
OTIwZCBRdWVudGluIFBlcnJldMKgIMKgIMKgIMKgIMKgIMKgIDIwMTgtMTItMDPCoCA2MzgxwqAg
wqAqIHBsYWNlZCBieSBmaW5kX2lkbGVzdF9jcHUoKSBvbiB0aGUgbGVhc3QgbG9hZGVkIENQVSwg
d2hpY2ggbWlnaHQgdHVybiBvdXQ8YnI+DQomZ3Q7IDczMmNkNzViOGM5MjBkIFF1ZW50aW4gUGVy
cmV0wqAgwqAgwqAgwqAgwqAgwqAgMjAxOC0xMi0wM8KgIDYzODLCoCDCoCogdG8gYmUgZW5lcmd5
LWluZWZmaWNpZW50IGluIHNvbWUgdXNlLWNhc2VzLiBUaGUgYWx0ZXJuYXRpdmUgd291bGQgYmUg
dG88YnI+DQomZ3Q7IDczMmNkNzViOGM5MjBkIFF1ZW50aW4gUGVycmV0wqAgwqAgwqAgwqAgwqAg
wqAgMjAxOC0xMi0wM8KgIDYzODPCoCDCoCogYmlhcyBuZXcgdGFza3MgdG93YXJkcyBzcGVjaWZp
YyB0eXBlcyBvZiBDUFVzIGZpcnN0LCBvciB0byB0cnkgdG8gaW5mZXI8YnI+DQomZ3Q7IDczMmNk
NzViOGM5MjBkIFF1ZW50aW4gUGVycmV0wqAgwqAgwqAgwqAgwqAgwqAgMjAxOC0xMi0wM8KgIDYz
ODTCoCDCoCogdGhlaXIgdXRpbF9hdmcgZnJvbSB0aGUgcGFyZW50IHRhc2ssIGJ1dCB0aG9zZSBo
ZXVyaXN0aWNzIGNvdWxkIGh1cnQ8YnI+DQomZ3Q7IDczMmNkNzViOGM5MjBkIFF1ZW50aW4gUGVy
cmV0wqAgwqAgwqAgwqAgwqAgwqAgMjAxOC0xMi0wM8KgIDYzODXCoCDCoCogb3RoZXIgdXNlLWNh
c2VzIHRvby4gU28sIHVudGlsIHNvbWVvbmUgZmluZHMgYSBiZXR0ZXIgd2F5IHRvIHNvbHZlIHRo
aXMsPGJyPg0KJmd0OyA3MzJjZDc1YjhjOTIwZCBRdWVudGluIFBlcnJldMKgIMKgIMKgIMKgIMKg
IMKgIDIwMTgtMTItMDPCoCA2Mzg2wqAgwqAqIGxldCYjMzk7cyBrZWVwIHRoaW5ncyBzaW1wbGUg
YnkgcmUtdXNpbmcgdGhlIGV4aXN0aW5nIHNsb3cgcGF0aC48YnI+DQomZ3Q7IDczMmNkNzViOGM5
MjBkIFF1ZW50aW4gUGVycmV0wqAgwqAgwqAgwqAgwqAgwqAgMjAxOC0xMi0wM8KgIDYzODfCoCDC
oCovPGJyPg0KJmd0OyAyNTZmZTkzMjA5NDgyNyBDaHJpcyBSZWRwYXRowqAgwqAgwqAgwqAgwqAg
wqAgwqAyMDE5LTAzLTI3wqAgNjM4OMKgIHN0YXRpYyBpbnQgZmluZF9lbmVyZ3lfZWZmaWNpZW50
X2NwdShzdHJ1Y3QgdGFza19zdHJ1Y3QgKnAsIGludCBwcmV2X2NwdSwgaW50IHN5bmMpPGJyPg0K
Jmd0OyA3MzJjZDc1YjhjOTIwZCBRdWVudGluIFBlcnJldMKgIMKgIMKgIMKgIMKgIMKgIDIwMTgt
MTItMDPCoCA2Mzg5wqAgezxicj4NCiZndDsgOGI4MWE0YTUzNjhhNzIgUXVlbnRpbiBQZXJyZXTC
oCDCoCDCoCDCoCDCoCDCoCAyMDE5LTA5LTEywqAgNjM5MMKgIMKgIMKgIMKgdW5zaWduZWQgbG9u
ZyBwcmV2X2RlbHRhID0gVUxPTkdfTUFYLCBiZXN0X2RlbHRhID0gVUxPTkdfTUFYOzxicj4NCiZn
dDsgNzMyY2Q3NWI4YzkyMGQgUXVlbnRpbiBQZXJyZXTCoCDCoCDCoCDCoCDCoCDCoCAyMDE4LTEy
LTAzwqAgNjM5McKgIMKgIMKgIMKgc3RydWN0IHJvb3RfZG9tYWluICpyZCA9IGNwdV9ycShzbXBf
cHJvY2Vzc29yX2lkKCkpLSZndDtyZDs8YnI+DQomZ3Q7IGJhNzAyYzU5NjBjYzg1IFF1ZW50aW4g
UGVycmV0wqAgwqAgwqAgwqAgwqAgwqAgMjAxOS0wMi0yN8KgIDYzOTLCoCDCoCDCoCDCoGludCBt
YXhfc3BhcmVfY2FwX2NwdV9scyA9IHByZXZfY3B1LCBiZXN0X2lkbGVfY3B1ID0gLTE7PGJyPg0K
Jmd0OyBiYTcwMmM1OTYwY2M4NSBRdWVudGluIFBlcnJldMKgIMKgIMKgIMKgIMKgIMKgIDIwMTkt
MDItMjfCoCA2MzkzwqAgwqAgwqAgwqB1bnNpZ25lZCBsb25nIG1heF9zcGFyZV9jYXBfbHMgPSAw
LCB0YXJnZXRfY2FwOzxicj4NCiZndDsgOGI4MWE0YTUzNjhhNzIgUXVlbnRpbiBQZXJyZXTCoCDC
oCDCoCDCoCDCoCDCoCAyMDE5LTA5LTEywqAgNjM5NMKgIMKgIMKgIMKgdW5zaWduZWQgbG9uZyBj
cHVfY2FwLCB1dGlsLCBiYXNlX2VuZXJneSA9IDA7PGJyPg0KJmd0OyBiYTcwMmM1OTYwY2M4NSBR
dWVudGluIFBlcnJldMKgIMKgIMKgIMKgIMKgIMKgIDIwMTktMDItMjfCoCA2Mzk1wqAgwqAgwqAg
wqB1bnNpZ25lZCBpbnQgbWluX2V4aXRfbGF0ID0gVUlOVF9NQVg7PGJyPg0KJmd0OyA3MzJjZDc1
YjhjOTIwZCBRdWVudGluIFBlcnJldMKgIMKgIMKgIMKgIMKgIMKgIDIwMTgtMTItMDPCoCA2Mzk2
wqAgwqAgwqAgwqBpbnQgY3B1LCBiZXN0X2VuZXJneV9jcHUgPSBwcmV2X2NwdTs8YnI+DQomZ3Q7
IGJhNzAyYzU5NjBjYzg1IFF1ZW50aW4gUGVycmV0wqAgwqAgwqAgwqAgwqAgwqAgMjAxOS0wMi0y
N8KgIDYzOTfCoCDCoCDCoCDCoGJvb2wgbGF0ZW5jeV9zZW5zaXRpdmUsIGJvb3N0ZWQ7PGJyPg0K
Jmd0OyBiYTcwMmM1OTYwY2M4NSBRdWVudGluIFBlcnJldMKgIMKgIMKgIMKgIMKgIMKgIDIwMTkt
MDItMjfCoCA2Mzk4wqAgwqAgwqAgwqBzdHJ1Y3QgY3B1aWRsZV9zdGF0ZSAqaWRsZTs8YnI+DQom
Z3Q7IDczMmNkNzViOGM5MjBkIFF1ZW50aW4gUGVycmV0wqAgwqAgwqAgwqAgwqAgwqAgMjAxOC0x
Mi0wM8KgIDYzOTnCoCDCoCDCoCDCoHN0cnVjdCBzY2hlZF9kb21haW4gKnNkOzxicj4NCiZndDsg
OGI4MWE0YTUzNjhhNzIgUXVlbnRpbiBQZXJyZXTCoCDCoCDCoCDCoCDCoCDCoCAyMDE5LTA5LTEy
wqAgNjQwMMKgIMKgIMKgIMKgc3RydWN0IHBlcmZfZG9tYWluICpwZDs8YnI+DQomZ3Q7IDczMmNk
NzViOGM5MjBkIFF1ZW50aW4gUGVycmV0wqAgwqAgwqAgwqAgwqAgwqAgMjAxOC0xMi0wM8KgIDY0
MDE8YnI+DQomZ3Q7IDczMmNkNzViOGM5MjBkIFF1ZW50aW4gUGVycmV0wqAgwqAgwqAgwqAgwqAg
wqAgMjAxOC0xMi0wM8KgIDY0MDLCoCDCoCDCoCDCoHJjdV9yZWFkX2xvY2soKTs8YnI+DQomZ3Q7
IDczMmNkNzViOGM5MjBkIFF1ZW50aW4gUGVycmV0wqAgwqAgwqAgwqAgwqAgwqAgMjAxOC0xMi0w
M8KgIDY0MDPCoCDCoCDCoCDCoHBkID0gcmN1X2RlcmVmZXJlbmNlKHJkLSZndDtwZCk7PGJyPg0K
Jmd0OyA3MzJjZDc1YjhjOTIwZCBRdWVudGluIFBlcnJldMKgIMKgIMKgIMKgIMKgIMKgIDIwMTgt
MTItMDPCoCA2NDA0wqAgwqAgwqAgwqBpZiAoIXBkIHx8IFJFQURfT05DRShyZC0mZ3Q7b3ZlcnV0
aWxpemVkKSk8YnI+DQomZ3Q7IDczMmNkNzViOGM5MjBkIFF1ZW50aW4gUGVycmV0wqAgwqAgwqAg
wqAgwqAgwqAgMjAxOC0xMi0wM8KgIDY0MDXCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoGdvdG8gZmFp
bDs8YnI+DQomZ3Q7IDczMmNkNzViOGM5MjBkIFF1ZW50aW4gUGVycmV0wqAgwqAgwqAgwqAgwqAg
wqAgMjAxOC0xMi0wM8KgIDY0MDY8YnI+DQomZ3Q7IDI1NmZlOTMyMDk0ODI3IENocmlzIFJlZHBh
dGjCoCDCoCDCoCDCoCDCoCDCoCDCoDIwMTktMDMtMjfCoCA2NDA3wqAgwqAgwqAgwqBjcHUgPSBz
bXBfcHJvY2Vzc29yX2lkKCk7PGJyPg0KJmd0OyAyNTZmZTkzMjA5NDgyNyBDaHJpcyBSZWRwYXRo
wqAgwqAgwqAgwqAgwqAgwqAgwqAyMDE5LTAzLTI3wqAgNjQwOMKgIMKgIMKgIMKgaWYgKHN5bmMg
JmFtcDsmYW1wOyBjcHVtYXNrX3Rlc3RfY3B1KGNwdSwgcC0mZ3Q7Y3B1c19wdHIpKSB7PGJyPg0K
Jmd0OyAyNTZmZTkzMjA5NDgyNyBDaHJpcyBSZWRwYXRowqAgwqAgwqAgwqAgwqAgwqAgwqAyMDE5
LTAzLTI3wqAgNjQwOcKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgcmN1X3JlYWRfdW5sb2NrKCk7PGJy
Pg0KJmd0OyAyNTZmZTkzMjA5NDgyNyBDaHJpcyBSZWRwYXRowqAgwqAgwqAgwqAgwqAgwqAgwqAy
MDE5LTAzLTI3wqAgNjQxMMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgcmV0dXJuIGNwdTs8YnI+DQom
Z3Q7IDI1NmZlOTMyMDk0ODI3IENocmlzIFJlZHBhdGjCoCDCoCDCoCDCoCDCoCDCoCDCoDIwMTkt
MDMtMjfCoCA2NDExwqAgwqAgwqAgwqB9PGJyPg0KJmd0OyAyNTZmZTkzMjA5NDgyNyBDaHJpcyBS
ZWRwYXRowqAgwqAgwqAgwqAgwqAgwqAgwqAyMDE5LTAzLTI3wqAgNjQxMjxicj4NCiZndDsgNzMy
Y2Q3NWI4YzkyMGQgUXVlbnRpbiBQZXJyZXTCoCDCoCDCoCDCoCDCoCDCoCAyMDE4LTEyLTAzwqAg
NjQxM8KgIMKgIMKgIMKgLyo8YnI+DQomZ3Q7IDczMmNkNzViOGM5MjBkIFF1ZW50aW4gUGVycmV0
wqAgwqAgwqAgwqAgwqAgwqAgMjAxOC0xMi0wM8KgIDY0MTTCoCDCoCDCoCDCoCAqIEVuZXJneS1h
d2FyZSB3YWtlLXVwIGhhcHBlbnMgb24gdGhlIGxvd2VzdCBzY2hlZF9kb21haW4gc3RhcnRpbmc8
YnI+DQomZ3Q7IDczMmNkNzViOGM5MjBkIFF1ZW50aW4gUGVycmV0wqAgwqAgwqAgwqAgwqAgwqAg
MjAxOC0xMi0wM8KgIDY0MTXCoCDCoCDCoCDCoCAqIGZyb20gc2RfYXN5bV9jcHVjYXBhY2l0eSBz
cGFubmluZyBvdmVyIHRoaXNfY3B1IGFuZCBwcmV2X2NwdS48YnI+DQomZ3Q7IDczMmNkNzViOGM5
MjBkIFF1ZW50aW4gUGVycmV0wqAgwqAgwqAgwqAgwqAgwqAgMjAxOC0xMi0wM8KgIDY0MTbCoCDC
oCDCoCDCoCAqLzxicj4NCiZndDsgNzMyY2Q3NWI4YzkyMGQgUXVlbnRpbiBQZXJyZXTCoCDCoCDC
oCDCoCDCoCDCoCAyMDE4LTEyLTAzwqAgNjQxN8KgIMKgIMKgIMKgc2QgPSByY3VfZGVyZWZlcmVu
Y2UoKnRoaXNfY3B1X3B0cigmYW1wO3NkX2FzeW1fY3B1Y2FwYWNpdHkpKTs8YnI+DQomZ3Q7IDcz
MmNkNzViOGM5MjBkIFF1ZW50aW4gUGVycmV0wqAgwqAgwqAgwqAgwqAgwqAgMjAxOC0xMi0wM8Kg
IDY0MTjCoCDCoCDCoCDCoHdoaWxlIChzZCAmYW1wOyZhbXA7ICFjcHVtYXNrX3Rlc3RfY3B1KHBy
ZXZfY3B1LCBzY2hlZF9kb21haW5fc3BhbihzZCkpKTxicj4NCiZndDsgNzMyY2Q3NWI4YzkyMGQg
UXVlbnRpbiBQZXJyZXTCoCDCoCDCoCDCoCDCoCDCoCAyMDE4LTEyLTAzwqAgNjQxOcKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgc2QgPSBzZC0mZ3Q7cGFyZW50Ozxicj4NCiZndDsgNzMyY2Q3NWI4Yzky
MGQgUXVlbnRpbiBQZXJyZXTCoCDCoCDCoCDCoCDCoCDCoCAyMDE4LTEyLTAzwqAgNjQyMMKgIMKg
IMKgIMKgaWYgKCFzZCk8YnI+DQomZ3Q7IDczMmNkNzViOGM5MjBkIFF1ZW50aW4gUGVycmV0wqAg
wqAgwqAgwqAgwqAgwqAgMjAxOC0xMi0wM8KgIDY0MjHCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoGdv
dG8gZmFpbDs8YnI+DQomZ3Q7IDczMmNkNzViOGM5MjBkIFF1ZW50aW4gUGVycmV0wqAgwqAgwqAg
wqAgwqAgwqAgMjAxOC0xMi0wM8KgIDY0MjI8YnI+DQomZ3Q7IDczMmNkNzViOGM5MjBkIFF1ZW50
aW4gUGVycmV0wqAgwqAgwqAgwqAgwqAgwqAgMjAxOC0xMi0wM8KgIDY0MjPCoCDCoCDCoCDCoHN5
bmNfZW50aXR5X2xvYWRfYXZnKCZhbXA7cC0mZ3Q7c2UpOzxicj4NCiZndDsgNzMyY2Q3NWI4Yzky
MGQgUXVlbnRpbiBQZXJyZXTCoCDCoCDCoCDCoCDCoCDCoCAyMDE4LTEyLTAzIEA2NDI0wqAgwqAg
wqAgwqBpZiAoIXRhc2tfdXRpbF9lc3QocCkpPGJyPg0KJmd0OyA3MzJjZDc1YjhjOTIwZCBRdWVu
dGluIFBlcnJldMKgIMKgIMKgIMKgIMKgIMKgIDIwMTgtMTItMDPCoCA2NDI1wqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqBnb3RvIHVubG9jazs8YnI+DQomZ3Q7IDczMmNkNzViOGM5MjBkIFF1ZW50aW4g
UGVycmV0wqAgwqAgwqAgwqAgwqAgwqAgMjAxOC0xMi0wM8KgIDY0MjY8YnI+DQomZ3Q7IGJhNzAy
YzU5NjBjYzg1IFF1ZW50aW4gUGVycmV0wqAgwqAgwqAgwqAgwqAgwqAgMjAxOS0wMi0yN8KgIDY0
MjfCoCDCoCDCoCDCoGxhdGVuY3lfc2Vuc2l0aXZlID0gdWNsYW1wX2xhdGVuY3lfc2Vuc2l0aXZl
KHApOzxicj4NCiZndDsgYmE3MDJjNTk2MGNjODUgUXVlbnRpbiBQZXJyZXTCoCDCoCDCoCDCoCDC
oCDCoCAyMDE5LTAyLTI3wqAgNjQyOMKgIMKgIMKgIMKgYm9vc3RlZCA9IHVjbGFtcF9ib29zdGVk
KHApOzxicj4NCiZndDsgYmE3MDJjNTk2MGNjODUgUXVlbnRpbiBQZXJyZXTCoCDCoCDCoCDCoCDC
oCDCoCAyMDE5LTAyLTI3wqAgNjQyOcKgIMKgIMKgIMKgdGFyZ2V0X2NhcCA9IGJvb3N0ZWQgPyAw
IDogVUxPTkdfTUFYOzxicj4NCiZndDsgYmE3MDJjNTk2MGNjODUgUXVlbnRpbiBQZXJyZXTCoCDC
oCDCoCDCoCDCoCDCoCAyMDE5LTAyLTI3wqAgNjQzMDxicj4NCiZndDsgNzMyY2Q3NWI4YzkyMGQg
UXVlbnRpbiBQZXJyZXTCoCDCoCDCoCDCoCDCoCDCoCAyMDE4LTEyLTAzwqAgNjQzMcKgIMKgIMKg
IMKgZm9yICg7IHBkOyBwZCA9IHBkLSZndDtuZXh0KSB7PGJyPg0KJmd0OyA4YjgxYTRhNTM2OGE3
MiBRdWVudGluIFBlcnJldMKgIMKgIMKgIMKgIMKgIMKgIDIwMTktMDktMTLCoCA2NDMywqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqB1bnNpZ25lZCBsb25nIGN1cl9kZWx0YSwgc3BhcmVfY2FwLCBtYXhf
c3BhcmVfY2FwID0gMDs8YnI+DQomZ3Q7IDhiODFhNGE1MzY4YTcyIFF1ZW50aW4gUGVycmV0wqAg
wqAgwqAgwqAgwqAgwqAgMjAxOS0wOS0xMsKgIDY0MzPCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHVu
c2lnbmVkIGxvbmcgYmFzZV9lbmVyZ3lfcGQ7PGJyPg0KJmd0OyA3MzJjZDc1YjhjOTIwZCBRdWVu
dGluIFBlcnJldMKgIMKgIMKgIMKgIMKgIMKgIDIwMTgtMTItMDPCoCA2NDM0wqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqBpbnQgbWF4X3NwYXJlX2NhcF9jcHUgPSAtMTs8YnI+DQomZ3Q7IDczMmNkNzVi
OGM5MjBkIFF1ZW50aW4gUGVycmV0wqAgwqAgwqAgwqAgwqAgwqAgMjAxOC0xMi0wM8KgIDY0MzU8
YnI+DQomZ3Q7IDhiODFhNGE1MzY4YTcyIFF1ZW50aW4gUGVycmV0wqAgwqAgwqAgwqAgwqAgwqAg
MjAxOS0wOS0xMsKgIDY0MzbCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoC8qIENvbXB1dGUgdGhlICYj
Mzk7YmFzZSYjMzk7IGVuZXJneSBvZiB0aGUgcGQsIHdpdGhvdXQgQHAgKi88YnI+DQomZ3Q7IDhi
ODFhNGE1MzY4YTcyIFF1ZW50aW4gUGVycmV0wqAgwqAgwqAgwqAgwqAgwqAgMjAxOS0wOS0xMsKg
IDY0MzfCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoGJhc2VfZW5lcmd5X3BkID0gY29tcHV0ZV9lbmVy
Z3kocCwgLTEsIHBkKTs8YnI+DQomZ3Q7IDhiODFhNGE1MzY4YTcyIFF1ZW50aW4gUGVycmV0wqAg
wqAgwqAgwqAgwqAgwqAgMjAxOS0wOS0xMsKgIDY0MzjCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoGJh
c2VfZW5lcmd5ICs9IGJhc2VfZW5lcmd5X3BkOzxicj4NCiZndDsgOGI4MWE0YTUzNjhhNzIgUXVl
bnRpbiBQZXJyZXTCoCDCoCDCoCDCoCDCoCDCoCAyMDE5LTA5LTEywqAgNjQzOTxicj4NCiZndDsg
NzMyY2Q3NWI4YzkyMGQgUXVlbnRpbiBQZXJyZXTCoCDCoCDCoCDCoCDCoCDCoCAyMDE4LTEyLTAz
wqAgNjQ0MMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgZm9yX2VhY2hfY3B1X2FuZChjcHUsIHBlcmZf
ZG9tYWluX3NwYW4ocGQpLCBzY2hlZF9kb21haW5fc3BhbihzZCkpIHs8YnI+DQomZ3Q7IDNiZDM3
MDYyNTFlZThhIFNlYmFzdGlhbiBBbmRyemVqIFNpZXdpb3IgMjAxOS0wNC0yM8KgIDY0NDHCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoGlmICghY3B1bWFza190ZXN0X2NwdShjcHUs
IHAtJmd0O2NwdXNfcHRyKSk8YnI+DQomZ3Q7IDczMmNkNzViOGM5MjBkIFF1ZW50aW4gUGVycmV0
wqAgwqAgwqAgwqAgwqAgwqAgMjAxOC0xMi0wM8KgIDY0NDLCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoGNvbnRpbnVlOzxicj4NCiZndDsgNzMyY2Q3NWI4Yzky
MGQgUXVlbnRpbiBQZXJyZXTCoCDCoCDCoCDCoCDCoCDCoCAyMDE4LTEyLTAzwqAgNjQ0Mzxicj4N
CiZndDsgNzMyY2Q3NWI4YzkyMGQgUXVlbnRpbiBQZXJyZXTCoCDCoCDCoCDCoCDCoCDCoCAyMDE4
LTEyLTAzwqAgNjQ0NMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgLyogU2tpcCBD
UFVzIHRoYXQgd2lsbCBiZSBvdmVydXRpbGl6ZWQuICovPGJyPg0KJmd0OyA3MzJjZDc1YjhjOTIw
ZCBRdWVudGluIFBlcnJldMKgIMKgIMKgIMKgIMKgIMKgIDIwMTgtMTItMDPCoCA2NDQ1wqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqB1dGlsID0gY3B1X3V0aWxfbmV4dChjcHUsIHAs
IGNwdSk7PGJyPg0KJmd0OyA3MzJjZDc1YjhjOTIwZCBRdWVudGluIFBlcnJldMKgIMKgIMKgIMKg
IMKgIMKgIDIwMTgtMTItMDPCoCA2NDQ2wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqBjcHVfY2FwID0gY2FwYWNpdHlfb2YoY3B1KTs8YnI+DQomZ3Q7IDczMmNkNzViOGM5MjBkIFF1
ZW50aW4gUGVycmV0wqAgwqAgwqAgwqAgwqAgwqAgMjAxOC0xMi0wM8KgIDY0NDfCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoGlmIChjcHVfY2FwICogMTAyNCAmbHQ7IHV0aWwgKiBj
YXBhY2l0eV9tYXJnaW4pPGJyPg0KJmd0OyA3MzJjZDc1YjhjOTIwZCBRdWVudGluIFBlcnJldMKg
IMKgIMKgIMKgIMKgIMKgIDIwMTgtMTItMDPCoCA2NDQ4wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBjb250aW51ZTs8YnI+DQomZ3Q7IDczMmNkNzViOGM5MjBk
IFF1ZW50aW4gUGVycmV0wqAgwqAgwqAgwqAgwqAgwqAgMjAxOC0xMi0wM8KgIDY0NDk8YnI+DQom
Z3Q7IGZmZWFlYzc2MWQ3NmQ1IFBhdHJpY2sgQmVsbGFzacKgIMKgIMKgIMKgIMKgIMKgMjAxOC0x
Mi0xOMKgIDY0NTDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoC8qIFNraXAgQ1BV
cyB3aGljaCBkbyBub3QgZml0IHRhc2sgcmVxdWlyZW1lbnRzICovPGJyPg0KJmd0OyBmZmVhZWM3
NjFkNzZkNSBQYXRyaWNrIEJlbGxhc2nCoCDCoCDCoCDCoCDCoCDCoDIwMTgtMTItMTjCoCA2NDUx
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBpZiAoY3B1X2NhcCAmbHQ7IHVjbGFt
cF90YXNrX3V0aWwocCkpPGJyPg0KJmd0OyBmZmVhZWM3NjFkNzZkNSBQYXRyaWNrIEJlbGxhc2nC
oCDCoCDCoCDCoCDCoCDCoDIwMTgtMTItMTjCoCA2NDUywqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBjb250aW51ZTs8YnI+DQomZ3Q7IGZmZWFlYzc2MWQ3NmQ1
IFBhdHJpY2sgQmVsbGFzacKgIMKgIMKgIMKgIMKgIMKgMjAxOC0xMi0xOMKgIDY0NTM8YnI+DQom
Z3Q7IDczMmNkNzViOGM5MjBkIFF1ZW50aW4gUGVycmV0wqAgwqAgwqAgwqAgwqAgwqAgMjAxOC0x
Mi0wM8KgIDY0NTTCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoC8qIEFsd2F5cyB1
c2UgcHJldl9jcHUgYXMgYSBjYW5kaWRhdGUuICovPGJyPg0KJmd0OyBiYTcwMmM1OTYwY2M4NSBR
dWVudGluIFBlcnJldMKgIMKgIMKgIMKgIMKgIMKgIDIwMTktMDItMjfCoCA2NDU1wqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBpZiAoIWxhdGVuY3lfc2Vuc2l0aXZlICZhbXA7JmFt
cDsgY3B1ID09IHByZXZfY3B1KSB7PGJyPg0KJmd0OyA4YjgxYTRhNTM2OGE3MiBRdWVudGluIFBl
cnJldMKgIMKgIMKgIMKgIMKgIMKgIDIwMTktMDktMTLCoCA2NDU2wqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBwcmV2X2RlbHRhID0gY29tcHV0ZV9lbmVyZ3ko
cCwgcHJldl9jcHUsIHBkKTs8YnI+DQomZ3Q7IDhiODFhNGE1MzY4YTcyIFF1ZW50aW4gUGVycmV0
wqAgwqAgwqAgwqAgwqAgwqAgMjAxOS0wOS0xMsKgIDY0NTfCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHByZXZfZGVsdGEgLT0gYmFzZV9lbmVyZ3lfcGQ7PGJy
Pg0KJmd0OyA4YjgxYTRhNTM2OGE3MiBRdWVudGluIFBlcnJldMKgIMKgIMKgIMKgIMKgIMKgIDIw
MTktMDktMTLCoCA2NDU4wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqBiZXN0X2RlbHRhID0gbWluKGJlc3RfZGVsdGEsIHByZXZfZGVsdGEpOzxicj4NCiZndDsg
NzMyY2Q3NWI4YzkyMGQgUXVlbnRpbiBQZXJyZXTCoCDCoCDCoCDCoCDCoCDCoCAyMDE4LTEyLTAz
wqAgNjQ1OcKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgfTxicj4NCiZndDsgNzMy
Y2Q3NWI4YzkyMGQgUXVlbnRpbiBQZXJyZXTCoCDCoCDCoCDCoCDCoCDCoCAyMDE4LTEyLTAzwqAg
NjQ2MDxicj4NCiZndDsgNzMyY2Q3NWI4YzkyMGQgUXVlbnRpbiBQZXJyZXTCoCDCoCDCoCDCoCDC
oCDCoCAyMDE4LTEyLTAzwqAgNjQ2McKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
Lyo8YnI+DQomZ3Q7IDczMmNkNzViOGM5MjBkIFF1ZW50aW4gUGVycmV0wqAgwqAgwqAgwqAgwqAg
wqAgMjAxOC0xMi0wM8KgIDY0NjLCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCAq
IEZpbmQgdGhlIENQVSB3aXRoIHRoZSBtYXhpbXVtIHNwYXJlIGNhcGFjaXR5IGluPGJyPg0KJmd0
OyA3MzJjZDc1YjhjOTIwZCBRdWVudGluIFBlcnJldMKgIMKgIMKgIMKgIMKgIMKgIDIwMTgtMTIt
MDPCoCA2NDYzwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgKiB0aGUgcGVyZm9y
bWFuY2UgZG9tYWluPGJyPg0KJmd0OyA3MzJjZDc1YjhjOTIwZCBRdWVudGluIFBlcnJldMKgIMKg
IMKgIMKgIMKgIMKgIDIwMTgtMTItMDPCoCA2NDY0wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgKi88YnI+DQomZ3Q7IDczMmNkNzViOGM5MjBkIFF1ZW50aW4gUGVycmV0wqAgwqAg
wqAgwqAgwqAgwqAgMjAxOC0xMi0wM8KgIDY0NjXCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoHNwYXJlX2NhcCA9IGNwdV9jYXAgLSB1dGlsOzxicj4NCiZndDsgNzMyY2Q3NWI4Yzky
MGQgUXVlbnRpbiBQZXJyZXTCoCDCoCDCoCDCoCDCoCDCoCAyMDE4LTEyLTAzwqAgNjQ2NsKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgaWYgKHNwYXJlX2NhcCAmZ3Q7IG1heF9zcGFy
ZV9jYXApIHs8YnI+DQomZ3Q7IDczMmNkNzViOGM5MjBkIFF1ZW50aW4gUGVycmV0wqAgwqAgwqAg
wqAgwqAgwqAgMjAxOC0xMi0wM8KgIDY0NjfCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoG1heF9zcGFyZV9jYXAgPSBzcGFyZV9jYXA7PGJyPg0KJmd0OyA3MzJj
ZDc1YjhjOTIwZCBRdWVudGluIFBlcnJldMKgIMKgIMKgIMKgIMKgIMKgIDIwMTgtMTItMDPCoCA2
NDY4wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBtYXhfc3Bh
cmVfY2FwX2NwdSA9IGNwdTs8YnI+DQomZ3Q7IDczMmNkNzViOGM5MjBkIFF1ZW50aW4gUGVycmV0
wqAgwqAgwqAgwqAgwqAgwqAgMjAxOC0xMi0wM8KgIDY0NjnCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoH08YnI+DQomZ3Q7IGJhNzAyYzU5NjBjYzg1IFF1ZW50aW4gUGVycmV0wqAg
wqAgwqAgwqAgwqAgwqAgMjAxOS0wMi0yN8KgIDY0NzA8YnI+DQomZ3Q7IGJhNzAyYzU5NjBjYzg1
IFF1ZW50aW4gUGVycmV0wqAgwqAgwqAgwqAgwqAgwqAgMjAxOS0wMi0yN8KgIDY0NzHCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoGlmICghbGF0ZW5jeV9zZW5zaXRpdmUpPGJyPg0K
Jmd0OyBiYTcwMmM1OTYwY2M4NSBRdWVudGluIFBlcnJldMKgIMKgIMKgIMKgIMKgIMKgIDIwMTkt
MDItMjfCoCA2NDcywqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqBjb250aW51ZTs8YnI+DQomZ3Q7IGJhNzAyYzU5NjBjYzg1IFF1ZW50aW4gUGVycmV0wqAgwqAg
wqAgwqAgwqAgwqAgMjAxOS0wMi0yN8KgIDY0NzM8YnI+DQomZ3Q7IGJhNzAyYzU5NjBjYzg1IFF1
ZW50aW4gUGVycmV0wqAgwqAgwqAgwqAgwqAgwqAgMjAxOS0wMi0yN8KgIDY0NzTCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoGlmIChpZGxlX2NwdShjcHUpKSB7PGJyPg0KJmd0OyBi
YTcwMmM1OTYwY2M4NSBRdWVudGluIFBlcnJldMKgIMKgIMKgIMKgIMKgIMKgIDIwMTktMDItMjfC
oCA2NDc1wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBjcHVf
Y2FwID0gY2FwYWNpdHlfb3JpZ19vZihjcHUpOzxicj4NCiZndDsgYmE3MDJjNTk2MGNjODUgUXVl
bnRpbiBQZXJyZXTCoCDCoCDCoCDCoCDCoCDCoCAyMDE5LTAyLTI3wqAgNjQ3NsKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgaWYgKGJvb3N0ZWQgJmFtcDsmYW1w
OyBjcHVfY2FwICZsdDsgdGFyZ2V0X2NhcCk8YnI+DQomZ3Q7IGJhNzAyYzU5NjBjYzg1IFF1ZW50
aW4gUGVycmV0wqAgwqAgwqAgwqAgwqAgwqAgMjAxOS0wMi0yN8KgIDY0NzfCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoGNvbnRpbnVlOzxi
cj4NCiZndDsgYmE3MDJjNTk2MGNjODUgUXVlbnRpbiBQZXJyZXTCoCDCoCDCoCDCoCDCoCDCoCAy
MDE5LTAyLTI3wqAgNjQ3OMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgaWYgKCFib29zdGVkICZhbXA7JmFtcDsgY3B1X2NhcCAmZ3Q7IHRhcmdldF9jYXApPGJy
Pg0KJmd0OyBiYTcwMmM1OTYwY2M4NSBRdWVudGluIFBlcnJldMKgIMKgIMKgIMKgIMKgIMKgIDIw
MTktMDItMjfCoCA2NDc5wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqBjb250aW51ZTs8YnI+DQomZ3Q7IGJhNzAyYzU5NjBjYzg1IFF1ZW50
aW4gUGVycmV0wqAgwqAgwqAgwqAgwqAgwqAgMjAxOS0wMi0yN8KgIDY0ODDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoGlkbGUgPSBpZGxlX2dldF9zdGF0ZShj
cHVfcnEoY3B1KSk7PGJyPg0KJmd0OyBiYTcwMmM1OTYwY2M4NSBRdWVudGluIFBlcnJldMKgIMKg
IMKgIMKgIMKgIMKgIDIwMTktMDItMjfCoCA2NDgxwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqBpZiAoaWRsZSAmYW1wOyZhbXA7IGlkbGUtJmd0O2V4aXRfbGF0
ZW5jeSAmZ3Q7IG1pbl9leGl0X2xhdCAmYW1wOyZhbXA7PGJyPg0KJmd0OyBiYTcwMmM1OTYwY2M4
NSBRdWVudGluIFBlcnJldMKgIMKgIMKgIMKgIMKgIMKgIDIwMTktMDItMjfCoCA2NDgywqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqBjcHVfY2FwID09IHRhcmdldF9jYXApPGJyPg0KJmd0OyBiYTcwMmM1OTYwY2M4NSBR
dWVudGluIFBlcnJldMKgIMKgIMKgIMKgIMKgIMKgIDIwMTktMDItMjfCoCA2NDgzwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBjb250aW51
ZTs8YnI+DQomZ3Q7IGJhNzAyYzU5NjBjYzg1IFF1ZW50aW4gUGVycmV0wqAgwqAgwqAgwqAgwqAg
wqAgMjAxOS0wMi0yN8KgIDY0ODQ8YnI+DQomZ3Q7IGJhNzAyYzU5NjBjYzg1IFF1ZW50aW4gUGVy
cmV0wqAgwqAgwqAgwqAgwqAgwqAgMjAxOS0wMi0yN8KgIDY0ODXCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoGlmIChpZGxlKTxicj4NCiZndDsgYmE3MDJjNTk2
MGNjODUgUXVlbnRpbiBQZXJyZXTCoCDCoCDCoCDCoCDCoCDCoCAyMDE5LTAyLTI3wqAgNjQ4NsKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
bWluX2V4aXRfbGF0ID0gaWRsZS0mZ3Q7ZXhpdF9sYXRlbmN5Ozxicj4NCiZndDsgYmE3MDJjNTk2
MGNjODUgUXVlbnRpbiBQZXJyZXTCoCDCoCDCoCDCoCDCoCDCoCAyMDE5LTAyLTI3wqAgNjQ4N8Kg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgdGFyZ2V0X2NhcCA9
IGNwdV9jYXA7PGJyPg0KJmd0OyBiYTcwMmM1OTYwY2M4NSBRdWVudGluIFBlcnJldMKgIMKgIMKg
IMKgIMKgIMKgIDIwMTktMDItMjfCoCA2NDg4wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqBiZXN0X2lkbGVfY3B1ID0gY3B1Ozxicj4NCiZndDsgYmE3MDJjNTk2
MGNjODUgUXVlbnRpbiBQZXJyZXTCoCDCoCDCoCDCoCDCoCDCoCAyMDE5LTAyLTI3wqAgNjQ4OcKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgfSBlbHNlIGlmIChzcGFyZV9jYXAgJmd0
OyBtYXhfc3BhcmVfY2FwX2xzKSB7PGJyPg0KJmd0OyBiYTcwMmM1OTYwY2M4NSBRdWVudGluIFBl
cnJldMKgIMKgIMKgIMKgIMKgIMKgIDIwMTktMDItMjfCoCA2NDkwwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBtYXhfc3BhcmVfY2FwX2xzID0gc3BhcmVfY2Fw
Ozxicj4NCiZndDsgYmE3MDJjNTk2MGNjODUgUXVlbnRpbiBQZXJyZXTCoCDCoCDCoCDCoCDCoCDC
oCAyMDE5LTAyLTI3wqAgNjQ5McKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgbWF4X3NwYXJlX2NhcF9jcHVfbHMgPSBjcHU7PGJyPg0KJmd0OyBiYTcwMmM1OTYw
Y2M4NSBRdWVudGluIFBlcnJldMKgIMKgIMKgIMKgIMKgIMKgIDIwMTktMDItMjfCoCA2NDkywqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqB9PGJyPg0KJmd0OyA3MzJjZDc1YjhjOTIw
ZCBRdWVudGluIFBlcnJldMKgIMKgIMKgIMKgIMKgIMKgIDIwMTgtMTItMDPCoCA2NDkzwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqB9PGJyPg0KJmd0OyA3MzJjZDc1YjhjOTIwZCBRdWVudGluIFBlcnJl
dMKgIMKgIMKgIMKgIMKgIMKgIDIwMTgtMTItMDPCoCA2NDk0PGJyPg0KJmd0OyA3MzJjZDc1Yjhj
OTIwZCBRdWVudGluIFBlcnJldMKgIMKgIMKgIMKgIMKgIMKgIDIwMTgtMTItMDPCoCA2NDk1wqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAvKiBFdmFsdWF0ZSB0aGUgZW5lcmd5IGltcGFjdCBvZiB1c2lu
ZyB0aGlzIENQVS4gKi88YnI+DQomZ3Q7IGJhNzAyYzU5NjBjYzg1IFF1ZW50aW4gUGVycmV0wqAg
wqAgwqAgwqAgwqAgwqAgMjAxOS0wMi0yN8KgIDY0OTbCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoGlm
ICghbGF0ZW5jeV9zZW5zaXRpdmUgJmFtcDsmYW1wOyBtYXhfc3BhcmVfY2FwX2NwdSAmZ3Q7PSAw
KSB7PGJyPg0KJmd0OyA4YjgxYTRhNTM2OGE3MiBRdWVudGluIFBlcnJldMKgIMKgIMKgIMKgIMKg
IMKgIDIwMTktMDktMTLCoCA2NDk3wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBj
dXJfZGVsdGEgPSBjb21wdXRlX2VuZXJneShwLCBtYXhfc3BhcmVfY2FwX2NwdSwgcGQpOzxicj4N
CiZndDsgOGI4MWE0YTUzNjhhNzIgUXVlbnRpbiBQZXJyZXTCoCDCoCDCoCDCoCDCoCDCoCAyMDE5
LTA5LTEywqAgNjQ5OMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgY3VyX2RlbHRh
IC09IGJhc2VfZW5lcmd5X3BkOzxicj4NCiZndDsgOGI4MWE0YTUzNjhhNzIgUXVlbnRpbiBQZXJy
ZXTCoCDCoCDCoCDCoCDCoCDCoCAyMDE5LTA5LTEywqAgNjQ5OcKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgaWYgKGN1cl9kZWx0YSAmbHQ7IGJlc3RfZGVsdGEpIHs8YnI+DQomZ3Q7
IDhiODFhNGE1MzY4YTcyIFF1ZW50aW4gUGVycmV0wqAgwqAgwqAgwqAgwqAgwqAgMjAxOS0wOS0x
MsKgIDY1MDDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoGJl
c3RfZGVsdGEgPSBjdXJfZGVsdGE7PGJyPg0KJmd0OyA3MzJjZDc1YjhjOTIwZCBRdWVudGluIFBl
cnJldMKgIMKgIMKgIMKgIMKgIMKgIDIwMTgtMTItMDPCoCA2NTAxwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBiZXN0X2VuZXJneV9jcHUgPSBtYXhfc3BhcmVf
Y2FwX2NwdTs8YnI+DQomZ3Q7IDczMmNkNzViOGM5MjBkIFF1ZW50aW4gUGVycmV0wqAgwqAgwqAg
wqAgwqAgwqAgMjAxOC0xMi0wM8KgIDY1MDLCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoH08YnI+DQomZ3Q7IDczMmNkNzViOGM5MjBkIFF1ZW50aW4gUGVycmV0wqAgwqAgwqAgwqAg
wqAgwqAgMjAxOC0xMi0wM8KgIDY1MDPCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoH08YnI+DQomZ3Q7
IDczMmNkNzViOGM5MjBkIFF1ZW50aW4gUGVycmV0wqAgwqAgwqAgwqAgwqAgwqAgMjAxOC0xMi0w
M8KgIDY1MDTCoCDCoCDCoCDCoH08YnI+DQomZ3Q7IDczMmNkNzViOGM5MjBkIFF1ZW50aW4gUGVy
cmV0wqAgwqAgwqAgwqAgwqAgwqAgMjAxOC0xMi0wM8KgIDY1MDXCoCB1bmxvY2s6PGJyPg0KJmd0
OyA3MzJjZDc1YjhjOTIwZCBRdWVudGluIFBlcnJldMKgIMKgIMKgIMKgIMKgIMKgIDIwMTgtMTIt
MDPCoCA2NTA2wqAgwqAgwqAgwqByY3VfcmVhZF91bmxvY2soKTs8YnI+DQomZ3Q7IDczMmNkNzVi
OGM5MjBkIFF1ZW50aW4gUGVycmV0wqAgwqAgwqAgwqAgwqAgwqAgMjAxOC0xMi0wM8KgIDY1MDc8
YnI+DQomZ3Q7IGJhNzAyYzU5NjBjYzg1IFF1ZW50aW4gUGVycmV0wqAgwqAgwqAgwqAgwqAgwqAg
MjAxOS0wMi0yN8KgIDY1MDjCoCDCoCDCoCDCoGlmIChsYXRlbmN5X3NlbnNpdGl2ZSk8YnI+DQom
Z3Q7IGJhNzAyYzU5NjBjYzg1IFF1ZW50aW4gUGVycmV0wqAgwqAgwqAgwqAgwqAgwqAgMjAxOS0w
Mi0yN8KgIDY1MDnCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHJldHVybiBiZXN0X2lkbGVfY3B1ICZn
dDs9IDAgPyBiZXN0X2lkbGVfY3B1IDogbWF4X3NwYXJlX2NhcF9jcHVfbHM7PGJyPg0KJmd0OyBi
YTcwMmM1OTYwY2M4NSBRdWVudGluIFBlcnJldMKgIMKgIMKgIMKgIMKgIMKgIDIwMTktMDItMjfC
oCA2NTEwPGJyPg0KJmd0OyA3MzJjZDc1YjhjOTIwZCBRdWVudGluIFBlcnJldMKgIMKgIMKgIMKg
IMKgIMKgIDIwMTgtMTItMDPCoCA2NTExwqAgwqAgwqAgwqAvKjxicj4NCiZndDsgNzMyY2Q3NWI4
YzkyMGQgUXVlbnRpbiBQZXJyZXTCoCDCoCDCoCDCoCDCoCDCoCAyMDE4LTEyLTAzwqAgNjUxMsKg
IMKgIMKgIMKgICogUGljayB0aGUgYmVzdCBDUFUgaWYgcHJldl9jcHUgY2Fubm90IGJlIHVzZWQs
IG9yIGlmIGl0IHNhdmVzIGF0PGJyPg0KJmd0OyA3MzJjZDc1YjhjOTIwZCBRdWVudGluIFBlcnJl
dMKgIMKgIMKgIMKgIMKgIMKgIDIwMTgtMTItMDPCoCA2NTEzwqAgwqAgwqAgwqAgKiBsZWFzdCA2
JSBvZiB0aGUgZW5lcmd5IHVzZWQgYnkgcHJldl9jcHUuPGJyPg0KJmd0OyA3MzJjZDc1YjhjOTIw
ZCBRdWVudGluIFBlcnJldMKgIMKgIMKgIMKgIMKgIMKgIDIwMTgtMTItMDPCoCA2NTE0wqAgwqAg
wqAgwqAgKi88YnI+DQomZ3Q7IDhiODFhNGE1MzY4YTcyIFF1ZW50aW4gUGVycmV0wqAgwqAgwqAg
wqAgwqAgwqAgMjAxOS0wOS0xMsKgIDY1MTXCoCDCoCDCoCDCoGlmIChwcmV2X2RlbHRhID09IFVM
T05HX01BWCk8YnI+DQomZ3Q7IDczMmNkNzViOGM5MjBkIFF1ZW50aW4gUGVycmV0wqAgwqAgwqAg
wqAgwqAgwqAgMjAxOC0xMi0wM8KgIDY1MTbCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHJldHVybiBi
ZXN0X2VuZXJneV9jcHU7PGJyPg0KJmd0OyA3MzJjZDc1YjhjOTIwZCBRdWVudGluIFBlcnJldMKg
IMKgIMKgIMKgIMKgIMKgIDIwMTgtMTItMDPCoCA2NTE3PGJyPg0KJmd0OyA4YjgxYTRhNTM2OGE3
MiBRdWVudGluIFBlcnJldMKgIMKgIMKgIMKgIMKgIMKgIDIwMTktMDktMTLCoCA2NTE4wqAgwqAg
wqAgwqBpZiAoKHByZXZfZGVsdGEgLSBiZXN0X2RlbHRhKSAmZ3Q7ICgocHJldl9kZWx0YSArIGJh
c2VfZW5lcmd5KSAmZ3Q7Jmd0OyA0KSk8YnI+DQomZ3Q7IDczMmNkNzViOGM5MjBkIFF1ZW50aW4g
UGVycmV0wqAgwqAgwqAgwqAgwqAgwqAgMjAxOC0xMi0wM8KgIDY1MTnCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoHJldHVybiBiZXN0X2VuZXJneV9jcHU7PGJyPg0KJmd0OyA3MzJjZDc1YjhjOTIwZCBR
dWVudGluIFBlcnJldMKgIMKgIMKgIMKgIMKgIMKgIDIwMTgtMTItMDPCoCA2NTIwPGJyPg0KJmd0
OyA3MzJjZDc1YjhjOTIwZCBRdWVudGluIFBlcnJldMKgIMKgIMKgIMKgIMKgIMKgIDIwMTgtMTIt
MDPCoCA2NTIxwqAgwqAgwqAgwqByZXR1cm4gcHJldl9jcHU7PGJyPg0KJmd0OyA3MzJjZDc1Yjhj
OTIwZCBRdWVudGluIFBlcnJldMKgIMKgIMKgIMKgIMKgIMKgIDIwMTgtMTItMDPCoCA2NTIyPGJy
Pg0KJmd0OyA3MzJjZDc1YjhjOTIwZCBRdWVudGluIFBlcnJldMKgIMKgIMKgIMKgIMKgIMKgIDIw
MTgtMTItMDPCoCA2NTIzwqAgZmFpbDo8YnI+DQomZ3Q7IDczMmNkNzViOGM5MjBkIFF1ZW50aW4g
UGVycmV0wqAgwqAgwqAgwqAgwqAgwqAgMjAxOC0xMi0wM8KgIDY1MjTCoCDCoCDCoCDCoHJjdV9y
ZWFkX3VubG9jaygpOzxicj4NCiZndDsgNzMyY2Q3NWI4YzkyMGQgUXVlbnRpbiBQZXJyZXTCoCDC
oCDCoCDCoCDCoCDCoCAyMDE4LTEyLTAzwqAgNjUyNTxicj4NCiZndDsgNzMyY2Q3NWI4YzkyMGQg
UXVlbnRpbiBQZXJyZXTCoCDCoCDCoCDCoCDCoCDCoCAyMDE4LTEyLTAzwqAgNjUyNsKgIMKgIMKg
IMKgcmV0dXJuIC0xOzxicj4NCiZndDsgNzMyY2Q3NWI4YzkyMGQgUXVlbnRpbiBQZXJyZXTCoCDC
oCDCoCDCoCDCoCDCoCAyMDE4LTEyLTAzwqAgNjUyN8KgIH08YnI+DQomZ3Q7IDczMmNkNzViOGM5
MjBkIFF1ZW50aW4gUGVycmV0wqAgwqAgwqAgwqAgwqAgwqAgMjAxOC0xMi0wM8KgIDY1Mjg8YnI+
DQomZ3Q7PGJyPg0KJmd0OyA6Ojo6OjogVGhlIGNvZGUgYXQgbGluZSA2NDI0IHdhcyBmaXJzdCBp
bnRyb2R1Y2VkIGJ5IGNvbW1pdDxicj4NCiZndDsgOjo6Ojo6IDczMmNkNzViOGM5MjBkMzcyN2U2
OTk1N2IxNGZhYTdjMmQ3YzNiNzUgc2NoZWQvZmFpcjogU2VsZWN0IGFuIGVuZXJneS1lZmZpY2ll
bnQgQ1BVIG9uIHRhc2sgd2FrZS11cDxicj4NCiZndDs8YnI+DQomZ3Q7IDo6Ojo6OiBUTzogUXVl
bnRpbiBQZXJyZXQgJmx0OzxhIGhyZWY9Im1haWx0bzpxdWVudGluLnBlcnJldEBhcm0uY29tIiB0
YXJnZXQ9Il9ibGFuayI+cXVlbnRpbi5wZXJyZXRAYXJtLmNvbTwvYT4mZ3Q7PGJyPg0KJmd0OyA6
Ojo6OjogQ0M6IEluZ28gTW9sbmFyICZsdDs8YSBocmVmPSJtYWlsdG86bWluZ29Aa2VybmVsLm9y
ZyIgdGFyZ2V0PSJfYmxhbmsiPm1pbmdvQGtlcm5lbC5vcmc8L2E+Jmd0Ozxicj4NCiZndDs8YnI+
DQomZ3Q7IC0tLTxicj4NCiZndDsgMC1EQVkga2VybmVsIHRlc3QgaW5mcmFzdHJ1Y3R1cmXCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCBPcGVuIFNvdXJjZSBUZWNobm9sb2d5IENlbnRlcjxicj4NCiZn
dDsgPGEgaHJlZj0iaHR0cHM6Ly9saXN0cy4wMS5vcmcvcGlwZXJtYWlsL2tidWlsZC1hbGwiIHJl
bD0ibm9yZWZlcnJlciIgdGFyZ2V0PSJfYmxhbmsiPmh0dHBzOi8vbGlzdHMuMDEub3JnL3BpcGVy
bWFpbC9rYnVpbGQtYWxsPC9hPsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgSW50ZWwgQ29y
cG9yYXRpb248YnI+DQo8YnI+DQo8YnI+DQo8YnI+DQotLSA8YnI+DQpUaGFua3MsPGJyPg0Kfk5p
Y2sgRGVzYXVsbmllcnM8YnI+DQo8L2Jsb2NrcXVvdGU+PC9kaXY+DQoNCjxwPjwvcD4KCi0tIDxi
ciAvPgpZb3UgcmVjZWl2ZWQgdGhpcyBtZXNzYWdlIGJlY2F1c2UgeW91IGFyZSBzdWJzY3JpYmVk
IHRvIHRoZSBHb29nbGUgR3JvdXBzICZxdW90O0NsYW5nIEJ1aWx0IExpbnV4JnF1b3Q7IGdyb3Vw
LjxiciAvPgpUbyB1bnN1YnNjcmliZSBmcm9tIHRoaXMgZ3JvdXAgYW5kIHN0b3AgcmVjZWl2aW5n
IGVtYWlscyBmcm9tIGl0LCBzZW5kIGFuIGVtYWlsIHRvIDxhIGhyZWY9Im1haWx0bzpjbGFuZy1i
dWlsdC1saW51eCt1bnN1YnNjcmliZUBnb29nbGVncm91cHMuY29tIj5jbGFuZy1idWlsdC1saW51
eCt1bnN1YnNjcmliZUBnb29nbGVncm91cHMuY29tPC9hPi48YnIgLz4KVG8gdmlldyB0aGlzIGRp
c2N1c3Npb24gb24gdGhlIHdlYiB2aXNpdCA8YSBocmVmPSJodHRwczovL2dyb3Vwcy5nb29nbGUu
Y29tL2QvbXNnaWQvY2xhbmctYnVpbHQtbGludXgvQ0FIUlNTRXllM1BCNlY5Rm5wQmJ0SlRpbXp2
REphdmI2U0pfWGRma3lXeGpNRkhfNSUzREElNDBtYWlsLmdtYWlsLmNvbT91dG1fbWVkaXVtPWVt
YWlsJnV0bV9zb3VyY2U9Zm9vdGVyIj5odHRwczovL2dyb3Vwcy5nb29nbGUuY29tL2QvbXNnaWQv
Y2xhbmctYnVpbHQtbGludXgvQ0FIUlNTRXllM1BCNlY5Rm5wQmJ0SlRpbXp2REphdmI2U0pfWGRm
a3lXeGpNRkhfNSUzREElNDBtYWlsLmdtYWlsLmNvbTwvYT4uPGJyIC8+Cg==
--0000000000007269430592af9931--
