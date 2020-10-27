Return-Path: <clang-built-linux+bncBC27X66SWQMBBL7M4H6AKGQE4UGFGDQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3a.google.com (mail-qv1-xf3a.google.com [IPv6:2607:f8b0:4864:20::f3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 9181129C902
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 20:34:08 +0100 (CET)
Received: by mail-qv1-xf3a.google.com with SMTP id d16sf1533642qvy.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 12:34:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603827247; cv=pass;
        d=google.com; s=arc-20160816;
        b=PqJK33MjREhL4gcMOZfrHZFgL7nxUAHakbcb1+x8ZRLkvfj0HDQzr1l3gsfQ1AR2ku
         ewalI7JN7d4RR1BYeHCImITi9dFFFRqlYFIlmPSVNo4BncRE3MejtkF5ks7MAeWNX9mv
         bfMzUgRoaBMYon+akbjZ7VNKP7eoRz5dKBqiraWOp9jXsKcCcdx9M2XfgPgIDdnwjC9W
         sXU38U5qnjt3ugprtocE5B5G3ndvFzR9SeS0UblqCYKn1cmcwAkQP99Yd6RdrN4C0Uno
         W7SSJ1pWase42REZFvZt/iukaA+YuJxox0ASYT28l5hwcKHggdKIe8s1k996KfLGwZIR
         OKIg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=2EM99HiMgkbSuytdImBq8xCYDGtOPm3qZalu3JuPtzE=;
        b=rsyM5mpxdiuruK/3V63ZD4gYuD8WysIArEi327gCfMZISHZEGVMQK6gwz2dExttK0Q
         mZUhhfAqYNUec05IIDEv7f968UZF4IrsZ7el8fenFHvGRzRJWS1DJ2NleCnMOQy0qkQH
         tZQ3HM3/yzPJWr5fBoF7kWI0rSDjNbLpHwdeOduIy3Znr+yhfO0hHqUDkJXCraGLV6t1
         w2HhcvMN47qh2FunWlPFfGIqIWdhQeBHzN7FAxrEAi8gasLZ3RbJbPkU3Fp0CO01s7Wc
         bST8dFBzM8PDu5TgtkJanxxLX1meCg3UwN3DJsRLQCHiWDiHFEoWW3QK1Q0IkKynXMfw
         +ygw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=JgXjvlDd;
       spf=pass (google.com: domain of trix@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2EM99HiMgkbSuytdImBq8xCYDGtOPm3qZalu3JuPtzE=;
        b=jKTUJX2b0XCfZepkK7FFNBPK5ORFegdaGN6ICaWIKppZV1yur9fYLGdTuyIMfWr/4A
         0S8DZHfg89vwFn5YoCuIoiFfH1fiPOaDxorc1iJ9P7qg+6w1isbvc8ylmstC/zZGbJJ4
         0S1Y8JIfARs+Jy4D8hVTb2rcNg/NCesy59T++AwzTH7uZY7K3aNcvXPsa4tjfqxBujQV
         HsVqd5O2JHMSfdl1eQyUOV3FWFFkbgOlbp6RLzHMHsVkJMiU5a69NY8423xqeQZwZz/D
         3nxIq1a9y7gyfR0nG+qarf5zQqc8SU4hJnC9ZR47ladJ0eVcuHRNXwV/kPNq9wsDeJbe
         kvIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=2EM99HiMgkbSuytdImBq8xCYDGtOPm3qZalu3JuPtzE=;
        b=I8TGyXS7h1D/H7RX5OalYrHNW28UPXoepWdHmqtukXGQTI7qOAz06SYEvBxq+QTzzd
         AKVzj+sV0buWNKgNqNFZW6i4BDnsWLyjAvfLBVCBJMgE+sjYYlzA5RB1CV/Rmp8egEx5
         /cq7Ns3lNuwQ1a6NjXlUKVs8P7cwJlYHpNr4M/yFlRXlhxdC/l0XF+9+2xWg+ymFVYZ2
         ZA4d7CV4dg/QzLT65JcuRhllxta1fTA7g9JL+iQ9kBw//TonU9dCP0zXyl7aDlKdyPsq
         K9Evk9vDGjZ/sesg1KB8iF1RLP/rizkDal2sY7KgvV/TGwC7lxRbpRDp0wDmxiNfAau3
         XxAQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532R6XhHmZ11T5gPq7Qy0p/REAztZZeIyfNZDN0UVq6aA+u8Hj8d
	BvhtHqKJ/+dG8mdXcvrBEFc=
X-Google-Smtp-Source: ABdhPJzUJ8Ve0+TCUml5Z8iBC+po8JILJCI2SrmILPle9xS6eEhb2gHzZ6E9hVY0+WRPKWKnjSr6PA==
X-Received: by 2002:ad4:5843:: with SMTP id de3mr4023912qvb.12.1603827247555;
        Tue, 27 Oct 2020 12:34:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:8744:: with SMTP id j65ls1226145qkd.1.gmail; Tue, 27 Oct
 2020 12:34:07 -0700 (PDT)
X-Received: by 2002:a05:620a:103c:: with SMTP id a28mr3645695qkk.21.1603827247047;
        Tue, 27 Oct 2020 12:34:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603827247; cv=none;
        d=google.com; s=arc-20160816;
        b=RyfSVWOKnycwn7NL1C4cjd7PqCdsx6ATBGMVhH2d78ie5KFYrWR9/W7OVHT0Fdtn1D
         ocENDJupfzpy1oEBPEOVrajmXVTWp+iYxC7ZL2ZieqSt8WwWxT+FSK/0UDz49YcFDTzl
         pTH789ApXvYEFGZyMvgmcmHrUtwnSZEXFrpTSgeIgm5U0N/npXn/JqSwvkB6monKxoJe
         BKzHYDkMQZKDoI1uu4qYZIVJDruDubK+0LR9BFMa1w0ieD9OWYq5XeeGhyn+LKCceDWJ
         cOsKlRwLtpFZl1pTne4S/LFGd9xuhS505iKJl7gY8hu3IoToASNCpsydcL5P6NVXIhoI
         pLMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=J4k50Yu7bOoV/ZgIg7/uNXPd/NZkISAhyo8g0Xv0iog=;
        b=p0uJKXmCqdPJvjAdqz6+u+tTJzMKrENgl+Bs4bein/WoNWLhS7I/6PtAH2KUDkcf1c
         9y1MGUdKUSo5XcErwuSkRSZqoy0Vhv8N72Eh+Yz0lzLge0ZMT/zzzupbTGSy8tNQlAFb
         0rX0YSsgtM8KYm7kg88CGRHGPiq6amO2cFq/J/vw0B6K4nw+0WAVT2A2guhsms4XoEKl
         DnBCYYgO2uKDuGXK51xc+gy2xJvy9AhpmQOs61zzRwDwn+ivW6kF2myUn7Kw4mgM9LXH
         JXSuj1MX2wnxU1eb1OTy26ukLzaDCNCxaz+uuNzgSuwadBzaz+BMi/tR18rp+FptCVfB
         TRIQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=JgXjvlDd;
       spf=pass (google.com: domain of trix@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id o11si135351qtq.5.2020.10.27.12.34.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Oct 2020 12:34:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of trix@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mail-oo1-f71.google.com (mail-oo1-f71.google.com
 [209.85.161.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-442-BU9TuMdLOnWloHn_ofrydw-1; Tue, 27 Oct 2020 15:34:02 -0400
X-MC-Unique: BU9TuMdLOnWloHn_ofrydw-1
Received: by mail-oo1-f71.google.com with SMTP id r25so1253429oop.0
        for <clang-built-linux@googlegroups.com>; Tue, 27 Oct 2020 12:34:02 -0700 (PDT)
X-Received: by 2002:a9d:a0d:: with SMTP id 13mr2459893otg.348.1603827241683;
        Tue, 27 Oct 2020 12:34:01 -0700 (PDT)
X-Received: by 2002:a9d:a0d:: with SMTP id 13mr2459868otg.348.1603827241311;
        Tue, 27 Oct 2020 12:34:01 -0700 (PDT)
Received: from trix.remote.csb (075-142-250-213.res.spectrum.com. [75.142.250.213])
        by smtp.gmail.com with ESMTPSA id 105sm1398629otf.52.2020.10.27.12.33.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Oct 2020 12:34:00 -0700 (PDT)
Subject: Re: Subject: [RFC] clang tooling cleanups
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 linux-toolchains@vger.kernel.org, Joe Perches <joe@perches.com>,
 Julia.Lawall@lip6.fr, Linus Torvalds <torvalds@linux-foundation.org>,
 Masahiro Yamada <masahiroy@kernel.org>,
 Nathan Huckleberry <nhuck15@gmail.com>
References: <20201027164255.1573301-1-trix@redhat.com>
 <CAKwvOd=83v0Sv-NhQ5xgqdNSRm2b=pOJDziX8axZ9t2YyYwz-A@mail.gmail.com>
From: Tom Rix <trix@redhat.com>
Message-ID: <8abd1e5a-511a-e4f6-6f2c-a045d33fa2aa@redhat.com>
Date: Tue, 27 Oct 2020 12:33:59 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <CAKwvOd=83v0Sv-NhQ5xgqdNSRm2b=pOJDziX8axZ9t2YyYwz-A@mail.gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: trix@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=JgXjvlDd;
       spf=pass (google.com: domain of trix@redhat.com designates
 63.128.21.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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


On 10/27/20 11:42 AM, Nick Desaulniers wrote:
> (cutting down the CC list to something more intimate)
>
> Tom, I'm over the moon to see clang-tidy being used this way.  I
> totally forgot it could automatically apply fixits.  I'm glad Nathan
> and Masahiro were able to get the foundation laid for running
> clang-tidy on the kernel this summer.
>
> On Tue, Oct 27, 2020 at 9:43 AM <trix@redhat.com> wrote:
>> This rfc will describe
>> An upcoming treewide cleanup.
>> How clang tooling was used to programatically do the clean up.
>> Solicit opinions on how to generally use clang tooling.
>>
>> The clang warning -Wextra-semi-stmt produces about 10k warnings.
>> Reviewing these, a subset of semicolon after a switch looks safe to
>> fix all the time.  An example problem
>>
>> void foo(int a) {
>>      switch(a) {
>>                case 1:
>>                ...
>>      }; <--- extra semicolon
>> }
>>
>> Treewide, there are about 100 problems in 50 files for x86_64 allyesconfig.
>> These fixes will be the upcoming cleanup.
>>
>> clang already supports fixing this problem. Add to your command line
>>
>>   clang -c -Wextra-semi-stmt -Xclang -fixit foo.c
>>
>>   foo.c:8:3: warning: empty expression statement has no effect;
>>     remove unnecessary ';' to silence this warning [-Wextra-semi-stmt]
>>         };
>>          ^
>>   foo.c:8:3: note: FIX-IT applied suggested code changes
>>   1 warning generated.
> Ah, doesn't that rely on clang-tidy to apply the fixit?  (oh, what,
> maybe not: https://stackoverflow.com/a/49749277)
>
> And doesn't that require your patch to clang-tidy to land?
> https://reviews.llvm.org/D90180
>
> Now I'm confused; if clang can apply the fixit for warnings, why do we
> need another patch to clang-tidy?

No, this shows where the fixer is upstream.

I am in the process of pushing out the patches.

Long term the clang-tidy part of the build will change once it lands.

globbing the checker to -checker=-*,linuxkernel* would be easiest on the kernel

but that may not be where the checker lands.

>> The big problem is using this treewide is it will fix all 10k problems.
>> 10k changes to analyze and upstream is not practical.
>>
>> Another problem is the generic fixer only removes the semicolon.
>> So empty lines with some tabs need to be manually cleaned.
>>
>> What is needed is a more precise fixer.
>>
>> Enter clang-tidy.
>> https://clang.llvm.org/extra/clang-tidy/
>>
>> Already part of the static checker infrastructure, invoke on the clang
>> build with
>>   make clang-tidy
>>
>> It is only a matter of coding up a specific checker for the cleanup.
>> Upstream this is review is happening here
>> https://reviews.llvm.org/D90180
> Sorry, I still don't understand how the clang-tidy checker wont also
> produce 10k fixes?

I am interested in treewide fixes.

Cleaning them up (maybe me not doing all the patches) and keeping them clean.

The clang -Wextra-semi-stmt -fixit will fix all 10,000 problems

This clang tidy fixer will fix only the 100 problems that are 'switch() {};'

When doing a treewide cleanup, batching a bunch of fixes that are the same problem and fix

is much easier on everyone to review and more likely to be accepted.


Long term, a c/i system would keep the tree clean by running the switch-semi checker/fixer.

And we can all move onto the next problem.

>
>> The development of a checker/fixer is
>> Start with a reproducer
>>
>> void foo (int a) {
>>   switch (a) {};
>> }
>>
>> Generate the abstract syntax tree (AST)
>>
>>   clang -Xclang -ast-dump foo.c
>>
>> `-FunctionDecl
>>   |-ParmVarDecl
>>   `-CompoundStmt
>>     |-SwitchStmt
>>     | |-ImplicitCastExpr
>>     | | `-DeclRefExpr
>>     | `-CompoundStmt
>>     `-NullStmt
>>
>> Write a matcher to get you most of the way
>>
>> void SwitchSemiCheck::registerMatchers(MatchFinder *Finder) {
>>   Finder->addMatcher(
>>       compoundStmt(has(switchStmt().bind("switch"))).bind("comp"), this);
>> }
>>
>> The 'bind' method is important, it allows a string to be associated
>> with a node in the AST.  In this case these are
>>
>> `-FunctionDecl
>>   |-ParmVarDecl
>>   `-CompoundStmt <-------- comp
>>     |-SwitchStmt <-------- switch
>>     | |-ImplicitCastExpr
>>     | | `-DeclRefExpr
>>     | `-CompoundStmt
>>     `-NullStmt
>>
>> When a match is made the 'check' method will be called.
>>
>>   void SwitchSemiCheck::check(const MatchFinder::MatchResult &Result) {
>>     auto *C = Result.Nodes.getNodeAs<CompoundStmt>("comp");
>>     auto *S = Result.Nodes.getNodeAs<SwitchStmt>("switch");
>>
>> This is where the string in the bind calls are changed to nodes
>>
>> `-FunctionDecl
>>   |-ParmVarDecl
>>   `-CompoundStmt <-------- comp, C
>>     |-SwitchStmt <-------- switch, S
>>     | |-ImplicitCastExpr
>>     | | `-DeclRefExpr
>>     | `-CompoundStmt
>>     `-NullStmt <---------- looking for N
>>
>> And then more logic to find the NullStmt
>>
>>   auto Current = C->body_begin();
>>   auto Next = Current;
>>   Next++;
>>   while (Next != C->body_end()) {
>>     if (*Current == S) {
>>       if (const auto *N = dyn_cast<NullStmt>(*Next)) {
>>
>> When it is found, a warning is printed and a FixItHint is proposed.
>>
>>   auto H = FixItHint::CreateReplacement(
>>     SourceRange(S->getBody()->getEndLoc(), N->getSemiLoc()), "}");
>>   diag(N->getSemiLoc(), "unneeded semicolon") << H;
>>
>> This fixit replaces from the end of switch to the semicolon with a
>> '}'.  Because the end of the switch is '}' this has the effect of
>> removing all the whitespace as well as the semicolon.
>>
>> Because of the checker's placement in clang-tidy existing linuxkernel
>> checkers, all that was needed to fix the tree was to add a '-fix'to the
>> build's clang-tidy call.
> I wonder if there's a way to differentiate existing checks we'd prefer
> to run continuously vs newer noisier ones?  Drowning in a sea of 10k
> -Wextra-semi-stmt doesn't sound like fun.  Maybe a new target for make
> to differentiate reporting vs auto fixing?
>
>> I am looking for opinions on what we want to do specifically with
>> cleanups and generally about other source-to-source programmatic
>> changes to the code base.
>>
>> For cleanups, I think we need a new toplevel target
>>
>> clang-tidy-fix
> ah, yep, I agree.  Though I'm curious now that I know that clang can
> be used as the driver to apply fixits rather than clang-tidy, how else
> we can leverage clang over manually writing clang-tidy checks.  Unless
> I have something confused there?

Nope.

IMO clang fixits are too coarse and will never work treewide.

Comparing my recent treewide fixing of unneeded breaks and semi's, I would much rather write a tool

than manually look at or fix anything treewide.

Tom

>
>> And an explicit list of fixers that have a very high (100%?) fix rate.
>>
>> Ideally a bot should make the changes, but a bot could also nag folks.
>> Is there interest in a bot making the changes? Does one already exist?
> Most recently Joe sent a treewide fix for section attributes that
> Linux pulled just after the merge window closed, IIUC.  Maybe that
> would be the best time, since automation makes it trivial for anyone
> to run the treewide fixit whenever.
>
>> The general source-to-source is a bit blue sky.  Ex/ could automagicly
>> refactor api, outline similar cut-n-pasted functions etc. Anything on
>> someone's wishlist you want to try out ?
>>
>> Signed-off-by: Tom Rix <trix@redhat.com>
>>
>> --

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/8abd1e5a-511a-e4f6-6f2c-a045d33fa2aa%40redhat.com.
