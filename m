Return-Path: <clang-built-linux+bncBC27HSOJ44LBBTUW6T6QKGQE53UM6PQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x139.google.com (mail-lf1-x139.google.com [IPv6:2a00:1450:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CC032C27CB
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Nov 2020 14:32:00 +0100 (CET)
Received: by mail-lf1-x139.google.com with SMTP id i73sf880900lfi.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Nov 2020 05:32:00 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606224720; cv=pass;
        d=google.com; s=arc-20160816;
        b=mct+imCvJahOlNHY/lgPHM0UOFEFa7i1IaSsiXrLVCGNFbo5Gn4xW0/RhRLpppaLDp
         oe56hT0XeSgvuC01rthIOIeux1B9qZJu/7AJQt4ACmMuwWXh35ihys7r65t/NEUfUVrw
         Mg0KX7lvEJxxB2vx/4VwJMFb2d3WabDYUsj0k6c/qtfS7DdD8RbE5arpO+T5AK7oBQC4
         RTSUU3HxU5ue3d3OpjKEaba7pPoXTJH6rmt7Kgt8QFgop8372TSzhnYUTesEfXuJ5qKC
         wgjxjcO+Cn+F16dQCsJYkRlvUdcF0YHTQkyAE/eLTchI44KLWaEy2Ux9/zVYKlptTRec
         jo1Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:mime-version
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=O+fGyymopjZIZ5Hf8eGLwZcifjJf5JegHOFOUa8UnLs=;
        b=HkNRfjttYoBC9mkE4ZNuJ1RL4VDFUQOIsIW/24FRUd6+x/RRlQwh1EMEfkxpLJFQi7
         TNaCtrJDDo8fXgna6A06lQ5+oKiiirAFpQXkSNm/Nsf91yCUiloRXbNi4wV4O6UlVpTP
         +NC6th0Fw5n3YbdxQPWJ2YhWbhvRJmLEQ4e/exRGmsfJQYhBfo0X07MMJ/nIJfnRfhBD
         Jh4oopQAIyXahgyMxuWnLDOhDDX63IKD6N0JCvpyw9Pp45jQFry3CrzwwgueG8y6Pf9M
         AjtSXD6YxkV1goN9vgSG/rLQhwYbd9shlaTWrXb3VgwFOqKmQ3sMQ1St0NRlG0o0FCHC
         y65g==
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
        bh=O+fGyymopjZIZ5Hf8eGLwZcifjJf5JegHOFOUa8UnLs=;
        b=kmdP/GvZSO5hi9cLuYm89px3y4aTFVrPDgxe3w7val9QzECxNs+dFH66aNRH8D/i0n
         mgeXG/z70EXZDlMrlteYcGwJ7DH3PyLPSgxcjzEX7/QUYfEw4sTuySfjPofwTx5Ne3Cv
         uVPmZjTvhAV31kUFVDse6q0HuEMzGuWKLijPFhi2UE2x3ToqifxO6x19w6H8E30t7iwR
         8eCwUv1N/AWfaAwu2bF6hYuOx4cGRgLqwuFKxOYU3BvBRtt5DgqbvFCHLVoOcSDX+tZ+
         patDxrS9AGezOCS7vH8jdh0EREH9im3CX1Jko4/tKzIInKg5Y4ZKg3s7abWHRQNiW8ib
         cehw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :mime-version:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=O+fGyymopjZIZ5Hf8eGLwZcifjJf5JegHOFOUa8UnLs=;
        b=b0iPrJADLh4sJliAjpdCLCx7OqW4oHoRGCqcykPV7OwGDFkltV0/NHWYlfNWsXn6O5
         W2E5ydihBr1+WDyXNVD2fjfh4uoNNZP1ikKatrIFG3K8UmFnORw9eX10WGgm/lI8n541
         PXtpNne5NyID+nRJk/VHEpJljMfMz81Ao6gl3T2NWTwfuGdTpE6dNEFVSFTAjXFEF77i
         A6kBAfFtI+5ZAUqQ4BIojAY88QAZdQyjxYcnaG96CkhLVj+QKKX52kLkVSh/CArjc6R5
         ZtHFqUOneoKqK16Lhs+gFXREhcbMyLAbDVKxLMFCElEzg7X6BmflIgCw/UddL86efxaz
         REgw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5320NqUSia1ZIoVS47Gb9oDj9LBHnTIom2Wl4EG+GlBcOwIpZEa7
	2mTmq2QxJbGXuRIBYc9Vfyc=
X-Google-Smtp-Source: ABdhPJxcjBoY5NlkXPP3vRIK47Pm4RjieqhRYoxUPcOs038jLCh2pQRgmstrHFatnVPoLlRUZtkHzg==
X-Received: by 2002:ac2:47f4:: with SMTP id b20mr1908693lfp.339.1606224718987;
        Tue, 24 Nov 2020 05:31:58 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:6b0b:: with SMTP id d11ls71839lfa.1.gmail; Tue, 24 Nov
 2020 05:31:58 -0800 (PST)
X-Received: by 2002:a19:418d:: with SMTP id o135mr1879135lfa.329.1606224717936;
        Tue, 24 Nov 2020 05:31:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606224717; cv=none;
        d=google.com; s=arc-20160816;
        b=nSye/HnOcdnc3QGtf8wMbGjPi2+7cQeo2mX3oZXUN+4WGhGtB0q+yQzSi0V+lLtmGv
         wsWDmbwLXBTQ4LIj07Tm9p1XYGAGAxG0yCsF3WVXJOncNONF/3QNE805JgZQ7dxRnHQ6
         Z6CPso/ByvDtFoa1BbgI5edKVUPEVPmjIWTKJodvzXuhsQEak97R9Q+FgQq+QPBgpxI1
         kcUHRkvHG5IiG9ntaS4yizjJtgSAhBLOae3jZBN1Rur39xaOh9HvvzMGWPdGGjI0/LZn
         2gH9XQCRPIcufxb02vXE43dxLFYXcndZJjHDDfKAui7Ukuru+6uoWhIXjYMhMpERmu9q
         Ni4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:mime-version
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from;
        bh=s8OstKfAh1dMFwkFYtpzQWu6a/QNmH0JPpdqJROiEDQ=;
        b=xiH8e43kgDsD3v111XTSQFkTcwrbRhu6dMJRpO2v2dh3TiSKiQ9X2CcPvi5V8kiYg7
         XQL/JE6aSbukEOs1bUFqouiKue3DyyyaESUjZF+3pYUeHdViuPb2nkPGb1EkIdkjCxQd
         r7ksca0bDRRDevMuQNP8c1PcuUOLxVKbyCP1mOw+NzCwUQI0sclcSYaL7Z12FnhCxKI1
         NvOo7DgtyVORcEy3NRA/5dxi4poHKoraXw0jKm1vgFwvb9jZnkJsbe3xzetjI9mkvzYF
         F/uw0D9xAAZftFs8CGSuN1Fl007xcR2XcLv/YufIN6QQ/Sf8VCua5VShZ7t9HIUoerWQ
         HgAg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 207.82.80.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=aculab.com
Received: from eu-smtp-delivery-151.mimecast.com (eu-smtp-delivery-151.mimecast.com. [207.82.80.151])
        by gmr-mx.google.com with ESMTPS id v2si52679ljd.5.2020.11.24.05.31.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Nov 2020 05:31:57 -0800 (PST)
Received-SPF: pass (google.com: domain of david.laight@aculab.com designates 207.82.80.151 as permitted sender) client-ip=207.82.80.151;
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-268-_XpbmZMuMe6EpfsWNrm87w-1; Tue, 24 Nov 2020 13:31:55 +0000
X-MC-Unique: _XpbmZMuMe6EpfsWNrm87w-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) with Microsoft SMTP
 Server (TLS) id 15.0.1347.2; Tue, 24 Nov 2020 13:31:49 +0000
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000;
 Tue, 24 Nov 2020 13:31:49 +0000
From: David Laight <David.Laight@ACULAB.COM>
To: 'Arnd Bergmann' <arnd@kernel.org>, Christoph Hellwig <hch@infradead.org>
CC: Jann Horn <jannh@google.com>, Lukas Bulwahn <lukas.bulwahn@gmail.com>,
	Andrew Morton <akpm@linux-foundation.org>, Arnd Bergmann <arnd@arndb.de>, Tom
 Rix <trix@redhat.com>, Nathan Chancellor <natechancellor@gmail.com>, Nick
 Desaulniers <ndesaulniers@google.com>, clang-built-linux
	<clang-built-linux@googlegroups.com>, "kernel-janitors@vger.kernel.org"
	<kernel-janitors@vger.kernel.org>, kernel list <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH] zlib: define get_unaligned16() only when used
Thread-Topic: [PATCH] zlib: define get_unaligned16() only when used
Thread-Index: AQHWwllpnHAMCQpgAEWSudK6othSeqnXR0Dg
Date: Tue, 24 Nov 2020 13:31:49 +0000
Message-ID: <9e4edaa0061c4de2b3b1a7aa53987b94@AcuMS.aculab.com>
References: <20201124104030.903-1-lukas.bulwahn@gmail.com>
 <CAG48ez1FqJYay1F=LUt84DVHd+k0=gXohwhTnwv=t1sv=hTSjw@mail.gmail.com>
 <20201124115058.GA32060@infradead.org>
 <CAK8P3a2rVKQ5UHzcycu=0QpjtSQ3Nne4Xre-7+V27vmCe9yfKg@mail.gmail.com>
In-Reply-To: <CAK8P3a2rVKQ5UHzcycu=0QpjtSQ3Nne4Xre-7+V27vmCe9yfKg@mail.gmail.com>
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

From: Arnd Bergmann
> Sent: 24 November 2020 11:57
> 
> On Tue, Nov 24, 2020 at 12:51 PM Christoph Hellwig <hch@infradead.org> wrote:
> > On Tue, Nov 24, 2020 at 12:08:40PM +0100, Jann Horn wrote:
> > > > Since commit acaab7335bd6 ("lib/zlib: remove outdated and incorrect
> > > > pre-increment optimization"), get_unaligned16() is only used when
> > > > !CONFIG_HAVE_EFFICIENT_UNALIGNED_ACCESS.
> > > >
> > > > Hence, make CC=clang W=1 warns:
> > > >
> > > >   lib/zlib_inflate/inffast.c:20:1:
> > > >     warning: unused function 'get_unaligned16' [-Wunused-function]
> > > >
> > > > Define get_unaligned16() only when it is actually used.
> > > >
> > > > Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
> > >
> > > AFAICS a nicer option would be to "#include <asm/unaligned.h>" and
> > > then use "get_unaligned", which should automatically do the right
> > > thing everywhere and remove the need for defining get_unaligned16()
> > > and checking CONFIG_HAVE_EFFICIENT_UNALIGNED_ACCESS entirely?
> >
> > Yes, that is the right thing to do.
> 
> It's possible that this didn't work when the code was originally added:
> The decompressor functions are called from the compressed boot path,
> which is a bit limited regarding which headers it can include, at least
> on some architectures.
> 
> I would recommend test-building this for all architectures that include
> ../../../../lib/decompress_inflate.c from their boot code.

Plausibly it could include a different header that defined the required
items for those builds.

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/9e4edaa0061c4de2b3b1a7aa53987b94%40AcuMS.aculab.com.
