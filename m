Return-Path: <clang-built-linux+bncBDYJPJO25UGBBFPT72EQMGQEEDQ3XRY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23b.google.com (mail-lj1-x23b.google.com [IPv6:2a00:1450:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AAAE409E6E
	for <lists+clang-built-linux@lfdr.de>; Mon, 13 Sep 2021 22:50:30 +0200 (CEST)
Received: by mail-lj1-x23b.google.com with SMTP id s15-20020a2eb8cf000000b001cbf358ed4esf4719600ljp.14
        for <lists+clang-built-linux@lfdr.de>; Mon, 13 Sep 2021 13:50:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631566229; cv=pass;
        d=google.com; s=arc-20160816;
        b=GIoowsEZxQTc7arIGz0oHTgOMcLOpObbiq2dqu2llcD9CxdC/4mkQvuL80Q23M4pX7
         RE0E+z8AnXTI+TpodWvR1ANUMZ2V4OYnYXD93ymOYksW/pOoxZAfsV/pgKg2Y3LYbQGU
         UoDcvqtz7kw8yXHS77Mza0nBGeYoa8SmskwrA27yeAI8or4WbyY2VFrhznXCikOexK6z
         80Ar3rZTCaHTa+rQ5qef0gbX22VQQJDZfoLWmCcP9RELEgB3gc4uryh4a0dEu9G8lOPs
         tpy/YFjYStooEgiP7W5zNnCqU1sPejbwV6CclEhMDjaqC++TAiDvot+dE9+VJtM9kqNH
         oU3w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=9Sg6iBcvyiEmXM8/oPOzPiGWFXVHXzK7SXj4BLrYGeU=;
        b=fAbiPkh4LlkmWIGHGALjOwjpUzSpVAVhlvazK9kpP6xDe2Tg0liiA6WDTwYG7OlWpB
         xUCouwqcHfv2emwIlJBi0YrWviTNwHO3p5tBjfENnaNMyD5745BsMX9I/xFaiGlPD72X
         QVujQCF9fhDnZoIIU6QMCX7iEKXTlz3wUZz7FxgdxDCdac5ICNiqWdbBgN+93koZmMCd
         uEZlmKiKI51uO/NwEvBB4ciPHARzZT9ia5uoD3yMWuLU3dT1VHHO1ZNLD3cY4Q7kOMoA
         BhKeKCrgPHmGzR/S2fY6hA0ZmE91HcqA6XGK2txG35xmrEDC+fuNLdP+/h+EZ491PrW/
         A4qA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b="Kx+QXs7/";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9Sg6iBcvyiEmXM8/oPOzPiGWFXVHXzK7SXj4BLrYGeU=;
        b=LBN653rTdxsKO9ohoHI5d2/JGitjsqAkOjpv9+a7ZeqPZdxnY7e2pebAHYAcZ2ky9f
         XubWgfAgWSr6jifaeVaGIWAd3NqvKv33F9eUujJUn/Skp1bDkic11ZS/I6JJgCSZxzod
         AIPbFW7OQEBFDPBk/XJ5FPbUUXngudl0GIO+9w/dyOsJLd38Xq8BVg5wqyDTexAFnsNd
         DKYEpI0xX+6XEAAc/pq1h1x/iofX7QCkwM1z1sSnYu7yFWkiaAdxmFxaXlqgXHXfHSXR
         3QfJ1M5v2zN9/lFAt/2IhfNfcX72gNJoJGlpydljwmiyS3+V+4SoVkY/AVXrib31srD5
         /rIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9Sg6iBcvyiEmXM8/oPOzPiGWFXVHXzK7SXj4BLrYGeU=;
        b=l0rp+bUnXRkJK64af7TdSDEDc7QlegwUuIQSD60xBp65pWPAl3QCKtUIpecOv1TjrK
         /VeuDfNbJ5mAgisROVPsvct0ATjJOksxfEbtPEkfb09gvftvJPIjTzCaEcCzkXdDObY8
         sPeWbTtF1vTRbZRlw76YtC0aKGCCcF7dWqJaNWiCB/ngbjhB4IH+EAQ66mkDL+hyQv8C
         arELOO50SM0oRTX33re47uUH3UJ3gm7dMlMkpL9eW4wor1BgV9tWzngzZuxQnTYTc5G3
         2y5iaR8+gU5GjPwDYHB+VtSKXol9lcBy1oP3kopRKuWQTRB8zbZNFJh+8Eixxwuvp8DS
         0Xfg==
X-Gm-Message-State: AOAM5320nPRMhib74NErLbheWPDw/7BvZe2shsRwyL1V9ACx6b+LzKLz
	WFOBYYnbEvo5fBaT3nmGYyk=
X-Google-Smtp-Source: ABdhPJxOq3UKM1wj5BsLXT2QYSBzH4+wZu99haTXQ0jKaqTOkEfmrDy3+H3+KEMSKvUzBNVr8zbazg==
X-Received: by 2002:ac2:5624:: with SMTP id b4mr4349776lff.687.1631566229686;
        Mon, 13 Sep 2021 13:50:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:58c8:: with SMTP id u8ls1294068lfo.3.gmail; Mon, 13 Sep
 2021 13:50:28 -0700 (PDT)
X-Received: by 2002:a05:6512:234f:: with SMTP id p15mr10243347lfu.524.1631566228685;
        Mon, 13 Sep 2021 13:50:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631566228; cv=none;
        d=google.com; s=arc-20160816;
        b=WnAZRGUofo7pqUhWS7lfOYeEfmQD235JxaJhdJbs+dVbFVf/5XvusZ7JbXLWe99Pdm
         mm9IX/Q2mAPCLVb92+6YpF1xCR9bJT4g3QRnUtFhWxM4pNtx+oKJ8nmdchrTBY1MvVz+
         6X3hufhOBCEm2tNdaTe0yIxpIY057icQZZznfX5kA/QupaAvN5s6vgrnB7abH7rFR6rW
         DItE2NstTYan3h5pgNBude+VohkIf4L9c7/j9bLT4Xb10BNeyklNgLqfvR83ySucPWFN
         edkWCSTeCRNEKa39/lBZfeQfc6371G+OWgc4MCdNW4hwBmXOqU9dhgSm+/VCq8A2ls/J
         b5gw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=8TVqbn8thZCqMP/VrYd9m008Vn/d1QsljDuZZA3Cj3U=;
        b=acrsqpz1X4CvV1ou7XjoMs6RYXqpgoUCC/btJotjsvDVL6b7/ApjChSdjo+iOXI1i3
         1VApOWaGkJxqIXbV/P45rpSxcj81i17gwAzyovRq9cTcjcVDR2Mm8Igzq5qQHMt+5pmi
         FNFGqLL1RvDLSej2JrVrB3UFg0yddx/1+0YyuXZsa2UNxz6qZZa5ZAl5/lSRezT+qSFV
         LJ70RIBxxLEa4fqWi3KNFG8g7cqSu7vNftKw6jlszJcYDjIDpwPM8Yic97ybcZorJxhV
         wC2oqqtmnfU0EU/E5rQQbmgDpfb704AeQ7NhLkqJxf7fjsQLsRfBVHbL030YeN3ibvPx
         5VvQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b="Kx+QXs7/";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com. [2a00:1450:4864:20::22a])
        by gmr-mx.google.com with ESMTPS id e17si794503ljo.2.2021.09.13.13.50.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Sep 2021 13:50:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22a as permitted sender) client-ip=2a00:1450:4864:20::22a;
Received: by mail-lj1-x22a.google.com with SMTP id j12so19581004ljg.10
        for <clang-built-linux@googlegroups.com>; Mon, 13 Sep 2021 13:50:28 -0700 (PDT)
X-Received: by 2002:a05:651c:54d:: with SMTP id q13mr12530242ljp.526.1631566228215;
 Mon, 13 Sep 2021 13:50:28 -0700 (PDT)
MIME-Version: 1.0
References: <20210913131113.390368911@linuxfoundation.org> <20210913131114.028340332@linuxfoundation.org>
 <CA+G9fYtdPnwf+fi4Oyxng65pWjW9ujZ7dd2Z-EEEHyJimNHN6g@mail.gmail.com>
 <YT+RKemKfg6GFq0S@kroah.com> <CAKwvOdmOAKTkgFK4Oke1SFGR_NxNqXe-buj1uyDgwZ4JdnP2Vg@mail.gmail.com>
 <CAKwvOdmCS5Q7AzUL5nziYVU7RrtRjoE9JjOXfVBWagO1Bzbsew@mail.gmail.com>
 <CA+icZUVuRaMs=bx775gDF88_xzy8LFkBA5xaK21hFDeYvgo12A@mail.gmail.com>
 <CAKwvOdmN3nQe8aL=jUwi0nGXzYQGic=NA2o40Q=yeHeafSsS3g@mail.gmail.com>
 <CAHk-=whwREzjT7=OSi5=qqOkQsvMkCOYVhyKQ5t8Rdq4bBEzuw@mail.gmail.com>
 <CAKwvOdkf3B41RRe8FDkw1H-0hBt1_PhZtZxBZ5pj0pyh7vDLmA@mail.gmail.com> <CAHk-=wjP2ijctPt2Hw3DagSZ-KgdRsO6zWTTKQNnSk0MajtJgA@mail.gmail.com>
In-Reply-To: <CAHk-=wjP2ijctPt2Hw3DagSZ-KgdRsO6zWTTKQNnSk0MajtJgA@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 13 Sep 2021 13:50:17 -0700
Message-ID: <CAKwvOd=ZG8sf1ZOkuidX_49VGkQE+BJDa19_vR4gh2FNQ2F_9Q@mail.gmail.com>
Subject: Re: [PATCH 5.14 018/334] nbd: add the check to prevent overflow in __nbd_ioctl()
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Arnd Bergmann <arnd@kernel.org>, Sedat Dilek <sedat.dilek@gmail.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Naresh Kamboju <naresh.kamboju@linaro.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, Baokun Li <libaokun1@huawei.com>, 
	open list <linux-kernel@vger.kernel.org>, linux-stable <stable@vger.kernel.org>, 
	Hulk Robot <hulkci@huawei.com>, Josef Bacik <josef@toxicpanda.com>, Jens Axboe <axboe@kernel.dk>, 
	Sasha Levin <sashal@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	lkft-triage@lists.linaro.org, llvm@lists.linux.dev, 
	Kees Cook <keescook@chromium.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20210112 header.b="Kx+QXs7/";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22a
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

On Mon, Sep 13, 2021 at 1:42 PM Linus Torvalds
<torvalds@linux-foundation.org> wrote:
>
> On Mon, Sep 13, 2021 at 1:16 PM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > Do we have access to _Generic in GCC 4.9?
>
> We've ended up using it unconditionally since last year, so yes.

Sorry, grepping would have taken < 1s. I'm very lazy.
http://threevirtues.com/

>
> In fact, the compiler version tests got removed when we raised the gcc
> version requirement to 4.9 in commit 6ec4476ac825 ("Raise gcc version
> requirement to 4.9"):
>
>    "In particular, raising the minimum to 4.9 means that we can now just
>     assume _Generic() exists, which is likely the much better replacement
>     for a lot of very convoluted built-time magic with conditionals on
>     sizeof and/or __builtin_choose_expr() with same_type() etc"
>
> but we haven't used it much since.
>
> The "seqprop" code for picking the right lock for seqlock is perhaps
> the main example, and staring at that code will make you go blind, so
> look away.

Looking at my patch:
https://lore.kernel.org/stable/20210913203201.1844253-1-ndesaulniers@google.com/
I don't think _Generic helps us in the case of dispatching based on
the result of is_signed_type() (the operands could undergo type
promotion, so we'd need lots of cases that are more concisely covered
by is_signed_type()). It could replace the nested checks in div_64
with nested _Generics, I think. Not sure it's a huge win for
readability.  Maybe cut the number of expansions of the parameters in
half though. Let me give it a try just to see what it looks like.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DZG8sf1ZOkuidX_49VGkQE%2BBJDa19_vR4gh2FNQ2F_9Q%40mail.gmail.com.
