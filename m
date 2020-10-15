Return-Path: <clang-built-linux+bncBC27HSOJ44LBB67UUL6AKGQENT4KSUI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x239.google.com (mail-lj1-x239.google.com [IPv6:2a00:1450:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id 47D5428FA69
	for <lists+clang-built-linux@lfdr.de>; Thu, 15 Oct 2020 23:09:16 +0200 (CEST)
Received: by mail-lj1-x239.google.com with SMTP id f3sf154157ljc.17
        for <lists+clang-built-linux@lfdr.de>; Thu, 15 Oct 2020 14:09:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602796155; cv=pass;
        d=google.com; s=arc-20160816;
        b=VtvP6nFYX4go1RwqWzxhLG+Kp8nLvOFIKRB9DOjvmH0x4LW7Y5VhT5qAv+wGvJOvBZ
         dFZK6lWsb2Rne35oXgZKE9qBeKNMgKZtG+ekxJCVg4wDoBMSY5NMxFHqjSOuszr58ilK
         9T8hAPaTJouzFP+YVVN/4UEEeuNvGfFfxvm1910PhurrfYGuUmG08bsKdoLTcKdI/eFT
         LoeNkjm8hESl02IRj3jvB0NmEmY8P2E7kalLhWbXvNwJzNsBzad2pi3MYZP2h/ag//7T
         8W6MyKA6wmSX3UX5anRckBcpHQtI5YzTaOxLWXfZU6xD6GN2lCVvusJyFMCrdofXqZpc
         S1WA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:mime-version
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=Gjvv4QUjv/wO27R+escIHw5+em5IQfLeBTTag+0i2dQ=;
        b=fH89s+zZqXmpzz0MfQKyePMZ0oL+fdXwB5ujzvTCnRW4kZclU2TbXMKrsUPAMbgJ4A
         kFCdbOn06lSkBi8EGS0O7AaOEH8F+Q72fOYsg3h+Ksz/yx+VlRFQZM34PFhXLOzpJLUb
         unWXcjHU917QRLhWGO/UYJohXpXdw69CPjo46csiq26DJn/00Rxse/YOdcMPfdXnhRg8
         vh24XOlv8CVLtd3MeKaZvEOsgLNMrRnU0Fmmm4xglvE9J7rFH03o9qgFGnr/6nZsF8Nj
         UCPTRBRKzE9Bit4Ea3eeKiZCrQ/Rxw4w46Lrpt+o1rJ2YbX5XGr5ACq16PEWHxTZXHV9
         DMTA==
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
        bh=Gjvv4QUjv/wO27R+escIHw5+em5IQfLeBTTag+0i2dQ=;
        b=sHVHaw4TvBuFYY7iLTWEpOmH01HHI7AuuAtY6Kfi+kkiforbTNI/wiLkcg+JMa2Wcy
         NTCFa2qEVsjQVbky+roLaK51OgxgYkjgGI26Pccwh2kGYyAc2F6VrxVOwJw2ZKU3qGEV
         xJIZFbylESfH+hyywsGGm+aV3vyU08i0Z2akhjLzC/6IUpO5NdIRhnMY0hqanf5Wxoqk
         2eiTAHfZsxy2IgM6rVo3hZ7DmoWML0hEV5ypxx9U4BTk1HrNLlvhFl/6k388J2rciisb
         cGt40YOX1LqzABnKl4q3E1w2qrWrxIzFymppD7PszendSomsXNLC/DUcmSx+rLXSKGvI
         KNsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :mime-version:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Gjvv4QUjv/wO27R+escIHw5+em5IQfLeBTTag+0i2dQ=;
        b=PORytBI4/aFdIPXD0twMwj4uQB1wDgiI71oLW91CpDDn+y3TXVBXs1b3atGmS4+mDX
         uyIMYZJbx+jJqiKcW28ck8L00IegIvRzc0WuAL/+/EdYL3g2gYUG45tL7rIogxdIS/uY
         NxdyzVqcN2g5zoPEQfYHJRyl2ILDyly+ig13nAS7KKjFXco6+PllACR1scwxLjiTrTIh
         GFg6/43E1BVN+SnDHZ0h6IXNC6dYMWU5mS2kS66zj9dUqyuohMuWu0+0FM11VY5yzu7t
         PmNUvaTCH3tbRSXF7omR6jAE1zKDy5TlSd7FLDHuf9Qf3kpP+z+GihTRrO2xyuPvm/EO
         bizA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533dxN5y4m2iZ65YOXGBmF2L/umyfgLuM4T1RED2o6K5/mmXH84d
	RlEVqAYWtYHq0OdAHt8RjkA=
X-Google-Smtp-Source: ABdhPJy8zRsfbaOOrQY5v934lU2405437GLjFioXIv3CsUQDUNRKHyVmx2BsylV9ZhhXT+GardAqdg==
X-Received: by 2002:a2e:3e1a:: with SMTP id l26mr251372lja.63.1602796155756;
        Thu, 15 Oct 2020 14:09:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:5e61:: with SMTP id a1ls158853lfr.2.gmail; Thu, 15 Oct
 2020 14:09:14 -0700 (PDT)
X-Received: by 2002:ac2:5294:: with SMTP id q20mr164572lfm.538.1602796154720;
        Thu, 15 Oct 2020 14:09:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602796154; cv=none;
        d=google.com; s=arc-20160816;
        b=UMAvRKeIPZpUlHa/HtDbTtmmtxwNVI1IebKTq4K+A5ES5t/mimHGbtsyrVlw8t4BvU
         wvy1kVo0JWPY3BEyih2RxDF20o939W84WjiO7JkKXJkFqsu8xrrh+15IkKrjOdobKT0M
         iUKHJ5TK88A4itXXkDQtYg1xXyxcKwRH7C0vu4IJB1Hz8jVCSMqNsSUwc3Wfm71M9Iky
         AkO+dFG6kjaNayFCXGP5tu3Rf8bwgpXtfaq9JkpLJ0wiyGGhErC5JS9Toiy5MobwnUjd
         25L2seBdRcXQp4syEZUe/YEqvhdVPVl421Zr0x0ad2WathMTVesQUrllJ+VuaBTRk5+2
         KPgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:mime-version
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from;
        bh=32H70wQf2skNtJR5MdNLxBzn8U8mBqCB2QeFkvJ/awg=;
        b=yWVpots/gJIqJX20yc/oiTGUL9uuV7fQFOXou/jCM6wjfAXX3sTzQaP4m9gKYL5Kif
         +AqzwBKui8wnb7HuzGjqhcXnsNI+RBcbfJravGDIzY/4FZFGC4tNstEo7XZxkBHdVxZ4
         zCBWUcwlKG9onNB/pMTf+u/5/PzWPVgEi0Up9vj2VhSl/u+tk9URLtjJ87sb+nkBcCxC
         AK48wMKqlDadRVbjcbRqGHtw9fteVmOpw7YgQmQdYAlPZ3GtDG//Raz5uBRzt5xD9whb
         +QndyVeCHaGsuq7uc7FjMAWC4Ovb0IWEOTPQYG1BvYnmX7qMwrTtofBum9SPkemXkq0w
         z2Zg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 185.58.85.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=aculab.com
Received: from eu-smtp-delivery-151.mimecast.com (eu-smtp-delivery-151.mimecast.com. [185.58.85.151])
        by gmr-mx.google.com with ESMTPS id r22si6275lfe.0.2020.10.15.14.09.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Oct 2020 14:09:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of david.laight@aculab.com designates 185.58.85.151 as permitted sender) client-ip=185.58.85.151;
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id uk-mta-2-EK-J9T8gPN6LLxYYxqipNw-1;
 Thu, 15 Oct 2020 22:09:12 +0100
X-MC-Unique: EK-J9T8gPN6LLxYYxqipNw-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) with Microsoft SMTP
 Server (TLS) id 15.0.1347.2; Thu, 15 Oct 2020 22:09:11 +0100
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000;
 Thu, 15 Oct 2020 22:09:11 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Arvind Sankar' <nivedita@alum.mit.edu>, Nick Desaulniers
	<ndesaulniers@google.com>
CC: Andrew Morton <akpm@linux-foundation.org>, Kees Cook
	<keescook@chromium.org>, Nathan Chancellor <natechancellor@gmail.com>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH] compiler.h: Clarify comment about the need for
 barrier_data()
Thread-Topic: [PATCH] compiler.h: Clarify comment about the need for
 barrier_data()
Thread-Index: AQHWox7rJ5hC7vlNqk+GpAb0LFktmKmZJEvQ
Date: Thu, 15 Oct 2020 21:09:11 +0000
Message-ID: <72958fd25e33490181b0df9413ec08b4@AcuMS.aculab.com>
References: <CAKwvOdkLvxeYeBh7Kx0gw7JPktPH8A4DomJTidUqA0jRQTR0FA@mail.gmail.com>
 <20201015181340.653004-1-nivedita@alum.mit.edu>
In-Reply-To: <20201015181340.653004-1-nivedita@alum.mit.edu>
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

From: Arvind Sankar
> Sent: 15 October 2020 19:14
> 
> Be clear about @ptr vs the variable that @ptr points to, and add some
> more details as to why the special barrier_data() macro is required.
> 
> Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
> ---
>  include/linux/compiler.h | 33 ++++++++++++++++++++++-----------
>  1 file changed, 22 insertions(+), 11 deletions(-)
> 
> diff --git a/include/linux/compiler.h b/include/linux/compiler.h
> index 93035d7fee0d..d8cee7c8968d 100644
> --- a/include/linux/compiler.h
> +++ b/include/linux/compiler.h
> @@ -86,17 +86,28 @@ void ftrace_likely_update(struct ftrace_likely_data *f, int val,
> 
>  #ifndef barrier_data
>  /*
> - * This version is i.e. to prevent dead stores elimination on @ptr
> - * where gcc and llvm may behave differently when otherwise using
> - * normal barrier(): while gcc behavior gets along with a normal
> - * barrier(), llvm needs an explicit input variable to be assumed
> - * clobbered. The issue is as follows: while the inline asm might
> - * access any memory it wants, the compiler could have fit all of
> - * @ptr into memory registers instead, and since @ptr never escaped
> - * from that, it proved that the inline asm wasn't touching any of
> - * it. This version works well with both compilers, i.e. we're telling
> - * the compiler that the inline asm absolutely may see the contents
> - * of @ptr. See also: https://llvm.org/bugs/show_bug.cgi?id=15495
> + * This version is to prevent dead stores elimination on @ptr where gcc and
> + * llvm may behave differently when otherwise using normal barrier(): while gcc
> + * behavior gets along with a normal barrier(), llvm needs an explicit input
> + * variable to be assumed clobbered.
> + *
> + * Its primary use is in implementing memzero_explicit(), which is used for
> + * clearing temporary data that may contain secrets.
> + *
> + * The issue is as follows: while the inline asm might access any memory it
> + * wants, the compiler could have fit all of the variable that @ptr points to
> + * into registers instead, and if @ptr never escaped from the function, it
> + * proved that the inline asm wasn't touching any of it. gcc only eliminates
> + * dead stores if the variable was actually allocated in registers, but llvm
> + * reasons that the variable _could_ have been in registers, so the inline asm
> + * can't reliably access it anyway, and eliminates dead stores even if the
> + * variable is actually in memory.

I think I'd just say something like:

Although the compiler must assume a "memory" clobber may affect all
memory, local variables (on stack) cannot actually be visible to the
asm unless their address has been passed to an external function.
So the compiler may assume such variables cannot be affected by
a normal asm volatile(::"memory") barrier().
Passing the address of the local variables to the asm barrier
is enough to tell the compiler that the asm can 'see' the variables
(and spill anything held in registers to the stack) so that
the "memory" clobber has the expected effect.

This is necessary to get llvm to do a memset() of on-stack data
at the end of a function to clear memory that contains secrets.

	David

> + *
> + * This version works well with both compilers, i.e. we're telling the compiler
> + * that the inline asm absolutely may see the contents of the variable pointed
> + * to by @ptr.
> + *
> + * See also: https://llvm.org/bugs/show_bug.cgi?id=15495#c5
>   */
>  # define barrier_data(ptr) __asm__ __volatile__("": :"r"(ptr) :"memory")
>  #endif
> --
> 2.26.2

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/72958fd25e33490181b0df9413ec08b4%40AcuMS.aculab.com.
