Return-Path: <clang-built-linux+bncBC27HSOJ44LBB7E4XKCAMGQEMCWH6GA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23c.google.com (mail-lj1-x23c.google.com [IPv6:2a00:1450:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AE48370B57
	for <lists+clang-built-linux@lfdr.de>; Sun,  2 May 2021 13:35:25 +0200 (CEST)
Received: by mail-lj1-x23c.google.com with SMTP id b29-20020a2ebc1d0000b02900c1e757dff6sf1420467ljf.13
        for <lists+clang-built-linux@lfdr.de>; Sun, 02 May 2021 04:35:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619955324; cv=pass;
        d=google.com; s=arc-20160816;
        b=FS7dqoVaQ6DUQZCI4HcNI8wkVpIZARAjfo8cOytsl2F7DIf27jmOMduAdIrxC8700L
         d5dGmjJ7nEKkkvNCS1S8kAKPmXBE1yT0TdpB7MDhShcPqRWZ/WRL5CPL0EH3WhA6QH4J
         PfLGitPJgrBrpkNMvJ1PIemDPnouQ4E24+ba/6xB5e6O3g0n/sYjZjisXpmPR0ja52Ok
         9ayrli0C4JeP9cAf6eHGHeZON964aiS9oy/16cAAPczWmXueMmv7uHuM/gwONwc4sib/
         Myy9TDdus5OKNkxWzZgIU/Crs1P3mJ8zmtIHh1fWrJp63xzybSxV+EzKl84rIm9zKu4M
         tO3A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:mime-version
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=NKV0hpsrN5e5NCbMyxGZKQ7iGjyCx9tllFC6L4r395Q=;
        b=pO8UTXFr8LCOvLuoGbfXClZUW8x5k4tEFi5Iy14r29rH1I5f2M2PNcZ0yMsebUpM29
         XnsUrrR9ABchgj/fgcavsMakakSClQHFjsSOSuCZ3S9G1aIFsSMNyIGaj+yXRCyQ8wMo
         i30Z3N48BCJ9IOVcZgXsJg+SZIyllROpoH5idWUMXkp5xhqdYZSTAs2LLWEtHwzXwYiy
         OvwD+eiuRjhy6G7f0mveGXYZ444D/U5LNMXkahlmC4hljZ5QJD4Z63aWagw8maPdyUw+
         hYWtDGKvQW0GjsQKZ8V6v9WslCEgxK8EUaPauGMVf/JxmxaVsodc0r3WoJF34h5YDGfO
         J4nQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 185.58.85.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=aculab.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:mime-version
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=NKV0hpsrN5e5NCbMyxGZKQ7iGjyCx9tllFC6L4r395Q=;
        b=J/Nmn9ZSL4NSZojTWShV33SWPVJuL5b+6ClHalTCH0Q8mlWHcjFOaZjlxFaPMFfZUG
         LIb5+k0hXt3+6K6HVKCX32TaoaoVdoTqZPdZOb0mqsQrOgtnUm7b+mDIyQKvfWf01M6H
         f18FGDMS7qkCqwKLH49NAGYrjv6emlol3cmHnGY0UI5ZCJAyP61EP811hsztYpDfvMJf
         FB5SKsEmnBbLA7wR1die1CgKI8XjvkKhV9ONqqt1FVGq2x4fKj3i1lg8W3j6j9IkXxki
         XST+ram2ezjYlFerqteFApSMF5iOmc+rTVu4a2MwMNjxdDhsZfPwekGFieUe3lTrnQ3J
         EyLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :mime-version:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NKV0hpsrN5e5NCbMyxGZKQ7iGjyCx9tllFC6L4r395Q=;
        b=RGT+4Gl1/4X5Vut8mPvBoVpspQQcJTwwSaVI8w9wEuGWVEYEHuPH0IjaCVP1k5d/ex
         PuTLnoTPm3AqI3D41pzceQfYMsc5gG7OBvhvfLs/NWnuq0m269+iCUpttIiC7JeSD2TW
         xZmD+RQUR5x+YqcdwM94vQN+w6xmsIO4Z7DpSDFSTq424gtifZlJXrmjsz4da8jL4xxO
         HtpRdbIZoa4UnOmC07p44spOOURFO/mxVZHf6JYTOHo/YDDB5hcd2Yw3a2IvuiWiPMIr
         n41bGKGmq06shGWz6Ij7wfIa89Qb8MboGAaFKRp8znJJXZXejynwAS5AyNTaYuX4wEzm
         ytYw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5322YwyXnKCEfYRrOQjkPCcGvclrTnmh6xc51FhYP+6BmPr87RMV
	XCqGjQpzmIgXjJguhqND26g=
X-Google-Smtp-Source: ABdhPJzW4g31j9QOgh31HeqMbYXvs5H7KrvyrBSwyaCUToyJKX4jnQplK3dMh7uFvF/HPA8JYUdmhA==
X-Received: by 2002:a2e:b531:: with SMTP id z17mr4499489ljm.126.1619955324836;
        Sun, 02 May 2021 04:35:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:1025:: with SMTP id w5ls533486ljm.0.gmail; Sun, 02
 May 2021 04:35:23 -0700 (PDT)
X-Received: by 2002:a2e:7e0b:: with SMTP id z11mr9682531ljc.343.1619955323804;
        Sun, 02 May 2021 04:35:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619955323; cv=none;
        d=google.com; s=arc-20160816;
        b=oscavO9x7fG86dz/++5ydXF2venJaU0tuvYPCPRVENaAXF5Ffkpa2zJGAl3UG8FV8A
         uCADD2bnTxoZBNZ6dFkEKd8O64PW+L/TL8NTDxM4kVfE+jZCbve1+JsGZnr5v128Ph3W
         mZsMLf0dGhTvCIwa3HmrLQAK3LBQQnOqfczj0htpH2Z2pYJoVJWZ9HpTdDqt48csQymh
         V/rbt+ZAhqXW9xXiKMkJbeA3OFWlUewjyzC63ndVPYUS99YQFDerYo7vLsxQLZBcmf7h
         5NShJ8BGeFihblwtQKdaeya0AnW/Ywpz4m7lVPHGIAOa3jF7yKlDPG+0StqqiPNzfw4m
         Bg8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:mime-version
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from;
        bh=s8x0BiI029mrmDBATMtZMXKxZNjlVu+x5br1v+amZCE=;
        b=hzi2hkt4oedMGV+uOp7jOjcQ3nWtxN/KzIBx2bOLYzu0onJ4w+eDD6ymLgn7ftgcAY
         KXAmG3LHlhd7U1z8+SAMmwBHaQvPqMVZtrbLyPXG/ig3YQ1cYQI5WW/pt9N3LM/dtxAq
         cqNM9raw9JfRFUs6dMTec4jz//s6v6RplofIEb4EwHtU3zMs3dHJZD9qy7VJ5j5soFaS
         DOKM/yPHDd7EEJFJFluJ4PBYCT27OWPnf23gp2nB8uD5cmDdm8/Ul2X034k50e97uj22
         +WPlEMMycULUqI9PWP2EysaoJkcf6eyFplH2LL0auPIRmtwI1oBsGS/WNe+QN4DDJUvw
         S6pw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 185.58.85.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=aculab.com
Received: from eu-smtp-delivery-151.mimecast.com (eu-smtp-delivery-151.mimecast.com. [185.58.85.151])
        by gmr-mx.google.com with ESMTPS id e9si743188lfs.4.2021.05.02.04.35.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 02 May 2021 04:35:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of david.laight@aculab.com designates 185.58.85.151 as permitted sender) client-ip=185.58.85.151;
Received: from AcuMS.aculab.com (156.67.243.121 [156.67.243.121]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-220-8YP8zTAbMZCNW5G_cyVtLA-1; Sun, 02 May 2021 12:35:20 +0100
X-MC-Unique: 8YP8zTAbMZCNW5G_cyVtLA-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:994c:f5c2:35d6:9b65) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:994c:f5c2:35d6:9b65) with Microsoft SMTP
 Server (TLS) id 15.0.1497.2; Sun, 2 May 2021 12:35:19 +0100
Received: from AcuMS.Aculab.com ([fe80::994c:f5c2:35d6:9b65]) by
 AcuMS.aculab.com ([fe80::994c:f5c2:35d6:9b65%12]) with mapi id
 15.00.1497.015; Sun, 2 May 2021 12:35:19 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Adrian Bunk' <bunk@kernel.org>, Linus Torvalds
	<torvalds@linux-foundation.org>
CC: Tom Stellard <tstellar@redhat.com>, Nick Desaulniers
	<ndesaulniers@google.com>, Masahiro Yamada <masahiroy@kernel.org>, "Nathan
 Chancellor" <nathan@kernel.org>, Linux Kernel Mailing List
	<linux-kernel@vger.kernel.org>, clang-built-linux
	<clang-built-linux@googlegroups.com>, Fangrui Song <maskray@google.com>,
	Serge Guelton <sguelton@redhat.com>, Sylvestre Ledru <sylvestre@mozilla.com>
Subject: RE: Very slow clang kernel config ..
Thread-Topic: Very slow clang kernel config ..
Thread-Index: AQHXPzXqH46G91tEpEmd7WaoBDaEqarQCO0Q
Date: Sun, 2 May 2021 11:35:19 +0000
Message-ID: <0eba31ea508f4ec491f56e3b8c85fb6c@AcuMS.aculab.com>
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
In-Reply-To: <20210502093123.GC12293@localhost>
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
 (google.com: domain of david.laight@aculab.com designates 185.58.85.151 as
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

From: Adrian Bunk
> Sent: 02 May 2021 10:31
> 
> On Sat, May 01, 2021 at 09:32:25AM -0700, Linus Torvalds wrote:
> >...
> > Yes, it can save on disk use, but unless it's some very core library
> > used by a lot of things (ie particularly things like GUI libraries
> > like gnome or Qt or similar), the disk savings are often not all that
> > big - and disk is cheap. And the memory savings are often actually
> > negative (again, unless it's some big library that is typically used
> > by lots of different programs at the same time).
> >...
> > I think people have this incorrect picture that "shared libraries are
> > inherently good". They really really aren't. They cause a lot of
> > problems, and the advantage really should always be weighed against
> > those (big) disadvantages.
> >...
> 
> Disk and memory usage is not the biggest advantage.
> 
> The biggest advantage of shared libraries is that they enable
> distributions to provide security fixes.
> 
> Distributions try hard to have only one place to patch and one package
> to rebuild when a CVE has to be fixed.
> 
> It is not feasible to rebuild all users of a library in a
> distribution every time a CVE gets published for a library.

Absolutely.
You'd also need to rebuild every application that might include
the static version of the broken function.
Good luck finding all those on a big install.

OTOH just splitting a compiler into multiple shared objects
that have no other use is, as Linus said, stupid.

Building shared libraries requires the same control as building
the kernel.
The user interface mustn't change.
You can add new functions, but not change any existing ones.
This is easy in C, difficult in C++.

Since PLT lookups can only handle code, you really don't want
data areas shared between the program and library.
If the size ever changes 'horrid things (tm)' happen.

We compile any shared libraries with -fvisibility=hidden and
mark any entry points with __attribute__((visibility("protected"))).
This means that calls with a library are simple PC-relative
and only the entry points are visible outside.

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/0eba31ea508f4ec491f56e3b8c85fb6c%40AcuMS.aculab.com.
