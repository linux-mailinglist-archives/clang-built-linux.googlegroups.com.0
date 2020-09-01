Return-Path: <clang-built-linux+bncBC27HSOJ44LBBBMXXD5AKGQELTMQ57Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x140.google.com (mail-lf1-x140.google.com [IPv6:2a00:1450:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CABA258ABC
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Sep 2020 10:51:18 +0200 (CEST)
Received: by mail-lf1-x140.google.com with SMTP id 1sf244776lfq.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Sep 2020 01:51:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598950277; cv=pass;
        d=google.com; s=arc-20160816;
        b=YBgMAjFABeAZIZN2Oq63ECmnA6t+YJIjo98gCj1iW6AeUNttkFVIa9YV6TiONSLAkP
         fWReO9aihF+yz4hIz1/zOxqTbUC73bL4ZfSvhdwUA7oMgVrhwAfu08ltSQCFjDetDt+4
         vJtOnLmD2IXA7zA0VBaPElZluPEwAEDLoVS9hkYBXMtwDgI3/BvuG2fUBmoci4xrTfne
         IjWk9y0Z7oiR7pa9GkPM3RE57AFyPIVOx8VzOhv7TV/zP+GiPjja2DKKkyNnYVOSR6kb
         Y14Mg/tCqXcduibdRW+wJDMLLFCP6Sv2FU4ssPbpQHUiQNHHS2c49MpeOFsvk5Ak3ktT
         7N2Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:mime-version
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=dtZ/cElyrW/xAvNZ478E2/yZuthCnP3NYS0hNejz1W4=;
        b=kWzZJ/1lC7td3Xdk4WjU7i43eFq9JmYP39nAzd4fJShaMkXExoDM1RZ6gn4vNvnj9f
         ou4Mp4EUMbNrSrWTzhnuZCTfH0aFCXMNKWBRVw5uu0lkzoz9E/nOlj5lREwkp+/QusdX
         0dSrLCD0Hobq0CULE+IwfwPTpH3OmgOHR7fxPqy+GEpUFVOpgUiM7KDKFCubUyIAMGOc
         B4QdclBSnFFgwupxixGZvxkEH3Esas4K51HVcq6oWk0/wNBa2JD+TFYy+DYOE5xXfNW6
         3SBZ+yd8Y7j7W3XUXEFuHcN6yvKHyFGyC036bRIyfzmuN7FeiHQeRgnPxZ8aD3zZP3rB
         SMYg==
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
        bh=dtZ/cElyrW/xAvNZ478E2/yZuthCnP3NYS0hNejz1W4=;
        b=EOlgfva+mou0S7TrzLNZc0/fpracBwaidLCsaCkAY3nTec46tiFcg7rOgu1HttsNEi
         ErQRFKQujtCHnUdcSbk1iM8urnByhOB9Kv2IlQr8ByHZmObLrhh6AlI2BuVsCsEfSFyu
         uAPfXPynTtCfiTw1UawpgagstVlNxA9qBADyFQjOGIuuHE69qqtA03iotro7hq28hqqc
         +MA4F2v9yWwL7S2zXpUVqeKeK03SEaLiJNoDYVNPk2L7VDBce9u1tYOvScVapHj7IreR
         KU10B9LrTpqLrOvufwzAzrrEAhtmrgOEsWy8Nlh+T5rQat3OAUb65VRqREc0uxvfMMzE
         K1cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :mime-version:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dtZ/cElyrW/xAvNZ478E2/yZuthCnP3NYS0hNejz1W4=;
        b=Lkl4w9rVbzoo6ivn1OLuzUGYMwbUWmcAsPIZhzr2vm+/xLK20ekqKHPg4xpcdnS40z
         KN8n28oDgmdkprKtzHnuG36zY+T/1fQnyjoyYq4fYTArqXsuBTFCUduSaYWVgEFAHQ53
         tqHSToR5wYD2CuHdYfb2+GJvnhb61uiRlIpACrDtnGgO4kSkbifxe1UYQKHsKowfUqH8
         L5gX6e+eP/nKww7w5oD+Is2+2MLjv4Qr6ixBYIitDHok6Xo60CIxUSaZjCtN299Kr9UJ
         CWkcEG12eIz6oRvK2PxXHD/QjC5g1Ia7lLG3FVRjQytNYW3NxlO7agantG+SiVjmlOhP
         ZjWg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5333UfoU5Qd1Md7zpSgIsjDdyhMsi6KBy/pon+7Evzi7BoHfSAft
	IuwHoiqUuWRmbYgQRlt3L7Y=
X-Google-Smtp-Source: ABdhPJwgu/VAHdwWWoh2/vxbBjMWyLOKOP8kppbnEpxV3+bRaXmEAjl2KvFQ5zvz148pLNZ84XwG2Q==
X-Received: by 2002:a05:651c:208:: with SMTP id y8mr36819ljn.233.1598950277767;
        Tue, 01 Sep 2020 01:51:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:c7c8:: with SMTP id x191ls265506lff.0.gmail; Tue, 01 Sep
 2020 01:51:17 -0700 (PDT)
X-Received: by 2002:a19:5f5e:: with SMTP id a30mr66507lfj.64.1598950277028;
        Tue, 01 Sep 2020 01:51:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598950277; cv=none;
        d=google.com; s=arc-20160816;
        b=TPJWZAwxyVAl078laqKvVAb4DYYSFbCmMinZcvKIJNQuOrYlGmrcI+4qXJhF3qk946
         MGthE/n3F9FoNn+6QiyhQTB62dGa9u7feZ6GB6/1EGf69QiHb9EO19lOs8g/gWL2QDSs
         /AIsi17lNk+GLPdYboxv9Lk/3QDYo75baqTs6kOV3hjnBqK7bvmD5lNWU3mog2yCBvzW
         3zWwu/vaPRLwBIj0Zcn8RtuL5Q8RuEDD6+nepRbU2+m0mIy9whC0KxoopHJ+OCxLWUot
         YZD17R2j5weSiAtnM5tJ6Pee4slNohPHDq5egJX7P22Vn0D9AsUMPET198gKQfzd2k/e
         0iSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:mime-version
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from;
        bh=ke1LSnhg4U/QSJ1aKTM/NJY4/6VPyC3oPrjue25V7G8=;
        b=EYHlPS/EzW4w8kU6eVD801lrULC2njUhZzCPRu68d1o6S7mVj15Lr7G4gtyUx5npAo
         65V4lj1h7n+hKboX06xJDcjS+64ICndBXL/GTqw/vkGgJK2e/x8a00e27DKX5pPRXYFq
         1THcFg6FhI7BOl4CKWoGPf1jQdogG+1+hSkGJ3Rq0925ojXc7ulc7BnqscLMWH1/pI8L
         /mO0vWsg9sPoJF/ESwqYt+YlaYRgWs0PB0kTaHwD03nI68Y+LXWkRrdB5pxYjLgexvef
         7bcBZ9BlcoFnPbM5XuN9W/11mbyuAP5g5QKri787nZKqFa9biBD5Fec5FkE6VxyjvocY
         Jepg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 207.82.80.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=aculab.com
Received: from eu-smtp-delivery-151.mimecast.com (eu-smtp-delivery-151.mimecast.com. [207.82.80.151])
        by gmr-mx.google.com with ESMTPS id z6si18735ljz.8.2020.09.01.01.51.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 01 Sep 2020 01:51:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of david.laight@aculab.com designates 207.82.80.151 as permitted sender) client-ip=207.82.80.151;
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-118-LZ28NOJPPTaVtO94LDjr0g-1; Tue, 01 Sep 2020 09:51:13 +0100
X-MC-Unique: LZ28NOJPPTaVtO94LDjr0g-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) with Microsoft SMTP
 Server (TLS) id 15.0.1347.2; Tue, 1 Sep 2020 09:51:12 +0100
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000;
 Tue, 1 Sep 2020 09:51:12 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Nick Desaulniers' <ndesaulniers@google.com>, Andy Shevchenko
	<andy.shevchenko@gmail.com>, Kees Cook <keescook@chromium.org>
CC: Masahiro Yamada <masahiroy@kernel.org>, Joe Perches <joe@perches.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>, stable
	<stable@vger.kernel.org>, Andy Lavr <andy.lavr@gmail.com>, Arvind Sankar
	<nivedita@alum.mit.edu>, Rasmus Villemoes <linux@rasmusvillemoes.dk>, "Sami
 Tolvanen" <samitolvanen@google.com>, Andrew Morton
	<akpm@linux-foundation.org>, Andy Shevchenko
	<andriy.shevchenko@linux.intel.com>, Alexandru Ardelean
	<alexandru.ardelean@analog.com>, Yury Norov <yury.norov@gmail.com>, "Linux
 Kernel Mailing List" <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH v3] lib/string.c: implement stpcpy
Thread-Topic: [PATCH v3] lib/string.c: implement stpcpy
Thread-Index: AQHWf+14nZWdJbVkRkiz0fwM7UWCxalTeddg
Date: Tue, 1 Sep 2020 08:51:12 +0000
Message-ID: <5989b2666acb49ccb2d34a0b91f36923@AcuMS.aculab.com>
References: <20200825135838.2938771-1-ndesaulniers@google.com>
 <CAK7LNAQXo5-5W6hvNMEVPBPf3tRWaf-pQdSR-0OHyi4RCGhjsQ@mail.gmail.com>
 <d56bf7b93f7a28c4a90e4e16fd412e6934704346.camel@perches.com>
 <CAKwvOd=YrVtPsB7HYPO0N=K7QJm9KstayqqeYQERSaGtGy2Bjg@mail.gmail.com>
 <CAK7LNAQKwOo=Oas+7Du9+neSm=Ev6pxdPV7ges7eEEpW+jh8Ug@mail.gmail.com>
 <202008261627.7B2B02A@keescook>
 <CAHp75VfniSw3AFTyyDk2OoAChGx7S6wF7sZKpJXNHmk97BoRXA@mail.gmail.com>
 <202008271126.2C397BF6D@keescook>
 <CAHp75VeA6asim81CwxPD7LKc--DEvOWH9fwgQ9Bbb1Xf55OYKw@mail.gmail.com>
 <202008271523.88796F201F@keescook>
 <CAHp75VcGOvYOXCaQeux5PQ+tHRYF3W=173s80U=mDE-0zzwTXg@mail.gmail.com>
 <CAKwvOdnV6GySbhKGVEUBV5GdanR9xRWAFE0JPcpORR=2dmRWPg@mail.gmail.com>
In-Reply-To: <CAKwvOdnV6GySbhKGVEUBV5GdanR9xRWAFE0JPcpORR=2dmRWPg@mail.gmail.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0.002
X-Mimecast-Originator: aculab.com
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
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

> Of course, no "True Scotsman" would accidentally misuse C string.h API!
> https://yourlogicalfallacyis.com/no-true-scotsman

Google will find plenty of:
	str[strlen(str)] = 0;

   David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/5989b2666acb49ccb2d34a0b91f36923%40AcuMS.aculab.com.
