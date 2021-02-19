Return-Path: <clang-built-linux+bncBDQ2R56ST4HRBRUKYGAQMGQEWUU6YQA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33b.google.com (mail-ot1-x33b.google.com [IPv6:2607:f8b0:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EA7D32018A
	for <lists+clang-built-linux@lfdr.de>; Sat, 20 Feb 2021 00:10:00 +0100 (CET)
Received: by mail-ot1-x33b.google.com with SMTP id x27sf2810566otr.7
        for <lists+clang-built-linux@lfdr.de>; Fri, 19 Feb 2021 15:10:00 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1613776199; cv=pass;
        d=google.com; s=arc-20160816;
        b=F0NY1q/T3+M4QBIr5NQ1ixq0J3czQ5MbglT+2hAGF2nacgojTqwIq6hTWbejjgYWVw
         FDuEHawaMegHmvbHC6xdyrjEwt85zw+4p3uQ8vEWPLT8JeiMOH+w6qOfy6ZXlLGoN4Z4
         uG4RXEPVU7E1mpX5Q0EpVwf+bSi3NOjiK8RUX85KpH1hiPBG1r/5FNjTUvk5MApUn8aT
         ETXhjTwWDupllE2waEDMcUaYDQ+h7Rkjp/MQhlD6suII6OkT6CDbzKj5OXdw7RcY/XBw
         QZjj3LHam319Ztpj4lxgL591RoGodppjrwTDm62aTQntg7qh2j1bjgETddlXsL4dcYhs
         7+Jw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:from:subject:references
         :mime-version:message-id:in-reply-to:date:sender:dkim-signature;
        bh=iQvPW//muTQMq5RccTJ5s6bUFrhNH3j+810CUjdiHcs=;
        b=VDYxpvkHBiWfgNZhCXhA+qhFExAnUS/Do0wkEuReC2Ps4px5dmNN9SLIEek3SLoWw8
         wFhd/0FXdnFakVpukuItic35wht820owdvcfBT1JpRt+7lLFdC2nJWHfPnR1N2+9s60L
         uIf3m1JICs3mtc/omhmISIrJm5kJbfhjEsmRDNu4Q3UF4ZulbEQwfOHj3MZIQS22m7m/
         T+G0Go3KoqKk89BmD+622878p/Mi7wd8oeJ9zt6IGr66Prwmzg4P0UD+E5THfnK1C83w
         Yg6aW3gJxBlHY0abYg4X7xAoYb+q4RWVZWzDfsn6sFxi4ueFGEWQeFhdSm6xCK8sq2SB
         2Xbg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=PeNarQe7;
       spf=pass (google.com: domain of 3rkuwyackezkcb3g53b9hh9e7.5hf5e3g9-4nbem-ebgnq9hh9e79khnil.5hf@flex--jiancai.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3RkUwYAcKEZkCB3G53B9HH9E7.5HF5E3G9-4NBEM-EBGNQ9HH9E79KHNIL.5HF@flex--jiancai.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=iQvPW//muTQMq5RccTJ5s6bUFrhNH3j+810CUjdiHcs=;
        b=Vpv1TBZEXcpDaToCJAVjoprvSNY7BFY/HmdrhFa4RxC/QpqJriiwHGifmmrtxp5N/k
         Bjq8F1eGOi5+ZKtEezPC+RC/nu2fr6g+RnLlKm1M4w/2GCI/J7I24XeYDbRBNLo9mtyP
         xkESwfCGarCghw0qgpPJPi0Ic0lJ9bF0MZRTk0QjDaYFID7l3ju6pPAyxTm3p4ZkHFOq
         k91IzVK4auy+diClDMrEPxOCOnvqtG5xm3xJlHUKo3b+tTHRZcBaZPq1aDs8jvShEk0l
         usVsEhwiDg7opqyKWHSDveus1d1f5fHiWFgqpSbw4JG/Omifb1yVnWqcUVaRASzvYduX
         FkuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iQvPW//muTQMq5RccTJ5s6bUFrhNH3j+810CUjdiHcs=;
        b=oKU0576XBkhuYBNIDjYWR77Nt5qfmnlligeDAZ1AlPhne1coVpX3BOTWqT0x8yqVQL
         H0GySm9jXT2VB7rKfjP3/m85e0omQBtC6kgbvewN4IArnFKEvheYhLNCzfrrbycLiuAD
         KU+bunKwdZjLro4zZlfoVypRTnr12pL1kwkloCQGKNzDaWbT6hRLetgsgmTlkyCpxaHz
         wB14NKqbDXOCPJv2FKdpcmqWDH0TO+VJxjNSHSDyUGU8E1K6KBhwSXwBZ6mMzk6Nnocl
         9GVNkTu5bHBe7iVzhSzgH5KG1YSjjyoMGhgx9QUHrOxzneij8dwcTbZYnT6MUF7ip/0Q
         VUAA==
X-Gm-Message-State: AOAM531NFmnO52Tc1/dxduYonxSzCvyY2mOu18R6cn+hJKpHT5JOYH/f
	AqitwR5OHkBQVy4cPqPlyUs=
X-Google-Smtp-Source: ABdhPJzuWmO9UStuGc40R5gYVpw7NuJBpwX7OUbU+PXEDIokIUKUxoQPsDlf6+F3n7btLUksxUrxRw==
X-Received: by 2002:a9d:3e41:: with SMTP id h1mr8677442otg.323.1613776198892;
        Fri, 19 Feb 2021 15:09:58 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:ed56:: with SMTP id l83ls275001oih.11.gmail; Fri, 19 Feb
 2021 15:09:58 -0800 (PST)
X-Received: by 2002:a05:6808:9b7:: with SMTP id e23mr8072471oig.151.1613776198533;
        Fri, 19 Feb 2021 15:09:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1613776198; cv=none;
        d=google.com; s=arc-20160816;
        b=FCpOAJnpYaRim/7vHg/xSmUE9tgwT3ggh14ZFGSmIciNrjEkjwA7BlTpHiCfHOt+L1
         Ihs3vWFXA4GQBuUIVf31jPALyx4rQTx/RKO6QSjQUjQIp18xYj17dBovwi68SUYkIcJ9
         BM5cngRM+YShTJjx3vx6ldc6q1xeqMOXZkqCZdzJ6z/QqfxrLQwzWVzW/Z8Z9E6gZMN8
         IT7BFKv1o0BYu0dt79j6q/h9QuZcmiMu/LWy83nloaD3KLdHtGSY9WHvgqv/IDgCebZd
         mV53ZMmTvKzDEqS+rbqGem5/WTvF5YcQtlcjJzKtHsza6sZwbTLKP7IKQ4+2yi13p1g8
         eZMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:from:subject:references:mime-version:message-id:in-reply-to:date
         :sender:dkim-signature;
        bh=vrPuPHAH+xMVowYwEx41742LbyJOqhVnyw71QmqUBj8=;
        b=sWrrLT6p93g1KnvvOde+17q/eqYd8+HYZ56XBK/vJU6QK1Dip6KUi8CIlvxGJztFA6
         ECU4cuBX2GUcmqTRvuBMNw8FjAwHA4no/hG+rCENR5TlhpzPa4FuvdzhqwRuJa8sF3RV
         dQtInW6wbnETHg4G0GVCsRXi4h+evZhhZkhIteDcaqkND0XSS0lWNjUEcHrgabZsae4Q
         GgIadW7YgDrDzhvBvv/eYFjs/ghAFxNhPl/19kpqdSH27IUFgH5iIK5VPlXnjG1pcozT
         xvzxhOe1t9QzLsp7kzwBgI962Q1VP5MvlAvuKkw2CpRr9WNgnjopjpIkHMJW9gAiKUl0
         iLHg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=PeNarQe7;
       spf=pass (google.com: domain of 3rkuwyackezkcb3g53b9hh9e7.5hf5e3g9-4nbem-ebgnq9hh9e79khnil.5hf@flex--jiancai.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3RkUwYAcKEZkCB3G53B9HH9E7.5HF5E3G9-4NBEM-EBGNQ9HH9E79KHNIL.5HF@flex--jiancai.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id j1si1260524oob.0.2021.02.19.15.09.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Feb 2021 15:09:58 -0800 (PST)
Received-SPF: pass (google.com: domain of 3rkuwyackezkcb3g53b9hh9e7.5hf5e3g9-4nbem-ebgnq9hh9e79khnil.5hf@flex--jiancai.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id v196so8468810ybv.3
        for <clang-built-linux@googlegroups.com>; Fri, 19 Feb 2021 15:09:58 -0800 (PST)
Sender: "jiancai via sendgmr" <jiancai@jiancai.svl.corp.google.com>
X-Received: from jiancai.svl.corp.google.com ([2620:15c:2ce:0:6578:8d7f:50d0:55c8])
 (user=jiancai job=sendgmr) by 2002:a25:1fc5:: with SMTP id
 f188mr17059740ybf.389.1613776198078; Fri, 19 Feb 2021 15:09:58 -0800 (PST)
Date: Fri, 19 Feb 2021 15:08:13 -0800
In-Reply-To: <20210219201852.3213914-1-jiancai@google.com>
Message-Id: <20210219230841.875875-1-jiancai@google.com>
Mime-Version: 1.0
References: <20210219201852.3213914-1-jiancai@google.com>
X-Mailer: git-send-email 2.30.0.617.g56c4b15f3c-goog
Subject: [PATCH v4] ARM: Implement SLS mitigation
From: "'Jian Cai' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Cc: ndesaulniers@google.com, manojgupta@google.com, llozano@google.com, 
	clang-built-linux@googlegroups.com, Jian Cai <jiancai@google.com>, 
	Nathan Chancellor <nathan@kernel.org>, David Laight <David.Laight@aculab.com>, 
	Will Deacon <will@kernel.org>, Russell King <linux@armlinux.org.uk>, 
	Catalin Marinas <catalin.marinas@arm.com>, James Morris <jmorris@namei.org>, 
	"Serge E. Hallyn" <serge@hallyn.com>, Arnd Bergmann <arnd@arndb.de>, Masahiro Yamada <masahiroy@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Ard Biesheuvel <ardb@kernel.org>, 
	"=?UTF-8?q?Andreas=20F=C3=A4rber?=" <afaerber@suse.de>, Ingo Molnar <mingo@kernel.org>, 
	Linus Walleij <linus.walleij@linaro.org>, Marc Zyngier <maz@kernel.org>, 
	Andrew Morton <akpm@linux-foundation.org>, Mike Rapoport <rppt@kernel.org>, 
	Mark Rutland <mark.rutland@arm.com>, David Brazdil <dbrazdil@google.com>, 
	James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-security-module@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jiancai@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=PeNarQe7;       spf=pass
 (google.com: domain of 3rkuwyackezkcb3g53b9hh9e7.5hf5e3g9-4nbem-ebgnq9hh9e79khnil.5hf@flex--jiancai.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3RkUwYAcKEZkCB3G53B9HH9E7.5HF5E3G9-4NBEM-EBGNQ9HH9E79KHNIL.5HF@flex--jiancai.bounces.google.com;
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
Suggested-by: Nathan Chancellor  <nathan@kernel.org>
Suggested-by: David Laight <David.Laight@aculab.com>
Suggested-by: Will Deacon <will@kernel.org>
Reviewed-by: Nathan Chancellor <nathan@kernel.org>
Signed-off-by: Jian Cai <jiancai@google.com>
---

Changes v3 -> v4:
  Address Nathan's comment and replace def_bool with depends on in
  HARDEN_SLS_ALL.

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210219230841.875875-1-jiancai%40google.com.
