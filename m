Return-Path: <clang-built-linux+bncBC27HSOJ44LBBQM2UD6AKGQE2U2N2VQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43f.google.com (mail-wr1-x43f.google.com [IPv6:2a00:1450:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 3691828EEC5
	for <lists+clang-built-linux@lfdr.de>; Thu, 15 Oct 2020 10:50:10 +0200 (CEST)
Received: by mail-wr1-x43f.google.com with SMTP id 33sf1364284wrf.22
        for <lists+clang-built-linux@lfdr.de>; Thu, 15 Oct 2020 01:50:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602751810; cv=pass;
        d=google.com; s=arc-20160816;
        b=G562A03VnIme2eeSUeRdMFFa7kxsxsS3Y9lkP1MY1NFPb0ow6XgX1YqOOhOxOqqg5K
         H4BydaErayYVQ7giE0wUlkitcpxCOmOqvrAv7pA7wY5LyHNqry74NrdWjx0II5K2ZTwG
         to8fMX2R2x3tufDu0QjPDsvBETwFQNFbpKRM+idh14+l74BmXIHaV5zbRJKRMmRdt4v5
         /Z/AgNsYPbEoTmY9l9WDfQbtUvJDSQXfkv/epGtdXpZDUHG/P20/3sIdoPxSyWQC0nYZ
         9fM71ua+E1tEU/2jQ0CNKYHfaP6Ea1eDVB8tf4lZSrkp2f92SFODUByCdp6DPQ7u8h1w
         9vWA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:mime-version
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=HZujSl7tRdgGQ1zwn85VAUzw63abzLgwBD6Cdqjo85k=;
        b=bVfRoywAiagJl2H8K2nU5IelmyYMAZ/h6AO53QcP+OlcdVIhMltLrUcZ12wtNaKWAU
         JAHauc8nx0+HjupyHhfmV+BRUSyHQlItplT5kIjqD17xoAuXYcw9j/3Z8Pd74epBYz4L
         zWFuIKfezOTJzOQsnvxV+g2EBqAbzudCLYPl2hhQT+HUHrFgiJfFUyiEB7/ZirSOtJGe
         r6tPITI2T75H4RKfr0qCgWdHTiEJLYejtMqMx+cpEvaMxOc+9984G9Uc965rpfYxh6Ap
         w/igtWD61Y/M0jsVH1JYypjM09N3HmK2fpnOVb4rVfWvDeG2zOKIPGrKtScGkxNcN+yI
         bb6w==
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
        bh=HZujSl7tRdgGQ1zwn85VAUzw63abzLgwBD6Cdqjo85k=;
        b=SWgSDft07tlhCa/6QI9Vk+ddwJtoKWG0oNoxhXy/a9H0UWevWxGxYmSa0cYfk6r31Y
         8HbQo6cVIe5h/1yKgqVRG+s37uDPGXgBz6Wenz0cEsrMvfcIbOL0xCiUsWRShdWSfoMb
         nCj+HDoEYFjoaoTwY9h7YJHfTmXSFQDGVaadUr/3Z33AjTemfTmbdfvC0Sxyb3WhhqXu
         Ipyc8h5udjRhJ/NlK8GLfteximcC9gtK2RF6DWoIQ/VuUUSGtp28R0IJEwMLkzkDtb9V
         CKrhh0ZXMx6b40mG2LwLH/kPpwCQUZINbLlzFlOZPP2kbY6iPRuYorLpmEXiWCT+tj+1
         gnyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :mime-version:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HZujSl7tRdgGQ1zwn85VAUzw63abzLgwBD6Cdqjo85k=;
        b=LMvBE/2zrzrHBCpKsM2fjKSJKWveK54FW2OFPRjnPD+BenPYEKAO4pPCWRHeXq0Tl1
         TEVtXDIPk1wLvQq7H6noeJ7e7dQ5FD0j2iuhYFJTrttnXin6Gk4ZWnRW1YdKzhf6sPAp
         2UAllLHGJrUZXAeTXoBPn6obc9UwrlkS+BeTpCZyC6pqWWgBn0mL0EL9qferso990be8
         ieAi9LPefolaO6g3wsKzUGVjgEx5oEKRSEmE4D9bBtSkYAN6hlyhs9slhC24HTIji/+L
         SqwrELXnkVYxN6vEKgEH27YqeZCJuiv2ZWg11DuDCUhfewYi2bcVcQmEfmt05v1EsFx1
         Fe8Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531ZcrxRteh2O9jgJN1z3V48rj0RzJRn+P3Up1oTBxpFoBwvltu7
	cQM5pXcRKVq84lGtOa/jeSs=
X-Google-Smtp-Source: ABdhPJyRiLHGYXj3mh5NAMGJiiypLUnSulNv7YNdktagzdXmaIQv+E4+8pLpJludyUqXipFwgMlw0A==
X-Received: by 2002:adf:fa05:: with SMTP id m5mr3311652wrr.57.1602751809898;
        Thu, 15 Oct 2020 01:50:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:960c:: with SMTP id y12ls1099924wmd.1.canary-gmail; Thu,
 15 Oct 2020 01:50:09 -0700 (PDT)
X-Received: by 2002:a1c:60d5:: with SMTP id u204mr2979690wmb.46.1602751809038;
        Thu, 15 Oct 2020 01:50:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602751809; cv=none;
        d=google.com; s=arc-20160816;
        b=cnhWhNL0nwi7iblJcNXnpPdRJOm+vQrrX86CcWwkbgaqCi9yzxCZL8ajkCF6tMGOiM
         xC3LBJ4ahGac0z+dISHhl+2NZQg1OeKYmPpsf3dR+7uXEuc6C5cqxJ73KBZt3KYorbZL
         hohHoiw5kfMMrznJTSJ+LW76WQV4GxV5kjSmLr1gmL4NYMCh+82P5GIvYUpmVeqJ5Oj7
         Lis6Jhn7lM7chInIBTOdcS5jz6StChCGZmi/B3yRUWctl4cyNMxCGuET5xomEAPk7rgm
         HG8g+8NezKYU2+SKzk2dQp1g1OPeOrRMUNUKnB/KBE0Ri/wxVRbcAWziJl/DYazJna8A
         GSUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:mime-version
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from;
        bh=YQ04BnC7gctkd+MpOmZIuwFghKbguk1XOHn4F0t4ZXY=;
        b=T8Vz0hXHPpzKNMZV6ynrkv1/3j4MNUraT2o8nNbRAXYZjOH9yO5jufwGAp2TaurApw
         JDLmR8pJ+zA6VS02/tLQDosstIsMhhPUe2vZoW6NEWH+jQ51zAWwKq28iuBDFwRVZpE/
         A8Vw7xf8AIbj5Q/nXFLb+j7uHwfQNXY5YApSnsLnnQtlvQ/bThiKriuWY6PuAyMEVLaN
         C0zbk23tXKMyTjJ/Jx5oeeZssw5pE8lqsC2fE488rjoyw/jnsyhOwnqcH0/s37VbcAb+
         /U/x7l86r8PozZITT/b1VTRDTYNMrD+b9t+tFAe5Z+olkcbXKt03Xm9om6xZm2YE0Mlm
         RxFA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 207.82.80.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=aculab.com
Received: from eu-smtp-delivery-151.mimecast.com (eu-smtp-delivery-151.mimecast.com. [207.82.80.151])
        by gmr-mx.google.com with ESMTPS id j5si59132wro.2.2020.10.15.01.50.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Oct 2020 01:50:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of david.laight@aculab.com designates 207.82.80.151 as permitted sender) client-ip=207.82.80.151;
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-86-52EWdwKJNMakoJzTZQ3pHg-1; Thu, 15 Oct 2020 09:50:06 +0100
X-MC-Unique: 52EWdwKJNMakoJzTZQ3pHg-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) with Microsoft SMTP
 Server (TLS) id 15.0.1347.2; Thu, 15 Oct 2020 09:50:06 +0100
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000;
 Thu, 15 Oct 2020 09:50:06 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Arvind Sankar' <nivedita@alum.mit.edu>, Nathan Chancellor
	<natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>
CC: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH] compiler.h: Fix barrier_data() on clang
Thread-Topic: [PATCH] compiler.h: Fix barrier_data() on clang
Thread-Index: AQHWonC0tkOz0iWHskSkJuRX+uCeV6mYVxvw
Date: Thu, 15 Oct 2020 08:50:05 +0000
Message-ID: <1653ace9164c4a3a8be50b3d2c9ff816@AcuMS.aculab.com>
References: <20201014212631.207844-1-nivedita@alum.mit.edu>
In-Reply-To: <20201014212631.207844-1-nivedita@alum.mit.edu>
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

From: Arvind Sankar
> Sent: 14 October 2020 22:27
...
> +/*
> + * This version is i.e. to prevent dead stores elimination on @ptr
> + * where gcc and llvm may behave differently when otherwise using
> + * normal barrier(): while gcc behavior gets along with a normal
> + * barrier(), llvm needs an explicit input variable to be assumed
> + * clobbered. The issue is as follows: while the inline asm might
> + * access any memory it wants, the compiler could have fit all of
> + * @ptr into memory registers instead, and since @ptr never escaped
> + * from that, it proved that the inline asm wasn't touching any of
> + * it. This version works well with both compilers, i.e. we're telling
> + * the compiler that the inline asm absolutely may see the contents
> + * of @ptr. See also: https://llvm.org/bugs/show_bug.cgi?id=15495
> + */
> +# define barrier_data(ptr) __asm__ __volatile__("": :"r"(ptr) :"memory")

That comment doesn't actually match the asm statement.
Although the asm statement probably has the desired effect.

The "r"(ptr) constraint only passes the address of the buffer
into the asm - it doesn't say anything at all about the associated
memory.

What the "r"(ptr) actually does is to force the address of the
associated data to be taken.
This means that on-stack space must actually be allocated.
The "memory" clobber will then force the registers caching
the variable be written out to stack.

If you only want to force stores on a single data structure
you actually want:
#define barrier_data(ptr) asm volatile("" :: "m"(*ptr))
although it would be best then to add an explicit size
and associated cast.

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1653ace9164c4a3a8be50b3d2c9ff816%40AcuMS.aculab.com.
