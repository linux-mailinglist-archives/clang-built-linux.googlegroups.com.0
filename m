Return-Path: <clang-built-linux+bncBC27HSOJ44LBBOEQZ72QKGQE7RFHB6I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x438.google.com (mail-wr1-x438.google.com [IPv6:2a00:1450:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DFF81C84E3
	for <lists+clang-built-linux@lfdr.de>; Thu,  7 May 2020 10:35:04 +0200 (CEST)
Received: by mail-wr1-x438.google.com with SMTP id s11sf2983152wru.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 07 May 2020 01:35:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588840504; cv=pass;
        d=google.com; s=arc-20160816;
        b=rm+yLYzXKR8Npcw1sTM8kxazKWKSdF2eG0kOtaIhN15QVodXHMUWY5hPrLmd+uAC63
         boqCOUVr0z/Z3oJE8vpuODs2kfRtOtTJ1fTqfrIrv8FemUvRY4VOvL1F3B+LoYq8V4YT
         NDUwwAn3cUnkVexeurhRzdijnGNhwVdy25dhG0WpGfj3BpLnUFWDUP16iOzILu9MsZea
         MVO7n8dIFe2c3+39og0qQAHjfMP3grAQyrdJMISm9cVVtciI1N9uGseh0xid5FDcUKMu
         H+MTnyfHNLC9mxurzPCm25Oi0zhOKo4H2IZ+VK/+ZNgY6zloO3XJSJqsWPjg0pRd5a1v
         m4dQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=pWFMsZM6T7ZCfI6EAbH6XdzGdXR5rNwqpSQTAieVEX8=;
        b=FfzxCxrq3rrJV+ZXOwFas1Ej6y/qGTMqDydISE0yZ0nsXtF4swh2QZsrFjW4iwKa9b
         Y9rmFSLcA/zBxeKK3nB0O8zLab3lHkgPAY1q1b/1eUwr/x9TTxdqGTmATMhwYLO4HWVy
         98hAtjU1nk8TZwmU/upPFjt8Kw+25raumOsaQcIKdBtz5fGggGY1bN3YaaCWO2oxVLgp
         MicQZr9YKyZ1GLTGDGNhHVPSKf1ZJa5qXz05zhm2TuU9dzgwMeb01298Ghf0+aFIdmzV
         ibqh3kzvWPW1Y+bj4yGcWSP/oj04YO2CSG3Is1YM4Mj7D5es17S1AYOpH+KvRzvrerhR
         60AA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 207.82.80.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=aculab.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pWFMsZM6T7ZCfI6EAbH6XdzGdXR5rNwqpSQTAieVEX8=;
        b=AFvR9SQxXq9AwcM6eRfz/n9WmRO8tS8j975b6p77aCbkWPxoLhNftK1jTsg4lUqIs3
         oV6aOxdysJzTkIkccqTMz7QU8gD8ar+qvtm8AjF+yrYfJ76kxIe5IdG49FdPIEVZAIYa
         jdaKHhXlG2Tn1TYZU98LvSAAJDJ+vi/VsaOV+PWnjBEh6bF1D6GMOJAHzItUwUBaqbnw
         Jabww1VmlNvqF5J93fac/sNzqAbR9R9AnLttqRp8DBx5AGnCY2iDHT2nhZH/8MolXV8M
         x8OoOdk/h6SCHuFDLV5AQC1MrgT24ppb7HzNQ9+iPL+cs2dvwGXiLQ/cm4xMlbQvu+hs
         lCiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pWFMsZM6T7ZCfI6EAbH6XdzGdXR5rNwqpSQTAieVEX8=;
        b=Gql8L9lB5IV86qrTIraL5xPvE//q690ypmbXfHd8b3u5stoi3A1sUW2HLGvMsUqvRM
         Vr2p5wng/rwHGR3KrmRmhhtN/wZithK53hROzgjUeL9gLtWy25BqTOAl5OUsLk0K6ri3
         CgBpaxvfrlbKwY3/i66aabE2f9zjNFidBkAc6YCpk5/4qzlxZPnx9Pz8/vB86lRxgVFo
         xVp4ZcqLtzLSasSO+E4IusAxjp+WsaX1IQ7kd4OVVzX8ztjhPDIhN3NB5DpDv5+wOHTm
         a6LIa9lYMkwt9F9HUFsQ20u5hloqne6QpkcLuCpzkd29XWke5WwEL9Pd0p+8fFdsA5PZ
         rHaw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZM1qSB3I8NCaAZFZ88DTCPF/oMQ1cYAaHvtSWA17w9z7JBLWOe
	RIZXqVsDL7u1d4I4tIQ6dFQ=
X-Google-Smtp-Source: APiQypKs05JIBCcTWX2odtPCrZBCWIqR5kvHZt20i5sZZkqC9y4a+BfHoHdW4ltiG8+J3iYc/Y2N5w==
X-Received: by 2002:a5d:6ca7:: with SMTP id a7mr14015349wra.391.1588840504169;
        Thu, 07 May 2020 01:35:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:db47:: with SMTP id f7ls4591540wrj.8.gmail; Thu, 07 May
 2020 01:35:03 -0700 (PDT)
X-Received: by 2002:adf:e586:: with SMTP id l6mr13990018wrm.184.1588840503719;
        Thu, 07 May 2020 01:35:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588840503; cv=none;
        d=google.com; s=arc-20160816;
        b=sgGP9XkeOLKiG8zgxuDUf2b8GwjNMI0Mn/IP8eMbKQ4ReuXliCb3zuezEOjvsKTlW0
         bYH6hDtiUFhkv0jHZXe7NP63/svdTwWcJWEzIrapaz/qb/fncO0pPFOks+ZSaI2vnDmj
         Dxge5eJChy1jN+h1vjGnjauS45EHymiZIteKQmcrqHdoGsyO/4M4vib4fglqEhevBpkt
         GnMqHkfA+kQqHoHmnj6/rpu+f7PUQLJXoZ8ignCQ+SgO2jqsY4FBcxJtkKrGxLKDvE0a
         0k3kxY5MCHh/j8j8T/aQD6BLGwkGbFt8tYHGKVP2UFXctoZX/xj6Rwwox8+G3EG2kVw2
         N6+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from;
        bh=oYIKpiIT5WoLQR+zIgmi/L10Ht5sPOysgCeSTUNTvoE=;
        b=pBqNVSsrM/K6/QmgC/FXCkbgsmQf/yXdCqHE3jv6629Q1bGzqFCcXVcrNnpY3jowz2
         E//Jt0MawXZ6Nni8y44BnvxebD0YG9K2jkgK8RJ0TnkICWea8ahjbRFESPoToAGUtK1a
         cgDHIfiXu90LgQrEGuzDMHNd0HbEzoH8tNu0ne6dPUf9s+b2HQt6BhzlJhABmFqsGGdc
         mYjsrUakdgXHda3vzsJBocuVusoIoa5QohHJhnx0nszzcoUBYTnO16P4HVxvEGiWvAiM
         p3cTqC4ow9ktlzsfyfAt6YUuqz0BeOup4GyONFocapetkCIjLFJTxoYUlpbhMeEhqMoR
         CoJA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 207.82.80.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=aculab.com
Received: from eu-smtp-delivery-151.mimecast.com (eu-smtp-delivery-151.mimecast.com. [207.82.80.151])
        by gmr-mx.google.com with ESMTPS id o186si482795wme.4.2020.05.07.01.35.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 May 2020 01:35:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of david.laight@aculab.com designates 207.82.80.151 as permitted sender) client-ip=207.82.80.151;
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-42--XL0GonEN0uCYRKkZGNirQ-1; Thu, 07 May 2020 09:35:02 +0100
X-MC-Unique: -XL0GonEN0uCYRKkZGNirQ-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) with Microsoft SMTP
 Server (TLS) id 15.0.1347.2; Thu, 7 May 2020 09:35:01 +0100
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000;
 Thu, 7 May 2020 09:35:01 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: "'hpa@zytor.com'" <hpa@zytor.com>, 'Brian Gerst' <brgerst@gmail.com>,
	"Nick Desaulniers" <ndesaulniers@google.com>
CC: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>, Sedat Dilek <sedat.dilek@gmail.com>, stable
	<stable@vger.kernel.org>, Jesse Brandeburg <jesse.brandeburg@intel.com>,
	"kernelci . org bot" <bot@kernelci.org>, Andy Shevchenko
	<andriy.shevchenko@intel.com>, Ilie Halip <ilie.halip@gmail.com>, "the
 arch/x86 maintainers" <x86@kernel.org>, Marco Elver <elver@google.com>, "Paul
 E. McKenney" <paulmck@kernel.org>, "Peter Zijlstra (Intel)"
	<peterz@infradead.org>, Daniel Axtens <dja@axtens.net>, Masahiro Yamada
	<yamada.masahiro@socionext.com>, Luc Van Oostenryck
	<luc.vanoostenryck@gmail.com>, Linux Kernel Mailing List
	<linux-kernel@vger.kernel.org>, "clang-built-linux@googlegroups.com"
	<clang-built-linux@googlegroups.com>
Subject: RE: [PATCH] x86: bitops: fix build regression
Thread-Topic: [PATCH] x86: bitops: fix build regression
Thread-Index: AQHWJDdSnFcKS0TA9USbY8l3s67J1qicPRAA///0fYCAABqNUA==
Date: Thu, 7 May 2020 08:35:01 +0000
Message-ID: <ef7d077424554abebbd0d46738c90163@AcuMS.aculab.com>
References: <20200505174423.199985-1-ndesaulniers@google.com>
 <CAMzpN2idWF2_4wtPebM2B2HVyksknr9hAqK8HJi_vjQ06bgu2g@mail.gmail.com>
 <60b16c05ca9e4954a7e4fcdd3075e23d@AcuMS.aculab.com>
 <7C32CF96-0519-4C32-B66B-23AD9C1F1F52@zytor.com>
In-Reply-To: <7C32CF96-0519-4C32-B66B-23AD9C1F1F52@zytor.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: aculab.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: david.laight@aculab.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of david.laight@aculab.com designates 207.82.80.151 as
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

From: hpa@zytor.com
> Sent: 07 May 2020 08:59
> On May 7, 2020 12:44:44 AM PDT, David Laight <David.Laight@ACULAB.COM> wrote:
> >From: Brian Gerst
> >> Sent: 07 May 2020 07:18
> >...
> >> > --- a/arch/x86/include/asm/bitops.h
> >> > +++ b/arch/x86/include/asm/bitops.h
> >> > @@ -54,7 +54,7 @@ arch_set_bit(long nr, volatile unsigned long
> >*addr)
> >> >         if (__builtin_constant_p(nr)) {
> >> >                 asm volatile(LOCK_PREFIX "orb %1,%0"
> >> >                         : CONST_MASK_ADDR(nr, addr)
> >> > -                       : "iq" (CONST_MASK(nr) & 0xff)
> >> > +                       : "iq" ((u8)(CONST_MASK(nr) & 0xff))
> >>
> >> I think a better fix would be to make CONST_MASK() return a u8 value
> >> rather than have to cast on every use.
> >
> >Or assign to a local variable - then it doesn't matter how
> >the value is actually calculated. So:
> >			u8 mask = CONST_MASK(nr);
> >			asm volatile(LOCK_PREFIX "orb %1,%0"
> >				: CONST_MASK_ADDR(nr, addr)
> >				: "iq" mask
> >
> >	David
> >
> >-
> >Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes,
> >MK1 1PT, UK
> >Registration No: 1397386 (Wales)
> 
> "const u8" please...

Why, just a waste of disk space.

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/ef7d077424554abebbd0d46738c90163%40AcuMS.aculab.com.
