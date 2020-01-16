Return-Path: <clang-built-linux+bncBAABBQGAQ7YQKGQEQ5C44HQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33b.google.com (mail-ot1-x33b.google.com [IPv6:2607:f8b0:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id B7E4F140EEA
	for <lists+clang-built-linux@lfdr.de>; Fri, 17 Jan 2020 17:26:41 +0100 (CET)
Received: by mail-ot1-x33b.google.com with SMTP id 73sf13611850otj.10
        for <lists+clang-built-linux@lfdr.de>; Fri, 17 Jan 2020 08:26:41 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579278400; cv=pass;
        d=google.com; s=arc-20160816;
        b=PjJVWQfh4m6ByFr0myXSPZnFyt9XNWRTH1zJpunydiFwOmJrmGZEBJ9hoYdBbvm2Ao
         Oo7A4ju99YAJd+p72CZ1cNOyM315S11Vcv24QYiSBnQTlIQBL27XMHgi3C3r0UwzsFWp
         mUXJcZyBvIo5Qf+qe0vADuUhPYi3ayTH3NFRzuTPkmbBG+rjQxto8bZ91NTOAquMSRsF
         Md92+URnUu4dQrkpvpTSP4QkSSq7E/bvmCtCSPFwa/pmVb9T/QusyGp4+04VdCOQDUVr
         A2WWZGBRj5Ifoy6tGxEOZwqRNlRLjqOjOq+Kx2huS5CBtpEXrWwN8Tr1crRus3dy88MH
         lRbw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=yfSy1L+M9NxIvLoKAeLKuFiBayD2Lt0BdAhUE29FihA=;
        b=cDiU2TVPgQcPmt2F5kqmdMBkwv9/7hzLREZ0wP1pbZm8mTkWbYKWSOpgbEQfDYyLC3
         bOcsxoJgddYbU1HsLZlHMZz5ildWlrgvgx0glPZW1zBDkCt69uw+WmdnUis9tPOqkjiT
         gmpFOyDQWQOsnEKeRYgTPhuvFJpbbPfm8qPpRO3QqAmmSHHZIInHD79U+nFMwIe9iOZm
         4Odl+RCigNJFzWjLfRJ+mjUdL7GJO5WiqQsS86QSt6nnvFFyNBR5BKj8j+jFJ24lDbpe
         zavih9ftgX7aVmpcZ996banmEQIQxmwUMNzvQ1fQo5FMW9kuqo7d0RRC8TY6DELkhkEp
         kasw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=q5aEr4MA;
       spf=pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=acme@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yfSy1L+M9NxIvLoKAeLKuFiBayD2Lt0BdAhUE29FihA=;
        b=kNVIsoGXP5XnwSLdQgKrIZar9qBfantqX+ugTGFOSfhPakLXKLe3CzUu5GQ/p1F6gs
         tJ3I+URHqKyJvhJQVhmPWr2WYfWS/mOIfBi1MYZCn/krxGcohd/sl04TvKrfhHLiie/n
         HcNlRZukKe6S6v8eblnGXVWDm3SZFcsW05koqMR3NqLW8d4X5ZTqVOzL2jjUx7jJcKl4
         pMhzHStZIDSwq5zD9c/jrqb0JQYG5sx59eUUrAUaTHaTE8F1nIv0vdanQOo2BAJDU2kP
         Z+sUrBsbb7Ecyv5GjVxL+4rcFTczwq7Fc8d37zaNz1Va6HxJ7mIOQ36Bv8rWvQ6cPRcg
         PbVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yfSy1L+M9NxIvLoKAeLKuFiBayD2Lt0BdAhUE29FihA=;
        b=OLiqZ5wjEGx4cbGIJk29AT2wUONt8eoMi5z0im/a3XS4dBXT/QvzaCOZMfmTZ7XvOI
         SUirCym868atB7Wbz53Qc+qXSjFMu8WLV3orDx2CnYqm8BTI0ynRIajEkk3wSG8Q7/fQ
         FI0fAFoyoavig1xEr+vv4q+mdNpXli+RIzSou0OWuqTRMtVYZt4Cqz2P8kQ0Qf6rq1Ah
         TaauQXYC85F21Kdbow1YoiBpMiA9Sk0YK6vHqW0fvDjFLgrGJDBFErCyqrcxUG6Ls2oq
         FHE0VU4mVptSGe5ok/g/Vj1ku9SPaygk37KtAPHJWY9ierSGY0Q65v0syIWHQRL8Oy9u
         pJPA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUUQnvgtU2mKPAUjINFHKSG/+0ikgJiY9ielSv5/ylU1qvQiFua
	3K88hGob2aXg5SDaHhne5HI=
X-Google-Smtp-Source: APXvYqyPgNqH8V6ViuXKTE0Stsay5ozZ0ykTsIoCgaErj5og3WdVQgQS5h5OHhMChejkB2P7WiTuhQ==
X-Received: by 2002:aca:d15:: with SMTP id 21mr4031444oin.127.1579278400207;
        Fri, 17 Jan 2020 08:26:40 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:5a87:: with SMTP id w7ls4785664oth.1.gmail; Fri, 17 Jan
 2020 08:26:40 -0800 (PST)
X-Received: by 2002:a05:6830:151a:: with SMTP id k26mr6981889otp.74.1579278400030;
        Fri, 17 Jan 2020 08:26:40 -0800 (PST)
Received: by 2002:aca:f457:0:0:0:0:0 with SMTP id s84msoih;
        Thu, 16 Jan 2020 05:48:32 -0800 (PST)
X-Received: by 2002:a6b:3a03:: with SMTP id h3mr15859366ioa.241.1579182512221;
        Thu, 16 Jan 2020 05:48:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579182512; cv=none;
        d=google.com; s=arc-20160816;
        b=hrIELQNmldtZ8Q+q6t02/tphuaLs9cZFtDpiN55a2DbTLhi2vJHfkMHe6KIsJGWC1c
         pQtbBQLNxnmgAZmUDOZJw3gqpmE6S/ImcpA9yymANRsuWf4E7TztNHud1QyyEHlNSOHS
         459bM6LYkaJ8x9v07Gcfu8Q65eeHl9qmlfNXatbO1i9+7Whsps1Df7Aa8H/IbCV/rj8G
         +0KDeISpQhSqHjPTRiDDI29wJZo7eNT9wlxqnMcdczCf5kZ6UkZ1dWzJWQ3TmS7YGJOY
         mo+Ug0mdVnsjvTYD3YQa+2k7ipPPgoFsOAB9GIjWnLgGX0fjPyjIRptKaIym95zMziwF
         Mdpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=pLAvGdXDUtTfew11G5HRHTZoKnFuGWLolcZyIxAc9Jo=;
        b=tuO2yqQsx0mosN6wF58ngURpTEWI+hLoFWgZBe7AYEhIQZmj3iB9aL3xCOpBpMkMIk
         P7JcpLvZSxrPuNA7fVH5W7/W26fKHn9x1ah8UhigN3b+e2wiYFt2Kwv3CAWCJ/7OyscI
         GKUouadY++m/iM1osp0nOrinsEOw+OZtHjq2TkmBod+g7OWykn15+XgIjgiGi0XuZrkN
         ZrhqcN1xwSCONGRN0H0XSrBj/c9zi3JMmJC4AHSOhPcpddmdVRah7zpLN2u+IVCJBnZ2
         TyXHRQw3XESAJjVCfWUTTTqEtabhOe+Wr97zEJ9LOB6Z5n+Le6RqLSOVOTnkzOfdH4vt
         iFMQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=q5aEr4MA;
       spf=pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=acme@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k9si1039428ili.4.2020.01.16.05.48.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Jan 2020 05:48:32 -0800 (PST)
Received-SPF: pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from quaco.ghostprotocols.net (unknown [179.97.37.151])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id AF6C22077B;
	Thu, 16 Jan 2020 13:48:27 +0000 (UTC)
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Ingo Molnar <mingo@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>
Cc: Jiri Olsa <jolsa@kernel.org>,
	Namhyung Kim <namhyung@kernel.org>,
	Clark Williams <williams@redhat.com>,
	linux-kernel@vger.kernel.org,
	linux-perf-users@vger.kernel.org,
	"Maciej S. Szmigiero" <mail@maciej.szmigiero.name>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Denis Pronin <dannftk@yandex.ru>,
	Dennis Schridde <devurandom@gmx.net>,
	Jiri Olsa <jolsa@redhat.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Naohiro Aota <naota@elisp.net>,
	Peter Zijlstra <peterz@infradead.org>,
	clang-built-linux@googlegroups.com,
	Arnaldo Carvalho de Melo <acme@redhat.com>
Subject: [PATCH 02/12] tools build: Fix test-clang.cpp with Clang 8+
Date: Thu, 16 Jan 2020 10:48:04 -0300
Message-Id: <20200116134814.8811-3-acme@kernel.org>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200116134814.8811-1-acme@kernel.org>
References: <20200116134814.8811-1-acme@kernel.org>
MIME-Version: 1.0
X-Original-Sender: acme@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=q5aEr4MA;       spf=pass
 (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=acme@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>

From: "Maciej S. Szmigiero" <mail@maciej.szmigiero.name>

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
2.21.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200116134814.8811-3-acme%40kernel.org.
