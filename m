Return-Path: <clang-built-linux+bncBCVLJ7OQWEPBBXX7Z32QKGQEMBP4BWI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x238.google.com (mail-oi1-x238.google.com [IPv6:2607:f8b0:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E4BB1C840F
	for <lists+clang-built-linux@lfdr.de>; Thu,  7 May 2020 09:59:28 +0200 (CEST)
Received: by mail-oi1-x238.google.com with SMTP id c6sf3371303oib.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 07 May 2020 00:59:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588838367; cv=pass;
        d=google.com; s=arc-20160816;
        b=AQMpVPiEPgpMnrPWO13eyijHmpxggj/2gRK+w9GEGcNmSxrTisEhcXI5gRH4iqogsX
         OPoOB8+1rrpDBFlq6aAEo3gpCzZf5WjNogTSKs9yo70J9VFLioCZFxuwsKzhQcQrX1Ip
         heQNVMoBFy2D7us7JHpW65/b84f3e4Fq/kszpMyrbi/D+W9/l8TfC8iYhtxBhDjZpf2U
         VI5BxBIrNUcbwl+Xm46X1Yc2bPGJ8vcdLcQqYgpfYf/ASW50oHFT9l4EQv7wpY0P2BGn
         8xpLvvKhTeYzWyprb7n7UzqrpXmvKFTOYR26GvuzgQvlWWFt4GPR0WBwHHBPJJV5FNiC
         NrQA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:from:cc:to:subject
         :mime-version:references:in-reply-to:user-agent:date:dkim-filter
         :sender:dkim-signature;
        bh=LcUAr/vWzrmpbWlmYftYbi2taB4Y8ZTQ6SbNBDRjyTM=;
        b=GGDhEGM5LZbR2ZrhugkoZOVbPVHmUXkxo0IG+7/bl1p6ZikMpsxYDAeERqf/Fff+GF
         W4cYy0QoXhktzgbQhGiB8MHRg73MLrMv/fwjbuu/7tSlm3HrpmoeRaRYAdtBfkaszoKl
         zsxISzLWKMTKFjTo8CEiJFEyU0/fT/vshcynh5h3K+HG+wBBW4ZZhaFL6DPOXkt2WPK9
         h0TnZrRpXmZlv7JhLSOs9DFtzZCoKcsaTuEfSECe/1FkxBmA9r9hDaLMFmavGd2kqHGP
         gOLSVlkdl19huPmwV4Ul6n4quLj6uDHVGI0f3GyHOAAFD6tNOAg3aXjCOMfmBJIuWjqS
         ZHjw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=fail header.i=@zytor.com header.s=2020042201 header.b=edDncOw6;
       spf=pass (google.com: domain of hpa@zytor.com designates 198.137.202.136 as permitted sender) smtp.mailfrom=hpa@zytor.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=zytor.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:date:user-agent:in-reply-to:references
         :mime-version:subject:to:cc:from:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=LcUAr/vWzrmpbWlmYftYbi2taB4Y8ZTQ6SbNBDRjyTM=;
        b=KytylJQC2EMt/Lgj7tY/5SFNkXeiVHpV82iop/1aP6IxUajTIGGbu9QagZ2EdIJqcW
         /+NvuwfzlC5xnbrUlmq0uSe1s7hc8yLbCdgYMSQ6dOlK4a3OrEXqk3c0/bENXtMPWxxD
         +PljSqPbptEnSwoHNx6NcXF3Fbk9xdrjkh3IFUyQyZXL+OUwUZKFvGL4ulwP602o8vvk
         EcQ4tcY9GsWBJO4y+xiHsTftPgsv15NQu7ndmxQCGxsRNBQ2+j2yanTZieNRwiy/tUsl
         qNbE7/QDPGCJmGb1GcXbuPjNPVUYXf4JO96Wj1pKHXpv/rUtmIpyN9lyPdMHebzBSx2w
         SrVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:date:user-agent:in-reply-to
         :references:mime-version:subject:to:cc:from:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=LcUAr/vWzrmpbWlmYftYbi2taB4Y8ZTQ6SbNBDRjyTM=;
        b=aADWMs4wtRvpUjnSltOcf6Ywe5Dy9MLHG2+TQOl4C0+CvM43tSlH6CVIW3EFMi/80F
         itExEuTH2Vh01UJV6DGa8gQwBAKY7qEBBQvE0XsHYC7SVsgEZAfN8zJQTGn1VdjEzYlD
         0JlRERgt4lknsLbtbV3VXZuIQ0IBeC5ZzlnuW0rLk1r1zw+UfrBgbew0WztyVhUmAVOj
         PnF9wbFpqha1PvuUzV0jpmE4WdJTx8QR/12NKfcXn0mZq2Td2eQcNTZgmKxPQMCR6jmu
         Lw44iEZxwir4nylP80c44Pf0ex2uqr5b98ZaCpF2pDMZ7hkMUMD1wj5k+bD46hV1ONoZ
         jIyQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0Pubp9CqmTe4Bb4TihXOhagDNq9rMNgF1BY95vCc2uqj20Nt/tihR
	yI6BF5uMW83hUxfaJxOqqiQ=
X-Google-Smtp-Source: APiQypJP0e8ah78DawNAxMZ9iXuYFn81ijiJnE9kxFlJN9F1PC1YQ1oKWntwhkVDwH+jqt6IIwodTA==
X-Received: by 2002:a9d:569:: with SMTP id 96mr9289268otw.59.1588838366937;
        Thu, 07 May 2020 00:59:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:3745:: with SMTP id r66ls345199oor.10.gmail; Thu, 07 May
 2020 00:59:26 -0700 (PDT)
X-Received: by 2002:a4a:e2c5:: with SMTP id l5mr10486565oot.47.1588838366565;
        Thu, 07 May 2020 00:59:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588838366; cv=none;
        d=google.com; s=arc-20160816;
        b=LdOhV1eMwMM3974cuTuZ82gFyvxiYz2aJYhNqlAOs1AgjUm2yiflak4uj98IjORt29
         5wMveeG8hlqw7CDMWQZUZAU/h2t4l5owMpxUtZGaryLg/CWj7vo2zoaqOGq4ART5HtD7
         eJOmg94PjT2ywtEw3gDoLrl7gCFAs40an7LyX8Fc+2bAn17EKRnkpTjgULgZ+2xs/+85
         /Lj9x8F4hBN4KFFo9GBKqF49C6adLj2WEPQoRqqX0EgYX2H3mEyFfUoa6vbvN1cnlYt/
         EMn3i4qlbInaVOs+sV8A7X0opS0FQFoodPjb1oKkQ+Cr2fPadW2xNPLCwtF8YP5FXhsL
         Yy6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:from:cc:to:subject:content-transfer-encoding
         :mime-version:references:in-reply-to:user-agent:date:dkim-signature
         :dkim-filter;
        bh=QcutLOCTnJxVMrJr2hvrS8R5JE5w+xhrOu5seWrSXig=;
        b=gbLrBBeeVhPJi+MOWRVCU8KJVQ/Okrw+4FPlXaY5iEbzLqa4HBh6YbNHt52tT4HgcD
         WoJk3xmWJ29iS67fKIFAOqJ/djGoBFLeF8QWoCGwCcqzquV2DTwwsH0U3nTWUJThPzAq
         TTpa49LQ4xoZKdHK6LH9h2b2F3EuVhAyF1q+PaSFf2wMcfOMegVAt7vceyqM+PlNifgC
         xwjNEe+WB8MG2zb94hK4NQJQAW26gLJdZtHpg6iXsxmVcVwRB5ICqzlNHl1usVDgOzgx
         Os5v0zrQzfhlTvmQETeZm7N4oVRdQu+HMM4ALAh8Jq9zHnYLYKsRDndha3QZIea58O6U
         iXFw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=fail header.i=@zytor.com header.s=2020042201 header.b=edDncOw6;
       spf=pass (google.com: domain of hpa@zytor.com designates 198.137.202.136 as permitted sender) smtp.mailfrom=hpa@zytor.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=zytor.com
Received: from mail.zytor.com (terminus.zytor.com. [198.137.202.136])
        by gmr-mx.google.com with ESMTPS id i22si424249oib.2.2020.05.07.00.59.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 May 2020 00:59:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of hpa@zytor.com designates 198.137.202.136 as permitted sender) client-ip=198.137.202.136;
Received: from [IPv6:2601:646:8600:3281:d918:a6fd:d52c:4754] ([IPv6:2601:646:8600:3281:d918:a6fd:d52c:4754])
	(authenticated bits=0)
	by mail.zytor.com (8.15.2/8.15.2) with ESMTPSA id 0477xAJT3336894
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NO);
	Thu, 7 May 2020 00:59:10 -0700
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.zytor.com 0477xAJT3336894
Date: Thu, 07 May 2020 00:59:03 -0700
User-Agent: K-9 Mail for Android
In-Reply-To: <60b16c05ca9e4954a7e4fcdd3075e23d@AcuMS.aculab.com>
References: <20200505174423.199985-1-ndesaulniers@google.com> <CAMzpN2idWF2_4wtPebM2B2HVyksknr9hAqK8HJi_vjQ06bgu2g@mail.gmail.com> <60b16c05ca9e4954a7e4fcdd3075e23d@AcuMS.aculab.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Subject: RE: [PATCH] x86: bitops: fix build regression
To: David Laight <David.Laight@ACULAB.COM>,
        "'Brian Gerst'" <brgerst@gmail.com>,
        Nick Desaulniers <ndesaulniers@google.com>
CC: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
        Borislav Petkov <bp@alien8.de>, Sedat Dilek <sedat.dilek@gmail.com>,
        stable <stable@vger.kernel.org>,
        Jesse Brandeburg <jesse.brandeburg@intel.com>,
        "kernelci . org bot" <bot@kernelci.org>,
        Andy Shevchenko <andriy.shevchenko@intel.com>,
        Ilie Halip <ilie.halip@gmail.com>,
        the arch/x86 maintainers <x86@kernel.org>,
        Marco Elver <elver@google.com>,
        "Paul E. McKenney" <paulmck@kernel.org>,
        "Peter Zijlstra (Intel)" <peterz@infradead.org>,
        Daniel Axtens <dja@axtens.net>,
        Masahiro Yamada <yamada.masahiro@socionext.com>,
        Luc Van Oostenryck <luc.vanoostenryck@gmail.com>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        "clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>
From: hpa@zytor.com
Message-ID: <7C32CF96-0519-4C32-B66B-23AD9C1F1F52@zytor.com>
X-Original-Sender: hpa@zytor.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=fail
 header.i=@zytor.com header.s=2020042201 header.b=edDncOw6;       spf=pass
 (google.com: domain of hpa@zytor.com designates 198.137.202.136 as permitted
 sender) smtp.mailfrom=hpa@zytor.com;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=zytor.com
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

On May 7, 2020 12:44:44 AM PDT, David Laight <David.Laight@ACULAB.COM> wrote:
>From: Brian Gerst
>> Sent: 07 May 2020 07:18
>...
>> > --- a/arch/x86/include/asm/bitops.h
>> > +++ b/arch/x86/include/asm/bitops.h
>> > @@ -54,7 +54,7 @@ arch_set_bit(long nr, volatile unsigned long
>*addr)
>> >         if (__builtin_constant_p(nr)) {
>> >                 asm volatile(LOCK_PREFIX "orb %1,%0"
>> >                         : CONST_MASK_ADDR(nr, addr)
>> > -                       : "iq" (CONST_MASK(nr) & 0xff)
>> > +                       : "iq" ((u8)(CONST_MASK(nr) & 0xff))
>> 
>> I think a better fix would be to make CONST_MASK() return a u8 value
>> rather than have to cast on every use.
>
>Or assign to a local variable - then it doesn't matter how
>the value is actually calculated. So:
>			u8 mask = CONST_MASK(nr);
>			asm volatile(LOCK_PREFIX "orb %1,%0"
>				: CONST_MASK_ADDR(nr, addr)
>				: "iq" mask
>
>	David
>
>-
>Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes,
>MK1 1PT, UK
>Registration No: 1397386 (Wales)

"const u8" please...
-- 
Sent from my Android device with K-9 Mail. Please excuse my brevity.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/7C32CF96-0519-4C32-B66B-23AD9C1F1F52%40zytor.com.
