Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBH6IQD5AKGQEBSGRAUI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x439.google.com (mail-pf1-x439.google.com [IPv6:2607:f8b0:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 99FC524E0D9
	for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 21:44:32 +0200 (CEST)
Received: by mail-pf1-x439.google.com with SMTP id z189sf1944994pfz.11
        for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 12:44:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598039071; cv=pass;
        d=google.com; s=arc-20160816;
        b=vwBgktU1K9LxyTPS2qloXZoyfFnIJHEmgriqWvpar7jOP/NyBm0vugiNoQCafnfdPQ
         lzIqL5STOfAYMymWo7Nrhyrv90W9RqRO5Xvn63/L4shmHzE0FxWioL1gCwpqm2sEH67l
         5R7l1Xw6NTFK+k86fF8gtYPv3vCRm6y+s38XUchX45ZYDGTJMf/QLGkNtlPWsMOOPNux
         naudvmd/SN76fTJaweHRMBr94puP8kmbB55Qsp8zDHRpf1zA7PUp+jkGaoSYwEhdSaWI
         K17/jtPj/w6fI0C9SWhm6a1ZjCB430nsaNS1EAVaKJ3nZ5njBUrfaT/rEppLqQoGhbjp
         PrNQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=1GSkf7OiKpqx8oiF1alhCRBlXzW6I+nXApzDxvOs5vM=;
        b=tWymjdzf+TcxvBeJr9K9SXisVfXUI3wWuX/BF7OC+jElDEV9ndzREHI+k1aB7Qi2za
         11dtvg/r6MLvRsMu4HKsD2cjKdhq7sWNueFFPStTX2lLOCJFVAllow5fGJzRTj++tDzq
         90JacAyyqfuR2AUvCQv3ZZT2Ed6KxDpi6B7ghXFPIpmIr+hBRrOIoDu/3m9coc0yb7/o
         kbY2RNdBH09SuSNhAY5IseGlAc24xtcFgm4a3PtxU3QEo6qFC4hnEyG5gHsyXbug+H3e
         1X6T+JdnTdvwfjpf3kyf+oJhErmtYdWqAiHsGKvJrMGwfmaxlaY+XAtJvlV1+n3H4eFH
         xiUg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=NyTgbCze;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1GSkf7OiKpqx8oiF1alhCRBlXzW6I+nXApzDxvOs5vM=;
        b=QjOdSS3fDxHusBbgwlPFNkytIPOi+lobxSfOqUz/V3HTpLnQaDxSEql0xAfJixYTus
         muCU3lNKQGqcgHrFQbK6uptM/EAzJX7l8Cmek3DjjQtkFra94dXONNcf5mqURMGKHIYk
         lUZb0tsM2u/9BFqr6XrBkACdon+md8m8XaBLfXRFyXhpgqYgtDwI0IWtw+dv8gcbTbx2
         LgSS3+IAX2NU70dOs+Xsld3156WFzsyq7lnHKZ2Mx0GvASswaotlrqQ+XVBfxu0Ro0/m
         bhzx63YrgLP3Oe+a2qySJQM/iKvprprNGbp1qqfYQ4jWp140sutULTAIo2Fq29HSNqw5
         JETA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1GSkf7OiKpqx8oiF1alhCRBlXzW6I+nXApzDxvOs5vM=;
        b=RnSkSSL37p0Cv7552D/MH7Ku+zFKvVcZAMsxGuGg4lD0tKEPdrqJx0IhZh6pmz24OV
         enQpk+dl81uyOBWOmy3+rsXmxmBw00ZDf3aF0iZKhp7VUOLmHEhyCnXnV176hNEgse94
         OaLFSa1EUcVSnxDhkmfIGeLz+IUSi56iEH/NpQHAkhzMRpqasTyEmTAFW/sueWFUm6Kl
         5KkQcyHNLnQKs9pwYQNHVm5JT5LVVaSJXoe9FnOcWFjGxrGN6jtSubnYWfhtvrvo78jk
         PpITm6v2nOryWJwsoc+MV1xrhlClLRd42UDDehi+uroTRv0Ea75JfjLlYA5QOvt4KoE3
         Uj/w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533vNpT82Oalad7Idp48JRK6iH2bQ6E9Ni0K3bvEMNvuKJ+JkjKU
	k7s+9TeEDzi/Gb+F8ht4n0w=
X-Google-Smtp-Source: ABdhPJyUt2AkMzSD8qFseDuh8h9tNY1U5mKggFAYh0IXSOSWYYF3bysUVvfsoIMadr97msu1o79QXQ==
X-Received: by 2002:a63:a709:: with SMTP id d9mr3525044pgf.168.1598039071376;
        Fri, 21 Aug 2020 12:44:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:7593:: with SMTP id q141ls469597pfc.0.gmail; Fri, 21 Aug
 2020 12:44:31 -0700 (PDT)
X-Received: by 2002:aa7:94bd:: with SMTP id a29mr3768279pfl.280.1598039070928;
        Fri, 21 Aug 2020 12:44:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598039070; cv=none;
        d=google.com; s=arc-20160816;
        b=Prn2oOfQQKmJfgcEAwThHKa2bMP1wBTcvvg0HvfNw4KKVDk4srxt8XQGqoHKcdNd3F
         fox3epVSHSgJuXMuQLQd4+GRI1PxnFbYpAVEVV3rul+6QW0NWmpF5RHAv4QGxh5qCv2s
         DOm0ZKisFHFSeFSuVTrDjv44EQMBLs3gmErwkfgSMGCFmMfVr4V4oqvf10/8IEYmMqP2
         8jbsl0puteamvnwdBL/jfLn7YNfVnyCDnT6/l4ouXgzYTXaqu/dxhebQUKJnUvOsLhub
         Euaasz2lgnB+THaPyFOQUr33X2eHzLJhPkfx8ouF4JsItNwNsEX3/3zxI78MjAn8g5rz
         thqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=aNMQ3F5q4g/Uk/+s5Q6WGurCwVwunmhXKYzGhkTYsIo=;
        b=zLSK4vGJAwnboek7m+/IVHCyEK6rZqjEQIuJ2ORyzEYgN5q3zSptH0q46GI9ZgJvYo
         tgUDLLoxqwHyXTkZYtaD1skHZ3uKzc08vdFoOOZAKyaDGYhnhQdJNTnANFzS9QxZQiGK
         ASmXomagxibRzL+/HtKMobXsXTviyKeUvQcdOjuFnFgh5xllbLVRpE51yi/NSzWr440F
         /ZdaXwsgMDnEKPgtuVn3jvY5VCPvuwN4se5CBOHKW+XSfiAadTgGQoo9h1C93d054pbv
         sQyrE5z5IbMYK6nX4DcQYJeq7chmFksIip9WoXh/vDv9JjJvGBx3qmJnbFjwsL2WZCc1
         wDbA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=NyTgbCze;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id s76si205670pfc.1.2020.08.21.12.44.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Aug 2020 12:44:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Received: by mail-pj1-x1042.google.com with SMTP id q93so1296141pjq.0
        for <clang-built-linux@googlegroups.com>; Fri, 21 Aug 2020 12:44:30 -0700 (PDT)
X-Received: by 2002:a17:902:c181:: with SMTP id d1mr3416243pld.296.1598039070655;
        Fri, 21 Aug 2020 12:44:30 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id u5sm3268710pfm.149.2020.08.21.12.44.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Aug 2020 12:44:25 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Ingo Molnar <mingo@kernel.org>
Cc: Kees Cook <keescook@chromium.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>,
	Borislav Petkov <bp@suse.de>,
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
Subject: [PATCH v6 15/29] arm/build: Refactor linker script headers
Date: Fri, 21 Aug 2020 12:42:56 -0700
Message-Id: <20200821194310.3089815-16-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200821194310.3089815-1-keescook@chromium.org>
References: <20200821194310.3089815-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=NyTgbCze;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1042
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

In preparation for adding --orphan-handling=warn, refactor the linker
script header includes, and extract common macros.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 arch/arm/{kernel => include/asm}/vmlinux.lds.h | 13 ++++++++-----
 arch/arm/kernel/vmlinux-xip.lds.S              |  4 +---
 arch/arm/kernel/vmlinux.lds.S                  |  4 +---
 3 files changed, 10 insertions(+), 11 deletions(-)
 rename arch/arm/{kernel => include/asm}/vmlinux.lds.h (96%)

diff --git a/arch/arm/kernel/vmlinux.lds.h b/arch/arm/include/asm/vmlinux.lds.h
similarity index 96%
rename from arch/arm/kernel/vmlinux.lds.h
rename to arch/arm/include/asm/vmlinux.lds.h
index 381a8e105fa5..a08f4301b718 100644
--- a/arch/arm/kernel/vmlinux.lds.h
+++ b/arch/arm/include/asm/vmlinux.lds.h
@@ -1,4 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0 */
+#include <asm-generic/vmlinux.lds.h>
 
 #ifdef CONFIG_HOTPLUG_CPU
 #define ARM_CPU_DISCARD(x)
@@ -49,8 +50,12 @@
 		EXIT_CALL						\
 		ARM_MMU_DISCARD(*(.text.fixup))				\
 		ARM_MMU_DISCARD(*(__ex_table))				\
-		*(.discard)						\
-		*(.discard.*)
+		COMMON_DISCARDS
+
+#define ARM_STUBS_TEXT							\
+		*(.gnu.warning)						\
+		*(.glue_7)						\
+		*(.glue_7t)
 
 #define ARM_TEXT							\
 		IDMAP_TEXT						\
@@ -64,9 +69,7 @@
 		CPUIDLE_TEXT						\
 		LOCK_TEXT						\
 		KPROBES_TEXT						\
-		*(.gnu.warning)						\
-		*(.glue_7)						\
-		*(.glue_7t)						\
+		ARM_STUBS_TEXT						\
 		. = ALIGN(4);						\
 		*(.got)			/* Global offset table */	\
 		ARM_CPU_KEEP(PROC_INFO)
diff --git a/arch/arm/kernel/vmlinux-xip.lds.S b/arch/arm/kernel/vmlinux-xip.lds.S
index 3d4e88f08196..904c31fa20ed 100644
--- a/arch/arm/kernel/vmlinux-xip.lds.S
+++ b/arch/arm/kernel/vmlinux-xip.lds.S
@@ -9,15 +9,13 @@
 
 #include <linux/sizes.h>
 
-#include <asm-generic/vmlinux.lds.h>
+#include <asm/vmlinux.lds.h>
 #include <asm/cache.h>
 #include <asm/thread_info.h>
 #include <asm/memory.h>
 #include <asm/mpu.h>
 #include <asm/page.h>
 
-#include "vmlinux.lds.h"
-
 OUTPUT_ARCH(arm)
 ENTRY(stext)
 
diff --git a/arch/arm/kernel/vmlinux.lds.S b/arch/arm/kernel/vmlinux.lds.S
index 5592f14b7e35..bb950c896a67 100644
--- a/arch/arm/kernel/vmlinux.lds.S
+++ b/arch/arm/kernel/vmlinux.lds.S
@@ -9,15 +9,13 @@
 #else
 
 #include <linux/pgtable.h>
-#include <asm-generic/vmlinux.lds.h>
+#include <asm/vmlinux.lds.h>
 #include <asm/cache.h>
 #include <asm/thread_info.h>
 #include <asm/memory.h>
 #include <asm/mpu.h>
 #include <asm/page.h>
 
-#include "vmlinux.lds.h"
-
 OUTPUT_ARCH(arm)
 ENTRY(stext)
 
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200821194310.3089815-16-keescook%40chromium.org.
