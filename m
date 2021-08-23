Return-Path: <clang-built-linux+bncBC2ORX645YPRBQ5OR6EQMGQECBKUWDQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id 92C163F4F11
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Aug 2021 19:13:40 +0200 (CEST)
Received: by mail-pl1-x63d.google.com with SMTP id p21-20020a1709028a95b029012c31764588sf4501390plo.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Aug 2021 10:13:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629738819; cv=pass;
        d=google.com; s=arc-20160816;
        b=sfbN93IOMy/b4P4pZ1U3Cvc6/RTh/WMsJ+a3X3eNqYBCbQ0p/pGkZv/GmMilyjec5A
         vsydTxrXC0vSxRc7O8z2oVGBR0iM3fO5PGoil18lI8prC+4sxvykho3lG7/+HXaD7fxU
         G43Zcoc6J2M2HI8Br5feoD1FTxlKpwixO/7JG/9C2XSvN1Gw7tjDjS+w4XncTDyN22+d
         DDXVzVfSugEIg+CaymtU8kepAI3U00aEX4rvOmFrQZKM/I0RQKvnYR+vpd/RWU5yxBvt
         mfGTEiGfrUWBcTQxpabywcAcv5i/algl3BZLJfmqSbSmg84Xlmy6Hyglh0ux+FYXw9H3
         LPUw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=gg+x9FywIXCadE26NKe72qk27mbd9+tFe6xRXCexAns=;
        b=XAvgBbGUz1as2TDcBjiJsGok2G2TIZzC1HZyLhlZeNfeQp/fRcB5CyF/9J1+Q+rgEe
         u9lR3EbAoky0pRgEayjifIWQUFTYlMNxVTCtCzdIr4kTiGKGMVZUH/fxJqbE8QId2VO9
         j5V+PTWAGUG50/atBGvzRx6Jy64U9loNWaHQpfBUaGel3LuihBv7GfGzhkbYM/UBKXzR
         D0O0imDnAu3ieBoLv6IpMxjBGTAx9qwKgVuIJPr47rmcK+RooVtdQ7B9fY/WDnEgufKk
         vUCOQQPlsWJRfC64Qo0V78l2MSaFjd7FqgSS0YEqf0OkH4neXXNkcv5Q70EtO2iHKQN6
         JzCw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=TjOoo4Js;
       spf=pass (google.com: domain of 3qdcjyqwkai4as40b63ds5w5y66y3w.u64@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3QdcjYQwKAI4As40B63Ds5w5y66y3w.u64@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gg+x9FywIXCadE26NKe72qk27mbd9+tFe6xRXCexAns=;
        b=nVRUQw00G5YqtTFYqUGqRVcwAEK0msah8PXOSeTCZ7ZOS48c5g3PmYJXF7dGtqjTD4
         j60QBunYt5EZ9oqegelpoNM4Ye/i35T6Tv83lOXEg6sFmO5DMUBWNtJCsstX4PBokV97
         420fqxjUSUByJCNl+eBNS6stI5Tjta3/aqCl8GxPefFgNvb7sBp7tEXFHWMt3rXcToWx
         b9rR8nQ2DfJnfIUL4NoyeaBoqvpzMSjAf+eDVz+syxFvMQ6zJfUqDFJdZ9n9GNjQPYWj
         owDi93akTDiUep6nxmXhuSXi0mcyOVs1RRRueW9DZVeYLSj8MVsVI84fwmd14cTfxt5T
         fpZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gg+x9FywIXCadE26NKe72qk27mbd9+tFe6xRXCexAns=;
        b=Gyb1Ylc3aDWWLXKdYLGhUbueKV49BX1mJwf95+zGZmgottol/LVYaQ1dejxF3cKkrT
         Vnk9wDZB1A80IcU1ifQj/tiEIZMc7OAtSU1IZd2SYg8UrVUtArrq9orwhhYfhx2ZKcSH
         BhHqijPXJN/nUj8e+RTn2XEtXIbYvZlKiVsmcsDsT6DJYI77HC5rmGlDt9hq85Klp6eh
         gctL2S6sM4gPNJ4lahnBhuIrNEr/OsAOoHe4sYRLcPC3yzXoPlmStskeu9V87tPjz0kh
         K5aRpAQnxuPqjQZHf1E/nTmGQkptwhbaFX6oXvsS6KytEDRKLm6Lgbr9F0ot27SVCPQh
         7qVg==
X-Gm-Message-State: AOAM531JoZ5gNaK1+km6PdVM1D+58mRN9dzHYR8EaCFiEoYDyPd0kecz
	ZDVzx+wQekn1PttessVN4/8=
X-Google-Smtp-Source: ABdhPJwvnhht/f69JSpZVG6/e+vMgRdNxELJ9f097WeHGFUvpVbBT8Znh/YN4Uca9sFa+OwOMVD7MQ==
X-Received: by 2002:a17:902:b40b:b029:12b:997f:5677 with SMTP id x11-20020a170902b40bb029012b997f5677mr29549196plr.11.1629738819159;
        Mon, 23 Aug 2021 10:13:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:520c:: with SMTP id o12ls7490160pgp.6.gmail; Mon, 23 Aug
 2021 10:13:38 -0700 (PDT)
X-Received: by 2002:a63:bf42:: with SMTP id i2mr6577457pgo.316.1629738818461;
        Mon, 23 Aug 2021 10:13:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629738818; cv=none;
        d=google.com; s=arc-20160816;
        b=1DWb+yWuaUi//+6YWvuZIteXlPEu3iVa1plTSYnp32XFklhDvDOR8ptBrnUfuPpmjk
         64QZnOTnGrAY1/TOvy0DFOPTLOvupBctiRnV61EuGpgVAz9XGtz02iQZrn1CgKI/y9Ca
         A/dfPXyiVWDCv8DITQDWik/N04KA9iSJDy1HGLXJePOt9No7y0MyYe050daqLc7rFmGf
         pd6fU0Keeq12liTwjLLM38A8O48ckZ6cKLreMCIEqxUnG2Rn/Bwu2LMj/DJq91lEL38p
         xAklv5fvQXJyshwPAcHeF1rz1c2jxBqbkQyuEOUOG4vrdveOFqsepmV22SSSuWa74Wcj
         DyRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=ncGPY7f56TkAnstpGt9m2A+2Y29Iso8+HIed7nMDf8U=;
        b=ZjgmE0IMrQ41D4ZC3+dL38hF+QnLIXufFzvkAFaD2QNfQCP7nOdEXm4q/FRj1gHggq
         4datFryfqOZUWaB9oPvR7CXo0qfJPPD33GDbmbZb33MqpWQndhC+GW+2jWOGWGAIQkKs
         acoB9UvuLKNK57H1HajsAsUxXk6F0yEsO4GWxF20TLqC1YnLrHeXNwGtzJu/d6Ql+dWt
         CCBfx0wAMPSBI0LWW7/iN2VbhvSkP60ZVm5pFOCyZ/iTLEMk+4M3OsV4+wxzbTeXuC/F
         +BjiKZw/NbcgzZ/TaS4uHA4lbn5uPYU5WV3K2XsCKQwml0GhfcfKx+KcoeePW00sSn7D
         uizA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=TjOoo4Js;
       spf=pass (google.com: domain of 3qdcjyqwkai4as40b63ds5w5y66y3w.u64@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3QdcjYQwKAI4As40B63Ds5w5y66y3w.u64@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id p3si896281pfo.3.2021.08.23.10.13.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Aug 2021 10:13:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3qdcjyqwkai4as40b63ds5w5y66y3w.u64@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id 83-20020a251956000000b0059948f541cbso4137281ybz.7
        for <clang-built-linux@googlegroups.com>; Mon, 23 Aug 2021 10:13:38 -0700 (PDT)
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:cc48:aa6a:f4ec:7d19])
 (user=samitolvanen job=sendgmr) by 2002:a25:a20a:: with SMTP id
 b10mr45385428ybi.478.1629738817828; Mon, 23 Aug 2021 10:13:37 -0700 (PDT)
Date: Mon, 23 Aug 2021 10:13:11 -0700
In-Reply-To: <20210823171318.2801096-1-samitolvanen@google.com>
Message-Id: <20210823171318.2801096-8-samitolvanen@google.com>
Mime-Version: 1.0
References: <20210823171318.2801096-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.33.0.rc2.250.ged5fa647cd-goog
Subject: [PATCH v2 07/14] x86: Use an opaque type for functions not callable
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
 header.i=@google.com header.s=20161025 header.b=TjOoo4Js;       spf=pass
 (google.com: domain of 3qdcjyqwkai4as40b63ds5w5y66y3w.u64@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3QdcjYQwKAI4As40B63Ds5w5y66y3w.u64@flex--samitolvanen.bounces.google.com;
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
index d9d6b0203ec4..7f71d52c55f5 100644
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
+extern asm_func_t paravirt_iret;
 
 #define PARAVIRT_PATCH(x)					\
 	(offsetof(struct paravirt_patch_template, x) / sizeof(void *))
diff --git a/arch/x86/include/asm/processor.h b/arch/x86/include/asm/processor.h
index f3020c54e2cb..005f519c2648 100644
--- a/arch/x86/include/asm/processor.h
+++ b/arch/x86/include/asm/processor.h
@@ -447,7 +447,7 @@ static inline unsigned long cpu_kernelmode_gs_base(int cpu)
 
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
index e7265a552f4f..502f72724b8d 100644
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
index 04cafc057bed..7015ec9ca134 100644
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
+asm_func_t paravirt_iret = native_iret;
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
index 68b420289d7e..c9449ebee067 100644
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
+typedef asm_func_t fastop_t;
 
 struct x86_emulate_ctxt {
 	void *vcpu;
diff --git a/arch/x86/xen/enlighten_pv.c b/arch/x86/xen/enlighten_pv.c
index 03149422dce2..bbd6cc58f6a8 100644
--- a/arch/x86/xen/enlighten_pv.c
+++ b/arch/x86/xen/enlighten_pv.c
@@ -613,8 +613,8 @@ DEFINE_IDTENTRY_RAW(xenpv_exc_machine_check)
 #endif
 
 struct trap_array_entry {
-	void (*orig)(void);
-	void (*xen)(void);
+	asm_func_t orig;
+	asm_func_t xen;
 	bool ist_okay;
 };
 
@@ -673,7 +673,7 @@ static bool __ref get_trap_addr(void **addr, unsigned int ist)
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
2.33.0.rc2.250.ged5fa647cd-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210823171318.2801096-8-samitolvanen%40google.com.
