Return-Path: <clang-built-linux+bncBC27HSOJ44LBBJN65T7AKGQEE7OOIGA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x337.google.com (mail-wm1-x337.google.com [IPv6:2a00:1450:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 929DE2DCE07
	for <lists+clang-built-linux@lfdr.de>; Thu, 17 Dec 2020 10:04:37 +0100 (CET)
Received: by mail-wm1-x337.google.com with SMTP id f187sf2827991wme.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 17 Dec 2020 01:04:37 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608195877; cv=pass;
        d=google.com; s=arc-20160816;
        b=id9UcPrftWiTTXYkT2w9H+QvIGeaXk5TwqCjz0b1yhgg3XX0VbG22iHGeFFXq0OfVa
         /cTzBYJeIVySIqJRXacPjGCA+Iv6P1HK2LSyCQitto5d3mFXgMk8MN71jK3sypzwHdro
         JbelhfLUxT6sfrgqhZACtlvCbUEztQ0yr3aewHH+w+ezOIIkI/z0m2wmbhlfR5n5yrsW
         jy6mIbxLbpfuOrMKEsXWit9pEH+zc7AkjM8i81D8xJeuzr6lpSOzmyymF3avBLx6/4v5
         3ozb0NDhL1463CM/gZpGz4YOMOFIfFGAVhjwFrOVbtKB52kQ3opD4K6xZH0d4h0rEtnz
         ImFA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:mime-version
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=X5+dvE7u9jQSX3gwQxhchyAoB0XxgVOtRItD/Q0rAaA=;
        b=Ca08uQ00GepVIM2vIHChneSJHLD9igxHY8iRijJIVWsCmJEjIrAAP+iEUu+FtB7+OI
         fwHjdHI7Eg0W8AiVtRVJ5/10Bjw3nmLSZ9wq09hu5ssoSELuGLt5kc/Nwez4WPuBKTC/
         f3EYttC/etjXyAElI2np/T6v7zS0IBEsCNV0eN2UGTV6XBNk3kT08ftg/kcKtoj1GAmw
         CFILOeFsicRQk3LHLTUigCoq1d7FdvcsIyy2/Is3C36hQiMxq7rgePGq/uKpxMOAH1Q1
         8/4IE/7AiLeIZBhIJZdvjN0emJp6pekhTcd5F7MjkCpHRBUxrhRT7R1lfDWDvlGcfII2
         NSRA==
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
        bh=X5+dvE7u9jQSX3gwQxhchyAoB0XxgVOtRItD/Q0rAaA=;
        b=mt5ioDp+3/rpubV9uoZw1IMbOBBuCMiU1NenfoZEPUHBenKxPa44QpNcb2AgLzAK00
         h3UAoBMnY0ghHGYD++KhRImXGPfaykF3MzkOH7ogM4+pTHttMdGjbesmnC/GRnQ0BTi2
         X1eqbRDW5+KA2pgzNnPUuuA3V0qe2QXswnM01qERHoCuZDTxHUxN2Coc7q6JQLaBEKCr
         iHIlCZO93JFgeDZkM8tyYInQi2rE11jptDahgPq7whg3lQwuhwyXyyBou89NLN7WvCrx
         Kf23Pq+21SWVDdO64/Wa2tr4auDejCRfZxAsgxr1vhvKQscSt/yjwfUdgLLqFvbylHZM
         lVqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :mime-version:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=X5+dvE7u9jQSX3gwQxhchyAoB0XxgVOtRItD/Q0rAaA=;
        b=XXZyAt0mVcldpjLfX85uWTggI+6vPpHsLHfqhOPsw6OtryiSlpoRTj5WGI4/mgzSYD
         2zaWL41Sc19WZd809Am1X1GKIVbYO/u3fF9+u+FMl6Z1i54vV3xv8KjAJu9vW2RFIE7E
         A6U/buOq48EwXX56SVMqPGxt+8O3E0C1bTPLUNgrkI/fZ+uYV9Vz9DFrFKHhIEGL005y
         FMQ3Ll4knPnfxEYdCBJv75rqCBtn6XySoy8HcS8KDPCYFRDlarup0kaCcgn1uAZFD+Fg
         vHFuHWPyxoM/4gesCu/r3JnHBtueXlt/bMCnIL7bge4umc37FEpuZ2TSzTmurrZTFT4B
         P0wA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533/pZKN7BkZMExampHkPRKTdl4TaC1IN3kDSewP9M24aMA/8EUj
	5wfrO6H62Mdac+OBMO5jA9g=
X-Google-Smtp-Source: ABdhPJz24jPU1+pjepnrP/8BBpgsT0sd2YNX7cLBrBzU7Wk+dmDS14RmosxDSdwTUrBNYVawDWiDKA==
X-Received: by 2002:a1c:b78a:: with SMTP id h132mr7306016wmf.141.1608195877328;
        Thu, 17 Dec 2020 01:04:37 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:6812:: with SMTP id w18ls2455142wru.1.gmail; Thu, 17 Dec
 2020 01:04:36 -0800 (PST)
X-Received: by 2002:a5d:43c3:: with SMTP id v3mr17861301wrr.184.1608195876540;
        Thu, 17 Dec 2020 01:04:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608195876; cv=none;
        d=google.com; s=arc-20160816;
        b=wyfv7TQmmgoyjwX6+WfPWq/7YQPFAStfMpLOHEhuuY+Ohl+ZLRAEJy6pIVya4bwqZ1
         gsyo0fLt+Y0u8zqmJ3J8M1QOPqkoDC2oVKYfe4GR2PjkVOUusJvmUisFcBOVdZ6d59xx
         Gide5eyvS5d5WfdE/iQfhL2WGB2zNbcv+/7vE6ov8PBk8ov5kgRNjpHkJEC60neZgjV+
         L6B5ZN7E7e7EdKs3NJT0laRZ7TuL89GnL7Qe7q6OUYGEozoaMGlsQmcvhhVz23IWFO8c
         oO53uQpFc9YHSgNbCr8Sh5nRLi4eANuW1WQQuOwBiiVu415b64D+aS2+fpCv0qSVsGjm
         ksfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:mime-version
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from;
        bh=o2hFrX/lEg1D14ES+JED/Zqt6CK59sOENKHu6QGcaHY=;
        b=Wv9bP2qrkH2LxhkTOjVFsWzVYZSowMNRspMdVBpIsCe2DdXn2cWnxH8Y1EHxMNJJ/d
         b8GmlUtjf9tTmRUe2XlkeaAmDUlvqZXOyP5vpzbXv28zAoNQYCKjLuSeuDTRfpQtsXTO
         QIxvsEMspyB7QsNoWVZinKb9oV1j4NwrdSHEsQOvUFBQm70qOt5QSq8y3Ph8kb5Dq2Ih
         V2Z+qpBrdxlVpsWlkL3eJK55B8kbnYrTQ2h7tuj1JU1rYk67hTnjCeRf0I4uL/4AhMic
         jelklMm2utOe8ZWFfA6npxRiC6GkpxOvOYMlDsZ9/xEliAt69xgUTzkoLXifGaI2e3A2
         d/og==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 185.58.86.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=aculab.com
Received: from eu-smtp-delivery-151.mimecast.com (eu-smtp-delivery-151.mimecast.com. [185.58.86.151])
        by gmr-mx.google.com with ESMTPS id o135si233581wme.3.2020.12.17.01.04.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 17 Dec 2020 01:04:36 -0800 (PST)
Received-SPF: pass (google.com: domain of david.laight@aculab.com designates 185.58.86.151 as permitted sender) client-ip=185.58.86.151;
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-175-rjhhnSvBOQO3PnCmXJlFKA-1; Thu, 17 Dec 2020 09:04:34 +0000
X-MC-Unique: rjhhnSvBOQO3PnCmXJlFKA-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) with Microsoft SMTP
 Server (TLS) id 15.0.1347.2; Thu, 17 Dec 2020 09:04:33 +0000
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000;
 Thu, 17 Dec 2020 09:04:33 +0000
From: David Laight <David.Laight@ACULAB.COM>
To: 'Nick Desaulniers' <ndesaulniers@google.com>, Paul Cercueil
	<paul@crapouillou.net>
CC: Thomas Bogendoerfer <tsbogend@alpha.franken.de>, Nathan Chancellor
	<natechancellor@gmail.com>, "od@zcrc.me" <od@zcrc.me>,
	"linux-mips@vger.kernel.org" <linux-mips@vger.kernel.org>, LKML
	<linux-kernel@vger.kernel.org>, clang-built-linux
	<clang-built-linux@googlegroups.com>, # 3.4.x <stable@vger.kernel.org>
Subject: RE: [PATCH] MIPS: boot: Fix unaligned access with
 CONFIG_MIPS_RAW_APPENDED_DTB
Thread-Topic: [PATCH] MIPS: boot: Fix unaligned access with
 CONFIG_MIPS_RAW_APPENDED_DTB
Thread-Index: AQHW1BnYM/KvsaySs0KnICTp6C7elan6/pdw
Date: Thu, 17 Dec 2020 09:04:33 +0000
Message-ID: <6134df7a2dd343279c53e5062f0c4f77@AcuMS.aculab.com>
References: <20201216233956.280068-1-paul@crapouillou.net>
 <CAKwvOdnmt7v=+QdZbVYw9fDTeAhhHn0X++aLBa3uQVp7Gp=New@mail.gmail.com>
In-Reply-To: <CAKwvOdnmt7v=+QdZbVYw9fDTeAhhHn0X++aLBa3uQVp7Gp=New@mail.gmail.com>
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

From: Nick Desaulniers
> Sent: 17 December 2020 02:09
...
> The tradeoff being up to 3 wasted bytes of padding in the compressed
> image, vs fetching one value slower (assuming unaligned loads are
> slower than aligned loads MIPS, IDK).  I doubt decompress_kernel is
> called repeatedly, so let's take the byte saving approach of yours by
> using unaligned loads!

I bet the extra code generated for the unaligned load costs a lot
more than 3 bytes.
Not that anyone will notice...

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/6134df7a2dd343279c53e5062f0c4f77%40AcuMS.aculab.com.
