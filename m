Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRB46UV3ZQKGQEBINZOWY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13c.google.com (mail-lf1-x13c.google.com [IPv6:2a00:1450:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id 38FB5184B21
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Mar 2020 16:44:52 +0100 (CET)
Received: by mail-lf1-x13c.google.com with SMTP id m29sf3427711lfp.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Mar 2020 08:44:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584114291; cv=pass;
        d=google.com; s=arc-20160816;
        b=gwujQKql78J2Fru2Zk5+V9qs45DNxoCs/diB7OExrF6NhHcCeXf+J7hxQx2aLMENLH
         I9HJbGFTWj5SHs9k0g56LI4SFt48bogHqRISzB0Bm9qSoMmSveOi8FfBEw64hd8zEOYe
         IaqBz/8/SVkUZGVc0SRiKyHbXpcpDDrflxwTm3BV3zbSsQvPm9LfFj8Vj/u2xa9j0Auq
         6FAXA7MxM1jQ59tCrv+7NRCGobafLf1dLgWP/HfaKBdI4eP1nFNbBeseWDvOUqer2dM0
         foiPCj7+3h0Stz504f4Xp5Pay0LV0C+YUKZnlsxzKumZMQJ9+WdofDzLxHAc7H+rdnHw
         gD/Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=UTglTRoB8dbu6DSAALJfEQSZvlpE5KiaEk0rQtoJu8U=;
        b=VK7uA2Hd9VON3AsrMTPFGR4ZXr70nSxfiFzgH6uiggPSSAQby9o7eSKXYQQyukro9X
         uVPXmjmek29aXMXDlMQAq2OSi1HkHjRMCQd45F1MRLDelh03V2Kl8YeLa2oEfBZzhhrv
         3MMzTxEwkx41D8Z+J+By+Io/V6XRk78UMb1+TUY9mTwYPkOluSk3+e/FTTMsg8OWMiqm
         W/DBZUfTi3LP9SWzJ+Wo71gizXPfgcPeQAvQZEu5/gmfzD1ilKnZzlPCnlWg7mC7YTY1
         0Iw9R8VEa+vW8vrYswgQsSfm9dqH2lSR4n+/5wWcVNMwKegdRZop5RYA/K2I5iPkpy5g
         hgRA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UTglTRoB8dbu6DSAALJfEQSZvlpE5KiaEk0rQtoJu8U=;
        b=KtsviBxcN+iq3LME0gd2HLxGwfRQBGxtFxPbTyAYhyKwGr5P1RdHcGxc8lj8irStZA
         jljJrnlFNDhvjGHCc27BJGv9uPS3tVjl9DdAPZyDEUu4axv8lzEucmJezthMkKEcHlMQ
         E2rkef+SW14Dis6eo9i5FfGhpvumyhy37YDNG4quidbG7sDH7CtbtQn9s3NObEwWR38h
         AfVd+pZVZQ6Qslvfljjb7EbnJBEwbEFM9hjLzFJsqB8vWZ4xauUTRKCX6MAgP8h2J7lz
         mp7EWNCKGySoZy9d/Ptn0nzoKxIl0H5FQmNvIUL8rvnWSx+Q8Negs0klQ86qpff7ot33
         zlfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UTglTRoB8dbu6DSAALJfEQSZvlpE5KiaEk0rQtoJu8U=;
        b=aDxXvNljYq2B3x/QZ5aDRVy7BhfG1l2BRIaxxG1tCrob4NlU6I0WFBkqYq5CNEAVu2
         OSPSKlq0V5MPRGA8HkZo11cEjqaNhH6/RCV7wwLqOd/k+OZ8s90ymdgj33ddlq5/aPnA
         CBJ2zLe11I1rfIc7fi4yUZT7nZ/Iqa1EfYcgsGyu3knrmD2Y1r4/+rXKDrJhf0GpIxlE
         g3vGq2teRPYqI0jXok7jbcglT/yDXu1E5emYUiA0ylhc4CKUKbRBytW980rxvsbBYlX+
         oWR1l12SPlenZ3F0oPjgLCNDaV73MngCtcUYUQD75sIIe37iUmqjZMiptjCTFKobcboi
         /omA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ3IjkiV7AfRKS61UG3AHWKslVHCA9+Ggl3cLoIT4OSnhfZ6LlOi
	0VNyKdeVnO1txeTU7ZdT5Tk=
X-Google-Smtp-Source: ADFU+vtdFNfHBoAbIPbMlAIsHE+Bjwwixyh2hKl/NwF5xeb6jYuJjhdGb4PZVDj01pnxfOyO3KLsng==
X-Received: by 2002:a05:6512:1054:: with SMTP id c20mr8758701lfb.69.1584114291756;
        Fri, 13 Mar 2020 08:44:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:211:: with SMTP id y17ls1965494ljn.10.gmail; Fri,
 13 Mar 2020 08:44:51 -0700 (PDT)
X-Received: by 2002:a2e:a401:: with SMTP id p1mr8738911ljn.106.1584114291205;
        Fri, 13 Mar 2020 08:44:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584114291; cv=none;
        d=google.com; s=arc-20160816;
        b=jNRDJOl2KX1Emu1M8dCnwNqxUHNB9e+uIXtcy70v46llFnexnM/XQw/L7UUE9P0HSB
         NP9yAVnLGTKKseY3YcoDrODTeRnxjqxtMmkN9YYJl1pNyjvAWOOSZwlN23wfnBi0w6lN
         sj34Z8JgQa1MBDbOxW8hUlYzCGynj/6uD/OTYzXnDSeevHEnRlJZAXjLLZi9zvSldfg+
         0ZjJpCu4yeZEAkZg3w7WEw7jeDIT9TUD4DXod9mayWIjXrSu0S+i+WucdbEjAV3gatZ0
         xckSj9FyCYtl1fDTdpb0f0vNKfKCx+B7EkYUUhJdfINsyaXyf8oWR7oGHe4p/Bprp8Aa
         9e+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=tiW2O59no9+QJFKPQIc1RP5hT/jS/N0FxsM4s5QO004=;
        b=ZUNGuZf8h8N+uhKcqaGy6k5Rje/TX0TNnXySXjY/+aBpyfy3tKtKZ1t+N7D0tiQXXv
         G4xjZxMLHZ6o9ksDkZElryVT/kX2IFP7DI3iqiG63zcE2M++a/oSQs8OA6K5LkuhTL2U
         RMgSPpYBpcSEDhOg0+BzH/yTtiMqJGY1Y37jV58rXTV0GKSKJ7Il/aOm/eDeOYEa6YZl
         ODniHImvep40YpiItkcWZO3qn95wYXWawH5wQ6XrXrTuPdqs80zAn7j0osmG+wBVMNNu
         sp9zzWAX/CsrDn/t68M7vCTUQo2+scZhHFsvbalZt+Z+AHOI/INXmC+GaCrjBXpWXkuP
         CMoA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id m11si236021ljj.2.2020.03.13.08.44.51
        for <clang-built-linux@googlegroups.com>;
        Fri, 13 Mar 2020 08:44:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 53188FEC;
	Fri, 13 Mar 2020 08:44:50 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5C3AD3F67D;
	Fri, 13 Mar 2020 08:44:47 -0700 (PDT)
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
	Nick Desaulniers <ndesaulniers@google.com>,
	Marc Zyngier <maz@kernel.org>,
	Mark Rutland <Mark.Rutland@arm.com>
Subject: [PATCH v3 14/26] linux/ktime.h: Extract common header for vDSO
Date: Fri, 13 Mar 2020 15:43:33 +0000
Message-Id: <20200313154345.56760-15-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200313154345.56760-1-vincenzo.frascino@arm.com>
References: <20200313154345.56760-1-vincenzo.frascino@arm.com>
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
 include/linux/ktime.h |  9 +--------
 include/vdso/ktime.h  | 16 ++++++++++++++++
 2 files changed, 17 insertions(+), 8 deletions(-)
 create mode 100644 include/vdso/ktime.h

diff --git a/include/linux/ktime.h b/include/linux/ktime.h
index b2bb44f87f5a..1fcfce97a020 100644
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
+#include <vdso/ktime.h>
 
 static inline ktime_t ns_to_ktime(u64 ns)
 {
diff --git a/include/vdso/ktime.h b/include/vdso/ktime.h
new file mode 100644
index 000000000000..a0fd07239e0e
--- /dev/null
+++ b/include/vdso/ktime.h
@@ -0,0 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __VDSO_KTIME_H
+#define __VDSO_KTIME_H
+
+#include <vdso/jiffies.h>
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
+#endif /* __VDSO_KTIME_H */
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200313154345.56760-15-vincenzo.frascino%40arm.com.
