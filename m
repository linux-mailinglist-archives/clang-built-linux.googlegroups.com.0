Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRB5HMSXZAKGQEQO7S3MY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23c.google.com (mail-lj1-x23c.google.com [IPv6:2a00:1450:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id 49C4215C79F
	for <lists+clang-built-linux@lfdr.de>; Thu, 13 Feb 2020 17:16:53 +0100 (CET)
Received: by mail-lj1-x23c.google.com with SMTP id b15sf2287386ljp.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 13 Feb 2020 08:16:53 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581610612; cv=pass;
        d=google.com; s=arc-20160816;
        b=wRr7xIH5d/OZHGD+RCZmuGjKZsJl2J6riMRN7lqV9uMj+1SH3xBdk97JaG17VxayiB
         GxopJctpotBKE8ZoLLlzW7T1qT6xGRpGGAX7saF+9j7XPayXuxVDLrxnkvpaCOIY5jd6
         5LjyO5KQxKCV3jPRoyN4pgbh3ZyZVYaHf/q/p5N4MdEfuMoSmB/QXgthqGiSmQxqdmKv
         YpQMnD1K3bJWBFF9ZlBeU6Zt8R0Pie42dsAP5nI77CqVzhVaIP2ct0q1qBXd9iDbrl/E
         t+vIcMeVFYfyTNJtoKrDBLMzpt/wIg5UNC8nk0TWRWN5Vy+DQEY6NcLWLtl2SPhBz6r+
         p+7Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=F6WG2+HAISIbIl2LzVyczUH1ACwvdQTYtbndVJDPPpc=;
        b=TT7MYfaeyC8LmKPg9cKtQov8o+3hpQF8OvAt5xQptWOB43CiuNVD+elRXcY8laYK4u
         8usTgzO8+YV308aC1pbwSZiW7lmPVP3X0PlOLChQ4jUj7Kfd7PdIAlLw++66KYKIXEnb
         zAaNTKr9tOX2d53AreI5MWCLct11NkKbgkRdEkQ6rEWX1PVq2TiGAZEiFPfzAHZOnstY
         G/pTS5kiaQrA8x3yWAKKJt0a4SBezjdEaVaJqwxd6vs2a3uRs1NUVR/8u3yBToYA9NxY
         ObaHkr97SNbVmvt93O+7Fq6BjJZ64N6/r+bY91mhO0F2UjFs9QT+JszrGaE9KZSY/JJZ
         221Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=F6WG2+HAISIbIl2LzVyczUH1ACwvdQTYtbndVJDPPpc=;
        b=qN+K6k8SVy397cUsJ+3k0g9d8MhIsYrBfA8aUgc8Ni7kcqtRfDUSYGJsW8Vt+xKEJ7
         9d99nl/04v0smzSrZOthAJMsmnpAjtzt16CBJpZok99SPHi2VA8qXU2xGgP3iaPz2JmQ
         ZnnLaNwHeAUvIK86RIMOkyDVDcmHrjgxvqF1uK6o6P4Yddb0m1yyP5BwRoWLV92PvKmU
         l38DN3OeUL1JMfrjPblMoepaqI++qfX2kpuXVsMP3UPPRhcOCuSYo5VslIKPB+Usy2/h
         PrgaTuSZbhwKIO7H6BtdLFA8pERh+H66p/UtdWEOkxlMKGw9AeIJAl4ayBrW0iPNjNE6
         zKFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=F6WG2+HAISIbIl2LzVyczUH1ACwvdQTYtbndVJDPPpc=;
        b=tqNSUlgvmSXbgGwkX5NsrTPVATR9rRX0nIHABkka30BCrYsnTTuqLXDjaIHUmgQQT3
         eOz+euRmzxM67NtZEhvl/ukJ7391tfh2BW6kodhVqXHbLSqGaDD/eUpb6Jctmnyylwv2
         XNqwg09Iqxro2JXPuBzS2T6cj2ZNLBgH6LqusjDE1BbTwbY2LNpVyQ4wOC2E3YDaEihI
         IlB5MHtWRwRNP2TUuv2saA/fcTm+ll5fsKWjdnf8VEZ/4cZcpgycQfKm/BStH25P9nm5
         HmN2iwA9PRiY3Bf9FtgM0bbQ9XxRoOaOIGh9XOxzddfoKK8kgzJfti2wNkKy3UzlqRHz
         EvDA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUJZcqMQFX3U3qVd81ymqT4xa/9ZnsyYTHLPyOdjaNe2pVWlRaE
	O/5Op3qFHxqE6ILRZ//uroE=
X-Google-Smtp-Source: APXvYqw3zAPHaPTwQWoxMVI9Ns4cv2UeqWdFiz8LUJmjnuB++Rv4R2SsZfI9wfN66Hmia6Imj23Emg==
X-Received: by 2002:a19:dc14:: with SMTP id t20mr9715328lfg.47.1581610612832;
        Thu, 13 Feb 2020 08:16:52 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:518f:: with SMTP id u15ls2753751lfi.3.gmail; Thu, 13 Feb
 2020 08:16:52 -0800 (PST)
X-Received: by 2002:a19:6445:: with SMTP id b5mr6138309lfj.187.1581610612172;
        Thu, 13 Feb 2020 08:16:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581610612; cv=none;
        d=google.com; s=arc-20160816;
        b=Di4JHiTHSCUGtzKKbda6joKYarzvTWvx1/S2nHmM0J34XgteapqPicD4yNFy1a9fxM
         jYs+75+Cc3cxJU+BrvpbnWskBPb1cfhoOwWZyUPgiSRz7/akiABnL8Y9hnuL3tgSnZP7
         V6zSr0SbboH14Y+ag0Jl/AMJe/Bcjq/dThy1JCO8oaxSarIjWqPiO9mgeJK+rO5AP3iS
         reWQ4DhRsZRCzptLXlCWIph8F5ik0tww/eZjXuVeEfwmVnEIaEw+b2ALt3DBtePONXgV
         /jyxthWISYoCmEzl/B+wo7GqhjKQRVNqlbVGfwdt3j4+heKdla2/vjs+zx7KTHej/qlF
         yC8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=XCVUQ58nsw60E98Izgnu/A8pJKbNkkdWIqEBudYT7YQ=;
        b=AhpccBFszFTJeUHZYFmP32D34m7Z+p0osSlQQ+/KTKZsTTPy4AG3iX65PY1rHwNzCc
         og6XPY5yNQ7UJZYgKqozyOEiMbWkSqNKhbwUCjg8XRHuIrAVRDx2A5iKTDSg1TiN21w6
         QWokgnpeZ7NEiynI2PkIQR0d93bTnQ7Zo8GJlbi5RxNF+9Tl3i+7lUFwT5EvervL2pbj
         eQZ0MDMh0bT5ld9+mjwEttDSbFd49ShfPrCNiIBuxZWv4KAKIcrgzw7FpSWpFI4/276Z
         Qd9OPuooiffsCgKEoGURY2BgrsIRty+hOoeGJOAg6f0uGxEheoSi91RruSh6vL2Depil
         GrUw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id p12si144225lji.1.2020.02.13.08.16.52
        for <clang-built-linux@googlegroups.com>;
        Thu, 13 Feb 2020 08:16:52 -0800 (PST)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2A0FF106F;
	Thu, 13 Feb 2020 08:16:51 -0800 (PST)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9D1063F6CF;
	Thu, 13 Feb 2020 08:16:48 -0800 (PST)
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
Subject: [PATCH 03/19] linux/limits.h: Extract common header for vDSO
Date: Thu, 13 Feb 2020 16:15:58 +0000
Message-Id: <20200213161614.23246-4-vincenzo.frascino@arm.com>
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
2.25.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200213161614.23246-4-vincenzo.frascino%40arm.com.
