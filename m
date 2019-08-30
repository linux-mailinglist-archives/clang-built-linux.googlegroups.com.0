Return-Path: <clang-built-linux+bncBC27HSOJ44LBBBMOUXVQKGQERKXTEDA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33f.google.com (mail-wm1-x33f.google.com [IPv6:2a00:1450:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 0670BA3B13
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Aug 2019 17:55:50 +0200 (CEST)
Received: by mail-wm1-x33f.google.com with SMTP id n13sf2602442wmi.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Aug 2019 08:55:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567180549; cv=pass;
        d=google.com; s=arc-20160816;
        b=gu8pcLuo6lcYtSOjANDWLUpgHJh2LtMcYgww3iZXPAjkh5UdwXntau7Ht7+ykfDIas
         7GGDFGIsgVVdWG6tuA1OVCgY5/h3YSdcG0W9Igv/GDutJhCDE49rjc16+5skS/Cotw2R
         EDePqFAYYpHgmTW9O4Q0kCFvc+eel7VWPSZeOq/gXrEdamEc37Jxt0KnM2N0GMZaiaZo
         +6flfmBpJXu/CvHXWadOn7auJpJ1U79tfQOwELYgYVpI0Phdg+veprBIn+vVzTIuRSww
         y1QC5esnBtxxyXLuPzg+QTmQChm/++05R7ilIITMrr8cnoSAL9sQ6v5jJSsZi9wLAvAD
         s/RA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=Qt+B8mu2JAbRgzzCx08NhYRtiShi+aYzvBHpSg1tTRw=;
        b=qgVtogMM7YD8cFXDlYFRaqKloDaJsQYKcB7rTCVjM/ELhGNq0oM30KH3esGgxKBK3M
         oRORIB5Fw64fpbmWvCzuZpclCXB+L17v81cLdPPsJh6eLib2sOsAMayioxP5y343Yj/q
         1xbrHqMzA5r7a0UKCEhqHGGDjM8tuZM5a9YgcCIP7VQH8hQs5/B+G+1yWnDRfwdPOpM2
         eeFiO152G8i4g8WbHpM6kkfn+pmRiBCYB8BV82SYvMzAv0goBFT/pTirEqj3RLHyOlrf
         hhXFWr6g0/yRy3AU5KF8zMmWxhiLsuJ+lpmTdLsQFZZF3FQDsPpwVzh9Lke4FayQnGsS
         2pgQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 207.82.80.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Qt+B8mu2JAbRgzzCx08NhYRtiShi+aYzvBHpSg1tTRw=;
        b=VEfaMDpOhpRsujLCMp+Xa8yZbZ7Gt4axSzglkPSQpIs3KiLVX7coWVv8yPyYV/6yLV
         yFF9h8edTu8tKjR2XithY5cjedscBA6sG9vNuPVyrKXWbOGRZZXPLpG9vPLCKj8TXGFK
         zjm719FpS3+MzXzvFI6pz8PwEbEqeeqMZugmwBblO0e5LAbHSOtbIdd+mVIEQTJIJSY6
         Xp9Wogi7nXu5r+eKP1SU0j2hSKMzKYjveumj2h9LsbbvtXWY2e+26BZDlSGmfbvtv+gA
         aEWNnZkoI8/DRm+nE39k77vQD78kOuhoK0G466fbvFq2g/blM61piFpojbmOsva0zANV
         a34w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Qt+B8mu2JAbRgzzCx08NhYRtiShi+aYzvBHpSg1tTRw=;
        b=A2yumjXesrkcAwq7rbUinZvuXdEqy2/BHl7cRlp+IhIq6TMUe18c6YVwu+J0Zybfi9
         Rc6EcY0b4gUinLQ283Wg2Ue/EWKvnE8brbXNd8uqQhGWtiPpygzuYhSCijgW37gGerUg
         283ltdTgXxIoqdVdAsVdH3nngfsfEAr1yibp/NUD/Dr+mEBidIyZX1UYitkelEWOWaaF
         UG7p2c/93Sk8eKWzkaQ4RT7kU6nKSe5nGiu0EDOyevEcvueyU679vyDqDqNqoy34yFaa
         hYIjdBkDm/cpjPl3a/8YFn+oAa9jJJl7hiq+9YxN8IEo6eU2plKaNqCWVtbyhEcoT4U+
         JcxQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXuQruzLQmztEV1TA4vKXinlpikGfEpopCmLnc0f+JjnrMgvGPT
	WXnkt40Tb8Y0sGeexlDeHCU=
X-Google-Smtp-Source: APXvYqwsONfC7puRGnbf2sQ/VUKtfbJgBMG9DcZkrY+UoULHaeSq45+r88nCrWyaPwnaOinY4tSiqg==
X-Received: by 2002:a5d:568c:: with SMTP id f12mr5126724wrv.248.1567180549658;
        Fri, 30 Aug 2019 08:55:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:389:: with SMTP id w9ls737396wmd.5.canary-gmail;
 Fri, 30 Aug 2019 08:55:49 -0700 (PDT)
X-Received: by 2002:a05:600c:40f:: with SMTP id q15mr19706788wmb.88.1567180549239;
        Fri, 30 Aug 2019 08:55:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567180549; cv=none;
        d=google.com; s=arc-20160816;
        b=VPpO70zSuja92LEDoEm65vkdvmbT5BcqhyhDsCSqd20f+HC6hEoiX+p32+NUUFmIV2
         9cc9Evvx7OGRAGTe+sPlVX6u3X/JYeyc+yhTzQre7TtjlMygKc5C1hy5FjvhpvpGNj7u
         9+R3PgOuXc04UsHoEUBebvU/lOtugg8B2nmPwnbjoL77DZ5xTYnwMjIebh6XsfOqB9pq
         sZkvmI3LOt89TI4gd9+PV2f9nF5RnHcvG+gKO0B4U8r50vY4swUnw5MeTiTqTUxp3dYu
         3aoYQI3VH6nN1iTQGNZ0v5ROfKA95v/2wULhm+l8NPgdTjf92Q0KUc9VZfV2NQ6Qkq18
         Gz2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from;
        bh=0kLpAJfREYq6GKkHQ+K1xBVCBEBTdg1HqtiKkcyWs/k=;
        b=jVHU+oUA0px/btmTNohDn2F3uux1W3Icm4qyNGoC3gJLcUCypii2dE46AaiiiU68tg
         mVwvNPLfeREFdkjlzLaoPdRNxlZGn3FPNM7boNPiUXmkw8h1BXDvI9TEs8KHBOcK0BDK
         n7yxdlYfWIeqKy5ynH6OhWwSDv34Q2klmbkN+gqnLq9ZE/J7CtqJ5ELhY/lonc3467x7
         mTUFBkBll69zXdSgZmW8NoTRscD08x867rmqUGjYfkQvEkrt7RiJp2m9t6m8i/4sKROA
         f7fiIv/8tEjABlI1AGis/+dlKabnl8P+MDBFcLQZThi+jquamKY+CFPMtgMKSq/XIaLc
         /uKA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 207.82.80.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com
Received: from eu-smtp-delivery-151.mimecast.com (eu-smtp-delivery-151.mimecast.com. [207.82.80.151])
        by gmr-mx.google.com with ESMTPS id r1si108605wrp.3.2019.08.30.08.55.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Aug 2019 08:55:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of david.laight@aculab.com designates 207.82.80.151 as permitted sender) client-ip=207.82.80.151;
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-162-f_2tIRpBNluQeo7ZqbvEUQ-1; Fri, 30 Aug 2019 16:55:48 +0100
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) with Microsoft SMTP
 Server (TLS) id 15.0.1347.2; Fri, 30 Aug 2019 16:55:47 +0100
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000;
 Fri, 30 Aug 2019 16:55:47 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Linus Torvalds' <torvalds@linux-foundation.org>, Josh Poimboeuf
	<jpoimboe@redhat.com>
CC: Arnd Bergmann <arnd@arndb.de>, Nick Desaulniers <ndesaulniers@google.com>,
	Ilie Halip <ilie.halip@gmail.com>, Linux Kernel Mailing List
	<linux-kernel@vger.kernel.org>, clang-built-linux
	<clang-built-linux@googlegroups.com>, Peter Zijlstra <peterz@infradead.org>,
	"Paul E. McKenney" <paulmck@linux.ibm.com>
Subject: RE: objtool warning "uses BP as a scratch register" with clang-9
Thread-Topic: objtool warning "uses BP as a scratch register" with clang-9
Thread-Index: AQHVX0pqqj9VEXOMQ0SdqQ13OMpYJacT10cw
Date: Fri, 30 Aug 2019 15:55:47 +0000
Message-ID: <d1af87f139b54346b420d06855297cfa@AcuMS.aculab.com>
References: <CAK8P3a2DWh54eroBLXo+sPgJc95aAMRWdLB2n-pANss1RbLiBw@mail.gmail.com>
 <CAKwvOdnD1mEd-G9sWBtnzfe9oGTeZYws6zNJA7opS69DN08jPg@mail.gmail.com>
 <CAK8P3a0nJL+3hxR0U9kT_9Y4E86tofkOnVzNTEvAkhOFxOEA3Q@mail.gmail.com>
 <CAK8P3a0bY9QfamCveE3P4H+Nrs1e6CTqWVgiY+MCd9hJmgMQZg@mail.gmail.com>
 <20190828152226.r6pl64ij5kol6d4p@treble>
 <CAK8P3a2ATzqRSqVeeKNswLU74+bjvwK_GmG0=jbMymVaSp2ysw@mail.gmail.com>
 <20190829173458.skttfjlulbiz5s25@treble>
 <CAHk-=wi-epJZfBHDbKKDZ64us7WkF=LpUfhvYBmZSteO8Q0RAg@mail.gmail.com>
 <CAK8P3a1K5HgfACmJXr4dTTwDJFz5BeSCCa3RQWYbXGE-2q4TJQ@mail.gmail.com>
 <CAHk-=whuUdqrh2=LLNfRiW6oadx0zzGVkvqyx_O1cGLa2U6Jjg@mail.gmail.com>
 <20190830150208.jyk7tfzznqimc6ow@treble>
 <CAHk-=wgqAcRU99Dp20+ZAux7Mdgbnw5deOguwOjdCJY0eNnSkA@mail.gmail.com>
In-Reply-To: <CAHk-=wgqAcRU99Dp20+ZAux7Mdgbnw5deOguwOjdCJY0eNnSkA@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
X-MC-Unique: f_2tIRpBNluQeo7ZqbvEUQ-1
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

From: Linus Torvalds
> Sent: 30 August 2019 16:49
> On Fri, Aug 30, 2019 at 8:02 AM Josh Poimboeuf <jpoimboe@redhat.com> wrote:
> >
> > For KASAN, the Clang threshold for inserting memset() is *2* consecutive
> > writes instead of 17.  Isn't that likely to cause tearing-related
> > surprises?
> 
> Tearing isn't likely to be a problem.
> 
> It's not like memcpy() does byte-by-byte copies. If you pass it a
> word-aligned pointer, it will do word-aligned accesses simply for
> performance reasons.
> 
> Even on x86, where we use "rep movsb", we (a) tend to disable it for
> small copies and (b) it turns out that microcode that does the
> optimized movsb (which is the only case we use it) probably ends up
> doing atomic things anyway. Note the "probably". I don't have
> microcode source code, but there are other indications like "we know
> it doesn't take interrupts on a byte-per-byte level, only on the
> cacheline level".
> 
> So it's probably not an issue from a tearing standpoint - but it
> worries me because of "this has to be a leaf function" kind of issues
> where we may be using individual stores on purpose. We do have things
> like that.

Even in userspace you might be accessing mmap()ed PCIe device memory.
The last thing you want is the compiler converting anything into
'rep movsb'.

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/d1af87f139b54346b420d06855297cfa%40AcuMS.aculab.com.
