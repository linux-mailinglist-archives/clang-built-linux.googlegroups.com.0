Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBL5TZT5QKGQEO372YGY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1039.google.com (mail-pj1-x1039.google.com [IPv6:2607:f8b0:4864:20::1039])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B27D27C4FA
	for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 13:25:36 +0200 (CEST)
Received: by mail-pj1-x1039.google.com with SMTP id q95sf3261425pja.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 04:25:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601378735; cv=pass;
        d=google.com; s=arc-20160816;
        b=MC8u7vDZ2U3tlIz5Aihq1DICNNMHnDsjHMpY25BxPGM3o2noK4ru5ynCWEv/ZQi0m4
         DcWX5HAlZQldhvekMUZAFUcLMq/o0fmcvckmHjO3e1aF+uqqbwVAH4bVACVK+qEtI9S2
         FsD5bdVRZ+9VsWsq0PV4eGVEH/TDR9hoU+TIHe9nTDfag2zGXNGK4uy3RHHV9Nk8Bbqm
         aoIxDLR6vBzrgWCH02wIGkDOrWS6BoLjA31nYqPRiCbDxeIvt/OlQYUvI88R1fqrYsly
         LC28ESefTkh4hTfYc7ycQKyGj4RkiVzTjdnZMPgUzjKg696Sb7L0akvDq/CzU/4/LRvN
         1BpA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=0OyEJpk9sJIbeY9G+5S5ZJNOoaq4FsRokGhGDcNOhEQ=;
        b=gUPkmgo1rFvCj63S4YUo7oJcs6+pNVLeVjoW9S1xScvwyur/Qe5Qfot4EM4gFyMzqO
         CrgknYX+tzb3cgv/+dbJFqpU7cwq10KxAzLxpzFMlOZOv+0oyV4EZOhL9a68513XZJ/n
         hBlhzLlR+PNoE3h9iZi20+uRNDPKhq8QkXWBwOtKG/GRkSn3RFT9zQsY5Gmk/z07Wo+l
         6krXydTkp1TQxC7Vj1eg/5my6lG62cOY3i8OjBX3VS12ud0ieLM74UUmYLPBtubjsDDC
         GGV7tg7KdgbMzlqXwfBKT//K3Ni75c+dEgPTzOMVKGBPP7eLQWX2FsnDbW+do3T3iBpZ
         tzTw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ZQgUD9QQ;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0OyEJpk9sJIbeY9G+5S5ZJNOoaq4FsRokGhGDcNOhEQ=;
        b=nZ94ndpJvI2cAR8hTHWtC1UNSZ8msn2Ux7fsnOoI6Xm46goefTGzTuikDWZNDsvyA4
         jyOShTIRp171UasNqpWeWLsGcR0AdnJTQb/hf9MsYgfjoRZT4AyBaasKONqT9e/s2SYC
         3fuSPCh4MfU6eQKECf4fP1A1EU92LHCpeoatRCe82x72JIYEbmZtcC2oWjwxrwiemB9S
         k7L9aeTt7xF74Xsy47T5bFsXvljcwMHigLL7ems11MIs5TK/e71XGxhBwu1Qcz+W7cMy
         MKDr6dpYSK4Sl+jtMynE+sLd2TDe8pyQLHUilB88/h+DQCboabRcfJle4F2MB6NEyAcV
         66aA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0OyEJpk9sJIbeY9G+5S5ZJNOoaq4FsRokGhGDcNOhEQ=;
        b=SzIj2bHSzlzlA1vfoiWn1my+E+u0WLOVx+dyfq8+q6YVGtfnaw//SkVqUoqhxH06iM
         J7izSsn1wkb3e+2cQSkDCNrZdABGMu9o3ec+sJybJ766LapHs9fKmUReoh1Llu5Lh60I
         W8HboT7DYhYDBEXkqdCfUb29EkBxvmMDoBuHX+TpPbeHVSANrsIyuDiSyXDHS3JSDYBe
         ivC/DE1OzH5cP0g/bpD73yOzhJw14YDTn5dvJ2JFF3sGeq75baM+zbr1jWjN0rql+fGl
         LWak7534hx0IH48GRI4LoQFaLtIKYtBqEj8Gu1cfNYGcabq71U24tnj3OUE84TBbOFLW
         UCOg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5315LqKBSGZ8CqSouCrcmV2QW92dV97lspwVlrRjLauA6ypQSl/h
	+g3jYGeo35bcc65lEPKeZXA=
X-Google-Smtp-Source: ABdhPJwE/Ob0KVKG+CkSnVvLBPxeJVzXqIFwPqHNMLy6RK9QCjLnvm6xGqZtgP/xB4jOq1fGjU6l/Q==
X-Received: by 2002:a17:902:b949:b029:d2:8abd:c8ed with SMTP id h9-20020a170902b949b02900d28abdc8edmr3974826pls.63.1601378735344;
        Tue, 29 Sep 2020 04:25:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:515f:: with SMTP id r31ls3083254pgl.7.gmail; Tue, 29 Sep
 2020 04:25:34 -0700 (PDT)
X-Received: by 2002:a62:1a95:0:b029:151:d47e:119b with SMTP id a143-20020a621a950000b0290151d47e119bmr1802075pfa.46.1601378734737;
        Tue, 29 Sep 2020 04:25:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601378734; cv=none;
        d=google.com; s=arc-20160816;
        b=HHxgUpRncdPTwUNMQRcn9E0cApQu+M/W250s9kQbAro7aQqIalmFQdferW5Q/X2adU
         h8C71Ce75WeUQjGxo5sWj4CIKuE7oC/euUjF8d9VnkkqiCb6PkqR2kMpcKpH/nGfxIsB
         L0U03tu1jykjKz0EKdkA/krcfgzaJ17AGPlLeKC3kyfUSZy0LaN9kD8FuSH89K+8AmlZ
         p89tNfDD2d/bhSq4+Dh8eI1ImAdGISIQ32YH+oaxfEa3++LSkJ8ezYd+Q1tHffLl6y/7
         +LErh8B8UVAB9FnuyAa8XlPjQ6e3yI5Nx1c4q0RpVERqSP0tyhu+vgaX9qFPncK0qZ6y
         2JAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=5Xtm7wvm6lc9Wht8TIoNNT1slq6e6JNQE1NNF9RuyCc=;
        b=prITQF89tJ6LqrJfQ+Rrt/9eO7lMoEoSj+NGz43Li8Gk5rsuSURQUCZvWLa4sBea4G
         op0VOFzTzQJ+NUFDed2G8YDeZj/0GpS3/wWUGa4FN68e12ckE12Dd4+nBb05nb1wP1Nl
         Xu5B2OY9R7/1wK7pnlp5k6vmvEaQTGIWeT10i/kdmPYazpm4q55wksvhZ/xqBuglW45S
         bxUGmB3MvNG/3LJcJlQuTErppFM/gRkrAzK5O/Yx9dXpNBnq9VtOFpQqZCIbl3Rfe3Oo
         VpfEVAR1GhlGXGhZAt872vjvDKDVto2UxIGoeP+IztVoPrE2MGFfQFDVxneZgLnXDDan
         eFmg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ZQgUD9QQ;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 18si342254plg.4.2020.09.29.04.25.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 29 Sep 2020 04:25:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id B6E142074A;
	Tue, 29 Sep 2020 11:25:33 +0000 (UTC)
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-kernel@vger.kernel.org
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	stable@vger.kernel.org,
	Ian Rogers <irogers@google.com>,
	Jiri Olsa <jolsa@redhat.com>,
	Adrian Hunter <adrian.hunter@intel.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Andi Kleen <ak@linux.intel.com>,
	Leo Yan <leo.yan@linaro.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Namhyung Kim <namhyung@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Stephane Eranian <eranian@google.com>,
	clang-built-linux@googlegroups.com,
	Arnaldo Carvalho de Melo <acme@redhat.com>,
	Sasha Levin <sashal@kernel.org>
Subject: [PATCH 4.19 120/245] perf parse-events: Fix 3 use after frees found with clang ASAN
Date: Tue, 29 Sep 2020 12:59:31 +0200
Message-Id: <20200929105952.826827610@linuxfoundation.org>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200929105946.978650816@linuxfoundation.org>
References: <20200929105946.978650816@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=ZQgUD9QQ;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

[ Upstream commit d4953f7ef1a2e87ef732823af35361404d13fea8 ]

Reproducible with a clang asan build and then running perf test in
particular 'Parse event definition strings'.

Signed-off-by: Ian Rogers <irogers@google.com>
Acked-by: Jiri Olsa <jolsa@redhat.com>
Cc: Adrian Hunter <adrian.hunter@intel.com>
Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
Cc: Andi Kleen <ak@linux.intel.com>
Cc: Leo Yan <leo.yan@linaro.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Namhyung Kim <namhyung@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Stephane Eranian <eranian@google.com>
Cc: clang-built-linux@googlegroups.com
Link: http://lore.kernel.org/lkml/20200314170356.62914-1-irogers@google.com
Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 tools/perf/util/evsel.c        | 1 +
 tools/perf/util/parse-events.c | 4 ++--
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/tools/perf/util/evsel.c b/tools/perf/util/evsel.c
index 4fad92213609f..68c5ab0e1800b 100644
--- a/tools/perf/util/evsel.c
+++ b/tools/perf/util/evsel.c
@@ -1290,6 +1290,7 @@ void perf_evsel__exit(struct perf_evsel *evsel)
 	thread_map__put(evsel->threads);
 	zfree(&evsel->group_name);
 	zfree(&evsel->name);
+	zfree(&evsel->pmu_name);
 	perf_evsel__object.fini(evsel);
 }
 
diff --git a/tools/perf/util/parse-events.c b/tools/perf/util/parse-events.c
index 95043cae57740..6d087d9acd5ee 100644
--- a/tools/perf/util/parse-events.c
+++ b/tools/perf/util/parse-events.c
@@ -1261,7 +1261,7 @@ int parse_events_add_pmu(struct parse_events_state *parse_state,
 		attr.type = pmu->type;
 		evsel = __add_event(list, &parse_state->idx, &attr, NULL, pmu, NULL, auto_merge_stats);
 		if (evsel) {
-			evsel->pmu_name = name;
+			evsel->pmu_name = name ? strdup(name) : NULL;
 			evsel->use_uncore_alias = use_uncore_alias;
 			return 0;
 		} else {
@@ -1302,7 +1302,7 @@ int parse_events_add_pmu(struct parse_events_state *parse_state,
 		evsel->snapshot = info.snapshot;
 		evsel->metric_expr = info.metric_expr;
 		evsel->metric_name = info.metric_name;
-		evsel->pmu_name = name;
+		evsel->pmu_name = name ? strdup(name) : NULL;
 		evsel->use_uncore_alias = use_uncore_alias;
 	}
 
-- 
2.25.1



-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200929105952.826827610%40linuxfoundation.org.
