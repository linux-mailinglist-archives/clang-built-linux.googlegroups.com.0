Return-Path: <clang-built-linux+bncBAABB25JVLXAKGQEY7OYE4Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-f185.google.com (mail-lj1-f185.google.com [209.85.208.185])
	by mail.lfdr.de (Postfix) with ESMTPS id 265A1F8DDB
	for <lists+clang-built-linux@lfdr.de>; Tue, 12 Nov 2019 12:18:04 +0100 (CET)
Received: by mail-lj1-f185.google.com with SMTP id r5sf3175528ljj.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 Nov 2019 03:18:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573557483; cv=pass;
        d=google.com; s=arc-20160816;
        b=FR1Ii2ij1oqeD/sGQkFdfYImajj3b8uzuamN4uVJVzUzMstQHTAAhny/7877FGLHYU
         vPX7AkTJGq2e6AhdSIjoc4H8NO3/Ef1WTsgSO7yS2q5Q/Ic2dIf8103gyI9UgngyYu/a
         WQogoNptG9KXLbvHF34Rk/+tCY0BSPIaFhglwvssGohO59Hfk0QD+Kf4XDOUOaL3gvm4
         B2TFQkXIX/ujnxEz4iFaG3rCF9hTyDSNwl5wWoXnSY7Bx72BpGVfcXPhju7Dlrne9EO/
         TrZyrE1H+767tc6gBqOo2v2h7jactx+e9W6ohuGAYv/k9C+gTZgTdJ52Ox2m0svh9ZQL
         JVjA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:robot-unsubscribe:robot-id
         :message-id:mime-version:references:in-reply-to:cc:subject:to
         :reply-to:sender:from:date;
        bh=FYBSehH1f6xyRmeh3DuXT/2DkLDWQXdpDWnhaJyDnZE=;
        b=uRyu/OSCvivAftreczrRCvS13KaEGF3XS84v4Lmuv9YlTtj1Np2sBfB24s18aPh9KP
         b9FS7hvjPIcYgUv2izt/RhX5j6Gf8ezRoG4HPxj/Al2zeTVZiY1WJzVpfgyxnDCJaI7z
         MYUuADu6rNy7W7pnSHWR5Qktox6KO81lg6gKBv0FVaFqglCUfB03y+ZiF0R9spFTxhHH
         rIAP2VW9vG8r6vSrTWGwnI046f9Ie6C1wXPHz0l8sjsBP2KpAJ/nfPdY1ZRO8F2gnnsc
         wKepm9i5+TwWi3PL+bQlIeqZoDpQYa2f9dT2S+c6Hj1KwbqX6ivxOOAGz9r0X3xvovLe
         s+yA==
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
        bh=FYBSehH1f6xyRmeh3DuXT/2DkLDWQXdpDWnhaJyDnZE=;
        b=eIvl5WztWgYDUHc7U8eNqYzUz/CpMcSryK8/zWqKnxqq/wKDLwxJmrZF37aWJVc6VZ
         yBe7U38Y1a3drXaOq72wnAJEyFtojSJpbgZxHQYKHKqiuHRHGOPhVxi58Y4Q3lAopRt6
         lVVD/PHGWUWnLGwl//iSwiNc3NEDPE98exPevamxQcyD97qWOqSF+5Jo65XHRfi7kjog
         VYa8T5/2n1MV2e7yf41RJYf8IG0tmhyTiGKYaOuvr/ppZM7RfkOYMOFI+f9qGUYDNFgw
         +SaJpZrivgjg58YLXyDrY4uG+J81ljvOZ5Jg+qr6j4Vjdmml9u8C/dq3/V8GxeZ6HADX
         bxlQ==
X-Gm-Message-State: APjAAAWZF1I5vi5ElGIkaEnwPUgv6FZr3BZkG76KcOVlPwAvoGkXek2n
	Mwid1949qg3pcljtJQqVEjU=
X-Google-Smtp-Source: APXvYqzy9FTR3OZ6jzwcwsaD+fKzXDtZ7mXv1wQmwK2C785/L++nrKCSj+RUadTTd1wl0imNHnNs8w==
X-Received: by 2002:a2e:b4eb:: with SMTP id s11mr19407672ljm.38.1573557483693;
        Tue, 12 Nov 2019 03:18:03 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:904c:: with SMTP id n12ls1525692ljg.8.gmail; Tue, 12 Nov
 2019 03:18:03 -0800 (PST)
X-Received: by 2002:a2e:2903:: with SMTP id u3mr20027347lje.131.1573557483132;
        Tue, 12 Nov 2019 03:18:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573557483; cv=none;
        d=google.com; s=arc-20160816;
        b=ByW6T+8flgoHjbm+1uMexpLfTSwvl6vjNGN42d5jOFONV2EaNLJfUl5cap8iELHlqx
         htduS0hGpEKLtuts5z+67i8ZXucY7XDugthchAJq/OSkuuuYMjIZX437p0obRJ65h7xO
         SO8lsxUL5C/mFTaxyfyb4fbm+ikaJ0fozFTZF1oxnzEYPTV3254nyzcmiJzGws8O1PsW
         ODGoOEBJvZQDiah4ppALlMz49X7WkN2akan5E3iD8A594lTjGxeJiJYf8u+GwbTU5j2z
         yM/X8NALFIJvCErn8zrLksMmkGQGmSKlAmxowFmllqx46H58LqOnl0y1UvI5LXAAQoP+
         b4Kw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:precedence:robot-unsubscribe:robot-id
         :message-id:mime-version:references:in-reply-to:cc:subject:to
         :reply-to:sender:from:date;
        bh=TIDscyI/DLhekV5yXxhkXs2mXMUa7uYlRj/OdA8g14Y=;
        b=VJe9Yx+UZ/Jcda7zi2k0eqlAj6iZZyjtijITKWTZ8yf0WOx3O34a8ghA9bPGO4Xi4z
         DPHuKlIveL2Wab8BFZ18H/pDpC36y4+pq2od/LFTfRGqAZZmLzBM25vKcajlF3lF2il0
         V65MWD+T5A0f6Dm6QOTppbQEA1yDXgWFfxB07Yq+tA7IaIMQ78/ulfmdZWqCm8n4d5lE
         hXhPJxtHnt4UpGFsDyLszpP/xqGPT6j6v4bU6cn+B8pEn37mLHkwdHzL3YtEdcyigdTt
         zILExqCYcv8XvmCxm24FMW7yhg89ocSzQXpYum9zysBlA3dOKla6zDeVQvjObgMrEi12
         tDPQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tip-bot2@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tip-bot2@linutronix.de
Received: from Galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id c25si1017445lji.2.2019.11.12.03.18.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Tue, 12 Nov 2019 03:18:03 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of tip-bot2@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
Received: from [5.158.153.53] (helo=tip-bot2.lab.linutronix.de)
	by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
	(Exim 4.80)
	(envelope-from <tip-bot2@linutronix.de>)
	id 1iUUBL-0000K3-AM; Tue, 12 Nov 2019 12:17:59 +0100
Received: from [127.0.1.1] (localhost [IPv6:::1])
	by tip-bot2.lab.linutronix.de (Postfix) with ESMTP id 3F5231C04CB;
	Tue, 12 Nov 2019 12:17:57 +0100 (CET)
Date: Tue, 12 Nov 2019 11:17:56 -0000
From: "tip-bot2 for Ian Rogers" <tip-bot2@linutronix.de>
Sender: tip-bot2@linutronix.de
Reply-to: linux-kernel@vger.kernel.org
To: linux-tip-commits@vger.kernel.org
Subject: [tip: perf/core] perf parse: Before yyabort-ing free components
Cc: Ian Rogers <irogers@google.com>, Jiri Olsa <jolsa@kernel.org>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Alexei Starovoitov <ast@kernel.org>, Andi Kleen <ak@linux.intel.com>,
 Daniel Borkmann <daniel@iogearbox.net>, Jin Yao <yao.jin@linux.intel.com>,
 John Garry <john.garry@huawei.com>, Kan Liang <kan.liang@linux.intel.com>,
 Mark Rutland <mark.rutland@arm.com>, Martin KaFai Lau <kafai@fb.com>,
 Namhyung Kim <namhyung@kernel.org>, Peter Zijlstra <peterz@infradead.org>,
 Song Liu <songliubraving@fb.com>, Stephane Eranian <eranian@google.com>,
 Yonghong Song <yhs@fb.com>, bpf@vger.kernel.org,
 clang-built-linux@googlegroups.com, netdev@vger.kernel.org,
 Arnaldo Carvalho de Melo <acme@redhat.com>, Ingo Molnar <mingo@kernel.org>,
 Borislav Petkov <bp@alien8.de>, linux-kernel@vger.kernel.org
In-Reply-To: <20191030223448.12930-8-irogers@google.com>
References: <20191030223448.12930-8-irogers@google.com>
MIME-Version: 1.0
Message-ID: <157355747686.29376.17091010018744189592.tip-bot2@tip-bot2>
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

The following commit has been merged into the perf/core branch of tip:

Commit-ID:     cabbf26821aa210f1abfb07cc0e8339303e8e16c
Gitweb:        https://git.kernel.org/tip/cabbf26821aa210f1abfb07cc0e8339303e8e16c
Author:        Ian Rogers <irogers@google.com>
AuthorDate:    Wed, 30 Oct 2019 15:34:45 -07:00
Committer:     Arnaldo Carvalho de Melo <acme@redhat.com>
CommitterDate: Thu, 07 Nov 2019 08:30:18 -03:00

perf parse: Before yyabort-ing free components

Yyabort doesn't destruct inputs and so this must be done manually before
using yyabort.

Signed-off-by: Ian Rogers <irogers@google.com>
Acked-by: Jiri Olsa <jolsa@kernel.org>
Cc: Adrian Hunter <adrian.hunter@intel.com>
Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
Cc: Alexei Starovoitov <ast@kernel.org>
Cc: Andi Kleen <ak@linux.intel.com>
Cc: Daniel Borkmann <daniel@iogearbox.net>
Cc: Jin Yao <yao.jin@linux.intel.com>
Cc: John Garry <john.garry@huawei.com>
Cc: Kan Liang <kan.liang@linux.intel.com>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Martin KaFai Lau <kafai@fb.com>
Cc: Namhyung Kim <namhyung@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Song Liu <songliubraving@fb.com>
Cc: Stephane Eranian <eranian@google.com>
Cc: Yonghong Song <yhs@fb.com>
Cc: bpf@vger.kernel.org
Cc: clang-built-linux@googlegroups.com
Cc: netdev@vger.kernel.org
Link: http://lore.kernel.org/lkml/20191030223448.12930-8-irogers@google.com
Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
---
 tools/perf/util/parse-events.y | 252 +++++++++++++++++++++++++-------
 1 file changed, 197 insertions(+), 55 deletions(-)

diff --git a/tools/perf/util/parse-events.y b/tools/perf/util/parse-events.y
index 035edfa..376b198 100644
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
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/157355747686.29376.17091010018744189592.tip-bot2%40tip-bot2.
