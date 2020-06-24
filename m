Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBQHCZL3QKGQEQCANH3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83f.google.com (mail-qt1-x83f.google.com [IPv6:2607:f8b0:4864:20::83f])
	by mail.lfdr.de (Postfix) with ESMTPS id E9E422069B7
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 03:49:53 +0200 (CEST)
Received: by mail-qt1-x83f.google.com with SMTP id w14sf418724qtv.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jun 2020 18:49:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592963392; cv=pass;
        d=google.com; s=arc-20160816;
        b=NT1uXi2Tz/VHWx6vYxkz3730xxwzBGTALKoOCM6XLgJBNHy2vxsN6BX90LZ2RRpRFt
         gHmxyzS54GAAW3/wOroLQojBEX8NdhsTGrUqmuiA+XcyWoelXcn0RfY4nNN8PZctcaSk
         t4Ib5dGCIDL7+r2R1/XCkQafY9rfMgKCo27KxBCs0q+eu4NzYA+Jlf4GXNBwFWau0r5h
         cqAPYYsczUnNwMi8bktrHXipXRmMHdFtRy2fmSqy/BUjPn7y73QMm2kaiTu9TFHD8HT1
         FPAaScH4g5bN3F1UuFklqvopTE8NZu1yUhTqWWq0WxXedErpzoy/7Kbpzg+wNBiH0oYF
         9LSQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=efwdUAG+bFYjgwauH7o5cwIrbf81EGY9bGzFr6K6wzA=;
        b=mwnWRUlwvFcrSEc1gMoil1rDRqcbjUQBA6PR5pLu6rZXoH++gfGwFIXB2+mtwQYL6a
         QJrpPRoEi05ItiqHqTZdohvaquZKs0HJzbWbi6HP8gEhcouQYKRz3aF3pf06X3oOyGcC
         RkFeb6W4svGOa9XLb/rHWH52kiq00/FElMd+LJhZZUJB21xD/d0pnmHwqzZse4KUOJ8I
         IKwjnllAY1767BQuPvjNGbcVIBb6DUrKsXP+ry5GgUTJj7SGfnyz+ouh5ceGGd+wGZa4
         WeemLn4sw4VGu9GSV7WPo/UGacEY4mrBEey+G18GJ4dwpKq2CTB42TxAu94i2ymiJ9ld
         dcYQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=HU0okjxi;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=efwdUAG+bFYjgwauH7o5cwIrbf81EGY9bGzFr6K6wzA=;
        b=OXvPSCnzG+b95gFxJBlbCilDShguIWKuFQ+39MTfqSxa8P/2I/HaawW1ZSEwvWVWhe
         +aApGmNE6c25FGbSshtLlXVcyBrwpPwfuieiL0u+hYEAW55DjuQnAQgxZadIohYJYo8Y
         1BaNfQDbRxQrMFshwuGU8r+AO9Vk8T/T9UO2rk13RBTVCa+LJ1D35c3UmgFE8G9eVWCJ
         llvbHrZZPja+qYCtGfQQUBdSD+uY3LsLeVWEMM1kHYaHvCND50UKyucrLtFn0s6+kYTF
         Vvnn0PjxTGaBrPy3EmfHUcZWZDqjsA9wFee/cggPcdc1hpD65iWEjGVOzgYGKvNFRZsB
         9N8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=efwdUAG+bFYjgwauH7o5cwIrbf81EGY9bGzFr6K6wzA=;
        b=F149GAdhvd/boyaJ0DEpfclIU68oNzneHX2+hII5p/ezC60S/8hMl4Lq84BcIcMe+H
         kvBPLx4e/tFfzEPHiy0XSkQp5fTiSx0VNVPmcnL9y9RXrD/ISOjqIgUQ1ejOztwlYXgQ
         TzjwcoUNAZ5mZhqfV6cW22dtLU9O+cujtt+ee0BaXVeuRmf6XAai6gAnlxlM0ZnD2QLw
         sKuHV/UePgb1q8141cWU9MVjGZzuwTcn6xM2iYpjFGKtZCsKn2knxIpCpv1MH9CqpP4j
         WLuuZjH661XANBTClJjGCFvExSB0elJXJSj/PUyB23Od1UOhHjwACwiwsW4T41vIB87R
         r2xA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531p1wP2VJPG2I4qL6rEPyeZjrdzUB6CvPRLE1tn0q+wkLEYwm1j
	+4yQ/9IzOYq1fHGVoU60iII=
X-Google-Smtp-Source: ABdhPJynupK2dw4EHg6TnkmG3bkCZvapgU4YJr3vK9WXPLayeeC1L19W/sfm507dWXyoOIwDnwZ+VQ==
X-Received: by 2002:a05:620a:1456:: with SMTP id i22mr22797407qkl.423.1592963392793;
        Tue, 23 Jun 2020 18:49:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:3287:: with SMTP id z7ls264070qtd.0.gmail; Tue, 23 Jun
 2020 18:49:52 -0700 (PDT)
X-Received: by 2002:ac8:734c:: with SMTP id q12mr24637680qtp.178.1592963392502;
        Tue, 23 Jun 2020 18:49:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592963392; cv=none;
        d=google.com; s=arc-20160816;
        b=VRaIWvQcsJub56jApZf85DjH7IEUq33YtvHyhgCIFo3Jies8cePKrRaIjS3lQTD+FI
         5whxqsS/+GhBzVQN1EYfenyvHCizxU+fmwpRnYNGQFrrFzdRKhKgYx1oQn2ZgAMr/Usr
         cb19uzNVtZ+YbAVPisDII6EziHxctOWw2bJzPluZMd0xDh1tQ6+v0epcPMlWwm44gzFi
         v0roEcld93hMc67pPAE4SAnLYLVmRdtSmUBV6whu8eyihU4owhfZFYPkSXxh3PwdYvVO
         rSzPVONLlUCLcMGSZyWaiIcW+b1BTcFG8KPJ/eD7k8MonB7D/0ao5xTDQAvp/nciKW+P
         lmsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=l5ovQdOa53Wq08SUrbeqBNAB7olZAVfsR3FjDV/m7eY=;
        b=K5t242Cx872SYx4hD8I8lwZqzubPPLtBrMtBvUtZyUdxFcuVHDnAksaGSRmp8lRi/k
         e2/IEloFewkTTSSnlvDQ3VHCx7X1AtpLzCGJRdulrM9CQkJ8pARO91b8cWoMLEFxyWmk
         hHOcHI1RxAGva9MPquc0xs6jQqo9IbAhxxqCyErK92TgvwpjHYUBkz0X+8qp8WKBvYlj
         b1IZzjC29ZMaNOGiXnKNw7OR6JOQ0ypxbEK7pqpOZDktR+XC9ETijrjvYlTx4otHOcHA
         iTyvRFwn4yEbKpr0te30uL5VkH6lZim/rz0l7L8CwKaJlD4QGvN6ghxdLyUbAFltDhWn
         Xlkw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=HU0okjxi;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id x78si1003868qka.4.2020.06.23.18.49.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Jun 2020 18:49:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Received: by mail-pl1-x643.google.com with SMTP id d12so345147ply.1
        for <clang-built-linux@googlegroups.com>; Tue, 23 Jun 2020 18:49:52 -0700 (PDT)
X-Received: by 2002:a17:902:b184:: with SMTP id s4mr26340353plr.148.1592963392122;
        Tue, 23 Jun 2020 18:49:52 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id 25sm18020100pfi.7.2020.06.23.18.49.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jun 2020 18:49:50 -0700 (PDT)
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
Subject: [PATCH v3 6/9] arm/build: Warn on orphan section placement
Date: Tue, 23 Jun 2020 18:49:37 -0700
Message-Id: <20200624014940.1204448-7-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200624014940.1204448-1-keescook@chromium.org>
References: <20200624014940.1204448-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=HU0okjxi;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::643
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
index 59fde2d598d8..e414e3732b3a 100644
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
index 381a8e105fa5..3d88ea74f4cd 100644
--- a/arch/arm/kernel/vmlinux.lds.h
+++ b/arch/arm/include/asm/vmlinux.lds.h
@@ -1,4 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0 */
+#include <asm-generic/vmlinux.lds.h>
 
 #ifdef CONFIG_HOTPLUG_CPU
 #define ARM_CPU_DISCARD(x)
@@ -37,6 +38,13 @@
 		*(.idmap.text)						\
 		__idmap_text_end = .;					\
 
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
@@ -49,8 +57,14 @@
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
@@ -64,9 +78,7 @@
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
index 6d2be994ae58..0807f40844a2 100644
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
index 7f24bc08403e..969205f125ca 100644
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
 
@@ -151,6 +149,7 @@ SECTIONS
 	_end = .;
 
 	STABS_DEBUG
+	DWARF_DEBUG
 }
 
 #ifdef CONFIG_STRICT_KERNEL_RWX
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200624014940.1204448-7-keescook%40chromium.org.
