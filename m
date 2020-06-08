Return-Path: <clang-built-linux+bncBC7OBJGL2MHBB4W2673AKGQEYITXX6I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53f.google.com (mail-pg1-x53f.google.com [IPv6:2607:f8b0:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id 97C7C1F13D9
	for <lists+clang-built-linux@lfdr.de>; Mon,  8 Jun 2020 09:49:07 +0200 (CEST)
Received: by mail-pg1-x53f.google.com with SMTP id y12sf12553542pgi.20
        for <lists+clang-built-linux@lfdr.de>; Mon, 08 Jun 2020 00:49:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591602546; cv=pass;
        d=google.com; s=arc-20160816;
        b=rM/ZHb1kdIirljUrQNYoni7/oRR8rVhe62cmEoMpqIhGLf5DRjkIZmvBoy3mbMP0rc
         EWcyIz/oeyh8/abIzmNKL7jWpDFb9lqt0Atv0ZhZBFp79kQ5Bpa+YmfAesoq/agP+5rz
         FRrDvF+yJ/J5c7AFUSRa2I85Fe5L9rtUjOPKrBfWN9e5Ki00IUc7uNtvw9OMH1S/+0g/
         CQikSnCVNkJxS5SMIb4DKmwUYFJs0vrROw1FOirXkPJiUsfu2Wv+iL/Rf7sBf9vC+/tZ
         ZFvKdVsW/4pXvOU/Fo2e2AyphutNA9msWBO+woCYV0KUK/JWRqou9fQZ8CfEC80f8kKs
         uRsA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Xf5AR92ovlEtybKwBza8zOTpMXFo34nQ/ClqVsqdm+g=;
        b=RdjqmYgVdeZSaQwpG4olZva0mc22xzbGNREmv6/0LYMDlRXV83RA7tHOuSJIRtO2O2
         Z+CUYuIyI9t0vg6m8qt1qXQI5q1wUIWMUV6FB9GmZBmqDqIWcgCTsXhxomUrTLnwmIvZ
         eLdo8CwO0GD3LRpJ0l3A6U1aO40oZ+B28pgqKD04qKdztuHtjDF6ow2MtkFrxa/+8DtT
         2eJpsSXvYlAt7rtEJaZRtB86VhF+fn5ddjsB+wAdA2++ZEj4Ox9b6wjnxBknRug2CZT8
         hi4kvInjpziQ9HSsaLZYy9q1KnnBzhCJgdlyup5eYsh+ZLzuvKtYlYLfDpOKX2H+jJUU
         pGuw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Wkt0uBkw;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Xf5AR92ovlEtybKwBza8zOTpMXFo34nQ/ClqVsqdm+g=;
        b=nGR3+LwrN2NH/gIgwKeu7JoxFYeFOzBKPmu1qId5oInKz9IO+Xg5STrtpohqImKAb0
         e+7AtVhDGQpp/rTp9CUqMRRciQbneqsdIRNc/rj1sTU3R9Ix64iNESPt790edbj4vc5a
         C+7PN98v/YMPDto5ZyeeislIy9/Am1WJwP7LXiUIxHvtw7rEEs+1DAoWYIMWOcRrGr+k
         aWgKTKC467IC/lzFcJzuKfruTr+9QM6hI3S5+WaATgxaaVHTO6XrjE3RelyDsrWgewag
         GgirENu1idFImQC0sFQOZzWTKO5zPhQHYV6LBISDEr9RDhF3mtcHp+gB/DoY0dCFKyL9
         Yxzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Xf5AR92ovlEtybKwBza8zOTpMXFo34nQ/ClqVsqdm+g=;
        b=o57X47vdK1LDa5crknpD00pfd3JtA9MvWkKFuBahdstmUa7od5ZcxS3Glo9HNVQIP2
         Fsa0V92VHRzU8rw2ZNCqEDCw8wW+fWNOe8oVX532+0xqsi8KpWghth/m0vBYcIAjgdOX
         DqQt950V9uyvafxELf4kY6qaUqgx4slV6rzSOIIHw2vrZ60AgWedQeS/7DQ6yGhlxl+f
         aXIGCJ+TtzW4N0dt0dH/lOgLVpxEjjTM1OwDtplKcWgj59e+f5GtS2M7VqN8zaFAEM/2
         HmRZ7ECx9gKVzcM052Ocq0SG2xI0u6kHTFybnSHa2ccyzTrVweY6FW5TSc4FiJXx0Mg4
         SSrQ==
X-Gm-Message-State: AOAM5329JadSNuXquqDLf5x/tEqiCtfBi/P2w6RAVyeRj0mgykafoDSe
	+EkSPty3YH/t709xOnssWhY=
X-Google-Smtp-Source: ABdhPJyW2PL0+FFrJ+Xjy1QVEm2oVUx5FjLSWynIFhlO0ApdFYc5HwIqkMuofwXhQQwK93ylnko4pQ==
X-Received: by 2002:a17:90a:fd87:: with SMTP id cx7mr15414196pjb.62.1591602546217;
        Mon, 08 Jun 2020 00:49:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:8d8b:: with SMTP id i11ls3259188pfr.0.gmail; Mon, 08 Jun
 2020 00:49:05 -0700 (PDT)
X-Received: by 2002:a62:68c6:: with SMTP id d189mr20838587pfc.135.1591602545755;
        Mon, 08 Jun 2020 00:49:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591602545; cv=none;
        d=google.com; s=arc-20160816;
        b=MVl/h1Qayv/2VOdMc1+bSqT+vy6RiZpq1h5U+5QT6p5/SeqU8hsN3hNvJJLRPBpWuq
         sNXYa+ae879tf3f2K9Ts353YJf+qOzH5Wg+ofEufq0IbbkNUqOJixrlQq2aLjnd7hJjG
         CI3i0lan7A7YE989sBfYJf8yMPZuGnkA7Q8FeBcAvNgMHkEyhtzDSfEVSEfUYQ2Lwq2l
         ZqStGfjqz7qY8D390CIir8eIEX0j1UFqG2/HnsPF0gijdzUsmMH1PzHPAkjPWku/9qaX
         lZ4w4BcH5+4uoTETkY5+kP0ZaL6kVKaw/UtS424FELfYZZc18dPau2XdWz8rrohDN8DP
         p27A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=+1dlHdbQCWrUXJ4LO9gAGKWP7TZEvzQ6RBz5kvhjOak=;
        b=JcpTFuaUjwSWx/wpf/abelaY0VSvF5q6u7m02/oHw/XhX4D24bD8RE2N9Y0Qn+jshk
         XBNXhR54vvE17toaZboOe2/5Stf/ZcFGVTQdySR6X9RWWKPRABbybg9Qysf7uZEMVtti
         2ZOrlZB4+0N1rZnRAZvhNsOtLGkLAHFVLOE8SL3HKBObng7xkS26FWL2xsq26CYgxAob
         2957KUaEYJx4MwADpPBavFeDhqmGVq1HrBaTXmbWcz9Uwv6h5S5+2nzr3/EaSdy+zMeN
         HEduJSIrSus5ibfMSGFNShDT266riO0U989B8EP95U6afLPBrTzIEK5//dZYbwAQyrtX
         8Yow==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Wkt0uBkw;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-oi1-x241.google.com (mail-oi1-x241.google.com. [2607:f8b0:4864:20::241])
        by gmr-mx.google.com with ESMTPS id x14si1330699pjt.2.2020.06.08.00.49.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Jun 2020 00:49:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::241 as permitted sender) client-ip=2607:f8b0:4864:20::241;
Received: by mail-oi1-x241.google.com with SMTP id c194so14446475oig.5
        for <clang-built-linux@googlegroups.com>; Mon, 08 Jun 2020 00:49:05 -0700 (PDT)
X-Received: by 2002:aca:ebc5:: with SMTP id j188mr9979761oih.70.1591602544808;
 Mon, 08 Jun 2020 00:49:04 -0700 (PDT)
MIME-Version: 1.0
References: <20200605082839.226418-1-elver@google.com> <CACT4Y+ZqdZD0YsPHf8UFJT94yq5KGgbDOXSiJYS0+pjgYDsx+A@mail.gmail.com>
 <20200605120352.GJ3976@hirez.programming.kicks-ass.net> <CAAeHK+zErjaB64bTRqjH3qHyo9QstDSHWiMxqvmNYwfPDWSuXQ@mail.gmail.com>
 <CACT4Y+Zwm47qs8yco0nNoD_hFzHccoGyPznLHkBjAeg9REZ3gA@mail.gmail.com>
In-Reply-To: <CACT4Y+Zwm47qs8yco0nNoD_hFzHccoGyPznLHkBjAeg9REZ3gA@mail.gmail.com>
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 8 Jun 2020 09:48:52 +0200
Message-ID: <CANpmjNPNa2f=kAF6c199oYVJ0iSyirQRGxeOBLxa9PmakSXRbA@mail.gmail.com>
Subject: Re: [PATCH -tip v3 1/2] kcov: Make runtime functions noinstr-compatible
To: Dmitry Vyukov <dvyukov@google.com>
Cc: Andrey Konovalov <andreyknvl@google.com>, Peter Zijlstra <peterz@infradead.org>, 
	Mark Rutland <mark.rutland@arm.com>, Borislav Petkov <bp@alien8.de>, 
	Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Alexander Potapenko <glider@google.com>, 
	kasan-dev <kasan-dev@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>, 
	"the arch/x86 maintainers" <x86@kernel.org>, Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Wkt0uBkw;       spf=pass
 (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::241 as
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

On Sun, 7 Jun 2020 at 11:37, Dmitry Vyukov <dvyukov@google.com> wrote:
>
> On Fri, Jun 5, 2020 at 3:25 PM 'Andrey Konovalov' via kasan-dev
> <kasan-dev@googlegroups.com> wrote:
> > > On Fri, Jun 05, 2020 at 12:57:15PM +0200, Dmitry Vyukov wrote:
> > > > On Fri, Jun 5, 2020 at 10:28 AM Marco Elver <elver@google.com> wrote:
> > > > >
> > > > > While we lack a compiler attribute to add to noinstr that would disable
> > > > > KCOV, make the KCOV runtime functions return if the caller is in a
> > > > > noinstr section, and mark them noinstr.
> > > > >
> > > > > Declare write_comp_data() as __always_inline to ensure it is inlined,
> > > > > which also reduces stack usage and removes one extra call from the
> > > > > fast-path.
> > > > >
> > > > > In future, our compilers may provide an attribute to implement
> > > > > __no_sanitize_coverage, which can then be added to noinstr, and the
> > > > > checks added in this patch can be guarded by an #ifdef checking if the
> > > > > compiler has such an attribute or not.
> > > >
> > > > Adding noinstr attribute to instrumentation callbacks looks fine to me.
> > > >
> > > > But I don't understand the within_noinstr_section part.
> > > > As the cover letter mentions, kcov callbacks don't do much and we
> > > > already have it inserted and called. What is the benefit of bailing
> > > > out a bit earlier rather than letting it run to completion?
> > > > Is the only reason for potential faults on access to the vmalloc-ed
> > > > region?
> > >
> > > Vmalloc faults (on x86, the only arch that had them IIRC) are gone, per
> > > this merge window.
> > >
> > > The reason I mentioned them is because it is important that they are
> > > gone, and that this hard relies on them being gone, and the patch didn't
> > > call that out.
> > >
> > > There is one additional issue though; you can set hardware breakpoint on
> > > vmalloc space, and that would trigger #DB and then we'd be dead when we
> > > were already in #DB (IST recursion FTW).
> > >
> > > And that is not something you can trivially fix, because you can set the
> > > breakpoint before the allocation (or perhaps on a previous allocation).
> > >
> > > That said; we already have this problem with task_struct (and
> > > task_stack). IIRC Andy wants to fix the task_stack issue by making all
> > > of noinstr run on the entry stack, but we're not there yet.
> > >
> > > There are no good proposals for random allocations like task_struct or
> > > in your case kcov_area.
> > >
> > > > Andrey, Mark, do you know if it's possible to pre-fault these areas?
> > >
> > > Under the assumption that vmalloc faults are still a thing:
> > >
> > > You cannot pre-fault the remote area thing, kernel threads use the mm of
> > > the previous user task, and there is no guarantee that mm will have had
> > > the vmalloc fault.
> >
> > To clarify this part AFAIU it, even if we try to prefault the whole
> > remote area each time kcov_remote_start() is called, then (let alone
> > the performance impact) the kernel thread can be rescheduled between
> > kcov_remote_start() and kcov_remote_stop(), and then it might be
> > running with a different mm than the one that was used when
> > kcov_remote_start() happened.
>
> Ugh, this is nasty. But this has also gone, which I am happy about :)
>
> Why I am looking at this is because with coverage instrumentation
> __sanitizer_cov_trace_pc is the hottest function in the kernel and we
> are adding additional branches to it.
>
> Can we touch at least some per-cpu data within noinstr code?
> If yes, we could try to affect the existing
> in_task()/in_serving_softirq() check.
> If not, it would be useful to have a comment clarifying that
> within_noinstr_section check must happen before we touch anything
> else.

I don't think this will get us anywhere. If anything this will require
introducing code outside KCOV, and I think that makes the whole
situation even worse. My guess is also we can't even read per-CPU
data, but Peter would have to comment on this.

> I assume objtool can now also detect all violations. How bad is it now
> without within_noinstr_section check? I am assuming we marking noinstr
> functions to not be instrumented, but we are getting some stray
> instrumentation from inlined functions or something, right? How many
> are there? Is it fixable/unfixable? Marco, do you know the list, or
> could you please collect the list of violations?

It's everywhere. We cannot mark noinstr functions to not be
instrumented by KCOV/-fsanitize-coverage, because no compiler provides
an attribute to do so. GCC doesn't have
__attribute__((no_sanitize_coverage)) and Clang doesn't have
__attribute__((no_sanitize("coverage")), and therefore we can't have
__no_sanitize_coverage.

My plan would be to now go and implement the attributes, at the very
least in Clang. Then what we can do is make wihin_noinstr_section a
noop (just return false) if we have CONFIG_CC_HAS_NOSANITIZE_COVERAGE
or something.

Unfortunately, without this patch, we won't have a reliable kernel
with KCOV until we get compiler support.

The thing is that this slowdown is temporary if we add the attributes
to the compiler.


> Is there any config that disables #DB? We could well disable it on
> syzbot, I think we already disable some production hardening/debugging
> confings, which are not too useful for testing setup.
> E.g. we support RANDOMIZE_BASE, no problem, but if one disables it
> (which we do), that becomes no-op:
>
> #ifdef CONFIG_RANDOMIZE_BASE
>     ip -= kaslr_offset();
> #endif
>     return ip;

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANpmjNPNa2f%3DkAF6c199oYVJ0iSyirQRGxeOBLxa9PmakSXRbA%40mail.gmail.com.
