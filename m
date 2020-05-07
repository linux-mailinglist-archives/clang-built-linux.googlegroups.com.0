Return-Path: <clang-built-linux+bncBC7OBJGL2MHBB5HY2D2QKGQEJIO2NSI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3f.google.com (mail-oo1-xc3f.google.com [IPv6:2607:f8b0:4864:20::c3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 24DA91C96DF
	for <lists+clang-built-linux@lfdr.de>; Thu,  7 May 2020 18:51:01 +0200 (CEST)
Received: by mail-oo1-xc3f.google.com with SMTP id f18sf3979129oov.18
        for <lists+clang-built-linux@lfdr.de>; Thu, 07 May 2020 09:51:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588870260; cv=pass;
        d=google.com; s=arc-20160816;
        b=G5kx290I+L+6bD75BVd4cVtwKjj40OR7+1WXTZDXCIrzDEHI0ztoQdDt8ZMb9Ru1rT
         tWLdkYfItKpwWHfw9VtGTKHUkkADlnT6yvk8lRD2VM/PnMPXKPKW/Ad/Oh4ElrvSA7SO
         z+yvqx1b5Srgte0gq0eUlLUN1tbxSfELQrVByNpYM7r8+quJq3zEhblUWVEMU3RsOAOw
         8iviKap3Az/v6LS3nvVamXESeGqHQbtBg2nG9bNTUHE6zXn2ft0qEOiXKF/cYeeuApM4
         FbBJF8m2m/DMEs19z55ofN9+Qy6KtdGhpcdQp36G/Y5iONMxMN6LKIb3JJ4RsyfLg7Xm
         CyQA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=erCRVC2E3zFIKi5xBhMgNpXTQe1xUwNkwwqpo9hyKrc=;
        b=xFdaZ77fViG19A/og0D2PhPiZDz9PzELfrx1xj9Z7QFPMK9JGQtMgv5yKtqaKUdQho
         TDE/Yax5us+nEz1nUMBtff3BL294+RCf4X52OQx6xGeXt2D2rqfaLCfWLh2s7iFomJzg
         j5DR+pzvVV34jCzxdX7dWP/c7DaDNGh4bB8yV92M7c8ogLQk62r9jUKh94J/wPSk2ToF
         ZQj4Nyi2sxOHwciYwBnn7tbxILXuXykbDR4x6px+g6AuVsz1eym8HUqsrBbDp8MEjK60
         nIcKLoRIzHcK/G54OK/sjmzJj2gEe0cLosI5fQvSZ5PJqv2PUmhA88DouD0UpVcbUsN9
         v+Xg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dRJdY9jA;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=erCRVC2E3zFIKi5xBhMgNpXTQe1xUwNkwwqpo9hyKrc=;
        b=rXGNineIJ0vpnCr8RmaNC1v+03BLlc3RuXX/xEN8Erscil4axyZA1vIw/f1noljKEq
         v0IYXtkOkWgq/OoSHDdGNRzCa8ELgE5rA7OsBCSzQ3xviWiA3H3lpo5WQPx3wATAUypH
         PYumNA9MH9oEKPKSF62C3Fo53YEq/e4WPb3M5fyvO2vmaCWdRzkNFZqK5RvgtCV+5wT4
         0nmakXItNWmZryFKi9tFmdA1soKUXW7qGIh9BxRnrcA50qr7Lu0/6nLWaKoklBZRcrPg
         DolBBGD1kM9eBnQllVWDFksye9nLA6I2K2V2Lgr8K+yM2IKblflYiYtVxA4/LLd8RzWW
         XKfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=erCRVC2E3zFIKi5xBhMgNpXTQe1xUwNkwwqpo9hyKrc=;
        b=H2DhvSbPL6H5G5BXx1xkBp5VYkZJY2y2WzkX8S1Yex2cbbFb6mmWvTofuGfES/zMAy
         YgzREe97FJg8t2V1at/HNFPqWQEOkUD1ErZoTl5YLtaC+T+6clwtTPWQbM9D3kKX18L2
         TxzW3URr/hvf64KdDUbXqd0pLCpry/5jwOZA5ehw+2/q3PnWhzZnKQvoA8JnGIIi94m3
         rN+FT/mC89IROXRfXHOFSlssVBGKeHWpvXQeIcHXQ6gVCfdIb5VeMHp/T7TwnKEBnxsW
         go0gjoc/hnHBMbolDQ0VV6rkrisUjSLTooqXV6M2fzEOYo8RIULcxubgiDCLAjmttZ4N
         AWbQ==
X-Gm-Message-State: AGi0PuZj9bYVq2BPdwqB/aWdJLxtw0MwHsDKkJe8pXcTKncXI1L+Kg9i
	mZ9J7UoJn1KnbbfBWLEZaFo=
X-Google-Smtp-Source: APiQypK8dFRVk7Gus8jYdbJKUISR6spXlNrkkFJDY68K6rJnL4ATnE3s8NU+ZHKfordERnnvlrwINw==
X-Received: by 2002:aca:4285:: with SMTP id p127mr6403499oia.20.1588870260126;
        Thu, 07 May 2020 09:51:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:72d1:: with SMTP id d17ls1602050otk.0.gmail; Thu, 07 May
 2020 09:50:59 -0700 (PDT)
X-Received: by 2002:a9d:4508:: with SMTP id w8mr12190082ote.130.1588870259788;
        Thu, 07 May 2020 09:50:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588870259; cv=none;
        d=google.com; s=arc-20160816;
        b=TV6GbwcOEBG5/E9a25KC4MQfEqPg2mRpJjNENuOEaj2kYfQEv9zmta8ZeGAlq7QByx
         epzKdTLi+da4feAFQc0m7TgIgIjBvcubtQVjsUHM6LR6uxAcvc0N1X4IOadv9Ue8+zvP
         SPcZIHy0+iAQqFCIblUDbCpelWwoWmfN2Zot0KIqHbOZdIG9wmLdA9utQEQhRA7jl1KN
         qgKgu1DX8d8QHM4lxR3sM/tOakLfio3y+PEpKA57dQ9XKCqzo4TphOFBo1k1P8qLhMrr
         1yQfmrR9D2zobodApv05ogxYiiGemsiMJDMLZU0haMn77Bt23y6bZuWIUYXDVXUNxnAK
         Mu3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=kMWnRRDjjsl8pcwIzMkXZpSdECOOZg3cVfKKxGE9IxU=;
        b=FnGBmMOuHkUvu05sOlgm/2gxAph5TQ/yv0egNksCkEDsyp6B28TFtlCi1WZUrW+HKJ
         3E9jh/yfKQqSkUftgt/GKT+fUuKkwPF+PVkag88jAU+tlSF2TkZfxnnS/byT6xumIohH
         /+U1zd7nsVZYoAfpOLBoY6Z5lzUb9c+mT9nmZIe3CxqIvR7y6qPD5u1X6aM4DwkgE3mn
         VoX2SGNahBKgIfa9zfYKdqNs6PYSocqspBkC9n4v/DxlRn3mKTtQw9uxbryu8TIqL/NS
         xdICo5qgMHZ9ad+YYsdxjJLyn8mbQj6QKWOMTkVVdMdeyA4BigST/RtTEh9i7ugw9hft
         tErg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dRJdY9jA;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-oi1-x242.google.com (mail-oi1-x242.google.com. [2607:f8b0:4864:20::242])
        by gmr-mx.google.com with ESMTPS id t17si435686ooq.1.2020.05.07.09.50.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 May 2020 09:50:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::242 as permitted sender) client-ip=2607:f8b0:4864:20::242;
Received: by mail-oi1-x242.google.com with SMTP id b18so5791463oic.6
        for <clang-built-linux@googlegroups.com>; Thu, 07 May 2020 09:50:59 -0700 (PDT)
X-Received: by 2002:aca:1c08:: with SMTP id c8mr7227783oic.172.1588870259205;
 Thu, 07 May 2020 09:50:59 -0700 (PDT)
MIME-Version: 1.0
References: <CANpmjNPCZ2r9V7t50_yy+F_-roBWJdiQWgmvvcqTFxzdzOwKhg@mail.gmail.com>
 <20200507162617.2472578-1-arnd@arndb.de>
In-Reply-To: <20200507162617.2472578-1-arnd@arndb.de>
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 7 May 2020 18:50:47 +0200
Message-ID: <CANpmjNObn6aXUe95e9UpuVwxHQ5ubMx_n3LLEgh=pe4rJd-Qyw@mail.gmail.com>
Subject: Re: [PATCH] [v2] ubsan, kcsan: don't combine sanitizer with kcov on clang
To: Arnd Bergmann <arnd@arndb.de>
Cc: Dmitry Vyukov <dvyukov@google.com>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Ingo Molnar <mingo@kernel.org>, Kees Cook <keescook@chromium.org>, 
	Andrew Morton <akpm@linux-foundation.org>, Thomas Gleixner <tglx@linutronix.de>, 
	kasan-dev <kasan-dev@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Alexander Potapenko <glider@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=dRJdY9jA;       spf=pass
 (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::242 as
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

On Thu, 7 May 2020 at 18:26, Arnd Bergmann <arnd@arndb.de> wrote:
>
> Clang does not allow -fsanitize-coverage=trace-{pc,cmp} together
> with -fsanitize=bounds or with ubsan:
>
> clang: error: argument unused during compilation: '-fsanitize-coverage=trace-pc' [-Werror,-Wunused-command-line-argument]
> clang: error: argument unused during compilation: '-fsanitize-coverage=trace-cmp' [-Werror,-Wunused-command-line-argument]
>
> To avoid the warning, check whether clang can handle this correctly
> or disallow ubsan and kcsan when kcov is enabled.
>
> Link: https://bugs.llvm.org/show_bug.cgi?id=45831
> Link: https://lore.kernel.org/lkml/20200505142341.1096942-1-arnd@arndb.de
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
> v2: this implements Marco's suggestion to check what the compiler
> actually supports, and references the bug report I now opened.
>
> Let's wait for replies on that bug report before this gets applied,
> in case the feedback there changes the conclusion.

Waiting makes sense, if this is not very urgent.

Acked-by: Marco Elver <elver@google.com>

Thank you!

> ---
>  lib/Kconfig.kcsan | 11 +++++++++++
>  lib/Kconfig.ubsan | 11 +++++++++++
>  2 files changed, 22 insertions(+)
>
> diff --git a/lib/Kconfig.kcsan b/lib/Kconfig.kcsan
> index ea28245c6c1d..a7276035ca0d 100644
> --- a/lib/Kconfig.kcsan
> +++ b/lib/Kconfig.kcsan
> @@ -3,9 +3,20 @@
>  config HAVE_ARCH_KCSAN
>         bool
>
> +config KCSAN_KCOV_BROKEN
> +       def_bool KCOV && CC_HAS_SANCOV_TRACE_PC
> +       depends on CC_IS_CLANG
> +       depends on !$(cc-option,-Werror=unused-command-line-argument -fsanitize=thread -fsanitize-coverage=trace-pc)
> +       help
> +         Some versions of clang support either KCSAN and KCOV but not the
> +         combination of the two.
> +         See https://bugs.llvm.org/show_bug.cgi?id=45831 for the status
> +         in newer releases.
> +
>  menuconfig KCSAN
>         bool "KCSAN: dynamic data race detector"
>         depends on HAVE_ARCH_KCSAN && DEBUG_KERNEL && !KASAN
> +       depends on !KCSAN_KCOV_BROKEN
>         select STACKTRACE
>         help
>           The Kernel Concurrency Sanitizer (KCSAN) is a dynamic
> diff --git a/lib/Kconfig.ubsan b/lib/Kconfig.ubsan
> index 929211039bac..a5ba2fd51823 100644
> --- a/lib/Kconfig.ubsan
> +++ b/lib/Kconfig.ubsan
> @@ -26,9 +26,20 @@ config UBSAN_TRAP
>           the system. For some system builders this is an acceptable
>           trade-off.
>
> +config UBSAN_KCOV_BROKEN
> +       def_bool KCOV && CC_HAS_SANCOV_TRACE_PC
> +       depends on CC_IS_CLANG
> +       depends on !$(cc-option,-Werror=unused-command-line-argument -fsanitize=bounds -fsanitize-coverage=trace-pc)
> +       help
> +         Some versions of clang support either UBSAN or KCOV but not the
> +         combination of the two.
> +         See https://bugs.llvm.org/show_bug.cgi?id=45831 for the status
> +         in newer releases.
> +
>  config UBSAN_BOUNDS
>         bool "Perform array index bounds checking"
>         default UBSAN
> +       depends on !UBSAN_KCOV_BROKEN
>         help
>           This option enables detection of directly indexed out of bounds
>           array accesses, where the array size is known at compile time.
> --
> 2.26.0
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANpmjNObn6aXUe95e9UpuVwxHQ5ubMx_n3LLEgh%3Dpe4rJd-Qyw%40mail.gmail.com.
