Return-Path: <clang-built-linux+bncBC7OBJGL2MHBB7ED7L2QKGQECTHEWTI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103e.google.com (mail-pj1-x103e.google.com [IPv6:2607:f8b0:4864:20::103e])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BBB11D4D06
	for <lists+clang-built-linux@lfdr.de>; Fri, 15 May 2020 13:50:22 +0200 (CEST)
Received: by mail-pj1-x103e.google.com with SMTP id z2sf1677674pje.9
        for <lists+clang-built-linux@lfdr.de>; Fri, 15 May 2020 04:50:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589543421; cv=pass;
        d=google.com; s=arc-20160816;
        b=A99MnlE/V++9Xggch7aF3KoBs4bazZYO35TOQcPWKumE8Js0FG3AwFvNvnetVz9uMn
         XaI5xIpkbkmiwIZGjxvPAdsF39an6SaJBQWMxCx+gr7H6XmZoiE9A2vT3NsgSvKnpw7b
         F4L3hOCSr8eW1V9+85pkuLdJzuTxgHur7Id6PqwwP25skpJaJpJzohGiB2kBog6DJ/Q+
         JMiLcxkC2tY6Wlca6q5Ip8LB8990MRB3USTB9ixcfUtyGCPOJIiTNUn3IZ/6KBiXgj38
         qBiBsuh5nXBYWp16bDPr4gr7+8mj2e4lLKKlkwpZT5DJaKjPqX8U+MOONFCNAY1I/AUU
         FJbA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Pi/JmKFVyIpK4x1Biku/apbyYlGhRav1lN9QmSMu8ZU=;
        b=OXk8d8v1V2EG4hXX9KcRZjtIg4e9WncalDZkoIOtuVDN1dV+cMP3O8NMciIDZpP8Xz
         NOEbfVhlLinWjhpto6vFRGsMGpfwrzdjo8r5tfks8BF/kND282CMgpIFkCX84DinE8IR
         PIZhTQJHyoSEN30QY3V7Qz3NhtcmoJwMdpy09OwizIkW4q5JJCRfqhW37/pR+E9zdBA+
         NB2khDq2kon96NkhwbfzUwjOF3Sc1QR4HwVH19TwqDwWAfoZsXi9PJvekgqfdkJA0FXX
         wyPKX3A8f/pA8yIqD+A7VvNCEGEMhjdEUk9eSUm+viZmlhc5jk8WbS9prUeQstaPDe7M
         HLRQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=pnq85h+m;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::22b as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Pi/JmKFVyIpK4x1Biku/apbyYlGhRav1lN9QmSMu8ZU=;
        b=flUjtwO+hRUzmYU5k0Axj4NzSzwf3Vzg7ZHzjWugWHFtYQTcnr80h7Vyd1zUuQDFa/
         pk69jUhJGLjP4KULLMOOe2d3YiEv2hIQPQyoHMmMXfuTjkQzJWmjSucdiPA2Vl7LB4v5
         dnqLB86yDsKYP43oXQBOxDCykD8u2ZiaOpl/9v04ZpdsEOdE8u7jzkG3SJRYV0yoYNuo
         JQmxUjQnFnz4byRs9p5DMOFoGJbL9RMpm3zM0QopMG/hN1VH4QCoFmbFXyzraIgII4vo
         3NYLo6IiRDK0Tj/TNs30WMWEys2Q4058sHXt+B+thNe84XQxSKq56LeXjfol7ibytlbT
         WxJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Pi/JmKFVyIpK4x1Biku/apbyYlGhRav1lN9QmSMu8ZU=;
        b=q/gAzt1MWxBrQ0GpiG3khbOQ2HEQjO+tW/Tlx5503uimyBT3RVKFxBPTopYyRL1llL
         UoPYUF37sPS0jyh4P301AahrLSaSD3Kr0Ydn+keOmyiQneMK67twXlCfSKt7qK/PfuFt
         rm6blkrrozwrZA0meBcOzpozfpTrvk+BUZ9Tl3xjZLc0L+Q5zxE5Al/kH05xoV0u/SBt
         LCku1yk5jb6T6D0Pi9axCPQjmJNdvMynX3lREx9a1J5JuNvUbcCNQ7bvLQGXyZwT3qOQ
         Dp2hOJUdwqJZXIeb5M/gtd8U486/KgrTMJ4Uko2NYrlQuRPWdUo3dCBR49hI8nHHKIKq
         cVWQ==
X-Gm-Message-State: AOAM530+xvPy4xWSd8vpFjlccqyWjqDcQwEFRbm9Ql0xxCGBOAdB+WEz
	jrbGlX2KE+f3G/hooS/hpKU=
X-Google-Smtp-Source: ABdhPJzMIcYEdsqhUWgWEfXwYMFzEhxcsd7WAhApD7qo008d7Ly0ALktpy4iWklX8Qj2pVZ0f0oIYA==
X-Received: by 2002:a17:90b:f8c:: with SMTP id ft12mr3151821pjb.127.1589543420849;
        Fri, 15 May 2020 04:50:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:24c:: with SMTP id 70ls784317plc.2.gmail; Fri, 15
 May 2020 04:50:20 -0700 (PDT)
X-Received: by 2002:a17:90a:8c9:: with SMTP id 9mr3147641pjn.183.1589543420313;
        Fri, 15 May 2020 04:50:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589543420; cv=none;
        d=google.com; s=arc-20160816;
        b=sujGx/bTlAZDTEnQGYeNoPYwnM2ZoOuGKM9jcSnMqJPsDoLrdSLwqRPwke0YYXkz60
         +7rG9vgqw4zfjk+SZJTye0+DyWw2DFGDnx+5z6vu4UcJwZo5HlCFVfHoTI2gJhuwy2Ou
         LqGqDUvWVVJmTqi0tsmG2EgNsetv64RTcgGM41Vo9XmyqoTWBle4sx2XY04be+buvHEc
         kXWvSeTN6YasmwmiEiKGT3uGsJDzlf3yoNggLIkQarjRolvx1lBach/vBeidzQDbeILN
         Z45wMvEZSmGooiRYAhzTr3SrfltiNYUqbaMnJmAzvhZzVwet2p2YitDJDk+CxrLBD4W2
         bYfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ZQ13A2cpcZsdZ6QsKqoq0bker+5ijocxW+VIm/CpPP4=;
        b=Wt7QZM54RabXRurwZXxHTnglgxojcRSD5svbosWiHot/7Tvlqx2Lxv7AlMWzrk6QGW
         1M/PsBD26gm0fu3Pv0W2KlqIzScS8IVLjWtI0bzjBazbW0+s7gdy6ANYp5K0rr/1iLob
         7r6I5mxdJ2IoyO3XdQSUdhkhY9zcUq1+O131lrWyN1cLHH4GKL1y0RtH13PQ+B4N0WXS
         iiQ3JaLRGHdzGIWxsQH88juqtmFSHos3G+xNskCvHmRfWz4/1MRiNxTDuIiZSXyeP20K
         dK7sY7x87jCtBkWJfR4/d8efITb+ZWpr1eqpgbqSKoiMB99vm5ixp5d3SMtrbnx5LWVA
         Pl/A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=pnq85h+m;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::22b as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-oi1-x22b.google.com (mail-oi1-x22b.google.com. [2607:f8b0:4864:20::22b])
        by gmr-mx.google.com with ESMTPS id t141si140898pfc.5.2020.05.15.04.50.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 May 2020 04:50:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::22b as permitted sender) client-ip=2607:f8b0:4864:20::22b;
Received: by mail-oi1-x22b.google.com with SMTP id d191so1910200oib.12
        for <clang-built-linux@googlegroups.com>; Fri, 15 May 2020 04:50:20 -0700 (PDT)
X-Received: by 2002:aca:3254:: with SMTP id y81mr1802505oiy.172.1589543419310;
 Fri, 15 May 2020 04:50:19 -0700 (PDT)
MIME-Version: 1.0
References: <CANpmjNNLY9EcSXhBbdjMR2pLJfrgQoffuzs27Xrgx3nOuAUxMQ@mail.gmail.com>
 <CAKwvOdnQaeQ2bLqyXs-H3MZTPBd+yteVG4NiY0Wd05WceAad9g@mail.gmail.com>
 <CANpmjNPLgFdFpHzj5Hb_1CfFzPMmqy3z1O98N=wsr8kQ1VS9_Q@mail.gmail.com>
 <CAKwvOd=0Ducgnkf8tzNGH10_UJSk56Ff_oSyGMddBCyG3Xt5Gg@mail.gmail.com> <20200514191754.dawwxxiv4cqytn2u@treble>
In-Reply-To: <20200514191754.dawwxxiv4cqytn2u@treble>
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 15 May 2020 13:50:07 +0200
Message-ID: <CANpmjNOoB36xu4iBwcOZ=RpjWEMwmqOX1tYU8+m285xXJDHRGg@mail.gmail.com>
Subject: Re: ORC unwinder with Clang
To: Josh Poimboeuf <jpoimboe@redhat.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, kasan-dev <kasan-dev@googlegroups.com>, 
	Dmitry Vyukov <dvyukov@google.com>, Alexander Potapenko <glider@google.com>, 
	Andrey Konovalov <andreyknvl@google.com>, Peter Zijlstra <peterz@infradead.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=pnq85h+m;       spf=pass
 (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::22b as
 permitted sender) smtp.mailfrom=elver@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Marco Elver <elver@google.com>
Reply-To: Marco Elver <elver@google.com>
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

On Thu, 14 May 2020 at 21:18, Josh Poimboeuf <jpoimboe@redhat.com> wrote:
>
> On Thu, May 14, 2020 at 11:34:52AM -0700, Nick Desaulniers wrote:
> > > The stack traces of the races shown should all start with a
> > > "test_kernel_*" function, but do not. Then:
> > >
> > >   sed -i "s/noinline/noinline __attribute__((disable_tail_calls))/"
> > > kernel/kcsan/kcsan-test.c
> > >
> > > which adds the disable_tail_calls attribute to all "test_kernel_*"
> > > functions, and the tests pass.
> >
> > That's a good lead to start with.  Do the tests pass with
> > UNWINDER_FRAME_POINTER rather than UNWINDER_ORC?  Rather than
> > blanketing the kernel with disable_tail_calls, the next steps I
> > recommend is to narrow down which function caller and callee
> > specifically trip up this test.  Maybe from there, we can take a look
> > at the unwind info from objtool that ORC consumes?
>
> After a function does a tail call, it's no longer on the stack, so
> there's no way for an unwinder to find it.

Right, if this is a general limitation of the unwinder, that's fair
enough. However, if we build a kernel where we want to have the full
stack-trace always available, would it be reasonable to assume we need
to build with -fno-optimize-sibling-calls? I can imagine that we'll
need this for the sanitizer builds, for compilation units that want to
be sanitized normally.

Thanks,
-- Marco

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANpmjNOoB36xu4iBwcOZ%3DRpjWEMwmqOX1tYU8%2Bm285xXJDHRGg%40mail.gmail.com.
