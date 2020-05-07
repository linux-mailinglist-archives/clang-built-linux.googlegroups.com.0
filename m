Return-Path: <clang-built-linux+bncBC27HSOJ44LBBM6J2D2QKGQES2EAVPQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x63c.google.com (mail-ej1-x63c.google.com [IPv6:2a00:1450:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id A70C11C93BF
	for <lists+clang-built-linux@lfdr.de>; Thu,  7 May 2020 17:09:39 +0200 (CEST)
Received: by mail-ej1-x63c.google.com with SMTP id b21sf3007221eje.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 07 May 2020 08:09:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588864179; cv=pass;
        d=google.com; s=arc-20160816;
        b=Fj7voqKonCJSM0UV/ZRgypgFfxorhb3Qiah4npWw8gLH+eFlciQ7iOKZ0LofQsaGWV
         sukSVe9W0iOjQiyEKXR16JGVJSX4s/JdrdBhkkXTchZMKaK9IYsiZw5gZr77u2vDmzzB
         XP1kTn9qAdEU7XUcEcR5xabvWvfw0NJIceJ87ql5zlfBj6rZ+PrhJ9XY2WehMjbhrmgt
         55EqAMUlgRw17OLbi5psxW5YbzSjilXAMhGQ9qQ903joyQ2sLsRlvaZ8zYic4EYwUTvj
         wNYxaC+UOmEVjaaR2MwyRTxR/h4wspqPeEnnNJOcC0P8+wPmwlkAL9+Z4Y1+MFNsmND7
         sIdg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=pM8BbFOTy4CBasM24h+0om5w6PcbnXI1Grg54TKAqSw=;
        b=q/t4OYcmssMUtERexZiQXCRsARev4IQHllmz++hjxPAhg8t4EftG61v+J4fBjPlHUZ
         C8zQxa8hGPTp7qDvVEiwYF5TTlkDLroq/fHRlP1ibrNcM+yqwcTXhfVxEp//wdEUt7Bl
         IBR5oA1IDq6bKXR+5k/D0+hDCCq26nQFLPdnyG1ACXlgQ4f6+x8s08E2UYJI5icaOtRO
         H7M5DPLULax/hI9NbbW//j+QeW5uqLXtL0V2YizMcqKr47eFmMgoPOZJtsOzZF8W1A0s
         1wt+w36uGWed4lo0uXArX+LIiMqRRQ54fTqpGzC4yobmlth5VHbEDVr3ySDrg5GQEruS
         KKrw==
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
        bh=pM8BbFOTy4CBasM24h+0om5w6PcbnXI1Grg54TKAqSw=;
        b=WYUiLNBBeWC+knPNbhTl9Vy5TvLw6m3daop35CparONpbYksXvbziMQyhfNqPSAaVi
         GWPZqIpPuYoQznbFgb1Oa1oAf3/3w3nnk2xjk81vGk4HgaQUHwXcwARPTp9/FAAzYOEU
         i0uHKePVosaNR6px78+Y8sVZjM0f9W6wn4lknzToA+lMsoe4wNAccWdnpe7qB6phBQS4
         DSHGuWVlX2tP8u/hbjzEs121m8hkS+gEJn5nBtqMViL/b0tgR0W7eWZhJOQyK+EtAV3k
         WNTdU75MqSrzOxR5ToyNN4EVKzwyLClshh3N32xQ8VbK7PSLmfTiywEK7C/vkRkCkHB6
         Mqig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pM8BbFOTy4CBasM24h+0om5w6PcbnXI1Grg54TKAqSw=;
        b=Gq6Bx7dH4+mY7lXR3xYJRGkx4ZMKidQrXH7ul9txVPBwJErbFLrgkyzHaLOSNFLoeY
         40L0Bl21/NMNnz00Xq9xdhGReD7gTIcDf26O0NT5nvsxCDuCIyYdFOFZWRcovY4bXTSO
         ro/JGSF3nwlIvEM6aPsMlyfUxn9fgT7HgdAYDBi4ZzYZwNs2t35HNC9lBRJHcxoJUxcM
         VtG5589wWAMFL51XAggax3F686ZuTGB+/JP3fo4OsH87xmRXlLdJ8pLYkw4PGb7tvN0X
         M+HxFw3q4n8j5q6Uy+Slu9Rz7EWn/KRjbs2LWc+hS9kHJ8GMV7JBoReUfGnDW6AKIXKE
         krfQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuaH7GTtH+xv2Ui7MqCgjLfNrxko0vR0kUA9iBoytU2UjCWMaeqA
	qFWjKduIFggJast6i8N0/NU=
X-Google-Smtp-Source: APiQypJU5cjHOR0TdY83RLbE9XTezPcq0SYilaEYFwWIBj1pVvz4/CshgZLj08bXJoQ8ujxREAF8zg==
X-Received: by 2002:a17:906:af6f:: with SMTP id os15mr12759865ejb.78.1588864179359;
        Thu, 07 May 2020 08:09:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:d1ca:: with SMTP id g10ls1348999edp.6.gmail; Thu, 07 May
 2020 08:09:38 -0700 (PDT)
X-Received: by 2002:a50:9e2a:: with SMTP id z39mr12635061ede.371.1588864178846;
        Thu, 07 May 2020 08:09:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588864178; cv=none;
        d=google.com; s=arc-20160816;
        b=eZAKbfJG9YDTlbpDa4LhSfDefFtG9btqMTHwCUDsj/GVBf3A7VfZU/ojSYlJRTatVE
         0WQ6DkMGS7zDmYvTNxBuwcvqJ2bxJ4ZwWZAUlmy30qvLCGhSx1yc4KEpz0rAqmhn75UH
         5GydhJAXFKjYPwgRDqhP7/x/r1yA+1tv0YEcdi/MNjUjJh0TtPiYS4JzjxTduA3VVu6Y
         EHBljqQkxFzsQ8QVa5xGWmsHFbtE2ujbecVE33vFQObTHs7BNLhMJQ04j5CfYYeFAmVv
         iNfwltvlvWDJuavOggfTeOUyU3wVvD1wSa6qiEQxEsjkCe4M19Hj9aZCUZiB9ltBbG2d
         CjYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from;
        bh=uj9FTZb+wzSEYZlBBVWpJDsW2XUWdd60788nvHW3QAw=;
        b=EGJe+LMeo3VefbJvuwNEkM6uqIUhY0czcuZkHj1+1g1WxhApeSvPLRoBBxOS2HAPk6
         bVhzgJ6G0bQxGbLYL8IDt663AUSYow5GaKONWBXSTcU6vebqn56JjOmX6YUrlc18Mu5t
         tdJ6o4hH/4+OiIinCNjTaLd4RWT7Y9dj4hTUsI+eSa9L9Y+LAH/xkNYk1bxjxxDUEqLs
         Iqx1n2gChcVxfqY8mZqqxh7fZGOwI8UnXkOaJIfOrBOIKyBvIjmFU3yGdu1rfiWkpe62
         jXOYgDhWYLkojL1Yf/6LOwYitQkC6OOwD1207wlymMwBrVe7sQIyS/ODZbWvpOS1DH3I
         rXEw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 185.58.86.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=aculab.com
Received: from eu-smtp-delivery-151.mimecast.com (eu-smtp-delivery-151.mimecast.com. [185.58.86.151])
        by gmr-mx.google.com with ESMTPS id i2si295386edn.2.2020.05.07.08.09.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 May 2020 08:09:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of david.laight@aculab.com designates 185.58.86.151 as permitted sender) client-ip=185.58.86.151;
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-27-eCu94Q7JP0-k2Oee_LKtag-1; Thu, 07 May 2020 16:09:36 +0100
X-MC-Unique: eCu94Q7JP0-k2Oee_LKtag-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) with Microsoft SMTP
 Server (TLS) id 15.0.1347.2; Thu, 7 May 2020 16:09:35 +0100
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000;
 Thu, 7 May 2020 16:09:35 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Brian Gerst' <brgerst@gmail.com>, "H. Peter Anvin" <hpa@zytor.com>
CC: Nick Desaulniers <ndesaulniers@google.com>, Thomas Gleixner
	<tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov
	<bp@alien8.de>, Sedat Dilek <sedat.dilek@gmail.com>, stable
	<stable@vger.kernel.org>, Jesse Brandeburg <jesse.brandeburg@intel.com>,
	"kernelci . org bot" <bot@kernelci.org>, Andy Shevchenko
	<andriy.shevchenko@intel.com>, Ilie Halip <ilie.halip@gmail.com>, "the
 arch/x86 maintainers" <x86@kernel.org>, Marco Elver <elver@google.com>, "Paul
 E. McKenney" <paulmck@kernel.org>, "Peter Zijlstra (Intel)"
	<peterz@infradead.org>, Daniel Axtens <dja@axtens.net>, Masahiro Yamada
	<yamada.masahiro@socionext.com>, Luc Van Oostenryck
	<luc.vanoostenryck@gmail.com>, Linux Kernel Mailing List
	<linux-kernel@vger.kernel.org>, "clang-built-linux@googlegroups.com"
	<clang-built-linux@googlegroups.com>
Subject: RE: [PATCH] x86: bitops: fix build regression
Thread-Topic: [PATCH] x86: bitops: fix build regression
Thread-Index: AQHWJHPxnFcKS0TA9USbY8l3s67J1qicuE2A
Date: Thu, 7 May 2020 15:09:35 +0000
Message-ID: <9c701ca55bc442c1899a70896f3ea73e@AcuMS.aculab.com>
References: <20200505174423.199985-1-ndesaulniers@google.com>
 <CAMzpN2idWF2_4wtPebM2B2HVyksknr9hAqK8HJi_vjQ06bgu2g@mail.gmail.com>
 <6A99766A-59FB-42DF-9350-80EA671A42B0@zytor.com>
 <CAMzpN2iCgr0rb=MCYPGMx8tcfLq2qdzv0h7YnX5hkzBB+O7JJQ@mail.gmail.com>
In-Reply-To: <CAMzpN2iCgr0rb=MCYPGMx8tcfLq2qdzv0h7YnX5hkzBB+O7JJQ@mail.gmail.com>
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

From: Brian Gerst
> Sent: 07 May 2020 14:32
...
> I think the bug this worked around was that the compiler didn't detect
> that CONST_MASK(nr) was also constant and doesn't need to be put into
> a register.  The question is does that bug still exist on compiler
> versions we care about?

Hmmm...
That ought to have been fixed instead of worrying about the fact
that an invalid register was used.

Alternatively is there any reason not to use the bts/btc instructions?
Yes, I know they'll do wider accesses, but variable bit numbers do.
It is also possible that the assembler will support constant bit
numbers >= 32 by adding to the address offset.

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/9c701ca55bc442c1899a70896f3ea73e%40AcuMS.aculab.com.
