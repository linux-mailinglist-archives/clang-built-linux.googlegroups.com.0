Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBE5OSD5QKGQES6ZCFNI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3b.google.com (mail-vk1-xa3b.google.com [IPv6:2607:f8b0:4864:20::a3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 25C7726EBC7
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Sep 2020 04:10:29 +0200 (CEST)
Received: by mail-vk1-xa3b.google.com with SMTP id e2sf944133vkn.11
        for <lists+clang-built-linux@lfdr.de>; Thu, 17 Sep 2020 19:10:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600395028; cv=pass;
        d=google.com; s=arc-20160816;
        b=XZpX4t6wB5VbG1AiONsceNvnOu/7+spDnXiic21wZKJ4vs2AqmbWvG23LmqN7uyfZR
         ClhxuufiQcvJ8c/Z4AiIhQyeuSlzbC+F6aWjna38NNuMveJG3LkpcfL7pmox0XfT71zb
         YUzfcfTh2ACbKLneAl7OQDwUZ5tpByAcIJh+ok2bG6F8j1qxd0ErMFGO3zx7TwMAWJGZ
         RcHXUV6vID5nudjgqZ7LNSjUlrpfkcY3Wx9U6HTcdL2ok37VCpcouqykDamADBmAR2dO
         nkJJo+Ol4pmXKmYgGAd2HZbRAa9Yj1Anxz8ewRNGvYgNNVSEQh93bKY9Bjmm4Nk2gHvI
         dxsA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=b+rcCvdKUWWp4LGNoM5ulFPS6h77EH0QV8EXP8QINZc=;
        b=rGnTa7tAuztSxtSocz2c69w0qSTbPCkxct7zoPcI8xW81yGG/np0w3/elMEztiwjpR
         sTRi7bBDfukskDUp2dKKxZqyj9o6i+k7zleyWkDpsMbIrbmp0inRNnE/UQfhaQsAk41p
         M2WIaHFDSCMSmZa0BuY+n+4dQnirWZSuHpY38YAY66zv4LibmCkupiVcnurTdtEXGgz2
         fNOirQFSpy67BNR6UKtUGGX15cXS9m4iD+2dwq7Ak0WA9pkj558Q4xw6KYzwYWW09aur
         Qqyodn9gq+5EcCVi4UFyEQRSf/kyBUwTU3GxPmzGhCgyeevhaYF2Qh0G4ut7xQ3lDnDR
         MriA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=xKSkNGCK;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=b+rcCvdKUWWp4LGNoM5ulFPS6h77EH0QV8EXP8QINZc=;
        b=mjVFtItg0du7wgChV5sQjd+F0vIvMX8ZGkEdPnX3OuDy33x+DSiiLqwp+mYwmo4zm3
         7fkK09lu1m6in9SL6owFOdwkR/CjftwwYUgNSgcoSOCFP7Wh+3dKErIKBgIK9EZVUUEx
         fgkK5nbJ8Qw0dAno8SE9S+t01X1wtsJMeu+6b2Q9CSl+Xfvm+23jxlvdZGV0AKHU+wLZ
         1b7S1UD/ZT2+fxNMF6JQbBmn2I3nvB0P0VEIhqEuMwAdD6F7VUIGzgmuITwchTOU1tG4
         Oh1CSwTEAfSnAcT9coJOfDJtmZjzuUfgf1RUq/f34b8ANMSRX33Y7Gj7DGPo8SlLWFHP
         xAWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=b+rcCvdKUWWp4LGNoM5ulFPS6h77EH0QV8EXP8QINZc=;
        b=LvzdBgB6/F/pbPWGjgoaAj3REduoeXPr9PgzO+YF6s1VDwHGtRE7CuJZC1VVdGK9BK
         AyaBbESg01CIpc+WKKUIWQyIkFchOTlbdSDh4ZUQniQO8k3RB/n09rCmLW975rorjuAz
         DCV+uu3Y3N7SQRvSxmmqvxlAnKdLilLycVbbhHILtkDVJKhAv7UnnIjY8HJkmBO4K5/u
         TNkcPaHIyazPg1J0nLyUicBsd3NSLHqo9bh7eLnqJSEdr6+XVaTnuu7Y33rBhNRFDRCn
         b/eMZIDPcrT+b5qzcpllDj8/IyYAU2Mnq2OAiCzxSH9cUKxeoSudujloOyaqq/gTg0GZ
         PUTQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5317UgihD4tSUEJAb9ppu8icpLcm01rY3MpRbghYplAq3HPEkD0u
	lD5dAWeetpCoYlUZRyvFVqI=
X-Google-Smtp-Source: ABdhPJyvK+Yxsi8Dmy92CUg3Bf1y/VnjHDL3BUiOVpDVsWz4iveI/wY1+DNjeFX5+cfyYusHXIM3Rw==
X-Received: by 2002:ab0:706:: with SMTP id h6mr15784203uah.11.1600395028105;
        Thu, 17 Sep 2020 19:10:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:e7c5:: with SMTP id e188ls228770vkh.10.gmail; Thu, 17
 Sep 2020 19:10:27 -0700 (PDT)
X-Received: by 2002:a1f:8d8a:: with SMTP id p132mr10028489vkd.14.1600395027558;
        Thu, 17 Sep 2020 19:10:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600395027; cv=none;
        d=google.com; s=arc-20160816;
        b=uHQK9piFwsxZL+I2fXUnmNQQc8kB2V3Xxxb6+4F8F1N3vCDYgZPWaDk/TISEyEsTNi
         jTM/E5sORtt4KBw23tNtYLeifH0cKgpIkkjwe7C5ysmPCNlWacO5N2TBuqMyhgvK6TUq
         zz/EnVHg/tfYPOIRorSlc05KDZV6P+Nw3RW6Nle16+Zayu2hVQZtbn+sw4UHRlna5sEI
         UBSbrwRdT90gXTXVGy0fCgpbEref/4SPWXubRz8Hr3nTFfivVKriL9+hSjlBkN3bZHnX
         kgAhp9IANhw/a9lWAJUMXzpKEMK84pufPRs9WxaIdy7Y3jT5cKmkFretOd+PQWaI4Gr/
         A28A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=5Xtm7wvm6lc9Wht8TIoNNT1slq6e6JNQE1NNF9RuyCc=;
        b=vKQFX2NTqr0AekUH9ndwhp2LkesMss+dmGfaWCjSrnAnpRdcdtGOdxKVs/8E4m2cwh
         rBad9WDkSq74j7sX+ggJRopygBaGIQPmWqCVH4Eo+n1D7MLV7wnyrJ+IUtiwCve/oDka
         J6/+IPtvJ+N3703iDlGfXvZ+PSCgGLjiLVGG0rq/FuxaN2QwTQIzmiEfXyUUIiAwxmJA
         sMXY2jr+bFV26aQxpVZFP0JGXYOU/3bk8kjwzwChcm/kS2CnDMHMe+nq66hEVT247jnb
         7esz7/g59cSiuRh1cNXCRUhdLzmdi8QMrMnOdoE4/05VuxQ51eb+vDMTGzMDP4SlZesh
         XgYA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=xKSkNGCK;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q10si77053uas.1.2020.09.17.19.10.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 17 Sep 2020 19:10:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 1E271239D3;
	Fri, 18 Sep 2020 02:10:25 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Ian Rogers <irogers@google.com>,
	Jiri Olsa <jolsa@redhat.com>,
	Adrian Hunter <adrian.hunter@intel.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Andi Kleen <ak@linux.intel.com>,
	Leo Yan <leo.yan@linaro.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Namhyung Kim <namhyung@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Stephane Eranian <eranian@google.com>,
	clang-built-linux@googlegroups.com,
	Arnaldo Carvalho de Melo <acme@redhat.com>,
	Sasha Levin <sashal@kernel.org>
Subject: [PATCH AUTOSEL 4.19 119/206] perf parse-events: Fix 3 use after frees found with clang ASAN
Date: Thu, 17 Sep 2020 22:06:35 -0400
Message-Id: <20200918020802.2065198-119-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200918020802.2065198-1-sashal@kernel.org>
References: <20200918020802.2065198-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=xKSkNGCK;       spf=pass
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

[ Upstream commit d4953f7ef1a2e87ef732823af35361404d13fea8 ]

Reproducible with a clang asan build and then running perf test in
particular 'Parse event definition strings'.

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
Link: http://lore.kernel.org/lkml/20200314170356.62914-1-irogers@google.com
Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 tools/perf/util/evsel.c        | 1 +
 tools/perf/util/parse-events.c | 4 ++--
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/tools/perf/util/evsel.c b/tools/perf/util/evsel.c
index 4fad92213609f..68c5ab0e1800b 100644
--- a/tools/perf/util/evsel.c
+++ b/tools/perf/util/evsel.c
@@ -1290,6 +1290,7 @@ void perf_evsel__exit(struct perf_evsel *evsel)
 	thread_map__put(evsel->threads);
 	zfree(&evsel->group_name);
 	zfree(&evsel->name);
+	zfree(&evsel->pmu_name);
 	perf_evsel__object.fini(evsel);
 }
 
diff --git a/tools/perf/util/parse-events.c b/tools/perf/util/parse-events.c
index 95043cae57740..6d087d9acd5ee 100644
--- a/tools/perf/util/parse-events.c
+++ b/tools/perf/util/parse-events.c
@@ -1261,7 +1261,7 @@ int parse_events_add_pmu(struct parse_events_state *parse_state,
 		attr.type = pmu->type;
 		evsel = __add_event(list, &parse_state->idx, &attr, NULL, pmu, NULL, auto_merge_stats);
 		if (evsel) {
-			evsel->pmu_name = name;
+			evsel->pmu_name = name ? strdup(name) : NULL;
 			evsel->use_uncore_alias = use_uncore_alias;
 			return 0;
 		} else {
@@ -1302,7 +1302,7 @@ int parse_events_add_pmu(struct parse_events_state *parse_state,
 		evsel->snapshot = info.snapshot;
 		evsel->metric_expr = info.metric_expr;
 		evsel->metric_name = info.metric_name;
-		evsel->pmu_name = name;
+		evsel->pmu_name = name ? strdup(name) : NULL;
 		evsel->use_uncore_alias = use_uncore_alias;
 	}
 
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200918020802.2065198-119-sashal%40kernel.org.
