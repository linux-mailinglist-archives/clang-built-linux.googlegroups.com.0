Return-Path: <clang-built-linux+bncBDPPFIEASMFBBOXKY7WQKGQES5X2MEA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63a.google.com (mail-pl1-x63a.google.com [IPv6:2607:f8b0:4864:20::63a])
	by mail.lfdr.de (Postfix) with ESMTPS id 66D13E3B96
	for <lists+clang-built-linux@lfdr.de>; Thu, 24 Oct 2019 21:02:20 +0200 (CEST)
Received: by mail-pl1-x63a.google.com with SMTP id o10sf4458975pll.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 24 Oct 2019 12:02:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571943739; cv=pass;
        d=google.com; s=arc-20160816;
        b=kU44xkk4DBtushQ6OFAwuE0L1WlJO80yb/bcrj4iuMxQDmu7WpeYJSMjPFGnUcx5qH
         loBx8grc76yuZNi6nN7ow5YPD5r3X5G0AJKaeM/ViEADnZZl3TKEeSRAdv/lyAyU8dGy
         P2RqPbrz/OGY+z5oL8QnpUhlTpIqyNVacEcK9C29+0EB9WZgGgNfMoS8kWgCsIGo0LYU
         6eqvfT9j7LJ9QfioysgQivHMxEmgXsjpuKCICWKY7V5/M6Uy8SHgEWIfps0qYehB6648
         MDQK9JOg5PxHhktk1lAUnNcHHdqsszX8LxvjbO/hV+DUZGHv8DHivY8xa55vyVQ1IBz/
         FBJQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=TxDHgvyjtKQicjQuZGeD2u9NJ0RT4tJVXKh1GN19wwE=;
        b=Ridekg34l8pZccFSRsT9baNWDCGNnWbhQxKQak1poX80HNiO6hny9hNzBSBUHka0BK
         GKY3p88pZ+S174SVXmEHsPsp+bGimB03I3u9V9YT+qydUtmQvD2LV0Wi95PjvJx8rlWu
         3ZbiD57y5jL/RcAxoKs0/U8VDYwrKhFCWrS2UbswlLyFP4E0JowZqCCLYX4QWah8PYN9
         7dQ03FGWHghSSv8Cfa7SdCbDWKnI+2NN7M98f2DwTKgynziQe3BQswK+rsAq7WGonaQ/
         5rOqX/eAPWQSO9DNlM87KE/1dwSw2pYH11pqt8JlESIetwnZ5sh/8dLAgJE7rjrqon8H
         J5tQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=njrWeh+s;
       spf=pass (google.com: domain of 3ovwxxqcked8jsphfsthpphmf.dpndmboh-cvjmu-mjovyhpphmfhspvqt.dpn@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3OvWxXQcKEd8JSPHFSTHPPHMF.DPNDMBOH-CVJMU-MJOVYHPPHMFHSPVQT.DPN@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TxDHgvyjtKQicjQuZGeD2u9NJ0RT4tJVXKh1GN19wwE=;
        b=OiHDHUnYaFsaeOX419WM8WnDenO5JmuPFipUCvipn23f6B6oplhKNU68ZR+Pyn2sUI
         Q0HPh4IHooXSfW7wQsBzrOUXNz0Alld2d2Tz82EFiha9MDWU9cknSVMoIVHzjfixLA7r
         PDziCecuyFCAcBd8WPzJo0JHQUYiUal4ulxVkKqrG+P7ldF882QTrP1ATEU29+KStd8q
         27/hzacf3YoTHbhRiYk9iZ0fCgfHMn2zkkMKd98BHs3goaiqBK5skMAGpcSDGVGI4/pk
         4eccfZ9H0cEal83sRuWIp2vSeqMn4904YBNhvyenrSZwBflAhYikfq/8LbeaiVLT1eqB
         jaDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TxDHgvyjtKQicjQuZGeD2u9NJ0RT4tJVXKh1GN19wwE=;
        b=IHs8Ayh0MX6uO+3Hx81+blhRTq1GwI19/byc3vmX7yBynoTGcZL4QdAHtu3qfFtiUf
         Cy5nho/a6h4KaGZn28ngguaR1DTO+7JFDN8pIbmIyvoaJYO5CQIcGd0O79wEzdTmKE54
         pqfjBy60VbZxilJy1GsfU4XdyslzDmHH0gl89MuH6rd/Yi5kXunUKYaPaIdb3jYv1zLt
         CaB7cHwBm+Ijv0c8dAXZPe52zaYJi0PLs1WqJ1dUxrOZS1c0XmCEX9JmIeRf4Za0dPXZ
         3fjq8YZ0ucEQdZ70WFQwejIRf1YNofdOiELGvnvc2IwLNeLqL5RlMslbG8+V2DKQQj8X
         FK0g==
X-Gm-Message-State: APjAAAVcmB9houfEEH6AS1kiM9w2D0Z8bHscfZ0lcIV6OyQqN5NJTq1i
	+FCTMAr4UUqxX/7/ZWZZuJk=
X-Google-Smtp-Source: APXvYqylAl80Q7GmAJzwTHWhbk56i58WI53TwYmBvihx0Z1hGMknn4ZgeOjRFRBNA8hSUTR9ZR0KzA==
X-Received: by 2002:a17:90a:304:: with SMTP id 4mr9235511pje.128.1571943738989;
        Thu, 24 Oct 2019 12:02:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:85cd:: with SMTP id z13ls2133815pfn.15.gmail; Thu, 24
 Oct 2019 12:02:18 -0700 (PDT)
X-Received: by 2002:a63:af1a:: with SMTP id w26mr4660787pge.251.1571943738603;
        Thu, 24 Oct 2019 12:02:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571943738; cv=none;
        d=google.com; s=arc-20160816;
        b=VZ8JbVih4UkRnjN9mF6QIrr01SlS1v1johjc8WzFTqrrZGcFtJkETOS/dzD+TDw8xr
         Pfp9Dzr6DM4kv/L1bFwtRlyNJ8fTkuJeJ9WAZmgkFe6jojsBoJd/y7LkYYwqSe+AGTnX
         kuI49zC9xbWBISCVBDTUJ5wd9a80s9wlJqNZZxje28wjYI+ZhAs20+Ar7o9gnMAkdTbk
         3Za18rpnOolRsMBx8acxTjzq9lWsGYs/LC96znDS0IprgL4Ym5y9tirSIQJrMJLj44gY
         32msIPDnrFkgpWNO7YwPmv7ZtMmGJqsDAykpnef012vo9XiIm3WBZKX9j+eGH5QLmDoK
         47Qw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=9DHgkR7cmmDrBt85CUovVuVoj+UrHvSyU5cnghVTVvs=;
        b=fa6U/nF/fJAL8CxLIUpRTgUpMf4SgRwN5yfgGphoEBBtHcIaTcTmHoWbR9X9sL3rNN
         uDpO41tZUr9wqcIEw6cwV6tLBiUBz/BSnHkXGqF/NSTjd2dQh0IYssT/It4fy2HRdO4L
         8q27TZFET+N1dmV56bYC9mkYJ+n+2vafUoq6OkYouo5zE1rtdKgyhAihENXlNXf76b1g
         oWUbM5Z4P/ROL/frKg4dPP6TI7+6BKzr3RnjIWctJ9jAh+/nV9ZVwzwiWwCHjk8r550J
         UvjKBTwJwNkrGS6d043WIzMRpVijGyNlK5JiDQcqSh07pIlF23bPyLYPvP5CVhDJw9rG
         xdTA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=njrWeh+s;
       spf=pass (google.com: domain of 3ovwxxqcked8jsphfsthpphmf.dpndmboh-cvjmu-mjovyhpphmfhspvqt.dpn@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3OvWxXQcKEd8JSPHFSTHPPHMF.DPNDMBOH-CVJMU-MJOVYHPPHMFHSPVQT.DPN@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x54a.google.com (mail-pg1-x54a.google.com. [2607:f8b0:4864:20::54a])
        by gmr-mx.google.com with ESMTPS id h13si114158pjb.0.2019.10.24.12.02.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Oct 2019 12:02:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3ovwxxqcked8jsphfsthpphmf.dpndmboh-cvjmu-mjovyhpphmfhspvqt.dpn@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) client-ip=2607:f8b0:4864:20::54a;
Received: by mail-pg1-x54a.google.com with SMTP id b24so18533740pgi.5
        for <clang-built-linux@googlegroups.com>; Thu, 24 Oct 2019 12:02:18 -0700 (PDT)
X-Received: by 2002:a63:1511:: with SMTP id v17mr18054703pgl.34.1571943738017;
 Thu, 24 Oct 2019 12:02:18 -0700 (PDT)
Date: Thu, 24 Oct 2019 12:01:57 -0700
In-Reply-To: <20191024190202.109403-1-irogers@google.com>
Message-Id: <20191024190202.109403-5-irogers@google.com>
Mime-Version: 1.0
References: <20191023005337.196160-1-irogers@google.com> <20191024190202.109403-1-irogers@google.com>
X-Mailer: git-send-email 2.23.0.866.gb869b98d4c-goog
Subject: [PATCH v3 4/9] perf tools: move ALLOC_LIST into a function
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
 header.i=@google.com header.s=20161025 header.b=njrWeh+s;       spf=pass
 (google.com: domain of 3ovwxxqcked8jsphfsthpphmf.dpndmboh-cvjmu-mjovyhpphmfhspvqt.dpn@flex--irogers.bounces.google.com
 designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3OvWxXQcKEd8JSPHFSTHPPHMF.DPNDMBOH-CVJMU-MJOVYHPPHMFHSPVQT.DPN@flex--irogers.bounces.google.com;
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191024190202.109403-5-irogers%40google.com.
