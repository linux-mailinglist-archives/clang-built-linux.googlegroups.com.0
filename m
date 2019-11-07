Return-Path: <clang-built-linux+bncBDZ7JWMQ2EGBBMOUSHXAKGQEPWL6Y2Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3b.google.com (mail-yw1-xc3b.google.com [IPv6:2607:f8b0:4864:20::c3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 205E5F37C6
	for <lists+clang-built-linux@lfdr.de>; Thu,  7 Nov 2019 20:02:11 +0100 (CET)
Received: by mail-yw1-xc3b.google.com with SMTP id v4sf2555994ywa.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 07 Nov 2019 11:02:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573153330; cv=pass;
        d=google.com; s=arc-20160816;
        b=iF8eXRnkh3VsY837RxqSRt+sl2BPWrpZ5O+iGWp3YrVwCxCr1X2MDer3OdF4eLtMzA
         sB9O+00Qw3WIbL2IqmfrABrP901GufVEI/nBkDerrI05v7JTUHW72inm1DdVf9y0zvHV
         0I0PGrWN54GidoRHzFMAM6noTBypJv6U/sCJ3UzM+9DPhJHWGLnhGsJSSfjXCG0FYPoA
         aYjXMrw6mBcGKXqYZCCBZrWzQ8u1UlI+pHl7OhK7KYndHSKbFgZhPyQOkTxyy8qiE83n
         S7bQj4c5i0Bkcf+JpiKjznLI7UUZ/nCXErqg7KoqvRfyFHoGrC28+1mJdx1U2HCn8N5b
         K+1w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=WOQKvDv6vPF4e1rrKHaY4+nCVaahkuwi6J+ZaJrVv50=;
        b=Xh62SDRNRrNDdqsV8lQykoU0gMl0N5Xb86YmT9pXJUuRcUdrHx+Jyu4+WQpzvoQkBL
         ZMc+BX3XM8PP8ddGEob1IHmzT5BwS2L9X9BuMTcDOwtgsGUzloquyfvXV3T07Icdag80
         iXDwTqsdWl7JpOPthhtGWcIDLzFyIrZCHxlJxVIr+OxrG7rD+Ee8WCDF/71c4rGzzX6f
         VYrKuTy1NOdpvCqAWPehAiybRx/A6RZyMsh7/sQf+iO+Zbl/RRs/v7wsykQlSJCsALCd
         coftcnMmZEqMzcngroukwUMjHUhmCOMqu9t171DnQqwKdNfo5It64w5cK9gmiwKgk5Fy
         n1aA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=kfm70IPU;
       spf=pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=acme@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WOQKvDv6vPF4e1rrKHaY4+nCVaahkuwi6J+ZaJrVv50=;
        b=fXxGMxUXXmJCqSHQ5MeZIrZ2BSAqQAyyg0u21FOLpqSshvZ/mUXr7Y4UDzefNo/vfu
         vOjF/s//5On2QmUplwR8n6OVTw8Ee15APTMy+JPfGWqpuA5KXfy92W1MFuOWtyqoXIiA
         kkhhJK4Fk/g545Kr8V3RFZSbX7Ea8azPOiAgoq77Ox/mQAiW05go89Jn0GBO8w/wnH++
         ErTspmSfxa4X0h9IYa0HBzhWQJL7ep8rU/UIy+F+s0EoXRHdJFs2cuEAbe8VPr8a56Hb
         jmm/zkcvODHkEZQSKuLMaDwyZwzclEw4cDOoJxXPDH8iXdr5oVmxmrHH/ndHY39vixDY
         EzJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WOQKvDv6vPF4e1rrKHaY4+nCVaahkuwi6J+ZaJrVv50=;
        b=RlF1i+phozTGGNpm5yNU5kCLmnTUWdlUBLUIzg9jqI5s4fpMxjSYZVGv7rEhD+6xh0
         fSVaSzCdu+ZQeXY+H3WjKtQdZKVMj4Mb0QTxFxdGCBuSLcpKJD5Bqn/qUKvWuChSDp4Q
         2Q+n3jq67I7LoAgew7R28wydp6dIlYReJSifr+OG0873hWP+B2x2T97L5Jnfx1nhCwst
         DdK40w9qEMiD8iYBNyx48aaKQPnsk4zzsdUm7F84WQuHFlNtQEVZ+QXmhHqKfmhw8SEb
         qcjzt1vuRsgQDK+GXKh+jnQq+E5nENpTbJfOP1RiQ7eRIrAyuo3jaji5G7fpClx91X9t
         F13g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWE4Ku5vvBatIrnYA2gb8JuTMeWuLDzohCWwc9NwpF0CwVXAi4H
	23DaiiA3yXpDCHifa0U0DkE=
X-Google-Smtp-Source: APXvYqylLFUKuyl53FjPq/kccUAjYU9OFwu2griyaLyPAu5YPvahI/ZdN1D6oEmlF3F8foxO/EvM3Q==
X-Received: by 2002:a81:6305:: with SMTP id x5mr3914906ywb.312.1573153329992;
        Thu, 07 Nov 2019 11:02:09 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0d:ea09:: with SMTP id t9ls1057936ywe.3.gmail; Thu, 07 Nov
 2019 11:02:09 -0800 (PST)
X-Received: by 2002:a81:4c43:: with SMTP id z64mr3704146ywa.59.1573153329495;
        Thu, 07 Nov 2019 11:02:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573153329; cv=none;
        d=google.com; s=arc-20160816;
        b=XnxSghYd9fxGBlOAoh8MRcNB6elmd+micfzYxycvOxsfGYwX3zyJ7sZhdTm/ilCMOE
         5FvCxOL+E2FJ+jGbHLhRpeDQURlu72Oa0BH0rC8MWhn02rjbsCGK0DzMNIwdQU+oEx+S
         NrWzSBjFFwJt9KdLIHVA/USrcDcoNrm431vCAm7nXGZPKE2Xh8wZZijJmmIE13XQNJy6
         ezEt1EASR2fLf81g27wFA1lHU8X3H30imJJ+Dz4pBVeU3KR0Ts4fmoELKBz50jwIO36l
         01EeyKss4toqr1y026OsidybrB/2akCXJCf0LxSaif33fK61LO0x4x1aMSVC9Jz8BeSt
         aOtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=u4qgnDO4H9CXVs8Om5yXxIqZpBq2ktdHC90PxNEZCR0=;
        b=0iRcE4Qc+FELlfn1kCvKN8goXGfRDT4CluJLqyJwEwwWXuSMB7m1lwlawQz4bIuJY5
         EJYU3lXdd9EHqaEqDHYAba+bK1j2cYJpXxDHYVpX+8r1o+xw3pGWcs2/rOHVnKoX72JC
         gIsd82AZydm4jGDOg3A58DujSL2Sv1Qz/T0PoF/31lnPDW51A7WjcJS23hAzSMkooPsI
         GvF/u63YVxIDl57wvzP5bK3IYGe61uSWo3nuiwpz0r85vDXwTmn7PHHtAMefxGKQYHJZ
         yb8v/H0dj5d1r6UlohXbm4McHY4WGAWBj54EO8khovhz+majzdEVNHrAeSumbvd45d5C
         dfTw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=kfm70IPU;
       spf=pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=acme@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f11si235111ybk.5.2019.11.07.11.02.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 Nov 2019 11:02:09 -0800 (PST)
Received-SPF: pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from quaco.ghostprotocols.net (179-240-172-58.3g.claro.net.br [179.240.172.58])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 6B3C42085B;
	Thu,  7 Nov 2019 19:01:50 +0000 (UTC)
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Ingo Molnar <mingo@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>
Cc: Jiri Olsa <jolsa@kernel.org>,
	Namhyung Kim <namhyung@kernel.org>,
	Clark Williams <williams@redhat.com>,
	linux-kernel@vger.kernel.org,
	linux-perf-users@vger.kernel.org,
	Ian Rogers <irogers@google.com>,
	Adrian Hunter <adrian.hunter@intel.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Alexei Starovoitov <ast@kernel.org>,
	Andi Kleen <ak@linux.intel.com>,
	Daniel Borkmann <daniel@iogearbox.net>,
	Jin Yao <yao.jin@linux.intel.com>,
	John Garry <john.garry@huawei.com>,
	Kan Liang <kan.liang@linux.intel.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Martin KaFai Lau <kafai@fb.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Song Liu <songliubraving@fb.com>,
	Stephane Eranian <eranian@google.com>,
	Yonghong Song <yhs@fb.com>,
	bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	netdev@vger.kernel.org,
	Arnaldo Carvalho de Melo <acme@redhat.com>
Subject: [PATCH 11/63] perf tools: Move ALLOC_LIST into a function
Date: Thu,  7 Nov 2019 15:59:19 -0300
Message-Id: <20191107190011.23924-12-acme@kernel.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191107190011.23924-1-acme@kernel.org>
References: <20191107190011.23924-1-acme@kernel.org>
MIME-Version: 1.0
X-Original-Sender: acme@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=kfm70IPU;       spf=pass
 (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=acme@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
Content-Type: text/plain; charset="UTF-8"
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

From: Ian Rogers <irogers@google.com>

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
2.21.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191107190011.23924-12-acme%40kernel.org.
