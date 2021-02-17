Return-Path: <clang-built-linux+bncBC27HSOJ44LBBCHRWOAQMGQE5X62YYA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AE8E31D7D8
	for <lists+clang-built-linux@lfdr.de>; Wed, 17 Feb 2021 12:05:45 +0100 (CET)
Received: by mail-wr1-x440.google.com with SMTP id p11sf16921027wrm.13
        for <lists+clang-built-linux@lfdr.de>; Wed, 17 Feb 2021 03:05:45 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1613559945; cv=pass;
        d=google.com; s=arc-20160816;
        b=hF93jVy5i3XSu/CXA+s3kJmslXOarV54eMUE5KHDIb3ZL0vAAW36uoms5IUld0lIkT
         mzAg4z00sN1m0jwmMYBP3aH4fhgKcHg3QTdJkNKVVR/sYAPNKu0Kc1kAW8+thygSz30s
         tDBM2+06Us7ZM7pDcr4FzRnewhDNtQBANtPOvpAnuoz+ubYYINIEF5wFSpI/3jHTBeDv
         HBllHsBDuXxXZXXuKu3GBjXv4KGjeO7TJHdqp62aRjdhPWpQoAcQGeBhFa4vgEg+WvYJ
         th0qqa0D7hoca39KHsmBkSEH2bgpXFMiPvdKWHI4lWESwwSjt3KGDHeEv++aTkq3wsOM
         v9EQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:mime-version
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=QhBvuD2StIrMT0prBbi07JF6xic6JZkYX76l7AjIWOU=;
        b=t9mL+av0YUZP91Jk4ALRvK28XqE3dOGngZM9VV8s1RPtfdhiwG+zdrMJism3v603xb
         2ylXN4lbMADoRZD9XyTBFHfsR49j7DKVd5Rb+AkvkKH6+FFORKiCIqlzrzSDh0ZVBBzp
         BBMm/TVanYYjtxvcWUh68e6v+1GfV11xccx3r4juCODi5Vv5ShFI+5O8Ty2zK+q+HsSR
         hmOAaXY4KAO9MLtn2lKdNuN2104UfZI3jdlBRjZguvEQAGZ0FYbMV12Gv1hGwkFhXn46
         5+N+IXjh2XgCgJvr+y2HlVgdFG/5cccwS1rXuJNiTljPsMO5J9qPvuh/ZJdMKRlRjSV9
         vfcQ==
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
        bh=QhBvuD2StIrMT0prBbi07JF6xic6JZkYX76l7AjIWOU=;
        b=sG1giweeraF/Qdb5LyzrrSvkgwRQF+Bp9SF3yqwumHdrg17KZL5LLVI987lxNb9ylB
         kha7S5bu8lUg+7y/g6FmsH/VtXW7Rbs+tsO2R7dxCRh/57+senDxiCBEt2yPc/h+T6uW
         UrggClfHMHAclNN2NvHmqBI1lNL6xFNmiKTZ0s4O71ouqNT6K/A3ro2B7qMKqlCo2sZ3
         vYWjPvSSs3Ks9a01paWGXqAYjFnWQ/8sU54cqadX+VbsQ4lbGPfJKnNOtwgaEH0wQGh6
         pDGyYb4vq1MdEbmMeyzowZ1VIZs3LYj+6jpYtFIRV3Nogzf06LWP9OjZZW95eyc5HEGx
         FVIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :mime-version:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QhBvuD2StIrMT0prBbi07JF6xic6JZkYX76l7AjIWOU=;
        b=ezAmNnDYYeJZIbWf9vUSsiTgdWqRpqm/J4v9n7RjNuz+I8UGTxdIod7Uos1dHgeFeK
         rT3KkUPkmDZoPCqSepeowcCzNheyWoLAoJGhCWpcrdlCom7JUn4PsNOJ3kv2GwbseNu8
         8BqMTxasTSZ2FzFzizfTiYLxa1G4CvPxbmyx+/vzoQS6VP1aqbN5tXxVDxY00JJ/RqNK
         U3+48SjVZuFD+h9FK4JgybGxspxtR9s6gYaCVYKdPvI7or7m+0B8omLX3yXhxS2Sybxk
         645qjDEOkVPp6H9OkDpno2uQDxls2/10/klGrIj2StrXC2oAcdg+NakHqZlDjY0KU8pg
         zKMQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533vDCrhi5FJqfL4Q/lmAvJxjXmKGnvctoTfd4uCuQsEkd1JH0uP
	J3p8osF7RgQxf0D2TU0n0/s=
X-Google-Smtp-Source: ABdhPJxFnI5Kge7quBhk/lW5SRTtWqgrXT/Snx73ecHn1owsejI+swfFGacgz7CsnKx1y42cWz0gVQ==
X-Received: by 2002:a5d:6089:: with SMTP id w9mr28700844wrt.412.1613559945014;
        Wed, 17 Feb 2021 03:05:45 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:e6c7:: with SMTP id y7ls2329047wrm.1.gmail; Wed, 17 Feb
 2021 03:05:44 -0800 (PST)
X-Received: by 2002:a05:6000:114b:: with SMTP id d11mr12794955wrx.318.1613559944235;
        Wed, 17 Feb 2021 03:05:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1613559944; cv=none;
        d=google.com; s=arc-20160816;
        b=I+xjbBBpBUw0jco5sLbCVoSy6cWf54clBCT59JOcTV4T86Dz1rG21GaOI0Md16nyYg
         0UM3Nmo1vnbn3YWCHsThn+jvUfb5c+hwExpBdT4sp6QLAIGPQbfAOuiuMCe4rccBPHGM
         zxV5WemUI+V7lu345TWSau6vacf9gHm62nrWEluVvyZd6p1gZ4GPfhy94UzRXYY2FK/3
         NzGp6/6uLvv91al+6jKPnZHr852Kvq9K11wVpbck5GNFJBUaw04aTVt2LyRFdh+TWfXv
         RofHIS58FoXsf1XkDe/G9rXzJoFfflub68nUYIZCad7sMcsQ+8wZ50TsE7wTNWeVrh5e
         /1Nw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:mime-version
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from;
        bh=XrU7ZNtLgDXradRzCcr6W2+jQVog2NbgEhJRnu+jG6U=;
        b=Aip0kCY8ZsWQCx733WDIyEbVyIag7/jDr6NKgiZIBb6F8EV+85tdE1wW3tb3pOFVQu
         LVt5bJIfFXNHXbCjkfwnelbbBKpW9uyQ7esV7YN4pO65tTKUogE7WSlOSbLoA/FJjINT
         DbC/f/SCVvIKfaTVFPsG9R2ADt/Ryye6LzSQQyTxsX+DevkYm1qYg+0bKUJ48oWkqpIe
         i/i7fD2ANGuVs6dClhELnr4MrGgfKeKtIvitko2DewTrCGwPCYoV1USulH7vTO65fpie
         jCicYEzcUgSLlelpB7H9tm+s6KR4cjonnisG0eP/4yKPvwgFguLBKgfnn4/YG3RdxjE6
         kJWg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 185.58.86.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=aculab.com
Received: from eu-smtp-delivery-151.mimecast.com (eu-smtp-delivery-151.mimecast.com. [185.58.86.151])
        by gmr-mx.google.com with ESMTPS id b5si56983wrd.4.2021.02.17.03.05.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Feb 2021 03:05:44 -0800 (PST)
Received-SPF: pass (google.com: domain of david.laight@aculab.com designates 185.58.86.151 as permitted sender) client-ip=185.58.86.151;
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-259-RMvaaEXENMqE2t3sbz9bsg-1; Wed, 17 Feb 2021 11:05:41 +0000
X-MC-Unique: RMvaaEXENMqE2t3sbz9bsg-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) with Microsoft SMTP
 Server (TLS) id 15.0.1347.2; Wed, 17 Feb 2021 11:05:39 +0000
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000;
 Wed, 17 Feb 2021 11:05:38 +0000
From: David Laight <David.Laight@ACULAB.COM>
To: 'Will Deacon' <will@kernel.org>, Jian Cai <jiancai@google.com>
CC: "ndesaulniers@google.com" <ndesaulniers@google.com>,
	"manojgupta@google.com" <manojgupta@google.com>, "llozano@google.com"
	<llozano@google.com>, "clang-built-linux@googlegroups.com"
	<clang-built-linux@googlegroups.com>, Nathan Chancellor <nathan@kernel.org>,
	Russell King <linux@armlinux.org.uk>, Catalin Marinas
	<catalin.marinas@arm.com>, James Morris <jmorris@namei.org>, "Serge E.
 Hallyn" <serge@hallyn.com>, Arnd Bergmann <arnd@arndb.de>, Masahiro Yamada
	<masahiroy@kernel.org>, Kees Cook <keescook@chromium.org>, "Krzysztof
 Kozlowski" <krzk@kernel.org>, Ard Biesheuvel <ardb@kernel.org>,
	=?iso-8859-1?Q?Andreas_F=E4rber?= <afaerber@suse.de>,
	"linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "linux-security-module@vger.kernel.org"
	<linux-security-module@vger.kernel.org>
Subject: RE: [PATCH v2] ARM: Implement Clang's SLS mitigation
Thread-Topic: [PATCH v2] ARM: Implement Clang's SLS mitigation
Thread-Index: AQHXBRIkVPd+AU3vQkaBjLLnHtqPv6pcLG4Q
Date: Wed, 17 Feb 2021 11:05:38 +0000
Message-ID: <a2b21c7326e94c63a64a2e29ae64ba3b@AcuMS.aculab.com>
References: <3f61af0eee9b495e8e8c032902d033c5@AcuMS.aculab.com>
 <20210212195255.1321544-1-jiancai@google.com>
 <20210217094859.GA3706@willie-the-truck>
In-Reply-To: <20210217094859.GA3706@willie-the-truck>
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

From: Will Deacon
> Sent: 17 February 2021 09:49
> 
> On Fri, Feb 12, 2021 at 11:52:53AM -0800, Jian Cai wrote:
> > This patch adds CONFIG_HARDEN_SLS_ALL that can be used to turn on
> > -mharden-sls=all, which mitigates the straight-line speculation
> > vulnerability, speculative execution of the instruction following some
> > unconditional jumps. Notice -mharden-sls= has other options as below,
> > and this config turns on the strongest option.
> >
> > all: enable all mitigations against Straight Line Speculation that are implemented.
> > none: disable all mitigations against Straight Line Speculation.
> > retbr: enable the mitigation against Straight Line Speculation for RET and BR instructions.
> > blr: enable the mitigation against Straight Line Speculation for BLR instructions.
> 
> What exactly does this mitigation do? This should be documented somewhere,
> maybe in the Kconfig text?

I looked it up, it adds some fairly heavy serialising instructions
after the unconditional jump.
For BLR (call indirect) it has to use a BL (call) to an indirect jump.

I don't know if the execution of the serialising instructions
gets aborted.
If not you could end up with unexpected delays - like those on
some x86 cpu when they speculatively executed trig functions.

It all seems pretty broken though.
I'd expect the branch prediction unit to speculate at the jump
target for 'predicted taken' conditional jumps.
So you'd really expect unconditional jumps to behave the same way.
BLR ought to be using the branch target buffer (BTB).

(It isn't actually 100% clear that some processors don't use the BTB
for non-indirect jumps though....)

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/a2b21c7326e94c63a64a2e29ae64ba3b%40AcuMS.aculab.com.
