Return-Path: <clang-built-linux+bncBDPPFIEASMFBBSHKY7WQKGQEWG2CXOI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc38.google.com (mail-yw1-xc38.google.com [IPv6:2607:f8b0:4864:20::c38])
	by mail.lfdr.de (Postfix) with ESMTPS id B5C68E3BA2
	for <lists+clang-built-linux@lfdr.de>; Thu, 24 Oct 2019 21:02:33 +0200 (CEST)
Received: by mail-yw1-xc38.google.com with SMTP id o14sf18931395ywa.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 24 Oct 2019 12:02:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571943752; cv=pass;
        d=google.com; s=arc-20160816;
        b=HW2eafqZpfUV4rJCizceyL7jnxyY7MD0dktubsiTRjikz/tcW7ZH3gWwmBL6Bydn9i
         Lzm/SYZil4Ty5JW89U2AnUHq2/ubgsz54mjv4f4f4WYkjeRzP4clA4XgUfANjam6J8wy
         B7JUn7H0cxgPYvuxupEFO25Q06xYtL69PiWz71db/LDT0h8OFDibzpEuDLFtHLRla9Gr
         xpD95ExSbOym5tKfXAn548qoe3HQZ2f4BMPWWa6m1z4XHJi8HvB/pe3L09FWmF7nTb7k
         UPBxSLMDeTrUmeDNlihaHnIdnXRzteh5S+RtpUeXYT8s5FG1tSQE35ZCB5cLeUATId/S
         QwQw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=XnEfz0+xAazlRvNmsJNcQrFdYKhANFaliEYtYqKqFxE=;
        b=WZmff0Cx7+udqSE5GDWFfck/DJsR+AV7fSLByj6u/nv0DUT7P1zmbh+LfK1j5O3yfS
         gfkRuSLc+JBsdaaPwInfdLEhiJSBTXRUSbTZVpueh7XLJl0abnFhT0r1LMnGRMqnOb8m
         DecMQSQAOiMe7OSWK3kOiHSEiXyMdNXPb0PXb5pwoxESHAV4V3UXhWfJo9EH4//dpFCy
         1bckv0w7/OqFMKMBDjS/9eSk3I5MME+bsD+KIUHMQ+eFoIJc+N+sdFmIFlG8G0zNWyqT
         KQgE3QYH7SFX08Wu7eya9E9WcWG9eeQcxVDS2ly+yloRAtnl5zvTQnami/9+PB7Qcj99
         kTZw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=vcWjo9hm;
       spf=pass (google.com: domain of 3rvwxxqckeesvebtreftbbtyr.pbzpynat-ohvyg-yvahktbbtyrtebhcf.pbz@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3RvWxXQcKEesVebTRefTbbTYR.PbZPYNaT-OhVYg-YVahkTbbTYRTebhcf.PbZ@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XnEfz0+xAazlRvNmsJNcQrFdYKhANFaliEYtYqKqFxE=;
        b=NG7wwZp0E+8K/X4trAwmJn38lHQc5cj6ONO2XImpAsSnzknED+Y7mBUdxUzC9Gn9MV
         6yvidq5MHilW+4q29mPHloUui1MzPvwUKr6U3g3d4yPMWZ1LgLuLXc4L9HD6qdeWEAld
         RQJqZC7zp7+UISsot5wgpMG6p8AnP6OiQ+A3h00WsXD7hzoyHx9F5XCuv1uBQg6tdcsU
         PHmT90tIizO2HkGmpHadYqnE8q/Yjm8qzInS7F7uEblOiCpy74RaL+/Ac3EibcFF8dRs
         wEbsrQi/y4GsY2IBB5bapeyyTHXB9Y0l+ekbOJsDHUy9LFkw5vO7XnorFlossTtlR2rn
         rbWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XnEfz0+xAazlRvNmsJNcQrFdYKhANFaliEYtYqKqFxE=;
        b=nBJ+7/G4gGja8qJibNs8KQQLl76k8uAwZCpZ8THeMcschADUiTUvfm4tmCsVnNUJI8
         SuayjAV/YypXT4y1TVUoRXXTUeUcirkCH2fIzl+OqP2s2uMfBb0Gqo6NecslBGr+WvHM
         +qwhqX2kgAvE+B+IL64g6uj4DVe26EIsPjcW827c8D2Q19S10ScVeAmclZdMmSRg4S+d
         W/urIG06C9wkAjYHOJp+xVoezpbxyADxxETxryjc9+EKY3EJPLhoHP0uTwnjw9HFAobz
         Gm2phrnslw9QrSlckajOgMXcPiW2/0sU7/xLPUouHM2U8DU4X+HjLYy3hZNtMAU6EqeN
         vkKw==
X-Gm-Message-State: APjAAAV+k1KAkeq5b8oDaV92YzPp0sD/nOvRtcWh3Ty2EEo7EvvmdsoX
	j1E1srv1/cNOfZ+dg3PCOuA=
X-Google-Smtp-Source: APXvYqwHmwoGwd+BYG5ZhdfcAkRfPrNFzeAlUKLH9s8pWVgDxQDpE8a065iz2NdtRy7f2U4wmLMPHQ==
X-Received: by 2002:a0d:d307:: with SMTP id v7mr8325374ywd.507.1571943752469;
        Thu, 24 Oct 2019 12:02:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0d:df8d:: with SMTP id i135ls1062718ywe.0.gmail; Thu, 24
 Oct 2019 12:02:32 -0700 (PDT)
X-Received: by 2002:a81:300c:: with SMTP id w12mr8198718yww.429.1571943752054;
        Thu, 24 Oct 2019 12:02:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571943752; cv=none;
        d=google.com; s=arc-20160816;
        b=AKV5EuipV2c9gCIt2k+Q+zkOCFGKoB4WV7pTwGtmR4uadSfgygYv9BDyWIA5wxPevg
         n4UZYKzFQVsbbn9uh3kYoeFXYabXmtdx/s4gzRk8lOkdaiSoQNRKZUCn7jRzN8dK83Io
         aU6I2nkUsnpHyStRmHbeuFlcRdWiRf+Y502yy9XqPVG6aDWsbIPDzMKdOvadAna+wcZw
         W/z307Jrs6P0SknurOpnUnRsh4vSKyLx1FlvyVmOy3wecG1L0tMqJ+bIWSlkJmDO/dJO
         MDUV1T4e+Pbv0uuD8QS/l9XATA1TNFEZaZ/ZA8SJWjmZ4ScBfV5IA/VFI1MfL9+/zFlY
         Yv6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=Vv3fl0qJdzHLXy2OjdOBT5vACl8HVGHNjtSIwYY4lOU=;
        b=rmDAlNFRnpMLrGonCBGCm5uIP8gPVmhBrOIU4ZXkTUQtNYTLZOElTlUXiObbZ8tejM
         F+roz3YNKuwtrVQ2aZ9IYPx+kq/Ck6hlcGJaOMYfU2ENK9MwhvZvFFfCgfSSr5BbWeH0
         HfLKiUkSohsbt9+3XmSFXcvjsf6rglzupnnemQwt9LB80b/T+j6uP+c5NyVFDzh1KOKY
         JWO/pQBSZ3r9FhEQDCRMRg+KBvvIs6Gvt6bt7KiKt7K7XF4Vt8Vte8+Ft8sG1CRv3VUM
         82BFGt/+HaCZgJkdYTlvg/TbpHZcQu+OoL6FJQFv0OnoSfGUWpC4NJkiOKbMUEevsJJv
         rOZQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=vcWjo9hm;
       spf=pass (google.com: domain of 3rvwxxqckeesvebtreftbbtyr.pbzpynat-ohvyg-yvahktbbtyrtebhcf.pbz@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3RvWxXQcKEesVebTRefTbbTYR.PbZPYNaT-OhVYg-YVahkTbbTYRTebhcf.PbZ@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x549.google.com (mail-pg1-x549.google.com. [2607:f8b0:4864:20::549])
        by gmr-mx.google.com with ESMTPS id r9si1701073ybc.0.2019.10.24.12.02.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Oct 2019 12:02:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3rvwxxqckeesvebtreftbbtyr.pbzpynat-ohvyg-yvahktbbtyrtebhcf.pbz@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) client-ip=2607:f8b0:4864:20::549;
Received: by mail-pg1-x549.google.com with SMTP id l11so10959893pgg.1
        for <clang-built-linux@googlegroups.com>; Thu, 24 Oct 2019 12:02:32 -0700 (PDT)
X-Received: by 2002:a63:69c9:: with SMTP id e192mr7080758pgc.271.1571943750903;
 Thu, 24 Oct 2019 12:02:30 -0700 (PDT)
Date: Thu, 24 Oct 2019 12:02:02 -0700
In-Reply-To: <20191024190202.109403-1-irogers@google.com>
Message-Id: <20191024190202.109403-10-irogers@google.com>
Mime-Version: 1.0
References: <20191023005337.196160-1-irogers@google.com> <20191024190202.109403-1-irogers@google.com>
X-Mailer: git-send-email 2.23.0.866.gb869b98d4c-goog
Subject: [PATCH v3 9/9] perf tools: add a deep delete for parse event terms
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
 header.i=@google.com header.s=20161025 header.b=vcWjo9hm;       spf=pass
 (google.com: domain of 3rvwxxqckeesvebtreftbbtyr.pbzpynat-ohvyg-yvahktbbtyrtebhcf.pbz@flex--irogers.bounces.google.com
 designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3RvWxXQcKEesVebTRefTbbTYR.PbZPYNaT-OhVYg-YVahkTbbTYRTebhcf.PbZ@flex--irogers.bounces.google.com;
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
index 999ea7378969..58322cb3b5df 100644
--- a/tools/perf/util/parse-events.c
+++ b/tools/perf/util/parse-events.c
@@ -2830,6 +2830,18 @@ int parse_events_term__clone(struct parse_events_term **new,
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
@@ -2860,10 +2872,8 @@ void parse_events_terms__purge(struct list_head *terms)
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
index 4015ec11944a..53af92321693 100644
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
2.23.0.866.gb869b98d4c-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191024190202.109403-10-irogers%40google.com.
