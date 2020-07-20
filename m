Return-Path: <clang-built-linux+bncBC27HSOJ44LBBVG4234AKGQEWP4KLOA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 28E28226270
	for <lists+clang-built-linux@lfdr.de>; Mon, 20 Jul 2020 16:46:45 +0200 (CEST)
Received: by mail-wr1-x440.google.com with SMTP id z12sf1077609wrl.16
        for <lists+clang-built-linux@lfdr.de>; Mon, 20 Jul 2020 07:46:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595256405; cv=pass;
        d=google.com; s=arc-20160816;
        b=s4VKIKHL8uL3DwfDoXric0Ru0P0JA+vKge9XWQEqsutPgEQMiqG8xnPGqgawFAYmZd
         NoylJTs6xbnQoC9ylBsWncZW/2GEMVOzACMgML65MtwDea7XREGn1u8Ng+SrRv7mocTN
         fNOSLwks4G2zBA/GycG76/f35g6cNwaxIEQOu/4QRM5SeIdQyh+Ub/nr+0HC2nu/2Ics
         Q2BANLuCDySaEmQFFNDWYfKPjNeaCwWvD3e0cRu5ZD8Eo4ka9PZbccEgXNVQ8V5dunej
         S3KUe7AHmJvRoXaxcFCvME450ZvoMqK6AVpThQb4g6oP61BaX3gsEUmZ0V0qCrGK9k2x
         kTWQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=ULSTdB02NhYaCNnkRL5ABxWZfjWw2bCq4uift8Jfutw=;
        b=xFJ0b2taPdJygtZUzceTezzvnS0DRaLntn8avd1YIiEdV1QqRu5VllYBUQhh9NTMLC
         xh7Z0XoumLSYrK0I9BJgBJz2ucj99qwItjvTKsBIzE0hRnUIzDmaAYvbSFeoLrzBMuVa
         mi/ZA+rQrFHKbXkxfxzOyj3qrzcmoh1xRBEdD75JCxiWJhvtRflcWpEYwJUz03Ptto0+
         yo4WlvgZtmwTAxYQPRBYR8569XAT1O8yVVJcEKgRCfxe7s8aT8jOVWz2JPU2PYo76cCZ
         BtUh8mPCKr1eBBVaEaDKcHlacHflwc8REiuRcd4ccbzReA4xe0EUvi+3ceiyD1Thbbu2
         52gg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 185.58.86.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=aculab.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ULSTdB02NhYaCNnkRL5ABxWZfjWw2bCq4uift8Jfutw=;
        b=i1C/OLagO6VpxMGxi/nxFX/fzMDPgQuuYyRiwwd2+cpUpTWujQtiM/SZ6ZXXL5eB2g
         6HVx4+2a00fV9rPxrp2sDDu2RQ7VwAi15NKD57GK8TxXjN1C3MxC70GSImPeiPD3N31x
         ZYCVoMK09b/YZ2Cf/WK1XOKD4PiosprPPKN37ht9vgLxKcJm4TPiiNTHpir6qWNDIKA4
         0Zih57GGKRXLz2rJSCgINYwn1gC9vjwqVdiIf5fzfnznuEuAuQf9B+wlmA7AgXshA5sU
         SklE+ZwRfMYitaWBXHpiobYqwKF40uwGr8JUMfi675mToBl5neGjDWs0cP+oGh4AvnG6
         2G6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ULSTdB02NhYaCNnkRL5ABxWZfjWw2bCq4uift8Jfutw=;
        b=VYBT9nNjP1igUYHVx11lMJDlpG19A39qYQelTbqBYt3QAf/LT4ZRKMCgPstHXa25Qg
         UKEqDtZqA7bwfWhedhL4W6+rbxGmqgIyqkWRZ50W/F4WqqSXqXfVTCaDAjEX+z4p4H7k
         M5Wr+YKNmROIws9eAEzwZTRwlhhQKMW1qU+q/iz9isIRXanJy9SfL5tzyh+AHt4fPYFP
         XfI8AxqYexhvC7MhQ0ZBKm3C8Ex943Aene2yFJBwvzSPFuRfCvR4z6SnHXjOHMEpTymD
         M3oETf/8VG42x3qHpqV26Uaozb9kMZ3fplebWDjyF3pM92PPdDb4NTN1ZzX4SF4Y7Z+m
         Z+6A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531xIgluKvE35IiWRRvZKObuq+2Mmifm2n65fXsmu6z5ay45fEv+
	Kq7J2adtOd85RvNCRaOJSos=
X-Google-Smtp-Source: ABdhPJxPR872rXf7+UvUbWZRkMV00KOkS08WRnbsICpSgInUAlKqhPcRj4RqJ9ycSFrfkq42D+zSiQ==
X-Received: by 2002:adf:f311:: with SMTP id i17mr23410353wro.237.1595256404896;
        Mon, 20 Jul 2020 07:46:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:6507:: with SMTP id x7ls66363wru.0.gmail; Mon, 20 Jul
 2020 07:46:44 -0700 (PDT)
X-Received: by 2002:a05:6000:1c8:: with SMTP id t8mr24043471wrx.73.1595256404468;
        Mon, 20 Jul 2020 07:46:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595256404; cv=none;
        d=google.com; s=arc-20160816;
        b=keaoZDL7whX6lwj4LoQSqiUUUT/KtAYXjjdf3cLC+SdgOn18VVufXu6d+olrq9PctC
         +V/Uzzn2J9r1PKBxVe5QD6v4HJeop+pmtr7tdJvX55zfBCATPqhV/QPXuJMUbDhRELq+
         kimuDJUTLbQx+bvleTswM8IXSNvGVArUjqsxzVAYI9+24t3ul+Zeti332p+iDgxxiRPq
         L27VXD7zPLACtCn9ygAbFgS8wRcJRr8ZefOV0KmBQoDBRIoygI5hesO8NZJ7l53Alrdf
         BLruyp8UZrKDMFulwzS7Mxu3aKp7FwLVgw8cuC3RwKNITaflnW1hPBxByiDD3qv+222P
         9NtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from;
        bh=byG0xwyc8Wnj/aF1H0Vh/WVD9iBlArgL5tI8yO0fwZU=;
        b=mMhUYagcmOMoxavNZK1CeuZiNcC7u1XF2EtUD05j+lYH5A9rZL/uNXsKFRqAnD2toj
         W0QjHUFur/JBa54e7eP3uG4uhh6akTPmeANrMoTt6fm/Gj1AprZ6jhaIM1XtVj2H6AS5
         wbLx3Xq5a3YYqKljDEH6FF+hOlLkjyCdZbf7FtRw8nyUSnBv9MvfIMCDLr55RaD5n3sv
         DAihbJEsVymSWROtrkWavbmmtRbljtMt+sKDEt/1sEq4rYXxd4t1dgWh2bmoSOCl0Xph
         BRWRpxkBKhua9002/WNgbaaesG6WzCfdjqpF/pHwL3j7jW/3N36ipnh+vIIWm75/BGTc
         l7UA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 185.58.86.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=aculab.com
Received: from eu-smtp-delivery-151.mimecast.com (eu-smtp-delivery-151.mimecast.com. [185.58.86.151])
        by gmr-mx.google.com with ESMTPS id f143si8592wmf.1.2020.07.20.07.46.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 20 Jul 2020 07:46:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of david.laight@aculab.com designates 185.58.86.151 as permitted sender) client-ip=185.58.86.151;
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-245-SN1XnP0RO0aqHvsPMj43uQ-1; Mon, 20 Jul 2020 15:46:42 +0100
X-MC-Unique: SN1XnP0RO0aqHvsPMj43uQ-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) with Microsoft SMTP
 Server (TLS) id 15.0.1347.2; Mon, 20 Jul 2020 15:46:41 +0100
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000;
 Mon, 20 Jul 2020 15:46:41 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Adrian Bunk' <bunk@kernel.org>, Arnd Bergmann <arnd@arndb.de>
CC: Josh Triplett <josh@joshtriplett.org>, Nick Desaulniers
	<ndesaulniers@google.com>, "alex.gaynor@gmail.com" <alex.gaynor@gmail.com>,
	"geofft@ldpreload.com" <geofft@ldpreload.com>, "jbaublitz@redhat.com"
	<jbaublitz@redhat.com>, Masahiro Yamada <masahiroy@kernel.org>, "Linus
 Torvalds" <torvalds@linux-foundation.org>, Greg KH
	<gregkh@linuxfoundation.org>, Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Steven Rostedt <rostedt@goodmis.org>, LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: RE: Linux kernel in-tree Rust support
Thread-Topic: Linux kernel in-tree Rust support
Thread-Index: AQHWXfoH6gudBx9BoECMK8tCqgiy+KkQis3Q
Date: Mon, 20 Jul 2020 14:46:41 +0000
Message-ID: <b7d81a68c0b34acd84b6a78b6d37a776@AcuMS.aculab.com>
References: <CAKwvOdmuYc8rW_H4aQG4DsJzho=F+djd68fp7mzmBp3-wY--Uw@mail.gmail.com>
 <20200712123151.GB25970@localhost> <20200712193944.GA81641@localhost>
 <CAK8P3a20UQvQO0U=p1kBEUvRdwm8VFBa31aCe7C70hwTzcu_yw@mail.gmail.com>
 <20200719181919.GA4179@localhost>
In-Reply-To: <20200719181919.GA4179@localhost>
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

From: Adrian Bunk
> Sent: 19 July 2020 19:19
...
> The correct range for a mandatory tool are the 6 to 12 years for gcc.
> 
> Debian stable and Ubuntu LTS are providing (different) mechanisms
> for installing the kernel from the next stable/LTS release 2 years
> later[1] for supporting new hardware.
> If kernel 5.12 LTS cannot be compiled on Ubuntu 20.04 LTS with
> the 2019 gcc 9 there would be pain downstream.

We have customers that are (still) using RHEL6 (2.6.32 era).
Since we have to build C++ programs that will run on those
systems we have systems with very old toolchains.
(Yes, you can build in a chroot or an a VM but that needs
setting up quite carefully - easier to keep the old machine.)

It is rather a PITA when kernel builds deprecate the installed gcc.
Now I'm not sure a 5.x kernel will run with the userspace from RHEL6.
But I know it runs with that from Ubuntu 13.04.
In a few years I'll be able to use the 13.04 system for release builds
but it is still far too new for that.
However I can no longer build 'current' custom kernels on it.
I've other (newer) systems but they aren't any (maybe much) faster.

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/b7d81a68c0b34acd84b6a78b6d37a776%40AcuMS.aculab.com.
