Return-Path: <clang-built-linux+bncBDJKZSEQ3YKRBAHYZXZQKGQETLI64HA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-f188.google.com (mail-lj1-f188.google.com [209.85.208.188])
	by mail.lfdr.de (Postfix) with ESMTPS id 22C9418B88E
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Mar 2020 15:04:49 +0100 (CET)
Received: by mail-lj1-f188.google.com with SMTP id i7sf503874ljg.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Mar 2020 07:04:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584626688; cv=pass;
        d=google.com; s=arc-20160816;
        b=OhhoCMxjwLgbtpZdY2nVxS3XpxGlMOe1Fi1KJ0yPsZGMrjxwkCFMYAsqkz5YjahEQQ
         HM/qDWni58XkknFQxx3zVOA69VFIb5ySgABFqIijgHVB7tZglQQbZhfE0qnURRS9m/qB
         +YdFfDd9mx8KxOnrLjbkoGtROj8MQTdzPdtv9uoU3cb1Fpyo31NOcz0IapWY+/sRtpnp
         9x7kEmlwPDd9e/4xzWn93+Ha5hp7+zMTVlqu5W2CyLfMw79Z8rJ6eH4DpSaXjPt6UKlY
         UMgwAbN0r2g0ytt3Vw3M9iiT9K0JJ9ZvYMkB3jM4m3fLlN7XkyoMJZ7nO2+/tUtCO+Ct
         5tvw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:robot-unsubscribe:robot-id
         :message-id:mime-version:references:in-reply-to:cc:subject:to
         :reply-to:sender:from:date;
        bh=dw9zEnLNwL43066pIt4y6x3vAlJor9XCkn5dRV0Thdg=;
        b=LbFpSvqFTnQlfvmvN3HZsgsG/rbUh8Dtty4iumJYXLaul1E/GTL3qBcFAc+pRe0z8d
         trIoiRGGvJnjMfuSgd6PWx6mqQBvPWavCLGpW3O09wKmDEQZVYB2xtupUqVDTumZ5OHz
         I1Dug4Vc1KfSGWaPMtIsrlYJw+/JcDEaFNvElpxiy4rSKBFOFunAWem7XSWlErX8/e4a
         8BiXD1icljZaPw8BDbeslvPfcx7r3wM0sL9v6oegIzPqBWMIk9HKjx0GR1R6uUugFwKp
         IrjpgBo2bp7gu6Q0t7ndyfAAxulvqi3qtBBBFbkX4KwQ/iGBm7TQ7N8ejShUsggGIgGv
         BEog==
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
        bh=dw9zEnLNwL43066pIt4y6x3vAlJor9XCkn5dRV0Thdg=;
        b=q8wf3AM3YL5bR6RmyWxgDR7fkefpJO5Pp3YG4wbTVA+X4Ryk+FzZTsgl+vjnDtwdp2
         Lc570yVqUBOtdw3X2ZQwhAzLR8EdiI3ujjHuYfURHzjJGIDf0Px8kXlUqbqbJItsGDPM
         hBFxQxZXyMsSUL3OVBcKt0gjzuvCbocHqxsbI3L79KogUthQ5XmuRDLfoiFDDkOj7tI2
         JxZVELNjEpmiuCDBVW/u+eb0drt8AMCeHKrpssd1771vxAhfTDcYsgt/yBtxjXjpE3gb
         h1sQyNfdOK09PYz2qdKWiYefkrmSDEUOjlsZJOY+D5cMahjpR8+jjCZqH6uQllR1YPoC
         5mdw==
X-Gm-Message-State: ANhLgQ1qdVDwLDX3HRiobRlNO5tOBEQy/aYcgCDsnPC4PNgd40eEeLT2
	lfuVdsgiUAP/o3iVW33iOQk=
X-Google-Smtp-Source: ADFU+vvyBGSAgekqkI0byIw02nk6xqiprz1rMBsZh+29MYLjeEUdOMP2O4Z/5VSQK/rb8ppOMTZfGQ==
X-Received: by 2002:a19:6d0d:: with SMTP id i13mr2261871lfc.105.1584626688490;
        Thu, 19 Mar 2020 07:04:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:43b7:: with SMTP id t23ls411233lfl.10.gmail; Thu, 19 Mar
 2020 07:04:47 -0700 (PDT)
X-Received: by 2002:a19:484a:: with SMTP id v71mr2294412lfa.199.1584626687792;
        Thu, 19 Mar 2020 07:04:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584626687; cv=none;
        d=google.com; s=arc-20160816;
        b=gRVbawAQF3KzFbcQiX27HDQ4lyRrEGa8nFUZei/bMxE+u0B8qPSP2uAHtyes7mxQpc
         WaUCTOGv34IChi22stWvshuVZUZZNI9QSomLcR4aEMUObpRgwXOY0J6uxR0TdYipipD7
         Cyke8We58HrFJWHmBSNrvJS6kj7NWQ90EhCjo3leIzFzCjUsQ7XLABuhpVSaVGKIh0sy
         AK6KOpCfC+TGJNyf5J0tRgD5OVQrQTy2ou24F6Y2WZFcjReJ1RuSOixnO9ZB7jtE5jhI
         IjCAKXy7kRgRPyL97Xp1d1il3x8SJIgp7SthdKnTtiYKCDVWM1KC1z/bsPC8CbRg34Ep
         Aoeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:precedence:robot-unsubscribe:robot-id
         :message-id:mime-version:references:in-reply-to:cc:subject:to
         :reply-to:sender:from:date;
        bh=fm3ddiaQxTuvI/z9KuW3qmE14qjUqi1tn7H9Zi6DatI=;
        b=WPa3wErntCEXYUO8yHUJg8DoXz2knFEAQUFtwq48WSL86f5u7FbUC/ItHelYfjQ7z6
         6D6xe4hJYajwYQ9cCXQM5YJthv4cjk6xeJSaNvC5ory+fg+U7TnWgEWYPo5sQco2DY3m
         w853Fhtpj/Y6Z7UKfda5GAzQyJY705F3pwD4Ytn1bmG2gryLJAwdaV/uBSNWywVWGUoU
         jSePxCl2H4nNK3dOLs9auF5qWfx4hXQkgKQKQnHV6DdXms5W2HpK2UObrEX6xELgKon+
         iyizt/45KFpINnOGglt1d7t7P7M2yDj/PMuP3D6lBP1w0EUZxZ9T9NB9XqKUfiScZupf
         p91Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tip-bot2@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tip-bot2@linutronix.de
Received: from Galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id c15si105118ljn.3.2020.03.19.07.04.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Thu, 19 Mar 2020 07:04:47 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of tip-bot2@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
Received: from [5.158.153.53] (helo=tip-bot2.lab.linutronix.de)
	by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
	(Exim 4.80)
	(envelope-from <tip-bot2@linutronix.de>)
	id 1jEvmu-0001oY-OL; Thu, 19 Mar 2020 15:04:44 +0100
Received: from [127.0.1.1] (localhost [IPv6:::1])
	by tip-bot2.lab.linutronix.de (Postfix) with ESMTP id 358171C22A1;
	Thu, 19 Mar 2020 15:04:44 +0100 (CET)
Date: Thu, 19 Mar 2020 14:04:43 -0000
From: "tip-bot2 for Ian Rogers" <tip-bot2@linutronix.de>
Sender: tip-bot2@linutronix.de
Reply-to: linux-kernel@vger.kernel.org
To: linux-tip-commits@vger.kernel.org
Subject: [tip: perf/urgent] perf parse-events: Fix reading of invalid memory
 in event parsing
Cc: Ian Rogers <irogers@google.com>, Jiri Olsa <jolsa@kernel.org>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Andi Kleen <ak@linux.intel.com>, Leo Yan <leo.yan@linaro.org>,
 Mark Rutland <mark.rutland@arm.com>, Namhyung Kim <namhyung@kernel.org>,
 Peter Zijlstra <peterz@infradead.org>, Stephane Eranian <eranian@google.com>,
 clang-built-linux@googlegroups.com,
 Arnaldo Carvalho de Melo <acme@redhat.com>, x86 <x86@kernel.org>,
 LKML <linux-kernel@vger.kernel.org>
In-Reply-To: <20200307073121.203816-1-irogers@google.com>
References: <20200307073121.203816-1-irogers@google.com>
MIME-Version: 1.0
Message-ID: <158462668393.28353.16174426995039122842.tip-bot2@tip-bot2>
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

The following commit has been merged into the perf/urgent branch of tip:

Commit-ID:     05e54e2386733dfdb62b6784b3d6e1b0bd9bb559
Gitweb:        https://git.kernel.org/tip/05e54e2386733dfdb62b6784b3d6e1b0bd9bb559
Author:        Ian Rogers <irogers@google.com>
AuthorDate:    Fri, 06 Mar 2020 23:31:21 -08:00
Committer:     Arnaldo Carvalho de Melo <acme@redhat.com>
CommitterDate: Mon, 09 Mar 2020 10:29:45 -03:00

perf parse-events: Fix reading of invalid memory in event parsing

ADD_CONFIG_TERM accesses term->weak, however, in get_config_chgs this
value is accessed outside of the list_for_each_entry and references
invalid memory. Add an argument for ADD_CONFIG_TERM for weak and set it
to false in the get_config_chgs case.

This bug was cause by clang's address sanitizer and libfuzzer. It can be
reproduced with a command line of:

  perf stat -a -e i/bs,tsc,L2/o

Signed-off-by: Ian Rogers <irogers@google.com>
Acked-by: Jiri Olsa <jolsa@kernel.org>
Cc: Adrian Hunter <adrian.hunter@intel.com>
Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
Cc: Andi Kleen <ak@linux.intel.com>
Cc: Leo Yan <leo.yan@linaro.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Namhyung Kim <namhyung@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Stephane Eranian <eranian@google.com>
Cc: clang-built-linux@googlegroups.com
Link: http://lore.kernel.org/lkml/20200307073121.203816-1-irogers@google.com
Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
---
 tools/perf/util/parse-events.c | 46 ++++++++++++++++-----------------
 1 file changed, 23 insertions(+), 23 deletions(-)

diff --git a/tools/perf/util/parse-events.c b/tools/perf/util/parse-events.c
index a149958..a7dc0b0 100644
--- a/tools/perf/util/parse-events.c
+++ b/tools/perf/util/parse-events.c
@@ -1213,7 +1213,7 @@ static int config_attr(struct perf_event_attr *attr,
 static int get_config_terms(struct list_head *head_config,
 			    struct list_head *head_terms __maybe_unused)
 {
-#define ADD_CONFIG_TERM(__type)					\
+#define ADD_CONFIG_TERM(__type, __weak)				\
 	struct perf_evsel_config_term *__t;			\
 								\
 	__t = zalloc(sizeof(*__t));				\
@@ -1222,18 +1222,18 @@ static int get_config_terms(struct list_head *head_config,
 								\
 	INIT_LIST_HEAD(&__t->list);				\
 	__t->type       = PERF_EVSEL__CONFIG_TERM_ ## __type;	\
-	__t->weak	= term->weak;				\
+	__t->weak	= __weak;				\
 	list_add_tail(&__t->list, head_terms)
 
-#define ADD_CONFIG_TERM_VAL(__type, __name, __val)		\
+#define ADD_CONFIG_TERM_VAL(__type, __name, __val, __weak)	\
 do {								\
-	ADD_CONFIG_TERM(__type);				\
+	ADD_CONFIG_TERM(__type, __weak);			\
 	__t->val.__name = __val;				\
 } while (0)
 
-#define ADD_CONFIG_TERM_STR(__type, __val)			\
+#define ADD_CONFIG_TERM_STR(__type, __val, __weak)		\
 do {								\
-	ADD_CONFIG_TERM(__type);				\
+	ADD_CONFIG_TERM(__type, __weak);			\
 	__t->val.str = strdup(__val);				\
 	if (!__t->val.str) {					\
 		zfree(&__t);					\
@@ -1247,62 +1247,62 @@ do {								\
 	list_for_each_entry(term, head_config, list) {
 		switch (term->type_term) {
 		case PARSE_EVENTS__TERM_TYPE_SAMPLE_PERIOD:
-			ADD_CONFIG_TERM_VAL(PERIOD, period, term->val.num);
+			ADD_CONFIG_TERM_VAL(PERIOD, period, term->val.num, term->weak);
 			break;
 		case PARSE_EVENTS__TERM_TYPE_SAMPLE_FREQ:
-			ADD_CONFIG_TERM_VAL(FREQ, freq, term->val.num);
+			ADD_CONFIG_TERM_VAL(FREQ, freq, term->val.num, term->weak);
 			break;
 		case PARSE_EVENTS__TERM_TYPE_TIME:
-			ADD_CONFIG_TERM_VAL(TIME, time, term->val.num);
+			ADD_CONFIG_TERM_VAL(TIME, time, term->val.num, term->weak);
 			break;
 		case PARSE_EVENTS__TERM_TYPE_CALLGRAPH:
-			ADD_CONFIG_TERM_STR(CALLGRAPH, term->val.str);
+			ADD_CONFIG_TERM_STR(CALLGRAPH, term->val.str, term->weak);
 			break;
 		case PARSE_EVENTS__TERM_TYPE_BRANCH_SAMPLE_TYPE:
-			ADD_CONFIG_TERM_STR(BRANCH, term->val.str);
+			ADD_CONFIG_TERM_STR(BRANCH, term->val.str, term->weak);
 			break;
 		case PARSE_EVENTS__TERM_TYPE_STACKSIZE:
 			ADD_CONFIG_TERM_VAL(STACK_USER, stack_user,
-					    term->val.num);
+					    term->val.num, term->weak);
 			break;
 		case PARSE_EVENTS__TERM_TYPE_INHERIT:
 			ADD_CONFIG_TERM_VAL(INHERIT, inherit,
-					    term->val.num ? 1 : 0);
+					    term->val.num ? 1 : 0, term->weak);
 			break;
 		case PARSE_EVENTS__TERM_TYPE_NOINHERIT:
 			ADD_CONFIG_TERM_VAL(INHERIT, inherit,
-					    term->val.num ? 0 : 1);
+					    term->val.num ? 0 : 1, term->weak);
 			break;
 		case PARSE_EVENTS__TERM_TYPE_MAX_STACK:
 			ADD_CONFIG_TERM_VAL(MAX_STACK, max_stack,
-					    term->val.num);
+					    term->val.num, term->weak);
 			break;
 		case PARSE_EVENTS__TERM_TYPE_MAX_EVENTS:
 			ADD_CONFIG_TERM_VAL(MAX_EVENTS, max_events,
-					    term->val.num);
+					    term->val.num, term->weak);
 			break;
 		case PARSE_EVENTS__TERM_TYPE_OVERWRITE:
 			ADD_CONFIG_TERM_VAL(OVERWRITE, overwrite,
-					    term->val.num ? 1 : 0);
+					    term->val.num ? 1 : 0, term->weak);
 			break;
 		case PARSE_EVENTS__TERM_TYPE_NOOVERWRITE:
 			ADD_CONFIG_TERM_VAL(OVERWRITE, overwrite,
-					    term->val.num ? 0 : 1);
+					    term->val.num ? 0 : 1, term->weak);
 			break;
 		case PARSE_EVENTS__TERM_TYPE_DRV_CFG:
-			ADD_CONFIG_TERM_STR(DRV_CFG, term->val.str);
+			ADD_CONFIG_TERM_STR(DRV_CFG, term->val.str, term->weak);
 			break;
 		case PARSE_EVENTS__TERM_TYPE_PERCORE:
 			ADD_CONFIG_TERM_VAL(PERCORE, percore,
-					    term->val.num ? true : false);
+					    term->val.num ? true : false, term->weak);
 			break;
 		case PARSE_EVENTS__TERM_TYPE_AUX_OUTPUT:
 			ADD_CONFIG_TERM_VAL(AUX_OUTPUT, aux_output,
-					    term->val.num ? 1 : 0);
+					    term->val.num ? 1 : 0, term->weak);
 			break;
 		case PARSE_EVENTS__TERM_TYPE_AUX_SAMPLE_SIZE:
 			ADD_CONFIG_TERM_VAL(AUX_SAMPLE_SIZE, aux_sample_size,
-					    term->val.num);
+					    term->val.num, term->weak);
 			break;
 		default:
 			break;
@@ -1339,7 +1339,7 @@ static int get_config_chgs(struct perf_pmu *pmu, struct list_head *head_config,
 	}
 
 	if (bits)
-		ADD_CONFIG_TERM_VAL(CFG_CHG, cfg_chg, bits);
+		ADD_CONFIG_TERM_VAL(CFG_CHG, cfg_chg, bits, false);
 
 #undef ADD_CONFIG_TERM
 	return 0;

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/158462668393.28353.16174426995039122842.tip-bot2%40tip-bot2.
