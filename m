Return-Path: <clang-built-linux+bncBC27HSOJ44LBB6NDUXVQKGQEYDQQPEY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x539.google.com (mail-ed1-x539.google.com [IPv6:2a00:1450:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 54904A3C4B
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Aug 2019 18:42:34 +0200 (CEST)
Received: by mail-ed1-x539.google.com with SMTP id s24sf3129481edx.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Aug 2019 09:42:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567183354; cv=pass;
        d=google.com; s=arc-20160816;
        b=jeDxqc6VMzRAsIxUOh/qZ+plaJNGS1H9EWGdPrUserpEx+BDUl5xg5KvapQTGawYrh
         Xg6K4kU7mJQ8tv2NbKDXwGNOEtjo3uLnewaLXvH+Y5mHC092xKD7l9GNrKZQ6t45Iye+
         YQjJHHQgDxveFyQp9///VoVJ55ylasYJ1z+pYM1nyHN2jEdQ/NhfEgADTqow30UoCn2C
         rGVwCMDS6Vgeo9oZ1+SuSHBzIPMHa6agyYkYSwf3Wxrsz4vQZq654ozaUCyLPtEc+ENv
         EIA/YvinNZoPttsKMCz+iWq5O/SL3twVBgERLOs0Zy0rV099sZBCr7Tzw8olq9az6AJ8
         kv7w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=HcEYzjQni+jmDRQ0bTpl+yvoiScgtuLFMtJNQ0ZrCcE=;
        b=z0UyX/m8uEKSJPZpj/2Oo2v5EB7p05OUfM2Qw+2Ly4UKgqcozZckpUa5BhfwT0NxEJ
         ivn59gMkuInOj12JLDeeIabn74JLWMY/QwbBsXtjcnd1UGCLv6Twvei5gigpQkMVd9Mj
         Sv7xWKwlSa0euzgsgG0r7mZe135qlpQpW5kxPv2yM86ZwAMMeXCB7o6sjGS6wlCo5KlO
         WbVpNWZ3F8Q1OidpMw3RsxjqXoW9CDXJFW4d9eWnZ0t27f9+asYvTMBQcOThaGEoMod3
         D3DTfVaO/KWkO4YWPD0Klr9MOOS6vnTuS0GjccqfOXONrL9U8yOyvfELp6RrmFGmDmuQ
         6ljQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 146.101.78.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HcEYzjQni+jmDRQ0bTpl+yvoiScgtuLFMtJNQ0ZrCcE=;
        b=gWXq3XZ/g/k4PJjxf4MFWTurGhKAjX/Jl507ziv2zzpA88WKBTbBWSeUa69NWcAPg3
         dLI3OGRRRaQHod1l4K8MvmeX0x8AkVNa+2twpKU5mrmwMCZAchyaZEUA7UpO7Q51YbNz
         wO2WghL18reQf1a5BqA8Xai4XHSTRGkO/iHld3iWFOjvZ6NSlyLdZz5k8kavPCGipt4l
         UWXSw+Akdpf8XHuAFIOlKVkPLNAIdZ9LEp68YrS5s3oSRtn9m6ACdnIUxaWTzGdZULjt
         MjXWpeHpcxTakByfAY659Bdxb3RYI8DHOXskmtVNjouQbjppmgfpHNHVqSvMX9H1NIjY
         4c7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HcEYzjQni+jmDRQ0bTpl+yvoiScgtuLFMtJNQ0ZrCcE=;
        b=QwBXW/H6Ffq41QZCT3qeCUtkfc6M82iI5HiODeRuf3EX0P2ivGZtPIcSJp5Dnydzzd
         8xCcC9L0w0qRgCHXdg98v+LtlS/8+YfdvLJYuHMWtHoFE1J0O2n7kwCUV2058Q/7s4Ab
         w/gCSHmOpdP2pIaTJPpbG+N6rpWVhz3AaWraNP+tb9aamA6blxgSqXtr0zvjngl7Zb+A
         SaQDt/zQJoSyjM8ztQFp/Rgy2uo+84JSBJKoDwChD/pTxwD6qF1+5s6lZuMiaSWSIm/l
         HQoMWOzVm2+WQV+SGVC56JXQUbJLWe8O79tn5MRngFijZemknfZu4BWHatFe704NRCmu
         +9YQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUTLq4hoc/MSNFZnRBuE4BxsCvrDsNQozdwiWxto6OOCxjm0Kvy
	w6HQq2DWAzSi6XmawvRCOFk=
X-Google-Smtp-Source: APXvYqxDqJXGqihXrw9DO6XL2gNRjijdlzN6bZdsf4sTwIrTLKUfopif86C4sLXKLyMpWMMZr0wcYQ==
X-Received: by 2002:a17:906:1c0c:: with SMTP id k12mr13500979ejg.180.1567183353897;
        Fri, 30 Aug 2019 09:42:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:da85:: with SMTP id q5ls807403eds.15.gmail; Fri, 30 Aug
 2019 09:42:33 -0700 (PDT)
X-Received: by 2002:a50:a8c1:: with SMTP id k59mr9295478edc.38.1567183353513;
        Fri, 30 Aug 2019 09:42:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567183353; cv=none;
        d=google.com; s=arc-20160816;
        b=y4WJg2LWsX7f7QlEQ5NTJbrgZ6ZKUYPwFxYHDg3AIco9pfLshTKFj2QFOMdCNkMTYy
         yjlS9vqRBOZ8lFhV2DOsdECqZWwsx6EJTKsOoYwzIn3jx6VH1Ir1lBJ01AxQPDh5aMhw
         dO2KimzmGOEGqeYbB9XZ+sUuesq2HoyV1/ZHn5lgK7mjMZa3ItSi/KB09Oy55RGmFH/r
         z7Fiq3nAGSwMBQSiOWRPg44Psyrc468Ji1DUlpxKfMhT8IohEBBucfF7twprexvZRb1N
         YUA+sLEFgvZ7rjXbMYKpUHfLEib8vkL3tC7Oor5PKL6rOzHR117YsJCNUtx9hxO6PPDX
         LN/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from;
        bh=csqCNk/Cdk+oWx6SB+a4iRa6D0VIOnyJeKuCndeXQ8w=;
        b=CdaRKWgHWz0a7ApbM+QR6aoA+ErgMDtHo6wDXwi6YvLnMkG/DjWL5Zb5AlWEe+Jqi6
         Iwx6SfrxnvSTo9PBqS6CHMMPQu7P/P7vyNbFweEoFYqPqhp7Sl8xNhymMKtOeOYgLxtl
         ecj1sACj8GNS607NryFXBo84ljVPctHxhMColAGSR1eH+T1GAyAdH2oDyiIAwilgBqKx
         A62pDFAyE/Dm36DTmIld0PwyqVjUa4DEhqgvgmWcZ3q8t4j+phD0rW9y0/ZdCkU2W+k8
         yHs3dTtFYtcFOysdKTfU1WrMMEfCeiwNUe3XtR+fyCVD+SyhPdXr2mxI35q15a6IA7lt
         Oosg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 146.101.78.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com
Received: from eu-smtp-delivery-151.mimecast.com (eu-smtp-delivery-151.mimecast.com. [146.101.78.151])
        by gmr-mx.google.com with ESMTPS id q18si290724ejp.0.2019.08.30.09.42.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Aug 2019 09:42:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of david.laight@aculab.com designates 146.101.78.151 as permitted sender) client-ip=146.101.78.151;
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-117-W1tnBhGoOWa2nq3fOcF08g-1; Fri, 30 Aug 2019 17:42:31 +0100
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) with Microsoft SMTP
 Server (TLS) id 15.0.1347.2; Fri, 30 Aug 2019 17:42:30 +0100
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000;
 Fri, 30 Aug 2019 17:42:30 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Linus Torvalds' <torvalds@linux-foundation.org>
CC: Josh Poimboeuf <jpoimboe@redhat.com>, Arnd Bergmann <arnd@arndb.de>, "Nick
 Desaulniers" <ndesaulniers@google.com>, Ilie Halip <ilie.halip@gmail.com>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, clang-built-linux
	<clang-built-linux@googlegroups.com>, Peter Zijlstra <peterz@infradead.org>,
	"Paul E. McKenney" <paulmck@linux.ibm.com>
Subject: RE: objtool warning "uses BP as a scratch register" with clang-9
Thread-Topic: objtool warning "uses BP as a scratch register" with clang-9
Thread-Index: AQHVX0pqqj9VEXOMQ0SdqQ13OMpYJacT10cw///xooCAABloAA==
Date: Fri, 30 Aug 2019 16:42:30 +0000
Message-ID: <108518fd630642468e5c6e0274485a93@AcuMS.aculab.com>
References: <CAK8P3a2DWh54eroBLXo+sPgJc95aAMRWdLB2n-pANss1RbLiBw@mail.gmail.com>
 <CAKwvOdnD1mEd-G9sWBtnzfe9oGTeZYws6zNJA7opS69DN08jPg@mail.gmail.com>
 <CAK8P3a0nJL+3hxR0U9kT_9Y4E86tofkOnVzNTEvAkhOFxOEA3Q@mail.gmail.com>
 <CAK8P3a0bY9QfamCveE3P4H+Nrs1e6CTqWVgiY+MCd9hJmgMQZg@mail.gmail.com>
 <20190828152226.r6pl64ij5kol6d4p@treble>
 <CAK8P3a2ATzqRSqVeeKNswLU74+bjvwK_GmG0=jbMymVaSp2ysw@mail.gmail.com>
 <20190829173458.skttfjlulbiz5s25@treble>
 <CAHk-=wi-epJZfBHDbKKDZ64us7WkF=LpUfhvYBmZSteO8Q0RAg@mail.gmail.com>
 <CAK8P3a1K5HgfACmJXr4dTTwDJFz5BeSCCa3RQWYbXGE-2q4TJQ@mail.gmail.com>
 <CAHk-=whuUdqrh2=LLNfRiW6oadx0zzGVkvqyx_O1cGLa2U6Jjg@mail.gmail.com>
 <20190830150208.jyk7tfzznqimc6ow@treble>
 <CAHk-=wgqAcRU99Dp20+ZAux7Mdgbnw5deOguwOjdCJY0eNnSkA@mail.gmail.com>
 <d1af87f139b54346b420d06855297cfa@AcuMS.aculab.com>
 <CAHk-=wh33ouqv7UNovQn8WWXGA_kXEHDY3_H7x5-_j33AHYPwg@mail.gmail.com>
In-Reply-To: <CAHk-=wh33ouqv7UNovQn8WWXGA_kXEHDY3_H7x5-_j33AHYPwg@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
X-MC-Unique: W1tnBhGoOWa2nq3fOcF08g-1
X-Mimecast-Spam-Score: 0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: david.laight@aculab.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of david.laight@aculab.com designates 146.101.78.151 as
 permitted sender) smtp.mailfrom=david.laight@aculab.com
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

From: Linus Torvalds
> Sent: 30 August 2019 17:01
> On Fri, Aug 30, 2019 at 8:55 AM David Laight <David.Laight@aculab.com> wrote:
...
> But yeah, in general it's just not obviously safe to turn individual
> accesses into memset/memcpy. In contrast, the reverse is obviously
> fine (and _required_ for any kind of half-way good performance when
> you do small constant-sized memory copies, which is actually a common
> pattern partly because the insane C aliasing rules have taught people
> that it's the _only_ safe pattern in some situations).

I wonder where the actual cutoff is for converting a sequence of writes
of zero into a call to memset()?

If you assume either:
1) cold cache (for memset).
2) branch predictor not set for zeroing a small number of words.
I suspect that it is considerable.

> This is why I think "-ffreestanding" and "-fno-builtin-memcpy" are
> completely broken as-is: they are an all-or-nothing thing, they don't
> understand that it's directional.

Yep, and some of the conversions are a just a PITA.
eg printf("%s", string) => puts(string).

I was also trying to get around the memcpy@GLIBC4 fubar so I could
compile code that would run on an old system.
I managed everything except the memcpy() calls that gcc emits for
structure copies (it might even do that even for 'freestanding').
It really ought to emit a call to a different symbol that would normally
be aliased to memcpy() (or better a memcpy_words() function).

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/108518fd630642468e5c6e0274485a93%40AcuMS.aculab.com.
