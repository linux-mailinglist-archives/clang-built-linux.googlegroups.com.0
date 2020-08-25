Return-Path: <clang-built-linux+bncBCS7XUWOUULBBJEJSX5AKGQEVE3Z7ZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x138.google.com (mail-il1-x138.google.com [IPv6:2607:f8b0:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D27A0251DCE
	for <lists+clang-built-linux@lfdr.de>; Tue, 25 Aug 2020 19:04:37 +0200 (CEST)
Received: by mail-il1-x138.google.com with SMTP id 2sf9567312ill.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 25 Aug 2020 10:04:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598375076; cv=pass;
        d=google.com; s=arc-20160816;
        b=QQd+/XnAmt+yQiIRFddYSj5V8dNoQIr7zDpFwvw5UiF5g0n055cjXoGx1mf/wvV/2V
         c8m6X7q7Y+twkHSrfw0vICdiDFBc1/wOiwxluiHY4CVk7BB5IywjHeoSPfKXcSohVNeL
         koN6OSxd6vxnZHhjW6ogOARm0x+bVPQwd355CI6LNB/1jZZfnMxbT0CAPWd8QSNdgK7N
         XZdSygrzuPaGQAIXn5rpe0jJpC4PaETHujpFCcXlwBdp/w0TupPElTU31x1UXO9GD46h
         lk8Ox4LhFbZW6GTm6A4ZvyX8UFAz8JRsusUNS4V1LAFza84gxGqxnDYtWFjwDeYWfBo0
         7Msw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=5f63XloyETQIZlM9aEQE4fXwQ2Wc/odRGCRr4UEQ0F4=;
        b=tWraqZ0TeWXOtNZZqu2zBcpFxRP7nfJ8WLMeYn6zzrGeVTKhWaEJn2rYmzVh/g+0dJ
         pA5EPkh+ePsKcbeyEU3qNWL7chMCkXEUYy75/w2JBHhlVSlq9UBwa59OItWi6ADdblIV
         9w2yVKfkIsTx3DWShVQ6hYBLa7zUpuWBPaOIyBS2BQfAhMRTus08NHmmuHJrVMh3NLaZ
         dxBplqquAd1TfPI97W625HEvn9SNqZHuq5LaIXBXjZ1C9bpSdQ/JZCbysxpBlQMBiDxr
         bzhGJcJ8qNgR9KOVzdcY5Oz+ctJCWB17JTgrR1K3hA+g1AVyLNpP73qfhWencQ5wWDt2
         7oww==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=kYIWEgiE;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=5f63XloyETQIZlM9aEQE4fXwQ2Wc/odRGCRr4UEQ0F4=;
        b=rsKH4RIW5LMgiJtClH2OBqgU/vwqZfrs0iazG1P/9qRuhbafD5Htn3ftMVw/utyXpn
         5DCun5Q3IvhzH5H7x0fafPzwFVQWhaQzLGUk5hf/dv9scXLmZqv0wz9pdnwehlgV6uy9
         AmlMK72rVKtEv0/cp2/L5TWPXZ9yq6Uo6DgCT+3vupbmCi4dSWdi0eg9AuI+fCMyuff5
         QDHlfsRzRSOTjb/pZlWeFMQ6+i/YaU8gsI4YgZa8mM7XAdW6bCfy04/BvjpopjGPwRti
         EdH2EL1HUWR81owcECdHTKmp0s47yE0GHIqmUdgCgkfCTXbsgWvRKF/SHzGcdVN9NfoH
         80zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5f63XloyETQIZlM9aEQE4fXwQ2Wc/odRGCRr4UEQ0F4=;
        b=Oqfpv9H1MEBCnlCLsIWOXd5ZDSoQ3q0MaBH8ZJNKVkqj0nrYLe9kYRKiwyZZOE6LIj
         I+hDWWFMcKZmls24l4J5bKN7JjhY+1NmDszIRXLUqmLrtG2GbamikbP3/CMT99bFpyaf
         E1D+5vJjKll2ySH3q8Iq+Hq0ym3szJCK77EY70Prc6oBv5wynqMZM8Eneg8bDgQuj0wY
         RUhjLDk0u6vpDzOsCyWvYSZ23tTq7zmrLe+BcPI4Kj8s1BmftMayMb56+HMZ6jrC8bmC
         K4Uu5q7ptU6sjQe1yPUgCayLzAFkEjdakua5TyMBrszxxjaQNFYadu9A00kSAmRaWkhA
         UkbQ==
X-Gm-Message-State: AOAM530ZIih1e5aVmFIIOXyniCj3r8Ikol0g05+ECgr0j2oObtOHO1/f
	LyEG1xltBfeLzBOIx8bMoHY=
X-Google-Smtp-Source: ABdhPJysO3NjW3I/J9yZI6EarTxHlfrPj2LD0tIFoM59Ta5/Tl6tTxWKPRsoue9RyYINWy4NFgAh3Q==
X-Received: by 2002:a92:5e52:: with SMTP id s79mr10042725ilb.48.1598375076785;
        Tue, 25 Aug 2020 10:04:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6602:2286:: with SMTP id d6ls1789279iod.5.gmail; Tue, 25
 Aug 2020 10:04:36 -0700 (PDT)
X-Received: by 2002:a6b:37c5:: with SMTP id e188mr9827700ioa.110.1598375076426;
        Tue, 25 Aug 2020 10:04:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598375076; cv=none;
        d=google.com; s=arc-20160816;
        b=x+1Kn8jgdmlZn8m3B7nmh++LH0r5yMcW2w1z79NhnZvXhje+iqFIFn7YwkjzE7Tm26
         8hWSf9TTZMwJkIolk2S3uoC455yUHC7ZELdsE8mnIJc//THBLKGZpgV3+vrOd9XmHMGD
         Hk7CaOWElilrrjcYINgCu8YoOSxtiR8xh+az+GgiXYjbO+UomnBbfCFdNoRXqJi4CeM/
         xku4Hs8EKuRshkGIlo6nw3WTC8wR05wcK1KGcDn266qR/SwfmowZC8zY6+4Nw+U6JcM3
         4sXbysanh/Hta5GZ13LYfDxH+zhqyybDefMUsiyizeWSi/XLTbM/YilHaKDHIqkNVU3j
         Emfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=EMcVvZYmEYeJ+/Pz/NMptfGiARdwDh6Tm/QxCfmw86c=;
        b=KBG5vzhY+J0O7EUkDhynvf+q8zQUOChdxwDJZ8NKLqulV78Zs/BZOD8qY+JNyYrasF
         E6vi32qW3YP/wB+eyKPcdWkzhqVa3DgUQezAFN/DzjrTWPqaWo42p6tM7SA8tC1yPBY3
         XzB1D7kZ0sD9AMuZYotflJ2rrWxFxlaWTS8LNNdAkbv/ezxI2iTiS/8ugXSZCCQ2M4Z4
         kfNctapTEJlxokzMCRJEqBOcIFC8UM/GlEwneQK5497yxLZNf0rbXo4H0L8Rt/tsWQLU
         N1BW+Egbf3IQlAWegJZmp1Rf0aPPhwJ++VkPu6OG+jb+pxQlVlia1XZnzquqtNs0c2e5
         pGgg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=kYIWEgiE;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id j127si538094iof.4.2020.08.25.10.04.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Aug 2020 10:04:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id x25so7832656pff.4
        for <clang-built-linux@googlegroups.com>; Tue, 25 Aug 2020 10:04:36 -0700 (PDT)
X-Received: by 2002:a62:fb0e:: with SMTP id x14mr8777901pfm.34.1598375075626;
 Tue, 25 Aug 2020 10:04:35 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOdkHzbPjw71n+RVXuM6Wt6PNO6fiy+14QTzthF7MCkewwg@mail.gmail.com>
 <CA+icZUWvEzUhCjkMYAK22pkjshKmfE4a2y_W0sPPuqRtzXOtNw@mail.gmail.com>
In-Reply-To: <CA+icZUWvEzUhCjkMYAK22pkjshKmfE4a2y_W0sPPuqRtzXOtNw@mail.gmail.com>
From: =?UTF-8?B?J0bEgW5nLXJ1w6wgU8OybmcnIHZpYSBDbGFuZyBCdWlsdCBMaW51eA==?= <clang-built-linux@googlegroups.com>
Date: Tue, 25 Aug 2020 10:04:24 -0700
Message-ID: <CAFP8O3LQSS4BufLEPQKOk62T0d8HoZq0kQAU8+K4d4gpY4CPag@mail.gmail.com>
Subject: Re: linux tooling mailing list
To: Sedat Dilek <sedat.dilek@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>
Cc: postmaster@vger.kernel.org, Peter Zijlstra <peterz@infradead.org>, 
	Nick Clifton <nickc@redhat.com>, Segher Boessenkool <segher@kernel.crashing.org>, 
	Rasmus Villemoes <linux@rasmusvillemoes.dk>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=kYIWEgiE;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::444
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
Reply-To: =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
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

On Tue, Aug 25, 2020 at 8:12 AM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> On Tue, Aug 25, 2020 at 4:53 PM 'Nick Desaulniers' via Clang Built
> Linux <clang-built-linux@googlegroups.com> wrote:
> >
> > Hello Post Master,
> > During the Binutils BoF at Linux Plumbers Conf 2020, Peter had the
> > great idea to establish a toolchain agnostic mailing list for the
>
> You say *a toolchain agnostic mailing*.

This is a great idea:)

> > discussion of tooling related issues and requirements from kernel
> > developers so that we can list it from the MAINTAINERS file.
> >
> > Would it be possible to setup:
> > linux-tooling@vger.kernel.org
> >
>
> So why don't you use it in the name of the mailing-list?
>
> s/linux-tooling/linux-toolchains (better plural toolchains)
>
> Thoughts?
>
> - Sedat -

FWIW FreeBSD names it "freebsd-toolchain".
NetBSD names it "tech-toolchain".

I'd slightly prefer the singular form.

> > (I'm open to bikeshedding about the list name, but "tools" should
> > probably be avoided:
> > https://www.urbandictionary.com/define.php?term=3DTool)
> > --
> > Thanks,
> > ~Nick Desaulniers
> >
> > --
> > You received this message because you are subscribed to the Google Grou=
ps "Clang Built Linux" group.
> > To unsubscribe from this group and stop receiving emails from it, send =
an email to clang-built-linux+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/ms=
gid/clang-built-linux/CAKwvOdkHzbPjw71n%2BRVXuM6Wt6PNO6fiy%2B14QTzthF7MCkew=
wg%40mail.gmail.com.
>
> --
> You received this message because you are subscribed to the Google Groups=
 "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgi=
d/clang-built-linux/CA%2BicZUWvEzUhCjkMYAK22pkjshKmfE4a2y_W0sPPuqRtzXOtNw%4=
0mail.gmail.com.



--=20
=E5=AE=8B=E6=96=B9=E7=9D=BF

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAFP8O3LQSS4BufLEPQKOk62T0d8HoZq0kQAU8%2BK4d4gpY4CPag%40m=
ail.gmail.com.
