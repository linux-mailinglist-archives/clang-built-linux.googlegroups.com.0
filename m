Return-Path: <clang-built-linux+bncBDYJPJO25UGBBMUS4CAQMGQELKJPQ5I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x240.google.com (mail-lj1-x240.google.com [IPv6:2a00:1450:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id E89BA3257AB
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 21:31:46 +0100 (CET)
Received: by mail-lj1-x240.google.com with SMTP id s13sf2338998ljm.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 12:31:46 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614285106; cv=pass;
        d=google.com; s=arc-20160816;
        b=mM69zNSQbf5cSJaLWgMDOJaZEIWsdWZajc2J2J1bEiC06fZC6LZ62HOnGBJiSw64zl
         nwo140p0/1JqLsky77RxoMV2a/6M9oqoDjotmAg/qrM3xtZ9Ib+k2IONPjBGLpK7LnQx
         e99T5TQDUQrzcqezCerGQ02mFRYdGPBz0I3SDOAz+7EQip2VnLb109OCkv5m+/F2Ij8x
         zGMHMIFwo/HhNZ6IkDZoev4q2uRGyaR2lGUqnPZUoQNP69Rc+JYQ+YP0sYKE9DHGcKWc
         P3B2QND4Nlk+UcxdAnVx7eKjs3TBVpIFqTVGUaeganhLmz8lY/xHTnCqt2KctzPrJZ3I
         Cd6A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Y8HbkMdtvPTZ/5T8aSDtEWFTzoIZh5d+dP4OKwKKTVk=;
        b=BvgWW0zyR+3QUYixH3vQPjhLybWDV7rA+OFDW+JIs20bh+KkoVQo0BRuji5XXovHww
         Y9b2w2rvE4b8sA3+Jzzd2StIBmqogpdJW4m7THIGExDuyiL24pFME5h/A4Q+XuyOLxpa
         CerM+G6m0Nh7F8C3JWOrhyPkyHPgJikdBWNa6mQM4kkqUiVpJ28Gmn5JQaoVt4OkQkcv
         GeOpSUbZkoDp9VLOkfKQdMzVAu90JN+R2L8l1o8wgXMRt545m5HZXuh/wj6G3guDlhkQ
         RptSsi6mba6yKFbdLpM2txhWfmWnw85TEx7PRYWlZBtZ+gGiHN+99bsV+3E1QQptOpBP
         5RiA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rX8LiNPo;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Y8HbkMdtvPTZ/5T8aSDtEWFTzoIZh5d+dP4OKwKKTVk=;
        b=pz9itFuFcC3eJF9T5aJdWSnUNEXYywCMGEBJpAEjrw0l88BRglLoiQ+M7okKMaz/bZ
         PAcdjRig70LYFm44owhy9aqifZgACO1tIo25itmIuetUar2VhHQzduHK5l40v9sZ/H7P
         E6wyOE6iSsVbWu5nFBdqGbSaC4pdjC2KgLRTJ46frwfFTrLN+jdgL5Z9yLG2NG7jo6m8
         GSlxn06R2ATAK1H8CN+LorCmRDu4ydABrZhSrGurfHE0Wc4y0DlFR3gow236TIj6ehk6
         l/aSyCVQxOXHYlgqMpEew4/vLGmrrK9Ssoyq0+j2uMRLHDrLerw58wTnRYtzOubJKZzd
         9Q3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Y8HbkMdtvPTZ/5T8aSDtEWFTzoIZh5d+dP4OKwKKTVk=;
        b=lHcfu/6oNvbQ8WehLAnQzQUh6Nxrj/4WHLxpY+tmZo4LcxsBQ9GlXF2lEu3/exlqJ8
         iWZiOLmNI7Q/KNbhJyr2XgdAhSaKxcOTK1cDv03pclORI8MFJF3LOHqAgmDIdYvM9IWC
         7GbZltvufDnPZRhZ3JZ8lx4BibZrchZ50/p5df4qaIfCPrPBsSBCHxyv14AeCb9xrqSx
         zrSGIi4cYHFwWviPvhlNMNzWEIKXkuxBXVANNVSNtziV7nnf969zK0VRQmqs2392tVdy
         QIa6eUQ/Zvl7U0Lko0OkTHJDBYqg7Co9P0IBR0dBub3AjaWyui212zyBlX8sitWbOwB0
         QB9w==
X-Gm-Message-State: AOAM530O/Ep8bSEXeeCJ8jmgl2hlnUEv22J73r1Di+zcoVBAra4cTUnM
	alUStZ5nUt58Xxkxsqa2AGw=
X-Google-Smtp-Source: ABdhPJy0O4rtPo68RXaFrJByrx2bshMMk0PLywZn5LTzxCMkvterSrEglhl2bK4QZe2CGHrlqrkiaQ==
X-Received: by 2002:ac2:4987:: with SMTP id f7mr2727330lfl.124.1614285106258;
        Thu, 25 Feb 2021 12:31:46 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:32b:: with SMTP id b11ls1233084ljp.11.gmail; Thu,
 25 Feb 2021 12:31:45 -0800 (PST)
X-Received: by 2002:a2e:8151:: with SMTP id t17mr2427826ljg.163.1614285105176;
        Thu, 25 Feb 2021 12:31:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614285105; cv=none;
        d=google.com; s=arc-20160816;
        b=wmSdVqh1sro4AfhSTA1MrlIzQqHvOwMId8i+CfIgen4Gv1TA8D0WT0LHCwsa8rUoiV
         hlsaYsrghhkGxPdFxBnltCusyprobeo7CCSd32ZHfw5FA5hF2BUhKGrbY2CPAksLU0wq
         vDBBO/RzMgeLWcR2Q7WfUvepOxBu51KF/39ahp5mmIojPEFb23EKS0Zx8r5WJ8/yBsm9
         +NrKGSKkUVJtXP+/QhpAOc/0d1mn8lYrWXj5PCxgIoOdt+icrB6lvo1eqClSSy73CZ7C
         1mY38gcIWNe15qF4jGenrqydcu8k3IodYhUS5xt85QVAI/nHWQvRCdqJ9Vuku0DXWL3g
         hW6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=XFLJGO3qMErymEV/e2WWT8aq5JYjcCbmXcFkPTYn9ww=;
        b=zfppKQO3Bes/olD3Ct2Qfi3hCLykhBVAQmU+VemanB2cZMlC3aUK+rKD8V3dlQqMK6
         mtngrBP2Hzv1A6qpgVXjCwHwRbSc7Uq0bv3EQi2uKRNfH5PsYhCx7UZ4hcGiID/ERs21
         vO4rKYkOaJKTSOJbM+jSKR50mAxjFPLygsHFQNhTQTkUGkTyafPwiPEuyGevk+47t5Wo
         fSCpB+7nrplEYcWty63G66HBSogbQQQ9JdWLMNmK4eXFdhWa9AcLgLwEt+HKpYzSroqr
         5306v/3cXNqfuRwztde0HI2ZBBGGUH6x/6G2Jw43KWv4AyvCD80MSWFz8HNItH9ht8nF
         29YA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rX8LiNPo;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com. [2a00:1450:4864:20::12e])
        by gmr-mx.google.com with ESMTPS id c6si352136ljk.2.2021.02.25.12.31.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Feb 2021 12:31:45 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12e as permitted sender) client-ip=2a00:1450:4864:20::12e;
Received: by mail-lf1-x12e.google.com with SMTP id z11so10513185lfb.9
        for <clang-built-linux@googlegroups.com>; Thu, 25 Feb 2021 12:31:45 -0800 (PST)
X-Received: by 2002:ac2:532c:: with SMTP id f12mr3008485lfh.73.1614285104568;
 Thu, 25 Feb 2021 12:31:44 -0800 (PST)
MIME-Version: 1.0
References: <20210225112247.2240389-1-arnd@kernel.org> <20210225114533.GA380@zn.tnic>
 <CAK8P3a0BN3p0F3UAxs9TKsHs--AiAPE0uf6126GVJNhmVTGCsw@mail.gmail.com>
 <20210225124218.GC380@zn.tnic> <CAK8P3a1ZiUHRxKr=SFgEFETLcSQeViPnR+XB2gBvbVk24vGvqQ@mail.gmail.com>
In-Reply-To: <CAK8P3a1ZiUHRxKr=SFgEFETLcSQeViPnR+XB2gBvbVk24vGvqQ@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 25 Feb 2021 12:31:33 -0800
Message-ID: <CAKwvOd=B=cHpp_XfPTtyVpQyrwQrFZX9SXKw=SJC1VC-VbEwFA@mail.gmail.com>
Subject: Re: [PATCH] x86: mark some mpspec inline functions as __init
To: Borislav Petkov <bp@alien8.de>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, 
	"the arch/x86 maintainers" <x86@kernel.org>, Nathan Chancellor <nathan@kernel.org>, Arnd Bergmann <arnd@arndb.de>, 
	"H. Peter Anvin" <hpa@zytor.com>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Arnd Bergmann <arnd@kernel.org>, 
	Arthur Eubanks <aeubanks@google.com>, Chandler Carruth <chandlerc@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=rX8LiNPo;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12e
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

On Thu, Feb 25, 2021 at 5:20 AM Arnd Bergmann <arnd@kernel.org> wrote:
>
> On Thu, Feb 25, 2021 at 1:42 PM Borislav Petkov <bp@alien8.de> wrote:
> >
> > On Thu, Feb 25, 2021 at 01:18:21PM +0100, Arnd Bergmann wrote:
> > > Either way works correctly, I don't care much, but picked the __init
> > > annotation as it seemed more intuitive. If the compiler decides to
> > > make it out-of-line for whatever reason,
> >
> > Well, frankly, I see no good reason for not inlining a function body
> > which is a single call. And gcc does it just fine. And previous clangs
> > did too, so why does clang-13 do it differently?
> >
> > IOW, could it be that you're fixing something that ain't broke?

It's a reasonable question to ask: "why didn't this get inlined?"
which is worthwhile to revisit on occasion.

I'll post a more generic answer than for this specific case since
there's a bit of fallout from the recent changes, and I plan to
explain this in one place then share lore links on all of the other
threads.

Q: What changed?
A: Large changes to LLVM's pass management have finally been enabled
by default in ToT LLVM (what will ship as clang-13). Specifically,
LLVM's "new pass manager" has been made the default after probably at
least 7 years worth of effort. (The previous system is known as the
"legacy pass manager.") https://bugs.llvm.org/show_bug.cgi?id=46649.
With this change, many heuristics related to inlining have changed.
Cost models have changed, thresholds have been adjusted.  I suspect
there's changes in what granularity of IR gets optimized, but I need
to do more research here.

Next on my reading list, for anyone who wants to learn more is:
"Passes in LLVM": https://llvm.org/devmtg/2014-04/PDFs/Talks/Passes.pdf
https://www.youtube.com/watch?v=rY02LT08-J8
"The LLVM Pass Manager, Part 2"
https://www.youtube.com/watch?v=6NDQl544yEg
https://llvm.org/devmtg/2014-10/Slides/Carruth-TheLLVMPassManagerPart2.pdf

Q: But it's just a single function call, what gives?
A: Imagine you have the following:

void baz(void);
void bar(void) { baz(); ... }
void foo(void) { bar(); ... }

So foo() calls bar() calls baz() (and tail calls don't apply).  The
question being asked in this specific case (and a few other threads)
is "why isn't the call to bar() being inlined into foo()?"  Again,
totally fair question to ask.  (In this analogy, bar() is
get_smp_config()/early_get_smp_config(), foo() is their caller(s,
plural potentially)).

The answer lies in the direction that inlining occurs.  If you're
doing "top down" inlining, then when looking at the edge between foo()
and bar(), inlining looks totally reasonable.  Inline substitution is
performed.  Then you get to the edge that existed between bar() and
baz() and decide perhaps that baz() is too big, has too many callers,
etc. and don't inline baz() into foo().

But if you're doing "bottom up" inlining, then you start by analyzing
the edge between baz() and bar(), perhaps you decide to inline baz()
into bar(), but now the size of bar() is just over the threshold to
inline into foo(), or there's too many callers of bar() to inline into
every caller without excessive code bloat, or trips the threshold for
any number of concerns that go into the inlining cost model.  These
cost models are insanely complex (and don't fully generalize), because
you need to distill a great deal many inputs into a single yes/no
signal: "should I inline?"

LLVM's inliner is "bottom up":
https://www.youtube.com/watch?v=FnGCDLhaxKU&start=1650
This is different than GCC with is "top down":
https://www.youtube.com/embed/FnGCDLhaxKU?start=2301&end=2335&autoplay=1
(That video is 6 years old at this point; I have never looked at the
internals of GCC, so I don't personally know whether that is still the
case, FWIW)

Q: Why doesn't LLVM just do what GCC does?
A: The above video should help a little, but this is something not
mandated by the standard.  There are tradeoffs to either, and only
local optima, not general solutions.
(https://www.youtube.com/watch?v=FnGCDLhaxKU&start=1563 is still my
favorite reference that hints at some of the tradeoffs).

Q: But I put the `inline` keyword on the callee?
A: Probably deserves its own post, but the `inline` keyword doesn't
mean what any rational initial impression would suppose. Language in
the standard refers to "inline substitution" and grants a lot of
leeway to implementations in terms of whether it's performed at all.
There are cases where even with "always_inline" fn attr is applied,
and the compiler says "that's nice, but I still cannot perform inline
substitution here, I'm sorry."  Playing with the inlining heuristics
is always difficult, because for each improvement, code that has
"ossified" around how inlining was previously done may experience
unexpected changes in optimizations performed (see also "Q: What
changed?" above).
https://www.youtube.com/watch?v=FnGCDLhaxKU&start=1563

Q: Should I put "always_inline" fn attr everywhere?
A: No! always_inline can still fail in edge cases, leading to inlining
occurring before most optimizations so the same code gets repeatedly
optimized the same way just in different functions (this can really
hurt compile times).  I'm not saying to completely avoid
always_inline, it's good and has useful cases, but it's not a silver
bullet.  There are no silver bullets here.  It's semantics have
changed since its introduction, and I have seen rare uses that make my
skin crawl.

Q: Wouldn't it be nice if we could express a desire to inline from
individual call sites, rather than on the callee for all call sites?
A: Yes; this can be expressed in LLVM IR, but has no analog AFAIK in C or C++.

Q: But what about my specific case?
A: Without the configuration and compiler version provided, I can't
tell you for certain (and if I stopped to look at every case, I
probably wouldn't get any work done myself).  But what I would do if I
wanted to learn more is:
1. Isolate the kernel config that tickles this.  This is pretty
critical for anyone to reproduce kernel issues found via randconfig
builds.
2. Isolate the compiler invocation from the specific build system for
the affected TU. For the kernel, that's `make ... V=1`.
3. Rebuild LLVM in debug mode; using Cmake that's
-DCMAKE_BUILD_TYPE=Debug. This gives you very powerful compiler
introspection features without necessarily needing to attach a
debugger. (I don't think this is needed for every pass, seems like I
can use Release to debug the inliner, below).  It's one of the main
things I really appreciate about LLVM.
4. Ask LLVM to print diagnostics about certain passes when they are
run. Using the the compiler invocation from 2, add `-mllvm
-debug-only=<pass name>`.  Yes, looking up <pass name> requires some
grepping of LLVM source code.  (Lots more general tips:
https://www.youtube.com/watch?v=y4b-sgp6VYA)  For the inliner:

$ cat foo.c
void baz(void);
void bar(void) { baz(); }
void foo(void) { bar(); }
$ clang -mllvm -debug-only=inline foo.c -O2 -S
Inlining calls in: foo
Inlining calls in: foo
    Inlining (cost=0, threshold=337), Call:   call void @bar()
Updated inlining SCC: (foo)

So LLVM is telling us bar() was inlined into foo(); (baz() can't be
because it wasn't defined in this TU).  You can use this to "watch"
the compiler make decisions about inlining.

(full thread: https://lore.kernel.org/lkml/20210225112247.2240389-1-arnd@kernel.org/)
I suspect in this specific case, "Interprocedural Sparse Conditional
Constant Propagation" sees the calls to the same fn with different
constants, propagates those down creating two specialized versions of
the callee (so they are distinct functions now), inlines those into
get_smp_config()/early_get_smp_config(), then there's too many callers
of those in a single TU where inlining would cause excessive code
bloat.

Either way, it's a deep topic and I'm always happy to learn more about
it to help answer questions.  Would make a fun blog post or LWN
article. Now if only this toolchain would stop catching fire so that I
had the time to write such a post...

>
> Maybe Nick can give some more background here. He mentioned
> elsewhere that inlining in clang-13 was completely rewritten and is generally
> better than it was before. I'm not sure whether this particular instance
> is a case where clang could in fact show an advantage in not inlining
> a function, or if this is one case where it got worse and needs to be
> tuned better.
>
> In the end, inlining is a bunch of heuristics that are intended help
> most of the time, but both (old) clang and gcc get it wrong in cases that
> should have been decided the other way. Here we get a new method
> that may go wrong in other ways.
>
>         Arnd



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DB%3DcHpp_XfPTtyVpQyrwQrFZX9SXKw%3DSJC1VC-VbEwFA%40mail.gmail.com.
