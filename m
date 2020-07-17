Return-Path: <clang-built-linux+bncBCIO53XE7YHBBAEPZD4AKGQEOJCAYDI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43b.google.com (mail-pf1-x43b.google.com [IPv6:2607:f8b0:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id D468D224510
	for <lists+clang-built-linux@lfdr.de>; Fri, 17 Jul 2020 22:18:09 +0200 (CEST)
Received: by mail-pf1-x43b.google.com with SMTP id s28sf7651086pfd.19
        for <lists+clang-built-linux@lfdr.de>; Fri, 17 Jul 2020 13:18:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595017088; cv=pass;
        d=google.com; s=arc-20160816;
        b=fiHLdYzbSMvMo4GnE0Q5SjYX5GpFaCbyjEFX6/bA+qIXWvsZlN533sWuTHBEO4FqOf
         8hxnY4EUjFLyp8yrf8oZch3h/h3vYEjfmpYYNhNkwNWoJSpQr2S1fXGOLB/2x8lCav4d
         MLLs6PnKxUyUZ4yBO3z3l6x1Pz382ikbeS/qBSqsQ97HaFCvudtRTr77YLK99zejx4mE
         yyilDjzFro2VPjhY+G5IGGJmpGPDgPGogfnfqhY8M8uRw+IsXbeOOfFuWzL7mSMWpc6h
         hWDyuMSFLJCDgCEyS2ZtcbBN1OoDoGwe1Jj41ry2n2ZU3u17icPbGGboA+2FcNwl75JR
         GMXA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=0SGHzyKeiwkRW1fjQq5PgvizNiL/Vdj9PNAKK0XNrx0=;
        b=kITj+ubqVa96gu8IQnrJXJUcqFRr1hXFH3vjI+7E/sUETpf9kJG+MXmu1KPfcRHBzG
         7s45aFm3SCz1AJPyv7pu6kjc/Yo8bEAkjSZOQw5q6aXpxGAa3PMRsy0/F9A7yreYZ74L
         b2OWBbFMNlyCNVPQeyIVJEerfl2h+Ct8eMqQx52y/pna0RceqXjP3nzx6PJen7s4hVRn
         tZsTrMQvT+MKbKTzvfJuEfHeSNviRe4fwTPrdlbbqz4q9ifNpZjf9c1vCNbMq9P+p3z+
         z54RYRy57cy+SF7MIHuvVLZAiLtxLvKKPRzo8PD9l+lAeaM8eODo1Ifdxr/0MT4i2edz
         loFA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.160.193 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0SGHzyKeiwkRW1fjQq5PgvizNiL/Vdj9PNAKK0XNrx0=;
        b=SVllULmEGPe6EYCx2MUIWFtlwRSLaMOxvRVQpW2QkxjkZ3mhREqsNVY1rWI75ezV53
         tZPkDoshOYUgeUhFHs/2AMBryip4d1dA5rgW6tZKU7EuLeS3aTFhWWUpmdZWlgOPF3+j
         goZQxU/8NxIwtJtvZxwqFHgdh4dGorYWdDulJVbDJ5yBmzh+NV8i65NIxeiHLb5fGP/f
         Fiuud4fMiAY1KmWZpzR2IN9DEBkBUK4scJIKftEh2b/JSd/teZV35MSj0OOYK496plU9
         dpEgBPbJZPWV13DAVsU5GjYdYwmz+U2Fq/4SiXA9pGpFFB1A8ryXfB8jcd87gEDbmlDa
         uySA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0SGHzyKeiwkRW1fjQq5PgvizNiL/Vdj9PNAKK0XNrx0=;
        b=BD2SGU2ID7eqAAIyHrw1ARyjvjGaFI4os1oLPNXjQXbRzP3nDMiEoLH8/UQ9vAOM5W
         9VKnJBltRP5hK5BB6/9V9cfMgAzvPRGr98uQkwoKu3wjGfhLuecoO4w5zLB5eTwkPFRf
         BJGZqcyU4DZvq6JNCKsk7XM0bdLb2NxJmHbkIbj2xYuxJ4CYcVW1HCK+HiMcJnCl+nJn
         He7dA6hmKhgGMSHgRIj2wfIuyROUA35f2QWpCBSyGrr/6G3FgTvCwrh+oPLlBREU8eUN
         IHU/IvIR2rxGTZoonDcS7aBf+BUTTCWOCWvmSg3+O70A0y55QZnP3FcRJ4yYheYEZFTF
         fT9Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531ZxAgMSh+fcbvldTylOxreVsdPqqGndKjIHOM+vYvNeiQ1qsUC
	DzWwaeANk8NrH4sZapQ7yKU=
X-Google-Smtp-Source: ABdhPJxDSY+QqtJj6+94vb3Xy8+sRufxb5rByjNmMiZzfksL5ZuFWUsCyfXkGM4NXvkEfxJnvXf3+w==
X-Received: by 2002:a17:902:547:: with SMTP id 65mr9187200plf.256.1595017088219;
        Fri, 17 Jul 2020 13:18:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:f450:: with SMTP id p16ls231393pgk.5.gmail; Fri, 17 Jul
 2020 13:18:07 -0700 (PDT)
X-Received: by 2002:a63:ee48:: with SMTP id n8mr10167440pgk.292.1595017087704;
        Fri, 17 Jul 2020 13:18:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595017087; cv=none;
        d=google.com; s=arc-20160816;
        b=JiO2NqAGEE9Aeo6ofaQdPn1/TPVQHggnPSXpxve0q9ozzysZ5q52x+iIjWZknw/A9d
         ktm9wyuNLBeIO9RpBCUBvv+ze7E42F1LAPXw2d14C4ZsQFfSMgCDc4MWj0uEOab8uu9y
         fWhGuzlNEC5bnf8VpiO4K+IyBBoxA246N6ZRmBvQq+PVtU/diH/TToAkDjp7xinu+9fL
         lNdUBUGdjBje4t6Z8juHtMnhXW4dqEY5Kt+WsaC+9mPIFM2jaENmxiLFioZMOtZhI/pn
         0nVPRc88o7jWYXbs7/1/KVkSiS7obeSKxnet3lLkW6eQFIbQ7beY5fe0x2ndoal64UGA
         YwsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=hjflrgJ1nEMfvu6o0sT4KLViapV2UjMMsYBLgsk/fRo=;
        b=F22df1EeapwG5KzVyh6CLHvBTaU3ofjY6bK1LNi7Gj86VEkiBzwURon4mZZEu7oydJ
         1dmpEZvdd9oFv/gyDXiqerMlwC4J9oBqGd6vPWWZlBbvI+CyGcrvwnpgq5tPjktlcMxo
         V5rl7Lx1x8tiRO7XHgLyMkGrOdI4mIUWq+G0nVP7IBv1GXSkXJ4QHT9gQOSOamNKz3kg
         yFHSf0/j8oW4+C2BgW91BwOPgsIfSX/Po5L9B3HFjWLOLZQ/WsUx0MyzkskvjTmfmBEs
         Ad60j3TxuzK0xUZsKKIw+u9OHQJ3DUPJYn+KlQkIVMYT0QD+JlXSOGHkBfzAsQ0h4lbN
         8czA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.160.193 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qt1-f193.google.com (mail-qt1-f193.google.com. [209.85.160.193])
        by gmr-mx.google.com with ESMTPS id a6si590939pgw.3.2020.07.17.13.18.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Jul 2020 13:18:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 209.85.160.193 as permitted sender) client-ip=209.85.160.193;
Received: by mail-qt1-f193.google.com with SMTP id u12so8570137qth.12
        for <clang-built-linux@googlegroups.com>; Fri, 17 Jul 2020 13:18:07 -0700 (PDT)
X-Received: by 2002:ac8:3fcf:: with SMTP id v15mr12671418qtk.274.1595017086809;
        Fri, 17 Jul 2020 13:18:06 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id a28sm9509977qko.45.2020.07.17.13.18.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Jul 2020 13:18:06 -0700 (PDT)
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
Subject: [PATCH-next v5 3/7] x86/boot/compressed: Get rid of GOT fixup code
Date: Fri, 17 Jul 2020 16:17:57 -0400
Message-Id: <20200717201801.3661843-4-nivedita@alum.mit.edu>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <CAKwvOdnTbatx8VB-rJSzyFPwfYnkMYK28yLBn1G+hUu8dyfYRA@mail.gmail.com>
References: <CAKwvOdnTbatx8VB-rJSzyFPwfYnkMYK28yLBn1G+hUu8dyfYRA@mail.gmail.com>
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

From: Ard Biesheuvel <ardb@kernel.org>

In a previous patch, we have eliminated GOT entries from the decompressor
binary and added an assertion that the .got section is empty. This means
that the GOT fixup routines that exist in both the 32-bit and 64-bit
startup routines have become dead code, and can be removed.

While at it, drop the KEEP() from the linker script, as it has no effect
on the contents of output sections that are created by the linker itself.

Reviewed-by: Kees Cook <keescook@chromium.org>
Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
Acked-by: Arvind Sankar <nivedita@alum.mit.edu>
Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
From: Ard Biesheuvel <ardb@kernel.org>
Link: https://lore.kernel.org/r/20200523120021.34996-4-ardb@kernel.org
---
 arch/x86/boot/compressed/head_32.S     | 24 ++---------
 arch/x86/boot/compressed/head_64.S     | 57 --------------------------
 arch/x86/boot/compressed/vmlinux.lds.S |  4 +-
 3 files changed, 5 insertions(+), 80 deletions(-)

diff --git a/arch/x86/boot/compressed/head_32.S b/arch/x86/boot/compressed/head_32.S
index 03557f2174bf..39f0bb43218f 100644
--- a/arch/x86/boot/compressed/head_32.S
+++ b/arch/x86/boot/compressed/head_32.S
@@ -49,16 +49,13 @@
  * Position Independent Executable (PIE) so that linker won't optimize
  * R_386_GOT32X relocation to its fixed symbol address.  Older
  * linkers generate R_386_32 relocations against locally defined symbols,
- * _bss, _ebss, _got, _egot and _end, in PIE.  It isn't wrong, just less
- * optimal than R_386_RELATIVE.  But the x86 kernel fails to properly handle
- * R_386_32 relocations when relocating the kernel.  To generate
- * R_386_RELATIVE relocations, we mark _bss, _ebss, _got, _egot and _end as
- * hidden:
+ * _bss, _ebss and _end, in PIE.  It isn't wrong, just less optimal than
+ * R_386_RELATIVE.  But the x86 kernel fails to properly handle R_386_32
+ * relocations when relocating the kernel.  To generate R_386_RELATIVE
+ * relocations, we mark _bss, _ebss and _end as hidden:
  */
 	.hidden _bss
 	.hidden _ebss
-	.hidden _got
-	.hidden _egot
 	.hidden _end
 
 	__HEAD
@@ -192,19 +189,6 @@ SYM_FUNC_START_LOCAL_NOALIGN(.Lrelocated)
 	shrl	$2, %ecx
 	rep	stosl
 
-/*
- * Adjust our own GOT
- */
-	leal	_got(%ebx), %edx
-	leal	_egot(%ebx), %ecx
-1:
-	cmpl	%ecx, %edx
-	jae	2f
-	addl	%ebx, (%edx)
-	addl	$4, %edx
-	jmp	1b
-2:
-
 /*
  * Do the extraction, and jump to the new kernel..
  */
diff --git a/arch/x86/boot/compressed/head_64.S b/arch/x86/boot/compressed/head_64.S
index 97d37f0a34f5..bf1ab30acc5b 100644
--- a/arch/x86/boot/compressed/head_64.S
+++ b/arch/x86/boot/compressed/head_64.S
@@ -40,8 +40,6 @@
  */
 	.hidden _bss
 	.hidden _ebss
-	.hidden _got
-	.hidden _egot
 	.hidden _end
 
 	__HEAD
@@ -353,25 +351,6 @@ SYM_CODE_START(startup_64)
 	/* Set up the stack */
 	leaq	boot_stack_end(%rbx), %rsp
 
-	/*
-	 * paging_prepare() and cleanup_trampoline() below can have GOT
-	 * references. Adjust the table with address we are running at.
-	 *
-	 * Zero RAX for adjust_got: the GOT was not adjusted before;
-	 * there's no adjustment to undo.
-	 */
-	xorq	%rax, %rax
-
-	/*
-	 * Calculate the address the binary is loaded at and use it as
-	 * a GOT adjustment.
-	 */
-	call	1f
-1:	popq	%rdi
-	subq	$1b, %rdi
-
-	call	.Ladjust_got
-
 	/*
 	 * At this point we are in long mode with 4-level paging enabled,
 	 * but we might want to enable 5-level paging or vice versa.
@@ -464,21 +443,6 @@ trampoline_return:
 	pushq	$0
 	popfq
 
-	/*
-	 * Previously we've adjusted the GOT with address the binary was
-	 * loaded at. Now we need to re-adjust for relocation address.
-	 *
-	 * Calculate the address the binary is loaded at, so that we can
-	 * undo the previous GOT adjustment.
-	 */
-	call	1f
-1:	popq	%rax
-	subq	$1b, %rax
-
-	/* The new adjustment is the relocation address */
-	movq	%rbx, %rdi
-	call	.Ladjust_got
-
 /*
  * Copy the compressed kernel to the end of our buffer
  * where decompression in place becomes safe.
@@ -556,27 +520,6 @@ SYM_FUNC_START_LOCAL_NOALIGN(.Lrelocated)
 	jmp	*%rax
 SYM_FUNC_END(.Lrelocated)
 
-/*
- * Adjust the global offset table
- *
- * RAX is the previous adjustment of the table to undo (use 0 if it's the
- * first time we touch GOT).
- * RDI is the new adjustment to apply.
- */
-.Ladjust_got:
-	/* Walk through the GOT adding the address to the entries */
-	leaq	_got(%rip), %rdx
-	leaq	_egot(%rip), %rcx
-1:
-	cmpq	%rcx, %rdx
-	jae	2f
-	subq	%rax, (%rdx)	/* Undo previous adjustment */
-	addq	%rdi, (%rdx)	/* Apply the new adjustment */
-	addq	$8, %rdx
-	jmp	1b
-2:
-	ret
-
 	.code32
 /*
  * This is the 32-bit trampoline that will be copied over to low memory.
diff --git a/arch/x86/boot/compressed/vmlinux.lds.S b/arch/x86/boot/compressed/vmlinux.lds.S
index 4bcc943842ab..a4a4a59a2628 100644
--- a/arch/x86/boot/compressed/vmlinux.lds.S
+++ b/arch/x86/boot/compressed/vmlinux.lds.S
@@ -43,9 +43,7 @@ SECTIONS
 		_erodata = . ;
 	}
 	.got : {
-		_got = .;
-		KEEP(*(.got))
-		_egot = .;
+		*(.got)
 	}
 	.got.plt : {
 		*(.got.plt)
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200717201801.3661843-4-nivedita%40alum.mit.edu.
