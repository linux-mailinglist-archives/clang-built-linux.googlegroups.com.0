Return-Path: <clang-built-linux+bncBDWLZXP6ZEPRB6WN2OBAMGQEHAVAN2I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13f.google.com (mail-lf1-x13f.google.com [IPv6:2a00:1450:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id B7ED33423E9
	for <lists+clang-built-linux@lfdr.de>; Fri, 19 Mar 2021 19:01:31 +0100 (CET)
Received: by mail-lf1-x13f.google.com with SMTP id o11sf14906771lfo.12
        for <lists+clang-built-linux@lfdr.de>; Fri, 19 Mar 2021 11:01:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616176891; cv=pass;
        d=google.com; s=arc-20160816;
        b=tlTgE5Ak+NtxRw2mvTbtYdPa3rkp0u3yIk0mGGyMSB7eTipg7jRvWF/I/s86JnSboo
         ju/eWCo7A3+SKYBvcITUYXM1mOIoj4pZnt7ZVaIEF97QvskFdw+793ee9vuy4LtCmmGn
         6tRiAKhYcNkAS3wNbkHaeCAXbFiVLYvo+6kIfocbolf0m41A57ux/h/P4bh5CS3VMzEO
         Fx4iIhXUMRvZAsrEpAB92RXNh7BHjWMDrAor4EHbtfda6yYLNKgHB2KDQ22rEvU4DYMq
         Y3tazik/7ParHWJmSWP0FJJIMU99fySjvSVhp+JEt+jKO57AWtvfe5vvbtT2vsL5BHz2
         JOJw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=53crhOAQjScq6Ju8VCIcfr9HAQpP1VwyyhbuuIwRJ2g=;
        b=bE2BogArBFgqyfqxJbLjbSdoO3T9OvFdpc1vk+6kOd9OptwosTxiijKJE/ElYE4eQ6
         l57xygHaUWYk0Pqw+PHP5t8zKmzj+T/01F/f0kL96amKV3jpmKCbanTtdnNdjignMQZ7
         uKIOHhHvkWyVwesYXo12mdKYbPrq22EDDltMVJoP/1277PI0h2s1XND5Vx79k5u+UYOA
         d33fHMcF3mk+ebR+ZriREKYrKvBXxuxfwQYd3Fl8iaOX0ii30egKo/8XsfGA5kfD2Tn+
         bcXUxeXFZQROpFnc0NjSGUulNteYUTjDeDveEnNxddi0n3RunekWDmeb21Sb9R4kJDpE
         +g/g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vbabka@suse.cz designates 195.135.220.15 as permitted sender) smtp.mailfrom=vbabka@suse.cz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=53crhOAQjScq6Ju8VCIcfr9HAQpP1VwyyhbuuIwRJ2g=;
        b=tOcgMjXARfUUCBwhuKV730Xn0vWX1uXI6vu9Cf2Pf0tSJMrsZG/5voXjrmtvOhK1jv
         pZbqX3Z0im9TWPUV4JuUfHjHCRQMx8sj7PTK6xG6+sFXqBL3RZykseOKjdQYI8pMY4bb
         CyIB1r+NcC2YBpiH8f3IjnKLQegwlHLyvLPXW2BwX3cqvVNi6foGRMocKAXxzNyqSFB8
         88wCUhkieORF3pmwZ6yMdWo+LNPlK0ngMoJTJFFC1UXAGy/tOmitdI8w2ojZWhKtDX5T
         CvbsMLcHXYNLgKOv6FZBoP/dDUjFmFbv9aw0Pj2vrI3oadKl/7GfYP6n/IdWG9/XhT5P
         8dVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=53crhOAQjScq6Ju8VCIcfr9HAQpP1VwyyhbuuIwRJ2g=;
        b=NWjALYHC7r+76GBkKAE3Um1r+lSRuTSgd6W/4vFNol6x7F9LFJDimPMBWRMB6VawN5
         uMyJ5sqKagfvestpvcSu9s+jpN5NCDfsWLhUf4+TBnUrpE+WYSvRVfCJ6UkFDlehZ3aw
         9e4B4cUm3OB/sCiy5VQ9Q8afpAAftxVjBpeHUp83WmFsXKRy/Pt4Hit5pXXNdUpj6kXe
         5jk+wPBOXXJCArmOTUixM9l5UbR9/WpCqfZcRiZ4V0zDfMmwhX4gcGcPa+F7vB5vPWQr
         9p2ufu55f4dx6NAtNEGNrMkAAnIv+lOegKr9y0qCkKXSKYMdtMVb7THdQp5j/AhSfI/j
         tFXg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532/M5dLK7epq5ee24wHeUxB0KMHz3P7Iv7H4skGM6bvE138zbAS
	O0AyK9uAIDshMVG6YFV22rg=
X-Google-Smtp-Source: ABdhPJwApOewXMYxBVIYwm7y7hjV2HBS/IhfWU7+njpRkQFUeMeM7+sOqke84sR4sil4ifKMmcFfPQ==
X-Received: by 2002:a19:48ca:: with SMTP id v193mr1528765lfa.323.1616176891313;
        Fri, 19 Mar 2021 11:01:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:e86:: with SMTP id 128ls4277515lfo.0.gmail; Fri, 19 Mar
 2021 11:01:30 -0700 (PDT)
X-Received: by 2002:a19:4c0b:: with SMTP id z11mr1514373lfa.227.1616176889932;
        Fri, 19 Mar 2021 11:01:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616176889; cv=none;
        d=google.com; s=arc-20160816;
        b=ZDj+Dng1ONCBxG7rrN7yJUCd3reTnCQ19qvVEOLloQ7eQM1BXN60Mb68l+8PltA9/L
         j4GEYcb3Zpw4MsH9f50oooxe9aZ//Sg2Uopa0PsxJ8YzAfP/vBzXYWwcOaagrTHQvEur
         5KvvVbTBokM0yAixesHgaKP7q+Gqx7J1SOE93X53xdfQRDLMlZF206g/hAYq3wMsT4RF
         p7WIDcxyD+fD7P+Mv941PYWg96BeEqcO+yWMSWZWnYcCzQCYjFEB0iLR1wAW1F6Tat0z
         i2EQHTZNH5H7fxmlaPAmL7hIyL/Rq1lQXgzfE0eDZiRponegX5MuuZ5U5erPepxbwg2W
         Hsuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=RABMqyR4FYdJoTx9r1fBqFBP/XyjaOMwMvuZr28vUu8=;
        b=knTzCdssexq9QsNBoB2lnUL2tPG/Y+9PO+qaOE4zjet2BJZ9lpNE5dPYz70HxBfAAW
         K/BLwdV8nuZvDF+SZdkGnCsn3D43f0jdmgb8FKKq/QBob6xG2n4J17mpyXBKSx6irA3/
         XyVE2sfuVt1Zg4D0iFxBtnJBNU5oaHv3BAa/7PXZDXD6JQUqK/UVY05gPRt/6+wFJp6e
         DaWjzrMYZfxbK8+rHZtf86mAG73F0jvZVZSUDb/HpJzmkyTaXz59d6+Ln6SQc9dRHDsA
         45/SsldYZ0GyNu0f49EOqFnYoXZtRFNTJkbbQzQvdHg8b8Nb2PiFoVbX3PVz3v8k0Lo6
         T8Bg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vbabka@suse.cz designates 195.135.220.15 as permitted sender) smtp.mailfrom=vbabka@suse.cz
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id a66si194047lfd.7.2021.03.19.11.01.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 19 Mar 2021 11:01:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of vbabka@suse.cz designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
	by mx2.suse.de (Postfix) with ESMTP id 1DE9FAC2E;
	Fri, 19 Mar 2021 18:01:29 +0000 (UTC)
Subject: Re: arm64: compiler_types.h:320:38: error: call to
 __compiletime_assert_417
To: Naresh Kamboju <naresh.kamboju@linaro.org>,
 Linux-Next Mailing List <linux-next@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>, lkft-triage@lists.linaro.org,
 glittao@gmail.com, Marco Elver <elver@google.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 David Rientjes <rientjes@google.com>
Cc: Stephen Rothwell <sfr@canb.auug.org.au>, Arnd Bergmann <arnd@arndb.de>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Nathan Chancellor <nathan@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Peter Zijlstra <peterz@infradead.org>, Will Deacon <will@kernel.org>,
 Miguel Ojeda <ojeda@kernel.org>, Borislav Petkov <bp@suse.de>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>,
 Masahiro Yamada <masahiroy@kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>
References: <CA+G9fYu-t_JwoBVXKhiDUY-FRdX3F3LgbDw9bFeiuciwC70TaQ@mail.gmail.com>
From: Vlastimil Babka <vbabka@suse.cz>
Message-ID: <53cc267d-aa0a-071a-f9f8-0b47ec4b2b9d@suse.cz>
Date: Fri, 19 Mar 2021 19:01:28 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <CA+G9fYu-t_JwoBVXKhiDUY-FRdX3F3LgbDw9bFeiuciwC70TaQ@mail.gmail.com>
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

On 3/19/21 4:19 PM, Naresh Kamboju wrote:
> [This email landed to Spam for some reason, sending it again with modified
> subject]
> 
> While building arm64 kernel modules the following kernel warnings /
> errors noticed on linux next 20210318 tag the gcc version is 7.3.0.
> Build PASS with gcc-8, gcc-9 and gcc-10.
> 
>  In file included from <command-line>:0:0:
>  In function 'resiliency_test',
>      inlined from 'test_slub_init' at   lib/test_slub.c:120:2:
>    include/linux/compiler_types.h:320:38: error: call to
> '__compiletime_assert_417' declared with attribute error: BUILD_BUG_ON
> failed: KMALLOC_MIN_SIZE > 16 | KMALLOC_SHIFT_HIGH < 10
>    _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
>                                        ^
>    include/linux/compiler_types.h:301:4: note: in definition of macro
> '__compiletime_assert'
>      prefix ## suffix();    \
>      ^~~~~~
>    include/linux/compiler_types.h:320:2: note: in expansion of macro
> '_compiletime_assert'
>    _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
>    ^~~~~~~~~~~~~~~~~~~
>    include/linux/build_bug.h:39:37: note: in expansion of macro
> 'compiletime_assert'
>   #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)
>                                       ^~~~~~~~~~~~~~~~~~
>    include/linux/build_bug.h:50:2: note: in expansion of macro
> 'BUILD_BUG_ON_MSG'
>    BUILD_BUG_ON_MSG(condition, "BUILD_BUG_ON failed: " #condition)
>    ^~~~~~~~~~~~~~~~
>    lib/test_slub.c:101:2: note: in expansion of macro 'BUILD_BUG_ON'
>    BUILD_BUG_ON(KMALLOC_MIN_SIZE > 16 | KMALLOC_SHIFT_HIGH < 10);
>    ^~~~~~~~~~~~
>  make[2]: *** [  scripts/Makefile.build:273: lib/test_slub.o] Error 1
>  make[1]: *** [  Makefile:1980: lib] Error 2
> 
> Reported-by: Naresh Kamboju <naresh.kamboju@linaro.org>
> 
> https://ci.linaro.org/view/lkft/job/openembedded-lkft-linux-next/DISTRO=lkft,MACHINE=juno,label=docker-buster-lkft/984/consoleFull
> 
> https://ci.linaro.org/view/lkft/job/openembedded-lkft-linux-next/DISTRO=lkft,MACHINE=juno,label=docker-buster-lkft/984/consoleFull
> 

Andrew, please add this -fix
Thanks.

----8<----
From f97312224278839321a5ff9be2b8487553a97c63 Mon Sep 17 00:00:00 2001
From: Vlastimil Babka <vbabka@suse.cz>
Date: Fri, 19 Mar 2021 18:56:50 +0100
Subject: [PATCH] selftests: add a kselftest for SLUB debugging
 functionality-fix

Remove a BUILD_BUG_ON left over from original resiliency_test() that breaks
builds.

Reported-by: Naresh Kamboju <naresh.kamboju@linaro.org>
Signed-off-by: Vlastimil Babka <vbabka@suse.cz>
---
 lib/test_slub.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/lib/test_slub.c b/lib/test_slub.c
index 0075d9b44251..b7ad6c0b07a6 100644
--- a/lib/test_slub.c
+++ b/lib/test_slub.c
@@ -97,9 +97,6 @@ static void __init test_clobber_redzone_free(void)
 
 static void __init resiliency_test(void)
 {
-
-	BUILD_BUG_ON(KMALLOC_MIN_SIZE > 16 || KMALLOC_SHIFT_HIGH < 10);
-
 	pr_err("SLUB resiliency testing\n");
 	pr_err("-----------------------\n");
 	pr_err("A. Corruption after allocation\n");
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/53cc267d-aa0a-071a-f9f8-0b47ec4b2b9d%40suse.cz.
