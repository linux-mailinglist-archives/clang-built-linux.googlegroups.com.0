Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBUNS2PZQKGQEMDHWPTQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43f.google.com (mail-wr1-x43f.google.com [IPv6:2a00:1450:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 2007A18D1AC
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Mar 2020 15:55:14 +0100 (CET)
Received: by mail-wr1-x43f.google.com with SMTP id q18sf2754197wrw.5
        for <lists+clang-built-linux@lfdr.de>; Fri, 20 Mar 2020 07:55:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584716114; cv=pass;
        d=google.com; s=arc-20160816;
        b=SwCQVEIdauQdf/SYuNwzpBVh79tKYiDkIAY7T62JRzdtJKMFo0sg8pRzJtgDf8Xe2W
         zBK5BoQopPgmOXLU6Iwc0jmgjHDCWJO34+vDLSQlwc1pBMBth7r1siikaex2Dsc5F2Av
         f7JFFJIegVTGpvbbiYKsuPD0wsTREMVPIbljn7DsSwUHlchEBuBJv2pJLgcLi7Qk5c5e
         gcjdnMyU6+G5VM4Snd+6LYB8hnqnEp/KyFLGjf3PrGgFQ/F8eBduLI7vMwzTQP5z3xRj
         5LzLO5qyu5UU2DrmGqpGKywE99Y0mKUXZjuqb2YHvZQo7AM5Fois7rQHvLVYwxP9GQ8x
         tI/Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=LSw3QBxWcVyY1J+CvO0yCisabmvWlBP+Q0IQdH08Gdo=;
        b=WanRPGWjMTfWXzFOHwRZ7ZNsCgUFKPzDF8+SV9jXszElwddSEWTZZFf1srRQ6U83/1
         Ve66MbZKnAkFt7dRzX/joQILgPs4Apjz40dF7kQFPNiGKrRz+C+SzX0kSvynwft4LIMB
         54C+wyNYdXT5cjkzCUS42t9ui5ntlqeo+nwe+i+28WFNudvP9RsTMydyTH77qGz1gASO
         f5002hjAR4VWB2JUTlBEYm6FOaUSYrPY00ngBahkcUiQkgNUg26H/JmIwnh+sqGIKyls
         WutTFJJwwk0tmfsKoRFypjY1E/jgGiuOgsUX8TWOhDmt+v8Cul//kkgQCDPumy6za7T4
         g9hg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LSw3QBxWcVyY1J+CvO0yCisabmvWlBP+Q0IQdH08Gdo=;
        b=jxA2AV70EmTV1U5UC0tAp2jfnCKJHnvD1qWmwhm+ZNgmoRZZPMGRL6Pz1qoMfRTkRY
         oaEEsiJk7vijvq9iyRvSG8nav1c+7TyNEpknRZ7gITjAAi9IUgvevlLpM1pvPTWwYnuQ
         zONHFce5LSBswQKJqo5l191BwBQ1N4dT1QmzxHa9aflHx4pMoDhblE3tAUlKuxtpDl6k
         aTF+iDX2RlHzaSBCe3M9TKyHoJfPR6zwMZhP/jPNgclfOnBuLiwmm/HcIHSgr+2mCV7p
         TOERG4SjUEPus2DstHq2a9ZLIlmsSycPrl2nW28+Hu4HVI8W6TQPvHKxockbXKGANkHl
         FBqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LSw3QBxWcVyY1J+CvO0yCisabmvWlBP+Q0IQdH08Gdo=;
        b=iYnUuh5/zIcCVd0le/A76m39xthQPB8SzJU9a/RdOnwOkfOHYEPayZXwO821bAZhW6
         Q5VNPyxvbT+hgEoqLcuWtQmJGUCDltzG9FdkN/W3MtZCcqReP3tMIKu5fJFV8zGSlNkH
         3HKdXAbwGIW9Cjilbolmt+f+HKVE3dmp6FaZexE5lx2/Dg8QnXCGFZVGNm1Jn8nOQ7HZ
         be0owyX+1c70R6uPXQCV25S6QHuSJPCym8xgCai8JIpfmFBRwX+DiIVyH7TAXTJfAUrn
         RNNzVok/zX4Xrn5ivzIvkAVxDRvnGIAPm5s24v616IsO33s89iJ+0hlzL/MMcC+Gqum+
         dtcw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1jOb05vqCGe+grS1YzS4UPj3a8+ERTFWd/WFFaW3yRRfK7ZRsc
	lQu3KqpIZAqGEihXEXUwvAE=
X-Google-Smtp-Source: ADFU+vuclixw7jKU/t4X0cz6vzCU07Dyu0iAZpJRGvhsjs361G1MFRDz5l0OHtNBeHQ14Dp24xK7Bg==
X-Received: by 2002:adf:a155:: with SMTP id r21mr11693687wrr.264.1584716113743;
        Fri, 20 Mar 2020 07:55:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:4441:: with SMTP id x1ls2631663wrr.4.gmail; Fri, 20 Mar
 2020 07:55:13 -0700 (PDT)
X-Received: by 2002:a05:6000:1205:: with SMTP id e5mr9708022wrx.73.1584716113137;
        Fri, 20 Mar 2020 07:55:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584716113; cv=none;
        d=google.com; s=arc-20160816;
        b=s1PdD2fOlQH2FIn2iYmNynhs5oOOYa3wFQCXcOs5Ox4heE0QNTjzX8rBI85SDelhiZ
         f2QSKB3wx9ltNFX3Exf2PtWWRz+EG/V9Ek6xBpAuEa3PPAHk1pTGkhwrnpUfW2LlIjMS
         4DuVbCDjpU8FE24t4GQSGgDStIrxpcEHwgDKxL55zD+jb98A4+XzhcKjxM9GYb2BVCZ3
         TQbiTGX7JO1gBdiOGlSHEoajwTVqtNfuLRG4vyH9XL9z3ZhvBbFszrXENqfx/DubCeQV
         JzBHzSjie5y85OUgBCqqAS9BSFiRhkt0G8TwrLUayZ2Pmqcbo8JgbHGyWljDF2rGqBGg
         oFYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=GGEHKhLb+PBbYXFkR437kpZSwfjgehAHnEZn+yWa+q4=;
        b=PzFjWTLDxOApRZLJzlh/AxVikDbQdSvHOk/QzcK9pL/mUfp5cFe5jzp4raTISC7G9y
         RAXKvoPpuUP/ic8vASP9Uu0I8yUo1YTMULMF0XJ4xIdm6q1EsJ2bxmd0JwUdKs9jUU7b
         9BuTQ8CkhGTorMe1L7kRWfXCKP+tiSH+RvzNMQQn8zVW6gs96sbz85CDw0tpUyV9rctv
         8GZx3bvA/wz4kP4NceHa3SpcwJvcTazSZXbWdQ1mWDkGihdQApcxLZYfmTzkhQDG4EwR
         wdX8Rv6N1h2yjxYK5Rca4fVrL4d+WKQY5dHEzTFwxlqqkjWtBQP9JsAstROo35CqA3E6
         bhLQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id l16si126260wmg.1.2020.03.20.07.55.13
        for <clang-built-linux@googlegroups.com>;
        Fri, 20 Mar 2020 07:55:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 749641FB;
	Fri, 20 Mar 2020 07:55:12 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7F0E33F792;
	Fri, 20 Mar 2020 07:55:09 -0700 (PDT)
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
Subject: [PATCH v5 09/26] linux/math64.h: Extract common header for vDSO
Date: Fri, 20 Mar 2020 14:53:34 +0000
Message-Id: <20200320145351.32292-10-vincenzo.frascino@arm.com>
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

Split math64.h into linux and common headers to make the latter suitable
for inclusion in the vDSO library.

Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 include/linux/math64.h | 20 +-------------------
 include/vdso/math64.h  | 24 ++++++++++++++++++++++++
 2 files changed, 25 insertions(+), 19 deletions(-)
 create mode 100644 include/vdso/math64.h

diff --git a/include/linux/math64.h b/include/linux/math64.h
index 65bef21cdddb..11a267413e8e 100644
--- a/include/linux/math64.h
+++ b/include/linux/math64.h
@@ -3,6 +3,7 @@
 #define _LINUX_MATH64_H
 
 #include <linux/types.h>
+#include <vdso/math64.h>
 #include <asm/div64.h>
 
 #if BITS_PER_LONG == 64
@@ -142,25 +143,6 @@ static inline s64 div_s64(s64 dividend, s32 divisor)
 
 u32 iter_div_u64_rem(u64 dividend, u32 divisor, u64 *remainder);
 
-static __always_inline u32
-__iter_div_u64_rem(u64 dividend, u32 divisor, u64 *remainder)
-{
-	u32 ret = 0;
-
-	while (dividend >= divisor) {
-		/* The following asm() prevents the compiler from
-		   optimising this loop into a modulo operation.  */
-		asm("" : "+rm"(dividend));
-
-		dividend -= divisor;
-		ret++;
-	}
-
-	*remainder = dividend;
-
-	return ret;
-}
-
 #ifndef mul_u32_u32
 /*
  * Many a GCC version messes this up and generates a 64x64 mult :-(
diff --git a/include/vdso/math64.h b/include/vdso/math64.h
new file mode 100644
index 000000000000..7da703ee5561
--- /dev/null
+++ b/include/vdso/math64.h
@@ -0,0 +1,24 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __VDSO_MATH64_H
+#define __VDSO_MATH64_H
+
+static __always_inline u32
+__iter_div_u64_rem(u64 dividend, u32 divisor, u64 *remainder)
+{
+	u32 ret = 0;
+
+	while (dividend >= divisor) {
+		/* The following asm() prevents the compiler from
+		   optimising this loop into a modulo operation.  */
+		asm("" : "+rm"(dividend));
+
+		dividend -= divisor;
+		ret++;
+	}
+
+	*remainder = dividend;
+
+	return ret;
+}
+
+#endif /* __VDSO_MATH64_H */
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200320145351.32292-10-vincenzo.frascino%40arm.com.
