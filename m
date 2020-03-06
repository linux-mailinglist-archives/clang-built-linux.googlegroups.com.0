Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBGNCRHZQKGQE3DD52PI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43f.google.com (mail-wr1-x43f.google.com [IPv6:2a00:1450:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CA1F17BEA7
	for <lists+clang-built-linux@lfdr.de>; Fri,  6 Mar 2020 14:33:13 +0100 (CET)
Received: by mail-wr1-x43f.google.com with SMTP id 31sf1011987wrq.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Mar 2020 05:33:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1583501593; cv=pass;
        d=google.com; s=arc-20160816;
        b=rxfSYxkC+wGQgceFqfW5EjvVD6u+B1scZPDfzTnqH4ju2WPN2vhF5gFwEfg8iCGRqM
         BJih1w3xmW+Ip9SJuRUlm9N+Mjs3MOZOvP6XpIO1UJxm9UU70FEXT8ZWl+DDvt4lXrsc
         RurlilU61u4MxYWJzWg2MNcTDZd1F5X8qOsLJS8VTxrnBn37miLgaSQTxqXooA0hIgRo
         1cNhmEFpftlwtGSkXEUXvSifFuJHFm4r0NuXNndJzY2EvcNbVuj/rIUx0WnV/jIxO4Ww
         6OsFndK5nGtdxf0e9bXH+hTGhRlo9ukF3Xn21IglIlF5uNo3Zp6uEFTRW1e31UgEvwU7
         lm+g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=y/elmQ67ZGEEIGHjLWtARDElaY4EvnTdxIlf97gy3Yg=;
        b=q7ikr+kyFMRgWHhwEiUkosVTF0AD6WeB8q/w3vQdpjaZ+jQJefz+sZqtHDLNCfNf5z
         BHMm4jveQjobbii7ivNNnn463Zr6oKkNsQmlJWPaxUn1wi1MBOcFA5ijpsjP7Mbkxi8G
         MhQJ3Mw/7sQMl0DWqZcuOT6VrXiP/Oq6c5rRV2qQajv84n9sgVkoKS99CUhCW0WVyQ2N
         D1lw/ZR0wh6wgVJTje+uzXIah6xJFvnkrH2GmtD5SxUIlhGlzxjjOFs31joei0vFCsV2
         31MPU0sssPKV2i10fK9gVlMYNkMMS6QVux17JDjEtgAj4g8nUVWVjWm1a4EERAI6pomG
         gdgQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=y/elmQ67ZGEEIGHjLWtARDElaY4EvnTdxIlf97gy3Yg=;
        b=KMiX3g4412SxmWAun0PIsTmJuPuRSLI3ZEoc/WTyQwpP4x56nZrzNrrxpiSKNbTE5y
         YLItVS1aCoGUDteWrm9N23SZemxEZgr+NsNvMHyqsMznOZmezLmq8has8S3/p7ooUw9e
         7DqJDKPdfNxIIGxljvXOsbBI9uxtUfNJ7v1laN1Mlr3xEIeIR+F0DV3GFGNHaNrvhA1b
         kzmy2xef87Oc2gghvG3spboF+Modd3IluDtVn0t/iMhFv2HD6+tJXa7z6ltLrnvQERIC
         PtMOWTHBPNmF/ncnl5kOp11PRgdDDCJVfOC88rs39uAXdGGHNGFls5JnAxC6rfy36dL6
         mCnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=y/elmQ67ZGEEIGHjLWtARDElaY4EvnTdxIlf97gy3Yg=;
        b=qfZYB9LyeBLxuQz+EAEFvU2ificErMQcA3fywlbvlwwsW7TnUH5HF4Z4vCXXn5yAWn
         TFzikJgAeK6/cSodshN+l9Pll6DhnqukhsjCuMP2859yts5cN3TsF7t0COzXbbIdKki5
         ncUMgD2OM4peIuYAJc/C8OY7RVbIfa0zLbwJyqJln8DzNrX69i0/McvtoaAmazyugmsx
         2Q95nfkszgob6W2WXJ9Hv8IOYm9SfHeRujsXJzPWLDXaFd99qasUBYE6oPjaPrdRAxRC
         fEIYwDBdW7WeTI52c6lNAqWxhjwH8eHcGx5S7mPvxcBVnGacqrnT73zHLuxib+wJhw2D
         xtPA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0PwSl4etP/ScH9k3Ft93m43iNWSxdhYCPWvFU7uQ98iksmmhNo
	f2RTLJkX310H+ZClfI/VwpE=
X-Google-Smtp-Source: ADFU+vsnftJC4fB4eWazkIFxfaeMBMJA9rnZOP1++VdMkvS7fp/J/ckj6mYALKdda+XJXuSpBUQvKw==
X-Received: by 2002:adf:edd0:: with SMTP id v16mr4289923wro.357.1583501593141;
        Fri, 06 Mar 2020 05:33:13 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:208f:: with SMTP id g137ls1243207wmg.1.gmail; Fri, 06
 Mar 2020 05:33:12 -0800 (PST)
X-Received: by 2002:a05:600c:2255:: with SMTP id a21mr4183771wmm.91.1583501592489;
        Fri, 06 Mar 2020 05:33:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583501592; cv=none;
        d=google.com; s=arc-20160816;
        b=eiq6U50UjmydO6qI8fUTTpqzsW+P1FrrMp9R5NX8pN+tmnpfFdXqUwZWIRFhtroqy4
         YO3Ndufa/4kr24/747htuWuPxySggKpaw+GADhtEzUWZvQImXca0lSN8Z8/NSs5dYYV4
         zmIM+DTLN179t3z/Zk2XLiImlSpZ/lnVevMwPXjN/dOW681AE55NvceSnAkk0A9lc88w
         afV9wfoA6olB2uC4bMPGLF6eJWIXNTQXi9l7NTuqeDaaRJegV6+qKh8z3DbJOqMtAUTW
         l1v/syp4K0uhPJoeceEhP80Pgd2Rx2FJ89h2V5XN9JcOAH35AIJ+pLWKVb9EVb6HCJNj
         5yaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=45dmz4lkLqEgQEkqWUZLOEEGGbz2t9aZYXC56JrVZTs=;
        b=U44sOjkdG0I230JkxD4IdKuHWviWW8dAEzCXWCYcgrjIQh0EcJc3gRDgjJPrjrldA1
         uMC4paQBnlgawrZKnNWXszSHrTRe5YaeSpEGwKltDP1rl8uLDUkEvzwt+2P4pvU7CcXY
         jV5NkPDc53UWtyVvkRJG7025GrIr8ESCMepvhXQ2iMYJoGpSFeVk6ErFcdMtrKG5yCgs
         2+O5j5T4tYI6a5GyWBATlaDQDoUhqIrX6zFVBTLR8HWX9bKDOkuwiog+n+Td8GgR11VV
         2CVpZLG6tLyEwmsW55Tgk4chRgfehZhUmN0vZhli6NHEFV7bACOX80bm43e1WTJ37RQ7
         kP5g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id y185si93189wmd.2.2020.03.06.05.33.12
        for <clang-built-linux@googlegroups.com>;
        Fri, 06 Mar 2020 05:33:12 -0800 (PST)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BF0E1101E;
	Fri,  6 Mar 2020 05:33:11 -0800 (PST)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0971D3F6CF;
	Fri,  6 Mar 2020 05:33:08 -0800 (PST)
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
Subject: [PATCH v2 06/20] linux/time32.h: Extract common header for vDSO
Date: Fri,  6 Mar 2020 13:32:28 +0000
Message-Id: <20200306133242.26279-7-vincenzo.frascino@arm.com>
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
index cf9320cd2d0b..e75dd5f9df8f 100644
--- a/include/linux/time32.h
+++ b/include/linux/time32.h
@@ -11,18 +11,7 @@
 
 #include <linux/time64.h>
 #include <linux/timex.h>
-
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
+#include <common/time32.h>
 
 struct old_itimerspec32 {
 	struct old_timespec32 it_interval;
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200306133242.26279-7-vincenzo.frascino%40arm.com.
