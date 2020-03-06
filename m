Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBEFCRHZQKGQEQUQKJVI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x337.google.com (mail-wm1-x337.google.com [IPv6:2a00:1450:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 8093B17BE93
	for <lists+clang-built-linux@lfdr.de>; Fri,  6 Mar 2020 14:33:04 +0100 (CET)
Received: by mail-wm1-x337.google.com with SMTP id t2sf642680wmj.2
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Mar 2020 05:33:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1583501584; cv=pass;
        d=google.com; s=arc-20160816;
        b=LNxdPhTt82a54gWVAg0Yt7a88LDw2eczpUzHHcBNTkoJRDafEnmpHt/lDUqD03VlJm
         V9MQQaInSiE9kAnXSFwOVnbGnoT/XVNVjfiBU3BH3BdeR5kzaiMwt8SpO4gJ+meYTxhJ
         Dxc+v6wY30MzIcdYMSxoNK631egADJqASpeuCf7k3jqf9qBwG/ogEH8IKkzrsa44h/fI
         UJlyZEu6mriSMqc7ElBsXZ9uHMWm/nCkw2FJL99lFLn9azNYrowTQ0FIDMLtusOd4On8
         WivbtzcF+qFApRACQkgAQiG97X1SRY6I2+SNOS+4t9V+R6YukfXkbuAu4WBVa8NGsFaZ
         MMHg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=b/J+sjkUoqVJam2GjnS6j7xfO08mcmk3SiIEoMGetbQ=;
        b=Ynx6zkqDkfEo0TyDeetbFiDs4vqR0mZegDXZWk4OyeM80fSyUY+T4bJumbRGo1pnIA
         jMH6rrz9UdjdIEvhio3EUBku7i9YBOX4+yrLz29Br1MCo398Ia+zmxcV8wFfo/lbUIz0
         Mkapuh/gLStEa6KcuoNJpOLmfzQ/zZW+2ey07YvmLKaclHKdybfOuw05NKbIE8BE4WG9
         FhUd/C9rZhpT2vNJLH2ndG4gwG898UKkDiCGq72cX4oZZbTGWCM74uzJWt6DrJriHZ20
         jZKmhF4+nLRK+/7iH7cHOCiiR7HgEm4LzCednptRATs3YwriJ8dc0vO8lVU4Tn4pHP5h
         3sOA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=b/J+sjkUoqVJam2GjnS6j7xfO08mcmk3SiIEoMGetbQ=;
        b=BPwGWqQ0Aqglo0poSbocNSTD0WMTQ3KgwZks4/i7TiwNLCqAnxZser/GZxFukPIbfU
         lyxBpf5EbtCnWgiBAJAHfuwZTbYUmmOoC6O+uL8gkp9Vfdus5ZPyTGJHILkRnvVVTPe9
         OYeGDeEH8+UbveFUB3DEVol5RIAQaP28rhgukAN5D33oLbdzi6JiCIex81wNivjc559x
         BhUFXGPvrx9C6xQQtDuP8JDqokZRW479JPSwSt3OZs7y5ewNzAH3MatgRwkjJTFNFgeW
         1ay2FXLc8mssxnhw2/IqrwZVwXLYtM4JSaT7ygt6WwScuNFUZIB1jmaXZbTE23YlkFSw
         0INQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=b/J+sjkUoqVJam2GjnS6j7xfO08mcmk3SiIEoMGetbQ=;
        b=VN7NqXUU3qlnBpst12JGGcg2GbLnzI1RD3D59hUGmDkiWPfcuztEMgy9fv2xIQUHtd
         Y2J+3FjZOtoI5yLDMY8ULC7QD7ldnTMxOpZtOwEVJarhzO5TAbG3DkQYvafEl5giGUMi
         bMcGILP+ABi9ewoLji3ooQeS4ULSoxH9o6OuTpG9XN/SBg/qcNGy6su9fJ9Oc40gbJwr
         lITmqeE9TJQf0tbrCS0CiJOI8I/mRFIp9TlaZaH1iLkNktuEm4BtLQ/xm30SRbLZmiv8
         yQ6VcqUYQX9tRPN+CR8g9bzucEYlqVTARGYwfw8O55qIlzcm1cBHI/VqsvPgaMT7Tx5T
         DTpA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2LttDOovALVpXHTH+i7ER0fD/9hbE1lhw/z8T8tGirUkDt3Non
	Te9+P0rCVF1xJMVQsbYZD/c=
X-Google-Smtp-Source: ADFU+vuEGvObPvxgKXtUbKBu3v24M9yT4IcFW7G5TEIiPCXUEsPcKiN7nBKLT21hPjf08ipT8EBmQg==
X-Received: by 2002:adf:f588:: with SMTP id f8mr4280950wro.188.1583501584268;
        Fri, 06 Mar 2020 05:33:04 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:c4c6:: with SMTP id g6ls1245928wmk.0.canary-gmail; Fri,
 06 Mar 2020 05:33:03 -0800 (PST)
X-Received: by 2002:a05:600c:404a:: with SMTP id j10mr4090780wmm.33.1583501583584;
        Fri, 06 Mar 2020 05:33:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583501583; cv=none;
        d=google.com; s=arc-20160816;
        b=yQJzmU9ZVnwQIOwbiGyT8HFYp8VHOZSAw3cYl3DDaYsgwMSTxifbd555+XUuZRB6Wz
         FNq9FbOqyUqj6k2qTPcXjh6dajvgIaTQuCFiG3pn9psaH097PcYMKNzHvH/1oqEwSuSJ
         N0p/9TwAWVqtWfSzouYYiQEZ+nd8md6CYqLUtetQCEnfxz5k5Zfd9ZJ1gXNcLjm67Sm5
         clCT/eHL3vIbXYVq+EF+fQ8QzFHwLPbeCqHsLKfBcmEKYIUIv4M2kescLYy39bUjMpfH
         W5EBIo8YNU0eMcwf2vNNuwaozF0Cx+Vjqm+bzi/unwhnkUd6zm5NLHRfL7peqcXfWqOz
         iB1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=9uMWn0ZG93KcIzmsh2Epu55kZNkfspB1ilSxN5/M8x4=;
        b=Hv1vV/yX0xpCMBJ8elzHPUTLoQZ0zxoV0RPUVLnf0dqhzX6cQBgqzAtamzCTf8LZdG
         azo6ALQM84FC9TI4F7eiHN0xO6jcxT0QIeKRJvArYtpVeL4n9ESD/HB1c9ituff2SD2i
         e9sLugKlgNOdVYHa4eOLjcpuXBRZrTZx7WbSeUw46CEmGy5LAOfla6EiklSj6Cpy6FI3
         cpEMKW/TfBprzcnkqwaKEpOnJb6jtwMQ7+BGQQ36AnPW5ZRM7R1JTTapb9bocJmL8GxM
         fnBVNIgua1KrMYwf2fNX4x0HzqYUcI5V3zKckK1pQpMc6b9lODaOnIqsC02ePP0JR6ue
         V8lA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id d16si106175wrv.4.2020.03.06.05.33.03
        for <clang-built-linux@googlegroups.com>;
        Fri, 06 Mar 2020 05:33:03 -0800 (PST)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DC9E81063;
	Fri,  6 Mar 2020 05:33:02 -0800 (PST)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2794E3F6CF;
	Fri,  6 Mar 2020 05:33:00 -0800 (PST)
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
	Nick Desaulniers <ndesaulniers@google.com>
Subject: [PATCH v2 03/20] linux/limits.h: Extract common header for vDSO
Date: Fri,  6 Mar 2020 13:32:25 +0000
Message-Id: <20200306133242.26279-4-vincenzo.frascino@arm.com>
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

The vDSO library should only include the necessary headers required for
a userspace library (UAPI and a minimal set of kernel headers). To make
this possible it is necessary to isolate from the kernel headers the
common parts that are strictly necessary to build the library.

Split limits.h into linux and common headers to make the latter suitable
for inclusion in the vDSO library.

Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 include/common/limits.h | 18 ++++++++++++++++++
 include/linux/limits.h  | 13 +------------
 2 files changed, 19 insertions(+), 12 deletions(-)
 create mode 100644 include/common/limits.h

diff --git a/include/common/limits.h b/include/common/limits.h
new file mode 100644
index 000000000000..587269010add
--- /dev/null
+++ b/include/common/limits.h
@@ -0,0 +1,18 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __COMMON_LIMITS_H
+#define __COMMON_LIMITS_H
+
+#define USHRT_MAX	((unsigned short)~0U)
+#define SHRT_MAX	((short)(USHRT_MAX >> 1))
+#define SHRT_MIN	((short)(-SHRT_MAX - 1))
+#define INT_MAX		((int)(~0U >> 1))
+#define INT_MIN		(-INT_MAX - 1)
+#define UINT_MAX	(~0U)
+#define LONG_MAX	((long)(~0UL >> 1))
+#define LONG_MIN	(-LONG_MAX - 1)
+#define ULONG_MAX	(~0UL)
+#define LLONG_MAX	((long long)(~0ULL >> 1))
+#define LLONG_MIN	(-LLONG_MAX - 1)
+#define ULLONG_MAX	(~0ULL)
+
+#endif /* __COMMON_LIMITS_H */
diff --git a/include/linux/limits.h b/include/linux/limits.h
index 76afcd24ff8c..ac20d2b2edd9 100644
--- a/include/linux/limits.h
+++ b/include/linux/limits.h
@@ -4,19 +4,8 @@
 
 #include <uapi/linux/limits.h>
 #include <linux/types.h>
+#include <common/limits.h>
 
-#define USHRT_MAX	((unsigned short)~0U)
-#define SHRT_MAX	((short)(USHRT_MAX >> 1))
-#define SHRT_MIN	((short)(-SHRT_MAX - 1))
-#define INT_MAX		((int)(~0U >> 1))
-#define INT_MIN		(-INT_MAX - 1)
-#define UINT_MAX	(~0U)
-#define LONG_MAX	((long)(~0UL >> 1))
-#define LONG_MIN	(-LONG_MAX - 1)
-#define ULONG_MAX	(~0UL)
-#define LLONG_MAX	((long long)(~0ULL >> 1))
-#define LLONG_MIN	(-LLONG_MAX - 1)
-#define ULLONG_MAX	(~0ULL)
 #define SIZE_MAX	(~(size_t)0)
 #define PHYS_ADDR_MAX	(~(phys_addr_t)0)
 
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200306133242.26279-4-vincenzo.frascino%40arm.com.
