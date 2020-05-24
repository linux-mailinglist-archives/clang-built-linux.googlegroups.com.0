Return-Path: <clang-built-linux+bncBCIO53XE7YHBB5ONVP3AKGQEVH52SWQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3c.google.com (mail-oo1-xc3c.google.com [IPv6:2607:f8b0:4864:20::c3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 48D421E0309
	for <lists+clang-built-linux@lfdr.de>; Sun, 24 May 2020 23:28:23 +0200 (CEST)
Received: by mail-oo1-xc3c.google.com with SMTP id z190sf8736346ooa.19
        for <lists+clang-built-linux@lfdr.de>; Sun, 24 May 2020 14:28:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590355702; cv=pass;
        d=google.com; s=arc-20160816;
        b=BlYx2EGyPYeLzQZEJL4/PMvbWpug08EF7wkDeF4Yi1jSv6urNyrcwim5KYHfcEZTLy
         bFxALEUEHD6A00CwENJgPNPc5eNh3aI77kssDqIYyxUQF1errR6kUQsKCHaCTsydQ3qh
         Wm52VSg+j18ySbIwjugCNmQz3lK87BeNOtn0Gzex9V+oejp6CGTIqejMx27dgjXrvBtn
         NvxIZ+BYbbIxM5Ppk5zqD7zleaFzpCoqLhnIOR88x4mVGLUmouHvpi+k3xW8WmY93acO
         JijvKG0TXOUtu6dHC5krmtxl9uEBQDkonxjVvKr7yugmm3wK08VLSyrge2ZrLX3iVG5F
         wYnA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=bYYkCDP5dON3z40HEEC1C/ypFwJr5k2UTb4mo5FVAC0=;
        b=LRfJLSIBJrGmePXlO5WG77hopAsxHco62H9No5+cdBBiu+ypzr4ul0n+qx3jPopARO
         PVOXGg3vZqkheG3RLHr/+ccz77/1YQ7uAutNKCVpcvnUE/Yff5L8nzvxbA5Wi6gXmT8b
         yKJFR3j++qGpLNFxRSGgCG/eU3w6F1MLd4RBq+zYXC54ZDBIyRV092XlLeYDKs5YoJSR
         XIcQxOssVVkbOw8dZepynCDfmpSdMO2a2RNumeWfYDhsw1S9VeduvdDa1aSGZImZtH8k
         4oHc712GGy4iqcKR+UCygNZc9HM/ifxs4U4v1ipM21+/YCdM1lefs6W0WTf8mhDHFkCC
         it/Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.160.193 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bYYkCDP5dON3z40HEEC1C/ypFwJr5k2UTb4mo5FVAC0=;
        b=fwOpbTETmm8ijt7RrtTGTvaS3vTmpzaqXRFpZl1Jqskw1CGhf9J7+HRNJ8hIN9rgTL
         E6IA762DiKoEesAetUbwbFGIJuxHpbJa5mqVvmolvKgX4ZtQzBRdc0uBUEObVGkA5bWS
         NZ98jKFhHkAqWcK2ZDfV1FBD9L4uQfLDk9z+zFhsR3S1/Y5YeffSX0zm61ZOZM7nL6V8
         qcJXT3aa1fDsdai59YxrUM5lHKX3k7vXbNq3gEyQ0PWGTPzLTIko6Yx8ev/qz9H7VC7M
         z0cvMLLKmXkX/PHUxtW/RUYG+p/sXOy5saffywSKQZdsDB2vMpGycf5GVh9oHAb+nbWE
         p4cQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bYYkCDP5dON3z40HEEC1C/ypFwJr5k2UTb4mo5FVAC0=;
        b=U4bXDHAmpQeEe0ksiDEBJG0gk3OW6o9Dt+2RssRIJHZqts66b7In19l7relxuStX09
         KMKHsjYeFH0P6oLltYv2qigCnSmWtoAZoMkOJhLnY7pMVR2ZafOJVl9iZimZOS+Vphq8
         AQtgHXnsjWzuC0VTMrQ/AaWxkGKKQhb+RFNLzCG3kUjWQV6lGWHCYXAWx1JS7we81H+4
         yK6rFYSeIVYiZeHV+zh56pNKcNIdt+hSG/85XC05x6NA6wjsy0r/oRRJHsbJtmsM0DNB
         4/TchsFexPYrZYgTtkhVLPH3B9kPnzpVbzf2gvTYRietlUBs6/kuAe3aeGhxTW8TvSOv
         amfg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532gQ0JX8Ax2ltLdIKzESGEI0P8Q+gV/49guJRmyLUM/o2cTtYJi
	9wp9GN3ve5Qh5Jx1teGss0k=
X-Google-Smtp-Source: ABdhPJyCtVwZmSH0VK1uKBWg2ZogBhldJrX2RAlBUv9c7O+dDzQkehIhGax9mA/KLnVj2oWuDR+a5w==
X-Received: by 2002:a9d:20c8:: with SMTP id x66mr2187530ota.255.1590355701921;
        Sun, 24 May 2020 14:28:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:10e:: with SMTP id b14ls1188379oie.1.gmail; Sun, 24
 May 2020 14:28:21 -0700 (PDT)
X-Received: by 2002:aca:c34d:: with SMTP id t74mr9756581oif.88.1590355701657;
        Sun, 24 May 2020 14:28:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590355701; cv=none;
        d=google.com; s=arc-20160816;
        b=s273M8GxUowfq+aixP2+f5UYGVMrqbhtr5fhSCbydkBt/oWkJaC3cRJ0JinOxo4aUu
         0vIP7bEy7fY3w1bTREmrVT3clkDvjcAqH/IkIhsR8W2k+dknD5L4Jvld/qE6DxPCspQ0
         sVMl4+B25r76mtfcC/i2yOIByUGuVDo99S8kKWXFlxhYg8aJCRrHGW8oeFmj18T/Hdit
         /fnbWKq+DsbqKcs32DhP+P7i4YgRQxrjdgj6miI/aJv/l6MoalQSKmv3OIqTqDEelAXu
         4mSpprWUHNk6FI2GFyV6eyQ9mCGW/OsFIoWQjz4ItSTYLCFsdB+v/ZnSQ1e2jlt1VCkr
         FoRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=AOa+r6gjXO8kd7k2MrQ1bCP3aAn9R5Cfdvk0rMFcdAo=;
        b=DjhSxDVXNhEhnUuqoSNkzk+VoFhuMFnmuoI16TFMSi0XGoHEV0c0qgcEdLIKSHaVfZ
         4H2+q3tcAv5HO7nXpEVZOYCLgexWb487M3CD8LPYMKpv/65HG4ZzK4vA52CeEKgZo9uJ
         iWuZwvEzHmJYn7f6Ur2ceIwxZN3uRMctqdj5/TKyaBKI+b4N3SdnQbCZTp0xBbY46TzP
         3JWULLMWBAF2+l4WQmRTSpj2JcAioNNdRYKdxgEXDSdPa6zcholPE5I4bZY0nJ05/OKq
         R7+9wRhoo5Ms4oIlbPNDBI/eZce09zbWpUNGkB5hZaGvyXYeiIfUd3ADTGlYnuCuh76v
         RWyA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.160.193 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qt1-f193.google.com (mail-qt1-f193.google.com. [209.85.160.193])
        by gmr-mx.google.com with ESMTPS id d4si990094oic.3.2020.05.24.14.28.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 24 May 2020 14:28:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 209.85.160.193 as permitted sender) client-ip=209.85.160.193;
Received: by mail-qt1-f193.google.com with SMTP id h9so2384556qtj.7
        for <clang-built-linux@googlegroups.com>; Sun, 24 May 2020 14:28:21 -0700 (PDT)
X-Received: by 2002:ac8:3529:: with SMTP id y38mr11535559qtb.315.1590355701143;
        Sun, 24 May 2020 14:28:21 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id d14sm3665729qkg.25.2020.05.24.14.28.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 May 2020 14:28:20 -0700 (PDT)
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
	linux-kernel@vger.kernel.org
Subject: [PATCH 3/4] x86/boot: Remove runtime relocations from head_{32,64}.S
Date: Sun, 24 May 2020 17:28:15 -0400
Message-Id: <20200524212816.243139-4-nivedita@alum.mit.edu>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <CAKwvOd=qB+EoJwfAYUA9Hg7f9op4Q4W+TDnht8pLRG5bPX=29Q@mail.gmail.com>
References: <CAKwvOd=qB+EoJwfAYUA9Hg7f9op4Q4W+TDnht8pLRG5bPX=29Q@mail.gmail.com>
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

The BFD linker generates runtime relocations for z_input_len and
z_output_len, even though they are absolute symbols.

Work around this by defining two variables input_len and output_len in
addition to the symbols, and use them via position-independent
references.

This eliminates the last two runtime relocations in the head code and
allows us to drop the -z noreloc-overflow flag to the linker.

Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
---
 arch/x86/boot/compressed/Makefile  |  8 --------
 arch/x86/boot/compressed/head_32.S | 17 ++++++++---------
 arch/x86/boot/compressed/head_64.S |  4 ++--
 arch/x86/boot/compressed/mkpiggy.c |  6 ++++++
 4 files changed, 16 insertions(+), 19 deletions(-)

diff --git a/arch/x86/boot/compressed/Makefile b/arch/x86/boot/compressed/Makefile
index aa9ed814e5fa..d3e882e855ee 100644
--- a/arch/x86/boot/compressed/Makefile
+++ b/arch/x86/boot/compressed/Makefile
@@ -49,15 +49,7 @@ UBSAN_SANITIZE :=n
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
index 66657bb99aae..064e895bad92 100644
--- a/arch/x86/boot/compressed/head_32.S
+++ b/arch/x86/boot/compressed/head_32.S
@@ -193,18 +193,17 @@ SYM_FUNC_START_LOCAL_NOALIGN(.Lrelocated)
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
index f6ba32cd5702..6e4704b6a94e 100644
--- a/arch/x86/boot/compressed/head_64.S
+++ b/arch/x86/boot/compressed/head_64.S
@@ -508,9 +508,9 @@ SYM_FUNC_START_LOCAL_NOALIGN(.Lrelocated)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200524212816.243139-4-nivedita%40alum.mit.edu.
