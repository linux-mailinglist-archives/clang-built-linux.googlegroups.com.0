Return-Path: <clang-built-linux+bncBCIO53XE7YHBBQVBXH4AKGQECJYAUPY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3a.google.com (mail-qv1-xf3a.google.com [IPv6:2607:f8b0:4864:20::f3a])
	by mail.lfdr.de (Postfix) with ESMTPS id E469C22016B
	for <lists+clang-built-linux@lfdr.de>; Wed, 15 Jul 2020 02:41:39 +0200 (CEST)
Received: by mail-qv1-xf3a.google.com with SMTP id j4sf278244qvt.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 17:41:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594773699; cv=pass;
        d=google.com; s=arc-20160816;
        b=G5y03HyBfu3oO/aWeAP2zANcgfYguZIl1m73Ubaqw7blhXO1dEPJPzPrRNS1DsXaBf
         NVza4KXutXVHhZ5T3a5i/q353a5GkJFjO8gQ26iE1LLR2wX1nj0Rh+XTfa0zu8BDVjy7
         QQ82iRyS/WEeXt1+mwh4D7DDUarS6tXBYpQ9JIHQ0Dk35/3mfuDwyE/f5YqRyVczhJ4r
         +kBfgf4LMJ6k3Mv8rz0cgmgMPzFpf9cClbI8IHpmmcWXna4v9tCOhFgLqA4nAaKAPiqR
         rkbc8Y8Z4eEsPCyD30+GO3MdKuYe1sqRJz0o6+V++WARjKThQxtxmrW8Ogv6xig272wq
         7rdQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=+ZScgEE8BP4P9sp2IQ6DaxPBU7XVoJfWWipzL18hE6E=;
        b=D7Orii6wUyw/3k/H56wbQ/eWSc2K52bRc0ntNmhprFWrjhzOZGFKg+GJI7aGs7dFlV
         zwdnnV4VQQnOYc2c3OW5L5zAyLs82ZbXaJe6J35gphwVryoEHkoKauOEdgv1U6+c54Xv
         WmbY6Qc799QoBQhaWDQVQAfXsmY3K6dIPGGnMh8Wf9x466VWQo1eZbXPBQr9Sd3WQiIQ
         x3xhN7+rtKq92RBQq5Wf2oALigKuHfhnD3iu9tZsYD0jPwyke7z4yA7udGu/nzl9N+hb
         CT5ROmN/G5ThfJkIbW/XovybCX+eabX9Z2nom5Pc+m+lk9Npyxl0EEjh2+ovC/YqPSEY
         7OCg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.219.65 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+ZScgEE8BP4P9sp2IQ6DaxPBU7XVoJfWWipzL18hE6E=;
        b=Jhrasxi36NcxaA7xfZohr/0JiSI2GFayM63PYsMRDQszxUubBiOvMX8DVN1EDFIMuK
         sSg+7biqQ+kczmT8N3Lt0IxivwOJaeqfdfvqnU4a041oW80jwe6ZsTt5bkGRRJhdp8bQ
         piIJjq1KFMqLnKNYcdaLLUvtjcRbIVqB8at5GpwcnUSlau849e277iNXOrgQwAQIMk/B
         sRMV5FaFrHtSgCsiQd7z0382iyIoxjMCIRFk+LzOMLs6+neZi3YG6Tqd9ZmPU9DRU9yp
         w6zY+zYet94qSeP/8ocFdput99CzWRgVUSkh1X4thFNvYgIchL2+v5DYtk4F4yXSgScO
         y2mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+ZScgEE8BP4P9sp2IQ6DaxPBU7XVoJfWWipzL18hE6E=;
        b=QD+mOlm0+1bF66P98vpyOvIROXn/iXzKMMbxeqyGGY5QqBJFkVj+SSpaEgpi830nBp
         wcSXbEsN2iLvE6j/OZe3xJglSunh9ZEzV6lclBsNFmWX90aAOYlVo+uWIb1DrKzIhx4o
         JtDAoEJ5ZvrlunXNpKvhnWinCroEOmFk/LfFdOYzldFHRhe3k6OjopaUzz3zBLV6vn6d
         ve8ZssdYK+ZEKUfuQgPg0GxZ/gWFfwAYz9ry9uEAH4SqI+rCnrE1brzXPAU3Uiskqvvu
         nfuSVRU+R08yj/NYEq1jth75PdCngKZmAvlQV2CUEHwp5HFBCVW6hlkdR8fw03x8K0RQ
         HnVA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531VkcqR9oJXuJ+6wemsi+0cK3RDEW+9Kbo3o6lVPQkt2K/Ube5A
	/m+h5dceZPWcnV1zRBkvmKM=
X-Google-Smtp-Source: ABdhPJzPr5SovbPOC0qdtPKnyxxmn8XcNRt3GxenHDuSlzAPg3MQLefgvCqiafZbyD6QInYUS/I/Sg==
X-Received: by 2002:a37:4e58:: with SMTP id c85mr7508278qkb.8.1594773698957;
        Tue, 14 Jul 2020 17:41:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:5:: with SMTP id j5ls220037qki.6.gmail; Tue, 14 Jul
 2020 17:41:38 -0700 (PDT)
X-Received: by 2002:a37:dd5:: with SMTP id 204mr7350827qkn.438.1594773698597;
        Tue, 14 Jul 2020 17:41:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594773698; cv=none;
        d=google.com; s=arc-20160816;
        b=RJuRPV0UFn/9kUDg86URiyZoCttZwFVjaTnO1n1oy0h9s3O/J9w6b2H8KCScg/M2Ms
         mtfLD+P0gUUPQeXWOimWZuxyJY+TvuNSrms4Ot+09bHYlgUI/lIyErLOgH3OIjer8Bgi
         rWYBAqXjADfnAWPbzw3P+obtZUzsQ625UyozdVjOrTn9QImapSoeIK9Zot9f3eIh1bsX
         3XKfSrEwTo+60wtl29CUOZ4YEa2yKFli1Et5/ypj/DfuYMkbq7IV65jtTURW/CvOYrKO
         3YI7fTw3BmGWycQNG6f2lqGuaDKdOBgJKDaEnNb9spS0DW98OLCF5PMVgmFAAXG+E4sb
         CqHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=hjflrgJ1nEMfvu6o0sT4KLViapV2UjMMsYBLgsk/fRo=;
        b=VwNd8JR4bjex0RrMcuib3Tb5dqPDl0sOfZFlaFtAYR+4G4XGsU2D71mk7KkQwhKtQT
         Hq5ogSNfJb0AGo9A4hmJMFHSy2hMIRKFQpPXBozhNMsuYzR128it4h8tWRQMtL8psSSl
         iy221wXeCmpDAt1UBd4CesDizV9JDSCKNTTyNHQI4KdgUjDWuEBczumlQO/BQtba+wgJ
         SYdgFKHcOUkNLnNx8klTZVSGHFn2Q++P8qCoxxkXrkNfX94aZ39ZkxtpDhpObxygm5Q2
         lCcVDvsChbWL/9WMkspVF5Hu6P9rhYn3wiqVqM0AfD+ib0dFX6l4kXxf+Mm4cQi7g3by
         Ot9g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.219.65 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qv1-f65.google.com (mail-qv1-f65.google.com. [209.85.219.65])
        by gmr-mx.google.com with ESMTPS id q14si43161qtn.4.2020.07.14.17.41.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Jul 2020 17:41:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 209.85.219.65 as permitted sender) client-ip=209.85.219.65;
Received: by mail-qv1-f65.google.com with SMTP id a14so162650qvq.6
        for <clang-built-linux@googlegroups.com>; Tue, 14 Jul 2020 17:41:38 -0700 (PDT)
X-Received: by 2002:a05:6214:289:: with SMTP id l9mr7332970qvv.238.1594773698195;
        Tue, 14 Jul 2020 17:41:38 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id c9sm524776qko.24.2020.07.14.17.41.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jul 2020 17:41:37 -0700 (PDT)
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
Subject: [PATCH v5 3/7] x86/boot/compressed: Get rid of GOT fixup code
Date: Tue, 14 Jul 2020 20:41:29 -0400
Message-Id: <20200715004133.1430068-4-nivedita@alum.mit.edu>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200714023836.2310569-1-nivedita@alum.mit.edu>
References: <20200714023836.2310569-1-nivedita@alum.mit.edu>
MIME-Version: 1.0
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 209.85.219.65 as
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200715004133.1430068-4-nivedita%40alum.mit.edu.
