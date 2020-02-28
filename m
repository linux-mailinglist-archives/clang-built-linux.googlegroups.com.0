Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBX524HZAKGQEI5CZOEA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1040.google.com (mail-pj1-x1040.google.com [IPv6:2607:f8b0:4864:20::1040])
	by mail.lfdr.de (Postfix) with ESMTPS id DF935172D0C
	for <lists+clang-built-linux@lfdr.de>; Fri, 28 Feb 2020 01:22:56 +0100 (CET)
Received: by mail-pj1-x1040.google.com with SMTP id dw15sf660792pjb.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 27 Feb 2020 16:22:56 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582849375; cv=pass;
        d=google.com; s=arc-20160816;
        b=otssU3Eec3j1VZ35FisvJ/e9g3N1M3c09QagkdDbUAsUMl41th4FZpZ0Cm5YAiUGoC
         Y+P++tK+vMSUXjCtVusrujjNkcbuAbLtELrdjsilqg39VZ2Nkt89bmvXNrM1MlhaD8xk
         ag6gMdop4rM5yvzxPDbXRcGOM2u2QGRwiZwLzOf3y0SmmyHkVsUpYJOrCoVZ5w3PILGF
         LFBwEmRQWz6keQbNUU6cGnrDDhgAxks5laI1cHkyRvDNIx/jMPkJbXoizc7YBkYuOdyF
         ycNg4lkjRa2TfxRVmGffU94ms0BwFzXwyMKyqlY7VSW9awaKlBWNwbjvMQdUnW9QqUhL
         S+eQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=XV3x+234vke8QAr4OpZRpqQ3z5NjH9HM21hDZnCln7M=;
        b=XXIWgGLfpHce3mZ86WiJdaF8FG/W1Rr1ugxOUi0zLOExnSJNQoYffOxK6oPfm/7C1x
         ekD0MQCL8gVBCpKpo6Kl1wFX4TM+2lFs3pteG+9bXmlhhw1Cj7gVFMwbYlB3cpaEqQPh
         v+EiXCt1N0jsPhmvsv+VtUSTU/NujGupojw2K8HYSLDN1qP7j8vA3dLomGBUiP2l8rWA
         L5UEkHyMCE8UOeENtfukI5oWr0dIiuK2T+bYXh8MXrX5MbgQ39COqlfgD988+JXnt56u
         sRXrNtKYutCvQwYrwZq0Uv2jwWpx/jzDWGu9jEf/FbuopFEZYrq0qw9YCbzXQ/7sS0pF
         Hokg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=SxadLoRd;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XV3x+234vke8QAr4OpZRpqQ3z5NjH9HM21hDZnCln7M=;
        b=OWLjUlGrirj/vTZyjx/QLskgnBiozPJs1OyRhwccXk95uzKDvah1ovKqx41l2n6va7
         BEW88JKOQkiHJvC6gydesT2vpZGHVpwVnjk6g/Byp92xmM/t/bCCgogrw8kqGCOLdeas
         R1EPFxxK1rRyGqK+RUgl9RViwhMALvC94uwNmbS+Bpt0clQgVnNT5TsUi2UojSlL0Hmb
         +qINXO4N5rhDThdllwAZjHJaAHTPYi7SDaq7hH3k6zkVPgeBOsxvs8zgVH0DrYKxLuPT
         ihMBotf6aVEeY66bkQxbg9iKLz1o5GARVXA0No00waDkBRzdki3fwmuD44oeYoQ+bhyq
         r37w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XV3x+234vke8QAr4OpZRpqQ3z5NjH9HM21hDZnCln7M=;
        b=KoUCAPZ17Qrl1NVK9S9WwxCBSbhX8zLfVoq/q26KkDQyqfKdlJ1sy6+0p5r7OOybXJ
         RtkYhwtkgo20wR2etNT9mS/QjDIMUpvpyAujZsS2kQoMIsB9kmlB91nu8T5ZuPcH6dVx
         BAD7E39/vGVvxUW5zjAyrShNHqrj/itabENN59p6BvLm7fQ5rk0pELX+J54mYyhsmlVD
         aK543sNzOJ9Cr3Wvq1RgRQ5WN+vvcq2LpRQkxzNukevgcNMz51qn3GyhiLMbCLEMz5Wc
         7eFy6N/4/nLYjGER3qQJUa6oGzfJAfv9hV+XG5bOZ1SBklwHO3iaiDnXyUnd02cflRSQ
         +oWA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWUvMT2X58i/2NBhtKcz0hyfQjVu23TmEQy1vuUlTNk4vuhiGNX
	4LFLg4N2tJ84TqLDXMp1ESI=
X-Google-Smtp-Source: APXvYqw8/UD+wuXS0V8m5IDyw0G4RZjSKBKjaPdKgSC7xY0GVC0TQ0lmmT2T4ndRIGJ0ZKun+ln9sw==
X-Received: by 2002:a63:5826:: with SMTP id m38mr1919591pgb.191.1582849375603;
        Thu, 27 Feb 2020 16:22:55 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:b26:: with SMTP id 35ls296028pjq.1.gmail; Thu, 27
 Feb 2020 16:22:55 -0800 (PST)
X-Received: by 2002:a17:90a:8685:: with SMTP id p5mr1702479pjn.92.1582849375157;
        Thu, 27 Feb 2020 16:22:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582849375; cv=none;
        d=google.com; s=arc-20160816;
        b=fMy7oqdHqN/LkUMY/N1lIjboj99veT8iJKq7gsfAA+6bYGAbylhTN44C64UT49eR+e
         ls0JZj2GBP+6IGSOBHWp0jgfs2oLgBzb5bJYtUDO5g0iUHHnH81k1BJi7cxGSQXdCpFA
         2junbHxPJWG8pr+0YfdIy0VfmOHDjQIZHMnb43Zu8ziAi+wctDnOHckfM3is3RvO3W0/
         knBjYEJNYtAQJzzsWcYNAfL/GsvPOWC25uBMJf6K38xI9heGvZ+t8DmxKbt78Skp6xL3
         QbLA9A4sp54U3+JmT79b8LDmxHVNAaGpICMcMOJGpVyfDh8lPzj+1rirc8VW68E0Y+3d
         WUyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=AwIdnSLxc1IQxbb7lR9quaS2Zk4ZIexbe3LplVopvDU=;
        b=xRI9osY5wbvWSQcjkQV5HkGHZbJRvfj6YLRQJXJ+WzwSZ/ugdKTcaV9AUNhJDFD1Se
         iGNYCfrARkhdBTL4pXhv0mHWuG69+y/2X2LgiW9x1vEIp8APAbS425NnOlLT+79dvx5b
         Vz/UBmj/aUaScPfURALzdjvbuTuX5KclRcH+YvEAtIHVzNHLMwT8jV6wFfxVj1FnbhGP
         NAcblm7/JtErFM6yyE3rE/E0dVTbzEnK9t0M0Owpb98YX7HUp1S08GG1TKRc1gqCMfny
         ggTlukpaZMBWRKDvmmyVGaO0P4uye9L3/0XTXHPS8vPqIb4KQ+pD6F/fH4lzr9jviZda
         JW4g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=SxadLoRd;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id m11si53755pjb.0.2020.02.27.16.22.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Feb 2020 16:22:55 -0800 (PST)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id y5so716782pfb.11
        for <clang-built-linux@googlegroups.com>; Thu, 27 Feb 2020 16:22:55 -0800 (PST)
X-Received: by 2002:a63:ef03:: with SMTP id u3mr1816813pgh.77.1582849374784;
        Thu, 27 Feb 2020 16:22:54 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id r11sm8163080pgi.9.2020.02.27.16.22.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Feb 2020 16:22:52 -0800 (PST)
From: Kees Cook <keescook@chromium.org>
To: Borislav Petkov <bp@suse.de>
Cc: Kees Cook <keescook@chromium.org>,
	"H.J. Lu" <hjl.tools@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Masahiro Yamada <masahiroy@kernel.org>,
	x86@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-arch@vger.kernel.org,
	linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org
Subject: [PATCH 8/9] arm/build: Warn on orphan section placement
Date: Thu, 27 Feb 2020 16:22:43 -0800
Message-Id: <20200228002244.15240-9-keescook@chromium.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200228002244.15240-1-keescook@chromium.org>
References: <20200228002244.15240-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=SxadLoRd;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::442
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

Specifically, this would have made a recently fixed bug very obvious:

ld: warning: orphan section `.fixup' from `arch/arm/lib/copy_from_user.o' being placed in section `.fixup'

Refactor linker script include file for use in standard and XIP linker
scripts, as well as in the coming boot linker script changes. Add debug
sections explicitly. Create ARM_COMMON_DISCARD macro with unneeded
sections .ARM.attributes, .iplt, .rel.iplt, .igot.plt, and .modinfo.
Create ARM_STUBS_TEXT macro with missed text stub sections .vfp11_veneer,
and .v4_bx. Finally enable orphan section warning.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 arch/arm/Makefile                             |  4 ++++
 .../arm/{kernel => include/asm}/vmlinux.lds.h | 22 ++++++++++++++-----
 arch/arm/kernel/vmlinux-xip.lds.S             |  5 ++---
 arch/arm/kernel/vmlinux.lds.S                 |  5 ++---
 4 files changed, 25 insertions(+), 11 deletions(-)
 rename arch/arm/{kernel => include/asm}/vmlinux.lds.h (92%)

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index db857d07114f..f1622bea987a 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -16,6 +16,10 @@ LDFLAGS_vmlinux	+= --be8
 KBUILD_LDFLAGS_MODULE	+= --be8
 endif
 
+# We never want expected sections to be placed heuristically by the
+# linker. All sections should be explicitly named in the linker script.
+LDFLAGS_vmlinux += --orphan-handling=warn
+
 ifeq ($(CONFIG_ARM_MODULE_PLTS),y)
 KBUILD_LDS_MODULE	+= $(srctree)/arch/arm/kernel/module.lds
 endif
diff --git a/arch/arm/kernel/vmlinux.lds.h b/arch/arm/include/asm/vmlinux.lds.h
similarity index 92%
rename from arch/arm/kernel/vmlinux.lds.h
rename to arch/arm/include/asm/vmlinux.lds.h
index 8247bc15addc..3ae2cf2e351b 100644
--- a/arch/arm/kernel/vmlinux.lds.h
+++ b/arch/arm/include/asm/vmlinux.lds.h
@@ -1,4 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0 */
+#include <asm-generic/vmlinux.lds.h>
 
 #ifdef CONFIG_HOTPLUG_CPU
 #define ARM_CPU_DISCARD(x)
@@ -46,6 +47,13 @@
 		*(.hyp.idmap.text)					\
 		__hyp_idmap_text_end = .;
 
+#define ARM_COMMON_DISCARD						\
+		*(.ARM.attributes)					\
+		*(.iplt) *(.rel.iplt) *(.igot.plt)			\
+		*(.modinfo)						\
+		*(.discard)						\
+		*(.discard.*)
+
 #define ARM_DISCARD							\
 		*(.ARM.exidx.exit.text)					\
 		*(.ARM.extab.exit.text)					\
@@ -58,8 +66,14 @@
 		EXIT_CALL						\
 		ARM_MMU_DISCARD(*(.text.fixup))				\
 		ARM_MMU_DISCARD(*(__ex_table))				\
-		*(.discard)						\
-		*(.discard.*)
+		ARM_COMMON_DISCARD
+
+#define ARM_STUBS_TEXT							\
+		*(.gnu.warning)						\
+		*(.glue_7t)						\
+		*(.glue_7)						\
+		*(.vfp11_veneer)					\
+		*(.v4_bx)
 
 #define ARM_TEXT							\
 		IDMAP_TEXT						\
@@ -74,9 +88,7 @@
 		LOCK_TEXT						\
 		HYPERVISOR_TEXT						\
 		KPROBES_TEXT						\
-		*(.gnu.warning)						\
-		*(.glue_7)						\
-		*(.glue_7t)						\
+		ARM_STUBS_TEXT						\
 		. = ALIGN(4);						\
 		*(.got)			/* Global offset table */	\
 		ARM_CPU_KEEP(PROC_INFO)
diff --git a/arch/arm/kernel/vmlinux-xip.lds.S b/arch/arm/kernel/vmlinux-xip.lds.S
index 21b8b271c80d..8e9ac99a4335 100644
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
 
@@ -152,6 +150,7 @@ SECTIONS
 	_end = .;
 
 	STABS_DEBUG
+	DWARF_DEBUG
 }
 
 /*
diff --git a/arch/arm/kernel/vmlinux.lds.S b/arch/arm/kernel/vmlinux.lds.S
index 319ccb10846a..f1c6f66e8e6c 100644
--- a/arch/arm/kernel/vmlinux.lds.S
+++ b/arch/arm/kernel/vmlinux.lds.S
@@ -8,7 +8,7 @@
 #include "vmlinux-xip.lds.S"
 #else
 
-#include <asm-generic/vmlinux.lds.h>
+#include <asm/vmlinux.lds.h>
 #include <asm/cache.h>
 #include <asm/thread_info.h>
 #include <asm/memory.h>
@@ -16,8 +16,6 @@
 #include <asm/page.h>
 #include <asm/pgtable.h>
 
-#include "vmlinux.lds.h"
-
 OUTPUT_ARCH(arm)
 ENTRY(stext)
 
@@ -151,6 +149,7 @@ SECTIONS
 	_end = .;
 
 	STABS_DEBUG
+	DWARF_DEBUG
 }
 
 #ifdef CONFIG_STRICT_KERNEL_RWX
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200228002244.15240-9-keescook%40chromium.org.
