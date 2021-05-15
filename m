Return-Path: <clang-built-linux+bncBDWLZXP6ZEPRBHXYQCCQMGQEUYIMVLA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23c.google.com (mail-lj1-x23c.google.com [IPv6:2a00:1450:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id E7BC4381B2D
	for <lists+clang-built-linux@lfdr.de>; Sat, 15 May 2021 23:24:46 +0200 (CEST)
Received: by mail-lj1-x23c.google.com with SMTP id c16-20020a2ea7900000b02900ef529209ccsf1302499ljf.11
        for <lists+clang-built-linux@lfdr.de>; Sat, 15 May 2021 14:24:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621113886; cv=pass;
        d=google.com; s=arc-20160816;
        b=c5TgVH6r3nkjLdcrG3Iy3isHhZxF4RuYvlW2dWl5XtIx7l3l65c29ElTxtJFiGdRtB
         0XRgCxzA06UyVL1erzmTsjuhDLDVQIzKVFnwjmrhykfbBZVisxNTV9jBgKfkBF9znYZg
         jLm5eDqdecFTLC6ilSyyreUOlkwxo1v2/XEeoluwnKIcGsM6T1dB9NasCTukx4sU/mUn
         K3C7UPu1cql9L8DDHVbjL3+3bnhP998oytZHCJTDtpykqO8RV5T3LGVN1gzrQj4XUmDq
         Kt7+J1jX73DeYT6dPDHab+VaCLnYKktnjvzTV/RtTpNpwB7TCJhKr2KIH/FyVR+20MEM
         VyjQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=FzMAaKUFcmVcl7DfSknIZrreZ2zqKw9Nod+Fxk/R+uk=;
        b=UvVdE9KVvRh/GRvlF+LTNd2k5HI2zqjPh+w0hxBgpWsujTRgITDGk0PrvIq1webVw+
         V4L6JmIohJ13mONcb2mh8gizGcPJQ0FxYYQIC9Q0xWtpCnoZPHA1w5z/sDLaklDHRafF
         k7GKyEbuJKvdTdDDnrIw4xm1ebufl3NjOdwSgpq+m0/lRt6DnutAAWou8RxI7G+YFGpx
         8x/IPmj8bEGUsNxVjMJMUQTkn7LaVty2xJvPkEFnFXeDkkVa8FWQnYxWSLXK6YKfxnil
         wamU4MyNXV13rgJ0KCvPuBQeQUg0d4Ka07cnbkoaqejiBWr7QsuV2wUa7Wcq110ah3G5
         D24A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vbabka@suse.cz designates 195.135.220.15 as permitted sender) smtp.mailfrom=vbabka@suse.cz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=FzMAaKUFcmVcl7DfSknIZrreZ2zqKw9Nod+Fxk/R+uk=;
        b=qI3h/qEy8APD9GWENdf2iHrVcyqK6VvUfhouN5K465K0RhcHQl2zoTGsMJajszF7rr
         g0HvJkQDMsw7bNPnsE6GvFn5CYaKHhWhARbYwgFWXwHnmiXUxl22EU5wipko1wRmmuyh
         RxUp7blS1xiqD2BQMVE4WoRMukFmt43AddeuZctJh2ncy7uY4A9a3ionjCwx5BqysQc6
         frsnBOk2pZmoxfP1W1RxVQeqKG85PaOwQ9KTRXmo4SbEU2xL2zuO683wCGdQJzTnZB8E
         TfspQasd4oMEMq/HNNM8vTiADqhDYXJdDCe7sAQsUdr1/tVpmi+NCnvKB1w/iLuwtIwV
         A+2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=FzMAaKUFcmVcl7DfSknIZrreZ2zqKw9Nod+Fxk/R+uk=;
        b=hp0Ja6e5u16mAy51x1jch303XRCFhBTuZIWK6AZp8Y8CAoxQVgZ0s2jC2qpwP03GJ8
         U06Nq2KM9jv23/pJsPteTPE4fF8dBN8PmfeqGwMBqTmZfHawhwmaInh39k741q3ejqQl
         Z8/e4ZtgHqMf287NXDfdyg/hgXYCpmxgkhP1xxtV331CpWSNyAg68amiYOgYYa6RMvHo
         5gS/c0sXD1cgft9XoMvYS4kgbsUuKdSRty8GKNGULGazgfuJc93gUwqD8+n6lsdeCtHF
         Olifrkh3oV+XMZdjdcmUskF4/aO9PRt3uR/x9kp5m1WeHqqAPejvgmedfRg63xSpTjvL
         gqVg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531hDcTwQ4k6PWV1jcACQZ+olgbcFzVD1QR+4/KyNUsvD/ObA78E
	QcEN9HmZxq6dX4OP2MF1m1o=
X-Google-Smtp-Source: ABdhPJz9KRsdbBGAm9hffv8LwQ3dI8Bukh69103HEo3QFXUIVqummdS/oLsN0dBlyGICLiuJdY1r5A==
X-Received: by 2002:a19:6a0e:: with SMTP id u14mr14666258lfu.345.1621113886418;
        Sat, 15 May 2021 14:24:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:592a:: with SMTP id v10ls105539lfi.2.gmail; Sat, 15 May
 2021 14:24:45 -0700 (PDT)
X-Received: by 2002:ac2:5dfc:: with SMTP id z28mr7283550lfq.297.1621113885255;
        Sat, 15 May 2021 14:24:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621113885; cv=none;
        d=google.com; s=arc-20160816;
        b=JGE6SZd5AfvJh3V3LlNdyvlLQskC/oOGYciSXBiYIcFO6AeAXelwgfSfyiw1p40ziW
         Vj0CRLbZtlGQG/fMxVm7e93n+XxvqCVyHHtcOHR4kSkVAGqjemBOoAv4+D7jThs067r2
         qxALu2OZ9oRowEKuti0ru41g1BWbv6/Abk3cc+eQ2SBGFdHxD/O+QtE9PBGMYFNdWiDL
         pG3hcbY9QxrOrpiSY4gcFpAYVUAqLOTD2hwU433rCb4CbK+z8xGtoPcmoolhMqW5k0Gs
         IDqVO/dbylnHwpYXIZFYpBurAPZTloBQE7SeKUwNHh3ojWYo4ipVT4Sls7Rz1CpiuOLk
         eaQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=aQhBm9uhx0+AC7Lkjdb2sh7M5sq4850Q5TjkRI2Bv0Q=;
        b=lKGqRifKfUnBTQcQOI5KF1DJLCWtbs+D5ollgj5t4gdFUQ2NFohimwbRlBYmZMdIcT
         9EsCvkXMMaIbXU5U5EFEbhEnUI7uQh9k6nTiGEuJa7rEG7cS2dUvrfLAeYXYqlP7qi3R
         2411jGk26nn2GugzkEoefr+EcHuFxfYeag6oJ3iuDajtrSnG/CjU8cXPA9b/O0j3lUN7
         myQte39DjRHuqVkgfeKNlvZ8nPKZR+a3xS05wULGlnn+qdO1/+k7QG54lYU3/J8nOjIM
         uT2bvmwz02BVrdbLP0/pxmydS29I5kHwq4NvbYw+hcUD9O4TfHN7emPbEAffNcc4jCWd
         Mmuw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vbabka@suse.cz designates 195.135.220.15 as permitted sender) smtp.mailfrom=vbabka@suse.cz
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id z25si384317lfu.6.2021.05.15.14.24.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 15 May 2021 14:24:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of vbabka@suse.cz designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
	by mx2.suse.de (Postfix) with ESMTP id 66417AC36;
	Sat, 15 May 2021 21:24:44 +0000 (UTC)
Subject: Re: [PATCH v3] mm, slub: change run-time assertion in kmalloc_index()
 to compile-time
To: Hyeonggon Yoo <42.hyeyoo@gmail.com>, akpm@linux-foundation.org,
 iamjoonsoo.kim@lge.com, rientjes@google.com, penberg@kernel.org, cl@linux.com
Cc: linux-mm@kvack.org, linux-kernel@vger.kernel.org, nathan@kernel.org,
 naresh.kamboju@linaro.org, clang-built-linux@googlegroups.com,
 linux-next@vger.kernel.org, ndesaulniers@google.com,
 lkft-triage@lists.linaro.org, sfr@canb.auug.org.au, arnd@arndb.de,
 Marco Elver <elver@google.com>
References: <20210511173448.GA54466@hyeyoo> <20210515210950.GA52841@hyeyoo>
From: Vlastimil Babka <vbabka@suse.cz>
Message-ID: <41c65455-a35b-3ad3-54f9-49ca7105bfa9@suse.cz>
Date: Sat, 15 May 2021 23:24:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <20210515210950.GA52841@hyeyoo>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: vbabka@suse.cz
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of vbabka@suse.cz designates 195.135.220.15 as permitted
 sender) smtp.mailfrom=vbabka@suse.cz
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

On 5/15/21 11:09 PM, Hyeonggon Yoo wrote:
> Hello Vlastimil, recently kbuild-all test bot reported compile error on
> clang 10.0.1, with defconfig.

Hm yes, catching some compiler bug was something that was noted to be
possible to happen.

> Nathan Chancellor wrote:
>> I think this happens because arch_prepare_optimized_kprobe() calls kzalloc()
>> with a size of MAX_OPTINSN_SIZE, which is
>>
>> #define MAX_OPTINSN_SIZE                                \
>>       (((unsigned long)optprobe_template_end -        \
>>          (unsigned long)optprobe_template_entry) +     \
>>         MAX_OPTIMIZED_LENGTH + JMP32_INSN_SIZE)
> 
>> and the optprobe_template_{end,entry} are not evaluated as constants.
>>
>> I am not sure what the solution is. There seem to be a growing list of issues
>> with LLVM 10 that were fixed in LLVM 11, which might necessitate requiring
>> LLVM 11 and newer to build the kernel, given this affects a defconfig.
>> Cheers,
>> Nathan
> 
> 
> I think it's because kmalloc compiles successfully when size is constant,
> and kmalloc_index isn't. so I think compiler seems to be confused.
> 
> currently if size is non-constant, kmalloc calls dummy function __kmalloc,
> which always returns NULL.

That's a misunderstanding. __kmalloc() is not a dummy function, you
probably found only the header declaration.

> so what about changing kmalloc to do compile-time assertion too, and track
> all callers that are calling kmalloc with non-constant argument.

kmalloc() is expected to be called with both constant and non-constant
size. __builtin_constant_p() is used to determine which implementation
to use. One based on kmalloc_index(), other on __kmalloc().

It appears clang 10.0.1 is mistakenly evaluating __builtin_constant_p()
as true. Probably something to do with LTO, because MAX_OPTINSN_SIZE
seems it could be a "link-time constant".

Maybe we could extend Marco Elver's followup patch that uses
BUILD_BUG_ON vs BUG() depending on size_is_constant parameter. It could
use BUG() also if the compiler is LLVM < 11 or something. What would be
the proper code for this condition?

> How do you think? If you think it is the solution, I'll do that work.
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/41c65455-a35b-3ad3-54f9-49ca7105bfa9%40suse.cz.
