Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRB4NS2PZQKGQE2N5EW4Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43d.google.com (mail-wr1-x43d.google.com [IPv6:2a00:1450:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 4289E18D1C9
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Mar 2020 15:55:46 +0100 (CET)
Received: by mail-wr1-x43d.google.com with SMTP id e10sf977144wru.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 20 Mar 2020 07:55:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584716146; cv=pass;
        d=google.com; s=arc-20160816;
        b=Wfdqr5WeyjSMIDK2nPWopqE8diGzY0lAb7aYyrugn+TU2O7Fii22SP9HEiFDp34gCG
         vhJ0goBDfeqrAKDkTyqTeREXxu2mNdqjHOHLC9KjHYoSeB0dsZXQvjJ/VPqbbG83Dj9a
         vohdrnHPPLHncHajgVcbYhd8EPTQybEGYq88h1enXkyTW7xrmcRZ65Vli1seTU1aM9oD
         8iw1MrFZ/MxNspUN2Ccveo0vYNdSQ2h2SV4FEKwn/mweJQ6DyKnOxL9AGUXzKiPtJsNy
         34I5auCHKgDigpC7wNL1wv8STr4tgl/5G3ndj0lKbbuFMQwqDwfKry6+BwmdTSX2wkvs
         XXbw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=Y0dJsjCb68pD8gyn2CrzGsFWF3evfJxeeQDyE+Dod94=;
        b=Op2rFMnMpY8uDIp98ie2vKv03tRQEjJCCDQ0N/UJTdwHxo5foxWeAvCHXgvDTQwXgX
         x3KRxU0a9aejLcFZaM6mqnGuCqgwVDD2DiLzyCvntTdZvOcYLVkRzMbGsd6kzEMbT6jy
         XNNTGQ/3j/bIw7sT8KP1r00tdZnYMQF/KtXETTR78qaRJaAYaF0CRln5C8Ok/03qUd9Q
         UVsYjd64a4GyA8que+nF87Fqu40ERMDbX5ICoCh0DWJX0fVa2EaF5FImzsfGHCnDHX58
         MlB17RG4s401ATw9IVUnKA55qkt3God5mGAXzGUSo4P2VVmx2xGgDkt5ZGXkISzZ46R8
         ++Ig==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Y0dJsjCb68pD8gyn2CrzGsFWF3evfJxeeQDyE+Dod94=;
        b=LF5BrY2rk0hRumGLOnJ0nuQdXVnvMJ1Pi8ysMt4Gn0VrkgG+iF+BC/PW++Yc8FKFV/
         BlXj+Tz0Te4NXdm1zTcGHB6zaOuPcb2GPzMwqtQy/52IrAzdL4DYi67NhNPLekaE0ts2
         oshWs8tYyVZNdirH0Jzhou4ll4+p5X0I4vzUcKotwEw684vY8fEa7YkZpilkj1mQ+2+q
         pB/H77hDUdFh2ZwDlbsTj70rUAD0yp2GY0GFgp1W/TaW0q8SF6+TcOymp9TCjxij1Udw
         nR1Wcgoxivm/LK+BCWvumt40VoMlcBgCIY7QWWjHXI0Fs4STwXdt4kBz434clzW226J+
         pfZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Y0dJsjCb68pD8gyn2CrzGsFWF3evfJxeeQDyE+Dod94=;
        b=G2EonGlNntsKG8GcL45NKtn/+yivLA/mcOHuKlANXtBzMsvMs8ciicOXu29v6o/OwS
         s+OL33BmWqNdsZFCttl8xx9u9V54NKwaKzo8Z/CQIM8QsSscDW7IVzU1FC5C9o+vbblV
         v09BViWIBPxPIQFSFC3SMbnlddpWDJPLEv2lmlZRDZC4C2f0nYKUDX+ot8Vaa2LICVPY
         uPKCKJo6+xMaHT9Ws3anRsB5upjcyqif+a8n+GSoAmSvNYz4VgFYLeJoYBy/ZbMBlKgf
         Fbf+2IFzRqYXY9m4ik7JPynlOzVR/WcdWCK35f9/to6geuFU4D3ZQsVk4psKSHOc/sJ6
         J6mA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1z0ky9hjHgQK5rtCMvsu1hNtuIc4KPeY/CB/zolBUaEcnECfm/
	V5k+Pq8QEhz5G2xF21kYYkg=
X-Google-Smtp-Source: ADFU+vsySO7ARk9E/ZKuKIqy7JlBrV2bD9ki0IW0X5ieQkYL+zlzkkUH90PhnHrnCNdrNO+m71wUnQ==
X-Received: by 2002:a1c:7214:: with SMTP id n20mr10490254wmc.24.1584716145871;
        Fri, 20 Mar 2020 07:55:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:a799:: with SMTP id j25ls2628214wrc.7.gmail; Fri, 20 Mar
 2020 07:55:45 -0700 (PDT)
X-Received: by 2002:a5d:490e:: with SMTP id x14mr12413483wrq.58.1584716145346;
        Fri, 20 Mar 2020 07:55:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584716145; cv=none;
        d=google.com; s=arc-20160816;
        b=x+AbFrrgBsqsRzUQl9+EQgQVsZrau9wB12jSKhzgodlBTaSa9RThNnt6KO6mSlAlGS
         3+wFOukJYJNXUvL+Wxq0Or9eFUJKfJAbUGuGX/SWg+Xrt1C1QsuHBPj6hu9zKdjH4ske
         J883HkCdGKKAQSG7a7yMUmUS03yGJePfRbiXL4KuPTeo0ZCKQsL/ZKkpTZy5btmTkx+X
         Txs1KiADS4d1hljZZgzuEAhiz2NcxvlZRreAkH01oBzKONcF+jB0KwrlXkUWXGp+mssW
         Yr1ghVwoUpTZI3XfIbmcHBstSez1Ng3xaxsq1QoLIFNlldOTfkiAo9uhBZXcJebw5Hvk
         x79A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=7NXTNyDAFcujznKKT51wYrurPxm/cyPuWxIQfdCwyoM=;
        b=szs+B7DwfDPASAY3Me5wE7UyL2Q0X0R9idvXzftMYNlbyWf1mQ23NeQ6HFf7pBU9KY
         TFCM7Q8Wm9FkkhKVF+s3CRqOrlFzA0bg+iMuAfAOZKqoPAzOmOFffKKMU7iZvTX6yOPO
         Qp94PbSZlr+HFNVoBaeXEEROr9Y/2luZ9DeeRrA7R/rb3zTJhDp+uWj2kaJXT94OsSwF
         esu5qtihTfF0Y8OpmGCRik6/puMUTZtP52s0flkdsdvc1iwiUFSOaGR1895Y8AW/wUeJ
         NfjJI2JosYT+Sq81Wax0E+XxtGe/6VeplUDeF6dagKkSBHY2SI7hsuiPlYnwvhkMTGpk
         6EYg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id b81si229849wmc.2.2020.03.20.07.55.45
        for <clang-built-linux@googlegroups.com>;
        Fri, 20 Mar 2020 07:55:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8F97D1045;
	Fri, 20 Mar 2020 07:55:44 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9AB903F792;
	Fri, 20 Mar 2020 07:55:41 -0700 (PDT)
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
	Mark Rutland <Mark.Rutland@arm.com>
Subject: [PATCH v5 19/26] arm64: Introduce asm/vdso/processor.h
Date: Fri, 20 Mar 2020 14:53:44 +0000
Message-Id: <20200320145351.32292-20-vincenzo.frascino@arm.com>
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

The vDSO library should only include the necessary headers required for
a userspace library (UAPI and a minimal set of kernel headers). To make
this possible it is necessary to isolate from the kernel headers the
common parts that are strictly necessary to build the library.

Introduce asm/vdso/processor.h to contain all the arm64 specific
functions that are suitable for vDSO inclusion.

Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
Acked-by: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 arch/arm64/include/asm/processor.h      |  7 ++-----
 arch/arm64/include/asm/vdso/processor.h | 17 +++++++++++++++++
 2 files changed, 19 insertions(+), 5 deletions(-)
 create mode 100644 arch/arm64/include/asm/vdso/processor.h

diff --git a/arch/arm64/include/asm/processor.h b/arch/arm64/include/asm/processor.h
index 5ba63204d078..e51ef2dc5749 100644
--- a/arch/arm64/include/asm/processor.h
+++ b/arch/arm64/include/asm/processor.h
@@ -28,6 +28,8 @@
 #include <linux/string.h>
 #include <linux/thread_info.h>
 
+#include <vdso/processor.h>
+
 #include <asm/alternative.h>
 #include <asm/cpufeature.h>
 #include <asm/hw_breakpoint.h>
@@ -256,11 +258,6 @@ extern void release_thread(struct task_struct *);
 
 unsigned long get_wchan(struct task_struct *p);
 
-static inline void cpu_relax(void)
-{
-	asm volatile("yield" ::: "memory");
-}
-
 /* Thread switching */
 extern struct task_struct *cpu_switch_to(struct task_struct *prev,
 					 struct task_struct *next);
diff --git a/arch/arm64/include/asm/vdso/processor.h b/arch/arm64/include/asm/vdso/processor.h
new file mode 100644
index 000000000000..ff830b766ad2
--- /dev/null
+++ b/arch/arm64/include/asm/vdso/processor.h
@@ -0,0 +1,17 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2020 ARM Ltd.
+ */
+#ifndef __ASM_VDSO_PROCESSOR_H
+#define __ASM_VDSO_PROCESSOR_H
+
+#ifndef __ASSEMBLY__
+
+static inline void cpu_relax(void)
+{
+	asm volatile("yield" ::: "memory");
+}
+
+#endif /* __ASSEMBLY__ */
+
+#endif /* __ASM_VDSO_PROCESSOR_H */
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200320145351.32292-20-vincenzo.frascino%40arm.com.
