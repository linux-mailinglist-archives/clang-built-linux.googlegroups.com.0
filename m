Return-Path: <clang-built-linux+bncBDPPFIEASMFBBJ7UZTWQKGQETW5VMSY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x537.google.com (mail-pg1-x537.google.com [IPv6:2607:f8b0:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id E4897E5334
	for <lists+clang-built-linux@lfdr.de>; Fri, 25 Oct 2019 20:08:41 +0200 (CEST)
Received: by mail-pg1-x537.google.com with SMTP id l6sf2340852pgq.16
        for <lists+clang-built-linux@lfdr.de>; Fri, 25 Oct 2019 11:08:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572026920; cv=pass;
        d=google.com; s=arc-20160816;
        b=l6yTF4NPo4J8s2bHImfscnpw7U1UyIm1yBuKJ+WWk7Wi18YI1ophdL57O0N+OvvfL6
         MvecJf2G/3LjPBa41dfzSWj6JNAl+xXsgf5FBpHR7G1hveotOtlsQhuDlDxnSlfvW3HL
         VB4FfrrgCwN0Z8r7czq8Tl4U2nKG301/pac3Fx8sS6Iajxx8GaNwbl4IwapuMyrVge0O
         WqxFccjbUpZIVCLQVyvXETsZT+hHF582Hb5vzNLDo1SMvppOrQfzkA0r44HuCqkv0krz
         BvpqtcDmkz9MDI3WkYXrfogiXMnhH3rTpicJLTORnHFyXWzMpDy4iU6dG0+AtbDJUQyG
         ATjw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=xsN+CLEf7on3dHl4XxjRUPld9d8LEFK1+gE8fEzjSEg=;
        b=QGwQ3/oyKDh8KO53B+z3p17kiH4RzApZ943ibjQax1m6M8IxP2X2iuix7UaSLogPLD
         lbbEl0so3qW7CSHN7DK61CisTDCC9v3E61pJvrf3fQEE6rhm8O3insMoI2TBYGGIP2yD
         k5kB+6NFK5d3Bes9MNGVGHviIHucwmXyijpgyDAE4dq4pb16x+m5AWXdY6RZG4oIzfeG
         KMGED4lz8LYK+4GyO6vTSKE5lxXEPjpnYtVlAjpL+UuLDALJbGrpFA6r1DHQ8TljqhDs
         Z/Y2aOT/0Mgq33q39kG4js9dVUzwFhNpBZPlq1c34VSRiObWX7KEwkT7F+0FiZyszGMy
         GcOg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Y2AsIZxA;
       spf=pass (google.com: domain of 3jjqzxqckevsbkh97kl9hh9e7.5hf5e3g9-4nbem-ebgnq9hh9e79khnil.5hf@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3JjqzXQcKEVsBKH97KL9HH9E7.5HF5E3G9-4NBEM-EBGNQ9HH9E79KHNIL.5HF@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xsN+CLEf7on3dHl4XxjRUPld9d8LEFK1+gE8fEzjSEg=;
        b=rAuVVGUx1x01oKvXuweSpfapsoxefSmcYRATIjYrHqJqDWy5OelxHYcQrZv2QtN7U9
         t6czetZpxWvKxPBoMsl8qd5wK+lvDewaPAyanT2NdTWL5f/ErUsDhpD9ULZoN8T9yoXn
         Lce7/Hgd3zaTjMfwgbgrWXyJjKfA5NIuNGWFtS3diNI8O3z+rkEZ07lyrqlRlKDM5pcu
         7kqeiyHHaXG2focBwbUqHw4F5tFgIEHeYGO9ip/FgTfD85Sgz6mLbN5zArfOMO/o0hxS
         ys767W6v7k5VJq0GKPwqB91iLfS8eu7YWWGWTlE6/h9hhhj2qBJS3NLS1B62dJmfhpnm
         KkmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xsN+CLEf7on3dHl4XxjRUPld9d8LEFK1+gE8fEzjSEg=;
        b=ib/i9MeFclchbwjuyIqk2tOB8/kLmt2f+SpwnRoBo1IjTQ3eIR63IdHBehI57sKdUL
         eJxtRkYnOcIpAUjTDgCL/8Q6raUg0g3wThbZaFIaCXfAtks2n78jim3mDplCWRUQqvbC
         /46a+KtCSIP9RrjLDmGKYyipYVzHWZjf2z5Hkx9V01WXqKjgVonwinPUW9fHaktjBs8L
         IXG0KBhno8QuMOxbj0qSaBoaLwZSo1PhwQ6VScMJQjw0UnVGLo1CbE9JSdO76cGAdVXQ
         9yz3ygsG33il6YF4CwvUBrhVy1/7YAhnkp2XspjroIhkAU6jem0+DAIo31wmaFBW8PFX
         sHLA==
X-Gm-Message-State: APjAAAX/N5OyQMTC6/eIsDKZPvrYDI/5ydYEbAarH+av0tuoqvm2+awv
	G0t+s05czEoqEmyF+u/yC5I=
X-Google-Smtp-Source: APXvYqxuE2SoaFEhT9XOYiB9W/45LwAIuYkjvYcwuTKwD+Cb7zDwEsH+XZB206rtnBLENU/aRUK47g==
X-Received: by 2002:a17:902:6941:: with SMTP id k1mr5444594plt.5.1572026919741;
        Fri, 25 Oct 2019 11:08:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:52d1:: with SMTP id g200ls2958515pfb.3.gmail; Fri, 25
 Oct 2019 11:08:39 -0700 (PDT)
X-Received: by 2002:a63:d308:: with SMTP id b8mr6050901pgg.246.1572026919283;
        Fri, 25 Oct 2019 11:08:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572026919; cv=none;
        d=google.com; s=arc-20160816;
        b=c+p3AXC+F4HpPkaPUYwHXF0KmZIrVTBpi7b4PJ0buuV0yEm+dHa93o53maFYWYNDYi
         Sj7m6W7ZyFpSSRDkIOiMm27wH2HrzAFXT7qa41Q0T4NcyruNC8l8GNs7WKchbPFoysqs
         ynQmzTb7c6YnTtwPFUYdWjyuSi3CNkJ2Em2X+2ZBcKRBPdzSufv74bSBDydSzYM4SRum
         eVX/mVGvOmyiBJX22jerEHRu5mIMMws7kZQkhWcwd5ZWa7lxP+lI5AgQ+YYvpzwRPzr1
         RizVxs6lJlNeu5Ek3H02PXK4KOPFAXldFW/rhLt1Wqbz/Yur+MvvsT8LDXWSVAeAl6mK
         LMSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=zx/GmBdwVXl5fzQg3LM8CAvYi6dpZSW9jacC09byqgs=;
        b=eaHZWHZBdNfNIY0n600BqBSklGX6ipWBGKNe7/YJ43uy3Hmm0glb1XEcEMO+smLezZ
         OemMdLJwZKXj3OhaIvjUp5ZZznSqFzOxoqqr2tbACGkS/3Vrdqjj9eDzEMTzTX85N23y
         3SoildLoOrK9lq/8vYloHOCKKYMr5GIrK7q+Av4EbpjRqaxZll7w/GeaXLIaGVRhVB9G
         6BzrmtbBHbTqejEri0QcNjzMHvVOSenD5gCwt6wdhnJVmjFGwlf9EUDvWeF25R9MqTOO
         NlHJHhaphL/vfqqV3z90VY6xFmpnFj7hBJb0z04IGaz+igpYrgJCb8/hZ9OCMVWGKxdP
         lgng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Y2AsIZxA;
       spf=pass (google.com: domain of 3jjqzxqckevsbkh97kl9hh9e7.5hf5e3g9-4nbem-ebgnq9hh9e79khnil.5hf@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3JjqzXQcKEVsBKH97KL9HH9E7.5HF5E3G9-4NBEM-EBGNQ9HH9E79KHNIL.5HF@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x74a.google.com (mail-qk1-x74a.google.com. [2607:f8b0:4864:20::74a])
        by gmr-mx.google.com with ESMTPS id x22si177511pgx.2.2019.10.25.11.08.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Oct 2019 11:08:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3jjqzxqckevsbkh97kl9hh9e7.5hf5e3g9-4nbem-ebgnq9hh9e79khnil.5hf@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) client-ip=2607:f8b0:4864:20::74a;
Received: by mail-qk1-x74a.google.com with SMTP id m189so2901025qkc.7
        for <clang-built-linux@googlegroups.com>; Fri, 25 Oct 2019 11:08:39 -0700 (PDT)
X-Received: by 2002:a0c:d081:: with SMTP id z1mr4632643qvg.119.1572026918379;
 Fri, 25 Oct 2019 11:08:38 -0700 (PDT)
Date: Fri, 25 Oct 2019 11:08:19 -0700
In-Reply-To: <20191025180827.191916-1-irogers@google.com>
Message-Id: <20191025180827.191916-2-irogers@google.com>
Mime-Version: 1.0
References: <20191024190202.109403-1-irogers@google.com> <20191025180827.191916-1-irogers@google.com>
X-Mailer: git-send-email 2.24.0.rc0.303.g954a862665-goog
Subject: [PATCH v4 1/9] perf tools: add parse events handle error
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
 header.i=@google.com header.s=20161025 header.b=Y2AsIZxA;       spf=pass
 (google.com: domain of 3jjqzxqckevsbkh97kl9hh9e7.5hf5e3g9-4nbem-ebgnq9hh9e79khnil.5hf@flex--irogers.bounces.google.com
 designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3JjqzXQcKEVsBKH97KL9HH9E7.5HF5E3G9-4NBEM-EBGNQ9HH9E79KHNIL.5HF@flex--irogers.bounces.google.com;
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
 tools/perf/util/parse-events.c | 84 +++++++++++++++++++++-------------
 tools/perf/util/parse-events.h |  2 +
 tools/perf/util/pmu.c          | 30 +++++++-----
 3 files changed, 73 insertions(+), 43 deletions(-)

diff --git a/tools/perf/util/parse-events.c b/tools/perf/util/parse-events.c
index db882f630f7e..c516d0cce946 100644
--- a/tools/perf/util/parse-events.c
+++ b/tools/perf/util/parse-events.c
@@ -182,6 +182,22 @@ static int tp_event_has_id(const char *dir_path, struct dirent *evt_dir)
 
 #define MAX_EVENT_LENGTH 512
 
+void parse_events__handle_error(struct parse_events_error *err, int idx,
+				char *str, char *help)
+{
+	char *new_str = NULL;
+
+	if (WARN(!str, "WARNING: failed to provide error string\n")) {
+		free(help);
+		return;
+	}
+	WARN_ONCE(err->str, "WARNING: multiple event parsing errors\n");
+	err->idx = idx;
+	free(err->str);
+	err->str = new_str ?: str;
+	free(err->help);
+	err->help = help;
+}
 
 struct tracepoint_path *tracepoint_id_to_path(u64 config)
 {
@@ -932,11 +948,11 @@ static int check_type_val(struct parse_events_term *term,
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
@@ -972,8 +988,11 @@ static bool config_term_shrinked;
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
@@ -992,9 +1011,9 @@ config_term_avail(int term_type, struct parse_events_error *err)
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
@@ -1036,17 +1055,20 @@ do {									   \
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
@@ -1080,8 +1102,9 @@ do {									   \
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
@@ -1089,9 +1112,9 @@ do {									   \
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
 
@@ -1142,9 +1165,9 @@ static int config_term_tracepoint(struct perf_event_attr *attr,
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
@@ -1323,10 +1346,12 @@ int parse_events_add_pmu(struct parse_events_state *parse_state,
 
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
 
@@ -2797,13 +2822,10 @@ void parse_events__clear_array(struct parse_events_array *a)
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
2.24.0.rc0.303.g954a862665-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191025180827.191916-2-irogers%40google.com.
