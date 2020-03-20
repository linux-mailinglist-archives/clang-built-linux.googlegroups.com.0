Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBVFS2PZQKGQERKGWQDA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 134A218D1AD
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Mar 2020 15:55:17 +0100 (CET)
Received: by mail-wr1-x440.google.com with SMTP id b11sf2737157wru.21
        for <lists+clang-built-linux@lfdr.de>; Fri, 20 Mar 2020 07:55:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584716116; cv=pass;
        d=google.com; s=arc-20160816;
        b=FzcP46Er72rgxM/N9W2anVDX8y/Fkq4yaHoflX81XGJznvEIrj2oBuKUOFvSIzPvD+
         iu66kQf2+H4yVGD3JjgJqdOtVLFAHjF7TBDoGtlxqaa9yeouoQ1h3cOpXfQ3vptMM+7T
         fg7J+uhfWHjwYLiRBts/dLqg9rfDOeeG4Abh4eMtSI9Erq2wihN5DEXkbgzn2rVV2NtX
         IGuYiaRFU425RU5O96p0h1e4T6YNt5fIFRfF4l1RcfN96JpvvIKzT0TnLWnUYrat2Tfr
         wkYlD8p8Wecig15Nq9VRKvQcEh3iEk2KDQH7Le4fN6Uci8UaxKaOl7EM5VAtLcQLROax
         cktQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=pJQjATZxHNIuzfR7s0ObRs+s9Dv3CtZ0TNvGBq/K66k=;
        b=efwrrs751AdL1TOUI4FsU6ziyob79q5jFOhSChs4vgw2q7X+yvHVEl3adWB+qwGGuY
         FLMPCagTp6GeuDb8lDJbbhN5ClnEGsk82mmIHSbXkW3ZTq7VyyLLO5zxKhvGQB4VBbEO
         EoLvf7h/3Lr1Jjx/Dn1c8WigX7+RRjmhbVimPSIONQGggjljrjqRt0qjioy4RRU2119C
         sCBjQlxyQjMNpv8Yv7YvgOogAHIJAgmgNilDtVUTAlUWk+LuxJz8kUbhfqilpKbliyHe
         X5hFsLibcR2MdvKZxQNBeI9QBsSiHkMDFjVIwyihE8ocT5JbsxuCS87T9AFGU+0ekjcL
         Z50Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pJQjATZxHNIuzfR7s0ObRs+s9Dv3CtZ0TNvGBq/K66k=;
        b=m0pOqe/d+HJlAdWXc/TM6ZW/ERUeOVEq0hiRto4HG6vIsB/c7UZEM+CA2SPm4wWsSW
         r7Nq+r+cVF4SiR2h4Vo58VCTlDFr/pSpxWgUjIV14iKIRabcpMUkkFjOeEh41gavUK7y
         dxidLSDr0fHESpfwjFu7yPvQJQPpxDzP7hqYPRvwm+QTgebDaUNgJWbbJQbcpKRLhVeC
         /CrGbH44nOXYiIX4mJKKOu0sdY2yqCmet5Qnw4uBQ9gdYs5LyzUgq1oFLtTbYeM5GoC4
         M3hA0MTHCAb4OOUJ/Zo17JYo0csqqnPFZybhrVVNIOLONmgFTvMyKLIQeDRf1LmX4IRY
         OEdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pJQjATZxHNIuzfR7s0ObRs+s9Dv3CtZ0TNvGBq/K66k=;
        b=Erp6P4fb0Bx80wsueSqu3S4MOjylaugJdPJZHbKU+zwL9RBpu4dB+Tff267eOTnT2s
         wSBUZ5pJrIuSrc0GAv+tqy/wqSH/Ao1bOOrJJREjyxab0zjt6nnX8pf/AXVU8AIhtk4O
         MIwCqku9ny+LaOa6zu7U8xkBJoGC2ionm2TZEe4cYcvw4EQHzBPLb02aJLFlQWPyp4o+
         y4zeFIkXhqdLgvzmoNkKRmJZpQOUvCheeCc8XZR5PngkxBNOH4lWJA/Z7gCDAbai/q5s
         UExYUY2doBPBEPWKKq4QeBUVIIyaVWbeEBylcc3O8l/IfG7kkVvCjPl9N6zCxY1Sf2kc
         M4AA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0ikNviOya0DwDRO3TRUCuSWiCNmt4tU+c2AltSnpokcZv0KSiY
	e4AepdV8xHOejaF8BKP5vM8=
X-Google-Smtp-Source: ADFU+vvZAaTkPOt0w+kh8b7AR/0D1NvbuBVm++6p42xD6PL2WbXBm/SYxa8gR8D7OFXdyNkR9SNU0g==
X-Received: by 2002:a05:600c:22d9:: with SMTP id 25mr10967996wmg.41.1584716116819;
        Fri, 20 Mar 2020 07:55:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:a98b:: with SMTP id s133ls3108695wme.3.gmail; Fri, 20
 Mar 2020 07:55:16 -0700 (PDT)
X-Received: by 2002:a1c:2701:: with SMTP id n1mr10839429wmn.180.1584716116318;
        Fri, 20 Mar 2020 07:55:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584716116; cv=none;
        d=google.com; s=arc-20160816;
        b=czlyDzenJMOm7J3tzDJ5BOXg/f7VLjt3WRE8E2aWNLQPZvFkeDXZBrDB4e+ylzwCqt
         qdn99L44s5HmQogBNog9j2X0lh2eS3UyGtMsFgRotpd404MV14g260G5Em/uA+mMo47T
         NFwMAByjN8Omdloj5b6YC+0yPPQr+RGSnbhO4q6f0RPHTA71FApWY531Vrjc6nuwEh0d
         7dwsaaZAejWEznSiomFH33A9vL9nF2gUI5+bZvTc8D88KX1xTdfSp8/ciDC48ht3Ao2Y
         DUKFNWVvpJgtSDU/qxw4KbbygBvN4acmReqwp9mqQhb8n0aJ/18soTkMcJKR6pKs63t6
         Pz8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=r7MQp9Yp9c27zQDo2jnhYH5VEGO3J90fS1j/2dFhDbg=;
        b=D4aKncAuSdYLfd4gq9/AkEwwOKD32qLUQbo5EsNQlPKRTqPQbR5FJEL3JRzFwWjlwH
         Wtmt2Gsk8oLLjg8AAgq9Lgvpcs9zDJ9cd+lD/2OI45X8H1Ex2g0EGuy/MMzcgiHNbGc9
         yU5wKjd4IS/BPe4JyL8kyd81bZnxEw429I0lXT4vROsx65Hr3KyHtOLCU8/bfMgg9Ifv
         ox2kFOTKAuxsTQ/N9xohzJ1KYmKgaArz5jIs8EUNXezzoDM+uuL6mE0np/E6CeN4z5VQ
         aV8a13Rmsn91U3IyWwO4EDCqP5cUDpAM6ndAZeb2nmzS4DhxoH/cBeIDQ7b2cj0tvmMq
         GCWA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id y185si213463wmd.2.2020.03.20.07.55.16
        for <clang-built-linux@googlegroups.com>;
        Fri, 20 Mar 2020 07:55:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A2EEF7FA;
	Fri, 20 Mar 2020 07:55:15 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id AA9313F792;
	Fri, 20 Mar 2020 07:55:12 -0700 (PDT)
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
Subject: [PATCH v5 10/26] linux/time.h: Extract common header for vDSO
Date: Fri, 20 Mar 2020 14:53:35 +0000
Message-Id: <20200320145351.32292-11-vincenzo.frascino@arm.com>
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

Split time.h into linux and common headers to make the latter suitable
for inclusion in the vDSO library.

Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 include/linux/time.h |  5 +----
 include/vdso/time.h  | 12 ++++++++++++
 2 files changed, 13 insertions(+), 4 deletions(-)
 create mode 100644 include/vdso/time.h

diff --git a/include/linux/time.h b/include/linux/time.h
index 8ef5e5cc9f57..4c325bf44ce0 100644
--- a/include/linux/time.h
+++ b/include/linux/time.h
@@ -111,9 +111,6 @@ static inline bool itimerspec64_valid(const struct itimerspec64 *its)
  */
 #define time_between32(t, l, h) ((u32)(h) - (u32)(l) >= (u32)(t) - (u32)(l))
 
-struct timens_offset {
-	s64	sec;
-	u64	nsec;
-};
+# include <vdso/time.h>
 
 #endif
diff --git a/include/vdso/time.h b/include/vdso/time.h
new file mode 100644
index 000000000000..739f53cd2949
--- /dev/null
+++ b/include/vdso/time.h
@@ -0,0 +1,12 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __VDSO_TIME_H
+#define __VDSO_TIME_H
+
+#include <uapi/linux/types.h>
+
+struct timens_offset {
+	s64	sec;
+	u64	nsec;
+};
+
+#endif /* __VDSO_TIME_H */
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200320145351.32292-11-vincenzo.frascino%40arm.com.
