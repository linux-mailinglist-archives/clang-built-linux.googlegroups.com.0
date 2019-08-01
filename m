Return-Path: <clang-built-linux+bncBD52JJ7JXILRBBP4RDVAKGQEWSCM2BA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23c.google.com (mail-oi1-x23c.google.com [IPv6:2607:f8b0:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id 568AF7D2BD
	for <lists+clang-built-linux@lfdr.de>; Thu,  1 Aug 2019 03:19:03 +0200 (CEST)
Received: by mail-oi1-x23c.google.com with SMTP id d12sf27197315oic.10
        for <lists+clang-built-linux@lfdr.de>; Wed, 31 Jul 2019 18:19:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564622342; cv=pass;
        d=google.com; s=arc-20160816;
        b=h+6CaM5YMAR91HfejIrNEGxs9T0ZKkji/NediSdG5Aau4DNSVHi8VU/jJiZXphWo55
         rJC0XHXE1BdmQ+jUdG1dDGekhRdMwsBAwszo/tzfHbfX8tI7g6sIYGddD+McVXRHdNf2
         m9BWKxY62pOKu/BvyiphbNylEe2U3vorYAOgbb58yDYWTJV241CGfOPwvnqLYH1xOew5
         SM9XOGjZ/Ck8if0KfCx3BIGy79gO/odaqQKUjqqVOjczkc6waNCpN0rWGlPBhAFeYVnY
         X5o9nLlbcA7H+WiV0RJD2j4F8vF8HlmqqT3uwxQayo3oOGNBftEXnKzDyWwej9FBrsy7
         yC1A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=wvxI6B4AwE0rzUcZQ+ZWGb3NP8u4Koeyzy55AzW04l8=;
        b=UlhOjnzptr3EhxxpndJjcLWGkIbGIB+tx8rb2LxEPaJ7EorIpPGptY/q84UfPejiSp
         8HMQHIhk2ZvZR01NgDo7WcD9ZH2FJMyetHypeB9fMMb5gpQxamPWRv3a3g3TR30gI7TU
         AZDFtEHsP74QHeNMvaoZgWFrQghoJbrtADiQlhdi1594I//e7BKufBzC4n1K38uL91Fs
         LKNoTqqGj3MpXSpHWZXPQDntHv4WfEGd3m3rwaahaV1qc4O0ohK3l2Io7s1ST5CPIHMG
         a72ntZu93HT6Z1Txv0wvo07+b6O0LE/VJdqN75rll7Q0cJcoYae6PumjjwtM/z0eF9IO
         6Jnw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ZhA0c4EB;
       spf=pass (google.com: domain of 3bd5cxqmkexkmzzdlldib.zljzixkd-yrfiq-ifkrudlldibdolrmp.zlj@flex--pcc.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3BD5CXQMKEXkmZZdlldib.ZljZiXkd-Yrfiq-ifkrudlldibdolrmp.Zlj@flex--pcc.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wvxI6B4AwE0rzUcZQ+ZWGb3NP8u4Koeyzy55AzW04l8=;
        b=c47mGeQlp8NLPwWYLA4HHP4yNzA0CY4f5msCF1Q25QDh808MwyehMnMpy4c3dTcEQZ
         g68sUmqFgdCjtekTITSnZOwWDXCYpTFP3Ncy+G2mE6JSVW31nKAsIGZ8jDw+rpYn7MI0
         z4tQocAJlYZzGZutiQ7M2viT4KSXktsIKGxONXBegIWFasBMZ5zUAQRDDrN2Rkp+UkLL
         otcwW/DUtYfvgPgMxnI8QzsRfLirorXfGY5ofQXk8vdAhhVA6hSq24GcmM47fDnu/qKe
         yCq7tzdf4eJHWGkWuJPif2k71kcRCGA+WGuEjUNZWu/VM8hvcQdTR9X2enLVX/cg2o4p
         Qc3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wvxI6B4AwE0rzUcZQ+ZWGb3NP8u4Koeyzy55AzW04l8=;
        b=Z/Gs26qMfEJD+wLQVou2tFA7LHKT/dvF0LDaKUwG+RuMSxWMOYX03b0QrAwGyMLg4d
         uu9BZBSewBSQo/iA7fjcdjj170Tos9V/XqG938mrx8k5B518EMeDARzS7vOuyMCQOMoo
         b0ZbsXmOZUoaaiwrls8jRQCjd3r+I90GhrHiEHBycJI14AObxn8Zs/qKnVZwEEFlF730
         kgdIJxNXP3ZdwbT13QGkGouV9e9WMEqjaIofwhlbHE+2r31gBISYFncyrWpCZ3d1NBC+
         vM/Wu9g1xFIbeO8+E/DX2nP2PjVMQRIQ0SdHIq2A+H2h+FV4Vg3mV+85NhLkwVP1MlKu
         GHdQ==
X-Gm-Message-State: APjAAAUl6aj0FJSYRMkgZ4WqFJShgJDyLK4A6IGsbjObwse70/7qvggt
	X+nvjKoz+Cw2GGl5KTgalGI=
X-Google-Smtp-Source: APXvYqyFN8sqxJbmAN7Q4HPSREwefOdST7F614npI4l7JWPfcVf4QIwuw7GRq89VBG+U/7AOPvMYwA==
X-Received: by 2002:a9d:4b88:: with SMTP id k8mr8941755otf.285.1564622341940;
        Wed, 31 Jul 2019 18:19:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:12c3:: with SMTP id g61ls5039008otg.16.gmail; Wed, 31
 Jul 2019 18:19:01 -0700 (PDT)
X-Received: by 2002:a05:6830:1698:: with SMTP id k24mr7789737otr.323.1564622341568;
        Wed, 31 Jul 2019 18:19:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564622341; cv=none;
        d=google.com; s=arc-20160816;
        b=PuxYRzqPRPP/NYumGGH50ApaDIlEj490iU7DDs3F/X4T8jbFrONY0rxIOehK3Wu9gx
         pwnSKVwwH4dFhw+fDvoRZ3atBbdTJSB4WbxPO/NapmQFaoY38FBv1BDqDtgEwk0s6LK1
         I4SL79IB6veQXOphktI+DJZDcpbcuWQ6HNoO4T8wJ54BJJyeaPa2Me61Y6W9JGoHHLKy
         RMmxmlR6hHCzJY3hOn8X95aEUMN6/XRsWJC3YXeT0FjagUk0PbOCpPbG6XPZ/t0Xhe8L
         Q9ChAsUPTvl/u3/5wHqxsftjYSEnruyZbMbBaJJ1dsYs+lK2J2Nq/G5uYnDMqgPbyjo6
         nUUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=l1Y0E2uxDzeuFZd3SoVM5KQ4j3MJyT1KII9C3kn9KRw=;
        b=xu8uLkoOBVurIEfGL5ToU2EVx4EpTiv7a60/+z4vtRVrJBnjXrRjxD3u198Bx8xSJf
         3Ax6edkP8a+HCBzAMD9/hPjx+/Wwac7uTw3h14Dsat9fMWoNqzy0kbb1YOJk4OQTpCHG
         Xo2nQzdytQnZkfra2CgaX+5xv0uBkNdr7eFwGEY0HPpaGKc6+hYrNYZZSn6BRHdDIBFe
         CeMmS6lR73jT7dExtsRxdHy0xmqiEKytc0TqaonCQVKPhRw/ozajkJxc+D+yXeFUAYs9
         ymEXDEkM708Hyn42Ak0JxLMFnLuPgABOG05K9WKZqQcz8CAf3PkY6runl0ELRVtmYOXX
         /qog==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ZhA0c4EB;
       spf=pass (google.com: domain of 3bd5cxqmkexkmzzdlldib.zljzixkd-yrfiq-ifkrudlldibdolrmp.zlj@flex--pcc.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3BD5CXQMKEXkmZZdlldib.ZljZiXkd-Yrfiq-ifkrudlldibdolrmp.Zlj@flex--pcc.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x74a.google.com (mail-qk1-x74a.google.com. [2607:f8b0:4864:20::74a])
        by gmr-mx.google.com with ESMTPS id u26si3172484otj.3.2019.07.31.18.19.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Wed, 31 Jul 2019 18:19:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3bd5cxqmkexkmzzdlldib.zljzixkd-yrfiq-ifkrudlldibdolrmp.zlj@flex--pcc.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) client-ip=2607:f8b0:4864:20::74a;
Received: by mail-qk1-x74a.google.com with SMTP id l14so59619977qke.16
        for <clang-built-linux@googlegroups.com>; Wed, 31 Jul 2019 18:19:01 -0700 (PDT)
X-Received: by 2002:a0c:984a:: with SMTP id e10mr89541242qvd.57.1564622340917;
 Wed, 31 Jul 2019 18:19:00 -0700 (PDT)
Date: Wed, 31 Jul 2019 18:18:42 -0700
In-Reply-To: <20190712193846.174893-1-pcc@google.com>
Message-Id: <20190801011842.199786-1-pcc@google.com>
Mime-Version: 1.0
References: <20190712193846.174893-1-pcc@google.com>
X-Mailer: git-send-email 2.22.0.709.g102302147b-goog
Subject: [PATCH v3] arm64: Add support for relocating the kernel with RELR relocations
From: "'Peter Collingbourne' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Mark Rutland <mark.rutland@arm.com>, Ard Biesheuvel <ard.biesheuvel@linaro.org>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>
Cc: linux-arm-kernel@lists.infradead.org, clang-built-linux@googlegroups.com, 
	Peter Collingbourne <pcc@google.com>, Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: pcc@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ZhA0c4EB;       spf=pass
 (google.com: domain of 3bd5cxqmkexkmzzdlldib.zljzixkd-yrfiq-ifkrudlldibdolrmp.zlj@flex--pcc.bounces.google.com
 designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3BD5CXQMKEXkmZZdlldib.ZljZiXkd-Yrfiq-ifkrudlldibdolrmp.Zlj@flex--pcc.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Peter Collingbourne <pcc@google.com>
Reply-To: Peter Collingbourne <pcc@google.com>
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

RELR is a relocation packing format for relative relocations.
The format is described in a generic-abi proposal:
https://groups.google.com/d/topic/generic-abi/bX460iggiKg/discussion

The LLD linker can be instructed to pack relocations in the RELR
format by passing the flag --pack-dyn-relocs=relr.

This patch adds a new config option, CONFIG_RELR. Enabling this option
instructs the linker to pack vmlinux's relative relocations in the RELR
format, and causes the kernel to apply the relocations at startup along
with the RELA relocations. RELA relocations still need to be applied
because the linker will emit RELA relative relocations if they are
unrepresentable in the RELR format (i.e. address not a multiple of 2).

Enabling CONFIG_RELR reduces the size of a defconfig kernel image
with CONFIG_RANDOMIZE_BASE by 3.5MB/16% uncompressed, or 550KB/5%
compressed (lz4).

Signed-off-by: Peter Collingbourne <pcc@google.com>
Tested-by: Nick Desaulniers <ndesaulniers@google.com>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
---

Notes:
    Changes in v3:
    - Move Kconfig/Makefile logic to arch-independent location
    - Tweak CONFIG_RELR documentation to remove "currently"
    
    Changes in v2:
    - Reverted change to RELA processing
    - Added more comments, as requested by Nick and Will
    - Added a feature test for NM and OBJCOPY
    - Made CONFIG_RELR=y the default if the tools support it

 Makefile                        |  4 ++
 arch/Kconfig                    | 14 +++++
 arch/arm64/Kconfig              |  1 +
 arch/arm64/kernel/head.S        | 96 ++++++++++++++++++++++++++++++---
 arch/arm64/kernel/vmlinux.lds.S |  9 ++++
 init/Kconfig                    |  3 ++
 scripts/tools-support-relr.sh   | 16 ++++++
 7 files changed, 137 insertions(+), 6 deletions(-)
 create mode 100755 scripts/tools-support-relr.sh

diff --git a/Makefile b/Makefile
index 5ee6f68898693..23ed9dbef12a1 100644
--- a/Makefile
+++ b/Makefile
@@ -912,6 +912,10 @@ ifeq ($(CONFIG_STRIP_ASM_SYMS),y)
 LDFLAGS_vmlinux	+= $(call ld-option, -X,)
 endif
 
+ifeq ($(CONFIG_RELR),y)
+LDFLAGS_vmlinux	+= --pack-dyn-relocs=relr
+endif
+
 # insure the checker run with the right endianness
 CHECKFLAGS += $(if $(CONFIG_CPU_BIG_ENDIAN),-mbig-endian,-mlittle-endian)
 
diff --git a/arch/Kconfig b/arch/Kconfig
index d4c1f0551dfe0..719b27275f86a 100644
--- a/arch/Kconfig
+++ b/arch/Kconfig
@@ -936,6 +936,20 @@ config LOCK_EVENT_COUNTS
 	  the chance of application behavior change because of timing
 	  differences. The counts are reported via debugfs.
 
+# Select if the architecture has support for applying RELR relocations.
+config ARCH_HAS_RELR
+	bool
+
+config RELR
+	bool "Use RELR relocation packing"
+	depends on ARCH_HAS_RELR && TOOLS_SUPPORT_RELR
+	default y
+	help
+	  Store the kernel's dynamic relocations in the RELR relocation packing
+	  format. Requires a compatible linker (LLD supports this feature), as
+	  well as compatible NM and OBJCOPY utilities (llvm-nm and llvm-objcopy
+	  are compatible).
+
 source "kernel/gcov/Kconfig"
 
 source "scripts/gcc-plugins/Kconfig"
diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 399f595ef852e..ac1bc9cc22a26 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -1467,6 +1467,7 @@ endif
 
 config RELOCATABLE
 	bool
+	select ARCH_HAS_RELR
 	help
 	  This builds the kernel as a Position Independent Executable (PIE),
 	  which retains all relocation metadata required to relocate the
diff --git a/arch/arm64/kernel/head.S b/arch/arm64/kernel/head.S
index 2cdacd1c141b9..cc23302e9d95e 100644
--- a/arch/arm64/kernel/head.S
+++ b/arch/arm64/kernel/head.S
@@ -102,6 +102,8 @@ pe_header:
 	 *  x23        stext() .. start_kernel()  physical misalignment/KASLR offset
 	 *  x28        __create_page_tables()     callee preserved temp register
 	 *  x19/x20    __primary_switch()         callee preserved temp registers
+	 *  x24        __primary_switch() .. relocate_kernel()
+	 *                                        current RELR displacement
 	 */
 ENTRY(stext)
 	bl	preserve_boot_args
@@ -834,14 +836,93 @@ __relocate_kernel:
 
 0:	cmp	x9, x10
 	b.hs	1f
-	ldp	x11, x12, [x9], #24
-	ldr	x13, [x9, #-8]
-	cmp	w12, #R_AARCH64_RELATIVE
+	ldp	x12, x13, [x9], #24
+	ldr	x14, [x9, #-8]
+	cmp	w13, #R_AARCH64_RELATIVE
 	b.ne	0b
-	add	x13, x13, x23			// relocate
-	str	x13, [x11, x23]
+	add	x14, x14, x23			// relocate
+	str	x14, [x12, x23]
 	b	0b
-1:	ret
+
+1:
+#ifdef CONFIG_RELR
+	/*
+	 * Apply RELR relocations.
+	 *
+	 * RELR is a compressed format for storing relative relocations. The
+	 * encoded sequence of entries looks like:
+	 * [ AAAAAAAA BBBBBBB1 BBBBBBB1 ... AAAAAAAA BBBBBB1 ... ]
+	 *
+	 * i.e. start with an address, followed by any number of bitmaps. The
+	 * address entry encodes 1 relocation. The subsequent bitmap entries
+	 * encode up to 63 relocations each, at subsequent offsets following
+	 * the last address entry.
+	 *
+	 * The bitmap entries must have 1 in the least significant bit. The
+	 * assumption here is that an address cannot have 1 in lsb. Odd
+	 * addresses are not supported. Any odd addresses are stored in the RELA
+	 * section, which is handled above.
+	 *
+	 * Excluding the least significant bit in the bitmap, each non-zero
+	 * bit in the bitmap represents a relocation to be applied to
+	 * a corresponding machine word that follows the base address
+	 * word. The second least significant bit represents the machine
+	 * word immediately following the initial address, and each bit
+	 * that follows represents the next word, in linear order. As such,
+	 * a single bitmap can encode up to 63 relocations in a 64-bit object.
+	 *
+	 * In this implementation we store the address of the next RELR table
+	 * entry in x9, the address being relocated by the current address or
+	 * bitmap entry in x13 and the address being relocated by the current
+	 * bit in x14.
+	 *
+	 * Because addends are stored in place in the binary, RELR relocations
+	 * cannot be applied idempotently. We use x24 to keep track of the
+	 * currently applied displacement so that we can correctly relocate if
+	 * __relocate_kernel is called twice with non-zero displacements (i.e.
+	 * if there is both a physical misalignment and a KASLR displacement).
+	 */
+	ldr	w9, =__relr_offset		// offset to reloc table
+	ldr	w10, =__relr_size		// size of reloc table
+	add	x9, x9, x11			// __va(.relr)
+	add	x10, x9, x10			// __va(.relr) + sizeof(.relr)
+
+	sub	x15, x23, x24			// delta from previous offset
+	cbz	x15, 7f				// nothing to do if unchanged
+	mov	x24, x23			// save new offset
+
+2:	cmp	x9, x10
+	b.hs	7f
+	ldr	x11, [x9], #8
+	tbnz	x11, #0, 3f			// branch to handle bitmaps
+	add	x13, x11, x23
+	ldr	x12, [x13]			// relocate address entry
+	add	x12, x12, x15
+	str	x12, [x13], #8			// adjust to start of bitmap
+	b	2b
+
+3:	mov	x14, x13
+4:	lsr	x11, x11, #1
+	cbz	x11, 6f
+	tbz	x11, #0, 5f			// skip bit if not set
+	ldr	x12, [x14]			// relocate bit
+	add	x12, x12, x15
+	str	x12, [x14]
+
+5:	add	x14, x14, #8			// move to next bit's address
+	b	4b
+
+6:	/*
+	 * Move to the next bitmap's address. 8 is the word size, and 63 is the
+	 * number of significant bits in a bitmap entry.
+	 */
+	add	x13, x13, #(8 * 63)
+	b	2b
+
+7:
+#endif
+	ret
+
 ENDPROC(__relocate_kernel)
 #endif
 
@@ -854,6 +935,9 @@ __primary_switch:
 	adrp	x1, init_pg_dir
 	bl	__enable_mmu
 #ifdef CONFIG_RELOCATABLE
+#ifdef CONFIG_RELR
+	mov	x24, #0				// no RELR displacement yet
+#endif
 	bl	__relocate_kernel
 #ifdef CONFIG_RANDOMIZE_BASE
 	ldr	x8, =__primary_switched
diff --git a/arch/arm64/kernel/vmlinux.lds.S b/arch/arm64/kernel/vmlinux.lds.S
index 7fa0083749078..31716afa30f65 100644
--- a/arch/arm64/kernel/vmlinux.lds.S
+++ b/arch/arm64/kernel/vmlinux.lds.S
@@ -200,6 +200,15 @@ SECTIONS
 	__rela_offset	= ABSOLUTE(ADDR(.rela.dyn) - KIMAGE_VADDR);
 	__rela_size	= SIZEOF(.rela.dyn);
 
+#ifdef CONFIG_RELR
+	.relr.dyn : ALIGN(8) {
+		*(.relr.dyn)
+	}
+
+	__relr_offset	= ABSOLUTE(ADDR(.relr.dyn) - KIMAGE_VADDR);
+	__relr_size	= SIZEOF(.relr.dyn);
+#endif
+
 	. = ALIGN(SEGMENT_ALIGN);
 	__initdata_end = .;
 	__init_end = .;
diff --git a/init/Kconfig b/init/Kconfig
index bd7d650d4a996..d96127ebc44e0 100644
--- a/init/Kconfig
+++ b/init/Kconfig
@@ -30,6 +30,9 @@ config CC_CAN_LINK
 config CC_HAS_ASM_GOTO
 	def_bool $(success,$(srctree)/scripts/gcc-goto.sh $(CC))
 
+config TOOLS_SUPPORT_RELR
+	def_bool $(success,env "CC=$(CC)" "LD=$(LD)" "NM=$(NM)" "OBJCOPY=$(OBJCOPY)" $(srctree)/scripts/tools-support-relr.sh)
+
 config CC_HAS_WARN_MAYBE_UNINITIALIZED
 	def_bool $(cc-option,-Wmaybe-uninitialized)
 	help
diff --git a/scripts/tools-support-relr.sh b/scripts/tools-support-relr.sh
new file mode 100755
index 0000000000000..97a2c844a95e4
--- /dev/null
+++ b/scripts/tools-support-relr.sh
@@ -0,0 +1,16 @@
+#!/bin/sh -eu
+# SPDX-License-Identifier: GPL-2.0
+
+tmp_file=$(mktemp)
+trap "rm -f $tmp_file.o $tmp_file $tmp_file.bin" EXIT
+
+cat << "END" | "$CC" -c -x c - -o $tmp_file.o >/dev/null 2>&1
+void *p = &p;
+END
+"$LD" $tmp_file.o -shared -Bsymbolic --pack-dyn-relocs=relr -o $tmp_file
+
+# Despite printing an error message, GNU nm still exits with exit code 0 if it
+# sees a relr section. So we need to check that nothing is printed to stderr.
+test -z "$("$NM" $tmp_file 2>&1 >/dev/null)"
+
+"$OBJCOPY" -O binary $tmp_file $tmp_file.bin
-- 
2.22.0.709.g102302147b-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190801011842.199786-1-pcc%40google.com.
