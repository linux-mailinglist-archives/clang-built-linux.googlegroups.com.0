Return-Path: <clang-built-linux+bncBDQ2R56ST4HRBMF2YCAQMGQEB7JNZCI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93b.google.com (mail-ua1-x93b.google.com [IPv6:2607:f8b0:4864:20::93b])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EAFA31FFBF
	for <lists+clang-built-linux@lfdr.de>; Fri, 19 Feb 2021 21:18:57 +0100 (CET)
Received: by mail-ua1-x93b.google.com with SMTP id 63sf2999541uak.10
        for <lists+clang-built-linux@lfdr.de>; Fri, 19 Feb 2021 12:18:57 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1613765936; cv=pass;
        d=google.com; s=arc-20160816;
        b=FKnVB9rKhLk8kHiIgRdMOBTPkqimUoZZzkc5EW7ti2jj9wHMCo5naDc0dZAVQ21F9J
         o9Ix23AVY9sUKwtw8WLqhMB9pTbsTGgA1cUDlqy9aZKsHs40LA4WMTOZT8uE1JP1q5Kd
         7ljVVxpnI5svvX0AwAUXKWJXv2fHbrd/oeePUt9s2YQPgpQ2Uk+yByiofSpzU17Kv/WK
         O/aAV3/z0ylF91S3KP2RtoxuHv1KFzbYsONiziHaTu1NCnkGoDQddm+iMY7F0WIWwtAf
         jvpeLfTekwggP6SRYjR3SqHE3JRWPAe8ba9c2/CV18rPcOhZy+Y72SuN2rKpxE3b9LQn
         tSMQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:from:subject:references
         :mime-version:message-id:in-reply-to:date:sender:dkim-signature;
        bh=7YNlrxdu5qjfE/P+KiTTxPpuMZRVnMvjmbBn09ZeILs=;
        b=DPsY/+VzbFAHbpwn1O+ygaNfrLjt7g7MiUy8L0zaD4/dpyWXqAMXdXzOp1+Tqm6WGT
         OcBwlwf+ACtAi/hgHuZRjeC6+hKYa6RjGDQDPhpHvHZg3XB8XRkFtbsFttk8O56TZXll
         llGssdg+JbLpWDHiANSm1KrhaYWZ+uK84malp3Ujp4Im0aLJmdIw8uGsRmIpQFqnR5So
         GcmkbdD1Ju1YIbot/dzwcUIBEBCdcUtMve9oyHgjxJ1lBkK7fo/Uh1Sl/ZWD2ALlaL2B
         AehEMu65B7cPHwyPhJbhA8Vxcv3SSeDMSEKV9ujHJ/Obj1arhyvrEvVaMPUDUvTXRpg2
         gLZw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="jI/PzXCk";
       spf=pass (google.com: domain of 3lx0wyacketixwobqowuccuzs.qcaqzobu-piwzh-zwbiluccuzsufcidg.qca@flex--jiancai.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3Lx0wYAcKETIXWObQOWUccUZS.QcaQZObU-PiWZh-ZWbilUccUZSUfcidg.Qca@flex--jiancai.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=7YNlrxdu5qjfE/P+KiTTxPpuMZRVnMvjmbBn09ZeILs=;
        b=e4bkAmy8Y1zERF0IEwIetAfAYRLqH1RKy5aHix+6R90DFMwtqoiyzopaZSBXfB9MnF
         4X0cuwLAvBdj+ZgoE6Lgq2MHiXUJe2D1jg28pxAQRSXfigAvLBstG7rsYF8KDcr849HA
         nELqn1VyBYFjjMLx4ncWYNP4rlGrwTpeMSun7q+7VRkEhkmrUdGuJ3wUeypKIZBR1hFc
         XVrpbCSNv2OwkodeRJrqJTDfmkHFL27QTdz5KfZhapCmFA5v41Gz4BfrtkkUhIxndfBa
         ICs6jSoMbb/YVMX4DFyfgbVNtPpn4LF9+ouoxw0ZZhLMekVSnsd+bh9Cbkf0Z+8iE2Nq
         /MIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7YNlrxdu5qjfE/P+KiTTxPpuMZRVnMvjmbBn09ZeILs=;
        b=TqxyYRo79ZJMaMx9BrQYm2kCA427DRQh1eilCwkjSsu+JLpQU0Z/it9k9tGqX/Kdlo
         bOzS41sUlef+1DPEqp5JcsY+KZVjDmgCR3dBJFNNbMCyE1WdbJa5xWQia8BzPgFHzir7
         /ria+rCSrUDLeNS5PvLiYqrnjx0E21LD5/Wt7QaShwEinmt+jSTYW3UcmANrH2p/bdl4
         MOw2vy6YK/YG4cvQj3uj0NewSIOuplr4pHSF95sBooveHj5pes1lQ1WpNMmFOGo9eu0R
         w9ZHqwK7KC6mIXmaDtZvrePkyjtD/S0hxGFiw9SHsV3DLDSFRvbn2z5Iz2YNxp3Olwid
         Ij3A==
X-Gm-Message-State: AOAM5311Ql6AxCqYKM+i7YNv9FtM6VKNe0qaowS1zNiNbPV8SXidPwJg
	yfrsAPK68/+NeX4iGTev6Vs=
X-Google-Smtp-Source: ABdhPJzARXcJbCi5yvIfeASVTkZF5NHpstrfxBlPqX0lWLSETdCxqX+5k12gtNGmuuZiWy5RKXLmlQ==
X-Received: by 2002:ab0:7a54:: with SMTP id a20mr9432648uat.49.1613765936441;
        Fri, 19 Feb 2021 12:18:56 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:5e9d:: with SMTP id y29ls873716uag.9.gmail; Fri, 19 Feb
 2021 12:18:56 -0800 (PST)
X-Received: by 2002:ab0:2b91:: with SMTP id q17mr8771530uar.40.1613765935987;
        Fri, 19 Feb 2021 12:18:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1613765935; cv=none;
        d=google.com; s=arc-20160816;
        b=RVi7cxLv1pFl4gyiTtRZT8m5EehOo/feo552XeIstG9Nhm612wT+T9mx9lQOoa3aPX
         iOwselUcu+c0N+FMNB0XynayfleN86jroz4YiDbXHvr99syaQZnrLG0BKM1OLNMFmtRH
         iDEl8a5RMc1c2Veo3f2DRBXsDi7HnJDwig8aHm/d7JS2RpneqVYmous/vQaAt8jJM4HY
         8HhdL1DG7JOqr0P95ePNKmqqRoD0btvLMn0DnCi1WfAwIfMLEKpDVoOYRbSDjtYVSnxH
         +lGd65WrNS47LDJbakEPA4pgdGGSbH3Qc6R7ZvBgH/D3PprWLRPCnrNh4LjG33iCCI0H
         JxVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:from:subject:references:mime-version:message-id:in-reply-to:date
         :sender:dkim-signature;
        bh=7T2c0bl5OkkQ79Gbe1n87t+HukBdE3TTJ/DXUdpKX6g=;
        b=xgdnb1Gj3ykyMFNJ3glQU1+qmWHhHltfonHrSeKCPp5yXjTIgDry2arGbIDAQJuFhM
         01vQthljnbf4mJLf1pGHpZPPb1oRsJpiB205PbcnnZCIyPw7N8wPSUoi7jRLF3QH8u+n
         Pc35BV62bxssMnHTdQKR4IQTBigRxL1wVOlLrpIvGCL/DnACLV1fQiHR57OifahBMkKh
         PXOU7/BraZ9Y0E8oWkFMyvgBVxMo2gJ6C3domtWutoHXTq9TJ9CEIyAZVbpvaagjdR3F
         KzBK4zPDQUsQBI0ISN+BETsiTzp7P5eFZYxUduurVRJlfWgC5kyWBLHNchfKB8SgThI/
         76MQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="jI/PzXCk";
       spf=pass (google.com: domain of 3lx0wyacketixwobqowuccuzs.qcaqzobu-piwzh-zwbiluccuzsufcidg.qca@flex--jiancai.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3Lx0wYAcKETIXWObQOWUccUZS.QcaQZObU-PiWZh-ZWbilUccUZSUfcidg.Qca@flex--jiancai.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf4a.google.com (mail-qv1-xf4a.google.com. [2607:f8b0:4864:20::f4a])
        by gmr-mx.google.com with ESMTPS id j23si126977ual.1.2021.02.19.12.18.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Feb 2021 12:18:55 -0800 (PST)
Received-SPF: pass (google.com: domain of 3lx0wyacketixwobqowuccuzs.qcaqzobu-piwzh-zwbiluccuzsufcidg.qca@flex--jiancai.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) client-ip=2607:f8b0:4864:20::f4a;
Received: by mail-qv1-xf4a.google.com with SMTP id i17so612134qvb.1
        for <clang-built-linux@googlegroups.com>; Fri, 19 Feb 2021 12:18:55 -0800 (PST)
Sender: "jiancai via sendgmr" <jiancai@jiancai.svl.corp.google.com>
X-Received: from jiancai.svl.corp.google.com ([2620:15c:2ce:0:6578:8d7f:50d0:55c8])
 (user=jiancai job=sendgmr) by 2002:a0c:c488:: with SMTP id
 u8mr3180406qvi.9.1613765935591; Fri, 19 Feb 2021 12:18:55 -0800 (PST)
Date: Fri, 19 Feb 2021 12:18:40 -0800
In-Reply-To: <20210212195255.1321544-1-jiancai@google.com>
Message-Id: <20210219201852.3213914-1-jiancai@google.com>
Mime-Version: 1.0
References: <20210212195255.1321544-1-jiancai@google.com>
X-Mailer: git-send-email 2.30.0.617.g56c4b15f3c-goog
Subject: [PATCH v3] ARM: Implement SLS mitigation
From: "'Jian Cai' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Cc: ndesaulniers@google.com, manojgupta@google.com, llozano@google.com, 
	clang-built-linux@googlegroups.com, Jian Cai <jiancai@google.com>, 
	Nathan Chancellor <nathan@kernel.org>, David Laight <David.Laight@aculab.com>, 
	Will Deacon <will@kernel.org>, Russell King <linux@armlinux.org.uk>, 
	Catalin Marinas <catalin.marinas@arm.com>, James Morris <jmorris@namei.org>, 
	"Serge E. Hallyn" <serge@hallyn.com>, Arnd Bergmann <arnd@arndb.de>, Masahiro Yamada <masahiroy@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Ard Biesheuvel <ardb@kernel.org>, 
	"=?UTF-8?q?Andreas=20F=C3=A4rber?=" <afaerber@suse.de>, Ingo Molnar <mingo@kernel.org>, Olof Johansson <olof@lixom.net>, 
	Marc Zyngier <maz@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, 
	Mike Rapoport <rppt@kernel.org>, David Brazdil <dbrazdil@google.com>, James Morse <james.morse@arm.com>, 
	Mark Rutland <mark.rutland@arm.com>, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-security-module@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jiancai@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="jI/PzXCk";       spf=pass
 (google.com: domain of 3lx0wyacketixwobqowuccuzs.qcaqzobu-piwzh-zwbiluccuzsufcidg.qca@flex--jiancai.bounces.google.com
 designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3Lx0wYAcKETIXWObQOWUccUZS.QcaQZObU-PiWZh-ZWbilUccUZSUfcidg.Qca@flex--jiancai.bounces.google.com;
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

Changes v2 -> v3:
  Modify linker scripts as Nick suggested to address boot failure
  (verified with qemu). Added more details in Kconfig.hardening
  description. Disable the config by default.

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
index 269967c4fc1b..e70f227019e1 100644
--- a/security/Kconfig.hardening
+++ b/security/Kconfig.hardening
@@ -121,6 +121,16 @@ choice
 
 endchoice
 
+config HARDEN_SLS_ALL
+	bool "enable SLS vulnerability hardening"
+	default n
+	def_bool $(cc-option,-mharden-sls=all)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210219201852.3213914-1-jiancai%40google.com.
