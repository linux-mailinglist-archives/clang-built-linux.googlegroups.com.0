Return-Path: <clang-built-linux+bncBDPPFIEASMFBBLOJX3WQKGQE2RABNLQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb39.google.com (mail-yb1-xb39.google.com [IPv6:2607:f8b0:4864:20::b39])
	by mail.lfdr.de (Postfix) with ESMTPS id 22E86E0F59
	for <lists+clang-built-linux@lfdr.de>; Wed, 23 Oct 2019 02:54:06 +0200 (CEST)
Received: by mail-yb1-xb39.google.com with SMTP id w2sf14760945ybo.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 22 Oct 2019 17:54:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571792045; cv=pass;
        d=google.com; s=arc-20160816;
        b=hemPgikLNccsV4pGPoKzAfK6GYhaZlizsX5ZvoPq7tCjo/rfWuBg4UrP5lxcju+fqj
         8BE4FbWM5V9zHJ/RRvHe7pkQ1vfiyU9Ut3CYi3jsep33dcji+1+EFfDpCVNT7MAzAVrh
         3hgQ08eQ5YyP8wRhTqfsx9LeLGvX2gldbhC6jHgT+Vq3cjFFNPu6tTqZSD3dHhChkv4v
         TFrevhlCMpCgKwqa2B14K367svWny0awPyn3TQKtJ48nlelPZskEVDe6FO4n4LVnD177
         zSJyI6X/Z7ReWhY8UX+8mq0KiSZkmxha6cp89Cjf78Wwr4pgE2O3iPaZYYdpMhhYq1q7
         1dfA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=nQiPmrmvv9Nx1TodUAgrq/7qyrZMK4gIymVPG0VaSGg=;
        b=bgkjfEHK67TswLIw3BU0E0UHuIpMLtdB2vU71AtYR+IVEtN7Q7OA92uTT7czWSmxlz
         9RILyZiI0s8Yc7Dd+SgUFh1Oeto/XmYrY2jf8KvBEZTAxngYlO5YAZgPmXjYbKcfc150
         huCAxsqbhDUuCGR2m1dg5I9ce4D2yvytkZDqJoy1LC64TPVEDMMu2oai5JoaEWDQQ2so
         H/GVxvAEb73G4fHqEWQwQ0Gm+QUBVQm9720UNsRTVRTjIBxDYNbL5VXyla634q4/5ZHp
         YVBy1UzBcloE4DIpFiQ+WOJUxGtaFs9xDUNkEdNgGoB8Dq/U9SBQELK27EH84o/UkY9M
         R+6g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dxp56W5Q;
       spf=pass (google.com: domain of 3q6svxqckeayoxumkxymuumrk.iusirgtm-haorz-rotadmuumrkmxuavy.ius@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3q6SvXQcKEaYOXUMKXYMUUMRK.IUSIRGTM-HaORZ-ROTadMUUMRKMXUaVY.IUS@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nQiPmrmvv9Nx1TodUAgrq/7qyrZMK4gIymVPG0VaSGg=;
        b=q9SQ9blvOpT70Q4gaH5I/8u3ZQaRWy7T5dZSD261R4DwS68f7Lbpt4eStevp2hnk+S
         ebPnA30/Nq7iUSWabkR9nTkoriL6mdZv93nRVU5zBO/dpZljcXbIg1r6qqmgu3OCPFlB
         prY1kViFeYnxidZp/dRtAhdfw5OrmANcx1rsM+p4HNDVEkM/ZiguCy17QW9v4uogFGuW
         Fgq8LXt4oK3kNqit2my/ubF2YE6TIwICtRqJGn+Af+dFXb4W4b1gW1J7ZkBAcL5UNUs/
         ykr0xSsk3FGL3m4GPhkVRSrpRUSNnKFxzYz96G/dPCtsHPrxo170Vz5GMA3CY4/ZDgqD
         6zSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nQiPmrmvv9Nx1TodUAgrq/7qyrZMK4gIymVPG0VaSGg=;
        b=uR6GTnt2xNgkph1Vsp/Hpt7nrtQrnB/AuCA7pT85SA44R3VV53uT9N/lM25gFSbxrT
         oBo8GjJBeNoiDEuQYcBq9KLNJrA3hpeS/H/xlNrUxxMMpYaQEBoAR433QxcBj+u5ONmg
         CeU93LeUe0vEnu16QI6McQwGjj5yZODSeqtVjOCU77z0OtsP84d0Pm6vB+rcLvg1z/M0
         ZEYGe8M277G967tny6lVzhxQLuWs+Rb8QDa+OJLD3ZjvBZIYJC1re3Mj23G8+aF3M7jC
         LhYoGRDVAMGWvBCPyQ+160fR39YTYfp6s13U3if1pACRcW1Zl8NJZ5dg2AyO67k3xaHQ
         dOjg==
X-Gm-Message-State: APjAAAWDOsoGUQzTGJ++zucSJuZREA/l4abgXIDQv+JmrdJRamc9aDQe
	TPjtUvYTFFu5KwHXpVPb658=
X-Google-Smtp-Source: APXvYqzZBR/CimdhyjSypjTKTlsvuV3IAKHYGb6KVZKp++Y1XYrfTx9ol2DX4TEJ/x3b3msush/zMg==
X-Received: by 2002:a0d:ce02:: with SMTP id q2mr923123ywd.252.1571792045107;
        Tue, 22 Oct 2019 17:54:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:5748:: with SMTP id l69ls94617ywb.11.gmail; Tue, 22 Oct
 2019 17:54:04 -0700 (PDT)
X-Received: by 2002:a81:6345:: with SMTP id x66mr1016660ywb.58.1571792044793;
        Tue, 22 Oct 2019 17:54:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571792044; cv=none;
        d=google.com; s=arc-20160816;
        b=XhgWmVQlIlejVKzxyZfYu8GttxwUls8vftu5oHJ3JghMnWwSKIVr9HQGY3upQjn2Jf
         pTAcW4fdhPfRHcib2VM8r4vx+fNY6SGMG6n+SV5I6KmgaIFXVIhqxVEvRzMUn2DqA00V
         XJ0QTYf68l9XBb7RgtH5W0CsU3T3g9ngB/kwlwEXWYJC0RoASiWzZcrqKLrHV5BWASui
         ulRBxDqToFhJ5sbqSSX15BLI3NNTmPsTGiNwt/hre3JXy3cC5JPMNmJO7ezWuuO65/xu
         GbyvoycmTesKOKEY7/2+Ifvm+umD4+27AjJf6k91ZDvpddX5nOgL2LaxQ2bNH6HuRO4g
         B6Aw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=orKMDyFq0pxDsmp0+soEOe34Z3iGwylS1aF6XcYLmDY=;
        b=KWOpx4pBRnCMIRVEuwCQ1gBaju2hifDY6RyuEI/8SNwlmwY9IRUom9kX6OXxUMiJVx
         QApkOrX/3VYHqv2D/lBVu8pG6oH/jKx5h3an0h2SG84NLZPBt/H2SvgDZi5uW0HONbl1
         Sj88ykHQh7F5gIha7jzsg6w+3MOHd8yFEs5M4oEGHyyCoJyiWDnGx3VR73qijukiYvma
         d3PMmL8PMhijIztQo/U86jWH2y04V8Nq8DEGshGjPwet//m4M2oEP/XQHFNrzTM3nGMB
         xlRgkhqTskTIOT5GQnT8szFe8M5DUyWPSwoyFdl2jPZr163bLdOrfoWlG5zBfikjVcv2
         3QTA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dxp56W5Q;
       spf=pass (google.com: domain of 3q6svxqckeayoxumkxymuumrk.iusirgtm-haorz-rotadmuumrkmxuavy.ius@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3q6SvXQcKEaYOXUMKXYMUUMRK.IUSIRGTM-HaORZ-ROTadMUUMRKMXUaVY.IUS@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x549.google.com (mail-pg1-x549.google.com. [2607:f8b0:4864:20::549])
        by gmr-mx.google.com with ESMTPS id r185si89212ywe.2.2019.10.22.17.54.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Oct 2019 17:54:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3q6svxqckeayoxumkxymuumrk.iusirgtm-haorz-rotadmuumrkmxuavy.ius@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) client-ip=2607:f8b0:4864:20::549;
Received: by mail-pg1-x549.google.com with SMTP id u20so9905559pga.4
        for <clang-built-linux@googlegroups.com>; Tue, 22 Oct 2019 17:54:04 -0700 (PDT)
X-Received: by 2002:a63:1904:: with SMTP id z4mr6951997pgl.413.1571792043458;
 Tue, 22 Oct 2019 17:54:03 -0700 (PDT)
Date: Tue, 22 Oct 2019 17:53:30 -0700
In-Reply-To: <20191023005337.196160-1-irogers@google.com>
Message-Id: <20191023005337.196160-3-irogers@google.com>
Mime-Version: 1.0
References: <20191017170531.171244-1-irogers@google.com> <20191023005337.196160-1-irogers@google.com>
X-Mailer: git-send-email 2.23.0.866.gb869b98d4c-goog
Subject: [PATCH v2 2/9] perf tools: splice events onto evlist even on error
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
 header.i=@google.com header.s=20161025 header.b=dxp56W5Q;       spf=pass
 (google.com: domain of 3q6svxqckeayoxumkxymuumrk.iusirgtm-haorz-rotadmuumrkmxuavy.ius@flex--irogers.bounces.google.com
 designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3q6SvXQcKEaYOXUMKXYMUUMRK.IUSIRGTM-HaORZ-ROTadMUUMRKMXUaVY.IUS@flex--irogers.bounces.google.com;
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

Signed-off-by: Ian Rogers <irogers@google.com>
---
 tools/perf/util/parse-events.c | 17 +++++++++++------
 1 file changed, 11 insertions(+), 6 deletions(-)

diff --git a/tools/perf/util/parse-events.c b/tools/perf/util/parse-events.c
index 4d42344698b8..a8f8801bd127 100644
--- a/tools/perf/util/parse-events.c
+++ b/tools/perf/util/parse-events.c
@@ -1962,15 +1962,20 @@ int parse_events(struct evlist *evlist, const char *str,
 
 	ret = parse_events__scanner(str, &parse_state, PE_START_EVENTS);
 	perf_pmu__parse_cleanup();
+
+	if (list_empty(&parse_state.list)) {
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
2.23.0.866.gb869b98d4c-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191023005337.196160-3-irogers%40google.com.
