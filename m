Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBINMSD5QKGQEBWYXBGQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3e.google.com (mail-qv1-xf3e.google.com [IPv6:2607:f8b0:4864:20::f3e])
	by mail.lfdr.de (Postfix) with ESMTPS id DF67626EB52
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Sep 2020 04:06:26 +0200 (CEST)
Received: by mail-qv1-xf3e.google.com with SMTP id h9sf2869222qvr.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 17 Sep 2020 19:06:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600394786; cv=pass;
        d=google.com; s=arc-20160816;
        b=TH/kiOqVMshyUw6e2MXsXdxK9K1XC5/2IvqDyQywDMsiOufe2EqN4/zunnv5bsAX/0
         8hz40cG7kcDIg4M32Xg2XJJBtSK0Ep4EkN3BWztnQ2aHf0GTZOJTVpqEvPpSteiTEqKj
         eFukxFYWABIShNTMW/3AfJDQ4vAdUJV0BoI4W7n1xQ/mMs1oVgJXGZqayyd7HKzS+iKP
         lDtsmeDK0J4rt2tXejyFDoP16JCBWzxSzW8SikCq1zEVoIObeZphpOOb4sqh9e1IbyLd
         +fnnF/4jlkFjpMJ8fYs7kC95N0XqqKzku379shFAHtdrf5I56IgiOM4XfzPb7BSUeEpF
         OFFA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=WYvgif8mI98Bj6Ll0JKJrLV6xfnuRSUOv13XSaWlGRI=;
        b=B/XUEP9Qr/8jo8ddzZn5Bl88NhFUhpnFzcrXbDVDCeH5ZxAqBzruR8xq4BFmlvJAUh
         Cj44weCy7/AUP0avJl/xLaTTm/O6RysnKErgbykr4LwHa1QgjTIgKzXoatc72eW7gtS0
         xDvMvHcMl2bQ9B2KNfn7+cwCi8+ybjHJFS2Ve9KRyUCijpvO54bJuklftonsTx3s/bpf
         EHY9UqGpmwgxKmqis5NAvHtiALzeYz6QPOjkcGeZGMq7RVvSwis5Qs+HXNG6xFXBknKl
         S2s7AZ6YNdyB2P/q1zlaBKCUlsLUwoojCM4DGboD3RybK9G2Z2c863RPeADawWRiEG6B
         UHFg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=dm7dCAby;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WYvgif8mI98Bj6Ll0JKJrLV6xfnuRSUOv13XSaWlGRI=;
        b=YNDSyYriu4aSLixmCkMDbfCJmdIQs0fgUevlSUDai9dvaeGLgEvPuXFb3LhpK/i/x/
         zKj8+v/nM7BlwG5xjnNiKXNOjuCcDVd+7TURX0hn1rvcJoFmGMnNFCPEr8bYIOKGl47z
         uxkGHHOOo7OG6csFXDyWXReZoTdddiRJ/HBxh7VrNOaqDGCSrF/HQ54WTsVMxAWBXm0C
         1d7MYpdzFHq8COAGfHKhdkQv6xwqN2KYZxx7J989I+Xnw/FMxE247zXDY1mDNkDG9k/a
         fTF9vDOAwhWdHuh0c8kk71XZnvAc7kTe8FZBcHdfChPwbkjyXoh9Hp0XZpYd72x2W0o5
         rEPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WYvgif8mI98Bj6Ll0JKJrLV6xfnuRSUOv13XSaWlGRI=;
        b=E4LgJ1gtQcwrjaiisGcGEHQhDvyP66gk4YNW8I4y7uK4KB/FJehDhZjUKjJUq2WQLO
         BCyZogC7kD5IlAGqRlttf2xUSVqhT+ljME1kcqbHqyzlIczFM9t/vBa/apZvFFah4O0m
         6Qdf0nZwm/95EoWLd7uQz1OL1jspO7LNbGNwV7cuTM67RkzNHSGduxC5hBzq9RghJ/Vj
         sMVB4FDzF0eMaHLHdvhNTjXtDTWzrscVrDTxuBRZfGXDeKZBzy+a8tCKt9622CPy/KC3
         uq40X3Onu0OepvdFBec5hYqhJyIjTRfTJgUspfC5Iy6r1J+uClbIEL/mG7RVdtgVr0Ej
         OaIw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531x7xKBPX9t5lYvo8uzV8TTbZA1o5YtemNjDg3KgWb6ei6L+wZc
	UWsjF9+ThVJY1F2hvbFZp0M=
X-Google-Smtp-Source: ABdhPJwnGr5e+foBi0GPECa/1HxhT0R3wy5MRp9bg9VWpFUwCammX/LLMtSJk/OXqdlzkBQyC/UlUw==
X-Received: by 2002:ac8:3f23:: with SMTP id c32mr30708042qtk.102.1600394785828;
        Thu, 17 Sep 2020 19:06:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:42b3:: with SMTP id e19ls1025780qvr.11.gmail; Thu, 17
 Sep 2020 19:06:25 -0700 (PDT)
X-Received: by 2002:a0c:f48e:: with SMTP id i14mr31548138qvm.5.1600394785385;
        Thu, 17 Sep 2020 19:06:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600394785; cv=none;
        d=google.com; s=arc-20160816;
        b=E4dDzuvRNVGZPE/IHcXZbXHZMglemQVO6rn6Jliypc1WCShrU56N+SLBjM0oPPi1nV
         ZFeDZ/mHTd0msih2yS7+eNhF18bSeezEagcs5+Yd+st3bbkb89RykiXxez/1yDZpcS8g
         gjmmIXCpBsMg7kKOiH21Zxpdlgo5iTVTykjsjug67Ul/9iD0LJsPN+3Td0M6lidxNIm1
         /3ERZsZjiljYB9J06ajp10duv/uVfcMVnxbrlKkJP6sqvRi7jOMt82msUOG1vfxyOTKK
         cwZYEt36O0w1DqdtVBgcCiKOi2F1DAzHY7uopV7myZvWjJH2kmnR4VxkOVpjEqoJr1ko
         WA5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=JMeihtiiq6ixqNRZM47zc13v3tJ71X2MM+6a2sFnv2c=;
        b=UhDcZPvkGr2W7DWAR+WrGr5VWyTWK0kzP7IbHiBuFAIBdtCHdcnUdBrrr7KzThEdcf
         heTI5eAbcCdQujax5jZ6HjqEJzpXI8MBOq2FiU78IolXKQpQl4rjCwNAx0mPXyGvlfTu
         og1i0fo+D+NN43/66nkNE1AsXYQordqyj0QicxeMoid5eym7mYaUTfRCjvkyqDx4KXpO
         lMAWumzSpK7Qa3XwMNIL8aqXcvMwafz0ZeuXOeniZ7bgBCeI2Xp9ovdIRFJbAHYiWa5x
         i7+cGlwlCOQ4vV1MbrKjRu8lq+v9NXtv/4pazDFviC9Kfnweyt4P8Gw7sObDXREHPEBE
         kmOQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=dm7dCAby;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y6si67062qtd.1.2020.09.17.19.06.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 17 Sep 2020 19:06:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 3ECFC23977;
	Fri, 18 Sep 2020 02:06:23 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Ian Rogers <irogers@google.com>,
	Jiri Olsa <jolsa@redhat.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Namhyung Kim <namhyung@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Stephane Eranian <eranian@google.com>,
	clang-built-linux@googlegroups.com,
	Arnaldo Carvalho de Melo <acme@redhat.com>,
	Sasha Levin <sashal@kernel.org>
Subject: [PATCH AUTOSEL 5.4 256/330] perf mem2node: Avoid double free related to realloc
Date: Thu, 17 Sep 2020 21:59:56 -0400
Message-Id: <20200918020110.2063155-256-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200918020110.2063155-1-sashal@kernel.org>
References: <20200918020110.2063155-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=dm7dCAby;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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
index 797d86a1ab095..c84f5841c7abd 100644
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
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200918020110.2063155-256-sashal%40kernel.org.
