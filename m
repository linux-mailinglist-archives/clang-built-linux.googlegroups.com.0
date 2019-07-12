Return-Path: <clang-built-linux+bncBD52JJ7JXILRB3WDUPUQKGQEB4SMZRQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x737.google.com (mail-qk1-x737.google.com [IPv6:2607:f8b0:4864:20::737])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C43167568
	for <lists+clang-built-linux@lfdr.de>; Fri, 12 Jul 2019 21:39:27 +0200 (CEST)
Received: by mail-qk1-x737.google.com with SMTP id s25sf7803405qkj.18
        for <lists+clang-built-linux@lfdr.de>; Fri, 12 Jul 2019 12:39:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1562960366; cv=pass;
        d=google.com; s=arc-20160816;
        b=B76MSo/YABjaiy7G/xjh1HAXpe127fmLvK8dmY5YY7VGt3RHQ0YbSFoplGLQGb9Wwn
         yyw5FsdcZMwdsIrEukj0eLiq8yGKI6VHdlyPsSLTvhBXeLo9LJmeaZGCndbaV1B91oeM
         wNGy9BXDapOsMX1nOai3QmHso0nUw/QvLYwMxweO5wGbEPgkdfEJfdEMQkDPuf9OnDnC
         +Br7pVAhKU6yRN/IpH5y9xlLJxFzgu3O31GVVqfw30jnAOSxNbJEYpYtsiJcfHc2JUE9
         lYiy9Fiisvem0bi6PvxkF63+JtF2irdfluF4BVv6dDI1jzsKdEXpILMCc5E0qPemkXrr
         sB9g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=RzPQrM++O5r1TTet8REuLZ4sJyfYYemwleuPkY1nZ7w=;
        b=XSDdMWNgamxI0YPb0fn8d7nGTTZosvVH0JhWdsikBJdMt4DTO8s8frvgPVmn6jIdYc
         gmvWRS+P+O3P7hVhHcuIgVb+ycDa9y2qjtxRM7VKKu6o13f/Q1AiDVSiRqoyrs64Ounv
         tl9sFQ4gM5Y4fu/TroyuxW8K9zCwiYjAk0RCsLME/iIJKaKo+T9w+udfEAYLP1AQaWiW
         FYcZdzx9425y6lRuTIw5e4gacMi3VCAgy4ZmaVwJvAXeMBXWkCEP/Jq3G1KK3yXbDEUX
         gv0tnWwcGLaEwSeUfu9XWxZ4KgQG+qSoEKuD5Bb5q0YbnfpcZz9MgVkvgzGafhUB5pZc
         xSiw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=p6moMXPb;
       spf=pass (google.com: domain of 37eeoxqmkeuqviimuumrk.iusirgtm-h0orz-rot03muumrkmxu0vy.ius@flex--pcc.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=37eEoXQMKEUQviimuumrk.iusirgtm-h0orz-rot03muumrkmxu0vy.ius@flex--pcc.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RzPQrM++O5r1TTet8REuLZ4sJyfYYemwleuPkY1nZ7w=;
        b=d/wgT65Ghk9am0nsBV+X8MS1G71WjoTRCG1mygn/6EkMInJ5mZprrJ5dmZR25+DJ4W
         uXX0MqEcYpubzRhLS2rguTpjXO+ukT2X2DzeC2GL4tiKjXOU9p30BAlJppmS7d8umyQ/
         iXktKrc+74SQp0xEvRYyJ/W2cIOD9V5rBz/6sGVd/3gNw3/pYHtgxDm72f4fqdJZ7Ga+
         jQM4z2Yek+ERyWzmmPOM2tpGgffL8zxmkZQqefYGLLf2gseVwzQHvTvrYBCRlLv08s7a
         A1W0vZILoZ3A5j3/7mpm3IgQI/iPTfvH7s0tKj8OxwXnNPjGzk2JSu4Wc7ceULlyKvWh
         RE/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:x-spam-checked-in-group
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=RzPQrM++O5r1TTet8REuLZ4sJyfYYemwleuPkY1nZ7w=;
        b=WIRt5XdGYZEO2s/Xm9pnRBT/5QF5blo6Z1KTEqjJVrmLVQOokRnNhOd4Dr2ob0ss+5
         7mWphAGHUkDWbnx69wgBT/dqSSkVt/qzel+ZZKUDQlkDem+Y/ZcuXM6gj/HpVG3/K6d9
         cQe+uSeushGixvB287YmVCDaEAo6gKJ/VuLvTEY48WPucRfF9sWS0sYOwUTP5m3Y2W9x
         6n17mSJothsjSYdrHt+u1bXRWYNLy5aq2hGCoNSmegY+Ln7GY13/epTBN+mGI4rbsxEQ
         qTRzV51s0NjwIPUEczQnZwcBxZIcfzbeDlUpE0G3UuCynu7tzi9MLfsELSp6Cw8iVGjY
         5MiA==
X-Gm-Message-State: APjAAAVbkiLWiJkAKSZkT8Bm7oRJThhiapMhOY1jxcLae8uMQaKTbShG
	Ekp8Q7U7zLPmPL2a9qqgjes=
X-Google-Smtp-Source: APXvYqzDawRQdSus0QWuVqNROjlb0pNKe4brZzr9sfe3XmRnMgyO5VDwbXDmW2cdr8922jwuq4EdgA==
X-Received: by 2002:ac8:2fc8:: with SMTP id m8mr7935869qta.269.1562960366631;
        Fri, 12 Jul 2019 12:39:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:b35c:: with SMTP id a28ls1700629qvf.9.gmail; Fri, 12 Jul
 2019 12:39:26 -0700 (PDT)
X-Received: by 2002:a0c:9230:: with SMTP id a45mr8106796qva.188.1562960366383;
        Fri, 12 Jul 2019 12:39:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1562960366; cv=none;
        d=google.com; s=arc-20160816;
        b=XxiGq1+Gt7CMLUyxoXSwcIWnVMg1VMHtD/aojnRMxyCpeCSOQYQmwPUcqfkRoO6Cxj
         YNSucUGNZTV0QBBn/l8T9IY+deosJbfJQIf2H/kXVmKp6Y8PUXzGID1fcEnyGYTvczzv
         /Y2LHxB7yYQlyPGICA/bsYEy6+7w0xDSfyAl2IkYhcpL647ma445PVCmbaXLtqLnJdEZ
         pJ2Q+oycyqKxZ76cj491pkg5JyGwwLVqrRmELNIl0mfrVoVjfm0XpFbkNcmSC+ZPmRiV
         muu7kVU7ahEu5DEf2CtOPimV1xKGgjNWcgigeTkSN+mBw9gShnbvDdTSfJkIzX43H1NT
         Jl3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:in-reply-to:date
         :dkim-signature;
        bh=KIevc60/RHyhSvw826g6ikoHIUxi0aKYGfP0yIJrsJ8=;
        b=qCkRAXr3aEPs+6LclFJklUw+S+n+yXp210zPnKhUaJfQ8AYItNahgKDTEVErl4/XP3
         9QB9q4zQKi3OoC5DPMl1d1pa5gCJzJC0iKfG1Ez9cjv4LrWRbYGp79XW8pEknz5PLDVX
         LZU9r6ELPs4z/eViYjw2PUb/FJjMI51FXm/f+zt8EhccQljKp40Foa3ZFJZwqRSb0/ZL
         gokfz6fH/X/GWxGibKeWwnZOAr6Rt1zoWcXQNLAJAl0O4lTnqxWtZ9qUTgVxRqvqRidq
         cH4+uwbjfM/TDtZBYTPKVSzcFGrpqIB8FLqNgocd7Zf41GNQMQl3bHu45EOgCyrMV+Dx
         p0sg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=p6moMXPb;
       spf=pass (google.com: domain of 37eeoxqmkeuqviimuumrk.iusirgtm-h0orz-rot03muumrkmxu0vy.ius@flex--pcc.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=37eEoXQMKEUQviimuumrk.iusirgtm-h0orz-rot03muumrkmxu0vy.ius@flex--pcc.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x749.google.com (mail-qk1-x749.google.com. [2607:f8b0:4864:20::749])
        by gmr-mx.google.com with ESMTPS id 34si509526qtz.2.2019.07.12.12.39.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Jul 2019 12:39:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of 37eeoxqmkeuqviimuumrk.iusirgtm-h0orz-rot03muumrkmxu0vy.ius@flex--pcc.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) client-ip=2607:f8b0:4864:20::749;
Received: by mail-qk1-x749.google.com with SMTP id m198so7802946qke.22
        for <clang-built-linux@googlegroups.com>; Fri, 12 Jul 2019 12:39:26 -0700 (PDT)
X-Received: by 2002:ac8:1ba9:: with SMTP id z38mr8014237qtj.176.1562960365977;
 Fri, 12 Jul 2019 12:39:25 -0700 (PDT)
Date: Fri, 12 Jul 2019 12:38:46 -0700
In-Reply-To: <20190705080231.123522-1-pcc@google.com>
Message-Id: <20190712193846.174893-1-pcc@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.22.0.510.g264f2c817a-goog
Subject: [PATCH v2] arm64: Add support for relocating the kernel with RELR relocations
From: "'Peter Collingbourne' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Mark Rutland <mark.rutland@arm.com>, Ard Biesheuvel <ard.biesheuvel@linaro.org>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>
Cc: linux-arm-kernel@lists.infradead.org, clang-built-linux@googlegroups.com, 
	Peter Collingbourne <pcc@google.com>, Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: pcc@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=p6moMXPb;       spf=pass
 (google.com: domain of 37eeoxqmkeuqviimuumrk.iusirgtm-h0orz-rot03muumrkmxu0vy.ius@flex--pcc.bounces.google.com
 designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=37eEoXQMKEUQviimuumrk.iusirgtm-h0orz-rot03muumrkmxu0vy.ius@flex--pcc.bounces.google.com;
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
Changes in v2:
- Reverted change to RELA processing
- Added more comments, as requested by Nick and Will
- Added a feature test for NM and OBJCOPY
- Made CONFIG_RELR=y the default if the tools support it

 arch/arm64/Kconfig              | 10 ++++
 arch/arm64/Makefile             |  4 ++
 arch/arm64/kernel/head.S        | 96 ++++++++++++++++++++++++++++++---
 arch/arm64/kernel/vmlinux.lds.S |  9 ++++
 init/Kconfig                    |  3 ++
 scripts/tools-support-relr.sh   | 16 ++++++
 6 files changed, 132 insertions(+), 6 deletions(-)
 create mode 100755 scripts/tools-support-relr.sh

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 7442edbcabfc3..cf3907d21d097 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -1476,6 +1476,16 @@ config RELOCATABLE
 	  relocation pass at runtime even if the kernel is loaded at the
 	  same address it was linked at.
 
+config RELR
+	bool "Use RELR relocation packing"
+	depends on RELOCATABLE && TOOLS_SUPPORT_RELR
+	default y
+	help
+	  Store the kernel's dynamic relocations in the RELR relocation packing
+	  format. Requires a compatible linker (currently only LLD supports
+	  this feature), as well as compatible NM and OBJCOPY utilities
+	  (llvm-nm and llvm-objcopy are compatible).
+
 config RANDOMIZE_BASE
 	bool "Randomize the address of the kernel image"
 	select ARM64_MODULE_PLTS if MODULES
diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
index bb1f1dbb34e8f..11f84450c7784 100644
--- a/arch/arm64/Makefile
+++ b/arch/arm64/Makefile
@@ -22,6 +22,10 @@ LDFLAGS_vmlinux		+= -shared -Bsymbolic -z notext -z norelro \
 			$(call ld-option, --no-apply-dynamic-relocs)
 endif
 
+ifeq ($(CONFIG_RELR),y)
+  LDFLAGS_vmlinux += --pack-dyn-relocs=relr
+endif
+
 ifeq ($(CONFIG_ARM64_ERRATUM_843419),y)
   ifeq ($(call ld-option, --fix-cortex-a53-843419),)
 $(warning ld does not support --fix-cortex-a53-843419; kernel may be susceptible to erratum)
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
index 99da78db04405..a148c795fde39 100644
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
2.22.0.510.g264f2c817a-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190712193846.174893-1-pcc%40google.com.
