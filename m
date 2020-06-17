Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBH4NVH3QKGQE2QBSVQI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc37.google.com (mail-oo1-xc37.google.com [IPv6:2607:f8b0:4864:20::c37])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A0B31FD245
	for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jun 2020 18:36:49 +0200 (CEST)
Received: by mail-oo1-xc37.google.com with SMTP id z28sf1258104ooj.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jun 2020 09:36:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592411807; cv=pass;
        d=google.com; s=arc-20160816;
        b=h7UsGUSXeDqpqGfp9ra8CEewSNZFftiFNeEw22NzBZpmTyN/++nmq0kDqRA9PA4C0+
         4xirgL4f2zlff6E4I0ftMtR6oZ2oo9wea7OkiC+6s5pEj7u6EqB+BXe2S5kPQIdf49v+
         ghYAOiO237AuxV6LWygOhXJsFdXtoYu+NMXvqqbA4TU+XAu35dgBP2G0JElk6eZsHawW
         vOPnao/cqtKMfxIQzVfgw2qQ/ww6uvph9xdIUdrRW6+YRr41/8lG7sXdv33nlxbD8Gd5
         KY7jo+Pk9J90m9oD1VX1vwqnEIjKMe3qmSeNDBOaB4TGmBkNaJQb7jI1wOBD7utbk3d/
         LbPg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=5JJQQVM2SBD+iHSU/U6aZj1qkCEXGB3xxrHX0G+C6HI=;
        b=Fm5kJChPwQBGYJDxu7BWT7ABGZrCFG0ElNJViHNugLN100/HLpbQbyznwe/LTHxt/g
         JUtQemdlONkhE1Y141yN4yYRNCCXIv1ys5LHLztTc2MB1sIdF03ccflhbfm25jbAMgDE
         K+kovvIbFFwozLwDH7jQTi6w67IRkf/wo9rsfy2H2xTJoUphI1a9U0WqAKryhnsmM4Cd
         VC7qvwojuLZUqm9Atrwaa21xZygskapmCcfBCvlS6emoUescjiC0VRB5G0rlkawzNdpu
         7kqxET+l65qWSY9KqkWPGFZYlTi7cgeYGQq/U7UbSrv6Vd99SsbG6mQ5gpppQiif54K9
         EluA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=rqfiepsu;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5JJQQVM2SBD+iHSU/U6aZj1qkCEXGB3xxrHX0G+C6HI=;
        b=s9MNAY9AX4uURJgoM+4YL9satS514spb9lRom24b+RQXwSmA5ixrYvlC8jyky3skif
         NLJNepAxFE2spAQPnclO/p54pqR/PR6WMG8RKVJDM6jx6XarBhoElRy71yEY0dpRcTll
         7hssOu8q/bpGJICk4qf3xXSWcrPdjUtUXmvAH+e7KXV8orbrBzX/4jc8yrqlyPxJuz6v
         e2r61RII7VZ+75Gt+Xu6mnvf/PhhitJxwZiqvpotfsmJpfyAZnR1JjruLBF9jFxqiI/4
         GyVvXqCJ2X8BE3JrGyV3XBm+Z+yahk+J3LONqFwXyC6J15dFyCaK9+3qHOtZsFy4tXba
         AF9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=5JJQQVM2SBD+iHSU/U6aZj1qkCEXGB3xxrHX0G+C6HI=;
        b=XdeTj2lVccx3PbcD6eJBCN9YYpvfFOK1e0NqUCWNbj7nix2HhcOj/I4KbmH/MLzIX3
         JeNCWGK9CuhE3XsTUxozoWeRckzZEWfWT09uvLHInxaGixEK7ieA3VJ8UZMmxNIrc15f
         JKFvbutiARzYC/ejlqYfk4lnmKOlFal8ZrWJ6qC8YHrXxnNLrbKkA+YVRYolJd09+PeT
         3gJ5nwMHmtziGTMG8FZkaSklI6ewnU789JGtwo/jujzfL8z5i3GIL//UfJ53U0bYO9av
         TfUFp/ZRjZrdW/UrnNUagwZxNU804638UCo8VkqNOihZ2q6YKkyEtOO0Af5G5qEzFUpm
         KcNw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532L55tnKfeUVMBcp+GMd43r5jq+ZefxPIeq5f/tojHeRqRhrAL6
	So5vtvug1RQmgsl4lxOcvfw=
X-Google-Smtp-Source: ABdhPJyqIAE5dBzKfEVoW/XKrraP3h74ssLedordDQtrbC6igruCl2ZYsL3ytS/Ax0WRYRL9TOX/QA==
X-Received: by 2002:a9d:456:: with SMTP id 80mr7235822otc.2.1592411807648;
        Wed, 17 Jun 2020 09:36:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1db7:: with SMTP id z23ls638235oti.9.gmail; Wed, 17
 Jun 2020 09:36:47 -0700 (PDT)
X-Received: by 2002:a05:6830:1391:: with SMTP id d17mr8175562otq.48.1592411807318;
        Wed, 17 Jun 2020 09:36:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592411807; cv=none;
        d=google.com; s=arc-20160816;
        b=ag988qXZUCEZdS8Ru4wnmzgGUNMpwQPjvWJhwr3uxGgCWtBPEyFzCoI+wCofYo95kJ
         266XIguShV5pb5czLAiRqoSsGNMPVmMdegHcgTG6axludFs+lGgd7Xs276artCBK79nu
         CEl7JVKN9wi0zgYAg/Sfv7ICSRncD1/5/5R5/9kVOKeqw1rLxd6fDwBb+EAlwqYqXqWl
         8De0r2EI3dZZ3WWmYJn2sddTkmaOWBPYXTCRWwtnX51YEd+9cUGoWCP1GKeG1CmDv9cX
         fmP7Qa/5MvJa6l4aRAfjvmlwJ53sUqhXGl8N5wQYln8hdWgO4N9gPVCasldt3pyfRDfn
         afBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=tlT1YMQ39uBGe7lMvNKoVc7btUmDBldnB9RGq7PSmdU=;
        b=hU2UeqFlQ9xlRaEJxR/vmMm80uqdV1aEJo9D8N1CaDLQ87I7M5yJi059GyO0K8Mx4c
         KvvnTuK1zLVstFWKkXh5hW8eB9EuayllMNTzkg3AJh/4n1177BP6wrfkn06P0BxwclmM
         d7xx0sVpZ4ip7/Qj44OzKoC6XnuBb0FgWBN99XAZu90o+LssuqwQq7PYDbsmLl/DlO2W
         PpxUdcqB9qnLEHaZtQ9ZOGIXLv9pSQrhb9RMA6CpclkQA+djv0o3bSwkcePWx411ZKVH
         rI/zloUkUWRTgLPXAMnHbtZftJ6dIPmqY/kd46y52dITvwQYps3KwQTncZe9l83xYorv
         N+fw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=rqfiepsu;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from merlin.infradead.org (merlin.infradead.org. [2001:8b0:10b:1231::1])
        by gmr-mx.google.com with ESMTPS id h13si38853otk.1.2020.06.17.09.36.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Jun 2020 09:36:47 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) client-ip=2001:8b0:10b:1231::1;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlb3G-0000tM-Mw; Wed, 17 Jun 2020 16:36:38 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 0C32E3017B7;
	Wed, 17 Jun 2020 18:36:36 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id F0F372BA7AE07; Wed, 17 Jun 2020 18:36:35 +0200 (CEST)
Date: Wed, 17 Jun 2020 18:36:35 +0200
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
	Josh Poimboeuf <jpoimboe@redhat.com>, ndesaulniers@google.com,
	Andy Lutomirski <luto@amacapital.net>
Subject: Re: [PATCH -tip v3 1/2] kcov: Make runtime functions
 noinstr-compatible
Message-ID: <20200617163635.GC576905@hirez.programming.kicks-ass.net>
References: <CACT4Y+bBtCbEk2tg60gn5bgfBjARQFBgtqkQg8VnLLg5JwyL5g@mail.gmail.com>
 <CANpmjNM+Tcn40MsfFKvKxNTtev-TXDsosN+z9ATL8hVJdK1yug@mail.gmail.com>
 <20200615142949.GT2531@hirez.programming.kicks-ass.net>
 <20200615145336.GA220132@google.com>
 <20200615150327.GW2531@hirez.programming.kicks-ass.net>
 <20200615152056.GF2554@hirez.programming.kicks-ass.net>
 <20200617143208.GA56208@elver.google.com>
 <20200617144949.GA576905@hirez.programming.kicks-ass.net>
 <20200617151959.GB56208@elver.google.com>
 <20200617155517.GB576905@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200617155517.GB576905@hirez.programming.kicks-ass.net>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=merlin.20170209 header.b=rqfiepsu;
       spf=pass (google.com: best guess record for domain of
 peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
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

On Wed, Jun 17, 2020 at 05:55:17PM +0200, Peter Zijlstra wrote:
> On Wed, Jun 17, 2020 at 05:19:59PM +0200, Marco Elver wrote:
> 
> > > Does GCC (8, as per the new KASAN thing) have that
> > > __builtin_memcpy_inline() ?
> > 
> > No, sadly it doesn't. Only Clang 11. :-/
> > 
> > But using a call to __memcpy() somehow breaks with Clang+KCSAN. Yet,
> > it's not the memcpy that BUGs, but once again check_preemption_disabled
> > (which is noinstr!). Just adding calls anywhere here seems to results in
> > unpredictable behaviour. Are we running out of stack space?
> 
> Very likely, bad_iret is running on that entry_stack you found, and as
> you found, it is puny.
> 
> Andy wanted to make it a full page a while ago, so I suppose the
> question is do we do that now?

Andy suggested doing the full page; untested patches here:

  git://git.kernel.org/pub/scm/linux/kernel/git/peterz/queue.git x86/entry


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200617163635.GC576905%40hirez.programming.kicks-ass.net.
