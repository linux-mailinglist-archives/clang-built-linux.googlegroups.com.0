Return-Path: <clang-built-linux+bncBDPPFIEASMFBBOHKY7WQKGQE3BABEYA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53c.google.com (mail-pg1-x53c.google.com [IPv6:2607:f8b0:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DC92E3B95
	for <lists+clang-built-linux@lfdr.de>; Thu, 24 Oct 2019 21:02:17 +0200 (CEST)
Received: by mail-pg1-x53c.google.com with SMTP id l11sf10959199pgg.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 24 Oct 2019 12:02:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571943736; cv=pass;
        d=google.com; s=arc-20160816;
        b=cqIGmKsXNI72R6vwYtO5Tok0nahEcL1Fz7lMXVR4OBzDqPBRiKLavBdWnFQt1bgBo4
         YKhT3zRo9iBUHUxVKOjymLT4FdYUAdG86oXtrCxCD9Xa57l/9bCHBN0+j+pmQrrAzBoT
         R8q6HMjv1I9HR/Q1woX0oIXVTvTX9858tEctDHK3HfWh8CHRUzqC3Zj4RWFfPDPBPh7I
         eh3gYXcJLNPGSWfBc8REwAaUFwyMHGUu+3YtpgbdOC9fMpTT9odNPg0JuAkgDUBIfhsF
         Da06Sc9ZKeB5vE/XPt56y6SDR2XxpTGtOBWRDxRgNlCvJUw4f1fuLH/jCMc9QvI0LfPD
         r30w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=gBwhxvUqgn9WqQyGdrug4OrAyI9twduZsVDHpebCQVQ=;
        b=g3/bYEkXgwdztaxoK5v4BvGheQExxFZoYwazs53M+62Lf29gn72TFO69DFaAM/nxRb
         OGev5GJWiEBIYnWYj88872PW2SqFVJROkxK8kAxp1k2TIij8Lxma2Ul+mxlvgL234iXE
         oQ7EgMF3Z778plu99MAQMAXHCVRkHzc0fm+d/OewRYSHEr2oy37KMKP/orAGhqYUGNws
         ey/+iXPEuW94uN3OHbftRx8sbU9WLH9rtbMk3Cymm5wOOrujL+GvRARbkcpmaf91iyFc
         pkNzSMx+WvMm54w5CDGCjwPIZycwNuDSXj7PVLM0M6/oBiwmr6u39g7msDlFBvpBcky5
         o20Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=t7KJKTpn;
       spf=pass (google.com: domain of 3n_wxxqckedwgpmecpqemmejc.amkaj8le-9sgjr-jglsvemmejcepmsnq.amk@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3N_WxXQcKEdwGPMECPQEMMEJC.AMKAJ8LE-9SGJR-JGLSVEMMEJCEPMSNQ.AMK@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gBwhxvUqgn9WqQyGdrug4OrAyI9twduZsVDHpebCQVQ=;
        b=AjksKejLmFlJSnl3YXbdKs+4ieMCgpJ0kCbwUpXOT16wOp6A7piV5tpSoY65fHURJx
         KDjr4nQqEe9MZhYFSLJBzNcESzYqgBLEBDkwr4BKqwdDT2+PM33BPT9rqu+ZgFfk8rW2
         a2f11+nokUMZbCKnHOmvoqEEMufAJy/oka4VcT6yRnF+n/MYET4ZkGQqV+8++p4Wa3t5
         dr4sUd10k49CyxG2FNrLB/gyRhvmBm02bOMdTibmpFsyicMIH1aQySGfGQQ+YvxJA+5C
         xa/VzKbeiPy4j+XTc8U55Q/9dxxthgi0cyD1HSz4zi/Tv4nE1KeVGLz9uwPIdGCl0ASi
         Ecew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gBwhxvUqgn9WqQyGdrug4OrAyI9twduZsVDHpebCQVQ=;
        b=CPfB1zhLphBs5/6f8BfLeZMxbRgO4Os4vHIk34MKtipICh/xKgwKxSjGfSTJ5KHXz9
         FpdTYgN6Or+b6CoClR7ah0gh4f1gGyzyEUzZQX9cGU/EOuoKGLB+hgA5Ra9bBaKtevbS
         0GrghdAas38jcIgVUsXBvVHbne2IJ0GkxsaPAVmXd/JRMsbHxoPWSrwZO451cqY6y6wD
         h17lOTshALNq93AY5GRIkykfSpfPUWae7+LC/Oz9F2IkJeA6OZDIGc/BqrgT9sWnk5gP
         aBTX6HiX5HIOpA5gSwIUh7/7NFa7bNdC6yFjTyTBa9Iz11fVX5gN+iejPRIlytvvxOfG
         zCGQ==
X-Gm-Message-State: APjAAAXQ8OPgyI+0O5kH+zfl92Td6XUwbi/p3TJ3DylY7Pz25V/uKQK2
	p0gmNGWm9ogZZffBzeJjp8U=
X-Google-Smtp-Source: APXvYqzBBRyl3PY3B3neE03mRI6dp8R+0D8wqFnAaCOxhuJ/ayPS9IXZ5sfE59OKVOaUxSgQf6Cl6A==
X-Received: by 2002:a17:902:6b47:: with SMTP id g7mr17085249plt.160.1571943736132;
        Thu, 24 Oct 2019 12:02:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:4c5e:: with SMTP id m30ls2055355pgl.13.gmail; Thu, 24
 Oct 2019 12:02:15 -0700 (PDT)
X-Received: by 2002:a62:5209:: with SMTP id g9mr19505011pfb.28.1571943735807;
        Thu, 24 Oct 2019 12:02:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571943735; cv=none;
        d=google.com; s=arc-20160816;
        b=eF/BmlzRNI+RgcTUIl5pcMBOkxXHQRmFGUlC7mHSpGGgn2nVVuhnm/NEQf17t42T4i
         R9cICFrYmfEdIER1+g2pNx3SJoab8mtGqDgLOpnIu/hJReZf2d9FL8PHNEMIMAPFkVDy
         xwQ1JPlBm2dTLbDpghlxdmIEHPYrjJ84VVPBuNiTZCLgk3RrJaLcfmlMcrT8sOtyR4Tw
         owcGvangFHUoklv6SDJWnoi7/6u1MT8vGmmpXg6GF3AtkHRiPf2HekN9nRIJK/qja2pA
         7aiJt4IsSjaTwsjjQ7Fvxq7QerXZQhwYXMApRJJIkItHQiqqC5VtX1Tzr6VdLw0jn9rd
         /j7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=+BLwqukjEjSzyRsrVOMoR9T3IlY0GDPVz6roAVxq3yY=;
        b=xAkboxTqRHDXz5DqMkLYUrx9Frcw53+C5Co2Wglpye2QpGJkk1KMItEbTj295mcse7
         aTl7JsGWpWWeNtnz9W+9eVgV/peUwNoyrPcr6i757P7HLnQQPNs6FIZ/ziMDMEok0MTh
         aO6JPVaQjzAPP4gcIZ8cs9xab3l44kMxOH6113G0wYGOg1E0RIkXA+L237n7xxtN7eJj
         UjpRWGvhOBhdOkwtQjXo+Eo1UOzVX+vvasqPYzFtVsRn6JLfsfSBZdHMOF509PGRwca1
         boj9yz/zDxnv1HbKaiJXOdPvX70xh0S5iyykrWiAG1LyvS4JY42oKorC4oxRoJobBIL2
         k3YQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=t7KJKTpn;
       spf=pass (google.com: domain of 3n_wxxqckedwgpmecpqemmejc.amkaj8le-9sgjr-jglsvemmejcepmsnq.amk@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3N_WxXQcKEdwGPMECPQEMMEJC.AMKAJ8LE-9SGJR-JGLSVEMMEJCEPMSNQ.AMK@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x549.google.com (mail-pg1-x549.google.com. [2607:f8b0:4864:20::549])
        by gmr-mx.google.com with ESMTPS id g12si1278575pfi.5.2019.10.24.12.02.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Oct 2019 12:02:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3n_wxxqckedwgpmecpqemmejc.amkaj8le-9sgjr-jglsvemmejcepmsnq.amk@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) client-ip=2607:f8b0:4864:20::549;
Received: by mail-pg1-x549.google.com with SMTP id w13so18497098pge.15
        for <clang-built-linux@googlegroups.com>; Thu, 24 Oct 2019 12:02:15 -0700 (PDT)
X-Received: by 2002:a63:7218:: with SMTP id n24mr5945150pgc.100.1571943735169;
 Thu, 24 Oct 2019 12:02:15 -0700 (PDT)
Date: Thu, 24 Oct 2019 12:01:56 -0700
In-Reply-To: <20191024190202.109403-1-irogers@google.com>
Message-Id: <20191024190202.109403-4-irogers@google.com>
Mime-Version: 1.0
References: <20191023005337.196160-1-irogers@google.com> <20191024190202.109403-1-irogers@google.com>
X-Mailer: git-send-email 2.23.0.866.gb869b98d4c-goog
Subject: [PATCH v3 3/9] perf tools: ensure config and str in terms are unique
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
 header.i=@google.com header.s=20161025 header.b=t7KJKTpn;       spf=pass
 (google.com: domain of 3n_wxxqckedwgpmecpqemmejc.amkaj8le-9sgjr-jglsvemmejcepmsnq.amk@flex--irogers.bounces.google.com
 designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3N_WxXQcKEdwGPMECPQEMMEJC.AMKAJ8LE-9SGJR-JGLSVEMMEJCEPMSNQ.AMK@flex--irogers.bounces.google.com;
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

Make it easier to release memory associated with parse event terms by
duplicating the string for the config name and ensuring the val string
is a duplicate.

Currently the parser may memory leak terms and this is addressed in a
later patch.

Signed-off-by: Ian Rogers <irogers@google.com>
---
 tools/perf/util/parse-events.c | 51 ++++++++++++++++++++++++++++------
 tools/perf/util/parse-events.y |  4 ++-
 2 files changed, 45 insertions(+), 10 deletions(-)

diff --git a/tools/perf/util/parse-events.c b/tools/perf/util/parse-events.c
index f0d50f079d2f..dc5862a663b5 100644
--- a/tools/perf/util/parse-events.c
+++ b/tools/perf/util/parse-events.c
@@ -1430,7 +1430,6 @@ int parse_events_add_pmu(struct parse_events_state *parse_state,
 int parse_events_multi_pmu_add(struct parse_events_state *parse_state,
 			       char *str, struct list_head **listp)
 {
-	struct list_head *head;
 	struct parse_events_term *term;
 	struct list_head *list;
 	struct perf_pmu *pmu = NULL;
@@ -1447,19 +1446,30 @@ int parse_events_multi_pmu_add(struct parse_events_state *parse_state,
 
 		list_for_each_entry(alias, &pmu->aliases, list) {
 			if (!strcasecmp(alias->name, str)) {
+				struct list_head *head;
+				char *config;
+
 				head = malloc(sizeof(struct list_head));
 				if (!head)
 					return -1;
 				INIT_LIST_HEAD(head);
-				if (parse_events_term__num(&term, PARSE_EVENTS__TERM_TYPE_USER,
-							   str, 1, false, &str, NULL) < 0)
+				config = strdup(str);
+				if (!config)
+					return -1;
+				if (parse_events_term__num(&term,
+						   PARSE_EVENTS__TERM_TYPE_USER,
+						   config, 1, false, &config,
+						   NULL) < 0) {
+					free(list);
+					free(config);
 					return -1;
+				}
 				list_add_tail(&term->list, head);
 
 				if (!parse_events_add_pmu(parse_state, list,
 							  pmu->name, head,
 							  true, true)) {
-					pr_debug("%s -> %s/%s/\n", str,
+					pr_debug("%s -> %s/%s/\n", config,
 						 pmu->name, alias->str);
 					ok++;
 				}
@@ -1468,8 +1478,10 @@ int parse_events_multi_pmu_add(struct parse_events_state *parse_state,
 			}
 		}
 	}
-	if (!ok)
+	if (!ok) {
+		free(list);
 		return -1;
+	}
 	*listp = list;
 	return 0;
 }
@@ -2764,30 +2776,51 @@ int parse_events_term__sym_hw(struct parse_events_term **term,
 			      char *config, unsigned idx)
 {
 	struct event_symbol *sym;
+	char *str;
 	struct parse_events_term temp = {
 		.type_val  = PARSE_EVENTS__TERM_TYPE_STR,
 		.type_term = PARSE_EVENTS__TERM_TYPE_USER,
-		.config    = config ?: (char *) "event",
+		.config    = config,
 	};
 
+	if (!temp.config) {
+		temp.config = strdup("event");
+		if (!temp.config)
+			return -ENOMEM;
+	}
 	BUG_ON(idx >= PERF_COUNT_HW_MAX);
 	sym = &event_symbols_hw[idx];
 
-	return new_term(term, &temp, (char *) sym->symbol, 0);
+	str = strdup(sym->symbol);
+	if (!str)
+		return -ENOMEM;
+	return new_term(term, &temp, str, 0);
 }
 
 int parse_events_term__clone(struct parse_events_term **new,
 			     struct parse_events_term *term)
 {
+	char *str;
 	struct parse_events_term temp = {
 		.type_val  = term->type_val,
 		.type_term = term->type_term,
-		.config    = term->config,
+		.config    = NULL,
 		.err_term  = term->err_term,
 		.err_val   = term->err_val,
 	};
 
-	return new_term(new, &temp, term->val.str, term->val.num);
+	if (term->config) {
+		temp.config = strdup(term->config);
+		if (!temp.config)
+			return -ENOMEM;
+	}
+	if (term->type_val == PARSE_EVENTS__TERM_TYPE_NUM)
+		return new_term(new, &temp, NULL, term->val.num);
+
+	str = strdup(term->val.str);
+	if (!str)
+		return -ENOMEM;
+	return new_term(new, &temp, str, 0);
 }
 
 int parse_events_copy_term_list(struct list_head *old,
diff --git a/tools/perf/util/parse-events.y b/tools/perf/util/parse-events.y
index 48126ae4cd13..27d6b187c9b1 100644
--- a/tools/perf/util/parse-events.y
+++ b/tools/perf/util/parse-events.y
@@ -644,9 +644,11 @@ PE_NAME array '=' PE_VALUE
 PE_DRV_CFG_TERM
 {
 	struct parse_events_term *term;
+	char *config = strdup($1);
 
+	ABORT_ON(!config);
 	ABORT_ON(parse_events_term__str(&term, PARSE_EVENTS__TERM_TYPE_DRV_CFG,
-					$1, $1, &@1, NULL));
+					config, $1, &@1, NULL));
 	$$ = term;
 }
 
-- 
2.23.0.866.gb869b98d4c-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191024190202.109403-4-irogers%40google.com.
