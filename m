Return-Path: <clang-built-linux+bncBDPPFIEASMFBBPHUZTWQKGQE3YKWASI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3a.google.com (mail-vk1-xa3a.google.com [IPv6:2607:f8b0:4864:20::a3a])
	by mail.lfdr.de (Postfix) with ESMTPS id D6AD2E5346
	for <lists+clang-built-linux@lfdr.de>; Fri, 25 Oct 2019 20:09:01 +0200 (CEST)
Received: by mail-vk1-xa3a.google.com with SMTP id k127sf1132781vka.10
        for <lists+clang-built-linux@lfdr.de>; Fri, 25 Oct 2019 11:09:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572026940; cv=pass;
        d=google.com; s=arc-20160816;
        b=Fg05QoknPutchOpFu6ACtp4M/Dc2hBDkwXD90+oGIiB5V2veWAohrk7WX4kr4VUm0q
         SdSidVLIXwRbUW0R7rHWDnfvGWcWtBKtb4+RZhDGK5fKROvuVnjmMbca+haE6tsdV8Rg
         KMiSa0xq1QrnJZZivee69lenRiz73gLMt4vRgzV0SU/VqH3Dx0rMlCjPtBCB4hYKZGV8
         ZHszjTjCvuaQwcpmNeJmk9XmXd5/mtOLgezHVNQVaUAzP6pGl/DSEmfO1dv6qsQOqsEr
         qAouvA7s3JH5OdQjmIxo860v+b9onYnnyMJoyZaG/H7iYZigo4Ak8/DhVKdua85mGNCI
         6QpA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=cqZX7Xy552JefqYdWax7lKMLFTksT4gcV6+UlPQPK7A=;
        b=KGRC1t8IgBuqGkIP6+zhGlqSJPKCUcKTqj22Unv+MQWiMR4DRLZqwTUQY67sBls7Br
         59RpVZTZGBTqyGiJ1eN3a4GqF+7JhyIDgQC2jgUWmJp+z/tHZusXClgY2AJPFNzoqTRT
         FFcUtzKMUS+HVuy4BGxImrXdUdijFCmVMvHeJljhx3KWLUlcHP0KW5EqrNm8cXPQgBai
         xBqBasFs65cc7lzK8jMCtEgAAD5sX7+xA3IaavhF1H8clkiiI3RJOgzd0zD06wOV7J3F
         sGlTGWTXd9BLAyPGc7AmLXGjdo2m+YFl3H9tDjq7T8qNaUvtIv3jzeoIAp11bDhPHLBe
         86Mw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dYyeYPev;
       spf=pass (google.com: domain of 3ozqzxqckexawfcusfguccuzs.qcaqzobu-piwzh-zwbiluccuzsufcidg.qca@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3OzqzXQcKEXAWfcUSfgUccUZS.QcaQZObU-PiWZh-ZWbilUccUZSUfcidg.Qca@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cqZX7Xy552JefqYdWax7lKMLFTksT4gcV6+UlPQPK7A=;
        b=HbYLVdX7IVpgiV67/f7nY3/Ps1ch7zEWVFiiqxSgr52boVSAYdmO0k7aDo/TpYi0CV
         b94ht3RjI5i9hF7zKUxZKRsrAucRLAkGI0eP70NQ91V84kXRsag2hdcuRnX/MY7y85aK
         VmfJFy/tDcsz5I7MTzC7JoKkNcy1GMsg8jW1+/x/CQYw+o2W0tekbeA3/Wk67VYAChCu
         gggJ45vAqUNKRoZ3HiI8uNpkGblFrQPb/KyKDAhC4Khi67rbIgeLs1WD/WPABJroGRlc
         j3Dq+jUmeqUNmYzegR+lFUGAj/0x99WRiI3wbD6wNnHVD1tTPA4sY1Qe49VZfYf5BJnI
         bwjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cqZX7Xy552JefqYdWax7lKMLFTksT4gcV6+UlPQPK7A=;
        b=CkhkfesDtlG31DhAzvRUsDJGRc9NtJDxo07WpSS0p4AggH36aL68UXnFPcpmGly1bH
         4RS/lLx7vEHvcmcEmeUqvegixXYk+9JmtCrYi5fV8qjnw84CwRwxXnhNapVqszmoT9ZB
         43hy4gdZ5E6UKA7L8JhLwRurYeogWyT/vNrXZ6YhhUszwmZigzDoTExc0+hC5XJUCRM9
         vYLWA7n++x8S5LUPqO5pBL2XbbdRENvx2vxl97TYW+xOa0GUW9sBB0bmXCgZTDaLzhem
         KNZEaPlrqwu9GLXiqIfduraUwVZbnzx4L+GPROgXPCX3fZ2ewgVf8Llwt9BpQGvzdm/E
         R60A==
X-Gm-Message-State: APjAAAXSqJ6aJ2a7VOjHXNZ7lAtSR/MtD+gJyml0/AsH5eh7dvBlBACW
	S39b9AEoTsd2YUovQdhxjXA=
X-Google-Smtp-Source: APXvYqzMJ8fLl7fSF/m74hcNoSrP+ScBlo+VAr9XLpr5r409LFzOqynY/vgDyv+WOhazhZTWtvTndQ==
X-Received: by 2002:ab0:2044:: with SMTP id g4mr2266422ual.136.1572026940670;
        Fri, 25 Oct 2019 11:09:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:f68c:: with SMTP id n12ls1025897vso.14.gmail; Fri, 25
 Oct 2019 11:09:00 -0700 (PDT)
X-Received: by 2002:a67:c904:: with SMTP id w4mr2838530vsk.57.1572026940399;
        Fri, 25 Oct 2019 11:09:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572026940; cv=none;
        d=google.com; s=arc-20160816;
        b=Ir70ydbIgD5vw4sqyK3KUYMmWOXAwL8KCNnuLgCvpWPWjpP6g3Y/bWl44SDyIPHU8q
         kl7Cq/EuQwvb9omzA87bIWri9xdKNjnv7UgiK3XNsI3wp0FqdKC7DpbpGqFkcjsE7Mc4
         oUtHweqPphkxaUyALamVoHgBCc8EjV72dypkbsyWoIxLifNSQXHtVEVzfduxreBCdmDG
         1yCzn0KmiP6vkFCTzwCy/2tTIa3xe5vvKo35Yts0P2urwapR8CdEiaezV6ZmnycBRi7D
         9fTAhdD8lxnGL44kW3hTJQQk8dIs7DfHibgc6Ie12vYYCh+gPpIJDrdp4KLDni9tf0QH
         a5yg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=ctmZG51sv2R5UJ2kBx8tVOr4dCy1I0HKxUdPtmnT1GM=;
        b=MdI4yue8pUdePMmATNVW6aWw0PcE+oZW0d0O2lXvbQqXq7DJVwNHpisHUUm7pBeRTO
         fP4+ZiMhzghkvnFXpAwF6YbIQEiTA7vZyguhHUp8ZRUImUIAyE/P/FIxo5WoyK4cYGMd
         tRRcMozfvxTYEpaG0MnMvM0nnugAC2PigyYeNj8ntMsfOrT2rsPirwvw0NPQxdx0Xx6R
         V9iT0xWfSubJZClO5FTVKKc6xxG1dS6bO1IZ84f8u9/f1EE2gDU4v49GqYd6Kw912X59
         Eho22fZTGMvTCzorNW0u9s0lIq+yc3WwMaG/Z7tKh1s7Xiw0Zb6HYrER2Z3nI3ocbZYT
         myIw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dYyeYPev;
       spf=pass (google.com: domain of 3ozqzxqckexawfcusfguccuzs.qcaqzobu-piwzh-zwbiluccuzsufcidg.qca@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3OzqzXQcKEXAWfcUSfgUccUZS.QcaQZObU-PiWZh-ZWbilUccUZSUfcidg.Qca@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x54a.google.com (mail-pg1-x54a.google.com. [2607:f8b0:4864:20::54a])
        by gmr-mx.google.com with ESMTPS id u206si206141vke.2.2019.10.25.11.09.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Oct 2019 11:09:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3ozqzxqckexawfcusfguccuzs.qcaqzobu-piwzh-zwbiluccuzsufcidg.qca@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) client-ip=2607:f8b0:4864:20::54a;
Received: by mail-pg1-x54a.google.com with SMTP id w22so2341348pgj.18
        for <clang-built-linux@googlegroups.com>; Fri, 25 Oct 2019 11:09:00 -0700 (PDT)
X-Received: by 2002:a63:ff54:: with SMTP id s20mr5793046pgk.398.1572026939470;
 Fri, 25 Oct 2019 11:08:59 -0700 (PDT)
Date: Fri, 25 Oct 2019 11:08:27 -0700
In-Reply-To: <20191025180827.191916-1-irogers@google.com>
Message-Id: <20191025180827.191916-10-irogers@google.com>
Mime-Version: 1.0
References: <20191024190202.109403-1-irogers@google.com> <20191025180827.191916-1-irogers@google.com>
X-Mailer: git-send-email 2.24.0.rc0.303.g954a862665-goog
Subject: [PATCH v4 9/9] perf tools: add a deep delete for parse event terms
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
 header.i=@google.com header.s=20161025 header.b=dYyeYPev;       spf=pass
 (google.com: domain of 3ozqzxqckexawfcusfguccuzs.qcaqzobu-piwzh-zwbiluccuzsufcidg.qca@flex--irogers.bounces.google.com
 designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3OzqzXQcKEXAWfcUSfgUccUZS.QcaQZObU-PiWZh-ZWbilUccUZSUfcidg.Qca@flex--irogers.bounces.google.com;
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
index 3db1b647db38..d4347227b396 100644
--- a/tools/perf/util/parse-events.c
+++ b/tools/perf/util/parse-events.c
@@ -2814,6 +2814,18 @@ int parse_events_term__clone(struct parse_events_term **new,
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
@@ -2844,10 +2856,8 @@ void parse_events_terms__purge(struct list_head *terms)
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
index 1438749fb178..401ab359a524 100644
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
2.24.0.rc0.303.g954a862665-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191025180827.191916-10-irogers%40google.com.
