Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBV44TH3AKGQER3A3QFA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1037.google.com (mail-pj1-x1037.google.com [IPv6:2607:f8b0:4864:20::1037])
	by mail.lfdr.de (Postfix) with ESMTPS id F2E861DCA70
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 May 2020 11:48:08 +0200 (CEST)
Received: by mail-pj1-x1037.google.com with SMTP id o9sf5288794pjw.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 May 2020 02:48:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590054487; cv=pass;
        d=google.com; s=arc-20160816;
        b=cuugopjfjbIDLtuw4udodxYb8oRjIuTIvVmX9uSrLSDKxYj2loygBRR2VXJa0/pVSW
         kXg7YTEzmvFtDHPP+rQNP76DVV8N02dMw9asCHzCXnnwC+yF1HDjjXUptnf40AOZNEJJ
         HAlMh02lNjpXPV50MAFdLheshGhIPMJiinZAShyP/xcMw7p4snKwpw5Yw+M1iihlO0cG
         cWAzC8revCvprSUnYSSoa4pkYzjSi/2iKbfDzr/twK023NcxF2qdZrmeWVaVe2KV7DD+
         zwaL520z538b/ox1ZvkuDVgjLkPZ7IzAKSclwn77Gg8V4krf50SuGNiK7fZaDqu+cQXu
         82aw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=emI9Z0nszvwyHb4ol2Qd78v+nYWCaQJ8D/fOIgxj13w=;
        b=CxO/sNn92pu9wQsuJE7pPaWSXq9Dk4DB8liXyk22lCrB9Cy0y2x6V8ut7M1sGHAzO3
         Hs+Pj2A3yOqTJMZA8xn7Ntg0PgJIYUb+RiTwz5pVlugH9qJXHfUFMYXi7rgC56zQSMTE
         aCeX8rn1/Urt5FtXvPIXGN3Xs+YL5ucKHPpz2wpi9Fq8vvRtrPB/XG6pHIyt9KhTMxfd
         UehJSElMoFK0NhML7DC1JE7JmUWTR0lQngUC2hLc3MThH3uD7L5Tp9RUSsxJ4yuYgxKX
         Chg2VyR0DKywa6sveJZeUaKDto2dYI5O2my61ffhFjPWcyQACIZfmMVR97vU0hkfQ+b+
         kJew==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qNY9dMzQ;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=emI9Z0nszvwyHb4ol2Qd78v+nYWCaQJ8D/fOIgxj13w=;
        b=IPr4bKgbkdS965a07y1j5gFaqv/Mfb9fsXGg0KbVKS/t10hPze84rxn5ydQLk30BYp
         5f+582jNbQE4kqWAeVOq6MOsmzq1sHQ6sXAKmOuY2eBIi5BGhekqnzJsZBdR1V7jw6E8
         7Jozs3UTmDlgztX79I1YwHZQAy18Cz5ejY/h5toAf9iUbqJ7/j0z7l01twwGL51D8zJg
         W0xX0Ra7lG3ecgIuL1JUnJOCQjBRtcnz4AUo9NFA/Qsm8aOUgEzZ9K/Jex82kno8t34u
         vHu6rigAP+tCQmbdI+eLyXzwCqUt7qnEfIMDimdkxyP7R+Afe/wlT/H7VB5TELlpd4hN
         Y8Xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=emI9Z0nszvwyHb4ol2Qd78v+nYWCaQJ8D/fOIgxj13w=;
        b=Tj5E7cKJaZEzxjLb/RiC8oXC5CHzW3UBUSUdAlI226nvN/toVt9XXss+QOoHapffol
         /IDMWEbd38a1/VZ5Jv19SOgkCmxTeSGtfg/TKEKERhB5gdKapI5BuvWHwO6WiIY42dfW
         L6R7Q1R/BSH9fhlUk1eqpuOpJ9neTZa73lrxPKdfwfktZftooHtKAZ9VuqCXYWcz5Rl+
         HOyjLf5SYOkMioe5G/d+vssfkdZeMa+v6UtI93jj6WH23x1FqA/0uCM12VYUAqmnjIUf
         aVWiBgkzstsondhg6/NHgXPMCBULAexjf3iD9WiJl/W9XpyG0/qu3+gDGv2RFQGd8K6R
         9tvQ==
X-Gm-Message-State: AOAM533f/yyOHccJ3jY+IrlzP/iwuZxo/sKKYvyeCR3T83exXymOlIXa
	UmYuIDPVaWU3yyjn941i790=
X-Google-Smtp-Source: ABdhPJxmDfIpXDGBpA112ZpC7etcNPsuA4jgr2sspi1DlBuB43FslcWU4tN0G62P+5/hfCXZO2/dtw==
X-Received: by 2002:a17:90a:c795:: with SMTP id gn21mr10552842pjb.226.1590054487628;
        Thu, 21 May 2020 02:48:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:e283:: with SMTP id d3ls932115pjz.2.gmail; Thu, 21
 May 2020 02:48:07 -0700 (PDT)
X-Received: by 2002:a17:90a:7349:: with SMTP id j9mr10663785pjs.196.1590054487039;
        Thu, 21 May 2020 02:48:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590054487; cv=none;
        d=google.com; s=arc-20160816;
        b=EnmiLXVCP+cX7gN+1f9keEz3rWjuRVWK1Q4iO3FhW4BnsG6ekfV/vQ0L48JFWdlq9i
         aEg/K8fJamd1IVAWPL7b2xA6y0rklr72taYhrBV6o/RxYpWh4FC2d0l2L6sXcbDtlLbz
         c6CiTfAlB6iWloLEHMKfbw0cMF/nK0DnPLOF3ZAKyFfUXpNj1HtZarbPhwTPoMZz1qQx
         jFBRD59TghvwDR3ZvqTROsHjulrfdRZnw9bn5vmiuiuq2oO5O0H7pDzmdNHHspl7gNdA
         CeHJnen5tYCqcm8kMjSXGx4SQcAB2G4VHUAYClfMGm9XsvkMnRHTDxUA5tlspwh0Qpb3
         0V1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ZQALpX3tKawurBrPQADjT0//A1CRuxacWFTx+oaYIXo=;
        b=U2lbMCVsUBP0JBOFPdHG4mQESKbYNBKHxBru5PKhllYBSalWOfl0yAnFGTnnNbVfHP
         COd8vnAyQSoufs2BP5AQKjJncVdgzkO1LxEGYYS5VbQbZq4BizRXLGT0309CdvOZf+fD
         UjhrBEjYBMOpOztOxeO2Al4Ws9YQ3ex5Xk22FY4uMsnBqtxVPkUBDY+JwR9ophaRm+ob
         bs2f8f3d8TVh8D+vSUEooOdYcLG2RVNxWHqXw1e69DQGwHhJ9PXXOBbnGKcDKcV/BKBw
         LAJUmE7y31pqgcXNaeDzjLXYe9CcUgvbFDIECS9RxOtF61jlC1NioP73sxUXphzaNMyW
         nXIQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qNY9dMzQ;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-oi1-x244.google.com (mail-oi1-x244.google.com. [2607:f8b0:4864:20::244])
        by gmr-mx.google.com with ESMTPS id t16si368886pjr.2.2020.05.21.02.48.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 May 2020 02:48:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::244 as permitted sender) client-ip=2607:f8b0:4864:20::244;
Received: by mail-oi1-x244.google.com with SMTP id w4so5739815oia.1
        for <clang-built-linux@googlegroups.com>; Thu, 21 May 2020 02:48:07 -0700 (PDT)
X-Received: by 2002:aca:ebc5:: with SMTP id j188mr6229196oih.70.1590054486120;
 Thu, 21 May 2020 02:48:06 -0700 (PDT)
MIME-Version: 1.0
References: <20200515150338.190344-1-elver@google.com> <20200515150338.190344-9-elver@google.com>
In-Reply-To: <20200515150338.190344-9-elver@google.com>
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 21 May 2020 11:47:54 +0200
Message-ID: <CANpmjNNdBrO=dJ1gL+y0w2zBFdB7G1E9g4uk7oDDEt_X9FaRVA@mail.gmail.com>
Subject: Re: [PATCH -tip 08/10] READ_ONCE, WRITE_ONCE: Remove data_race() wrapping
To: Marco Elver <elver@google.com>
Cc: "Paul E. McKenney" <paulmck@kernel.org>, Dmitry Vyukov <dvyukov@google.com>, 
	Alexander Potapenko <glider@google.com>, Andrey Konovalov <andreyknvl@google.com>, 
	kasan-dev <kasan-dev@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@kernel.org>, 
	Peter Zijlstra <peterz@infradead.org>, Will Deacon <will@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=qNY9dMzQ;       spf=pass
 (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::244 as
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

On Fri, 15 May 2020 at 17:04, Marco Elver <elver@google.com> wrote:
>
> The volatile access no longer needs to be wrapped in data_race(),
> because we require compilers that emit instrumentation distinguishing
> volatile accesses.
>
> Signed-off-by: Marco Elver <elver@google.com>
> ---
>  include/linux/compiler.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/include/linux/compiler.h b/include/linux/compiler.h
> index 17c98b215572..fce56402c082 100644
> --- a/include/linux/compiler.h
> +++ b/include/linux/compiler.h
> @@ -229,7 +229,7 @@ void ftrace_likely_update(struct ftrace_likely_data *f, int val,
>  #define __READ_ONCE_SCALAR(x)                                          \
>  ({                                                                     \
>         typeof(x) *__xp = &(x);                                         \
> -       __unqual_scalar_typeof(x) __x = data_race(__READ_ONCE(*__xp));  \
> +       __unqual_scalar_typeof(x) __x = __READ_ONCE(*__xp);             \
>         kcsan_check_atomic_read(__xp, sizeof(*__xp));                   \

Some self-review: We don't need kcsan_check_atomic anymore, and this
should be removed.

I'll send v2 to address this (together with fix to data_race()
removing nested statement expressions).

>         smp_read_barrier_depends();                                     \
>         (typeof(x))__x;                                                 \
> @@ -250,7 +250,7 @@ do {                                                                        \
>  do {                                                                   \
>         typeof(x) *__xp = &(x);                                         \
>         kcsan_check_atomic_write(__xp, sizeof(*__xp));                  \

Same.

> -       data_race(({ __WRITE_ONCE(*__xp, val); 0; }));                  \
> +       __WRITE_ONCE(*__xp, val);                                       \
>  } while (0)
>
>  #define WRITE_ONCE(x, val)                                             \
> --
> 2.26.2.761.g0e0b3e54be-goog
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANpmjNNdBrO%3DdJ1gL%2By0w2zBFdB7G1E9g4uk7oDDEt_X9FaRVA%40mail.gmail.com.
