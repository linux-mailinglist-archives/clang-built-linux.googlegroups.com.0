Return-Path: <clang-built-linux+bncBC27HSOJ44LBBJOB4WAAMGQEQAUCUSQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x439.google.com (mail-wr1-x439.google.com [IPv6:2a00:1450:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 059DF30C166
	for <lists+clang-built-linux@lfdr.de>; Tue,  2 Feb 2021 15:24:38 +0100 (CET)
Received: by mail-wr1-x439.google.com with SMTP id e15sf12566377wrm.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 02 Feb 2021 06:24:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612275877; cv=pass;
        d=google.com; s=arc-20160816;
        b=07455To6GK26O0DmFF2qo1IXVA8E2CUz/8/2lqJdPNieU0NG5wupoQCcCw/bPnPg9P
         sdbdoFHGIUGU/g5506Pb1H3dAxG9gJ54khtYKvdLHqqKLjpGLtAPDOpCBgo3Sqe/RN7U
         168GVjqkjXZZAPGIYP/iNLz6nxo6EmUfyIZjBp6mzKk82OQQAWX+02DNyKOvfzayBf5d
         5dTJ48YpmjoA7mQVAfuzRdGFdLOxwfEkeC50j5pWL+MIaB4o+aKKrkvevBHc6dFRYkaX
         ZgyQgXs/QiLiKYSiaVTEkT45br1+Em40hpC+PDCpJMqzWs9hcVYoWXoIiDXzoe5GxzoX
         9fQg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:mime-version
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=sc2EsAJ6uOFiFwxJNAsAvqwHeGWL3OtYFOUfMgQyAqc=;
        b=RFzMWqMSc6lP6WLuyKUdYCe+t4zRrUKvfkZMNrbyswfc+lURp6GiNRRjk+XrOo5+p+
         aqIXqPc+eeqXPPLYO1URpAQJqoinAvTOa6g+voNJnogHjfAGHTeP+CTbJy3W3nyGE+Nk
         4FF58fB8O8P74+3cjdN0pXc1OjitJnPSTQTtO9RypLycrp8zqjtARXvAXGCOXA82HGrm
         kJfCJK7VqJ3btNVXv55SM+NEsjUtXoEH4ZNO5cXbUCqaYBGGYZTzNMFwPy9qKUzUFoRr
         OU7+0xqsrsHxaH97c7GIMobWFCF2yFjsRvOYdUyVbFAmlnp+z0ZqMhmE0CwkzL8bSpvz
         VT5g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 207.82.80.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=aculab.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:mime-version
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=sc2EsAJ6uOFiFwxJNAsAvqwHeGWL3OtYFOUfMgQyAqc=;
        b=jpswG8tThW0yyM1TNO1NaeE0yTmUd/MetfNPqqizqGO6Le4i943IQWUINCa0J78gtm
         VOfqVmMX8rCtaYIVzkwEg05dOCbi9I5jhhkAsDiyoKuI/8BdHt509pArktFpK2ujSD3f
         9A4LpuNlWRAGa9ZdxEhtlIa8eaAMULIIGzyV6WxyHGXI9Igd3Pcevgd9bDdbvtwKjIcU
         MDb7YdoId91lk5b74OyHjUkJYPFh18OjcuH8z+frpIInRlq7/GwOWrRIA+uUsA9ph+mb
         Fu8x2XmF8SORYxp6jH0hdVrN0sSwoF96UgE93DyBXhfWopwN3XMYq86AIxtiTCBPDAU+
         1S7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :mime-version:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sc2EsAJ6uOFiFwxJNAsAvqwHeGWL3OtYFOUfMgQyAqc=;
        b=hmwtWL7Mroy7+61OoRhTv9gwSX2f7OnsOXmOGmbzfVTlmzzmECMN6M8AJgObsC9zmM
         nZ7CNhNcf8Sco87TGkW3Y1yP/fFg01zMLj2McjPLnZ3EEbV5NQ++GPgTqoUa5A99Ztnt
         Dhw4xsPfDUE4uqdO0Pm99pO0b6g+HALQMpC+EgPPRPuLlgjEC69ZVbFFh93Z8fIC0zk7
         TqrBjbH7ADvPFiVc0JuWdnXcXwzpAEc/iHvy782UZUDkeX2h6PADiWaqmE33p5Cmyta9
         8EOe2hBKFTJEjHn8ZtxQInDxt44g/1yrOETfKo0PXNalhew10OBYM8Q8dPiuWTMPAlCe
         EE+A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5314M/d+rWLK2rrO+RXkbQToVWMnUHnfdNpBmjUtKJ8GmMkdXm6Y
	XDTFr2GO5AypLfuOv7M+5R8=
X-Google-Smtp-Source: ABdhPJz5gkGLuImC4f7bO5TdtFIZBX4eI0W9J2pQ8tevQ13OAzkJrWNLrqYHo7qJDzfTLfkC12XhZg==
X-Received: by 2002:adf:b60e:: with SMTP id f14mr11760891wre.99.1612275877761;
        Tue, 02 Feb 2021 06:24:37 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:4d02:: with SMTP id z2ls1001014wrt.3.gmail; Tue, 02 Feb
 2021 06:24:37 -0800 (PST)
X-Received: by 2002:adf:f606:: with SMTP id t6mr24150207wrp.360.1612275876989;
        Tue, 02 Feb 2021 06:24:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612275876; cv=none;
        d=google.com; s=arc-20160816;
        b=wbWgVV8iII46mkMc2uK9PaVMFLCNz9uQrfVqj8V/FYlBhuPOaKES9IPtk8bbcYyWaP
         +cbv7wi5xtuYoc7Ul5EvrpwXV/yGDBLmHvYP6PDV9V0Ba69uNHSsaOYCdTB96+I7cK/X
         47B31biyiQpBMhkDAzmjpmvyPIr117/vS09464abx2prNxpOBdC0VnWkbPAyDk9fyobF
         4oKmhhflVpc1G5tpKvWuRkj9auy2vvpTj82kZpxJjvTsG/g4+15h1gEWpaAlH8SmULXo
         I+kmwJ4Xt55e/TUKe7OHTfIWeQwUC8j4jzm0teIbxp2iokNdmK/HZLt6hvSR6Hi70uIV
         uqpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:mime-version
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from;
        bh=qaQV7nHoVpN4dYpzyDj70eJzVUgQDPgyZkWgyO+vwME=;
        b=VZ65/oDx0auXDMr+mqfDc0+HXLZXCifNwWNlzyGh690EO5H3ZGqs5ecampjZO+Q+KE
         0yXaBF9NBOf48TVpywl2+EUQvTLZ3W/LrINMM1kFEMVOux/sEbzhizjaX2gbQ6Lf7wFT
         xKvL9V8x/3FdwQVIIfhON0ks2vQfnCjWBSAUrPz1GrCCAtoDsBj2hSZljH1JUh1rDg0P
         rkWXYuTDvI1A0STMEpqSGIAPgW9ddhYM6Mibx7mYO2k9uAq6crbQ/QVNt2rS/m2g48yV
         41qgYA4jOwOERdkHVRKZBKjz7idW9B4AQpjzsEhks9JJsD7AtmXP8w08tiM1D/xz7rZJ
         6NRA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 207.82.80.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=aculab.com
Received: from eu-smtp-delivery-151.mimecast.com (eu-smtp-delivery-151.mimecast.com. [207.82.80.151])
        by gmr-mx.google.com with ESMTPS id q81si184160wme.0.2021.02.02.06.24.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Feb 2021 06:24:36 -0800 (PST)
Received-SPF: pass (google.com: domain of david.laight@aculab.com designates 207.82.80.151 as permitted sender) client-ip=207.82.80.151;
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-274-flNrt4sAPICkZEemnUm5Og-1; Tue, 02 Feb 2021 14:24:34 +0000
X-MC-Unique: flNrt4sAPICkZEemnUm5Og-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) with Microsoft SMTP
 Server (TLS) id 15.0.1347.2; Tue, 2 Feb 2021 14:24:32 +0000
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000;
 Tue, 2 Feb 2021 14:24:32 +0000
From: David Laight <David.Laight@ACULAB.COM>
To: 'Josh Poimboeuf' <jpoimboe@redhat.com>, Nick Desaulniers
	<ndesaulniers@google.com>
CC: Julien Thierry <jthierry@redhat.com>, Ard Biesheuvel <ardb@kernel.org>,
	Mark Brown <broonie@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
	Kees Cook <keescook@chromium.org>, Linux ARM
	<linux-arm-kernel@lists.infradead.org>, linux-efi
	<linux-efi@vger.kernel.org>, "linux-hardening@vger.kernel.org"
	<linux-hardening@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, "Mark
 Rutland" <mark.rutland@arm.com>, Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>, Peter Zijlstra
	<peterz@infradead.org>, "raphael.gault@arm.com" <raphael.gault@arm.com>, Will
 Deacon <will@kernel.org>, clang-built-linux
	<clang-built-linux@googlegroups.com>, Bill Wendling <morbo@google.com>
Subject: RE: [RFC PATCH 12/17] gcc-plugins: objtool: Add plugin to detect
 switch table on arm64
Thread-Topic: [RFC PATCH 12/17] gcc-plugins: objtool: Add plugin to detect
 switch table on arm64
Thread-Index: AQHW+Pb1TwqrTbfiDUONrIh7m3kiG6pE6I/Q
Date: Tue, 2 Feb 2021 14:24:32 +0000
Message-ID: <7c14b5b8b11241cd8271ba5b3f785c51@AcuMS.aculab.com>
References: <20210120173800.1660730-13-jthierry@redhat.com>
 <20210127221557.1119744-1-ndesaulniers@google.com>
 <20210127232651.rj3mo7c2oqh4ytsr@treble>
 <CAKwvOdkOeENcM5X7X926sv2Xmtko=_nOPeKZ2+51s13CW1QAjw@mail.gmail.com>
 <20210201214423.dhsma73k7ccscovm@treble>
 <CAKwvOdmgNPSpY2oPHFr8EKGXYJbm7K9gySKFgyn4FERa9nTXmw@mail.gmail.com>
 <20210202000203.rk7lh5mx4aflgkwr@treble>
In-Reply-To: <20210202000203.rk7lh5mx4aflgkwr@treble>
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

Stirring more goop into the hole ....

Requiring gcc-plugins, matching compiler versions and the
same 'dwarf' format for OOT modules is probably very painful.

In many cases (and this may include drivers released by some
distributions) an OOT driver has two separate parts.

One part is C source that is compiled when the module is built
on the target system and against the installed kernel headers.
Getting this to match 'just' relies on having the correct
compiler (etc) installed and in $PATH.

The second part is much more problematic.
This is just an object file compiled by a third party.
It doesn't directly depend on anything defined in the
kernel headers - so can (currently) be linked into any
kernel version.

In the past some graphics drivers have had a third party
object file.
I think some of the laptop wifi drivers might as well.

Now I some people think everything should be free source.
But there are various commercial and practical reasons
for both OOT drivers and object file 'blobs' in OOT drivers.

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/7c14b5b8b11241cd8271ba5b3f785c51%40AcuMS.aculab.com.
