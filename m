Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBAPNSXZAKGQEOPWI3VQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53c.google.com (mail-ed1-x53c.google.com [IPv6:2a00:1450:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id 3254715C7A5
	for <lists+clang-built-linux@lfdr.de>; Thu, 13 Feb 2020 17:17:06 +0100 (CET)
Received: by mail-ed1-x53c.google.com with SMTP id k6sf5222435edq.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 13 Feb 2020 08:17:06 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581610626; cv=pass;
        d=google.com; s=arc-20160816;
        b=a2j0GPJ8T/DakgBV0UsYAHtP/RrH6LtojlFHO2aw/deNAQEXWEQoysD99HSbPEHkbG
         nXS3m51evz2hOBP6CRYmz1ey9eZU/eKNUjucBTd1lCMMe1nD2MgpIMFlaPLQ1V+Ny9D4
         vhygN8iQG2WNR6D3Btcl4uFi+l1lrHq+Lbwp0wYxWZtkDQ1C7/74ERSdvEzCW1bpza+M
         06F2KpEQ76MR6E/eN5FeJ/Hm6S7uq8kYy/ssi9UcUAJ3pU619OzCr//I49n3EF3rMYC8
         +b0MIKepz3ToJcjN0R6HetGEdrF5msysVpMzq39ZlVW3Q1N9qMMyDVTze1Q2jSwq4AZa
         jFgA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=cs5XdoPqaaIsBy6dhyNfu4+wrWjzlOOIdhUxkfK4WHk=;
        b=LogxeJW/90PFdD3wfuCKRboaeYF2ewdwdyA9varF0r/hIw9szbaUWTFaLGt5zqG0VK
         VwJ1CYYGryWCqc/EIGcWaf9zbxOXtFBM+P8oNkXuGD4PbAl4apCLbFwXpWEbARlmmI34
         HOncDqT2Ip1aXgjWnAfxSbDjSdwjA6b5stqxdpzjr0qC5aT9pQWln2EyeKaqunvwR/2j
         N41tqj3FgYD8qNne4Lz7YO6ocIAWLzZ2eXEY0vmvcWk/Xh2hxDDPh/r4eUlIcs2myaj8
         UE8KvfTmElXTC7XCvkM2MzSZqYEc3IBOjhduvzlhnitZn0kbVK65WtxcMsPCkxeHxccH
         tn8A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cs5XdoPqaaIsBy6dhyNfu4+wrWjzlOOIdhUxkfK4WHk=;
        b=V5lyhsx3XQMvTFayHVE55VzIGHa85keoOlP9ZgNjImbc4q6+jfNd0wUd0GJywX9toI
         fXy04Vdh1g/FeVIki/3RiiQMcVVDRTu79XCcNnjpI8JqLR9vdOYidSi/f6EI3PzPFsDr
         sw81EO+ocwf46l5+VkKxjhJO63LgKB9gT3KwGlZKV9qQr6efm1ZRLHY4rnjj9x/+wfjm
         gzrUUSQA2EjVPdnsNSBMxyIQJ0pdQ697bREolcsCZvJfNhRn/S+mtLdiGJ1CU/FFRkj8
         hP4tAAb0AdI8Y9TbJlunK7PVt7Z77A/K+QQT517tU2Nd8zmLDE7RnZ2BxFg3FZNHBBGR
         jvNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cs5XdoPqaaIsBy6dhyNfu4+wrWjzlOOIdhUxkfK4WHk=;
        b=fQR82MXBoL5P99d5/2QIqtxTVhzCCx7HCQz66Wu2ovLlK66geKumVECHEmzuumqTte
         jATcXukRB3o+Lpr5ZmSf/Dat4PiGf4jPL/qsTV9/+FVX5Q6z/G0B6af7B80HnBuRRge8
         eVkIXHbENnV6kAc85PHFTuVIgVTEc0DDIALA66iOqhmb5o9tg6LGvyAje6rBKrmxstWq
         LKYwsVXH9978aFTwSQOf3sR41p6mrTx/lx5sgUXt3HIUFco49Y/zOyc8Ss4mBO6a8iKA
         j0mXdsZZRQm32vulBGJbp8AuZD03vDS/5P+d5XMTdFZdfUC9LaVutQIUrLteJeaYfotD
         xg9Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVSWQx8spNlP1vN3RnhTZRKF7s4iggyNzYvILkXzmRiPy2FLPqu
	U6tnrwaqLTJBRiIhNlttkpQ=
X-Google-Smtp-Source: APXvYqwR3/DpzjpcNT/iybhiXu9gUvvOUZBKbfLCiT2deO3v3ddjrT5hFo25rfnTcx7SV19vqReP4Q==
X-Received: by 2002:a17:906:eda9:: with SMTP id sa9mr17092931ejb.297.1581610625933;
        Thu, 13 Feb 2020 08:17:05 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6402:1b06:: with SMTP id by6ls11300464edb.1.gmail; Thu,
 13 Feb 2020 08:17:05 -0800 (PST)
X-Received: by 2002:aa7:d505:: with SMTP id y5mr16586539edq.370.1581610625577;
        Thu, 13 Feb 2020 08:17:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581610625; cv=none;
        d=google.com; s=arc-20160816;
        b=ttTHL1fLxMo8umtceDZFv6b3Rw7GAJaFJDwdzBD7UNyBXs6/4ufy2unMw3k9xIvzJJ
         bb0ACqRtmpVt1+1Y1UWjlSp5N56vrjOcIuwEVJ+SECmfs5z/7eQCXiLc5uKYt3ZuzCOU
         N2W81Do1g/sLCWiyW545qAs9hVfNovblAdRfWQOQXi7YSWkwMatSyo2owKmXbQ7P/bpv
         WQu63AXJ8kwMw+veWLpO9SO4a4YaPK1wP+ho0DnD/FseK4WKw0DS9wKizw66pt5v/1hL
         K6XwI7ki5Ex0+d+f2GhAMihVtJpSj2jtKt/8AHQH0PSHsAHtJh6MkC3Z2vUKqgpQhVo6
         0fLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=l8LWI6Wp3IDme2PXUKnq47DRbem1KjOCbamco4ggwYo=;
        b=Jmv2cMdyVe3M6X7PRPuYO1OXEIB9csvsuY98PTfL2OBTkYX4iqdN7u4yobak5S19cs
         amUX2VkqR1cJ5nyXGoLNS9zyumnWxuKxW1hIFcnh3c43hXNRdNaYbO43NhkhLH+pB0A3
         0c3mmZjGCPhxxyxkN1nxegXdkQPWdJQD0e8gUPhoWVbGasltPoHuC4TzM/eBBrogNOOA
         A6roLW8CPYj8EOfEDT/kBJcrkjqu5EqMIRFuC6Xs7E6zi/0z4bZYPNSdWwvf9kelNYMF
         hVOWV9KKXVyZUu7WO5/1D48SQ1y1lBeOQOfLPYfey9yPFh4pgNME7J9X/MAgD2kZGKbP
         MZBw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id x18si125715eds.2.2020.02.13.08.17.05
        for <clang-built-linux@googlegroups.com>;
        Thu, 13 Feb 2020 08:17:05 -0800 (PST)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DE8CC106F;
	Thu, 13 Feb 2020 08:17:04 -0800 (PST)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5D74E3F6CF;
	Thu, 13 Feb 2020 08:17:02 -0800 (PST)
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
Subject: [PATCH 08/19] linux/jiffies.h: Extract common header for vDSO
Date: Thu, 13 Feb 2020 16:16:03 +0000
Message-Id: <20200213161614.23246-9-vincenzo.frascino@arm.com>
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

Split jiffies.h into linux and common headers to make the latter suitable
for inclusion in the vDSO library.

Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 include/common/jiffies.h | 11 +++++++++++
 include/linux/jiffies.h  |  4 +---
 2 files changed, 12 insertions(+), 3 deletions(-)
 create mode 100644 include/common/jiffies.h

diff --git a/include/common/jiffies.h b/include/common/jiffies.h
new file mode 100644
index 000000000000..ff0207f00550
--- /dev/null
+++ b/include/common/jiffies.h
@@ -0,0 +1,11 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __COMMON_JIFFIES_H
+#define __COMMON_JIFFIES_H
+
+#include <asm/param.h>			/* for HZ */
+#include <common/time64.h>
+
+/* TICK_NSEC is the time between ticks in nsec assuming SHIFTED_HZ */
+#define TICK_NSEC ((NSEC_PER_SEC+HZ/2)/HZ)
+
+#endif /* __COMMON_JIFFIES_H */
diff --git a/include/linux/jiffies.h b/include/linux/jiffies.h
index e3279ef24d28..710539d1e39b 100644
--- a/include/linux/jiffies.h
+++ b/include/linux/jiffies.h
@@ -8,6 +8,7 @@
 #include <linux/types.h>
 #include <linux/time.h>
 #include <linux/timex.h>
+#include <common/jiffies.h>
 #include <asm/param.h>			/* for HZ */
 #include <generated/timeconst.h>
 
@@ -59,9 +60,6 @@
 
 extern int register_refined_jiffies(long clock_tick_rate);
 
-/* TICK_NSEC is the time between ticks in nsec assuming SHIFTED_HZ */
-#define TICK_NSEC ((NSEC_PER_SEC+HZ/2)/HZ)
-
 /* TICK_USEC is the time between ticks in usec assuming SHIFTED_HZ */
 #define TICK_USEC ((USEC_PER_SEC + HZ/2) / HZ)
 
-- 
2.25.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200213161614.23246-9-vincenzo.frascino%40arm.com.
