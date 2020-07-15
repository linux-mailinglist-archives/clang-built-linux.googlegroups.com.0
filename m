Return-Path: <clang-built-linux+bncBCIO53XE7YHBBRNBXH4AKGQEGZVDYJY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13f.google.com (mail-il1-x13f.google.com [IPv6:2607:f8b0:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id 05AD622016E
	for <lists+clang-built-linux@lfdr.de>; Wed, 15 Jul 2020 02:41:43 +0200 (CEST)
Received: by mail-il1-x13f.google.com with SMTP id t19sf259800ili.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 17:41:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594773702; cv=pass;
        d=google.com; s=arc-20160816;
        b=WPs2Td9QzK87/ehul/Oru1KaNtWd65W9R+nr90hSQq6Tfr0W9lNz4fEjD11zTrb0RP
         GHzurNG6+brfCiW+EszlJ9L+7aBtsbsg4hGDoOX2nA5CnSnf3r6HRfUkNLKxePlMv04L
         5xtxWGydt7Wn0E0w4YXYipqIRy4HUhl+oapFI6KV6IkU1F7+hSXUiyfSmtJYLeEfIrku
         ons+3+mKrhW1ViZF8wxsLW5QiqsJBivRzcpJuPAwBxsXles1PefEMXSB+cPpmdPeO0Qp
         5t9oFWy8zarH3lWMYyY2ANVkWmLGWYXvThwF76ozNtc9uoieVS+sxYOCnG0BKGXaMWYI
         lwqg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=BzpC4qbemEhjFfHdEbyvnh9Q7489hlfkS3KDt7k7n7U=;
        b=rUbuaFd+31wvdb6Fo9ElU5PuLIicFR32DA3B37woXmpe/1X0AeQOAHJgykgAIMvhyw
         IhfuDE1fHNE8nvRaQFqsuZ+q1shOCuvFmVR9/2J4dTcxeelDA15Z5kSlpjgSR0N9dnpN
         DCEbFGBbyoriaoFuu+7aDs+RYWXPScGD8dpiOCX0g0m8/HbPrBeJrY67jtQdDBc0rh8i
         b801zuTp97FX+Dp+zp7tU04M/egRMJ0Xm1n0cTDj56jGXkIQJJhKcuOpoUvI9XKBiBAM
         EfAJQA3s+BDViL9gmfjs9Kpq7VhfVPSjhWqqERSndXVAb20OxPHX6EmqyuFM6X4FPIcb
         4Qog==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.219.68 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BzpC4qbemEhjFfHdEbyvnh9Q7489hlfkS3KDt7k7n7U=;
        b=YrQ8vQN1gcMI3R82B3U72EZLKUFX4Gr37PAyTfvftUf0nGnt+R7fJIxVrCI0Ltbr+F
         n/ivWEYpUMThYEuMzdmo9HPIPpEZ3tT4IFkeacZh65DPLRD0UlUM282FrH0zDem4DK8j
         VC0M2e95fsN4QOvYum78QaXIJOqxnXoFSxcA57hbGIgXd/0XWvvYQxkgkI+G/ybDYdZl
         PQiI6A5De0FK6Gl4UBy4bCIR4BY3Sjgf1wZAGl3YLfShDRpdKLSbmf4X1G5eukbwylwj
         Uf92ANSzmaPF5tuXXvKML2CxrsGvQB6v6y++sxh5Ud7DDanXjj+NxHH8/H38DzGedM4e
         o5tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BzpC4qbemEhjFfHdEbyvnh9Q7489hlfkS3KDt7k7n7U=;
        b=kvYIiyCDlo9Xc17SfcqfCVrIV2iMPqKpM8v5+4VA6HYYeMsmdzsVghagzxAnb2R9Et
         QgPKHxQkYP/76rMHiwetGsrRXg+1a6gDx/tB2BqSnfGy5nlRebREXKlQ6vmRqtnDDoE3
         Fn+/DDnDoOohotrTl4lLl8nqlrwPK7TRHDUuNZV9cVjTubXwtPFH/N9IiMEMoBxs5JoG
         FtNTy8jyG1EVv2xv6xLmpUu+hFineiTgAIvx8HUeUjgj2iRTDVdTOk3C1BKEjLwf+LOg
         148EPfMgpR92pkdfUIDdJr9+iVnDEqKpR3pS8Qj6uUt4s5aid9MQNBN/3l3Fc5KQodLa
         HD9Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530k/5rH0H9O/eg+tv5fsmZBA8AfXXEWa+Q2uWsh0imdBe1IP1Ny
	78rEdjWDjJcUUf6ePUyBlvA=
X-Google-Smtp-Source: ABdhPJy1Uv58uFlK+lUT2XxFVTSYWwVdhC7cT1AsFGC3sz1pmAS2+r8wvN0ZEIdkWVbMQaEIwsmB2Q==
X-Received: by 2002:a05:6602:1555:: with SMTP id h21mr7474720iow.163.1594773701957;
        Tue, 14 Jul 2020 17:41:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:700a:: with SMTP id f10ls45058jac.10.gmail; Tue, 14 Jul
 2020 17:41:41 -0700 (PDT)
X-Received: by 2002:a05:6638:236:: with SMTP id f22mr8843330jaq.18.1594773701572;
        Tue, 14 Jul 2020 17:41:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594773701; cv=none;
        d=google.com; s=arc-20160816;
        b=w/PGEqIjmIiu59LM4GSgi7cTs5sfC5tXsB6Qm2IwbKniAqU8hIFdy+q8kHbTZwkGkG
         vuv62SseLsCsKnPdfWwHIF6OG6B0t2K3GPQaFRI2UZwLkXctszbfoJr5cE1C+Ls5egub
         qLayP+Af2PxlzT5lx3juynO3ruBpKaOjCljCS7nlaHJky4W7K8b3VkovsMtA0vTt9ciC
         rJxUI0xOTXV+dW2QJPqGiN8LOA4yXbuiJvITWtXCMKsNh2OLOLFBPrJrIhZnJ1T02plS
         NgASkcmw8gN+scPRD41pywVwV2CO5q25bwvxMHEN2mSOr+GHPve5e9sinof3duesL3Ix
         hnCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=QwdhbfVO96cX9Kg1zim0gwzKE7uOS6+lZegmHSTpfyM=;
        b=PuKa1wjGpqnhIL1z2IVt683pZTJxtR2jWIdpE0kSF6HDg+nJ1uK3g109hIu2zlxhdX
         ZKOmQh3EJm7LlaRAFg2KfEjvulm9MQH0E8Y2HIBbJb0Vsl2WQsEH58wmW1APTdn/CBLi
         mlmDHeABGeCjPHzdfoN8d64j4xkLPlpSm02DR9wBA1Q0mkgjcZLqDjxUrIeAiZmsgrA2
         mgwoYmDcdJsAwd8FjNBz7fu+Xk4XBOA7T4aTHTC3CAbr6Xc84uP7yVDz/kGYp85UodI2
         qWdJv8WBeo818fuyaKzAohlYDNjLd0Sckd8TuxZht/cq0blQhg1TDOBJiUdxxHiPz/uF
         sfhA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.219.68 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qv1-f68.google.com (mail-qv1-f68.google.com. [209.85.219.68])
        by gmr-mx.google.com with ESMTPS id v16si35727iol.1.2020.07.14.17.41.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Jul 2020 17:41:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 209.85.219.68 as permitted sender) client-ip=209.85.219.68;
Received: by mail-qv1-f68.google.com with SMTP id e3so155752qvo.10
        for <clang-built-linux@googlegroups.com>; Tue, 14 Jul 2020 17:41:41 -0700 (PDT)
X-Received: by 2002:ad4:42ad:: with SMTP id e13mr7428436qvr.89.1594773701009;
        Tue, 14 Jul 2020 17:41:41 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id c9sm524776qko.24.2020.07.14.17.41.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jul 2020 17:41:40 -0700 (PDT)
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
	Sedat Dilek <sedat.dilek@gmail.com>,
	Kees Cook <keescook@chromium.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	"H . J . Lu" <hjl@sourceware.org>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 6/7] x86/boot: Remove run-time relocations from head_{32,64}.S
Date: Tue, 14 Jul 2020 20:41:32 -0400
Message-Id: <20200715004133.1430068-7-nivedita@alum.mit.edu>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200714023836.2310569-1-nivedita@alum.mit.edu>
References: <20200714023836.2310569-1-nivedita@alum.mit.edu>
MIME-Version: 1.0
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 209.85.219.68 as
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

The BFD linker generates run-time relocations for z_input_len and
z_output_len, even though they are absolute symbols.

This is fixed for binutils-2.35 [1]. Work around this for earlier
versions by defining two variables input_len and output_len in addition
to the symbols, and use them via position-independent references.

This eliminates the last two run-time relocations in the head code and
allows us to drop the -z noreloc-overflow flag to the linker.

Move the -pie and --no-dynamic-linker LDFLAGS to LDFLAGS_vmlinux instead
of KBUILD_LDFLAGS. There shouldn't be anything else getting linked, but
this is the more logical location for these flags, and modversions might
call the linker if an EXPORT_SYMBOL is left over accidentally in one of
the decompressors.

[1] https://sourceware.org/bugzilla/show_bug.cgi?id=25754

Reviewed-by: Kees Cook <keescook@chromium.org>
Reviewed-by: Ard Biesheuvel <ardb@kernel.org>
Reviewed-by: Fangrui Song <maskray@google.com>
Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
---
 arch/x86/boot/compressed/Makefile  | 12 ++----------
 arch/x86/boot/compressed/head_32.S | 17 ++++++++---------
 arch/x86/boot/compressed/head_64.S |  4 ++--
 arch/x86/boot/compressed/mkpiggy.c |  6 ++++++
 4 files changed, 18 insertions(+), 21 deletions(-)

diff --git a/arch/x86/boot/compressed/Makefile b/arch/x86/boot/compressed/Makefile
index c829d874dcac..ae2c0dc98a6a 100644
--- a/arch/x86/boot/compressed/Makefile
+++ b/arch/x86/boot/compressed/Makefile
@@ -51,16 +51,8 @@ UBSAN_SANITIZE :=n
 KBUILD_LDFLAGS := -m elf_$(UTS_MACHINE)
 # Compressed kernel should be built as PIE since it may be loaded at any
 # address by the bootloader.
-ifeq ($(CONFIG_X86_32),y)
-KBUILD_LDFLAGS += $(call ld-option, -pie) $(call ld-option, --no-dynamic-linker)
-else
-# To build 64-bit compressed kernel as PIE, we disable relocation
-# overflow check to avoid relocation overflow error with a new linker
-# command-line option, -z noreloc-overflow.
-KBUILD_LDFLAGS += $(shell $(LD) --help 2>&1 | grep -q "\-z noreloc-overflow" \
-	&& echo "-z noreloc-overflow -pie --no-dynamic-linker")
-endif
-LDFLAGS_vmlinux := -T
+LDFLAGS_vmlinux := $(call ld-option, -pie) $(call ld-option, --no-dynamic-linker)
+LDFLAGS_vmlinux += -T
 
 hostprogs	:= mkpiggy
 HOST_EXTRACFLAGS += -I$(srctree)/tools/include
diff --git a/arch/x86/boot/compressed/head_32.S b/arch/x86/boot/compressed/head_32.S
index 8c1a4f5610f5..659fad53ca82 100644
--- a/arch/x86/boot/compressed/head_32.S
+++ b/arch/x86/boot/compressed/head_32.S
@@ -178,18 +178,17 @@ SYM_FUNC_START_LOCAL_NOALIGN(.Lrelocated)
 /*
  * Do the extraction, and jump to the new kernel..
  */
-				/* push arguments for extract_kernel: */
-	pushl	$z_output_len	/* decompressed length, end of relocs */
+	/* push arguments for extract_kernel: */
 
-	pushl	%ebp		/* output address */
-
-	pushl	$z_input_len	/* input_len */
+	pushl	output_len@GOTOFF(%ebx)	/* decompressed length, end of relocs */
+	pushl	%ebp			/* output address */
+	pushl	input_len@GOTOFF(%ebx)	/* input_len */
 	leal	input_data@GOTOFF(%ebx), %eax
-	pushl	%eax		/* input_data */
+	pushl	%eax			/* input_data */
 	leal	boot_heap@GOTOFF(%ebx), %eax
-	pushl	%eax		/* heap area */
-	pushl	%esi		/* real mode pointer */
-	call	extract_kernel	/* returns kernel location in %eax */
+	pushl	%eax			/* heap area */
+	pushl	%esi			/* real mode pointer */
+	call	extract_kernel		/* returns kernel location in %eax */
 	addl	$24, %esp
 
 /*
diff --git a/arch/x86/boot/compressed/head_64.S b/arch/x86/boot/compressed/head_64.S
index 11429092c224..9e46729cf162 100644
--- a/arch/x86/boot/compressed/head_64.S
+++ b/arch/x86/boot/compressed/head_64.S
@@ -534,9 +534,9 @@ SYM_FUNC_START_LOCAL_NOALIGN(.Lrelocated)
 	movq	%rsi, %rdi		/* real mode address */
 	leaq	boot_heap(%rip), %rsi	/* malloc area for uncompression */
 	leaq	input_data(%rip), %rdx  /* input_data */
-	movl	$z_input_len, %ecx	/* input_len */
+	movl	input_len(%rip), %ecx	/* input_len */
 	movq	%rbp, %r8		/* output target address */
-	movl	$z_output_len, %r9d	/* decompressed length, end of relocs */
+	movl	output_len(%rip), %r9d	/* decompressed length, end of relocs */
 	call	extract_kernel		/* returns kernel location in %rax */
 	popq	%rsi
 
diff --git a/arch/x86/boot/compressed/mkpiggy.c b/arch/x86/boot/compressed/mkpiggy.c
index 7e01248765b2..52aa56cdbacc 100644
--- a/arch/x86/boot/compressed/mkpiggy.c
+++ b/arch/x86/boot/compressed/mkpiggy.c
@@ -60,6 +60,12 @@ int main(int argc, char *argv[])
 	printf(".incbin \"%s\"\n", argv[1]);
 	printf("input_data_end:\n");
 
+	printf(".section \".rodata\",\"a\",@progbits\n");
+	printf(".globl input_len\n");
+	printf("input_len:\n\t.long %lu\n", ilen);
+	printf(".globl output_len\n");
+	printf("output_len:\n\t.long %lu\n", (unsigned long)olen);
+
 	retval = 0;
 bail:
 	if (f)
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200715004133.1430068-7-nivedita%40alum.mit.edu.
