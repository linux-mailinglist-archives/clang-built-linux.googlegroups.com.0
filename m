Return-Path: <clang-built-linux+bncBDSIRFEA54GRBHW3UCAAMGQEWX277IQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23a.google.com (mail-lj1-x23a.google.com [IPv6:2a00:1450:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id ECF962FD110
	for <lists+clang-built-linux@lfdr.de>; Wed, 20 Jan 2021 14:18:22 +0100 (CET)
Received: by mail-lj1-x23a.google.com with SMTP id a2sf6634161ljm.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 20 Jan 2021 05:18:22 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611148702; cv=pass;
        d=google.com; s=arc-20160816;
        b=G+CuQlWXbVXpyC98VVJhMpGWKu6uJM8AzRiK0i+/FNQRJxjgaRdw1ZqEAkvs0sK57o
         KVxy+U9e+J/qC7UgjFRW0w0hG5VxrLQ0u/6oaix7+6oLxqcmlCyAbWIB0IaFhijAQhKX
         EuiZlaw9KrU2mWQMlFrFdu5rxXWOPMXlG6U/A6lcwDjiX3PnY/YXe7C5VjO+EXbe/+dX
         2hSGygdposc3B8Fx31M0JkiJM3LYfXAIO45Ni7bvAStVlfK7Ty8ISom4Z0N/J3RDJ7S3
         zU9YCDu8ACqsPUcqjmU7a3y+mOjTHaITvNdIL7Mii3DbC6sQhcmsOvIfnfRtAm0FBZoh
         24Sg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=FOKRiqj/4/CAt8g6lpbeN2EDtMOyQ47UZGRD1Kh7Jok=;
        b=h92LZPTyp5XY8NiXNQcGywnE8qxRIT2u3I+f0AA/ZjnIm0f4GCI8oVd3f6fJFoUne3
         hI77KiEQou0xw7PUXommljZT6cDtjOIFKUe0xxncKByFG3Fuaq4jE06zKs7omNuSijNO
         NIrLqpU/10MipJi0shmLm2DtssjDKpJ81mQoalNUV8YtVnmiE3Jc0di/eFNbMpMiEK+p
         qNrYMl190W9jQCcqN/4wGHo5yuZy0Iffqxa4YtYETv7keMOWNFd2Gu4vcCpff++4RE6y
         lKbr3mwAwCy0VRkWj/F9DJGeNyGsJEdJ2z3t13/FbMTWey1B+PE1mY6aQ66uxObX5LVk
         Vp0A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of adrian.ratiu@collabora.com designates 46.235.227.227 as permitted sender) smtp.mailfrom=adrian.ratiu@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FOKRiqj/4/CAt8g6lpbeN2EDtMOyQ47UZGRD1Kh7Jok=;
        b=ntGxLNG/LoeoBdEAi+1xo+uHaNNYqP4i9kYb7/bY4P+MvC90CLKf/XNNGlFMnOtEK3
         hSmEkWj+MZU2MfmQDZCoH9msVtHlDvdyzSdEnUdzWw1sVBYa2Jv6rCWNE97Vj2zTrS9F
         6/1p6/j3sIoHxV3uDrcibHyubwUcy7VUnmicSf6Gdr+PS4qrFzXGxDQY5HyPjXL7BKcy
         Te+yenp8RZLDspPncmnqEG8HZAgiCfnTK9rlFVp6F7b3OtSH2y03MNcAzKUg7cesipsP
         JCZ6HpydpF3f5nGTVilMZqrpi93jRS3MVIXJ+bgBBb0eYTY8kfUzr0pH6b9u+nwOLjbX
         lMaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FOKRiqj/4/CAt8g6lpbeN2EDtMOyQ47UZGRD1Kh7Jok=;
        b=O79nQcvIQagOMTkDU1xPWQ5JcBUQHWRn6vhnReyXOqAI3+2dNg5hBs+KTwkIpmIv7R
         9K6lrn2ovF8fZscXPig6Udx9Zh+WXw4ycWiBNyEdkjrhrEhcAjRU3qXrAmyoBqZdRgz/
         HkIr+/hYSmB1a2diUW8bmIuP1MSl5Ns4v10civLNQZEv87p20Xq/FX8udVoT0jMq6H3t
         fmOQ+SeUosmv+3TX+reQWsksB50jEYi64OKQlA5QuSCURYxz7keSeu3uYM2trC6+QDrP
         PocoCVF9P5ivdJL7qfVyhylC6pyCSBO64aUk8+Kd1Lp+G198pOarkJ3MkOUw/yT+eaES
         kaEA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533BS1LHPWw+sr9GSNfYtNSXOr/wXIyvoXAFVjqAU0A3XvLOeEWR
	DIq/qxSvcz1sUG577KYKgjg=
X-Google-Smtp-Source: ABdhPJxBEmOoYZ3t//KEnEW22D7dQRuKWnP4W8aZKFGl1fs/AWjrH2e4yxkTgLvDp1eNJ6hTlOoITA==
X-Received: by 2002:ac2:4846:: with SMTP id 6mr3931644lfy.653.1611148702568;
        Wed, 20 Jan 2021 05:18:22 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:6145:: with SMTP id m5ls2886707lfk.2.gmail; Wed, 20 Jan
 2021 05:18:21 -0800 (PST)
X-Received: by 2002:a19:ae18:: with SMTP id f24mr4358229lfc.528.1611148701422;
        Wed, 20 Jan 2021 05:18:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611148701; cv=none;
        d=google.com; s=arc-20160816;
        b=sus2hS9bYg6KZbAe9xScbfWZvury3H2PEq7xSiY1XCwVVYGQ5lS7cObjQD9cQKtOrT
         eCbY7TszcdQN05bhiRrBEo4Q00W0aGiRQ4Dxqj956FMaasbO1F7EmSTqWI/+EpsEHHbv
         1s7uAdJR5CZK0yOLxXzUPj5et3tdjcBA1kfHSRk2iu9e+RYb8RsE9bWmdpr3XuRBhw7v
         17ROcII/nGHSbOUid9ryu5xlah2zqkEBtZeMezYszhBFxvbgsVSvtCJu+IQGJ06ygzH5
         iaVdxyBmDRPLzxh8BmKwDRZMBoBg3VOFpD6NWIyYTbGkVSvaQzw5XrwKeH8IZuDLYzfi
         C46g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from;
        bh=IWNCfswYrq9mhVqPgYgYyAne1s5H0o4pFZd1YMiSuNI=;
        b=0jCHoMbIvk9ZTxrcjoEXl67c+FQas+hAe6dW9fs2vRRGZMaQzawBKvtk0elPNs/0ej
         NR0+0n1WO6i8T3BgGa18nJcLJBeP0n3tET96h7sy+3MkjnduSOXhZ6clroCBWb4iaztb
         XAK94Z88EqxOwtU5+f+031J3tRiwJgz9oXls0bYvQNVFR4Vw7kOhx7dx+VblneWSOcSf
         12tiFIs2Iqu3Mc8lEePvq2GRDDzFNzBVoFXThxrdFSr/V6bqIfm+QWIULcm9+S8PYIIZ
         Dvx31cFyVQvxTMWbIQMHRUFg0EFyVwKLk0rpieJ1e/iTTqEXKib0C0glKQSEDkhxH25V
         yihw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of adrian.ratiu@collabora.com designates 46.235.227.227 as permitted sender) smtp.mailfrom=adrian.ratiu@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk. [46.235.227.227])
        by gmr-mx.google.com with ESMTPS id i22si134193ljj.8.2021.01.20.05.18.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 20 Jan 2021 05:18:21 -0800 (PST)
Received-SPF: pass (google.com: domain of adrian.ratiu@collabora.com designates 46.235.227.227 as permitted sender) client-ip=46.235.227.227;
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: aratiu)
	with ESMTPSA id 0296C1F455A1
From: Adrian Ratiu <adrian.ratiu@collabora.com>
To: Nathan Chancellor <natechancellor@gmail.com>, Adrian Ratiu
 <adrian.ratiu@collabora.com>
Cc: linux-arm-kernel@lists.infradead.org, Nick Desaulniers
 <ndesaulniers@google.com>, Arnd Bergmann <arnd@arndb.de>, Russell King
 <linux@armlinux.org.uk>, Ard Biesheuvel <ardb@kernel.org>, Arvind Sankar
 <nivedita@alum.mit.edu>, clang-built-linux
 <clang-built-linux@googlegroups.com>, kernel@collabora.com, Linux Kernel
 Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v4 1/2] arm: lib: xor-neon: remove unnecessary GCC < 4.6
 warning
In-Reply-To: <20210119215435.GA1727211@ubuntu-m3-large-x86>
References: <20210119131724.308884-1-adrian.ratiu@collabora.com>
 <20210119131724.308884-2-adrian.ratiu@collabora.com>
 <20210119215435.GA1727211@ubuntu-m3-large-x86>
Date: Wed, 20 Jan 2021 15:18:17 +0200
Message-ID: <87lfcng31i.fsf@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset="UTF-8"
X-Original-Sender: adrian.ratiu@collabora.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of adrian.ratiu@collabora.com designates 46.235.227.227
 as permitted sender) smtp.mailfrom=adrian.ratiu@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
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

On Tue, 19 Jan 2021, Nathan Chancellor <natechancellor@gmail.com> 
wrote:
> On Tue, Jan 19, 2021 at 03:17:23PM +0200, Adrian Ratiu wrote: 
>> From: Nathan Chancellor <natechancellor@gmail.com>  Drop 
>> warning because kernel now requires GCC >= v4.9 after commit 
>> 6ec4476ac825 ("Raise gcc version requirement to 4.9") and 
>> clarify that -ftree-vectorize now always needs enabling for GCC 
>> by directly testing the presence of CONFIG_CC_IS_GCC.   Another 
>> reason to remove the warning is that Clang exposes itself as 
>> GCC < 4.6 so it triggers the warning about GCC which doesn't 
>> make much sense and misleads Clang users by telling them to 
>> update GCC.   Because Clang is now supported by the kernel 
>> print a clear Clang-specific warning.   Link: 
>> https://github.com/ClangBuiltLinux/linux/issues/496 Link: 
>> https://github.com/ClangBuiltLinux/linux/issues/503 
>> Reported-by: Nick Desaulniers <ndesaulniers@google.com> 
>> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com> 
>> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com> 
>> Signed-off-by: Adrian Ratiu <adrian.ratiu@collabora.com> 
> 
> The commit message looks like it is written by me but I never 
> added a Clang specific warning. I appreciate wanting to give me 
> credit but when you change things about my original commit 
> message, please make it clear that you did the edits, something 
> like: 
> 
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com> 
> [adrian: Add clang specific warning] Signed-off-by: Adrian Ratiu 
> <adrian.ratiu@collabora.com> 
> 

Thanks for the suggestion. Makes sense. I contemplated adding 
another patch by me on top but thought it was too much 
churn. Sorry if my edits were unclear.

>> --- 
>>  arch/arm/lib/xor-neon.c | 18 ++++++++++-------- 1 file 
>>  changed, 10 insertions(+), 8 deletions(-) 
>>  diff --git a/arch/arm/lib/xor-neon.c b/arch/arm/lib/xor-neon.c 
>> index b99dd8e1c93f..f9f3601cc2d1 100644 --- 
>> a/arch/arm/lib/xor-neon.c +++ b/arch/arm/lib/xor-neon.c @@ 
>> -14,20 +14,22 @@ MODULE_LICENSE("GPL"); 
>>  #error You should compile this file with '-march=armv7-a 
>>  -mfloat-abi=softfp -mfpu=neon' #endif  
>> +/* + * TODO: Even though -ftree-vectorize is enabled by 
>> default in Clang, the + * compiler does not produce vectorized 
>> code due to its cost model.  + * See: 
>> https://github.com/ClangBuiltLinux/linux/issues/503 + */ 
>> +#ifdef CONFIG_CC_IS_CLANG +#warning Clang does not vectorize 
>> code in this file.  +#endif 
> 
> I really do not like this. With the GCC specific warning, the 
> user could just upgrade their GCC. With this warning, it is 
> basically telling them don't use clang, in which case, it would 
> just be better to disable this code altogether. I would rather 
> see: 
> 
> 1. Just don't build this file with clang altogether, which I 
> believe was 
>    v1's 2/2 patch. 
> 
> OR 
> 
> 2. Use the pragma: 
> 
> #pragma clang loop vectorize(enable) 
> 
> as Nick suggests in v1's 2/2 patch. 
> 
> Alternatively, __restrict__ sounds like it might be beneficial 
> for both GCC and clang: 
> 
> https://lore.kernel.org/lkml/20201112215033.GA438824@rani.riverdale.lan/ 
> 

Option 1 from v1 got clearly NACKed by Nick a while back so the 
only option gonig forward is to also fix clang vectorization 
together with these changes so the warning becomes unnecessary.

>>  /*
>>   * Pull in the reference implementations while instructing GCC (through
>>   * -ftree-vectorize) to attempt to exploit implicit parallelism and emit
>>   * NEON instructions.
>>   */
>> -#if __GNUC__ > 4 || (__GNUC__ == 4 && __GNUC_MINOR__ >= 6)
>> +#ifdef CONFIG_CC_IS_GCC
>>  #pragma GCC optimize "tree-vectorize"
>> -#else
>> -/*
>> - * While older versions of GCC do not generate incorrect code, they fail to
>> - * recognize the parallel nature of these functions, and emit plain ARM code,
>> - * which is known to be slower than the optimized ARM code in asm-arm/xor.h.
>> - */
>> -#warning This code requires at least version 4.6 of GCC
>>  #endif
>>  
>>  #pragma GCC diagnostic ignored "-Wunused-variable"
>> -- 
>> 2.30.0
>> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87lfcng31i.fsf%40collabora.com.
