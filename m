Return-Path: <clang-built-linux+bncBDN3ZEGJT4NBB4PLT33QKGQEG7P4HYQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93d.google.com (mail-ua1-x93d.google.com [IPv6:2607:f8b0:4864:20::93d])
	by mail.lfdr.de (Postfix) with ESMTPS id 748221F9EE2
	for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jun 2020 19:54:58 +0200 (CEST)
Received: by mail-ua1-x93d.google.com with SMTP id o9sf7439449uar.22
        for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jun 2020 10:54:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592243697; cv=pass;
        d=google.com; s=arc-20160816;
        b=hS3BLOJeyqSbvnLHbvZlCUXDJUPLLnVtO3W+9KRCV3rZZX5YwtBlYA6H//+kKot+7c
         aqlQwq5yY65SKY+/wIH557QmE2H11oBx1G3juxCH+PXUyI5ryicYE2BtkvYPELZgon8R
         D125ACvuxpoAY2YluSV4b13YZuIrUswxQ/dRXStoR2GNdyjbdVlFdXoDIBWfJFiTgxgf
         954rDDQ8Qft2xoN+B6Mc9SoW7KBw5vQRyULOFPyY4vM6o8Sy8PtX2/TFyIYznLwJMiSt
         19vhLVHr5nwduTCZ4e3ZIKdtwKjeNWkccWBYpX2GSJRdIz7RtTAgpxIUxmzpgrUdBGz3
         rVOw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=QUGSUuxYkR3OzkX/swuRXHwsbUylzoL5zPSdqRt5zNs=;
        b=VzYY3JOJc5aATHcAL1+/nQG2o19U/rbiragQaJqa6Fsk3Z0NRsteuv/DPUEljC28Ve
         8naJkmZ6zwZU2xXwLl6nY6FjTtfn7j1/tq65nG3VeaYpL7QtKco3dVMG+e8oLrrL2ln/
         bR9nbFRsuVjvr6cS6h0CGgdcEAiK4+rUeEwW4bG2V/jBiwihMSMOiCfu31impbiMEVlC
         U7KNNiLsggIuCsoRsvQa+uiDw5u1w2Xht3iPJZaID5rimy3YMAIMaRIbjEf6sfP7f4Td
         TNPlFV1Ys3wnhbT+aa8btUdqpNSJrNWUesw9XGgZXSqkSxGhdyUZS6JKGQrCWesGaAkU
         QTlw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=BXZKUDKZ;
       spf=pass (google.com: domain of edumazet@google.com designates 2607:f8b0:4864:20::b42 as permitted sender) smtp.mailfrom=edumazet@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QUGSUuxYkR3OzkX/swuRXHwsbUylzoL5zPSdqRt5zNs=;
        b=ohmPso/7A040JpKSe0nlsF47kCu755/iTmmUlhZXsbY1ig3RwjZaFy8BJWVlXbgLvl
         cvnYFYvN8KgY0Np9t66ttSm0HiKRBX0LgCcseBiZ75LPnR/aLY2NRDhIlj6qEkoY3jHD
         wi+rVKlyVFC6depSPDVuVImQj63/GwT10ziXFRtReysN27BcgTxpDATXx7jb2ESD6D1a
         D53WCOuQvzksXdMWFGDCHEzYZmmefzEUe4akDKv0lwnCmWRmWOwY5Cj44WlJAFV8KoI0
         BH0dmxJlAyrHrYUAnnvYjhdoOqf1Y0stPgwL+M6P2j0txm8Rmmc+biX2Tqgq/n8J5eqK
         LyNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QUGSUuxYkR3OzkX/swuRXHwsbUylzoL5zPSdqRt5zNs=;
        b=RkA1wRwNC1VbkCnaHrl1C3k1bKl3aRAO73/Rwj66McWsf2+VAP4HsTtULC/VqrS+2d
         QHX3POM9KJ2XoWnXhyEWpvQqIjh1p0RZ8oKbcPoLgiKJCxRQcffAG0hJc5hc5Q5PRVCT
         nH955hVIdxYKjGraeOmasDp18Wjhwau5brclRMBEdkqFEaDs5Wvx4mJ33vd0iVtJC0d2
         kQ1RoomiufLyspLDkDPFk4w9M+2qtm68JVo4le+XIZpGY+bejsFCErG5Nbv4bYfB0ZY/
         tj9sE48OSbom6ce9rkYLc4+HAHXAm5HzK1nW9fEqVep934GebSZzQdmxNr8b6bLtdTO6
         n6oA==
X-Gm-Message-State: AOAM530bMIKkV0wpPbmQy1rwDFtzdzG1StTp5Uv9hTdS7sigvSoi2jxP
	Lrh+GWr4m6rM/dOc0ktI4+o=
X-Google-Smtp-Source: ABdhPJz/i/YZ/X6sVTsg8/vEodeBgBqwkJaC3voGmG9Ie6DnnAONqTe+c8Aj7uXoKd/sxLU0ORBeWA==
X-Received: by 2002:a67:d381:: with SMTP id b1mr19962859vsj.148.1592243697519;
        Mon, 15 Jun 2020 10:54:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:7d8e:: with SMTP id y136ls1571818vsc.7.gmail; Mon, 15
 Jun 2020 10:54:57 -0700 (PDT)
X-Received: by 2002:a67:1502:: with SMTP id 2mr21083527vsv.80.1592243697140;
        Mon, 15 Jun 2020 10:54:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592243697; cv=none;
        d=google.com; s=arc-20160816;
        b=QlBoWZM/p9nWL4WQFaBns3YpIcqVWxnqX07JYPx95yiawfVngqyfIASecNkMG3zhcC
         8SZ8motiFXF79EjchSIzVWjQric0nywuLo4MgYUu/0nRP/KzULmqQsViUC1zxoCz9VMX
         IkAIDwU68eK+PkC26pLvwdGEinu0Oc81dl/6TehM8ATP53uM6swVAFuhSCIsdKVSo52h
         ji5PYVOfZE9N9NvRGgzHTwmLPFXQwj6Bx4fgncoOrUOkpzSaAsW8bNRQEGCjhtFmevuQ
         vcTOFr9teLYmXAgS8CBOnCfPDbwAWTjALwAotQtLs3Ofi7LGZfF1ciDYkUDbRoLGyFts
         dCAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Dk7BygnFYGnzkx1IWPE/dcxGzhkldsM5n8DQWmVEnpQ=;
        b=Bq+5VSG2P68CUtsOv8uA4Qtl6zMjR0LBsi+R2ZXfpKbVCi+uSoiLinRSyfbgAdi2So
         vmgnIKqiCSGxBG4sib7edyEPQO4MsJ8NVYWfFxZgiqabvwrKEUxTWDgSVRLwEOat5WlE
         EeN8nqfJvJHY2rqJ50SZRI73vuNkCQsCuEnafK3B46KbLeZSoQv6KNs4x9ffot6+51E1
         u10QcvdEdCFHBds6DHf2mNEzDmvhSFnKu/84UKluHYXEZgs9ywCy6dkmatuJ5UVdw/KP
         059l9KWLc++nKCig3Sa3j2YxRexilmV6LguDuavnJw3H0PeuvsPpSRRU8W6ei4m59g6r
         rBPw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=BXZKUDKZ;
       spf=pass (google.com: domain of edumazet@google.com designates 2607:f8b0:4864:20::b42 as permitted sender) smtp.mailfrom=edumazet@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb42.google.com (mail-yb1-xb42.google.com. [2607:f8b0:4864:20::b42])
        by gmr-mx.google.com with ESMTPS id t9si935119vkb.1.2020.06.15.10.54.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Jun 2020 10:54:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of edumazet@google.com designates 2607:f8b0:4864:20::b42 as permitted sender) client-ip=2607:f8b0:4864:20::b42;
Received: by mail-yb1-xb42.google.com with SMTP id y13so9422219ybj.10
        for <clang-built-linux@googlegroups.com>; Mon, 15 Jun 2020 10:54:57 -0700 (PDT)
X-Received: by 2002:a25:941:: with SMTP id u1mr48736662ybm.274.1592243696339;
 Mon, 15 Jun 2020 10:54:56 -0700 (PDT)
MIME-Version: 1.0
References: <20200615062520.GK12456@shao2-debian> <CANn89i+s=oFTq6KFhT0z1CReQPZCGoEPShEFHVvXAmC9sUDH7g@mail.gmail.com>
 <CAKwvOdkv=L=QKQc7HtOi5ZNdao35m18PMr7ep+4sKv5iogVDLg@mail.gmail.com>
In-Reply-To: <CAKwvOdkv=L=QKQc7HtOi5ZNdao35m18PMr7ep+4sKv5iogVDLg@mail.gmail.com>
From: "'Eric Dumazet' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 15 Jun 2020 10:54:45 -0700
Message-ID: <CANn89iJYCHqvCTvzommOL4RHtKLT5wyXMzpWKNfrBFTgs4kNAw@mail.gmail.com>
Subject: Re: net/sched/sch_fq.c:966:12: warning: stack frame size of 1400
 bytes in function 'fq_dump'
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: edumazet@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=BXZKUDKZ;       spf=pass
 (google.com: domain of edumazet@google.com designates 2607:f8b0:4864:20::b42
 as permitted sender) smtp.mailfrom=edumazet@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Eric Dumazet <edumazet@google.com>
Reply-To: Eric Dumazet <edumazet@google.com>
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

On Mon, Jun 15, 2020 at 10:44 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Mon, Jun 15, 2020 at 9:17 AM 'Eric Dumazet' via Clang Built Linux
> <clang-built-linux@googlegroups.com> wrote:
> >
> > On Sun, Jun 14, 2020 at 11:26 PM kernel test robot <lkp@intel.com> wrote:
> > >
> > > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> > > head:   96144c58abe7ff767e754b5b80995f7b8846d49b
> > > commit: 39d010504e6b4485d7ceee167743620dd33f4417 net_sched: sch_fq: add horizon attribute
> > > date:   6 weeks ago
> > > :::::: branch date: 3 hours ago
> > > :::::: commit date: 6 weeks ago
> > > config: arm-randconfig-r006-20200614 (attached as .config)
> > > compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project c669a1ed6386d57a75a602b53266466dae1e1d84)
> > > reproduce (this is a W=1 build):
> > >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> > >         chmod +x ~/bin/make.cross
> > >         # install arm cross compiling tool for clang build
> > >         # apt-get install binutils-arm-linux-gnueabi
> > >         git checkout 39d010504e6b4485d7ceee167743620dd33f4417
> > >         # save the attached .config to linux build tree
> > >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm
> > >
> > > If you fix the issue, kindly add following tag as appropriate
> > > Reported-by: kernel test robot <lkp@intel.com>
> > >
> > > All warnings (new ones prefixed by >>, old ones prefixed by <<):
> > >
> > > >> net/sched/sch_fq.c:966:12: warning: stack frame size of 1400 bytes in function 'fq_dump' [-Wframe-larger-than=]
> > > static int fq_dump(struct Qdisc *sch, struct sk_buff *skb)
> > > ^
> >
> >
> > This looks like a bug in CLANG on ARM, there is no way fq_dump() could
> > consume so much stack space.
>
> You can use
> https://github.com/ClangBuiltLinux/frame-larger-than
> to help debug these.  You might be surprised who's doing larger stack
> allocations than expected.

What is wrong with scripts/checkstack.pl  ?

>
> >
> >
> >
> > > 1 warning generated.
> > >
> > > # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=39d010504e6b4485d7ceee167743620dd33f4417
> > > git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
> > > git remote update linus
> > > git checkout 39d010504e6b4485d7ceee167743620dd33f4417
> > > vim +/fq_dump +966 net/sched/sch_fq.c
> > >
> > > afe4fd062416b1 Eric Dumazet   2013-08-29   965
> > > afe4fd062416b1 Eric Dumazet   2013-08-29  @966  static int fq_dump(struct Qdisc *sch, struct sk_buff *skb)
> > > afe4fd062416b1 Eric Dumazet   2013-08-29   967  {
> > > afe4fd062416b1 Eric Dumazet   2013-08-29   968          struct fq_sched_data *q = qdisc_priv(sch);
> > > 48872c11b77271 Eric Dumazet   2018-11-11   969          u64 ce_threshold = q->ce_threshold;
> > > 39d010504e6b44 Eric Dumazet   2020-05-01   970          u64 horizon = q->horizon;
> > > afe4fd062416b1 Eric Dumazet   2013-08-29   971          struct nlattr *opts;
> > > afe4fd062416b1 Eric Dumazet   2013-08-29   972
> > > ae0be8de9a53cd Michal Kubecek 2019-04-26   973          opts = nla_nest_start_noflag(skb, TCA_OPTIONS);
> > > afe4fd062416b1 Eric Dumazet   2013-08-29   974          if (opts == NULL)
> > > afe4fd062416b1 Eric Dumazet   2013-08-29   975                  goto nla_put_failure;
> > > afe4fd062416b1 Eric Dumazet   2013-08-29   976
> > > 65c5189a2b57b9 Eric Dumazet   2013-11-15   977          /* TCA_FQ_FLOW_DEFAULT_RATE is not used anymore */
> > > 65c5189a2b57b9 Eric Dumazet   2013-11-15   978
> > > 48872c11b77271 Eric Dumazet   2018-11-11   979          do_div(ce_threshold, NSEC_PER_USEC);
> > > 39d010504e6b44 Eric Dumazet   2020-05-01   980          do_div(horizon, NSEC_PER_USEC);
> > > 48872c11b77271 Eric Dumazet   2018-11-11   981
> > > afe4fd062416b1 Eric Dumazet   2013-08-29   982          if (nla_put_u32(skb, TCA_FQ_PLIMIT, sch->limit) ||
> > > afe4fd062416b1 Eric Dumazet   2013-08-29   983              nla_put_u32(skb, TCA_FQ_FLOW_PLIMIT, q->flow_plimit) ||
> > > afe4fd062416b1 Eric Dumazet   2013-08-29   984              nla_put_u32(skb, TCA_FQ_QUANTUM, q->quantum) ||
> > > afe4fd062416b1 Eric Dumazet   2013-08-29   985              nla_put_u32(skb, TCA_FQ_INITIAL_QUANTUM, q->initial_quantum) ||
> > > afe4fd062416b1 Eric Dumazet   2013-08-29   986              nla_put_u32(skb, TCA_FQ_RATE_ENABLE, q->rate_enable) ||
> > > 76a9ebe811fb3d Eric Dumazet   2018-10-15   987              nla_put_u32(skb, TCA_FQ_FLOW_MAX_RATE,
> > > 76a9ebe811fb3d Eric Dumazet   2018-10-15   988                          min_t(unsigned long, q->flow_max_rate, ~0U)) ||
> > > f52ed89971adbe Eric Dumazet   2013-11-15   989              nla_put_u32(skb, TCA_FQ_FLOW_REFILL_DELAY,
> > > f52ed89971adbe Eric Dumazet   2013-11-15   990                          jiffies_to_usecs(q->flow_refill_delay)) ||
> > > 06eb395fa9856b Eric Dumazet   2015-02-04   991              nla_put_u32(skb, TCA_FQ_ORPHAN_MASK, q->orphan_mask) ||
> > > 77879147a3481b Eric Dumazet   2016-09-19   992              nla_put_u32(skb, TCA_FQ_LOW_RATE_THRESHOLD,
> > > 77879147a3481b Eric Dumazet   2016-09-19   993                          q->low_rate_threshold) ||
> > > 48872c11b77271 Eric Dumazet   2018-11-11   994              nla_put_u32(skb, TCA_FQ_CE_THRESHOLD, (u32)ce_threshold) ||
> > > 583396f4ca4d6e Eric Dumazet   2020-03-16   995              nla_put_u32(skb, TCA_FQ_BUCKETS_LOG, q->fq_trees_log) ||
> > > 39d010504e6b44 Eric Dumazet   2020-05-01   996              nla_put_u32(skb, TCA_FQ_TIMER_SLACK, q->timer_slack) ||
> > > 39d010504e6b44 Eric Dumazet   2020-05-01   997              nla_put_u32(skb, TCA_FQ_HORIZON, (u32)horizon) ||
> > > 39d010504e6b44 Eric Dumazet   2020-05-01   998              nla_put_u8(skb, TCA_FQ_HORIZON_DROP, q->horizon_drop))
> > > afe4fd062416b1 Eric Dumazet   2013-08-29   999                  goto nla_put_failure;
> > > afe4fd062416b1 Eric Dumazet   2013-08-29  1000
> > > d59b7d8059ddc4 Yang Yingliang 2014-03-12  1001          return nla_nest_end(skb, opts);
> > > afe4fd062416b1 Eric Dumazet   2013-08-29  1002
> > > afe4fd062416b1 Eric Dumazet   2013-08-29  1003  nla_put_failure:
> > > afe4fd062416b1 Eric Dumazet   2013-08-29  1004          return -1;
> > > afe4fd062416b1 Eric Dumazet   2013-08-29  1005  }
> > > afe4fd062416b1 Eric Dumazet   2013-08-29  1006
> > >
> > > :::::: The code at line 966 was first introduced by commit
> > > :::::: afe4fd062416b158a8a8538b23adc1930a9b88dc pkt_sched: fq: Fair Queue packet scheduler
> > >
> > > :::::: TO: Eric Dumazet <edumazet@google.com>
> > > :::::: CC: David S. Miller <davem@davemloft.net>
> > >
> > > ---
> > > 0-DAY CI Kernel Test Service, Intel Corporation
> > > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> > > _______________________________________________
> > > kbuild mailing list -- kbuild@lists.01.org
> > > To unsubscribe send an email to kbuild-leave@lists.01.org
> >
> > --
> > You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANn89i%2Bs%3DoFTq6KFhT0z1CReQPZCGoEPShEFHVvXAmC9sUDH7g%40mail.gmail.com.
>
>
>
> --
> Thanks,
> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANn89iJYCHqvCTvzommOL4RHtKLT5wyXMzpWKNfrBFTgs4kNAw%40mail.gmail.com.
