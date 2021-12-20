Return-Path: <clang-built-linux+bncBDOILZ6ZXABBBOXMQGHAMGQENQRHJIY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x539.google.com (mail-ed1-x539.google.com [IPv6:2a00:1450:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id D42BD47A984
	for <lists+clang-built-linux@lfdr.de>; Mon, 20 Dec 2021 13:25:30 +0100 (CET)
Received: by mail-ed1-x539.google.com with SMTP id z8-20020a056402274800b003f8580bfb99sf2046781edd.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 20 Dec 2021 04:25:30 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1640003130; cv=pass;
        d=google.com; s=arc-20160816;
        b=acWJ75X1C4hwvJLRsDdb7jbcFrF/Yt1rBJG3oqJH1/+f7r62slIpUrhR/+p4Kck45H
         RgXcOZKtMCXORQ6bBOJNpR6tZH311g+5/jLi41AxMBuK2kVU2xllX31b0RBx7+qrOoRM
         U5mpTB8SE4Rdtyzo2ZuBsdv/w6mqKMP3HUkxzAxLkSvHhhqC9+dpHmSLvRva0BlddBab
         g5/JomtGf/6HKlJT/1HmVzFdFQ8VUMjqnqYiF/336ZmkBh04fPWScOk8AGuxOHE2AGuL
         6DNm+Y1Pe6QnkQyY7v9ekPn6tSFOY1EsnJXtP0TAYgYsMkmhdCLwqNv2GCMkJ1W6IToA
         LCDg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=vrQB5cCILA7u5uJPP+otr4m5i3REPgTnsFtcwGFm0TE=;
        b=0Hhy4QJjvKaplnBUnFMWw2bPIrGyod014SL/8UqzKDC/d3a3elhIfkOTl/C5uq1ZA1
         Ryf/ziDH8TTZ8TpCCQ7F5KgfMF2UJGePdgrTtChowAia+tv/hx4b9uKmdpKH4gabGN5O
         C6NqEjQMic2tPc0yPJx5U7yZuEF0efhpiPAlhrsabfa2ioAJz5ZyfJm2R6bWIeyDL8o8
         g+9qCTSBRheFRMoIRd8hIyqeeif5pVip+Txeu+9b7ajMzWDUo4y2vJ+P46seorRvv9/a
         uJdmUSwoFVFlfO2zQSqmAERd26PpgazFpf2My0gEBPrkljlji0wo3PchSJsj0Ck7o/ew
         epqA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=YVJMyKZ8;
       spf=pass (google.com: domain of anders.roxell@linaro.org designates 2a00:1450:4864:20::535 as permitted sender) smtp.mailfrom=anders.roxell@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vrQB5cCILA7u5uJPP+otr4m5i3REPgTnsFtcwGFm0TE=;
        b=iA6qyKiT0Sc3A1XovXG+seXu8nJz7MzmL2DymnYFRXlHXIa1nslkF3iZcwv2kd/f9J
         EfnKoUsDKz1imCVKTUjNnWIvCk89DmxBVkTvDuVOzUojwule7HOmcqePDLGfrTfptSLI
         +VMe0ZT0e9j3nRA5rgWZJxH0fQmQMOx7unaMFaUPOCGZ4+lIzuG8duxFJbEZPEhctIKX
         fEV16BhhBXjWGYQqcB4a6hzoZmw70+Sa5H+vni2yhGPEfbya/berEYa4W8ormPudbjMD
         00bbi4Z6c7qE33JLmxWJR+62gs7otDiE6BHe0lsX5EuhSdYmqJpHD+kToU52R3rJUXGY
         7GNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vrQB5cCILA7u5uJPP+otr4m5i3REPgTnsFtcwGFm0TE=;
        b=SI4AqmDe94mQ+CB30XcAXOdRwwykFMbG35UlWo1qx9INLqQ1tdD6I4h3kLloL5aEvt
         4gRuNKGaKxw0xksv0rVzB9QWXys2ut0Rltm6YvRXdtCgqYhnd0TwObTu3rDyqh4FYeyp
         7mtdLh2d5YOWyu/T2XRIXwjFVxu5sXq+rVMrsqAzox3MEkfTRItg+Al0g8rNFjiDyrJW
         Cq3Zor6AXulAU1vU9bB6HglomEcEqfnFjeNCdijQhKn1i5fvslnjWyY08wpecGhIZ3AU
         6dDUDIcNesT509khnSqfwulIjxdHYWRnSjl6hGmc6a0Nqhi7JVXRhKx31MOLV8pHO2Cm
         AAWQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531ZMFR5eFU2IgoNrEwAM++bbgOahw4ub4N+F5D6a66wKQBkC2Zy
	IO7dzt+VIsW2gA2SbyZoo+E=
X-Google-Smtp-Source: ABdhPJw1XafN9QC09xYYHmUU5Ifhyw7Rrsf1WrQyEbYFaIH9pg4vkhmu27htK6+xsepfG73DX7m23g==
X-Received: by 2002:a05:6402:128e:: with SMTP id w14mr13797099edv.161.1640003130582;
        Mon, 20 Dec 2021 04:25:30 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6402:4246:: with SMTP id g6ls878032edb.1.gmail; Mon, 20
 Dec 2021 04:25:29 -0800 (PST)
X-Received: by 2002:a05:6402:2692:: with SMTP id w18mr15256761edd.220.1640003129718;
        Mon, 20 Dec 2021 04:25:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1640003129; cv=none;
        d=google.com; s=arc-20160816;
        b=qRRYTKgCBcqv9eHcyyN4LXmxS/EV03iBzw8PSCBcZd5OQDh6qNIa0RnkLEWLxL2bRL
         5pyd7HMu/ngD4ZgBIHcYwftaWqWdChBGzCBXhFMrZFw023MypuX2ffd693bcshIS5sVH
         nKCRdiB5FiLOg21+ifUVkPSMe/9kwi8+oAXaXF5dL2ASpFjL/UlSkkqooSmlcafKZfFE
         3ExhpVOwCbqjf8G0nJ3r45PctkSZOswaem4HV6StJ44WrzHcv35hCBOeiwC3CmvMMbRI
         3JlZvPk04hrtihb0SdDoJXm8kO6OcZ1ZeIV9eVtdrWU4Z+5zCdGi6Oomau+TGK/DSEgk
         mdCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=y9p66fbbXmmdoe66+VpQbolcPKBKj6fnJ63vNfrT6S4=;
        b=kuOLo60VLDpZifwnYhGGBirzMi56vTwl1nVkGSJg0aSpFVihOoO5IRx27V8IOwOqOa
         TOvHEtqBFCQWeaxqxalA2Ca/hHLRBkuZ/X8bo/Je2thb6plMFAz90IdcANMMj9n2k091
         DkQDSxaaePoGRffhreaARNR8779BcwlS7Cg1Zt7m29vaJSyOP4FJQNOj+7zulvLLE+BI
         ikjcoqOvydgV/1pbxdK1NIKBnMNZh8NeukM9SvUkmw0xKKxQkVXvUU/I6NA65mU0PF/a
         6tyuEOhLZLnZtJ4ATHyQGPzFIhUR9Gsu+eJUvyzE/PO7cUk5xcwSK5dS96xUmZ3w9VlO
         XdCA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=YVJMyKZ8;
       spf=pass (google.com: domain of anders.roxell@linaro.org designates 2a00:1450:4864:20::535 as permitted sender) smtp.mailfrom=anders.roxell@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com. [2a00:1450:4864:20::535])
        by gmr-mx.google.com with ESMTPS id bo19si529789edb.2.2021.12.20.04.25.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Dec 2021 04:25:29 -0800 (PST)
Received-SPF: pass (google.com: domain of anders.roxell@linaro.org designates 2a00:1450:4864:20::535 as permitted sender) client-ip=2a00:1450:4864:20::535;
Received: by mail-ed1-x535.google.com with SMTP id bm14so24696575edb.5
        for <clang-built-linux@googlegroups.com>; Mon, 20 Dec 2021 04:25:29 -0800 (PST)
X-Received: by 2002:aa7:d818:: with SMTP id v24mr5403691edq.298.1640003129502;
        Mon, 20 Dec 2021 04:25:29 -0800 (PST)
Received: from localhost (c-9b28e555.07-21-73746f28.bbcust.telenor.se. [85.229.40.155])
        by smtp.gmail.com with ESMTPSA id sd23sm1027245ejc.155.2021.12.20.04.25.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Dec 2021 04:25:29 -0800 (PST)
From: Anders Roxell <anders.roxell@linaro.org>
To: stable@vger.kernel.org
Cc: linux-kernel@vger.kernel.org,
	woojung.huh@microchip.com,
	UNGLinuxDriver@microchip.com,
	davem@davemloft.net,
	netdev@vger.kernel.org,
	linux-usb@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	ulli.kroll@googlemail.com,
	linux@armlinux.org.uk,
	linux-arm-kernel@lists.infradead.org,
	amitkarwar@gmail.com,
	nishants@marvell.com,
	gbhat@marvell.com,
	huxinming820@gmail.com,
	kvalo@codeaurora.org,
	linux-wireless@vger.kernel.org,
	rostedt@goodmis.org,
	mingo@redhat.com,
	dmitry.torokhov@gmail.com,
	ndesaulniers@google.com,
	nathan@kernel.org,
	linux-input@vger.kernel.org,
	Stefan Agner <stefan@agner.ch>,
	Russell King <rmk+kernel@armlinux.org.uk>,
	Anders Roxell <anders.roxell@linaro.org>
Subject: [PATCH 4.14 5/6] ARM: 8788/1: ftrace: remove old mcount support
Date: Mon, 20 Dec 2021 13:25:05 +0100
Message-Id: <20211220122506.3631672-6-anders.roxell@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20211220122506.3631672-1-anders.roxell@linaro.org>
References: <20211220122506.3631672-1-anders.roxell@linaro.org>
MIME-Version: 1.0
X-Original-Sender: anders.roxell@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=YVJMyKZ8;       spf=pass
 (google.com: domain of anders.roxell@linaro.org designates
 2a00:1450:4864:20::535 as permitted sender) smtp.mailfrom=anders.roxell@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

From: Stefan Agner <stefan@agner.ch>

commit d3c61619568c88d48eccd5e74b4f84faa1440652 upstream.

Commit cafa0010cd51 ("Raise the minimum required gcc version to 4.6")
raised the minimum GCC version to 4.6. Old mcount is only required for
GCC versions older than 4.4.0. Hence old mcount support can be dropped
too.

Signed-off-by: Stefan Agner <stefan@agner.ch>
Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
Signed-off-by: Anders Roxell <anders.roxell@linaro.org>
---
 arch/arm/Kconfig.debug         |  5 ---
 arch/arm/include/asm/ftrace.h  |  3 --
 arch/arm/kernel/armksyms.c     |  3 --
 arch/arm/kernel/entry-ftrace.S | 75 ++--------------------------------
 arch/arm/kernel/ftrace.c       | 51 -----------------------
 5 files changed, 4 insertions(+), 133 deletions(-)

diff --git a/arch/arm/Kconfig.debug b/arch/arm/Kconfig.debug
index d6cf18a0cb0a..55ce348b693e 100644
--- a/arch/arm/Kconfig.debug
+++ b/arch/arm/Kconfig.debug
@@ -53,11 +53,6 @@ config ARM_UNWIND
 config FRAME_POINTER
 	bool
 
-config OLD_MCOUNT
-	bool
-	depends on FUNCTION_TRACER && FRAME_POINTER
-	default y
-
 config DEBUG_USER
 	bool "Verbose user fault messages"
 	help
diff --git a/arch/arm/include/asm/ftrace.h b/arch/arm/include/asm/ftrace.h
index faeb6b1c0089..15bd9af13497 100644
--- a/arch/arm/include/asm/ftrace.h
+++ b/arch/arm/include/asm/ftrace.h
@@ -16,9 +16,6 @@ extern void __gnu_mcount_nc(void);
 
 #ifdef CONFIG_DYNAMIC_FTRACE
 struct dyn_arch_ftrace {
-#ifdef CONFIG_OLD_MCOUNT
-	bool	old_mcount;
-#endif
 #ifdef CONFIG_ARM_MODULE_PLTS
 	struct module *mod;
 #endif
diff --git a/arch/arm/kernel/armksyms.c b/arch/arm/kernel/armksyms.c
index 5266fd9ad6b4..62c62c651766 100644
--- a/arch/arm/kernel/armksyms.c
+++ b/arch/arm/kernel/armksyms.c
@@ -168,9 +168,6 @@ EXPORT_SYMBOL(_find_next_bit_be);
 #endif
 
 #ifdef CONFIG_FUNCTION_TRACER
-#ifdef CONFIG_OLD_MCOUNT
-EXPORT_SYMBOL(mcount);
-#endif
 EXPORT_SYMBOL(__gnu_mcount_nc);
 #endif
 
diff --git a/arch/arm/kernel/entry-ftrace.S b/arch/arm/kernel/entry-ftrace.S
index efcd9f25a14b..0be69e551a64 100644
--- a/arch/arm/kernel/entry-ftrace.S
+++ b/arch/arm/kernel/entry-ftrace.S
@@ -15,23 +15,8 @@
  * start of every function.  In mcount, apart from the function's address (in
  * lr), we need to get hold of the function's caller's address.
  *
- * Older GCCs (pre-4.4) inserted a call to a routine called mcount like this:
- *
- *	bl	mcount
- *
- * These versions have the limitation that in order for the mcount routine to
- * be able to determine the function's caller's address, an APCS-style frame
- * pointer (which is set up with something like the code below) is required.
- *
- *	mov     ip, sp
- *	push    {fp, ip, lr, pc}
- *	sub     fp, ip, #4
- *
- * With EABI, these frame pointers are not available unless -mapcs-frame is
- * specified, and if building as Thumb-2, not even then.
- *
- * Newer GCCs (4.4+) solve this problem by introducing a new version of mcount,
- * with call sites like:
+ * Newer GCCs (4.4+) solve this problem by using a version of mcount with call
+ * sites like:
  *
  *	push	{lr}
  *	bl	__gnu_mcount_nc
@@ -46,17 +31,10 @@
  * allows it to be clobbered in subroutines and doesn't use it to hold
  * parameters.)
  *
- * When using dynamic ftrace, we patch out the mcount call by a "mov r0, r0"
- * for the mcount case, and a "pop {lr}" for the __gnu_mcount_nc case (see
- * arch/arm/kernel/ftrace.c).
+ * When using dynamic ftrace, we patch out the mcount call by a "pop {lr}"
+ * instead of the __gnu_mcount_nc call (see arch/arm/kernel/ftrace.c).
  */
 
-#ifndef CONFIG_OLD_MCOUNT
-#if (__GNUC__ < 4 || (__GNUC__ == 4 && __GNUC_MINOR__ < 4))
-#error Ftrace requires CONFIG_FRAME_POINTER=y with GCC older than 4.4.0.
-#endif
-#endif
-
 .macro mcount_adjust_addr rd, rn
 	bic	\rd, \rn, #1		@ clear the Thumb bit if present
 	sub	\rd, \rd, #MCOUNT_INSN_SIZE
@@ -209,51 +187,6 @@ ftrace_graph_call\suffix:
 	mcount_exit
 .endm
 
-#ifdef CONFIG_OLD_MCOUNT
-/*
- * mcount
- */
-
-.macro mcount_enter
-	stmdb	sp!, {r0-r3, lr}
-.endm
-
-.macro mcount_get_lr reg
-	ldr	\reg, [fp, #-4]
-.endm
-
-.macro mcount_exit
-	ldr	lr, [fp, #-4]
-	ldmia	sp!, {r0-r3, pc}
-.endm
-
-ENTRY(mcount)
-#ifdef CONFIG_DYNAMIC_FTRACE
-	stmdb	sp!, {lr}
-	ldr	lr, [fp, #-4]
-	ldmia	sp!, {pc}
-#else
-	__mcount _old
-#endif
-ENDPROC(mcount)
-
-#ifdef CONFIG_DYNAMIC_FTRACE
-ENTRY(ftrace_caller_old)
-	__ftrace_caller _old
-ENDPROC(ftrace_caller_old)
-#endif
-
-#ifdef CONFIG_FUNCTION_GRAPH_TRACER
-ENTRY(ftrace_graph_caller_old)
-	__ftrace_graph_caller
-ENDPROC(ftrace_graph_caller_old)
-#endif
-
-.purgem mcount_enter
-.purgem mcount_get_lr
-.purgem mcount_exit
-#endif
-
 /*
  * __gnu_mcount_nc
  */
diff --git a/arch/arm/kernel/ftrace.c b/arch/arm/kernel/ftrace.c
index 1a5edcfb0306..2fb63ece5c85 100644
--- a/arch/arm/kernel/ftrace.c
+++ b/arch/arm/kernel/ftrace.c
@@ -47,30 +47,6 @@ void arch_ftrace_update_code(int command)
 	stop_machine(__ftrace_modify_code, &command, NULL);
 }
 
-#ifdef CONFIG_OLD_MCOUNT
-#define OLD_MCOUNT_ADDR	((unsigned long) mcount)
-#define OLD_FTRACE_ADDR ((unsigned long) ftrace_caller_old)
-
-#define	OLD_NOP		0xe1a00000	/* mov r0, r0 */
-
-static unsigned long ftrace_nop_replace(struct dyn_ftrace *rec)
-{
-	return rec->arch.old_mcount ? OLD_NOP : NOP;
-}
-
-static unsigned long adjust_address(struct dyn_ftrace *rec, unsigned long addr)
-{
-	if (!rec->arch.old_mcount)
-		return addr;
-
-	if (addr == MCOUNT_ADDR)
-		addr = OLD_MCOUNT_ADDR;
-	else if (addr == FTRACE_ADDR)
-		addr = OLD_FTRACE_ADDR;
-
-	return addr;
-}
-#else
 static unsigned long ftrace_nop_replace(struct dyn_ftrace *rec)
 {
 	return NOP;
@@ -80,7 +56,6 @@ static unsigned long adjust_address(struct dyn_ftrace *rec, unsigned long addr)
 {
 	return addr;
 }
-#endif
 
 int ftrace_arch_code_modify_prepare(void)
 {
@@ -151,15 +126,6 @@ int ftrace_update_ftrace_func(ftrace_func_t func)
 	}
 #endif
 
-#ifdef CONFIG_OLD_MCOUNT
-	if (!ret) {
-		pc = (unsigned long)&ftrace_call_old;
-		new = ftrace_call_replace(pc, (unsigned long)func, true);
-
-		ret = ftrace_modify_code(pc, 0, new, false);
-	}
-#endif
-
 	return ret;
 }
 
@@ -233,16 +199,6 @@ int ftrace_make_nop(struct module *mod,
 	new = ftrace_nop_replace(rec);
 	ret = ftrace_modify_code(ip, old, new, true);
 
-#ifdef CONFIG_OLD_MCOUNT
-	if (ret == -EINVAL && addr == MCOUNT_ADDR) {
-		rec->arch.old_mcount = true;
-
-		old = ftrace_call_replace(ip, adjust_address(rec, addr), true);
-		new = ftrace_nop_replace(rec);
-		ret = ftrace_modify_code(ip, old, new, true);
-	}
-#endif
-
 	return ret;
 }
 
@@ -320,13 +276,6 @@ static int ftrace_modify_graph_caller(bool enable)
 #endif
 
 
-#ifdef CONFIG_OLD_MCOUNT
-	if (!ret)
-		ret = __ftrace_modify_caller(&ftrace_graph_call_old,
-					     ftrace_graph_caller_old,
-					     enable);
-#endif
-
 	return ret;
 }
 
-- 
2.34.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20211220122506.3631672-6-anders.roxell%40linaro.org.
