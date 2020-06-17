Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBJFXVH3QKGQEI6HEA3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13c.google.com (mail-lf1-x13c.google.com [IPv6:2a00:1450:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id 91DF31FD415
	for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jun 2020 20:06:29 +0200 (CEST)
Received: by mail-lf1-x13c.google.com with SMTP id y21sf892248lfg.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jun 2020 11:06:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592417189; cv=pass;
        d=google.com; s=arc-20160816;
        b=uXjnOJlJm134QOFp/IvKtqxfiRlJr+bnfHGxLueyCUHCV3qFsgrAA/e5AxRW8dpSsN
         6O8pzqzx8Ynna3XOAH1gjB5sggPk0i3hL6fmS1w+AR0zFD+gfYjYhLi4iGSP4bFABlhH
         QxlAOctkBffSNPOv8ZbnwZmh4uokU3y+fFm++L3MB3Y20yDYgo6BnzdLSM7zAikGXUNE
         1l6BnQXuO0lFsz4+pL+u1w1SmWhGYfYhpqDGuyBtDkRwFlg+bhN9s1jlDUsgwwI6GvvD
         5iapmeR45oJhbB2Yobl3ANpo4sw2Sgj1F1qbCE0qn8K8QdCbqpgrVG9zN/zykgEv3Cjv
         K/zA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=XtmKZLk7Ysno7pQzGeMxwnzpKEIlZzI2+WRNrNkxS94=;
        b=hINg6Yg9jUrFNpf3J2spy4PXqMBSCLIfKc0Qq5lNHqrqZiVbqUm1pcVpy+tPNdNnHg
         kg9Dtv95MZwt6qlEzHglHwmC7CGh7lC5TtqEal133yrz3ZgNsi5maxxfuJpN/V4AXCYk
         KIrlc2XySHMxMphT1DlrINbhwYuFKChxKZis0aTvjAESsJw8uCmoFoRawIQNcJ2O5pjb
         OEwxoE5rKOJbNcZh7Y0Gnlwte0/NeeQ/bsOQnReXyXHtu+4HKSusiwZa9Mw1w7xiwSl0
         S7rybzMcqgxyudfWRPuM92SWp1yqb6nE/phgNfzZ9FUiOypBZ2b+KvEDyMSwFJ6uxC08
         i5NQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=kNUKj3I5;
       spf=pass (google.com: domain of elver@google.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=XtmKZLk7Ysno7pQzGeMxwnzpKEIlZzI2+WRNrNkxS94=;
        b=O1B6h4VfH+RyTzq3SVlbZqU3qyCxgC98TYdUYMCzr78Ha9p+rmzqyzH5rd3j/Fd2/F
         QfeEYzBHfn0A+tw+FEVSr8wF9rs56+seQtITskQtBQUj98VHe5d3IlUDAmjHWsF/UkhU
         UzjathbjzIvbBsk4mloEPwXU43fhWYMkrEdkFY03IgcTUdnVki9JvSJCQ+k9M8vMizuh
         /Rlf4CY7XGdQLPRJ7sLerB4H/AEurmM0JzS5/WyIaQRHoEPhjTP+UihEbRiY/jqlP9no
         h/X6nKXo3pi9IvWI2o4YnVQXmRIeBp1Z2dj19ZEZ69qUv7zRlMtx7U9aR5j2Q9cybHJp
         hIig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XtmKZLk7Ysno7pQzGeMxwnzpKEIlZzI2+WRNrNkxS94=;
        b=ENiCJ8bqCaPbkfErXD3NdOgvjFFtTGGDszCs9MkjJIg6g7qwb6WaB41KeMUTOYZwC5
         a9rDCJNkp0GFlReJHYFdFhCT8epiwkiqz1MGc3s+ZApzMdgZKDDsaDT8f9OnZTPj4ryZ
         plocIQGtJgKb6kpbb4vpC2MbpBHk4lUfx2wBxwbGhkA26HUKfPDtL1HFHW2b0EVe9OJz
         7CMkOQOWNu+vc7N6ll1TsKFjGXSW5Ht+atjN84Rg4MVVi31SSA5hopAQ8WTFZm5lYfcI
         orl6C/V71rmyz1DLhwno3M1uq/GjuWxM5O2ao5zbfHaJcaJDphxmetUFNKZI0fDJV2fL
         iDgQ==
X-Gm-Message-State: AOAM530UxSG+LP6RDC3GvanzARW64UpQZXArrhtu+ceCju5gnr59mtPn
	8mCdSssHTfkKJo6zSF+jKus=
X-Google-Smtp-Source: ABdhPJxv/bxTAnqB+SIwzJKj59rDiUgtyxjsgnM/J0WCc6aywGGjO6XGPSKAd81En3AO9b4S5FspDQ==
X-Received: by 2002:a2e:1453:: with SMTP id 19mr240725lju.155.1592417189019;
        Wed, 17 Jun 2020 11:06:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:3a02:: with SMTP id h2ls691852lja.6.gmail; Wed, 17 Jun
 2020 11:06:28 -0700 (PDT)
X-Received: by 2002:a2e:95d6:: with SMTP id y22mr231438ljh.469.1592417188317;
        Wed, 17 Jun 2020 11:06:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592417188; cv=none;
        d=google.com; s=arc-20160816;
        b=p7AbWGomsCu+NfEmRLbGQYrBBkhIChzFYkBZFDmHWAgZNUK5UVeCelD8SYaU4Y8jz7
         vEvJytrJVp73liCXtOMCWN2YKKcU/CUvg/TydJQDCUPKO9qmTwSe8846mv7CTon9Y9rR
         HJ5RxSE+fPOV1I9cVVAnAXAptiEFAVF1MAs7Wkf4tTFHPBDlo/o7nKUoSpl1iTeCSzSD
         MQA/V0ia2mq3MLKqQi2eawHofWPY4UdR5wPWpsW3n7dDKmkQ0cFTseSz+NAhr/RHWLnS
         zjLButxNoEYcjqGUcrFsFfpNbk/zwRJbXLMRFH7P0womuWtnfvRakCok/v9p8NhLGlEM
         mDuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=yum1itbYwGCVmrfngXbrZP6sf+Nn+eNmWkfS6zoUuA0=;
        b=jlXKXq0IlcoFVtTU/PRnVqthmiU5aEh61hcq1rwoqRQOPjQkBki8nExNReqbKUt8ce
         rjJqp64ckaJ7vlApF2WzPiQeK3TFBPGkkHi/72WvMEeNKYyGvIPDAvaD64hnIvSoFG4T
         cpTfUb7OPCzq3rgNi8Jz0ZmuJJTYUrR/TrC4/gr5GOipcIiHJCagyOWExa7ipmSQ6aZb
         Qhe/nE2QJ6QQd6vC4RahinuxIYvRb6rdt8TSNyDMhDS2G3RFZ2BrPh65fxvUgi5qTtLY
         I/mArjugsZTB08LHHwGKMjkW0xSWJLCPW+6+0zoh2hRXJ2m84Z9nK/qCK46fuOBklcaX
         BJLw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=kNUKj3I5;
       spf=pass (google.com: domain of elver@google.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com. [2a00:1450:4864:20::341])
        by gmr-mx.google.com with ESMTPS id 14si33642lfy.1.2020.06.17.11.06.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Jun 2020 11:06:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of elver@google.com designates 2a00:1450:4864:20::341 as permitted sender) client-ip=2a00:1450:4864:20::341;
Received: by mail-wm1-x341.google.com with SMTP id f185so3013281wmf.3
        for <clang-built-linux@googlegroups.com>; Wed, 17 Jun 2020 11:06:28 -0700 (PDT)
X-Received: by 2002:a1c:3b8b:: with SMTP id i133mr9658094wma.111.1592417187758;
        Wed, 17 Jun 2020 11:06:27 -0700 (PDT)
Received: from elver.google.com ([100.105.32.75])
        by smtp.gmail.com with ESMTPSA id 5sm477701wrr.5.2020.06.17.11.06.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Jun 2020 11:06:26 -0700 (PDT)
Date: Wed, 17 Jun 2020 20:06:21 +0200
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
	Josh Poimboeuf <jpoimboe@redhat.com>, ndesaulniers@google.com,
	Andy Lutomirski <luto@amacapital.net>
Subject: Re: [PATCH -tip v3 1/2] kcov: Make runtime functions
 noinstr-compatible
Message-ID: <20200617180621.GD56208@elver.google.com>
References: <CANpmjNM+Tcn40MsfFKvKxNTtev-TXDsosN+z9ATL8hVJdK1yug@mail.gmail.com>
 <20200615142949.GT2531@hirez.programming.kicks-ass.net>
 <20200615145336.GA220132@google.com>
 <20200615150327.GW2531@hirez.programming.kicks-ass.net>
 <20200615152056.GF2554@hirez.programming.kicks-ass.net>
 <20200617143208.GA56208@elver.google.com>
 <20200617144949.GA576905@hirez.programming.kicks-ass.net>
 <20200617151959.GB56208@elver.google.com>
 <20200617155517.GB576905@hirez.programming.kicks-ass.net>
 <20200617163635.GC576905@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200617163635.GC576905@hirez.programming.kicks-ass.net>
User-Agent: Mutt/1.13.2 (2019-12-18)
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=kNUKj3I5;       spf=pass
 (google.com: domain of elver@google.com designates 2a00:1450:4864:20::341 as
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

On Wed, Jun 17, 2020 at 06:36PM +0200, Peter Zijlstra wrote:
> On Wed, Jun 17, 2020 at 05:55:17PM +0200, Peter Zijlstra wrote:
> > On Wed, Jun 17, 2020 at 05:19:59PM +0200, Marco Elver wrote:
> > 
> > > > Does GCC (8, as per the new KASAN thing) have that
> > > > __builtin_memcpy_inline() ?
> > > 
> > > No, sadly it doesn't. Only Clang 11. :-/
> > > 
> > > But using a call to __memcpy() somehow breaks with Clang+KCSAN. Yet,
> > > it's not the memcpy that BUGs, but once again check_preemption_disabled
> > > (which is noinstr!). Just adding calls anywhere here seems to results in
> > > unpredictable behaviour. Are we running out of stack space?
> > 
> > Very likely, bad_iret is running on that entry_stack you found, and as
> > you found, it is puny.
> > 
> > Andy wanted to make it a full page a while ago, so I suppose the
> > question is do we do that now?
> 
> Andy suggested doing the full page; untested patches here:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/peterz/queue.git x86/entry

Yeah, that works, thanks! I think the stack increase alone fixes any
kind of crash due to the reproducer.

Also, my guess is this is not a hot function, right? One caveat to keep
in mind is that because it's not 'memcpy', the compiler will never
inline these memcpys (unlike before). Whether or not that actually makes
things faster or slower is anyone's guess though.

Thanks,
-- Marco

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200617180621.GD56208%40elver.google.com.
