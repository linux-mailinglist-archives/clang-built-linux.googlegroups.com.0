Return-Path: <clang-built-linux+bncBDV2D5O34IDRBT5PQKEAMGQEZR3K3KY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x238.google.com (mail-oi1-x238.google.com [IPv6:2607:f8b0:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id 26EBD3D8414
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Jul 2021 01:33:37 +0200 (CEST)
Received: by mail-oi1-x238.google.com with SMTP id o5-20020a0568080bc5b029025cbda427bbsf494537oik.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 16:33:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627428816; cv=pass;
        d=google.com; s=arc-20160816;
        b=wmjnx0ouUlf0UnEWwwbQ5Pqyh7WVJQ6tkCpW7mm3ktOzJbqjbTOqPubb3FsoN2/iV5
         R0hJvQ60re7YOXlXBMb4+mvcpDYveFYtQMTVe7/ip0kTR0B3EDatYwOX0B+hmHzs70rZ
         hSAF2nuUPUp1CY+QYPm082fqVFoSkmMcmTt2RHwHKqplKHV4W/bSmqs8EOz4nsuU50tk
         A3Eau9OyZZAMFyScF8UA5R8UE8shUKDYvTT4E2hcgr4H+V8tI4OcvKqTtZ3hTueK8fKv
         tQYZwbK9TnAd7qdns1Ur7129qvK+4z+8CWnAm2DljOiJ5FnfAaZ89yAZdZvnWnC8STn3
         /qZA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=bVlXCVsSpyEy6owPJRMW5A8rfsYr5cmmEWlhOcJoUpc=;
        b=m4cFlCx1YEPKH+yAtEmVlbQlPx419FyjOsog3Be3q9D3hTSRhop0xY/sCVbR9BAqQt
         OrXy2OKNNJNkBMlADajf0GGXpw1MmniAsvwcq6rYmjBV+PHCYIrsuuLCCgBjK2VJHm1G
         2qT9m4wuEPHvNnSyuGducX5uPO2IvtxgMUQoCdjVAJqSZTUHccAFemIjoY/CN5MgdjdL
         idbQQvbrzOysfl68IZ0yoN5afrBfDbHWjlEYnXg56jKJRRuyPLPO2rQdAUoXY8yhS7kR
         7Lj8wYmM3LZFBeabglFAdcTfZTtlEb+silnFfJ0mtvzZsjgy23RFG0Gqo/yxixI9SIT/
         T5/Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=St1ko82Y;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bVlXCVsSpyEy6owPJRMW5A8rfsYr5cmmEWlhOcJoUpc=;
        b=gA4yViF4mdnHNLlUalETWODg84a+Qj8zhW12NyFBU81w+1Q1E9IT948p4DpXRpZqLV
         eG5yiPX00qY9ygp0W6Rnkbd/eYgM9G5+6F1Q1QT3GH3oXNeL+whMS8DNwDCcB+HEdNTn
         mPpnt1RZ7AHA6H1u2Hs2d0xzSsgOd5FAXpv/rpKIu1no0BSxJOX4IRGZhG3HCbSy8LA3
         8stZ8KCkmbgjvd9g3lW13lirqJke9dLnGaQ66TPzBQyv0vbZ6tD3p1QmiTryUk4xyj64
         AoqNgfrxVot+mH5YgtaOw2Mz3twYKE+QENpIU0vqlLZbXyC8ekzH8j9HlS8cUgV8XwPo
         5Fmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bVlXCVsSpyEy6owPJRMW5A8rfsYr5cmmEWlhOcJoUpc=;
        b=PeI0TX9pGrx9sln/uhc9oFcUX0cOQW3fUQuaZN1P2FWvs2Fy1zZPp9bq6H/3Bx+9Oo
         UIJ5TqQ59ydXlAhQexc8jEd+Sf+hgqRurEJdjWT2quhl1LCtxv2izRaXT2O7VINdVPp+
         seaYMqsc9Dy7HV+Gjtqzz2E5UauhcSX4p2DoZp2O/IiUiucfrSU01oJ766z9WYFiA/Ku
         La4FQ+pA2S65r9xgHQGKUgIHIWz0/6DeyI5gVT4UW0rzJXffNlffFbQyDFEV4i8zdI9f
         GmZC5zDphHIRquZdutN0I+OV4Bu+Lj0C52c79qJCDjn7Z93R6unO/m4aYvyMmqTNMOju
         R4YA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531k+YoRB39/URauABId4kpBzKTV/PSNsbbTlSmY1LHZrhz+l4zg
	RsinWwVJbAR5R/DHXEMWrIU=
X-Google-Smtp-Source: ABdhPJxKZ3s5bQ9ps0ElxIWj11foMfDvRGYsbtJyCbaOH0N1yAsdY8FgxiB5sNOBKfU7GIxKL3G3+Q==
X-Received: by 2002:a54:4e8f:: with SMTP id c15mr4491163oiy.107.1627428815938;
        Tue, 27 Jul 2021 16:33:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:352:: with SMTP id 76ls105403otv.0.gmail; Tue, 27 Jul
 2021 16:33:35 -0700 (PDT)
X-Received: by 2002:a9d:6d86:: with SMTP id x6mr17087521otp.188.1627428815498;
        Tue, 27 Jul 2021 16:33:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627428815; cv=none;
        d=google.com; s=arc-20160816;
        b=SFnIFQwWFk/TDXtdAc9C++kntUvLELZGKQMKZ8IEmqQoKjUP5OlZzzCmeNRVQ4t4lJ
         rN0Ldqi4xbpDm6+iJaHcUax7WdhGN5aCYd/qwDuA9STDhom1js8IbJgwHNacBcpSsmaC
         wpQeeOvQVJ9ViWoBW69zHcTT9eRThoIBjz8QCbIbutExbyOEeLKS7dN1hefsb/tYfURN
         eipcTj4ONIAdZQvNIKLabOjMuepDI3mwqk454CxE+1S0QKEXrpWKx6ipSc3HfRms3dRz
         WM++FiwaMxJLxDIfGTT2FvThj7KPOETVefDwjNaSThvOvB7NjCmLosHQM2E/Yn6aoKHo
         CYhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=41wpVpavNVm7pF419ATH4r8xqqa08ERgI3LuOyPcGto=;
        b=nBf/MsO/mn6mI0ZrlcOrVz6d3sfhjco5+Ow4zXU9g8EVmBZRuDohD0NPAYmISgCQvr
         LChJIMp64EiKECj/Upv8VlsklfRiawFtiGa88fdaL+Ynni0karMEcMzYxppP3C64fjku
         E5/LEvrM5Kaiehf0Z3phn4mXNDVnulYAymqyThlAdXner5WZXeNlcQ1GkubCXzUH63Yx
         ZUf1Drnuj1Y7cgC1eG6g9BsFBrDvljXIzVF1f74nuZejV/XWmzVOuOkj0CAcQwdsEhNY
         d2qVSHiSJ7Qc1kAxS/8H821r46yFb/0G8hzkX2UZ58Je9hwq5vROTiGL/dtKgeGt7nty
         fjyQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=St1ko82Y;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:e::133])
        by gmr-mx.google.com with ESMTPS id c20si282573ots.0.2021.07.27.16.33.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jul 2021 16:33:35 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2607:7c80:54:e::133 as permitted sender) client-ip=2607:7c80:54:e::133;
Received: from [2601:1c0:6280:3f0::aefb]
	by bombadil.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m8WZn-00GfWY-Tk; Tue, 27 Jul 2021 23:33:32 +0000
Subject: Re: [PATCH 33/64] lib: Introduce CONFIG_TEST_MEMCPY
To: Bart Van Assche <bvanassche@acm.org>, Kees Cook <keescook@chromium.org>,
 linux-hardening@vger.kernel.org
Cc: "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 Keith Packard <keithpac@amazon.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Andrew Morton <akpm@linux-foundation.org>, linux-kernel@vger.kernel.org,
 linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-staging@lists.linux.dev,
 linux-block@vger.kernel.org, linux-kbuild@vger.kernel.org,
 clang-built-linux@googlegroups.com
References: <20210727205855.411487-1-keescook@chromium.org>
 <20210727205855.411487-34-keescook@chromium.org>
 <9827144a-dacf-61dc-d554-6c69434708de@acm.org>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <afa92312-a667-3597-d937-7e09bac2bb29@infradead.org>
Date: Tue, 27 Jul 2021 16:33:30 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <9827144a-dacf-61dc-d554-6c69434708de@acm.org>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: rdunlap@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=St1ko82Y;
       spf=pass (google.com: best guess record for domain of
 rdunlap@infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
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

On 7/27/21 4:31 PM, Bart Van Assche wrote:
> On 7/27/21 1:58 PM, Kees Cook wrote:
>> +static int __init test_memcpy_init(void)
>> +{
>> +=C2=A0=C2=A0=C2=A0 int err =3D 0;
>> +
>> +=C2=A0=C2=A0=C2=A0 err |=3D test_memcpy();
>> +=C2=A0=C2=A0=C2=A0 err |=3D test_memmove();
>> +=C2=A0=C2=A0=C2=A0 err |=3D test_memset();
>> +
>> +=C2=A0=C2=A0=C2=A0 if (err) {
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 pr_warn("FAIL!\n");
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 err =3D -EINVAL;
>> +=C2=A0=C2=A0=C2=A0 } else {
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 pr_info("all tests passed\n"=
);
>> +=C2=A0=C2=A0=C2=A0 }
>> +
>> +=C2=A0=C2=A0=C2=A0 return err;
>> +}
>> +
>> +static void __exit test_memcpy_exit(void)
>> +{ }
>> +
>> +module_init(test_memcpy_init);
>> +module_exit(test_memcpy_exit);
>> +MODULE_LICENSE("GPL");
>=20
> Has it been considered to implement this test using the Kunit framework?

and do we want everything converted to use the Kunit test framework?

My answer is No, we don't, but I could easily be in the minority.

--=20
~Randy

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/afa92312-a667-3597-d937-7e09bac2bb29%40infradead.org.
