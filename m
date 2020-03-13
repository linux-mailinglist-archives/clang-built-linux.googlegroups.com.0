Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBDWVV3ZQKGQEXUCIPJI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x239.google.com (mail-lj1-x239.google.com [IPv6:2a00:1450:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id ED583184B3A
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Mar 2020 16:45:18 +0100 (CET)
Received: by mail-lj1-x239.google.com with SMTP id o21sf1503905ljc.18
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Mar 2020 08:45:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584114318; cv=pass;
        d=google.com; s=arc-20160816;
        b=icbnvmKJoeCy/VBhpsNmdlZ49hVS6y5Z2gfFJbo0xe1hJfGFlkbOcJhCEqfxVmJ7R9
         eSUrNImQ/ZE18mPRtdaQz1CaSt8mCCmnxEuFWBZ31HCevHdSxSjAFzlLFhCsKR9ICEkR
         8943IjafSdfR6VToCDAVooGonhiPYtnKoZiKTRi+mEhBS+67OyggfRpvBoouw80Ql94d
         RtziuxRT6Zc3JsZv7t1mrqC2dq/BpVp/riWdxw4F1BiK9lPnxlkpx/aqjth/nCkKBpKz
         MBwojr66gfhk2GwUUFKD/hCTjT+mPG1USRLkYPK3UJDrh56auN/UBw9jZ0vFojuzPV6T
         zS5g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=7qxSI+k1onvea6kZSGp26/ExfwNSZyHcEjjMCVKDwwg=;
        b=G6JQ2hUFAJHQnbeotR6kPHgCAAFAY6HwEmEA+iOiN0qBgap7pv2kglkoYBPNhn6R2K
         cZY3sHVPAEF5pTVrLBuljWu2Jn7C/8HoLxt5lRm2SKqg2PfcHTr8tql5No5ESANHZObZ
         NOrKaMtNvS0q8FS3CenRbKCSFFi/Zr2Tpu2URMkwvvWUi7FOUyhz1DU5WbH5dV/5vnUa
         TK/XhbfV56vyB6QOcJFYyFHbz8KwWfKpVPauQv+g8YaC/l4UK0ca3qPDb0UehrJKuE9E
         X0lu9zkx4qnFLQ6P8yeVRJTOoiMfvQJJONJ0SM4zmjPYXlCndok+Ajcoie3XYFWPfDsO
         1IwA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7qxSI+k1onvea6kZSGp26/ExfwNSZyHcEjjMCVKDwwg=;
        b=dLO2b2i/4sFonrbCDQTRyl//DOJI6T8o13YFHdjP5kBjXmUP6FBy8X/OiaG6zOOI3k
         Y9ucV4bZ6lqIn5Qrm8yJx+oXNnz66OOvMvxPUI4A2ZVpMzUGSRiR7XtEzZUIy2PwmcpD
         MeKhRqj+f0L+qE8+AfIX5GYxG666/T/iV/BQBVlikLmIzgzAyNxAPw6yPgqJX8apcOPx
         5bh8TY/JPHEUyn1yb+vocqAbCdGYokbSPVE9pk15vKssCB1Y7hkThbxXWBaWbglvFbt0
         5fYSwG4YXAnGMLfEQWH+rm+TDEE+0uxXg49eOz1BsAotp+vODJ/0I74xS3CmAO+OUS0l
         oJPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7qxSI+k1onvea6kZSGp26/ExfwNSZyHcEjjMCVKDwwg=;
        b=n4hkOQ1gBPofQq+sroJtY5IoKKAEEA+K4uLsp2CjxNE5+ciSd0UiTT/7SetGCeBXsa
         vrlucVrQxpO7Hh9nGJdab2aUVEFsxqdpJOZroHYeUqY9J3x4Z230yM5mU/PCGGXdGzg7
         cpEko1BEB1DqLCPV4XE8NSPxruFiWeuVeazYDMCWwIZoyoVRnQA0QNIB94xiCTQnFzH9
         W2C+wTqYAqZPDCcftduUOo5vENbbUv/xBdvnRz2joNmak1PWOIbHR9VUB2EcN/KagaLi
         fCa10JWOLDybb5LfYah3NQREgFvoLEQklIqF61mU7lvu8QXXFf+LXvwZsjctqNMQMC9V
         llNQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ04yowi8uRoqd9CanDiqmR0hD+JeTdHT3e0l/ajfX7E+ccP2iQi
	x7sss4Al2nhC0CiTGK0qLJ8=
X-Google-Smtp-Source: ADFU+vuNZ8CniWtkcn2esE80/Zt2xEtTVpkoPiW5u8zsqzJSF/OuPC388XacA6T03zlgTpjrtLkQjA==
X-Received: by 2002:a2e:9e16:: with SMTP id e22mr9214438ljk.220.1584114318463;
        Fri, 13 Mar 2020 08:45:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:3188:: with SMTP id i8ls1516710lfe.4.gmail; Fri, 13
 Mar 2020 08:45:17 -0700 (PDT)
X-Received: by 2002:a19:6502:: with SMTP id z2mr7484826lfb.47.1584114317731;
        Fri, 13 Mar 2020 08:45:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584114317; cv=none;
        d=google.com; s=arc-20160816;
        b=i9rG+NCxVrP3rk54M92EGf5tsWi3Kya5CSf+dmrXFCaw8W65rHvMSOSWJBd9QYFbRU
         ELpdN9Rwtn6FocQb9etwkVmr6jEjj3wL6UgI7It0sZpiKDHJiBX+afaiaiGsxFWmQcN+
         pAPlwouq8dWWgVwu1iacbi8Qwbf/rCNv20EqywyjDItCete0waTkNmH+Z7NaJo87nBtU
         sjmdt4SmeYxmHynNs9J91hWnzpmG1gy71j+DuHhMZi0QvU3PGcB13GeQSK4kF5ZgRfO5
         5ky5WzycF4R81RHbZE4NdDCb9f8bO2Tr9x1oIrWh5uZYwPknQSuPzY8BdxehtLTOE0dz
         m9JQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=miwlY1CrHQGzLFdZ/0PhBszYWVu1K2ZdY8p1eLlpskE=;
        b=GUIvbxlA94urVbwGaBsL5rYWLU3OETYOm2PW1AzJtFaNoC/2ZdRq35C/bjBeQrk8rC
         7smKjal3WA5vTI5KndTv5eVujdggvlpd0ipa+VKTpfG4ILOh+h13wn8Rt+OwcXU/3Mvx
         flzpAb4EaxRFoGaJFbE3cNrqE/DVjJ5dG/inM/cTrhaQ25954aLZiIljvb+HMK6Lawvz
         l53TWLWh8xha88TtWqA2JGJmTlfbFJhaVNyJ7HZjsjWecWNNSFxvcSPtlBIAEHADhVo0
         PrcHVArlvS9oIjqSDXxrTFWbRSKohxnmQnfSsLgosnBRvegUqzNMAT14k2sXwh7+/Wum
         4L0w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id c15si423835ljn.3.2020.03.13.08.45.17
        for <clang-built-linux@googlegroups.com>;
        Fri, 13 Mar 2020 08:45:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B94A01045;
	Fri, 13 Mar 2020 08:45:16 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A857D3F67D;
	Fri, 13 Mar 2020 08:45:13 -0700 (PDT)
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
	Marc Zyngier <maz@kernel.org>,
	Mark Rutland <Mark.Rutland@arm.com>,
	Paul Burton <paulburton@kernel.org>
Subject: [PATCH v3 22/26] mips: vdso: Enable mips to use common headers
Date: Fri, 13 Mar 2020 15:43:41 +0000
Message-Id: <20200313154345.56760-23-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200313154345.56760-1-vincenzo.frascino@arm.com>
References: <20200313154345.56760-1-vincenzo.frascino@arm.com>
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200313154345.56760-23-vincenzo.frascino%40arm.com.
