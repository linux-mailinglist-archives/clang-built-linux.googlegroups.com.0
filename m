Return-Path: <clang-built-linux+bncBC3ZPIWN3EFBB2FG2CCAMGQE3ZBKZIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53b.google.com (mail-ed1-x53b.google.com [IPv6:2a00:1450:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F60137581E
	for <lists+clang-built-linux@lfdr.de>; Thu,  6 May 2021 18:03:53 +0200 (CEST)
Received: by mail-ed1-x53b.google.com with SMTP id g7-20020aa7c5870000b02903888f809d62sf2896379edq.23
        for <lists+clang-built-linux@lfdr.de>; Thu, 06 May 2021 09:03:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620317033; cv=pass;
        d=google.com; s=arc-20160816;
        b=H1NP+/85Bb4Pcmbt9mxmw3eWJZkl/Jj560lPOwHhyXqpqJGWXHZ3zfskCTRKeK2uU/
         zJZV71KlACRz0Zm2+tqt0v5T9K9xaZbKElw2cyokxnbaZ5853bO0r7YxxvsIsj4nlaGm
         fGdCuspVLgKVge899NQE/9gjac9U8VKG4tfqF1tgn9JHq5jeLk6SKDPKOQmKDUKybmVf
         qtdhDrrWFXchgOYaxcw6gMToIOOYASD3EfWBbKF3ISwucTRuIu4L+QqQVOZ18U7pZyIz
         DgmKAwZyI2D0Z9MLhBFiaZf+VDG3I+rIoIubdo9mUNUxyRanWRHfS/JYosk7/2VEdvcO
         1rew==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=1bvIcmrFfsvibfZLlMabJ/cE08igqHDKmRztTDsDH9Y=;
        b=wO2uRNLy1WFwmYd1F3LCLzZQ5OKST0emtAvTwA1unwUVay9XM8/cprlNCwqTgeQFuo
         OOMXwl3O/mdBoNdqSzl50D4HuE9LL3+Xzy6Bn1COGQIn7cCCzd912pelt7zAa5G9UCDr
         LiZasUg9AuR35Epx7qbiKncveDMkpgRmisnQi3C2f3z54k46UwwOrpk446kkGZuBwu3Y
         FfngqDibfJfaG/dkc9dbVph+FykhTnOYEbieRQ9f2nKZOKC9DiWxCdfPVUWw4Yk2k2hd
         9WWCEkMHxO+u7/xEVutkUo2q07ElkusUYnQiFpXtlwCDJ5ay/NzH9YQJCD28HtV0FsKH
         bikw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=T0KSrzdS;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::129 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1bvIcmrFfsvibfZLlMabJ/cE08igqHDKmRztTDsDH9Y=;
        b=N8EIR/HtUpXEnNJoqN6zyMteB0zDauY0Wyl3BbCqDH5VHsoFCD37cXscy491h6eSmR
         3//zoIhWDR1EOiH0o1ISqZpqvlAOHywkL6xuxdKU6KN0C2faoBy16h7Wsc6NHqO8rctF
         Rzz+wkXBpJ7rApYjNrPF81D1EVda9ydRjyA2wrEpjmt0PssKyGbWKt1+U+oRGHMavaNr
         +Rz7M+krIEM9KwcS5ZuTa+5/6dGO7Qj6Duw7UDweLgVKfit3KYF0ZcXixHtFlyYYUFA8
         knlCaVNA0xOMeslFSF1KjZ23d0kPP/Zgg+Am9IYeQxUF+VOMfcBa5bPvCo7MmTLu5IT7
         Jn2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1bvIcmrFfsvibfZLlMabJ/cE08igqHDKmRztTDsDH9Y=;
        b=aokRlLd7LYoA4OrpcBv47YleRljsCggH+tt5PSSnVkS7AjHgb80Mc2qBE40P6pNdqF
         jK5EwMCUc4vNt/xCYAyFeHGqN1G4nxIrzuzTScKCGiirTQpsfnJ/BP8nsJ2BZ4lSDzcA
         u2n5gt+FjBPUWqxMZ9LDXSwe2SJxYB3qS51IwHIH8bKx0dsHCklRIsIMpe305vMZUnBJ
         Qm9CsjDaqYDUaaCtLBHKGRN6Y0NDy7hrzu/VZ5A4DdZFlL0+ffAhi36d4WgkdxKdgCfD
         dwKQj/f1iHBVkTot37J8s3ayoZtjOKusADdhj1t7bDYzfRWAnk1+N2QzzbMeldb7Ouep
         iLGA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53148G/wpXWmcsOODhNLLTHNicy7KhSNM4bpAMvR4KgPLBSlFSR0
	3oB3vGjP3uM8WCa1lepNNQY=
X-Google-Smtp-Source: ABdhPJzvdqpnPfgl/HV4meRSPBKejbmrVdwtML59QeRVtqoOmgEL5ZzgvhwY3sghhWqq29EXogPlgQ==
X-Received: by 2002:a17:906:d7b1:: with SMTP id pk17mr5191315ejb.294.1620317033068;
        Thu, 06 May 2021 09:03:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:1901:: with SMTP id a1ls1599650eje.0.gmail; Thu, 06
 May 2021 09:03:52 -0700 (PDT)
X-Received: by 2002:a17:906:d054:: with SMTP id bo20mr5161593ejb.207.1620317031974;
        Thu, 06 May 2021 09:03:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620317031; cv=none;
        d=google.com; s=arc-20160816;
        b=kchtBBP8TzHfSBQ14I81UIqISC5ADPrQ/WXQ4hC+nc6hIr/PDMZT6xOVsdQJwM+3eU
         PzeYqcSmQS1z9y7M8yArvy4NtzZM5nW4dW+oeG+9Aigt03HvnN5uIay/K6Ec+2YXhU+Y
         iqCsuUgwUkczZ6fBLivV4JHOlTJV2qUiSuOpw7i1QKeHYarYsg6d1wWuSV16XOCd0zGw
         Rm28vlzGfMVJcf1KV4xAuZnptDZBuL1ZY2TJjBJb1OPfuYCLjv5yTXUIrEaLGEy1biQa
         1Zn3ZGDnR7OigE+xTVPb0Ri9b35oDZpbwfdwr3EZOlWN1hzlWFv7IBI/UDUU5gZ5Yz09
         /6HA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=qyVEBL+xt1SQPCegOBTUU+QFYg0wXbsBFOTlu91fBI0=;
        b=j/2DuRML/q7mjsqhv6J4OqQ2BNx6OY4h5TzkZjClxj1H5NSSouOPiL9UmciK+LGW2E
         vzTfGeHgA2Y4m9gw5TEZ44wgUaLfjmX7aqr9sGzyFk14/gIq35ar5wk17RfVhIiueV9R
         FklWv0NatXKja83tx7xpdZoXqxt2JYwfNk8ILq+bgYKGrOB00RYOApvWJ9SgoA1BnMrC
         kyCBEeaBqvUOqpmVfa2RD7Kb8ynUSLvzPVoT+OSGSVg0Gn0dmZNb0vaKjpcTLvDftCap
         9JCgimGeAEMChz4TCSa5KemnsYDpXNefLnOeeNE44wizoqOSKR6e4P42UJGyoT6Fxsmv
         QJ2w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=T0KSrzdS;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::129 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com. [2a00:1450:4864:20::129])
        by gmr-mx.google.com with ESMTPS id h3si140008edz.1.2021.05.06.09.03.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 May 2021 09:03:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::129 as permitted sender) client-ip=2a00:1450:4864:20::129;
Received: by mail-lf1-x129.google.com with SMTP id x20so8540485lfu.6
        for <clang-built-linux@googlegroups.com>; Thu, 06 May 2021 09:03:51 -0700 (PDT)
X-Received: by 2002:a05:6512:3618:: with SMTP id f24mr3609100lfs.34.1620317031276;
        Thu, 06 May 2021 09:03:51 -0700 (PDT)
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com. [209.85.208.172])
        by smtp.gmail.com with ESMTPSA id j26sm773905lfh.106.2021.05.06.09.03.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 May 2021 09:03:49 -0700 (PDT)
Received: by mail-lj1-f172.google.com with SMTP id y9so7733257ljn.6
        for <clang-built-linux@googlegroups.com>; Thu, 06 May 2021 09:03:49 -0700 (PDT)
X-Received: by 2002:a05:651c:3de:: with SMTP id f30mr4067041ljp.251.1620317028967;
 Thu, 06 May 2021 09:03:48 -0700 (PDT)
MIME-Version: 1.0
References: <a81e116ba3d64aab8d379703bedcf032@codeaurora.org>
In-Reply-To: <a81e116ba3d64aab8d379703bedcf032@codeaurora.org>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Thu, 6 May 2021 09:03:32 -0700
X-Gmail-Original-Message-ID: <CAHk-=wgU-ERpeM0CJnN8JTVVUsBRtgpvU33sKke67V6pZj6A=g@mail.gmail.com>
Message-ID: <CAHk-=wgU-ERpeM0CJnN8JTVVUsBRtgpvU33sKke67V6pZj6A=g@mail.gmail.com>
Subject: Re: [GIT PULL] hexagon changes for v5.13
To: Brian Cain <bcain@codeaurora.org>
Cc: linux-hexagon <linux-hexagon@vger.kernel.org>, 
	linux-kernel <linux-kernel@vger.kernel.org>, sidneym@codeaurora.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: torvalds@linux-foundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linux-foundation.org header.s=google header.b=T0KSrzdS;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates
 2a00:1450:4864:20::129 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
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

On Wed, May 5, 2021 at 2:10 PM <bcain@codeaurora.org> wrote:
>
> Please pull the following changes for Hexagon: they contain build fixes.

The pull looks fine, but I'm wondering what key you've signed this with?

I find your key 175C464E541B6D47 in the kernel.org pgpkeys archive,
but your tag was signed with RSA key 1A54AFB8E5646C32, which I don't
find.

And the standard keyservers are - as usual - not very helpful.

I'd have loved to see a key I recognize, and I was hoping to also see
that key signed by Richard Kuo. And maybe it is, but I can't find it..

Anyway, pulled, just hoping for some clarification,

                Linus

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHk-%3DwgU-ERpeM0CJnN8JTVVUsBRtgpvU33sKke67V6pZj6A%3Dg%40mail.gmail.com.
