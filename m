Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBFNZZT5QKGQEOOPOMLI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C10227C57E
	for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 13:37:59 +0200 (CEST)
Received: by mail-pf1-x43a.google.com with SMTP id e12sf3427970pfm.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 04:37:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601379478; cv=pass;
        d=google.com; s=arc-20160816;
        b=U9nzBbwIFJOd+QG5JT/m3G9r7l3lsg+el/n4yRmfnDC7EN3SXDtf6EHSy0wygM1m25
         CvUmohSfvyuuIneMDLvKhbY6u8LIDcdEI4Pr9jZmnmWTsdZs3LQ9DkJna+6fiRsy2+4d
         6cRO6ZHTxridzT0c3i8D08Pdf+VlsNZmvqkaUXC0mVIjGGWhnPHUHzEHoiZAAnC8qYOF
         enLKspLy+s0QcNLiEM5SvMxA5iqdlkKjTQTZyDKW2z0+H42dxchGuR90GwXFbZ3DYTIm
         NzfIg8vjM7JoF+BhJXsHdJa5JHEn6n/hkle5KwlGYv5cN10HE21R06AnurqnUR/Is8MV
         UBcQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=dMm8iJIwRPYnFoS2+jxdQJPp5h1s5ow3IVJTuJW4Wd0=;
        b=HdAdH6cVX7AI51XX6Hnd45+86RFPaQL5i+3xdDTxlHvbW+PVbrXTlaBwMP1T5WQ1sO
         BBO3CcBXpN7R2lQKqiaA6TvqwEqZp7DOu9bjQD0zZ39qfflgg0NKf1i4z8O9tZCJFf6q
         I6CUkfy1WDRN9sf8d2abiRFA0E/mfs+fj3TOA8ajCQnzFfjxLUKPEfc8PApzB++P+wIV
         MvjP9cronxhuAzON5PKmckN3pgiULuocRWXMs2qOXSCjGP0RgcfCZ6HLRDo5Lk699buv
         7i8PEez/+EnT0U8Sug6iLZ0NhMUUKgm5OShIiIVsYCjfCJWYhAvj2iL5h16n80S3QcXq
         8Jew==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=DFOvyphL;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dMm8iJIwRPYnFoS2+jxdQJPp5h1s5ow3IVJTuJW4Wd0=;
        b=KF4fPlbiQV+4YPGimkuI16MjNSe++MOQRP+oiboeSgqECYPIPmQGb8fHBMNxR9n837
         KzJuXzWg6Ayp2tI2lrNWAcc3Eh6O5+a0j4rjy5NuFH4LewR4CwV3Or3zQa1eccZ6IoBE
         l+K7qgVy/sDf5ARy7JUNNtY4lbWMKO4fV6qZZmsx92+wgEb0K+2YpVYG/ibVNKCbj1rg
         teq0KJZX43o2Mfw7Nq6Y7r0wVEV3kZF2NEMxktiwU5mpwrL3sw6Kg2+yoXCnxMQDRPWU
         nVAyLGeFovfq2AF4CaIo5Q9IlPhhktNdiGoFhnxV9+20V1jMBim8FQcNY0ADZUYMqk/c
         fY+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dMm8iJIwRPYnFoS2+jxdQJPp5h1s5ow3IVJTuJW4Wd0=;
        b=Ou0H3EpmJAfmhzpRNGrrYc6MJ0B1dIshrEd0yYcz5+5mHQiBrWHkpPL0uwJPKXlcrm
         PhwYm2JHkdFC7rkbCztZwUiGSYJeAQQqf6L5j74OPPR8yfw/18ibf4jkenQvQs6FHcaO
         Myw6kLXn5GYHQRNq7CJ4mGNRdNFjghnVmGhh4iL2aTjCoJW9co/IKShfGXv/WYc6uXEp
         7s4CJr6s/NdlvGFx2INHPufBdjW2GGswDWj+h0KfOoO3O0zIHY5v9z5yJYQmtJ3wceXu
         R+cPoayp2crS96HicnjK4Nnm+V/dD3LQ+ooj6SFN7i2iN3lnsEJeKiXMy5gaJCopdL5/
         s4/A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531BQBluuedBqPJHsY4r+2jhkASoNN4XYbYfWPDqaglwFVbc5Eg1
	J2lUOoliujkTZKGJj2c77Nk=
X-Google-Smtp-Source: ABdhPJyt3Yr1cgQkXZbks3cCBgxhczUFtlFsmtj4TxlG7dJpRKJMT6Br3hHfxiPA6r50W+z8Vo7wIg==
X-Received: by 2002:a62:3541:0:b029:13f:ebd9:ad5c with SMTP id c62-20020a6235410000b029013febd9ad5cmr3910086pfa.30.1601379477813;
        Tue, 29 Sep 2020 04:37:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7c92:: with SMTP id y18ls2937939pll.0.gmail; Tue, 29
 Sep 2020 04:37:57 -0700 (PDT)
X-Received: by 2002:a17:902:8bc4:b029:d2:8cec:1fae with SMTP id r4-20020a1709028bc4b02900d28cec1faemr4314768plo.23.1601379477241;
        Tue, 29 Sep 2020 04:37:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601379477; cv=none;
        d=google.com; s=arc-20160816;
        b=SXxwD0x8P0N5uXPIaZyxsEt6TwMBaWHrgpPl55yzjBLngTN7Ih92FwUV/3QyyraFo8
         sZ8i1n204m7wDQa9Fd3j7bJEwMDmXVmX8bT6A2Y1Zw+r8RSVfbr8QO2fWV7Pyd7sacIN
         VOVAPeRj73g1P+IWKN2J9rzFhyi4XOm//2uxAz/OkyVV0LyINrHyn4CwFxd3kcnJWI8f
         8ZIOW6nwO71DpGrRLED2GYuD3yMxA8lNT6uibzM/+/5W9c4YPgD9JnlehsVXKJEDWZHk
         N3yqPs8e4rjFzaoLpc2JusehBEbEFas520Ms/UvbRvrKAs22qeFD9QnTk41cD0LlOzqx
         esCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=VvnpnKNjs5JvVWsutn8xVtcCW7WEFRGDu1K2d140W8I=;
        b=ugAW2rf0W4eE/vVKHlPkHrQ3pAeaJw+R0peMJgIrWJzKxM7VXfttfyegGoCmgU4KGb
         2lLubfM+cIQz6+pJ2fq67wB0AFXrtI6FPkBJnWXSf9vZ496OG5rebXBcdvlCHSaars3x
         Gov0YZd92VBZuXQ8LF0/sVV04kXtuqtHDeUXWhphj6YuCT3hTpwDQrsa5Cm0aimUCwLV
         do1T/EG8V+4RC5WEEGfujWA5UfyEzb9EetpLhDqJEdHOf67xUywaWRe/Gmpui9U18Pu4
         dl0yy4kg05bx7tdfoLue8h1hIcxQmztr71x2MEd05zyRZy4ac9sppvY42DwwRV9uLlz7
         fBrA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=DFOvyphL;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id bk9si495438pjb.1.2020.09.29.04.37.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 29 Sep 2020 04:37:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 7562F208B8;
	Tue, 29 Sep 2020 11:37:56 +0000 (UTC)
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
Subject: [PATCH 5.4 180/388] perf parse-events: Fix 3 use after frees found with clang ASAN
Date: Tue, 29 Sep 2020 12:58:31 +0200
Message-Id: <20200929110019.192000597@linuxfoundation.org>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200929110010.467764689@linuxfoundation.org>
References: <20200929110010.467764689@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=DFOvyphL;       spf=pass
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
index a844715a352d8..dfc982baecab4 100644
--- a/tools/perf/util/evsel.c
+++ b/tools/perf/util/evsel.c
@@ -1254,6 +1254,7 @@ void perf_evsel__exit(struct evsel *evsel)
 	perf_thread_map__put(evsel->core.threads);
 	zfree(&evsel->group_name);
 	zfree(&evsel->name);
+	zfree(&evsel->pmu_name);
 	perf_evsel__object.fini(evsel);
 }
 
diff --git a/tools/perf/util/parse-events.c b/tools/perf/util/parse-events.c
index 759a99f723fc3..e232dfe07f8fb 100644
--- a/tools/perf/util/parse-events.c
+++ b/tools/perf/util/parse-events.c
@@ -1344,7 +1344,7 @@ int parse_events_add_pmu(struct parse_events_state *parse_state,
 		evsel = __add_event(list, &parse_state->idx, &attr, NULL, pmu, NULL,
 				    auto_merge_stats, NULL);
 		if (evsel) {
-			evsel->pmu_name = name;
+			evsel->pmu_name = name ? strdup(name) : NULL;
 			evsel->use_uncore_alias = use_uncore_alias;
 			return 0;
 		} else {
@@ -1385,7 +1385,7 @@ int parse_events_add_pmu(struct parse_events_state *parse_state,
 		evsel->snapshot = info.snapshot;
 		evsel->metric_expr = info.metric_expr;
 		evsel->metric_name = info.metric_name;
-		evsel->pmu_name = name;
+		evsel->pmu_name = name ? strdup(name) : NULL;
 		evsel->use_uncore_alias = use_uncore_alias;
 		evsel->percore = config_term_percore(&evsel->config_terms);
 	}
-- 
2.25.1



-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200929110019.192000597%40linuxfoundation.org.
