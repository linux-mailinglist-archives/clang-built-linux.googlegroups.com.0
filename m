Return-Path: <clang-built-linux+bncBC7M5BFO7YCRBENE5SHQMGQET4QWN7I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 855D84A7BA5
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Feb 2022 00:21:54 +0100 (CET)
Received: by mail-yb1-xb3a.google.com with SMTP id i203-20020a253bd4000000b006195f020a0csf2296204yba.14
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Feb 2022 15:21:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1643844113; cv=pass;
        d=google.com; s=arc-20160816;
        b=oY3nXSxv9UWW2+z3bspdqH1OurLfaImAtGQFtyv1f5d1aqnKulC7DHL2YjjWuIj+9d
         sqkDmTCb1xVv17Vf0vynS3GGa+Ghmd/+Z0ucL9bsI9PkOse2LtVbEw2kcxYkj3LSMizx
         tNnMIXhyPKPtznfTYQSEOgH4l5TkNohhmQ7v48LMB2D4puRJDUrDJgQE6CxwvlhgHMdW
         Av4CQv3h4qcGKrFlnscWEe39EVDdwSjcd3KvXE5UprDvduVfEExyVLUqbWbXXBH30vja
         8VJGpIshdEd4i9OlSUipQUwopw9OoUZvcRwKdm09Jxh3y5qIsfvJBkbOhjQFdB8aDR7P
         Mmzg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:dkim-signature;
        bh=BzaQauG5zYW2vRVU/eFnShab5vwu1D9KEMi0SxdwENQ=;
        b=nDN7NXQMQ6sqa+MmTn5MvQUnqjS4q4Pn5aE2BN7GRW69VNnN1IFN9k3BW/gjXTv2Ig
         TRnC7GxTC3mRf7XbyxIsTw2v1GvYZhETk2u6CiZBggfexNGCIjsY27P6qlj2Xlm3KF4w
         zoosVLpW8xIGSZZNLlQqlBD74+NhAB3eT64zqJGiKeWpCrQrVO2+zSAmVO2Tohcw333O
         FTceLX85/uEXg7isDAq2oiqt5/IGiX9hlW14oCFjVxBOmAJ7Onmh2+ukY78Gj2BBLCUa
         OmVkZprzl0nHYimGAdXLcAvGrRv2Dv7TGbVkK8vIEriTQlKLmYl3JYMFBECTDPFf1Q0r
         cxbQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=ahUVIzCs;
       spf=pass (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::229 as permitted sender) smtp.mailfrom=groeck7@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=sender:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BzaQauG5zYW2vRVU/eFnShab5vwu1D9KEMi0SxdwENQ=;
        b=jHQ2/DF7/tzvn+4llNQO4yBlT90nbjUffvbWPG0OAC4vKKnaFzHLv9akPC88kQRF4l
         bVB5j0tFPxOki9of4B7X7muRkxLhCNPs7mbZGzxkgEZCyZn+TNdfNJXnFNOtkKOkO1As
         tW3IZa7kLK2sZfIcytaKtbXCe9KqLFH0D+CreDKROS+wmYi74OPUbhfCgSLSl6jPSv1l
         SwrkTHa93tQsEsAG68ZZs48rX9z/87VCCz+bl3VdF7xIFYJaDf3TiszurqZAs9pkmIPx
         cpotaPkI88+x/8hgm7YhvRdBLZ5jVb8gyd/Nv2RGhgCAs4iThxPuIvvHO9Qu8tPJ8hYV
         2ahw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:sender:message-id:date:mime-version:user-agent
         :subject:content-language:to:cc:references:from:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=BzaQauG5zYW2vRVU/eFnShab5vwu1D9KEMi0SxdwENQ=;
        b=SAEZHDQhkDOyuYkLfZazP1xmnyWwiJ9dua0OZ8e9g5uNJopjkv2cgAle+3QfjU5P+M
         L37DVBdjEUVKOcTryP8tQpcK6zyYoZeHU1oqvAdfbI3G/TRsCN9pPT7WBcEVk5jwAI2P
         ELF9DPEqd487xuwi67WhOznfHGSwORaV772dfIJ4P1g/3Mk/rlsC0kAeR/A+ejDoU1ff
         l56AWcf5pluVZ4tXDH+gcopmIzqgmWBxKry28QEVozVq7zj21YzuCo2HCk72WxJNqt/k
         EgtCzYRwaHK61u1W4cmdC6s4M+OPXLFjcdPXpI26b/gIr9aU7g0VaJzw73IcpoavJdKZ
         SgPg==
X-Gm-Message-State: AOAM531mYLrxjcgxj75FDF9jzdHqvUDUFv3J93zitFYpaNHvBggWWebK
	fRR/J9xnYdFeezMY0s4jGLo=
X-Google-Smtp-Source: ABdhPJxfS6Y2EjA4j394JnJiu6gd0Ys6hRy2ST9Ke+biIwS/7ClKa0Ichbw/2rP2RnOyk/18z3ZtQA==
X-Received: by 2002:a0d:dec5:: with SMTP id h188mr2645439ywe.155.1643844113402;
        Wed, 02 Feb 2022 15:21:53 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:442:: with SMTP id 63ls15554893ybe.6.gmail; Wed, 02 Feb
 2022 15:21:52 -0800 (PST)
X-Received: by 2002:a25:8d0b:: with SMTP id n11mr19434508ybl.662.1643844112850;
        Wed, 02 Feb 2022 15:21:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1643844112; cv=none;
        d=google.com; s=arc-20160816;
        b=P1Pd18Yb1hcLGlCceiqDUYEwoKMJg3Og4Tfohf4SXrSjnssKhOpnQk9CsC4qS9w5Em
         VGWhv893CIt0pDJPgT43pZlK6X9jzW1A81lsVC9l4NJvHLLFCR/MbUDwjiGbw/WDKPMs
         pnvUTJMS9FbOm4JX5kG+81ipBzQ6774L/L2STq5jnY0vxgyYf6lIX/bzfcBmeoeHbMOJ
         jFXTGayvS9LFFl0e5vboya4vej5jNeZ9z+receFoeuLZsM3PRSDvP481E+r4t5J/I5Uf
         XukfaH3nPRMCS5oT3KVwepG2iPKfCk5809D4wg78e8NHJzwki+d7p2i6HamAGrkDvMlF
         pEmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:dkim-signature;
        bh=hdKH4tXgHY4cT+RB1bvOiaNomE0XVykpxJcXrke+vqk=;
        b=jzihZxEzXf8hghPw8WWZYyl3PGZPpVOF5LhnSmBFmfrvaGb/hACIBLN4dFi5L/YIPU
         T53lyJkGI73nFlFbyrklyLN9wemuIhS+1csgyqpsD94Bk2CLyfrPalGWRiFlayjdr0hp
         zSKnOVfbThLXwpiVEUlzE6onaIvggZ/WPgMj6Nb2sj90ENd759stKXNFCap9bWvMUBOI
         uE2oiqjnyBDVNpkpd4Eq9wWj1IOYT//g47ITuXwVEI29VlXslQO1sTYv4vFx46NhZMjR
         CcMeXVjwWtuHrGjXhScyarwGHbru+mMpWl79Ojrk9UPpy4sPohittMS+0WNATt1dHM/W
         cAng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=ahUVIzCs;
       spf=pass (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::229 as permitted sender) smtp.mailfrom=groeck7@gmail.com
Received: from mail-oi1-x229.google.com (mail-oi1-x229.google.com. [2607:f8b0:4864:20::229])
        by gmr-mx.google.com with ESMTPS id bg1si38180ywb.4.2022.02.02.15.21.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Feb 2022 15:21:52 -0800 (PST)
Received-SPF: pass (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::229 as permitted sender) client-ip=2607:f8b0:4864:20::229;
Received: by mail-oi1-x229.google.com with SMTP id i5so1354590oih.1
        for <clang-built-linux@googlegroups.com>; Wed, 02 Feb 2022 15:21:52 -0800 (PST)
X-Received: by 2002:a05:6808:1aa6:: with SMTP id bm38mr5803076oib.109.1643844112525;
        Wed, 02 Feb 2022 15:21:52 -0800 (PST)
Received: from ?IPV6:2600:1700:e321:62f0:329c:23ff:fee3:9d7c? ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
        by smtp.gmail.com with ESMTPSA id s11sm15250609otq.69.2022.02.02.15.21.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Feb 2022 15:21:51 -0800 (PST)
Sender: Guenter Roeck <groeck7@gmail.com>
Message-ID: <5ce016f8-fb4b-ef50-c543-886b4cfda225@roeck-us.net>
Date: Wed, 2 Feb 2022 15:21:49 -0800
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
 <20220202160903.GA2337834@roeck-us.net> <202202021409.2AA6A4246@keescook>
From: Guenter Roeck <linux@roeck-us.net>
In-Reply-To: <202202021409.2AA6A4246@keescook>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: linux@roeck-us.net
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=ahUVIzCs;       spf=pass
 (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::229 as
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

On 2/2/22 14:11, Kees Cook wrote:
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
> Ah! With Arnd and Nathan's help, I saw:
> https://lore.kernel.org/all/20210912160149.2227137-3-linux@roeck-us.net/

Guilty as charged. Sorry, I didn't try to analyze the problem,
or I might have noticed (and saved you some work).

Guenter

> which is solving the same problem (just manifested through different
> diagnostics). The same solution works here. I'll get the patches sent...
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/5ce016f8-fb4b-ef50-c543-886b4cfda225%40roeck-us.net.
