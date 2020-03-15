Return-Path: <clang-built-linux+bncBDDL3KWR4EBRBOHIXHZQKGQEY7VZXWI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53a.google.com (mail-ed1-x53a.google.com [IPv6:2a00:1450:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id F0C36185EFE
	for <lists+clang-built-linux@lfdr.de>; Sun, 15 Mar 2020 19:30:16 +0100 (CET)
Received: by mail-ed1-x53a.google.com with SMTP id i10sf7188087edk.13
        for <lists+clang-built-linux@lfdr.de>; Sun, 15 Mar 2020 11:30:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584297016; cv=pass;
        d=google.com; s=arc-20160816;
        b=Bce7pwSpmJm28g6fNRmn4KyE4YCBz5ezPBcsQPEensDwbiPS7VONR9wMB/gIsGDKTB
         +xoeqfbY6OmZN0STFtkCFH9dy/eFVvS9UKvAOXBOZBGRtCs1V/88fG7XpxBUl770ERVZ
         m+oktQM8mz/yP84TIU6nq6AapgbHdTDsuOBb/BzkEb02aQx74WkRU/0BkdF4hYRjIak9
         kED7KuWF1qMOY5TlPxOoznuYev3TOPUOPXasLq24GyM6LufmYgDzUV/Xy4N+WhUaQJ0U
         LEMDwJWasrHMK5wiYZPZdtLnPXh4DDNulVTHWCiXGTqK4MhHZLBIO8xJVQ9w2zhiKogN
         ubgQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=kNTKtvhFmgnKCpCqDzHG3ePYIuzfrY3hAUDbTjOzuEE=;
        b=d1lTxaDAWltKbgGizZBjGazhlIqP4sC9h+n8IhvS2BcXMbpzga2fkZ7VK7foaRAhcm
         kOojhC8kJzsJVaxyvBQbmxgU/LQWHIldS9yrMaKQYaBnv2IpdQzRqcWCWXcpOtBFg2A6
         Nid8Ijdm45itp6rRGgdKu0nSbcsn7ZVoPHo3BGOAmkHYtqMBt754hFgA6GqtrCiM3cU6
         yvevDVbqRaT+M5u3EcteDE5srSOu7vzx2DRMuTE/Ym5mQaZgptHYp8sy/smtyIoAYDb+
         n5IYieJCt4Y8BDBfpfMlKt7q68BY9IibA9eAHn+/rz151Bq5tBSmoArX12ILulhUoFiJ
         3Zuw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of catalin.marinas@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=catalin.marinas@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=kNTKtvhFmgnKCpCqDzHG3ePYIuzfrY3hAUDbTjOzuEE=;
        b=dsp7Sid8op8721GRNHeZqX+gHxkcPbVRSjoZdhcf75iujCZn2aTKPDquiFr0vAoFTq
         mulQrTIC1eZT2hjmICuZKRZY09u7BkLwYkHQjjGpuDrwf2fdzCpqcMU6QZwoKCE1PEoq
         Xrj+j0W1ZRbY77SOJB+AeD6y8a/tyKMYrnt8IcX6/IU8gD/UUer7cLPYvXiwbOaAKySk
         2xHp3Uzf+/QQkBRzP86aRmkN4CmlF0S50MARx+4GYU2XPVrWXQD8o/7Q3KMO9uJ5CVn7
         uNeweynRGyj9O9BUkjRBecPVN36ppHTbvZ4j4Re9G3cYk4ab8W65nf7IIy7a/SaLQHXn
         x5Iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=kNTKtvhFmgnKCpCqDzHG3ePYIuzfrY3hAUDbTjOzuEE=;
        b=uiqMT6DoJRkbADqY/JIAA0LAAAWzsx7YITEmSR53HthF0zSkjNW6EJERrFOWUublSA
         8x3k1s64GYNfxtUf5fjgq38IyquPCEdEon3wBWHZ2jqEtp555gGj7vVY5bH8rnl7n7B2
         D1p1ybDO0rGehDNZI4CKCQIGIiQ17NP2stAmMU/l3QVNaQm1WqEvwwPY6BMqV7lyVs8b
         tr5JIwL5L1/BJOlqO7MxvY2e6MVYa2XLTRC3xVKhslPBEMnkclJkftgSxx7B1EsGG6Fb
         oqEbuOrnRcMkXyDTNqEVG0QtBt3zQxTohI8zAXKWc62s7rih/DLmOgP0ItKG1YDr3l16
         a6Aw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1z0ncYcZA2jPJdptQNBZR4rkY4vju1251D2mXnfe1c42VasWYL
	nUogcn6mE6g3UH4hF54lWaE=
X-Google-Smtp-Source: ADFU+vvU8QIswKCBWzEmzWAWrWQ4N/Bxr7ytjDqENXUdQNOmfEYGkIkM1n+C9khpAObTttXcfjzySg==
X-Received: by 2002:a17:906:6987:: with SMTP id i7mr1991580ejr.12.1584297016616;
        Sun, 15 Mar 2020 11:30:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:8ad5:: with SMTP id k21ls9971033edk.0.gmail; Sun, 15 Mar
 2020 11:30:16 -0700 (PDT)
X-Received: by 2002:a05:6402:88e:: with SMTP id e14mr24035727edy.102.1584297015969;
        Sun, 15 Mar 2020 11:30:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584297015; cv=none;
        d=google.com; s=arc-20160816;
        b=MsYS29S8gmiSZY7qiT2/sFmgYbpkqw5PZHXTnHYC9obxdCpzjwB/HRKBXhzcWyXy9o
         3L22zaVUfxjUp2JqvFIDoBDI/IDnTTIPbdfTqlku2Xdn2Mhu+3Ng/ZoVzExpBq/5WWUk
         xdRkG2iFHgpkgkPdeq6C64WI04LxHWW8FvsDD4erozUl6sw+D2sQoEcLWjsU9M1QnCXU
         pQ/jFFyaUDXyCQPBraKu8gitrm01Kw3GuAEX+jnS9vypxrleZb9r7eg+cJgnhwnGVpqp
         i2TaiKAplX5p0vIYXmZ1dtmHhPuaqmdIM1dh5uIWxqI4Jmn0MDkdgs3tn7g3b/FBiWu4
         grDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=S0JE9/zszTikswguOvkWmJch+d1EVQEY/RqsHhSQolw=;
        b=Qq6ZefkkLbEwP42DZ0eMP82fTLNhjobv2WXsw2+P5NTgZi9laKczxBE5Ns6wWOZmTd
         3laMVCk23NfL5KNSj8YaSPrbyrXDTpixswXKCfcdl/ag3akb34pcd0KHB9ZASM6qWi8y
         WUbS3olK0Q40+WGXyX41XrZWUnEMexKl1QHUn8fP/8VY4LjqhFzo86LUO8ow55/rnQkm
         t0SbPL9lS/DrwanLcgJkvq93Nz2TAHo0UpPthUPx6Q5s7VSCTqlq2oEY+OsWCoKMa5cf
         J6zn58L0N2L9EiCOaZjZJPS9P9/R/5vZuksj55vUMk4ESZvPrvSfKzqVtHMaffpl9Ogw
         LMjA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of catalin.marinas@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=catalin.marinas@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id dc25si659545ejb.1.2020.03.15.11.30.15
        for <clang-built-linux@googlegroups.com>;
        Sun, 15 Mar 2020 11:30:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of catalin.marinas@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4F3541FB;
	Sun, 15 Mar 2020 11:30:15 -0700 (PDT)
Received: from mbp (unknown [172.31.20.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2A28C3F67D;
	Sun, 15 Mar 2020 11:30:12 -0700 (PDT)
Date: Sun, 15 Mar 2020 18:30:09 +0000
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
Message-ID: <20200315182950.GB32205@mbp>
References: <20200313154345.56760-1-vincenzo.frascino@arm.com>
 <20200313154345.56760-19-vincenzo.frascino@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200313154345.56760-19-vincenzo.frascino@arm.com>
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

On Fri, Mar 13, 2020 at 03:43:37PM +0000, Vincenzo Frascino wrote:
> --- /dev/null
> +++ b/arch/arm64/include/asm/vdso/processor.h
> @@ -0,0 +1,31 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +/*
> + * Copyright (C) 2020 ARM Ltd.
> + */
> +#ifndef __ASM_VDSO_PROCESSOR_H
> +#define __ASM_VDSO_PROCESSOR_H
> +
> +#ifndef __ASSEMBLY__
> +
> +#include <asm/page-def.h>
> +
> +#ifdef CONFIG_COMPAT
> +#if defined(CONFIG_ARM64_64K_PAGES) && defined(CONFIG_KUSER_HELPERS)
> +/*
> + * With CONFIG_ARM64_64K_PAGES enabled, the last page is occupied
> + * by the compat vectors page.
> + */
> +#define TASK_SIZE_32		UL(0x100000000)
> +#else
> +#define TASK_SIZE_32		(UL(0x100000000) - PAGE_SIZE)
> +#endif /* CONFIG_ARM64_64K_PAGES */
> +#endif /* CONFIG_COMPAT */

Just curious, what's TASK_SIZE_32 used for in the vDSO code? You don't
seem to move TASK_SIZE.

-- 
Catalin

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200315182950.GB32205%40mbp.
