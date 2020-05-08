Return-Path: <clang-built-linux+bncBDJKZSEQ3YKRB6NR2X2QKGQEMTXNINI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-f57.google.com (mail-wr1-f57.google.com [209.85.221.57])
	by mail.lfdr.de (Postfix) with ESMTPS id 53DC71CAD88
	for <lists+clang-built-linux@lfdr.de>; Fri,  8 May 2020 15:04:58 +0200 (CEST)
Received: by mail-wr1-f57.google.com with SMTP id r14sf543022wrw.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 08 May 2020 06:04:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588943098; cv=pass;
        d=google.com; s=arc-20160816;
        b=BkiqF2DHGORO/3ZJFN6knh749JZgosrU0Hal/MP+/ShkTfH6+LkyIE2uGB1es4/QtP
         ChlTfG+Ap9aTqHkSBkTHP2bMTYcthsH9Y92vnkWWpIgzHpb/nl2oV/BRGWzUf3JsC2UK
         yN3/wFdpklP0eSNwBepY+/oPQagZt29so3DeFuQrb1b+UvYRJp3TQep9uECtA0MN32NN
         PYHiMz//5tpbUTGpo2koBWNeataF0Z4bmioTF+G+IDEEeLCLkCPjwokZfGcENPeVuvnn
         R+dfPGt4/8U+V37q/O2KsGBRUxBZ49k9DE0jDAlY746pR8FYov5Wu5rmSiVs0J4qrx7H
         3pWA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:robot-unsubscribe:robot-id
         :message-id:mime-version:references:in-reply-to:cc:subject:to
         :reply-to:sender:from:date;
        bh=rIGkyh8wABZBVcx4rbcQqNIiLT7uk/3lSloi48hVtEc=;
        b=ZpxADKFsbH/1gTNJo5dnQh/p2uWehF68oz/6soMZDriDfSFHAqh96yi/lRwAox4Gzb
         9l5HnhQDJS+X382JxFxHKcPu2WgELKmHN/ZRbxiWP6+S7rbqe1iUnnlOCKNyg0CWMtMw
         qniiIf7iCimYVP6PRde1/pRXPqMfAAsvzNUMfygjZYQuEP4MKG5WKRvrdm+c/VHKYt/+
         mOfz+x8KuXp2h9qOMdTkSEi0J6BLA5LsQkfNye8pz0D3R8PIqdlYe/JV9Wch2TB7oJb/
         4ADitCEYczBbBN3xbRZ9nx9ash3i9j/LY2HFTe98FsGjNi310ejCiQ91MTETQ3gbfv0E
         hkWA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tip-bot2@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tip-bot2@linutronix.de
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:sender:reply-to:to:subject:cc
         :in-reply-to:references:mime-version:message-id:robot-id
         :robot-unsubscribe:precedence:x-original-sender
         :x-original-authentication-results:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rIGkyh8wABZBVcx4rbcQqNIiLT7uk/3lSloi48hVtEc=;
        b=hH92iyQD2HM9+4YnWzH2PTxzjnfHVgqFE1h+FD2hivAkTBG6N6IV9g0QdD+1zOd8eq
         RQhkmY4lnSHBbeXP+7w/kr+dOAuECJyMxWokXbFyAsX8uX4KLIuWaHobc3l2hfo9IyWs
         ruVW99mS2sdEJ8fPjN4eY9mO/AvvfAL4yTlBUyjUQ6rparP/qwLR07SlajQR9HEnJ8Gh
         2SvScRTI485c0WfPIUvOj5Z8Ur4sZLlRDsvKPnwkFSBci6te+38OsxkWjc5LHpXxGILY
         rWb51HsSdxRHYsPU07pki2MCI+ENZViAG/+p1R/fIxh5F7EsE2au1qEEkN6Cw6NTk6Iv
         IBpg==
X-Gm-Message-State: AGi0PubK7xUx/GlSWjTL1Sr7zjJrjs9JgesWZd0Yo6bSVdgwPKVvV4c5
	CQMNMdQ/J+2eYe+8gasXDgs=
X-Google-Smtp-Source: APiQypK6TZMY+iDDn0Kx26LTFBLxkKr+QVYn105yL5gKSaLk6eYnb3Y5/E9x4+HQpPsO+DZaTxUmZg==
X-Received: by 2002:a1c:7e82:: with SMTP id z124mr8787002wmc.53.1588943098023;
        Fri, 08 May 2020 06:04:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6000:11d0:: with SMTP id i16ls657389wrx.10.gmail; Fri,
 08 May 2020 06:04:57 -0700 (PDT)
X-Received: by 2002:a5d:4389:: with SMTP id i9mr2939643wrq.374.1588943097291;
        Fri, 08 May 2020 06:04:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588943097; cv=none;
        d=google.com; s=arc-20160816;
        b=NyxF4qYUoSpVIynlV2vaSDQckt9PYWmk1ZbmYP5ocZOxvbQsLXcxmEZszDv7eUkwYG
         YDmvfHQDATuXPBpih8FbWwbsWXhAWhdm4cnrDomej7yz+ER038hQOF5MLvBfPurT2EXA
         60ySBKWHPmiZlnsVTR535KYRT1vav58f2WTsfasHS+brvdUqD+AHUr3dlTlCfXh0ch90
         JpCV25prgDYkoaEX52ZhdBJkJXVz2HTc8DqMkAD2hLL+jjJ+PKbESoL4j/dsHFgYWeyp
         D8ELkglOXLCVk/j84nicsBN69wBzev4BvSjFMUCZTnvZFVm48H4mMWNgopQzEMFMS1rh
         ucPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:precedence:robot-unsubscribe:robot-id
         :message-id:mime-version:references:in-reply-to:cc:subject:to
         :reply-to:sender:from:date;
        bh=vGH7lWnCkvbiOtAk4MfKzLPr00Z/tUiBdbr/MRAlkhw=;
        b=Qb1U1tzgEnOCRlAap+cz0ilu/COwDyhnxSe9HvqHGKU96YMrJgX5UmbqnH3Gg+4ACj
         E1y7iJrsQTdgPt1lXCNbRpLIoiNX9lX7j7xAv/AcS0IMO3KyYt1Ms4lTDX2k3Aip8IuO
         Loc1+TzbJmtlFPtvkR+9+FpTD84qqC8qBqYxTlJMf8rm+HCOa0MBDC8qijZx7uG55VLm
         n4IuxYebQL2cjGhIS5oRQLAFpMt5cgnkeGRrlQfbn0L3PzbkWXywnVnWIhKEU6lcgOgy
         k7QETFuxR2ys3Si6JFdbzPtKyLITtR+rg/XyDs75uQv/GNYlgA0W2K7Y6eezvq+eg64c
         s4hw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tip-bot2@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tip-bot2@linutronix.de
Received: from Galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id f129si385742wmf.2.2020.05.08.06.04.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Fri, 08 May 2020 06:04:57 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of tip-bot2@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
Received: from [5.158.153.53] (helo=tip-bot2.lab.linutronix.de)
	by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
	(Exim 4.80)
	(envelope-from <tip-bot2@linutronix.de>)
	id 1jX2gR-0007Im-Fy; Fri, 08 May 2020 15:04:55 +0200
Received: from [127.0.1.1] (localhost [IPv6:::1])
	by tip-bot2.lab.linutronix.de (Postfix) with ESMTP id 0A9801C04D0;
	Fri,  8 May 2020 15:04:50 +0200 (CEST)
Date: Fri, 08 May 2020 13:04:49 -0000
From: "tip-bot2 for Ian Rogers" <tip-bot2@linutronix.de>
Sender: tip-bot2@linutronix.de
Reply-to: linux-kernel@vger.kernel.org
To: linux-tip-commits@vger.kernel.org
Subject: [tip: perf/core] perf mem2node: Avoid double free related to realloc
Cc: Ian Rogers <irogers@google.com>, Jiri Olsa <jolsa@redhat.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Mark Rutland <mark.rutland@arm.com>, Namhyung Kim <namhyung@kernel.org>,
 Peter Zijlstra <peterz@infradead.org>, Stephane Eranian <eranian@google.com>,
 clang-built-linux@googlegroups.com,
 Arnaldo Carvalho de Melo <acme@redhat.com>, x86 <x86@kernel.org>,
 LKML <linux-kernel@vger.kernel.org>
In-Reply-To: <20200320182347.87675-1-irogers@google.com>
References: <20200320182347.87675-1-irogers@google.com>
MIME-Version: 1.0
Message-ID: <158894308995.8414.15377663667170562789.tip-bot2@tip-bot2>
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
X-Spam-Checked-In-Group: clang-built-linux@googlegroups.com
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>

The following commit has been merged into the perf/core branch of tip:

Commit-ID:     266150c94c69429cf6d18e130237224a047f5061
Gitweb:        https://git.kernel.org/tip/266150c94c69429cf6d18e130237224a047f5061
Author:        Ian Rogers <irogers@google.com>
AuthorDate:    Fri, 20 Mar 2020 11:23:47 -07:00
Committer:     Arnaldo Carvalho de Melo <acme@redhat.com>
CommitterDate: Tue, 05 May 2020 16:35:30 -03:00

perf mem2node: Avoid double free related to realloc

Realloc of size zero is a free not an error, avoid this causing a double
free. Caught by clang's address sanitizer:

==2634==ERROR: AddressSanitizer: attempting double-free on 0x6020000015f0 in thread T0:
    #0 0x5649659297fd in free llvm/llvm-project/compiler-rt/lib/asan/asan_malloc_linux.cpp:123:3
    #1 0x5649659e9251 in __zfree tools/lib/zalloc.c:13:2
    #2 0x564965c0f92c in mem2node__exit tools/perf/util/mem2node.c:114:2
    #3 0x564965a08b4c in perf_c2c__report tools/perf/builtin-c2c.c:2867:2
    #4 0x564965a0616a in cmd_c2c tools/perf/builtin-c2c.c:2989:10
    #5 0x564965944348 in run_builtin tools/perf/perf.c:312:11
    #6 0x564965943235 in handle_internal_command tools/perf/perf.c:364:8
    #7 0x5649659440c4 in run_argv tools/perf/perf.c:408:2
    #8 0x564965942e41 in main tools/perf/perf.c:538:3

0x6020000015f0 is located 0 bytes inside of 1-byte region [0x6020000015f0,0x6020000015f1)
freed by thread T0 here:
    #0 0x564965929da3 in realloc third_party/llvm/llvm-project/compiler-rt/lib/asan/asan_malloc_linux.cpp:164:3
    #1 0x564965c0f55e in mem2node__init tools/perf/util/mem2node.c:97:16
    #2 0x564965a08956 in perf_c2c__report tools/perf/builtin-c2c.c:2803:8
    #3 0x564965a0616a in cmd_c2c tools/perf/builtin-c2c.c:2989:10
    #4 0x564965944348 in run_builtin tools/perf/perf.c:312:11
    #5 0x564965943235 in handle_internal_command tools/perf/perf.c:364:8
    #6 0x5649659440c4 in run_argv tools/perf/perf.c:408:2
    #7 0x564965942e41 in main tools/perf/perf.c:538:3

previously allocated by thread T0 here:
    #0 0x564965929c42 in calloc third_party/llvm/llvm-project/compiler-rt/lib/asan/asan_malloc_linux.cpp:154:3
    #1 0x5649659e9220 in zalloc tools/lib/zalloc.c:8:9
    #2 0x564965c0f32d in mem2node__init tools/perf/util/mem2node.c:61:12
    #3 0x564965a08956 in perf_c2c__report tools/perf/builtin-c2c.c:2803:8
    #4 0x564965a0616a in cmd_c2c tools/perf/builtin-c2c.c:2989:10
    #5 0x564965944348 in run_builtin tools/perf/perf.c:312:11
    #6 0x564965943235 in handle_internal_command tools/perf/perf.c:364:8
    #7 0x5649659440c4 in run_argv tools/perf/perf.c:408:2
    #8 0x564965942e41 in main tools/perf/perf.c:538:3

v2: add a WARN_ON_ONCE when the free condition arises.

Signed-off-by: Ian Rogers <irogers@google.com>
Acked-by: Jiri Olsa <jolsa@redhat.com>
Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Namhyung Kim <namhyung@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Stephane Eranian <eranian@google.com>
Cc: clang-built-linux@googlegroups.com
Link: http://lore.kernel.org/lkml/20200320182347.87675-1-irogers@google.com
Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
---
 tools/perf/util/mem2node.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/tools/perf/util/mem2node.c b/tools/perf/util/mem2node.c
index 797d86a..c84f584 100644
--- a/tools/perf/util/mem2node.c
+++ b/tools/perf/util/mem2node.c
@@ -1,5 +1,6 @@
 #include <errno.h>
 #include <inttypes.h>
+#include <asm/bug.h>
 #include <linux/bitmap.h>
 #include <linux/kernel.h>
 #include <linux/zalloc.h>
@@ -95,7 +96,7 @@ int mem2node__init(struct mem2node *map, struct perf_env *env)
 
 	/* Cut unused entries, due to merging. */
 	tmp_entries = realloc(entries, sizeof(*entries) * j);
-	if (tmp_entries)
+	if (tmp_entries || WARN_ON_ONCE(j == 0))
 		entries = tmp_entries;
 
 	for (i = 0; i < j; i++) {

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/158894308995.8414.15377663667170562789.tip-bot2%40tip-bot2.
