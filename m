Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB5GISL4QKGQEL7BAL2I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13c.google.com (mail-il1-x13c.google.com [IPv6:2607:f8b0:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id 55EDD234DE5
	for <lists+clang-built-linux@lfdr.de>; Sat,  1 Aug 2020 01:08:37 +0200 (CEST)
Received: by mail-il1-x13c.google.com with SMTP id u3sf4337153ilj.19
        for <lists+clang-built-linux@lfdr.de>; Fri, 31 Jul 2020 16:08:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596236916; cv=pass;
        d=google.com; s=arc-20160816;
        b=SnD0cqI7SLXq8X7qggdyUwZOGUsH2dkKfrHUVOZU8MT6ay/w/txAcQNr/l1qiL8TtG
         JhFDZP2AHNsoe25gRI6DkLGPNgHmHa8uOarLBEO8J8DHUL/p8Y+Qirzc38cvIbaVOayI
         k162QA4sNeTTUB4nLD0u9UEPvdqiFqVbv3+tW8e195U2WJKMF2Gy15e/IEj8SyLVw0za
         hpEBNtWjAOwCav+AnyA37m2+M09GPFXObUqQLONtEw411ID29Q2NfzglEh02aOkP4LL2
         c5uc0xdqYl02XXciNffzm6EdiUuU0fmJNuy9DCVVphTGFgfYtP3FGDevcR+sEnne1VY8
         Vz0Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=U6Lv4b+4XbMS6UfofrPDoShw6AdQrgS49wNUVbkGYSc=;
        b=QD4zWBStM0LeNFVFr/QlZZBlre+h6z16c0JO9zVLXHSejgNPvU2YaDEIPzTbQPsLtd
         yzh4E6/hgiblqobI1mXyR3hffidvjCOAcDOpYN7n5Qvhv4jNAiR0LRR+4jofnmb8yg10
         F28UlHXjTNSK/Oq5tyXCGIraEl1dBb9a239iA87/yXBepLYNHtMUiJ+IZCuiIuIiayiW
         jmVxHyGmlOUeDw0fYLWXZuM4ejAZJcKLQvjGJkLUgeMAue7pTB0HcMlZ3GGWw1Z7iuA3
         mD05jQ4JeOJh0uDGGZGiHZB2hnOfoCnEA0Xq3Wer0HOW9jejiCJFikBEwvRxpggR9r8z
         P8tQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=hrQvkFF6;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=U6Lv4b+4XbMS6UfofrPDoShw6AdQrgS49wNUVbkGYSc=;
        b=dgsguFyBQQvIwGLw9BmjTSKZB7MNz+ixrzI2dt2OqJj+mn12JW54SUHG1YHPJLNgwR
         1b/0BlO4ZOSmB+Ybghb9pN2cEpl3Uaiec/hhBYY6zL+iPqrQ/b7ywnUmuBo0DL6XY/JB
         2N2KLcTeCVifWoVC1lAt2Iehgx8yVqvi8BmP2SF3W2XSktDzOSgnqv9dy4juTmDSa2Pv
         Ith+ubMKV+KPjeUZUYp/RTwbMONPnmIA5l3OGkKB86yeXGHu9b3qmDgnol4iPVAe9t0Y
         tV6TMwpDN3p/mBSXfoiGpX9PXyJMX3Z6/W4iWqfmJsBESxNAFlEShoqa9AXdKOzZfMtG
         JHXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=U6Lv4b+4XbMS6UfofrPDoShw6AdQrgS49wNUVbkGYSc=;
        b=BRr8rANQJncC0HmNlc4MnLjFeEk0LT67DmcHlExWTiv+ijsJ6+ra48lTexXMpRW1DI
         XTAKhr63+k6Eg61usbHkhaoSbTjajT2QdrAILvjCBxpFu1pwKryvzwM1U7B59iVsG+XO
         rvrFkmdKEk4RWgIRUXcCu0Xgx2d/YuDMudJhBC2m8i762K5VxvrHc6pKnmdnwaHIIOGN
         zHHKJLkP2vMEDHJnSjhDBylvLaZWuKSBAr9WdVOKcf/rUz1qd9CdEnotMUIs6wyWH3s5
         t7zww1gTlab6sWWWYi2bGtfN9CsAtyaDRL9mDXB4w2Cdz2cnihtTeV45BGf7HmVbpEEG
         6bDw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531UURAYM1o/J03jYgOzfRfqyO86RcV4sXRQdS3ak0V2UkMqE2oB
	pjiTfEdEoVYRRGuwujAWiGs=
X-Google-Smtp-Source: ABdhPJwoVrh3lOba9HFEJRvNZGgY4DItQxG5WyLiQ01nq7Z7m+DmNMHjudLOPY84HkoQQbQBr3LHtw==
X-Received: by 2002:a05:6e02:143:: with SMTP id j3mr5457079ilr.97.1596236916316;
        Fri, 31 Jul 2020 16:08:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:7308:: with SMTP id e8ls134221ioh.6.gmail; Fri, 31 Jul
 2020 16:08:36 -0700 (PDT)
X-Received: by 2002:a6b:ba89:: with SMTP id k131mr5679289iof.133.1596236915922;
        Fri, 31 Jul 2020 16:08:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596236915; cv=none;
        d=google.com; s=arc-20160816;
        b=GArZjN7DuHoR5K4rPSyyy6mQY5xJW0o4PAgzF+MmFpTLlTDKFzK9By3Jar68dgkxQW
         F7bG/Hl3H8u6s74DHGeZa8PShtLYMZbWKil2oToKfCbgxUMWWLeIAWw1pxlGXVqXQmwe
         X/nMD5rLsPP85d5fhYaT3VXgBA/IYHI63x/fFoeVeL9OOab18rmQYiYVsZ2q7Nnobore
         a6wV32p0nWnUd96wFkLCBl27WMu1rLi49DzCX6RoSAErhL/kzajc1b5rPg/cNDES7uAD
         OuQSCtD62rwcsw4qlMDb/eF1VgSViJEY31vvb4Ab2nTImT/FO5E3xdoenEexI0tgp2wN
         QT4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=G4Uyil/3RLKWyY67hAynjAiMWq2oklcnh8xSnmDcb3o=;
        b=m27FOffRiS5m8LGp1F1+yCylEqCNFCOHGuYx+U5dG1UB7U/URIq0R3ZOe+pgKv2yBA
         JoCtsAS2X+CmURw2Qpuoux5DOTojQFQ8SIp5MzX514MNCaSSarsmPiw4ZRcV8qAKL5OB
         571AxzWpgy0WFCxEJ4JMkVAoi2A8VVDEJEZL94ahCfG3laJNdpzysvqV94BEXgQDq7Ha
         dXlXi7hTWl9WMYY+t9sgP8a1slujY/WE6mw+swNH3JUFDq70tTCG+iyEHcImMsoifMk8
         e6Rmc0m06ZWr5y7V8GUxnye4fXCFXZ0iPouPC3Pb8af3ERBjZhRlTM3Ohg32iuCwqSEG
         dEOw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=hrQvkFF6;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id z6si522161ioj.0.2020.07.31.16.08.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Jul 2020 16:08:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Received: by mail-pj1-x1042.google.com with SMTP id c6so8077837pje.1
        for <clang-built-linux@googlegroups.com>; Fri, 31 Jul 2020 16:08:35 -0700 (PDT)
X-Received: by 2002:a17:902:b18b:: with SMTP id s11mr5649581plr.152.1596236915282;
        Fri, 31 Jul 2020 16:08:35 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id m9sm10186094pjs.18.2020.07.31.16.08.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Jul 2020 16:08:30 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Thomas Gleixner <tglx@linutronix.de>,
	Will Deacon <will@kernel.org>
Cc: Kees Cook <keescook@chromium.org>,
	Ard Biesheuvel <ardb@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>,
	Borislav Petkov <bp@suse.de>,
	Ingo Molnar <mingo@redhat.com>,
	Russell King <linux@armlinux.org.uk>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	x86@kernel.org,
	clang-built-linux@googlegroups.com,
	linux-arch@vger.kernel.org,
	linux-efi@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 03/36] x86/boot/compressed: Get rid of GOT fixup code
Date: Fri, 31 Jul 2020 16:07:47 -0700
Message-Id: <20200731230820.1742553-4-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200731230820.1742553-1-keescook@chromium.org>
References: <20200731230820.1742553-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=hrQvkFF6;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1042
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
Tested-by: Nick Desaulniers <ndesaulniers@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
Acked-by: Arvind Sankar <nivedita@alum.mit.edu>
Link: https://lore.kernel.org/r/20200523120021.34996-4-ardb@kernel.org
Tested-by: Sedat Dilek <sedat.dilek@gmail.com>
Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
Signed-off-by: Kees Cook <keescook@chromium.org>
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
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200731230820.1742553-4-keescook%40chromium.org.
