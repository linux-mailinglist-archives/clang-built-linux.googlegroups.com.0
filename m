Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBQ7CZL3QKGQEQI4BG4Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x637.google.com (mail-pl1-x637.google.com [IPv6:2607:f8b0:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id 40CCD2069BB
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 03:49:57 +0200 (CEST)
Received: by mail-pl1-x637.google.com with SMTP id n20sf580577plp.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jun 2020 18:49:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592963395; cv=pass;
        d=google.com; s=arc-20160816;
        b=v0YWedRpiZexmg23EQcjpG6EJUoozL9E7lRgs7GGiLm5TZRnzvSI59F+huvTHjaafF
         3sBvPAj8pIjyQEctk46qPUdp++aeEuC5qO0dEDM6gP9XzP8/qJP1n7Hthgj5j0eQFKCh
         QYlmTizUFnyF+iR2XVrHTml/nNWO8rvZ5WngwomrCYbqx3qrRd6FvbFyVgDncaLHCwe9
         9nq3VBT0xhTSgxFyl7lDP/Xl99jklF7GkHWRTkquk+suCcCjExHBV/5bOPs1NBKRF0Qs
         MWr5IX9ZPKdJ6XcVochfJ6q7uKWgOAjFGQi2N4MjbRdZRVGK+HhpwS881tLwhzlLZA+L
         ztzQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=nKRhc9L0JzuiHbiBvA+g/K7U4HGyPdhkxlCsi7ggtiQ=;
        b=VFVVUaaeDaXz2ZB3eEmgdGASUPRThEmwc5Qaoq/GoCCwfC3ShlYjuKTHq7upWyXXPn
         4XqhHEoGarO4kzOkzogagH0Tm42dL1ytiXbTNC0z/55ilyzoiBemwxuT2XkuF/QCUNis
         7fFuegqpEyoGu7Ugpnta38rzfXeH9GheptnbiSVoP5dpgqGTGqRGrOZ46kisOanAx0H+
         jkcnBJlDBIj5nW/NI4bvdO9bNYY7L90YettHG/WUQELIAly54ExycpgFO69lL0onS+iW
         CVswN5aSL0kU4jAOTKjD0zzc0ckIEnsk560cF3dbdgAx/VsIv6tACMZd764MGDTVL2ok
         jdeA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=ckmxDB65;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nKRhc9L0JzuiHbiBvA+g/K7U4HGyPdhkxlCsi7ggtiQ=;
        b=kF2GMVJwFqRsYpG/ZlM2EP1dpULOghWS7g1rXJPrS6McQCG3PuT36dEJ3afhOc3uJn
         X5kBCWBSpuqmkxdab2sItRstmWS8RUxVrZG9DtJYPb3/lH1+HVglw2xmUDskx4rczx8p
         k0PN8XYFwKlKC+7mYGrSFFS0oUJWRQ155spzqZXHeMhE9nnCrVZpqNZx/19Av2u07lX5
         5ltNp9TiYBQ9y39vtEd1PxBKYQUjOvHHU1JsJR1Js8s5eSeDiB3uYojC/0xWaHtn8CvQ
         KUhFGuwY9naHWrg3ZreiuPz6iaRXBpap44RuvcagTJuxHzECjbIdjumjaudcXS3Dn+NF
         mQCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nKRhc9L0JzuiHbiBvA+g/K7U4HGyPdhkxlCsi7ggtiQ=;
        b=JMLWfkhsTEE7CJXXiYoh5NLaAv7LmQd80iVNykAh6URZBVxDUgy4BgpdI75RxwebMw
         dlB+O4sowI8s06mrcUwKOhBAZHHJkmi1KTITOejhyux/WLUmNJBqWq0J9L1hY1/ExYBt
         YtSlxNyTGfr8ZDJCtciIR2gUsOv3Ht+3xjfgqmrp50afAaaBeQ4FZ2ILYr/dvJpZ8pFY
         VecwfrmYH0arc0BY4RqYsZHy5w9D0uetiN+E1Sn0cMECtf06TJ9Qknqu9gH5/KEBIhFp
         gyL8yAXKbFNhLAcr96JsfgPDespPXBujP43F9y3N6DlQgWpmsPKK5I3oyge4h6L4MHO1
         nLdQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533iUgD4AIPVKko3/a51gJqRIw0ItZtrPg7nnY0Uo9jzNu9v2fGM
	pvRZFZri8hKqe17pMwytbeA=
X-Google-Smtp-Source: ABdhPJxKwGxEQF/tNx2iAuIeBlwgUzY/0VJ02N5KYpxdFct1ZL77arBoxCsifdPweE7X25FNtmQ0kg==
X-Received: by 2002:a17:902:8546:: with SMTP id d6mr26510015plo.220.1592963395800;
        Tue, 23 Jun 2020 18:49:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:c253:: with SMTP id d19ls349120pjx.2.gmail; Tue, 23
 Jun 2020 18:49:55 -0700 (PDT)
X-Received: by 2002:a17:90a:5c85:: with SMTP id r5mr26261960pji.40.1592963395416;
        Tue, 23 Jun 2020 18:49:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592963395; cv=none;
        d=google.com; s=arc-20160816;
        b=PBGyqI95fc0vlDo4kDMkVcUz4/mxNcFyrsF4OHGfup01HWHbhZqpSiIFYgmyh9wP5O
         H0D5hPORnirmG63Vqp+HBMWSSEU/47gQgxb43JIP9H0MlBHntAL/THbytkGDxU0HpRVV
         E/Rj1EEQ2HMjcg0TSiB03MlX8+LHxGkuZnoaQs9SaAbB+MBYawnvHy4iNFoPPtiIUMg9
         gP5bvwjeNctsu3CwCninLbXJ/jUraaEZCqaSlrnmRYMskt2Exv6H/ObZw0d4PAiOqxDZ
         Vu/4+/vbYRTJn2qR6kmf6wyUTCYDJSRyMHwMd0PaSQyJFgvITyEUqHWJVpqWW1hD7by+
         wpQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=IXUgLosNUEP93cpEKoNn7oauK0Oksg2zT1r8iNc2N3M=;
        b=zXmT2rWAhq9Ay6lPVMkwF8Z36sEQ9v5rB50gwdLTCsC8ZuIZ6h2Tbguy7mlfUWwGbv
         lSAP0vZZrj5Uoj8vFtt2o8nByTLjZ3HznykY2rkSjIxfEqelpKTO6tmFMb4gepnzNfhQ
         a0Ufesxj0nBeAo4+KASUO8tUalyLeyVieFZlq2Q02xN/RqrE0LVV8z+zHD8xtXLs0AGA
         PvbXHgwf1DNqITpgtNsKp2na+4cw+gkdcSceg/g4fwAXtG1hOuvG8vuZt8W0Hl2HTeDI
         B2b/hMWPBMl2v+s9eKvJIHzAy7JvxBKTUDd1HBL0L4TEBnxjXCJwYPqkaom9YgIsZERZ
         1D/Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=ckmxDB65;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id l9si179106pjw.2.2020.06.23.18.49.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Jun 2020 18:49:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Received: by mail-pj1-x1044.google.com with SMTP id jz3so419077pjb.0
        for <clang-built-linux@googlegroups.com>; Tue, 23 Jun 2020 18:49:55 -0700 (PDT)
X-Received: by 2002:a17:90a:1117:: with SMTP id d23mr26427976pja.136.1592963395150;
        Tue, 23 Jun 2020 18:49:55 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id mp15sm3525013pjb.45.2020.06.23.18.49.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jun 2020 18:49:51 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Will Deacon <will@kernel.org>
Cc: Kees Cook <keescook@chromium.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>,
	Borislav Petkov <bp@suse.de>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	Russell King <linux@armlinux.org.uk>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	x86@kernel.org,
	clang-built-linux@googlegroups.com,
	linux-arch@vger.kernel.org,
	linux-efi@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 9/9] arm64/build: Warn on orphan section placement
Date: Tue, 23 Jun 2020 18:49:40 -0700
Message-Id: <20200624014940.1204448-10-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200624014940.1204448-1-keescook@chromium.org>
References: <20200624014940.1204448-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=ckmxDB65;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1044
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

We don't want to depend on the linker's orphan section placement
heuristics as these can vary between linkers, and may change between
versions. All sections need to be explicitly named in the linker
script.

Avoid .eh_frame* by making sure both -fno-asychronous-unwind-tables and
-fno-unwind-tables are present in both CFLAGS and AFLAGS. Remove one
last instance of .eh_frame by removing the needless Call Frame Information
annotations from arch/arm64/kernel/smccc-call.S.

Add .plt, .data.rel.ro, .igot.*, and .iplt to discards as they are not
actually used. While .got.plt is also not used, it must be included
otherwise ld.bfd will fail to link with the error:

    aarch64-linux-gnu-ld: discarded output section: `.got.plt'

However, as it'd be better to validate that it stays effectively empty,
add an assert.

Explicitly include debug sections when they're present.

Fix a case of needless quotes in __section(), which Clang doesn't like.

Finally, enable orphan section warnings.

Thanks to Ard Biesheuvel for many hints on correct ways to handle
mysterious sections. :)

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 arch/arm64/Makefile             |  9 ++++++++-
 arch/arm64/kernel/smccc-call.S  |  2 --
 arch/arm64/kernel/vmlinux.lds.S | 11 ++++++++++-
 arch/arm64/mm/mmu.c             |  2 +-
 4 files changed, 19 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
index a0d94d063fa8..fb3aa2d7de4d 100644
--- a/arch/arm64/Makefile
+++ b/arch/arm64/Makefile
@@ -29,6 +29,10 @@ LDFLAGS_vmlinux	+= --fix-cortex-a53-843419
   endif
 endif
 
+# We never want expected sections to be placed heuristically by the
+# linker. All sections should be explicitly named in the linker script.
+LDFLAGS_vmlinux += --orphan-handling=warn
+
 ifeq ($(CONFIG_ARM64_USE_LSE_ATOMICS), y)
   ifneq ($(CONFIG_ARM64_LSE_ATOMICS), y)
 $(warning LSE atomics not supported by binutils)
@@ -47,13 +51,16 @@ endif
 
 KBUILD_CFLAGS	+= -mgeneral-regs-only	\
 		   $(compat_vdso) $(cc_has_k_constraint)
-KBUILD_CFLAGS	+= -fno-asynchronous-unwind-tables
 KBUILD_CFLAGS	+= $(call cc-disable-warning, psabi)
 KBUILD_AFLAGS	+= $(compat_vdso)
 
 KBUILD_CFLAGS	+= $(call cc-option,-mabi=lp64)
 KBUILD_AFLAGS	+= $(call cc-option,-mabi=lp64)
 
+# Avoid generating .eh_frame* sections.
+KBUILD_CFLAGS	+= -fno-asynchronous-unwind-tables -fno-unwind-tables
+KBUILD_AFLAGS	+= -fno-asynchronous-unwind-tables -fno-unwind-tables
+
 ifeq ($(CONFIG_STACKPROTECTOR_PER_TASK),y)
 prepare: stack_protector_prepare
 stack_protector_prepare: prepare0
diff --git a/arch/arm64/kernel/smccc-call.S b/arch/arm64/kernel/smccc-call.S
index 1f93809528a4..d62447964ed9 100644
--- a/arch/arm64/kernel/smccc-call.S
+++ b/arch/arm64/kernel/smccc-call.S
@@ -9,7 +9,6 @@
 #include <asm/assembler.h>
 
 	.macro SMCCC instr
-	.cfi_startproc
 	\instr	#0
 	ldr	x4, [sp]
 	stp	x0, x1, [x4, #ARM_SMCCC_RES_X0_OFFS]
@@ -21,7 +20,6 @@
 	b.ne	1f
 	str	x6, [x4, ARM_SMCCC_QUIRK_STATE_OFFS]
 1:	ret
-	.cfi_endproc
 	.endm
 
 /*
diff --git a/arch/arm64/kernel/vmlinux.lds.S b/arch/arm64/kernel/vmlinux.lds.S
index 5427f502c3a6..f6c781768f83 100644
--- a/arch/arm64/kernel/vmlinux.lds.S
+++ b/arch/arm64/kernel/vmlinux.lds.S
@@ -94,7 +94,8 @@ SECTIONS
 	/DISCARD/ : {
 		*(.interp .dynamic)
 		*(.dynsym .dynstr .hash .gnu.hash)
-		*(.eh_frame)
+		*(.plt) *(.data.rel.ro)
+		*(.igot.*) *(.iplt)
 	}
 
 	. = KIMAGE_VADDR + TEXT_OFFSET;
@@ -244,8 +245,16 @@ SECTIONS
 	_end = .;
 
 	STABS_DEBUG
+	DWARF_DEBUG
 
 	HEAD_SYMBOLS
+
+	/*
+	 * Make sure that the .got.plt is either completely empty or it
+	 * contains only the lazy dispatch entries.
+	 */
+	.got.plt (INFO) : { *(.got.plt) }
+	ASSERT(SIZEOF(.got.plt) == 0 || SIZEOF(.got.plt) == 0x18, ".got.plt not empty")
 }
 
 #include "image-vars.h"
diff --git a/arch/arm64/mm/mmu.c b/arch/arm64/mm/mmu.c
index 1df25f26571d..dce024ea6084 100644
--- a/arch/arm64/mm/mmu.c
+++ b/arch/arm64/mm/mmu.c
@@ -42,7 +42,7 @@
 u64 idmap_t0sz = TCR_T0SZ(VA_BITS);
 u64 idmap_ptrs_per_pgd = PTRS_PER_PGD;
 
-u64 __section(".mmuoff.data.write") vabits_actual;
+u64 __section(.mmuoff.data.write) vabits_actual;
 EXPORT_SYMBOL(vabits_actual);
 
 u64 kimage_voffset __ro_after_init;
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200624014940.1204448-10-keescook%40chromium.org.
