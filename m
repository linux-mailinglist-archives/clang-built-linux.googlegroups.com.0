Return-Path: <clang-built-linux+bncBDZ7JWMQ2EGBBBFD5XZQKGQEPRK2MUY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13b.google.com (mail-il1-x13b.google.com [IPv6:2607:f8b0:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E28C19289D
	for <lists+clang-built-linux@lfdr.de>; Wed, 25 Mar 2020 13:41:42 +0100 (CET)
Received: by mail-il1-x13b.google.com with SMTP id z89sf1876598ilk.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Mar 2020 05:41:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585140101; cv=pass;
        d=google.com; s=arc-20160816;
        b=d1yGFT7uYbUI5GB+Ys2ILl2zhc+Hv46FPEKxzY3q6CIoFPORT7N8Y1SB3ahGjCLT65
         sVSLrVxtz+FBzKSzRCaKu8iJk8ZboODih7yu2pgjiVDSn4oBMk6/weAB9XflKmCcCIUy
         DlRdiiy5WzwMU5bhheOnFjuvJhHjqAjGYL84hP3KHLhlhKzBZhkh9MqS9gHD14QmRpi6
         iu1wlE7Vbrhq1j750XDuxKVcXCrsBW0GkpwchM05eYcplU8mUrslQhba3GDTfb3uvUQ6
         I+oxWxpLHh2IjQy1lqSveerfA8CtTfpLiLeBHhTXZR36bSOToOLkJHODR4/YizwkXtK9
         T+9Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=VaM9TrCshbexvFxB9CQln0SG9+LHkzb+gEcljuStI4Q=;
        b=V9AwTr9sh+/QIZzTVmPYDmdCoUUkyAMydQYN3wq9jyBZdvOiVBht86O2DqI1O+ur9l
         /Jol+gzK9lJ2RUIkX9RksonBt/Vyv5/O08zaUPJcKFgazzLZyZ4eg5VX6bgyfrAMEx28
         Cy9JXKJRJEb2SCDolp49cV6fb+ZWpdb+ov02YldSpoEmF1NwRC2kK5ULkGJUfgnf9fRG
         D5SY/plgBH+YLG5ZT/4iL9lH8TKqrzFpSbnDzrgDyJH6+8QEc1BE3XCerMluza8e7S2G
         gBiQhRz2ti0/rQdBaca/BL76W8GzjcbB4njFgCzaKknFTUqbEPEvz01sNBYv3bOy9jBF
         timQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=c1W8LIhS;
       spf=pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=acme@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VaM9TrCshbexvFxB9CQln0SG9+LHkzb+gEcljuStI4Q=;
        b=StL17oTBTJ0uAU0yUt4VmOhZv+OBb5GzT/yu+NC/jjyIqX5PP9wPo5BE1pyxj6dAk3
         pQ71iAInmDvAQEeQpCDOCBZ3H/5kJhv4Od4qeMG6YrC7RkTLGeKkH2L2UQkHFLoWcI8L
         pNQP70pMFIphU0gfDTaBC1ev/XD3emeacqEHQDb6/cLVkQwU+RowCEG+ZqE6LCYAKak1
         FCUilOHJvCcvD0RU/pJn+99nsf6atqJU3hTUNYnndBCQ7J7GrtqX6pHemy1R1SkkRIru
         P24gFd63k9dp5OiN0AvbHDIQqPo6oi1+PwtBP8Kmp4SkWT31icv7T6LqLiEEHw0KLGnT
         JrbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VaM9TrCshbexvFxB9CQln0SG9+LHkzb+gEcljuStI4Q=;
        b=lvMPS3VFWMuXR2ELE5MeyzvrRk0f8/YpMf+XZlXHFGrgs+HDg+3MxiqVglyZHUFmxk
         /UYzmw3mRAByKBKjS4eXDhKKW7KXK3pa9O2AM4ZJXyL5rB4z3HJHBw2kjef/opotYrSW
         5rB+MHVHOuaISQabDUmiQw0AKfi7dVO23M0i9IhD4KLgYkENziBurzHAoj+N9M87F71/
         XAK8wBePgcjhx1yeT151vEOujbm8fd0AJYcEUc5XrU+b6++ssUnvgglEk2gG5CmSlMFg
         gDZmrsoUUz5+RiZG3i02jx0bAToM2hVoygJ2/A3DIXPuSfEVNLOne8dOWstMBDpPu6++
         /yng==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0YB/S/6XYdm2sHkWpw2In618ca63fBhJVVk2ZjzQpbCaS3hhBQ
	nd4yVytkOPyLK9ow51RP5gI=
X-Google-Smtp-Source: ADFU+vtICp0RezXV/RpWEAJlkY7tlNF27TdmyeYrpRzNHWUXrjnY7xN9c0of5T9zBRUX++Uuq3DeQQ==
X-Received: by 2002:a02:a99e:: with SMTP id q30mr2778709jam.53.1585140100905;
        Wed, 25 Mar 2020 05:41:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:194:: with SMTP id 142ls516275ilb.4.gmail; Wed, 25 Mar
 2020 05:41:40 -0700 (PDT)
X-Received: by 2002:a92:b74d:: with SMTP id c13mr3306344ilm.105.1585140100366;
        Wed, 25 Mar 2020 05:41:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585140100; cv=none;
        d=google.com; s=arc-20160816;
        b=e9BKLPyrzRgB0gTxmNoWsdtqDgdNEcEK1P5NGwv4xcuXzmFgR8/L3bzImTOaj2TOxj
         fhodXXjssYfgPGq2FyqV+2sSa7j8+LqjB9S0MQI9clQOvrONxka76v9Fb/kBaUYrns2/
         hhMyiL/uv1R2CxAnyGTtvtSiJbFux5MS3VNHV+ABxKTar1k+HLidZgcsSRU5eVtFFbW1
         oGMAxawi75gKGX87D+7FDbxfXrTPx/gY/7+L+0ahHeZJYnteG+i0Mn0bglnAGswheJuC
         JAu97Jjzd3RK7XFDEENPyuSH2fDJ/YJSSWoIx/FLR6rn7kKeCt9zycc9DXodmxkUShxR
         JN7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=3gyN4lCGQeDJGIKjIN0Nhe03+habaFaXnXQM+/3LNug=;
        b=XAcE7vvxr7txUzECgeinycOk8hHJhA1FbtmdPNsUBLWxHt0IWHD9bB0WmxdyqN1/tq
         bkE1r6m09uYqgPM8i2AUPvlJaFAcCfkL9xo8yVKAnyFKBg9pQylFdWJvFJArU6dCgH0v
         +Apl6XDDQO1iHBWIjOYk7NUEBq9PwIjET3e/kNR6eW3jZDuYlvgGZ5QAPjXpDGwUTNCk
         pEnbcMRCS8gnOWzgtoD19AsHFgIeKu14eNYaiIwHIhOzJmmiVsWwWlDJCecbD6PirJ4L
         blBJFW0BwzLaYMMAzUsiwXrQX6vwU9HVPpVmGtsSSaf/sJYte0mBbv6pYs6/feMwKMyD
         zGCw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=c1W8LIhS;
       spf=pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=acme@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id u6si1647810ili.3.2020.03.25.05.41.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Mar 2020 05:41:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from quaco.ghostprotocols.net (unknown [179.97.37.151])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id A213F2078D;
	Wed, 25 Mar 2020 12:41:35 +0000 (UTC)
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
Subject: [PATCH 01/24] perf parse-events: Fix 3 use after frees found with clang ASAN
Date: Wed, 25 Mar 2020 09:41:01 -0300
Message-Id: <20200325124124.32648-2-acme@kernel.org>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200325124124.32648-1-acme@kernel.org>
References: <20200325124124.32648-1-acme@kernel.org>
MIME-Version: 1.0
X-Original-Sender: acme@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=c1W8LIhS;       spf=pass
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
---
 tools/perf/util/evsel.c        | 1 +
 tools/perf/util/parse-events.c | 6 +++---
 2 files changed, 4 insertions(+), 3 deletions(-)

diff --git a/tools/perf/util/evsel.c b/tools/perf/util/evsel.c
index 816d930d774e..15ccd193483f 100644
--- a/tools/perf/util/evsel.c
+++ b/tools/perf/util/evsel.c
@@ -1287,6 +1287,7 @@ void perf_evsel__exit(struct evsel *evsel)
 	perf_thread_map__put(evsel->core.threads);
 	zfree(&evsel->group_name);
 	zfree(&evsel->name);
+	zfree(&evsel->pmu_name);
 	perf_evsel__object.fini(evsel);
 }
 
diff --git a/tools/perf/util/parse-events.c b/tools/perf/util/parse-events.c
index a7dc0b096974..10107747b361 100644
--- a/tools/perf/util/parse-events.c
+++ b/tools/perf/util/parse-events.c
@@ -1449,7 +1449,7 @@ int parse_events_add_pmu(struct parse_events_state *parse_state,
 		evsel = __add_event(list, &parse_state->idx, &attr, NULL, pmu, NULL,
 				    auto_merge_stats, NULL);
 		if (evsel) {
-			evsel->pmu_name = name;
+			evsel->pmu_name = name ? strdup(name) : NULL;
 			evsel->use_uncore_alias = use_uncore_alias;
 			return 0;
 		} else {
@@ -1497,7 +1497,7 @@ int parse_events_add_pmu(struct parse_events_state *parse_state,
 		evsel->snapshot = info.snapshot;
 		evsel->metric_expr = info.metric_expr;
 		evsel->metric_name = info.metric_name;
-		evsel->pmu_name = name;
+		evsel->pmu_name = name ? strdup(name) : NULL;
 		evsel->use_uncore_alias = use_uncore_alias;
 		evsel->percore = config_term_percore(&evsel->config_terms);
 	}
@@ -1547,7 +1547,7 @@ int parse_events_multi_pmu_add(struct parse_events_state *parse_state,
 				if (!parse_events_add_pmu(parse_state, list,
 							  pmu->name, head,
 							  true, true)) {
-					pr_debug("%s -> %s/%s/\n", config,
+					pr_debug("%s -> %s/%s/\n", str,
 						 pmu->name, alias->str);
 					ok++;
 				}
-- 
2.21.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200325124124.32648-2-acme%40kernel.org.
