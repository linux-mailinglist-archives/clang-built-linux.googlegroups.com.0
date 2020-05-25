Return-Path: <clang-built-linux+bncBCIO53XE7YHBBSU3WH3AKGQEPJ2WJOY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73f.google.com (mail-qk1-x73f.google.com [IPv6:2607:f8b0:4864:20::73f])
	by mail.lfdr.de (Postfix) with ESMTPS id 547BD1E17FD
	for <lists+clang-built-linux@lfdr.de>; Tue, 26 May 2020 00:59:24 +0200 (CEST)
Received: by mail-qk1-x73f.google.com with SMTP id m29sf3963074qkm.17
        for <lists+clang-built-linux@lfdr.de>; Mon, 25 May 2020 15:59:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590447563; cv=pass;
        d=google.com; s=arc-20160816;
        b=IXPahlAEBGtpM26gQzqVI+oz6oSvBCtjxAweU/PAwmmWVjeRr0HiTqFFaDb5EI0V1Y
         kW5NSPzMYb36eZRQf34Z7fm18pOQdiGhkVoI6Mt8QWQtZur1NYxav+AlddTrEBWaYTBc
         2F6pYN5dxISkOwl/zJbWBN52ExOamZMhoKHARIhkZ//lUpiMvdxCcFGilaBB+yuFTufu
         691FmhtZJ/IO/7vrJkCWewYdI1BEFx6w5aF/mNCSiBcbMgzjeluuOslz2d2WAkkv4DrK
         zC5IFbBVxapnl7+XcrSua3A7jL40BDznVJMd/iMJD+qJQ3E+oXpZuffaw09MM2r69KMM
         PgXg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=W2kzyYCaqIEvQ4YsvW6Ta8Idk4gnIqi51e/oTA1xd0M=;
        b=WrH01OHG/oX2o+3T6FHQHPeeoAT87JN5Ll9eoNNBirUsGasDR0n4gR0Cak65TQGyhA
         TmnSp3o3CiQrEmYXPDRAPklan857stwLVycwbRgpRUYmI/hpU+iQpWvyMvvZjdHnXInh
         mwARAr3sOgaS1XT8GJQJ2vxdQMeAEst0bqPdokeH7ASPZqSjgvVeilcUO38KywBAQCta
         mPsAUO9G+sSWDXjh9ao+DuHF/2dbFQSRyFoHkTvDbETPi3aNMTVAGAt+JWk1f4eznsZj
         344ljR5XNnz5JwIcp22G9bFyYqt85A6DYiAVVDK2naIkpFgBkei43wqLQRtvrGyKANdF
         67ZA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.160.195 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=W2kzyYCaqIEvQ4YsvW6Ta8Idk4gnIqi51e/oTA1xd0M=;
        b=hK+Sbx/aiYRrgeW0qf2sGR4Mccj1PxyjegUpwmBpS8VRuvg6bfeqp0PMxt1XDK9xYY
         0StEFX9cLVucdj44RMtIvs7nRVmpVZ4ueY5p1vWxySKapNcd6IXislLy8mQMmawGDEV2
         LzW+OXdDNVjmZj+AsV4QVl98sep5ozTgVKYOWHIEfqNjO0QRVBKQ1BZ/HIs7JX1XBwEf
         1dqPVhw1RUpvzfYFgaXkaGD16BKrg3WzdD+HGXNudbb5Am7EtH9gxYoG16IoqsNChVaL
         PYOiquHL2LoO82/KBi6iJzJzbN0vEXx0f/YNg9LVvfwvXG1UmenYdVtyD9lzU1LDwait
         oq3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=W2kzyYCaqIEvQ4YsvW6Ta8Idk4gnIqi51e/oTA1xd0M=;
        b=Wptc7VJoio3aVRiUHDgkAQMFv62aSLZbdWb9QeXRo+HSbJ3LgO4+HVplaoCMxLYhuW
         RHZh9gDfT33q71HrhfoSe7RaY2KcyQ9/PI+jiGGysXQCMfe0O6byW7VegS+5qEftd0QT
         f9Lbnp8UfFSTLt2jmQUvpur1EoI3U0n+hRLEi++C1z2Fw66fcWlQQCnRlEgNPdobywuR
         ckprLpORSfSrbCpg0pIBlD+59jWbSYkqeozU+i3PN4f5biikbO7IIr2bqgMV4Thj/kOw
         IBQhbhLUj+OdwLC40nmtXJSqsyUsZz83Ly+A45HwYAKh0Acd/4WysNP43FAknadn9QrY
         aKWw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533399PDBi2s2lezf0+2MZ+V/4JNIMl7RjjpplKZYAJ3P/BDqRyw
	tifa+P0730adBgt229ZPMiE=
X-Google-Smtp-Source: ABdhPJwX3KTu8XU7X1JHTIQhJ+awp51+cAu/kdjY3/Dlp+izbewSAlygEhq+iCmXQs0MUgsNrwsOHw==
X-Received: by 2002:ad4:5424:: with SMTP id g4mr18103838qvt.176.1590447562831;
        Mon, 25 May 2020 15:59:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:a914:: with SMTP id s20ls1318927qke.10.gmail; Mon, 25
 May 2020 15:59:22 -0700 (PDT)
X-Received: by 2002:a37:bd82:: with SMTP id n124mr29611013qkf.168.1590447562369;
        Mon, 25 May 2020 15:59:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590447562; cv=none;
        d=google.com; s=arc-20160816;
        b=BfJBSCesk4BMI60Tw/DelMThCYUkhoX3RWggzOrPGiNr5zA3e0w0RgxndSYJ9dJ/Z3
         QnPCHqAqYXKVq1FIUwrGBofqpaKfmimV7L0KMnuhOrn7RxK+ftO3cvpOlzV4hFdx8EyN
         kKY6sJyCBBGYbbjVBZBBg3Swrqg1uhHza0yD6uGflQCBjKUsKnrVz9yF3i1UgGDGtGRS
         EpgXoAr/CRlfqsEokcnSfaAwjdx3Pwj/Furz9M//OmgZbs6E8SM/4bYrzxlW/ZXr2kyK
         HVrU4tkCXwKxCdBy6/E+ULVrmFwjH5ry4rJS1mvMrA9nHDBKdG7NssSX46H7lVUwW+EM
         J5xw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=flO5nMR2MgLg6hfbAvPDBJFl8TJdefRhT31Z9lwqyJs=;
        b=J6CVS8Y6qWHw7TlRSCDQOoSCLq9kfs/Kx1/ptHRqevsA5jsxxuNekE5x+PIEhFcY6B
         v2m9e14OBm3AuvJkK2KXOuzcYR71JTUJJroG9zuEgJEpxJzOVuO50im1Evg/QP84rUJS
         qqvqt+qRj3L/FYyrb4ZjX/iGc3A3lKX0jTYrKO4ujraqRhvNO7nUmx3puf6cJNqDhjBT
         LmrLfUx0leNCoJLbnF04xWCnWQgsbOc3SMtmBE61vjH5WtKWwtK1XWKC/Bm4zkBJpIm6
         1jT2auEIAuFiDj2CUH63jkgcdMU9ep7bJKxDxYufVhkFdEO/jTT/2cEKnE3xuoFYVxCe
         uYJA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.160.195 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qt1-f195.google.com (mail-qt1-f195.google.com. [209.85.160.195])
        by gmr-mx.google.com with ESMTPS id s11si430186qtq.1.2020.05.25.15.59.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 May 2020 15:59:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 209.85.160.195 as permitted sender) client-ip=209.85.160.195;
Received: by mail-qt1-f195.google.com with SMTP id m44so14795312qtm.8
        for <clang-built-linux@googlegroups.com>; Mon, 25 May 2020 15:59:22 -0700 (PDT)
X-Received: by 2002:aed:206c:: with SMTP id 99mr19059071qta.87.1590447561806;
        Mon, 25 May 2020 15:59:21 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id d140sm15024585qkc.22.2020.05.25.15.59.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 May 2020 15:59:21 -0700 (PDT)
From: Arvind Sankar <nivedita@alum.mit.edu>
To: Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>,
	"H. Peter Anvin" <hpa@zytor.com>,
	x86@kernel.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Fangrui Song <maskray@google.com>,
	Dmitry Golovin <dima@golovin.in>,
	clang-built-linux@googlegroups.com,
	Ard Biesheuvel <ardb@kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Daniel Kiper <daniel.kiper@oracle.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/4] x86/boot: Remove run-time relocations from .head.text code
Date: Mon, 25 May 2020 18:59:16 -0400
Message-Id: <20200525225918.1624470-3-nivedita@alum.mit.edu>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200524212816.243139-1-nivedita@alum.mit.edu>
References: <20200524212816.243139-1-nivedita@alum.mit.edu>
MIME-Version: 1.0
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 209.85.160.195 as
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

The assembly code in head_{32,64}.S, while meant to be
position-independent, generates run-time relocations because it uses
instructions such as
	leal	gdt(%edx), %eax
which make the assembler and linker think that the code is using %edx as
an index into gdt, and hence gdt needs to be relocated to its run-time
address.

On 32-bit, with lld Dmitry Golovin reports that this results in a
link-time error with default options (i.e. unless -z notext is
explicitly passed):
  LD      arch/x86/boot/compressed/vmlinux
ld.lld: error: can't create dynamic relocation R_386_32 against local
symbol in readonly segment; recompile object files with -fPIC or pass
'-Wl,-z,notext' to allow text relocations in the output

With the BFD linker, this generates a warning during the build, if
--warn-shared-textrel is enabled, which at least Gentoo enables by
default:
  LD      arch/x86/boot/compressed/vmlinux
ld: arch/x86/boot/compressed/head_32.o: warning: relocation in read-only section `.head.text'
ld: warning: creating a DT_TEXTREL in object

On 64-bit, it is not possible to link the kernel as -pie with lld, and
it is only possible with a BFD linker that supports -z noreloc-overflow,
i.e. versions >2.26. This is because these instructions cannot really be
relocated: the displacement field is only 32-bits wide, and thus cannot
be relocated for a 64-bit load address. The -z noreloc-overflow option
simply overrides the linker error, and results in R_X86_64_RELATIVE
relocations that apply a 64-bit relocation to a 32-bit field anyway.
This happens to work because nothing will process these run-time
relocations.

Start fixing this by removing relocations from .head.text:
- On 32-bit, use a base register that holds the address of the GOT and
  reference symbol addresses using @GOTOFF, i.e.
	leal	gdt@GOTOFF(%edx), %eax
- On 64-bit, most of the code can (and already does) use %rip-relative
  addressing, however the .code32 bits can't, and the 64-bit code also
  needs to reference symbol addresses as they will be after moving the
  compressed kernel to the end of the decompression buffer.
  For these cases, reference the symbols as an offset to startup_32 to
  avoid creating relocations, i.e.
  	leal	(gdt-startup_32)(%bp), %eax
  This only works in .head.text as the subtraction cannot be represented
  as a PC-relative relocation unless startup_32 is in the same section
  as the code. Move efi32_pe_entry into .head.text so that it can use
  the same method to avoid relocations.

Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
---
 arch/x86/boot/compressed/head_32.S |  40 +++++------
 arch/x86/boot/compressed/head_64.S | 104 ++++++++++++++++++-----------
 2 files changed, 86 insertions(+), 58 deletions(-)

diff --git a/arch/x86/boot/compressed/head_32.S b/arch/x86/boot/compressed/head_32.S
index dfa4131c65df..66657bb99aae 100644
--- a/arch/x86/boot/compressed/head_32.S
+++ b/arch/x86/boot/compressed/head_32.S
@@ -73,10 +73,10 @@ SYM_FUNC_START(startup_32)
 	leal	(BP_scratch+4)(%esi), %esp
 	call	1f
 1:	popl	%edx
-	subl	$1b, %edx
+	addl	$_GLOBAL_OFFSET_TABLE_+(.-1b), %edx
 
 	/* Load new GDT */
-	leal	gdt(%edx), %eax
+	leal	gdt@GOTOFF(%edx), %eax
 	movl	%eax, 2(%eax)
 	lgdt	(%eax)
 
@@ -89,14 +89,16 @@ SYM_FUNC_START(startup_32)
 	movl	%eax, %ss
 
 /*
- * %edx contains the address we are loaded at by the boot loader and %ebx
- * contains the address where we should move the kernel image temporarily
- * for safe in-place decompression. %ebp contains the address that the kernel
- * will be decompressed to.
+ * %edx contains the address we are loaded at by the boot loader (plus the
+ * offset to the GOT).  The below code calculates %ebx to be the address where
+ * we should move the kernel image temporarily for safe in-place decompression
+ * (again, plus the offset to the GOT).
+ *
+ * %ebp is calculated to be the address that the kernel will be decompressed to.
  */
 
 #ifdef CONFIG_RELOCATABLE
-	movl	%edx, %ebx
+	leal	startup_32@GOTOFF(%edx), %ebx
 
 #ifdef CONFIG_EFI_STUB
 /*
@@ -107,7 +109,7 @@ SYM_FUNC_START(startup_32)
  *	image_offset = startup_32 - image_base
  * Otherwise image_offset will be zero and has no effect on the calculations.
  */
-	subl    image_offset(%edx), %ebx
+	subl    image_offset@GOTOFF(%edx), %ebx
 #endif
 
 	movl	BP_kernel_alignment(%esi), %eax
@@ -124,10 +126,10 @@ SYM_FUNC_START(startup_32)
 	movl	%ebx, %ebp	// Save the output address for later
 	/* Target address to relocate to for decompression */
 	addl    BP_init_size(%esi), %ebx
-	subl    $_end, %ebx
+	subl    $_end@GOTOFF, %ebx
 
 	/* Set up the stack */
-	leal	boot_stack_end(%ebx), %esp
+	leal	boot_stack_end@GOTOFF(%ebx), %esp
 
 	/* Zero EFLAGS */
 	pushl	$0
@@ -138,8 +140,8 @@ SYM_FUNC_START(startup_32)
  * where decompression in place becomes safe.
  */
 	pushl	%esi
-	leal	(_bss-4)(%edx), %esi
-	leal	(_bss-4)(%ebx), %edi
+	leal	(_bss@GOTOFF-4)(%edx), %esi
+	leal	(_bss@GOTOFF-4)(%ebx), %edi
 	movl	$(_bss - startup_32), %ecx
 	shrl	$2, %ecx
 	std
@@ -152,14 +154,14 @@ SYM_FUNC_START(startup_32)
 	 * during extract_kernel below. To avoid any issues, repoint the GDTR
 	 * to the new copy of the GDT.
 	 */
-	leal	gdt(%ebx), %eax
+	leal	gdt@GOTOFF(%ebx), %eax
 	movl	%eax, 2(%eax)
 	lgdt	(%eax)
 
 /*
  * Jump to the relocated address.
  */
-	leal	.Lrelocated(%ebx), %eax
+	leal	.Lrelocated@GOTOFF(%ebx), %eax
 	jmp	*%eax
 SYM_FUNC_END(startup_32)
 
@@ -169,7 +171,7 @@ SYM_FUNC_START_ALIAS(efi_stub_entry)
 	add	$0x4, %esp
 	movl	8(%esp), %esi	/* save boot_params pointer */
 	call	efi_main
-	leal	startup_32(%eax), %eax
+	/* efi_main returns the possibly relocated address of startup_32 */
 	jmp	*%eax
 SYM_FUNC_END(efi32_stub_entry)
 SYM_FUNC_END_ALIAS(efi_stub_entry)
@@ -182,8 +184,8 @@ SYM_FUNC_START_LOCAL_NOALIGN(.Lrelocated)
  * Clear BSS (stack is currently empty)
  */
 	xorl	%eax, %eax
-	leal	_bss(%ebx), %edi
-	leal	_ebss(%ebx), %ecx
+	leal	_bss@GOTOFF(%ebx), %edi
+	leal	_ebss@GOTOFF(%ebx), %ecx
 	subl	%edi, %ecx
 	shrl	$2, %ecx
 	rep	stosl
@@ -197,9 +199,9 @@ SYM_FUNC_START_LOCAL_NOALIGN(.Lrelocated)
 	pushl	%ebp		/* output address */
 
 	pushl	$z_input_len	/* input_len */
-	leal	input_data(%ebx), %eax
+	leal	input_data@GOTOFF(%ebx), %eax
 	pushl	%eax		/* input_data */
-	leal	boot_heap(%ebx), %eax
+	leal	boot_heap@GOTOFF(%ebx), %eax
 	pushl	%eax		/* heap area */
 	pushl	%esi		/* real mode pointer */
 	call	extract_kernel	/* returns kernel location in %eax */
diff --git a/arch/x86/boot/compressed/head_64.S b/arch/x86/boot/compressed/head_64.S
index 706fbf6eef53..18b0edcb23d2 100644
--- a/arch/x86/boot/compressed/head_64.S
+++ b/arch/x86/boot/compressed/head_64.S
@@ -42,6 +42,32 @@
 	.hidden _ebss
 
 	__HEAD
+
+/*
+ * This macro gives the relative virtual address of X, i.e. the offset of X
+ * from startup_32. This is the same as the link-time virtual address of X,
+ * since startup_32 is at 0, but defining it this way tells the
+ * assembler/linker that we do not want the actual run-time address of X. This
+ * prevents the linker from trying to create unwanted run-time relocation
+ * entries for the reference when the compressed kernel is linked as PIE.
+ *
+ * A reference X(%reg) will result in the link-time VA of X being stored with
+ * the instruction, and a run-time R_X86_64_RELATIVE relocation entry that
+ * adds the 64-bit base address where the kernel is loaded.
+ *
+ * Replacing it with (X-startup_32)(%reg) results in the offset being stored,
+ * and no run-time relocation.
+ *
+ * The macro should be used as a displacement with a base register containing
+ * the run-time address of startup_32 [i.e. rva(X)(%reg)], or as an immediate
+ * [$ rva(X)].
+ *
+ * This macro can only be used from within the .head.text section, since the
+ * expression requires startup_32 to be in the same section as the code being
+ * assembled.
+ */
+#define rva(X) ((X) - startup_32)
+
 	.code32
 SYM_FUNC_START(startup_32)
 	/*
@@ -64,10 +90,10 @@ SYM_FUNC_START(startup_32)
 	leal	(BP_scratch+4)(%esi), %esp
 	call	1f
 1:	popl	%ebp
-	subl	$1b, %ebp
+	subl	$ rva(1b), %ebp
 
 	/* Load new GDT with the 64bit segments using 32bit descriptor */
-	leal	gdt(%ebp), %eax
+	leal	rva(gdt)(%ebp), %eax
 	movl	%eax, 2(%eax)
 	lgdt	(%eax)
 
@@ -80,7 +106,7 @@ SYM_FUNC_START(startup_32)
 	movl	%eax, %ss
 
 /* setup a stack and make sure cpu supports long mode. */
-	leal	boot_stack_end(%ebp), %esp
+	leal	rva(boot_stack_end)(%ebp), %esp
 
 	call	verify_cpu
 	testl	%eax, %eax
@@ -107,7 +133,7 @@ SYM_FUNC_START(startup_32)
  *	image_offset = startup_32 - image_base
  * Otherwise image_offset will be zero and has no effect on the calculations.
  */
-	subl    image_offset(%ebp), %ebx
+	subl    rva(image_offset)(%ebp), %ebx
 #endif
 
 	movl	BP_kernel_alignment(%esi), %eax
@@ -123,7 +149,7 @@ SYM_FUNC_START(startup_32)
 
 	/* Target address to relocate to for decompression */
 	addl	BP_init_size(%esi), %ebx
-	subl	$_end, %ebx
+	subl	$ rva(_end), %ebx
 
 /*
  * Prepare for entering 64 bit mode
@@ -151,19 +177,19 @@ SYM_FUNC_START(startup_32)
 1:
 
 	/* Initialize Page tables to 0 */
-	leal	pgtable(%ebx), %edi
+	leal	rva(pgtable)(%ebx), %edi
 	xorl	%eax, %eax
 	movl	$(BOOT_INIT_PGT_SIZE/4), %ecx
 	rep	stosl
 
 	/* Build Level 4 */
-	leal	pgtable + 0(%ebx), %edi
+	leal	rva(pgtable + 0)(%ebx), %edi
 	leal	0x1007 (%edi), %eax
 	movl	%eax, 0(%edi)
 	addl	%edx, 4(%edi)
 
 	/* Build Level 3 */
-	leal	pgtable + 0x1000(%ebx), %edi
+	leal	rva(pgtable + 0x1000)(%ebx), %edi
 	leal	0x1007(%edi), %eax
 	movl	$4, %ecx
 1:	movl	%eax, 0x00(%edi)
@@ -174,7 +200,7 @@ SYM_FUNC_START(startup_32)
 	jnz	1b
 
 	/* Build Level 2 */
-	leal	pgtable + 0x2000(%ebx), %edi
+	leal	rva(pgtable + 0x2000)(%ebx), %edi
 	movl	$0x00000183, %eax
 	movl	$2048, %ecx
 1:	movl	%eax, 0(%edi)
@@ -185,7 +211,7 @@ SYM_FUNC_START(startup_32)
 	jnz	1b
 
 	/* Enable the boot page tables */
-	leal	pgtable(%ebx), %eax
+	leal	rva(pgtable)(%ebx), %eax
 	movl	%eax, %cr3
 
 	/* Enable Long mode in EFER (Extended Feature Enable Register) */
@@ -211,17 +237,17 @@ SYM_FUNC_START(startup_32)
 	 * used to perform that far jump.
 	 */
 	pushl	$__KERNEL_CS
-	leal	startup_64(%ebp), %eax
+	leal	rva(startup_64)(%ebp), %eax
 #ifdef CONFIG_EFI_MIXED
-	movl	efi32_boot_args(%ebp), %edi
+	movl	rva(efi32_boot_args)(%ebp), %edi
 	cmp	$0, %edi
 	jz	1f
-	leal	efi64_stub_entry(%ebp), %eax
-	movl	efi32_boot_args+4(%ebp), %esi
-	movl	efi32_boot_args+8(%ebp), %edx	// saved bootparams pointer
+	leal	rva(efi64_stub_entry)(%ebp), %eax
+	movl	rva(efi32_boot_args+4)(%ebp), %esi
+	movl	rva(efi32_boot_args+8)(%ebp), %edx	// saved bootparams pointer
 	cmpl	$0, %edx
 	jnz	1f
-	leal	efi_pe_entry(%ebp), %eax
+	leal	rva(efi_pe_entry)(%ebp), %eax
 	movl	%edi, %ecx			// MS calling convention
 	movl	%esi, %edx
 1:
@@ -246,18 +272,18 @@ SYM_FUNC_START(efi32_stub_entry)
 
 	call	1f
 1:	pop	%ebp
-	subl	$1b, %ebp
+	subl	$ rva(1b), %ebp
 
-	movl	%esi, efi32_boot_args+8(%ebp)
+	movl	%esi, rva(efi32_boot_args+8)(%ebp)
 SYM_INNER_LABEL(efi32_pe_stub_entry, SYM_L_LOCAL)
-	movl	%ecx, efi32_boot_args(%ebp)
-	movl	%edx, efi32_boot_args+4(%ebp)
-	movb	$0, efi_is64(%ebp)
+	movl	%ecx, rva(efi32_boot_args)(%ebp)
+	movl	%edx, rva(efi32_boot_args+4)(%ebp)
+	movb	$0, rva(efi_is64)(%ebp)
 
 	/* Save firmware GDTR and code/data selectors */
-	sgdtl	efi32_boot_gdt(%ebp)
-	movw	%cs, efi32_boot_cs(%ebp)
-	movw	%ds, efi32_boot_ds(%ebp)
+	sgdtl	rva(efi32_boot_gdt)(%ebp)
+	movw	%cs, rva(efi32_boot_cs)(%ebp)
+	movw	%ds, rva(efi32_boot_ds)(%ebp)
 
 	/* Disable paging */
 	movl	%cr0, %eax
@@ -336,11 +362,11 @@ SYM_CODE_START(startup_64)
 
 	/* Target address to relocate to for decompression */
 	movl	BP_init_size(%rsi), %ebx
-	subl	$_end, %ebx
+	subl	$ rva(_end), %ebx
 	addq	%rbp, %rbx
 
 	/* Set up the stack */
-	leaq	boot_stack_end(%rbx), %rsp
+	leaq	rva(boot_stack_end)(%rbx), %rsp
 
 	/*
 	 * At this point we are in long mode with 4-level paging enabled,
@@ -406,7 +432,7 @@ SYM_CODE_START(startup_64)
 	lretq
 trampoline_return:
 	/* Restore the stack, the 32-bit trampoline uses its own stack */
-	leaq	boot_stack_end(%rbx), %rsp
+	leaq	rva(boot_stack_end)(%rbx), %rsp
 
 	/*
 	 * cleanup_trampoline() would restore trampoline memory.
@@ -418,7 +444,7 @@ trampoline_return:
 	 * this function call.
 	 */
 	pushq	%rsi
-	leaq	top_pgtable(%rbx), %rdi
+	leaq	rva(top_pgtable)(%rbx), %rdi
 	call	cleanup_trampoline
 	popq	%rsi
 
@@ -432,9 +458,9 @@ trampoline_return:
  */
 	pushq	%rsi
 	leaq	(_bss-8)(%rip), %rsi
-	leaq	(_bss-8)(%rbx), %rdi
-	movq	$_bss /* - $startup_32 */, %rcx
-	shrq	$3, %rcx
+	leaq	rva(_bss-8)(%rbx), %rdi
+	movl	$(_bss - startup_32), %ecx
+	shrl	$3, %ecx
 	std
 	rep	movsq
 	cld
@@ -445,15 +471,15 @@ trampoline_return:
 	 * during extract_kernel below. To avoid any issues, repoint the GDTR
 	 * to the new copy of the GDT.
 	 */
-	leaq	gdt64(%rbx), %rax
-	leaq	gdt(%rbx), %rdx
+	leaq	rva(gdt64)(%rbx), %rax
+	leaq	rva(gdt)(%rbx), %rdx
 	movq	%rdx, 2(%rax)
 	lgdt	(%rax)
 
 /*
  * Jump to the relocated address.
  */
-	leaq	.Lrelocated(%rbx), %rax
+	leaq	rva(.Lrelocated)(%rbx), %rax
 	jmp	*%rax
 SYM_CODE_END(startup_64)
 
@@ -465,7 +491,7 @@ SYM_FUNC_START_ALIAS(efi_stub_entry)
 	movq	%rdx, %rbx			/* save boot_params pointer */
 	call	efi_main
 	movq	%rbx,%rsi
-	leaq	startup_64(%rax), %rax
+	leaq	rva(startup_64)(%rax), %rax
 	jmp	*%rax
 SYM_FUNC_END(efi64_stub_entry)
 SYM_FUNC_END_ALIAS(efi_stub_entry)
@@ -628,7 +654,7 @@ SYM_DATA(efi_is64, .byte 1)
 #define BS32_handle_protocol	88 // offsetof(efi_boot_services_32_t, handle_protocol)
 #define LI32_image_base		32 // offsetof(efi_loaded_image_32_t, image_base)
 
-	.text
+	__HEAD
 	.code32
 SYM_FUNC_START(efi32_pe_entry)
 /*
@@ -650,12 +676,12 @@ SYM_FUNC_START(efi32_pe_entry)
 
 	call	1f
 1:	pop	%ebx
-	subl	$1b, %ebx
+	subl	$ rva(1b), %ebx
 
 	/* Get the loaded image protocol pointer from the image handle */
 	leal	-4(%ebp), %eax
 	pushl	%eax				// &loaded_image
-	leal	loaded_image_proto(%ebx), %eax
+	leal	rva(loaded_image_proto)(%ebx), %eax
 	pushl	%eax				// pass the GUID address
 	pushl	8(%ebp)				// pass the image handle
 
@@ -690,7 +716,7 @@ SYM_FUNC_START(efi32_pe_entry)
 	 * use it before we get to the 64-bit efi_pe_entry() in C code.
 	 */
 	subl	%esi, %ebx
-	movl	%ebx, image_offset(%ebp)	// save image_offset
+	movl	%ebx, rva(image_offset)(%ebp)	// save image_offset
 	jmp	efi32_pe_stub_entry
 
 2:	popl	%edi				// restore callee-save registers
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200525225918.1624470-3-nivedita%40alum.mit.edu.
