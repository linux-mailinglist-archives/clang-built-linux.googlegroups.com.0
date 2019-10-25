Return-Path: <clang-built-linux+bncBDPPFIEASMFBBNHUZTWQKGQETERZEXA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3c.google.com (mail-vs1-xe3c.google.com [IPv6:2607:f8b0:4864:20::e3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 212B2E533A
	for <lists+clang-built-linux@lfdr.de>; Fri, 25 Oct 2019 20:08:54 +0200 (CEST)
Received: by mail-vs1-xe3c.google.com with SMTP id t6sf409501vsp.22
        for <lists+clang-built-linux@lfdr.de>; Fri, 25 Oct 2019 11:08:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572026933; cv=pass;
        d=google.com; s=arc-20160816;
        b=nnuV9b3qrWLOnppAlj7R9lAV1jK7ggDT4eF62gGewSGWCy3euL8479FJwkGeyrapKO
         NxyfJ+eVeBRLBVZ73AsldfaqY6rOBEQyHs0iIbuWKQ0eQrTxI+Fq9yRyZj1YbTZntcWz
         i4GZeRjBkBpnN/Kzv6h3djIxVFz2tVIptLbZEcthAUGCNvDv7BYrRZtPaQ6kqXLmbqfk
         gLBYHs0hgM2lhhnvtIjcy6jekyhzXB1cPgectHYzUMXurkPZyqwEPNY/uhf1go/VEPu2
         W5tHpPc5a0VxuTdhRYf6wXikX6oaFw6XnuFxEQRMKyUGJY1r+PcqtnSnu7dnit7sX1vr
         ELXA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=0EqnOmc++zdxzyKbCw4wFlDCBd99V0lj5IoG96Lwl0A=;
        b=GxK/KsTLYe1rq1YEYbtBPik8gb5rKgZgxxACh/ebcKgAdsnBaMDM8mZpxGnuS9ss4k
         zz5/hV49iTk94AR0Ujm0rnW0/r809kwb25RMkA+fHnfqctq1CG5rwfauFNVD/jUpX5y/
         vzpZniUUpEuyC+RIVzKEfy1BziTp/r2UM5nR+4j70MbTO1xU04BRZwVixJfBO9UWfLW5
         CYIeeB4o49ilOzd4IKfKrKiqcgzzCsuIl6Yz6NYRaWb1KYkXN97MJZnERYFDRDsh3+sF
         xWrjcD9CEUbVXnl01xeCY//TurFl4G8JU6vFKb5vOsPlRweTzrFjO9sZZgY+gtOrcfKS
         UmrA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=sZPGioXJ;
       spf=pass (google.com: domain of 3mzqzxqckewgoxumkxymuumrk.iusirgtm-haorz-rotadmuumrkmxuavy.ius@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::e4a as permitted sender) smtp.mailfrom=3MzqzXQcKEWgOXUMKXYMUUMRK.IUSIRGTM-HaORZ-ROTadMUUMRKMXUaVY.IUS@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0EqnOmc++zdxzyKbCw4wFlDCBd99V0lj5IoG96Lwl0A=;
        b=lsMke3vgtiF1urXNEKsARSfBue/s9LUzerxy9GXVEDRA7ZikZ4ugkpSg2WUTl2Kq+y
         rDnvATk4VhobDBQuH/Qx4MysWVKu5gtAty58u/uHer80aFp/fKDgd9+WktjctvZB//gP
         S8vLKF0YuIzpKjYz3DOeV1tXc3ZFdzxxv8+sEcpEkLbLv7hZXQ6s/4s5OoImvqmz6kFu
         cKGeTjzWM9dCMHpPuzOKY9IP7zXcGW2vriYIJa/2EIjnXfzG/IrJwE2snAaY/4HAxKn2
         KnO49z2ZYWNOKxc41/4pd0bPD4So6bZWyBw06bJ2/z7SbaLFog762JAehp0SBBoYDj/2
         iy+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0EqnOmc++zdxzyKbCw4wFlDCBd99V0lj5IoG96Lwl0A=;
        b=dahMICY+w7/cdGKb6JfJ7vs0ST6T5n7/3rL0kyu6/3J/xmvPtg1h3G/ODokxG8Sp8R
         +hR+uyZ37ylQNEAeutQqKp0r+ZIuVam1esmOb0xZ+7TnJCKelBIwClf5lXk7LFEefnti
         feGkDm/UBFDtX3N0qyHvIgSC/1MQyzBL8TpM4/yPDgdg5l2Y139rQ9rPDLu+eTWD8I0V
         tn2AoyS8ekwadLN54nKkDf/5EkNxCW4aybXW0YKwJdyBVKnVs0hiiZa8UbFiTflLsP6j
         VLlJfgDmPdBI6n0UoBBK/oUy1DqeRCigIIrAcIlCUtt9ypLz5PpJ233pA0v+BZrSh9Zq
         TAEA==
X-Gm-Message-State: APjAAAWAa0tmtfs3r6P9ikJMw2ThZrsIswl/zRISHwSnTuGF+diJqk+I
	IaIRLbvWrXQgl6KCtqhRcWw=
X-Google-Smtp-Source: APXvYqyw73GlE9ZPo/OwrICMR/EZ27HXRUBXKbEeyjdJIKsY2UyjvUcpQNRFCDneweIgI7NOj+rluA==
X-Received: by 2002:a67:16c1:: with SMTP id 184mr2810796vsw.225.1572026932907;
        Fri, 25 Oct 2019 11:08:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9f:3f0f:: with SMTP id h15ls279112uaj.4.gmail; Fri, 25 Oct
 2019 11:08:52 -0700 (PDT)
X-Received: by 2002:ab0:278b:: with SMTP id t11mr2366369uap.89.1572026932325;
        Fri, 25 Oct 2019 11:08:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572026932; cv=none;
        d=google.com; s=arc-20160816;
        b=p7b73j+KBTVGDUSqSEOfZ/+0KAu0ELeg33Z5cCTVCzr8FzXh+Z0aZZZcv5D9I7lYyT
         iJFJONvk7weQMBQ3F9FPqvok4VEiMd/i9x+VwjVwrRnbXzKPbuO4kOCA7Kr9m2n6bBjt
         M39tg5dmlb6pEEsauOjZUIl9YjAcP1Gl/tXy6DknJtBsUIPH+wh41pHhEx3vKegGcAku
         Qb9DKXrkeSv3F6yz4eAHF2HvY/Y5C532/tyLIhhciN7R8mIbaIKyEs3iOSTmAZijSu6Q
         XeZoxDMRCWhabGBZR7oJ98mZEk+a5oQeLlw6mFF0GJyusenkfVO5teolpfwVDs0xRgAc
         j9nA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=wkY00adrftjM1UcXkLzxDNdETKKPM8qAwCHI/0MFpTM=;
        b=LqBspmunNUM3WMUbgDnEFhlFbs8N2MgF91JuomynEMenlmAl1rcC6rDpjiZmaHDz1a
         Id8KKMLad5ky8M1a+1oF7qVSgqNswKjgfs9b8cQO4OQPB536WEmqX1iVdI7iihWJ0TM9
         vJT1skN1Q80xlqzE74eqIfG8sXsSwEMS5NH95AVCzoO8VyjXrQHTehIF2HVJSeNzPdyf
         gdS1bTTWBHSYmZCtWH00v1pbEHNW6iQjB2EAs7y66JgijPjP0jtF9evAbM7saGNcISBy
         bQmq9CKjefJnWXeBfpHMOfEbkqv2KY6d0w3aVq5xJ4WnNarNd/CRbI/b6comlcCLIqm8
         LTNQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=sZPGioXJ;
       spf=pass (google.com: domain of 3mzqzxqckewgoxumkxymuumrk.iusirgtm-haorz-rotadmuumrkmxuavy.ius@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::e4a as permitted sender) smtp.mailfrom=3MzqzXQcKEWgOXUMKXYMUUMRK.IUSIRGTM-HaORZ-ROTadMUUMRKMXUaVY.IUS@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vs1-xe4a.google.com (mail-vs1-xe4a.google.com. [2607:f8b0:4864:20::e4a])
        by gmr-mx.google.com with ESMTPS id a12si265801vkm.1.2019.10.25.11.08.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Oct 2019 11:08:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3mzqzxqckewgoxumkxymuumrk.iusirgtm-haorz-rotadmuumrkmxuavy.ius@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::e4a as permitted sender) client-ip=2607:f8b0:4864:20::e4a;
Received: by mail-vs1-xe4a.google.com with SMTP id p21so410741vso.14
        for <clang-built-linux@googlegroups.com>; Fri, 25 Oct 2019 11:08:52 -0700 (PDT)
X-Received: by 2002:ab0:2a12:: with SMTP id o18mr1728999uar.60.1572026931812;
 Fri, 25 Oct 2019 11:08:51 -0700 (PDT)
Date: Fri, 25 Oct 2019 11:08:24 -0700
In-Reply-To: <20191025180827.191916-1-irogers@google.com>
Message-Id: <20191025180827.191916-7-irogers@google.com>
Mime-Version: 1.0
References: <20191024190202.109403-1-irogers@google.com> <20191025180827.191916-1-irogers@google.com>
X-Mailer: git-send-email 2.24.0.rc0.303.g954a862665-goog
Subject: [PATCH v4 6/9] perf tools: add destructors for parse event terms
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
 header.i=@google.com header.s=20161025 header.b=sZPGioXJ;       spf=pass
 (google.com: domain of 3mzqzxqckewgoxumkxymuumrk.iusirgtm-haorz-rotadmuumrkmxuavy.ius@flex--irogers.bounces.google.com
 designates 2607:f8b0:4864:20::e4a as permitted sender) smtp.mailfrom=3MzqzXQcKEWgOXUMKXYMUUMRK.IUSIRGTM-HaORZ-ROTadMUUMRKMXUaVY.IUS@flex--irogers.bounces.google.com;
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
2.24.0.rc0.303.g954a862665-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191025180827.191916-7-irogers%40google.com.
