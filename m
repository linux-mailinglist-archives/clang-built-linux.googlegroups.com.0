Return-Path: <clang-built-linux+bncBC27HSOJ44LBB37YZ32QKGQEA6THHMQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x338.google.com (mail-wm1-x338.google.com [IPv6:2a00:1450:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id 3049A1C83AB
	for <lists+clang-built-linux@lfdr.de>; Thu,  7 May 2020 09:44:48 +0200 (CEST)
Received: by mail-wm1-x338.google.com with SMTP id h22sf2853638wml.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 07 May 2020 00:44:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588837488; cv=pass;
        d=google.com; s=arc-20160816;
        b=k6R9rBjxIuSyjqsMlFWomJ+EypC1jxMDFQWKeozdYviJV6siCNn3ZxTJI2n+qFF9P8
         xbYb35OVIVN6HfR2RxO7g2Kki+K0PJ/EC6dyouo8dbncTWz/0cWO2liPUT8afR+j7bkI
         sLS8jvHm3MD2PGPv1kNP9SJayEx7I993H2IqeFNxKPJts6FwTby3cNshURXGSts6jwhh
         hZ5eJDpc46dUMuxafZk2FRJZAlv8CUBS8OfMvKyLiH/RFWya3oOyI7FNFFPdROZZEIli
         8eMExS2z/Tqfht7p6CyqjN7Fb+sM1t9v4GUnG5bzn75Yq1EmmLgKRONdhMZe8umhhlmZ
         Xs5A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=tresNWHTFgg7jlIDxlZ8Aii7GAobIV3rLiInAOane9s=;
        b=EVtAgKFcnfcb/+t6HFdcenYkT+X8zOCj4eh2RB/e0s9OIx7UwwMePtxmxgv8MKj0do
         PcrthBYQEkn9IsaQRhnsejC28wBlG7BlQ6ybhWEJ63sC1JyW1JYu5lVX6IcdhNobL4Ro
         CLmxPmto9SqgLASgLs4Gwmv6AlEE20KL9kiJRudD/ubSCruUAEtKuaIm9gGpNHz9lSmX
         L/RPPFVok7YtYHoItZfJgWd+lJwHc+yRwHbjcK9TUSq1ODGTVrRf8TMdIaVH1GVGXk0B
         V1uLWvdp+ZQPJ1b8vCjAj308pTsbJli9caNf/3rsawP41C4SbW+casObqrBeZHd2uAb1
         J41A==
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
        bh=tresNWHTFgg7jlIDxlZ8Aii7GAobIV3rLiInAOane9s=;
        b=UNZFUW1dlARenm52WeNimW1RAkB+TAdEGBfO6nscz1mTuPCE43xNOksRrX3/a1Tvrr
         lvfKtGMRGPhlCBoFBPzmk+b0Aeo9XjbkIed2s6DEB01DpEMGdYBhxBNXiaF8PYqWautu
         +YbtN0BopLnuXSuVcXNfafUx9PfExuVqtWfM6R212ZL+Q7WBBaAfLR827y56yWtCEFRw
         3grUnd9IyAPGicPke3JX1iliPeW3ltK8j80DAIESEyycsq2LERjpxE86OHzOBgW6V5dj
         7QeummjvAd33MISCtgpbDqlIUUNTYkjLMHggQo0MjT2ykP+isQf6FXRAyIUswHI/3ozm
         Y3TA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tresNWHTFgg7jlIDxlZ8Aii7GAobIV3rLiInAOane9s=;
        b=PB+jXBJLgaJFwDHFO/SCFHsc+zqJa8bTYtGAVZuBiKAlLAAHI7zmDisuW2D7/A9SlS
         9LoXe5wcuXNttEwxWmPTON98I53KXIttY4dUX4Eun/1/H5EKb8YcT25Y4sgXPquBcylT
         WV5KttS0Bm8ead4RCPVZuc4xIwsz5Duv7wBCr2lr4u2USMCZVRw0Px9dgO2Ks0n0+W2J
         t3QXX+jc/Vy+EP6lyNBC/A0B6OJOe7Sjgd5uoQO68oGIIcKZuppUWCUVF3O4si21J5Em
         cRubljuEUpBTuDb3HIJHy3pQfZwq1dSWR/YE5ydUtD3oq+4gsqtXFJw80pMomsMGE2QP
         cXKQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuYzCdAbgF2/oWraeIhsnq6TNN4214vmUSL553HtjItcTZKd/+AE
	e6nlxGxhiwlV5rB9JPVl/UU=
X-Google-Smtp-Source: APiQypJKmUh3l4oYlJHX1sD86XzHS6D8Tnzed9YgQVpZF4lEZmSdMeyYxAIwWMscpIdRcNialE2Elw==
X-Received: by 2002:a1c:5fc4:: with SMTP id t187mr9184377wmb.181.1588837487850;
        Thu, 07 May 2020 00:44:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:668b:: with SMTP id l11ls4409711wru.0.gmail; Thu, 07 May
 2020 00:44:47 -0700 (PDT)
X-Received: by 2002:a5d:550c:: with SMTP id b12mr13431477wrv.152.1588837487441;
        Thu, 07 May 2020 00:44:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588837487; cv=none;
        d=google.com; s=arc-20160816;
        b=KmXna7QiNlTkQY8zcyJINM+F8sx2xpjuIbZ5EFQ8qoNQVArezYL534vYoDKIWuAnwr
         YEjBZDs+WnX6aBbLUydfvRsuqYxRmF+iLlPGkIRzxYQLNKN8rP34vpL2GTLQDckqco8e
         68tM989WlcamTjC4GcRwBoIChhAiucBwWJuRM5MiHOVUypR2pO1A/vpShy0oNunM8TtI
         eP8MYvw3Wx8HS4yyWdhgDgfE6mFADnOby7GMPioh6xHEiPPgm37kehw8HbO5fR5m59kq
         Txlxb0GgVNRzvuYH1L3EsVvb+nV5kHul9Yikr0IZNsxwM/g0O5lOmFPQiZGKRwZ5gADE
         htOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from;
        bh=49EF++yWUPkPW/+UGiAZPV8z/rAXeTteTGvjGIMfOOY=;
        b=cX+dYuXLSXuWhVdWgA68VIzsgcCV7gHtbzpVsJHN1pEpcZuGhhKJCxSDFX7NR/i6+n
         fPcSDjbhtB657c87NHbqRzabB/HmHoeXjckoDckINNBKpWcUmQvT9kPo5ziirHkVHNiw
         MnNvfFPWpGODFNT/ASFX9WBMM1nQHg9+8N2GZ532E6AcjhYH3LieZO0tD10F6+VNRuXN
         h5475Gf27xMokFgNiRIb/+HrLwwkbeHhFKsoQKmgjU4NvaL7/hQdAQGSGv44MClVpi7X
         BcgXl6BXIxTzEAjb8Szeb/9gZhr9k+bQOyiSMw/fyt5nbe6l39p+K+Eh4AzT2YZBD64d
         b55Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 185.58.86.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=aculab.com
Received: from eu-smtp-delivery-151.mimecast.com (eu-smtp-delivery-151.mimecast.com. [185.58.86.151])
        by gmr-mx.google.com with ESMTPS id w8si248368wrn.2.2020.05.07.00.44.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 May 2020 00:44:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of david.laight@aculab.com designates 185.58.86.151 as permitted sender) client-ip=185.58.86.151;
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-77-_HkJ_npmPTubAUZ7vouWDg-1; Thu, 07 May 2020 08:44:45 +0100
X-MC-Unique: _HkJ_npmPTubAUZ7vouWDg-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) with Microsoft SMTP
 Server (TLS) id 15.0.1347.2; Thu, 7 May 2020 08:44:44 +0100
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000;
 Thu, 7 May 2020 08:44:44 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Brian Gerst' <brgerst@gmail.com>, Nick Desaulniers
	<ndesaulniers@google.com>
CC: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>, Sedat Dilek <sedat.dilek@gmail.com>, stable
	<stable@vger.kernel.org>, Jesse Brandeburg <jesse.brandeburg@intel.com>,
	"kernelci . org bot" <bot@kernelci.org>, Andy Shevchenko
	<andriy.shevchenko@intel.com>, Ilie Halip <ilie.halip@gmail.com>, "the
 arch/x86 maintainers" <x86@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>,
	Marco Elver <elver@google.com>, "Paul E. McKenney" <paulmck@kernel.org>,
	"Peter Zijlstra (Intel)" <peterz@infradead.org>, Daniel Axtens
	<dja@axtens.net>, Masahiro Yamada <yamada.masahiro@socionext.com>, "Luc Van
 Oostenryck" <luc.vanoostenryck@gmail.com>, Linux Kernel Mailing List
	<linux-kernel@vger.kernel.org>, "clang-built-linux@googlegroups.com"
	<clang-built-linux@googlegroups.com>
Subject: RE: [PATCH] x86: bitops: fix build regression
Thread-Topic: [PATCH] x86: bitops: fix build regression
Thread-Index: AQHWJDdSnFcKS0TA9USbY8l3s67J1qicPRAA
Date: Thu, 7 May 2020 07:44:44 +0000
Message-ID: <60b16c05ca9e4954a7e4fcdd3075e23d@AcuMS.aculab.com>
References: <20200505174423.199985-1-ndesaulniers@google.com>
 <CAMzpN2idWF2_4wtPebM2B2HVyksknr9hAqK8HJi_vjQ06bgu2g@mail.gmail.com>
In-Reply-To: <CAMzpN2idWF2_4wtPebM2B2HVyksknr9hAqK8HJi_vjQ06bgu2g@mail.gmail.com>
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

From: Brian Gerst
> Sent: 07 May 2020 07:18
...
> > --- a/arch/x86/include/asm/bitops.h
> > +++ b/arch/x86/include/asm/bitops.h
> > @@ -54,7 +54,7 @@ arch_set_bit(long nr, volatile unsigned long *addr)
> >         if (__builtin_constant_p(nr)) {
> >                 asm volatile(LOCK_PREFIX "orb %1,%0"
> >                         : CONST_MASK_ADDR(nr, addr)
> > -                       : "iq" (CONST_MASK(nr) & 0xff)
> > +                       : "iq" ((u8)(CONST_MASK(nr) & 0xff))
> 
> I think a better fix would be to make CONST_MASK() return a u8 value
> rather than have to cast on every use.

Or assign to a local variable - then it doesn't matter how
the value is actually calculated. So:
			u8 mask = CONST_MASK(nr);
			asm volatile(LOCK_PREFIX "orb %1,%0"
				: CONST_MASK_ADDR(nr, addr)
				: "iq" mask

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/60b16c05ca9e4954a7e4fcdd3075e23d%40AcuMS.aculab.com.
