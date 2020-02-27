Return-Path: <clang-built-linux+bncBCRKNY4WZECBBMXM4DZAKGQECZ6H6VA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33a.google.com (mail-ot1-x33a.google.com [IPv6:2607:f8b0:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id EBB0C172A43
	for <lists+clang-built-linux@lfdr.de>; Thu, 27 Feb 2020 22:35:47 +0100 (CET)
Received: by mail-ot1-x33a.google.com with SMTP id t17sf481447otk.22
        for <lists+clang-built-linux@lfdr.de>; Thu, 27 Feb 2020 13:35:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582839346; cv=pass;
        d=google.com; s=arc-20160816;
        b=1JAdjtL76c56zDSHDqhu6nozpiBfgtYfjeRaLpT1og57UjIvts85vJ8Bb9MKi648l5
         iOLc6qefOt7GnnO5nlYnVWdrfxkVjp5m+RsgJ+fXB5fLfwwRSQuZ7k53SK+I2Vz9zZx1
         Nn2xIauL4qnTcuEQagIS50sI48sgcHAGqh8hFEDAfuqg/bUwbWD4eY994zPY22ESYXi5
         0wLCqOriy9dR9GNSwHoXkS80piGFPr7Zk7sffyaCZnFtSDmd7wnjGelsHhCTkKgLPxKV
         11KUbpSPFUuqdcTNpXmDXaeDbYrjFFhASaw9YLOpGG7PbnAl4GYpPxmxr3dp/tzZePnh
         VieQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:from:cc:mime-version:references
         :in-reply-to:message-id:date:subject:sender:dkim-signature;
        bh=NGJD2/yNrkh0oVvkJsPf+Z5F+cMVUpG+viAGMmojbgk=;
        b=rteRCaiB7rKM1Ww4VMgy4Y1+2tXUFDts53tiw0U8frCJM5eIzR/56ZoxuH332SLLwn
         FH8QxrWZuJIjFDzYFvfqbxothhcv8nUtP6WfQvxJCat0P/pi9ELm+lexOz6+RuwTCaJG
         rUT5h4nPeJMYPHLvKVp1b+5l86wbXDiASZsZwwJDkYJXhfNGaAJ96syNdoM8E7eweykz
         DGcME7gMAybiDRljWKpX2sRARjjuTJteopYvCmmyMlDqy6e5g4TC7Ojiw52+nKbIUbuC
         L86ZHyLGoZm9s+ddwsRD2JY89v/joVynPEs6jZhG0FzGaYPuKus7TvQE2bTk0OtTtOic
         2s4w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@dabbelt-com.20150623.gappssmtp.com header.s=20150623 header.b=02iHtvHC;
       spf=pass (google.com: domain of palmer@dabbelt.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=palmer@dabbelt.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:date:message-id:in-reply-to:references:mime-version
         :cc:from:to:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NGJD2/yNrkh0oVvkJsPf+Z5F+cMVUpG+viAGMmojbgk=;
        b=iyPDUL5NRoGXkArtxdROw/t3rMobnhTpQZDn7whODI6pgUx89s1CJc+FqtvxHlSLBH
         4filt4EoarhrcmOyIp9lg+0Cz9uq7itwweRQVpTSMNMXCOKbj8zcWAA2aT72kFQpzhOr
         1W6Wx+Fz6VY+VO7GMflbHedfucSKSncrgu/znubBc49zaxa/z99MPFQLGL/hxLdhMUT+
         8K3o0kHKaE5Xre1ypfZuFwYlaJ+Zi3VfqeB+5aPFSxm6UWIPmVCc4yoJMu3pPTsx/9pm
         QHvRHTfi61j3VcsMa4VF+fmANirT6+jdtC6W8wD8jZWetZo7mF1ExxW0AQlaFSvt3GcU
         g1Ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:date:message-id:in-reply-to
         :references:mime-version:cc:from:to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NGJD2/yNrkh0oVvkJsPf+Z5F+cMVUpG+viAGMmojbgk=;
        b=VYjYTfUEMG2rz0bBUP5pSrQRkge+jdcM9Js5vZDvKqfHrLZbqvEz/FLdaGgtXe2Hpl
         CtsFUDcX/NtcYt3ODc8qQIWTwg612bPR0ojgNTdC/ii3nAGFj/6LDqYRGLXN7i9fPY+c
         TrM5BZ3f1Ux5vH5OxedoHaltHHXSeTC8qT02XZoZgfeZX5ecN3tYwNDN4x8/8O/LnYrr
         FtiHx4PJ6/ow36APHV8PhYp7L8OHzg7iMts/k1F4AIZdVIWS1fk5eE8bCaKt7Gp6JdRJ
         A1hjQhwnHQ3p3wpnwFp3kfLvE6Lp0KaSS0TfXPHZitzM/G+txOlenyhhauvvVBCdVfxP
         Opxg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAX3s8qlibVZXBz67Brzu4M/DyirxgvdtMb4OxhWDryZnT5pIfss
	axVKeTlRxZOuhn+xYu4HW0A=
X-Google-Smtp-Source: APXvYqzoimAc64asd5xK5Qr4svqOaoUKYhTC0rm5fxZeqD+aYfBKMGDpoMJud68C75Wi/bduZFLXDQ==
X-Received: by 2002:aca:5844:: with SMTP id m65mr847606oib.136.1582839346392;
        Thu, 27 Feb 2020 13:35:46 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:5a87:: with SMTP id w7ls304344oth.1.gmail; Thu, 27 Feb
 2020 13:35:46 -0800 (PST)
X-Received: by 2002:a9d:138:: with SMTP id 53mr785898otu.334.1582839345954;
        Thu, 27 Feb 2020 13:35:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582839345; cv=none;
        d=google.com; s=arc-20160816;
        b=I93Dz6rNV+TK3X75wFF02Gsyd71dp2fmLATr89csZB/19FGWt73tLdh1U6U3ONlzZp
         DDevUjTaeRmFeYV/Q4fgBEc4sjJ9SbeTn6PF0hwaP3vEhbp7+k8NZJjvFbwxREHeEkN6
         9Bt2/gXjGUkuECq2oTB6ZbJeVZZS3vInSSDukYyO4+VHlW2U6Fr8e1/kJl9Y0z0Ii0rU
         HIMKBzbJPlacNGk6vxgLH3V/uZFEy4gzVBRMWR4gzV66s1uC9OvdY/p7mX2uCgTMWupd
         s8S6/2bTL+/Eueql49KmHtY5RE1Ovsv2PoWVwRb92CcUqaYQc7KSZkR+lESfVURC7sgR
         TBug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:from:cc:content-transfer-encoding:mime-version:references
         :in-reply-to:message-id:date:subject:dkim-signature;
        bh=AcocSUGKmr1hGuXmIYHI/PJN7pt2xJxuohE1KdhBYJU=;
        b=jVX7uyhoTw1lKjKHOhrBtO+Id49mxgfPFIsYUoHIRkh2gqF43HkEqcpnVPsvseJq48
         j8CQ+5YKVhtGsPsntie2qi/CwUGEBxa4WvuPT8dmkRuu6krvp+hhxHef12GoPe6bLdZE
         rkoYCRfy0DsIDPRrjlgZCIYbME/6M2uE1qA1pNwxMyLuNkJplblSqmFYgoysEqxqNN4Y
         oybIiwE5/l68D5SrbwEl80CNsMne4VS7s9Fj+bvyk0G95bUuVhW7LfIdArd1/SpRLLx5
         GI0ybpwymSTEJjPpC6GgkyCyENV0bbnUAtXqBPaRYv6kgvAlh6L+dpffYw8YetVJxZrL
         rZBg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@dabbelt-com.20150623.gappssmtp.com header.s=20150623 header.b=02iHtvHC;
       spf=pass (google.com: domain of palmer@dabbelt.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=palmer@dabbelt.com
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id h199si58300oib.2.2020.02.27.13.35.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Feb 2020 13:35:45 -0800 (PST)
Received-SPF: pass (google.com: domain of palmer@dabbelt.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id p11so322443plq.10
        for <clang-built-linux@googlegroups.com>; Thu, 27 Feb 2020 13:35:45 -0800 (PST)
X-Received: by 2002:a17:90a:c691:: with SMTP id n17mr1019733pjt.41.1582839344878;
        Thu, 27 Feb 2020 13:35:44 -0800 (PST)
Received: from localhost ([2620:0:1000:2514:23a5:d584:6a92:3e3c])
        by smtp.gmail.com with ESMTPSA id u6sm7709711pgj.7.2020.02.27.13.35.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Feb 2020 13:35:44 -0800 (PST)
Subject: [PATCH 2/3] RISC-V: Inline the assembly register save/restore macros
Date: Thu, 27 Feb 2020 13:34:49 -0800
Message-Id: <20200227213450.87194-3-palmer@dabbelt.com>
X-Mailer: git-send-email 2.25.1.481.gfbce0eb801-goog
In-Reply-To: <20200227213450.87194-1-palmer@dabbelt.com>
References: <20200227213450.87194-1-palmer@dabbelt.com>
MIME-Version: 1.0
Cc: clang-built-linux@googlegroups.com, kernel-team@android.com,
  Palmer Dabbelt <palmerdabbelt@google.com>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: linux-riscv@lists.infradead.org
X-Original-Sender: palmer@dabbelt.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@dabbelt-com.20150623.gappssmtp.com header.s=20150623
 header.b=02iHtvHC;       spf=pass (google.com: domain of palmer@dabbelt.com
 designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=palmer@dabbelt.com
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

From: Palmer Dabbelt <palmerdabbelt@google.com>

These are only used once, and when reading the code I've always found them to
be more of a headache than a benefit.  While they were never worth removing
before, LLVM's integrated assembler doesn't support LOCAL so rather that trying
to figure out how to refactor the macros it seems saner to just inline them.

Signed-off-by: Palmer Dabbelt <palmerdabbelt@google.com>
---
 arch/riscv/kernel/entry.S | 143 ++++++++++++++++----------------------
 1 file changed, 61 insertions(+), 82 deletions(-)

diff --git a/arch/riscv/kernel/entry.S b/arch/riscv/kernel/entry.S
index bad4d85b5e91..f2e8e7c8089d 100644
--- a/arch/riscv/kernel/entry.S
+++ b/arch/riscv/kernel/entry.S
@@ -13,17 +13,11 @@
 #include <asm/thread_info.h>
 #include <asm/asm-offsets.h>
 
-	.text
-	.altmacro
-
-/*
- * Prepares to enter a system call or exception by saving all registers to the
- * stack.
- */
-	.macro SAVE_ALL
-	LOCAL _restore_kernel_tpsp
-	LOCAL _save_context
+#if !IS_ENABLED(CONFIG_PREEMPTION)
+.set resume_kernel, restore_all
+#endif
 
+ENTRY(handle_exception)
 	/*
 	 * If coming from userspace, preserve the user thread pointer and load
 	 * the kernel thread pointer.  If we came from the kernel, the scratch
@@ -90,77 +84,6 @@ _save_context:
 	REG_S s3, PT_BADADDR(sp)
 	REG_S s4, PT_CAUSE(sp)
 	REG_S s5, PT_TP(sp)
-	.endm
-
-/*
- * Prepares to return from a system call or exception by restoring all
- * registers from the stack.
- */
-	.macro RESTORE_ALL
-	REG_L a0, PT_STATUS(sp)
-	/*
-	 * The current load reservation is effectively part of the processor's
-	 * state, in the sense that load reservations cannot be shared between
-	 * different hart contexts.  We can't actually save and restore a load
-	 * reservation, so instead here we clear any existing reservation --
-	 * it's always legal for implementations to clear load reservations at
-	 * any point (as long as the forward progress guarantee is kept, but
-	 * we'll ignore that here).
-	 *
-	 * Dangling load reservations can be the result of taking a trap in the
-	 * middle of an LR/SC sequence, but can also be the result of a taken
-	 * forward branch around an SC -- which is how we implement CAS.  As a
-	 * result we need to clear reservations between the last CAS and the
-	 * jump back to the new context.  While it is unlikely the store
-	 * completes, implementations are allowed to expand reservations to be
-	 * arbitrarily large.
-	 */
-	REG_L  a2, PT_EPC(sp)
-	REG_SC x0, a2, PT_EPC(sp)
-
-	csrw CSR_STATUS, a0
-	csrw CSR_EPC, a2
-
-	REG_L x1,  PT_RA(sp)
-	REG_L x3,  PT_GP(sp)
-	REG_L x4,  PT_TP(sp)
-	REG_L x5,  PT_T0(sp)
-	REG_L x6,  PT_T1(sp)
-	REG_L x7,  PT_T2(sp)
-	REG_L x8,  PT_S0(sp)
-	REG_L x9,  PT_S1(sp)
-	REG_L x10, PT_A0(sp)
-	REG_L x11, PT_A1(sp)
-	REG_L x12, PT_A2(sp)
-	REG_L x13, PT_A3(sp)
-	REG_L x14, PT_A4(sp)
-	REG_L x15, PT_A5(sp)
-	REG_L x16, PT_A6(sp)
-	REG_L x17, PT_A7(sp)
-	REG_L x18, PT_S2(sp)
-	REG_L x19, PT_S3(sp)
-	REG_L x20, PT_S4(sp)
-	REG_L x21, PT_S5(sp)
-	REG_L x22, PT_S6(sp)
-	REG_L x23, PT_S7(sp)
-	REG_L x24, PT_S8(sp)
-	REG_L x25, PT_S9(sp)
-	REG_L x26, PT_S10(sp)
-	REG_L x27, PT_S11(sp)
-	REG_L x28, PT_T3(sp)
-	REG_L x29, PT_T4(sp)
-	REG_L x30, PT_T5(sp)
-	REG_L x31, PT_T6(sp)
-
-	REG_L x2,  PT_SP(sp)
-	.endm
-
-#if !IS_ENABLED(CONFIG_PREEMPTION)
-.set resume_kernel, restore_all
-#endif
-
-ENTRY(handle_exception)
-	SAVE_ALL
 
 	/*
 	 * Set the scratch register to 0, so that if a recursive exception
@@ -298,7 +221,63 @@ resume_userspace:
 	csrw CSR_SCRATCH, tp
 
 restore_all:
-	RESTORE_ALL
+	REG_L a0, PT_STATUS(sp)
+	/*
+	 * The current load reservation is effectively part of the processor's
+	 * state, in the sense that load reservations cannot be shared between
+	 * different hart contexts.  We can't actually save and restore a load
+	 * reservation, so instead here we clear any existing reservation --
+	 * it's always legal for implementations to clear load reservations at
+	 * any point (as long as the forward progress guarantee is kept, but
+	 * we'll ignore that here).
+	 *
+	 * Dangling load reservations can be the result of taking a trap in the
+	 * middle of an LR/SC sequence, but can also be the result of a taken
+	 * forward branch around an SC -- which is how we implement CAS.  As a
+	 * result we need to clear reservations between the last CAS and the
+	 * jump back to the new context.  While it is unlikely the store
+	 * completes, implementations are allowed to expand reservations to be
+	 * arbitrarily large.
+	 */
+	REG_L  a2, PT_EPC(sp)
+	REG_SC x0, a2, PT_EPC(sp)
+
+	csrw CSR_STATUS, a0
+	csrw CSR_EPC, a2
+
+	REG_L x1,  PT_RA(sp)
+	REG_L x3,  PT_GP(sp)
+	REG_L x4,  PT_TP(sp)
+	REG_L x5,  PT_T0(sp)
+	REG_L x6,  PT_T1(sp)
+	REG_L x7,  PT_T2(sp)
+	REG_L x8,  PT_S0(sp)
+	REG_L x9,  PT_S1(sp)
+	REG_L x10, PT_A0(sp)
+	REG_L x11, PT_A1(sp)
+	REG_L x12, PT_A2(sp)
+	REG_L x13, PT_A3(sp)
+	REG_L x14, PT_A4(sp)
+	REG_L x15, PT_A5(sp)
+	REG_L x16, PT_A6(sp)
+	REG_L x17, PT_A7(sp)
+	REG_L x18, PT_S2(sp)
+	REG_L x19, PT_S3(sp)
+	REG_L x20, PT_S4(sp)
+	REG_L x21, PT_S5(sp)
+	REG_L x22, PT_S6(sp)
+	REG_L x23, PT_S7(sp)
+	REG_L x24, PT_S8(sp)
+	REG_L x25, PT_S9(sp)
+	REG_L x26, PT_S10(sp)
+	REG_L x27, PT_S11(sp)
+	REG_L x28, PT_T3(sp)
+	REG_L x29, PT_T4(sp)
+	REG_L x30, PT_T5(sp)
+	REG_L x31, PT_T6(sp)
+
+	REG_L x2,  PT_SP(sp)
+
 #ifdef CONFIG_RISCV_M_MODE
 	mret
 #else
-- 
2.25.1.481.gfbce0eb801-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200227213450.87194-3-palmer%40dabbelt.com.
