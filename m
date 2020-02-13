Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRB7HMSXZAKGQEIRNYLOY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x239.google.com (mail-lj1-x239.google.com [IPv6:2a00:1450:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id 4575B15C7A2
	for <lists+clang-built-linux@lfdr.de>; Thu, 13 Feb 2020 17:17:01 +0100 (CET)
Received: by mail-lj1-x239.google.com with SMTP id z11sf2293614ljm.15
        for <lists+clang-built-linux@lfdr.de>; Thu, 13 Feb 2020 08:17:01 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581610621; cv=pass;
        d=google.com; s=arc-20160816;
        b=LIVbYXARaGBnc6yKiW8fpltCxHQNyCw94n0fnCqlZ3zNwDz2cgANGzFhmnHOkAhaf4
         6YL7sOtmGh0oSMG7atLUYrJ7kLF2LpAM5lTNd4Tdt3SKi0p3joTSMeRm19qULXDXVeyy
         v2L5EPGC5RcEKInPDVKhsI4yPAec6BifXKVNNNsq/ba99nvmQZKUowUR6a+p7+ZrrPI4
         cAsFUWULZI2NVl+aDtYX3JtJz8hW+aoWr96p0FepQsxvyE6sGZkIBLmLZsufzmRwWu9k
         apMGsslV8Kk4IVL0tdEeBA/RUv0inO+kAquHu4MTfv/ZtkkKEHQSPg1vr33kq8sYsgUS
         PAJw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=yGhW1jqpJWBpvH3Ws37LGqGpz93r2lgBP1X63mEO0Fo=;
        b=G6OW6SU5iVf0UKsCqtK0WJ7R+07v9P+Cr4yLEp4Z80hEQS9k0io+UlIZc56gsG1xrr
         N0IijHBSLijKMj4jvtL3DEJluhbQIjZgVzmq95PlHEGwmiDUx/AMs+CID9KXmVkiSRO8
         7VZbseh3VmvB/FzRVx9M+22D7HW3jM46flR0FNMvC38JQzN4xKtrDl0Nk66ZIdleMO0E
         ZHF4vDBJB+Mm1ozRW4v17xSZb97PM/7lZe1Y1AHwTeyOROKz6PLpru6XXxA4AUejZm01
         0UIUK1994LGi14vuwkdFYSqT4KKiRXTmVzuB5ChCIH0K+qsQ+HWck/d70cajkPl/SY6c
         feGQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yGhW1jqpJWBpvH3Ws37LGqGpz93r2lgBP1X63mEO0Fo=;
        b=tVlw0cGN4h85FirnCOLgh9gi5Ca2fL3kLCVqdSzj40+S54QPFwdDw4adhswfkNg4sD
         uzfs1WIUMSS5ZFKiIgVwxtPi/x88wvMcXJSbyz88NKBnEDyYJuWbGN6F1RL7V+TtfdwA
         5DETHT+EUJhxKwcMIIPVnPAfGlpWknEHvU7j3AQJ7C+3hoVdpgI3hpgRrg0EJ9m4o6aS
         FBEO1gEDzt+qstzmgenhw9R1pMCulbUMPPKRceFZ5nz1SBc7sNW/xI/k4WTBo7UOq8HT
         bRXdRr5NE552zuG6KcCj0tWfaTizzpTZcJvvkYmhRNrsY5HQpQllgkYIfgyXszi5XjDy
         5a9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yGhW1jqpJWBpvH3Ws37LGqGpz93r2lgBP1X63mEO0Fo=;
        b=HDEOAdfajMeRH9/MRJxmhSOTTY2LQ+u7f7EZ7qkb3k2HKImDE7qMm+uJVjIvTKuaxA
         hf0ea6RiQ3uDBt3Yk3ev4hyOaY4V7fZ/d9iaUOESGHlA70m1D4XSTzCKOZL8Zx9swGqa
         xttOztt2KcL5ogshjsmSE0/EEaOy5ZJYyK7MH+H9FbTS8vAa6WcMheC6yKIgJAFJLH8A
         4ZuvDkZN4Z6lg/whQThDt3PV/LVas+3bAX/s+tk5gAUCxJXNGmoKd7VkHpMRr3o+B0AN
         if+7oEjg0EAJuLcZmpiIIot0ijoUDrS+mnZ/d1H0adkmmXwRQ1dd2XFPade79lwpKKqs
         vigA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAU8UIxbBLuZ7XlenaiY+stnuTLOa3B7iSFK4tyLF8khdKwNzgND
	d4yMlF9A5YO0Ih1ql99qf3E=
X-Google-Smtp-Source: APXvYqyfRELtCbl5ydmo6K/JTNEfToLmuOnq/mX5FjgIypKGmeEkC0sFt9edHP5nigYIZxfM6/7d1w==
X-Received: by 2002:ac2:5216:: with SMTP id a22mr9710871lfl.18.1581610620822;
        Thu, 13 Feb 2020 08:17:00 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:6809:: with SMTP id c9ls4309532lja.1.gmail; Thu, 13 Feb
 2020 08:17:00 -0800 (PST)
X-Received: by 2002:a2e:85cd:: with SMTP id h13mr12049339ljj.191.1581610620319;
        Thu, 13 Feb 2020 08:17:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581610620; cv=none;
        d=google.com; s=arc-20160816;
        b=cVQtMt+UuVsE062uVO/WIY1JRsAifHo46I0mwVecErAKMQZzQs4betbzTj6lRAx7SJ
         X0KL4psesfvlzYonOe63GYA95bElVkCbBz2mt1RG2KxipIDs2Vg07auVMGB3MaTrtXCO
         0qqciV11Wmtqvm4HxSUsJfiyi3U5yQaEIxg4hWiPaozRQoytzm30GvyEOYWkmdB0rIe3
         8DXTZGlYJWjX3TNL9qIKFlXWKrhfosMeo7o/UBwFiQ4fy/C5fhhf2DQM3o3pwtpS2Ht2
         cc9j1LPJ4fjXiL+o9W1B6WXlm6rW7B4b3M45ASTJasojdDrQ029quLtdWpFe95IViV56
         ZmfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=TMEKyEPLTVjBiu8TBeeGruVBd5myoJstL8ZfQtjG6AQ=;
        b=VRyqoCiGV0z61+1nfctE5iqOZXeVA867kVDgdG1VmcaXpuGy3CVAdAVaSsO/A9Ftf6
         aKi2c7qYGVF3uIQ6ynqV5NFpjEZpZ5OZBcyB+BCWHkWyztLCQUyxCPXR0LFPQm+L4isr
         8zyl5+T65OzP4kPjgeMY4mQsG4hMxLF5EMFOmTbiwULKwaL9w14cEPm00ZAuuTOSr9t1
         jukcl8EQHYrE+Ws6HQf1Zgsjxw/JWBENIhCnjxR3vvPwn4aBtF/hnaJgTloI3/7PK9s9
         CLE1Jq4k7w3WbuDsjEqQXMrvld3vWUymQ2vvrOvFtlilaWJ0znTsHH3Zc8ZpBRPLP7fm
         ozsQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id x5si152909ljh.5.2020.02.13.08.17.00
        for <clang-built-linux@googlegroups.com>;
        Thu, 13 Feb 2020 08:17:00 -0800 (PST)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 62A0A1045;
	Thu, 13 Feb 2020 08:16:59 -0800 (PST)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D542C3F6CF;
	Thu, 13 Feb 2020 08:16:56 -0800 (PST)
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
Subject: [PATCH 06/19] linux/time32.h: Extract common header for vDSO
Date: Thu, 13 Feb 2020 16:16:01 +0000
Message-Id: <20200213161614.23246-7-vincenzo.frascino@arm.com>
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

Split time32.h into linux and common headers to make the latter suitable
for inclusion in the vDSO library.

Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 include/common/time32.h | 17 +++++++++++++++++
 include/linux/time32.h  | 13 +------------
 2 files changed, 18 insertions(+), 12 deletions(-)
 create mode 100644 include/common/time32.h

diff --git a/include/common/time32.h b/include/common/time32.h
new file mode 100644
index 000000000000..d5b85abdfaf1
--- /dev/null
+++ b/include/common/time32.h
@@ -0,0 +1,17 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __COMMON_TIME32_H
+#define __COMMON_TIME32_H
+
+typedef s32		old_time32_t;
+
+struct old_timespec32 {
+	old_time32_t	tv_sec;
+	s32		tv_nsec;
+};
+
+struct old_timeval32 {
+	old_time32_t	tv_sec;
+	s32		tv_usec;
+};
+
+#endif /* __COMMON_TIME32_H */
diff --git a/include/linux/time32.h b/include/linux/time32.h
index cad4c3186002..39ff2f55e8d7 100644
--- a/include/linux/time32.h
+++ b/include/linux/time32.h
@@ -11,21 +11,10 @@
 
 #include <linux/time64.h>
 #include <linux/timex.h>
+#include <common/time32.h>
 
 #define TIME_T_MAX	(__kernel_old_time_t)((1UL << ((sizeof(__kernel_old_time_t) << 3) - 1)) - 1)
 
-typedef s32		old_time32_t;
-
-struct old_timespec32 {
-	old_time32_t	tv_sec;
-	s32		tv_nsec;
-};
-
-struct old_timeval32 {
-	old_time32_t	tv_sec;
-	s32		tv_usec;
-};
-
 struct old_itimerspec32 {
 	struct old_timespec32 it_interval;
 	struct old_timespec32 it_value;
-- 
2.25.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200213161614.23246-7-vincenzo.frascino%40arm.com.
