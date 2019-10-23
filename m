Return-Path: <clang-built-linux+bncBDPPFIEASMFBBL6JX3WQKGQEOWU4NSQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd38.google.com (mail-io1-xd38.google.com [IPv6:2607:f8b0:4864:20::d38])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A37BE0F5A
	for <lists+clang-built-linux@lfdr.de>; Wed, 23 Oct 2019 02:54:09 +0200 (CEST)
Received: by mail-io1-xd38.google.com with SMTP id w8sf21598208iol.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 22 Oct 2019 17:54:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571792048; cv=pass;
        d=google.com; s=arc-20160816;
        b=PxQMX5lDnJTYFUIBQVQI0rSqV2jntRIj73EDwgNR5sz6NZpmiBknITdkV1E/949JQF
         yuxqa0dbRz7iyyAkgNb6ySoA9VPdTep/QdKGw86+3Oy1kXFmQEQDsotFL+VxRBdK8z1U
         iyn48lHheUaIiQ9zzEMnEzhSHSFXLnw0z+49haXusE01vb2hZyEn4yqGKOsceMGLiXlT
         vAs2ph9AfY8C50Tq1IfTwPKbkYlBJblzU7/jbHiNLznzrbsmBQiFbATvUHRn8tJV2YhK
         tsdqi8VTDWT/qr23Bni7bEnVOhcieQwTAL1Om2TmVE6av+Lj6TXeW4YCvo+9IHv4UREJ
         j6fg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=i9QqO4m3cw1SGfmVlAeVsbfZ5HyfFZUmKYdfhyl1Gjo=;
        b=Nv0QxMyiSm5sULBTaBPvTNq+a/nCgCMrpEW71aubCdM8TNlwCLKCJNwboZ+/klCxLU
         CKhweWoxG5Gc+fkLliJdi5JmTy/SBck3Zbka54s+U/aTwckkw5/ZD+KF2FroUgHSQuwK
         prvU1IAZDB3jxlukrcXTaKf7kBwARJW62wLowMdCHJE79mn2KzSfYIH9OSkJJT6Zx82b
         D2d/Q5jZPMRkhfw4wLBmfCXKhmZdT+kruZJEZoD7ydu55mwxa7VtjV9QkZZrBkujzITF
         i/lMDY5A5Wfdg3u+uRRqw81wlYcsGV8zabIeyENEuVAxuAPMmCISXnskZ2doMQrCH73g
         bXQQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=aD+ecd8q;
       spf=pass (google.com: domain of 3rqsvxqckeakraxpnabpxxpun.lxvlujwp-kdruc-urwdgpxxpunpaxdyb.lxv@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3rqSvXQcKEakRaXPNabPXXPUN.LXVLUJWP-KdRUc-URWdgPXXPUNPaXdYb.LXV@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=i9QqO4m3cw1SGfmVlAeVsbfZ5HyfFZUmKYdfhyl1Gjo=;
        b=FZAJerz3wb77AG1OqhDpc9hVsfNwy9DVc94XOITeaigRm7hfb97IJeD4z3/u4YupUU
         uZjojQg+JqeGeYIjnyTAddmV/643+KVtyTByBfDH/jIbd7+hjyrjnAHSf62knRRl7DRi
         rBa4lgLJ+rBTxzmY9MxRFk9FXfv4agOfo2hO6F8/8gKavsl/EgrrZeLiLsvqYvzDLlB5
         ekZvj6Z9EbVaTX7iyQvlWg7AdG7fJ52hr9Z6fQ01RVTJGbArLGOaXn2PK64qySE5K8rH
         YDPDxG+wSzLXckqPnpXz39uP4GJm6yWMVVER44842bIEtkhesMI/IA9tserg1QddhdT0
         WhtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=i9QqO4m3cw1SGfmVlAeVsbfZ5HyfFZUmKYdfhyl1Gjo=;
        b=izIztcO08n7eJAFj+hoT4izq6fHkxzOeqom5G4oFymnRvt8lsCh49aae4DNnEWMznu
         Y2Gp9nfXxjTnw8uuE6oNY90e7xHxuVT5kPH+gdf7GFSVl1MjB0cyQZshGq7S0FX+xVFS
         O0dgt6lLguNGy2Bf84cKzURg93PAz74JplyYcjw+bcKjPoJdqhUYETZzJ9I9eNIXWDoC
         URh6Gwrq1dI6WAobzZ5A3dO8FbuQTwhyQjwlKXE6ne55Gg9eBICYvzWqQemOA0GI3IV+
         q6g+8pGUrfYvAdkzUY9L5AyAlBGL8VF1N93Vee/O06/pLfpPG6yahixkryp+kTgqka/U
         U25Q==
X-Gm-Message-State: APjAAAWb5mN6pb1aDBtWEgP387hA21JzlGYfwdBeB4ElbUD9mFAfmMqy
	DQPlxiEcZf76YOvV0eYVsCc=
X-Google-Smtp-Source: APXvYqzqEHrvbP9+pRuYbQqg9Ar0Vszh4HNkaKkQBovkLNq0y2cxtupwMnIgDLa5NpmpOIXiQY425w==
X-Received: by 2002:a05:6e02:cd3:: with SMTP id c19mr16336933ilj.266.1571792047988;
        Tue, 22 Oct 2019 17:54:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:b5cd:: with SMTP id e196ls76286iof.8.gmail; Tue, 22 Oct
 2019 17:54:07 -0700 (PDT)
X-Received: by 2002:a6b:b4ca:: with SMTP id d193mr724013iof.71.1571792047615;
        Tue, 22 Oct 2019 17:54:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571792047; cv=none;
        d=google.com; s=arc-20160816;
        b=ActV3HXwBC4zDZV3aNxjOTPU2O8o1L0UQOWP3qMNygcNsWS5RRks4wQlVLCsfYqyjH
         cT+a98KgaX2ht7BuGKIXRMQpLkZdSR7Mw15AvPB09MWvF5tOhTvzcfq18p8BJZWFUWDq
         I1knJJkbKX5D/vxtCbg/iAms7g2S+IGA9LvPH/eLEcCeX8e3FrQAtbpbt+sFy1jIf5b+
         +BoghyHm8oaYEq4kJjj5jVpK/LyO+cx2cZBbsWdGrSAoxt3Sk7oLgg3iztaIDp6VhY+S
         YPR1FSXG5e8XGElycJwZ9hWruG73gIHZMlkP+n3Dcv6lHhlixbQwYqaYBdy02j8CJf5E
         25eg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=FMgQDO+Dnj5IilbdBYKNu48aqofIvdKnV+5Czp2NCJk=;
        b=AGuBAvyArWVX6nnCu+FC49aW4k81M1015Cv5pTpZ0PLvbRg+WzwYESIFYLZCGzP5p+
         i89NrtzvA/HAvmnaVw7wC0aW4NzLFw9rFalkc+F38KpTGt/AvBwaPrxCKV2gSYIm3cqG
         +pZXlm2qdqYf5bTK1qfRFWffVQm33qrt0ru7WcVKab2tMTHHPA0ioGQdtjYr/o8uD8Co
         LCE5o9jMYZ35m6go2j1YadVX9a1DF/LKcLPkyhYFoDRkSjnZP+O+RfIjHQJl3vlta+eM
         sZbDpoVDEAEI3f+qdMu53CaU+Vh6bA+O1301iX2NZVACpwZ8YE7JAXfVJabetv8/j+N5
         fNFg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=aD+ecd8q;
       spf=pass (google.com: domain of 3rqsvxqckeakraxpnabpxxpun.lxvlujwp-kdruc-urwdgpxxpunpaxdyb.lxv@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3rqSvXQcKEakRaXPNabPXXPUN.LXVLUJWP-KdRUc-URWdgPXXPUNPaXdYb.LXV@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x44a.google.com (mail-pf1-x44a.google.com. [2607:f8b0:4864:20::44a])
        by gmr-mx.google.com with ESMTPS id y205si590184iof.2.2019.10.22.17.54.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Oct 2019 17:54:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3rqsvxqckeakraxpnabpxxpun.lxvlujwp-kdruc-urwdgpxxpunpaxdyb.lxv@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) client-ip=2607:f8b0:4864:20::44a;
Received: by mail-pf1-x44a.google.com with SMTP id 22so14769336pfx.8
        for <clang-built-linux@googlegroups.com>; Tue, 22 Oct 2019 17:54:07 -0700 (PDT)
X-Received: by 2002:a63:ce0d:: with SMTP id y13mr842966pgf.430.1571792046163;
 Tue, 22 Oct 2019 17:54:06 -0700 (PDT)
Date: Tue, 22 Oct 2019 17:53:31 -0700
In-Reply-To: <20191023005337.196160-1-irogers@google.com>
Message-Id: <20191023005337.196160-4-irogers@google.com>
Mime-Version: 1.0
References: <20191017170531.171244-1-irogers@google.com> <20191023005337.196160-1-irogers@google.com>
X-Mailer: git-send-email 2.23.0.866.gb869b98d4c-goog
Subject: [PATCH v2 3/9] perf tools: ensure config and str in terms are unique
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
 header.i=@google.com header.s=20161025 header.b=aD+ecd8q;       spf=pass
 (google.com: domain of 3rqsvxqckeakraxpnabpxxpun.lxvlujwp-kdruc-urwdgpxxpunpaxdyb.lxv@flex--irogers.bounces.google.com
 designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3rqSvXQcKEakRaXPNabPXXPUN.LXVLUJWP-KdRUc-URWdgPXXPUNPaXdYb.LXV@flex--irogers.bounces.google.com;
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

Signed-off-by: Ian Rogers <irogers@google.com>
---
 tools/perf/util/parse-events.c | 33 ++++++++++++++++++++++++---------
 tools/perf/util/parse-events.y |  4 +++-
 2 files changed, 27 insertions(+), 10 deletions(-)

diff --git a/tools/perf/util/parse-events.c b/tools/perf/util/parse-events.c
index a8f8801bd127..f7c8d0853d71 100644
--- a/tools/perf/util/parse-events.c
+++ b/tools/perf/util/parse-events.c
@@ -1424,7 +1424,6 @@ int parse_events_add_pmu(struct parse_events_state *parse_state,
 int parse_events_multi_pmu_add(struct parse_events_state *parse_state,
 			       char *str, struct list_head **listp)
 {
-	struct list_head *head;
 	struct parse_events_term *term;
 	struct list_head *list;
 	struct perf_pmu *pmu = NULL;
@@ -1441,19 +1440,30 @@ int parse_events_multi_pmu_add(struct parse_events_state *parse_state,
 
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
@@ -1462,8 +1472,10 @@ int parse_events_multi_pmu_add(struct parse_events_state *parse_state,
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
@@ -2761,13 +2773,13 @@ int parse_events_term__sym_hw(struct parse_events_term **term,
 	struct parse_events_term temp = {
 		.type_val  = PARSE_EVENTS__TERM_TYPE_STR,
 		.type_term = PARSE_EVENTS__TERM_TYPE_USER,
-		.config    = config ?: (char *) "event",
+		.config    = config ?: strdup("event"),
 	};
 
 	BUG_ON(idx >= PERF_COUNT_HW_MAX);
 	sym = &event_symbols_hw[idx];
 
-	return new_term(term, &temp, (char *) sym->symbol, 0);
+	return new_term(term, &temp, strdup(sym->symbol), 0);
 }
 
 int parse_events_term__clone(struct parse_events_term **new,
@@ -2776,12 +2788,15 @@ int parse_events_term__clone(struct parse_events_term **new,
 	struct parse_events_term temp = {
 		.type_val  = term->type_val,
 		.type_term = term->type_term,
-		.config    = term->config,
+		.config    = term->config ? strdup(term->config) : NULL,
 		.err_term  = term->err_term,
 		.err_val   = term->err_val,
 	};
 
-	return new_term(new, &temp, term->val.str, term->val.num);
+	if (term->type_val == PARSE_EVENTS__TERM_TYPE_NUM)
+		return new_term(new, &temp, NULL, term->val.num);
+	else
+		return new_term(new, &temp, strdup(term->val.str), 0);
 }
 
 int parse_events_copy_term_list(struct list_head *old,
diff --git a/tools/perf/util/parse-events.y b/tools/perf/util/parse-events.y
index 48126ae4cd13..27d6b187c9b1 100644
--- a/tools/perf/util/parse-events.y
+++ b/tools/perf/util/parse-events.y
@@ -644,9 +644,11 @@ PE_NAME array '=' PE_VALUE
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
2.23.0.866.gb869b98d4c-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191023005337.196160-4-irogers%40google.com.
