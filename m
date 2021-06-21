Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBMWJYSDAMGQEGIYMF4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63a.google.com (mail-pl1-x63a.google.com [IPv6:2607:f8b0:4864:20::63a])
	by mail.lfdr.de (Postfix) with ESMTPS id 7978D3AF9BD
	for <lists+clang-built-linux@lfdr.de>; Tue, 22 Jun 2021 01:45:55 +0200 (CEST)
Received: by mail-pl1-x63a.google.com with SMTP id 2-20020a1709020202b02900eecb50c2desf5455246plc.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 21 Jun 2021 16:45:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624319154; cv=pass;
        d=google.com; s=arc-20160816;
        b=VFqx4alt9Dmu74pHqD4vWc44iRW5ua8mKC8mIsyXu8nAaw/XWNhLivRfjGgKrsLY6r
         lLbVVDgbTXY6FfUkIP5AtnuDjrPLJgPNS72zzlc9Tpqdwqck0Z0rZtbLe4veOh2lmzdF
         fY5PDIFuEEQC8zW+3rMjb3kR+cVryTGFT7isQlef36zHrfq7WCjPIRn7uqiujoq7sRDX
         Iza2Q9EAhGO7IUsg8/z4JSkMz3WbRIuX57mrHzJHO1QsUNayi8KOX+iA+DBARtvJQCGw
         BVePxt/EiKzMbLLENzC0htMTPq5OOcYRSki+GPDPVgwBmQdm+bV/CLct8NAY4D44GN/f
         lDCA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=PoW0sukgMfukcd1b2sXnReSr3kQ4YNiaj/EqM8nyZi0=;
        b=vHXeRRSXcXGPfCsoK5A4fjGB9MyF0qbpSrcfyX/reFoEKY8ZeuQaS2JBqae/bG1LYd
         xK4ma+40adoxk4jYNCQJr0mp+HiV2hUKCjHrvFe+tPfIY6nIz1cGyLVLXgOXYNt7nmlB
         DdrxYg/a4gW+F8zhyFj/yZy4xzZFj3Pd5aWbn0d6tz+x2aY4ALg7p+VtMAWCtV4JrRxD
         V+E3dk6+1t14dCUkXvLc3tLXMXLwFDCRix9RhbsJBesMDQJppoFdyHsj+OOIW/U4oo0B
         LwjGkAHgWRRXgjM8cj4jLbcCaqubNutCw+DXvYRDdXQYsb1AOkelOzNVs2TzkOicYEgJ
         hE6A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=V8BryDAV;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=PoW0sukgMfukcd1b2sXnReSr3kQ4YNiaj/EqM8nyZi0=;
        b=Y+Dgzh/r8k147DlI5VY10mjsmSevj0BYLw2yZgvHyCCLfnFru1rTYen7lubGnHr8ah
         7mpxbE7I0p2q+x0OvS7LevYlwJG0Rw0WL8X5vSYPx3gk6VgqmOlQxZWKKaAh3tT02xFU
         SDi06ExxUXlOzrfPuUwYwvrNFI35K9i10dtDwYJJ63eSPnBu7CCyAeQ7ZC6vrlX28HE0
         VqjBbiq5exRnkkUKXfYdNk56olp1LZQWXHZ9gj9zZVUtqSasB9eZjzN7eX/50WbF5hyW
         JSjmyj7nKEh2EBRy+HlGjdG3iq2srLgJJvokvgPG5BbWJ9oQwwcX60JsVGksxlUXMWwo
         helw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=PoW0sukgMfukcd1b2sXnReSr3kQ4YNiaj/EqM8nyZi0=;
        b=kdMlxhtOrQ6s7H/mRPynbfAW5HBlCFiYhahlvwvEiR6sH/Ofgsma/Y5HqnaHemKsZY
         M26eKq79/6k9fYyipgLXBGa+7NNG7vOSBSaP8KTnpuY4JZ/1mPY8QnDCtu4fBVcIQ1Sy
         3Jlb6gI22cTvyQGU0S03tj4BSiUMD2RYW5O8j8owpTJleMpOKFBpggF1v+xwpBMTJ++Q
         RQq4JO/2eU2al29FiF7uZCh3hfh/+TyP1Q7UTwVmUJKQKgcKKrIm0KqDKK5at7bQ5nuv
         8t0QcWF+zjXANI2Bvu5Xu3WBx5ip03CDn8N0ey/D7IUZu4tFn19yCRwd75hRb/t3zdtR
         orCA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533mHOGkzxe0FUOtntWcL7+r1bCZmUW6765KTbdTlc87hIyinfvu
	xLqSZC3MuPE6dJJmIPKI0GY=
X-Google-Smtp-Source: ABdhPJxnq0BG2e8FrAr50/uIXl+SyuX8V18rJOQADWEV0gC9PvGZMYd1nB1D92ltg/pMdK+UjgW/rA==
X-Received: by 2002:a17:90b:2282:: with SMTP id kx2mr591843pjb.60.1624319154209;
        Mon, 21 Jun 2021 16:45:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:501b:: with SMTP id e27ls9040305pgb.2.gmail; Mon, 21 Jun
 2021 16:45:53 -0700 (PDT)
X-Received: by 2002:aa7:8090:0:b029:300:18db:4e11 with SMTP id v16-20020aa780900000b029030018db4e11mr700654pff.22.1624319153663;
        Mon, 21 Jun 2021 16:45:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624319153; cv=none;
        d=google.com; s=arc-20160816;
        b=OgAxmtrDKRq3kBsnGqpz9v9Sx+kbhdlRpCycZZupUcmdMzmJVPAYL4dLNEgve7wIvm
         IyRI29nW6uxizBVD1b7VMQEa9uOvZiqNpCrXQHlMfoL1w8uKuwOMi4mEjBQF7vx+3AF3
         MuoX5Ia3b1sgeP81TFjCtuIPFa9pex1wISATf6wTK2dZNBUndsBXIyLNDkvcJbEYaBHf
         Wr6VYJL/gUBUGMSj68NF11wc5MVL4cMbyPg7/eIwovNIKsCeAkzY7Xbn6/w+iadhESVt
         6BoR9/tHn64LeUTF9aInqsXlyDVpP2U6KloAJC8vCjTnE7h1AiAuqe1D6xAfShHuYHci
         KaOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=yRgn29Vg8RaOuhQiGtmL0oYWb1boyog4AHLF4LIZi2M=;
        b=v/7GtuezmWnG1f6DB+Lv8TNQyfKZzwI+138bdxNwEian63LvEOVCfrxOPVxKcLzvn2
         83vorP9q5rLMjLaAfKGkCwqb9jOMUUxJhn2ay+pDIZwkHAbq6yDyMCDviAAkocwaIznk
         3e1pIjq83YIiKX6GrXv2e4iGFjjDWsRuwiW7pwwQSojRagQDu/M6UHY3m5k4Rq9Fn8R4
         GBu0RfYlQfQuRMrWqa7mZRC3egVgsyNVbPzgpuJvK4FSNTrXjYRZ8imJrgw7Fktv6e5G
         mpV+f6HcWlbQt6PY3aHMecZz2WqoT8JYc1IuEEzt5fAtm3shHNpII2y0OgDQeWXh3Z3S
         A7lA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=V8BryDAV;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id m14si27278pjq.1.2021.06.21.16.45.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 21 Jun 2021 16:45:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 25BEA60FE9;
	Mon, 21 Jun 2021 23:45:51 +0000 (UTC)
Subject: Re: [PATCH v2 3/3] Kconfig: add
 ARCH_WANTS_NO_INSTR+CC_HAS_NO_PROFILE_FN_ATTR, depend on for GCOV and PGO
To: Nick Desaulniers <ndesaulniers@google.com>,
 Kees Cook <keescook@chromium.org>
Cc: Peter Zijlstra <peterz@infradead.org>, Bill Wendling <wcw@google.com>,
 Sami Tolvanen <samitolvanen@google.com>,
 Peter Oberparleiter <oberpar@linux.ibm.com>,
 Masahiro Yamada <masahiroy@kernel.org>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>,
 Ard Biesheuvel <ardb@kernel.org>, Will Deacon <will@kernel.org>,
 Arnd Bergmann <arnd@arndb.de>, Andrew Morton <akpm@linux-foundation.org>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, x86@kernel.org,
 Borislav Petkov <bp@alien8.de>, Martin Liska <mliska@suse.cz>,
 Marco Elver <elver@google.com>, Jonathan Corbet <corbet@lwn.net>,
 Fangrui Song <maskray@google.com>, linux-doc@vger.kernel.org,
 linux-kbuild@vger.kernel.org, Dmitry Vyukov <dvyukov@google.com>,
 johannes.berg@intel.com, linux-toolchains@vger.kernel.org,
 Heiko Carstens <hca@linux.ibm.com>, Vasily Gorbik <gor@linux.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>, linux-s390@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Catalin Marinas <catalin.marinas@arm.com>
References: <20210621231822.2848305-1-ndesaulniers@google.com>
 <20210621231822.2848305-4-ndesaulniers@google.com>
From: Nathan Chancellor <nathan@kernel.org>
Message-ID: <fbf46793-c3fc-8d59-fbb0-1a45d183c981@kernel.org>
Date: Mon, 21 Jun 2021 16:45:50 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210621231822.2848305-4-ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=V8BryDAV;       spf=pass
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



On 6/21/2021 4:18 PM, 'Nick Desaulniers' via Clang Built Linux wrote:
> We don't want compiler instrumentation to touch noinstr functions, which
> are annotated with the no_profile_instrument_function function
> attribute. Add a Kconfig test for this and make PGO and GCOV depend on
> it.
> 
> If an architecture is using noinstr, it should denote that via this
> Kconfig value. That makes Kconfigs that depend on noinstr able to
> express dependencies in an architecturally agnostic way.
> 
> Cc: Masahiro Yamada <masahiroy@kernel.org>
> Cc: Peter Oberparleiter <oberpar@linux.ibm.com>
> Link: https://lore.kernel.org/lkml/YMTn9yjuemKFLbws@hirez.programming.kicks-ass.net/
> Link: https://lore.kernel.org/lkml/YMcssV%2Fn5IBGv4f0@hirez.programming.kicks-ass.net/
> Suggested-by: Nathan Chancellor <nathan@kernel.org>
> Suggested-by: Peter Zijlstra <peterz@infradead.org>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>

Reviewed-by: Nathan Chancellor <nathan@kernel.org>

Small nit below.

> ---
> Changes V1 -> V2:
> * Add ARCH_WANTS_NO_INSTR
> * Change depdendencies to be !ARCH_WANTS_NO_INSTR || CC_HAS_NO_PROFILE_FN_ATTR
>    rather than list architectures explicitly, as per Nathan.
> * s/no_profile/no_profile_instrument_function/
> 
>   arch/Kconfig        | 7 +++++++
>   arch/arm64/Kconfig  | 1 +
>   arch/s390/Kconfig   | 1 +
>   arch/x86/Kconfig    | 1 +
>   init/Kconfig        | 3 +++
>   kernel/gcov/Kconfig | 1 +
>   kernel/pgo/Kconfig  | 3 ++-
>   7 files changed, 16 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/Kconfig b/arch/Kconfig
> index 2b4109b0edee..2113c6b3b801 100644
> --- a/arch/Kconfig
> +++ b/arch/Kconfig
> @@ -285,6 +285,13 @@ config ARCH_THREAD_STACK_ALLOCATOR
>   config ARCH_WANTS_DYNAMIC_TASK_STRUCT
>   	bool
>   
> +config ARCH_WANTS_NO_INSTR
> +	bool
> +	help
> +	  An architecure should select this if the noinstr macro is being used on

Architecture

> +	  functions to denote that the toolchain should avoid instrumenting such
> +	  functions and is required for correctness.
> +
>   config ARCH_32BIT_OFF_T
>   	bool
>   	depends on !64BIT
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index 9f1d8566bbf9..39bf982b06f8 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -93,6 +93,7 @@ config ARM64
>   	select ARCH_WANT_FRAME_POINTERS
>   	select ARCH_WANT_HUGE_PMD_SHARE if ARM64_4K_PAGES || (ARM64_16K_PAGES && !ARM64_VA_BITS_36)
>   	select ARCH_WANT_LD_ORPHAN_WARN
> +	select ARCH_WANTS_NO_INSTR
>   	select ARCH_HAS_UBSAN_SANITIZE_ALL
>   	select ARM_AMBA
>   	select ARM_ARCH_TIMER
> diff --git a/arch/s390/Kconfig b/arch/s390/Kconfig
> index b4c7c34069f8..bd60310f33b9 100644
> --- a/arch/s390/Kconfig
> +++ b/arch/s390/Kconfig
> @@ -117,6 +117,7 @@ config S390
>   	select ARCH_USE_BUILTIN_BSWAP
>   	select ARCH_USE_CMPXCHG_LOCKREF
>   	select ARCH_WANTS_DYNAMIC_TASK_STRUCT
> +	select ARCH_WANTS_NO_INSTR
>   	select ARCH_WANT_DEFAULT_BPF_JIT
>   	select ARCH_WANT_IPC_PARSE_VERSION
>   	select BUILDTIME_TABLE_SORT
> diff --git a/arch/x86/Kconfig b/arch/x86/Kconfig
> index da43fd046149..7d6a44bb9b0e 100644
> --- a/arch/x86/Kconfig
> +++ b/arch/x86/Kconfig
> @@ -114,6 +114,7 @@ config X86
>   	select ARCH_WANT_BATCHED_UNMAP_TLB_FLUSH
>   	select ARCH_WANT_DEFAULT_BPF_JIT	if X86_64
>   	select ARCH_WANTS_DYNAMIC_TASK_STRUCT
> +	select ARCH_WANTS_NO_INSTR
>   	select ARCH_WANT_HUGE_PMD_SHARE
>   	select ARCH_WANT_LD_ORPHAN_WARN
>   	select ARCH_WANTS_THP_SWAP		if X86_64
> diff --git a/init/Kconfig b/init/Kconfig
> index 1ea12c64e4c9..31397a7a45fb 100644
> --- a/init/Kconfig
> +++ b/init/Kconfig
> @@ -83,6 +83,9 @@ config TOOLS_SUPPORT_RELR
>   config CC_HAS_ASM_INLINE
>   	def_bool $(success,echo 'void foo(void) { asm inline (""); }' | $(CC) -x c - -c -o /dev/null)
>   
> +config CC_HAS_NO_PROFILE_FN_ATTR
> +	def_bool $(success,echo '__attribute__((no_profile_instrument_function)) int x();' | $(CC) -x c - -c -o /dev/null -Werror)
> +
>   config CONSTRUCTORS
>   	bool
>   
> diff --git a/kernel/gcov/Kconfig b/kernel/gcov/Kconfig
> index 58f87a3092f3..053447183ac5 100644
> --- a/kernel/gcov/Kconfig
> +++ b/kernel/gcov/Kconfig
> @@ -5,6 +5,7 @@ config GCOV_KERNEL
>   	bool "Enable gcov-based kernel profiling"
>   	depends on DEBUG_FS
>   	depends on !CC_IS_CLANG || CLANG_VERSION >= 110000
> +	depends on !ARCH_WANTS_NO_INSTR || CC_HAS_NO_PROFILE_FN_ATTR
>   	select CONSTRUCTORS
>   	default n
>   	help
> diff --git a/kernel/pgo/Kconfig b/kernel/pgo/Kconfig
> index d2053df1111c..ce7fe04f303d 100644
> --- a/kernel/pgo/Kconfig
> +++ b/kernel/pgo/Kconfig
> @@ -8,7 +8,8 @@ config PGO_CLANG
>   	bool "Enable clang's PGO-based kernel profiling"
>   	depends on DEBUG_FS
>   	depends on ARCH_SUPPORTS_PGO_CLANG
> -	depends on CC_IS_CLANG && CLANG_VERSION >= 120000
> +	depends on CC_IS_CLANG
> +	depends on !ARCH_WANTS_NO_INSTR || CC_HAS_NO_PROFILE_FN_ATTR
>   	help
>   	  This option enables clang's PGO (Profile Guided Optimization) based
>   	  code profiling to better optimize the kernel.
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/fbf46793-c3fc-8d59-fbb0-1a45d183c981%40kernel.org.
