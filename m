Return-Path: <clang-built-linux+bncBC27HSOJ44LBBGXYZGCAMGQEF7HW77I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23b.google.com (mail-lj1-x23b.google.com [IPv6:2a00:1450:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EAE83738FB
	for <lists+clang-built-linux@lfdr.de>; Wed,  5 May 2021 13:06:03 +0200 (CEST)
Received: by mail-lj1-x23b.google.com with SMTP id f5-20020a2e9e850000b02900bdf2002a82sf804051ljk.21
        for <lists+clang-built-linux@lfdr.de>; Wed, 05 May 2021 04:06:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620212763; cv=pass;
        d=google.com; s=arc-20160816;
        b=MIMETrr3VaFhd3Sj/bZBlh8ZoJbK+O2t6HQKCMDrWUIg8aHkHMkQqeYRn20HhDEJIG
         pU2f0rw3UwnYLRt8saPlsTZSt1VaO3pzs2ouyqK4SNhHL+GBLRNCPWbUZmact4EE1ip9
         omx43NUmY1ZuhzdyPlSt4u7hvD0ntZ81FY3HifiSCrELS+OGQOe3vsDQI4zpQpVQ4KkW
         QEviZQmPo8RNi1O7mvrz4U29T3lH0RyGEuR7DTbLf6qvKn6YkbzLRw2lQL6CB234LOeb
         JtVJsfC0c9ygRFZnE0W7BjaxJTFW9ffbmVN0S6ljid8TYjxGF2DXUDq+G+SxTs29MH9b
         X8aQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:mime-version
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=/2R4nHyxlnfqoL5w4EUOPEXJUp6/V8gt6id0vXlXtqk=;
        b=ERjfGIhKnBNObyVDU9eMzu8mGYdFh3zB5XIMLS01A9a9RW+E1SMXg/rw4BpDnMpUAm
         dlcG+kE8aEjBhEpwTeWQ0KQhvf7bF6e0dT84VkNbz7X9K6g1Rl454NN2DHghAaxAtdSe
         /tvOXSQvus+Z0odwSiC5KH6J+ifhtA0ADdKO8TOoyDQKxcShhgySolsu2Gm+mWTg/niy
         I6Jn2cJOmqa9tgIPHWWT7a9/ok1wuboQw0xZSweaF2BDAcv+sY813J+VZk7IfaDYjQU8
         WqBEegZn9WavN61mQFDrGChdJw6fC4YPX6WkTehrZ6ZeYa6gDJLGSsZ339vuIgdiyJxG
         WMxw==
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
        bh=/2R4nHyxlnfqoL5w4EUOPEXJUp6/V8gt6id0vXlXtqk=;
        b=ajER/Y/n2WGCPWkQq3m5tKy8qslfsPsI3Sndkfy00oHkh5aizhPEtXMgHObcGDFqXQ
         4QlzX3IxHyQLqAaQ3E5BGXl4YP2PqSs1SywbZFZ/dAJ5zn7xXVzPZdSFhUYrzR9CPfV2
         M0DB/2FhO3ahTr3IJ7G21qZgiRr0Io5sXsWuO0VY5Q425/poCWd3Ku6eDGD6xdIbLh2w
         zRzD05VMT/b4klfrhbmapMHi0LbKOxapA82nxVgS6OmO54PwBHD8WyvAiAL7O3fercxj
         VTOWC1EOGBo1eXTlqYnp/OgoeljLmVc8HqLwaehP4mdNrMEiK5nEmn4RqeRHiN36Z7fC
         AYUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :mime-version:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/2R4nHyxlnfqoL5w4EUOPEXJUp6/V8gt6id0vXlXtqk=;
        b=RkanJOVlyK6pqFuueBQOxQhJtbaE23+DNLZlYiLh1fnFT5rgbZtnGKNkk8IN9x52Xy
         NjMjv7+M2AEPCkgf2zSZggk8E0qGx1mLd1eKfCYgcMX/XZLd5wibtU+YSa2Lkfp9D2h6
         G0FvnpfDllhHYzcBbN9yzw62fVdRQEyFmNhSfFozY6X7MVkdiDlta6MvBSVXRVawAIiV
         S4h4WtUlNSl6fxgrnEU6aqNgWWRpw2XGdPAcxZ7ez8QqNVUwk+WP1sOX7SDSsW8g6Rw3
         GxYzgLYeu2QTRufMA0ATGXbp5XaE7u7cPkL68gf4u7sID1DUzWrUzTE1xREMxCD2GEyR
         AFVg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533jgD3CKia+l2017q2HBj5m2OPb/tK41O80ha8ElCdNMsysld22
	zTZk9Upj85cwOEPsTbeuJO4=
X-Google-Smtp-Source: ABdhPJwIyagmvQMk4Q5dGNMYooUXMg6PMOFN5h1NjpVRFDQ5y53juTSqTHmPzTKAAU4mQ+VQ6zdqPA==
X-Received: by 2002:a05:651c:318:: with SMTP id a24mr9379959ljp.381.1620212762857;
        Wed, 05 May 2021 04:06:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:230f:: with SMTP id o15ls5212292lfu.1.gmail; Wed,
 05 May 2021 04:06:01 -0700 (PDT)
X-Received: by 2002:ac2:4ecb:: with SMTP id p11mr7889008lfr.435.1620212761732;
        Wed, 05 May 2021 04:06:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620212761; cv=none;
        d=google.com; s=arc-20160816;
        b=qbZJ/KYdyzue89yDw/8ygP1g21Sa9CYcRb1ysafX8n6vrsUXMl4OFNYwyAWfmHJoxg
         Rt0hD9+37G8Po+aNp7dNucxXpt0hUxtrhx8rKq0m5ec0Ty4TesXiRIQWLucMdsluTHPj
         1037OwRpl60BvnZ+yf9SPTe61HphvkrbcWWYJG+04H2MI/Bx3fyKWVQgsUwFAA4uGg4N
         yF8gMxw4xGIlhS0XOWKXjwSkB4ybUkyX2YWZmZsIRnSO3zingZHd+DdbQfcS3rHXva5H
         416Ya/lvizqlnVuu6MenQ54pkqGHtM+SxhGIw0YNXLZ3eT2NMzc8q75bRxVYBrBTORlt
         N6cA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:mime-version
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from;
        bh=4wz9M7VVGbGqof4OT+Wc2XaQiGWiq5zbGMvFsjyT2Bg=;
        b=xT+tcK538QsTIevZgn/cwfPP+1XTNqDqr7jssdd9Y7Hf8fKmYMEOrjkq19CWSO/Qf1
         RZUYDk0mU3laIrctVPyoplyf9Qcywjh1OPylZhVJvGsLJ2tu4z329Ersejt41j6NLQwK
         0n+1VVU0BQatYIWY4ExEZDZ2t0p/lN3uZEXUei1SH03RDjmE5FTsFJQwgnKpwbPdgZSg
         y3R1qHKXFxSKxAgWDmhIpoV3XV6WuqegxYxGcIsese1uKnTB0arGfwILtCvTROHiBifc
         0S39uIyi7Lcr8c8D4yjrF7+SZ4RzO68w65ep0fbuDR6kHRirgNagaMnN9gAGvsSgDub2
         6VXQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 185.58.86.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=aculab.com
Received: from eu-smtp-delivery-151.mimecast.com (eu-smtp-delivery-151.mimecast.com. [185.58.86.151])
        by gmr-mx.google.com with ESMTPS id c17si187745lfv.9.2021.05.05.04.06.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 05 May 2021 04:06:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of david.laight@aculab.com designates 185.58.86.151 as permitted sender) client-ip=185.58.86.151;
Received: from AcuMS.aculab.com (156.67.243.121 [156.67.243.121]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-89-jmuEs67kPHax_weughYq5A-1; Wed, 05 May 2021 12:05:59 +0100
X-MC-Unique: jmuEs67kPHax_weughYq5A-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:994c:f5c2:35d6:9b65) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:994c:f5c2:35d6:9b65) with Microsoft SMTP
 Server (TLS) id 15.0.1497.2; Wed, 5 May 2021 12:05:58 +0100
Received: from AcuMS.Aculab.com ([fe80::994c:f5c2:35d6:9b65]) by
 AcuMS.aculab.com ([fe80::994c:f5c2:35d6:9b65%12]) with mapi id
 15.00.1497.015; Wed, 5 May 2021 12:05:58 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Miguel Ojeda' <miguel.ojeda.sandonis@gmail.com>, Adrian Bunk
	<bunk@kernel.org>
CC: Linus Torvalds <torvalds@linux-foundation.org>, Tom Stellard
	<tstellar@redhat.com>, Nick Desaulniers <ndesaulniers@google.com>, "Masahiro
 Yamada" <masahiroy@kernel.org>, Nathan Chancellor <nathan@kernel.org>, "Linux
 Kernel Mailing List" <linux-kernel@vger.kernel.org>, clang-built-linux
	<clang-built-linux@googlegroups.com>, Fangrui Song <maskray@google.com>,
	Serge Guelton <sguelton@redhat.com>, Sylvestre Ledru <sylvestre@mozilla.com>
Subject: RE: Very slow clang kernel config ..
Thread-Topic: Very slow clang kernel config ..
Thread-Index: AQHXQS0DH46G91tEpEmd7WaoBDaEqarUt3wQ
Date: Wed, 5 May 2021 11:05:58 +0000
Message-ID: <5256ed6b6f7d423daeb36fcbfc837fbc@AcuMS.aculab.com>
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
In-Reply-To: <CANiq72=aK-JJhpnZdeeGBtADrnXhyEp1Whw5+5rK6a4u85PhxA@mail.gmail.com>
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
> Sent: 04 May 2021 22:33
...
> > What happens if you use a program provided by your distribution that is
> > written in Rust and handles untrusted input in a way that it might be
> > vulnerable to exploits based on one of these CVEs?
> >
> > The program has a known vulnerability that will likely stay unfixed.
> 
> Why? I fail to see what is the issue rebuilding (or relinking) all
> packages except distributions lacking enough compute resources.

The problem isn't the packages that come with the distribution.

The problem is 3rd party programs supplied as binaries.
They have 2 big requirements:
1) The same binary will run on all distributions (newer than some cutoff).
2) Any serious bug fixes in system libraries get picked up when the
   distribution updates the library.

There is also the possibility that the implementation of some
function differs between distributions.
So you absolutely need to use the version from the installed system
not whatever was in some static library on the actual build machine.

Both of these need stable ABI and shared libraries.

Remember, as far as userspace is concerned, foo.h is the definition
for 'foo' and foo.so is the current implementation.
(yes, I know a little bit of info is taken from foo.so on the build
system - but that ought to be absolutely minimal.)

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/5256ed6b6f7d423daeb36fcbfc837fbc%40AcuMS.aculab.com.
