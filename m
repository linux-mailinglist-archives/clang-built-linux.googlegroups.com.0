Return-Path: <clang-built-linux+bncBDPPFIEASMFBBKXUZTWQKGQETA2ZE5Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83e.google.com (mail-qt1-x83e.google.com [IPv6:2607:f8b0:4864:20::83e])
	by mail.lfdr.de (Postfix) with ESMTPS id 65489E5335
	for <lists+clang-built-linux@lfdr.de>; Fri, 25 Oct 2019 20:08:43 +0200 (CEST)
Received: by mail-qt1-x83e.google.com with SMTP id u23sf2876114qtb.22
        for <lists+clang-built-linux@lfdr.de>; Fri, 25 Oct 2019 11:08:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572026922; cv=pass;
        d=google.com; s=arc-20160816;
        b=g4iZ6QUxgLpeKyXHR8EaNWIkIWsuY1Bv1KKrKGcnMdBcGMZqfiv6ZTo13qYAli8VJZ
         C+egpC5pMJercSk840Gy9azQsGfAmzovTkhu9jb8Iz5lAsqCBK6bvyf2DhXqwgxELUpz
         3NXsk+b/KWQkxtxSaeRT/Q2MVzJGYzr9sPwUtrCe3O+1a4hB7Q6ph6gH4n/OG5e8kzVv
         53U+APMCPAvaXbquuxj0Rnk5ewJJwS03exTzj4LoIRaVIF6YQxRNmTOJufKpj8++0FvK
         vlr+fDmJ/4iXKOoC8fRCKtVmabD+wSoGM6jk52Ge61lg1AmztXnwUq4wrAeV1MwEehXc
         z3qw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=txcIjpWPo3KMqbZFB1dLA53q4v2dTkcjc6vbzQZ1XTU=;
        b=PTjgyk0kwM0JsKkFPbT8hw12VWe9qHPhnyHClytCLKpJxTjU/Yx74VI6Tqd744Ll4n
         D/9/Daoa8yje459w8wwmcQ7Acc/3qxX1S9Lph/O4FutB+Dk2bdoq5nxV61A2vcfeq8OO
         aR90BZLtZFX2c00HLca2A9B2rTGEkqhF5PqZ7mF1pMs3EjJmda3CNSrjQ3mGUcFN0irq
         rrpQDWfhv+XiUVpVdhHxzZMSzYjFE2IQtgUoECDoYOlCbFATcJyUbCX+EZ+z0/6GTL9b
         hLWjccpbviExrFjn7T6ia3tlUwrGYlQqDIYkN3dQ+TDT57I72R+NlqX+PWEPQ2mgSzEu
         wZPA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=NaP5JlN+;
       spf=pass (google.com: domain of 3kdqzxqckev0dmjb9mnbjjbg9.7jh7g5ib-6pdgo-gdipsbjjbg9bmjpkn.7jh@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3KDqzXQcKEV0DMJB9MNBJJBG9.7JH7G5IB-6PDGO-GDIPSBJJBG9BMJPKN.7JH@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=txcIjpWPo3KMqbZFB1dLA53q4v2dTkcjc6vbzQZ1XTU=;
        b=GBXzPqL8bEYoufXwnVD7mXU1tUSRcuU4egWyqVidvzqC2QF5JdgfPqvLwmTXne/zcK
         NBAvkcYiFsyPBZPj4ftXFVGMLbqEaZb5kMLVDPMzGXT3ruHZxKN5RpYJ+5avb8K8i4hg
         uCMBYyfLEuXuUWOQhRlhNR62hDcvx6ByO9CdzoKrM0hWqJZi02tV5iDqvmAhnR336ub1
         nSlWZpOo28zkSWTUyg+PNuJxyX+K60G/Y0hBejinZWE+Hi9gw7xNlYrH+DOgGDXw3ejc
         hcBjoYtynKDjFuKk/tXPTXbndOkivDEb9uQvCmkKCCcczU+NwMhG6kAThVWxGZcaAJab
         mIAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=txcIjpWPo3KMqbZFB1dLA53q4v2dTkcjc6vbzQZ1XTU=;
        b=A837lu+oKk1a1xPWwUg4QmpEVQEpb6bxq6AY3azmCTPpCzn9IMpYaAgNhvXv29NASg
         +jszwrXCs1EwnvYe54+fn79fEN3HYU3VURRZjLCA7wBrMQfGW62dyhzLPjHYk6ciYqXb
         wNMinrMYFDFNPKNH05b2ozkvTEvHUtcI9JnHv9qRURazqrMuTQLXZy7RnJC6GK34eUFq
         1qEFG9FjTdD8/uxwRRy8L3MIV29Ryg+yTfFKUEpS1kMLWphn3Bo+EUW2zqk96bb/J3ka
         fUu+6KAL/NkIuIyMxwJ0WA+M50B3TsLnPf7t1wUcejKT4NmWI4BLP5igbdSDunXDBbuS
         p8ug==
X-Gm-Message-State: APjAAAUv5bb7zvk+t4YjPABhywPHqrIuuiqwty9/z2J4KF90gO+YaoK9
	EZY20YSFsW/nSmob5EmN44w=
X-Google-Smtp-Source: APXvYqyVYYc8lSju+zkrRl2WWtYkJ4UmhUiMWSOMwK06X9DI18mDxWlmMrTlFP8AwEok67lhC5BGCg==
X-Received: by 2002:a05:620a:1659:: with SMTP id c25mr4089501qko.297.1572026922109;
        Fri, 25 Oct 2019 11:08:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:3c70:: with SMTP id u45ls3118379qte.16.gmail; Fri, 25
 Oct 2019 11:08:41 -0700 (PDT)
X-Received: by 2002:ac8:4248:: with SMTP id r8mr4297445qtm.98.1572026921807;
        Fri, 25 Oct 2019 11:08:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572026921; cv=none;
        d=google.com; s=arc-20160816;
        b=f5d0aW7NjamXa+SQOafwxeqbm22ilCCjr7OdCnO6MZDcg/Jj6/woCP1J+nBhqF7x7F
         4qLUxdR2UDL0mw8SRges/4heDr5MgnpWbdOqZvSqH0bQz+cbwRayQzrKH62lkbp1RxIk
         KDAVaC4Gf8srsImQUp/0+5GWGmggVcP17uhBct5uE7d6txWC06LnbxYoTlIHbLdGFrO4
         0ifCrhwww/lZtd0jrwXdbxPYTaVhWTYYT5IQLzWX47pCa3LhyYt5p++wIzuUlM9R2DKY
         5fYaoxB4ttB2e1mTJLxCM25+b7JTgml7U7T4E5dPZQthbKnmYLV+W6QNGyOfCz44/lhc
         s5Dg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=wRg/ZOz5Sv3KFksCXWkdb5uyUHUz1WOkPfhEj4f8E+w=;
        b=K647kwxcklg03Uvbv7dQM4D3WwrydAdRGynS1d87pGQNUMLzETuBRNvivdR7rPccMv
         M/hn0CuXn3KP1yKUD2fLa/kudln3G3w4ssTTwNe3xu8fqJUQuv1aw+SG6sgPr71e3mkY
         DfemEdag5RhsmDBXkjY/G/d8ZKr6+kXzHtTNp2jFB7a308hY2XBW8tYyA4xa1Wv9LyU+
         hgEZUt6O5+XEOgJOgJlhUvX3lHWF6doe8AW18CcA7Ghwdm1gLBYB4Xd6UKTLo5Tv2xXZ
         2BIeNwpI8NU4V+ymEXc+wW+q7AwkpH4zNxzlPdY22GwUG9ZcORslu/zAumlnyyLV21qs
         GV0Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=NaP5JlN+;
       spf=pass (google.com: domain of 3kdqzxqckev0dmjb9mnbjjbg9.7jh7g5ib-6pdgo-gdipsbjjbg9bmjpkn.7jh@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3KDqzXQcKEV0DMJB9MNBJJBG9.7JH7G5IB-6PDGO-GDIPSBJJBG9BMJPKN.7JH@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x449.google.com (mail-pf1-x449.google.com. [2607:f8b0:4864:20::449])
        by gmr-mx.google.com with ESMTPS id t187si186627qkd.0.2019.10.25.11.08.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Oct 2019 11:08:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3kdqzxqckev0dmjb9mnbjjbg9.7jh7g5ib-6pdgo-gdipsbjjbg9bmjpkn.7jh@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) client-ip=2607:f8b0:4864:20::449;
Received: by mail-pf1-x449.google.com with SMTP id a1so2525151pfn.1
        for <clang-built-linux@googlegroups.com>; Fri, 25 Oct 2019 11:08:41 -0700 (PDT)
X-Received: by 2002:a65:609a:: with SMTP id t26mr6161474pgu.349.1572026920964;
 Fri, 25 Oct 2019 11:08:40 -0700 (PDT)
Date: Fri, 25 Oct 2019 11:08:20 -0700
In-Reply-To: <20191025180827.191916-1-irogers@google.com>
Message-Id: <20191025180827.191916-3-irogers@google.com>
Mime-Version: 1.0
References: <20191024190202.109403-1-irogers@google.com> <20191025180827.191916-1-irogers@google.com>
X-Mailer: git-send-email 2.24.0.rc0.303.g954a862665-goog
Subject: [PATCH v4 2/9] perf tools: move ALLOC_LIST into a function
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
 header.i=@google.com header.s=20161025 header.b=NaP5JlN+;       spf=pass
 (google.com: domain of 3kdqzxqckev0dmjb9mnbjjbg9.7jh7g5ib-6pdgo-gdipsbjjbg9bmjpkn.7jh@flex--irogers.bounces.google.com
 designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3KDqzXQcKEV0DMJB9MNBJJBG9.7JH7G5IB-6PDGO-GDIPSBJJBG9BMJPKN.7JH@flex--irogers.bounces.google.com;
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
index 48126ae4cd13..5863acb34780 100644
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
2.24.0.rc0.303.g954a862665-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191025180827.191916-3-irogers%40google.com.
