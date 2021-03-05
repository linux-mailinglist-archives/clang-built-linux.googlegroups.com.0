Return-Path: <clang-built-linux+bncBDQ2R56ST4HRBC4CQ2BAMGQENE7YDQI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa37.google.com (mail-vk1-xa37.google.com [IPv6:2607:f8b0:4864:20::a37])
	by mail.lfdr.de (Postfix) with ESMTPS id 187C132DEA5
	for <lists+clang-built-linux@lfdr.de>; Fri,  5 Mar 2021 01:53:33 +0100 (CET)
Received: by mail-vk1-xa37.google.com with SMTP id x190sf89822vkd.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Mar 2021 16:53:33 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614905612; cv=pass;
        d=google.com; s=arc-20160816;
        b=WnZ1keEPIhbTGYe9730eKDSopbnCs1d9fLDe+Yd+/rZeHr20uJs9Slg+vPYPsp5fPI
         7dOGnqGXfPPY0yM1QguTeQm06NzRjbfuzZvJd0WD30whvqAaIVaGMBPH9F8M3fPYzOwJ
         hfKsl0LxbY9qn3mj/TRxlOHupNkY5uJqFNu8hXNUUZOOg1iPVUAc5OdTkfu9W6hevd3/
         HeAQ1aLpcsT+A9/oaoGK7V/NSilNpG0ZmApWzYFCYMjhfxejZKMul54j2r2aN9BKWvno
         gIyifUUURanoqUexJL2Q60YlJZxrq3JcIqtzepSAMt9RDuS96QopSMZN1rEpIWHhIVYa
         T4gg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:from:subject:references
         :mime-version:message-id:in-reply-to:date:sender:dkim-signature;
        bh=E9NM2MEPt3uc2YGXjIaHHoRB4Wd/h1klFvN34Onm9+Y=;
        b=07HLteDOVCw9RK5sFfo97yWseTOoT4fTgbDwjDgPbSRpF6Gaa8OMU2WeCcG5qn/WVB
         wSUEeW1YSo/g8gCTt15gdEa3SO2syfck1qy4uq3kNo6QwOomYLn6uBoF+h18XwL8ZUkd
         3LEsCszCcNLZskbT2VzC/RIQ7WFUpdEWBMyZYf55SmshDMn6WfsBB+z02Ld2Hnk32AYv
         AJ89ZCU6+frZ1cwVGwsm2n5rXGNsf1dlB4MT58VOw6iTa7SgUGCOkNoSXKXKdP9hMQhj
         0GWbhwjTzuXvgIIl75LIhsLu5NvqiUtgOju4W+vtFGMA/5BY05ESykzjBe9Djuve8S+w
         //UQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=lUvKcrAr;
       spf=pass (google.com: domain of 3cofbyackersa91e3197ff7c5.3fd3c1e7-2l9ck-c9elo7ff7c57iflgj.3fd@flex--jiancai.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3CoFBYAcKERsA91E3197FF7C5.3FD3C1E7-2L9CK-C9ELO7FF7C57IFLGJ.3FD@flex--jiancai.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=E9NM2MEPt3uc2YGXjIaHHoRB4Wd/h1klFvN34Onm9+Y=;
        b=sHMvl6RYkROtshYeF/8v0ViXNN4X7NstMJ4fwfwbek3//LTXj+SWYtrl/kWCNe7hrR
         zBjFQ9Qo7xIZ7XD6xRTx6whRPbitMvn4Vfu5FyA0rZK/ED3llCwNltNQTYcZYW+0pJJk
         yLYQR6PJERThnhOIgV3+HwZ/dW1tJVaXv7zxTQBNVX2xXiLQVbYzoQrke8bpMf/4Xg6P
         jrj4c5RFobe+YLnNFhoxOdE9xl09B0zP5QftaM33bsI2pjl+LVbvknrqfmmJEqQXTxuA
         QZZVDqeXIWi6gncHFpP+Uc0nbJD8G6Hj31AN9GvRnSaXdBhhl+n9qCukPIi1/oGAnfPQ
         E1KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=E9NM2MEPt3uc2YGXjIaHHoRB4Wd/h1klFvN34Onm9+Y=;
        b=N4JtAQrvv0fqqkepzmLCFloVmeXt2B/qf4dv04GG/uxrpbUKCSr3uffdX1Nownko6M
         4ioReIPjfyLsPNJ5NFNoPBjwjvMZ9wSfK69hWeq3mqJOyKwlnpcPkBWt8E4ZEDhDL63C
         AUQScAqqp7KQe6XK/+rdcFzryOJytbVqNUhldwrPobUpfpW0EEzU2TwMs/Y2hH5cW4yb
         QocaecfrhFlKB2wMh9mYluVFEJ1k7c3UxetzpA1FTTzqmcnY39c+RQesNei3Ewx/Pd8s
         SczSguLyzAg9ScuzYo9MK7R59eYAatb2FHCByfuDzHs4DLKZtju+2bKGN95UYKtiRw3Z
         pDIQ==
X-Gm-Message-State: AOAM530n0N6Nb5Uw8rTg5y1bsAz6n6WQ1Ob8a5s5yowLcOL9L+7QfJ+/
	JDgDvzs07Edco3hsEzPRqYw=
X-Google-Smtp-Source: ABdhPJyrDe1oZ72/kh0hUBWb6YOHSUDJjWA/Q+cDdVzIeXIXGaoHOjtZ72VGCysepYuBVYyDD8Zs+A==
X-Received: by 2002:a05:6102:94b:: with SMTP id a11mr4762795vsi.53.1614905612005;
        Thu, 04 Mar 2021 16:53:32 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:5f16:: with SMTP id t22ls432882vkb.3.gmail; Thu, 04 Mar
 2021 16:53:31 -0800 (PST)
X-Received: by 2002:ac5:ccaf:: with SMTP id p15mr5101366vkm.18.1614905611485;
        Thu, 04 Mar 2021 16:53:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614905611; cv=none;
        d=google.com; s=arc-20160816;
        b=dj5sDc3aIjY/UZtqStFD1aH3C5l/JzmdAN9m5DDn9P61zg6wVJ/keSKlTzc0ojkTWn
         rWq+zx1sppSfZPwdqD0K9KhCqf6L5/9BNDKsBbRK5RjUSotYUp+U78VVoC/VwgQjpCgE
         ocqASYG/Ok6fea2Eedbb1/OeKpqT1QlsoZYFzbRJ0xdoQM7c9Y2k/Tlw6YLg82/BPS4e
         4BXOKHHGzOLbXk9l7ulYecBV6hDcP8W0/PenlUk/zcZGXPt6/0VlzrD0AeR8Q+s+pUSh
         uFFT0YHMDF5WPT8w2Lffm3IvMD3OBmfg9gyrY9UXSLEkN5lNhnG9kWsljBb/wMMa34dO
         QiTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:from:subject:references:mime-version:message-id:in-reply-to:date
         :sender:dkim-signature;
        bh=s0a03NeiimEs02gcpf/77HytMIb3TLvi/V8gs4T53vU=;
        b=IKodqHwsWoW0QzDJQ7JIcNOUZdG1emF/13ml11YQOYFer80k1PZ+b1X6fuPjasNOG7
         RwaCUmMwnH6VA9ySv+qLy/8vpkkG77ryQK0Wl6i9ah8gaPMZzpVmEX3Dq9EbE7iT61bU
         OYF3V2fqMNxbzdGxNGuDrdFSwWAfWOMAe1Ohaq5qs5vEkwZvK1Uxm0XYIcgi4yPRi5EG
         x77Ory9cpcdeJBq0orv40tTC+pgL5P/fG3O9DydVBKx1T8WaPtHD2FcXWDiU7YXL79Q5
         n9D0A9Sv/Lx3xX7XMV0gndnXr2vqcxYXq3Rci1rr9ugTDHuTvGQF5AwGL5tigDQmM+MO
         ryyw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=lUvKcrAr;
       spf=pass (google.com: domain of 3cofbyackersa91e3197ff7c5.3fd3c1e7-2l9ck-c9elo7ff7c57iflgj.3fd@flex--jiancai.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3CoFBYAcKERsA91E3197FF7C5.3FD3C1E7-2L9CK-C9ELO7FF7C57IFLGJ.3FD@flex--jiancai.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id w26si89874vse.2.2021.03.04.16.53.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Mar 2021 16:53:31 -0800 (PST)
Received-SPF: pass (google.com: domain of 3cofbyackersa91e3197ff7c5.3fd3c1e7-2l9ck-c9elo7ff7c57iflgj.3fd@flex--jiancai.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id d8so607511ybs.11
        for <clang-built-linux@googlegroups.com>; Thu, 04 Mar 2021 16:53:31 -0800 (PST)
Sender: "jiancai via sendgmr" <jiancai@jiancai.svl.corp.google.com>
X-Received: from jiancai.svl.corp.google.com ([2620:15c:2ce:0:1164:dbaf:a707:265d])
 (user=jiancai job=sendgmr) by 2002:a25:d8d1:: with SMTP id
 p200mr10331970ybg.14.1614905610829; Thu, 04 Mar 2021 16:53:30 -0800 (PST)
Date: Thu,  4 Mar 2021 16:53:18 -0800
In-Reply-To: <20210223023542.2287529-1-jiancai@google.com>
Message-Id: <20210305005327.405365-1-jiancai@google.com>
Mime-Version: 1.0
References: <20210223023542.2287529-1-jiancai@google.com>
X-Mailer: git-send-email 2.30.1.766.gb4fecdf3b7-goog
Subject: [PATCH v6] ARM: Implement SLS mitigation
From: "'Jian Cai' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Cc: ndesaulniers@google.com, manojgupta@google.com, llozano@google.com, 
	clang-built-linux@googlegroups.com, Jian Cai <jiancai@google.com>, 
	Nathan Chancellor <nathan@kernel.org>, David Laight <David.Laight@aculab.com>, 
	Will Deacon <will@kernel.org>, Russell King <rmk+kernel@armlinux.org.uk>, 
	Linus Walleij <linus.walleij@linaro.org>, Russell King <linux@armlinux.org.uk>, 
	Catalin Marinas <catalin.marinas@arm.com>, James Morris <jmorris@namei.org>, 
	"Serge E. Hallyn" <serge@hallyn.com>, Arnd Bergmann <arnd@arndb.de>, Masahiro Yamada <masahiroy@kernel.org>, 
	Kees Cook <keescook@chromium.org>, 
	"=?UTF-8?q?Andreas=20F=C3=A4rber?=" <afaerber@suse.de>, Daniel Palmer <daniel@0x0f.com>, Ard Biesheuvel <ardb@kernel.org>, 
	Ingo Molnar <mingo@kernel.org>, Vladimir Murzin <vladimir.murzin@arm.com>, 
	Marc Zyngier <maz@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, 
	Mike Rapoport <rppt@kernel.org>, 
	"=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?=" <u.kleine-koenig@pengutronix.de>, Mark Rutland <mark.rutland@arm.com>, 
	David Brazdil <dbrazdil@google.com>, Joey Gouly <joey.gouly@arm.com>, 
	James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-security-module@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jiancai@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=lUvKcrAr;       spf=pass
 (google.com: domain of 3cofbyackersa91e3197ff7c5.3fd3c1e7-2l9ck-c9elo7ff7c57iflgj.3fd@flex--jiancai.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3CoFBYAcKERsA91E3197FF7C5.3FD3C1E7-2L9CK-C9ELO7FF7C57IFLGJ.3FD@flex--jiancai.bounces.google.com;
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
Suggested-by: Linus Walleij <linus.walleij@linaro.org>
Signed-off-by: Jian Cai <jiancai@google.com>
---

Changes v1 -> v2:
 Update the description and patch based on Nathan and David's comments.

Changes v2 -> v3:
  Modify linker scripts as Nick suggested to address boot failure
  (verified with qemu). Added more details in Kconfig.hardening
  description. Disable the config by default.

Changes v3 -> v4:
  Address Nathan's comment and replace def_bool with depends on in
  HARDEN_SLS_ALL.

Changes v4 -> v5:
  Removed "default n" and made the description target indepdent in
  Kconfig.hardening.

Changes v5 -> v6:
  Add select HARDEN_SLS_ALL under config HARDEN_BRANCH_PREDICTOR. This
  turns on HARDEN_SLS_ALL by default where applicable.


 arch/arm/Makefile                  | 4 ++++
 arch/arm/include/asm/vmlinux.lds.h | 4 ++++
 arch/arm/kernel/vmlinux.lds.S      | 1 +
 arch/arm/mm/Kconfig                | 1 +
 arch/arm64/Makefile                | 4 ++++
 arch/arm64/kernel/vmlinux.lds.S    | 5 +++++
 security/Kconfig.hardening         | 8 ++++++++
 7 files changed, 27 insertions(+)

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index dad5502ecc28..54f9b5ff9682 100644
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
diff --git a/arch/arm/mm/Kconfig b/arch/arm/mm/Kconfig
index 35f43d0aa056..bdb63e7b1bec 100644
--- a/arch/arm/mm/Kconfig
+++ b/arch/arm/mm/Kconfig
@@ -837,6 +837,7 @@ config HARDEN_BRANCH_PREDICTOR
 	bool "Harden the branch predictor against aliasing attacks" if EXPERT
 	depends on CPU_SPECTRE
 	default y
+	select HARDEN_SLS_ALL
 	help
 	   Speculation attacks against some high-performance processors rely
 	   on being able to manipulate the branch predictor for a victim
diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
index 5b84aec31ed3..e233bfbdb1c2 100644
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
index 7eea7888bb02..d5c892605862 100644
--- a/arch/arm64/kernel/vmlinux.lds.S
+++ b/arch/arm64/kernel/vmlinux.lds.S
@@ -103,6 +103,10 @@ jiffies = jiffies_64;
 #define TRAMP_TEXT
 #endif
 
+#define SLS_TEXT					\
+	ALIGN_FUNCTION();				\
+	*(.text.__llvm_slsblr_thunk_*)
+
 /*
  * The size of the PE/COFF section that covers the kernel image, which
  * runs from _stext to _edata, must be a round multiple of the PE/COFF
@@ -154,6 +158,7 @@ SECTIONS
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
2.30.1.766.gb4fecdf3b7-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210305005327.405365-1-jiancai%40google.com.
