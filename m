Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBHWHUPYAKGQEE4DTVQQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3c.google.com (mail-io1-xd3c.google.com [IPv6:2607:f8b0:4864:20::d3c])
	by mail.lfdr.de (Postfix) with ESMTPS id CD8FC12C4AC
	for <lists+clang-built-linux@lfdr.de>; Sun, 29 Dec 2019 18:34:23 +0100 (CET)
Received: by mail-io1-xd3c.google.com with SMTP id e7sf21176260iog.9
        for <lists+clang-built-linux@lfdr.de>; Sun, 29 Dec 2019 09:34:23 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1577640862; cv=pass;
        d=google.com; s=arc-20160816;
        b=M1WwWe7IUYy1Z7pN18HwX7I2s08Cy1m0tmfNf12lBnx6EemxJXA8NKwSpnPzvBLm0h
         f/ahjJOZXHElThL0pTWDCl09DM+4khYgjEZHItDCtzq4gukTR4nkyvc3YSJid/DrYjTP
         IWR4hRngntNM3kdBFSjJzfQxW25QV/oD2+xB0rhTbD2+yqsxnUrfdNABt9MithXtWaR/
         dPl+vFrk+tdqLvAK87yzOOq7trqf+a5Ldc1mPATQr7ya1kDrS1NGr2n/MU/qsQIuzu5O
         d2UrhWvdScu+/Dmp933iPy8f/MUv0W0Bp9/4c/MhzfG/wJovAeo8AGuP962lThY0FjlU
         vQaw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=Szd9UYe+Em6mQ/wCrBu2Nu+Y6fj4kGxy/urx5RiO1Iw=;
        b=v+BkhnXq+FBMUjYr6nuD5ITKeiEP7t0t+E/i0aSdyAqG8okIi0tkwHrIOal4I8seKx
         EY76LOTzwu7RrSGXIVU1JXMeIGbiOngWz6fSaSXH8U/tqAPkCX95E0JLKvEk1JvBCR0d
         wbFWl2faV1nGhXfC1Rq1ET2x5dW9CiQDtRDK33l8QbEiL0ce0PB3HBOwSoG5Pt0O8Bx4
         0eiP5Ne0GFTVHkYCaUtDon+biIWHIDXpn0yD/7JHYeLx1cbMYknLNd1Hv+sKC8iyeyQb
         Pd4ZrB5ydm2gmNjyeudkk+hbyizKS7hN42VtATSo+INjTTfeNfaLlP4LNS15qJna3Qty
         tH4g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=OmZ26Gw3;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Szd9UYe+Em6mQ/wCrBu2Nu+Y6fj4kGxy/urx5RiO1Iw=;
        b=lZW68uRyx6Gv+0Seb/RBsoThV886gQTm+KqSFtvXx1Oidei4D/rvDaoF4ZglWAUTWx
         m73J8zdDU0TKkjn3T2Xg+6yO3lrJtAIXVRF9jYXAeEZ6OBw/g2yjsMaHShKMDFJieKhD
         8VkO6e5hBKa2GIjO4OJW94t3zIb3+CXpOcs82KtkNCbdnF0bL7U/ZfD5775hW3oEP19+
         pA2MwSfWmHheRimqx5i9o8gfiHx5jcyjTu2Rvq/KDluAd9a42SEXefT3zPACw3vFqX/Y
         +cLY3gw/e94o6bVJhQk39ufpdySAysD1l+gJCfK+0umPo8BZiHY6eQINJHn6si4h9zTA
         PG/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Szd9UYe+Em6mQ/wCrBu2Nu+Y6fj4kGxy/urx5RiO1Iw=;
        b=H2BFuVcX9v+oUbGXIupsckrr7ZNLaZKiB9kxkwmah3jaeAwX27okVl83W4QNpZkxyb
         jyFJPsX1vbnn87Vr0NpjYc6U1D3Gzw5bJr7YvoihqtFJqDI/GPskNFl3ylZAL4PEIrws
         8VuQ7ZfiOxu1AnW3sWJ77aDVj+kyXQSFKQdCPD81ACfQsZJrFTZ9UFFX/sIHCezk6LMV
         EwrN2o57JIK3g7yy3jXmUKeZPmAjqwEhkN13gwN/sabgdPeekorAZEGcFqTHIat+qIGQ
         0FywZhE0zuZup4bkkqpQHtUc7Hr8TO+cYYm06GnFZduAPxgtiBK4+CRY2CCbJ9DJOMnq
         9j8Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAU8luLAP776k6vPwXN3UI63TCV3/4ice9UMzcJyNKa7sCMfM7YX
	xg+GbL/1wqbJOaE74fqkDu8=
X-Google-Smtp-Source: APXvYqytbh2KfsM7ypFAS7KJqPWSfK4eD6NI2QypeqS74x7IuU2PQssaRQ/iFKurd3wwoFdqjP82Ag==
X-Received: by 2002:a6b:ed17:: with SMTP id n23mr37580838iog.99.1577640862427;
        Sun, 29 Dec 2019 09:34:22 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:ce86:: with SMTP id r6ls5000062ilo.13.gmail; Sun, 29 Dec
 2019 09:34:22 -0800 (PST)
X-Received: by 2002:a92:3b98:: with SMTP id n24mr31619432ilh.108.1577640862082;
        Sun, 29 Dec 2019 09:34:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1577640862; cv=none;
        d=google.com; s=arc-20160816;
        b=Lh14Vo6BPI6/aSizhak8KSkduZsdTtYHgk6TaANWW9VzxAYDXhGQDjSmxtMI5TxJeI
         GGyw9fhCdJuWVjD899ri1EcC8SmET6AzAFr5rMkq+TysJ4686cCWEot29tANLtqDSYQG
         iguqIHcfyqxIEHcwnne1+gRvUoli5491wK3YTB+5yB61lBtHxLryQlX8GDlerSFCxuTi
         yLwB73tIE7FqDOD0uSQrpmsoou7E9VXoq3yOGVeypB42HUdZB/P3sWjwDojSJ0qJQ6VA
         ut5hRzmynOFCGUXZgYGsnoblzGFjdV2meBmaiESIWGWapiORAth6VUlEiaIFHQm6VeUS
         1h1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=Vb5R7ylePCM9SNf2CXDHnfaXtT2Gm6IzX5HRNqJtV6U=;
        b=bjbJcjefTxUoP69C1QecSye0NWC6M+IL41yzpNeNVd2eCr/Unid45Hje9PSZKJlf11
         XKzlGmaV39+PzvnKHULrwtxU0R/OkG60W+2ixZMlG0I/gy8mIUn0VC0WAxFn4G9aWjWX
         osO7Fq/hYRAygMemnDPsF+xpmZFsoM2hx7cwep+UiuqPPtRpUwOcdVLtzh+WR3MSSeGE
         PTuR6rDaWAkE10bB+gEYnstKfaUlkoEScCgQMphqeIPer8vyyi6lANuBc5zxYyrEM5qq
         7N2GtT1qRy3sZ0LN9aY/ImRikN8F1oONUpVQOIK3Xxjsmfi9RHO1AJTctQQstbiuv8Ve
         uLVQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=OmZ26Gw3;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id h4si2187895ilf.3.2019.12.29.09.34.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 29 Dec 2019 09:34:22 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 1E880207FD;
	Sun, 29 Dec 2019 17:34:21 +0000 (UTC)
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-kernel@vger.kernel.org
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	stable@vger.kernel.org,
	Ian Rogers <irogers@google.com>,
	Jiri Olsa <jolsa@kernel.org>,
	Adrian Hunter <adrian.hunter@intel.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Alexei Starovoitov <ast@kernel.org>,
	Andi Kleen <ak@linux.intel.com>,
	Daniel Borkmann <daniel@iogearbox.net>,
	Jin Yao <yao.jin@linux.intel.com>,
	John Garry <john.garry@huawei.com>,
	Kan Liang <kan.liang@linux.intel.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Martin KaFai Lau <kafai@fb.com>,
	Namhyung Kim <namhyung@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Song Liu <songliubraving@fb.com>,
	Stephane Eranian <eranian@google.com>,
	Yonghong Song <yhs@fb.com>,
	bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	netdev@vger.kernel.org,
	Arnaldo Carvalho de Melo <acme@redhat.com>,
	Sasha Levin <sashal@kernel.org>
Subject: [PATCH 4.19 132/219] perf tools: Splice events onto evlist even on error
Date: Sun, 29 Dec 2019 18:18:54 +0100
Message-Id: <20191229162528.519923158@linuxfoundation.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191229162508.458551679@linuxfoundation.org>
References: <20191229162508.458551679@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=OmZ26Gw3;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
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

[ Upstream commit 8e8714c3d157568b7a769917a5e05573bbaf5af0 ]

If event parsing fails the event list is leaked, instead splice the list
onto the out result and let the caller cleanup.

An example input for parse_events found by libFuzzer that reproduces
this memory leak is 'm{'.

Signed-off-by: Ian Rogers <irogers@google.com>
Acked-by: Jiri Olsa <jolsa@kernel.org>
Cc: Adrian Hunter <adrian.hunter@intel.com>
Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
Cc: Alexei Starovoitov <ast@kernel.org>
Cc: Andi Kleen <ak@linux.intel.com>
Cc: Daniel Borkmann <daniel@iogearbox.net>
Cc: Jin Yao <yao.jin@linux.intel.com>
Cc: John Garry <john.garry@huawei.com>
Cc: Kan Liang <kan.liang@linux.intel.com>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Martin KaFai Lau <kafai@fb.com>
Cc: Namhyung Kim <namhyung@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Song Liu <songliubraving@fb.com>
Cc: Stephane Eranian <eranian@google.com>
Cc: Yonghong Song <yhs@fb.com>
Cc: bpf@vger.kernel.org
Cc: clang-built-linux@googlegroups.com
Cc: netdev@vger.kernel.org
Link: http://lore.kernel.org/lkml/20191025180827.191916-5-irogers@google.com
Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 tools/perf/util/parse-events.c | 17 +++++++++++------
 1 file changed, 11 insertions(+), 6 deletions(-)

diff --git a/tools/perf/util/parse-events.c b/tools/perf/util/parse-events.c
index 1a7c76d2baa8..7ea1a230e89d 100644
--- a/tools/perf/util/parse-events.c
+++ b/tools/perf/util/parse-events.c
@@ -1843,15 +1843,20 @@ int parse_events(struct perf_evlist *evlist, const char *str,
 
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
 		struct perf_evsel *last;
 
-		if (list_empty(&parse_state.list)) {
-			WARN_ONCE(true, "WARNING: event parser found nothing\n");
-			return -1;
-		}
-
-		perf_evlist__splice_list_tail(evlist, &parse_state.list);
 		evlist->nr_groups += parse_state.nr_groups;
 		last = perf_evlist__last(evlist);
 		last->cmdline_group_boundary = true;
-- 
2.20.1



-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191229162528.519923158%40linuxfoundation.org.
