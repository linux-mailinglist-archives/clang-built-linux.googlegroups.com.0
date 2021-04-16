Return-Path: <clang-built-linux+bncBC2ORX645YPRBY7L46BQMGQEVNI2SNA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 17A3136296F
	for <lists+clang-built-linux@lfdr.de>; Fri, 16 Apr 2021 22:39:00 +0200 (CEST)
Received: by mail-yb1-xb3a.google.com with SMTP id p75sf7516360ybc.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 16 Apr 2021 13:39:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618605539; cv=pass;
        d=google.com; s=arc-20160816;
        b=P1fTpVwKQHtdfxOs9QORM9vo/fXsA8hZrrRZI9H3nQnRcjrl2ptJl38QLsa5ekntEw
         7Io4sH2b2mx0I3JELp6uB03KOrDEParpBGuY/JraHYIWkCBZLvuxgJzaExnkwxd3n7Fe
         NrlHwnz6XIPcuJ35qPzvgNwrJC+wGkM2JkkuhWFqp1oKbOfXZgM7xLo6d665SrHnKBX5
         8wNmYt0yJFtb5L4ZkYeoUmOkLB0Kg/gF/arX0GRl90w+hCBHxiQic3t1yyoO6QMdnJv9
         NCTrnaQkM5hdGble/XYrB5XO14R2BxIZayGXEE1OB/0PjaW7V6Vb/XyqR049z68hUcMR
         5jrw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=9Pcfnchb4Vh1chpbb26c2LRmxHFCRIiIt++CB6jnSpM=;
        b=x5rL16bT26//qNLUbV8d034kFG0iNrGDcgB6cn/NA5WDhD8bc02TSJTEvlIxBTSWFm
         JY85pXlaWovqWosfiZrRgtp6x7UNfBguaBRpIRddic9+Ui65QVgrJ2VTIIHFHDl9pecy
         5v6Tj9AMPWcYw07rttS2gKzhC+rF9gQxGquOE8aWR/xgwgtH7k57Lp0QxgHplxEY5ClJ
         AOYveDaImkN8BC47EzbJfET3HsAC6sW87b13JxNzfX6b9SSbUpcHJsHVfou0w2rleuJw
         wlwnLjA7rDZZS9wKR+y/a6CU50zRyyGzJo5EC6KrExZfRlaHPQ8KGoUnS+m7w+cqUrNi
         mhiw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=L30jDWM8;
       spf=pass (google.com: domain of 34vv5yawkal8xfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=34vV5YAwKAL8xfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9Pcfnchb4Vh1chpbb26c2LRmxHFCRIiIt++CB6jnSpM=;
        b=b28PSkl0xK7vZXavhYoTojzUHgozVnzYhqxTytxjbuAKk8LCq4aabAB0n+zrbYfoPT
         yyXi+2pJztYyFfI/5np5nF8on6yNnIB2RbVJD4vt4VmuRvJm72RWJVSBYlhzkkwlbECV
         HJqsflxGAwonVfrTvOuE4SGXla/Ans5YpOnaWf+rdtPbOV5tR7fVONoqseBR/In+Mgu7
         7PZ4aeXAH4o/9vV4r7f2I+j0Qn/yhNuPfyztmnofZszNoju8x4sFrnID8qb9rbwf3+T2
         K4YPM+QN+oQyKxZ8Hk2a0XXjLmr8NzBnhjZeocWZPwEp6au7lHcHxKn4095dlDg5DuVA
         yGlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9Pcfnchb4Vh1chpbb26c2LRmxHFCRIiIt++CB6jnSpM=;
        b=FjAwAt+1xmh1h/XdeBY+5ey/3z/7DTLf/NnN6tbxx8sLgVSDy9h/jBPjYrDH/X6J0P
         rEaC3HlWPq5fQqg4JwlbC+TxD+/kupODk6Mpu/P2CgXF8X1z4Ad8vKDF7p/cYuxb8eOl
         S3e5BAtr81r2dScwzwB05W8s3hqbIluI8Dj2Xh0vMcVTmkynsNfPFEIv5MbMLA7jRSIG
         PXC1jbNYLEvWo8LcavwA6bIKsazJ7+RmYnh/QKcaGwPvof+0vSazQBX/kziX11CiBycQ
         33Kvza0Wmsel5dd6hOHkJJM8dtwsCKsTxGLExeoQ2vf4nezGSOakAgFFGv1zQwOuL6Li
         Z+zw==
X-Gm-Message-State: AOAM530M5kb5TSqDaSK/sxPtrEm7GSzpk22nuKVyGm+/7mxZug6Ec0Ep
	VGWjboQmYudP2JZ1OOcX3wg=
X-Google-Smtp-Source: ABdhPJx45sSrEj/XvNkkugkTCqmiL+1zacDewtjWSgUKrJvKJPvcWnDAAUr9NJ/DNDMnVKCK5PNWtw==
X-Received: by 2002:a25:d041:: with SMTP id h62mr1387186ybg.477.1618605539176;
        Fri, 16 Apr 2021 13:38:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:44c4:: with SMTP id r187ls1009449yba.5.gmail; Fri, 16
 Apr 2021 13:38:58 -0700 (PDT)
X-Received: by 2002:a25:c714:: with SMTP id w20mr1440789ybe.82.1618605538686;
        Fri, 16 Apr 2021 13:38:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618605538; cv=none;
        d=google.com; s=arc-20160816;
        b=uEJJ8X5myzJMGqHTVDV/iVpww+YkqbotiRJOzlqVDKn40gnUZJeJQuy2GJfJsYg43q
         Rgyd0zSShekORZqErqn8O/0h1eaG8gqBRZMrkHjcTzgQwFDODfWavfXEn76SfxBwWM3E
         4/YZZnQ/KJP2Ur2RXzWYtFd6A1tp0vaY4kypYj880zMpoNB62xRj57ujoGN88YWMBs9m
         VA3y/gTAu9yifLYyilaIBHgHz9upzrJ2F15MxwUpkOI612E5SS/6NvHZagMWhsAe+3Pt
         sisZXEIwRIl4b3H/b4094x5rZ0U47q1BYmVgrX4FWEDD5W9LQ3cvpcFQ4S/VeEjI70Xn
         I2Gg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=RwILZOlA2kaRn2Fjp5mm1qeS3lOQZP94Avp0hPYvV8s=;
        b=DwnsuSM+6opXKX+EyuuQXNN8IcyobA0mpppU6V1cM8mzSajYwLLPneubReuHC4+miU
         p2NsvkPMIy37WXgyonyqyeUGi78LFmcuHGz0VmukyXl7d5Sxdfhjxx1g0Mdj9P22Ac0/
         h9RDTRzoYiExJFjYNS/lDdKA/1lfHxCD+dXcr8RenYZFmCK+Gbk+9jGRDr1lHtbF0g4Y
         quY4eNWqEDDtaqLik/W7PzZRSED4DbIeD8rWENlgiKWDASeOI7vcwFksL6JMqlGyIHmm
         uMCrAMTywmWyK4JLXwrWBUSlJSoAYkHtBWmszWZ4Kr5YbBJJRfJKrGF6CettGreB+vZk
         2CeQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=L30jDWM8;
       spf=pass (google.com: domain of 34vv5yawkal8xfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=34vV5YAwKAL8xfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf49.google.com (mail-qv1-xf49.google.com. [2607:f8b0:4864:20::f49])
        by gmr-mx.google.com with ESMTPS id q185si729528ybc.1.2021.04.16.13.38.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Apr 2021 13:38:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of 34vv5yawkal8xfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) client-ip=2607:f8b0:4864:20::f49;
Received: by mail-qv1-xf49.google.com with SMTP id x15-20020a0ce0cf0000b029019cb3e75c62so4951249qvk.15
        for <clang-built-linux@googlegroups.com>; Fri, 16 Apr 2021 13:38:58 -0700 (PDT)
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:e262:3d8e:cbf:6164])
 (user=samitolvanen job=sendgmr) by 2002:a0c:de03:: with SMTP id
 t3mr10322213qvk.58.1618605538302; Fri, 16 Apr 2021 13:38:58 -0700 (PDT)
Date: Fri, 16 Apr 2021 13:38:35 -0700
In-Reply-To: <20210416203844.3803177-1-samitolvanen@google.com>
Message-Id: <20210416203844.3803177-7-samitolvanen@google.com>
Mime-Version: 1.0
References: <20210416203844.3803177-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.31.1.368.gbe11c130af-goog
Subject: [PATCH 06/15] x86: Avoid CFI jump tables in IDT and entry points
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: x86@kernel.org
Cc: Kees Cook <keescook@chromium.org>, Josh Poimboeuf <jpoimboe@redhat.com>, 
	Peter Zijlstra <peterz@infradead.org>, Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Sedat Dilek <sedat.dilek@gmail.com>, 
	linux-hardening@vger.kernel.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=L30jDWM8;       spf=pass
 (google.com: domain of 34vv5yawkal8xfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=34vV5YAwKAL8xfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com;
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

With CONFIG_CFI_CLANG, the compiler replaces function addresses in C
code with jump table addresses. To avoid referring to jump tables in
entry code with PTI, disable CFI for IDT and paravirt code, and use
function_nocfi() to prevent jump table addresses from being added to
the IDT or system call entry points.

Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Tested-by: Sedat Dilek <sedat.dilek@gmail.com>
---
 arch/x86/include/asm/desc.h  | 8 +++++++-
 arch/x86/kernel/Makefile     | 3 +++
 arch/x86/kernel/cpu/common.c | 8 ++++----
 arch/x86/kernel/idt.c        | 2 +-
 arch/x86/kernel/traps.c      | 2 +-
 arch/x86/xen/Makefile        | 2 ++
 6 files changed, 18 insertions(+), 7 deletions(-)

diff --git a/arch/x86/include/asm/desc.h b/arch/x86/include/asm/desc.h
index 476082a83d1c..96666256eec2 100644
--- a/arch/x86/include/asm/desc.h
+++ b/arch/x86/include/asm/desc.h
@@ -381,7 +381,13 @@ static inline void set_desc_limit(struct desc_struct *desc, unsigned long limit)
 	desc->limit1 = (limit >> 16) & 0xf;
 }
 
-void alloc_intr_gate(unsigned int n, const void *addr);
+/*
+ * Use function_nocfi() to prevent the compiler from replacing function
+ * addresses with jump table addresses when CONFIG_CFI_CLANG is enabled.
+ */
+#define alloc_intr_gate(n, addr) __alloc_intr_gate(n, function_nocfi(addr))
+
+void __alloc_intr_gate(unsigned int n, const void *addr);
 
 static inline void init_idt_data(struct idt_data *data, unsigned int n,
 				 const void *addr)
diff --git a/arch/x86/kernel/Makefile b/arch/x86/kernel/Makefile
index 0704c2a94272..12a739eb208e 100644
--- a/arch/x86/kernel/Makefile
+++ b/arch/x86/kernel/Makefile
@@ -46,6 +46,9 @@ endif
 # non-deterministic coverage.
 KCOV_INSTRUMENT		:= n
 
+CFLAGS_REMOVE_idt.o		:= $(CC_FLAGS_CFI)
+CFLAGS_REMOVE_paravirt.o	:= $(CC_FLAGS_CFI)
+
 CFLAGS_head$(BITS).o	+= -fno-stack-protector
 
 CFLAGS_irq.o := -I $(srctree)/$(src)/../include/asm/trace
diff --git a/arch/x86/kernel/cpu/common.c b/arch/x86/kernel/cpu/common.c
index 6bdb69a9a7dc..e6cff98b182a 100644
--- a/arch/x86/kernel/cpu/common.c
+++ b/arch/x86/kernel/cpu/common.c
@@ -1752,10 +1752,10 @@ DEFINE_PER_CPU(unsigned long, cpu_current_top_of_stack) = TOP_OF_INIT_STACK;
 void syscall_init(void)
 {
 	wrmsr(MSR_STAR, 0, (__USER32_CS << 16) | __KERNEL_CS);
-	wrmsrl(MSR_LSTAR, (unsigned long)entry_SYSCALL_64);
+	wrmsrl(MSR_LSTAR, (unsigned long)function_nocfi(entry_SYSCALL_64));
 
 #ifdef CONFIG_IA32_EMULATION
-	wrmsrl(MSR_CSTAR, (unsigned long)entry_SYSCALL_compat);
+	wrmsrl(MSR_CSTAR, (unsigned long)function_nocfi(entry_SYSCALL_compat));
 	/*
 	 * This only works on Intel CPUs.
 	 * On AMD CPUs these MSRs are 32-bit, CPU truncates MSR_IA32_SYSENTER_EIP.
@@ -1765,9 +1765,9 @@ void syscall_init(void)
 	wrmsrl_safe(MSR_IA32_SYSENTER_CS, (u64)__KERNEL_CS);
 	wrmsrl_safe(MSR_IA32_SYSENTER_ESP,
 		    (unsigned long)(cpu_entry_stack(smp_processor_id()) + 1));
-	wrmsrl_safe(MSR_IA32_SYSENTER_EIP, (u64)entry_SYSENTER_compat);
+	wrmsrl_safe(MSR_IA32_SYSENTER_EIP, (u64)function_nocfi(entry_SYSENTER_compat));
 #else
-	wrmsrl(MSR_CSTAR, (unsigned long)ignore_sysret);
+	wrmsrl(MSR_CSTAR, (unsigned long)function_nocfi(ignore_sysret));
 	wrmsrl_safe(MSR_IA32_SYSENTER_CS, (u64)GDT_ENTRY_INVALID_SEG);
 	wrmsrl_safe(MSR_IA32_SYSENTER_ESP, 0ULL);
 	wrmsrl_safe(MSR_IA32_SYSENTER_EIP, 0ULL);
diff --git a/arch/x86/kernel/idt.c b/arch/x86/kernel/idt.c
index d552f177eca0..6574a742e373 100644
--- a/arch/x86/kernel/idt.c
+++ b/arch/x86/kernel/idt.c
@@ -340,7 +340,7 @@ void idt_invalidate(void *addr)
 	load_idt(&idt);
 }
 
-void __init alloc_intr_gate(unsigned int n, const void *addr)
+void __init __alloc_intr_gate(unsigned int n, const void *addr)
 {
 	if (WARN_ON(n < FIRST_SYSTEM_VECTOR))
 		return;
diff --git a/arch/x86/kernel/traps.c b/arch/x86/kernel/traps.c
index 853ea7a80806..54616dc49116 100644
--- a/arch/x86/kernel/traps.c
+++ b/arch/x86/kernel/traps.c
@@ -403,7 +403,7 @@ DEFINE_IDTENTRY_DF(exc_double_fault)
 		 * which is what the stub expects, given that the faulting
 		 * RIP will be the IRET instruction.
 		 */
-		regs->ip = (unsigned long)asm_exc_general_protection;
+		regs->ip = (unsigned long)function_nocfi(asm_exc_general_protection);
 		regs->sp = (unsigned long)&gpregs->orig_ax;
 
 		return;
diff --git a/arch/x86/xen/Makefile b/arch/x86/xen/Makefile
index 40b5779fce21..61e2d9b2fa43 100644
--- a/arch/x86/xen/Makefile
+++ b/arch/x86/xen/Makefile
@@ -11,6 +11,8 @@ endif
 CFLAGS_enlighten_pv.o		:= -fno-stack-protector
 CFLAGS_mmu_pv.o			:= -fno-stack-protector
 
+CFLAGS_REMOVE_enlighten_pv.o	:= $(CC_FLAGS_CFI)
+
 obj-y				+= enlighten.o
 obj-y				+= mmu.o
 obj-y				+= time.o
-- 
2.31.1.368.gbe11c130af-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210416203844.3803177-7-samitolvanen%40google.com.
