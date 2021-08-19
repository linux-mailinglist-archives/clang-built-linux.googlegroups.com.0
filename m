Return-Path: <clang-built-linux+bncBC27HSOJ44LBBMUX7OEAMGQEHWD2MZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13b.google.com (mail-lf1-x13b.google.com [IPv6:2a00:1450:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id 97AC73F2233
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Aug 2021 23:22:59 +0200 (CEST)
Received: by mail-lf1-x13b.google.com with SMTP id c22-20020a0565121056b02903c8d745ff5csf2447276lfb.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Aug 2021 14:22:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629408179; cv=pass;
        d=google.com; s=arc-20160816;
        b=PpnuQXgQK6jvYyPCUTMCo+kRSaZ//4cFh2WVqTPq5yz9Z2z69ZsMTXl+sloFiEO4Ty
         coNbOueCmSY/8VpHWDEbACQY2E31ZibLDDbPTB45tKtucDOPlYeItfJ8Qdi63BevULAb
         C6AEGTvpzv7Nu1nBlTrhBAJY0bgY1GygPrqAVG8ox2+7iXseuX3d7jnV4cr131LBccCv
         zau55rgDckhvvI5ayX7UGehighs0l4tZT81RVhzDomOwUEpfIu2OqBkbfPvSZn7MGsH9
         wLb+rwlVLBpzUd8D4LG8L+8IF1kEDqV6zxqLfsRfFrxaH/ByZn6xUdK0KYnTd2h/cnAF
         btyQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:mime-version
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=D6LCSt8vN+t1KPmWO8ZIgKC2uiwGQgIX7xqfFxGWE+k=;
        b=QL+T9uCuA2LU+yWE7iqu6arH2oyWuU5Yw30rcRrOrZvrbx3stBF7p9U0hUNCH1AeLg
         F/11Z8eYQZDmffkIUlCHswSeAK7VKZ9UaEyQaUnUZf7YcBkp0S+8HmvGYsCaddae7O0x
         bzNTTqMypgyleXi7f1yEGxDu2I4EtwxcOmwPXrM0G73Q0qCNBojKjd3GzZ6KmXa4LnZe
         jMsgZkXwNKym7fd4jMWZmO7dxKmH1BeVdjenCJS/MnvQ5hRGkTMAPOsXzS7FrbluonUQ
         EuymwlWcFx/zRTJ1nlxuA0YeE0F3YeOOWVvQYTuNzWMA6Z48i3TCbzPJ12iTAqxdNH9e
         fSUA==
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
        bh=D6LCSt8vN+t1KPmWO8ZIgKC2uiwGQgIX7xqfFxGWE+k=;
        b=CzdYoroi3GfS+eVMZSXr82fyj1eXIcFxyi9s2DYRdjjN5tF7y+ZbXe2+5YGPi/CQzg
         5OQZmcyet7KHS/7NtfH9kYvlEAc0kehdXGVlMhvcxZmg86VCrxcCv3Q4rYoH4h+gU54g
         kJvFc5zW8iVbKVnDFWkbh1NzaHf4U/cEr0KIgJxfxscBd2Jgw9z8rDq+QSHCgw8ge3/W
         CGXWgIT0nIuJEspVfesee01SmOlDZ/SrugvHlHUtmxBmisarI62Z0ZQX/vntZ3rQHZXD
         eRKjhJNO5nkxA548+cNoSd0jHHx1FA6OSnwmqwFD5zSdOaOUWjMWPhBm5zbNZ9uEdGY/
         PpSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :mime-version:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=D6LCSt8vN+t1KPmWO8ZIgKC2uiwGQgIX7xqfFxGWE+k=;
        b=cObsSS+YRF5glF+yh+xIKBVMcq5ts6/2GNC9hApU46ytoSwuFDX7FUSpLPnXY7B1Ut
         fLVy7UTrOtm73LHXTyqoJ2CMtIpunfP5ESeC+cTRLj4XVulxExjvmmOf8E5HxoZi4402
         zphXUahzFwMlDAxrNXISMMRdh0XVxAjbt4UkpDUk8w85qu8z3foI2L9zW2WSwIHpfbwG
         UR2TajjPzGCT2EKbKBk9Ll32k0wFGjRyCWgy+XmOcZValKaVSJnZ2Wd/r+ErF81eHGsM
         gYAEGBZjpSubJXJF1Kl7s8UVgBxTkT17MHaZjywAEgVAoGRld4G+NoMZ8ESf1PgS79wc
         oYRA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533v+D0zFS1anMZukWymSjGd0xrJVXSV1H/JM7ErgVLltL/8rGYs
	X5JmytKygWh5lIXgUjFOx8Y=
X-Google-Smtp-Source: ABdhPJxDMV0xJ+YbO5jBPLphpdY/l7Yiod9hdnDk50hoDpLA79BlQaBD8zzlltCPMkiAPjz0f5qHfg==
X-Received: by 2002:a2e:586:: with SMTP id 128mr13829272ljf.310.1629408179070;
        Thu, 19 Aug 2021 14:22:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:bf26:: with SMTP id c38ls1291889ljr.5.gmail; Thu, 19 Aug
 2021 14:22:58 -0700 (PDT)
X-Received: by 2002:a2e:7401:: with SMTP id p1mr8822290ljc.303.1629408178030;
        Thu, 19 Aug 2021 14:22:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629408178; cv=none;
        d=google.com; s=arc-20160816;
        b=JKKAHUeEtf44tfgm0s73k4aNxOoX+Ml4TV47+G3INYMik24jNtgimpR3JOa3yYx8PO
         vSxmrmMHkctir9YPh58HYe/ChZoZsblI8s2NhqECptorn6uhJhaD7hvdk/lOOtEeb2Ot
         xPqZ6Z6kMMlt0OHkeTIz/BSd85a0kGDkPPdMv11ZuB3cyfcdfDSfgKsLHLsZVcdOn2ts
         tjqsv+qj5ZtY2iL9CqzIbFDizpm0FETTwwcVo8zwzepTYeKHPE8U0k3j2c00j2Qrmalf
         8OIRKi9UfQeGoXXPUBxQaPP+zvxObmr6dunl5sc/0kTj15Vjg1G6sULbfCMumQq5Tqyx
         0TdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:mime-version
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from;
        bh=EAlp895Mns43P5oUowuKJZxk0pkqsLyNWxj1sgtBgSQ=;
        b=GrZxmCsi84J/9Wsoq2rtrA8wjfplEsuW9XSh++nc9PPQxDkmKZ7sObL98OuQIA1HLa
         03/qtv++gQs4dTIRDwgHGKt3MXsGSFmhWmxjpXQII6w9iBVa5eDhPUUhBykWIUndPGpt
         oJiF6dn8xMG3Qj4h3pjQ1fzHbGL+q+9EyFxQ5Wup8Bl8bPSkcAFmEA6PunGQevnmoItm
         Ca2SIM1FxPTDsROKWGtKOrCc3kdQfTEW4iQaFyHfSEcVTwxk2YmmExQjjqP9otu+bs+s
         Kk/8FkX2D9RWaa7cN7GOV3hqvl99ND1AdWbVwAdSdGBWD6pC1LREplSVkpnUtlJyMFJ+
         DL6g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 185.58.85.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=aculab.com
Received: from eu-smtp-delivery-151.mimecast.com (eu-smtp-delivery-151.mimecast.com. [185.58.85.151])
        by gmr-mx.google.com with ESMTPS id q8si300430ljm.2.2021.08.19.14.22.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Aug 2021 14:22:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of david.laight@aculab.com designates 185.58.85.151 as permitted sender) client-ip=185.58.85.151;
Received: from AcuMS.aculab.com (156.67.243.121 [156.67.243.121]) (Using
 TLS) by relay.mimecast.com with ESMTP id uk-mta-4-jK_kyUcYM325kxK8jwd6cg-1;
 Thu, 19 Aug 2021 22:22:56 +0100
X-MC-Unique: jK_kyUcYM325kxK8jwd6cg-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:994c:f5c2:35d6:9b65) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:994c:f5c2:35d6:9b65) with Microsoft SMTP
 Server (TLS) id 15.0.1497.23; Thu, 19 Aug 2021 22:22:55 +0100
Received: from AcuMS.Aculab.com ([fe80::994c:f5c2:35d6:9b65]) by
 AcuMS.aculab.com ([fe80::994c:f5c2:35d6:9b65%12]) with mapi id
 15.00.1497.023; Thu, 19 Aug 2021 22:22:55 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Andrew Morton' <akpm@linux-foundation.org>, Nathan Chancellor
	<nathan@kernel.org>
CC: Nick Desaulniers <ndesaulniers@google.com>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "clang-built-linux@googlegroups.com"
	<clang-built-linux@googlegroups.com>, "terrelln@fb.com" <terrelln@fb.com>
Subject: RE: [PATCH] lib/zstd: Fix bitwise vs logical operators
Thread-Topic: [PATCH] lib/zstd: Fix bitwise vs logical operators
Thread-Index: AQHXkwP9hKCn1U30S0yWYygV6tj6Nat7Wbtg
Date: Thu, 19 Aug 2021 21:22:54 +0000
Message-ID: <defb9e5133234835950c21511d776fb9@AcuMS.aculab.com>
References: <20210815004154.1781834-1-nathan@kernel.org>
 <20210816180532.6e85c93f84d62dc720d21178@linux-foundation.org>
In-Reply-To: <20210816180532.6e85c93f84d62dc720d21178@linux-foundation.org>
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

From: Andrew Morton
> Sent: 17 August 2021 02:06
> 
> On Sat, 14 Aug 2021 17:41:54 -0700 Nathan Chancellor <nathan@kernel.org> wrote:
> 
> > clang warns several times along the lines of:
> >
> > lib/zstd/compress.c:1043:7: warning: bitwise and of boolean expressions; did you mean logical and?
> [-Wbool-operation-and]
> >                 if ((offset_1 > 0) & (ZSTD_read32(ip + 1 - offset_1) == ZSTD_read32(ip + 1))) {
> >                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> >                                    &&
> >
> > Bitwise ANDs do not short circuit, meaning that the ZSTD_read32 calls
> > will be evaluated even if the first condition is not true. This is not
> > always a problem but it is not a standard way to do conditionals so
> > replace the bitwise ANDs with logical ones to fix the warning and make
> > the code clearer.
> >
> > ...
> >
> > --- a/lib/zstd/compress.c
> > +++ b/lib/zstd/compress.c
> > @@ -1040,7 +1040,7 @@ void ZSTD_compressBlock_fast_generic(ZSTD_CCtx *cctx, const void *src, size_t
> sr
> >  		const BYTE *match = base + matchIndex;
> >  		hashTable[h] = curr; /* update hash table */
> >
> > -		if ((offset_1 > 0) & (ZSTD_read32(ip + 1 - offset_1) == ZSTD_read32(ip + 1))) {
> > +		if ((offset_1 > 0) && (ZSTD_read32(ip + 1 - offset_1) == ZSTD_read32(ip + 1))) {
> 
> yeah, this is a late night party trick which is sometimes used to
> attempt to speed things up by avoiding a branch.  It is perhaps
> beneficial if the LHS is almost always true.  I guess.
> 
> I'd prefer that the code not do this - it's silly, looks wrong and I
> bet it's unmeasurable.
> 
> But I think this code is supposed to be kept in sync with an
> out-of-tree upstream version so this change might be problematic.

Except that in this case you want the short-circuit.
The RH condition is slow and always true when offset_1 is zero.
OTOH subtracting offset_1 makes the lines look odd (out of context).

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/defb9e5133234835950c21511d776fb9%40AcuMS.aculab.com.
