Return-Path: <clang-built-linux+bncBDYJPJO25UGBB7OWW36QKGQETIL5DJA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb39.google.com (mail-yb1-xb39.google.com [IPv6:2607:f8b0:4864:20::b39])
	by mail.lfdr.de (Postfix) with ESMTPS id 90B122B1083
	for <lists+clang-built-linux@lfdr.de>; Thu, 12 Nov 2020 22:39:10 +0100 (CET)
Received: by mail-yb1-xb39.google.com with SMTP id a126sf7890979ybb.11
        for <lists+clang-built-linux@lfdr.de>; Thu, 12 Nov 2020 13:39:10 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605217149; cv=pass;
        d=google.com; s=arc-20160816;
        b=JA3KXZvdhHw/N+DJudolIIhgPQByl3KQ13FW0Xe3WNwxXrx3T0Ll7xCTBwtiEb5n7m
         K+WnNSw905jQSNrfodf1fvtJVwVvH/kbt7O4KvRNRgL/ayo2K2B4Mhb8dxARQfMa4nUg
         T1Q5SX3GaS2UqtmaqPZ2WyGw7epohUMwE3/vJOsu+edmV9Kh1ccTnmzeXGaLRpoZYpVy
         GVIhF4OCSUqwOUMl3h9S9uhhZtUt7QMrCRskEB8lq94xFK+5zwxRg5eumGBT1sABvRhE
         wLOObyFTymwywGpjanrtT6UKKZ/BnTutZ90LZ8uPAPUJ23Qm7oNR6m69zqm6j9vbRkKj
         RL5w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=1GyjqnJea3JW2FPZcSJkIWJLfQF8GRsdyUFNKXSJ4u0=;
        b=gDDBETE7qdWxZGfkLHPyQn4Sic4d4+TjkgPg6bMZFxd91A3bqDYcgv17K4Wr5/XVRP
         h6LUIuyUCN8SWSojUhsAJ2gm3rgEfOIfDHi2QfzJd2yGMKAUe6DNScY5lXiux5LZhtHk
         PSiEwf4ARySiDzLXH3zakGFAEqTlR/WdiaNl15ji/znzi0h0LKe5JOV7Y76iANx6ou2c
         xbhKWopRNhYFm4NQhmspTVhmIRFeg3oCO+YFb9dv10NlKMjIA6FuJBPtQSRm6NLKSYLy
         KmZ5rkvqNQ+q94dA0H0X2XRCaFWysmkSAArkuRnwWU5JopnxUPDl8GoEYrh5Vr0D0VRf
         HzPw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=fAlqOSFM;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1GyjqnJea3JW2FPZcSJkIWJLfQF8GRsdyUFNKXSJ4u0=;
        b=qpLNhby5bG3OPP6BbvxJqxX6ihJ8yhQ7StRLD6HQ4p6DXskgAPDU/ZG2ANm9bmKlYz
         +dXIiq1uJ0VgxkDCR/hMeKzqcO7EdFo99DKlI5hX08W674IcMNtYLmOe8IvM9QGVVMcN
         odItS2lzsaiGFS/MA7Dbg3fIWc2hX/pZzHBIYI+qXKQp1CbRndBsjMpUzSbWiptZJtLE
         8oFnAYhpmNpGzdA76HjRGeNIz91mwjbYQYad1YB4bbamBrMu64LyPSpw2wLzN8x3fnPj
         ypNe6leMQBP+QiDzmkSF0kSascaDQh2C19GqMlSz2tYeslUTO2GqNsbwiPtN9baGYosJ
         uT1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1GyjqnJea3JW2FPZcSJkIWJLfQF8GRsdyUFNKXSJ4u0=;
        b=aQA+T9rSInU8grVsWUi8V5faVQcVm255ZHFO5alRk/EUSWlE1kOwijSLVOqFj8zk+t
         D2DHkliBHwVad4UH9WV77fSmKVRRnxWQVt0hry+hRwVCOa7DRzqkyyH1eToWTV2B2peU
         Lg87fwAizEfzjJvgbcjozsOhG/7j7C9RYwYedXmoBCetNlUf2OqQkOhc/vHpaad7bLeg
         hJAlBMW5wpFZlvqFn3npaMx/4exwEj3r7h/SvWcngdOfltTkFWoO9SGyW/6RO/5tYOX/
         cGaxz7q7auGuIks763RNmejPSTgFqdFS/jp2GMR0MqXfVJgv+6xBO2Mir9eSATtkxC8g
         HqXA==
X-Gm-Message-State: AOAM530uD4itnVI9ti0Re+vbVC5Eki3v9wJgjb+SEum7zMHiMNbEfUdM
	U2pF3RzHdjeM6tdFrPIva4Q=
X-Google-Smtp-Source: ABdhPJzTl/3naA06Lw1sGI3He0fmcpRWv1FTJyOfhed261qoDOlSItN96DcbNecozbI4fRDV7vRtCw==
X-Received: by 2002:a25:74c7:: with SMTP id p190mr1782543ybc.284.1605217149636;
        Thu, 12 Nov 2020 13:39:09 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5b:7cd:: with SMTP id t13ls2315995ybq.8.gmail; Thu, 12 Nov
 2020 13:39:09 -0800 (PST)
X-Received: by 2002:a25:e6d7:: with SMTP id d206mr2362647ybh.67.1605217149136;
        Thu, 12 Nov 2020 13:39:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605217149; cv=none;
        d=google.com; s=arc-20160816;
        b=ZI7BkwtiMywBErkr0ynzZcF34M2mpJvE5g+xikm+outm5ZZ81MMUcBQsDVneXt7HPT
         wsyHDHSd3x56mgHf04VkU7wWZuom3GB1p67CUK4La9M0noaFa1nzvBohOXo0W1pl/vi5
         HEm164VLtnPrseGRR3G6radlxiYprSoJHzc07KsW1NfjewK6pL6VX2xaplbXMROJP7x1
         irWk7eX5GnoD96k5G8LlWjx0FSqb2ZlUMTI4PIOk6y2aKr4C8Rs74rqZbhDuMy54jdkC
         9wuZa4ZboumQtGduaCRsQK2aHTrGZjPG/7FbKZqYl1ggFoZSFVxhnGyFxOQPX/ELfXij
         w4og==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ZURdxG09u8DA6MxogITPvJlVlTkJWovFIyDXhgQLLgE=;
        b=Vypm405jA0DBTzIcDQFvb1RA+lpRKUjGQ5TiVtfM7Qc/I5W1kOQlVpFBtNzTWrkFbB
         w5r9L1u/vcCaguyTIFOAVuRFGW1c1yCnz5Wf427ba46ewZfiEa1PwnniwLD8ipqiZNLl
         FnwH4EkK5+PNQ3o9k6zMF8T5WQhgXf2BVcyko1eIqFRA+nGKXsSQIm7uzoTv0+nvqApb
         3XuG/GCp+GRgucxRHpMygIZP9dyGjbmAPNOAPYrZQ5C1V+zE0HsRIHmnNxUf45B+krOp
         +pgBqiYDjxhiRSPifZQcTW+l15yra7ebAKFq3XqHXgOJzWXrPF6/ixgUAKmcTjbYmNhY
         BazQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=fAlqOSFM;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id n185si405839yba.3.2020.11.12.13.39.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Nov 2020 13:39:09 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id i7so5332091pgh.6
        for <clang-built-linux@googlegroups.com>; Thu, 12 Nov 2020 13:39:09 -0800 (PST)
X-Received: by 2002:a17:90b:110b:: with SMTP id gi11mr1197979pjb.25.1605217148224;
 Thu, 12 Nov 2020 13:39:08 -0800 (PST)
MIME-Version: 1.0
References: <20201112212457.2042105-1-adrian.ratiu@collabora.com> <20201112212457.2042105-2-adrian.ratiu@collabora.com>
In-Reply-To: <20201112212457.2042105-2-adrian.ratiu@collabora.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 12 Nov 2020 13:38:56 -0800
Message-ID: <CAKwvOdm=3zaiuK4CgujPgqZWnENNnOqFnR_orMuHfXS8DbHKoQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] arm: lib: xor-neon: remove unnecessary GCC < 4.6 warning
To: Adrian Ratiu <adrian.ratiu@collabora.com>
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, Arnd Bergmann <arnd@arndb.de>, 
	Russell King <linux@armlinux.org.uk>, Ard Biesheuvel <ardb@kernel.org>, 
	Arvind Sankar <nivedita@alum.mit.edu>, Collabora Kernel ML <kernel@collabora.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=fAlqOSFM;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543
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

On Thu, Nov 12, 2020 at 1:23 PM Adrian Ratiu <adrian.ratiu@collabora.com> wrote:
>
> From: Nathan Chancellor <natechancellor@gmail.com>
>
> Drop warning because kernel now requires GCC >= v4.9 after
> commit 6ec4476ac825 ("Raise gcc version requirement to 4.9").
>
> Reported-by: Nick Desaulniers <ndesaulniers@google.com>
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> Signed-off-by: Adrian Ratiu <adrian.ratiu@collabora.com>

Link: https://github.com/ClangBuiltLinux/linux/issues/496
Link: https://github.com/ClangBuiltLinux/linux/issues/503
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>  arch/arm/lib/xor-neon.c | 9 +--------
>  1 file changed, 1 insertion(+), 8 deletions(-)
>
> diff --git a/arch/arm/lib/xor-neon.c b/arch/arm/lib/xor-neon.c
> index b99dd8e1c93f..e1e76186ec23 100644
> --- a/arch/arm/lib/xor-neon.c
> +++ b/arch/arm/lib/xor-neon.c
> @@ -19,15 +19,8 @@ MODULE_LICENSE("GPL");
>   * -ftree-vectorize) to attempt to exploit implicit parallelism and emit
>   * NEON instructions.
>   */
> -#if __GNUC__ > 4 || (__GNUC__ == 4 && __GNUC_MINOR__ >= 6)
> +#ifdef CONFIG_CC_IS_GCC
>  #pragma GCC optimize "tree-vectorize"
> -#else
> -/*
> - * While older versions of GCC do not generate incorrect code, they fail to
> - * recognize the parallel nature of these functions, and emit plain ARM code,
> - * which is known to be slower than the optimized ARM code in asm-arm/xor.h.
> - */
> -#warning This code requires at least version 4.6 of GCC
>  #endif
>
>  #pragma GCC diagnostic ignored "-Wunused-variable"
> --
> 2.29.2
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdm%3D3zaiuK4CgujPgqZWnENNnOqFnR_orMuHfXS8DbHKoQ%40mail.gmail.com.
