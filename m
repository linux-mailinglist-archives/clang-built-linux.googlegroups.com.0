Return-Path: <clang-built-linux+bncBDYJPJO25UGBBTGT4T3AKGQEF4ZAHVA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf38.google.com (mail-qv1-xf38.google.com [IPv6:2607:f8b0:4864:20::f38])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AA1F1EE918
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Jun 2020 19:05:17 +0200 (CEST)
Received: by mail-qv1-xf38.google.com with SMTP id o1sf4987883qvq.14
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Jun 2020 10:05:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591290316; cv=pass;
        d=google.com; s=arc-20160816;
        b=GrpFPtZe+c3TUjDcC8y4px1KNwSrU9fidqmSojCa/Ycykh2rnCadkqKOOxS0+gubP1
         3DOL/vPD8LrinDYhQC5vMndrBoCdEKRSOdqB1FiB+3M4nt/pFQxJTO9QwdeF270F+shk
         2vz8H11rm5xKsJBcezvr381fUKUFvEgHjNZhbHvkB9gsBZuw6iaZSUMbn+lrEZ1Ly1Lw
         sJotlwtfkRtrqoudZVm3oZv9QzHurNW2fFkdUQCY+XFBnl18q4LezHt+BLAXanbnUJ+N
         nOAOJ/o0UX9QViZUI4w/LIZmbfjBJKdI7hvcHgQKiQDUyDJwEZqJc38ah4xbrN4l7lcI
         UbUQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=rXKFWTgHbitIOIQkhxhT52zH3qihPaved+8g3qWFzS8=;
        b=BEyGOU8ON6P+Mh4qYgoxVXRj6EPz1NLJ4F6n5+0MmO3d7sGvPRhpwMIJydMckQ8x1y
         5vkPCToWnAjT+b16IbvR80GD4aZtv5XFyvxSnM0Ju3ugSgK+VO4U2qK4od2nYeT55kI4
         MUMvn9GzPK26ZtndPJzvAD4VPHqA0wM/3ZL2z64uma9DoGPdkJYL2uhes1a89NfZJVyI
         +4tath++9O29uNzDG0g0n761UTV+GqtKVMIvJs9ei0cqwyjklHwNw64p0G31QP3fL1ZY
         uwGodv/zZRYwwouQZRnKycLM3uxAbVVjSHR/cM4bqg33JqEARLMG7sbUHfTIr7oyZaWz
         Khlw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=F3DoQg0w;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rXKFWTgHbitIOIQkhxhT52zH3qihPaved+8g3qWFzS8=;
        b=ElDeUDOyfIRjt4qpcRNTS45byj2o0AIaz0wmjk9MbseR2g7c4rw+ciNJN2KMXUtcxe
         qE2wFOoH4kbEcknSFWqL3x721uWdYl6xUtJsWJTMbE7W5HsQaRzsLiaXVcRrOOhppJGv
         FZHJqM54yI2YUBuEq1rGr9S1yqTcmijEkeEr+LSb87eqjFIwFKEYn+j2Xhxfe4GFzacd
         IGqqbArR1tE2tl6ANbwXloWWjYjhzGqltU/i7A2LPEOxqwtqyN8vcy+P95D9NIn0oJYV
         MsNiz9GGU+RXMhB5DjHxTB1iBAZuKWzItpFpXVZcJrq8gl4VGaEqYxouhUkdqsfzL3f3
         oyyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rXKFWTgHbitIOIQkhxhT52zH3qihPaved+8g3qWFzS8=;
        b=TFLW5GKsYkTBlhUVJe3qclQ58QUb6CECRI4A4P5gK80/PnJ8utWeRo3v4HTKqB3NT/
         ZweZDUZ9+FwgFo4JFUB6wDSx7vG0C1x3WRP3lypAaU5P49sJstUlSv/Er53dIbWOb16J
         1GS3xmgKASgHCrRFjJHPEMTFTGak9PIrNP4SW0MRAroYuDLuz0nrvCYW1tazmVY+JSjC
         zqA5rpQP4jU4rNy0hjsnTU6fERe9OVdwZGxGqpEk5HymCNNt+lzLb3fu7RRpSxZn2pZJ
         8W75Kv4UqLlVMeiyxcmEPb/+ZAn+mAsb2DfrYGKzXKS7LUPYC2qt9zvTS8Cs6sIWNy9E
         dorw==
X-Gm-Message-State: AOAM533x404WHzBArMMpmvT9nryZfHSihFrzh5exk8D6EaveMXbooQFX
	UswERG2baLBoePUlZk7EjJY=
X-Google-Smtp-Source: ABdhPJzHcAxYDEqDplUaY5RVZXKO9yjyqOy6vebsBM7qkWP9+q9ItMoMx67c7c2ojYUlK+WCKIQ6UQ==
X-Received: by 2002:ac8:42cf:: with SMTP id g15mr5898461qtm.133.1591290316583;
        Thu, 04 Jun 2020 10:05:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:2756:: with SMTP id n83ls3024765qkn.1.gmail; Thu, 04 Jun
 2020 10:05:16 -0700 (PDT)
X-Received: by 2002:a37:a995:: with SMTP id s143mr5639368qke.147.1591290316250;
        Thu, 04 Jun 2020 10:05:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591290316; cv=none;
        d=google.com; s=arc-20160816;
        b=ehNvjNpQSemRCRuL7tXjdHlxeSPiPr1LCcLOgMS66ZdxpbENWHkRqxCRIGBPUc6Tpm
         +xzwqMezDCuelh7zW+GoFclkHnfe3h/kkcqywXxev/FjXKwGafAxwIMgvvOhFB6Ghv6n
         3UEp4D0NqfR4SdwlAyeidgzPfhocJ4E8GBi4K5BpGMuozkHLOQEniW7ojtUYXkhBMjCH
         9ioBdHb7sbFd3DnkxsMkex0pcy0PpLfsYXtzNCQNuP3bLhB256tpozxkALn2ec58FVoJ
         P0L5dpDKU6UgGY8fn8f/KZhrHlf8Q01FA300gRPAWKfeAmeZyxb/gmxgVQ8mWXhLSylY
         MSFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=lISUp6znJVR2B4ykX8SGIADCyXExJUwiZFK3+UkXhn4=;
        b=jbCDatrcuI2s18KjlJEsduy6e7lW/Fpl42j24QpHFIC1P/ejCRBbduNdeY0qv3zZlC
         5AvFtF5ljbcu4hayvi5Hb0w6MOUfRZmJQUnoxdb6M7225q+EehMnEUOruYrZVL3TeoDx
         OdhOfZ/I5s2YVusFS5YNPnJhqsQNlBgLPaxr8qDn1VMTYCQc7g7mYJKZEtZOW91XeJQ4
         ZMgSFa5hZ4t81TIgv6QlujeYzF8v4Thq2sTDhpWXJGjoebtPo85FYLEHiVsOm6H5r0uT
         M1xiQG6vYdTs8qkJCCq+usI3kxNKFl3rn612mUmAagE1p6bTSOu7XZlTgbRx1nIbYfqt
         cLkQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=F3DoQg0w;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id b1si436933qte.1.2020.06.04.10.05.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Jun 2020 10:05:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Received: by mail-pl1-x644.google.com with SMTP id n2so2416746pld.13
        for <clang-built-linux@googlegroups.com>; Thu, 04 Jun 2020 10:05:16 -0700 (PDT)
X-Received: by 2002:a17:90b:4c47:: with SMTP id np7mr7304224pjb.101.1591290315538;
 Thu, 04 Jun 2020 10:05:15 -0700 (PDT)
MIME-Version: 1.0
References: <20200604145635.21565-1-elver@google.com> <20200604145635.21565-2-elver@google.com>
In-Reply-To: <20200604145635.21565-2-elver@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 4 Jun 2020 10:05:04 -0700
Message-ID: <CAKwvOdnxqzMgs_CNd5xQgXBOt5GmirfCjKYk7d+cxEBEeKgLrg@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] kcov: Pass -fno-stack-protector with Clang
To: Marco Elver <elver@google.com>
Cc: Peter Zijlstra <peterz@infradead.org>, Borislav Petkov <bp@alien8.de>, 
	Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Dmitry Vyukov <dvyukov@google.com>, 
	Alexander Potapenko <glider@google.com>, Andrey Konovalov <andreyknvl@google.com>, 
	kasan-dev <kasan-dev@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=F3DoQg0w;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644
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

On Thu, Jun 4, 2020 at 7:56 AM 'Marco Elver' via Clang Built Linux
<clang-built-linux@googlegroups.com> wrote:
>
> For Clang, correctly pass -fno-stack-protector via a separate cc-option,
> as -fno-conserve-stack does not exist with Clang.
>
> Signed-off-by: Marco Elver <elver@google.com>
> ---
>  kernel/Makefile | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/kernel/Makefile b/kernel/Makefile
> index ce8716a04d0e..82153c47d2a6 100644
> --- a/kernel/Makefile
> +++ b/kernel/Makefile
> @@ -35,7 +35,7 @@ KCOV_INSTRUMENT_stacktrace.o := n
>  KCOV_INSTRUMENT_kcov.o := n
>  KASAN_SANITIZE_kcov.o := n
>  KCSAN_SANITIZE_kcov.o := n
> -CFLAGS_kcov.o := $(call cc-option, -fno-conserve-stack -fno-stack-protector)
> +CFLAGS_kcov.o := $(call cc-option, -fno-conserve-stack) $(call cc-option, -fno-stack-protector)

All supported compiler versions understand -fno-stack-protector.
Please unwrap it from cc-option.  That's one less compiler invocation
at build time.

>
>  # cond_syscall is currently not LTO compatible
>  CFLAGS_sys_ni.o = $(DISABLE_LTO)
> --
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnxqzMgs_CNd5xQgXBOt5GmirfCjKYk7d%2BcxEBEeKgLrg%40mail.gmail.com.
