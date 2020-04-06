Return-Path: <clang-built-linux+bncBC2ORX645YPRBYNXVX2AKGQERXAWIQA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73b.google.com (mail-qk1-x73b.google.com [IPv6:2607:f8b0:4864:20::73b])
	by mail.lfdr.de (Postfix) with ESMTPS id D144619FA75
	for <lists+clang-built-linux@lfdr.de>; Mon,  6 Apr 2020 18:42:10 +0200 (CEST)
Received: by mail-qk1-x73b.google.com with SMTP id e11sf354282qka.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 06 Apr 2020 09:42:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586191330; cv=pass;
        d=google.com; s=arc-20160816;
        b=q8DwnlaYjKtqBIiAfbHoRLAD36o0tArv6Zf7h43xfwwwad0yI30xKy4evlROg+MD4Y
         PImDuAe0WZMORGVIyVEv4PelsSVG0F8j1cUZKAek8NarymlA8fpF6mkQ5axlYZWEcn1E
         FWBwo33AaLnPL0pYSYFWoQ8qrvAbZx3qCJyIrWpiV2Jq3Oyfn0r1rqywOrDJkmO0PpW9
         PZGnbnnOcsCGnIFBuw29FInC9IFOW/p+aQ2VO/NE0GCEHf5fvVuKGrrBy8o4MKQo7M4v
         uzWOl82Q/hWB8tptlxMf95BLTWtLuW+osdvwo78bOTkCjLgBkRpRVVvO6CrCg2+4FLbh
         d5Yw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=FfKnPdiwOHvozN4beEC6nWJlt61UDLCr08YX0sqKEKM=;
        b=f7Bsg0vJYE56kB71x5RVthp8/ZPI2uHm2x2GLfZ7dOXTlteqArQom2BBgOJupfGSWb
         soQ9f+Yz5LwL5oRrgjoQjjPVLVFaiGPFXvZLvnkgAYlAvAbgtDt0fQ2OI0qQAK3qbpLN
         +jHHgWzIaJkqkxbJUoqciCA7PWw5hx+4E2hig+WMbGc3MA4iMZBsYYFSq+DP3Shf7Tiv
         q2QOymMSOSQdIo5Ruy5TK8fMofOueWyRYxzh5SywlwQEvjcPH/t6l6wb0pyzrNf93hFN
         kRLZ2JfZcfLJ70L8ThWjetjjV4s5M/w3V89JZ24Gw5YGDu7iHKVqKGOMRq07Q1adHkWa
         rNnQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qB51hhRM;
       spf=pass (google.com: domain of 34vulxgwkamaygsozur1gtktmuumrk.ius@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=34VuLXgwKAMAygsozur1gtktmuumrk.ius@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FfKnPdiwOHvozN4beEC6nWJlt61UDLCr08YX0sqKEKM=;
        b=owme6+q12+V/gIAFrTjL34Yfyvtjv4afIGNdRzncvAjiyENxRJdz6Gf63pWpXF527V
         EY/CrtAgJ5DrmlEzanEUVV60nfKhVluCRsgK+kMzZ0ldZHW8Ewh340DMaEmEjoR4qBPs
         jXFS7yEEvtw1t9R3BF2LDwa9rXvT/mzM3WeCdOKNOMurAiprhPM1tNz2uS4v0WhSO+KR
         GX+KA/0v3TUTsBhVKv6qrcbupkM+673BIXcXdQCS7yo8wUpA6LoCzpTrmCss5sO1I/lM
         CL79EmXSBxqerlubqvHi0IgRN+VthbXm1tGz2mnjYNcqnp9G45SRO3LWlzc1E2bwCGws
         qb1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FfKnPdiwOHvozN4beEC6nWJlt61UDLCr08YX0sqKEKM=;
        b=Q71t8CZjhcN0bMdNkuBPLNf5lsyLidEjB7Sb2cB86nLsa2P1bIsY71raHxPrYM0spH
         BNQIM9xEV5tn3LQUmQxzunZIb2gfUY4HNBhmibT12FqJnZBuPZq8EjlY+DcUoBkLEkaD
         9lnuPmjDO6VPREq/rTrq6s1Ugu5kazQFP1eRpsm5UkMAVGjQYHlzz1CFPB8k17a7JhKK
         l5yhBmzjhFRA37YfqsMsTlB07R2UdUw2uK8JFyzT4aqs53SN7oYh+cFhhq7jNEquHcfD
         LKcP4xNoMQBAX+cg6tF5AMduqJVgyHgoNr4JlDK5y330plSoCZ7nVCEv+h/ZFyhEtCfo
         nG1Q==
X-Gm-Message-State: AGi0PuZXE2JZNUhPrNZTcRRxS0FsKdnGDznqzohWwKNYbipJdTNenELf
	HCmEhSLEGdrsst4FMbNGd/M=
X-Google-Smtp-Source: APiQypIHJDoId0E8yMAZeNWAFqDEJ85s0uRh+ioBVLG86zP72fgl95SvJpG1KWspFpyNifUaWrbA5w==
X-Received: by 2002:aed:249c:: with SMTP id t28mr253301qtc.169.1586191329885;
        Mon, 06 Apr 2020 09:42:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:8d49:: with SMTP id s9ls59879qvb.10.gmail; Mon, 06 Apr
 2020 09:42:09 -0700 (PDT)
X-Received: by 2002:a0c:efc2:: with SMTP id a2mr436950qvt.249.1586191329526;
        Mon, 06 Apr 2020 09:42:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586191329; cv=none;
        d=google.com; s=arc-20160816;
        b=nOl3yGJE3hduuXJu+NhHedY/cu5sWb1ckxZpQIzaJ7IGPzTRS3CvKImKDnPwpvq9rx
         7OFMO69QIhKhFN+wSOt7/bsKF++Kp4AFbNyCZsIpAPtS7wptn0aM5OcRiKSs0F5Lpdzj
         B2XnxiRQSUBmburCmUAr8UrNoi1/vdw6ua2LwRoos1fzPIA1mlgLRne44/v9qaIjeXv1
         UeBeqe2CoiXOblqwUZtgDAyBGKxwZf6nyGCPk7ociEFOcerEsOzEHqExQ3k9dC2APRUc
         eudrx7ul12fU9GiegiRrxSgD+Yaoq1hLJE1ZzCB+NOQ1UFB6Qjdfjp7pj44HVD5zhUb/
         0PQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=qVHd8+jN8Vuuz39mW+dfPzoZqC8ZUKPDpisRC8YjA1w=;
        b=zZO6LFzj4W8hizmR6l9DC24BPVwrkeDwETatUG0ZZM4xndbEDtzGEAiwyKBL1mUdm+
         tLaaGQW8Vku7OZuL1zYbRm7NExsxfaqFlYwkgTeXfw9idP6cYsPiHM/tox8yOl3lm0BT
         9Mi0Uxh/52OIOTBdiVIv/ZlIqKvEs+muiwEukK0udF1kD2zPghAOzpCo7bnGD7NNnaCZ
         /2NaWIPfcxiK1HxA8WF+MBXtHNaldwf+87pUyQfPmf+/bd1KM/v4a6NCq5N7x2VItcVB
         rYLrU2skj2q8W8kr991b9ffaw8kASEvE6v2OSJxGSDMLB4GtiE6MDaU2AxC+UaofVYwm
         laGQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qB51hhRM;
       spf=pass (google.com: domain of 34vulxgwkamaygsozur1gtktmuumrk.ius@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=34VuLXgwKAMAygsozur1gtktmuumrk.ius@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id b139si29415qkc.5.2020.04.06.09.42.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Apr 2020 09:42:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of 34vulxgwkamaygsozur1gtktmuumrk.ius@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id c133so505935ybb.19
        for <clang-built-linux@googlegroups.com>; Mon, 06 Apr 2020 09:42:09 -0700 (PDT)
X-Received: by 2002:a5b:b8a:: with SMTP id l10mr34314766ybq.25.1586191329088;
 Mon, 06 Apr 2020 09:42:09 -0700 (PDT)
Date: Mon,  6 Apr 2020 09:41:20 -0700
In-Reply-To: <20200406164121.154322-1-samitolvanen@google.com>
Message-Id: <20200406164121.154322-12-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20200406164121.154322-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.26.0.292.g33ef6b2f38-goog
Subject: [PATCH v10 11/12] arm64: scs: add shadow stacks for SDEI
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	James Morse <james.morse@arm.com>, Steven Rostedt <rostedt@goodmis.org>, 
	Masami Hiramatsu <mhiramat@kernel.org>, Ard Biesheuvel <ard.biesheuvel@linaro.org>, 
	Mark Rutland <mark.rutland@arm.com>
Cc: Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Marc Zyngier <maz@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Jann Horn <jannh@google.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, clang-built-linux@googlegroups.com, 
	kernel-hardening@lists.openwall.com, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=qB51hhRM;       spf=pass
 (google.com: domain of 34vulxgwkamaygsozur1gtktmuumrk.ius@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=34VuLXgwKAMAygsozur1gtktmuumrk.ius@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

This change adds per-CPU shadow call stacks for the SDEI handler.
Similarly to how the kernel stacks are handled, we add separate shadow
stacks for normal and critical events.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: James Morse <james.morse@arm.com>
Tested-by: James Morse <james.morse@arm.com>
---
 arch/arm64/include/asm/scs.h |   2 +
 arch/arm64/kernel/entry.S    |  14 ++++-
 arch/arm64/kernel/scs.c      | 106 +++++++++++++++++++++++++++++------
 arch/arm64/kernel/sdei.c     |   7 +++
 4 files changed, 112 insertions(+), 17 deletions(-)

diff --git a/arch/arm64/include/asm/scs.h b/arch/arm64/include/asm/scs.h
index c50d2b0c6c5f..8e327e14bc15 100644
--- a/arch/arm64/include/asm/scs.h
+++ b/arch/arm64/include/asm/scs.h
@@ -9,6 +9,7 @@
 #ifdef CONFIG_SHADOW_CALL_STACK
 
 extern void scs_init_irq(void);
+extern int scs_init_sdei(void);
 
 static __always_inline void scs_save(struct task_struct *tsk)
 {
@@ -27,6 +28,7 @@ static inline void scs_overflow_check(struct task_struct *tsk)
 #else /* CONFIG_SHADOW_CALL_STACK */
 
 static inline void scs_init_irq(void) {}
+static inline int scs_init_sdei(void) { return 0; }
 static inline void scs_save(struct task_struct *tsk) {}
 static inline void scs_overflow_check(struct task_struct *tsk) {}
 
diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
index c33264ce7258..768cd7abd32c 100644
--- a/arch/arm64/kernel/entry.S
+++ b/arch/arm64/kernel/entry.S
@@ -1058,13 +1058,16 @@ SYM_CODE_START(__sdei_asm_handler)
 
 	mov	x19, x1
 
+#if defined(CONFIG_VMAP_STACK) || defined(CONFIG_SHADOW_CALL_STACK)
+	ldrb	w4, [x19, #SDEI_EVENT_PRIORITY]
+#endif
+
 #ifdef CONFIG_VMAP_STACK
 	/*
 	 * entry.S may have been using sp as a scratch register, find whether
 	 * this is a normal or critical event and switch to the appropriate
 	 * stack for this CPU.
 	 */
-	ldrb	w4, [x19, #SDEI_EVENT_PRIORITY]
 	cbnz	w4, 1f
 	ldr_this_cpu dst=x5, sym=sdei_stack_normal_ptr, tmp=x6
 	b	2f
@@ -1074,6 +1077,15 @@ SYM_CODE_START(__sdei_asm_handler)
 	mov	sp, x5
 #endif
 
+#ifdef CONFIG_SHADOW_CALL_STACK
+	/* Use a separate shadow call stack for normal and critical events */
+	cbnz	w4, 3f
+	ldr_this_cpu dst=x18, sym=sdei_shadow_call_stack_normal_ptr, tmp=x6
+	b	4f
+3:	ldr_this_cpu dst=x18, sym=sdei_shadow_call_stack_critical_ptr, tmp=x6
+4:
+#endif
+
 	/*
 	 * We may have interrupted userspace, or a guest, or exit-from or
 	 * return-to either of these. We can't trust sp_el0, restore it.
diff --git a/arch/arm64/kernel/scs.c b/arch/arm64/kernel/scs.c
index eaadf5430baa..dddb7c56518b 100644
--- a/arch/arm64/kernel/scs.c
+++ b/arch/arm64/kernel/scs.c
@@ -10,31 +10,105 @@
 #include <asm/pgtable.h>
 #include <asm/scs.h>
 
-DEFINE_PER_CPU(unsigned long *, irq_shadow_call_stack_ptr);
+#define DECLARE_SCS(name)						\
+	DECLARE_PER_CPU(unsigned long *, name ## _ptr);			\
+	DECLARE_PER_CPU(unsigned long [SCS_SIZE/sizeof(long)], name)
 
-#ifndef CONFIG_SHADOW_CALL_STACK_VMAP
-DEFINE_PER_CPU(unsigned long [SCS_SIZE/sizeof(long)], irq_shadow_call_stack)
-	__aligned(SCS_SIZE);
+#ifdef CONFIG_SHADOW_CALL_STACK_VMAP
+#define DEFINE_SCS(name)						\
+	DEFINE_PER_CPU(unsigned long *, name ## _ptr)
+#else
+/* Allocate a static per-CPU shadow stack */
+#define DEFINE_SCS(name)						\
+	DEFINE_PER_CPU(unsigned long *, name ## _ptr);			\
+	DEFINE_PER_CPU(unsigned long [SCS_SIZE/sizeof(long)], name)	\
+		__aligned(SCS_SIZE)
+#endif /* CONFIG_SHADOW_CALL_STACK_VMAP */
+
+DECLARE_SCS(irq_shadow_call_stack);
+DECLARE_SCS(sdei_shadow_call_stack_normal);
+DECLARE_SCS(sdei_shadow_call_stack_critical);
+
+DEFINE_SCS(irq_shadow_call_stack);
+#ifdef CONFIG_ARM_SDE_INTERFACE
+DEFINE_SCS(sdei_shadow_call_stack_normal);
+DEFINE_SCS(sdei_shadow_call_stack_critical);
 #endif
 
+static int scs_alloc_percpu(unsigned long * __percpu *ptr, int cpu)
+{
+	unsigned long *p;
+
+	p = __vmalloc_node_range(PAGE_SIZE, SCS_SIZE,
+				 VMALLOC_START, VMALLOC_END,
+				 GFP_SCS, PAGE_KERNEL,
+				 0, cpu_to_node(cpu),
+				 __builtin_return_address(0));
+
+	if (!p)
+		return -ENOMEM;
+	per_cpu(*ptr, cpu) = p;
+
+	return 0;
+}
+
+static void scs_free_percpu(unsigned long * __percpu *ptr, int cpu)
+{
+	unsigned long *p = per_cpu(*ptr, cpu);
+
+	if (p) {
+		per_cpu(*ptr, cpu) = NULL;
+		vfree(p);
+	}
+}
+
+static void scs_free_sdei(void)
+{
+	int cpu;
+
+	for_each_possible_cpu(cpu) {
+		scs_free_percpu(&sdei_shadow_call_stack_normal_ptr, cpu);
+		scs_free_percpu(&sdei_shadow_call_stack_critical_ptr, cpu);
+	}
+}
+
 void scs_init_irq(void)
 {
 	int cpu;
 
 	for_each_possible_cpu(cpu) {
-#ifdef CONFIG_SHADOW_CALL_STACK_VMAP
-		unsigned long *p;
+		if (IS_ENABLED(CONFIG_SHADOW_CALL_STACK_VMAP))
+			WARN_ON(scs_alloc_percpu(&irq_shadow_call_stack_ptr,
+						 cpu));
+		else
+			per_cpu(irq_shadow_call_stack_ptr, cpu) =
+				per_cpu(irq_shadow_call_stack, cpu);
+	}
+}
 
-		p = __vmalloc_node_range(PAGE_SIZE, SCS_SIZE,
-					 VMALLOC_START, VMALLOC_END,
-					 GFP_SCS, PAGE_KERNEL,
-					 0, cpu_to_node(cpu),
-					 __builtin_return_address(0));
+int scs_init_sdei(void)
+{
+	int cpu;
 
-		per_cpu(irq_shadow_call_stack_ptr, cpu) = p;
-#else
-		per_cpu(irq_shadow_call_stack_ptr, cpu) =
-			per_cpu(irq_shadow_call_stack, cpu);
-#endif /* CONFIG_SHADOW_CALL_STACK_VMAP */
+	if (!IS_ENABLED(CONFIG_ARM_SDE_INTERFACE))
+		return 0;
+
+	for_each_possible_cpu(cpu) {
+		if (IS_ENABLED(CONFIG_SHADOW_CALL_STACK_VMAP)) {
+			if (scs_alloc_percpu(
+				&sdei_shadow_call_stack_normal_ptr, cpu) ||
+			    scs_alloc_percpu(
+				&sdei_shadow_call_stack_critical_ptr, cpu)) {
+				scs_free_sdei();
+				return -ENOMEM;
+			}
+		} else {
+			per_cpu(sdei_shadow_call_stack_normal_ptr, cpu) =
+				per_cpu(sdei_shadow_call_stack_normal, cpu);
+			per_cpu(sdei_shadow_call_stack_critical_ptr, cpu) =
+				per_cpu(sdei_shadow_call_stack_critical, cpu);
+		}
 	}
+
+	return 0;
 }
diff --git a/arch/arm64/kernel/sdei.c b/arch/arm64/kernel/sdei.c
index d6259dac62b6..2854b9f7760a 100644
--- a/arch/arm64/kernel/sdei.c
+++ b/arch/arm64/kernel/sdei.c
@@ -13,6 +13,7 @@
 #include <asm/kprobes.h>
 #include <asm/mmu.h>
 #include <asm/ptrace.h>
+#include <asm/scs.h>
 #include <asm/sections.h>
 #include <asm/stacktrace.h>
 #include <asm/sysreg.h>
@@ -162,6 +163,12 @@ unsigned long sdei_arch_get_entry_point(int conduit)
 			return 0;
 	}
 
+	if (scs_init_sdei()) {
+		if (IS_ENABLED(CONFIG_VMAP_STACK))
+			free_sdei_stacks();
+		return 0;
+	}
+
 	sdei_exit_mode = (conduit == SMCCC_CONDUIT_HVC) ? SDEI_EXIT_HVC : SDEI_EXIT_SMC;
 
 #ifdef CONFIG_UNMAP_KERNEL_AT_EL0
-- 
2.26.0.292.g33ef6b2f38-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200406164121.154322-12-samitolvanen%40google.com.
