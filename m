Return-Path: <clang-built-linux+bncBCIO53XE7YHBBQ75SH4QKGQEEQ6QMIY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1039.google.com (mail-pj1-x1039.google.com [IPv6:2607:f8b0:4864:20::1039])
	by mail.lfdr.de (Postfix) with ESMTPS id 29EFC234C40
	for <lists+clang-built-linux@lfdr.de>; Fri, 31 Jul 2020 22:27:49 +0200 (CEST)
Received: by mail-pj1-x1039.google.com with SMTP id 8sf10842993pjk.5
        for <lists+clang-built-linux@lfdr.de>; Fri, 31 Jul 2020 13:27:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596227267; cv=pass;
        d=google.com; s=arc-20160816;
        b=LIPQgiHwZPCPv8wULIWEBnkSdyQ8xQKDHc7vc2E7tTp2S8gfsOSaxYYNlGNZrmbjhm
         u/nCKHCgVoysjW1lOl1yz3tBaLFno/6KEfw5WKzMnj+2nO2nnzSNqY/0V32mav1oqC9w
         o7jMWbyPSVybjAuq5KY2cJF3ah+3Uhdr7MKlLyqc/KqJ4Rxok9SeWeAKqE/pgAF12LsT
         ISeBgjqDo/k3DmOwZYb+UvnY0J/X9uoBFRRptIuosKie/e33Jzh81+cuH/0a8dGd/2BA
         fZyzWd/oUSNnKnOzyVlkeETCFme4h08qJUDjwmSl+dsshx5UVwojpNWAZzaY7+hUyCJe
         OVGg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=tvQzkV9/adIKLAGL0vb+RJRE/2BYT3qDKwj2gYx+xMM=;
        b=ffh0OFqCpTgc/+Ju4UyPYGqT4/UMW91W9nUnW9iELeUtiTndKYk9OXNQnBwLI8+HX4
         Y83KrnEj5qQ6/ZBBFDy33rxb7fYLOymHfF8+jjKdkr8v5k8LHQs5qxKW8/R8LTqznm3T
         XLTC52OvRpXfI4uaV967dyDL/7cN8Jb9l7VjYct1UqA//8seBnKqEa13FVnhP4Nf3b+X
         byMR9fUGvdqBF1fJA6z5gX2NxaWCxuLXVoCMDL4BvFxbGhOQJFQJwlp7Hb9t940wArSU
         Hu+ISSJNRvAXJlg0TnXt9smdcqLIzI66U8r75VYy0UsjNqUcCTqcRHEkP+I3stV92LEQ
         NKqA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.222.193 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tvQzkV9/adIKLAGL0vb+RJRE/2BYT3qDKwj2gYx+xMM=;
        b=UrhictaURvcBTfBGdZ9ZZKS/vaUeeIEqF+KkmTz3yONY7282D1OvyG3/ynH2I0YAee
         x9YsMP+JmnvZBNSU5Y9dNXJXmLQgHMgl8zfszchoH+35Rchs5ENVxK3uyPa0wjyEjC7d
         1Ksl1HWoRN2lJc8SG27O/+Zr9wQ7p26A2hxskzDhpFdJPUeVhrs8M/OFKn+zRSD3kBHZ
         RHIG+GnbQ57qIRtrCxtMpdVYhfk7C7ocnkLzcyljzSmorjmJidYr+T/gjlneKTJvkZwJ
         OpzrlnsPUb1gqjhtAXzpJqndurLmvNIFR06IBt92JYMELyfpmn6fETecAS9dwOIj12i9
         yFkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tvQzkV9/adIKLAGL0vb+RJRE/2BYT3qDKwj2gYx+xMM=;
        b=U9AeIiV5WAZJF1w3rADt9bfRtDg0RS7AEQtTddYS48JYp3uFPc9D+uB1/LWU4ZPobw
         2F6g5Pj+IjlJB5EjzDhOY8wZjpKN0X5SDv0XlPKiaG+l6DAphNeyZqIyhYFmUue2RjAH
         CI7agzHs9yie0risvkI24/3Drz6py7tcBqQIjsacewUgJdQTmQJ01IjTx/3le1/0a/mk
         qmPT3L+tLI8oU4lVyz1tuHgmpk45QH5Gp2zM7dWOcUndqmAriEOECUYRWK8Tm77RoceZ
         l7arTZ42ph0aOj2xTqZT+Bdh0KZT3LixqK4uWnH20+aIsJxRxEH5WOD9QLEyu24b0K59
         tGIQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530aQSvwXvbbWYiUJSSycGoQe21R4rNWJH+p88dfBxucIYX0ioao
	P17e4XIPZq9rCcbMCHzDL24=
X-Google-Smtp-Source: ABdhPJzPC0vZ+/eml/lcBqv+1xqFjcfZ1GgREWdjbAeHNKg5kCPFax0P64740ScWjhmEzK7kQpGraA==
X-Received: by 2002:a63:6d48:: with SMTP id i69mr5299625pgc.354.1596227267637;
        Fri, 31 Jul 2020 13:27:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:534b:: with SMTP id w11ls3326305pgr.4.gmail; Fri, 31 Jul
 2020 13:27:47 -0700 (PDT)
X-Received: by 2002:a62:68c1:: with SMTP id d184mr5410698pfc.110.1596227267129;
        Fri, 31 Jul 2020 13:27:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596227267; cv=none;
        d=google.com; s=arc-20160816;
        b=lprKFslfEvhVNXJ9WOrPiLoYEjcOS7eRS+S8L0N8C7fBAGqyn7etZI8etXuwF134kd
         Ov5x9qU0plhv3rA+vCrlED3KnOftF+U1AS+MbgYQEZIjjvMbHcIpqnqQT7D06M9WpX67
         Yj8aM2gjDZeaVBTZsq9hr2uQx5acOd2g/1WxcQXEsUHQJPDNTWRpMhC8IbCZvZGY1Da1
         /A0rfCYDGB9uZdHUUjFw3Kx5DoT/CUJ5TMNRw9NdtmDfNGplJM9nsnIm6dH1llZ7IcYq
         b03y1C8I28yM9QwCNSGW8k1/TloOLIbmBVbZFEWKmRBxZo9+ksERFdRCH7fFxaByMoe8
         okxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=HNlG0r3f7+DcMDWbQ/vbYvO7FSu0jmedmwBxasWw2g0=;
        b=p9cTpBMovHKuB/wJEXJJskHprU4zE28OjabmeSVVHxFYxxZEfYOBx4vOWem+c9D7AD
         KLEhr67DJ3BOrSaaFySb38/Hx16ZJq58o22NJa7JUznWBoy9E/iazPV3AHgQy5xSMBjr
         yulZLZSim9T239VH7C7IQzwpra7AZeC2wbvOLgP39CdIHl3b5ijpI2oUtmT6LTm9yJGZ
         EhDzNk7S4xK+Yf/RAHao1jQtI/oZgipAK+QwyxlkL/brazqhjySJgS3RnKwdpufOkjWh
         zLzGFZJxqW59gXnVf5zrgDaZV0/eVO2IcKlEiYkxCjkLzSp84S3o7Dts0LC4HHOjPCPO
         jtfw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.222.193 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qk1-f193.google.com (mail-qk1-f193.google.com. [209.85.222.193])
        by gmr-mx.google.com with ESMTPS id bk18si83387pjb.3.2020.07.31.13.27.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Jul 2020 13:27:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 209.85.222.193 as permitted sender) client-ip=209.85.222.193;
Received: by mail-qk1-f193.google.com with SMTP id d14so29980040qke.13
        for <clang-built-linux@googlegroups.com>; Fri, 31 Jul 2020 13:27:47 -0700 (PDT)
X-Received: by 2002:a37:6594:: with SMTP id z142mr5693346qkb.10.1596227266118;
        Fri, 31 Jul 2020 13:27:46 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id t35sm10607976qth.79.2020.07.31.13.27.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Jul 2020 13:27:45 -0700 (PDT)
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
Subject: [PATCH v6 6/7] x86/boot: Remove run-time relocations from head_{32,64}.S
Date: Fri, 31 Jul 2020 16:27:37 -0400
Message-Id: <20200731202738.2577854-7-nivedita@alum.mit.edu>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200731202738.2577854-1-nivedita@alum.mit.edu>
References: <CA+icZUV2=hj=+9DtbH47wtdE=GM5AZjS1xTgH7PKE+NxsRa2jw@mail.gmail.com>
 <20200731202738.2577854-1-nivedita@alum.mit.edu>
MIME-Version: 1.0
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 209.85.222.193 as
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

Tested-by: Nick Desaulniers <ndesaulniers@google.com>
Tested-by: Sedat Dilek <sedat.dilek@gmail.com>
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
index 489fea16bcfb..7db0102a573d 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200731202738.2577854-7-nivedita%40alum.mit.edu.
