Return-Path: <clang-built-linux+bncBDPPFIEASMFBBMXUZTWQKGQETPVV7XA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc40.google.com (mail-yw1-xc40.google.com [IPv6:2607:f8b0:4864:20::c40])
	by mail.lfdr.de (Postfix) with ESMTPS id C5A21E5339
	for <lists+clang-built-linux@lfdr.de>; Fri, 25 Oct 2019 20:08:51 +0200 (CEST)
Received: by mail-yw1-xc40.google.com with SMTP id o204sf2359344ywc.12
        for <lists+clang-built-linux@lfdr.de>; Fri, 25 Oct 2019 11:08:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572026930; cv=pass;
        d=google.com; s=arc-20160816;
        b=JO36HHG/qdYOAta0HIWT6mVudWFOoD0Xm1tDsCtD5bCseOoBNm4P7x2H3NDivXEZWM
         17gkwHFMAHvkjfcEUHTAUJs1KoiChKNYl5RpHaQFW/dbI0BPqqP++ACy+2jEpKUBuau2
         7UvxoxgQIAOG5l7hDj8tf7NEx5mYEjOYKQfWej53HAMPa34ARMhIVm1Ho1tIzzLyiwf9
         lWqg1CyffJqYrzfYVhCtc/MdwwBU7fdFDmRrdbd44++DE94zWU+e/Jq7eaMZh/GdKJsn
         4o3C6AhtsQsNL6RT5gnapDEwsksYQ28whYGoTFPDND40famJuh0huYOs1zjA52A5pexY
         9RrQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=+Rf8PrMiEhAPj1NUumKtxLwWXECaUpLHuzw+VT6nBTU=;
        b=rGhHwDlAkw7lpm+pCIgJm9OC8Cvyb8zTp3TakoVQnRpezBioYmaNDptSwp4oDbknP4
         z40QsjJBvEivdAQGY3ImtknquLMxV+YVdPiKpl0RJlwTZqf7mizx9L/iTVWix8qqswIP
         ok9rW9okHZL+m3X4HXJ2XOmiC1P9UwtY0F3XpuElC7ogETpNuCYc42M6DCdxcUwZlELZ
         jiRt8T5+TCK+II+z63lrwJusgdH+suzre+NGsGq4dbA7/NlomVEOTnylTMFUGj3mxn8P
         sHbWv6OqAp9xQsULKLgL5dHYG12DTc2I+f5BBdEyPDRl6meesWHURCqhfL/lx1LbqDJn
         uL1A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=VreoqVn1;
       spf=pass (google.com: domain of 3mtqzxqckewymvskivwksskpi.gsqgperk-fympx-pmrybksskpikvsytw.gsq@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3MTqzXQcKEWYMVSKIVWKSSKPI.GSQGPERK-FYMPX-PMRYbKSSKPIKVSYTW.GSQ@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+Rf8PrMiEhAPj1NUumKtxLwWXECaUpLHuzw+VT6nBTU=;
        b=gQLI/WRfiGAuree7bNzeDjGvQx1ea0ABqzfwxoc3Qc1nlwYhtZ0FRy1P4ExlZtYogl
         Dyc2OjI7zzHJz6q+PEiTIYXKieZohCxHRVSRoQ2kh7euTOz1tYhHKLMKwU/78D909lll
         SFlmaCPXutz/FEwrDkLCRM+OHaC9VFdma2Spq0DI+AeNRLzMBIv9zY8K9FOVEeGeU1o0
         iWtcYmsu0/pCigaXc7C6O6sg0I0w+EZT+qeD5Vju6Lh5uTEtcdM4iDV+glPfohov2ll4
         ZYAnxsjOue6pGhijnV3XJ4XXG2yYNZvHPGYdOLgfdPyqIm8eLUuoKceH3JdUUdC1pBoo
         bsEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+Rf8PrMiEhAPj1NUumKtxLwWXECaUpLHuzw+VT6nBTU=;
        b=cB5DKjw84mh3vbcK9x2bJOGyNrAWDQ7zq4fEiyo+S/sxSv5zh+GWKMaKl+ZSwrunwU
         ilCsTUmyrUc9FaSsV6kN0YTcN5CvoeIhfv6NMJOndO4f7NrNtNz5eexVPbfbEcO4C4Gy
         5jNE/yMc0n74KqP8b2JW54HRfA3GHReqRRAEaxygTc7vjteUsVU0BM9TXfBFHeYAFXcm
         xqnTw+uM8dZ/0184PCV4waQXaRp6NJZo9xGWC4bHFkbd7P/AUcbaz0lT7k0viLYL+5gw
         cN2uqN+WdJrwjKTg52Enmh+RNGjnn07gZYlbKY4U1DT8DiM+KceUYfAmpElD745bnxGa
         kMZA==
X-Gm-Message-State: APjAAAXjtIhGBiMk/uQMhOVpRAho6Oi3CFIDZfywnokpuQb0nzL6jWKt
	JbdGQs5YmimaPsg8a5ufFzA=
X-Google-Smtp-Source: APXvYqyNn93gqS9txbNCiHusFP98j8JyLsXexEMJeUKJRUKq/zkrZ2TAHR1BfPO1K91n90ZwGXFjdQ==
X-Received: by 2002:a25:8807:: with SMTP id c7mr4744508ybl.403.1572026930609;
        Fri, 25 Oct 2019 11:08:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:b45:: with SMTP id 66ls213177ybl.0.gmail; Fri, 25 Oct
 2019 11:08:50 -0700 (PDT)
X-Received: by 2002:a25:388e:: with SMTP id f136mr4562312yba.18.1572026930188;
        Fri, 25 Oct 2019 11:08:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572026930; cv=none;
        d=google.com; s=arc-20160816;
        b=I7wNk0X0E/bJ7RhoEcfd1VPkVgGYI8xx6YvdoYUgAwI3LOFERjIUkGiOBtU5Gv/s01
         MLhf1j0ZJlQiKVzGNUXXlLrVtpIo2ztx8M4dJg8OsIAp0WwR8Gy4HX5KCE3kef5Bmn1E
         olKP8soA6ekqghCYZtdLZZ7hAmx9l4hP+w4cDi4Tf7uqF0URnDRTmkR92IZtgyVrf52W
         0DvtFAS1XoNhTKwJEkMispmcnl3ZW1ERn2rUKG+OWLVB3r28sr0Q/+bsFNwqrwHJMbsP
         HdYNqHZVqIoZ5vsB17AvqcxlYvFz874l2M+Xdq5IdYUjRhp+WbGidhdrm4+IO92a+1EN
         luGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=8AHd3HYchFy/HqRZwIHZe+ZvKQYWtBTSUbJ/l//sqzk=;
        b=tzpFe8CoWSWHzhcFFl5jveqtg34m+ZTnUoSTQEt7FvcBw7LrCYVObh7cuNvcQAG940
         o+48gzsSKa9bzyPygb0Zpla1HuBs6fyrIr+4HG1ovLkAkkUwlbGx2e6XLzqc4LIN3e4A
         DUEneO16SbMX/I8H/IMhEP2wF7PJx5DFqiO889u/aq07vmb4SMUMQ41qZSgd0UG+OLQB
         F1AcxYsuVVvkiEJ9mJ+DZXyWMY1vFnoTU1kjSrsLTkz2qUC0ktOoQSpQ3pKsBTZuszh7
         0UXMC2r7kJVHg7lS1QQLJ6iMbHvVJZR3wtDJpnVOP1dFCIgy+zlIKIk87oCTcNKUNcft
         RGXg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=VreoqVn1;
       spf=pass (google.com: domain of 3mtqzxqckewymvskivwksskpi.gsqgperk-fympx-pmrybksskpikvsytw.gsq@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3MTqzXQcKEWYMVSKIVWKSSKPI.GSQGPERK-FYMPX-PMRYbKSSKPIKVSYTW.GSQ@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x44a.google.com (mail-pf1-x44a.google.com. [2607:f8b0:4864:20::44a])
        by gmr-mx.google.com with ESMTPS id u8si199208ybc.2.2019.10.25.11.08.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Oct 2019 11:08:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3mtqzxqckewymvskivwksskpi.gsqgperk-fympx-pmrybksskpikvsytw.gsq@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) client-ip=2607:f8b0:4864:20::44a;
Received: by mail-pf1-x44a.google.com with SMTP id i187so2511072pfc.10
        for <clang-built-linux@googlegroups.com>; Fri, 25 Oct 2019 11:08:50 -0700 (PDT)
X-Received: by 2002:a63:5762:: with SMTP id h34mr6120881pgm.235.1572026929070;
 Fri, 25 Oct 2019 11:08:49 -0700 (PDT)
Date: Fri, 25 Oct 2019 11:08:23 -0700
In-Reply-To: <20191025180827.191916-1-irogers@google.com>
Message-Id: <20191025180827.191916-6-irogers@google.com>
Mime-Version: 1.0
References: <20191024190202.109403-1-irogers@google.com> <20191025180827.191916-1-irogers@google.com>
X-Mailer: git-send-email 2.24.0.rc0.303.g954a862665-goog
Subject: [PATCH v4 5/9] perf tools: ensure config and str in terms are unique
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
 header.i=@google.com header.s=20161025 header.b=VreoqVn1;       spf=pass
 (google.com: domain of 3mtqzxqckewymvskivwksskpi.gsqgperk-fympx-pmrybksskpikvsytw.gsq@flex--irogers.bounces.google.com
 designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3MTqzXQcKEWYMVSKIVWKSSKPI.GSQGPERK-FYMPX-PMRYbKSSKPIKVSYTW.GSQ@flex--irogers.bounces.google.com;
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
index 4c4c6f3e866a..fb6436a74869 100644
--- a/tools/perf/util/parse-events.c
+++ b/tools/perf/util/parse-events.c
@@ -1414,7 +1414,6 @@ int parse_events_add_pmu(struct parse_events_state *parse_state,
 int parse_events_multi_pmu_add(struct parse_events_state *parse_state,
 			       char *str, struct list_head **listp)
 {
-	struct list_head *head;
 	struct parse_events_term *term;
 	struct list_head *list;
 	struct perf_pmu *pmu = NULL;
@@ -1431,19 +1430,30 @@ int parse_events_multi_pmu_add(struct parse_events_state *parse_state,
 
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
@@ -1452,8 +1462,10 @@ int parse_events_multi_pmu_add(struct parse_events_state *parse_state,
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
@@ -2748,30 +2760,51 @@ int parse_events_term__sym_hw(struct parse_events_term **term,
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
2.24.0.rc0.303.g954a862665-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191025180827.191916-6-irogers%40google.com.
