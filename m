Return-Path: <clang-built-linux+bncBCG6FGHT7ALRB7OO5GEAMGQEZPPEE4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x238.google.com (mail-lj1-x238.google.com [IPv6:2a00:1450:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FD353ED6D1
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Aug 2021 15:26:22 +0200 (CEST)
Received: by mail-lj1-x238.google.com with SMTP id b39-20020a05651c0b27b02901b47664ce3esf5933357ljr.21
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Aug 2021 06:26:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629120382; cv=pass;
        d=google.com; s=arc-20160816;
        b=uiEIqtqVM7u5kjHLO9VcJ4bqNp+7HCGE0KpJcr+Xa0FnvMJX6mWiyKx9BEBbx3J2uQ
         XZfqOzgzLUjyqX2eAUEHNPwfmn4xVhWqzSzuF58GSLv9LnhtXPYbR4clA6g3UnRyE3wY
         JCGkr9uetqDbJraL9ESwz+CctaMZw6RspZvS5+tGVNYtN4IAjjtPJeUBKh4Dl/VSMjA6
         jRCdOYKLZP1rceWZltcjw9vh7TV7+a3CgY38duRl7BcQ/gYC5JCL7iN1j5/Mg1iknWBv
         cKpdobZqBR0ehLbsI9zHHAyrCBuCdWK2gZeuQiRCPpDjTvGTAHtng2xQxmolJqlUW3zI
         Bsjw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=2Met08U3aDuHmm86/Je+8djvoBOdl3KgaGRN7FGLxGA=;
        b=PY+yXnmr+hmfsO0xHVNEyfr4uK9sRvzCbih7EYUJxXX9MgBIFKZL0smDLT5ksT/aFB
         4TB+jv4rNGzpMe197SktK7z9BbP5NlOTVA4skTZn4COtBOr78Z4wobmibBhrYStHJXJL
         DyfWcc0ccI2M+iWKAgoDWe5quhWPreLOLs2wyQVTRL9oqEl1Dgpxn0f7iK86zunOE+eM
         Y4QmrlBfDLqlpw77dHNIX4kaloDus1q8q7c5KDAfBmoor3Pls416bTyS0Npru+md+ET6
         3Titx7noi1yYKopQ3vgkq+dTFCYvBllWsAUOvA/0Anog3TNhhjJcD+irBcrm4Q3wnYg+
         6HfQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@suse.cz header.s=susede2_rsa header.b=nW2bRsC2;
       dkim=neutral (no key) header.i=@suse.cz;
       spf=pass (google.com: domain of mliska@suse.cz designates 195.135.220.29 as permitted sender) smtp.mailfrom=mliska@suse.cz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2Met08U3aDuHmm86/Je+8djvoBOdl3KgaGRN7FGLxGA=;
        b=p3VqYKLraHqJU+dbuT14WJ6n/XMEdf041VRlc/bVaudmom/hRGgziOxNU7W9Ifj1zb
         SldioQCpEXIWksTx63RaAFvt85tI5pTAMSLGOWzua600PbkAYYyZU+FjpgEIU8B/A1mt
         wwO1pbTzt1sPYoaRNVg8KgrZWm9RjJtYR+LmOgGAaSiyAFoIzHtsx1IqGPlONzotscxF
         sZMn38lz7LBqVMD0XvXyMM+bdh4F/zpQYJOQsyXQGGv+pbYwkq0dtKpTltd9PImGmFEy
         vERUl7X7G1sWpimZIgR5w6dT3L8x/a0OGExzXzLbJAp8GibZ9qdSe+QmfWtgbdJcN+cn
         TScw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=2Met08U3aDuHmm86/Je+8djvoBOdl3KgaGRN7FGLxGA=;
        b=KjHbz20WVgXQv4IF16LmIEZ2MetFu9zLDUuon0sTF3u/UZkywGUu0aPQxKpGAKy+QZ
         0oMGqMq/wIE9DH/2T8isGl4LJFLbv9BYiZem6W0vAlcBZguusaLcv18pzMz6ZzUYJBAt
         vdss8D0FChNAjVsziQcorOCJc8cwETgHNOGV2VElCvfF5Su5bFU+3kggDcTltZlFP6OH
         /l45fLvScnKimqKaspkyzER9o85wsiNgOGXuemLwvS0hLFUW+F7T6+eA4HOmg0eOqed1
         R4MTWQCxt/QogKAbVkEc8ImKm/TN0M309EANKG/wRcn5fj2WMjgIFhChGJthHuHgStgp
         vCcg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531NmX5hYO9+jJNHKMt+NfL/68WYTAGWbUh+KScqsiL58rqakBFF
	auJV06FpIC7G4dk//aX+3Ng=
X-Google-Smtp-Source: ABdhPJxg754BQUEtlQP0YYlayBkkhJAWB5EbtgozEL2JccG1tQwhB2KGSVVdWTx0TTCizRSXrwJhCw==
X-Received: by 2002:a2e:97cf:: with SMTP id m15mr1122249ljj.243.1629120381986;
        Mon, 16 Aug 2021 06:26:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:3f02:: with SMTP id y2ls1191848lfa.3.gmail; Mon, 16
 Aug 2021 06:26:20 -0700 (PDT)
X-Received: by 2002:a05:6512:3487:: with SMTP id v7mr8124856lfr.302.1629120380812;
        Mon, 16 Aug 2021 06:26:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629120380; cv=none;
        d=google.com; s=arc-20160816;
        b=DTDdL+UbEUBnCmxzucgpfcq2zbuXxNxvGFa6jqcHuqMqN69bO8YrvhJXtuhuRewxEM
         Cbh0sX4kO35yJLd4vapiSdxIrYU/WgsKRxUcsCx9rbPQOngUouA6qdfy53iUybPFBSD3
         fReDCcze5V+WoyNKdfyizIG0JqqVN9Zu0E14r9LGoWHeXgGVUnV+uhj3p5wGZj5HghXT
         AcYMnvfV32mxrmxF++DLZ9ANvi0lMvcBXBINyU/mIS6A1AQnRaOQ8ZcHQ1NAR1YKvoka
         FCk4SBiR9J0yRpKoTrX2gLbEd7WuDUiTAQaeTOOJaiyGkIYSYqDuFv2/SFYL5gQznBC0
         4g+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature:dkim-signature;
        bh=pZXhUuC5IeQVm5n0oMshkgaNcmcP4QYHzlrl0+H7GWA=;
        b=kFGoh32D8J7Re2tziRaCtUpWyHCp6tPKVHwL+nIR6gCHqzleNvspjA33t8pi4qt/2r
         KgcHS/3PqmT7Yf06MU9e3TdbuGSi2o8LHGes05a4RtO/sqBkUXFvZbYblDXVpKTaSTBS
         QCYUYkvwP65hQHquuP4KxPE6RE2onj0H7NTe085jWaWTpDevdjbr/vzAep9/RDUmsXZJ
         hz25c2clmZ7+hufNdDffFKvl//tNG4foINbQ2KqYHPOLekr4V15pZbGD8AFtsCGoVMVK
         er9BbWw/J+GIZsKCYuuOSBDJwM6R+MoT38y7WiUKJOQw8bm6Js6fXR+8us0SJViDXxPe
         U+Ww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@suse.cz header.s=susede2_rsa header.b=nW2bRsC2;
       dkim=neutral (no key) header.i=@suse.cz;
       spf=pass (google.com: domain of mliska@suse.cz designates 195.135.220.29 as permitted sender) smtp.mailfrom=mliska@suse.cz
Received: from smtp-out2.suse.de (smtp-out2.suse.de. [195.135.220.29])
        by gmr-mx.google.com with ESMTPS id h2si560101lft.5.2021.08.16.06.26.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Aug 2021 06:26:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of mliska@suse.cz designates 195.135.220.29 as permitted sender) client-ip=195.135.220.29;
Received: from imap1.suse-dmz.suse.de (imap1.suse-dmz.suse.de [192.168.254.73])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
	(No client certificate requested)
	by smtp-out2.suse.de (Postfix) with ESMTPS id 2323B1FD49;
	Mon, 16 Aug 2021 13:26:20 +0000 (UTC)
Received: from imap1.suse-dmz.suse.de (imap1.suse-dmz.suse.de [192.168.254.73])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
	(No client certificate requested)
	by imap1.suse-dmz.suse.de (Postfix) with ESMTPS id E09D613301;
	Mon, 16 Aug 2021 13:26:19 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
	by imap1.suse-dmz.suse.de with ESMTPSA
	id dme+NXtnGmGuOQAAGKfGzw
	(envelope-from <mliska@suse.cz>); Mon, 16 Aug 2021 13:26:19 +0000
Subject: Re: [RFC] inlining and mismatched function attributes
To: Nick Desaulniers <ndesaulniers@google.com>,
 llvm-dev <llvm-dev@lists.llvm.org>
Cc: Fangrui Song <maskray@google.com>, Marco Elver <elver@google.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Chris Wailes <chriswailes@google.com>, Johannes Doerfert <jdoerfert@anl.gov>
References: <CAKwvOdncyTGCrjeNBLnZoo_NM7qOdBCw1CEmxUGt135OKzMXEQ@mail.gmail.com>
From: =?UTF-8?Q?Martin_Li=c5=a1ka?= <mliska@suse.cz>
Message-ID: <c2684bb5-1ba7-174c-674d-c3c8f91645a8@suse.cz>
Date: Mon, 16 Aug 2021 15:26:19 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <CAKwvOdncyTGCrjeNBLnZoo_NM7qOdBCw1CEmxUGt135OKzMXEQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: mliska@suse.cz
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@suse.cz header.s=susede2_rsa header.b=nW2bRsC2;       dkim=neutral
 (no key) header.i=@suse.cz;       spf=pass (google.com: domain of
 mliska@suse.cz designates 195.135.220.29 as permitted sender) smtp.mailfrom=mliska@suse.cz
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

On 6/24/21 8:52 PM, Nick Desaulniers wrote:
> Hey folks,
> It was suggested that I bring up a peculiarity from an individual code
> review to the list.

Hello.

You raise bunch of very interesting question I must say.

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

Just adding a note, where Jakub disagrees with blocking of the inlining
for the stact protector attribute:
https://gcc.gnu.org/bugzilla/show_bug.cgi?id=94722#c9

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
>    callee_good();
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
> commit bc044a88ee3c ("[Inline] prevent inlining on stack protector mismatch").
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

About this attribute, it's definitely something different as no_stack_protector
is a release feature, while no_profile_instrument_function is used for PGO.

My understanding of the attribute is that it's used for super-busy functions
which would slow down a training run significantly. So GCC approach would
be to allow inlining of a function after PGO instrumentation.

Martin

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/c2684bb5-1ba7-174c-674d-c3c8f91645a8%40suse.cz.
