Return-Path: <clang-built-linux+bncBDN3ZEGJT4NBBI56T33QKGQET62CQZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x938.google.com (mail-ua1-x938.google.com [IPv6:2607:f8b0:4864:20::938])
	by mail.lfdr.de (Postfix) with ESMTPS id 5390C1F9CEE
	for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jun 2020 18:17:40 +0200 (CEST)
Received: by mail-ua1-x938.google.com with SMTP id n13sf7349699uaj.20
        for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jun 2020 09:17:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592237859; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZAvCDhHtDhyJM6RlbbFx3xPQl2tgMOxRWjZq6DErFhmuzFLAtYi2tg4TMlK2abHbi3
         W8kpHSh/UdtBIxe3bFh+j0QjxnOttmAJiAdSureg1mN5AhGKz7RY/Z+XpVb4Bnfx2v7Z
         oQNMnH7yrHoZPQxj6cpScuKQqsj8IbCLW4AqR7N1bx45+wNOVrhG1TF85QJK0P4OCTuC
         33v62xbSyHzUOoe0GZbtHEVBChUCX86bVp0UguGe5S7ioJsmddbEWJeJ4J1lSVv0DWu7
         FSacTE6wg+4wnq8lkGZcSZpzUEPwdl0WhzRB4dyZ4q9EhrOCFcGFdfOjicKc3fJe6JHw
         FqVA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=LDJhUWy16HHoUJLjMMDXQKFuaOZonKhI+BDwLzsqi9M=;
        b=YrowBQ5Au9yCKBDPUL700IsF8/taRdPfCpii/FVMFye6mdAVK1PXRhj6CRnuAu8TMu
         RW95hQGSJAXiiyL5kvlyjANZ4RGDaFeyV1xFCLhTwQzQFFh2PISvqZD1Na5/1v39UOFI
         JFOXnu3oNxd9lHNAQT+0R8X2Ei6CQ3vFuW620Lv/3J9xpGItHG+QPOU7ihU/OAZhq3mv
         6HaLg26v7IptA5DNGfrF6ZENxNMJrjzWEN8am8uG76nZO1ovEly1dmOVklEynruRHgpY
         I0ILfZKuw+ayfqlBKQkQSXNZDMLeHq0DJvOoVQCL+MqhK01vx7/qVtig7pL6AJOWVYpc
         YN5A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=lJeskhwR;
       spf=pass (google.com: domain of edumazet@google.com designates 2607:f8b0:4864:20::b43 as permitted sender) smtp.mailfrom=edumazet@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LDJhUWy16HHoUJLjMMDXQKFuaOZonKhI+BDwLzsqi9M=;
        b=Ioe5xq8wQbcV7o91o17raQWfmEiFYJ7Wur5UT+/477hF0KTYX4Wy19IXuejlK7n1UL
         D8vTSi8CPg3G+HS5TOzpTahhgUGtmxmQ6Pgz7xPoDqZ/APGBn/VpvumkSrQ+tHJm239g
         UdNH48A+HRDXrYcRvbOCCEC7ghx76JSIOkvjCvWbEZ+0ubcCFKE3MP9RVGr9OdmaFmur
         xG4Zqs/JQXing2fdYdLVHZOuMx48T2hFAyM49QccdO4YBW1G24Bf8ExMI5S+8fVSTgV/
         /zbwqW78dkmqTx9lTgKqj/pNm22gkoJsk/fKMdrtkMPf2It5qa6utqJr3KQp3o3EOz0A
         nizg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LDJhUWy16HHoUJLjMMDXQKFuaOZonKhI+BDwLzsqi9M=;
        b=bOAn/KtpNKbpn+MZVJ6WL5K0LPeVzjrypfSLWMWmynX4vfm22D3MkMIA2cnJ+FXv0A
         ii5BTm4gGONKL5W7lV1ITR2SJHYJNV38271Y+tccFr9Dnrfr55CZo+vZKws/vEmdEj50
         DLaf7jjzmKqr5FYojmeQbaCSxObb3elSCy0c3M+c2cexMzpCPQawLGG4NabZ3maiP7Pi
         uVtp+Pi9daY74a3FWNlnKDmQ/Y/XB3WH7jM/OHZXrCtzc+GGY/tBOJEMMCQpEVUtqzUo
         nFiOJTnBF2AcwznL8TlptsK3Hvy5dkMbfXS1POxVaxUJxX9aLU82GTZEd98oqDnDwry7
         vwzQ==
X-Gm-Message-State: AOAM530zkllP+jMex3hGY51et77hXIXJbUkrZCO2uxO2NxQO+HhFULds
	X2yv5PUJ6Mm3QP1jBndutaQ=
X-Google-Smtp-Source: ABdhPJzI0K3E6h1ASfD1AR/lq7eK9DyoYTz/HN8Vf4XezeAkP5i5E9SFXbHbEaVWSTSSl3SxyM0+KA==
X-Received: by 2002:ab0:36a6:: with SMTP id v6mr19955787uat.62.1592237859243;
        Mon, 15 Jun 2020 09:17:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:8717:: with SMTP id j23ls1524484vsd.11.gmail; Mon, 15
 Jun 2020 09:17:38 -0700 (PDT)
X-Received: by 2002:a05:6102:405:: with SMTP id d5mr4334696vsq.203.1592237858925;
        Mon, 15 Jun 2020 09:17:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592237858; cv=none;
        d=google.com; s=arc-20160816;
        b=eErJlhkP4jwnVEBZ+eUC8JuK5wpFY3f17cnyaxSmFifIFrqs63TDmlCPbBnXJkb7oj
         H2xpBuCgC9k83dUToRF3hTvXfJQfWFMaoJmMjkh1PQ9WLyJKPtxH2MKmqVAwusZMT/HN
         PjaHj39xyvASOmYhH5mJ8AKoltqOZYV854oVcXKSDV/oP91/vCzu4tc3wqXDWEPTACtX
         mZX11Yv94lxGmsUs2wGuKnkIiHuyyl6wYG5pyX4APZZaIet+lN1wt3PgHk2Tdiaar4v8
         2n3WZ0ZcXihR/eWWOq1fUPSsvqjiul+3Rps5Lc9/XQpWU8wr0ssxXlz7FnQ56DCQag5D
         l60g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Pabh76sfUarf2oXKbKydw/4o6+olJ/rhSZulu9Mx0NA=;
        b=pNEDyDjvZyJxq2mqGJ/33NjTsQilYnf3DD1OfsK4Rl700Df9JTzXVDxqklKdVJf9sb
         nYPQegtcvK/0CVMsGGQ50E+zavcFGjHC1ghsmrssnenxaRxIuAulxZal+R4iyNhefJGx
         m1gKNeQl9SqNYV3OCcB1tgzXGtSfI4pG6ucyh+l4KbfycnYV4/MULfowjWPslHRPfzx8
         02Vbiq6VD8ofFINasseVWBBsi7YMh91LmX0j8Vazj587VmFsG2zKDKAP9m5SwibaUO8v
         A6oaFnZ8tlCRdIXEYXCnd+DKEw1wH9ia9HlKqetZwf12jVWpLiStmwqg7pIIg5INk8ZL
         KV+A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=lJeskhwR;
       spf=pass (google.com: domain of edumazet@google.com designates 2607:f8b0:4864:20::b43 as permitted sender) smtp.mailfrom=edumazet@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb43.google.com (mail-yb1-xb43.google.com. [2607:f8b0:4864:20::b43])
        by gmr-mx.google.com with ESMTPS id v13si633745vsk.1.2020.06.15.09.17.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Jun 2020 09:17:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of edumazet@google.com designates 2607:f8b0:4864:20::b43 as permitted sender) client-ip=2607:f8b0:4864:20::b43;
Received: by mail-yb1-xb43.google.com with SMTP id s1so9274972ybo.7
        for <clang-built-linux@googlegroups.com>; Mon, 15 Jun 2020 09:17:38 -0700 (PDT)
X-Received: by 2002:a25:cd87:: with SMTP id d129mr42978714ybf.395.1592237858132;
 Mon, 15 Jun 2020 09:17:38 -0700 (PDT)
MIME-Version: 1.0
References: <20200615062520.GK12456@shao2-debian>
In-Reply-To: <20200615062520.GK12456@shao2-debian>
From: "'Eric Dumazet' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 15 Jun 2020 09:17:26 -0700
Message-ID: <CANn89i+s=oFTq6KFhT0z1CReQPZCGoEPShEFHVvXAmC9sUDH7g@mail.gmail.com>
Subject: Re: net/sched/sch_fq.c:966:12: warning: stack frame size of 1400
 bytes in function 'fq_dump'
To: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com, 
	LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: edumazet@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=lJeskhwR;       spf=pass
 (google.com: domain of edumazet@google.com designates 2607:f8b0:4864:20::b43
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

On Sun, Jun 14, 2020 at 11:26 PM kernel test robot <lkp@intel.com> wrote:
>
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> head:   96144c58abe7ff767e754b5b80995f7b8846d49b
> commit: 39d010504e6b4485d7ceee167743620dd33f4417 net_sched: sch_fq: add horizon attribute
> date:   6 weeks ago
> :::::: branch date: 3 hours ago
> :::::: commit date: 6 weeks ago
> config: arm-randconfig-r006-20200614 (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project c669a1ed6386d57a75a602b53266466dae1e1d84)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install arm cross compiling tool for clang build
>         # apt-get install binutils-arm-linux-gnueabi
>         git checkout 39d010504e6b4485d7ceee167743620dd33f4417
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>, old ones prefixed by <<):
>
> >> net/sched/sch_fq.c:966:12: warning: stack frame size of 1400 bytes in function 'fq_dump' [-Wframe-larger-than=]
> static int fq_dump(struct Qdisc *sch, struct sk_buff *skb)
> ^


This looks like a bug in CLANG on ARM, there is no way fq_dump() could
consume so much stack space.



> 1 warning generated.
>
> # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=39d010504e6b4485d7ceee167743620dd33f4417
> git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
> git remote update linus
> git checkout 39d010504e6b4485d7ceee167743620dd33f4417
> vim +/fq_dump +966 net/sched/sch_fq.c
>
> afe4fd062416b1 Eric Dumazet   2013-08-29   965
> afe4fd062416b1 Eric Dumazet   2013-08-29  @966  static int fq_dump(struct Qdisc *sch, struct sk_buff *skb)
> afe4fd062416b1 Eric Dumazet   2013-08-29   967  {
> afe4fd062416b1 Eric Dumazet   2013-08-29   968          struct fq_sched_data *q = qdisc_priv(sch);
> 48872c11b77271 Eric Dumazet   2018-11-11   969          u64 ce_threshold = q->ce_threshold;
> 39d010504e6b44 Eric Dumazet   2020-05-01   970          u64 horizon = q->horizon;
> afe4fd062416b1 Eric Dumazet   2013-08-29   971          struct nlattr *opts;
> afe4fd062416b1 Eric Dumazet   2013-08-29   972
> ae0be8de9a53cd Michal Kubecek 2019-04-26   973          opts = nla_nest_start_noflag(skb, TCA_OPTIONS);
> afe4fd062416b1 Eric Dumazet   2013-08-29   974          if (opts == NULL)
> afe4fd062416b1 Eric Dumazet   2013-08-29   975                  goto nla_put_failure;
> afe4fd062416b1 Eric Dumazet   2013-08-29   976
> 65c5189a2b57b9 Eric Dumazet   2013-11-15   977          /* TCA_FQ_FLOW_DEFAULT_RATE is not used anymore */
> 65c5189a2b57b9 Eric Dumazet   2013-11-15   978
> 48872c11b77271 Eric Dumazet   2018-11-11   979          do_div(ce_threshold, NSEC_PER_USEC);
> 39d010504e6b44 Eric Dumazet   2020-05-01   980          do_div(horizon, NSEC_PER_USEC);
> 48872c11b77271 Eric Dumazet   2018-11-11   981
> afe4fd062416b1 Eric Dumazet   2013-08-29   982          if (nla_put_u32(skb, TCA_FQ_PLIMIT, sch->limit) ||
> afe4fd062416b1 Eric Dumazet   2013-08-29   983              nla_put_u32(skb, TCA_FQ_FLOW_PLIMIT, q->flow_plimit) ||
> afe4fd062416b1 Eric Dumazet   2013-08-29   984              nla_put_u32(skb, TCA_FQ_QUANTUM, q->quantum) ||
> afe4fd062416b1 Eric Dumazet   2013-08-29   985              nla_put_u32(skb, TCA_FQ_INITIAL_QUANTUM, q->initial_quantum) ||
> afe4fd062416b1 Eric Dumazet   2013-08-29   986              nla_put_u32(skb, TCA_FQ_RATE_ENABLE, q->rate_enable) ||
> 76a9ebe811fb3d Eric Dumazet   2018-10-15   987              nla_put_u32(skb, TCA_FQ_FLOW_MAX_RATE,
> 76a9ebe811fb3d Eric Dumazet   2018-10-15   988                          min_t(unsigned long, q->flow_max_rate, ~0U)) ||
> f52ed89971adbe Eric Dumazet   2013-11-15   989              nla_put_u32(skb, TCA_FQ_FLOW_REFILL_DELAY,
> f52ed89971adbe Eric Dumazet   2013-11-15   990                          jiffies_to_usecs(q->flow_refill_delay)) ||
> 06eb395fa9856b Eric Dumazet   2015-02-04   991              nla_put_u32(skb, TCA_FQ_ORPHAN_MASK, q->orphan_mask) ||
> 77879147a3481b Eric Dumazet   2016-09-19   992              nla_put_u32(skb, TCA_FQ_LOW_RATE_THRESHOLD,
> 77879147a3481b Eric Dumazet   2016-09-19   993                          q->low_rate_threshold) ||
> 48872c11b77271 Eric Dumazet   2018-11-11   994              nla_put_u32(skb, TCA_FQ_CE_THRESHOLD, (u32)ce_threshold) ||
> 583396f4ca4d6e Eric Dumazet   2020-03-16   995              nla_put_u32(skb, TCA_FQ_BUCKETS_LOG, q->fq_trees_log) ||
> 39d010504e6b44 Eric Dumazet   2020-05-01   996              nla_put_u32(skb, TCA_FQ_TIMER_SLACK, q->timer_slack) ||
> 39d010504e6b44 Eric Dumazet   2020-05-01   997              nla_put_u32(skb, TCA_FQ_HORIZON, (u32)horizon) ||
> 39d010504e6b44 Eric Dumazet   2020-05-01   998              nla_put_u8(skb, TCA_FQ_HORIZON_DROP, q->horizon_drop))
> afe4fd062416b1 Eric Dumazet   2013-08-29   999                  goto nla_put_failure;
> afe4fd062416b1 Eric Dumazet   2013-08-29  1000
> d59b7d8059ddc4 Yang Yingliang 2014-03-12  1001          return nla_nest_end(skb, opts);
> afe4fd062416b1 Eric Dumazet   2013-08-29  1002
> afe4fd062416b1 Eric Dumazet   2013-08-29  1003  nla_put_failure:
> afe4fd062416b1 Eric Dumazet   2013-08-29  1004          return -1;
> afe4fd062416b1 Eric Dumazet   2013-08-29  1005  }
> afe4fd062416b1 Eric Dumazet   2013-08-29  1006
>
> :::::: The code at line 966 was first introduced by commit
> :::::: afe4fd062416b158a8a8538b23adc1930a9b88dc pkt_sched: fq: Fair Queue packet scheduler
>
> :::::: TO: Eric Dumazet <edumazet@google.com>
> :::::: CC: David S. Miller <davem@davemloft.net>
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> _______________________________________________
> kbuild mailing list -- kbuild@lists.01.org
> To unsubscribe send an email to kbuild-leave@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANn89i%2Bs%3DoFTq6KFhT0z1CReQPZCGoEPShEFHVvXAmC9sUDH7g%40mail.gmail.com.
