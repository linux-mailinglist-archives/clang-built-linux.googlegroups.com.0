Return-Path: <clang-built-linux+bncBDRZHGH43YJRBCGK4GAAMGQENAUPLAI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc39.google.com (mail-oo1-xc39.google.com [IPv6:2607:f8b0:4864:20::c39])
	by mail.lfdr.de (Postfix) with ESMTPS id DC49E30B195
	for <lists+clang-built-linux@lfdr.de>; Mon,  1 Feb 2021 21:31:05 +0100 (CET)
Received: by mail-oo1-xc39.google.com with SMTP id k7sf8876222oom.17
        for <lists+clang-built-linux@lfdr.de>; Mon, 01 Feb 2021 12:31:05 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612211465; cv=pass;
        d=google.com; s=arc-20160816;
        b=N1p7m/wC2obUdDSz9LLRhtWDr21jyqLumjKd4hMgKmLSl9ErSPX/TxAoENsK+7jtgR
         4KRkXdMlH9TgO7QffV8DMHwJHNqUJ7U8cjdZZcDr1Rw09RupLfw38MRfTgSflwpvSngl
         WPFZkj3XmDIIbac7Sl4K36ZIPukF9yd7ZkF8YTZXCjuGEIsKaBRPIB0UEE9X2WelaI7R
         6ocsNvpkwSCKoc8cciC69H/8D7IuPvRf6C6evMJ1vaRoQY3BXpkA5VVqS+K3SSyK7Fzq
         GIei4qSQJRfSqrosN5WdxDnnZVTf990umUbys221LUmVzTKG+wysIYhFsgZLu857BAvJ
         CBuQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=SO/Mnmyo8O4Yqueg/HXR5kbgu+IQSfZV3YeVZ39nU2o=;
        b=iS5oADUhJYwpfIXV8XWLD7s5kzK4X2C9scRaewyLS0qHRkEGavwX4OTBcE3Z/vG5BO
         datSGpzpS4KjsoddaKFa4JncZvJ93oPnKp8sf5ZRAUKaaeAQw/GHcQbnR3yFuPOWLYw1
         UusWn8Pwb0IAGz5YIdquSTTDLhEwTtv06RMn1TtvTcHuVsa/9t+X/q479hlZa3K6rgqw
         MAFqZOwTrKXmIIIyLv3J8YO48O1T4ZJlpHDsBQQzTifDvBCtBRcZj2vn49fvFmXeCuSd
         RSaYlEx/gJKQh1TuwlOKvRiE4xNsWhJjgSgGHO9GndaXLMbLOzqjdq53EKzhUxW9E8yp
         3Yjg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Nm3086fL;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b2d as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SO/Mnmyo8O4Yqueg/HXR5kbgu+IQSfZV3YeVZ39nU2o=;
        b=Isa5g7F4yH34jxxUJJ6X1z/N33r89oTCczzmUyTl4LoMc9p5WnQ7iogDZ9qgpmB7da
         nfRdeKRldVEFBQGeSjpm4Yl8ur+ZvksSSqbs4MdzWA99cK+ugZesJQaHSXnQs9zQ4zXd
         9cu2JlbXH6c3B3lbPRPYBGgvGIwRmpLPLNQavEuAUiVyt5zjDRZaT9XFrktSXwRSfpBT
         GjyZU6sgRPNRG17W8wKKq//HMcESHYqCQsf344XivuOkvNBsg9A1hgxDXvZVOiU8wUkS
         eZ5rKqDxDE7pQh/rB284ZaoOFgZFyNP48TLn0e8Mx+S37Ma45ZcV94myiicDy5eEDqB8
         QrIw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SO/Mnmyo8O4Yqueg/HXR5kbgu+IQSfZV3YeVZ39nU2o=;
        b=dlC0vx0Zxaal5DbYpoddKaB+10OdR6S8L7EcQAWCW0uxhW3GmTWaVNXeDOvun5EBXe
         MXVY0pcE2fQWXPELK5S8AYXpcl07K6bTdwPq+H+F2mFOtToAgv7qE8kB4y6Qd1636TYx
         y12eX8je7xmposOD5cWz1EArQls+FBH9U4d2wnO80NiJcCnczUyRMJ4NfHrpgYA1y4zt
         ZWSSaRYcmYdZKOthRdD3MLs/M4yBswDtDvWM4enrs6mqOnYtEX6sS5k5zs+FbIKswhl5
         I0WDstUbFnrGyIDMykcgdgFqyZR/bI1wympUiXl6IyoHCL+7y84ot4diusCaWgtnS58J
         zdEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SO/Mnmyo8O4Yqueg/HXR5kbgu+IQSfZV3YeVZ39nU2o=;
        b=K/RLQCyyK/dT9Zs3v6tZfYbQjkFS3WwnqV8piOr03KZj8m/W4YuY96xY5qXPgJ4ug+
         88ee8zZJEE9UROMpE2XFnBGAL5ssIBbtU8drwg2o0nBsiXF6pDEQzzC2kW70sz70e8+h
         KY8R+h2lVGDhZTQy/dTr8sU08nkMhETHLZoPl5SlPrdVKFI0BmkMZsIZcrqctKbNjptO
         MQgKXV3GRbsWKWRcS4rzSDZkznKcTXY6iEzQ0d4sLPcjSfuP6hkJBr/Zl5/A5b8TrGn/
         qPssIhMvkCf8cUNBLOKZORFyaUvtnbSfR13lzhjm10JvlwcBRKUlOI2m+bCY5SEUlH0e
         1+lQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Oo78/jGy4Qc//MXaKLNFaw0aEdtmOum7DVX9sXq754Xbfn02s
	26C7b202PUkkpanS3IO/zdM=
X-Google-Smtp-Source: ABdhPJx/N1ZKhSt5Zvl2wTPMK5n3ZnAzmsL5xEEXf84wsTxg+Py8DW+MHpPgh9i/TuiF585rsV0n7A==
X-Received: by 2002:a05:6808:145:: with SMTP id h5mr452162oie.87.1612211464848;
        Mon, 01 Feb 2021 12:31:04 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1e4a:: with SMTP id e10ls4282778otj.7.gmail; Mon,
 01 Feb 2021 12:31:04 -0800 (PST)
X-Received: by 2002:a05:6830:1dc8:: with SMTP id a8mr13138451otj.26.1612211464322;
        Mon, 01 Feb 2021 12:31:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612211464; cv=none;
        d=google.com; s=arc-20160816;
        b=hRT6JxiwEDm6D27gbonJywl0chRDKiQ2hNbikD879mvNKPiQ3KR78HPZ9Tfi5GNGm9
         qbMg/5m04Q9dfzkznC7oRaFoPoCiKz60nCI9mKRNhcpvkED9vbJ3r+fLDZvsx0ch170a
         8zRx3pTUpU5tyFAQgFFQ+PGkO4w3bB6HEzPTWq1opvwhss34gagaUYw65ind3bQvVY1j
         SndMoG5Nxt19FMd0dlqaMdqlSSC1fKuxmIpIUM6hvmHKrNSMECsMxWaIzKmBeDbcoE9n
         Dtb28+EuXHy3y5OdPbFt1jOsNkvYOcVCeb6zDAC6dwteKomU2KoWP6N+m32aq8W9+7Ew
         czPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=J1mQYNuWMgMXC8DcK6FLAJGsEbMrh/ZixKrwoHEnqdc=;
        b=KkhLV/j5lvTqnEPeAW24cbBIRWAEAvGhJdh9Ahw7FAgl3N8+/ff69Hf1rFDulsctuI
         fVerIz9YyG9VuqhUIv6HftUhzD+bwsR0tislzo6h4dP+yy6kWnRnjQEypkZ+p5KeW5gY
         BhtZk0h5Hv0XHImaZgWM+TL9/JWkEArjWO2RLq0etlK5nlched8z9IvW14961K+EOrAv
         qihh051AtWOiehce9l4Ca1BAmgnB7AQmKal/Idrygnp6RvlZLqwF9f8ygl/QhNwZAzUo
         C9xuNQl3cEVwWaPn4C6q+rGxZIrK1D2q3HOzxoYr1G+QrMK9kdp4uwKbJWjgu8RoOWBF
         VPjg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Nm3086fL;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b2d as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb2d.google.com (mail-yb1-xb2d.google.com. [2607:f8b0:4864:20::b2d])
        by gmr-mx.google.com with ESMTPS id x35si323738otr.4.2021.02.01.12.31.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Feb 2021 12:31:04 -0800 (PST)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b2d as permitted sender) client-ip=2607:f8b0:4864:20::b2d;
Received: by mail-yb1-xb2d.google.com with SMTP id q201so14612609ybg.8
        for <clang-built-linux@googlegroups.com>; Mon, 01 Feb 2021 12:31:04 -0800 (PST)
X-Received: by 2002:a25:2d43:: with SMTP id s3mr11983364ybe.33.1612211464067;
 Mon, 01 Feb 2021 12:31:04 -0800 (PST)
MIME-Version: 1.0
References: <CAKwvOd=5CWsfW-UY-k0ocTwLV0nLq3sUVVmFvNPLmTcqFxTz9Q@mail.gmail.com>
In-Reply-To: <CAKwvOd=5CWsfW-UY-k0ocTwLV0nLq3sUVVmFvNPLmTcqFxTz9Q@mail.gmail.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Mon, 1 Feb 2021 21:30:53 +0100
Message-ID: <CANiq72k+6vxpxNPKFJH+thWG7jwgLXnMZ03pU+TZfuHjOphSAg@mail.gmail.com>
Subject: Re: "ClangBuiltLinux: What's Next?" - Nick Desaulniers (LCA 2021 Online)
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>, rust-for-linux@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Nm3086fL;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2607:f8b0:4864:20::b2d as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
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

Hi Nick,

On Mon, Feb 1, 2021 at 8:28 PM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
> https://youtu.be/GpiWVXKs9Z0

Thanks for the Rust for Linux slide! (Cc'ing the ML).

By the way, since you mention it in the slides: I am on the WG14
committee, so I can try to help anybody that wants to bring a paper
related to the kernel. For instance, N2631 secure_clear is a paper I
am working on to give C a way to guarantee a memory clear which is
used in the kernel and other projects (and we had bugs with it in the
past!).

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72k%2B6vxpxNPKFJH%2BthWG7jwgLXnMZ03pU%2BTZfuHjOphSAg%40mail.gmail.com.
