Return-Path: <clang-built-linux+bncBCIO53XE7YHBBIPM473QKGQEMKPIYSI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x837.google.com (mail-qt1-x837.google.com [IPv6:2607:f8b0:4864:20::837])
	by mail.lfdr.de (Postfix) with ESMTPS id 77B4A20CF0C
	for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 16:09:38 +0200 (CEST)
Received: by mail-qt1-x837.google.com with SMTP id 71sf4269083qte.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 07:09:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593439777; cv=pass;
        d=google.com; s=arc-20160816;
        b=zH2kl7jlsybnuIAzEYP6QrfEZwTrEo+Ux+pAB+7z7lQ01Qt6sK/vAmg920p62O4ouB
         u5crMt+HMnwJuEihdWjfDbsqjFU2WCLrUgfHN1w576KWW7Yfhm+ecp28Hk/gURp2dOMa
         gdjYoFNkpeNZ5jAKzP5gSZjfNwjiBWLBou54MeYDLUKKnLsggnm92yqreJxvcHQW6bkH
         3VfHTrrHZAWKT00nwEr2TvaWJ16MgNPgKE00qP6LdRtfMgSrO3HGiFu0jlsFX5swbGlz
         JDQrH2NrrUp0UBdJR5C9uhkYpqYddeGCEu3D38pHLRWOEb3ZcTMVZ4hBjjsZYnQKuuk4
         F+tg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=jvehWWyagQxIH38O8oe6cXB4V+A7yRpVzPY1Me67Mtc=;
        b=BeO2A7VWnbOnovSo+O+OsxbDaW2eW6ZeNI+5TGvthqhwkNc6PFRQISvmTHxqKjcr8X
         ZnINOciyb/F2LPWDZUH8T06uHuwCR1e82gSQ9TCk34yPJLO/tz2GMxNjPIghroVHgIPO
         t5txGY/JERtltUZeHpYNXVIEKyQLwqwR3NyiQf28UA2NGLmIGPkADG+g9nqdqIC1t34f
         NHLc8NOacUZLBhNSOQm/odSw6qRCRL6idzZyh/ueRlHOQy4JV8lhWXMWzbWsJe52HEjc
         FPolpk1wztMccoNrZ/YANN1mKBFga0l5HXLKaoZjJ4GSSEJwKj+0stSQ5TJDiNV5gp/a
         iwlA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.160.195 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jvehWWyagQxIH38O8oe6cXB4V+A7yRpVzPY1Me67Mtc=;
        b=UOBkJtGwbhL/XX4H27sj2U+vGngoDHjJRzgpSFX1Q0LYO+fiNfUG/lVRyfVr1dbFjp
         pke66U8jN9aCs9XxG0huu/+Ycrphe8r0B7ay2tyNoG9teSf1NaEP8A3cSuEqIz7uwJ7F
         I5aAAW5OSDrVltTkqfaBghEfzrDcIDAKAgglc5MLtbsvUn4W6WhDF/2CeM5i8/gnrr0+
         UK1xdWr0mLL1+qC9hcZPpI2q2tfzIALxJ1A956NUTH5y8R+I2nAYU9YBuun7kwFXuvlF
         ssS3Jk3fWTar6xC0rQSa0XUQgxGcjnPxbcRr+wU5l4pl1KtIRWkoB6ycuF1zVPCG627+
         7SSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jvehWWyagQxIH38O8oe6cXB4V+A7yRpVzPY1Me67Mtc=;
        b=FEx0IQj7b9i1YzxGwxGIAH0ivG/ZWW+/cqhiWpiqsJO0/XTOsznZwI7kXxapRqul0l
         em7SUXX8l2QdpCsbtNQc0MbVy9W9Z3H/ooLepjMaAi71GxxArrdpIZeKQDaYcAmJdaGb
         pDEjT8+qlFYDbJ3YV9LDl1PQR8oSU0WpbAXG8xLVzV0CzpxkVwCEtap9oiZkpXF41XPT
         ll78wVKMeSS4RGL25gWkc90CAhmQqi+WwQH+TN+SLhPbRq69aiYojPyrn1tPL6Kr1xnx
         jWZWqdI8oZ/otjmQ7i4Kcgg+FQQkbkzn9IuVbcX3UGlQMwS9+JuGTfr2pEXFl7/ND55R
         Hopg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530yWYbV2UJ4SuQGAwX+1lTEJKyr7hh3e+NgZxnFiPlCMoRA0a/g
	8589EvvfhrhO6kgIP03eFwc=
X-Google-Smtp-Source: ABdhPJx72I0OelTKV7PW9GIuvlVNYC5H+vwCMHlkKhhM8m9HdVb5OKh49h0T0EAWow7kv8Xb6EvF8g==
X-Received: by 2002:a37:9b8b:: with SMTP id d133mr15353446qke.276.1593439777506;
        Mon, 29 Jun 2020 07:09:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:248:: with SMTP id q8ls7464227qkn.5.gmail; Mon, 29
 Jun 2020 07:09:37 -0700 (PDT)
X-Received: by 2002:a05:620a:1470:: with SMTP id j16mr15699199qkl.373.1593439777136;
        Mon, 29 Jun 2020 07:09:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593439777; cv=none;
        d=google.com; s=arc-20160816;
        b=hsBOZJvMZE96C/8nglmHVaM3zeLSOfl9leBrMby8SrafI+Jdadp/eCWl+EsYZrZxmv
         7KU1J40a5w51X/hxySW0o/I/4gAKbZnNLYW6cze5QSSL8hhZ6EdYwHBMsVUv2Kr8Q7K2
         +9HYLcyRj90Xi2dWPc9iEhul5KRH5tltBWywsURbzNnhnF4sv8SivurP8esiVFNSl1da
         29crNq23Juh+4l7xLF82Yf/0YjuCWMCmoeycUWbmTfFY/kW5gu8Rvq7f33GCig3Yqdcc
         wQ16DIE/Ml+wJG/AIZmfMb15tlvkOx5MGC3aDBbKDry71zEe+H3UZk0DNUjQ/IvSAzkt
         u4eA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=Ow5IjitOhPe4K+XzmWKutH7vNHBYnOBggpvRv8VxVJs=;
        b=a+op77BV4CXVsUXctcf2RWd3rwPZLwPxTPqc9joTlAF79B07yCUODaTHc+CRHffhcZ
         5SBIlxkubrMcZmA3b+4+efFu+0WHF1MB8Hf6IaCNp7nr9iuwy6GFC3FarPB0/vIz6WWJ
         GVXGKa5SQfU5GGovsDfyiCTFO2QV/S5pZ9aWFuJZ8pNlbc7pCYRCeUY/y4C7kIXuy2ee
         tiaLkf7nP2g/6o+alR6X8kxZ+qxs8hj/hI8qvHk1aKAwa5m2UIoUnp0MLfwhudNGto2f
         ku7hkESKtbL5Uy3bbEd5PIESy/WgDkQe0DFxQwe/mMizl9SJhvCrXEuTnrzZcjNU+NNP
         /mqA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.160.195 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qt1-f195.google.com (mail-qt1-f195.google.com. [209.85.160.195])
        by gmr-mx.google.com with ESMTPS id q22si127530qtp.0.2020.06.29.07.09.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Jun 2020 07:09:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 209.85.160.195 as permitted sender) client-ip=209.85.160.195;
Received: by mail-qt1-f195.google.com with SMTP id g13so12888942qtv.8
        for <clang-built-linux@googlegroups.com>; Mon, 29 Jun 2020 07:09:37 -0700 (PDT)
X-Received: by 2002:ac8:6b90:: with SMTP id z16mr15883022qts.217.1593439776808;
        Mon, 29 Jun 2020 07:09:36 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id i26sm10741461qkh.14.2020.06.29.07.09.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jun 2020 07:09:36 -0700 (PDT)
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
Subject: [PATCH v3 6/7] x86/boot: Remove runtime relocations from head_{32,64}.S
Date: Mon, 29 Jun 2020 10:09:27 -0400
Message-Id: <20200629140928.858507-7-nivedita@alum.mit.edu>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200629140928.858507-1-nivedita@alum.mit.edu>
References: <20200629140928.858507-1-nivedita@alum.mit.edu>
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

The BFD linker generates runtime relocations for z_input_len and
z_output_len, even though they are absolute symbols.

This is fixed for binutils-2.35 [1]. Work around this for earlier
versions by defining two variables input_len and output_len in addition
to the symbols, and use them via position-independent references.

This eliminates the last two runtime relocations in the head code and
allows us to drop the -z noreloc-overflow flag to the linker.

[1] https://sourceware.org/bugzilla/show_bug.cgi?id=25754

Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
Reviewed-by: Ard Biesheuvel <ardb@kernel.org>
Reviewed-by: Fangrui Song <maskray@google.com>
---
 arch/x86/boot/compressed/Makefile  |  8 --------
 arch/x86/boot/compressed/head_32.S | 17 ++++++++---------
 arch/x86/boot/compressed/head_64.S |  4 ++--
 arch/x86/boot/compressed/mkpiggy.c |  6 ++++++
 4 files changed, 16 insertions(+), 19 deletions(-)

diff --git a/arch/x86/boot/compressed/Makefile b/arch/x86/boot/compressed/Makefile
index b01c8aed0f23..242b291037e8 100644
--- a/arch/x86/boot/compressed/Makefile
+++ b/arch/x86/boot/compressed/Makefile
@@ -51,15 +51,7 @@ UBSAN_SANITIZE :=n
 KBUILD_LDFLAGS := -m elf_$(UTS_MACHINE)
 # Compressed kernel should be built as PIE since it may be loaded at any
 # address by the bootloader.
-ifeq ($(CONFIG_X86_32),y)
 KBUILD_LDFLAGS += $(call ld-option, -pie) $(call ld-option, --no-dynamic-linker)
-else
-# To build 64-bit compressed kernel as PIE, we disable relocation
-# overflow check to avoid relocation overflow error with a new linker
-# command-line option, -z noreloc-overflow.
-KBUILD_LDFLAGS += $(shell $(LD) --help 2>&1 | grep -q "\-z noreloc-overflow" \
-	&& echo "-z noreloc-overflow -pie --no-dynamic-linker")
-endif
 LDFLAGS_vmlinux := -T
 
 hostprogs	:= mkpiggy
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200629140928.858507-7-nivedita%40alum.mit.edu.
