Return-Path: <clang-built-linux+bncBDPPFIEASMFBBG5A5DWQKGQESORQACQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb38.google.com (mail-yb1-xb38.google.com [IPv6:2607:f8b0:4864:20::b38])
	by mail.lfdr.de (Postfix) with ESMTPS id EF2A5EA643
	for <lists+clang-built-linux@lfdr.de>; Wed, 30 Oct 2019 23:35:08 +0100 (CET)
Received: by mail-yb1-xb38.google.com with SMTP id j2sf3009650ybm.14
        for <lists+clang-built-linux@lfdr.de>; Wed, 30 Oct 2019 15:35:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572474908; cv=pass;
        d=google.com; s=arc-20160816;
        b=bwfhk34WbuFESpNemDzViRIBgSRsXHdoA02/PxOs5+sOvSbVHICXYEFsnSLJV9N0B7
         kuw68pe3NV5U+oINywn2250FTFvULCjcKsc6dEHhpsFd16xkcPNtivcBuEvfKWVQV28e
         QLL44kwuA7n1P+D93cBywqxppoljLXUFcTnIJ8Ei3gEQ0jo/TPJp4+W4sdePNDsiHAWd
         ArcIovmWK24uzu45hEmmxN8XlEMGMhE24XgdREHVS59znaDk9uvquNfAz42FLfskkZP7
         2XmBACwK1iltM5vwTYUVTqZRxTiB3CBSmGYmDxdaFHa9/4BnD9OnYllDsz2vZVZbQWZy
         9i3Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=j7HrdxaoyU2HN9zypXd/SwtmEWGDnT+/R+Gq/IHiPt0=;
        b=W3vZrXZiHGDMpspSwoq5ADVRskvWU6obmp1897mQYifuobsJt4hhZSYyF80fEDBQds
         oaJbTCtY1sMXOgPmFciWvoRkvv+kEm8PLaMgfKOUmMfrB3/ez6zq674sc72rMG6pQPnB
         Zk+iBGJW9/154yttIs7L4S13WuAqDAryYz0bSlq60E+7hKgrbwX8wTnIpbR7dst/9rtt
         oNc2lNbn9S1wyzOqnMFxPYz6L7AeVUYFVr+6YEuCbWuhm+uLXj0F39zJht5PovfCi3iZ
         3fk4pZFV2XpHaUUdF7XUI19m7/vXBqyjdAJw6J5tDa4+LtbXP4md90TCDDkEFu8A+sDT
         2avw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=s97DVd+l;
       spf=pass (google.com: domain of 3ghc6xqckerc5eb31ef3bb381.zb9z8xa3-yh58g-85ahk3bb3813ebhcf.zb9@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=3GhC6XQcKERc5EB31EF3BB381.zB9z8xA3-yH58G-85AHK3BB3813EBHCF.zB9@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=j7HrdxaoyU2HN9zypXd/SwtmEWGDnT+/R+Gq/IHiPt0=;
        b=qdBfcZfhlUvRzg0wut7/tlVHRwpMNVvuLttZ0AbRej68lznBcbLUscUk5EV2blHXUs
         3BAngaE7DHNDZ4tu5fKkIrMVU6NPLSjXMt43iyXAxseN2Q50Jp7TEvHyOo9SN1GE8tJ/
         zUXGPWADmhoNDpQeOY57zRlN5A1zg1DmQxYGhKpp3aJkpmUJRrkypmVjzpFnucsQgYPH
         Fr+iOUUQt3uxKctNcNfDmws2qgEv5I+4kBkXJy3Lai2w8pqtiFSmTzXIsAEIIZHynL4o
         suS5LhohKheewrm6/wunwrKN+dqIaC6nyNWQaxZz/1LpUX3kFQNC3cLHaUnTn2Mc6CcA
         yvAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=j7HrdxaoyU2HN9zypXd/SwtmEWGDnT+/R+Gq/IHiPt0=;
        b=Z8iiD9Igv8RiorQ7z9v7pPWst1/Aeu3c7RjbkaUmlwSAZPkHfmzPaXVxcU5L1UldIe
         D4FGd4nwUzeTYA3sIIvzrL7dP7ic79c+K+4nzqeGKD/FYtGKIkPN5h3KNPOQ98PS1fs3
         Y8ojq3KbtEJAgFeiTPg1SqGsC1V2NwrI980HysC4GGkeNA0N2dW4dXgwLZBuX0eN84OT
         YosGlmh+8mQrin0u3fQJTNFsYQcd2wQ4fpXzi52qAPpRP0rUAjjeBU5Y4LaAM/vez12A
         69VElSWy6/WdrQ/F4OImCqbl8Htst0tjd237OcWOZEqmnWq1ITor6AWRgcpQG7ocOP0B
         KoJw==
X-Gm-Message-State: APjAAAVrH28brdp+OK1R8Y82BcjTVbUWgdbMuEpVRxOjNmRkW2yjfWZr
	zVYPrtkpE8XqBbQ6r8l5+VU=
X-Google-Smtp-Source: APXvYqxW/yc2MKn7USXy3/wKVHB3VwJjtE0g8Vm9HYUtV2WKMdAgjTok2tzh9RyHaowPtG7kVjd2MQ==
X-Received: by 2002:a0d:f007:: with SMTP id z7mr1491935ywe.240.1572474908022;
        Wed, 30 Oct 2019 15:35:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:adcd:: with SMTP id d13ls137946ybe.10.gmail; Wed, 30 Oct
 2019 15:35:07 -0700 (PDT)
X-Received: by 2002:a25:9d83:: with SMTP id v3mr1343166ybp.425.1572474907654;
        Wed, 30 Oct 2019 15:35:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572474907; cv=none;
        d=google.com; s=arc-20160816;
        b=VqKFEFjA/kc1CnOIuvlqSLGc+XwjF+5ZCgs8WUn/s1DLCh7d+ndHxNMWG3p2v7ucAV
         Pkk5vHWjn0FKQ2+3lSBEoDoQHRnrK93KJQmb8kVo9Z911JByrtRvlRGXuQMPW3zMdWks
         fFnbq/7OHtFZo70eR93tn+iXJ5dTjcTTgu1ByYhUY8Qw+ZZ+ZP3z+qdtxMZoyKbxNpgk
         fOwJnHAVB3jhDZrVu75HSrd/UZwJt1zHdAYAOtjqQoXNYaThM4dTfh5CM4dO+7z9XyaO
         lquXsBOlX1kUFudN4Xw+Aj0sQ+k473K2bcCVtfbLHa+EQCWtMiwzRHg1YiOyh3DeyS8o
         pbdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=32WJHD/sh+KDR1QXtWKrcNgurpa55lJDgOM8dIR2hMs=;
        b=HM7A72u/Wxqg+yZhJJ10rKmgKWR9TAHvkGCBF3vem+4eCbCaVRqyZCTXKNw0mepdZV
         os1dtYKPMUjmGH5yS83/uPMi7xrPsikdU9AMu/jSeimYcBto0A7PC6z0ShCU1UvflSrp
         E1KdLtax7X+DjxDdvqjM00TfqTBpBXx+GjNyVg/bmA4CL/wvrdOzUfC3QSJyx3irutbB
         e3GehYCBmMhJZk+4xWgI853nm57sKQGwYTd3eLDgZAjp3a93LkNRQ684sh7XCaKIl+T4
         AQHUsnzUR+lrwuEHb+PbTHKQ3UW6ZZoX9vnZ5J6pNH6+5tjLPoQK2F2LCL0uUaN0E94b
         TEIg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=s97DVd+l;
       spf=pass (google.com: domain of 3ghc6xqckerc5eb31ef3bb381.zb9z8xa3-yh58g-85ahk3bb3813ebhcf.zb9@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=3GhC6XQcKERc5EB31EF3BB381.zB9z8xA3-yH58G-85AHK3BB3813EBHCF.zB9@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x64a.google.com (mail-pl1-x64a.google.com. [2607:f8b0:4864:20::64a])
        by gmr-mx.google.com with ESMTPS id c5si231755ywn.5.2019.10.30.15.35.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Oct 2019 15:35:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3ghc6xqckerc5eb31ef3bb381.zb9z8xa3-yh58g-85ahk3bb3813ebhcf.zb9@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) client-ip=2607:f8b0:4864:20::64a;
Received: by mail-pl1-x64a.google.com with SMTP id b7so2540980plr.1
        for <clang-built-linux@googlegroups.com>; Wed, 30 Oct 2019 15:35:07 -0700 (PDT)
X-Received: by 2002:a63:e255:: with SMTP id y21mr1918782pgj.353.1572474906428;
 Wed, 30 Oct 2019 15:35:06 -0700 (PDT)
Date: Wed, 30 Oct 2019 15:34:43 -0700
In-Reply-To: <20191030223448.12930-1-irogers@google.com>
Message-Id: <20191030223448.12930-6-irogers@google.com>
Mime-Version: 1.0
References: <20191025180827.191916-1-irogers@google.com> <20191030223448.12930-1-irogers@google.com>
X-Mailer: git-send-email 2.24.0.rc1.363.gb1bccd3e3d-goog
Subject: [PATCH v5 05/10] perf tools: ensure config and str in terms are unique
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
 header.i=@google.com header.s=20161025 header.b=s97DVd+l;       spf=pass
 (google.com: domain of 3ghc6xqckerc5eb31ef3bb381.zb9z8xa3-yh58g-85ahk3bb3813ebhcf.zb9@flex--irogers.bounces.google.com
 designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=3GhC6XQcKERc5EB31EF3BB381.zB9z8xA3-yH58G-85AHK3BB3813EBHCF.zB9@flex--irogers.bounces.google.com;
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
index 03e54a2d8685..578288c94d2a 100644
--- a/tools/perf/util/parse-events.c
+++ b/tools/perf/util/parse-events.c
@@ -1412,7 +1412,6 @@ int parse_events_add_pmu(struct parse_events_state *parse_state,
 int parse_events_multi_pmu_add(struct parse_events_state *parse_state,
 			       char *str, struct list_head **listp)
 {
-	struct list_head *head;
 	struct parse_events_term *term;
 	struct list_head *list;
 	struct perf_pmu *pmu = NULL;
@@ -1429,19 +1428,30 @@ int parse_events_multi_pmu_add(struct parse_events_state *parse_state,
 
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
@@ -1450,8 +1460,10 @@ int parse_events_multi_pmu_add(struct parse_events_state *parse_state,
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
@@ -2746,30 +2758,51 @@ int parse_events_term__sym_hw(struct parse_events_term **term,
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
index ffa1a1b63796..545ab7cefc20 100644
--- a/tools/perf/util/parse-events.y
+++ b/tools/perf/util/parse-events.y
@@ -665,9 +665,11 @@ PE_NAME array '=' PE_VALUE
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
2.24.0.rc1.363.gb1bccd3e3d-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191030223448.12930-6-irogers%40google.com.
