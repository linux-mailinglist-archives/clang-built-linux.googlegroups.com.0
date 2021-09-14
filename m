Return-Path: <clang-built-linux+bncBC2ORX645YPRBTPHQOFAMGQEEGHZ7VQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33a.google.com (mail-ot1-x33a.google.com [IPv6:2607:f8b0:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id D9F6340B78C
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Sep 2021 21:11:10 +0200 (CEST)
Received: by mail-ot1-x33a.google.com with SMTP id 8-20020a9d0588000000b0051defe13038sf295otd.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Sep 2021 12:11:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631646670; cv=pass;
        d=google.com; s=arc-20160816;
        b=zq30J1yRDaG1x0Qr0tcp7+WOwjyg8HLWJe9wsm4m9kZKkg5rYdIJ99eyWDntTvhJVi
         k9yclxnVGr6/IzrE8nc++yn5KHYkrTxlbTrLdsDQbuZlbZZyCbgGA2IRcY5WscddTZ0S
         P0bRn1c5aya0vraeAxI9QcGHQnoEje0CejYDaaTnH62H+UhKpMlbFP6YhJHtha5R1IL/
         LY45vgFCrIQZkjc1b0csUTkEAupCqAagFYchTS6LUxF6IYceXxvZu5OPQu1WxaDTWcjP
         hrm25KrqViPvoW7S+AZrnGItsfKOyAeIn0aYQdY9UyU00ndwSOOekhMBSlYpH+pq83xo
         +NZw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=sNjc0iUkts75NpeF8C+HKrzaOQqMpJDW99CyRGmAGuM=;
        b=KmIjVmwFGyf/krVmWC/cJBko0Hby4YOUJ5Q0o47JCKosGNM0KLyf+RCBAYyAYLP1GJ
         HmZeNLBthKqFM7PF0l8kmfKMwIAmankegLSkcsojJlojyZvAEwe9laLD/oOPzSxkWyoO
         fHb/3J02vJ65yl9UzecbLHjgsQ0SRci/g3tpYWD4pfhdUpQp12A/deVKwIpGSv2nI4/Z
         VUZjrJofHjhpLMKLJUGAjNePWluHGkGJPkvmUSunqGaQkQRs22RkBP7pJ8VtskmGwTIV
         Phn4C6ZQ9h3Zi3PwDGZY7YQU4emsydJAB8SO6uysEQTs95XmgBEJ9L/lfPlpavZ94Ysf
         HkbQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=NUAtV0nW;
       spf=pass (google.com: domain of 3zfnayqwkamg6o0w72z9o1s1u22uzs.q20@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3zfNAYQwKAMg6o0w72z9o1s1u22uzs.q20@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sNjc0iUkts75NpeF8C+HKrzaOQqMpJDW99CyRGmAGuM=;
        b=ZO7D55bBh6WFHeUOta63iu1P/n5t4rNc0vSKmR6L1Il4OEU+TPZjC2EdSPSCpzC7jf
         xaLjz/T5Xc5XdfFfTX/pFxdJaaxF81BN98M9VuSzkssejiP9Lx5ex1HQni4jHhYDXvnh
         ckru6K7KTFn5X01LxMONV39Fe/L0x8WmkyrA3+myVpH94o3wZ83vNUOx/WTJrN2MrRi2
         R516siouwMQoH8DK8Urk/bvpC0yZQaYT7dPkOlKLBxbxF8hnDV3lQXAly/FELMe2Miao
         p7l8Eg+5MmOx5hk+yMFjsKYl2+MKEHBmPCJzgcuK5fv9Uy2SmqRJuKicUUVJWySPlIEH
         JdUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sNjc0iUkts75NpeF8C+HKrzaOQqMpJDW99CyRGmAGuM=;
        b=MXW4AdhEbhJrT0UPxtPVB76kfXp5bYRTHAtw01n7tnvGW/4I655Iw6fVXzZ6KcbISi
         LlGVI6cJKnWRWDvEQLtQz+zVOzXXPc6AxdtB/1E2ZmR1Qd1iNQ5PKsRzFtJ3c3o06NkL
         79W7PyJzy86qRqcP12qlRboyspxEIdCZ9diMW+pQekpPssymfgTWabpRLOz/be7HcByu
         vfhaV14TJgY+x7vG4MSUBUvy6uRInVzFake9AUNBbgsjyFGUyrjuLXG6cc8OaVCZKrzP
         f1LTWvo0TKx8TS/3jiY+5wzYKrKsV9Kotf+ncvBDoyrOgmVcgucElLcaBEtl80lg82Gn
         R1Yg==
X-Gm-Message-State: AOAM530ytPpD48ZEyZGVyeZ9LU/5D2QN3fDWTWsbzAYujmdl52keIlFG
	zfT4aG04r5FQX807p21wHPE=
X-Google-Smtp-Source: ABdhPJwM50HmV9dmOKrMT6hHMUTsqEYNggzyHipIQOoaUXHHp18989q+dlI+Qf5TewiTuX1hc0QNGA==
X-Received: by 2002:a05:6830:2b0d:: with SMTP id l13mr15934397otv.39.1631646669853;
        Tue, 14 Sep 2021 12:11:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:66c4:: with SMTP id t4ls3442902otm.5.gmail; Tue, 14 Sep
 2021 12:11:09 -0700 (PDT)
X-Received: by 2002:a9d:72d0:: with SMTP id d16mr16059411otk.93.1631646669494;
        Tue, 14 Sep 2021 12:11:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631646669; cv=none;
        d=google.com; s=arc-20160816;
        b=V7nx4ojvsIjfsu0F3WOl9AY7kINYih1Fle5SOdd7YqWlasZKFVjAAS7aCKjx6AHykU
         jJ/2ZJ/A4j8PNGCdAOjb1u2e49oRMW/7Hckt0irk6bzhltzTYkl6tj7CIQqxYc8xWmtK
         P6GKMOwa+QXyFIG96SCrhAsVj9pV/HCRnJ13WQ2Bu5Q0Wdr7T4YU0Zxip36IVN6yetS+
         wgD9mcyeBCOXONF1axF5dnJHzcpxkJb9BBikVgjT6j5tzy6mmmyDuVewFASZuqwDCJzO
         Uq+gvBDLwlfbU83mMs/uIXRz/Uu7cPpDv7HVk3JxQ98DNtuELzcoC4yw1qVqULH+E0FZ
         +DpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=eswE9x++QEr3t7S4y8rlWeL0a3Liad59aeS4pTFkcME=;
        b=NK1j7oX8b+vJSlnZOCzn+tLCuZy8pQewh1LjwxtPOPaA4LCXJbyO6nroDwXw8Polk4
         G2J6tz8DvVlgWtItcPPwSjKWQDHdc4SjBXLCDfa1iJBRCNBnO4a3+o0rPYpQjXnjIcJ5
         n3eKi/cUeEFL1vYHMBSJ7N5XAqeygwZH2H3nxtS5xWw/5rOxTp0ZY5QCkeC9TM5t3YY/
         RD7HHaopZXjPjV+QdyuWIgX5t5M7F6DzEZSd7FqlGggxwWYWBNL4Dr1rqiONL8zmbR9y
         Hqtvl1vOxkFWZMiBLQ6Eio03rde1Sk3I1n2wpLEclYCNm6woD98aSB/zXYfq3C7/db+B
         O4Qg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=NUAtV0nW;
       spf=pass (google.com: domain of 3zfnayqwkamg6o0w72z9o1s1u22uzs.q20@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3zfNAYQwKAMg6o0w72z9o1s1u22uzs.q20@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x74a.google.com (mail-qk1-x74a.google.com. [2607:f8b0:4864:20::74a])
        by gmr-mx.google.com with ESMTPS id s20si123616ois.4.2021.09.14.12.11.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Sep 2021 12:11:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3zfnayqwkamg6o0w72z9o1s1u22uzs.q20@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) client-ip=2607:f8b0:4864:20::74a;
Received: by mail-qk1-x74a.google.com with SMTP id q13-20020a05620a038d00b003d38f784161so715955qkm.8
        for <clang-built-linux@googlegroups.com>; Tue, 14 Sep 2021 12:11:09 -0700 (PDT)
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:d19c:5902:49bb:c41])
 (user=samitolvanen job=sendgmr) by 2002:ad4:55b2:: with SMTP id
 f18mr7222089qvx.22.1631646669041; Tue, 14 Sep 2021 12:11:09 -0700 (PDT)
Date: Tue, 14 Sep 2021 12:10:38 -0700
In-Reply-To: <20210914191045.2234020-1-samitolvanen@google.com>
Message-Id: <20210914191045.2234020-10-samitolvanen@google.com>
Mime-Version: 1.0
References: <20210914191045.2234020-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.33.0.309.g3052b89438-goog
Subject: [PATCH v3 09/16] x86: Use an opaque type for functions not callable
 from C
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
 header.i=@google.com header.s=20210112 header.b=NUAtV0nW;       spf=pass
 (google.com: domain of 3zfnayqwkamg6o0w72z9o1s1u22uzs.q20@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3zfNAYQwKAMg6o0w72z9o1s1u22uzs.q20@flex--samitolvanen.bounces.google.com;
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

The kernel has several assembly functions that are not directly callable
from C. Use an opaque type for these function prototypes to make misuse
harder, and to avoid the need to annotate references to these functions
for Clang's Control-Flow Integrity (CFI).

Suggested-by: Andy Lutomirski <luto@amacapital.net>
Suggested-by: Alexander Lobakin <alobakin@pm.me>
Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 arch/x86/include/asm/ftrace.h         |  2 +-
 arch/x86/include/asm/idtentry.h       | 10 +++++-----
 arch/x86/include/asm/page_64.h        |  7 ++++---
 arch/x86/include/asm/paravirt_types.h |  3 ++-
 arch/x86/include/asm/processor.h      |  2 +-
 arch/x86/include/asm/proto.h          | 25 +++++++++++++------------
 arch/x86/include/asm/uaccess_64.h     |  9 +++------
 arch/x86/kernel/alternative.c         |  2 +-
 arch/x86/kernel/ftrace.c              |  2 +-
 arch/x86/kernel/paravirt.c            |  4 ++--
 arch/x86/kvm/emulate.c                |  4 ++--
 arch/x86/kvm/kvm_emulate.h            |  9 ++-------
 arch/x86/xen/enlighten_pv.c           |  6 +++---
 arch/x86/xen/xen-ops.h                | 10 +++++-----
 14 files changed, 45 insertions(+), 50 deletions(-)

diff --git a/arch/x86/include/asm/ftrace.h b/arch/x86/include/asm/ftrace.h
index 9f3130f40807..54d23f421c16 100644
--- a/arch/x86/include/asm/ftrace.h
+++ b/arch/x86/include/asm/ftrace.h
@@ -17,7 +17,7 @@
 
 #ifndef __ASSEMBLY__
 extern atomic_t modifying_ftrace_code;
-extern void __fentry__(void);
+DECLARE_ASM_FUNC_SYMBOL(__fentry__);
 
 static inline unsigned long ftrace_call_adjust(unsigned long addr)
 {
diff --git a/arch/x86/include/asm/idtentry.h b/arch/x86/include/asm/idtentry.h
index 1345088e9902..2f6d0528bdd2 100644
--- a/arch/x86/include/asm/idtentry.h
+++ b/arch/x86/include/asm/idtentry.h
@@ -27,8 +27,8 @@
  * as well which is used to emit the entry stubs in entry_32/64.S.
  */
 #define DECLARE_IDTENTRY(vector, func)					\
-	asmlinkage void asm_##func(void);				\
-	asmlinkage void xen_asm_##func(void);				\
+	DECLARE_ASM_FUNC_SYMBOL(asm_##func);				\
+	DECLARE_ASM_FUNC_SYMBOL(xen_asm_##func);				\
 	__visible void func(struct pt_regs *regs)
 
 /**
@@ -78,8 +78,8 @@ static __always_inline void __##func(struct pt_regs *regs)
  * C-handler.
  */
 #define DECLARE_IDTENTRY_ERRORCODE(vector, func)			\
-	asmlinkage void asm_##func(void);				\
-	asmlinkage void xen_asm_##func(void);				\
+	DECLARE_ASM_FUNC_SYMBOL(asm_##func);				\
+	DECLARE_ASM_FUNC_SYMBOL(xen_asm_##func);				\
 	__visible void func(struct pt_regs *regs, unsigned long error_code)
 
 /**
@@ -386,7 +386,7 @@ static __always_inline void __##func(struct pt_regs *regs)
  * - The C handler called from the C shim
  */
 #define DECLARE_IDTENTRY_DF(vector, func)				\
-	asmlinkage void asm_##func(void);				\
+	DECLARE_ASM_FUNC_SYMBOL(asm_##func);				\
 	__visible void func(struct pt_regs *regs,			\
 			    unsigned long error_code,			\
 			    unsigned long address)
diff --git a/arch/x86/include/asm/page_64.h b/arch/x86/include/asm/page_64.h
index 4bde0dc66100..d6760b6773de 100644
--- a/arch/x86/include/asm/page_64.h
+++ b/arch/x86/include/asm/page_64.h
@@ -5,6 +5,7 @@
 #include <asm/page_64_types.h>
 
 #ifndef __ASSEMBLY__
+#include <linux/linkage.h>
 #include <asm/alternative.h>
 
 /* duplicated to the one in bootmem.h */
@@ -40,9 +41,9 @@ extern unsigned long __phys_addr_symbol(unsigned long);
 #define pfn_valid(pfn)          ((pfn) < max_pfn)
 #endif
 
-void clear_page_orig(void *page);
-void clear_page_rep(void *page);
-void clear_page_erms(void *page);
+DECLARE_ASM_FUNC_SYMBOL(clear_page_orig);
+DECLARE_ASM_FUNC_SYMBOL(clear_page_rep);
+DECLARE_ASM_FUNC_SYMBOL(clear_page_erms);
 
 static inline void clear_page(void *page)
 {
diff --git a/arch/x86/include/asm/paravirt_types.h b/arch/x86/include/asm/paravirt_types.h
index d9d6b0203ec4..dfaa50d20d6a 100644
--- a/arch/x86/include/asm/paravirt_types.h
+++ b/arch/x86/include/asm/paravirt_types.h
@@ -38,6 +38,7 @@
 #include <asm/desc_defs.h>
 #include <asm/pgtable_types.h>
 #include <asm/nospec-branch.h>
+#include <asm/proto.h>
 
 struct page;
 struct thread_struct;
@@ -271,7 +272,7 @@ struct paravirt_patch_template {
 
 extern struct pv_info pv_info;
 extern struct paravirt_patch_template pv_ops;
-extern void (*paravirt_iret)(void);
+extern asm_func_ptr paravirt_iret;
 
 #define PARAVIRT_PATCH(x)					\
 	(offsetof(struct paravirt_patch_template, x) / sizeof(void *))
diff --git a/arch/x86/include/asm/processor.h b/arch/x86/include/asm/processor.h
index 9ad2acaaae9b..3f5454c9b121 100644
--- a/arch/x86/include/asm/processor.h
+++ b/arch/x86/include/asm/processor.h
@@ -449,7 +449,7 @@ static inline unsigned long cpu_kernelmode_gs_base(int cpu)
 
 DECLARE_PER_CPU(void *, hardirq_stack_ptr);
 DECLARE_PER_CPU(bool, hardirq_stack_inuse);
-extern asmlinkage void ignore_sysret(void);
+DECLARE_ASM_FUNC_SYMBOL(ignore_sysret);
 
 /* Save actual FS/GS selectors and bases to current->thread */
 void current_save_fsgs(void);
diff --git a/arch/x86/include/asm/proto.h b/arch/x86/include/asm/proto.h
index 8c5d1910a848..a6aa64eb3657 100644
--- a/arch/x86/include/asm/proto.h
+++ b/arch/x86/include/asm/proto.h
@@ -2,6 +2,7 @@
 #ifndef _ASM_X86_PROTO_H
 #define _ASM_X86_PROTO_H
 
+#include <linux/linkage.h>
 #include <asm/ldt.h>
 
 struct task_struct;
@@ -11,26 +12,26 @@ struct task_struct;
 void syscall_init(void);
 
 #ifdef CONFIG_X86_64
-void entry_SYSCALL_64(void);
-void entry_SYSCALL_64_safe_stack(void);
+DECLARE_ASM_FUNC_SYMBOL(entry_SYSCALL_64);
+DECLARE_ASM_FUNC_SYMBOL(entry_SYSCALL_64_safe_stack);
 long do_arch_prctl_64(struct task_struct *task, int option, unsigned long arg2);
 #endif
 
 #ifdef CONFIG_X86_32
-void entry_INT80_32(void);
-void entry_SYSENTER_32(void);
-void __begin_SYSENTER_singlestep_region(void);
-void __end_SYSENTER_singlestep_region(void);
+DECLARE_ASM_FUNC_SYMBOL(entry_INT80_32);
+DECLARE_ASM_FUNC_SYMBOL(entry_SYSENTER_32);
+DECLARE_ASM_FUNC_SYMBOL(__begin_SYSENTER_singlestep_region);
+DECLARE_ASM_FUNC_SYMBOL(__end_SYSENTER_singlestep_region);
 #endif
 
 #ifdef CONFIG_IA32_EMULATION
-void entry_SYSENTER_compat(void);
-void __end_entry_SYSENTER_compat(void);
-void entry_SYSCALL_compat(void);
-void entry_SYSCALL_compat_safe_stack(void);
-void entry_INT80_compat(void);
+DECLARE_ASM_FUNC_SYMBOL(entry_SYSENTER_compat);
+DECLARE_ASM_FUNC_SYMBOL(__end_entry_SYSENTER_compat);
+DECLARE_ASM_FUNC_SYMBOL(entry_SYSCALL_compat);
+DECLARE_ASM_FUNC_SYMBOL(entry_SYSCALL_compat_safe_stack);
+DECLARE_ASM_FUNC_SYMBOL(entry_INT80_compat);
 #ifdef CONFIG_XEN_PV
-void xen_entry_INT80_compat(void);
+DECLARE_ASM_FUNC_SYMBOL(xen_entry_INT80_compat);
 #endif
 #endif
 
diff --git a/arch/x86/include/asm/uaccess_64.h b/arch/x86/include/asm/uaccess_64.h
index 45697e04d771..df2be1efa35e 100644
--- a/arch/x86/include/asm/uaccess_64.h
+++ b/arch/x86/include/asm/uaccess_64.h
@@ -17,12 +17,9 @@
  */
 
 /* Handles exceptions in both to and from, but doesn't do access_ok */
-__must_check unsigned long
-copy_user_enhanced_fast_string(void *to, const void *from, unsigned len);
-__must_check unsigned long
-copy_user_generic_string(void *to, const void *from, unsigned len);
-__must_check unsigned long
-copy_user_generic_unrolled(void *to, const void *from, unsigned len);
+DECLARE_ASM_FUNC_SYMBOL(copy_user_enhanced_fast_string);
+DECLARE_ASM_FUNC_SYMBOL(copy_user_generic_string);
+DECLARE_ASM_FUNC_SYMBOL(copy_user_generic_unrolled);
 
 static __always_inline __must_check unsigned long
 copy_user_generic(void *to, const void *from, unsigned len)
diff --git a/arch/x86/kernel/alternative.c b/arch/x86/kernel/alternative.c
index e9da3dc71254..0c60a7fa6fa5 100644
--- a/arch/x86/kernel/alternative.c
+++ b/arch/x86/kernel/alternative.c
@@ -530,7 +530,7 @@ extern struct paravirt_patch_site __start_parainstructions[],
  * convention such that we can 'call' it from assembly.
  */
 
-extern void int3_magic(unsigned int *ptr); /* defined in asm */
+DECLARE_ASM_FUNC_SYMBOL(int3_magic);
 
 asm (
 "	.pushsection	.init.text, \"ax\", @progbits\n"
diff --git a/arch/x86/kernel/ftrace.c b/arch/x86/kernel/ftrace.c
index 1b3ce3b4a2a2..9e0c07a82b44 100644
--- a/arch/x86/kernel/ftrace.c
+++ b/arch/x86/kernel/ftrace.c
@@ -589,7 +589,7 @@ void arch_ftrace_trampoline_free(struct ftrace_ops *ops)
 #ifdef CONFIG_FUNCTION_GRAPH_TRACER
 
 #ifdef CONFIG_DYNAMIC_FTRACE
-extern void ftrace_graph_call(void);
+DECLARE_ASM_FUNC_SYMBOL(ftrace_graph_call);
 
 static const char *ftrace_jmp_replace(unsigned long ip, unsigned long addr)
 {
diff --git a/arch/x86/kernel/paravirt.c b/arch/x86/kernel/paravirt.c
index 04cafc057bed..4196902527d1 100644
--- a/arch/x86/kernel/paravirt.c
+++ b/arch/x86/kernel/paravirt.c
@@ -138,7 +138,7 @@ void paravirt_set_sched_clock(u64 (*func)(void))
 }
 
 /* These are in entry.S */
-extern void native_iret(void);
+DECLARE_ASM_FUNC_SYMBOL(native_iret);
 
 static struct resource reserve_ioports = {
 	.start = 0,
@@ -376,7 +376,7 @@ NOKPROBE_SYMBOL(native_get_debugreg);
 NOKPROBE_SYMBOL(native_set_debugreg);
 NOKPROBE_SYMBOL(native_load_idt);
 
-void (*paravirt_iret)(void) = native_iret;
+asm_func_ptr paravirt_iret = native_iret;
 #endif
 
 EXPORT_SYMBOL(pv_ops);
diff --git a/arch/x86/kvm/emulate.c b/arch/x86/kvm/emulate.c
index 2837110e66ed..1f81f939d982 100644
--- a/arch/x86/kvm/emulate.c
+++ b/arch/x86/kvm/emulate.c
@@ -201,7 +201,7 @@ struct opcode {
 		const struct escape *esc;
 		const struct instr_dual *idual;
 		const struct mode_dual *mdual;
-		void (*fastop)(struct fastop *fake);
+		fastop_t fastop;
 	} u;
 	int (*check_perm)(struct x86_emulate_ctxt *ctxt);
 };
@@ -322,7 +322,7 @@ static int fastop(struct x86_emulate_ctxt *ctxt, fastop_t fop);
 	__FOP_RET(#name)
 
 #define FOP_START(op) \
-	extern void em_##op(struct fastop *fake); \
+	DECLARE_ASM_FUNC_SYMBOL(em_##op); \
 	asm(".pushsection .text, \"ax\" \n\t" \
 	    ".global em_" #op " \n\t" \
 	    ".align " __stringify(FASTOP_SIZE) " \n\t" \
diff --git a/arch/x86/kvm/kvm_emulate.h b/arch/x86/kvm/kvm_emulate.h
index 68b420289d7e..44c1a9324e1c 100644
--- a/arch/x86/kvm/kvm_emulate.h
+++ b/arch/x86/kvm/kvm_emulate.h
@@ -290,13 +290,8 @@ enum x86emul_mode {
 #define X86EMUL_SMM_MASK             (1 << 6)
 #define X86EMUL_SMM_INSIDE_NMI_MASK  (1 << 7)
 
-/*
- * fastop functions are declared as taking a never-defined fastop parameter,
- * so they can't be called from C directly.
- */
-struct fastop;
-
-typedef void (*fastop_t)(struct fastop *);
+/* fastop functions cannot be called from C directly. */
+typedef asm_func_ptr fastop_t;
 
 struct x86_emulate_ctxt {
 	void *vcpu;
diff --git a/arch/x86/xen/enlighten_pv.c b/arch/x86/xen/enlighten_pv.c
index 753f63734c13..398ba060185a 100644
--- a/arch/x86/xen/enlighten_pv.c
+++ b/arch/x86/xen/enlighten_pv.c
@@ -612,8 +612,8 @@ DEFINE_IDTENTRY_RAW(xenpv_exc_machine_check)
 #endif
 
 struct trap_array_entry {
-	void (*orig)(void);
-	void (*xen)(void);
+	asm_func_ptr orig;
+	asm_func_ptr xen;
 	bool ist_okay;
 };
 
@@ -672,7 +672,7 @@ static bool __ref get_trap_addr(void **addr, unsigned int ist)
 		struct trap_array_entry *entry = trap_array + nr;
 
 		if (*addr == entry->orig) {
-			*addr = entry->xen;
+			*addr = (void *)entry->xen;
 			ist_okay = entry->ist_okay;
 			found = true;
 			break;
diff --git a/arch/x86/xen/xen-ops.h b/arch/x86/xen/xen-ops.h
index 8d7ec49a35fb..b5ceb3007cfe 100644
--- a/arch/x86/xen/xen-ops.h
+++ b/arch/x86/xen/xen-ops.h
@@ -8,12 +8,12 @@
 #include <xen/xen-ops.h>
 
 /* These are code, but not functions.  Defined in entry.S */
-extern const char xen_failsafe_callback[];
+DECLARE_ASM_FUNC_SYMBOL(xen_failsafe_callback);
 
-void xen_sysenter_target(void);
+DECLARE_ASM_FUNC_SYMBOL(xen_sysenter_target);
 #ifdef CONFIG_X86_64
-void xen_syscall_target(void);
-void xen_syscall32_target(void);
+DECLARE_ASM_FUNC_SYMBOL(xen_syscall_target);
+DECLARE_ASM_FUNC_SYMBOL(xen_syscall32_target);
 #endif
 
 extern void *xen_initial_gdt;
@@ -136,7 +136,7 @@ __visible unsigned long xen_read_cr2(void);
 __visible unsigned long xen_read_cr2_direct(void);
 
 /* These are not functions, and cannot be called normally */
-__visible void xen_iret(void);
+DECLARE_ASM_FUNC_SYMBOL(xen_iret);
 
 extern int xen_panic_handler_init(void);
 
-- 
2.33.0.309.g3052b89438-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210914191045.2234020-10-samitolvanen%40google.com.
