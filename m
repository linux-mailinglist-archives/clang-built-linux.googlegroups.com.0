Return-Path: <clang-built-linux+bncBDV37XP3XYDRBZNGXXZQKGQEMH4CWJI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13d.google.com (mail-lf1-x13d.google.com [IPv6:2a00:1450:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id 867601868E3
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Mar 2020 11:22:30 +0100 (CET)
Received: by mail-lf1-x13d.google.com with SMTP id u11sf6433977lff.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Mar 2020 03:22:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584354150; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZMjEf5Item15t3s1vHtcKm2WEOcNvL9gwa7R8sNjcHidIsRkVYgJ3CAcKJDhcDkPY1
         pr9DsfV6grcULac3lOE1oiJRFqOW0SCgFuiU5iAUtbMN7BbnLh/yZ14NuLYSwVMx71t+
         4+no4bBQQma7HP8Ao77OFIGkOABkDsLXvstS72bil3MaETdSfUE0nbZOuNUQAGBhs7nV
         JDhTr0op7F1Jq5Mgkevghd9oyg5DfWOuQgmOotncyktC1ZviD0GskUj0yP4gng9Npz63
         mHl0OSecgIx2uLfRLEFtoOuGM0A2f+9tNJiQVPHnC/NqbsIN9z8SyaDiUyCsuOI/l+pT
         /eig==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=uuGQfbBl9GjrBoC5SUmr2G6UOtIMpLtzqRJRjqdunGQ=;
        b=S4Ve80ozuZ5o9G0Tsn4Jd0GmYXhw1T/Uwfg4sFHaLIR662RM6aaKjeYRhErmKGlsqI
         8Iutb4O1gVztqU9QIan/E6IvoPS3nu/YTlq+iXeN0m9ssAiNaYBI5dHhHe5I9VRfW7x1
         6HWKMLouJK5qzuVyXBrBu0ufHIEoFBz5rShQw40vfLn892SFtc/0Yu5dTDXpnjXkM16F
         BihPBgLjbG5qdJicXj0bRP1NsGM88orj5Dcj67WJ+0lVpanjlnbwADg4EP7VYFwMHMpz
         WyQLW0d2gMvY7M0i6XvQZra+VEkCI5te7cTBLCZFaOTk1DcJdgIFi2QASuFncU8eYwJs
         sFDg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=uuGQfbBl9GjrBoC5SUmr2G6UOtIMpLtzqRJRjqdunGQ=;
        b=WwH4gUhzdHRO88PixF41gY2YB+7woDb0kH32Vpy2xcF39ckjvdj36Wi/zUQwMlimCA
         WqQpRZh635NnuoCAfhInTWWFUBGyND7qV98lSrptxE2uTc6+y+8yCglXSTzglah8mM8x
         p6cVQJRsdFgBJuka2228/Jv1Y4dPyzyk7cR2NVeP2EgPW3MkugAAHgU/1IwDGR0ghakS
         JK78tlNtY+74rdEysdyfFbRMPIZs4KdSNNx+P6w9xgQlSHBVkEEMUbhtebP7DzgRe/D4
         Hyd4LE+lhT2GJvSpcgvBC1Nyp2iJL3bjHYijOMIBXZYzuGFvhl4e9labD3TV5Ji3JsqV
         IO7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=uuGQfbBl9GjrBoC5SUmr2G6UOtIMpLtzqRJRjqdunGQ=;
        b=qbx9p4nwW5NNGBtThS+vNE7tBLVVnES1/sXBUGcV9FkmFrjg4cs7zAxseBJfmK0jcy
         e7H86IAciixoVTk8xV5TnL6nRp/SNw/GzD4BmQWz00vf2spEsaHaZWGDvY0/a0BCHTgw
         KxU/7AeBsF1RGokq/nfti5AqI+bQxevZDokMp97Sn+WuU9fIZngTJLPa+qygPWAyaRp9
         zwjCpDnqNkPq/yOMW4ksl82GK4z7gD14qO5+uK9dvbjEj7wPGzudQSM4qZ0UYXTqB9sd
         cTHYt0zWHOA/i5KgrYzDdq9nGXUSwXl8vXYELW+Hoxl3EEgi+ECbbk6Iy0niuGUdwNgP
         H1iQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2zMOKdXgMNFZny7ftpE8stgR8ByAAKcimjmmwBUhBp1/i2Yz4c
	jekxo7xAg1CtBThO0/UB+3c=
X-Google-Smtp-Source: ADFU+vsM+t3Le5SbdcYYHLmfitk1DrUAWCqKzxZe0QA2sRQSX7+7Cps831Q2M8POF+9lAGva7UvJmg==
X-Received: by 2002:a19:88d5:: with SMTP id k204mr2216112lfd.120.1584354150049;
        Mon, 16 Mar 2020 03:22:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:686:: with SMTP id t6ls2487834lfe.3.gmail; Mon, 16
 Mar 2020 03:22:28 -0700 (PDT)
X-Received: by 2002:ac2:5929:: with SMTP id v9mr16120884lfi.66.1584354148887;
        Mon, 16 Mar 2020 03:22:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584354148; cv=none;
        d=google.com; s=arc-20160816;
        b=0ywrsxzoIJWJwjPOubvotZR/mO0OYYVM0TXYGzE+IeHsxE0xagxwaTgmJWipOvAfyF
         V6c9KnUoDTxaHPXfknk1/AJZnEeo1hDO6stoxuQQ5sdVh3p2TZnTKBI1HRPAWfYEd6+N
         s8CZKEe/EJbiMQ7BmsiOFRiKrIT0AJQjFrNKa8ZUatEon0dT26Ja/Q2zUiYaYqqABrDL
         RNGRlL2k1A5dCbYK3RVUtdN2IGgWzHys2QFuXxcOE6sCasxLKyOIpB3PJYliH0IoCuqf
         4wcnO7jL0RY51G0c/pXhIHPmd2jLdFV12bcODK9jFbnfuB1ZPkQgeRvzjIxUucK/hd8E
         DMoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=O5dkhwXkiY3mdDyUKLrX8sKWM/XD1cNv+YVEWrMsKQA=;
        b=TVXy0TFW+LTR35X7HxpSbCctgAY+n7e0BfvgIP3YJ0DWLHFoFNWBYgKCPOLcbgHo87
         VZgeKSyDieseeGgO7VL1BGBt+yiN66bLkUCpJTcTWHhm1kh9QJOqH6/AMqCN+a/Ej8GN
         D+NdUJRPWKGkQLxzY60rntxCeWlJs+B7etaD6eeJJOY25MaioRv88N7dpk2w6/30fkoG
         auZcH95ITse/CfLV1mJ7TTuGBsQGVjMfpu75c53Ow1zNYeFAy3OImdAReIm+8Hwbq+oP
         XDRREqJC4+OcYoKRFYAvQKubseBCSBWsn8re09Y5opAtr+Eud19wk8WxZH+3/H4TFkXd
         Ps6Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id o4si158119ljp.4.2020.03.16.03.22.28
        for <clang-built-linux@googlegroups.com>;
        Mon, 16 Mar 2020 03:22:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D70DD1FB;
	Mon, 16 Mar 2020 03:22:27 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DF3333F534;
	Mon, 16 Mar 2020 03:22:24 -0700 (PDT)
Date: Mon, 16 Mar 2020 10:22:15 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>, linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-mips@vger.kernel.org, clang-built-linux@googlegroups.com,
	x86@kernel.org, Will Deacon <will.deacon@arm.com>,
	Arnd Bergmann <arnd@arndb.de>, Russell King <linux@armlinux.org.uk>,
	Paul Burton <paul.burton@mips.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Andy Lutomirski <luto@kernel.org>, Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>, Stephen Boyd <sboyd@kernel.org>,
	Mark Salyzyn <salyzyn@android.com>,
	Kees Cook <keescook@chromium.org>,
	Peter Collingbourne <pcc@google.com>,
	Dmitry Safonov <0x7f454c46@gmail.com>,
	Andrei Vagin <avagin@openvz.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Marc Zyngier <maz@kernel.org>, Will Deacon <will@kernel.org>
Subject: Re: [PATCH v3 18/26] arm64: Introduce asm/vdso/processor.h
Message-ID: <20200316102214.GA5746@lakrids.cambridge.arm.com>
References: <20200313154345.56760-1-vincenzo.frascino@arm.com>
 <20200313154345.56760-19-vincenzo.frascino@arm.com>
 <20200315182950.GB32205@mbp>
 <c2c0157a-107a-debf-100f-0d97781add7c@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <c2c0157a-107a-debf-100f-0d97781add7c@arm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-Original-Sender: mark.rutland@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as
 permitted sender) smtp.mailfrom=mark.rutland@arm.com
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

Hi Vincenzo,

On Mon, Mar 16, 2020 at 09:42:32AM +0000, Vincenzo Frascino wrote:
> On 3/15/20 6:30 PM, Catalin Marinas wrote:
> > On Fri, Mar 13, 2020 at 03:43:37PM +0000, Vincenzo Frascino wrote:
> >> --- /dev/null
> >> +++ b/arch/arm64/include/asm/vdso/processor.h
> >> @@ -0,0 +1,31 @@
> >> +/* SPDX-License-Identifier: GPL-2.0-only */
> >> +/*
> >> + * Copyright (C) 2020 ARM Ltd.
> >> + */
> >> +#ifndef __ASM_VDSO_PROCESSOR_H
> >> +#define __ASM_VDSO_PROCESSOR_H
> >> +
> >> +#ifndef __ASSEMBLY__
> >> +
> >> +#include <asm/page-def.h>
> >> +
> >> +#ifdef CONFIG_COMPAT
> >> +#if defined(CONFIG_ARM64_64K_PAGES) && defined(CONFIG_KUSER_HELPERS)
> >> +/*
> >> + * With CONFIG_ARM64_64K_PAGES enabled, the last page is occupied
> >> + * by the compat vectors page.
> >> + */
> >> +#define TASK_SIZE_32		UL(0x100000000)
> >> +#else
> >> +#define TASK_SIZE_32		(UL(0x100000000) - PAGE_SIZE)
> >> +#endif /* CONFIG_ARM64_64K_PAGES */
> >> +#endif /* CONFIG_COMPAT */
> > 
> > Just curious, what's TASK_SIZE_32 used for in the vDSO code? You don't
> > seem to move TASK_SIZE.
> > 
> 
> I tried to fine grain the headers as much as I could in order to avoid
> unneeded/unwanted inclusions:
>  * TASK_SIZE_32 is used to verify ABI consistency on vdso32 (please refer to
>    arch/arm64/kernel/vdso32/vgettimeofday.c).
>  * TASK_SIZE is not required by the vdso library hence it is not present in
>    these headers.

It would be worth noting the former point in the commit message, since
it can be surprising.

I also think it's worth keeping the definitions together if that's easy,
as it makes it easier to navigate the codebase, even if TASK_SIZE isn't
necessary for the VDSO itself.

Thanks,
Mark.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200316102214.GA5746%40lakrids.cambridge.arm.com.
