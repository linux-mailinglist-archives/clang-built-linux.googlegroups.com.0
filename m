Return-Path: <clang-built-linux+bncBCS7XUWOUULBBDPWVP3AKGQEICRD6SI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3b.google.com (mail-oo1-xc3b.google.com [IPv6:2607:f8b0:4864:20::c3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 635BC1E03CB
	for <lists+clang-built-linux@lfdr.de>; Mon, 25 May 2020 00:54:06 +0200 (CEST)
Received: by mail-oo1-xc3b.google.com with SMTP id p6sf986728ooa.3
        for <lists+clang-built-linux@lfdr.de>; Sun, 24 May 2020 15:54:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590360845; cv=pass;
        d=google.com; s=arc-20160816;
        b=vuj4/y583PdLfzHAmUa0LwV1sii01FTNr91aiXJAqwzX9SG4AXuhOE8lOnZnR1gmIx
         dr6YEAnZsFz51f+RfkMMRv7LQivDV8HmV6d5CLN6va5E8/vuV3MXwB+oA0cW6+yzENkD
         qyTtCz9Zzb5DYJlV4TzmiBBxQNdCepxW7ZlL87Wmvf+u6RtGIEAIruxNh4ApLLU8uHL1
         c5s9mYxS9n+sU7JJmw7KtXzKQqq6pvWlI5W3XgNPTKsfEv4al2+lD1/luoUHYFo/gC20
         DNTJ0TNd98t7aG5xMsCqBuZUURqd4658YVJXrzn8fMtZ/EZu6FC3rIcsR04+SxdnbpEv
         Ge7g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=vTWmDfMr1BQAJ8grc43Gyop5gEl1Hmq/qXnwFOWs7bk=;
        b=YHcaeylIpSgLia/hqgM1pdib6+5QAOHPQwQ3i5R+7jihRRHb/fzFB3qYrTDuJxDbwg
         OaRCFUYjeq+bUExy2fYC1TKeVMKsrY75H6F08MIvLNGFNdb0V/vy9I9kPDtUIAU2+rxL
         nibiMubINvjafY2DpJmvSRrdbxpUT1quxr31LIIB4HPpE0UygziE6Ut4nigssvCdMfDK
         pEzwj2oGeoXvEhwos0QWIntObBGteorzhqeD/mmV37NL64rycbCQgbP29wBncyi04LQy
         tHrBV4Dr1qyREZ/sK9hh/z6Z8LUitcxGrOoz0MERiMwajOlQIRubCgnSUdymQKT2mED4
         h8jw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=OaQpMYGL;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=vTWmDfMr1BQAJ8grc43Gyop5gEl1Hmq/qXnwFOWs7bk=;
        b=UfUCbeJ6Tiul+FcIweXhc2JJkjYnfWuRoYdrr8hKqeUQc8/73CIB+3OQDYeljUCM6i
         MFpn5E60mxie04Th2JD0ylEPS0OjEgXCPASUsq+VR/9Yb0Ovma7BbmC+Lgk30E7kPSul
         qx8+sOSPiGsx3XNOeAobSSjry78HYBuffuOEKdmOk/3E5uwdFaAG5mL4N0obGY/PtUHn
         1gDyq8r/XOhjh3Eblc9KlS7znQ/vPnkY78iAUHZQcxqEIB7kFSMleNhc9HuqqfnBRqlo
         oIfA9uZLtNz3X989TVgl2MJNew3ksw/tcB5/qEgS3+4EfSw1gXjSuWfQO3vJPEy0IAPb
         isWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vTWmDfMr1BQAJ8grc43Gyop5gEl1Hmq/qXnwFOWs7bk=;
        b=ZM8LI1v4oOVkr/9QdNIODY+bioSk8jGCdzFPYXHwrCdHQpiA49GYSLFL4Nb5FHRnL1
         Sqj1KWTN3MjVnSnn7K5DBtJHDobuC+Khei5LuT0mcdS98/KyG+Pt2dYiRmOe0bYTJmUR
         Jnm/S0dJVYfm0EGtr1T6qrhfWbm1itlB3pNCCtlZNc2O0YZM7TX3thFJFygz2Z6IozNc
         ijjP6/I+NTK5crO90PYMbHDmwHEItovX/sbFDXQ8D/1XLEn9+fhUJ9H0rYEk6rHg3f49
         /p+GOvM053dw78JUiBl55eXoOzWz8MebTp+J7g4iwu3n709xnTARHNMilKlH5nRjzCCj
         KJng==
X-Gm-Message-State: AOAM530qT8ORvhyVeIsxxq/AXScfC1Vvf3WSTUylG37VpB35WdcBYW7g
	n8ARKv5BNUeqzxrgwDCPQLY=
X-Google-Smtp-Source: ABdhPJwucWG02uGzv1R7Ti+5JsNpmobNpmwokgK2Ih8B6Mvb+f1aRykFrm1WoVjr5EcaEPWvrrfdbQ==
X-Received: by 2002:aca:f550:: with SMTP id t77mr9787756oih.8.1590360845296;
        Sun, 24 May 2020 15:54:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1c34:: with SMTP id f20ls1319616ote.1.gmail; Sun,
 24 May 2020 15:54:04 -0700 (PDT)
X-Received: by 2002:a05:6830:1604:: with SMTP id g4mr9933558otr.296.1590360844899;
        Sun, 24 May 2020 15:54:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590360844; cv=none;
        d=google.com; s=arc-20160816;
        b=VpgU9fgzFED1lbOyNKxsQUW5olRQBdKj9BROwyxcmeZqp1EQnJKf+Dv76GwFWjtvxP
         7gy6PHUAr+RE47mdWkOhS/NaIF/7boOY5om6XnwvCKRTZDqGLez1sEWBqIyDep5yJDmD
         gwT8g9gN5KjVVRcQCUJ+BhFi3xEiaCv5iJIczXSd0QMdozMgGnrbRfCB4ueBIE8Dovs2
         QJmcOTVmzl4LNrlTzAbpY06T2Oy7GNje5uGy0qtknwOg0rLcckmbj/Ljbub0pPWUXsSj
         wFowmhb4Lj4+BKXDwLCNbngnFuTo/POTbkC2nUjigNemZr54jgx4QmzPhSXzOI4NYyT9
         oFxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=TRYdHr33MbHUvwXypBj54kfAu1wrbEu4YIxMXT7XHrI=;
        b=VYInbc35sj20VBvJwweYqMYsPmwjxHatMk670OyAlFrqexsNlWqxrAReO1ly08L07H
         ztd18WPpw/mRfhIYJRZQ1LoNUWrorp6cMWp0rfLEkNL465P2dZbwFvF6Swx6VP+Hh+ir
         h8HNBBC/HqsTe64BVysFzy+GwP6VHjIAGghQ5z+pWyn4SeALXWZAtWdWz4CN82mGfKL7
         lodMB3UY3vmQn8Dub12K0Hnh3QSItXg/8wdoBY8VQ/21QW9lLxwLifIUtRIMplxeluc0
         Zbw/iXKj6cEf1VyQe+c+IrfDIuQv1E5DrCnH0Dd30BIIBHrQfGeRGG+1GphTRvd6ZEhP
         jmaQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=OaQpMYGL;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id a79si786704oob.0.2020.05.24.15.54.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 24 May 2020 15:54:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Received: by mail-pj1-x1042.google.com with SMTP id q9so7761734pjm.2
        for <clang-built-linux@googlegroups.com>; Sun, 24 May 2020 15:54:04 -0700 (PDT)
X-Received: by 2002:a17:90a:d506:: with SMTP id t6mr16192058pju.134.1590360843793;
        Sun, 24 May 2020 15:54:03 -0700 (PDT)
Received: from google.com ([2620:15c:2ce:0:9efe:9f1:9267:2b27])
        by smtp.gmail.com with ESMTPSA id m4sm11335737pfm.26.2020.05.24.15.54.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 May 2020 15:54:03 -0700 (PDT)
Date: Sun, 24 May 2020 15:53:59 -0700
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>, "H. Peter Anvin" <hpa@zytor.com>,
	x86@kernel.org, Nick Desaulniers <ndesaulniers@google.com>,
	Dmitry Golovin <dima@golovin.in>,
	clang-built-linux@googlegroups.com,
	Ard Biesheuvel <ardb@kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Daniel Kiper <daniel.kiper@oracle.com>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/4] x86/boot: Remove runtime relocations from .head.text
 code
Message-ID: <20200524225359.wnc43jmh6rvfaezq@google.com>
References: <CAKwvOd=qB+EoJwfAYUA9Hg7f9op4Q4W+TDnht8pLRG5bPX=29Q@mail.gmail.com>
 <20200524212816.243139-3-nivedita@alum.mit.edu>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20200524212816.243139-3-nivedita@alum.mit.edu>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=OaQpMYGL;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1042
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Fangrui Song <maskray@google.com>
Reply-To: Fangrui Song <maskray@google.com>
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

On 2020-05-24, Arvind Sankar wrote:
>The assembly code in head_{32,64}.S, while meant to be
>position-independent, generates run-time relocations because it uses
>instructions such as
>	leal	gdt(%edx), %eax
>which make the assembler and linker think that the code is using %edx as
>an index into gdt, and hence gdt needs to be relocated to its run-time
>address.
>
>With the BFD linker, this generates a warning during the build:
>  LD      arch/x86/boot/compressed/vmlinux
>ld: arch/x86/boot/compressed/head_32.o: warning: relocation in read-only section `.head.text'
>ld: warning: creating a DT_TEXTREL in object

Interesting. How does the build generate a warning by default?
Do you use Gentoo Linux which appears to ship a --warn-shared-textrel
enabled-by-default patch? (https://bugs.gentoo.org/700488)

% cat a.s
leal    gdt(%edx), %eax
% as --32 a.s -o a.o
% ld.bfd -m elf_i386 -shared a.o -z notext # DT_TEXTREL is set. R_386_32

% ld.bfd -m elf_i386 -shared a.o           # on-demand text relocations. DT_TEXTREL is set. R_386_32

% ld.bfd -m elf_i386 -shared a.o --warn-shared-textrel
ld.bfd: a.o: warning: relocation against `gdt' in read-only section `.text'
ld.bfd: warning: creating a DT_TEXTREL in a shared object

% ld.bfd -m elf_i386 -shared a.o -z text
ld.bfd: a.o: warning: relocation against `gdt' in read-only section `.text'
ld.bfd: read-only segment has dynamic relocations
## The above is an error. Output is suppressed

lld has only two modes: -z text (default) and -z notext. There is no
on-demand state. By default it will error.

There are feature requests to make -z text default, at least for some
architectures. I just found
https://sourceware.org/bugzilla/show_bug.cgi?id=20824

>With lld, Dmitry Golovin reports that this results in a link-time error
>with default options (i.e. unless -z notext is explicitly passed):
>  LD      arch/x86/boot/compressed/vmlinux
>ld.lld: error: can't create dynamic relocation R_386_32 against local
>symbol in readonly segment; recompile object files with -fPIC or pass
>'-Wl,-z,notext' to allow text relocations in the output
>
>Start fixing this by removing relocations from .head.text:
>- On 32-bit, use a base register that holds the address of the GOT and
>  reference symbol addresses using @GOTOFF, i.e.
>	leal	gdt@GOTOFF(%edx), %eax

Looks good to me.

>- On 64-bit, most of the code can (and already does) use %rip-relative
>  addressing, however the .code32 bits can't, and the 64-bit code also
>  needs to reference symbol addresses as they will be after moving the
>  compressed kernel to the end of the decompression buffer.
>  For these cases, reference the symbols as an offset to startup_32 to
>  avoid creating relocations, i.e.
>  	leal	(gdt-startup_32)(%bp), %eax
>  This only works in .head.text as the subtraction cannot be represented
>  as a PC-relative relocation unless startup_32 is in the same section
>  as the code. Move efi32_pe_entry into .head.text so that it can use
>  the same method to avoid relocations.

I have a nit about the startup_32 comment. See below.

>Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
>---
> arch/x86/boot/compressed/head_32.S | 40 +++++++------
> arch/x86/boot/compressed/head_64.S | 95 ++++++++++++++++++------------
> 2 files changed, 77 insertions(+), 58 deletions(-)
>
>diff --git a/arch/x86/boot/compressed/head_32.S b/arch/x86/boot/compressed/head_32.S
>index dfa4131c65df..66657bb99aae 100644
>--- a/arch/x86/boot/compressed/head_32.S
>+++ b/arch/x86/boot/compressed/head_32.S
>@@ -73,10 +73,10 @@ SYM_FUNC_START(startup_32)
> 	leal	(BP_scratch+4)(%esi), %esp
> 	call	1f
> 1:	popl	%edx
>-	subl	$1b, %edx
>+	addl	$_GLOBAL_OFFSET_TABLE_+(.-1b), %edx
>
> 	/* Load new GDT */
>-	leal	gdt(%edx), %eax
>+	leal	gdt@GOTOFF(%edx), %eax
> 	movl	%eax, 2(%eax)
> 	lgdt	(%eax)
>
>@@ -89,14 +89,16 @@ SYM_FUNC_START(startup_32)
> 	movl	%eax, %ss
>
> /*
>- * %edx contains the address we are loaded at by the boot loader and %ebx
>- * contains the address where we should move the kernel image temporarily
>- * for safe in-place decompression. %ebp contains the address that the kernel
>- * will be decompressed to.
>+ * %edx contains the address we are loaded at by the boot loader (plus the
>+ * offset to the GOT).  The below code calculates %ebx to be the address where
>+ * we should move the kernel image temporarily for safe in-place decompression
>+ * (again, plus the offset to the GOT).
>+ *
>+ * %ebp is calculated to be the address that the kernel will be decompressed to.
>  */
>
> #ifdef CONFIG_RELOCATABLE
>-	movl	%edx, %ebx
>+	leal	startup_32@GOTOFF(%edx), %ebx
>
> #ifdef CONFIG_EFI_STUB
> /*
>@@ -107,7 +109,7 @@ SYM_FUNC_START(startup_32)
>  *	image_offset = startup_32 - image_base
>  * Otherwise image_offset will be zero and has no effect on the calculations.
>  */
>-	subl    image_offset(%edx), %ebx
>+	subl    image_offset@GOTOFF(%edx), %ebx
> #endif
>
> 	movl	BP_kernel_alignment(%esi), %eax
>@@ -124,10 +126,10 @@ SYM_FUNC_START(startup_32)
> 	movl	%ebx, %ebp	// Save the output address for later
> 	/* Target address to relocate to for decompression */
> 	addl    BP_init_size(%esi), %ebx
>-	subl    $_end, %ebx
>+	subl    $_end@GOTOFF, %ebx
>
> 	/* Set up the stack */
>-	leal	boot_stack_end(%ebx), %esp
>+	leal	boot_stack_end@GOTOFF(%ebx), %esp
>
> 	/* Zero EFLAGS */
> 	pushl	$0
>@@ -138,8 +140,8 @@ SYM_FUNC_START(startup_32)
>  * where decompression in place becomes safe.
>  */
> 	pushl	%esi
>-	leal	(_bss-4)(%edx), %esi
>-	leal	(_bss-4)(%ebx), %edi
>+	leal	(_bss@GOTOFF-4)(%edx), %esi
>+	leal	(_bss@GOTOFF-4)(%ebx), %edi
> 	movl	$(_bss - startup_32), %ecx
> 	shrl	$2, %ecx
> 	std
>@@ -152,14 +154,14 @@ SYM_FUNC_START(startup_32)
> 	 * during extract_kernel below. To avoid any issues, repoint the GDTR
> 	 * to the new copy of the GDT.
> 	 */
>-	leal	gdt(%ebx), %eax
>+	leal	gdt@GOTOFF(%ebx), %eax
> 	movl	%eax, 2(%eax)
> 	lgdt	(%eax)
>
> /*
>  * Jump to the relocated address.
>  */
>-	leal	.Lrelocated(%ebx), %eax
>+	leal	.Lrelocated@GOTOFF(%ebx), %eax
> 	jmp	*%eax
> SYM_FUNC_END(startup_32)
>
>@@ -169,7 +171,7 @@ SYM_FUNC_START_ALIAS(efi_stub_entry)
> 	add	$0x4, %esp
> 	movl	8(%esp), %esi	/* save boot_params pointer */
> 	call	efi_main
>-	leal	startup_32(%eax), %eax
>+	/* efi_main returns the possibly relocated address of startup_32 */
> 	jmp	*%eax
> SYM_FUNC_END(efi32_stub_entry)
> SYM_FUNC_END_ALIAS(efi_stub_entry)
>@@ -182,8 +184,8 @@ SYM_FUNC_START_LOCAL_NOALIGN(.Lrelocated)
>  * Clear BSS (stack is currently empty)
>  */
> 	xorl	%eax, %eax
>-	leal	_bss(%ebx), %edi
>-	leal	_ebss(%ebx), %ecx
>+	leal	_bss@GOTOFF(%ebx), %edi
>+	leal	_ebss@GOTOFF(%ebx), %ecx
> 	subl	%edi, %ecx
> 	shrl	$2, %ecx
> 	rep	stosl
>@@ -197,9 +199,9 @@ SYM_FUNC_START_LOCAL_NOALIGN(.Lrelocated)
> 	pushl	%ebp		/* output address */
>
> 	pushl	$z_input_len	/* input_len */
>-	leal	input_data(%ebx), %eax
>+	leal	input_data@GOTOFF(%ebx), %eax
> 	pushl	%eax		/* input_data */
>-	leal	boot_heap(%ebx), %eax
>+	leal	boot_heap@GOTOFF(%ebx), %eax
> 	pushl	%eax		/* heap area */
> 	pushl	%esi		/* real mode pointer */
> 	call	extract_kernel	/* returns kernel location in %eax */
>diff --git a/arch/x86/boot/compressed/head_64.S b/arch/x86/boot/compressed/head_64.S
>index 706fbf6eef53..f6ba32cd5702 100644
>--- a/arch/x86/boot/compressed/head_64.S
>+++ b/arch/x86/boot/compressed/head_64.S
>@@ -42,6 +42,23 @@
> 	.hidden _ebss
>
> 	__HEAD
>+
>+/*
>+ * This macro gives the link address of X. It's the same as X, since startup_32
>+ * has link address 0, but defining it this way tells the assembler/linker that
>+ * we want the link address, and not the run-time address of X. This prevents
>+ * the linker from creating a run-time relocation entry for this reference.
>+ * The macro should be used as a displacement with a base register containing
>+ * the run-time address of startup_32 [i.e. la(X)(%reg)], or as an
>+ * immediate [$ la(X)].
>+ *
>+ * This macro can only be used from within the .head.text section, since the
>+ * expression requires startup_32 to be in the same section as the code being
>+ * assembled.
>+ */
>+#define la(X) ((X) - startup_32)
>+

IIRC, %ebp contains the address of startup_32. la(X) references X
relative to startup_32. The fixup (in GNU as and clang integrated
assembler's term) is a constant which is resolved by the assembler.

There is no R_386_32 or R_386_PC32 for the linker to resolve.

Not very sure stating that "since startup_32 has link address 0" is very
appropriate here (probably because I did't see the term "link address"
before). If my understanding above is correct, I think you can just
reword the comment to express that X is referenced relative to
startup_32, which is stored in %ebp.

> 	.code32
> SYM_FUNC_START(startup_32)
> 	/*
>@@ -64,10 +81,10 @@ SYM_FUNC_START(startup_32)
> 	leal	(BP_scratch+4)(%esi), %esp
> 	call	1f
> 1:	popl	%ebp
>-	subl	$1b, %ebp
>+	subl	$ la(1b), %ebp
>
> 	/* Load new GDT with the 64bit segments using 32bit descriptor */
>-	leal	gdt(%ebp), %eax
>+	leal	la(gdt)(%ebp), %eax
> 	movl	%eax, 2(%eax)
> 	lgdt	(%eax)
>
>@@ -80,7 +97,7 @@ SYM_FUNC_START(startup_32)
> 	movl	%eax, %ss
>
> /* setup a stack and make sure cpu supports long mode. */
>-	leal	boot_stack_end(%ebp), %esp
>+	leal	la(boot_stack_end)(%ebp), %esp
>
> 	call	verify_cpu
> 	testl	%eax, %eax
>@@ -107,7 +124,7 @@ SYM_FUNC_START(startup_32)
>  *	image_offset = startup_32 - image_base
>  * Otherwise image_offset will be zero and has no effect on the calculations.
>  */
>-	subl    image_offset(%ebp), %ebx
>+	subl    la(image_offset)(%ebp), %ebx
> #endif
>
> 	movl	BP_kernel_alignment(%esi), %eax
>@@ -123,7 +140,7 @@ SYM_FUNC_START(startup_32)
>
> 	/* Target address to relocate to for decompression */
> 	addl	BP_init_size(%esi), %ebx
>-	subl	$_end, %ebx
>+	subl	$ la(_end), %ebx
>
> /*
>  * Prepare for entering 64 bit mode
>@@ -151,19 +168,19 @@ SYM_FUNC_START(startup_32)
> 1:
>
> 	/* Initialize Page tables to 0 */
>-	leal	pgtable(%ebx), %edi
>+	leal	la(pgtable)(%ebx), %edi
> 	xorl	%eax, %eax
> 	movl	$(BOOT_INIT_PGT_SIZE/4), %ecx
> 	rep	stosl
>
> 	/* Build Level 4 */
>-	leal	pgtable + 0(%ebx), %edi
>+	leal	la(pgtable + 0)(%ebx), %edi
> 	leal	0x1007 (%edi), %eax
> 	movl	%eax, 0(%edi)
> 	addl	%edx, 4(%edi)
>
> 	/* Build Level 3 */
>-	leal	pgtable + 0x1000(%ebx), %edi
>+	leal	la(pgtable + 0x1000)(%ebx), %edi
> 	leal	0x1007(%edi), %eax
> 	movl	$4, %ecx
> 1:	movl	%eax, 0x00(%edi)
>@@ -174,7 +191,7 @@ SYM_FUNC_START(startup_32)
> 	jnz	1b
>
> 	/* Build Level 2 */
>-	leal	pgtable + 0x2000(%ebx), %edi
>+	leal	la(pgtable + 0x2000)(%ebx), %edi
> 	movl	$0x00000183, %eax
> 	movl	$2048, %ecx
> 1:	movl	%eax, 0(%edi)
>@@ -185,7 +202,7 @@ SYM_FUNC_START(startup_32)
> 	jnz	1b
>
> 	/* Enable the boot page tables */
>-	leal	pgtable(%ebx), %eax
>+	leal	la(pgtable)(%ebx), %eax
> 	movl	%eax, %cr3
>
> 	/* Enable Long mode in EFER (Extended Feature Enable Register) */
>@@ -211,17 +228,17 @@ SYM_FUNC_START(startup_32)
> 	 * used to perform that far jump.
> 	 */
> 	pushl	$__KERNEL_CS
>-	leal	startup_64(%ebp), %eax
>+	leal	la(startup_64)(%ebp), %eax
> #ifdef CONFIG_EFI_MIXED
>-	movl	efi32_boot_args(%ebp), %edi
>+	movl	la(efi32_boot_args)(%ebp), %edi
> 	cmp	$0, %edi
> 	jz	1f
>-	leal	efi64_stub_entry(%ebp), %eax
>-	movl	efi32_boot_args+4(%ebp), %esi
>-	movl	efi32_boot_args+8(%ebp), %edx	// saved bootparams pointer
>+	leal	la(efi64_stub_entry)(%ebp), %eax
>+	movl	la(efi32_boot_args+4)(%ebp), %esi
>+	movl	la(efi32_boot_args+8)(%ebp), %edx	// saved bootparams pointer
> 	cmpl	$0, %edx
> 	jnz	1f
>-	leal	efi_pe_entry(%ebp), %eax
>+	leal	la(efi_pe_entry)(%ebp), %eax
> 	movl	%edi, %ecx			// MS calling convention
> 	movl	%esi, %edx
> 1:
>@@ -246,18 +263,18 @@ SYM_FUNC_START(efi32_stub_entry)
>
> 	call	1f
> 1:	pop	%ebp
>-	subl	$1b, %ebp
>+	subl	$ la(1b), %ebp
>
>-	movl	%esi, efi32_boot_args+8(%ebp)
>+	movl	%esi, la(efi32_boot_args+8)(%ebp)
> SYM_INNER_LABEL(efi32_pe_stub_entry, SYM_L_LOCAL)
>-	movl	%ecx, efi32_boot_args(%ebp)
>-	movl	%edx, efi32_boot_args+4(%ebp)
>-	movb	$0, efi_is64(%ebp)
>+	movl	%ecx, la(efi32_boot_args)(%ebp)
>+	movl	%edx, la(efi32_boot_args+4)(%ebp)
>+	movb	$0, la(efi_is64)(%ebp)
>
> 	/* Save firmware GDTR and code/data selectors */
>-	sgdtl	efi32_boot_gdt(%ebp)
>-	movw	%cs, efi32_boot_cs(%ebp)
>-	movw	%ds, efi32_boot_ds(%ebp)
>+	sgdtl	la(efi32_boot_gdt)(%ebp)
>+	movw	%cs, la(efi32_boot_cs)(%ebp)
>+	movw	%ds, la(efi32_boot_ds)(%ebp)
>
> 	/* Disable paging */
> 	movl	%cr0, %eax
>@@ -336,11 +353,11 @@ SYM_CODE_START(startup_64)
>
> 	/* Target address to relocate to for decompression */
> 	movl	BP_init_size(%rsi), %ebx
>-	subl	$_end, %ebx
>+	subl	$ la(_end), %ebx
> 	addq	%rbp, %rbx
>
> 	/* Set up the stack */
>-	leaq	boot_stack_end(%rbx), %rsp
>+	leaq	la(boot_stack_end)(%rbx), %rsp
>
> 	/*
> 	 * At this point we are in long mode with 4-level paging enabled,
>@@ -406,7 +423,7 @@ SYM_CODE_START(startup_64)
> 	lretq
> trampoline_return:
> 	/* Restore the stack, the 32-bit trampoline uses its own stack */
>-	leaq	boot_stack_end(%rbx), %rsp
>+	leaq	la(boot_stack_end)(%rbx), %rsp
>
> 	/*
> 	 * cleanup_trampoline() would restore trampoline memory.
>@@ -418,7 +435,7 @@ trampoline_return:
> 	 * this function call.
> 	 */
> 	pushq	%rsi
>-	leaq	top_pgtable(%rbx), %rdi
>+	leaq	la(top_pgtable)(%rbx), %rdi
> 	call	cleanup_trampoline
> 	popq	%rsi
>
>@@ -432,9 +449,9 @@ trampoline_return:
>  */
> 	pushq	%rsi
> 	leaq	(_bss-8)(%rip), %rsi
>-	leaq	(_bss-8)(%rbx), %rdi
>-	movq	$_bss /* - $startup_32 */, %rcx
>-	shrq	$3, %rcx
>+	leaq	la(_bss-8)(%rbx), %rdi
>+	movl	$(_bss - startup_32), %ecx
>+	shrl	$3, %ecx
> 	std
> 	rep	movsq
> 	cld
>@@ -445,15 +462,15 @@ trampoline_return:
> 	 * during extract_kernel below. To avoid any issues, repoint the GDTR
> 	 * to the new copy of the GDT.
> 	 */
>-	leaq	gdt64(%rbx), %rax
>-	leaq	gdt(%rbx), %rdx
>+	leaq	la(gdt64)(%rbx), %rax
>+	leaq	la(gdt)(%rbx), %rdx
> 	movq	%rdx, 2(%rax)
> 	lgdt	(%rax)
>
> /*
>  * Jump to the relocated address.
>  */
>-	leaq	.Lrelocated(%rbx), %rax
>+	leaq	la(.Lrelocated)(%rbx), %rax
> 	jmp	*%rax
> SYM_CODE_END(startup_64)
>
>@@ -465,7 +482,7 @@ SYM_FUNC_START_ALIAS(efi_stub_entry)
> 	movq	%rdx, %rbx			/* save boot_params pointer */
> 	call	efi_main
> 	movq	%rbx,%rsi
>-	leaq	startup_64(%rax), %rax
>+	leaq	la(startup_64)(%rax), %rax
> 	jmp	*%rax
> SYM_FUNC_END(efi64_stub_entry)
> SYM_FUNC_END_ALIAS(efi_stub_entry)
>@@ -628,7 +645,7 @@ SYM_DATA(efi_is64, .byte 1)
> #define BS32_handle_protocol	88 // offsetof(efi_boot_services_32_t, handle_protocol)
> #define LI32_image_base		32 // offsetof(efi_loaded_image_32_t, image_base)
>
>-	.text
>+	__HEAD
> 	.code32
> SYM_FUNC_START(efi32_pe_entry)
> /*
>@@ -650,12 +667,12 @@ SYM_FUNC_START(efi32_pe_entry)
>
> 	call	1f
> 1:	pop	%ebx
>-	subl	$1b, %ebx
>+	subl	$ la(1b), %ebx
>
> 	/* Get the loaded image protocol pointer from the image handle */
> 	leal	-4(%ebp), %eax
> 	pushl	%eax				// &loaded_image
>-	leal	loaded_image_proto(%ebx), %eax
>+	leal	la(loaded_image_proto)(%ebx), %eax
> 	pushl	%eax				// pass the GUID address
> 	pushl	8(%ebp)				// pass the image handle
>
>@@ -690,7 +707,7 @@ SYM_FUNC_START(efi32_pe_entry)
> 	 * use it before we get to the 64-bit efi_pe_entry() in C code.
> 	 */
> 	subl	%esi, %ebx
>-	movl	%ebx, image_offset(%ebp)	// save image_offset
>+	movl	%ebx, la(image_offset)(%ebp)	// save image_offset
> 	jmp	efi32_pe_stub_entry
>
> 2:	popl	%edi				// restore callee-save registers
>-- 
>2.26.2
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200524225359.wnc43jmh6rvfaezq%40google.com.
