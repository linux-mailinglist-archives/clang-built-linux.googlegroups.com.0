Return-Path: <clang-built-linux+bncBDOILZ6ZXABBBH6D6KGQMGQEDLCOPNY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x238.google.com (mail-lj1-x238.google.com [IPv6:2a00:1450:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id 51730478E09
	for <lists+clang-built-linux@lfdr.de>; Fri, 17 Dec 2021 15:41:36 +0100 (CET)
Received: by mail-lj1-x238.google.com with SMTP id b3-20020a2ebc03000000b0021ffe75b14csf751773ljf.5
        for <lists+clang-built-linux@lfdr.de>; Fri, 17 Dec 2021 06:41:36 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1639752096; cv=pass;
        d=google.com; s=arc-20160816;
        b=hKALgS4zIeK7rblc50MsuTf8foifkcdupmDrYZfmE0NfdpqPfisuCrWR0M0mnWXYv0
         TTGliG1buofgPBqBOFro6zzVEeOI6Wrm57e3MiV5vydovOnjnugvpgmiRI8gPCHCJUL2
         HD02AoVMSy67H6ISaeUsWgSZSuc4gs6tUuv/f4zBqBFVQREXoUbEEQBlDQDsFilVMieb
         +8mP4nq+p2Inms3FI3eY9e5ZYcYsNXacMTNFO+/Ex1UX9j5rH1v+7G2qewN3J5RdPOMj
         Zl6D1XqjpRvBxIb3cmpvHxmhS5Pf7l7xemthHJChNGZwJ+bHOTKjSVVR7Dx5Unfb65SQ
         y8tw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=691SvlYwtBF8XRgJfczauYmauNvlkwUSdlVEJTszi1U=;
        b=eY+HxKS6/tnjLH4trqa1aBvkLk8ROF8mAUC1enphsLLiYh+NppXRq17prsR69SDpK8
         mJqpJNHKnoXJGdqg580g4tJeOgtAgrEkRk+lP/A90D20I9dAVZQlCshXRHgGHMC9KrLd
         F9vFf/uuk8bB13r42+7hWhlwuAhf+GmPJU4HH2LkxuN+qkc2T0N4pyd1enhBknk2Wb1b
         0dgVR5wRMZRO+6hoRH1fwsW/o9UiwjGiA/1YIJU6QoAepevmE+DMOMbnE97cZKxnQRBF
         RpXFafZ4pDaA5gCv+4PYoZQ1qsV92RjCkGe3/CD5RcJr45O69SnljyCKEZO7kWSjvNvT
         o78Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=NJkp+DXt;
       spf=pass (google.com: domain of anders.roxell@linaro.org designates 2a00:1450:4864:20::532 as permitted sender) smtp.mailfrom=anders.roxell@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=691SvlYwtBF8XRgJfczauYmauNvlkwUSdlVEJTszi1U=;
        b=LnPobKrYC34c7o2JjRTSwkYGhZ4+eIXkRqoGucqHliDYKLMnEF3cpz94XVqvceLuGy
         h4lBbeAYk5xVM8HK8q0Dag6gpdVbOanOGMERqObSrGO4RJU6r1v+Cy95SM/YwGFKnT+i
         xVhPGB7liul0z5K3CcoFkWkPbTPRD5qWSqiJ44TjjZakWQDGb14eAvAP1K3RvfYSeBmR
         Rwm9UE3EiUPn+uLUmpw72+MMR5FQKyIUz8PUkAuplVS40AZH88o3kVXzvxyJfGluGj2D
         OFAPWWJnppai0Caq8GTIfviAXyOGtj/t1dEKPLcHyaWqGxU0QAqIUTAIh+8yamwLOCKw
         og6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=691SvlYwtBF8XRgJfczauYmauNvlkwUSdlVEJTszi1U=;
        b=hLT+G2dd0hs28szVVx1tJrjOnLBB9hErEvX2oJk066OGVJTOvIR9Wfo8op7qfk7Vhz
         jXAcBvQdqPg+z4diLD9EymGN1yQZZJUXSR3j8nLg60Y9GcgY76ze1PuuVcIqs8vwBkJQ
         JBTlA7D2xT3kjL38sN7VbfT80CvQwx3mjvcFzfTcIgyB3VEksqj0uOhZoGPkSrP/qVVj
         /rlQN6qFRg2qDM8i4ltuLgMw1jyJD9MbLUzXNQIZhYNTavrA4RO70sINqqJjKE/sQUMJ
         yNesUnYCZ6qPY63f7Jx/pUtSxPxApEneiXe8Hn5RbRKsh8aWwcurHcKIEe2QKkfCtzdF
         7VVA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532azBUWYQF+iAdco9AIfbC8/sf/dXfRj9w4gkOo6BGWKF50167L
	u8MtPIeOTlYCORFxYFjGqcQ=
X-Google-Smtp-Source: ABdhPJyLQFgyoRXwGKfVe0Q9KLMMNzoQeuaDOHqI+WesMkwSPlD9It7Wv+syZ3KDNA55VfADG4/Mkg==
X-Received: by 2002:ac2:5547:: with SMTP id l7mr2168395lfk.324.1639752095817;
        Fri, 17 Dec 2021 06:41:35 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:3d9e:: with SMTP id k30ls107620lfv.1.gmail; Fri, 17
 Dec 2021 06:41:34 -0800 (PST)
X-Received: by 2002:a05:6512:b0e:: with SMTP id w14mr3054328lfu.433.1639752094829;
        Fri, 17 Dec 2021 06:41:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1639752094; cv=none;
        d=google.com; s=arc-20160816;
        b=wAZM2FAxHC9ACI6Zg1C7jWvLzd0QKnxqk3Ou1u+IjWEs5Wk/N/o7F7Hp2KuBk4JdNT
         6onwz/gMfgVXOT6u8RY7KMCXQ6z5HDLuFsHp9AVaxeS+1yDHZZXz9pBdaorZdo4WpzA3
         4yh0uzVI9xm6laqjiXnKXnZI1tt7+y9MLrGQ8uh1BctJp4f+1Z5mpDKq4QzkE/Onmhl8
         +QnRO4mCWHfIhcYvI3m3IvTg9xP1UMLAuVVwgT6ZiF2GYC84dEZ5yvw6gyYNIIGOpP4J
         i1ubEDqp/RRzDovhFI1qGl+QZ15ZAjRWRoAwqYvsiwrHKfnTYaRhakOAUiEr68Eij+5j
         M3sA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=tenpg2klmPhgEs2Ujlw2sMASOylotv9CeOtcpmyywJ8=;
        b=MAOXnxpsER2BLfWrwR/RGI//KdGBh3vTbyM6eH8dvqIL/45wJpkV8YFIQcnnqHKYvI
         HVlVRN3EQuI0doCAdnbh+nH+17SbwOdgSOTc6b1X+HmIb7LEanoCFtZ5y1d2F/JYCEe6
         Xw3aYdJQeIeXwrTdFbtd8nIrM6s+BaBHM+wYmCHFgZUa13gTrr7W+fg4Q2o+meFOcgA4
         qA08CZ8LQundKd+vQM1HCt8K1/KCCU7o7oFZ0cgAKlgAKeJXUHFMiot7DxWcI6XpExM7
         PbHdMOtWCh1TVa5JMwqTeQRklVlFctexoqpwgCgiWdcRIzO6iMQ+801/Cgi2oVpmjZDs
         EosQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=NJkp+DXt;
       spf=pass (google.com: domain of anders.roxell@linaro.org designates 2a00:1450:4864:20::532 as permitted sender) smtp.mailfrom=anders.roxell@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com. [2a00:1450:4864:20::532])
        by gmr-mx.google.com with ESMTPS id e15si554173ljg.0.2021.12.17.06.41.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Dec 2021 06:41:34 -0800 (PST)
Received-SPF: pass (google.com: domain of anders.roxell@linaro.org designates 2a00:1450:4864:20::532 as permitted sender) client-ip=2a00:1450:4864:20::532;
Received: by mail-ed1-x532.google.com with SMTP id z29so8602288edl.7
        for <clang-built-linux@googlegroups.com>; Fri, 17 Dec 2021 06:41:34 -0800 (PST)
X-Received: by 2002:a05:6402:42d4:: with SMTP id i20mr3227602edc.281.1639752094417;
        Fri, 17 Dec 2021 06:41:34 -0800 (PST)
Received: from localhost (c-9b28e555.07-21-73746f28.bbcust.telenor.se. [85.229.40.155])
        by smtp.gmail.com with ESMTPSA id zh8sm1223377ejb.21.2021.12.17.06.41.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Dec 2021 06:41:33 -0800 (PST)
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
Subject: [PATCH 4.19 5/6] ARM: 8788/1: ftrace: remove old mcount support
Date: Fri, 17 Dec 2021 15:41:18 +0100
Message-Id: <20211217144119.2538175-6-anders.roxell@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20211217144119.2538175-1-anders.roxell@linaro.org>
References: <20211217144119.2538175-1-anders.roxell@linaro.org>
MIME-Version: 1.0
X-Original-Sender: anders.roxell@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=NJkp+DXt;       spf=pass
 (google.com: domain of anders.roxell@linaro.org designates
 2a00:1450:4864:20::532 as permitted sender) smtp.mailfrom=anders.roxell@linaro.org;
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
index 01c760929c9e..9d363399cb35 100644
--- a/arch/arm/Kconfig.debug
+++ b/arch/arm/Kconfig.debug
@@ -82,11 +82,6 @@ config ARM_UNWIND
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
index 783fbb4de5f9..8fa2dc21d332 100644
--- a/arch/arm/kernel/armksyms.c
+++ b/arch/arm/kernel/armksyms.c
@@ -167,9 +167,6 @@ EXPORT_SYMBOL(_find_next_bit_be);
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
index 51839250e49a..12b6da56f88d 100644
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
 
@@ -305,13 +261,6 @@ static int ftrace_modify_graph_caller(bool enable)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20211217144119.2538175-6-anders.roxell%40linaro.org.
