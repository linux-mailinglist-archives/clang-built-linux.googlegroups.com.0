Return-Path: <clang-built-linux+bncBAABB3FJVLXAKGQEZS2OFXQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-f55.google.com (mail-wr1-f55.google.com [209.85.221.55])
	by mail.lfdr.de (Postfix) with ESMTPS id A67AAF8DDC
	for <lists+clang-built-linux@lfdr.de>; Tue, 12 Nov 2019 12:18:04 +0100 (CET)
Received: by mail-wr1-f55.google.com with SMTP id w4sf11694062wro.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 Nov 2019 03:18:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573557484; cv=pass;
        d=google.com; s=arc-20160816;
        b=m0MTPOd8PwPg9ayihREZysAtl1CDBtVjGRpJcGmEEF6QQH4KQOy2Rz5iNJRGtQipq1
         T3XBjDk6asMzaqYqifoc0PIJBLAvH4w3y7Hn/gE0XSpwH6i94X9GxHYTilgMuFl0ytzF
         WcgtYjlTaUoxDrOPmH5uTu5Bvu6GG93SZ1CcH65O4+/CgFWbe+z5GkjZMS8EMiHJRB91
         y0dMFJglnb860dfRCx0WOkcUdlA7BVwY2DiKjb+ZNmagkxngP383Xb0frtuhNHAheZfl
         H4z8FlZOCleuIZqHp7/8fbWQ8/hXY9msBIvEoJR8v/UWm7eqvWnFPV8j5BFiTjEnM+pL
         VTtg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:robot-unsubscribe:robot-id
         :message-id:mime-version:references:in-reply-to:cc:subject:to
         :reply-to:sender:from:date;
        bh=O1hlW+C31SB8P09YGYl/jm/nZxMBjx7yDj9ucWuuTGw=;
        b=epy46NXNYKQuZ/pcE+f0E90FSWuXVjsvyr4e9tUqqSXCpdyb2g9l7IC45uZQXZGGPn
         MJeYGWVLAykgcO7LIU+kVY4YNOzAYrWqezl8m/NSvQxDmU3x0kdHhnQVJH1GoF7Nij5q
         0Ym++MXnhNkxQiXg2WzQS3ryjzJ63H6Ph/WzZKvHgzFRXULGp7q/l2HFVx8tLLkxlrwi
         ZmeUOa/j+OwGg3qUV+ok3x9dpr30PvfjB5SrQ45PMaLiazRpY2NyTawYDiE0SzORBoQ+
         to6R5rqlq3VXObn7b95IW44GjsAtWbdk8mhOVF+OmORXASu9ZaFSWVftttYxAB6xWPWT
         yvVQ==
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
        bh=O1hlW+C31SB8P09YGYl/jm/nZxMBjx7yDj9ucWuuTGw=;
        b=IcWs0nUJW19KFnqp45qc4RMJtpd/QhgMUGON9LQIxsV0j9hqXidWHdSGLHD+gpAyUp
         yjxJtD6eZmbIaOtMaYuCkwaQ2nFQlXBeGmko+zuNeBe5Ed1xXohkYwpYZwhPoEEZ0coV
         Kp5usAigCye+BJQGfnff5knmfHMPntt0V7xfZh+DI2jpY2ViHdZCY/TCXy6wrQzVgYED
         LTjbfA48DjUPnPl6fCsVQyVbZCtyNgVckvnuVQvdWzcBEQkspOIBzCDZexXnd5tt80Ww
         svm9Yk4WDdb5dFUBqEt8MactCPZMLrrQahm35mzRwWN1CNxhSQ1HJDf4iqhJLh1R4K6Z
         Uxuw==
X-Gm-Message-State: APjAAAX4RWktz7wHBGNc6qT35mdNxRg5DcvOu6wTNBoqZImmFuhv3YjJ
	KU65OZnFfOvBzy7Y+3tM/Js=
X-Google-Smtp-Source: APXvYqzH2Qx9IntyABEUFzwjwXfiDYiv28bJX3H0LzTThrl7PBHWTJ5F2aNvOc7S8DAinf1U0Hunug==
X-Received: by 2002:adf:f60e:: with SMTP id t14mr24185624wrp.292.1573557484326;
        Tue, 12 Nov 2019 03:18:04 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:8183:: with SMTP id 3ls1832167wra.12.gmail; Tue, 12 Nov
 2019 03:18:03 -0800 (PST)
X-Received: by 2002:a05:6000:34f:: with SMTP id e15mr27449365wre.232.1573557483916;
        Tue, 12 Nov 2019 03:18:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573557483; cv=none;
        d=google.com; s=arc-20160816;
        b=bLfBCO4JPOfYbUAWZ2FUwMgj86DHdu3vqfoS8XHDNQFzWlol5OqwcK/xeD0DVFdHRG
         WtnMs7NQPylp+3Z2xW8jCxK2bWssLHy396Vqq8Ky9HS5dnZ9o2XVWI5gIwMKlUZ/C59S
         eNcltRwrQYe+1uwUlaiDlU3XHcNAEFVwGk18fUHXi8BJCJBHDYe4B9caAS2sA9mhq+hp
         5SJRbdXlCBG12ClWMkhu5dpi1y0ajoOOU2KVq672yb4l6mgw3Rxe6LolN234mhdmwBeQ
         utt7+OYG0Z3ZX3InvanzXtNhW+OcKVIkJBoZNH1bFUWXv5MnHQdIjBgDYyJto67AMds+
         YPKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:precedence:robot-unsubscribe:robot-id
         :message-id:mime-version:references:in-reply-to:cc:subject:to
         :reply-to:sender:from:date;
        bh=KEgMjdNEjgL2xA/g2AitWPa9SHVO+N6cF+cymAMLc5c=;
        b=DoiIhLdjZwHltyb48dLo7yqQHz3kocC04TK6oMGV9iyLYo4ecvIx9cNsrrPT/vK8uk
         LaheiEPlOsa3cy5nkW9R+Z6stQn6W86LEe6nJL1tTmmImSlz2kDNNVdxAUO9JvReNlXi
         Xvu3mLxGnBuNZWwkoMzzML5H5PitBa0q7wW5J8rxXspwlgoHwlut5baccYKNFr5dp2wV
         6KQFzz35/MCvyHva72FDyj/pOf/qxEUYrnnnyCKr9s9mobxeNAUZJR3YKqLq79kqkflm
         GbdwvCAGJO4naljsegD6bm5nxzYfPrb5yb66aWcIr3z5qMMOcS7LgTwjGXvZ8JGqQT39
         U/Mw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tip-bot2@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tip-bot2@linutronix.de
Received: from Galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id l10si172737wmd.0.2019.11.12.03.18.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Tue, 12 Nov 2019 03:18:03 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of tip-bot2@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
Received: from [5.158.153.53] (helo=tip-bot2.lab.linutronix.de)
	by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
	(Exim 4.80)
	(envelope-from <tip-bot2@linutronix.de>)
	id 1iUUBM-0000Mc-JH; Tue, 12 Nov 2019 12:18:00 +0100
Received: from [127.0.1.1] (localhost [IPv6:::1])
	by tip-bot2.lab.linutronix.de (Postfix) with ESMTP id 986EC1C0357;
	Tue, 12 Nov 2019 12:17:58 +0100 (CET)
Date: Tue, 12 Nov 2019 11:17:58 -0000
From: "tip-bot2 for Ian Rogers" <tip-bot2@linutronix.de>
Sender: tip-bot2@linutronix.de
Reply-to: linux-kernel@vger.kernel.org
To: linux-tip-commits@vger.kernel.org
Subject: [tip: perf/core] perf parse: Add parse events handle error
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
In-Reply-To: <20191030223448.12930-2-irogers@google.com>
References: <20191030223448.12930-2-irogers@google.com>
MIME-Version: 1.0
Message-ID: <157355747823.29376.1827924793040708314.tip-bot2@tip-bot2>
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

Commit-ID:     448d732cefb3b4017f687f18c300e48354ddc240
Gitweb:        https://git.kernel.org/tip/448d732cefb3b4017f687f18c300e48354ddc240
Author:        Ian Rogers <irogers@google.com>
AuthorDate:    Wed, 30 Oct 2019 15:34:39 -07:00
Committer:     Arnaldo Carvalho de Melo <acme@redhat.com>
CommitterDate: Wed, 06 Nov 2019 15:49:40 -03:00

perf parse: Add parse events handle error

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
 tools/perf/util/parse-events.c | 82 ++++++++++++++++++++-------------
 tools/perf/util/parse-events.h |  2 +-
 tools/perf/util/pmu.c          | 30 +++++++-----
 3 files changed, 71 insertions(+), 43 deletions(-)

diff --git a/tools/perf/util/parse-events.c b/tools/perf/util/parse-events.c
index d36b812..03e54a2 100644
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
index 769e07c..34f58d2 100644
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
index adbe97e..f9f427d 100644
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
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/157355747823.29376.1827924793040708314.tip-bot2%40tip-bot2.
