Return-Path: <clang-built-linux+bncBDZ7JWMQ2EGBBR44TX2AKGQE772TSFI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33e.google.com (mail-ot1-x33e.google.com [IPv6:2607:f8b0:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id BABC719D988
	for <lists+clang-built-linux@lfdr.de>; Fri,  3 Apr 2020 16:55:04 +0200 (CEST)
Received: by mail-ot1-x33e.google.com with SMTP id d59sf6836761otb.5
        for <lists+clang-built-linux@lfdr.de>; Fri, 03 Apr 2020 07:55:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585925703; cv=pass;
        d=google.com; s=arc-20160816;
        b=EPy7jH1VnMFKhZJ8ehr9cJ00SQk9kRN9r2h5vI57cZkzohAfaKGJ/sGKJebiikTpZU
         VdDZEuFVqAkr5kNyotpzCOzzKuTK0U8bejJZxOlB8h69ozbYkKYaAyDJogpbeOQmV2nE
         seNnpXlhZTfR4wd2qry1QdO6QmURo0Q0sqHipz0WsgnjL9pULwgSmVZGivgC7ZGbocz0
         V3L14eBzID68KLcfZcxHxLAhnOLsm5VEBDk/C7+sK36Z0URce9jrWIG985IZPUTFiELm
         oWxuf/bkticICn0PyFx/z8DnSVfYFsfqUWKmQhihWb4rZX+JOSCHqwmpobGU4uoLDf+W
         P69A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=eMvAt77hK0r1+mtt/LyWCDPTakLexVpAIEQGw1wxPOw=;
        b=fNh8zw1EBUvEUymySH/7rLknBKfRYuIdbnqpw+0oaOeBstKU6DGqRDOFoSyGNgAwxP
         UY7Vqhb6KQwhISL6/VNJc/5l/Y6LFeWVI1bPo4+BxG8HQbINBoVB+e5hq38fbqgT+h4w
         Ie4z7ue+ZGcnZvUaeiAnhUlaZzDeif391UBgo4AqGhISaivGrEuZVAgOn2dXKWS8Vnrx
         Wv+ZPWVGK68GlSDvtpxp1v7ZLtYcs3UdLVp/IZ0fwIXa75WdAKYXe1ISVagZQwxSneVR
         KB3rWTlB7u9/2xyFQ9cPrmqxPNvah05m2l+aPSbUyJniVl5raB1sd21GkdITUO7/brqy
         OCEA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=tKgTPn5+;
       spf=pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=acme@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eMvAt77hK0r1+mtt/LyWCDPTakLexVpAIEQGw1wxPOw=;
        b=XzeZSUpUn7ybfjddRhQ+A3s7dedZUqMT0nQK1KE4cIucxCsoF9n2hl5M6z8IrauXZS
         cO3iE5Saof++VJXP+2Lsy/sS8M/MN5IvZIp17anPRu4oovXXoNRJFco6//J5u3tTTx4s
         +3mQU8bamSkuJs241oBQbhdQAgpjjoTB109GytfxKU+/oHEw3IqNRPwKWmycgJu78ZGp
         gkCU8OXP1zAxkrVqnZFvFIbk5K2mjNmiZig7C+93aC8xK9VNYnnbBKVnelgNTlRkl4pz
         KcLEqRZNzxzmyW3OaM7AtPDsPpD4KNxV0vyDUpujbjcDEr5qgkWe8GaEpuX0M4CQ2KCk
         fwbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eMvAt77hK0r1+mtt/LyWCDPTakLexVpAIEQGw1wxPOw=;
        b=WEM83hgJU8LKafNqJZIyxrDtSFfx9+f1eo9vS3i1JLLy1oXXWJvKNR1oUA8wv2I4My
         yfg4iY1xvVW/V/ftGQO7Me9IJfbuaevnTuXLUSVdvmUcHkbixWIYf3AJlU81Y7SZXZPi
         V3jwKzR7XbDmFUT6tW497NO00c2+K8gpM3zoiPvpXZIiX31QDkCXtj7bNBvkJCtS9O3T
         735vewJrk4VAv/gWGfRrtnfkVh1TfkeFqlttkxkY1Kq4Lw9u0yKbR4YlJA/KSvipHpbT
         aH0WRApmrjZ+fIAJValQBSXym+Km28AE73k9tHdrqOJcy0WOYbfT//rAYWPIVAgLhgB1
         Gdmw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuYsjO8zv2oYhk3tvbD3kFFKygAEUBz1Y2blydVxnv+Q/ue5jDJn
	8fm5wRfNYfVJg/IL9eLxOzQ=
X-Google-Smtp-Source: APiQypKhgxcaPpGZBSP+98tkwl4bs+eb6AwRAhQaKhoSzl6jQSR2FkSVLFB1mJLPiNMeckWB5MmNIg==
X-Received: by 2002:a9d:798a:: with SMTP id h10mr6481270otm.367.1585925703352;
        Fri, 03 Apr 2020 07:55:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:817:: with SMTP id 23ls3125105oty.8.gmail; Fri, 03 Apr
 2020 07:55:02 -0700 (PDT)
X-Received: by 2002:a9d:7c90:: with SMTP id q16mr6966258otn.104.1585925702877;
        Fri, 03 Apr 2020 07:55:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585925702; cv=none;
        d=google.com; s=arc-20160816;
        b=LuAgtYALCeeP5bApcAK6DPv2gBQe93shAuP9vrM6oXkFOLITiTZ7cEi34jYnl5xic8
         fFKrlyFndo5ZqdoBa4wxcndT9jbc6EON6vYoNPb2apP8/O65OVGQV+r8ZmWpcu9y8KeR
         RgburR6f3altcvTuaojgnwh3NX0B7NrpqIaXP1bqBf60T9U7neJ3UoZUmOMtNJmT/LCq
         UG8qUOabaeE+rQ4/hiivD5K7L+VXZ/RSxep5nUBpT4DUpz3cCSRW2iKzoefZn7xWFw+r
         oh3C9DXXpSOuLEeJ2xt7HrBxKjhsp06AkkwO2y7A9MqPVO3yOR6cFhUa1YL5MX9HPIZ/
         bHLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=56QbV0tq/LuoBT/O99rdul5YQ9vGY9/qXg5hNwEhkpQ=;
        b=NX2+r0zf9fqptUjr7lLCxy5lqGZ0lNQyBMZSd1f4tFHRvHMbmhK4iWnVaeFkzEi+NB
         h1eyGzsRtkOT5Dko/z+Ej2TXV9sYhUeTEEjBqdD9Txg5PHV5skejH0vhp2MOlBmZQ/zF
         VMw38i/nFjip32FZuIeUMD3sphLmzCqnWSnZiheLSt3qJDbBKirU8W9SD2xtvWEsIyTP
         SAEdQhsP46+bupIlaXVD4PovOUx07O5tCZJRXhu3TK0ryum8EZOsaSWrsNIbYvPIh+ds
         u3EFjCDdtSGj65cK795H56pOug5EyAFLAt/o2czQtB29923qws7pBf5PLU1/h/0eYiLu
         t5Ew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=tKgTPn5+;
       spf=pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=acme@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d11si521397otk.5.2020.04.03.07.55.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Apr 2020 07:55:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from quaco.ghostprotocols.net (unknown [179.97.37.151])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 83150208FE;
	Fri,  3 Apr 2020 14:54:57 +0000 (UTC)
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Ingo Molnar <mingo@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>
Cc: Jiri Olsa <jolsa@kernel.org>,
	Namhyung Kim <namhyung@kernel.org>,
	Clark Williams <williams@redhat.com>,
	linux-kernel@vger.kernel.org,
	linux-perf-users@vger.kernel.org,
	Ian Rogers <irogers@google.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Andi Kleen <ak@linux.intel.com>,
	Jin Yao <yao.jin@linux.intel.com>,
	Jiri Olsa <jolsa@redhat.com>,
	John Garry <john.garry@huawei.com>,
	Kan Liang <kan.liang@linux.intel.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Stephane Eranian <eranian@google.com>,
	clang-built-linux@googlegroups.com,
	Arnaldo Carvalho de Melo <acme@redhat.com>
Subject: [PATCH 02/31] perf parse-events: Add defensive NULL check
Date: Fri,  3 Apr 2020 11:54:14 -0300
Message-Id: <20200403145443.24774-3-acme@kernel.org>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200403145443.24774-1-acme@kernel.org>
References: <20200403145443.24774-1-acme@kernel.org>
MIME-Version: 1.0
X-Original-Sender: acme@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=tKgTPn5+;       spf=pass
 (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=acme@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
Content-Type: text/plain; charset="UTF-8"
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

From: Ian Rogers <irogers@google.com>

Terms may have a NULL config in which case a strcmp will SEGV. This can
be reproduced with:

  perf stat -e '*/event=?,nr/' sleep 1

Add a NULL check to avoid this. This was caught by LLVM's libfuzzer.

Signed-off-by: Ian Rogers <irogers@google.com>
Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
Cc: Andi Kleen <ak@linux.intel.com>
Cc: Jin Yao <yao.jin@linux.intel.com>
Cc: Jiri Olsa <jolsa@redhat.com>
Cc: John Garry <john.garry@huawei.com>
Cc: Kan Liang <kan.liang@linux.intel.com>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Namhyung Kim <namhyung@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Stephane Eranian <eranian@google.com>
Cc: clang-built-linux@googlegroups.com
Link: http://lore.kernel.org/lkml/20200325164022.41385-1-irogers@google.com
Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
---
 tools/perf/util/pmu.c | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/tools/perf/util/pmu.c b/tools/perf/util/pmu.c
index 616fbda7c3fc..ef6a63f3d386 100644
--- a/tools/perf/util/pmu.c
+++ b/tools/perf/util/pmu.c
@@ -984,12 +984,11 @@ static int pmu_resolve_param_term(struct parse_events_term *term,
 	struct parse_events_term *t;
 
 	list_for_each_entry(t, head_terms, list) {
-		if (t->type_val == PARSE_EVENTS__TERM_TYPE_NUM) {
-			if (!strcmp(t->config, term->config)) {
-				t->used = true;
-				*value = t->val.num;
-				return 0;
-			}
+		if (t->type_val == PARSE_EVENTS__TERM_TYPE_NUM &&
+		    t->config && !strcmp(t->config, term->config)) {
+			t->used = true;
+			*value = t->val.num;
+			return 0;
 		}
 	}
 
-- 
2.21.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200403145443.24774-3-acme%40kernel.org.
