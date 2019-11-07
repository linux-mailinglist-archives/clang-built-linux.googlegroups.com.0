Return-Path: <clang-built-linux+bncBDZ7JWMQ2EGBBSWWSHXAKGQE2BY3ZTA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa38.google.com (mail-vk1-xa38.google.com [IPv6:2607:f8b0:4864:20::a38])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E8ABF3802
	for <lists+clang-built-linux@lfdr.de>; Thu,  7 Nov 2019 20:06:51 +0100 (CET)
Received: by mail-vk1-xa38.google.com with SMTP id i5sf1511621vkg.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 07 Nov 2019 11:06:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573153610; cv=pass;
        d=google.com; s=arc-20160816;
        b=Xv2ntj515hg5x3Xi0MOnh4AVImOUOLt2xoTMR49jc1/+GBABUsOahOnhfWjLAdJ2U1
         SmP96Ik9ix3Fz5+qxdUUYQTsJCkRm7OGVSk2xulPsjJscJj6IH9/+Xw8RpZ1gdjIALT2
         /S3dz9LXG1dCDNAEn4N5z62JlAn0a0rJVbGfimGaB+RoB04MmgtD+Oy7webpQLvVSYRb
         7QV0zjhj/nRVnhLrp74R4256nRW81sERPUod+3TbqouZg67xaYuiQQI9VaiQ/53kK43q
         txOQeNJGgjWBFmYvi4NEr92q90ZFLlfCFxB7fCR/vsORfRo0dT2hDzdE1OmXtNmRMW95
         rg2g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=p7OlBNetTyRTw8BuNNcAvrbdRthUFwQbh/JZU2s0LtA=;
        b=JxpXgJp2kasztyAH17KHqjFu32lB7+/TZ4orQkeIo3g7v0UQdzo5vJG34JAh7z2uf2
         KdVMO6GmywIBlpUX/EFO8Ub9TCloNYu6h98Ixo7xM9GlH6HkOuOwXEtpPcBIGkyt/xH9
         hu0lybJEOIlxF4cHsgB7J9IcRGgs4xJuXn0v5qYOoqmMepo/rI3yk9UbJYIn2o9wcI0Z
         KxLK4FbotqasQe+d08mnB5yJdIUgz/aqic8jZzfro1iSLIgX9SDruc8b5PS3ZLYlzRIL
         5XAt9y4s8zl6WPUm6ilqAWY+FSrbq/3v4dbYYYpWNMnvzLqojfv6VZbc2FgnjYCqfmjH
         uKBw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=GjDt9Lj+;
       spf=pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=acme@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=p7OlBNetTyRTw8BuNNcAvrbdRthUFwQbh/JZU2s0LtA=;
        b=sZEBf6qPwur0L3wKouuktl43mXeVQutTcv+O3+r9wX0tQgNHvjj3NR7axRIQfPyyrb
         K7YA7+xH7fRgGJRpyShtY7hFo6SWaCWmc0CrWewAM1C0FLu6NEGWqQ2nx+4N0Nl2UD16
         tjtNvsjZjQkX0oNEDQ8PSo622zO1NPqkFvnPUgid+cIn8lGcbJDEjwUtOdCFSVRftsm1
         t3fJ1ZAhtYIIjhvzH7Z75P1FfFe7JAVvGeGRA1GVEneoB6FTsh4EA+2FgFsPf69D/xI8
         CTeSzJ1CiPXrpcLUsYeD5ueaY7tFHTRUTPqcbT8Ny2w4rkPdzjlIG/4W1khKCdAPTi0z
         A7ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=p7OlBNetTyRTw8BuNNcAvrbdRthUFwQbh/JZU2s0LtA=;
        b=lSCfxLPAQ/IcitlELOFpyUF+WgzqwwhGeCkVTmqJAQz65xjHjsuU8OPlWXjkgXZmmy
         wYnY/62shc/lRwyo60h8mz1eGFsWEEX566y/ykH61Ni7TkrZmrdd12trVEchuNJ9245D
         m5kYojfDqlUMkWkW+nW8E5yPnNf7qc28+HZkOd/enjCG+zHF5yMYSJV67aPWckhtKCvN
         LkvmJ4fan/EOFQXRlEMkD+ckbyA9TA94/Pi/ALHtRjr1r4xnLjHLWhqcMWzKcf/KgSPV
         ly8NibYbvuSdEve+ilz8EMJ/F9iT+zaB1V8ZBd+NQiEacML+mJ121dlTr/pnBgxWredm
         Tghw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVXHdJly9hnbJE/e95QvDRXeBCUmy3VbnGsd7h8b7Ll9rz/FX23
	iFUC9swHbEZzBPMa7fIUoYM=
X-Google-Smtp-Source: APXvYqzmu8sk/9sftIp+mFh4iTyCq64VYgpgRV2LazoYTtTWL7zJB5AY0+tgyW4AnzQlYiAhVoy3Lw==
X-Received: by 2002:a1f:a357:: with SMTP id m84mr3892496vke.55.1573153610427;
        Thu, 07 Nov 2019 11:06:50 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:dd05:: with SMTP id y5ls316519vsj.16.gmail; Thu, 07 Nov
 2019 11:06:50 -0800 (PST)
X-Received: by 2002:a67:ee56:: with SMTP id g22mr4183686vsp.83.1573153610021;
        Thu, 07 Nov 2019 11:06:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573153610; cv=none;
        d=google.com; s=arc-20160816;
        b=qRbR2QSQtD/NOnvnmB1qZ8/u95q4N/vVVwUxdUAZC+WnHwsZi1rTIPuLGf2CBmOaFX
         rXpz8jNpKbN7s1F/KPbUjClB+H/7LQwnRoFDdJHvfo2B4s3WKmvAjzlndM27pyX41Xvh
         q78DfjyOevWY8Ln8I3RLQ8gGTJIfYn6GRN3Qd0Yru467I6GICqtqzXrDSLru0304zWk/
         31zEIpuRIAZe1CFp16J7SnPhziyWEm5f5pk+GFXpCKhzQnt4LGQVIpJj7FZwIKDN6FZu
         pNzIzFuNJ5MkFsH2bZA8LTbM56glQFGBLsu1cJNabu4QXi+89RbAwpF6Wd821qYHH4B1
         DrKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=uVQVFDflz5Fic7L1sRx17/U/5ASzhA2/BRz3Ez4HFLI=;
        b=Oopn4kw081IfU0anU4qxD2cXMw9DDRtSliSbpcze/wdd2lR/8pHaGMI0/1sbr8uADT
         fHsBrcDcWjllv72ZV5wR1OjvkFU/gQruvBLdV8oamoAb76pCgDmbMZiWt6Ainitee72n
         1cfbnGicPR60j+WzWh6C8YuAD3KaK0zNCE682sBoQ0128aADSJnBfdpT/XYOGNkju+71
         rdYUZNqsMi4v/C490Z6Tjgj3Y3e8zttYhbfgv71X6tLdlyyTsqXB2iOSMC9DfFW2IfX7
         ZkKeEW1F+VpUhKkk3igWU41TAocPbvTEMwdS3qqQUJmCs2DrOywsnjpgoXUoAROc8Jck
         oKbw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=GjDt9Lj+;
       spf=pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=acme@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id e11si222416uaf.0.2019.11.07.11.06.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 Nov 2019 11:06:49 -0800 (PST)
Received-SPF: pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from quaco.ghostprotocols.net (179-240-172-58.3g.claro.net.br [179.240.172.58])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 37ED821D7E;
	Thu,  7 Nov 2019 19:06:36 +0000 (UTC)
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Ingo Molnar <mingo@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>
Cc: Jiri Olsa <jolsa@kernel.org>,
	Namhyung Kim <namhyung@kernel.org>,
	Clark Williams <williams@redhat.com>,
	linux-kernel@vger.kernel.org,
	linux-perf-users@vger.kernel.org,
	Ian Rogers <irogers@google.com>,
	Adrian Hunter <adrian.hunter@intel.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Alexei Starovoitov <ast@kernel.org>,
	Andi Kleen <ak@linux.intel.com>,
	Daniel Borkmann <daniel@iogearbox.net>,
	Jin Yao <yao.jin@linux.intel.com>,
	John Garry <john.garry@huawei.com>,
	Kan Liang <kan.liang@linux.intel.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Martin KaFai Lau <kafai@fb.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Song Liu <songliubraving@fb.com>,
	Stephane Eranian <eranian@google.com>,
	Yonghong Song <yhs@fb.com>,
	bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	netdev@vger.kernel.org,
	Arnaldo Carvalho de Melo <acme@redhat.com>
Subject: [PATCH 41/63] perf parse: Add parse events handle error
Date: Thu,  7 Nov 2019 15:59:49 -0300
Message-Id: <20191107190011.23924-42-acme@kernel.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191107190011.23924-1-acme@kernel.org>
References: <20191107190011.23924-1-acme@kernel.org>
MIME-Version: 1.0
X-Original-Sender: acme@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=GjDt9Lj+;       spf=pass
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
Link: http://lore.kernel.org/lkml/20191030223448.12930-2-irogers@google.com
Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
---
 tools/perf/util/parse-events.c | 82 +++++++++++++++++++++-------------
 tools/perf/util/parse-events.h |  2 +
 tools/perf/util/pmu.c          | 30 ++++++++-----
 3 files changed, 71 insertions(+), 43 deletions(-)

diff --git a/tools/perf/util/parse-events.c b/tools/perf/util/parse-events.c
index d36b8129b27a..03e54a2d8685 100644
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
 
@@ -2802,13 +2825,10 @@ void parse_events__clear_array(struct parse_events_array *a)
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
2.21.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191107190011.23924-42-acme%40kernel.org.
