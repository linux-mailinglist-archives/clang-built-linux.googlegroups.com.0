Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBGG3VD3QKGQEWPQRZQI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id DBD611FCFF3
	for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jun 2020 16:50:01 +0200 (CEST)
Received: by mail-yb1-xb3a.google.com with SMTP id f130sf2751881yba.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jun 2020 07:50:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592405401; cv=pass;
        d=google.com; s=arc-20160816;
        b=01xAJbr/7pXcLGzeoXcbIyyqG7auVhXVdaJFLmYD1b+sXrvw0UJhr5i4iV6qcxDZFD
         FEk0M0fi9I57b504tP2kwRbqvvMx5Or3GKdfYqfrXiXcLaQQ89IVgWR4JTXEyJuKFYw1
         MOePZPtcg0mkA1R9NP174ZWV992gOLqtWZLwSiFKKK4ZGSTsG1SrSEnH77Qzq/s6wdyR
         giUCf38I780eN36sI887dzDaKxGs1Yb2ehWIpFtYTs5KANpR+9kKguZWuggpgy9E6MuL
         lrvtXZcNs+bKHuOGIBHEa5Ns2tq93CO6PrPNZqsXpQbuUP8xyppSzk4Evw8Hz7R7VU5q
         YYKQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=hBcTPd5hiS6Gm/ZMDy4oO+1TkYOPRVNKRwLfDSNdvcA=;
        b=HmEdDI0LmYyjSqJKvMcTsVusmuGejfn989rtDSiEQ8EH9jn6Nf42GxeZj/ZrQxAeYA
         vJVVMRDkFymzWCpFH4MJ9Nyow8iZtRTOlVVmifEm+3FAVNYJf+OAaN3zNc2iW6RZsjp5
         Ht1nHoQFR2lAk+9h0U9aDuek4LuEf1PTBtt3nD/zMjmbTcJ0hiyfrSPXhX96xVSlwA7N
         +OnF71Ezs4LZLFq5/09k9mkoXxUp3ARLQVaa31Ma8Hte2ZY47YEsjEDNrBAY7GsZu0UJ
         jQCvUXVe2IqeXqHa+dUsFUhnissQq7aNk44kYxDc9y5skfZRQlSTMl6QjIISmgsibMaB
         K0lg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=l5S4jMfS;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=hBcTPd5hiS6Gm/ZMDy4oO+1TkYOPRVNKRwLfDSNdvcA=;
        b=SazahbKninYFOzgd03BQKR4w4Ah4DShw+03Gm+0vIbzMPqSld/d/1sxQwo9oxLRCcb
         x+zzVJYgbTrZ0fKwkcQr5PEy6N9HwCy2fFAcDoBgDt9VCrni07XEGwKmP25Fnsi7wo+Y
         40utQzIztwo8FdEqc0qhe/snEi0jLy8M3cyAeCOmzaLEjchbtIvNWmEvJZh4iu7y9zoa
         b+37Xw3F1x8NRPkUFhD0/fkGm+9Pdp9iskl6aTVvMc3c2eppYq4xiQYY/fKJCH7OYlVS
         C2lT7kjVp0WbiRwrQedd+SISIMNn/+YCJrbGq12V33v8GO5du+k4Mh8L46aFiaIBFpgi
         +TWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=hBcTPd5hiS6Gm/ZMDy4oO+1TkYOPRVNKRwLfDSNdvcA=;
        b=AGkvDaf/WUxXqTI2FkBrUbHL6QUYjCkdTbfGHPzMry39mIxGxWOisLjN2PwUDw4cF/
         TEihW54J/Du1uPMxSiaUBNyEnjmHdFIUol03FMuy81YEA+p7OVmkT82CnAf0f4eQoK1j
         K0Jbap273FFDOod/lHZApOXzv+b/Kz/18cD6Pw91EdUpdzMhDuRcGf6hd2BDRDiztM01
         Tnmk1AqzAQ4u7qqi1uGG8WRmnstmcljitcJynQVypXr3HfzKs8S4C9DTklndUew5TDvp
         m0KVCNDGfzHwdXqDklKu0yYKMACr8RIWPNh0vlYcErwaAtRuB/dqdkynbl7/A6dZ1l2g
         deOg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530WsyCk2cvE5bwcaqsOMuQ9o4PTTmuQQ3Ixg4iIjWrzKn/qjqc+
	R9zrV+fMYkIRNAMCqJBe6xQ=
X-Google-Smtp-Source: ABdhPJxgEHen48qz/etKUWiqrvavYmPNj2q4rnheMn78Cx4BAsHlEP6g36qCCHGX0nkoLpCfTbKOSg==
X-Received: by 2002:a25:d6c1:: with SMTP id n184mr12879374ybg.303.1592405400566;
        Wed, 17 Jun 2020 07:50:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:ec5:: with SMTP id 188ls996915ybo.11.gmail; Wed, 17 Jun
 2020 07:50:00 -0700 (PDT)
X-Received: by 2002:a25:c508:: with SMTP id v8mr13459567ybe.497.1592405400230;
        Wed, 17 Jun 2020 07:50:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592405400; cv=none;
        d=google.com; s=arc-20160816;
        b=csDMcvNPlJlj0CZ6veBqKg4mRRsPPuHcVLkO1b1maezTsYTh8plDSpxJgLDm87hqIk
         Q6JQqklSt38mbnV8rf7wWMW4Q/mwViLqhc5IR69P8rLQ2aCub4dpgfdw7cTnZRGdtfU7
         iEH3zw17/4xY+YYxkaPE2xfDqIcnmC93J9BCwHXz2zTQGpIpewYbYaQxbJ73czb1UxGA
         AGIuH/mc+ApxLhKXajfrt37X/72HLCFyVnMTVmiyS/SVTSGz19zWQbBxZbBeo7h3l/mc
         CANVOngK8cHfXABe65DzN9FCvubW1n9kwyY//b6OmRNJTYkO3xijnOt+0FCpQ4+N/44T
         yaxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=8tV90J3ommZlSIBCa9GxO7kk+JI83XJ4xYdDZnD4Ijc=;
        b=M+wixqzC9lXCcnwpR6UjpvwTwpi71J0b1Dtb+Zym87v7jiX3JHiqN0wRDnnC2bFzOG
         r/+na0ZqtsiAoiqd9ofkY+ub2eyHRb9gA0NA/OVsnwHLJGcuDl6AvlKWI7PMcKf87Sv7
         VkcITnhReS6xX5iL4WbchCP3S5BYoNAr9hkncT+n5Xk+ENwqGJGtBb54SJcpcg1saSvA
         DC46GgXlE1VGjX1jvqAHrSsl7G+OmpiI+BRei/VLlZqCfqqrx3sDE72HT02/qXeEmL/y
         ZmfkVjwKSZX0+n5bf/81gXrJSsgF3GwU12ALj6VtbcQbsFL597HEgeZhkMIOxZ8MdQ/W
         153w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=l5S4jMfS;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:e::133])
        by gmr-mx.google.com with ESMTPS id n82si5852ybc.3.2020.06.17.07.50.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Jun 2020 07:50:00 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2607:7c80:54:e::133 as permitted sender) client-ip=2607:7c80:54:e::133;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlZNv-0005BJ-Ds; Wed, 17 Jun 2020 14:49:51 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 91214301DFC;
	Wed, 17 Jun 2020 16:49:49 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id 7D29A203CE7F6; Wed, 17 Jun 2020 16:49:49 +0200 (CEST)
Date: Wed, 17 Jun 2020 16:49:49 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Marco Elver <elver@google.com>
Cc: Dmitry Vyukov <dvyukov@google.com>,
	Andrey Konovalov <andreyknvl@google.com>,
	Mark Rutland <mark.rutland@arm.com>, Borislav Petkov <bp@alien8.de>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Alexander Potapenko <glider@google.com>,
	kasan-dev <kasan-dev@googlegroups.com>,
	LKML <linux-kernel@vger.kernel.org>,
	the arch/x86 maintainers <x86@kernel.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	Josh Poimboeuf <jpoimboe@redhat.com>, ndesaulniers@google.com
Subject: Re: [PATCH -tip v3 1/2] kcov: Make runtime functions
 noinstr-compatible
Message-ID: <20200617144949.GA576905@hirez.programming.kicks-ass.net>
References: <20200611215538.GE4496@worktop.programming.kicks-ass.net>
 <CACT4Y+aKVKEp1yoBYSH0ebJxeqKj8TPR9MVtHC1Mh=jgX0ZvLw@mail.gmail.com>
 <20200612114900.GA187027@google.com>
 <CACT4Y+bBtCbEk2tg60gn5bgfBjARQFBgtqkQg8VnLLg5JwyL5g@mail.gmail.com>
 <CANpmjNM+Tcn40MsfFKvKxNTtev-TXDsosN+z9ATL8hVJdK1yug@mail.gmail.com>
 <20200615142949.GT2531@hirez.programming.kicks-ass.net>
 <20200615145336.GA220132@google.com>
 <20200615150327.GW2531@hirez.programming.kicks-ass.net>
 <20200615152056.GF2554@hirez.programming.kicks-ass.net>
 <20200617143208.GA56208@elver.google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200617143208.GA56208@elver.google.com>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20170209 header.b=l5S4jMfS;
       spf=pass (google.com: best guess record for domain of
 peterz@infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=peterz@infradead.org
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

On Wed, Jun 17, 2020 at 04:32:08PM +0200, Marco Elver wrote:
> On Mon, Jun 15, 2020 at 05:20PM +0200, Peter Zijlstra wrote:
> > On Mon, Jun 15, 2020 at 05:03:27PM +0200, Peter Zijlstra wrote:
> > 
> > > Yes, I think so. x86_64 needs lib/memcpy_64.S in .noinstr.text then. For
> > > i386 it's an __always_inline inline-asm thing.
> > 
> > Bah, I tried writing it without memcpy, but clang inserts memcpy anyway
> > :/
> 
> Hmm, __builtin_memcpy() won't help either.
> 
> Turns out, Clang 11 got __builtin_memcpy_inline(): https://reviews.llvm.org/D73543
> 
> The below works, no more crash on either KASAN or KCSAN with Clang. We
> can test if we have it with __has_feature(__builtin_memcpy_inline)
> (although that's currently not working as expected, trying to fix :-/).
> 
> Would a memcpy_inline() be generally useful? It's not just Clang but
> also GCC that isn't entirely upfront about which memcpy is inlined and
> which isn't. If the compiler has __builtin_memcpy_inline(), we can use
> it, otherwise the arch likely has to provide the implementation.
> 
> Thoughts?

I had the below, except of course that yields another objtool
complaint, and I was still looking at that.

Does GCC (8, as per the new KASAN thing) have that
__builtin_memcpy_inline() ?

---
diff --git a/arch/x86/kernel/traps.c b/arch/x86/kernel/traps.c
index af75109485c26..a7d1570905727 100644
--- a/arch/x86/kernel/traps.c
+++ b/arch/x86/kernel/traps.c
@@ -690,13 +690,13 @@ struct bad_iret_stack *fixup_bad_iret(struct bad_iret_stack *s)
 		(struct bad_iret_stack *)__this_cpu_read(cpu_tss_rw.x86_tss.sp0) - 1;
 
 	/* Copy the IRET target to the temporary storage. */
-	memcpy(&tmp.regs.ip, (void *)s->regs.sp, 5*8);
+	__memcpy(&tmp.regs.ip, (void *)s->regs.sp, 5*8);
 
 	/* Copy the remainder of the stack from the current stack. */
-	memcpy(&tmp, s, offsetof(struct bad_iret_stack, regs.ip));
+	__memcpy(&tmp, s, offsetof(struct bad_iret_stack, regs.ip));
 
 	/* Update the entry stack */
-	memcpy(new_stack, &tmp, sizeof(tmp));
+	__memcpy(new_stack, &tmp, sizeof(tmp));
 
 	BUG_ON(!user_mode(&new_stack->regs));
 	return new_stack;
diff --git a/arch/x86/lib/memcpy_64.S b/arch/x86/lib/memcpy_64.S
index 56b243b14c3a2..bbcc05bcefadb 100644
--- a/arch/x86/lib/memcpy_64.S
+++ b/arch/x86/lib/memcpy_64.S
@@ -8,6 +8,8 @@
 #include <asm/alternative-asm.h>
 #include <asm/export.h>
 
+.pushsection .noinstr.text, "ax"
+
 /*
  * We build a jump to memcpy_orig by default which gets NOPped out on
  * the majority of x86 CPUs which set REP_GOOD. In addition, CPUs which
@@ -184,6 +186,8 @@ SYM_FUNC_START_LOCAL(memcpy_orig)
 	retq
 SYM_FUNC_END(memcpy_orig)
 
+.popsection
+
 #ifndef CONFIG_UML
 
 MCSAFE_TEST_CTL

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200617144949.GA576905%40hirez.programming.kicks-ass.net.
