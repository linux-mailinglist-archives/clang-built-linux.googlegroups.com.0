Return-Path: <clang-built-linux+bncBDZ7JWMQ2EGBBVWWSHXAKGQEGJXFDVQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63b.google.com (mail-pl1-x63b.google.com [IPv6:2607:f8b0:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id EFAA6F3803
	for <lists+clang-built-linux@lfdr.de>; Thu,  7 Nov 2019 20:07:03 +0100 (CET)
Received: by mail-pl1-x63b.google.com with SMTP id w17sf2322568plp.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 07 Nov 2019 11:07:03 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573153622; cv=pass;
        d=google.com; s=arc-20160816;
        b=bERUN89c9mhuilaFwbuipvLIVi9Pfcz5wdOMy2sZaGclz7jFTF6Eg/Imi02Lv3qN7P
         8mGoFaHLFwWNkDMzk6V8yTvBKExlpTGgdjRkZ2rfrNALUaJ9Z5I1X0/+uuJDS2QCkL95
         M2lwwC1IT6pBkdcALx1I0r+sgqQ9BIsnTr3Jh37Ign0CrimfP4cC3QF/xAjQnMw/GPJO
         teX+4KmzPX5ZtnkvKOvAwiiPuSbzIBy3VoekEjmpkXfZSBjKPZyxV6KVNPtaE4dgSgGc
         pmZ6/pJHedjDYYKt/lR8g1Pl7QI1HYbeV8WO0MDoLTXiTyR4DKeNxIqz+OHlYiLY0kxG
         mxNQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=t4js0I6iSNw35UbLoTFlDNOPC6Q3galKWHJj/y57wVs=;
        b=Ji4DCWwbievdjZYVXdBOXmgVLHmqNur5NekZJ3lZHFF1cR808kvjLs+KnEdkYUfhDA
         AGTkXAPHzIOQqouj0F7kgg0aYdZJYjpTjqlyDFVgG4y8xuPmVdJOGtZS5IwUH7djh04A
         7QnOY9XJ8cKltdn83PF9IAvG4EAoAIlNZZR8Kr27S6IzIoAX+qrExU8Q4KnVGGmUJ0NX
         yuh4fHmgEYZMNm64OfnPdW6B85mXGpFuJz8zUHPhHaboL3G1uBXA76qBfydw26GJCzXW
         svJla5Odch2lEo8YMcDceubFaxtKMcfwNbZkWaE3hj+t+ho8t6uLHRx4hHSo6VryVBUl
         yiGA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Ob5J0CsU;
       spf=pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=acme@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=t4js0I6iSNw35UbLoTFlDNOPC6Q3galKWHJj/y57wVs=;
        b=sSqD+8JpN974Scdbd0I8govwgv8LAQ35TBXC7ahEvCf+GxNDNX2PJqtLkERkgVQvDS
         qrMIUchWUS9Q5clKo8AU6X3ReEquemzmSM8mMQNnPc6kTz9qyQTXhRtJ89ZDwhRkaP2F
         CX+CVofcU5Y4O+TvJfzGWX3705OZPSnHzE5C5fyZGlLWzG/iQ5M7gmwRUaHROWGn1+Es
         btlNBfuvHJIfOxfgE3G/V7/1Ltkagqaj8lC77Qi1G/ptFwenCrOCQKS87OeZLy1zyyqG
         AtGh/S6OpBS+j3D/c6ia1ANQ4nu7TSw2CazKHkGVJP2FW0kRddnx4yjdVZAo0DR2sVSh
         DWCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=t4js0I6iSNw35UbLoTFlDNOPC6Q3galKWHJj/y57wVs=;
        b=luEcjMWwggsZLYM6Rui+uXth7DepTCwtpaTrNRlSJNOHSc9Zty6TggIRXj/X0t4YbY
         8FSmZBtCp18K8eQ3AyiYFRiHCOM0Rg8xNr2HHC3QUTAtcP6aLjBZIJoDzBIge2IqoZ+P
         oUpCVAVejglUn1rZltWpyOPIhxniZHDTK8xa1qBNEUr+uNbnxDNmW/JztJ9QGGPL2U0r
         jTnjdwho6oCQ45v0D2h42kGkCOtE964JktZNwt8oRP3Bk7QOFSCCv5+DP7tBCJX3oZly
         qxUGPTurKwzWFVgC/n/KZ9YNSQ6kIiBRjmhrSwhk9Wis9q7gdo/6iiAT/DTTJqiQHm2d
         uG+w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV1042jfSxcmRYz812zcDW6fLOv/us4l80IB+ngLLH9xJVc+pO0
	P8lJKELo1/fsBTzeZjD3ask=
X-Google-Smtp-Source: APXvYqyo6SbCjimTtzKopW6KKFO5s3Ab63T4bBk+U1yUGo4AnqxZzON8PEdPugcGQ7YGe8Hxccj44A==
X-Received: by 2002:a17:902:8a87:: with SMTP id p7mr5493371plo.42.1573153622070;
        Thu, 07 Nov 2019 11:07:02 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:9a02:: with SMTP id v2ls1629765plp.15.gmail; Thu, 07
 Nov 2019 11:07:01 -0800 (PST)
X-Received: by 2002:a17:90a:fa96:: with SMTP id cu22mr7256623pjb.121.1573153621705;
        Thu, 07 Nov 2019 11:07:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573153621; cv=none;
        d=google.com; s=arc-20160816;
        b=H+I5U61UuXtagSTs8BbBW1ruSyJnNIoiyg/0P7y+CoG1AvbBwfRAO9/g/fE2d/qKMT
         Xy6zG/T6FgvkZXzjir/I7CeHlcrFr4QVPdvKU67OZUMMUna2cIjRLcT9GCHluGks3TNd
         HkX9D78171nB+8Z2yQDQ4UIKiRLVLDkU7+5S7i43W3fkH0ibURGoZK2k9e6uutiQzZPz
         Fy4WRNZffz7Czm8sqq86P0NkzPhZKbQJfh7m3IYAJTKcR4GIz0bllx/cmRzAsfZ2vaFj
         0dKBxh0eh0SqzAHNGXQhKhBxRb/EpNNMy8HQEqZlLi4OW0hSkq+w00eZKa3WNQe2YVxp
         owPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Eieo7jjE5++ASfCHxoOLhgHpta8vAW8qYyh1MXw5J60=;
        b=So4NPrztDYF4B1y8QPdbO7pHAlqDqzOddroEFb0FOENpapg7O8SDaY4ZxWD9oXmLiP
         sUooq2rj4vMKOQWmmUe7YnSorXm3+EfAu0eHHgOn0t4nrdpk+7/IEBbrof0I8bBpC6zX
         65ZeNbUc/nLVCq1hoxlOQS85X5/E7Z+JI7NdkxuWY+9n8ERGdFWHwzDLJlfInJy/cMO4
         2bM4hxbglEsQ0Zm0eV6ctPh80Yk9b9nnYOROTOnZFbpIavo+l5flHqI4v7CegNNZvhWo
         T3Q6NyJfFhJcjQICzPzPZOADN0aWmS7D28+w/UUeGZVR3Nx9VyVI6jeI4rbAYmtXxX2y
         xK2g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Ob5J0CsU;
       spf=pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=acme@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id g10si127822plp.4.2019.11.07.11.07.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 Nov 2019 11:07:01 -0800 (PST)
Received-SPF: pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from quaco.ghostprotocols.net (179-240-172-58.3g.claro.net.br [179.240.172.58])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 99A7F2166E;
	Thu,  7 Nov 2019 19:06:49 +0000 (UTC)
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
Subject: [PATCH 42/63] perf parse: Ensure config and str in terms are unique
Date: Thu,  7 Nov 2019 15:59:50 -0300
Message-Id: <20191107190011.23924-43-acme@kernel.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191107190011.23924-1-acme@kernel.org>
References: <20191107190011.23924-1-acme@kernel.org>
MIME-Version: 1.0
X-Original-Sender: acme@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=Ob5J0CsU;       spf=pass
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

Make it easier to release memory associated with parse event terms by
duplicating the string for the config name and ensuring the val string
is a duplicate.

Currently the parser may memory leak terms and this is addressed in a
later patch.

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
Link: http://lore.kernel.org/lkml/20191030223448.12930-6-irogers@google.com
Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
---
 tools/perf/util/parse-events.c | 51 ++++++++++++++++++++++++++++------
 tools/perf/util/parse-events.y |  4 ++-
 2 files changed, 45 insertions(+), 10 deletions(-)

diff --git a/tools/perf/util/parse-events.c b/tools/perf/util/parse-events.c
index 03e54a2d8685..578288c94d2a 100644
--- a/tools/perf/util/parse-events.c
+++ b/tools/perf/util/parse-events.c
@@ -1412,7 +1412,6 @@ int parse_events_add_pmu(struct parse_events_state *parse_state,
 int parse_events_multi_pmu_add(struct parse_events_state *parse_state,
 			       char *str, struct list_head **listp)
 {
-	struct list_head *head;
 	struct parse_events_term *term;
 	struct list_head *list;
 	struct perf_pmu *pmu = NULL;
@@ -1429,19 +1428,30 @@ int parse_events_multi_pmu_add(struct parse_events_state *parse_state,
 
 		list_for_each_entry(alias, &pmu->aliases, list) {
 			if (!strcasecmp(alias->name, str)) {
+				struct list_head *head;
+				char *config;
+
 				head = malloc(sizeof(struct list_head));
 				if (!head)
 					return -1;
 				INIT_LIST_HEAD(head);
-				if (parse_events_term__num(&term, PARSE_EVENTS__TERM_TYPE_USER,
-							   str, 1, false, &str, NULL) < 0)
+				config = strdup(str);
+				if (!config)
+					return -1;
+				if (parse_events_term__num(&term,
+						   PARSE_EVENTS__TERM_TYPE_USER,
+						   config, 1, false, &config,
+						   NULL) < 0) {
+					free(list);
+					free(config);
 					return -1;
+				}
 				list_add_tail(&term->list, head);
 
 				if (!parse_events_add_pmu(parse_state, list,
 							  pmu->name, head,
 							  true, true)) {
-					pr_debug("%s -> %s/%s/\n", str,
+					pr_debug("%s -> %s/%s/\n", config,
 						 pmu->name, alias->str);
 					ok++;
 				}
@@ -1450,8 +1460,10 @@ int parse_events_multi_pmu_add(struct parse_events_state *parse_state,
 			}
 		}
 	}
-	if (!ok)
+	if (!ok) {
+		free(list);
 		return -1;
+	}
 	*listp = list;
 	return 0;
 }
@@ -2746,30 +2758,51 @@ int parse_events_term__sym_hw(struct parse_events_term **term,
 			      char *config, unsigned idx)
 {
 	struct event_symbol *sym;
+	char *str;
 	struct parse_events_term temp = {
 		.type_val  = PARSE_EVENTS__TERM_TYPE_STR,
 		.type_term = PARSE_EVENTS__TERM_TYPE_USER,
-		.config    = config ?: (char *) "event",
+		.config    = config,
 	};
 
+	if (!temp.config) {
+		temp.config = strdup("event");
+		if (!temp.config)
+			return -ENOMEM;
+	}
 	BUG_ON(idx >= PERF_COUNT_HW_MAX);
 	sym = &event_symbols_hw[idx];
 
-	return new_term(term, &temp, (char *) sym->symbol, 0);
+	str = strdup(sym->symbol);
+	if (!str)
+		return -ENOMEM;
+	return new_term(term, &temp, str, 0);
 }
 
 int parse_events_term__clone(struct parse_events_term **new,
 			     struct parse_events_term *term)
 {
+	char *str;
 	struct parse_events_term temp = {
 		.type_val  = term->type_val,
 		.type_term = term->type_term,
-		.config    = term->config,
+		.config    = NULL,
 		.err_term  = term->err_term,
 		.err_val   = term->err_val,
 	};
 
-	return new_term(new, &temp, term->val.str, term->val.num);
+	if (term->config) {
+		temp.config = strdup(term->config);
+		if (!temp.config)
+			return -ENOMEM;
+	}
+	if (term->type_val == PARSE_EVENTS__TERM_TYPE_NUM)
+		return new_term(new, &temp, NULL, term->val.num);
+
+	str = strdup(term->val.str);
+	if (!str)
+		return -ENOMEM;
+	return new_term(new, &temp, str, 0);
 }
 
 int parse_events_copy_term_list(struct list_head *old,
diff --git a/tools/perf/util/parse-events.y b/tools/perf/util/parse-events.y
index ffa1a1b63796..545ab7cefc20 100644
--- a/tools/perf/util/parse-events.y
+++ b/tools/perf/util/parse-events.y
@@ -665,9 +665,11 @@ PE_NAME array '=' PE_VALUE
 PE_DRV_CFG_TERM
 {
 	struct parse_events_term *term;
+	char *config = strdup($1);
 
+	ABORT_ON(!config);
 	ABORT_ON(parse_events_term__str(&term, PARSE_EVENTS__TERM_TYPE_DRV_CFG,
-					$1, $1, &@1, NULL));
+					config, $1, &@1, NULL));
 	$$ = term;
 }
 
-- 
2.21.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191107190011.23924-43-acme%40kernel.org.
