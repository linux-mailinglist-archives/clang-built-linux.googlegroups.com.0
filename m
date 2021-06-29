Return-Path: <clang-built-linux+bncBDYJPJO25UGBBU5A52DAMGQEI3MK5DA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23a.google.com (mail-lj1-x23a.google.com [IPv6:2a00:1450:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D3D53B79DA
	for <lists+clang-built-linux@lfdr.de>; Tue, 29 Jun 2021 23:27:48 +0200 (CEST)
Received: by mail-lj1-x23a.google.com with SMTP id j2-20020a2e6e020000b02900f2f75a122asf11708ljc.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 29 Jun 2021 14:27:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625002068; cv=pass;
        d=google.com; s=arc-20160816;
        b=EGq7hef+CfGCaC0oPJTL+aVm9QVxCvznqiR0CFSIU+jczS3HjYt+o5vZAK7+l4IosI
         kswMTtqIovCZKlwPFwpIBZokSy+EVI/F7/XWElP+IaAiwAgjUqtnjYTYTphauqova2/Z
         +nglbkTNziM3LdSVkAwkFKl3brguRQG270bgqqlLkBLfiUH2N/l3vIhQTUqlaqIOXFAU
         doAi6QCyryuQUtuxUlP0ce60Y1BfFhYofe0qUnkn5izMf3Yqp2zbpyaL3+GjUCZthVdT
         RXNhZxDQ4q5TfawfJTUEak4JczVAzgnzdrWge8IekjT7yk69hqouPYxvw8PvJoaILv21
         TF9w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=94tVHqgWxXb1OcW40IsSElch9kDR9HEkOChB1BlbdXA=;
        b=f1P/esvjzRssWpcqwqJQkLNPVVuCpsJj9omXFXf7VBl1PZZ0HWUvpKm7yQ9yA5UgLK
         zysFo7uohE41O13pjtJfsG7KV50lgG4aF1m8W4UBx99MG0ZTXp89IF/vhGZ0H9/U8zot
         irep+lQHzZIzVnTMi1AuqaGKTIAidRfhMWpvABaaz5CBLnEcBCNWQETXYufKWXdubWIg
         tRTZZMm2ZsbuaRJfX1BLPh6pTAKIJaSJkK0w4eisrzl6n6+fOwDPgi5/SzZi3U8CWWUx
         N1A49L575BD4xc0kMjcLhCGfHK/7Vf45JEn3DpMlYxxr2rxlspvp3gvSrgTg0CQG6g2A
         ixVg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=AIQutnUt;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12c as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=94tVHqgWxXb1OcW40IsSElch9kDR9HEkOChB1BlbdXA=;
        b=L1PG9OcY12jtr+5WBlWCYH64GMyVGOhDADxdgTWXhSEdnNW3g4hSn/pUuqK4gucAbI
         GdAzBHnljJRqCeWrQMVSfI/YDlJxahw9t7asRuV/S/AJTRwqLe8nJAs4i3bOp+hbetPr
         z5MkfKCgclRWspeGMcKQtvf7ZKMrJtQgl0wI5JwWa1FnCPALhevvqbx8v8VMnC1hfMQ4
         WwmKVCLlA0TkDHSGesRdJLSD+ArmaYDCSjV33lr2D+LaPkPfGgyVIK3480+7BDvzGkRf
         rCqyBKC4dG7iY5TMO90vwyXBTx6pWmkkkgj7CUyQibO9cF4DTRHZfFyg50+arLC4xx2i
         CyTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=94tVHqgWxXb1OcW40IsSElch9kDR9HEkOChB1BlbdXA=;
        b=cN6Oh1xfeRsUx3pa/ztzY2aZqhTVvOBtR8ba6GgCI03snbzTNP+gL65Xv9U1LZrkOz
         P13sPhP0OtdCo0Z+fuv5zS93DS2MbAsU66Te/L2+x8mCQKu19UeONUi4gnbAJqgvabFv
         fZVqvxN11L11ZjYAnZLHa0UcnhoHamyvHJdkJzTG6gkzeWUPIu3Md7LqYPxR+UOXvLqV
         5tqsskMA33re1dcm9WlFsxGaYyKF2974MTZRCIsgnOV9Ju3CceJbcTwdFA15NzNJnHJ1
         SadQD4TBFE4UQ0nyUmrJi6aHgLyH70ZHmQ2WyacZ1+FinSfglX2EcOO3gbcdLr0O6zBL
         bQmg==
X-Gm-Message-State: AOAM533pJZdxGr4s5wTZ9fyyPKcpLDOhmOFYkrgjawBT10Rq2VsM5Kty
	4wj4Nv0y8EwKVJqk1zBt2WI=
X-Google-Smtp-Source: ABdhPJygMROKBTL4bKGc/Z6VpkY/aNdg8I+ZEleR0Hd8GWJUkBqJRBqr0wk5F/czW2f7albIpjKSXg==
X-Received: by 2002:a2e:a546:: with SMTP id e6mr2549725ljn.155.1625002067961;
        Tue, 29 Jun 2021 14:27:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:46c6:: with SMTP id p6ls82797lfo.3.gmail; Tue, 29 Jun
 2021 14:27:47 -0700 (PDT)
X-Received: by 2002:ac2:5237:: with SMTP id i23mr25857884lfl.29.1625002066939;
        Tue, 29 Jun 2021 14:27:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625002066; cv=none;
        d=google.com; s=arc-20160816;
        b=wvUrS0YSEkLr2k+DB7h25T9aoEq4znvSvmyx5zOOz6EF2uBXaPHD3W+ORnq9WaVxqv
         JR2egi0NV0YCOsOB9GaEoSjmjBmKNhNGwuKI3TfV+nxaoJp9nTR+J1PJp6VzlBrFbzvn
         HCVqpq5KmtvqyriPqJGW77zjIa21/oSUc89DgG0kffOueFqGWYGTkyZOy5jl3PFjYMxE
         j8bM552/jaf+bcPhHq2VQled1VrTSnkTV/GlmsqrjkQdGp26WQ2dBicPeScCwI0zrnMI
         4yMbMFTs3KJJ9euU1EKVpChFOgMvN5os5/LH0af0r9nFa6OioKGzO+zsSYcgu0hojF9A
         kjLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=yth+6c7mlS+KmL6mK732GO1mfX1AaY5yXfvDuoiPScw=;
        b=RwOpwOjYRXfhV0KZ8ETEaLzxaKFF3araVbGF4ixyrLp9SlGcWUayi2AAZG2Q8L8fp4
         euHQP2a/kYI6L9izvrp+jtcR3OZ49ECNHSM31eM5JxBPZSc+/ryrUUz0ols9sDNeGhr1
         KOjrzUdejwfMsP264QG9QA7/gBhMtge/5vETDdoLBK99JWWKxkTAqqmk43Aky0vKCMPz
         sPmnfj1qFHsHLcwY9aJNkTt2kvL+nBWMsrPhK3DGJwq/LuE1HLQFLew4tGEJJNlpkgA1
         iWyQMJpkPgPSJFX3Dt/R/zFuR52exjTv7Y+YIzhserjuTG+js2TjdpE5l/lMAOHDyCIK
         R9ig==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=AIQutnUt;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12c as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com. [2a00:1450:4864:20::12c])
        by gmr-mx.google.com with ESMTPS id v138si814235lfa.6.2021.06.29.14.27.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Jun 2021 14:27:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12c as permitted sender) client-ip=2a00:1450:4864:20::12c;
Received: by mail-lf1-x12c.google.com with SMTP id u13so911999lfk.2
        for <clang-built-linux@googlegroups.com>; Tue, 29 Jun 2021 14:27:46 -0700 (PDT)
X-Received: by 2002:a05:6512:3884:: with SMTP id n4mr24664312lft.547.1625002066332;
 Tue, 29 Jun 2021 14:27:46 -0700 (PDT)
MIME-Version: 1.0
References: <202106281231.E99B92BB13@keescook> <CAHk-=whqCT0BeqBQhW8D-YoLLgp_eFY=8Y=9ieREM5xx0ef08w@mail.gmail.com>
 <202106291311.20AB10D04@keescook> <CAHk-=wg8M2DyA=bWtnGsAOVqYU-AusxYcpXubUO2htb6qPU9dg@mail.gmail.com>
In-Reply-To: <CAHk-=wg8M2DyA=bWtnGsAOVqYU-AusxYcpXubUO2htb6qPU9dg@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 29 Jun 2021 14:27:34 -0700
Message-ID: <CAKwvOdkcKU4K9LWTymmzi_c0wKPTQjWEbNu04WOd6D-EcnWDSg@mail.gmail.com>
Subject: Re: [GIT PULL] Clang feature updates for v5.14-rc1
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Kees Cook <keescook@chromium.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Bill Wendling <morbo@google.com>, 
	Bill Wendling <wcw@google.com>, Catalin Marinas <catalin.marinas@arm.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Fangrui Song <maskray@google.com>, 
	Heiko Carstens <hca@linux.ibm.com>, Jarmo Tiitto <jarmo.tiitto@gmail.com>, 
	Lukas Bulwahn <lukas.bulwahn@gmail.com>, Mark Rutland <mark.rutland@arm.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Miguel Ojeda <ojeda@kernel.org>, 
	Nathan Chancellor <nathan@kernel.org>, Peter Oberparleiter <oberpar@linux.ibm.com>, 
	Peter Zijlstra <peterz@infradead.org>, Sami Tolvanen <samitolvanen@google.com>, 
	Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=AIQutnUt;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12c
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

On Tue, Jun 29, 2021 at 2:04 PM Linus Torvalds
<torvalds@linux-foundation.org> wrote:
>
> On Tue, Jun 29, 2021 at 1:44 PM Kees Cook <keescook@chromium.org> wrote:
> > >
> > > And it causes the kernel to be bigger and run slower.
> >
> > Right -- that's expected. It's not designed to be the final kernel
> > someone uses. :)
>
> Well, from what I've seen, you actually want to run real loads in
> production environments for PGO to actually be anything but a bogus
> "performance benchmarks only" kind of thing.
>
> Of course, "performance benchmarks only" is very traditional, and
> we've seen that used over and over in the past in this industry. That
> doesn't make it _right_, though.

The current major use case is ensuring that production kernels have
been "trained" with specific workloads in mind.

> And if you actually want to have it usable in production environments,
> you really should strive to run code as closely as possible to a
> production kernel too.

You could do both.  There is a line of research internally using
multiple training rounds ("CSPGO").

> You'd want to run something that you can sample over time, and in
> production, not something that you have to build a special kernels for
> that then gets used for a benchmark run, but can't be kept in
> production because it performs so much worse.
>
> Real proper profiles will tell you what *really* matters - and if you
> don't have enough samples to give you good information, then that
> particular code clearly is not important enough to waste PGO on.
>
> This is not all that dissimilar to using gprof information for
> traditional - manual - optimizations.
>
> Sure, instrumented gprof output is better than nothing, but it is
> *hugely* worse than actual proper sampled profiles that actually show
> what matters for performance (as opposed to what runs a lot - the two
> are not necessarily all that closely correlated, with cache misses
> being a thing).
>
> And I really hate how pretty much all of the PGO support seems to be
> just about this inferior method of getting the data.

Right now we're having trouble with hardware performance counters on
non-intel chips; I don't think we have working LBR equivalents on AMD
until zen3, and our ETM based samples on ARM are hung up on a few last
minute issues requiring new hardware (from multiple different chipset
vendors).

It would be good to have some form profile based optimizations that
aren't architecture or microarchitecture dependent.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkcKU4K9LWTymmzi_c0wKPTQjWEbNu04WOd6D-EcnWDSg%40mail.gmail.com.
