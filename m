Return-Path: <clang-built-linux+bncBDYJPJO25UGBBGEAY7VAKGQECN7XAMA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa40.google.com (mail-vk1-xa40.google.com [IPv6:2607:f8b0:4864:20::a40])
	by mail.lfdr.de (Postfix) with ESMTPS id BA17D8A751
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 21:38:01 +0200 (CEST)
Received: by mail-vk1-xa40.google.com with SMTP id o202sf44782064vko.16
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 12:38:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565638680; cv=pass;
        d=google.com; s=arc-20160816;
        b=ircYPnInz7E3vDkQp9BtTcKYhBF6yyR4y2dIMD5dlAs7W6AElDxFDGjnoin30AQhK+
         NGYFHlW3+YkZst07T8lOnk5y4vhBM5UFiyWoNGbbwZAbhvwK1SLBt8nDfnMJqXrEWuIO
         SeR5KF+cASpP8nR/bL9/dDG0bSe1VL7Yd2YlO3Ug6WZOaZtC9zoJfeYG50VV1kEr5jS5
         FO6Ws4mWmIVWDP3tIlk9BRHfBw4snQfvgp47UaKKhM+wlHbUwQfwMiewQtdngYW5EsCV
         QRa6wo4s9e8LlrvNmUif1eWCJjrmVZGCZEGzVdfTstMeoXU/MrSuccs2HOxfKyaXF8YV
         b2sQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=bYsjYY39H9p+87uXE+Pj732JqCd7c8WSLX8fNWWUwcQ=;
        b=iA728BQNshVYT8EwZnol3P8RsC4OlA+BeuY0enCcGb9G+5nJFBUU6/+XedBUUV4u7q
         aRQbFfbzCjFrZxciKFMDNu2UKJ6tTxrQqhXDTfqDavXXHYt/mkenUN6T4liuggatyex7
         sJXlYPQGUAZ+TpetQv83NAUNIiXcMkrtovsQV3/9MOQVYIkOrj9mirN8BScjEtobgQFV
         k5Swaowuwm9GwrBUEAzpDdNYbVbEMIYTJKODkISVWm9aqnKPRqTRddamA8MJe5+pq/Tc
         nB2DWM8qPxBgfkIC64jKnKvIsw+0hPOn3TufW50Cg24qhVtDbMVeYgJKj98JLddQ8yjP
         3AKw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=T5u3brS8;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bYsjYY39H9p+87uXE+Pj732JqCd7c8WSLX8fNWWUwcQ=;
        b=k66fxYiCvOS/cLZFB7bbJWw4aI43rXS0uEC6kcb4+jcQufb/8r//oxyZloVJoLyMu1
         uIUvD5cmpSVHtsmTlz+ZFy9u8TqacNPtuNSwwQ64VJm/UQULChtMWzLpU08HY0NHKQM/
         PV3izRareO5A0f72II3eIm6+8AdS7y0Ci+ZGdpMZRFkw9m61iVXUwqXNzFZ1hfD86XQF
         nHa45LxTyWLOujVfqV8TLDaSCNInz6jlNgtPFa5rM/ABX3TP2cS9awdwP40wUe1k5KMm
         3ffb4I/K6ovnr/PBIcjKUafRqmUISiNaYthILqArXP6WJxFRqPGqgew+8jT3Koi1oef4
         81NQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bYsjYY39H9p+87uXE+Pj732JqCd7c8WSLX8fNWWUwcQ=;
        b=JZsP3UshZWi5ZnepCpXgfK7kqE7d7c+yIyCNBVdrOl/ApALZOWt0x/742ytI4TuU3+
         gvfc5hQlT/2l1MRXTJYWuXl+6H6Uc5y/aHyZvAVh+OSEc7dx/DDWQEyYSBRtr7tstGG9
         Cjc8zD6pAsFwMdJHSvxMy16yeORIzd7qM30Q9xJi9mwyygFkDaytwX048pLlhgcF2PHb
         XSLgG3yNVf9BmEWsnLS8XducLzwXQKy+q76XeUBgNbO6JT5M+UVTtZPAANkK44U3Jkgo
         6WQAMFNanFVU6QypZMBIbUR21FfV4lsoyGpqpYzBH6mJXSGp4yHe6pwJMjT8rtJwWIcs
         iAhg==
X-Gm-Message-State: APjAAAWCGlobNNz0W2zPksBNWSYLfTtJ9V0fCPJ+JKYoeye8pn8XA/xd
	aO5bjb5BUpRQlBFkEtb2nQs=
X-Google-Smtp-Source: APXvYqyFOwTmgl8bNkmDnfhQegcLQRX2zjq0tykmeZ1M56R+KUrucsKExjRG8uwurpv7cJiTwMWgpw==
X-Received: by 2002:a67:444:: with SMTP id 65mr23055259vse.166.1565638680836;
        Mon, 12 Aug 2019 12:38:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:a1c5:: with SMTP id k188ls4298233vke.15.gmail; Mon, 12
 Aug 2019 12:38:00 -0700 (PDT)
X-Received: by 2002:a1f:cf42:: with SMTP id f63mr9082220vkg.91.1565638680542;
        Mon, 12 Aug 2019 12:38:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565638680; cv=none;
        d=google.com; s=arc-20160816;
        b=I6v8+I1vTYVnUh96L0yVnr9O+ybm+DPjSzIQLL2X4R66ehgVzDaiW4SRWs4PNCJix5
         k4jAPn1gZH3S1BlJp0TorF8Op0Uvv7S0uolM3Fz1KiKMhy1i028CRySVz/pwLTe2e/TX
         gi7v9mHEe3LXk3y19CpQk4+BAyTuRke/+DMjBPAdggjl9RagRBYKZK3WHHPKzTp8s5jO
         zoyl4T+IGN88qcn7AXSjTR1xVLYQ5K8NT/95xHbQe7blgh66fwfc+aC6J5IWLatCGtj7
         YSOjjQ9uXHGdAyUgbqXFt98eYn+c6pMsOLXWpKGu5UNSAbkMW/YaaxZU9tRJ7JgnUUdy
         Mpnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=WR1xNMurBLLA6YfMYoKDYGfmPGWBmM4BYdMt2Nd0Jy4=;
        b=rguBFT6dgTI19zX9PyUfd6KubUR1/t+f3us5o2qgEzw4x+3chK8ouVfu8JDo1bc1Wv
         e19F7rm51CRLxGoBlHOwgXUbnUq8pie/BVxJMeF01zEdKhxzTuhMOd9w5Ygp30Tbhb0E
         UDYZMmqc9kq0a+D+eVlLey8wPsjGgL8NNyaf4x3GKGa0LQEG8XXj11HmCxmZwoHP60Vm
         oMUCz34NZUB0ril9Zlww47DHHbWMkT+YhPSy3+t8waKB5rQg/GcxnaSXn9Frs+FbUqFb
         nWpuALiA0SPbYDxM7OmL/MKGjYwjVYB3npQz2a2f1OO9bfhf7SyBm6x1dCxtOIyWIwLO
         Mz8Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=T5u3brS8;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id i9si7397764vsj.0.2019.08.12.12.38.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Aug 2019 12:38:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id x15so39653159pgg.8
        for <clang-built-linux@googlegroups.com>; Mon, 12 Aug 2019 12:38:00 -0700 (PDT)
X-Received: by 2002:aa7:8085:: with SMTP id v5mr19988296pff.165.1565638679763;
 Mon, 12 Aug 2019 12:37:59 -0700 (PDT)
MIME-Version: 1.0
References: <20190812193256.55103-1-natechancellor@gmail.com>
In-Reply-To: <20190812193256.55103-1-natechancellor@gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 12 Aug 2019 12:37:48 -0700
Message-ID: <CAKwvOdkScTZpiCnb_HBcnMLssBZ-WT7g+ir5R+uMWWZE_QA2Vw@mail.gmail.com>
Subject: Re: [PATCH v2] lib/mpi: Eliminate unused umul_ppmm definitions for MIPS
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Ralf Baechle <ralf@linux-mips.org>, James Hogan <jhogan@kernel.org>, 
	Herbert Xu <herbert@gondor.apana.org.au>, linux-mips@vger.kernel.org, 
	"open list:HARDWARE RANDOM NUMBER GENERATOR CORE" <linux-crypto@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=T5u3brS8;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542
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

On Mon, Aug 12, 2019 at 12:36 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> Clang errors out when building this macro:
>
> lib/mpi/generic_mpih-mul1.c:37:24: error: invalid use of a cast in a
> inline asm context requiring an l-value: remove the cast or build with
> -fheinous-gnu-extensions
>                 umul_ppmm(prod_high, prod_low, s1_ptr[j], s2_limb);
>                 ~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> lib/mpi/longlong.h:652:20: note: expanded from macro 'umul_ppmm'
>         : "=l" ((USItype)(w0)), \
>                 ~~~~~~~~~~^~~
> lib/mpi/generic_mpih-mul1.c:37:3: error: invalid output constraint '=h'
> in asm
>                 umul_ppmm(prod_high, prod_low, s1_ptr[j], s2_limb);
>                 ^
> lib/mpi/longlong.h:653:7: note: expanded from macro 'umul_ppmm'
>              "=h" ((USItype)(w1)) \
>              ^
> 2 errors generated.
>
> The C version that is used for GCC 4.4 and up works well with clang;
> however, it is not currently being used because Clang masks itself
> as GCC 4.2.1 for compatibility reasons. As Nick points out, we require
> GCC 4.6 and newer in the kernel so we can eliminate all of the
> versioning checks and just use the C version of umul_ppmm for all
> supported compilers.
>
> Link: https://github.com/ClangBuiltLinux/linux/issues/605
> Suggested-by: Nick Desaulniers <ndesaulniers@google.com>
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

LGTM thanks Nathan.
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>
> This supersedes the following two patches:
>
> https://lore.kernel.org/lkml/20190812033120.43013-4-natechancellor@gmail.com/
>
> https://lore.kernel.org/lkml/20190812033120.43013-5-natechancellor@gmail.com/
>
> I labelled this as a v2 so those don't get applied.
>
>  lib/mpi/longlong.h | 36 +-----------------------------------
>  1 file changed, 1 insertion(+), 35 deletions(-)
>
> diff --git a/lib/mpi/longlong.h b/lib/mpi/longlong.h
> index 3bb6260d8f42..2dceaca27489 100644
> --- a/lib/mpi/longlong.h
> +++ b/lib/mpi/longlong.h
> @@ -639,30 +639,12 @@ do { \
>         **************  MIPS  *****************
>         ***************************************/
>  #if defined(__mips__) && W_TYPE_SIZE == 32
> -#if (__GNUC__ >= 5) || (__GNUC__ >= 4 && __GNUC_MINOR__ >= 4)
>  #define umul_ppmm(w1, w0, u, v)                        \
>  do {                                           \
>         UDItype __ll = (UDItype)(u) * (v);      \
>         w1 = __ll >> 32;                        \
>         w0 = __ll;                              \
>  } while (0)
> -#elif __GNUC__ > 2 || __GNUC_MINOR__ >= 7
> -#define umul_ppmm(w1, w0, u, v) \
> -       __asm__ ("multu %2,%3" \
> -       : "=l" ((USItype)(w0)), \
> -            "=h" ((USItype)(w1)) \
> -       : "d" ((USItype)(u)), \
> -            "d" ((USItype)(v)))
> -#else
> -#define umul_ppmm(w1, w0, u, v) \
> -       __asm__ ("multu %2,%3\n" \
> -          "mflo %0\n" \
> -          "mfhi %1" \
> -       : "=d" ((USItype)(w0)), \
> -            "=d" ((USItype)(w1)) \
> -       : "d" ((USItype)(u)), \
> -            "d" ((USItype)(v)))
> -#endif
>  #define UMUL_TIME 10
>  #define UDIV_TIME 100
>  #endif /* __mips__ */
> @@ -687,7 +669,7 @@ do {                                                                        \
>                  : "d" ((UDItype)(u)),                                  \
>                    "d" ((UDItype)(v)));                                 \
>  } while (0)
> -#elif (__GNUC__ >= 5) || (__GNUC__ >= 4 && __GNUC_MINOR__ >= 4)
> +#else
>  #define umul_ppmm(w1, w0, u, v) \
>  do {                                                                   \
>         typedef unsigned int __ll_UTItype __attribute__((mode(TI)));    \
> @@ -695,22 +677,6 @@ do {                                                                       \
>         w1 = __ll >> 64;                                                \
>         w0 = __ll;                                                      \
>  } while (0)
> -#elif __GNUC__ > 2 || __GNUC_MINOR__ >= 7
> -#define umul_ppmm(w1, w0, u, v) \
> -       __asm__ ("dmultu %2,%3" \
> -       : "=l" ((UDItype)(w0)), \
> -            "=h" ((UDItype)(w1)) \
> -       : "d" ((UDItype)(u)), \
> -            "d" ((UDItype)(v)))
> -#else
> -#define umul_ppmm(w1, w0, u, v) \
> -       __asm__ ("dmultu %2,%3\n" \
> -          "mflo %0\n" \
> -          "mfhi %1" \
> -       : "=d" ((UDItype)(w0)), \
> -            "=d" ((UDItype)(w1)) \
> -       : "d" ((UDItype)(u)), \
> -            "d" ((UDItype)(v)))
>  #endif
>  #define UMUL_TIME 20
>  #define UDIV_TIME 140
> --
> 2.23.0.rc2
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkScTZpiCnb_HBcnMLssBZ-WT7g%2Bir5R%2BuMWWZE_QA2Vw%40mail.gmail.com.
