Return-Path: <clang-built-linux+bncBDP4V4X7XUARBFXQVSCAMGQE7J55A5Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3f.google.com (mail-qv1-xf3f.google.com [IPv6:2607:f8b0:4864:20::f3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CB4E36F2BA
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Apr 2021 00:50:00 +0200 (CEST)
Received: by mail-qv1-xf3f.google.com with SMTP id i3-20020a0c9c830000b02901bb3405e50asf9620547qvf.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Apr 2021 15:50:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619736599; cv=pass;
        d=google.com; s=arc-20160816;
        b=sVug6GfKnEhe7ors69qLU7/7J9h5F6LWaYnwwT1rCv5IsL79IHscuNAjh5e175n/8E
         PUtXVyJYRmewFhrVKqm4FJWDwCSSQZ3oLHB6fN6FCY/XMdibKuqZz/nbLvtMvKbvhmq6
         5piGCAVRSQ99auQ0iMpq7vtpGkh9U/Mpz8KE5NR6y8PPkhKcBiKux+Pt8pjZ9i5MDoMZ
         Drk0Vz8Bs7NTseq2lC3TLJrtfL+v7GHaUAjN620gKkcnDK1qMrAfEkyLMTkzXRrd6XF+
         WxcIonRob2dDBpzMcOOr4vhck8veXBQn7ExMbhTR4dWGv/24G80cO4qcXGwKr13oS7E4
         WqMQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=5R2Bo9//VGteOBJia7lJHgfYF38Sxa5knPsCR00m84I=;
        b=itWYEJ9CcHMSF4yDBk+nMaHu8+qgGuC6GnFBcsvyirXKYnW+bGifR5D1utq7QBcC4Q
         5vUCblehvUYFUOch3ltR7BiPc1Ib8tNVgRrg9dpEuretom8pYFUOaiycBDiHREMWsE0u
         H5muVXqzE4teBy0RFo7FrrYp95Nb/KPx4F4L1krdhIT0djEZqg7hzAH+I62ycxrhRgVu
         mHO+BC1zmM48jMHGMi/hnN1PWAy4bq/j+Zh56sPDkIooLcA+552xUbQRgPQs4ulIoJEm
         958z70p+K09QyDKuTjO8sKcR8wVUg+CphtpIqCJvexSdafBilqTORavWvenplAYvEcvf
         c3sg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of suzuki.poulose@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=suzuki.poulose@arm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5R2Bo9//VGteOBJia7lJHgfYF38Sxa5knPsCR00m84I=;
        b=jR4K/6VzVxTzoqyRrKoo9BCaTKRDoGqX0hI2gsvJfpqKRcfD2udv5mIOAYC4q58q6X
         tByAgZqf2h/GywZuWaRVieyE3EPjcrwwuy6vMSyvFIrdwAknwMvaU0XtilYdZjgCo+JY
         xHTgHGfnhSytSwOZ5s9wJvt1tVhXFNT7LO8kevRUUJ/HAwY8SfbbTEozDXryIcRNB6Bb
         +l/wujcxGmB0eKa1c83xPhSEhdfmQJIvtckz2NkFv56oypHInED6xCaW7tVt0J1axpSq
         QZXgGBUcTG65jAdampbzpHSHFs98aqlQC8qzG2xXOu8Idi5ikaHK4/lsWVdY7QFt+vkl
         tu1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=5R2Bo9//VGteOBJia7lJHgfYF38Sxa5knPsCR00m84I=;
        b=X4twU0BZfQaM0Hg/1Ns3zKVf/MEsU0xCp/obqbB+w2+8C+mC1KcPHaS+1giitf0LVL
         NpiopOslKtmijgGbI0vP66TbALygGw1mK+Q7Js/6WqJA0+hsHwAMZcMhFZIAmyUe1ZKJ
         DNDHvcDJw8lzoItJxn7eliQPkgt3e1c9/U1WemyLIGAohOlVzEdWqjsJM3fknGY6AEpn
         k4m/oE/mePxPsOX+Ndh22ENbr2x1ycd/+2ORTiOl2U5b1KllDAio9p9OiiuVdrir/PzB
         0VYCSZOZE2yQ+2q8TLnZOe6+uUvWMi+wtnr1dyLmB8qadwrYAf5epCM84ER+obYmcMl1
         vOTQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531O+djhFOdzWQGNHsZ9SJUElt8goWtbXnLCvpFyfNJRuXhl+xAx
	v+RSHi/sGFvzpmW30y8lHcQ=
X-Google-Smtp-Source: ABdhPJz1AtIjmw6k0/y3dSh5EfPq5zhHuyFb6d8YbymRWxXoOYkAmY0mmYfZBdpYdVnyrWtRDcvNtw==
X-Received: by 2002:a37:c202:: with SMTP id i2mr2132720qkm.296.1619736598913;
        Thu, 29 Apr 2021 15:49:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:7147:: with SMTP id m68ls2640403qkc.7.gmail; Thu, 29 Apr
 2021 15:49:58 -0700 (PDT)
X-Received: by 2002:a05:620a:22e:: with SMTP id u14mr2178851qkm.354.1619736598458;
        Thu, 29 Apr 2021 15:49:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619736598; cv=none;
        d=google.com; s=arc-20160816;
        b=WD7OqJX34OvtaWUeLw2CjBuuMc8qBhl99HWFCkP0VvijlR1grNNlH/EJaOIswAj2Dd
         Xhc2zUL2q4iz3QRBvU/3+6xxrTUDIGJZcOIThrenfk+qoKZdWmA/G5agD2E66NMHZc4X
         wmjAk1sMA1HMpyGlKVhEZCtsa2UePiA5vu1xpsPQGDY/QbiiTOm+ZUT0rjr4qY+gbB8T
         zBwFrmmVGAqYHShCXO5of5D34cw0xRcXGJXYX9tPGwV4gZzxlKHShVy4sLc5z+yp8scN
         rF8hYVOk1QhPZDwiKJilpDK8Iu3yALvfc40U1/f9eVhiPcgwMfGCS9MKasuKc2FBK8Td
         DzJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=4BGxxFeg+wxTPy+nAO5mmoErJIrNKh7OmbYw2mutB5Q=;
        b=dBeOiem2F8pFdh240/ayvrysn1OFUeMQu18hr40MRn9Es3tEkxUuqs4Zg3nfvs/055
         VPcq3l+oH+v7MNhvTNaJSg0Ql1+2GIlgcmQwZVB4Fanly+V8Uz2+hlMJdwHze4SxHf5x
         XXjrz6A9ECa5/oN3TLLTQf/oEKUcsp7oa2T9EvE6uz+RQPwrz7sgf20HIoYpDESpEtJX
         Spxfs9R/sYvcx+pr01aCq99/ipWjqvKYYnSTSM5pPwmpbF8j08GtCzmALUOvtHNkNc3b
         6fv3TqcstAjm+BnFedUDZ/IuY30R6l8XmzZ+TJQdYqqC0DTa31BZnG3PYw8aWpZVbTFH
         KkKA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of suzuki.poulose@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=suzuki.poulose@arm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id s65si391277qkc.2.2021.04.29.15.49.58
        for <clang-built-linux@googlegroups.com>;
        Thu, 29 Apr 2021 15:49:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of suzuki.poulose@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8620CED1;
	Thu, 29 Apr 2021 15:49:57 -0700 (PDT)
Received: from [10.57.61.145] (unknown [10.57.61.145])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 504F43F70D;
	Thu, 29 Apr 2021 15:49:55 -0700 (PDT)
Subject: Re: [PATCH] [v2] coresight: etm4x: avoid build failure with unrolled
 loops
To: Arnd Bergmann <arnd@kernel.org>
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Nathan Chancellor <nathan@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Mike Leach <mike.leach@linaro.org>, Leo Yan <leo.yan@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 Qi Liu <liuqi115@huawei.com>, Tingwei Zhang <tingwei@codeaurora.org>,
 coresight@lists.linaro.org, Linux ARM
 <linux-arm-kernel@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>
References: <20210429145752.3218324-1-arnd@kernel.org>
 <dff8cbd8-8c56-ae6e-ecc2-9ca183113ab2@arm.com>
 <CAK8P3a3-XoDQ6BfTBUof5ST2H1_6JOL+rK-BQqWXAV0H5jMm9Q@mail.gmail.com>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <81b8a4ff-4d5d-1c2a-8ff1-7cd320460e57@arm.com>
Date: Thu, 29 Apr 2021 23:49:53 +0100
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <CAK8P3a3-XoDQ6BfTBUof5ST2H1_6JOL+rK-BQqWXAV0H5jMm9Q@mail.gmail.com>
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

On 29/04/2021 18:50, Arnd Bergmann wrote:
> On Thu, Apr 29, 2021 at 7:37 PM Suzuki K Poulose <suzuki.poulose@arm.com> wrote:
>> On 29/04/2021 15:57, Arnd Bergmann wrote:
>>> From: Arnd Bergmann <arnd@arndb.de>
>>>
>>> clang-12 fails to build the etm4x driver with -fsanitize=array-bounds,
>>> where it decides to unroll certain loops in a way that result in a
>>> C variable getting put into an inline assembly
>>>
>>> <instantiation>:1:7: error: expected constant expression in '.inst' directive
>>> .inst (0xd5200000|((((2) << 19) | ((1) << 16) | (((((((((((0x160 + (i * 4))))) >> 2))) >> 7) & 0x7)) << 12) | ((((((((((0x160 + (i * 4))))) >> 2))) & 0xf)) << 8) | (((((((((((0x160 + (i * 4))))) >> 2))) >> 4) & 0x7)) << 5)))|(.L__reg_num_x8))
>>>         ^
>>> drivers/hwtracing/coresight/coresight-etm4x-core.c:702:4: note: while in macro instantiation
>>>                           etm4x_relaxed_read32(csa, TRCCNTVRn(i));
>>>                           ^
>>> drivers/hwtracing/coresight/coresight-etm4x.h:403:4: note: expanded from macro 'etm4x_relaxed_read32'
>>>                    read_etm4x_sysreg_offset((offset), false)))
>>>                    ^
>>> drivers/hwtracing/coresight/coresight-etm4x.h:383:12: note: expanded from macro 'read_etm4x_sysreg_offset'
>>>                           __val = read_etm4x_sysreg_const_offset((offset));       \
>>>                                   ^
>>> drivers/hwtracing/coresight/coresight-etm4x.h:149:2: note: expanded from macro 'read_etm4x_sysreg_const_offset'
>>>           READ_ETM4x_REG(ETM4x_OFFSET_TO_REG(offset))
>>>           ^
>>> drivers/hwtracing/coresight/coresight-etm4x.h:144:2: note: expanded from macro 'READ_ETM4x_REG'
>>>           read_sysreg_s(ETM4x_REG_NUM_TO_SYSREG((reg)))
>>>           ^
>>> arch/arm64/include/asm/sysreg.h:1108:15: note: expanded from macro 'read_sysreg_s'
>>>           asm volatile(__mrs_s("%0", r) : "=r" (__val));                  \
>>>                        ^
>>> arch/arm64/include/asm/sysreg.h:1074:2: note: expanded from macro '__mrs_s'
>>> "       mrs_s " v ", " __stringify(r) "\n"                      \
>>>    ^
>>>
>>> This only happened in a few loops in which the array bounds sanitizer
>>> added a special case for an array overflow that clang determined to be
>>> possible, but any compiler is free to unroll any of the loops in the
>>> same way that breaks the sysreg macros.
>>>
>>> Introduce helper functions that perform a sysreg access with a
>>> non-constant register number and use them in each call that passes
>>> a loop counter.
>>
>> You don't need to add this special helper. We have the exact
>> infrastructure already. So these could simply be replaced with:
>>
>> csdev_access_xxx(csa, ...)
>>
>> see :
>>
>> include/linux/coresight.h
> 
> Ah, nice!
> 
> Do you mean replacing only the ones that use a nonconstant
> offset, or all of them? I guess changing all would avoid some

Only the CLANG "nonconstant" please. Going through an indirect
function call and large "switch..case" for every single register
access is painful. Which is why I decided to add those ugly macros.

So, please leave the rest as they are.

Suzuki


> really ugly magic macros, but the indirect function call and the
> switch() adds a few cycles of overhead every time and the code
> looks like it is micro-optimized for fast register access here.
> 
>        Arnd
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/81b8a4ff-4d5d-1c2a-8ff1-7cd320460e57%40arm.com.
