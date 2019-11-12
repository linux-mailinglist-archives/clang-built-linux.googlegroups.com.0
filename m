Return-Path: <clang-built-linux+bncBAABBB5KVLXAKGQESPPNGNY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-f63.google.com (mail-wr1-f63.google.com [209.85.221.63])
	by mail.lfdr.de (Postfix) with ESMTPS id 5777CF8DEF
	for <lists+clang-built-linux@lfdr.de>; Tue, 12 Nov 2019 12:18:31 +0100 (CET)
Received: by mail-wr1-f63.google.com with SMTP id p6sf11672659wrs.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 Nov 2019 03:18:31 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573557511; cv=pass;
        d=google.com; s=arc-20160816;
        b=Mgb1X8Mi0ixlUy8FBSHTvQXZ+Gwhh8qHR9wkUO5+ZXFG60cISz94D6RbJw1MtcoxRg
         /GSVQaYyP1D8kNbvQF5AbEF2jR4ZIn6gxywWo/L1vB91rzKGi0zcdjHmLSNrHq35ABZV
         1e9RUVjtH24KdgLdX+jCdxyspZkAGtHxpxZ/xakM1QoPvULsOeZJ0zb78Tn1cwXVA6RS
         RX0QG6r9ldryzDIqA09jXybPKORDGk8sy5yjOGZ3AHf7DyrO47rHntfqt3gOKv6fCAF2
         ZzeRcOOYXwg9gu3Ri3PDYHU5uGZV7QAPM/oG3ykH7OPxQcxZ2Cb3kT8aWcmbTMbx9qK3
         04Rg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:robot-unsubscribe:robot-id
         :message-id:mime-version:references:in-reply-to:cc:subject:to
         :reply-to:sender:from:date;
        bh=MACvFWGkq06AO9ktTXxIfJGv2YWetPbuLqMUSkwagNU=;
        b=DV4BBe3KSPwFXbXVUVMHIfjW27Cj3kqsYngYsbk9EFWJqHkrHNLg+Juzee9BWbejBE
         ueLTFcBa1Sc4VIxV6EuKCw45MdjUF6fmea3Y2/o3FW5DPe/uX5l4qkhjUK0KyqIF7MSs
         AAOIB0FjwHAq8hY8bMdhHH3jnx1YT6GqLVPzwG6kz6+EDLuB6P+y6Ei0swuwEEBq2ht7
         09YUapxVKhp5Zc9ZUr27xM101AkQe5x7MDw+UgErBP+d7sLsLIJg1uSAI1KHEjsolPIs
         0liVbcfdyEkjkvMclNuTZ0WhB66CVKG4NEousZPPWl5d/j7inEK4VaHUJBaXmTLwC7/t
         02tw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tip-bot2@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tip-bot2@linutronix.de
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:sender:reply-to:to:subject:cc
         :in-reply-to:references:mime-version:message-id:robot-id
         :robot-unsubscribe:precedence:x-original-sender
         :x-original-authentication-results:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MACvFWGkq06AO9ktTXxIfJGv2YWetPbuLqMUSkwagNU=;
        b=dms6t6nZreos7w4brG0pRgIEIjbrk2m+TPp8C+UUUjXeyV/Dh6Q/zJVlqtYsBl/pRR
         gL8qJ6UrMAY6fRpYTSHmfpSPKm1TF7n3P2Gk2OsSpdkHRRgyw7T+wH6Rr5CFZ/4KjAA1
         u5mwHrpQlUKrZpR2L9tt+yZsriBN53F+pK6owmgKeAvRQ8nEswM1RQ2vm8reX6GACR2/
         OjUGAR4K6sMPc1YqYMMbWJ6ELCZRfmX0XGbcpBI2n0eIOQbgFoFhu2wDFqpmG1F3CvFd
         jZgImcjA/ZADTfvNgs9dBk9P+wNMU89HyYK3ozMjv1vn91jehrsifgyxs71bMD6BpkP1
         UjEA==
X-Gm-Message-State: APjAAAVf7ArpJa4B0nMEtQiTVi+xmtRTpU/4hl1qy9Fj1u5jY8ydMdE3
	BhIJOGP+am3TxSwf2XsNyOc=
X-Google-Smtp-Source: APXvYqzdmTtn5CN31b3EeCxD5BOnH75pLjGa05/2I2j993d8No7VhVrdjS08NqjYd9W25SLpVElrLg==
X-Received: by 2002:adf:ed4b:: with SMTP id u11mr5066834wro.215.1573557511104;
        Tue, 12 Nov 2019 03:18:31 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:4050:: with SMTP id w16ls1823634wrp.13.gmail; Tue, 12
 Nov 2019 03:18:30 -0800 (PST)
X-Received: by 2002:adf:e942:: with SMTP id m2mr26973984wrn.26.1573557510750;
        Tue, 12 Nov 2019 03:18:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573557510; cv=none;
        d=google.com; s=arc-20160816;
        b=rFjZMx04MKy6s4HV7sgUHdvUF+AS8igzYbXfMIyZiyQXyKN8rNctdV7hUxnzRUBxg0
         1sosYcXXhXwNVORu+W8ZHxHFkQS1YGoPK2c0I0UbXKCDiSpC99K+iz99pMKfZfofFxpq
         ejorGm3Loi5GkEB5M4XNiugGvv1nQIo7VLuIUL30ToCYieB8L8opF2dZwqNK58CM4AfI
         4B+dETfYghg2d1DXlTM5PHy5jiKq4TCrItFxnAzyYBMMNDOgpUvX6jSWTSgYJ5msFBVk
         haIkMm8Pgf1Gbq/MQc6KQ9bc3Z81aEh/2SSru4L3kBNRYNmZMrN5Uc4hWFqUvtXh7v2j
         gzrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:precedence:robot-unsubscribe:robot-id
         :message-id:mime-version:references:in-reply-to:cc:subject:to
         :reply-to:sender:from:date;
        bh=eqJAnpDDrdAK5oGxh3WgjNgb+DjQldAaFyMhXCAPxMI=;
        b=dfPUSzN6P5O0uy1cAlGtMYckwXIfGZZlP3gxOHhh8jRYqkRBJ8GNMY0tZ66Ox1ekzJ
         Em9an6S+dw+wuU7Lr8yOuYn+SNE+sTF00dQs3ZN/PjtMlKp8G3WLQcNxiHLL4faZ/5m4
         gUL0e1pgm/SmbtIZ8SWLvJVkYTYZbp3vkZhJefoN/I/LTsmWXVr9gzqOBJMRbardsJPx
         pFCs1OXIbJfQkcT5sx/OwXJSrcZW89kOueTjv6jdtRKaNfLhWL1z16FWWOmQrknpVgtv
         3CbX0Sc57XOHMr3MCZjpSF8nsr+onjEyL21ZPDj5XyTWaf4GQTbhYkISOYjb9W2crJHC
         rrTg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tip-bot2@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tip-bot2@linutronix.de
Received: from Galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id r11si77214wrl.3.2019.11.12.03.18.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Tue, 12 Nov 2019 03:18:30 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of tip-bot2@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
Received: from [5.158.153.53] (helo=tip-bot2.lab.linutronix.de)
	by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
	(Exim 4.80)
	(envelope-from <tip-bot2@linutronix.de>)
	id 1iUUBm-0000gs-2t; Tue, 12 Nov 2019 12:18:26 +0100
Received: from [127.0.1.1] (localhost [IPv6:::1])
	by tip-bot2.lab.linutronix.de (Postfix) with ESMTP id 6775D1C04C9;
	Tue, 12 Nov 2019 12:18:15 +0100 (CET)
Date: Tue, 12 Nov 2019 11:18:15 -0000
From: "tip-bot2 for Ian Rogers" <tip-bot2@linutronix.de>
Sender: tip-bot2@linutronix.de
Reply-to: linux-kernel@vger.kernel.org
To: linux-tip-commits@vger.kernel.org
Subject: [tip: perf/core] perf tools: Move ALLOC_LIST into a function
Cc: Ian Rogers <irogers@google.com>, Jiri Olsa <jolsa@kernel.org>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Alexei Starovoitov <ast@kernel.org>, Andi Kleen <ak@linux.intel.com>,
 Daniel Borkmann <daniel@iogearbox.net>, Jin Yao <yao.jin@linux.intel.com>,
 John Garry <john.garry@huawei.com>, Kan Liang <kan.liang@linux.intel.com>,
 Mark Rutland <mark.rutland@arm.com>, Martin KaFai Lau <kafai@fb.com>,
 Namhyung Kim <namhyung@kernel.org>, Peter Zijlstra <peterz@infradead.org>,
 Song Liu <songliubraving@fb.com>, Stephane Eranian <eranian@google.com>,
 Yonghong Song <yhs@fb.com>, bpf@vger.kernel.org,
 clang-built-linux@googlegroups.com, netdev@vger.kernel.org,
 Arnaldo Carvalho de Melo <acme@redhat.com>, Ingo Molnar <mingo@kernel.org>,
 Borislav Petkov <bp@alien8.de>, linux-kernel@vger.kernel.org
In-Reply-To: <20191023005337.196160-5-irogers@google.com>
References: <20191023005337.196160-5-irogers@google.com>
MIME-Version: 1.0
Message-ID: <157355749506.29376.11432356501118173873.tip-bot2@tip-bot2>
X-Mailer: tip-git-log-daemon
Robot-ID: <tip-bot2.linutronix.de>
Robot-Unsubscribe: Contact <mailto:tglx@linutronix.de> to get blacklisted from these emails
Precedence: list
Content-Type: text/plain; charset="UTF-8"
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required,  ALL_TRUSTED=-1,SHORTCIRCUIT=-0.0001
X-Original-Sender: tip-bot2@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of tip-bot2@linutronix.de
 designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tip-bot2@linutronix.de
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

The following commit has been merged into the perf/core branch of tip:

Commit-ID:     a26e47162d7670ddea4f67978ecf848dc23ef671
Gitweb:        https://git.kernel.org/tip/a26e47162d7670ddea4f67978ecf848dc23ef671
Author:        Ian Rogers <irogers@google.com>
AuthorDate:    Tue, 22 Oct 2019 17:53:32 -07:00
Committer:     Arnaldo Carvalho de Melo <acme@redhat.com>
CommitterDate: Wed, 06 Nov 2019 15:43:05 -03:00

perf tools: Move ALLOC_LIST into a function

Having a YYABORT in a macro makes it hard to free memory for components
of a rule. Separate the logic out.

Signed-off-by: Ian Rogers <irogers@google.com>
Acked-by: Jiri Olsa <jolsa@kernel.org>
Cc: Adrian Hunter <adrian.hunter@intel.com>
Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
Cc: Alexei Starovoitov <ast@kernel.org>
Cc: Andi Kleen <ak@linux.intel.com>
Cc: Daniel Borkmann <daniel@iogearbox.net>
Cc: Jin Yao <yao.jin@linux.intel.com>
Cc: John Garry <john.garry@huawei.com>
Cc: Kan Liang <kan.liang@linux.intel.com>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Martin KaFai Lau <kafai@fb.com>
Cc: Namhyung Kim <namhyung@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Song Liu <songliubraving@fb.com>
Cc: Stephane Eranian <eranian@google.com>
Cc: Yonghong Song <yhs@fb.com>
Cc: bpf@vger.kernel.org
Cc: clang-built-linux@googlegroups.com
Cc: netdev@vger.kernel.org
Link: http://lore.kernel.org/lkml/20191023005337.196160-5-irogers@google.com
Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
---
 tools/perf/util/parse-events.y | 65 +++++++++++++++++++++------------
 1 file changed, 43 insertions(+), 22 deletions(-)

diff --git a/tools/perf/util/parse-events.y b/tools/perf/util/parse-events.y
index 48126ae..5863acb 100644
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
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/157355749506.29376.11432356501118173873.tip-bot2%40tip-bot2.
