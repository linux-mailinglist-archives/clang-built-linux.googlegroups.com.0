Return-Path: <clang-built-linux+bncBCIO53XE7YHBBIHM473QKGQEMBRSVFY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf40.google.com (mail-qv1-xf40.google.com [IPv6:2607:f8b0:4864:20::f40])
	by mail.lfdr.de (Postfix) with ESMTPS id A2B8220CF0B
	for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 16:09:37 +0200 (CEST)
Received: by mail-qv1-xf40.google.com with SMTP id v20sf11863849qvt.15
        for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 07:09:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593439776; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZI6ICF43P2LeTMf5Z8ZxUKzIi/co+abxS7RXMGRY9KbCMQr1E6YJ+PQzpyS2fqNBmS
         9uZmPhIOvrgw+NQaHL/3E4Jzs3bdjWgPp9EBJnJc12tfsGLj2y1SM1EJpSYo2DoVoZIh
         CwhCTEz0Omn3Ap2X5/xVH8Sz3Ak/8lxn94YBYNkK4BBOvcB8KJhQ6hhsdj8lp06+0+IU
         punrr78XM+iacnUnGh3r1yue/xhCxSiXupDYQf/5SEp2dW+i+ty9OXU0nZzLBEdHH2hk
         tZDXuTiY8Ycy+fyxPXdJB/Hw73hDCOFRM77chAZDS9osMXm9UdZWG8qG4iFw8dC5UEzY
         XqpQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=QJrFothl4KN94FcaozgjUWtWbFC96UsbEUTbmPbnops=;
        b=dR3v0qLol55pSsQFYyneHhQA1hKgdPAmgY61sImTveK+9boT0ev22YGlfTPlU2+zUy
         BE6ow2TtCmp8vKJWP6Z44M++nh/0JE/xOnec7fIzEowE+HN1ddRgB6IQhyy08Z82y69h
         kKe9JfpRy1G9kdFxGfhAhgHXcJmTxf9rMWdvjX0ITGQIKyvdNPVi5HnPoGfDLp+MgwZa
         7EWZ68FZaYowkG70A7khjw7uac07LjMUfVs/WrvMwRSh6NIHaq9B+uzFijkZurA7W2wc
         GDq5r4b6x5iS/Pq4YWOjYfKbBrFpaXtgXSlsGItrjXZFiqjqI3pnm+duBOpJW/uVSZ1U
         SxVg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.222.195 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QJrFothl4KN94FcaozgjUWtWbFC96UsbEUTbmPbnops=;
        b=l1Hn5F94s+VkgRKO775ZWUCGVW4yXFmEEnnyny8nXtl9CpK3aPb+/Ybb6+fd2hhlRQ
         1SDUnfzyPTtOLjH6iUsWeZIUYJkdC7Xwi90kQ/3kyYQOD5hYfMHPD/TWetmpA5ooY1+3
         E/AVHfDe/ElMFU+PxK95gnhHVHxn8a6qfEDh1b1+Tbt89hUgNffllaxXvXZiuKPGhlEw
         5R04DoFywzhlvAnNZaV4EYg3kvnZ5215McMcu6Rkzx6d54M9olD8QoWyLWWTT3A03p1u
         pHmUMbydHlFJl2eVe1AZIJBgToSl8wlbQtjVmrxL6sTLh+sqfC37uJY1uPNgeaPmcxyl
         YK2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QJrFothl4KN94FcaozgjUWtWbFC96UsbEUTbmPbnops=;
        b=bjeo6YphYhvlhAtZXP2+eLZuYob0YRxkxdSVStBfftB4VZA8ZnUcUOMz6kROfMW56z
         3Ii5EEBNJs88cuTlZLaJgcikUH8GGiYDNjqA6mKVBl0n2jJbxD3HgLAfN7sZaKRou/fD
         8LjSNyzfHJxUwDSWHizkrF7GK078+gDbdvDX+EKK7aBQA6q82nzrI58wdmRHg+0yP31f
         oDnt//joodCYUTlKhFGusNGO3tMW7nBR9gxdOLq4Mlvxm0dKckJ4Ngv80baMqdLt2Kqa
         08eR4CXhtgH8ij3BLdppCUKWrcPamKrWsPvyeszTxp3ETaQw02q/mSUJYIyRk3e2csh7
         EBdA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Vb6DZQGGijNMCy56QhGkf1xONYoO1UhDD4opNH0o6PAzeGYXK
	pkkreM+RVwG7PQ1mgRgu0ps=
X-Google-Smtp-Source: ABdhPJwYY3flPwKR1d+jzhndh6Kfno5SCjVqoHZEHSyYnRKCTVRpEP3cIxOm5d77vnGPrXURRpi10A==
X-Received: by 2002:ac8:18b2:: with SMTP id s47mr2422583qtj.114.1593439776650;
        Mon, 29 Jun 2020 07:09:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ae9:e415:: with SMTP id q21ls4497816qkc.9.gmail; Mon, 29 Jun
 2020 07:09:36 -0700 (PDT)
X-Received: by 2002:a05:620a:629:: with SMTP id 9mr15573438qkv.353.1593439776158;
        Mon, 29 Jun 2020 07:09:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593439776; cv=none;
        d=google.com; s=arc-20160816;
        b=tvI4CxaTY/2HETQXkY5mKYv3bwCLtNB8m2PvDcr8olhoy0VcXgXOTGKJbOWf1KiS4+
         V0ssnpzVuhFsLbbi0cQgTH4oKi7S1C8RFcCgD4mh6mBmybvBSA+pEFHuu4zsq/+nUEMb
         w7QWcTYTjiKCsxrG5ZTxK46uHL7bWp+Fxqv6U9QGDV97lYP4gTvuOK2qTIF9FmR5bo/e
         saJrrmOe+bQ7GWZVmeud7+GvcbnhCS3KF0Db97HLQTnjtayGXbQBuRZ7ndJfT4Fa2023
         Cq0UQ87fxxTxZUxGRJnNTvnpQC23HYWTgTztsd/KOBriwLqQjml+JwC/7QIJdql4bGHm
         rlbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=2Qs8KMotxALcLQMm6tRsTVIBWoW2gBLDKnW8HruAPPY=;
        b=x+0KMcksgEn5BMsND6sv2awjcEakBhOkZI4fl6lxt5VhD1DmvapNFDPuoIFrRy9Kwt
         bp9AE67FtV26rL7l8uvXkw1g4Uz+Z6lB1Ve7GUjqXlyVAeL+acH9wgUx/Wv8m1aZ8d2g
         qoFcLxD6XvErpx09k6vHJhs0LwKUjC2FrvX8KKgYKDKRF4QCm7EKO9GGGA7zrLZ2i+CO
         25aKeZqqqpXDIgo/+roSYkb1Bcc3qrJwjNSH5Asx6JV/I39AzaMqMdROnb39at2DG77j
         1PCA/9GlOUHtABktigmyO1jTd2ne1P3Tv9tWB+D91JWOiKfALN7t675EqxGyRxuBPXtU
         RMyg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.222.195 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qk1-f195.google.com (mail-qk1-f195.google.com. [209.85.222.195])
        by gmr-mx.google.com with ESMTPS id d27si1629593qtw.1.2020.06.29.07.09.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Jun 2020 07:09:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 209.85.222.195 as permitted sender) client-ip=209.85.222.195;
Received: by mail-qk1-f195.google.com with SMTP id z63so15290032qkb.8
        for <clang-built-linux@googlegroups.com>; Mon, 29 Jun 2020 07:09:36 -0700 (PDT)
X-Received: by 2002:a37:4249:: with SMTP id p70mr3085447qka.496.1593439775624;
        Mon, 29 Jun 2020 07:09:35 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id i26sm10741461qkh.14.2020.06.29.07.09.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jun 2020 07:09:35 -0700 (PDT)
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
Subject: [PATCH v3 5/7] x86/boot: Remove run-time relocations from .head.text code
Date: Mon, 29 Jun 2020 10:09:26 -0400
Message-Id: <20200629140928.858507-6-nivedita@alum.mit.edu>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200629140928.858507-1-nivedita@alum.mit.edu>
References: <20200629140928.858507-1-nivedita@alum.mit.edu>
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
Reviewed-by: Ard Biesheuvel <ardb@kernel.org>
Reviewed-by: Fangrui Song <maskray@google.com>
---
 arch/x86/boot/compressed/head_32.S |  64 +++++++-----------
 arch/x86/boot/compressed/head_64.S | 104 ++++++++++++++++++-----------
 2 files changed, 90 insertions(+), 78 deletions(-)

diff --git a/arch/x86/boot/compressed/head_32.S b/arch/x86/boot/compressed/head_32.S
index 39f0bb43218f..8c1a4f5610f5 100644
--- a/arch/x86/boot/compressed/head_32.S
+++ b/arch/x86/boot/compressed/head_32.S
@@ -33,26 +33,10 @@
 #include <asm/bootparam.h>
 
 /*
- * The 32-bit x86 assembler in binutils 2.26 will generate R_386_GOT32X
- * relocation to get the symbol address in PIC.  When the compressed x86
- * kernel isn't built as PIC, the linker optimizes R_386_GOT32X
- * relocations to their fixed symbol addresses.  However, when the
- * compressed x86 kernel is loaded at a different address, it leads
- * to the following load failure:
- *
- *   Failed to allocate space for phdrs
- *
- * during the decompression stage.
- *
- * If the compressed x86 kernel is relocatable at run-time, it should be
- * compiled with -fPIE, instead of -fPIC, if possible and should be built as
- * Position Independent Executable (PIE) so that linker won't optimize
- * R_386_GOT32X relocation to its fixed symbol address.  Older
- * linkers generate R_386_32 relocations against locally defined symbols,
- * _bss, _ebss and _end, in PIE.  It isn't wrong, just less optimal than
- * R_386_RELATIVE.  But the x86 kernel fails to properly handle R_386_32
- * relocations when relocating the kernel.  To generate R_386_RELATIVE
- * relocations, we mark _bss, _ebss and _end as hidden:
+ * These symbols needed to be marked as .hidden to prevent the BFD linker from
+ * generating R_386_32 (rather than R_386_RELATIVE) relocations for them when
+ * the 32-bit compressed kernel is linked as PIE. This is no longer necessary,
+ * but it doesn't hurt to keep them .hidden.
  */
 	.hidden _bss
 	.hidden _ebss
@@ -74,10 +58,10 @@ SYM_FUNC_START(startup_32)
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
 
@@ -90,14 +74,16 @@ SYM_FUNC_START(startup_32)
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
@@ -108,7 +94,7 @@ SYM_FUNC_START(startup_32)
  *	image_offset = startup_32 - image_base
  * Otherwise image_offset will be zero and has no effect on the calculations.
  */
-	subl    image_offset(%edx), %ebx
+	subl    image_offset@GOTOFF(%edx), %ebx
 #endif
 
 	movl	BP_kernel_alignment(%esi), %eax
@@ -125,10 +111,10 @@ SYM_FUNC_START(startup_32)
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
@@ -139,8 +125,8 @@ SYM_FUNC_START(startup_32)
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
@@ -153,14 +139,14 @@ SYM_FUNC_START(startup_32)
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
 
@@ -170,7 +156,7 @@ SYM_FUNC_START_ALIAS(efi_stub_entry)
 	add	$0x4, %esp
 	movl	8(%esp), %esi	/* save boot_params pointer */
 	call	efi_main
-	leal	startup_32(%eax), %eax
+	/* efi_main returns the possibly relocated address of startup_32 */
 	jmp	*%eax
 SYM_FUNC_END(efi32_stub_entry)
 SYM_FUNC_END_ALIAS(efi_stub_entry)
@@ -183,8 +169,8 @@ SYM_FUNC_START_LOCAL_NOALIGN(.Lrelocated)
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
@@ -198,9 +184,9 @@ SYM_FUNC_START_LOCAL_NOALIGN(.Lrelocated)
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
index bf1ab30acc5b..11429092c224 100644
--- a/arch/x86/boot/compressed/head_64.S
+++ b/arch/x86/boot/compressed/head_64.S
@@ -43,6 +43,32 @@
 	.hidden _end
 
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
@@ -65,10 +91,10 @@ SYM_FUNC_START(startup_32)
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
 
@@ -81,7 +107,7 @@ SYM_FUNC_START(startup_32)
 	movl	%eax, %ss
 
 /* setup a stack and make sure cpu supports long mode. */
-	leal	boot_stack_end(%ebp), %esp
+	leal	rva(boot_stack_end)(%ebp), %esp
 
 	call	verify_cpu
 	testl	%eax, %eax
@@ -108,7 +134,7 @@ SYM_FUNC_START(startup_32)
  *	image_offset = startup_32 - image_base
  * Otherwise image_offset will be zero and has no effect on the calculations.
  */
-	subl    image_offset(%ebp), %ebx
+	subl    rva(image_offset)(%ebp), %ebx
 #endif
 
 	movl	BP_kernel_alignment(%esi), %eax
@@ -124,7 +150,7 @@ SYM_FUNC_START(startup_32)
 
 	/* Target address to relocate to for decompression */
 	addl	BP_init_size(%esi), %ebx
-	subl	$_end, %ebx
+	subl	$ rva(_end), %ebx
 
 /*
  * Prepare for entering 64 bit mode
@@ -152,19 +178,19 @@ SYM_FUNC_START(startup_32)
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
@@ -175,7 +201,7 @@ SYM_FUNC_START(startup_32)
 	jnz	1b
 
 	/* Build Level 2 */
-	leal	pgtable + 0x2000(%ebx), %edi
+	leal	rva(pgtable + 0x2000)(%ebx), %edi
 	movl	$0x00000183, %eax
 	movl	$2048, %ecx
 1:	movl	%eax, 0(%edi)
@@ -186,7 +212,7 @@ SYM_FUNC_START(startup_32)
 	jnz	1b
 
 	/* Enable the boot page tables */
-	leal	pgtable(%ebx), %eax
+	leal	rva(pgtable)(%ebx), %eax
 	movl	%eax, %cr3
 
 	/* Enable Long mode in EFER (Extended Feature Enable Register) */
@@ -211,14 +237,14 @@ SYM_FUNC_START(startup_32)
 	 * We place all of the values on our mini stack so lret can
 	 * used to perform that far jump.
 	 */
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
 	/*
@@ -229,7 +255,7 @@ SYM_FUNC_START(startup_32)
 	 * the correct stack alignment for entry.
 	 */
 	subl	$40, %esp
-	leal	efi_pe_entry(%ebp), %eax
+	leal	rva(efi_pe_entry)(%ebp), %eax
 	movl	%edi, %ecx			// MS calling convention
 	movl	%esi, %edx
 1:
@@ -255,18 +281,18 @@ SYM_FUNC_START(efi32_stub_entry)
 
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
@@ -345,11 +371,11 @@ SYM_CODE_START(startup_64)
 
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
@@ -423,7 +449,7 @@ SYM_CODE_START(startup_64)
 	lretq
 trampoline_return:
 	/* Restore the stack, the 32-bit trampoline uses its own stack */
-	leaq	boot_stack_end(%rbx), %rsp
+	leaq	rva(boot_stack_end)(%rbx), %rsp
 
 	/*
 	 * cleanup_trampoline() would restore trampoline memory.
@@ -435,7 +461,7 @@ trampoline_return:
 	 * this function call.
 	 */
 	pushq	%rsi
-	leaq	top_pgtable(%rbx), %rdi
+	leaq	rva(top_pgtable)(%rbx), %rdi
 	call	cleanup_trampoline
 	popq	%rsi
 
@@ -449,9 +475,9 @@ trampoline_return:
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
@@ -462,15 +488,15 @@ trampoline_return:
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
 
@@ -482,7 +508,7 @@ SYM_FUNC_START_ALIAS(efi_stub_entry)
 	movq	%rdx, %rbx			/* save boot_params pointer */
 	call	efi_main
 	movq	%rbx,%rsi
-	leaq	startup_64(%rax), %rax
+	leaq	rva(startup_64)(%rax), %rax
 	jmp	*%rax
 SYM_FUNC_END(efi64_stub_entry)
 SYM_FUNC_END_ALIAS(efi_stub_entry)
@@ -645,7 +671,7 @@ SYM_DATA(efi_is64, .byte 1)
 #define BS32_handle_protocol	88 // offsetof(efi_boot_services_32_t, handle_protocol)
 #define LI32_image_base		32 // offsetof(efi_loaded_image_32_t, image_base)
 
-	.text
+	__HEAD
 	.code32
 SYM_FUNC_START(efi32_pe_entry)
 /*
@@ -667,12 +693,12 @@ SYM_FUNC_START(efi32_pe_entry)
 
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
 
@@ -707,7 +733,7 @@ SYM_FUNC_START(efi32_pe_entry)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200629140928.858507-6-nivedita%40alum.mit.edu.
