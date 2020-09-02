Return-Path: <clang-built-linux+bncBCIO53XE7YHBBXHWX35AKGQEOKCICOI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x940.google.com (mail-ua1-x940.google.com [IPv6:2607:f8b0:4864:20::940])
	by mail.lfdr.de (Postfix) with ESMTPS id E28C925AF11
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Sep 2020 17:33:49 +0200 (CEST)
Received: by mail-ua1-x940.google.com with SMTP id 107sf1171995uah.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Sep 2020 08:33:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599060829; cv=pass;
        d=google.com; s=arc-20160816;
        b=F629XFJVZflC0boInet4UNqxyaxE72eKzZz7o/YhhwGPppqVtPZY8eNcd3lO4zcYMz
         0Zmh5W0e25Q1BxwF4rSiBtttC257P6120qnV45L87KEftxMN9fphst1JJa5NBFFIYkwa
         s37gp5NxziXKlC2+HoxbhTb1cd8auQVMI1hxHif+yu21RVTfHzGz5MIcKYYE0nvogWtT
         WhT8Fj2PA4l4avjomKHuKL0XudvI4F6RdSfet4gvZQRRhmxNKJXT7MAq9yOJOOk/MO2y
         0WfB3ZNPpPJnce7ZwEnLpGx2f5sCOTq4+ubgXBOfcl/3t8bZJrBSeOizt9bGPw3u5K+4
         6FqA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=MS7Udd61VtfOsK1Xunnhp9vn3f1PPxjSoeF05h2AN2o=;
        b=BM4idibghuRvEHs9VA5DLEu418Gu8ViJdUNPvag2JIpCvFMLS6+x58urZ0lD8QOmBf
         yhoUnAdGNbAcpV1ptq2t8S85i+c54pw28lG5EHHIfeLrubcuIN0aiFKNvuP7sM1FjT1Y
         +cFEMqTZbOiWLmRGC/Z4N2C3gKjNPhZk44BhU/9l7w1pNK1CAYDNaeqjHcJkP7lLqX9I
         KBNR88t3tLK7q5fZuGk5QBOk6JmG2DjT8uNNuPfS+YGL2tyWfu/l39uNIcrnyCdLb7lR
         dq010Ux8Wfj4ZwUkbt80cU+jgLjIntUb/RD5H3EZDPwLwgtW881a16hh4sWnCNlnJ4lF
         rohA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.160.193 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MS7Udd61VtfOsK1Xunnhp9vn3f1PPxjSoeF05h2AN2o=;
        b=QLLQyPgrWaR/wcw2BNU8tok6JuEYIggHpHaALVPIW0u83lD0dJSci6l67EkxyaUKP1
         QRetTR2E8vxYk2HvZpQ68zZ8aTcWci+qe4648MZD5/gv80K6pG3eN3x9pC5U5Lp/N+bD
         bsP5rf8bxv3XXfV/6n5Y4PtEDlQCXU9bmbMDwS8Y8yDXFGwF5P8rqNRc5q7uxePRqani
         VeRgusXzfZfk0ZFeNyu3JQOSkpeSLHLoXbnt+crODyqcgTuGpVtBWJ1D0RSKOolL+lY6
         h38SOJ6AKv3u3q/hmbVyvwvh0eNp2xlyqTeWMPyPBVQZfUP7oaKkCk7cwwj3JMuUW89O
         xcXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MS7Udd61VtfOsK1Xunnhp9vn3f1PPxjSoeF05h2AN2o=;
        b=nap0jIadfNIyB980jI+dtXANch7CIkLebic0BcyK0PpjIBtEz1J8tbPcyeTnLNI6lb
         cxNcd4Wf0j4aOBauH+XhDxgvEyZieJBjok+WYRB/pSKtEYOeIURyvnMA9D+iu4rzXFWR
         O77OoIdUkoR2tIXWqvVMwlgfXZHqgjWzsc89oOrvDSJm44bClUNcFJRK1mDbGpQ+Sx5A
         amckF4Z5rVlzzfFcrYt1JX5t4jPa91aQclf/lEg5AFXzeTOcvQWPjC1IL857A949VuR5
         yea84vSt2hJU6k0kQizKf290oxlvTAV2a5UaXuSbtj5BF5cmmfs2f1Vt7zJ2k4iPAIPU
         n8mg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531kgeJWBEXFP6vRVkIYmAYx0T17ag0ZnpERWJVfn3gqwHHJBnEy
	IPTHPFkY6kTxJSmwqI7LuRQ=
X-Google-Smtp-Source: ABdhPJzBlhl4o0kFAturxcn5wl5S5Lj6ZOCWTGtqSeH1VK0KmrsGqRMme6/Dcm2OQpgBXe2cv7sldg==
X-Received: by 2002:a67:fbcc:: with SMTP id o12mr5873811vsr.213.1599060828800;
        Wed, 02 Sep 2020 08:33:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:3602:: with SMTP id d2ls156147vka.0.gmail; Wed, 02 Sep
 2020 08:33:48 -0700 (PDT)
X-Received: by 2002:a1f:1f0d:: with SMTP id f13mr3232347vkf.1.1599060828405;
        Wed, 02 Sep 2020 08:33:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599060828; cv=none;
        d=google.com; s=arc-20160816;
        b=CY+DLppxpBGy02bQXKuqq9BUU3+fM3+pe4OvbKtl/srGfxlEi1SUv5cgzpCl8XEh4Z
         b42Ru9/UcuHgaHhPj8TaYjgB4Uu4dWNdBn+sl6SxWOzFbshIwKrI33qhPE6s12HBI3Co
         5wVs0En+/Q1oradxhsv+eljBErqjk6s191cIGNEVBI928e8PB/is1qsUxog75e0TDe0w
         5qGGEXWtzB5HgRJrkS2FA3eeoF+IetjAjy+yd5v96as8DIueFeaPbsb2betmkiAzk62q
         hVt9vAtf6aPn/LzywDHIo+/ErNry3rf3dbQ7o3RPtEJoSiYlKJ/wx5KZHHUWIMPGRs/f
         oIHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=bZV9KGWZ5viva61/b9hVQgmVhPVV/tpGu2oJRA3hrXM=;
        b=qacZmvL+WQmteUBAzIL8IVKJzBoXTXGcMXFwVzh7vN2k4ANWmxCkjBDd28o5UNW+IG
         dPxQyc8rjORfp6+qMIVsM4sMnAy/tWWmgySgwnQy0nK+qJTpuxMmA48afqGfx9NMmBCK
         ckJZklcejYC3b/YfoAFnbO+9tXvrc+u7fXhjk9DU2JqWP6rCtnH75vUNLsYcPZg3+j4O
         NDK+4FxfqGVspxyDvDoaEJcDEQHcyVEsEQwfUF3/MszITptS+h7rowHs5lgEzX4fpzg6
         XWKdDu+2fAeKeI0ApAbQ4VlWeIr0CTCFNjhkvAh9p/OvzGLGIyhEnh1Kx125YfQbf4hi
         uRqw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.160.193 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qt1-f193.google.com (mail-qt1-f193.google.com. [209.85.160.193])
        by gmr-mx.google.com with ESMTPS id q10si1844uas.1.2020.09.02.08.33.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Sep 2020 08:33:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 209.85.160.193 as permitted sender) client-ip=209.85.160.193;
Received: by mail-qt1-f193.google.com with SMTP id t20so3864334qtr.8
        for <clang-built-linux@googlegroups.com>; Wed, 02 Sep 2020 08:33:48 -0700 (PDT)
X-Received: by 2002:ac8:7a6b:: with SMTP id w11mr6806456qtt.316.1599060827762;
        Wed, 02 Sep 2020 08:33:47 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id v42sm5195260qth.35.2020.09.02.08.33.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Sep 2020 08:33:47 -0700 (PDT)
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
Subject: [PATCH v2] x86/asm: Replace __force_order with memory clobber
Date: Wed,  2 Sep 2020 11:33:46 -0400
Message-Id: <20200902153346.3296117-1-nivedita@alum.mit.edu>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200823212550.3377591-1-nivedita@alum.mit.edu>
References: <20200823212550.3377591-1-nivedita@alum.mit.edu>
MIME-Version: 1.0
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 209.85.160.193 as
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
prevent the compiler from reordering the inline asm.

The fact that the asm is volatile should be enough to prevent this
already, however older versions of GCC had a bug that could sometimes
result in reordering. This was fixed in 8.1, 7.3 and 6.5. Versions prior
to these, including 5.x and 4.9.x, may reorder volatile asm.

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
Changes from v1:
- Add lore link to email thread and mention state of 5.x/4.9.x in commit log

 arch/x86/boot/compressed/pgtable_64.c |  9 ---------
 arch/x86/include/asm/special_insns.h  | 27 ++++++++++++++-------------
 arch/x86/kernel/cpu/common.c          |  4 ++--
 3 files changed, 16 insertions(+), 24 deletions(-)

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
index 59a3e13204c3..8f7791217ef4 100644
--- a/arch/x86/include/asm/special_insns.h
+++ b/arch/x86/include/asm/special_insns.h
@@ -11,45 +11,46 @@
 #include <linux/jump_label.h>
 
 /*
- * Volatile isn't enough to prevent the compiler from reordering the
- * read/write functions for the control registers and messing everything up.
- * A memory clobber would solve the problem, but would prevent reordering of
- * all loads stores around it, which can hurt performance. Solution is to
- * use a variable and mimic reads and writes to it to enforce serialization
+ * The compiler should not reorder volatile asm, however older versions of GCC
+ * had a bug (which was fixed in 8.1, 7.3 and 6.5) where they could sometimes
+ * reorder volatile asm. The write functions are not a problem since they have
+ * memory clobbers preventing reordering. To prevent reads from being reordered
+ * with respect to writes, use a dummy memory operand.
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
@@ -64,10 +65,10 @@ static inline unsigned long native_read_cr4(void)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200902153346.3296117-1-nivedita%40alum.mit.edu.
