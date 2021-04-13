Return-Path: <clang-built-linux+bncBC27HSOJ44LBB3NO22BQMGQED7OPPVY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53b.google.com (mail-ed1-x53b.google.com [IPv6:2a00:1450:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id D3AA935DFB8
	for <lists+clang-built-linux@lfdr.de>; Tue, 13 Apr 2021 15:06:53 +0200 (CEST)
Received: by mail-ed1-x53b.google.com with SMTP id t11-20020aa7d4cb0000b0290382e868be07sf1227995edr.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 13 Apr 2021 06:06:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618319213; cv=pass;
        d=google.com; s=arc-20160816;
        b=tnjJ1X6gDg7CxjDN3ZYUzTxeUtq3x3V9FsLdSaIsfDWENVozW0PgucIL0pcT/gaFSM
         VoPV/d5w50maAYViirlUH2nHjixogtc83vvRsNLUl4LURSMrXuLLgRmRT68WYWWbLdQZ
         NIq/cdWYZhljLlwoGmBPR8x6l60D9cRJam6zbck/5kaXzUEFUofh52GjJn39GDOF85iq
         CM4HWju8gNX3lbExztNLBPO8awA1ePvRklCNnlJWeox7sdrT6MfJGXak0+vAagawmse9
         3jRSmxX1GZdDQNuANLOXqcjPgbNtCaNb52Jf6dkDAQTsa6v0SEJ7q3d8L0x4uwIvCwab
         60Sg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:mime-version
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=Mha5YCnbh5plE/7vInJ9pap3HIRID0/xXKuG+xm9sM8=;
        b=rMRZSzmnqY27c+WGrqQPAHseD4rSwprc737jLJlj3VxcI8QoPf8/gCSdjS5a9rbbom
         3p5KQYNymseGdeOwB78O4nOd7UPh6GJhb/hvp2knJ1xZRXUoKgO2yBrgM06DkjpT2Dp+
         UEAS72uTY/kB9IHnJJG2AC5BspS3VocNmxy6bxCHU9E4hnnFBjFppHAPXWlaf9cI4qcK
         rvc3v5DUX3vdZE204EijEb7Jmz8KJXp5aoXlmp4r/o5aq8RnmVQgDJGHPnaxd7rVlFyD
         JQ2b08wEWkQBGq+W1MZZ25kXX2JTcQlmYE+O0Ja/agd6794bfLf23F7LKTXJeJr1pahz
         jogg==
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
        bh=Mha5YCnbh5plE/7vInJ9pap3HIRID0/xXKuG+xm9sM8=;
        b=chcafJECnJEgw1uspcgmoms3+qkbfRwVrUtzGthGULl8GLToRw528DDlUcktPNWvr/
         MOoRtmDe0FmGgsUcCFCFEAMhLMSoy7mdPOun3oJDI0ZDkWRV33eCz4FW1a1x8fuDaIWW
         rrMg5HTuXsqsEPNdjnn58TBBZ1LnA+05MEsODw+yM5oHkShe8JDAPDJfgLUN+Igzg0eV
         l4iKTl8+G74mPjKiT9V3oZFHnZrigXeoLmJ1wuYFcfocE2Vd7cvvjE61VVHPCf1TovxS
         qlUheeM4lGUnjko67KEXZ0XqzpIzsZuMfOR8u5mi6NaFYiQUaToaZtGHAvh/MRCFj6dQ
         Yeyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :mime-version:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Mha5YCnbh5plE/7vInJ9pap3HIRID0/xXKuG+xm9sM8=;
        b=TjB0Em8kpv1hKQYA9xqtnLIFhVuviW8FlqT9z/WSBitpeOFE28sXqtZpz0neFfTTlD
         t+xh6/wPiQPInLyfdxhM1A6zOmYTSym/Ewplpt1SO+WboKdnftwcmrwQcVw6P9bRz1Bx
         9L0+FPPJ8To0/kNWhfC5Z1PFXELlMbi0Qn43qh89kt8EJYsUcnenbM3UXYSgCqFY5aBx
         6uufJDdfV9uA8wdFdQuf+kRH/Z1D6hvy4rxttu+jpKtAMtrLvL3rPygynyZUaq8IfizL
         g6aEZa8wXRJfSARIgj4oRlKAuIgvWEu6uLswBGxkHp6K/JKu5z6zWw0H7RXdwCpuGPdD
         1aPg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532uAXjG1qmnT4da2+ofdWPZpA1Hbghy2VQ/B0ZMzzp0I2cZHqdx
	as1SjbYFIMfEzEuJxQTNYek=
X-Google-Smtp-Source: ABdhPJxb1CyqEXY3iaramNseAoVnXZ3gIjKZOdKzBV5JhbP2S8KfP8rxLkFrgXLKdmaZP+E9EbeKug==
X-Received: by 2002:a17:907:2145:: with SMTP id rk5mr265116ejb.530.1618319213611;
        Tue, 13 Apr 2021 06:06:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6402:50cd:: with SMTP id h13ls3483988edb.3.gmail; Tue,
 13 Apr 2021 06:06:52 -0700 (PDT)
X-Received: by 2002:a50:d84e:: with SMTP id v14mr35805458edj.357.1618319212815;
        Tue, 13 Apr 2021 06:06:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618319212; cv=none;
        d=google.com; s=arc-20160816;
        b=bFIHFVjEBN4+Zh4lxTHe05WJrf5tsyyFXX5vkpUHe3TdKzBpsSqNLQbao+CpKfNLp6
         zJVjo9W00ml9EpmnyNc10Hk70Q0y3PoMGwD+SojgLOTBhp6PdVNTBTv1DIH6KBqlS3AM
         Q3IGyp1JprvLEZiQ0PXKll03Kn6CEaHAxoqvsWe/QB+W8Hu6Fd4M2+JP4T8llVVkXJIK
         kB0s3dYnw/kOcSjmTKx89wyUDRhBEeN9oBi4fIxkQI4r8Psvd79zCZUqFSjy2MxUJafb
         iY7k8PshLJFw0ygoMDrS5BwKZgf6P8JWWg41gR3oOGNXNbQ8rmWse43xhaZiS6DNmvtd
         FI0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:mime-version
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from;
        bh=Q+peifQDtPKdcG5K5NRd9MRsnKEmvi40SX8tnyCEDhg=;
        b=hR/3hGukysevXt6dZDl819mMSDnE1KfuUhffIXE8tzWQhaw+2XgccDYAPLVeAgHMvR
         Fl6BdE6l7lJT8ocYNHVpE3V41KZmMEEMx4cMMS1GWNd1awxCHmAs3XCCKyp7TiEo0dIa
         Pv9pQoCGN1YJZ2eyYXNteynxNxpXexlN+wEGnRINgnUoc5MWWULgkc1iKqTgVFzBTuEN
         nLqEx+Qhjwk72XeJVP4LoEneeUM2z/Sk6zMAD+8etTGlv2NSBTqTLV3iBNAma1JwpHvz
         YwBnKbzEQSYAHfWG+DuLDzP4jnnRy+mdoAhtMtFP2ZVoGt0mzKCVyv4GtHRa1StexGT9
         gV3Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 185.58.86.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=aculab.com
Received: from eu-smtp-delivery-151.mimecast.com (eu-smtp-delivery-151.mimecast.com. [185.58.86.151])
        by gmr-mx.google.com with ESMTPS id y16si1193923edq.2.2021.04.13.06.06.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Apr 2021 06:06:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of david.laight@aculab.com designates 185.58.86.151 as permitted sender) client-ip=185.58.86.151;
Received: from AcuMS.aculab.com (156.67.243.121 [156.67.243.121]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-41-32ADAULqOdK603jqA7XY6g-1; Tue, 13 Apr 2021 14:06:50 +0100
X-MC-Unique: 32ADAULqOdK603jqA7XY6g-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:994c:f5c2:35d6:9b65) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:994c:f5c2:35d6:9b65) with Microsoft SMTP
 Server (TLS) id 15.0.1497.2; Tue, 13 Apr 2021 14:06:50 +0100
Received: from AcuMS.Aculab.com ([fe80::994c:f5c2:35d6:9b65]) by
 AcuMS.aculab.com ([fe80::994c:f5c2:35d6:9b65%12]) with mapi id
 15.00.1497.012; Tue, 13 Apr 2021 14:06:50 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Arnd Bergmann' <arnd@arndb.de>, Niklas Schnelle <schnelle@linux.ibm.com>
CC: Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers
	<ndesaulniers@google.com>, clang-built-linux
	<clang-built-linux@googlegroups.com>, linux-arch
	<linux-arch@vger.kernel.org>, Linux Kernel Mailing List
	<linux-kernel@vger.kernel.org>, linux-s390 <linux-s390@vger.kernel.org>
Subject: RE: [PATCH] asm-generic/io.h: Silence -Wnull-pointer-arithmetic
 warning on PCI_IOBASE
Thread-Topic: [PATCH] asm-generic/io.h: Silence -Wnull-pointer-arithmetic
 warning on PCI_IOBASE
Thread-Index: AQHXMGSVFmL3q8InjEiRDqC8qAyY5Kqyacdg
Date: Tue, 13 Apr 2021 13:06:49 +0000
Message-ID: <11ead5c2c73c42cbbeef32966bc7e5c2@AcuMS.aculab.com>
References: <20210413115439.1011560-1-schnelle@linux.ibm.com>
 <CAK8P3a1WTZOYpJ2TSjnbytQJWgtfwkQ8bXXdnqCnOn6ugJqN_w@mail.gmail.com>
 <84ab737edbe13d390373850bf317920b3a486b87.camel@linux.ibm.com>
 <CAK8P3a2NR2nhEffFQJdMq2Do_g2ji-7p3+iWyzw+aXD6gov05w@mail.gmail.com>
In-Reply-To: <CAK8P3a2NR2nhEffFQJdMq2Do_g2ji-7p3+iWyzw+aXD6gov05w@mail.gmail.com>
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

From: Arnd Bergmann
> Sent: 13 April 2021 13:58
...
> The remaining ones (csky, m68k, sparc32) need to be inspected
> manually to see if they currently support PCI I/O space but in
> fact use address zero as the base (with large resources) or they
> should also turn the operations into a NOP.

I'd expect sparc32 to use an ASI to access PCI IO space.
I can't quite remember whether IO space was supported at all.

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/11ead5c2c73c42cbbeef32966bc7e5c2%40AcuMS.aculab.com.
