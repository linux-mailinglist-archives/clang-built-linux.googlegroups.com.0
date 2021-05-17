Return-Path: <clang-built-linux+bncBC27HSOJ44LBBWGTRCCQMGQEAI3EZUQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13b.google.com (mail-lf1-x13b.google.com [IPv6:2a00:1450:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id A0EC1382710
	for <lists+clang-built-linux@lfdr.de>; Mon, 17 May 2021 10:31:21 +0200 (CEST)
Received: by mail-lf1-x13b.google.com with SMTP id a13-20020ac2504d0000b02901cc23500e8esf773939lfm.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 17 May 2021 01:31:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621240281; cv=pass;
        d=google.com; s=arc-20160816;
        b=g4+shDaaw7WukGGQlx6H3huf+d6HMy4fHlgMn+xfOMYLKzcA/BrbJ4PE9EpxRk5a0e
         l6+JaL7NHWPoI9SV1LrQ3+SwwvfwMC0RYd1/bPE8vBzvQFPiJ3RqONEj7vAPH5Y3TfqB
         9zYnxKkdOSnziL3/fo2YM+bEGzihBFwyKJI34z7lY893KeSOhPVuy7/drKzMrFhBWoZR
         lI3HbzDjeYxMWvliffhufiZLWdwUGuApF1VgEyiCrQFUUMA/8EDvuXsCha/QprHAzVfR
         PMqHZron8g5wmkn4heBQxVPRGGi1ai8i4tkoFMT74HaBRmjRWsU2CAFZquahWIF1eFWW
         phEw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:mime-version
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=2eL1tPIDRFkuP/R9NYZ16/aaeafGZ+gqyWzdt+ulGAA=;
        b=NrSFdF6JPwbaPBXzz0solSN5m01VtMB+QoTQrYchdie7LwijfoETuY7J+7BN6djGdW
         fRKdLk7EbUElk4sDZfQ5cP+mGtrJh94pOz/t0Vrkrk5nv+0zk/4NbQ0AAiwNiy7RNq6A
         RMkdQ/cb4fcJ0OVrf5lic9MSWhEGtDpalRChAUmYxwUSXZQF/E7Jbu/H+3syIvEklvxV
         wzyudKoflvzreQ07AXGUwdykhrS8lD32ptTT14Ij3DFEJ0eQ7upLPoAkn8XwxRmDZBs9
         2soLdDW+B91woYHGs3Fc25AugYBpYVWzWhdt7Ie4ccG5PuE8pwfIE823tD1NevbWoSow
         O1rg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 185.58.86.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=aculab.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:mime-version
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2eL1tPIDRFkuP/R9NYZ16/aaeafGZ+gqyWzdt+ulGAA=;
        b=BNUJ7we/PTESRl0GNBwkGyDCV5qJn4+aFekcivJTn0P1QjSSh1nlC3IIUA1L630on1
         un4kILUAkc8qWQ2MFwBUJtK+IBHjYSsuwVoYLIWjV5gO4TG2MgiUDcaCzfQ4Vx8YZb15
         n7NWpMbKjsHaamunrmBHZvrPQ0ECpctXS0R+Mzzzgmbj6A62mYC366lBM+o0PfapkXtt
         64RQnte+0vjmN3mVhKta2L2G2g+8Qiuo2tVKNz8TuLh9zanNkyZ6W3msRFLbYkN7omFp
         NtZEa5QVxfAmYyohTCEJP6JpTeoIJlmx9nTo+5PoDCEAT2IXAeTuL+pE52dXPshpgVUX
         16tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :mime-version:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2eL1tPIDRFkuP/R9NYZ16/aaeafGZ+gqyWzdt+ulGAA=;
        b=HBVJW9dPryYsXQxk7buV3wxvT9kHvbQKxI5ZTmCo4aow6F5LbTPY5AgNyfpi3O7eDl
         /ouXQgifbv80Rq7Xb3PfbjFN8Vv1wsstePFFFG3BZdxlicgy83QFXtMRLO6V9uZwAdYk
         DrT6ipSkzmx2hq6kWjQWTE77xsD85bWHtDs1iiSD5enECGy/QcWnwI68FDkQ0TAAL4q9
         Jm5y6rlpRiBaYTyG9ZVmJYvO+Tkw3lE8f+qgewR4EKX/0Wh6h2l3MeBN2SVxNc46uKAA
         ytiWrY5t6IEnUSpN1ZnmAzDzn3xmZxvK/HnWOh2M48l3bKzsvShLSnhDTE17oOzsFMJX
         SHaw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530h2MwzMk5ZiNi8BwstqaLBOF2mHCB8HWscR3LTy98ljSSvmgCK
	qLWCb0bQU/4EzfuHEgm7d6U=
X-Google-Smtp-Source: ABdhPJz5RZxyFfOd9v7M7Xlwtjqx7GrUEt5gK+z9TSz4Hcb2VyNUHOcROS5fmXmAc5LmM6jjeNGNiQ==
X-Received: by 2002:ac2:5fc6:: with SMTP id q6mr39713620lfg.205.1621240281200;
        Mon, 17 May 2021 01:31:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:230f:: with SMTP id o15ls274469lfu.1.gmail; Mon, 17
 May 2021 01:31:20 -0700 (PDT)
X-Received: by 2002:a19:3842:: with SMTP id d2mr41524321lfj.498.1621240280114;
        Mon, 17 May 2021 01:31:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621240280; cv=none;
        d=google.com; s=arc-20160816;
        b=Xbv6l9TuZWTLvSW587zHhIl1qVd6uf623nJSbh6DJDB783yDz/KiAZIQnfpiLUEzh6
         2GdSKmNcuBauBkqw3pmKB5ZI2tprhdE4ZFtHiRJz0VjA4vaDHEBreTl9J/SHMyvtCHYC
         PMQf9PtVjZjdtMymp0c7acuK/dMaepdm73dN7wAT16ExTakTCT5IGtAP6nASWe/OKSL6
         knh0FquIlXX3FNEHqv/JaG3VCOwqn4JWK5LQrHrIxa7RIdbpHhZ41qSeb7/tkIf/kKSS
         rF5zy7DjGdCuI24HouczMz6uiOjHfeNpNsYNi2YYfimeb8yLZ3tBLf6bDrmp8ovIWpif
         QB2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:mime-version
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from;
        bh=XyRlYbhlIRwEBwqHB+68r9JqR/o3e3fjh+HUiheKO7U=;
        b=yEEwtwdAoK5QzLZEiqNLzUseqi7MFsFhPgNKFuniaesej+5ePK6IhaMsSLdWZ5pSsM
         w2Qakh/QSkL7t7k/QVmINQgCRjedKxxepiicGM4FbcjgBEgrD9iNAFIyGgLxZbOiiP8m
         9QbmVcMFhbTc4JeDKVAg+Vivu98cZluGf59AZlrarmwMwvzuRfhGeD2jef9Hc9QdlGLw
         RdH9cf/Nw6gUDVfF+Kmg9EfBZrj/WICe/4Hn1IgebhxpeyuUPiTySrLpS43aEnscAVjT
         BBnkhBuC4ZfDggrAvBC5529A123ODTXBsNlwX8C1tEeagfWUvnGx9+gEyIahzDweIh2/
         VaEg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 185.58.86.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=aculab.com
Received: from eu-smtp-delivery-151.mimecast.com (eu-smtp-delivery-151.mimecast.com. [185.58.86.151])
        by gmr-mx.google.com with ESMTPS id j7si604043ljc.6.2021.05.17.01.31.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 17 May 2021 01:31:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of david.laight@aculab.com designates 185.58.86.151 as permitted sender) client-ip=185.58.86.151;
Received: from AcuMS.aculab.com (156.67.243.121 [156.67.243.121]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-219-3UlcEW98NA-nIwfojSR38g-1; Mon, 17 May 2021 09:31:16 +0100
X-MC-Unique: 3UlcEW98NA-nIwfojSR38g-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:994c:f5c2:35d6:9b65) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:994c:f5c2:35d6:9b65) with Microsoft SMTP
 Server (TLS) id 15.0.1497.2; Mon, 17 May 2021 09:31:13 +0100
Received: from AcuMS.Aculab.com ([fe80::994c:f5c2:35d6:9b65]) by
 AcuMS.aculab.com ([fe80::994c:f5c2:35d6:9b65%12]) with mapi id
 15.00.1497.015; Mon, 17 May 2021 09:31:13 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Nathan Chancellor' <nathan@kernel.org>, Arnd Bergmann <arnd@kernel.org>,
	Maximilian Luz <luzmaximilian@gmail.com>, Hans de Goede <hdegoede@redhat.com>
CC: Arnd Bergmann <arnd@arndb.de>, "platform-driver-x86@vger.kernel.org"
	<platform-driver-x86@vger.kernel.org>, Nick Desaulniers
	<ndesaulniers@google.com>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "clang-built-linux@googlegroups.com"
	<clang-built-linux@googlegroups.com>
Subject: RE: [PATCH] [v2] platform/surface: aggregator: avoid clang
 -Wconstant-conversion warning
Thread-Topic: [PATCH] [v2] platform/surface: aggregator: avoid clang
 -Wconstant-conversion warning
Thread-Index: AQHXSQdQtGc3TDOhPEi9QDyAZ4cunarnW2LA
Date: Mon, 17 May 2021 08:31:12 +0000
Message-ID: <16280aaedc40425295d202431ac3adc0@AcuMS.aculab.com>
References: <20210514200453.1542978-1-arnd@kernel.org>
 <057b5568-c4b8-820c-3dd7-2200f61a4d58@kernel.org>
In-Reply-To: <057b5568-c4b8-820c-3dd7-2200f61a4d58@kernel.org>
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
 (google.com: domain of david.laight@aculab.com designates 185.58.86.151 as
 permitted sender) smtp.mailfrom=david.laight@aculab.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=aculab.com
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

From: Nathan Chancellor
> Sent: 14 May 2021 22:23
> >
> > Clang complains about the assignment of SSAM_ANY_IID to
> > ssam_device_uid->instance:

Has this been raised with clang?

...
> > -	.target   = ((tid) != SSAM_ANY_TID) ? (tid) : 0,			\
> > -	.instance = ((iid) != SSAM_ANY_IID) ? (iid) : 0,			\
> > -	.function = ((fun) != SSAM_ANY_FUN) ? (fun) : 0				\
> > +	.target   = __builtin_choose_expr((tid) != SSAM_ANY_TID, (tid), 0),	\
> > +	.instance = __builtin_choose_expr((iid) != SSAM_ANY_IID, (iid), 0),	\
> > +	.function = __builtin_choose_expr((fun) != SSAM_ANY_FUN, (fun), 0)

A simpler alternative:
		= fun * (fun != SSAM_ANY_FUN)

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/16280aaedc40425295d202431ac3adc0%40AcuMS.aculab.com.
