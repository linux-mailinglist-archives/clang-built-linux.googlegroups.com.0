Return-Path: <clang-built-linux+bncBC27HSOJ44LBB5PJRT5QKGQEMZOC6GY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x337.google.com (mail-wm1-x337.google.com [IPv6:2a00:1450:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id B5BC626D859
	for <lists+clang-built-linux@lfdr.de>; Thu, 17 Sep 2020 12:05:41 +0200 (CEST)
Received: by mail-wm1-x337.google.com with SMTP id t8sf372128wmj.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 17 Sep 2020 03:05:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600337141; cv=pass;
        d=google.com; s=arc-20160816;
        b=xEmAWhQQmUZqO/D8mp9n3sA1i8ent0vZ0cmt8/M0qchuswAUmfgW476eva6PK3bwJx
         T8ymzIjiQ5AGvCLFXtquw6S64jHh5HpMZFliTSKg3Az9y0VW/1iZzDjcaTB0kP+YIQhh
         vYchpiw5MkrlKxq5QS7h2TNL1LzgXsHBdy4/qsUhheJKgg2xUBZJ/JB/HGVpFIk1M1OY
         3EBwuiQDY3GyqLclpesGuBlcJr8CGVAStr5SzWE0i6l0KX1YvZXdZUGsNmKhWta+z4Ti
         WGZ9F8J7Zy8Yumrm8V0Caa3DC1UuU4ZLM1Ztqu0VoH9s77tDibxIM/nDSaxwYBC+PCUd
         J5Jw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language
         :content-transfer-encoding:mime-version:accept-language:in-reply-to
         :references:message-id:date:thread-index:thread-topic:subject:cc:to
         :from:sender:dkim-signature;
        bh=848LBLHykvYlR86/JyE4c8wktO1ek0/CTd2b/2m7kew=;
        b=WQtmPX4XG20rZv0OnUrM0QjA9q9AZ7f4CbZfCTAtSyvT1NjfXAvICymGkMECpi/gd4
         yPHL44LR+gJ/KuGmSM5vrqlUUji1jnBsM5HXk6UhiIkRTlNX+fxWboWKzmJJesYUUo/L
         PI7P5WgBL3Hv6pe+E9fllzUJoH48e8iUbzqEin5WmzbnE858mEovMe12u2wy2VGzvv9P
         a2cxG9dLhi3oAZFpC8OafdgH3cQnufleIkrPVBEugSCX/iEh6hsB1FohRXLaqWpYSnjj
         H8bYhaxeUdez4O/WnAovQvv6NQeAvSAdc1ba05/JnYQWnC6v10srYa2DwpuDcTtZD0RF
         p5Vg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 207.82.80.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=aculab.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:mime-version
         :content-transfer-encoding:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=848LBLHykvYlR86/JyE4c8wktO1ek0/CTd2b/2m7kew=;
        b=Mh6Mb3m9zePXdGmcmaZOOgAHSBPTzS+SLz5zErKV535ThJby9bVDmcFGgz0/WeGX7z
         1PLgA91ra1x+R6AHbMh39ozktWKGMAuZglWvmjIUHcbtI2Yncu1z1l0nB4muLMvWeKVh
         ZdkpLK0DjIbfhjUSp9r7n7rLeB2GXfBv+ivaWHd0ZCyIVCY8vaxoEqHRji081ANvwIVW
         q1Mrw1kbZdxw9CPhhtvy5tHFmHNPZG3W+1A5U/V/3k8LL0sE9s2TTpgyV/TeqXJmvCXH
         nCQKIGt7omazHCNYSJdfhSwbWb03Scr7Yfy+J3RyING3TouoqxZSuEtKZZKr48XAIQ2h
         MjQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :mime-version:content-transfer-encoding:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=848LBLHykvYlR86/JyE4c8wktO1ek0/CTd2b/2m7kew=;
        b=ILmb0BUK+mL+DzgUHNfXu8grwji871b+40vJJYeZndDRCdGfXXWrSFowcUp5hv/MF0
         DRMtYY4nnv5dTjm1p9/FCytRk1QTnYaQg1g8F5ZqxOFqx6W+sNRzYZTV33kJi31mlQC6
         NJhmZ89N6mAgK8NbvmDbvbWBsAe1V2V31Z2MyqbTN4W8Er31uFsdEqApiJ6xTIEsrlS7
         ghmgZvv1CvjL4TDfgrNycaYR5KJk51ZP17lo7+ZXy6Pp4CX4BZomQhSudqcTr9OiE70g
         4LvzJOxUeJ5CF5fJihouVVtwf1U7N1Y6i0bxx3Ef8C3vAhU0lJEm5TP+ycDgLV1r61jC
         7F+Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530rqM+ljHhSIKBCs+Z+88ODyIOQg8i0Dg/jE4tB9wc5BRNPbcNp
	RKqKE+6b1TVkR3MfxwdUSMY=
X-Google-Smtp-Source: ABdhPJwxZmkEvgVKIFthcDH9nnhWqO2eNb0mNOj+MhUrufC7W/i/aBPNNP5q5lWiSGdZVDHs/YYRRQ==
X-Received: by 2002:a05:600c:410e:: with SMTP id j14mr9672752wmi.13.1600337141490;
        Thu, 17 Sep 2020 03:05:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:e3c3:: with SMTP id k3ls229755wrm.1.gmail; Thu, 17 Sep
 2020 03:05:40 -0700 (PDT)
X-Received: by 2002:adf:9125:: with SMTP id j34mr34428169wrj.157.1600337140657;
        Thu, 17 Sep 2020 03:05:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600337140; cv=none;
        d=google.com; s=arc-20160816;
        b=Xj1qZFqJIgXdypuV3/YntX0Nmt6nJYIglzbbyUjPrnu6/Dm1aMwcdQFZ51JWiWCrfY
         4Obc+kk066qkoOzvs4GTCm0tJ84pxo0YQSDcixmgH6pMXsqVgc1wAuESg/6nsCQilNfe
         TNFhhhY0G2pJ2kDhRLeFNBVizR1l7Rj7zj+dsmY3CXA6htEvclZT5gCRsPCnKFQpvhgk
         PNU8ERschNBVIIc04/YCpNJT5fPAoTllzU5wfN6MEoTm98tVborRkapTxACIPFcE3AYg
         SJ920uBJZ1Fh6O6nezw4LKkHOyu+ltaWRUXhV/u2tcGXSz5hJUZ8Z7esotQXh2Bn9E1i
         G8oA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:mime-version
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from;
        bh=osv/cZ+waba2pjRf4GEkcj7ZNeT/fBQw3EzBH1N1Lfc=;
        b=A3d3mlGB9JLGELxvBLJEuVmzdH80qEgrXahYdd8MmNnUlIeDT767rbsn6qM8aArM7C
         7SAc/8/cxz72xip/+gF3Bokj/Nw9cSZjWwCZwIK3Qhdf8yU5oSxb3+XwIO+DsawXdXqD
         atbZYulrsBf7Y80nnEVsH9jX9UauO/fJnTvGeeUgOKqTDN1YARhWpR4dWqolXMWc+DOx
         PIBcl3AynxE87PwO6od91sTqF7w8NLKpUJeyIXIfxVx3XI0+s3zAUDvJYUe/k12ejU9A
         UbytGp8BD18WSxYLWivXAtlfRxngTbJ52szOc/3ylY9yYZ0lZ7gy6TlUjbj12DMldkMt
         LLWA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 207.82.80.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=aculab.com
Received: from eu-smtp-delivery-151.mimecast.com (eu-smtp-delivery-151.mimecast.com. [207.82.80.151])
        by gmr-mx.google.com with ESMTPS id d19si150420wmd.0.2020.09.17.03.05.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 17 Sep 2020 03:05:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of david.laight@aculab.com designates 207.82.80.151 as permitted sender) client-ip=207.82.80.151;
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-284-NTAvdqu8PY-EPI7JCtygNg-1; Thu, 17 Sep 2020 11:05:38 +0100
X-MC-Unique: NTAvdqu8PY-EPI7JCtygNg-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) with Microsoft SMTP
 Server (TLS) id 15.0.1347.2; Thu, 17 Sep 2020 11:05:37 +0100
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000;
 Thu, 17 Sep 2020 11:05:37 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Borislav Petkov' <bp@alien8.de>, Andrew Cooper
	<andrew.cooper3@citrix.com>
CC: Andy Lutomirski <luto@amacapital.net>, Nick Desaulniers
	<ndesaulniers@google.com>, Andy Lutomirski <luto@kernel.org>, Bill Wendling
	<morbo@google.com>, "maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)"
	<x86@kernel.org>, LKML <linux-kernel@vger.kernel.org>, Greg Thelen
	<gthelen@google.com>, John Sperbeck <jsperbeck@google.com>, # 3.4.x
	<stable@vger.kernel.org>, clang-built-linux
	<clang-built-linux@googlegroups.com>
Subject: RE: [PATCH] x86/smap: Fix the smap_save() asm
Thread-Topic: [PATCH] x86/smap: Fix the smap_save() asm
Thread-Index: AQHWjLhpVSRzzG6WxEmLrZSeXkmcHKlsmR1Q
Date: Thu, 17 Sep 2020 10:05:37 +0000
Message-ID: <ec617df229514fbaa9897683ac88dfda@AcuMS.aculab.com>
References: <CAKwvOdnjHbyamsW71FJ=Cd36YfVppp55ftcE_eSDO_z+KE9zeQ@mail.gmail.com>
 <441AA771-A859-4145-9425-E9D041580FE4@amacapital.net>
 <7233f4cf-5b1d-0fca-0880-f1cf2e6e765b@citrix.com>
 <20200916082621.GB2643@zn.tnic>
 <be498e49-b467-e04c-d833-372f7d83cb1f@citrix.com>
 <20200917060432.GA31960@zn.tnic>
In-Reply-To: <20200917060432.GA31960@zn.tnic>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0.002
X-Mimecast-Originator: aculab.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
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
> Sent: 17 September 2020 07:05
...
> > This is very definitely one to be filed in obscure x86 corner cases.
> >
> > The code snippet above is actually wrong for the kernel, as it uses one
> > slot of the red-zone.=C2=A0 Recompiling with -mno-red-zone makes someth=
ing
> > which looks safe stack-wise, give or take this behaviour.
>=20
> Right, we recently disabled red zone in the early decompression stage,
> for SEV-ES:
>=20
> https://git.kernel.org/tip/6ba0efa46047936afa81460489cfd24bc95dd863
>=20
> I probably should go audit that for similar funnies:
>=20
> $ objdump -d arch/x86/boot/compressed/vmlinux | grep -E "pop.*\(%[er]?sp"
> $
>=20
> Nope, nothing. Because building your snippet with:
>=20
> $ gcc -Wall -O2 -mno-red-zone -o flags{,.c}
>=20
> still does use that one slot:
>=20
> 0000000000001050 <main>:
>     1050:       48 83 ec 18             sub    $0x18,%rsp
>     1054:       48 8d 3d a9 0f 00 00    lea    0xfa9(%rip),%rdi        # =
2004 <_IO_stdin_used+0x4>
>     105b:       31 c0                   xor    %eax,%eax
>     105d:       9c                      pushfq
>     105e:       8f 44 24 08             popq   0x8(%rsp)
>     1062:       48 8b 74 24 08          mov    0x8(%rsp),%rsi
>=20
> Wonder if that flag -mno-red-zone even does anything...

That isn't using the 'red-zone'.
All the referenced memory is above the stack pointer.

The 'red-zone' allows leaf function to use stack memory for locals
that is below (ie the wrong side of) the stack pointer.

This can't be used in-kernel because hardware interrupts write
just below the stack pointer.

It is ok in userspace providedthe call-backs for signal handlers
decrement the stack pointer over any red-zone.

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1=
PT, UK
Registration No: 1397386 (Wales)

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/ec617df229514fbaa9897683ac88dfda%40AcuMS.aculab.com.
