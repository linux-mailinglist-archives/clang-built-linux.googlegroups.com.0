Return-Path: <clang-built-linux+bncBDPPFIEASMFBBENA5DWQKGQE43EI7SY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93c.google.com (mail-ua1-x93c.google.com [IPv6:2607:f8b0:4864:20::93c])
	by mail.lfdr.de (Postfix) with ESMTPS id 96C44EA63B
	for <lists+clang-built-linux@lfdr.de>; Wed, 30 Oct 2019 23:34:58 +0100 (CET)
Received: by mail-ua1-x93c.google.com with SMTP id b12sf604221uan.10
        for <lists+clang-built-linux@lfdr.de>; Wed, 30 Oct 2019 15:34:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572474897; cv=pass;
        d=google.com; s=arc-20160816;
        b=kj+TccrmkYA0nYr9N+tm3PxLGwtCEhg4uueNn3qZz9b22C4F/D0CRZKKS10JF3T1FY
         u3N2uISVpbPlmu6lgOSTbIuAMoQihKHpHqUCrX9mlEUTzIf0pK2nFkYL9lnLK30VCvch
         KGr/foe1MFGrgCCGaezHU/ouN5DgpyAelFHBS8AANw7FqOWBrXYIYpUz3yUXMzszF0ly
         xl9158MyR/9hLOvO/ehRthstjW9yDVUyzxgq+rvqxnOm4b5efwVgn8T1DPprs+TRjIBy
         vk1+mHIC08EbpE3qK+DRoQxu3flGQKI3bHpRmAhfh6XTUwH7tIaJtBYbfrzuSFEMTWXS
         NJng==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=5BRqX4lWNXnBAMEBhyv6+KfSEXsisER0u0D75QGhMKI=;
        b=NqMviE6hwoKqJRo2S1OxJPauR39fKydsYaZ9JN1mFPnlEapragYVsj95tJOcES6vl+
         uGZv3GBxKzVF0j2vU2nv0qleiTM4zAG5z8wP9d/3OH/qT9f+LB7OLpYnZcxJDw8bPkQz
         4lHVdWeW5iIpMvNj63t8KkenwMqy61IT8hMKJrNGrZMstzH3vwAnWvxjwUinmEvr1MHK
         6/Hzz6WoT48uOlVA4ze6aNest8g7vi3L8FV9GXJLd7TYgsfoqrKlMfIEVeo2jKLnr8RE
         7KEEFVNSXMFKlQTGq0VQSngSWsVcvvzx9hvnI5N1+DZ+XpZI7HsGlO292+1oHhu15i8w
         6cRA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ru313old;
       spf=pass (google.com: domain of 3dxc6xqckeqwu30sq34s00sxq.o0yoxmzs-n6ux5-xuz69s00sxqs30614.o0y@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3DxC6XQcKEQwu30sq34s00sxq.o0yoxmzs-n6ux5-xuz69s00sxqs30614.o0y@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5BRqX4lWNXnBAMEBhyv6+KfSEXsisER0u0D75QGhMKI=;
        b=sEOa3Oo7mhJBt3gYaQenW419eagtkFLLC0j+SB7ynAxYrCS20oUeR/1NkFVQK4pguM
         peMYpzvgXa0Gsr40xLNfWXE7oeAyrd72GPbg1xjVE9cYFgmPxIAz7JV+5RL+k8Q07RwY
         F2Ko/25HIjItks6QqHTYPPw6dEDAfJLGbYjWK9lT+rfJP1etNhgvAa/lwVlsEloW4vNa
         3CHacpZ2AEZ4ie6fwlvy158GiqcXThabAeOFpk2pktmTglVFsiMMQBwxEN9NifmQfXCA
         EdBiB2Hbxn9x/LmyjaaZwP4DtF6dvi6LQa0ZZ1gXqyTTywzbnS8jqUbt1MNDHQs/wBpO
         431Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5BRqX4lWNXnBAMEBhyv6+KfSEXsisER0u0D75QGhMKI=;
        b=qaX39/8pn5UqVeE3YUyqkrNZ0GQnMCDud8ISpXy2bVJT1pfvzrHYlNuXrHrL/8ATT8
         n9LT+UhwJq+ms5ZlHbBtBVMT9AaR5CcWtuq9yPcxaIOK4pk8tTy1LmHbNUtGRGjcZ23b
         W3chR6pDQeXBbgxmdBI9mjO9Ng6nOP2wA70KtgAoZHy36k980FPmLtoYogiPbUT1r9xr
         u5U9BLJYvpCCTy8h8fd6hRuvJfIlqmMKPRGtb5nUTROUwa0DswS9zf1Lq7+d9u9fjoMp
         ZfwoD5tdF64OtVU+aLkzhTVKnlasHRmcFGKYeTZpLWghzUVk7F6JRyz3L2W/GNoYp23o
         pH7w==
X-Gm-Message-State: APjAAAWoK5ZSFdfbPskwDz81v5hS8Tvg0B8yXCiQR7TIrZs1fFbq+Yp/
	zNhDArzYsN41hw0joUUvss4=
X-Google-Smtp-Source: APXvYqxKt1SF9BcX4Bs35whMnlw3s0CC/eCavwzdDsgQNoDGes+zgzzvo8H1SGB8AhuC0N2HEK8cOA==
X-Received: by 2002:a67:845:: with SMTP id 66mr1131620vsi.1.1572474897342;
        Wed, 30 Oct 2019 15:34:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:fa51:: with SMTP id j17ls66617vsq.0.gmail; Wed, 30 Oct
 2019 15:34:57 -0700 (PDT)
X-Received: by 2002:a67:c399:: with SMTP id s25mr1185199vsj.120.1572474896934;
        Wed, 30 Oct 2019 15:34:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572474896; cv=none;
        d=google.com; s=arc-20160816;
        b=LNUwll9PIG3KYMQnqjV/0EDaf4HILO1t+aL1L28LGldVlR/213fGYK5pVxSNFvcLuY
         QsQEG4S5XqHso2iLlxuyXDjR6XwZTbVWmY9xJTAu2whlXNUwz9UpcAObP1CHtStkfE2k
         Myl5kpz8llCA/9ed9WUZlssakh4x7YWZ8fJ6Av9n3tk9tGxRZqq37Nn7yZC9FNVz6OUn
         aSHZx5EK5/iXNFb6CpNWBIvT9B/POjVIp4I/cuqKo01YOhcnDrnlBGP9p9orsl4Kz1Xa
         RWeT/f/7q1v7PnA5JFNqilm3E66NtBmiyO6Ru4VMRaE/zf4+6mcb7y7mfHG4/T16NJCU
         5hBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=JeMQyltmUCU8Ar0BgoXK1Jxj5wnahi83GTKOMO2N0jY=;
        b=GQk/Y6Vukxc01xAgtTeV3vzZ4A2lJ4eitPHQjW8RsTMR+SUY32RaWqYnGnaurXXbWc
         +InbXc2rDE8wAGnAoHqGI0+ntehBN4DMc3kRxEStRyk7JTt7bDeP0TW8hiZJtmxT6r02
         ICsNtLb+4/O0mzVPYpkDiZghnaIk+1yKSmpLOb+sfZ6xupoTtdKetKFWlTIbSjpdUiWy
         XADLYYY71U3GN8LPtJfBXeDzVl51rvvKdv4BSV/TI+dgEfM8Nc3qpxvVZUbug2WgVyMa
         ThNPJyPI5IxNbnzHvKzB/hk/k6+vAF9SZVUbffIAXcTnnzssvOH2YK10T1YGUBdsEgIt
         rvmA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ru313old;
       spf=pass (google.com: domain of 3dxc6xqckeqwu30sq34s00sxq.o0yoxmzs-n6ux5-xuz69s00sxqs30614.o0y@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3DxC6XQcKEQwu30sq34s00sxq.o0yoxmzs-n6ux5-xuz69s00sxqs30614.o0y@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x44a.google.com (mail-pf1-x44a.google.com. [2607:f8b0:4864:20::44a])
        by gmr-mx.google.com with ESMTPS id s197si192450vkd.5.2019.10.30.15.34.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Oct 2019 15:34:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3dxc6xqckeqwu30sq34s00sxq.o0yoxmzs-n6ux5-xuz69s00sxqs30614.o0y@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) client-ip=2607:f8b0:4864:20::44a;
Received: by mail-pf1-x44a.google.com with SMTP id f21so2900486pfa.3
        for <clang-built-linux@googlegroups.com>; Wed, 30 Oct 2019 15:34:56 -0700 (PDT)
X-Received: by 2002:a63:5a59:: with SMTP id k25mr1956115pgm.171.1572474895518;
 Wed, 30 Oct 2019 15:34:55 -0700 (PDT)
Date: Wed, 30 Oct 2019 15:34:39 -0700
In-Reply-To: <20191030223448.12930-1-irogers@google.com>
Message-Id: <20191030223448.12930-2-irogers@google.com>
Mime-Version: 1.0
References: <20191025180827.191916-1-irogers@google.com> <20191030223448.12930-1-irogers@google.com>
X-Mailer: git-send-email 2.24.0.rc1.363.gb1bccd3e3d-goog
Subject: [PATCH v5 01/10] perf tools: add parse events handle error
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
 header.i=@google.com header.s=20161025 header.b=ru313old;       spf=pass
 (google.com: domain of 3dxc6xqckeqwu30sq34s00sxq.o0yoxmzs-n6ux5-xuz69s00sxqs30614.o0y@flex--irogers.bounces.google.com
 designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3DxC6XQcKEQwu30sq34s00sxq.o0yoxmzs-n6ux5-xuz69s00sxqs30614.o0y@flex--irogers.bounces.google.com;
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
2.24.0.rc1.363.gb1bccd3e3d-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191030223448.12930-2-irogers%40google.com.
