Return-Path: <clang-built-linux+bncBDPPFIEASMFBBKWJX3WQKGQEC2I27NA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3d.google.com (mail-yw1-xc3d.google.com [IPv6:2607:f8b0:4864:20::c3d])
	by mail.lfdr.de (Postfix) with ESMTPS id C8565E0F58
	for <lists+clang-built-linux@lfdr.de>; Wed, 23 Oct 2019 02:54:03 +0200 (CEST)
Received: by mail-yw1-xc3d.google.com with SMTP id r184sf14400464ywr.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 22 Oct 2019 17:54:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571792042; cv=pass;
        d=google.com; s=arc-20160816;
        b=UTJH61wkjMcDuE+7dLCabtX8Cz/WS5I+rve9cASBp/cjMXDqmUSRJW8tf+IMdqXAdj
         vTG9nAdTMSsxSeOblDj1ofRJ50n0iE2CYJK374tWmeck7kLnBW1Co4OjLHZDKqxbNFAi
         NxYzYa0kl6aJ4fPP36DxWkW6l5n5q2M0P2MWsyhfiPJWjDsSikDdJwGbofpjxP7IAM1l
         husE0tB1yQmpdxF5eUtZ9YWdckAPDsPGhFlAkTJ9UqBg7KN7mpwCHmJuYYu2E7mXfW/7
         f/3IkSsk+YHKFKVpuXBgQT+0RSn2ByYuAVuaC9zv8yw/96Kdr2tbNDA1H69XDaonOINP
         993Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=iLGV9bP1pEAx35jmm+L6JAAfaAiolTXZ9Wsp7IuHtwg=;
        b=ZqhQXDDlJInMDbcgnxP+jUEWgmBjMkJiBqOga9zlUvx2ieMZMN/0SUFA94mEkEmIpG
         x8MmVGoaNKS3CXzfyDzQZ6+TVpi6vhR/7kxdAz7eZgMZboxj+UbRdTs25RPOctgsjiX0
         YVIFaeO9a09cTxaP2N+jmcjAgAowvY04nJUqOcpfDhiLqHRTlTkW+Rqu85oX2Xvi+fsz
         DTGfAjrNd7YGnEgkeS6nO9Zbo4NP/imezibXrpg6955eu34s5/NOtpyBV4i/0M0iaQwq
         xLKYDnI2aaHWjPq3DDmmna68NX/TS7zvPS4s+rMbEybu70HSJOSm7N/dhPMwSUdu6gfI
         GI0w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=IG1MQEnu;
       spf=pass (google.com: domain of 3qasvxqckeaqmvskivwksskpi.gsqgperk-fympx-pmrybksskpikvsytw.gsq@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3qaSvXQcKEaQMVSKIVWKSSKPI.GSQGPERK-FYMPX-PMRYbKSSKPIKVSYTW.GSQ@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iLGV9bP1pEAx35jmm+L6JAAfaAiolTXZ9Wsp7IuHtwg=;
        b=npDtYvr6NyNNL0pOs+FKizN96Tm7Q2eeEDaCq425TrblhKxzJgSzOLA8WF2BauWsTk
         vNB0s5T6ecElzM5WQoyzMVu1uEU4CilR8QIDJPKyjo7pJtuR7L/E/zqE2349AkbVu7qT
         OnloKGMUOdkrlnM6f4pYbx8ibU5vLxgLeOp+6hu5wuqDKdEIuWE8VEZvFfh8hCCQ2RuE
         q2jmxA83rE8VkwcX0u+7sjKIyze1ned7hvmOtqS/U1rFz9pfOxEy37SLYWzo7274KhpW
         op2mm2/nZSW7OiWJvDVjmV/zjvhjeqVENhecwzByME+eBrB8OmURi7FPsS/N/hUpsAKB
         ElDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iLGV9bP1pEAx35jmm+L6JAAfaAiolTXZ9Wsp7IuHtwg=;
        b=GtwBGFEO2fK+LBpfYm7KbktJQg7gJw0jklgTx94IfwvS1cY0ruH0eT7RluDT5/hqWB
         IKMqbPFgbL10ilfgiOe+suwFyOyDdBHJZQkBRdcouxrrgS6I/vyZ8cmCDXFYvT39uiHx
         MGTPgsu2cAcdYaNkhAOjMydAMIeS9VeSuVTUpO25yJN1LDrO3APF6htI+qZC8yatsTeV
         6EmOIb6Cvv/K2/nu582VxV8Udeakb7BJ3QSRBP+tQbepAINmBX/R+XPRNnfNhMES9clE
         gooGcujPp5tvgz3qF/znZLZViTqqlYOyzaYKU+L8gHHnLEDG4u+49uj7fpwjpnf1ZC30
         Astg==
X-Gm-Message-State: APjAAAWjfUdWCin7gm3pS/N4+HRVPMqMkgQdm33jqq7hkrkQ+LeY84Ob
	LpCCUV1Ms/Yjr9IgqtRivrU=
X-Google-Smtp-Source: APXvYqxe0i3IZ9Y9/YOpQy61KTtskDjIG8ob21vdIplBRRuhydrJhYws3KEUxGd5sof2euyRFqzacw==
X-Received: by 2002:a25:808b:: with SMTP id n11mr4730609ybk.191.1571792042716;
        Tue, 22 Oct 2019 17:54:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:e090:: with SMTP id x138ls108469ybg.4.gmail; Tue, 22 Oct
 2019 17:54:02 -0700 (PDT)
X-Received: by 2002:a25:4b04:: with SMTP id y4mr5006610yba.478.1571792042342;
        Tue, 22 Oct 2019 17:54:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571792042; cv=none;
        d=google.com; s=arc-20160816;
        b=M2HAVfMN6lbejCMRXcbCMd+ZoKhM6gffdzGEHiqEcgcglRImS8MU79W68TdtL/1+O2
         dL1z8N4wvzioKjJnnqvhLmPjhf1H5f4gwgSBIhHqvI8lEn4yAbRJeSIlTcSBC1NildLm
         a5cNdz0bJG3yIBlH3ULDjZ5tJd3eSES8/ibSwpghqyX7pyuWdOjnbwOsms35vKYsb0vd
         ZV638UODcwnwqnhJkqJBVTRkhrp5moImIEJCBzjhojz1Y99OGZ03Mpj1zslpetwW4BnO
         sz08gHHhBHvdbaLS9d+BJlF3mVcCwtNdyxuS/5+8p3NDgkEo7Pq1M6K/uKopde1MUtlk
         FS5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=Hvl11X8G79qfzptKicQV7uupBd7BKCDNwU1VoFozVWw=;
        b=LdSmgUaZd+zvcr/xkfF+gAHVxs1PoYDGJHRBZUFwX7ZfPjPCgn4CQqqkakG0lxaJTV
         nReO8nuebq9LhJKVIp4cuPyBkOiAKFZYfHqaHJfO9TIjU9hd5ALFZzoE9EVQoke0lOT/
         4k3WRRRDssk8//N6Z16kNuLi6y5UjRNkls1ibH8aDagT+rCctwnmh0eCEccy/P1NyU7O
         814SDZJvOR8s5p6wROgnaFOv5f4GaTSlRvWvAMLsUeNgbTrIZkoCP1GEiIz3WdYSuoO4
         6lvbysPE5eqUVXXhqGfGzf2S0Mhq39OQSAw1sfsjKWDR7IlF+sAtPgStQF1LkahmUPja
         GN/g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=IG1MQEnu;
       spf=pass (google.com: domain of 3qasvxqckeaqmvskivwksskpi.gsqgperk-fympx-pmrybksskpikvsytw.gsq@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3qaSvXQcKEaQMVSKIVWKSSKPI.GSQGPERK-FYMPX-PMRYbKSSKPIKVSYTW.GSQ@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x44a.google.com (mail-pf1-x44a.google.com. [2607:f8b0:4864:20::44a])
        by gmr-mx.google.com with ESMTPS id u129si871928ywc.1.2019.10.22.17.54.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Oct 2019 17:54:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3qasvxqckeaqmvskivwksskpi.gsqgperk-fympx-pmrybksskpikvsytw.gsq@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) client-ip=2607:f8b0:4864:20::44a;
Received: by mail-pf1-x44a.google.com with SMTP id a2so14762188pfo.12
        for <clang-built-linux@googlegroups.com>; Tue, 22 Oct 2019 17:54:02 -0700 (PDT)
X-Received: by 2002:a63:1511:: with SMTP id v17mr6824541pgl.34.1571792041077;
 Tue, 22 Oct 2019 17:54:01 -0700 (PDT)
Date: Tue, 22 Oct 2019 17:53:29 -0700
In-Reply-To: <20191023005337.196160-1-irogers@google.com>
Message-Id: <20191023005337.196160-2-irogers@google.com>
Mime-Version: 1.0
References: <20191017170531.171244-1-irogers@google.com> <20191023005337.196160-1-irogers@google.com>
X-Mailer: git-send-email 2.23.0.866.gb869b98d4c-goog
Subject: [PATCH v2 1/9] perf tools: add parse events append error
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
 header.i=@google.com header.s=20161025 header.b=IG1MQEnu;       spf=pass
 (google.com: domain of 3qasvxqckeaqmvskivwksskpi.gsqgperk-fympx-pmrybksskpikvsytw.gsq@flex--irogers.bounces.google.com
 designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3qaSvXQcKEaQMVSKIVWKSSKPI.GSQGPERK-FYMPX-PMRYbKSSKPIKVSYTW.GSQ@flex--irogers.bounces.google.com;
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
creating memory leaks and masking errors. Introduce a helper routine
that appends error messages and avoids the memory leak.

Signed-off-by: Ian Rogers <irogers@google.com>
---
 tools/perf/util/parse-events.c | 102 ++++++++++++++++++++++-----------
 tools/perf/util/parse-events.h |   2 +
 tools/perf/util/pmu.c          |  36 ++++++------
 3 files changed, 89 insertions(+), 51 deletions(-)

diff --git a/tools/perf/util/parse-events.c b/tools/perf/util/parse-events.c
index db882f630f7e..4d42344698b8 100644
--- a/tools/perf/util/parse-events.c
+++ b/tools/perf/util/parse-events.c
@@ -182,6 +182,34 @@ static int tp_event_has_id(const char *dir_path, struct dirent *evt_dir)
 
 #define MAX_EVENT_LENGTH 512
 
+void parse_events__append_error(struct parse_events_error *err, int idx,
+				char *str, char *help)
+{
+	char *new_str = NULL;
+
+	WARN(!str, "WARNING: failed to provide error string");
+	if (err->str) {
+		int ret;
+
+		if (err->help)
+			ret = asprintf(&new_str,
+				"%s (previous error: %s(help: %s))",
+				str, err->str, err->help);
+		else
+			ret = asprintf(&new_str,
+				"%s (previous error: %s)",
+				str, err->str);
+		if (ret < 0)
+			new_str = NULL;
+		else
+			zfree(&str);
+	}
+	err->idx = idx;
+	free(err->str);
+	err->str = new_str ?: str;
+	free(err->help);
+	err->help = help;
+}
 
 struct tracepoint_path *tracepoint_id_to_path(u64 config)
 {
@@ -931,13 +959,12 @@ static int check_type_val(struct parse_events_term *term,
 	if (type == term->type_val)
 		return 0;
 
-	if (err) {
-		err->idx = term->err_val;
-		if (type == PARSE_EVENTS__TERM_TYPE_NUM)
-			err->str = strdup("expected numeric value");
-		else
-			err->str = strdup("expected string value");
-	}
+	if (err)
+		parse_events__append_error(err, term->err_val,
+					type == PARSE_EVENTS__TERM_TYPE_NUM
+					? strdup("expected numeric value")
+					: strdup("expected string value"),
+					NULL);
 	return -EINVAL;
 }
 
@@ -972,8 +999,11 @@ static bool config_term_shrinked;
 static bool
 config_term_avail(int term_type, struct parse_events_error *err)
 {
+	char *err_str;
+
 	if (term_type < 0 || term_type >= __PARSE_EVENTS__TERM_TYPE_NR) {
-		err->str = strdup("Invalid term_type");
+		parse_events__append_error(err, -1,
+					strdup("Invalid term_type"), NULL);
 		return false;
 	}
 	if (!config_term_shrinked)
@@ -992,9 +1022,9 @@ config_term_avail(int term_type, struct parse_events_error *err)
 			return false;
 
 		/* term_type is validated so indexing is safe */
-		if (asprintf(&err->str, "'%s' is not usable in 'perf stat'",
-			     config_term_names[term_type]) < 0)
-			err->str = NULL;
+		if (asprintf(&err_str, "'%s' is not usable in 'perf stat'",
+				config_term_names[term_type]) >= 0)
+			parse_events__append_error(err, -1, err_str, NULL);
 		return false;
 	}
 }
@@ -1036,17 +1066,20 @@ do {									   \
 	case PARSE_EVENTS__TERM_TYPE_BRANCH_SAMPLE_TYPE:
 		CHECK_TYPE_VAL(STR);
 		if (strcmp(term->val.str, "no") &&
-		    parse_branch_str(term->val.str, &attr->branch_sample_type)) {
-			err->str = strdup("invalid branch sample type");
-			err->idx = term->err_val;
+		    parse_branch_str(term->val.str,
+				    &attr->branch_sample_type)) {
+			parse_events__append_error(err, term->err_val,
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
+			parse_events__append_error(err, term->err_val,
+						strdup("expected 0 or 1"),
+						NULL);
 			return -EINVAL;
 		}
 		break;
@@ -1080,8 +1113,9 @@ do {									   \
 	case PARSE_EVENTS__TERM_TYPE_PERCORE:
 		CHECK_TYPE_VAL(NUM);
 		if ((unsigned int)term->val.num > 1) {
-			err->str = strdup("expected 0 or 1");
-			err->idx = term->err_val;
+			parse_events__append_error(err, term->err_val,
+						strdup("expected 0 or 1"),
+						NULL);
 			return -EINVAL;
 		}
 		break;
@@ -1089,9 +1123,9 @@ do {									   \
 		CHECK_TYPE_VAL(NUM);
 		break;
 	default:
-		err->str = strdup("unknown term");
-		err->idx = term->err_term;
-		err->help = parse_events_formats_error_string(NULL);
+		parse_events__append_error(err, term->err_term,
+				strdup("unknown term"),
+				parse_events_formats_error_string(NULL));
 		return -EINVAL;
 	}
 
@@ -1141,11 +1175,10 @@ static int config_term_tracepoint(struct perf_event_attr *attr,
 	case PARSE_EVENTS__TERM_TYPE_AUX_OUTPUT:
 		return config_term_common(attr, term, err);
 	default:
-		if (err) {
-			err->idx = term->err_term;
-			err->str = strdup("unknown term");
-			err->help = strdup("valid terms: call-graph,stack-size\n");
-		}
+		if (err)
+			parse_events__append_error(err, term->err_term,
+				strdup("unknown term"),
+				strdup("valid terms: call-graph,stack-size\n"));
 		return -EINVAL;
 	}
 
@@ -1323,10 +1356,12 @@ int parse_events_add_pmu(struct parse_events_state *parse_state,
 
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
+			parse_events__append_error(err, -1, err_str, NULL);
 		return -EINVAL;
 	}
 
@@ -2797,13 +2832,10 @@ void parse_events__clear_array(struct parse_events_array *a)
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
+	parse_events__append_error(parse_state->error, idx, strdup(str), NULL);
 }
 
 static void config_terms_list(char *buf, size_t buf_sz)
diff --git a/tools/perf/util/parse-events.h b/tools/perf/util/parse-events.h
index 769e07cddaa2..a7d42faeab0c 100644
--- a/tools/perf/util/parse-events.h
+++ b/tools/perf/util/parse-events.h
@@ -124,6 +124,8 @@ struct parse_events_state {
 	struct list_head	  *terms;
 };
 
+void parse_events__append_error(struct parse_events_error *err, int idx,
+				char *str, char *help);
 void parse_events__shrink_config_terms(void);
 int parse_events__is_hardcoded_term(struct parse_events_term *term);
 int parse_events_term__num(struct parse_events_term **term,
diff --git a/tools/perf/util/pmu.c b/tools/perf/util/pmu.c
index adbe97e941dd..0fc2a51bb953 100644
--- a/tools/perf/util/pmu.c
+++ b/tools/perf/util/pmu.c
@@ -1050,9 +1050,9 @@ static int pmu_config_term(struct list_head *formats,
 		if (err) {
 			char *pmu_term = pmu_formats_string(formats);
 
-			err->idx  = term->err_term;
-			err->str  = strdup("unknown term");
-			err->help = parse_events_formats_error_string(pmu_term);
+			parse_events__append_error(err, term->err_term,
+				strdup("unknown term"),
+				parse_events_formats_error_string(pmu_term));
 			free(pmu_term);
 		}
 		return -EINVAL;
@@ -1079,10 +1079,10 @@ static int pmu_config_term(struct list_head *formats,
 	if (term->type_val == PARSE_EVENTS__TERM_TYPE_NUM) {
 		if (term->no_value &&
 		    bitmap_weight(format->bits, PERF_PMU_FORMAT_BITS) > 1) {
-			if (err) {
-				err->idx = term->err_val;
-				err->str = strdup("no value assigned for term");
-			}
+			if (err)
+				parse_events__append_error(err, term->err_val,
+					   strdup("no value assigned for term"),
+					   NULL);
 			return -EINVAL;
 		}
 
@@ -1093,10 +1093,10 @@ static int pmu_config_term(struct list_head *formats,
 				pr_info("Invalid sysfs entry %s=%s\n",
 						term->config, term->val.str);
 			}
-			if (err) {
-				err->idx = term->err_val;
-				err->str = strdup("expected numeric value");
-			}
+			if (err)
+				parse_events__append_error(err, term->err_val,
+					strdup("expected numeric value"),
+					NULL);
 			return -EINVAL;
 		}
 
@@ -1108,11 +1108,15 @@ static int pmu_config_term(struct list_head *formats,
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
+			parse_events__append_error(err, term->err_val,
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
2.23.0.866.gb869b98d4c-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191023005337.196160-2-irogers%40google.com.
