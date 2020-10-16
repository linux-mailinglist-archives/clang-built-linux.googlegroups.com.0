Return-Path: <clang-built-linux+bncBC27HSOJ44LBBPNMUX6AKGQE3ANNQGQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x237.google.com (mail-lj1-x237.google.com [IPv6:2a00:1450:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id BFF9728FFD3
	for <lists+clang-built-linux@lfdr.de>; Fri, 16 Oct 2020 10:13:50 +0200 (CEST)
Received: by mail-lj1-x237.google.com with SMTP id z8sf751117lji.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 16 Oct 2020 01:13:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602836030; cv=pass;
        d=google.com; s=arc-20160816;
        b=GPSRWtNwl1tDpbB2qAprnaD0+g5qNhVFNzvhObnnQLpdmR5py96VqKrSXej7Om6zGP
         0pSO8O5/oRGFj7mvcZK3ydGONIkNo2nT/HJ9AVEMCugBCFW4XDW1ekhmRsAu2xhIBfoT
         5HMx/F0N5EVp52qlqLcKVoIaUwasbDj0N3lxC9UesoOB9bFNHgyugpZhZjiNxJfDKqPe
         6XUSnulz7HB0qHSfqGKD9YkAZhojY53b2Hwx4oJ+DMhc1BmIcVcTsKpjDD0JvCDpHqU7
         IE7qQUuEodGDvCHjLSK8Hijv5m6rtjXGwNcMwS1I0M4D1e2cYfFehBjMyu8Az8bvDWSv
         FTdg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:mime-version
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=z3Gt9wUZAvlRgQys4I7O2EGrwfrEwdl7toHS6HpvUaE=;
        b=DS4HaqcpQouaGtTgzIhtssVCPIgXRJqQmGJ2wQB5R+a1GRqwd9emHgc53zdEPN/csd
         kp6mbvEgQDoNLZwrmphHnbSv4/Qu30OajRH8Tvdslw8Rrx/WhekRQ7M1HPuKYKjAP/GU
         IJmJy00CFlBhEW3FhNaFUbOCo54zQJf8RQqdISTmumP+JdpYv8c60Eyf9pZbmd8g/7Bh
         5cSl7p0eJiCN9j0UTPwCaFuxslxzRCblIwe1fT2X8u3EbxvLLziLWYOZGjT5Br8ajKTG
         0Yp+s1xss3OCp24GRkhBUnEEHrIE0qSzrDr1laNzsbnJ5BmO4RIyjMEYu0OEaYSgHZVy
         MU2A==
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
        bh=z3Gt9wUZAvlRgQys4I7O2EGrwfrEwdl7toHS6HpvUaE=;
        b=q7GMTal9Xx4fiobCRraeJ9BwkowhLoKzLNKZQTXpnQH2FjF/53YSP/jleOeWOFKk07
         VxGdvkHd+GMfierQ+C0JrsdayYEXyDmXhuPLlcwf+tGq6vXpF62WvNlwgKkQjJ7EODmL
         LG3+hBjYkEB4oC8mBmoDeQ1TD+xSiEPxltvZnIsF+JWrP/8qXV5z1IRliKd87QjS5Sxu
         5OBZ08+pIZKOLDCuOY8tSbaA9ZikCR4+FcdtcCe3hbdGoQp+vRMszeV6YSfp2gzZZjkJ
         xuQteGSCXXa7uXnk5Lp8Z5urSIB0xfcrzahHdKVEkOFTLhXNXZD9oIUgnCFcHhDB+bB2
         yZZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :mime-version:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=z3Gt9wUZAvlRgQys4I7O2EGrwfrEwdl7toHS6HpvUaE=;
        b=ByRNlyHavD740HfYv0ry48SZYs5at5GeFf7Kevb0VyM36aqFYBeWAMnAJMisSy5ALp
         wgMzka1voft2Qm82ll/67CSNtLcUejG4I06vU4EbMLq8FtcQkoCkYake5vKTGly3p/gE
         sUGV4JJL+UdWXiCV6r5jv8BV2hA5+JmhnE/WkKFM/Jb3ztj0+GTg78KdFWzCfWYZV9rv
         N6Rth9NsXNX07n9PTrYNiaGCOq0T9n0uTMWGD2XQsEHMpNebd0N9hYxazpWLVEO9ar4V
         WfSDJtwKVksa6Wyxh/mzjkIG5M/wXJ4nEs7fZduZ/42tMLjMXqpHI0osiLK6b+s8QHch
         8JaQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530ZzBU/tHl615gGgvnvxTaG8lGnMxZKXi426OC9+LyCBtbwPKiI
	gbsiOukc7OXU/YKfFTIMfsI=
X-Google-Smtp-Source: ABdhPJyYGfQC7eKADT3jWvpDu9Z+EfUBKs43xj59ANH5sl0URWQhCawJ97JM7Ld4WcTEjchcTzuqAA==
X-Received: by 2002:a19:650a:: with SMTP id z10mr928630lfb.9.1602836030234;
        Fri, 16 Oct 2020 01:13:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:84c1:: with SMTP id g184ls867055lfd.3.gmail; Fri, 16 Oct
 2020 01:13:49 -0700 (PDT)
X-Received: by 2002:a19:dc0a:: with SMTP id t10mr944110lfg.371.1602836029077;
        Fri, 16 Oct 2020 01:13:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602836029; cv=none;
        d=google.com; s=arc-20160816;
        b=Uz529fpxGeuNufHLuUxGZ1NicZF2rFO/xfydZ5SmUkZuwX9vC06PyP7LeGvTliDePi
         aydyU/gXV2idUuNh7S1lJutSOR8AVSNpmY0shC3K/JLW8U2uHGb0x3ytRBEJ+xfV52UQ
         sPheT5eEuiHvvVyQH4PMzE9SEZXtX/2bN9ylUzEZJfsxUzMJmqqayNPVbSZFOzEx2iS2
         wl0W/En5J57J1gq37TXnOphFtIAB0/546MOI9ToqUJfuOdCjHkVLkecOKGq42xPF4X5m
         SIetQ3zurYZ7oyAmMmO1B8InW96F/vmeo3xSwZHcwgOAPPAfDsDYB1KLg4/OlLrOV9FG
         /RCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:mime-version
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from;
        bh=XhDtQi0JW/bmqjWMBkJ4JCJNGZpEaJL/0lboBus+crE=;
        b=DU9nPDTmWkIugVAvXZj/5ZiOnodYfIDUIwgvahE06SkMXgm+UP1FemtV+2eOzn/1dW
         DV7Xcbri20lUYorvJHQSgjEslofvxxJffL33CZ35GjdtKXQ5WsAjVOrbpC5v8BDEoC21
         ieW7um+NWTqXQ6lVsqN3L/NBnDdx9dtj9v5yPI0aY54fVqJ80JfRW+HyRN1J0hdEHimM
         AQodyHHzSiYX58Xd8eEXoInMMn6ZCSSVt/Buja3l2X1WJqqQJbEEFFScd67PAAmhnvi+
         q3J1TR8gfSdEB/qc89xsFEl02Tx4+irs5lGjmjH7rUrcWm0NltK+/Ix6kHxvK8znRDlr
         OpTg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 185.58.86.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=aculab.com
Received: from eu-smtp-delivery-151.mimecast.com (eu-smtp-delivery-151.mimecast.com. [185.58.86.151])
        by gmr-mx.google.com with ESMTPS id e15si31084lfq.1.2020.10.16.01.13.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Oct 2020 01:13:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of david.laight@aculab.com designates 185.58.86.151 as permitted sender) client-ip=185.58.86.151;
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-25-NRrZ346XOLelYSsRdn014w-1; Fri, 16 Oct 2020 09:13:45 +0100
X-MC-Unique: NRrZ346XOLelYSsRdn014w-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) with Microsoft SMTP
 Server (TLS) id 15.0.1347.2; Fri, 16 Oct 2020 09:13:44 +0100
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000;
 Fri, 16 Oct 2020 09:13:44 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Arvind Sankar' <nivedita@alum.mit.edu>
CC: Nick Desaulniers <ndesaulniers@google.com>, Andrew Morton
	<akpm@linux-foundation.org>, Kees Cook <keescook@chromium.org>, "Nathan
 Chancellor" <natechancellor@gmail.com>, "clang-built-linux@googlegroups.com"
	<clang-built-linux@googlegroups.com>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>
Subject: RE: [PATCH] compiler.h: Clarify comment about the need for
 barrier_data()
Thread-Topic: [PATCH] compiler.h: Clarify comment about the need for
 barrier_data()
Thread-Index: AQHWox7rJ5hC7vlNqk+GpAb0LFktmKmZJEvQgAACJICAALXFQA==
Date: Fri, 16 Oct 2020 08:13:44 +0000
Message-ID: <407e91d1d36d48faa8bbdfe4f51033ad@AcuMS.aculab.com>
References: <CAKwvOdkLvxeYeBh7Kx0gw7JPktPH8A4DomJTidUqA0jRQTR0FA@mail.gmail.com>
 <20201015181340.653004-1-nivedita@alum.mit.edu>
 <72958fd25e33490181b0df9413ec08b4@AcuMS.aculab.com>
 <20201015220123.GA919128@rani.riverdale.lan>
In-Reply-To: <20201015220123.GA919128@rani.riverdale.lan>
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

From: Arvind Sankar
> Sent: 15 October 2020 23:01
,,,
> I think it's helpful to have the more detailed explanation about
> register variables -- at first glance, it's a bit mystifying as to why
> the compiler would think that the asm can't access the stack. Spilling
> registers to the stack is actually an undesirable side-effect of the
> workaround.

That is the very bit that just confuses things.
The data the memzero_explictit() is trying to clear is (probably)
on-stack already - it won't be in registers.

If it were in registers you wouldn't need the memset().

Actually I suspect that the memset() is inlined so that is
just assigns zeros to all the variables.
This will be done using 'virtual registers' that cache the
on-stack value.
You then need to do something to force the instructions to flush
the 'virtual registers' back to stack to be generated.

The fundamental thing is that the address of a local (auto!)
variable must be visible to the asm statement for the compiler
to make the contents of those variables visible.

I even suspect you may need to pass the address of the structure
(to be zeroed) to an asm block at the top of the function as well.
Otherwise the compiler could change the stack offsets where the
structure is stored.
But I don't think compilers do that.

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/407e91d1d36d48faa8bbdfe4f51033ad%40AcuMS.aculab.com.
