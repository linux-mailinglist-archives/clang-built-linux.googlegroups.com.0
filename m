Return-Path: <clang-built-linux+bncBDYJPJO25UGBBC6U4H6AKGQEGOFZ65A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id C96D529C79B
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 19:42:20 +0100 (CET)
Received: by mail-pf1-x43a.google.com with SMTP id x24sf1413311pfi.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 11:42:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603824139; cv=pass;
        d=google.com; s=arc-20160816;
        b=zb61x5J6Cq0pTSKkIfSyLCR7bAJ+OTxWzlrqkuHJjgzwG5hZBgDixKf6AQtXeQC2Jx
         7uFko69r1XaBLd5O4Bgyr8mL9aVSv12d9sBmWJ3ZwD6/FcZDYaTDv66f2Njd0sKws+OW
         83I0i8VfQWhdYhu3NzN7XD4U3MLhdKtgith91tFj23UsgPNkFhcSe2+783m/tj/23CCG
         SGWfjW+cQx/rQ9pFJxlMsGZs2zJ9rDtkt+JTlPkjKwU/mMxK/Fwar2pbXFloKBE44AM2
         r6U64dl85xPu/ICRXJvRlxaRK/V1gpSE6QSRLmKHyrOwobM5WwjsHgJmZTGBW1wGPMCS
         FkVg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=gFEr7A/o7YC3YNnKADsiudI+lXJpqf1IGB7KtVllLpg=;
        b=WljBNUuNPa5gc0Bk0Y5qvvhVg+r9jDPyeOFsaQeRVoAp5a9Fptaqa7THyeYjUNs+Mz
         EJ7fLeiKq3/XvAAMfK7bChYmFjSLywdAyUQwvyyb//RUK0EcuQ0wiENaemc1CTaCqHkE
         xCmRRxsNTU/oNbNjilApQ9iHKF0BWgOtjwYYi8OmZ75ZdAdfv1zspadGntfhOjdCHPou
         xzPNxA6xQKMMJVu14Au+os+M9bf6smR9x/4ckhaT04vWXJxSrHSgyOngjvYfNYPEm9SK
         xjYLDfx8TndPNLjBQOH3ZeODhkZ3obtS3dD6ViZ311PJVIp6SCHXzPjC0QENUF58P0bQ
         HmZA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=aEKMwtsb;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gFEr7A/o7YC3YNnKADsiudI+lXJpqf1IGB7KtVllLpg=;
        b=ZREpxO5lEFU3cjCFD/sHeelqzD3vvJgxgaE+/oXaqHpGp+mz9moMroMZUPtdgf5knL
         sW2mCw+s5O3tYGF/Z6yArekC4sDeNdh5VxSDvQHRTB9qavNvMalWCazH5NcFY+vZJZ4f
         rMqBQPpudwbv4daQXb3nR9iM4pbVQsA7O2pSWfGeSJvDe6QwZ9/XziyHADXlV/NHiVsv
         OgKcUcOc9sFS1A1XWrvIM5BpiVx5WLQC/j3ywsNS/SxrQ8XoLFVzsFIgTB4/YdlH9nSG
         y0RRwe0WZOElIzpx4nMBmoK+ojfHUpMpejKb6u2Ow/XDxBniMGZ6aXsZgDz/3/a9AhKJ
         7V2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gFEr7A/o7YC3YNnKADsiudI+lXJpqf1IGB7KtVllLpg=;
        b=JwIdc1XHOJoTxtmx2RcnUJIebNDo+itOwWnJhWGvEyCQMF+pq0B4mkwH9tplbFnAx9
         S9/m8MzecEFJ6wUjjJ4Hx/7GSLgPE7/NaG5u4h7SNTc+h+u53bqwoa+mBaeHw/bCS3Em
         R8tct0MD5CCjPJN0TnTb562UvVVJ8inTq0FDbbc+yr37ppSQKLjYy3/8xBWsEqg1gO8h
         MOvCxZGUaImm6H0uIIISBkR94M/gUuTH0LOV5XoIyWCTum4nW09NWf7RV0MuD7sHG+2t
         n+oTFqiQTYf1XLMQ3qNDz6/oRnM4/zlCXoqAtsjWeoUzrbg05am27TQsqtLOyXZQuvL7
         IM6Q==
X-Gm-Message-State: AOAM530w6xeIvC+mMZNWfV5uKziNgxe7545UYJj24w60JSo7BUVRcmcZ
	Mfkjm5a7Vly3kKJLYn3D6Ww=
X-Google-Smtp-Source: ABdhPJxv0tbhWCsfTiBWILGkeDgl/k7bXunzQgKsOiyxnp+pS3xd69KFzK8S0+glzkMW+ARqlzelng==
X-Received: by 2002:a17:902:7242:b029:d4:c719:79ce with SMTP id c2-20020a1709027242b02900d4c71979cemr3576608pll.26.1603824139489;
        Tue, 27 Oct 2020 11:42:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:6a85:: with SMTP id n5ls1124302plk.9.gmail; Tue, 27
 Oct 2020 11:42:18 -0700 (PDT)
X-Received: by 2002:a17:902:8d8f:b029:d0:cc02:8527 with SMTP id v15-20020a1709028d8fb02900d0cc028527mr3709203plo.33.1603824138843;
        Tue, 27 Oct 2020 11:42:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603824138; cv=none;
        d=google.com; s=arc-20160816;
        b=Vfnr0uArOvofo7a+SuAYiPf06sB0PvQHuWNkYYuDjU9D1FN/+2bLPkBwEQnLxDRTl1
         V7wcIBszO28ziPTj11goRYsGbx7vZ+EQdBKrdrR+I8Q4fTvcbpAz7holyvNprsSgWKeq
         25vgo+yoGt3F13KwKiu+UwpRVxDMzdHzWjO94vbcDz6MTRdN/ZhgpPPcOYq6dL+sDLk4
         ywW2MFIG1S3DMLHcfI4bdf8O2OwOAOGPc7YpSGSrjnMBEFmarZhuNafpa8CLi3nRjGq9
         WZMIr5ePLYD32k4I6su/nU0x2V1s4exwqCD3CwCZSt/yqA7C3gElHYUqDxG1NUgkvpob
         +CBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=z4UOH5jyqTNumhZnEvlhMMc/cRwn1xdTsrZ9+JD6lok=;
        b=NzQAFAryVQsPtsm/z100GFjZ68ZONyistWYEf+d1CJo+AdwXLchAbTQNt6zxN27lHU
         lJ6Z9mBATrHJiPEDt5076/535jW4cIv2M+JQ5rIvUFwMRxmWDYvNTb4ScsjHGeXBM2W3
         G4O3+ybMTcUA658PEQnoTzFnVs8OKPxJ9gaj+pYrWBG/iu6w2u+PovC6bRIFr4x8S/j8
         zTgdqG89CVIIM6KYTw5MvyES0PDlK5cZuml5lwPn9bQlz9Gi0nhChr4zM2uKmHz2Dmkn
         Gxl1RifcJ9N6/+MOrK8beZKfC/xOtUJgefOd1hsqphkKJP7oLU4/zvE7hTUMUKJDCouE
         dimg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=aEKMwtsb;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id mv6si144194pjb.0.2020.10.27.11.42.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Oct 2020 11:42:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id o129so1442392pfb.1
        for <clang-built-linux@googlegroups.com>; Tue, 27 Oct 2020 11:42:18 -0700 (PDT)
X-Received: by 2002:a63:5152:: with SMTP id r18mr2927519pgl.381.1603824138147;
 Tue, 27 Oct 2020 11:42:18 -0700 (PDT)
MIME-Version: 1.0
References: <20201027164255.1573301-1-trix@redhat.com>
In-Reply-To: <20201027164255.1573301-1-trix@redhat.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 27 Oct 2020 11:42:07 -0700
Message-ID: <CAKwvOd=83v0Sv-NhQ5xgqdNSRm2b=pOJDziX8axZ9t2YyYwz-A@mail.gmail.com>
Subject: Re: Subject: [RFC] clang tooling cleanups
To: Tom Rix <trix@redhat.com>
Cc: LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, linux-toolchains@vger.kernel.org, 
	Joe Perches <joe@perches.com>, Julia.Lawall@lip6.fr, 
	Linus Torvalds <torvalds@linux-foundation.org>, Masahiro Yamada <masahiroy@kernel.org>, 
	Nathan Huckleberry <nhuck15@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=aEKMwtsb;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443
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

(cutting down the CC list to something more intimate)

Tom, I'm over the moon to see clang-tidy being used this way.  I
totally forgot it could automatically apply fixits.  I'm glad Nathan
and Masahiro were able to get the foundation laid for running
clang-tidy on the kernel this summer.

On Tue, Oct 27, 2020 at 9:43 AM <trix@redhat.com> wrote:
>
> This rfc will describe
> An upcoming treewide cleanup.
> How clang tooling was used to programatically do the clean up.
> Solicit opinions on how to generally use clang tooling.
>
> The clang warning -Wextra-semi-stmt produces about 10k warnings.
> Reviewing these, a subset of semicolon after a switch looks safe to
> fix all the time.  An example problem
>
> void foo(int a) {
>      switch(a) {
>                case 1:
>                ...
>      }; <--- extra semicolon
> }
>
> Treewide, there are about 100 problems in 50 files for x86_64 allyesconfig.
> These fixes will be the upcoming cleanup.
>
> clang already supports fixing this problem. Add to your command line
>
>   clang -c -Wextra-semi-stmt -Xclang -fixit foo.c
>
>   foo.c:8:3: warning: empty expression statement has no effect;
>     remove unnecessary ';' to silence this warning [-Wextra-semi-stmt]
>         };
>          ^
>   foo.c:8:3: note: FIX-IT applied suggested code changes
>   1 warning generated.

Ah, doesn't that rely on clang-tidy to apply the fixit?  (oh, what,
maybe not: https://stackoverflow.com/a/49749277)

And doesn't that require your patch to clang-tidy to land?
https://reviews.llvm.org/D90180

Now I'm confused; if clang can apply the fixit for warnings, why do we
need another patch to clang-tidy?

>
> The big problem is using this treewide is it will fix all 10k problems.
> 10k changes to analyze and upstream is not practical.
>
> Another problem is the generic fixer only removes the semicolon.
> So empty lines with some tabs need to be manually cleaned.
>
> What is needed is a more precise fixer.
>
> Enter clang-tidy.
> https://clang.llvm.org/extra/clang-tidy/
>
> Already part of the static checker infrastructure, invoke on the clang
> build with
>   make clang-tidy
>
> It is only a matter of coding up a specific checker for the cleanup.
> Upstream this is review is happening here
> https://reviews.llvm.org/D90180

Sorry, I still don't understand how the clang-tidy checker wont also
produce 10k fixes?

>
> The development of a checker/fixer is
> Start with a reproducer
>
> void foo (int a) {
>   switch (a) {};
> }
>
> Generate the abstract syntax tree (AST)
>
>   clang -Xclang -ast-dump foo.c
>
> `-FunctionDecl
>   |-ParmVarDecl
>   `-CompoundStmt
>     |-SwitchStmt
>     | |-ImplicitCastExpr
>     | | `-DeclRefExpr
>     | `-CompoundStmt
>     `-NullStmt
>
> Write a matcher to get you most of the way
>
> void SwitchSemiCheck::registerMatchers(MatchFinder *Finder) {
>   Finder->addMatcher(
>       compoundStmt(has(switchStmt().bind("switch"))).bind("comp"), this);
> }
>
> The 'bind' method is important, it allows a string to be associated
> with a node in the AST.  In this case these are
>
> `-FunctionDecl
>   |-ParmVarDecl
>   `-CompoundStmt <-------- comp
>     |-SwitchStmt <-------- switch
>     | |-ImplicitCastExpr
>     | | `-DeclRefExpr
>     | `-CompoundStmt
>     `-NullStmt
>
> When a match is made the 'check' method will be called.
>
>   void SwitchSemiCheck::check(const MatchFinder::MatchResult &Result) {
>     auto *C = Result.Nodes.getNodeAs<CompoundStmt>("comp");
>     auto *S = Result.Nodes.getNodeAs<SwitchStmt>("switch");
>
> This is where the string in the bind calls are changed to nodes
>
> `-FunctionDecl
>   |-ParmVarDecl
>   `-CompoundStmt <-------- comp, C
>     |-SwitchStmt <-------- switch, S
>     | |-ImplicitCastExpr
>     | | `-DeclRefExpr
>     | `-CompoundStmt
>     `-NullStmt <---------- looking for N
>
> And then more logic to find the NullStmt
>
>   auto Current = C->body_begin();
>   auto Next = Current;
>   Next++;
>   while (Next != C->body_end()) {
>     if (*Current == S) {
>       if (const auto *N = dyn_cast<NullStmt>(*Next)) {
>
> When it is found, a warning is printed and a FixItHint is proposed.
>
>   auto H = FixItHint::CreateReplacement(
>     SourceRange(S->getBody()->getEndLoc(), N->getSemiLoc()), "}");
>   diag(N->getSemiLoc(), "unneeded semicolon") << H;
>
> This fixit replaces from the end of switch to the semicolon with a
> '}'.  Because the end of the switch is '}' this has the effect of
> removing all the whitespace as well as the semicolon.
>
> Because of the checker's placement in clang-tidy existing linuxkernel
> checkers, all that was needed to fix the tree was to add a '-fix'to the
> build's clang-tidy call.

I wonder if there's a way to differentiate existing checks we'd prefer
to run continuously vs newer noisier ones?  Drowning in a sea of 10k
-Wextra-semi-stmt doesn't sound like fun.  Maybe a new target for make
to differentiate reporting vs auto fixing?

>
> I am looking for opinions on what we want to do specifically with
> cleanups and generally about other source-to-source programmatic
> changes to the code base.
>
> For cleanups, I think we need a new toplevel target
>
> clang-tidy-fix

ah, yep, I agree.  Though I'm curious now that I know that clang can
be used as the driver to apply fixits rather than clang-tidy, how else
we can leverage clang over manually writing clang-tidy checks.  Unless
I have something confused there?

>
> And an explicit list of fixers that have a very high (100%?) fix rate.
>
> Ideally a bot should make the changes, but a bot could also nag folks.
> Is there interest in a bot making the changes? Does one already exist?

Most recently Joe sent a treewide fix for section attributes that
Linux pulled just after the merge window closed, IIUC.  Maybe that
would be the best time, since automation makes it trivial for anyone
to run the treewide fixit whenever.

>
> The general source-to-source is a bit blue sky.  Ex/ could automagicly
> refactor api, outline similar cut-n-pasted functions etc. Anything on
> someone's wishlist you want to try out ?
>
> Signed-off-by: Tom Rix <trix@redhat.com>
>
> --

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3D83v0Sv-NhQ5xgqdNSRm2b%3DpOJDziX8axZ9t2YyYwz-A%40mail.gmail.com.
