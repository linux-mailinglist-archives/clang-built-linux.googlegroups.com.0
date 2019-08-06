Return-Path: <clang-built-linux+bncBC4IFTUFXEFBB4U7UXVAKGQEYE3G2GY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33d.google.com (mail-ot1-x33d.google.com [IPv6:2607:f8b0:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id B8E6582F3B
	for <lists+clang-built-linux@lfdr.de>; Tue,  6 Aug 2019 12:01:23 +0200 (CEST)
Received: by mail-ot1-x33d.google.com with SMTP id q16sf48808730otn.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 06 Aug 2019 03:01:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565085682; cv=pass;
        d=google.com; s=arc-20160816;
        b=yjhQPGyETRHOD0cpMx1FbH3xdZnhdxoQTUkLTHOolKLzXy1OhxRGRqaFl7EhExMDuR
         VmZoRNuFFH5zx4txPeYMVzYtmIgy79fTFuv/XIygqASM12AQlTAEN/4eBHvZzdpTXmMA
         c+9kPDfE6jcbNISOdu+nC8YJ3YF3T2kVIJaRi+A/qn8sa9Xntg4gGAi3iErHddhPIPEC
         Adh/C4YkUtfiAy3sgH+EXeS5Rrz0Zq5U5+sOibnop/antyC/xUZurR5lCiqlc+6fUr3e
         QxXnWK1bhyclxtULh12kK8IzX899hUgTakXuVAkQ1ERdzc24y9FNtfl9J+gsqIjtLiNo
         2oRQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=Y3EIUVQhIN3KleET8KnS1rf5JQdWeY6gqK4vPB8zLSU=;
        b=M1W+QbqMV7thmQ05R3yxa+dduyv6XhbIgto5VlpxNj10gNSM8Rsx4kGnIkqMcZLLjc
         XCheGKc4xm2y9J/BguIgkI3ku/kZCC2+xadLJwVl7en301SWA4e3u4xJpUVyo1Vefrl8
         mDH8Pcv9382/TUfV/UL68dBiICETu2W7PDjAskkXIcxOEEdkFyNadyWRA/s8oWU60vmm
         F31vp6XkvMEJc50WO6ajedLOQpJyi7HwSIDf8H8F62Cxb1ywlj3bde5DGPBMxbwSiZ3f
         bJN/LAm7sB7GeRm16UYTP2zVhXfhK7Ow0T0oq9Mxnp6qV5c24rZZO+/zNd6EXdBcnqUg
         0jkg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=NcmXSNcy;
       spf=pass (google.com: domain of leo.yan@linaro.org designates 2607:f8b0:4864:20::b42 as permitted sender) smtp.mailfrom=leo.yan@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Y3EIUVQhIN3KleET8KnS1rf5JQdWeY6gqK4vPB8zLSU=;
        b=Ngnze3w+rVVMu+MdVEhAV0F+nJLb3RDWXIPZ/emZejE4yyQg6H+tB72S78QxHihd2c
         8AoDg2On3Vj6puuKaaEza31xl6xfY5uXePqHQdJ6KsSy9LUvN2BvXJ7WRbcslgoQklJY
         9ik30Dpa64u1Fe3sw1q0mAEA2rnHMeH9CCUWunBBXfuPJBGjkSVGvMCKpCZhj1gyujm4
         6buB+YPVoBPGMN/vUL5klHeN/YmjN1a47kmE+YZgvzU3oO8jYdnXLY63xpcMFOud96i9
         cCdzTXbyEnQhTmOk/qmiHtnuRLrx7JuS4BbWok3OyKAds0Tb8n0FcAx6ZUtNasvvkoLu
         e18A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Y3EIUVQhIN3KleET8KnS1rf5JQdWeY6gqK4vPB8zLSU=;
        b=b0/PINNHxerkeTExn/5ftDFJvpWExnCPAJsjtF8bVhL2P4+4pV/Zn05BDtY0Qv5edO
         AUVPVzpUA738lp7d6ymzEAh8TNgPr0lSaiCpnp6SI5oVf6tmyDZJiEUMFN2Umycwanv5
         3OTPe3FW0Z2SuZXLnMO9dF5NfCxEHGyzPXFV9mkjsZC1oyFJnPV4FwENYqmChnHXRxud
         m20gAF7NJgbKtGKtDaSN1VWKdvw2KNzQ2H4rtJ9h/GSxVBeNuT3wBFEnvdPsJGeJwMTM
         65HzYOKclhP2maGajWg7YsqIGNS56wVJ0cNiMFm8yQiTrXcwQtm2Sydpgu+rqYn3RJGN
         UIdg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUO/DBgOzmA5K361PW7WsKMYy2ABj7G/FaBHxvkxN4xBlBI84gj
	/cR977rPlPx2uXK+Yc63ml4=
X-Google-Smtp-Source: APXvYqxS3abNnokE3MHKYU5TBKT0jB6fBaQm1Qmbw5xnpZyD4nExeDhWsX5cRi90W1bMApHZNTLK3w==
X-Received: by 2002:a9d:4e8b:: with SMTP id v11mr1877240otk.90.1565085682560;
        Tue, 06 Aug 2019 03:01:22 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:ac86:: with SMTP id v128ls706232oie.10.gmail; Tue, 06
 Aug 2019 03:01:22 -0700 (PDT)
X-Received: by 2002:aca:338a:: with SMTP id z132mr1246869oiz.54.1565085682308;
        Tue, 06 Aug 2019 03:01:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565085682; cv=none;
        d=google.com; s=arc-20160816;
        b=pKeHvmB7R5u4l091I/6PO/4BaXNX1qSR1NDut7hl57xSfiyOlbrDUcleZ9Ace3oNMO
         QwpmXSLpyNfZsLXdOF0I4YTwFo7Eq2gwB4wCBHMGLbxts3zXWSTrYEbl6w/R+NnLefRt
         igU5K+LOtCyTG5YYg82lyHw/COsRdVU/Z2bfvP+UakW9+qvodOAPWKBlHlk/HjBXKqol
         Tu1jAmJX2XvgTJ9k41TkwSYdUr0lJXvIzBTv7CYoeQTGCvgr/HPbctMq8AKZ7UUwCxrK
         dVDdboJb/ouQk7BBlWyREWDOjxm7odI5MCOMO2lpGUzM8OgE25h1I/QinTTuQtMkmu9l
         muXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=SpJEkhv16jwVLO2sSfJ7SapVMbBMCm5PIZfy4pO40/c=;
        b=aoADwjXo6W0fzD/xDxQpHHFU4PeDng4NWM/YlC2M3vxoiqSgEcMW0qlvTd4PQ9P9kt
         7KDIp6eMuVE1ABdJNfGNOQRy24G4g3S7F0nvg6DLRQgHszA8wT5YkM47PXCJgmd+6UZn
         bjwA2cLdb8NlQrwf6W3InOf2G5dqL4zy76wUqLzOfvzY3/Ezk0eiBBF5NC+8kmQsRgr5
         U9n/tKK9jcELKo4MOMGJA/DYxgubbc5A49LelEAWkIH+PpIG9bM/OWtJML4sWMrFUCBN
         ADZvuKMh53nratzxNrtEn01lR8dGlNBdjB/UWteHnHW0Ku2Tyq4pHoO+IC2qr5ahDY37
         67+Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=NcmXSNcy;
       spf=pass (google.com: domain of leo.yan@linaro.org designates 2607:f8b0:4864:20::b42 as permitted sender) smtp.mailfrom=leo.yan@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-yb1-xb42.google.com (mail-yb1-xb42.google.com. [2607:f8b0:4864:20::b42])
        by gmr-mx.google.com with ESMTPS id p6si4815049otk.5.2019.08.06.03.01.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Aug 2019 03:01:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of leo.yan@linaro.org designates 2607:f8b0:4864:20::b42 as permitted sender) client-ip=2607:f8b0:4864:20::b42;
Received: by mail-yb1-xb42.google.com with SMTP id i1so23097526ybo.4
        for <clang-built-linux@googlegroups.com>; Tue, 06 Aug 2019 03:01:22 -0700 (PDT)
X-Received: by 2002:a25:1a82:: with SMTP id a124mr1799776yba.160.1565085681984;
        Tue, 06 Aug 2019 03:01:21 -0700 (PDT)
Received: from localhost.localdomain (li1322-146.members.linode.com. [45.79.223.146])
        by smtp.gmail.com with ESMTPSA id h12sm18316685ywm.91.2019.08.06.03.01.12
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Tue, 06 Aug 2019 03:01:21 -0700 (PDT)
From: Leo Yan <leo.yan@linaro.org>
To: Russell King <linux@armlinux.org.uk>,
	Oleg Nesterov <oleg@redhat.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Paul Mackerras <paulus@samba.org>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>,
	"H. Peter Anvin" <hpa@zytor.com>,
	x86@kernel.org,
	Arnd Bergmann <arnd@arndb.de>,
	Alexei Starovoitov <ast@kernel.org>,
	Daniel Borkmann <daniel@iogearbox.net>,
	Martin KaFai Lau <kafai@fb.com>,
	Song Liu <songliubraving@fb.com>,
	Yonghong Song <yhs@fb.com>,
	"Naveen N. Rao" <naveen.n.rao@linux.vnet.ibm.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linuxppc-dev@lists.ozlabs.org,
	linux-arch@vger.kernel.org,
	netdev@vger.kernel.org,
	bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Masami Hiramatsu <mhiramat@kernel.org>
Cc: Leo Yan <leo.yan@linaro.org>
Subject: [PATCH v2 3/3] arm: Add support for function error injection
Date: Tue,  6 Aug 2019 18:00:15 +0800
Message-Id: <20190806100015.11256-4-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190806100015.11256-1-leo.yan@linaro.org>
References: <20190806100015.11256-1-leo.yan@linaro.org>
X-Original-Sender: leo.yan@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=NcmXSNcy;       spf=pass
 (google.com: domain of leo.yan@linaro.org designates 2607:f8b0:4864:20::b42
 as permitted sender) smtp.mailfrom=leo.yan@linaro.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Content-Type: text/plain; charset="UTF-8"
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

This patch implements arm specific functions regs_set_return_value() and
override_function_with_return() to support function error injection.

In the exception flow, it updates pt_regs::ARM_pc with pt_regs::ARM_lr
so can override the probed function return.

Signed-off-by: Leo Yan <leo.yan@linaro.org>
---
 arch/arm/Kconfig              |  1 +
 arch/arm/include/asm/ptrace.h |  5 +++++
 arch/arm/lib/Makefile         |  2 ++
 arch/arm/lib/error-inject.c   | 19 +++++++++++++++++++
 4 files changed, 27 insertions(+)
 create mode 100644 arch/arm/lib/error-inject.c

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 33b00579beff..2d3d44a037f6 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -77,6 +77,7 @@ config ARM
 	select HAVE_EXIT_THREAD
 	select HAVE_FAST_GUP if ARM_LPAE
 	select HAVE_FTRACE_MCOUNT_RECORD if !XIP_KERNEL
+	select HAVE_FUNCTION_ERROR_INJECTION if !THUMB2_KERNEL
 	select HAVE_FUNCTION_GRAPH_TRACER if !THUMB2_KERNEL && !CC_IS_CLANG
 	select HAVE_FUNCTION_TRACER if !XIP_KERNEL
 	select HAVE_GCC_PLUGINS
diff --git a/arch/arm/include/asm/ptrace.h b/arch/arm/include/asm/ptrace.h
index 91d6b7856be4..3b41f37b361a 100644
--- a/arch/arm/include/asm/ptrace.h
+++ b/arch/arm/include/asm/ptrace.h
@@ -89,6 +89,11 @@ static inline long regs_return_value(struct pt_regs *regs)
 	return regs->ARM_r0;
 }
 
+static inline void regs_set_return_value(struct pt_regs *regs, unsigned long rc)
+{
+	regs->ARM_r0 = rc;
+}
+
 #define instruction_pointer(regs)	(regs)->ARM_pc
 
 #ifdef CONFIG_THUMB2_KERNEL
diff --git a/arch/arm/lib/Makefile b/arch/arm/lib/Makefile
index b25c54585048..8f56484a7156 100644
--- a/arch/arm/lib/Makefile
+++ b/arch/arm/lib/Makefile
@@ -42,3 +42,5 @@ ifeq ($(CONFIG_KERNEL_MODE_NEON),y)
   CFLAGS_xor-neon.o		+= $(NEON_FLAGS)
   obj-$(CONFIG_XOR_BLOCKS)	+= xor-neon.o
 endif
+
+obj-$(CONFIG_FUNCTION_ERROR_INJECTION) += error-inject.o
diff --git a/arch/arm/lib/error-inject.c b/arch/arm/lib/error-inject.c
new file mode 100644
index 000000000000..2d696dc94893
--- /dev/null
+++ b/arch/arm/lib/error-inject.c
@@ -0,0 +1,19 @@
+// SPDX-License-Identifier: GPL-2.0
+
+#include <linux/error-injection.h>
+#include <linux/kprobes.h>
+
+void override_function_with_return(struct pt_regs *regs)
+{
+	/*
+	 * 'regs' represents the state on entry of a predefined function in
+	 * the kernel/module and which is captured on a kprobe.
+	 *
+	 * 'regs->ARM_lr' contains the the link register for the probed
+	 * function, when kprobe returns back from exception it will override
+	 * the end of probed function and directly return to the predefined
+	 * function's caller.
+	 */
+	instruction_pointer_set(regs, regs->ARM_lr);
+}
+NOKPROBE_SYMBOL(override_function_with_return);
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190806100015.11256-4-leo.yan%40linaro.org.
