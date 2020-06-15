Return-Path: <clang-built-linux+bncBDYJPJO25UGBB3XRT33QKGQER3VGTMY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23c.google.com (mail-oi1-x23c.google.com [IPv6:2607:f8b0:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id 441271F9F08
	for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jun 2020 20:07:43 +0200 (CEST)
Received: by mail-oi1-x23c.google.com with SMTP id m22sf8089159oih.21
        for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jun 2020 11:07:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592244462; cv=pass;
        d=google.com; s=arc-20160816;
        b=Huf2Mt7LYrUXc1I1MiTcf1CPIuT9VdrU5aHi4tQ+7kLmfI2ZapdGFu8JcLziJnuH6x
         7V5CmUQTjlt/oGgbCCan/yuQU3vnO49hLeJ1l+2zVaV5SkYckiwQ01c/6Ob0dgKyMXxs
         OD3TOIeXw7cvJ6xUcUfv8zU0B4ZBALk8th067bno4TRyFFh98G3Mh+P8XhQgoehIqyA6
         u8BGNxVh2yQhZHe290PNhyLKh0vM4yRJ2LffHUId+7XiK5UvjGLaNqjJu8SLoA72D5b8
         4Zsk0qwoKPzDXfS5cOb8pYJRieqTXAqvNizAyP/nO2TaqtDPaAo5YxNhdXKrn8Eay/KS
         UY7w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=L/347LowXGgtOpxmkSBcYRantZUQ9S6lhzFcbwxibfg=;
        b=kS0P6m4obcoR0CDG+aE8xYm1tzaCrgMyqBbQp74A7AbHMdtxcN8xbu3qXKNlm9Pnkb
         vFJKHOA4ULUOPt/8uylFPOE8yRYWpfSuMIazPLbSp9PPgJeqRlRGm3NpkxKbDgESdqel
         gf8zC8mfugzCKZpdrlvwUiSjDwZyt4qppcF4Lu7/w50v6xnb3F0Ua6fav1eE8o7uAhgE
         qacDmWNXvNBNNxMZBw3d8Q5xDMsdTlC4T25WxPVA+z8IdXvRzfBF31G40ByCzPIHLDg/
         7c6sDcqo3a05sh0kqBSLV6/yMfuweYhTRlDA7u9RJgn6YR88EwjgKHM49ieUbgqZGmd6
         qJWg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=vJVJDRbS;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=L/347LowXGgtOpxmkSBcYRantZUQ9S6lhzFcbwxibfg=;
        b=XCMNu5rna3DryDiadBSiQE4UxWB4SmsTkJTKCd1yV0QLG2KOnAY5mOq3Imoqy/BwEW
         kPJDMgnHm3kOKzx1p7nHIlfwcBROmDUoJo6vC5vULXe62ZWlTv3z1oC8DDYZleDayP1b
         iewigS14H7we38x1jg0qfpy7HGuRwQeOSalGV8LGd5ZwMMDxOotHmjPesVJJTQSmTHk7
         GpuWLBV6a+nU9zQfR2phJPkd/YphEi04VlYJAAT4yRYr8kV0YkWyJv1nBg/rAwTRD964
         ymI1s1zVysX77jetN63CqeIa/pOW4wxkAW2idQakqGW76Q0eDhXxWvk/7KIrtXcJwub4
         yJvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=L/347LowXGgtOpxmkSBcYRantZUQ9S6lhzFcbwxibfg=;
        b=aS9yqj5BHQ27dvhhKeqRyFY67hTSiidqP9oH6BTvv7JjpPTjr6Gk38YT3WwXcs+xvr
         EgYTHFDuNOe+vz0TmeSxVNRdqnAHpwzojvesETbBuRbtdPenXz+audkbKMzJ93PGR3+8
         tLC2hrwi7QgbDacMRWJFIgt76bZkxWYXNaHK9W47l4ceiDOkDLN3EE+0c0Uf9ip/wIsW
         zBD5EDQzJYwC3vGjgLgGZEV2lq7GakUC8hGZmlUts4+8KcSFRj2ckUCmPRfXMqIhz1Tf
         rKk3sHiyMMCnEIgnRVwBOUYaAv2s/mXxql1uUsYdkcig4+IZaLPH+NMbpHiwpB2uzGm0
         MLTA==
X-Gm-Message-State: AOAM533xxtB/DPSod4/6U37kZCrWyqVEkevM1zF3nv0ywfNWKrmCEyaW
	dIGDUGV4ZWWC8UMd7i+iGM8=
X-Google-Smtp-Source: ABdhPJx6bpeyQ3AsfogOJLHTWfG/HpY1/LslSJ1k8sAW95rxUmm7FGojW3FKwZeH+9C2bCsXlnq/dg==
X-Received: by 2002:aca:c391:: with SMTP id t139mr497879oif.166.1592244462215;
        Mon, 15 Jun 2020 11:07:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:11ce:: with SMTP id v14ls3262590otq.0.gmail; Mon,
 15 Jun 2020 11:07:41 -0700 (PDT)
X-Received: by 2002:a9d:e93:: with SMTP id 19mr23008909otj.371.1592244461596;
        Mon, 15 Jun 2020 11:07:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592244461; cv=none;
        d=google.com; s=arc-20160816;
        b=nF7uopxwg9CCylgZc/srTnnQVwkqzmx8ds/ddZbOoX4XqPSBl9GtN9aOGuQlqoVI1X
         XWlloyqIaXnI25vvDKiThbvcb2bVe10yu7wMrvNxOpurazWGe0ZaRbt84OpNpXvpt8vC
         8JYUTAbwyyFEkdTioEcOnH8Jvhl9F0KXaNr7BM7SeGr00WA9pxjyaLOLpfjIlSyjxNdJ
         i0zSy5U3eqscLTuWV9QMU8a92TnrV9vU47Kplg0NXiciEEVuqWk2om08VZJko4w5wrvX
         0v6LIjZ02cQSTq2UaWvxZ9SvgljBDgJkqKXchDFV+eTQ7VZNO84sh9Z4F/xsAPxVa7Me
         5lMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=f51GDLsBir2dAMmlhVmB+JP/MQ48jFa5bE42ESbx4vQ=;
        b=KVEY052KSKF8G/y412bOXrPWR+a9YdiUKVYLUhG9ANq0AlbJb70hmY/XDcOBvUiwpf
         ukUArIG2ipDLeULCPDR7nwhHo2jXzXHN01QjGqfoiiRyXvGDHCbvHBlDvjoDbrpS6SQ3
         1Y/QLhzD3mwLDKvGZfj1Faf+8hVkogvmDPsnw/gnbrzr+mQ4n7tlJT93mOOK+JCfpO1P
         jHS0CisExKlRmiH+gLg0kiJnh9Zw9SMq+WqN0KJaHHV1E++AwgUycW3vy0W+qQRnZeLW
         L7bRabxIrnVyYYIiHZc/ZUBncmSvXVxWkfVPTyYffkYldJ0YEX4MREMhg8QJRDKj7GQo
         pmMw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=vJVJDRbS;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id y198si548603oie.1.2020.06.15.11.07.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Jun 2020 11:07:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id s23so8151217pfh.7
        for <clang-built-linux@googlegroups.com>; Mon, 15 Jun 2020 11:07:41 -0700 (PDT)
X-Received: by 2002:a05:6a00:15ca:: with SMTP id o10mr24597859pfu.169.1592244460591;
 Mon, 15 Jun 2020 11:07:40 -0700 (PDT)
MIME-Version: 1.0
References: <20200615062520.GK12456@shao2-debian> <CANn89i+s=oFTq6KFhT0z1CReQPZCGoEPShEFHVvXAmC9sUDH7g@mail.gmail.com>
 <CAKwvOdkv=L=QKQc7HtOi5ZNdao35m18PMr7ep+4sKv5iogVDLg@mail.gmail.com>
 <CANn89iJYCHqvCTvzommOL4RHtKLT5wyXMzpWKNfrBFTgs4kNAw@mail.gmail.com> <CANn89iLnmKaa30tPoyK_GrJr-_ALYBwjcJ0pBcvmckA9PAvrgA@mail.gmail.com>
In-Reply-To: <CANn89iLnmKaa30tPoyK_GrJr-_ALYBwjcJ0pBcvmckA9PAvrgA@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 15 Jun 2020 11:07:29 -0700
Message-ID: <CAKwvOd=shEiDQZxZPyUCC=CJLrzmP5FHr04cE-KVN_-6+qz1jQ@mail.gmail.com>
Subject: Re: net/sched/sch_fq.c:966:12: warning: stack frame size of 1400
 bytes in function 'fq_dump'
To: Eric Dumazet <edumazet@google.com>
Cc: kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=vJVJDRbS;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441
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

On Mon, Jun 15, 2020 at 10:59 AM 'Eric Dumazet' via Clang Built Linux
<clang-built-linux@googlegroups.com> wrote:
>
> On Mon, Jun 15, 2020 at 10:54 AM Eric Dumazet <edumazet@google.com> wrote:
> >
> > On Mon, Jun 15, 2020 at 10:44 AM Nick Desaulniers
> > <ndesaulniers@google.com> wrote:
> > >
> > > On Mon, Jun 15, 2020 at 9:17 AM 'Eric Dumazet' via Clang Built Linux
> > > <clang-built-linux@googlegroups.com> wrote:
> > > >
> > > > On Sun, Jun 14, 2020 at 11:26 PM kernel test robot <lkp@intel.com> wrote:
> > > > >
> > > > > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> > > > > head:   96144c58abe7ff767e754b5b80995f7b8846d49b
> > > > > commit: 39d010504e6b4485d7ceee167743620dd33f4417 net_sched: sch_fq: add horizon attribute
> > > > > date:   6 weeks ago
> > > > > :::::: branch date: 3 hours ago
> > > > > :::::: commit date: 6 weeks ago
> > > > > config: arm-randconfig-r006-20200614 (attached as .config)
> > > > > compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project c669a1ed6386d57a75a602b53266466dae1e1d84)
> > > > > reproduce (this is a W=1 build):
> > > > >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> > > > >         chmod +x ~/bin/make.cross
> > > > >         # install arm cross compiling tool for clang build
> > > > >         # apt-get install binutils-arm-linux-gnueabi
> > > > >         git checkout 39d010504e6b4485d7ceee167743620dd33f4417
> > > > >         # save the attached .config to linux build tree
> > > > >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm
> > > > >
> > > > > If you fix the issue, kindly add following tag as appropriate
> > > > > Reported-by: kernel test robot <lkp@intel.com>
> > > > >
> > > > > All warnings (new ones prefixed by >>, old ones prefixed by <<):
> > > > >
> > > > > >> net/sched/sch_fq.c:966:12: warning: stack frame size of 1400 bytes in function 'fq_dump' [-Wframe-larger-than=]
> > > > > static int fq_dump(struct Qdisc *sch, struct sk_buff *skb)
> > > > > ^
> > > >
> > > >
> > > > This looks like a bug in CLANG on ARM, there is no way fq_dump() could
> > > > consume so much stack space.
> > >
> > > You can use
> > > https://github.com/ClangBuiltLinux/frame-larger-than
> > > to help debug these.  You might be surprised who's doing larger stack
> > > allocations than expected.
> >
> > What is wrong with scripts/checkstack.pl  ?
>
> After using CLANG on x86 I get :
>
> $ objdump -d net/sched/sch_fq.o | scripts/checkstack.pl
> 0x00001136 fq_change [sch_fq.o]: 192
> 0x00000016 __direct_call_Qdisc_enqueue1 [sch_fq.o]: 112
> 0x000019e0 fq_dump_stats [sch_fq.o]: 112
> 0x00001b43 fq_dump_stats [sch_fq.o]: 112
>
> So CLANG on x86 seems fine.
>
> I said : " this looks like a bug in CLANG on ARM"

This is a randconfig, so some option is turning on something that's
causing excessive stack usage with your patch on ARM.  Building who
knows what config with x86 and claiming it works doesn't really cut
it.  You looked at fq_dump and claimed it should be fine.  Did you
verify each called function that was inlined?

And the issue with checkstack is it tells you the depth, but not *what
variables* and from which inlined function may be the cause.

>
>
>
> >
> > >
> > > >
> > > >
> > > >
> > > > > 1 warning generated.
> > > > >
> > > > > # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=39d010504e6b4485d7ceee167743620dd33f4417
> > > > > git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
> > > > > git remote update linus
> > > > > git checkout 39d010504e6b4485d7ceee167743620dd33f4417
> > > > > vim +/fq_dump +966 net/sched/sch_fq.c
> > > > >
> > > > > afe4fd062416b1 Eric Dumazet   2013-08-29   965
> > > > > afe4fd062416b1 Eric Dumazet   2013-08-29  @966  static int fq_dump(struct Qdisc *sch, struct sk_buff *skb)
> > > > > afe4fd062416b1 Eric Dumazet   2013-08-29   967  {
> > > > > afe4fd062416b1 Eric Dumazet   2013-08-29   968          struct fq_sched_data *q = qdisc_priv(sch);
> > > > > 48872c11b77271 Eric Dumazet   2018-11-11   969          u64 ce_threshold = q->ce_threshold;
> > > > > 39d010504e6b44 Eric Dumazet   2020-05-01   970          u64 horizon = q->horizon;
> > > > > afe4fd062416b1 Eric Dumazet   2013-08-29   971          struct nlattr *opts;
> > > > > afe4fd062416b1 Eric Dumazet   2013-08-29   972
> > > > > ae0be8de9a53cd Michal Kubecek 2019-04-26   973          opts = nla_nest_start_noflag(skb, TCA_OPTIONS);
> > > > > afe4fd062416b1 Eric Dumazet   2013-08-29   974          if (opts == NULL)
> > > > > afe4fd062416b1 Eric Dumazet   2013-08-29   975                  goto nla_put_failure;
> > > > > afe4fd062416b1 Eric Dumazet   2013-08-29   976
> > > > > 65c5189a2b57b9 Eric Dumazet   2013-11-15   977          /* TCA_FQ_FLOW_DEFAULT_RATE is not used anymore */
> > > > > 65c5189a2b57b9 Eric Dumazet   2013-11-15   978
> > > > > 48872c11b77271 Eric Dumazet   2018-11-11   979          do_div(ce_threshold, NSEC_PER_USEC);
> > > > > 39d010504e6b44 Eric Dumazet   2020-05-01   980          do_div(horizon, NSEC_PER_USEC);
> > > > > 48872c11b77271 Eric Dumazet   2018-11-11   981
> > > > > afe4fd062416b1 Eric Dumazet   2013-08-29   982          if (nla_put_u32(skb, TCA_FQ_PLIMIT, sch->limit) ||
> > > > > afe4fd062416b1 Eric Dumazet   2013-08-29   983              nla_put_u32(skb, TCA_FQ_FLOW_PLIMIT, q->flow_plimit) ||
> > > > > afe4fd062416b1 Eric Dumazet   2013-08-29   984              nla_put_u32(skb, TCA_FQ_QUANTUM, q->quantum) ||
> > > > > afe4fd062416b1 Eric Dumazet   2013-08-29   985              nla_put_u32(skb, TCA_FQ_INITIAL_QUANTUM, q->initial_quantum) ||
> > > > > afe4fd062416b1 Eric Dumazet   2013-08-29   986              nla_put_u32(skb, TCA_FQ_RATE_ENABLE, q->rate_enable) ||
> > > > > 76a9ebe811fb3d Eric Dumazet   2018-10-15   987              nla_put_u32(skb, TCA_FQ_FLOW_MAX_RATE,
> > > > > 76a9ebe811fb3d Eric Dumazet   2018-10-15   988                          min_t(unsigned long, q->flow_max_rate, ~0U)) ||
> > > > > f52ed89971adbe Eric Dumazet   2013-11-15   989              nla_put_u32(skb, TCA_FQ_FLOW_REFILL_DELAY,
> > > > > f52ed89971adbe Eric Dumazet   2013-11-15   990                          jiffies_to_usecs(q->flow_refill_delay)) ||
> > > > > 06eb395fa9856b Eric Dumazet   2015-02-04   991              nla_put_u32(skb, TCA_FQ_ORPHAN_MASK, q->orphan_mask) ||
> > > > > 77879147a3481b Eric Dumazet   2016-09-19   992              nla_put_u32(skb, TCA_FQ_LOW_RATE_THRESHOLD,
> > > > > 77879147a3481b Eric Dumazet   2016-09-19   993                          q->low_rate_threshold) ||
> > > > > 48872c11b77271 Eric Dumazet   2018-11-11   994              nla_put_u32(skb, TCA_FQ_CE_THRESHOLD, (u32)ce_threshold) ||
> > > > > 583396f4ca4d6e Eric Dumazet   2020-03-16   995              nla_put_u32(skb, TCA_FQ_BUCKETS_LOG, q->fq_trees_log) ||
> > > > > 39d010504e6b44 Eric Dumazet   2020-05-01   996              nla_put_u32(skb, TCA_FQ_TIMER_SLACK, q->timer_slack) ||
> > > > > 39d010504e6b44 Eric Dumazet   2020-05-01   997              nla_put_u32(skb, TCA_FQ_HORIZON, (u32)horizon) ||
> > > > > 39d010504e6b44 Eric Dumazet   2020-05-01   998              nla_put_u8(skb, TCA_FQ_HORIZON_DROP, q->horizon_drop))
> > > > > afe4fd062416b1 Eric Dumazet   2013-08-29   999                  goto nla_put_failure;
> > > > > afe4fd062416b1 Eric Dumazet   2013-08-29  1000
> > > > > d59b7d8059ddc4 Yang Yingliang 2014-03-12  1001          return nla_nest_end(skb, opts);
> > > > > afe4fd062416b1 Eric Dumazet   2013-08-29  1002
> > > > > afe4fd062416b1 Eric Dumazet   2013-08-29  1003  nla_put_failure:
> > > > > afe4fd062416b1 Eric Dumazet   2013-08-29  1004          return -1;
> > > > > afe4fd062416b1 Eric Dumazet   2013-08-29  1005  }
> > > > > afe4fd062416b1 Eric Dumazet   2013-08-29  1006
> > > > >
> > > > > :::::: The code at line 966 was first introduced by commit
> > > > > :::::: afe4fd062416b158a8a8538b23adc1930a9b88dc pkt_sched: fq: Fair Queue packet scheduler
> > > > >
> > > > > :::::: TO: Eric Dumazet <edumazet@google.com>
> > > > > :::::: CC: David S. Miller <davem@davemloft.net>
> > > > >
> > > > > ---
> > > > > 0-DAY CI Kernel Test Service, Intel Corporation
> > > > > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> > > > > _______________________________________________
> > > > > kbuild mailing list -- kbuild@lists.01.org
> > > > > To unsubscribe send an email to kbuild-leave@lists.01.org
> > > >
> > > > --
> > > > You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> > > > To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> > > > To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANn89i%2Bs%3DoFTq6KFhT0z1CReQPZCGoEPShEFHVvXAmC9sUDH7g%40mail.gmail.com.
> > >
> > >
> > >
> > > --
> > > Thanks,
> > > ~Nick Desaulniers
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANn89iLnmKaa30tPoyK_GrJr-_ALYBwjcJ0pBcvmckA9PAvrgA%40mail.gmail.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DshEiDQZxZPyUCC%3DCJLrzmP5FHr04cE-KVN_-6%2Bqz1jQ%40mail.gmail.com.
