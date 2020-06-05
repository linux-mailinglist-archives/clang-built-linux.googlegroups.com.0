Return-Path: <clang-built-linux+bncBDX4HWEMTEBRBWUP5H3AKGQE3USOYYY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13d.google.com (mail-il1-x13d.google.com [IPv6:2607:f8b0:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A2D51EF8F4
	for <lists+clang-built-linux@lfdr.de>; Fri,  5 Jun 2020 15:25:51 +0200 (CEST)
Received: by mail-il1-x13d.google.com with SMTP id c11sf6373497ilq.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 05 Jun 2020 06:25:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591363550; cv=pass;
        d=google.com; s=arc-20160816;
        b=YgB2d72JmeF/+et5k5GKcNOvx/IyDJDLpoTcuIZ/ZDZPPZTt0GbiUJ++d0VDbrVeup
         8oleVuDxtnQcWDYK5rsCQXg+wLSw5H0mtlUiFRE3Kp4/3x3INFGVyR1DfGHejmX3etcD
         CWQLwGG1dIbKYEThqqGVAvNt5KKKbiBnuAg4XQFABAv2H8LTLhrmTy55O0Lmzx4I77t0
         F6NYc9K06qQnx0iTlS+QF9ac8Ez3TmSmi46nMj4ArX/8XoWQ8T90qj8tMo1uB266zTDR
         Zj4hVeJboAAIXAinjP2xkbwelvad2mRqASYl346Cp/sHPZwWg8UZmGP0drhWU6b/MMkj
         8e5w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Cf3nUgN0tdleiRaufEgac6fObLJsqjmVdy1sJbCuhSQ=;
        b=Ujlu342cBDjGcpS/+J0+4kjvQe4AqNBbgdsJuvB1bvSbRfK2dIJSO2a+9DwiIWmhDi
         t1i7SoBZJ0kxHn+3TU2HNPqMK+PUsFPlbXRAL4wMtkpiI1GzpC13d8DugA+VdeeiLFnH
         lw6tSk27TEZYUYAQGvAP7GSGTfd60Kp4yciTjmvH13FcUdudKYnM7H9di3hmCXUtmC6S
         mDuXH8Tn/gmWA8sbKJjEEGc+8y+q9V8dKubVGCrLPnk5bFslc9WaR9XH6YIkghMaQ/Mo
         zj4XTpaLEh6VSbgZdNlWelqcG8s/nAgXA83uTqwqqt/b/G1KT93hYlmaN9UarYn1bMCe
         D1uA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=WaP9I3El;
       spf=pass (google.com: domain of andreyknvl@google.com designates 2607:f8b0:4864:20::431 as permitted sender) smtp.mailfrom=andreyknvl@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Cf3nUgN0tdleiRaufEgac6fObLJsqjmVdy1sJbCuhSQ=;
        b=K+Cb/IDc3sK7UdNwn+LROuyGP6Ff2TfH5lt7Cek6nWCTNHmU0O8cGHM53RsWH2eI4V
         rNQyh9DdcQTed0v7DjPcqhV9wwcITyHpxpL+xD4qZUQ1teB9WxgGyphPewKmot9lhUZN
         4FtuQ2TZuHa2SpZBPtM8IH7eXTb9NlJzg5nBAPGT10l8ILgwEmim1bxkVlf13hLVmzGx
         54vxe2ReDzdHtr5SmWkackED8xSEseh2Dfm+SAHIDpVmvAhkf1eOB6KkBRP632OASSCG
         sOABKjUDPlyxmtMEl7943PHsQs2n7qpGh8/KfeOWvKvzB588KkXXjqpfGrzr40OvrcOY
         6F/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Cf3nUgN0tdleiRaufEgac6fObLJsqjmVdy1sJbCuhSQ=;
        b=IaPDCBqiLjWXioFb+D4rDSwOorsv7cohKz+2iJe9Af9dbkwrhvym//BdI/HMl7YcSs
         rMDyrz91SV6DoaPcJyWnEYD0rgeCL+H9qRKN03BZBZ7n2zUFlJ8fQiWNtsf7A09Rv1fY
         KMofu5G36Vp64vDtSZ77VjOLzJBKm4QqFnagA/PFd+SVO/ZRL9iIa/Gfd4AA5JeWOTLt
         Y+rcHpf+cpWd2JDqHAv3H1nIKbIbH/2sNWDat3jxgr+zPxzTPnvS3pu1UYt05orceSDD
         gqqisl8zPb0x+bVp8DiT6SMajnfsQp1nI72NLH0XftuHtwPqSWSWsDQBqvfggitYKpx6
         tX+A==
X-Gm-Message-State: AOAM533FEwUW76fupC4wH/0F6iUbouytxkznas70MbzxWA4zYsTVS2Gq
	5KdUzCXGSGv5eUdOZsr9Xx4=
X-Google-Smtp-Source: ABdhPJx70F9jpVKKiwSN8H/HXHqIeu22e8owZv0fNSOAgvlGQznIlDFrLEFBsCsjn0ttGfenEOz2eQ==
X-Received: by 2002:a92:4a04:: with SMTP id m4mr8862144ilf.228.1591363547050;
        Fri, 05 Jun 2020 06:25:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:84c6:: with SMTP id y67ls2449880ilk.10.gmail; Fri, 05
 Jun 2020 06:25:46 -0700 (PDT)
X-Received: by 2002:a92:d984:: with SMTP id r4mr8443133iln.302.1591363546584;
        Fri, 05 Jun 2020 06:25:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591363546; cv=none;
        d=google.com; s=arc-20160816;
        b=pgPbFg+O5pKpVFwtHycgWDgsQmtKKlgrIE3G5mpaR6/Z4zF+XOeyoq6p05FAH5Cgwr
         TQLZKBBwCWVvQ4VvYaJ0cPdW/W/7BFkmXm601cecG5QxlJOeVq8IP99oXP3CQryFy9u7
         AHT1WGuvX+owcjgQQpgnrm9oXFRLl5mwzRBSZ7UDAygSELtKOU9b9KZmUC2gThBPakf2
         sMPgkVhPj69L2e5IYgISSGzNKAHIk+3Ikbs+NwHW14M2tEt37AcjgZQg5Ci7vV6dunnL
         YGirYT9RFvaj2q2AX5u2OLq9tjXQSYnu2hmYooRpWSFMjSVRdmgLplUXTUFVt/wp6ZXm
         1GSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=xJJnlLNjBPmVl14e43YLrTf5lqn0jzr6Vaq59xpn/uY=;
        b=fqQFO5+A3NgYtMjcH2rKNBL318Uu7quJq+QyVtl1NfBmURDB0g8V5dXpUbiELJ0ywA
         9FvpKiig4hwZ2h5oL5wojzsxoTdm5dWs86BSdYKQtKIzpkaeL9zKG97BGDBpm5oLQJc7
         6BofXqPwVyUnNYvGNmmIwAFirU/MWNlHY4CPNgdr4fJkHThRPyzABNbHN9kNTNUVFnxb
         eZCL9ndkURUsSQWWVp2hwI6NX7SYHqGPLEZ+gH/n37pGU1w9XF1fJtH/rUie+UqJ106b
         Ih9jY45s95Fujvkpg0+t0e+LPY3ix5ppJ/Lsw1YdWyrjl3yEMNhgoo7/5Xemharci3GZ
         cWbg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=WaP9I3El;
       spf=pass (google.com: domain of andreyknvl@google.com designates 2607:f8b0:4864:20::431 as permitted sender) smtp.mailfrom=andreyknvl@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x431.google.com (mail-pf1-x431.google.com. [2607:f8b0:4864:20::431])
        by gmr-mx.google.com with ESMTPS id v16si317730ilj.1.2020.06.05.06.25.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Jun 2020 06:25:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of andreyknvl@google.com designates 2607:f8b0:4864:20::431 as permitted sender) client-ip=2607:f8b0:4864:20::431;
Received: by mail-pf1-x431.google.com with SMTP id 23so4019434pfw.10
        for <clang-built-linux@googlegroups.com>; Fri, 05 Jun 2020 06:25:46 -0700 (PDT)
X-Received: by 2002:a63:e454:: with SMTP id i20mr9457353pgk.440.1591363545752;
 Fri, 05 Jun 2020 06:25:45 -0700 (PDT)
MIME-Version: 1.0
References: <20200605082839.226418-1-elver@google.com> <CACT4Y+ZqdZD0YsPHf8UFJT94yq5KGgbDOXSiJYS0+pjgYDsx+A@mail.gmail.com>
 <20200605120352.GJ3976@hirez.programming.kicks-ass.net>
In-Reply-To: <20200605120352.GJ3976@hirez.programming.kicks-ass.net>
From: "'Andrey Konovalov' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 5 Jun 2020 15:25:34 +0200
Message-ID: <CAAeHK+zErjaB64bTRqjH3qHyo9QstDSHWiMxqvmNYwfPDWSuXQ@mail.gmail.com>
Subject: Re: [PATCH -tip v3 1/2] kcov: Make runtime functions noinstr-compatible
To: Peter Zijlstra <peterz@infradead.org>
Cc: Dmitry Vyukov <dvyukov@google.com>, Marco Elver <elver@google.com>, 
	Mark Rutland <mark.rutland@arm.com>, Borislav Petkov <bp@alien8.de>, 
	Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Alexander Potapenko <glider@google.com>, 
	kasan-dev <kasan-dev@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>, 
	"the arch/x86 maintainers" <x86@kernel.org>, Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: andreyknvl@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=WaP9I3El;       spf=pass
 (google.com: domain of andreyknvl@google.com designates 2607:f8b0:4864:20::431
 as permitted sender) smtp.mailfrom=andreyknvl@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Andrey Konovalov <andreyknvl@google.com>
Reply-To: Andrey Konovalov <andreyknvl@google.com>
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

On Fri, Jun 5, 2020 at 2:04 PM Peter Zijlstra <peterz@infradead.org> wrote:
>
> On Fri, Jun 05, 2020 at 12:57:15PM +0200, Dmitry Vyukov wrote:
> > On Fri, Jun 5, 2020 at 10:28 AM Marco Elver <elver@google.com> wrote:
> > >
> > > While we lack a compiler attribute to add to noinstr that would disable
> > > KCOV, make the KCOV runtime functions return if the caller is in a
> > > noinstr section, and mark them noinstr.
> > >
> > > Declare write_comp_data() as __always_inline to ensure it is inlined,
> > > which also reduces stack usage and removes one extra call from the
> > > fast-path.
> > >
> > > In future, our compilers may provide an attribute to implement
> > > __no_sanitize_coverage, which can then be added to noinstr, and the
> > > checks added in this patch can be guarded by an #ifdef checking if the
> > > compiler has such an attribute or not.
> >
> > Adding noinstr attribute to instrumentation callbacks looks fine to me.
> >
> > But I don't understand the within_noinstr_section part.
> > As the cover letter mentions, kcov callbacks don't do much and we
> > already have it inserted and called. What is the benefit of bailing
> > out a bit earlier rather than letting it run to completion?
> > Is the only reason for potential faults on access to the vmalloc-ed
> > region?
>
> Vmalloc faults (on x86, the only arch that had them IIRC) are gone, per
> this merge window.
>
> The reason I mentioned them is because it is important that they are
> gone, and that this hard relies on them being gone, and the patch didn't
> call that out.
>
> There is one additional issue though; you can set hardware breakpoint on
> vmalloc space, and that would trigger #DB and then we'd be dead when we
> were already in #DB (IST recursion FTW).
>
> And that is not something you can trivially fix, because you can set the
> breakpoint before the allocation (or perhaps on a previous allocation).
>
> That said; we already have this problem with task_struct (and
> task_stack). IIRC Andy wants to fix the task_stack issue by making all
> of noinstr run on the entry stack, but we're not there yet.
>
> There are no good proposals for random allocations like task_struct or
> in your case kcov_area.
>
> > Andrey, Mark, do you know if it's possible to pre-fault these areas?
>
> Under the assumption that vmalloc faults are still a thing:
>
> You cannot pre-fault the remote area thing, kernel threads use the mm of
> the previous user task, and there is no guarantee that mm will have had
> the vmalloc fault.

To clarify this part AFAIU it, even if we try to prefault the whole
remote area each time kcov_remote_start() is called, then (let alone
the performance impact) the kernel thread can be rescheduled between
kcov_remote_start() and kcov_remote_stop(), and then it might be
running with a different mm than the one that was used when
kcov_remote_start() happened.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAAeHK%2BzErjaB64bTRqjH3qHyo9QstDSHWiMxqvmNYwfPDWSuXQ%40mail.gmail.com.
