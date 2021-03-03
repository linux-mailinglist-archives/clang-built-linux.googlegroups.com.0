Return-Path: <clang-built-linux+bncBC27HSOJ44LBB3GW72AQMGQEDMJPUMY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23b.google.com (mail-lj1-x23b.google.com [IPv6:2a00:1450:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A2A132B8F1
	for <lists+clang-built-linux@lfdr.de>; Wed,  3 Mar 2021 16:29:49 +0100 (CET)
Received: by mail-lj1-x23b.google.com with SMTP id x11sf7317268ljm.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Mar 2021 07:29:49 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614785389; cv=pass;
        d=google.com; s=arc-20160816;
        b=0Nf7Z7CDYZW2Mr+hPnrId2oDR1sN7aKQV0bdJakeoMvfzpVk1it7wHpz/HwqHLmgfL
         BwDbkoRJIZaltwe90gD9QaRQhQJL++GXm5NgwA5mclP+QcbhQgTDe0v2dJfhqW6BM4X6
         nXg5SIyodveQvsr/MidmmxkX+rErS1C7iZcgalVFBcpsbMhJnOKYHw15np98t8qHzMmm
         QE4Bwgh1qM8rH2cI/fLQAYcDYLvSvVB0M5z5RbnY/y8tBVo51j/NFvu6qiQWi8/l56nC
         H1y9uAKDsw3M6e0QVv71vkMTExlqC4V93SykOh7eDxKv/XPgOqSUYAjgW0Y9+z8iQZ1j
         ZmkA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:mime-version
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=j3kBv4ZMqm+NSYs7cpNOvcqBIsewtFNgGhe25VWUQLo=;
        b=AmiF8yLK6pSgFq4F+jGM/tz/ww7FhOIDQb2ETCEgAMWSyR1KlqTBce08cBj3UUKc4c
         es4ddV/m51oBWS/4wrw79lGo725ps09blxT4a008UOw2v3misrjNDfrOV+w4L4YhroQ+
         og8KBmuSW6R7oYjMOIRCBTK2KQAnZEa1QiOU8zXEOyyUE9VOY8YdWXlFE00ntPmJ5upD
         wR+Bi+wI3GrV1AoK7X2IpMArH7Ctfe1tm+hjrACZXU5PAIO7cADGnc/szwFcF43y1t+Y
         C9jZCHjyipRaMs2Syj3aK9lmiMnl3ao4cmI5z1Eqho16aWKA2VRKb0DabBSgnbAfe30G
         66Xw==
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
        bh=j3kBv4ZMqm+NSYs7cpNOvcqBIsewtFNgGhe25VWUQLo=;
        b=XXihESA94bHY0uo6JTfglm6JQJvVjDs4LN2YlY3tmefCzpZ+cEMos9kLAr3g5ahQvb
         mfutz3o1FnsDO+s/riLE4kChR9fNVe6eevRGJCmWOe4lPVk5KfttSAc8lB2iNDQdSozW
         e3IwVyePHU5CNWvD8VYUuW2bK+ZftuRcc/XsORVRu5k8KXGFEfvoCiQj3ZobAXJnYKq6
         fgjUWSh4aI8j0xYvx4/ss6fMmTi6Js25f6RWDwOEjMz/Z8nPBnA68CLAK8DT1qylYrBB
         Gu0gnHgZVRJEsUcQ4Sbxl0ULcDU2qx34GNkZ8S+ffEz3ye+IYQJfOlGC9p686v/vLJTk
         nvxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :mime-version:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=j3kBv4ZMqm+NSYs7cpNOvcqBIsewtFNgGhe25VWUQLo=;
        b=NTpx5vZuCL7sQ6YYPXRmhFeTxVsJFMKe7wdyGhfJ9/YyFdv/ee9DLm/wZA/kbLyB19
         4HtoukwHlI7RA79ThlZ0N1lQHyxmNr+/bxKCMYe4waKj5PuDyEj+pEJKnUPKdxpi5r1N
         SJG+cGTZB1ouGFq0ruCIIH0b1KLM3n0DteO3mAPJfJtRes4fZ+XuFtI+5HevM2OdtTf4
         PWV6WxnO7JxHES9LqwbhFhtoVcYOTvdeSbjJnq2j21GPIIcRpyNqqiDJ0KBhIjC+1pH8
         8Iv6F2ZEgcGxa1z1XjpZdlaYeilbTqyJ5p1F92zpWoTh3lDaPqudbIJAUWTCRERDxeYF
         wqWA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53072W5I3K9xp8rVFOONLZaobUVZEFcFqBSXwoTrZ8Csvnu3v3XF
	RD48IBrSWLLg3eDGJoowvyI=
X-Google-Smtp-Source: ABdhPJxPyw3gFTaytPbWpuwupdJRhDl0MfaZ9iBgzZOUqm5TpSXo1YDSrtICO/oVnuFDKKLTcPl6FQ==
X-Received: by 2002:a05:6512:3490:: with SMTP id v16mr2985271lfr.644.1614785389069;
        Wed, 03 Mar 2021 07:29:49 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:bc11:: with SMTP id b17ls594589ljf.7.gmail; Wed, 03 Mar
 2021 07:29:48 -0800 (PST)
X-Received: by 2002:a05:651c:d0:: with SMTP id 16mr14681631ljr.296.1614785388096;
        Wed, 03 Mar 2021 07:29:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614785388; cv=none;
        d=google.com; s=arc-20160816;
        b=hN1Jpjg+0vvxcdpsDo4vb/qFIbak+a28/LuVNYQKNF58QVkXpSY4dMqXr4j+AKQOrU
         lfr4+hLMCdCOftwvwMSFv4LbmXeHNS6dy9Us/YEnOAP/QD9KGNIC0ObnfVXbMfxDlWLc
         0V8SjJBwNxsj6LBTwGA/RSx3dSI2geratfxKDGodQGYf33Mt4KQSIPXKMMHBSCTkHIqE
         g8E8fJN9rl1w3+AeWEOMp2QiDWFDvCOTSMIeaVJdj5gYjsZ9CxLQ3dmvAP3YCqZPWP2+
         fmBzSqPs9aMq0xrE/Lgxr6MgEB8NDbaImtNaT+YGjHj5ykVCzPt7rfD6vGagOYG3Q7Ug
         HSzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:mime-version
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from;
        bh=SM9GDPwBubYMA6WN/9K/dYtOWoqZVk8c6hOuAEksIFA=;
        b=RMNPcqnVQZ5sc0U5jdRhndB04XE6hybU+CjtdLoTnNWcFvA27bMZ2HMyA16Xdvfws1
         qwWcy93hMt8LJQOlWVbgfYzVPo6o55NpdQn41H2uw3KO23G1lJ03tpm1Ps1Ar7SmKHgr
         hjQmZ3iWOoWVbzKZsIVkAiEBhg8bjPpzqloaJUgRCKs8L03YPxLlJnEdwQVDh9AP1RhC
         CoKWHFHux/T6rZUpjtuFUbftSJvsTxwSdUHIrN3UzAFUkCcK2uW9b6faYjDcyTsNDTsR
         p85WBnbHf6pCzs0HWeGI98Tv67ON4mixMbgf7ShR5TUU4jng8CaDLrntN+PI0jKfCbFf
         OVew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 185.58.86.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=aculab.com
Received: from eu-smtp-delivery-151.mimecast.com (eu-smtp-delivery-151.mimecast.com. [185.58.86.151])
        by gmr-mx.google.com with ESMTPS id t21si728666lfe.3.2021.03.03.07.29.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 03 Mar 2021 07:29:48 -0800 (PST)
Received-SPF: pass (google.com: domain of david.laight@aculab.com designates 185.58.86.151 as permitted sender) client-ip=185.58.86.151;
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-129-p7FEIIrCNG6cb_3HeC64uw-1; Wed, 03 Mar 2021 15:29:45 +0000
X-MC-Unique: p7FEIIrCNG6cb_3HeC64uw-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) with Microsoft SMTP
 Server (TLS) id 15.0.1347.2; Wed, 3 Mar 2021 15:29:37 +0000
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000;
 Wed, 3 Mar 2021 15:29:37 +0000
From: David Laight <David.Laight@ACULAB.COM>
To: 'Linus Walleij' <linus.walleij@linaro.org>, Will Deacon <will@kernel.org>
CC: Jian Cai <jiancai@google.com>, Nick Desaulniers <ndesaulniers@google.com>,
	Manoj Gupta <manojgupta@google.com>, Luis Lozano <llozano@google.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>, Nathan Chancellor
	<nathan@kernel.org>, Russell King <linux@armlinux.org.uk>, Catalin Marinas
	<catalin.marinas@arm.com>, James Morris <jmorris@namei.org>, "Serge E.
 Hallyn" <serge@hallyn.com>, Arnd Bergmann <arnd@arndb.de>, Masahiro Yamada
	<masahiroy@kernel.org>, Kees Cook <keescook@chromium.org>, Ard Biesheuvel
	<ardb@kernel.org>, =?utf-8?B?QW5kcmVhcyBGw6RyYmVy?= <afaerber@suse.de>, "Ingo
 Molnar" <mingo@kernel.org>, Marc Zyngier <maz@kernel.org>, Andrew Morton
	<akpm@linux-foundation.org>, Mike Rapoport <rppt@kernel.org>, Mark Rutland
	<mark.rutland@arm.com>, David Brazdil <dbrazdil@google.com>, James Morse
	<james.morse@arm.com>, Linux ARM <linux-arm-kernel@lists.infradead.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	"linux-security-module@vger.kernel.org"
	<linux-security-module@vger.kernel.org>
Subject: RE: [PATCH v4] ARM: Implement SLS mitigation
Thread-Topic: [PATCH v4] ARM: Implement SLS mitigation
Thread-Index: AQHXEECBQRoTQnOC90iuKvtWWC/yz6pyYx/A
Date: Wed, 3 Mar 2021 15:29:37 +0000
Message-ID: <49e8725f29ab4ecda6d669e9216bca29@AcuMS.aculab.com>
References: <20210219201852.3213914-1-jiancai@google.com>
 <20210219230841.875875-1-jiancai@google.com>
 <20210222115816.GA8605@willie-the-truck>
 <CA+SOCLJVGJSn67VU24wPDdsOVeHhGe+KO5ekOCusano=bhn1Mg@mail.gmail.com>
 <20210223100453.GB10254@willie-the-truck>
 <CACRpkdYaSEb8bAztR-s_K17K+Zqusiofwa_dSjz-cwM2+N=57A@mail.gmail.com>
In-Reply-To: <CACRpkdYaSEb8bAztR-s_K17K+Zqusiofwa_dSjz-cwM2+N=57A@mail.gmail.com>
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

From: Linus Walleij
> Sent: 03 March 2021 15:19
> 
> On Tue, Feb 23, 2021 at 11:05 AM Will Deacon <will@kernel.org> wrote:
> > On Mon, Feb 22, 2021 at 01:50:06PM -0800, Jian Cai wrote:
> > > I am not sure if there are any plans to protect assembly code and I
> > > will leave it to the Arm folks since they know a whole lot better. But
> > > even without that part, we should still have better protection,
> > > especially when overhead does not look too bad: I did some preliminary
> > > experiments on ChromeOS, code size of vmlinux increased 3%, and there
> > > were no noticeable changes to run-time performance of the benchmarks I
> > > used.
> >
> > If the mitigation is required, I'm not sure I see a lot of point in only
> > doing a half-baked job of it. It feels a bit like a box-ticking exercise,
> > in which case any overhead is too much.
> 
> I wrote some suggestions on follow-ups in my reply, and I can
> help out doing some of the patches, I think.
> 
> Since ARM32 RET is mov pc, <>
> git grep 'mov.*pc,' | wc -l gives 93 sites in arch/arm.
> I suppose these need to come out:
> 
> mov pc, lr
> dsb(nsh);
> isb();

Won't that go horribly wrong for conditional returns?

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/49e8725f29ab4ecda6d669e9216bca29%40AcuMS.aculab.com.
