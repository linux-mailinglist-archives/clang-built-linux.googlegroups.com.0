Return-Path: <clang-built-linux+bncBAABB4FJVLXAKGQELX345KA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-f61.google.com (mail-ed1-f61.google.com [209.85.208.61])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ACEEF8DE0
	for <lists+clang-built-linux@lfdr.de>; Tue, 12 Nov 2019 12:18:09 +0100 (CET)
Received: by mail-ed1-f61.google.com with SMTP id h2sf759812edd.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 Nov 2019 03:18:09 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573557489; cv=pass;
        d=google.com; s=arc-20160816;
        b=tLFRNkKy5XiptLntAl9Uopy53kmFsscu9A+1WuYfOnqi5LTMsNs3fjqH+PVaUvvvcd
         MWQwE/461ZXPfgXWxVy18H9z+XB5Gir+S63mjZC7r+1EDo3tQD6nEXV4I/YcEyrKmgD6
         ZdSiFV7jKt7F3Z6yyloyqdQAzJFEspIkfG35W1t4oKCRUoT2ZcPta52wL7M6Y/AMg9NQ
         D/kfPu4WAuu3iw1UcU0DQQzf1dV7/ZoXpQQIWMAMvlhOHmGHxaHa/lKGSiOSP17pkHMC
         XIymErnzZVRSpdsy6x/X6jIGHCjQiTI76hXTlPVtEFSNIuiYT4hMhfUP8VMLt/d/+duK
         nP+w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:robot-unsubscribe:robot-id
         :message-id:mime-version:references:in-reply-to:cc:subject:to
         :reply-to:sender:from:date;
        bh=mDPKGNUP1wOMpgnt3rzNaKMyGXM0jWMoCpVeY7pvoRc=;
        b=q8WfQfKoRiHKsCFqnJds3itPUmqJ4ir4oksd6yKTKj/BGW9JbqyTrDsCs55/jHmcJI
         HzFoWJHYb5imS74cqXkI2ytStcTyYzmvIVM6F6Omlkjdic5mEoFi4eYuW54wgr9EO0gm
         llU40XCcDWwFCMf5Y41y1I2wE5g4gg9xO/WN2TYaMDbp0KXcLlOMJYfrPCPBNquslTdO
         ZBnLNN4KPMIeLMPzCzVYgXZCQtGMsmKNNCnKoruLDwtFxiVAoUZqZGcxg3UY2uWMvUcj
         1mzPSq59oWgiHHYSwSfrQavuHrjnmMAmXt9wxvI595fXgH/vpU2rM6zSmBmZhd2TOKYC
         5aQA==
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
        bh=mDPKGNUP1wOMpgnt3rzNaKMyGXM0jWMoCpVeY7pvoRc=;
        b=GC1DfEUcYkZthDu8zZBp08eayHRkoHKxUBv1FdendnGDIbOA0ib5W0ptwjtQFQ7gDb
         aSEVH+pD+L2SMjEUbXEH6wVmSGch+ygpo0PIccfUHUKjZaYxci/mQY72YaWsOzgEgL1o
         xoXiQ4o73rjZaXXnyIRiJ2CcefNINNcYVPq53msasZCiZslpTw4M0Ds9Q81Ou08vTn8t
         kc+7OM8jfqn32FfY2TlVArqtIr9khSWlmbP4Q4PtrvhQuuKXz7OdCbzsUVXZUuYl+u4v
         58Y7QoLEnfmdvF6O6Frp9+EJEvr3M3qR13X0ZEOazspvjjdfbPLAvCmGNRczZpCYj9gi
         Ywlw==
X-Gm-Message-State: APjAAAUs1ajDg6EH9YKWcI5fu/MHOLXgVoBVyS0MArXUkS5RmERef0Ke
	DrWCRbaJZXFLJ4VLju4MCbA=
X-Google-Smtp-Source: APXvYqwNzbqI3JAC0lR/DGy3P429a4a7Hi1dr3sdeTSrjVaEjP6n/s5GNNPgpunDWLI58reXa5RrEw==
X-Received: by 2002:a17:906:c789:: with SMTP id cw9mr28107769ejb.40.1573557488922;
        Tue, 12 Nov 2019 03:18:08 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:e2c1:: with SMTP id gr1ls2893405ejb.16.gmail; Tue,
 12 Nov 2019 03:18:08 -0800 (PST)
X-Received: by 2002:a17:906:f191:: with SMTP id gs17mr25520934ejb.207.1573557488552;
        Tue, 12 Nov 2019 03:18:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573557488; cv=none;
        d=google.com; s=arc-20160816;
        b=akN0VdMcGOUrNKdq0qrabLMfImwjYpCW0lThaX/ofq5KSUZj14dtNWvENcoUZ8r1nK
         MxRaBG9uixfAObSv47zCvU9Z7r9JozUwvZVZw6BYRqNTWAav18kvGi6hldjvww9F0V80
         ZbhTATAXrjZBCZsnNFdc4uKNyduHqzjYwZQktfj8ycoyOz2chETCd5u7T/zVjlHJ4ah3
         y2+IB6Zefz9j8LDMLTCaOaavt3HexiwkCrUxrH4AVHwhGe3e2vc50yvE77N6zb69M6yg
         uSawdi6OFMsat0QFrDRM8rPTAQ2AWYS7LyUOSH69YARX8DsiGCbsEhPeYemI2dqEnKYq
         kZzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:precedence:robot-unsubscribe:robot-id
         :message-id:mime-version:references:in-reply-to:cc:subject:to
         :reply-to:sender:from:date;
        bh=VfqYz5yZPd6qcWBr8OkmjLIg6XCt+nrH1H/UVEmB434=;
        b=vno5FuEnbVimANVo9HoEft5P2f4tESHUq0HEKGHrTSUyqRxPVV8ZbnVDoLE695hwuy
         8GJq1Yjb3b3JaWgr8NTamPJJNa69DK/fuI5u7Ucen+2ZuuDiCJgwTe2l5YmW7jNZFGqL
         ieGVAr7O+cXsbzreHScn8zWVdRkdcORB5YfQarEElPb75x6y1BuD2uOcBBSgqaP03IBV
         nVtoGJ5JkP0Ei3zjBeIsSPotXdHZLVhHCgDpGeO6HnuBnifwhCCxVwGHvsbaRY0b38lQ
         ZWZiORk2bB5ZWmYz+Uqo9DX6UOJXMk7cBdpWj1O7iVDlre11BScLMK0ukZXaUoQj91kX
         nprA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tip-bot2@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tip-bot2@linutronix.de
Received: from Galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id y21si1444753ejp.1.2019.11.12.03.18.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Tue, 12 Nov 2019 03:18:08 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of tip-bot2@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
Received: from [5.158.153.53] (helo=tip-bot2.lab.linutronix.de)
	by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
	(Exim 4.80)
	(envelope-from <tip-bot2@linutronix.de>)
	id 1iUUBQ-0000LU-VR; Tue, 12 Nov 2019 12:18:05 +0100
Received: from [127.0.1.1] (localhost [IPv6:::1])
	by tip-bot2.lab.linutronix.de (Postfix) with ESMTP id 26DF51C0084;
	Tue, 12 Nov 2019 12:17:58 +0100 (CET)
Date: Tue, 12 Nov 2019 11:17:57 -0000
From: "tip-bot2 for Ian Rogers" <tip-bot2@linutronix.de>
Sender: tip-bot2@linutronix.de
Reply-to: linux-kernel@vger.kernel.org
To: linux-tip-commits@vger.kernel.org
Subject: [tip: perf/core] perf parse: Ensure config and str in terms are unique
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
In-Reply-To: <20191030223448.12930-6-irogers@google.com>
References: <20191030223448.12930-6-irogers@google.com>
MIME-Version: 1.0
Message-ID: <157355747780.29376.16809471033952715746.tip-bot2@tip-bot2>
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

Commit-ID:     b6645a72359590ad7f57050d192cd5d8885320df
Gitweb:        https://git.kernel.org/tip/b6645a72359590ad7f57050d192cd5d8885320df
Author:        Ian Rogers <irogers@google.com>
AuthorDate:    Wed, 30 Oct 2019 15:34:43 -07:00
Committer:     Arnaldo Carvalho de Melo <acme@redhat.com>
CommitterDate: Wed, 06 Nov 2019 15:49:40 -03:00

perf parse: Ensure config and str in terms are unique

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
 tools/perf/util/parse-events.c | 51 +++++++++++++++++++++++++++------
 tools/perf/util/parse-events.y |  4 ++-
 2 files changed, 45 insertions(+), 10 deletions(-)

diff --git a/tools/perf/util/parse-events.c b/tools/perf/util/parse-events.c
index 03e54a2..578288c 100644
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
index ffa1a1b..545ab7c 100644
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
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/157355747780.29376.16809471033952715746.tip-bot2%40tip-bot2.
