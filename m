Return-Path: <clang-built-linux+bncBCTNJS6RZAFBBRE2T3YAKGQEAH7XQ2Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x539.google.com (mail-ed1-x539.google.com [IPv6:2a00:1450:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id E1E6712BE1E
	for <lists+clang-built-linux@lfdr.de>; Sat, 28 Dec 2019 18:13:40 +0100 (CET)
Received: by mail-ed1-x539.google.com with SMTP id y26sf12889979eds.5
        for <lists+clang-built-linux@lfdr.de>; Sat, 28 Dec 2019 09:13:40 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1577553220; cv=pass;
        d=google.com; s=arc-20160816;
        b=CfWVZlmZP0RESFnQc3A+z6ub6h0konN2R9aBLrfDW3bx0AQVzVBMQxEX0KhtEMSkub
         bOBiLwJqot5MbKA5BVQQ66ujuSSyfBKD0opfeJlps7yewt/nkwsNRNUIFkjZvf9G6PAd
         ITrykw+amDv6AZhCD/+ebn77po5xiPiM0BtqMWpERFuvfm17hiK8kYwCey+rdLLCu3sV
         mfaFzr/avy8rudZvMEGmo4gooj940hVSfYNMgFHdzzdSUQte/ZzmOqqsTux62s7sTS+5
         uAGhQphpe9x8oVtL+v67w20TkH9hOVev5TBmU+TGrkL+y8e32UOAzGuQ4ia6MOpbzusV
         BZmQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=9PDZst6J2mQMMF0ufHoYLTEDY+FF1fEwheeg9EgzCtI=;
        b=xRW9QTWDB1Iqf8r9fdtHq7Z7P0v3JOQ0tCzuiqPBKsbrZy76T4hyZq9BGEy3K0Pog3
         ok5Ep1/IqkD6FIpOgf14g7voP4ZpFLijO2IFthxThU4Zqkb6c2i9FOXdbOneYi++Rcck
         T3OJdlJjIcn+QFNrJ3PV/ULg3LvRcQBPoD56A2FltiYsPrHHw6A0ma2ju+6NYBO+EmBR
         GnvLDL2KcTzRfYRh7lHXyEFw0zzpGtDt9KVI6yJ5EHnHHBingN+r419a1ROzAO7/C6Hq
         7OhZrhIsbsLlfDnHiKuLL4yzK6zpMsTIxMTCgUeFMqV36dLVQU+jv/8GFCx3/xlqdcsC
         CpBA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of mail@maciej.szmigiero.name designates 37.28.154.113 as permitted sender) smtp.mailfrom=mail@maciej.szmigiero.name
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9PDZst6J2mQMMF0ufHoYLTEDY+FF1fEwheeg9EgzCtI=;
        b=c8S4+UOnn5gqUSR7pD03HSSr/XtBDXAax7eS5B58Mk3OvROyF+Ul0gmieT/mYY1w+R
         9LA2d4LZHiA9/A+YasOgO3sjbl+flvek+eRFfz7ZmQvxFsoFLC50ztP2JEllhW25VRip
         dhzZ+KF6upt0C2kwBCvH6+MytaQda5s9S6pBoiDS5ZVnjJOQ2LzJFkYGK8ADkiq1Yz1O
         Dyz6jYh8swwqEzhx9bJ+9a0DKytt/iZJ0G1nCAktnlgD67E2JyTpky6t4VDCt/7yIMrs
         ezyKY4K2hLvNvomoARzGow01pXxLcvsBeKA7EnwYaI9ynBe8Vj+JIyM0spX8j/sgCzZN
         h+mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9PDZst6J2mQMMF0ufHoYLTEDY+FF1fEwheeg9EgzCtI=;
        b=Qc9wLnp9ESfrb/18McBD4SdYu6w5/9dVij3WDYUN01cOPGWTBI/W0KrKNTyCOXdZDn
         4NqDIJX/ksQ+PoG1eH0kjtoLNaNapIqlcj7Pmros23tsVyatMrGAyMBmLn6RBb2mXl6O
         GryqE/l+vdMAUbcWCGH9mEWN6NtWSxxYNSPGrWpzPA4iy/3ZPSnCxqW3WntJf1qm+zZ0
         ud1/mNZNco9/L2i//LEEDZSzkabLP2atu3JARqiUEsf4M7/DwO8/KVi0qghMXPkbORGt
         muQASWzpJUuWqBSZXVrJOwFE0xh9MCpFIzFNLnjETM/qJx1aR1OGcyrNKGPhN11iN7VA
         a07g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVXHt+fjYEYaeqU1XZlDCPmejtBEU6Dg3m2IigdAa68ndWn8yAD
	wN1d2B/I/ulKBVCx+0P+nY0=
X-Google-Smtp-Source: APXvYqyX8zAgEzW46QNfgHwg7shpgQ+/ap5+srr6fpH2O3t8nDPq6hMKrFkTWrZcg0/2T6md0wFGvg==
X-Received: by 2002:a05:6402:311b:: with SMTP id dc27mr61953859edb.36.1577553220598;
        Sat, 28 Dec 2019 09:13:40 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:907:104a:: with SMTP id oy10ls9479343ejb.3.gmail; Sat,
 28 Dec 2019 09:13:39 -0800 (PST)
X-Received: by 2002:a17:906:b855:: with SMTP id ga21mr54919239ejb.186.1577553219498;
        Sat, 28 Dec 2019 09:13:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1577553219; cv=none;
        d=google.com; s=arc-20160816;
        b=FNiGFpaBw8EwHvNLXSLz970laLEzi1Pe1bJBufwoWaQkyeZvHyv6kddfXrE280T7oa
         uYOezusQiNw+rM9Nsb2+KvyMkJ7+/v8OHaiVyj6PzSTwRlHek5jxC3VnyJAnGffreOC4
         TAE1jAA9MI+uBUqGjicJGnJ3ycR5a8pVQby22ca1PSCEDrGz5eExkayZA+dR9sHXwWU6
         WheiZHZhby+mwhulKHS+GXPf24kJIIZ7mYn435vaS4n8syUP4OHzcrwfT71tNI+cvT7n
         XLUethw49QxHpODViP5sff9U3A6sfsjE/A4icfZB8btGnV90VHWyUIuwzDKzKt6FOOL9
         BZvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=3iQlGyf/uI4YLyKdha/5TVh0FS8KuScOhE+aiMfz57Y=;
        b=UtK+cyCsSD/SrWQosii33flrzxWTZ1cEX8NbIL1CNHJwIxykFvn+4ZA6X0dRpx5WLZ
         TTC8HYf8+jd2V6DOw73q5Ngom0JCk0w56W11OLe/Wp37ZknfvKtu54121fMtxkg/8wBA
         VAtkU5yCwtGqGWVRIWIWUVCQcUqc/5SK3hfvxCR1uEZisQDKSYImt5199wHSI5zjfQJ2
         nhFNc332YVfN4Zgwzuwl//5YvZlLxzrHzR4UzpJarjW+YtfXpwOQC2z6jOflTX/T5YTH
         By7Rd94DFD++LNKq5pNENY9JThm5E4VewUSFyVpIyh5cFQ/qurCgUAGp/Ot9a99uLKVH
         9M1Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of mail@maciej.szmigiero.name designates 37.28.154.113 as permitted sender) smtp.mailfrom=mail@maciej.szmigiero.name
Received: from vps-vb.mhejs.net (vps-vb.mhejs.net. [37.28.154.113])
        by gmr-mx.google.com with ESMTPS id cc24si1332975edb.5.2019.12.28.09.13.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 28 Dec 2019 09:13:39 -0800 (PST)
Received-SPF: pass (google.com: domain of mail@maciej.szmigiero.name designates 37.28.154.113 as permitted sender) client-ip=37.28.154.113;
Received: from MUA
	by vps-vb.mhejs.net with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.92.3)
	(envelope-from <mail@maciej.szmigiero.name>)
	id 1ilFeS-0003Tk-IR; Sat, 28 Dec 2019 18:13:20 +0100
From: "Maciej S. Szmigiero" <mail@maciej.szmigiero.name>
To: Peter Zijlstra <peterz@infradead.org>,
	Ingo Molnar <mingo@redhat.com>,
	Arnaldo Carvalho de Melo <acme@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Jiri Olsa <jolsa@redhat.com>,
	Namhyung Kim <namhyung@kernel.org>,
	Dennis Schridde <devurandom@gmx.net>,
	Denis Pronin <dannftk@yandex.ru>,
	Naohiro Aota <naota@elisp.net>,
	clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org
Subject: [PATCH] tools build: Fix test-clang.cpp with Clang 8+
Date: Sat, 28 Dec 2019 18:13:13 +0100
Message-Id: <20191228171314.946469-1-mail@maciej.szmigiero.name>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-Original-Sender: mail@maciej.szmigiero.name
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of mail@maciej.szmigiero.name designates 37.28.154.113 as
 permitted sender) smtp.mailfrom=mail@maciej.szmigiero.name
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

LLVM rL344140 (included in Clang 8+) moved VFS from Clang to LLVM, so paths
to its include files have changed.
This broke the Clang test in tools/build - let's fix it.

Signed-off-by: Maciej S. Szmigiero <mail@maciej.szmigiero.name>
---
 tools/build/feature/test-clang.cpp | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/tools/build/feature/test-clang.cpp b/tools/build/feature/test-clang.cpp
index a2b3f092d2f0..7d87075cd1c5 100644
--- a/tools/build/feature/test-clang.cpp
+++ b/tools/build/feature/test-clang.cpp
@@ -1,9 +1,15 @@
 // SPDX-License-Identifier: GPL-2.0
+#include "clang/Basic/Version.h"
+#if CLANG_VERSION_MAJOR < 8
 #include "clang/Basic/VirtualFileSystem.h"
+#endif
 #include "clang/Driver/Driver.h"
 #include "clang/Frontend/TextDiagnosticPrinter.h"
 #include "llvm/ADT/IntrusiveRefCntPtr.h"
 #include "llvm/Support/ManagedStatic.h"
+#if CLANG_VERSION_MAJOR >= 8
+#include "llvm/Support/VirtualFileSystem.h"
+#endif
 #include "llvm/Support/raw_ostream.h"
 
 using namespace clang;

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191228171314.946469-1-mail%40maciej.szmigiero.name.
