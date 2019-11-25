Return-Path: <clang-built-linux+bncBDPPFIEASMFBBVNE6DXAKGQE3Y5G6OA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53c.google.com (mail-pg1-x53c.google.com [IPv6:2607:f8b0:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id 18A021092FC
	for <lists+clang-built-linux@lfdr.de>; Mon, 25 Nov 2019 18:41:43 +0100 (CET)
Received: by mail-pg1-x53c.google.com with SMTP id p8sf9178764pgm.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 25 Nov 2019 09:41:43 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1574703701; cv=pass;
        d=google.com; s=arc-20160816;
        b=QxxOhEglI8sL6yrzeOBgOW5Q1YiztOEoAHgnycPIc69EqBLl5jK9AorfEv6ssZc1Lr
         gXuXT4Zcj97i4aSZJbEL5+2P3csnIaSJ3NKEgl3Nb8kJsRCFk6jKn4gbmz77Sxpf8fg4
         xKJW96nha5w0avKvqFekEQUfnKtuqzZW/1HW4zXMe3NTRZ9tjnD5Lf/2gcz6bDWa+IMx
         xg66usIJjNucuPdwMGDs0OTXh5LVlv1pZsy2zUISbGLWestwgw9Z6+oKjHuDUMhW1ygT
         /nxZH0JcYoaeHOHYUkv+MHA4GJmguoe8252Xv52sNjuyuNXMxTOR93DJJIfjw5pyOxGn
         phNg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=3mD2RpzBNIpgXizECd7czx+MDEomRIfVGWmQQO/lF4M=;
        b=eVJw1G8To3FpSywqAiy5xS8xi03FHkB/0fTLGZ15skistu03Wkky7YjoCQnbxalAZX
         xayCp5HDEi17HmNaKSyIjZ6jXRdBy0Rgh9LRUuGPfRfg+ENcUUHnbsGMPPQu0tx15eu6
         6TZhY477wziRTpP1VPiKGKe2mnwtv5mLuUqdsZMKVzvR6fNDuOvC72Mu7QDPlVjAzlo1
         sJcmyELbYkbXqlxSUajgBiGsEwCY592sVHEc04XkjNVJsLtaRtlbqza+XWEErFlPwq6r
         mXbxPmUwq1xUFZgLDdiJleNz6ezhn//bjJPeKIQpJFg8B3v697VWYBhoE/9GleJTplTk
         FVDw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=HIJ3Ezvc;
       spf=pass (google.com: domain of 3vblcxqcked0hqnfdqrfnnfkd.bnlbk9mf-athks-khmtwfnnfkdfqntor.bnl@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::1049 as permitted sender) smtp.mailfrom=3VBLcXQcKEd0HQNFDQRFNNFKD.BNLBK9MF-ATHKS-KHMTWFNNFKDFQNTOR.BNL@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=3mD2RpzBNIpgXizECd7czx+MDEomRIfVGWmQQO/lF4M=;
        b=cpnEG1wyhkSvsXInMihHbL0BmynCU1L7hGGl6BVjKuoPlp/1hp6qvmdvtfnme8cFcf
         oMWaPMgw/EQEZLa6NFEBVI5fj9QAZ51+08yeeTitMqQkMnVHbWQJzVeii1Ma1hkGNXF8
         RZ9ekj54PXxOIb6E+69rxI+by9F22EOjrrj7KAjraIvTJgYzI1x2JSqas2OyKUpj/Ua9
         7Ec0yEQzxad4pBYSYEfiHKDHChfUqfEeIqKHzSybpB2Hqg5IxRIq2Fd4tTC4YHW3q7zs
         G9Dv8XEnkM3FxjDf3y9VlXybkW/ahGbsdQVOEGPYJBa8RlLpWkQ+/LnB6DUM0KchyMdU
         XYMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3mD2RpzBNIpgXizECd7czx+MDEomRIfVGWmQQO/lF4M=;
        b=C6EKi49cM2Nt/E6/DHi47NRsQ7Q1cPSmBSX/k5VP7netiSz6lZ7+x4lm5hywhHUdxt
         /yLkKc/BM1m/XWcVuvfLYWpsqv6cYTVAcn+fh9WUgLxNNJ+kxp8LIxpy5Aih9jp4ByNL
         8FFdNJxL18qlTl2ZlfuukTQF8FZgSSc7rN2IXF8l3Z0b9z9//vYgjD+uVDoFE5B5B/4y
         bXTF+qnvaWptTmQ5tVmJdrdRhShvWK3sT8XPq4x2N/36w3hS1xS/jSFhHZzYD0qaqA6M
         bGQ36bVz0kmxZ8mmSN18249+5dyT554PHrlvszblbJU5ZPt2OVkm3zPAxUFbper3x0OC
         imVg==
X-Gm-Message-State: APjAAAWqssY04qjTEDYyhiAVNOSe8SDO5x40e+eK3Wpiih5zFgunCon0
	AqyeZ2I6N53LL0y1tQ6ZxKo=
X-Google-Smtp-Source: APXvYqyo2TwqVgKYafpF56GiC686EBzdcLZY/GK7H1krKXz5esl4ZQb/g/G/gyoKH23mrb/qIrfQ+w==
X-Received: by 2002:a63:e407:: with SMTP id a7mr32384338pgi.92.1574703701719;
        Mon, 25 Nov 2019 09:41:41 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:2223:: with SMTP id i35ls3015177pgi.11.gmail; Mon, 25
 Nov 2019 09:41:41 -0800 (PST)
X-Received: by 2002:a63:e009:: with SMTP id e9mr34072327pgh.222.1574703701256;
        Mon, 25 Nov 2019 09:41:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1574703701; cv=none;
        d=google.com; s=arc-20160816;
        b=IN5QP7P58vC8AoECpzGHbrsUlxzSl84+jgDHhAkd+47m9n+1FIMnLYqS6oXR/zFUxs
         0N5z0AXlVoe9Ambu7A0aU1jaPF432yMwh/C2mmloJmxYH/E3VINPcqKfipMXhhwPnxXq
         /YC3j3TmOV4Ejf5QiW6PVTvBCQUZrdzfw9vNVRRNZkzm8jKg9wiVrKKXAewxI8oiNGpR
         79Dku1HyGrcV8f44iXuffdqxtmmMED9hWKXgfK8L33vv0aDIhaYd1cujO0JDqVt6RX9Q
         u0CbIJqO939o/hu6n1J2pooySjp1JujQQ3JQyXyEhZWT9EFZfUwt39vdynOL01uGDoKZ
         T7qw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=XYu2mD7mAFODCF+cWnHpB69giVKtmp2lAnz9r0bBxfs=;
        b=Msjz9cHmIQqGGI8iM5loauY2tln1J5caWk11Tg9En7d1Om2P147Z1fCYhufrrihlge
         FHLG+dUXcY24RSpjOsdqjarknFRLrg5DrTdSmBTgH2v8qZs0C6r7xrEDhz/pGnGF/gcN
         4A/se6Y+W26MAcplX1YbN38WGRn1RkQwMizp0d0d1JLeckdylxyejJsF1pl3CQCtBdyX
         9ICAjNCZ6VSdUYMatJ9QBlMw76d7ppOwgSzcM/zcw8VtBcdUeRA+97RromTSBX09TRw7
         9cqSDdn+o2w1H2nQW5NqkK2PUpyqfgJmT7TCvPEIflYRX6FDU7glvvxKtiYlwrc7zUED
         9VSg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=HIJ3Ezvc;
       spf=pass (google.com: domain of 3vblcxqcked0hqnfdqrfnnfkd.bnlbk9mf-athks-khmtwfnnfkdfqntor.bnl@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::1049 as permitted sender) smtp.mailfrom=3VBLcXQcKEd0HQNFDQRFNNFKD.BNLBK9MF-ATHKS-KHMTWFNNFKDFQNTOR.BNL@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1049.google.com (mail-pj1-x1049.google.com. [2607:f8b0:4864:20::1049])
        by gmr-mx.google.com with ESMTPS id n2si339793pgq.0.2019.11.25.09.41.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Nov 2019 09:41:41 -0800 (PST)
Received-SPF: pass (google.com: domain of 3vblcxqcked0hqnfdqrfnnfkd.bnlbk9mf-athks-khmtwfnnfkdfqntor.bnl@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::1049 as permitted sender) client-ip=2607:f8b0:4864:20::1049;
Received: by mail-pj1-x1049.google.com with SMTP id v35so7766744pjv.9
        for <clang-built-linux@googlegroups.com>; Mon, 25 Nov 2019 09:41:41 -0800 (PST)
X-Received: by 2002:a63:4948:: with SMTP id y8mr35070328pgk.333.1574703700864;
 Mon, 25 Nov 2019 09:41:40 -0800 (PST)
Date: Mon, 25 Nov 2019 09:41:35 -0800
Message-Id: <20191125174136.95893-1-irogers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.24.0.432.g9d3f5f5b63-goog
Subject: [PATCH] perf tools: avoid segv in pmu_resolve_param_term
From: "'Ian Rogers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, Jiri Olsa <jolsa@redhat.com>, 
	Namhyung Kim <namhyung@kernel.org>, Jin Yao <yao.jin@linux.intel.com>, 
	John Garry <john.garry@huawei.com>, Adrian Hunter <adrian.hunter@intel.com>, 
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Cc: Stephane Eranian <eranian@google.com>, Ian Rogers <irogers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: irogers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=HIJ3Ezvc;       spf=pass
 (google.com: domain of 3vblcxqcked0hqnfdqrfnnfkd.bnlbk9mf-athks-khmtwfnnfkdfqntor.bnl@flex--irogers.bounces.google.com
 designates 2607:f8b0:4864:20::1049 as permitted sender) smtp.mailfrom=3VBLcXQcKEd0HQNFDQRFNNFKD.BNLBK9MF-ATHKS-KHMTWFNNFKDFQNTOR.BNL@flex--irogers.bounces.google.com;
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

PE_TERMS may set the config to NULL, avoid dereferencing this in
pmu_resolve_param_term. Error detected by LLVM's libFuzzer.
To reproduce the segv run:
$ perf record -e 'm/event=?,time/' ls

Signed-off-by: Ian Rogers <irogers@google.com>
---
 tools/perf/util/pmu.c | 18 +++++++++++-------
 1 file changed, 11 insertions(+), 7 deletions(-)

diff --git a/tools/perf/util/pmu.c b/tools/perf/util/pmu.c
index e8d348988026..1a6e36353407 100644
--- a/tools/perf/util/pmu.c
+++ b/tools/perf/util/pmu.c
@@ -988,13 +988,17 @@ static int pmu_resolve_param_term(struct parse_events_term *term,
 	struct parse_events_term *t;
 
 	list_for_each_entry(t, head_terms, list) {
-		if (t->type_val == PARSE_EVENTS__TERM_TYPE_NUM) {
-			if (!strcmp(t->config, term->config)) {
-				t->used = true;
-				*value = t->val.num;
-				return 0;
-			}
-		}
+		if (t->type_val != PARSE_EVENTS__TERM_TYPE_NUM)
+			continue;
+
+		if (t->config == NULL && term->config != NULL)
+			continue;
+		else if (strcmp(t->config, term->config))
+			continue;
+
+		t->used = true;
+		*value = t->val.num;
+		return 0;
 	}
 
 	if (verbose > 0)
-- 
2.24.0.432.g9d3f5f5b63-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191125174136.95893-1-irogers%40google.com.
