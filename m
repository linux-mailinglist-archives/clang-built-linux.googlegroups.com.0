Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBZFS2PZQKGQETCDKOQQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23f.google.com (mail-lj1-x23f.google.com [IPv6:2a00:1450:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id BDA7F18D1C1
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Mar 2020 15:55:33 +0100 (CET)
Received: by mail-lj1-x23f.google.com with SMTP id i7sf1028259ljg.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 20 Mar 2020 07:55:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584716133; cv=pass;
        d=google.com; s=arc-20160816;
        b=fzpKgZriBOw7Q400KBQidjVDC0Lh9Zq8jjtxVhq8KqW1vEuO6hEryVcmPL52JptD96
         WSaM9c2x2qI64N1aNAUjjzARLio6Y6rZGtyK3fkuuQvb577EYtKoNp0yGDzIAux2VI0K
         EZZTx4BZMx9aw4vfvoEWirXHv3b1KUkyLu8U2ZSHsJw7WW9d4zcZGHDTwSIiKZaMOYee
         C9fk2+0gLnWG3WcnbDA0nyYQGKlTZzwkLh8IGZsvIUoQpR6l72zOZt+45T+0zQ1uY+jk
         RrZa/L7Za3z7kTH2Udxp96prfu9DbBBkot5dUR2GqU+kLZbd9VLe1JMncx+9+71VMmVO
         CIGQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=r1ceZcHo+Qa/jjW20Edpu7Ed3M3EOjrlTv3J2bhoKHA=;
        b=fkgOVC8FtAenDERVPkP7sO1VI0uiUR+gAQVNsdL/PY95/XMPYBkU50u+cZ1wHDYkbV
         oL/w6OYlWZasUkq9jyu4wRhC7yF+LtBB9Y8vqXTXw0rJyrLkkPIISu6p0nC1kwY41rfk
         aydev8cV0iY1jUKxc/qkIzGiTRAqzVhf5WClXXasKz0w2YKgptHNvf5GNCVQTZQ6YT2m
         DmwOpNgoJ/nT/GdtMgIbgLSiOxJTqZwgu8AzsOQ+T1sGp4QBBuFKJFA0avDwFddTOeRJ
         /wUPpRF44LA8JgLj58qm/SAFTFWhQpn9wsZAHh4zawvZ52BFecV6RfIfsXn5oEpmYB1h
         pmkw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=r1ceZcHo+Qa/jjW20Edpu7Ed3M3EOjrlTv3J2bhoKHA=;
        b=Tzq1CE3QK9bhLje65lKWGrT6TBP+Nd7xHlNRlTTy5pWbCUnSSsxMRjQf05o0ZeXXao
         sRftgQpOBrezo8CFl6h+teSVf1xsgvZeeL4jBbXwMObNIfVXA+w3O0MXQ+6zbMm8yzpG
         +mnuRFrGyF/4zfEZD6OSDMadtWMaxjE6aSBC3OTOkDf0qlXEr5IZ2C/L9+0j7JIV2EZ1
         je32rydT4K/JXNhRgnm7W+suoypEQbAQ63GCnsu4oxxZrhZY9evQZhG5HftecjHTrOyr
         gl4Jl4he5FLnaN4Vy8PKjJasD5DWl/agCGtnuYvtc1CVGRecuq4kByQ3Zmp5977lGCOB
         F9Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=r1ceZcHo+Qa/jjW20Edpu7Ed3M3EOjrlTv3J2bhoKHA=;
        b=EHKXapmAjl1ZSxT2fgG4lJbNBozUmQOZ/nloMPCi9Mz9kz/hAYeAexyyXvJNPZGiGZ
         MTUlwa+6mueDjr8QU4REkuudmOas+qp66BzsS40WKDBHfyw8wyaLmcdefvCb5DBDeKIy
         umUrQy/K+z56rX7QryPGHE72igEoy1tXavEW/YriWfaFg5AsEgIgBgi32qllk61paovv
         xVpXglewiuYasESh4lJ6WG6PltnGXF1r7zOdsMHuBuWTvqj/QWQJU036cs9gli9IISSU
         eNvruiea9mgcqkx7bkjhttpBfnSdeLcMZOzy9rbsAockh1tQPZ7mj/A7nS6gFg3NTjju
         LxcQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0FarX7tAIAkAuOl0662oLMzmQAIS8L9ucDLbD6yFQSczxNhvkz
	qKoHua6lmU7GQLE10jwGYTQ=
X-Google-Smtp-Source: ADFU+vsvb3NLA0k8GrzRkNr2w92wYk0pY2ZZc4jQVVp6O8d2X3QbMDz8jhlXaUZ3Euf0rx74W8r9mw==
X-Received: by 2002:ac2:51a3:: with SMTP id f3mr5683946lfk.170.1584716133217;
        Fri, 20 Mar 2020 07:55:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:95c8:: with SMTP id y8ls1356878ljh.2.gmail; Fri, 20 Mar
 2020 07:55:32 -0700 (PDT)
X-Received: by 2002:a2e:7401:: with SMTP id p1mr5661739ljc.279.1584716132431;
        Fri, 20 Mar 2020 07:55:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584716132; cv=none;
        d=google.com; s=arc-20160816;
        b=cP2gU6pYCDkfGNbdeyD2OYmxOZB/YMJD4TN2CauyATv0pZkUTgjaRcbXrogA98BP4e
         5zGl4GiOtVZv8YR119mK2hGpSRNPgToNaF/IZPWOAdCavcikFadBzm2AhWJlXeRU3Co6
         +mzVLUKX/f9VU33MlrOC8A8QrlTWpX9j2ryzwepy2wDx2vjkPk10x5pY6HACPburfVW8
         N4zFkwre0gr64G6zskmhzIBPlK6BRUBlS/HSeJajtIMzFn88eYqG2qaDlzrHeKRKu+6S
         UQk9rPHGvzLxuWxWfTTOgyKAWn0EKMoaDXn5CQskaQ0K7M8QRf7PIFv+zD9S2gVlcSqE
         EAow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=s3+ZBCdfB0gUXHkjDCuXi02pnCgnP9fL2S6LLjteV6k=;
        b=S7rXtoErkeDoiBZjrhGP5I5CU2eK6/Hyx0X0gDFBy0SXWL/zkhrwNb7ZtwZC2V+i4s
         I4vIAHRJK02mrGrK2z/DLh6mgDYNU5tpqOPTR6Gz1wGrMNNTjP3F/HnuOEaaAEC/8IMf
         EJzaaGD1lQtWZ4MsIrKC0vvSyGSVj39oi8uYoXW1bHu1lqRhSskNaR0Alll+ebkkZpwV
         c4ReIAZPJPCqPBYa2q6gKPGD0yQVTYxxKnL+RiaWrOu83s+7OKR8ROaE/kFCDsd9cfGY
         CRpx7DJsowBLOTPQ74cspDAcnqU96JzfiU3vIoa79aoDmXAviMr9aP15aMErNwA+Y75f
         wLNQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id b26si394589ljk.4.2020.03.20.07.55.32
        for <clang-built-linux@googlegroups.com>;
        Fri, 20 Mar 2020 07:55:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8499B1063;
	Fri, 20 Mar 2020 07:55:31 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8F21D3F792;
	Fri, 20 Mar 2020 07:55:28 -0700 (PDT)
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
Subject: [PATCH v5 15/26] common: Introduce processor.h
Date: Fri, 20 Mar 2020 14:53:40 +0000
Message-Id: <20200320145351.32292-16-vincenzo.frascino@arm.com>
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

Introduce processor.h to contain all the processor specific functions
that are suitable for vDSO inclusion.

Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 include/vdso/processor.h | 14 ++++++++++++++
 1 file changed, 14 insertions(+)
 create mode 100644 include/vdso/processor.h

diff --git a/include/vdso/processor.h b/include/vdso/processor.h
new file mode 100644
index 000000000000..fbe8265ea3c4
--- /dev/null
+++ b/include/vdso/processor.h
@@ -0,0 +1,14 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2020 ARM Ltd.
+ */
+#ifndef __VDSO_PROCESSOR_H
+#define __VDSO_PROCESSOR_H
+
+#ifndef __ASSEMBLY__
+
+#include <asm/vdso/processor.h>
+
+#endif /* __ASSEMBLY__ */
+
+#endif /* __VDSO_PROCESSOR_H */
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200320145351.32292-16-vincenzo.frascino%40arm.com.
