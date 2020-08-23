Return-Path: <clang-built-linux+bncBCIO53XE7YHBBYF5RP5AKGQEONVW37Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3f.google.com (mail-yb1-xb3f.google.com [IPv6:2607:f8b0:4864:20::b3f])
	by mail.lfdr.de (Postfix) with ESMTPS id EA3AF24EFD8
	for <lists+clang-built-linux@lfdr.de>; Sun, 23 Aug 2020 23:25:53 +0200 (CEST)
Received: by mail-yb1-xb3f.google.com with SMTP id a14sf8573087ybm.13
        for <lists+clang-built-linux@lfdr.de>; Sun, 23 Aug 2020 14:25:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598217953; cv=pass;
        d=google.com; s=arc-20160816;
        b=yks+63XQn6z9qrlx49aJIXHz8Z5/ASf8BImHS9cZslW3xJH5U76DuTRQSoAUi2k2wC
         pdBQ0vc+qnk61vVTe+zZNk9888/FjWU49pKIxBo27/Ks1uEtBOA2ZZMnKUs5BNA/bDyy
         rWHu6rArKpEyj9zm8R9a7Q+h2WOOSQCO3s4aXyqGiSvKKIYPfIchLt5B+d/x5MQsrkWR
         c1TiNS7Zs+OYgWJ3+Gw7TSwEF8Zfke8UScByeLbiPHHBMailkapBe0k+u5QcUE2NfL3+
         SYCpn7XvvDuJPVMBuG6dLSJ+72BmaZKNu9BpNbtECtsAjj7YhrM0IRxiyHh12q91/f/+
         1QvA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=qaVdpQFLb04/dri50mI3ZkP6TdJeq/ilyvF9UybHZZE=;
        b=YddRQP1cg+hmm81pEKgNmA3d4Imk63FD6B4aTbLtyeMyBINFXty4kXVNF04RPd9hEa
         N27X0ho0RiTjO0gk4QN4yNoDqkl7Eq9nkKbaZKBSrdqX+DJ5owG5zrPlu32oAbLsdfyX
         IsZl2b3XCbafBRzrEAPZIQSfgUtDflNiAAY9b8foJl+qeSRV8pOEiilxRq3POhfFKfCv
         Z9uLTppG9mSSW4Tn1+kMG6TI6idXyQY5dt7CwHl31HcAeUyLdrRuNnXdbXav7ldN4YFw
         mVulAV+5RxT4VX2AIm7hZU8GMnztwUn7n/xZQ9yb4+PZpBky/0IiULTwa3RXDi/ICFRu
         3DBw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.160.194 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qaVdpQFLb04/dri50mI3ZkP6TdJeq/ilyvF9UybHZZE=;
        b=kOzot9qvefdgHyMRZmCYIrcMWhAwvrjcoxVB4tjhlk13vkp3nWWtYMiNFuqqEogwbO
         HI8n9n69DFZOQBXiP7SJ8x7jRfY1O4urG8OCF6u8Qn0POh/WSgfc2KXBJrfG4qHytbyQ
         xbittMd426AKc5p8el9agCwf9nzqdh3NDQtAwePsNxvmrwY29LY0ZXZejlSR21t3SaFQ
         iuQBxRpPi3Ok6otf/m4QKTUnN0MtwgiShvMzydIhfZ/4IjAbEH8t4MSWqA9jGro8n5CR
         zxm+v9Wum8bzCY4BXCIgy1um6Gy0Hv0vWq+UpbxfjzcQIoNKiYjqk/tlmH1J+9z+tgaz
         rFwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qaVdpQFLb04/dri50mI3ZkP6TdJeq/ilyvF9UybHZZE=;
        b=ioiinwvYRubGvhVTJXpfqTM74W7TKmKOitnX6uM1FcPCAYfSql4OnpEpkVeSZJC+LZ
         fhajr9on7E0noOgZqFFkcW4EWY70KwKbJ8Y8csWVoXJNkxq+8G5Gk356P5qPQf1EPFgk
         v/wyxCxf7Mhob0gF+XZjiUH7A2mScP/esPzU3a7z1OWztmDNP6VJsycgIzHuDTNmoHmu
         P4QCEzSzJVE5tGcLUyBaulPayanco7ZwdqTwD+ZoqAbnyUO84LARilJu6RoipwtYIB4i
         ekrPvokB5GP5+yDRS6/YiXrodjLAXMMNrtdE8u5PUZnWpCzA20ss0qcHx7PhQ4VW52Vm
         Dm6w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532aURKMz/76nG8wIfAy5tTPDKABM80mChTtVjL+LU7RyZqjy+P5
	PWzhM3Me9gwQE6PiATx3tgE=
X-Google-Smtp-Source: ABdhPJxeM7jdk0sMyF6dckJpXe8U2DcEVuiII8sBbL1CE8XHYk2uD8dvTFYx08HFQTG54gwMobkFKw==
X-Received: by 2002:a25:9904:: with SMTP id z4mr3762595ybn.150.1598217952990;
        Sun, 23 Aug 2020 14:25:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:d0c9:: with SMTP id h192ls3003789ybg.3.gmail; Sun, 23
 Aug 2020 14:25:52 -0700 (PDT)
X-Received: by 2002:a25:2d13:: with SMTP id t19mr3714110ybt.113.1598217952581;
        Sun, 23 Aug 2020 14:25:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598217952; cv=none;
        d=google.com; s=arc-20160816;
        b=Vp2Q96l3zsFZh1Zxp5rA5xmmkTQpBYO7sMsPAEm44ykP7f/cbhGopw4862ZMoJgCsy
         2pKmfVJsoSRxN6YgsDsb5AsfJBE0hd7hgRKUEHddzDvx36CALgH2lSJzCVM1vbMlMC7q
         3JRXvy43UFx+oJTkmc7WXhs4MwXXRD0z3aTVL6tjHhma+dvgsalaHhPbiADNCdh8m1xX
         0qJN7Sawe3+FJ2zs0ZLI0yeEYqXcDFqt9zR/Qx4WYewLQ/axNL68MBiB3PgsJBodSnoK
         Aoidkn80chKLvdP1HW4r1ks/4QaPRc2bxc+j2RLvF9DRX6lBUUmlo1T6mhhRzhnWLmSN
         qRvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=jPzxTWmkt7DcrtrR8h9gNnnSXms3kOfVlguXP9QdfeE=;
        b=wW4Mkv/AHjG5GHZDA65Gk+Cc7P892KOVGpmaiDJkylvPhaPTyeLSig4WTtt67P1hT/
         oMLnSYbfv6Dd7z7rSRfe5uy575GXd9h9sU8UOkYp+dFJPKU+fpZl+lZKrcxyK8YbRchF
         FIV6QDiXWIuCuZTA7xiBaQNDAC4g/brgtwPwznqJ+2vSwn7I+1qOHW81qTpP+uLvKwAZ
         MOEkqMYQyWaopZsHqg76qyxCx+OvB8dJmt4e8Fur8jL5afiyrNs/9TCcJrKK0duq3+fO
         6VLHiKD1gv9ImMpSGMFtLPM6fpM3LIhr1eBGhgGPncobkoCQrjaNGRCdHeIVsdmzh9DB
         GEoQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.160.194 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qt1-f194.google.com (mail-qt1-f194.google.com. [209.85.160.194])
        by gmr-mx.google.com with ESMTPS id o14si465971ybm.5.2020.08.23.14.25.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 23 Aug 2020 14:25:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 209.85.160.194 as permitted sender) client-ip=209.85.160.194;
Received: by mail-qt1-f194.google.com with SMTP id x12so4944377qtp.1
        for <clang-built-linux@googlegroups.com>; Sun, 23 Aug 2020 14:25:52 -0700 (PDT)
X-Received: by 2002:ac8:4243:: with SMTP id r3mr2400191qtm.368.1598217952116;
        Sun, 23 Aug 2020 14:25:52 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id y24sm9253606qtv.71.2020.08.23.14.25.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Aug 2020 14:25:51 -0700 (PDT)
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
	Will Deacon <will@kernel.org>
Subject: [PATCH] x86/asm: Replace __force_order with memory clobber
Date: Sun, 23 Aug 2020 17:25:50 -0400
Message-Id: <20200823212550.3377591-1-nivedita@alum.mit.edu>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200823011652.GA1910689@rani.riverdale.lan>
References: <20200823011652.GA1910689@rani.riverdale.lan>
MIME-Version: 1.0
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 209.85.160.194 as
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
result in reordering. This was fixed in 8.1, 7.3 and 6.5.

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
Link: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=82602
---
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200823212550.3377591-1-nivedita%40alum.mit.edu.
