Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRB57MSXZAKGQE5IY45AI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x238.google.com (mail-lj1-x238.google.com [IPv6:2a00:1450:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id C64AD15C7A0
	for <lists+clang-built-linux@lfdr.de>; Thu, 13 Feb 2020 17:16:55 +0100 (CET)
Received: by mail-lj1-x238.google.com with SMTP id r14sf2284836ljc.18
        for <lists+clang-built-linux@lfdr.de>; Thu, 13 Feb 2020 08:16:55 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581610615; cv=pass;
        d=google.com; s=arc-20160816;
        b=Oca1kOGlzjsJ2FqSg5wTCMjPX4az4N/q0Q2ohEecFkPR8tn5qp12DFfWEHqn/CoZ8U
         59okJ4FJiP0Fw3R+D9tJIUxGvDNTSJ961W21ZpfByJAa3XfTQHR6L8+9bKmFm9zIBMJr
         MgXdE0/d1G+KxkbzWwBScOfs3TBxLY6er4+Im3utCvxtK1sXTnr7KHkL3p4p19bSba9o
         gJqAiJaKeiH43CjSaabIiBGurnmOhzdzndQan4HfLi6NmE9RNuhL02SrZ8JazaXNPxTw
         SBh/oRccU0KrM1OUrghk+3Ieclf6IMnyt/D/6DTaTumoBmG9TkpvR6WJpWXSFG92npQY
         K1rw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=lAwFlCmbCa9qSuYXlkH5kCIKDEfzlOsAMbixcZT+KDk=;
        b=T+FZAV8kpdqufE8LhGl8sIQYMqoC5gb9oZjcpHYUT7F534RtFB8G5TUtN/yx7pRlDc
         /8cbHkgwErNTm+hVmaOTEjM+cRyDuaAlNLNZqhMYsLz6wU+sy0wNhIgDQv0CC+wQQvB6
         4iaCW1/8r096an1w5J/PtkbbMmmZqx6mEHb2JU5BJT3f61zxoUT33ZUkU6y/pzDCYXyV
         58JNjr8FgGyFkpch7EHxtRU0UgNrvl3+xS3mDgiYruqvjaSZEFQrzg/Z0C6IxKBkr885
         Cv5ISTg2OxqzGrk8WlJaNZuprXTaBkfIKt+lmyn9blI/LGa4Viwex332xi2SOTX3YfX4
         bvwg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lAwFlCmbCa9qSuYXlkH5kCIKDEfzlOsAMbixcZT+KDk=;
        b=LuUQkqQJKwE3IPenJ++4RNnFPxPhIKwiU9cG71nOWFc6h9nCDaJHybmnI80HRSY6Xo
         OCBLxNRCmmO4cnLcyOBDrg4YlmjCkXiePCq2qQgAl3bsc7cePSU7nyzLkOK52gqxEQHp
         Oo3vlSjJG+VRi6oxtrAQkR332kUC32oeebbYngrJWQCs9QpZzZU8r9ZQ9HNmtMNUqeXb
         02WzJNBvnaJ2oKVBkBodnmGVPr9G0Yq0b6yERoU/yEZLuFv+55gHlZ9MJWuGTAf0dmBv
         WxYKzB/T68BxtyhEcETkEllcs7QW5nZMVep0R9l/OTw5vs44l6RP6nFCnDpdFACPECHx
         kPyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lAwFlCmbCa9qSuYXlkH5kCIKDEfzlOsAMbixcZT+KDk=;
        b=kH753Ue6y+YssxXTmlU55OSF/O9tlRKUc7ezeco8uMdzdXpd9pCZhF1ox/LojznHKk
         T8DYe4zuuJMb+y6ZE0is1nkQG3+Q3bUXCSFxo0pA2QudeV9KgvmYI23TREWf9EiVoIQq
         uds7pMG48ebso7PbYtZM8s71pcF7zL/dedNaoPLiUa66D8f8ZzTas480w3H/Y7RFejIH
         c6Wy0/3QhmxIaPeCIAI0efnWPShId7tZAJTdF2+9ZpCUgQbBKthgWqBtfCuiL491MiEI
         n5yzlLd3656DvvbCRliifUXx3ibN4sCw70AHDFnMpxGeBi9MYhBhA/Ytd+mbOzVLn25P
         RDzg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWKZnvNuqrp+ODfvYsDESOEU6FPC8V0+27ggzpeUKGjOp1Ii+ve
	hpeQyg5QvfcWYNgW9vjgRAY=
X-Google-Smtp-Source: APXvYqzoRp0O/bcSMWVQUdi3PsTf2Ed/0pDp4g0W82NypcmPkQFebDPktsttNZi0NPEE/1FCJUCerA==
X-Received: by 2002:a2e:7812:: with SMTP id t18mr12169202ljc.289.1581610615344;
        Thu, 13 Feb 2020 08:16:55 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:518f:: with SMTP id u15ls2753762lfi.3.gmail; Thu, 13 Feb
 2020 08:16:54 -0800 (PST)
X-Received: by 2002:a19:c3c2:: with SMTP id t185mr9872512lff.56.1581610614711;
        Thu, 13 Feb 2020 08:16:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581610614; cv=none;
        d=google.com; s=arc-20160816;
        b=Fr5I2s1bzRXanuw2LK/egc0/3blErd5RGQhSPhffyBtVmBC63hEHceGsGZ8JmBAtqf
         Jgro1+9Nv6nDA+hqKZiZdaANUwr7QAiq/25B2TWn1IUga7ZJV5q1ISyAxfYD17oVin//
         u2szOoXH246zzWrxzExGVj2tFYqN+TREaHccLM8i8CqAWfBVh0n9vUm9/Fjaw2R4hOfE
         7LlCLTcIrGFF+8bd4YVd14+h3KUKieMKx3BkVv+w76wb+g3HwmATBVH+7hPqcDUVkoGh
         T3jTxby66o0RZZjGKj9wuQ0y5PJV1tHsfvRXk3HBC4vBTYOW1FzRPKX7FSIt7Pkj8pDK
         wPyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=xYErZ2u4v0dgbU611s53VEUKOqRinwxv5THB9AkA8MA=;
        b=tIeRyX2SoyQchQIK1atdEoictSEGWHJ/qrIseYyLr1Mjc59pqQgmkub9q52hjkH0SZ
         4dlaypmPa3YGWR1qxjZkhOk4DH5dLf4zOEqbaF2P3w6ya+Zuakh9EQcGPhN3Qdw4QsvC
         sbOQ7v+9+ShiPOxZym7drzJK3pMyGtfOgavqQ462cfMP0ZeATMCt5Ti4KbDQKR2wiSMd
         hYaH1A/Y6OPdYZoxGjohE4mYcOBHwJvuuNkH1+8ExV9BkCWPfAmQNCcA9ViNZFsseefe
         HhV+maLuVHDBaNFMVWmDPnQzaatZKhVUsmGJPFUROSwE0ssn/p8Cg9NbrvANwuCQE/Zg
         LOvg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id b10si150026lfi.1.2020.02.13.08.16.54
        for <clang-built-linux@googlegroups.com>;
        Thu, 13 Feb 2020 08:16:54 -0800 (PST)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DF45F328;
	Thu, 13 Feb 2020 08:16:53 -0800 (PST)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5F1B43F6CF;
	Thu, 13 Feb 2020 08:16:51 -0800 (PST)
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
Subject: [PATCH 04/19] linux/math64.h: Extract common header for vDSO
Date: Thu, 13 Feb 2020 16:15:59 +0000
Message-Id: <20200213161614.23246-5-vincenzo.frascino@arm.com>
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

The vDSO library should only include the necessary headers required for
a userspace library (UAPI and a minimal set of kernel headers). To make
this possible it is necessary to isolate from the kernel headers the
common parts that are strictly necessary to build the library.

Split math64.h into linux and common headers to make the latter suitable
for inclusion in the vDSO library.

Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 include/common/math64.h | 24 ++++++++++++++++++++++++
 include/linux/math64.h  | 20 +-------------------
 2 files changed, 25 insertions(+), 19 deletions(-)
 create mode 100644 include/common/math64.h

diff --git a/include/common/math64.h b/include/common/math64.h
new file mode 100644
index 000000000000..4e1870e40182
--- /dev/null
+++ b/include/common/math64.h
@@ -0,0 +1,24 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __COMMON_MATH64_H
+#define __COMMON_MATH64_H
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
+#endif /* __COMMON_MATH64_H */
diff --git a/include/linux/math64.h b/include/linux/math64.h
index 65bef21cdddb..54eb486b5d1a 100644
--- a/include/linux/math64.h
+++ b/include/linux/math64.h
@@ -3,6 +3,7 @@
 #define _LINUX_MATH64_H
 
 #include <linux/types.h>
+#include <common/math64.h>
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
-- 
2.25.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200213161614.23246-5-vincenzo.frascino%40arm.com.
