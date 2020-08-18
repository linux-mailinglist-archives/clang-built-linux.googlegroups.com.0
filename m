Return-Path: <clang-built-linux+bncBC27HSOJ44LBBN5A534QKGQEQFXGW2I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x438.google.com (mail-wr1-x438.google.com [IPv6:2a00:1450:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A7C924807C
	for <lists+clang-built-linux@lfdr.de>; Tue, 18 Aug 2020 10:24:24 +0200 (CEST)
Received: by mail-wr1-x438.google.com with SMTP id f7sf7935336wrs.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 18 Aug 2020 01:24:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597739064; cv=pass;
        d=google.com; s=arc-20160816;
        b=vUkremNsgggBqsbI4UBZ0JdKe1tv+6M264wCHPu8tAHuEqtwS50U/cFsfCicK/XXVQ
         ZP3w2phJEQfYE6Pc5OIFTXUn3ii+1NJVetT/KYKxQT50OiX5Jy4t6ejfCA8MI2pbRjOr
         avY601PWPmL9Kj0/n/zMabf+VCnRqmxC7KPjzqt1CZkwZTGGvKUpq+5mTX6Fx93ZGFqm
         7DNykfF735e8hQwAaoTnUMGqmdL/i28Lk+AhP+TXvhEmDOt18WhKop1ICkOHoEr+zDZP
         yRj0m0BrLAJ9F79hEwKkR+GxvQPQLQ1IhC/hZ8VoqPUAgahNAGHROre1YSOICM5tfye2
         ULSg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=YTjkeo+vPn53oNM4YAR4GYp6a5HX2j/beUgRyyzUFqc=;
        b=Jq9R1dsqBKrbRcjBY0W0jTj+QD5HlU3bqQ9RMAvmV19ay1sRg2UQZvWNQzFucg51tu
         J+IIk7YIho2wP7MJ3jNHdN9csHWc7oYDR18kknuS32UZBTZy8Mxb5JEyDmILLmmypVml
         oG/QWnHPg2+8FHvo3r8wzCeyLjO2DbuynZlzYm/YlUKXH+K0N9V1JKf64ChCGblexO4+
         hf2ZiAY/ryiInLW7JeoJrtgyx4g3nBuQgoy0hmEQhZQgmntZKh9izD5CW7EG2AZfcBA5
         SEU0WF3jbw47Ve1lQ34Vq55ccJW/QpDPqdB3cArRPcz/GJJEM/0IUP2SDS9ZKXffgv94
         DUGA==
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
        bh=YTjkeo+vPn53oNM4YAR4GYp6a5HX2j/beUgRyyzUFqc=;
        b=QzpShexgeKWV++rcR/fHO3DWOI/0Vuut2kBncL8Tnk4thACUNzcustMHxF3mxDJUDD
         BuHCg3Uo2EXfAWq3of0IGiipGnbrI7XUW++PGPE4Rh8qzOH3MUUOtKVVgR/c59KGrE0Q
         Gw2YrrNQ4G5W/EDJXtnLiWTu9cth/UgRtsL4Fq1bopG4H4WUqnEkcMNFUa8ehswOLGwl
         qRaB+0EY70dV81tUvRXzW6hgsG2GCo2huVRErpRgImbYFwy+jHh2NCPIz+fBLn9xK9ic
         GN/oTYbWIj0dFn0nkMsO9VG5g+Jt1Z+5TjJibtE5uUfvZUD14U0gPbDZAfi2jmaUI9qm
         TlsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YTjkeo+vPn53oNM4YAR4GYp6a5HX2j/beUgRyyzUFqc=;
        b=mpVLkRzFg0nPacw1XetLt8yY7sIT1FObzKaBSBC5/I8G6Q+lrItajEP7nXc4MyWRhF
         UiaWwx31Ek5y8fRo0sqbVqAFKdlETovv/jdFKROUXDzRuNO+r3gVUf6QzXnOt0URyVWb
         OKxNkNqz5X/kw8PLH/GQqmZ+p8/+VnLSnRhfLgg26zgZyDd8fDCKJ4gxYlDgRHmLb7Sy
         o15e/PjSS84IAl061TZOTJe/nLEoDX/n75U6hZHAc3m5BV4/uczEfqS0BV5+azDC9tao
         g2kNGldY+zZjY/QttEBc/56UUf4sjVns5eB8bqSTFdsjolKJEyKl6JBG92cWVB9tKftR
         xoFw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530aG3QdDnDRNtiYF5334hAc1eo9retWWBERNkRptijek8Z+1MSR
	VhLYcN1ZoqBPofkjVxgSLdY=
X-Google-Smtp-Source: ABdhPJzK1nC4oD9AT+pkRtWujbHy7rg8N0GuZnmNUmB7LbAXTBeaBbzG8u0cn+k4L/R0fG1QQ7omXg==
X-Received: by 2002:adf:dcc8:: with SMTP id x8mr20119973wrm.16.1597739064161;
        Tue, 18 Aug 2020 01:24:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:81f4:: with SMTP id 107ls1681337wra.2.gmail; Tue, 18 Aug
 2020 01:24:23 -0700 (PDT)
X-Received: by 2002:adf:cd8f:: with SMTP id q15mr20872021wrj.347.1597739063459;
        Tue, 18 Aug 2020 01:24:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597739063; cv=none;
        d=google.com; s=arc-20160816;
        b=bpGVUzVSBy66cAzEljEBU+apBW6PTch5SPKytD2n0nxfV6+CcCE0hTg3aBWa8Bjd9j
         VL8tIGM5pK/xLHxQgS2/vLVevIFSI2KuhAbSYbfNFgngYEzcXNU5z1+jcEB1d6mDj4i9
         c+goLMKuAYKTwkw22KiGz6/5HEuXFvGV0rRNgvxAEjeKk5VTGUJ/CwTjR0zB/xgCg9jJ
         qSXMJf4Mq01YxbNhbto+x+HMzDUny1rt+NN+ilPLZ/bTrdqPumxLnSPpno2NVAXkcvDo
         JwU8fs20p7icDIVQKoDufMTxF4Cw0nOtNRWAszZ110gUb13eCrGuYlP3n5HaU274nQWl
         he6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from;
        bh=xWieXvtQKZ2189PTo+Z2m7ElX9mxgeoCcOP5SOaILeA=;
        b=o1bXd+3fvXsJ2Ixedeo5fnHx90nXNa/elcvxvipE7RyunJQ1RN1Y8PF4Rwf5R2Ofir
         ouMSPcEtm2iZRF+t68Iwpxb6Ipo/DKYov2e5lUbYdQZhGm4wXy99fIe/5uywVlVUx75g
         y6K4a3AQEZGqt31qpzhaGhvPMgGB+iDbLsPrywJzk6wwDgnwGp+oJUTHC0SZb0Hrqkpv
         M0/XjvVkBuiL+jCO7lZhx3Voes+/XhOTqZXMmcxErwMMZdenMNA6Mx4ZpblRc/9AA5Eg
         xQhgrris5pKwF0y7ytl5d3cw28aWBF6rBZePlBrlZHL28joHZ512HRv2hN/pdsiSR3ok
         no5g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 185.58.86.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=aculab.com
Received: from eu-smtp-delivery-151.mimecast.com (eu-smtp-delivery-151.mimecast.com. [185.58.86.151])
        by gmr-mx.google.com with ESMTPS id o134si563186wme.0.2020.08.18.01.24.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 18 Aug 2020 01:24:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of david.laight@aculab.com designates 185.58.86.151 as permitted sender) client-ip=185.58.86.151;
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-107-npt7ZiGdPoC0inYw6v22JQ-1; Tue, 18 Aug 2020 09:24:21 +0100
X-MC-Unique: npt7ZiGdPoC0inYw6v22JQ-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) with Microsoft SMTP
 Server (TLS) id 15.0.1347.2; Tue, 18 Aug 2020 09:24:20 +0100
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000;
 Tue, 18 Aug 2020 09:24:20 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Nick Desaulniers' <ndesaulniers@google.com>, Sami Tolvanen
	<samitolvanen@google.com>, Arvind Sankar <nivedita@alum.mit.edu>, Kees Cook
	<keescook@chromium.org>
CC: Sedat Dilek <sedat.dilek@gmail.com>, Fangrui Song <maskray@google.com>,
	Joe Perches <joe@perches.com>, Andrew Morton <akpm@linux-foundation.org>,
	=?utf-8?B?RMOhdmlkIEJvbHZhbnNrw70=?= <david.bolvansky@gmail.com>, "Eli
 Friedman" <efriedma@quicinc.com>, # 3.4.x <stable@vger.kernel.org>, "Vishal
 Verma" <vishal.l.verma@intel.com>, Dan Williams <dan.j.williams@intel.com>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>, "Joel Fernandes
 (Google)" <joel@joelfernandes.org>, Daniel Axtens <dja@axtens.net>, "Ingo
 Molnar" <mingo@kernel.org>, Yury Norov <yury.norov@gmail.com>, "Alexandru
 Ardelean" <alexandru.ardelean@analog.com>, LKML
	<linux-kernel@vger.kernel.org>, clang-built-linux
	<clang-built-linux@googlegroups.com>, Rasmus Villemoes
	<linux@rasmusvillemoes.dk>, Nathan Chancellor <natechancellor@gmail.com>
Subject: RE: [PATCH v2] lib/string.c: implement stpcpy
Thread-Topic: [PATCH v2] lib/string.c: implement stpcpy
Thread-Index: AQHWdMVrhS1zOqzdfkiDV9gXdl2oC6k9heNQ
Date: Tue, 18 Aug 2020 08:24:19 +0000
Message-ID: <77557c29286140dea726cc334b4f59fc@AcuMS.aculab.com>
References: <20200815014006.GB99152@rani.riverdale.lan>
 <20200815020946.1538085-1-ndesaulniers@google.com>
 <202008150921.B70721A359@keescook>
 <CAKwvOdnyHfx6ayqEoOr3pb_ibKBAG9vj31LuKE+f712W=7LFKA@mail.gmail.com>
 <457a91183581509abfa00575d0392be543acbe07.camel@perches.com>
 <CAKwvOdk4PRi45MXCtg4kmeN6c1AK5w9EJ1XFBJ5GyUjwEtRj1g@mail.gmail.com>
 <ccacb2a860151fdd6ce95371f1e0cd7658a308d1.camel@perches.com>
 <CAKwvOd=QkpmdWHAvWVFtogsDom2z_fA4XmDF6aLqz1czjSgZbQ@mail.gmail.com>
 <20200816001917.4krsnrik7hxxfqfm@google.com>
 <CA+icZUW=rQ-e=mmYWsgVns8jDoQ=FJ7kdem1fWnW_i5jx-6JzQ@mail.gmail.com>
 <20200816150217.GA1306483@rani.riverdale.lan>
 <CABCJKucsXufD6rmv7qQZ=9kLC7XrngCJkKA_WzGOAn-KfcObeA@mail.gmail.com>
 <CAKwvOd=Ns4_+amT8P-7yQ56xUdDmL=1zDUThF-OmFKhexhJPdg@mail.gmail.com>
In-Reply-To: <CAKwvOd=Ns4_+amT8P-7yQ56xUdDmL=1zDUThF-OmFKhexhJPdg@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0.001
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

From: Nick Desaulniers
> Sent: 17 August 2020 19:37
..
> That said, this libcall optimization/transformation (sprintf->stpcpy)
> does look useful to me.

I'd rather get a cow if I ask for a cow...

Maybe checkpatch (etc) could report places where snprintf()
could be replaced by a simpler function.

Actually the compilers need an option to leave snprintf()
calls alone.
The next 'optimisation' could easily be to parse the format
string at compile time and call separate functions for
each parameter.
While that may be faster, it will bloat code paths that
aren't really important.

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/77557c29286140dea726cc334b4f59fc%40AcuMS.aculab.com.
