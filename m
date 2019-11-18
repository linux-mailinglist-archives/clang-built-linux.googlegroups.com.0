Return-Path: <clang-built-linux+bncBC2ORX645YPRBMGLZTXAKGQE7AL5M6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3e.google.com (mail-yw1-xc3e.google.com [IPv6:2607:f8b0:4864:20::c3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B568100F55
	for <lists+clang-built-linux@lfdr.de>; Tue, 19 Nov 2019 00:13:54 +0100 (CET)
Received: by mail-yw1-xc3e.google.com with SMTP id c68sf13855081ywe.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 18 Nov 2019 15:13:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1574118833; cv=pass;
        d=google.com; s=arc-20160816;
        b=TMg+H7pXw4/Zq/6/HsgPToub2SS9HZXmQZohbBJ7T9l48mXWZi+ggu6F18yWtDQlTq
         OIBKgGcDuqkFx1u8Bsm/if0drtnyvSJ5A5YtpAnJXA5zvUDiUzL9qP/Z1h9dI5Nn7dfR
         BqenBvkMq9HaxSCbvZbspvkF6HGkIbEaoFCdKU1lCsfQzvZ35pmI0tCM1fchyYUn7Ni5
         Xa3DuAb3LhdgszfOBcPo/uJL6oTp52GWCwXov8wFaZaQWUPGD7BodLzTLT1smAAszbY7
         c1yGnT3rsf8vIFi/WxRvAVHLaMA4x0wl5cJRzJdzZFGDSGyl1O6m+cH25tvYWB+euiM6
         NQGQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=Qd1b5xLruUxrHBVd+gUm2OSpDp31uG049yhHqnji/eE=;
        b=UFpLQ7HYJ80YehBex+0Se5e/VB6AgyiVgldEtj0GtYC8tfA2jIHwyGLgJFZtPa2Sw+
         cfFARpjOf1dfs709xD1t4GCyJSEQ4g8r7yD91wmHFq42wKB4KE2/NeAKs9XexZxJGwwh
         2qJ/Jqcsnw3TiF9Y7+THbdi8OE0X+Q3LBJDu4dfx6ho3Jpm79H58hGnTg8txU9HkJsq5
         ZF1z42BPf2RIT7uGSqdpMeULnjrRHOv5/0z6kyiwpSdg69WdTmyCXZ+PCzNfTmF2MLIw
         d6Hot8BiKkkz02B6Fls+pWxqAM6ssHb6VPZE7KFRUcLUVrE3AxfPMSv1u8c7yPBh0BtL
         yGIQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=LQSUtQxM;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=Qd1b5xLruUxrHBVd+gUm2OSpDp31uG049yhHqnji/eE=;
        b=hsgL5A80lcaSVZNs9wzGYL0p94HPHByR4+Ad3mf38krMBmg3+Wuqsd8WHoI7f4oU3z
         uh44hVlQGOnxxdABWikp5KsfOHzoRHM9wSJCTeJt8Salq5zfVICOASFNuabWp5Aep3y5
         UW5/dYIyzvXQHza/NIdWhkjeuOQ/QussvSp2hvvsrbAhzqbn0XQnByhn43hjSkLofdkx
         p25B6dXXcSNGM/9yciIjdgazQorgTC1G4tNn5WiX5EVOT6MHOc/Na+wdM0StQoA4Y1zU
         WksW0MG26dneK+ifGFCbz5PcGydXnJi8Qp9mGNyk5JXSzCdOarb2rRXr0whQa0TVw+0W
         RZCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Qd1b5xLruUxrHBVd+gUm2OSpDp31uG049yhHqnji/eE=;
        b=L0uMXkPno/QGzboEca6bn1AlTboLDwZ7HyEMtAy0gBYr5eJhZM4seQ7NEznApWaSl3
         lKBrEtrUsKTMP1jQLcuWqhvqByixPfabaKjJ+929/UlK6OyyMenc/Gc4obhGO3PEteKY
         xyQwnj52LW2PNyXz+jbUwl2TZazkzRHHJ6EC26eVc4ixGGxLNKUr+mElb+1HgBEDiAf8
         6Rat7B/QUMAHelUD6x22ppGjFpBslW95QynOc1ojI7yH8ZhMjhujJtd/W1jhiAvn5jAs
         1UZkY14IQEVDij27IoSjm9riuVE3EbTziPyiOe3XhC2aOfODJmTItMYaB9IiAg14itXR
         cmCg==
X-Gm-Message-State: APjAAAW6+9btNX06ITRwER/acqSux2HmrThE8Q/WVubFYml0hgteScJp
	c7gITbrJ7mF4luz/mgk2lyw=
X-Google-Smtp-Source: APXvYqyi9Fl1TAZh8KZjXYvn/ls37NX/qgAIvV4fsP3HOwF8F/qn/NZQN8PiTdgMN5yDcHW0jjhjPg==
X-Received: by 2002:a81:7047:: with SMTP id l68mr22804978ywc.433.1574118833028;
        Mon, 18 Nov 2019 15:13:53 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:abb2:: with SMTP id v47ls3007149ybi.0.gmail; Mon, 18 Nov
 2019 15:13:52 -0800 (PST)
X-Received: by 2002:a25:bb03:: with SMTP id z3mr27679643ybg.50.1574118832512;
        Mon, 18 Nov 2019 15:13:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1574118832; cv=none;
        d=google.com; s=arc-20160816;
        b=Mjp7oGM1x5VrcNw+OCuWryXilxRabCh35OGEntY90TO5ocXzyjlXerX6IwyPa2tx3y
         DDz6ABugf/24NzXTa2UJ75NJrkYqDqvxy1rP3wAHlGFilaawkDbGBMBvMBnDI0x3kBkK
         Y1SLvU9d8x1iUdRj0TOutG7Yh3C78qSoy+n35T9l45LTENXV4h7lkEhUHDaErTPsj2Ni
         /FF1INjACs5hbG+m4uIpZelSoowhPjEJ+zRT01wQ9zvYfd+o8PVpwFFf6ufNZ5sdOneI
         mw6+nH65TcE3PqDQUIoRF7G2SDIURomXb9LeZh1wnFulUxr4QUdqGgY2gvbhjBjhPFVB
         7AhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=qUJh1Kxa/O0dbHY+8/bDJj9IILwdUvsp2P0za4TSTpc=;
        b=O93Ne0zkk47yDl4gfEoCm2+/KVJ015KPFYUxrHI3yAZplnTASFDombs3q7iM4VkXR4
         kG97sSPWbULTFp6alcVLkCEkuuBwp7pPrVnjE436NpZ1ywE3xq/JUN3YkkrLEwCAoGPx
         KL1lKHGV0kpCxSTU01IZtqexTMuHJsi2VW7s4wNxUa19lAzZf8xzgV0HwZIvNFmmetoH
         WvHqC6Qzhlu1ZMtOEmJsdv3e1NN0/CWq+SXCEWuqjkHmyN5t5J10YWCM4Cv4bNL3nHHd
         HqJiBUpuMLy6Fh9cGVoWsfDKADcwloRoTlHLgfo2OlzpM3w7jTBHmYYTLLSikNO5lpRA
         4j6w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=LQSUtQxM;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id d192si916533ywb.1.2019.11.18.15.13.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Nov 2019 15:13:52 -0800 (PST)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id r4so11119787pfl.7
        for <clang-built-linux@googlegroups.com>; Mon, 18 Nov 2019 15:13:52 -0800 (PST)
X-Received: by 2002:a65:418d:: with SMTP id a13mr2039184pgq.208.1574118830980;
        Mon, 18 Nov 2019 15:13:50 -0800 (PST)
Received: from google.com ([2620:15c:201:2:ce90:ab18:83b0:619])
        by smtp.gmail.com with ESMTPSA id fh11sm551294pjb.2.2019.11.18.15.13.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Nov 2019 15:13:48 -0800 (PST)
Date: Mon, 18 Nov 2019 15:13:43 -0800
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Mark Rutland <mark.rutland@arm.com>
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
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Kernel Hardening <kernel-hardening@lists.openwall.com>,
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
	LKML <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v5 14/14] arm64: implement Shadow Call Stack
Message-ID: <20191118231343.GA231930@google.com>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191105235608.107702-1-samitolvanen@google.com>
 <20191105235608.107702-15-samitolvanen@google.com>
 <20191115152047.GI41572@lakrids.cambridge.arm.com>
 <CABCJKudm28QaKRxPHWgKuEfRvm=EvuUEmcAVOnNkbxBCJcYX5A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CABCJKudm28QaKRxPHWgKuEfRvm=EvuUEmcAVOnNkbxBCJcYX5A@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=LQSUtQxM;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::441
 as permitted sender) smtp.mailfrom=samitolvanen@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
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

On Fri, Nov 15, 2019 at 12:19:20PM -0800, Sami Tolvanen wrote:
> On Fri, Nov 15, 2019 at 7:20 AM Mark Rutland <mark.rutland@arm.com> wrote:
> >
> > On Tue, Nov 05, 2019 at 03:56:08PM -0800, Sami Tolvanen wrote:
> > > This change implements shadow stack switching, initial SCS set-up,
> > > and interrupt shadow stacks for arm64.
> >
> > Each CPU also has an overflow stack, and two SDEI stacks, which should
> > presumably be given their own SCS. SDEI is effectively a software-NMI,
> > so it should almost certainly have the same treatement as IRQ.
> 
> Makes sense. I'll take a look at adding shadow stacks for the SDEI handler.

Mark, I wrote a preliminary patch for adding SDEI shadow stacks, but
turns out I don't really have a way to test the SDEI code. Does the approach
below look sane to you?

Sami


---
 arch/arm64/include/asm/scs.h        |   2 +
 arch/arm64/include/asm/stacktrace.h |   4 --
 arch/arm64/kernel/entry.S           |  14 +++-
 arch/arm64/kernel/scs.c             | 106 +++++++++++++++++++++++-----
 arch/arm64/kernel/sdei.c            |   7 ++
 5 files changed, 112 insertions(+), 21 deletions(-)

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
 
diff --git a/arch/arm64/include/asm/stacktrace.h b/arch/arm64/include/asm/stacktrace.h
index b6cf32fb4efe..4d9b1f48dc39 100644
--- a/arch/arm64/include/asm/stacktrace.h
+++ b/arch/arm64/include/asm/stacktrace.h
@@ -68,10 +68,6 @@ extern void dump_backtrace(struct pt_regs *regs, struct task_struct *tsk);
 
 DECLARE_PER_CPU(unsigned long *, irq_stack_ptr);
 
-#ifdef CONFIG_SHADOW_CALL_STACK
-DECLARE_PER_CPU(unsigned long *, irq_shadow_call_stack_ptr);
-#endif
-
 static inline bool on_irq_stack(unsigned long sp,
 				struct stack_info *info)
 {
diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
index 5a02b61fc3e6..ac9dfb3da440 100644
--- a/arch/arm64/kernel/entry.S
+++ b/arch/arm64/kernel/entry.S
@@ -1309,13 +1309,16 @@ ENTRY(__sdei_asm_handler)
 
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
@@ -1325,6 +1328,15 @@ ENTRY(__sdei_asm_handler)
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
index 9a1305a6eb5b..dddb7c56518b 100644
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
 
-		p = __vmalloc_node_range(SCS_SIZE, SCS_SIZE,
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
index ea94cf8f9dc6..3e85017a9c8b 100644
--- a/arch/arm64/kernel/sdei.c
+++ b/arch/arm64/kernel/sdei.c
@@ -12,6 +12,7 @@
 #include <asm/kprobes.h>
 #include <asm/mmu.h>
 #include <asm/ptrace.h>
+#include <asm/scs.h>
 #include <asm/sections.h>
 #include <asm/stacktrace.h>
 #include <asm/sysreg.h>
@@ -161,6 +162,12 @@ unsigned long sdei_arch_get_entry_point(int conduit)
 			return 0;
 	}
 
+	if (scs_init_sdei()) {
+		if (IS_ENABLED(CONFIG_VMAP_STACK))
+			free_sdei_stacks();
+		return 0;
+	}
+
 	sdei_exit_mode = (conduit == CONDUIT_HVC) ? SDEI_EXIT_HVC : SDEI_EXIT_SMC;
 
 #ifdef CONFIG_UNMAP_KERNEL_AT_EL0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191118231343.GA231930%40google.com.
