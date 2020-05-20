Return-Path: <clang-built-linux+bncBDYJPJO25UGBBN5XSX3AKGQESS7C5LA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 699191DB97F
	for <lists+clang-built-linux@lfdr.de>; Wed, 20 May 2020 18:32:57 +0200 (CEST)
Received: by mail-pg1-x540.google.com with SMTP id g11sf2873530pgd.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 20 May 2020 09:32:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589992375; cv=pass;
        d=google.com; s=arc-20160816;
        b=DXxZ6dk/mJ8WTe9mEZ+q44gXN9SVvgKrOKcH54s01kAjFd2TBjK5UaMzXJPGncNcX6
         kYzap54udt1RDKafVs54O0juCDqU7dJJfckemRJmGHBEzKYeRLBty+AVwqoTdfoRRRcj
         TXNw/3kehFAhzG8u/R62C2xPAdmZB9+iyLYASB7Rj31BwBsWm28o6p9WTMNBZkjr3Ca7
         Y1FQCi6FtZbcvenY7CoB8fxmxUraNI8Up8wS5x/3ibRBeJ3xXQGOu3N4iFpQBIWV5zgF
         UeJfN0mCSgC3c3btvpKK8heybUJ15J45EnIsD9nQfkCpDtGFTxHepB1E/0w1g4OY/1Xc
         EHtg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=ldfCY/4vmKGiQvO4QFMVmkLlrA4XXmVkW7mZEdV6x1E=;
        b=yirEq8tJFSOnt0tZ882yVRdJj4IkLrYSHyct2ADa7zfyeuXRWRGGLwXX/A/sRIbIWy
         xIftD1Y3FXmT3LNLGq8KFidem3obT0GaKjwoIK2cui1GGOOqvCqy6ZKJ6eyxM+SP1EIG
         AgKpSxpimeUdZ8sjh0wfeghAJPrOpaU0hUNNCU7Ouo+SO6EoqDHR1OuetJJOScz6+Aek
         clsFDQWY4kGNgGQJlnpKNHk3jL0aBXURCCzeIPQ72DiUhKNIC2hJiWYx8w8fKkcNi6Uc
         +PxhbS0e9OQR1unqN7KcW+Xmyhya1bDPAvTOXRYFaoB4IyO4JKhK6lOQZPT6RSIisQQH
         JM+A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="Lop/y0Dk";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ldfCY/4vmKGiQvO4QFMVmkLlrA4XXmVkW7mZEdV6x1E=;
        b=aDFWJV9Tnkbb7VxV9Cfjt2XiYGqDc8y1QDMjdRR/yuL+5oewZgyDCuxpBGXRGzuunh
         BSGPnEqzWAdSk31LGokUzKnTs00CYjcHRegO+XoDF0rToRNd5MByDwForvlrx++I/j6F
         qPrFMlzFrIArWU5TIuUZ2wvLKuszHBYBZjaT+i3S7gRqrZM+n8whXb9kAPg1hhsqmzrb
         YBDOo61r6C37Gmm6qhXhneFiiLXhNw7uLlnHm6lLVaHA8/GQOwM6GmrXz852UbjPugW4
         syLmDyXggMBlEsM1K/GCs8giSi1usPP/e7BAHkH4JNYHS/ObFLdiRzvFsROIWjQY6Ucj
         h7BA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ldfCY/4vmKGiQvO4QFMVmkLlrA4XXmVkW7mZEdV6x1E=;
        b=MWofvov8KYXFfK+o9MneSqOMLE5KK7jtXnq9IUyJuWI091PjR8FHOluW7BD3qplAri
         r2+TudId9nFBJOR+p00Y+w9Eq3jid39CJeaOWaR54dAs2ltzlvXIqsTqGJn/NUyr/f2k
         Fkd6EBLq1lpzUDEUuuEUJI51yZHOChuNRyjW7dRQ595d+IhynT1f1KbQK5MikwkFEAPZ
         /PA4iSxijs32fXuur/5WMhPjsFLuKkq1loCvSWWQYdvr9m0GiKzYUjj3O0chdKWx30Ns
         3naWTLe0qJAoLDd4w4CoQdi7WW8zdagfhE1lmOrfm4nlqrhe/F1gNXj/k7bxoaDu2LhF
         jFTg==
X-Gm-Message-State: AOAM532jM7rBAIrCwvX5k3KvfwGCTmWntCJaKoxSrI2RdIU4rn1rw/05
	LRDaWN8FVlX7GKyUbaAxjcA=
X-Google-Smtp-Source: ABdhPJwcnIvoG/0ZViU5LSvzbH05C3FtoV7j33lxIXgXR54eDjCd1j9oUA1z7L3JzZemUzFdmBNkTQ==
X-Received: by 2002:a17:902:d894:: with SMTP id b20mr5354768plz.156.1589992375421;
        Wed, 20 May 2020 09:32:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:a717:: with SMTP id w23ls1211316plq.7.gmail; Wed, 20
 May 2020 09:32:55 -0700 (PDT)
X-Received: by 2002:a17:90b:8d8:: with SMTP id ds24mr6718637pjb.55.1589992374976;
        Wed, 20 May 2020 09:32:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589992374; cv=none;
        d=google.com; s=arc-20160816;
        b=SoPkNWHFWKcsYK2xM+viyGdVHz9fyXOtOo47INGIqCJYRW0B2U8JeUFkKGeInzllKn
         2skE5sDwbgXXiUu6dd3r9CfB0opGgdogS+eNZf79DwrQoB/gv4WoBm+voCRzMAnu0Nnu
         S5JJ5h7Mop/Sg7oVQkQyoFRJO/0he+CXOMdCcIa12VcPEeF/ipA39g4aA88gxOU69fGY
         HZXaLLSn7zc8ByeaVczMzcVcV2IAxym+fVMIcQv+pFjO+8KplMbwlZLmxTOxyk2B1LCU
         o6yiuCi3LhKM7pJ9w2FlndLYOrSMFPMi0VG0e4nISy3eK9JyPCnsEOjj+wRDpPokOAQe
         Tvgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=yx+SO7MaZlAD9vie5x6QfkffO8b6beNlaHDdml9CWsM=;
        b=RodksU9CTurMRo2o5sJH1PCehbK3qwgs7qeMDWYhaD5Dvq47GTqybP+gDr81VUJJWp
         +YXNPZorCtE1GK46L1vwE7p0yF+gRs2wpOwHg1z6vdlg/x5B5A6VJRtHKjpMFLSGHvHn
         jCfS4yYoNJdZf+G+m5ighgDvZ0yI9hXPdCgwori92Fl2EYFcOyITXvNmwP0mKKqWrtxT
         GmzGYZmJwiih8PPTAaEb6bAtye5/89byCV8emnytgHjp3h3X33Ro0GTyxLyvc1o8As2t
         t53/djR5ELN1+GFeVAmgtiUtfbd49R1DlY1A1z6VGeoFUbuCRQKV8LWutihkS5cAbrKM
         c2BQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="Lop/y0Dk";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id lt18si249002pjb.0.2020.05.20.09.32.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 May 2020 09:32:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id q8so1816261pfu.5
        for <clang-built-linux@googlegroups.com>; Wed, 20 May 2020 09:32:54 -0700 (PDT)
X-Received: by 2002:aa7:8084:: with SMTP id v4mr5089195pff.39.1589992374419;
 Wed, 20 May 2020 09:32:54 -0700 (PDT)
MIME-Version: 1.0
References: <20200517011732.GE24705@shao2-debian> <20200517034739.GO2869@paulmck-ThinkPad-P72>
 <CANpmjNNj37=mgrZpzX7joAwnYk-GsuiE8oOm13r48FYAK0gSQw@mail.gmail.com>
 <CANpmjNMx0+=Cac=WvHuzKb2zJvgNVvVxjo_W1wYWztywxDKeCQ@mail.gmail.com>
 <CANpmjNPcOHAE5d=gaD327HqxTBegf75qeN_pjoszahdk6_i5=Q@mail.gmail.com>
 <CAKwvOd=Gi2z_NjRfpTigCCcV5kUWU7Bm7h1eHLeQ6DZCmrsR8w@mail.gmail.com>
 <20200518180513.GA114619@google.com> <CANpmjNMTRO0TxxTQxFt8EaRLggcPXKLJL2+G2WFL+vakgd2OUg@mail.gmail.com>
 <CANpmjNO0kDVW4uaLcOF95L3FKc8WjawJqXKQtYbCad+W2r=75g@mail.gmail.com> <CANpmjNOeXmD5E3O50Z3MjkiuCYaYOPyi+1rq=GZvEKwBvLR0Ug@mail.gmail.com>
In-Reply-To: <CANpmjNOeXmD5E3O50Z3MjkiuCYaYOPyi+1rq=GZvEKwBvLR0Ug@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 20 May 2020 09:32:43 -0700
Message-ID: <CAKwvOd=ga4cjJCQASVH=Vwjkk5_Qh7b_TtoTSBBoLiMENL8hOQ@mail.gmail.com>
Subject: Re: [rcu] 2f08469563: BUG:kernel_reboot-without-warning_in_boot_stage
To: Marco Elver <elver@google.com>
Cc: george.burgess.iv@gmail.com, Kan Liang <kan.liang@linux.intel.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, kasan-dev <kasan-dev@googlegroups.com>, 
	kernel test robot <rong.a.chen@intel.com>, Peter Zijlstra <peterz@infradead.org>, 
	LKML <linux-kernel@vger.kernel.org>, LKP <lkp@lists.01.org>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Dmitry Vyukov <dvyukov@google.com>, 
	Alexander Potapenko <glider@google.com>, Andrey Konovalov <andreyknvl@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="Lop/y0Dk";       spf=pass
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

On Tue, May 19, 2020 at 11:32 AM Marco Elver <elver@google.com> wrote:
>
> This fixes the problem:
> https://lkml.kernel.org/r/20200519182459.87166-1-elver@google.com
>
> I suppose there are several things that happened that caused the above
> bisected changes to trigger this. Hard to say how exactly the above
> bisected changes caused this to manifest, because during early boot
> (while uninitialized) KASAN may just randomly enter kasan_report()
> before the branch (annotated with likely(), which is caught by the
> branch tracer) prevents it from actually generating a report. However,
> if it goes branch tracer -> KASAN -> branch tracers -> KASAN ..., then
> we crash. If I had to guess some combination of different code gen,
> different stack and/or data usage. So all the above bisected changes
> (AFAIK) were red herrings. :-)

Thanks for chasing to resolution.  Consider using a variable to store
a list of flags, as that code (before your patch) invokes the compiler
multiple times to answer the same question.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3Dga4cjJCQASVH%3DVwjkk5_Qh7b_TtoTSBBoLiMENL8hOQ%40mail.gmail.com.
