Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBBPVYKDAMGQEHQQGXJA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id E84FD3AED31
	for <lists+clang-built-linux@lfdr.de>; Mon, 21 Jun 2021 18:12:54 +0200 (CEST)
Received: by mail-pf1-x440.google.com with SMTP id l145-20020a6288970000b02902e9f6a5c2c3sf9560499pfd.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 21 Jun 2021 09:12:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624291973; cv=pass;
        d=google.com; s=arc-20160816;
        b=qjwvk+JDKo3o6KhoseK5uRCSV/anY7q4h/ci70H4Rw8oyFQDRN7QkSFAzzf0vLTLGw
         JjQifkIE6m+Nrtjs9D11doSv2d7gc7QYugtU/gf7oqHxViMVTlU7TLM4hfrAD4t7ffzK
         6SOC09dVRGRJXsMiBYdtYVjchKZAwSbL/l5UE72+ntlB5FJ+V/Vbrz1Kt1RhTHv6aEnS
         HyK2Gx8Ff3Wcp9qpOW5yREU3EhEDeYD89cNMBV3BoihgSAHjR2hYU5HQ/uZE9e9ufNKv
         eRHSo5QuqdlEFPgsHQ/Puy7TxrgXtGvNrBvC9bJY1peMOFZZcSzicSJuYQmcVQIDYpmW
         EWiw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=M44TQg553ifwugRCV+i4IFa/+OqnhGWuR4bC0RGq6tk=;
        b=s6RU6XqXhQvi6UpDrxK1L1SZT9EGocBbfbU3kyaH//10S6w1davSxgJ28TGL/b+SVW
         wTW4ellFXK3ctg2WH01uGRoiE9RDrdEXoIGRJWq0qR0/kgEHptVeiW/IHGpDWA4zADt4
         pvbC53sRweZoQoDZk87qVreV7NE6gIRkPyu8R7u7+y+DD+74NcbK5A2S4JBvnPVLf9J5
         ASQWhg115UStskoQwe9Pd/gNqr99Aw31jWz2A8Zg7mIAOlIrO5sFi8dw+X3xLVio3cmP
         w2EypJTUyffbozQ0MtoQzUrXPyclcA0HDZCmaP0Co63ewWhVSFmGLpwYvwTGqEvY4tL7
         cFYQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=YAJE1Etl;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=M44TQg553ifwugRCV+i4IFa/+OqnhGWuR4bC0RGq6tk=;
        b=qZfn0t+E9ovtUPHG3V/IgydRWCCmEfL6hdPaD+g/2pdMZU/4k4WSUeMwBzqDYo0a7M
         1V5VdR961z8GkLbhw8KUzM4JrP6Wxc9ixchQ+J6j6BhOVU0atHSMzDNzmiBu7Up3HSB9
         su+PXIZlS4MIa/5nnOrsIoKaRduZszU86KlePvq1rotu+XXsEm3Er0iE6gcvl+hWycfu
         1XJHbPsMFLXnnvuIoIRsSyTfuh4kA7eNRsgK0cCiN9HxrLc8HbjVOQTlvNpbhkFB2cGl
         EFJQ0wUvJK61v8k31mZZsUakZGmOwGykFBmz1ixUDD0MavNGU+bLC+B7zTJRrJr9Uyki
         EjVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=M44TQg553ifwugRCV+i4IFa/+OqnhGWuR4bC0RGq6tk=;
        b=lXGDR8u70bypq0Lk2cfx3Q5ABfmDDD7+t41ZhU2a/vqjmw/QXbLToNHItaIsT5IKhB
         53sWpaTq6oucR+kn/32IaYDEL8X/UeEmyWGE0eENxJDgsPllVO9sH2OBzb1kyVN1hEV6
         adlFFPddqGDOqp4ta4PlCV9EdqhajF25CMZXhI3BFhbYIYimC1+xtGUeO/WkrYD67XS1
         1Els1PQmlMI+mC3K7IVEiA43hvBTIrCXzkPCrST2s7YWD0pXjKw/IczS2XpPdMUe4H0R
         8gZi+jC7L0Zva4cEmAcLGaQTzO9IQ/FjpOu7iWt91o45JYSybsWtmnR49PK6wkuhWTzR
         mbDg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532cUkPLM1eUmE4YME7XCTBD6QatEjncgNZ+xeOIur8geWZ91ofZ
	86iEZi1hI+gdzWSzUPlQaEE=
X-Google-Smtp-Source: ABdhPJxwcKqHc0FCaHJF0rAKF1d0ZjkottR2KKCOBs99ElFBe19UiMO1WsptzE1nOUvvA5i4uxfnHw==
X-Received: by 2002:a17:90a:b284:: with SMTP id c4mr28560839pjr.213.1624291973642;
        Mon, 21 Jun 2021 09:12:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:bb8f:: with SMTP id m15ls9062049pls.3.gmail; Mon, 21
 Jun 2021 09:12:53 -0700 (PDT)
X-Received: by 2002:a17:902:e551:b029:125:8aa2:1cd3 with SMTP id n17-20020a170902e551b02901258aa21cd3mr3268835plf.40.1624291973045;
        Mon, 21 Jun 2021 09:12:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624291973; cv=none;
        d=google.com; s=arc-20160816;
        b=dkrRp5YXTxG4DygFbacXoNopNrwr95iFCvfraK9tTlKq8eTfiYkRU7wO4Fx2/btG60
         xN2EnwMIaOg7fJIhTPYzdetIrfenwtDIqHVe4BaPqr7Aw6MKT/ovhURYH+aHgnQ+46Fb
         hNEVpT2PTi3Wm2U/sn8sIMsualbtWycN1Hb03tztYul2qGjU0QSBH4IiTMtVf/+fr+1J
         Gnw60rT44aQIsoph6j1NwwZEhYQFvEeemm1t7+R9+0dHKQTvnI7sSKnXjHkEq0oyRXtg
         XH00yz7zTkOlE6FmHZFmYvIeDOzegWWlmjHL1h6j4yWlxmoeD5OV7ql17HFufl3KVaRv
         Q7bw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=dCCHtU6ukO2ybtZ/YfyNn9ZX3sXPPmAOXMwEITrE5IU=;
        b=dThlOFUDoQRYSlClDJdHQko6tWrYsNuU/nWDBt9dm4YVcZ/A9aPeWFUy8B7sdMGFAq
         kBysAnlgPIOh2AI7yv5cFj7Zq8FBUCqdOpdJ0zSwodRgeCG/sN7WOm+yqN92oMiWvld7
         vqFIXiLt2sEth+9FYmxFCUIJ8kTxrTeW6e6tZRJcQ0mWwRmqgxu2cEVDZ8gv1F0hud1Y
         kmijntKr2pmyKyvDqmSCPXO9UsC/bzVgOM/YMlKSzoX739ida9emmyg+zvI4S2PNh5vD
         c7wbHXk4Rx98NG/WQNdtEb8MQAwuIB2iAjYGydowKhqgKFO5HQ/0G+nYoKLFvvpH95QF
         mf0A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=YAJE1Etl;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id a6si762939pls.4.2021.06.21.09.12.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 21 Jun 2021 09:12:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 8318C6115B;
	Mon, 21 Jun 2021 16:12:52 +0000 (UTC)
Subject: Re: [PATCH 2/2] arm64: insn: move AARCH64_INSN_SIZE into <asm/insn.h>
To: Mark Rutland <mark.rutland@arm.com>
Cc: will@kernel.org, linux-arm-kernel@lists.infradead.org,
 Catalin Marinas <catalin.marinas@arm.com>, clang-built-linux@googlegroups.com
References: <20210609102301.17332-1-mark.rutland@arm.com>
 <20210609102301.17332-3-mark.rutland@arm.com>
 <YMv2B6HCnDReOFIr@archlinux-ax161> <20210618151835.GC8318@C02TD0UTHF1T.local>
 <YMzPi0Ckyd9wqO5d@archlinux-ax161>
 <20210621080830.GA37068@C02TD0UTHF1T.local>
From: Nathan Chancellor <nathan@kernel.org>
Message-ID: <3cde2fe9-e5d5-3102-d527-4cc9c5059b7f@kernel.org>
Date: Mon, 21 Jun 2021 09:12:51 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210621080830.GA37068@C02TD0UTHF1T.local>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=YAJE1Etl;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On 6/21/2021 1:08 AM, Mark Rutland wrote:
> On Fri, Jun 18, 2021 at 09:53:31AM -0700, Nathan Chancellor wrote:
>> On Fri, Jun 18, 2021 at 04:18:35PM +0100, Mark Rutland wrote:
>>> On Thu, Jun 17, 2021 at 06:25:27PM -0700, Nathan Chancellor wrote:
>>>> Hi Mark,
>>>
>>> Hi Nathan,
>>>
>>>> On Wed, Jun 09, 2021 at 11:23:01AM +0100, Mark Rutland wrote:
>>>>> For histroical reasons, we define AARCH64_INSN_SIZE in
>>>>> <asm/alternative-macros.h>, but it would make more sense to do so in
>>>>> <asm/insn.h>. Let's move it into <asm/insn.h>, and add the necessary
>>>>> include directives for this.
>>>
>>>> I bisected a CONFIG_LTO_CLANG_THIN=y build failure that our CI reported
>>>> to this patch:
>>>>
>>>> https://builds.tuxbuild.com/1u4Fpx2FQkkgkyPxWtq0Ke4YFCQ/build.log
>>>
>>> Thanks for reporting this; the lopg is really helpful!
>>>
>>>> I have not had a whole ton of time to look into this (dealing with a
>>>> million fires it seems :^) but it is not immediately obvious to me why
>>>> this fails because include/linux/build_bug.h is included within
>>>> arch/arm64/include/asm/insn.h.
>>>
>>> The problem is that with LTO, we patch READ_ONCE(), and <asm/rwonce.h>
>>> includes <asm/insn.h>, creating a circular include chain:
>>>
>>> 	<linux/build_bug.h>
>>> 	<linux/compiler.h>
>>> 	<asm/rwonce.h>
>>> 	<asm/alternative-macros.h>
>>> 	<asm/insn.h>
>>> 	<linux/build-bug.h>
>>>
>>> ... and so when <asm/insn.h> includes <linux/build_bug.h>, none of the
>>> BUILD_BUG* definitions have happened yet.
>>
>> Aha, that would certainly explain it. I figured something like this
>> would be the root cause but figuring out header dependencies is not my
>> cup of tea.
>>
>>> Will, are you happy to take the fixup patch below, or would you prefer
>>> to drop this patch for now?
> 
>>>   arch/arm64/include/asm/alternative-macros.h | 2 +-
>>>   arch/arm64/include/asm/insn.h               | 5 +----
>>
>> Looks like arch/arm64/include/asm/insn-def.h is missing from this patch?
>>
>> If I add one with just the two deleted lines plus a header guard, the
>> build passes.
>>
>> Tested-by: Nathan Chancellor <nathan@kernel.org>
> 
> Whoops; that should have been as below.
> 
> Was that the same as you tested?

Yes, that is exactly what I did so the tag should still be good.

Cheers,
Nathan

> Thanks,
> Mark.
> 
> ---->8----
>  From 622fd784c57423b1a276fbbfb270b84839e3afa8 Mon Sep 17 00:00:00 2001
> From: Mark Rutland <mark.rutland@arm.com>
> Date: Fri, 18 Jun 2021 16:11:22 +0100
> Subject: [PATCH] arm64: insn: avoid circular include dependency
> 
> Nathan reports that when building with CONFIG_LTO_CLANG_THIN=y, the
> build fails due to BUILD_BUG_ON() not being defined before its uss in
> <asm/insn.h>.
> 
> The problem is that with LTO, we patch READ_ONCE(), and <asm/rwonce.h>
> includes <asm/insn.h>, creating a circular include chain:
> 
>          <linux/build_bug.h>
>          <linux/compiler.h>
>          <asm/rwonce.h>
>          <asm/alternative-macros.h>
>          <asm/insn.h>
>          <linux/build-bug.h>
> 
> ... and so when <asm/insn.h> includes <linux/build_bug.h>, none of the
> BUILD_BUG* definitions have happened yet.
> 
> To avoid this, let's move AARCH64_INSN_SIZE into a header without any
> dependencies, such that it can always be safely included. At the same
> time, avoid including <asm/alternative.h> in <asm/insn.h>, which should
> no longer be necessary (and doesn't make sense when insn.h is consumed
> by userspace).
> 
> Reported-by: Nathan Chancellor <nathan@kernel.org>
> Signed-off-by: Mark Rutland <mark.rutland@arm.com>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will@kernel.org>
> ---
>   arch/arm64/include/asm/alternative-macros.h | 2 +-
>   arch/arm64/include/asm/insn-def.h           | 9 +++++++++
>   arch/arm64/include/asm/insn.h               | 5 +----
>   3 files changed, 11 insertions(+), 5 deletions(-)
>   create mode 100644 arch/arm64/include/asm/insn-def.h
> 
> diff --git a/arch/arm64/include/asm/alternative-macros.h b/arch/arm64/include/asm/alternative-macros.h
> index 703fbf310b79..eba3173a2a2c 100644
> --- a/arch/arm64/include/asm/alternative-macros.h
> +++ b/arch/arm64/include/asm/alternative-macros.h
> @@ -3,7 +3,7 @@
>   #define __ASM_ALTERNATIVE_MACROS_H
>   
>   #include <asm/cpucaps.h>
> -#include <asm/insn.h>
> +#include <asm/insn-def.h>
>   
>   #define ARM64_CB_PATCH ARM64_NCAPS
>   
> diff --git a/arch/arm64/include/asm/insn-def.h b/arch/arm64/include/asm/insn-def.h
> new file mode 100644
> index 000000000000..2c075f615c6a
> --- /dev/null
> +++ b/arch/arm64/include/asm/insn-def.h
> @@ -0,0 +1,9 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +
> +#ifndef __ASM_INSN_DEF_H
> +#define __ASM_INSN_DEF_H
> +
> +/* A64 instructions are always 32 bits. */
> +#define	AARCH64_INSN_SIZE		4
> +
> +#endif /* __ASM_INSN_DEF_H */
> diff --git a/arch/arm64/include/asm/insn.h b/arch/arm64/include/asm/insn.h
> index 1430b4973039..6b776c8667b2 100644
> --- a/arch/arm64/include/asm/insn.h
> +++ b/arch/arm64/include/asm/insn.h
> @@ -10,10 +10,7 @@
>   #include <linux/build_bug.h>
>   #include <linux/types.h>
>   
> -#include <asm/alternative.h>
> -
> -/* A64 instructions are always 32 bits. */
> -#define	AARCH64_INSN_SIZE		4
> +#include <asm/insn-def.h>
>   
>   #ifndef __ASSEMBLY__
>   /*
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/3cde2fe9-e5d5-3102-d527-4cc9c5059b7f%40kernel.org.
