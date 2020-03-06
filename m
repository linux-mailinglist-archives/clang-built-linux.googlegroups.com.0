Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBN5CRHZQKGQE6CZK4HI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id E1CA217BEC4
	for <lists+clang-built-linux@lfdr.de>; Fri,  6 Mar 2020 14:33:43 +0100 (CET)
Received: by mail-wr1-x440.google.com with SMTP id y5sf361770wrq.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Mar 2020 05:33:43 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1583501623; cv=pass;
        d=google.com; s=arc-20160816;
        b=XdnmLLih1WdBzCNK0E+Vba7amklNZRDBfk2nY6toePc7Vh6oFiWxcJomechDzV+v1f
         djIXGmStWYPfnH7v47/GOSTHXOFAcD8pJAJRCNyEVhJQHMvUPX1vCpAfWr7pnOJ3HURu
         RwHw2/GThTygU0dTI/3MrvQQdc4Mz71MVmYp1gYv+qFQmHvubD7N8E6RatvV2vnNPQUw
         9Agi4XDLThTf73JgIwb+cRc3HpU4N8JdrkzdsHiMv3Pqyx4GMXnjYzFzE0mjwyIlL8lw
         vizRHVH7yvysh94qgy4+OSqz4xTL44tdjHELySge6AhUASOZW+Q5qeIax68EMXVNO+C7
         6uPg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=V5+Q5Z3qeaiTqMklAeru+cTBz2QQz8mdeKqDwdBIUyA=;
        b=GPu06Ub0GpnSlYEWBSKXb99hk06ofedzzn+QG9MgqQAxoUxwZoeJF4AfFKFZgz4gM7
         mnHA9/nWEPN26xkB/7xFxcde8r8ck41JgwOOABvwiBvdzJiNqe+ll+9WtqxFKXP3xudB
         B4fJdSuWLSll5xQ3XMv93z5K9HpQVwEtQ7gU02U9IFDtzjhCKPi4Ey1uwkYi6uDeKbpt
         ydqvWpeLoUqpNC0W/S+QX5fYlj3s/Q9k6o62XPRpwgEyFAzpebaN+Rov0zNDTNTKkkOW
         amsOHvCYSJsvzm4k+kxsJCsrKaoyPOBII70hax0XyczKnPLpBHZDttgG7keWatOGZycS
         J38A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=V5+Q5Z3qeaiTqMklAeru+cTBz2QQz8mdeKqDwdBIUyA=;
        b=QV5TwJOYXThJOQxRX+P1N26ifunKe4m5+rb7/lWZ9c8mCSciwr02kENCa8q+elHoO4
         wWfQI94UAc2C6OiPn3AzShS3Pia1i7CRowY+MQQL+CNy+NzZ9tKmxIsQJ+3fc/dEjw21
         iB3xZqGuC4ozbuT519O4KZz83UOybPvthc+nQejESJTI9JKUpHzO11iNLRPxTjQ2r4nx
         gu8I7ixBkSuqCnsdt4ppD+xi7w93YA2XlX5n04S8UQde9hyI+qeaG5ng+2HGWxND+Szj
         AQ0kY74Ea0/8lsZpZRVedmIu4FLT54feKH5o4mNZXkNYcF2Id4zIg/LGcYU1vrO4bn3d
         zD5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=V5+Q5Z3qeaiTqMklAeru+cTBz2QQz8mdeKqDwdBIUyA=;
        b=eFi0rau//wFCQ1mJTng05Nsdopt+1/k3YTnYyhROvWo51vpEXdbfyoGRr2Un+inQtB
         Z7NyGZzyjltXhuYOplF2gV1+McEoBJ7eCrBLBTTJ5V8WGgAyvBq2SsWJHFOXe3Cfz5bc
         oK7cEW2MwZNHmORXDHdStNtgcxv4PbJmgZT4ATm7msQdJpVDAWMI9czVNnylmVobyBhp
         ondfnPbIzHq/z5Y6hWgOFNApU3K4iqMaCxP+OLPXwMEHNSs+5evFANOvDWyMPCBB+bQE
         2/7fuXCtDwQ2kUMDhIVDXorLfu+GyRFGTFZ/IQ3MO2+1oL9s4FLBgHGgfGM+wAtN+A9/
         t2HA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ3iE8qKSjr4ZbBTJSFpsYggLZK5n4vK61zp5GHXXFflvwUgi+pO
	lqr/BN8t/QYRF7eYZo1pafA=
X-Google-Smtp-Source: ADFU+vss1cDNUQSj88jWKn+4zibprLFFTSWWBCXS0cf4yCYOkNtCTCXg8YFwaZWmaIcUFx/mrvVKyA==
X-Received: by 2002:a5d:4a41:: with SMTP id v1mr4189281wrs.205.1583501623684;
        Fri, 06 Mar 2020 05:33:43 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:4441:: with SMTP id x1ls1041204wrr.4.gmail; Fri, 06 Mar
 2020 05:33:43 -0800 (PST)
X-Received: by 2002:adf:fdc2:: with SMTP id i2mr4306420wrs.166.1583501623202;
        Fri, 06 Mar 2020 05:33:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583501623; cv=none;
        d=google.com; s=arc-20160816;
        b=RcFp0syPZfrpSAJq7w2lF8rHHG3XitU7q4UeqXmTwql1/LXLtHnyuxaXOHNUS/uX7W
         qsqJXz0/niL8ROghN8A/QNElkJlgcp70yAjzJlsb3S5rjA5aV+4Rvo88VYp02suP2xw4
         SKgxnRTaUlmMuRF3u/AVLt7YgiZEec8cX+tVOrQMZizocJgmg8F2Kxtih9NSt/t+WcoG
         p1Kvhg16n+VfHljxL+YRSmKRYolVEQsmTqAod7E5kBLmAh6RZb0ZC3xZC2lA8eUPI96J
         JZxaj3i5S3vjowDyhMSIhN+oxqmjLmf2VPSgiay6/2gxqhbs6NwHBSC9jMVWnybrn8gk
         IvIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=mAAhlGvY0DnAXEmTPMPHdr1Lbwi97W0NCLn/EpZRF3w=;
        b=KiQcJu/1Zi744EKWHSgXS5PldS9ndEN2jfoT/tvIIN+iVQvpOfohxyiy7wG0raz0jU
         eQZviO11uV/9nfK+KwZLTuzH8RpzIwlopTrSe50R6tHKw3s5o+XxuNtP9ZwRXgnFI9j2
         ovgQJaAeq+2Ln9fnQ7uQNGVDKZXWH1R+DCFX9Anhp5d5BILdrMJ/uXRLt2cEs2/sL11w
         AR6fhj0bWCdFIwlqhaKQTMK2dQNRWknsGrzu3E0YyXRBNZ4Eai1Clm4EnZgEe72VJ2is
         W3xE4n6fMmzFzaMXmupyrPL6tN9LJiXVv0gdpqWlRxOP8XZyYipiH86fqBv0izzSMxqB
         clhA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id n7si75830wmc.1.2020.03.06.05.33.42
        for <clang-built-linux@googlegroups.com>;
        Fri, 06 Mar 2020 05:33:43 -0800 (PST)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5E0AA1063;
	Fri,  6 Mar 2020 05:33:42 -0800 (PST)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7F30B3F6CF;
	Fri,  6 Mar 2020 05:33:39 -0800 (PST)
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
	Paul Burton <paulburton@kernel.org>
Subject: [PATCH v2 16/20] mips: vdso: Enable mips to use common headers
Date: Fri,  6 Mar 2020 13:32:38 +0000
Message-Id: <20200306133242.26279-17-vincenzo.frascino@arm.com>
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

Enable mips to use only the common headers in the implementation of
the vDSO library.

Cc: Paul Burton <paulburton@kernel.org>
Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 arch/mips/include/asm/common/processor.h  | 27 +++++++++++++++++++++++
 arch/mips/include/asm/processor.h         | 16 +-------------
 arch/mips/include/asm/vdso/gettimeofday.h |  4 ----
 3 files changed, 28 insertions(+), 19 deletions(-)
 create mode 100644 arch/mips/include/asm/common/processor.h

diff --git a/arch/mips/include/asm/common/processor.h b/arch/mips/include/asm/common/processor.h
new file mode 100644
index 000000000000..d2ee5d397d2b
--- /dev/null
+++ b/arch/mips/include/asm/common/processor.h
@@ -0,0 +1,27 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2020 ARM Ltd.
+ */
+#ifndef __ASM_COMMON_PROCESSOR_H
+#define __ASM_COMMON_PROCESSOR_H
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
+#endif /* __ASM_COMMON_PROCESSOR_H */
diff --git a/arch/mips/include/asm/processor.h b/arch/mips/include/asm/processor.h
index 7619ad319400..b7eca25e2066 100644
--- a/arch/mips/include/asm/processor.h
+++ b/arch/mips/include/asm/processor.h
@@ -22,6 +22,7 @@
 #include <asm/dsemul.h>
 #include <asm/mipsregs.h>
 #include <asm/prefetch.h>
+#include <asm/common/processor.h>
 
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
index a58687e26c5d..e8ab2fafe067 100644
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
 
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200306133242.26279-17-vincenzo.frascino%40arm.com.
