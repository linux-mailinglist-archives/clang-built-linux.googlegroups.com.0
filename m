Return-Path: <clang-built-linux+bncBDPPFIEASMFBBVNOSLXAKGQEUKWQGAY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x538.google.com (mail-pg1-x538.google.com [IPv6:2607:f8b0:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id A0D5AF3B01
	for <lists+clang-built-linux@lfdr.de>; Thu,  7 Nov 2019 23:14:47 +0100 (CET)
Received: by mail-pg1-x538.google.com with SMTP id b24sf2999262pgi.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 07 Nov 2019 14:14:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573164886; cv=pass;
        d=google.com; s=arc-20160816;
        b=Tq1i48bg4e9tgq0HhYt4C2NhL0orpY2EHYwo0j7UW+7Tlwo44JQ55RxksRjNhE3/+n
         w6Sb9i3lCFeSjUjy7FpVpdmW0/wiP5BixngEvEajz6k9vV2PEQDgbvpn5Hk6SkOIHlBp
         hQ974FoHp+vkfY6V4tqfYInnj3to3oPXDDWlelJbF8tQP4Np0VBYgCgVXyi9RH9Su75H
         mXLwcuz9H4IqM7lIetl2bjwIU/pdguJ7yobXEj0XHb0xf49n9ZUwoSGqj7irGTj4CHDT
         2Ct0X4WlWe9NvF1O/QrIYbZlISbxUOkFap10VOjieORaU1zHOJLuqSoP5+gosFFNT2I+
         AMnA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=3u9j26MyoCD0fpd/FXKgfHFK7dHAQaZZ/b4UPC1Fans=;
        b=D7QeI3zOrvZzrW+MXCgT47vQN3CpVtMJGw9a0rXK7TBZXlAznjCwzfraYBrRg+8Hih
         pqjBBOgedqAn0Kqln+kfhnKNfmIxmiNU87n4aw1KxT5p6RXfT6E468o5Y6MKS1eMHHt+
         o0SZomjk7iu68VjZL6L0b0xFzDq/UYKXPeaDWVdDDKoI4SXReBnnse0qqKVNz5rCZ1Ce
         DUReoIedCETW8Bi6QWuy/kLjZpTcZq2FmsgABm0GaNjf/+bN+dGgLrkzqH8Rn5kSJGKU
         e/PP/jPpsXIKaByo2mdXHJnuuiVChrIjz4mOOw8eWmxkp9sL+cyfGCVU5fZwP0d2N3rx
         xRpA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CKVDolWA;
       spf=pass (google.com: domain of 3vjfexqckeykv41tr45t11tyr.p1zpyn0t-o7vy6-yv07at11tyrt41725.p1z@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3VJfEXQcKEYkv41tr45t11tyr.p1zpyn0t-o7vy6-yv07At11tyrt41725.p1z@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3u9j26MyoCD0fpd/FXKgfHFK7dHAQaZZ/b4UPC1Fans=;
        b=gZAjkjjOa17uaLr33gZsJ5n/PMVmf5yWF3AYOPs/ZeI/A2qdLMgCwFhRcadm/Xqm1h
         sV2CDwGjHIdln0nE3A/ncvq6PbjVVqQND4SPfjUfWbaY6WkynKMxOQ7TP3UmAZrNR2hE
         UcaaNWBdi56fM5yjS7X6tmztWP/C4DSSTkpCTFunA+tVObZkBLemO5JA2VhVYpi5s+wU
         Pu22Dsqkn8PD7TnKa/swpBWoOP76eMWjKBZ+UWTbyk+jxnqpe7EUF08Ox+vy6K1wRNV6
         F+SECWrQbcyPZqmaPrZFlnzyyBgW/FbZeX3BkH/ppZ+SvMpfNvlTud1CBShg1M5IPcEK
         4sKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3u9j26MyoCD0fpd/FXKgfHFK7dHAQaZZ/b4UPC1Fans=;
        b=AoycxEg8YDBM3fXmOT8g2WD9NQHfXIy21VlXvLRlDq7iN1J2QKlzbGkOtXzF9Mw4EM
         4gGCGQr5yFCvv3RPE90uVuDY198YgggV26zGlL0KJv3sNC9TM2x0jN+qMWTAY9FGnueX
         hnaP7AbrLP/NV01Dx5JJI6HA+D6Ck1AgKBYU3J/9XxfMBnHC6Q1310rAFJgKnJPDpDZu
         PlxxQt3kEmuv17Kr6tV/PnigeUrQFQWO0ucmfX2fScS9n8jnGFHrv7DpAy/jjgFcdb4u
         d8RRB0A22dWSFAL/c3nzT/unF1gDghroslPHcyEWThZ5YBCviuXKdxZ9C+UrHpWXzPb8
         lVTw==
X-Gm-Message-State: APjAAAW49aGm3sLyQUKS8sUailG5SL+W5voVzdv5e1tJyssVn2t7rmWG
	hdRPy9NEG7y0sNRpdJ//xyI=
X-Google-Smtp-Source: APXvYqwl90OfW6r2iguHw5SYjH2FvpSJDRSV294vm2yQvwg4+QfIeioWVOFWbDSxjXkjre9+7nku+w==
X-Received: by 2002:a17:902:8b89:: with SMTP id ay9mr6214145plb.314.1573164885844;
        Thu, 07 Nov 2019 14:14:45 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:8302:: with SMTP id h2ls1802342pfe.9.gmail; Thu, 07 Nov
 2019 14:14:44 -0800 (PST)
X-Received: by 2002:a63:c55:: with SMTP id 21mr7680910pgm.282.1573164884886;
        Thu, 07 Nov 2019 14:14:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573164884; cv=none;
        d=google.com; s=arc-20160816;
        b=Wq6YVH3wCtzJfHNE9UjWp1wBpRVgXldx6dXtD+HNIrIwroyBSJj5FBdGKmEEFpsW/V
         sBknYTwqmD4MMamBTKCKzeU6xA3cKVnxQ8K99gw3FSLEK0TqhZcTEBEbCw8vI8fsgoa0
         S4o7hdg4UEuSrbQjJbh+d0Fw/cCmzq+8KGikHTRHQuAcwAqb+fbKajsrmj4cGK1HBLOf
         P3WHPdQls0IIgS5DAmUalqnK5H2Bh/51HSWERm92VL+KuygPdxhd8rVg6KPmSUORjOB4
         1KyTnWt6AiTXphKaTQlYNxR6STVaaihH0hEQBb9KUt75tU5vsEgK4TQLBkh68vx6W4re
         m9zQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=MhcLOxBt6GI4murNgPPZOQuJK8208fS1NR4UI6STB1U=;
        b=GEn6zohFi+on9BaqlBjk1RrxcBWS6e7QzUmRt7L1NVpZlKQss3JVwyq7tqx9THBhSn
         4bS7xgjjotGnr0S4C4gF5NQaSmPY7WgXrHDE8/9kE8IpfvuEIBe+cfie1s63fwOrG9aZ
         FWo5lpABHUWXyMeeLwfa1qbsFxDS+Fxd/6MtZ0CWSRzTpwCTxv3MvT2qWyixpYxiGYb/
         Aa+Ymx1+2jaWe31xuVuTEAdo3ecZfp1/I7nlewHrru1YkhudZlZha3boMCodSdKe1K8a
         M1PRMnIBMXsQkfBMH4iUqOOxQd73pEPcrZg5fkh4VX+56N96BYbF2KhJwewCsr6pakMX
         EGDw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CKVDolWA;
       spf=pass (google.com: domain of 3vjfexqckeykv41tr45t11tyr.p1zpyn0t-o7vy6-yv07at11tyrt41725.p1z@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3VJfEXQcKEYkv41tr45t11tyr.p1zpyn0t-o7vy6-yv07At11tyrt41725.p1z@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x54a.google.com (mail-pg1-x54a.google.com. [2607:f8b0:4864:20::54a])
        by gmr-mx.google.com with ESMTPS id q196si308806pfc.0.2019.11.07.14.14.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 Nov 2019 14:14:44 -0800 (PST)
Received-SPF: pass (google.com: domain of 3vjfexqckeykv41tr45t11tyr.p1zpyn0t-o7vy6-yv07at11tyrt41725.p1z@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) client-ip=2607:f8b0:4864:20::54a;
Received: by mail-pg1-x54a.google.com with SMTP id u11so2968216pgm.20
        for <clang-built-linux@googlegroups.com>; Thu, 07 Nov 2019 14:14:44 -0800 (PST)
X-Received: by 2002:a63:4501:: with SMTP id s1mr7500493pga.5.1573164884254;
 Thu, 07 Nov 2019 14:14:44 -0800 (PST)
Date: Thu,  7 Nov 2019 14:14:19 -0800
In-Reply-To: <20191107221428.168286-1-irogers@google.com>
Message-Id: <20191107221428.168286-2-irogers@google.com>
Mime-Version: 1.0
References: <20191030223448.12930-1-irogers@google.com> <20191107221428.168286-1-irogers@google.com>
X-Mailer: git-send-email 2.24.0.432.g9d3f5f5b63-goog
Subject: [PATCH v6 01/10] perf tools: add parse events handle error
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
 header.i=@google.com header.s=20161025 header.b=CKVDolWA;       spf=pass
 (google.com: domain of 3vjfexqckeykv41tr45t11tyr.p1zpyn0t-o7vy6-yv07at11tyrt41725.p1z@flex--irogers.bounces.google.com
 designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3VJfEXQcKEYkv41tr45t11tyr.p1zpyn0t-o7vy6-yv07At11tyrt41725.p1z@flex--irogers.bounces.google.com;
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

Parse event error handling may overwrite one error string with another
creating memory leaks. Introduce a helper routine that warns about
multiple error messages as well as avoiding the memory leak.

A reproduction of this problem can be seen with:
  perf stat -e c/c/
After this change this produces:
WARNING: multiple event parsing errors
event syntax error: 'c/c/'
                       \___ unknown term

valid terms: event,filter_rem,filter_opc0,edge,filter_isoc,filter_tid,filter_loc,filter_nc,inv,umask,filter_opc1,tid_en,thresh,filter_all_op,filter_not_nm,filter_state,filter_nm,config,config1,config2,name,period,percore
Run 'perf list' for a list of valid events

 Usage: perf stat [<options>] [<command>]

    -e, --event <event>   event selector. use 'perf list' to list available events

Signed-off-by: Ian Rogers <irogers@google.com>
---
 tools/perf/util/parse-events.c | 82 +++++++++++++++++++++-------------
 tools/perf/util/parse-events.h |  2 +
 tools/perf/util/pmu.c          | 30 ++++++++-----
 3 files changed, 71 insertions(+), 43 deletions(-)

diff --git a/tools/perf/util/parse-events.c b/tools/perf/util/parse-events.c
index db882f630f7e..e9b958d6c534 100644
--- a/tools/perf/util/parse-events.c
+++ b/tools/perf/util/parse-events.c
@@ -182,6 +182,20 @@ static int tp_event_has_id(const char *dir_path, struct dirent *evt_dir)
 
 #define MAX_EVENT_LENGTH 512
 
+void parse_events__handle_error(struct parse_events_error *err, int idx,
+				char *str, char *help)
+{
+	if (WARN(!str, "WARNING: failed to provide error string\n")) {
+		free(help);
+		return;
+	}
+	WARN_ONCE(err->str, "WARNING: multiple event parsing errors\n");
+	err->idx = idx;
+	free(err->str);
+	err->str = str;
+	free(err->help);
+	err->help = help;
+}
 
 struct tracepoint_path *tracepoint_id_to_path(u64 config)
 {
@@ -932,11 +946,11 @@ static int check_type_val(struct parse_events_term *term,
 		return 0;
 
 	if (err) {
-		err->idx = term->err_val;
-		if (type == PARSE_EVENTS__TERM_TYPE_NUM)
-			err->str = strdup("expected numeric value");
-		else
-			err->str = strdup("expected string value");
+		parse_events__handle_error(err, term->err_val,
+					type == PARSE_EVENTS__TERM_TYPE_NUM
+					? strdup("expected numeric value")
+					: strdup("expected string value"),
+					NULL);
 	}
 	return -EINVAL;
 }
@@ -972,8 +986,11 @@ static bool config_term_shrinked;
 static bool
 config_term_avail(int term_type, struct parse_events_error *err)
 {
+	char *err_str;
+
 	if (term_type < 0 || term_type >= __PARSE_EVENTS__TERM_TYPE_NR) {
-		err->str = strdup("Invalid term_type");
+		parse_events__handle_error(err, -1,
+					strdup("Invalid term_type"), NULL);
 		return false;
 	}
 	if (!config_term_shrinked)
@@ -992,9 +1009,9 @@ config_term_avail(int term_type, struct parse_events_error *err)
 			return false;
 
 		/* term_type is validated so indexing is safe */
-		if (asprintf(&err->str, "'%s' is not usable in 'perf stat'",
-			     config_term_names[term_type]) < 0)
-			err->str = NULL;
+		if (asprintf(&err_str, "'%s' is not usable in 'perf stat'",
+				config_term_names[term_type]) >= 0)
+			parse_events__handle_error(err, -1, err_str, NULL);
 		return false;
 	}
 }
@@ -1036,17 +1053,20 @@ do {									   \
 	case PARSE_EVENTS__TERM_TYPE_BRANCH_SAMPLE_TYPE:
 		CHECK_TYPE_VAL(STR);
 		if (strcmp(term->val.str, "no") &&
-		    parse_branch_str(term->val.str, &attr->branch_sample_type)) {
-			err->str = strdup("invalid branch sample type");
-			err->idx = term->err_val;
+		    parse_branch_str(term->val.str,
+				    &attr->branch_sample_type)) {
+			parse_events__handle_error(err, term->err_val,
+					strdup("invalid branch sample type"),
+					NULL);
 			return -EINVAL;
 		}
 		break;
 	case PARSE_EVENTS__TERM_TYPE_TIME:
 		CHECK_TYPE_VAL(NUM);
 		if (term->val.num > 1) {
-			err->str = strdup("expected 0 or 1");
-			err->idx = term->err_val;
+			parse_events__handle_error(err, term->err_val,
+						strdup("expected 0 or 1"),
+						NULL);
 			return -EINVAL;
 		}
 		break;
@@ -1080,8 +1100,9 @@ do {									   \
 	case PARSE_EVENTS__TERM_TYPE_PERCORE:
 		CHECK_TYPE_VAL(NUM);
 		if ((unsigned int)term->val.num > 1) {
-			err->str = strdup("expected 0 or 1");
-			err->idx = term->err_val;
+			parse_events__handle_error(err, term->err_val,
+						strdup("expected 0 or 1"),
+						NULL);
 			return -EINVAL;
 		}
 		break;
@@ -1089,9 +1110,9 @@ do {									   \
 		CHECK_TYPE_VAL(NUM);
 		break;
 	default:
-		err->str = strdup("unknown term");
-		err->idx = term->err_term;
-		err->help = parse_events_formats_error_string(NULL);
+		parse_events__handle_error(err, term->err_term,
+				strdup("unknown term"),
+				parse_events_formats_error_string(NULL));
 		return -EINVAL;
 	}
 
@@ -1142,9 +1163,9 @@ static int config_term_tracepoint(struct perf_event_attr *attr,
 		return config_term_common(attr, term, err);
 	default:
 		if (err) {
-			err->idx = term->err_term;
-			err->str = strdup("unknown term");
-			err->help = strdup("valid terms: call-graph,stack-size\n");
+			parse_events__handle_error(err, term->err_term,
+				strdup("unknown term"),
+				strdup("valid terms: call-graph,stack-size\n"));
 		}
 		return -EINVAL;
 	}
@@ -1323,10 +1344,12 @@ int parse_events_add_pmu(struct parse_events_state *parse_state,
 
 	pmu = perf_pmu__find(name);
 	if (!pmu) {
-		if (asprintf(&err->str,
+		char *err_str;
+
+		if (asprintf(&err_str,
 				"Cannot find PMU `%s'. Missing kernel support?",
-				name) < 0)
-			err->str = NULL;
+				name) >= 0)
+			parse_events__handle_error(err, -1, err_str, NULL);
 		return -EINVAL;
 	}
 
@@ -2797,13 +2820,10 @@ void parse_events__clear_array(struct parse_events_array *a)
 void parse_events_evlist_error(struct parse_events_state *parse_state,
 			       int idx, const char *str)
 {
-	struct parse_events_error *err = parse_state->error;
-
-	if (!err)
+	if (!parse_state->error)
 		return;
-	err->idx = idx;
-	err->str = strdup(str);
-	WARN_ONCE(!err->str, "WARNING: failed to allocate error string");
+
+	parse_events__handle_error(parse_state->error, idx, strdup(str), NULL);
 }
 
 static void config_terms_list(char *buf, size_t buf_sz)
diff --git a/tools/perf/util/parse-events.h b/tools/perf/util/parse-events.h
index 769e07cddaa2..34f58d24a06a 100644
--- a/tools/perf/util/parse-events.h
+++ b/tools/perf/util/parse-events.h
@@ -124,6 +124,8 @@ struct parse_events_state {
 	struct list_head	  *terms;
 };
 
+void parse_events__handle_error(struct parse_events_error *err, int idx,
+				char *str, char *help);
 void parse_events__shrink_config_terms(void);
 int parse_events__is_hardcoded_term(struct parse_events_term *term);
 int parse_events_term__num(struct parse_events_term **term,
diff --git a/tools/perf/util/pmu.c b/tools/perf/util/pmu.c
index adbe97e941dd..f9f427d4c313 100644
--- a/tools/perf/util/pmu.c
+++ b/tools/perf/util/pmu.c
@@ -1050,9 +1050,9 @@ static int pmu_config_term(struct list_head *formats,
 		if (err) {
 			char *pmu_term = pmu_formats_string(formats);
 
-			err->idx  = term->err_term;
-			err->str  = strdup("unknown term");
-			err->help = parse_events_formats_error_string(pmu_term);
+			parse_events__handle_error(err, term->err_term,
+				strdup("unknown term"),
+				parse_events_formats_error_string(pmu_term));
 			free(pmu_term);
 		}
 		return -EINVAL;
@@ -1080,8 +1080,9 @@ static int pmu_config_term(struct list_head *formats,
 		if (term->no_value &&
 		    bitmap_weight(format->bits, PERF_PMU_FORMAT_BITS) > 1) {
 			if (err) {
-				err->idx = term->err_val;
-				err->str = strdup("no value assigned for term");
+				parse_events__handle_error(err, term->err_val,
+					   strdup("no value assigned for term"),
+					   NULL);
 			}
 			return -EINVAL;
 		}
@@ -1094,8 +1095,9 @@ static int pmu_config_term(struct list_head *formats,
 						term->config, term->val.str);
 			}
 			if (err) {
-				err->idx = term->err_val;
-				err->str = strdup("expected numeric value");
+				parse_events__handle_error(err, term->err_val,
+					strdup("expected numeric value"),
+					NULL);
 			}
 			return -EINVAL;
 		}
@@ -1108,11 +1110,15 @@ static int pmu_config_term(struct list_head *formats,
 	max_val = pmu_format_max_value(format->bits);
 	if (val > max_val) {
 		if (err) {
-			err->idx = term->err_val;
-			if (asprintf(&err->str,
-				     "value too big for format, maximum is %llu",
-				     (unsigned long long)max_val) < 0)
-				err->str = strdup("value too big for format");
+			char *err_str;
+
+			parse_events__handle_error(err, term->err_val,
+				asprintf(&err_str,
+				    "value too big for format, maximum is %llu",
+				    (unsigned long long)max_val) < 0
+				    ? strdup("value too big for format")
+				    : err_str,
+				    NULL);
 			return -EINVAL;
 		}
 		/*
-- 
2.24.0.432.g9d3f5f5b63-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191107221428.168286-2-irogers%40google.com.
