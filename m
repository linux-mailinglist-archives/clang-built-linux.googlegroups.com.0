Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBY5JXXZQKGQE7YCFPOY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x138.google.com (mail-lf1-x138.google.com [IPv6:2a00:1450:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 34B9A186901
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Mar 2020 11:28:52 +0100 (CET)
Received: by mail-lf1-x138.google.com with SMTP id z6sf6438881lfd.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Mar 2020 03:28:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584354531; cv=pass;
        d=google.com; s=arc-20160816;
        b=T6cjt4SV7LeR5BssjO/QGw89Quluk99Ep8AGUQ1tyXuyKRKZdqgxoEIZmglwP8Meeg
         sRCXcyYGuf5bYrNip0xI3jcYTksJMOhdQG+Qz02wYTi9HhzKkbe6xOAcM8bAWq+ZcBye
         R0cqpLkTXwQ6WpGFFIHB+BfGSy6DE3Efw0g2M4xRZRr53mtTFw1pyXp/aMknHu0ytbcu
         AXPbTu1V3S0IdXHNk2TlUiKaKXc+D7OvDi3Y8VX0i6caaaH8Ee8V65Gap9Ys5v0I1vz9
         tZ3LdEvnsh5b+mvifWDEp7mbkSOKVMhVHH0X4bPx9PlRTJYIc6KUwOI39Ru8XM0AThqA
         ea7A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=yFCHo15AGBZZBzVPySWuc+UFz0p1/ctpMWs2A5lWj4o=;
        b=OqimmxwtUyn9+DjZkJoO3ws/JYDZF5U38JSY73MfHdDOu6P4/UutxN+NXsT3WrM0SU
         Bb8NbGk6VwLUfTLr8sTyrQD4lrQpFkHSplgvGJLPOEMz5jV0ieEXGjPw4mlnRbthKfFE
         lJ3OYykEFyFTpqHVcd4O8yI/cb5RwvaGXGMood9iuIpWjNCsaZyB/GSsPc+qj620hgi2
         Y5p+PpiiNaEQoth25y/F3YHVzsiSV//qh1otj4a84y2AMMGlQxsN2zCIsTZjRUQ/JRde
         IfY8fS+ZVPlunybrGsznnp9Um5Xvd7V6c/LMLqPtXHYDBFfxbORaBtX2H3o9TwMZsDuE
         S5/w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yFCHo15AGBZZBzVPySWuc+UFz0p1/ctpMWs2A5lWj4o=;
        b=EiGNsWFOL8LTbvMFU3H20YE8pVF9TMX1IzAgUX22d9hERi0vFzvvdxuJ+E3MyjJT7g
         uAHoDiF9VUjW7jikBKtPAmLcm3Re+nz2BaQD+ZIZO6UBfYWL/60TKwiF58mSA64yOJ3h
         g/K47HJLC/sxQ1SoNXUTPiWXlp/u6vtmlrZXPbPKJ3oLfghgBHS7GbGNe8Q5eELkKvGh
         lJZ/JMhkI0r1upuFVUBROs6mnzhRnf4FvKlmXMnVeGLZpP4QkvBUF3YLwM/5XZq7A/Bv
         ISJEoWbg6wK4DpT1oJvlJHfY1C0lABx1l2sTZ6GcFWBM7C2QBNcJPzGL/Dne/vN9R/ZV
         aokQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=yFCHo15AGBZZBzVPySWuc+UFz0p1/ctpMWs2A5lWj4o=;
        b=HuWX+2qau4vzSdl7vNbBkXQSSUzqPmlQgFNo7Z5dzJqbRhwK/nJtLeXsQqo3zlIiqi
         w1CU2hYN/S25oTfS4Okhx3oUuxxQg/x/eawyeuSXDd39+zpf5qT5jN5H7ivrFkvFIAj8
         mTvJJ/N2vFcl5RMwMSmygkQzqjP1OVmN7sP01+tXLH0yaegc2AzdpZeXC3rKtzVlz4LF
         CSWmAO/pINYb6OJsofku5FUwOo7bDmiL3ahvHOZOXQMCMj4QrHNdHj/R+QMx2mKeJ8pp
         tjgnUxU/+4vXDThWitX11U25cbqVKkUCpA0HXRA82GM8n4wiaCENj2HY2ViYUu9I7mPO
         ct0A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0hoCQhZZFfTWEKl+8JRDVj7/msOJaRJVXHEAqMoHkQnqDM6Qlf
	XseOv1CcrObvVfLA4Ar/Y5A=
X-Google-Smtp-Source: ADFU+vtPRMdNuKWOr1/8z08Dd7NpqX0KeR03lfseX01XufT5Hg6YeVgRjM1+H3IBZExQI4ERYProTw==
X-Received: by 2002:a2e:9e03:: with SMTP id e3mr15898609ljk.186.1584354531757;
        Mon, 16 Mar 2020 03:28:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:a58b:: with SMTP id m11ls3249048ljp.0.gmail; Mon, 16 Mar
 2020 03:28:51 -0700 (PDT)
X-Received: by 2002:a2e:7018:: with SMTP id l24mr16063818ljc.128.1584354531090;
        Mon, 16 Mar 2020 03:28:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584354531; cv=none;
        d=google.com; s=arc-20160816;
        b=ZgYMpVFC2eKxEwloQbo/sPpHuCV7LM47MbISlGBCB7e7DTpbVzHJtdYVnu0GMTJDHj
         0qupXad1JIkRrVMFSUPjOYM4B1bV919Exw/e5n1l9ebDp9/PvmmDTNm/Q0V4/cRFGbMS
         XUaqO5jFG9tpTlNQaKyDeJgAjD9qUwXk3Pk2maVTC07b5jXpDBuh+A5lbV7oWeOPLQaw
         wJXP3bTFOUANJ1xqVE77Se9B0bqYYn055rmQQVdFc4phbZct5nGlDjY4zwZJ9R7JRXOm
         BcFFEXP2/nyGG4xxjzz+rJoBCPa/XyYsA9C0Hemi64iBIlzjFED6fNU0lTkTw+WErQ71
         WXzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=twui+k8ZA4SOdadYtaqym39ou1riprfieNb6Lo0VGLs=;
        b=oLI2I7exyAdHZO5dCYX65bn8I3sFfiTu+jkrCu1j1DqUZ5gOqXozD0uEqVOmOtfwba
         NMeV9pT5M4rNDHAVflr3kYI+INF0zStmUcsEoAdF/uPe/IA7BKQ3nyYs1Raz6JZEN6Yh
         auiRJ+tluKxSukbayRDT8AcKxIqmll2EZoaP+E4rOBoMJgrf48zQ4rQnmHIHFTbGNBCS
         4GJ44OHo3jiBPIk8av53cu9ouC2VS4R/OP9RWDEDAMDRKTWxo5joGTTVFxEtCXw6suLG
         88CwkU8/Gk4EVzovDcBT//W6JNwA16YHYTMSnXgK6QhQPpSViFb4xrYJpimW8jVvo+tL
         2Wuw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id s17si100282ljm.5.2020.03.16.03.28.50
        for <clang-built-linux@googlegroups.com>;
        Mon, 16 Mar 2020 03:28:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 236D31FB;
	Mon, 16 Mar 2020 03:28:50 -0700 (PDT)
Received: from [10.37.9.38] (unknown [10.37.9.38])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E38D43F534;
	Mon, 16 Mar 2020 03:28:45 -0700 (PDT)
Subject: Re: [PATCH v3 18/26] arm64: Introduce asm/vdso/processor.h
To: Mark Rutland <mark.rutland@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>, linux-arch@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-mips@vger.kernel.org, clang-built-linux@googlegroups.com,
 x86@kernel.org, Will Deacon <will.deacon@arm.com>,
 Arnd Bergmann <arnd@arndb.de>, Russell King <linux@armlinux.org.uk>,
 Paul Burton <paul.burton@mips.com>, Thomas Gleixner <tglx@linutronix.de>,
 Andy Lutomirski <luto@kernel.org>, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>, Stephen Boyd <sboyd@kernel.org>,
 Mark Salyzyn <salyzyn@android.com>, Kees Cook <keescook@chromium.org>,
 Peter Collingbourne <pcc@google.com>, Dmitry Safonov <0x7f454c46@gmail.com>,
 Andrei Vagin <avagin@openvz.org>, Nick Desaulniers
 <ndesaulniers@google.com>, Marc Zyngier <maz@kernel.org>,
 Will Deacon <will@kernel.org>
References: <20200313154345.56760-1-vincenzo.frascino@arm.com>
 <20200313154345.56760-19-vincenzo.frascino@arm.com>
 <20200315182950.GB32205@mbp> <c2c0157a-107a-debf-100f-0d97781add7c@arm.com>
 <20200316102214.GA5746@lakrids.cambridge.arm.com>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <c1ebab37-4df5-a763-129c-bb088cc0b151@arm.com>
Date: Mon, 16 Mar 2020 10:29:13 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200316102214.GA5746@lakrids.cambridge.arm.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: vincenzo.frascino@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172
 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
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


On 3/16/20 10:22 AM, Mark Rutland wrote:
> Hi Vincenzo,
> 
> On Mon, Mar 16, 2020 at 09:42:32AM +0000, Vincenzo Frascino wrote:
>> On 3/15/20 6:30 PM, Catalin Marinas wrote:
>>> On Fri, Mar 13, 2020 at 03:43:37PM +0000, Vincenzo Frascino wrote:
>>>> --- /dev/null
>>>> +++ b/arch/arm64/include/asm/vdso/processor.h
>>>> @@ -0,0 +1,31 @@
>>>> +/* SPDX-License-Identifier: GPL-2.0-only */
>>>> +/*
>>>> + * Copyright (C) 2020 ARM Ltd.
>>>> + */
>>>> +#ifndef __ASM_VDSO_PROCESSOR_H
>>>> +#define __ASM_VDSO_PROCESSOR_H
>>>> +
>>>> +#ifndef __ASSEMBLY__
>>>> +
>>>> +#include <asm/page-def.h>
>>>> +
>>>> +#ifdef CONFIG_COMPAT
>>>> +#if defined(CONFIG_ARM64_64K_PAGES) && defined(CONFIG_KUSER_HELPERS)
>>>> +/*
>>>> + * With CONFIG_ARM64_64K_PAGES enabled, the last page is occupied
>>>> + * by the compat vectors page.
>>>> + */
>>>> +#define TASK_SIZE_32		UL(0x100000000)
>>>> +#else
>>>> +#define TASK_SIZE_32		(UL(0x100000000) - PAGE_SIZE)
>>>> +#endif /* CONFIG_ARM64_64K_PAGES */
>>>> +#endif /* CONFIG_COMPAT */
>>>
>>> Just curious, what's TASK_SIZE_32 used for in the vDSO code? You don't
>>> seem to move TASK_SIZE.
>>>
>>
>> I tried to fine grain the headers as much as I could in order to avoid
>> unneeded/unwanted inclusions:
>>  * TASK_SIZE_32 is used to verify ABI consistency on vdso32 (please refer to
>>    arch/arm64/kernel/vdso32/vgettimeofday.c).
>>  * TASK_SIZE is not required by the vdso library hence it is not present in
>>    these headers.
> 
> It would be worth noting the former point in the commit message, since
> it can be surprising.
>

Sure it is a good point, I will add this to the commit message.

> I also think it's worth keeping the definitions together if that's easy,
> as it makes it easier to navigate the codebase, even if TASK_SIZE isn't
> necessary for the VDSO itself.

This can't be done because TASK_SIZE on arm64 requires test_thread_flag() with
is not suited for vDSO. In other words can cause the same problem we are trying
to solve.

> 
> Thanks,
> Mark.
> 

-- 
Regards,
Vincenzo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/c1ebab37-4df5-a763-129c-bb088cc0b151%40arm.com.
