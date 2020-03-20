Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBW5S2PZQKGQEGNOR2DA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43c.google.com (mail-wr1-x43c.google.com [IPv6:2a00:1450:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 78AB418D1B0
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Mar 2020 15:55:23 +0100 (CET)
Received: by mail-wr1-x43c.google.com with SMTP id l17sf2339830wro.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 20 Mar 2020 07:55:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584716123; cv=pass;
        d=google.com; s=arc-20160816;
        b=WCcwZCZdr1NrS1zXgyzFsOgc+nlCU0fPBbsHdPID09I+6Pp+w5DWPEetg995brANh6
         IuOIwMfltVQbltwsHVfQ4IklolnpmzTz9STut2FsEeySIEgQM44zvv1K/b7AvPe4Jzmb
         qml1TKlw5h/3/dQE/doBGM9UfylkqnxUdB2h/kaukHqOb3l2t2kATUX8y/bZJvUtvnbN
         DcSqWjIf2D5RZBoFtxYMszGAC9efK+1snBxCdsv1SMdU7P0tF3Y4nxvkQl67ZJzV46PU
         6mjG8NcHtIqZMMh85bmeXaMOkYwUFi7lYkzUJLY19mEN39FGT9pLXIfk/mg3VduPI7vI
         B6sw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=tZOwUZWu4BVuuH8VoadJzjr9GTKtZDKcna8hPr5pUoA=;
        b=aj6Jw6HxOxn6fVlathvu6lotvBbjZ4VjqQQm3jHW7KZnbIFf8xcFJWpYCkZg2eLnYT
         U6gDgKN0MhwkYgkwQzDCbhJErAUOq43fCZxM6n7TpQVaOkPZ1TK0oI+Awz2bJ3OQvPzX
         RvDROyobeB1nWH4s5F1LtjYnr1WerRanckQLw4MhLZ1DWo5ltMN8fn3fMuyRN0e7tF7x
         3YrN7vW8nOA2NPpNTvfkLPBmSRWh+G5g6xGdEqb1EDx2EIAbhU0Is8nxUQKc0++FXHBM
         qTZ/pTy2fdQzc5QY1g3gLqU3mLEYi2JEdTiLrRCSE01moZIc7xJPuylXSnHlDaDqLSLW
         +1mQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tZOwUZWu4BVuuH8VoadJzjr9GTKtZDKcna8hPr5pUoA=;
        b=Wm7Si6VWnckI5dllz0DnZWoJflvV+h32Gbamc2DOgr8Qw3DSbUbUZz1c3X/JvkvBnu
         QRv5/RI8eSm0FkR7CM4JAATXcw8d5qScpgA4ETphq77sFzggfaRb8/mjtw4sLxIPPw6g
         K0lohWJ3IOeSOKYZ6itOSDOgINJgFXT6BYN1VGtylSMc8x/idhz2foJr+4RKoM1rZsbS
         njdNcM9VYLBOuX4n/7nWL2e/u6NOKdbbopULIhk0oL6JtzW7l0i4jA01t9nSjVEEfZ2I
         T28OXvN9I26bXtLWQjmr5hqvO/KhALFB9UeXPHxcnjPpFcFmpAJCV3xLrFgcuwMsQFRo
         bsCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tZOwUZWu4BVuuH8VoadJzjr9GTKtZDKcna8hPr5pUoA=;
        b=rC1WJZGhNv93U61FvDN5IakdhkS7IDi2BeBj1xd3VtzLx0eIrKdBmq4WOCB8WBTN6Y
         4Av8Bvhrkx/SrlxatGz7oYK17PYDaMYwu6K4Q7iYgl1c7OyYwRxA4lBAuw3SkLewp1Um
         OCJaU1nAInKq5pBzLeLRsDoYiQECuEFM20HM98YwIIqh/lYhPqS/sK3xwXHNlpulIcXW
         lKqJDqR2cgKeNG7053sNeu2oae3xxES/i9mqYDFlpMKQRM1k0hXaLV4k+5Coyth9OqSO
         aTOV+eXyE7G/ojG92yH6DCeZLrjOKTViq9ISfwmsg/VQcW3w3+F9Q8TNE+gMXtq4K76X
         rRTA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ3iWxNIV7uR3GA/bhFn01ffA456FnpkRiEly5QrDjXYKHuGdZgC
	mWuD9k/Aki8nomkeQbx3cQk=
X-Google-Smtp-Source: ADFU+vvBrdibDLrn6CFVFRxuKmVrYwmZims+ZT40hBBd+eYece7JffXqYt45d69M9Q5aRkP7/SNiYg==
X-Received: by 2002:a7b:c10c:: with SMTP id w12mr10772007wmi.162.1584716123116;
        Fri, 20 Mar 2020 07:55:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:4441:: with SMTP id x1ls2631851wrr.4.gmail; Fri, 20 Mar
 2020 07:55:22 -0700 (PDT)
X-Received: by 2002:adf:f503:: with SMTP id q3mr11579495wro.135.1584716122697;
        Fri, 20 Mar 2020 07:55:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584716122; cv=none;
        d=google.com; s=arc-20160816;
        b=Rk2zLmnrULIT9Wh0LH0eH7Z8BD16ovH082+nsFHwryfICQ9XfC+QBHvml5+ASr4NLs
         CwhkqSp9E18j/uILqmaj7W5WQRUp6Olr6iSMao5dqIrnqMDzUQxcb3L1lgyWxU5Q4+vH
         w58ixFfME2t+rBJMCstZyuLjqg7fSqhRmNP+acJrkkk4VOOiMjKzwONr/bw/JVkgTP3K
         eWYk3kdovcTttrZdrpteQGpdicdW0ySRzVMnXF+0uXsMes6zEtvvn2w1FNSj0FQvGJQR
         rQe3tWTd8HOpmcIBCzE5fL4FzWJd9QOlsnhkE8PxA1xvSFIkGpFG4yJ8r2VEPkO5S+kZ
         ccMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=BlUW79aNCpZf/VQdI63Q2bhFtxnP4yvyGvWgUKSYxb8=;
        b=kDF35G0sb5GReDZ+Yl2as4qyQu2GOk9cJ8STERbL6O2yUgoXL0N5DDIGSq2JOAI2Z5
         YFZpgGcBoF+pXQXXA6gQoVT72ttZjQGtmJTlr90A/oxISolD9ZxurWQFLrqWPzUS++/o
         8w8GbSn21YDEuOELXajlhDE8/74EqIwICO2n406K1kLcijxFrfQMMGDuB6IH5ZHj3HfF
         OZ5gyWynUe9u1C2cLBt6bZNIF+tQeR2mLbGPOg4XIfD9mrvzkjbdefd/QKTETFbWsMfc
         SbZLbC2f5d3tjqMJ2JnUYyZ7moIhuWHeHSyAERpx43YrFxmvQyx9Uf+VB9Wmcud4nZWM
         Zk3A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id n9si272579wmi.0.2020.03.20.07.55.22
        for <clang-built-linux@googlegroups.com>;
        Fri, 20 Mar 2020 07:55:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 046397FA;
	Fri, 20 Mar 2020 07:55:22 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0FFD73F792;
	Fri, 20 Mar 2020 07:55:18 -0700 (PDT)
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
Subject: [PATCH v5 12/26] linux/time64.h: Extract common header for vDSO
Date: Fri, 20 Mar 2020 14:53:37 +0000
Message-Id: <20200320145351.32292-13-vincenzo.frascino@arm.com>
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

Split time64.h into linux and common headers to make the latter suitable
for inclusion in the vDSO library.

Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 include/linux/time64.h | 10 +---------
 include/vdso/time64.h  | 14 ++++++++++++++
 2 files changed, 15 insertions(+), 9 deletions(-)
 create mode 100644 include/vdso/time64.h

diff --git a/include/linux/time64.h b/include/linux/time64.h
index 19125489ae94..c9dcb3e5781f 100644
--- a/include/linux/time64.h
+++ b/include/linux/time64.h
@@ -3,6 +3,7 @@
 #define _LINUX_TIME64_H
 
 #include <linux/math64.h>
+#include <vdso/time64.h>
 
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
diff --git a/include/vdso/time64.h b/include/vdso/time64.h
new file mode 100644
index 000000000000..9d43c3f5e89d
--- /dev/null
+++ b/include/vdso/time64.h
@@ -0,0 +1,14 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __VDSO_TIME64_H
+#define __VDSO_TIME64_H
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
+#endif /* __VDSO_TIME64_H */
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200320145351.32292-13-vincenzo.frascino%40arm.com.
