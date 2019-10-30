Return-Path: <clang-built-linux+bncBDPPFIEASMFBBE5A5DWQKGQEZUQF3MY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53e.google.com (mail-pg1-x53e.google.com [IPv6:2607:f8b0:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FC96EA63D
	for <lists+clang-built-linux@lfdr.de>; Wed, 30 Oct 2019 23:35:01 +0100 (CET)
Received: by mail-pg1-x53e.google.com with SMTP id t28sf2720002pgl.21
        for <lists+clang-built-linux@lfdr.de>; Wed, 30 Oct 2019 15:35:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572474899; cv=pass;
        d=google.com; s=arc-20160816;
        b=Xqp0YVB9ZMlgBg/TwtBQel8EW0SQH+dksY5LSruWjMuqVSEiBFg4mPck+hcWa3Eo0y
         MT/MgRBu19RyvgSZMWMmiACoFhKvq0BjcrEI96mYcykvWh9xHtGVsOuMFk7gojeZVwsJ
         O2yCqQyxYhzHjnGYa46qnMrTQwVa0fVSpH1ujomkKtRC7c/MLgKx33YxY2GxMPIKchyU
         BGDf1Fh8oM4fTwy8s8wSRzC3udSlMT3m2ObIHQoXAJ8AXxOODVIfNwmJq0fedep95HKk
         uFVt3XuUQYFUbB+bA+M+FlBJdvW4sW58I8TFktzPlJF+27e2m1L+BK+SwcsvL2Y7s04m
         KRgA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=EjXJIJ5ohElc3NvoiQwAJiumCZKeGHeWu+Cf0QpxL+g=;
        b=wB3t1knwF3ZPPWoOKS6Rbb0w40e8qU4zq6Wy3VDaa0M0isFU5bwcmf/JJuhjf90PWK
         aKh1ebBtjB5hqBO4NGBDBt5ByItZyIjtmNCHXnnMI3fpuZuRazFQAH8ukiM4P9e028k4
         3T3V9pJ/jUrj2Rl2WwUl4N86ga+/dafBfooLAhwu1uwa66G3ca8drZmFoSasnR3eIdxp
         +lTtsGCE6oL9RsD16nEDucuwznpOZD/aUeAuEc3x49E7SC9JgOdwPeNyyAgoM4ekOCo7
         0Oyq7inGIUAXhUB/NI0R54OvBE6+lKCSETBk8QPNETWU8VJxVfzYJATEyDzVN5x7USPp
         HwoQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=g3m4sEJ5;
       spf=pass (google.com: domain of 3ehc6xqckeq8x63vt67v33v0t.r31r0p2v-q9x08-0x29cv33v0tv63947.r31@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3EhC6XQcKEQ8x63vt67v33v0t.r31r0p2v-q9x08-0x29Cv33v0tv63947.r31@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EjXJIJ5ohElc3NvoiQwAJiumCZKeGHeWu+Cf0QpxL+g=;
        b=gF3xA71Kw8fv6scsDbF6yKHZ1FpYAOQt3jaABQMWujLisH5c+JZmmQtwK7bUtuT0p3
         pyr8HxEEEIWzzntk+em3irPC0lR0xFjFskjPBEP7Qp0CuxJNCkxYCbbtBg91XtKPWkCN
         4GgSQuMTyVThR2apeFfry4Yg6oPefscinLam1LzatwQNmJw7W5wvMIpEfLDBXcrl69Kj
         mctoMOrjRQ+vymLp9aSMpQwKZPYgQS8r/hf9j7wUEJKK3d2rSEANTFiBo4p7mWfM5Bfi
         kChSwFyqFDSqkZmrgKeErvWkHY/jyHgu+X5pqux0/RkidBIEg/n8bU8RARpUlR3WFQuM
         PPpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EjXJIJ5ohElc3NvoiQwAJiumCZKeGHeWu+Cf0QpxL+g=;
        b=YyyjrO16U8vq6X7pGcTui/bPUWJ0XPvbFvndr5wjEgUGZ/TvnLeGsNKPgLRaz29O4f
         lvpsWlzTMRTPDmPedsTGHrsVZK2DfJOfyyKY+drWL7PDqk/hkPKfe2uIUSQajYIbYX8L
         f2gB6hmc0fVneDwsMAk/lqXQhu3iJ3G2XXg+zQqr5YBZSLDK7b44alUrouCY2AwGxECQ
         6RMzYH2TWZu7tDO1YL9uwoIVffnt/RG/4jvUVPmL+MaS2sl4mvSGYtJwCB0Njp1UGRvm
         jWyj9giICOq0QKwfNn1bCyQqdDGnLDVJrcp9j86E2zomHYMAYeYzWofb1Todf9m6iMgt
         z2vA==
X-Gm-Message-State: APjAAAWUvLcG0Nhk/wT7DJZnnOUcPO8uSTFLaTr1V5ChUPNbRXisEPKx
	d/Pifl6lYjT6znZqiV7WLj8=
X-Google-Smtp-Source: APXvYqyUpp2lSePnO0pj/z4qupnoumjXo90h9C91xibGldMFFrWxv534b5EG6fUK5ma1cNw2EH6ZyQ==
X-Received: by 2002:a17:902:6b07:: with SMTP id o7mr2523534plk.215.1572474899476;
        Wed, 30 Oct 2019 15:34:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:9c01:: with SMTP id f1ls221964pge.0.gmail; Wed, 30 Oct
 2019 15:34:59 -0700 (PDT)
X-Received: by 2002:a65:4189:: with SMTP id a9mr1984098pgq.380.1572474898988;
        Wed, 30 Oct 2019 15:34:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572474898; cv=none;
        d=google.com; s=arc-20160816;
        b=x/2Ck+0Bw1cYRUkYDP9k/wjRX1OdNBx9d8n/Jki9bWtqmsXsZzkXT0Zt+6XhLzN0rl
         K4JhliyS1CmOKV0m+H7UH0+z744dTrTgWUFXZksHDKPiO0UTvyX5VKriT918EqM2VK67
         FDy/27XYcaejT8knvttiP6uXe1xXJAdP28hy8bpNRawHBD6GQP7YY6YS8WJgeRpzfloN
         zVbZkPyGwNHi8bmFk2gMA/sllGRZMSxW9Y7G2XAQM25bMOHjNngCq4gZVtTXk7BE904m
         Ym3h6rzS4LL80ysDMR/DqzWNHu8bMcHX142iUM7eBCMy+jgJ5ufWSqjQPwejNzkh15Kx
         nduA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=H1WJqf6XxMblv8i9/DKNkxzkDXfEbE3x/vJu9p1A8xw=;
        b=ZGFtiu1Gg02g0bTIO8Qd2VxUaH7UBnxx+KH8Ss2Utkcuju5DkroFv2phIErfT/rCyA
         GMnPCNyghbwhwSGPlp5Psqx1fQXXU2CEJkjTNKvSGqDCGEbT9xyefq4SAzouX/HUhLcH
         d3Yhw9FeKvZl0Tn8YzJMihPMNOgX6WcBHecupcFzYdiYUp82Gf4e6WQ6vyGphbSIAWXZ
         z4YxlD5PC3FsjOIhkpHLp0CcVPVZw0uSQ7SDuLlxsXW0gCU0NDD1yeO7JevTR2+qEe6/
         IEiUNiYEEANgu32k2dNyI1bcPk6b2j4eEpTscEFIcHhT3vOk6/dNWzPxCEjsdKThjBrC
         sNcg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=g3m4sEJ5;
       spf=pass (google.com: domain of 3ehc6xqckeq8x63vt67v33v0t.r31r0p2v-q9x08-0x29cv33v0tv63947.r31@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3EhC6XQcKEQ8x63vt67v33v0t.r31r0p2v-q9x08-0x29Cv33v0tv63947.r31@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x449.google.com (mail-pf1-x449.google.com. [2607:f8b0:4864:20::449])
        by gmr-mx.google.com with ESMTPS id ba9si63627plb.5.2019.10.30.15.34.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Oct 2019 15:34:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3ehc6xqckeq8x63vt67v33v0t.r31r0p2v-q9x08-0x29cv33v0tv63947.r31@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) client-ip=2607:f8b0:4864:20::449;
Received: by mail-pf1-x449.google.com with SMTP id m185so2883267pfb.11
        for <clang-built-linux@googlegroups.com>; Wed, 30 Oct 2019 15:34:58 -0700 (PDT)
X-Received: by 2002:a63:595:: with SMTP id 143mr2006669pgf.45.1572474898197;
 Wed, 30 Oct 2019 15:34:58 -0700 (PDT)
Date: Wed, 30 Oct 2019 15:34:40 -0700
In-Reply-To: <20191030223448.12930-1-irogers@google.com>
Message-Id: <20191030223448.12930-3-irogers@google.com>
Mime-Version: 1.0
References: <20191025180827.191916-1-irogers@google.com> <20191030223448.12930-1-irogers@google.com>
X-Mailer: git-send-email 2.24.0.rc1.363.gb1bccd3e3d-goog
Subject: [PATCH v5 02/10] perf tools: move ALLOC_LIST into a function
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
 header.i=@google.com header.s=20161025 header.b=g3m4sEJ5;       spf=pass
 (google.com: domain of 3ehc6xqckeq8x63vt67v33v0t.r31r0p2v-q9x08-0x29cv33v0tv63947.r31@flex--irogers.bounces.google.com
 designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3EhC6XQcKEQ8x63vt67v33v0t.r31r0p2v-q9x08-0x29Cv33v0tv63947.r31@flex--irogers.bounces.google.com;
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
2.24.0.rc1.363.gb1bccd3e3d-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191030223448.12930-3-irogers%40google.com.
