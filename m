Return-Path: <clang-built-linux+bncBDZ7JWMQ2EGBBQ5NZP2QKGQETOLKYRQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43b.google.com (mail-pf1-x43b.google.com [IPv6:2607:f8b0:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id E9FF41C7448
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 May 2020 17:24:52 +0200 (CEST)
Received: by mail-pf1-x43b.google.com with SMTP id f26sf1945318pfn.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 06 May 2020 08:24:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588778691; cv=pass;
        d=google.com; s=arc-20160816;
        b=lvt7jJkQdu5nHO0/YUiL8wC6hWn3l0yDQ0nEfw7ROd0q+2Y7R2PyEYnibHvjdQ8PBl
         QJP4D3uOdPOzAfLUdMhGimEA0q888Oy+qvC2MtjiVA64PG3hMKwKYELsn3HcSrYcjfgI
         BnGACywQd1zQ0AzBS6VhGei7Z756+b04s7fdmpukCmKnrh6Sc325mVjTm9Ry83HgSYVj
         G3pAQUygzvxcpUJOCU4K+SkKyBl/DMdbBlbLlK2TDMJjOmBNeqcz9c0NexOfffdAdjFJ
         Z9nCT2HvcJRTLIvj64dU5u+R4R1i/oY4dVoEfi+G7wm1XTg2iTaQ6iZQwK0i1ac6doCZ
         u7Gg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=ZZ+ZYH3dg96o6So+dO8/hnBd2c6j0v4bNVBkfQGnI9c=;
        b=f56vaSm/c+7pnRzJLWNltiYQj+GsId6/TO+AoAEFJoyQSP9P3co7yjoOzhVx5qrmG6
         XWR9DXc5p9A+p2SB5k7jPs1M+GYEB+gx/RVHO52kGWf8qLidoCCidfqT0xxNR4z4lucI
         5HQQZ7dznbrDHuakZkdIVOXJvEOssFFhmBlWu91Mmjjec/tajJCzresZO1fi50VgoqYK
         kKlgw8Z4vuJ/pVW36+x2OF+avAFk+59xcM1FOHpLOeYKLrn/5Np8muX64IbSVr+4/gqS
         KnyOxz2HNmVI34vATriIz/VrZs+V3/Av6pvspeeJLtMx9Gtt5CdBdwFJhLoyFJU2M1YZ
         eM2w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=B1SoV4vh;
       spf=pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=acme@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZZ+ZYH3dg96o6So+dO8/hnBd2c6j0v4bNVBkfQGnI9c=;
        b=fYc+updIIZ/NeVvceEkB31NXv3lVwIhDCgJ1fSXa817kQl70sK8IcLZjm5dhsEjXQS
         PbtUAKe1r/dgn4+wzXMfXlqeAYpC5szcNWNTqKSIVqjQVyqOIhe9zqG9JVEeUGXarpoS
         vfCZB62k4213QjnVyyi838Q9xlRUyUzzmD5CVjlWjMVFCN1AZHt9nwG7WP+fXFdonNfK
         n3NuCWR40+sjhrq4227Vjs4sx5MeM3nknng3s709fxH+8lI8/iqG8LmzKbFqKRqZOCLB
         2sbETNt++AmRq87sDo+9aJUOUbPhxI55fdV1J+zVlZKEB30M3ikAWSgmpwoiAgsMboAM
         7shQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZZ+ZYH3dg96o6So+dO8/hnBd2c6j0v4bNVBkfQGnI9c=;
        b=X1+CjDH4qSMXlJn4vq81kxhjRrLPGPPc8izLtb0jKKJyel3rWu943xHfBYv9ep3wSq
         AA8ccE7vMxBtgLFt4kJd5bdTrfyvbOBdCPD/d9Qiw2loljfnpu3WOZqcQwgPh6yYo+d4
         sLi73ZnXE2KiieVOrETBJa60LHWbeXe50b8AKg45G+IIm+FZSQYP9HZaMOHomGJkYXOb
         w8jKYqhuWgwl1dsG6UMAp8l3Av+luUTctJwjeyTZQxxLLyLxyzp3KeXiZcSSrfBKnFzS
         zPMvrzlz6dS1cFADPsn789R3f2ppI7pPMaO7tbciQ83C/xXsg4YnpDxPrRHBPFoR8hLy
         bYlw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuYzfwdrY2WL2VBOjEpAqCSN3LS5zh9OyI0JLPzNPxXqMkRCAuoB
	S9BqgYyYrnj6nWm5lFHGhrA=
X-Google-Smtp-Source: APiQypLB/32tvC3C0zTJWNCOq2tpywUZpY9tz/bkPWFKrN/EToAx6G/qiagJ5Mj1c8VsYRPbZHOOWQ==
X-Received: by 2002:a65:5cc2:: with SMTP id b2mr7252516pgt.7.1588778691599;
        Wed, 06 May 2020 08:24:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:9a44:: with SMTP id x4ls1756230pfj.9.gmail; Wed, 06 May
 2020 08:24:51 -0700 (PDT)
X-Received: by 2002:a63:da10:: with SMTP id c16mr7515695pgh.208.1588778691174;
        Wed, 06 May 2020 08:24:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588778691; cv=none;
        d=google.com; s=arc-20160816;
        b=ojb0PtmVqJNO9BwQQPXb1VctC4LzzvqzhncI4BiPUnzk04JnyFJ2wXmGh2ByvgsG0z
         M2s3/iJXfCQMe1CFRJeJH2Tp9T3Vun8dP25mMzSCfVDXcSkSw7DEmX4TV6aYqI+7tvES
         2uOsoehuEYFEGCWax4Tw4TVHXzRmJFOVliQ4jILBS7cUC1IkIHQItAbhtnVNpFps1+7K
         GZcB6yuwhL1kd05w9Wum2wVByarKr+EnBzc6+yP1RuSxdwapLc8yKm7ODEn3dJ0g1t9V
         ZnPlKfW3fLo+txpRm+TNb17zLGofZ8N5tfgjpjl0HZK5yUH19LVrIMmL6NnojT5v4SNR
         pT4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=B+HCUcuomMf1/Dr0gNgMW61RXZ9Kmtbd3WU+sf75KPU=;
        b=vDj16nOe0LcqsRZh+Lvf9yG0Z3CxYmDYLDB8x30B1aQMRwFJ2ojw95TMkxrWVyPMTm
         hrPQos/yBcemJONe/Cx5gM41newrdsgGezGU8m8lwDIOPIAYitBHb7gYCCtZJJc8UosI
         BwKdWM0T2l0gtvCWvfcUas/HtGSD8Pp14urqKCLW5OHaIMOswGmEr0++bGQW+JaKbne8
         gL7s8s7JIxRqxHaNnW4WktgqEsfbKAdefO28eMZr9mgSkwsgD03ybLZyRpkAh0kzFK85
         fCN+76RNXO0j3r8kNrisFe8ANA9PnEwR9mtJ7/+rmOkK25pLFjIthwE8BpkbIEg0s/wI
         4qXg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=B1SoV4vh;
       spf=pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=acme@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q34si503164pjh.2.2020.05.06.08.24.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 06 May 2020 08:24:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from quaco.ghostprotocols.net (unknown [179.97.37.151])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 34D9620A8B;
	Wed,  6 May 2020 15:24:47 +0000 (UTC)
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Ingo Molnar <mingo@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>
Cc: Jiri Olsa <jolsa@kernel.org>,
	Namhyung Kim <namhyung@kernel.org>,
	Clark Williams <williams@redhat.com>,
	linux-kernel@vger.kernel.org,
	linux-perf-users@vger.kernel.org,
	Ian Rogers <irogers@google.com>,
	Adrian Hunter <adrian.hunter@intel.com>,
	Jiri Olsa <jolsa@redhat.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Andi Kleen <ak@linux.intel.com>,
	Leo Yan <leo.yan@linaro.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Stephane Eranian <eranian@google.com>,
	clang-built-linux@googlegroups.com,
	Arnaldo Carvalho de Melo <acme@redhat.com>
Subject: [PATCH 34/91] perf parse-events: Fix memory leaks found on parse_events
Date: Wed,  6 May 2020 12:21:37 -0300
Message-Id: <20200506152234.21977-35-acme@kernel.org>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200506152234.21977-1-acme@kernel.org>
References: <20200506152234.21977-1-acme@kernel.org>
MIME-Version: 1.0
X-Original-Sender: acme@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=B1SoV4vh;       spf=pass
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

free_list_evsel() deals with tools/perf/ evsels, not with libperf
perf_evsels, use the right destructor and avoid a leak, as
evsel__delete() will delete something perf_evsel__delete() doesn't.

Signed-off-by: Ian Rogers <irogers@google.com>

Cc: Adrian Hunter <adrian.hunter@intel.com>
Acked-by: Jiri Olsa <jolsa@redhat.com>
Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
Cc: Andi Kleen <ak@linux.intel.com>
Cc: Leo Yan <leo.yan@linaro.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Namhyung Kim <namhyung@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Stephane Eranian <eranian@google.com>
Cc: clang-built-linux@googlegroups.com
Link: http://lore.kernel.org/lkml/20200319023101.82458-1-irogers@google.com
[ split from a larger patch ]
Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
---
 tools/perf/util/parse-events.y | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/tools/perf/util/parse-events.y b/tools/perf/util/parse-events.y
index e879eb257874..6ece67ed244a 100644
--- a/tools/perf/util/parse-events.y
+++ b/tools/perf/util/parse-events.y
@@ -44,7 +44,7 @@ static void free_list_evsel(struct list_head* list_evsel)
 
 	list_for_each_entry_safe(evsel, tmp, list_evsel, core.node) {
 		list_del_init(&evsel->core.node);
-		perf_evsel__delete(evsel);
+		evsel__delete(evsel);
 	}
 	free(list_evsel);
 }
-- 
2.21.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200506152234.21977-35-acme%40kernel.org.
