Return-Path: <clang-built-linux+bncBC7M5BFO7YCRBQUDR6BQMGQE5VF7OLI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23f.google.com (mail-oi1-x23f.google.com [IPv6:2607:f8b0:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id BA4FB34F577
	for <lists+clang-built-linux@lfdr.de>; Wed, 31 Mar 2021 02:26:43 +0200 (CEST)
Received: by mail-oi1-x23f.google.com with SMTP id z3sf182538oix.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 30 Mar 2021 17:26:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617150402; cv=pass;
        d=google.com; s=arc-20160816;
        b=fYb8So0A+WaOc0yTmC44B85GlarK9PONGhb3TfSnKMlVHKfKiQW/AnCL1g9C8hZ92x
         +uX3Eo1ETLFmsdzVGuui9M5jX9/l6+zYYiLiogieUP5FYFkFA6Ued70C9DlB8BaggkWI
         mv9scUSLXCBoTLsTd17cYvuVFObkoXjOqSKkuRmaRevEbTMgz2Jqhp/E5iwNOvrvWE98
         RpqDou1+3Mrl7RHtE8zJ2I4POPMwyubbQGFWwuk+vksPNtJhCp59zaawgcerrpoIsikM
         wjzYzevBfEWY07LBnmX9HIo+mMV4UPu3AOk+IYwzDf5ASgHcw1QSqXn5p/wzn4tSJTXN
         ZCCw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:autocrypt:from:references
         :cc:to:subject:sender:dkim-signature;
        bh=IDKnMfUet/2g2z1JNq/FR9b545hlrweUQTg5XYAThz0=;
        b=r2p8gRODiAjk2ktU5YAvdbPRP9Yhw7LerTkBGJnf9egFTFnEefaSQYiWInjytRYiaj
         FFA2QfrgLeTUYV9+yq1wsvJ0UG2+7ImGwGUJ3okgl4HPEQMtlX6h8IJ9xNfYm5NW2hTI
         MTeTCEhI6EuXu6lrKoKQspxePB2ZQOlvUwXQq55vC2A8Yv4viEFMuewftkZ728wSQNXK
         0OexfnWeB+xwMGiPSos+3HYKlKt7oG3lZSE3M7K1eKZKqTP4BXU1dKDqfdWsbqNJDytF
         3nak09zJUxU90r7CCgZ/6ETxcPYboonHSu84e0RJcoM8Cc9DpQtZZ530X31KgrHj4/O1
         cHEA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=u2qQCchG;
       spf=pass (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::330 as permitted sender) smtp.mailfrom=groeck7@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:subject:to:cc:references:from:autocrypt:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IDKnMfUet/2g2z1JNq/FR9b545hlrweUQTg5XYAThz0=;
        b=TMG6UpxCiTq1C55yv8UVDMlTJyvR/FK+iOiDoHrlgi+PghjesSDWMC0dZhFp31kkMG
         5t7zlI8x8mrQk4FUi+zmC9Da7aUyGZa7nGgN3MnWC+PRkmUSUw3soa407LENSE4lkxHx
         AIeqwdCo/yG10lrtJNeYZYOWov4PWyc5KF86T8UoD5J9/Rpalm0OOEFy8qbO74yGs/4i
         +zihVH1hhFHleZBiWzQ8pQua5WGp6iSYHhvf16NQA0d004XxPmd26otoQwjnbu+LRKp2
         PgQw1GQlyJgPkIRWKH1j28la/X4sNEEfbtP3rG8KDPbxG6DFPhdnm5GyxcD+g5Vi6u2n
         Aumw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:subject:to:cc:references:from:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IDKnMfUet/2g2z1JNq/FR9b545hlrweUQTg5XYAThz0=;
        b=iflgw8M2Ulv9bNY/QDs9vnNfpWxo7IAoC4OQaB94ULm1AYNSRPSgN/qrwv/oZkeUPW
         SBey8HpaxR3MgFh/dlijK53b2rFa0OdHC/W1jALpx4gES04PDPpFmNQ68bSWliSk+AuY
         0859N9JbNIQd6+sa6YniSV6nPpHvYe7BCV5o9ZTghhB1ECp0tDOpE4mykze6tUk0NU3y
         VGa2JNETSi6KW+897ZbT1NFF2kvwTGke5ISbyKtcViDGY9znZTl6zax4An6XzMtLagRl
         tjIarbkXpFLy+dJA9F/jKXRRy0lGfj3aeqVM6nbkLMit9niCma2uwHw5X36H6WwQt5YN
         +8xQ==
X-Gm-Message-State: AOAM5306/bGw6I2eg4Au0+Ll0Atif6Owcl8dNYkc4gl5mgB4BJEIaYQ8
	lg7oekDubujZI7aCQ0XOcOc=
X-Google-Smtp-Source: ABdhPJwqKmwH4aJ1TxU36kgWh9VhtkTTj9JJWD3SBXJX4z+8L0gQfDRooPwf+iZpcGnllw6ZkNjiNw==
X-Received: by 2002:a05:6830:17d2:: with SMTP id p18mr402764ota.161.1617150402600;
        Tue, 30 Mar 2021 17:26:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:4c55:: with SMTP id z82ls65311oia.2.gmail; Tue, 30 Mar
 2021 17:26:40 -0700 (PDT)
X-Received: by 2002:aca:494b:: with SMTP id w72mr351454oia.105.1617150400774;
        Tue, 30 Mar 2021 17:26:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617150400; cv=none;
        d=google.com; s=arc-20160816;
        b=C3sJdY0G/N/8onkqbLOfSL3N6fhn/TD5i9NtcdlWxPMDouz0Oxz7gXr/fn/QIyQvUO
         Zbag5TWLfjbiG3LT3K4Az0lLhoBC9OHdn9Vhl6nzPb26LgmR7xsU3nMd0CZDH0ubUm7C
         BXaa5jieoPUSIjrpUue7x5f0+VUrB9hlEMAYBdY8IiLi2tSqlfFKBEzZ64gED0q+367K
         Z8zXa0KIQ+1AAZ3RGXO4SkaLjLqJKv5/H+5qyfXElMpjVD/Y682ZV2cwHUcRqGXHUtDC
         uP8nh+al/nbJHipPGbzriqsTJx/GqgAA6r1EujxHZ8L7XV5HDmzQF9iZjxUSG2v9yBMX
         Ahuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:autocrypt:from:references:cc:to:subject
         :sender:dkim-signature;
        bh=A3/p+2wdiqENyYUtU71W73gJVlvDw7pvzFfTfd6nkdU=;
        b=bfCPfy4AbM2NCrgguIXVygCZTsJpxt7t9wxCwWNwhmtzxUrQIdyyA44qFEk26VCRpf
         da7YLFj3kcUyO/GehbK0l47AA2WchaWcTPXqn/1YkHK43KxivxypQAOV+SGnLlQ/YTcu
         UbpcWulKYaWxNV+eRYq77Ewpm79DRLmbBtqZ1WGBKZQrHcbT23EFAj7rKi5FQz5wssRe
         3aPw2SYM8/xIYi7ZqiOaGuSEIlfKMcSOyDA81KU3dnL7RRlYVeaQXBeSElWpIOJ/avKY
         inpv534hUhjWPC80UzuD5uRejnGfLOz6ZFf9yDORSGe8OWkrAeH89DFa7gAFddH3trQm
         1AUQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=u2qQCchG;
       spf=pass (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::330 as permitted sender) smtp.mailfrom=groeck7@gmail.com
Received: from mail-ot1-x330.google.com (mail-ot1-x330.google.com. [2607:f8b0:4864:20::330])
        by gmr-mx.google.com with ESMTPS id f2si48602oob.2.2021.03.30.17.26.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Mar 2021 17:26:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::330 as permitted sender) client-ip=2607:f8b0:4864:20::330;
Received: by mail-ot1-x330.google.com with SMTP id 68-20020a9d0f4a0000b02901b663e6258dso17295052ott.13
        for <clang-built-linux@googlegroups.com>; Tue, 30 Mar 2021 17:26:40 -0700 (PDT)
X-Received: by 2002:a05:6830:c1:: with SMTP id x1mr419827oto.87.1617150400539;
        Tue, 30 Mar 2021 17:26:40 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
        by smtp.gmail.com with ESMTPSA id w199sm130255oif.41.2021.03.30.17.26.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Mar 2021 17:26:39 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Subject: Re: [PATCH] blk-mq: fix alignment mismatch.
To: Nathan Chancellor <nathan@kernel.org>, Jian Cai <jiancai@google.com>
Cc: cjdb@google.com, manojgupta@google.com, llozano@google.com,
 clang-built-linux@googlegroups.com, Jens Axboe <axboe@kernel.dk>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-block@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20210330230249.709221-1-jiancai@google.com>
 <20210330232946.m5p7426macyjduzm@archlinux-ax161>
From: Guenter Roeck <linux@roeck-us.net>
Autocrypt: addr=linux@roeck-us.net; keydata=
 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
 mDW4+i+XlNFUPUYMrIKi9joBhu18ssf5i5Q=
Message-ID: <114a5697-9b5c-daf1-f0fc-dc190d4db74d@roeck-us.net>
Date: Tue, 30 Mar 2021 17:26:37 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210330232946.m5p7426macyjduzm@archlinux-ax161>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: linux@roeck-us.net
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=u2qQCchG;       spf=pass
 (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::330 as
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

On 3/30/21 4:29 PM, Nathan Chancellor wrote:
> Hi Jian,
> 
> On Tue, Mar 30, 2021 at 04:02:49PM -0700, Jian Cai wrote:
>> This fixes the mismatch of alignments between csd and its use as an
>> argument to smp_call_function_single_async, which causes build failure
>> when -Walign-mismatch in Clang is used.
>>
>> Link:
>> http://crrev.com/c/1193732
>>
>> Suggested-by: Guenter Roeck <linux@roeck-us.net>
>> Signed-off-by: Jian Cai <jiancai@google.com>
> 
> Thanks for the patch. This is effectively a revert of commit
> 4ccafe032005 ("block: unalign call_single_data in struct request"),
> which I had brought up in this thread:
> 
> https://lore.kernel.org/r/20210310182307.zzcbi5w5jrmveld4@archlinux-ax161/
> 
> This is obviously a correct fix, I am not just sure what the impact to
> 'struct request' will be.
> 

As commit 4ccafe032005 states, it increases the request structure size.
Given the exchange referenced above, I think we'll need to disable
the warning in the block code.

Thanks,
Guenter

> Cheers,
> Nathan
> 
>> ---
>>  include/linux/blkdev.h | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/include/linux/blkdev.h b/include/linux/blkdev.h
>> index bc6bc8383b43..3b92330d95ad 100644
>> --- a/include/linux/blkdev.h
>> +++ b/include/linux/blkdev.h
>> @@ -231,7 +231,7 @@ struct request {
>>  	unsigned long deadline;
>>  
>>  	union {
>> -		struct __call_single_data csd;
>> +		call_single_data_t csd;
>>  		u64 fifo_time;
>>  	};
>>  
>> -- 
>> 2.31.0.291.g576ba9dcdaf-goog
>>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/114a5697-9b5c-daf1-f0fc-dc190d4db74d%40roeck-us.net.
