Return-Path: <clang-built-linux+bncBDPPFIEASMFBBY5OSLXAKGQEHRJTL5Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc39.google.com (mail-yw1-xc39.google.com [IPv6:2607:f8b0:4864:20::c39])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A413F3B0E
	for <lists+clang-built-linux@lfdr.de>; Thu,  7 Nov 2019 23:15:06 +0100 (CET)
Received: by mail-yw1-xc39.google.com with SMTP id c72sf2999504ywb.13
        for <lists+clang-built-linux@lfdr.de>; Thu, 07 Nov 2019 14:15:06 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573164900; cv=pass;
        d=google.com; s=arc-20160816;
        b=VL10C7fZ4vX0b+TJZMfc0Hhcm2WM5gVlL3tzXqO6nhh6n3pTALtUUO4jLX1VOBGEYC
         xw5TNMV4/blj06Ap02QzBjTBxGuUUygyU3TVxO3WEuJRumA4DSWAbsEWMZPHpyUz7g18
         2SMHFEJkkoWv3Wc5UtJX5wfYv5qGCQw7dMdvqikCZtiP+j0dX/QWIUrbm4GBsMrk8fEI
         xmiMKGlDPn2nLILY6RTnEVDCJo5KuK8x98t3+2tDvSlH+9fQMr3F2OSeQXZ8XtZFo+xe
         P89P9feORPyp4xWGMb/dgSXjLY2zIQg2MURAzESUINeMw3RXIj2GSk6Zab5WSwk8p1vX
         xmww==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=EXbrLExhK6f5DUfECKNxlomrYZnl8S/iKury2WduGvg=;
        b=FDU6gXa1fhmDKA6iERzLB38x6m45qWvdhrO698IBGTQfAsVdaDrj0sEl/N1o4ttG0a
         HC5Ak9C9zxYip/N+Ck78iK/xqifuiK3nkm8XfPea08QStzZhh9tXlyeT9DNBjlFFdK1l
         VQTdIXk+FFHrGW3ECH2SGpxle+cPs8TB/AZkg0JLyIZSJgfOM4KXkIOXNj8diz5DySI9
         7d3TVLKaNkHCM1OoEkEXFvQqqcPQAl3eLm8icqg5lOIhVZd/lzNpOZFj3wwe+a5RbqkS
         gaELvaDthuWkGx7hOULHX1U49kjFvvtbQARXLnnT0zx+t+KKeZ00sMTPp8qUfwOGhFBN
         zXQA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dDOQDYZG;
       spf=pass (google.com: domain of 3yzfexqckezy8he64hi6ee6b4.2ec2b0d6-1k8bj-b8dkn6ee6b46hekfi.2ec@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3YZfEXQcKEZY8HE64HI6EE6B4.2EC2B0D6-1K8BJ-B8DKN6EE6B46HEKFI.2EC@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EXbrLExhK6f5DUfECKNxlomrYZnl8S/iKury2WduGvg=;
        b=TfLMMGhYxuRWqIbyUt3OuEIc0Mtc8qc0jCkUcbub9popz8hna9YcEr3d7KitD0g1QF
         XIxFFZfsvT7ycYscnerl8OVDSjwO9s/YYVmWC0LL5SR6JX9Vn5ek9PTVgKI1yAFbGBeM
         qBvkzSGa1mVybT/1FtvJQMGJb18Hl0NVjy8QB3kLfTiqRggWJ962SY2CJOcRtJ0XlhUO
         OieBdBX6z1eUv3CFd0NBBjBfSkguK+J/roa1uEAMY/wNUaZnBfTaPnt4MUNMpvG8UIsb
         5KHtmSH5oyp1aabXKAhT3qzAsnv26bgwWJx75dWx05PXNQvh/izV71bXYeNQll2lRcvb
         /GKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EXbrLExhK6f5DUfECKNxlomrYZnl8S/iKury2WduGvg=;
        b=JEmJ2qj3BCVIpP/Nk0IzgKSJeVAD0lHnWAPif38IYMqmqQC9aCJ1IJlx6Mei1H3fWv
         TATNPqQ/K4Gt+8HWW6SAbX4Ks4qHpAeyg5SikI/0rbQJDRmwi6x5ps2BGA9USHSeW9ji
         4GyduHcXuvHcqJewBECSF+Zhb0+pf6tS73OIfk31TCW8vffQBi4VK69IVQ3taBi+BVU6
         mxiRQuNyJaYptTgv4A1r9inMpLxd8lrvLtuHApnI21HAauLa99Z+pAurRNqW82CPFckc
         bgBi3ZyGuN1H90TtOCgdrIfLcsozYJnA9nQd2Xpn34oWeDKXBYTdtRjOldkqC4WTCVWo
         MAwQ==
X-Gm-Message-State: APjAAAWwFKJMfhUBmYOTtMyY75pwaJ+I7SEBDCzy0aHUsCXnhFFqe9r/
	UF08iCLH8TKSJbrnG3V0WuU=
X-Google-Smtp-Source: APXvYqz3ohtDOEpb582Cec5zUk057SMAZrCsXGeNqUSKBara0OCC98QsfhZ9blBDqtC7AfkEcl/U0g==
X-Received: by 2002:a81:10d4:: with SMTP id 203mr4390200ywq.390.1573164899308;
        Thu, 07 Nov 2019 14:14:59 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:4114:: with SMTP id o20ls1381958yba.13.gmail; Thu, 07
 Nov 2019 14:14:58 -0800 (PST)
X-Received: by 2002:a25:860c:: with SMTP id y12mr1096910ybk.467.1573164898810;
        Thu, 07 Nov 2019 14:14:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573164898; cv=none;
        d=google.com; s=arc-20160816;
        b=pon6KMXVjlZ3Xl5i/0L2J9uS7tnGlOA9t+D5W4ZH1UgZU+nxYO3VrHvgYP6aQl4ddT
         RsAuI66rksbbiSGOCZ2uNHve2jMSplL51yIXoDuirpohMQuQGVqgTpTQc1hYGXBq8q07
         7BE22nGXpZQiZtRLEnAeRGsEq6pR/q4lJyguHtihWeB3h0s6HYFGbZP+z1EFdIPJsZUU
         TO2OiuPndxjZZIHZfJIepDx58FamQJGtL4JVJO/pOw0Mn3fSdoJ7U+sizF+CDm53Gi9W
         /lI+wcEX/eUDZlT69yo9juM6cz2aiPPVk9XSs87vYce1oNXPgS45FGtXqzqkMcaGmKhU
         eAdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=GYsTOK8xYRxAzUxpL4TGFf0MCdaNxbX2unbIlv+2Rhk=;
        b=b2P0kLgTS8qwKL3L3fhk+3ILgtgDj2J71eOzwyh2aJNNKly7jyySTwth+63ZqoZnuw
         8jcXozjI9QfJs88o3rcIJ4e/nBKKaS6oJIKeu9yuoKTFT6wKh83b/Y1T//OWLbzS4Kq6
         2yKwVafK+C077Tucv2zGSmmsloFk3n/bscuQys0FK+kWIJozbBfyfsXO2gbuIlvWD4Ce
         5MfrEp13zmQinKLi6tz5JnaHfMFHysnds27H4g5i4zPtQmgRAx0gnh2yl8ibrtgxmrqi
         Ay1YP+/XNZ56KPcCkyWaYI6zEkWbf0mswEwCaXWKiMnZizFGOKylz//PL+q1rmDjrYJP
         zpZg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dDOQDYZG;
       spf=pass (google.com: domain of 3yzfexqckezy8he64hi6ee6b4.2ec2b0d6-1k8bj-b8dkn6ee6b46hekfi.2ec@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3YZfEXQcKEZY8HE64HI6EE6B4.2EC2B0D6-1K8BJ-B8DKN6EE6B46HEKFI.2EC@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x449.google.com (mail-pf1-x449.google.com. [2607:f8b0:4864:20::449])
        by gmr-mx.google.com with ESMTPS id c5si177822ywn.5.2019.11.07.14.14.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 Nov 2019 14:14:58 -0800 (PST)
Received-SPF: pass (google.com: domain of 3yzfexqckezy8he64hi6ee6b4.2ec2b0d6-1k8bj-b8dkn6ee6b46hekfi.2ec@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) client-ip=2607:f8b0:4864:20::449;
Received: by mail-pf1-x449.google.com with SMTP id m1so3016427pfh.5
        for <clang-built-linux@googlegroups.com>; Thu, 07 Nov 2019 14:14:58 -0800 (PST)
X-Received: by 2002:a63:f513:: with SMTP id w19mr7443214pgh.55.1573164897568;
 Thu, 07 Nov 2019 14:14:57 -0800 (PST)
Date: Thu,  7 Nov 2019 14:14:24 -0800
In-Reply-To: <20191107221428.168286-1-irogers@google.com>
Message-Id: <20191107221428.168286-7-irogers@google.com>
Mime-Version: 1.0
References: <20191030223448.12930-1-irogers@google.com> <20191107221428.168286-1-irogers@google.com>
X-Mailer: git-send-email 2.24.0.432.g9d3f5f5b63-goog
Subject: [PATCH v6 06/10] perf tools: add destructors for parse event terms
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
 header.i=@google.com header.s=20161025 header.b=dDOQDYZG;       spf=pass
 (google.com: domain of 3yzfexqckezy8he64hi6ee6b4.2ec2b0d6-1k8bj-b8dkn6ee6b46hekfi.2ec@flex--irogers.bounces.google.com
 designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3YZfEXQcKEZY8HE64HI6EE6B4.2EC2B0D6-1K8BJ-B8DKN6EE6B46HEKFI.2EC@flex--irogers.bounces.google.com;
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
2.24.0.432.g9d3f5f5b63-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191107221428.168286-7-irogers%40google.com.
