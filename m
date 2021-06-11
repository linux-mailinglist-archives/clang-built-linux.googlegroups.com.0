Return-Path: <clang-built-linux+bncBC27HSOJ44LBBJFMR2DAMGQEWX3UDQY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3d.google.com (mail-qv1-xf3d.google.com [IPv6:2607:f8b0:4864:20::f3d])
	by mail.lfdr.de (Postfix) with ESMTPS id E68813A4731
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Jun 2021 18:58:13 +0200 (CEST)
Received: by mail-qv1-xf3d.google.com with SMTP id q8-20020ad45ca80000b02902329fd23199sf10744766qvh.7
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Jun 2021 09:58:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623430693; cv=pass;
        d=google.com; s=arc-20160816;
        b=kNv0NM1+E+OqGiLFuy48XTwMF29n3lUEwi3Q3T7p1ELzIdy7qppqb/5mDQpbgaORq5
         QHDpI2UmzQA/QnHRxenehm1MJo1oPPgK5KF71QdM0cE+CZUkK5OwQ6KeG0thPoHkwOUu
         DJYzraI/R0O5DN56yZSOOgmbbVTQokE9amjNRjFXWvz10xkBy2xLrj7h4Il+YA9n9IVm
         euUU0gWYOnHCM4vetjapxrwhXa4YBkvK2uRm+chRQIN1ROQiFHSsTVo0OYSzAlX82Ymx
         cU0FipEz7pTFbjRnrxFJugxPlYJybd/Awf3/HhNxKOijwUVEom576xU6FFyoCfAqB5qn
         5XtQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:mime-version
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=tDfZ3KJeFBVihIwa9pGRL6C7ilaQq6gafsA8G7qpIoc=;
        b=q9unYTj/gook6hwuDT8lBD2XEwW+PReU/crqQydGrWu0751zrJsWZ2mblYwWPYCUyV
         gfyTylVIbzp8qy9yVUxZDI67NIyq1rm95zVfRt75a1nyfGXTSNGfX9Nq1Z+FjkxhotRF
         fYSyNt7xCjDnhe3WtEPFC4pgNQigPN4GWmfr4WVY6U0xI5Yqty2p3nPKZFiEs2ypUPWE
         okX//ewbYx0FFbnujGPUxqIencT8iL5YjLbBfJk7IbRCePoACqgcGMTIC66/6+SrUSf9
         Ie9DuBNgvAZeMtotb0zWHqs9LhaCkEOgBbhzW3CQMQ0qRk6EPscYVfyxALnveWYeHwTJ
         Zo6A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 185.58.85.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=aculab.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:mime-version
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tDfZ3KJeFBVihIwa9pGRL6C7ilaQq6gafsA8G7qpIoc=;
        b=TjaMK1tpxv0ogboX1v2ETx3P1wqnyDMiIMzD0HcpUbpqC2m2lkk762BDX2ioUdHp64
         M/c7FmIIqkXB/Bkq1hJkK4hw2U9Uki0yJH7g5PfmShTBkXoTcLqikU2EPCmDVx2eAKGn
         QKPZ2HESHm7z/ZUTQiSK2Cw8Wm3/Q5uwLsl9gOngi80CTJpZkdk617yJZ1BUZ2rmlQXw
         KC5TKjFa5E+JzgEx32Md6sau2/a1c2OfaaXLq6T6BnNh+k3jv7sFWQnS+VVRfSDf5lUq
         a6jS7Dr/zS+aOxzCQdDsfFN78HBTnrw/NUrbtrBjneDei6eXcYeMNZNaKW22CMAe+pNG
         XHHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :mime-version:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tDfZ3KJeFBVihIwa9pGRL6C7ilaQq6gafsA8G7qpIoc=;
        b=UkYVRqdnKjy28a6o7gjj3394PvNFbb9kisrtJ8xhQOf3vB7BVmQD4n5zP4QUhhXhdu
         AfwCzAFvin4vuIw9IcBM7lD+eyRdGzt6jBkFRwGa4ODPOBgBVWF556rS6A/Kk+LOcvDB
         Gw5vdg4RXK6Xd2NP69duCqqT9BE3ONk83lDqBCBTJZa0PcNqhupEZAFuVMRIh9nqjYQd
         0NTGH8YU4+luZtK1aZhrtptIOhYKUX2dRAgaLgIkcNyuD/8LCTSgCsUSZeXNYXXkDdXM
         GZkoxecUW87EnauKAeDYjCoipo8lhSBhly5bIzlm9apQYnNBkM2yPAf7NNm13+Kfue1/
         QGOQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530SwidqsBuq1kbdV4QmeD36VZxv+siuTtRms7jq8rOuW/qcD6Mn
	ZkTgv7k9W8mrQyDJKry42+I=
X-Google-Smtp-Source: ABdhPJzH9G8cgn+FleU44dGy1uSVWNT05gT8WBCZBNJr0vhGpq1P7nfFXIweO7p2ClseeOr58ZURpg==
X-Received: by 2002:ac8:7659:: with SMTP id i25mr4846855qtr.145.1623430693065;
        Fri, 11 Jun 2021 09:58:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:5f4e:: with SMTP id y14ls4648792qta.5.gmail; Fri, 11 Jun
 2021 09:58:12 -0700 (PDT)
X-Received: by 2002:a05:622a:100f:: with SMTP id d15mr4695079qte.289.1623430692778;
        Fri, 11 Jun 2021 09:58:12 -0700 (PDT)
Received: by 2002:a05:620a:2212:b029:2e9:23bd:b183 with SMTP id af79cd13be357-3ab436e3eeams85a;
        Fri, 11 Jun 2021 01:08:00 -0700 (PDT)
X-Received: by 2002:a05:6512:2304:: with SMTP id o4mr2043004lfu.537.1623398879909;
        Fri, 11 Jun 2021 01:07:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623398879; cv=none;
        d=google.com; s=arc-20160816;
        b=fNn9SY5oeXciSwgA6g7iY3Yb8bBWRVgnugCsR3oJs5qlwiME/U63XLCsahe5RIO157
         6SMOugWhxHt2HjSHOqqT6jrMK1sQZZpcT9MAS4akNmxoFKOubM+iwecQJ7IXEtEuSM5h
         jDAA4By2J6jWwnA95iu+WfditZOKXId+MP2xoSjYy7XdYGIyBWKDItYAGenInwYFhBZM
         Hl56bYpwoYotXxZ6qyC1oQs3B2KCdKF4tTHu0bK0d339083py6NMNhPmeAX2N9x5Ntb6
         cB9gKQw3aRl5PbEoLRHeqkIP+7gcN61SM0nlkpr52ampbM0dOpwyWbKuiS9EU195TyyX
         jO5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:mime-version
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from;
        bh=v9Po6XHUW6xiMtWcNlig/3y7K3v1uRC0Bxj8+DiK19M=;
        b=SWnuNwOfHZNWkNvVYD7LBueVbzfIKcGiJwzBUSr9X/BLfyrDmob5LiiNd1FV/kMGJF
         IHZexBdbyOlym5JHyGxfS2HMTGX98QFGzTRy3HONXt/daqIoh6P8m7h1QNMN4fFNy82n
         xeVz5T/sbC/pS6UbTCw6VskjuIlOb9ZGgdfOxaCYZ6paHXRYP7ArLg4Xtz66HQfYkYNA
         22bWATUz8gJd9oXZbuXo/oCXZLOj5dMuW53PZlddmYZhQBLhAJn+1oefNTdtUJKRRwfS
         1BVYn+I89hmZoMZI7+xN7DGZDnTUXyFHhvB8lCm5Wmtmh/5wXf2lnM6ySwhE8J11KrUf
         qZfg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 185.58.85.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=aculab.com
Received: from eu-smtp-delivery-151.mimecast.com (eu-smtp-delivery-151.mimecast.com. [185.58.85.151])
        by gmr-mx.google.com with ESMTPS id g11si209361lfv.12.2021.06.11.01.07.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Jun 2021 01:07:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of david.laight@aculab.com designates 185.58.85.151 as permitted sender) client-ip=185.58.85.151;
Received: from AcuMS.aculab.com (156.67.243.121 [156.67.243.121]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-206-L8ys3hEWPauhtMu7NFL4nA-1; Fri, 11 Jun 2021 09:07:55 +0100
X-MC-Unique: L8ys3hEWPauhtMu7NFL4nA-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:994c:f5c2:35d6:9b65) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:994c:f5c2:35d6:9b65) with Microsoft SMTP
 Server (TLS) id 15.0.1497.18; Fri, 11 Jun 2021 09:07:54 +0100
Received: from AcuMS.Aculab.com ([fe80::994c:f5c2:35d6:9b65]) by
 AcuMS.aculab.com ([fe80::994c:f5c2:35d6:9b65%12]) with mapi id
 15.00.1497.018; Fri, 11 Jun 2021 09:07:54 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Nick Desaulniers' <ndesaulniers@google.com>, Tor Vic
	<torvic9@mailbox.org>
CC: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"nathan@kernel.org" <nathan@kernel.org>, "tglx@linutronix.de"
	<tglx@linutronix.de>, "mingo@redhat.com" <mingo@redhat.com>,
	"stable@vger.kernel.org" <stable@vger.kernel.org>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
	"x86@kernel.org" <x86@kernel.org>
Subject: RE: [PATCH] x86/Makefile: make -stack-alignment conditional on LLD <
 13.0.0
Thread-Topic: [PATCH] x86/Makefile: make -stack-alignment conditional on LLD <
 13.0.0
Thread-Index: AQHXXi3hDa/SX38CoUOUtr2ZTdzJmqsOdORg
Date: Fri, 11 Jun 2021 08:07:54 +0000
Message-ID: <6c8315ef3ebb45b59dd531c634bcff48@AcuMS.aculab.com>
References: <214134496.67043.1623317284090@office.mailbox.org>
 <CAKwvOdmU9TUiZ6AatJja=ksneRKP5saNCkx0qodLMOi_BshSSg@mail.gmail.com>
In-Reply-To: <CAKwvOdmU9TUiZ6AatJja=ksneRKP5saNCkx0qodLMOi_BshSSg@mail.gmail.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: aculab.com
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: david.laight@aculab.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of david.laight@aculab.com designates 185.58.85.151 as
 permitted sender) smtp.mailfrom=david.laight@aculab.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=aculab.com
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>

From: Nick Desaulniers
> Sent: 10 June 2021 20:21
> 
> On Thu, Jun 10, 2021 at 2:28 AM <torvic9@mailbox.org> wrote:
> >
> > Since LLVM commit 3787ee4, the '-stack-alignment' flag has been dropped [1],
> > leading to the following error message when building a LTO kernel with
> > Clang-13 and LLD-13:
> >
> >     ld.lld: error: -plugin-opt=-: ld.lld: Unknown command line argument
> >     '-stack-alignment=8'.  Try 'ld.lld --help'
> >     ld.lld: Did you mean '--stackrealign=8'?
> >
> > It also appears that the '-code-model' flag is not necessary anymore starting
> > with LLVM-9 [2].
> >
> > Drop '-code-model' and make '-stack-alignment' conditional on LLD < 13.0.0.
> 
> Please include this additional context in v2:
> ```
> These flags were necessary because these flags were not encoded in the
> IR properly, so the link would restart optimizations without them. Now
> there are properly encoded in the IR, and these flags exposing
> implementation details are no longer necessary.
> ```
> That way it doesn't sound like we're not using an 8B stack alignment
> on x86; we very much are so; AMDGPU GPFs without it!

Actually, give that LTO is still 'experimental' is it worth just
removing the flags and requiring clang-13 for LTO builds?

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/6c8315ef3ebb45b59dd531c634bcff48%40AcuMS.aculab.com.
