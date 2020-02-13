Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBBPNSXZAKGQE4GBS7UI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23f.google.com (mail-lj1-x23f.google.com [IPv6:2a00:1450:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 283B015C7A7
	for <lists+clang-built-linux@lfdr.de>; Thu, 13 Feb 2020 17:17:10 +0100 (CET)
Received: by mail-lj1-x23f.google.com with SMTP id g10sf2285162ljg.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 13 Feb 2020 08:17:10 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581610629; cv=pass;
        d=google.com; s=arc-20160816;
        b=O7Qexz2ChlwN6heWZdI2l9vNnt4vpZNURh3QqL/gF8IAGD+n1mOE3atogbbBQh84Ay
         mVCs1TCNs4YQBoMyq6Fn/f+hM/bua42mBg+JEhxlsMzKUm7Hqy98zWfbGsTaxeUEhI2z
         kTNiylzR/nTUjTUelhPm6jbpMIQTnwtEn15pS+BOER0DpJsE/G9k4TnDFoDJ1wci+D9U
         YqeE2ony0h0YFHrYaYRrs3nCXtCzcbpF6bYepkxaK2rHCUCvn8M+N7TUqxjjmi5wMzIf
         tH0KMVfPb2G1r3wGX1GhDxtsp6NgmGTl/t70STKdGAm5sJWfDODVeAnzndfDdB/p27Ix
         Rs+w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=mmQypP0wqtfe9GkF1twMQm+pTDqISVtxYtV1/mzBsTE=;
        b=CSrYeEgBLvkAifVNAg3giVsSY46lGMWqaO1WamHhXnsbeyQ7LsoVdJGXEL6CTc8ijZ
         IVUuiLuTgOn0zL+zo8uVyVidIlCRMoCTmd0tSoL5ANCNzePfE78Hvagj8CsaNekEKY3f
         jyFhViRn3wHp8hCD6VWVbmTaVvHyzWCKfCIcMWemizOOm+XUWjX/k6CNBH2T8TBQasuQ
         tgBjHALcmB9SA1K3GagGvA+JYg3y9VM+lcJVV/2DIIjp4HI7DiAZlkrtNI42AuHMP124
         EcJYPfhu8x1iso4arIBLfrKL+whFmQV9tbbo8oOcsC5hD8imbgfQ3Tfnq3YCpLd5xUJi
         PQEg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mmQypP0wqtfe9GkF1twMQm+pTDqISVtxYtV1/mzBsTE=;
        b=QczamQm0UDcDiQuGNBuhcX5mH0rAV8IAg7N+7jmlYZx+HcHqTBz/ogjhyNIXo0wtqd
         WGvdvW1QcXkZJgRiTPcGrKdOz2MBUNpmsACegkbvY9iqPsQxt7nJcQJPvMY+8eneaGpB
         XJteEh8BvF0n4YXFGORRQb9Ct9i7tzAqzqJ4ce1aEKydm7W0BsxHcP/Q13Ktc5k+VmOI
         1WEMvK+7fkDMTiApe03pUguKN/iNgyqHzLvHMAAG6msEB/k007iuCp+6iGrtm66VKS6A
         A7b9t4X53HJA/9EcaqBeib8vkDdJu5slBJJYd+Z4hQeai0Ii/RdKzxy8YJHaKqD8/KMH
         PvgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mmQypP0wqtfe9GkF1twMQm+pTDqISVtxYtV1/mzBsTE=;
        b=m15y6C74kAyKjDYHuDmi7VIb61gDes592nxpt0UNphElIxohSpxAG4qtn9xoILVK9x
         +y02+uLJn+A2vV2rFKaaTuEUjl9JiU4rFcNx6oj+MKuVNnHAlNAeswrLAaN5LpQcbmuZ
         3r41A7GNcoqCq/9oSGP7MOg6w046jDIMBB1JkieYYIQY4NIlsokIJGsD6m/Gx/gb3ZBu
         d6CodYte+Eq7TtqUlayAp8f33f6GJMeyPzxZlJlJv9LQDfBNVkYRnKLZO7svLlMmTVwt
         KUJUFJtdyflWDz+zb6Okd5s4ySa8U0Fly/f4Mm2qo/x1r4J0eixWSkGqtVrR7ZuHxu0S
         ZYYQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXgvwDcx3P43uAzyOfjeuH/Wl42+xRDg0zi8wgQammh3AhvkchG
	hlF1pGctaYoGuoNdRuxUOvk=
X-Google-Smtp-Source: APXvYqzazZqJWSkEQc/cCE9/8JmXCnDImZeZJssnhrxE1pgoNWyXFfWbJdKLpy6df4Tg+FamkTp4fg==
X-Received: by 2002:a19:f006:: with SMTP id p6mr9718526lfc.94.1581610629069;
        Thu, 13 Feb 2020 08:17:09 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:518f:: with SMTP id u15ls2753835lfi.3.gmail; Thu, 13 Feb
 2020 08:17:08 -0800 (PST)
X-Received: by 2002:a19:4ad0:: with SMTP id x199mr9719828lfa.13.1581610628517;
        Thu, 13 Feb 2020 08:17:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581610628; cv=none;
        d=google.com; s=arc-20160816;
        b=rkn+GBXvRp8q242CthQKmObvtFU0vRbyIYfkgdhusKqP85pjfDRW+uL53n28t2qqNh
         JuazfAncJU7b+NxutxQBoyoDY5n07H/EcH4o329Rr+WICEsn4j7PffEOFqbxfFHLPuL7
         h402//3HNJHu+N/wfO+cadJHDoUwvjR9vsRAc/VXFpPU+cOduybYN04HIWa/1K0CntIV
         tGMyvo12q2a1asWOx+p7RiM4+cUbOQiyqox4C30Aoekpx9C7VzvbMmsTvG20Hqk3gGu1
         Dxn953CHlaVAtOaac+Aktqvn2PBQGjLRxN2KDo7Hh/BCaoyPbUlLof11Ov9pMUQbg/ER
         uhrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=ay+M0siFWpPGgsahzGd4AI9vlnK+2XPYQ08YSQmBusE=;
        b=0Vd45NC0XwzIOpgcD/c+TTFPVkUjjyqVCZwPeB/DROU7xCwniLZGhA5MjJaQTxgTnH
         JEAXHzt9Nm4rE1+ov7KEGl1L10FE80FesQWJaa42EypcjaNQynsFB0bYu7bXns0sshKi
         LKi5GvG6HzKMpET4Q6TNN7TEhedxJewrUYg8jmJG3kDpOepOf5A1jDcpOchu/cOtXz9N
         XLIoYP//czs2iRYkGpX3wvA2UVUYjYIB2BD31fNLXC+Cqj6S11ESfh84CEfu3ooBZ0Yh
         rZUfZX/Ww7P6GvVfDyLwgSGvWQF66VXgeJ6CNWos9xrrMfvm04kV2yClq0d88vTFSNtn
         Ra4Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id p12si144252lji.1.2020.02.13.08.17.08
        for <clang-built-linux@googlegroups.com>;
        Thu, 13 Feb 2020 08:17:08 -0800 (PST)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A0142328;
	Thu, 13 Feb 2020 08:17:07 -0800 (PST)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1F5E43F6CF;
	Thu, 13 Feb 2020 08:17:05 -0800 (PST)
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
Subject: [PATCH 09/19] linux/ktime.h: Extract common header for vDSO
Date: Thu, 13 Feb 2020 16:16:04 +0000
Message-Id: <20200213161614.23246-10-vincenzo.frascino@arm.com>
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

Split ktime.h into linux and common headers to make the latter suitable
for inclusion in the vDSO library.

Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 include/common/ktime.h | 16 ++++++++++++++++
 include/linux/ktime.h  |  9 +--------
 2 files changed, 17 insertions(+), 8 deletions(-)
 create mode 100644 include/common/ktime.h

diff --git a/include/common/ktime.h b/include/common/ktime.h
new file mode 100644
index 000000000000..4dd6c6762ad4
--- /dev/null
+++ b/include/common/ktime.h
@@ -0,0 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __COMMON_KTIME_H
+#define __COMMON_KTIME_H
+
+#include <common/jiffies.h>
+
+/*
+ * The resolution of the clocks. The resolution value is returned in
+ * the clock_getres() system call to give application programmers an
+ * idea of the (in)accuracy of timers. Timer values are rounded up to
+ * this resolution values.
+ */
+#define LOW_RES_NSEC		TICK_NSEC
+#define KTIME_LOW_RES		(LOW_RES_NSEC)
+
+#endif /* __COMMON_KTIME_H */
diff --git a/include/linux/ktime.h b/include/linux/ktime.h
index b2bb44f87f5a..0e1fadeb23c3 100644
--- a/include/linux/ktime.h
+++ b/include/linux/ktime.h
@@ -253,14 +253,7 @@ static inline __must_check bool ktime_to_timespec64_cond(const ktime_t kt,
 	}
 }
 
-/*
- * The resolution of the clocks. The resolution value is returned in
- * the clock_getres() system call to give application programmers an
- * idea of the (in)accuracy of timers. Timer values are rounded up to
- * this resolution values.
- */
-#define LOW_RES_NSEC		TICK_NSEC
-#define KTIME_LOW_RES		(LOW_RES_NSEC)
+#include <common/ktime.h>
 
 static inline ktime_t ns_to_ktime(u64 ns)
 {
-- 
2.25.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200213161614.23246-10-vincenzo.frascino%40arm.com.
