Return-Path: <clang-built-linux+bncBC27HSOJ44LBB4PDRX5QKGQET25OHYI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43a.google.com (mail-wr1-x43a.google.com [IPv6:2a00:1450:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 0462926DE2D
	for <lists+clang-built-linux@lfdr.de>; Thu, 17 Sep 2020 16:25:54 +0200 (CEST)
Received: by mail-wr1-x43a.google.com with SMTP id r16sf944685wrm.18
        for <lists+clang-built-linux@lfdr.de>; Thu, 17 Sep 2020 07:25:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600352753; cv=pass;
        d=google.com; s=arc-20160816;
        b=vvX6aIg2GSJ6hScVrO3/uhY2nj2elqCAIqhBWxpggQ35QGvGWliVlAtHUxOrDbJX/s
         kS2kLfunD0LUH/mByWFVvPZcS9TwEjjjKpBXdwOD8e7uxVCDFUNBppn3iqaFSZ87ylYL
         D4lEeQmdZbpHYUnbJFtuuo9lZZrCxi50VTCE1w8KuTJPAxSSZkdF/P8BqE/Z71DuDadn
         7+vomACb0GJgSfASKX9kPb7tzZy3E6JIHOdWayWRQ47fAz+HvMhVmGd8gJ4Dr9lsxkui
         7GRh0k/EoPqCufaZWUfALedft3Y34dgKfAawyFg6ukz/ystqHI9l3JQCclzWs9MYuGQH
         C3NA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:mime-version
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=nB9t5Z9HpF4u4HfbCzTI7NEbbV5aygl1YnYxgEu6jiM=;
        b=qFDcE/DaHdThrfS06ZV8uZyC+U0mtEVH0uGb2qoc+EqSkjo6QKg1OWiYTf8j6ElAIt
         NcZFHbKGMgKex2XCzXO979SNOaN5fhXbk+1TSd9zdiMannz1Bi/9+9SoWrh6vG8YMaoy
         PIFsh7omVCpaC8Mw4oZwxo75hdlfqRp3VXocQf6lAY0mvfDrj6nZkKIH3ORlsgzSz7/H
         WzPd8Ot/w5F8Cl70/pk526eJXBTTCP1Hyf/tC7nRfhp+WDZvF6T9IrJ6NRP4GqOzzYLk
         7UoVBgz0yAag5TjHesOrsNS95AT9O3vmuCBPHM2qrx632oI0ZGLL2LTXPQn72W4ktEGw
         7ODg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 207.82.80.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=aculab.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:mime-version
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nB9t5Z9HpF4u4HfbCzTI7NEbbV5aygl1YnYxgEu6jiM=;
        b=C4magCdsp8sasctLLbojqBsbbwnBnGfeVIAdM1ogw16nZc97c9PI6keokCnD4ZLB+N
         E1dHYg7ElCFcWc7QTIiiOMfJBqRr3qXVMI8lqG2X5AhkU//q4kuqiRSbTL/IG6WYniVz
         A8alLb0vlrMRthU1W8TuSIoYimdkxgLVlsm0oFmmSODLtZ7qD/T5bLisBmv1NCJFWWj7
         F/gD62fOrzd+oz6TtI4vPM2udGsDSmXU8T6SV/K6PyY2EZ8pfAaVVO5+/3tO1ykp8BSq
         FOQFW2rECy2J9uzx9CNJsoldG9ESHHtAXrNuLnYC4UFJ8bQSikOD/CsCK5j07F/4lKbz
         oF2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :mime-version:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nB9t5Z9HpF4u4HfbCzTI7NEbbV5aygl1YnYxgEu6jiM=;
        b=rRYPZCzJC4aifgjdPJB/axwPrvsUZkHpz8B/DAtrpLulx6K3v3qmT6det91rrQOUWS
         wNcH1k2sqztwj04FKiEOGQvScqLSeQT7KANdq3Q8xjBCzHQuZlTUUc4ecw/SQmN0c6p6
         vkMF9FaptbLM5XQV0vKiJTSJN2sr5vQ/ezSnB5PGeEmCFulEKwofZUTU0UBqEvEV+4YY
         PaRkmiqWGD6iYbn+vBmPZTKcnkw1MdsCqRpMafgagVMTxq/JxoIYaLfOTPOPFFwluzy/
         m0pZXn6TpJoWdAGbwvKhvi7q0m2BmQpQldoZMqxraA2O3WqV0SU89yO9hDw9MYrFNI+P
         Rmcw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5323eB3pZCPptNTYoDNIB/rp1ZxzmVjlLrEiWVyc0XCr+SwWtUSY
	6cFE2zUvvZtK6x1CCu9NbsQ=
X-Google-Smtp-Source: ABdhPJzZYKZcZXy88y0CuLYVWl6JpAIxqAQtYnSXGm0XCOiXMk611eRGUOTj3XgSKVjW20xF4Gp4CA==
X-Received: by 2002:a7b:c847:: with SMTP id c7mr10517182wml.149.1600352753757;
        Thu, 17 Sep 2020 07:25:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:428e:: with SMTP id k14ls2892091wrq.0.gmail; Thu, 17 Sep
 2020 07:25:52 -0700 (PDT)
X-Received: by 2002:adf:f6c8:: with SMTP id y8mr34850817wrp.217.1600352752800;
        Thu, 17 Sep 2020 07:25:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600352752; cv=none;
        d=google.com; s=arc-20160816;
        b=MF702Jk9BFKnXzCVMH+gghvJlv3T6H5sSSTI3w7nMUMtgzKL/LhfdRhw9X4pVlWYbr
         wh/aPSjvXaWDtQIOMJasdtUEicfAxfLL84etphzKHjC/+9Rs6YFP5xkCpVM8XHGhvNu2
         lv03Hv9xP7xKJrJEKy0ZUQJ+gD9IfDMwkvq3xOUMMiSbMdjKioizSJQy5EPwNmEtrcv7
         F3zbsYL9ludLXd5l/0gMFHWymZbw4tLU64NmdGnFLdobY4CCk5D9xzZsb2n/dAYkXbSn
         M+MAf3bIzEQvhTVdhDu+tOgjPYPwUHGupOBirn2IoY22yA0fFFAbgBpQQjZOY7wLppDJ
         NyJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:mime-version
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from;
        bh=W0DfSU39o7yko0ihwNmJwKF/LOJjug/BSjXq8gqb/To=;
        b=mxpCXnXa6kTKX+iPd3zg3qj4n/zmKi/b/z6Hewe8ecn7mQbwKf/dbqPfRP7X5AvyFh
         yhc9QnFh3lC3mcHa5lo5o95RnstVqw9/5Pri/wE1lfP2Mav5mzXhlf5r80FNjlHb6gVZ
         ptyBn1+7VO0SrQQMlCzCj2qbKNKlUdpuKmTFHTvikPEz6O2c0Kmc7nvdiHfSTap4zo8X
         AYSIU+OMZTQiCKWcN0JsxQDGhfStBUTeisqkTRSqXUC34esPz1KOnNF0YlUwrMGamtad
         3TnVp0e9eZMKCfr3sBx0msmCnRaGv0qx4vcencJ2KC0h9ARkbQrIQIm0o90MQAIZKPe+
         e0VQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 207.82.80.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=aculab.com
Received: from eu-smtp-delivery-151.mimecast.com (eu-smtp-delivery-151.mimecast.com. [207.82.80.151])
        by gmr-mx.google.com with ESMTPS id x1si2921wmk.2.2020.09.17.07.25.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 17 Sep 2020 07:25:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of david.laight@aculab.com designates 207.82.80.151 as permitted sender) client-ip=207.82.80.151;
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-40-beVEqENZN0OOH-IcwERNoA-1; Thu, 17 Sep 2020 15:25:50 +0100
X-MC-Unique: beVEqENZN0OOH-IcwERNoA-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) with Microsoft SMTP
 Server (TLS) id 15.0.1347.2; Thu, 17 Sep 2020 15:25:50 +0100
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000;
 Thu, 17 Sep 2020 15:25:50 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Borislav Petkov' <bp@alien8.de>
CC: Andrew Cooper <andrew.cooper3@citrix.com>, Andy Lutomirski
	<luto@amacapital.net>, Nick Desaulniers <ndesaulniers@google.com>, "Andy
 Lutomirski" <luto@kernel.org>, Bill Wendling <morbo@google.com>,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, LKML
	<linux-kernel@vger.kernel.org>, Greg Thelen <gthelen@google.com>, "John
 Sperbeck" <jsperbeck@google.com>, # 3.4.x <stable@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: RE: [PATCH] x86/smap: Fix the smap_save() asm
Thread-Topic: [PATCH] x86/smap: Fix the smap_save() asm
Thread-Index: AQHWjLhpVSRzzG6WxEmLrZSeXkmcHKlsmR1QgAAQIoCAADeY8A==
Date: Thu, 17 Sep 2020 14:25:50 +0000
Message-ID: <823af5fadd464c48ade635498d07ba4e@AcuMS.aculab.com>
References: <CAKwvOdnjHbyamsW71FJ=Cd36YfVppp55ftcE_eSDO_z+KE9zeQ@mail.gmail.com>
 <441AA771-A859-4145-9425-E9D041580FE4@amacapital.net>
 <7233f4cf-5b1d-0fca-0880-f1cf2e6e765b@citrix.com>
 <20200916082621.GB2643@zn.tnic>
 <be498e49-b467-e04c-d833-372f7d83cb1f@citrix.com>
 <20200917060432.GA31960@zn.tnic>
 <ec617df229514fbaa9897683ac88dfda@AcuMS.aculab.com>
 <20200917115733.GH31960@zn.tnic>
In-Reply-To: <20200917115733.GH31960@zn.tnic>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: aculab.com
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
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

From: Borislav Petkov
> Sent: 17 September 2020 12:58
 
> On Thu, Sep 17, 2020 at 10:05:37AM +0000, David Laight wrote:
> > The 'red-zone' allows leaf function to use stack memory for locals
> > that is below (ie the wrong side of) the stack pointer.
> 
> After looking at
> 
> "Figure 3.3: Stack Frame with Base Pointer"
> 
> in the x86-64 ABI doc, you're probably right:
> 
> 0(%rbp)
> -8(%rbp)
> ...
> 0(%rsp)
> .. red zone
> -128(%rsp)
> 
> i.e., rsp-relative addresses with negative offsets are in the red zone.
> So it looks like the compiler actually knows very well what's going on
> here and allocates room on the stack for that 0x8(%rsp) slot.

With a red-zone you could have:
get_flags:
	pushf
	pop -8(sp)
	mov eax, -8(sp)
	ret

I actually wonder if there is any code that really benefits from
the red-zone.

If you need to save anything on stack then it will dominate the
sub/add to sp to allocate space on any modern cpu.

It may help with stack traceback - but there is an 'interesting'
way to do that without any annotations or frame pointers.
If you aren't worried too much about performance then you
can disassemble forwards monitoring changes to %bp and %sp
until you hit a return (retrying from branch targets).
It doesn't need to understand many instructions even to pass
through kernel interrupt entry.
(SYSV had such code back in the early 1990s.)

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/823af5fadd464c48ade635498d07ba4e%40AcuMS.aculab.com.
