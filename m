Return-Path: <clang-built-linux+bncBC2ORX645YPRBN5KST5QKGQEIWMVXRY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73c.google.com (mail-qk1-x73c.google.com [IPv6:2607:f8b0:4864:20::73c])
	by mail.lfdr.de (Postfix) with ESMTPS id E25CA27061E
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Sep 2020 22:14:48 +0200 (CEST)
Received: by mail-qk1-x73c.google.com with SMTP id y17sf5620179qky.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Sep 2020 13:14:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600460088; cv=pass;
        d=google.com; s=arc-20160816;
        b=BulWwnY7AIXhKaOlpkNDHXEAbgSYQmvkqod56jxQayPhBdZWc+2mtCIMdX6OS7Tl/6
         rwtcwYI7Ga0KW+tmX5+VISHfBvytK472M4fsVEXJzXNcBda0jRhqf7ywinJnz9P2lZkk
         woDKFh3LD38xOje8aJSlz2T3PNV9iNHzebdS37MwzaZiN2GpdGlyqYjOShbqqN83JCTg
         LU8B/rHEE+qsYD9yVYSGyDqKdcZ1nDAHp+KqarvnM/pe8qZTyxnPrnyZcaN2AbePj4/a
         LhsGSBYiUMwKhZiWTf9zRosukSWLqzFFfyJMviO1P/Z6WpumOgeto58xZ4+0UxUrWq9G
         t6qA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=q2XrberO6Wu2ZSQgVxnjDKHKMPqQyPddEm8cqz9NjJ4=;
        b=dz95IMSh/ybS66pIAs6aZQCfc5GWwo5+84Re1w5haMiavNpOHqWJ5Uqz2+oNMDod6Q
         Q3eiM38CkF0T2MS8QLeP8kY3O58MDrkBSpP/YzTAA13VIOid/q02BTbpk3ZivgcQD7eo
         j6IQhkSmb8G4QNsD1XmpjkS6kxNXt/l7QpeNT3eAxqdAaVeJZI+eScXlNuKflMz9B1ma
         iC9kHzrEzs6sW7tlLDhU/hsxXHwjEtbk9JeynkCAygz4wlXdcWC1k0HXh5z3O+W/Kg1f
         yuh/C5bj/VYE+WtiZSXrXP9kheV+vSuaiq+0rvtm5/kfI6ECyeYtLSrXgANsKlDSNYu1
         eaFg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=LkhMujvC;
       spf=pass (google.com: domain of 3nxvlxwwkapyqykgrmjtylclemmejc.amk@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3NxVlXwwKAPYqYkgrmjtYlclemmejc.amk@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=q2XrberO6Wu2ZSQgVxnjDKHKMPqQyPddEm8cqz9NjJ4=;
        b=lJTNqfD0h4Pl8KgP0rHNGutY8XTQchbEle1XQ1GK/elnSsmFIZgYbDkxAyDOZ9PEU2
         tIsoOnhsMxL2zQLL4SjW3JsqfjoM1Twd0LdPM7Pj4m7N6kab4UK6guWcS1saUqldPUfM
         lleKAIYl7foHXL4DQHPidmVvJtD9lo4E9bsB7HpLZZ7lzcl55LH1dyZP/zrhpARmCnlb
         puNMo/KcY/Nk081x3X20wHijH/aIX0uvXuu4LrYUyQFRxb0CUFKLNgL9GwMj0mWlpgQn
         tGNFqdtxTqU4vAhjqKHs51aP1izUaohRJ26U6MUzdc+V4xCNSFF6HzbrRrh/UOD10Ohs
         HkMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=q2XrberO6Wu2ZSQgVxnjDKHKMPqQyPddEm8cqz9NjJ4=;
        b=ocq5PV2Jc3WhF8nkQZ+vrzTVhGMtj2mXdBImVNm2ny9L/AVTZf1/olyGF3Lryr6nez
         KR5CmtnkACvuE5+onSp1XtTRuBbnYO4SeVT/jnDT5MnrRo2bA/NyWe7wFG3QETadMkXd
         RY+IUqcTx+2QQ6++QFMq24FhBlX99JVr54CrwImm9BBOkdYjg7dvN3Dh7PUjAllSexa4
         p3EJX2ZjaFPOWrcaiybDFbgXTpL7Nm4jMsXOZCLnuBzQelPjrlkiOl9Tc/m6ZZxbydmc
         pkZCn3ruIa01owODMxR72hF3BAkQPwpCLqKkG5Fm/ULEx9ODM1aa9xmKdMjuOJlVWVTt
         mDUQ==
X-Gm-Message-State: AOAM533PWdDrP9laigJksf7gH5eKNJ++MBRumVOCUWB8/jTdLA83igIA
	FLk96sp6DyjKIlKskJuFZLM=
X-Google-Smtp-Source: ABdhPJy6fN0eXFQsF9wgJfvRBize0AG6+IAj7TjeqScTu/XqoiT1S+gIrHfkXbreQCvV8zyzL8e9Xg==
X-Received: by 2002:ac8:44da:: with SMTP id b26mr21796814qto.147.1600460087928;
        Fri, 18 Sep 2020 13:14:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6214:136e:: with SMTP id c14ls1659333qvw.10.gmail; Fri,
 18 Sep 2020 13:14:47 -0700 (PDT)
X-Received: by 2002:a0c:a612:: with SMTP id s18mr19088681qva.37.1600460087461;
        Fri, 18 Sep 2020 13:14:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600460087; cv=none;
        d=google.com; s=arc-20160816;
        b=zNPeV/dTiY2jXjPrBYm1czQOq9Bkz+IHT2SbKWbWMUIiwkwbXSjG+eBOH+xb0VxspY
         UgGJnF0xe7n0laxeooZbVP48sCgRlkgFvBLsrzr8H/q/d2akKHDU/qQqzxHknWHAHccn
         AHQUV+pc3f5AIxeNQ1BQsBbghSN7OU/rm+kWitUyXuZLkdYnnPWg4Y2JOlAAVplIXrb3
         1iyTvWj7UtX75gXa5YBdvvM+OYBj3DeDhFZjwUXnxPm1Alwk0RFN1sdRbE0cg7MuQYCW
         kJkXgxvQeTRLe3kCFMEw0oh+BFFqvDa4kypunXqk+4QWsiVyosSB3RzAULCTEZQqRTrK
         L4Hw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=46CPzhkDZEHeVpITNsapIjJxI0GjMO0SMNC0C8zkP90=;
        b=mOrAi/XOOce9UPjjacTVZ4BPiGTxgwweTrXMTholC0Alx65Oakix+SXimesKRyYQc1
         t4IJCrvobCXQjkTIFadb5VHMttLEwX1cRhPS8W8a4DyY1VaaQ0JCNQU2qmWJebNCYfTO
         8CnqbxhLSNEVz4vGRoUM/yb7gjN09+OeEZBVLL8tX6hPnYqznbVbb5tU9nKhLxL04hbn
         E60nE9GEXDUm9nHPi//mhFRV4mReUniDraciFaYjdwRoeSBajvKRpYC+RreTjHnhnDCV
         OwdmPV8Ugz11PMI3xYizkBU1j/4uU42WrlD9viQV9hk/O9Gh/ca3hNOn3nfPSfdDDyhk
         N4LA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=LkhMujvC;
       spf=pass (google.com: domain of 3nxvlxwwkapyqykgrmjtylclemmejc.amk@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3NxVlXwwKAPYqYkgrmjtYlclemmejc.amk@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x749.google.com (mail-qk1-x749.google.com. [2607:f8b0:4864:20::749])
        by gmr-mx.google.com with ESMTPS id a27si258803qtw.4.2020.09.18.13.14.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Sep 2020 13:14:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3nxvlxwwkapyqykgrmjtylclemmejc.amk@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) client-ip=2607:f8b0:4864:20::749;
Received: by mail-qk1-x749.google.com with SMTP id m203so5543407qke.16
        for <clang-built-linux@googlegroups.com>; Fri, 18 Sep 2020 13:14:47 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a0c:d443:: with SMTP id
 r3mr35786354qvh.17.1600460087054; Fri, 18 Sep 2020 13:14:47 -0700 (PDT)
Date: Fri, 18 Sep 2020 13:14:10 -0700
In-Reply-To: <20200918201436.2932360-1-samitolvanen@google.com>
Message-Id: <20200918201436.2932360-5-samitolvanen@google.com>
Mime-Version: 1.0
References: <20200918201436.2932360-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.681.g6f77f65b4e-goog
Subject: [PATCH v3 04/30] x86/asm: Replace __force_order with memory clobber
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
 header.i=@google.com header.s=20161025 header.b=LkhMujvC;       spf=pass
 (google.com: domain of 3nxvlxwwkapyqykgrmjtylclemmejc.amk@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3NxVlXwwKAPYqYkgrmjtYlclemmejc.amk@flex--samitolvanen.bounces.google.com;
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
Reviewed-by: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
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
2.28.0.681.g6f77f65b4e-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200918201436.2932360-5-samitolvanen%40google.com.
