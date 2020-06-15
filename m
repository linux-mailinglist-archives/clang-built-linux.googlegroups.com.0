Return-Path: <clang-built-linux+bncBDYJPJO25UGBBK5YT73QKGQEEXZYNPQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3b.google.com (mail-yb1-xb3b.google.com [IPv6:2607:f8b0:4864:20::b3b])
	by mail.lfdr.de (Postfix) with ESMTPS id CF73E1FA1BC
	for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jun 2020 22:38:04 +0200 (CEST)
Received: by mail-yb1-xb3b.google.com with SMTP id r17sf22202576ybj.22
        for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jun 2020 13:38:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592253483; cv=pass;
        d=google.com; s=arc-20160816;
        b=ot+g82Cx8fiZc5lEp3uyUPjKlKdGG00cMNn2WCV5DTeCchTPpjoOs4amZnqw+o1hBI
         oz87BOjKI8jSQe1DxiclANmSMgVnxw/cgpA07DSfXIHT96uj4hXbAsrVWsla/B4MeaGS
         sX1sX8mdgTsHuIDv1rVU1S4z7mM8fhRPj+VOAHqrkQz37lt1OCtRxjxa6qmis4tnh+11
         PxkYJsCuhCrWE6zYSfGWPw4M34E14Vmb0jQk6sf3LOO7g/gTvu+EwPkNa16LrHPd4uF4
         WZJbU59QJXFWoOHiJJG+kTjpVqCAGM0ntQlh8ZS95EzrY+QWAyqcEzddA3pTd9xPn2i2
         tfqw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Q2jqOZnusbTHjhXq8d/Yu//GFwym5W2Bl9xrgAI8YSA=;
        b=y7fNNIo5TTBcv3BnA/+UPETfWyVYJIrs+lfs9bx77YJ8V/8I+At2PeToz5Fn7Dza/p
         EC8F3Ux1dAY19lZUmL9bAf+U7k4i0Hv98+APmfkEacn38k3yYKp++zRIoprsg/HzKiyX
         mLnig6JywZ+NQb3Y1X7i9xoETg/EZgXsdGEXk2r7P4ism8xMiaihPztxv0F+aKR9b+XO
         QsIZnx+b1+H9EH+QN1pwHCjHM5auDeFU737JZpDm/XBtYVSBFcvewcToDrdZj+ptGl5P
         QljEumKCti/U1tTOADZbCqebYr70R6S7PQ99hklT65wtUxU9YoEmS7X6pL7tPkxN2Jao
         MUHA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=RQ1lOe7K;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Q2jqOZnusbTHjhXq8d/Yu//GFwym5W2Bl9xrgAI8YSA=;
        b=m+mb2W3ubPefiCKypVF5H5ehZdRwnb3syLqoTMTMhsNd8K1VPaxEPKnWxidmSY//Qv
         vOBmLu86veeW3EXawkJ8u8iAJ46uvg6LnU0sk++fbigPj3K718fN0IkuY2RTsaOMRKsW
         nj4kG0TOBmXC8XrxDdrdCx4xYozKLewGxPUAtU66bFeag1kpkJ9k4Lw73QPJy1RrQF6r
         tw7QnhabaUJae7A1DUiP8B7jt6fPaIGBSqmrlfHkmDX3v+0vqETweLSQAuZjtLv8YiDG
         Fjt6Q+WFC/ul20qYtOIdGaXkm1i8HHzkyyt02Xb6DoA8jhSMtJUWAYNpBPji9Du29viz
         JLGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Q2jqOZnusbTHjhXq8d/Yu//GFwym5W2Bl9xrgAI8YSA=;
        b=qcnog5pUqyWcVuGdtxzDfHx1lqsdeYDmVx8/V+14dnzry4hNmRMAguIjwLYh6xDnfh
         13h4yB5JJV+fXhw+F8gDU7nfAi8ACpjYxfZ4fWlWQUKF9/etjNzyq/jdRzzya01LUeSi
         i2axW7Jbid4n8Rb5vixrWiiXEhc7OpjVsm2jzYy/foVh7qHA7upvPRgqlExbBm6dEcHg
         xwaQ4dSDq0H0AFIUWL/1r3Kv/xZEkiQULXZcP2NlckIQJm4jv9QuRBI0TZcwZkX9p7Sf
         656h/t5Re3ZiXR7aeb/2EZIMXUCVphQ+ebQJutIsk2Pw4O33jXnsh9J5nUo3gQrxLPwK
         BWeQ==
X-Gm-Message-State: AOAM5311QBr+rT2QCo+ilXt/ge0geLqQY9e7UftyEAhx1sONHWVSOe3z
	h53Jo8KD2kkZrvyx8RHsNlo=
X-Google-Smtp-Source: ABdhPJx0OIZrIVm6U3HtAOzk8Z35TXkUVrdbjOC1l2LmGo8ePHDTfW3ka3oyhWUXp3vwVMK3slSEZw==
X-Received: by 2002:a25:a128:: with SMTP id z37mr5896971ybh.218.1592253483685;
        Mon, 15 Jun 2020 13:38:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:6602:: with SMTP id a2ls6492955ybc.0.gmail; Mon, 15 Jun
 2020 13:38:03 -0700 (PDT)
X-Received: by 2002:a25:14d5:: with SMTP id 204mr49171283ybu.446.1592253483017;
        Mon, 15 Jun 2020 13:38:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592253483; cv=none;
        d=google.com; s=arc-20160816;
        b=od8SkgvIXRxWmSbtfWDZM+FJaJVblFd59OW4gBjG9NK0zvnZJEEHkzEbwy7qgfUHdX
         mR+vppHKHXj41w7tupXdcnZM49oaPfmfufQ4fIkeka9QclK9mKPwG6pmG/xJX4MyQIVT
         ofSJvbIrsedXjsZeKfLWLh7W0K3qjGXTq96ytnwrJjLTt4DAsonJkFLTeWwORr/i5chC
         1GZ7yPu5lEylPcn1EqumnI4X59TMSF+DZypHRCGUGqHZX5sfId2MibSrt4Ws6QqCQd8E
         jbLxUxUy3r+PjL5abccSq9eGs/S5uFV0gBi4nU9scu/grJdg1TrLAu7/MdB9zkaqZ6hG
         bZSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=SunJ+ksgxRGUUET414B+EHV50RYfGJX4kW99g2JaYio=;
        b=wBLDswxxJlgG92buapr4/5P+42aeDVPN9TC4JYow3VAvnUiAEGOGeKtVl2MVYHsndh
         mp2+paxai7D9QOL66huSP4iqKwIqiCdEsPGA/OUsP9Cfotvna9LC4sfrfobgV5Lz6pFY
         RDNsrw/tiQE7o1PG2/64QPyWESvA34k46iywycdqbLxk4p04PnJ9RtI8Bj11zhhABn6r
         rHN/hH9HYPNnz6OguIAh3KN0pkr7EOyF4Aqnx02FH+H8qDLHsdF4GL6cMuS4DVdcXKJY
         fffNsXIWgVxEDgaRBo/RllUnt6wN868nTbgzx2+rXCmwsyalhIFWCLlkADXXbOfagmly
         9OXA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=RQ1lOe7K;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id k11si1259745ybb.4.2020.06.15.13.38.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Jun 2020 13:38:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Received: by mail-pj1-x1041.google.com with SMTP id k2so348360pjs.2
        for <clang-built-linux@googlegroups.com>; Mon, 15 Jun 2020 13:38:02 -0700 (PDT)
X-Received: by 2002:a17:90a:1e:: with SMTP id 30mr941040pja.25.1592253481898;
 Mon, 15 Jun 2020 13:38:01 -0700 (PDT)
MIME-Version: 1.0
References: <20200615062520.GK12456@shao2-debian> <CANn89i+s=oFTq6KFhT0z1CReQPZCGoEPShEFHVvXAmC9sUDH7g@mail.gmail.com>
 <CAKwvOdkv=L=QKQc7HtOi5ZNdao35m18PMr7ep+4sKv5iogVDLg@mail.gmail.com>
 <CANn89iJYCHqvCTvzommOL4RHtKLT5wyXMzpWKNfrBFTgs4kNAw@mail.gmail.com>
 <CANn89iLnmKaa30tPoyK_GrJr-_ALYBwjcJ0pBcvmckA9PAvrgA@mail.gmail.com>
 <CAKwvOd=shEiDQZxZPyUCC=CJLrzmP5FHr04cE-KVN_-6+qz1jQ@mail.gmail.com>
 <CANn89i+sQTXxvMOujdCO_dUb06AXPns8EcLN6OjnccwaFm+M3A@mail.gmail.com> <CAKwvOd=CmgMLvNBbfZ6tQPk-dRhunPDOwL-NGDNiNvU6pV8TJQ@mail.gmail.com>
In-Reply-To: <CAKwvOd=CmgMLvNBbfZ6tQPk-dRhunPDOwL-NGDNiNvU6pV8TJQ@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 15 Jun 2020 13:37:50 -0700
Message-ID: <CAKwvOdme9sUqrz8yd0zTyAapTWA4ugtsR4ebUO48wFFZF5Ug8w@mail.gmail.com>
Subject: Re: net/sched/sch_fq.c:966:12: warning: stack frame size of 1400
 bytes in function 'fq_dump'
To: Eric Dumazet <edumazet@google.com>
Cc: kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>, 
	Ard Biesheuvel <ardb@kernel.org>, Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=RQ1lOe7K;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041
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

+ Arnd (sorry, Ard, I'm sure that happens too often than you'd like.
I'll try to be less trigger happy on the autocomplete)

On Mon, Jun 15, 2020 at 1:36 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Mon, Jun 15, 2020 at 11:45 AM Eric Dumazet <edumazet@google.com> wrote:
> >
> > On Mon, Jun 15, 2020 at 11:07 AM Nick Desaulniers
> > <ndesaulniers@google.com> wrote:
> > >
> > > On Mon, Jun 15, 2020 at 10:59 AM 'Eric Dumazet' via Clang Built Linux
> > > <clang-built-linux@googlegroups.com> wrote:
> > > >
> > > > On Mon, Jun 15, 2020 at 10:54 AM Eric Dumazet <edumazet@google.com> wrote:
> > > > >
> > > > > On Mon, Jun 15, 2020 at 10:44 AM Nick Desaulniers
> > > > > <ndesaulniers@google.com> wrote:
> > > > > >
> > > > > > On Mon, Jun 15, 2020 at 9:17 AM 'Eric Dumazet' via Clang Built Linux
> > > > > > <clang-built-linux@googlegroups.com> wrote:
> > > > > > >
> > > > > > > On Sun, Jun 14, 2020 at 11:26 PM kernel test robot <lkp@intel.com> wrote:
> > > > > > > >
> > > > > > > > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> > > > > > > > head:   96144c58abe7ff767e754b5b80995f7b8846d49b
> > > > > > > > commit: 39d010504e6b4485d7ceee167743620dd33f4417 net_sched: sch_fq: add horizon attribute
> > > > > > > > date:   6 weeks ago
> > > > > > > > :::::: branch date: 3 hours ago
> > > > > > > > :::::: commit date: 6 weeks ago
> > > > > > > > config: arm-randconfig-r006-20200614 (attached as .config)
> > > > > > > > compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project c669a1ed6386d57a75a602b53266466dae1e1d84)
> > > > > > > > reproduce (this is a W=1 build):
> > > > > > > >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> > > > > > > >         chmod +x ~/bin/make.cross
> > > > > > > >         # install arm cross compiling tool for clang build
> > > > > > > >         # apt-get install binutils-arm-linux-gnueabi
> > > > > > > >         git checkout 39d010504e6b4485d7ceee167743620dd33f4417
> > > > > > > >         # save the attached .config to linux build tree
> > > > > > > >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm
> > > > > > > >
> > > > > > > > If you fix the issue, kindly add following tag as appropriate
> > > > > > > > Reported-by: kernel test robot <lkp@intel.com>
> > > > > > > >
> > > > > > > > All warnings (new ones prefixed by >>, old ones prefixed by <<):
> > > > > > > >
> > > > > > > > >> net/sched/sch_fq.c:966:12: warning: stack frame size of 1400 bytes in function 'fq_dump' [-Wframe-larger-than=]
> > > > > > > > static int fq_dump(struct Qdisc *sch, struct sk_buff *skb)
> > > > > > > > ^
> > > > > > >
> > > > > > >
> > > > > > > This looks like a bug in CLANG on ARM, there is no way fq_dump() could
> > > > > > > consume so much stack space.
> > > > > >
> > > > > > You can use
> > > > > > https://github.com/ClangBuiltLinux/frame-larger-than
> > > > > > to help debug these.  You might be surprised who's doing larger stack
> > > > > > allocations than expected.
> > > > >
> > > > > What is wrong with scripts/checkstack.pl  ?
> > > >
> > > > After using CLANG on x86 I get :
> > > >
> > > > $ objdump -d net/sched/sch_fq.o | scripts/checkstack.pl
> > > > 0x00001136 fq_change [sch_fq.o]: 192
> > > > 0x00000016 __direct_call_Qdisc_enqueue1 [sch_fq.o]: 112
> > > > 0x000019e0 fq_dump_stats [sch_fq.o]: 112
> > > > 0x00001b43 fq_dump_stats [sch_fq.o]: 112
> > > >
> > > > So CLANG on x86 seems fine.
> > > >
> > > > I said : " this looks like a bug in CLANG on ARM"
> > >
> > > This is a randconfig, so some option is turning on something that's
> > > causing excessive stack usage with your patch on ARM.  Building who
> > > knows what config with x86 and claiming it works doesn't really cut
> > > it.  You looked at fq_dump and claimed it should be fine.  Did you
> > > verify each called function that was inlined?
> >
> > Nick, my patch added exactly _one_ u64 variable in the stack.
> > That's a whooping  8 bytes, right ?
>
> What if I add a single byte of stack usage, and that's enough to trip
> this warning?  Not my problem?
>
> >
> > We should be able to use as many nla_put_u32() calls in a function,
> > without changing stack sizes.
>
> That's good to know, see below. (That not be the case here).
>
> >
> > If CLANG can not do that, then this is a CLANG problem, I have no
> > intention of fixing it,
> > I hope this is very clear ;)
>
> At least you tested it with Clang, so I appreciate you taking the time
> to do that.  Here's how we might go about debugging this further:
>
> $ git checkout 39d010504e6b4485d7ceee167743620dd33f4417
> $ wget https://lore.kernel.org/lkml/20200615062520.GK12456@shao2-debian/2-a.bin
> -O .config.gz
> $ gunzip .config.gz
> $ ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- make CC=clang -j71
> net/sched/sch_fq.o
> ...
> net/sched/sch_fq.c:966:12: warning: stack frame size of 1400 bytes in
> function 'fq_dump' [-Wframe-larger-than=]
> $ python3 /path/to/frame_larger_than.py net/sched/sch_fq.o fq_dump
> fq_dump:
>         8       u64                             horizon
>         8       u64                             ce_threshold
>         4       struct fq_sched_data*           q
>         4       struct nlattr*                  opts
> qdisc_priv:
> nla_nest_start_noflag:
>         4       struct nlattr*                  start
>         4       struct nlattr*                  start
> skb_tail_pointer:
>         4       uint32_t                        __base
>         4       uint32_t                        __rem
> is_power_of_2:
>         4       uint32_t                        __n_lo
>         4       uint32_t                        __res_lo
>         8       uint64_t                        ___n
>         8       uint64_t                        ___m
>         4       uint32_t                        ___bias
>         8       uint64_t                        ___res
>         8       uint64_t                        ___t
>         8       uint64_t                        ___x
>         4       uint32_t                        ___p
> __arch_xprod_64:
>         4       unsigned int                    tmp
>         8       long long unsigned int          res
>         4       unsigned int                    tmp
>         8       long long unsigned int          res
>         4       uint32_t                        __base
>         4       uint32_t                        __rem
> is_power_of_2:
>         4       uint32_t                        __n_lo
>         4       uint32_t                        __res_lo
>         8       uint64_t                        ___n
>         8       uint64_t                        ___res
>         8       uint64_t                        ___t
>         8       uint64_t                        ___x
>         8       uint64_t                        ___m
>         4       uint32_t                        ___p
>         4       uint32_t                        ___bias
> __arch_xprod_64:
>         4       unsigned int                    tmp
>         8       long long unsigned int          res
>         4       unsigned int                    tmp
>         8       long long unsigned int          res
> nla_put_u32:
>         4       u32                             tmp
>         4       u32                             tmp
> nla_put_u32:
>         4       u32                             tmp
>         4       u32                             tmp
> nla_put_u32:
>         4       u32                             tmp
>         4       u32                             tmp
> nla_put_u32:
>         4       u32                             tmp
>         4       u32                             tmp
> nla_put_u32:
>         4       u32                             tmp
>         4       u32                             tmp
>         4       long unsigned int               __UNIQUE_ID___y256
>         4       long unsigned int               __UNIQUE_ID___x255
> nla_put_u32:
>         4       u32                             tmp
>         4       u32                             tmp
> nla_put_u32:
>         4       u32                             tmp
>         4       u32                             tmp
> nla_put_u32:
>         4       u32                             tmp
>         4       u32                             tmp
> nla_put_u32:
>         4       u32                             tmp
>         4       u32                             tmp
> nla_put_u32:
>         4       u32                             tmp
>         4       u32                             tmp
> nla_put_u32:
>         4       u32                             tmp
>         4       u32                             tmp
> nla_put_u32:
>         4       u32                             tmp
>         4       u32                             tmp
> nla_put_u32:
>         4       u32                             tmp
>         4       u32                             tmp
> nla_put_u8:
>         1       u8                              tmp
>         1       u8                              tmp
> nla_nest_end:
> skb_tail_pointer:
>
> So is_power_of_2/__arch_xprod_64 looks excessively large, and the
> nla_put_u* routines seem to have 2 temporary variables?
>
> (I should update the tool to better denote the end of an inlined
> frame; I don't think is_power_of_2 is the source, it looks like
> do_div() calls with 64b non-integer constant expressions. Having those
> be macros vs noinline_for_stack might be of interest for the non-ICE
> case, cc Arnd).
>
> Let me see if I can extend the tool to print file+line numbers so we
> can see if those `tmp`s are one in the same or not.
>
> >
> > >
> > >
> > > And the issue with checkstack is it tells you the depth, but not *what
> > > variables* and from which inlined function may be the cause.
> >
> >
> > OK. Thank you.
> >
> >
> > >
> > >
> > > >
> > > >
> > > >
> > > > >
> > > > > >
> > > > > > >
> > > > > > >
> > > > > > >
> > > > > > > > 1 warning generated.
> > > > > > > >
> > > > > > > > # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=39d010504e6b4485d7ceee167743620dd33f4417
> > > > > > > > git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
> > > > > > > > git remote update linus
> > > > > > > > git checkout 39d010504e6b4485d7ceee167743620dd33f4417
> > > > > > > > vim +/fq_dump +966 net/sched/sch_fq.c
> > > > > > > >
> > > > > > > > afe4fd062416b1 Eric Dumazet   2013-08-29   965
> > > > > > > > afe4fd062416b1 Eric Dumazet   2013-08-29  @966  static int fq_dump(struct Qdisc *sch, struct sk_buff *skb)
> > > > > > > > afe4fd062416b1 Eric Dumazet   2013-08-29   967  {
> > > > > > > > afe4fd062416b1 Eric Dumazet   2013-08-29   968          struct fq_sched_data *q = qdisc_priv(sch);
> > > > > > > > 48872c11b77271 Eric Dumazet   2018-11-11   969          u64 ce_threshold = q->ce_threshold;
> > > > > > > > 39d010504e6b44 Eric Dumazet   2020-05-01   970          u64 horizon = q->horizon;
> > > > > > > > afe4fd062416b1 Eric Dumazet   2013-08-29   971          struct nlattr *opts;
> > > > > > > > afe4fd062416b1 Eric Dumazet   2013-08-29   972
> > > > > > > > ae0be8de9a53cd Michal Kubecek 2019-04-26   973          opts = nla_nest_start_noflag(skb, TCA_OPTIONS);
> > > > > > > > afe4fd062416b1 Eric Dumazet   2013-08-29   974          if (opts == NULL)
> > > > > > > > afe4fd062416b1 Eric Dumazet   2013-08-29   975                  goto nla_put_failure;
> > > > > > > > afe4fd062416b1 Eric Dumazet   2013-08-29   976
> > > > > > > > 65c5189a2b57b9 Eric Dumazet   2013-11-15   977          /* TCA_FQ_FLOW_DEFAULT_RATE is not used anymore */
> > > > > > > > 65c5189a2b57b9 Eric Dumazet   2013-11-15   978
> > > > > > > > 48872c11b77271 Eric Dumazet   2018-11-11   979          do_div(ce_threshold, NSEC_PER_USEC);
> > > > > > > > 39d010504e6b44 Eric Dumazet   2020-05-01   980          do_div(horizon, NSEC_PER_USEC);
> > > > > > > > 48872c11b77271 Eric Dumazet   2018-11-11   981
> > > > > > > > afe4fd062416b1 Eric Dumazet   2013-08-29   982          if (nla_put_u32(skb, TCA_FQ_PLIMIT, sch->limit) ||
> > > > > > > > afe4fd062416b1 Eric Dumazet   2013-08-29   983              nla_put_u32(skb, TCA_FQ_FLOW_PLIMIT, q->flow_plimit) ||
> > > > > > > > afe4fd062416b1 Eric Dumazet   2013-08-29   984              nla_put_u32(skb, TCA_FQ_QUANTUM, q->quantum) ||
> > > > > > > > afe4fd062416b1 Eric Dumazet   2013-08-29   985              nla_put_u32(skb, TCA_FQ_INITIAL_QUANTUM, q->initial_quantum) ||
> > > > > > > > afe4fd062416b1 Eric Dumazet   2013-08-29   986              nla_put_u32(skb, TCA_FQ_RATE_ENABLE, q->rate_enable) ||
> > > > > > > > 76a9ebe811fb3d Eric Dumazet   2018-10-15   987              nla_put_u32(skb, TCA_FQ_FLOW_MAX_RATE,
> > > > > > > > 76a9ebe811fb3d Eric Dumazet   2018-10-15   988                          min_t(unsigned long, q->flow_max_rate, ~0U)) ||
> > > > > > > > f52ed89971adbe Eric Dumazet   2013-11-15   989              nla_put_u32(skb, TCA_FQ_FLOW_REFILL_DELAY,
> > > > > > > > f52ed89971adbe Eric Dumazet   2013-11-15   990                          jiffies_to_usecs(q->flow_refill_delay)) ||
> > > > > > > > 06eb395fa9856b Eric Dumazet   2015-02-04   991              nla_put_u32(skb, TCA_FQ_ORPHAN_MASK, q->orphan_mask) ||
> > > > > > > > 77879147a3481b Eric Dumazet   2016-09-19   992              nla_put_u32(skb, TCA_FQ_LOW_RATE_THRESHOLD,
> > > > > > > > 77879147a3481b Eric Dumazet   2016-09-19   993                          q->low_rate_threshold) ||
> > > > > > > > 48872c11b77271 Eric Dumazet   2018-11-11   994              nla_put_u32(skb, TCA_FQ_CE_THRESHOLD, (u32)ce_threshold) ||
> > > > > > > > 583396f4ca4d6e Eric Dumazet   2020-03-16   995              nla_put_u32(skb, TCA_FQ_BUCKETS_LOG, q->fq_trees_log) ||
> > > > > > > > 39d010504e6b44 Eric Dumazet   2020-05-01   996              nla_put_u32(skb, TCA_FQ_TIMER_SLACK, q->timer_slack) ||
> > > > > > > > 39d010504e6b44 Eric Dumazet   2020-05-01   997              nla_put_u32(skb, TCA_FQ_HORIZON, (u32)horizon) ||
> > > > > > > > 39d010504e6b44 Eric Dumazet   2020-05-01   998              nla_put_u8(skb, TCA_FQ_HORIZON_DROP, q->horizon_drop))
> > > > > > > > afe4fd062416b1 Eric Dumazet   2013-08-29   999                  goto nla_put_failure;
> > > > > > > > afe4fd062416b1 Eric Dumazet   2013-08-29  1000
> > > > > > > > d59b7d8059ddc4 Yang Yingliang 2014-03-12  1001          return nla_nest_end(skb, opts);
> > > > > > > > afe4fd062416b1 Eric Dumazet   2013-08-29  1002
> > > > > > > > afe4fd062416b1 Eric Dumazet   2013-08-29  1003  nla_put_failure:
> > > > > > > > afe4fd062416b1 Eric Dumazet   2013-08-29  1004          return -1;
> > > > > > > > afe4fd062416b1 Eric Dumazet   2013-08-29  1005  }
> > > > > > > > afe4fd062416b1 Eric Dumazet   2013-08-29  1006
> > > > > > > >
> > > > > > > > :::::: The code at line 966 was first introduced by commit
> > > > > > > > :::::: afe4fd062416b158a8a8538b23adc1930a9b88dc pkt_sched: fq: Fair Queue packet scheduler
> > > > > > > >
> > > > > > > > :::::: TO: Eric Dumazet <edumazet@google.com>
> > > > > > > > :::::: CC: David S. Miller <davem@davemloft.net>
> > > > > > > >
> > > > > > > > ---
> > > > > > > > 0-DAY CI Kernel Test Service, Intel Corporation
> > > > > > > > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> > > > > > > > _______________________________________________
> > > > > > > > kbuild mailing list -- kbuild@lists.01.org
> > > > > > > > To unsubscribe send an email to kbuild-leave@lists.01.org
> > > > > > >
> > > > > > > --
> > > > > > > You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> > > > > > > To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> > > > > > > To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANn89i%2Bs%3DoFTq6KFhT0z1CReQPZCGoEPShEFHVvXAmC9sUDH7g%40mail.gmail.com.
> > > > > >
> > > > > >
> > > > > >
> > > > > > --
> > > > > > Thanks,
> > > > > > ~Nick Desaulniers
> > > >
> > > > --
> > > > You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> > > > To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> > > > To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANn89iLnmKaa30tPoyK_GrJr-_ALYBwjcJ0pBcvmckA9PAvrgA%40mail.gmail.com.
> > >
> > >
> > >
> > > --
> > > Thanks,
> > > ~Nick Desaulniers
>
>
>
> --
> Thanks,
> ~Nick Desaulniers



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdme9sUqrz8yd0zTyAapTWA4ugtsR4ebUO48wFFZF5Ug8w%40mail.gmail.com.
