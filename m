Return-Path: <clang-built-linux+bncBDN3ZEGJT4NBBREDT73QKGQE7EXK3XA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x239.google.com (mail-oi1-x239.google.com [IPv6:2607:f8b0:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id 394601F9F9B
	for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jun 2020 20:45:25 +0200 (CEST)
Received: by mail-oi1-x239.google.com with SMTP id l197sf9432645oih.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jun 2020 11:45:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592246724; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZiqbJpkj3WUH7ei25TcE8cn0OWskuRq5iGMOfS5rpyYCZfo1lpeLapwSNmt/AIKgsW
         j6hPDL2I5CFvRRL5gzLCc4aCGU+rMQXTZrdRHAFumKFxZoz4RJv/JoMs/swUrbD0JZIU
         cWhYCLerBlO752U9+kGAyfnFv/atU6Oqb5xBbF7mtpSctaqWkwbbZaO2Y0H9j7jfjrBM
         2raLTc+BJe4ck0ezWw0X0IZSkKqbRsQ8957pGtfIKRG4+AsEhUD1WsAIUBAnXHIi2J8x
         imr9G75drXtsGYRXVYl9Od6z28vxQkI0tSYDHuH8n86cRJkwbILfo+2Bx1jqXUETyCgU
         sknQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=NQs1y2khNUW8JuQttHzmhLf5C6KdwjQn32vVMEx9rvs=;
        b=qwF/B16IyI7eqOfAy9DU2vg6rtofy3ayPNRXUqWj/FWUwn0RTlqn7CCP92Hys5lxMG
         3KQaLyJKE96BJDzqvcxZGTY1tQUmxgC8TrQoBt/kt0TsO8miB0sapmRrBvdO6+Z97dWL
         EfsObt9MC4F8hKCO9c1zPay1XmgNfcbCK0qNyrfukumVvoXRuYQ+ds/ORTm7oLCCfPoH
         RBtIIv0JcM7QcWaLe8oBGhY2+SIssaYZ288DGwnVfwCePnWCkiC6rQa8W8/utMCZ/q5/
         kD2tDzFWEu68qfEDU1gpA5LvRGg+zbSZCKHpqhcS9Z8wMY483H90WKj30JloTSafimlq
         d94Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="bXk/Ld0B";
       spf=pass (google.com: domain of edumazet@google.com designates 2607:f8b0:4864:20::b41 as permitted sender) smtp.mailfrom=edumazet@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NQs1y2khNUW8JuQttHzmhLf5C6KdwjQn32vVMEx9rvs=;
        b=F30oMRcT3iUUDS+KDvM9pZvSUopiVIAGdgCUKT0VCZ3o6RAaKM0Uiqs89oLidH+xwm
         QiRLhE9XDX3z9u/IL38sFaRt3GNeDNR7vg++9aIFzpT3C+yVZ2ZFd2UDOY5tcUcxYTXk
         rjKKSJdIqFxD80eHHyL5StVXQ4l6IyCUBYwv9sG6puoHtRkWjBsUND7mehZVI01YFyQN
         qJ4UsOkFHRQPqSp9cfcH9+hc/2BMyhBfjI+1aFuDjTbncNboojuoA9uhSERRK7mVxq/w
         evuqJb1KI32dMygfsvovg3oQ6SGsxxSpqFSVNzodlRLAwlOhZ+0yOMLSU4abqqEvqMOb
         k8fA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NQs1y2khNUW8JuQttHzmhLf5C6KdwjQn32vVMEx9rvs=;
        b=Hw/sXdOE4iaBmiLndJBvvKr7cbztbqs7qSr12AgRl37idZS9u3MpkWaJ2xL5P8duNU
         2cLucWZFKFmdJKeETeubIpgrnQLNZULQNBwVdI+ca1A2o5OntU3Dg+Mq1TctpAMz/gwi
         pXuZemRFs0evM8t9WrevdZlnoy06EvpFsXaDAtaOC7yK8uNIAyzcVzeqJUsTDL8WDFhT
         mOZDJ28iH8EP6I1g9RI4wqVRO+jZ++DK29JX6NRidaxDO8F9w7GrQtTJ2QNcThJih9KZ
         FslwJhsJSSGQBIyUUsE5KMkmZjIh6P5MONTI8W1q06Ew5xLJrRvRBJ4Wa7QtHmiQc9hk
         PXMg==
X-Gm-Message-State: AOAM533tzFvYiurVdfpXpREnldGHauYxnx85JKLcfp0Y/5Vmd9V9ILA3
	p00iZqybNWED9MfZG2Ovw+A=
X-Google-Smtp-Source: ABdhPJxsyZk9D6Px1QUHLibkMidQrotT7+JTaMe3paDQ+0/ZLTk30kfgkEmzuBfOurIOyATenRdgXQ==
X-Received: by 2002:a9d:5190:: with SMTP id y16mr22620454otg.68.1592246724075;
        Mon, 15 Jun 2020 11:45:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:3116:: with SMTP id b22ls3274558ots.6.gmail; Mon,
 15 Jun 2020 11:45:23 -0700 (PDT)
X-Received: by 2002:a9d:77ca:: with SMTP id w10mr23730110otl.34.1592246723629;
        Mon, 15 Jun 2020 11:45:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592246723; cv=none;
        d=google.com; s=arc-20160816;
        b=YN1cw2N1xtHBHfHJKwDnkeg4v9z+Byv/tSVEF5EtK9pPXGzRMqYfpnD9bQheokdB5M
         DPEVZPRVz6P1rHQYRay/NYATlBc+UoTKY7rnX096jeXHfqKoKr7A6fZJpeVwpgKciP5J
         5B8s3I+iy0C2GEoxMQM5NnPjGjKbKlcOzFh1bLw2jomM081k3inDi0isn4GxVjPs0X3+
         BTGKlpEjF6sUn008ItvJSOlfFIlzNfikrWxBC9zL+Gtx8rB8EqzLfViypvz5ZsZhKggW
         07+ZvEJgoF+i+nKUdpZ1BG8PZdA/wpe+kXGGK90EyvYGhMjbrGvcuIZL3sj5qRJfALoK
         4CJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Ohz8JkpHJ7j+N0VINUFzbzmPmSY4c151ZpB+6y7lrVQ=;
        b=qu6MUOr2PPlFyqdzvaec8RTBrAL2v9+kZvJa3sirwaLYOFaZBgfXPI81yjnfumMpYM
         LN7BYcDrIW4PrZHiRRvXKHF/oRh1B0E83VEid7ugo3uKIxwbWQ3dtz4kad4n9S+V5cd4
         n1RQr3OXxQmwFbnHPREUlHutYYfccNNpL8yNChFVWjINibYUUBoaoU4+nJJxXY+E7+lO
         2tXdiuXzoM//HueJKhU1Qq1IPk4XOLE3LSlThP6s8qa/NRNtYhAxoKOy+lNfBJ2YJnm6
         oGa3+/N2cNbwB6oYfHyD6fw1dt+FmwenIM4Cs2NYQHq+2j5XBHH4YbuO2tI5jU1TO6lQ
         AZuA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="bXk/Ld0B";
       spf=pass (google.com: domain of edumazet@google.com designates 2607:f8b0:4864:20::b41 as permitted sender) smtp.mailfrom=edumazet@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb41.google.com (mail-yb1-xb41.google.com. [2607:f8b0:4864:20::b41])
        by gmr-mx.google.com with ESMTPS id k69si901627oih.3.2020.06.15.11.45.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Jun 2020 11:45:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of edumazet@google.com designates 2607:f8b0:4864:20::b41 as permitted sender) client-ip=2607:f8b0:4864:20::b41;
Received: by mail-yb1-xb41.google.com with SMTP id j202so9495737ybg.6
        for <clang-built-linux@googlegroups.com>; Mon, 15 Jun 2020 11:45:23 -0700 (PDT)
X-Received: by 2002:a25:941:: with SMTP id u1mr49091006ybm.274.1592246722953;
 Mon, 15 Jun 2020 11:45:22 -0700 (PDT)
MIME-Version: 1.0
References: <20200615062520.GK12456@shao2-debian> <CANn89i+s=oFTq6KFhT0z1CReQPZCGoEPShEFHVvXAmC9sUDH7g@mail.gmail.com>
 <CAKwvOdkv=L=QKQc7HtOi5ZNdao35m18PMr7ep+4sKv5iogVDLg@mail.gmail.com>
 <CANn89iJYCHqvCTvzommOL4RHtKLT5wyXMzpWKNfrBFTgs4kNAw@mail.gmail.com>
 <CANn89iLnmKaa30tPoyK_GrJr-_ALYBwjcJ0pBcvmckA9PAvrgA@mail.gmail.com> <CAKwvOd=shEiDQZxZPyUCC=CJLrzmP5FHr04cE-KVN_-6+qz1jQ@mail.gmail.com>
In-Reply-To: <CAKwvOd=shEiDQZxZPyUCC=CJLrzmP5FHr04cE-KVN_-6+qz1jQ@mail.gmail.com>
From: "'Eric Dumazet' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 15 Jun 2020 11:45:11 -0700
Message-ID: <CANn89i+sQTXxvMOujdCO_dUb06AXPns8EcLN6OjnccwaFm+M3A@mail.gmail.com>
Subject: Re: net/sched/sch_fq.c:966:12: warning: stack frame size of 1400
 bytes in function 'fq_dump'
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: edumazet@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="bXk/Ld0B";       spf=pass
 (google.com: domain of edumazet@google.com designates 2607:f8b0:4864:20::b41
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

On Mon, Jun 15, 2020 at 11:07 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Mon, Jun 15, 2020 at 10:59 AM 'Eric Dumazet' via Clang Built Linux
> <clang-built-linux@googlegroups.com> wrote:
> >
> > On Mon, Jun 15, 2020 at 10:54 AM Eric Dumazet <edumazet@google.com> wrote:
> > >
> > > On Mon, Jun 15, 2020 at 10:44 AM Nick Desaulniers
> > > <ndesaulniers@google.com> wrote:
> > > >
> > > > On Mon, Jun 15, 2020 at 9:17 AM 'Eric Dumazet' via Clang Built Linux
> > > > <clang-built-linux@googlegroups.com> wrote:
> > > > >
> > > > > On Sun, Jun 14, 2020 at 11:26 PM kernel test robot <lkp@intel.com> wrote:
> > > > > >
> > > > > > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> > > > > > head:   96144c58abe7ff767e754b5b80995f7b8846d49b
> > > > > > commit: 39d010504e6b4485d7ceee167743620dd33f4417 net_sched: sch_fq: add horizon attribute
> > > > > > date:   6 weeks ago
> > > > > > :::::: branch date: 3 hours ago
> > > > > > :::::: commit date: 6 weeks ago
> > > > > > config: arm-randconfig-r006-20200614 (attached as .config)
> > > > > > compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project c669a1ed6386d57a75a602b53266466dae1e1d84)
> > > > > > reproduce (this is a W=1 build):
> > > > > >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> > > > > >         chmod +x ~/bin/make.cross
> > > > > >         # install arm cross compiling tool for clang build
> > > > > >         # apt-get install binutils-arm-linux-gnueabi
> > > > > >         git checkout 39d010504e6b4485d7ceee167743620dd33f4417
> > > > > >         # save the attached .config to linux build tree
> > > > > >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm
> > > > > >
> > > > > > If you fix the issue, kindly add following tag as appropriate
> > > > > > Reported-by: kernel test robot <lkp@intel.com>
> > > > > >
> > > > > > All warnings (new ones prefixed by >>, old ones prefixed by <<):
> > > > > >
> > > > > > >> net/sched/sch_fq.c:966:12: warning: stack frame size of 1400 bytes in function 'fq_dump' [-Wframe-larger-than=]
> > > > > > static int fq_dump(struct Qdisc *sch, struct sk_buff *skb)
> > > > > > ^
> > > > >
> > > > >
> > > > > This looks like a bug in CLANG on ARM, there is no way fq_dump() could
> > > > > consume so much stack space.
> > > >
> > > > You can use
> > > > https://github.com/ClangBuiltLinux/frame-larger-than
> > > > to help debug these.  You might be surprised who's doing larger stack
> > > > allocations than expected.
> > >
> > > What is wrong with scripts/checkstack.pl  ?
> >
> > After using CLANG on x86 I get :
> >
> > $ objdump -d net/sched/sch_fq.o | scripts/checkstack.pl
> > 0x00001136 fq_change [sch_fq.o]: 192
> > 0x00000016 __direct_call_Qdisc_enqueue1 [sch_fq.o]: 112
> > 0x000019e0 fq_dump_stats [sch_fq.o]: 112
> > 0x00001b43 fq_dump_stats [sch_fq.o]: 112
> >
> > So CLANG on x86 seems fine.
> >
> > I said : " this looks like a bug in CLANG on ARM"
>
> This is a randconfig, so some option is turning on something that's
> causing excessive stack usage with your patch on ARM.  Building who
> knows what config with x86 and claiming it works doesn't really cut
> it.  You looked at fq_dump and claimed it should be fine.  Did you
> verify each called function that was inlined?

Nick, my patch added exactly _one_ u64 variable in the stack.
That's a whooping  8 bytes, right ?

We should be able to use as many nla_put_u32() calls in a function,
without changing stack sizes.

If CLANG can not do that, then this is a CLANG problem, I have no
intention of fixing it,
I hope this is very clear ;)

>
>
> And the issue with checkstack is it tells you the depth, but not *what
> variables* and from which inlined function may be the cause.


OK. Thank you.


>
>
> >
> >
> >
> > >
> > > >
> > > > >
> > > > >
> > > > >
> > > > > > 1 warning generated.
> > > > > >
> > > > > > # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=39d010504e6b4485d7ceee167743620dd33f4417
> > > > > > git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
> > > > > > git remote update linus
> > > > > > git checkout 39d010504e6b4485d7ceee167743620dd33f4417
> > > > > > vim +/fq_dump +966 net/sched/sch_fq.c
> > > > > >
> > > > > > afe4fd062416b1 Eric Dumazet   2013-08-29   965
> > > > > > afe4fd062416b1 Eric Dumazet   2013-08-29  @966  static int fq_dump(struct Qdisc *sch, struct sk_buff *skb)
> > > > > > afe4fd062416b1 Eric Dumazet   2013-08-29   967  {
> > > > > > afe4fd062416b1 Eric Dumazet   2013-08-29   968          struct fq_sched_data *q = qdisc_priv(sch);
> > > > > > 48872c11b77271 Eric Dumazet   2018-11-11   969          u64 ce_threshold = q->ce_threshold;
> > > > > > 39d010504e6b44 Eric Dumazet   2020-05-01   970          u64 horizon = q->horizon;
> > > > > > afe4fd062416b1 Eric Dumazet   2013-08-29   971          struct nlattr *opts;
> > > > > > afe4fd062416b1 Eric Dumazet   2013-08-29   972
> > > > > > ae0be8de9a53cd Michal Kubecek 2019-04-26   973          opts = nla_nest_start_noflag(skb, TCA_OPTIONS);
> > > > > > afe4fd062416b1 Eric Dumazet   2013-08-29   974          if (opts == NULL)
> > > > > > afe4fd062416b1 Eric Dumazet   2013-08-29   975                  goto nla_put_failure;
> > > > > > afe4fd062416b1 Eric Dumazet   2013-08-29   976
> > > > > > 65c5189a2b57b9 Eric Dumazet   2013-11-15   977          /* TCA_FQ_FLOW_DEFAULT_RATE is not used anymore */
> > > > > > 65c5189a2b57b9 Eric Dumazet   2013-11-15   978
> > > > > > 48872c11b77271 Eric Dumazet   2018-11-11   979          do_div(ce_threshold, NSEC_PER_USEC);
> > > > > > 39d010504e6b44 Eric Dumazet   2020-05-01   980          do_div(horizon, NSEC_PER_USEC);
> > > > > > 48872c11b77271 Eric Dumazet   2018-11-11   981
> > > > > > afe4fd062416b1 Eric Dumazet   2013-08-29   982          if (nla_put_u32(skb, TCA_FQ_PLIMIT, sch->limit) ||
> > > > > > afe4fd062416b1 Eric Dumazet   2013-08-29   983              nla_put_u32(skb, TCA_FQ_FLOW_PLIMIT, q->flow_plimit) ||
> > > > > > afe4fd062416b1 Eric Dumazet   2013-08-29   984              nla_put_u32(skb, TCA_FQ_QUANTUM, q->quantum) ||
> > > > > > afe4fd062416b1 Eric Dumazet   2013-08-29   985              nla_put_u32(skb, TCA_FQ_INITIAL_QUANTUM, q->initial_quantum) ||
> > > > > > afe4fd062416b1 Eric Dumazet   2013-08-29   986              nla_put_u32(skb, TCA_FQ_RATE_ENABLE, q->rate_enable) ||
> > > > > > 76a9ebe811fb3d Eric Dumazet   2018-10-15   987              nla_put_u32(skb, TCA_FQ_FLOW_MAX_RATE,
> > > > > > 76a9ebe811fb3d Eric Dumazet   2018-10-15   988                          min_t(unsigned long, q->flow_max_rate, ~0U)) ||
> > > > > > f52ed89971adbe Eric Dumazet   2013-11-15   989              nla_put_u32(skb, TCA_FQ_FLOW_REFILL_DELAY,
> > > > > > f52ed89971adbe Eric Dumazet   2013-11-15   990                          jiffies_to_usecs(q->flow_refill_delay)) ||
> > > > > > 06eb395fa9856b Eric Dumazet   2015-02-04   991              nla_put_u32(skb, TCA_FQ_ORPHAN_MASK, q->orphan_mask) ||
> > > > > > 77879147a3481b Eric Dumazet   2016-09-19   992              nla_put_u32(skb, TCA_FQ_LOW_RATE_THRESHOLD,
> > > > > > 77879147a3481b Eric Dumazet   2016-09-19   993                          q->low_rate_threshold) ||
> > > > > > 48872c11b77271 Eric Dumazet   2018-11-11   994              nla_put_u32(skb, TCA_FQ_CE_THRESHOLD, (u32)ce_threshold) ||
> > > > > > 583396f4ca4d6e Eric Dumazet   2020-03-16   995              nla_put_u32(skb, TCA_FQ_BUCKETS_LOG, q->fq_trees_log) ||
> > > > > > 39d010504e6b44 Eric Dumazet   2020-05-01   996              nla_put_u32(skb, TCA_FQ_TIMER_SLACK, q->timer_slack) ||
> > > > > > 39d010504e6b44 Eric Dumazet   2020-05-01   997              nla_put_u32(skb, TCA_FQ_HORIZON, (u32)horizon) ||
> > > > > > 39d010504e6b44 Eric Dumazet   2020-05-01   998              nla_put_u8(skb, TCA_FQ_HORIZON_DROP, q->horizon_drop))
> > > > > > afe4fd062416b1 Eric Dumazet   2013-08-29   999                  goto nla_put_failure;
> > > > > > afe4fd062416b1 Eric Dumazet   2013-08-29  1000
> > > > > > d59b7d8059ddc4 Yang Yingliang 2014-03-12  1001          return nla_nest_end(skb, opts);
> > > > > > afe4fd062416b1 Eric Dumazet   2013-08-29  1002
> > > > > > afe4fd062416b1 Eric Dumazet   2013-08-29  1003  nla_put_failure:
> > > > > > afe4fd062416b1 Eric Dumazet   2013-08-29  1004          return -1;
> > > > > > afe4fd062416b1 Eric Dumazet   2013-08-29  1005  }
> > > > > > afe4fd062416b1 Eric Dumazet   2013-08-29  1006
> > > > > >
> > > > > > :::::: The code at line 966 was first introduced by commit
> > > > > > :::::: afe4fd062416b158a8a8538b23adc1930a9b88dc pkt_sched: fq: Fair Queue packet scheduler
> > > > > >
> > > > > > :::::: TO: Eric Dumazet <edumazet@google.com>
> > > > > > :::::: CC: David S. Miller <davem@davemloft.net>
> > > > > >
> > > > > > ---
> > > > > > 0-DAY CI Kernel Test Service, Intel Corporation
> > > > > > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> > > > > > _______________________________________________
> > > > > > kbuild mailing list -- kbuild@lists.01.org
> > > > > > To unsubscribe send an email to kbuild-leave@lists.01.org
> > > > >
> > > > > --
> > > > > You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> > > > > To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> > > > > To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANn89i%2Bs%3DoFTq6KFhT0z1CReQPZCGoEPShEFHVvXAmC9sUDH7g%40mail.gmail.com.
> > > >
> > > >
> > > >
> > > > --
> > > > Thanks,
> > > > ~Nick Desaulniers
> >
> > --
> > You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANn89iLnmKaa30tPoyK_GrJr-_ALYBwjcJ0pBcvmckA9PAvrgA%40mail.gmail.com.
>
>
>
> --
> Thanks,
> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANn89i%2BsQTXxvMOujdCO_dUb06AXPns8EcLN6OjnccwaFm%2BM3A%40mail.gmail.com.
