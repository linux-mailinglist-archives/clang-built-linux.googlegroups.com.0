Return-Path: <clang-built-linux+bncBDJKZSEQ3YKRBZ4QUH2AKGQEOHCBMCQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-f61.google.com (mail-ed1-f61.google.com [209.85.208.61])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F07B19E387
	for <lists+clang-built-linux@lfdr.de>; Sat,  4 Apr 2020 10:42:15 +0200 (CEST)
Received: by mail-ed1-f61.google.com with SMTP id b100sf7464882edf.15
        for <lists+clang-built-linux@lfdr.de>; Sat, 04 Apr 2020 01:42:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585989735; cv=pass;
        d=google.com; s=arc-20160816;
        b=RSHf/AmFouYgtDbHjofcPfK7BJ4SPdzkmiHw3OnmG9EWGPnhYNDyED6JR+e5+S+mlJ
         c74TBC6o2O5E7zARrvoupCg0QVNSPMgpEX10zCAf1sKP9gOKUcqgzsPsxQ1E1Hi1/UXN
         1cwNmOWbhUi731fWxvXy2JOWiL3G1JrCj0hyCPjzZlJHZl7hcUVSQ9TP0pEJmYhqskan
         ME98NrWiS6qVAAOYx0hOBz8aGSGmtXgLILCzUl6cfXLASeyiAzBL6TLrAePuriufO/JR
         rmD+mEZZ0dalzNBOZWus7o/0kUpDUZgmOqYlI26RKhQFH13uCf4KXF/yIANBAFaVfVPd
         Az6g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:robot-unsubscribe:robot-id
         :message-id:mime-version:references:in-reply-to:cc:subject:to
         :reply-to:sender:from:date;
        bh=kSO+xlCqJaYhVPDTSzoMXBbwggwo+Ifh2jC6Pog77TM=;
        b=0Mi11y+F18UvR1daS3dMUWqZ5o6wBtEZiDg/fjXwgWEeenZI3xsVL9pwv3x9IuKNxe
         Dmr6eMjN99BoXMmMQxlnQDSxXcVm3VcMSDFcsVEXTrRxN+TVd+hy7/2lpIgnfhDYCtrq
         5r59lhnnEvcp1U0JsMikoGSU6Dhk6T2+DW73BSEt1pdCGPpvZH2Unth2l2Pn6mSyQISr
         twV6Q9iYAEC12T3lzyMbLwf/5rWG1Bg+Mk/+57FPooBcq46ox9gudnk1x54YfKiRRGuw
         8awFk/DYlMuSaT8WmAPsojOYsTVeKLDB2q9LP4k9Hu5qOFXI5LwcjAoSCtxGjbFKr/Ho
         uhfA==
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
        bh=kSO+xlCqJaYhVPDTSzoMXBbwggwo+Ifh2jC6Pog77TM=;
        b=f6W5ChZKNxGd0z0Bw6hgUr/V8Zr/Xq6zvzleZMI9x6stlPVzMkbS3DZK+gPBNxssPa
         sH0YFW+9Ksr1/5WjiD30ZWfQJ+ZK90hyXCZtbIzDRNiylfSo7K/SgKfUJqV7VBjI4/xz
         wNxLKjlnBaW0Nn/ZwMpfNaUc8mMWfZOHBJ9L1LQtrny+Z23/jZLlcBWYKwqs60GJ39l2
         Y2xAeLyR09SBoKhXa0getSpWO5Z+KyKzjkzQdd2pE3OKrIopVGu9phtuWi5VQLQYEYfW
         /3fsu+jON1paOSY6W9TjKfjekjBdrPGQ4tBW7WlvDEr5Jd983hjuxgw+HR+jMIi8qkox
         TpcA==
X-Gm-Message-State: AGi0PubWUBAQakcREULwhu1BbWKwJqqjMpIit4mBF5vt2mJ6CTs/imPu
	FsDabNtcriMVIY9+/V0xA0Y=
X-Google-Smtp-Source: APiQypK4aPNKfPDSwKBvQfW5U/1A7wjhem4z5KEwVLiGGNfyQdVvApZIK3F1oNbpgskORRyOzwpy0Q==
X-Received: by 2002:a05:6402:319b:: with SMTP id di27mr10551080edb.205.1585989735149;
        Sat, 04 Apr 2020 01:42:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:b288:: with SMTP id q8ls23542ejz.8.gmail; Sat, 04
 Apr 2020 01:42:14 -0700 (PDT)
X-Received: by 2002:a17:906:6b10:: with SMTP id q16mr12460543ejr.170.1585989734627;
        Sat, 04 Apr 2020 01:42:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585989734; cv=none;
        d=google.com; s=arc-20160816;
        b=U/4V/dpu9RJgDl26r1JQLr4ILH+C9mzpFNzK1DnrcK2vFMdWeWhwFtq4fc9QPuPltL
         cybtXYJIgcOFrmIDWTHoAT0Oio2ZTA+Kdzpnglry1NWDSyGVvnOMQvOvczNuyVj71w/x
         6b6BlP6TM+avpbrYmN82gfjJFRxInwP14vG9u7gjcKxmUvPquSbRQWVYrN8tW92xBasR
         tTK08zNrY2BwWqbYF9AwJcAFIJsM+wOQJjQYQHrZ4BXgO6/xrJJCEdFU0xjDvSMHHkjJ
         Nl8fAYD7ts9MGpRGC3NdahQR6Hs50MMFvYEbspJhEuRh8XTCviGo+Uh29HIuERiNvoZK
         hvYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:precedence:robot-unsubscribe:robot-id
         :message-id:mime-version:references:in-reply-to:cc:subject:to
         :reply-to:sender:from:date;
        bh=rdnF4FJw7fYlcXPq0OAFq5J1M6mx5ND+1w3IeLDvdFI=;
        b=xY4yOlRwXY0FBYkR9z+ECoZZsZwS4MwNowgsNK71j1IxDgA/hb9Q0A3aw5PhmFW63i
         9o2+IwPKbNDL6pH03B1AXez3fnzLMwnBylVU1+VClXhJZHoC/MfV3zUGtUglVSH7R+Mz
         t/GqANy0mE29QWjtEWSY5PwkexlyGtVS9fI+PjO5lXgsgS1gNlm3Q66yfHITZx2B2skf
         vuQ5aq46fbsHg/LjKjklu6R3bVL/axzCkR9yORazgPyxmuN3c7G9sOfeng0MnOEpvksB
         EJRHOCVUB/6BOGWiHWAO5Q/JC03UJsdBCdV6aj/9ywvxRZjBICk5FYRfNBspMOhXonua
         XW7Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tip-bot2@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tip-bot2@linutronix.de
Received: from Galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id w13si568523edv.2.2020.04.04.01.42.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Sat, 04 Apr 2020 01:42:14 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of tip-bot2@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
Received: from [5.158.153.53] (helo=tip-bot2.lab.linutronix.de)
	by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
	(Exim 4.80)
	(envelope-from <tip-bot2@linutronix.de>)
	id 1jKeNZ-0001NB-2S; Sat, 04 Apr 2020 10:42:13 +0200
Received: from [127.0.1.1] (localhost [IPv6:::1])
	by tip-bot2.lab.linutronix.de (Postfix) with ESMTP id 833781C0821;
	Sat,  4 Apr 2020 10:42:05 +0200 (CEST)
Date: Sat, 04 Apr 2020 08:42:05 -0000
From: "tip-bot2 for Ian Rogers" <tip-bot2@linutronix.de>
Sender: tip-bot2@linutronix.de
Reply-to: linux-kernel@vger.kernel.org
To: linux-tip-commits@vger.kernel.org
Subject: [tip: perf/urgent] perf parse-events: Fix 3 use after frees found
 with clang ASAN
Cc: Ian Rogers <irogers@google.com>, Jiri Olsa <jolsa@redhat.com>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Andi Kleen <ak@linux.intel.com>, Leo Yan <leo.yan@linaro.org>,
 Mark Rutland <mark.rutland@arm.com>, Namhyung Kim <namhyung@kernel.org>,
 Peter Zijlstra <peterz@infradead.org>, Stephane Eranian <eranian@google.com>,
 clang-built-linux@googlegroups.com,
 Arnaldo Carvalho de Melo <acme@redhat.com>, x86 <x86@kernel.org>,
 LKML <linux-kernel@vger.kernel.org>
In-Reply-To: <20200314170356.62914-1-irogers@google.com>
References: <20200314170356.62914-1-irogers@google.com>
MIME-Version: 1.0
Message-ID: <158598972511.28353.7459181864895625736.tip-bot2@tip-bot2>
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

The following commit has been merged into the perf/urgent branch of tip:

Commit-ID:     d4953f7ef1a2e87ef732823af35361404d13fea8
Gitweb:        https://git.kernel.org/tip/d4953f7ef1a2e87ef732823af35361404d13fea8
Author:        Ian Rogers <irogers@google.com>
AuthorDate:    Sat, 14 Mar 2020 10:03:56 -07:00
Committer:     Arnaldo Carvalho de Melo <acme@redhat.com>
CommitterDate: Mon, 23 Mar 2020 11:08:29 -03:00

perf parse-events: Fix 3 use after frees found with clang ASAN

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
index 816d930..15ccd19 100644
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
index a7dc0b0..1010774 100644
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
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/158598972511.28353.7459181864895625736.tip-bot2%40tip-bot2.
