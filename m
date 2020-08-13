Return-Path: <clang-built-linux+bncBC27HSOJ44LBBDX52P4QKGQE62MBFSA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13c.google.com (mail-lf1-x13c.google.com [IPv6:2a00:1450:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id 3622B2436EA
	for <lists+clang-built-linux@lfdr.de>; Thu, 13 Aug 2020 10:49:19 +0200 (CEST)
Received: by mail-lf1-x13c.google.com with SMTP id q16sf1125928lfm.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 13 Aug 2020 01:49:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597308558; cv=pass;
        d=google.com; s=arc-20160816;
        b=yGSrB/3//fVO0xniIDg5Ed58tqBHZyot2IeEsnqDLPh96Yn3Uia/X0kRWDy9itpogT
         ceRaSPwO0TMqY4l5EB/3QVAlGyWVNiwK5v5VbY76MCkvRzsAho/8yOWhhyIPcNH+yFx1
         CuD7ScXDmDUE0TpiL+u1SPI/Zn3emV3aJyGu/ZEyjEVKIGuGing1ABSbRNTdq0LoUhDG
         ySP3zXh1+WUARSpHVdJCWaFGoH0P2aJNjrZH/BuS3QkeEnGHtJQd5/2wdxNcVj22XHI+
         YI13o4H3nH9MwB9fA1+qLQUqHAvn1fU/aOh7ydA16Y+Rmp3EOrNI1jP2/3XxW4/jmcD1
         v17w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=WWszpLJ5YkZ6V5ftJXaqIKKfIkJru83cSCqfOxU+z0c=;
        b=f3TVjvoPXJuIOGUbrweoI6YY9DkTclyRfoecj1LcZogtMq+ju9d7MRmS9lQn5LTV6e
         Yd/kJygJpOpRwL5Bf4B5gqr8wxyMKkjAIg5sLnI2s7cQNOO7rmpQq7WMGExbNUFHDcra
         O4neJ28R1dCdVZFZcx7WvOgc/KLfpTtOmPgqklQ18LYJWxGswr76O011E/ABkEcBL4nf
         yqu0PAGQmziHoEcHph94eIfo9rqRi3mgYd/oiwwfx50fC6MgtipTd7KUupcUewqWnceX
         9Q86eq4DIBqeGSzmPeVEYyxJbqUyjWjx4FeDe0PXfw7KizA48LGKhG3xJwP6xwY7hKAI
         QCRg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 185.58.86.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=aculab.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WWszpLJ5YkZ6V5ftJXaqIKKfIkJru83cSCqfOxU+z0c=;
        b=c24bo/dbzYNuUvlmlK4UbQle0Bf/dRzN7HwfjbUJZPrrA8DWrB9IJ8qX23+QaFQJ7Z
         ZdNk1Bkv0DQ3lEkn+maEeAN7quMJrk6N98X4k91cPQZwYamh4uoljQ87A7rXxiP3Ukp5
         iqlxU8/Pw5iELz6dKoj4kuxQO/oAoDzGkBjIHwJYJqunPWj8lzn5L9YrYw2t3hNni4Cl
         98koWBrmoJuem9CzaOmNu4AYY6P1M13wUYNWitqT09b+t8+OXUw7bs2Wa8AxTbABH8hG
         PQuNtzyTu8X1++tCW2cdwfw0gayXMAIdwi9CV6O/ILXNRP5uzPCEpPUba6VvutZLZdsc
         CAeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WWszpLJ5YkZ6V5ftJXaqIKKfIkJru83cSCqfOxU+z0c=;
        b=CMqyC3BnonY5w1hQaKjBlhiVzOjUGH1OhTzF1aO3CPGvOkjrRBTkF6EHz0lY+6Hy72
         lYwxPHCsi9noRtrlg5U/QMzjczmHiqzQi/BUHubR2ii6EVmwKddA2xJ+7G6cPJc8PwKm
         GzQqBZBBkAv+o8V4UmYZXMI5ljR1iOjFeQMDLHPp6b/P83G8BXbbf5g9GSyjn60gcX92
         P4pPznNX9zrrbBXGPIEDWZr6slwjaZtPJ7xZKHTVskE5nJYihVIc41o+yd1SgrdCM/XC
         nw6hRT4zM3MvvUU8qJSJEgrf6JeAcn9ItP++ymaqh3VXwVw9f1QDP4BqtNl/mR3I8uOu
         orRA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533DOiKi1lUjz8ELG+7u21W4D9A6hDG2rJvsGjEEx7Y3+6Pw7tfw
	fdxeTMpZKjJ07KzYYM2dVUc=
X-Google-Smtp-Source: ABdhPJwOF4oNu6mFGfPBgvI/V0VhMC3kE7k9QsQ8jlio9WdpRtFbimaoAS9Gj7Mi7QS8TNOTeO50mA==
X-Received: by 2002:a2e:7a03:: with SMTP id v3mr1453785ljc.350.1597308558637;
        Thu, 13 Aug 2020 01:49:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:2c01:: with SMTP id s1ls922416ljs.10.gmail; Thu, 13 Aug
 2020 01:49:18 -0700 (PDT)
X-Received: by 2002:a2e:95c3:: with SMTP id y3mr1679992ljh.224.1597308558009;
        Thu, 13 Aug 2020 01:49:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597308558; cv=none;
        d=google.com; s=arc-20160816;
        b=sLedaNvYUW1CMZDHZ6QDfJ5VqWd/1Cu+8qLm5SE61SIhR0yeTSr/IGAlcd2vDxMiT9
         Co+YJARrjEY5C2+OIa6wlNN1Lhqo3G5bzRnFMS50pWF24zPBe/jw2CJi1ncvOBLvd8EU
         +KkW0Ub0SmZUkiB/4kSHBrp1XcrI4/5BONj8arGYF5/BNStR3+B7U4yvLebKJhMdYeeb
         BB9G/PrVqofQ9wQwWYDBKEoq5WPMSyv9EFg38RhKsV6++4JHNKXRmsI88sNYZfukQhxo
         KOvTTsbpu1ks1QXO5b+kVpCrbvYaSK5iVUdjS0LhB1TFbo2ar22D3xgRkBbpWq7x6w3j
         sgvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from;
        bh=WzX0NbRAVsH1gS2oE1bB5wUj9eh704HXRTYDXpx/hAY=;
        b=ednSzOXd64+hoRo0/H4sVTy0UfSIFYcqb3AYSmknK5XJFM+7hCw1rKBYYgZyCHBMHb
         9cahwdDqXCnTqRAe6Grw+FGMGo30Wmy7IACKMp+Lluqds/7r6fckhzCfp2INw8uj8ZqS
         +uoWJMtGRm3ZMQBgA+FAtE4bCV3PQyS5+n4WSSgNt28HrXn3C/npEF4mhvCTy5QLsjSJ
         V+fvfFg7L0C2Z4YYz7j6kg7VWzXs1QwQUFUXG7e7BOMXeRHGL2/X8MfYuxpnUmiSXcXT
         Zw1ktAStN+Slb7LPNmtAM3rLFiyOg0TqPGbAqRJigIAKAKm7KNTi9b6lG5IyPfd+4+Sb
         2RwQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 185.58.86.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=aculab.com
Received: from eu-smtp-delivery-151.mimecast.com (eu-smtp-delivery-151.mimecast.com. [185.58.86.151])
        by gmr-mx.google.com with ESMTPS id p12si248579ljj.0.2020.08.13.01.49.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 13 Aug 2020 01:49:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of david.laight@aculab.com designates 185.58.86.151 as permitted sender) client-ip=185.58.86.151;
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-19-JfTwuwKtO8GLLsCk8sIa-w-1; Thu, 13 Aug 2020 09:49:15 +0100
X-MC-Unique: JfTwuwKtO8GLLsCk8sIa-w-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) with Microsoft SMTP
 Server (TLS) id 15.0.1347.2; Thu, 13 Aug 2020 09:49:14 +0100
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000;
 Thu, 13 Aug 2020 09:49:14 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Nick Desaulniers' <ndesaulniers@google.com>, Thomas Gleixner
	<tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>
CC: Arnd Bergmann <arnd@arndb.de>, Borislav Petkov <bp@alien8.de>,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, "H. Peter
 Anvin" <hpa@zytor.com>, "Kirill A. Shutemov"
	<kirill.shutemov@linux.intel.com>, Zhenzhong Duan
	<zhenzhong.duan@oracle.com>, Kees Cook <keescook@chromium.org>, "Peter
 Zijlstra" <peterz@infradead.org>, Juergen Gross <jgross@suse.com>, "Andy
 Lutomirski" <luto@kernel.org>, Andrew Cooper <andrew.cooper3@citrix.com>,
	LKML <linux-kernel@vger.kernel.org>, clang-built-linux
	<clang-built-linux@googlegroups.com>
Subject: RE: [PATCH] x86: work around clang IAS bug referencing __force_order
Thread-Topic: [PATCH] x86: work around clang IAS bug referencing __force_order
Thread-Index: AQHWcQZ7ykBaYOhpGEiJ4Y1LlTTd7qk1uosg
Date: Thu, 13 Aug 2020 08:49:14 +0000
Message-ID: <016a02d1019f4d0eba67e37d3be2d74d@AcuMS.aculab.com>
References: <20200527135329.1172644-1-arnd@arndb.de>
 <878serh1b9.fsf@nanos.tec.linutronix.de>
 <CAKwvOdnOh3H3ga2qpTktywvcgfXW5QJaB7r4XMhigmDzLhDNeA@mail.gmail.com>
In-Reply-To: <CAKwvOdnOh3H3ga2qpTktywvcgfXW5QJaB7r4XMhigmDzLhDNeA@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0.001
X-Mimecast-Originator: aculab.com
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

From: Nick Desaulniers
> Sent: 13 August 2020 01:13
> 
> On Thu, Aug 6, 2020 at 3:11 PM Thomas Gleixner <tglx@linutronix.de> wrote:
> >
> > Arnd Bergmann <arnd@arndb.de> writes:
> > > When using the clang integrated assembler, we get a reference
> > > to __force_order that should normally get ignored in a few
> > > rare cases:
> > >
> > > ERROR: modpost: "__force_order" [drivers/cpufreq/powernow-k6.ko] undefined!
> > >
> > > Add a 'static' definition so any file in which this happens can
> > > have a local copy.
> >
> > That's a horrible hack.
> 
> Agreed.  And static means everyone gets their own copy, rather than
> sharing one memory address.  I guess no one actually writes to it, so
> it doesn't really matter, but __force_order just seems so strange to
> me.

It could be changed to use a symbol that the linker script already defines.
However it does look like a workaround for a broken version of gcc.

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/016a02d1019f4d0eba67e37d3be2d74d%40AcuMS.aculab.com.
