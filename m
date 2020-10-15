Return-Path: <clang-built-linux+bncBC27HSOJ44LBBH6TUH6AKGQEGTR75GI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23f.google.com (mail-lj1-x23f.google.com [IPv6:2a00:1450:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C43628F5C6
	for <lists+clang-built-linux@lfdr.de>; Thu, 15 Oct 2020 17:24:16 +0200 (CEST)
Received: by mail-lj1-x23f.google.com with SMTP id r29sf227786ljd.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 15 Oct 2020 08:24:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602775456; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZoXoMq3FebBlT1ChBf+OzyfYfvmJ3iTK7GnI2hYHV6qZi14I9bUl5qIMiPVdL/F56p
         uELB6kgN47riBXDzXeTe6hm9YfiopLbzfngAdRwvlZP+JI831YFSZxqFPJo/CQUdp++2
         V1CU3GfatClENgTmrfH9edE358TwyORbZBTvwFOtu0/p0WlSVshc1Bz+8xKGs0vVRf3K
         iPI5Ii5j868DPU5egsMgHsxzrKuriJktykPXBi/l98CiWQtp9wsenlzXtm0dTICqRNIl
         Ckf+P+z45k+4MT5FI0yzWDjq0ZNFa+yrjKxXUQfqFEkosr5Ola0zXcGozm5FTNQsyzry
         muJg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:mime-version
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=glBoI6FBY4FbcP5TB65jQCQKGFV4spsPcp/Ph8p0VbI=;
        b=pEOlawTKzOgMM89NU2xlSDqPIc5Ud+kEFGrJg0lmAz2W78eQ5JaTfMc5V7tzkQahvZ
         J9SmXai3D5RIkj+kd+GFFtEpwLEZIvNnjuRiBKNtmvJ84JXYKlEL2v4MEYG5bc5/rLl3
         qsoYQ5vBkkqiPGTTYTMNPwpz3Sry9qis8Dm656X8OnRrPigV7feGwe3sza8QI29Cn4gS
         XgCa99Zp3F3aK3hfDniv+aC13ifVTZxWn7bs4MIYyK2BDcainmltLj4l04QwC3AUWbEH
         ow1YhsVWXjc3Lb8qEofN38q2Kl8n8DRuKfoA1wTjvV4rrlmWirX5IpRus7z3LNapew3u
         q7nQ==
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
        bh=glBoI6FBY4FbcP5TB65jQCQKGFV4spsPcp/Ph8p0VbI=;
        b=ThIsRHdIQc97GgV/ZIT2cLrL16cjgG0f9tBFSuWylQwa6pvh14T7l6tsUUQavCv/Vz
         dLk9FUDf7vzVTXUgNacs313mKFg0bqAHw/U2Jt0j9Nj8FT63gnRAJns7M5JpFmMWyD1u
         StTkCG5M74LDNu7K4IS81xqadFVYYuHlrdjQ+P4ndJBOgfK8YrYcSd+0gyR7bxfIn9mX
         rAuycG3feOyZVVnRnQrNzDsztDDKBit+uoQXS60wghqtnqIAuiS/5VyN1wl/efQzXcf2
         XmdvqhIhvKx3RvaSAe9lv+99WFuYA5UkEsrvAYrJLqmLWvkwEDhq7f1kxty21z2CPiTL
         i3Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :mime-version:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=glBoI6FBY4FbcP5TB65jQCQKGFV4spsPcp/Ph8p0VbI=;
        b=YNsRwXrZGe1WShyR/SGEQua99yBg/xnlAp0qgYIpe5GkKb3pZ/8KTRHyOTivqax9xW
         z1807x6Q+T/dEgCQstdoqaZ4AwroesfqKRwn56DlXCcZAO7AMXrIzncIeQBlEBGpjF8H
         09ahLkq1FwPg6qjkHcVeRYr2KtBnV9Ej+ZJpGgdtJTERGF8DZgKtfyNjfwTKSu8Cr3GQ
         4pIvtRzesIMj35qdWzPwiBY6Mw33bBq8iBbfXtEgPnMJF4XjqcJte/qql5Sz+DZLCYVO
         pVwlLasWJGrhddpHEuTP1ZoJLlUloEH/VbMnFgwYnky/a0Ee7Hv9qd6EHOFBDyo0gaSH
         AIjw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532E7vutQadjsdkwxQqkX8fta1/SPe3XrqoRpEQx7hS7fH1vSYZP
	pXuarYp0vm5ctf+treG0Ro0=
X-Google-Smtp-Source: ABdhPJx6ixUdsnCs92jduRiS9SafCfa1WgYSHcxXa7s1WaTLmT1t/jw+yHGiCCsNumefv36sjfHTLg==
X-Received: by 2002:ac2:515b:: with SMTP id q27mr597105lfd.123.1602775455995;
        Thu, 15 Oct 2020 08:24:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:7a0e:: with SMTP id v14ls664178ljc.7.gmail; Thu, 15 Oct
 2020 08:24:15 -0700 (PDT)
X-Received: by 2002:a2e:8582:: with SMTP id b2mr1435599lji.376.1602775454918;
        Thu, 15 Oct 2020 08:24:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602775454; cv=none;
        d=google.com; s=arc-20160816;
        b=NfroeJBWITlOtT7V/VsYlvyY+a/jzlHsi4gPt7agFtZTcp8K7pH+f3Ud/onL99yIma
         4sT8/h1DD3DVsrGbo7rv4QNgIuAKKnHU0c40CtmIUdTudG26vl/5kPtKnPQRu5BnQ9ar
         D1kzWVwmDjy7hRy0hE7bTQU2XEAc1uGzumg33DxQQCGFyNTk0Rg+AFx/cJNYXgjzz3MB
         c6BuOsR0zKrXpIEksp3ZwyBMPnQtaGg7B6iCX3ia7pTRHFVapB+y5ldIQf0ODtug/luy
         NFoUTDkZ9qR1S2DtY0MHICCI1dv4dOkSMCH0mGLScfwq9UvO0zU6ILmsxeOP6+Onn7Pc
         H4CA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:mime-version
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from;
        bh=QrQg9Bksp/1jHCLztUuS40d2hgn1n0L+/s9fyWjICeM=;
        b=NZMifPTpnHmWcomICF53YbsomSKWEhJTSESdLnRfeXbMjfjC1Im/LZF304qBvTVVDG
         CNlfas/0v8Hh6FXjQZLCS9btxuzPxPipsuvNlEWGomNl/R/oc0rJiNSE4VnbsmDBsRCI
         v8QHRp9MMbPtwGCQdP7xhrg+isuQ6xUwhYFDScXezrBJu7X351jXX7gE7FzCQWqc5b59
         PeECHjUCT0mr9EEgatNEyHfv8MJ8LQqlRM6qTKc6svrSIAgy5lNLtCyCdoEaSaUoIItv
         RlfmN5aaOjrVK6MgMQiouTr+sCjdBGr6dQ1yWOmtgIMHz5K5CCyV2sRXJ/oaC0ta+54v
         YQZA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 185.58.86.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=aculab.com
Received: from eu-smtp-delivery-151.mimecast.com (eu-smtp-delivery-151.mimecast.com. [185.58.86.151])
        by gmr-mx.google.com with ESMTPS id q11si53647lfo.8.2020.10.15.08.24.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Oct 2020 08:24:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of david.laight@aculab.com designates 185.58.86.151 as permitted sender) client-ip=185.58.86.151;
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-193-gJBnQdcfNGGK9k5C1zNBcw-1; Thu, 15 Oct 2020 16:24:10 +0100
X-MC-Unique: gJBnQdcfNGGK9k5C1zNBcw-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) with Microsoft SMTP
 Server (TLS) id 15.0.1347.2; Thu, 15 Oct 2020 16:24:09 +0100
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000;
 Thu, 15 Oct 2020 16:24:09 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Arvind Sankar' <nivedita@alum.mit.edu>
CC: Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers
	<ndesaulniers@google.com>, "clang-built-linux@googlegroups.com"
	<clang-built-linux@googlegroups.com>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>
Subject: RE: [PATCH] compiler.h: Fix barrier_data() on clang
Thread-Topic: [PATCH] compiler.h: Fix barrier_data() on clang
Thread-Index: AQHWonC0tkOz0iWHskSkJuRX+uCeV6mYVxvwgABW1oCAABhpoA==
Date: Thu, 15 Oct 2020 15:24:09 +0000
Message-ID: <4a8c47b5eeb44b789abbb617f0a95993@AcuMS.aculab.com>
References: <20201014212631.207844-1-nivedita@alum.mit.edu>
 <1653ace9164c4a3a8be50b3d2c9ff816@AcuMS.aculab.com>
 <20201015144515.GA572410@rani.riverdale.lan>
In-Reply-To: <20201015144515.GA572410@rani.riverdale.lan>
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

From: Arvind Sankar
> Sent: 15 October 2020 15:45
> 
> On Thu, Oct 15, 2020 at 08:50:05AM +0000, David Laight wrote:
> > From: Arvind Sankar
> > > Sent: 14 October 2020 22:27
> > ...
> > > +/*
> > > + * This version is i.e. to prevent dead stores elimination on @ptr
> > > + * where gcc and llvm may behave differently when otherwise using
> > > + * normal barrier(): while gcc behavior gets along with a normal
> > > + * barrier(), llvm needs an explicit input variable to be assumed
> > > + * clobbered. The issue is as follows: while the inline asm might
> > > + * access any memory it wants, the compiler could have fit all of
> > > + * @ptr into memory registers instead, and since @ptr never escaped
> > > + * from that, it proved that the inline asm wasn't touching any of
> > > + * it. This version works well with both compilers, i.e. we're telling
> > > + * the compiler that the inline asm absolutely may see the contents
> > > + * of @ptr. See also: https://llvm.org/bugs/show_bug.cgi?id=15495
> > > + */
> > > +# define barrier_data(ptr) __asm__ __volatile__("": :"r"(ptr) :"memory")
> >
> > That comment doesn't actually match the asm statement.
> > Although the asm statement probably has the desired effect.
> >
> > The "r"(ptr) constraint only passes the address of the buffer
> > into the asm - it doesn't say anything at all about the associated
> > memory.
> >
> > What the "r"(ptr) actually does is to force the address of the
> > associated data to be taken.
> > This means that on-stack space must actually be allocated.
> > The "memory" clobber will then force the registers caching
> > the variable be written out to stack.
> >
> 
> I think the comment is unclear now that you bring it up, but the problem
> it actually addresses is not that the data is held in registers: in the
> sha256_transform() case mentioned in the commit message, for example,
> the data is in fact in memory even before this change (it's a 256-byte
> array), and that together with the memory clobber is enough for gcc to
> assume that the asm might use it. But with clang, if the address of that
> data has never escaped -- in this case the data is a local variable
> whose address was never passed out of the function -- the compiler
> assumes that the asm cannot possibly depend on that memory, because it
> has no way of getting its address.

Ok, slightly different from what i thought.
But the current comment is just wrong.

> Passing ptr to the inline asm tells clang that the asm knows the
> address, and since it also has a memory clobber, that it may use the
> data. This is somewhat suboptimal, since if the data was some small
> structure that the compiler was just holding in registers originally,
> forcing it out to memory is a bad thing to do.
> 
> > If you only want to force stores on a single data structure
> > you actually want:
> > #define barrier_data(ptr) asm volatile("" :: "m"(*ptr))
> > although it would be best then to add an explicit size
> > and associated cast.
> >
> 
> i.e. something like:
> 	static inline void barrier_data(void *ptr, size_t size)
> 	{
> 		asm volatile("" : "+m"(*(char (*)[size])ptr));

I think it has to be a struct with an array member?

> 	}
> plus some magic to disable the VLA warning, otherwise it causes a build
> error.

It shouldn't if the size is a compile time constant.
And given this is an instruction to the compiler it better be.

> But I think that might lead to even more subtle issues by dropping the
> memory clobber. For example (and this is actually done in
> sha256_transform() as well, though the zero'ing simply doesn't work with
> any compiler, as it's missing the barrier_data()'s):
> 
> 	unsigned long x, y;
> 	... do something secret with x/y ...
> 	x = y = 0;
> 	barrier_data(&x, sizeof(x));
> 	barrier_data(&y, sizeof(y));
> 	return;
> 
> Since x is not used after its barrier_data(), I think the compiler would
> be within its rights to turn that into:
> 
> 	xorl	%eax, %eax
> 	leaq	-16(%rbp), %rdx	// &x == -16(%rbp)
> 	movq	%eax, (%rdx)	// x = 0;
> 	// inline asm for barrier_data(&x, sizeof(x));
> 	movq	%eax, (%rdx)	// y = 0; (!)
> 	// inline asm for barrier_data(&y, sizeof(y));
> 
> which saves one instruction by putting y at the same location as x, once
> x is dead.
> 
> With a memory clobber, the compiler has to keep x and y at different
> addresses, since the first barrier_data() might have saved the address
> of x.

Maybe "+m"(*ptr) : "r"(ptr) would work.
OTOH a "memory" clobber at the bottom of a function isn't going to
cause bloat.

The explicit ranged memory access (without "memory") probably has its
uses - but only if the full "memory" clobber causes grief.

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/4a8c47b5eeb44b789abbb617f0a95993%40AcuMS.aculab.com.
