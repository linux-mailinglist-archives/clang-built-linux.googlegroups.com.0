Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBP5S2PZQKGQESBJQK6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x138.google.com (mail-lf1-x138.google.com [IPv6:2a00:1450:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 07A2118D199
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Mar 2020 15:54:56 +0100 (CET)
Received: by mail-lf1-x138.google.com with SMTP id h2sf1853073lfm.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 20 Mar 2020 07:54:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584716095; cv=pass;
        d=google.com; s=arc-20160816;
        b=uz+ciM5Mnh+4+zSolp1VHdX2snds7NfFpt48zrLVkMAB6vJV0kWP8DakaZrfCSogpx
         qPuG8WtngATizGu8bIaDU3ZGj7PN0uI5nDOx25Y0+45O8EpsitZeIWHyken+AvKmfSRx
         Rx9MiXNNQxMboKQt9Wiv2ATdUNN4jQEthI2YuBAimaxc4rzUHqSGVoD65d2NGbB4udhN
         qgUxjUo5gqtzXHCiYd+403Eh8Y+WESYrXe2roA8h5p1L5jsUiJ3AAoN8OYj0gcZdZ8Db
         sMe1gC06KBa0dynsU9zJta4gxEUTiwlvCTl4AxiSeQ0Jibl7xe5jdzGGH7iWD2w05UGW
         ZCrA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=Oymdjt4PqdaMDtafpeRkJE5xk9Mrk/0/ksg5ttyLueg=;
        b=Z4+ZsNxbxU/lz3aVqvva6tNCaQG7iCaSHykkeqUoypyV1oTcs9N1kzwRacNxRIHGZz
         RzvALSapDwf+HgylDfFVVWoOwIIMExBkZMEp/ugAkkr0HyI+sgWKMjdZ8HUMzHoqlVe4
         lVXFLHQOTVvXYK1ADhhOzi0IFwmC/Z57gTTnzJdRpyxfuL0K3CcKHuPus8THjovQQyBC
         12uImQm65E7cozJBDDb5thQzgODYM8DUMgytFbn+Q+9ajwnSR+x165SASAJQg8XNeRBN
         Vv/tFWn1dbccGtc5/4DLcEl1h+r93Dkvdo+bdYeEDfoLbm/xQ+Qj/dHq4DvQzebNHscZ
         KTCA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Oymdjt4PqdaMDtafpeRkJE5xk9Mrk/0/ksg5ttyLueg=;
        b=aRbZbiFUPAYcZcjvtc2YjDCSX7J/vHjRTo4M5Z0VW3tw0SL3/V+vxwe4ZI1OjagYLQ
         dGgtfIEhFkCcVjECP7uXsGBfBH6gcdrh7ol2t3xfo++eMa3iv5PVF4yepU2d9c6XKHqz
         cKaCp7rEHsiQ2lH18rSmGivgwDky0Dfzm2WkGh06m1bi8ZH7CnTRxM2VqWMBCWrByIkS
         m17I6v+l1uJ1EPz2+EIE5bNh7MRwwa95cGqxBgCxwtYmEgisveQ4N+ZfflObX/hfYnmg
         HZI69YEBvURqaqeDq7lClvcFKXCgJ9hdTVyCVrbNcwrlQ+Ij4tXUX0ySPz2v1zb7UPUd
         ceiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Oymdjt4PqdaMDtafpeRkJE5xk9Mrk/0/ksg5ttyLueg=;
        b=JfKtcMUpQpcOu7xjTnat0lkKqMmS6PSlXNdmI/z2D9wEjJBndPj/4VUiSr/WI33itG
         nnNRk/2z+f+g1aStTf/ve7hLkHjExb19/h1cfbEk1MgbR8cBHbHVyrTB//bV9k6SDkli
         /YkMvN5KPR5kT0ExR2ODP4cVMMRnwqIDez7sX63RuOSXz508nzrYiDEh3ZwHhgpG2F2I
         FApz5Us64C4hG/8AIAg3s0QDdE/hfbCN4e+oxIL58H7GFejDaMcSlzYWLW7HykmV4qX2
         mQrHdEtH2r/ylNF3VZtSsnJJcQG7AQb9Lrvo8BYIpu5dlgIvAS7DBWCMunOekb5Qif+t
         W3SA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ3Xrc8s/0TcCafDO8nkMlihglDyTS+BBA+/Fo9w0wl04kZdBHrm
	Vrc3fqH9YU5cg19JZ3JloMU=
X-Google-Smtp-Source: ADFU+vuC6ajz05NyL8JWBYXYsgroBDc5E4slgDq6gFwuLEL+ETD5X18bQH2eJzlGbgvyt9Z0xRPj8A==
X-Received: by 2002:a05:651c:1034:: with SMTP id w20mr5725698ljm.14.1584716095479;
        Fri, 20 Mar 2020 07:54:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:8541:: with SMTP id u1ls1346619ljj.10.gmail; Fri, 20 Mar
 2020 07:54:54 -0700 (PDT)
X-Received: by 2002:a2e:91d9:: with SMTP id u25mr5660060ljg.145.1584716094793;
        Fri, 20 Mar 2020 07:54:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584716094; cv=none;
        d=google.com; s=arc-20160816;
        b=CHwh9SjHX+uDKi44EWVcYL5mUcA4EAL903BH+Rq+SkW4CpIk5ZuBnX96YYY5KnfcQ4
         Fjoapegr9mJFSc8Uq0TTqMMMI+P98HC0vVH6VZqfaim83IFa9dsMwtSPOatMH/n82Y08
         9u5rVxebjQGJU8YkWT6z4lZYka1s+EmVNtYXz6jk81lHsDoruqkeZayPiS2L/CDSniSq
         WZDqSZSfljdRNNOpjEbC5wa+h0B8rYOt4taZBAIKicKwv3oepy6nnCjRwywo38CxVmxO
         HuSGEthI8FH+6n67GacsiqRIKO4DURa0MNw6+0RF+Wyqag2KVLJKWplq58FDVPwpUg4Y
         qa1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=KWrTR3GD/uWaeuIVtq54MRIPY8n+FVZb7WFjy7650SA=;
        b=mQJBFpRTuih/vCPifQAvU+l2wKtLp/t6wmSyD/MV10drKPKQx9VUY82i9HBzp4b1X4
         tXCSTEG4DcdEoPJcW8UHqnmiIEve6LHHFgNJUJ0NFKmslsCxVzD9z65Jq4jgMYH9O/AV
         qNb051ig2ARdGO/XeFKXrHVRmh31yP5Ic9qC552t9kAwf8PMY7np1UumF0mpK07BQSjR
         rRvBVkFXJCFgPoUkRyQ9kODhFEVZQeMBuxcD2H1L8iTUOUVsgqIHrt7Vk+g/K9cQD50/
         rTesuJWalnqjiVyLvtFOpv0rOPDlMAtUGZe83Ht+tFJk3N5aW32NJmeRHkYcO7jbrngH
         x1dA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id w6si290982lfa.1.2020.03.20.07.54.54
        for <clang-built-linux@googlegroups.com>;
        Fri, 20 Mar 2020 07:54:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3F6FD1FB;
	Fri, 20 Mar 2020 07:54:53 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4A9073F792;
	Fri, 20 Mar 2020 07:54:50 -0700 (PDT)
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
Subject: [PATCH v5 03/26] linux/limits.h: Extract common header for vDSO
Date: Fri, 20 Mar 2020 14:53:28 +0000
Message-Id: <20200320145351.32292-4-vincenzo.frascino@arm.com>
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

Split limits.h into linux and common headers to make the latter suitable
for inclusion in the vDSO library.

Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 include/linux/limits.h | 13 +------------
 include/vdso/limits.h  | 19 +++++++++++++++++++
 2 files changed, 20 insertions(+), 12 deletions(-)
 create mode 100644 include/vdso/limits.h

diff --git a/include/linux/limits.h b/include/linux/limits.h
index 76afcd24ff8c..7fc497ee1393 100644
--- a/include/linux/limits.h
+++ b/include/linux/limits.h
@@ -4,19 +4,8 @@
 
 #include <uapi/linux/limits.h>
 #include <linux/types.h>
+#include <vdso/limits.h>
 
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
 
diff --git a/include/vdso/limits.h b/include/vdso/limits.h
new file mode 100644
index 000000000000..0197888ad0e0
--- /dev/null
+++ b/include/vdso/limits.h
@@ -0,0 +1,19 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __VDSO_LIMITS_H
+#define __VDSO_LIMITS_H
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
+#define UINTPTR_MAX	ULONG_MAX
+
+#endif /* __VDSO_LIMITS_H */
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200320145351.32292-4-vincenzo.frascino%40arm.com.
