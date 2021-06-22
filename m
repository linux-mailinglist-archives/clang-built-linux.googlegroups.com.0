Return-Path: <clang-built-linux+bncBC27HSOJ44LBB5GWY2DAMGQEFFUU3GI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13d.google.com (mail-lf1-x13d.google.com [IPv6:2a00:1450:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EE763B0017
	for <lists+clang-built-linux@lfdr.de>; Tue, 22 Jun 2021 11:20:56 +0200 (CEST)
Received: by mail-lf1-x13d.google.com with SMTP id bt32-20020a0565122620b029030e2ef98a19sf6989872lfb.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 22 Jun 2021 02:20:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624353654; cv=pass;
        d=google.com; s=arc-20160816;
        b=IwaQdzYHVi1ITs4I9H5aLE6cftZWA7DdAF9IaJN4COm4HieSSMEnOqNC0XqfJw67NW
         qQ6/7FcwoAPEbFF2ndQOKtV3LsW+uHJMiqoKaElA+QxKyF2sYMAVP7bmv72duU8gA05l
         n+kLQd97rOxN3YKd6TUOjex22Tkh8afSmINR6eCnMyZ5s9JzPOTxJ5JEXWPdblDbhfZL
         HcjLRXjbAFEiPxGXA4kIFVPBwQTBLs9ZkfnVP16J/4Q7zWq6pXCD+MruxuN3SLAMNGJg
         BF//7YUuWhvBmdoowOhvdz/9Xg8WPCcTBJWZgVKPHzNN5kyhB5utrlXF/w2asDW/Y89V
         OXQQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:mime-version
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=L2J6QJRa0d5ZLi3LX3R4UeAGdlymQ5oQMTOz7iPY5Ao=;
        b=lD+ffjQnkx2j7aLKLWBB3S8NO3Ie/jODunVZr9o/ggba1MCJcW3isBlkY5o8ZVkoDg
         ZigRsQR54bLfj+Qa+ySZB2kPLsfhJQ4BV63uAVMEX0Vz52SmFm6QBMecldugexQMmNOe
         5ICvuXsTYd0+m/epX7xwDccbxVciwegufBskq3p+GiiL6BvrfpT32fnK2alxt7NYkxiL
         Qjp6MHe6WpPTeeGiGPR78d/hC6gT/6VOBwvI+zXOusm4YlZ+LKDldx+mOrGlWaV+E3Xi
         QPDxMepJ4tZjre0+K7t+d07ZFRVZdanstReZNMTafA0C7RQfoFm9FCdX5lEXiPwfmfWt
         xTJQ==
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
        bh=L2J6QJRa0d5ZLi3LX3R4UeAGdlymQ5oQMTOz7iPY5Ao=;
        b=JmF2njALOGIFPPOQrXFLZCNhRfo6pm1jKcohWHpf3rR/mRI4KbN+j8RSlWrZiyokLQ
         CGLBroiZoPWDJauHaP6HhmhVNOrYG5CoS0om7imK8V4zEoLtYnlYJOeULLGNTKFlznw3
         ohVQp0QiK1OarcBwc+1ic5cgdg+pVH41RRs0Y4Yz1AbfWqyJIU24Vd0xCx9rxJcOkItN
         lNkTZlaZHXhEA1fLFj2IVUpEVwmqBLrhcr2uMwpZG2t54E8o+ujM9wH7+sSz3NpW1wNj
         r/EdNk34ccl7BFZ8uAbQ5ANAUrWXbp92pVG+klgs80CqUHR6YID/pjGRQNqc4/wwHSnk
         q8RA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :mime-version:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=L2J6QJRa0d5ZLi3LX3R4UeAGdlymQ5oQMTOz7iPY5Ao=;
        b=LiP9HA4u7XxBTDGi4sc8b9tGmPyaYQCitDj1hq+a2amtlfvVMTruiwgsdONy1TZWeI
         JRLSUhVMV8HbyrPbDOxRgDkMWxMq51gdq7Enr5CRzx7iQnRK5GPJJCUbqS2NYT/CwO5f
         UW3JhZqDzR6YsiKGywzBMmz+1U0nFP3hcWVIrjMtVrKDPBQBIny8JhsqRIRI0O1AkR/P
         VDsq3PxCuizlJnHURrG9LOjzgItBqRLC5f3h51WFtVnFzkZnypylInvjsXMDwrkcnpvf
         MGxR0sJogYq34KSw8IdxlQlz5RWy4VvMtODzjeOdLwrCwTAmgPIDJBtivEZ6WL2UQk3U
         yUFQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531guLg+AWlNBINK1HjhjrvRd35/AWqBUR7caHFGEgczhYVUw/rK
	o24V10pxYBw+UgEfmKWw/MY=
X-Google-Smtp-Source: ABdhPJyD2vWCDXsjxkxiTIZO+Cz25CwudLNieJlMUu9vRoR4aW6qSlVjIPHzMeOEqGMQjjalKz9j6g==
X-Received: by 2002:a2e:a276:: with SMTP id k22mr2229126ljm.465.1624353653117;
        Tue, 22 Jun 2021 02:20:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:1302:: with SMTP id u2ls772417lja.2.gmail; Tue, 22
 Jun 2021 02:20:52 -0700 (PDT)
X-Received: by 2002:a05:651c:b0d:: with SMTP id b13mr2410132ljr.481.1624353652039;
        Tue, 22 Jun 2021 02:20:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624353652; cv=none;
        d=google.com; s=arc-20160816;
        b=RMcd7+AZ+NF+PDPEjiHjW3Pl+FQcbpB4+aE1Wf78kqEqhn/596vY3tDVUrsJTX7+bJ
         wMp5//Hj2vW8oB7eKlqQW/opfX/cWMx38rn1NYyeHAH4b6sMwd9dC6dFzmQcnXydjuql
         AJ/t8qXMLGt33Gcu5KjWRROYbsSiWT0XAZbQbbiVSOIuOljSALcTLFivRLzkdaTLS5P4
         UVfXQidlcsN3XNGFjrLjaQksnkh1hsnB9pAFHqt5KVyj22ujQuwGw8m90kB5xKqQUqmX
         C4pkX/734ymjZDWp4dCNiOgyDHhc8kJF4k1qf2/y5ftheOVLmQgK+ZiZNJNeDCBApmr1
         YHuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:mime-version
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from;
        bh=m53N1N2x442ARBV8T5fze0DJgcNuo83iNa+E4zHxoq4=;
        b=E7/vvulE1YRL3cl3Pjn8zfO6n6YS3MMlm9cKj2o/STPJ9GFfL/y2YkgItugP9gunS4
         MKxUtK5GuPbHSLSrfr0sPk6Om54+yCWxNaDGaMrvoYn1qe6H2J0nXraRmzwWME+1Gum9
         Kb3LEHi3M16vbLx+rM81UhzsSGtsfgXymYGZeDzzsaYl0hkeIIENjatMWQ2X/NmCsPll
         fiwNhZhvYpzh5dQ8WzW4sMXfhgsloFvLYc0Pvw6WmyNw6bw7ZAFdhUPFDV+SMU9YBeYF
         iDhvhxm5LpM7V5W2Z+ExM1+dZmcnAqW/QgqxNSkSpbgeXyKdLuXyo3yB+kwZd2UfPafP
         wE7Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 185.58.86.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=aculab.com
Received: from eu-smtp-delivery-151.mimecast.com (eu-smtp-delivery-151.mimecast.com. [185.58.86.151])
        by gmr-mx.google.com with ESMTPS id r6si93149ljc.8.2021.06.22.02.20.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 22 Jun 2021 02:20:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of david.laight@aculab.com designates 185.58.86.151 as permitted sender) client-ip=185.58.86.151;
Received: from AcuMS.aculab.com (156.67.243.121 [156.67.243.121]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-219-r6XmkbAiMNK5YbqqXuWvZw-1; Tue, 22 Jun 2021 10:20:48 +0100
X-MC-Unique: r6XmkbAiMNK5YbqqXuWvZw-1
Received: from AcuMS.Aculab.com (10.202.163.6) by AcuMS.aculab.com
 (10.202.163.6) with Microsoft SMTP Server (TLS) id 15.0.1497.18; Tue, 22 Jun
 2021 10:20:48 +0100
Received: from AcuMS.Aculab.com ([fe80::994c:f5c2:35d6:9b65]) by
 AcuMS.aculab.com ([fe80::994c:f5c2:35d6:9b65%12]) with mapi id
 15.00.1497.018; Tue, 22 Jun 2021 10:20:48 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'gumingtao' <gumingtao1225@gmail.com>, "cl@linux.com" <cl@linux.com>
CC: "penberg@kernel.org" <penberg@kernel.org>, "rientjes@google.com"
	<rientjes@google.com>, "iamjoonsoo.kim@lge.com" <iamjoonsoo.kim@lge.com>,
	"akpm@linux-foundation.org" <akpm@linux-foundation.org>, "vbabka@suse.cz"
	<vbabka@suse.cz>, "nathan@kernel.org" <nathan@kernel.org>,
	"ndesaulniers@google.com" <ndesaulniers@google.com>, "linux-mm@kvack.org"
	<linux-mm@kvack.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "clang-built-linux@googlegroups.com"
	<clang-built-linux@googlegroups.com>, gumingtao <gumingtao@xiaomi.com>
Subject: RE: [PATCH v2] slab: Use %s instead of function name
Thread-Topic: [PATCH v2] slab: Use %s instead of function name
Thread-Index: AQHXZkbiYct5qvuec0akJnkI2adQvKsfwtqw
Date: Tue, 22 Jun 2021 09:20:47 +0000
Message-ID: <69d13da56fd04cfe81e9754c6982a825@AcuMS.aculab.com>
References: <cover.1624240708.git.gumingtao@xiaomi.com>
 <e73123325fa47200f7b94ce36a0152fb774c0538.1624240708.git.gumingtao@xiaomi.com>
In-Reply-To: <e73123325fa47200f7b94ce36a0152fb774c0538.1624240708.git.gumingtao@xiaomi.com>
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

From: gumingtao
> Sent: 21 June 2021 03:41
> 
> It is better to replace the function name with %s.

Should this (and the subject) be:

Use __func__ to trace function names.

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/69d13da56fd04cfe81e9754c6982a825%40AcuMS.aculab.com.
