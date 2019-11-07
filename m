Return-Path: <clang-built-linux+bncBDPPFIEASMFBB25OSLXAKGQEQWRN7JI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63b.google.com (mail-pl1-x63b.google.com [IPv6:2607:f8b0:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id C00A7F3B10
	for <lists+clang-built-linux@lfdr.de>; Thu,  7 Nov 2019 23:15:08 +0100 (CET)
Received: by mail-pl1-x63b.google.com with SMTP id w17sf2696859plp.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 07 Nov 2019 14:15:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573164907; cv=pass;
        d=google.com; s=arc-20160816;
        b=v8OaKPRlJb8YTZXRHCH3fVLr6orYrOPNt5IeoYpif/x4XMfXehaS9LU9E4KfczBEfC
         gUbDjHqT6JLG8GxQQ31kHZ3VRqpPW48HvSNfESBspHxZXoOvYXcqOowwnYf9GxrpHD6g
         w+ujTEMf0gO4oQKWe5wLUBVB0KZSQ2Psfu5M7jtozZnimoVJRIJJGQ8CYqIDZgFfYz/C
         Av2vTCf9LWYzvg3jhGcX7u/CBIYFA70reTVCnZ7lCGbfSeD7yUqhfwBF7Y5njI+OKP3S
         63GfFTsQaMHVmP9TrcSz/+YTrYk0tt+kqPISDWFJT6Nzcv3IDpzdUeMHY/KYMQSNsXmi
         /mJw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=81PKLwdr5heM9rVOQdJQJxPmKTqyW8Md4uhzteNEv/8=;
        b=Z9VqMuVioCMbijCbw74JdhoZXz8V+E1iL/RjVnRkm1Ica3pH48p8SOUmki2pfVB/eY
         pWLwlopwD+CeycB9nMMP6E5h8hMqw6a/fygsIkEoqvfkeOTcrDj55RVvTyUYJe+5sLW+
         3A6q32PG2moB8DfKjUM2/IbWWbss74kwlD/vEGNicNucSbMvoyhBvAM2Fm6rLaI8OLyd
         c4NRJF3/As28DTtaspJQBKB90Y6f5EVFVavg+pdtWWVi0EUGmtSIKLkDgQtWaL+52J94
         LlRaEsD359Zrly/dmx31DZFUrg4ssUaReLQSqnu1EhziPIUitYd2dW+lf2tOrMaQe4dL
         TlfQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="J9/+NcEb";
       spf=pass (google.com: domain of 3azfexqckez4gpmecpqemmejc.amkaj8le-9sgjr-jglsvemmejcepmsnq.amk@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=3aZfEXQcKEZ4GPMECPQEMMEJC.AMKAJ8LE-9SGJR-JGLSVEMMEJCEPMSNQ.AMK@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=81PKLwdr5heM9rVOQdJQJxPmKTqyW8Md4uhzteNEv/8=;
        b=XfudVfVRHN69WN2ZuW87j5kcWO7rxKKN39uBfSnMsvvtS0QjdD3NfITDZVRRoKjFkw
         pv8BlAFVRJCBFRNab0/fygIdyDg75I5xmhXkZmUr8JI5ALRnCB88bvboqp4tUjp/BcEO
         r7ebMfzEM/3QE250RREJCEXuGOrlJaTx80AUIPYlgyoy96rx3W2IoWJTRZArM3KkIbR7
         1fN6ScBc8JpTKiHHkCU4xTwdAHrmxEuk2CNPMXCQ6C8nSeAQlEnoCcLqtQB5s0Dk3hPx
         3Be7XoEL9S3kWcuF5ZNiVOfaz5EEjNjNLqcCuB48bsQ33QWt3NrcxIhbtXBAtfo0h8Ar
         dhPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=81PKLwdr5heM9rVOQdJQJxPmKTqyW8Md4uhzteNEv/8=;
        b=TIRjcQQIthlglBmFYItusfx3z514t4DzqiQmsp7bKhPC6N3EN6KfsRrzme7x2pWpHY
         /EsJTen1mhhzk8+OD3vL6Q0t1l7gOUdgsP921GFx9w2BgkWarY2NP6kixbztCA9RbJNJ
         U6cOYC7eG05iSMkqQ+1UzcA8JYyWnTuEsy6ubcmCh7JQuWYjke/dviLnwrd9vowI9r+j
         RBygtaN7mOnnyH/s6CexE2gx/FriUu0dqWAuTwpwmuM+YGdOQpdwhqpaBB+7BXhlxe54
         6j61mor3YXemA7w/DqQpiBBNm2RMKgExmm0P6cadL8HqhwID+6ph2uit7SDc0wtPAFZv
         R5Kw==
X-Gm-Message-State: APjAAAVjMd2vMeiiSLGjG9K48ONhDhjs4owsLdemO9fsTFp6N09Nel64
	e9+AophaRYXDv03NrkqZL6Y=
X-Google-Smtp-Source: APXvYqwYe5f8dhB7Ss4EcIADloTj8sfxGke/bU34acrrpmAyE0gb/q/c9Sv+RZQEyBlYpl6TDEoJrA==
X-Received: by 2002:a17:902:ac90:: with SMTP id h16mr6634733plr.147.1573164907347;
        Thu, 07 Nov 2019 14:15:07 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:b485:: with SMTP id y5ls1738113plr.0.gmail; Thu, 07
 Nov 2019 14:15:06 -0800 (PST)
X-Received: by 2002:a17:90a:25aa:: with SMTP id k39mr8510360pje.123.1573164906927;
        Thu, 07 Nov 2019 14:15:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573164906; cv=none;
        d=google.com; s=arc-20160816;
        b=U95Xt+s8nLc0/0/pjdKfeCjyLUP6Pb2o+7v7wa33nxRxDOptKLFwChXylhUU4l3DsP
         wr8SEDs5cZ0jxbBcdOlNsdXnFSZNrhPYZ7xWTF5cklWvK7PkmT7gk5llkoHUxOSZpnys
         T9k50dwsCuy2Pz/r0pQVVEMH6O+DEP4pQLRQ+OsrEMWomKTe64zGwV2SStBBt0+fhnfM
         WRlTko/IE331B5o4nUHTlFQmHkKcw6tPRdxd5mVGp7KpdwBux2sfLoAS3RGxXzeGqNOQ
         hEUJVlIwayPbs04ljcOBybdLibtQJetzxu+6zgRPptXouyGHlstrtXxinmRmk1/w95Cz
         ACkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=RO+dD7fMF+loxfMI95W5obH94+g4tEmZJjELHIr1A/8=;
        b=G8UDDAU2Eh+eI9dNXySFhmMle5WuD/j13w+wKL4XTlSig47rLOChjDePS3MTzbu7sM
         8WSuHAxNozJ9WaxcAI4c1qon2F34siyhaJmMBTIt4FjvMvOMuuEa4ZMqZ57WrVVP6Cq1
         Mnqpc22LN7ElvTYHUDjKXAqTw4niqGPOFCssWgk0zu8MV64uPp4T64m4YgPMjbYaQMSV
         hsjO4/HRJhaJ9PtWMkIkK5vQatRPDJeC+Rq38AF+jPQCIRpSrkI77iHkEEfclcOPusdQ
         BcKYqoGxZvCBdNXHRND5KgQXxcj/VFlKBRkr8BKv0R9m6njb3K5R2/e0EBIjtuX+NjOO
         QZGw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="J9/+NcEb";
       spf=pass (google.com: domain of 3azfexqckez4gpmecpqemmejc.amkaj8le-9sgjr-jglsvemmejcepmsnq.amk@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=3aZfEXQcKEZ4GPMECPQEMMEJC.AMKAJ8LE-9SGJR-JGLSVEMMEJCEPMSNQ.AMK@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x64a.google.com (mail-pl1-x64a.google.com. [2607:f8b0:4864:20::64a])
        by gmr-mx.google.com with ESMTPS id n10si244059pjp.0.2019.11.07.14.15.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 Nov 2019 14:15:06 -0800 (PST)
Received-SPF: pass (google.com: domain of 3azfexqckez4gpmecpqemmejc.amkaj8le-9sgjr-jglsvemmejcepmsnq.amk@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) client-ip=2607:f8b0:4864:20::64a;
Received: by mail-pl1-x64a.google.com with SMTP id f7so2678739plj.12
        for <clang-built-linux@googlegroups.com>; Thu, 07 Nov 2019 14:15:06 -0800 (PST)
X-Received: by 2002:a65:624e:: with SMTP id q14mr7431914pgv.277.1573164905944;
 Thu, 07 Nov 2019 14:15:05 -0800 (PST)
Date: Thu,  7 Nov 2019 14:14:27 -0800
In-Reply-To: <20191107221428.168286-1-irogers@google.com>
Message-Id: <20191107221428.168286-10-irogers@google.com>
Mime-Version: 1.0
References: <20191030223448.12930-1-irogers@google.com> <20191107221428.168286-1-irogers@google.com>
X-Mailer: git-send-email 2.24.0.432.g9d3f5f5b63-goog
Subject: [PATCH v6 09/10] perf tools: add a deep delete for parse event terms
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
 header.i=@google.com header.s=20161025 header.b="J9/+NcEb";       spf=pass
 (google.com: domain of 3azfexqckez4gpmecpqemmejc.amkaj8le-9sgjr-jglsvemmejcepmsnq.amk@flex--irogers.bounces.google.com
 designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=3aZfEXQcKEZ4GPMECPQEMMEJC.AMKAJ8LE-9SGJR-JGLSVEMMEJCEPMSNQ.AMK@flex--irogers.bounces.google.com;
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

Add a parse_events_term deep delete function so that owned strings and
arrays are freed.

Signed-off-by: Ian Rogers <irogers@google.com>
---
 tools/perf/util/parse-events.c | 16 +++++++++++++---
 tools/perf/util/parse-events.h |  1 +
 tools/perf/util/parse-events.y | 12 ++----------
 tools/perf/util/pmu.c          |  2 +-
 4 files changed, 17 insertions(+), 14 deletions(-)

diff --git a/tools/perf/util/parse-events.c b/tools/perf/util/parse-events.c
index a0a80f4e7038..6d18ff9bce49 100644
--- a/tools/perf/util/parse-events.c
+++ b/tools/perf/util/parse-events.c
@@ -2812,6 +2812,18 @@ int parse_events_term__clone(struct parse_events_term **new,
 	return new_term(new, &temp, str, 0);
 }
 
+void parse_events_term__delete(struct parse_events_term *term)
+{
+	if (term->array.nr_ranges)
+		zfree(&term->array.ranges);
+
+	if (term->type_val != PARSE_EVENTS__TERM_TYPE_NUM)
+		zfree(&term->val.str);
+
+	zfree(&term->config);
+	free(term);
+}
+
 int parse_events_copy_term_list(struct list_head *old,
 				 struct list_head **new)
 {
@@ -2842,10 +2854,8 @@ void parse_events_terms__purge(struct list_head *terms)
 	struct parse_events_term *term, *h;
 
 	list_for_each_entry_safe(term, h, terms, list) {
-		if (term->array.nr_ranges)
-			zfree(&term->array.ranges);
 		list_del_init(&term->list);
-		free(term);
+		parse_events_term__delete(term);
 	}
 }
 
diff --git a/tools/perf/util/parse-events.h b/tools/perf/util/parse-events.h
index 34f58d24a06a..5ee8ac93840c 100644
--- a/tools/perf/util/parse-events.h
+++ b/tools/perf/util/parse-events.h
@@ -139,6 +139,7 @@ int parse_events_term__sym_hw(struct parse_events_term **term,
 			      char *config, unsigned idx);
 int parse_events_term__clone(struct parse_events_term **new,
 			     struct parse_events_term *term);
+void parse_events_term__delete(struct parse_events_term *term);
 void parse_events_terms__delete(struct list_head *terms);
 void parse_events_terms__purge(struct list_head *terms);
 void parse_events__clear_array(struct parse_events_array *a);
diff --git a/tools/perf/util/parse-events.y b/tools/perf/util/parse-events.y
index 376b19855470..4cac830015be 100644
--- a/tools/perf/util/parse-events.y
+++ b/tools/perf/util/parse-events.y
@@ -49,14 +49,6 @@ static void free_list_evsel(struct list_head* list_evsel)
 	free(list_evsel);
 }
 
-static void free_term(struct parse_events_term *term)
-{
-	if (term->type_val == PARSE_EVENTS__TERM_TYPE_STR)
-		free(term->val.str);
-	zfree(&term->array.ranges);
-	free(term);
-}
-
 static void inc_group_count(struct list_head *list,
 		       struct parse_events_state *parse_state)
 {
@@ -99,7 +91,7 @@ static void inc_group_count(struct list_head *list,
 %type <str> PE_DRV_CFG_TERM
 %destructor { free ($$); } <str>
 %type <term> event_term
-%destructor { free_term ($$); } <term>
+%destructor { parse_events_term__delete ($$); } <term>
 %type <list_terms> event_config
 %type <list_terms> opt_event_config
 %type <list_terms> opt_pmu_config
@@ -694,7 +686,7 @@ event_config ',' event_term
 	struct parse_events_term *term = $3;
 
 	if (!head) {
-		free_term(term);
+		parse_events_term__delete(term);
 		YYABORT;
 	}
 	list_add_tail(&term->list, head);
diff --git a/tools/perf/util/pmu.c b/tools/perf/util/pmu.c
index f9f427d4c313..db1e57113f4b 100644
--- a/tools/perf/util/pmu.c
+++ b/tools/perf/util/pmu.c
@@ -1260,7 +1260,7 @@ int perf_pmu__check_alias(struct perf_pmu *pmu, struct list_head *head_terms,
 		info->metric_name = alias->metric_name;
 
 		list_del_init(&term->list);
-		free(term);
+		parse_events_term__delete(term);
 	}
 
 	/*
-- 
2.24.0.432.g9d3f5f5b63-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191107221428.168286-10-irogers%40google.com.
