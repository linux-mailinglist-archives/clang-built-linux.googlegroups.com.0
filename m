Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB5OISL4QKGQEBSQVWMA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1038.google.com (mail-pj1-x1038.google.com [IPv6:2607:f8b0:4864:20::1038])
	by mail.lfdr.de (Postfix) with ESMTPS id DF813234DE6
	for <lists+clang-built-linux@lfdr.de>; Sat,  1 Aug 2020 01:08:38 +0200 (CEST)
Received: by mail-pj1-x1038.google.com with SMTP id z8sf11114108pje.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 31 Jul 2020 16:08:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596236917; cv=pass;
        d=google.com; s=arc-20160816;
        b=pYkHFCMXKH85RILT8O6bkgYGbtdMNRcTu6ut+e1ikWagptwBGtyyCaFIBRzuXVChe4
         mvioN1b6hQJ8zNlcBOxdBEtHsWujIxPL7UyQ3kL2iFf2hfnjMnLKyO7WHMxttnyHFqaa
         RNfz5m5b4xcIPvSnR9G9PlHUxqMqLpiiqHwiv/yBLs1EK5Re+9kxJ+s9KmR+RX9MsYaP
         I0zSt+kh8q0q/VhbbkSVV+Rfnmpg2TwVS8Ga6lq/qFYSCdcJHTuaCi0f2STIZceJIyjS
         WiFvYHVUX7N00Qnn7a/OE8gVK0H1sFTfm+6x0aCiPSOcEanLsKzU11X1fE9Wno9xyns/
         rsdQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=9gB21YudgrfjiYp43LSxGMQ86hbjO6isWMVJZN0EBkc=;
        b=nSNhyNJ4/R68cZecQQs4Bu6EfnBY0LLfWy3AdhYMvE46MYR2Q/oRuIMUXwHjWHeLJi
         lGxBrXF+LyrHZyY8a+t0B5TvJcVpuS+J0OF0VZuu+Mgq5PcfGpKeKYwYcxmvt6H3Povo
         cOHBmJ4/1oGwBJya5oeBPus5tG+u+fo3VbfG52II/9+IusAHZildbkWBIO1uMzfxhrsg
         bK+CBWqLVFmuGnRgFiMaJ2md3RSDfqBoPEb89aUtC/vJb481yExqrKUqQdLYgqT/7Uj7
         n1YPZXfNMfx6vuzkaA7wE5ff1kRY+LxtdDP+jfUJ1KcxFyHU7OdXJ7SrTWfdcdj24aYT
         4J9Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="JmjzOVU/";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9gB21YudgrfjiYp43LSxGMQ86hbjO6isWMVJZN0EBkc=;
        b=Rumc4TkXhOx5+QIE9cxdi1GLgwaGq+JnMUdqt6YIUvFlt500seGpfFy7Ovao6Zw77S
         JQrJHngphvu5athR9PxPn0DT5Jd6rHe/sts6SXVAKCerwNV3Sq8ejbnIzDLUKpn7ZTHH
         MXshFO4r6vNaV6XKuVteQVCHneVxhBF3Hz1yoXiuw4e1VvzoKXeQeRponn8gWfN/GOfV
         eFOTyJHxi9SibZpKHaDSHWOBc3hWTtirjJvRvsMMtdi+eUEo4jbFiGXG5Cx2F8bkLygg
         /r6xRHoLz/g6zgK3RjegkbwHeh5gwukwfH5zqyBTh4vDHyZqy6l8QsYyq20zs0mtebA5
         z2Eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9gB21YudgrfjiYp43LSxGMQ86hbjO6isWMVJZN0EBkc=;
        b=l7e8nxDmPvsIbeM/x4MYdOdtim0OmNvwwrqm97BhAzTqeDe748hT6NgMV0/SJhjvvC
         MZyAK7LWyQrYGKywO3UX1DwVeMXoJ5u11JOmKwapmireBQfJsDzdqogTRKITkMVQWTEC
         Ase9ld2gqFHriuwj37Y9s+oq33rLNzv2P4V0+9dEBYCUYcbH8SXjLytA8EPxdLkwXbc1
         FYBbr+kpSi7Q81Z0adA6SYhvoqCfxfHJ19K/xjq3x9EatMjMQA+g5+DDEn4pkWidTu5g
         wPBKqZeaNGtWeaZsd/v7Yo55I+lwOyUlWGjIjbTcMZ6LaSRnKTDR/wa1+l+l2HLPFye+
         +9zQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532hFQqEVbXDs8PmHX5w7eyIh+6sJlnHtIutA5DO+o1q/1Jk+svU
	/v2T6UtswCx76d+1uh7BFV0=
X-Google-Smtp-Source: ABdhPJyX4PzR3R/BRY1DiUhmaPn5TZkXOwSmiuXXFfwF+iJ+DbhRPH9vGZt/BJWkn3tXEvRMmkTNYQ==
X-Received: by 2002:a17:902:9042:: with SMTP id w2mr5525484plz.8.1596236917622;
        Fri, 31 Jul 2020 16:08:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:142:: with SMTP id 60ls2114500plb.9.gmail; Fri, 31
 Jul 2020 16:08:37 -0700 (PDT)
X-Received: by 2002:a17:90a:3d49:: with SMTP id o9mr6610879pjf.156.1596236917221;
        Fri, 31 Jul 2020 16:08:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596236917; cv=none;
        d=google.com; s=arc-20160816;
        b=EaHURXwhxp0PN+pAoktBR4ljqp8Ue13fA8Ukq1Q9iToTRsiWgrzLZJ/2dtyWES8m49
         Mupycg/FDM3bDkwomjPKzRrEciX19olsmFF+s4Oc7itj6q7s5zBfebt1k+i4zm2ByAjL
         UuOSKpgWjvR54/o0t/4LvoQ5GGe1eIaUQQRJIA7IWhum9eJku2VW2ZeDJa2rPNV+BGcQ
         XL0ueYGAU1pNjSeisb2aF5cWLrOQ+tQeHQBBl2pMB1wM47mLeRfty9ELYUdAbqZHFtsV
         xtWyjRwqPsmC0lqPH6iB5GH4f32pTLV8Wb4TVG/sMH0XcQmUz/n4reClpz353RF3VXae
         +4IQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=/1/CQp/9TCFtUhmrbGSN+G+eKG6hQ9pjXSEZQo4Ae9Q=;
        b=PSptcwDaic+PIZoCIQUBZC8/QP2We617RKBqNDPjnKtNSwvm3yqT7e2RV4o3onSjxt
         WTfnqV/VYL1Wmf3YIb+QuUVE6TCwG4fKnJKLxYzK/I9LFs7G2zHryBSnkscyhXkoNMK7
         AVHCVyA/bf4GHrWBElU+55Vqvjie1jBCT6kKaaWsQLnozryJLdPWDim2jMMwpJRaHrrQ
         /HTLpwzcFKl2+zrct6Ck92tT8QJCktNBjxmPyfsAn66+z0V0CS9ewjCErxS5oaWhleAA
         oqFLpur8i0d0qtZX+bMKJ+/FhTJW/2HGuQuoM4NG3TA/dJNTMMT7VdOvHgqtJTv/HFG5
         toHQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="JmjzOVU/";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id x17si426294pll.0.2020.07.31.16.08.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Jul 2020 16:08:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id m22so16771521pgv.9
        for <clang-built-linux@googlegroups.com>; Fri, 31 Jul 2020 16:08:37 -0700 (PDT)
X-Received: by 2002:a63:5613:: with SMTP id k19mr5940172pgb.424.1596236916880;
        Fri, 31 Jul 2020 16:08:36 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id s22sm11167471pgv.43.2020.07.31.16.08.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Jul 2020 16:08:35 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Thomas Gleixner <tglx@linutronix.de>,
	Will Deacon <will@kernel.org>
Cc: Kees Cook <keescook@chromium.org>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Fangrui Song <maskray@google.com>,
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
Subject: [PATCH v5 06/36] x86/boot: Remove run-time relocations from head_{32,64}.S
Date: Fri, 31 Jul 2020 16:07:50 -0700
Message-Id: <20200731230820.1742553-7-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200731230820.1742553-1-keescook@chromium.org>
References: <20200731230820.1742553-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b="JmjzOVU/";       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542
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

From: Arvind Sankar <nivedita@alum.mit.edu>

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
Reviewed-by: Kees Cook <keescook@chromium.org>
Reviewed-by: Ard Biesheuvel <ardb@kernel.org>
Reviewed-by: Fangrui Song <maskray@google.com>
Tested-by: Sedat Dilek <sedat.dilek@gmail.com>
Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
Signed-off-by: Kees Cook <keescook@chromium.org>
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
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200731230820.1742553-7-keescook%40chromium.org.
