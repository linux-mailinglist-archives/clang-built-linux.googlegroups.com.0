Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBR5OTP5AKGQETFUFKSQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x138.google.com (mail-il1-x138.google.com [IPv6:2607:f8b0:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 990192539E3
	for <lists+clang-built-linux@lfdr.de>; Wed, 26 Aug 2020 23:42:32 +0200 (CEST)
Received: by mail-il1-x138.google.com with SMTP id p10sf2639131ile.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 26 Aug 2020 14:42:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598478151; cv=pass;
        d=google.com; s=arc-20160816;
        b=Rg2Wltk1lN8fY5KrMWBk3qlD2gheMQZ3ACzA9bKyxPw4lI8f9xEGhQdN05eakj5Wmk
         SZgwu4730Cw5fbjWD9O8Tz9zaPyDE+SNs6HKVkcui7gJ3FOI1Ib5oMDHOLR+LIJPQznX
         WkkYjQjQ4Rg4g6gJa/7+iaOGWlIlw8kKhNTSB1hJ462JoI8iwe0NJ053xTRwhlStolLx
         hEChW2TJ6SISkIJ7jbjNCB9cZTLcxHtFO9TlzxKl8rDhZozOg28e8x86RvXCzumRyfkK
         Qa+ToJDqFw7N44C6oOvQHaJsI4uXN/PrgPi9ttZnPVk9ZQY2GBzbiCDfaugNkz8NxeFp
         LENQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=m3Z+pyyaZBFVIhl8pUyC3HfxOriFkOEYVZICUcrIH0c=;
        b=NCTTSgE0KZaQbvtYfKbE82hi4srSQNTkXG5weNmcrO2vrrnwcMcZZ/Nk/N83Fd2STr
         m+x6XpDJeN8lzAiwKbnJPtbCL2XWroS/KyFqjZymjhl4Kw7pf22ve+DaeAKSxPgP3w5B
         dQgrZb6IS3QCGOwodkKGZYmAdRvtDzkR0dkJnwhMKPKIAFkYhZ9CxEpNdmAkMB+SKE7U
         7J4UA9Os84XPGmXJYUe7RtKkXM1S1jwav/PS4RWuDzQvEx87vOFG3zV2+A16JDDb7F+H
         qLXRkQxCt27axPmee4jY6phy46b3I9AFM1Rfff4+erU3qGfasyXr5qYie6Ar7YtG3bhc
         EBbw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pFHzn3Ft;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=m3Z+pyyaZBFVIhl8pUyC3HfxOriFkOEYVZICUcrIH0c=;
        b=NQj6rpoZaYPAoBwewmC+T+cVZx9JYHRMnHb5CxZNgMATlKLlhVYTQlCIkAIs2wEtBc
         PsaK0wFY+00SrxB7QwGsqFFS6MfTVP8hubT5kHZpZEn90b5nmd+/0JgUpjwjhcvg5eZJ
         QPV+JHeK8Ef8B7HbRxIRP1ubT51hVu6JNeBwK0M4v7dwDocVlO9ZXRofL7wnMqXXx2XY
         x3bwY3WC6hFMztECnA/ZUocuwkSI2yMLGrEnecsuLPmhSXGmnHWHnccv+Hbo5mId08xV
         ES0BJms6Uk/qyH0EzfWpFxsuWmIVRlV4sG+T72oH3qEyckU3D6A8Y2VJcOAJGXTVWH0n
         NNAQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=m3Z+pyyaZBFVIhl8pUyC3HfxOriFkOEYVZICUcrIH0c=;
        b=VNLL7CAkfAk1VMqCwG0KL3ZEPKZ/FzqaxBepHZnPtcO3XYMAOsPEYcsoMGrlkFAXox
         kwYENj9kiV+m0jRDlnzrqKI5lMUx/Dt5BXj+AGLJ8EfOMRa7Po56FwSv0AlJrQR+uiIC
         pizxTiO3+dzLDgPG5g3ziBYIzFdR9dtiGhYBjofFpSJ1b0k1ABNAdQru6d7Qnbq0r2vw
         rVlVqLESbCOYcFrvupbYOLjiIx5qokvxPsW5W+HuSVK6TgFNY1j+lLlwPRhrkQkehcpq
         pSXA9BBF3cTxCcOKa3n6yyax+wO2YCNRgy0BXNBc2auvyGoVO0mtwQ0zd1Z96APrOdQI
         Igww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=m3Z+pyyaZBFVIhl8pUyC3HfxOriFkOEYVZICUcrIH0c=;
        b=MmqvTy4EnELqa/tTFzV5QyY1Dsj4BgIOkFhJTVsy0i4cphdSnYp80vOFrGp5oiF1mE
         +3XGCUCTCcK67B+2kbOR6jCtVGRy5Z5AYcfDSm1Qhkhl9kzGZPWYobXac5WKItYvrk+m
         BcaeyneLAq6u8AmUxQIaOajkpRokFHsvD0uORwfO4XA6AOAKYJ2MUsMNVsJ5RikxmaSh
         PRw/7y6wAu4t0909gIlZp5fcWyGhDHOxD2RDryBVFbvd2Nbcv5frT1+B77vWdePtdMBg
         fxlh+qOdyd7Ob4alHzCVuCJYwNXSJBMijYfcoTgZUcbsXAQJzeQI6oexnXUq7xb+vp+W
         fysw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533+zp9cu4qfPyvPnuCeKn70N0490J2icWBPSGxwe5a5e1voT/kv
	xH6xKvBuGAt8NJeQ+gZ+WxI=
X-Google-Smtp-Source: ABdhPJyjory2rtQljV1fv5IW8UqTN4IqyD/YeUYxl8r/q0qN1c6XcN2O598HPFJjvmkftyhekXWTAw==
X-Received: by 2002:a92:858f:: with SMTP id f137mr14987034ilh.169.1598478151599;
        Wed, 26 Aug 2020 14:42:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:d90f:: with SMTP id r15ls22527ioc.8.gmail; Wed, 26 Aug
 2020 14:42:31 -0700 (PDT)
X-Received: by 2002:a5d:9b0a:: with SMTP id y10mr14491569ion.86.1598478151249;
        Wed, 26 Aug 2020 14:42:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598478151; cv=none;
        d=google.com; s=arc-20160816;
        b=NgpwUy6nDHsqe20V4QyKBSvYRUcUYd+AvEKYo45U1vaFt1J5ljb8RVcbnPxwPbsalX
         q8rie5b12fZ3g2S6WnbMUbOLc8XyV2Vs57jCMnnzY4PSBG7SwP+dj9Mum1w5VMNwAw4b
         liYQjSuwO0R6MSqImmKVjw0Pxpv0uqzc2IVfhM66hiJWWctXwYfA4UOf3J6AdTgj9avY
         Yy/XIlSa/TBJngbxCbUCv1iM9OsrVceDRaGv6GQsAReSHtHogX71EWJ8k38560LnMnS/
         Z+fPH68kStrom6uziFPrbQD6+NZH5OcyG9yg95cFnHJjrvp2VsEKiDkUS2ou0kCpY1Wy
         Toug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=I8OxgVPu3Ggp6k0pbUz5wgXSCJd17wLp4qYHq+jsd/8=;
        b=TQJ3cUL36V2gRdgTV88UJGr8d1amjxDOv9n0eaohXaLWWv7VoZx2xBqUTT74olSrRp
         ahfFRnKJQDiHdEAkqMWbiHSDaHO0p52oyNdTJfM9U/asSqIw/yk9nnGmsUWLdUm/+E7a
         36TEygv6HQS0wVQKsdor4uP1/0HSoTrgjangAuJyExPtxMXdtjDO5F1+4EWq/kin5Edm
         OkMUTivUVqCXQ2uLcCh4RLGKTp+6wIx+NTCkQS9y/1SVIUNykNz2wingxSq4mIx1phag
         QzNcXkJXFOGS7pA/A8FBGuNUiR+WKbFi6XpV8M6EtdiY34Y1U8Zmjvnh5WA2/u1AExsr
         egcg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pFHzn3Ft;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x841.google.com (mail-qt1-x841.google.com. [2607:f8b0:4864:20::841])
        by gmr-mx.google.com with ESMTPS id h11si12691ilh.1.2020.08.26.14.42.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Aug 2020 14:42:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) client-ip=2607:f8b0:4864:20::841;
Received: by mail-qt1-x841.google.com with SMTP id n18so2988989qtw.0
        for <clang-built-linux@googlegroups.com>; Wed, 26 Aug 2020 14:42:31 -0700 (PDT)
X-Received: by 2002:ac8:5504:: with SMTP id j4mr16547550qtq.357.1598478150655;
        Wed, 26 Aug 2020 14:42:30 -0700 (PDT)
Received: from ubuntu-n2-xlarge-x86 ([2604:1380:45d1:2600::1])
        by smtp.gmail.com with ESMTPSA id b23sm203069qtp.41.2020.08.26.14.42.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Aug 2020 14:42:30 -0700 (PDT)
Date: Wed, 26 Aug 2020 14:42:28 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Andrew Morton <akpm@linux-foundation.org>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Kees Cook <keescook@chromium.org>, Marco Elver <elver@google.com>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	"Peter Zijlstra (Intel)" <peterz@infradead.org>,
	Randy Dunlap <rdunlap@infradead.org>,
	Ingo Molnar <mingo@kernel.org>,
	Sami Tolvanen <samitolvanen@google.com>,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] compiler-clang: add build check for clang 10.0.1
Message-ID: <20200826214228.GB1005132@ubuntu-n2-xlarge-x86>
References: <20200826201420.3414123-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200826201420.3414123-1-ndesaulniers@google.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=pFHzn3Ft;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Wed, Aug 26, 2020 at 01:14:19PM -0700, Nick Desaulniers wrote:
> During Plumbers 2020, we voted to just support the latest release of
> Clang for now.  Add a compile time check for this.
> 
> Older clang's may work, but we will likely drop workarounds for older
> versions.

I think this part of the commit message is a little wishy-washy. If we
are breaking the build for clang < 10.0.1, we are not saying "may work",
we are saying "won't work". Because of this, we should take the
opportunity to clean up behind us and revert/remove parts of:

87e0d4f0f37f ("kbuild: disable clang's default use of -fmerge-all-constants")
b0fe66cf0950 ("ARM: 8905/1: Emit __gnu_mcount_nc when using Clang 10.0.0 or newer")
b9249cba25a5 ("arm64: bti: Require clang >= 10.0.1 for in-kernel BTI support")
3acf4be23528 ("arm64: vdso: Fix compilation with clang older than 8")

This could be a series or a part of this commit, I do not have a
strong preference. If we are not going to clean up behind us, this
should be a warning and not an error.

> Link: https://github.com/ClangBuiltLinux/linux/issues/9
> Link: https://github.com/ClangBuiltLinux/linux/issues/941
> Suggested-by: Sedat Dilek <sedat.dilek@gmail.com>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>

Otherwise, I agree with Kees's comments. With them addressed, feel free
to add:

Acked-by: Nathan Chancellor <natechancellor@gmail.com>

> ---
>  include/linux/compiler-clang.h | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/include/linux/compiler-clang.h b/include/linux/compiler-clang.h
> index cee0c728d39a..7338d3ffd240 100644
> --- a/include/linux/compiler-clang.h
> +++ b/include/linux/compiler-clang.h
> @@ -3,6 +3,14 @@
>  #error "Please don't include <linux/compiler-clang.h> directly, include <linux/compiler.h> instead."
>  #endif
>  
> +#define CLANG_VERSION (__clang_major__ * 10000	\
> +		     + __clang_minor__ * 100	\
> +		     + __clang_patchlevel__)
> +
> +#if CLANG_VERSION < 100001
> +# error Sorry, your compiler is too old - please upgrade it.
> +#endif
> +
>  /* Compiler specific definitions for Clang compiler */
>  
>  /* same as gcc, this was present in clang-2.6 so we can assume it works
> -- 
> 2.28.0.297.g1956fa8f8d-goog
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200826214228.GB1005132%40ubuntu-n2-xlarge-x86.
