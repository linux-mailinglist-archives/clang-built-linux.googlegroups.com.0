Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBGHNSXZAKGQEJX34KEY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33a.google.com (mail-wm1-x33a.google.com [IPv6:2a00:1450:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D5FB15C7AF
	for <lists+clang-built-linux@lfdr.de>; Thu, 13 Feb 2020 17:17:28 +0100 (CET)
Received: by mail-wm1-x33a.google.com with SMTP id w12sf2213271wmc.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 13 Feb 2020 08:17:28 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581610648; cv=pass;
        d=google.com; s=arc-20160816;
        b=Vu1Lo6vFhS2LBlHaz+Fz31berAIz/BTmjcAQdJFuoGQfwKpg6+HmjxluGDBqZdstck
         lxYs/pBVcjds1iAAvQeWXlM3jsxhpQ2lDAVM1i7RlVmXEEFJowrybHx4zchjwMsT54Ps
         8N2q7VNg52IR6SECrZ/JMNBapkaHItIFS7jsPbmIY4QAJ++SE3zDO8DkYldRuFWP8rgF
         LLPkCV1SzgN1F3jWAh3CKVhCcc2UiWodpsIyyZUGGk5zF0rKs777cUR6r3OiV3zyb7bH
         GKPuyJ5wnb4ZYWTvZbROt/Y8Yef3d1Kcot1Wvy1otNkD5bvlYrpGMrdzxHvmPuvUxEh2
         HTlw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=bpIdurLJ6Kuen/5JdvB1Z5d9VnXu0rb659EdAZNHbxs=;
        b=MQoRnAF4FHnV3v/2tk28bmvzKNe/nYDgncHCrM/i+Jy0NOAV4xudhho1xamSrH5fd3
         Xflqc+rzQCdDM0YaKbFzLzNLus0ykZiN3xv1dRi6pt7T2+JkEXyGStqvGLnx7skgS4d3
         X7bn32ZI8kt5TNVGRdk0PvsLi2x5MNGSHZoLKcTlvKdGVjsF6Rn6GFgcRwsUXDr/12Pt
         zh2LggwLYixy63FJghiVHpoZd06SZyLoNos292d+2+3WGKjy6Xxgy8wGmZmicQr834s9
         wUGDLs/DyHCQXkmOqn0JFMSvrPNN3hH3fhiLT9Bb6o6o77UtKeAT7+xUNnQVFsYSvH+n
         IEGw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bpIdurLJ6Kuen/5JdvB1Z5d9VnXu0rb659EdAZNHbxs=;
        b=LYlX0tAlWN2zNR1GtcS7C7QSl3k1emR16mTBHjY9zVH4o1skNKmyO/22Rhf9CHrqUr
         aha8rDM9VD5pEHLl2z4/vdi4Kktbop6FWPMyNjhX7tr7AGFlb/PcxXBgEfqD/wFuyUPf
         YLjFaJf2zKyheuJQqzSWS8nVW1hvP1owjzcXRn8U9B3hZCYeXKH+L3rmdnMZSRKK8GG+
         b7zBcSEVMIKgQc4W/Yl58XwkkQbf9PuW52V41JPQSSSQszUkkmJjZcD3jEAKGUYuw1XR
         wzhHRRUdIYob0PDxm9Dq+rTIsWg4MvU0cnA/zl64TuSE7F4WbkWi1DHAfpLvTWcSOGPv
         2dVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bpIdurLJ6Kuen/5JdvB1Z5d9VnXu0rb659EdAZNHbxs=;
        b=X+KtQfGTM7uGTdgOTnLtgnvKuYXqQdfAXZr8SYITDCPiWcfBsvphRThbXZvlAWeGa5
         /jWE1zpyYFwv+j6Wf1hLET2QF4nlzql7F0yvbHMRsft07PH2FCTrFxycD7Ahn+3LZy8P
         uEk+c/MrhEbmGFoBXTMYTsbS3Ifp3xNL69x2fZds1TUCQsH5ay9Zr5iofPHDEpQvLInf
         0VdYHMzO1BOkQfHCoycFmHh5cQMsj0nhS7e3JWh1dXpiO0Oto5KqDMGWOWdKAzS/0VVk
         CLkFz5M5nfOGjACAgNIq0TQgkGxgvkA8HsXjOpLXJzgqyKRJ7vnUK848Ku0urYUnSZBF
         SYmg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVg9OLueOVU9WDWFzwv4vCIMEW3+l+y7gKaU1fnPtTnxTwR9DnX
	kjJ5gTBr4muTNf9sITEl/Eo=
X-Google-Smtp-Source: APXvYqy78WwzqQ0+W4o85x7scc1Xx+Sn4tUiSCUfmF9Obd3CkAMRc5n9hTjJzlOCmJh9S9HnpFubrQ==
X-Received: by 2002:a5d:63c7:: with SMTP id c7mr24342551wrw.158.1581610648261;
        Thu, 13 Feb 2020 08:17:28 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:c0d9:: with SMTP id s25ls3420455wmh.0.gmail; Thu, 13 Feb
 2020 08:17:27 -0800 (PST)
X-Received: by 2002:a1c:cc06:: with SMTP id h6mr6809660wmb.118.1581610647609;
        Thu, 13 Feb 2020 08:17:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581610647; cv=none;
        d=google.com; s=arc-20160816;
        b=Gvu3rxDfJ3Hnz6LzHRkQRTg+NfGFc7ohax/fCqpTZ7Xmg/N7TKLd3wElKgVAVhH3xf
         vwII/ezEMM21NqowzYFqIgnRVafzmvkLVl27HsN0NautNdkv/SBGdcrehGaHK9fdbQs6
         knN+5uUCjjBOde0EApMgZOJdSHlA993aPu4qpgT1I7D0VtwlBONN6iryxiCLNjoz63S1
         qwdOW+iUGc6+qhj+DxDphxUTVGQpdb5guoCkMKwOgkYyNvcVDiz1/f3BEjvLVD7aV5wV
         8nO7eswiPkFOTjNeh2+pKj+d43IuMB4R5QSxZIZHycyeWOmfpsd43agP65lOcBa9td4Q
         6Auw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=ZcbpZIEDVdb3ditctUbncRIq4xHkEBAAFfTt9yoyjD4=;
        b=tSIIsFx6klrnWenbbuyj0bYhCaIvd0tPn4/XAq7Oj5bOFR/D0WNw9eT0bt4QtYWbBa
         c7A3FwBBGzUTgXg7iNpVbAeheeqYC3AF137QcaBlBFgxL3VZ0FoC8l1DcioV0WiRMYkH
         wKsUNdXzcXWjJaJb9C3FYulPIY7YdnfxRWLSCr/gfbxP3dqSQ5FY2AbJyOul0Q0rSc15
         D/J4yTcevlievMTofAeDl45SWhs8CkbUaqSeLcdmqSIPbXRNkFGz+Cq9akOdBXxSv8MU
         o/z1sURRqk7xMySVcW+KNZafXnhJb/V88O4DsZGoh+ibsT2CgJFFjOJ8IZOsvkyGFf/p
         m5UA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id d14si114586wru.1.2020.02.13.08.17.27
        for <clang-built-linux@googlegroups.com>;
        Thu, 13 Feb 2020 08:17:27 -0800 (PST)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E21A9328;
	Thu, 13 Feb 2020 08:17:26 -0800 (PST)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5F9E03F6CF;
	Thu, 13 Feb 2020 08:17:24 -0800 (PST)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-mips@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	x86@kernel.org
Cc: catalin.marinas@arm.com,
	will.deacon@arm.com,
	arnd@arndb.de,
	linux@armlinux.org.uk,
	paul.burton@mips.com,
	tglx@linutronix.de,
	luto@kernel.org,
	mingo@redhat.com,
	bp@alien8.de,
	sboyd@kernel.org,
	salyzyn@android.com,
	pcc@google.com,
	0x7f454c46@gmail.com,
	ndesaulniers@google.com,
	avagin@openvz.org
Subject: [PATCH 16/19] x86: vdso: Enable x86 to use common headers
Date: Thu, 13 Feb 2020 16:16:11 +0000
Message-Id: <20200213161614.23246-17-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200213161614.23246-1-vincenzo.frascino@arm.com>
References: <20200213161614.23246-1-vincenzo.frascino@arm.com>
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
 arch/x86/include/asm/common/processor.h | 23 +++++++++++++++++++++++
 arch/x86/include/asm/processor.h        | 12 +-----------
 2 files changed, 24 insertions(+), 11 deletions(-)
 create mode 100644 arch/x86/include/asm/common/processor.h

diff --git a/arch/x86/include/asm/common/processor.h b/arch/x86/include/asm/common/processor.h
new file mode 100644
index 000000000000..60ca2ee6e672
--- /dev/null
+++ b/arch/x86/include/asm/common/processor.h
@@ -0,0 +1,23 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2020 ARM Ltd.
+ */
+#ifndef __ASM_COMMON_PROCESSOR_H
+#define __ASM_COMMON_PROCESSOR_H
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
+#endif /* __ASM_COMMON_PROCESSOR_H */
diff --git a/arch/x86/include/asm/processor.h b/arch/x86/include/asm/processor.h
index 09705ccc393c..d66c5dd42cff 100644
--- a/arch/x86/include/asm/processor.h
+++ b/arch/x86/include/asm/processor.h
@@ -26,6 +26,7 @@ struct vm86;
 #include <asm/fpu/types.h>
 #include <asm/unwind_hints.h>
 #include <asm/vmxfeatures.h>
+#include <asm/common/processor.h>
 
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
-- 
2.25.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200213161614.23246-17-vincenzo.frascino%40arm.com.
