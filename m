Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBFNKXXZQKGQE5PJ7O7Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x539.google.com (mail-ed1-x539.google.com [IPv6:2a00:1450:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 1733518690B
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Mar 2020 11:29:42 +0100 (CET)
Received: by mail-ed1-x539.google.com with SMTP id y10sf14804899edw.23
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Mar 2020 03:29:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584354581; cv=pass;
        d=google.com; s=arc-20160816;
        b=vLHpDwhcu3iYQahE/0zXBJDlyzlVGFyL6MrCEh82cae8BdmeJdC8HOZ480WVOb/AzV
         16nrdq0Qc3yggF+TBq88kIW+6RhEyHVQ8BvYnmGT65SK+5xB0VDvFarpcRpzmFO7F6TA
         AUO5D/+su7zmF/aMEeQXytwffcoe8IFH2bWI3q6fYLZBQEmwHHLKDbwDITGojOjQ/TJm
         m0FBbj+OShjPeuY+Q6/Nb9AP6zzZCBSdmkARNLn3aumSvL2/qM8+TZnXXfLGccCpBY2R
         7KNks0dKTOalXfskao3W0fM+k3BGtb1XkVxmj41VbX61u02ruKbLKTMguk4HFMU63zmN
         Zj6g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=zB8JhvSIPoLWEMNXIZCFcU+z4UTreAGitwCR6/igJf0=;
        b=u5pJimK2d77nceZWRrjUI8OsfLTTkgV+RWw+TCw8JjZzSjlVJXFWVlp2Ns9KLBRTKm
         37rgVT8DwVr5wp2b6YZwBcMDC7cOUsW5a5AhwaLoXQ/htUzZ6K6YetWhkfdnAT+Y8dSM
         qhv2FznUTImVQ7rctKPj9c84Dq/WO0ehBzEaYBheD/kAwaN4N3WE95N+mPuR1K9KKUie
         oCgBJAYWrJhHJe2y6P6bbriSPSyxfazAWh1XABPSzYT175o3ZDr1awAXxxcedX1VsIVX
         R2WdRpOerVEHNR8LfZZUpQwx4VbrI+pgMs0lqT/IWRnTUVs2bqyVHPkzNVOLTFH0axJR
         ue2w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zB8JhvSIPoLWEMNXIZCFcU+z4UTreAGitwCR6/igJf0=;
        b=f4/EzslXdsGDCnQ65qiIwPttxoAkuy1SqJmNwc0VdWrBhNvruvP1HY4+LQUQi5CQgM
         Xb9qklc8s60Hc/PVOwJjbygTRBXqmGGgmvDD/iID3steyuo0Jbgw0znNGK7sxB9DMsIp
         B9JqXjfwNiYECwZiueA5OOfCzVWTwrwLSbiTiMS6Hfx/hMsx6FeoG0UBm3NefrcHka6X
         Mg5FnJGNzpVySq9q/CBe8sKR9/ZGDkX1f+UamL8npYO4wxlXsvfab2qS64DVQpj/v/y1
         qh13byT2Nan1IQnUbOxFlORLcZKWYkKoTFDYb+FW4e1JYUbmfYxKdGFjxhYst7EIqnRJ
         m3aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=zB8JhvSIPoLWEMNXIZCFcU+z4UTreAGitwCR6/igJf0=;
        b=F9jwnP2sq5cEVMEpClKwZnWkEuvFCWwbFWXn/UqIgI3SYeXZaDzCm2ZWIXxckQGMjC
         jxnc/DUCQIxI4vyTarmobv3RPLZd2tvSP2tePAyxifIEgLdu2uhuSeagjGZAF7Lp5wbF
         o75bLrxeNvFgFQlFnya6yJeYDb3tMHnss7aULw7Id1cqyzWpaqylT1Gh4XTYechBYcPq
         jaB53GoehaftJgGfoiX9p1IdqV0MrJQgkH8mxGottskX17UmE+cVhmEub+Q2wKK54XYB
         IWe6tQMhJ376a1ZSrPeUnh65s97+9rzhR5nRNtRbr79FWRoe/BILm9vQbxRKjHrllJ/s
         B6ow==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ3wFZ8TY/2TaenP5ZRGuGs3ZN04C/5C+7BaS11WWy+todv4FZtf
	a6k9AOahFpY+QI2ZHsDAHQc=
X-Google-Smtp-Source: ADFU+vvZXd2MuWNp7CzcCSKAa+eUhNd85c+4Wl8CCWdgtSMQI4ZiLIiDoPuFaMeYWgntpZraOy71EA==
X-Received: by 2002:a17:906:33d0:: with SMTP id w16mr18085488eja.257.1584354581844;
        Mon, 16 Mar 2020 03:29:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:c049:: with SMTP id u9ls11065502edd.7.gmail; Mon, 16 Mar
 2020 03:29:41 -0700 (PDT)
X-Received: by 2002:aa7:da82:: with SMTP id q2mr26925365eds.245.1584354581285;
        Mon, 16 Mar 2020 03:29:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584354581; cv=none;
        d=google.com; s=arc-20160816;
        b=fDu9MOj+g68vNb5fq+/snGLrnU+SgwDhhnPJjQeUceFpV1dF+Ssxpt+O9wuVklsxP8
         VFfyTUBgC4Sx3Mz0One1K+ssPshCwm55VRBkmfZm1bFtnnuMlM8FijRyXhYV3XdLQkgw
         fwdVO3ZtJpXZj1Fa1UBVXtzF5mTh6L5eWSWjBg3hX+Q2/lQBTKO99uQXilv3kbpy2ti6
         wqqqmOeRCw3Qridjzh6UBIUIsATp7fN6zp1PUptxoydZlk34aCvPpKiuBxOndPjOMeKC
         IUBb2m8wpCa49w+pMl2Sp7mm5LatAvyCBVa2BVcpDjcHvTqmrXXjOQ5Kpc4cgpcG6jaJ
         eujg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=i5hYwMt1HmJM0XJvWAhlUq9Sgqlh+h/8e2L2Rr+OHq4=;
        b=DC0TiHAgQ5+gM/mXNMhNZBe6xY7HBkKMRHoZrImE0/AGGVxwCbbbm3LW87aQl3dhBP
         N+7L+y4FevVrGeInZmuAnMLkYaC+vJfu0ulXp/Y1zX/wEz3MyTVJ1zJuYzJAD5cLgab4
         GJsDWCpTPJeJgsYQZx/zIbK/BnXFwhnMXIEDlcUR//yeNADcqlKVjmywD6CkWH1TQ42d
         un8HPZAoyatGkuvaOL+21gd2Lmz2f2iETSiaxFc7aqiw9kzSf/TTqOjzCir1P6yJJ7jL
         009ap//KpZ1VLzJ3TGNJ9OrHUamG+WJWMDLg0XP8eJ9D0LATVKno+ARuQ0lU26uVGsTt
         hoqQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id cw13si951801edb.2.2020.03.16.03.29.41
        for <clang-built-linux@googlegroups.com>;
        Mon, 16 Mar 2020 03:29:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 95D391FB;
	Mon, 16 Mar 2020 03:29:40 -0700 (PDT)
Received: from [10.37.9.38] (unknown [10.37.9.38])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 379E03F534;
	Mon, 16 Mar 2020 03:29:36 -0700 (PDT)
Subject: Re: [PATCH v3 18/26] arm64: Introduce asm/vdso/processor.h
To: Catalin Marinas <catalin.marinas@arm.com>,
 Mark Rutland <mark.rutland@arm.com>
Cc: linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org,
 clang-built-linux@googlegroups.com, x86@kernel.org,
 Will Deacon <will.deacon@arm.com>, Arnd Bergmann <arnd@arndb.de>,
 Russell King <linux@armlinux.org.uk>, Paul Burton <paul.burton@mips.com>,
 Thomas Gleixner <tglx@linutronix.de>, Andy Lutomirski <luto@kernel.org>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Stephen Boyd <sboyd@kernel.org>, Mark Salyzyn <salyzyn@android.com>,
 Kees Cook <keescook@chromium.org>, Peter Collingbourne <pcc@google.com>,
 Dmitry Safonov <0x7f454c46@gmail.com>, Andrei Vagin <avagin@openvz.org>,
 Nick Desaulniers <ndesaulniers@google.com>, Marc Zyngier <maz@kernel.org>,
 Will Deacon <will@kernel.org>
References: <20200313154345.56760-1-vincenzo.frascino@arm.com>
 <20200313154345.56760-19-vincenzo.frascino@arm.com>
 <20200315182950.GB32205@mbp> <c2c0157a-107a-debf-100f-0d97781add7c@arm.com>
 <20200316102214.GA5746@lakrids.cambridge.arm.com> <20200316102621.GC3005@mbp>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <b27428fd-5cd9-ac5b-f11c-894985512f23@arm.com>
Date: Mon, 16 Mar 2020 10:30:04 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200316102621.GC3005@mbp>
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

On 3/16/20 10:26 AM, Catalin Marinas wrote:
> On Mon, Mar 16, 2020 at 10:22:15AM +0000, Mark Rutland wrote:
>> On Mon, Mar 16, 2020 at 09:42:32AM +0000, Vincenzo Frascino wrote:
>>> On 3/15/20 6:30 PM, Catalin Marinas wrote:
>>>> On Fri, Mar 13, 2020 at 03:43:37PM +0000, Vincenzo Frascino wrote:
>>>>> --- /dev/null
>>>>> +++ b/arch/arm64/include/asm/vdso/processor.h
>>>>> @@ -0,0 +1,31 @@
>>>>> +/* SPDX-License-Identifier: GPL-2.0-only */
>>>>> +/*
>>>>> + * Copyright (C) 2020 ARM Ltd.
>>>>> + */
>>>>> +#ifndef __ASM_VDSO_PROCESSOR_H
>>>>> +#define __ASM_VDSO_PROCESSOR_H
>>>>> +
>>>>> +#ifndef __ASSEMBLY__
>>>>> +
>>>>> +#include <asm/page-def.h>
>>>>> +
>>>>> +#ifdef CONFIG_COMPAT
>>>>> +#if defined(CONFIG_ARM64_64K_PAGES) && defined(CONFIG_KUSER_HELPERS)
>>>>> +/*
>>>>> + * With CONFIG_ARM64_64K_PAGES enabled, the last page is occupied
>>>>> + * by the compat vectors page.
>>>>> + */
>>>>> +#define TASK_SIZE_32		UL(0x100000000)
>>>>> +#else
>>>>> +#define TASK_SIZE_32		(UL(0x100000000) - PAGE_SIZE)
>>>>> +#endif /* CONFIG_ARM64_64K_PAGES */
>>>>> +#endif /* CONFIG_COMPAT */
>>>>
>>>> Just curious, what's TASK_SIZE_32 used for in the vDSO code? You don't
>>>> seem to move TASK_SIZE.
>>>>
>>>
>>> I tried to fine grain the headers as much as I could in order to avoid
>>> unneeded/unwanted inclusions:
>>>  * TASK_SIZE_32 is used to verify ABI consistency on vdso32 (please refer to
>>>    arch/arm64/kernel/vdso32/vgettimeofday.c).
>>>  * TASK_SIZE is not required by the vdso library hence it is not present in
>>>    these headers.
>>
>> It would be worth noting the former point in the commit message, since
>> it can be surprising.
>>
>> I also think it's worth keeping the definitions together if that's easy,
>> as it makes it easier to navigate the codebase, even if TASK_SIZE isn't
>> necessary for the VDSO itself.
> 
> It won't work as TASK_SIZE requires (on arm64) test_thread_flag() which
> can't be made available to the vDSO.
> 

Ups, I did not see this :) luckily I agree ;)

-- 
Regards,
Vincenzo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/b27428fd-5cd9-ac5b-f11c-894985512f23%40arm.com.
