Return-Path: <clang-built-linux+bncBDPPFIEASMFBBJVA5DWQKGQEIYSKPZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63b.google.com (mail-pl1-x63b.google.com [IPv6:2607:f8b0:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id D7A40EA64A
	for <lists+clang-built-linux@lfdr.de>; Wed, 30 Oct 2019 23:35:19 +0100 (CET)
Received: by mail-pl1-x63b.google.com with SMTP id g4sf1339356plj.19
        for <lists+clang-built-linux@lfdr.de>; Wed, 30 Oct 2019 15:35:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572474918; cv=pass;
        d=google.com; s=arc-20160816;
        b=dZMNVbegsQBxp8YmqGqNO3UbnsafRMtp2vY7ANc13mYEUf/AqBlrh1DKfW8UtHpjFn
         +LsdK0aTbZjOkJBTFw09CwJNF1CZEm6MPjPWEWq9qlP4Iw/QfMCIuyQakQowqOZf+SH8
         UkaBHOrXy/8UmBia6TRt01SktlDxzMOsr3i0mR1noSBGxGAsa2Neg3JC6rVlH0aU13IC
         mIcY9IF1U4RYVIcKqq138ml2rIGJDlxEvfbLn9/y+nfRyqSjutiOCKg8t7ucZsgN/L6u
         Br9wVRwz9pvyzEM1EdfrbBuIuljs2HivVzR79fH9taT3PwNH4MWHydBSfq8uFkH2AbOc
         Wx+w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=5X9uxtdUUHWyYhKGO47iXLPN32WwFtPDGRhozH7tW2Y=;
        b=eO19/bHi4+fUtO45eBbVg3YJB2L8wKIz2x+B9cYk3Sierd8i0SUkxmoDQjp/Sc2Azy
         gtFFuSIAA+w7hqUcIq3fzh5cwzKob9DBn6YYWOmfFH2N0FPLXaqtGO3Ox6ut0Ba/1Q2I
         /+hDC6NoFzpZg/jaYjy4GT8evxC9uQerSoo28BQhjDRoqDA9MR8XnaKZRd9H+8Zq2xeM
         EygCj2kJziOH8Mqg6R4Pf3ZhhCaXhrENYB50qYZoR5DbAur0ZG54vgT/vlYy2donYTm1
         Nrq4hhPqqUUGkDt/vD7IqRrho7PWsg94uVAOjgqqPWQS7Haw0Fq4SLzv2MMTUNWMG2Rs
         m6pg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=BKymhZUZ;
       spf=pass (google.com: domain of 3jrc6xqckesigpmecpqemmejc.amkaj8le-9sgjr-jglsvemmejcepmsnq.amk@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3JRC6XQcKESIGPMECPQEMMEJC.AMKAJ8LE-9SGJR-JGLSVEMMEJCEPMSNQ.AMK@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5X9uxtdUUHWyYhKGO47iXLPN32WwFtPDGRhozH7tW2Y=;
        b=NRuBo4uMs+J4+aM2M89R2zdoAn2erlXs1+yeXvgJTqrf8LQvo+YrDlr/j5VGxquHI5
         eKNrnqkSOpSqrSuymmUbGfdlSfJqziJHdlg0HsWQp2t0DZaOSFIpv+pfSA2kPQxCuENC
         zTDkgiWl6cNWBrkrupYefLa7D2QZCYOTwoXaSrYPMwY/uqoDBE8u9j4lAHk6XpqPMOFk
         aba6Mh9hvknQho1YI78l+sHt+WuAAbXTDkkACFpC5jGe8FfowNA/1iOVZDyhny5o+CTn
         uucDq+M1cH2/mBH/MNa3y0HEvr0zKT4MIJhnsKexiHGL3WsMsQa5UhauqrK1hJRsM/Qa
         0jxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5X9uxtdUUHWyYhKGO47iXLPN32WwFtPDGRhozH7tW2Y=;
        b=JOcFkCNK0Gz/OqpF7OTuY9mZbHJZDfXRCTTHn+Y0SUXIQ6SJe1lGWxLMz7SRIF1eRT
         vZ4QgXHSKo7oH8EXKCmV/PW6RafSvMLwX9ZbVRnPjgAq6Mng82lt08AlQuzf3OJhFBO6
         u2uydTOl9K/2mvdNHNfCZIWs69JUUF9vicZlHUeaHxx8cnkgMf5AhJwxOkDM1hgh9m7K
         Li4MuaH/eEluOrYMUYpiAYv8QDNdnTsoFwJt+U/d0y1NQtcC/eeRnBmnqrE0eykI5TFk
         k8IFebEcJM6ROmLz/h4vXcPAbDnzqC8x4jq/xBTa/6Q8khiiPsxeIxucX+B7wvTbInD1
         eBkw==
X-Gm-Message-State: APjAAAWdA90qpjmDh6IPfqtsNvU9Dt7+tFa6J6RqIEfEznc8wz0i6hC6
	fMZloVXPnNxxn1bp65D1rVo=
X-Google-Smtp-Source: APXvYqzI1/KZYQbjy5/IeousTgutMb58dj1OUkvlI58h0i9FXjFxZI/g45PS31F6CiM3x8McGHEqZA==
X-Received: by 2002:a17:902:441:: with SMTP id 59mr2456299ple.300.1572474918350;
        Wed, 30 Oct 2019 15:35:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:a503:: with SMTP id v3ls252137pfm.7.gmail; Wed, 30 Oct
 2019 15:35:18 -0700 (PDT)
X-Received: by 2002:aa7:8ad9:: with SMTP id b25mr1930488pfd.168.1572474917909;
        Wed, 30 Oct 2019 15:35:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572474917; cv=none;
        d=google.com; s=arc-20160816;
        b=A4q4elqeChQhb1sar2OuOKsfzD95/UvWytBRrv0i6jBB3GEs5ivTBRnfxyEVuXJpVX
         YKYFxOSZojul2uzUGS7U2G4wxISc8Rvx2SDGHyNmerQ5N7Ct4d4q24RLmXSnQzKOAeH8
         Fo5G3eZ+ehC1VBvcqFKCqs1Foa0lzXRa/S7R4TXwsahrWSTG04oCbk5XD2y2CA6tgZrK
         fPx4zjg5GqwWMh0Z6wzaiolNmKC9on8OUnzNogRKaxcnkW9Wqv9j2BQm/S+2l8Qe9W0A
         NhHuM9OAspIQp8pOd2Xkf1uEEXorsrefaGkY5qIburYoe0O7WUfTyBCmfqI7mbOcWv8l
         Ck8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=p9FVirzTzYKaiGv+x7/Rx/zUK46UD8R9gJICu3l/Lr8=;
        b=qxIYqs0SphzOIpMHUtw2vUw84b9Eq5wiCRqsYpaFX5C6bN15dPnbIXRFQoIvw+SsCr
         Ca4DtM+086cr0cZUr05o27akCzjgw9bOM7kLVizpqJVMmoZc8Sr/VD8q8PRnsOQd6p3e
         aDtAfL7qFCnjotWGWaCWzpL/L+8FstWB8b3zMHcGMNo682eLJJjs7BLVj92dqLiUKRZS
         0zR58uc8WdLw8VPjUp4lIdheltN94VEPYy933Jkq41i+bpFi6RJvpYbpRjR9wHqR8Tdl
         nj9Ve0X7TmBUEpAxmD6MT3ahjzZh2bWLZIyt5+REYuwUzz+ugEnwnzn48B4oOhipoxta
         6Kuw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=BKymhZUZ;
       spf=pass (google.com: domain of 3jrc6xqckesigpmecpqemmejc.amkaj8le-9sgjr-jglsvemmejcepmsnq.amk@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3JRC6XQcKESIGPMECPQEMMEJC.AMKAJ8LE-9SGJR-JGLSVEMMEJCEPMSNQ.AMK@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x54a.google.com (mail-pg1-x54a.google.com. [2607:f8b0:4864:20::54a])
        by gmr-mx.google.com with ESMTPS id d9si169698pfr.3.2019.10.30.15.35.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Oct 2019 15:35:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3jrc6xqckesigpmecpqemmejc.amkaj8le-9sgjr-jglsvemmejcepmsnq.amk@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) client-ip=2607:f8b0:4864:20::54a;
Received: by mail-pg1-x54a.google.com with SMTP id v10so2733777pge.12
        for <clang-built-linux@googlegroups.com>; Wed, 30 Oct 2019 15:35:17 -0700 (PDT)
X-Received: by 2002:a63:3445:: with SMTP id b66mr1958323pga.177.1572474917209;
 Wed, 30 Oct 2019 15:35:17 -0700 (PDT)
Date: Wed, 30 Oct 2019 15:34:47 -0700
In-Reply-To: <20191030223448.12930-1-irogers@google.com>
Message-Id: <20191030223448.12930-10-irogers@google.com>
Mime-Version: 1.0
References: <20191025180827.191916-1-irogers@google.com> <20191030223448.12930-1-irogers@google.com>
X-Mailer: git-send-email 2.24.0.rc1.363.gb1bccd3e3d-goog
Subject: [PATCH v5 09/10] perf tools: add a deep delete for parse event terms
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
 header.i=@google.com header.s=20161025 header.b=BKymhZUZ;       spf=pass
 (google.com: domain of 3jrc6xqckesigpmecpqemmejc.amkaj8le-9sgjr-jglsvemmejcepmsnq.amk@flex--irogers.bounces.google.com
 designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3JRC6XQcKESIGPMECPQEMMEJC.AMKAJ8LE-9SGJR-JGLSVEMMEJCEPMSNQ.AMK@flex--irogers.bounces.google.com;
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
2.24.0.rc1.363.gb1bccd3e3d-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191030223448.12930-10-irogers%40google.com.
