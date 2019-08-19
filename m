Return-Path: <clang-built-linux+bncBC4IFTUFXEFBBW6S5HVAKGQE4V2WGFY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x838.google.com (mail-qt1-x838.google.com [IPv6:2607:f8b0:4864:20::838])
	by mail.lfdr.de (Postfix) with ESMTPS id 4277D91FD3
	for <lists+clang-built-linux@lfdr.de>; Mon, 19 Aug 2019 11:18:20 +0200 (CEST)
Received: by mail-qt1-x838.google.com with SMTP id r10sf3147439qte.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 19 Aug 2019 02:18:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566206299; cv=pass;
        d=google.com; s=arc-20160816;
        b=FhXFI/zmYfpKJTAO6t9bB4QjH/417oN2fu/C6W5H4tA7AnyFM9In4PgSJMtdElR444
         Cdz6PekLxIZJJtcFGvy4C2e2IeQj5riXFO7unR0HXrC8eitWInL1ibdmprhm1UZvaAEs
         XfnPoH1AOkIxXXvT7QBSg0r3kCa5US64FX/3gh5uMlYnoYdbWm9PHpIQjbj9tOtjDihJ
         K4Rklxwq6HhluE5zMQrACnyQQcN649mciKmyNzupzNaXB5RoEgNLl9ii3FYgjk737boi
         sCJUtgEH0hVqypQgcUNxuVHkKu4nSHFn34ZAruGcNhjQ2ECaZX4DzJafzR85e95uAKlg
         XhHA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:to
         :from:date:sender:dkim-signature;
        bh=rCduxeYnjB2aQf8+xnCNoWoUGxjMO49zSyTTY8xPsWI=;
        b=Ki89laV5aUs/yrQWX888qwG2G/9ow/OYMdQin1sAIYrmKwcxAzrR1WPhdQxnxXOQNa
         HLE6YZeOGQd3iRYaDCrAQF/f+gsTwEaLMwYFmLNPo1ka7F+gGI1Aps3Z87en6O55zOzc
         29uWj6R3CigNs4NHNhtO89hPQ1eu2Ia49QT9L4NsCktX/KIYDrfMZfG4lbqhvywdgguE
         rNow1GWFgvnF7Tqhj1/zBusIE4fDES+8DQGppSCObuMjQzbgEI2GSp8J8QsfS1DNOt/T
         olfWRtzv/85Sq39rpLJZvduQuQuOI4bOTtGvgRWbxYbCnQlIYdI7yBONTLrHOomJhv1e
         DIhg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b="Av/fd6Du";
       spf=pass (google.com: domain of leo.yan@linaro.org designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=leo.yan@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rCduxeYnjB2aQf8+xnCNoWoUGxjMO49zSyTTY8xPsWI=;
        b=faPtI5ZwDdbO7AticUZQziYbHqplxlddt5KdD2QwhlF2kjVAC0pIGUEqHTn3tKYcc/
         MTTCOC5yaKm8FtVdF0EuN85wHXvBnGZyEl779xkmzx8fkjPqJqZYpGxhULp4YzlcFy4J
         eXdJ4fsK+Z6dKQAaHLuaGVfzob/VMqzLdIBPnv5A5dmB9juNIXmvo7RMIJVyy6LykOGw
         EBcJtaYUO0CFR0xBcJYquJbnBeOo5ghWpt2jdyB0NaOQELSZnYFJw2EksngzJdwZXf37
         3D8L1UK/sS4dwz733hbfXQ05sUxScuNxtai93/+eSmuyQFJHEXfvW4ldlj5NPjpJE2g9
         wM+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=rCduxeYnjB2aQf8+xnCNoWoUGxjMO49zSyTTY8xPsWI=;
        b=s6zUbd0sp2Q85vGjXleEBmKt3Kp42VvBZPyx6D8ard25BDwXKVrapiuEWlsbPHyCEo
         xKtxvSeNLcz92qRiIn4dGOi+GCDaJfOcE+GaHrM+LJIa7A60Hn9T62taUMMUGtlMqNiO
         m5TvRrImsEySECBtZ6GoHQt/A0jyC+7D4c1NETC3Ou+uRdCsrskFzx6taiCl2A5AAkNG
         GC8kPKdoOESpfnLyyFqudbEbkKJ9TB5IAvjNm98Qz+5MGyYDnaEfUXY4SfHNXxARcm62
         gxXHsJhGSfaU+lBcybkBCXVckaWpQJIV1SSTZRNUZXLWBMcUs829uSNIgjdn9mGUOKzz
         AQww==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXufw/kEgr7FhdEk5S+6Qlfd1kdUfRVPbHoHIdSiGWgtUeiJ4d5
	7NuxXDEggwXLrlEbXTHHjyo=
X-Google-Smtp-Source: APXvYqxunXkFGeYg8M7tAN0oXQNVhWdQE8mRE+f+5wl3Tfq9crpjPgXiXFGxa+acHSxEy1axW/DBIw==
X-Received: by 2002:ac8:117:: with SMTP id e23mr19593619qtg.18.1566206299262;
        Mon, 19 Aug 2019 02:18:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:b387:: with SMTP id c129ls2833765qkf.10.gmail; Mon, 19
 Aug 2019 02:18:19 -0700 (PDT)
X-Received: by 2002:ae9:ef06:: with SMTP id d6mr19601539qkg.157.1566206299069;
        Mon, 19 Aug 2019 02:18:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566206299; cv=none;
        d=google.com; s=arc-20160816;
        b=GAC48sv2xuAGIOtD/JehhsXnnuzKbvA8oCj2NXdKaNujOIRfFIcMZP+7cM2W6hPFYB
         gCFJrdxZhgGIqgRHylj/9MAOPhLRQE9E0gwBUQztectachN0tswEuKruYZfoQURnfVor
         /x9+lqG4Y6PfD64mVYrrx0PN8xT+MzRd46NcHIPutyKQZWUsrUnw9tJ0VnXOEasROCYt
         t45nSJH4R8bapI4VHgqx7zeSeaSVFJMQ6u03NiYGcLqu74xpIN2KoWS7vgVmx4RWdwb9
         ZubMzp7YTyKLn/Ge0ulbSFM/0CqBQMphfptlJvKa1ht01RzrgHo2zhx7cmGEP8GgqO/Y
         3giw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature;
        bh=EWeFe61NjVZsw0MX6UC+IPTXiHZgyCfddwQtPOe4yOY=;
        b=CTLFlJY2171PMjkdWZEtgzcusDfBnf/Qh63hVq27cC1aQ27XBFCJG/HIfdfDomxmhQ
         nHW+NrRwKi+KSRfQK8DPrc+KHLKDpFewdO4UrtubYqbRdKbmAlHjJz2Hd/l1dIzoR7md
         0YlOwLE8GolhoAa5jlbPZIwcQb5BlUxVcxWLyp0QsnHW73bcfyKAImTzuI0+0fHbDqq6
         NJZ4Kzo1v5l+Zas9v9DHNYI69J/14Ac9rDHhxXV6QfbDdhWAvcGb00pYzNFrDdynfLgq
         g2jMUKy5IJALx48/ihu+od6b/yOwpyo5brP+FfwvLVe3ICGhksAQ9gfaOfof4sPGxebr
         W/yA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b="Av/fd6Du";
       spf=pass (google.com: domain of leo.yan@linaro.org designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=leo.yan@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id v19si605531qth.1.2019.08.19.02.18.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Aug 2019 02:18:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of leo.yan@linaro.org designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Received: by mail-pl1-x643.google.com with SMTP id m9so677795pls.8
        for <clang-built-linux@googlegroups.com>; Mon, 19 Aug 2019 02:18:18 -0700 (PDT)
X-Received: by 2002:a17:902:2bc5:: with SMTP id l63mr19077218plb.239.1566206298095;
        Mon, 19 Aug 2019 02:18:18 -0700 (PDT)
Received: from leoy-ThinkPad-X240s (li456-16.members.linode.com. [50.116.10.16])
        by smtp.gmail.com with ESMTPSA id d2sm11867796pjs.21.2019.08.19.02.18.11
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 19 Aug 2019 02:18:17 -0700 (PDT)
Date: Mon, 19 Aug 2019 17:18:08 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Russell King <linux@armlinux.org.uk>, Oleg Nesterov <oleg@redhat.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Paul Mackerras <paulus@samba.org>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
	"H. Peter Anvin" <hpa@zytor.com>, x86@kernel.org,
	Arnd Bergmann <arnd@arndb.de>, Alexei Starovoitov <ast@kernel.org>,
	Daniel Borkmann <daniel@iogearbox.net>,
	Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>,
	Yonghong Song <yhs@fb.com>,
	"Naveen N. Rao" <naveen.n.rao@linux.vnet.ibm.com>,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linuxppc-dev@lists.ozlabs.org, linux-arch@vger.kernel.org,
	netdev@vger.kernel.org, bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Masami Hiramatsu <mhiramat@kernel.org>
Subject: Re: [PATCH v2 3/3] arm: Add support for function error injection
Message-ID: <20190819091808.GB5599@leoy-ThinkPad-X240s>
References: <20190806100015.11256-1-leo.yan@linaro.org>
 <20190806100015.11256-4-leo.yan@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190806100015.11256-4-leo.yan@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: leo.yan@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b="Av/fd6Du";       spf=pass
 (google.com: domain of leo.yan@linaro.org designates 2607:f8b0:4864:20::643
 as permitted sender) smtp.mailfrom=leo.yan@linaro.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

Hi Russell,

On Tue, Aug 06, 2019 at 06:00:15PM +0800, Leo Yan wrote:
> This patch implements arm specific functions regs_set_return_value() and
> override_function_with_return() to support function error injection.
> 
> In the exception flow, it updates pt_regs::ARM_pc with pt_regs::ARM_lr
> so can override the probed function return.

Gentle ping ...  Could you review this patch?

Thanks,
Leo.

> Signed-off-by: Leo Yan <leo.yan@linaro.org>
> ---
>  arch/arm/Kconfig              |  1 +
>  arch/arm/include/asm/ptrace.h |  5 +++++
>  arch/arm/lib/Makefile         |  2 ++
>  arch/arm/lib/error-inject.c   | 19 +++++++++++++++++++
>  4 files changed, 27 insertions(+)
>  create mode 100644 arch/arm/lib/error-inject.c
> 
> diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> index 33b00579beff..2d3d44a037f6 100644
> --- a/arch/arm/Kconfig
> +++ b/arch/arm/Kconfig
> @@ -77,6 +77,7 @@ config ARM
>  	select HAVE_EXIT_THREAD
>  	select HAVE_FAST_GUP if ARM_LPAE
>  	select HAVE_FTRACE_MCOUNT_RECORD if !XIP_KERNEL
> +	select HAVE_FUNCTION_ERROR_INJECTION if !THUMB2_KERNEL
>  	select HAVE_FUNCTION_GRAPH_TRACER if !THUMB2_KERNEL && !CC_IS_CLANG
>  	select HAVE_FUNCTION_TRACER if !XIP_KERNEL
>  	select HAVE_GCC_PLUGINS
> diff --git a/arch/arm/include/asm/ptrace.h b/arch/arm/include/asm/ptrace.h
> index 91d6b7856be4..3b41f37b361a 100644
> --- a/arch/arm/include/asm/ptrace.h
> +++ b/arch/arm/include/asm/ptrace.h
> @@ -89,6 +89,11 @@ static inline long regs_return_value(struct pt_regs *regs)
>  	return regs->ARM_r0;
>  }
>  
> +static inline void regs_set_return_value(struct pt_regs *regs, unsigned long rc)
> +{
> +	regs->ARM_r0 = rc;
> +}
> +
>  #define instruction_pointer(regs)	(regs)->ARM_pc
>  
>  #ifdef CONFIG_THUMB2_KERNEL
> diff --git a/arch/arm/lib/Makefile b/arch/arm/lib/Makefile
> index b25c54585048..8f56484a7156 100644
> --- a/arch/arm/lib/Makefile
> +++ b/arch/arm/lib/Makefile
> @@ -42,3 +42,5 @@ ifeq ($(CONFIG_KERNEL_MODE_NEON),y)
>    CFLAGS_xor-neon.o		+= $(NEON_FLAGS)
>    obj-$(CONFIG_XOR_BLOCKS)	+= xor-neon.o
>  endif
> +
> +obj-$(CONFIG_FUNCTION_ERROR_INJECTION) += error-inject.o
> diff --git a/arch/arm/lib/error-inject.c b/arch/arm/lib/error-inject.c
> new file mode 100644
> index 000000000000..2d696dc94893
> --- /dev/null
> +++ b/arch/arm/lib/error-inject.c
> @@ -0,0 +1,19 @@
> +// SPDX-License-Identifier: GPL-2.0
> +
> +#include <linux/error-injection.h>
> +#include <linux/kprobes.h>
> +
> +void override_function_with_return(struct pt_regs *regs)
> +{
> +	/*
> +	 * 'regs' represents the state on entry of a predefined function in
> +	 * the kernel/module and which is captured on a kprobe.
> +	 *
> +	 * 'regs->ARM_lr' contains the the link register for the probed
> +	 * function, when kprobe returns back from exception it will override
> +	 * the end of probed function and directly return to the predefined
> +	 * function's caller.
> +	 */
> +	instruction_pointer_set(regs, regs->ARM_lr);
> +}
> +NOKPROBE_SYMBOL(override_function_with_return);
> -- 
> 2.17.1
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190819091808.GB5599%40leoy-ThinkPad-X240s.
