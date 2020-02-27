Return-Path: <clang-built-linux+bncBCRKNY4WZECBBMPM4DZAKGQEDZMXPNA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3b.google.com (mail-yw1-xc3b.google.com [IPv6:2607:f8b0:4864:20::c3b])
	by mail.lfdr.de (Postfix) with ESMTPS id D0B31172A42
	for <lists+clang-built-linux@lfdr.de>; Thu, 27 Feb 2020 22:35:46 +0100 (CET)
Received: by mail-yw1-xc3b.google.com with SMTP id r10sf1610408ywa.11
        for <lists+clang-built-linux@lfdr.de>; Thu, 27 Feb 2020 13:35:46 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582839345; cv=pass;
        d=google.com; s=arc-20160816;
        b=ELM71/XVqOzblc2YYnjWuBSth5idqnclrsd9Fnfdk1fOXaPIkV3D4f9zYUwCA1LY0A
         7RtvgAhxNsp0uOvE9YBjo1kzM5/gv4tQqr34MgotmFioDkzvJWdoAusR4AtIt73ZogXK
         1thHeR+9i/7vu7z2gmNByVxEyP2zw+Cypsu3rMrFhcFx8tMDbOTn/x2MS46/Zwv2r2AA
         2+PeILNoBa5wnAuQkRdEfzV1Vlk2Nnd2x/XzBqqlT6iNKh2EhBf/s7RJWGl6SnQOzgmp
         9p9A6db7IOQHjDae0bujSFApn/iKGp48cDtWpsJFIciaR771CQixGqiuPssCcMoPaHFD
         fnAg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:from:cc:mime-version:references
         :in-reply-to:message-id:date:subject:sender:dkim-signature;
        bh=wQHKI04CAgNj3qTZxnUWC15AwkhVVgPDAAw4dYz20Jc=;
        b=Q0/wQhT71JtZGmEUUVk2W0l/9DtYdlGJj8yQX5gQY8t5vZXYpbTAQMdq4w8/3O+nRi
         bM0BeH61J3CRc7Y37R95Me6m5ldzlXcaweGaSJpgn1Gu7xV+HQD7eVx/g3yC0/vKMEnh
         bK+NqytJ2L2b9I0pIHH7bYTlAAyAF7BFETSU039dNi579Vg2V1VdKxV0Q8mWJPJ7zLml
         MSA+nMHRRfCwidO2R/M5gqRgd/8nScfLoiVy/Tn1M52Dcc51SsN2p5dYZPzRVqRXashv
         wxK01+Pd9vK6qh5M5a0kfabIVl1REI4ea3om0Jtektdevu0jJoosxdA597CN6+ft+6qF
         GRpQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@dabbelt-com.20150623.gappssmtp.com header.s=20150623 header.b=BxCCNCvy;
       spf=pass (google.com: domain of palmer@dabbelt.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=palmer@dabbelt.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:date:message-id:in-reply-to:references:mime-version
         :cc:from:to:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wQHKI04CAgNj3qTZxnUWC15AwkhVVgPDAAw4dYz20Jc=;
        b=VbTq5/OSZwEjjZBPurHlvfERin4Fc4ztxeaLABP5nzDTCzkaVm2UoayHJ71XHCcFU1
         LXrcP0KPls32qn1fYFh0sFwZ3Rc56cyjuFm8lsP+yPRuwfbPsTeSQiwKwav88QsBUCxv
         +ISimVlBnIBvJ5noOeTxat6HQgNrfv0pUmnZ+goiYmmNEwAcYJGCgUnmDshhtVtJ3Hmu
         AADliNvtsbsbm2SU6lbchIVL1EQA2yPj50nGGtE3C9Z1w75Fmv2N7PnvkDlAoaMW80/d
         a6EC3R8WneEXIVVBzujKJI+sHVVO3miKyDPJXzU8A0VeVu7xEzkYh3m5cmWq3ka2Lyhx
         5mIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:date:message-id:in-reply-to
         :references:mime-version:cc:from:to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wQHKI04CAgNj3qTZxnUWC15AwkhVVgPDAAw4dYz20Jc=;
        b=KLnqXa9zZvMAQvsShgjE/Z1USECwFr0XQhRGko4gziTVnMtledaNCUYhiAYiCdiAiR
         tWEsd8WKmP1zIu8gSir8xRXSF0XKFgyTCsakcTLqE8NMl4ORlJH4TyDWDQ3ksOf+cfiV
         YaDGLIPCEKj8uJMJSp8caZw/jHtf1YqyWCH9PSdOZozRJmCy1fdw7VPybj6tK1bxhvxJ
         4LHHZaW6y0J8SwB8a6Rq25k+tEmuIEz+qPK8s6cBYcOv5Syz5MtACA1RBT/Ei34LFJM0
         jw7sukv/O6V6gURW4N5xk0aRAoOkZqEazWnL+szHFD689v5gsVKLETQQEOh6X4mxmgtl
         T+SQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUu1qMmFfhQZEMvOZ2p2npGyQI5ok9iy/y0wWq+3c5KKRWd8BU8
	H701myxXZwJuNbokY96aLVg=
X-Google-Smtp-Source: APXvYqzMtDMW7yQqTF6fvSzMasgABvZV1mVIOAmjgrN+AtjrtHguYGxfbG+O/iHaoq5JtYF/uVKW9A==
X-Received: by 2002:a25:9d91:: with SMTP id v17mr718394ybp.212.1582839345595;
        Thu, 27 Feb 2020 13:35:45 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:d851:: with SMTP id p78ls200091ybg.3.gmail; Thu, 27 Feb
 2020 13:35:45 -0800 (PST)
X-Received: by 2002:a25:e90e:: with SMTP id n14mr714563ybd.418.1582839345150;
        Thu, 27 Feb 2020 13:35:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582839345; cv=none;
        d=google.com; s=arc-20160816;
        b=EgtUXTow5omyR68uWmTth7P0LOmhas9om+gTzzB8kt6AlEbsa7+6CikYi5R0i/iNXj
         XJBOUKzSWRoN7qtdZQWnTZyAcYPsl0Na+ljj7OsdszG3q77G+bEv/JWf/vyWh5GwBUsV
         h4mFbRzqEi/1psQA7IpZzblPZOlla3AVqX6CYvMPNJrDGvaHoxfabV9qdxcbNsbIEjYa
         VMxJP8s2/7ca/sIerxpeuzcJP0ZQ9D1fXha3VJlAW2jabRdhFAzWSsvcfqha1iZKFktv
         7CXillr2zDQy9HhY9PversIUYyrRSqJ3Id8Apor36qhGflRe1OkUMEmyw79yIFsI6DMn
         kZcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:from:cc:content-transfer-encoding:mime-version:references
         :in-reply-to:message-id:date:subject:dkim-signature;
        bh=2nKrAkc7nEDUcUx0/lfg7h3wWZF++DSMjw3PSOPi658=;
        b=vNoBz9KcvS45zz91EapFlq9c2M9E2gsLYYxjEm/EcsuWa/dCkZbbZ0zzrbmwR3Qy9Q
         5fyHdP9ZIZkIQE+rk1ocUdSdwcT0BPOOC+9imXlvSTGLkAv+zIaPHxMhykZwh/odmV7E
         fHd8oXu/skyGq01GE5TxvvfkrQDXy89vQnZVO5IYnwXP0JRLD0j/dfJa/NRZa6wgspIC
         VOkXr2N8LFOH8TtsZ5vJAoHiBWL2iN7J5qNJg/7KuF7bDAx41Jzv/xVVlU0dUjqhQnK+
         f1KshxyOJkgTijd+CUI6imj6QaaaJng5qOpCVA0ZBCjN04/lOa14eodj5hUmmpvLnR4T
         JaSA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@dabbelt-com.20150623.gappssmtp.com header.s=20150623 header.b=BxCCNCvy;
       spf=pass (google.com: domain of palmer@dabbelt.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=palmer@dabbelt.com
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id n6si82105ywa.4.2020.02.27.13.35.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Feb 2020 13:35:45 -0800 (PST)
Received-SPF: pass (google.com: domain of palmer@dabbelt.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Received: by mail-pl1-x642.google.com with SMTP id y1so328847plp.7
        for <clang-built-linux@googlegroups.com>; Thu, 27 Feb 2020 13:35:45 -0800 (PST)
X-Received: by 2002:a17:902:9b8a:: with SMTP id y10mr772783plp.114.1582839343678;
        Thu, 27 Feb 2020 13:35:43 -0800 (PST)
Received: from localhost ([2620:0:1000:2514:23a5:d584:6a92:3e3c])
        by smtp.gmail.com with ESMTPSA id a22sm8187624pfk.108.2020.02.27.13.35.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Feb 2020 13:35:43 -0800 (PST)
Subject: [PATCH 1/3] RISC-V: Stop relying on GCC's register allocator's hueristics
Date: Thu, 27 Feb 2020 13:34:48 -0800
Message-Id: <20200227213450.87194-2-palmer@dabbelt.com>
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
 header.b=BxCCNCvy;       spf=pass (google.com: domain of palmer@dabbelt.com
 designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=palmer@dabbelt.com
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

GCC allows users to hint to the register allocation that a variable should be
placed in a register by using a syntax along the lines of

    function(...) {
        register long in_REG __asm__("REG");
    }

We've abused this a bit throughout the RISC-V port to access fixed registers
directly as C variables.  In practice it's never going to blow up because GCC
isn't going to allocate these registers, but it's not a well defined syntax so
we really shouldn't be relying upon this.  Luckily there is a very similar but
well defined syntax that allows us to still access these registers directly as
C variables, which is to simply declare the register variables globally.  For
fixed variables this doesn't change the ABI.

LLVM disallows this ambiguous syntax, so this isn't just strictly a formatting
change.

Signed-off-by: Palmer Dabbelt <palmerdabbelt@google.com>
---
 arch/riscv/include/asm/current.h | 5 +++--
 arch/riscv/kernel/process.c      | 5 +++--
 arch/riscv/kernel/stacktrace.c   | 7 ++++---
 3 files changed, 10 insertions(+), 7 deletions(-)

diff --git a/arch/riscv/include/asm/current.h b/arch/riscv/include/asm/current.h
index dd973efe5d7c..1de233d8e8de 100644
--- a/arch/riscv/include/asm/current.h
+++ b/arch/riscv/include/asm/current.h
@@ -17,6 +17,8 @@
 
 struct task_struct;
 
+register struct task_struct *riscv_current_is_tp __asm__("tp");
+
 /*
  * This only works because "struct thread_info" is at offset 0 from "struct
  * task_struct".  This constraint seems to be necessary on other architectures
@@ -26,8 +28,7 @@ struct task_struct;
  */
 static __always_inline struct task_struct *get_current(void)
 {
-	register struct task_struct *tp __asm__("tp");
-	return tp;
+	return riscv_current_is_tp;
 }
 
 #define current get_current()
diff --git a/arch/riscv/kernel/process.c b/arch/riscv/kernel/process.c
index 817cf7b0974c..610c11e91606 100644
--- a/arch/riscv/kernel/process.c
+++ b/arch/riscv/kernel/process.c
@@ -22,6 +22,8 @@
 #include <asm/switch_to.h>
 #include <asm/thread_info.h>
 
+unsigned long gp_in_global __asm__("gp");
+
 extern asmlinkage void ret_from_fork(void);
 extern asmlinkage void ret_from_kernel_thread(void);
 
@@ -107,9 +109,8 @@ int copy_thread_tls(unsigned long clone_flags, unsigned long usp,
 	/* p->thread holds context to be restored by __switch_to() */
 	if (unlikely(p->flags & PF_KTHREAD)) {
 		/* Kernel thread */
-		const register unsigned long gp __asm__ ("gp");
 		memset(childregs, 0, sizeof(struct pt_regs));
-		childregs->gp = gp;
+		childregs->gp = gp_in_global;
 		/* Supervisor/Machine, irqs on: */
 		childregs->status = SR_PP | SR_PIE;
 
diff --git a/arch/riscv/kernel/stacktrace.c b/arch/riscv/kernel/stacktrace.c
index 0940681d2f68..02087fe539c6 100644
--- a/arch/riscv/kernel/stacktrace.c
+++ b/arch/riscv/kernel/stacktrace.c
@@ -19,6 +19,8 @@ struct stackframe {
 	unsigned long ra;
 };
 
+register unsigned long sp_in_global __asm__("sp");
+
 void notrace walk_stackframe(struct task_struct *task, struct pt_regs *regs,
 			     bool (*fn)(unsigned long, void *), void *arg)
 {
@@ -29,7 +31,7 @@ void notrace walk_stackframe(struct task_struct *task, struct pt_regs *regs,
 		sp = user_stack_pointer(regs);
 		pc = instruction_pointer(regs);
 	} else if (task == NULL || task == current) {
-		const register unsigned long current_sp __asm__ ("sp");
+		const register unsigned long current_sp = sp_in_global;
 		fp = (unsigned long)__builtin_frame_address(0);
 		sp = current_sp;
 		pc = (unsigned long)walk_stackframe;
@@ -73,8 +75,7 @@ static void notrace walk_stackframe(struct task_struct *task,
 		sp = user_stack_pointer(regs);
 		pc = instruction_pointer(regs);
 	} else if (task == NULL || task == current) {
-		const register unsigned long current_sp __asm__ ("sp");
-		sp = current_sp;
+		sp = sp_in_global;
 		pc = (unsigned long)walk_stackframe;
 	} else {
 		/* task blocked in __switch_to */
-- 
2.25.1.481.gfbce0eb801-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200227213450.87194-2-palmer%40dabbelt.com.
