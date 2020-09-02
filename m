Return-Path: <clang-built-linux+bncBCIO53XE7YHBBE6SYD5AKGQECMH5MCY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3c.google.com (mail-yb1-xb3c.google.com [IPv6:2607:f8b0:4864:20::b3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B7CE25B73A
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Sep 2020 01:21:57 +0200 (CEST)
Received: by mail-yb1-xb3c.google.com with SMTP id 129sf895008ybn.15
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Sep 2020 16:21:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599088916; cv=pass;
        d=google.com; s=arc-20160816;
        b=Az8LDG7SepMMhplaEdTYTm3UXbUdHnnx8foH5gP47yX/74DTKkjNlUxvY5sw3GD1/w
         H9W0KiaUMWAFURVwTT0U0UJNG9rdORdbort6hmlM856A5ZpGl06xEsrHw4eeLStTfdin
         alVC1HcgYIsNkGOeFi7riEkKzBmGGLsHo9WPWawm+MMVblrEV21BZBR8bOPgnYH6imsx
         Z/hWlNFUB6p60b2rowJGEfAdnnX3gXD/j/qtdfXRUJDQ5RlSDS2lECDb9SpP/FqQM20x
         c3k26Dj+A0BIdJK/attp8nzDNY9hMiwTHmjwm9WuWmjtsTadNQvLJwTIaHN9Om7dQ7yG
         RUZw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=p4K0qwyQm2pRS8L4Zjpx04YMBnZB/bxffoVufJpdZMg=;
        b=yRoPdZLcGMWTtPYSEqv3qNTqlGN51lyXfaZwGm+lYHKEnKHSsPOxVz8eQziGhLsaba
         Yh5qUAGHvmSygIEw9OzXr4af+80g5htm/vVGQHeR3DBWqSPysngrfLtp56xKStC2X8C3
         YttRvap1gb8LT67pP8N8+VN7JgosImT92uYAo4o0QkMgVMiGzVrHbiEP/Tb6/59dxORu
         Z13elesKkbhNaf4Yjv7OYiZMO4qUdZg/rpDf51dzCkKU/axsLdagB472qzoCh5Rb5vdd
         z6DoWEsTA/fIhcnmbZN3SGoQMzGZeplfr8oPROPgOFxRB2X6ldY4JAU/S5emmmaPaPRB
         oWnQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.222.194 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=p4K0qwyQm2pRS8L4Zjpx04YMBnZB/bxffoVufJpdZMg=;
        b=BBp13HIFQsxEjIiXOSadrLKsvmDmznCNVAMLYpKF1LNmOtz+WyoiGGAQfNmLyLNyEl
         6pZxzcfPIoX4yTIHj5f2Yw1Od3hZC4PjJocvzVAnQuTnMFA3lD5bS1TiJyusQHmVdUu6
         K7J/jLqLhygmQAuslzrW5YegM7U78g3ztEPSR3WXB3F2whGSJ+e6KmY+sKOhxTQGwSmP
         m82EqCzNJ/ehe66YVZSWCSUOj8VQwTgbAkWWjMuEY1hD6oxOOxl9eP7TPaNGIn0fjjDX
         EGOYAti5liCzZGGZ+l6GhiijDzNQpR7AGqAGAFkqCAgjfruo8DffaN6IlWCvMmmCGnuO
         Lw9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=p4K0qwyQm2pRS8L4Zjpx04YMBnZB/bxffoVufJpdZMg=;
        b=SdkCPEyaG4w9tYSdMWeV3S4JM98o/gqDGDV0sEfcejFNl5Gxpt3KhoyiziPT2ETWrU
         /MZWr7F7qxridtJdRhjoPayA8OIXF85fEz5rdLs3dHtD9JhLg/LI84YyuEWCKH7aLe8e
         ceeC8I2MbimtU1YyxQEBWvx8ENbAubQoAb9frAh5nfpFie9TePPq9DxEMoEhaynEUhcI
         hEdHgZ3+1GP4qpIhuIOF1pdsgR+9Yz4cNtOryqV5q2KzOkb64DkQFJsMmKWS4TeJyrBX
         ZWx/xuBGGeFgYI/31Hm258Cjyru6JJmLdU5t0LZDRDXdnvzqX9j9wDuCS8wCXVDUpVy5
         +2KA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531jT5X3mTNYAHM9VfCk8bvNXDbAiUlDwV9ErKzJGAeK5oUMVBIC
	fFMjJaMK4SLl+uadcRQ3nm0=
X-Google-Smtp-Source: ABdhPJyPTzzxQEz4Y1YzCnOtqA2HnYmVMIX2rbn5GQVek9IavN4eqZNSeXrxsoW/UdfUtSA/vRCfmg==
X-Received: by 2002:a25:dc0c:: with SMTP id y12mr87825ybe.395.1599088915993;
        Wed, 02 Sep 2020 16:21:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:1042:: with SMTP id 63ls1956565ybq.11.gmail; Wed, 02 Sep
 2020 16:21:55 -0700 (PDT)
X-Received: by 2002:a25:d74e:: with SMTP id o75mr203060ybg.50.1599088915570;
        Wed, 02 Sep 2020 16:21:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599088915; cv=none;
        d=google.com; s=arc-20160816;
        b=UbUcEEeyT2q/Xb7XnhPHsrMDFEfUyPxJje0C8NO8vJUTBS7bVtrvZef1PYoUxWofCw
         oi9JThgrQyu/d0bpkAWYDBXsNsJDAsu/LHy4sOhDYr7CHXdVQxZQThhstKGhVuxqw35S
         DauH0OZVFMMcIGGbpIjFwGdiyvVDIMjOUMXR8PF7IErd7GiVyevN5YeXD/kknT/xsYf5
         RKFtmjwZpGfmm/V6OMESuz/jUZxfReyCKUwa/PDI8BEAmy/g4QC1QjKr5UscOswBSObn
         oOwJUVxeE0YjsjCTCF6Q5ogxHo8Q0DF4w46Py8CujYZKbgRq2c5GKL6xy5kY3NGFHpB2
         i32Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=H5ja8wXXPTL1aHYYfv6bducjfQ0UQ02ZI62OStXU/P8=;
        b=rzzKtP1TiWAVLG/kkN0nCAuDhmh/ibeS6DdjKlabyJgGJB3gWpuoLLSQKecqNab8GP
         Lrgb7/dHtc1SPaVHE/ZkwJoAPS0c/H81bBrYsiqIeg7QM3e4W82Sm6tHFXNuM6YEx9e+
         7d4dfllaXtgczTOpnmCbhsuVvht4Y7pkGr2SbRg35j6Q61mjU/8FdX2QfwmW8Q+eW/GY
         p/Y1f0ZoXHExGQadQrV+F4+yEA8yNzkN+GE4aoCBfSF4tWahDLPle9kZNN+zAAqshfaJ
         uTg2kGLXxtLsLAYSZT/RvTupoLbceMrqVhPmxPTqVtARHcybdTjeBx4KYFZ9+N78P6pb
         RHog==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.222.194 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qk1-f194.google.com (mail-qk1-f194.google.com. [209.85.222.194])
        by gmr-mx.google.com with ESMTPS id m193si125021ybf.1.2020.09.02.16.21.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Sep 2020 16:21:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 209.85.222.194 as permitted sender) client-ip=209.85.222.194;
Received: by mail-qk1-f194.google.com with SMTP id p4so1470668qkf.0
        for <clang-built-linux@googlegroups.com>; Wed, 02 Sep 2020 16:21:55 -0700 (PDT)
X-Received: by 2002:a37:8047:: with SMTP id b68mr379008qkd.299.1599088915036;
        Wed, 02 Sep 2020 16:21:55 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id y10sm876573qkf.47.2020.09.02.16.21.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Sep 2020 16:21:54 -0700 (PDT)
From: Arvind Sankar <nivedita@alum.mit.edu>
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Segher Boessenkool <segher@kernel.crashing.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Nick Desaulniers <ndesaulniers@google.com>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Ingo Molnar <mingo@redhat.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Borislav Petkov <bp@alien8.de>,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	"H. Peter Anvin" <hpa@zytor.com>,
	"Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>,
	Kees Cook <keescook@chromium.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Juergen Gross <jgross@suse.com>,
	Andy Lutomirski <luto@kernel.org>,
	Andrew Cooper <andrew.cooper3@citrix.com>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Will Deacon <will@kernel.org>,
	nadav.amit@gmail.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH v3] x86/asm: Replace __force_order with memory clobber
Date: Wed,  2 Sep 2020 19:21:52 -0400
Message-Id: <20200902232152.3709896-1-nivedita@alum.mit.edu>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200823212550.3377591-1-nivedita@alum.mit.edu>
References: <20200823212550.3377591-1-nivedita@alum.mit.edu>
MIME-Version: 1.0
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 209.85.222.194 as
 permitted sender) smtp.mailfrom=niveditas98@gmail.com
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

Tested-by: Nathan Chancellor <natechancellor@gmail.com>
Tested-by: Sedat Dilek <sedat.dilek@gmail.com>
Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
Link: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=82602
Link: https://lore.kernel.org/lkml/20200527135329.1172644-1-arnd@arndb.de/
---
Changes from v2:
- Clarify commit log and source comment some more
Changes from v1:
- Add lore link to email thread and mention state of 5.x/4.9.x in commit log

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
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200902232152.3709896-1-nivedita%40alum.mit.edu.
