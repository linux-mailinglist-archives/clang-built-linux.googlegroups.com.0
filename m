Return-Path: <clang-built-linux+bncBDYJPJO25UGBB7VI2ODAMGQEXWAZ24I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53b.google.com (mail-ed1-x53b.google.com [IPv6:2a00:1450:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id 874283B3620
	for <lists+clang-built-linux@lfdr.de>; Thu, 24 Jun 2021 20:52:47 +0200 (CEST)
Received: by mail-ed1-x53b.google.com with SMTP id p19-20020aa7c4d30000b0290394bdda6d9csf3813086edr.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 24 Jun 2021 11:52:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624560767; cv=pass;
        d=google.com; s=arc-20160816;
        b=wquv3kd7beE80O2HF/aJ/T5+C8dYFSjP7wcV7POMMN7Xd+H8BXTQP8oTXXvY30Q4Nr
         L8UtWMisc//N62+ZoDXZJEl0/+y0dtDDtuLvWJysb7wLHJ3G8W2iQveU0man7ne7pf1a
         dK7o2ODojVhhNgMLat71T8wf3mXzORJHUxhyPhqSiYzMP1ncZEEQON4jfyVs/fdM7ao7
         7H5cf76t7hA+pHLArwE/FzrXXc72GOKIxqGy6JqYqDoVmiOUfuewj4JqgCCFxIjYwH6n
         BS3K3QAxDv2Y2BIWSbbt+vVBu3LcS4K/GVoq8pnsy/NvAhdUs+x+6ELKZYVPujLHdpvK
         ze5A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:mime-version:dkim-signature;
        bh=h/ea6RC/0/62/eUNo1ZxsSGE1ROJjH+pGDdTBS4V7ZM=;
        b=zNDqOvoQsHpx03OrsIEG0FngJzcGw9VZAZVJ12iLdlKwYlO6Lk0/tP1r+b/brajCW9
         8SQZ5RrMXR/TYzpb9OpdYtaMIQOSoFAF3AfRf3tVscOhnPYc3zO69f5xBR0eThgCc+GR
         jk2QT5H4YpeS58AYFjEkbTxXYZtoSVC+pOpVOw5nc1Iv1zA5kritc90J06+hAhPom6Q3
         yeSV7/b+6T+ckXRZjje2oB/bY83CytZj3/XxaWcAGo1LEeNBE+TtADVqzOTfodySlrNP
         xfnhoJTVkikvqZJfCVqiLUrJM2GW377JCO1u09d0YaNT4og5RTh8QNI8YNnilM9Z2nXD
         IHiA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Ffs8zI1Z;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::131 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=h/ea6RC/0/62/eUNo1ZxsSGE1ROJjH+pGDdTBS4V7ZM=;
        b=QRcu/dFrTLNlQ1CcYIcZTxPrazptU/0yEGsTmAKt3M4bNnswsBvg4DWJh9dKfH+PYQ
         IGL+rhbBmgtimj4FYK7ExBVRjr8fHxXxaTQxFrh5JQensZVo6jXq5OkddlP+8Nw0k/V2
         bLUWAFKSVuFGFJpWRye+F8EEs3fh9KABUinC0ZUTf4435LrNqisxqgvsh6EwWvao7Cj3
         X6t9RkV6cYICVdF0DI0KKnN5l8zZxGYhpeYOCfZtK60azCGtOqS6/+QZvDQoAl8kdNqp
         Nc8fHDqIoyiKPQ8G+p3r0Qneg/cgyYLUz4qXxPBFrHgyqulw8qkI1c5wyZSxAsYmrkDo
         Na2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=h/ea6RC/0/62/eUNo1ZxsSGE1ROJjH+pGDdTBS4V7ZM=;
        b=b1f+9Q3Y5sG3P6KjPBW0LPiqlrOANFq9z1G+vBUhzl61hhBddQtrv6bDvHPhAJHOFC
         14/2PZoWRzMA7TFuqJgysgtvcjM7OnA5vTp3NfqOMhuU9ODu7RP/WAUSm80bvkbFTuDI
         OtVuBIYnPRFosIbTdUMpy9bWcd0xL5M32Q0zZOWN3YxUv23feUjlJle6Y53e0SBeOMxz
         QDiCV3WwfIIQ3IQw/NO6LDUWfRsazFvrywWyufmwAAhVWo8QqXs3juTcEt7iSMBReSnl
         Up/7++4lqZS3oh2BmYtrZEqNlXcVC42EpLiU7tg1O7z9FYNWlCzntVHeW1KrP7p0FvUM
         FkSw==
X-Gm-Message-State: AOAM530n8diAruzonNgrOLjCyWPVe7HyS0eANWEv6b5LDeC1abFCx4zS
	wyyv2HAFswOMbkbgrXQKOiU=
X-Google-Smtp-Source: ABdhPJygBSRU3dz8c1yLFjuM484pbXiH2YCYMcY8J+bd1zQAVdSeCMqEnnKYvpw7qrmGrzc07amY+A==
X-Received: by 2002:a17:907:1c0a:: with SMTP id nc10mr6667652ejc.294.1624560767212;
        Thu, 24 Jun 2021 11:52:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:6b82:: with SMTP id l2ls2795474ejr.0.gmail; Thu, 24
 Jun 2021 11:52:46 -0700 (PDT)
X-Received: by 2002:a17:906:234e:: with SMTP id m14mr6688013eja.217.1624560766257;
        Thu, 24 Jun 2021 11:52:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624560766; cv=none;
        d=google.com; s=arc-20160816;
        b=QE6Pt8v6hua7P7hID9Rs93N73goVzySzA0WBrVUiJw3oU/IsNMHvzU+aWQsq68yd/a
         eX48G3Yvmo3LvFg1t9slJmHmCps9q2/Ol0zYLbMW7PP/hJSrRee/7GCg3jeZd014T9b9
         JJlulTRldZCPh2xEWHBnZL3d5PjiDQ3UyxBjpWIr5fYjnEDVYmiTHpwBDsFxj0oCfcZY
         vuGiqoKZsLoMfsB0rx0q09uoZM/V2ZxL1+r0YY3RNNiJliUv/wQ7LoAxmNBkDy6Xf+i5
         lWhmYEaiBhVe8ei3cEPj0hxwNZDDFpgi7LDyn8RkTQf7fQ7ytJ+wJipicNnQfB0u+0RK
         65fA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=XpGPx+T9aCV/lfkSzevX/NAp90hqMwoz9jAiyQO4dFA=;
        b=tD7JHbRVNEBDnaVCPkA5AluwQjlwTRvSimIxcDyUZxhqn3SUuuV0EBgDLtC9Lq17Ib
         5HUtesJzi62D8W2y3AvUs1SZFgtRl0Ni1TVGObTEIClgeM+1LZ9G3MJSKmqcsgSHucTz
         I9ssx3Ho1HtIJJZZwf7FUGMjXBT62ny4SJAk7Mcl6mHSVZeKAlW7AwbWjm4T1SNpfzya
         mkcXYyZTbGr+nfSEwcXBBo0kOEzzt+Jn4SNd6gfiogI98PgsEJ//wpILzUAAII8KKOPf
         yfncRUnCniZ6NpYkInI0fk/0I6w5qEm6yC/4F4SuUsNO+b33J1rCrRdgktgFeoFFBQEq
         +qEQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Ffs8zI1Z;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::131 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com. [2a00:1450:4864:20::131])
        by gmr-mx.google.com with ESMTPS id s18si100461ejo.1.2021.06.24.11.52.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Jun 2021 11:52:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::131 as permitted sender) client-ip=2a00:1450:4864:20::131;
Received: by mail-lf1-x131.google.com with SMTP id p7so12045683lfg.4
        for <clang-built-linux@googlegroups.com>; Thu, 24 Jun 2021 11:52:46 -0700 (PDT)
X-Received: by 2002:ac2:482a:: with SMTP id 10mr4890271lft.297.1624560765596;
 Thu, 24 Jun 2021 11:52:45 -0700 (PDT)
MIME-Version: 1.0
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 24 Jun 2021 11:52:34 -0700
Message-ID: <CAKwvOdncyTGCrjeNBLnZoo_NM7qOdBCw1CEmxUGt135OKzMXEQ@mail.gmail.com>
Subject: [RFC] inlining and mismatched function attributes
To: llvm-dev <llvm-dev@lists.llvm.org>
Cc: Fangrui Song <maskray@google.com>, Marco Elver <elver@google.com>, 
	=?UTF-8?Q?Martin_Li=C5=A1ka?= <mliska@suse.cz>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Chris Wailes <chriswailes@google.com>, 
	Johannes Doerfert <jdoerfert@anl.gov>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Ffs8zI1Z;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::131
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

Hey folks,
It was suggested that I bring up a peculiarity from an individual code
review to the list.

We have a couple function attributes (in C) where inlining can produce
unexpected or surprising results.

Let's take for example, stack protectors, which help me prevent stack
buffer overruns from rewriting a return address pushed on the stack
(sometimes). Now let's say I'm an operating system kernel and I need
to restore register state after suspend (ie. during resume).  That
register state would conflict with the generated stack protector code,
so I use a function attribute like __attribute__((no_stack_protector)
to prevent my compiler from inserting such code in my resume handler
which has to initialize a new stack canary.  But I wasn't careful to
check that all of the functions I call from said handler have a
matching function attribute, and due to inlining, I wind up with a
stack protector, even though I requested a function not have a stack
protector!  Suddenly I load the incorrect stack canary value from
garbage register state, fail the stack check guard, and now I fail to
resume due to a kernel panic. (True story)

Another stack protector issue that came up recently has to do with
forking "zygote-like" processes, and having unique stack protector
values per process.  Point being, there are a few cases where we want
stack protectors generally, but need the fine grain control provided
by function attributes.  Moving code into separate translation units
in order to use different flags, is tedious and commonly runs into
issues with LTO in LLVM when flags that aren't encoded in IR are
dropped by LTO.

Similar problems crop up again with coverage, and profiling
instrumentation in "delicate" code.  Sanitizers, shadow call stack,
and a few others run into similar situations.

As a developer without knowledge of my toolchain, how do I go about
debugging this myself?  (Debugging the suspend/resume issue was not
fun).

What are some ways developers can fix this?  Well, if I know my call
chain, I can go through and start marking my callees
__attribute__((no_stack_protector)) or __attribute__((noinline))
recursively.  Eventually, I should get to the point where none of my
callees have stack protectors or are inlined. But that strips off more
stack protectors perhaps than I'd like, and leaves a lot of code
unprotected.  This begins to feel like "what color is your function?"
"Red" functions may only call other "red" functions; "blue" functions
may only call other "blue" functions.
https://journal.stuffwithstuff.com/2015/02/01/what-color-is-your-function/

Maybe my callees have different callers with different constraints.
Aliases can be used for callees.  Example:

// has a stack protector
void callee_bad(void) { ... }

__attribute__((alias("callee_bad"),noinline))
void callee_good(void);

// requires no stack protector
__attribute__((no_stack_protector))
void caller(void) {
  callee_good();
}

However, caller() could be inlined into yet another (not defined
above) call site that does have/need a stack protector.

And other call sites (that don't care about stack protectors) can just
call callee_bad like normal.  If I don't have too many callees, it's
not too bad.  But very quickly it can become difficult as a developer
to tell which callee was problematic.

Another possibility is that the compiler could have knowledge of
certain conflicting function attributes, and skip inline substitution
of callee into caller upon mismatch.  We provide "remarks" to help
developers understand why inline substitution failed, if they care to
know why.  ie.
$ clang -O1 -O1 -Rpass-missed=inline foo.c
foo.c:6:10: remark: foo not inlined into bar because it should never
be inlined (cost=never): <really good reason why here>

Indeed, that's exactly the tact I took with no_stack_protector in
commit bc044a88ee3c ("[Inline] prevent inlining on stack protector mismatch").

It's what GCC is proposing for
__attribute__((no_profile_instrument_function)) (coverage and
profiling) in:
https://gcc.gnu.org/pipermail/gcc-patches/2021-June/573511.html
https://gcc.gnu.org/bugzilla/show_bug.cgi?id=80223
and I'm looking to match in
https://reviews.llvm.org/D104810 .

We already have precedence for this in LLVM; checkout `CompatRule` in
llvm/include/llvm/IR/Attributes.td and
`llvm::getAttributeBasedInliningDecision` in
llvm/lib/Analysis/InlineCost.cpp.

I'd argue it's also less surprising for a function not to be inlined
than for a stack protector or profile/coverage instrumentation to show
up when a function is explicitly attributed to not have those things.
These attributes describe a desired property of the function. If
inlined, we wish the new copies have the same property. However,
function attribute applies to the whole function, not a subset of
instructions.

But, now we're making IR function attributes that could have been
orthogonal (nossp, noinline) entangled.  That hurts the composition of
such attributes.  (I will note, nossp does not unconditionally imply
noinline; it implies "noinline for mismatched callers, and noinline on
callees that are mismatched, on a per call site basis."
__attribute__((always_inline)) will override this exception, and we
don't provide helpful diagnostics in such case; good luck! :-/ )  We
likely will have such conflicts with additional function attributes in
the future. Should the inliner scan the caller and callee at every
call site for such attribute lists? Should the LangRef document such
inlining behavior?

Another concern is diverging from GCC here; while we're both
discussing no_profile_instrument_function it would be good to gather
more feedback.

Sometimes, I wish in C we had the ability to express at a given
callsite that inlining the callee should not occur.

You can see more discussion
https://gcc.gnu.org/bugzilla/show_bug.cgi?id=80223 .  Surely there are
additional solutions we have not yet conceived of. At this point, I
don't particularly care what color we paint this bikeshed; I just need
a bikeshed built so that my kernel boots.  We all want all software to
be better, and can have a gentle-person's disagreement. Thoughts?

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdncyTGCrjeNBLnZoo_NM7qOdBCw1CEmxUGt135OKzMXEQ%40mail.gmail.com.
