Return-Path: <clang-built-linux+bncBC27HSOJ44LBBG67RH5AKGQE5S2YHEA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x237.google.com (mail-lj1-x237.google.com [IPv6:2a00:1450:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C5D324ED59
	for <lists+clang-built-linux@lfdr.de>; Sun, 23 Aug 2020 15:31:08 +0200 (CEST)
Received: by mail-lj1-x237.google.com with SMTP id t17sf2201750ljg.16
        for <lists+clang-built-linux@lfdr.de>; Sun, 23 Aug 2020 06:31:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598189468; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZJpFDNqBhrpRr0USVjp4RA9/rJk8M81oawgBEfEkbjMOXqIRG9srJBVJ7H0gGmKj1S
         BNizP81vzhfgboEKAmlJNV283fL9WaRgYay5Ra+FTgk8xaqzyFKHXu3j4gPvnkrHz56R
         hi9bE5Z4FpeFE2TLyqZNB21PBy2dpfysqgTymKuXPv0WG9XAHl/28YUxbwSFxdG1kHgt
         RwTjXi+kQApkJLuzpBnDFq433nUTBmQjzSbHffPVnMubGFTDJAwl/UsTKZszZGtWOMfC
         GZ1xfGDITHcDxxOysAsTMm3udQTtC4+HCWafAfXgWE5K9YHiPgHB63J8vY0q3bv8l6eT
         Wilw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=APoPGUDylUBpIHNQ/pUIJl2TYfb6LvjwJvWLhZaX+1A=;
        b=vsMc5ZeNHK8Ol4SFFNLi/dgckUANqYxehjZtfLZvFUY2TuUfGtbQjSZ0S76BsgTxQW
         WSACFR8Jtu8lKyFH3165bt4pR0yf1KPlm6BZxKcUYK3j5dx1ltez5LxfURz2xAh/FOTT
         Aq0IKBRFTZJKbXF/js1fVTyqB3JHcgGdRCF8kZ59KGI7oanvGsOef+Y4nk/ELjOA3k6o
         dZfH8BoEGr0/ykS48U1aVwXjDJGxgH6zC7l4NWSrOLRb5bbwucYIxAwWxsMISMSka2ty
         GHHxaCqKOv38ZEjQ7eiTX4FcRXMnp36x7NO6jPA1rny6z8u3T9mW6EjrIzX6quAoroow
         kYcQ==
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
        bh=APoPGUDylUBpIHNQ/pUIJl2TYfb6LvjwJvWLhZaX+1A=;
        b=aM+LqwJUMprMBMVQorHjo4rX5TCrdZb0A3ek3/IBpked2YYod1s44iVup5NXJj7AQH
         TFTv4DUUN/mTBIIr8U8avlIh8r8Hzlw9IJvVXRvLGCDep9kGRFWTZM5yLBt66MaRmAup
         t1chDysg+1L+leN7bLR3/AYWpMOp2Cq32bus5QXwbPc2IgCBs66iZGrLOKUQQiixiArq
         RnV1hFTCxDcenoy2ytWLNuj0s6FSg0Px7k8nBApB2XLqr09FLhmJC8HweU4/tzcwzcqj
         KSDr3y/j0niXCx21x0uHx62D0eV5AertJopKgb74PXySs8p7BYNYS99JpzHeLEEjCipk
         7isg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=APoPGUDylUBpIHNQ/pUIJl2TYfb6LvjwJvWLhZaX+1A=;
        b=kmcXZYwUdUOW/qLrwPofLJa00HXcHqTTCGKFKDDkYk7WwA9XUAR28G/8JmRS+31Gj1
         iDlsrWctyy/T8Wl9/u9ybA4MD9NdRJToEU49QQhdr7vxCggBU3pnUvqay7nnZu5G6QmW
         FSiULC3Tt0Gd6Vk8zSIq+TKHMO5mt4bTnUqKejmIVsTAxZJPXcVvIgUo9uXSxC4MvLW+
         e4V7cHY3qBgx8iwlIXTd5r6Jx/gYlzYNhK9lJTzDk0gDetfKUCRbieIzw/K6dBsUCcol
         9rxBp1mrQ+lz8l9qhxmVljyjqDoP8uF/sFEGl68yNN4eP8SebeR8jHxLaN9f7A8m34ef
         Z2Rw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5301gBMbfZaKFeszJ3zGu4GvqUrAYpsXbRtwrDF2LBrTwQ0zTDcA
	dHAp1Oytp/kSmqj9amjaiVk=
X-Google-Smtp-Source: ABdhPJxT8BBnbxUZPIyxQLIHyBV26ygW7Yra2XihngWbFFN0iP8L3MPxzc3wH4jMKfzieO5rGjgDqw==
X-Received: by 2002:a05:6512:74b:: with SMTP id c11mr599042lfs.119.1598189467848;
        Sun, 23 Aug 2020 06:31:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:300f:: with SMTP id w15ls1161539ljw.1.gmail; Sun, 23 Aug
 2020 06:31:07 -0700 (PDT)
X-Received: by 2002:a05:651c:238:: with SMTP id z24mr684733ljn.172.1598189467103;
        Sun, 23 Aug 2020 06:31:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598189467; cv=none;
        d=google.com; s=arc-20160816;
        b=iL6+Fj5Zv2FT7g1aMophK1zrh2eZZngmaSXm/zoild0/yhBfeZQk/qP+1Hgvu9GeJI
         1OKDKWDzzXijCrMT+5bdIV1kMk68TZKHcGW+IKXDhHFk5H3MAgT1+GV1YAnb+Ay6CYAa
         X14Cbkkh1gMoPxvh7GclfeLpNv3LL8iwY+J61bKnHkzdVV7ATdrO+4VYCpeVSjNqayph
         q7pR2WDYesNL3dcdyvKGBMIRGtnm1FCs21AWK/fIEq8Fob7puLW5vFFLBSZBxi7A0i5n
         HawXZX288Nw6UQQA48pKnMtgItisKT49q+xMssYr2pLocjXn1b/gGiS5HJ1E78C+2seG
         HCkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from;
        bh=xKWa6aFvrJPoa9kevuq1d6kobmatmTpAMtZ/yok72Tk=;
        b=AUdxNR4qri9hn+Rx3lpCs3jShH5ta69UlF5iH/d5HLQDf7Rz0pTNTLkvv1b/7ojYbt
         sROWyCBsI9oSR7pBFrQ5G1/ZwRzr6LgLQ9eJLtYHKZuknB8jlGERwIbVsdEZlhMuNv//
         pABUaRZNImv0QYfjotqiYcOzovLgBR549HsniHEAKqHWu7QHr6/YnVpP4OodJvftPplJ
         tCHixerC3Wn3oasqj5Nn1egTq4kAOBCF0jEBR1nbKNgNdHmuudB0sStOEIIEN1H/bJFu
         ruZ8n9n33SvyAeM8ECUrloB7ff5pAj/pS8wk16KSbWb7xNwMTTsHvPZkBTjpZHOzqhQo
         9LqA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 207.82.80.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=aculab.com
Received: from eu-smtp-delivery-151.mimecast.com (eu-smtp-delivery-151.mimecast.com. [207.82.80.151])
        by gmr-mx.google.com with ESMTPS id f16si140021ljk.5.2020.08.23.06.31.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 23 Aug 2020 06:31:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of david.laight@aculab.com designates 207.82.80.151 as permitted sender) client-ip=207.82.80.151;
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-110-qqfqCzmdNDSN-PnAlo1h6w-1; Sun, 23 Aug 2020 14:31:04 +0100
X-MC-Unique: qqfqCzmdNDSN-PnAlo1h6w-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) with Microsoft SMTP
 Server (TLS) id 15.0.1347.2; Sun, 23 Aug 2020 14:31:03 +0100
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000;
 Sun, 23 Aug 2020 14:31:03 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Arvind Sankar' <nivedita@alum.mit.edu>, Miguel Ojeda
	<miguel.ojeda.sandonis@gmail.com>
CC: Sedat Dilek <sedat.dilek@gmail.com>, Segher Boessenkool
	<segher@kernel.crashing.org>, Thomas Gleixner <tglx@linutronix.de>, "Nick
 Desaulniers" <ndesaulniers@google.com>, "Paul E. McKenney"
	<paulmck@kernel.org>, Ingo Molnar <mingo@redhat.com>, Arnd Bergmann
	<arnd@arndb.de>, Borislav Petkov <bp@alien8.de>, "maintainer:X86 ARCHITECTURE
 (32-BIT AND 64-BIT)" <x86@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>,
	"Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>, Zhenzhong Duan
	<zhenzhong.duan@oracle.com>, Kees Cook <keescook@chromium.org>, "Peter
 Zijlstra" <peterz@infradead.org>, Juergen Gross <jgross@suse.com>, "Andy
 Lutomirski" <luto@kernel.org>, Andrew Cooper <andrew.cooper3@citrix.com>,
	LKML <linux-kernel@vger.kernel.org>, clang-built-linux
	<clang-built-linux@googlegroups.com>, Will Deacon <will@kernel.org>, "Linus
 Torvalds" <torvalds@linux-foundation.org>
Subject: RE: [PATCH] x86: work around clang IAS bug referencing __force_order
Thread-Topic: [PATCH] x86: work around clang IAS bug referencing __force_order
Thread-Index: AQHWeMmchmXotIF5Tka9hwpvbqXx2alFrjuQ
Date: Sun, 23 Aug 2020 13:31:03 +0000
Message-ID: <b87e210138ac48018613529db3b54462@AcuMS.aculab.com>
References: <20200820130641.GA536306@rani.riverdale.lan>
 <87zh6ohm03.fsf@nanos.tec.linutronix.de>
 <20200821230435.GA56974@rani.riverdale.lan>
 <CAKwvOdkoB+fT9tt7vgg1R6J-NEr77EWP5X8nFat_L-HvEzWGzA@mail.gmail.com>
 <87eenzqzmr.fsf@nanos.tec.linutronix.de>
 <20200822035552.GA104886@rani.riverdale.lan>
 <20200822084133.GL28786@gate.crashing.org>
 <CA+icZUVf9a8LC2Mf0cFymYQfALWs6bVfR1v1nRbxKaLAyU6NkQ@mail.gmail.com>
 <CA+icZUWGHo3mkN4=ZYeU37p8KJhxTXS5QKcAvq_HaqTHmFkw2g@mail.gmail.com>
 <CANiq72=3iOh5Z_rboZf-_GUpBE2LUUv3yPKOVNN_XmaNswdNSw@mail.gmail.com>
 <20200822211705.GA1382515@rani.riverdale.lan>
In-Reply-To: <20200822211705.GA1382515@rani.riverdale.lan>
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

From: Arvind Sankar
> Sent: 22 August 2020 22:17
...
> Assuming we don't want to risk removing force_order, I'd suggest
> - make it an input/output operand, so it enforces ordering fully.
> - either restrict it to gcc < 8, or just provide a proper definition in
>   some file (maybe arch/x86/kernel/cpu/common.c)?

Is it possible to replace __force_order with a symbol that the
linker scripts defines?
Or just define __force_order in the linker script to some
'random' constant (eg 0).

ISTM that adding "m"(__force_order) to asm volatile can do no harm.
Especially for accesses to CRn and MSRn (etc) which might have obscure
side effects.

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/b87e210138ac48018613529db3b54462%40AcuMS.aculab.com.
