Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBQ4CYPZQKGQEUNB6HQQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33e.google.com (mail-wm1-x33e.google.com [IPv6:2a00:1450:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id 7979B1883AC
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 13:23:31 +0100 (CET)
Received: by mail-wm1-x33e.google.com with SMTP id f9sf4099241wme.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 05:23:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584447811; cv=pass;
        d=google.com; s=arc-20160816;
        b=osTJM1OulNttVdKisx7X0bYUKGALMZZz2arigNVTxqtnO51uLF9JTNlgjeQ4zDSayO
         nTmdp3myE+hQ1qiPI+Q8W8wae3XxEXKjo+15/dB6LG8DonvaqApG3zRo5djEv4oA8z8I
         Yh/7v9C3KzD06x88ftK3thKoZHnGJO0E0oEupjcpqupdwJJQyUy9YpLrhv35c78qe7yu
         klbFdll97OrnT9flblY9ZcJcMdXFpYblIYB3995mS52ndcvpQFQUj7LFm7kpGyCC/hhE
         67W211Bs2lKjsE9/EqPkLMLAKy4nfPISavfhKbHOaA8fsxkNeZt3sYMJBb7xHItakfci
         EZxQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=1VJ2fNC4GctC8wvp961S3ZzTfdm3nVerQ59aYiE3wEw=;
        b=Pm4HLMeAo0J2DIzqPh+I5ib0/U0ZeNwxvf+VKG6XFMrgnNGL4LfmY/gR9RBMRVQSgS
         Lh3Otf9unchRa9QsWM+/0vdUkEKvTcjZN9Zb8Y1XZZ2vs0mOigntwFW+FzjMhJNVkg1k
         uCNmTezYfN8tBoW+BsqJfHBwDiZBcsSdFUY7bca4wVyKoACrColORTdHgrwQ9/ISJ8MZ
         HWhYRDaiH9PiRySDbnAZfvKHyi8Cu/mnPdMbgsHD8NLGSg6C6i9VziQC7Us8PQlCvrPe
         BD9gwYx7PyS+Z5DqFBXed802cBxxaWmkUBkysO6XodxzJUwbLatTkRhJXB11K2G1lti1
         ymdQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1VJ2fNC4GctC8wvp961S3ZzTfdm3nVerQ59aYiE3wEw=;
        b=eGAcJcGuqTFGU4bcGn4h7rG4GWZwyjyZy+D9OSRoXCZW+81hOfUZf7ZEnd9oKuakMS
         rd7cpwClrXM3VzXVcTyLYRftlXr5FTn9hf6UVjnEIE4SekhMkJ7alK3D4pPne2kK449W
         vGCvPLWizr1y7jAvnf0ZvhgZksHptYMRXnk511IuJkYrXK6VYMAODiPa9wEMb1m2Wh05
         K1pJk/vbGkN53QrMzt2hJfZKsG/49ty5KfHdBXrR+thi5XOFUvf3oPV74Cqhgw97Nm17
         ZcKOJKfMZZQPLoku0f5ov53QSuX4ixY0MqDd10SRTM4ibwa54HVdJq6sbsxi/95OqIKE
         Og1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1VJ2fNC4GctC8wvp961S3ZzTfdm3nVerQ59aYiE3wEw=;
        b=lHbdOE5tFAwdJgBj0f0KX1Sh6udTxZgLsFwBeyHFL1uAiKbJdmDIMJlSJwEBtG2hF8
         jQLPRlXV1inG/aIO7xxEzP3FXroGgtURoRH+i48lBOWr4vWxD8IPqaTrZUIyANIXvUDK
         iBnoZ4NuJCy8qxUtpt/tlZXeVu/+QKP/hJgxq87PHmeyQ9SCDY9mW1o8s7Ld4rRH4OME
         +FEdQFI+UqFHyl053Y1n1UTqO41kxRINFMASVBMZcAPyIb02Q9OkHqKZRTxTv9uTNud2
         EcDpkHIEUHspFjiCUbo+ctNaAAY8kp5cxZyFyKQr4lcqmngqhQupTzw0TWGljyG+HNQe
         R8GQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1n3vcaTAkv27fshmwHdBCiuUzhuXNsuDPNj8fsFcQ0ODyAIk2X
	epN18QIb04RYqUjPC0/Vc4A=
X-Google-Smtp-Source: ADFU+vv6K+9urNl2GORXYJ5h959Jmo9w2IhPMukhibLzzWvs/VLDW7x2CBNW6EsfPuvkas5V+9T2WA==
X-Received: by 2002:a1c:9dc6:: with SMTP id g189mr5292132wme.91.1584447811153;
        Tue, 17 Mar 2020 05:23:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:a5c6:: with SMTP id o189ls35405wme.2.canary-gmail; Tue,
 17 Mar 2020 05:23:30 -0700 (PDT)
X-Received: by 2002:a1c:7901:: with SMTP id l1mr5122031wme.188.1584447810611;
        Tue, 17 Mar 2020 05:23:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584447810; cv=none;
        d=google.com; s=arc-20160816;
        b=v2SmE2sDeFv7jChMzu8MLUZstsjEkY47osET97Yre0lI/FyOtvh345sy1/evxypE5y
         7g10jtpCkKVfA5TeGjAvi0UZVZDeObCAvlqS7IoIi7i3rvkpiNQr4iVixS4ZyirmU9Vj
         eABi4OB7n8ES4hyuedHI8uMktmKrggBBIFnJhzIvpN1D8dhKJI5hdYnn2WbHks4bF6so
         nZC3Dih+h+HPHX5Y1HHX5IQ9+D3fZbv2b0J+2uOQXztD31WoxwPb9GssxvuDdQE1TWHv
         DzC6L2axU85zyLg4HkxjWHu0BhciwNn/4uSv0ZWA7BPSu+fBlnrQzIkY/nBc6XGA6hsB
         cDEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=BlUW79aNCpZf/VQdI63Q2bhFtxnP4yvyGvWgUKSYxb8=;
        b=uTGZd2UlzYoBgM92bUjf5T7zc7I/osrJPajlWJWjUdVHM8XR0FjG15EM6SoI5bUVgT
         up8z5gXX6ufMg8rfuehusXJLBMivcVH7lc0RqgT38VxA1qZ3FP62OijjBQufO3eT2X+T
         BUFTKIJQjC8ZKXgOPuqdYU6PVeafiO0vb5Tv50mwJ3xM/bR1CwsuEZgkGS42cpVC0pQ4
         erWxFO5neuE2XACAAjr6buXZt3xlLsi+EuLZneAsyWfLl+QgJUrDNU7Rb0U7BvxlVgWu
         HRa4gvjalc2hwCsA7Yr/e0+Q5lWvnKvEhpMOogeInYZMwY5Rk2Eknv8/MZQb3wDLTVXK
         9kfg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id i16si409916wmd.4.2020.03.17.05.23.30
        for <clang-built-linux@googlegroups.com>;
        Tue, 17 Mar 2020 05:23:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E84CD101E;
	Tue, 17 Mar 2020 05:23:29 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id F2A093F534;
	Tue, 17 Mar 2020 05:23:26 -0700 (PDT)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	linux-mips@vger.kernel.org,
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
Subject: [PATCH v4 12/26] linux/time64.h: Extract common header for vDSO
Date: Tue, 17 Mar 2020 12:22:06 +0000
Message-Id: <20200317122220.30393-13-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200317122220.30393-1-vincenzo.frascino@arm.com>
References: <20200317122220.30393-1-vincenzo.frascino@arm.com>
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200317122220.30393-13-vincenzo.frascino%40arm.com.
