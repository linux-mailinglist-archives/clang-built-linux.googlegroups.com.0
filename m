Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBTFLSD5QKGQE5MV7MYI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F3F626EB42
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Sep 2020 04:05:02 +0200 (CEST)
Received: by mail-pf1-x440.google.com with SMTP id a19sf2059590pff.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 17 Sep 2020 19:05:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600394701; cv=pass;
        d=google.com; s=arc-20160816;
        b=0Fvkb9khwpVNFLAxsydPwlY1zmumjGM7z58ZsQHIpJ6PFVpO9F0QLtUhn8DF9/gkCZ
         iRsvTpj2kXXsz+EkU6B0IrB7Czmuzd/KgLyBpdgmzy4Aptv1A6szUQRLwnfoouJ7oJIa
         GVkb7BXICif00zntcr5DTq+FFOK4hsy1Hns305pUjOsy7yRJl/ev3PGClIbnROERdcSS
         70NrqTmLvbi4HEjC3VQA7P89qjVkdYsnnrjWXqqrIiMl4nerKLrOWJhaXPPHVn7YW4ZL
         61RqykXrX1L/azFyQVvBa53DS7qWtpZlaqxHDYcT2Afm8Pe/9k5PQW+ij/MYXtJBRKIW
         9yKA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=WzxW/gN0vttR3rbbdqQADVlLFot6Oo2UkrP5IIUvOiU=;
        b=VvbSyOINP14MT9xDS2Sw55PPzRkrBKcRSyrPxRHGJ5GfDdLbMdIYw5/7SYTcpwYe0E
         WrAVc3T5E3SEMtinKUIXVWhRdZVflVB2UciMSMSYQx5IR1gxlnhh2skPrULre6Cj0W5W
         ta37WmuTvWBe0fcWBT/GXilaqCGXhRUNO1c0PZUyh6HiC3yNpBsz/6xzR6bASeY7q80R
         EZVi+dMq6AnJXGLYXFbzhnz1b9rl3u0nyLX+7XjJsD0WtxjXF6Hjy2DSlE7iJAVQVDyV
         DFKFK3LCWsnw2z5YwyqXLvAEAA+49QJGp4Uk4B/+AcPSowpWM0ZmGoDUx9fg8yushrSa
         FAsg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=GVvtQsJ9;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WzxW/gN0vttR3rbbdqQADVlLFot6Oo2UkrP5IIUvOiU=;
        b=Dt4cDkg+KflfBFxyYfHatKHlQGZAMGnf4+Jqi57UL8q97VaZyYYlxKjdZRoS+ojscp
         ZAal9TIkVm7jQYnX/XdzCjpAt2lJ6T5Z7SG7IFSu/8E2CxpIciAb6xmogDFHUNvZcSVl
         sCTf/GTxzFoQa1ZNL7Xb7UH7E8ZkLXe7nxoQl+8HHOUkcjHpgQjbBGvZcwtei3Kwlsde
         5Z4YhMKRITcp7vlr/twFVI2SG/+997vQYJMEEJPUZ2f53zsnOrEZXrvFK5/lmVdAQdKJ
         Af2wsjK+OtejTd4DriDIdPD/I7Z+QkrY5fgZXwAIWBJLXUKtRYCYKuPTEdcYNoCdnNvd
         7fRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WzxW/gN0vttR3rbbdqQADVlLFot6Oo2UkrP5IIUvOiU=;
        b=YS9GRDOC4y3zVN6anNbX23UMgm/YgG/DBmsw2PVvx5yRTN4ay8I47Gcg8LrkdbjAr/
         4w3eHvaIo4XrqFO3fzRJC7BV6zwiQzl8nXzx76zPMgm2sX1ARbys5q7vV9v7+ldrwVJn
         fmK7e6oaGj5t72TTVehDHJtGzPTERl8UdtvICumfpJJyOCUYEKAvI9j9KKSMkSunfPbr
         +CJCjb4LsnzEgmbTwmfC/c72a3J2ELzDlOrTdCj1I3/qd5FZL2UBSte6iHpuyc5hUzoK
         cGtdC165fW2z5WLlxyOAx3RTyRPb3mWJXhu8gG+cqmyoElJfaHCXeB3cRg5B/QNUuUK1
         sgOw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5324YI2F1ndlhowYQPWpx/5dinUTwl+myXdNf9aogolvQgWGLdI/
	3JZhZlv1NrYflO/q2ImdY0w=
X-Google-Smtp-Source: ABdhPJxEEaBOFbWr+7JWYZfjprRuxuNT/uHVe+pPdW9Pgcnq9lTt2U+cmVO+uUpE4R0ffe2pqv0MUQ==
X-Received: by 2002:a17:90b:208:: with SMTP id fy8mr11208261pjb.153.1600394700695;
        Thu, 17 Sep 2020 19:05:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:d704:: with SMTP id y4ls1797088pju.3.canary-gmail;
 Thu, 17 Sep 2020 19:05:00 -0700 (PDT)
X-Received: by 2002:a17:90b:796:: with SMTP id l22mr11061994pjz.199.1600394700095;
        Thu, 17 Sep 2020 19:05:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600394700; cv=none;
        d=google.com; s=arc-20160816;
        b=P+rN9CRuMWUeqChH1nL1gzQMa0pT/ACTyUV2LE2frZ4qrhPf8yaB+KGpb78SKikYyf
         ICbZ6NZOMMYJe2uFZ3vh0kP05+PqJbk+pdNDfxdy7J3ftxaPLrYhHQuIthy9J4tJg7FN
         i9j6WKlaXeJy3CNFtB8VZht5cHVUT7XKJJ8645BLWqSa0bKdBEUYRoOeA2KjI1OTDPEr
         pL5MP2XZCAPYstGNq2fEaxB7QRvSZFCQ6z5TeGUaRvPiW9WoZozi4RVXyO8yrhIIXZSP
         S5Od2MzzZnGHJgoJKvllM/4c/WjjDgyhki5JHeNEofZ5obWyhriTNcYIMS+Gdf8Sv54A
         LBzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=LR06A7SaRpt/Fl1tPudcGwU3k4upD/UpBRBDOHLAtbw=;
        b=f3GcjxWr3nHL9QRO3nY9CM/91gEr5AntutFvS5LGEohDCMCKjugODml7iDdU9E9tzm
         EhtHmhi8h+VVKF+Ij98xGx1b7CkyAutx6l09i0MaH3POjshIgKDE5HtzhoM3ucVln1LL
         SODAYBMcqJ4yODMxh7BEkHk83zLQfskFVDVzR3IAgBJRpnKWI/Ce//ruNR2+zn/GA8Ft
         d/gK2MF3BB1HavDUF0FV3gh44vpiON/XRN9DVPOrUxYH7kBHZjk0Rouhrx2xOu/2K4Ks
         Fy0w6vsl8/KHkC8sCAU2vLYjCqbopAB77fNFAvIyZgqtLWfWP+zdUh6E+qWOcRHiyRqn
         cUQg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=GVvtQsJ9;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id g11si83571plp.3.2020.09.17.19.05.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 17 Sep 2020 19:05:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 5080B238EE;
	Fri, 18 Sep 2020 02:04:58 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 5.4 186/330] perf parse-events: Fix 3 use after frees found with clang ASAN
Date: Thu, 17 Sep 2020 21:58:46 -0400
Message-Id: <20200918020110.2063155-186-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200918020110.2063155-1-sashal@kernel.org>
References: <20200918020110.2063155-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=GVvtQsJ9;       spf=pass
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
index a844715a352d8..dfc982baecab4 100644
--- a/tools/perf/util/evsel.c
+++ b/tools/perf/util/evsel.c
@@ -1254,6 +1254,7 @@ void perf_evsel__exit(struct evsel *evsel)
 	perf_thread_map__put(evsel->core.threads);
 	zfree(&evsel->group_name);
 	zfree(&evsel->name);
+	zfree(&evsel->pmu_name);
 	perf_evsel__object.fini(evsel);
 }
 
diff --git a/tools/perf/util/parse-events.c b/tools/perf/util/parse-events.c
index 422ad1888e74f..2a97a5e3aa91e 100644
--- a/tools/perf/util/parse-events.c
+++ b/tools/perf/util/parse-events.c
@@ -1344,7 +1344,7 @@ int parse_events_add_pmu(struct parse_events_state *parse_state,
 		evsel = __add_event(list, &parse_state->idx, &attr, NULL, pmu, NULL,
 				    auto_merge_stats, NULL);
 		if (evsel) {
-			evsel->pmu_name = name;
+			evsel->pmu_name = name ? strdup(name) : NULL;
 			evsel->use_uncore_alias = use_uncore_alias;
 			return 0;
 		} else {
@@ -1385,7 +1385,7 @@ int parse_events_add_pmu(struct parse_events_state *parse_state,
 		evsel->snapshot = info.snapshot;
 		evsel->metric_expr = info.metric_expr;
 		evsel->metric_name = info.metric_name;
-		evsel->pmu_name = name;
+		evsel->pmu_name = name ? strdup(name) : NULL;
 		evsel->use_uncore_alias = use_uncore_alias;
 		evsel->percore = config_term_percore(&evsel->config_terms);
 	}
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200918020110.2063155-186-sashal%40kernel.org.
