Return-Path: <clang-built-linux+bncBC27HSOJ44LBB6PUTXZQKGQEAJOFOTY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43b.google.com (mail-wr1-x43b.google.com [IPv6:2a00:1450:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C2A517F64F
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Mar 2020 12:31:06 +0100 (CET)
Received: by mail-wr1-x43b.google.com with SMTP id j17sf1978949wru.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Mar 2020 04:31:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1583839865; cv=pass;
        d=google.com; s=arc-20160816;
        b=lOJ9nDBi8ZK/e7jOs39TdovlSFATWjdjKgjikAhZyTkH9NtjZ0J+4IVSGKwOfI8Ujv
         g2T1ipQ/0UBjIscVPHZG6EBwclTcQELivV89sbOjywXF3FcPp3Bn40rdCo0F8u+dDgOx
         ZsvuN0ycotOBPpZixaS68UcfZs82wPuk7FGEryQJ+ea89jF3Jp5XihYwu51JhTtWj+6E
         fX+0212w3LM7DwpJszWVNMD12mstRQdT5VadWHPCHYHD39SfFwqMEyl8RlNgKYAUD7np
         OXoxWC67UGLCWCGVCJoCDQTcKszE68OZ8lSwgEMESHsdKxKv6LHyzzKOc0fa1NXTCvbK
         h6rw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=j0zygaaTEJw16bH3pzfAVKtLVlohbOSCdJaa+bRt9zU=;
        b=Wi8iqDoVmVaiQX46/6+SFNvEI5xLatUvyjmBkQwsw8lkup8B0JgnnLRUtmCxvROjGX
         oEL1sPjYcf5IXtH8gBAQ2PLGSyGVHe9KKZ8P9zhAgI5ikzXrzg1HPiMBuMGN6iHC8sfG
         HfsAe8rgIPq1cX8UNnbKJlhXil/5tS58PfnsuH/bI+C/m0g1eUwq2qs2r9J5XU32GIW8
         umt5Gzdxs7kJ3djfIm/j1U4SkLtLEveUUhtnp5EK324Eft9dbrDZgYNPt3m/ehrZFBWh
         fuDibNqeDOy5ZsN+JxgU3CLT2RVmdJ45BzviiNLD5+gbOYfFuY7jx3EUMBY15vfwpTl9
         OMNQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 207.82.80.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=aculab.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=j0zygaaTEJw16bH3pzfAVKtLVlohbOSCdJaa+bRt9zU=;
        b=Sv1GEc0nClseOO3CUqNueD+PE/28CtBJfqu+6hLFwQjnsCl9MOeR4iKvpzjkfiQONC
         AlGgBzVVjjj/Qe4NuPqHZQGKtKQOOpx7qeBGQr6UCG7V3WBbM1vdcJrPMUVjzPTKnNts
         3JdGasgIfzfpixiQEORap5ln3L+loDhuEDUBiPp/6a6dzNFiWuk9yqM5V4j9eEVKSPgf
         VeSKPesw5bDnV5VVE4knfCRIPHJxhq4SNqK/T9nJvSjFfZWfY+6FUVo3R0gvdCXEkrA0
         cv06m2QfAgULkcMRTdAn4zo+UKl8+d0Fuv6WVubuGStwQO+L5nYpl94EGHNP5OCrjoqu
         PJvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=j0zygaaTEJw16bH3pzfAVKtLVlohbOSCdJaa+bRt9zU=;
        b=cu6HeIpzR9idR0v3gGJeK5UMt2jVg08hJgMIMOPrv1N/JvUo3ysniuyOu7EmO1qb6l
         kH8gX13ol+enWq4YVfzOctEYDh+9/CxofzbFFh/BqNcPP/N/lOJDClF/WksKoYKTKXom
         YE+Gh3+/9MdskK0sNCHMw4jNHpUiXphfcaaKFwm/h5m+zbziJjbsAcRFclhVYt6DTjQP
         wWBeyMbquybKcLsFId27fuQKhXJfM8DVLggt4+u0PCzNh8EZH1E/u16fhPVWD4gA3iuo
         fanZE7TENb2AuaF64ZM8jEevOpr59r2X/5+t/Lgl/XJ5unqaV4NDrMVnH8rF6QSpMQbJ
         NILQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0/QS7VADJowM+MnyGDsxnL/1ye5PO+Qghk3SthZIEjHbW4Pptq
	LAQm+EoqDmTbel/UdpQlqYY=
X-Google-Smtp-Source: ADFU+vvgQNXQIjNkGBjrPdi6SGUoSxUvOBBug3oJqrSrWzRoElJts8BHtax/aQbsZ0Zva1P99Byf0g==
X-Received: by 2002:a5d:5541:: with SMTP id g1mr16656384wrw.220.1583839865368;
        Tue, 10 Mar 2020 04:31:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:508e:: with SMTP id a14ls7516805wrt.2.gmail; Tue, 10 Mar
 2020 04:31:04 -0700 (PDT)
X-Received: by 2002:a5d:4d48:: with SMTP id a8mr22037942wru.246.1583839864828;
        Tue, 10 Mar 2020 04:31:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583839864; cv=none;
        d=google.com; s=arc-20160816;
        b=PvUSfzz9HPelXNX+gi59rvOzcDsxyT1cp89ZkK73hWOqM3aMtEf6WpwD+xFVFBKczX
         yUA+uOvCZOBjfv/+XlAD6DYj6P/HXMhDATi1chLUN+oXeD/u4pIM9c4izIEgL4hGn53d
         tgR4wkxTXDTTmQZaoyMNtDdd+qLAEaE+ljL9EKD+AwzSkUtWvEyB43jot1g0J6uxekpG
         10qjM7F/D81pynOGqBvR90bWPD/S4Zhg7SRAz9nnQ3C8p5A+yU2PLwgJjcqKKlg0EywJ
         RA5erRUM11AOqj8MQNPh2Nmn2lFhJvjvaqU5Hewe80n4BvkvmaANeDHbuePCTh2ooBzr
         CCUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from;
        bh=RX0TK8hsZ0YqYYv3LVD4rnsSU1zL/8/BbzY/lbBuPSc=;
        b=vFnOc9p44aRu7jR7lPZsngUmhTYEsLIHIXd9rqsnT7YEhGFN+yVUeaSUGjzSc4L3x0
         G3J1FipiaVrN2Z8terh3ZWAmK/01QRGDy0XmXrQS22KVZA9xq37f8n9ADfS14I23VClK
         QZTNDeX+SlubGIyPCr6PWP+zCXUgNnFJXGRk/RJ7YgcCCFBMEy16o0Z+HnQdET4Cm3/C
         RWqYbGP6+FoaxoTTd4Sy0h87a83GFu/tXhduG7nJKz9X8MftlsaqFvnfIa5FhjhhIZVN
         BSJLrKXireKFKVbQzOYnQ+HWhFeKp2gK3etLpb2/AOJ2BLsXCEfS4Dnum+ALZJg7Jn63
         nLXg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 207.82.80.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=aculab.com
Received: from eu-smtp-delivery-151.mimecast.com (eu-smtp-delivery-151.mimecast.com. [207.82.80.151])
        by gmr-mx.google.com with ESMTPS id s2si284966wro.5.2020.03.10.04.31.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Mar 2020 04:31:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of david.laight@aculab.com designates 207.82.80.151 as permitted sender) client-ip=207.82.80.151;
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-4-p-Ri5FvvOWKUDYolSD5F6g-13; Tue, 10 Mar 2020 11:31:02 +0000
X-MC-Unique: p-Ri5FvvOWKUDYolSD5F6g-13
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) with Microsoft SMTP
 Server (TLS) id 15.0.1347.2; Tue, 10 Mar 2020 11:31:01 +0000
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000;
 Tue, 10 Mar 2020 11:31:01 +0000
From: David Laight <David.Laight@ACULAB.COM>
To: 'Nathan Chancellor' <natechancellor@gmail.com>, Masahiro Yamada
	<masahiroy@kernel.org>
CC: Michal Marek <michal.lkml@markovi.net>, Linux Kbuild mailing list
	<linux-kbuild@vger.kernel.org>, Linux Kernel Mailing List
	<linux-kernel@vger.kernel.org>, clang-built-linux
	<clang-built-linux@googlegroups.com>, stable <stable@vger.kernel.org>
Subject: RE: [PATCH] kbuild: Disable -Wpointer-to-enum-cast
Thread-Topic: [PATCH] kbuild: Disable -Wpointer-to-enum-cast
Thread-Index: AQHV9nra+DJ/Yb9GEECSXKfRu6cHrKhBsStA
Date: Tue, 10 Mar 2020 11:31:01 +0000
Message-ID: <c2a687d065c1463d8eea9947687b3b05@AcuMS.aculab.com>
References: <20200308073400.23398-1-natechancellor@gmail.com>
 <CAK7LNARcTHpd8fzrAhFVB_AR7NoBgenX64de0eS2uN8g0by9PQ@mail.gmail.com>
 <20200310012545.GA16822@ubuntu-m2-xlarge-x86>
In-Reply-To: <20200310012545.GA16822@ubuntu-m2-xlarge-x86>
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
 (google.com: domain of david.laight@aculab.com designates 207.82.80.151 as
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

From: Nathan Chancellor
> Sent: 10 March 2020 01:26
...
> Sure, I can send v2 to do that but I think that sending 97 patches just
> casting the small values (usually less than twenty) to unsigned long
> then to the enum is rather frivolous. I audited at least ten to fifteen
> of these call sites when creating the clang patch and they are all
> basically false positives.

Such casts just make the code hard to read.
If misused casts can hide horrid bugs.
IMHO sprinkling the code with casts just to remove
compiler warnings will bite back one day.

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/c2a687d065c1463d8eea9947687b3b05%40AcuMS.aculab.com.
