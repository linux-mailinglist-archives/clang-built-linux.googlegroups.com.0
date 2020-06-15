Return-Path: <clang-built-linux+bncBDYJPJO25UGBB2PGT33QKGQEA7KB74A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3a.google.com (mail-qv1-xf3a.google.com [IPv6:2607:f8b0:4864:20::f3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D8541F9EBB
	for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jun 2020 19:44:10 +0200 (CEST)
Received: by mail-qv1-xf3a.google.com with SMTP id q5sf13575384qvp.23
        for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jun 2020 10:44:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592243049; cv=pass;
        d=google.com; s=arc-20160816;
        b=l3jD82AwhIN3D36PrztVzja96nSaFB0tuZ/qbSirxdX/b6Dp3uThyTpvD3GpnrxPBv
         NBZyDZwatss+n//B3C14T2U+RzDCu8aLqhmo8s6n5xd/I9FfqY/yjeKQ5sVxed1IGDAZ
         fxhSGDrAO1qwRiP7OhUD7jpOh9ZRpf0PsYqhm8RS8NeLLkyLWapit4Wbj5u5ZE/zC8MB
         GOnqShoTe0UiAV14i2eSi14GN0HTkCwzzQ+z4MrJkyZFzAg7AnKJ851/i23u7rBCdT7z
         XV45lxkew28jUzvnvGOqu/DYs6ggsELYFhmPOhEKwgmoblnBh5/EwqgB0BxeDumvktJm
         l/Lg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=lvF1zNmUyHCq2t+AOuFKrL5Nq+Yjd1T5qlDznyBgeCE=;
        b=D8l9McsY15lNXa+B5sqydsUmrAK3ZgYSn+kG7Cju4ecTDUAgSrL3cj3UfWwHiJnxv8
         BZAkVL5FqBzP+/nS0BM75hzTk5yH4yF55RDFYe2I/lFlh7xRuHOI6GQT5/+Ast4UOnOV
         DMRpFvmroyI7ClX11V1/i+fwEA2Qd+7s0xYzbpX29gAoR6pRGkDIxvioy7vIEtPIYjXw
         nVtWD/uWsXbH9ZllvCz4UEbu/uIz0E5a34ynxoWsp0EplT+Bh5F4TX40p/Sy8RXzODx+
         ThKup6XyTWkKFQbkWu7d6Px4xisgjemq0OkW+/7oyo9CBc8mTc86pi7CsjXtk/X+3Xiw
         Z0fQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="uBOxov/3";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lvF1zNmUyHCq2t+AOuFKrL5Nq+Yjd1T5qlDznyBgeCE=;
        b=EuWYB69jZhUQps69cdmplRU4Fje+0DGAbNaC1U1KpFWF0CJiEubqn0wbiq9rfdziua
         dIjFUQIxF7JyUjyQgkxV87ljrW0hhOPJ+9Ne6PZNbuskCW8thLjtxjNEs7k8UPL6vpyU
         GSe7Oz1VvAqv7vZopCAtSn2K7aXrebymki/6O/IagceChRcILLD7e9SAV2B1qfn6AfN6
         8XnD+AivGjd6ISd+9G91RgXmEs6dReI7ghupEsYCLy8N1dxWmnkqqP8MEi7oWnp//vns
         GnW/2dTbGzpR5f6i5tIDOMMMN9ZJHMYiN/d6SwzgzjyytAogoqnZcRKJWOYKL7hfcBWU
         wCkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lvF1zNmUyHCq2t+AOuFKrL5Nq+Yjd1T5qlDznyBgeCE=;
        b=HERZKDKQ4PglJjm+6jQOSC1Gg0l9cGrW3ufxetfJzTcyuAEtxuueTCqxvdM8OyWB9L
         H6N7L1GmvT+ktGLIssMDMBTNbEkj3M7Qq/XzElf8xdRhdPKgKGhBAzIKw6KDP4PeLT8h
         JbEH9hKynUskYwBvGIznF3yi8L4dOq1su3FsgyhyJYhG6FDnEFOnP57bl14qqTvpk8T/
         5tnxs2DCljrymvzKSctCSjTeJZ7uxPqrsfggMNIIDKx+6rAZzgkMFO/Gnw5Bm90s+FV+
         7VnutPof9eQ8mZoa0GSazooL+GThPpEfVdmEl6uTyn3owaZX9Gklxk+Z368SQuic8SUb
         rDXQ==
X-Gm-Message-State: AOAM532HfNLSRhpuOvVETgOVrUb3BJlNYyZOZlL7EM7kfaU7JEsrTS0x
	So++BcCtLQMr1Pj6WjYFChg=
X-Google-Smtp-Source: ABdhPJzxUgR5eiBuKG3d6cYzlsVA4w4zLW3+j3swbovgpGBmEcl8nriW82Xo22Ec3B728m66uh9bFQ==
X-Received: by 2002:a05:620a:4e5:: with SMTP id b5mr16258025qkh.341.1592243049106;
        Mon, 15 Jun 2020 10:44:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:4e56:: with SMTP id e22ls5674921qtw.3.gmail; Mon, 15 Jun
 2020 10:44:08 -0700 (PDT)
X-Received: by 2002:ac8:44da:: with SMTP id b26mr17260167qto.232.1592243048685;
        Mon, 15 Jun 2020 10:44:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592243048; cv=none;
        d=google.com; s=arc-20160816;
        b=QJNb6dTJHmxd0YxzboerjMnA0Ri/zwTWaj1ztkhCMFnnXbU5rlXHGr8ZzYywHaxRLT
         2YXuxLSZELhoQFA+IDFQte0oBN2WKg+olC535xBgv0t1rmOT42MkQQ7uvqQVsxyUj32r
         a+bSsY9OkM6RQ0X7kYOcDIcmejqWGScqEhblFHZ77Tg9NpbaTNwuKe29L8BticTKXTtV
         4vjautn3077dLscMy5i6w0Y9224CT2LfJ5h4nvGv/e0jQnjGyjuniESXinAGuW8KjuZw
         m/0h5t3zJ1kIfqs74J3Si3Y5nKzhGozzbHT1ZipCXSmS1/5a0BWNxxVi+w/3RhYHh5sX
         x6lA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=wgm7Ev6xOl2QQEot2mfMM1wpkg4lvJ2QLEiwDn/B3jI=;
        b=Atgnpyr/NWlrqd1QseBmOahhG8oeVvyEVcplcWGqGkZ/WfiNwOWSBSK66+W4FZJKDb
         mm35M/9lA6BNo8Yl0zEXW04IHaC5SXxmdWAVWS+hfL0ql0nMxyl9XKHWRAgCIVTiSZ1e
         sHUUBmReXJHEl6OpwhlS7YUaIVze5ZSgXiqN+kG2nfuc3vdenLUCxpeXkq7O6PnslbPj
         vvmeYijbioqJT9PqKPMedrAHN60YTc8LXBDSScx1J5snM72fs7QuCO0twJS/4P9xBZQp
         Zr0XpAg3ooGys0M90j2OaRflqxnJMDbj/fUo0JQRKGf/ViQJryi/wjGP4lNZjXVkCBVP
         Oy0g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="uBOxov/3";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id b1si819859qte.1.2020.06.15.10.44.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Jun 2020 10:44:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Received: by mail-pj1-x1042.google.com with SMTP id a45so164526pje.1
        for <clang-built-linux@googlegroups.com>; Mon, 15 Jun 2020 10:44:08 -0700 (PDT)
X-Received: by 2002:a17:902:fe8b:: with SMTP id x11mr23019349plm.179.1592243047470;
 Mon, 15 Jun 2020 10:44:07 -0700 (PDT)
MIME-Version: 1.0
References: <20200615062520.GK12456@shao2-debian> <CANn89i+s=oFTq6KFhT0z1CReQPZCGoEPShEFHVvXAmC9sUDH7g@mail.gmail.com>
In-Reply-To: <CANn89i+s=oFTq6KFhT0z1CReQPZCGoEPShEFHVvXAmC9sUDH7g@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 15 Jun 2020 10:43:56 -0700
Message-ID: <CAKwvOdkv=L=QKQc7HtOi5ZNdao35m18PMr7ep+4sKv5iogVDLg@mail.gmail.com>
Subject: Re: net/sched/sch_fq.c:966:12: warning: stack frame size of 1400
 bytes in function 'fq_dump'
To: Eric Dumazet <edumazet@google.com>
Cc: kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="uBOxov/3";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042
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

On Mon, Jun 15, 2020 at 9:17 AM 'Eric Dumazet' via Clang Built Linux
<clang-built-linux@googlegroups.com> wrote:
>
> On Sun, Jun 14, 2020 at 11:26 PM kernel test robot <lkp@intel.com> wrote:
> >
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> > head:   96144c58abe7ff767e754b5b80995f7b8846d49b
> > commit: 39d010504e6b4485d7ceee167743620dd33f4417 net_sched: sch_fq: add horizon attribute
> > date:   6 weeks ago
> > :::::: branch date: 3 hours ago
> > :::::: commit date: 6 weeks ago
> > config: arm-randconfig-r006-20200614 (attached as .config)
> > compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project c669a1ed6386d57a75a602b53266466dae1e1d84)
> > reproduce (this is a W=1 build):
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # install arm cross compiling tool for clang build
> >         # apt-get install binutils-arm-linux-gnueabi
> >         git checkout 39d010504e6b4485d7ceee167743620dd33f4417
> >         # save the attached .config to linux build tree
> >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm
> >
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kernel test robot <lkp@intel.com>
> >
> > All warnings (new ones prefixed by >>, old ones prefixed by <<):
> >
> > >> net/sched/sch_fq.c:966:12: warning: stack frame size of 1400 bytes in function 'fq_dump' [-Wframe-larger-than=]
> > static int fq_dump(struct Qdisc *sch, struct sk_buff *skb)
> > ^
>
>
> This looks like a bug in CLANG on ARM, there is no way fq_dump() could
> consume so much stack space.

You can use
https://github.com/ClangBuiltLinux/frame-larger-than
to help debug these.  You might be surprised who's doing larger stack
allocations than expected.

>
>
>
> > 1 warning generated.
> >
> > # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=39d010504e6b4485d7ceee167743620dd33f4417
> > git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
> > git remote update linus
> > git checkout 39d010504e6b4485d7ceee167743620dd33f4417
> > vim +/fq_dump +966 net/sched/sch_fq.c
> >
> > afe4fd062416b1 Eric Dumazet   2013-08-29   965
> > afe4fd062416b1 Eric Dumazet   2013-08-29  @966  static int fq_dump(struct Qdisc *sch, struct sk_buff *skb)
> > afe4fd062416b1 Eric Dumazet   2013-08-29   967  {
> > afe4fd062416b1 Eric Dumazet   2013-08-29   968          struct fq_sched_data *q = qdisc_priv(sch);
> > 48872c11b77271 Eric Dumazet   2018-11-11   969          u64 ce_threshold = q->ce_threshold;
> > 39d010504e6b44 Eric Dumazet   2020-05-01   970          u64 horizon = q->horizon;
> > afe4fd062416b1 Eric Dumazet   2013-08-29   971          struct nlattr *opts;
> > afe4fd062416b1 Eric Dumazet   2013-08-29   972
> > ae0be8de9a53cd Michal Kubecek 2019-04-26   973          opts = nla_nest_start_noflag(skb, TCA_OPTIONS);
> > afe4fd062416b1 Eric Dumazet   2013-08-29   974          if (opts == NULL)
> > afe4fd062416b1 Eric Dumazet   2013-08-29   975                  goto nla_put_failure;
> > afe4fd062416b1 Eric Dumazet   2013-08-29   976
> > 65c5189a2b57b9 Eric Dumazet   2013-11-15   977          /* TCA_FQ_FLOW_DEFAULT_RATE is not used anymore */
> > 65c5189a2b57b9 Eric Dumazet   2013-11-15   978
> > 48872c11b77271 Eric Dumazet   2018-11-11   979          do_div(ce_threshold, NSEC_PER_USEC);
> > 39d010504e6b44 Eric Dumazet   2020-05-01   980          do_div(horizon, NSEC_PER_USEC);
> > 48872c11b77271 Eric Dumazet   2018-11-11   981
> > afe4fd062416b1 Eric Dumazet   2013-08-29   982          if (nla_put_u32(skb, TCA_FQ_PLIMIT, sch->limit) ||
> > afe4fd062416b1 Eric Dumazet   2013-08-29   983              nla_put_u32(skb, TCA_FQ_FLOW_PLIMIT, q->flow_plimit) ||
> > afe4fd062416b1 Eric Dumazet   2013-08-29   984              nla_put_u32(skb, TCA_FQ_QUANTUM, q->quantum) ||
> > afe4fd062416b1 Eric Dumazet   2013-08-29   985              nla_put_u32(skb, TCA_FQ_INITIAL_QUANTUM, q->initial_quantum) ||
> > afe4fd062416b1 Eric Dumazet   2013-08-29   986              nla_put_u32(skb, TCA_FQ_RATE_ENABLE, q->rate_enable) ||
> > 76a9ebe811fb3d Eric Dumazet   2018-10-15   987              nla_put_u32(skb, TCA_FQ_FLOW_MAX_RATE,
> > 76a9ebe811fb3d Eric Dumazet   2018-10-15   988                          min_t(unsigned long, q->flow_max_rate, ~0U)) ||
> > f52ed89971adbe Eric Dumazet   2013-11-15   989              nla_put_u32(skb, TCA_FQ_FLOW_REFILL_DELAY,
> > f52ed89971adbe Eric Dumazet   2013-11-15   990                          jiffies_to_usecs(q->flow_refill_delay)) ||
> > 06eb395fa9856b Eric Dumazet   2015-02-04   991              nla_put_u32(skb, TCA_FQ_ORPHAN_MASK, q->orphan_mask) ||
> > 77879147a3481b Eric Dumazet   2016-09-19   992              nla_put_u32(skb, TCA_FQ_LOW_RATE_THRESHOLD,
> > 77879147a3481b Eric Dumazet   2016-09-19   993                          q->low_rate_threshold) ||
> > 48872c11b77271 Eric Dumazet   2018-11-11   994              nla_put_u32(skb, TCA_FQ_CE_THRESHOLD, (u32)ce_threshold) ||
> > 583396f4ca4d6e Eric Dumazet   2020-03-16   995              nla_put_u32(skb, TCA_FQ_BUCKETS_LOG, q->fq_trees_log) ||
> > 39d010504e6b44 Eric Dumazet   2020-05-01   996              nla_put_u32(skb, TCA_FQ_TIMER_SLACK, q->timer_slack) ||
> > 39d010504e6b44 Eric Dumazet   2020-05-01   997              nla_put_u32(skb, TCA_FQ_HORIZON, (u32)horizon) ||
> > 39d010504e6b44 Eric Dumazet   2020-05-01   998              nla_put_u8(skb, TCA_FQ_HORIZON_DROP, q->horizon_drop))
> > afe4fd062416b1 Eric Dumazet   2013-08-29   999                  goto nla_put_failure;
> > afe4fd062416b1 Eric Dumazet   2013-08-29  1000
> > d59b7d8059ddc4 Yang Yingliang 2014-03-12  1001          return nla_nest_end(skb, opts);
> > afe4fd062416b1 Eric Dumazet   2013-08-29  1002
> > afe4fd062416b1 Eric Dumazet   2013-08-29  1003  nla_put_failure:
> > afe4fd062416b1 Eric Dumazet   2013-08-29  1004          return -1;
> > afe4fd062416b1 Eric Dumazet   2013-08-29  1005  }
> > afe4fd062416b1 Eric Dumazet   2013-08-29  1006
> >
> > :::::: The code at line 966 was first introduced by commit
> > :::::: afe4fd062416b158a8a8538b23adc1930a9b88dc pkt_sched: fq: Fair Queue packet scheduler
> >
> > :::::: TO: Eric Dumazet <edumazet@google.com>
> > :::::: CC: David S. Miller <davem@davemloft.net>
> >
> > ---
> > 0-DAY CI Kernel Test Service, Intel Corporation
> > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> > _______________________________________________
> > kbuild mailing list -- kbuild@lists.01.org
> > To unsubscribe send an email to kbuild-leave@lists.01.org
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANn89i%2Bs%3DoFTq6KFhT0z1CReQPZCGoEPShEFHVvXAmC9sUDH7g%40mail.gmail.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkv%3DL%3DQKQc7HtOi5ZNdao35m18PMr7ep%2B4sKv5iogVDLg%40mail.gmail.com.
