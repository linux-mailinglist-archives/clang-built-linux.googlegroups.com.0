Return-Path: <clang-built-linux+bncBC27HSOJ44LBBI46W6CAMGQERSPZEDQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x637.google.com (mail-ej1-x637.google.com [IPv6:2a00:1450:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id F410637091F
	for <lists+clang-built-linux@lfdr.de>; Sat,  1 May 2021 23:58:59 +0200 (CEST)
Received: by mail-ej1-x637.google.com with SMTP id z15-20020a170906074fb029038ca4d43d48sf162087ejb.17
        for <lists+clang-built-linux@lfdr.de>; Sat, 01 May 2021 14:58:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619906339; cv=pass;
        d=google.com; s=arc-20160816;
        b=wLlY6EB3Xn0FN0uRiuPNNwedu8ezYXDtuAMnKWPMEk3iSdUTGcVp+i+LRlInoBAHQW
         XYzE3ZcSTXwmF/aH7/t/9837ZBUpJdk+qjqXeIhWDnESntSH3rRzfikns+usgS1A5Jn1
         qWav24Rq3lmCsHQcNosVXR1Y+hpX9cerp7LsF5L+K4YT/colaIoco4Gy1Wogv3LurWQl
         gdue/Ezbl4QKkqA/lRJSMyWn0fgNJMPkBIdnaEPqiv0pkEoVXpu+TKDqSmoy1PkYrGLu
         J7G3aQy4KHuKacMjLmV+8lgcTuzJOnsnTpuXZXmG+4vEEGK75oLgI9P1SYkb6RxRL25F
         IR6g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:mime-version
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=J7JMUpPSC+/BmXdX59o4uj0R7is9nQu3zKq2gnQlrGM=;
        b=ZEDelOOmlPUdcRbcjVnk50S4JFVbRk5HUManrdtZOaqnjFxjLQppnUdrliSZ4eCVBs
         4UMMNvIsETvof2y9r0W4e0ebQhykbiObSZoaoN+r/G9mCsBmhwIeY6DXc9PMQTcnyseK
         VnB8T1CGolS0Y/Zq+NdpJc10cjUkUqT3ieOZiETrTNsTyBQ/TJ+KQ+Xv5LhnZZoULwr0
         yt0YFHAuKktMFC5S1DHlxgenFzo93YKFkkn8SnhiJspKh6ncdUJfdUuIhypcb1Kik+FO
         kR39jpi1PxwexMr6IgTzB9SnmI49o37ZTFmh9P+8RsS99Cqu7o+PQp0F8ZYQFaA5NeSn
         3X2g==
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
        bh=J7JMUpPSC+/BmXdX59o4uj0R7is9nQu3zKq2gnQlrGM=;
        b=U6O4dy441ecH8Nzkp0JIrtmwrS1LlyqnnHjb5CyKLQXs1lOSpiU1xNrEtYZVatL8az
         QtlkdJql7Cs349p8e7/e8nnXgS5FHgmAyvNgb4AtS/OfGhd+YTZadHchthAwEfO2CEEo
         thOCEbdDfMeLLE41FOM9vB1V3Ikrdf1+AoUKS0ylg0Aomj9gsR0yUGVUK0c/rOLW5hzV
         ImOSR/+KkU18BvRR90y+/hjFn0AouUcWwgTg55352TD8MUBA0A63xjr9+GvCOyiC57kE
         Mco1A2O1S+qPyxrpWEIC1fqBw/3tdgwd4uMziHwIio5+hYainyegApXk5nUDkm0R3+OI
         NBpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :mime-version:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=J7JMUpPSC+/BmXdX59o4uj0R7is9nQu3zKq2gnQlrGM=;
        b=KyLkYm5wM8lg1FbLsbmwxbViIvPhhSZs77gPX5L0X3EvUos0ZCknZDaLkKBhrFLx+4
         R3zrI91v1mKIJMLFbuxPbTPZ5RDEelu1r/qyYZUXuDkx0iTIcj+Hti67SNqrPQYNT3k0
         6PAB4yILFNaOJoS5PTf4Ud+8ZAAhhhVHMh2fEVlFxPBTyAKJWPu0QfYfn6PakidBjfAd
         wuP0LHvWaFpCLMldzF1qcE6yHTy5mkwqKVUkCcIaJ0B5/0bFL+GSqGF4uwedQG1Y3rkv
         XVp0EcMiK1eSdhPsne2aGQWzV4HZOJ+vTe7rwWGBNqSt1+Ps4BnSAz06yFS+HR7eF4aE
         Jo0w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532rW4QhbK6Z0Lq4xBTfYrf77DhnU9AffDMerl/UCokrrn6dtmMX
	+n92kPDLz77c35B41ubh82c=
X-Google-Smtp-Source: ABdhPJxAjCVh+0NwrP01hioDSvUjSSmRnlHx9OfChyQD9XkBrg2AaNwevD4+AwjqHYTxxfmKpXsaXQ==
X-Received: by 2002:aa7:dbc7:: with SMTP id v7mr13082361edt.110.1619906339764;
        Sat, 01 May 2021 14:58:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:af79:: with SMTP id os25ls4622929ejb.8.gmail; Sat,
 01 May 2021 14:58:58 -0700 (PDT)
X-Received: by 2002:a17:906:ce5a:: with SMTP id se26mr10489401ejb.332.1619906338828;
        Sat, 01 May 2021 14:58:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619906338; cv=none;
        d=google.com; s=arc-20160816;
        b=XRBBpRO2Xbb8SzpHLHmob/oX9bEr6liyv+XD3zlQluZ0CPcPapNihtgJ7FazfbmVsC
         bbSosw0GJRmUqE2Q4bCmdoIVZNvSngEtvx5QHvdTExy+xg58kzTuKoaMdnDy1+LwtBBM
         K9m0k07BT8c+u3IhkG83bcigPjlJ3a4Y6VwqgatRH/cWNnYaWulxyCtvNKvL/+h8xBeg
         Yah6aLCfpMOTvVxLjl9lSbKaEFrlAUnd+nEBAEvJOYG11eu5a7X+Qsl63t1sTgODDAX1
         obXttg3brL6CxnpFZjAxtAE90P6+Y5WG/2JXlmGlegsjmJJ4s+3Ccq53SSOsIX9BcdCx
         oBlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:mime-version
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from;
        bh=ReJ6MvAk+AmH6CGt1IAOIo+UdvRPLvahfkDB3uZC2q8=;
        b=rVGXu/l4dmypx8gfOZeC7JxctLUimOPeM5x4M/2fKKgG8Xm8RTyJHmJNXbqu5oLamW
         S+2hjdwUJKSW1STYDhp6geumEIqcFwkrZvbKydZxK/0IGUHPkEg3OGE5+Y2EPH28mUdH
         VIeHHcaY4OKvP+ocUPPR6GJnsp/1C777T5KDT3lrEyJdqkeS5oxCzsM9hpJb6a7tga9k
         UXAkqZLoiGiaaJl06/+opfy5OF2zE2pMzn+tuh4RtpPWh3USmnTo2sx/dnHCxROpiSvM
         4s0AAIFOt7HpfuZNk/8iPRb3oaeXEITR9SXaPnhB8R91Ze/4phD84MRDE/XVVig+E/Az
         CI3A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 185.58.86.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=aculab.com
Received: from eu-smtp-delivery-151.mimecast.com (eu-smtp-delivery-151.mimecast.com. [185.58.86.151])
        by gmr-mx.google.com with ESMTPS id r21si843604ejo.0.2021.05.01.14.58.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 01 May 2021 14:58:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of david.laight@aculab.com designates 185.58.86.151 as permitted sender) client-ip=185.58.86.151;
Received: from AcuMS.aculab.com (156.67.243.121 [156.67.243.121]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-219-XitVAh9wO_qslDbvJLjheA-1; Sat, 01 May 2021 22:58:56 +0100
X-MC-Unique: XitVAh9wO_qslDbvJLjheA-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:994c:f5c2:35d6:9b65) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:994c:f5c2:35d6:9b65) with Microsoft SMTP
 Server (TLS) id 15.0.1497.2; Sat, 1 May 2021 22:58:55 +0100
Received: from AcuMS.Aculab.com ([fe80::994c:f5c2:35d6:9b65]) by
 AcuMS.aculab.com ([fe80::994c:f5c2:35d6:9b65%12]) with mapi id
 15.00.1497.015; Sat, 1 May 2021 22:58:55 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Linus Torvalds' <torvalds@linux-foundation.org>, Tom Stellard
	<tstellar@redhat.com>
CC: Nick Desaulniers <ndesaulniers@google.com>, Masahiro Yamada
	<masahiroy@kernel.org>, Nathan Chancellor <nathan@kernel.org>, "Linux Kernel
 Mailing List" <linux-kernel@vger.kernel.org>, clang-built-linux
	<clang-built-linux@googlegroups.com>, Fangrui Song <maskray@google.com>,
	Serge Guelton <sguelton@redhat.com>, Sylvestre Ledru <sylvestre@mozilla.com>
Subject: RE: Very slow clang kernel config ..
Thread-Topic: Very slow clang kernel config ..
Thread-Index: AQHXPqegH46G91tEpEmd7WaoBDaEqarPJ2lw
Date: Sat, 1 May 2021 21:58:55 +0000
Message-ID: <4b77489c05f6459ead7233c3fb69f61e@AcuMS.aculab.com>
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
In-Reply-To: <CAHk-=whs8QZf3YnifdLv57+FhBi5_WeNTG1B-suOES=RcUSmQg@mail.gmail.com>
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

From: Linus Torvalds
> Sent: 01 May 2021 17:32
> 
> On Fri, Apr 30, 2021 at 8:33 PM Tom Stellard <tstellar@redhat.com> wrote:
> >
> > Yes, it's intentional.  Dynamic linking libraries from other packages is
> > the Fedora policy[1], and clang and llvm are separate packages (in Fedora).
> 
> Side note: I really wish Fedora stopped doing that.
> 
> Shared libraries are not a good thing in general. They add a lot of
> overhead in this case, but more importantly they also add lots of
> unnecessary dependencies and complexity, and almost no shared
> libraries are actually version-safe, so it adds absolutely zero
> upside.

It's 'swings and roundabouts'...

I used a system where the libc.so the linker found was actually
an archive library, one member being libc.so.1.
The function that updated utmp and utmpx (last login details)
was in the archive part.
This code had incorrect locking and corrupted the files.
While the fix was easy, getting in 'installed' wasn't because all
the programs that used it needed to be relinked - hard when some
where provided as commercial binaries by 3rd parties.

I've also done some experiments with the mozilla web browser.
This loaded about 30 libraries at program startup.
The elf symbol hashing rules don't help at all!
Every symbol gets looked for in every library (often checking
for a non-weak symbol having found a weak definition).
So the hash of the symbol is calculated.
It is remaindered by the hash table size and the linked list scanned.
Now the hash table size is the prime below the power of 2 below
the number of symbols (well was when I did this).
So the average hash chain has about 1.5 entries.
With 30 libraries this is ~45 string compares.
If all the strings start with similar strings (C++classes)
then the strcmp() are quite long.

I played around with the hash table size.
It really didn't matter whether it was a prime or not.
For libc the distribution was always horrid - with some
quite long hash chains.
Making the hash table larger than the number of symbols
(perhaps 2 powers of 2 above) would be more likely to
make the hash hit an empty list - and skip all the strcmp().

The other 'trick' was a rewrite of the dynamic loader to
generate a single symbol table that contained all the symbols
of all the libraries loaded at program startup.
Process the libraries in the right order and this is easy.
That made a considerable improvement to program startup.

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/4b77489c05f6459ead7233c3fb69f61e%40AcuMS.aculab.com.
