Return-Path: <clang-built-linux+bncBDYJPJO25UGBBBV3TKEQMGQE4QRYGFI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x538.google.com (mail-ed1-x538.google.com [IPv6:2a00:1450:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 993683F7CD3
	for <lists+clang-built-linux@lfdr.de>; Wed, 25 Aug 2021 21:44:06 +0200 (CEST)
Received: by mail-ed1-x538.google.com with SMTP id h4-20020aa7c604000000b003c423efb7efsf260151edq.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Aug 2021 12:44:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629920646; cv=pass;
        d=google.com; s=arc-20160816;
        b=0frkbAPGdM0X8LW/DvWg+hyvuOwx/KICgM9nnBVZAoW8uDXthsPeeXdOlat4iO0Qfb
         1VysBTKYy4vW9vEIsXOrVAEPqSPEuakgt/8kruMS680PQ2CzsGWMEV+4y55Fyq/vcTqI
         311S/j+jUrW/Q0PVYKBcnqbIXfWYArbgNq180+aX9QPjNzg5OuoaKndH3UTiz1+y1qxX
         8y5slA4e6tVFeqUyNZ2HBnLDWJCu0D6ZwM/UmPYaHml4NHZuX191wLbNaEHu8NoSpIGb
         oaiKggBB1KZgwWRpaYM1jWyrj4G/vENE4sMcQY1BfHFFKzBod1T2f1h5KjUDj0nunPGO
         z7hw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=19/H+fcLE+KHeof5tYwy8/0zFRwsHLH7UuQOuwsUCIs=;
        b=SzfVtvOLN9VgRx30rSfrrVFfE5SzqkdSzMnkK4puKQQwKPZtP5S8tdRaE8Mlt7y6CP
         BNyBClHWSYbPb32XDfAOgc9u8bAGMftXv9YcS3q1HATLQem3onMSPAfAvlt2tyQenBUq
         uKPWCY/bvIwT+26/UyKgoaKxCy3x1e0Ugt3jhHZ7/f3SC3FvXS0MP0BXdoEjMxeoL1cX
         rvRXgJpMx3Q8nSNRukvpHpjEPbHoq2TgMnaf/cc5KKGChyvIeBMY17JUuiKQvfLkRhjN
         gv3KykBMdt9fB4GjYw1ZCYRAfqTDAHOvvNJUc8SXMHCwQdBpo/kR1BHJzXHgZwkVkwHk
         Qkww==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=cSO5M3pX;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::234 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=19/H+fcLE+KHeof5tYwy8/0zFRwsHLH7UuQOuwsUCIs=;
        b=g/txb6gw/GjIuFU3biMAqL4U/uef+Rn8tZevZBCCK5KiaQXPqsZ1cbF08JgjOYG2XY
         uuVq9OujB+IsylqhBx6ROB2RAIwdHi0tIBChjI8fKFccPGmGOVzOddgfAWVk7eda1WmL
         +nwJawEJYer+SZ9X8yM4yJ1aEWAgYgIdY2qWHrgFTR6j6JBvoZlJwMm+i87TmkPg55aG
         ngLm0q7h2fMTTtUJGcxsZk162AcAdCr5++uqfhRDc1efYa4vHZzmYxL8ia6QNxObWjBN
         5p8IqqmWLY0CFLk/nBu0p90pfC9G5Th9hZ1rNsEIyorEZQ1NtcLwgjsofk+vBjefBbsa
         Ywmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=19/H+fcLE+KHeof5tYwy8/0zFRwsHLH7UuQOuwsUCIs=;
        b=DWoh5rRLejO1T1gT1xYSKiv1OSCnahqKJKZSpdoXDMEzdapGVsq8NTpmusOMve2ikK
         bPUe0SU096LCbxxqc9aZpx42cUWMBYquw0i7idEC6Razkbh+pCTiJa+6fGljLB3MlKpt
         EYMCPFks+6zPgQsSpCMpTbL2bV7F5e+c5MQ3oO1OKdFEj0ZN68czCi1mPNQqDlngz4GI
         Ljxu6Buq6DuOaYwAk9SozAaa2EBcRLAwkRTDMSqynl/r6Py0nbAJjnGa+U/TPB/KpyXK
         X/G1GC4d8L3OTcookDo+cKJ1VEDgIUXmUvNPYQMWniuFBUFGUhbfPrVCc8nZ+1E8vOp/
         Ijwg==
X-Gm-Message-State: AOAM530hgD7z2Nyz++zMg33bKD8PUDchPMcrwmSCsGwVul+3xU3HPkCS
	zeRCKvWSnJUThNY2NbIvlEU=
X-Google-Smtp-Source: ABdhPJxX49MNjWL90naOvrlBEvQmhRBqyqRqtRK8W2k11BbC7cGAb8y94+A9ngJhO4inYNrMtDMDKA==
X-Received: by 2002:a05:6402:5247:: with SMTP id t7mr214274edd.25.1629920646311;
        Wed, 25 Aug 2021 12:44:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:8486:: with SMTP id m6ls1635692ejx.10.gmail; Wed, 25
 Aug 2021 12:44:05 -0700 (PDT)
X-Received: by 2002:a17:906:1856:: with SMTP id w22mr265108eje.393.1629920645396;
        Wed, 25 Aug 2021 12:44:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629920645; cv=none;
        d=google.com; s=arc-20160816;
        b=H0X+H4N8OZDp76FOWfmGdXKLqoAcNB0mNwIcfxWUAik7Cuqp8hjtqq+4/YCFIKXQNJ
         kGSMfbx/+Dw+zaP2+ZZUH3vlBWzX20jmnKUmXXpX0oKO98YsjC5xjgnHuQWonvcaHj8L
         WOECXmkn72LJNQiZB3frUTnQAggFNQ67VR8Vi0eEC0cOZ80eQTE6/6Sw73vSa5vg/P0y
         mqciXSghxY5/rBYUvuGC9SnymqY+oE681Lkd0CKr7S9qW0/JlVkHFInMTSXJXw+ImoOq
         6JAXCyMde2tP42I4ec5Lg99udTHqSt3UkOCNVmE7mguL4NF5EoAQ3Wa+G1fmSpPjwQ0q
         sOvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=6hionP+S3WQHCeRsfV2U1fbeKdh6BHUGkpwhUBr6Opo=;
        b=iwzBhcW3VpL13tWSCZbXUZ+SJ9XjZjfuke3amvshE2sXYOUqcIkX13lTTyXJExWkfu
         RAq6yTbUh3malVVv3iXYwyWmKs0mdiUTtuXQMH4uuGGf++1ItmVzaL7Sq7U12jFfCGuB
         Xou/K68GM16RcYbNjskKmlqjbcVRd1e5ipkxowS7prvqf7itnWvFzzxXYGP5uXdTHiXV
         iFgw186xst5xdmL/umyMdSZV3iufyfNkdPEPri5u8PfiHv/1CQPMcFU+eG9rfQzo+sin
         RxERp+4oKUwKBIWDHLsvfmHsH2yt2gZ4YVE83gn0moTNSTODA9kqqmsLwJJiiRRZKf+X
         5jlA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=cSO5M3pX;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::234 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com. [2a00:1450:4864:20::234])
        by gmr-mx.google.com with ESMTPS id dy22si62844edb.2.2021.08.25.12.44.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Aug 2021 12:44:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::234 as permitted sender) client-ip=2a00:1450:4864:20::234;
Received: by mail-lj1-x234.google.com with SMTP id s3so577057ljp.11
        for <clang-built-linux@googlegroups.com>; Wed, 25 Aug 2021 12:44:05 -0700 (PDT)
X-Received: by 2002:a2e:a367:: with SMTP id i7mr268052ljn.244.1629920644666;
 Wed, 25 Aug 2021 12:44:04 -0700 (PDT)
MIME-Version: 1.0
References: <20210822075122.864511-1-keescook@chromium.org>
 <20210822075122.864511-14-keescook@chromium.org> <4fff1f46-ab10-317b-8cf0-05871e4a9d71@rasmusvillemoes.dk>
In-Reply-To: <4fff1f46-ab10-317b-8cf0-05871e4a9d71@rasmusvillemoes.dk>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 25 Aug 2021 12:43:53 -0700
Message-ID: <CAKwvOdnd_e7K9Ayn+4pMgWzbu7W8U5dWiSVa9AEKs99m+q7K+g@mail.gmail.com>
Subject: Re: [PATCH for-next 13/25] compiler_types.h: Remove __compiletime_object_size()
To: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Cc: Kees Cook <keescook@chromium.org>, linux-kernel@vger.kernel.org, 
	Miguel Ojeda <ojeda@kernel.org>, Daniel Micay <danielmicay@gmail.com>, 
	Francis Laniel <laniel_francis@privacyrequired.com>, Bart Van Assche <bvanassche@acm.org>, 
	David Gow <davidgow@google.com>, linux-mm@kvack.org, 
	clang-built-linux@googlegroups.com, linux-hardening@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=cSO5M3pX;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::234
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

On Sun, Aug 22, 2021 at 11:43 PM Rasmus Villemoes
<linux@rasmusvillemoes.dk> wrote:
>
> On 22/08/2021 09.51, Kees Cook wrote:
>
> > -     int sz = __compiletime_object_size(addr);
> > +     int sz = __builtin_object_size(addr, 0);
>
> Not directly related to this patch, but seeing this I wonder if there
> would be some value in introducing names for those magic 0/1/2/3 that
> are used with __b_o_s. Every time I stumble on code using that I have to
> go to the gcc docs, and even then it takes me a while to grok what
>
>      TYPE is an integer constant from 0 to 3.  If the least significant
>      bit is clear, objects are whole variables, if it is set, a closest
>      surrounding subobject is considered the object a pointer points to.
>      The second bit determines if maximum or minimum of remaining bytes
>      is computed.
>
> means. The names don't need to be too verbose, just having a few
> #defines in-tree with the above quoted above them makes it a lot easier
> to figure out what they mean.

We share a similar experience.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnd_e7K9Ayn%2B4pMgWzbu7W8U5dWiSVa9AEKs99m%2Bq7K%2Bg%40mail.gmail.com.
