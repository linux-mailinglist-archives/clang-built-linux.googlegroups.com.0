Return-Path: <clang-built-linux+bncBC27HSOJ44LBBXUS7PUQKGQEDCJ6VWY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id AF99778991
	for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jul 2019 12:24:30 +0200 (CEST)
Received: by mail-wr1-x440.google.com with SMTP id s18sf29906682wru.16
        for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jul 2019 03:24:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564395870; cv=pass;
        d=google.com; s=arc-20160816;
        b=E4n1myEVSzy17BgjCnPbVcRu97wSWeeIKJg+fwjguKchngUy6TTOdXrkANqCPZVS0T
         y2wWAFCPT7JpL8eYWRhXsWaAFsVb/Niy+uvYYSIjZzSplbGy2+pUHcaGWrilFL7mDj/I
         YeT0Z8xNLcTkPVt0TK8tp3Q+suLcN3Tvqei1ldDQObHF7/Ht0HpIXW1sPaJd8OtKo9O/
         ebIv/M/dDxngdHZITavbazFA6dmmdS206KqePof0ooW3QRoPvutIUePBG91wG8hRSwTe
         vkx09ChCQpQ9+kmQ8gpSy7hwwnMA/SK+dMdnQztEHSd+Yw4BGWiOokvJqSNmTRJ3Y0G/
         xb1Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=qp1TqORlHBk+SwGp480Obrc0fjB/Jve7oYnGnv02RFw=;
        b=FCanNRaAsD5vKsjMuev2IUpR0owzK7yZcj8A5xB4wQrT6yyou+14KE+rwF/hY4RCok
         bNvv5+qOXNgr+bFiuSfSJnSqmbVrxwx3u7MgaKpl1QXawyC5yQmP5mXt0l6O3zWCJbbj
         /icq74wm8zTVw2C3THXVSrJ82yic47Tp+DN6QGpkTOdI8wNwTK5uz5XwM14SM8MabczI
         pskJb8RO3jLlIQq2LrIv4xVcWK1tRwkj3IoX34XdVc2ohYQDRIikxAbcpq0p4GI+fIQT
         Y8fbod8GVltqbJmpBXDvp/rNG4kQbXNK2Clh8UgqtVZyqaKmac9cHIakXutAIimcxfr0
         9/uw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 207.82.80.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qp1TqORlHBk+SwGp480Obrc0fjB/Jve7oYnGnv02RFw=;
        b=VjyOTv+632HCVkc9CmEKxKcuFYm1NbiVE33xxnKBxrOj6q6t40dGdmdshKlv0VMjZ0
         KDhS8XMKumsZ9dw81buifOvMtTtdYIifkXxAr8vSSOkQL++Z1swhngNqXA1EhNKp3nSA
         tAuH+Nqv06N8rq4BEH+Ory1k0gfZ9sDLb020OVUhQPuTvYqJTdz8me0X89tdKz19O4om
         5uU8brLOlXvnt3fYboKZKVPf+y5pGUveCgQwZH7WPwmNjN77ZVSWHwGYPcNjUSudwBLI
         YSrLBFeBv4vZN0WVbZCUQXkCsG48n5kD2rjcENZeWp7NGON0ISXvDLueSwRcUU9QohAj
         XdRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qp1TqORlHBk+SwGp480Obrc0fjB/Jve7oYnGnv02RFw=;
        b=EyEPsh6V5YzErtGe4//LLrtAxjt5Zs6MEeI9KxumRv/zL8NfhhJiqo9blyP7huMCoJ
         Fzf7m0fcjQEjkSryvi4TtvWJbJk4c+o/rJOjmILB1JfqutOLOJM614FVhA+fbrvPaDqn
         d4ZjkAXM1xUymbYz3Ewln4zMbaiw7Eb8vqDUclQTFbR/FxVhiJ8zZfvurpcVAOvyR0Ke
         SIfF3I65zW6ceJj4MAn0EGxJCOTY10XIgkgQS/M4IGvkhBsw/WXZ2VcheymFYKQcMsPU
         Wj82x6GboxaDWtv+dZCk+UU3pVp1OaidYNHYAHvIYjbqD42iiOa86eDFkcyScAIvx3Kr
         c7FA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUb7IphWLvF0lw2zYSWJlDOJqyoEGPQ27sar+evcJhp+CGCbUMd
	X9DAZd0+PLDkpox2ShZKPmg=
X-Google-Smtp-Source: APXvYqyCGO9DscldvefMDGgY9g1m3Mdq0WOHi3B5ljBAcyvUZOudJPwh4miqBKzpWA+ANVdN+UlGxA==
X-Received: by 2002:a05:600c:2102:: with SMTP id u2mr101533710wml.105.1564395870437;
        Mon, 29 Jul 2019 03:24:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:5144:: with SMTP id u4ls18127451wrt.4.gmail; Mon, 29 Jul
 2019 03:24:29 -0700 (PDT)
X-Received: by 2002:a5d:494d:: with SMTP id r13mr45714002wrs.152.1564395869856;
        Mon, 29 Jul 2019 03:24:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564395869; cv=none;
        d=google.com; s=arc-20160816;
        b=j+MTsDkpyLRM1r/2zZ99mFYQ19vodbsVnkFxeyOVkupRt1t9wZn3M+bm/Op04umjtE
         5zPgYu1BAzldDC9KBCTdJZXxjfVpwi1fIoYxj9Z244FoHKl4mmvJqJq+DsIjfuAZqlYA
         PHqQaXvwwralWehFy3YE3iW9F7zpREsHJcUGqFxyXODnIvxZ6QabzjFNl+t5eZUauQg9
         I9Qj3/mrrXdGMGEAoWvSZtKod3fL+HKB0b5/lB2yWARPFsA0Nntvi/XGpAnWRya9c0ow
         3O29SxnHe6hfuYWd2KtpF9q62XMG6Jk8izER4yYtAua3MUmb+pKXvVLJOm8zmWijs84e
         41kw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from;
        bh=xi4qEM64GAJ+iEu0CSxsD+s8PZ3nfZ1b7absqY5xulA=;
        b=0uVXFyhfOxXBWHUlgliYG4uMttzvLxFK2WzclohVdNYzuzo/hpHNqaIPy54H3ITwLX
         Hg4CpiVjD619uiVAgrq9wp2ZhCx7Zyy5pOrM/fn3KNOBI7a/lMRspOFS+MqA6DkCFcn6
         DMLwFIHSAu2omJv9OMuKhgEwRqUFBjHGL3ikJoCWSt9GLWwMaotqFZouOoL/T2DgK9ya
         JLOflQz5YxEyT/13rLkTmNVxefvRUyO07nAb0KnWzzAAYYsqjsSsqM/Z+m6Rjyb0igQ0
         bUxdDjZwc1VrwIrY7FIQqF2ODxABbPTMZf5eNVIWY5Ngpy+jVskNu24ovxBUJ4UlGjR+
         px8g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 207.82.80.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com
Received: from eu-smtp-delivery-151.mimecast.com (eu-smtp-delivery-151.mimecast.com. [207.82.80.151])
        by gmr-mx.google.com with ESMTPS id q14si3004867wmc.1.2019.07.29.03.24.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 Jul 2019 03:24:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of david.laight@aculab.com designates 207.82.80.151 as permitted sender) client-ip=207.82.80.151;
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-234-VJwiHrKHPaOBTCMo7rm5ew-1; Mon, 29 Jul 2019 11:24:28 +0100
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b::d117) by AcuMS.aculab.com
 (fd9f:af1c:a25b::d117) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Mon,
 29 Jul 2019 11:24:27 +0100
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000;
 Mon, 29 Jul 2019 11:24:27 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: "'Moore, Robert'" <robert.moore@intel.com>, Qian Cai <cai@lca.pw>,
	"Wysocki, Rafael J" <rafael.j.wysocki@intel.com>
CC: "Schmauss, Erik" <erik.schmauss@intel.com>, "jkim@FreeBSD.org"
	<jkim@FreeBSD.org>, "lenb@kernel.org" <lenb@kernel.org>,
	"ndesaulniers@google.com" <ndesaulniers@google.com>,
	"linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>, "devel@acpica.org"
	<devel@acpica.org>, "clang-built-linux@googlegroups.com"
	<clang-built-linux@googlegroups.com>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>
Subject: RE: [PATCH v2] acpica: fix -Wnull-pointer-arithmetic warnings
Thread-Topic: [PATCH v2] acpica: fix -Wnull-pointer-arithmetic warnings
Thread-Index: AQHVPaHylXmfzBauvEybJLDaugeeCqbdV0WAgAQb46A=
Date: Mon, 29 Jul 2019 10:24:27 +0000
Message-ID: <c98fa373a004472b979255a93b414fe1@AcuMS.aculab.com>
References: <20190718194846.1880-1-cai@lca.pw>
 <94F2FBAB4432B54E8AACC7DFDE6C92E3B9661CBD@ORSMSX110.amr.corp.intel.com>
In-Reply-To: <94F2FBAB4432B54E8AACC7DFDE6C92E3B9661CBD@ORSMSX110.amr.corp.intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
X-MC-Unique: VJwiHrKHPaOBTCMo7rm5ew-1
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

From: Moore, Robert
> Sent: 26 July 2019 20:36
...
> This is because pointer arithmetic
> on a pointer not pointing to an array is an undefined behavior (C11 6.5.6, constraint 8).
...

The standards committee as smoking dope again :-)
If that is enforced as a compiler warning/error a lot of code 'breaks'.
Anything that does:
	struct foo *foo = ...;
      struct bar *bar = (void *)(foo + 1);
suddenly becomes 'invalid'.

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/c98fa373a004472b979255a93b414fe1%40AcuMS.aculab.com.
