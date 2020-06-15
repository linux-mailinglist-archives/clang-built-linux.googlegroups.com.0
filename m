Return-Path: <clang-built-linux+bncBDN3ZEGJT4NBBB7OT33QKGQEYTJV4QY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x739.google.com (mail-qk1-x739.google.com [IPv6:2607:f8b0:4864:20::739])
	by mail.lfdr.de (Postfix) with ESMTPS id E3CBD1F9EEE
	for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jun 2020 19:59:36 +0200 (CEST)
Received: by mail-qk1-x739.google.com with SMTP id l185sf279257qkd.19
        for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jun 2020 10:59:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592243976; cv=pass;
        d=google.com; s=arc-20160816;
        b=sdIp+DRYCOqP1G9nvQNGAxwXRxFsZEfpemNhekdCOD/qLdXqgG08csq3T8K3l7ePP6
         f94edgwe3TAUseVWXtiah0X3TRbm6eehZ5zoPKzDSJ72DUduwnomfxT9C36efCIe3/kf
         KtOpN3giaE+EUcCx7AXStDIIUd5OD8FJ9Y6qAJioKj7kOSLHV55AwLJFqndpMVhovXoJ
         p55kVvjDWECjn5/TYsHIQU5+e0z3ZWnw7T2L+SpKtj9dxSoAOGp2Wh9ZNGx5kpIaPVv7
         RFwhdH+Cv7ESM59u0BUKIqORpyQCFbNk+iiKSXC+fwTH21xkPSrURB+bZ2QsVYsj5K0R
         Lomw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=AoxvSlXQ1xQNAMcP90hB4LheejRAbiUIAbBZVFYUI68=;
        b=Tx5JMzXoA0FbscYx1frQNCEJphVzdVbO8EkMOoto8grXAaRYKAe6laPvdAsXaxVfwU
         Ka6Tx7tHBip8bfNftfFCOf5wQkG3ICZA707n7DgzkguSjRbwXkzDdViTXfpyxFUYfcLh
         n/JA3G2nsMCAemRCP/mrxDvoShPbpblqBDApvQsRul8BZsByvnWV+cR/9QvwCOqjsPXG
         o6rHs8yS21Fd+f1o2KL6tguGSB8K7dXf5HCPy6cfON47sfPvH7X7sLbh6sEzk3bwTuSL
         jwS8HPRsECmeGrSdaEy452014KOd4fQ8Bj1x4xMQD2g2U/zRHMeKkiS7pJ33lnU7enJh
         z9UQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=aX7NZpUj;
       spf=pass (google.com: domain of edumazet@google.com designates 2607:f8b0:4864:20::b41 as permitted sender) smtp.mailfrom=edumazet@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AoxvSlXQ1xQNAMcP90hB4LheejRAbiUIAbBZVFYUI68=;
        b=dCHVR/JokxrOgSYCx6k+iqt5mRPqixSFxghOfTaF/WuWNla9xpv3jf7hU0lBb6OZxW
         R3tgAdhZ3XAPR45f4lc4vMtN0ZFTzTfD4mPhq5gxfT8ZMOU5bfU9eU9WsISbRG4mYZ7b
         LGRCFJxH/w04M/EzRDess6Ox23JmPCPbuZN8f2WTyEUmJBty7IHUI1LApf9r9EwQRe+c
         zeo4GWpIdd94gbHj4JQYg3cIsmHgzYY0dCYAm6aMM+9mqPijxx/vlsch/RsLGUlrBxFp
         AkzNLvzrCvF0Nzc2kgb8kTgaXsu+y0d6azVhwpSHVKWYM8avw6IwtSodUeNRgyE4FiBp
         RYAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AoxvSlXQ1xQNAMcP90hB4LheejRAbiUIAbBZVFYUI68=;
        b=l88BWYovzNLAOObyFEJykJ9R+hflPaMDC3HEer00ozudSYW1NBtSmbWtI9D7XC5CkX
         Dp4UbLSyy6KgvhxGXzjUFSl7yqUN/Q47u9ulO/H7n5tj3ILLwFWH5SGPhWJ8McsdNcEa
         r2eBFP2kJgADSGU48hHneP1+HfTlxbDmJrl6qmNM6vgg3rdr5YTtLFOpkl1ICO4CzVb2
         yPe8tr2cJR4R3QBlpjy3IKXpzOz9sDdz9LU1/nHSwLkQEBtsXy/nAw7qFj6pIzGdLNYu
         VAEDet1kYcOUMqdUNAAd0KTB1CtdD8hodOoife60GJZSmqJG2gi1oFhSHY5lIy0p80Ju
         cH0Q==
X-Gm-Message-State: AOAM532Qc7JKdQa53swNOK3qbc5tkhafWecdIhW6A+ZJpVheYKot2gPc
	bIyTnOur2vwKyjcduT60+0Q=
X-Google-Smtp-Source: ABdhPJzmkBXFQOpwG9YiiScXFQ+tRDAR8HFc4pzL01NbRQESCKGhHBHsjhNVJjV1rl4pYfgtcP2LDg==
X-Received: by 2002:a05:620a:10ad:: with SMTP id h13mr17241060qkk.373.1592243975823;
        Mon, 15 Jun 2020 10:59:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:fd8e:: with SMTP id p14ls3225583qvr.0.gmail; Mon, 15 Jun
 2020 10:59:35 -0700 (PDT)
X-Received: by 2002:ad4:4429:: with SMTP id e9mr25928284qvt.143.1592243975375;
        Mon, 15 Jun 2020 10:59:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592243975; cv=none;
        d=google.com; s=arc-20160816;
        b=O0QhnFtoDRoAf1iVjZVUeV8gjnNhd2dJc2zNzSPX8yL/+1hTRrTEbYv+UQyqKLd8+L
         Mzove5Y38zfAJ7M3aFK6V7o70JRV8Atd4DzP62Yjh69LDD5eqeJUbIqZQs0h19uyzL3/
         eWh7ctNE1uYuh7uc72rIsfg39U7af44IYfD5YEdE5KVlgFa2FP2gBH6E0h0ApDnPwKeB
         gNp3QKLxy4zSPyv5xgXmHhHDqGOXGuRrHlgT1/vqxYrZic5xM000EJ7zgVWzJyII2LLV
         r/zRALDn1cCvMD+6XSubjpCrCyn0rtNlKXX5jHyKfGu0VMdalAafI2kUdvDCxMd5uhbm
         j7hA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=jrlJhis+vvhdEQ+7PyeK0IRLx+BXwVkhqor/HyedDy0=;
        b=kma0UJ1GSaX8kI3kuekzzBPUQ9sMaOhUnVAViJREvDhb2ItEQuWmcFGKMvP2VrPbIA
         0twpuJXy1LaGKT9zFWiWk13wg3lyAzdf8/SiyN4i5mLHsEPr5AvM7g9j0hmQHyENaayV
         dxNX+bUt37nBQdUEykF2k/OJHumpl0XBY9RJePZNF8lvhPktPE9z7L6hK4BcEWAXwOnC
         3M0byjO8INvGr5OO3hEiFWTC5dvk5zSR5lOGrCcTOMWBY6qfXz28GPJ/UwGq4ZFzIuj/
         4Wh8Z3ozhbGTM1Sdfkv0qo88AojACEWW7ddBFCpDIea9NUV4Z16MogddMoCFbMsNbOzV
         kpLw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=aX7NZpUj;
       spf=pass (google.com: domain of edumazet@google.com designates 2607:f8b0:4864:20::b41 as permitted sender) smtp.mailfrom=edumazet@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb41.google.com (mail-yb1-xb41.google.com. [2607:f8b0:4864:20::b41])
        by gmr-mx.google.com with ESMTPS id x37si837040qtk.5.2020.06.15.10.59.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Jun 2020 10:59:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of edumazet@google.com designates 2607:f8b0:4864:20::b41 as permitted sender) client-ip=2607:f8b0:4864:20::b41;
Received: by mail-yb1-xb41.google.com with SMTP id n123so9419538ybf.11
        for <clang-built-linux@googlegroups.com>; Mon, 15 Jun 2020 10:59:35 -0700 (PDT)
X-Received: by 2002:a25:b8c6:: with SMTP id g6mr3678364ybm.101.1592243974699;
 Mon, 15 Jun 2020 10:59:34 -0700 (PDT)
MIME-Version: 1.0
References: <20200615062520.GK12456@shao2-debian> <CANn89i+s=oFTq6KFhT0z1CReQPZCGoEPShEFHVvXAmC9sUDH7g@mail.gmail.com>
 <CAKwvOdkv=L=QKQc7HtOi5ZNdao35m18PMr7ep+4sKv5iogVDLg@mail.gmail.com> <CANn89iJYCHqvCTvzommOL4RHtKLT5wyXMzpWKNfrBFTgs4kNAw@mail.gmail.com>
In-Reply-To: <CANn89iJYCHqvCTvzommOL4RHtKLT5wyXMzpWKNfrBFTgs4kNAw@mail.gmail.com>
From: "'Eric Dumazet' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 15 Jun 2020 10:59:23 -0700
Message-ID: <CANn89iLnmKaa30tPoyK_GrJr-_ALYBwjcJ0pBcvmckA9PAvrgA@mail.gmail.com>
Subject: Re: net/sched/sch_fq.c:966:12: warning: stack frame size of 1400
 bytes in function 'fq_dump'
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: edumazet@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=aX7NZpUj;       spf=pass
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

On Mon, Jun 15, 2020 at 10:54 AM Eric Dumazet <edumazet@google.com> wrote:
>
> On Mon, Jun 15, 2020 at 10:44 AM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > On Mon, Jun 15, 2020 at 9:17 AM 'Eric Dumazet' via Clang Built Linux
> > <clang-built-linux@googlegroups.com> wrote:
> > >
> > > On Sun, Jun 14, 2020 at 11:26 PM kernel test robot <lkp@intel.com> wrote:
> > > >
> > > > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> > > > head:   96144c58abe7ff767e754b5b80995f7b8846d49b
> > > > commit: 39d010504e6b4485d7ceee167743620dd33f4417 net_sched: sch_fq: add horizon attribute
> > > > date:   6 weeks ago
> > > > :::::: branch date: 3 hours ago
> > > > :::::: commit date: 6 weeks ago
> > > > config: arm-randconfig-r006-20200614 (attached as .config)
> > > > compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project c669a1ed6386d57a75a602b53266466dae1e1d84)
> > > > reproduce (this is a W=1 build):
> > > >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> > > >         chmod +x ~/bin/make.cross
> > > >         # install arm cross compiling tool for clang build
> > > >         # apt-get install binutils-arm-linux-gnueabi
> > > >         git checkout 39d010504e6b4485d7ceee167743620dd33f4417
> > > >         # save the attached .config to linux build tree
> > > >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm
> > > >
> > > > If you fix the issue, kindly add following tag as appropriate
> > > > Reported-by: kernel test robot <lkp@intel.com>
> > > >
> > > > All warnings (new ones prefixed by >>, old ones prefixed by <<):
> > > >
> > > > >> net/sched/sch_fq.c:966:12: warning: stack frame size of 1400 bytes in function 'fq_dump' [-Wframe-larger-than=]
> > > > static int fq_dump(struct Qdisc *sch, struct sk_buff *skb)
> > > > ^
> > >
> > >
> > > This looks like a bug in CLANG on ARM, there is no way fq_dump() could
> > > consume so much stack space.
> >
> > You can use
> > https://github.com/ClangBuiltLinux/frame-larger-than
> > to help debug these.  You might be surprised who's doing larger stack
> > allocations than expected.
>
> What is wrong with scripts/checkstack.pl  ?

After using CLANG on x86 I get :

$ objdump -d net/sched/sch_fq.o | scripts/checkstack.pl
0x00001136 fq_change [sch_fq.o]: 192
0x00000016 __direct_call_Qdisc_enqueue1 [sch_fq.o]: 112
0x000019e0 fq_dump_stats [sch_fq.o]: 112
0x00001b43 fq_dump_stats [sch_fq.o]: 112

So CLANG on x86 seems fine.

I said : " this looks like a bug in CLANG on ARM"



>
> >
> > >
> > >
> > >
> > > > 1 warning generated.
> > > >
> > > > # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=39d010504e6b4485d7ceee167743620dd33f4417
> > > > git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
> > > > git remote update linus
> > > > git checkout 39d010504e6b4485d7ceee167743620dd33f4417
> > > > vim +/fq_dump +966 net/sched/sch_fq.c
> > > >
> > > > afe4fd062416b1 Eric Dumazet   2013-08-29   965
> > > > afe4fd062416b1 Eric Dumazet   2013-08-29  @966  static int fq_dump(struct Qdisc *sch, struct sk_buff *skb)
> > > > afe4fd062416b1 Eric Dumazet   2013-08-29   967  {
> > > > afe4fd062416b1 Eric Dumazet   2013-08-29   968          struct fq_sched_data *q = qdisc_priv(sch);
> > > > 48872c11b77271 Eric Dumazet   2018-11-11   969          u64 ce_threshold = q->ce_threshold;
> > > > 39d010504e6b44 Eric Dumazet   2020-05-01   970          u64 horizon = q->horizon;
> > > > afe4fd062416b1 Eric Dumazet   2013-08-29   971          struct nlattr *opts;
> > > > afe4fd062416b1 Eric Dumazet   2013-08-29   972
> > > > ae0be8de9a53cd Michal Kubecek 2019-04-26   973          opts = nla_nest_start_noflag(skb, TCA_OPTIONS);
> > > > afe4fd062416b1 Eric Dumazet   2013-08-29   974          if (opts == NULL)
> > > > afe4fd062416b1 Eric Dumazet   2013-08-29   975                  goto nla_put_failure;
> > > > afe4fd062416b1 Eric Dumazet   2013-08-29   976
> > > > 65c5189a2b57b9 Eric Dumazet   2013-11-15   977          /* TCA_FQ_FLOW_DEFAULT_RATE is not used anymore */
> > > > 65c5189a2b57b9 Eric Dumazet   2013-11-15   978
> > > > 48872c11b77271 Eric Dumazet   2018-11-11   979          do_div(ce_threshold, NSEC_PER_USEC);
> > > > 39d010504e6b44 Eric Dumazet   2020-05-01   980          do_div(horizon, NSEC_PER_USEC);
> > > > 48872c11b77271 Eric Dumazet   2018-11-11   981
> > > > afe4fd062416b1 Eric Dumazet   2013-08-29   982          if (nla_put_u32(skb, TCA_FQ_PLIMIT, sch->limit) ||
> > > > afe4fd062416b1 Eric Dumazet   2013-08-29   983              nla_put_u32(skb, TCA_FQ_FLOW_PLIMIT, q->flow_plimit) ||
> > > > afe4fd062416b1 Eric Dumazet   2013-08-29   984              nla_put_u32(skb, TCA_FQ_QUANTUM, q->quantum) ||
> > > > afe4fd062416b1 Eric Dumazet   2013-08-29   985              nla_put_u32(skb, TCA_FQ_INITIAL_QUANTUM, q->initial_quantum) ||
> > > > afe4fd062416b1 Eric Dumazet   2013-08-29   986              nla_put_u32(skb, TCA_FQ_RATE_ENABLE, q->rate_enable) ||
> > > > 76a9ebe811fb3d Eric Dumazet   2018-10-15   987              nla_put_u32(skb, TCA_FQ_FLOW_MAX_RATE,
> > > > 76a9ebe811fb3d Eric Dumazet   2018-10-15   988                          min_t(unsigned long, q->flow_max_rate, ~0U)) ||
> > > > f52ed89971adbe Eric Dumazet   2013-11-15   989              nla_put_u32(skb, TCA_FQ_FLOW_REFILL_DELAY,
> > > > f52ed89971adbe Eric Dumazet   2013-11-15   990                          jiffies_to_usecs(q->flow_refill_delay)) ||
> > > > 06eb395fa9856b Eric Dumazet   2015-02-04   991              nla_put_u32(skb, TCA_FQ_ORPHAN_MASK, q->orphan_mask) ||
> > > > 77879147a3481b Eric Dumazet   2016-09-19   992              nla_put_u32(skb, TCA_FQ_LOW_RATE_THRESHOLD,
> > > > 77879147a3481b Eric Dumazet   2016-09-19   993                          q->low_rate_threshold) ||
> > > > 48872c11b77271 Eric Dumazet   2018-11-11   994              nla_put_u32(skb, TCA_FQ_CE_THRESHOLD, (u32)ce_threshold) ||
> > > > 583396f4ca4d6e Eric Dumazet   2020-03-16   995              nla_put_u32(skb, TCA_FQ_BUCKETS_LOG, q->fq_trees_log) ||
> > > > 39d010504e6b44 Eric Dumazet   2020-05-01   996              nla_put_u32(skb, TCA_FQ_TIMER_SLACK, q->timer_slack) ||
> > > > 39d010504e6b44 Eric Dumazet   2020-05-01   997              nla_put_u32(skb, TCA_FQ_HORIZON, (u32)horizon) ||
> > > > 39d010504e6b44 Eric Dumazet   2020-05-01   998              nla_put_u8(skb, TCA_FQ_HORIZON_DROP, q->horizon_drop))
> > > > afe4fd062416b1 Eric Dumazet   2013-08-29   999                  goto nla_put_failure;
> > > > afe4fd062416b1 Eric Dumazet   2013-08-29  1000
> > > > d59b7d8059ddc4 Yang Yingliang 2014-03-12  1001          return nla_nest_end(skb, opts);
> > > > afe4fd062416b1 Eric Dumazet   2013-08-29  1002
> > > > afe4fd062416b1 Eric Dumazet   2013-08-29  1003  nla_put_failure:
> > > > afe4fd062416b1 Eric Dumazet   2013-08-29  1004          return -1;
> > > > afe4fd062416b1 Eric Dumazet   2013-08-29  1005  }
> > > > afe4fd062416b1 Eric Dumazet   2013-08-29  1006
> > > >
> > > > :::::: The code at line 966 was first introduced by commit
> > > > :::::: afe4fd062416b158a8a8538b23adc1930a9b88dc pkt_sched: fq: Fair Queue packet scheduler
> > > >
> > > > :::::: TO: Eric Dumazet <edumazet@google.com>
> > > > :::::: CC: David S. Miller <davem@davemloft.net>
> > > >
> > > > ---
> > > > 0-DAY CI Kernel Test Service, Intel Corporation
> > > > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> > > > _______________________________________________
> > > > kbuild mailing list -- kbuild@lists.01.org
> > > > To unsubscribe send an email to kbuild-leave@lists.01.org
> > >
> > > --
> > > You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> > > To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> > > To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANn89i%2Bs%3DoFTq6KFhT0z1CReQPZCGoEPShEFHVvXAmC9sUDH7g%40mail.gmail.com.
> >
> >
> >
> > --
> > Thanks,
> > ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANn89iLnmKaa30tPoyK_GrJr-_ALYBwjcJ0pBcvmckA9PAvrgA%40mail.gmail.com.
