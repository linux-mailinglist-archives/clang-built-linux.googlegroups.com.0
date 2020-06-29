Return-Path: <clang-built-linux+bncBCIO53XE7YHBBHXM473QKGQEH27NRNI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x538.google.com (mail-pg1-x538.google.com [IPv6:2607:f8b0:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id F312120CF0A
	for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 16:09:36 +0200 (CEST)
Received: by mail-pg1-x538.google.com with SMTP id n32sf12496476pgb.22
        for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 07:09:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593439775; cv=pass;
        d=google.com; s=arc-20160816;
        b=LUMvmMGFmDU2piKtmcevwyP6TuJPhhP7MyRs/8eRXnrvYJvHYDD+RDm9qXh+gCXqpB
         79F0ESdbsyUotNXTOWPjkxi065uXfVYtcLPQC0vWfdNrU3nFglrmyGN7d/LAjF+9GGBI
         Y0RenWJ0YK3bePWuKP5P5jL4OooudIh4J8CpdiyIcr6kDLWqWl1XVPKkJ+YiAbzY5ZXE
         9Fpxuk4qW5zeKtAVsEshwU5Bqjjm8gPdoTUcAukLNWbfjml4ehE7YkyqnTGexG5RZm32
         ftqW/xJ38fpZziOYkLOLKCaWQDU7fbezPvdzFD+5KMq+7RRqvY/1xMcFc0rTWm5QcM0o
         vkkQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=P4yqiNstBTmmSv9pqOjhVKdot3u9rNRZ723uFoCQeJ4=;
        b=gVxGmMC5C18ax75zy+L+Ggtc+sYYVpEcn36we6PJZQ9IHFbK2gcWaGHBsxls/ZOepd
         Tmf258CDpxd9AQgUAMeTq+QMs+Sgbw7XlviBKYCCx5l6J5oXQUTS7UAKIMgkk+Uh1Qz3
         CJqnZgdlaLzDRjVWw9DtN3KhFu4EJX6XhzEtOZkrFoF4ajDazkYHeKcrisQNpeemuvlo
         Us9hn8OxLHkAtrdNfZrRYCzPtyrAv0ye6NmKfhdpAyQdc0nrbmCMWESRjFIvz5YL7ScI
         tpJynavnrTFGxZVcC2OAVnTxvL4dStbutPUp9TWbwmCYNzlAD3VMJ628qlAIQrYXFTaZ
         +NnA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.222.196 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=P4yqiNstBTmmSv9pqOjhVKdot3u9rNRZ723uFoCQeJ4=;
        b=qaOIZvIadFvEH54X3bKwS63/JEN6gMIrsH5SV2d8L78sYOrMMOuV4tULOsWSA1cwQ3
         kmvP7GQ9N9iiDV8Kbq/UM2/Lrr2hHU3AI2+GEt6aWndP1mxL6UFqP+aiU0Tgi0woH0t8
         +8MGtyoJIwwVoRiEVl3kwOAEIiFSlPIHQFOcbyg/gU3CDPbk4afBKWUPIZ5pOnmA3Bdo
         7MFrY0TBe//TITfbdF5CG/HqIhaNES7TS6fXCyUPm8wOgNZTjh1PHgtCf5UTnQ+LsNVf
         eod7FVK5V6iUS4p4m19UFu/U9g/uwnVQgKrQfJbbpNMU/hQ/zuP8pa4gr3IJAlQeRVvX
         +3hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=P4yqiNstBTmmSv9pqOjhVKdot3u9rNRZ723uFoCQeJ4=;
        b=ToFGuEcNiv5hNC5NTBNKTEBfmvJDAHXYHveqGR9lzl+SSXTkPt5r0+C6nvDZcdkBjD
         KPYPT2A+Ljh7oJPRX16vAUNNABa32CUQ+ITxpwjBpRGasTTWkkGHFB3xPA9jmV3jBXvi
         dBvAaV7CnlqWgNu0HmRK15x+pV/TAMpWyTTbfGeF4gyOFHknckPLk+4bE/Yuf/YN85Mu
         z8GvzAxx12YVsu9RWN7Y2ERd8ob3XYCSehT3pxcgPvMfACfzhV9Sp4e4bdm984H5eEqu
         oRLGTtJAe2mut8i0JgYUKfBBjQaD9ZsLNjj5+thJOKTrZSHR7fVwWts51pDWDxt2YI9w
         A1yA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532CO8nbLegjxySM9rv8AsFQptvIPK51D00EYGavCw4aVA5+IZ0s
	vi8g8EmJP/2L1xLpCqK60zo=
X-Google-Smtp-Source: ABdhPJyJ48XP+JFa4tTQgtMBQrHUrWwWjsF85d5G60Oev83ttZ2kh1hUmsPGOUeCG12qTSgz4SVVDQ==
X-Received: by 2002:a17:90a:ac14:: with SMTP id o20mr10912992pjq.185.1593439774650;
        Mon, 29 Jun 2020 07:09:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:38d:: with SMTP id 135ls4592884pgd.0.gmail; Mon, 29 Jun
 2020 07:09:34 -0700 (PDT)
X-Received: by 2002:aa7:818e:: with SMTP id g14mr9262859pfi.27.1593439774119;
        Mon, 29 Jun 2020 07:09:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593439774; cv=none;
        d=google.com; s=arc-20160816;
        b=FsyZ1+0ne6/WRKf3tvyoHspHsd0gw/MZGuxaVyAYcbVlFvepuqBNB5gDH4bTbwzkXM
         Dwb7w0Swh176IfieEgNnZDrVDuQUtVJE0pQxvxL2v6vdQ0hdRG7keOw/1GEgdO+n6+/v
         CwDA8jpX4o5LhbY40D66givoK+3JtSQo6cVp+81s57kqDeQIEEZWF924BO74lDCq574g
         WMxUStWSH1sKI3OvvvXvaEaElFDzMykHctMOjvmU2Y8nzMSN8kOHIanVJHXuu9g/u3+k
         ufsSMbRnjHsuF8s2JmfFczwfIBoW4+u29wHKvo+g7G/umlcOHTnVVQmzlBjoUEcRBb2O
         5FVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=Kb5HpOZ/Vsh+GA+MPpqUIWO4+bocKcpUt2VS/fLgGRk=;
        b=lmf8yztOnBucMgyqfg9oUjQ7+hHQKJnMavNDPBiRuiQ54ZptHVjMGvtvW+o952tEyv
         /YcO38TfxyohNbNGZZiXrw5KnWWaayHHYryetjhTAhs9Vzg9TU2bIxAELHh/Ci2vE8Z5
         rel5E1RyFptr+AofwKZ4RA2hQhRKf2TuQVmmPp/UTFXTplLaMkse12RyLiiwNUJbbFaj
         J8XzkTdvAl9nfWlb1q9TcRnOokTrr/OmDq8+uBuRXYUhPYKTwzt0tyfba+qqoSMHNaFH
         Xy4CDU9XBeyUeFlZogYmHHhq/6jlR5feJO7kD6nmSCoUoOrdxKxSV5Q3Ljasm/NkBpIz
         aRpw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.222.196 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qk1-f196.google.com (mail-qk1-f196.google.com. [209.85.222.196])
        by gmr-mx.google.com with ESMTPS id kb2si1364pjb.1.2020.06.29.07.09.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Jun 2020 07:09:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 209.85.222.196 as permitted sender) client-ip=209.85.222.196;
Received: by mail-qk1-f196.google.com with SMTP id r22so15285205qke.13
        for <clang-built-linux@googlegroups.com>; Mon, 29 Jun 2020 07:09:34 -0700 (PDT)
X-Received: by 2002:a37:a616:: with SMTP id p22mr14910355qke.292.1593439773366;
        Mon, 29 Jun 2020 07:09:33 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id i26sm10741461qkh.14.2020.06.29.07.09.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jun 2020 07:09:33 -0700 (PDT)
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
Subject: [PATCH v3 3/7] x86/boot/compressed: Get rid of GOT fixup code
Date: Mon, 29 Jun 2020 10:09:24 -0400
Message-Id: <20200629140928.858507-4-nivedita@alum.mit.edu>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200629140928.858507-1-nivedita@alum.mit.edu>
References: <20200629140928.858507-1-nivedita@alum.mit.edu>
MIME-Version: 1.0
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 209.85.222.196 as
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200629140928.858507-4-nivedita%40alum.mit.edu.
