Return-Path: <clang-built-linux+bncBC27HSOJ44LBBQ5WTGAQMGQEX3ECT5Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x537.google.com (mail-ed1-x537.google.com [IPv6:2a00:1450:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 49F65319CBC
	for <lists+clang-built-linux@lfdr.de>; Fri, 12 Feb 2021 11:41:09 +0100 (CET)
Received: by mail-ed1-x537.google.com with SMTP id m16sf6365589edd.21
        for <lists+clang-built-linux@lfdr.de>; Fri, 12 Feb 2021 02:41:09 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1613126469; cv=pass;
        d=google.com; s=arc-20160816;
        b=RxnlyvODVOoMvAboOr/2YBsoA/9a2iDwHfTKr6xzywREdmzfs/AnJLgMd/yDyDK3+U
         oWWYxa029wwhmKcxAvclS/LEAfJBLpQDqi95Wz10Y7FDUXCMmLROFDo3oQ5/8mP8KOci
         gUd/i3bAvAc20uax/5h31FXH8MTvvKkBnlP2eQob0iFhcLSDos9BSpQCd0Ijj4ExwYTW
         xDdm5L1fz3ocidbp8Mvow/Jzt7Rhw+KA1I4/ENhoeJR5YrToxl+jHt09Ux348zYj4t/v
         Ayeu2P1lkvjUm4+FkGIhPTVPJBtkWNRHGjpsiP6LNPzJ4PLEQ+TYzjqbRi2ESzww495Z
         t6fw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:mime-version
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=EYL0zaMtcAM3NV4nCRRoSoiMCOdIgsQlmHYcSqCzD4E=;
        b=t1xfNtnpJ59d4JwaF3WizPFy4YABECukceWufpVnKJBwOv2hCfKBiRVs76cu8fV9q1
         gqAZV8zcYFiZ2UEn/iT8C5upIX1RO2joYSREWRRzSrvMZIUiX7aCSB4UwrVxZfARoOCm
         zSYndo4TkXCCLseZ0xV1K32oSLt6ifmZwLT3QFdmFYHJACLeSvjaM+1nH+/XvB1krUhr
         jHl9ajCN820HCtjzGucWBIEzpnK73zpZcq4h3s9eBk42DbQS3HWWAEHivkMSdPmfz5eu
         Dg81S7ZKlLwK2sjoxrTbqy7ez+72be6gRPvNdCoxPfs01sRitdc9OX5ka4BCJbC4eNyh
         cgjQ==
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
        bh=EYL0zaMtcAM3NV4nCRRoSoiMCOdIgsQlmHYcSqCzD4E=;
        b=WEEEEk478FaTTbqZzO9rv/Dd5Kr/+YTK5XpC8TTBSpf56rQrFV/syb+IQm12AjUEhm
         G9SvQaFYLRyNMnrqzlXml1Ha0F58eldI3xnL6daFZpZohIWGp5m8dF90IG2vctM4HHlX
         la3UpOv1Esc8CmT0KuhYNyBOCjJ7dqRqbTcXWE1o5rWAC9Ba7s6CXLG6wNes6ko4QdQO
         REIS8+bHcqsRpJN4A2W14F2H102NT23dOSxWzLDZaIWtcAhcwkwkhvFdxVzuzVDfZY+Q
         QTPGJ8TFpthaVyWYTiWEvbbGqGYZ8J6i4VPJ4AciDtJhrbs5k9BpVFhD4e0sPLOq3SHP
         8UaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :mime-version:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EYL0zaMtcAM3NV4nCRRoSoiMCOdIgsQlmHYcSqCzD4E=;
        b=lp3oN7nFaDZ73yGl2Mk2QODioqCdfp4Oe6uEye2PqeZWzdU93MyEdauM1czCfYZxxE
         5VM+4W8RZkKY1oPr+KxPATQZyfLSnJ3BjyIq9i6t47DORq7DpnKnYwLB5zKXVtlYxEaw
         MJxtQxH2QTyO0KAOkLGJ8wZPOr+bbh5cXyaXMTINhLLflc0fvx9epRTjib1AdbmXcqqg
         UVQ+MS1zRSgrr500IW73CVo/qbNxzkvu3eFvLfSjuFmqt5FY+nA9rpwZ32wJW9uwRyMu
         /BU0zkyGgUt4O0oqLeF9N4pnbNpiQcadpaH5sJ8wwdsRFSxxoK7PDb4A/5ReTMJ8l7Hb
         7eog==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531eWgfQbeq5ALeMxAXTQQHrgRRczNFAC3KhBCK6Lk9eJEQ3e3AS
	9QFUMHYYq6QSleSliIgoiHU=
X-Google-Smtp-Source: ABdhPJwpD8M1OCO9MD7ZjEZlc+qhuqYYjhCz+T8l1W0V0t58qIro4ZeB0Juo5xauis5udmC3eTUd3g==
X-Received: by 2002:a05:6402:14c9:: with SMTP id f9mr2729545edx.90.1613126468060;
        Fri, 12 Feb 2021 02:41:08 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:eb55:: with SMTP id mc21ls218874ejb.7.gmail; Fri, 12
 Feb 2021 02:41:07 -0800 (PST)
X-Received: by 2002:a17:906:cc5d:: with SMTP id mm29mr2381390ejb.183.1613126467294;
        Fri, 12 Feb 2021 02:41:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1613126467; cv=none;
        d=google.com; s=arc-20160816;
        b=XGJ/85QCRg8z4BqHBq4iQT7kI2e6Ny/7eWxmiUOiGYODwEXHmsDOhHaGFv9KzzVISE
         9iw5TMF9HL3sEZLARDAMtdg4ZHKz5JG3cCfo0owfToo7ttK+Em9yA+kXrP/fa7LDc3KL
         CkqU1enAd499/lPjf+wSTWgSPp0DYljvzh2ly4hAF218+xDZfhz3SItlMSbx/tdZebMT
         IzcnOh873fBGCsi7+gBQJuNCd5qKSSGC48wPl0wvp9e3tjtZL76GgLngsWtwyybtuSfq
         AOR762ypiUirzMCjWz7L3pJ6ILAKEyCHx9CL+SqPd9b50Wbo6+kaQJlapKNyvXucNo8V
         rQhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:mime-version
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from;
        bh=wtF6p70t+J2+qEGjptJ/jR5eY3qtYubXSoESIDXkc3I=;
        b=duc3Oxaav22YYdlY+ShIuwzL4S2enI/p2lNjBHI12kwilfT/w8OOg8DGpkmr+7Fi0+
         Rnm9BGUSJgv9u6SVGrlr/2CFhc1Ib5hrFjTokQ30ZB/qsWRFBEEhh5XKeJ7tS4RzUBQO
         6OGJxDWl9PRORwVOyWfMqXTokknkJj6puhHP4isEgeNUcyuZmnreoZH3pq8mcpMY6vJN
         zK0P3Ds9/NutnpCsciiyjxz0GqLRhhcB2iKPVvRs25MifhvRq1LjWtehsrlguqhaye7c
         MO/F51m0TVPP5wON7Z0GYWz5cBdfZD9awTDOvM6/1BTcxjrXdNBdwPKon3O8MBk9zNe9
         QWDQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 185.58.86.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=aculab.com
Received: from eu-smtp-delivery-151.mimecast.com (eu-smtp-delivery-151.mimecast.com. [185.58.86.151])
        by gmr-mx.google.com with ESMTPS id b10si11911edf.3.2021.02.12.02.41.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Feb 2021 02:41:07 -0800 (PST)
Received-SPF: pass (google.com: domain of david.laight@aculab.com designates 185.58.86.151 as permitted sender) client-ip=185.58.86.151;
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-115-2rM-qm06PAG36k1cQRmO6Q-1; Fri, 12 Feb 2021 10:41:04 +0000
X-MC-Unique: 2rM-qm06PAG36k1cQRmO6Q-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) with Microsoft SMTP
 Server (TLS) id 15.0.1347.2; Fri, 12 Feb 2021 10:41:03 +0000
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000;
 Fri, 12 Feb 2021 10:41:03 +0000
From: David Laight <David.Laight@ACULAB.COM>
To: 'Nathan Chancellor' <nathan@kernel.org>, Jian Cai <jiancai@google.com>
CC: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Kees Cook
	<keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>, Catalin Marinas
	<catalin.marinas@arm.com>, Masahiro Yamada <masahiroy@kernel.org>, "Daniel
 Palmer" <daniel@0x0f.com>, "ndesaulniers@google.com"
	<ndesaulniers@google.com>, Russell King <linux@armlinux.org.uk>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
	"linux-security-module@vger.kernel.org"
	<linux-security-module@vger.kernel.org>, "manojgupta@google.com"
	<manojgupta@google.com>, =?iso-8859-1?Q?Andreas_F=E4rber?=
	<afaerber@suse.de>, "llozano@google.com" <llozano@google.com>, James Morris
	<jmorris@namei.org>, Will Deacon <will@kernel.org>, Ard Biesheuvel
	<ardb@kernel.org>, "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "Serge E. Hallyn" <serge@hallyn.com>
Subject: RE: [PATCH] ARM: Implement Clang's SLS mitigation
Thread-Topic: [PATCH] ARM: Implement Clang's SLS mitigation
Thread-Index: AQHXAQPpjAt19oU7EUuQ7rTdUOVK86pUVCnA
Date: Fri, 12 Feb 2021 10:41:03 +0000
Message-ID: <3f61af0eee9b495e8e8c032902d033c5@AcuMS.aculab.com>
References: <20210212051500.943179-1-jiancai@google.com>
 <20210212055508.GA3822196@ubuntu-m3-large-x86>
In-Reply-To: <20210212055508.GA3822196@ubuntu-m3-large-x86>
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

> > on -mharden-sls=all, which mitigates the straight-line speculation
> > vulnerability, or more commonly known as Spectre, Meldown.
> 
>                  ^ I would drop "or" here
>                                                   ^ drop comma,
>                                                     use "and",
>                                                     typo: "Meltdown"
> 
> Although, is that a fair statement? SLS is not called Spectre or
> Meltdown by ARM, it is a speculative processor vulnerabilty. It
> might just be better to drop eerything after the first comma (although
> maybe that is just being pedantic).

or replace with:
   (speculative execution of the instruction following some unconditional jumps).

Which will save a lot of people looking up what it means.

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/3f61af0eee9b495e8e8c032902d033c5%40AcuMS.aculab.com.
