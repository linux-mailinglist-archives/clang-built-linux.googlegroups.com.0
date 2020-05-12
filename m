Return-Path: <clang-built-linux+bncBDYJPJO25UGBBIUR5T2QKGQEUJTMBIA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id 91B321CFF61
	for <lists+clang-built-linux@lfdr.de>; Tue, 12 May 2020 22:35:48 +0200 (CEST)
Received: by mail-pl1-x63d.google.com with SMTP id x4sf6934387pll.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 May 2020 13:35:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589315747; cv=pass;
        d=google.com; s=arc-20160816;
        b=WHbXFzk1KN8EC6QLZKCZK46xpIN3RzXhnUP3ZF+35e7DVNdb00FGVv7GFjyL2jssdQ
         NRjL9H2xmGxjSpjSFa8WY7ncLOZP0S1Qn4KqftM1lN4RDEUqjDu6x8kL6cQ6m8mUHr7R
         45MftUQgdl1ZxXKXZJ2Aigr71mjK7zzNru8CWYYi2AuVmpJLyTHVDYbOIhUeIXpKEiOy
         XpvhXPat5dX3Vqjn0pZakIXYPjqsygDnzYH+e/y+2wCF+/fUo3BVdxEVKqYrJj148Mjt
         3CbVd0iNmUoc+phLnsxlX8O/EwxNZTkYUzGKEVxFr9YuJOuuJpR2tNVGlCTKLV4PEUAs
         f7mg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=U1zti0tK5gKT1BlwQqQ38xvmat0QY8LYJPX2rfXHZYY=;
        b=ZzsSgZs5AtqmvQlPAjmaewZG+zcmeODDBK4H85Wdq4Xv3O2zzbCNaU+qrksMuhH6qX
         pnRZmiWld07CUoaZ8qfQpc2tD3gEpiGucbOXVhPDY3O7732uey5LBUN5kASVG9hytv1m
         b0LLYk0snkZyYY/9cZ/CJvep3Tj3LpW3Ab9nA0mkh2jwSMSRy7qQwqoyfl5RNWXf06QV
         X6nQeVPLDWn1hR0lzhVozMmo+2p5L0xH9mqLTRcy44ZbF2yHrU2iXypDD/caiH24jizO
         Yr0Bwn4RFxem9aQvNSJ1FmDSfGZlfWz0rjPWzUbdTcRbxV0V0iSJG+obYZVzZ7SFJiWk
         yknw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="dVt1sse/";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=U1zti0tK5gKT1BlwQqQ38xvmat0QY8LYJPX2rfXHZYY=;
        b=VK1xm1/3cq3heMUK6H3GqvrsYS4cWUNIe8GGE7NJS6LOLVL6ziwQEci+ffqyQ+h+rF
         JXAGZds0O7fQqS+gCmLz0MHrEH+TqqLW/8nN2lCq9tiQAZo64w8VN4Hfe2bJwKhwh3to
         AcPSsP6ohGggHLRw/b9xdUTlObiPUxcvezSXzcWkL/urA9x8kQt7Tc3TvIz6v7JpTMOp
         jqVvyZ3kHmif1er3+fxrJDVaneJFJOgkW5Xstg0w750tsttJVKMU8Ot+Zu2r6k2+Y4fu
         O81wHBImqOQspG5L+n2UAOlgDfcZAmkDFeDXEejgDF/yrPWS7BsOZjH/X91wcC8y5Iec
         8fyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=U1zti0tK5gKT1BlwQqQ38xvmat0QY8LYJPX2rfXHZYY=;
        b=Gyg9xPv6whtLyD+Hazaqx41DKe178PsBojABGYBQ9PZYHhUYnlxFMMWXst2DAj9f67
         jdrgbO7/fHyFXDkBFql2OFQHGXcCmfSKUGE2U9kSh7zxQkU1f6J7HCL8E6XAUtrh6D1y
         5uq45JajE5Un8YCWfXFr67cHuRynunWPU8LtvxeK5WcDqDpBtGEh1AVJq0JNAvplAzyC
         RfxVNHrPqFhjjT6tMSY/I7m0OtVn6WAqhUJHVw5FiiqsIb/lR8xpRh350nz7NocE965G
         Yfk4mnZd9LMbympwug1tfp72NrifCU4+TlRTt1gqS6/XKW2QZGgK9D07kiQirJbZHA58
         EnWw==
X-Gm-Message-State: AGi0PubtLIjOkGQLFGwoyVd7zA2oaB+TTil+zBKI8W+p/N5Szgq0ulRE
	tg+1be8OKu5lNnlwobtsYYI=
X-Google-Smtp-Source: APiQypK5d3j0LIJSU0+sEe72y36wcMzcyyOLN5jk12AMohzGaJkaEDN1h56CrTzOWmK5FH6EGBjzJg==
X-Received: by 2002:a17:90a:2526:: with SMTP id j35mr30052773pje.98.1589315746814;
        Tue, 12 May 2020 13:35:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:780a:: with SMTP id t10ls1375814pfc.1.gmail; Tue, 12 May
 2020 13:35:46 -0700 (PDT)
X-Received: by 2002:aa7:939b:: with SMTP id t27mr22010877pfe.279.1589315746399;
        Tue, 12 May 2020 13:35:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589315746; cv=none;
        d=google.com; s=arc-20160816;
        b=mcCWCuyKgsXVJI/fkZJ8B3C8LVNiENPlwoctWO2Hr8VF45oezW2teybLVc1D4znyoU
         wra2Kmw+KItur7G8Uo+de0O4gT51FrW1jin/gQ5SI79RcXp1XGGgQpAPo5CT6eGL4UQT
         gGP1q4mJOH6A+HDka3ryhn3ed0H6n+tdDDtBt0HIWV6iO5fzc9OywQ+HU7/tlIUVGsbb
         AXA9ntHJr7jxSjccHzTSwtR/0tVP9ctbhK6ReDxwd4Ldx7HdxCT6Mes+z9HsjBZRSIPm
         PQH/vF0afJOuC6Xfqq0BhYAoSLMKNi0Vdk6oXc/wGUVBYEEafSgjolxzNJ53dOLhT9yo
         iA5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=fA+SFwBMG0B5q95uQj1Y/25AozYOQi3LQJpnB/wY8BA=;
        b=Kf/LYATpRgh7k+nU2dISfPvhqkaK3MFEGeY72ACEvqsrps9OZmVR2K3SW7lIG6aj12
         JcYCNroyud05OM1xJ49ay7IVofnUXhlv626fW9dogRYnXgsmFw1Ll/vPdYs0b/WGe5n4
         lcBheQeig1TCrZnrlaoYu501M2bztDwtgrgyP4N4Bh80i1zOvN20s3qB+TP4iwLtlcsz
         XbH40zi14j1MFkogLVYCdTK4HTgpQ5ICd6ApF3jBPEuSs5QGEAUftIX0LehDongDTy32
         cMnifolgc+w02UxlqDYB9gpDoCrB2AzYAHg2+zdpKA1OXa75qpOjfCJM5Z7CmUH49KiL
         15jw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="dVt1sse/";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id x5si434940pjo.0.2020.05.12.13.35.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 May 2020 13:35:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id y25so6943328pfn.5
        for <clang-built-linux@googlegroups.com>; Tue, 12 May 2020 13:35:46 -0700 (PDT)
X-Received: by 2002:a65:5b84:: with SMTP id i4mr21863134pgr.263.1589315745789;
 Tue, 12 May 2020 13:35:45 -0700 (PDT)
MIME-Version: 1.0
References: <20200504230309.237398-1-ndesaulniers@google.com>
 <CAKwvOdmspKUknbzDn9kY2jMgkFw=Ktvst0ZtwambDOfybqJGWw@mail.gmail.com>
 <CAHk-=wif=_ZomkWJAmQRCUAMHQ72V3NEQ-OteiPE56K7KoSjbQ@mail.gmail.com>
 <CAHk-=whhCBvjXtRiFM2JEZ4XyBmuPprvdo5tpPVBqUhkRszxiQ@mail.gmail.com>
 <CAKwvOdn06jCe_FhKiF_wSQavytVVD++RXD-bHbMdqnEA-wO-9w@mail.gmail.com>
 <CAHk-=wh8zOnTN17XcGfnfihGgM5R5XG71qP+V54iLqBgZON4hw@mail.gmail.com> <7fa3a927ff63ca2f6587cfbac0ac76d2c11c4b5f.camel@infradead.org>
In-Reply-To: <7fa3a927ff63ca2f6587cfbac0ac76d2c11c4b5f.camel@infradead.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 12 May 2020 13:35:34 -0700
Message-ID: <CAKwvOdmT4Yp40sG9CTYRjke02ddhE=LoYPkHOzOX0e-sP9gKLA@mail.gmail.com>
Subject: Re: [PATCH] x86: support i386 with Clang
To: David Woodhouse <dwmw2@infradead.org>
Cc: Linus Torvalds <torvalds@linux-foundation.org>, Thomas Gleixner <tglx@linutronix.de>, 
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, Arnd Bergmann <arnd@arndb.de>, 
	Dmitry Golovin <dima@golovin.in>, Dennis Zhou <dennis@kernel.org>, Tejun Heo <tj@kernel.org>, 
	Christoph Lameter <cl@linux.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>, Al Viro <viro@zeniv.linux.org.uk>, 
	Josh Poimboeuf <jpoimboe@redhat.com>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Peter Zijlstra <peterz@infradead.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="dVt1sse/";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441
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

On Mon, May 11, 2020 at 1:03 PM David Woodhouse <dwmw2@infradead.org> wrote:
>
> On Mon, 2020-05-11 at 13:01 -0700, Linus Torvalds wrote:
> > On Mon, May 11, 2020 at 12:52 PM Nick Desaulniers
> > <ndesaulniers@google.com> wrote:
> > >
> > > Interesting approach.  Researching __builtin_choose_expr, it looks
> > > like it was cited as prior art for C11's _Generic keyword.
> >
> > Well, the thing that made me think that __builtin_choose_expr() would
> > work is that unlike the switch statement, you absolutely _have_ to do
> > the choice in the front end. You can't leave it as some kind of
> > optimization for later phases, because the choice od expression ends
> > up also determining the type of the result, so it isn't just a local
> > choice - it affects everything around that expression.
> >
> > But clang still doesn't like that "qi" constraint with a (non-chosen)
> > expression that has a "u64" type.
> >
> > I guess we can take the stupid extra cast, but I think it would at
> > least need a comment (maybe through a helper function) about why "qi"
> > needs it, but "ri" does not, and why the cast to "unsigned long" is
> > needed, even though "clearly" the type is already just 8 bits.
> >
> > Otherwise somebody will just remove that "obviously pointless" cast,
> > and gcc will eat the result happily, and clang will fail.
>
> I'm also mildly concerned that LLVM will start to whine about the 'ri'
> case too. It's odd that it doesn't, even when GCC does.

Ah, sorry, it took me a while to understand what case you meant by
this.  I recall you pointing this out previously in
https://bugs.llvm.org/show_bug.cgi?id=33587#c16, but at the time I
simply wasn't well versed enough in inline asm to understand.  The
case you're referring to is 64b operands, "r" constraint, -m32 target.
Yes, if I fix that: https://reviews.llvm.org/D79804, then this whole
patch needs to be reworked.  Back to the drawing board.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmT4Yp40sG9CTYRjke02ddhE%3DLoYPkHOzOX0e-sP9gKLA%40mail.gmail.com.
