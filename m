Return-Path: <clang-built-linux+bncBDPPFIEASMFBBXVOSLXAKGQE36MMGDA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3e.google.com (mail-yb1-xb3e.google.com [IPv6:2607:f8b0:4864:20::b3e])
	by mail.lfdr.de (Postfix) with ESMTPS id C90DCF3B08
	for <lists+clang-built-linux@lfdr.de>; Thu,  7 Nov 2019 23:14:55 +0100 (CET)
Received: by mail-yb1-xb3e.google.com with SMTP id s8sf3269818yba.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 07 Nov 2019 14:14:55 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573164894; cv=pass;
        d=google.com; s=arc-20160816;
        b=x8XOtwxt5N5hOuGaNvTnUivoxznzVkUWWUpA6qtOAewwrBnKXIc1QBiLguya7U+lOj
         fGp0eAPszgMwphX9Jii4lKpFLiOMS94KHoG/LYRDCI+3qPKw0dkx8sYsZK7yQlcYVI8H
         cVSMu035tOP5iZLTrn6/AmJhx+eR2OTSaF0fNmH+D1DpmAwJ7VQrTlldDHdh/bmmmjRn
         pNYlOgfqYTfBDTXYCn322Oc7Uf3E4D0KXSLP7oVH3FzuSDIOSZAjQOz/Kpr+fUlXdVko
         W57TUb48Jjh3HCj2IV2dqm5fE+O3WUGfiJWlfHKTpq3iolZqQnCqvOp8yXf7s1ZatR86
         F9/g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=VsDYMPY10a2kZcJD82AsWKlEVHcb97qqe5DDVsUBheE=;
        b=WKJ0JOdVlwW6W1NARxMJIJ1b76GHUg3NfbIasNPmmc4zXv+xNRuu/fJuFmoNbVvhZ9
         XsfzDpl4AWHyVpvQQ3aMeoa4XCxVIKz3mXp345ZejFrh5Vv4jerQitW7C3eEXT9aiNug
         nknLQjAnMxEBUiT7ejZCfO30HHCKRxlfuhXCuchuciWWJIpzBrVIK8GCzUl6LnRP6y3L
         s4UZHHBnT2Zr5S1YmmolQr+ID6ls6QrlNQUrzrcMl4W4IAvXI4+BA/JsyDQfRGBbuyrj
         l2QQnAH/5qcyM7+u7BBWNuBxdYG52wqs3db06Gvbyq5FkBu7rif4qSYSdxafzmYI58tl
         WH4Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=mKKIHHcP;
       spf=pass (google.com: domain of 3xjfexqckeze3c91zcd19916z.x97x6v81-wf36e-638fi19916z1c9fad.x97@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3XJfEXQcKEZE3C91zCD19916z.x97x6v81-wF36E-638FI19916z1C9FAD.x97@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VsDYMPY10a2kZcJD82AsWKlEVHcb97qqe5DDVsUBheE=;
        b=hztsmmLR6Vfn5mSUQgbTGbJeZuGL4bUrgGKAEehhGyNlST6wA0GjM6lQDVEj41N06T
         fQlqeigrGlxAXQ9oiB9MRhIOB6fOb2WkZW5ArXIVtTJ5vL8M3kykmCVMKopZYbI6b42s
         m4YAGuV5p1R/UulS2BVvQQC6FCdOOcDp/dSXAvpnJpNBRQ9JZJqgPoOXq+QUqr/GuE2M
         e8g2TMuEEVdW61GbMZRc4+btoUHWOy4KXIsBgxjywLPB2RbtXG+f5QIvKeAQJ5Yhq91B
         ReC3DLLs/kSKcCrcIF5EQmQHRaWHBMAxqXq7Uqgzk1aQ6Zp7oB2lEOqJs40SM2zli72H
         l1zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VsDYMPY10a2kZcJD82AsWKlEVHcb97qqe5DDVsUBheE=;
        b=hEoIrJG0bqCaDx6lLkLHIMIW+0BjGupPDGN83wSb/d32Bh2I6KXs7UXsDo7xRpaW0V
         2pJUkKUX3l5rr4XD9oIZS38KbPmfoZWXhadPgE1BtlgKS9izb0sla0IPN6OZX75uDHNS
         vkiNq+TMhuSZbhYJ2LK+ncjEN/U4VS0Cj+L19azgAykxx03jWr3ERvoWEjc71Ii3gEQR
         Fkpu6My9vnWinYHyVZoVYMn/yEYR8ZkiQ8IA3toh73eQmDZM9pSAXvgmi8COFnk5leFp
         hkUGvhkEV4uUgVPCqPvLYNaFnnPHZLbeJFRHbJI1aPExLZdIQuNN9LMStry3HEEfjjpA
         U2Fw==
X-Gm-Message-State: APjAAAXno9T63iXvzqsOzIGLOSi1JW/eHZpUzFA5//EG/qp56ku4t4kS
	l7X1nU0wGAt6gFbYWIP9OeM=
X-Google-Smtp-Source: APXvYqwTXwp3ES0JtxffAak6Jfk/vyD7enrWH6xsEFD7BMRl5NWBgBRXx2W3u929Je52822rRB7sxA==
X-Received: by 2002:a25:c381:: with SMTP id t123mr5837592ybf.420.1573164894270;
        Thu, 07 Nov 2019 14:14:54 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:9b48:: with SMTP id u8ls1392971ybo.6.gmail; Thu, 07 Nov
 2019 14:14:53 -0800 (PST)
X-Received: by 2002:a25:60c5:: with SMTP id u188mr6049394ybb.237.1573164893481;
        Thu, 07 Nov 2019 14:14:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573164893; cv=none;
        d=google.com; s=arc-20160816;
        b=HQ7C+iQ8HCBYQGzLv5nHz8TY7RDFT4zhJSQS/Ap6w2sLf+D5x8pIJp1kyp8nMtVgR6
         mJIV1/vcZjpsBrh3kb+5nWYRMNILBzoOBlC4s4Wr3C+bKrlqrzRGwPRE8zxn931J2Zju
         XtVi1a2qHwTXckQAQyu12SVZM1gKrm1b3mWtxkOfaJ/FaVPD+H2r+bYcVKOsi0ld5POd
         DB0EnvMEEABFZTzgrzye1fJ+HfvMyaOVnZoHv9pz2IwvPP46e4t1g4AjbwuXvkIt2VO2
         WoYCnbyaeo8FgfQTjWadD2B+NooR7Sd+MHna6fRqgeemx7cMExhurW/Y3dn6WQ8C/bVC
         KikQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=o8eDtK4XLT1yB0wxfi9aIxQpXeS3/ycmioxd58yIuN4=;
        b=pm29vGeEEs6QZOFo1sIJXEx/LxQAumvqFGqYMuh/bPo7KcLkOy/2jrmA9RmPZaqfUS
         WtWx/zaYvMOYsG2DpgAjJjC9kHujoLIks9lRHsKJc5XNPA/xJiMWro069um8bETN0IOl
         vUyOQzyv6/6G68NB1FiUTfohcvlwylf2fQORkRLxDf3vE1xThoGYgDZSeIKTTSLavoPL
         MWXhIekvXgULOc9/8jFVbdVn5px0ozMOoU4V6uAnM+jMuDB9DvX7U7m+uksVUmYt5LLg
         sNoaX0ZXDnpTU2XZogtFo/GCFsTUOnJuRfCSHuCJRq/3S1lKreXp/eLodu/KruXnp3de
         VMvw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=mKKIHHcP;
       spf=pass (google.com: domain of 3xjfexqckeze3c91zcd19916z.x97x6v81-wf36e-638fi19916z1c9fad.x97@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3XJfEXQcKEZE3C91zCD19916z.x97x6v81-wF36E-638FI19916z1C9FAD.x97@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x449.google.com (mail-pf1-x449.google.com. [2607:f8b0:4864:20::449])
        by gmr-mx.google.com with ESMTPS id u8si309728ybc.2.2019.11.07.14.14.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 Nov 2019 14:14:53 -0800 (PST)
Received-SPF: pass (google.com: domain of 3xjfexqckeze3c91zcd19916z.x97x6v81-wf36e-638fi19916z1c9fad.x97@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) client-ip=2607:f8b0:4864:20::449;
Received: by mail-pf1-x449.google.com with SMTP id a1so3025796pfn.1
        for <clang-built-linux@googlegroups.com>; Thu, 07 Nov 2019 14:14:53 -0800 (PST)
X-Received: by 2002:a63:2b84:: with SMTP id r126mr7381052pgr.77.1573164892310;
 Thu, 07 Nov 2019 14:14:52 -0800 (PST)
Date: Thu,  7 Nov 2019 14:14:22 -0800
In-Reply-To: <20191107221428.168286-1-irogers@google.com>
Message-Id: <20191107221428.168286-5-irogers@google.com>
Mime-Version: 1.0
References: <20191030223448.12930-1-irogers@google.com> <20191107221428.168286-1-irogers@google.com>
X-Mailer: git-send-email 2.24.0.432.g9d3f5f5b63-goog
Subject: [PATCH v6 04/10] perf tools: splice events onto evlist even on error
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
 header.i=@google.com header.s=20161025 header.b=mKKIHHcP;       spf=pass
 (google.com: domain of 3xjfexqckeze3c91zcd19916z.x97x6v81-wf36e-638fi19916z1c9fad.x97@flex--irogers.bounces.google.com
 designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3XJfEXQcKEZE3C91zCD19916z.x97x6v81-wF36E-638FI19916z1C9FAD.x97@flex--irogers.bounces.google.com;
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

If event parsing fails the event list is leaked, instead splice the list
onto the out result and let the caller cleanup.

An example input for parse_events found by libFuzzer that reproduces
this memory leak is 'm{'.

Signed-off-by: Ian Rogers <irogers@google.com>
---
 tools/perf/util/parse-events.c | 17 +++++++++++------
 1 file changed, 11 insertions(+), 6 deletions(-)

diff --git a/tools/perf/util/parse-events.c b/tools/perf/util/parse-events.c
index e9b958d6c534..03e54a2d8685 100644
--- a/tools/perf/util/parse-events.c
+++ b/tools/perf/util/parse-events.c
@@ -1950,15 +1950,20 @@ int parse_events(struct evlist *evlist, const char *str,
 
 	ret = parse_events__scanner(str, &parse_state, PE_START_EVENTS);
 	perf_pmu__parse_cleanup();
+
+	if (!ret && list_empty(&parse_state.list)) {
+		WARN_ONCE(true, "WARNING: event parser found nothing\n");
+		return -1;
+	}
+
+	/*
+	 * Add list to the evlist even with errors to allow callers to clean up.
+	 */
+	perf_evlist__splice_list_tail(evlist, &parse_state.list);
+
 	if (!ret) {
 		struct evsel *last;
 
-		if (list_empty(&parse_state.list)) {
-			WARN_ONCE(true, "WARNING: event parser found nothing\n");
-			return -1;
-		}
-
-		perf_evlist__splice_list_tail(evlist, &parse_state.list);
 		evlist->nr_groups += parse_state.nr_groups;
 		last = evlist__last(evlist);
 		last->cmdline_group_boundary = true;
-- 
2.24.0.432.g9d3f5f5b63-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191107221428.168286-5-irogers%40google.com.
