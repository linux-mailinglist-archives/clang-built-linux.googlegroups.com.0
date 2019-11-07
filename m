Return-Path: <clang-built-linux+bncBDPPFIEASMFBBWFOSLXAKGQEX3YDM6Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23d.google.com (mail-oi1-x23d.google.com [IPv6:2607:f8b0:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id C7686F3B03
	for <lists+clang-built-linux@lfdr.de>; Thu,  7 Nov 2019 23:14:49 +0100 (CET)
Received: by mail-oi1-x23d.google.com with SMTP id w20sf3149587oie.17
        for <lists+clang-built-linux@lfdr.de>; Thu, 07 Nov 2019 14:14:49 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573164888; cv=pass;
        d=google.com; s=arc-20160816;
        b=tR+fFZUjdnjaYUfOUdQRLaqcjUZvWtrz+QcLkQkjFxuFhq5fZUbj7eAC4FXyBnzfoA
         nujTpuPcRXykqHXFEc4D85X762Z7+lpfHnkGg6jilfk+FaQ1Dj6khFBZgPYNN+Nbt9/1
         tSCNwQB0zwXDeve84oKbLJCi7l3Dv3ifPlAnZZreZmyw4JfOeKYHMO9NWLs1ZdZmEDsB
         qR+Uhbq/Buuw03hZBFWkmM39WNRiWC2dkwtXneB3VmT+sq3rndBhHIpRFgm1gjls3hX9
         7lLgZ0HAWtTrvuYw+PQtS4PzeT+Y2UJuFQ4EIyxHMrvrouA65ty8lBmKBk3skZbZHb9e
         TdfA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=JUF046p6JSruqqXzHxatmKeIMIJeByx9aYi0/6/e+KQ=;
        b=Cgbn5OZBEgavnstdNBOyiPQOJbdaatyOUAEwry19j+9uVg6WUpsf0JJZUpAp4D8Jxk
         ogS1UmIoA1t/6kd+51xsIkbMaf1Z1VfU2RiYckGX9xvJzl1Rqzj4mhWxB7yd/1WzNcYg
         C/3dS8/YS4ZvCeX06+ucAM4+moS/OZmpwmYI7eUslpeXy9PmfT464U6RfqLuAWE6nnyH
         lQFyTDv0Pom3orjwcr4HO+JnRDGj9ru2ZshcdGafff5l9rpRwvBXMmEBhVUQdcdqrz6+
         K5kF2c7gvD/hwaGdhjtlMPlOO+RVncKJfM6aBMITmqjpwEAcyLi4lv1hsqG3ksNfTJkm
         iNmw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=L1HDYXFy;
       spf=pass (google.com: domain of 3vpfexqckeysx63vt67v33v0t.r31r0p2v-q9x08-0x29cv33v0tv63947.r31@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3VpfEXQcKEYsx63vt67v33v0t.r31r0p2v-q9x08-0x29Cv33v0tv63947.r31@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JUF046p6JSruqqXzHxatmKeIMIJeByx9aYi0/6/e+KQ=;
        b=aUUrYdiNT5/3zpe6SK5pwsuuibBTKk2odS+XtRk8MD+rZhsI6IaE+3n5N92kHCZ83s
         yRxHyxf3RsYOtzekX/2iDP/k2Ioez1JUkMsc7ww1nah0seb82SoNVuOQSx659GHQdF3J
         IGgffWyB3i0dAQzGkmaJsfTAdYPV9nXh21UAOTLv1d7BQodsiEm+mIo/04wnYX3KrHAU
         prSXcFyke0PicBQML2UVZos8CSvqZuOF7211ehE6u7pj4Y7k4fpMnQbKYhGVKFNktGDn
         TM/YNuNRvaUXX7supybv3/4P/Ax0lyTyGbBXfLe+3ROjNe4lOaxm97GxRdoUhQkdzRS0
         aLmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JUF046p6JSruqqXzHxatmKeIMIJeByx9aYi0/6/e+KQ=;
        b=CRm+HFE8UIWow4MjUHMEab5ghE4WSZlW8rwhtRTSNnlagJKTem/yBqG9c2sFU3xcQ0
         GzIfle3/nvUHsFQiwGwxaWPq7IbNFc74LQlmZDrL3I5gVlyma/ZAh3MyqR7eyBr0LV9+
         JBclMo8suqUZpP37VtFaApOEfquxIBnoYRKF+xSoLsC+o1ral3W5dks7PF3kbjlybDUG
         myUYKI3bs2ZOCdKAWj2nxpyRozOXZ7KKEeo3no5JRnnLOYrj9Vbk75pYbhmG/sK5h0fy
         VeKFftkgZKxTqditQb1M/6AG4kZ0aUynr/sYSipnAW6r46BfZ9AZcDgAVzipedR9nDtG
         vD1w==
X-Gm-Message-State: APjAAAWG7qANtQk4FKDIvLII4hQ/GHOC3r2Dn8oQwuqBp1FK481/EPJI
	LLOwuY8vqnVwoE7N//LcHaY=
X-Google-Smtp-Source: APXvYqzeY2QMAY25Gi0ZnDKdEnBHMlPI1guXuUs/nyDB8Zr5zxkqpEOIk4U+SVRQgsHMNL5PRrtxbw==
X-Received: by 2002:aca:fc4d:: with SMTP id a74mr6015408oii.23.1573164888619;
        Thu, 07 Nov 2019 14:14:48 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:4815:: with SMTP id c21ls1187003otf.0.gmail; Thu, 07 Nov
 2019 14:14:47 -0800 (PST)
X-Received: by 2002:a05:6830:1e84:: with SMTP id n4mr5311910otr.233.1573164887833;
        Thu, 07 Nov 2019 14:14:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573164887; cv=none;
        d=google.com; s=arc-20160816;
        b=N6WUz+kOGIYzvzJGngJOK3/zBfkY6fBnNjVOyIm3SnIvHgSlKVH5gJ9oK2XZhRNpzl
         Q92ldDAyL1arSPqjKght44+ta/GFgHr7fANX9u+rjvHHcdyWqNtR9NK7ABwtK+DApNqM
         8ixgrjbdaI7yOSNbAWHn6yVCDT98YIldfjVMPvBSNruRQwroPVrGwBvStVPYfWyVdbR3
         gloKaFsoWRDhlBt5QXbISgl1im6XyhdPwFs6RmshZ3zGNMfBTdrZyv1aR00vKTPV2/t1
         94YJxFiuOk4Bzf9jNefh0FXRqYaxr2ZTh1Gcq8+LZk/8wHcI1WM2+ZP4taOXAyR+uLYP
         VxSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=m81bmWQIede8mLR77rYb7ggK23+bOyTQ3+K/+A1s3nA=;
        b=gGqW0C2FYtdAMLJP0d/b7UCZ9OqX20sNrkzzfqYuXjy3hoAb92oLanhBtPxZPQ0MJs
         mmHmyjYR3VniMGiW0fuzpelAJ6pY4X1BzcnQZ3W0sd4A9mge0GIrXcqGYMQxC5hyaxdw
         1y8SeMUBtkATTB3NfGab47WllrgUJ5URcQncKcEzpPNV3Ie/CjzYxnFKvdWLqE11tG6y
         9Oll37gSpQnqt284gN492BOoIP/pkZkzu4GzbOUhIbRVpANTs2RDeZn+TCrysUz7cNg3
         cM3TgrOrbJgJhTb2PaIK/ekrnvF17NOYtbyoCKFHJiYE/2168azd+jxbNt56hrUqRD/Z
         rV1w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=L1HDYXFy;
       spf=pass (google.com: domain of 3vpfexqckeysx63vt67v33v0t.r31r0p2v-q9x08-0x29cv33v0tv63947.r31@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3VpfEXQcKEYsx63vt67v33v0t.r31r0p2v-q9x08-0x29Cv33v0tv63947.r31@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x54a.google.com (mail-pg1-x54a.google.com. [2607:f8b0:4864:20::54a])
        by gmr-mx.google.com with ESMTPS id n63si222044oib.3.2019.11.07.14.14.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 Nov 2019 14:14:47 -0800 (PST)
Received-SPF: pass (google.com: domain of 3vpfexqckeysx63vt67v33v0t.r31r0p2v-q9x08-0x29cv33v0tv63947.r31@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) client-ip=2607:f8b0:4864:20::54a;
Received: by mail-pg1-x54a.google.com with SMTP id u197so2976628pgc.17
        for <clang-built-linux@googlegroups.com>; Thu, 07 Nov 2019 14:14:47 -0800 (PST)
X-Received: by 2002:a63:495b:: with SMTP id y27mr7487764pgk.438.1573164886774;
 Thu, 07 Nov 2019 14:14:46 -0800 (PST)
Date: Thu,  7 Nov 2019 14:14:20 -0800
In-Reply-To: <20191107221428.168286-1-irogers@google.com>
Message-Id: <20191107221428.168286-3-irogers@google.com>
Mime-Version: 1.0
References: <20191030223448.12930-1-irogers@google.com> <20191107221428.168286-1-irogers@google.com>
X-Mailer: git-send-email 2.24.0.432.g9d3f5f5b63-goog
Subject: [PATCH v6 02/10] perf tools: move ALLOC_LIST into a function
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
 header.i=@google.com header.s=20161025 header.b=L1HDYXFy;       spf=pass
 (google.com: domain of 3vpfexqckeysx63vt67v33v0t.r31r0p2v-q9x08-0x29cv33v0tv63947.r31@flex--irogers.bounces.google.com
 designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3VpfEXQcKEYsx63vt67v33v0t.r31r0p2v-q9x08-0x29Cv33v0tv63947.r31@flex--irogers.bounces.google.com;
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
2.24.0.432.g9d3f5f5b63-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191107221428.168286-3-irogers%40google.com.
