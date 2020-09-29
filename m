Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBFFUZT5QKGQEUFXKWFY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id E2C9927C4FF
	for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 13:27:17 +0200 (CEST)
Received: by mail-pf1-x43c.google.com with SMTP id t201sf3390917pfc.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 04:27:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601378836; cv=pass;
        d=google.com; s=arc-20160816;
        b=0x/C9gEbK1cfSj+yKMRP7em5bkuW7c7EikkvPD0RwpmM3VEJvMnfv+OU1HXAJSXWe4
         NKlJpY8ZgXlYL8YdDD7mEr8ojQaS2hu0GsosSn1MsMrr//B7EPoVojh4Y/enWNkTgA20
         9RA2353N1eDK7GL6JaGLAWd9DhlnqJZ2yYttXAO7Cgw6zZuFPJMbMt6pyaeEL3hGwKpj
         MGeLV+AHpijQ5ZbbQIgX3kK3doFZ8A5vGPsXbB+6I5EIzTpbMmzojg4Z1yAR480qBBOr
         eLzlImnDhif39RJIDhXng88hGwxtBNpfklNabp/V64n13FuYgMNa0IUc51h7DqPP7yey
         4Yyw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=Bv/XXxHLBdY1MMAjP9wjMEl0RE5Vg/9Nsk3FaPHHrfQ=;
        b=zCnsvD+s7ymBeZT2cQLyhkgJOVILFRQIbCM6oC0Py7NfDXIvw14dM3XBofjSD7P7E4
         3phOCaCEuQIrqH9Y58h4f/YTyQSEeiqIUw1T/Lx5nzLrBBlTejG4ySP3kN2FeTn1mY7j
         Kb/r51CwswOMw7hEDNBkuO3ZYfAcRHAZiMhTfCKSDA2oWJGyli2mXQhvB62L7gGmkfuT
         f9EzuXx4qZ38Qka8CQDdBc++Tw2gmtgdS08JtH4AxEmi7LGUrPlH6tIxZ4h6C07SXgTl
         X4on0B5KX6e6X5ckQyhUz/YScT0iTmlHojjVHlIwn6nh6zRvPGXKOhp12SnU/FDKiwSE
         qSBQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=odylhjd4;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Bv/XXxHLBdY1MMAjP9wjMEl0RE5Vg/9Nsk3FaPHHrfQ=;
        b=HaCO+l9TGEM1qWJwDuRzP03PHMPQNCGMednoPCQ78UNxlfMehvwh5sb/2yVAxStAPb
         oYiBqDbglgzX/G2Q5N8uy93gcCqR4FGnUd03vHH6Yz9ujYZlcGuwoRrvUTLNqq2RtaGX
         Uwm4ivJHtGMpVQ73uoIGeBP84vs0B0LOjARb25fMxTiNHnvOt+4dcUY7qWkSCP52rBSD
         xokSOJv8CDu/eiG2ZwQDnrqegV1MBFS1USqBGlWW8cA4rXCkv7RL885K96hjmATQRIgx
         RYjzjYmCg1Ti9Jq3sQ8FT1WedRTbLYNxptOpwhQOBRmjcml4SRn8GiMfHFR3p0OjXCJd
         mcMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Bv/XXxHLBdY1MMAjP9wjMEl0RE5Vg/9Nsk3FaPHHrfQ=;
        b=QT5gBYrEORZ6BI/ZURifmjb5QI9Pvck02c7ipuvZeg+ZLOnby99UUMcVoWKCY7YRlW
         HrIaJ5E+JUGLiOrUQIzQxqTVMszVxY0nFlcANoug+roW508gpAtXT//zm5kWgwv0UjnZ
         DvIPeAFjYcEhCsAxaULTwj/HGyD/1DpGDw/hlSTMfaeZoZH4CWumt/8phc0xmK1y9G5C
         /42CUxD4A/eQcMQeyQ6m/EdYueiykUkEqhlmRaOChvyirfOY/xb3BwXgWVQGF1zRwPz5
         Quy3MIxsDUCS+40ae1nt9XcVVdb1hj6zBm7sdopPIqAi2IZyMZOR8P4zmCyzOKi8FjTB
         1yog==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532joXy8jNrHtL8pZY47hOpr5SV59qjzfcopoNBrQuCDWdpDHJE3
	c9ueDuA8in6s9OE3Dn/Tl4o=
X-Google-Smtp-Source: ABdhPJxJe7yk8TYK+sWXcDkEG+Ey+5uFISnIsXcvWkAzTh5JUxSam5ILnnR4GMFEQ3hCiKlr3EHFGA==
X-Received: by 2002:a63:f342:: with SMTP id t2mr2938643pgj.313.1601378836613;
        Tue, 29 Sep 2020 04:27:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:714a:: with SMTP id g10ls1294585pjs.2.canary-gmail;
 Tue, 29 Sep 2020 04:27:16 -0700 (PDT)
X-Received: by 2002:a17:90a:a78d:: with SMTP id f13mr3591117pjq.69.1601378836070;
        Tue, 29 Sep 2020 04:27:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601378836; cv=none;
        d=google.com; s=arc-20160816;
        b=fsSsnN+cABE9rjWobSpa8a2bjHPorCslRhvh5I0OC04/AeQgd5UNNivHdtaMB+ti7m
         SX5U4IwJgEzfM43MZSwA6VUx9LVyIXPuG69YVxgzEdmNtyUThlTKE+6KZXBCdJm99ZKe
         Ek1MwLAJE/MRT32bsxbhIHb0hG9hXoceBNk0g/laSy0BGa8S6L6VSvFhlo7PdwgiFsiB
         9s7hVG6Rs9ch1gHCvebehkqqeK6qQU1ibRdXKZ5lv765SMX6PWcKl94fnnDRH7Q8IzCd
         i0ZPd71C6W6NR6aCjtOqpGFhRfYVTKrKj9Nc8m6RBYA6Uw9rSrzX3GnKIxan4GUv40VM
         +zvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=OeB92nl4uRjrPFy/tuqWaCXnLb8KU8lagnBB2h+wyUw=;
        b=n+wkuTqNDNcK0M+IblZCBzEp0S3VvUtxU8SPeigj2ELAWpvJGIwZo64B52spbHRUtj
         9sFHZ499/iek/c21ez4SQ12DBaVDIQhnyDdRZSlfqlQPkaEpdylz/B80VNXtkelpIjx8
         P63C1iVWsqd8ghOHsRh2+2I5r2Zuv8M9STi+SD+uIuf+X5m2XECWZtO7XUfgUuPTP65x
         FR79JekCVDmnrFe0lP1najNHpEgGWovMb7wgLZRGZKBThos6HAT40YRFWrUApRRV/dTk
         dowiFDhI0xYG08AEkwUYTKD5/78OhvZr1hSrxIy/+TDqMvJ5xEc7ArJiwEgyusU18ev7
         zT/g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=odylhjd4;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id j16si300609pgj.1.2020.09.29.04.27.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 29 Sep 2020 04:27:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 11CCD23BC8;
	Tue, 29 Sep 2020 11:27:15 +0000 (UTC)
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-kernel@vger.kernel.org
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	stable@vger.kernel.org,
	Ian Rogers <irogers@google.com>,
	Jiri Olsa <jolsa@redhat.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Namhyung Kim <namhyung@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Stephane Eranian <eranian@google.com>,
	clang-built-linux@googlegroups.com,
	Arnaldo Carvalho de Melo <acme@redhat.com>,
	Sasha Levin <sashal@kernel.org>
Subject: [PATCH 4.19 157/245] perf mem2node: Avoid double free related to realloc
Date: Tue, 29 Sep 2020 13:00:08 +0200
Message-Id: <20200929105954.626062467@linuxfoundation.org>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200929105946.978650816@linuxfoundation.org>
References: <20200929105946.978650816@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=odylhjd4;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

From: Ian Rogers <irogers@google.com>

[ Upstream commit 266150c94c69429cf6d18e130237224a047f5061 ]

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
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 tools/perf/util/mem2node.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/tools/perf/util/mem2node.c b/tools/perf/util/mem2node.c
index c6fd81c025863..81c5a2e438b7d 100644
--- a/tools/perf/util/mem2node.c
+++ b/tools/perf/util/mem2node.c
@@ -1,5 +1,6 @@
 #include <errno.h>
 #include <inttypes.h>
+#include <asm/bug.h>
 #include <linux/bitmap.h>
 #include "mem2node.h"
 #include "util.h"
@@ -92,7 +93,7 @@ int mem2node__init(struct mem2node *map, struct perf_env *env)
 
 	/* Cut unused entries, due to merging. */
 	tmp_entries = realloc(entries, sizeof(*entries) * j);
-	if (tmp_entries)
+	if (tmp_entries || WARN_ON_ONCE(j == 0))
 		entries = tmp_entries;
 
 	for (i = 0; i < j; i++) {
-- 
2.25.1



-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200929105954.626062467%40linuxfoundation.org.
