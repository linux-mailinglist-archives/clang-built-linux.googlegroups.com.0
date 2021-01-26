Return-Path: <clang-built-linux+bncBC27HSOJ44LBB4V2YKAAMGQEGUN3G3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23d.google.com (mail-lj1-x23d.google.com [IPv6:2a00:1450:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id E9A78304CB2
	for <lists+clang-built-linux@lfdr.de>; Tue, 26 Jan 2021 23:53:38 +0100 (CET)
Received: by mail-lj1-x23d.google.com with SMTP id k7sf152992ljj.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 26 Jan 2021 14:53:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611701618; cv=pass;
        d=google.com; s=arc-20160816;
        b=NZ0v1TQOzk+ZtWbKMU28FPxZVKG7SyLBqXxb5mXVMBJ78hC0h/9GUD3sWTpdPJj244
         irsU0JLbqB1JKldbjksNWzWcmSMHCy+V/rPKMlJpz/AiffAweGeXUgrJ5ZNgRLSkt+vZ
         ETkdrzzuSZO1Fyw3xZejoONye/J/TdgHBGaPAcwlLHLGrDBCIHMoShcQc03eyqPxREEc
         7lxe35cTD58/1pBrEw5LZdjgBlMQtmKRXKpX8re54Q7OQOKi9jie4aAKtwKOi1crcQhY
         EEpGYgA1UDRo6Tz2moUisShCDXXMZKhcdGqJ4Ssf+Mx0yCar1efgQQy6CgyzTt/gvKKu
         vjHA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:mime-version
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=tr4sPpMYP0cGAe35LouwpPZuqVl9m46p08ETYrjCdoU=;
        b=bHGqBna71xrAJ9tkdjRIEnCPgg/vB4jUEvD9Xm3R6Ue71xQj9nTh5KeGWkMl6FkyWO
         4at7eFGOqx88FyvMoWY2lglZjJETGcWwRWHu38mwQX3421T6TXHyst4uuuohA9YLUkje
         wZZYnDSL6bFpRgI9YosqyX+lRDSAiAA14wWDQFv6X7Mmq36WnRfjSwmVY1Tn4PgUP5UX
         Cxz/wm1CNl6q7RjXJnMOPCredLOdOquMBVmCVab4wsp6Lw8mIITWMyeQNNHCSvhMNXml
         SE3tqzfoM1iwsa7caxyZsEy/+E88Td3Qgfy1EN+ETxpT5yG7H3D2qSs4w391LL6cP1nR
         /Suw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 185.58.85.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=aculab.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:mime-version
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tr4sPpMYP0cGAe35LouwpPZuqVl9m46p08ETYrjCdoU=;
        b=M63sJT6tGTtJCF6CzVEbVFWKCQZ9/2d6ryS1WxzD5RIdlaftBUcMy/hNEgOulTc4cn
         66coDbCcMQ4BzDtqhvZTVY639lvIYlvucEPo62auNhRI9ifoS+Bcv88+B1pfJTeJWQiM
         lNVn5xxzHUJVd6c+gCcGVYfNwDPcwsNyPahwlz5u+OS60KzITj+uPCIxkHvNDfaSMR0r
         jhP62QP0lY84ib5K+AXs/UVkke1t4+GC7brRQ9xavTGSeyLY9EXVvBUkqiXK0cDQIMAu
         Tuuhz8zpfXmWl/2BgpNOmByxPS82ynOUpyd42wD8d8dHjWD41sq7y15EnrpVSUJ12n0j
         1EkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :mime-version:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tr4sPpMYP0cGAe35LouwpPZuqVl9m46p08ETYrjCdoU=;
        b=oXzuRTZ+mMBMuwZkzTRd0uCoYOZ3S0ybFThuxOgfb8VXdzwoy6+kdjs70zLTW72U+R
         gepIuOlzcbl2YZyYoBP+APUCbo8nAsvZJGgy/q9AKsxt6vg0hkBI0mO6NwbFYooy7nG1
         rc8FClXnx/sFogvzceO7CZb97aw5Famv36XMSgaasxOmIcO2pQMWRctN0mM3ZVI++z2P
         OiUrnIIGInChIK5caEunaQv0s3Wc4KQVx1/Y5ciEj0SyAt8vC2YDA93VR42NetGYcRap
         5nCVe7bXCiVepFpIE/0YnbupkWt4Ki8wFiiQjey6LZn//Kq6nTdk84WQnPS+iVhJVX4j
         /MWw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533iEIvfN961TPXHx0dfFxvJaEV9Ij0puRlXY8JKYLftVQekbEwe
	MDGJSKIQUi2eExLmQwpISJs=
X-Google-Smtp-Source: ABdhPJyTfm0BRJKcZnX1GiHe1C/rejcH1Z7O9eUFf6a0pCJhrkFW3UTdM5zTiUZAmMJi642UsD6PXQ==
X-Received: by 2002:a2e:898c:: with SMTP id c12mr4199486lji.193.1611701618479;
        Tue, 26 Jan 2021 14:53:38 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:4adc:: with SMTP id m28ls48749lfp.0.gmail; Tue, 26 Jan
 2021 14:53:37 -0800 (PST)
X-Received: by 2002:ac2:58f2:: with SMTP id v18mr3603949lfo.623.1611701617505;
        Tue, 26 Jan 2021 14:53:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611701617; cv=none;
        d=google.com; s=arc-20160816;
        b=omCQcSg1vpFBMOZ5dN6CxGDOAGKiI4QgmcVtnS9Gg4brgbFo5FSOQHZ2zvVM2r8S9n
         pDbnlx1WYedvPiaxe8GtCBXKd+Ew4AlAegNMom8obWOSIXkRe9e1Mh/ul92aNgfINNjV
         0n3uyN5WN9KnQQ6nqRXktVnOO0xmyl+e1EL8w9J0b0irKNyyPuhpcJ6wylDBh+V5kiCl
         wBV0kzyNF9K5OJKGykIyDBY1nRsVpo2JckAV3bvnlpP9APZT6dyzs/4yf0FhaXWOSbrx
         Zri0eCAuGTKYvI5mEubfthFVsICFpwR/VECUEedBhCBT8+IlGQCZTmESIQ5iQECWHHfF
         8MQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:mime-version
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from;
        bh=indPSvusvV4gxd1XJ27+6DaTJW+2T73oiMkblYzZTEw=;
        b=B7LrTK+ZjmqBPNo9zlJXE8wyzeW6WGTYqfa30G3Ru8XP0ab5edpi/rQkCPWrra1BBP
         OT79Pcq9ECApbarkti6Qw/R4pK7tDGnlkuMmlr4EhHrBa8TMy/bq8QCYxwOMz9yNZMi8
         LyMtxlO4YYjNfu4aiepEGd4G/zah98OE5/hc6YppbPHaDuOAIjaEc0J6tvX//fHwkkGq
         Dsh5vgvH9EyERHI0YyRkfjD+scLOeeAgBSJjdPEgl+NXkTeEnOFDzMWi4XF2uUE5GCV3
         I3stprOD1S6rwU/PCG+HRuZG7CPZQfI6T3TmOk/lK/fOZVVdCi7fQQK9zRbkDFnwhYu1
         PNbA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 185.58.85.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=aculab.com
Received: from eu-smtp-delivery-151.mimecast.com (eu-smtp-delivery-151.mimecast.com. [185.58.85.151])
        by gmr-mx.google.com with ESMTPS id y6si10085ljn.3.2021.01.26.14.53.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Jan 2021 14:53:36 -0800 (PST)
Received-SPF: pass (google.com: domain of david.laight@aculab.com designates 185.58.85.151 as permitted sender) client-ip=185.58.85.151;
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-76-30NQJlUXPP2CXDT06Y_EHA-1; Tue, 26 Jan 2021 22:53:34 +0000
X-MC-Unique: 30NQJlUXPP2CXDT06Y_EHA-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) with Microsoft SMTP
 Server (TLS) id 15.0.1347.2; Tue, 26 Jan 2021 22:53:31 +0000
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000;
 Tue, 26 Jan 2021 22:53:31 +0000
From: David Laight <David.Laight@ACULAB.COM>
To: 'Nick Desaulniers' <ndesaulniers@google.com>, Candle Sun
	<candlesea@gmail.com>
CC: "keescook@chromium.org" <keescook@chromium.org>, "arnd@arndb.de"
	<arnd@arndb.de>, "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
	"natechancellor@gmail.com" <natechancellor@gmail.com>,
	"candle.sun@unisoc.com" <candle.sun@unisoc.com>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>
Subject: RE: [PATCH] lkdtm: fix memory copy size for WRITE_KERN
Thread-Topic: [PATCH] lkdtm: fix memory copy size for WRITE_KERN
Thread-Index: AQHW8v+fVpSBFdR3bUKo3QkF9iGP/qo4I1KAgAIcALWAAEXe8A==
Date: Tue, 26 Jan 2021 22:53:31 +0000
Message-ID: <9b48470af3b841e4bd8ba15a4ee5e745@AcuMS.aculab.com>
References: <20210125085622.2322-1-candlesea@gmail.com>
 <97d1f36a3b534b7fbd3790a0277ccaf5@AcuMS.aculab.com>
 <CAPnx3XPRnpPQyW7UO_TTmQrHwitDw+_i3ESVkaGq+JyiY9Pu0w@mail.gmail.com>
 <CAKwvOdnH8kXt+jAutjqsL_5H5PzswLGEZOieaGru2SDn13pj+w@mail.gmail.com>
In-Reply-To: <CAKwvOdnH8kXt+jAutjqsL_5H5PzswLGEZOieaGru2SDn13pj+w@mail.gmail.com>
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
 (google.com: domain of david.laight@aculab.com designates 185.58.85.151 as
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
> Sent: 26 January 2021 18:40
> 
> On Tue, Jan 26, 2021 at 6:13 AM Candle Sun <candlesea@gmail.com> wrote:
> >
> > On Mon, Jan 25, 2021 at 6:37 PM David Laight <David.Laight@aculab.com> wrote:
> > >
> > > From: Candle Sun
> > > > Sent: 25 January 2021 08:56
> > > >
> > > > From: Candle Sun <candle.sun@unisoc.com>
> > > >
> > > > Though do_overwritten() follows do_nothing() in source code, the final
> > > > memory address order is determined by compiler. We can't always assume
> > > > address of do_overwritten() is bigger than do_nothing(). At least the
> > > > Clang we are using places do_overwritten() before do_nothing() in the
> > > > object. This causes the copy size in lkdtm_WRITE_KERN() is *really*
> > > > big and WRITE_KERN test on ARM32 arch will fail.
> > > >
> > > > Compare the address order before doing the subtraction.
> > >
> > > It isn't clear that helps.
> > > Compile with -ffunction-sections and/or do LTO an there
> > > is no reason at all why the functions should be together.
> > >
> > > Even without that lkdtm_WRITE_KERN() could easily be between them.
> > >
> > > You need to get the size of the 'empty function' from the
> > > symbol table.
> > >
> > >         David
> >
> > Thanks David.
> >
> > I think using abs() by Nick's advice would be better. But could you
> > point out which kernel function can get function size?
> 
> The Elf symbol table should contain this info, IIUC.
> 
> Given a string literal of a symbol (such as a function identifier),
> kallsyms_lookup_name() can be used to return its address.
> 
> From there we'd want to fetch the Elf_Sym for the address which should
> contain a st_size field which I think corresponds to the size in bytes
> of the function.  (At least, from playing with `llvm-readelf -s`)
> Probably would want to validate it's an STT_FUNC symbol type, too.  We
> basically want something like kexec_purgatory_find_symbol(), but that
> knows about the entire kernel image, and not the purgatory image used
> during kexec.  I don't see any such function currently in the
> kernel...but it's a large codebase to search through.

The alternative is to get the linker script to define a specific
constant to the size of the function.
You can then link against it (by using it as the address of a symbol).

It may be easier to use an asm file for the 'return 0' code.
I'm guessing there are things in the static branch area
that could be used.

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/9b48470af3b841e4bd8ba15a4ee5e745%40AcuMS.aculab.com.
