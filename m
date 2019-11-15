Return-Path: <clang-built-linux+bncBDV37XP3XYDRBKEMXPXAKGQEUW53NMQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43e.google.com (mail-wr1-x43e.google.com [IPv6:2a00:1450:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id A016CFE195
	for <lists+clang-built-linux@lfdr.de>; Fri, 15 Nov 2019 16:37:13 +0100 (CET)
Received: by mail-wr1-x43e.google.com with SMTP id y3sf7851478wrm.12
        for <lists+clang-built-linux@lfdr.de>; Fri, 15 Nov 2019 07:37:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573832233; cv=pass;
        d=google.com; s=arc-20160816;
        b=XB86FtuPCN090m2/Rt3/rrOcaf+EaZBKtB8vkOl3HQWyqufF+5oCdEMC1wZ1mr0dwo
         PgbIdwRkckvfgfVrAiw8QhpC4ErBpxDWi0U1zWk8r7aj+eiAJTgkTINKI3g47DH4koz+
         3j8ekAxiQL9fvR1GPOYJkSWtB5JOn7eVQlPtktZXdeRuDHd2CEOUaKDfgW5w74STvqO0
         64jy1Qr1Afid1bhCRW8lQ/vBbWPOIdXJgmWvV+SM1hs8Y1pqb66n8em4FRhhLpyAXL29
         8rOOSzB2Cud5RZkYQVDhemMgdJtXDD3u4GOkqO2oss3eY1gZkbx+ClITeQ4w2A66KMVP
         vZMQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=auxSUJC7yA4AqQIk+Gy5ZxT6TMQob8yqLEPSClZkzK4=;
        b=L7STVL8rt+rEenvAVIB9q2O13ozjkm4x7EaAJ5iZvBFCwrhaQ87yHcCdBMHbb2by15
         ZlYLorJxOKPcwRYtYZDURsMTA241LQQUZGxRSf2z+E6ZkcUbqunaO31L3FJOQlUyruvO
         3UGDdToaV/Gw/z+8mJmRQ1fIoC1GwwXMB761OKd8Bu9dTKYf3oQzgwA8UJ5AJipi/we4
         dmTePgQ07VWvmKKjhrK0f+IdOWg66RizBrW7OjddaJ+w6Cs4Wg3aHruULFcJFdayxQqL
         yJ4YUwr4MpazVWtEeaMoSu0XpTMPWA9QYrvuJiXC59EolXlMMl+blkQhLgXsKiWDgfxE
         ko4Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=auxSUJC7yA4AqQIk+Gy5ZxT6TMQob8yqLEPSClZkzK4=;
        b=Y/jrDXfwnH/TnU8QzxNOla9AmoZy6KYbxV7i2FZVuCc6PehlVDcMPo3XJqZmWDex7v
         HLS8PuOOCd+pXOoEGTd4+ujrY9iUmPCaVpo7D+3z7YhFS8TDTyxYXEL8fm12nQVKQTmK
         FFjWi7X19Fh2a4FfQzgM4zAxQrXNzL4+QDvsBRDDUY+W9MdWgZBiam/1tyc6Mzk+QgVc
         gsTJJUcXSL4mc6Sg53OqbmY7latxNxYtmFNnQRo6nECGPN/tng6PSFyuxTCag4ClBumb
         rdupPRShpuwdnsKPXqnMcYMhsx4bWrnv+0jaNI5D8YL/KXI7gXeTxCSxKkZPsI7bcREJ
         6sMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=auxSUJC7yA4AqQIk+Gy5ZxT6TMQob8yqLEPSClZkzK4=;
        b=DAr1+9ZB0afHdOQsFvkwsWx6XgcEZZmwnAfbCc095koXBChMilg0fyFHgvdHdKTsU1
         tZxHWNiFYBJs7BvZ429/pPzLOR4/jYMV5d2MdFS2yru8lFD7CXeHbRM8ZpS36PpN3VoU
         zxpen6VKeJ2ZpUD+/pBMLqfiEFC503m35R5l8hvzY6j6sV9WIA9tDtYONqjNZZMfRIOw
         veJwIlz7lqECUAPLjVPDEN4SlxEgTrjXuTBlUxdj/UHimBa4DTr0utpNTd83ghd7JsOA
         Z8uHJhfVEuHs9u5aoHS1PXZGLX2JLHy2GG3Tnkt6u2u5uttJCVAzQW4eT2DLB07wOytt
         fbdQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXv6a0ID9q90KW5PCCgYkJkfWr1Ce4fXUwoCZJgcGkd607QTesJ
	44o3mxdkhKGsJUugWOUlrig=
X-Google-Smtp-Source: APXvYqw8l/bZh7nrw5PbizpIWXL4xSL2fkWVQjLkTOd1X7MpV2jrcpi/ieiq36RYhaORtu5xS3XPew==
X-Received: by 2002:adf:d4cc:: with SMTP id w12mr16250035wrk.93.1573832233356;
        Fri, 15 Nov 2019 07:37:13 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:7406:: with SMTP id p6ls16057985wmc.2.gmail; Fri, 15 Nov
 2019 07:37:12 -0800 (PST)
X-Received: by 2002:a05:600c:c5:: with SMTP id u5mr14722332wmm.35.1573832231822;
        Fri, 15 Nov 2019 07:37:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573832231; cv=none;
        d=google.com; s=arc-20160816;
        b=c98SLM0wPzjJ6JyfroC2iO0sllYmxRFGxIHECZnSxoz5sB1lOMWMJGDnMFUdr6+wNS
         x7ZnamBQXMwpCo7l+LyPoLKiYSBRg8HMxQfsc4QIcOoQyFZ/of+6Vac8Hu7DLFz6xd21
         gh186N8AGGlX2Vk6Sy1fbjLi0EKb5+asKQyEbjflv05k8MQhtTMVctZWyf1DsctRJlss
         9zvnTL+A85V19iaZKMyPMptMhwbLIi649YZvg8r/cQrQKF4mJRdhLxl2AlXcErPIj4Nq
         3DI3oKkqycU2budn9CGxl/UFqCx9QP11lpm/ibyP4sksMwS1j2JWUrog/hmy3j0gr43S
         djBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=KBb2GGkXr6gwJrFH25//TGaFkCKCltS/vm5mDCZYYL0=;
        b=qr/7kJhCx/UC7Sci3npUbC2ak5mYg/Dy21klq8PxlSlrwJoal9RDLdqCoB3Dz2C8eP
         uEELi4S8RSxUkSCZS3yW7oQ8mRBEVrr+JO8Ukm4bdaE0z1Gp3J4Kl8/Hqhu4J6wzZFMZ
         hrL0gLCx0s+O4l0oIfNiPCwNGl1mDJach3eTbKUEJldR+36tZPoi+XPAgoWzfxA4UtGV
         h+5Jz/sPMAnj/NHZhS+9SeeS3QAhrq4bJW91mRCL91MI2Gil+zp0OdIuTkxUM0FXLIm5
         RZj/U+BSQy9VYoT4aasEIPVMSIEg0I+t+cQ+l26QMD+F9PnJ2S6nugz/PZ2pCdcY4Bde
         nwrw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id d5si600878wrm.5.2019.11.15.07.37.11
        for <clang-built-linux@googlegroups.com>;
        Fri, 15 Nov 2019 07:37:11 -0800 (PST)
Received-SPF: pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A421530E;
	Fri, 15 Nov 2019 07:37:10 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6B1103F534;
	Fri, 15 Nov 2019 07:37:08 -0800 (PST)
Date: Fri, 15 Nov 2019 15:37:06 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	Ard Biesheuvel <ard.biesheuvel@linaro.org>,
	Dave Martin <Dave.Martin@arm.com>,
	Kees Cook <keescook@chromium.org>,
	Laura Abbott <labbott@redhat.com>, Marc Zyngier <maz@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Jann Horn <jannh@google.com>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Masahiro Yamada <yamada.masahiro@socionext.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 05/14] add support for Clang's Shadow Call Stack (SCS)
Message-ID: <20191115153705.GJ41572@lakrids.cambridge.arm.com>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191105235608.107702-1-samitolvanen@google.com>
 <20191105235608.107702-6-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191105235608.107702-6-samitolvanen@google.com>
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

On Tue, Nov 05, 2019 at 03:55:59PM -0800, Sami Tolvanen wrote:
> This change adds generic support for Clang's Shadow Call Stack,
> which uses a shadow stack to protect return addresses from being
> overwritten by an attacker. Details are available here:
> 
>   https://clang.llvm.org/docs/ShadowCallStack.html
> 
> Note that security guarantees in the kernel differ from the
> ones documented for user space. The kernel must store addresses
> of shadow stacks used by other tasks and interrupt handlers in
> memory, which means an attacker capable reading and writing
> arbitrary memory may be able to locate them and hijack control
> flow by modifying shadow stacks that are not currently in use.
> 
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> Reviewed-by: Kees Cook <keescook@chromium.org>
> Reviewed-by: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
> ---
>  Makefile                       |   6 ++
>  arch/Kconfig                   |  33 ++++++
>  include/linux/compiler-clang.h |   6 ++
>  include/linux/compiler_types.h |   4 +
>  include/linux/scs.h            |  57 ++++++++++
>  init/init_task.c               |   8 ++
>  kernel/Makefile                |   1 +
>  kernel/fork.c                  |   9 ++
>  kernel/sched/core.c            |   2 +
>  kernel/scs.c                   | 187 +++++++++++++++++++++++++++++++++
>  10 files changed, 313 insertions(+)
>  create mode 100644 include/linux/scs.h
>  create mode 100644 kernel/scs.c
> 
> diff --git a/Makefile b/Makefile
> index b37d0e8fc61d..7f3a4c5c7dcc 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -846,6 +846,12 @@ ifdef CONFIG_LIVEPATCH
>  KBUILD_CFLAGS += $(call cc-option, -flive-patching=inline-clone)
>  endif
>  
> +ifdef CONFIG_SHADOW_CALL_STACK
> +CC_FLAGS_SCS	:= -fsanitize=shadow-call-stack
> +KBUILD_CFLAGS	+= $(CC_FLAGS_SCS)
> +export CC_FLAGS_SCS
> +endif
> +
>  # arch Makefile may override CC so keep this after arch Makefile is included
>  NOSTDINC_FLAGS += -nostdinc -isystem $(shell $(CC) -print-file-name=include)
>  
> diff --git a/arch/Kconfig b/arch/Kconfig
> index 5f8a5d84dbbe..5e34cbcd8d6a 100644
> --- a/arch/Kconfig
> +++ b/arch/Kconfig
> @@ -521,6 +521,39 @@ config STACKPROTECTOR_STRONG
>  	  about 20% of all kernel functions, which increases the kernel code
>  	  size by about 2%.
>  
> +config ARCH_SUPPORTS_SHADOW_CALL_STACK
> +	bool
> +	help
> +	  An architecture should select this if it supports Clang's Shadow
> +	  Call Stack, has asm/scs.h, and implements runtime support for shadow
> +	  stack switching.
> +
> +config SHADOW_CALL_STACK_VMAP
> +	bool
> +	depends on SHADOW_CALL_STACK
> +	help
> +	  Use virtually mapped shadow call stacks. Selecting this option
> +	  provides better stack exhaustion protection, but increases per-thread
> +	  memory consumption as a full page is allocated for each shadow stack.

The bool needs some display text to make it selectable.

This should probably be below SHADOW_CALL_STACK so that when it shows up
in menuconfig it's where you'd expect it to be.

I locally hacked that in, but when building defconfig +
SHADOW_CALL_STACK + SHADOW_CALL_STACK_VMAP, the build explodes as below:

| [mark@lakrids:~/src/linux]% usellvm 9.0.0 usekorg 8.1.0 make ARCH=arm64 CROSS_COMPILE=aarch64-linux- CC=clang -j56 -s
| arch/arm64/kernel/scs.c:28:7: error: use of undeclared identifier 'VMALLOC_START'
|                                          VMALLOC_START, VMALLOC_END,
|                                          ^
| arch/arm64/kernel/scs.c:28:22: error: use of undeclared identifier 'VMALLOC_END'
|                                          VMALLOC_START, VMALLOC_END,
|                                                         ^
| arch/arm64/kernel/scs.c:29:7: error: use of undeclared identifier 'SCS_GFP'
|                                          SCS_GFP, PAGE_KERNEL,
|                                          ^
| arch/arm64/kernel/scs.c:29:16: error: use of undeclared identifier 'PAGE_KERNEL'
|                                          SCS_GFP, PAGE_KERNEL,
|                                                   ^
| 4 errors generated.
| scripts/Makefile.build:265: recipe for target 'arch/arm64/kernel/scs.o' failed
| make[2]: *** [arch/arm64/kernel/scs.o] Error 1
| scripts/Makefile.build:509: recipe for target 'arch/arm64/kernel' failed
| make[1]: *** [arch/arm64/kernel] Error 2
| Makefile:1655: recipe for target 'arch/arm64' failed
| make: *** [arch/arm64] Error 2
| make: *** Waiting for unfinished jobs....

Other than that, this largely looks good to me!

Thanks,
Mark.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191115153705.GJ41572%40lakrids.cambridge.arm.com.
