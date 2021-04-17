Return-Path: <clang-built-linux+bncBC27HSOJ44LBBU535OBQMGQEOMVGDLI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x239.google.com (mail-lj1-x239.google.com [IPv6:2a00:1450:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id D4CD5363026
	for <lists+clang-built-linux@lfdr.de>; Sat, 17 Apr 2021 15:08:35 +0200 (CEST)
Received: by mail-lj1-x239.google.com with SMTP id e4-20020a2e98440000b02900bdeea8afa4sf3904246ljj.15
        for <lists+clang-built-linux@lfdr.de>; Sat, 17 Apr 2021 06:08:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618664915; cv=pass;
        d=google.com; s=arc-20160816;
        b=qMJlYMeck2Hgwvx1ryQ6JrWZSJ8PzYFyhDBa6B+zT/AF3Qdm4dYJN9BgDt9EesJTDF
         1c3iUtMIDt9nhgmD5lO2p1LM+c8nSEpiAVQXIP23xHK14+yVQxZy0UHwe4iOlxW6qwUE
         DMDkt4IepKgqQjPKmkjeVUeJBNmAkkxonViBDC8wO8aKZC2XKNtC+GQkEtbJwyBRlN4d
         rLeMx7l2lCmC+9/LAN0TYjBjVcdjntLjBq52cwTsb/NYSZOtZvNyAgjV5Ao2M1pvP14Q
         XQwrWv3Dm+ZnAIn34IdFMn9+Q2+sy2/2SNTmn7xaWEzzfqH1vLekz5uI5FVeQ/bMlh7y
         4JKw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:mime-version
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=goLeAidrpG22FMo48t0L4NgLJHQDLouowEh4hqhdGAc=;
        b=EqWl/DHUE+jS++J54WYnzRNc8a6Rm7mCV5JvidHpRG9x5N2ORZz4mysQKk7DaE1dNB
         OijjxV/Ln/tpQNA8oS2khVjfxx9bMgMGsfKcouBgIj+S8fKNlPyJI8abDxIcMzxEfBGx
         tOf9eCsvzBiwX2b9AbyjBjXPS6d183r8CZ8kKIUK8CgtDfMT5U5o+ESFFiOenQKRD96c
         K1JURUFEkw1pnSWGmTddpDcb+k84tgQ+UWgPeBMyPocRZnvizGR1uOzNebu/B57WDCIw
         HisSqh4uXtUoOANQhmyiTry/GWU5wwRyUi5hJQxw7+iJCwGWpy2jnMyDpG3pIQhBHGub
         JT3A==
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
        bh=goLeAidrpG22FMo48t0L4NgLJHQDLouowEh4hqhdGAc=;
        b=THsHz7Jybhi0jEx3SS8Emtv60OXs6r7XnH/llSFSCpFwzhLyJPmsTtBKDsTpGZoBDY
         WY4dl52cEPJI9iGo+XkwOZ5dOJNlUNPkHx6PAjEWyGojZwvnXGIhqfwB/c2NtfTx757D
         6MBNWb0Wo2+rjkj7wsu9AmtDyS1dhG6/WzsXvp98RvksYfiD9s4rBnQB9nS24mJwLMx9
         54C6qe1gLp7S2vz5yCnJwktTuf1SGPMkTJTagE1brXrR+SOQFUGBRfqpGLdofqVFrbMk
         FMjD5J93zKmR/cOu9t8dvL/jSukWvp4PtVSrP6apH3gX3zIriPHkoY84u4mPly3TpQZE
         RuNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :mime-version:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=goLeAidrpG22FMo48t0L4NgLJHQDLouowEh4hqhdGAc=;
        b=cy5blnAm+qZxkoR/HQOqAFykrdEau04PC2hRJl3CtXnlxPPs2cudOUl7477Kac89b5
         1SOroXVFAtMf8y9xAjYF4ccXyGUB5HxXtMUkcoIfraF06hATDIYwL0m4aAAYwF06n7cO
         HTkg1AuxhgA10HfDXaxuCtKm76p9xMSnTG99Y+4LWNS18wmcmTjtKvtZ5F9kUSPYk3k1
         O68NLGtRADLIMw6YlDY9UORh6l3EFog3Q+wJNGUC3KbtC94iZl3xZH0Fsx+9Az9dWpwp
         xej7nD20W9z4iA1aWKhPP/46pPG7wdvKJzkUX9dciIR6wWuG+hfBWTFslSiXlUq6o5RM
         GVUg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530+ihhIzuloI+bvTk/+KBvJbPjZEtUbBTSfTaA0G2RbQ7famZBo
	ZWwncwqu3d8PUCaTPRvpHq8=
X-Google-Smtp-Source: ABdhPJwflazRd6Ef+aqTc9esIcbXxwcWpA0YDHaKRDWJU1E/lZB50AjDBEwcOY1naWuUtangX9mVLg==
X-Received: by 2002:a05:6512:360a:: with SMTP id f10mr2473758lfs.565.1618664915375;
        Sat, 17 Apr 2021 06:08:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:7807:: with SMTP id t7ls403348ljc.1.gmail; Sat, 17 Apr
 2021 06:08:34 -0700 (PDT)
X-Received: by 2002:a05:651c:10f:: with SMTP id a15mr1622234ljb.153.1618664914380;
        Sat, 17 Apr 2021 06:08:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618664914; cv=none;
        d=google.com; s=arc-20160816;
        b=Q2oZAPwmTg9UlnOpxWGuJSxCeKmqxPIXRBh7Gnjdt4Obr6Es3hy6lvJAp9LIWVle9S
         LesSXHiRXcvzS+Eugpjhz1t2ZEhOOMn+8UGklmgMJ85tX1vEmVciLuyXxDJ6A17L8NX0
         mM+qdH/KWSu0jiEd1pi/EKbbUuObBmhQQYR7/L94f8O8K9lnNUQ8jWMnRxzw9IbMp+Ur
         LYmm8olcxwY6q1rwY4yGrV5UBgi2PbuYdfyd9KVmAT2ExIvnwK+93qv+JHCK1AQehZz9
         yjmkxsHBdK8BIlaoaidh+QY4IB6ZpFLPjkfNciEB63fR+sKXxKOSkBMpVAu0rLS2UkNE
         iHqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:mime-version
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from;
        bh=fwx/uxYr8snaY/9JBVgSY+uE+az+d0gcXhNU9s+CmP4=;
        b=axpuUDYRk+vrOSKedPuuyRyKHKiTEtWC1XwjWpUSGbUbesQ7h3JDAqWNc4O6W4/T1a
         Mcpdy1FztOAWN1gKG0Ec7JrNLIXVJD/F/B6KHkrxgMiNIXnGzHiUvAtb0AlocIMa3rA0
         OzH3+fp6dkpugm1vXGR/gvsxmhdzvJaZ6aDVdbDrdO6pFp61SSYCiEYF2C6piv4qR6vO
         Z1B0EOnhF1ITnZkOAymrCvsSSyWa9OW4XVY5J1lMLziyWJqX6Q2t/gvtFq4XCxZmJrmM
         zdEJ57qJ9gVgaLqYjQ8jdJWhx2NzK9LxRH3Oo6Pam6QAbSUQ1XqMYAQ1zJpjcbi/vvGL
         uYbA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 185.58.85.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=aculab.com
Received: from eu-smtp-delivery-151.mimecast.com (eu-smtp-delivery-151.mimecast.com. [185.58.85.151])
        by gmr-mx.google.com with ESMTPS id n13si500144lfi.5.2021.04.17.06.08.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Apr 2021 06:08:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of david.laight@aculab.com designates 185.58.85.151 as permitted sender) client-ip=185.58.85.151;
Received: from AcuMS.aculab.com (156.67.243.121 [156.67.243.121]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-40-NxhZsd9HMzmFc3zLPSZr6w-1; Sat, 17 Apr 2021 14:08:31 +0100
X-MC-Unique: NxhZsd9HMzmFc3zLPSZr6w-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:994c:f5c2:35d6:9b65) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:994c:f5c2:35d6:9b65) with Microsoft SMTP
 Server (TLS) id 15.0.1497.2; Sat, 17 Apr 2021 14:08:30 +0100
Received: from AcuMS.Aculab.com ([fe80::994c:f5c2:35d6:9b65]) by
 AcuMS.aculab.com ([fe80::994c:f5c2:35d6:9b65%12]) with mapi id
 15.00.1497.015; Sat, 17 Apr 2021 14:08:30 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Grygorii Strashko' <grygorii.strashko@ti.com>, Ilias Apalodimas
	<ilias.apalodimas@linaro.org>, Jesper Dangaard Brouer <brouer@redhat.com>,
	Christoph Hellwig <hch@lst.de>
CC: Matthew Wilcox <willy@infradead.org>, kernel test robot <lkp@intel.com>,
	Linux-MM <linux-mm@kvack.org>, "kbuild-all@lists.01.org"
	<kbuild-all@lists.01.org>, "clang-built-linux@googlegroups.com"
	<clang-built-linux@googlegroups.com>, open list
	<linux-kernel@vger.kernel.org>, "linux-fsdevel@vger.kernel.org"
	<linux-fsdevel@vger.kernel.org>, Michael Ellerman <mpe@ellerman.id.au>,
	Benjamin Herrenschmidt <benh@kernel.crashing.org>, Paul Mackerras
	<paulus@samba.org>, "linuxppc-dev@lists.ozlabs.org"
	<linuxppc-dev@lists.ozlabs.org>, Linux ARM
	<linux-arm-kernel@lists.infradead.org>, "David S. Miller"
	<davem@davemloft.net>, Matteo Croce <mcroce@linux.microsoft.com>,
	"netdev@vger.kernel.org" <netdev@vger.kernel.org>
Subject: RE: Bogus struct page layout on 32-bit
Thread-Topic: Bogus struct page layout on 32-bit
Thread-Index: AQHXMqLVEv6dx6LXIEqsc09GLT7Ydaq4r3RA
Date: Sat, 17 Apr 2021 13:08:30 +0000
Message-ID: <e8247c8d079d45928990031870db7a9e@AcuMS.aculab.com>
References: <20210409185105.188284-3-willy@infradead.org>
 <202104100656.N7EVvkNZ-lkp@intel.com>
 <20210410024313.GX2531743@casper.infradead.org>
 <20210410082158.79ad09a6@carbon>
 <CAC_iWjLXZ6-hhvmvee6r4R_N64u-hrnLqE_CSS1nQk+YaMQQnA@mail.gmail.com>
 <ab9f1a6c-4099-2b59-457d-fcc45d2396f4@ti.com>
In-Reply-To: <ab9f1a6c-4099-2b59-457d-fcc45d2396f4@ti.com>
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

From: Grygorii Strashko
> Sent: 16 April 2021 10:27
...
> Sry, for delayed reply.
> 
> The TI platforms am3/4/5 (cpsw) and Keystone 2 (netcp) can do only 32bit DMA even in case of LPAE
> (dma-ranges are used).
> Originally, as I remember, CONFIG_ARCH_DMA_ADDR_T_64BIT has not been selected for the LPAE case
> on TI platforms and the fact that it became set is the result of multi-paltform/allXXXconfig/DMA
> optimizations and unification.
> (just checked - not set in 4.14)
> 
> Probable commit 4965a68780c5 ("arch: define the ARCH_DMA_ADDR_T_64BIT config symbol in lib/Kconfig").
> 
> The TI drivers have been updated, finally to accept ARCH_DMA_ADDR_T_64BIT=y by using things like
> (__force u32)
> for example.

Hmmm using (__force u32) is probably wrong.
If an address +length >= 2**32 can get passed then the IO request
needs to be errored (or a bounce buffer used).

Otherwise you can get particularly horrid corruptions.

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/e8247c8d079d45928990031870db7a9e%40AcuMS.aculab.com.
