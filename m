Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRB5ETXXZQKGQE2EDL26I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13e.google.com (mail-lf1-x13e.google.com [IPv6:2a00:1450:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id 9780B186816
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Mar 2020 10:42:12 +0100 (CET)
Received: by mail-lf1-x13e.google.com with SMTP id g2sf2609737lfb.18
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Mar 2020 02:42:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584351732; cv=pass;
        d=google.com; s=arc-20160816;
        b=d5vdrqKldnlOoUyEaKru5R/5doBYXpI1f+I/zLGc2XiHkHLdK6kitYv53MSOzmfnVw
         9dMy6IjSRH+G4rADz9doWNJlblfnKnK8mon3CHjHh8iEGAJRuZ85moqONbxk1roNVL2B
         EFheDRfSgaUWApNUZW75Ryczqno9KxehMiY3iM+sqNa+7sW8uAuqldJst3/d+KrWiT1m
         JPD/nrGZm3LbW6hnIBc+6ua2mcrPBPDi55rCEDEtU5wmPJ0QvpToJSvXK2Elj//ZgJtm
         kUZYMmHxMm0nrj3qM/2lFsvfD5NM6AjjStV1Gvjz9gDkFZA2V8VXGMJq+QmgaoV2Es5w
         Qcog==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=MKVtbtT1uDi/w4l71a4UzSUY7TVBYhtQEGmCCdH4gMQ=;
        b=ZxerBozBVGiBx/NUzT5Bq+G0pSzmn1zZMuFDkQpqxC7adrkEe2SHfPUjXCqTsVoI5R
         VasNg/pnpLx14DTxlzCqEiNYxOGUttrwu2TFWhnluZ1Fd6Hyt6sbXRHmXDGRZBoi/KOX
         iJey8Xk/Hxde9BwYKhPzQ+uhdk/mLj/Pr33cGLYywHM0Q6M5kFq3VsZk6nzQhgcJ7+Wt
         wP4laQ0rWBaJb9ul3q7YAhFHnfyWdva+rLBlEA+K9IKyRcig0zZmno3a0La9ooyDBj7p
         2DmTUWCOBBzmSbfZkLVbuNRhO2njg2NU/TgMz3BKBp9L/P9ac/lShN2CpfmLSdixs428
         gIEA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=MKVtbtT1uDi/w4l71a4UzSUY7TVBYhtQEGmCCdH4gMQ=;
        b=CgS4KLyVvqeI24cC02PNAxfYm7dbGyMHwQckN14w6IhIUnugYfwpwkVVkP/guGL31e
         mXY8jd1kpJWx50wbwukfqP9DojJOaL61dduRNS0GMIFdcex55LCJSo+Ib/kC7hjfJxWn
         mFe8a9Gli5bpMxEx7mntxbefnDH1m2KPMgzr3qcWn3ca5+/p+RI6CDRE/pg2HiSCWRNF
         ldUijIIDCWSaSJLgzLyZUzDzMplr2cXTYsU+qaEUvTqkIo3ylk4riWppnQ927zkeO5kP
         mWyqf+PZSO3HVvqMDQh5t3H0wDDTz47d422y4CVm4ol6AO7YXuYETqj6b9Ai5SYBO3ge
         cxeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=MKVtbtT1uDi/w4l71a4UzSUY7TVBYhtQEGmCCdH4gMQ=;
        b=gVgF/G6rr9LCGOte/yoI/F5jF9SJNXkRVEwtSsaXQhVnAUTZm6LCR26V3zshE5D6Js
         yDTjp+BSFgrh0+775D2sBz5+veNhNkwZYvFgYa1AHwzxDFfm0VqoKwczA4fLeKHmzJnd
         IPZ0mv7+tfG6JabbRTrPgHkdJ1I/wKbdWQluKCT6PapLhuf+Y4GwyxVp0vLOolQc7qvD
         8Z4iiSc6luRWcJLBf7NadnwMHq69fZh6QF1ufpaR24+o7hzTBDDIPhqWSoZdz6QPFFnb
         q+2RwZOrpQ4HOdGtc+b8g6Zoz7sa8sEroRDQMFEZqJe2BlCYbTCEGVZCBhSH6aSNynM1
         AUSA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0aM9DJRZzJB877ZUtHtYob8hpQPhiiOIStLlblWZ2hMdR8xVvi
	buy5PjJH5NA4/6fS6rRw2SA=
X-Google-Smtp-Source: ADFU+vudRLzW9WIDunTK3ax6HhiOvCLpF5ojWD1wYL4LhKQE6GtTVUmTaxGO68UDp66gjbkh9+vGBQ==
X-Received: by 2002:a2e:2244:: with SMTP id i65mr1762147lji.26.1584351732159;
        Mon, 16 Mar 2020 02:42:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:95c8:: with SMTP id y8ls3207121ljh.2.gmail; Mon, 16 Mar
 2020 02:42:11 -0700 (PDT)
X-Received: by 2002:a05:651c:2007:: with SMTP id s7mr16125975ljo.214.1584351731512;
        Mon, 16 Mar 2020 02:42:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584351731; cv=none;
        d=google.com; s=arc-20160816;
        b=kF/Ru+1DrZWH+wmbpfBJVFGON09C/vGbpB0THSDoSUc9Aj/T3Yw7sHoYn/TmU583yu
         9r1qS5xYs6AvDeorr0WZAyVfVCbrBZKFeFfGDCh3l1QbgZLtEKj15bOCdNSWzhtf96CS
         Mh/O2OuhVkK1s6adDt8WmuGBJG0gIMMclpm8rif7doNpHwzCGBTttGPZ/IPeOGkvRFN8
         OHAvJHbCmY56tt7rLzjsdk2+Xf34YjXQBEXiatnE/LOGbI+R15lsy6QRsDncjspEQqun
         qGZ9UObPhlv8BpuX8FPm+hMHPlbdnQ5GIn6a56o23Ee53eWPc/U4Lcz75Vvn6WQIxmhA
         vBdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=w5OPyaqGBFDViwif3RAKhwXdaMdrici6UwMrXP9C9DA=;
        b=JflYza4in088s2hCDrHu4Sl/oum/TJVo0cUxWOwtbEGbm7IasYI/MujTSx+ZheIWlW
         F8FHgmZZU2RcjK8+ukcu2dKgvvqbFybLOw7gS662DWLm31Wt5zb+7HFOraml0inxwoTN
         BZCFE0ncAoZ6HXMOB8pHJ4Xc1g7JqT+zHFGP5ihob1toq2+HFMV37sPNtLqNeMHCHtG3
         1EK6ESM/+y4ZxZGFPFgi7TMneDVxZ7pG7ydoOyUIzKOeX6sahxy3zaGtUiGV+HCQPXCz
         /09CcBy9ICodafUxIhKnX9RCbSvOtrpVbk+ziXrWAcYcvUQ3EsMltJy6c2uC5DLakLMf
         /H6w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id s17si92240ljm.5.2020.03.16.02.42.11
        for <clang-built-linux@googlegroups.com>;
        Mon, 16 Mar 2020 02:42:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0A1361FB;
	Mon, 16 Mar 2020 02:42:10 -0700 (PDT)
Received: from [10.37.9.38] (unknown [10.37.9.38])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E587B3F534;
	Mon, 16 Mar 2020 02:42:04 -0700 (PDT)
Subject: Re: [PATCH v3 18/26] arm64: Introduce asm/vdso/processor.h
To: Catalin Marinas <catalin.marinas@arm.com>
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
 Mark Rutland <Mark.Rutland@arm.com>, Will Deacon <will@kernel.org>
References: <20200313154345.56760-1-vincenzo.frascino@arm.com>
 <20200313154345.56760-19-vincenzo.frascino@arm.com>
 <20200315182950.GB32205@mbp>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <c2c0157a-107a-debf-100f-0d97781add7c@arm.com>
Date: Mon, 16 Mar 2020 09:42:32 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200315182950.GB32205@mbp>
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

Hi Catalin,

you should not really work on Sunday ;-) Joking, thanks for reviewing my patches.

On 3/15/20 6:30 PM, Catalin Marinas wrote:
> On Fri, Mar 13, 2020 at 03:43:37PM +0000, Vincenzo Frascino wrote:
>> --- /dev/null
>> +++ b/arch/arm64/include/asm/vdso/processor.h
>> @@ -0,0 +1,31 @@
>> +/* SPDX-License-Identifier: GPL-2.0-only */
>> +/*
>> + * Copyright (C) 2020 ARM Ltd.
>> + */
>> +#ifndef __ASM_VDSO_PROCESSOR_H
>> +#define __ASM_VDSO_PROCESSOR_H
>> +
>> +#ifndef __ASSEMBLY__
>> +
>> +#include <asm/page-def.h>
>> +
>> +#ifdef CONFIG_COMPAT
>> +#if defined(CONFIG_ARM64_64K_PAGES) && defined(CONFIG_KUSER_HELPERS)
>> +/*
>> + * With CONFIG_ARM64_64K_PAGES enabled, the last page is occupied
>> + * by the compat vectors page.
>> + */
>> +#define TASK_SIZE_32		UL(0x100000000)
>> +#else
>> +#define TASK_SIZE_32		(UL(0x100000000) - PAGE_SIZE)
>> +#endif /* CONFIG_ARM64_64K_PAGES */
>> +#endif /* CONFIG_COMPAT */
> 
> Just curious, what's TASK_SIZE_32 used for in the vDSO code? You don't
> seem to move TASK_SIZE.
> 

I tried to fine grain the headers as much as I could in order to avoid
unneeded/unwanted inclusions:
 * TASK_SIZE_32 is used to verify ABI consistency on vdso32 (please refer to
   arch/arm64/kernel/vdso32/vgettimeofday.c).
 * TASK_SIZE is not required by the vdso library hence it is not present in
   these headers.

-- 
Regards,
Vincenzo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/c2c0157a-107a-debf-100f-0d97781add7c%40arm.com.
