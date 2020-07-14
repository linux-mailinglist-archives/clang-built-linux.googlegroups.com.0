Return-Path: <clang-built-linux+bncBCIO53XE7YHBBNVVWT4AKGQE2N24PYY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3e.google.com (mail-io1-xd3e.google.com [IPv6:2607:f8b0:4864:20::d3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 2928D21E5C7
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 04:38:47 +0200 (CEST)
Received: by mail-io1-xd3e.google.com with SMTP id l1sf9436989ioh.18
        for <lists+clang-built-linux@lfdr.de>; Mon, 13 Jul 2020 19:38:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594694326; cv=pass;
        d=google.com; s=arc-20160816;
        b=IIhSKetxMQhX2Z4yZYngqRy2Szin5amIYv9Tuptt+DlczlqbDhS/UD8GO4inn4rtkv
         HVNaTV4wM3bVbvKkqw8dMDaxSO1N7iCnEULNqlh9Nv4GWBa/PGjgrOWLsVSEDgNvcBmZ
         9oTW0k8yIpeKtYVVIY2gTPj07KEvZWxN+/zUXPlMB5zwZI2mKiK6j/O4KTk8d/UCr4ZS
         GJj+Lfh+u6EWzmr2kf2dNDKg96itkFiwFKB5f/yh69KE4qStHDuAnA65liV8UnzkmnRt
         P8XOy0MmD6M28+JRbc54vZvWQrvxHNr0UQaZ8YT9aVPqyNJu3zpHhyBaIivL9AojrWpZ
         hL1w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=8+0RH7Ixxc+LetEvG0qmolluhSkXacBlSX35bqNIHoc=;
        b=gut1KdiB5Grop1/P7GLOooif2+E/dBcqwfdTfTcipy7sTWG9CI5tsWuYV/UIoKPxfK
         J4BxniRnhI9i15rwoBQjf7NuGnpAWmf+LYyEll7oe371cKogjzgCsiesiKc4CXgJPjvi
         42DzKK8GULg+BfuUkqs1cmLawQzLIfwGLysoS23Pj2GQ7WQiVcCphhCsUipHDD2Snltf
         zTMrdPn+aUF1I4vLUL6ADI7//ak5RVQY6AHupDf50qL5hx5IyZBJNbXC0CEbyR7qQ6Rv
         KtFJFr4hABrAFa/VqKn2lrfLkDu82NYonOtLAYMQeD+UFuleHgiVDCHcF6nOzikBBEo7
         /nBw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.222.194 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8+0RH7Ixxc+LetEvG0qmolluhSkXacBlSX35bqNIHoc=;
        b=YQQ3mLA3q+35e7WnarQGsN8+9CZld9L89uC4pPBtjVXlssse39e3iMdW9qgp3W5kGU
         J9Ww966CyXe9Lt9wutbOU0uHjGHkDF4HrKE0VPba1YPjiJpIumvWcZuw9P2bT30mn3a9
         UrytMDWjHsqi0j1Jq3BuHijptb8c3iVqjCKCHVKX8JD1FQFb3woDbnv5BY3yoYm+5q8F
         SC6SC+vKErTDtMDKGlVEAYFXfPIigxvUWRbYoTBiB7JOjuOKNx5OY/on+9w+N/1RVnth
         Az+x/koKIyHBXNd3JupF/M3qAsn0jIcoZg6tnrcebERn8dIvtP+FGfUz3jg/qWYRN/4h
         auIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8+0RH7Ixxc+LetEvG0qmolluhSkXacBlSX35bqNIHoc=;
        b=qPNBWJ9/LBG6y50pd3UZCjAovAgwWv56vGncW0PY+em1QCPRBDHzEfi0Kug56tJkep
         ZWi5ep2QFe4mrM6iidB3PfPYteEoXVOS6xRHTEHJF+Q2vTiE5zdEpESkuQWmi1LljZwM
         /2NXXV6I5NUw6WAnffKKt3+9Aajdsase7UNje80qob+dujdOwORpQF1n3B1xA3BRDLpk
         mp3pm8XH/M0OfCP+94QyN+tF+woNHvn0fmWOHeQ8GvuQ91JeGIXMh6TW+A5pMDwkJzlz
         1R1phUwMfCdJxYQ1GmupLafzXtbG2pnnncrYbR/jTvXBsLfosTZFq7CJ1SwiT66f3mPL
         g+Og==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5318jJUjmt7w3/DCiG1F4cknEFTgNbPZkeqk6WhnhFtyNdVTN3Up
	JHl+2IoY+Ed6SgsaCwN4zm0=
X-Google-Smtp-Source: ABdhPJyuTzYo2772EHeByCuvs1nmqYQKVhegsZmoRdxwerQBzVdcCtC3o/N9SbZEgAlrod2ctLaK0w==
X-Received: by 2002:a05:6602:5db:: with SMTP id w27mr2859158iox.58.1594694326179;
        Mon, 13 Jul 2020 19:38:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6602:1549:: with SMTP id h9ls1138195iow.4.gmail; Mon, 13
 Jul 2020 19:38:45 -0700 (PDT)
X-Received: by 2002:a5e:980f:: with SMTP id s15mr2757114ioj.47.1594694325848;
        Mon, 13 Jul 2020 19:38:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594694325; cv=none;
        d=google.com; s=arc-20160816;
        b=OQYsNsfhushW3rwLWAUYqOdtEr2ug2KFToNNZ02BcV15NuI5tPE5bCIaTtRVaCCytl
         LbJaASl2rOnrdKpqBebFOppNEgb0pZCkVGtIlkPv0q2doDUriDMAHHcT0veHOKISg0MO
         Wff6invFe3rsHbHzeQoUsTVjfR7BKzaMAzX3kYuymbAOd32e4PmI6svaU7r5pYyFu8Y1
         pO22ugpYV7l4n55a1y63ZtthccWx9aFk+zqzRvVWygKEiTUOE/Smfmw5OKVQaSdsRGYC
         ftQ6NS82/limVePJTWxe3DpqYIn8JOunKQkIWYWDrtJ+hQTJVS8s+GZ56NI7A83T9XwT
         w7NA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=qKCT1M8WWk8srwN5cXiqdOlqm+yOSS4ItsgBsi85XqQ=;
        b=FneuYZQcvKIi/UC/2GlFNHuBJ63xJwIo1UW1zwJCis5s58KtjoTLOPcXBuPoJvJtFb
         rZbEZNqCWYpBVnSIbEj4ccVZsMwWGB3EqBLCl87fV9MIiJH/dtbzhA5THxV83DfayXz4
         XW0hNgeneMXnigMbPKhOyhJhpKv2x1MVDf6rphhHlGWaCofQ1X0FAwC2agfjGlV9peGV
         GqAPC9obkSFp+RTb8ZnUuUBHg1otNu+Cb4mhWFHxdjhCTF63tb1UKb6mieG5mTiYZ9tk
         9l6PlU+PXikTiOg1FU7STbrMRe+c88Lx3xVxBYDoF0aBK1i1sqKlabzSZ7pVRuG45N1L
         9LZw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.222.194 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qk1-f194.google.com (mail-qk1-f194.google.com. [209.85.222.194])
        by gmr-mx.google.com with ESMTPS id o15si889691ilg.3.2020.07.13.19.38.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Jul 2020 19:38:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 209.85.222.194 as permitted sender) client-ip=209.85.222.194;
Received: by mail-qk1-f194.google.com with SMTP id r22so14292294qke.13
        for <clang-built-linux@googlegroups.com>; Mon, 13 Jul 2020 19:38:45 -0700 (PDT)
X-Received: by 2002:a37:a444:: with SMTP id n65mr2440899qke.289.1594694325344;
        Mon, 13 Jul 2020 19:38:45 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id a22sm21046291qka.64.2020.07.13.19.38.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Jul 2020 19:38:44 -0700 (PDT)
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
Subject: [PATCH v4 6/7] x86/boot: Remove runtime relocations from head_{32,64}.S
Date: Mon, 13 Jul 2020 22:38:35 -0400
Message-Id: <20200714023836.2310569-7-nivedita@alum.mit.edu>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200629140928.858507-1-nivedita@alum.mit.edu>
References: <20200629140928.858507-1-nivedita@alum.mit.edu>
MIME-Version: 1.0
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 209.85.222.194 as
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

Reviewed-by: Kees Cook <keescook@chromium.org>
Reviewed-by: Ard Biesheuvel <ardb@kernel.org>
Reviewed-by: Fangrui Song <maskray@google.com>
Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
---
 arch/x86/boot/compressed/Makefile  |  8 --------
 arch/x86/boot/compressed/head_32.S | 17 ++++++++---------
 arch/x86/boot/compressed/head_64.S |  4 ++--
 arch/x86/boot/compressed/mkpiggy.c |  6 ++++++
 4 files changed, 16 insertions(+), 19 deletions(-)

diff --git a/arch/x86/boot/compressed/Makefile b/arch/x86/boot/compressed/Makefile
index c829d874dcac..7cd9a2870f7c 100644
--- a/arch/x86/boot/compressed/Makefile
+++ b/arch/x86/boot/compressed/Makefile
@@ -51,15 +51,7 @@ UBSAN_SANITIZE :=n
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200714023836.2310569-7-nivedita%40alum.mit.edu.
