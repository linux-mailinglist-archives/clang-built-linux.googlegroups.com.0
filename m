Return-Path: <clang-built-linux+bncBDZ7JWMQ2EGBBF5OZP2QKGQE5M4QN2I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73e.google.com (mail-qk1-x73e.google.com [IPv6:2607:f8b0:4864:20::73e])
	by mail.lfdr.de (Postfix) with ESMTPS id 0858B1C7489
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 May 2020 17:26:17 +0200 (CEST)
Received: by mail-qk1-x73e.google.com with SMTP id a83sf2088985qkc.11
        for <lists+clang-built-linux@lfdr.de>; Wed, 06 May 2020 08:26:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588778776; cv=pass;
        d=google.com; s=arc-20160816;
        b=i6UMJaxTGI1DXXGEYcmJrKFv4zkcWk8ZiPg/pySY7ct1oLAqAe35n8HUlSN08ZD3o/
         nUf7q++4pz91sRkIp8OFdNoYnf9lnu/6lHibk+wreeJmX/AfWl/8C9bVli2bMnobvLjW
         gdMgNNdjGy2honX45kIr/GAypVBqF/qGHB8+Z0tnzSijrvLXPAySAABdEKzjg7mAwh2Q
         dfPuCg7HmrIRsQEFlDV1bWPXuJ/72fRLgbtms6i6FpBulpm3RV0jTc/Cfwdj+7eGxAg9
         IPe3tf2UpoheIbvT1qM6wsxqdJ3Ez2eiEe+fmRbW978/ocWwZY6bhbek7UD4l5BrG3u4
         BrDA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=goIXrAseVZDXsOr6pkhffk+jfy/GvbpN3u4PoTd7R5I=;
        b=HxmGX2sM7a6otbfXe7EOvUrPguZxMsvZ1ZhKn2hRZggZGKyQds9B9ezqp7m4Ls+Wpk
         rRO6ReaY1BkQKL2wZxt99Rsptexsh3pDyET3NSIAmSnXzwDqVV8cBOfEdocDRL3FcUxR
         JxEzMot9VUD3Os64uuT6hRXLQDD8dJWxCcKgB7+I4HuNKMWO6W5m2eW2kpKuLfL2QTOc
         Xb9O44Wnrl2vjTRe+X8kqNEkRoUSupdtoChi1W5qTHJoJDUB7TIDLfCo6NZdgG6fjFA6
         TXiKzVNIMWxkv77RKgS3bahJ02vY7mJW9GeBYculCgiR+pF6RLwp4X50XgM34spQ7x6r
         MmOg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=WyMSV3ZT;
       spf=pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=acme@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=goIXrAseVZDXsOr6pkhffk+jfy/GvbpN3u4PoTd7R5I=;
        b=Aw3/o2SW3T3SrwWXM8gNY8N0C6CR/DzKcWr9yGtk+V4MxNDrL6mgm/qjDPX5O3yGMT
         pxiMvcKJNC5Wz1W+3f3iTf9qv9rNj0OfsXYm2kT7OgbJwecRj6dK1RQZ00JVwEefAOLd
         +grJ4mGQudXVaKQ1Gkun3JFTMMZBvdZ1FG85TmS+unkJs07ZHdps5rOC18640rYCWXo7
         XtF1WYklA/ylrO4msUM89BUidIaRgKSFSiy+QMp0QRTXNAU2S/SRfzdkZ+hoCh40Cusn
         vQUJ/T91jhDwO3K7WwDdy7oM9NdkfUzUR/WD9Qs3oo6x93Gib0N8etuZfRWD79KP3CFV
         hU4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=goIXrAseVZDXsOr6pkhffk+jfy/GvbpN3u4PoTd7R5I=;
        b=pIk7BW/ThbRw4nMZvsSURbQ0gtSlVPP58FaMn2Rt3L+8LEtRcp/V1m+y1Rx26qImJZ
         mTj69yyxMJo2qGFFxrCM5L6dbdejlcvb+cOdY7ynjPhwO9JxhYW3ezNQOA0MdwWkZ9Ua
         zK5J0oHBgYN1nj21PJi526yLBwmZulDFINevul8YVC0WE1TtzmOs/BX7xUBrp+RQuX7a
         Cnb4tOqTTtGZ6PZ6Rwm/J+T40rcVx6BXyLTKHbYklk1U+oXl4d2X6Nt2T1IaPvhLuwc0
         h8gWuIZaDEVykyv1CAdcrVFutatH1qDjzN3gDAEgzNtn5HeMJvyoM8UCAa00xizT5+WR
         6ipA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuYUFKaWuv6AvxVOlNJUgcVU3EHnP4FTIu7YlGErrJekVpiZybgB
	gOQFC9f9awgkPC+8odJzk4U=
X-Google-Smtp-Source: APiQypJWth08qi5cJhxlPQPZSvD3ag2jbLU17ukglR/vQuowc64Y7atH8Iw/Weu3vEKtBqArVAxfgA==
X-Received: by 2002:ac8:66da:: with SMTP id m26mr8538336qtp.342.1588778775742;
        Wed, 06 May 2020 08:26:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:8a03:: with SMTP id m3ls2149334qkd.8.gmail; Wed, 06 May
 2020 08:26:15 -0700 (PDT)
X-Received: by 2002:a05:620a:914:: with SMTP id v20mr2213155qkv.107.1588778775237;
        Wed, 06 May 2020 08:26:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588778775; cv=none;
        d=google.com; s=arc-20160816;
        b=qZWUNN0LCV8Ky7YMESWGKrBUS5ha2pff0ZDk7NMqns7nKUqd98KwCClY7T14IXSI4t
         /VVxeZ1PiKBowZY0h1VFZFjYYehOuR3SFP5pTboBnSjLF0O+2gFkgCE/XCake1Rn5g1d
         RrmZJXHXLFzLkwZO7P5rN81RRyf9jDdU16v1HDunjAZM1BeAdXkyQWHVx8tdsZZFUxSX
         grxtaEOHCojIdew/KY4+L0pbMSiPpiD9Khx7IZTFBvK0jPNOJrOpbuxP2Pa4o4pHkMpQ
         +2SI+m0VSqVslgw/E3ajcZN/Z3+qJBKK7YD5lPRFQeyZ+daPeZV6kXHLBQmHbDm2rIF1
         O61A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=XmCtvEyz/l3L3eM6RVeTv9D1QOTCMgzqyr7+AFGBz94=;
        b=w2RK4eIMJcdbXInt0/wDZ+KZpf/vdzhICYfJ4kJbleeeDJH1iwe6/4bE9wOwTZH3+p
         0/JvC4DE2jIGsV7rWAz+LdTgyrjwKD0rm62XJYJrNxXbdSnFewin02MMrKi1n/hCtrVA
         8G4j4be8i7Kb2AZK7/RLqpq2A+TB4c3bR3CNqiqGQ4JO3Utlab6Tb1qFdOohj3+snxBP
         IUFOTAgF6RewoI9tBcZE5IT7H8Y++UT0bDJ6l+PVlGe8+x2Z8+syYPZ1SIcBGDoootgQ
         9REaTcM80FOEV+lKo3SHUhIt2GgCtvGWgjrXuzj/+bKY/hFj+5l3MLKHrPxA/hpwFTz8
         LukA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=WyMSV3ZT;
       spf=pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=acme@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id u20si232051qka.2.2020.05.06.08.26.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 06 May 2020 08:26:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from quaco.ghostprotocols.net (unknown [179.97.37.151])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id DE2CC20CC7;
	Wed,  6 May 2020 15:26:10 +0000 (UTC)
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Ingo Molnar <mingo@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>
Cc: Jiri Olsa <jolsa@kernel.org>,
	Namhyung Kim <namhyung@kernel.org>,
	Clark Williams <williams@redhat.com>,
	linux-kernel@vger.kernel.org,
	linux-perf-users@vger.kernel.org,
	Ian Rogers <irogers@google.com>,
	Jiri Olsa <jolsa@redhat.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Stephane Eranian <eranian@google.com>,
	clang-built-linux@googlegroups.com,
	Arnaldo Carvalho de Melo <acme@redhat.com>
Subject: [PATCH 63/91] perf mem2node: Avoid double free related to realloc
Date: Wed,  6 May 2020 12:22:06 -0300
Message-Id: <20200506152234.21977-64-acme@kernel.org>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200506152234.21977-1-acme@kernel.org>
References: <20200506152234.21977-1-acme@kernel.org>
MIME-Version: 1.0
X-Original-Sender: acme@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=WyMSV3ZT;       spf=pass
 (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=acme@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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
index 797d86a1ab09..c84f5841c7ab 100644
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
2.21.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200506152234.21977-64-acme%40kernel.org.
