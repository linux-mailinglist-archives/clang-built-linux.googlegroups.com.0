Return-Path: <clang-built-linux+bncBDY3ZBFI7MBBBXXNS6DQMGQE3L74S7I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x539.google.com (mail-ed1-x539.google.com [IPv6:2a00:1450:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 90E653BEFCF
	for <lists+clang-built-linux@lfdr.de>; Wed,  7 Jul 2021 20:47:58 +0200 (CEST)
Received: by mail-ed1-x539.google.com with SMTP id p13-20020a05640210cdb029039560ff6f46sf1867028edu.17
        for <lists+clang-built-linux@lfdr.de>; Wed, 07 Jul 2021 11:47:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625683678; cv=pass;
        d=google.com; s=arc-20160816;
        b=OkdnYZ9TbQM3iRgeFYsruBnVxSUntsZbwUpMIg5t+V0GO/gXHnUu8xuHnIq0tlevoj
         gEkUzskb15hqdV+qkMNO9+IcoooJIeLcjSeHYA/RiNDHGyQBKtw2G5W6iJO478lqaaX9
         6rpwW+0yeErehkMUVAlLOdcunRPlYH286ksENet4+17tHS0/CteC6JRCuykSI+cq8giz
         x5HjOy0nVljOPJtwb2tEZSo6HWvb8iLUKI8JW1lQKtpImmQoLi/EYhKk4i1/PWCJS52V
         S/F/ErGCJhUvTctIgmXLowILXhNQN7uLWtt7H/6/3TqHg19eEf6XETnyLTvqdz6SN0mh
         GNgg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=bfqTSXjP5uVSj9E7bHmop+fMVM0JJcfJJnBjHHh1Nto=;
        b=BvehndUEd+K80Dcu6nSdDaTrK+wB6SvYP1WZ9Vjq1gnu74XDWhwErDmz9Pk58u3NXg
         hMyEOPjkM5hJ3UeXcXr1wYXXfO7tXM8U0EiJHW3WdptlOdXCyRxoeQaG0Eq8WGJikXX9
         FqK6it1978NsArNqv3AXRFHlfSr1IJSSuGY4zr05aD0LAnanTRV1XkTOgbj0batWMZUM
         EKtDExlUbNMM1dqRuH2/GFaa6NxPBZ1OjgaORRj/hIkOs1752tm4cZIAVbzdilQvYMSs
         ha3pnQwR1368m044BeKO/Ppincqu7fDrczDDY2sxkgik8NN9XxURTtmO1aHAN617HJGI
         y5cw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=MsfW9BtZ;
       spf=pass (google.com: domain of chriswailes@google.com designates 2a00:1450:4864:20::334 as permitted sender) smtp.mailfrom=chriswailes@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bfqTSXjP5uVSj9E7bHmop+fMVM0JJcfJJnBjHHh1Nto=;
        b=YihUFpxS0FXVVKKtv0mXEoarMLThJTadHrQs9l4TsafaUFYyLJLyqN9YgX0VVLZTR8
         C+BnTRDFeC80BkXh4iLJDzEXqC7zGCSDxVk1QeLfk1JjsFi4szzAGo8EfNXLJ2ur3pMq
         TC1lCIOUz27UzIAt0u54gH+HUekvUAvPukcYWiuAHPFnU3hI13nxCgpiR1W6lFMhcH2/
         2r063sDMzmOj/knAP63pWFCZhLi8E/V2fiLnDtFlfOJ7VMNM2Sm5esyXPcjlIdnP0Qam
         SOC3W0udkWRMe3jSvhIN6U8JQJ/IOunS7RG3CI4USo52u2HOH2y98favBBioyh0Mphm8
         zykw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bfqTSXjP5uVSj9E7bHmop+fMVM0JJcfJJnBjHHh1Nto=;
        b=XYJfw7RZVWguGMIx3QBch+cZgIZkCJd0hoyTI2DpClXrooe2r8ddGUpbRh7qj+0JaI
         GgEc/sX5xSewINfjUnpUtgMlK/wmIQP4ZmQsVna/ERyUCTyVF9MfY6hUDsKYFbRK1w4U
         ulwgbK5JDFwLjm8NGngxekLSTjqZYXSL7SM6xi6FYwo2iA68rVUKpfPe+aRyd6Fl3TSM
         eM2J/nRzhaQENF8mCQQewLpMT67+F8JoQVmrbdhD2XqkCS0y2KX2JE+nWzPllEKW5gfM
         hIkBNhudh+2T9zP3NpPnsBQaIW0WGvHrf483lRKM5xLFq5m375IxgNEl73zu5GhHs4Lm
         HbYw==
X-Gm-Message-State: AOAM53147yUb53nUO5tnQ/b9NEZERQbNC0/fbSklnbx/zlbRAoL7Cx8p
	7rKJYxFK7bdMOTtdmr0bABA=
X-Google-Smtp-Source: ABdhPJw55KlMorvQNgRsJLbHB6YtgV+mcZf2+Y1UkqIDN2pYupWsbO5oJzPe0pFaoitkHJRx2/5VVQ==
X-Received: by 2002:a17:906:85c2:: with SMTP id i2mr13697378ejy.27.1625683678286;
        Wed, 07 Jul 2021 11:47:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:925a:: with SMTP id c26ls427577ejx.6.gmail; Wed, 07
 Jul 2021 11:47:57 -0700 (PDT)
X-Received: by 2002:a17:906:c41a:: with SMTP id u26mr25969992ejz.270.1625683677274;
        Wed, 07 Jul 2021 11:47:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625683677; cv=none;
        d=google.com; s=arc-20160816;
        b=V6bMbQ/yOiQFUT9gD2IYufPzn1k/aETp8V5+tq3JFig3xP+UFsa0RnzqNdFpQc5iar
         4T3OhUbAZcAPQnzlWaAh1ODQ4MU7IUmv/qNds3eZyKZzvWy23vmUUJCY4EGUEm9Ixwns
         QGCwXVlfcrof/xiW3lBTjVIk/Ykh846dNnvW7pgSNDzqG8mcv65LPUIB4I+/fbV9hysw
         kH89wzVqDKLDyNJ5VTTpUGty2UCKs5orhzcPfQCUANViABuFGlZU2A1j5Xp2EqpsCuRL
         CP/C9eSTSOWmBtn7L1yNH5Ck8AP9XKDih2m3E86stPgk2KZnRdTqZ6meBj6viUetlZMn
         RV6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=efV9QfncYXAInftKNUg9mPbu0IBAqovNftqSvuDVE3M=;
        b=w3bhB3C/mPsqvm19u2J5mTl4uA/5g39D8A07kUEH+b7h6Dhw3sRrjoEPz5Q3qL4vIF
         VNZ1B3uKNGuazzrdFBA2VAKszp4Knzmd78Fvm8usR0EHgPK39/6x+aMfI5aQoyrX82Mn
         xl5Eyz9gIYLCttKp6WetFHMF9goCRFAERI/h7A7TPksZ7QKN7dkaZy7xy6ZlZ8AJDMt+
         oAjbouPS5H8aJz//pCJjBH2kHx0f26j4mxg09ChEmxeS+7R1Plm3IAgYoqtfj2R6g7HS
         uz92RJ+yasMSzBvQj/VbELSj1WjLGRgUDOEW9Ko46L6HO6NmDk60KyfGGKP9owwuSDtA
         QKrw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=MsfW9BtZ;
       spf=pass (google.com: domain of chriswailes@google.com designates 2a00:1450:4864:20::334 as permitted sender) smtp.mailfrom=chriswailes@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com. [2a00:1450:4864:20::334])
        by gmr-mx.google.com with ESMTPS id du5si97862ejc.0.2021.07.07.11.47.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Jul 2021 11:47:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of chriswailes@google.com designates 2a00:1450:4864:20::334 as permitted sender) client-ip=2a00:1450:4864:20::334;
Received: by mail-wm1-x334.google.com with SMTP id k31-20020a05600c1c9fb029021727d66d33so718921wms.0
        for <clang-built-linux@googlegroups.com>; Wed, 07 Jul 2021 11:47:57 -0700 (PDT)
X-Received: by 2002:a7b:c5c8:: with SMTP id n8mr545454wmk.124.1625683676848;
 Wed, 07 Jul 2021 11:47:56 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOdncyTGCrjeNBLnZoo_NM7qOdBCw1CEmxUGt135OKzMXEQ@mail.gmail.com>
In-Reply-To: <CAKwvOdncyTGCrjeNBLnZoo_NM7qOdBCw1CEmxUGt135OKzMXEQ@mail.gmail.com>
From: "'Chris Wailes' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 7 Jul 2021 11:47:46 -0700
Message-ID: <CAKfqHeq7+VFg2XqhC7MAJ9RnH40qAYA3i2mRhx4yUZfi8b0Yew@mail.gmail.com>
Subject: Re: [RFC] inlining and mismatched function attributes
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: llvm-dev <llvm-dev@lists.llvm.org>, Fangrui Song <maskray@google.com>, 
	Marco Elver <elver@google.com>, =?UTF-8?Q?Martin_Li=C5=A1ka?= <mliska@suse.cz>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Johannes Doerfert <jdoerfert@anl.gov>
Content-Type: multipart/alternative; boundary="00000000000013df9b05c68cfad5"
X-Original-Sender: chriswailes@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=MsfW9BtZ;       spf=pass
 (google.com: domain of chriswailes@google.com designates 2a00:1450:4864:20::334
 as permitted sender) smtp.mailfrom=chriswailes@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Chris Wailes <chriswailes@google.com>
Reply-To: Chris Wailes <chriswailes@google.com>
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

--00000000000013df9b05c68cfad5
Content-Type: text/plain; charset="UTF-8"

Nick,

Thanks for bringing up this topic.

Another issue to consider is the performance impact of the interaction
between `no_stack_protector` and inlining.  If the translation unit is
compiled with stack protectors and you want to remove them from a specific
function you have to prevent all inlining into the function in question or
recursively annotate all called functions with `no_stack_protector`.  This
can lead to disastrous consequences for performance if it is a hot function.

Sometimes, I wish in C we had the ability to express at a given callsite
> that inlining the callee should not occur.
>

This would solve the usability problem that you are discussing (you
wouldn't have to go chasing down all callees that are marked as
`alwaysinline`) but it wouldn't solve the performance problem.  Another
solution might be to have an annotation that says "my `no_stack_protector`
or `no_profile_instrument_function` annotation overrides the values from
inlined functions".  This would allow the inlining to occur but gives the
callee control over their own behavior.  If we had had this annotation it
would have made one of the several solutions to stack protectors in the
Zygote that we tried actually viable.

- Chris

On Thu, Jun 24, 2021 at 11:52 AM Nick Desaulniers <ndesaulniers@google.com>
wrote:

> Hey folks,
> It was suggested that I bring up a peculiarity from an individual code
> review to the list.
>
> We have a couple function attributes (in C) where inlining can produce
> unexpected or surprising results.
>
> Let's take for example, stack protectors, which help me prevent stack
> buffer overruns from rewriting a return address pushed on the stack
> (sometimes). Now let's say I'm an operating system kernel and I need
> to restore register state after suspend (ie. during resume).  That
> register state would conflict with the generated stack protector code,
> so I use a function attribute like __attribute__((no_stack_protector)
> to prevent my compiler from inserting such code in my resume handler
> which has to initialize a new stack canary.  But I wasn't careful to
> check that all of the functions I call from said handler have a
> matching function attribute, and due to inlining, I wind up with a
> stack protector, even though I requested a function not have a stack
> protector!  Suddenly I load the incorrect stack canary value from
> garbage register state, fail the stack check guard, and now I fail to
> resume due to a kernel panic. (True story)
>
> Another stack protector issue that came up recently has to do with
> forking "zygote-like" processes, and having unique stack protector
> values per process.  Point being, there are a few cases where we want
> stack protectors generally, but need the fine grain control provided
> by function attributes.  Moving code into separate translation units
> in order to use different flags, is tedious and commonly runs into
> issues with LTO in LLVM when flags that aren't encoded in IR are
> dropped by LTO.
>
> Similar problems crop up again with coverage, and profiling
> instrumentation in "delicate" code.  Sanitizers, shadow call stack,
> and a few others run into similar situations.
>
> As a developer without knowledge of my toolchain, how do I go about
> debugging this myself?  (Debugging the suspend/resume issue was not
> fun).
>
> What are some ways developers can fix this?  Well, if I know my call
> chain, I can go through and start marking my callees
> __attribute__((no_stack_protector)) or __attribute__((noinline))
> recursively.  Eventually, I should get to the point where none of my
> callees have stack protectors or are inlined. But that strips off more
> stack protectors perhaps than I'd like, and leaves a lot of code
> unprotected.  This begins to feel like "what color is your function?"
> "Red" functions may only call other "red" functions; "blue" functions
> may only call other "blue" functions.
> https://journal.stuffwithstuff.com/2015/02/01/what-color-is-your-function/
>
> Maybe my callees have different callers with different constraints.
> Aliases can be used for callees.  Example:
>
> // has a stack protector
> void callee_bad(void) { ... }
>
> __attribute__((alias("callee_bad"),noinline))
> void callee_good(void);
>
> // requires no stack protector
> __attribute__((no_stack_protector))
> void caller(void) {
>   callee_good();
> }
>
> However, caller() could be inlined into yet another (not defined
> above) call site that does have/need a stack protector.
>
> And other call sites (that don't care about stack protectors) can just
> call callee_bad like normal.  If I don't have too many callees, it's
> not too bad.  But very quickly it can become difficult as a developer
> to tell which callee was problematic.
>
> Another possibility is that the compiler could have knowledge of
> certain conflicting function attributes, and skip inline substitution
> of callee into caller upon mismatch.  We provide "remarks" to help
> developers understand why inline substitution failed, if they care to
> know why.  ie.
> $ clang -O1 -O1 -Rpass-missed=inline foo.c
> foo.c:6:10: remark: foo not inlined into bar because it should never
> be inlined (cost=never): <really good reason why here>
>
> Indeed, that's exactly the tact I took with no_stack_protector in
> commit bc044a88ee3c ("[Inline] prevent inlining on stack protector
> mismatch").
>
> It's what GCC is proposing for
> __attribute__((no_profile_instrument_function)) (coverage and
> profiling) in:
> https://gcc.gnu.org/pipermail/gcc-patches/2021-June/573511.html
> https://gcc.gnu.org/bugzilla/show_bug.cgi?id=80223
> and I'm looking to match in
> https://reviews.llvm.org/D104810 .
>
> We already have precedence for this in LLVM; checkout `CompatRule` in
> llvm/include/llvm/IR/Attributes.td and
> `llvm::getAttributeBasedInliningDecision` in
> llvm/lib/Analysis/InlineCost.cpp.
>
> I'd argue it's also less surprising for a function not to be inlined
> than for a stack protector or profile/coverage instrumentation to show
> up when a function is explicitly attributed to not have those things.
> These attributes describe a desired property of the function. If
> inlined, we wish the new copies have the same property. However,
> function attribute applies to the whole function, not a subset of
> instructions.
>
> But, now we're making IR function attributes that could have been
> orthogonal (nossp, noinline) entangled.  That hurts the composition of
> such attributes.  (I will note, nossp does not unconditionally imply
> noinline; it implies "noinline for mismatched callers, and noinline on
> callees that are mismatched, on a per call site basis."
> __attribute__((always_inline)) will override this exception, and we
> don't provide helpful diagnostics in such case; good luck! :-/ )  We
> likely will have such conflicts with additional function attributes in
> the future. Should the inliner scan the caller and callee at every
> call site for such attribute lists? Should the LangRef document such
> inlining behavior?
>
> Another concern is diverging from GCC here; while we're both
> discussing no_profile_instrument_function it would be good to gather
> more feedback.
>
> Sometimes, I wish in C we had the ability to express at a given
> callsite that inlining the callee should not occur.
>
> You can see more discussion
> https://gcc.gnu.org/bugzilla/show_bug.cgi?id=80223 .  Surely there are
> additional solutions we have not yet conceived of. At this point, I
> don't particularly care what color we paint this bikeshed; I just need
> a bikeshed built so that my kernel boots.  We all want all software to
> be better, and can have a gentle-person's disagreement. Thoughts?
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKfqHeq7%2BVFg2XqhC7MAJ9RnH40qAYA3i2mRhx4yUZfi8b0Yew%40mail.gmail.com.

--00000000000013df9b05c68cfad5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Nick,<div><br></div><div>Thanks for bringing up this topic=
.</div><div><br></div><div>Another issue to consider is the performance imp=
act of the interaction between `no_stack_protector` and inlining.=C2=A0 If =
the translation unit is compiled with stack protectors and you want to remo=
ve them from a specific function you have=C2=A0to prevent all inlining into=
 the function in question or recursively annotate all called functions with=
 `no_stack_protector`.=C2=A0 This can lead to disastrous=C2=A0consequences =
for performance if it is a hot function.</div><div><br></div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid=
 rgb(204,204,204);padding-left:1ex">Sometimes, I wish in C we had the abili=
ty to express at a given callsite that inlining the callee should not occur=
.<br></blockquote><div><br></div><div>This would solve the usability proble=
m that you are discussing (you wouldn&#39;t have to go chasing down all cal=
lees that are marked as `alwaysinline`) but it wouldn&#39;t solve the perfo=
rmance problem.=C2=A0 Another solution might be to have an annotation that =
says &quot;my `no_stack_protector` or `no_profile_instrument_function` anno=
tation=C2=A0overrides the values from inlined functions&quot;.=C2=A0 This w=
ould allow the inlining to occur but gives the callee control over their ow=
n behavior.=C2=A0 If we had had this annotation it would have made one of t=
he several solutions to stack protectors in the Zygote that we tried actual=
ly viable.</div><div><br></div><div>- Chris</div></div><br><div class=3D"gm=
ail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jun 24, 2021 at 11=
:52 AM Nick Desaulniers &lt;<a href=3D"mailto:ndesaulniers@google.com">ndes=
aulniers@google.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex">Hey folks,<br>
It was suggested that I bring up a peculiarity from an individual code<br>
review to the list.<br>
<br>
We have a couple function attributes (in C) where inlining can produce<br>
unexpected or surprising results.<br>
<br>
Let&#39;s take for example, stack protectors, which help me prevent stack<b=
r>
buffer overruns from rewriting a return address pushed on the stack<br>
(sometimes). Now let&#39;s say I&#39;m an operating system kernel and I nee=
d<br>
to restore register state after suspend (ie. during resume).=C2=A0 That<br>
register state would conflict with the generated stack protector code,<br>
so I use a function attribute like __attribute__((no_stack_protector)<br>
to prevent my compiler from inserting such code in my resume handler<br>
which has to initialize a new stack canary.=C2=A0 But I wasn&#39;t careful =
to<br>
check that all of the functions I call from said handler have a<br>
matching function attribute, and due to inlining, I wind up with a<br>
stack protector, even though I requested a function not have a stack<br>
protector!=C2=A0 Suddenly I load the incorrect stack canary value from<br>
garbage register state, fail the stack check guard, and now I fail to<br>
resume due to a kernel panic. (True story)<br>
<br>
Another stack protector issue that came up recently has to do with<br>
forking &quot;zygote-like&quot; processes, and having unique stack protecto=
r<br>
values per process.=C2=A0 Point being, there are a few cases where we want<=
br>
stack protectors generally, but need the fine grain control provided<br>
by function attributes.=C2=A0 Moving code into separate translation units<b=
r>
in order to use different flags, is tedious and commonly runs into<br>
issues with LTO in LLVM when flags that aren&#39;t encoded in IR are<br>
dropped by LTO.<br>
<br>
Similar problems crop up again with coverage, and profiling<br>
instrumentation in &quot;delicate&quot; code.=C2=A0 Sanitizers, shadow call=
 stack,<br>
and a few others run into similar situations.<br>
<br>
As a developer without knowledge of my toolchain, how do I go about<br>
debugging this myself?=C2=A0 (Debugging the suspend/resume issue was not<br=
>
fun).<br>
<br>
What are some ways developers can fix this?=C2=A0 Well, if I know my call<b=
r>
chain, I can go through and start marking my callees<br>
__attribute__((no_stack_protector)) or __attribute__((noinline))<br>
recursively.=C2=A0 Eventually, I should get to the point where none of my<b=
r>
callees have stack protectors or are inlined. But that strips off more<br>
stack protectors perhaps than I&#39;d like, and leaves a lot of code<br>
unprotected.=C2=A0 This begins to feel like &quot;what color is your functi=
on?&quot;<br>
&quot;Red&quot; functions may only call other &quot;red&quot; functions; &q=
uot;blue&quot; functions<br>
may only call other &quot;blue&quot; functions.<br>
<a href=3D"https://journal.stuffwithstuff.com/2015/02/01/what-color-is-your=
-function/" rel=3D"noreferrer" target=3D"_blank">https://journal.stuffwiths=
tuff.com/2015/02/01/what-color-is-your-function/</a><br>
<br>
Maybe my callees have different callers with different constraints.<br>
Aliases can be used for callees.=C2=A0 Example:<br>
<br>
// has a stack protector<br>
void callee_bad(void) { ... }<br>
<br>
__attribute__((alias(&quot;callee_bad&quot;),noinline))<br>
void callee_good(void);<br>
<br>
// requires no stack protector<br>
__attribute__((no_stack_protector))<br>
void caller(void) {<br>
=C2=A0 callee_good();<br>
}<br>
<br>
However, caller() could be inlined into yet another (not defined<br>
above) call site that does have/need a stack protector.<br>
<br>
And other call sites (that don&#39;t care about stack protectors) can just<=
br>
call callee_bad like normal.=C2=A0 If I don&#39;t have too many callees, it=
&#39;s<br>
not too bad.=C2=A0 But very quickly it can become difficult as a developer<=
br>
to tell which callee was problematic.<br>
<br>
Another possibility is that the compiler could have knowledge of<br>
certain conflicting function attributes, and skip inline substitution<br>
of callee into caller upon mismatch.=C2=A0 We provide &quot;remarks&quot; t=
o help<br>
developers understand why inline substitution failed, if they care to<br>
know why.=C2=A0 ie.<br>
$ clang -O1 -O1 -Rpass-missed=3Dinline foo.c<br>
foo.c:6:10: remark: foo not inlined into bar because it should never<br>
be inlined (cost=3Dnever): &lt;really good reason why here&gt;<br>
<br>
Indeed, that&#39;s exactly the tact I took with no_stack_protector in<br>
commit bc044a88ee3c (&quot;[Inline] prevent inlining on stack protector mis=
match&quot;).<br>
<br>
It&#39;s what GCC is proposing for<br>
__attribute__((no_profile_instrument_function)) (coverage and<br>
profiling) in:<br>
<a href=3D"https://gcc.gnu.org/pipermail/gcc-patches/2021-June/573511.html"=
 rel=3D"noreferrer" target=3D"_blank">https://gcc.gnu.org/pipermail/gcc-pat=
ches/2021-June/573511.html</a><br>
<a href=3D"https://gcc.gnu.org/bugzilla/show_bug.cgi?id=3D80223" rel=3D"nor=
eferrer" target=3D"_blank">https://gcc.gnu.org/bugzilla/show_bug.cgi?id=3D8=
0223</a><br>
and I&#39;m looking to match in<br>
<a href=3D"https://reviews.llvm.org/D104810" rel=3D"noreferrer" target=3D"_=
blank">https://reviews.llvm.org/D104810</a> .<br>
<br>
We already have precedence for this in LLVM; checkout `CompatRule` in<br>
llvm/include/llvm/IR/Attributes.td and<br>
`llvm::getAttributeBasedInliningDecision` in<br>
llvm/lib/Analysis/InlineCost.cpp.<br>
<br>
I&#39;d argue it&#39;s also less surprising for a function not to be inline=
d<br>
than for a stack protector or profile/coverage instrumentation to show<br>
up when a function is explicitly attributed to not have those things.<br>
These attributes describe a desired property of the function. If<br>
inlined, we wish the new copies have the same property. However,<br>
function attribute applies to the whole function, not a subset of<br>
instructions.<br>
<br>
But, now we&#39;re making IR function attributes that could have been<br>
orthogonal (nossp, noinline) entangled.=C2=A0 That hurts the composition of=
<br>
such attributes.=C2=A0 (I will note, nossp does not unconditionally imply<b=
r>
noinline; it implies &quot;noinline for mismatched callers, and noinline on=
<br>
callees that are mismatched, on a per call site basis.&quot;<br>
__attribute__((always_inline)) will override this exception, and we<br>
don&#39;t provide helpful diagnostics in such case; good luck! :-/ )=C2=A0 =
We<br>
likely will have such conflicts with additional function attributes in<br>
the future. Should the inliner scan the caller and callee at every<br>
call site for such attribute lists? Should the LangRef document such<br>
inlining behavior?<br>
<br>
Another concern is diverging from GCC here; while we&#39;re both<br>
discussing no_profile_instrument_function it would be good to gather<br>
more feedback.<br>
<br>
Sometimes, I wish in C we had the ability to express at a given<br>
callsite that inlining the callee should not occur.<br>
<br>
You can see more discussion<br>
<a href=3D"https://gcc.gnu.org/bugzilla/show_bug.cgi?id=3D80223" rel=3D"nor=
eferrer" target=3D"_blank">https://gcc.gnu.org/bugzilla/show_bug.cgi?id=3D8=
0223</a> .=C2=A0 Surely there are<br>
additional solutions we have not yet conceived of. At this point, I<br>
don&#39;t particularly care what color we paint this bikeshed; I just need<=
br>
a bikeshed built so that my kernel boots.=C2=A0 We all want all software to=
<br>
be better, and can have a gentle-person&#39;s disagreement. Thoughts?<br>
</blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CAKfqHeq7%2BVFg2XqhC7MAJ9RnH40qAYA3i2mRhx4yUZf=
i8b0Yew%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://gr=
oups.google.com/d/msgid/clang-built-linux/CAKfqHeq7%2BVFg2XqhC7MAJ9RnH40qAY=
A3i2mRhx4yUZfi8b0Yew%40mail.gmail.com</a>.<br />

--00000000000013df9b05c68cfad5--
