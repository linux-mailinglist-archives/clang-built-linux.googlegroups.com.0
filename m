Return-Path: <clang-built-linux+bncBDPPFIEASMFBBYFOSLXAKGQEMY5GQQQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 17519F3B09
	for <lists+clang-built-linux@lfdr.de>; Thu,  7 Nov 2019 23:14:58 +0100 (CET)
Received: by mail-yb1-xb3a.google.com with SMTP id 63sf3220094ybv.11
        for <lists+clang-built-linux@lfdr.de>; Thu, 07 Nov 2019 14:14:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573164897; cv=pass;
        d=google.com; s=arc-20160816;
        b=J9V7njoWuztPX+Mkkgr6FcfOUpzJrAMkSWC5C2hzw4H9pLjymgzyY3f4MrMKJ8KceM
         VIfYOz4JOH0Ph2o7L4kF5JJ5s4ZOcuEfICJ3vmLNSJ1Sw6MoG1ed+MiMWF5x8oCBQbvL
         jTsnOiZTTotrsQi9yUVTlxNJ86cEG1b5SPZWp9X9ftBrNzdq+uauzYxJpI+Cw410IknC
         2G27Z39PvOcdFpxHH/vHn508hxP3TfDDZmwdrKiPy1S0fdSXhETIEDe584DYchivH3cn
         N+KTfnumDbohtJ9IOZA/pcn18jAZnILMl2APs8nIQ4IKnMt2OXTyRhB62FaB4T+2qmrl
         Ig9g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=AEg5XYQ5jNDvNFQrRBNM+XcLV5yUB0Mt9DYDaiUQ2MM=;
        b=u7GCECpUpGXVYhN5kObeq9OSKFSfqsJYs3ql8RYBqFUATJp+thrOeJkkEhdhUuyRuf
         h/9HY+4FzMrU0nr0mK15K6kmQp/Y/M3pLuQxVXx6mfO4MRfu3/SoXCF5HqoR6px5QXP5
         QC8vW/EENimnDjWCfjQnUfH2EKDakrhR9ykwC2xV/HS3HTelV30IkDYSfmR1j7UnziDd
         QwNerAZMypAOLW7AR8vgjIRa0WGXpL4eLrRVf7g7piNRyZIsIWlu4jEjl97QKlHE2oj5
         GnjXUR+WVVlVT828JEwrRIztCRVdMfdOfp+dHwlgdnTt/o/bTohFDDVjIEi2KbmmFkCN
         T3Yw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=VEe+Gbab;
       spf=pass (google.com: domain of 3xpfexqckezm5eb31ef3bb381.zb9z8xa3-yh58g-85ahk3bb3813ebhcf.zb9@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3XpfEXQcKEZM5EB31EF3BB381.zB9z8xA3-yH58G-85AHK3BB3813EBHCF.zB9@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AEg5XYQ5jNDvNFQrRBNM+XcLV5yUB0Mt9DYDaiUQ2MM=;
        b=F3G2A4SASwF2D2Yeoa0fBUDNLzWqlVnNUb3zEpNEcwUBWTj91uwGsbsACUHh17yXzm
         hDUnqjMtOVKVYF2BqZEGMvk81J/Kz4nvc0i/b2m4LfUafcMFXXK9QRa81FQgBLzMeqz0
         vhalqqnD3MLmUrKu6QRnwMQG9I+R6i4EDKOkKTz0zPL8mXJ7fH+jVxMLFtpLL1F9M92r
         Px4Xfiwkqey6NV0EtEQWMG26wc3KqTwqrxdfwPhNTGj2v13zZRDvlclbRsIls8uM4OtC
         PMOzkIviUD1Xfm71dtPNUKqYMag9wnzOxNSMG0WDjWaN2iYuyNHAX2RjzNomuAej/RAD
         hmLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AEg5XYQ5jNDvNFQrRBNM+XcLV5yUB0Mt9DYDaiUQ2MM=;
        b=d7JMXlIVcHWhOfONygAW6B/u9aGfm1wDzNunQ736mxtpNqIpQ+gnZ6BGZ2h+wNxa6z
         Ny4Wv1OHMpUO4bD09XCBck2YHZYua16OzK8ADlJ6jHXqLs8v5H2mJO4jXv+6NWGJ2e76
         rGElzbJtUwAjtuu1v92p9Y9DScr4zc/BB1Y2Af1wrNE2EB/o/YEiMKjJ9K5y13rbCo5B
         gHp2llyLTcb8b7rt5baMZyIMpyHxx72f2mExL0lBPA73s9U1LCl0JUbMY4wzYddhTnpB
         oItf4h7YLqBI0kLavMqY4zgE0oyX6RI9HpSGbfxhjLhnr0fsWUrC1LDrRdOoHVNBkhEp
         HsfQ==
X-Gm-Message-State: APjAAAXWjtuD+8ctK1KVz+QPrmKD5V3VhyoljU6fDQoyULoMA72PY7HQ
	YBq0P4GqLpHHvUgkpTd3T8c=
X-Google-Smtp-Source: APXvYqyF+MyYWpmy08dbrC3zeRLxufCPeRuJVgMlu23LtMgtSEGFWAo+4h1kbFcPYypa1N8+gC6Jpw==
X-Received: by 2002:a81:516:: with SMTP id 22mr4616330ywf.504.1573164896482;
        Thu, 07 Nov 2019 14:14:56 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:7910:: with SMTP id u16ls1155929ywc.9.gmail; Thu, 07 Nov
 2019 14:14:56 -0800 (PST)
X-Received: by 2002:a81:13d7:: with SMTP id 206mr4654161ywt.396.1573164896158;
        Thu, 07 Nov 2019 14:14:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573164896; cv=none;
        d=google.com; s=arc-20160816;
        b=VuT0WhbpdsMXr/zCNJDIYZWQr0CILLslh6q5iXoCzT17noTpAGOkQRc7hj8hD/U1iw
         OYzfPJWx8SeiPe52A0NRE2+R3ryZaW5aQ/ZD848R5v1RuYu76mSGgi6SRJhzcia3pFSo
         PJChmmskoeO3rim3ZO0b64ZfP1o1tgVi3W3k2V4o8ISEk1XeDvkvl/trIKfIcQ4Xxw1W
         uoDB3X+CGB+E21Rqv2wO9ho3MB3bo1/QnURgtUmiig58s6FXAmHV/xC1ayLF/5950yp3
         KooebRN120ewC3eLJjXhcCeevLuGeiFqDNWItwyQ+mfKDsUr1FRHB4uCSwEzbGuWfLEV
         iZmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=TexSPagk/qPWLXB1RzSvRc/jlf08CXbHxdJXlTnMvco=;
        b=ypd3BmZFE42XiGbOIoTc5GQ4fitwZ52NmDthMQlD1S71e3H2krPceUsfvK2jW0uED3
         EZ5qj0kgni7joSd8Z1EwqnRDM2TVYjsnNkJGciYXlfFZ+pX+nlB7On5wDoHF7YCCp7uR
         2END8zqc2OAMcyIXzRh8oYyqBcryfMyu6CGjt1MVUgyyYKx6vCmz1sctwa19AjqG7qxA
         aPk0QJrlp5gV4cMIEHw6Fy7KDtdP05xixh3aPt/8tnJbqMWaQAKxkKtfO5TsbOVKeLr+
         zkevIpFwoGiHDHPVF2uAM1WbMC4wt8a31ySxkN6lLtW5tIM+MzteMp7lSXgDX1AILXGI
         XHlA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=VEe+Gbab;
       spf=pass (google.com: domain of 3xpfexqckezm5eb31ef3bb381.zb9z8xa3-yh58g-85ahk3bb3813ebhcf.zb9@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3XpfEXQcKEZM5EB31EF3BB381.zB9z8xA3-yH58G-85AHK3BB3813EBHCF.zB9@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x54a.google.com (mail-pg1-x54a.google.com. [2607:f8b0:4864:20::54a])
        by gmr-mx.google.com with ESMTPS id u8si309732ybc.2.2019.11.07.14.14.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 Nov 2019 14:14:56 -0800 (PST)
Received-SPF: pass (google.com: domain of 3xpfexqckezm5eb31ef3bb381.zb9z8xa3-yh58g-85ahk3bb3813ebhcf.zb9@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) client-ip=2607:f8b0:4864:20::54a;
Received: by mail-pg1-x54a.google.com with SMTP id e6so2992667pgc.8
        for <clang-built-linux@googlegroups.com>; Thu, 07 Nov 2019 14:14:56 -0800 (PST)
X-Received: by 2002:a63:eb47:: with SMTP id b7mr7374005pgk.179.1573164894908;
 Thu, 07 Nov 2019 14:14:54 -0800 (PST)
Date: Thu,  7 Nov 2019 14:14:23 -0800
In-Reply-To: <20191107221428.168286-1-irogers@google.com>
Message-Id: <20191107221428.168286-6-irogers@google.com>
Mime-Version: 1.0
References: <20191030223448.12930-1-irogers@google.com> <20191107221428.168286-1-irogers@google.com>
X-Mailer: git-send-email 2.24.0.432.g9d3f5f5b63-goog
Subject: [PATCH v6 05/10] perf tools: ensure config and str in terms are unique
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
 header.i=@google.com header.s=20161025 header.b=VEe+Gbab;       spf=pass
 (google.com: domain of 3xpfexqckezm5eb31ef3bb381.zb9z8xa3-yh58g-85ahk3bb3813ebhcf.zb9@flex--irogers.bounces.google.com
 designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3XpfEXQcKEZM5EB31EF3BB381.zB9z8xA3-yH58G-85AHK3BB3813EBHCF.zB9@flex--irogers.bounces.google.com;
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

Make it easier to release memory associated with parse event terms by
duplicating the string for the config name and ensuring the val string
is a duplicate.

Currently the parser may memory leak terms and this is addressed in a
later patch.

Signed-off-by: Ian Rogers <irogers@google.com>
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
2.24.0.432.g9d3f5f5b63-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191107221428.168286-6-irogers%40google.com.
