Return-Path: <clang-built-linux+bncBDPPFIEASMFBBIFA5DWQKGQEGURYC4Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13c.google.com (mail-il1-x13c.google.com [IPv6:2607:f8b0:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id 199EBEA648
	for <lists+clang-built-linux@lfdr.de>; Wed, 30 Oct 2019 23:35:14 +0100 (CET)
Received: by mail-il1-x13c.google.com with SMTP id n84sf3353797ila.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 30 Oct 2019 15:35:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572474913; cv=pass;
        d=google.com; s=arc-20160816;
        b=qr+f7lqvXFLzT2j7FB5I3UWhyMunf3CS+LT7Iuws/iXQV7rRPEhTHE2v85hoIgvITD
         nJb+tUgywBVGZRBWC4cAIM8NJ8pN1J94P978Gr35Y90UGxpZa/4/pPmY9rkhKGzZcWxy
         k2M9d1E00Q5WGPgVFY9qAO5Lm1ez47frA3DmXE75a3+zrG8fwsPubHioB9aUIK+h17Tf
         mA+nxcE6gQeNEuxjx4DUK3qg/1Y32TpKTklAaf4zwkTrQ64qNYLZc0kb3VTw1ETT1Iam
         9qCE1l1NFDU5SSiG90inepgKyDjMK/p2nWV6S7wH5tzVc8DlPGbZpsN50XHjo8mEuHnl
         DpWg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=uZCWgIRW6Nz2pQb5zrxJK2ldEfsi5wW5xrOnCxZTlgk=;
        b=kc/AAd+QvZiAe57leGvNxVTRzjFpAopEHoYWdOsfvm0lc1crc6iV+vHXVxyPd2KMDt
         MmGnU5CDCVos+dRBLnZZYQlXtj8fi0MB+OuVaJcWH59nBubHbq/0EMiuL/scTSXCXkBg
         Mu7nHuClM2XniVgqp1gvE5C1NzNcnZsaEnw+4c7Hkyr11QnlRHRhVizqeWGo9ZXBakcv
         cCNT7GTlWDJ8MqpWKHCyNR2qd7AlCZqkxbPuWFNZSJxEkipEQ8z0C+o1gQ1wiHYLGFmr
         nkRGdZhhExE4I344p7iidLNUWgQ9gApZ8g8iEIp/fi4E2VHqggv7+4wKHoPMkrmAVEHJ
         xpOA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=jeP0KC58;
       spf=pass (google.com: domain of 3hxc6xqckerwajg86jk8gg8d6.4ge4d2f8-3madl-dafmp8gg8d68jgmhk.4ge@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3HxC6XQcKERwAJG86JK8GG8D6.4GE4D2F8-3MADL-DAFMP8GG8D68JGMHK.4GE@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uZCWgIRW6Nz2pQb5zrxJK2ldEfsi5wW5xrOnCxZTlgk=;
        b=EYgleFrzxYP2N/lTs6Fr0dC3zfc1FqsS6YlcqC3evv7qKuXEMNPareF4Zv5V598Y7y
         Zil6xpsctcL8+vSckSsNIOfMhrhNYHvidsUqAWiY9tZ/MuUYlPHubA4RqfEn+SR/aY0s
         1yYLPBF3Aq48hQcqZ9RKmv6OA1gjjSTYqPqlu7Xux6hE60kcWWclKQhwE8S4TQqoFAFg
         OMOlRO3avS4wlCyMk2eitSmGqW5VVTZLodXkGlnjR+/MdyvrcVoVbExWm18kKO0ZEfgg
         q6z2yj7ZpzRPmzxjVfilKlus3jjTmtEf7rDdDPJOYXmQhRThpALyIEJJ/9M7Ge/3Hlcr
         Rh3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uZCWgIRW6Nz2pQb5zrxJK2ldEfsi5wW5xrOnCxZTlgk=;
        b=uDyJngkWFHJiS6TL/9qtB697cOdty/v2QiCTQZ6deEksTwbNjvJDM48oVfgl2kRV7e
         FNk5vFtsa2Xp5t6XnB3guAgkQTBHqXr8aP19t2/0z3H5WyGimM8+I7wg0laDybCD6EFF
         j1Gxsl4nECtdVyK/iGZO42PvGMCfCASbNNTIDuOiGrFWmBxPFAVvoIu5pXecclxehId8
         yaJTyyv7B1NUJw8vDgVwSB0QAk2+oRFJVA9d5cImP7CHUw1IUhyzXn+gBGP0qCDXlJ1R
         lpA24PbSpMyqizmeRnbhO7ZDHKbvv+yQwzdu5+OvQF5byKh3fT8I+ftoJzOn23JwsoqQ
         zg1A==
X-Gm-Message-State: APjAAAWZl3lVZcLaZEk7YJYFeDu55hHL/sQ6GLULpQ8RWoEYdr1+xg2u
	88bSlYFRCkM/AIlQi+k8kUw=
X-Google-Smtp-Source: APXvYqyiDCkziXnKnRnvFI7ohdAXHBKW7+/eP2rjm7zuXLOukHcVNHEX+APoLbva7SiPMAeaifx8tw==
X-Received: by 2002:a5d:938d:: with SMTP id c13mr1952829iol.167.1572474913103;
        Wed, 30 Oct 2019 15:35:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:9145:: with SMTP id y5ls135976ioq.11.gmail; Wed, 30 Oct
 2019 15:35:12 -0700 (PDT)
X-Received: by 2002:a05:6602:19a:: with SMTP id m26mr1970287ioo.251.1572474912640;
        Wed, 30 Oct 2019 15:35:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572474912; cv=none;
        d=google.com; s=arc-20160816;
        b=yMAjwx0n049gb0NQKmZdwFpLE4Izuv+u7aKus7Hvjt3Hy5/bySXyjaQ4UGnAoDLK1/
         Z+28A1K31hCVHaCutAvDOGMWt0LzrZm3QtNT0oGNqhXO73P4zLaasjzL8SeaZJrbysY0
         cjIHN8EqBIRh5yKJcvIJvYbHv0poXq4EhOUvzagjQ/540KxgBV68i4ctzJNMZCiSIXQd
         X9zJppaK3wXFSdk8cUpgCQzIbO7ImjBD79rGjTpGKIk+Q1iueiHnfQt1bi4BMpDfgRbd
         JESlaKO5A6w+2bE9JGEP191fqhwZwJ5tIKIFK4l5WSgIsf9CrSzhsBvqZoq4VWFLpEJm
         ZZXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=XBR+LBIO8UwhtIFgRGeRHsyC7SP8OsXmQpo/yiQxcx4=;
        b=1EI2epxRO240y9fPR3Eqp+dalV4/ypo1R6AWDmesmv3vWSAgHoNAt6nGZGAyTuEr0V
         GCJGDqd4OgECBWIWddl+ZLwUTlrO4VWucXq/TpHmYUaxRsaJGaz7A3Mc1sUlJQsGuDhC
         +qxFVmG29ROJ56Ry7Qd+7DVVYwK4Bz3CArxWiuZbW6MMZs2hRasQqMe+CESq1zpr6ycd
         sYGJfjwNNrpH0ESkHNVQEtk9im52MWWHg6Pagxt+HR5bOz0YI1nE3Dc0r+F6Iec6sHmD
         cmiWfwmEXuOw9fDn2ktpubGGgtK6UPY8xlHZg29NpixViyD0N8uF62Qd7/PRFyrviXzg
         Qc9Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=jeP0KC58;
       spf=pass (google.com: domain of 3hxc6xqckerwajg86jk8gg8d6.4ge4d2f8-3madl-dafmp8gg8d68jgmhk.4ge@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3HxC6XQcKERwAJG86JK8GG8D6.4GE4D2F8-3MADL-DAFMP8GG8D68JGMHK.4GE@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x44a.google.com (mail-pf1-x44a.google.com. [2607:f8b0:4864:20::44a])
        by gmr-mx.google.com with ESMTPS id t64si157335ill.0.2019.10.30.15.35.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Oct 2019 15:35:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3hxc6xqckerwajg86jk8gg8d6.4ge4d2f8-3madl-dafmp8gg8d68jgmhk.4ge@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) client-ip=2607:f8b0:4864:20::44a;
Received: by mail-pf1-x44a.google.com with SMTP id 20so2870678pfp.19
        for <clang-built-linux@googlegroups.com>; Wed, 30 Oct 2019 15:35:12 -0700 (PDT)
X-Received: by 2002:a63:e055:: with SMTP id n21mr1936911pgj.411.1572474911501;
 Wed, 30 Oct 2019 15:35:11 -0700 (PDT)
Date: Wed, 30 Oct 2019 15:34:45 -0700
In-Reply-To: <20191030223448.12930-1-irogers@google.com>
Message-Id: <20191030223448.12930-8-irogers@google.com>
Mime-Version: 1.0
References: <20191025180827.191916-1-irogers@google.com> <20191030223448.12930-1-irogers@google.com>
X-Mailer: git-send-email 2.24.0.rc1.363.gb1bccd3e3d-goog
Subject: [PATCH v5 07/10] perf tools: before yyabort-ing free components
From: "'Ian Rogers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, Jiri Olsa <jolsa@redhat.com>, 
	Namhyung Kim <namhyung@kernel.org>, Alexei Starovoitov <ast@kernel.org>, 
	Daniel Borkmann <daniel@iogearbox.net>, Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, 
	Yonghong Song <yhs@fb.com>, Andi Kleen <ak@linux.intel.com>, Jin Yao <yao.jin@linux.intel.com>, 
	Adrian Hunter <adrian.hunter@intel.com>, Kan Liang <kan.liang@linux.intel.com>, 
	John Garry <john.garry@huawei.com>, linux-kernel@vger.kernel.org, 
	netdev@vger.kernel.org, bpf@vger.kernel.org, 
	clang-built-linux@googlegroups.com
Cc: Stephane Eranian <eranian@google.com>, Ian Rogers <irogers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: irogers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=jeP0KC58;       spf=pass
 (google.com: domain of 3hxc6xqckerwajg86jk8gg8d6.4ge4d2f8-3madl-dafmp8gg8d68jgmhk.4ge@flex--irogers.bounces.google.com
 designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3HxC6XQcKERwAJG86JK8GG8D6.4GE4D2F8-3MADL-DAFMP8GG8D68JGMHK.4GE@flex--irogers.bounces.google.com;
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

Yyabort doesn't destruct inputs and so this must be done manually before
using yyabort.

Signed-off-by: Ian Rogers <irogers@google.com>
---
 tools/perf/util/parse-events.y | 252 ++++++++++++++++++++++++++-------
 1 file changed, 197 insertions(+), 55 deletions(-)

diff --git a/tools/perf/util/parse-events.y b/tools/perf/util/parse-events.y
index 035edfa8d42e..376b19855470 100644
--- a/tools/perf/util/parse-events.y
+++ b/tools/perf/util/parse-events.y
@@ -152,6 +152,7 @@ start_events: groups
 {
 	struct parse_events_state *parse_state = _parse_state;
 
+	/* frees $1 */
 	parse_events_update_lists($1, &parse_state->list);
 }
 
@@ -161,6 +162,7 @@ groups ',' group
 	struct list_head *list  = $1;
 	struct list_head *group = $3;
 
+	/* frees $3 */
 	parse_events_update_lists(group, list);
 	$$ = list;
 }
@@ -170,6 +172,7 @@ groups ',' event
 	struct list_head *list  = $1;
 	struct list_head *event = $3;
 
+	/* frees $3 */
 	parse_events_update_lists(event, list);
 	$$ = list;
 }
@@ -182,8 +185,14 @@ group:
 group_def ':' PE_MODIFIER_EVENT
 {
 	struct list_head *list = $1;
+	int err;
 
-	ABORT_ON(parse_events__modifier_group(list, $3));
+	err = parse_events__modifier_group(list, $3);
+	free($3);
+	if (err) {
+		free_list_evsel(list);
+		YYABORT;
+	}
 	$$ = list;
 }
 |
@@ -196,6 +205,7 @@ PE_NAME '{' events '}'
 
 	inc_group_count(list, _parse_state);
 	parse_events__set_leader($1, list, _parse_state);
+	free($1);
 	$$ = list;
 }
 |
@@ -214,6 +224,7 @@ events ',' event
 	struct list_head *event = $3;
 	struct list_head *list  = $1;
 
+	/* frees $3 */
 	parse_events_update_lists(event, list);
 	$$ = list;
 }
@@ -226,13 +237,19 @@ event_mod:
 event_name PE_MODIFIER_EVENT
 {
 	struct list_head *list = $1;
+	int err;
 
 	/*
 	 * Apply modifier on all events added by single event definition
 	 * (there could be more events added for multiple tracepoint
 	 * definitions via '*?'.
 	 */
-	ABORT_ON(parse_events__modifier_event(list, $2, false));
+	err = parse_events__modifier_event(list, $2, false);
+	free($2);
+	if (err) {
+		free_list_evsel(list);
+		YYABORT;
+	}
 	$$ = list;
 }
 |
@@ -241,8 +258,14 @@ event_name
 event_name:
 PE_EVENT_NAME event_def
 {
-	ABORT_ON(parse_events_name($2, $1));
+	int err;
+
+	err = parse_events_name($2, $1);
 	free($1);
+	if (err) {
+		free_list_evsel($2);
+		YYABORT;
+	}
 	$$ = $2;
 }
 |
@@ -262,23 +285,33 @@ PE_NAME opt_pmu_config
 {
 	struct parse_events_state *parse_state = _parse_state;
 	struct parse_events_error *error = parse_state->error;
-	struct list_head *list, *orig_terms, *terms;
+	struct list_head *list = NULL, *orig_terms = NULL, *terms= NULL;
+	char *pattern = NULL;
+
+#define CLEANUP_YYABORT					\
+	do {						\
+		parse_events_terms__delete($2);		\
+		parse_events_terms__delete(orig_terms);	\
+		free($1);				\
+		free(pattern);				\
+		YYABORT;				\
+	} while(0)
 
 	if (parse_events_copy_term_list($2, &orig_terms))
-		YYABORT;
+		CLEANUP_YYABORT;
 
 	if (error)
 		error->idx = @1.first_column;
 
 	list = alloc_list();
-	ABORT_ON(!list);
+	if (!list)
+		CLEANUP_YYABORT;
 	if (parse_events_add_pmu(_parse_state, list, $1, $2, false, false)) {
 		struct perf_pmu *pmu = NULL;
 		int ok = 0;
-		char *pattern;
 
 		if (asprintf(&pattern, "%s*", $1) < 0)
-			YYABORT;
+			CLEANUP_YYABORT;
 
 		while ((pmu = perf_pmu__scan(pmu)) != NULL) {
 			char *name = pmu->name;
@@ -287,31 +320,32 @@ PE_NAME opt_pmu_config
 			    strncmp($1, "uncore_", 7))
 				name += 7;
 			if (!fnmatch(pattern, name, 0)) {
-				if (parse_events_copy_term_list(orig_terms, &terms)) {
-					free(pattern);
-					YYABORT;
-				}
+				if (parse_events_copy_term_list(orig_terms, &terms))
+					CLEANUP_YYABORT;
 				if (!parse_events_add_pmu(_parse_state, list, pmu->name, terms, true, false))
 					ok++;
 				parse_events_terms__delete(terms);
 			}
 		}
 
-		free(pattern);
-
 		if (!ok)
-			YYABORT;
+			CLEANUP_YYABORT;
 	}
 	parse_events_terms__delete($2);
 	parse_events_terms__delete(orig_terms);
+	free($1);
 	$$ = list;
+#undef CLEANUP_YYABORT
 }
 |
 PE_KERNEL_PMU_EVENT sep_dc
 {
 	struct list_head *list;
+	int err;
 
-	if (parse_events_multi_pmu_add(_parse_state, $1, &list) < 0)
+	err = parse_events_multi_pmu_add(_parse_state, $1, &list);
+	free($1);
+	if (err < 0)
 		YYABORT;
 	$$ = list;
 }
@@ -322,6 +356,8 @@ PE_PMU_EVENT_PRE '-' PE_PMU_EVENT_SUF sep_dc
 	char pmu_name[128];
 
 	snprintf(&pmu_name, 128, "%s-%s", $1, $3);
+	free($1);
+	free($3);
 	if (parse_events_multi_pmu_add(_parse_state, pmu_name, &list) < 0)
 		YYABORT;
 	$$ = list;
@@ -338,11 +374,16 @@ value_sym '/' event_config '/'
 	struct list_head *list;
 	int type = $1 >> 16;
 	int config = $1 & 255;
+	int err;
 
 	list = alloc_list();
 	ABORT_ON(!list);
-	ABORT_ON(parse_events_add_numeric(_parse_state, list, type, config, $3));
+	err = parse_events_add_numeric(_parse_state, list, type, config, $3);
 	parse_events_terms__delete($3);
+	if (err) {
+		free_list_evsel(list);
+		YYABORT;
+	}
 	$$ = list;
 }
 |
@@ -374,11 +415,19 @@ PE_NAME_CACHE_TYPE '-' PE_NAME_CACHE_OP_RESULT '-' PE_NAME_CACHE_OP_RESULT opt_e
 	struct parse_events_state *parse_state = _parse_state;
 	struct parse_events_error *error = parse_state->error;
 	struct list_head *list;
+	int err;
 
 	list = alloc_list();
 	ABORT_ON(!list);
-	ABORT_ON(parse_events_add_cache(list, &parse_state->idx, $1, $3, $5, error, $6));
+	err = parse_events_add_cache(list, &parse_state->idx, $1, $3, $5, error, $6);
 	parse_events_terms__delete($6);
+	free($1);
+	free($3);
+	free($5);
+	if (err) {
+		free_list_evsel(list);
+		YYABORT;
+	}
 	$$ = list;
 }
 |
@@ -387,11 +436,18 @@ PE_NAME_CACHE_TYPE '-' PE_NAME_CACHE_OP_RESULT opt_event_config
 	struct parse_events_state *parse_state = _parse_state;
 	struct parse_events_error *error = parse_state->error;
 	struct list_head *list;
+	int err;
 
 	list = alloc_list();
 	ABORT_ON(!list);
-	ABORT_ON(parse_events_add_cache(list, &parse_state->idx, $1, $3, NULL, error, $4));
+	err = parse_events_add_cache(list, &parse_state->idx, $1, $3, NULL, error, $4);
 	parse_events_terms__delete($4);
+	free($1);
+	free($3);
+	if (err) {
+		free_list_evsel(list);
+		YYABORT;
+	}
 	$$ = list;
 }
 |
@@ -400,11 +456,17 @@ PE_NAME_CACHE_TYPE opt_event_config
 	struct parse_events_state *parse_state = _parse_state;
 	struct parse_events_error *error = parse_state->error;
 	struct list_head *list;
+	int err;
 
 	list = alloc_list();
 	ABORT_ON(!list);
-	ABORT_ON(parse_events_add_cache(list, &parse_state->idx, $1, NULL, NULL, error, $2));
+	err = parse_events_add_cache(list, &parse_state->idx, $1, NULL, NULL, error, $2);
 	parse_events_terms__delete($2);
+	free($1);
+	if (err) {
+		free_list_evsel(list);
+		YYABORT;
+	}
 	$$ = list;
 }
 
@@ -413,11 +475,17 @@ PE_PREFIX_MEM PE_VALUE '/' PE_VALUE ':' PE_MODIFIER_BP sep_dc
 {
 	struct parse_events_state *parse_state = _parse_state;
 	struct list_head *list;
+	int err;
 
 	list = alloc_list();
 	ABORT_ON(!list);
-	ABORT_ON(parse_events_add_breakpoint(list, &parse_state->idx,
-					     (void *) $2, $6, $4));
+	err = parse_events_add_breakpoint(list, &parse_state->idx,
+					(void *) $2, $6, $4);
+	free($6);
+	if (err) {
+		free(list);
+		YYABORT;
+	}
 	$$ = list;
 }
 |
@@ -428,8 +496,11 @@ PE_PREFIX_MEM PE_VALUE '/' PE_VALUE sep_dc
 
 	list = alloc_list();
 	ABORT_ON(!list);
-	ABORT_ON(parse_events_add_breakpoint(list, &parse_state->idx,
-					     (void *) $2, NULL, $4));
+	if (parse_events_add_breakpoint(list, &parse_state->idx,
+						(void *) $2, NULL, $4)) {
+		free(list);
+		YYABORT;
+	}
 	$$ = list;
 }
 |
@@ -437,11 +508,17 @@ PE_PREFIX_MEM PE_VALUE ':' PE_MODIFIER_BP sep_dc
 {
 	struct parse_events_state *parse_state = _parse_state;
 	struct list_head *list;
+	int err;
 
 	list = alloc_list();
 	ABORT_ON(!list);
-	ABORT_ON(parse_events_add_breakpoint(list, &parse_state->idx,
-					     (void *) $2, $4, 0));
+	err = parse_events_add_breakpoint(list, &parse_state->idx,
+					(void *) $2, $4, 0);
+	free($4);
+	if (err) {
+		free(list);
+		YYABORT;
+	}
 	$$ = list;
 }
 |
@@ -452,8 +529,11 @@ PE_PREFIX_MEM PE_VALUE sep_dc
 
 	list = alloc_list();
 	ABORT_ON(!list);
-	ABORT_ON(parse_events_add_breakpoint(list, &parse_state->idx,
-					     (void *) $2, NULL, 0));
+	if (parse_events_add_breakpoint(list, &parse_state->idx,
+						(void *) $2, NULL, 0)) {
+		free(list);
+		YYABORT;
+	}
 	$$ = list;
 }
 
@@ -463,29 +543,35 @@ tracepoint_name opt_event_config
 	struct parse_events_state *parse_state = _parse_state;
 	struct parse_events_error *error = parse_state->error;
 	struct list_head *list;
+	int err;
 
 	list = alloc_list();
 	ABORT_ON(!list);
 	if (error)
 		error->idx = @1.first_column;
 
-	if (parse_events_add_tracepoint(list, &parse_state->idx, $1.sys, $1.event,
-					error, $2))
-		return -1;
+	err = parse_events_add_tracepoint(list, &parse_state->idx, $1.sys, $1.event,
+					error, $2);
 
+	parse_events_terms__delete($2);
+	free($1.sys);
+	free($1.event);
+	if (err) {
+		free(list);
+		return -1;
+	}
 	$$ = list;
 }
 
 tracepoint_name:
 PE_NAME '-' PE_NAME ':' PE_NAME
 {
-	char sys_name[128];
 	struct tracepoint_name tracepoint;
 
-	snprintf(&sys_name, 128, "%s-%s", $1, $3);
-	tracepoint.sys = &sys_name;
+	ABORT_ON(asprintf(&tracepoint.sys, "%s-%s", $1, $3) < 0);
 	tracepoint.event = $5;
-
+	free($1);
+	free($3);
 	$$ = tracepoint;
 }
 |
@@ -500,11 +586,16 @@ event_legacy_numeric:
 PE_VALUE ':' PE_VALUE opt_event_config
 {
 	struct list_head *list;
+	int err;
 
 	list = alloc_list();
 	ABORT_ON(!list);
-	ABORT_ON(parse_events_add_numeric(_parse_state, list, (u32)$1, $3, $4));
+	err = parse_events_add_numeric(_parse_state, list, (u32)$1, $3, $4);
 	parse_events_terms__delete($4);
+	if (err) {
+		free(list);
+		YYABORT;
+	}
 	$$ = list;
 }
 
@@ -512,11 +603,16 @@ event_legacy_raw:
 PE_RAW opt_event_config
 {
 	struct list_head *list;
+	int err;
 
 	list = alloc_list();
 	ABORT_ON(!list);
-	ABORT_ON(parse_events_add_numeric(_parse_state, list, PERF_TYPE_RAW, $1, $2));
+	err = parse_events_add_numeric(_parse_state, list, PERF_TYPE_RAW, $1, $2);
 	parse_events_terms__delete($2);
+	if (err) {
+		free(list);
+		YYABORT;
+	}
 	$$ = list;
 }
 
@@ -525,22 +621,33 @@ PE_BPF_OBJECT opt_event_config
 {
 	struct parse_events_state *parse_state = _parse_state;
 	struct list_head *list;
+	int err;
 
 	list = alloc_list();
 	ABORT_ON(!list);
-	ABORT_ON(parse_events_load_bpf(parse_state, list, $1, false, $2));
+	err = parse_events_load_bpf(parse_state, list, $1, false, $2);
 	parse_events_terms__delete($2);
+	free($1);
+	if (err) {
+		free(list);
+		YYABORT;
+	}
 	$$ = list;
 }
 |
 PE_BPF_SOURCE opt_event_config
 {
 	struct list_head *list;
+	int err;
 
 	list = alloc_list();
 	ABORT_ON(!list);
-	ABORT_ON(parse_events_load_bpf(_parse_state, list, $1, true, $2));
+	err = parse_events_load_bpf(_parse_state, list, $1, true, $2);
 	parse_events_terms__delete($2);
+	if (err) {
+		free(list);
+		YYABORT;
+	}
 	$$ = list;
 }
 
@@ -573,6 +680,10 @@ opt_pmu_config:
 start_terms: event_config
 {
 	struct parse_events_state *parse_state = _parse_state;
+	if (parse_state->terms) {
+		parse_events_terms__delete ($1);
+		YYABORT;
+	}
 	parse_state->terms = $1;
 }
 
@@ -582,7 +693,10 @@ event_config ',' event_term
 	struct list_head *head = $1;
 	struct parse_events_term *term = $3;
 
-	ABORT_ON(!head);
+	if (!head) {
+		free_term(term);
+		YYABORT;
+	}
 	list_add_tail(&term->list, head);
 	$$ = $1;
 }
@@ -603,8 +717,12 @@ PE_NAME '=' PE_NAME
 {
 	struct parse_events_term *term;
 
-	ABORT_ON(parse_events_term__str(&term, PARSE_EVENTS__TERM_TYPE_USER,
-					$1, $3, &@1, &@3));
+	if (parse_events_term__str(&term, PARSE_EVENTS__TERM_TYPE_USER,
+					$1, $3, &@1, &@3)) {
+		free($1);
+		free($3);
+		YYABORT;
+	}
 	$$ = term;
 }
 |
@@ -612,8 +730,11 @@ PE_NAME '=' PE_VALUE
 {
 	struct parse_events_term *term;
 
-	ABORT_ON(parse_events_term__num(&term, PARSE_EVENTS__TERM_TYPE_USER,
-					$1, $3, false, &@1, &@3));
+	if (parse_events_term__num(&term, PARSE_EVENTS__TERM_TYPE_USER,
+					$1, $3, false, &@1, &@3)) {
+		free($1);
+		YYABORT;
+	}
 	$$ = term;
 }
 |
@@ -622,7 +743,10 @@ PE_NAME '=' PE_VALUE_SYM_HW
 	struct parse_events_term *term;
 	int config = $3 & 255;
 
-	ABORT_ON(parse_events_term__sym_hw(&term, $1, config));
+	if (parse_events_term__sym_hw(&term, $1, config)) {
+		free($1);
+		YYABORT;
+	}
 	$$ = term;
 }
 |
@@ -630,8 +754,11 @@ PE_NAME
 {
 	struct parse_events_term *term;
 
-	ABORT_ON(parse_events_term__num(&term, PARSE_EVENTS__TERM_TYPE_USER,
-					$1, 1, true, &@1, NULL));
+	if (parse_events_term__num(&term, PARSE_EVENTS__TERM_TYPE_USER,
+					$1, 1, true, &@1, NULL)) {
+		free($1);
+		YYABORT;
+	}
 	$$ = term;
 }
 |
@@ -648,7 +775,10 @@ PE_TERM '=' PE_NAME
 {
 	struct parse_events_term *term;
 
-	ABORT_ON(parse_events_term__str(&term, (int)$1, NULL, $3, &@1, &@3));
+	if (parse_events_term__str(&term, (int)$1, NULL, $3, &@1, &@3)) {
+		free($3);
+		YYABORT;
+	}
 	$$ = term;
 }
 |
@@ -672,9 +802,13 @@ PE_NAME array '=' PE_NAME
 {
 	struct parse_events_term *term;
 
-	ABORT_ON(parse_events_term__str(&term, PARSE_EVENTS__TERM_TYPE_USER,
-					$1, $4, &@1, &@4));
-
+	if (parse_events_term__str(&term, PARSE_EVENTS__TERM_TYPE_USER,
+					$1, $4, &@1, &@4)) {
+		free($1);
+		free($4);
+		free($2.ranges);
+		YYABORT;
+	}
 	term->array = $2;
 	$$ = term;
 }
@@ -683,8 +817,12 @@ PE_NAME array '=' PE_VALUE
 {
 	struct parse_events_term *term;
 
-	ABORT_ON(parse_events_term__num(&term, PARSE_EVENTS__TERM_TYPE_USER,
-					$1, $4, false, &@1, &@4));
+	if (parse_events_term__num(&term, PARSE_EVENTS__TERM_TYPE_USER,
+					$1, $4, false, &@1, &@4)) {
+		free($1);
+		free($2.ranges);
+		YYABORT;
+	}
 	term->array = $2;
 	$$ = term;
 }
@@ -695,8 +833,12 @@ PE_DRV_CFG_TERM
 	char *config = strdup($1);
 
 	ABORT_ON(!config);
-	ABORT_ON(parse_events_term__str(&term, PARSE_EVENTS__TERM_TYPE_DRV_CFG,
-					config, $1, &@1, NULL));
+	if (parse_events_term__str(&term, PARSE_EVENTS__TERM_TYPE_DRV_CFG,
+					config, $1, &@1, NULL)) {
+		free($1);
+		free(config);
+		YYABORT;
+	}
 	$$ = term;
 }
 
-- 
2.24.0.rc1.363.gb1bccd3e3d-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191030223448.12930-8-irogers%40google.com.
