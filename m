Return-Path: <clang-built-linux+bncBC2ORX645YPRBPOWZ35QKGQEOL2ZFLA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3a.google.com (mail-oo1-xc3a.google.com [IPv6:2607:f8b0:4864:20::c3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D40327DA66
	for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 23:46:39 +0200 (CEST)
Received: by mail-oo1-xc3a.google.com with SMTP id j12sf2738580ooi.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 14:46:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601415998; cv=pass;
        d=google.com; s=arc-20160816;
        b=JUKMhNmp7U3zzaxTjVtEIa6tKL9zp03MctUM6mhVuXA5tTJ3hWQ90m7Wqlce0B645z
         ZPHJ1ostae4dFUqgnEZQQVNGEkXfqicD0UjEwKdTMmP6OzRK6eMo8676y2XUETd4BNeg
         2gKbCMWymeng8HfaXDFUOOK/IZO2QQqY0jlgU21g+coTjfntPRjq7MVxPWFYkvaqZS4J
         clA4cfMFGaacmlmVPyBNezfAFoqW+Pqldbzi1whgzXrbyjh+s12lKAWhwKDB9j48oE6/
         eHbbqxLPRzkFUuHefgtXd6MgBKTOXE/jkW/CzLzbIw+Iy8kaI70X1gFGFeZjUErKwqe1
         Z0zg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=o+oHa+JwhYTauOx9175FyXV7fBZFe5koRhftMmpqlOU=;
        b=eelWXASqc5VdhOIWq1150ftu2qksi9qr5tv7D2klz116sGvM14P8ZbNKfcCWIWp7zu
         AO40uP50DiGEKpJpCJdoPIO5H7ElgXTxeRJgHHDbyl787GvgQm0pPb7AdtyJ9bICsWMs
         z0eZ0ECvxabSCus2HvcSVmvxvyy34SiJ3WHFQLXw9WXEl2mnb/lxmUxKdN1JYX6aoTqf
         WeebSbr/M+j1EQfR4ToSkyNA4GG3slvE167pN7GfljcLXNwGRMAQogE5HbTFiQ+H3gxM
         5uc4J8VKJ794lMYFXTThr/1CA61YfUDkuzya5etqktdFASjb8uBvPPF9YlwsniVjyhJ7
         stEg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dLCw4eUR;
       spf=pass (google.com: domain of 3pktzxwwkagmtbnjupmwbofohpphmf.dpn@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3PKtzXwwKAGMTBNJUPMWBOFOHPPHMF.DPN@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=o+oHa+JwhYTauOx9175FyXV7fBZFe5koRhftMmpqlOU=;
        b=cDfFTAzbl8KeanD/rkR3WrW2PY15AckXHgCQyzVo78LVAZsr8QvlBwaLKBeeP+24U1
         exG7c5gN+1xeYac53nqoNmuU6nc9+JK0uS7+XuyKizIZTup4rAtwLXjIRSfqxEDXgCx5
         NmUEOf4L20ZQWW4oSYb1KCQxl0i9Q7Aim1AEAaQUgMFW/GHBE6ESmIxnh4ulX3oVGG09
         e3/sjfhqWQvzUrK+pnTKCathgpGyYx9mG5V9YeNWEwVQ75gr4o4CWOBE1xL8PGxzVVJt
         fkIYJfI7yNJte1FEXM2HUegiI1pLccL+U6B/ANPBGFAblqaPNlv1QcIEy4zpgPLIbcTA
         pQxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=o+oHa+JwhYTauOx9175FyXV7fBZFe5koRhftMmpqlOU=;
        b=Er/5rPoUqd+u0WdLEcFMWDL+IUmSjZ2XHTyD4sCUqC1L4j+8wZO92cjs2wxGfk55vW
         3GQ5r1HxTqhOm9TSPqksauh9q+KuL9kzJo88K4pdpUM4eBTkzPgdmRbfTFpi6sa1RPTV
         IJTA7wg8h0xquxwxx6GKK6eosFEdQoJl1NXyd4oSvjZT6ARqnOVZlsCw8mkgE9B1W81d
         VMr+DvuDMVCpaNC1CQOkE1+nAwLq1RzQHXW1fgP6rcixGRgcBFZUb9jhxSCBNUWrwJmW
         2TxlLEtDdi8i8qMJZGuTyQGAOWp+Q4CRDgAlOg+w9GlG4dDMcqp9jBNoKvGbiuY7Fuva
         ZGBQ==
X-Gm-Message-State: AOAM5327X7AIN1QkhTBqpxQPEKQUEuIi1r6/KB1aQacJsZWSS/WWgv2L
	7tHs/KiuWr/D0r4rtRabfc8=
X-Google-Smtp-Source: ABdhPJwpKjY5LWeMPE7B7kDCrspELZQNOQ4zSnHXM5Aq/SUKjIRqbd4xWcKVJV+k/dJP/jnqCTuvxA==
X-Received: by 2002:a4a:b3c9:: with SMTP id q9mr6146513ooo.84.1601415997900;
        Tue, 29 Sep 2020 14:46:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:7ad8:: with SMTP id m24ls1488359otn.8.gmail; Tue, 29 Sep
 2020 14:46:37 -0700 (PDT)
X-Received: by 2002:a9d:6a57:: with SMTP id h23mr4460563otn.22.1601415997441;
        Tue, 29 Sep 2020 14:46:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601415997; cv=none;
        d=google.com; s=arc-20160816;
        b=pIjR9LHL5+2Ya/Zkpg5RVQNKrR6iSPPzhCWj9b2s/nO7cGlkwTBaiHotWXOXMXC44x
         dHPZX0huZpEedcvYD9Vudrt+1pSFJp56jfh17I4GG3k9oKNjo8M2TXOwYIoowTQZiBwr
         1dofc6FyFndyDCnnjwwQ4G42AosxsYjJqbJTZ3Pn3lzfxnlQkbFYhGUOcLQfQHohFqW+
         Lgk+z7mleeIZ71CI2E+aeufRwd4hRVh7LIVhfFn8p5K4Bv06ORtHmWMtDTERcLb/ySyy
         Bqpdlx/MB05PKRtW/clitVuOTo/Zt+VqxpdjtM9aIY14KKSPXH5J1LYuzoH3hfx33O/S
         0Ocw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=UwKpg/5Z1qItAC/Ii0Bxjjb/I6thanoVy1WalWl9wp0=;
        b=wULdiXlBk6rQXdY2E8Cs7I/aehuFUekRu2FgEWJK0Bo6NQAorAnzzTbe01kFDnu8C8
         kx2ERieZJpOKCT0AgcYQWtx2s8EYlZrN9vWij9iQj6S0ZB3tC28xZ7hDoVt8bbZnaLUp
         O6SPQvqVLcx08AFr5YncYSfoB9Yv5R8vJXEf1uvwD1HY5EKlgrAD6wOtsG/UIoiNFmNl
         vryZXvGtzjS2Yg8nTacQWPUM4PSeka1Qxvg5sWN7v1W89tobBwOtZmySSWnPTizHqM5i
         1NANMKYo6mFXam6/BJEndTYgHdRNXSUZg9svHzg2DWfmMWs1Fg2ptYtvmc8qXdI1WK+9
         SpJA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dLCw4eUR;
       spf=pass (google.com: domain of 3pktzxwwkagmtbnjupmwbofohpphmf.dpn@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3PKtzXwwKAGMTBNJUPMWBOFOHPPHMF.DPN@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id k7si380712oif.3.2020.09.29.14.46.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Sep 2020 14:46:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3pktzxwwkagmtbnjupmwbofohpphmf.dpn@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id r2so6382682yba.7
        for <clang-built-linux@googlegroups.com>; Tue, 29 Sep 2020 14:46:37 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a25:4c89:: with SMTP id
 z131mr8996298yba.256.1601415996927; Tue, 29 Sep 2020 14:46:36 -0700 (PDT)
Date: Tue, 29 Sep 2020 14:46:04 -0700
In-Reply-To: <20200929214631.3516445-1-samitolvanen@google.com>
Message-Id: <20200929214631.3516445-3-samitolvanen@google.com>
Mime-Version: 1.0
References: <20200929214631.3516445-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.709.gb0816b6eb0-goog
Subject: [PATCH v4 02/29] x86/asm: Replace __force_order with memory clobber
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>, 
	Steven Rostedt <rostedt@goodmis.org>
Cc: Peter Zijlstra <peterz@infradead.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Kees Cook <keescook@chromium.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, clang-built-linux@googlegroups.com, 
	kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, x86@kernel.org, 
	Arvind Sankar <nivedita@alum.mit.edu>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=dLCw4eUR;       spf=pass
 (google.com: domain of 3pktzxwwkagmtbnjupmwbofohpphmf.dpn@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3PKtzXwwKAGMTBNJUPMWBOFOHPPHMF.DPN@flex--samitolvanen.bounces.google.com;
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
Reviewed-by: Kees Cook <keescook@chromium.org>
Reviewed-by: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
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
2.28.0.709.gb0816b6eb0-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200929214631.3516445-3-samitolvanen%40google.com.
