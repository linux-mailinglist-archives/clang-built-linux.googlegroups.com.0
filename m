Return-Path: <clang-built-linux+bncBC7M5BFO7YCRBO5J5SHQMGQEGQXOQAY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd38.google.com (mail-io1-xd38.google.com [IPv6:2607:f8b0:4864:20::d38])
	by mail.lfdr.de (Postfix) with ESMTPS id 77B3A4A7BB6
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Feb 2022 00:33:16 +0100 (CET)
Received: by mail-io1-xd38.google.com with SMTP id d70-20020a6bcd49000000b0060d10445eddsf583145iog.13
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Feb 2022 15:33:16 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1643844795; cv=pass;
        d=google.com; s=arc-20160816;
        b=RUIqn1dKgZ948mjznexw2Q5ixIu3w0zk09fLxb3Ll/sYjlsTySMUMZ976+8Zhje0h/
         Xcsa8kzyRn4mkOgsotZtEwx3sPuSJoKK5+B80tNElxJHWhm9Zn7s6NARdr53ezZZZuFP
         AXaKFd0TaY4I9zmwLUnzIjJEotceGiOZoOcy+5qEqzMFqaY5QqW+/rPll8tHNKNiY81A
         U5vjRQhsN77+i6XriyPj4fa2FDhGTPEBo4X3clcX1p+QK1HyF4pRKi90PDiW/2fpMND0
         rEWDp6hsrYuoGhIOR52CWwAxA17ZnA9xL8/scwHZYU45oGNJkZLT6fSy57nvNb7mqY09
         JzMA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:dkim-signature;
        bh=Cx8nuutI+hCar2xhc10cwFTm0ZHuqeg9YB43S5CW9+Y=;
        b=TsqsTe/yizfgtR5XHCg1Vrl6cX9pGurgteIsGTr/YnmZlD8Dn3u40tzw5/Shb7LDC9
         ct+Xsm9qucGVXIQSjbliI9BvkBHGyhpds6Suk0GD0xY8IpGGkVgtF98QsH+PoTgZLriD
         JA20jWAOpmWVsCR1lHnpA4Vm+rLQsS2I8p6ytLt21KezjwYkSnsAhfqtp9e3w8AQ9/mj
         b3Cn0mkr8RmDcxkTZIBI6yyCup3P7u5yKuqbIbOJ/Oe7gLEaiRn13WUylAipUfYGfBzT
         5IgbjR5PSl2Hz5yp4fM6jgz6QZXHJ0bYXRZ7o7KENTxlYXW4eerYdX4uAaKzn0raq5Ih
         hzJg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=TWaEs79J;
       spf=pass (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::334 as permitted sender) smtp.mailfrom=groeck7@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=sender:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Cx8nuutI+hCar2xhc10cwFTm0ZHuqeg9YB43S5CW9+Y=;
        b=FzvlKaB4DvfZTAg2KxqlRr+pgEMREovb2pa9tCgswJ8fEknr5iXkVYvk+S0a86/o/c
         68fycPqjLtMX6BtGnlgPo/AGAN432b9gcjnV3vzEhHpRqmjAG+3JxS3eZW57VkxY98yh
         1SWa0tg8wSFAv+TANdt+mtn5WmclsHUROcvs+M6hn7C1kg5F8dn98GKa2q5RKVmFODJC
         im2gtZG73kqC5cQdhVdXUM7Am8b8jpMZ870b6TwmSOpOF2WN6gGmGVR9Blb+PxORfOJK
         lAtlhK/pec8zoPArDANydeKeb49cBRt10Qjuyztbm94hsjZpe0VQQc8e7wZvN+r5mTQY
         TxYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:sender:message-id:date:mime-version:user-agent
         :subject:content-language:to:cc:references:from:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Cx8nuutI+hCar2xhc10cwFTm0ZHuqeg9YB43S5CW9+Y=;
        b=iBPzyQ2fCzA/6qXBN8rtrCCLfsIMK7wrC85Vdm396+aXbyizi9owk1gwSF3uRnY0/i
         sV4XFswOLt+0b9AoSV5yUqLdeJsJoVC6++iIi5GBYy8TUOc3VCa3zJMkUU/3wb7LLB+J
         anAN5JPZ54mpr8RxVjteYxXZkHzcg+wY+AzinDABKC3j5jLZtoG8/ze3ntXuZDZRc1IP
         2R42T6s2mkBpl0zqhS+hV8K0xYDg+0uScjtwIOgo7wf2bOofM7Kz+Bu53gpCD9i4Heg8
         HuoLtTJ3io/wq1TSx7R9eh9u3hkCqJxKsAexDHOJyYls3RcznzeVr28gZpxkkFpuMGcE
         L73A==
X-Gm-Message-State: AOAM530zbPIVoNeSWON+HXvDMlP1S1K2Sb2yEzs5agW0jDkDzYR3E701
	OOkoFTpKAZNJebQQ3pbKRvM=
X-Google-Smtp-Source: ABdhPJyOHp1Edg+KVVthlY9bHC+MFPDw+dJM6DB3X3SlyMwwolrIo5kTFt7BWLpq0UxrBDsTHMAneQ==
X-Received: by 2002:a6b:5819:: with SMTP id m25mr17290987iob.37.1643844795199;
        Wed, 02 Feb 2022 15:33:15 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:6f4d:: with SMTP id b13ls4633003jae.0.gmail; Wed, 02 Feb
 2022 15:33:14 -0800 (PST)
X-Received: by 2002:a02:7424:: with SMTP id o36mr16628447jac.159.1643844794789;
        Wed, 02 Feb 2022 15:33:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1643844794; cv=none;
        d=google.com; s=arc-20160816;
        b=zR9lLKlmQWGvmRE6AywnaZLoUEHZzSAVTkOhpzz2bJ0FsW6qyCyjUx8pfgdFjQx3iG
         3tKGqRqORaEHeCvlIp4b8oT08sTWhUtUJwlVH5AcshfCL1ujusbVhPGmOlb8BuNsC4Ul
         I10h3OTcROEHlHaJ5C+k+J7exze9+wa/s76U6oMXwWHyPucvKSKoikGz3DqscTTlj4OZ
         ZHAPL1KtThIVIDAAsx4V1cFyUXYZ3gYaVd6/AUZbTwMmuX5WKLJtDQ/B0h0Jj42yQSn0
         1hyX5tBL2WG9evbtpy5DHgQvZxf/JfR6Ne/EnMVK80etmN1jgjJw1C3/GzM0y9IiQCYA
         8kLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:dkim-signature;
        bh=/6Cf3W9mkudiHFUznEhVCKbOqbQxkWdOxnCU/ygpF28=;
        b=RqcT0M7jd38DqoUtcTCWpHTWLB0LphripKmCJAvvQCwOERBRYDg4BmCpB8WzM/T4Cm
         wY39TZA2Obr9Pq6GO1jj/0tbUvTnm4v5Gq6gkloi1AO/Okw6LRoYM9y6PnaowYkzms0Q
         /84DNPNkXuVYsI8/NeA4qzeJp4sQ6WGxG9AEtV8uOS/Nosc2TXZGdoupuO27asYunAQu
         WpdR++WGup1I2VZR1jWkxYTS0j9ZLeFQ27qctxiOADzRsMLTPVp71A0VU4vK4kAb3J9P
         37aImillTflDFmJa/FQEbzhCnbnqkA6xo+Al6rnkClqDjh0WTUsjgYqBERtPI2RexSLL
         Mpqw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=TWaEs79J;
       spf=pass (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::334 as permitted sender) smtp.mailfrom=groeck7@gmail.com
Received: from mail-ot1-x334.google.com (mail-ot1-x334.google.com. [2607:f8b0:4864:20::334])
        by gmr-mx.google.com with ESMTPS id ay13si3129949iob.4.2022.02.02.15.33.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Feb 2022 15:33:14 -0800 (PST)
Received-SPF: pass (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::334 as permitted sender) client-ip=2607:f8b0:4864:20::334;
Received: by mail-ot1-x334.google.com with SMTP id w27-20020a9d5a9b000000b005a17d68ae89so950612oth.12
        for <clang-built-linux@googlegroups.com>; Wed, 02 Feb 2022 15:33:14 -0800 (PST)
X-Received: by 2002:a9d:1f0:: with SMTP id e103mr14998061ote.234.1643844794500;
        Wed, 02 Feb 2022 15:33:14 -0800 (PST)
Received: from ?IPV6:2600:1700:e321:62f0:329c:23ff:fee3:9d7c? ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
        by smtp.gmail.com with ESMTPSA id y4sm19010868otj.22.2022.02.02.15.33.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Feb 2022 15:33:14 -0800 (PST)
Sender: Guenter Roeck <groeck7@gmail.com>
Message-ID: <cbf0cf07-2350-ed23-f6be-b2686c6a0cea@roeck-us.net>
Date: Wed, 2 Feb 2022 15:33:11 -0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH 4/5] Makefile: Enable -Warray-bounds
Content-Language: en-US
To: Kees Cook <keescook@chromium.org>
Cc: linux-kernel@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Masahiro Yamada <masahiroy@kernel.org>, linux-kbuild@vger.kernel.org,
 "Gustavo A . R . Silva" <gustavoars@kernel.org>,
 clang-built-linux@googlegroups.com, linux-hardening@vger.kernel.org
References: <20210818081118.1667663-1-keescook@chromium.org>
 <20210818081118.1667663-5-keescook@chromium.org>
 <20220202160903.GA2337834@roeck-us.net> <202202021254.5A1FD4FFBF@keescook>
From: Guenter Roeck <linux@roeck-us.net>
In-Reply-To: <202202021254.5A1FD4FFBF@keescook>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: linux@roeck-us.net
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=TWaEs79J;       spf=pass
 (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::334 as
 permitted sender) smtp.mailfrom=groeck7@gmail.com
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

On 2/2/22 12:56, Kees Cook wrote:
> On Wed, Feb 02, 2022 at 08:09:03AM -0800, Guenter Roeck wrote:
>> On Wed, Aug 18, 2021 at 01:11:17AM -0700, Kees Cook wrote:
>>> With the recent fixes for flexible arrays and expanded FORTIFY_SOURCE
>>> coverage, it is now possible to enable -Warray-bounds. Since both
>>> GCC and Clang include -Warray-bounds in -Wall, we just need to stop
>>> disabling it.
>>>
>>> Cc: Arnd Bergmann <arnd@arndb.de>
>>> Cc: Masahiro Yamada <masahiroy@kernel.org>
>>> Cc: linux-kbuild@vger.kernel.org
>>> Co-developed-by: Gustavo A. R. Silva <gustavoars@kernel.org>
>>> Signed-off-by: Gustavo A. R. Silva <gustavoars@kernel.org>
>>> Signed-off-by: Kees Cook <keescook@chromium.org>
>>> ---
>>>   Makefile | 1 -
>>>   1 file changed, 1 deletion(-)
>>>
>>> diff --git a/Makefile b/Makefile
>>> index a4aca01a4835..af22b83cede7 100644
>>> --- a/Makefile
>>> +++ b/Makefile
>>> @@ -1072,7 +1072,6 @@ KBUILD_CFLAGS += $(call cc-disable-warning, stringop-truncation)
>>>   
>>>   # We'll want to enable this eventually, but it's not going away for 5.7 at least
>>>   KBUILD_CFLAGS += $(call cc-disable-warning, zero-length-bounds)
>>> -KBUILD_CFLAGS += -Wno-array-bounds
>>>   KBUILD_CFLAGS += $(call cc-disable-warning, stringop-overflow)
>>>   
>>>   # Another good warning that we'll want to enable eventually
>>
>> alpha:defconfig:
>>
>> In function '__memset',
>>      inlined from '__bad_pagetable' at arch/alpha/mm/init.c:79:2:
>> ./arch/alpha/include/asm/string.h:37:32: error: '__builtin_memset' offset [0, 8191] is out of the bounds [0, 0] [-Werror=array-bounds]
>>     37 |                         return __builtin_memset(s, c, n);
>>        |                                ^~~~~~~~~~~~~~~~~~~~~~~~~
>> In function '__memset',
>>      inlined from '__bad_page' at arch/alpha/mm/init.c:86:2:
>> ./arch/alpha/include/asm/string.h:37:32: error: '__builtin_memset' offset [0, 8191] is out of the bounds [0, 0] [-Werror=array-bounds]
>>     37 |                         return __builtin_memset(s, c, n);
>>        |                                ^~~~~~~~~~~~~~~~~~~~~~~~~
>> In function '__memset',
>>      inlined from 'paging_init' at arch/alpha/mm/init.c:256:2:
>> ./arch/alpha/include/asm/string.h:37:32: error: '__builtin_memset' offset [0, 8191] is out of the bounds [0, 0] [-Werror=array-bounds]
>>     37 |                         return __builtin_memset(s, c, n);
> 
> Thanks! I'll take a look. Every instance of the "[0, 0]" bounds means
> the compiler believes there's a way for the destination to be determined
> at compile-time to be NULL.
> 
>> xtensa:allmodconfig:
>> --------------
>> Error log:
>> In file included from include/linux/uaccess.h:11,
>>                   from include/linux/sched/task.h:11,
>>                   from arch/xtensa/kernel/process.c:21:
>> arch/xtensa/kernel/process.c: In function 'copy_thread':
>> arch/xtensa/kernel/process.c:262:52: error: array subscript 53 is above array bounds of 'long unsigned int[16]'
> 
> I assume this is a weird cast. I will also check this one out.
> 

                                 int callinc = (regs->areg[0] >> 30) & 3;
                                 int caller_ars = XCHAL_NUM_AREGS - callinc * 4;
                                 put_user(regs->areg[caller_ars+1],
                                          ^^^^^^^^^^^^^^^^^^^^^^^^
                                          (unsigned __user*)(usp - 12));

I think the problem is that XCHAL_NUM_AREGS can be up to 64,
but the size of struct pt_regs->areg[] is fixed to 16.

Guenter

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/cbf0cf07-2350-ed23-f6be-b2686c6a0cea%40roeck-us.net.
