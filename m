Return-Path: <clang-built-linux+bncBDQ2R56ST4HRBEOS2GAQMGQEOBICOTQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd37.google.com (mail-io1-xd37.google.com [IPv6:2607:f8b0:4864:20::d37])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C6A7322426
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Feb 2021 03:31:46 +0100 (CET)
Received: by mail-io1-xd37.google.com with SMTP id w26sf4750807iow.21
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Feb 2021 18:31:46 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614047505; cv=pass;
        d=google.com; s=arc-20160816;
        b=UUUKdbyDe72NevIwrz3X0KgcFlS4Mwjb8HKftnYPtVYovcbXu+6jLOrAHSjJEUGhmj
         iIZWfxRULwM0DgjBU5kggYTgC5XV5YY4GCi22A4/dRRZZWTWdAXXUe62V2yizRFHUgOp
         FBzkOBGNrCesE619YM1sZ1Pdy4qXTsBHdIXo49idCcmFApUt+olfaksffT5jaCRQVZ45
         uRGqBHTPOdQXaP2ez43ADkkxeS5a7bU9DE6F8xK/py4N4gI6/0s0NuOZTWwO2/S1YhrF
         NSGS3oHPPrXt9q+VU5l7Zp68TtMOu10o1wd3mLK0k+SNlAJkJ9QQqa+3Qb9BfzSCxAh0
         FEXw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:from:subject:references
         :mime-version:message-id:in-reply-to:date:sender:dkim-signature;
        bh=aU+vv9bS1zzSAwk6L1lYkKYiVmv/snfcpKSOJz0tyVU=;
        b=eT2sHRiLKYuo1wlmY200F7XcIMDe9jBRO8GVYgFSQYUM9JpFBb+m2o6ZHxB5m2n+pQ
         3HlrgdAw28THsBZkPqvqaLaBTVKLGXMotH9y8jGMFOwR9RG9QOWggOZTSeKbwlntmD8q
         dlRsJMyQjZH+ydACXc+WitrPblEXRsd5LqngIOnYyXhVLt/hRKD1VldSco9tRDHQlZGs
         XdVMOnN+KLSFjA0IF8bzjDlNqbp9151Q0k1dO2GPixptKXvTSkKiTwOA7EnmVG6/8X/Q
         YCBEGqmrsf/DdUOFqRfiWC89xgqJaL52pkA8PxDqFHOnDq5Ml7TMLwpa0s8y+PmNLdhK
         YsKw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=DVElnxie;
       spf=pass (google.com: domain of 3egk0yackebskjbodbjhpphmf.dpndmboh-cvjmu-mjovyhpphmfhspvqt.dpn@flex--jiancai.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3EGk0YAcKEbskjbodbjhpphmf.dpndmboh-cvjmu-mjovyhpphmfhspvqt.dpn@flex--jiancai.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=aU+vv9bS1zzSAwk6L1lYkKYiVmv/snfcpKSOJz0tyVU=;
        b=YD6PO0qcIPEJHcFW6eupAgCGH8oDpOxcRC5yULmNqwt40cW3hUFqHrAs1wqWVHdQfz
         ElMIEBrM5aefSi4x+EiA3D3ypXBdxgNfF2pI3lAzRz0jsmKfSCz/Qpip7JfjAle6FTX0
         QWjOpL/v6jueqIs/3hD5Ocwlui/K/+z8Sivw5EiQirrg7S12X5FJja6NdFJxYQD2T4W3
         wYZ77Ec7+xeNCg6cDFq6uX4qDfXdWkjMjePHl2e0Qz2qUeELvaWkj9PqFZsPQVOadOFL
         FClxo3R7nRO18Ak9jMbdVnICqIaBXfNfyRpRmV0djAjXXNcwFJTjtiarAxS/avvOaYK5
         LY3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aU+vv9bS1zzSAwk6L1lYkKYiVmv/snfcpKSOJz0tyVU=;
        b=IKtH/TT8GKu3NboAcWYWSZu7rXpq0TnlPqotTNVPNtq8oi7/ZJSmcWy8lK19IUnq0e
         yqG9IttKdE7ZOyElcHKarvAmW/vvUnBn+rktRbb/29b5ISaMNtH6rbiiSl40iaIsUZKT
         HtR2Lj5am2XlMDmXkdwnqDDLnb+skF2gM/wD+QIMiSiGxVu9SHUmoUSBJGaC1jQY1uyZ
         oDO2MT6IAOkQMquGiNynArwE4Wa6+ychO8tpSvBE2/D/VJ+jrUQYZyJ8Mrd3scg7l51e
         6+1tjO9F+YrbhM/yKFGb9Zf+2QXO09ZPMWpsxhMLIpQ+biNwUe3VNpt8e9+T5fTzlghG
         SjwQ==
X-Gm-Message-State: AOAM532eNgCNs0HCvDZWQQN9ZTd29FVJXgdxWotzBHfkvebiLFwO9ZyF
	ACem+GT9TXN8WA1WLtgMwHE=
X-Google-Smtp-Source: ABdhPJw1cGNafi1PbGJ2iqCvp5GrDDCYmTenvsBo8UgM/AcQH/UDcA1yG73d7TzBaZigw+peQ3wc8w==
X-Received: by 2002:a92:c105:: with SMTP id p5mr2252440ile.266.1614047505179;
        Mon, 22 Feb 2021 18:31:45 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6602:88:: with SMTP id h8ls1097292iob.3.gmail; Mon, 22
 Feb 2021 18:31:44 -0800 (PST)
X-Received: by 2002:a05:6602:2d0d:: with SMTP id c13mr18144919iow.51.1614047504724;
        Mon, 22 Feb 2021 18:31:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614047504; cv=none;
        d=google.com; s=arc-20160816;
        b=akTVripjfFio8RKqyDTEV30+FHil3HlsumJ7SfpLfhUkKLEwmdM/azbu6HEGZrNHk+
         u47eYeBpT0F0Z1U7u9qQL9VcfNxsBkHcX7zOzuTcDbjgPphPuquqljtRiU+G2XNfM3DX
         HmiVvjtnudXw699faCT0RvpcTp8OXjwriXfk43oEAtE8zyRQtOJ++bezLNg2rA887e46
         vEeW6sta64h9CLl20d07HBaC9NVc7cV+QjfXRHwWhtFRUxW4lWCz0YDcwQkEecmu1Kl2
         o2p3mJfZlEoB4tIjAEKoa7XDOcHCDlcS/dRiR0SCfzzqqxzhuXrwVDmjk8FUDWqr08rx
         8saw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:from:subject:references:mime-version:message-id:in-reply-to:date
         :sender:dkim-signature;
        bh=Q1j93qwuy/J16VYdZY9OwcszBQob8ihsmTijrh0rYD4=;
        b=YtChlP4tElnyvyUTdEqnzHjLm+f23ZzR5b9tfUWIXpIRViuv3kRFkd2Ao43y5QwqBo
         EbvOvwzXvTISF3fJ3Zyq6dJdEs0n1kjgPJMYeWw9QbDqca4vt2ixGE690uHXruXs1xdB
         JHF+AcOMVQ2E2KKg4mM6rvKO/X85SRa5c+9r7yAtkftTTlHSLoM9xLcozxpodVDEAgzG
         n6vbAqiwESqVA2qphUZoxhAIgFIaroccP8cdNuQZ/giEz9bwE6IXQnrFnril8DzRg6uE
         pa36iHkiajOyxJHQjo9u7EYdhoIjEyX2eGNfY+1EC+4wz1hu8AoGHaREnjZp7OT1m097
         ZYTA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=DVElnxie;
       spf=pass (google.com: domain of 3egk0yackebskjbodbjhpphmf.dpndmboh-cvjmu-mjovyhpphmfhspvqt.dpn@flex--jiancai.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3EGk0YAcKEbskjbodbjhpphmf.dpndmboh-cvjmu-mjovyhpphmfhspvqt.dpn@flex--jiancai.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id o7si844627ilu.0.2021.02.22.18.31.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Feb 2021 18:31:44 -0800 (PST)
Received-SPF: pass (google.com: domain of 3egk0yackebskjbodbjhpphmf.dpndmboh-cvjmu-mjovyhpphmfhspvqt.dpn@flex--jiancai.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id u1so18928811ybu.14
        for <clang-built-linux@googlegroups.com>; Mon, 22 Feb 2021 18:31:44 -0800 (PST)
Sender: "jiancai via sendgmr" <jiancai@jiancai.svl.corp.google.com>
X-Received: from jiancai.svl.corp.google.com ([2620:15c:2ce:0:7985:60cc:661a:9692])
 (user=jiancai job=sendgmr) by 2002:a25:da0e:: with SMTP id
 n14mr37389154ybf.356.1614047504192; Mon, 22 Feb 2021 18:31:44 -0800 (PST)
Date: Mon, 22 Feb 2021 18:31:07 -0800
In-Reply-To: <20210219230841.875875-1-jiancai@google.com>
Message-Id: <20210223023125.2265845-1-jiancai@google.com>
Mime-Version: 1.0
References: <20210219230841.875875-1-jiancai@google.com>
X-Mailer: git-send-email 2.30.0.617.g56c4b15f3c-goog
Subject: [PATCH v5] ARM: Implement SLS mitigation
From: "'Jian Cai' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Cc: ndesaulniers@google.com, manojgupta@google.com, llozano@google.com, 
	clang-built-linux@googlegroups.com, Jian Cai <jiancai@google.com>, 
	Nathan Chancellor <nathan@kernel.org>, David Laight <David.Laight@aculab.com>, 
	Will Deacon <will@kernel.org>, Russell King <rmk+kernel@armlinux.org.uk>, 
	Russell King <linux@armlinux.org.uk>, Catalin Marinas <catalin.marinas@arm.com>, 
	James Morris <jmorris@namei.org>, "Serge E. Hallyn" <serge@hallyn.com>, Arnd Bergmann <arnd@arndb.de>, 
	Masahiro Yamada <masahiroy@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, Ard Biesheuvel <ardb@kernel.org>, 
	Kees Cook <keescook@chromium.org>, 
	"=?UTF-8?q?Andreas=20F=C3=A4rber?=" <afaerber@suse.de>, Ingo Molnar <mingo@kernel.org>, Fangrui Song <maskray@google.com>, 
	Marc Zyngier <maz@kernel.org>, Mike Rapoport <rppt@kernel.org>, 
	Andrew Morton <akpm@linux-foundation.org>, Mark Rutland <mark.rutland@arm.com>, 
	David Brazdil <dbrazdil@google.com>, James Morse <james.morse@arm.com>, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-security-module@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jiancai@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=DVElnxie;       spf=pass
 (google.com: domain of 3egk0yackebskjbodbjhpphmf.dpndmboh-cvjmu-mjovyhpphmfhspvqt.dpn@flex--jiancai.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3EGk0YAcKEbskjbodbjhpphmf.dpndmboh-cvjmu-mjovyhpphmfhspvqt.dpn@flex--jiancai.bounces.google.com;
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
  Kconfig.hardening.


 arch/arm/Makefile                  |  4 ++++
 arch/arm/include/asm/vmlinux.lds.h |  4 ++++
 arch/arm/kernel/vmlinux.lds.S      |  1 +
 arch/arm64/Makefile                |  4 ++++
 arch/arm64/kernel/vmlinux.lds.S    |  5 +++++
 security/Kconfig.hardening         | 10 ++++++++++
 6 files changed, 28 insertions(+)

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
index 269967c4fc1b..146b75a79d9e 100644
--- a/security/Kconfig.hardening
+++ b/security/Kconfig.hardening
@@ -121,6 +121,16 @@ choice
 
 endchoice
 
+config HARDEN_SLS_ALL
+	bool "enable SLS vulnerability hardening"
+	default n
+	depends on $(cc-option,-mharden-sls=all)
+	help
+	  Enables straight-line speculation vulnerability hardening on ARM and ARM64
+	  architectures. It inserts speculation barrier sequences (SB or DSB+ISB
+	  depending on the target architecture) after RET and BR, and replacing
+	  BLR with BL+BR sequence.
+
 config GCC_PLUGIN_STRUCTLEAK_VERBOSE
 	bool "Report forcefully initialized variables"
 	depends on GCC_PLUGIN_STRUCTLEAK
-- 
2.30.0.617.g56c4b15f3c-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210223023125.2265845-1-jiancai%40google.com.
