Return-Path: <clang-built-linux+bncBC27HSOJ44LBBMP3XSBAMGQELHJSXKA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33f.google.com (mail-wm1-x33f.google.com [IPv6:2a00:1450:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 72B8333B073
	for <lists+clang-built-linux@lfdr.de>; Mon, 15 Mar 2021 11:57:54 +0100 (CET)
Received: by mail-wm1-x33f.google.com with SMTP id a63sf2758165wmd.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 15 Mar 2021 03:57:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1615805874; cv=pass;
        d=google.com; s=arc-20160816;
        b=bquIQ0RoF44njSdbwI3cLEFKUnQqlUU0R/Pbo2LSVCqecHSF2+HKgiAZW4Pa9akgy2
         xjqZX2ehG3mhmKwHJAqD9JF8w+e+gEtB6cI0ei5o06ZvVru+cBA7tYy/bH7LeEhPA7vv
         1cmtOjDmq+G/Z8i2O0yjgVh5iAr2gXFGPupxnFaPn1GdQcgHY9NnGqKVYja6/u3D44o1
         HNKAnKqVUqla37BMq1myK9u3rE7eiQ0ZSilG1z1rpcbFlorUzkP8cez9IlLEMYqwHQsi
         k+23QozBj3KLcYdAAzfX3h9FsPPDxfozktuOQmX/W3buycfDQoych6jYztBkmsBUswZV
         oO+g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:mime-version
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=baIkTT+u41L2DBggP87udhOxnUmGIEHLXGCnG3Tql+4=;
        b=nTvbGT6KpAYj5kb231yPLe4767lLvVZ4mA1Q7Ybgw70NKZnniouxINmIP7V3Uaw5Uy
         D6QLauQL+XMYZEuXScL7IehruKgy4a29vCnKkzUrh3oSwTkOwzvvlIOM+2OXpYznhuAk
         ZuxQab1NdGmsA18YbNf2OWFzpackT56ZNs0ee/Yf4ooFIk8uUGLAtuS1Dj70+CBtUfWv
         Ye9Kh8XRbUT8NLQTbDGHmaLfWRP1Ha9HYZIlWcNZjL47jWrEf6sAu+PoDxVDsGwtlcqr
         692Xl0bZT6+dor6nFbxxiOjZfdb8nJQBwwdSZjQK3crMWvxpEu2CThnyk6M8AqQLIB79
         6S+A==
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
        bh=baIkTT+u41L2DBggP87udhOxnUmGIEHLXGCnG3Tql+4=;
        b=iiVer9v42QROFNeAZW2TkTKfE4A+DEHFsgbIFdC42JgGpLpqnly8THeKXAMv+bLa/Y
         Au8FYXIhUHcBIf/HCVgQOB97UnQaHhupznPs5xJYFSlvDisVJRmKpxbrjh8ggCaT7kYF
         +qfpKGIyDbQGX5TbxreaBIi4n0T0+mjGw3giRtaNs/VFWdmA2XJynVGgxBHosxw8jr60
         ponm4wSnt92Cg1FV6TmEvWJr83IHN/IFXHWlEknHFdTMGSTBuiZiHV1uXuIMDBh+B9GL
         kXOxGMO4iVWcZOWvQhWiTiaahPinrIccsPFR3vWULfqlJtJSjAYelM+T4J6t4gijETHS
         GV2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :mime-version:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=baIkTT+u41L2DBggP87udhOxnUmGIEHLXGCnG3Tql+4=;
        b=C452Yzq9pr7ExCF5iVb/C3AIdF6zI6hzIyPuM9z2vI3LG6g9QOpCkqN7zTyypI9ulh
         XrN47WkOeRQMz+u92RL0+v7pka5t1He03hmSlraBswctILkXOYu+LMPK2WGyxMm09ujl
         4o8dvt6f7ZBeW3rnJqYk68+EJsSdixDj31hYSBDZb4ClyfUV5vuhDHd/1Z5NsFXXBg2q
         7zBwJRevoAU9PTO+7AUs/ZJGkaoHMDLhy433652ut2Uim8jdJSU+Pl0VMuzFB3u1a2FS
         /e/vOuUNYWuMmB6+oTCwpqgZeJq8Q1WcC95tJ+6hZi0rj3xuLozdelv63L2aJLReU6IQ
         OD+w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532yR/EmkMbKmJh2jeNA+6DkFYklPFz42bwfTC3xgPa4MB+VJcle
	8Hlj4XwI58TuU5Y2Gz6ZKcw=
X-Google-Smtp-Source: ABdhPJxVOp1ognqJJtfQUxdhPwi2fmVyeUrmWAMqNqv5hn4cbgTveLBm0Ayw58jlh6N08y2Xj2SEFA==
X-Received: by 2002:a5d:6d0c:: with SMTP id e12mr25816510wrq.136.1615805874142;
        Mon, 15 Mar 2021 03:57:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:bd84:: with SMTP id n126ls8146095wmf.2.canary-gmail;
 Mon, 15 Mar 2021 03:57:53 -0700 (PDT)
X-Received: by 2002:a1c:cc04:: with SMTP id h4mr25048245wmb.142.1615805873294;
        Mon, 15 Mar 2021 03:57:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1615805873; cv=none;
        d=google.com; s=arc-20160816;
        b=Hx+mD9NstVpBJsZGBtFZE7YzLg+CqX8XNVPc2F8civDm0uWHhs2L4LRvBKq9a/YBvZ
         fhXVlvyApXranpCUJKQ6xm0FVTgmNzKCoXGumntg3nQnYPeNRs9TrGgwjG1SkRGrvd8T
         0RsgyKEBgbxJpUwolXXibSWjkP95f5CufGSUe0u8cLqaKDrKLOTXKsnOFd+3kfAK8Y8E
         Xq17UB8gunGiqGnlGWMGm/j5f6Dnvp08i4FKwXXz5z+xhtp9DOjOvWG39Aq4NIvOQdS4
         zqwXZe82YuKHk7GDWzFCrvCLLF7ukGTHaYYuHlWmmZ2MBmTXqx6U22FreIyFuER++UqF
         wVYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:mime-version
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from;
        bh=LR6HnvlIDEubHmU1BzwCRJHmDSwgWPqgnS0hwbD/ErY=;
        b=RIArQHAcJQKk+cjaLDXTcFVZgt6nRKqaBIwmZASD7x3c2iN7XO1NtmTO1gj1A6MWI6
         h3DKsYoh8Ogu2TPY+ANZJbuGM5V71rxPfTDvCj/w7bxaF2+BLKGiR3s6RRqAkrEyrFMw
         G8tan1BcUg7RY8rmjnIBMs/syr6T+UOGV0J8II7RI1NPnmrwPWVmJTpGlPPG8po/Oi1j
         gycqV1GIg1lNt0mrsh0axYsJz1tCBarNfxHOHvZ7mvDvGdCqR96XB7mzOYuizB+I03Rf
         fjoN50SziIHBQRhowjSJRYJtsj4dz77GD3xbiODRGlVlHAonAPR8jZOl1kSFrbzSeGil
         HbtQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 185.58.86.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=aculab.com
Received: from eu-smtp-delivery-151.mimecast.com (eu-smtp-delivery-151.mimecast.com. [185.58.86.151])
        by gmr-mx.google.com with ESMTPS id h16si506806wrx.2.2021.03.15.03.57.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Mar 2021 03:57:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of david.laight@aculab.com designates 185.58.86.151 as permitted sender) client-ip=185.58.86.151;
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-225-HPXRzdpYMDacC0wfCCXGQg-1; Mon, 15 Mar 2021 10:57:50 +0000
X-MC-Unique: HPXRzdpYMDacC0wfCCXGQg-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:994c:f5c2:35d6:9b65) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:994c:f5c2:35d6:9b65) with Microsoft SMTP
 Server (TLS) id 15.0.1497.2; Mon, 15 Mar 2021 10:57:49 +0000
Received: from AcuMS.Aculab.com ([fe80::994c:f5c2:35d6:9b65]) by
 AcuMS.aculab.com ([fe80::994c:f5c2:35d6:9b65%12]) with mapi id
 15.00.1497.012; Mon, 15 Mar 2021 10:57:49 +0000
From: David Laight <David.Laight@ACULAB.COM>
To: 'Nick Desaulniers' <ndesaulniers@google.com>, Masahiro Yamada
	<masahiroy@kernel.org>
CC: Sami Tolvanen <samitolvanen@google.com>, Candle Sun <candlesea@gmail.com>,
	Fangrui Song <maskray@google.com>, Michal Marek <michal.lkml@markovi.net>,
	Nathan Chancellor <nathan@kernel.org>, Linux Kbuild mailing list
	<linux-kbuild@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: RE: [PATCH] Makefile: LTO: have linker check -Wframe-larger-than
Thread-Topic: [PATCH] Makefile: LTO: have linker check -Wframe-larger-than
Thread-Index: AQHXF2kAjNB5JXKr7kq0KcwGISzjWaqE5Fyg
Date: Mon, 15 Mar 2021 10:57:49 +0000
Message-ID: <45f3e718a0c046f9a11f49eb199d425c@AcuMS.aculab.com>
References: <20210312010942.1546679-1-ndesaulniers@google.com>
 <CAKwvOdnPhpKRs6SePCUCPs_2MUFbWgJiaf9F9J+aQZGESSQ9yA@mail.gmail.com>
In-Reply-To: <CAKwvOdnPhpKRs6SePCUCPs_2MUFbWgJiaf9F9J+aQZGESSQ9yA@mail.gmail.com>
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

From: Nick Desaulniers
> Sent: 12 March 2021 17:55
> 
> On Thu, Mar 11, 2021 at 5:09 PM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > -Wframe-larger-than= requires stack frame information, which the
> > frontend cannot provide. This diagnostic is emitted late during
> > compilation once stack frame size is available.
> >
> > When building with LTO, the frontend simply lowers C to LLVM IR and does
> > not have stack frame information, so it cannot emit this diagnostic.
> > When the linker drives LTO, it restarts optimizations and lowers LLVM IR
> > to object code. At that point, it has stack frame information but
> > doesn't know to check for a specific max stack frame size.

With LTO the linker ought to be able to do a stack frame check
across multiples functions in the call stack.

Clearly recursive calls cause issues.
Indirect ones as well - but does CFI include enough info
about what can be called from where to help?

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/45f3e718a0c046f9a11f49eb199d425c%40AcuMS.aculab.com.
