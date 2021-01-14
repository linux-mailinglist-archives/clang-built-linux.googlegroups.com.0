Return-Path: <clang-built-linux+bncBDRZHGH43YJRBQ4WQCAAMGQEGZAWLCY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x837.google.com (mail-qt1-x837.google.com [IPv6:2607:f8b0:4864:20::837])
	by mail.lfdr.de (Postfix) with ESMTPS id F421C2F5CFD
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 10:13:40 +0100 (CET)
Received: by mail-qt1-x837.google.com with SMTP id k12sf3871713qth.23
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 01:13:40 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610615620; cv=pass;
        d=google.com; s=arc-20160816;
        b=cbno3aXRmX/KXsQEtfck1nho888tlCwr3diZbTcXpo/J2PO33uKI9YIfW/PFKSI+ih
         +lk8hz4U952/6QGjQQnlNNo20RYqqDzur4/2Fqt4tPVJlIIeA4uY6Dpp00tu7+ITez/i
         1lwbM42O6jE6DXnzP675Q+NaZQ+cE7ZLL69xjWeuyv8QI38afOefx7eMlAdA5yOZoo8n
         YSoB7azwAhndfukkmx1Zc0yGTDScZTdvXnuFVXrBgb0ZIpmSwQhip9TY+xG0sJprMk8t
         mzxEJ2Pu6A/Q4I/Ds9j/sMntWrngEdrM06QbxwFtmh8GKmIs6LBDH39lzffnluhyetyV
         MFAw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=2j/Dpe1hUIBj5XShV8cHUoKuJrbTkcfYQdsTrbq4qks=;
        b=PXGS5jqEFkyE2pzxQHWmoIAp/q4oV/mcfUuQeLTYgWhj45hnhUeIGAXhr+riQiumyM
         v+Wbm7Hx0EnBgss7UyPlmpUNPwhdVp9K+OUBbz45teQ3OySNiBsU422PEzQyTLrCGCCb
         9WnXV4Ro32Y25Hohh9ChchoBC7tCm0fvqadd0xwMNAybWTZGryGZDeObeglAaj4Modw7
         unoTcad3iP4RZQZeADPm1rOxkGB2KPSWbbfT3Ie4MhAFHUDkSXbD9RAFJUp6WnzzHnsD
         wJguAJiCmZHvlQMNseCrW+K2rUWS27gVIIeXp+9rUsXt6acR9tZ630aVH5UAUpN0T8gq
         4vhA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=F0nbqxx0;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::72f as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2j/Dpe1hUIBj5XShV8cHUoKuJrbTkcfYQdsTrbq4qks=;
        b=kQtwsNpnh4zB+1kQOW4HPNbB5MD2D5voWQA4B7qZSePMpuXOImsjsYbDVmeTo5v+Pf
         Fu497Cqk3Yf6a5dhTmmwoHdhV1uoN6BLQ2JfmJO3298I0O2m2nhojruP8HF7pZbrRaev
         HFDvb/ah/g3FOGy1r1oiqxV0oNT2+5YDsyXN8EoKjnsblQVutPvjrN9fqNHAqOJ5+c+3
         wphEx7vQ/kuTAw3R34XvvgD1HbCvUgLHyO9tTa98gfK6fuWQWLM2LEzXL7SfwH5PR8KQ
         86NSAnin04mV4+bnOaKdxTvRImMCBOpDTeoVIg6m6TCB1NYdkiaHGf5f4y+ohB+UvP4I
         5cyQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2j/Dpe1hUIBj5XShV8cHUoKuJrbTkcfYQdsTrbq4qks=;
        b=AjEf+O3IYanQumhDf8F/mwvQvMu8VdSqGG8+Z2Yi9fEWCmrYcapkkePA4GgDFm3ZD3
         chFy5u5l/hL4BNFUF2xvPZ4aDgfKl5ilphYKkHae42UZdWM7Df3tg3ljcrWVC9O2p+GY
         Vxy3tJy1yXI5bPeoKwLc13WmFN/Ouinii9wBrgCMkzoZZP28bagi0FokbSctxvDVJebr
         3YctTbW21UjPyTcqbSDq7NxFo/a8BfP2+bhPqb/+AngYy9n4i5d29gHn945AxbYS2Qnj
         MXrYo8ZDQKZZLIr6mB9SdtGHqTgID9aX78mxJhG8ksTB4DwOrB1cfhUJiI2EKJzANCj6
         +Sug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2j/Dpe1hUIBj5XShV8cHUoKuJrbTkcfYQdsTrbq4qks=;
        b=Cszd9BOvx3lSGeaOENczx16bGEQH86c5Hsns8fbpw9RLwPMz8/dYF2Yuw4ubXcT05d
         HVBMVLiSvA+SAkWKjjMkjur/KPjbg1CLVlHcx3hmK0pMDzJgh/GBYTP6r6kPsCqvr10C
         GqqwUXjTP9CfMGUsKbk5xHA+eCYKRpl4p+FZDyly4nxB2ZHLFttPqe8j+g9ms88qAxVd
         byGvJY3Sba8E/nQFq2tBb0po5A8H4GAUJrNp+t39psdeyzWuN3aREI/fNnEfFs78Q3Cq
         voCwAfBWRcSvqpWbOGZorXRCzfYq0d9lDmt8HddjsAgXXUETXQKyzFWUhJ1x+o9e2aY6
         t+zw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532R5k5b5H9U+gx1l8ur68MXCMcFUY/j2W4iGoQdAav+yf8QB+xP
	tbccMzhFnZ25D7+9WuoUr4k=
X-Google-Smtp-Source: ABdhPJwCK9phMrVLkBw3wRNBvJ4j+TbwdZRm8tWXyekHUhIO1eo/EqFp+1tzNykUo6YJ1ATSrB7iMw==
X-Received: by 2002:a0c:e74a:: with SMTP id g10mr6379504qvn.3.1610615620036;
        Thu, 14 Jan 2021 01:13:40 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:6790:: with SMTP id b16ls2115889qtp.7.gmail; Thu, 14 Jan
 2021 01:13:39 -0800 (PST)
X-Received: by 2002:a0c:8304:: with SMTP id j4mr6262049qva.18.1610615619698;
        Thu, 14 Jan 2021 01:13:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610615619; cv=none;
        d=google.com; s=arc-20160816;
        b=nZRJLQt9mP2O1BVqgtdJ/qthDILXqHKXDAS8mJipR2B+ufnH7+ZStf7MKWeNITac3T
         D/KWCiFIdFJQ3KNw25EspmDFowTSNLMsT16jTCAdNIogMbLWxnK4EqJMicYj3boaz4d/
         G+ZWS6NlYZI83OOgHI6WDaHHUSxGmSJHer8BiNIsJ/fb8YsZJP8hXXciiVgId3GaCfMq
         ha5ja8EextndisHNoa0TTTGXgkwfW8aHVc1JbjJPrg7RbAKyM7Nbc1dssElpsMrqPg7z
         LAsCYOOHGS/ehgkBDcS5CGrhjx/u17iRDRhalaitMR4dFdLtJtViiCjuxGDoTT3TQS7h
         YzWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=St+n7nsfEnaf4R5ncFQcIS7I1e7xK6DWZkH006syrq0=;
        b=w7qLnNhyPghdNloQOmqXbiD9t94obaSllfC2GifecKaQ+GYcWcbmGIK7oZ5If3oSK0
         D702/QTDM85y8QrspFQkQgUK9jW/2BRheoUguEYR68yOgT6Y1WLusLLwEPrMOln4SWJ/
         bRUylgwjASX4Z9aheK9+1w7hyPnv20lL1FEN3zCoBky4oVKqQErberxO9LhZEF3jDSO4
         n8dVEJMe+hjxk56tngLb7fJ+o6yb5Xx7YGPY6aAcB6u06+rx8aLREtUou9/bWtWPOZmr
         umf7tsX23efheONsiIgYXq3bQmQyCScW4ucCYqyC92XvyieWzVoVzb4vyeuQpYCTi3Nc
         GGQA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=F0nbqxx0;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::72f as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x72f.google.com (mail-qk1-x72f.google.com. [2607:f8b0:4864:20::72f])
        by gmr-mx.google.com with ESMTPS id c198si232125qkg.2.2021.01.14.01.13.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Jan 2021 01:13:39 -0800 (PST)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::72f as permitted sender) client-ip=2607:f8b0:4864:20::72f;
Received: by mail-qk1-x72f.google.com with SMTP id w79so6538466qkb.5
        for <clang-built-linux@googlegroups.com>; Thu, 14 Jan 2021 01:13:39 -0800 (PST)
X-Received: by 2002:a25:ac03:: with SMTP id w3mr8897177ybi.135.1610615619534;
 Thu, 14 Jan 2021 01:13:39 -0800 (PST)
MIME-Version: 1.0
References: <20210114003447.7363-1-natechancellor@gmail.com>
 <CAKwvOdnJ0VUjTX-cyLgtHvy68DHG1VMj7s0huk_FKh1E9pH9Cg@mail.gmail.com>
 <CAKwvOdmr7RttdM25wWKiV8t+tzn8W-C_U6avwrQXQWphT8XhXQ@mail.gmail.com> <20210114022352.GA9913@Ryzen-9-3900X.localdomain>
In-Reply-To: <20210114022352.GA9913@Ryzen-9-3900X.localdomain>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Thu, 14 Jan 2021 10:13:28 +0100
Message-ID: <CANiq72kvnuUZftJRsrPMYA=CLe2q7fO=mrobXMbcf-y3vFhtLQ@mail.gmail.com>
Subject: Re: [PATCH] Documentation/llvm: Add a section about supported architectures
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Jonathan Corbet <corbet@lwn.net>, 
	Masahiro Yamada <masahiroy@kernel.org>, Michal Marek <michal.lkml@markovi.net>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Linux Doc Mailing List <linux-doc@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	Miguel Ojeda <ojeda@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=F0nbqxx0;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2607:f8b0:4864:20::72f as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
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

On Thu, Jan 14, 2021 at 3:23 AM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> A clean "make -skj24 htmldocs" takes me a little over three minutes or
> so on my Ryzen 9 3900X. Just to give some perspective.

Oh, wow, that's something...

Thanks a lot for adding this:

    Reviewed-by: Miguel Ojeda <ojeda@kernel.org>

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72kvnuUZftJRsrPMYA%3DCLe2q7fO%3DmrobXMbcf-y3vFhtLQ%40mail.gmail.com.
