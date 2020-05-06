Return-Path: <clang-built-linux+bncBDZ7JWMQ2EGBBP5NZP2QKGQEF3VAOZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3b.google.com (mail-io1-xd3b.google.com [IPv6:2607:f8b0:4864:20::d3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 852301C7447
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 May 2020 17:24:49 +0200 (CEST)
Received: by mail-io1-xd3b.google.com with SMTP id g10sf1851789iov.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 06 May 2020 08:24:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588778688; cv=pass;
        d=google.com; s=arc-20160816;
        b=dZoimUtc3WybvA2643Gr7+ZfJM5bhkca7lfqJQUHhU1y7m6VFjgDFYHoI1PnPv/+Hy
         5NybnVy2reqEsIgc7WUk1aUm3CJhVODvoVXjYUIxX0ofZ/qLtxYgG4R4pmexzHVWGECL
         JxYRF2D24WsLW9+ArtArhf2nE4S2cIM+MmxShXoHt0jcdE8c5XeJ5uJja7RG/aLOFI67
         4eUM/3gRTZxYiCi57Sr6PHarU8p/s1382HKjoVJ4aPxbRrLXeAWGNrCsS2FHiKsGiW6L
         dyloEw+PxxbewcvCrx6+gPPsGomPPaYCbsQcGjxWB2uwF2TqnL2WBJcjcHGy08rEIV8C
         d0Og==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=kl43IONV2TFQiTMSVYr1DGJwb0hGbFzmqXsMNiBbQ3A=;
        b=XH4U3lO0Pf1n0mL0tDGK89l9wqf/olz+ZndadXgPt5MZ6JQUwGDwlcoE2iiF7kusYk
         qdnreM8fhbpVrbCGn8gLpboHljd/oLohksHpsRo8UrrubXSmOnMAmOk81g3lqRi18LkR
         9b3VIE4BYh44ewNfc8hXg7Cwawa4t5SGRfK7B/v5+b4FlL6wHyT6cFyq3XWEgK76f4Dt
         eaA8oqOlYUDSmWoIVckMlncljq9sBbHdef49KNp0SREbkJia2rGz0S0BaOP1c4pNPNsp
         1J/zprvaO2/fAsSsnbrfmEnGXi9s+H7UicqVSKNj4bhj4jQZ/FUZnFsqGejqbwuQ4Bc/
         vcvQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=0RueMxAg;
       spf=pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=acme@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kl43IONV2TFQiTMSVYr1DGJwb0hGbFzmqXsMNiBbQ3A=;
        b=ki6CAqxw9+BxrHN10DXh8m+bHhvyyzPtsy7QiwnXRh5CS6y5dHcPl7swppsOqmUh8L
         b6N/57OAeP+RawAoo0iF1O3awkm/gbcQs8STBZaNREcH9N2AKlmZTUwjgiWao4Rx/3Hg
         CrZhPgyE97Bg94uMPU7re6zKtEmDNZ6l4qznexmkh6c/JDJePvTpNtWPSkyYo6PN+Lsy
         LPr2vUCNpbb6BUg8EGAdSJ7m1vHmclVXhQn1lgwypStleVMr2W2Gq6lqCsVeqoi/iofY
         7KcM4O9LrkGaXHYBQq/3y+4uWYA/XSMrfQO+eH2twgKUmiOYNVnAaMQqlcLd7HgCjKSD
         Zk1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kl43IONV2TFQiTMSVYr1DGJwb0hGbFzmqXsMNiBbQ3A=;
        b=ppnf1tJZUa70tcl2imrYMh1W4oPfMMizJ98OMeFTPdlhfjEN0cIzkwOlja2cLPX0Xs
         PePSA4cLYZm7uJS2pUw4FREdv/mbS+FX0MFqeZ0AK4/7njYwpS9ewHkyy60BugbHKeXj
         LBj2Ys+K/ZYlqyRC6EjvsITIvHB6rpAkr4YQM20qbV7fw3lygdKECP8Jh/hYpYjyBq5u
         8hK5MZMksOAoG28R2uuqBPUzeceBuU4DWlvPenn41b+OqLSW02MKoan4Zze2aq02dA0z
         ZV44SElqmoE1Yi0z5Y2o2nxsrI7QlDTYaWvGpicSgr5VFcR6A1V2deCfYPUs37m7ccR+
         QKCg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuYSIjeHdNkl7ghU/BsKxvmvkC0u3XHWDqRzY2tzjxhmwghRntaQ
	24WV45/okKLa0rzTM2qa/e4=
X-Google-Smtp-Source: APiQypK0AipT7C9ghuegbhwC3SHeCAe+I0JWBT8wBAAkbLi8BTZ7haj9OxHNPGFdt7cGSbGU3l/Uqg==
X-Received: by 2002:a02:9f13:: with SMTP id z19mr8785795jal.29.1588778688062;
        Wed, 06 May 2020 08:24:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:3bcf:: with SMTP id i198ls830810ioa.1.gmail; Wed, 06 May
 2020 08:24:47 -0700 (PDT)
X-Received: by 2002:a5d:8786:: with SMTP id f6mr8791567ion.100.1588778687491;
        Wed, 06 May 2020 08:24:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588778687; cv=none;
        d=google.com; s=arc-20160816;
        b=y9xahvQa2Omu4SoWH2STcuelI8617fcRoVBlDtxFBJH0d4sjSD6MV69XddDOwORYPs
         WJWkMJFQhYHST+JVv4/4RJ74uLhERp5+4odoVNuIXfmpm+n2bWQ1mYaBiA8MQGXN+M5A
         iSa6JBvnncW5Ngzy2cDxH2ohdj1PRp8afC+l/5b39pAAg5jWc35fA4By8RLSCQZoaPQQ
         Z3wznEU59TzcDIzz/P8r0l75C3UfgzXu3uBOs1/c+599gSt3mjSFEY2m4fL9YTHUBsjY
         I4kpR+kjGEvKGg8YIGLrZ1B5MguqAF8nivkjbVZtZk0hvjBMwUML2GyUNjwFzF9wdJ6E
         LDww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Scp5NAUWcrrnfNAvGzeUON2OtL/D+y6SkNZA+cfoz+E=;
        b=r8LeqSc7Dg11q6aQkFWNcwAo0tSSKFHPGoJxeaneNKeqTY95qUOdQ0WNS+3vx2H2dK
         DwtYWCSnWGB590c0/0RKEygu6tdI3SxQxfzbVcGjq/Pd9JoxcH46yIb9LMl5cO4ka1o9
         jirskrsAQbqJwOIdVsFwDgXjENjpYT1ukARUkB8ypsIgLnfSrJadx8dS9xUIjJyUC/G1
         tHrZGabzGKYTZsI+LEdr3f5RkOq7D2wLzkT0hbvXqH6ntws/QA39FERQJ7XbPob9XOoe
         XrwdLh5JTyG5DWsOs9wnAoRm0Uz5wZYgTVTGwmCbYNhBhc73TF2789V7srj/zJFD17Aa
         +uVQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=0RueMxAg;
       spf=pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=acme@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id p5si143725ilm.1.2020.05.06.08.24.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 06 May 2020 08:24:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from quaco.ghostprotocols.net (unknown [179.97.37.151])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 0477921841;
	Wed,  6 May 2020 15:24:42 +0000 (UTC)
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
	Adrian Hunter <adrian.hunter@intel.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Andi Kleen <ak@linux.intel.com>,
	Leo Yan <leo.yan@linaro.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Stephane Eranian <eranian@google.com>,
	clang-built-linux@googlegroups.com,
	Arnaldo Carvalho de Melo <acme@redhat.com>
Subject: [PATCH 33/91] perf parse-events: Fix memory leaks found on parse_events
Date: Wed,  6 May 2020 12:21:36 -0300
Message-Id: <20200506152234.21977-34-acme@kernel.org>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200506152234.21977-1-acme@kernel.org>
References: <20200506152234.21977-1-acme@kernel.org>
MIME-Version: 1.0
X-Original-Sender: acme@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=0RueMxAg;       spf=pass
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

Fix a memory leak found by applying LLVM's libfuzzer on parse_events().

Signed-off-by: Ian Rogers <irogers@google.com>
Acked-by: Jiri Olsa <jolsa@redhat.com>
Cc: Adrian Hunter <adrian.hunter@intel.com>
Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
Cc: Andi Kleen <ak@linux.intel.com>
Cc: Leo Yan <leo.yan@linaro.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Namhyung Kim <namhyung@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Stephane Eranian <eranian@google.com>
Cc: clang-built-linux@googlegroups.com
Link: http://lore.kernel.org/lkml/20200319023101.82458-1-irogers@google.com
[ split from a larger patch, use zfree() ]
Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
---
 tools/perf/util/parse-events.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/tools/perf/util/parse-events.c b/tools/perf/util/parse-events.c
index 5795f3a8f71c..6dc9e57ab95b 100644
--- a/tools/perf/util/parse-events.c
+++ b/tools/perf/util/parse-events.c
@@ -1482,6 +1482,7 @@ int parse_events_add_pmu(struct parse_events_state *parse_state,
 
 		list_for_each_entry_safe(pos, tmp, &config_terms, list) {
 			list_del_init(&pos->list);
+			zfree(&pos->val.str);
 			free(pos);
 		}
 		return -EINVAL;
-- 
2.21.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200506152234.21977-34-acme%40kernel.org.
