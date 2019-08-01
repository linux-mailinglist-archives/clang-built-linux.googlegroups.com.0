Return-Path: <clang-built-linux+bncBC7JPD5NQEBBBAXDRXVAKGQEKE36PBQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33d.google.com (mail-ot1-x33d.google.com [IPv6:2607:f8b0:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FD207E641
	for <lists+clang-built-linux@lfdr.de>; Fri,  2 Aug 2019 01:10:59 +0200 (CEST)
Received: by mail-ot1-x33d.google.com with SMTP id b25sf40046291otp.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 01 Aug 2019 16:10:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564701058; cv=pass;
        d=google.com; s=arc-20160816;
        b=rqC5hdjJHFuElf2D1RhxcZDB02oDQjbBXbkZC3uKlXVuxDRYX4MdogkD+5AVlzh7WY
         kp+N+1nZSJM3IVeGgg18GQ1f/Xu+7mn7sxC6YIoDd2XYFf5ypo36lDScKWFXFVmNq4/b
         rI5U4avv/kjdvJPj2buJs6CjdHtib2BimbZ6bDEm916R86ca2KhJbakxFNRT0sYterPj
         MkWdAu4nfWbtHZwYA1Id9LPcRHZ8qTBBUsgjzXgEqNL0FfiE4EpBWkt1IL4iM+RjEVXn
         7wd209J/pWy9hdljyvfc8TMqQpyAHwUCy1dWLbr9M1Lcxvoa/5Qh4ePjJNSSCkOQ5VWs
         5+Xw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=SPxSiwogAWW7ANlNXztTo2TVBjGP+WPoojegxtqpLOo=;
        b=iEJ/s/lCDvA6m0+MmjTgJhKUuADp+SjNuEETWnObJLmEmNPne/VM/56zaNYWiEFyCF
         HyppF7JPvEJnKycZ4drJeiDKzERX6udmT9FmdkIIZx0v9LIGrOLFbludn3d/UOqFJXsZ
         M7DDhRMmRbkFyOgJtGYATup/7y24QV3Oc88HJrpcaxrB5fikUo3QfkGleZW0P08n9ZRT
         8wRhZT+q3ZtiXul3FjZVDhYxLRC7spzAx+csm41p3wL8bB4fUjqdBp4w9jyHfRmmSB7J
         j3kLk15z9yXAUst9BMZg2aoDPZPGbRjxEU4h1G+0Pg/+tnrMa/699nUu86ripuqZHrP8
         5BcA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=mNeODb68;
       spf=pass (google.com: domain of 3gxfdxqukewinhuckgoogle.comclang-built-linuxgooglegroups.com@flex--nhuck.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3gXFDXQUKEWINHUCKGOOGLE.COMCLANG-BUILT-LINUXGOOGLEGROUPS.COM@flex--nhuck.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=SPxSiwogAWW7ANlNXztTo2TVBjGP+WPoojegxtqpLOo=;
        b=HApiGSU99haILnUitirfvAvhIpZp9suAwgLPJGWHEwJ1vkBq1xm3Br0jsAzhUhwyuK
         WyvVNTMyrdfDI4K0+aLUctdBXoyyNMoCcjJdNVbK22pNuMV3v2fe+XEuoNN4Yw7Ltoag
         2XBwKhzZnuhPgrI2ps7MEYvoqCEkNZjSKsXK1jWd2sPaZrVK6XifmmydO8tuynSociWY
         /BD7s+Dw6MDLk95v3ZRvjVfmWjYl98WvWh25H0BZQCU8pBTuO8i88tqQl7Gk4P9DSpJf
         sTqZL32yOc/SyV/dRAywAt2hiG5KsYTRjTDuW8J43lL3nhsaZN3qcby90ZIICSKPHEYB
         dihQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=SPxSiwogAWW7ANlNXztTo2TVBjGP+WPoojegxtqpLOo=;
        b=W4hSIt1kaUqNDqprw+OrJgzgP91e0igkyQU178IZ3vPGQrVZ9/5b0LlX8/RvCYEznC
         3sIsi1rV/lbA9NoO72U1ryA60jd+tNXwfLnwNcwL6UqUb+UHEvgipalZVGBgW83eeYeQ
         kmmtjsqumycG+j5RW2nVqjsvNIYmqnIBBbbeGnwoCIcZjsMHJrOcHaR8CL8dRuNZImnR
         lWZM951HWwhZMv+sha1P2hkqJ5p1vIaxnODxQBTQGJy0n4GwVNIAIMBy3JDPZunqnuIe
         D0w/Ty+nAI15HPdwQmxov9nFAusZLTVy/8ACcbY3yXRYvqM/BarJ8QD9pXBuYYbYt0Hr
         qvGA==
X-Gm-Message-State: APjAAAVmGT8FBxOh2P2Uj33hjj7wFV/cTiHj55oFGm03v9HxgvPfrB0n
	F/kqVf+8eSqeQvKMurji5fw=
X-Google-Smtp-Source: APXvYqyO4zqT+oLywAMqoRXBZd5FjtSLSXpH3fx+KsCP65E1hmUz90WktSKkSlABgTDOMvLaCqgZMw==
X-Received: by 2002:a9d:73c4:: with SMTP id m4mr4568648otk.369.1564701058057;
        Thu, 01 Aug 2019 16:10:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:2083:: with SMTP id y3ls13363848otq.3.gmail; Thu,
 01 Aug 2019 16:10:57 -0700 (PDT)
X-Received: by 2002:a9d:6644:: with SMTP id q4mr92833875otm.308.1564701057795;
        Thu, 01 Aug 2019 16:10:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564701057; cv=none;
        d=google.com; s=arc-20160816;
        b=tmaGT/M73ncH2Q37V08WkhuNJsLS/JXhYZoOGqkTQK9fbR1e7lfezblhGmcL4M2nBV
         /JJt1tRfkUlqhXMVeGnGSyI2g0GNN758Uk7bC0k5fo5R8lHp3yNYoQYz+LN7FQ65zyUz
         YkL0kbImnXd/+JCk7pTDAhJWQW9Scih0aQ0KHdt1JGcfjAEw5Wi0O/KLxFXJ3XJLxl6+
         zpok+iKiba8EIGvvlyEy39nI73OaUrLSC7Q6G+SN8elU88oANtmeFzOSpDSCYd4WMfQI
         qljBBkkScsBp0WDbqFNlYEXgfMEaFmfw3uy+Ljsp23N/gtzdnutEs2vziZJPLSm0+4gR
         f9lA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=ffo0BEX4jn42Yj5bUFNrkZDBWd6yUTSShv6ZHrslX3E=;
        b=reGgLuxIh/SVLuHpAqoq5CViHv1I+PWwzt2isDtSD+wwF0tMgLQdjfvRH2V8+9pHwz
         40Z+nRcEZ3w+OW9meoz0wkO/7woDB+9EvN9Wes36zYXBBDQiZ3WuyTUsedCz0CXZivEV
         4F88wPUnbU1310s35TFHnapv91D8fIB/DiWMFfuTQW2Wq1QEkWAgaZdMtEfrWKTE4YMG
         dGLYUGZgRNqXVLRYGbWjVg9lA3hBShv1cx+MZknpFkjl4Evm05Goy9trkGzUnIIm78MO
         fo7fwfIr/iZMyBxIrJ9sSvPwXEfPiSrAwBFW4+euWmzJxARrdTd0bfhJcqLp8MUyVZEI
         fa9A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=mNeODb68;
       spf=pass (google.com: domain of 3gxfdxqukewinhuckgoogle.comclang-built-linuxgooglegroups.com@flex--nhuck.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3gXFDXQUKEWINHUCKGOOGLE.COMCLANG-BUILT-LINUXGOOGLEGROUPS.COM@flex--nhuck.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x849.google.com (mail-qt1-x849.google.com. [2607:f8b0:4864:20::849])
        by gmr-mx.google.com with ESMTPS id d8si3104934oth.2.2019.08.01.16.10.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Aug 2019 16:10:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3gxfdxqukewinhuckgoogle.comclang-built-linuxgooglegroups.com@flex--nhuck.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) client-ip=2607:f8b0:4864:20::849;
Received: by mail-qt1-x849.google.com with SMTP id e22so510328qtp.9
        for <clang-built-linux@googlegroups.com>; Thu, 01 Aug 2019 16:10:57 -0700 (PDT)
X-Received: by 2002:ac8:524a:: with SMTP id y10mr94383841qtn.100.1564701057204;
 Thu, 01 Aug 2019 16:10:57 -0700 (PDT)
Date: Thu,  1 Aug 2019 16:10:46 -0700
Message-Id: <20190801231046.105022-1-nhuck@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.22.0.770.g0f2c4a37fd-goog
Subject: [RFC PATCH] ARM: UNWINDER_FRAME_POINTER implementation for Clang
From: "'Nathan Huckleberry' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: linux@armlinux.org.uk
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Nathan Huckleberry <nhuck@google.com>, clang-built-linux@googlegroups.com, 
	Tri Vo <trong@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: nhuck@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=mNeODb68;       spf=pass
 (google.com: domain of 3gxfdxqukewinhuckgoogle.comclang-built-linuxgooglegroups.com@flex--nhuck.bounces.google.com
 designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3gXFDXQUKEWINHUCKGOOGLE.COMCLANG-BUILT-LINUXGOOGLEGROUPS.COM@flex--nhuck.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nathan Huckleberry <nhuck@google.com>
Reply-To: Nathan Huckleberry <nhuck@google.com>
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

The stackframe setup when compiled with clang is different.
Since the stack unwinder expects the gcc stackframe setup it
fails to print backtraces. This patch adds support for the
clang stackframe setup.

Cc: clang-built-linux@googlegroups.com
Suggested-by: Tri Vo <trong@google.com>
Signed-off-by: Nathan Huckleberry <nhuck@google.com>
---
 arch/arm/Kconfig.debug   |   4 +-
 arch/arm/Makefile        |   2 +-
 arch/arm/lib/backtrace.S | 134 ++++++++++++++++++++++++++++++++++++---
 3 files changed, 128 insertions(+), 12 deletions(-)

diff --git a/arch/arm/Kconfig.debug b/arch/arm/Kconfig.debug
index 85710e078afb..92fca7463e21 100644
--- a/arch/arm/Kconfig.debug
+++ b/arch/arm/Kconfig.debug
@@ -56,7 +56,7 @@ choice
 
 config UNWINDER_FRAME_POINTER
 	bool "Frame pointer unwinder"
-	depends on !THUMB2_KERNEL && !CC_IS_CLANG
+	depends on !THUMB2_KERNEL
 	select ARCH_WANT_FRAME_POINTERS
 	select FRAME_POINTER
 	help
@@ -1872,7 +1872,7 @@ config DEBUG_UNCOMPRESS
 	  When this option is set, the selected DEBUG_LL output method
 	  will be re-used for normal decompressor output on multiplatform
 	  kernels.
-	  
+
 
 config UNCOMPRESS_INCLUDE
 	string
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index c3624ca6c0bc..a593d9c4e18a 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -36,7 +36,7 @@ KBUILD_CFLAGS	+= $(call cc-option,-mno-unaligned-access)
 endif
 
 ifeq ($(CONFIG_FRAME_POINTER),y)
-KBUILD_CFLAGS	+=-fno-omit-frame-pointer -mapcs -mno-sched-prolog
+KBUILD_CFLAGS	+=-fno-omit-frame-pointer $(call cc-option,-mapcs,) $(call cc-option,-mno-sched-prolog,)
 endif
 
 ifeq ($(CONFIG_CPU_BIG_ENDIAN),y)
diff --git a/arch/arm/lib/backtrace.S b/arch/arm/lib/backtrace.S
index 1d5210eb4776..fd64eec9f6ae 100644
--- a/arch/arm/lib/backtrace.S
+++ b/arch/arm/lib/backtrace.S
@@ -14,10 +14,7 @@
 @ fp is 0 or stack frame
 
 #define frame	r4
-#define sv_fp	r5
-#define sv_pc	r6
 #define mask	r7
-#define offset	r8
 
 ENTRY(c_backtrace)
 
@@ -25,7 +22,8 @@ ENTRY(c_backtrace)
 		ret	lr
 ENDPROC(c_backtrace)
 #else
-		stmfd	sp!, {r4 - r8, lr}	@ Save an extra register so we have a location...
+		stmfd   sp!, {r4 - r8, fp, lr}	@ Save an extra register
+						@ so we have a location..
 		movs	frame, r0		@ if frame pointer is zero
 		beq	no_frame		@ we have no stack frames
 
@@ -35,11 +33,119 @@ ENDPROC(c_backtrace)
  THUMB(		orreq	mask, #0x03		)
 		movne	mask, #0		@ mask for 32-bit
 
-1:		stmfd	sp!, {pc}		@ calculate offset of PC stored
-		ldr	r0, [sp], #4		@ by stmfd for this CPU
-		adr	r1, 1b
-		sub	offset, r0, r1
 
+#if defined(CONFIG_CC_IS_CLANG)
+/*
+ * Clang does not store pc or sp in function prologues
+ * 		so we don't know exactly where the function
+ * 		starts.
+ * We can treat the current frame's lr as the saved pc and the
+ * 		preceding frame's lr as the lr, but we can't
+ * 		trace the most recent call.
+ * Inserting a false stack frame allows us to reference the
+ * 		function called last in the stacktrace.
+ * If the call instruction was a bl we can look at the callers
+ * 		branch instruction to calculate the saved pc.
+ * We can recover the pc in most cases, but in cases such as
+ * 		calling function pointers we cannot. In this
+ * 		case, default to using the lr. This will be
+ * 		some address in the function, but will not
+ * 		be the function start.
+ * Unfortunately due to the stack frame layout we can't dump
+ *              r0 - r3, but these are less frequently saved.
+ *
+ * Stack frame layout:
+ *             <larger addresses>
+ *             saved lr
+ *    frame => saved fp
+ *             optionally saved caller registers (r4 - r10)
+ *             optionally saved arguments (r0 - r3)
+ *             <top of stack frame>
+ *             <smaller addressses>
+ *
+ * Functions start with the following code sequence:
+ * corrected pc =>  stmfd sp!, {..., fp, lr}
+ *		    add fp, sp, #x
+ *		    stmfd sp!, {r0 - r3} (optional)
+ */
+#define sv_fp	r5
+#define sv_pc	r6
+#define sv_lr   r8
+		add     frame, sp, #20          @ switch to false frame
+for_each_frame:	tst	frame, mask		@ Check for address exceptions
+		bne	no_frame
+
+1001:		ldr	sv_pc, [frame, #4]	@ get saved 'pc'
+1002:		ldr	sv_fp, [frame, #0]	@ get saved fp
+
+		teq     sv_fp, #0               @ make sure next frame exists
+		beq     no_frame
+
+1003:		ldr     sv_lr, [sv_fp, #4]      @ get saved lr from next frame
+
+		//try to find function start
+		ldr     r0, [sv_lr, #-4]        @ get call instruction
+		ldr     r3, .Ldsi+8
+		and     r2, r3, r0              @ is this a bl call
+		teq     r2, r3
+		bne     finished_setup          @ give up if it's not
+		and     r0, #0xffffff           @ get call offset 24-bit int
+		lsl     r0, r0, #8              @ sign extend offset
+		asr     r0, r0, #8
+		ldr     sv_pc, [sv_fp, #4]      @ get lr address
+		add     sv_pc, sv_pc, #-4	@ get call instruction address
+		add     sv_pc, sv_pc, #8        @ take care of prefetch
+		add     sv_pc, sv_pc, r0, lsl #2 @ find function start
+		b       finished_setup
+
+finished_setup:
+
+		bic	sv_pc, sv_pc, mask	@ mask PC/LR for the mode
+
+1004:		mov     r0, sv_pc
+
+		mov     r1, sv_lr
+		mov	r2, frame
+		bic	r1, r1, mask		@ mask PC/LR for the mode
+		bl	dump_backtrace_entry
+
+1005:		ldr	r1, [sv_pc, #0]		@ if stmfd sp!, {..., fp, lr}
+		ldr	r3, .Ldsi		@ instruction exists,
+		teq	r3, r1, lsr #11
+		ldr     r0, [frame]             @ locals are stored in
+						@ the preceding frame
+		subeq	r0, r0, #4
+		bleq	dump_backtrace_stm	@ dump saved registers
+
+		teq	sv_fp, #0		@ zero saved fp means
+		beq	no_frame		@ no further frames
+
+		cmp	sv_fp, frame		@ next frame must be
+		mov	frame, sv_fp		@ above the current frame
+		bhi	for_each_frame
+
+1006:		adr	r0, .Lbad
+		mov	r1, frame
+		bl	printk
+no_frame:	ldmfd	sp!, {r4 - r8, fp, pc}
+ENDPROC(c_backtrace)
+		.pushsection __ex_table,"a"
+		.align	3
+		.long	1001b, 1006b
+		.long	1002b, 1006b
+		.long	1003b, 1006b
+		.long	1004b, 1006b
+		.popsection
+
+.Lbad:		.asciz	"Backtrace aborted due to bad frame pointer <%p>\n"
+		.align
+.Ldsi:		.word	0xe92d4800 >> 11	@ stmfd sp!, {... fp, lr}
+		.word	0xe92d0000 >> 11	@ stmfd sp!, {}
+		.word   0x0b000000              @ bl if these bits are set
+
+ENDPROC(c_backtrace)
+
+#else
 /*
  * Stack frame layout:
  *             optionally saved caller registers (r4 - r10)
@@ -55,6 +161,15 @@ ENDPROC(c_backtrace)
  *                  stmfd sp!, {r0 - r3} (optional)
  * corrected pc =>  stmfd sp!, {..., fp, ip, lr, pc}
  */
+#define sv_fp	r5
+#define sv_pc	r6
+#define offset	r8
+
+1:		stmfd	sp!, {pc}		@ calculate offset of PC stored
+		ldr	r0, [sp], #4		@ by stmfd for this CPU
+		adr	r1, 1b
+		sub	offset, r0, r1
+
 for_each_frame:	tst	frame, mask		@ Check for address exceptions
 		bne	no_frame
 
@@ -98,7 +213,7 @@ for_each_frame:	tst	frame, mask		@ Check for address exceptions
 1006:		adr	r0, .Lbad
 		mov	r1, frame
 		bl	printk
-no_frame:	ldmfd	sp!, {r4 - r8, pc}
+no_frame:	ldmfd	sp!, {r4 - r8, fp, pc}
 ENDPROC(c_backtrace)
 		
 		.pushsection __ex_table,"a"
@@ -115,3 +230,4 @@ ENDPROC(c_backtrace)
 		.word	0xe92d0000 >> 11	@ stmfd sp!, {}
 
 #endif
+#endif
-- 
2.22.0.770.g0f2c4a37fd-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190801231046.105022-1-nhuck%40google.com.
