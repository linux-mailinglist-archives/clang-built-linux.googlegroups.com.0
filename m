Return-Path: <clang-built-linux+bncBDPPFIEASMFBBLH2XPZQKGQEMM4TKWA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83c.google.com (mail-qt1-x83c.google.com [IPv6:2607:f8b0:4864:20::83c])
	by mail.lfdr.de (Postfix) with ESMTPS id 280A7186411
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Mar 2020 05:14:38 +0100 (CET)
Received: by mail-qt1-x83c.google.com with SMTP id e21sf15886364qts.14
        for <lists+clang-built-linux@lfdr.de>; Sun, 15 Mar 2020 21:14:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584332077; cv=pass;
        d=google.com; s=arc-20160816;
        b=T0h8Ksp/pc0zqFKBGiKyoDesqIXElyynmb1Qz0+CdL3g10jmm03VVjOETHcoGZeo8Z
         6PFOiakwR1XfpnoTlfBp/QoYKJjn8bmwTrOu2cql5IjNg9tmoZ8jO9UmWYe6a6qfRL/k
         iPDbJd8wkDI26O05RhqURHhD3Dpj1VWCmO6ytseLIVn0HbWZZG0AuFLq65BYZ5BVO2Rv
         A+vCVYrVti88GcThimYKHj8JtEmuVoery+Zru6ur+AJ1UteKr2UtlA7T0KOrXLEQ5fXD
         qBOX+YFkQ2Q97XXjTg4T8IZMH0lk+/WvYP80g0gkgIdkeWKUz/OEJIcf9GqeF5189cIA
         lsuA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=feUV7t9vHT/9dQRO57Z9X6YvPHwZ0KteS6x14m1/F04=;
        b=THhDWVPnS+HYCCewQcIHGyc9DhmUbayrPv7+ja4uXP3PuIfOYz6f6tFICfKl22tOvw
         PmJSgrjHJz9ipYJyoyz6LAI0zbvXFSsq1OW4xoWZZbpfvG8m/elX8XTtqblEiIMmhd2U
         OlQ1j6zb3FMH9VDP4uXX1bYkrWP0at0uTPjFlsNnmF+fbgieDGtKAbN9N9cRRCPFjSfk
         tHW0OhVzEqlhZMJQ2aD+1Gk4xcSQYCOSGq9n9Cvu8vYqgkp0TtMlyjhzrgXFkfN/7H0p
         tN1HgbhhA3p6sYTXZv+R4E7pynB+4pJSIwyKZ7JSqKbHm2YMKOq1HYGOa0jXKKV1hlMQ
         zl1Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=mDSPa+99;
       spf=pass (google.com: domain of 3k_1uxgckedoenkcanockkcha.8ki8h6jc-7qehp-hejqtckkchacnkqlo.8ki@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::104a as permitted sender) smtp.mailfrom=3K_1uXgcKEdoENKCANOCKKCHA.8KI8H6JC-7QEHP-HEJQTCKKCHACNKQLO.8KI@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=feUV7t9vHT/9dQRO57Z9X6YvPHwZ0KteS6x14m1/F04=;
        b=hREWAyCjF/CkxbiQ70s76+LH7PPR7R9tpmltU9BRVJqawYNaPRBzUWCYXmPC87MP0w
         /PGiM0/OgZXquuOlctIbcm7anuOLPv/DAWmz5Qlw1ulSrUzd+ZXgKxbbChp+RcZsiCjh
         j7S4aiyLkAiAh9o8Jdw4Q0zn6eVAbVVlNl9uoZ8VXjjVkmf9nTiOAR34W2cuJLd8ZgWv
         otwWULzQsxJ/MJGmUD/ek6qm3OmQdR84eCj0MWi/m7iSa29ecmCa8SSaaw40OWuo8mrN
         3Wi6iJ0lcsLjlqmYnmJXXEQcx1x29MfXK2J+ABeCxjFNLZjKyF2Bk55eG1V0auigaNlV
         TRTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=feUV7t9vHT/9dQRO57Z9X6YvPHwZ0KteS6x14m1/F04=;
        b=AMBacc2OkqHaRM4ULzr8NvpzUrLyj+8sxM3AtQ9oAKdIJZxGzmuYgEyT0jNM5ZcrUz
         v0tBU8EYwr3hPSE6qiOaptccFzo1u7tI+ZYDufG2KfL+7qU5i4XxNbzAH9omGKcpK12D
         mIoHhLU4N45qKfz6NUBtJFf+6fKbwca0/XWj8NTYJ4fkM2G78vUJPdtVW1F0Lf3T+309
         5oghex2IEvOdql9GRJcMGmKbiq0ePmbF/Da3/Z/HaiXLqMTLaYvo65b3ULQ6oSeMNTRi
         Zq5IBs9hF6zW732OstcgVY0tymayTgFqRGh8eBsouRUvaFUHJkpvOA3sFcw09e97JivQ
         dhPg==
X-Gm-Message-State: ANhLgQ1gvCO+fTwQ9cQwF9Dz6urEDWotxrBY6EAHiFnZTYXMICBpbkrW
	vQLOWBMwcxmvf5MeNcw80tA=
X-Google-Smtp-Source: ADFU+vvqtNRdxbgaAc9enyEOOG+ns2JaHcT19eJLYHGmB4+b/+8d9ms6Vn0ETTgTEst8wwaDbk3HLw==
X-Received: by 2002:a0c:e912:: with SMTP id a18mr23507522qvo.101.1584332077050;
        Sun, 15 Mar 2020 21:14:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:5b41:: with SMTP id p62ls8323557qkb.9.gmail; Sun, 15 Mar
 2020 21:14:36 -0700 (PDT)
X-Received: by 2002:a37:f511:: with SMTP id l17mr24445045qkk.479.1584332076543;
        Sun, 15 Mar 2020 21:14:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584332076; cv=none;
        d=google.com; s=arc-20160816;
        b=zEscHhM5d3CbwGL5FHS8ef4Irji8iJckdWIGSyHyfYxqoDO+xAiA4JBb99rs3Lhwwt
         VjpG4RRIMOrFpbZZE8MqzP9WHYfwX5CTeJE8ZFdeS5HIcpksN57Izl9COZZuLMQTUKpU
         VveHiz9VJ8MdF7kcaaj9N8ceWViZTU/rbdlJ90GnmwT5SI//zUMdDhuWklj3vrMuCrxc
         JwysDcnXYln1iyp8NRQ3GUvqyGkhmI9lEt/SLIZIrnY7pPV4ZbSTEDBVo0ybNo4VjKKA
         5OahSJvAOU9phh6+OtNWgcelrkSkdOlHJfoxFFZB08oNDvgRyNRVGEsNeobgyuWjbbI2
         9djA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=8nA2hScnF6v2G0I1bnw6Oj3DivH5BnpkZl+mne8j+kA=;
        b=yeQu66otrOAAqa3sPFTZ2tC4BmtPggOUGMr39J+kCqN/pR3bUnvpMXRKuPqAxHPmnW
         z4GuAitS/MAaOuX37pX1EHXuT4vcAHdwjNROYBuqAoBRa4EEu6mldwwv/A2LzlZGEpEX
         hCS6a9haJ3MBmI6iWVc1SWQaAsYi2MUPShR1s3NV/RQ9qiZ4O58ap/Vgj/y4RMesLtJy
         Ckmyl7V8HuMoII/MUuKCKa0f1US6+qHgyQLl+mGyDtsA6YA+HMrXVG7NhWGAdD+xqxUW
         A37JlhSvA8598OMVXGXk7ROhLpNiev8/pRPmOZNKI3utzRU1t+fy8XbnHvux6Qa7v3SX
         /yUA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=mDSPa+99;
       spf=pass (google.com: domain of 3k_1uxgckedoenkcanockkcha.8ki8h6jc-7qehp-hejqtckkchacnkqlo.8ki@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::104a as permitted sender) smtp.mailfrom=3K_1uXgcKEdoENKCANOCKKCHA.8KI8H6JC-7QEHP-HEJQTCKKCHACNKQLO.8KI@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x104a.google.com (mail-pj1-x104a.google.com. [2607:f8b0:4864:20::104a])
        by gmr-mx.google.com with ESMTPS id 42si969453qtf.2.2020.03.15.21.14.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 15 Mar 2020 21:14:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3k_1uxgckedoenkcanockkcha.8ki8h6jc-7qehp-hejqtckkchacnkqlo.8ki@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::104a as permitted sender) client-ip=2607:f8b0:4864:20::104a;
Received: by mail-pj1-x104a.google.com with SMTP id p14so826461pjo.4
        for <clang-built-linux@googlegroups.com>; Sun, 15 Mar 2020 21:14:36 -0700 (PDT)
X-Received: by 2002:a17:90a:7309:: with SMTP id m9mr22987108pjk.52.1584332075593;
 Sun, 15 Mar 2020 21:14:35 -0700 (PDT)
Date: Sun, 15 Mar 2020 21:14:31 -0700
Message-Id: <20200316041431.19607-1-irogers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.25.1.481.gfbce0eb801-goog
Subject: [PATCH] perf parse-events: fix memory leaks found on parse_events
From: "'Ian Rogers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, Jiri Olsa <jolsa@redhat.com>, 
	Namhyung Kim <namhyung@kernel.org>, Andi Kleen <ak@linux.intel.com>, 
	Adrian Hunter <adrian.hunter@intel.com>, Leo Yan <leo.yan@linaro.org>, 
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Cc: Stephane Eranian <eranian@google.com>, Ian Rogers <irogers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: irogers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=mDSPa+99;       spf=pass
 (google.com: domain of 3k_1uxgckedoenkcanockkcha.8ki8h6jc-7qehp-hejqtckkchacnkqlo.8ki@flex--irogers.bounces.google.com
 designates 2607:f8b0:4864:20::104a as permitted sender) smtp.mailfrom=3K_1uXgcKEdoENKCANOCKKCHA.8KI8H6JC-7QEHP-HEJQTCKKCHACNKQLO.8KI@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Ian Rogers <irogers@google.com>
Reply-To: Ian Rogers <irogers@google.com>
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

Memory leaks found by applying LLVM's libfuzzer on the parse_events
function.

Signed-off-by: Ian Rogers <irogers@google.com>
---
 tools/lib/perf/evlist.c        | 2 ++
 tools/perf/util/parse-events.c | 2 ++
 tools/perf/util/parse-events.y | 3 ++-
 3 files changed, 6 insertions(+), 1 deletion(-)

diff --git a/tools/lib/perf/evlist.c b/tools/lib/perf/evlist.c
index 5b9f2ca50591..6485d1438f75 100644
--- a/tools/lib/perf/evlist.c
+++ b/tools/lib/perf/evlist.c
@@ -125,8 +125,10 @@ static void perf_evlist__purge(struct perf_evlist *evlist)
 void perf_evlist__exit(struct perf_evlist *evlist)
 {
 	perf_cpu_map__put(evlist->cpus);
+	perf_cpu_map__put(evlist->all_cpus);
 	perf_thread_map__put(evlist->threads);
 	evlist->cpus = NULL;
+	evlist->all_cpus = NULL;
 	evlist->threads = NULL;
 	fdarray__exit(&evlist->pollfd);
 }
diff --git a/tools/perf/util/parse-events.c b/tools/perf/util/parse-events.c
index a14995835d85..997862224292 100644
--- a/tools/perf/util/parse-events.c
+++ b/tools/perf/util/parse-events.c
@@ -1482,6 +1482,8 @@ int parse_events_add_pmu(struct parse_events_state *parse_state,
 
 		list_for_each_entry_safe(pos, tmp, &config_terms, list) {
 			list_del_init(&pos->list);
+			if (pos->free_str)
+				free(pos->val.str);
 			free(pos);
 		}
 		return -EINVAL;
diff --git a/tools/perf/util/parse-events.y b/tools/perf/util/parse-events.y
index 94f8bcd83582..8212cc771667 100644
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
@@ -326,6 +326,7 @@ PE_NAME opt_pmu_config
 	}
 	parse_events_terms__delete($2);
 	parse_events_terms__delete(orig_terms);
+	free(pattern);
 	free($1);
 	$$ = list;
 #undef CLEANUP_YYABORT
-- 
2.25.1.481.gfbce0eb801-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200316041431.19607-1-irogers%40google.com.
