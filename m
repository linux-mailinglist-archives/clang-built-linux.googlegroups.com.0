Return-Path: <clang-built-linux+bncBC27HSOJ44LBBEFK22BQMGQESJW5TSA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33a.google.com (mail-wm1-x33a.google.com [IPv6:2a00:1450:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id 801E735DF84
	for <lists+clang-built-linux@lfdr.de>; Tue, 13 Apr 2021 14:56:48 +0200 (CEST)
Received: by mail-wm1-x33a.google.com with SMTP id l9-20020a05600c4f09b029010ec37d1c58sf2737370wmq.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 13 Apr 2021 05:56:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618318608; cv=pass;
        d=google.com; s=arc-20160816;
        b=v5puHZwyJ7V9CBlywGS2U/g2GVHm4H/6BhAVANN1VPxa1QjjiP0UJgo5+pOCvd2JN9
         Ral8X/js5U3Ce1ONnVIVjdwp0s22k0LSpv1m+Cm2Sdxjbuo6hKPQe7XeEuays4AdhXx8
         zIL0tzS+XhDA/fOxjubOekUpR5cyV0KF5ke2/HHZScFyXb5zWnIQmJDPrqa7NafEzSDC
         F3AfnL9ERfECii4XYrceLftSP/BUqZWwtqNPR4c4n8pQzjIE48JXEmu5WLQtlEQrZtna
         Z7Pxx8nk0t94LHXzhj3YS2h2H/4Jd9NTsUU/2eK1w7MyAI/9jQqs8hGh9SnRsOqRXrvN
         VxjQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:mime-version
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=R2YyZ+dzdF/3jmafrqQd5oBSTiC8pBe8yqU3dCkklJ4=;
        b=EWjvHQrYS00ogQ3/ye4PWdZVEhahpHFcUquI9DLed1HGAOLarPMkHpjW5pa34XdifP
         f9OhHRn5NZVyGHxdTQY1EJ1KI7omyrNncvWBMoAqkHaq1v0izbNsye0jEnDh/CKEKr+y
         K+M7D5xVD9iUXUlVH/XtFHzeng32bmu5HFLaTLKh8FcHwrRD23I6Gn2dzMECacC/Niww
         ih6cnvcfkdy+/UWh0Xql3nxkMUpVWUTW9VeRbXOEzFn/t89ooFsB/F64EHL2kf1vBU2d
         ME8bNt8IwM4meJRIsnTh0APpXTMG7oW1gQ2/YsuNC3jfi0DkC2+gTB5yRNS0kOxk92G2
         I35A==
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
        bh=R2YyZ+dzdF/3jmafrqQd5oBSTiC8pBe8yqU3dCkklJ4=;
        b=Ken56IGsFfeR14InAbIH5byNKR6hh288TbzySGfk46h99fOtaeOOVRl6W06JmPa0dC
         z012oD+8lptympOWnPXkHuyq74FUD/2h4jDOVDAGxXNbS3gnuN5moOevKBWuxBD/jP/A
         Zay0Pw2BIJRR9iSZ+qKTBeYTuHg9lbPcROyBHvNg7v2cI/T3uOWkuKkG7Tg38F7Tfp0Y
         WCy7+50bH3IIJyaSCli0CEpB1+Kq4+olUqlzzQFmu+EhxoaM4Ke0bfhUDsjKZrQYFPeM
         WbKhh2w4KF/GRvxYW+XpQBGorSzh2Ndnf7DIAWaaIcY0DOflWdL9Xu/0NfnE62Jv3uU9
         s1uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :mime-version:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=R2YyZ+dzdF/3jmafrqQd5oBSTiC8pBe8yqU3dCkklJ4=;
        b=B54eTThj947jzxQ0uCLw5sBywV7mymoMr+7HDI3M6yDSuraTYwSM6LlIjLUb9kXrH7
         D3VhS9qQV0V1J7NOs1S/1aS97Sv6laSZ6LV6gpgX20pFrk9QRYz7RRPbiDVBAzTYiUsc
         I/y0epVbG0BwvvMjKZgdn+i35lN0ztra7c3Obk4dHHUP8uV7ESMsUNu3DKZh6GOAyzpq
         JaDvYRhzdY7j4UX+/3/Ol4SNWF5YmhMRpRRMIbabjnje7BjtJNTGjxY0NBQXiBNt9rwS
         DkOTACG2SlNbQS7RCOJMazk8p8uvq3wHyABc6ijDrcE/IoUT3Z40me+4eqTbUS0RVxO/
         shaw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Tj4B0vrHYVLYWcumppwzgpdSisa9R9rNAomAPvQ4mN8+hDjfs
	luJzc7M3he8Tqczop1fM90Y=
X-Google-Smtp-Source: ABdhPJz12EGcjVJdXs2ERbqYWQ237dwQkpqkc9sShHSGSLPooY/2gD504Q4tWMvFedSoTbSzDYuDjQ==
X-Received: by 2002:a1c:6489:: with SMTP id y131mr4133155wmb.0.1618318608316;
        Tue, 13 Apr 2021 05:56:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:d1c8:: with SMTP id b8ls2698267wrd.3.gmail; Tue, 13 Apr
 2021 05:56:47 -0700 (PDT)
X-Received: by 2002:adf:de08:: with SMTP id b8mr10068009wrm.279.1618318607531;
        Tue, 13 Apr 2021 05:56:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618318607; cv=none;
        d=google.com; s=arc-20160816;
        b=puPSEmVk/dF4h5PfNphltbn9DRfT0QLZZwNLf+/6IpiSAkOfqVedV3zHHgRjAn1JQY
         NYhNQJa9q2PFiIKMDWk5qwL73vbkMfC8dXWwZ+FbPY6c619fgNb7f7CLQHTYn+/+IIZp
         p0ik3NGLmhU8BiuT7sjRzU5dsKmyAnDf2SVLWhok0sX/grzuJ43+3SBZUz9M3vhdb7dN
         jksLs+3E1IwFP7rFHGC7vepyG4nv6wxVp2IU/sfcS9IIw0mfU1jewc8dt7U6vMkxdbyl
         58cGjIo1qVMxV2lDPalIjn9zjXKNB06UxIe+6omBvDN1BDQEUX5mO+5MOoiJCyf0JvgW
         pWTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:mime-version
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from;
        bh=ErhBQdXJ94UluO/kVsPu5go87Kr1/jl6OUXh44es/ZY=;
        b=Nb63pvnAng/fYVX5BIdHfZw28NpQJBw4D57WUiexVhNj5Bjt6LlJ+qJe7SrEvwzTWb
         +cwC9ze94Zfi1vbC86KWhTSXUyRtrd8DkroUsMIYDAoHosaawyzwf8on+FO7YQxU0/jG
         Ocsa5txLBUwy4EHflwcKgj28pNSAl2WIl/inGcTiETm1b6ogUUoJuRmAPI/4+Jbar/Tj
         OKze1dLG3O95uaiyDVg13Ne4MNR3qszJ2UoJ4ooZMAxMB/mBYiRRkw690qQsgVXMAvEc
         7MxoXMzlIb78YQsr3ReahsSEgau9Fpwf4x4JNU7a1X6wjO5CFtUpeusGLufDmIR70jXs
         LbZQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 185.58.86.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=aculab.com
Received: from eu-smtp-delivery-151.mimecast.com (eu-smtp-delivery-151.mimecast.com. [185.58.86.151])
        by gmr-mx.google.com with ESMTPS id p65si139114wmp.0.2021.04.13.05.56.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Apr 2021 05:56:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of david.laight@aculab.com designates 185.58.86.151 as permitted sender) client-ip=185.58.86.151;
Received: from AcuMS.aculab.com (156.67.243.121 [156.67.243.121]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-27-ltlbnxZ9N6qogcWxar3evA-1; Tue, 13 Apr 2021 13:56:45 +0100
X-MC-Unique: ltlbnxZ9N6qogcWxar3evA-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:994c:f5c2:35d6:9b65) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:994c:f5c2:35d6:9b65) with Microsoft SMTP
 Server (TLS) id 15.0.1497.2; Tue, 13 Apr 2021 13:56:44 +0100
Received: from AcuMS.Aculab.com ([fe80::994c:f5c2:35d6:9b65]) by
 AcuMS.aculab.com ([fe80::994c:f5c2:35d6:9b65%12]) with mapi id
 15.00.1497.012; Tue, 13 Apr 2021 13:56:44 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Arnd Bergmann' <arnd@arndb.de>, Niklas Schnelle <schnelle@linux.ibm.com>
CC: Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers
	<ndesaulniers@google.com>, clang-built-linux
	<clang-built-linux@googlegroups.com>, linux-arch
	<linux-arch@vger.kernel.org>, Linux Kernel Mailing List
	<linux-kernel@vger.kernel.org>, linux-s390 <linux-s390@vger.kernel.org>
Subject: RE: [PATCH] asm-generic/io.h: Silence -Wnull-pointer-arithmetic
 warning on PCI_IOBASE
Thread-Topic: [PATCH] asm-generic/io.h: Silence -Wnull-pointer-arithmetic
 warning on PCI_IOBASE
Thread-Index: AQHXMGBrFmL3q8InjEiRDqC8qAyY5KqyZ1tA
Date: Tue, 13 Apr 2021 12:56:44 +0000
Message-ID: <2783670cf610467ca19fd5abcad5a747@AcuMS.aculab.com>
References: <20210413115439.1011560-1-schnelle@linux.ibm.com>
 <CAK8P3a1WTZOYpJ2TSjnbytQJWgtfwkQ8bXXdnqCnOn6ugJqN_w@mail.gmail.com>
In-Reply-To: <CAK8P3a1WTZOYpJ2TSjnbytQJWgtfwkQ8bXXdnqCnOn6ugJqN_w@mail.gmail.com>
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

From: Arnd Bergmann
> Sent: 13 April 2021 13:27
> 
> On Tue, Apr 13, 2021 at 1:54 PM Niklas Schnelle <schnelle@linux.ibm.com> wrote:
> >
> > When PCI_IOBASE is not defined, it is set to 0 such that it is ignored
> > in calls to the readX/writeX primitives. While mathematically obvious
> > this triggers clang's -Wnull-pointer-arithmetic warning.
> 
> Indeed, this is an annoying warning.
> 
> > An additional complication is that PCI_IOBASE is explicitly typed as
> > "void __iomem *" which causes the type conversion that converts the
> > "unsigned long" port/addr parameters to the appropriate pointer type.
> > As non pointer types are used by drivers at the callsite since these are
> > dealing with I/O port numbers, changing the parameter type would cause
> > further warnings in drivers. Instead use "uintptr_t" for PCI_IOBASE
> > 0 and explicitly cast to "void __iomem *" when calling readX/writeX.

Since the definitions make no sense when PCI_IOBASE in undefined
maybe the functions should either not be defined, be stubs that
do nothing or stubs that are BUG().

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/2783670cf610467ca19fd5abcad5a747%40AcuMS.aculab.com.
