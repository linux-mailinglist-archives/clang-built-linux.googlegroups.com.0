Return-Path: <clang-built-linux+bncBC2ORX645YPRBQE2UCEQMGQEAH6OZFI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 358D73F9053
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Aug 2021 23:53:11 +0200 (CEST)
Received: by mail-pf1-x440.google.com with SMTP id h14-20020a62b40e0000b02903131bc4a1acsf659857pfn.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 26 Aug 2021 14:53:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630014784; cv=pass;
        d=google.com; s=arc-20160816;
        b=YEtvAu3d+EuDBIS++6TXc5uGBzyluMZafrgnjm96KBgSCHe77FJSU3is/+DI68+34K
         Q93FgjNESrRDXYbFHnZSZBlpUq1lmXNcz0/N+EnuV0s8hKBRmlNY27XpTXHzqbiRXvhK
         OVyXH8x5881nn3TOpRE3MJcp/fHmQQ0FFtybjGjzrYlyXX566iAwOsWIUhl1ZQE0wgA1
         7AlXYGwdxR7CQIuCPap+NATVpUljEbgYf09w8HD7QIxo2CI4sRrD3fR5L7Ci6ei/7plr
         S0NFKEGC3cWiw0tncj/ocYOp4g7CWWTapGL2SrLyihkmKwXMdHaH01rcBCfZA+Vv2nlF
         96sg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=PkbAhHkIQ/7Rz/O/Qlo0jCaPWGoV9ukksAB8YOoRUX8=;
        b=B3dXPyz5QK/I+iSeat0BKpQfA462fUaZHrdMZ+FpWAS4GDL1qEEyFd5Ml9YE43UlW/
         9VkH+ODOXUWr7Zhs88vNZdMxgsGSYLaACsOY5xC+e1KnyIyzokXkfjXucXMFRRE0nYpc
         KXwLWs9HFYApNLFC4qJXWmUezulaPJWRqSUxTXVqZZW50pUYoOp80U4MrJTRacuszWv+
         l1HGZJjonLO4EOgQOtMW7gwcv5K/kVFbx9iNPWSIB/+JYiux5lWmi27V326vZ7qnTFBK
         HTxF5FE2FHm8DORqYXLMpV26IaeiLPqf7eECkpYe8PmAxR3yCJfkFNG+phMeZUEHcHa+
         lG7g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ZrNg7Bo4;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b32 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PkbAhHkIQ/7Rz/O/Qlo0jCaPWGoV9ukksAB8YOoRUX8=;
        b=KTqpPsKEtB9iHUPTBWU132SHW/vrI5TRh8/8ht8IUcQzAAd1Zlkk2ewzXYgbqgCTP9
         /vWUx/citlolAx+vGStp1uvKlaq3m4c75wP7irh7PxOelE+sVwrdXfW2KzVXDz18V66w
         zMAj8Q4lg1xdlArW47Jle7ZRc91ouBEDREVJMHURWR5iNOBfKZFyRK8ijY/zB+SbjKft
         MaIu6HOUdM6OvvjQPye7c3lU89r84YthmRZd2v+OkQ0q6NkB3aDi5vaWuUbNlSwudmbA
         Tht6n9pYaT0pCXgUDB38CPm0/Ohn3AAvWrb48ISq4hUcJmrTQNUdmbGej/MfEiw3Qryn
         l2Ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PkbAhHkIQ/7Rz/O/Qlo0jCaPWGoV9ukksAB8YOoRUX8=;
        b=hkkwWw/4yIzY+EcTK0zpzV+Iv02FrAMqgHueqjL7kevPIwvxiLsFU9QgK62IV4DufZ
         +AKps211oXj52+kLZHTzGGnjEhbB7ZE1QtrHRkRi9wdm89XxqFbuYJHrl8o4I7ztJLXs
         WjFGb7A73c7wDxnN0rMM9HVW4xHL1+tZEeye1+/fVLPww7pUvLqULAMiIlP02Y16xLkk
         DJL5LRI8IPQOChO0L3XOBJmmY8NoL1rkRaIYazUn7LiPqTgbRB4wKmgp2eSAqgOJCbt0
         NazC8FRG3IkywD3wY3spQQISC4F7WRJJ7cU4cXOTBQv+0xf8crgRack6RMbqpXxTy38j
         t0Cg==
X-Gm-Message-State: AOAM533D/wMrJ50z8WHw9fR6xbSdvqOXAtiBRBDgMbL5vDtwdPwKW9Qw
	2J+v6eS5E11e0O183bMfwcM=
X-Google-Smtp-Source: ABdhPJyKmn1UevYQ0N8pCB1eHLSfzwNRvOTu+N3qoeVxw97N+jN++bmMJyb/ZMlZhBREogVyXCwKUg==
X-Received: by 2002:a63:dd51:: with SMTP id g17mr5065934pgj.47.1630014784465;
        Thu, 26 Aug 2021 14:53:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:3fc2:: with SMTP id u2ls1101739pjm.0.gmail; Thu, 26
 Aug 2021 14:53:03 -0700 (PDT)
X-Received: by 2002:a17:902:7598:b029:12b:e9ca:dfd5 with SMTP id j24-20020a1709027598b029012be9cadfd5mr5584079pll.12.1630014783781;
        Thu, 26 Aug 2021 14:53:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630014783; cv=none;
        d=google.com; s=arc-20160816;
        b=dpCDFzQ4I076WQVJJxvXpEzXLUvowuzZFicGsxaFJh9x0cZ+j1pmyLlAGuNbaHLYEG
         OoIs7lt8xl82XwDSpujAa1VH1Wc3NrKPI8Qo5yllCG+eKM8FuvPqS3g7Ayhqk7o6jjX/
         LabQfLIbzWnann6k7OwLcv/0iWMe8ui5fa3jZW2v0vadUuO9K5ueNwQ+UgfHoZlsMeNU
         INuOE244Fw7sLAu6GZ2hg3UN5yQtvwMtJXyowLK58WYixk+89MPQhOzNIzKy0LnmraQI
         LLLsW3zj9APwuLPTcq2ttNjkzH/4aTQjkHRvdU2KyRNOK6D5FO7D8rMMSaMWvnbadAav
         0s8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=gfy9phaIWoHBE3uI65EYNKDvQCtWXxOpvN3CFJWIW2k=;
        b=yaMRFyMSUvdLh36JAZNE0z6fvMQ+GFPAq4lWqzSHVIC3ZgktGMSf9dSgccagdaFJK9
         OawlaNPJK+goLd6wlphErzPtkt0wBQ/CSXs7kGhH6hkR4/YGS4+N3NyoK6+5hc3VKWhf
         RPThPPmB2YVXrLV+pVNb2kfLcsQ7SMBvs+cEKqPCCndWdUSY49qFSL57DtuMAiyRqOXv
         vPm7HgMMWJB8mrZdsK6NWvoYbmEKORqNY1Ea4u5vZ02//Bm15p5rB8uTh/8w1c5IoVbs
         8qI/CWiK+bizQn1Q0GD5F+pYkjLf2kWxI9jXJE8tGAp5w3hZaqPjtI7xtDa3R1HVeQve
         1lGA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ZrNg7Bo4;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b32 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb32.google.com (mail-yb1-xb32.google.com. [2607:f8b0:4864:20::b32])
        by gmr-mx.google.com with ESMTPS id nu6si541626pjb.3.2021.08.26.14.53.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Aug 2021 14:53:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b32 as permitted sender) client-ip=2607:f8b0:4864:20::b32;
Received: by mail-yb1-xb32.google.com with SMTP id f15so8706767ybg.3
        for <clang-built-linux@googlegroups.com>; Thu, 26 Aug 2021 14:53:03 -0700 (PDT)
X-Received: by 2002:a25:4f08:: with SMTP id d8mr1113798ybb.476.1630014783182;
 Thu, 26 Aug 2021 14:53:03 -0700 (PDT)
MIME-Version: 1.0
References: <20210823171318.2801096-1-samitolvanen@google.com>
 <20210824194652.GB17784@worktop.programming.kicks-ass.net>
 <CABCJKud6JBk0QP0aSqM3ptRqbZLfKpfsHNF0RcTq4L-rbc7+uw@mail.gmail.com> <YSd+f9aY3kpdUo4r@hirez.programming.kicks-ass.net>
In-Reply-To: <YSd+f9aY3kpdUo4r@hirez.programming.kicks-ass.net>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 26 Aug 2021 14:52:51 -0700
Message-ID: <CABCJKufTnno7nydrf_eKHUgGrEdxxA_JOpRaDMkdYCHdK2F+UA@mail.gmail.com>
Subject: Re: [PATCH v2 00/14] x86: Add support for Clang CFI
To: Peter Zijlstra <peterz@infradead.org>
Cc: X86 ML <x86@kernel.org>, Kees Cook <keescook@chromium.org>, 
	Josh Poimboeuf <jpoimboe@redhat.com>, Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Sedat Dilek <sedat.dilek@gmail.com>, 
	linux-hardening@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Steven Rostedt <rostedt@goodmis.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ZrNg7Bo4;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b32
 as permitted sender) smtp.mailfrom=samitolvanen@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

On Thu, Aug 26, 2021 at 4:44 AM Peter Zijlstra <peterz@infradead.org> wrote:
>
> On Wed, Aug 25, 2021 at 08:49:36AM -0700, Sami Tolvanen wrote:
> > On Tue, Aug 24, 2021 at 12:47 PM Peter Zijlstra <peterz@infradead.org> wrote:
> > >
> > > On Mon, Aug 23, 2021 at 10:13:04AM -0700, Sami Tolvanen wrote:
> > > > This series adds support for Clang's Control-Flow Integrity (CFI)
> > > > checking to x86_64. With CFI, the compiler injects a runtime
> > > > check before each indirect function call to ensure the target is
> > > > a valid function with the correct static type. This restricts
> > > > possible call targets and makes it more difficult for an attacker
> > > > to exploit bugs that allow the modification of stored function
> > > > pointers. For more details, see:
> > >
> > > If I understand this right; tp_stub_func() in kernel/tracepoint.c
> > > violates this (as would much of the HAVE_STATIC_CALL=n code, luckily
> > > that is not a valid x86_64 configuration).
> > >
> > > Specifically, we assign &tp_stub_func to tracepoint_func::func, but that
> > > function pointer is only ever indirectly called when cast to the
> > > tracepoint prototype:
> > >
> > >   ((void(*)(void *, proto))(it_func))(__data, args);
> > >
> > > (see DEFINE_TRACE_FN() in linux/tracepoint.h)
> > >
> > > This means the indirect function type and the target function type
> > > mismatch, resulting in that runtime check you added to trigger.
> >
> > Thanks for pointing this out. Yes, that would clearly trip CFI.
> >
> > Any concerns about just writing a magic value to the slot instead of
> > pointing it to a stub function, and checking for it before the call?
>
> Performance :-) that compare is going to be useless roughly 100% of the
> time.

Makes sense. I suppose we could move the call into a macro and do the
comparison only when CFI is enabled to avoid a performance hit with
other configs.

> > > Hitting tp_stub_func() at runtime is exceedingly rare, but possible.
> > >
> > > I realize this is strictly UB per C, but realistically any CDECL ABI
> > > requires that any function with arbitrary signature:
> > >
> > >   void foo(...)
> > >   {
> > >   }
> > >
> > > translates to the exact same code. Specifically on x86-64, the super
> > > impressive:
> > >
> > > foo:
> > >         RET
> > >
> > > And as such this works just fine. Except now you wrecked it.
> >
> > Sure. Another option is to disable CFI for the functions that perform
> > the call, but I would rather avoid that whenever possible.
>
> Is there no means of teaching the compiler about these magical
> functions? There's only two possible stubs:
>
>   void foo(...)
>   {
>   }
>
> and
>
>   unsigned long bar(...)
>   {
>         return 0;
>   }
>
> Both exist in the kernel. We can easily give them a special function
> attribute to call them out.

Clang doesn't have a way to always allow calls to specific functions,
but it might be feasible to implement this in the slowpath handler
without explicit compiler support. I'll see if I can come up with
something reasonable for v3.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKufTnno7nydrf_eKHUgGrEdxxA_JOpRaDMkdYCHdK2F%2BUA%40mail.gmail.com.
