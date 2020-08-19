Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBONL6P4QKGQEF25FRBQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x238.google.com (mail-lj1-x238.google.com [IPv6:2a00:1450:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C74B249786
	for <lists+clang-built-linux@lfdr.de>; Wed, 19 Aug 2020 09:33:16 +0200 (CEST)
Received: by mail-lj1-x238.google.com with SMTP id e22sf3736305ljo.11
        for <lists+clang-built-linux@lfdr.de>; Wed, 19 Aug 2020 00:33:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597822395; cv=pass;
        d=google.com; s=arc-20160816;
        b=1I6tPgcuq+BgVEXKqzS5N+G5nGFosVz2TchCeBbGEgQt2nbBa0fZDeQuqbFKPfWhSA
         ul6POVrEY+HyDV01pvf3AGwEIEtBytFWND6gGppZxqRHFHDuMYZEmX2WoRIaOAFXPIh7
         SWrrN77Q99i9Q1qblwOMjKTEhGwENS3K2GMs7SxMLgpJUvFZbYZt3xgMOdKzTmH8pRZ5
         lCg5hHpQ0GGEyNI+6P6VeYutc6wN9hmXuya4v8dIMua7r8bJHUpH3UlKD89Uin0QMhel
         aiwJpX1cbuFbAXG9ANXoaRZituVZsqya9E1EQclsMBef08WguSDn20b5uCZCsHU3rtpU
         aGvw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=/i7cWqBwFmBAPic35ii1aCXnQaCs6hczrbGb5/S+5FM=;
        b=fxaMEkE3clcWYvLypkBPlIyaq4uNOehPDzo+wCW2aoPqVU+OGM4Iih8c27XW4q/NuI
         hf8oGlmiPdHHhtdG2HkYdtqWfQz97B5VY3C2gHX00AqJRiJN7elr3hdo7QQ4SPf5kV1E
         cxIM2vpB/Rj/WS+8+/W3Lprff9qVu4eNm361IiROIf6+RXQSoeqpEQh7NmUQAuhrAtAH
         jtXWXfFG/DrggWeocpBZ8W+afa8ccQ9MIX/rjpQ+eO5SdNPg1gYfWby267UHO37xg5NP
         p+WnN7uNHX+YlTyFUHkBrWss3kw8MZqACDR3XuLze4+oyMB51kjwv4HIIWYG4vIcZ8g6
         kMBA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=eNOHhxxy;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/i7cWqBwFmBAPic35ii1aCXnQaCs6hczrbGb5/S+5FM=;
        b=nOxK6IN8qcZn/6fjw+Hqbwgg7I80e4VZ56SzzP+zMFFLn1c+YRW0fTm/Pp5reAOlMU
         5/K6mAhYIPpo56aUaWozEdmrDi0gR2qbTHrUhASsNDt/N5p1O7fxh2wg6G2SZAoHKGiy
         OuZWGcZLL1e0WJ88VeE+EhPmioA1EvW5rDMfGWJ/POE2SWYZ2RDhodCadgMsJwFLQn1o
         /SnldLIMKYfHrEXjEREjDA7euWxw5GlP2vATRvbyLjMYV2MphO2eOebewcs9xtyywbHA
         yzyJV/RMpp/r3oYadneCSyIX2j22VUNUHCv6sEEfG3vgFq+FwbBY4HSSmSCtgOd1eu8S
         sUxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=/i7cWqBwFmBAPic35ii1aCXnQaCs6hczrbGb5/S+5FM=;
        b=JaPNbiEX2QxopewhiCwR0cNGDG6WgaUf6PrTqv0QeWjiqAfEqsiSAKDYgmDbheXQCv
         HygHPO8lK01d43+TMWB2jhlqhFdNtyyO8dYwGOXtMyvGiNmEbOniq8Zx10u3UhNtyk8m
         Q/P/4LqVn+uZhhU1W+QywaYJ0SiXpLP/wfUg3xiX9N0BdxRsu2kQNve0jS/uBu0r+RwS
         Am0pQMr9N5tzfQy8Bwi9Y2WZFJycBxsHOOFBo6CvuRX0hSZbyNGtCl2Vg/peL5DCHHxC
         oiq3xkRt4sfpSd/afJNVlmFUvpgP6iOapF2e4LwE3coa2B7DceP+sxloUTeYd+3Yw1F+
         SvPw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5303hSwPTsKuR10jBFE1RP2O7DTcnQgd88ZxwSTDhVo9aTnyUOIs
	xavzbwz+nvg8BjXRCdalteg=
X-Google-Smtp-Source: ABdhPJxRGeoMf9ym9GfybXxv+xyzv9lZoLoGm+Fm20DCKGKPi9H2ol180gEMYD4CM4ps6Z6pjZr4QA==
X-Received: by 2002:a2e:b53b:: with SMTP id z27mr11752544ljm.441.1597822395523;
        Wed, 19 Aug 2020 00:33:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:7c03:: with SMTP id x3ls1409553ljc.5.gmail; Wed, 19 Aug
 2020 00:33:12 -0700 (PDT)
X-Received: by 2002:a2e:8045:: with SMTP id p5mr11828077ljg.294.1597822392707;
        Wed, 19 Aug 2020 00:33:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597822392; cv=none;
        d=google.com; s=arc-20160816;
        b=LyL6bnJM9tedNhD5z9itwbZ+VWgcxuEFU7B5HJ8ZNF6+f/98iMkb2C98kIjgLfLg+J
         nt5ATS5G0WR2xHnW/QCTBQdD+ptns7PMwmUzrqx/G7j/5pr+HZZggMCnjuDrlsgLBD7g
         cUJhAZpmNl4b9VUZkb5hBJdXQpb11z0j7TBfwC+ubbmtXFeypT3Z/5TaEnW5cZLsUjLG
         F2krkAHc79W8WJz85ljpgl4pMp+SJV31wFVfc3nXj3T9jSFPLBN+UorD/RfvXd5nyFw0
         RliVu4GqZgG7z8v9ACP7vU/o7E5/g9OxNyaKP9A8Qrb5Q8aAvVdwH67PduCdZdcG5e6C
         A5ZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=kL7Gy3l7twO0D8ptMuadg/doUyMGt2vPrUvqyXCwPw8=;
        b=kK7nseUa5J4wpIOtYNBcFlMQsU6sMGGX0dvFiExqEXHMMYylnnzMFK1Ee7vF4yH7gD
         epfriKjB1pEniJvyKAImnzAmVgG8PgCVadB6nEP+3TZXvc3T41DksN1ygG8TmPLri/EF
         dGjOp7yfjapVrR0nCchWgV/3B1SwqR2iGthsxKwn7RU1YWmcrUHnzWUyg/AERL2GgCtP
         OFs2xzUEJe2OIIS79Z5ySvGEjYQW7gi+S27F1H+ItFXD13Lx4jb/pKftyUcEE+WY8+K9
         NJSnjdi5a6EjoEn4koLgAx/sQyGI2UgUv1av4FxdVGs0jxb9WdN2fdLfnT/EO4AL3zXP
         7FIg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=eNOHhxxy;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id o13si741828lfc.0.2020.08.19.00.33.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Aug 2020 00:33:11 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by casper.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1k8Iaf-0003t3-B2; Wed, 19 Aug 2020 07:32:57 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 080F3301179;
	Wed, 19 Aug 2020 09:32:53 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id C476821A87267; Wed, 19 Aug 2020 09:32:53 +0200 (CEST)
Date: Wed, 19 Aug 2020 09:32:53 +0200
From: peterz@infradead.org
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Alex Dewar <alex.dewar90@gmail.com>, Ingo Molnar <mingo@redhat.com>,
	Juri Lelli <juri.lelli@redhat.com>,
	Vincent Guittot <vincent.guittot@linaro.org>,
	Dietmar Eggemann <dietmar.eggemann@arm.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Ben Segall <bsegall@google.com>, Mel Gorman <mgorman@suse.de>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] sched/cputime: Mark function as __maybe_unused
Message-ID: <20200819073253.GV2674@hirez.programming.kicks-ass.net>
References: <20200818170337.805624-1-alex.dewar90@gmail.com>
 <CAKwvOdk2fynn=-FGUniYLG+hCOkEFppRnAaTYe8DW=YRrT-siQ@mail.gmail.com>
 <20200818195746.scpjm3dlg7cfst53@medion>
 <CAKwvOdn=32A4QumC_-Y8fJ29fqUPzPK0H_7-dn6rcsAT+O1xOw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdn=32A4QumC_-Y8fJ29fqUPzPK0H_7-dn6rcsAT+O1xOw@mail.gmail.com>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b=eNOHhxxy;
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

On Tue, Aug 18, 2020 at 01:02:26PM -0700, Nick Desaulniers wrote:
> On Tue, Aug 18, 2020 at 12:57 PM Alex Dewar <alex.dewar90@gmail.com> wrote:
> >
> > On Tue, Aug 18, 2020 at 11:13:10AM -0700, Nick Desaulniers wrote:
> > > On Tue, Aug 18, 2020 at 10:04 AM Alex Dewar <alex.dewar90@gmail.com> wrote:
> > > >
> > > > Depending on config options, account_other_time() may not be called
> > > > anywhere. Add __maybe_unused flag to fix clang warning.
> > >
> > > Just curious, would moving this definition to be within an existing
> > > preprocessor guard for a particular config also fix the issue? If so,
> > > prefer that. If not, __maybe_unused is the way to go.
> >
> > I don't think that'd work here: it's used within an "#ifdef
> > CONFIG_IRQ_TIME_ACCOUNTING" block and a separate "#ifdef
> > CONFIG_VIRT_CPU_ACCOUNTING_GEN" one. We could do:
> >         #if defined(CONFIG_IRQ_TIME_ACCOUNTING) ||
> >             defined(CONFIG_VIRT_CPU_ACCOUNTING)
> >                 ...
> > ... but that might be a bit ugly.
> 
> Yeah, ok, in that case it's fine.  One issue with __maybe_unused is
> that this function will stick around forever if all call sites get
> removed.  But when the preprocessor checks start getting hairy,
> __maybe_unused is maybe simpler.

Urgh, also, I have vague memories that we made it 'static inline' to
avoid all this. Should we instead mark it __always_inline ?

Also; I detest the placement of __maybe_unused, it is not a return
value, but a git-grep showed me it is wide-spread :/

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200819073253.GV2674%40hirez.programming.kicks-ass.net.
