Return-Path: <clang-built-linux+bncBC7OBJGL2MHBB4GSVD3QKGQEQA4TWUQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13d.google.com (mail-lf1-x13d.google.com [IPv6:2a00:1450:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id 398361FCF9B
	for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jun 2020 16:32:17 +0200 (CEST)
Received: by mail-lf1-x13d.google.com with SMTP id a17sf844990lfr.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jun 2020 07:32:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592404336; cv=pass;
        d=google.com; s=arc-20160816;
        b=BnrfbEXs/fS0vh7cWRzfXbO8HT1F7GD5ixlaUm3G4G+YYw8xf1uidqo2EBypbsu3TS
         +CiBBUiKp9B+IkDTCRp2TLR7wlpy6LE4q6YSoWn3Yp9WW5IHaYLsAdbvUnVkHHxL6Y6U
         mVKqP2DOjVLza8+yNPb4qygJFJumVIZ8+mP4m7d/SCu9u222qP9Bp6agyAAmUj7UuR3w
         tC5RiCfgxGiYci5F1PFBy61D7bRtqefj4Tsm/oH1xfuK0MkxceSeYksfKP2IJm877tZW
         jZ06Ue0mZJradCAHpkb3J5EjpXmQlGaT0J8RjcwGGt3UzOjqDKXtdGwwaT6GULaDLX0o
         KMuw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=cyM9MHhN0gvOiHbvLr5Cniw2ROaZp040HwGiZ+B8CJk=;
        b=YVAnFi7RS7p7229FiA5dgD6S5qAR5pqOXNvPBorAblL2mMdYXV2SHapv39NaunJB8s
         xAB/df5rAvN7Q+bcB0U8AIMS9FfY+9X/einmzkEtUPAlZLtISAuaR89pTNr//UkBqM0P
         r4oqaJxtrJWaA8yyoKnuUc1mPwyFdigfat+zsNjUn/RlHPj7Wc01/VTPe87f6F4Jd2/a
         fs6J9UZ3cU7W9+87DH/e3TofHWO3r+Q9plSLYBtHkSsitkFD+7rY6hZtVEWVJu2zlJW6
         C+moyjzOKUQinscRZW0dvRpnfmrcV2nKghXvVxWITzhKJpguztVhT1IxDjlOl7oGh70v
         +MQA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CKfuFKGD;
       spf=pass (google.com: domain of elver@google.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=cyM9MHhN0gvOiHbvLr5Cniw2ROaZp040HwGiZ+B8CJk=;
        b=Q8y9ttUP2zdoQb4uvJR21wn+Uce3odcfXh7SV3DytSPUsbOirhPtZr87P5Rs0sKAcs
         SNtg/r1CiVk1z49bvPOBWGUOebY70xLz1uY10PnGGPkoUELX8p+06MA4ZDD1o5u0N37m
         kHbcfV1ck6qj1hImitvxUbUsPM3MIG6nUF3Pc19d4sMeeqRGZ+YfH3DjNe739TPMuiHp
         w3KbtRs5AGP55T3fpNkrErYacyj4fKNNq0S7YNdH/O2RLjMOqyfnSnEnV0cUYawOnM3j
         U/+gJpGqfA35H8VX8sMRJdBppD+rT/Hd1tgAwLlaAz1qFmrVTIdarGYJe99Oig6EeE7v
         gcVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cyM9MHhN0gvOiHbvLr5Cniw2ROaZp040HwGiZ+B8CJk=;
        b=QrRlrG/Xtvk/4ftHwlxVVheDp/Gmla3pAIqPy2rftOneMH3EsHF+jwgu8oWe/uUCRG
         5hf2piuis4d3c0CaJLaCE1ga9gI14Wn4Yn0NbIuAb7/a0jcjR/MOhqD9lB2XnenRmxpf
         2X45RBofNijWa1cQk7f4zvc81ycqMsdF6CjoXUrzGlQ62bjh1TPqiZd0py2b535HKBtg
         ue/uUqvqBVU+u+V/NOeBvdgoDy9xzGU94GeO+7GLUuwFXWVWrltbE96l1Me2Z6JU+/Ai
         9CrcA9V96uChGNfKXN4kFCiZuINAUhYSY5sQ/CeBMPHkBbuieikFFHw++X3eG/POek0a
         2n0Q==
X-Gm-Message-State: AOAM530pPuLN6mgG4TtoREtmtgLm7uVWS7sv4A2BMI7dXu0NAQruo8/G
	WmyqZOXNcTxsWBs8fnN8Als=
X-Google-Smtp-Source: ABdhPJyXH/PXupMPwF0BDYIVguO8VYoxcuH3vhDjf4hNOk3poEW3s/X1z2u7KWOQY+PEhb7PL0x2Rg==
X-Received: by 2002:ac2:47e7:: with SMTP id b7mr4287895lfp.68.1592404336621;
        Wed, 17 Jun 2020 07:32:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:89d8:: with SMTP id c24ls559909ljk.2.gmail; Wed, 17 Jun
 2020 07:32:16 -0700 (PDT)
X-Received: by 2002:a2e:9c95:: with SMTP id x21mr4293384lji.435.1592404335902;
        Wed, 17 Jun 2020 07:32:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592404335; cv=none;
        d=google.com; s=arc-20160816;
        b=hccSxG2TDjpxPANeVH+hNGTFhR9rcwGRswdb4MFq6i4bl1BTB007a+PwQHWwJqiOj9
         4MLr65XffWfjpPrphsx1LtNn5TJqkCC6572cfx9Si4doECI5ee/DwVryxZU+NRTm6XiG
         HxNS6zp9d98OmKQTv6pSfNxXnuNyjrp3tQiQz6xZxaANVIxrKndCkgVDOvqXpizx9B5a
         xKEIqWGILVexy793a2jy88i+yTykOFIkgHbb4a+AC4R8kCK0Yd767uIVvXzR2lvsrXR6
         mXzf5UREkuOK4I8TDxshRk0xJF8mlaofRgIjsbTxOCwUyEodMxUZr41XFVvrq633Ug4J
         dvYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=/NUSA9pglzD7yNhWCpeHZkfqenFsYSN7ZT6sKeOF1qQ=;
        b=Yzq2jBh3imEd7ZQd4eYaAAd60Vvlqrd3NOMeTO7GlEO1yc2O/fA607KJMTP6wab6Ac
         INhW7UY+7TYUfSCG07RAuh3VVka6/T4xPMtAaV/7z8bL38C+JjZc6PnX0nkx1Nv0mPj1
         5EXmXvCqQzExfKOCYfx2GR079v/Cq7RYNNsAnRCLR3LXoMJL0cjrF5qxYtD/w8RAHkkH
         Syikgj0O7TATIkR9wWceRhPHT/UXUPORrj0YNE2yC0GLe7bOjXQRyToSIeIW9Eh7XeHn
         Z2Zr0O+6tbxIU/vUVyUOcXkj0NgS0ZND8lFI3xIx4LqPHulSbzCt92gr5FY3WfkHvleI
         SzEg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CKfuFKGD;
       spf=pass (google.com: domain of elver@google.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com. [2a00:1450:4864:20::344])
        by gmr-mx.google.com with ESMTPS id i17si7947ljj.5.2020.06.17.07.32.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Jun 2020 07:32:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of elver@google.com designates 2a00:1450:4864:20::344 as permitted sender) client-ip=2a00:1450:4864:20::344;
Received: by mail-wm1-x344.google.com with SMTP id t194so2231923wmt.4
        for <clang-built-linux@googlegroups.com>; Wed, 17 Jun 2020 07:32:15 -0700 (PDT)
X-Received: by 2002:a1c:2d83:: with SMTP id t125mr9257993wmt.187.1592404335139;
        Wed, 17 Jun 2020 07:32:15 -0700 (PDT)
Received: from elver.google.com ([100.105.32.75])
        by smtp.gmail.com with ESMTPSA id h7sm628623wml.24.2020.06.17.07.32.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Jun 2020 07:32:14 -0700 (PDT)
Date: Wed, 17 Jun 2020 16:32:08 +0200
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Peter Zijlstra <peterz@infradead.org>
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
Message-ID: <20200617143208.GA56208@elver.google.com>
References: <20200608110108.GB2497@hirez.programming.kicks-ass.net>
 <20200611215538.GE4496@worktop.programming.kicks-ass.net>
 <CACT4Y+aKVKEp1yoBYSH0ebJxeqKj8TPR9MVtHC1Mh=jgX0ZvLw@mail.gmail.com>
 <20200612114900.GA187027@google.com>
 <CACT4Y+bBtCbEk2tg60gn5bgfBjARQFBgtqkQg8VnLLg5JwyL5g@mail.gmail.com>
 <CANpmjNM+Tcn40MsfFKvKxNTtev-TXDsosN+z9ATL8hVJdK1yug@mail.gmail.com>
 <20200615142949.GT2531@hirez.programming.kicks-ass.net>
 <20200615145336.GA220132@google.com>
 <20200615150327.GW2531@hirez.programming.kicks-ass.net>
 <20200615152056.GF2554@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200615152056.GF2554@hirez.programming.kicks-ass.net>
User-Agent: Mutt/1.13.2 (2019-12-18)
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=CKfuFKGD;       spf=pass
 (google.com: domain of elver@google.com designates 2a00:1450:4864:20::344 as
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

On Mon, Jun 15, 2020 at 05:20PM +0200, Peter Zijlstra wrote:
> On Mon, Jun 15, 2020 at 05:03:27PM +0200, Peter Zijlstra wrote:
> 
> > Yes, I think so. x86_64 needs lib/memcpy_64.S in .noinstr.text then. For
> > i386 it's an __always_inline inline-asm thing.
> 
> Bah, I tried writing it without memcpy, but clang inserts memcpy anyway
> :/

Hmm, __builtin_memcpy() won't help either.

Turns out, Clang 11 got __builtin_memcpy_inline(): https://reviews.llvm.org/D73543

The below works, no more crash on either KASAN or KCSAN with Clang. We
can test if we have it with __has_feature(__builtin_memcpy_inline)
(although that's currently not working as expected, trying to fix :-/).

Would a memcpy_inline() be generally useful? It's not just Clang but
also GCC that isn't entirely upfront about which memcpy is inlined and
which isn't. If the compiler has __builtin_memcpy_inline(), we can use
it, otherwise the arch likely has to provide the implementation.

Thoughts?

Thanks,
-- Marco

------ >8 ------

diff --git a/arch/x86/kernel/traps.c b/arch/x86/kernel/traps.c
index af75109485c2..3e07beae2a75 100644
--- a/arch/x86/kernel/traps.c
+++ b/arch/x86/kernel/traps.c
@@ -690,13 +690,13 @@ struct bad_iret_stack *fixup_bad_iret(struct bad_iret_stack *s)
 		(struct bad_iret_stack *)__this_cpu_read(cpu_tss_rw.x86_tss.sp0) - 1;
 
 	/* Copy the IRET target to the temporary storage. */
-	memcpy(&tmp.regs.ip, (void *)s->regs.sp, 5*8);
+	__builtin_memcpy_inline(&tmp.regs.ip, (void *)s->regs.sp, 5*8);
 
 	/* Copy the remainder of the stack from the current stack. */
-	memcpy(&tmp, s, offsetof(struct bad_iret_stack, regs.ip));
+	__builtin_memcpy_inline(&tmp, s, offsetof(struct bad_iret_stack, regs.ip));
 
 	/* Update the entry stack */
-	memcpy(new_stack, &tmp, sizeof(tmp));
+	__builtin_memcpy_inline(new_stack, &tmp, sizeof(tmp));
 
 	BUG_ON(!user_mode(&new_stack->regs));
 	return new_stack;

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200617143208.GA56208%40elver.google.com.
