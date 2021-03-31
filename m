Return-Path: <clang-built-linux+bncBC27HSOJ44LBBHFCSGBQMGQELO3JQ3I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43c.google.com (mail-wr1-x43c.google.com [IPv6:2a00:1450:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 94E3F34FE2E
	for <lists+clang-built-linux@lfdr.de>; Wed, 31 Mar 2021 12:38:20 +0200 (CEST)
Received: by mail-wr1-x43c.google.com with SMTP id z6sf777339wrh.11
        for <lists+clang-built-linux@lfdr.de>; Wed, 31 Mar 2021 03:38:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617187100; cv=pass;
        d=google.com; s=arc-20160816;
        b=Vl+utcmP08hO+JfJtAFzwky7u/iRnCe2BcPlDGLNxq6Ppch4DIkDXfA+yeXx9NFIeM
         whmuyH8V0CfBU7nT5AzrQe7MDzClcdwGGPzm9UPKu2CF80tqo+dz+oZzd83nvNFaBHxZ
         qWYdsVvgoSxmuAFa5WvIuUuBUc4AwZVg8fPl5w0Yo3jDuaLqTan+UyKj4e5Y63n4Rjnk
         aFJjBXadiZ83Cq5S8bVVM9KPqKiGiIscQkSuJf8nyhVCIZwa0nF02tI21lyUywwIdWtZ
         mmrWfnA0cp4SStBBZa4w/prdSvhfJkyFHoqyzd3np4YC2tkJuUdmowLQjPRDFpdBzqV2
         wOJg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:mime-version
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=TyQNTQZPn+amWAfa0cqoqUbew6mOMlG079afwui67OE=;
        b=Uetk/p2cbHxANg/YGiYMXHsOOsey8ofeAjtCQojmZwdzSmOLUAbtxRQe8eDX2arweQ
         TrnXTsMMbvSwLdH43Te8d90O6FLh9qdkDFTthQ8bi5cR+2GJjL+qoGTG5z/XdqcPcDGO
         jPGXAE91OAaoxW+oEe6bnhdIaGHKF9HWWWV/Pz/WSU2d0cbfUuyy4i8/JuTj6N60/YI6
         1J2B+b7c9BurZm3gJ0QeFBO4+Tt4U26bKAqIkEkL/GaNH/Qt36BXYBicQc4dRyH2YuOg
         ofoTHomzMrOFGTUiOS1yLygsMTjatVxqhmTbRLMBM8BdO6csEoWaFAJp1f10ZfgZ0hf/
         M8Ug==
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
        bh=TyQNTQZPn+amWAfa0cqoqUbew6mOMlG079afwui67OE=;
        b=JVUOGLWw6aVd8g+npOEop20TviXLlSFtE1lMtBggEPnxD7oCVJyMHjHvhI5n9On1ty
         PGa2sZ/Z6xyAhWQYgKr2aoZXXyBq8qhsTgghAOu/nMwvwtPQskOMMOFU2YNWEZCpqEjv
         0PohKh8T4boLCotBYs+8lIbTY1T+mcg6t/WE8ipbqWz/mD/6CbiLCGh7/vu8Or01X6EO
         vxV8RY3ZC1Iw8q4Nt7Hh23hhHLo9ea2keViA00kKj9JMIcmNvXpL3FM8usKk1nrZJp1F
         47mPvCIrksA9WkO+743lNNRIrLdSyBKxyZyNJ85HkBN5U64g/1WZbBsH9y7KZAekHasc
         Wi0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :mime-version:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TyQNTQZPn+amWAfa0cqoqUbew6mOMlG079afwui67OE=;
        b=Xe0LUJB1OCWa1e9ZLNDR13T3GFM7p+L3TifNvTV7RtHu9tV3bPZq976naN9s/gq8zG
         zHtXuAPcPTBKrKykdGMjxXZYDsJdf73fHscG1cbj/SCFLn05oiHGJstps282pRwuXTMz
         HO4Sx3KbYvhrGaZ56yM1QYPHLDSelWMWVN8WWjk4pp1l5O0cPrpLRDG4nKRB0fY5bdxt
         ByiEL7S+BhRWvCsBDLayXJ37tX6KQJpr0joxt/EouH+vLIGGbp8w2gUhrzj3K+uLexyI
         g4zvea+U9gALtgG7kN4e6a1I+2q+XncS6Z8Q9I49icO85JK/S6JSxkeY2opLQmaPG+DH
         7e0A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533ILDJmXQT5TI2+7KNIEzNT9KK7Wzyo4quDoOCBPn8hkPALhtMT
	VldEYyaamAyXVfuoTm6r0fk=
X-Google-Smtp-Source: ABdhPJyiOEDUN+1aOy9X4oWbrEMYLfhaMMKp5NhS9pai1HldQgDzcggFtKUjltrjemRAAxVGWndwqg==
X-Received: by 2002:adf:f143:: with SMTP id y3mr3041592wro.198.1617187100337;
        Wed, 31 Mar 2021 03:38:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:d1c8:: with SMTP id b8ls2391805wrd.3.gmail; Wed, 31 Mar
 2021 03:38:19 -0700 (PDT)
X-Received: by 2002:adf:dfc3:: with SMTP id q3mr2957357wrn.121.1617187099384;
        Wed, 31 Mar 2021 03:38:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617187099; cv=none;
        d=google.com; s=arc-20160816;
        b=lJbEaP9yrcVZg6R+etGzGCAGY3Jc06GHLkt0ybEUjmjNqNnXGhIFt59rLGawRq0SLD
         o67cyAAa9ztbvOQnXisN+iILGMdum8ubOJcSXAQRXTOm0rD9/D6/MRkDRv21GT8//Dc7
         71Ajgl1bh7o9Miky3w/k9jrA678qUwLHOmyOUG8tHgDzhdMzieVvqMVjg028OFh1tYNG
         kjSdkd0trKUZCcKEe+FP5njfkR/BmRp7+IZvz6Iw4IlBzbn0NIwXIpUrF5+8RPfjaYHT
         Vn2d8a2GlIrggw/pS6gRDPydx6lE60fDBjabyXN4tQ3HATvJ/x4iiSOMfBI9tHI4v+rc
         c9Xg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:mime-version
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from;
        bh=3OrJFUz/o1VaF8NI17EjkzuXzo6ENAMiwgDSFXbvD/Y=;
        b=t+upnR/6vsQgNfx0kVKCetj9gOWq3+jy6jdrdmS82fUMEMMSHOSmPdWL4QnGRY7gAl
         +UGlJTrMge70Z2yxcJajBCQZuqpTzJ/ipYwW+1d70+Da2HfzeixFeS9cn15JoHgbYsOv
         5HEN4uKjj3AcWYqFSJAvdxUzE4j60QmfNF4vGeURDkEv1NJLrTu5T6ZAmdfwtoCdZ1Pa
         BxSe5yN6onlfCDEbbjUNEnrrGVZZg51V3EQXJQEZIUoVkMopjCIFutEHOkJ2kkqv9Ew1
         KReYnGcPQ4xU9WfBzukT8AYYrtI07P5T4XD7j/A/YMZIz3GDlcQZcQBYjoFmsaNMyl8W
         8C7A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 185.58.86.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=aculab.com
Received: from eu-smtp-delivery-151.mimecast.com (eu-smtp-delivery-151.mimecast.com. [185.58.86.151])
        by gmr-mx.google.com with ESMTPS id p65si384724wmp.0.2021.03.31.03.38.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 31 Mar 2021 03:38:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of david.laight@aculab.com designates 185.58.86.151 as permitted sender) client-ip=185.58.86.151;
Received: from AcuMS.aculab.com (156.67.243.121 [156.67.243.121]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-99-VTUrauydP9eC8qUNDw8g6Q-1; Wed, 31 Mar 2021 11:38:16 +0100
X-MC-Unique: VTUrauydP9eC8qUNDw8g6Q-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:994c:f5c2:35d6:9b65) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:994c:f5c2:35d6:9b65) with Microsoft SMTP
 Server (TLS) id 15.0.1497.2; Wed, 31 Mar 2021 11:38:15 +0100
Received: from AcuMS.Aculab.com ([fe80::994c:f5c2:35d6:9b65]) by
 AcuMS.aculab.com ([fe80::994c:f5c2:35d6:9b65%12]) with mapi id
 15.00.1497.012; Wed, 31 Mar 2021 11:38:15 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Nathan Chancellor' <nathan@kernel.org>, Jian Cai <jiancai@google.com>
CC: "cjdb@google.com" <cjdb@google.com>, "manojgupta@google.com"
	<manojgupta@google.com>, "llozano@google.com" <llozano@google.com>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
	Guenter Roeck <linux@roeck-us.net>, Jens Axboe <axboe@kernel.dk>, "Nick
 Desaulniers" <ndesaulniers@google.com>, "linux-block@vger.kernel.org"
	<linux-block@vger.kernel.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>
Subject: RE: [PATCH] blk-mq: fix alignment mismatch.
Thread-Topic: [PATCH] blk-mq: fix alignment mismatch.
Thread-Index: AQHXJbyzId+/bYuSL06dtp6dmHSiz6qd53HQ
Date: Wed, 31 Mar 2021 10:38:15 +0000
Message-ID: <553e40c54eea408a96f42eec53616993@AcuMS.aculab.com>
References: <20210330230249.709221-1-jiancai@google.com>
 <20210330232946.m5p7426macyjduzm@archlinux-ax161>
In-Reply-To: <20210330232946.m5p7426macyjduzm@archlinux-ax161>
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
> Sent: 31 March 2021 00:30
> 
> Hi Jian,
> 
> On Tue, Mar 30, 2021 at 04:02:49PM -0700, Jian Cai wrote:
> > This fixes the mismatch of alignments between csd and its use as an
> > argument to smp_call_function_single_async, which causes build failure
> > when -Walign-mismatch in Clang is used.
> >
> > Link:
> > http://crrev.com/c/1193732
> >
> > Suggested-by: Guenter Roeck <linux@roeck-us.net>
> > Signed-off-by: Jian Cai <jiancai@google.com>
> 
> Thanks for the patch. This is effectively a revert of commit
> 4ccafe032005 ("block: unalign call_single_data in struct request"),
> which I had brought up in this thread:
> 
> https://lore.kernel.org/r/20210310182307.zzcbi5w5jrmveld4@archlinux-ax161/
> 
> This is obviously a correct fix, I am not just sure what the impact to
> 'struct request' will be.

If the structure is allocated on-stack then aligning it
requires the compiler generate the rather horrid
'double stack frame' for the function.

Possibly the unaligned 'struct' should be used by all
the code except for a few places where it makes sense
to allocate an aligned item?

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/553e40c54eea408a96f42eec53616993%40AcuMS.aculab.com.
