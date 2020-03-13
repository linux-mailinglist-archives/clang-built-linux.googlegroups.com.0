Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRB3OUV3ZQKGQENDLRIEI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23a.google.com (mail-lj1-x23a.google.com [IPv6:2a00:1450:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id CF265184B17
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Mar 2020 16:44:45 +0100 (CET)
Received: by mail-lj1-x23a.google.com with SMTP id t15sf1510897ljc.21
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Mar 2020 08:44:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584114285; cv=pass;
        d=google.com; s=arc-20160816;
        b=K0O3v2VWa9pml5qXw1n31BatrKAyd26w7v3RLDIIzAeu00mfC3K239C7Ac9l6p1dQI
         pIjQMg88bChb7tgbpV09Nc482T8IW/lft5p8y2joHm/lCWjwWbTFWIr5PJAuq+d4zVHR
         PSka0aPpqLysaVcm4jY5KL7AyGUsmR2r/nRN+AlT9Ce+W6jEPk9rstMHGhLsCiJk96Yp
         RCV2Yr2N3PKNi7ON7ok6p8KYkAYwookv++HBkn4nfXzDaoEK3edWLMkhtyZ+j39QMQAm
         tVedvaP3xbTbNRIiYi9IM1P7FDVMEyfkNzRbbyvJCqVsUAstN71xihbfeRslqg8yKIld
         bmxQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=AsuSz77M3zXtlRh4S9Et/AJwuVM/KGdQCBVPupgjJus=;
        b=g6DMy9UovYG9wslfdByGttSZG/A4qKvtnlTlqbSdjSWaK9heJAUaxXkVyUC5ACuFqp
         mf8takPGl7OxX1Fu2hkiMQ1C2/1SHBPOlymdLnaSvYT4lebLFCy0E7PsHPrUr2W4Lh18
         gj7qOsdm9s5K3VVcaBS9WZzQfBnbJqVeU2R3G2X3TmallU7YqxmldZ2VNVYtkEoonMaY
         ovQEX05JNn0oNqx8cPHN9pjp7La0VKDC/i7Jo7DquH6k2H9UsRvEyZLAg8QqqC72+eZR
         PlbGSZwzkW2dOHc2skMH/pnFIrI42npD893m0WGkPaO+bJ+RAFXWWLWStTqqOJHRpWF0
         j8aQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AsuSz77M3zXtlRh4S9Et/AJwuVM/KGdQCBVPupgjJus=;
        b=izQ+DR6aPIxlF0JWUonjjt1MQVdAlJwp832r8PmawltFEJIBr/PIMyvEZa9+odrwos
         cEWGB90MvWzF9OQ8f/+o4XMLSr7/IZ/tmMm62kTKv2FoBNVBzEiQh8gZDaKDr2vzs7Qs
         1k+OOJEJVe1arCs+QyGWC0XqDfqnq8eqM/7r60XOsq/UWGtT9AlM0wD0hDdKl9gT2Jce
         jzVuGfDJPesQqKms+tmU+swMi+lxjaF6L10IoZOFWNKWwqZD9JBGVAZuW2PuQk7uE4O4
         /wV+PLSGVxspByLpO3fSNPXZoJJeLpt849Rr0UJ8xL67O6B7P4zDd3PR+EvLZlBiQkV/
         qCUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AsuSz77M3zXtlRh4S9Et/AJwuVM/KGdQCBVPupgjJus=;
        b=kHF1JK+Ai8vL5rVxB8Dx/4EQFNl5sok2CQaCeu+6K1l7vLyYMXM2EluWD9BvLIuj6V
         94EMnGEunJZSKm5xOOCXXPMG3x8hiK3fxAETcV7UxgjTM/vw9L1TvCvA9+k8DcYiwupo
         6Rd9vSdEDUjQIToHI4Rj6qhd+Xv28oBBRKbtxXE+svqZs2VH+mhnviQPddAeRJerIEFh
         LZNgM94z5VA62KGiNMvOx0z3feCzZ/l6NHUo0+9SBw1zNqWfhIbGTP720ryK/i4oFHJG
         7OjXp8AIE5EO+Xtnq4Tvl6h2N8fjGsE62pQuaW3D5g+uE/B2lKKA3E1US6SBXwozTSPh
         4RaA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ3dSPAf2bGceUn/Yoky+qiXSMzt/rguu0ET+8OGefb1ev4f3W2n
	1BGtnw16FM6rPKwsjfzJDQk=
X-Google-Smtp-Source: ADFU+vt6zx12PwZ7jyQOp69lnIGdg36xiM7zqTwj1J00whDdBXX4eSD5kkUjt1MybVfSazovnEIjZQ==
X-Received: by 2002:a2e:8608:: with SMTP id a8mr3247809lji.59.1584114285385;
        Fri, 13 Mar 2020 08:44:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:550:: with SMTP id q16ls1977770ljp.1.gmail; Fri, 13
 Mar 2020 08:44:45 -0700 (PDT)
X-Received: by 2002:a05:651c:1211:: with SMTP id i17mr8647255lja.239.1584114284866;
        Fri, 13 Mar 2020 08:44:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584114284; cv=none;
        d=google.com; s=arc-20160816;
        b=jEdkOv5QiI6/P3WJxIpQWW9E2RKjGjorybQpmOCOL6JTQoQy1AbjyyO33ekn0/qoTT
         bsw3Zu2jGu0y/ezE/+w52VPIIRETvmk2TO43eUpcC375PV5fAAiVzh/265IuZpfsQBpf
         i+wWX05kVUjeqeGf+WBRlVAVWVALpSPxo+gOarOHvK6Nk6gU3rN0ZhoOTJM8oS0fXW0O
         K5zS7HaFadCWrRe4C+lFl48eGpUb+CmYAOP2AgErZviiL0XDu7e/ECb7YeISO3J2kIPr
         /p6y5a3Q4Gu22mIXFsyfYpbaXYXZ/I6d+HKYPs/jh6opkDutD9f5wL0aORparQ+CyVSQ
         iCzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=BlUW79aNCpZf/VQdI63Q2bhFtxnP4yvyGvWgUKSYxb8=;
        b=gmc637ISSq1ORCfm/Xrymgv1ZHA8Dw8fi8I21AWUkf1PbIJ4Pgeb3nOWRqS3Zqwubq
         ok2ykGdEZe1kyw9JCAuLcVVDmhm/AN/tJF6ehet3ZRkBPvQSuqzNdSdgxalrzUCV2iwF
         woW/4BanFHB4+MwKEHQmS76QT0yBZrN/sqYUk1XTVWuu2emz32MlFL0jqzeXqnnpXJUU
         WKe3izJZKRSg5O6V4PE4kZ7IJ0F/ePJnq2/4HjKsAvXynEMkSdhSIjbQH1o37I8oh3gd
         lAsU/QjEaOOr8GjqRdsHmrGpSmsz8MFOiyRt2hENkYl789LB2UBnRpl0+Q77BTAc2YHx
         eneg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id d12si428315lfi.2.2020.03.13.08.44.44
        for <clang-built-linux@googlegroups.com>;
        Fri, 13 Mar 2020 08:44:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id ED8F531B;
	Fri, 13 Mar 2020 08:44:43 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0389F3F67D;
	Fri, 13 Mar 2020 08:44:40 -0700 (PDT)
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
Subject: [PATCH v3 12/26] linux/time64.h: Extract common header for vDSO
Date: Fri, 13 Mar 2020 15:43:31 +0000
Message-Id: <20200313154345.56760-13-vincenzo.frascino@arm.com>
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200313154345.56760-13-vincenzo.frascino%40arm.com.
