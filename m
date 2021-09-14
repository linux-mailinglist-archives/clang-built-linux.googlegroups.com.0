Return-Path: <clang-built-linux+bncBDYJPJO25UGBBUMDQOFAMGQEOSXGTJQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23a.google.com (mail-lj1-x23a.google.com [IPv6:2a00:1450:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id 363F940B33B
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Sep 2021 17:37:54 +0200 (CEST)
Received: by mail-lj1-x23a.google.com with SMTP id r16-20020a2eb610000000b001c78e82ce96sf6113797ljn.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Sep 2021 08:37:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631633873; cv=pass;
        d=google.com; s=arc-20160816;
        b=Pnn2CGPLbmFffA5PeBTtefRb+Do98D6J69DuOWv16+BYYDx0WXRLaAOqVlLj+l9Mdr
         puO82aZcHKJrlO62s95/udd4tBOCy84U6q6tB2ZRpvtQ/QUnATjkHeME0oZtrEIje3/y
         gYLnQu22UkL7hRLo/PfzHjwEVuLaRHbcUG9m+Mn+MXa1gX0PPcSo5dwf67KK9zvWvBHD
         fElt1+CcD1J7ZE7c//Tt0HLleS1i4u0hFZNp8ApBwKJGy3HqpRxMaV/Cd3OVlMfnWqkQ
         2BsFo5YBeNiaBoAg7ZIUZSjFSyb0a7itEqjwT7Y32mnPcao3BXVduVNgZgUh2Xn5efnG
         Kfuw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=WfrFPO/gytGX7PITg7Nr6DvlPZj7REvmpNpJ2go3i0M=;
        b=IVl5eJrUmiRdLOwYovBK3hDtoOPe9/PGbaD9KqiRO5WPMgnVOZeHsuhI8rsmApiR4O
         CTQOljEX/ktFXGCopQMUYFqgn85M40ZNivK0sqqy0FycMCIs6O+0j8bbTXaCq/YpiiGJ
         dmTG9EkO82iUa/NT0POS2GOeVJP9SXNYRYdofoDA51cftt7YDPdFlZe3fLCh/LlhSA8y
         Qg+LNh3nT0kiCPH9+CrR3Xy8Zw6hlUErSwYF3Zl+urhWS4Vyfqurhx6GSfmDJealHI5O
         m9Z9++iUQzf0k4QPi93m5NWtYLjXcuBKaPY77+alWUWwgyjBLCvO10eNhByAzvv7qW0G
         m2kg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b="c/RjdyCq";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12d as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WfrFPO/gytGX7PITg7Nr6DvlPZj7REvmpNpJ2go3i0M=;
        b=W/24OaXMsxP8Vv+L24CgYqcHYU+m/A0k8cPXA/FCzYdYREJAyc+a72mcaeDNyCZrqH
         iKoxYf4B+jKPZEFfM8VBkdXdXZsS6OS1FxFHppaLl/YEPs62L7l6H/6XoRRx0Yoe9y2g
         EX7paYe4NuVpdlw2jaWRmmfapHTxi6Wn1Wivq9IR+SaB9XhOaR/v6rd62Jg6sHjR7NnI
         0nZ+99JFn0JGOKr1vwNRMuA+Upb0Q9OW+pfeOTRAcRVoUmomdLAxK+E+dUX9C36mYUg7
         cuSh+joTAmvnTGZj1mWDFOSgZHCpJ6GY5gHbwwOZGlYt8pRJYQffhZqChwcW02LShkB9
         xOKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WfrFPO/gytGX7PITg7Nr6DvlPZj7REvmpNpJ2go3i0M=;
        b=LRvf/u70d5RUpiQDYp0e4c1yysMGJTbKMOuu5yo+4fZRgm9pK/iHv8O2opm6MVNa0o
         RQ7d3UC1vBaMkWk9ApbT0+Ap45Jphq8lvrCoYQXuwaRYo5yTtw1Qv4COZWh+RWuGJ++8
         J6V0sVp7xhb28HzHFt7VzPSZaZFdVTJ1lJGK2r9dicgiAybA4ba6KOueLCT6QAo7HQ1C
         dfFc6DjFWNUKXVLD+lEJBQJPkd24D66FfNZQgXWFiL7Q6yX51xsd7aeMvvCo8jWKwpP4
         pggcvm2jyqAzMnJlsYotTM9lXCDZRKv+ENgzEYm9Cc4XxWNsaVn6UAcieN6sAzWzC8az
         RH7w==
X-Gm-Message-State: AOAM531IOuKJgN5TDr85jEMEVy3PKt745CIMCrI1nFCpCwHfqW6XKxdC
	50a5q3KFNUJg6nr9BfKonoU=
X-Google-Smtp-Source: ABdhPJzj5fSuURNod9LeMKIG9EDxmhvBek6NHg/FaNuq1Pki7ay/Bfg5fxob+qke0bgLmpc5VrMazA==
X-Received: by 2002:a05:6512:1143:: with SMTP id m3mr13700990lfg.144.1631633873697;
        Tue, 14 Sep 2021 08:37:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:4146:: with SMTP id c6ls772759lfi.2.gmail; Tue, 14 Sep
 2021 08:37:52 -0700 (PDT)
X-Received: by 2002:a05:6512:304f:: with SMTP id b15mr13942407lfb.462.1631633872735;
        Tue, 14 Sep 2021 08:37:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631633872; cv=none;
        d=google.com; s=arc-20160816;
        b=H3oRqRdHtmNsMDCIT/3Y5KINtWbZ+BYklc/5qBQX+amRrpzpX8kRe5bUVskIbdqRgh
         kro9YaUDptIk4tJ7yyWLJAZhfYVesfa7DSv1chfpUVYhWlOBnbOh7wed6Hm2tCzfG0Af
         ng7WzPw7TLxpBWOZQQyMp3PTnvNIZSc0tdOKW2P6p9MAfD175QejoU2WKpk5sIxEtxxZ
         0CLIOgY8ccsaCHOTZZHD6JL2wB5R67wyseHnsc+eZZ8bmHx3SkDMCcI9XGYceD6mdkue
         k+U4swYzIS3FlkCLIy2ooXAwJwkQ++jd4stGfB5rZ9Lf78x59lWkPsGKjS3OUwBsBREY
         reOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=WrbwJNAShlWZ4ETbZPnZ+MxxaavLpqRSqIx3YNgS+m4=;
        b=r/Lg2SLsCh/5v6D2ottyS9JVOWsLhheIKkTdGMoBc+qDmsQksHB9w2/mjYfgzLdGF3
         ZlxzrkbsKyfTeAfEqsgJBuLWbjJOnZN06yfUgUPc3SA+qfCyrJleh/zvA9ht0IR7HXDg
         50OVnBirdTdIf+bHyvAaFkwLk7qdeAvQQ3fxlfETDf7h8XCDFg/895OYQipQji0wWjPy
         Hn01pphBbmQTyTpd90KMzzo2X7/wsAIXRwo4wqZMJbaM+jzDge94IvoEKb5BVgwBQqt6
         90zHQ9CyWXxSPqbHZPsJGmjGxKM+R009Kz7kUj9OqUAByIaq2eHg0gDaZ2jWmQGIqFef
         1e8A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b="c/RjdyCq";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12d as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com. [2a00:1450:4864:20::12d])
        by gmr-mx.google.com with ESMTPS id e17si964993ljo.2.2021.09.14.08.37.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Sep 2021 08:37:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12d as permitted sender) client-ip=2a00:1450:4864:20::12d;
Received: by mail-lf1-x12d.google.com with SMTP id k13so29722457lfv.2
        for <clang-built-linux@googlegroups.com>; Tue, 14 Sep 2021 08:37:52 -0700 (PDT)
X-Received: by 2002:a05:6512:139c:: with SMTP id p28mr12970629lfa.523.1631633872288;
 Tue, 14 Sep 2021 08:37:52 -0700 (PDT)
MIME-Version: 1.0
References: <CAP7CzPcLhtXDyLudfmR2pWR5fzSQ_jhJSoRheH=cytoDnb_ujg@mail.gmail.com>
In-Reply-To: <CAP7CzPcLhtXDyLudfmR2pWR5fzSQ_jhJSoRheH=cytoDnb_ujg@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 14 Sep 2021 08:37:41 -0700
Message-ID: <CAKwvOdnUCfPnd8f51gT0hmRS8Zvsy1s=3GhArXO=LjVcSKYUSw@mail.gmail.com>
Subject: Re:
To: zhao xc <xinchao.zhao.kernelz@gmail.com>
Cc: tglx@linutronix.de, mingo@redhat.com, bp@alien8.de, x86@kernel.org, 
	hpa@zytor.com, nathan@kernel.org, tony.luck@intel.com, 
	linux@rasmusvillemoes.dk, mpe@ellerman.id.au, dan.j.williams@intel.com, 
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20210112 header.b="c/RjdyCq";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12d
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

On Sun, Sep 12, 2021 at 10:42 PM zhao xc <xinchao.zhao.kernelz@gmail.com> wrote:
>
> Hi maintainer:
>         This is a patch fix the unused macro definition

Hi Zhao,
Thanks for the patch.  Would you mind following the standard procedure
for submitting patches to the list for review.  I wrote up
https://nickdesaulniers.github.io/blog/2017/05/16/submitting-your-first-patch-to-the-linux-kernel-and-responding-to-feedback/
a while ago, but I think it's still helpful.

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnUCfPnd8f51gT0hmRS8Zvsy1s%3D3GhArXO%3DLjVcSKYUSw%40mail.gmail.com.
