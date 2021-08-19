Return-Path: <clang-built-linux+bncBC27HSOJ44LBB4FH7OEAMGQE2ZN46AI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43b.google.com (mail-wr1-x43b.google.com [IPv6:2a00:1450:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id EE6AF3F229C
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Aug 2021 23:58:08 +0200 (CEST)
Received: by mail-wr1-x43b.google.com with SMTP id y12-20020adfee0c0000b0290154e82fef34sf2172836wrn.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Aug 2021 14:58:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629410288; cv=pass;
        d=google.com; s=arc-20160816;
        b=WMLLUtmhlQ4OLDagH/cB/16Pb4AGmPRahazxORAk+UVcwZG6ejgvL0i/na4zKEewcl
         51M9JxVa/Fnp2phtL9+rVDKJhsTnXeLOqmkJcZZxzY56F53AlEgDfzt/FdsY1eOImYIu
         2RkgdOdbodBIeQRYvQJf/atN1EpNNDvkC3x30UH2q1UWMO6FRD0+xQKc7N2VDx2xq0be
         QnTYUli88VbxqtHvlyiLzDOPKwLJNQILp90CS7yysf+rQdDmqCAHRCY8IP0QnjhlXFyG
         gwCWcxdsqHjgtFC/BZU0l1Mo6pKAfSOPRJU+EKjJjjraCwWiAxHHoohyooM5YX68A0Ix
         t5EQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:mime-version
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=sKVWiUCyLeF3Qa+AE3BZ5l3Ghtv/NFpwuuiVVY7OVzY=;
        b=GUZzR7aUcDR5u0E2JAxlnlmqcYwy2hs5xzlmGY+qkHGYYgTt4fdYlV7uTkjcgxSOCK
         nY7gHiK+R3BTcDqhxmPbUhWhgpJGfjCzLZrm9shxoZxBEV31ws4EGqGU+u9tNfsSPvq/
         VhnXfw4jLtyfQ6U9LDRT/UBULzDaLhE0y8EAsD9v/NS8Q/gmVGSfmuscGCeEN7zwCdZr
         +tQxOEcxxkC55PbWfvn1v1ze4k7m858ln3U03e1v67dlYcBtfWaFOZV1oKbheFk8M+3k
         xkiPj1Bwto+Up82mSs0871P1DC5EZYPo/XWYX7inDc4uKu9ZwjSMMVYOcy6g3BahtqWo
         unuQ==
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
        bh=sKVWiUCyLeF3Qa+AE3BZ5l3Ghtv/NFpwuuiVVY7OVzY=;
        b=TyyIM5Y/NGJ1rrlODVrSPvrF4grIa/RE0r6V2C/g7Ury5+QTy+CQR3rVw/XaRlQSqP
         NXJPPBLPFXKSRdwq9+bn196feapTkBwf0nUS6KppUBgmEKp8CpDiYZiN3vlG+hhGNqbr
         3fzP34SjivdQ3k/0PzOia64yORA+yMMSFuwp0UO7ZcYg1CEgKDbQ+jj/YBM6k26R3OTX
         0WL3P/uu15JERkzwR3fayDZxQ/vyjiZ5zK7qVH5FPQQI+CMYlujmlcWtBD8Enkl2maPn
         /nzM+cO3O1kZPqNp7EGHjBBWji0j9ODQhXYES2Q3w38tH6Q45ttJtGytNHqotzoaAE9g
         InaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :mime-version:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sKVWiUCyLeF3Qa+AE3BZ5l3Ghtv/NFpwuuiVVY7OVzY=;
        b=hEvGqN7fLCURTzKab2XY/IVLkjbbTyIHR21WOkDJFyLmUF+dKU/YAcXjv67O/KZpG6
         QphqQnfLBDdnHb3ltm1fpj9QcgjAnC/urt9nbygyozunMQ1DCiLq0FuBFzL9sJHxYCdw
         z6ERgE08la78mSChfob3kz7pHlMcAAKbAbONrTEQ1LeEvexUttYuUtxh9E1yHL+7W+1W
         xRQ0jbi02r3nM9qrmw4N6XzkXIg2bl12dzAnYy2lo6J71EDkphhklHE+IKwXQHYFr6Eg
         kqdmXbo3uBZWH/rRtOEkOGkm1kPqOo/3EJdvmwuxvE3Vqg7828pO/blpit0e7DBY92KU
         S7Tw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Ax5TlWpFSMb2jCz/YsLtCqz65bVGrJ2weXPmDpGYaNiyj+2JH
	5GK0s9BYRTmaAATsk1hh+aA=
X-Google-Smtp-Source: ABdhPJwz8VLThjYSO2HUY5rh3N5qKaDraV0lVwVEdj9zVoU1dVuG+xefJ3mCyd6l+D8cDrqxUbP6cA==
X-Received: by 2002:a5d:610f:: with SMTP id v15mr6041718wrt.415.1629410288657;
        Thu, 19 Aug 2021 14:58:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:17d4:: with SMTP id y20ls38735wmo.0.canary-gmail;
 Thu, 19 Aug 2021 14:58:07 -0700 (PDT)
X-Received: by 2002:a05:600c:3656:: with SMTP id y22mr681207wmq.58.1629410287730;
        Thu, 19 Aug 2021 14:58:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629410287; cv=none;
        d=google.com; s=arc-20160816;
        b=vx3ZJ3kkRSiqQ72SRU+9lifwm9zmsVikzZ+3uHmx8uDXYJau7D3FFjYSvcHu3cNcSy
         MeVZ4KMEmJXkq3vVHGjOsG2Y4SFxETdaHAS2mtLn3SVFdmdxZOuWzaNAA/zcFLJUYWBa
         WsvIBiy3Up6WvfeKAqZDVTvF0WTlFkAY3vPV4uE0sjKe9zcLyEQdPCYCfK7es+cPJsvW
         yhLdZM704SANrWNZT95NUyw2o3YWITYxKRrs5phgFYP4Mn7ZiMpZ+I4aWlw7cVItUe/c
         smspi9qPG4kJpKpQSmeRjcB5D5sjT145gZPG37jUtJayT2CTzYjB1Az0/FngcYb1k2pG
         WTrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:mime-version
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from;
        bh=aGHYXV+kODRV6Bmb96bURckWnS+9Y0EDBkToCrPaKbM=;
        b=zg3PQWVUxB3pAzwqGB7KokPIAdSqBUyO44UboCQvfuMeSXkVmnt73lBuwZOCx1Id46
         yBWqeMdROCjQrM2IwiLnOuQaB6+E6orUNagW789EML7QbVrGyMQrLCWD+eDmB6tjbChX
         zfsvLMnCjxDFnpSmf0B158KiJh01igUQd3/Yovg4NXqmCh3WVGYVsquuDn9Tg97XUpv2
         +zOUx/DuZCwiAl0PoENnXCnyLomyTxnWvIdk2MjcY4XU9rCodn6RW5Y4bpbyelBWIY6t
         fl7frZ/Q+7mq9oP4ZWuoMtaKtdFsZlYPreavRxYj+pMs7zNl1tI+5GsiMNkK/RcOO6IK
         TjSw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 185.58.85.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=aculab.com
Received: from eu-smtp-delivery-151.mimecast.com (eu-smtp-delivery-151.mimecast.com. [185.58.85.151])
        by gmr-mx.google.com with ESMTPS id c18si309036wru.3.2021.08.19.14.58.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Aug 2021 14:58:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of david.laight@aculab.com designates 185.58.85.151 as permitted sender) client-ip=185.58.85.151;
Received: from AcuMS.aculab.com (156.67.243.121 [156.67.243.121]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-222-K8o7LF4xO6exf4bKEugwaw-1; Thu, 19 Aug 2021 22:58:04 +0100
X-MC-Unique: K8o7LF4xO6exf4bKEugwaw-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:994c:f5c2:35d6:9b65) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:994c:f5c2:35d6:9b65) with Microsoft SMTP
 Server (TLS) id 15.0.1497.23; Thu, 19 Aug 2021 22:58:03 +0100
Received: from AcuMS.Aculab.com ([fe80::994c:f5c2:35d6:9b65]) by
 AcuMS.aculab.com ([fe80::994c:f5c2:35d6:9b65%12]) with mapi id
 15.00.1497.023; Thu, 19 Aug 2021 22:58:03 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Christoph Hellwig' <hch@infradead.org>, "torvic9@mailbox.org"
	<torvic9@mailbox.org>
CC: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"x86@kernel.org" <x86@kernel.org>, "clang-built-linux@googlegroups.com"
	<clang-built-linux@googlegroups.com>, "graysky@archlinux.us"
	<graysky@archlinux.us>
Subject: RE: [PATCH 2/2] x86, Makefile: Add new generic x86-64 settings
 v2/v3/v4
Thread-Topic: [PATCH 2/2] x86, Makefile: Add new generic x86-64 settings
 v2/v3/v4
Thread-Index: AQHXlAD0agS+R5TrUku3Pq8hTf8Ltqt7Yd3A
Date: Thu, 19 Aug 2021 21:58:03 +0000
Message-ID: <b09a7be32cef407cb6b6361554411bda@AcuMS.aculab.com>
References: <269701460.117528.1629210189833@office.mailbox.org>
 <796036867.117557.1629210288168@office.mailbox.org>
 <YRyzhWJrqcRZkYRM@infradead.org>
In-Reply-To: <YRyzhWJrqcRZkYRM@infradead.org>
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

From: Christoph Hellwig
> Sent: 18 August 2021 08:15
> 
> On Tue, Aug 17, 2021 at 04:24:48PM +0200, torvic9@mailbox.org wrote:
> > +	  Generic x86-64 CPU.
> > +	  Run equally well on all x86-64 CPUs with min support of x86-64-v2.
> 
> > +	help
> > +	  Generic x86-64-v3 CPU with v3 instructions.
> > +	  Run equally well on all x86-64 CPUs with min support of x86-64-v3.
> > +
> 
> > +	help
> > +	  Generic x86-64 CPU with v4 instructions.
> > +	  Run equally well on all x86-64 CPUs with min support of x86-64-v4.
> 
> How the f&%$% is a user supposed to know what these garbage descriptions
> are supposed to mean?

My thoughts.
I then looked up the link.
Most of the extra instructions are the AVX related ones.
They better not get enabled for a kernel build at all.

I wish I knew whether 'no-avx' actually implied 'no-avx2' and
all later avx options?
Or do kernel builds have to spot each new option and disable
in in turn?

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/b09a7be32cef407cb6b6361554411bda%40AcuMS.aculab.com.
