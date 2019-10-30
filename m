Return-Path: <clang-built-linux+bncBDPPFIEASMFBBHVA5DWQKGQES7HNI3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3c.google.com (mail-io1-xd3c.google.com [IPv6:2607:f8b0:4864:20::d3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 44449EA647
	for <lists+clang-built-linux@lfdr.de>; Wed, 30 Oct 2019 23:35:11 +0100 (CET)
Received: by mail-io1-xd3c.google.com with SMTP id w8sf3008347iol.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 30 Oct 2019 15:35:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572474910; cv=pass;
        d=google.com; s=arc-20160816;
        b=f1y+Yt62IOVFJ+7vTQ72jnD70+XEebH/ARpzL04PwrLiAkIlg+OMa+HyFFIW3f1Pn+
         ZaYzusKDsfTUBsOMhxlR+2SaUb8DHii05E0lUZ0HLUNh0m3wh2uyk/at3Qc82mc+K9CG
         kdCIxvfGoSoSHjdorH1ITgPo8xGiB0r0ELJzsPgFx9goBJ5mFBamTmU1JdQujnhVOCw7
         IKg9zjjuVL5pfBIf/GK/3rcaQo8G18656CPpasXpSoKHc/yZf32/ajNAGeqIvajbhPoR
         c5Ov5PGoumrjn9/Gy1HpBsvkasMWQhYtNSpmVO78bXIhQddpNsqrBBTezrBpMxIfouib
         jXDw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=HsZkpKXqzGbdbe2zMDx5kXsmtKPjeMlLgc5odiVYLN4=;
        b=IJhiU6epvW5om1JhiIIaGG1ZZfhTK4TapOOL26vakfHmDX42kc9SWg4XfBB6hD+da+
         hskLpnhi0SSzllm+VaYr9NxNuJOapqTXGbg7rJNpVz44x8ofn0B6Zbn9ABanEfQQa6av
         tifNiXalIdyRpyz5DdHlSyAXAjGeOgf9tqRc83FQt4vudaGT8bxCfbBkcvxl2gyG0dbw
         WFhZdC38h+ArfxdjpEFIropm4NaQDO8p00F5Z0fDcAySFn3CrNRGvgneJpWYxj6t+7Mu
         IJ4PTU04K5PlOnwcXAmmwH9Z7tTWbfSTLnIEB7Yj3VTk0rE8wwwt8YGLIGFnXkQBtsIx
         UQ+g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=nBLJpE0g;
       spf=pass (google.com: domain of 3hbc6xqckerk7gd53gh5dd5a3.1db1azc5-0j7ai-a7cjm5dd5a35gdjeh.1db@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3HBC6XQcKERk7GD53GH5DD5A3.1DB1AzC5-0J7AI-A7CJM5DD5A35GDJEH.1DB@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HsZkpKXqzGbdbe2zMDx5kXsmtKPjeMlLgc5odiVYLN4=;
        b=SARfhLXnuC2hO0d4RXnkQZuZqsveQDWKkKIn6kzJZtaBxRt8rreU+SYfSmjrfjY28O
         8bjpbBXZtKPJffjwmrzPkb4jJX7g+lC8ZXXfjP2qxFvXbtc9heEf5EaEDMWXE0Y3gwTm
         S64qnQhV7gJBr2upe6pM6SLhtsPxHScTR9uwnS3cJua1mQ4c9jGuMcLZiXDaLXd9BtQV
         9U30iV6VFpcAoceQZFW21IXSSXl1dh8Ll20uv7zSUH1nyVywCjxAhscYwvtEqlmpZLHx
         /bwZfuaWBHq+UAQjuBrGgF0CnkkuRl0ldEh1XTLcnDuzVEYvmmwbz4mt2Vxp2R3dfMhQ
         j5ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HsZkpKXqzGbdbe2zMDx5kXsmtKPjeMlLgc5odiVYLN4=;
        b=k+Smb9Z9hSvXeQYnB4YI9EeLu1AibYVUy1FgwlE7aO+rqMtCDcHKRvOjXkqnh3wa6B
         c4z2E1wJ+AzpoAJwYzSG/M+WnXyAySD6mXNsSzql84iiG1n+8OcRc/zwugdItb1uK92w
         +fyPE32dMhV3Xw5YZFjYXl0bYzgIaYeekFj4xTqW61488KdJGF12REtuo7zogwXU9rlV
         0sRojn25VxrvoQZwhjI+yCIQCP4HI6WOcub44YyWx3tzZrra83PYm1imguIuefb3ENoH
         L+zAZ0db7rqfOWvWVOrhSqad7uwStxdc3WgyinyQBuU+6rX5mq3TEb/Md6HcCIeOnxFm
         Ya7A==
X-Gm-Message-State: APjAAAVj4bjLs2tyMsGVhpIvz4RrSN77Zf7YZ8n6BflvR3l0o/gFNH5n
	dpEHnWepJcVfrdr+k89vMsE=
X-Google-Smtp-Source: APXvYqx5P+NuI9dSOmZjC199EiDSyN2v/dFET06jHP1GuXphDFVJukUUv6rFnZGHiuF2BGNCyLRwLg==
X-Received: by 2002:a02:19c1:: with SMTP id b184mr507405jab.54.1572474910179;
        Wed, 30 Oct 2019 15:35:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:4781:: with SMTP id e1ls197900ilk.10.gmail; Wed, 30 Oct
 2019 15:35:09 -0700 (PDT)
X-Received: by 2002:a92:1b49:: with SMTP id b70mr2603275ilb.180.1572474909874;
        Wed, 30 Oct 2019 15:35:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572474909; cv=none;
        d=google.com; s=arc-20160816;
        b=R2yuPii9iu0nELgqO/X8r5ulbtSm71Qc2nwvTco7EGuFnqZG6S29GMw5Mnx5a3Cq8F
         KOo2f/UizMU972vz2WPe6W/yUcVAd8hISzQS2d0+i2Vn95p7ByKYtfHMLshlAHl0k6ko
         5lV28GlBAFiobwdaebPX4PMG4NAL8wJmeDYtZyKotyK6hV3MC0/BwD9XEtBZNqiB2yZt
         dXMWYJgujxfgU62vF6L0A+xDOkLYZBkyBEhh1AGnWStP3YRTAX70pgYuEADI5oa5MJ1M
         7JO3OcLD1frjR5buojgeaPq1hbEfRNlStnScEWmQfZxbQU5T+uQloEpRegP6bSPe9/8c
         wL2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=cbqRFkpgp0LqoXpVxOykKhy7SlGV56CiUpFn5dWk7NY=;
        b=ag82w479i8YLHZLLk8sKpFmy+3u8nz1GS/9icsby/1S3hCetE3nR0+yw9kybA8wRnT
         LHwUSQdRrxg97LDrm/3YgQkRs9XcSPFEwdQaI12GnRZgFLYr/VzL0PgQEOJrX11kCKdD
         rZQKcyH0vL0bIxKoqTHNKuQDNmgRRlb5ClIFt3XcVt5XT0yjL1VsDlxVR3GAqv2m/HIn
         4RmSAj9CasH0NivEiwp+EID/Hz76hJfV5/IqUUoApOCbEFurV63amfAWEqqYg+++vajw
         Io0Y7gigC5zXdJzZ1ZagMO1+nbeg3QbFz4EfqDpicJYahoKuU+52NQSRW/E+WdSijB47
         UEaQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=nBLJpE0g;
       spf=pass (google.com: domain of 3hbc6xqckerk7gd53gh5dd5a3.1db1azc5-0j7ai-a7cjm5dd5a35gdjeh.1db@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3HBC6XQcKERk7GD53GH5DD5A3.1DB1AzC5-0J7AI-A7CJM5DD5A35GDJEH.1DB@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x449.google.com (mail-pf1-x449.google.com. [2607:f8b0:4864:20::449])
        by gmr-mx.google.com with ESMTPS id y205si177428iof.2.2019.10.30.15.35.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Oct 2019 15:35:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3hbc6xqckerk7gd53gh5dd5a3.1db1azc5-0j7ai-a7cjm5dd5a35gdjeh.1db@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) client-ip=2607:f8b0:4864:20::449;
Received: by mail-pf1-x449.google.com with SMTP id i6so2878160pfd.14
        for <clang-built-linux@googlegroups.com>; Wed, 30 Oct 2019 15:35:09 -0700 (PDT)
X-Received: by 2002:a63:f923:: with SMTP id h35mr2019061pgi.323.1572474908998;
 Wed, 30 Oct 2019 15:35:08 -0700 (PDT)
Date: Wed, 30 Oct 2019 15:34:44 -0700
In-Reply-To: <20191030223448.12930-1-irogers@google.com>
Message-Id: <20191030223448.12930-7-irogers@google.com>
Mime-Version: 1.0
References: <20191025180827.191916-1-irogers@google.com> <20191030223448.12930-1-irogers@google.com>
X-Mailer: git-send-email 2.24.0.rc1.363.gb1bccd3e3d-goog
Subject: [PATCH v5 06/10] perf tools: add destructors for parse event terms
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
 header.i=@google.com header.s=20161025 header.b=nBLJpE0g;       spf=pass
 (google.com: domain of 3hbc6xqckerk7gd53gh5dd5a3.1db1azc5-0j7ai-a7cjm5dd5a35gdjeh.1db@flex--irogers.bounces.google.com
 designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3HBC6XQcKERk7GD53GH5DD5A3.1DB1AzC5-0J7AI-A7CJM5DD5A35GDJEH.1DB@flex--irogers.bounces.google.com;
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
index 545ab7cefc20..035edfa8d42e 100644
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
+	struct evsel *evsel, *tmp;
+
+	list_for_each_entry_safe(evsel, tmp, list_evsel, core.node) {
+		list_del_init(&evsel->core.node);
+		perf_evsel__delete(evsel);
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
2.24.0.rc1.363.gb1bccd3e3d-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191030223448.12930-7-irogers%40google.com.
