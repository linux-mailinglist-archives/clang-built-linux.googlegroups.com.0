Return-Path: <clang-built-linux+bncBAABBEUTTLYQKGQEI6MYE6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-f55.google.com (mail-qv1-f55.google.com [209.85.219.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 9638814367F
	for <lists+clang-built-linux@lfdr.de>; Tue, 21 Jan 2020 06:18:11 +0100 (CET)
Received: by mail-qv1-f55.google.com with SMTP id v3sf911233qvm.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 20 Jan 2020 21:18:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579583890; cv=pass;
        d=google.com; s=arc-20160816;
        b=X+42yU4YJ23YtGVGog01iUeed4SHxaK6Gdvo5H4CP07pK/fF5c1X83j6Nr5Zi1AS35
         ehd0mPbq1wQxbSqN6IV+JqxG/k93kfrrgucjJlrKiS+f52ZbeqKA+Pdak0SnZYIIbXPk
         AdDAkDVnloCqFXWW6Ezu8xt9HGD/udGBYiVt9Jsag+8oEnwvt2Gi+EJVgEjpgagzRpul
         JsWx+7zbNHShNky1366RGtE1trkSmHwoVVw/jj1c29t4TKsRjcMsda+DegxEzoJAIoK+
         igcrlrBl59/wCfoadoTLWGH6i0YSL9yzvXzAS9JiZNZb6ka3qdteIebbVSy3/pgK/OJS
         kR3w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:robot-unsubscribe:robot-id
         :message-id:mime-version:references:in-reply-to:cc:subject:to
         :reply-to:sender:from:date;
        bh=ngecSeC++N5E7PoUGa10J0m5MJWWMAGCDHLtACRR7Cc=;
        b=ECoHE7LDfFKXU5XP31Rs5JUtLT7fAue69nNePr+c/xt1s3QBibg9bkINAN/SSFm2eX
         CsnzFw5Yac48vdo48tUmlVAvfhwrzo76O4qSOqtugZG/yrR8fEPBv4MMZ4tE4TlkaVS4
         GQaCTY0pdKixrEOdyFjGavKmEwyjxStadEsTtObQze33j1TVFu5qTvC+GAkusI91JVd2
         KCCnxBipXYPxkcIvICmUm6q3CfIFumRQvlT1H28d97EiKcouAwGPsAEBn4edJt3hh9GT
         v7ZmxTqVxuzpH+e/cOsbVhsu4cX99nMcU+LF3eIe0NVhhIUycOJIeJ7FHDbY/i4e8aBA
         A4UA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tip-bot2@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tip-bot2@linutronix.de
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:sender:reply-to:to:subject:cc
         :in-reply-to:references:mime-version:message-id:robot-id
         :robot-unsubscribe:precedence:x-original-sender
         :x-original-authentication-results:mailing-list:list-id:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ngecSeC++N5E7PoUGa10J0m5MJWWMAGCDHLtACRR7Cc=;
        b=Z7UIyL5xoyOuNQZVCIISCfn2SV4FTG5rEFPfOD9dtAfJ9erUjZZe6qOPHdnnmcmaFt
         +B7E18JX9/qiR9Grv5Bq2Levl53k57EJuh/oMDlSBw4mikvHaN94CrQczACyAeEvZ0LL
         bHesM19TDVefJoGLrhp6EvrLr44Ya83jeV0NIRSSan5qCBpmtv8gBtItneHTedV8AeqV
         QN/QVVkgdKyEEaU83fhv+GNVHfZ76LNuDq29qtqaR340D1DVS7x99OLFBRqvhHFzYklF
         4J7/e2Nb1+wQmuj7BCG1vPCXwpTbsUWTTPs6N2cffW+YzmpPeivTSaCxY7DkcMC3WrQO
         DBkw==
X-Gm-Message-State: APjAAAWrAmriaSE4InXAG+vki1smRCZcdqcYLFQGx+BOPP87pjSUnx0E
	59dvSj7/HI66yJ+fJVAQvFE=
X-Google-Smtp-Source: APXvYqyqLMlsi+yD8RtN5ZfwX6hNMfmjFyL1FE7OvLthHbkGsyxzEA8VDTkMwjVna3Jf+65Nse05IQ==
X-Received: by 2002:a05:6214:16ce:: with SMTP id d14mr3035740qvz.151.1579583890253;
        Mon, 20 Jan 2020 21:18:10 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:19a7:: with SMTP id u36ls191787qtj.7.gmail; Mon, 20 Jan
 2020 21:18:10 -0800 (PST)
X-Received: by 2002:ac8:689a:: with SMTP id m26mr2908785qtq.68.1579583889943;
        Mon, 20 Jan 2020 21:18:09 -0800 (PST)
Received: by 2002:a05:620a:13b4:0:0:0:0 with SMTP id m20msqki;
        Mon, 20 Jan 2020 00:27:17 -0800 (PST)
X-Received: by 2002:adf:edc4:: with SMTP id v4mr6465225wro.336.1579508837392;
        Mon, 20 Jan 2020 00:27:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579508837; cv=none;
        d=google.com; s=arc-20160816;
        b=WjzF9VrWMuE+i/PRykT7jjNnuuM95espb29Ve4Vc5p9XyotuzpbVGIkZWzrqRQe3Gt
         NMcsw08keyXBY2LYGG+6V2KyUDleOFIWbgNApu+7Qy3vCehfc5S6RPluBHeFApFR2l4k
         k0+LGXQ4m+KTBXAAzoLi/zlKBkHwHoDYYoFERJ8a+N8t0T4nJwawwQTeO5GQqjVcCXB6
         E1s6rPznMp83dN+wi8n/awAvgVvsj4S8pCq+WuXfpwbPWkmRQOV6Pr4dL4wCtI1/Vm92
         k8y3/R9ZWzf4JvPoPO1pS/msRVVnJsx6poWDOsNvPIg2Qt6g8bZrcvV8P3PxD0v6MSxL
         tAyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:precedence:robot-unsubscribe:robot-id
         :message-id:mime-version:references:in-reply-to:cc:subject:to
         :reply-to:sender:from:date;
        bh=ZsFOYgCAEeb6oh9l/xVT+wRgqDnE98OG0lO0OpMzKx8=;
        b=YZe8dn5XsePfOLe5gicXPHCodee18ohIQD1+9AXcFtFISyHvjlmVsXNisaMq9FAWuc
         R7n2w1cPVlpx937M4XqChS5seBYuvBIGynMgTijsI69cgeY8/u3tW4mt8OUH89ZvoASn
         2Wcf9S33pZLzSYJRW1PVBdAi1091ItEFvmbU0Po9RSaTVPKtLCAZz7bD2gilV5br2dXR
         1G0/0hDcFJK85VzALvzrO7XjF/gkhyK5nCRahfooJ7ahTWlwylyCmiE73rwonur+euhz
         Y2CMYhV1xl8AikjBa8522X45wgPCyxJNbKGZoKfjOke46VAUrgEpLvmhmJYt0hbzjulQ
         agSg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tip-bot2@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tip-bot2@linutronix.de
Received: from Galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id t83si411986wmb.4.2020.01.20.00.27.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Mon, 20 Jan 2020 00:27:17 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of tip-bot2@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
Received: from [5.158.153.53] (helo=tip-bot2.lab.linutronix.de)
	by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
	(Exim 4.80)
	(envelope-from <tip-bot2@linutronix.de>)
	id 1itSOx-0002uo-Db; Mon, 20 Jan 2020 09:27:15 +0100
Received: from [127.0.1.1] (localhost [IPv6:::1])
	by tip-bot2.lab.linutronix.de (Postfix) with ESMTP id 135B91C1A3E;
	Mon, 20 Jan 2020 09:27:15 +0100 (CET)
Date: Mon, 20 Jan 2020 08:27:14 -0000
From: "tip-bot2 for Maciej S. Szmigiero" <tip-bot2@linutronix.de>
Sender: tip-bot2@linutronix.de
Reply-to: linux-kernel@vger.kernel.org
To: linux-tip-commits@vger.kernel.org
Subject: [tip: perf/core] tools build: Fix test-clang.cpp with Clang 8+
Cc: "Maciej S. Szmigiero" <mail@maciej.szmigiero.name>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Denis Pronin <dannftk@yandex.ru>, Dennis Schridde <devurandom@gmx.net>,
 Jiri Olsa <jolsa@redhat.com>, Mark Rutland <mark.rutland@arm.com>,
 Namhyung Kim <namhyung@kernel.org>, Naohiro Aota <naota@elisp.net>,
 Peter Zijlstra <peterz@infradead.org>, clang-built-linux@googlegroups.com,
 Arnaldo Carvalho de Melo <acme@redhat.com>, x86 <x86@kernel.org>,
 LKML <linux-kernel@vger.kernel.org>
In-Reply-To: <20191228171314.946469-1-mail@maciej.szmigiero.name>
References: <20191228171314.946469-1-mail@maciej.szmigiero.name>
MIME-Version: 1.0
Message-ID: <157950883490.396.9434688341680423539.tip-bot2@tip-bot2>
X-Mailer: tip-git-log-daemon
Robot-ID: <tip-bot2.linutronix.de>
Robot-Unsubscribe: Contact <mailto:tglx@linutronix.de> to get blacklisted from these emails
Precedence: list
Content-Type: text/plain; charset="UTF-8"
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required,  ALL_TRUSTED=-1,SHORTCIRCUIT=-0.0001
X-Original-Sender: tip-bot2@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of tip-bot2@linutronix.de
 designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tip-bot2@linutronix.de
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>

The following commit has been merged into the perf/core branch of tip:

Commit-ID:     d8007772a5541b4711d1286b788ad4295b2c7eaa
Gitweb:        https://git.kernel.org/tip/d8007772a5541b4711d1286b788ad4295b2c7eaa
Author:        Maciej S. Szmigiero <mail@maciej.szmigiero.name>
AuthorDate:    Sat, 28 Dec 2019 18:13:13 +01:00
Committer:     Arnaldo Carvalho de Melo <acme@redhat.com>
CommitterDate: Tue, 14 Jan 2020 12:02:19 -03:00

tools build: Fix test-clang.cpp with Clang 8+

LLVM rL344140 (included in Clang 8+) moved VFS from Clang to LLVM, so
paths to its include files have changed.

This broke the Clang test in tools/build - let's fix it.

Signed-off-by: Maciej S. Szmigiero <mail@maciej.szmigiero.name>
Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
Cc: Denis Pronin <dannftk@yandex.ru>
Cc: Dennis Schridde <devurandom@gmx.net>
Cc: Jiri Olsa <jolsa@redhat.com>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Namhyung Kim <namhyung@kernel.org>
Cc: Naohiro Aota <naota@elisp.net>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: clang-built-linux@googlegroups.com
Link: http://lore.kernel.org/lkml/20191228171314.946469-1-mail@maciej.szmigiero.name
Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
---
 tools/build/feature/test-clang.cpp | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/tools/build/feature/test-clang.cpp b/tools/build/feature/test-clang.cpp
index a2b3f09..7d87075 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/157950883490.396.9434688341680423539.tip-bot2%40tip-bot2.
