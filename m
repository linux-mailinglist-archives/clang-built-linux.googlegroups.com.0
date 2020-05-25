Return-Path: <clang-built-linux+bncBCIO53XE7YHBBS43WH3AKGQEWAO5ASQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x740.google.com (mail-qk1-x740.google.com [IPv6:2607:f8b0:4864:20::740])
	by mail.lfdr.de (Postfix) with ESMTPS id 541691E17FC
	for <lists+clang-built-linux@lfdr.de>; Tue, 26 May 2020 00:59:24 +0200 (CEST)
Received: by mail-qk1-x740.google.com with SMTP id n22sf3561725qka.18
        for <lists+clang-built-linux@lfdr.de>; Mon, 25 May 2020 15:59:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590447563; cv=pass;
        d=google.com; s=arc-20160816;
        b=WIMaG0G+a0/wHPndcil6cQ0MnogyV1zTxjjnMFGHft1W1xx9zSvd3NPW/4iljUiAea
         Ny+FsZCjJVzlgtSTBlo9sQSO0B7lR06/glF89yykTxdlqSH7ckAnljdCIaY8jwOy0GgJ
         cn6MTHIBoNifyqfcY0lwSPaMIo+FOyzv8LJ6IJaNUwphB3Vp2Z10Zm95fY+kr/dPGw5+
         Kbsli7xmM7Lm/boHDx5mrD5jKzoIc6U+5WXF8+rkNgFTEMFoa7shWlmOeFGgSiKZo2NS
         ioJp2rpwqBuKKkYyLZE9AUcg2XwjgKMjxTcld4oXwEwtXZJVPxKlBUzdm+yPD1Gyofhm
         wfvQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=ZShtlQyU751WbbfFsq1LswkK90aSU1FL1Q7WDZAXkP0=;
        b=fqRYG8Np52lIb+gfjE4uvh8R5NTgVWgtSs8KhKNT22V8SmdiguoqzD98Nhg+pfCbUF
         eYAOhAfErpcc9Mf3qtWQtkePztxOIRdor7kVnSrgZrs5hYGMKCYzzHkqO9Kd3+0+Ueun
         9dbkUoUaaDbmZtFpCc4j31Z0gZFsMpOc0mWTgrxScql3Df69Vm8KKnBlsVDADFjzvOfj
         PDpJGNcSEUEYblhisOGfo8ea5lwopNT7/7ju7rQg2FTDLg0gei3bTFIoqXH0Rb9E/iPR
         0jf/odPFnzDa3LqVWXlmw2dGNbsh4xEesllvlS6JrOH2GmCoI2F+LoOzQlNzzjD6AExN
         KX2g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.160.195 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZShtlQyU751WbbfFsq1LswkK90aSU1FL1Q7WDZAXkP0=;
        b=GDnDKGZAo9PuHpsK73G2rPMQslGwC2fX1zc1ZdfjQG/ztC7dwVphnudob7LTb1b601
         4en6/yaBtgUDq+lAK27W7uG2Rdb3eJK9KWgBz1McRiq880pOyNQu5IxoauXQ0UsEhsG6
         8kTUCQAZXsGxKTSWbl6ek4e+EEL0pl/VzG9KFpBJvMol1+9KsIYAI8ruggXD8Q+IzRyZ
         VFoL7PrTXcFdeZg0QTC+TVCiR2+2CjF8s1liANJcDa5Afk9QozKaY2MwKI7BUlPmBFez
         xNQsez+4hvacpwmeCFTXqG3Jtvs8PbtuXPozssjrkgNfuVklv9i1d7o0lQqDImEBxavT
         950g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZShtlQyU751WbbfFsq1LswkK90aSU1FL1Q7WDZAXkP0=;
        b=AvQkqddoQC6NWo2ffeJgegYCydgk+uwBQcYjCUsxbzjNL4Bem81yFz34yMheYEPGSb
         1NyW2fyLo0rQMloWUV3mT0RDvB84c24WyDYyZQuT3LxoygJE64NsmOW7NTBTMP/Zhm8I
         KKU9TlUGqzWx+mSsGmZAFOZwMPetg+K3ubzO2WvEyjyVzGyMAYYM0/O5MGh6HQjsKRiu
         EoJcONEtfsN6CfI1TwzYiWw9eXAAdulbT2Ma738C+T3I3wEmzxStojdsWsNOrWo0MKY6
         A+n+Tb26N1nJnd7+JDaCN412Pmde3JGtHZJu91fyYdrsy0lX3mboTsxYrSecD1SwKnrb
         jzMA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532HKhDeBsRjFxesFDkOJUQkfBN37/Ex5IOIq+/2dBlFfVojVb92
	f4BBdt7hQM7LScsIltF34Gg=
X-Google-Smtp-Source: ABdhPJwCeygPdLijOTYSsYtU9PrSdGBkzq+HjCZj2ZDoDT9OAb9czBygcyRxgyELTsxlIxTtqLZ+CA==
X-Received: by 2002:a37:9606:: with SMTP id y6mr29193350qkd.269.1590447563270;
        Mon, 25 May 2020 15:59:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:a914:: with SMTP id s20ls1318938qke.10.gmail; Mon, 25
 May 2020 15:59:23 -0700 (PDT)
X-Received: by 2002:a37:7f42:: with SMTP id a63mr16021819qkd.265.1590447563000;
        Mon, 25 May 2020 15:59:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590447562; cv=none;
        d=google.com; s=arc-20160816;
        b=xgxoymvAReIjevgmPWzMxz2bKYYqEMbqHRhc+B5CVbErRoXtaOrPkyslhbu90hDEo5
         SzzkRekJM+4Nn1bzfwqKfdL++MxvNiKpZGPnrX4Vju7tCA9CLem62xgHUeGMdx/YzLmL
         wt8xaZ3unUca2cbdjex8+KxcquD6RNizr/9ZZMeP0Fa8DmC2Y6J8hMB1YE3Biv/Qfmza
         zALvuA2CVUlB7XyhmWur+KfO4FvVQNkfPKRpcMxniaLsazuhdAOT/vGX6sHVCfJmdSmY
         kVbtO948S78PfVp2QKH8LnuTsmuQ+jE1oX+9LEqtbPxbgjuyPEb+Oqhzbgubl03POgwt
         /lgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=7ShMtyQLISvfKbiu0RdR0JtG8pe3pv3Pngvw21N+oGo=;
        b=MsMZ90+6mH2Yg0158A4D1UjbCMb14Dv36Rto/ZyEzzpNk3vmt8emKewC+o8D+JQXlJ
         Pa8XxKvztojp4gAQxnkkBP85zqLd8pJbskBxYI24Ga844p6JxQdQ6EpBZlLm6tT+YanY
         F5H4sVWdesamGO/ypJXMrewbVwbiU6uUlEl+PjkLh5H8QVIdVptxbOPNWJiG30zkyLkf
         jARYNI+VV3jwz4XcEIijugtgRsBvG5Zhp5pKHI+mo4gRnV9AyUnXCGVUepC9gFR9N4rE
         KeHpJhaCI3rh7HNGPOnoJxojdEX/Ycif1TqRrc9KXNKWP4VYZxurquLadn3/W80uLH9A
         bw6Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.160.195 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qt1-f195.google.com (mail-qt1-f195.google.com. [209.85.160.195])
        by gmr-mx.google.com with ESMTPS id s11si430186qtq.1.2020.05.25.15.59.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 May 2020 15:59:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 209.85.160.195 as permitted sender) client-ip=209.85.160.195;
Received: by mail-qt1-f195.google.com with SMTP id m44so14795312qtm.8
        for <clang-built-linux@googlegroups.com>; Mon, 25 May 2020 15:59:22 -0700 (PDT)
X-Received: by 2002:ac8:4542:: with SMTP id z2mr7617038qtn.90.1590447562654;
        Mon, 25 May 2020 15:59:22 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id d140sm15024585qkc.22.2020.05.25.15.59.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 May 2020 15:59:22 -0700 (PDT)
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
Subject: [PATCH v2 3/4] x86/boot: Remove runtime relocations from head_{32,64}.S
Date: Mon, 25 May 2020 18:59:17 -0400
Message-Id: <20200525225918.1624470-4-nivedita@alum.mit.edu>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200524212816.243139-1-nivedita@alum.mit.edu>
References: <20200524212816.243139-1-nivedita@alum.mit.edu>
MIME-Version: 1.0
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 209.85.160.195 as
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

This is fixed for binutils-2.35 [1]. Work around this for earlier
versions by defining two variables input_len and output_len in addition
to the symbols, and use them via position-independent references.

This eliminates the last two runtime relocations in the head code and
allows us to drop the -z noreloc-overflow flag to the linker.

[1] https://sourceware.org/bugzilla/show_bug.cgi?id=25754

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
index 18b0edcb23d2..4b7ad1dfbea6 100644
--- a/arch/x86/boot/compressed/head_64.S
+++ b/arch/x86/boot/compressed/head_64.S
@@ -517,9 +517,9 @@ SYM_FUNC_START_LOCAL_NOALIGN(.Lrelocated)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200525225918.1624470-4-nivedita%40alum.mit.edu.
