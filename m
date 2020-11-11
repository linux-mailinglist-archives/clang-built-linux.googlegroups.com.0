Return-Path: <clang-built-linux+bncBDYJPJO25UGBBW7EWD6QKGQEIHQHQLY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id D03E62AF888
	for <lists+clang-built-linux@lfdr.de>; Wed, 11 Nov 2020 19:50:04 +0100 (CET)
Received: by mail-pf1-x43d.google.com with SMTP id y62sf1940550pfg.13
        for <lists+clang-built-linux@lfdr.de>; Wed, 11 Nov 2020 10:50:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605120603; cv=pass;
        d=google.com; s=arc-20160816;
        b=HlO/D6tIYLY+yxVlKkgXWtrsb1ft46FgPqm4wpcpzjGGlzxzcTNon2QkW6is7P1fVc
         NmCYx+ThJhRu5XnQJRcWsazj4xYIjZuSXIkeF2JFmNH40bcI/ozJRQbPMn9gnb/D7OA1
         AYAJ+5mTyOiol7NAAV2V46ueEScgyveQzt3mUOJTqcnznkJhrnHV/OOQKKrYc+WtTq0k
         O8L37sMj/v+LcJpdrbMaTPuBZM2jxGa7zVSU1QGwK8h48ZRPT56WbB/sYTecYm/h815B
         cHAjQ+/yD1uu9vO9bVKoGJJEWazCkgrChWtYstlHtVWu8AJr2EUwv1saoVROJOXa3daS
         IAww==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=GfRl4b4ld3DSKJZnpszR2DFAQHgESPrVNoWNTyUJ8OE=;
        b=V4J8zRDyqTbn+Ek48ywNE62YRy9sCf3mBU9ZcVf6eMiagM2DHoNt/JHVYoER7tOLa/
         Ujg6kMFVPipRSPT/Rw3a1eq9xinem503SJkpvX4fHq7iWVUqWLzPNQOALE3ibk73hUy/
         V4V2lj2qt56NUcHOWWyoOYYGdHT5L+5k7+5G3ASgxyo9Z7hkQHInnrpeRHngQg77834n
         mgaprE5FOBd6/yXTqDKbibzCGWY2lYGPYGrv80t0BZrbHN11Ui33H7OmXA5L4yeGjs2q
         p8M684loLTXHJ0emKmXRXj6Csgpuv1qdLKTqnDVRRzxpOR9lzPXkXnVHiIfDGosVvAtp
         8m6w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=egnrDKow;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GfRl4b4ld3DSKJZnpszR2DFAQHgESPrVNoWNTyUJ8OE=;
        b=L4bLdUPEXW3q+TElPU3P8GQa2w6o7kr1EFw2Ey6o2H/bOo7aU/X4o0ANEmUmDRbx6g
         mx3ocHCsjYnXhA2AgHfBP90grUEdwcm95afy+pO711sGFNoQtwi5fkA/Kz6jNfTWnDYy
         YjOWngYUBPN8zx5g87De8kI/ngc56me8tFBAMSNIE5X60pqvq10v0FilUGFjCvEqvJqs
         87h739SSmEJEbFXZNkINmp/GW/+VZYIZr6pF7L/ySTsAcbjJvJqV/kIus0euY5E5de5V
         AM4TCMhVTxfmGWBfwJcpmzUDPwGNVHkeHB/h7llsy+ir9K6zHi21S8MRSyIxLppe+3oc
         kyUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GfRl4b4ld3DSKJZnpszR2DFAQHgESPrVNoWNTyUJ8OE=;
        b=hfzu8a6LRLOBYE6wa6hWl6/EJT0uzy/Tbo3YTCwo89YdsP09zT7EaSolox+CQn8Oms
         unbNkjSFRQ4LYWnXf5BX8VVe9P++AkAW7457fiTcqx912xvc7TIPWVcxYvBvab1hbIdo
         Ho/fWHHtU3z3/eYHLCXNeiBaUOCBo61MvVi59RBWF8+4xJfzPZnAxMCz3Wxf1NqYSi2e
         zMjdF1klJ9DV0vuQnOFg3uuVoXjUDx4J139LAHH7mHm7hio829Ig/eA0CIERNmNYmLwJ
         3c8ZQ6ncbA7pWFNNjgBtnoqTdeCfrlp6NE6yVD2eRQH9T10ryasIof72DyzYM0XKgi0b
         mNrA==
X-Gm-Message-State: AOAM530z858WKY+Mq2nzXl6CDPJF4bgLXVaa+c6gygZSiO1aZtDNBudt
	UynxIo/tcwlKTtMBynjoemA=
X-Google-Smtp-Source: ABdhPJzoaDjBY5GlUua7QLtp7KeqHZ83812d5R4MJiku51v5P/AqVNj4ZDCByxfGU/b2O+bensP47Q==
X-Received: by 2002:a63:174b:: with SMTP id 11mr23323281pgx.57.1605120603515;
        Wed, 11 Nov 2020 10:50:03 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:f601:: with SMTP id m1ls196258pgh.4.gmail; Wed, 11 Nov
 2020 10:50:03 -0800 (PST)
X-Received: by 2002:a63:450a:: with SMTP id s10mr23115792pga.275.1605120602988;
        Wed, 11 Nov 2020 10:50:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605120602; cv=none;
        d=google.com; s=arc-20160816;
        b=MGl/eYDjlCO3f58arJ7pP1GHNHtwdGihx43YIWng6QihqgBdwHe/Kc9jnZRc9lBEL2
         Q86LYOgvBWPphfs+A5QXfAFhFsGJ0QuT8YGQM/BUT5Ar8zXIOyOyHwZsNFlNY3oxRS4w
         NA7wJW0h4Xi+9xjKKYGgJYJP0tiFi1Ii5IWDVgUaXvKS30C+U5EFxse+laVBT49G4pkh
         mT3ACC4Q7glzQder5eCB0q/5Tr0q89JaEN39mH8Q/PeaedG0R+a9Ld8K8RPkdVLUttNJ
         GTgb6xLpOy1/qtPNpgMBJ2B1F8cFw7mkGV1fsvHGX21er4UcHWuXUwaWcGG8Gzpl8SPq
         FCEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=EmdzfbJkdeTnnwIy7Zni0LdSsWhWYRqsu4Cs1XV0d7Y=;
        b=ax3BmGjwzMumwc17CNVHWhsfKjmPzfMt98jMEE9haKwiTuc4y8BeCYBtLEKR1nMoiO
         WMZecHAffUM3vBjWGz91T+HydBYsH93y1B8qSJFbiWoNpMPmFJ3GjsNwFdyswPPuPwZz
         MI7fsSrC8HohTS75CrgIZWtvW8DGGkXo0ANHtLGU6NT/TTI+9vdDQG0or8+KS26g6S2q
         Ue7SX+hmLYqNzFTwTRLRgmBiCeOUO3kO/acU7C/vQsBY+FbLz1Zr6eoezCmbConUDKaJ
         vNCKIoxPv95lMhFc3DVcMAkw5V0jAGK5O+/SsHhCPPvqIBsJzjLpRAWK0b97WPSObxiF
         pUaw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=egnrDKow;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com. [2607:f8b0:4864:20::102e])
        by gmr-mx.google.com with ESMTPS id m1si182586pls.4.2020.11.11.10.50.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Nov 2020 10:50:02 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102e as permitted sender) client-ip=2607:f8b0:4864:20::102e;
Received: by mail-pj1-x102e.google.com with SMTP id f12so1148108pjp.4
        for <clang-built-linux@googlegroups.com>; Wed, 11 Nov 2020 10:50:02 -0800 (PST)
X-Received: by 2002:a17:90b:110b:: with SMTP id gi11mr4994290pjb.25.1605120602570;
 Wed, 11 Nov 2020 10:50:02 -0800 (PST)
MIME-Version: 1.0
References: <abbda77f-633f-4564-93ee-ba33fee8ee47n@googlegroups.com>
In-Reply-To: <abbda77f-633f-4564-93ee-ba33fee8ee47n@googlegroups.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 11 Nov 2020 10:49:51 -0800
Message-ID: <CAKwvOdkL08ZRiPRhvnO-j3e9ewLOOuJUDTxOwPSYUNGjymuYXw@mail.gmail.com>
Subject: Re: userspace
To: Itaru Kitayama <itaru.kitayama@gmail.com>, Tom Stellard <tstellar@redhat.com>
Cc: Clang Built Linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=egnrDKow;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102e
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

+ Tom who's in charge of the https://github.com/ClangBuiltLinux/userspace repo.

On Tue, Nov 10, 2020 at 8:13 PM Itaru Kitayama <itaru.kitayama@gmail.com> wrote:
>
> Can someone tell me the selection criteria?
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/abbda77f-633f-4564-93ee-ba33fee8ee47n%40googlegroups.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkL08ZRiPRhvnO-j3e9ewLOOuJUDTxOwPSYUNGjymuYXw%40mail.gmail.com.
