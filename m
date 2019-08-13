Return-Path: <clang-built-linux+bncBC27HSOJ44LBBVUOZLVAKGQEVY3LHEI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53c.google.com (mail-ed1-x53c.google.com [IPv6:2a00:1450:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DF838B486
	for <lists+clang-built-linux@lfdr.de>; Tue, 13 Aug 2019 11:48:07 +0200 (CEST)
Received: by mail-ed1-x53c.google.com with SMTP id c31sf66225150ede.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 13 Aug 2019 02:48:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565689686; cv=pass;
        d=google.com; s=arc-20160816;
        b=bnlVaZzWh5kysxlh1efyDPQvvdgBDjpzJj/3olEhKO9TaRoFTbvQy9tc2e1r9rZkX0
         LYKPxKdkp4iDyBqG0aUl4TmED/PcbDF0/cTVr2CV6bW9CJkx9NotNnJpUovUOLrmieV9
         ya5l7uWe/L914khdr2yT8MvZwaGiafAMVpBSwE5VjJ3D0d1Hku53K0lRTgtQxhFY5rKG
         rN7D1/WLeWqJw4o0yBBcC1/xjd4O7Q+W1GGYNqvTG0s1w0BDO5/zAQklMikrUZuZicOC
         yG10Ht4kZzfo101nU/JfyR18AZyNVHlwuJ7m/pDu4ZYZyYRpvWv1DFtABidHiTuMZ8Pg
         2tTg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=MUAPnk72ugfYN1ptLaL84LTOFQ8IcK6AipNNe4IC2uw=;
        b=SfIjBkJ2XvvmoHEns/mBa3ha4qR8YmPU0N4/Zcvgi91Fi6rmlPnYXA8Ai52eyr2paV
         +c1xWtfoHbZ8PDWmAXI3czDyh0I3Ax/Z0Qzr2r1Kz18pumnwJn2WnDDZiIfhEsK9nqN/
         ZHVeL9A1d4Pw7EnoZqraGHVrOaOllbYYS1bhcw/6wN+Oi8AjJoie1urcp//yi4ASUz/h
         P7fFzXdTpwZ5TcrTlHI645urT0zMKO23VD/nxZ9U5ul1CFZ6LvIOknKOepWx68MsstGp
         7dJKB0QjbTzLqK/RLHT2jgxcfz1StLwGH+qAa74pIE9of0RySbrk5g+y3FDwKiXSxS0/
         kfnQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 207.82.80.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MUAPnk72ugfYN1ptLaL84LTOFQ8IcK6AipNNe4IC2uw=;
        b=ppmV7KZlTPPFvPdWGg0vJWygTXRKB8U+0KVgg9wLhf8rfI5iEhHzUC9KmhLaK8RKI8
         Y49zXHwOQazM6iQMU6+65UqaWR40rlrtakwcj3cO757oeyJoj3tFe1Vx2LWHElSpGjgn
         V+aeqABTs4aZrcrRaAsUo42GQ6RFcpdAVdFl7o+jxgmA3Raa8FsXCpKb0qQjtdaLFdtd
         5PVPS+jk1QFQX50pJ/2ZjV9eU9dcBkFVhBgfC/TS6QUG6Z6pFbMkbA/nFC9h9GExe8XG
         TkkpaYGSZvYdJQ039vq4ZFjLtdoyh4CouSN/xl9Lx9TcCMWozr9y17xTTl8wodMEzPL4
         H+Tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MUAPnk72ugfYN1ptLaL84LTOFQ8IcK6AipNNe4IC2uw=;
        b=k+gEa0YI/nfKasT0HVNPRngcDC5HsRba6NhR8xDvQZ00/VXN/xSc1sdlzUxZYCPWw8
         He/o18pxHSxXfRZ+SSE9UVYBnsOy4+aZdNDhTlQDCUcNTTeoqo/oQDzrnWjWETYVynBS
         NWb4VMVscsT1oWHtj8SHZ4sL5gXlb390tvV7C80KUTCibs34Q5gUatVNnwTpL3AGlL+p
         hR/QKYQYCuAqdsXw0wDPHMZKKn74nu/ZRwFsi1sF9uVmETd9vzKs0ddkS/UOqnYJqD39
         LUONNe1+vHAa+VwUP49etQ+0v2BM4MR3of23s5/aZhTHUt3uG/FKxYgVT6rSdSFvd2SM
         Qjgw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV6dKSw9bXEG8dVRvtikWqS145ZOX5wQItRGAMkTHDkapfEUAaq
	qrLirX3g8Wqf83Ene1L2iyM=
X-Google-Smtp-Source: APXvYqyaQWC5UWdxrErUtXUsfktpDTcW1C7w6dKuoSxOGiHwx3f4LOIN79gDCftWq2ZajeADL+zHDw==
X-Received: by 2002:a17:906:af82:: with SMTP id mj2mr2579705ejb.25.1565689686865;
        Tue, 13 Aug 2019 02:48:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:6a07:: with SMTP id o7ls2949726ejr.9.gmail; Tue, 13
 Aug 2019 02:48:06 -0700 (PDT)
X-Received: by 2002:a17:906:f142:: with SMTP id gw2mr34900640ejb.307.1565689686499;
        Tue, 13 Aug 2019 02:48:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565689686; cv=none;
        d=google.com; s=arc-20160816;
        b=wpKXZlu44Lh0bgGmMfU4sEBnZVfPBhl3QOR7bWY6X3vWyjLLx0WWLZeUcdbfHY3BNr
         JNZkvhvXResGOf7YYpmg81ogGnTJM/T0vpud65wy+OV958B+mLFo+VQBWkgqfE5NVn+H
         VES2RN9IwOS+gjJop/G/OM3OHrs5ERiqFjJ974F4tl/+XwcPBR9mA2Pk4NgH/S/RCZ9X
         NzlsSPe01s9Iv25GpeKpwfBO09iwxy/PTKh/vThgSvJ6rcYi0QQZX1YKf1w5pIhN779T
         bAQbVpoj+/QSE7rDJ4eFOqPxOjmju+bPXcnWmE2OKipmuSYIF7/eUWwH2RyiNzIr/j1f
         cVMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from;
        bh=VThS5Dh2gefzK4X09s2mF9tEqbUGSghEqKc0DKsiubs=;
        b=Bx17y6QAOnwTgevVkSU6PjRYI+hoNppPmVJhM0GFTsAveRe4wbsKi2VeGXPJax+ENd
         yRX+E4zlDVB5PrFK+u0zy91ooHsfxbkzYkUvIqnG+mA8EStktJDyLTmqRpviWWXvNdYp
         boZzrxOTjUuD9fXXsobQ4XAV5g2ognEvJlwxwswbQpo4y5vL7okG/WYVv15zlmzbmFoT
         PXDXSRRck0KpJttDFSyjhHQzUOq8qtNd/1FTPctX2HWS7MSbIl4aHvr22/I7oFMDcSGz
         6BRbLA6t19mrnLichFVLZhrZxWLaRXbFc1Plglib9xykjI6FmvwL8YB4v0SfKP9TYiNg
         EWnQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 207.82.80.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com
Received: from eu-smtp-delivery-151.mimecast.com (eu-smtp-delivery-151.mimecast.com. [207.82.80.151])
        by gmr-mx.google.com with ESMTPS id m16si382039edv.2.2019.08.13.02.48.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Aug 2019 02:48:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of david.laight@aculab.com designates 207.82.80.151 as permitted sender) client-ip=207.82.80.151;
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-150-kKZsyMR6MtydRYGBEb95CQ-1; Tue, 13 Aug 2019 10:48:02 +0100
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) with Microsoft SMTP
 Server (TLS) id 15.0.1347.2; Tue, 13 Aug 2019 10:48:01 +0100
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000;
 Tue, 13 Aug 2019 10:48:01 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Joe Perches' <joe@perches.com>, Nathan Chancellor
	<natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>
CC: Nathan Huckleberry <nhuck@google.com>, Masahiro Yamada
	<yamada.masahiro@socionext.com>, Michal Marek <michal.lkml@markovi.net>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, LKML
	<linux-kernel@vger.kernel.org>, Linux Memory Management List
	<linux-mm@kvack.org>, clang-built-linux <clang-built-linux@googlegroups.com>,
	"Gustavo A. R. Silva" <gustavo@embeddedor.com>
Subject: RE: [PATCH v2] kbuild: Change fallthrough comments to attributes
Thread-Topic: [PATCH v2] kbuild: Change fallthrough comments to attributes
Thread-Index: AQHVUaVgEyLklNacm0CAPm1TaF5b6ab40/BA
Date: Tue, 13 Aug 2019 09:48:01 +0000
Message-ID: <85e25647ae404bf38bc008ea914e08b3@AcuMS.aculab.com>
References: <20190812214711.83710-1-nhuck@google.com>
         <20190812221416.139678-1-nhuck@google.com>
         <814c1b19141022946d3e0f7e24d69658d7a512e4.camel@perches.com>
         <CAKwvOdnpXqoQDmHVRCh0qX=Yh-8UpEWJ0C3S=syn1KN8rB3OGQ@mail.gmail.com>
         <20190813063327.GA46858@archlinux-threadripper>
 <3078e553a777976655f72718d088791363544caa.camel@perches.com>
In-Reply-To: <3078e553a777976655f72718d088791363544caa.camel@perches.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
X-MC-Unique: kKZsyMR6MtydRYGBEb95CQ-1
X-Mimecast-Spam-Score: 0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: david.laight@aculab.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of david.laight@aculab.com designates 207.82.80.151 as
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

From: Joe Perches
> Sent: 13 August 2019 08:05
...
> The afs ones seem to be because the last comment in the block
> is not the fallthrough, but a description of the next case;
> 
> e.g.: from fs/afs/fsclient.c:
> 
> 		/* extract the volume name */
> 	case 3:
> 		_debug("extract volname");

I'd change those to:
	case 3:  /* extract the volume name */

Then the /* fall through */ would be fine.

The /* FALLTHROUGH */ comment has been valid C syntax (for lint)
for over 40 years.
IMHO since C compilers are now doing all the checks that lint used
to do, it should be using the same syntax.
Both the [[]] and attribute forms look horrid.

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/85e25647ae404bf38bc008ea914e08b3%40AcuMS.aculab.com.
