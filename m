Return-Path: <clang-built-linux+bncBDV2D5O34IDRBFHWZP6QKGQE4OAR3DQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x238.google.com (mail-lj1-x238.google.com [IPv6:2a00:1450:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id 62E002B5430
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Nov 2020 23:20:10 +0100 (CET)
Received: by mail-lj1-x238.google.com with SMTP id j9sf9133048ljb.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Nov 2020 14:20:10 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605565205; cv=pass;
        d=google.com; s=arc-20160816;
        b=D6wyWMWl/v8inK4LG1/1Cj4D3rsjQ2fl4bOypjcf1YAgshGkiuzk+EFD4jXlWROLfv
         QtdP+lSJfely9Uh8Bc2uT2iqtI1bMlnC/ioC7JNH4vEOcZsPFAKY7tpbEbsxLHFv2Cri
         U4Tiu7hri8QvnWt3bPcNRRult46kstCA7soaMvLuqlkdRTm38wqq8WN4WlO6K9vFRhwm
         wIL0zpHJWnrbF9jJBiqfU1mxIXWqLIfiqEk1LgXiZObHwnukEh2JQNEwkhgiblk6vWkT
         dlBVglIQXhldR+4T8LwKAYhSj3L+bU1K+m4I5vXwCd0RrbzKTUgOi98JJ/My6L0fUupr
         Z1Rg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:references:cc:to:from:subject:sender:dkim-signature;
        bh=jAvAvVM4aVzP1FdcgfD4tNVA3DZ7ytVF3hrlydEfjRM=;
        b=SNM56HQEWRoXZCjiSMktXJSHEhrkier2Nfku8BdA5bThGhOKMtU5NNVzsvZnjsWEih
         WfHKh7o+5BiTkC9ifAr3HC9a4ZqJORV3looxgALTwFrrfMHKH7nsEcyuy7KTmDK+HgDk
         CgVydQvoZoFUbbZ/Ax80+gvmM8BRXYpj4v93INKDxK0drhwx9OlG0sfTYzltLPQWQk/5
         NzFswGnll7KOgYYbUuBjDV4JtF6G6VXxC2HXlamuPHtHH4QLacQHoZAZEPQcrjGqpQXl
         zrjZRkz4HV/l0gwm7XAnKkoz1+B6sd6VUSmqXaI6lYxKLxmWnmFRrK5HKjmge2LlT2mK
         7kAw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=uMUcuSmE;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jAvAvVM4aVzP1FdcgfD4tNVA3DZ7ytVF3hrlydEfjRM=;
        b=W4gNLDuFgQYXsf5rUvuKG+5Jgg7qG3Mw6bSjaPRxMIWclOaBHg1+IBJZcT+GX6JK/E
         yk4FK7jYiivQLAiEeqXoPR74nkkpse0NJgdLRVKc1HNIu0f0R+ap6nyeIcMXz1BTTwbv
         Ztp3Fl8iFxTyZLr475LMQIWgOuwctvz9v/5NIXwnvhiGq7htQe7Y4Wgh0LZejZ2wi89U
         +W4OKveJv4pVjh7+G/hgUuG9IynsfE6i+6jH7y0mKHyz6kBoUgFBXvwFfvb5O9ytVpuz
         JK2/Xx7nBcBVSdYKvHpV3cyoZmv+aHqqzgKLHDvOxzNddhP17XTzG0GLo1VmzglcOQlu
         f0dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:from:to:cc:references:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jAvAvVM4aVzP1FdcgfD4tNVA3DZ7ytVF3hrlydEfjRM=;
        b=lFWlnd3iggsuHCIMNbv1uImtgz9DYd8HV/pTr1r0WiByUAtfS+XhKqWooiJaHzwtUB
         Jw1t50nMXIikGqHJG3oKlJ+/yLkwvAg8pCHtMeQ6VwktCd7s2CiHmQQS6TEN5pgFKtyG
         gJai2ZV/x/2HaQmFr07p1J+wny26L797mFoB4y2VGIx33uSnjaMozqpltlol8qaFwm22
         nxVazukbDMueLGaFoFdEW640/L/Jw29wJRLU0C99nQZ98m7dgy3MHmUnUrVsOCnku/U7
         8tRwQL11ZoT256D9c+zLKLGA2jF0GiU5GmbmpM6PvK3Z3DYo5t9PetCdR7pE1iXfTEFZ
         CEPw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532u6pUJnU6Q93uDyRocaUGb8fWVGuGds5wk26+OLVVKVs1tDgNH
	4FLDdqKA/y7PRFpm9P9jJdY=
X-Google-Smtp-Source: ABdhPJwuTzALbwYDs8A2MIMW/fMQngY+z5dq8fi8eAGgFoEhM0gVtu3REEUODqSY7/22lRxgVjmb+A==
X-Received: by 2002:a05:651c:1199:: with SMTP id w25mr546760ljo.165.1605565204862;
        Mon, 16 Nov 2020 14:20:04 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:8705:: with SMTP id m5ls1699244lji.10.gmail; Mon, 16 Nov
 2020 14:20:03 -0800 (PST)
X-Received: by 2002:a2e:9615:: with SMTP id v21mr586574ljh.211.1605565203841;
        Mon, 16 Nov 2020 14:20:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605565203; cv=none;
        d=google.com; s=arc-20160816;
        b=JOI3gfjPhyTDPHZKClBDWum4m7eClaAJKR9Rx4lvpC7xajQcub0pSvSTHzMbdBSRx4
         NPT/sSRvdvKxf6fzCQm3fD27gKhpW7NlU0YdD6xY8pn4eBzDDIHYqJ6Mn1/zrmdTe1vg
         prxo3ME9KTbwISld2qcsPmRqhHnos7TDgCU+wT3cfoDpDDwkhMgpGIFv9tEPP0eMh6hd
         m6N4LTSb0R3fIkI0lNUjFwPKfa6XR/CfdzI+hdkQL8wrRwu0UfQtZgOvzUvJrw1/6uKm
         NLJ/8G9YHJgEwvQq1r0u3z1B6ABeAVWA1kpnSVAV+Gsv0yqcYazWjRrD8H8Jl9FGMgUt
         ZfPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:references:cc:to:from:subject
         :dkim-signature;
        bh=rmbEOUuFUDWT2r+1h2dWrIdCOj079NG2OKQi9QhFvjo=;
        b=EgufTZ7C4+qidlwU/J2HCJ1emZiujTZF5khwj31DnLIEyUmHc1+5oMmhxJ6+pPuaDL
         bh0bfyypPM9SH6RuarAdoin8umIc4JF2XNnWdl8RGjAL8txL7g3WQIGcH5mjWFisbSRb
         Pyl1HaoMWsQf1ldpuv4Y6Q3jOTkHe8Zj1CU0SriC4LI06/lWKJSQs8e7d2RowGoUXhyz
         gdUzQKbfBmEQ+kEGRtNNKC+n4tbx1rvnsl2ch77MeGHcsCQ5XN9ikXrL4RElKXYo4zVQ
         eHsbbBicSPqHygUNS6/Duky/9WinzwBDhjOLgTZFK6dyja46m39qvoFot1M0govFLv7C
         yJFQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=uMUcuSmE;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id i67si423000lfi.2.2020.11.16.14.20.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Nov 2020 14:20:03 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from [2601:1c0:6280:3f0::f32]
	by casper.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kemqs-0002AK-0r; Mon, 16 Nov 2020 22:19:58 +0000
Subject: Re: [PATCH] compiler.h: Fix barrier_data() on clang
From: Randy Dunlap <rdunlap@infradead.org>
To: Andreas Schwab <schwab@linux-m68k.org>
Cc: Arvind Sankar <nivedita@alum.mit.edu>,
 Nathan Chancellor <natechancellor@gmail.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org,
 linux-riscv@lists.infradead.org
References: <20201014212631.207844-1-nivedita@alum.mit.edu>
 <87sg999ot0.fsf@igel.home>
 <0dbaca2d-9ad0-8c1a-a280-97be01cac2bd@infradead.org>
 <87k0ul9msr.fsf@igel.home>
 <3fff1eb9-83c0-1c29-6f57-fa50f1ec6ee7@infradead.org>
Message-ID: <3c0a8d26-a95f-a7ca-60ee-203b67d07875@infradead.org>
Date: Mon, 16 Nov 2020 14:19:55 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <3fff1eb9-83c0-1c29-6f57-fa50f1ec6ee7@infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: rdunlap@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b=uMUcuSmE;
       spf=pass (google.com: best guess record for domain of
 rdunlap@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
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

On 11/16/20 11:28 AM, Randy Dunlap wrote:
> On 11/16/20 10:30 AM, Andreas Schwab wrote:
>> On Nov 16 2020, Randy Dunlap wrote:
>>
>>> What kernel version are you building?
>>
>> 5.10-rc4
>>
>> Andreas.
>=20
> OK, thanks.
>=20
> My build machine is slow, but I have a patch that I am testing:
>=20
> ---
> From: Randy Dunlap <rdunlap@infradead.org>
>=20
> riscv's <vdso/processor.h> uses barrier() so it should
> #include <asm/barrier.h> to prevent build errors.
>=20
> Reported-by: Andreas Schwab <schwab@linux-m68k.org>
> ---
> =C2=A0arch/riscv/include/asm/vdso/processor.h |=C2=A0=C2=A0=C2=A0 2 ++
> =C2=A01 file changed, 2 insertions(+)
>=20
> --- lnx-510-rc4.orig/arch/riscv/include/asm/vdso/processor.h
> +++ lnx-510-rc4/arch/riscv/include/asm/vdso/processor.h
> @@ -4,6 +4,8 @@
>=20
> =C2=A0#ifndef __ASSEMBLY__
>=20
> +#include <asm/barrier.h>
> +
> =C2=A0static inline void cpu_relax(void)
> =C2=A0{
> =C2=A0#ifdef __riscv_muldiv


This fixes the emulex/benet/ driver build.
I'm still building allmodconfig to see if there are any
other issues.

--=20
~Randy

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/3c0a8d26-a95f-a7ca-60ee-203b67d07875%40infradead.org.
