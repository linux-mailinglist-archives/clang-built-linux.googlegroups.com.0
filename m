Return-Path: <clang-built-linux+bncBDV37XP3XYDRBMW4XTWQKGQEHIZEM2A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33a.google.com (mail-wm1-x33a.google.com [IPv6:2a00:1450:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A91DE08D3
	for <lists+clang-built-linux@lfdr.de>; Tue, 22 Oct 2019 18:28:35 +0200 (CEST)
Received: by mail-wm1-x33a.google.com with SMTP id g13sf639686wme.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 22 Oct 2019 09:28:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571761715; cv=pass;
        d=google.com; s=arc-20160816;
        b=BR20V8L8Jd2BM0RytUFFgkJKpYfjK/Rc2muU+hV339Okb0WxOwkMdC8yQ9hUgfcE7p
         PXTenLHxTmU+I4B7CSGIZNFNQxHYnotX7Dl0TbgJXWUFSht9w/mIRoB/NfAAQQA+vUvR
         c0sRz+uma4Li3zrOoLcrU4MvN8Hi/ZgzGlmfNcT2QH7v0tuIl3lAuIUaVm/5IIH5jw1u
         zHXkACTYqNdlV6uTQqjaDDw+ALLlywR11QQuyWeeP0B/g+Potb07t3cf1ghApOtYSySe
         yim+QiYwzbHKoFlyAD3l0cccttxu5h3zJJQfdEJ3hcxEX9Ibn0+5YeZU7dR5hZBPpBaf
         SmKg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=ToV3s+aiE8BCN4bwqUtOwYfbfMH4RzSi2OFSFCaBz8M=;
        b=fdknQa00zGJ5f9CqGr28GyfNSLaSgs194q94SXopbpBwH7NUswqW1fp3MDsHlv9Yor
         DdWw4yCvc1QRlH2LlHEFVSeR80Naa1Fqaw2ibHzb+qoI71uFIyfFrqhqycZtr3hzN8CQ
         VDpraRQKMH/uvG0i/cQ0vX525WL0iHWOhoLgIyWD/2iuNWCuKk82evUZK6IyqW66i3fm
         GEnu1sNJljBQyTdVgmcXUWTWup0h1S7XiNng1dbEvEZnRWSe//CXldVOsvPbEJL9yLi6
         vODh/bNM/M6Lh9OLc5+4elfByntmNxxbeMpiahSsQMO2O2mHlt9TmvvX8AzxTD2JGL0n
         2mjA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ToV3s+aiE8BCN4bwqUtOwYfbfMH4RzSi2OFSFCaBz8M=;
        b=f/IMHZxjNTdZwW5WVIoR4g3pHSfeyV2n/k90TM7NCmssMb7rwY72LTam5nrdAldi9/
         sjVHQsO/gEIzTYkMqBKNy/FbvSuqzvFh60pXMunzDsu/kIBSuFjJFnlEHiBbckCV2fcv
         YSnomYghSLmJgvTr3whTUGYlTyvfRWlD45OETGOLtGYrd/gYAgiLZZQEqDtYree+R+BJ
         GS2MpG6Oo6sSJN2DUjIG+VhWi/3zCZR92fUd1iDOJ6nvKjbm6EWNMYB0+tKi6ydB7pvu
         lfVVN+le7ccZTaE3crIaiCFFjUwjdK76/7mWlNKJYKOGj2wXjT2JGt7hjdIgiChYqM/c
         FKLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ToV3s+aiE8BCN4bwqUtOwYfbfMH4RzSi2OFSFCaBz8M=;
        b=a3XVGhnjKMOJJH0yDYrGCVFlV7KQBng1Vs3T9/NXxx4qm3146j0N4HrEhI3W4Iiv5u
         LqyA1Zjpoyn8WRIk1kpl5fA8DM3oR97WHWeUZcoDcKfIKHKH8LuUdGadaXWfLOWlkjj5
         L4deTgr7W3mYPcB4wA6/BspbeBQJpCYA//9z6G8nahhFKxTZ3NQbwTP01vVU14zJEMrc
         YPqPbWsmY3j3E0rmNB69C2oLW/f31fVQyHl91TdREQAn/tlrTkxOgleSk14oiAXDQaLg
         uXKDxdjh8sROiQ1hyROApG/LYsLtTTPP9gOaCJA2aknZ6Y8JvMIHWitA7YgrvG6WBOEc
         hcaA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXQguhO6NarTzfsr/Rou5e7/BQ4xfamGfWclITeLpIVmAfv406F
	EHWcVOHvjstmtruqW9TgptY=
X-Google-Smtp-Source: APXvYqzeBRSBwPgAWg5fhFxNM0NfwMgjTGTQ7vBbigvZ/aRYeQn9vlx9VkGW0dUDo7MoC7t0k8yYBA==
X-Received: by 2002:a1c:a842:: with SMTP id r63mr3553377wme.23.1571761715078;
        Tue, 22 Oct 2019 09:28:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:ba04:: with SMTP id o4ls9517137wrg.7.gmail; Tue, 22 Oct
 2019 09:28:34 -0700 (PDT)
X-Received: by 2002:a05:6000:92:: with SMTP id m18mr4455593wrx.105.1571761714231;
        Tue, 22 Oct 2019 09:28:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571761714; cv=none;
        d=google.com; s=arc-20160816;
        b=q/cWnWp3fB5fYCXyBrMuUXvUSA9uSk/OLWWZcNQdv7czprlM81qF3iwBki946ySFqp
         jER/G25VuB/HffomHqUm/YWi/Yo4BC9JEi2o264cJFDAmjH61n1QYuSOqErztmx9HwAq
         4FWbPqTMpLht043X1Gk4PjmblCpj76H/8PEjQrW13SoEd9YEIBTWFOiyM91rQIdzafUK
         QXHTaqyaKywsmgcwU0uNuiY+xuOZD+dVLo3e5p/rxUKVKAERz+GBofGl4KUTg/Ev6YG0
         5cT30E4bLxFUNi+hAifHqxtNKF5MFFL1P3s7Pnl2Owdoq1MLNG+H4vqX8mcVBBUP+y9A
         CtjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=gQb0h7r/agZNNlp4ryEuGTL5ondHRSfEa93x0Ufjk1Q=;
        b=w0fosYCOSf+JvQISLSwX6avyCZmFfC4/NPj6N0AF149h8k0KtMQXbEJFeBU3hMX0jd
         rj2ExCCML8nqcpWMNCttkCclKp8EO5bZRKkDfH2PsM032Igr3IcEdf5JZhIanEQW094a
         5QuputpFzAMBPIg0+DCjLMGIczC57nNR9h7Ui4rB5evNm4tqXSeshNJA4Lm9zIPzBSL8
         6IBe2QCeV4FZR4oraVV4m2tepTS9XrN5BdH6+tpxuf5iW4MyLNmU9uNm1Tjh1K64ATr0
         w9S6mNcfVeAaHlIrViJd5xyHpXu/wqrRUns9Eh/nB2P6bb1FuzYXq2E7kmOeDvznXYUe
         YXoQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com
Received: from foss.arm.com ([217.140.110.172])
        by gmr-mx.google.com with ESMTP id v2si65617wma.3.2019.10.22.09.28.33
        for <clang-built-linux@googlegroups.com>;
        Tue, 22 Oct 2019 09:28:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F40F34AE;
	Tue, 22 Oct 2019 09:28:30 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4DC9A3F71A;
	Tue, 22 Oct 2019 09:28:29 -0700 (PDT)
Date: Tue, 22 Oct 2019 17:28:27 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Ard Biesheuvel <ard.biesheuvel@linaro.org>,
	Dave Martin <Dave.Martin@arm.com>,
	Kees Cook <keescook@chromium.org>,
	Laura Abbott <labbott@redhat.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 06/18] add support for Clang's Shadow Call Stack (SCS)
Message-ID: <20191022162826.GC699@lakrids.cambridge.arm.com>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191018161033.261971-7-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191018161033.261971-7-samitolvanen@google.com>
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

On Fri, Oct 18, 2019 at 09:10:21AM -0700, Sami Tolvanen wrote:
> This change adds generic support for Clang's Shadow Call Stack, which
> uses a shadow stack to protect return addresses from being overwritten
> by an attacker. Details are available here:
> 
>   https://clang.llvm.org/docs/ShadowCallStack.html
> 
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> ---
>  Makefile                       |   6 ++
>  arch/Kconfig                   |  39 ++++++++
>  include/linux/compiler-clang.h |   2 +
>  include/linux/compiler_types.h |   4 +
>  include/linux/scs.h            |  88 ++++++++++++++++++
>  init/init_task.c               |   6 ++
>  init/main.c                    |   3 +
>  kernel/Makefile                |   1 +
>  kernel/fork.c                  |   9 ++
>  kernel/sched/core.c            |   2 +
>  kernel/sched/sched.h           |   1 +
>  kernel/scs.c                   | 162 +++++++++++++++++++++++++++++++++
>  12 files changed, 323 insertions(+)
>  create mode 100644 include/linux/scs.h
>  create mode 100644 kernel/scs.c
> 
> diff --git a/Makefile b/Makefile
> index ffd7a912fc46..e401fa500f62 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -846,6 +846,12 @@ ifdef CONFIG_LIVEPATCH
>  KBUILD_CFLAGS += $(call cc-option, -flive-patching=inline-clone)
>  endif
>  
> +ifdef CONFIG_SHADOW_CALL_STACK
> +KBUILD_CFLAGS	+= -fsanitize=shadow-call-stack
> +DISABLE_SCS	:= -fno-sanitize=shadow-call-stack
> +export DISABLE_SCS
> +endif

I think it would be preferable to follow the example of CC_FLAGS_FTRACE
so that this can be filtered out, e.g.

ifdef CONFIG_SHADOW_CALL_STACK
CFLAGS_SCS := -fsanitize=shadow-call-stack
KBUILD_CFLAGS += $(CFLAGS_SCS)
export CC_FLAGS_SCS
endif

... with removal being:

CFLAGS_REMOVE := $(CC_FLAGS_SCS)

... or:

CFLAGS_REMOVE_obj.o := $(CC_FLAGS_SCS)

That way you only need to define the flags once, so the enable and
disable falgs remain in sync by construction.

[...]

> +config ARCH_SUPPORTS_SHADOW_CALL_STACK
> +	bool
> +	help
> +	  An architecture should select this if it supports Clang's Shadow
> +	  Call Stack, has asm/scs.h, and implements runtime support for shadow
> +	  stack switching.
> +
> +config SHADOW_CALL_STACK_VMAP
> +	def_bool n

A bool is default n, so you can just say bool here.

> +	depends on SHADOW_CALL_STACK
> +	help
> +	  Use virtually mapped shadow call stacks. Selecting this option
> +	  provides better stack exhaustion protection, but increases per-thread
> +	  memory consumption as a full page is allocated for each shadow stack.
> +
> +choice
> +	prompt "Return-oriented programming (ROP) protection"
> +	default ROP_PROTECTION_NONE
> +	help
> +	  This option controls kernel protections against return-oriented
> +	  programming (ROP) attacks.

Are we expecting more options here in future?

> +config ROP_PROTECTION_NONE
> +	bool "None"

IIUC this is for the benefit of the kretprobes Kconfig.

I think it would be better to make that depend on !SHADOW_CALL_STACK, as
it's plausible that we can add a different ROP protection mechanism that
is compatible with kretprobes.

> +config SHADOW_CALL_STACK
> +	bool "Clang Shadow Call Stack"
> +	depends on ARCH_SUPPORTS_SHADOW_CALL_STACK
> +	depends on CC_IS_CLANG && CLANG_VERSION >= 70000

Is there a reason for an explicit version check rather than a
CC_HAS_<feature> check? e.g. was this available but broken in prior
versions of clang?

[...]

> +#define SCS_GFP			(GFP_KERNEL | __GFP_ZERO)

Normally GFP_ is a prefix. For consistency, GFP_SCS would be preferable.

> +extern unsigned long init_shadow_call_stack[];

Do we need this exposed here? IIUC this is only assigned by assembly in
arch code.

[...]

> +void scs_set_init_magic(struct task_struct *tsk)
> +{
> +	scs_save(tsk);
> +	scs_set_magic(tsk);
> +	scs_load(tsk);
> +}

Can we initialize this at compile time instead?

Thanks,
Mark.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191022162826.GC699%40lakrids.cambridge.arm.com.
