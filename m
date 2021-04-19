Return-Path: <clang-built-linux+bncBC27HSOJ44LBBL6C62BQMGQEW3SNASQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43c.google.com (mail-wr1-x43c.google.com [IPv6:2a00:1450:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 40566364713
	for <lists+clang-built-linux@lfdr.de>; Mon, 19 Apr 2021 17:26:40 +0200 (CEST)
Received: by mail-wr1-x43c.google.com with SMTP id t18-20020adfdc120000b02900ffe4432d8bsf9243865wri.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 19 Apr 2021 08:26:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618846000; cv=pass;
        d=google.com; s=arc-20160816;
        b=l7xMP5Fs9kBarhxy7dojHqw6hdmcL4YDvHIzkMER9R5+S71ZPHLpuyOIBf1WIK9PGm
         2f2xmLbAvnMuCFlrwU72gW3EuJ67wxlfWaxcQI8isH5C5PeuPcdTT5oXCK9afDBjlA01
         bX59NpWxrd191GmPhyzNfxu9TuKEtE3alDV0X90aymgWU9EKfRzHxubbtAbbhsN5sRhk
         qQDnXt+xHvUGVnMn3HDBzXh00sontWqwG5CqPlTNvPZh7u5ZhMrhwWOLLEzAhh4XFuMw
         29f8zKh/5BXwFLLGYtW/Pd7NB811+jend0S6wupibEzM7NZf4ImFiGss9/EivSMdXrlF
         N9TQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:mime-version
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=JtreTqP3cipalP1S6Q/NePUzlcfqcN4jdcYKF9py/Hg=;
        b=ifEqjOoQIxOe6YX5lkcCtwnDmK1xHHO1PHrcvY4OR8TXbRaDhlXAfkw2T5A/OYKSrE
         vgfOWIOpA4Om70dEQ+tJEB54ywrfA26QwxaguPBq14wCuzZ1Owe7zdxOKt9NzHzrGcUu
         dN3j251eZgUChmdfESGOshctxXxkO/L9NIg2DK9t76u/oBhQKh1xjiEqSOnDYrg4/3wb
         SnF9m4ZC6P/5PwT3ArgPeC2P3IkMbm+io02KuovEiYKb0b3H3tpa6yAYkoGkdPjKGww3
         F512AaQvP16ArkMVWkv1eFMsn3sb6mLYeEYW9W4ozWaRpvPecxWH88CwD54HAA32mqTm
         F8ig==
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
        bh=JtreTqP3cipalP1S6Q/NePUzlcfqcN4jdcYKF9py/Hg=;
        b=h8j3Jh+nY4gx1DsLNt5o8vcEzfRDpiWG0VBB/g3gBzblfVJZrqDaAI4ig/hxKDiB8U
         DyRB1YFz3CVm2FqsSvBb4CSoTokp4jR55EG5/Os1Zqg0UN1KxBso2NBUci9pq7aPjjXx
         68vidBKQnCVso5Rv8fcNrVunLbHZct68DlGdpPQOFtgVaPPtILBWvozo9VCWuSILiDAt
         lPw13wMCScuQK3jiAW2hpCpw5OErYf62Qqs62S2gP0AlFy356lVkSYk/uhN17CnBJbA5
         Myk3Sz++8Hw1n+rfxzOGpmV7+9MnlwPSKlZJNp/1PJKl2YBLq7HS8w+bVVBeDukg6yVr
         V9Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :mime-version:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JtreTqP3cipalP1S6Q/NePUzlcfqcN4jdcYKF9py/Hg=;
        b=nvHaAOtauZujAWrQrH4JyTRjmfAzygqs3tv+7nV5KdFPn+qsRuGNMuKLuCXnnfYQz0
         4HPtc93crKmW7TyhpCrmWUHxaErH4p7K50oLvPHQ0b3domwZIBvPayrA+CcODCdtbmhr
         itYUMneTUVlgbCtrZPV/L4ll8oou/eVQuehwok3RKTl7Dz+9oCQTmwTSunSoXVyuV6vC
         1cXCWW9Szzroom7lr4BZ4C0TvAMhXMT//APo5YKHwU21ZqpPHLA8N5T3D91aQgthHdhM
         tW96xOPT06BZkFjdxQP+INoqDWjaJOi9C6trXNebMMK5a9h8ssKYU1SiU8CGe0VzBEyf
         U7gQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Nihv88W50Er+tyI6GMz2wdgv/roQ8SuYPavtt02Nv9x84Whx3
	7pfr8JI0zdLYckJ4ZL4mWoA=
X-Google-Smtp-Source: ABdhPJx52NWTOZRkbRw06JujUNz4Dnrs/vsSkDVv/868cOOr6pWiu7x+JqtTP7V/l7mIjA03taVtYw==
X-Received: by 2002:adf:f150:: with SMTP id y16mr14895424wro.186.1618846000042;
        Mon, 19 Apr 2021 08:26:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:c1c3:: with SMTP id a3ls8120440wmj.0.gmail; Mon, 19 Apr
 2021 08:26:39 -0700 (PDT)
X-Received: by 2002:a1c:94:: with SMTP id 142mr22942686wma.31.1618845999213;
        Mon, 19 Apr 2021 08:26:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618845999; cv=none;
        d=google.com; s=arc-20160816;
        b=lnrLZ+Pizk7ZCycPbvbyGG4r7zBO8OQCStVOvJP8COZFG5Act5AxzjA9Z4cLsOhsxO
         AWxki5NExfMX6ESlj2gCgYhA5Yyh/6LZyG/RyX9iJKPlqLM5aWBuwPpo6k+1GEtvMQ7O
         BzSCSBFBzRB2j/Q169dp88/zSrSybaZyMY+HzLEC5eIUZcifqHknBIpWqg0EGp9suMVh
         8lRUjTJ/A7yy8ew1iXMnV0WjZ63nvfB30lNV1UIKt1FEd8nA/96SWqaONINyHywCj/D2
         kAAr05O6O1xaJwKp2wHnmCLKup6kAUc2e7573z/UdW/Ypi8ZbUtUmDmHU+eqcUyjzhyf
         +Ktg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:mime-version
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from;
        bh=Q8+AsoxOCpc9010sNPIkgaVPur5Hd/MXSWuLdzZSK50=;
        b=e/YUddFGXtRxIzGRxEbKbRNnHqWyKASBJtptVBwjXWcGGeMzPV/W2x+7dO8TuRB9NX
         Lyl5TdO5iw5rFCNLjWyjBjkj0inAgalbn5AnRPhiV0y5B1Qe418UhhhUMyBckYYkFwSg
         lCmcHm4rXhlH7tlxshyP3Gh0CP0XlMl2dknHO8w0yGC0Z0ev8IDqCXjxLlmU/EOrAQfD
         h6erfMK2gGB0tQy5jx7PzNljw87XF+bA5Uw9HrsgC9CrnFbyov0ZJ/eu2pQ2hXJn/0pd
         fgFaQ3+83pNPEmcFLib+ZUM8QPT6z3iPN7JGsLcrjm419MOAv6GzGmFl59gxUOuLyqcm
         6sVA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 185.58.86.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=aculab.com
Received: from eu-smtp-delivery-151.mimecast.com (eu-smtp-delivery-151.mimecast.com. [185.58.86.151])
        by gmr-mx.google.com with ESMTPS id p65si64365wmp.0.2021.04.19.08.26.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Apr 2021 08:26:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of david.laight@aculab.com designates 185.58.86.151 as permitted sender) client-ip=185.58.86.151;
Received: from AcuMS.aculab.com (156.67.243.121 [156.67.243.121]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-83-1fpuH_pNMbiwBnHi01lYDQ-1; Mon, 19 Apr 2021 16:26:37 +0100
X-MC-Unique: 1fpuH_pNMbiwBnHi01lYDQ-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:994c:f5c2:35d6:9b65) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:994c:f5c2:35d6:9b65) with Microsoft SMTP
 Server (TLS) id 15.0.1497.2; Mon, 19 Apr 2021 16:26:36 +0100
Received: from AcuMS.Aculab.com ([fe80::994c:f5c2:35d6:9b65]) by
 AcuMS.aculab.com ([fe80::994c:f5c2:35d6:9b65%12]) with mapi id
 15.00.1497.015; Mon, 19 Apr 2021 16:26:36 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Andy Lutomirski' <luto@kernel.org>, Thomas Gleixner <tglx@linutronix.de>
CC: Kees Cook <keescook@chromium.org>, Borislav Petkov <bp@alien8.de>, "Sami
 Tolvanen" <samitolvanen@google.com>, X86 ML <x86@kernel.org>, Josh Poimboeuf
	<jpoimboe@redhat.com>, Peter Zijlstra <peterz@infradead.org>, "Nathan
 Chancellor" <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>,
	Sedat Dilek <sedat.dilek@gmail.com>, "linux-hardening@vger.kernel.org"
	<linux-hardening@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: RE: [PATCH 05/15] x86: Implement function_nocfi
Thread-Topic: [PATCH 05/15] x86: Implement function_nocfi
Thread-Index: AQHXM+diuSsNstP2FUia6sIzu9nmdKq7+HvQ
Date: Mon, 19 Apr 2021 15:26:36 +0000
Message-ID: <c0af9b5811cf4066b7297196bc46456f@AcuMS.aculab.com>
References: <20210416203844.3803177-1-samitolvanen@google.com>
 <20210416203844.3803177-6-samitolvanen@google.com>
 <20210416211855.GD22348@zn.tnic>
 <CABCJKud8TvzhcjHCpsrtCJ4B50ZUfaL48F42EhZ2zWKLteAc0Q@mail.gmail.com>
 <20210416220251.GE22348@zn.tnic>
 <CALCETrVTtKqD6fonUmT_qr0HJ0X9TWzLGq-wpm+A7XKyjn3W5g@mail.gmail.com>
 <202104161519.1D37B6D26@keescook>
 <CALCETrV6WYx7dt56aCuUYsrrFya==zYR+p-YZnaATptnaO7w2A@mail.gmail.com>
 <202104161601.CFB2CCF84F@keescook>
 <CALCETrWUS52tzLNiWL5sAVVB5-ko1EW73-TEiO=eZ5jF_QyGPQ@mail.gmail.com>
 <877dl0sc2m.ffs@nanos.tec.linutronix.de>
 <CALCETrVEhL9N_DEM8=rbAzp8Nb2pDitRCZGRAVcE288MBrJ4ug@mail.gmail.com>
In-Reply-To: <CALCETrVEhL9N_DEM8=rbAzp8Nb2pDitRCZGRAVcE288MBrJ4ug@mail.gmail.com>
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

From: Andy Lutomirski
> Sent: 18 April 2021 01:12
..
> Slightly more complicated:
> 
> struct opaque_symbol;
> extern struct opaque_symbol entry_SYSCALL_64;
> 
> The opaque_symbol variant avoids any possible confusion over the weird
> status of arrays in C, and it's hard to misuse, since struct
> opaque_symbol is an incomplete type.

Maybe:

s/opaque_symbol/entry_SYSCALL_64/

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/c0af9b5811cf4066b7297196bc46456f%40AcuMS.aculab.com.
