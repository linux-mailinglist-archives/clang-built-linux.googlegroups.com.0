Return-Path: <clang-built-linux+bncBC27HSOJ44LBB7WK4GBQMGQESVFXISY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23d.google.com (mail-lj1-x23d.google.com [IPv6:2a00:1450:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 81400360FE5
	for <lists+clang-built-linux@lfdr.de>; Thu, 15 Apr 2021 18:10:39 +0200 (CEST)
Received: by mail-lj1-x23d.google.com with SMTP id a4-20020a2e98040000b02900b6af7f347dsf2003385ljj.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 15 Apr 2021 09:10:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618503039; cv=pass;
        d=google.com; s=arc-20160816;
        b=zw0D1/F71Eet/6poM5Fjtri/EM4cm/el0xAmqpA8WpN45OXMlvy9lga1j5eudjBjOJ
         5bo4TBVeohDtfuhVhu2YpZz/CMEiyJgjABrGtOTwqxEzZCjt/sSZuEcOzwJSw55R67+j
         a9WDCE9+WWciRMlFW1vfNNTAp45G8L+cZ/O/BYdRURjZI00YwM6VGAl49thlAw0uyJtM
         /2BDvfD/U5CZQYVpRUHorttKXdrrxiZfB2NqXphNvQYQuZ2FUOPBFCrn6D7KtmajyUF2
         9Tb9RNtcveMEgA05uvSNAxIw20TBa7/XXVaERmZo9+2EA2JSC4lpHxdzwfgDKEQWI7yS
         hrSw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:mime-version
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=x5VPnmyFfNMQwU2rnSxd6sbPOP3OE1d6o2cPJX2yOqE=;
        b=PtuztuDXMfDHPRo3c4pXiNJiNJ22roM7XV++xZAAWbnRu+muGJORt7rEClIRHg0DIs
         mOAUfUSW8idK1RasPPNKWCrPPbgZ5JFwSqmJjWiuNIJ2nYECgQi25o+J1cuJVoKtwZTQ
         UEvd4QaGYpoZDzRgG+xLtZthH7kT48tvqL1HidtlyF2MavVLfXzDkeDlbEfes937+PLd
         PVwIpvDLPR2bjL6s+4Z5UHNF6FDnZuIq53V99KucwpEP10RHe4Hj9VNcSBUoNQH2UnoC
         16SLRpMl9e+UoRhOc2L1G3TzrE+B4XzJN7jaDlPKarcDPU7Wzrd6RTalqkmKLL08e7zW
         cWXA==
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
        bh=x5VPnmyFfNMQwU2rnSxd6sbPOP3OE1d6o2cPJX2yOqE=;
        b=A43ODOaTP8qRrj7+ncO6LJ53PeG7fzbv2r2+z/29yDsU6J2smxx6RL62adL0QOxrOZ
         TpDIWF+kQArfN6zxUortCC44IElQM0DhLZ8ND9SlmhtHkXZpP/YodwOPwoNgBJsnX0nD
         Te24zPezQMW5/C4CYf9IO9aGy2Jg+8Ip7XFJMptuXKnUEf0yG3+LeqCGyaZxyouIUNfu
         gM6BAEkbgZ/OkvZmDr27KSgRzx5K+tD3ci/QHnAQzFqmZNGY5gwoj/KvC3FoGgttrXDv
         hnG9UXyuDQAaofkBsgzseSp/8rk47MloSAgcLMM4h7J/NBs05hTMuoBzX1o+1pq+OfCg
         Q/cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :mime-version:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=x5VPnmyFfNMQwU2rnSxd6sbPOP3OE1d6o2cPJX2yOqE=;
        b=ukywqy0BPl7q/BbSafXSSJ1z84V73Jq5+oxOlB0I/BJnXmF5TMr1xHWA1vA/xRuKGB
         CLegTOxzWYx6NlkANV9ov8vWNexcxr8HdYm+sLlophBI2EyHa3NMGa45X3CrT+/pr0op
         bOMFxKC45i2rs9DnQrwlv37QYAYHJXQTaVWwUKe6csYXM8WLcuinfDMOXzhNKABqvAeO
         y/iBfu0m5klJyInUXisGbTZJjnPoiEggh8jOWunLhTgcFSO+uk/zcVdIhRHBaG0o30ux
         vY+iibadSJ346gXJUitaRqHk76ARjiljmV1jJfeG97AzgQA2+KRJvPTU+E0AUu4BwCZQ
         g4Iw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5324kJJYtjcTP2ViiXEjN5n83NW+hQKVf8eSSYfWyVSVyPo6fRut
	H0ET8lkGKlMlx4ZJAA0M8zA=
X-Google-Smtp-Source: ABdhPJxWvBXYM9ujNO9CSJCrQnE8uIl+u8ySBBKVFZecDkOiUTA78O8y7N0pxotRKf7JS3kHjGDmuA==
X-Received: by 2002:ac2:5fa2:: with SMTP id s2mr3011865lfe.486.1618503039067;
        Thu, 15 Apr 2021 09:10:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:6c2:: with SMTP id u2ls1477760lff.3.gmail; Thu, 15
 Apr 2021 09:10:38 -0700 (PDT)
X-Received: by 2002:a19:6a16:: with SMTP id u22mr2867706lfu.356.1618503038036;
        Thu, 15 Apr 2021 09:10:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618503038; cv=none;
        d=google.com; s=arc-20160816;
        b=Do4TuT8CzM2Xi7eIF7uOqr6U9q9OrnZ0VI7kccYAKoZxijF6C+8bPttLjuqVXACUBu
         0YJj9CkJzDF6inen4MgDfIX8VKuemWge/r9RyAJlsU0h7mcZdld/6oxUN9WkLVjFB68j
         +Pq96cFWFovACyMqlP//PCnPfbfr4NkDeuvSu9LSGhSxZta1pOM7Z2QC3hUD6QDT1jHj
         +Kth9tF0S+hW8jFXlLVAvOaKkesiuo61NIpiZmSj8+K8hLsVxAtvctyOYDrYtNzF3PDG
         ehWNMSpdifcP2SGiJj7olUp4j07WvDMKgdXhzDiYe8IJE5TPPNDbpfzSQ6y7/UlcyvDK
         y2Dw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:mime-version
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from;
        bh=ss5l6F6E/KQpGul3AXtMGcASLTVi4SDX5X2m865WMbo=;
        b=IeYT7qPubKNV5EbNXG/YH+EhlghpcscsHtwH8AXFfYHjQoG6LEC5ZKY5GomJkUPcw8
         s9mrnLQVlh5s+GHW+dOWP9UXKtgiG205uEVeqqYGXZHgZ3VHTlpgJfaWPdM8MeSLEPXB
         Wia/K4mj85ewUK5r6tzKLENPc3C3Hf0MyqjXBZZ5bIEMdpTaYGG6iscX0UKh4rbmosTE
         MzHMsxl0+Cgm9LDqEhxPbcOK5OufLlMNYtYAw3tkMafPnLSSPEJQmHbKHzG6CeOmpDUU
         M092WabfAptB8s+Tj1kfvyIzoOnCGRsa/i8BLTtAQmwEpquKq7l3xuN3RA8OSS0Q9MY/
         uKbQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 185.58.86.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=aculab.com
Received: from eu-smtp-delivery-151.mimecast.com (eu-smtp-delivery-151.mimecast.com. [185.58.86.151])
        by gmr-mx.google.com with ESMTPS id n13si175705lfi.5.2021.04.15.09.10.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Apr 2021 09:10:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of david.laight@aculab.com designates 185.58.86.151 as permitted sender) client-ip=185.58.86.151;
Received: from AcuMS.aculab.com (156.67.243.121 [156.67.243.121]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-51-HfpTzEDNMauzyMEgPNRP_g-1; Thu, 15 Apr 2021 17:10:34 +0100
X-MC-Unique: HfpTzEDNMauzyMEgPNRP_g-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:994c:f5c2:35d6:9b65) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:994c:f5c2:35d6:9b65) with Microsoft SMTP
 Server (TLS) id 15.0.1497.2; Thu, 15 Apr 2021 17:10:33 +0100
Received: from AcuMS.Aculab.com ([fe80::994c:f5c2:35d6:9b65]) by
 AcuMS.aculab.com ([fe80::994c:f5c2:35d6:9b65%12]) with mapi id
 15.00.1497.012; Thu, 15 Apr 2021 17:10:33 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Niklas Schnelle' <schnelle@linux.ibm.com>, Arnd Bergmann <arnd@arndb.de>
CC: Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers
	<ndesaulniers@google.com>, "clang-built-linux@googlegroups.com"
	<clang-built-linux@googlegroups.com>, "linux-arch@vger.kernel.org"
	<linux-arch@vger.kernel.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "linux-s390@vger.kernel.org"
	<linux-s390@vger.kernel.org>
Subject: RE: [PATCH v2 1/2] sparc: explicitly set PCI_IOBASE to 0
Thread-Topic: [PATCH v2 1/2] sparc: explicitly set PCI_IOBASE to 0
Thread-Index: AQHXMfQU/v+fCAtEaUGryS2VPWnQoKq1vegA
Date: Thu, 15 Apr 2021 16:10:33 +0000
Message-ID: <af5f3d8390654abda295860c756cb687@AcuMS.aculab.com>
References: <20210415123700.3030728-1-schnelle@linux.ibm.com>
 <20210415123700.3030728-2-schnelle@linux.ibm.com>
In-Reply-To: <20210415123700.3030728-2-schnelle@linux.ibm.com>
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

From: Niklas Schnelle
> Sent: 15 April 2021 13:37
> 
> Instead of relying on the fallback in asm-generic/io.h which sets
> PCI_IOBASE 0 if it is not defined set it explicitly.
> 
> Link: https://lore.kernel.org/lkml/CAK8P3a3PK9zyeP4ymELtc2ZYnymECoACiigw9Za+pvSJpCk5=g@mail.gmail.com/
> Signed-off-by: Niklas Schnelle <schnelle@linux.ibm.com>
> ---
>  arch/sparc/include/asm/io.h | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/arch/sparc/include/asm/io.h b/arch/sparc/include/asm/io.h
> index 2eefa526b38f..100992ba1317 100644
> --- a/arch/sparc/include/asm/io.h
> +++ b/arch/sparc/include/asm/io.h
> @@ -1,6 +1,10 @@
>  /* SPDX-License-Identifier: GPL-2.0 */
>  #ifndef ___ASM_SPARC_IO_H
>  #define ___ASM_SPARC_IO_H
> +
> +/* On LEON I/O Space is accessed through low iomem */
> +#define PCI_IOBASE ((void __iomem *)0)
> +
>  #if defined(__sparc__) && defined(__arch64__)
>  #include <asm/io_64.h>
>  #else
> --
> 2.25.1

Not sure the comment is informative enough.
Maybe something like:

/*
 * On LEON PCI addresses below 64k are converted to IO accesses.
 * io_remap_xxx() (whatever is it called) returns a kernel virtual
 * address in the PCI window so inb() doesn't need to add an offset.
 */

That'll save the next person doing a lot of digging.

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/af5f3d8390654abda295860c756cb687%40AcuMS.aculab.com.
