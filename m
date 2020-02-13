Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRB6XMSXZAKGQETIIKBZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33f.google.com (mail-wm1-x33f.google.com [IPv6:2a00:1450:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 62F0915C7A1
	for <lists+clang-built-linux@lfdr.de>; Thu, 13 Feb 2020 17:16:58 +0100 (CET)
Received: by mail-wm1-x33f.google.com with SMTP id t17sf2200553wmi.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 13 Feb 2020 08:16:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581610618; cv=pass;
        d=google.com; s=arc-20160816;
        b=DdeaFJ59dtPEWqQ/Ef6SmNMsYYIt6aWH9CxKZ3voOgw6OQlR+bF2rWfFtH7pSuOn1K
         kLIn/Cvtwj0kP1ypg+Ucc8mwqUBLPqOFrsK/V3q2wONNIkgf7w3gEQnmhAS8CZ4d2QSW
         aupDEKqypmuWMoQk3RG7Lgpuvi5oWzFDgDyk0VH41ugq8TbydgFeP/QuhCIdzsY1heYb
         vE8Ys0wrKA9jtyRAX+PS83JzaPliOz4zomtc3+quYvzYUMxWU7CIxP12j4RisOsSnTxL
         Ge7uVDgfz+Ft7RY5bt3EUHmSkIDI1a/rZTHwNn8WkSQk0p22YHugrc7FzG5DDJgssUas
         cnpw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=DNJpo7t/1A1rwAc68qCTMMLvU9ML1BLgZb3+Z+DFpxA=;
        b=z+JbI4RY9MEX9g3znzygz1ranQNZg+Uh2vAy3KHxaq/UuUZcHBVFTFbGcSN3MCUR5c
         hrU/Y+T5waC23/1GbUIvmRGm7KpYxw2L7dWH8bTasv/3/YsgPaConNRqjuiDe7yJE3ER
         XuAyIgEsmDgx/OGK9dJ0g6Jt6RX6NQcUzBLe7PhJGtIu5pvFk2w/gIdxPcEHVeaiE1la
         ao9crwA6q4awcfdoOXb1CKNv4G345V91sxCnSQGNiGLeaMrdrSox0VAXs44UL03BDKbs
         93vNJWDrQd/vxYAoetJdtvRi0PaPtbrdtmoHMIVAN9JByC9ak0pMm827TdW21LwDhbqu
         /njg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DNJpo7t/1A1rwAc68qCTMMLvU9ML1BLgZb3+Z+DFpxA=;
        b=Q1xX91//uvEXGkKy/yBhL0W7KJfeQ11y80NKl8kssjeQXjwDUakpiiOPNEHt6XrWgS
         YC+ev8FpIw0DwhQRcMBbret6u7qNIwpSJ9Nd9Goh7ovjhmNSBGbUeIDgueUc6UrweBQo
         hWAtHfjdVgKzDZ2crPKYycIpsBxP7QcN7FxJshz+q+b8T7EODkD9MCwuymZshDphAXAo
         9I4yp9YzMr9uSOb2r8L11cHjpZNPgJPKKTa3heAgftlq8jY/jf2RKDYPPBzHbzPfQDRY
         yl0CyjhtwFTKuMiFi5CtgzOGprenW97BGR4TwCc0iqOqncNy9IphQZ0s+Mt8KvBXajrX
         3IKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DNJpo7t/1A1rwAc68qCTMMLvU9ML1BLgZb3+Z+DFpxA=;
        b=gmPF9+bWeMiv8d7DiP91SbWiLrAbtol1W3CQDH+GKjgVxCSuvGa9NBvzFZZmxYKEkV
         oxgNDu08V1NrVQGUyoIMSoCZZQ/EfnGL1iaH/v+cq9EcuiJHE1gASZJTqJtHfaGkx+/T
         ktQc6Ee3tDsPhCFUMFfs0k6d/7hd1ONiO7EaL0CHd3wttUvfWLownZBVvAiqQ2piy0Dg
         +WRY/F6sdSfbNmkF3yuRs0C83j1GoBxGzpJa3vvZP2Vo2NIFYAfYXySPvKg7JOQqbMGN
         y9piJXcWzN6qP+FdOt6/Khan84BUUNCQMZzv77Zv0e8NyIXqWavFROxxWWvzMvr8ndKI
         ++vg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV6Wgg7YpLWk2MqIe2PIhTKThuYFCQvyYcfUps77NNkYV7Uy67q
	ayvW8Mre++VD68mJ/0VFCCk=
X-Google-Smtp-Source: APXvYqygezPGJA1VnH0SFcKVjHouu9ruo7nLJ5NDBMrbTpSmY8VcI4OJS6DhFCJsTUR3DgGxUDXnnQ==
X-Received: by 2002:adf:ffc5:: with SMTP id x5mr23127706wrs.92.1581610618077;
        Thu, 13 Feb 2020 08:16:58 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:c452:: with SMTP id l18ls3422085wmi.1.canary-gmail; Thu,
 13 Feb 2020 08:16:57 -0800 (PST)
X-Received: by 2002:a1c:7317:: with SMTP id d23mr6782674wmb.165.1581610617529;
        Thu, 13 Feb 2020 08:16:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581610617; cv=none;
        d=google.com; s=arc-20160816;
        b=H88NpO0kQIYbvdLgWCNGD0llKodvl+O5UozxBPvmAGFn+qwgSFpn/KJCxe/wr7tDA/
         ea9bUkW/o1rVzQO7ZFp6CJNJ7hghW78A2gF1ittHG94lGYdwwG99ME/FlhFqugbU67K9
         TQATCcYqTNbPbs11m2haMMLIpYh6A9MtsR45yFjc9puQBCKNuAsxSITLme2kMVGv5b/y
         LMZh6WilbYKUxsnGDkOu26gIcmVGo7piw7FBG8IqpD6ScGwVxQJOOArMpMgKGDzDTBPO
         u6Ly75bOa92nAPTuSpvsKRY2t+ZflLccao/KrNsy09qPl4xa1fxFs3ys3XQFxaBvcYks
         W6zQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=7c/QkYSAk1LTCsxn4aeP9uVtddrTtUlnKQdt/0P09Ho=;
        b=oKQGZg7bzfRXKR/5dzvTakXj1IYVYQuqxnT9NZTLYk/YZOdMy7wGamGadSHLaXfgJl
         ip8wK+r3N+tzhdr+MJLSQehow0Il1SUzTMuCdtUzfGuYXhfZJdwNLKHrPPiDaVg6nY1W
         1tw4+CHevaw+8toGiybu/A+HO4rWr2lo6Icvq4Vx2tJrSXpRfCXNYkgChwhw+eB6chS4
         hdsDuMUFuS1m5qE4I3c5WvY2IQWOoibqzW4tnPk0ilHj93a2kyIvujZQyXY2IQ8Jgzb8
         c+UlFWXvHJGHzmDJXr5KtIOOeINla7kUhf9sSzk1zFxeLNAWO+c2clKwN2eFP+5GmuBf
         Eipg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id d14si114501wru.1.2020.02.13.08.16.57
        for <clang-built-linux@googlegroups.com>;
        Thu, 13 Feb 2020 08:16:57 -0800 (PST)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A0EB41063;
	Thu, 13 Feb 2020 08:16:56 -0800 (PST)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2028D3F6CF;
	Thu, 13 Feb 2020 08:16:54 -0800 (PST)
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
Subject: [PATCH 05/19] linux/time.h: Extract common header for vDSO
Date: Thu, 13 Feb 2020 16:16:00 +0000
Message-Id: <20200213161614.23246-6-vincenzo.frascino@arm.com>
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

Split time.h into linux and common headers to make the latter suitable
for inclusion in the vDSO library.

Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 include/common/time.h | 12 ++++++++++++
 include/linux/time.h  |  5 +----
 2 files changed, 13 insertions(+), 4 deletions(-)
 create mode 100644 include/common/time.h

diff --git a/include/common/time.h b/include/common/time.h
new file mode 100644
index 000000000000..90eb9bdb40ec
--- /dev/null
+++ b/include/common/time.h
@@ -0,0 +1,12 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __COMMON_TIME_H
+#define __COMMON_TIME_H
+
+#include <uapi/linux/types.h>
+
+struct timens_offset {
+	s64	sec;
+	u64	nsec;
+};
+
+#endif /* __COMMON_TIME_H */
diff --git a/include/linux/time.h b/include/linux/time.h
index 8ef5e5cc9f57..617a01e2c8bb 100644
--- a/include/linux/time.h
+++ b/include/linux/time.h
@@ -111,9 +111,6 @@ static inline bool itimerspec64_valid(const struct itimerspec64 *its)
  */
 #define time_between32(t, l, h) ((u32)(h) - (u32)(l) >= (u32)(t) - (u32)(l))
 
-struct timens_offset {
-	s64	sec;
-	u64	nsec;
-};
+# include <common/time.h>
 
 #endif
-- 
2.25.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200213161614.23246-6-vincenzo.frascino%40arm.com.
