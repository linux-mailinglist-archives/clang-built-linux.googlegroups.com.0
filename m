Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBTUP433QKGQENBHGPKI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x938.google.com (mail-ua1-x938.google.com [IPv6:2607:f8b0:4864:20::938])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A14720CCB8
	for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 08:18:55 +0200 (CEST)
Received: by mail-ua1-x938.google.com with SMTP id k12sf4261809uag.3
        for <lists+clang-built-linux@lfdr.de>; Sun, 28 Jun 2020 23:18:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593411534; cv=pass;
        d=google.com; s=arc-20160816;
        b=s/z7svGyUSDuJhZ7fNsu9YEiS0RJJKi7zoKZuNLZwTpVPgO/AZSH7hIhC5wGMDcvvx
         wb1VICaS+Wn2tvY/vf1uDJY/4dr+wR/me05yXD9ry89eIszNa5JNvZNsOi9aY3HP1o8E
         L9cA/kzuS/kVvLRXuSd2SzcUqTuIYzgb5FD6xnqRgtiL122+t76g3lZnGIS/nfYp3/Bh
         bVylLteJI2l8LE+vIU6ha8TwIiCmH2w6R1CMdLq2pXIPjiluuUyGPDqdsX3aBbhNRmR1
         BCbSwVVDt55AF4SwZCS2X8Lg+ND1Tt23d4njh5W+mmWj3FXtN9ygKGwe5k41e+FDbeZc
         DwBQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=GhChFsvqrIaVi1z5aaJBuyIRWGZk7JUoLSSQCcegfLw=;
        b=aiEl8A7tztmcqCkhW0MTShTb9bPnVC/FEkIWgRf0Z/7vR6RsQyDhZGc2y4VY9dDpBb
         oXIWVDv07bX9WtQNPWcB+dOKhLn7JB2+RoNF3ROgPTPpdFtvvlE7y+abwepcYpdLuKKa
         btJ3tNRzv96bp4a9aFtLpXU61vdnaNuRvnajMfSu6RYOWkS5S5B8PICwSbcvsktiMo/G
         tV90luTgswhdUOP+JGgQ/DcZlW/jswozeTW5Mlzo6J35GnX2+d9o/T84uo3NPAmmOr2N
         qvfjvx+VARvr+W60YqXq+RX+wJzfwKbe2ei71ZIDpmHsUCCJdzoUQcLz1ZnojGbC0iHc
         knJg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=WAur6F+G;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GhChFsvqrIaVi1z5aaJBuyIRWGZk7JUoLSSQCcegfLw=;
        b=aWu1l2VMhGk/9KzKrCK+YeDdCBAVveiK+kanY4JU8ow5NkdZ7hKXQE3I0m8rMZ6cTN
         +eIV3PJS7VNbb4ugiyM9PDkYZpKNg1wOM4L4grG7/Y6BD1a1jgHzpxcYWq9p9LO32s37
         CNIXg8sJhuJDrecX6ROs58FIEekKtfD9VJuguopuqYPAgWrWkeF2iI305DNbDdR99ZGB
         fmYr/mCqXbV4qKcrH/Nyc8jN4zLnZkJ2ntbmyzmEsEzhsNqWnlRYF4Q4w3llxjnhmqx1
         D+rApIZDxsAj55seE3lKDwZuOzezsYF9WZV+kz1Krap8wVKS4jS+PuiO4dkRG7qT56AO
         UDbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GhChFsvqrIaVi1z5aaJBuyIRWGZk7JUoLSSQCcegfLw=;
        b=P5gI5llMoHNOn3aBBCZ0FCyXxXJDCbETbDbAowkoVDTkvbGGn3hJty0QUXPNap+S6t
         2nDzP0kbCZHtnAfRXmiYS0TfHSsDdv08h361OrjMHnFMBbVsPU+xkGP6l6JkS3Ogu5Et
         YepdVtHxpMteEq1Pj4HBRyMwUZGwACFPDJXrDqBt5CJQ7K1XYKLedwjJVPCirb/ZF0Af
         IlHSENQ5TUtxHe3RQNlukjbUodNT1Xz13x73thns/8yUpHbUvWALn9dBuMGExbwRaYyP
         ZkIjv/TzvwlZi3fhmWlZTVUGwZqkMKg2ByWe94qk/NFHKUpyEAK99x1wQ+o3AS+byK6F
         lV/Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530/h4mjDWVOgWc0aIWkpQiHQyFPtWITC9kaQgnpo6oovcAQ6kVx
	fcHkgNJB1W0AFli2kouealE=
X-Google-Smtp-Source: ABdhPJzNw5xXbLXcLYZ4HcoqQnN8OdhGu4OS4ZsBlxLJLpBzkNvzbENHMtD0UroD5DC60S733sjP7Q==
X-Received: by 2002:ab0:3083:: with SMTP id h3mr9241579ual.18.1593411534618;
        Sun, 28 Jun 2020 23:18:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:f351:: with SMTP id p17ls1751243vsm.5.gmail; Sun, 28 Jun
 2020 23:18:54 -0700 (PDT)
X-Received: by 2002:a67:ef4f:: with SMTP id k15mr10480658vsr.222.1593411534290;
        Sun, 28 Jun 2020 23:18:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593411534; cv=none;
        d=google.com; s=arc-20160816;
        b=YpnXSL9d4TmPZQnmGmKLaTTgKiv8k6xkyOvyPRknqP4v0Nrnm0Pq0/JG56v4r2q3yQ
         VxdEo53bElGDOxJlUySwTz+FrY93FV770e483E0Muds/ZdIg1XcpF4nlbcU9tU2w6bj+
         LuBuzL3MUbm79/G16ZMxQ+v/xobgmqXiIWTqVF3uHkUU9BFMf6t4hObEkvZ1auDpvcb7
         b9uwKXSx8noeIoXist/+7qiIGvuF5Ih3ZC5kcm7N5GzNq6UUDgWVoGa/4Tatl9luwNPQ
         xbzNOFaYOC/syuwN2oQjS89nMiC/zO457qgIiVcoBl2gzwLdLVlAphPy47iUapsFndAK
         MFOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=zbmvLfTE9L6uB1QeuLicstyHsAYPZqeThcBTspx8dsE=;
        b=SEDMx64v1aTWw0D12A4NfvEPLET3sCbfLlQzeKE570yhBLPrwIiuLXbFIX7ePngse4
         UJXiXkMbRU+mDoS7x951F3WiBQ5+t3semWu87aFbCLjja9aOVjs6ySDXcyXymYcVxeeP
         WYy+dp6hiMraJqMNjLOBQ6TPgQ9UznGNyYOIWZ0iJ3m0nFk2LkuONFE4O73n/3nV7Z5w
         zxTHZo4mR90ylM/PtH8u/6t/0w/Cp1JQ9143etHbPijSm4HmUPbR1yKgBUek5uzsDzh6
         fiMqcnTC8S3Shu/t/ay7wTXZwaIukdKxCvkVHwdzCSCQkuMrxSGZ3JW4jfmwAXT4UIMv
         IafQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=WAur6F+G;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id e10si518197vkp.4.2020.06.28.23.18.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 28 Jun 2020 23:18:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id j1so7455491pfe.4
        for <clang-built-linux@googlegroups.com>; Sun, 28 Jun 2020 23:18:54 -0700 (PDT)
X-Received: by 2002:a63:d208:: with SMTP id a8mr8881051pgg.351.1593411533472;
        Sun, 28 Jun 2020 23:18:53 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id hg13sm5486603pjb.21.2020.06.28.23.18.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Jun 2020 23:18:48 -0700 (PDT)
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
Subject: [PATCH v4 12/17] arm/build: Refactor linker script headers
Date: Sun, 28 Jun 2020 23:18:35 -0700
Message-Id: <20200629061840.4065483-13-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200629061840.4065483-1-keescook@chromium.org>
References: <20200629061840.4065483-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=WAur6F+G;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::443
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
script header includes, and extract common macros. (The ARM_COMMON_DISCARD
macro will be shared with the boot linker script in a future patch.)

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 arch/arm/{kernel => include/asm}/vmlinux.lds.h | 17 ++++++++++++-----
 arch/arm/kernel/vmlinux-xip.lds.S              |  4 +---
 arch/arm/kernel/vmlinux.lds.S                  |  4 +---
 3 files changed, 14 insertions(+), 11 deletions(-)
 rename arch/arm/{kernel => include/asm}/vmlinux.lds.h (95%)

diff --git a/arch/arm/kernel/vmlinux.lds.h b/arch/arm/include/asm/vmlinux.lds.h
similarity index 95%
rename from arch/arm/kernel/vmlinux.lds.h
rename to arch/arm/include/asm/vmlinux.lds.h
index 381a8e105fa5..142c038b2e97 100644
--- a/arch/arm/kernel/vmlinux.lds.h
+++ b/arch/arm/include/asm/vmlinux.lds.h
@@ -1,4 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0 */
+#include <asm-generic/vmlinux.lds.h>
 
 #ifdef CONFIG_HOTPLUG_CPU
 #define ARM_CPU_DISCARD(x)
@@ -37,6 +38,10 @@
 		*(.idmap.text)						\
 		__idmap_text_end = .;					\
 
+#define ARM_COMMON_DISCARD						\
+		*(.discard)						\
+		*(.discard.*)
+
 #define ARM_DISCARD							\
 		*(.ARM.exidx.exit.text)					\
 		*(.ARM.extab.exit.text)					\
@@ -49,8 +54,12 @@
 		EXIT_CALL						\
 		ARM_MMU_DISCARD(*(.text.fixup))				\
 		ARM_MMU_DISCARD(*(__ex_table))				\
-		*(.discard)						\
-		*(.discard.*)
+		ARM_COMMON_DISCARD
+
+#define ARM_STUBS_TEXT							\
+		*(.gnu.warning)						\
+		*(.glue_7)						\
+		*(.glue_7t)
 
 #define ARM_TEXT							\
 		IDMAP_TEXT						\
@@ -64,9 +73,7 @@
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200629061840.4065483-13-keescook%40chromium.org.
