Return-Path: <clang-built-linux+bncBDPPFIEASMFBBAU5WTZQKGQEXWVSIKI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23d.google.com (mail-oi1-x23d.google.com [IPv6:2607:f8b0:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 180FE18560E
	for <lists+clang-built-linux@lfdr.de>; Sat, 14 Mar 2020 18:04:04 +0100 (CET)
Received: by mail-oi1-x23d.google.com with SMTP id t12sf7725204oih.4
        for <lists+clang-built-linux@lfdr.de>; Sat, 14 Mar 2020 10:04:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584205442; cv=pass;
        d=google.com; s=arc-20160816;
        b=Q6n9ohj2JhbIW2biqEq6DCPPBj0ytry/f4n99SruHdz/xIZ3b9mfKesB93z1DfSON+
         Kuv57efVbcP34nyNbZmIrgBbZUB3G01JTMvu+H1PnNnOhNwCvkYJ+3fzpLriS39F1vob
         fNbs6rMXPio3K5kFy7yiLLR9pNGoydirDM1LbAy0p+XEApzGIlaVG4V+tTg6AU8jiYnP
         zpCw6r0TxsGN0504SFi+pW6xXgCFC+z8e2jmAMFkq79xUZKYUG8cYOiYp48TQ6Ec2LLW
         VvWO8Eu1Y4yZX883aJpe+dY8X7QlEAbOCAoGVq4oVEtCAW7l9ALmsdTjapWD9pNSgmRt
         mdYA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=F9Vew1pWpRPyiaU5KbymtLXfStKoVUms9t6F6AuUEOY=;
        b=NEi3pn+6rLyXA8q32QMHoRxL8pD+CKkxFw2b976Hc0088yPRDIGSFXEG6bL3VatbQH
         ZjTh4omy/du0iaIiuL/aUQG2Y0G0Kc6EIoBmP+MqBv2i4AlPH0wa8olD5Q45E/97yO2R
         29DXTKOzvl5/tmHKjJLclsXChvhHZQiZUHm28dNn6mUxH9RpesGU9K6UO++Jq427I8BQ
         hBhl1uf3zLSSjEngikbC2UZwoprhP9Z1djOHidEmLxeNJ13MSZ4hACz7/0EALvFPsUdU
         /y6PR/URUu/sjMw2MC2Adaa60WmlZLWMqpBoJ/SGxe1C5m/wCeyYi2iGkduM0ibUCXyR
         7wrw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Iu1VWtIB;
       spf=pass (google.com: domain of 3gq5txgckeuww52us56u22uzs.q20qzo1u-p8wz7-zw18bu22uzsu52836.q20@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3gQ5tXgcKEUww52us56u22uzs.q20qzo1u-p8wz7-zw18Bu22uzsu52836.q20@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=F9Vew1pWpRPyiaU5KbymtLXfStKoVUms9t6F6AuUEOY=;
        b=CXqeSQNovN7cB47L5Y2cUq0Z/PtuE1+0Tj92nF63whbXPLccQiNSXOzMnXzC05w/Zw
         fWQlVHhC03u2R4GeAILx9AUxvkEjqXpG98FyqEdpym/qaRtG30/m1xeDXGgONUvzIhFO
         ZQ1y2E1MMUblO9Cg7FmAIulWizBAbI1noNGafrQzbkOXsdh6GhyKZ/Yal0B2eOGZz3fR
         Zyz0uEt/17tjlHKKrRsLPVqX5FUTssI/S/H/cLBc19hpX4LL5L+omqmFADZhSMy64bfe
         uY2ORQzdAAdZ7QNUQEmuX9e4m3rJZRjrqSeufGXmkjKefvgPW8Ec5R4LPM61kRKxAyR6
         IBGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=F9Vew1pWpRPyiaU5KbymtLXfStKoVUms9t6F6AuUEOY=;
        b=bWJycYaFJuX9Ubh8JSVG8XvoJUv5n8XnDR2XsKgFq5KnnayLZriZpgbGMTriDYuAkN
         a6D0P0p+e4GQjxWLvx/4t3yvsI4P1N1FFdmsMJZSqh6LxjgoL1BOJeayBR5x3db47LUB
         T7GW5lNx8XT0zzElqlxufYsJloSFwTD47DIi7o2deyZnassTsTpvprK8DQq2pG+9iC5z
         39eaXgx3LUdCdCUpiMGsXqstPl6DrW32iANMuh2fuWzamgUjErnApD89rmTZZIpDa6M9
         MrK947d3K4oFn7RJ4GcZGdtW4wcPZpMTrW1FJsBpz0LGk4wLNfM438OonGb2+MPfp+rp
         CIOQ==
X-Gm-Message-State: ANhLgQ3r0RDwcAjdQX0rAc8wopU10NcOwihSxPj21Grc6OcOwdribX+w
	utrO1fQkfJdYApLb+NBpg4M=
X-Google-Smtp-Source: ADFU+vsJbkGl1xdA4+Rp2i7nXH8pXJJ9WHUjniXW/9OfdzSfS0Qm/6NGUsyNZ/t3qLbO65+BUPtixw==
X-Received: by 2002:a9d:2f44:: with SMTP id h62mr15496567otb.189.1584205442582;
        Sat, 14 Mar 2020 10:04:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:30c4:: with SMTP id r4ls3555068otg.9.gmail; Sat, 14 Mar
 2020 10:04:02 -0700 (PDT)
X-Received: by 2002:a05:6830:1e06:: with SMTP id s6mr5172787otr.28.1584205442272;
        Sat, 14 Mar 2020 10:04:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584205442; cv=none;
        d=google.com; s=arc-20160816;
        b=tmcgHlu8qb7MpdP0UJaP0IzPv9Fl8ZQrHVVF1x8lz4tDz3TSOTySqfnprb6+OcbcrR
         D0seKqJ5HlmtqOCHME0p61uCd2SwypLzjBr1AMnBfKd0xHb9BO62rLogufh3d+5uxBt5
         9HXu4JcPrNwoF4RBf/xKSqn9nHYJfcQFHKuj/yAGWnnxjDfW8G58KIsAjOygK3oIsv6g
         haxluRfxDonLJ+iASJnyl/PDAMYrfP5nIQb+FEfTvDFKLlZDJ1GImW5ReAR48LHI7bER
         2Npnc5n6TXBVwshIDckRKtYrYpEqTGlJu2625twD0GFE69GNJbD6ReVCsP4ZbvzJH6zg
         ELXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=1ZdVkhi4YwlaXiH7itajZKX5fyP/5VMYm/74NCalIIY=;
        b=zlbjWp3QixeblNGUcGEuWTF4c3uCi1j3spGI1zu6ujJ8szoMrg5iIDaoPnP1C9o7xu
         GaL4cPAtH4lOb1tfp3SEiAVIBJWh+4KQiybSOiwfOFwKMDUcE03Uggn1di/ggR6DDtEg
         XEYuGc4iYDNVwoHfu+ts1rUqo4vpoFmprg2VReY5U5Sv9HjhW0VqqR+npyoYHcyx4p1u
         XBmP13n4SdPph0v1tVrCx/ze55OzKG5KDCUJWs+pv8nREdq/LOYuw9Qhu0hiv0hyfYpc
         ZjBoEPRijoGuQPy9etWApKLv2/BUEQPi10uhyHww71WeoretWVp1SaIJKLBPo9Dj/MlQ
         zijQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Iu1VWtIB;
       spf=pass (google.com: domain of 3gq5txgckeuww52us56u22uzs.q20qzo1u-p8wz7-zw18bu22uzsu52836.q20@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3gQ5tXgcKEUww52us56u22uzs.q20qzo1u-p8wz7-zw18Bu22uzsu52836.q20@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x549.google.com (mail-pg1-x549.google.com. [2607:f8b0:4864:20::549])
        by gmr-mx.google.com with ESMTPS id v19si824092oth.1.2020.03.14.10.04.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 14 Mar 2020 10:04:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3gq5txgckeuww52us56u22uzs.q20qzo1u-p8wz7-zw18bu22uzsu52836.q20@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) client-ip=2607:f8b0:4864:20::549;
Received: by mail-pg1-x549.google.com with SMTP id f14so8346708pgj.15
        for <clang-built-linux@googlegroups.com>; Sat, 14 Mar 2020 10:04:02 -0700 (PDT)
X-Received: by 2002:a63:ec44:: with SMTP id r4mr18267799pgj.425.1584205441277;
 Sat, 14 Mar 2020 10:04:01 -0700 (PDT)
Date: Sat, 14 Mar 2020 10:03:56 -0700
Message-Id: <20200314170356.62914-1-irogers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.25.1.481.gfbce0eb801-goog
Subject: [PATCH v2] perf parse-events: fix 3 use after frees
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
 header.i=@google.com header.s=20161025 header.b=Iu1VWtIB;       spf=pass
 (google.com: domain of 3gq5txgckeuww52us56u22uzs.q20qzo1u-p8wz7-zw18bu22uzsu52836.q20@flex--irogers.bounces.google.com
 designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3gQ5tXgcKEUww52us56u22uzs.q20qzo1u-p8wz7-zw18Bu22uzsu52836.q20@flex--irogers.bounces.google.com;
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

Reproducible with a clang asan build and then running perf test in
particular 'Parse event definition strings'.

v2 frees the evsel->pmu_name avoiding a memory leak.

Signed-off-by: Ian Rogers <irogers@google.com>
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
index a14995835d85..593b6b03785d 100644
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
2.25.1.481.gfbce0eb801-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200314170356.62914-1-irogers%40google.com.
