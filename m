Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRB77MSXZAKGQEY4L6KHI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43f.google.com (mail-wr1-x43f.google.com [IPv6:2a00:1450:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id E3B9A15C7A4
	for <lists+clang-built-linux@lfdr.de>; Thu, 13 Feb 2020 17:17:03 +0100 (CET)
Received: by mail-wr1-x43f.google.com with SMTP id v17sf2517355wrm.17
        for <lists+clang-built-linux@lfdr.de>; Thu, 13 Feb 2020 08:17:03 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581610623; cv=pass;
        d=google.com; s=arc-20160816;
        b=kamvZp9SmR9QoDx3qVPuYHy0QePDDiYrSmxCwBMmVqkQRuoaGFxk7+rS4xwStK5/WY
         ZWKcjC1O8MJvQl+vAMUsqXfpDLDJXcSj3ZjTqM0FVg62R9weo4C/zcV9pEwZsv3Y8CSh
         +BfFQaGjqyOihCfJb2pNcrekI3pUVKQ/R82GFOeL0Z9NqAspgkgZR3rQyXZf3xy4kZrD
         YS7IIahl2bOUN2Koix/sXe4Q1kervxj4d3pYoAS/j4AJzNi7L91fLWdPXDO3drcq11S5
         h8UGGbN9cLV1IRM7jL1YcDPmD//l3vJCFxJrQu26EBGuk9zGRoWWbHHS+0Mc2QnR9TvP
         wrYg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=leuLGA/ljq8matgFbtcfqTtaUHk+YLTbuwPZXKQCUWs=;
        b=d78n3UgG47TWZi7w/EMsdjWILCtxbwS9m0/Cfov9gVHWHRchbJJ/YUSTyGacPFTm8g
         jaNfp2bW8uQnlsuPsrzqbGytQQ/sjjec19RKhMkZGldw5DCabSVZJQRmSJdAUVqWxSyh
         EX15cEqAC78dTt0vJPWm1hbjoqIfu5c49qMT5nZ8ctZn5l9UThfdEmczRAGYmcwePIHJ
         umcZ9dyMFXltoXefLn+xHYWUqCHbfwZdm/nK9/DfMtwYxPZaJnp/X+X/NXlVowgDRx8D
         ofdIcjzbf3PcOi9UqkY81noTHoLQKa87+5e4+RxqHO+WMoOdI+xJ2i5OWMSKvFo6P2XW
         uagA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=leuLGA/ljq8matgFbtcfqTtaUHk+YLTbuwPZXKQCUWs=;
        b=Q/u5UNIE6vbRfEkNxgPAaMjZ7/jBDyydhHs73ARhgFNweixUU+LXdM3bbA0napVjzC
         gQjmAsc30xBvKCl8WuYENjCdbMf8gbHTXk4VZPFT19u25meX62HPz7jxLfpes8ietTbK
         4mDJh0J54j88n2oSjVbBjKfuHcHxWKiYArDhcmR0/DKvlpRhRI+beQT7/heSFlxwfeA4
         y073m3tQn0rKEz6oU8vZSrI5wMjPxyfK/Q4KMC/PBUVpf6WHxFJhUCOP2VkiyJzQTxtr
         mWNiZGCcreg5pxZnfHPNqRKdhoZDUhU3MhVQSpYW7g8O05mAsQfrcyJdLGAILOHGVWLJ
         H0Ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=leuLGA/ljq8matgFbtcfqTtaUHk+YLTbuwPZXKQCUWs=;
        b=Ofc8JdLDaq9fSItm2DkHjDKthCTA/IWR6SCrq3CrnsrcGBSUYBRVozlimVQJUWr9ol
         D/kwJBB1hIjLkCMiFUpfYsLOxFP+ISqMXFTXTGnmhCe9kaYUxVqcblxda2sFv6ZIEOTo
         eR+0nx1qwFo7TEP6KTy6zQ2kynNzcX8b87S89hjzyxARL93oP5LiIinYBwHxlRpUVc25
         miSVKIKyShgIhuPdElXBgYEF5lW5MgtYZq+wsyO9Or2emY//uGaBo0WzD0TrBlJg/ckD
         3UNxL9FxoRk4GEVqoHWvUeY0hHoMSfu8kmhONwHTI9lXo2a2GRgpKAd1RPx48YYuJMRa
         o0SQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVvXv8QihZzP9vqF42/DBzUGkshYqAkwss+01hMXMfkzF/i9vfA
	+cTdot5QkkdcT2cPxndfSjg=
X-Google-Smtp-Source: APXvYqxtogF9DzYWFqEU7EXzwUgIe7TYm0JnAEBW1pue5dCkmoLv1NDFc1SX0EGkBW5punOv5b6GWA==
X-Received: by 2002:a7b:c1da:: with SMTP id a26mr6958710wmj.155.1581610623562;
        Thu, 13 Feb 2020 08:17:03 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:65d0:: with SMTP id e16ls13647287wrw.1.gmail; Thu, 13
 Feb 2020 08:17:03 -0800 (PST)
X-Received: by 2002:adf:db84:: with SMTP id u4mr22881866wri.317.1581610622867;
        Thu, 13 Feb 2020 08:17:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581610622; cv=none;
        d=google.com; s=arc-20160816;
        b=rKHMUi8du+NRQCXnH1+H8XD/WJQM/FZN6fVre4hN/3UfAnydtGGJ0RDW1CU6LiQTFM
         TAQO12H/IdD1681DdXuPLmfEZ9CaH4QlauOdlywPypFoOkW6USFMDP3PwWlZz/Fr+7io
         mprLs+EicUmNEnxEPGyHGoEACIdwaa3mHbNmwdTMZqJFz36iHPqScxgDbiEIZhDAZbFC
         9kJObTTu7GZavsBwosriOjZx5nKs4zA2th9hWa8QMV8gQp4oi0UCzP/aVu5cxvHhq/wx
         jROyN4+RGZMPXDQFrhvf0F/AOPl851AZN4pucpCQjmkRkqx08MBxEi0VjGKdbVYTWyid
         jn7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=/nmZF4fO/TPZzzehXtrgrQAI9JQ//ea1PhOG9M0OF+w=;
        b=huNYiRXMbFvRcz/XmVyOXmkwbvXgMTvueqiGjCYF+XPJ8HBBvDEmH0MP+K35lA1vBL
         OqrufJFsh0Tr0NqKeC6DDBnD9rCW2q3DmQM0liJC01Wat8GEzWCudJ3V955uDxlbVLHi
         6vhbUY9fhbD4vK6YsuDHQ/W5VWJdg4Eoz53V6e6M7NIbn5E17yduVPAQujJ9fslwod/B
         0fzmSId6o4ZU0lQk0E5Hc+rT9bH696ADGNNxuhZ7LyLtdFbw4rd1s5iMQY3VAHFCEc2G
         clp285SDrndkZCdyrUi0Kry2yDXPsK5V2nnE7h4Xfuz4C3CS7xMG/1dhjMQf4VgBvdCg
         fqZw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id g3si107362wrw.5.2020.02.13.08.17.02
        for <clang-built-linux@googlegroups.com>;
        Thu, 13 Feb 2020 08:17:02 -0800 (PST)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 27F59328;
	Thu, 13 Feb 2020 08:17:02 -0800 (PST)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 978EE3F6CF;
	Thu, 13 Feb 2020 08:16:59 -0800 (PST)
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
Subject: [PATCH 07/19] linux/time64.h: Extract common header for vDSO
Date: Thu, 13 Feb 2020 16:16:02 +0000
Message-Id: <20200213161614.23246-8-vincenzo.frascino@arm.com>
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

Split time64.h into linux and common headers to make the latter suitable
for inclusion in the vDSO library.

Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 include/common/time64.h | 14 ++++++++++++++
 include/linux/time64.h  | 10 +---------
 2 files changed, 15 insertions(+), 9 deletions(-)
 create mode 100644 include/common/time64.h

diff --git a/include/common/time64.h b/include/common/time64.h
new file mode 100644
index 000000000000..ff5a72fafb30
--- /dev/null
+++ b/include/common/time64.h
@@ -0,0 +1,14 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __COMMON_TIME64_H
+#define __COMMON_TIME64_H
+
+/* Parameters used to convert the timespec values: */
+#define MSEC_PER_SEC	1000L
+#define USEC_PER_MSEC	1000L
+#define NSEC_PER_USEC	1000L
+#define NSEC_PER_MSEC	1000000L
+#define USEC_PER_SEC	1000000L
+#define NSEC_PER_SEC	1000000000L
+#define FSEC_PER_SEC	1000000000000000LL
+
+#endif /* __COMMON_TIME64_H */
diff --git a/include/linux/time64.h b/include/linux/time64.h
index 19125489ae94..3d8b3739e885 100644
--- a/include/linux/time64.h
+++ b/include/linux/time64.h
@@ -3,6 +3,7 @@
 #define _LINUX_TIME64_H
 
 #include <linux/math64.h>
+#include <common/time64.h>
 
 typedef __s64 time64_t;
 typedef __u64 timeu64_t;
@@ -19,15 +20,6 @@ struct itimerspec64 {
 	struct timespec64 it_value;
 };
 
-/* Parameters used to convert the timespec values: */
-#define MSEC_PER_SEC	1000L
-#define USEC_PER_MSEC	1000L
-#define NSEC_PER_USEC	1000L
-#define NSEC_PER_MSEC	1000000L
-#define USEC_PER_SEC	1000000L
-#define NSEC_PER_SEC	1000000000L
-#define FSEC_PER_SEC	1000000000000000LL
-
 /* Located here for timespec[64]_valid_strict */
 #define TIME64_MAX			((s64)~((u64)1 << 63))
 #define TIME64_MIN			(-TIME64_MAX - 1)
-- 
2.25.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200213161614.23246-8-vincenzo.frascino%40arm.com.
