Return-Path: <clang-built-linux+bncBCIO53XE7YHBBP75SH4QKGQE27XPUCY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x138.google.com (mail-il1-x138.google.com [IPv6:2607:f8b0:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id CB1B8234C3D
	for <lists+clang-built-linux@lfdr.de>; Fri, 31 Jul 2020 22:27:44 +0200 (CEST)
Received: by mail-il1-x138.google.com with SMTP id w81sf22357927ilk.23
        for <lists+clang-built-linux@lfdr.de>; Fri, 31 Jul 2020 13:27:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596227263; cv=pass;
        d=google.com; s=arc-20160816;
        b=SNGo1YFs403FSICeLBXoxfZSOlcrVgVKMlTppqyvwRRIln+I4tTdZQmAJOa4VROk+L
         KUSnJNJSs2Z3p8hhGD6oXBhIfLbiTEEATvT1F+vel2M4PJpxhV9A7pGk72YPx3ybmJ5a
         YjJzlf1tT/fC8qJKvLtUa/uYc8+bME2bEv+fFlyeiXAgLvVMxUzgBbEx9oZ6zbio5yIb
         ZzkAXuDIbkMVQbatC5fhkFZ0+WLLYhOf2IFRLk2YzokI9Ptyqsm4U2LilW2OCP5CXeb6
         zsMOSHpzM3M4jTzgthAj0kdgszbf8thV97UkYbqBBiaCY928XPfdi1xYSyYEOXh7Kaji
         kEdA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=0fDRBHSTLfsHyBuomaowNkvac0EhDTCkX/6kPVLTa1Y=;
        b=jzzvBKsHmd4fFv7SA89UsIhXUrIwIPbdDlvuBUGvLsRn7P9lySQyfQ+AM0F0ai2s05
         LWkqWE49+rNptNbSR4Qyg9gkqY+UqMtb5XFp+dl6OTGG6NyWKBwqsnKM5Q99U3Oh96g5
         JDyh51itBfKgFj2QdnJtRaEJuAFeJSBhQiL2Owiqji3wlUCMqSNYyWSAtKK1yYnKxOli
         92NuaYciVP0YzdXfj4uZU5AO/npFRO2DE0XlLzXhOim05kEP6ML8MSLJ5A5t6qE/kzL3
         c2mcdJZYTeF+pZ4yoiSfae0Ls+8cXVsySI51bExinyelVn22BqOYOCxfvHcoGfnJ0pYt
         7wDg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.222.195 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0fDRBHSTLfsHyBuomaowNkvac0EhDTCkX/6kPVLTa1Y=;
        b=Vka4MmkpASC8wNcPQxucy9CJAc3YS6N98Oy0Nw2ZZYF25/WZ1dy6IztrlwDMY4Xl8f
         arssfJ4EYbs+PR3C7ycLD8sbN79q6cplNDp9dnrxbO2vk0TJs009UIyPYC33QBd9YXCQ
         nS6OoO4zOKwK/fMFyYkpOMgUjclL5V3H22lfLrBrcsm8122tI3t3mzxP22Q9lzG7IviU
         Wq1mGjn7vtFBRJNVi/jkhkcd2TdB8bK61Yf9aWfjwzDB4nTC3kj09y6XMCFnpmgge8kg
         pYysvreiEVq7R8Z3mG9mgvINxoTHCGuJL8vjuWvWFF7Bw/MhBOM9PBvY7RIuQ32hfMKg
         QVhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0fDRBHSTLfsHyBuomaowNkvac0EhDTCkX/6kPVLTa1Y=;
        b=UIfWOQ1pmYOOuGkCz6yUoekupBHKvYynucKljdkXqf9i+NnqJ5Jbn1L0rGUglIjOby
         cWj/hpcws6yHOW+caMRjWgEmTeX3UxralvJRx8gRQ8au9CBQK2XCrHuawvprxyiO805a
         ycLBpfHsQvMTIjmMeUTX6o4EwwWYTNqmAY0mfUCZ2WkYOHe3p1cE8cPeNaE5PJ0ugCCE
         DqybMAzdwfKxyqFGvpF19btDSOSAca5KkXzCyYprIqIVUp5Q9UfGbSbBuFwL1bFR0a7q
         hBQVDn+IC0OS1DpWW5SaixALscydsW43B3oeB8qJ7+FL1qEzqD5hImPkra7UIc8aTcQ0
         ru4g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5328Dk9AcUtEgmitPJHjWf8REVdyhDabk+77ffYKS5ROSZfyk1Gw
	j9Gg0IKDH/wSho7AC5AhafI=
X-Google-Smtp-Source: ABdhPJz/pgJDoOGTz7pBn7h5iEluJrjNhGZXxsfAJcDuuOaIJ1UC3TuVOwo7+PvXcKIf11d+nVMk8w==
X-Received: by 2002:a02:3445:: with SMTP id z5mr6826450jaz.134.1596227263851;
        Fri, 31 Jul 2020 13:27:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:25c8:: with SMTP id u8ls1628338jat.2.gmail; Fri, 31
 Jul 2020 13:27:43 -0700 (PDT)
X-Received: by 2002:a05:6638:2653:: with SMTP id n19mr7036671jat.34.1596227263548;
        Fri, 31 Jul 2020 13:27:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596227263; cv=none;
        d=google.com; s=arc-20160816;
        b=hV3bjDx+I2i5k0DlAuhe6mR3tQbmQIYcgAvYmIByaJdLpClrrmYy3300BtUWadOklM
         9G+0ee9TfCrDDx5uwH+Sb3cy4KF5nWKncjSRHrQNfQzynMPl/ry6uj3H/SJgCunOcN5k
         laTIXWmENAv6gARDPDsIGG+1EAjg1QXYft98R+46XqeRvu2lMF43nSn1GrMwfE9XOlBp
         czRsp65EWiItY64rVxfbhI8hsijY9KOJlYOzCU6Om3OYzHGjuURSeqdjY+uJRedFSxWM
         jFKvvL0Gpczg97t0GcxyNGRa+EMJ/gXACw+MDcPAJ/80wVu/KZ0LdTJZNdQkqGm9qEwi
         Qw2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=jTJmuMHMoUnqEUSTxLhw7IvuLFcGq+7IR7nOLQ9ACgw=;
        b=zBW4DboH0kKVca7KWNULfhq+BCBign2gSmQ7RG8wn6Irj/kMAeaoTQyaBNQr5/rgVH
         y29P7Dv9hMDkC3wKq7Ax07y3X3vpajHiTFbpaxl0cuwtXLHTfZN3Qo/LX7HWI/rX4jvP
         2N+FuwtLWiVE8wyHXLbnFnpc01rfMwXzylczdNHSiTxU2fqKqj8RR8LbESDMlGEkEK8l
         vu49ICmtoPVYPMnrSGFw6VaFg/RiZaeKbmqgUCKEFNSHul3aiWGR3UdeA2HNizawnlp4
         9RBH1Ay0kJzM9Odw2Bbnla2v5JiVgyVqb03+HdwMmt1D0+yV5p0VJbSYL2+Drm3aQLn2
         gKNQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.222.195 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qk1-f195.google.com (mail-qk1-f195.google.com. [209.85.222.195])
        by gmr-mx.google.com with ESMTPS id j127si110102iof.4.2020.07.31.13.27.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Jul 2020 13:27:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 209.85.222.195 as permitted sender) client-ip=209.85.222.195;
Received: by mail-qk1-f195.google.com with SMTP id j187so29955898qke.11
        for <clang-built-linux@googlegroups.com>; Fri, 31 Jul 2020 13:27:43 -0700 (PDT)
X-Received: by 2002:a37:83c3:: with SMTP id f186mr5739273qkd.236.1596227263167;
        Fri, 31 Jul 2020 13:27:43 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id t35sm10607976qth.79.2020.07.31.13.27.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Jul 2020 13:27:42 -0700 (PDT)
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
Subject: [PATCH v6 3/7] x86/boot/compressed: Get rid of GOT fixup code
Date: Fri, 31 Jul 2020 16:27:34 -0400
Message-Id: <20200731202738.2577854-4-nivedita@alum.mit.edu>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200731202738.2577854-1-nivedita@alum.mit.edu>
References: <CA+icZUV2=hj=+9DtbH47wtdE=GM5AZjS1xTgH7PKE+NxsRa2jw@mail.gmail.com>
 <20200731202738.2577854-1-nivedita@alum.mit.edu>
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

From: Ard Biesheuvel <ardb@kernel.org>

In a previous patch, we have eliminated GOT entries from the decompressor
binary and added an assertion that the .got section is empty. This means
that the GOT fixup routines that exist in both the 32-bit and 64-bit
startup routines have become dead code, and can be removed.

While at it, drop the KEEP() from the linker script, as it has no effect
on the contents of output sections that are created by the linker itself.

Tested-by: Nick Desaulniers <ndesaulniers@google.com>
Tested-by: Sedat Dilek <sedat.dilek@gmail.com>
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200731202738.2577854-4-nivedita%40alum.mit.edu.
