Return-Path: <clang-built-linux+bncBDPPFIEASMFBBN6JX3WQKGQEUA7QQEQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13e.google.com (mail-il1-x13e.google.com [IPv6:2607:f8b0:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id DC1DCE0F5D
	for <lists+clang-built-linux@lfdr.de>; Wed, 23 Oct 2019 02:54:16 +0200 (CEST)
Received: by mail-il1-x13e.google.com with SMTP id a7sf11133730iln.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 22 Oct 2019 17:54:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571792055; cv=pass;
        d=google.com; s=arc-20160816;
        b=XIKphJHmjFPI/Y/7Fi5YS65aEcvk4PWSlXkTrFVIZx3iUqHzISkl5GeJNn3UsoTmEi
         DdzkStgM0eJfgvIk1O875wDhMLIlb16HLOqAJaXEbWRIb9BP3AW7ZCL/PimHX/S2y61Q
         1Sz27sevVf7n3tcb86xMBMJPA+VeVTI8BJLGx2zbCxHh8NDmhM43IdBa7ozxHoMn67YP
         2FuGk/w7N6pDB9cRA59co0cMIk/qadEuosoUVMrUftCmfiycGXhglKltN171ELdu6YTk
         KnqhPJsUIcenZQX7NJDXZzTamZ3ZsispWPOQ5beW4zarQlzX8PM/WKHHlVdDi2CSP1tJ
         WxmA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=HRkXDyoOGepPRYMO8N6olS1m61e8cCbaM9VcUaSK9aY=;
        b=WW2sUnbWgaP9/Kp48gNOS2Qi0ZAjGryol0E5FT0ySNDgfZC5bqwQkDJ36GwQc/v13I
         NBVuluuJqiJwjq9Aus3/v6P5pZfoEBAmyrbk+a2LifI3Qf+vtCOB42y/6p/e/ixdatlH
         FbWgvHeBgc0ByXfYQqzdZuGpgdcB6zO99lzJlnFuKZrAHOqBw01fxY/+OaXKn3icmiw9
         Pxa1S9LSV24V1mf6jWwDV2zNV/I2xMDPVRLjEe17l9egu3+MlJDdHewHTcACAIRuZD4A
         4tc7TX/GZn9VyJF/8w9VpnRFzef/7/qt3jaxLbgP+TZUD/Gh5kpr2ynpjLp1LHdpT06s
         ZlxA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=nz2uurdi;
       spf=pass (google.com: domain of 3tqsvxqckebezifxvijxffxcv.tfdtcrex-slzck-czeloxffxcvxiflgj.tfd@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3tqSvXQcKEbEZifXVijXffXcV.TfdTcReX-SlZck-cZeloXffXcVXiflgj.Tfd@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HRkXDyoOGepPRYMO8N6olS1m61e8cCbaM9VcUaSK9aY=;
        b=JctVAf8fJZWFuIZenZ+BaxGkJ//PcT4gLfRwMZNF6HiZHIPAJformsZ2CNBrseB+O6
         g/9A0lffR23Axc9G63lCny0wOPb1prU5WOC/ZpEEqVKHSoeCIGcEZPZG2PlhOxPCtaD3
         7ggfk6M4AwhqBWzmuS2rO50kourcOsiswJjFW7UQEg6IXjggjW99CoWlW5ic35mi61EZ
         WJT4yvIqEyTvbx1ZE8ZrMRVB7cjdvCvUs3T/MgtUKmrJN5X8dh90dhH23eQnlkq++ngW
         ACc4mwF7Z2wNTpwbmBJPKUPLq/5gsZPOh4ivaafGi9H9oVpI7ZA1m7P1L4nPHJAu7Ntc
         lKxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HRkXDyoOGepPRYMO8N6olS1m61e8cCbaM9VcUaSK9aY=;
        b=JUMV+jvMai0Ek3xbMddYsIpHRRt12Ap/d1Ay0i47fyWNZXMwZ91s/DRk8WT6jESOgE
         yxDIR/ln3VvnCr8M4urKKv82Y96uys9vuZa0B2t6kn4c5BZQ6SaU7XSKJfNrVOsdiRbN
         5TkgY4iKDuO/NSrt7+KPR1Y6QtYWJra+DwU0cuwRzb6c5SThiRh8qxdqFwoMRX1vhjni
         5v2r1PNbV7UMztTJdizv458+G8Be0U0pO6jvHlFKHYxnJyjRfG6+C72qp3Nct+HWJy1a
         iecYpvDRYjrMJpmfOw8fVS0zqHwUGtD7l5Btme4kRT6w7qKRHHUbA/VDkXToLxVCYdMC
         D8YA==
X-Gm-Message-State: APjAAAWcy1P4zCweHnPnunm/c5dFYTwU04hyE9eysbHC4gu/cB054afu
	0iRDnP0BXY5v9AMx1sfUVNw=
X-Google-Smtp-Source: APXvYqw1k9pQuwV4vC+RqXM1C5Au/fRPdcnEiungMpvdkgVbYwYBMvlblPG9ZeKu9jKJuJPBlMO30w==
X-Received: by 2002:a6b:8b89:: with SMTP id n131mr715675iod.55.1571792055792;
        Tue, 22 Oct 2019 17:54:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:9c1a:: with SMTP id 26ls74671ioe.12.gmail; Tue, 22 Oct
 2019 17:54:15 -0700 (PDT)
X-Received: by 2002:a6b:d201:: with SMTP id q1mr698015iob.302.1571792055473;
        Tue, 22 Oct 2019 17:54:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571792055; cv=none;
        d=google.com; s=arc-20160816;
        b=XOTRTgCUg0PaTvMkMuQ/ehGBASxDX9P7M+6f0Tde/AOi63JzEjRBOWCVZd0DlnZbVO
         WD4gtBqE04XdgmTfNRaLFPpFs+1KarLBMAYA8mADWXvBs+PF9gvHcrnt3iP7+BqedBZH
         vpV4RS1xC0VzHmWgUV2TYFyCstWnleNqUPUmihH/ibT12L5zPy5c5FkV4Mgb++frZlRC
         aomXpg0eEpHuLLmHfDDuulEUp1ugpyxVgW78HQ0Is/OoEiXPbFV8J+bKmJHRWReuAyFx
         7UkYuoEZXE+P81oB5BDKa1fZ9edPqBmxlipbJaFcaWzA9MKe5d1kAVqDVuDIgYW6ne4G
         lHaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=5ErD/uUW7vtCV74qLmYJVVPg+bMOBGzP+X5HkC35T58=;
        b=RPrAUw/HbeQHndwqBnlWG3jNWFb6I8m6VR24RQvKvArb97sVD3a6/e7UPCQ/sHud+l
         cOf6HiNg8I/G5HUj/NUlxehtpi2YaFiG+uCXRkNmgW97WnH4iRYkxPqC04SkGhN18OQ0
         ETXe1CI31365CxvT2yyWjgOlVaCS0fdHFTZWyykPRvQzEyyW4jAfFlgQZxXhOHhItMn/
         oAkxy6BctJYmxtKnC5Vw/XAIvaEQcgRRtNzPfqXuo2O/jD4BeB9eQMcazpMK+fi45hGE
         hZYyFtiJpcHUTVbU7qlw6dmWjaco6B0GNpcShAuJZ6fePBnQ4G2K4x0Ub6gu5ekulimL
         HorA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=nz2uurdi;
       spf=pass (google.com: domain of 3tqsvxqckebezifxvijxffxcv.tfdtcrex-slzck-czeloxffxcvxiflgj.tfd@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3tqSvXQcKEbEZifXVijXffXcV.TfdTcReX-SlZck-cZeloXffXcVXiflgj.Tfd@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x649.google.com (mail-pl1-x649.google.com. [2607:f8b0:4864:20::649])
        by gmr-mx.google.com with ESMTPS id s5si804950iol.1.2019.10.22.17.54.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Oct 2019 17:54:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3tqsvxqckebezifxvijxffxcv.tfdtcrex-slzck-czeloxffxcvxiflgj.tfd@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) client-ip=2607:f8b0:4864:20::649;
Received: by mail-pl1-x649.google.com with SMTP id j9so11576068plk.21
        for <clang-built-linux@googlegroups.com>; Tue, 22 Oct 2019 17:54:15 -0700 (PDT)
X-Received: by 2002:a63:7c14:: with SMTP id x20mr49380pgc.208.1571792054270;
 Tue, 22 Oct 2019 17:54:14 -0700 (PDT)
Date: Tue, 22 Oct 2019 17:53:34 -0700
In-Reply-To: <20191023005337.196160-1-irogers@google.com>
Message-Id: <20191023005337.196160-7-irogers@google.com>
Mime-Version: 1.0
References: <20191017170531.171244-1-irogers@google.com> <20191023005337.196160-1-irogers@google.com>
X-Mailer: git-send-email 2.23.0.866.gb869b98d4c-goog
Subject: [PATCH v2 6/9] perf tools: add destructors for parse event terms
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
 header.i=@google.com header.s=20161025 header.b=nz2uurdi;       spf=pass
 (google.com: domain of 3tqsvxqckebezifxvijxffxcv.tfdtcrex-slzck-czeloxffxcvxiflgj.tfd@flex--irogers.bounces.google.com
 designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3tqSvXQcKEbEZifXVijXffXcV.TfdTcReX-SlZck-cZeloXffXcVXiflgj.Tfd@flex--irogers.bounces.google.com;
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

If parsing fails then destructors are ran to clean the up the stack.
Rename the head union member to make the term and evlist use cases more
distinct, this simplifies matching the correct destructor.

Signed-off-by: Ian Rogers <irogers@google.com>
---
 tools/perf/util/parse-events.y | 69 +++++++++++++++++++++++-----------
 1 file changed, 48 insertions(+), 21 deletions(-)

diff --git a/tools/perf/util/parse-events.y b/tools/perf/util/parse-events.y
index 545ab7cefc20..4725b14b9db4 100644
--- a/tools/perf/util/parse-events.y
+++ b/tools/perf/util/parse-events.y
@@ -12,6 +12,7 @@
 #include <stdio.h>
 #include <linux/compiler.h>
 #include <linux/types.h>
+#include <linux/zalloc.h>
 #include "pmu.h"
 #include "evsel.h"
 #include "parse-events.h"
@@ -37,6 +38,25 @@ static struct list_head* alloc_list()
 	return list;
 }
 
+static void free_list_evsel(struct list_head* list_evsel)
+{
+	struct perf_evsel *pos, *tmp;
+
+	list_for_each_entry_safe(pos, tmp, list_evsel, node) {
+		list_del_init(&pos->node);
+		perf_evsel__delete(pos);
+	}
+	free(list_evsel);
+}
+
+static void free_term(struct parse_events_term *term)
+{
+	if (term->type_val == PARSE_EVENTS__TERM_TYPE_STR)
+		free(term->val.str);
+	zfree(&term->array.ranges);
+	free(term);
+}
+
 static void inc_group_count(struct list_head *list,
 		       struct parse_events_state *parse_state)
 {
@@ -66,6 +86,7 @@ static void inc_group_count(struct list_head *list,
 %type <num> PE_VALUE_SYM_TOOL
 %type <num> PE_RAW
 %type <num> PE_TERM
+%type <num> value_sym
 %type <str> PE_NAME
 %type <str> PE_BPF_OBJECT
 %type <str> PE_BPF_SOURCE
@@ -76,37 +97,43 @@ static void inc_group_count(struct list_head *list,
 %type <str> PE_EVENT_NAME
 %type <str> PE_PMU_EVENT_PRE PE_PMU_EVENT_SUF PE_KERNEL_PMU_EVENT
 %type <str> PE_DRV_CFG_TERM
-%type <num> value_sym
-%type <head> event_config
-%type <head> opt_event_config
-%type <head> opt_pmu_config
+%destructor { free ($$); } <str>
 %type <term> event_term
-%type <head> event_pmu
-%type <head> event_legacy_symbol
-%type <head> event_legacy_cache
-%type <head> event_legacy_mem
-%type <head> event_legacy_tracepoint
+%destructor { free_term ($$); } <term>
+%type <list_terms> event_config
+%type <list_terms> opt_event_config
+%type <list_terms> opt_pmu_config
+%destructor { parse_events_terms__delete ($$); } <list_terms>
+%type <list_evsel> event_pmu
+%type <list_evsel> event_legacy_symbol
+%type <list_evsel> event_legacy_cache
+%type <list_evsel> event_legacy_mem
+%type <list_evsel> event_legacy_tracepoint
+%type <list_evsel> event_legacy_numeric
+%type <list_evsel> event_legacy_raw
+%type <list_evsel> event_bpf_file
+%type <list_evsel> event_def
+%type <list_evsel> event_mod
+%type <list_evsel> event_name
+%type <list_evsel> event
+%type <list_evsel> events
+%type <list_evsel> group_def
+%type <list_evsel> group
+%type <list_evsel> groups
+%destructor { free_list_evsel ($$); } <list_evsel>
 %type <tracepoint_name> tracepoint_name
-%type <head> event_legacy_numeric
-%type <head> event_legacy_raw
-%type <head> event_bpf_file
-%type <head> event_def
-%type <head> event_mod
-%type <head> event_name
-%type <head> event
-%type <head> events
-%type <head> group_def
-%type <head> group
-%type <head> groups
+%destructor { free ($$.sys); free ($$.event); } <tracepoint_name>
 %type <array> array
 %type <array> array_term
 %type <array> array_terms
+%destructor { free ($$.ranges); } <array>
 
 %union
 {
 	char *str;
 	u64 num;
-	struct list_head *head;
+	struct list_head *list_evsel;
+	struct list_head *list_terms;
 	struct parse_events_term *term;
 	struct tracepoint_name {
 		char *sys;
-- 
2.23.0.866.gb869b98d4c-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191023005337.196160-7-irogers%40google.com.
