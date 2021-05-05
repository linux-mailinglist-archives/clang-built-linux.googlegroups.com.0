Return-Path: <clang-built-linux+bncBC27HSOJ44LBB66PZKCAMGQEVPLYBOY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23c.google.com (mail-lj1-x23c.google.com [IPv6:2a00:1450:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E0D7373D65
	for <lists+clang-built-linux@lfdr.de>; Wed,  5 May 2021 16:13:16 +0200 (CEST)
Received: by mail-lj1-x23c.google.com with SMTP id s4-20020a2eb8c40000b02900bbf0cb2373sf1084086ljp.18
        for <lists+clang-built-linux@lfdr.de>; Wed, 05 May 2021 07:13:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620223996; cv=pass;
        d=google.com; s=arc-20160816;
        b=mOKrGCUJnI2iXKgmsq9NPwGXu8Xus7p0RE7orNeEvlTdqUd2k63ti7CnxWPCIUH4vn
         Ax4iQ6D4+MqZLq6RYuwQXmbGIK60MgBJLnDkSujJ9rsEpsWv0HzzW0TCzzKxcp3BeZ9x
         W3fEt7UpwYjY+eKpcDKEmuYRYZDmIXKkM3PL+LabupvSdwI71TMXm/3CwKRvgCkKVKy6
         GefKHQ1Wnwftg8GavD6RBn6ncPj77ewDBi+bejxkfwEKVqkc1fVO50i0BlAJ9OB8n+XY
         Y/UUDZPWRwDSSLOM2rGgrl1YkKJAocDqDJYolU09Svlhrs81ifLU6xSdTwM3utquhZYj
         Dycw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:mime-version
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=vGfKGUO6HTDVzPszfo6Yzo/ww6T6muRbywoLYGoq/vY=;
        b=cq/SrXZSWoC9i4xu5A8n0GSQrhqkYGUrbCpz/+L9TzWLmR8LxqYg/UiyJ1fvEAejrm
         2SytdnIRli6APZK0pkZtCgOxlxKjkcClCXdfwV0wtjq0sd5inIjCLuEt1UzNmt7Z9PKd
         ERsIP+Uk1jtD8/LmBQTaI7u3benvANN1iitoSW38jTJNZkDeEL0mClGfp6hUe/8ean6L
         fnJANB618vPE7SKKp1Wnp9lqhVl5RH1qwt1L7GKExnPw7tesHI4z/CR65q5rkpYxagoa
         BmHaC74KOw1+Cfach+xnifCcFJgDShIKbm+p7FdthiknEuqk1SlCOd84UefbEq8Hy9aC
         BFCA==
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
        bh=vGfKGUO6HTDVzPszfo6Yzo/ww6T6muRbywoLYGoq/vY=;
        b=jSVnPl7KHta3s4JcPRXwX1/OSTlQtMWGnY2kI5aVoTp6Ge30bETpKmbDe8gRVhtJmy
         D7xQ0JWgedYyRULZ5t+428DkbypQkkAjoSMqxuEPxHM/i7z+xEZdNLDYjf+vFYgadzMe
         VYuDvOOM6tgQIiFy6ishGuWZp4bn9h/CRqWNsHKsWZrYb+1qsiH8w6kchSY8JTeS3zCJ
         rrDPmtBhcik6QwjZfzRYalS3Kr98mxAgkJsaYw3Mopq+FVdmvA9sqEjyxNtJhxSf92qz
         H2gmZYPSK3sdfQlKrY/RixKimWyPFX/neZNm6kBsjv1hhAsl5t99oozh/Y2oAJqLBm5j
         HRbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :mime-version:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vGfKGUO6HTDVzPszfo6Yzo/ww6T6muRbywoLYGoq/vY=;
        b=rx08h+ri2yHerCL0UQqVX5SeAsZbiK4vWfy07+5SvZtLPvu2Z3TWlAYSbezGO2xBlR
         ZHN7dDrf+30osxaoP/OmsFrwZBaMGCkta1CgWyyLbBKu0BB4ht7ryWdE6HyeVlWM52Qw
         pGyjzlV7ZpmKFLcy6XE7gC5EwlJpKG96abtE1RHGlvY4CBb0ALws9etHgjAx6n3csILR
         uXDEzptTchSbjRuPUjmQN45LvHowfBqzu/81mH4gxpAx6e5aX0jR1JbkZTqycdCGIPUl
         Bs+CNh/ON+lw+Zn3yBirvHoo+ZeI1Ro+1d4d2+MDRKyf4B5XdIWSD588MO6BC3pKYGwX
         3PIA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531uNMYU/EmBpkM97Pye3dWJItRFlFwzvRPYQnsUpz2QXZCo62TH
	xXuJCc5I9LRV6WyWk2h0hFo=
X-Google-Smtp-Source: ABdhPJxYVC5tu4koLbPrySBCDB1Bpx/z8AIFW6ctYiAMM45NxxVHDCNBISxf05BUIQ2L5LXkW0XzBw==
X-Received: by 2002:ac2:51a3:: with SMTP id f3mr9910914lfk.119.1620223996065;
        Wed, 05 May 2021 07:13:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:a785:: with SMTP id c5ls4941097ljf.8.gmail; Wed, 05 May
 2021 07:13:15 -0700 (PDT)
X-Received: by 2002:a05:651c:1182:: with SMTP id w2mr5875547ljo.108.1620223994926;
        Wed, 05 May 2021 07:13:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620223994; cv=none;
        d=google.com; s=arc-20160816;
        b=PB9ihON1OY1S0Hed1FyXnmEjPzMbQ4i54ja58UZ+EPNP7clnLxbnJ4FgMA4ZPgL+LF
         TeiV0Xph3NgheUjdqZR7qjZ3BVZT0OzEUx31I/oSbYaZ7EkwxoyDW3mYDVvcRJFtVtiA
         py96v4EaJwNqFyZDAUYwpWkzKNAgZXmM9WJtYJvLTZ3K0Rm7TXFXFMhhPcBuoowUvFmY
         hNQS/+otJ+Y+xNybWuIbG7kN2E5yMNRxHWbKoP1++56XIu7qYREPio7a4ANtSsoc4hEb
         eCjw57eap5Vkoeb5srOyyZXwrUEEn2zBr8/2OZvR4oqLZSoTIpMqeg75g35nU32YWAB2
         kYbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:mime-version
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from;
        bh=qqAzhyJRxDoI7vK36g1FKdMCEScIhulIPNi0akY1Wf0=;
        b=gcuBVTfyY5tfT+5TEWjeaxcZFD3hDgRlivRFwqz6u5awDYIjJkbUcbZM6BySW0cqQf
         5I2FB7Z44c7iJObb+pYLRpeP/++afHntNv8LqBJG4UMmvWIdaX5WSzI4TXtPD0jKcX0D
         fZeuPFvvTsLmZ7rvbY+NRabW1qIWt2q/7v2T0P+7VBsKycuddIqgUl+gtCYc1J3pYQ3i
         SPTRaO4IYAgB5GscieFQJnoKsbFc9YiCIdfJeKSQaEHeiZg/lOGSiutjcsG9PUVOjJN+
         PiySqghgG12K+cI1sjZivLOxdD+qGQH9gZTpef92by+/YgiLd4VcgswUAtrjyunHeKEE
         6lFQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 185.58.86.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=aculab.com
Received: from eu-smtp-delivery-151.mimecast.com (eu-smtp-delivery-151.mimecast.com. [185.58.86.151])
        by gmr-mx.google.com with ESMTPS id d25si333236lja.2.2021.05.05.07.13.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 05 May 2021 07:13:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of david.laight@aculab.com designates 185.58.86.151 as permitted sender) client-ip=185.58.86.151;
Received: from AcuMS.aculab.com (156.67.243.121 [156.67.243.121]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-187-KHEAOyw0MByZbOGIVPi3DQ-1; Wed, 05 May 2021 15:13:12 +0100
X-MC-Unique: KHEAOyw0MByZbOGIVPi3DQ-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:994c:f5c2:35d6:9b65) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:994c:f5c2:35d6:9b65) with Microsoft SMTP
 Server (TLS) id 15.0.1497.2; Wed, 5 May 2021 15:13:11 +0100
Received: from AcuMS.Aculab.com ([fe80::994c:f5c2:35d6:9b65]) by
 AcuMS.aculab.com ([fe80::994c:f5c2:35d6:9b65%12]) with mapi id
 15.00.1497.015; Wed, 5 May 2021 15:13:11 +0100
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
Thread-Index: AQHXQS0DH46G91tEpEmd7WaoBDaEqarUt3wQgAAhgoCAABGacA==
Date: Wed, 5 May 2021 14:13:11 +0000
Message-ID: <3ab89c4f8b1d455ba46781b392ef0b2d@AcuMS.aculab.com>
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
In-Reply-To: <CANiq72mq-SP5n_0cVr+eaP19xqJTP15V+JKUeqLiT910x=3NdA@mail.gmail.com>
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
> Sent: 05 May 2021 14:54
> 
> On Wed, May 5, 2021 at 1:06 PM David Laight <David.Laight@aculab.com> wrote:
> >
> > The problem isn't the packages that come with the distribution.
> 
> My question was in the context of Adrian's emails who were mentioning
> issues for Linux distribution etc.
> 
> > The problem is 3rd party programs supplied as binaries.
> > They have 2 big requirements:
> > 1) The same binary will run on all distributions (newer than some cutoff).
> 
> This is fine with the "everything statically linked" model.

No it isn't.
It may work for simple library calls (like string functions)
that you can write yourself, and things that are direct system calls.
But it falls fowl of anything complicated that has to interact
with the rest of the system.

> > 2) Any serious bug fixes in system libraries get picked up when the
> >    distribution updates the library.
> 
> For 3rd party software, this is usually done through an auto-update
> mechanism of some kind.

I can already see a held of pigs flying...

> And since the vendor typically provides
> everything, including dependencies (even libc in some cases!), they
> can afford to statically link the world.

That might work if they are supplying all the applications that run
of a given system - and probably including the kernel as well.

> That model, of course, has issues -- the vendor may go out of
> business, may be slow with security updates, etc.

Many years ago the company I worked for found that the unix 'utmpx'
file was getting corrupted (due to incorrect locking).
The functions had been places in an archive part of libc (for
various reasons).
Getting the fix onto the customers machine (we were the OS vendor)
involved determining which applications from 3rd (4th?) parties
had been linked with the broken code and then applying enough
'gentle persuasion' to get them to relink the offending programs.
Even this can be problematic because the source control systems
of some companies isn't great (it is probably better these days).
But getting the 'previous version' rebuilt with a new libc.a
can be very problematic.

> But this is all orthogonal to Rust -- I replied mainly because it was
> mentioned that Rust brought new issues to the table, which isn't true.
> 
> > There is also the possibility that the implementation of some
> > function differs between distributions.
> > So you absolutely need to use the version from the installed system
> > not whatever was in some static library on the actual build machine.
> >
> > Both of these need stable ABI and shared libraries.
> 
> Not really. If you go for the "statically linked" model for your
> application, you only need to care about the syscall layer (or
> equivalent higher-level layers in e.g. Windows/macOS).

No because there are messages sent to system daemons and file
formats that can be system dependant.
Not everything is a system call.

> 
> If you trust vendors a bit, you can instead go for "statically linked
> except for major system libraries" (like libc or libm in Linux). This
> is what Rust does by default for the glibc x86_64 target.
> 
> Given that nowadays statically linking is convenient, affordable and
> improves performance, it seems like the right decision.
> 
> > Remember, as far as userspace is concerned, foo.h is the definition
> > for 'foo' and foo.so is the current implementation.
> > (yes, I know a little bit of info is taken from foo.so on the build
> > system - but that ought to be absolutely minimal.)
> 
> No, that is only the C model for shared libraries.
> 
> C++ has had templates for decades now and no "C++ ABI" so far covers
> them. Thus, if you want to provide templates as a library, they cannot
> be "pre-compiled" and so the implementation is kept in the header.
> 
> This actually turned out to be quite convenient and nowadays many
> libraries are developed as "header-only", in fact. Moreover, recently
> the C++ standard introduced new features that simplify taking this
> approach, e.g. C++17 `inline` variables.

Remind be to request our management to let me remove all the C++
from most of our programs.
None of them actually need it, the reasons for C++ aren't technical.

if you want to see something really horrid look at the inline
destructor code for iostringstream.

And don't let me look at the code for CString either.

> Rust has the same issue with generics, but improves the situation a
> bit: there is no need to reparse everything, every time, from scratch,
> for each translation unit that uses a library with templates (which is
> quite an issue for C++, with big projects going out of their way to
> reduce the trees of includes).

That sounds like it has all the same problems as pre-compiled headers.

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/3ab89c4f8b1d455ba46781b392ef0b2d%40AcuMS.aculab.com.
