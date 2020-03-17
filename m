Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBY4CYPZQKGQEU6QAGTI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43a.google.com (mail-wr1-x43a.google.com [IPv6:2a00:1450:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 34ADC1883D1
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 13:24:04 +0100 (CET)
Received: by mail-wr1-x43a.google.com with SMTP id u12sf8163399wrw.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 05:24:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584447844; cv=pass;
        d=google.com; s=arc-20160816;
        b=W1Pl7Ha09MjhL1mpJH7mxzdP5LUfsRiZjPzmCWPa5EfzyoahQBIR4HEfkmebtaiHKK
         oUdCVgzQH9KcChaxDTL/cuGeGdFtkfHLI2aiyfoB5CvJ8LcEzUCMZAkcFKr8aP2aa0yd
         EmIuZLSE/24ctFJny9sS3mxmFnvTKwn+yEFXvr0pWxngH3P5/u//vvhkA0D8ft2eLVyE
         NQdI+d5vt/Lfe3DaWU2lAEp0dRLnV0UkG0UsiY5xqObBtlKA4CNkxpHyw65R1uepKkUu
         uL3e7jrf3ZTPkqhzvbVhP79Gn98UX3M/v3RgypagZLM86thGGenWlVhgF9yJpQMIFQD/
         I9/w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=wrxep5ScciBpVRJwMCGucZuIrvOCjYN9JApGAhO2yHU=;
        b=EkQqMXcUES943TzMC0lwg31JB6H7rqLGUO3n3i5scartbp0qkZuhipwiLOY30/X2Tf
         67BjH06Tm2EWQAn49iDOVKSLYhkYJsO273Y593+ubBTCzqjP0B46dnc4N+qL/wWNUm/K
         Z7KlRz9TJt0GF63TTVqHgQyd0hgWU8Xh9fdQP9N6wzobcJ1do9C4cROa45Q2fzI+wd6A
         yMy07eftUqetoTKohMYPFv4rywH4HGdE14pJesyLZFiNU7eO6BpoDCJgOVmE0sfLmpIv
         qxCC4W+gxaxzZ2GuBv+UP/FupoeZh1r0yaXXM9/H13oQFsixa+kkJbTYEdk3Ymd6mQg9
         kgcg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wrxep5ScciBpVRJwMCGucZuIrvOCjYN9JApGAhO2yHU=;
        b=St2+jtmVp3Jk64hZokfsn14ifObWkm6rr3tjuLeHkK3w0zBFdl5+DLwC3x/wZdIedT
         ObVxBL506WaL75UzAK0E3PoNPXgYZcIH2qO8I/IRdy5XrY1LBsDsqbOIC5zcDr45dyWy
         9Y/37ci6y+J927dghWzGgLTme/W7Yvqb01Str9q2U9sVkVDicvkAGSuUzjdwh5F9Qwk4
         40N0l19wDdp5Z4gBBZelt1oZwO6rITiAfrRFCl4vCis7xutKSNfYCZluH3Oph9pw5JbP
         Rtdl/CStCWDPSC6rlIyLM4ldT8SYCrGkPo69DcZyq1qxKJd+WAOtt+0jf9JfIiU3lXYt
         4HdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wrxep5ScciBpVRJwMCGucZuIrvOCjYN9JApGAhO2yHU=;
        b=hlnBXfFuTP8jd+IVtIOtOoIt/4dYMGR13GYpgSubNnzsrSpL3G9VNIy65Ek1ww1UJh
         fiqMOTn3n5ChNUH2M/HkuSVf8AZgqeZcTIXaTB1OJsH8cExVDWczeiGi7e7SktgbmyKL
         NnrBLZ+JQjBsvWMn3OrDCLdwMxLJa5zFKPGMYYdkS1Umsq51DdOkYjIy+YuPx54gWgIF
         QAemVTHy04MT2e52MjKvIew3QOkccKjRq3t70llXUJfz1EGU8mIaR9M3G6asABMujNdU
         mDxCwhpsExvT0uXZlTi7nrTmSe3YcU42/fOfKhOFKFAneDkRnloaKRm2vRlMWJk78uxy
         mpbg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2AeNwkc3GueTcZdStFuD2P5g0m1ZYTCaMNG/QkWw/4E6222nHq
	yU9KTrF+P6EBYY2XSnfaZYU=
X-Google-Smtp-Source: ADFU+vu2kBtWgWuLWtV8aXqWwiiXj5NLTZhvSXeW5KBKGwEHuI2c5Ai8sir5C8dVm6+eE+ratAJcnQ==
X-Received: by 2002:a05:6000:41:: with SMTP id k1mr6137767wrx.53.1584447843928;
        Tue, 17 Mar 2020 05:24:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:4b06:: with SMTP id y6ls36069wma.3.canary-gmail; Tue, 17
 Mar 2020 05:24:03 -0700 (PDT)
X-Received: by 2002:a1c:e341:: with SMTP id a62mr5355236wmh.121.1584447843407;
        Tue, 17 Mar 2020 05:24:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584447843; cv=none;
        d=google.com; s=arc-20160816;
        b=JEWNeWJHCIS9KyjZiix5oNk9Zg0bTv/r25nfxTq12sjPwt1obLcVNezUyVlrNov7ei
         jZMpcLHoooUHSlSP6KdblJ5J/xeQUra50ZfpYEYWIDaK9Fgl4ebA3y/21+k5LjTlRAXN
         ptzDDXXiXQUEReMY2huqSo3sSXZVzMGR9uVtZoWXXglGf++HyNdVO1REwwIqmcZnazQX
         4QUx6sbplZfYcNwguB/h6++mKKKKB/oBaQ36Uv5y52LdSTBscnO0pizxMYUEVs0sVCeE
         YPyV1yzCA0S3SIKHI7XeccqmLCmxPczHEOrI6NAjVwyFNTWX6XOeVknHr6v8eoQeRpRZ
         Aq6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=miwlY1CrHQGzLFdZ/0PhBszYWVu1K2ZdY8p1eLlpskE=;
        b=loN5tnrEQUhOdVzZ0rezMm3s0qEBRH4Cl1tkVhZj34GuQKCw7MKABQY+Jw4R4Zf20M
         D4fnrpvAgvQN8m6Ql1H7DdTeLMA+JKZSTYB05+6FdARHdUG2wRtTMW5GvAbKSRzV9W8E
         qdnOAsWZ5Q+VXJsxU7uC0RskPTgBKqLZ81Gishf0I8aXk8UcEyxfS92cejdzOcs6HQxQ
         7NBNG4FO2hrmy5mGUD09waReXt5Pij2IQzWCrrB/jihfGw3AUCSIXJCSobu8y0My+ZsI
         iq5d2xiWE+hG+9G1pA/hmUnh0RkwUNDwuP40OMAGoeG51uizkCL/OqVK5HMf2uTz5MSp
         jHLQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id o194si1120165wme.2.2020.03.17.05.24.03
        for <clang-built-linux@googlegroups.com>;
        Tue, 17 Mar 2020 05:24:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 96E4530E;
	Tue, 17 Mar 2020 05:24:02 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 86AAD3F534;
	Tue, 17 Mar 2020 05:23:59 -0700 (PDT)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	linux-mips@vger.kernel.org,
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
	Marc Zyngier <maz@kernel.org>,
	Mark Rutland <Mark.Rutland@arm.com>,
	Paul Burton <paulburton@kernel.org>
Subject: [PATCH v4 22/26] mips: vdso: Enable mips to use common headers
Date: Tue, 17 Mar 2020 12:22:16 +0000
Message-Id: <20200317122220.30393-23-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200317122220.30393-1-vincenzo.frascino@arm.com>
References: <20200317122220.30393-1-vincenzo.frascino@arm.com>
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200317122220.30393-23-vincenzo.frascino%40arm.com.
