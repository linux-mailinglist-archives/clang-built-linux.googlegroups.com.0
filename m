Return-Path: <clang-built-linux+bncBC27HSOJ44LBBDMOZOCAMGQEMYOT5SA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x438.google.com (mail-wr1-x438.google.com [IPv6:2a00:1450:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 69769373FB0
	for <lists+clang-built-linux@lfdr.de>; Wed,  5 May 2021 18:25:49 +0200 (CEST)
Received: by mail-wr1-x438.google.com with SMTP id t18-20020adfdc120000b02900ffe4432d8bsf913631wri.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 05 May 2021 09:25:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620231949; cv=pass;
        d=google.com; s=arc-20160816;
        b=Vpn80AuzDK2bbY4IvxB2iVKs2iVZejo7UU7hiQF+GFTDvPAOMDN/sa3xjV8aqghUei
         FXpeRqGcQtG+OPLgK7fulItNC3/ZGV7lvQDKCkP5W85bUkwR1huS1wKlCZdcHPGlwsSe
         72oB1Z7Pf1Uolt80W/wd3Jj7JN3AZy7fLcNAiSAKaMDUpTr7ateAX8i75KTJwBEMrbAh
         y0abcPmm2L4Sv1N/Y1D2HzNBrV+4gBAYjf00ZBdfL42xCg7drKFxu1GtMtXLg+xwlF9V
         qsmytdpPPP+XwLx6aPtYUwSWDAlv3GE+v+2TjSo6Xc7cIqdPq+Clou3Kg487uACMUDoV
         ACjA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:mime-version
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=+9AQTX0FeRuUlCWB5CRIuZQ358Q+Let05NchhzMMkQI=;
        b=G7utJxAYZUz36dWdGjCSkYV/6DlePUgxtY/tS48Tvi9cZROpuEkLenrBNF1Vbr9eNj
         O5HsrSZF2BNBB+e7sFTdidVfnKLSENHKimaVtVtAHIY7SpHpc3QNhRYnJHg8NOYJ1+Ce
         4hr4ZhvcavB228XPOVKqTEhIK3km1AQc9zTF7n/DSZGoh6IAnqAciVOTIGEqe5pGithl
         7R2Hk0S/9q2WvfCtdC3fxeZ5Y5JbxKy6rKZkQRGFG8lwcIO4cuBS3vdaWWZTCn4ScBh2
         S1tKGCbxHqynh/l5Hwk/M5cSu240SdNUXnTRzkDfg9/7YoGFXrowk6R2hmnC4ks89pNh
         OtEA==
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
        bh=+9AQTX0FeRuUlCWB5CRIuZQ358Q+Let05NchhzMMkQI=;
        b=Lk6uoPwAIZd70up92zGEF9N3r89usJQwndrvofAvxZrW7S2ASbEvcv05/VlqoMVzyj
         3PFm7MAz6rO6XJCliPBGWWwaq4RCiiWfmbF0rj36lA7Jy1FmHqYKf9NNsaak5k6eS3z6
         0GZGeCTUwnVqK4dTa+8doy2T20KVUZPgNHtU5vTzBRnk2WrBPnK4SeTLKr/UxPwdatoL
         OXA11qu2++6i0MtaLjJtf94We4XDxuv78d3hrYw+6rnoea8MygzemMAfhM0AfqPqZrlb
         Fg6IAL1cX4wfLUABsneHBst5YaJoIiyYeM0fnq2T30DM/1eu4NdDnC4Fyp6yTvURvkGA
         SytQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :mime-version:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+9AQTX0FeRuUlCWB5CRIuZQ358Q+Let05NchhzMMkQI=;
        b=L1v7QhVYNoBMnT5tfLg2md2Lm3DtRdn/mZM6Yp4z1t9RPGr04dNFPcfaL75Ua07x1V
         iV3xcVPQHEQQwI4pmBDACAAJ+D4TYawok2ZAalevYvCzw8g0v7AcLFPXHiXcuzy7UbZc
         3o0sqvGtBCWu8MIodtyU/KWSqpd71cJUhLlzAw/shroB9AHtov+vkYIjlTmEg6SLCS5Q
         RjO8VqGxiBTlqMUaeBZRsFaTq9uQoUcJS1zi3vVrMJ7cjA4DI7Q3e3BOTCfdEtqSLzZp
         R/CL+8pVuawSJsnuF7NEuDbvIlDX8hfQDuNlUckZQjicZXaLJwIndy5N0GaVmKQAt8pl
         lwsw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531P4Dd53R9Hdt52g8N2wZmBy0qkEdzvNC/CouMAiX+kI/LbylW7
	eHq/xoawrUmB3DdycBRvtQU=
X-Google-Smtp-Source: ABdhPJyMx625LRgvE7dW9i+8q+baSyvkzFzOYb/m3VQvWfOEv2TuWGWi998TySxEEdvZz3w0r3cZcA==
X-Received: by 2002:adf:ef90:: with SMTP id d16mr39701274wro.359.1620231949182;
        Wed, 05 May 2021 09:25:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:f68b:: with SMTP id v11ls6346316wrp.2.gmail; Wed, 05 May
 2021 09:25:48 -0700 (PDT)
X-Received: by 2002:a5d:6749:: with SMTP id l9mr39628996wrw.142.1620231948383;
        Wed, 05 May 2021 09:25:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620231948; cv=none;
        d=google.com; s=arc-20160816;
        b=MOepmp1R9YTt2LTP/lBZzHHBvCOTeN6UFN1PF15qeTqJBb5nSfaeHWle3B3u93CzVr
         bHpbegC1rDg8idc/5EKv45PhuFoUciKvh6qw3ABXwxIiggtob0FHvtD54ecLPAjWBqns
         G8KXvJTcs4A1uUNbdxXu50un46sh7TIuWVlCZXytcZqi21FE7hpFHZWT1nQhAEITEIBo
         5qFcDfCrx4HMHMOZ/8OrOPQ9EhjJIM8wIrIeY41DCXn7lUW3eYoc2jdbnLldMfM7vinf
         OM3Mzcefg/ruoOW98n0Rdg9REw1GR/BeExSZVfxm3nNwzgKqqdzLxwYOsOf3wzvsK2OB
         8nWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:mime-version
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from;
        bh=0YC2c1Ewkf321JHt1glqR3OFIIEgKdD37s/3lOGSl8E=;
        b=bnMSWzjQufk1Q96SxoPVl2sC6znRYqA+PG0UOhqGMr2y53IvOc3kXM1i3T/I4utw01
         tay2XYFDC79eueLCeN5uso/p3fGVEfM8LpyU1YjDtSbuMudLQbY29SExhyCes92I0kgz
         CGwHMYc9YYid9itisDXfzyvmAETw/T/zCTVm6iuCZGJ838x3BZPDycmdoGewY9NrM83z
         pfTm3ihRQ7OfyQUIRHz7NUqot2gPbKP12/IoEF9XoTiEQ0sGTf33U4RqPOIm776pJCQa
         GcZ6bLv7b0dXZq1vT6qXTXuu9awpW/6RxokHPBn9aqiZqRQgPNw/L4E1ti1oj8Kx6Hqg
         IeTQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 185.58.86.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=aculab.com
Received: from eu-smtp-delivery-151.mimecast.com (eu-smtp-delivery-151.mimecast.com. [185.58.86.151])
        by gmr-mx.google.com with ESMTPS id s141si516565wme.2.2021.05.05.09.25.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 05 May 2021 09:25:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of david.laight@aculab.com designates 185.58.86.151 as permitted sender) client-ip=185.58.86.151;
Received: from AcuMS.aculab.com (156.67.243.121 [156.67.243.121]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-87-13FH7VziP7ScG2ZTHadrWg-1; Wed, 05 May 2021 17:25:46 +0100
X-MC-Unique: 13FH7VziP7ScG2ZTHadrWg-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:994c:f5c2:35d6:9b65) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:994c:f5c2:35d6:9b65) with Microsoft SMTP
 Server (TLS) id 15.0.1497.2; Wed, 5 May 2021 17:25:45 +0100
Received: from AcuMS.Aculab.com ([fe80::994c:f5c2:35d6:9b65]) by
 AcuMS.aculab.com ([fe80::994c:f5c2:35d6:9b65%12]) with mapi id
 15.00.1497.015; Wed, 5 May 2021 17:25:45 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Miguel Ojeda' <miguel.ojeda.sandonis@gmail.com>
CC: Adrian Bunk <bunk@kernel.org>, Linus Torvalds
	<torvalds@linux-foundation.org>, Tom Stellard <tstellar@redhat.com>, "Nick
 Desaulniers" <ndesaulniers@google.com>, Masahiro Yamada
	<masahiroy@kernel.org>, Nathan Chancellor <nathan@kernel.org>, "Linux Kernel
 Mailing List" <linux-kernel@vger.kernel.org>, clang-built-linux
	<clang-built-linux@googlegroups.com>, Fangrui Song <maskray@google.com>,
	Serge Guelton <sguelton@redhat.com>, Sylvestre Ledru <sylvestre@mozilla.com>
Subject: RE: Very slow clang kernel config ..
Thread-Topic: Very slow clang kernel config ..
Thread-Index: AQHXQS0DH46G91tEpEmd7WaoBDaEqarUt3wQgAAhgoCAABGacIAAE5MAgAASd3A=
Date: Wed, 5 May 2021 16:25:45 +0000
Message-ID: <42fdc9f1b4b44136b4eeffa0957ebc3e@AcuMS.aculab.com>
References: <CAHk-=wjmNOoX8iPtYsM8PVa+7DE1=5bv-XVe_egP0ZOiuT=7CQ@mail.gmail.com>
 <CAKwvOdmMF_v9TzBtFn2S1qSS_yCDO8D-u3WhBehUM7gzjcdjUQ@mail.gmail.com>
 <CAKwvOdk+V2dc31guafFM=N2ez4SrwCmah+mimUG3MzPMx_2efQ@mail.gmail.com>
 <CAKwvOdn3uXniVedgtpD8QFAd-hdVuVjGPa4-n0h64PTxT4XhWg@mail.gmail.com>
 <CAKwvOdm3D=dqKw=kx46PLaiqfHOZJL3QFKGc8kxqJqpwdFFWqw@mail.gmail.com>
 <CAKwvOdkp_P8BCtFuKqDrtC_=A89ZfDf66Yr3FL2e=ojwv4KaMA@mail.gmail.com>
 <CAHk-=wi1yiBBr3b3RbCEte6-yzAApsZN5zRdr3xoW8Av9jOX=Q@mail.gmail.com>
 <CAKwvOdk0nxxUATg2jEKgx4HutXCMXcW92SX3DT+uCTgqBwQHBg@mail.gmail.com>
 <1c5e05fa-a246-9456-ff4e-287960acb18c@redhat.com>
 <CAHk-=whs8QZf3YnifdLv57+FhBi5_WeNTG1B-suOES=RcUSmQg@mail.gmail.com>
 <20210502093123.GC12293@localhost>
 <CANiq72=aK-JJhpnZdeeGBtADrnXhyEp1Whw5+5rK6a4u85PhxA@mail.gmail.com>
 <5256ed6b6f7d423daeb36fcbfc837fbc@AcuMS.aculab.com>
 <CANiq72mq-SP5n_0cVr+eaP19xqJTP15V+JKUeqLiT910x=3NdA@mail.gmail.com>
 <3ab89c4f8b1d455ba46781b392ef0b2d@AcuMS.aculab.com>
 <CANiq72kPx48wTKCfgohwb2CbAf=SG3gyhv3htd3n_17aGAq2FA@mail.gmail.com>
In-Reply-To: <CANiq72kPx48wTKCfgohwb2CbAf=SG3gyhv3htd3n_17aGAq2FA@mail.gmail.com>
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

From: Miguel Ojeda
> Sent: 05 May 2021 17:07
> 
> On Wed, May 5, 2021 at 4:13 PM David Laight <David.Laight@aculab.com> wrote:
> >
> > Many years ago the company I worked for found that the unix 'utmpx'
> > file was getting corrupted (due to incorrect locking).
> > The functions had been places in an archive part of libc (for
> > various reasons).
> > Getting the fix onto the customers machine (we were the OS vendor)
> > involved determining which applications from 3rd (4th?) parties
> > had been linked with the broken code and then applying enough
> > 'gentle persuasion' to get them to relink the offending programs.
> > Even this can be problematic because the source control systems
> > of some companies isn't great (it is probably better these days).
> > But getting the 'previous version' rebuilt with a new libc.a
> > can be very problematic.
> 
> If you are a library vendor and you provide the fixed library, then
> you are done. It is your customer's call to rebuild their software or
> not; and they are the ones choosing static linking or not.

But it is the customer's customer who comes back to you saying
that something in your library is broken.
This is when you really don't what static linking - ever.

> Sure, you want to offer the best service to your clients, and some
> customers will choose static linking without fully understanding the
> pros/cons, but you cannot do anything against that. And you still need
> to provide the static version for those clients that know they need
> it.
> 
> > No because there are messages sent to system daemons and file
> > formats that can be system dependant.
> > Not everything is a system call.
> 
> That is orthogonal to static linking or not, which was the topic at hand.
> 
> What you are talking about now are dependencies on external entities
> and services. Static linking is not better nor worse just because you
> depend on a local process, a file, a networked service, a particular
> piece of hardware being present, etc.

Static linking is much worse because different parts of the 'system'
are provided by different people.
With a little care a C shared library can be implemented by different
companies while still meeting the same ABI.

> > Remind be to request our management to let me remove all the C++
> > from most of our programs.
> 
> Yeah, the problem exists since before 1998 :)
> 
> A stable, common C++ ABI etc. would have had some advantages, but it
> did not happen.
> 
> > None of them actually need it, the reasons for C++ aren't technical.
> 
> Well, no program "needs" any particular language, but there are
> advantages and disadvantages of using languages with more features
> (and more complexity, too). It is a balance.

It this case it was done to give the software engineers some
experience of writing C++.
Technically it was a big mistake.

Bad C++ is also infinitely worse that bad C.
Exception handling (which you might think of as a gain)
is very easy to get badly wrong.
Class member overloads make it impossible to work out where data is used.
Function overloads are sometimes nice - but unnecessary.

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/42fdc9f1b4b44136b4eeffa0957ebc3e%40AcuMS.aculab.com.
