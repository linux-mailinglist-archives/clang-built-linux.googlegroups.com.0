Return-Path: <clang-built-linux+bncBD66FMGZA4IJTQMBTMDBUBC5DGF7O@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33b.google.com (mail-wm1-x33b.google.com [IPv6:2a00:1450:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 5349E614201
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Nov 2022 00:56:10 +0100 (CET)
Received: by mail-wm1-x33b.google.com with SMTP id o18-20020a05600c4fd200b003c6ceb1339bsf62312wmq.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 31 Oct 2022 16:56:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1667260570; cv=pass;
        d=google.com; s=arc-20160816;
        b=xETzir6cIEHPaNwXtj33Dkhs4FutX7nh7ub3VOZuBHrdxp1Pr78JrKF9AChPIQXP2T
         RnNxqjba3EbVT1OZDBQvXLPKjkp8jEjRM7hP4D9XW7CaUYgvCpnRL8AjhfBitBL3JR9Z
         TtAQfNqWubGePUL7Z/VkxGMV3cq7Xsip+yElovF9RnEH5osjMrXR7Lr10XVRrWZrGeu+
         3YixOtXkb6UywIROnsQEmlgRoLDY3avzNH81bolV0WckWeUgmxF4sczPUkGmnSkNiZ7c
         HI4T3xvQRma7q+6yqz0OFL/iBSsCXqAc3l+FTLV5C2acD2fFemQ700SsUEvVB++XLGXW
         Tuvg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=pZZbco2BhsfbmZ2Xb4+lUPaV+Vb5dutIpKWvK9HjQcI=;
        b=TSJlZYFcBf/Ga0ak4l9cpa+L2OuDxar9xiXXkY0OFUshn1v6t1LmSWMHlIwl7Igxww
         6ThDLN3QujUNi0hVnRHJoswCUB2zoyxjODz4YT9w1Q0C3J2QiZC2RJsgh5YXwq+pe1en
         8Unx7yBwtDc5Y4MMkhoHC4exWmvwjln2afjfLMMK/SqmYYUcGqRgMFfxWgFdyzPl8OiR
         ZDymPe4YxDMT14mfJIMf97CrKtXhFg5sKSOFiW7RxcZcHWlsZZ9qxEnOH8HhOGvIBEDj
         F3JAo4+4ENKhthdnFoKTi3AdQr0aajLJqCJBUyEX0fJPwfpr0Sjc0iwzYyaTWqAC5HJP
         4i8g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=fSs7mNWH;
       spf=pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::62c as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:cc:to:subject
         :message-id:date:from:in-reply-to:references:mime-version:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pZZbco2BhsfbmZ2Xb4+lUPaV+Vb5dutIpKWvK9HjQcI=;
        b=LFUsIttTb8f1VoCvEA3rd3Zamb9g6ORVqXntauwcUglfeRX6ELb1TbfCb0GM0ynnP+
         XM97r33ffj53W9IAIgoEJE+GPaQMSYh0jV7Q3kRtvNu4m/mYoGoVf10T/HR2JzExWJ6N
         g7ZvZuN7clja7nwsEn/xHjAmy9ISB2GPRgjxlTVum++fO+6ZXo73PQMyaBJqUcJ/tB5j
         Ba57kbk7dousz6rCRFG1JOk5I2XdMPlEIld2EYRg7l0RykdTscNVDT3/mweiarF/Djzj
         el38uALBPVG7s6PCX3A2PPW4vWFO9eVG5RNVDtWE2rluXIREJiF0F1CNBFTY6xY3Yzkj
         igpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:cc:to:subject
         :message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pZZbco2BhsfbmZ2Xb4+lUPaV+Vb5dutIpKWvK9HjQcI=;
        b=YJkSBN1CJH39G7QjFk99/jYuZozNFGwOOJXKIsdJ1RG2f4Ih/B1cfu3qcJsLivYNT3
         hnodGvZ50uczwEMzOycuQ3k91ERXonfGlN+Nal+iP47rtR9e+/oBrfG8Kkv6m035gXhq
         BOOazEXN1e9K2BilkrTzMNU3iPFyeOSgL41PsqojBsvSN0haZ70F6ZO5wn/Y5HpxgylY
         Z6HnwNinPAd6GsQlyQ/MWff20f2SEfyyVghKvihIZtVklRUZvX4U25IAw1/6NUk24A/N
         nIwWKyZWj2zRPGzVzaVrdiRALKyyeOBnFhm1CXYvWXnwkK4rCcOU3yK9YINI0nDqRM8J
         QJAg==
X-Gm-Message-State: ACrzQf3WJB/M0guiwXPb/hu2pJnTIx0nJo5aCTAvmRMW0CmvCT22RqOp
	NXsaUg+A3NxfjpUt4p1TNIU=
X-Google-Smtp-Source: AMsMyM7lsfIN/Z/MusdNK5B3T5DpVWKMnrWjCa/MlY6G4cMa1y5Ylf5Bn6du7+ZA+LULzyDUV1OIyg==
X-Received: by 2002:a05:6000:1561:b0:22e:6c59:e347 with SMTP id 1-20020a056000156100b0022e6c59e347mr9875380wrz.519.1667260569691;
        Mon, 31 Oct 2022 16:56:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:1e09:b0:3cf:72dc:df8 with SMTP id
 ay9-20020a05600c1e0900b003cf72dc0df8ls1598014wmb.0.-pod-canary-gmail; Mon, 31
 Oct 2022 16:56:08 -0700 (PDT)
X-Received: by 2002:a05:600c:3d8a:b0:3c6:f241:cb36 with SMTP id bi10-20020a05600c3d8a00b003c6f241cb36mr9796620wmb.115.1667260568708;
        Mon, 31 Oct 2022 16:56:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1667260568; cv=none;
        d=google.com; s=arc-20160816;
        b=qsbdP2qKFxKFwK3hgSgGdfyTGFCljwPjwF6YS5C4bVpsQDirwRtAjt08+hnniVt8Lu
         i79eQn9L2mIQj7NYr9Aae8BKgDg9ZsygkzW3yoJ7YAY2rU5lsblsVTNwwvYi0ilFW1tV
         oDlsK4lVPW3WmMfhUlaZQSvxTWBEANKcwhOhYdWig8wIt/JwQfUlYydiusHqvqtQCM15
         6eHXQl3AbOCB7PVkB2cx8sEwQJ7D2DXrXL8laYXeCNX3WeeBFVCHBTOXnYTotw5XmZhq
         WlBg9sjKpDhbVArde2GDDMwdKzdjPcU74Ef6Zi8XG5+5YFkKMdOMsY14IZ4kBnXMNevC
         0oLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=SKzTP96UBPazCXiA6JP5vjdhd3B+l1W/QdglRdm2JxA=;
        b=mSn5aK/CGBILBNDQGHsW5Khp6X0QqKG0MXq/dee4As5q2lnZ90Kq6vsBSpGXHNT6bg
         vd1CTZo9nUAAJY2n6yp8REfb7HghRsI4bSndxqG3UHyJpdCuLMNp+DD1uP1x76YtYjbo
         f4ae8TUxLimxu3LeZ+RlvfHiaB33Oix8vObjt5o6tQz7t/GUaLIstJSCx0zMl1k9p46V
         ZISkCjYDcZHFSMj6/dh0X3z6TDr1eUR3BAI07jFLe9duecU+DuNaEX8GgIjZXOKML66h
         HvluR23rglWKXhZDQAJYDi4yFrZu0TCUn5b8/dSpIZlp7ZE980t7nNuBrWrBacusziOc
         8p8Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=fSs7mNWH;
       spf=pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::62c as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com. [2a00:1450:4864:20::62c])
        by gmr-mx.google.com with ESMTPS id bo2-20020a056000068200b0022c8a1af685si264470wrb.4.2022.10.31.16.56.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 Oct 2022 16:56:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::62c as permitted sender) client-ip=2a00:1450:4864:20::62c;
Received: by mail-ej1-x62c.google.com with SMTP id ud5so33376346ejc.4
        for <clang-built-linux@googlegroups.com>; Mon, 31 Oct 2022 16:56:08 -0700 (PDT)
X-Received: by 2002:a17:907:9717:b0:78d:9fb4:16dd with SMTP id
 jg23-20020a170907971700b0078d9fb416ddmr15801465ejc.720.1667260568290; Mon, 31
 Oct 2022 16:56:08 -0700 (PDT)
MIME-Version: 1.0
References: <202106281231.E99B92BB13@keescook> <CAHk-=whqCT0BeqBQhW8D-YoLLgp_eFY=8Y=9ieREM5xx0ef08w@mail.gmail.com>
 <202106291311.20AB10D04@keescook> <CAHk-=wg8M2DyA=bWtnGsAOVqYU-AusxYcpXubUO2htb6qPU9dg@mail.gmail.com>
 <CAGG=3QXrOnN3-3r-VGDpmikKRpaK_p5hM_qHGprDDMuFNKuifA@mail.gmail.com> <YN8NGLPQ4Cqanc48@hirez.programming.kicks-ass.net>
In-Reply-To: <YN8NGLPQ4Cqanc48@hirez.programming.kicks-ass.net>
From: "'Bill Wendling' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 31 Oct 2022 16:55:51 -0700
Message-ID: <CAGG=3QWuavLtvNb1d9T=dk67DZf8YaWL=0XBxZw0b0XrY8k6Cw@mail.gmail.com>
Subject: Re: [GIT PULL] Clang feature updates for v5.14-rc1
To: Peter Zijlstra <peterz@infradead.org>
Cc: Linus Torvalds <torvalds@linux-foundation.org>, Kees Cook <keescook@chromium.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Bill Wendling <wcw@google.com>, 
	Catalin Marinas <catalin.marinas@arm.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Fangrui Song <maskray@google.com>, 
	Heiko Carstens <hca@linux.ibm.com>, Jarmo Tiitto <jarmo.tiitto@gmail.com>, 
	Lukas Bulwahn <lukas.bulwahn@gmail.com>, Mark Rutland <mark.rutland@arm.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Miguel Ojeda <ojeda@kernel.org>, 
	Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Peter Oberparleiter <oberpar@linux.ibm.com>, Sami Tolvanen <samitolvanen@google.com>, 
	Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: morbo@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20210112 header.b=fSs7mNWH;       spf=pass
 (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::62c as
 permitted sender) smtp.mailfrom=morbo@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Bill Wendling <morbo@google.com>
Reply-To: Bill Wendling <morbo@google.com>
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

For one, it lacks information on function call frequencies, which help
inlining. It's also much more coarse-grained than a perf trace. And
while a section of code that doesn't show up in a trace sample may not
be executed much, changes to it may have cascading effects.

Ingo mentioned had some ideas on minimal software LBR PMU
functionality. Do you have a link to this discussion?

"The right technical solution to integrate the clang-pgo software
instrumetnation would be to implement a minimal software-LBR PMU
functionality on top of the clang-pgo engine, and use unified perf tooling
to process the branch tracing/profiling information.

"In the main PGO thread PeterZ made a couple of technical suggestions about
how this can be done using the existing hardware LBR interfaces of perf,
but we are flexible if the design is sane and are open to improvements."

-bw

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAGG%3D3QWuavLtvNb1d9T%3Ddk67DZf8YaWL%3D0XBxZw0b0XrY8k6Cw%40mail.gmail.com.
