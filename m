Return-Path: <clang-built-linux+bncBDV37XP3XYDRB66PY2DAMGQEDDIOKMQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id A39C73AFFDF
	for <lists+clang-built-linux@lfdr.de>; Tue, 22 Jun 2021 11:06:04 +0200 (CEST)
Received: by mail-pf1-x43c.google.com with SMTP id i13-20020aa78b4d0000b02902ea019ef670sf10896322pfd.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 22 Jun 2021 02:06:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624352763; cv=pass;
        d=google.com; s=arc-20160816;
        b=vmOfE0y5C/V8TKiThdeCOqlj7bzG4XVUVSjK/e6CcQP+hwM8pRmP4/nlrM+pO42pnd
         YeTQpQiUfSnY2glfjCR4yoWsV9hAFiGqFApu4kXkYNAxoNKYtG6LabOF/YvVEJsw8nAz
         wd283/oJwEQKPwtqdbJ3F2cFcDBsIRq0GhZkwHJ4jaJswkWJToUa2HZ6JZ5+NP7Nsm9v
         j5VPl3gHdS9r434TfkJs0zCk3PCJ0/TwEHC189DrfGvQX8hYaLca2GYekf5G5ZVllyaN
         CafHsEBORAqLszuoeyYl8VRmUyviUP17aSHQ1K2fGk97F2RUljHGmM85T4RxPpLD6cnJ
         pj5A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=zenRXo6P6a6fULAHXHxqrhQxdgNNzah67JQmnBRLs60=;
        b=PzfwfAw2PW/wAbfGBSx2kottLb3Lznz6DXEbZZbysU5RLihr8QTbKF1GBDNCS/PyQF
         1Q7Kj7whiMYshdcSTLldsPkF2sMJ34ZGSfsyraaHirX3UttzwEroZH1HaBWu1icgiyuf
         xmy4aTFGCMCJtE3v6YZMqngIpUtU093KmTm5BVgDq638TxzpFogEm4yk82pBWDDKbVGD
         KjUxIYYM7uXgQCw18m39NKG/M/9eawnwAPHi2/XhX6baGwKc+ETmgwDmD5c1OWSaHakx
         ps0zNQLHN6OoN4S6kYZdZSPIEbWIEdfNIYsAg0LrhHnyQ9qdF9ouQ53A+IbQ785kk72s
         F19g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zenRXo6P6a6fULAHXHxqrhQxdgNNzah67JQmnBRLs60=;
        b=sWuiCpeg468Y8nH1g3WeYP53ED8b4+SYV9jp5nt4cKHTLw+zfc7qMArrPD8D6mvJ+S
         eIdNFMVIqHCZvnv9dVpF9+C9nZLHmCG4M5oG4rdS0P8GUiV4KdjTCl2e1WwTowhkKzG+
         uIuLxZ0HgegErlAzxW1uAVAqToJu/2RrzVyQ7mBaqgtwDpcqG8E6+0HP5PzPZtNgUZ5k
         9NQe5n4cB7dpDJ8evhcwSLdPa4adugZrsEhKODutDARzHuCQRoZkvYlRAIpz8J3+81mC
         qZIpetxJCdIylBk7n/clg38bSp50KVqaGrv/gzdFpYcxU1wh/0JWuQAUeaeYvE89tbZ3
         relw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=zenRXo6P6a6fULAHXHxqrhQxdgNNzah67JQmnBRLs60=;
        b=bGqxvW313/3bwL0N4w7tk4D6gQEiL7BptJyB0wsL7NHsvSbftHfdunuthDLdxRPUHU
         Z6etYDFjFXetBrlj3Ke5i6xXt5jxG0du7I2e+D8fA8RNIz9QFkqxzJ8LODMmwJ1BmasG
         yVWgeysZRITfDBMlSVANW+Nq35Y0Vy9nb+UQqmkkt/6w3SW1Atbqe2NtP3jU4ZyDvsXk
         BVcU4vpkJS6eyN89DlfKPqKcmWb/mGsHjMC9hXUUITwfd2paOV2EE3TeUKV6kxLpKxs7
         OSQ2m4HcyHGs2D204gQH0qkvkvBaGEbrQ8wJf5eHdZQZcPAUYEnegg8GvhiN9DS8wFcj
         17Bg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532cxayjCRzK3IZRhbxhqWGbjaq7QAJBNjac7ApWiRmB56zEq419
	aXhsE8T3XM167csBzN0kFP8=
X-Google-Smtp-Source: ABdhPJwNwLCBrsCEqK0AIXbsckTFMkobkPS2Oisu8hVE31lTVCk8dLa+wdbfahYDky4ofLzNe7V2QQ==
X-Received: by 2002:a17:90a:db98:: with SMTP id h24mr2776954pjv.62.1624352763435;
        Tue, 22 Jun 2021 02:06:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:fb0e:: with SMTP id x14ls9302560pfm.10.gmail; Tue, 22
 Jun 2021 02:06:02 -0700 (PDT)
X-Received: by 2002:a63:da04:: with SMTP id c4mr2863429pgh.348.1624352762834;
        Tue, 22 Jun 2021 02:06:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624352762; cv=none;
        d=google.com; s=arc-20160816;
        b=gVLR5DuiniNEJQz3im0RAZ3h+c8d8G8klfIQPp9Uh4oY7ONQ0LUqmngfqwxo6+zcDB
         41kkL5JyFRjtRlEZvu+xM+skSUGEPLtNgJIc9E/6XQggJ6nGlriFM2+4gjkslNeCP1De
         cjotlGBWjVfEb916/7GAFl3CD8w/qul+nx1KkjtNeb7vBB5MwF2Ab2v7uE/Ihnu3S3ds
         zRBmlExltCKfqlLuAS8oI6UE6EDQ8opdDmrPUJClicvzcmDzppbUCf8Tpe6zaeSmQ1Zg
         dIedOttj3HP3T2D/YWKxOmAVVOgxLYUaNQFW8v4RI8xBACbUMjsmvcvmpoJ2n1/sPG3T
         PLEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=Vx54Q5vHUMnv66Ti3xTxI/PVHTlAExLty/lgdzjQXoU=;
        b=RnshArMnaXVxDvGK0FkHos9qlys2AZtWL4LC1uFjoOUoImNl7/Kh0iHnlpALmTiKFa
         1AZ8J2lTPlwWQDyj8i6277KdelZO1CeKFj+caUnahJ3/95qQQaYwZRXxLqeWiCiTXxfF
         0FnNg+o/Y4ZZAAN7suHr3aZdpwIMF+BqZ7ID+9gcGQMRLQUPBUel5th344K3mA9F8y8Y
         OFs8+nfqRMgRHkdc0BqTuF0u45EWEPJm5xGKKFNPswDCR8QLqoiDoGXqOfDJfcyZWQde
         gDZGeXk2OXSzB+v9+0PkdQeFuGlYia4+6pd42QDcb3ZNNPxunkQhazHcZjy6DxIirTgL
         0quA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id o21si104360pgu.0.2021.06.22.02.06.02
        for <clang-built-linux@googlegroups.com>;
        Tue, 22 Jun 2021 02:06:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2CE60D6E;
	Tue, 22 Jun 2021 02:06:02 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [10.57.10.229])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DCD563F718;
	Tue, 22 Jun 2021 02:05:55 -0700 (PDT)
Date: Tue, 22 Jun 2021 10:05:40 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Nick Desaulniers <ndesaulniers@google.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>
Cc: Kees Cook <keescook@chromium.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Bill Wendling <wcw@google.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Peter Oberparleiter <oberpar@linux.ibm.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Nathan Chancellor <nathan@kernel.org>,
	Luc Van Oostenryck <luc.vanoostenryck@gmail.com>,
	Ard Biesheuvel <ardb@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
	Andrew Morton <akpm@linux-foundation.org>,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
	x86@kernel.org, Borislav Petkov <bp@alien8.de>,
	Martin Liska <mliska@suse.cz>, Marco Elver <elver@google.com>,
	Jonathan Corbet <corbet@lwn.net>, Fangrui Song <maskray@google.com>,
	linux-doc@vger.kernel.org, linux-kbuild@vger.kernel.org,
	Dmitry Vyukov <dvyukov@google.com>, johannes.berg@intel.com,
	linux-toolchains@vger.kernel.org,
	Heiko Carstens <hca@linux.ibm.com>,
	Vasily Gorbik <gor@linux.ibm.com>,
	Christian Borntraeger <borntraeger@de.ibm.com>,
	linux-s390@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 3/3] Kconfig: add
 ARCH_WANTS_NO_INSTR+CC_HAS_NO_PROFILE_FN_ATTR, depend on for GCOV and PGO
Message-ID: <20210622090540.GA67232@C02TD0UTHF1T.local>
References: <20210621231822.2848305-1-ndesaulniers@google.com>
 <20210621231822.2848305-4-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210621231822.2848305-4-ndesaulniers@google.com>
X-Original-Sender: mark.rutland@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as
 permitted sender) smtp.mailfrom=mark.rutland@arm.com;       dmarc=pass
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

On Mon, Jun 21, 2021 at 04:18:22PM -0700, Nick Desaulniers wrote:
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

FWIW, this looks good to me:

Acked-by: Mark Rutland <mark.rutland@arm.com>

Catalin, Will, are you happy iwth the arm64 bit?

Thanks,
Makr.

> ---
> Changes V1 -> V2:
> * Add ARCH_WANTS_NO_INSTR
> * Change depdendencies to be !ARCH_WANTS_NO_INSTR || CC_HAS_NO_PROFILE_FN_ATTR
>   rather than list architectures explicitly, as per Nathan.
> * s/no_profile/no_profile_instrument_function/
> 
>  arch/Kconfig        | 7 +++++++
>  arch/arm64/Kconfig  | 1 +
>  arch/s390/Kconfig   | 1 +
>  arch/x86/Kconfig    | 1 +
>  init/Kconfig        | 3 +++
>  kernel/gcov/Kconfig | 1 +
>  kernel/pgo/Kconfig  | 3 ++-
>  7 files changed, 16 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/Kconfig b/arch/Kconfig
> index 2b4109b0edee..2113c6b3b801 100644
> --- a/arch/Kconfig
> +++ b/arch/Kconfig
> @@ -285,6 +285,13 @@ config ARCH_THREAD_STACK_ALLOCATOR
>  config ARCH_WANTS_DYNAMIC_TASK_STRUCT
>  	bool
>  
> +config ARCH_WANTS_NO_INSTR
> +	bool
> +	help
> +	  An architecure should select this if the noinstr macro is being used on
> +	  functions to denote that the toolchain should avoid instrumenting such
> +	  functions and is required for correctness.
> +
>  config ARCH_32BIT_OFF_T
>  	bool
>  	depends on !64BIT
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index 9f1d8566bbf9..39bf982b06f8 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -93,6 +93,7 @@ config ARM64
>  	select ARCH_WANT_FRAME_POINTERS
>  	select ARCH_WANT_HUGE_PMD_SHARE if ARM64_4K_PAGES || (ARM64_16K_PAGES && !ARM64_VA_BITS_36)
>  	select ARCH_WANT_LD_ORPHAN_WARN
> +	select ARCH_WANTS_NO_INSTR
>  	select ARCH_HAS_UBSAN_SANITIZE_ALL
>  	select ARM_AMBA
>  	select ARM_ARCH_TIMER
> diff --git a/arch/s390/Kconfig b/arch/s390/Kconfig
> index b4c7c34069f8..bd60310f33b9 100644
> --- a/arch/s390/Kconfig
> +++ b/arch/s390/Kconfig
> @@ -117,6 +117,7 @@ config S390
>  	select ARCH_USE_BUILTIN_BSWAP
>  	select ARCH_USE_CMPXCHG_LOCKREF
>  	select ARCH_WANTS_DYNAMIC_TASK_STRUCT
> +	select ARCH_WANTS_NO_INSTR
>  	select ARCH_WANT_DEFAULT_BPF_JIT
>  	select ARCH_WANT_IPC_PARSE_VERSION
>  	select BUILDTIME_TABLE_SORT
> diff --git a/arch/x86/Kconfig b/arch/x86/Kconfig
> index da43fd046149..7d6a44bb9b0e 100644
> --- a/arch/x86/Kconfig
> +++ b/arch/x86/Kconfig
> @@ -114,6 +114,7 @@ config X86
>  	select ARCH_WANT_BATCHED_UNMAP_TLB_FLUSH
>  	select ARCH_WANT_DEFAULT_BPF_JIT	if X86_64
>  	select ARCH_WANTS_DYNAMIC_TASK_STRUCT
> +	select ARCH_WANTS_NO_INSTR
>  	select ARCH_WANT_HUGE_PMD_SHARE
>  	select ARCH_WANT_LD_ORPHAN_WARN
>  	select ARCH_WANTS_THP_SWAP		if X86_64
> diff --git a/init/Kconfig b/init/Kconfig
> index 1ea12c64e4c9..31397a7a45fb 100644
> --- a/init/Kconfig
> +++ b/init/Kconfig
> @@ -83,6 +83,9 @@ config TOOLS_SUPPORT_RELR
>  config CC_HAS_ASM_INLINE
>  	def_bool $(success,echo 'void foo(void) { asm inline (""); }' | $(CC) -x c - -c -o /dev/null)
>  
> +config CC_HAS_NO_PROFILE_FN_ATTR
> +	def_bool $(success,echo '__attribute__((no_profile_instrument_function)) int x();' | $(CC) -x c - -c -o /dev/null -Werror)
> +
>  config CONSTRUCTORS
>  	bool
>  
> diff --git a/kernel/gcov/Kconfig b/kernel/gcov/Kconfig
> index 58f87a3092f3..053447183ac5 100644
> --- a/kernel/gcov/Kconfig
> +++ b/kernel/gcov/Kconfig
> @@ -5,6 +5,7 @@ config GCOV_KERNEL
>  	bool "Enable gcov-based kernel profiling"
>  	depends on DEBUG_FS
>  	depends on !CC_IS_CLANG || CLANG_VERSION >= 110000
> +	depends on !ARCH_WANTS_NO_INSTR || CC_HAS_NO_PROFILE_FN_ATTR
>  	select CONSTRUCTORS
>  	default n
>  	help
> diff --git a/kernel/pgo/Kconfig b/kernel/pgo/Kconfig
> index d2053df1111c..ce7fe04f303d 100644
> --- a/kernel/pgo/Kconfig
> +++ b/kernel/pgo/Kconfig
> @@ -8,7 +8,8 @@ config PGO_CLANG
>  	bool "Enable clang's PGO-based kernel profiling"
>  	depends on DEBUG_FS
>  	depends on ARCH_SUPPORTS_PGO_CLANG
> -	depends on CC_IS_CLANG && CLANG_VERSION >= 120000
> +	depends on CC_IS_CLANG
> +	depends on !ARCH_WANTS_NO_INSTR || CC_HAS_NO_PROFILE_FN_ATTR
>  	help
>  	  This option enables clang's PGO (Profile Guided Optimization) based
>  	  code profiling to better optimize the kernel.
> -- 
> 2.32.0.288.g62a8d224e6-goog
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210622090540.GA67232%40C02TD0UTHF1T.local.
