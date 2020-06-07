Return-Path: <clang-built-linux+bncBCMIZB7QWENRBXHK6L3AKGQEJAEYBNQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x840.google.com (mail-qt1-x840.google.com [IPv6:2607:f8b0:4864:20::840])
	by mail.lfdr.de (Postfix) with ESMTPS id 677691F0AAF
	for <lists+clang-built-linux@lfdr.de>; Sun,  7 Jun 2020 11:37:33 +0200 (CEST)
Received: by mail-qt1-x840.google.com with SMTP id n8sf12815324qtk.11
        for <lists+clang-built-linux@lfdr.de>; Sun, 07 Jun 2020 02:37:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591522652; cv=pass;
        d=google.com; s=arc-20160816;
        b=OenFztBEFDPdPe6vG5nACo273cwG9DpBZ59q3YJQaVM0m0rz2oV2bHVSZDu7aXlXSX
         SwAzlfcrXwRLzwbPp36nZZqjVWAQ2gd3wvN84l/v+8Wun3pEwzuyo+OUldQJeudAKK+Q
         J332hh0Zv2XIXFpuxzartYP6njkv+okYwdjYysDZwhS7GLfYRwsrnRhRxH2ssbwmQLnP
         7tdg3I8PZWKKy46t0jKozCPVNn28Sw5EpGdsziSqdH8/P5C6tbw+YYDhc99ymRNp5cS3
         NJtbnmHVt+U1qYkV/OwOeWCYO5VmVoYSexfjYZlMRqhsJzARYPxpnLA+CIziiZHtRETq
         Jzbg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=zgQKHJ5twkWOoyQFILIQ0UYzkgRodVgboXcx/c2TKnY=;
        b=QGHgTuMUa+kYNK8C3UQhGaVgC+UTRKOubSCuLIXz8DN9C1E0dh/HRa5bm9wMgRFFak
         zEQwedsd0t8+P/XHGvvQ0ObBS+5T4IIUM713U8beteX6QuBM+uxd0cmM44y/7NQGh9K5
         CyDVEHBHyycD4XIYFFZomtIxyJl6uV2yfFJylEN/1WX48D+ulO1gbMDjZ17G/+7WHbZY
         OMP++qsJ04SjQ9tJxEJbq7WVzQf/E+0bBZ+CBGMvuHjEpvYv4VlqeAKvgKWv8pUd+Tzg
         KK0NNfmZBzrd8mElaV6wCyaxNKvyl50yv1NxyTSk4egBanydbJgJAm1WZGS/adj4hYVR
         N4mQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=T2nKWR5j;
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zgQKHJ5twkWOoyQFILIQ0UYzkgRodVgboXcx/c2TKnY=;
        b=J3mspX5hlSijP9W7SBzvga2LfNMJTDvDKRptYFmTtNx3pqXp2xt7r8KmhEShsL/d4n
         /49XFQVoTlawIe/FnKHxpmL3lCOZmvns8P0yzOOMCf9HggRel9cE8ZFCeYmZo9rvL/S3
         o/Y4KtbmsbcWNRITlKJedM0rttGRaTsLZ6BNt3sZjChq1BmNhkW9KvRcL4+7V7xhd7lG
         7nZ1tP64fmdmWLWOjEBlcxNAAohrQjvAjSFL1M94r36+d2kkYvqZ1ALG1yxdP/DDOh/X
         FPi6cy4hSFxmhEKunKtQ6VQOVe0yqPfooVCtSR7opZskMprTI4kzSuaFPNjkbXg4ka+A
         AfKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zgQKHJ5twkWOoyQFILIQ0UYzkgRodVgboXcx/c2TKnY=;
        b=bfxLClltzyb9TViBHfkJe62LI/lb9Ru15rR6Q6IATO2t7yYxAQ6jV+R5/xmILHpEf8
         H+z2IGUmftYeFOCe7e/C8mmUSOp5dFGd2LsjJ2ojvIgwhqaVsn182pnqEiOswAYJg0uu
         9jS7qxPxsI+bxfUH67VFJWEZ+jEerS9qNlLJ8TBHaY2n6RvzJi5CVy86L1TLX44OwnDA
         PE4XZb+H2zgE8QyRMWp54IMCqZR8IU2wf5Yu/X+zHvf+6xaX66UIdElMJhT77szUwz/U
         6UiDJ3II9ABC5F00IdqefsKzUberYTJIPYkwEPYYy8L7HyR9p9oPAtbdTGf24q5F9SDw
         BsLg==
X-Gm-Message-State: AOAM532CXWoZSXQq9vE1V0rT/aHaLYI/cCw2sSWKmdxzp/jlgf3Sh0Xk
	+FEztIr1LagPE/4NBrXG5xs=
X-Google-Smtp-Source: ABdhPJx1NY0hdGMI3wePog8LHYqwFIHn+0yOpZUwnaL49g7vTvCORNdsrCtHEG6JYdDP5s4lvKY2cQ==
X-Received: by 2002:ac8:534d:: with SMTP id d13mr17638334qto.75.1591522652401;
        Sun, 07 Jun 2020 02:37:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:fd8e:: with SMTP id p14ls3121476qvr.0.gmail; Sun, 07 Jun
 2020 02:37:32 -0700 (PDT)
X-Received: by 2002:ad4:528d:: with SMTP id v13mr17937328qvr.90.1591522652078;
        Sun, 07 Jun 2020 02:37:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591522652; cv=none;
        d=google.com; s=arc-20160816;
        b=XAuJCELl/BrV96R3hWNfDPIS9CozSH5Auvsh/g1RZjQ3xM8TkDJLqYi73F0eWPnbWs
         ep5I7lMuetawRSitXISStUsRXcgqC407cfYASsR0baqSK4Lu44dw+lzHo2GWOudWaA4H
         Z+ewWPyCJDnvjYv/6usv6tdX0Ct7UdmxKi+JiBsRjZZpMZkk53XNfFBDpSeCwo7P3uEP
         8jL9SV7hx4suWHqC5dEjwMxZRVj/j4LG9lAMRxfCb8ApLj9kVabqT/gkJTBM/2WGD7TV
         V49NjBmU4lb9cEZcp9EoKlYTcIzMI4axTNxLcYAYyFfjD7nOnkrf3R4pE8oOQjtE7WCK
         lNLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=e2xlbfV4VPwn4qpyM6wODK/8b6ahF6KoGTstDUIrXuI=;
        b=FABmWp8spOUdlMzPq7apqQjawlDihWXZGhWfXHL3zDX71zL92UXRO3gzEpHhNWb60Q
         baAKbGhLw6zVT+b1+28jgsvN8CGlnIzwbcsh8t6TOVKUIaitiOecSzbUOW/ksM58z6hd
         JNuIuSY0G93ddjARAu+SRu/LBSmXemhhCDrqRXCH0goxtxJYhNj4CAcdjDHByV4XgIuV
         FwX3IEizCVTAnvDzGFO9TnguaKAS1BJ3n+Wn7jtE8AObBgNJep/ZnsCETLNnS4NfLYjh
         g5VUTCSHKBv4etM4enTfop7Q3+l9aUBNpLyJWz9IvIHyS5mzGuPB51nOflrKlIeAwon7
         iBHg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=T2nKWR5j;
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x842.google.com (mail-qt1-x842.google.com. [2607:f8b0:4864:20::842])
        by gmr-mx.google.com with ESMTPS id w123si179842qka.1.2020.06.07.02.37.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 07 Jun 2020 02:37:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::842 as permitted sender) client-ip=2607:f8b0:4864:20::842;
Received: by mail-qt1-x842.google.com with SMTP id u17so12397767qtq.1
        for <clang-built-linux@googlegroups.com>; Sun, 07 Jun 2020 02:37:32 -0700 (PDT)
X-Received: by 2002:ac8:7a87:: with SMTP id x7mr18590826qtr.50.1591522651451;
 Sun, 07 Jun 2020 02:37:31 -0700 (PDT)
MIME-Version: 1.0
References: <20200605082839.226418-1-elver@google.com> <CACT4Y+ZqdZD0YsPHf8UFJT94yq5KGgbDOXSiJYS0+pjgYDsx+A@mail.gmail.com>
 <20200605120352.GJ3976@hirez.programming.kicks-ass.net> <CAAeHK+zErjaB64bTRqjH3qHyo9QstDSHWiMxqvmNYwfPDWSuXQ@mail.gmail.com>
In-Reply-To: <CAAeHK+zErjaB64bTRqjH3qHyo9QstDSHWiMxqvmNYwfPDWSuXQ@mail.gmail.com>
From: "'Dmitry Vyukov' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Sun, 7 Jun 2020 11:37:20 +0200
Message-ID: <CACT4Y+Zwm47qs8yco0nNoD_hFzHccoGyPznLHkBjAeg9REZ3gA@mail.gmail.com>
Subject: Re: [PATCH -tip v3 1/2] kcov: Make runtime functions noinstr-compatible
To: Andrey Konovalov <andreyknvl@google.com>
Cc: Peter Zijlstra <peterz@infradead.org>, Marco Elver <elver@google.com>, 
	Mark Rutland <mark.rutland@arm.com>, Borislav Petkov <bp@alien8.de>, 
	Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Alexander Potapenko <glider@google.com>, 
	kasan-dev <kasan-dev@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>, 
	"the arch/x86 maintainers" <x86@kernel.org>, Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dvyukov@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=T2nKWR5j;       spf=pass
 (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::842
 as permitted sender) smtp.mailfrom=dvyukov@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Dmitry Vyukov <dvyukov@google.com>
Reply-To: Dmitry Vyukov <dvyukov@google.com>
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

On Fri, Jun 5, 2020 at 3:25 PM 'Andrey Konovalov' via kasan-dev
<kasan-dev@googlegroups.com> wrote:
> > On Fri, Jun 05, 2020 at 12:57:15PM +0200, Dmitry Vyukov wrote:
> > > On Fri, Jun 5, 2020 at 10:28 AM Marco Elver <elver@google.com> wrote:
> > > >
> > > > While we lack a compiler attribute to add to noinstr that would disable
> > > > KCOV, make the KCOV runtime functions return if the caller is in a
> > > > noinstr section, and mark them noinstr.
> > > >
> > > > Declare write_comp_data() as __always_inline to ensure it is inlined,
> > > > which also reduces stack usage and removes one extra call from the
> > > > fast-path.
> > > >
> > > > In future, our compilers may provide an attribute to implement
> > > > __no_sanitize_coverage, which can then be added to noinstr, and the
> > > > checks added in this patch can be guarded by an #ifdef checking if the
> > > > compiler has such an attribute or not.
> > >
> > > Adding noinstr attribute to instrumentation callbacks looks fine to me.
> > >
> > > But I don't understand the within_noinstr_section part.
> > > As the cover letter mentions, kcov callbacks don't do much and we
> > > already have it inserted and called. What is the benefit of bailing
> > > out a bit earlier rather than letting it run to completion?
> > > Is the only reason for potential faults on access to the vmalloc-ed
> > > region?
> >
> > Vmalloc faults (on x86, the only arch that had them IIRC) are gone, per
> > this merge window.
> >
> > The reason I mentioned them is because it is important that they are
> > gone, and that this hard relies on them being gone, and the patch didn't
> > call that out.
> >
> > There is one additional issue though; you can set hardware breakpoint on
> > vmalloc space, and that would trigger #DB and then we'd be dead when we
> > were already in #DB (IST recursion FTW).
> >
> > And that is not something you can trivially fix, because you can set the
> > breakpoint before the allocation (or perhaps on a previous allocation).
> >
> > That said; we already have this problem with task_struct (and
> > task_stack). IIRC Andy wants to fix the task_stack issue by making all
> > of noinstr run on the entry stack, but we're not there yet.
> >
> > There are no good proposals for random allocations like task_struct or
> > in your case kcov_area.
> >
> > > Andrey, Mark, do you know if it's possible to pre-fault these areas?
> >
> > Under the assumption that vmalloc faults are still a thing:
> >
> > You cannot pre-fault the remote area thing, kernel threads use the mm of
> > the previous user task, and there is no guarantee that mm will have had
> > the vmalloc fault.
>
> To clarify this part AFAIU it, even if we try to prefault the whole
> remote area each time kcov_remote_start() is called, then (let alone
> the performance impact) the kernel thread can be rescheduled between
> kcov_remote_start() and kcov_remote_stop(), and then it might be
> running with a different mm than the one that was used when
> kcov_remote_start() happened.

Ugh, this is nasty. But this has also gone, which I am happy about :)

Why I am looking at this is because with coverage instrumentation
__sanitizer_cov_trace_pc is the hottest function in the kernel and we
are adding additional branches to it.

Can we touch at least some per-cpu data within noinstr code?
If yes, we could try to affect the existing
in_task()/in_serving_softirq() check.
If not, it would be useful to have a comment clarifying that
within_noinstr_section check must happen before we touch anything
else.

I assume objtool can now also detect all violations. How bad is it now
without within_noinstr_section check? I am assuming we marking noinstr
functions to not be instrumented, but we are getting some stray
instrumentation from inlined functions or something, right? How many
are there? Is it fixable/unfixable? Marco, do you know the list, or
could you please collect the list of violations?

Is there any config that disables #DB? We could well disable it on
syzbot, I think we already disable some production hardening/debugging
confings, which are not too useful for testing setup.
E.g. we support RANDOMIZE_BASE, no problem, but if one disables it
(which we do), that becomes no-op:

#ifdef CONFIG_RANDOMIZE_BASE
    ip -= kaslr_offset();
#endif
    return ip;

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CACT4Y%2BZwm47qs8yco0nNoD_hFzHccoGyPznLHkBjAeg9REZ3gA%40mail.gmail.com.
