Return-Path: <clang-built-linux+bncBDPPFIEASMFBBMWJX3WQKGQEH2AMX4Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x138.google.com (mail-il1-x138.google.com [IPv6:2607:f8b0:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A92F2E0F5B
	for <lists+clang-built-linux@lfdr.de>; Wed, 23 Oct 2019 02:54:11 +0200 (CEST)
Received: by mail-il1-x138.google.com with SMTP id h22sf11118706ild.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 22 Oct 2019 17:54:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571792050; cv=pass;
        d=google.com; s=arc-20160816;
        b=KNcsOrw3TXfIWBMenp3gGB3/JUVyUd1iafnHqWSaU8KbeTu9fV95oi0Ds73HwZlaKN
         hDnEr4+otC5SWLJR52rIoeXdAar+VEEr1vB5hOES/BTyqautYcu79RYYArbTH3A+SeDU
         WPTXKAXWMdXrI/Ox26uzyND7T+hzS5zPx/lfEYFdI/Ew5ga90/tjIIdsDGlxTdljQhPf
         etP4uexYt4+x7RNxCWPcDSUuveCcETF0Ra21YMGvevdlzj65tIGjQ5boHEcigkWvzwMv
         sV0mPbpPIkt6DmKOIroQRUrsF+3xecY4xKi0CyXTqWk5D0rE9DXUhwqBL8MqHLDFTpWE
         WG0A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=GahxpW2XcDVOylFnsnPbOyDdUwaRJwqtjS1QGNtBvUw=;
        b=vefrdAFypfWri7E+4hrEH0EoFMkZZxeJUeCWtvwAfUME+MKfkGqSx8ja53+yrmB1El
         TBBIX0MqOKiPqOW6Bdx+lnuYaE/26b3Sl+eE3Q5ZSM6m0lVEUuN/hoE4S9+1CY21FZ5M
         TyWuKatnZMzgotZetc+NBk3fhrKyA2KkWvEhIhvNvgtf6PlK5lZixXexa60E5YM0uUOd
         zaynl+mi/3OYez6Y2EKTfNpswC+N6tCvgb6LE6SH4u36R1qrePAEIHqKirJfJTM1r3JO
         MNIKu93qz2za/xDfYAbwh9iU9AA0tJdIafmyzJ3GOHvBSF9KGnRt3thIzTdvTEvQ+uCF
         T7qw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="h/cpUy8C";
       spf=pass (google.com: domain of 3sksvxqckeastczrpcdrzzrwp.nzxnwlyr-mftwe-wtyfirzzrwprczfad.nzx@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3sKSvXQcKEasTcZRPcdRZZRWP.NZXNWLYR-MfTWe-WTYfiRZZRWPRcZfad.NZX@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GahxpW2XcDVOylFnsnPbOyDdUwaRJwqtjS1QGNtBvUw=;
        b=iMurmny9KycWA6sVxU215gzgDdPMzqclsUI9CCUF+k+PO3LkCj4m7zYYVNDyDATkfz
         e2mKXsCMW8fijtwZs7kMytiaoNCUFPE4i+EqhpWlIBiLxMLVETXUR0zjp3oZwY/85njP
         HLh6/W7sj2h3mWDo1yoSFsyLvBewPtW4d8r4ubddvR4B26vCNHckPJ31Ifn6WUnjkMO7
         VJYc/O4DIx2yzb/qYo45h6UECr/aWGM89Mkk0ZZtK/7+iV/IP06Z3qbKj459fOUuGG1S
         E0M/4QD+h7111HL6aQ8WF3sXNRE78bFeArj2dwb+esDtNPV9TXynwbSfS2F0olZ2oGWd
         LV5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GahxpW2XcDVOylFnsnPbOyDdUwaRJwqtjS1QGNtBvUw=;
        b=NdECuOt1vBn9i2xT4SQj1DLLj4EwBRlMs3LYcz6oupZ6BxbjTXi5oHTBuWXj4TjES3
         1hpTOecCubUqeXFJD/EwpsCJC1grGTeyrZoZEQoVIp5nXdj0smXBfQ65TFTcxWLZhTgu
         vhLBzxtzJqSKJ3L0yMazxtsB3gSdgBBRp3qI5bnI1ciQK/MbJFIsP7pIp4JrPjg1Y6tF
         pkktbWKrrzMACIMH3k43SaFa4XvLe17LBvkVU2MYQh0wekU2LwEXEVJ2zGI8ni8sy1mo
         LAvNx9dTqAd58E8tu9gZAvNAumwFirtnY7PTPBY8QCjdR64NEJ+ezd/F7aYPtRRVKQxt
         bpEA==
X-Gm-Message-State: APjAAAXyOvMjVGEsQp5NqqKwCR6ypytT/CfBq4NdYKV5cCDiRszqEYsH
	OupFRBVdF+en0WRZn04m57I=
X-Google-Smtp-Source: APXvYqwAyxeQ/hfltDbE3Ab3xTM0EYKwSWYYa1Nj97gS/hzs+taUS4IKDYcriWCRykR/wVQRwKmxpw==
X-Received: by 2002:a5d:8b12:: with SMTP id k18mr734810ion.133.1571792050344;
        Tue, 22 Oct 2019 17:54:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:9c1a:: with SMTP id 26ls74651ioe.12.gmail; Tue, 22 Oct
 2019 17:54:10 -0700 (PDT)
X-Received: by 2002:a6b:7847:: with SMTP id h7mr708026iop.141.1571792050043;
        Tue, 22 Oct 2019 17:54:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571792050; cv=none;
        d=google.com; s=arc-20160816;
        b=bCd1o/MvycHwngygm8NZReHBpDr6QzT2/4k/gDEfdABf2mfSEn9/S0oGqYu/fbvhFs
         3GZmyJXVOp/8YHW8h0godlohwdYWp7cs7G9z/7zEFxVd+VbrasmPKlPnUexaigk/cbsh
         x6HnFWyfhZXTMWz+EV1BiNVwJNcfOq4IvQrI493oiou7YxtF/iji/r366EqGLTbqa++2
         zutltHVmC3UewK1Mwetpp9f6KDHAkBe1iNoz5akBz+St916ldgb9uf9vZTd+Cr4a+fRB
         Y1NYVQrukmoICptEUDZssjdWapO6cwsF2MQMceM29C8rob9Xrzat6MVtTZFVdSGSBS3K
         A/Dg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=9DHgkR7cmmDrBt85CUovVuVoj+UrHvSyU5cnghVTVvs=;
        b=xPS0pKcRz0nM0tuZS6JR1RHTGP5rKMo80HREklbfdGY2wpljHgDSBY3Eqe+kTGb9Fi
         2h+r9c97YO4HIpwrSTghsMWl/vtYBZcBH+HfNv5pq4FIPTOM8dgnJKLsQJSU+71g49RB
         0iEdgtsI2dt0Xg6r3N7VSemiPhGZ309ZdaVp73ClsMZ+EdhXQJ5XCMgpAeYYnZOd6X4n
         29WQjwswlwWaoqJ3NE7TXPZx/8iqrthkw/Uqd1YPxptEhE9/1btvdn8y706tDmvwYQ3u
         Alup8HMds2xzU3uib6uG6Bc4XahUVvPXJfcYSPDAG2zr7e0ptkzsn99ea6H8oXbuROO6
         RkWQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="h/cpUy8C";
       spf=pass (google.com: domain of 3sksvxqckeastczrpcdrzzrwp.nzxnwlyr-mftwe-wtyfirzzrwprczfad.nzx@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3sKSvXQcKEasTcZRPcdRZZRWP.NZXNWLYR-MfTWe-WTYfiRZZRWPRcZfad.NZX@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x549.google.com (mail-pg1-x549.google.com. [2607:f8b0:4864:20::549])
        by gmr-mx.google.com with ESMTPS id s5si804945iol.1.2019.10.22.17.54.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Oct 2019 17:54:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3sksvxqckeastczrpcdrzzrwp.nzxnwlyr-mftwe-wtyfirzzrwprczfad.nzx@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) client-ip=2607:f8b0:4864:20::549;
Received: by mail-pg1-x549.google.com with SMTP id b14so13806025pgm.22
        for <clang-built-linux@googlegroups.com>; Tue, 22 Oct 2019 17:54:10 -0700 (PDT)
X-Received: by 2002:a63:1209:: with SMTP id h9mr3469286pgl.394.1571792048914;
 Tue, 22 Oct 2019 17:54:08 -0700 (PDT)
Date: Tue, 22 Oct 2019 17:53:32 -0700
In-Reply-To: <20191023005337.196160-1-irogers@google.com>
Message-Id: <20191023005337.196160-5-irogers@google.com>
Mime-Version: 1.0
References: <20191017170531.171244-1-irogers@google.com> <20191023005337.196160-1-irogers@google.com>
X-Mailer: git-send-email 2.23.0.866.gb869b98d4c-goog
Subject: [PATCH v2 4/9] perf tools: move ALLOC_LIST into a function
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
 header.i=@google.com header.s=20161025 header.b="h/cpUy8C";       spf=pass
 (google.com: domain of 3sksvxqckeastczrpcdrzzrwp.nzxnwlyr-mftwe-wtyfirzzrwprczfad.nzx@flex--irogers.bounces.google.com
 designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3sKSvXQcKEasTcZRPcdRZZRWP.NZXNWLYR-MfTWe-WTYfiRZZRWPRcZfad.NZX@flex--irogers.bounces.google.com;
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

Having a YYABORT in a macro makes it hard to free memory for components
of a rule. Separate the logic out.

Signed-off-by: Ian Rogers <irogers@google.com>
---
 tools/perf/util/parse-events.y | 65 ++++++++++++++++++++++------------
 1 file changed, 43 insertions(+), 22 deletions(-)

diff --git a/tools/perf/util/parse-events.y b/tools/perf/util/parse-events.y
index 27d6b187c9b1..26cb65798522 100644
--- a/tools/perf/util/parse-events.y
+++ b/tools/perf/util/parse-events.y
@@ -25,12 +25,17 @@ do { \
 		YYABORT; \
 } while (0)
 
-#define ALLOC_LIST(list) \
-do { \
-	list = malloc(sizeof(*list)); \
-	ABORT_ON(!list);              \
-	INIT_LIST_HEAD(list);         \
-} while (0)
+static struct list_head* alloc_list()
+{
+	struct list_head *list;
+
+	list = malloc(sizeof(*list));
+	if (!list)
+		return NULL;
+
+	INIT_LIST_HEAD(list);
+	return list;
+}
 
 static void inc_group_count(struct list_head *list,
 		       struct parse_events_state *parse_state)
@@ -238,7 +243,8 @@ PE_NAME opt_pmu_config
 	if (error)
 		error->idx = @1.first_column;
 
-	ALLOC_LIST(list);
+	list = alloc_list();
+	ABORT_ON(!list);
 	if (parse_events_add_pmu(_parse_state, list, $1, $2, false, false)) {
 		struct perf_pmu *pmu = NULL;
 		int ok = 0;
@@ -306,7 +312,8 @@ value_sym '/' event_config '/'
 	int type = $1 >> 16;
 	int config = $1 & 255;
 
-	ALLOC_LIST(list);
+	list = alloc_list();
+	ABORT_ON(!list);
 	ABORT_ON(parse_events_add_numeric(_parse_state, list, type, config, $3));
 	parse_events_terms__delete($3);
 	$$ = list;
@@ -318,7 +325,8 @@ value_sym sep_slash_slash_dc
 	int type = $1 >> 16;
 	int config = $1 & 255;
 
-	ALLOC_LIST(list);
+	list = alloc_list();
+	ABORT_ON(!list);
 	ABORT_ON(parse_events_add_numeric(_parse_state, list, type, config, NULL));
 	$$ = list;
 }
@@ -327,7 +335,8 @@ PE_VALUE_SYM_TOOL sep_slash_slash_dc
 {
 	struct list_head *list;
 
-	ALLOC_LIST(list);
+	list = alloc_list();
+	ABORT_ON(!list);
 	ABORT_ON(parse_events_add_tool(_parse_state, list, $1));
 	$$ = list;
 }
@@ -339,7 +348,8 @@ PE_NAME_CACHE_TYPE '-' PE_NAME_CACHE_OP_RESULT '-' PE_NAME_CACHE_OP_RESULT opt_e
 	struct parse_events_error *error = parse_state->error;
 	struct list_head *list;
 
-	ALLOC_LIST(list);
+	list = alloc_list();
+	ABORT_ON(!list);
 	ABORT_ON(parse_events_add_cache(list, &parse_state->idx, $1, $3, $5, error, $6));
 	parse_events_terms__delete($6);
 	$$ = list;
@@ -351,7 +361,8 @@ PE_NAME_CACHE_TYPE '-' PE_NAME_CACHE_OP_RESULT opt_event_config
 	struct parse_events_error *error = parse_state->error;
 	struct list_head *list;
 
-	ALLOC_LIST(list);
+	list = alloc_list();
+	ABORT_ON(!list);
 	ABORT_ON(parse_events_add_cache(list, &parse_state->idx, $1, $3, NULL, error, $4));
 	parse_events_terms__delete($4);
 	$$ = list;
@@ -363,7 +374,8 @@ PE_NAME_CACHE_TYPE opt_event_config
 	struct parse_events_error *error = parse_state->error;
 	struct list_head *list;
 
-	ALLOC_LIST(list);
+	list = alloc_list();
+	ABORT_ON(!list);
 	ABORT_ON(parse_events_add_cache(list, &parse_state->idx, $1, NULL, NULL, error, $2));
 	parse_events_terms__delete($2);
 	$$ = list;
@@ -375,7 +387,8 @@ PE_PREFIX_MEM PE_VALUE '/' PE_VALUE ':' PE_MODIFIER_BP sep_dc
 	struct parse_events_state *parse_state = _parse_state;
 	struct list_head *list;
 
-	ALLOC_LIST(list);
+	list = alloc_list();
+	ABORT_ON(!list);
 	ABORT_ON(parse_events_add_breakpoint(list, &parse_state->idx,
 					     (void *) $2, $6, $4));
 	$$ = list;
@@ -386,7 +399,8 @@ PE_PREFIX_MEM PE_VALUE '/' PE_VALUE sep_dc
 	struct parse_events_state *parse_state = _parse_state;
 	struct list_head *list;
 
-	ALLOC_LIST(list);
+	list = alloc_list();
+	ABORT_ON(!list);
 	ABORT_ON(parse_events_add_breakpoint(list, &parse_state->idx,
 					     (void *) $2, NULL, $4));
 	$$ = list;
@@ -397,7 +411,8 @@ PE_PREFIX_MEM PE_VALUE ':' PE_MODIFIER_BP sep_dc
 	struct parse_events_state *parse_state = _parse_state;
 	struct list_head *list;
 
-	ALLOC_LIST(list);
+	list = alloc_list();
+	ABORT_ON(!list);
 	ABORT_ON(parse_events_add_breakpoint(list, &parse_state->idx,
 					     (void *) $2, $4, 0));
 	$$ = list;
@@ -408,7 +423,8 @@ PE_PREFIX_MEM PE_VALUE sep_dc
 	struct parse_events_state *parse_state = _parse_state;
 	struct list_head *list;
 
-	ALLOC_LIST(list);
+	list = alloc_list();
+	ABORT_ON(!list);
 	ABORT_ON(parse_events_add_breakpoint(list, &parse_state->idx,
 					     (void *) $2, NULL, 0));
 	$$ = list;
@@ -421,7 +437,8 @@ tracepoint_name opt_event_config
 	struct parse_events_error *error = parse_state->error;
 	struct list_head *list;
 
-	ALLOC_LIST(list);
+	list = alloc_list();
+	ABORT_ON(!list);
 	if (error)
 		error->idx = @1.first_column;
 
@@ -457,7 +474,8 @@ PE_VALUE ':' PE_VALUE opt_event_config
 {
 	struct list_head *list;
 
-	ALLOC_LIST(list);
+	list = alloc_list();
+	ABORT_ON(!list);
 	ABORT_ON(parse_events_add_numeric(_parse_state, list, (u32)$1, $3, $4));
 	parse_events_terms__delete($4);
 	$$ = list;
@@ -468,7 +486,8 @@ PE_RAW opt_event_config
 {
 	struct list_head *list;
 
-	ALLOC_LIST(list);
+	list = alloc_list();
+	ABORT_ON(!list);
 	ABORT_ON(parse_events_add_numeric(_parse_state, list, PERF_TYPE_RAW, $1, $2));
 	parse_events_terms__delete($2);
 	$$ = list;
@@ -480,7 +499,8 @@ PE_BPF_OBJECT opt_event_config
 	struct parse_events_state *parse_state = _parse_state;
 	struct list_head *list;
 
-	ALLOC_LIST(list);
+	list = alloc_list();
+	ABORT_ON(!list);
 	ABORT_ON(parse_events_load_bpf(parse_state, list, $1, false, $2));
 	parse_events_terms__delete($2);
 	$$ = list;
@@ -490,7 +510,8 @@ PE_BPF_SOURCE opt_event_config
 {
 	struct list_head *list;
 
-	ALLOC_LIST(list);
+	list = alloc_list();
+	ABORT_ON(!list);
 	ABORT_ON(parse_events_load_bpf(_parse_state, list, $1, true, $2));
 	parse_events_terms__delete($2);
 	$$ = list;
-- 
2.23.0.866.gb869b98d4c-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191023005337.196160-5-irogers%40google.com.
