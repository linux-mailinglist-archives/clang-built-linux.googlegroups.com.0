Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBVMF573QKGQEJVCBWOQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x537.google.com (mail-ed1-x537.google.com [IPv6:2a00:1450:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 286FF21003F
	for <lists+clang-built-linux@lfdr.de>; Wed,  1 Jul 2020 00:55:18 +0200 (CEST)
Received: by mail-ed1-x537.google.com with SMTP id a21sf18240164edy.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 30 Jun 2020 15:55:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593557718; cv=pass;
        d=google.com; s=arc-20160816;
        b=nLX9rdwD4cphy5ACngxpDJFhDl4YnM4YPPRSg0vvs5hGAOe3hr8W0OO2jcPrT0oyPa
         jpsIR0ee/ZQUY5+0MH2wlBPCauJ4u5wt5Rx7JYaKhoHiwC304/XzJrcda/k4PIrzn6ku
         rc9cdUouZzIuXxLCDEBOmTwaRS3hhw4oGYQgSh+LqgzSY5B4KIv3FSlOKWVZE9L/1+ow
         Gg5imAjwDX6Qr2yC3XCxbccEvAusQXheAIQEBMIfuj5IJYzMA+5bGahB2TVu5bHzTQiF
         d1i5zV58aHXtyG7D217TK0NnT3ypj3jjDblxX57gSVyYqMuMckbRtuIoj3grauVM2Vnw
         72Ww==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=4Rnxr8RtggR8v+s92Z7kvOSZORDHfKcANl1s9TxMrHU=;
        b=gXve/3qqMKU6uW8wurHdpKKCK5D90mF0TCXj461WPPigdPFfOKMCsz38Im83wLL229
         0v9Ai0Wrt9yWryGwHRL4PodQIAkBQKAsDdQ+hoqNnC1WflgHuuH20iMUWV4Xx6UEihTV
         H6oLB5US9dMFqaQJiYJOSKPFcR+1Ujkx23nY9LmXLqSW1stKvtYPaNUsQU3UL8mSlGfx
         azdO+uCnHYkEjvufdHFjxIGgSS+z8Qth86bnrFCFVkTp7uO1fdkVy8b1A7IwEZLsRdBU
         pgcqHdNYVU/GS6GiokRUBNdn6qZHh4ovlPEc9/QPfQWPQk1PKGFAiXoaCQEtuU6pQASH
         t0BQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b="KIVM6k4/";
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4Rnxr8RtggR8v+s92Z7kvOSZORDHfKcANl1s9TxMrHU=;
        b=lpxE8vvvGpWK+GCvkcDsx4so15i0EoLvxRcljCZ9tmIpJXuJ6oTm7IxjSFfqgRGcI6
         t16zcn1SOI3fBfdH618fkeZ5oeTON0Nx15Yh2MvxxyTAUCZKSWWW5BbgclZ+gbj67bYa
         AtcY/KkcfmHo0WZ/HuIvxjeflHKDPha/f82us9vlpjwC9wRgzag8t40wKaKKZFzbfcbj
         q0aBeBuRVDyG/4QU8FzHDSFThRqizr7UUebr4KrKHHm1T67+NCRe8p+5ZiS6E8A/Xhvi
         qjhQgUhKLOO61APPhZNaP4sUymmu95wjOylNNUGlaWlxFHRqodqEZBdWf+ITzE1nB1aN
         1Prg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=4Rnxr8RtggR8v+s92Z7kvOSZORDHfKcANl1s9TxMrHU=;
        b=Q9ZqsDgLaSS15pv3i+mHosrkiO3lSbW503Urr/u/VcHL26+o+lF8PM9YrBuNkSRatU
         bwSUzpwgv7WxWchBBKEuDhEXsjcxGOsKfe1PnHHlqCOlYEGpNRLLaQ0+prRH1j9AMq64
         PtcAXuE56idqh6pKo87Xyj7GNU4Iba++naeydEAoeAY9TZPb+J7QO65keE7TzdHDANXD
         9DlVKtc7tejWoWPpqJ/MhEyPRsBAPB4V/aFZ/sqTJcVQz7+5t2WK7GsY3yK7Ud4L506U
         JMO7Uhe7uci7k+tjoB99qHC67UvHKlL7a5p0WIQCwAhIEeo4bXCyBrLB2X5YJxJhoeQq
         +XsQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531/Sg3MPsT6FbvNW818TY2EKyWzMRbetn/X6OJ48MCI6cGabA/9
	yZPmJDZ2YXJog6dDc7QVJvg=
X-Google-Smtp-Source: ABdhPJx1f275aIj0wGUkM/gX2Nn+amC0ceRtt8KQsS6BH09AJRr5ZySuQSCkl8WsCbLCBFRiLBW1Jw==
X-Received: by 2002:aa7:cf02:: with SMTP id a2mr25944313edy.263.1593557717932;
        Tue, 30 Jun 2020 15:55:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:9147:: with SMTP id y7ls98156ejw.6.gmail; Tue, 30
 Jun 2020 15:55:17 -0700 (PDT)
X-Received: by 2002:a2e:a0ca:: with SMTP id f10mr11496674ljm.96.1593547970129;
        Tue, 30 Jun 2020 13:12:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593547970; cv=none;
        d=google.com; s=arc-20160816;
        b=EqYu6MTKjSZcvbDJOELoMeB0ODG2DESKKwcMJtBLdQRIAilOaDt4bi3HANBR1aer/5
         WMedKlxNuSz2k/Hb6trOQpQ5w4csXwX74kThvOJEZoOgk7Bzpe13u07e/Rj3tRLuZJKw
         syNg/FZc4cAft9Aav02BU+dBlg0oTqbbZltC3FvQL9I3pgCsGsaPCfmebrTHOpryQrNC
         Zjex8UfwBLTw/gpLvKu4XthDKwGzSQyA7TZF1Nu2jniafGYTj6uno/pTzs8pgPrtsgR1
         NGOVhqHGdoB1O16dVSYEgCPUFc42DB5SRo+kUfB3UWOBbPj7XnBw1SbN8s1FRr2K807j
         b7aQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=3vuEzcOpU1CJwUQJrdBeKzns4OB34X5Bqj0YC/vdJ6s=;
        b=BViUjkTNs3tiCSneyGuiPp3CZzC+q8Y7CrM5b10E+Uy29AOd8/37TJ7h3ZSsBr9hXi
         7+XQYJyxIUxa9KsYWM8vnCHOUCGDnodJr4J1Hr7U/sHZvLwWFuR6HD0AUoL+AOK7m92V
         6DzVjDKjMqC5W8261HIrIc+QP9etCdPdsgPWnK9ZGgaWR/cyfkQLve7P6eXeZTi3qsxy
         cKWL0vfsvhTj2joGE57Qab6IoYzLN1bZbIWuWZWJPy8MF9d/PfaLaydJMsLx0MNuohsw
         YilFHGTDJY9/eQcPH7aRWATGx17SZI5Wf9De74IBjtH/Lmx0WtcWUTeMQRbGKr4gXojB
         nl7Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b="KIVM6k4/";
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id 7si185777lfk.0.2020.06.30.13.12.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jun 2020 13:12:50 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by casper.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jqMcY-0004Qa-JC; Tue, 30 Jun 2020 20:12:46 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id D0729302753;
	Tue, 30 Jun 2020 22:12:43 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id BED56213A2365; Tue, 30 Jun 2020 22:12:43 +0200 (CEST)
Date: Tue, 30 Jun 2020 22:12:43 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Marco Elver <elver@google.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Will Deacon <will@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Kees Cook <keescook@chromium.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Kernel Hardening <kernel-hardening@lists.openwall.com>,
	linux-arch <linux-arch@vger.kernel.org>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	LKML <linux-kernel@vger.kernel.org>, linux-pci@vger.kernel.org,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>
Subject: Re: [PATCH 00/22] add support for Clang LTO
Message-ID: <20200630201243.GD4817@hirez.programming.kicks-ass.net>
References: <20200624203200.78870-1-samitolvanen@google.com>
 <20200624211540.GS4817@hirez.programming.kicks-ass.net>
 <CAKwvOdmxz91c-M8egR9GdR1uOjeZv7-qoTP=pQ55nU8TCpkK6g@mail.gmail.com>
 <20200625080313.GY4817@hirez.programming.kicks-ass.net>
 <20200625082433.GC117543@hirez.programming.kicks-ass.net>
 <20200625085745.GD117543@hirez.programming.kicks-ass.net>
 <20200630191931.GA884155@elver.google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200630191931.GA884155@elver.google.com>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b="KIVM6k4/";
       spf=pass (google.com: best guess record for domain of
 peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
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

On Tue, Jun 30, 2020 at 09:19:31PM +0200, Marco Elver wrote:
> I was asked for input on this, and after a few days digging through some
> history, thought I'd comment. Hope you don't mind.

Not at all, being the one that asked :-)

> First of all, I agree with the concerns, but not because of LTO.
> 
> To set the stage better, and summarize the fundamental problem again:
> we're in the unfortunate situation that no compiler today has a way to
> _efficiently_ deal with C11's memory_order_consume
> [https://lwn.net/Articles/588300/]. If we did, we could just use that
> and be done with it. But, sadly, that doesn't seem possible right now --
> compilers just say consume==acquire.

I'm not convinced C11 memory_order_consume would actually work for us,
even if it would work. That is, given:

  https://lore.kernel.org/lkml/20150520005510.GA23559@linux.vnet.ibm.com/

only pointers can have consume, but like I pointed out, we have code
that relies on dependent loads from integers.

> Will suggests doing the same in the
> kernel: https://lkml.kernel.org/r/20200630173734.14057-19-will@kernel.org

PowerPC would need a similar thing, it too will not preserve causality
for control dependecies.

> What we're most worried about right now is the existence of compiler
> transformations that could break data dependencies by e.g. turning them
> into control dependencies.

Correct.

> If this is a real worry, I don't think LTO is the magical feature that
> will uncover those optimizations. If these compiler transformations are
> real, they also exist in a normal build! 

Agreed, _however_ with the caveat that LTO could make them more common.

After all, with whole program analysis, the compiler might be able to
more easily determine that our pointer @ptr is only ever assigned the
values of &A, &B or &C, while without that visibility it would not be
able to determine this.

Once it knows @ptr has a limited number of determined values, the
conversion into control dependencies becomes much more likely.

> And if we are worried about them, we need to stop relying on dependent
> load ordering across the board; or switch to -O0 for everything.
> Clearly, we don't want either.

Agreed.

> Why do we think LTO is special?

As argued above, whole-program analysis would make it more likely. But I
agree the fundamental problem exists independent from LTO.

> But as far as we can tell, there is no evidence of the dreaded "data
> dependency to control dependency" conversion with LTO that isn't there
> in non-LTO builds, if it's even there at all. Has the data to control
> dependency conversion been encountered in the wild? If not, is the
> resulting reaction an overreaction? If so, we need to be careful blaming
> LTO for something that it isn't even guilty of.

It is mostly paranoia; in a large part driven by the fact that even if
such a conversion were to be done, it could go a very long time without
actually causing problems, and longer still for such problems to be
traced back to such an 'optimization'.

That is, the collective hurt from debugging too many ordering issues.

> So, we are probably better off untangling LTO from the story:
> 
> 1. LTO or no LTO does not matter. The LTO series should not get tangled
>    up with memory model issues.
> 
> 2. The memory model question and problems need to be answered and
>    addressed separately.
> 
> Thoughts?

How hard would it be to creates something that analyzes a build and
looks for all 'dependent load -> control dependency' transformations
headed by a volatile (and/or from asm) load and issues a warning for
them?

This would give us an indication of how valuable this transformation is
for the kernel. I'm hoping/expecting it's vanishingly rare, but what do
I know.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200630201243.GD4817%40hirez.programming.kicks-ass.net.
