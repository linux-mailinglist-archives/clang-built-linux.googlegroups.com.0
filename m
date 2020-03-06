Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBKVCRHZQKGQEY4EPPOA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33a.google.com (mail-wm1-x33a.google.com [IPv6:2a00:1450:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id 4358D17BEAE
	for <lists+clang-built-linux@lfdr.de>; Fri,  6 Mar 2020 14:33:31 +0100 (CET)
Received: by mail-wm1-x33a.google.com with SMTP id p4sf3784706wmp.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Mar 2020 05:33:31 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1583501611; cv=pass;
        d=google.com; s=arc-20160816;
        b=WXo01pBgs8KTfzibZsIq9hBWFTCIEdVOywc42VAX3lpG2SqY6R8nCKx5xypt7GZJRJ
         MU9jQL/vKwEsoF7rMvucKxRZQH46f8kHG7a1NJoVedQxxCH7kduRtHvKFvBpLodh0oMP
         TE0g2FLO8/7TFo4o4PXbNSZjfeVQkVx8rTEMsyDF/vxMWMzEtduqRgl/qfZXPi2QlAK+
         VNBepiSkLR6Q7YuJV679CL+3+trPTbOw20qe9uUT1G+7WHF8Glx4KAGp5M4tegUbxOBF
         mD71jsJ+PRQ9CDjxcoxXTjM0O7Y+KOUGqw1cnpBU5Zx9MaL19ZKaJpt8bL/k2968x+4+
         Pb9w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=KqRT0xDwF7I4FF9/IKa1FlokFQiFtz/hB9j07jypCoI=;
        b=UR2oNMrYBVElyn3xQXu/StWcOatipEk/biE9mxHaT3On2KBnX4bxfHcsqN4JV+24LU
         XZhtSHIBRJKaGjRi+BcNrWfsas5IBSchdWha/GDdd5ATFs/9tA6WCmfAarB9rjx6TAl5
         DsN4/0KDql5UJAXYDGm5rpnHIsXtkCWjVDuE5wuROgy2fLBUMthcpOL84xLCHyNYrojl
         3sHUN/ua772JHPa4oiOeLFreiPFhL+Wmr6SlxLhKeF4cUEQX1mhIUwPTJkdMRkhXJ83S
         WTA88RROTREqWkGEQ+u0Ut7tDVUEBK6fc8BvSmjfVCPpw6O5UAcbTeBg72OCN6kwo+KN
         OemA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KqRT0xDwF7I4FF9/IKa1FlokFQiFtz/hB9j07jypCoI=;
        b=YEk+9WNRpOSqpzwWnQeKzTL756GgEkwStEm3cwDxu5HLtXQkWQRpN37++ke5BBwSkp
         lnIUZLOFqVztddUd95bw9BcF4j8SuF0aqdea1hQ8pqeRCh0J+jVjaJoWqfOZmtcURdJ2
         ABPimErcj0Ay5dZHFsfPGoT0KVJHQ0I4wwWu6CfDdkY16x3dbtpyBlsA8dxleNDQF+EW
         aVP/XfMd+d7k+Mlg2gVjnY4lgxBt4OVuvkF3XduLcg0RK13znCq6sXrBUTOyHSu6JqaH
         lkribPSSM7AXRPw+ufnYbaGC9N4XMPI+wYT81+95wKqhJxbmS6Xl+nZ0WbWQB3Z1sr/C
         LYxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KqRT0xDwF7I4FF9/IKa1FlokFQiFtz/hB9j07jypCoI=;
        b=VKSCPl2iA/XFXIAU0qgtxLTQetLJLNn6s8alRJtPHoviciKio68mn1nFskY1bLrOZp
         MeECJgm1ZqT4mZ6cw9LCG/vXyqWhU3bR/C6qZg12Sol3JPjBRmxjQKYeT33os9scQHee
         ZZGnSzFYwTRsImOeLnbPFbERR+SanrZztGymzoXcqInM5Rpsiyvk6rCVa3Vvi5ZpKxlf
         7kxFWC1oPG0LZ2Qo3cjdsUJOUmJKWwARFlYJIbRo2VhhAvB33kDp3tgHwL1Uqtv3PrDx
         1kJ6dFzlNzdBwaFiyzNXRJz2AB18e3BonleMRTo/pvzoQbQFzghoKogq8uePKMbRpsN0
         OSlg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2K2buXLLOyJSNxWOOZhq1jE6QhzqozaAhk81epgqvP7a/RHVs9
	47fsClsbWEmG/Y7NNlrOY4s=
X-Google-Smtp-Source: ADFU+vteW5kaeQ+OLwXd7dg1GLTecw4haTI2IBIG/VDm5E1mvWbj0vI6xNKrI/gWmyWJvwc7Yt5zvA==
X-Received: by 2002:a1c:ed04:: with SMTP id l4mr4043444wmh.36.1583501610997;
        Fri, 06 Mar 2020 05:33:30 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:4d42:: with SMTP id a2ls1029483wru.9.gmail; Fri, 06 Mar
 2020 05:33:30 -0800 (PST)
X-Received: by 2002:adf:ef4c:: with SMTP id c12mr4329300wrp.249.1583501610451;
        Fri, 06 Mar 2020 05:33:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583501610; cv=none;
        d=google.com; s=arc-20160816;
        b=EMBjcarUUb2pfQ7cBD6zuL8QvUaoLFqTpoHzKgflZSHQuof4Xmfh1S7Yntj5IunGrF
         SI8L3UNT9wQTVLhla1zikgszYGLc0kQXrepH0cifJKjfRmhOrZNgAeUqLRi6wrq2AOya
         ZWyM4evfcgJn9uV9fS+2vkCvBlfEYouSSWW+GFfPbzXNdA8/MsdB9cMorG2q125eJvKE
         geVA7TQNM8xnQGA/TyhgdztEPP+xMbgz16KxNr4L3NZa821Q3MpejBwwo7ehKlfbIbMZ
         zrJFjC5e+/qQ7Lk3l+4jeQL/B9DWxAMTrZ8UQHjcjG+G1reQnECqCsTlBOu3NtiLldgd
         pjZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=rQIdHvvQDIkXDDlaz0kTIppIxDXrLQ4IXhA/6Ox1q90=;
        b=MVNcThpdQG4qUgTNAqlDRI3FZUyWznY+fLmiIFZHWt3GDqqvrnEBvUePc+9kVNwdDl
         4Vjrm+kgOe00gskmQ1YYpmTV7IfXgPXthB2+u2UNISBEehxFMfRO17wg6XslYQfue1ca
         YNFIFhlYY0pnJRP1k0g7pMOo7ap4MtVIBmkPbUG64CHdTjcKK2yfBLFnwoqFhpwhl88i
         z/hoGXbzgm3KHZd/MSeJ78pYFELFEQQeNQyGexYJqjU1csB31R7QvpU2x+LqVJ0jzavC
         Hvl7b5zlUOydli2WdNHcFnfY+DRCihb+kEgBNCbm4J05v1s0yHgfqKpBSBWtwVYL8Imm
         E2Iw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id y78si116908wmd.1.2020.03.06.05.33.30
        for <clang-built-linux@googlegroups.com>;
        Fri, 06 Mar 2020 05:33:30 -0800 (PST)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A91361063;
	Fri,  6 Mar 2020 05:33:29 -0800 (PST)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CD8843F6CF;
	Fri,  6 Mar 2020 05:33:26 -0800 (PST)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-mips@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	x86@kernel.org
Cc: Vincenzo Frascino <vincenzo.frascino@arm.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will.deacon@arm.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Russell King <linux@armlinux.org.uk>,
	Paul Burton <paul.burton@mips.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Andy Lutomirski <luto@kernel.org>,
	Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>,
	Stephen Boyd <sboyd@kernel.org>,
	Mark Salyzyn <salyzyn@android.com>,
	Kees Cook <keescook@chromium.org>,
	Peter Collingbourne <pcc@google.com>,
	Dmitry Safonov <0x7f454c46@gmail.com>,
	Andrei Vagin <avagin@openvz.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Will Deacon <will@kernel.org>
Subject: [PATCH v2 12/20] arm64: Introduce asm/common/processor.h
Date: Fri,  6 Mar 2020 13:32:34 +0000
Message-Id: <20200306133242.26279-13-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200306133242.26279-1-vincenzo.frascino@arm.com>
References: <20200306133242.26279-1-vincenzo.frascino@arm.com>
MIME-Version: 1.0
X-Original-Sender: vincenzo.frascino@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172
 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
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

The vDSO library should only include the necessary headers required for
a userspace library (UAPI and a minimal set of kernel headers). To make
this possible it is necessary to isolate from the kernel headers the
common parts that are strictly necessary to build the library.

Introduce asm/common/processor.h to contain all the arm64 specific
functions that are suitable for vDSO inclusion.

Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 arch/arm64/include/asm/common/processor.h | 31 +++++++++++++++++++++++
 arch/arm64/include/asm/processor.h        | 16 ++----------
 2 files changed, 33 insertions(+), 14 deletions(-)
 create mode 100644 arch/arm64/include/asm/common/processor.h

diff --git a/arch/arm64/include/asm/common/processor.h b/arch/arm64/include/asm/common/processor.h
new file mode 100644
index 000000000000..d02b0f392923
--- /dev/null
+++ b/arch/arm64/include/asm/common/processor.h
@@ -0,0 +1,31 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2020 ARM Ltd.
+ */
+#ifndef __ASM_COMMON_PROCESSOR_H
+#define __ASM_COMMON_PROCESSOR_H
+
+#ifndef __ASSEMBLY__
+
+#include <asm/page-def.h>
+
+#ifdef CONFIG_COMPAT
+#if defined(CONFIG_ARM64_64K_PAGES) && defined(CONFIG_KUSER_HELPERS)
+/*
+ * With CONFIG_ARM64_64K_PAGES enabled, the last page is occupied
+ * by the compat vectors page.
+ */
+#define TASK_SIZE_32		UL(0x100000000)
+#else
+#define TASK_SIZE_32		(UL(0x100000000) - PAGE_SIZE)
+#endif /* CONFIG_ARM64_64K_PAGES */
+#endif /* CONFIG_COMPAT */
+
+static inline void cpu_relax(void)
+{
+	asm volatile("yield" ::: "memory");
+}
+
+#endif /* __ASSEMBLY__ */
+
+#endif /* __ASM_COMMON_PROCESSOR_H */
diff --git a/arch/arm64/include/asm/processor.h b/arch/arm64/include/asm/processor.h
index 5ba63204d078..2866afc33f24 100644
--- a/arch/arm64/include/asm/processor.h
+++ b/arch/arm64/include/asm/processor.h
@@ -28,6 +28,8 @@
 #include <linux/string.h>
 #include <linux/thread_info.h>
 
+#include <common/processor.h>
+
 #include <asm/alternative.h>
 #include <asm/cpufeature.h>
 #include <asm/hw_breakpoint.h>
@@ -47,15 +49,6 @@
 #define TASK_SIZE_64		(UL(1) << vabits_actual)
 
 #ifdef CONFIG_COMPAT
-#if defined(CONFIG_ARM64_64K_PAGES) && defined(CONFIG_KUSER_HELPERS)
-/*
- * With CONFIG_ARM64_64K_PAGES enabled, the last page is occupied
- * by the compat vectors page.
- */
-#define TASK_SIZE_32		UL(0x100000000)
-#else
-#define TASK_SIZE_32		(UL(0x100000000) - PAGE_SIZE)
-#endif /* CONFIG_ARM64_64K_PAGES */
 #define TASK_SIZE		(test_thread_flag(TIF_32BIT) ? \
 				TASK_SIZE_32 : TASK_SIZE_64)
 #define TASK_SIZE_OF(tsk)	(test_tsk_thread_flag(tsk, TIF_32BIT) ? \
@@ -256,11 +249,6 @@ extern void release_thread(struct task_struct *);
 
 unsigned long get_wchan(struct task_struct *p);
 
-static inline void cpu_relax(void)
-{
-	asm volatile("yield" ::: "memory");
-}
-
 /* Thread switching */
 extern struct task_struct *cpu_switch_to(struct task_struct *prev,
 					 struct task_struct *next);
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200306133242.26279-13-vincenzo.frascino%40arm.com.
