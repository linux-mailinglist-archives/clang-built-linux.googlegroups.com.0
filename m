Return-Path: <clang-built-linux+bncBDQ2R56ST4HRBA6U2GAQMGQE7TO4XUY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3f.google.com (mail-oo1-xc3f.google.com [IPv6:2607:f8b0:4864:20::c3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 84821322439
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Feb 2021 03:35:48 +0100 (CET)
Received: by mail-oo1-xc3f.google.com with SMTP id o15sf7911963oov.22
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Feb 2021 18:35:48 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614047747; cv=pass;
        d=google.com; s=arc-20160816;
        b=WJdDuXan03PQNFqbE89OHWpjxBKKE2rW6QDJqYeugmPtl2zygF1lc+zT0FMjvR/MS+
         5No3juDmsX2esdjRhHAQE60Y6OuvKcdUvjNkEXnRdUljpHUsBy6PestEtGP02xLd4BDs
         C5UhePn19YajS4/fW1cN9jcUO091HR7DhE90oFSNlRXeyXLN2iZdRo0o9+zmfTURSn96
         mmXJGF17LQi9csVFXPRslp8DKm6B1sQIUmCSLZlOZdX3Y6H/S2m8hIJMSnv4nMrHsXcQ
         GP1viyf/hCG7V783dSjiNUbD0t274DlyPDiXOleQ0BlFGG5N9q9OSXlcz6ZqYHXR5KBh
         MJeA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:from:subject:references
         :mime-version:message-id:in-reply-to:date:sender:dkim-signature;
        bh=ZARP1/HA0D40uQ5D8fOFeO9uIjeFxzLWdDQ5eZmXlHo=;
        b=jsWdcBHPAHrHWAqkkWBzMvEU98hTl+7epf4+riIsJihI0wL+d9HEWCwd7x/FjxV20M
         /TyFRBuv7QY+vsckbs5mSg6Hbwh4XwLdRjTiiwqFGkyR2+U+Zr4cQe32ZdpxPitgaiy/
         DZhLPdV28/4Tbq/EC6Lr0YLaUmoSJdTh1s4UjClB8J66+/a47tcDmL9puoMBnbt4+xWI
         QCtPcY3Gq5TZu8abdE+TeVs5TZiPlObFgjDyq6K3F5g8TXTZ3h62AYb/Qo+3EM4Cq19w
         dV5CGUo+fkpO2Sp3/A9pGc9uuv9/YW/wYFzuMfdBIGE+SwSIbfVm4/8D3QMO28dEtZrQ
         8SuA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=lQPJcLW5;
       spf=pass (google.com: domain of 3amo0yackea8yxpcrpxvddvat.rdbrapcv-qjxai-axcjmvddvatvgdjeh.rdb@flex--jiancai.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3Amo0YAcKEa8YXPcRPXVddVaT.RdbRaPcV-QjXai-aXcjmVddVaTVgdjeh.Rdb@flex--jiancai.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ZARP1/HA0D40uQ5D8fOFeO9uIjeFxzLWdDQ5eZmXlHo=;
        b=NZ345xIMBHStVUHeC+wHy7lRSy5YVEdlwy77x+FXQkhnVOSVnp07v4r8rOjbhPF8Xe
         xeU/BXHzTRE/O0F09moJNBk7gcrZW6SZlX2ONkooiPB4qRxrEs0hC2cDe5XmmNGR2Dn/
         ew3c4q3XxwAMRFExcbfSo1CIXbb0MEPN+MB7GdB3/qsdbO8/Op5Ll8W9kBbeDL16r8Hq
         xDNZQpcWttu+nMtueGatMi3GmIV3vIiEhmZKSx6hxWCMKzhM6huT1WTyjHYtEGgvfW5d
         s+5bYrf+wEfgGczfPZ1u7coaXvevHbHgDAUi+Gf2gu6lsvKNxWV/WOAzqOVLaugq4tDs
         PSKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZARP1/HA0D40uQ5D8fOFeO9uIjeFxzLWdDQ5eZmXlHo=;
        b=qe5Qtg2sF4p5ND2s35ktW//mr1u8OZPsxWpAlJCE6/sIzqguA/Bn5G3uGnVZ/5hKtT
         ppHcbrKIeGKaGGG1J9COzQSloSKsW3Demxsk8Etozgv5jj0LTxS8gvg9UdQTyGUerZgJ
         PKBULIv30DvW8x35rDYh84q+aXq6+0QZFB8qgCTCVskokReg+JXUwC4iQGeR1+4JnRfa
         aohCXA+N0+aTPKsafnhbqJWlPXeCNwIwELWZ79uC9Jb2W+AaoRPFp0nRquF1Vh6v6ZWi
         yviLg3qheF1vfE/pj+0qnmos/ysRBFxA33A9Fd7CUxvq8R3zHaxlhC1wg8scwla/hPfu
         TXTA==
X-Gm-Message-State: AOAM530FxeUicGkyq786UMVh8OuNWjsZoVRRmhLoBUqF3n6HPBbA5WPB
	sgTglHwv5HwvTdx6fW3+x9g=
X-Google-Smtp-Source: ABdhPJwKoSZaWfkZCfWJL/Qnz1Jfx9yngxKCUiOuelxZKHAgynco2VwAQdoLSuPahVrLXWoaZbjClg==
X-Received: by 2002:a4a:dec3:: with SMTP id w3mr2549245oou.29.1614047747362;
        Mon, 22 Feb 2021 18:35:47 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:bb85:: with SMTP id h5ls872578oop.7.gmail; Mon, 22 Feb
 2021 18:35:47 -0800 (PST)
X-Received: by 2002:a4a:e9a6:: with SMTP id t6mr16867428ood.74.1614047746985;
        Mon, 22 Feb 2021 18:35:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614047746; cv=none;
        d=google.com; s=arc-20160816;
        b=xJK482Z5XhFluId4cduhh7hfyCo7QYVWDocDfsOh/PnONWSDKF12lKVgK1dEnyDOQN
         ix4DuqN7VV1LYQdTgKPftJvFxbMnO0orCuPInu3ABdUVAK584qdK22sLHOaDfO4CgvWd
         fGAoGgwaFuGiI3W17cRz+lsK7BLxrYuuQ0QzBmtnJeixBlZdluW9jMeBdiaImxB92zKl
         4IIGvzEF6QLQd/+1evRqUNedQiZ/1A0C8+xtxLjHaPFTiyYNuuJXx+JFDgoOotTdGLR5
         ZgG0ClystaHOXYoZkHrJFbycT2V/gNqvktEl3MPbLQvNImSnk90JCZGQaZ2o5LrL2fU8
         uMpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:from:subject:references:mime-version:message-id:in-reply-to:date
         :sender:dkim-signature;
        bh=PGrLnEq5sje+DbyVyjyk9DtPrIKTxkj/GFVaSNwb+20=;
        b=kFjeevzYaEz7ULEwdkN1KIYRr7Q7pn64oL/5etSrqbhs2bY3wJ3wRdZsCB7EZFC4ip
         wEWY/GoGQ2yN5jy5YfmadW/F4zdb0vZ9lJXn//Ge/cEzWykxNc6UHE5NHcCylGSUJpf2
         /OHMNH2c2ufpUQhtdK7rfLDN+E1Wc0AHb7YjGhalNF62fL5kbwV5Otk2aMS0xZeF/+e8
         fsoq9KcKt8aMmt96tmZbWhtM3se00Jhzn5Boy0tQLXQ/CfCgBeHaRIVf2O0ocVRgFq89
         xPv3ZIvecUXrLWC4WZLM6NXJQtCMhcI59JXjZF/sH/mmSLnUAEoS+ghECouRq4H8u0R9
         S/4A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=lQPJcLW5;
       spf=pass (google.com: domain of 3amo0yackea8yxpcrpxvddvat.rdbrapcv-qjxai-axcjmvddvatvgdjeh.rdb@flex--jiancai.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3Amo0YAcKEa8YXPcRPXVddVaT.RdbRaPcV-QjXai-aXcjmVddVaTVgdjeh.Rdb@flex--jiancai.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x44a.google.com (mail-pf1-x44a.google.com. [2607:f8b0:4864:20::44a])
        by gmr-mx.google.com with ESMTPS id j1si2103365oob.0.2021.02.22.18.35.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Feb 2021 18:35:46 -0800 (PST)
Received-SPF: pass (google.com: domain of 3amo0yackea8yxpcrpxvddvat.rdbrapcv-qjxai-axcjmvddvatvgdjeh.rdb@flex--jiancai.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) client-ip=2607:f8b0:4864:20::44a;
Received: by mail-pf1-x44a.google.com with SMTP id 69so8366794pfu.0
        for <clang-built-linux@googlegroups.com>; Mon, 22 Feb 2021 18:35:46 -0800 (PST)
Sender: "jiancai via sendgmr" <jiancai@jiancai.svl.corp.google.com>
X-Received: from jiancai.svl.corp.google.com ([2620:15c:2ce:0:7985:60cc:661a:9692])
 (user=jiancai job=sendgmr) by 2002:a17:90a:8e83:: with SMTP id
 f3mr27877234pjo.70.1614047746241; Mon, 22 Feb 2021 18:35:46 -0800 (PST)
Date: Mon, 22 Feb 2021 18:35:28 -0800
In-Reply-To: <20210223023125.2265845-1-jiancai@google.com>
Message-Id: <20210223023542.2287529-1-jiancai@google.com>
Mime-Version: 1.0
References: <20210223023125.2265845-1-jiancai@google.com>
X-Mailer: git-send-email 2.30.0.617.g56c4b15f3c-goog
Subject: [PATCH v5] ARM: Implement SLS mitigation
From: "'Jian Cai' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Cc: ndesaulniers@google.com, manojgupta@google.com, llozano@google.com, 
	clang-built-linux@googlegroups.com, Jian Cai <jiancai@google.com>, 
	Nathan Chancellor <nathan@kernel.org>, David Laight <David.Laight@aculab.com>, 
	Will Deacon <will@kernel.org>, Russell King <rmk+kernel@armlinux.org.uk>, 
	Russell King <linux@armlinux.org.uk>, Catalin Marinas <catalin.marinas@arm.com>, 
	James Morris <jmorris@namei.org>, "Serge E. Hallyn" <serge@hallyn.com>, Arnd Bergmann <arnd@arndb.de>, 
	Masahiro Yamada <masahiroy@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, Marc Zyngier <maz@kernel.org>, 
	Kees Cook <keescook@chromium.org>, 
	"=?UTF-8?q?Andreas=20F=C3=A4rber?=" <afaerber@suse.de>, Ard Biesheuvel <ardb@kernel.org>, Ingo Molnar <mingo@kernel.org>, 
	Andrew Morton <akpm@linux-foundation.org>, Mike Rapoport <rppt@kernel.org>, 
	Mark Rutland <mark.rutland@arm.com>, David Brazdil <dbrazdil@google.com>, 
	James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-security-module@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jiancai@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=lQPJcLW5;       spf=pass
 (google.com: domain of 3amo0yackea8yxpcrpxvddvat.rdbrapcv-qjxai-axcjmvddvatvgdjeh.rdb@flex--jiancai.bounces.google.com
 designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3Amo0YAcKEa8YXPcRPXVddVaT.RdbRaPcV-QjXai-aXcjmVddVaTVgdjeh.Rdb@flex--jiancai.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Jian Cai <jiancai@google.com>
Reply-To: Jian Cai <jiancai@google.com>
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

This patch adds CONFIG_HARDEN_SLS_ALL that can be used to turn on
-mharden-sls=all, which mitigates the straight-line speculation
vulnerability, speculative execution of the instruction following some
unconditional jumps. Notice -mharden-sls= has other options as below,
and this config turns on the strongest option.

all: enable all mitigations against Straight Line Speculation that are implemented.
none: disable all mitigations against Straight Line Speculation.
retbr: enable the mitigation against Straight Line Speculation for RET and BR instructions.
blr: enable the mitigation against Straight Line Speculation for BLR instructions.

Links:
https://reviews.llvm.org/D93221
https://reviews.llvm.org/D81404
https://developer.arm.com/support/arm-security-updates/speculative-processor-vulnerability/downloads/straight-line-speculation
https://developer.arm.com/support/arm-security-updates/speculative-processor-vulnerability/frequently-asked-questions#SLS2

Suggested-by: Manoj Gupta <manojgupta@google.com>
Suggested-by: Nick Desaulniers <ndesaulniers@google.com>
Suggested-by: Nathan Chancellor <nathan@kernel.org>
Suggested-by: David Laight <David.Laight@aculab.com>
Suggested-by: Will Deacon <will@kernel.org>
Suggested-by: Russell King <rmk+kernel@armlinux.org.uk>
Reviewed-by: Nathan Chancellor <nathan@kernel.org>
Signed-off-by: Jian Cai <jiancai@google.com>
---
Changes v4->v5:
  Removed "default n" and made the description target indepdent in
  Kconfig.hardening. Please ignore my last email, it did not include the
  changes.

 arch/arm/Makefile                  | 4 ++++
 arch/arm/include/asm/vmlinux.lds.h | 4 ++++
 arch/arm/kernel/vmlinux.lds.S      | 1 +
 arch/arm64/Makefile                | 4 ++++
 arch/arm64/kernel/vmlinux.lds.S    | 5 +++++
 security/Kconfig.hardening         | 8 ++++++++
 6 files changed, 26 insertions(+)

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 4aaec9599e8a..11d89ef32da9 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -48,6 +48,10 @@ CHECKFLAGS	+= -D__ARMEL__
 KBUILD_LDFLAGS	+= -EL
 endif
 
+ifeq ($(CONFIG_HARDEN_SLS_ALL), y)
+KBUILD_CFLAGS  += -mharden-sls=all
+endif
+
 #
 # The Scalar Replacement of Aggregates (SRA) optimization pass in GCC 4.9 and
 # later may result in code being generated that handles signed short and signed
diff --git a/arch/arm/include/asm/vmlinux.lds.h b/arch/arm/include/asm/vmlinux.lds.h
index 4a91428c324d..c7f9717511ca 100644
--- a/arch/arm/include/asm/vmlinux.lds.h
+++ b/arch/arm/include/asm/vmlinux.lds.h
@@ -145,3 +145,7 @@
 		__edtcm_data = .;					\
 	}								\
 	. = __dtcm_start + SIZEOF(.data_dtcm);
+
+#define SLS_TEXT							\
+		ALIGN_FUNCTION();					\
+		*(.text.__llvm_slsblr_thunk_*)
diff --git a/arch/arm/kernel/vmlinux.lds.S b/arch/arm/kernel/vmlinux.lds.S
index f7f4620d59c3..e71f2bc97bae 100644
--- a/arch/arm/kernel/vmlinux.lds.S
+++ b/arch/arm/kernel/vmlinux.lds.S
@@ -63,6 +63,7 @@ SECTIONS
 	.text : {			/* Real text segment		*/
 		_stext = .;		/* Text and read-only data	*/
 		ARM_TEXT
+		SLS_TEXT
 	}
 
 #ifdef CONFIG_DEBUG_ALIGN_RODATA
diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
index 90309208bb28..ca7299b356a9 100644
--- a/arch/arm64/Makefile
+++ b/arch/arm64/Makefile
@@ -34,6 +34,10 @@ $(warning LSE atomics not supported by binutils)
   endif
 endif
 
+ifeq ($(CONFIG_HARDEN_SLS_ALL), y)
+KBUILD_CFLAGS  += -mharden-sls=all
+endif
+
 cc_has_k_constraint := $(call try-run,echo				\
 	'int main(void) {						\
 		asm volatile("and w0, w0, %w0" :: "K" (4294967295));	\
diff --git a/arch/arm64/kernel/vmlinux.lds.S b/arch/arm64/kernel/vmlinux.lds.S
index 4c0b0c89ad59..f8912e42ffcd 100644
--- a/arch/arm64/kernel/vmlinux.lds.S
+++ b/arch/arm64/kernel/vmlinux.lds.S
@@ -93,6 +93,10 @@ jiffies = jiffies_64;
 #define TRAMP_TEXT
 #endif
 
+#define SLS_TEXT					\
+	ALIGN_FUNCTION();				\
+	*(.text.__llvm_slsblr_thunk_*)
+
 /*
  * The size of the PE/COFF section that covers the kernel image, which
  * runs from _stext to _edata, must be a round multiple of the PE/COFF
@@ -144,6 +148,7 @@ SECTIONS
 			HIBERNATE_TEXT
 			TRAMP_TEXT
 			*(.fixup)
+			SLS_TEXT
 			*(.gnu.warning)
 		. = ALIGN(16);
 		*(.got)			/* Global offset table		*/
diff --git a/security/Kconfig.hardening b/security/Kconfig.hardening
index 269967c4fc1b..db76ad732c14 100644
--- a/security/Kconfig.hardening
+++ b/security/Kconfig.hardening
@@ -121,6 +121,14 @@ choice
 
 endchoice
 
+config HARDEN_SLS_ALL
+	bool "enable SLS vulnerability hardening"
+	depends on $(cc-option,-mharden-sls=all)
+	help
+	  Enables straight-line speculation vulnerability hardening. This inserts
+	  speculation barrier instruction sequences after certain unconditional jumps
+	  to prevent speculative execution past those barriers.
+
 config GCC_PLUGIN_STRUCTLEAK_VERBOSE
 	bool "Report forcefully initialized variables"
 	depends on GCC_PLUGIN_STRUCTLEAK
-- 
2.30.0.617.g56c4b15f3c-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210223023542.2287529-1-jiancai%40google.com.
