Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRB65S2PZQKGQE6RZDD6Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43f.google.com (mail-wr1-x43f.google.com [IPv6:2a00:1450:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id CF0C918D1CF
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Mar 2020 15:55:55 +0100 (CET)
Received: by mail-wr1-x43f.google.com with SMTP id v7sf2785456wrp.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 20 Mar 2020 07:55:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584716155; cv=pass;
        d=google.com; s=arc-20160816;
        b=tTvdLhAViTwG3ECti2nnpYwTdkjMxEWXz9HZJA8OcR5xMyKpSZsEw3OHo2AhLZXEj3
         5xLzS0J7p5CELcm5ftJUn62pvk7IX+JgJ1BBVhCW7DSve7EEiweypTXklIJZcSv6QdMQ
         5OBgkNoYh9mBvWIJtRsP1m4M9HDjMpKhyMegz2+BKO6dgKuf3ha5vakqlTcd8pSLQtGa
         voLcGaTYNLviJnhc9AFRCBHAw2ly1HeZEK6v/CShgcJ/xMiCDDwqq42nRbUefe943ldm
         TZOH9XuLNqlhDdSdXXbNmBc8yOuPJBG5Sq2J9aeojJ46+sbfrD4va7cK1iRD5HI0y/3W
         Hrmw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=vMCcGKtjnwjN7Qc5d4+92U3gSVx+yA+YnGiMHlLqJU0=;
        b=t2+bwUp/kdvJ+cwLgP32vB4PyOmtw6VfxQ/VWEMoDtIw8j9R3+UMDW/nZ9bKuat5it
         bEcbNDno5vON6A9hHCr7/NJhE8YzlKzuajWm8l2W/suYiswTKlBiINPWvOVohVV5VCCr
         dwjoA1NXFJxybrzNn+rSpcVhf6UzAmZcA9Z6cuJHbM+mUmYFmPkd9x4IQcz/z0153JUF
         fW4Ro/IZsgfJeEPgwDY428Dzsql9cOEsB9PKI4mLhjjLRBiIucDCvjfkQlFVcnoqDGEH
         dh/z405ScZJsf1+W9vMdK0Eh/ZpBfReh9fZtlV0LKGChdlBTwM/IN/bbQ5QG0tZD34pv
         EnMA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vMCcGKtjnwjN7Qc5d4+92U3gSVx+yA+YnGiMHlLqJU0=;
        b=rBgohoNOGcyjS81MYlwOo0l0vzBmaOcM9qSDzSH5avnrxlW1uvz8YivIMbKomFMStE
         zpL6ndYWme1nQyykkPwxLNq9JeO1oIzBRHvMV84W4ybQPNRtJPZMMIBkQ2mV4A75ur2D
         vyYNQJHsJkyFXmbeYmb8646+g2tpCv364GMuoGXjjnLSi2cuBDNm/IK7KFbgkTtMUy2d
         jhi/vuAIoOc39zvvDY+8j0dQkQu2/04bjmktMZgj0FWKcCgBDtuRKsvFXz6ld1Gcv60Y
         t1Ntwe4QHG0KjeMj+YDNyQAM+S4xYkrQv6up6h7mY7AAPN7c3MmK9bEHOSVDMpqUp0qo
         uQIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vMCcGKtjnwjN7Qc5d4+92U3gSVx+yA+YnGiMHlLqJU0=;
        b=EsbtW7tPuPhfxiQ/rcB1GuA4aY4KWsww03LZ717XzxpgIukkANJnenpIDSKUzTQRf2
         Pv8h6DS8LNoa2ihWyrfqvu56YUSE7aIuyaB5EonhQi/VSlzGhsmWiEV96sTLNCQuThPN
         ZpPQOplNIef/AHi6KKqsvGRbK7Nqvi16M6PjM6fi74d+Ujv3fGrDF04XWjdhLv+I7M1w
         tKMshybdxkVNvCH+puZjTCSRy3++Rahgk9lw0GGRa3QkOM62NUOfRUtia2SesZNeujL9
         r32vnSD3pQcVZ9LvPsdzilhPa3X++szQus62dUEeiEo8VvT+uzfZo7cb4PceciZH562e
         91bA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2IF008qJ22ubys8AzFSk6+ZXKhcDrhjqDBoHYJsmYxRd2IiLyi
	20Plzkv+DNCcC+dmVBMW+7A=
X-Google-Smtp-Source: ADFU+vt+g7VGHlNBKc6sDiwYOmLSqPapVtWKvpv8AqqefZACc6jMzd56P4GDNLbeUiUBV/aR+3j5/g==
X-Received: by 2002:adf:c648:: with SMTP id u8mr11888496wrg.185.1584716155562;
        Fri, 20 Mar 2020 07:55:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:bd82:: with SMTP id n124ls3102317wmf.2.gmail; Fri, 20
 Mar 2020 07:55:55 -0700 (PDT)
X-Received: by 2002:a1c:6146:: with SMTP id v67mr11185057wmb.78.1584716154968;
        Fri, 20 Mar 2020 07:55:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584716154; cv=none;
        d=google.com; s=arc-20160816;
        b=jgyOF5WQ29hhAUBqc931/klncfjNvb6243C6YAh8cg38PKVlNxZPL99M27jkcdcMTU
         oGEIVVO6PJAJeV1/ney0aYr03641H4PJ3dHFGXI0HpJ19o05HvU5udVtGkkOp+pXQGGR
         QpPFfhdIQrpRz1fm+Id2PleBOesTATa+XgkxV8HlSPKcrvjIv5bZvOODO6eE/oV1hRqc
         vbJl9voCv45cOnUaLSkRfNC3finBFGAAgzF7my28dP8wRfbHPsxkChjXbm4s2QzgGTOT
         7+qOVYaS3EjJP2uLMFbTdCtl2PVOf043y1+/Msn38VYbL9ukWhzZQeHhAM+0AYfK+7uc
         Fb6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=miwlY1CrHQGzLFdZ/0PhBszYWVu1K2ZdY8p1eLlpskE=;
        b=IqgjPE8GDYCaSqt3qHsFt1wwePYqhAJ9RVwuiYC3O3DYKBNxSHz/RW2WjWFdoofhlv
         vAbpo8fGdsz0kZVTmRHyoStKeOCc65ubaNonoTcI4TbYg0+2L2AP9cHUh2JtVA/EAmff
         9ZNy0d7Z9MhatahBK2/FRMEhRKhtkcp8H279Eau1N3FycvyLojfPL+j3FtF6/hkiH17u
         NiE0Vu/k9OnIzpKuJ8iGMjXZ3JQr1GBBWAl/DiNDCc27r/DbdyWs63uZagIKl6jY3MlR
         P84i1zWFz/kza7uFip/UOTkcpXOSO3nJ1+g6n59+58SEJOIW/RitGWpNVi0/Tm3E2cI8
         cOdQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id e12si232192wru.1.2020.03.20.07.55.54
        for <clang-built-linux@googlegroups.com>;
        Fri, 20 Mar 2020 07:55:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 38DE71FB;
	Fri, 20 Mar 2020 07:55:54 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2917A3F792;
	Fri, 20 Mar 2020 07:55:51 -0700 (PDT)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	linux-mips@vger.kernel.org,
	x86@kernel.org
Cc: Vincenzo Frascino <vincenzo.frascino@arm.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
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
	Marc Zyngier <maz@kernel.org>,
	Mark Rutland <Mark.Rutland@arm.com>,
	Paul Burton <paulburton@kernel.org>
Subject: [PATCH v5 22/26] mips: vdso: Enable mips to use common headers
Date: Fri, 20 Mar 2020 14:53:47 +0000
Message-Id: <20200320145351.32292-23-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200320145351.32292-1-vincenzo.frascino@arm.com>
References: <20200320145351.32292-1-vincenzo.frascino@arm.com>
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

Enable mips to use only the common headers in the implementation of
the vDSO library.

Cc: Paul Burton <paulburton@kernel.org>
Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 arch/mips/include/asm/processor.h         | 16 +-------------
 arch/mips/include/asm/vdso/gettimeofday.h |  4 ----
 arch/mips/include/asm/vdso/processor.h    | 27 +++++++++++++++++++++++
 3 files changed, 28 insertions(+), 19 deletions(-)
 create mode 100644 arch/mips/include/asm/vdso/processor.h

diff --git a/arch/mips/include/asm/processor.h b/arch/mips/include/asm/processor.h
index 7619ad319400..4c9cc667f3ed 100644
--- a/arch/mips/include/asm/processor.h
+++ b/arch/mips/include/asm/processor.h
@@ -22,6 +22,7 @@
 #include <asm/dsemul.h>
 #include <asm/mipsregs.h>
 #include <asm/prefetch.h>
+#include <asm/vdso/processor.h>
 
 /*
  * System setup and hardware flags..
@@ -385,21 +386,6 @@ unsigned long get_wchan(struct task_struct *p);
 #define KSTK_ESP(tsk) (task_pt_regs(tsk)->regs[29])
 #define KSTK_STATUS(tsk) (task_pt_regs(tsk)->cp0_status)
 
-#ifdef CONFIG_CPU_LOONGSON64
-/*
- * Loongson-3's SFB (Store-Fill-Buffer) may buffer writes indefinitely when a
- * tight read loop is executed, because reads take priority over writes & the
- * hardware (incorrectly) doesn't ensure that writes will eventually occur.
- *
- * Since spin loops of any kind should have a cpu_relax() in them, force an SFB
- * flush from cpu_relax() such that any pending writes will become visible as
- * expected.
- */
-#define cpu_relax()	smp_mb()
-#else
-#define cpu_relax()	barrier()
-#endif
-
 /*
  * Return_address is a replacement for __builtin_return_address(count)
  * which on certain architectures cannot reasonably be implemented in GCC
diff --git a/arch/mips/include/asm/vdso/gettimeofday.h b/arch/mips/include/asm/vdso/gettimeofday.h
index 88c3de1bdf22..c63ddcaea54c 100644
--- a/arch/mips/include/asm/vdso/gettimeofday.h
+++ b/arch/mips/include/asm/vdso/gettimeofday.h
@@ -13,12 +13,8 @@
 
 #ifndef __ASSEMBLY__
 
-#include <linux/compiler.h>
-#include <linux/time.h>
-
 #include <asm/vdso/vdso.h>
 #include <asm/clocksource.h>
-#include <asm/io.h>
 #include <asm/unistd.h>
 #include <asm/vdso.h>
 
diff --git a/arch/mips/include/asm/vdso/processor.h b/arch/mips/include/asm/vdso/processor.h
new file mode 100644
index 000000000000..511c95d735e6
--- /dev/null
+++ b/arch/mips/include/asm/vdso/processor.h
@@ -0,0 +1,27 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2020 ARM Ltd.
+ */
+#ifndef __ASM_VDSO_PROCESSOR_H
+#define __ASM_VDSO_PROCESSOR_H
+
+#ifndef __ASSEMBLY__
+
+#ifdef CONFIG_CPU_LOONGSON64
+/*
+ * Loongson-3's SFB (Store-Fill-Buffer) may buffer writes indefinitely when a
+ * tight read loop is executed, because reads take priority over writes & the
+ * hardware (incorrectly) doesn't ensure that writes will eventually occur.
+ *
+ * Since spin loops of any kind should have a cpu_relax() in them, force an SFB
+ * flush from cpu_relax() such that any pending writes will become visible as
+ * expected.
+ */
+#define cpu_relax()	smp_mb()
+#else
+#define cpu_relax()	barrier()
+#endif
+
+#endif /* __ASSEMBLY__ */
+
+#endif /* __ASM_VDSO_PROCESSOR_H */
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200320145351.32292-23-vincenzo.frascino%40arm.com.
