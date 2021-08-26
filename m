Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBDH5TWEQMGQECIDODPY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23c.google.com (mail-lj1-x23c.google.com [IPv6:2a00:1450:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EB343F86A7
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Aug 2021 13:44:13 +0200 (CEST)
Received: by mail-lj1-x23c.google.com with SMTP id q9-20020a2e9689000000b001b964fa10b3sf1015832lji.18
        for <lists+clang-built-linux@lfdr.de>; Thu, 26 Aug 2021 04:44:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629978253; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZisAOk94u7HL/VDHtDFCEBxyC44lb8EuapUiqcEII0e0a8kzM5Wqq42U279iEW0wKK
         It+YLP94CYph4Kvqh0jda1lGSe/QX4AzWwXqS4r8e/ubovyfl7siUQeMuk2xJN3nSbDQ
         3VZYohdb0oIa+s+Qx2toPVRi4EFCeDf/mE2UmgBBKnTkmBobbM9Ye/KerNGHshG1N5ye
         fWrhZoKV+dIpg2kvure9SOG+kAobXc5ky6buxudm2AScPS/rOZtTNWKC2nJyyCw0gNT8
         0X7dGkZOUqiDNY1FgM4JTNuz+bStplKHcUVaBIq0x5S5K/8ce7tg4wpdndyTdx1TGu2A
         ZwUw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=VgOILAxS270AKXlTiAtt2EGugnMzaANCK0yp5ph1MV4=;
        b=jwJlxkqbL3fslmYaJjAQ3ETGAeFkLyoDn9qXTvgIjHcK+1hXFjewBUqQbgeApxzZIe
         92cICU6qDexqQNaEmjd8agSgApo1JauERljJrvwqIVc439UuFUz1XlZfWaX1ii56D+Y5
         9oZL/oR8Iycuk3t5p248HqXhJBNfL2m8QTMdgySbLJQfK+yybS6MgtvyMuErHWTuJyv4
         QnmKFeGc/I7hNWGgZybOROIc8BLfuupu/bJ9sGOyFz4gVF7Mxddvidx5+VkbnIvrDBo4
         YfRv6oLNgt4mIi6JeRG4ZifYurRKyS63GTB18DmhOG4MATM4e+VU3MhuW7JzK5gta7PF
         qYCg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=desiato.20200630 header.b=QfF6wngc;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1:d65d:64ff:fe57:4e05 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=VgOILAxS270AKXlTiAtt2EGugnMzaANCK0yp5ph1MV4=;
        b=RBTTUJ523jTkj5cf52WTq4G1sq6BCmYAdFwMJRJzjqtQhirgc7jpUVNCtHm7YEBuAq
         L56PYg1rvw9k7vyAplHUL5kim7sOLM/tNkEzWd5wPjuuk0VIWyQU/j478HS5q5MtiB02
         atMsBnEPs68s7izcKk4o0e3KuYONgZTqhsEDtF09XbIs5coclu0cBy2KIiy7OEskqzME
         XajIKrkGMTxEiV4SCe5IOKCjqtBUabqiuQoQ9A81tU10k6jnlwEMu9KirWn0xqj3qfsU
         LNYcGEb4b5JGLIhU7S53IeEtag3ZxqxexUvZClNP1TintcyCe2RHmaYFuI6HCphr1Qt+
         VtbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=VgOILAxS270AKXlTiAtt2EGugnMzaANCK0yp5ph1MV4=;
        b=cFuDvr0Nu+vC+/SsWnbKU4ua18Ny3JSwLEjO649qU/UuVlTpWKls+1/TtWEEq5o4aR
         rlZLKnP587N+0hu40lUi7D1wlJAfoAuhuTHR8SdNHH7NMSWPcXZAY/H2DUMdSJmC8GkD
         IFAFW7aQOF1EjFVSbhQZc16eXd21/C4Ygc4DaMPS8A4pVRFtpOe+CuoBGdruH1f/qQ2b
         KN1byd2fEvcXJqAT3T2P26NCETzN4xnLqA2NrBIHYmos7hc/nS2P5wzDbYzm5TrJPxnh
         vorwk2+i9qTe+seSdxhMWEVgaa3dkdLjZQxh9EALeR2PFmouYchGdrLe2ZHVdVucJdY8
         1U8Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5315cDiq+51V5YNKUQQjpFxjkERdFiItkPlwworCwSibYpRQ2wl8
	wUuT58jONaRaVxQJpz7S88w=
X-Google-Smtp-Source: ABdhPJy4gwwP2PbKLLjZylMLSNIUJdrisiTbUH1KZvqwi9SNL7ZxgcR56C4gEQsKJB9eCliZp6W4rQ==
X-Received: by 2002:a2e:97cf:: with SMTP id m15mr2635613ljj.125.1629978253082;
        Thu, 26 Aug 2021 04:44:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:3e17:: with SMTP id l23ls1042944lja.3.gmail; Thu, 26 Aug
 2021 04:44:12 -0700 (PDT)
X-Received: by 2002:a05:651c:1103:: with SMTP id d3mr2659086ljo.445.1629978252090;
        Thu, 26 Aug 2021 04:44:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629978252; cv=none;
        d=google.com; s=arc-20160816;
        b=LNCpbIlQMXEGXtkqI1iQ6XRNhsfXlJQzz2rP1KiNqzybRjT6IIYPPnKeKXabf1wmzk
         HriQvzmPOH0V6i/elth8n0APYCcSHJ7VH7kKoC05iUij7QDTASsydNkHG53iQFlBiZxn
         JE3iYjNPt6cmZl3QMtf0yg3gJWkkip9B+9yAXXrIwOX03tfJ8XpZbPv/iVefiFjeJmnB
         y437IKlaL64UgaMSGjMUOkhkF08sG7DmDLXiT2THcjKkaZvth7sBjQ13pSTp3GfjiAtD
         yGEFanu1WX8f69PSaeHwvR3KKWkjO4mNP03sNvrAW4dSjcfEZ5g7CBBPWNVNZqvY1ogg
         roSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Ixme4eya8uKU3GwfzladWeg6jmlS1N//eOJS8ymFAuM=;
        b=Waaeq3RINldHBeQSmquRFprXAf9R4m/dPDcqdXYgGV1FL/zN9mDDsxFPXmQw8lQaph
         vnJSd1J9xxW/Z18obZvTbegsvw4p7N6R2zenCB4q1IofjjF4LL6iQs0ApnLYtP8E7y9w
         xXmntEROgitjHzWC1dQMbiegfHkO7tmNGg5TR7bilRWSgoYBlghABcvOtGomXv95Yvy3
         fIzUVhFJKP3GZJgaOH1gJwOpTr8E5uUdFwEknQsHxRVV4gbCJ67B7R828BTN1hCQ0AXi
         kD+Hu66jCxR2jDAxc1wjzZgOZHuoACmEOjwQSh+1zf9Cf7GaFfo8Fo4mqS/TxQoUbJRI
         PUTA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=desiato.20200630 header.b=QfF6wngc;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1:d65d:64ff:fe57:4e05 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from desiato.infradead.org (desiato.infradead.org. [2001:8b0:10b:1:d65d:64ff:fe57:4e05])
        by gmr-mx.google.com with ESMTPS id h8si128381lfu.0.2021.08.26.04.44.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Aug 2021 04:44:12 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1:d65d:64ff:fe57:4e05 as permitted sender) client-ip=2001:8b0:10b:1:d65d:64ff:fe57:4e05;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by desiato.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mJDnd-00DBC6-Ms; Thu, 26 Aug 2021 11:44:02 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 2AEEC3004B2;
	Thu, 26 Aug 2021 13:43:59 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id BFC6A2C6DE545; Thu, 26 Aug 2021 13:43:59 +0200 (CEST)
Date: Thu, 26 Aug 2021 13:43:59 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: X86 ML <x86@kernel.org>, Kees Cook <keescook@chromium.org>,
	Josh Poimboeuf <jpoimboe@redhat.com>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	linux-hardening@vger.kernel.org,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Steven Rostedt <rostedt@goodmis.org>
Subject: Re: [PATCH v2 00/14] x86: Add support for Clang CFI
Message-ID: <YSd+f9aY3kpdUo4r@hirez.programming.kicks-ass.net>
References: <20210823171318.2801096-1-samitolvanen@google.com>
 <20210824194652.GB17784@worktop.programming.kicks-ass.net>
 <CABCJKud6JBk0QP0aSqM3ptRqbZLfKpfsHNF0RcTq4L-rbc7+uw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CABCJKud6JBk0QP0aSqM3ptRqbZLfKpfsHNF0RcTq4L-rbc7+uw@mail.gmail.com>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=desiato.20200630 header.b=QfF6wngc;
       spf=pass (google.com: best guess record for domain of
 peterz@infradead.org designates 2001:8b0:10b:1:d65d:64ff:fe57:4e05 as
 permitted sender) smtp.mailfrom=peterz@infradead.org
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

On Wed, Aug 25, 2021 at 08:49:36AM -0700, Sami Tolvanen wrote:
> On Tue, Aug 24, 2021 at 12:47 PM Peter Zijlstra <peterz@infradead.org> wrote:
> >
> > On Mon, Aug 23, 2021 at 10:13:04AM -0700, Sami Tolvanen wrote:
> > > This series adds support for Clang's Control-Flow Integrity (CFI)
> > > checking to x86_64. With CFI, the compiler injects a runtime
> > > check before each indirect function call to ensure the target is
> > > a valid function with the correct static type. This restricts
> > > possible call targets and makes it more difficult for an attacker
> > > to exploit bugs that allow the modification of stored function
> > > pointers. For more details, see:
> >
> > If I understand this right; tp_stub_func() in kernel/tracepoint.c
> > violates this (as would much of the HAVE_STATIC_CALL=n code, luckily
> > that is not a valid x86_64 configuration).
> >
> > Specifically, we assign &tp_stub_func to tracepoint_func::func, but that
> > function pointer is only ever indirectly called when cast to the
> > tracepoint prototype:
> >
> >   ((void(*)(void *, proto))(it_func))(__data, args);
> >
> > (see DEFINE_TRACE_FN() in linux/tracepoint.h)
> >
> > This means the indirect function type and the target function type
> > mismatch, resulting in that runtime check you added to trigger.
> 
> Thanks for pointing this out. Yes, that would clearly trip CFI.
> 
> Any concerns about just writing a magic value to the slot instead of
> pointing it to a stub function, and checking for it before the call?

Performance :-) that compare is going to be useless roughly 100% of the
time.

> > Hitting tp_stub_func() at runtime is exceedingly rare, but possible.
> >
> > I realize this is strictly UB per C, but realistically any CDECL ABI
> > requires that any function with arbitrary signature:
> >
> >   void foo(...)
> >   {
> >   }
> >
> > translates to the exact same code. Specifically on x86-64, the super
> > impressive:
> >
> > foo:
> >         RET
> >
> > And as such this works just fine. Except now you wrecked it.
> 
> Sure. Another option is to disable CFI for the functions that perform
> the call, but I would rather avoid that whenever possible.

Is there no means of teaching the compiler about these magical
functions? There's only two possible stubs:

  void foo(...)
  {
  }

and

  unsigned long bar(...)
  {
	return 0;
  }

Both exist in the kernel. We can easily give them a special function
attribute to call them out.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YSd%2Bf9aY3kpdUo4r%40hirez.programming.kicks-ass.net.
