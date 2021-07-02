Return-Path: <clang-built-linux+bncBDYJPJO25UGBBXMY7WDAMGQEPTO6FVI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33c.google.com (mail-wm1-x33c.google.com [IPv6:2a00:1450:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id DCECB3BA39D
	for <lists+clang-built-linux@lfdr.de>; Fri,  2 Jul 2021 19:26:53 +0200 (CEST)
Received: by mail-wm1-x33c.google.com with SMTP id z127-20020a1c7e850000b02901e46e4d52c0sf6502275wmc.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 02 Jul 2021 10:26:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625246813; cv=pass;
        d=google.com; s=arc-20160816;
        b=t5rNKkPM6587IrV9ALSHAfWTdoCHXCjuWi1AIaUwkJbb3bqePjmAqGLw6gynjgDhgy
         VndOOU/AMgl1Bg9iCm4IbbiOVzJG42i4vwSnGiVgCx3cIG5cmhNIOUbv8WqYTR45ziVw
         Jxv2wMb91Cl8tg6s+FHOfIxUh2X1D8r/tyhuLNlqaM8onwcSGJkcdFGv2hC6QvZs8UR2
         12qHTFHhBKvbckicu4DN4C3yNBsoDBH9BK3T/Okiv1GDQGUKSs2rnR4gQMI5D6v75FLT
         QVonweGwxGznWGvtCIVpqdABR+Bq9SnbcbpSCgbeYb4vuOst0KrIYLf/FjcbqafF1gwc
         8H9w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=P/Dk4R3zI7VLWCma240dN722ggg83Rwgig3yySanmvA=;
        b=JfknICYNrEirN0dRFDuaPeQ2PXIHlPby6vPlljQ3JRIPESje1SHm+XGtD/yuNyCMHV
         tn39lEwQa9ysATEmK/n4SiCxJSeAm8bPxnyHSOJuyoI61kEqP7SWuJjUnkfQT+PVBD7e
         mB596P2MIkDLJuOzUb6aPSCyXXt0/zMl5akhYJ62BhyXQFKxMlfu16NdxNUiSB4Vplgl
         TNaPj1YKmGlxQxq36zdBrVC25UMmSCaRH6BIAq14bvVy66f3H1wPOLutRFr8MSBvulLk
         94ZXtCZUVedvDZPQH41HdOW/5JXjs6ouJhHHI6FqFhhbVYVog3nncJeSpi8x9ftq0Y4V
         UROw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Gn+Ulz0H;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12d as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=P/Dk4R3zI7VLWCma240dN722ggg83Rwgig3yySanmvA=;
        b=NplEQWsnnz/ozeXaBKd5U8OLXcTY+3OaKkQpc9W8WhushiVn9gDItxBkxNkiG0nNu/
         Iml5yeWOyhM+4q21ATDUdj8u5te1/dg6TTBSNo6XBO2piQToLsjC6jxaQLjddjRqu/G8
         Q07kClOOOO7hquG5ku0vs75pSkUtM8+KT+RweMyqDhc7OlGEyhH02MJSksBMLxyxmLN2
         uN83mJasf4zeNXAoP89jrEbDhhazksxjv0tJRGw32G/9QZD+778nqWgOhLfLxXq8KTgd
         lP+aQmHQMBH/otchWa6wM1TMKoE82HNidiRXeUcdxzCaZWbY1dqtqEabYWR4YzCbg9By
         NNOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=P/Dk4R3zI7VLWCma240dN722ggg83Rwgig3yySanmvA=;
        b=VDvDr3FRsH369M5c6SvI45avQPYfoaEeRmh0hRAuPEOgV1D6ar7mfHy8+mgVWK293f
         +BFYvEUNdqsqEpi9/WOA8sjxWIc6SNkI02cE9UbcWzawaKsz0EkeSMQ2oxgPdwWT5MN+
         QlvtPzJcKrflbLLMd7GhrxKXEnX+WY1Ky/ghQ9Pr2u6bky+5iBwbqG4kZG+gvsJH1P7K
         ocdZRwaXHHu7tRf43gMZP+FRRgoZyWvs/5mOae7/26yl3RaEOs8rBZLXGIIZqJs0pq/9
         cLymhMj0cC2Fo+9zYiDBzPmzA2tPzNSKU6g86b1bMhiyuV6mlj9qHql/1QknVYG3abTF
         yPXQ==
X-Gm-Message-State: AOAM5329OhEBJn1Qr0bK/27X8t6+pcBIkgW2i+lPIaQ+eyAXgNiIGyLz
	wnQX6HpBeJyMgzMthnEL+6c=
X-Google-Smtp-Source: ABdhPJwyJPP11xxl+qKvtfwwwoPeehudJQX44BoiHeLkrhjSe04/MMyOmOfIgdD8DrRtPRvA89PWwA==
X-Received: by 2002:adf:a1d6:: with SMTP id v22mr859684wrv.68.1625246813554;
        Fri, 02 Jul 2021 10:26:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:a141:: with SMTP id r1ls2203419wrr.3.gmail; Fri, 02 Jul
 2021 10:26:52 -0700 (PDT)
X-Received: by 2002:a5d:58c4:: with SMTP id o4mr818334wrf.320.1625246812741;
        Fri, 02 Jul 2021 10:26:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625246812; cv=none;
        d=google.com; s=arc-20160816;
        b=HJTdOkW3mC1+bsIVUTCJ/1HAEANvIdISbgoxz5hZu6eWI87M5sfA5Ep1XoCbP8WyfH
         /16LSdYAdfGP4x57wnuhRg+PdOitjvL67Q3vNgFrUZq0kYzFCYHF7H0u9kbqlDqoCdN6
         5P6qFdGKcKqjl99KyEQ5T4J04PJtMNmR7imqLsbjZUJ1VsvcOGxjFKLsv9JsfIwQV7tx
         ROvhhpCR3a8RDyLzXfmwhc86Z8i4v4qmQKym2B7yjhKp0/k18xPfTc44QHGgIjqOPgqy
         HEtJOkBEzb9xpmoKF9f1TSM8kTsPQ0ZQ/a2EbjqPog2oLTqsealXYLsprmWcg9W0lCN2
         kpww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=edd9L3CEPcJHV5zapgkcsAIDFKhBznCgAd4DR45iEkA=;
        b=C0n3ab0EjQNhilZKLuftFVVYzwEsgcNHnFyF1VTSoT9fi8RjM92xtN/w3+3NCEIa7m
         rk7tyvzgFgCTdd4sJxbx6lKsqoNWAjexyh4yLRN8DkjzXfZGIFIhg/IFiVSkKZ+mKS3+
         ZxIWRdJsxZ+rqS6RP0TcYE+STzDqXL4WplFxZcTq+QP1fLNtCtfJnHTfzaJHilFBAsBh
         sw/Rj40aQKFpg9EBZRYpQ1cYq/wYs7wn0/3r3nO0gHf99X7ngF7BOh8eBPhCdrplzdhA
         OGlxIdK7Fd6Np2D9duFkM/oUCl4HcWvno4Cgyh5727l4wtmei3QbF10gx8Lyu/lOgfD+
         i9Wg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Gn+Ulz0H;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12d as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com. [2a00:1450:4864:20::12d])
        by gmr-mx.google.com with ESMTPS id h15si163502wru.3.2021.07.02.10.26.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 02 Jul 2021 10:26:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12d as permitted sender) client-ip=2a00:1450:4864:20::12d;
Received: by mail-lf1-x12d.google.com with SMTP id d16so19368975lfn.3
        for <clang-built-linux@googlegroups.com>; Fri, 02 Jul 2021 10:26:52 -0700 (PDT)
X-Received: by 2002:a05:6512:3e24:: with SMTP id i36mr520821lfv.368.1625246811859;
 Fri, 02 Jul 2021 10:26:51 -0700 (PDT)
MIME-Version: 1.0
References: <202106281231.E99B92BB13@keescook> <CAHk-=whqCT0BeqBQhW8D-YoLLgp_eFY=8Y=9ieREM5xx0ef08w@mail.gmail.com>
 <202106291311.20AB10D04@keescook> <CAHk-=wg8M2DyA=bWtnGsAOVqYU-AusxYcpXubUO2htb6qPU9dg@mail.gmail.com>
 <CAGG=3QXrOnN3-3r-VGDpmikKRpaK_p5hM_qHGprDDMuFNKuifA@mail.gmail.com> <YN8NGLPQ4Cqanc48@hirez.programming.kicks-ass.net>
In-Reply-To: <YN8NGLPQ4Cqanc48@hirez.programming.kicks-ass.net>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 2 Jul 2021 10:26:40 -0700
Message-ID: <CAKwvOd=-qdp6xcuVb-fSni6X-0UuJ6GM5+TJdWSkAfvNmqfZ+w@mail.gmail.com>
Subject: Re: [GIT PULL] Clang feature updates for v5.14-rc1
To: Peter Zijlstra <peterz@infradead.org>
Cc: Bill Wendling <morbo@google.com>, Linus Torvalds <torvalds@linux-foundation.org>, 
	Kees Cook <keescook@chromium.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Bill Wendling <wcw@google.com>, 
	Catalin Marinas <catalin.marinas@arm.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Fangrui Song <maskray@google.com>, 
	Heiko Carstens <hca@linux.ibm.com>, Jarmo Tiitto <jarmo.tiitto@gmail.com>, 
	Lukas Bulwahn <lukas.bulwahn@gmail.com>, Mark Rutland <mark.rutland@arm.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Miguel Ojeda <ojeda@kernel.org>, 
	Nathan Chancellor <nathan@kernel.org>, Peter Oberparleiter <oberpar@linux.ibm.com>, 
	Sami Tolvanen <samitolvanen@google.com>, Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Gn+Ulz0H;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12d
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

On Fri, Jul 2, 2021 at 5:57 AM Peter Zijlstra <peterz@infradead.org> wrote:
>
> On Fri, Jul 02, 2021 at 05:46:46AM -0700, Bill Wendling wrote:
> > On Tue, Jun 29, 2021 at 2:04 PM Linus Torvalds
> > <torvalds@linux-foundation.org> wrote:
> > >
> > > On Tue, Jun 29, 2021 at 1:44 PM Kees Cook <keescook@chromium.org> wrote:
> > > > >
> > > > > And it causes the kernel to be bigger and run slower.
> > > >
> > > > Right -- that's expected. It's not designed to be the final kernel
> > > > someone uses. :)
> > >
> > > Well, from what I've seen, you actually want to run real loads in
> > > production environments for PGO to actually be anything but a bogus
> > > "performance benchmarks only" kind of thing.
> > >
> > The reason we use PGO in this way is because we _cannot_ release a
> > kernel into production that hasn't had PGO applied to it. The
> > performance of a non-PGO'ed kernel is a non-starter for rollout. We
> > try our best to replicate this environment for the benchmarks, which
> > is the only sane way to do this. I can't imagine that we're the only
> > ones who run up against this chicken-and-egg problem.
> >
> > For why we don't use sampling, PGO gives a better performance boost
> > from an instrumented kernel rather than a sampled profile. I'll work
> > on getting statistics to show this.
>
> I've asked this before; *what* is missing from LBR samples that's
> reponsible for the performance gap?

Are we able to collect LBR samples from __init code?  I can imagine
trying to launch perf from init/pid 1, but I suspect at that point
it's way too late.

Increasingly, boot times of hosts (and virtualized guests) are
becoming important to us, both in the datacenters and on mobile.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3D-qdp6xcuVb-fSni6X-0UuJ6GM5%2BTJdWSkAfvNmqfZ%2Bw%40mail.gmail.com.
