Return-Path: <clang-built-linux+bncBDP4V4X7XUARBZ65VOCAMGQETIMYLJY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53f.google.com (mail-pg1-x53f.google.com [IPv6:2607:f8b0:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id 62B5736EF04
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Apr 2021 19:37:45 +0200 (CEST)
Received: by mail-pg1-x53f.google.com with SMTP id w8-20020a6556c80000b02902072432fdabsf23557114pgs.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Apr 2021 10:37:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619717863; cv=pass;
        d=google.com; s=arc-20160816;
        b=kUr9EbpsZ8Wbb5IF5d9zbox3X0ThHFwo0dgX2SYZwyH/HMsiwdyMiEsjonwb+84FGk
         fRvjyrKVZEjXobBqJPr/GaWz4SrL+dyJRX3USzErTGT5Lqn/yeRbjkdFhw9F+oh0mqP1
         hSf31ujwEBa0/iDH3vJWMxB5rPSyXgXblvGpdKfoMBYs8+3cjW5OonKvsTL0Eg+Ax+/H
         4hPv7ZHkSKPnFxIHhqPzvYNA2LVFkYG3sX2Fi8U20axz7vvhSm25mv4w/+saSI3Q1W+W
         Y2F4s0mI0UrnYly2knWKOZV0wUx//DMTxTTePOwu/NOzz74nKVGD0gl9AMGJzNuKB4rf
         0gVg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=bBJ7vugD7GNTptQs4r0iBmUVOwtGdAT7ZI70ISa/rn0=;
        b=X8uGBID8jb23k7T+6yscrMC3YeSbHrmXfgNIMDSiNk0Ou19mwW/kNayojhX4QemvDJ
         4hkFJxwGjIWFdnxZjD4v9vUSydeSxyyiqNyB6lHarFN/Ex5fH6DIV11kpgi8xVUtz8Ap
         0VEXEd4OWUBOpSOTGQ0HSNVSkVi8lRheHwkTJ/jZJWBvlFxP8HnzuT7d7vW9rXiyvoL0
         Uqj/2MGg1gFkxg9lLFUqJSN6LOim2j1astlwcWorai2r/Z+MBOUGMm8PqVVzN6+1PT0l
         SWJaSxOA57qpF2ONYL3lx3JkV0SBtPWpPBLGBAGfgdzRpUuFhrMoTfkV3zl01i7Qrjhh
         Dirg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of suzuki.poulose@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=suzuki.poulose@arm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bBJ7vugD7GNTptQs4r0iBmUVOwtGdAT7ZI70ISa/rn0=;
        b=tiXkINFXyib25012pQKdCY7B+Hp0tx1C4Mb3AEBCQARvbkLmT/ox38LRKZTHWQxSPj
         eq/pT7wJdoe2lcBF16mbk7XF7RO+R71glkJZS4t34701rwzW83iUfypjwglDunQzk8Wu
         9LvPI+jAv0E+2bfChdPd3TOlW1CUKvzDILny0zFBDhhHuxwrWFMmiyBwjfOkMPmx9LrK
         fQpZqeo3zAotP1WTu3QiubT5goWqhovgqjnr24KB6ix5bTPYm3qh6NQxKXsi9DX52dCI
         m4ROfxJCwU66MqCj+6FI+NIkPtsiXqBEI1u+V615qgK4TUeztm3Ar6fMvOw1nQBPu2qp
         nd/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=bBJ7vugD7GNTptQs4r0iBmUVOwtGdAT7ZI70ISa/rn0=;
        b=E2JPEcJH7U9GULZczYnTdyH0H2NnoY44Z5xlvsWHPeG3NBv/mzhelqShsFASb0WPyW
         YfR4z5k3UPp3jsjS2OcYKR2AFMYqvOs2DjZHazX5kcPGyVUHUT7BGJb2hRxDsd+NsorE
         G1qlrcGzAXlm11U7qSGkOrvFZNyxjClP6xDti6z38aE6RcUrZNYhY1A7C80x6vKIQCjQ
         sOJTRn2GeN+YFnbQOrg2V9UFWxIV5bn3YYo8p1smmzrUA2hCEMrl7vSX5cXzP2+60NRD
         0cz+HHl0D+ib9P7+3GJrA8x/K3GkMieDMyxDrr5ynGnaCqIXK6ma3w3Uul2yZpXNPxSw
         l/jA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533nXBcwvdBqNMvXi2X895wELlKEGnOCZI0oaVGzI4K97gN1f/0X
	SjsSS9MIhlMLGMk5/0B+cwQ=
X-Google-Smtp-Source: ABdhPJzsYyQwbNAtx/HfyO1xU2wQ5stwwc2V5vrM1nqj0y5nykuKnwIxgXZi0V/QwgXtzHED+sYC0Q==
X-Received: by 2002:a17:902:ba8a:b029:ec:b04c:451d with SMTP id k10-20020a170902ba8ab02900ecb04c451dmr772093pls.67.1619717863732;
        Thu, 29 Apr 2021 10:37:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:d3d8:: with SMTP id d24ls5463260pjw.2.canary-gmail;
 Thu, 29 Apr 2021 10:37:43 -0700 (PDT)
X-Received: by 2002:a17:90b:4398:: with SMTP id in24mr989784pjb.208.1619717863071;
        Thu, 29 Apr 2021 10:37:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619717863; cv=none;
        d=google.com; s=arc-20160816;
        b=MYChbbtHSvPOMw/iNw+PndtKYMUvcj+omcGPnYm+IxTKRYkzpEHssom/Nlxly+0lVO
         RSpK0eCcJB8nFlf8SqHVUJMBL7RoZryjkKqIclHwi7i5MByklFOqN4m8KyiRpmfSexbD
         UjJ97Z+dopzJCzYZCX/hS5aZRWcYQiw7Wn6XdjNjdsf7+whYkAkKbE0cBFEvJJ9ofdcm
         0nLPMd7cOvfckZfgsiqjrEdH6JKMXl7KXMJ0yK2PBH18HrLUxoqFMuL+/r8x9kM36P3H
         jRc4CHrEBYBsXEKqm53b1LvNgc7G55H5kZYkI3JefNfQ92ccRKWlkweCMgrJpG65qFDZ
         rplA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=G7c6opEVNW2Rh0QBpdBC/Ina5SLtVEYeV/ydtSgA7c0=;
        b=g/Z27ac/9F/2HGKT63Xqwupr5FlVo5l9mEF6V+KRZgNG8U4YbEW9Ek8L+NDRV9pX7v
         rT/3XErr41aopxgo+CfMtB6Bhl508arXB7wp6rueQ72WvQhhn1N6yqiq68NhPrpDKpG9
         BJEqBdeccJm1doNp+jd2lQoVj1fpSZ7GQ+q51upNKVW+yES4H7NSQwLyfqCgBZSu5hl+
         qkvNVbjhsgkV1ip/9nEXG+Pd1ZmOelX9EiMnOGw+b6wrjPQVorYTEOwSb+p3K6U/BCAs
         sZ3UTLEi+YhSRgGhU+LKhn38G5Nl+qtT36PixkijVzqutbiG+MVNMKn/axXAvkMyPKxz
         hltw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of suzuki.poulose@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=suzuki.poulose@arm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id j5si603966pjs.0.2021.04.29.10.37.42
        for <clang-built-linux@googlegroups.com>;
        Thu, 29 Apr 2021 10:37:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of suzuki.poulose@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 181881FB;
	Thu, 29 Apr 2021 10:37:42 -0700 (PDT)
Received: from [10.57.61.145] (unknown [10.57.61.145])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B102E3F70D;
	Thu, 29 Apr 2021 10:37:39 -0700 (PDT)
Subject: Re: [PATCH] [v2] coresight: etm4x: avoid build failure with unrolled
 loops
To: Arnd Bergmann <arnd@kernel.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Nathan Chancellor <nathan@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>
Cc: Arnd Bergmann <arnd@arndb.de>, Mike Leach <mike.leach@linaro.org>,
 Leo Yan <leo.yan@linaro.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>,
 Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 Qi Liu <liuqi115@huawei.com>, Tingwei Zhang <tingwei@codeaurora.org>,
 coresight@lists.linaro.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
References: <20210429145752.3218324-1-arnd@kernel.org>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <dff8cbd8-8c56-ae6e-ecc2-9ca183113ab2@arm.com>
Date: Thu, 29 Apr 2021 18:37:38 +0100
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <20210429145752.3218324-1-arnd@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-GB
X-Original-Sender: suzuki.poulose@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of suzuki.poulose@arm.com designates 217.140.110.172 as
 permitted sender) smtp.mailfrom=suzuki.poulose@arm.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=arm.com
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

Hi Arnd

On 29/04/2021 15:57, Arnd Bergmann wrote:
> From: Arnd Bergmann <arnd@arndb.de>
> 
> clang-12 fails to build the etm4x driver with -fsanitize=array-bounds,
> where it decides to unroll certain loops in a way that result in a
> C variable getting put into an inline assembly
> 
> <instantiation>:1:7: error: expected constant expression in '.inst' directive
> .inst (0xd5200000|((((2) << 19) | ((1) << 16) | (((((((((((0x160 + (i * 4))))) >> 2))) >> 7) & 0x7)) << 12) | ((((((((((0x160 + (i * 4))))) >> 2))) & 0xf)) << 8) | (((((((((((0x160 + (i * 4))))) >> 2))) >> 4) & 0x7)) << 5)))|(.L__reg_num_x8))
>        ^
> drivers/hwtracing/coresight/coresight-etm4x-core.c:702:4: note: while in macro instantiation
>                          etm4x_relaxed_read32(csa, TRCCNTVRn(i));
>                          ^
> drivers/hwtracing/coresight/coresight-etm4x.h:403:4: note: expanded from macro 'etm4x_relaxed_read32'
>                   read_etm4x_sysreg_offset((offset), false)))
>                   ^
> drivers/hwtracing/coresight/coresight-etm4x.h:383:12: note: expanded from macro 'read_etm4x_sysreg_offset'
>                          __val = read_etm4x_sysreg_const_offset((offset));       \
>                                  ^
> drivers/hwtracing/coresight/coresight-etm4x.h:149:2: note: expanded from macro 'read_etm4x_sysreg_const_offset'
>          READ_ETM4x_REG(ETM4x_OFFSET_TO_REG(offset))
>          ^
> drivers/hwtracing/coresight/coresight-etm4x.h:144:2: note: expanded from macro 'READ_ETM4x_REG'
>          read_sysreg_s(ETM4x_REG_NUM_TO_SYSREG((reg)))
>          ^
> arch/arm64/include/asm/sysreg.h:1108:15: note: expanded from macro 'read_sysreg_s'
>          asm volatile(__mrs_s("%0", r) : "=r" (__val));                  \
>                       ^
> arch/arm64/include/asm/sysreg.h:1074:2: note: expanded from macro '__mrs_s'
> "       mrs_s " v ", " __stringify(r) "\n"                      \
>   ^
> 
> This only happened in a few loops in which the array bounds sanitizer
> added a special case for an array overflow that clang determined to be
> possible, but any compiler is free to unroll any of the loops in the
> same way that breaks the sysreg macros.
> 
> Introduce helper functions that perform a sysreg access with a
> non-constant register number and use them in each call that passes
> a loop counter.

You don't need to add this special helper. We have the exact 
infrastructure already. So these could simply be replaced with:

csdev_access_xxx(csa, ...)

see :

include/linux/coresight.h

Cheers
Suzuki

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/dff8cbd8-8c56-ae6e-ecc2-9ca183113ab2%40arm.com.
