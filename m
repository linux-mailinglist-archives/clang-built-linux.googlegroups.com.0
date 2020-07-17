Return-Path: <clang-built-linux+bncBCIO53XE7YHBBAUPZD4AKGQERQOAFXI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd40.google.com (mail-io1-xd40.google.com [IPv6:2607:f8b0:4864:20::d40])
	by mail.lfdr.de (Postfix) with ESMTPS id B12C3224512
	for <lists+clang-built-linux@lfdr.de>; Fri, 17 Jul 2020 22:18:11 +0200 (CEST)
Received: by mail-io1-xd40.google.com with SMTP id 14sf7231932ioz.17
        for <lists+clang-built-linux@lfdr.de>; Fri, 17 Jul 2020 13:18:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595017090; cv=pass;
        d=google.com; s=arc-20160816;
        b=MqONx7eNpJ96iyUpE9mqwztzG2Y6LsuAQqY1zCcxiExo+/QGKqbjdHLn/AReoiqGmi
         viYRqUI0TfgLVAt1rJBzqAqV9WmUkgpS1lHpw+fHV/og1hy1G2oklTztOBd6bjbwm7I2
         YGj4ecMKIwFuQNAChqk5BUcNAKczQ/Hy6jthTjz5vFtJC8MerO4OYSty26C9bl5WIRLC
         q/nMuVBcsRqFnfhieD+DpyPfbj44zefPjURXvJMAq0h3g3xN69d5Kw7GTCJSzxwsoUy1
         yviI7a6jOmtRLHj/ptaIq6BRUFJdR6cV3fFqLR2yhnovLhVzzKi4FS5p4hW2r75BjVqt
         Myzw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=JKJNPYMeAOJrT6dUBe6anBHjZjXIhPaH6SYvLUH2lAE=;
        b=BkwYHvvFix/vYdtoZjVdVjC8oKr5J46v7cHl32b5m1Z2KMZNz9a9y+R75m273QeEke
         1kQXYkutly4AyDlGLllgUoJml3EivoGcPsXxJA1m8ni1MLkldgMpiZ7niQb/Yzb59Gn/
         H/DTqjv3DBm7oVKcok9eJKOcy7ziPgdHeKPAQ0+MnNeFIJMZtx2v0luaJOikXw9H6wkn
         m/Aa7j691OGY05EYouLifMdGPFI+TZwiukt4BZKbkhGViihGRaF6NRBNFQj6pXWsZ+DS
         hT1E4hrYsAZCsKwLafDcE4q1a72g2mVD3/sScJnfvwkG91L+16+RtnttGfa9vQBId0hg
         zeLg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.222.195 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JKJNPYMeAOJrT6dUBe6anBHjZjXIhPaH6SYvLUH2lAE=;
        b=lqX8U6RIeNhUwSqmBN8IYHLnfnrFgeOX4R6B3rrJvkmxmJ0+MuR/2uBBkuLWW2E1n7
         L4PM+lU8d1+cQf4xS0tThg81VaybA5N6GK8IG69C1G+zUOPlMQV/Kg6CCSAaX7p7gRhO
         l0QoWN5ugMJi4DYqKYxMseOTn/EFYVrM5Y9iHAUao0W/V9KHsPPjqqOFzfTtKYiBmwC6
         tepPyULOtd/L7e6OsjIGBZkNyv5FsgU/tYimjgux2u0dZbyUxNPzh9MVeYnPjqEg6H+J
         YxKQ5KYxQ+2UORtBq4fOSVpKEuw0gzLz6M0JCUKjt1Yh3ugPjocrs/tA5eB6oBVVN8ds
         L51A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JKJNPYMeAOJrT6dUBe6anBHjZjXIhPaH6SYvLUH2lAE=;
        b=iOAvqwZ6VTeHQM1hsM7ZUUSrazTYdW12SBbkwhaF/AH6bXp4mJL2FYIec91P09pRUV
         6N/0GebyqDs0v8xk40IxrlvtWxd9yhbPDKZK30CVp1xw65ziefomCbpDAf/ENOCSBuyB
         VP125IUSCmXSJ+3YVofKBsfE3mMNF5s73Bx9axb5AaUXobUlgdcMkoHwci2Lb4pp1uAh
         Xm5s7AIgeVCxr+yBTBqedSIqKHY7qgwwyBXffeMCbeihv7FUtp8YQy+vbJYOwPUJi67t
         OtDF973sPc8zVShz/e86k5Fs9MLmHQh4XPZs0Zh78VQGzCITWUD8hzmzNfYZSBsHV/OH
         w9/g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532ti85L46Ut/uWLW+wJw5hWZoTcRMuvJC/aF5qx4cuo5AeHe/5m
	fv9yd21Z/QGCEHSIQOo5frc=
X-Google-Smtp-Source: ABdhPJxm2KP5D0CklwYoJCYhny+yoTdWBuPsd+ny5ZBKZ/b4HZkbiJtFJANsh/L9wy4lU1C/5nV6QA==
X-Received: by 2002:a92:5857:: with SMTP id m84mr11251767ilb.144.1595017090596;
        Fri, 17 Jul 2020 13:18:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:9a89:: with SMTP id c9ls2776254ill.7.gmail; Fri, 17 Jul
 2020 13:18:10 -0700 (PDT)
X-Received: by 2002:a05:6e02:8e3:: with SMTP id n3mr12116878ilt.259.1595017090262;
        Fri, 17 Jul 2020 13:18:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595017090; cv=none;
        d=google.com; s=arc-20160816;
        b=PsY5Ce3VObnxER/P81XODlhE7VcXl1t85uy3xhk4iOZQrkRdS0lSIma1a3X9aO5YHO
         AYnPkvR4eZfvgWOKoFKdAvnS2OCc/7wCN2iHr55sKiS0LZQKIn3d7qoZwloMJLCnCKTr
         ot7m1an8X5/VEtH2d47O+HFGL6zC/PAw7qdeW420XLJKfwgCITh8UPdjrFyKiZvqoIuj
         GkjJT64JXhunr9ZjhMiEUZan9XQMV0oLfu/4JBYeQwuJ34VgBtFH78z4vf1lHwi1vJsD
         Dkkn2C1XjE/JWEh4Dzh4aPG4RZbckvOAMUvO50skFem54FX1uYRzNIKPF6w+k6HVvJp5
         OXJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=HvSdlOf3kzh25xbOpQnu6TCTUcLGC5ccHXqfCxF4O6c=;
        b=vwzbq27pN6u2NUPfbpSr5GGh/Kov42v926IWrSvEgyGRTpndyfCk40priNfa6Lk/K/
         OIjZaiPiWcBs6z7wL5m7e27MIrfDC7a0ZQCyqljthYh1IK+R5/liz0t9C78o25T0VyoX
         mJKyRcqHMGkjLmbIvreGGBv3r2esbI+xQZdV8G0GBD0QT5P+8bKlovJGKBTZ/QMvzhLz
         2Naze5jAufTshpLbfKKPstqav/LR3Yh5HcWEVZXS3fAAwLMo57wWc9Wp5NMiNf3Cs/Es
         00ZIqNO91HKg63vBE90FDMhrjr15X2To1A4wuu/89mVMPvQxcNJcWlUZn050437bBjIb
         6jxg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.222.195 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qk1-f195.google.com (mail-qk1-f195.google.com. [209.85.222.195])
        by gmr-mx.google.com with ESMTPS id v16si533838iol.1.2020.07.17.13.18.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Jul 2020 13:18:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 209.85.222.195 as permitted sender) client-ip=209.85.222.195;
Received: by mail-qk1-f195.google.com with SMTP id b185so9944264qkg.1
        for <clang-built-linux@googlegroups.com>; Fri, 17 Jul 2020 13:18:10 -0700 (PDT)
X-Received: by 2002:ae9:de82:: with SMTP id s124mr5784988qkf.438.1595017089696;
        Fri, 17 Jul 2020 13:18:09 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id a28sm9509977qko.45.2020.07.17.13.18.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Jul 2020 13:18:09 -0700 (PDT)
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
	Sedat Dilek <sedat.dilek@gmail.com>,
	Kees Cook <keescook@chromium.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	"H . J . Lu" <hjl@sourceware.org>,
	linux-kernel@vger.kernel.org
Subject: [PATCH-next v5 6/7] x86/boot: Remove run-time relocations from head_{32,64}.S
Date: Fri, 17 Jul 2020 16:18:00 -0400
Message-Id: <20200717201801.3661843-7-nivedita@alum.mit.edu>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <CAKwvOdnTbatx8VB-rJSzyFPwfYnkMYK28yLBn1G+hUu8dyfYRA@mail.gmail.com>
References: <CAKwvOdnTbatx8VB-rJSzyFPwfYnkMYK28yLBn1G+hUu8dyfYRA@mail.gmail.com>
MIME-Version: 1.0
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 209.85.222.195 as
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
index b6d7caaaef9e..4a3953a596e0 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200717201801.3661843-7-nivedita%40alum.mit.edu.
