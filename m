Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRB7VS2PZQKGQEESAOFTY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x137.google.com (mail-lf1-x137.google.com [IPv6:2a00:1450:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 747C118D1DA
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Mar 2020 15:55:59 +0100 (CET)
Received: by mail-lf1-x137.google.com with SMTP id r5sf2278926lfm.13
        for <lists+clang-built-linux@lfdr.de>; Fri, 20 Mar 2020 07:55:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584716159; cv=pass;
        d=google.com; s=arc-20160816;
        b=au2dUXw+pZCHl/KS/e2/HYUPXyCg/sDthKGQXRcwGorKifyDqqPOkNqVJDgwkdyfBE
         ngMjukDg3DL7xz1Eil/6nwVIqnjkrmX/1fuF+itDvMmm+Q9iT5w+2a6UHiup6jiLR9Yv
         EfJexwBtsUnEMj/jl/CMQxW73s0pS3KUUNQfHqUWnWcY26ifoRAqgesWQ3Gb6mtgHMbN
         Bl7lSyixcF4VgRAUZClMCxXqZku/RLVWmDeJ44v4hX+aRPf4vRtDvjy7t8CsiR2j+wk+
         NSVCyagRdr52MKzW9jNn65hdq9XvELyP6PlSiWPo4zV4vUG/QvdiZLCMcssEoO9B3Ts0
         +m1w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=D7odycRO+1+bWGaxmrtjCf49tyylKIH3H7b2/KY0mMA=;
        b=wu1lAeoE/wxCxB6SYL3qq6PAFSEBI4PjTyJ2089bDAq/KZz/ZDr5FrgAgD1g/vkk3J
         WIXTUcSa7VKIXyPcmQHPjEQyF0Q6AUkB7iwixfq0eDkq5Kiplq0cyNzTyNbI8p42OwNG
         RtUOTbVi6VCXRA+r9bJzxC3fZ8sT7+X4lDH98aaiDwEqd58Z0D1zw0pINKlPe2pbXBeI
         C54smYvgP6P2+nW/oHK+Vxx83qDIMSKuy8sFy5AtGVZ1df5Eg6tmOp5tQjEtBpQIH/Bg
         7CdRTM1FUO+zTj5TwB6J//Fn6BASTM2hbjBpKU+HoSvwZ/DYE0VF6t50RN4dhAKtnzB6
         Nwag==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=D7odycRO+1+bWGaxmrtjCf49tyylKIH3H7b2/KY0mMA=;
        b=KKdbv1LdxTrP/wiTvMy149IdPQD2xeEfcBQCrRhyPC4Wx5r3ozYvPKb1GGSXa1sxyB
         oiQ2NSt0iB4Ux5vb1jyHU+LpBbBwISPTtNhXYKNVvx7XsR/nIXfsGm59nwIel2YL7hW6
         g2czFvwQPR4IQDGPTFGE3h7yQeOQ0bVVhczLGaGxM09sErb7e1bPjQwcvsvC01ybP3Ge
         n69q8Q1gNVTaf4xdYhr3sPbjUYkpN9MwuS7uwuqb/5dMJUNYqRS1EDIh0NNt77yEuqmv
         zrl7huTpiHQWir2qfZb8MqJ5oLmwiI2Nju/6qwI1q41jqts/KiNyMLPUpTHOybO+d39Z
         qqeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=D7odycRO+1+bWGaxmrtjCf49tyylKIH3H7b2/KY0mMA=;
        b=Sr3Dvkwss9Gw3KKFlNDcIrOYNO0PRDd5krUwWc+9uVm2hbqvge8i3XwfLYubLAMzbN
         DwW+sm6taN0DPzfmbVA5PNQHdDoghh4cGMgQeaaqBuDQZw/4u6UJdwlZKQeAbwJuPIRX
         +oy6k8hp8imHYx3/Rvtp1JvF/alXMrxKmcSGHv1RQOYAOTQpVJTfnLJTYrJy+1liLrte
         R6jdBzT0F3VcKiJntG3MY6t/R/43E3PJjG1fu1S55YMM3vdqcNCs+LP1NbC7zLT/Fj7A
         0+0+9Zkv4CozTjFPVXLLoQcfm6R1ZyBK220e7axqcQoP+0TjhYd+6Iw5T/CUFA+WrssO
         vnVw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2AuD/p4AJjUWPvGTUfwEVA3DuLcLGAxRC80d1+HBdO4AlEZv23
	m/LuHccuXtasGKcPspxVbnY=
X-Google-Smtp-Source: ADFU+vsH/GCseFjQdS78u00V+kV6iI4p3YFU6aXNIN3bM+JshjnKKGCfdbqZLvn1/F9TaSS9RzIK1w==
X-Received: by 2002:a05:651c:1139:: with SMTP id e25mr5562090ljo.261.1584716159011;
        Fri, 20 Mar 2020 07:55:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:8607:: with SMTP id i7ls751370lfd.0.gmail; Fri, 20 Mar
 2020 07:55:58 -0700 (PDT)
X-Received: by 2002:ac2:4476:: with SMTP id y22mr5501247lfl.61.1584716158396;
        Fri, 20 Mar 2020 07:55:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584716158; cv=none;
        d=google.com; s=arc-20160816;
        b=W6C0h584R/huMcOswryxPBCcgZrjjeLxCqJ0CSwfbBQHTuu6eVkoJ+/OMeU4bJBclq
         HdFM6Uk/xuM5FhjmI9UhVBipyG+yuOSfMTXx5T29bYiZnBPku+U5VbbKS/h7vffSy8Cy
         jm0v2Gvf/F9ZiqnTAt7muU4rvlbiAQqehB5DcOdrcrO/qJOS0wito+iMnv0Ww2+WVcRD
         Vfgx28oC2c5/7ldxJsscO4R3vhaKBTdT3iXIX6qO829ROCi3+ceOgAfKGbihxB4PsfB5
         0q3cOqExzg2ql+OfemW/I90jUpk0+akNUs67EzR04i72k6Jb326tfG/TJRUdtzhk7grZ
         Kciw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=rGJeW2m/dSGsKIkppqiFUcD39GN0lRj2PQKqHudCdIw=;
        b=M+0woRTZyZ//f4zyjO9wMkhI1DYzakkWv1LQOHcLD+6ltDfEG1+vTEg2+7QX4d5D+L
         RGvCrWtDDCpbKAUrqigKXZuyXr4+fOY62wtDVOAZ150uP5n8CYbs94BGkLJ/DKRORIVp
         Qfa0FTH7NL8IE+3dad1F5cYxojq2kUqhz5rtGDmcVKICAANytG2VLI1HRTtNWrV1qPNc
         jgVw/gsgFpD9Mv7AF2hGhJs/haq+Q3/RAJ8LjhKFWYYFePBZ4qe2ULg/QQ4gJxFR5d4C
         6nlQd4D7/DQspa2qsl29aoyTIsFF1tL8GrHRMxoljywR9KjPcO0KwhLDGW3dEk8Md9Ut
         ehMQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id a21si432689lff.3.2020.03.20.07.55.58
        for <clang-built-linux@googlegroups.com>;
        Fri, 20 Mar 2020 07:55:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 661A71045;
	Fri, 20 Mar 2020 07:55:57 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6F4D13F792;
	Fri, 20 Mar 2020 07:55:54 -0700 (PDT)
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
Subject: [PATCH v5 23/26] x86: vdso: Enable x86 to use common headers
Date: Fri, 20 Mar 2020 14:53:48 +0000
Message-Id: <20200320145351.32292-24-vincenzo.frascino@arm.com>
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

Enable x86 to use only the common headers in the implementation
of the vDSO library.

Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Andy Lutomirski <luto@kernel.org>
Cc: Ingo Molnar <mingo@redhat.com>
Cc: Borislav Petkov <bp@alien8.de>
Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 arch/x86/include/asm/processor.h      | 12 +-----------
 arch/x86/include/asm/vdso/processor.h | 23 +++++++++++++++++++++++
 2 files changed, 24 insertions(+), 11 deletions(-)
 create mode 100644 arch/x86/include/asm/vdso/processor.h

diff --git a/arch/x86/include/asm/processor.h b/arch/x86/include/asm/processor.h
index 09705ccc393c..94789db550df 100644
--- a/arch/x86/include/asm/processor.h
+++ b/arch/x86/include/asm/processor.h
@@ -26,6 +26,7 @@ struct vm86;
 #include <asm/fpu/types.h>
 #include <asm/unwind_hints.h>
 #include <asm/vmxfeatures.h>
+#include <asm/vdso/processor.h>
 
 #include <linux/personality.h>
 #include <linux/cache.h>
@@ -677,17 +678,6 @@ static inline unsigned int cpuid_edx(unsigned int op)
 	return edx;
 }
 
-/* REP NOP (PAUSE) is a good thing to insert into busy-wait loops. */
-static __always_inline void rep_nop(void)
-{
-	asm volatile("rep; nop" ::: "memory");
-}
-
-static __always_inline void cpu_relax(void)
-{
-	rep_nop();
-}
-
 /*
  * This function forces the icache and prefetched instruction stream to
  * catch up with reality in two very specific cases:
diff --git a/arch/x86/include/asm/vdso/processor.h b/arch/x86/include/asm/vdso/processor.h
new file mode 100644
index 000000000000..57b1a7034c64
--- /dev/null
+++ b/arch/x86/include/asm/vdso/processor.h
@@ -0,0 +1,23 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2020 ARM Ltd.
+ */
+#ifndef __ASM_VDSO_PROCESSOR_H
+#define __ASM_VDSO_PROCESSOR_H
+
+#ifndef __ASSEMBLY__
+
+/* REP NOP (PAUSE) is a good thing to insert into busy-wait loops. */
+static __always_inline void rep_nop(void)
+{
+	asm volatile("rep; nop" ::: "memory");
+}
+
+static __always_inline void cpu_relax(void)
+{
+	rep_nop();
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200320145351.32292-24-vincenzo.frascino%40arm.com.
