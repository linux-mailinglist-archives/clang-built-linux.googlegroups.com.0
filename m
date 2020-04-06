Return-Path: <clang-built-linux+bncBDHYDDNWVUNRB46HVX2AKGQESGM5VBI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x339.google.com (mail-wm1-x339.google.com [IPv6:2a00:1450:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F0FA19FB2A
	for <lists+clang-built-linux@lfdr.de>; Mon,  6 Apr 2020 19:16:36 +0200 (CEST)
Received: by mail-wm1-x339.google.com with SMTP id p18sf29214wmk.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 06 Apr 2020 10:16:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586193396; cv=pass;
        d=google.com; s=arc-20160816;
        b=Spp0lem/pNC2qIWg+B+KPFKd/hkc74IMW3nEXJMGP/ZIR+CZo6jweqojwKNx49zwMY
         hbf42h2oiu3my0uFt4ZKD6FpqocAyejFo7mJOCjNiG0eBfqyMUen2rHhOnX0Vh7twZ7i
         7la6usucOL/yhiaqFXhD2XV4GaVtpy6Yb6UroYtWgh+PtK1wIb9nAGTZB29apcE+mhYQ
         QMSo9escYd/rp13cuUqCytTBbsuMGmtmqe0q5kkjLBSDGNmanch0aJuFA3ED9w4XGKe8
         7gltj4oOXP+Z2rVxHDle5XuApGioFWil7lqVIHLiKDCfkQk8y3UE/YKqFclqY4IG28z6
         l4yg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=1D6OXLX86g5Sz10XgCvs8oFxq3Dm6yUoEYT8aXYeiAU=;
        b=gMoKrJCue5LSUi7EEq8zLMItydqwjgG2EwW8v3uyGWSudpKDt+TUDkcO1E9v7F+fEE
         bEkMugbNSany3jMf0n2lMwA142vSHKVo/BBpaIXgE8kT73aY8EcPQYMHFreVgD+++2Rt
         KTC60Moz3md4sbfkaQBmLN09cl4vaP5QinMBl6K27zAJ1VZ5Nb9o1PtGkJZg3gDrweF0
         clgjM2TM+yeDJNl0NHbo+c+6sfwQnQ570zoXfQkTO39CRfIFx3nJPoDxtsXivHSsBc2w
         cDwsC0wRo3kKqb/R/NUVnty/3bXn3m8cr14oqdBgK0hxvifSfL0V19YneFQApPDh5ij3
         HDZA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Wj+SDSAD;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::32c as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1D6OXLX86g5Sz10XgCvs8oFxq3Dm6yUoEYT8aXYeiAU=;
        b=rsJmxQdN3dWnVoJuEteotJhemKzLFWrRSlpZhuKgepw0Ul7FaGCkX7P0CNjmSngfgP
         sOVX6tlq5FCfcltbZ+1KWGWJsxAaAYYKes3s4t1TTR9rB0094izWdl1VJ/G7Raf/eaPh
         13iUkaqyOXkS4fHVmA5nO7gqMesjeTXY6et7fGCr3zQIdfqgHgk1+ydqM59U6yvDEJOM
         XujwQ7LXMs8d8RWAxV98+2oKRP2EFr3IBwn5vRJUj2OLnicYecVBVJuISU97ACYXHkxc
         DHoBM8Y/Y/Nu9czaBAWbS/cDLU8gwuHXjEoujtJ2drtYolcvNrHkgfjQJZZh9XtvJyxt
         r23g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1D6OXLX86g5Sz10XgCvs8oFxq3Dm6yUoEYT8aXYeiAU=;
        b=jJu1hL8TanpW5RxLEKkXExm4XRtXsL1gaWSBn3D1Qs8EvPRZ+jkocGaqoCei29UMd6
         a/hjR/X3MFmrxXhmhW38DB/wpbCgU21TFplpbQtBtvWUAsSoomqIgu19IhpxrnCCXUjv
         KvQRA2AKEL2jmeijxKjyo6qqEeE0d5JtlFIk3LoKVVc2DA1+XecYDI91YNGrbRoAUPbR
         X8OnKodUvp6EYv44b8SYQtu9tJt7jWLN5iKSsUBnf8Z6V3G6eJdAtPDmcsrCMrFkAnY+
         1ZN8Od6qnNrMvaV439jNUKiA46r0PmzS959GWu0zBuMna7mNWBjXHDGifgNPIN+q8pR8
         TzXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1D6OXLX86g5Sz10XgCvs8oFxq3Dm6yUoEYT8aXYeiAU=;
        b=Cj84dmnG4Jx1aFXRvUAP49fua5cYuF0WsNNdm4x4oCy3A74kyuREgWP4mjY00K6uFH
         SKjuZ7p+ize5WL2nW3xBflnh+V7xH/xM8MeulyagYvyOkXO7sMcQeJkk9nAj15ametcu
         e0J42dB16Q9k4gKGR2afj+7Z2BaCPHwRKDLBfZa6W+w+oGMLhtkkry6KL3gtuAsvxsHn
         ymkW35iPlwOgnKI91GERlISWb+NEcWD54tkfbg5y3Ufgd3/ypCbI1px4nwOkd0fsBOOv
         bPj0yJ3D3pTjao5C3pfkELn3vK5tI4PzEHdxntDewvsqjRDMgQJY1mGaWoddP1pSKOnC
         GAAg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuapxVTedZN77sVV5Xn6e2f0/LbDZ932oGaI+wont3A3RKTyZ+BQ
	1fmWf4KnlEXilzPOQ2Bm+YE=
X-Google-Smtp-Source: APiQypL6x+VDRyCjLtBs7GT1NaHEIGDXaWg6obJ+9P1U6eS6mn7cUvZNaw41q+JTXguptdJfKRcDtA==
X-Received: by 2002:a5d:6804:: with SMTP id w4mr272963wru.10.1586193396009;
        Mon, 06 Apr 2020 10:16:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:dc86:: with SMTP id r6ls102136wrj.5.gmail; Mon, 06 Apr
 2020 10:16:35 -0700 (PDT)
X-Received: by 2002:a5d:630e:: with SMTP id i14mr243516wru.260.1586193395390;
        Mon, 06 Apr 2020 10:16:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586193395; cv=none;
        d=google.com; s=arc-20160816;
        b=Ru5o+8F+IfalMKW4p3Biorym5baQkUydR3pZWRl+Z2cN54AooiBeSCYnrlYO5kgeD+
         mt0LAaiko0ytSelCf5VKR0gRVfpUayk5W7gldBiciqZ6m24TO4KwFzOlxGuNU/O9KBru
         Za8PvauOKuqIobNGz8vpxkSfjwf5qxxyABZW0g+iPeeuo/tszpYupjaf/FSGP6v59yI6
         A2HrSPWszKvR30UDre9kO3s13TE8XokCQ85XxcjILyzrxysT+hz7MJj7DI7qKcj0I4Qq
         I7UJGZtXCUOb4qFvMe55vj54cJ2H0s8AJESppJky8DRrXiHjj/MoU0p6rKLAVhccJ4DO
         k3NA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=CzRBAOAMYJuyPy7PZLgbEkZplP6HezYTbWEQVHBWK0I=;
        b=AMQ3L/IIe8FblKWuTLwlx/wzpr/EYWxRc+nPDzW6AexaK5fVlEqUBbPnEaM1yrvnMQ
         uaIcixJzz2cimyHX6PcFvMdpT2gCJr8cvd8pKTWjE4mj/9L34yqZr4H1uoh35dKZHFfl
         6pyiATV8ys3GC5hDpLbvIv4kOaw4344VNhiUP3KK4dGZWJOT4oohbm/ffLrZ3zenkcPm
         +1I5+O7eAkBmGR8lzb1kuq4QpViKb8gtUoezwwas4WD26mGHlvLYaS8dNN1VnXBFnwib
         DJjxF3GFI2fB556nRVHW7aAznLZJCPi7Lt9EsSiwxdk91M/sTtrr/bX3btdcvYIU+ja+
         MNxw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Wj+SDSAD;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::32c as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com. [2a00:1450:4864:20::32c])
        by gmr-mx.google.com with ESMTPS id o125si39791wme.4.2020.04.06.10.16.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Apr 2020 10:16:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::32c as permitted sender) client-ip=2a00:1450:4864:20::32c;
Received: by mail-wm1-x32c.google.com with SMTP id h2so183466wmb.4
        for <clang-built-linux@googlegroups.com>; Mon, 06 Apr 2020 10:16:35 -0700 (PDT)
X-Received: by 2002:a1c:41d6:: with SMTP id o205mr381544wma.122.1586193395125;
 Mon, 06 Apr 2020 10:16:35 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOdkenhUMJB5dMo2HxxR+-fTs2h1udQfLj0UJy2Lm2rrp8A@mail.gmail.com>
In-Reply-To: <CAKwvOdkenhUMJB5dMo2HxxR+-fTs2h1udQfLj0UJy2Lm2rrp8A@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Mon, 6 Apr 2020 19:16:56 +0200
Message-ID: <CA+icZUXFaaZ4vuOHKd_J_QNC9CW8+10-pMZ35jLxRCDwiEQdfQ@mail.gmail.com>
Subject: Re: asm goto blog post
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Wj+SDSAD;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::32c
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Nice blog-post, Thanks Nick.

XXX: Missing Tag: "Share knowledge - aggressively" (Intro talk by Nick
@ CBL Meetup Zurich 2020)

- Sedat -

On Mon, Apr 6, 2020 at 7:01 PM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
> https://nickdesaulniers.github.io/blog/2020/04/06/off-by-two/
>
> --
> Thanks,
> ~Nick Desaulniers
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkenhUMJB5dMo2HxxR%2B-fTs2h1udQfLj0UJy2Lm2rrp8A%40mail.gmail.com.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUXFaaZ4vuOHKd_J_QNC9CW8%2B10-pMZ35jLxRCDwiEQdfQ%40mail.gmail.com.
