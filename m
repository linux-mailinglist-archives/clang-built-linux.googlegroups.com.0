Return-Path: <clang-built-linux+bncBDPPFIEASMFBBV43RXZQKGQEW2MFVQA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73c.google.com (mail-qk1-x73c.google.com [IPv6:2607:f8b0:4864:20::73c])
	by mail.lfdr.de (Postfix) with ESMTPS id F0C4B17CCA5
	for <lists+clang-built-linux@lfdr.de>; Sat,  7 Mar 2020 08:31:36 +0100 (CET)
Received: by mail-qk1-x73c.google.com with SMTP id w6sf3258075qki.13
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Mar 2020 23:31:36 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1583566295; cv=pass;
        d=google.com; s=arc-20160816;
        b=zR/lYl/slVwamC6qqELS4PaDlPLETp5VLb8c8mDR8kFQ45juqiSqZnXT4fyskK6k/M
         +qgVxNCv0eCgcLdW93+j9P/dnwpRvp79IwvxdNO6H/Adyj6AKtRiURi+F1YQQpIvspIV
         fmuwzle1HkUR2S8yef4CZZ0NCsaZ7/8leadI5sQud4X5Mnuc7sZeUkQ3JkWfrRK9S+gh
         urmOOG7tLewuSASngKnGL2T8c/zPJkZgix2m12ROrFnnzDsvbSPXGl8rrg1TShGKgoLK
         2/q+9CLcflV1TYh8R6h1fkFla1EAhYjRiaIFrxBGLGHvAIi0eaj8O3C9rIiRPBFiw4Pc
         MeQg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=jWmkp5/ZM/xq+k6P7aca7ksXh2D5DWYU/ge8J/k1ySA=;
        b=lSonpyOojenfnm3i2aOwfDtHpyJCQrCRm/WJSCGsNAaTBtrRqs9v2tRpb/f1aohM0p
         k5XpAkV1NIynH830JAVRo9k5wFM7nqJUwQWNJR3yUX+33mMXAxeqzhAojBRJ2NUmLGEV
         pmQjTdoeDs7H9motADsGegZGMCqDFdF4qbmeoE8dcDlhOuelzkThLbfRUwNnhih7stTP
         RS7dvcxPqb1eya9mtlB1L4T6zKV2eZulBPqfEQSYoSQCod13hw3fX3mLpkI2yRS1vjT0
         Pawj+6fkYuGQfA+vvh1qZxZUtGWLnx0HkOKZg7cZTHtnj/SG5F5SOCwGE9upg7jugV3y
         QwDQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=jKbOA4bB;
       spf=pass (google.com: domain of 31u1jxgckefygpmecpqemmejc.amkajyle-zsgjr-jglsvemmejcepmsnq.amk@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=31U1jXgcKEfYgpmecpqemmejc.amkajYle-Zsgjr-jglsvemmejcepmsnq.amk@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=jWmkp5/ZM/xq+k6P7aca7ksXh2D5DWYU/ge8J/k1ySA=;
        b=Lin/+5SRB5TMLQbi0P3yxgez+IHdtokC6ejRkz/JVLNS7J5NX6J/6kaHyDB410MeNq
         oL/nCct2EItrseSeXp4Jd2C5QuSelW0KxK6zjgHiPCwItRkBCuEgguhwvmXBNUcx7ekk
         mRm+y3mpIAUri7DT50enrkAPekqzz9guO817g/Dh/f15Ljabi55QQ+gDzaxq7yAmxCp6
         aFxygJlbyaeP81VN4b+/EDOuMWGqI8/3WQhUCDahMjNohHRLooIuSnbCrOHUIr+DKiPI
         DKZGUnLL78Pu9dM0NxKebzr8OMl2uFe4DKVwi8LSO/hTkh+BgVZKu87sERwQfqWPa0A9
         Mzfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jWmkp5/ZM/xq+k6P7aca7ksXh2D5DWYU/ge8J/k1ySA=;
        b=fLrRXenIMphPFz0OyoBGrQMhMnt2lEzLvW8aSpgHnB7XBDlHVEPiVjd2b5e1cwOEoY
         1Wy9cBKdMtwdYKbjXT7hKY7Ljojo2v7zEQzQBT13YCx9uYWJHD6V/X0EU0eMFNB0DXmH
         cJC5svhdz7kmEYD1Vitw4l/q2QWTJvcv7KHlIhVevh5qRTTc4isQyiv6VNME8GJivhvD
         pZl1z3dr8YmbtHUaF7yLd1ptKDrLDMcysha4NHO6TOdl5n4uXwkWa+AOzkjVwJPT5fQb
         O7/xoo0ZKj6VKM0VO/MJ6jU/XQMnrvCIFQDo8zMRphBZ1AvcTRZWx0CgS1vQyBB+ltuc
         jGLQ==
X-Gm-Message-State: ANhLgQ3Sl45QlG4hX29JQQcw2shOH675SqnBxU0nWg4r2cyJ783YuShk
	R6XLRnlCt1SngH0/QnN4atw=
X-Google-Smtp-Source: ADFU+vvXK1YExNujVHYGeVt4llaBJN4KhgK/1Pa9CxNCQlySJJscur00kWaY2mzGz2ioKG4vIYrsvg==
X-Received: by 2002:a0c:e886:: with SMTP id b6mr6334857qvo.31.1583566295385;
        Fri, 06 Mar 2020 23:31:35 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:514c:: with SMTP id g12ls1103062qvq.7.gmail; Fri, 06 Mar
 2020 23:31:35 -0800 (PST)
X-Received: by 2002:a0c:fb06:: with SMTP id c6mr6228531qvp.122.1583566295050;
        Fri, 06 Mar 2020 23:31:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583566295; cv=none;
        d=google.com; s=arc-20160816;
        b=BgfQIc6w/fJs55SZGSh4MZD93JE+Vk2MmD4m6KM47rTRKLDwHnfONOP2rbGMqKlVxu
         /qi4n8T+MX/uvBQOY+p9hcg34stirzDzDtlBdkiNZKNTMBY+98arOClohd1qZDo/wgSU
         OnUN+LewVE+OhQpNRU2QJoe4doVtQLm83SGv6t31iW9z9I6LMpuXuTEpJDvZMH04Sq6R
         fiGeOMco3Z0KcHEX+NwrRCNLNFBvj+HrrJAKDWvK6YW1m1ylIVOdbNW9JwUW9BDhy9kK
         0PsdFWrHh+5fJ8EKG+KkDNNy/X+fzBqCjEmhd0yEhrY7rVLyRs3Uz8Z60/8M8pREwTZS
         O80A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=Nvst3AaP56nlItqXpc0+4F52f+TlnZkB8BIILlWHxto=;
        b=XnCr9hY85KuZVRuAaMnqrKDl4ptkPDu4YQyb2uRqpObeWNT65+gyCRf7pgH5H65+nl
         AYsZger+BZzLiYluVwicjwRNjaEvzCWxFFbdKIUoXj1STXTXsVZDVql+A6owzpKXizpe
         JbFbPdXN8RIe5tLoyySI6zQQ/wcaaMu/pxfAQlOkv3SYyhgyGvG/oFbsZymFz+qYNmsP
         xHBFVFUH8SmlNfDccHnWV8a4oOBjhmQlQ9/GTVyzeTsmXzoI4pPJeVSUgQ5JFkH0vNsr
         sicdOvj7aiIFhCPkM4XTFZGwsGEHfW7Z+VUSt/m1Aj9O0pXXh4c0BCUb9zy5C1Ci30/+
         kgRg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=jKbOA4bB;
       spf=pass (google.com: domain of 31u1jxgckefygpmecpqemmejc.amkajyle-zsgjr-jglsvemmejcepmsnq.amk@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=31U1jXgcKEfYgpmecpqemmejc.amkajYle-Zsgjr-jglsvemmejcepmsnq.amk@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x54a.google.com (mail-pg1-x54a.google.com. [2607:f8b0:4864:20::54a])
        by gmr-mx.google.com with ESMTPS id e26si209038qka.2.2020.03.06.23.31.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Mar 2020 23:31:35 -0800 (PST)
Received-SPF: pass (google.com: domain of 31u1jxgckefygpmecpqemmejc.amkajyle-zsgjr-jglsvemmejcepmsnq.amk@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) client-ip=2607:f8b0:4864:20::54a;
Received: by mail-pg1-x54a.google.com with SMTP id r10so2755613pgu.22
        for <clang-built-linux@googlegroups.com>; Fri, 06 Mar 2020 23:31:34 -0800 (PST)
X-Received: by 2002:a17:90b:1989:: with SMTP id mv9mr7699891pjb.72.1583566293905;
 Fri, 06 Mar 2020 23:31:33 -0800 (PST)
Date: Fri,  6 Mar 2020 23:31:21 -0800
Message-Id: <20200307073121.203816-1-irogers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.25.1.481.gfbce0eb801-goog
Subject: [PATCH 1/1] perf/tool: fix read in event parsing
From: "'Ian Rogers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, Jiri Olsa <jolsa@redhat.com>, 
	Namhyung Kim <namhyung@kernel.org>, Andi Kleen <ak@linux.intel.com>, 
	Adrian Hunter <adrian.hunter@intel.com>, Leo Yan <leo.yan@linaro.org>, 
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Cc: Stephane Eranian <eranian@google.com>, Ian Rogers <irogers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: irogers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=jKbOA4bB;       spf=pass
 (google.com: domain of 31u1jxgckefygpmecpqemmejc.amkajyle-zsgjr-jglsvemmejcepmsnq.amk@flex--irogers.bounces.google.com
 designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=31U1jXgcKEfYgpmecpqemmejc.amkajYle-Zsgjr-jglsvemmejcepmsnq.amk@flex--irogers.bounces.google.com;
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

ADD_CONFIG_TERM accesses term->weak, however, in get_config_chgs this
value is accessed outside of the list_for_each_entry and references
invalid memory. Add an argument for ADD_CONFIG_TERM for weak and set it
to false in the get_config_chgs case.
This bug was cause by clang's address sanitizer and libfuzzer. It can be
reproduced with a command line of:
  perf stat -a -e i/bs,tsc,L2/o

Signed-off-by: Ian Rogers <irogers@google.com>
---
 tools/perf/util/parse-events.c | 46 +++++++++++++++++-----------------
 1 file changed, 23 insertions(+), 23 deletions(-)

diff --git a/tools/perf/util/parse-events.c b/tools/perf/util/parse-events.c
index a14995835d85..a7dc0b096974 100644
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
2.25.1.481.gfbce0eb801-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200307073121.203816-1-irogers%40google.com.
