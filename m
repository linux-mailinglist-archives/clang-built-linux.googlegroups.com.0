Return-Path: <clang-built-linux+bncBC27HSOJ44LBBB4P4D2QKGQEGWPZK5I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x738.google.com (mail-qk1-x738.google.com [IPv6:2607:f8b0:4864:20::738])
	by mail.lfdr.de (Postfix) with ESMTPS id 7612F1CCB73
	for <lists+clang-built-linux@lfdr.de>; Sun, 10 May 2020 15:54:16 +0200 (CEST)
Received: by mail-qk1-x738.google.com with SMTP id o73sf6705143qka.22
        for <lists+clang-built-linux@lfdr.de>; Sun, 10 May 2020 06:54:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589118855; cv=pass;
        d=google.com; s=arc-20160816;
        b=tEvO/TeU2P5OFg3dQGTvuK2U+h+Vjo9lI3iCWZHehfg5peibMClYA84a/PWdKKJS30
         l9BSKS1IqprygqhOBAgfbeMa/wVx2/WdnT9wO70me/PHTHu+0oD10IBqMAny7fZMuyhm
         cX6L8UbMcxl2LY10S4nfvPVkUl49SAoZ6uW+MT6CnfgAd0dDjVfKszxPg9aDx1u9T6X7
         Y+83K1KJIcgS0eZmyQ4l8KSYwLi95OLnTp1treMCX4rOQ5nzn9OtTcTdaPkgfnSFQZu/
         Bqoq9btx+H5H9Qr/E/TwoUVQCaO9m1pblwo71KS0SR8vEhoYAx1XEc6os8CqF7qHwtke
         ZiKA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=2k06XkonOmTjxgdsVBv8SRke4GQ2SAw7yS2tZcDL2ig=;
        b=tZrs9DosDvhXA0yb0Xq6YCxMlSJhIyo4qYtECr9lV2q7bZ3XFaBhhfkmvNanv84PNj
         OEc1u49b72bQkaoV4OpU47K/iLZHD0iiEfNkN8LEmK2Uv6SreQvnhtu01zvGMCY8cGRX
         ZMhj4R0+iMINSp2Nc3LpcUwv2HPvm7B1sPfzJMzKD7Dk0UCcJ9yaENFkV8AiHlvDfcMM
         NalKWBtanTopKQNgXBNZBvapUQzkKpv2+UOq/VuOPoGCaEHpHZLLOkhuXDAJHBT/ah7+
         HG8d90nIDZi9bvrIVrc5zM8u+roviT2eWpJvz8gPuRK/tKz3DMhke2y6kFG5NRvB3lx0
         T+qg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 146.101.78.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=aculab.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2k06XkonOmTjxgdsVBv8SRke4GQ2SAw7yS2tZcDL2ig=;
        b=hr7XnbgQ6pBy1GcGNPDw+xQSx912359iFD3M41KTXUcmPfAXaHlbMp8gHLsK7fZaHX
         WPZKawwQNeNYK0oXpeLV/qcu8q4V2j1UeDRzv4wpaZeqJLqL2NNVMyPBSGqUmMePf9Bk
         ZNtWdO9TzQKiEDQ6Ov4Bjhc4k/X12ATXSiVwnQm+SSkidNqCdj0R2UZik+YcQkj9p4eh
         ad7QCV1+fgq7BPB6uK5MMJs4zYnsFbLWABkWf3wvjPOv7foN1jIxlmplhcHLCHhOsMha
         NQYSIYeVv35gy81LfhZNZN0fe+GiVs5BO9uyBgsLHJhaLzmiDtis5JbFXctdLXveHDyM
         cn+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2k06XkonOmTjxgdsVBv8SRke4GQ2SAw7yS2tZcDL2ig=;
        b=JcVzxG5/56/kmkWHi2sdMwRKW2ZVHrimx5C7k2Bz3dZo2v5HTGNFY7migbKjkxapkf
         TVglp14ST+dMGvfEpYARV4gH+1/qb1A0fb9odN7ieaVf2xs6YShxK9t+lDNPuzRWSyml
         G8CwvBvlwiw2oL5a92BisBuHNFo4H39AiMFFGtvrayKQigQn+c1oYJkCc64Jrmp2hKks
         OwDZnhhkEr8G81u+UM68KIFhZaBCEwKAsg5LoAXoShwyRYSJXuvhWAe7+/dmAYDIghyI
         2XxYa2ldltAGpr+7ReYJcF9Hil8ZM/Eukz3v9rPimam5Mmg9hBAL2eK7oyD+csIiggF2
         O2XQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuY8djizmUPyfTWY+AtH7qJgzcfG9rIFqUqoA/GMTa4ASJUhpYZW
	rsrbEGbPpmEkRXdlgGz1fQw=
X-Google-Smtp-Source: APiQypIcOsnR3gyiJOQSj2WjmTLcMJXNG7K4gOKB/BRpr/JRN1I8KtMjBU+AZLrft39JCySl4luySg==
X-Received: by 2002:ac8:543:: with SMTP id c3mr11566359qth.8.1589118855162;
        Sun, 10 May 2020 06:54:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:15d9:: with SMTP id o25ls4078578qkm.6.gmail; Sun,
 10 May 2020 06:54:14 -0700 (PDT)
X-Received: by 2002:ae9:dfc6:: with SMTP id t189mr10289373qkf.15.1589118854857;
        Sun, 10 May 2020 06:54:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589118854; cv=none;
        d=google.com; s=arc-20160816;
        b=CETBM/LgRWqW60i2trogej0TVlRExl2vn2Pz5RGqIPK2EU6Q8YINkki0LYnueZU/rj
         2wEYVumQS+piNN+488lBkHCC81dviKL1fykcSGhA5/iOCaetocZKwGf32/FSazz1fyYH
         JaqRrpO0Qjv16Dzrm9lQS37iKpsK4lQpErip9if1b0OLraShMkathIiiZQLeiJOiWume
         935ydIBbMYLUIU3S2RNLtloxsLT/Gqo0tToyIt43HQjIkA2hPJR/5nZPCsoUIYVb1cmY
         9XdFZOlLsxQAZEC5dkEh9WrBXQ28TELd+zNTvbATMJ/foIShGMZCDGYp75vgeqH5+P+k
         ommw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from;
        bh=rZLUYbvqscsOcxVvS95Kx38GHWyES/Ckccsq1YTqhUc=;
        b=iV30M5xkkI7A0BWs+hhBy6naSlqdiFVKaXJyu6u9V3mcb8oYBUu3uKv5kuqhb+bIm9
         UNf9Cy+s2neoNEncscVfT+JK57r4Of5Lr9q/eLmHZMYWIXiIZRfYyHE5K2oFHD7w9Y41
         bTxR7wcAn1VZFxidHIsoMO4q0ZWDcxuXUufFrzd+61b0ZaKhN7lpfFf57unw0hwLuS3M
         GeP8tixX/RF3AVfaiYWHarGwJwa9LrZRWFQ6/UeZ9HH1YVhHVT8i/GhV7ShOeFFdyaQt
         4fsXUNZA3yhrDkB/Cr0PKN551iost+ST+lcqTr7Bm2yU0CBKCtWfIncQX1jwKzTSqLnc
         kO3w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 146.101.78.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=aculab.com
Received: from eu-smtp-delivery-151.mimecast.com (eu-smtp-delivery-151.mimecast.com. [146.101.78.151])
        by gmr-mx.google.com with ESMTPS id h15si428661qtr.4.2020.05.10.06.54.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 10 May 2020 06:54:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of david.laight@aculab.com designates 146.101.78.151 as permitted sender) client-ip=146.101.78.151;
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-93-qTjZfLg2MzOw8fXQ9VV1_g-1; Sun, 10 May 2020 14:54:06 +0100
X-MC-Unique: qTjZfLg2MzOw8fXQ9VV1_g-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) with Microsoft SMTP
 Server (TLS) id 15.0.1347.2; Sun, 10 May 2020 14:54:06 +0100
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000;
 Sun, 10 May 2020 14:54:06 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Nick Desaulniers' <ndesaulniers@google.com>, Thomas Gleixner
	<tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov
	<bp@alien8.de>
CC: Jesse Brandeburg <jesse.brandeburg@intel.com>, Sedat Dilek
	<sedat.dilek@gmail.com>, "kernelci . org bot" <bot@kernelci.org>, "Andy
 Shevchenko" <andriy.shevchenko@intel.com>, Brian Gerst <brgerst@gmail.com>,
	"H . Peter Anvin" <hpa@zytor.com>, Ilie Halip <ilie.halip@gmail.com>,
	"x86@kernel.org" <x86@kernel.org>, Marco Elver <elver@google.com>, "Paul E.
 McKenney" <paulmck@kernel.org>, Andrey Ryabinin <aryabinin@virtuozzo.com>,
	Luc Van Oostenryck <luc.vanoostenryck@gmail.com>, Andrew Morton
	<akpm@linux-foundation.org>, Masahiro Yamada <yamada.masahiro@socionext.com>,
	Daniel Axtens <dja@axtens.net>, "Peter Zijlstra (Intel)"
	<peterz@infradead.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "clang-built-linux@googlegroups.com"
	<clang-built-linux@googlegroups.com>
Subject: RE: [PATCH v5] x86: bitops: fix build regression
Thread-Topic: [PATCH v5] x86: bitops: fix build regression
Thread-Index: AQHWJWcgTwstYk7YbkS06CUW1UwkZqihWGDQ
Date: Sun, 10 May 2020 13:54:06 +0000
Message-ID: <1da278190d8145da95caced0de76c0a1@AcuMS.aculab.com>
References: <20200508182835.228107-1-ndesaulniers@google.com>
 <20200508183230.229464-1-ndesaulniers@google.com>
In-Reply-To: <20200508183230.229464-1-ndesaulniers@google.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: aculab.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: david.laight@aculab.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of david.laight@aculab.com designates 146.101.78.151 as
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

From: Nick Desaulniers
> Sent: 08 May 2020 19:32
..
> It turns out that if your config tickles __builtin_constant_p via
> differences in choices to inline or not, these statements produce
> invalid assembly:
...
> diff --git a/arch/x86/include/asm/bitops.h b/arch/x86/include/asm/bitops.h
> index b392571c1f1d..35460fef39b8 100644
> --- a/arch/x86/include/asm/bitops.h
> +++ b/arch/x86/include/asm/bitops.h
> @@ -52,9 +52,9 @@ static __always_inline void
>  arch_set_bit(long nr, volatile unsigned long *addr)
>  {
>  	if (__builtin_constant_p(nr)) {
> -		asm volatile(LOCK_PREFIX "orb %1,%0"
> +		asm volatile(LOCK_PREFIX "orb %b1,%0"
>  			: CONST_MASK_ADDR(nr, addr)
> -			: "iq" (CONST_MASK(nr) & 0xff)
> +			: "iq" (CONST_MASK(nr))
>  			: "memory");

What happens if CONST_MASK() is changed to:
#define CONST_MASK_(n) (n == 0 ? 1 : n == 1 ? 2 : n ....)
#define CONST_MASK(n) CONST_MASK_(((n) & 7))

and a separate definition for the inverse mask.

The lack of arithmetic promotion may mean that the only "i"
constraint is needed.

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1da278190d8145da95caced0de76c0a1%40AcuMS.aculab.com.
