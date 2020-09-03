Return-Path: <clang-built-linux+bncBC2ORX645YPRBA5FYX5AKGQEPYSXJYA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13f.google.com (mail-il1-x13f.google.com [IPv6:2607:f8b0:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D51B25CA41
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Sep 2020 22:31:01 +0200 (CEST)
Received: by mail-il1-x13f.google.com with SMTP id m80sf3190002ilb.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Sep 2020 13:31:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599165060; cv=pass;
        d=google.com; s=arc-20160816;
        b=fSgMLOGvoM98PFdqV4ITNk1DwpRyFlpI8Z83XqwuG5e3/rgIY41Jubd7aXnADJfCKD
         ZuUDwUJXFOO6olY/l/2wv1ktNUUl9NAjdTt4rrj4YU+30AgizurBgrRaBUpYp/S9DYST
         UVWsBLfqe/FC4AR9LwP2hl5fgEF1BssvzQES+STXs1Pl7T7O+X/Dmeozmnh0OV4OPxJ6
         64KO5DPqlVSYNFsC1ERQ/0X71fCQndHhHyFNV5a39Ibws5dfyS8m9bPHAla8E45ZF0Rb
         QRwhSAmbUEnTVuA9JAYaoCTBdZVoQHlyCToZ5V5oOb+da4WD5122tpXJ6RlIGjqGvBfI
         +wcw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=WB0JE39CV5Hi+GwvL17SX3cSb7oKffzGjuXSzogapzg=;
        b=gaqjmF/+niLqx1WqWilUfLTMw32+oa5Mri8u08hRzbvKZ84jZI5DtV5VgiWlTfDCAN
         xMXUnAJxJqhyk745fu5j0Rb9OkuxSa9wvLxYfPUngJd0RsTY9BFicpABkWhWHSPVhBna
         SZi38GOrhznCWzJPUaS+gIblQ6Bcdo6IuPir9MUYsU6PNOWx/d0bsldTkrpJXPOyUnUS
         Mwh/HvjrO4ed1Jza2cEf8F2uAPFBNMw8brPcEY3BfDeZSwCN53TqPUgL2X6GVNebevoc
         DnZrfT86GrMY01glQrvKv8tBLt+4s+sU/9wdVaLDim/9pHbsCQ3J0b/BQ74fflxpoprI
         2iyQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=r6if3o8k;
       spf=pass (google.com: domain of 3gljrxwwkag0dlxtezwglypyrzzrwp.nzx@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3glJRXwwKAG0dLXTeZWgLYPYRZZRWP.NZX@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=WB0JE39CV5Hi+GwvL17SX3cSb7oKffzGjuXSzogapzg=;
        b=cm7eKm6k2dBcFPpC77qYksI83dywNii04icG2LsEK3dODSL35N9Zcd9RcCMdgue9fl
         RIvtv3rjFZA+BfzI3B7snCcpkJx7/NyqoDLWwfZXTeS5aTI1rXBubHD7Y1u5cGqcrqYX
         Fgfg5Eumff7aPUuoJQCNn9yWS9Mmsdg8qTQacgShYyPYS0u8ZXKWaZ0TQU7ESu5oaT+a
         aDmDFj9SVUTSB5Ruv23R3DE5RPD7ATrfLL5Jcrf3AuDJj7rPTVK5QK48kjFgEmzjdi4n
         IskQsJVWYWkHUTaTZL8Z8YzJlCAgFotwhNVJewE2IZq6i7HIvnlDohkYQbF9H+hNYRHR
         uLeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WB0JE39CV5Hi+GwvL17SX3cSb7oKffzGjuXSzogapzg=;
        b=HLax6HYczE6lcCDgCUjG0fvxbmnRA/hwQ3KAi9ECup0dnkAAH/nkFzzDU4IyNvSHwm
         NzqVcUjSJ2l/6zRWclG0rLL8i4bvbOnJaO69Fc6AxSZbvCG7KZz9aOZBh4ITw1jcsw6J
         Kmdc66BL7dJmad7X9eTnERu4PX3pY0zidy+VZh7e6er6MfQup57HxAzI2cmCR8DxBCTW
         yk7K6Apr33bAcimB3ywFfF8cax46EVHs/JgJfYmUZPUcGmV0lRknvliizzBJKiwZmV8n
         KUaTEsXnO6u8Z7A+VxmRnK6ap+VvehYAOa0ewXttUdrpfzWqNCeXTLYoNSGBPrt9Tkn9
         6zXw==
X-Gm-Message-State: AOAM530eS2QQoGTHFZs2Ihidimx27vc2W5dHr5bmIwCXXGCTFYTQBvKh
	b3PsBPSChNS7xvA3Fu/yCQw=
X-Google-Smtp-Source: ABdhPJw4TG+CJ9FWGHJXqa30pDdVA2qLVUwTGbP34Nd6PjIH5dU2fJguGMQYioN1XMMkExETFmeZ7Q==
X-Received: by 2002:a02:cdc5:: with SMTP id m5mr4939971jap.15.1599165059926;
        Thu, 03 Sep 2020 13:30:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:8897:: with SMTP id d23ls1229604ioo.10.gmail; Thu, 03
 Sep 2020 13:30:59 -0700 (PDT)
X-Received: by 2002:a5d:8d95:: with SMTP id b21mr4647586ioj.68.1599165059512;
        Thu, 03 Sep 2020 13:30:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599165059; cv=none;
        d=google.com; s=arc-20160816;
        b=0V5Rml5roXh+cY/tIO30OrZuWWBhMjL8wAPC/gW38o/qaNTONljB0kxYvz45zbx2jp
         CdpzmF55oFq7izXeQK+7q57n1zZc3tZwWniUhiIQrwGrRVFVf0KsBYmcu/eQZoiKjJ8o
         e5oxXiQow+jLZLAnaFly3BQORpiQY/Zpx5mBiZyr8AgQX0wyj5dSqr2MQ5mN7AuLF1pd
         xCPZ9V8CuZW6ZCdU7WKCrv6uGWUMYmNdELYKZfzq5g2z8Y2CFjnEgEujSUBNfaiHmrKI
         Fdgy3eRtPhWPhSe2q4WrKO3SdgbC3c8jUklQV68krWBPAqwBS/3vtm7qBD44UvChzhfZ
         QALQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=Wz9KEqPe6jynvYZUGVwJeRVVfJ6wC2gosaUL7BUwAA8=;
        b=MDKskcbkIl4m6XaABozalwHinj9YtCNymCiwDJjZCBMe3M0t0I6xE3qCUUCySEluGq
         YbUHkpqiZHvbNa9P+M4UcTE3wskEC2nK/GwAIJaR9JqWHO5Zy5YSUEbPkKT51tFVWeTD
         K0EYjNLtRURyPMw06pY/gKNLvhwADXdMRwfvvQOg2hpCY9okIJMY7LdGUOFhVcJhWYQQ
         4ysWIvadHvbVQosI3FA/mTENK54J7GdAI1QpNg3NWzi7ufRu/w898LZBiv1k7dG3bsKk
         ryahkGsdpSiPrzoN2JbeoNyA4/opNey5YqoyjKF2IU5T7/2791dbkpnZEybeehXa/Rw4
         5kzg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=r6if3o8k;
       spf=pass (google.com: domain of 3gljrxwwkag0dlxtezwglypyrzzrwp.nzx@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3glJRXwwKAG0dLXTeZWgLYPYRZZRWP.NZX@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x54a.google.com (mail-pg1-x54a.google.com. [2607:f8b0:4864:20::54a])
        by gmr-mx.google.com with ESMTPS id n1si229971iom.0.2020.09.03.13.30.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Sep 2020 13:30:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3gljrxwwkag0dlxtezwglypyrzzrwp.nzx@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) client-ip=2607:f8b0:4864:20::54a;
Received: by mail-pg1-x54a.google.com with SMTP id l6so2487105pgm.15
        for <clang-built-linux@googlegroups.com>; Thu, 03 Sep 2020 13:30:59 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a62:14c5:0:b029:13c:1611:658a with
 SMTP id 188-20020a6214c50000b029013c1611658amr3803962pfu.7.1599165058704;
 Thu, 03 Sep 2020 13:30:58 -0700 (PDT)
Date: Thu,  3 Sep 2020 13:30:27 -0700
In-Reply-To: <20200903203053.3411268-1-samitolvanen@google.com>
Message-Id: <20200903203053.3411268-3-samitolvanen@google.com>
Mime-Version: 1.0
References: <20200624203200.78870-1-samitolvanen@google.com> <20200903203053.3411268-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.526.ge36021eeef-goog
Subject: [PATCH v2 02/28] x86/asm: Replace __force_order with memory clobber
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>, Steven Rostedt <rostedt@goodmis.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com, 
	linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, x86@kernel.org, 
	Arvind Sankar <nivedita@alum.mit.edu>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=r6if3o8k;       spf=pass
 (google.com: domain of 3gljrxwwkag0dlxtezwglypyrzzrwp.nzx@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3glJRXwwKAG0dLXTeZWgLYPYRZZRWP.NZX@flex--samitolvanen.bounces.google.com;
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

From: Arvind Sankar <nivedita@alum.mit.edu>

The CRn accessor functions use __force_order as a dummy operand to
prevent the compiler from reordering CRn reads/writes with respect to
each other.

The fact that the asm is volatile should be enough to prevent this:
volatile asm statements should be executed in program order. However GCC
4.9.x and 5.x have a bug that might result in reordering. This was fixed
in 8.1, 7.3 and 6.5. Versions prior to these, including 5.x and 4.9.x,
may reorder volatile asm statements with respect to each other.

There are some issues with __force_order as implemented:
- It is used only as an input operand for the write functions, and hence
  doesn't do anything additional to prevent reordering writes.
- It allows memory accesses to be cached/reordered across write
  functions, but CRn writes affect the semantics of memory accesses, so
  this could be dangerous.
- __force_order is not actually defined in the kernel proper, but the
  LLVM toolchain can in some cases require a definition: LLVM (as well
  as GCC 4.9) requires it for PIE code, which is why the compressed
  kernel has a definition, but also the clang integrated assembler may
  consider the address of __force_order to be significant, resulting in
  a reference that requires a definition.

Fix this by:
- Using a memory clobber for the write functions to additionally prevent
  caching/reordering memory accesses across CRn writes.
- Using a dummy input operand with an arbitrary constant address for the
  read functions, instead of a global variable. This will prevent reads
  from being reordered across writes, while allowing memory loads to be
  cached/reordered across CRn reads, which should be safe.

Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
Tested-by: Nathan Chancellor <natechancellor@gmail.com>
Tested-by: Sedat Dilek <sedat.dilek@gmail.com>
Link: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=82602
Link: https://lore.kernel.org/lkml/20200527135329.1172644-1-arnd@arndb.de/
---
 arch/x86/boot/compressed/pgtable_64.c |  9 ---------
 arch/x86/include/asm/special_insns.h  | 28 ++++++++++++++-------------
 arch/x86/kernel/cpu/common.c          |  4 ++--
 3 files changed, 17 insertions(+), 24 deletions(-)

diff --git a/arch/x86/boot/compressed/pgtable_64.c b/arch/x86/boot/compressed/pgtable_64.c
index c8862696a47b..7d0394f4ebf9 100644
--- a/arch/x86/boot/compressed/pgtable_64.c
+++ b/arch/x86/boot/compressed/pgtable_64.c
@@ -5,15 +5,6 @@
 #include "pgtable.h"
 #include "../string.h"
 
-/*
- * __force_order is used by special_insns.h asm code to force instruction
- * serialization.
- *
- * It is not referenced from the code, but GCC < 5 with -fPIE would fail
- * due to an undefined symbol. Define it to make these ancient GCCs work.
- */
-unsigned long __force_order;
-
 #define BIOS_START_MIN		0x20000U	/* 128K, less than this is insane */
 #define BIOS_START_MAX		0x9f000U	/* 640K, absolute maximum */
 
diff --git a/arch/x86/include/asm/special_insns.h b/arch/x86/include/asm/special_insns.h
index 59a3e13204c3..d6e3bb9363d2 100644
--- a/arch/x86/include/asm/special_insns.h
+++ b/arch/x86/include/asm/special_insns.h
@@ -11,45 +11,47 @@
 #include <linux/jump_label.h>
 
 /*
- * Volatile isn't enough to prevent the compiler from reordering the
- * read/write functions for the control registers and messing everything up.
- * A memory clobber would solve the problem, but would prevent reordering of
- * all loads stores around it, which can hurt performance. Solution is to
- * use a variable and mimic reads and writes to it to enforce serialization
+ * The compiler should not reorder volatile asm statements with respect to each
+ * other: they should execute in program order. However GCC 4.9.x and 5.x have
+ * a bug (which was fixed in 8.1, 7.3 and 6.5) where they might reorder
+ * volatile asm. The write functions are not affected since they have memory
+ * clobbers preventing reordering. To prevent reads from being reordered with
+ * respect to writes, use a dummy memory operand.
  */
-extern unsigned long __force_order;
+
+#define __FORCE_ORDER "m"(*(unsigned int *)0x1000UL)
 
 void native_write_cr0(unsigned long val);
 
 static inline unsigned long native_read_cr0(void)
 {
 	unsigned long val;
-	asm volatile("mov %%cr0,%0\n\t" : "=r" (val), "=m" (__force_order));
+	asm volatile("mov %%cr0,%0\n\t" : "=r" (val) : __FORCE_ORDER);
 	return val;
 }
 
 static __always_inline unsigned long native_read_cr2(void)
 {
 	unsigned long val;
-	asm volatile("mov %%cr2,%0\n\t" : "=r" (val), "=m" (__force_order));
+	asm volatile("mov %%cr2,%0\n\t" : "=r" (val) : __FORCE_ORDER);
 	return val;
 }
 
 static __always_inline void native_write_cr2(unsigned long val)
 {
-	asm volatile("mov %0,%%cr2": : "r" (val), "m" (__force_order));
+	asm volatile("mov %0,%%cr2": : "r" (val) : "memory");
 }
 
 static inline unsigned long __native_read_cr3(void)
 {
 	unsigned long val;
-	asm volatile("mov %%cr3,%0\n\t" : "=r" (val), "=m" (__force_order));
+	asm volatile("mov %%cr3,%0\n\t" : "=r" (val) : __FORCE_ORDER);
 	return val;
 }
 
 static inline void native_write_cr3(unsigned long val)
 {
-	asm volatile("mov %0,%%cr3": : "r" (val), "m" (__force_order));
+	asm volatile("mov %0,%%cr3": : "r" (val) : "memory");
 }
 
 static inline unsigned long native_read_cr4(void)
@@ -64,10 +66,10 @@ static inline unsigned long native_read_cr4(void)
 	asm volatile("1: mov %%cr4, %0\n"
 		     "2:\n"
 		     _ASM_EXTABLE(1b, 2b)
-		     : "=r" (val), "=m" (__force_order) : "0" (0));
+		     : "=r" (val) : "0" (0), __FORCE_ORDER);
 #else
 	/* CR4 always exists on x86_64. */
-	asm volatile("mov %%cr4,%0\n\t" : "=r" (val), "=m" (__force_order));
+	asm volatile("mov %%cr4,%0\n\t" : "=r" (val) : __FORCE_ORDER);
 #endif
 	return val;
 }
diff --git a/arch/x86/kernel/cpu/common.c b/arch/x86/kernel/cpu/common.c
index c5d6f17d9b9d..178499f90366 100644
--- a/arch/x86/kernel/cpu/common.c
+++ b/arch/x86/kernel/cpu/common.c
@@ -359,7 +359,7 @@ void native_write_cr0(unsigned long val)
 	unsigned long bits_missing = 0;
 
 set_register:
-	asm volatile("mov %0,%%cr0": "+r" (val), "+m" (__force_order));
+	asm volatile("mov %0,%%cr0": "+r" (val) : : "memory");
 
 	if (static_branch_likely(&cr_pinning)) {
 		if (unlikely((val & X86_CR0_WP) != X86_CR0_WP)) {
@@ -378,7 +378,7 @@ void native_write_cr4(unsigned long val)
 	unsigned long bits_changed = 0;
 
 set_register:
-	asm volatile("mov %0,%%cr4": "+r" (val), "+m" (cr4_pinned_bits));
+	asm volatile("mov %0,%%cr4": "+r" (val) : : "memory");
 
 	if (static_branch_likely(&cr_pinning)) {
 		if (unlikely((val & cr4_pinned_mask) != cr4_pinned_bits)) {
-- 
2.28.0.402.g5ffc5be6b7-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200903203053.3411268-3-samitolvanen%40google.com.
