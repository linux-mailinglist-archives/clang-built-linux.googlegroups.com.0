Return-Path: <clang-built-linux+bncBDDL3KWR4EBRBWNMXXZQKGQEGNZHMJY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13f.google.com (mail-lf1-x13f.google.com [IPv6:2a00:1450:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E32E18692E
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Mar 2020 11:35:06 +0100 (CET)
Received: by mail-lf1-x13f.google.com with SMTP id h28sf6101400lfj.20
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Mar 2020 03:35:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584354906; cv=pass;
        d=google.com; s=arc-20160816;
        b=NyKdh/IriLfMhJwKAgHtfj1SlKZOtcpnUCOfj8b/yPO90N5cFw7Jkq2JuFml/ILW59
         J2qk7Im4+YOH2pOyLf4kn/LRz7bqC2t2yCMIQhKDAVeML8Pv8NW+Ub4oYAcSFe3ZqJ54
         +6o6IjS/hkVDqMEv7qkwIMqHDu/Y7cvCo4OAMHNzZzVesJjB5JNe7dO1s9z70B6BjQnc
         ClKW3nv1nVb44L/zd0PxdJYczj50LfJgaML1rBD2SwjEBxyAy5uLeVJZarrLQ2yQJSX/
         lft2HLl2vCMKkWr1uLLo+Ce43r9BlqOrLEZf64fyhQRnePKjFlUd8t0LiZk4Jk6eseKs
         v+LA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=CuSyJsxQXCstQ9Fzvh1ahcGSx6YMdsQOYKkvircVKk8=;
        b=EzcsFoCiXjwzpk/p6E+wiwXXyRXRbcGi6Q389mJNzaSOCjBE2nEW9MAMXrpZenT5lI
         lGffpP2obYGcZgmjwcZPTESUEVDokCYDsomrWkr/zw5DoL9ewKKnodG+9OPYAaso0qtA
         oUmRoWj8nE5nY0/KQPrw1hm0PfwEL8zUe7G6Oq1+WkBvgx1B2sPFp1nV9BOWY9dQCF6r
         Z14meWBufc0nYxHEUgA6X9DdSX7Gt2VY1ib7DKGkIAHY509k6k/EePPcpFfmBf8lmWsr
         17BtESXfY4RhRAAmJR7lMMkW2ZsvmW+Cpp23yuxwJgxrENlHmq3/vRMPyOrVAWcpvr92
         YiPQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of catalin.marinas@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=catalin.marinas@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=CuSyJsxQXCstQ9Fzvh1ahcGSx6YMdsQOYKkvircVKk8=;
        b=rR8hmxWbKKImB4lel4uuIJC0tRWUlX2gCLnW1xjPguLg1u2VyHZwyjmghguOZruHab
         sIT15jaN68hqH/GxnZK52ZtBH5+e7SJT/Pipyq1zNhMiac+y3OxYqrerq3YU01gAvqz3
         TyUoz8wlSckGetD9Wyw/43cCvdzjCe9RlDNx4HjDWAMgfL9Yxoiz4nDr/N6CUPca7Hil
         OvRo5jjTxuHNlmN8lS+QiVRoCneScknk4ovLsVqELW8vLkKWakR87SPOrkt35OvRZL8B
         Gz+LgCFXgFqclCaVtBHtP7r1AtEeQCC5hF9U8IKtzSEz0omp3YqQaaedO0N2PpJfGgQZ
         vvsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=CuSyJsxQXCstQ9Fzvh1ahcGSx6YMdsQOYKkvircVKk8=;
        b=MZYEKfBrR+ifcJVYD2+h9RD35CXgIlM/NCQS5MIjzCE0ftnlOoDl+RQ1WY7z+unjIQ
         Q+nDVP/BUDOp9Hr0TGXNyQhDNr9+QlUbpBHAg7sO6onyvFoQTtPQzCSXHgJzRf6JTLAU
         Rm/+iY8N8DAaAVVxrj7n+dM9I1Qu5Xrg/uJOQW6bqxQ4Xev1UBgjavKkUMcMkpTFT29l
         wMtPZChmaCQLE0FcKex4jUxiYsJ5ODjHY1p4NsCc8We+vvlrlnj8CA2YU3sCF5gjILe+
         Ul1zs5ZG9YHDvTYJ9hmi7PRNVQQJNLwmUwGXnC1/IWW0EQIKsuwDFiDsCkePUdqO6Use
         TUHQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2Tawxiu1uF43eB31U4rs3D3Lh+hq/tWHU2JtQk+wmKsP7LJPVe
	X6YSiSk4FsJBPofXo+HclEo=
X-Google-Smtp-Source: ADFU+vs5cG3K4CSt7Jm/dE3c6tZUp1xFFmKi439m69u/R4DZs0IPHH1Vsng4tv5xoFOSopF1AM20Wg==
X-Received: by 2002:a19:4350:: with SMTP id m16mr8422549lfj.67.1584354905953;
        Mon, 16 Mar 2020 03:35:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:1103:: with SMTP id l3ls2492088lfg.6.gmail; Mon, 16
 Mar 2020 03:35:05 -0700 (PDT)
X-Received: by 2002:a19:6406:: with SMTP id y6mr16475811lfb.125.1584354905074;
        Mon, 16 Mar 2020 03:35:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584354905; cv=none;
        d=google.com; s=arc-20160816;
        b=XW0am/xp9Xw2ysiBWnhKya7cAZh6uctFDZJmQoHtpYB+zqwcANgb4qiQOsjgLKiGiO
         jLsospGVb7mHZu2EtHALqzc1W5ryiJXwRRg5ISgwvnCpBiBKW3nOvQTvNbHzhQRMsIzu
         ZEyFAw+RbrGpvpctT8qzk658Xe2bXcn29Rbz3FXUpYcIyDpMAA8SjobIMdo9UD46n1sQ
         d3HAhQrSQ/ou1Ae0/+1kjACv7hlhrIWBWbo4KIfatBhR8145KyqqSajUCLnfSV3QGo1u
         gdmuVI0iQoccwuF43B2Pkdl7i2WJu2bhclqUYfpnmwcKctcsXdCoEGPVPFG/W8u2+ZsM
         0/8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=XyGJHdQUNrbVLYvUtzUwCLXM8LiuHfOqolGJInSfvCU=;
        b=koRJ4baR/gavZnL5smeMc2Ql/o1abHwdW3ZIdMJb4nbKpq7YyMPST2r1+71VBhH4oN
         8HBXiM/rYhrCbWGQYwx4wJK/DUxnDxgMIJaOAZia0+u9mJ1HClUPZckxGgodoY+ZpAhX
         sP/HrnioIJze4SQ5D0jG3jXJCx4+hU3EGar2Vr25SqgPMc+Ltaamy01ZkxKUEe5zXzZs
         cPz9DvYAhiygPzptclrShWx5p886A+BWB90vxPm3p2jYkj7Bv3eX0L2pTZWXqupHDBEU
         lvFyF/559ejoT5vVMKSkGvUaehkH2OpXlOYVwQbt3Aq50NE9W7fguqGUgKl46QbrL+Z/
         P9bw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of catalin.marinas@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=catalin.marinas@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id s22si72348ljp.0.2020.03.16.03.35.04
        for <clang-built-linux@googlegroups.com>;
        Mon, 16 Mar 2020 03:35:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of catalin.marinas@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E5AE21FB;
	Mon, 16 Mar 2020 03:35:03 -0700 (PDT)
Received: from mbp (unknown [172.31.20.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BF7E33F534;
	Mon, 16 Mar 2020 03:35:00 -0700 (PDT)
Date: Mon, 16 Mar 2020 10:34:54 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Cc: linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org,
	clang-built-linux@googlegroups.com, x86@kernel.org,
	Will Deacon <will.deacon@arm.com>, Arnd Bergmann <arnd@arndb.de>,
	Russell King <linux@armlinux.org.uk>,
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
	Marc Zyngier <maz@kernel.org>, Mark Rutland <Mark.Rutland@arm.com>,
	Will Deacon <will@kernel.org>
Subject: Re: [PATCH v3 18/26] arm64: Introduce asm/vdso/processor.h
Message-ID: <20200316103437.GD3005@mbp>
References: <20200313154345.56760-1-vincenzo.frascino@arm.com>
 <20200313154345.56760-19-vincenzo.frascino@arm.com>
 <20200315182950.GB32205@mbp>
 <c2c0157a-107a-debf-100f-0d97781add7c@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <c2c0157a-107a-debf-100f-0d97781add7c@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: catalin.marinas@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of catalin.marinas@arm.com designates 217.140.110.172 as
 permitted sender) smtp.mailfrom=catalin.marinas@arm.com
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

On Mon, Mar 16, 2020 at 09:42:32AM +0000, Vincenzo Frascino wrote:
> you should not really work on Sunday ;-)

I was getting bored ;).

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

I see. But the test is probably useless. With 4K pages, TASK_SIZE_32 is
1UL << 32, so you can't have a u32 greater than this. So I'd argue that
the ABI compatibility here doesn't matter.

With 16K or 64K pages, TASK_SIZE_32 is slightly smaller but arm32 never
supported it.

What's the side-effect of dropping this check altogether?

-- 
Catalin

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200316103437.GD3005%40mbp.
