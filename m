Return-Path: <clang-built-linux+bncBC27HSOJ44LBBM4O42DAMGQEVJXRCLI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13d.google.com (mail-lf1-x13d.google.com [IPv6:2a00:1450:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F72B3B5A6D
	for <lists+clang-built-linux@lfdr.de>; Mon, 28 Jun 2021 10:24:21 +0200 (CEST)
Received: by mail-lf1-x13d.google.com with SMTP id z13-20020a056512376db0290329474fcc99sf3559322lft.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 28 Jun 2021 01:24:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624868661; cv=pass;
        d=google.com; s=arc-20160816;
        b=UUfyWqcOO2ApEo1n2GbtsmZEDr2ty3mix4mnawOxIiAIS2yonfZpU+dY+gvvDTmvFD
         grO4ZWuxxus/2Tf6GHC5Hf/WKu/xl9jk79WRF/nqsYVoHQ72iPAlmlC6W5sdq62esDtn
         n8YIY2kT31+zT9395CylSDK2BTbI6W3LA93mKCC735EkLq2MG/Nx6UH/X9NZQsoSeiyE
         xSRjKz98OzfnwzBMxughgY2B3ofw2bkCVZEISOyv+hPWFe2iX0RqC6INjcDR9JhzqB7v
         eH+TOya8iIA62wD6fPZgcHp8PDufQl1ryyY9tAhwoehAparATadWQSvkrXflHtc/n8qD
         5mWw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:mime-version
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=ggNvrtBulIjzyjnb+06JDrsAnjRNIVgfUWP60zHjRZU=;
        b=cfGWKHg8XZJrzi0zZcOhsrkEaUP0hZcfv6zaZgQLGuNoSwTEctbn3dTx7rQslLqe+j
         Iu+8cyZ+dJqH/Ej3kudDGIytzqyZdyqp9QvO4K6jHvPF9gDkKl8oXqEx5zzfDv2RZ0Sj
         k1NKMJCXU7kbYaYrT18KG8VrLlxOWQKfuQqV1peMIWAG+oUot8nTxG32KpoxFz443e1x
         mCwu4NI720eHBOQTPlLXxbWMtdpKAOHc/0cyyXohtmGw3EoAqsRLIPNHNMrZpbuVHY21
         aKX3OX7y4sal+/W7zP3bzLt1p/oL8JqQo5ojiGXOzpW7aP6jdPpYNls+lZuOip8jvARV
         KfbQ==
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
        bh=ggNvrtBulIjzyjnb+06JDrsAnjRNIVgfUWP60zHjRZU=;
        b=Me8O4RZEI41FGSK1gG1PZrIgc8xsOTTArgKCQm/WNF9PWYyaHLIN8/V65KBPHu5OVk
         CssTRuTftn9fwlKR2D59QkZd92oE0GSvEZhb+XhirCDo4t65PR5vmgRdj7WvQGd85LgG
         srz7+TtAGHaNvHNkg7sDQrF7FYG322AZlrvjAAEoy5U1thZ5xodae6H+qhnW+ZstpWuh
         0RYN6oiAhslC+yMkRg1yscdfmVObdG0m0fcPyKiqkAzmUoT1m5/7gbEFE7J3xwLMwiM0
         nGETzAM97/sSCR71UaRk8g3UZudK+SkysUFcfR3gYyLXSh8dTKl0FvZ2D8QEflzRFHX8
         YzgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :mime-version:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ggNvrtBulIjzyjnb+06JDrsAnjRNIVgfUWP60zHjRZU=;
        b=omS3d4rZo12NjZAcNrf/4Tu/aEMGrp1JXthH7maSDOj8plt+H5Wn0GdNo5nvF3c1hC
         xHXv7ads/RRFjdoanyEOd8B7h2NRZBFahWgzdpRxJdigErnksUFdRx3BEDplVAFUz1HF
         9bdKc6/ypOTTrCuQIRx303elGaQMmA36tHyg4qkvrX7WFFfxurOdUNsJs8QwwvSmuD/c
         KN/MQau+UX2KgqTiuJFVv3PtFaFqY6Terjc1SwmUe6h6+cu93+wZpnv/nggg7sWcZf0h
         0YQ3+sVcaDeGu0NyhkJD0ZJQSBhFj+KQiUq5xRKJwgbSPc5xSPqVQAIsLYSgpD3q7mmz
         mivQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533JA5YVcTsCQ4O0q65yLtlrnLWz1OMBGhbA2/+K6Z0sYakRPkdi
	tPGetjEPELMSVZZc0rQ39AU=
X-Google-Smtp-Source: ABdhPJyRpd+mqrlua0e5j8J24bUHxoSFjXY2xd+DlXVbs/2tSlBx3y6lKkpPUiJ0oUbWsfe8AQ3d/w==
X-Received: by 2002:a2e:6e0e:: with SMTP id j14mr12174624ljc.419.1624868659516;
        Mon, 28 Jun 2021 01:24:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:f515:: with SMTP id j21ls759242lfb.1.gmail; Mon, 28 Jun
 2021 01:24:18 -0700 (PDT)
X-Received: by 2002:a05:6512:203a:: with SMTP id s26mr18146077lfs.394.1624868658384;
        Mon, 28 Jun 2021 01:24:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624868658; cv=none;
        d=google.com; s=arc-20160816;
        b=nfQ1tMdHHNYe2vhQt0fudcJdmltYyBRICsR3zc+7PC0LKpGUmcUVyYWrc2kefI5mEW
         z07hn9EIB7TnDeqv6cwm6uUfy7KfAeEjAWuYWGC9P+R+KgN3E7aMtWo4bwnP1Zh4Oh+n
         fRqosbJ7haxtBSJLWzWx9jIw8GJRP/1xq7XYm+YtoqyoNprBHMM1u8kPzCaEKUw2f25y
         NYkHnwYu6EEKujyUvFWqLEVgu6uvmcMVqmaubKTKRumII/Hq8sCncBTWymUtyAjGGSPN
         /loTwoNjQA4S9upU4rDURUHGCeYkJykWbfMF18IJGPkP3IrUnao21LQWOzh//cZLhjEC
         IgUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:mime-version
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from;
        bh=Lm/YodiIP8OfB8Xzq9Nxk0Qa8E+vN0M0A9uEYifmkLQ=;
        b=jJftRCMt02hJyPUq34V6A3Yxpo9Ogboq4LLRfAba22ibXWf/IlPD/PMHi/ujf/LT7M
         VMHMtM0ZDDqokiLQlFyC2xuPgxPWX6QiIL84WIaN75LAUmSixoRdVTHgwUjg7LSqpkB3
         7brNN7SR8Uz0JefKh/hecJ8ED26Ht47AqM29XzyeJslgotBmrzY/4en3iHdW6bz6QXge
         LKEMi7VCYl0XAkU83fJOfI1FoH2ZgjwDj47YvrvnLpjzs26TPmY+DfidYV4NxH4kBr4R
         qCXzytWyoGxUrmkQUbYM7En5E4G+Cd08O+3InVDltK3+I397I2EZY6VwNZbF/qgT3zrJ
         O/gw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 185.58.86.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=aculab.com
Received: from eu-smtp-delivery-151.mimecast.com (eu-smtp-delivery-151.mimecast.com. [185.58.86.151])
        by gmr-mx.google.com with ESMTPS id b35si484566lfv.5.2021.06.28.01.24.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 28 Jun 2021 01:24:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of david.laight@aculab.com designates 185.58.86.151 as permitted sender) client-ip=185.58.86.151;
Received: from AcuMS.aculab.com (156.67.243.121 [156.67.243.121]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-89-FswThSeuNS-iTkJMwVP7Ow-1; Mon, 28 Jun 2021 09:24:16 +0100
X-MC-Unique: FswThSeuNS-iTkJMwVP7Ow-1
Received: from AcuMS.Aculab.com (10.202.163.6) by AcuMS.aculab.com
 (10.202.163.6) with Microsoft SMTP Server (TLS) id 15.0.1497.18; Mon, 28 Jun
 2021 09:24:15 +0100
Received: from AcuMS.Aculab.com ([fe80::994c:f5c2:35d6:9b65]) by
 AcuMS.aculab.com ([fe80::994c:f5c2:35d6:9b65%12]) with mapi id
 15.00.1497.018; Mon, 28 Jun 2021 09:24:15 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: "'Chen, Rong A'" <rong.a.chen@intel.com>, Ilya Dryomov
	<idryomov@gmail.com>, kernel test robot <lkp@intel.com>
CC: "kbuild-all@lists.01.org" <kbuild-all@lists.01.org>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
	LKML <linux-kernel@vger.kernel.org>
Subject: RE: [kbuild-all] Re: net/ceph/messenger_v2.c:2808:5: warning: stack
 frame size (2336) exceeds limit (2048) in function 'ceph_con_v2_try_read'
Thread-Topic: [kbuild-all] Re: net/ceph/messenger_v2.c:2808:5: warning: stack
 frame size (2336) exceeds limit (2048) in function 'ceph_con_v2_try_read'
Thread-Index: AQHXa/RueJm4ArZTY06Bo3hjOSis8KspFAQw
Date: Mon, 28 Jun 2021 08:24:15 +0000
Message-ID: <3d6a513b51d545cc87a7a0ae22452567@AcuMS.aculab.com>
References: <202106280955.VUsBSyHq-lkp@intel.com>
 <CAOi1vP-FR2PpqdW4WuhJaaFPZifxthf0B45dV03v00ef66R8wg@mail.gmail.com>
 <a875976b-3117-f001-606b-8e90802bef8a@intel.com>
In-Reply-To: <a875976b-3117-f001-606b-8e90802bef8a@intel.com>
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

...
> >>     arch/powerpc/include/asm/io-defs.h:43:1: warning: performing pointer arithmetic on a null
> pointer has undefined behavior [-Wnull-pointer-arithmetic]

I've just realised why that error is output.
The result of (long)((char *)0 + 4) is only 4 if the NULL pointer
has the 'all-zero' bit pattern.
This isn't mandated by the language.

However I suspect almost every implementation of C there has ever
been has used the all-zero bit pattern for NULL.
This includes one system I used (many years ago) where the 'natural'
NULL pointer would have been the all-ones pattern.

Far too much code assumes memset(ptr, 0, len) will set pointers
to NULL for any other value to ever work.

Of course 'undefined behaviour' doesn't mean 'undefined value'
it includes firing a ICBM at the coder's house.

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/3d6a513b51d545cc87a7a0ae22452567%40AcuMS.aculab.com.
