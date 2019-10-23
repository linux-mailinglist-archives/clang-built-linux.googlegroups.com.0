Return-Path: <clang-built-linux+bncBDPPFIEASMFBBP6JX3WQKGQEZBR4D5A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3f.google.com (mail-io1-xd3f.google.com [IPv6:2607:f8b0:4864:20::d3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 88E8EE0F60
	for <lists+clang-built-linux@lfdr.de>; Wed, 23 Oct 2019 02:54:24 +0200 (CEST)
Received: by mail-io1-xd3f.google.com with SMTP id q11sf21742485ioj.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 22 Oct 2019 17:54:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571792063; cv=pass;
        d=google.com; s=arc-20160816;
        b=BHuRV+kpVJ1o9rlc9Xe/ceDa8PXZoLuN5Gyt3usaR8K7oFPP1izKVW7xOwwfVkMbH8
         85btOlI0VZz6LwFCski/5euxALDk89zOki/HBTiWBC8YugqIpRuh7JKbI/O0Z+mRfxuo
         /DZFuU6zkbgv40xIEiryEk2l1RFNgjVLJrHrVLiu31ftnrRTo/UyTqmeGUC8a2KBLnew
         YLEi8M2gFoGISxeTYJYc3OjfRwVIWeRHbj3flgPkwJl9hcfn8p74GblFNzGVHZSO8LxJ
         6r4dzy8hN0DBK9HBkIrmKVfAR7z5aETBtLv7GPG2th3/Jlfv42r5tCNGRMB8ZeGn7Dk0
         VxDw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=bLo2FSlMTJ9OBESJBJf/bvmu3Srl7BbQXBd7bAxoO0I=;
        b=QGote1SfnGTt9HN1o2FDMkXN5AXCyAPri8DBScZHIH/HI5I8d0opQh0IHierHw0/w9
         VeiT8XbnW1AU1i8bTv3YcBMREwbaSbZz3N6ri0PalJ+fUbGcd4+dKkY6lWgTAZJ8t2I6
         YaWtst0tvre8TthJtXdbF4zuAP7FFTpzZuuNTq9+WpHpJ8LpiA/MNe9GzXKeS5LzHYOY
         SBdGr8uncRJMI4hatg4O9NJdxYbJrmEszVcMbVUEENn41SNdJ6772XMBCSGPj4Pph4UY
         06gtscefvyIwcRO7sprE5dvUtA6M9GxqLczjdK1BPoa8EHPSDDp3idn98cjZpibp8eZe
         vawg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=r0rbBPq3;
       spf=pass (google.com: domain of 3vqsvxqckebkhqnfdqrfnnfkd.bnlbkzmf-athks-khmtwfnnfkdfqntor.bnl@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3vqSvXQcKEbkhqnfdqrfnnfkd.bnlbkZmf-athks-khmtwfnnfkdfqntor.bnl@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bLo2FSlMTJ9OBESJBJf/bvmu3Srl7BbQXBd7bAxoO0I=;
        b=j9Aq/lA6c72/MyzpY6F9UEx3VTrLV4lKTdu0jfmfHCMCjDNRdtNP6O5VUhIxwXcdZA
         of0rTF12MJaumN8E/fjez9NpsoqZ6CrGFS3SV6UogKzvsoZF3nLiFjYyhgniwaPsAPt2
         7eyMfg7wXYuCsRGiX7WpxVWVPOZjGbjeoQb+5280Y2jgsjUtKBo4AAV0HxSXkhPI/2xi
         jQZRqVh+dU2Sd6j5fHDATWFmsXJVktYgxOXa4FxvuFlk6giU8HhosTSzTI/PvcN8wGjY
         I9J0RXtKxUo5Jt3+RYwH9+r/jHH5csA9bGWoGPfsITDNbdS4HqRwK12PLVSFAfvAAck+
         oeeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bLo2FSlMTJ9OBESJBJf/bvmu3Srl7BbQXBd7bAxoO0I=;
        b=VA9Fv8rQLGQdUTeGfT2hfnpF6IaBBfokxc4YMnj6KF8VD98PXbQaq1CXTYgh+BT1YD
         YGxTfGmPHk6Mlk0pRh2Y3E/WaF4W8mcuviU7Z1oDDPjc8Rbi6bLbldkDotG4+LGcodoT
         94kGN4GSvyDdw70G6uFl6yQiH70xWz0J5XbkEFDOFn8qrn/625ShuCadegcuACCJLdxl
         2doLERkTNBG3Av+EIicZYHUlBlR+aYOlxeNcPU9w02ttpOmIIcDU8S0Tlqsr+naIM57A
         tqnFYi+8pLkH1WdidrpxZ/vAj6M7iXBnsCeAdQS0JNPEyQLRqW+DEbBvLM/V2WjSjG5P
         JLJA==
X-Gm-Message-State: APjAAAVMfbKY1QlO5pVqGbm+fqSwA7JvP97vpeJJEE8Iyeqhg+eTdzq4
	d+BRpsDq+vySv5q/bYOjJp8=
X-Google-Smtp-Source: APXvYqz5onK7EwxnSaI2L+c2nVnlh4YDOL39HadbF5QiUroFZf7feGwk6FHXNAhvCCMi2HHGXwSotg==
X-Received: by 2002:a6b:ee1a:: with SMTP id i26mr735004ioh.202.1571792063472;
        Tue, 22 Oct 2019 17:54:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5e:aa09:: with SMTP id s9ls78343ioe.5.gmail; Tue, 22 Oct
 2019 17:54:23 -0700 (PDT)
X-Received: by 2002:a5d:874d:: with SMTP id k13mr785118iol.176.1571792063114;
        Tue, 22 Oct 2019 17:54:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571792063; cv=none;
        d=google.com; s=arc-20160816;
        b=sSR7k7YGUp472aR83q2/2g9N/nHScs/oDoRl3LKYgxM8QxM0n026hFZc0D5VnynH8C
         RTEFNnXFZvA5FOZWQH0um2qnhtGiyOpBRdxCt2sCyxHuXjiwk0ejoGnrbIprjyqLhgZX
         069DK9URbzy/YUhJC7IVnd3JTtACLZUrAWRzuHqj29O62nRMbLK/WPTnlZRu4yGrIvlF
         C6QYu8jtZUEA/AX7eNb7mQ8kXzoWJ4Bhfsogiij4mppf6OOa0l8uOeU0K89rYhuWIgCD
         SfVCrLEi311ojmXr9nktL7wm/O9o/SPJteeGIGL34wDEjZP/RePb4uFxBO86XxntmopI
         aWDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=PC42O41NBd9i4kPitdETrfG1Za58EwGfR6rcMq8N6/A=;
        b=LXXNgVOW3u2rXFkrFgxWKb+zLzny+VsWOsyd0R2E6NEANc1wThcD5b6w1MybiWNiDl
         8O11uIWJlfy1+kymfcuOPLxnp3ocmThTjVGqTBhIYNMkj+lInfXuBGzzxSjyFgBe4l1R
         uPnyeW9kb5cBAyXtF71mYMjQD2duqOFsmKVpxliHkA0TTEE6r6VZhAilIcne0bI5jn65
         h3S0obDQzYGLpUUvgsaGCI4/GO8to80rhqcb67wXfe7Qt06sxm7LdbcNottdSIPA/L4A
         Kodg6/2vaHbQnsnsBirJK435ZPZGjupbR0WmLxFRGcne2vtDbJvPpfejm4TeCXhiyfdI
         00dg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=r0rbBPq3;
       spf=pass (google.com: domain of 3vqsvxqckebkhqnfdqrfnnfkd.bnlbkzmf-athks-khmtwfnnfkdfqntor.bnl@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3vqSvXQcKEbkhqnfdqrfnnfkd.bnlbkZmf-athks-khmtwfnnfkdfqntor.bnl@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x549.google.com (mail-pg1-x549.google.com. [2607:f8b0:4864:20::549])
        by gmr-mx.google.com with ESMTPS id s5si804945iol.1.2019.10.22.17.54.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Oct 2019 17:54:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3vqsvxqckebkhqnfdqrfnnfkd.bnlbkzmf-athks-khmtwfnnfkdfqntor.bnl@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) client-ip=2607:f8b0:4864:20::549;
Received: by mail-pg1-x549.google.com with SMTP id b14so13806025pgm.22
        for <clang-built-linux@googlegroups.com>; Tue, 22 Oct 2019 17:54:23 -0700 (PDT)
X-Received: by 2002:a63:1904:: with SMTP id z4mr6953016pgl.413.1571792062316;
 Tue, 22 Oct 2019 17:54:22 -0700 (PDT)
Date: Tue, 22 Oct 2019 17:53:37 -0700
In-Reply-To: <20191023005337.196160-1-irogers@google.com>
Message-Id: <20191023005337.196160-10-irogers@google.com>
Mime-Version: 1.0
References: <20191017170531.171244-1-irogers@google.com> <20191023005337.196160-1-irogers@google.com>
X-Mailer: git-send-email 2.23.0.866.gb869b98d4c-goog
Subject: [PATCH v2 9/9] perf tools: add a deep delete for parse event terms
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
 header.i=@google.com header.s=20161025 header.b=r0rbBPq3;       spf=pass
 (google.com: domain of 3vqsvxqckebkhqnfdqrfnnfkd.bnlbkzmf-athks-khmtwfnnfkdfqntor.bnl@flex--irogers.bounces.google.com
 designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3vqSvXQcKEbkhqnfdqrfnnfkd.bnlbkZmf-athks-khmtwfnnfkdfqntor.bnl@flex--irogers.bounces.google.com;
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
index 6bf64b3767cc..5e7bebc8fad4 100644
--- a/tools/perf/util/parse-events.c
+++ b/tools/perf/util/parse-events.c
@@ -2806,6 +2806,18 @@ int parse_events_term__clone(struct parse_events_term **new,
 		return new_term(new, &temp, strdup(term->val.str), 0);
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
@@ -2836,10 +2848,8 @@ void parse_events_terms__purge(struct list_head *terms)
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
index a7d42faeab0c..d1ade97e2357 100644
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
index d1cceb3bc620..649c63809bad 100644
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
@@ -693,7 +685,7 @@ event_config ',' event_term
 	struct parse_events_term *term = $3;
 
 	if (!head) {
-		free_term(term);
+		parse_events_term__delete(term);
 		YYABORT;
 	}
 	list_add_tail(&term->list, head);
diff --git a/tools/perf/util/pmu.c b/tools/perf/util/pmu.c
index 0fc2a51bb953..081e55300237 100644
--- a/tools/perf/util/pmu.c
+++ b/tools/perf/util/pmu.c
@@ -1258,7 +1258,7 @@ int perf_pmu__check_alias(struct perf_pmu *pmu, struct list_head *head_terms,
 		info->metric_name = alias->metric_name;
 
 		list_del_init(&term->list);
-		free(term);
+		parse_events_term__delete(term);
 	}
 
 	/*
-- 
2.23.0.866.gb869b98d4c-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191023005337.196160-10-irogers%40google.com.
