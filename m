Return-Path: <clang-built-linux+bncBC27HSOJ44LBBK7OQLWAKGQEMYVVPFA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x437.google.com (mail-wr1-x437.google.com [IPv6:2a00:1450:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id E274EB4C0C
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Sep 2019 12:36:27 +0200 (CEST)
Received: by mail-wr1-x437.google.com with SMTP id a15sf461671wrq.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Sep 2019 03:36:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568716587; cv=pass;
        d=google.com; s=arc-20160816;
        b=kzc0Kb0kNO0biX4J2fR5WY23rp/+Fn+E/+D4LTZVpbXMfEBS7eplCgv05kIgdfqrcV
         FAjj+m30UIrdhy7JmMKn9pN06yT/vWKgVqUDpcpiwkCF6Us0fSbmb4sibj8qAzXtb/TB
         xQzIagSz/vuOB0/axOSOQ2g/H3hvIlNUWEawHP37LpDS3b27fedCAifeDmJqufrM6vpW
         mNFfiMjNjlIQeHjE3yNGTU3FEfLtN3yxrhmX0wFnTO/rR5T71qEpJjVs+0qyJrrEPdOO
         4M5XZcwiTZitA74pNIH8DrPmW1tZ2OEjwDFc9mcmCvxXNfZrYr2eC5QCdv6krlXMmben
         9oQw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=VGp82ikfZLK4QeZFuWCjjXiAY7Ra+qEDV+n/V4eUoYE=;
        b=yyE9jZKlpvR7WHz0ZOfA1VcBx+K00w2T50zkmZMBDJnndMqm0bCRjaQbanXK7uw1ZW
         kPiINzNyGEy+eVD2Lu2nCjzss5wxdICE+9r07NLf6HbwnWHQYqfMyUYH5FmA6r8Bvax8
         iyw6yLx/fkULwj0/tGLOBGlDqrvM7Z8XxvV1aFIguKolz2BoZsbXB7gQWRVWjRQcfrR1
         vkZ2HhGEfui8jhr3qmoearSLBXU/VReVt0Wmvz9sES/QFY8z/K1aT7XlvfWhdVjecNU8
         7vI+8I5aUjFINDRH8IFbWAubrU5MkiyaPCcTt6UpDFAlm1075pxuByFSNjBq32kSUUUt
         22lg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 146.101.78.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VGp82ikfZLK4QeZFuWCjjXiAY7Ra+qEDV+n/V4eUoYE=;
        b=O40b94Rhx15NblHg6F18AA18ZAkBayoa7sGisUYVKGQq/apWdfX98hLN1HdVHTQQqV
         MC+gkBaEAHIIzMHcR+FqBUIH8wNF+/fZiGJd0/R8gfFoRnMYjhfo5qATVqGZZ7x485PG
         d3J7iM/Y7wKGa4x+qwf+rMtrenq3RZvrKUBy4tymyN6urgDiMZtuGhA4pQTxuliWlP/O
         +1oO0xBLolIN2gZ43ci54E+6pdHQnvzcilu7YYeTuhVWWU6XI4Vuzf4/JmqWUSjueuLu
         CFw6Yb2fQtVyMuAk5N8P6rJDqBAYg5lAzSvU/2K61ToRLa4C44CGlEY7PxDLTboE6s25
         FJaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VGp82ikfZLK4QeZFuWCjjXiAY7Ra+qEDV+n/V4eUoYE=;
        b=i8VEjXX32BjonPoCNRkPLJG4HVwdJoFEOOwnMI09ILsQ+yVk3fa04oIS3/hZ1gACZo
         RD28KQEEJ9u/3wtZrRTtcW8lFNZy3/l+Q16kBSV+RV61V8qSx9Mi9OpSjc0Ak8fQ4kt2
         ocfG2zyRCAhIAmU1nuTQ+Hi+5tkAqc2MXg0adf2H1vfLVCtqg7OLBP5HjAuV3XVoOkPx
         y16aXE9Kq5zlCSqbv0JxPNOSTvioyksnaZWUy9ObXrgF8/QxsohocvX/2EMoVaXjQ9ZR
         DFpxZnj8t46D4Pj9q6Dkm/yoQeiQ3aV1VRHkMhDnFRY83t8iZp7jIgrDRJJfe5MuZEEz
         saQQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW6+f8rPEsWdY51hUeYLqMsD3DoNi2K5rBlSd2CPQVjgxLmq3kd
	PyxMVlyn/ZriuTNGZYw9Jr0=
X-Google-Smtp-Source: APXvYqxZ+S6FaWIxWfthfnTMZh2g80yBks0Gb0uDYLEVjx/B24dE5vyhQwyIGXwzi5Sgr5mMb02qdg==
X-Received: by 2002:a5d:4041:: with SMTP id w1mr2375327wrp.313.1568716587585;
        Tue, 17 Sep 2019 03:36:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:a586:: with SMTP id o128ls99054wme.3.canary-gmail; Tue,
 17 Sep 2019 03:36:27 -0700 (PDT)
X-Received: by 2002:a1c:6508:: with SMTP id z8mr3095790wmb.93.1568716587147;
        Tue, 17 Sep 2019 03:36:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568716587; cv=none;
        d=google.com; s=arc-20160816;
        b=AREDGJOGDcigeLWoXjYdv5W8gt2XFh+X0A39U2UU87o9lgvMh5tOOvNYudkO8sYT2U
         q1w8wx3cjFve8A6DaUTJx9blIjpzHonAxNAWaWMK4UtO3vNDvkaMBSLflyKl2tfQ8PpC
         W1obFFbt7LEp53wmJRkTJKEmBahKm9sBBCCZglqShsxImLiv9i9gyikClWp54HL5Tf7i
         W1Hduszc4U9nNVf+bgFFuEKoFAiMmqdUtTZWhCz6GZbIEziQRUgX+U9lIpp7CjAmoxWE
         Pewk7NMmhInUICHYY+gfFuw7ENAQfqNld6IYCAICo+P22AhsI/d/wG0DO5NUMr+gFXmm
         5yfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from;
        bh=myz1yszRwEnQ21WKt0mw2yeFoawd7R+qudoQGfUep8g=;
        b=Pb3wGZNyYm25XBzFpIdLo3UXHaaFtZ9K3TzvBYfrr9fuo9dCrQgJbkGf59OIwj0y/q
         K5q53nNvBEP6uUggBB8VtzUX5/EZzMkdLcJtIC/+KcYXhZWgOqqdWyZ749fuGhzdxvmw
         IzSDMyJDUuvDBHhBPoX+3qNhsBKHlky8g1RR/sUOfjjCyc0EynCgk6bdE/coM/JC65D8
         fuEAA8pRVUhMBIyLFDHqNUUHZP2uqOJBiGV5yTqvXnjxbvryJRFFXSE9Qwx21dVDgsZx
         F7PBkrg5eaedit6waQBKmaUBaPeSq3/L743aXc66kWIelXDuWzcA7dx5GCOTZB+pk/ha
         +NUg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 146.101.78.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com
Received: from eu-smtp-delivery-151.mimecast.com (eu-smtp-delivery-151.mimecast.com. [146.101.78.151])
        by gmr-mx.google.com with ESMTPS id p5si98670wmg.0.2019.09.17.03.36.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Sep 2019 03:36:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of david.laight@aculab.com designates 146.101.78.151 as permitted sender) client-ip=146.101.78.151;
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mtapsc-3-80eFz-5rN5idwkxVP-i0-g-1; Tue, 17 Sep 2019 11:36:22 +0100
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) with Microsoft SMTP
 Server (TLS) id 15.0.1347.2; Tue, 17 Sep 2019 11:36:21 +0100
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000;
 Tue, 17 Sep 2019 11:36:21 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Jose Abreu' <Jose.Abreu@synopsys.com>, Nathan Chancellor
	<natechancellor@gmail.com>, Tom Lendacky <thomas.lendacky@amd.com>, "Giuseppe
 Cavallaro" <peppe.cavallaro@st.com>, Alexandre Torgue
	<alexandre.torgue@st.com>, "David S. Miller" <davem@davemloft.net>
CC: Nick Desaulniers <ndesaulniers@google.com>, Ilie Halip
	<ilie.halip@gmail.com>, David Bolvansky <david.bolvansky@gmail.com>,
	"netdev@vger.kernel.org" <netdev@vger.kernel.org>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>
Subject: RE: -Wsizeof-array-div warnings in ethernet drivers
Thread-Topic: -Wsizeof-array-div warnings in ethernet drivers
Thread-Index: AQHVbSoo2sCm+b6KbUmq34Z8Q4HTw6cvgEiggAAsi+A=
Date: Tue, 17 Sep 2019 10:36:21 +0000
Message-ID: <510d777024554eab846ef93d05998b63@AcuMS.aculab.com>
References: <20190917073232.GA14291@archlinux-threadripper>
 <BN8PR12MB3266AFAFF3FAAA9C10FB1C1FD38F0@BN8PR12MB3266.namprd12.prod.outlook.com>
In-Reply-To: <BN8PR12MB3266AFAFF3FAAA9C10FB1C1FD38F0@BN8PR12MB3266.namprd12.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
X-MC-Unique: 80eFz-5rN5idwkxVP-i0-g-1
X-Mimecast-Spam-Score: 0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: david.laight@aculab.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of david.laight@aculab.com designates 146.101.78.151 as
 permitted sender) smtp.mailfrom=david.laight@aculab.com
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

From: Jose Abreu
> Sent: 17 September 2019 08:59
> From: Nathan Chancellor <natechancellor@gmail.com>
> Date: Sep/17/2019, 08:32:32 (UTC+00:00)
> 
> > Hi all,
> >
> > Clang recently added a new diagnostic in r371605, -Wsizeof-array-div,
> > that tries to warn when sizeof(X) / sizeof(Y) does not compute the
> > number of elements in an array X (i.e., sizeof(Y) is wrong). See that
> > commit for more details:
...
> > ../drivers/net/ethernet/amd/xgbe/xgbe-dev.c:361:49: warning: expression
> > does not compute the number of elements in this array; element type is
> > 'u8' (aka 'unsigned char'), not 'u32' (aka 'unsigned int')
> > [-Wsizeof-array-div]
> >         unsigned int key_regs = sizeof(pdata->rss_key) / sizeof(u32);
> >                                        ~~~~~~~~~~~~~~  ^
...
> > What is the reasoning behind having the key being an array of u8s but
> > seemlingly converting it into an array of u32s? It's not immediately
> > apparent from reading over the code but I am not familiar with it so I
> > might be making a mistake. I assume this is intentional? If so, the
> > warning can be silenced and we'll send patches to do so but we want to
> > make sure we aren't actually papering over a mistake.
> 
> This is because we write 32 bits at a time to the reg but internally the
> driver uses 8 bits to store the array. If you look at
> dwxgmac2_rss_configure() you'll see that cfg->key is casted to u32 which
> is the value we use in HW writes. Then the for loop just does the math
> to check how many u32's has to write.

That stinks of a possible misaligned data access.....

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/510d777024554eab846ef93d05998b63%40AcuMS.aculab.com.
