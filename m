Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBA77Q6BAMGQEFO2UU2I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe38.google.com (mail-vs1-xe38.google.com [IPv6:2607:f8b0:4864:20::e38])
	by mail.lfdr.de (Postfix) with ESMTPS id 33F6332E54F
	for <lists+clang-built-linux@lfdr.de>; Fri,  5 Mar 2021 10:53:08 +0100 (CET)
Received: by mail-vs1-xe38.google.com with SMTP id m22sf477703vsr.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 05 Mar 2021 01:53:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614937987; cv=pass;
        d=google.com; s=arc-20160816;
        b=g1NuIJq5Qiz+VGP9N13CrEGoVDUpWaNZTBncGj50vNHNzrXGxYAD9vDrnTEOlXvDEq
         DkFEBI9O+jYNprUF+eB6MwvFLIdBlyt4OV/tMNlV5S0BK+VmdVQBvQnX4Ye04AmBCbRH
         oDk7i3wNPfz7C3sg/El+iYqCyr7v54WdKhLSiM9tLcW54XqhSvMnWux0UM+1BCJI8E4H
         i+8ok9Y5clYkWiXJps0igkCKcmMHpia8XKjbGJjYvecSVBEJhbQwNXXImZJfU48O5+U7
         xpTfP/KqB35/NAv5djKkKeZ4SRsSD+Bj0kQG41VVNeJj8lOS8MpBq3Nx5KpBgZ80eK4Z
         Ah8Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=ANWbslpjvD19uP61p/6rNYXLmzZqeYvYrfKofgZVdGA=;
        b=b4YPrp+MghtlHLMKDVQTwb5NirCUxy6EHr4Eb/v1ap7Wsh+6/soRXD7PRK4VF8ZY0j
         bon2Ezj7SIw+ZzHywkzIu5VZozFPu0iTTNz1zT+k+cPNJIEhv6aAg8EoY5GXhqU1LNMJ
         OC9Ypm2+y6gXpXztRPdpVcbz3Nk91hsr71/Lm7L0o83UQbw1UG5QH3NetU35Y6LAcyeS
         2+0dPjAHPaf3HajgwtulDSzWmcGNJyLGcM20ozrs8L7tUd6hTBOE++NubklXf8EDO22u
         KURIFFvwKbyZWs/0zh6KqKxqGmGS9gTn8frY6SEyrdCZq1S8DPUox+wZhvsyY0JkKTau
         eBsA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=ROvsjQ36;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ANWbslpjvD19uP61p/6rNYXLmzZqeYvYrfKofgZVdGA=;
        b=ej9OJPn5lHAwchmU1hGLQh0JqUnr1/FM6WYRlbm6NjNTC7UmG2JcPSyLM6E6tfjgqa
         G1vSYD6jsoOndhfTQbrxg8iz15dxj7tgVaenFxURHoRqJZi4ms+6pWWa+nJMF1rTuYhN
         hiVGosKXzwFPjol//bc+IV8BRIhOoAMM28XLNudvyN7R2J/P7YONyt55Bj2XguKz8wg9
         1i9RtSIFtC6DId8GArw0CD9eAD6iMs6fPkZl2pd3sm7yMu7w4XMoYE8DKxuXbSX0DlZk
         LPzxxAZAGZZCVqIL/4tM0OTtyCY8Cf8XYkT3pMD2ulEJ894m2NrgOLzfaAkR4sI3B6+X
         llcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ANWbslpjvD19uP61p/6rNYXLmzZqeYvYrfKofgZVdGA=;
        b=gbjBPLO8yn7NH2Y7MBfc7v9KHXbqWrfOyIk9wq3h8vzw+CBIuCmY/hOh9MEpDrqbFw
         2esqwVFmFjZrmYrGvNvFqLsfjkMPsHl/NAGOxI4JD/fYZB4BQvhbsmBCIrqqUw4bdCQE
         dOunHm0rxzUmOfopR0Xsk3Fwo4jHXKyv9fu/7c13EwmsHfArxRcK2XrPb7e/uUZfKQ5j
         ZpUPYl/+xQKo+as+9E5vK05KTdxdUwzv7B2T0vb2JejAhelu1MbwfD92stz/k45DmsiV
         ssCzbZRQgomzekhoyPO42DxT++tUFsHPZtbtSe0P9ei4aoLzfMyY3ajsEP/L+dZAgFBr
         uVlA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533wp5RXZqsIgYs0/MAWEQ2YliNMPJJv85ooYL4LhlIJkLY4+lUK
	8AIH5HOHe3Ihc+REX4yb76g=
X-Google-Smtp-Source: ABdhPJyucxVRI6TBmel3Ry9GHGEKeAecKemdEWuLe/oVqwrPOhCNYUYOzPKgtXBnKIZ+QTIE5IQyKQ==
X-Received: by 2002:a05:6102:2403:: with SMTP id j3mr5138981vsi.40.1614937987217;
        Fri, 05 Mar 2021 01:53:07 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:fa8a:: with SMTP id f10ls1139848vsq.0.gmail; Fri, 05 Mar
 2021 01:53:06 -0800 (PST)
X-Received: by 2002:a67:f87:: with SMTP id 129mr5396681vsp.24.1614937986747;
        Fri, 05 Mar 2021 01:53:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614937986; cv=none;
        d=google.com; s=arc-20160816;
        b=SHfppHZ4jClEjBNvk3Hmhfd8CztajC6lbM17m/kVSJekmjaMHI5AAfFuGuuZMYz1JQ
         X0EEAIC81HADcCKsHZBtt0xgZbhme9L8d6u8ohdlOF+tTKC0g0KlzoW65621XrwGfUtL
         288xGGkVk+9TxZodhRBGI+laE4SmNIUEEQ4cRA3GILUeZZWkKvy4Fz1TIiP2Kj7042V+
         D82p4xQ6Q0b8qXlal+Xqa1tYHlAgZb3t+xurVDy94UOnkzxL5d/XmcuO1SCvIM8pMNla
         szk0o142DihcdsY8/HYGrcCunjvFVuGR65HBs/AN8Jp9plLHH4uV8o0WW98ej7c+eqlG
         X7sA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=9EBMnLi+sHN2pg+K3LAaPu5cq9YAFd2LwZTaTfKUpWw=;
        b=cgbYat149xROctX8VT4TVd8T81jKIItmDfoyZbes6YeRyqNCp0rD2yUZq/Uo/8XGPf
         4oDPqiMEm/1dO5b+FLl1qxdt5MF3GMC+LCUaDiTkaCZV94yxbbRLY5Dg9E5IboY2/Bkr
         /2acV36IAvR0Lf3oa/+e7RnmRB4OajXxCA0CZjsGXkutZfSjqJDhLqETolw4w6dG+fFL
         CWQpfL3KqnHG5cLrxtzDiGG5lpROwfGRMXiF636QhqNytd2HvGlnaGuZXoBYkLNvRvkc
         k/+YU5SeSZcsKo+Z8LItzUC2IanW+Z2bKqZi70g8c/83k4X6B+qhInB7N6mB9bBFzs7f
         i/nA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=ROvsjQ36;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id n3si132719uad.0.2021.03.05.01.53.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 05 Mar 2021 01:53:06 -0800 (PST)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 4F75A64FF0;
	Fri,  5 Mar 2021 09:53:00 +0000 (UTC)
Date: Fri, 5 Mar 2021 09:52:56 +0000
From: Will Deacon <will@kernel.org>
To: Jian Cai <jiancai@google.com>
Cc: ndesaulniers@google.com, manojgupta@google.com, llozano@google.com,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <nathan@kernel.org>,
	David Laight <David.Laight@aculab.com>,
	Russell King <rmk+kernel@armlinux.org.uk>,
	Linus Walleij <linus.walleij@linaro.org>,
	Russell King <linux@armlinux.org.uk>,
	Catalin Marinas <catalin.marinas@arm.com>,
	James Morris <jmorris@namei.org>,
	"Serge E. Hallyn" <serge@hallyn.com>, Arnd Bergmann <arnd@arndb.de>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Kees Cook <keescook@chromium.org>,
	Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>,
	Daniel Palmer <daniel@0x0f.com>, Ard Biesheuvel <ardb@kernel.org>,
	Ingo Molnar <mingo@kernel.org>,
	Vladimir Murzin <vladimir.murzin@arm.com>,
	Marc Zyngier <maz@kernel.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	Mike Rapoport <rppt@kernel.org>,
	Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
	Mark Rutland <mark.rutland@arm.com>,
	David Brazdil <dbrazdil@google.com>,
	Joey Gouly <joey.gouly@arm.com>, James Morse <james.morse@arm.com>,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-security-module@vger.kernel.org
Subject: Re: [PATCH v6] ARM: Implement SLS mitigation
Message-ID: <20210305095256.GA22536@willie-the-truck>
References: <20210223023542.2287529-1-jiancai@google.com>
 <20210305005327.405365-1-jiancai@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210305005327.405365-1-jiancai@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=ROvsjQ36;       spf=pass
 (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=will@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Thu, Mar 04, 2021 at 04:53:18PM -0800, Jian Cai wrote:
> This patch adds CONFIG_HARDEN_SLS_ALL that can be used to turn on
> -mharden-sls=all, which mitigates the straight-line speculation
> vulnerability, speculative execution of the instruction following some
> unconditional jumps. Notice -mharden-sls= has other options as below,
> and this config turns on the strongest option.
> 
> all: enable all mitigations against Straight Line Speculation that are implemented.
> none: disable all mitigations against Straight Line Speculation.
> retbr: enable the mitigation against Straight Line Speculation for RET and BR instructions.
> blr: enable the mitigation against Straight Line Speculation for BLR instructions.
> 
> Links:
> https://reviews.llvm.org/D93221
> https://reviews.llvm.org/D81404
> https://developer.arm.com/support/arm-security-updates/speculative-processor-vulnerability/downloads/straight-line-speculation
> https://developer.arm.com/support/arm-security-updates/speculative-processor-vulnerability/frequently-asked-questions#SLS2
> 
> Suggested-by: Manoj Gupta <manojgupta@google.com>
> Suggested-by: Nick Desaulniers <ndesaulniers@google.com>
> Suggested-by: Nathan Chancellor <nathan@kernel.org>
> Suggested-by: David Laight <David.Laight@aculab.com>
> Suggested-by: Will Deacon <will@kernel.org>

I'm still reasonably opposed to this patch, so please don't add my
"Suggested-by" here as, if I were to suggest anything, it would be not
to apply this patch :)

I still don't see why SLS is worth a compiler mitigation which will affect
all CPUs that run the kernel binary, but Spectre-v1 is not. In other words,
the big thing missing from this is a justification as to why SLS is a
problem worth working around for general C code.

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210305095256.GA22536%40willie-the-truck.
