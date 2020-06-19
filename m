Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBFFOWP3QKGQEH67A4YY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x538.google.com (mail-pg1-x538.google.com [IPv6:2607:f8b0:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 20CDA200F41
	for <lists+clang-built-linux@lfdr.de>; Fri, 19 Jun 2020 17:17:42 +0200 (CEST)
Received: by mail-pg1-x538.google.com with SMTP id x18sf6584499pgk.23
        for <lists+clang-built-linux@lfdr.de>; Fri, 19 Jun 2020 08:17:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592579861; cv=pass;
        d=google.com; s=arc-20160816;
        b=X5EEv2mGD4MTTyx1RwKSu6yzy5qWTDP0DOEKBtUhxNJ1QA9fsuy7lGarEQnk7Z1vlI
         EkN52ahr3ypWxR3qONOVtNlKNcPTzcNYLTOViaJznpYhbp5JG3OhMMb8B+lfMoTa86KT
         U1GfWO7NHMrWx/v+heAYBqlb4lsdv37rwpKomHSNY5xQbJu0hWJakoIElZV6kYh7bjcb
         +qn4EjZvu5PsroTYJ0eitmIfvS7zaUgyalZLabkXqGHUAInQeljYw0NdcmPRIbaEletn
         yU2SjWNRLVoDfDB4JOrIWJsx8qeJPP6p7cmUtIVeEOYjz6ZjhBqzJBDKARF1sTUCEqmj
         1ZCw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=tulh0KH+/h54Gt39ugK3KYsVhHXz2N2lbqpJsAvYxls=;
        b=WkYPN62uB6sT6wzg+zF6NkkMIFz2ND4ubAZBUc6OmXGGxm2gclA5L0MZCkuM+wj4TL
         rLC4q7a43m8pWxH6xIFgwEBXZubqwZp4cI6xwoVqr/O7keWaYBklfg+ZvkiRpu9vRq+3
         Uvnvo5gXgDWGmIAVg/rcoRICJxGTDVPxpsCKMz3GyW0y+6VxM+OKT4023wJd5PbXKFc6
         gALrWQI4PjJ2YGEClF2qmqf5vL/k3LI0WPcrxm6eMpVqLmfM1JWy7eSNL5RrT82L6gXh
         FWWGzw1OHl9zD4o/Yt84bhXKNbTmu1rMrjxaTq3SnhXxoXBnnF1CRR/HveQ+5ZFf6mPE
         03Tg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=leAzHyOg;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tulh0KH+/h54Gt39ugK3KYsVhHXz2N2lbqpJsAvYxls=;
        b=AaN7p4+jCxwEhyxnsHoYwL49CHGwTDBE0Z7j0kDeIWwydwf71LDJ0IPIj1c//4NlvI
         CTbSJbiQrxpbfH1DTxcTfhFEVsDk71zlMizgB+vaQy2+sR2ojOwIjielyVlEJbD/vl3z
         BAGpzE2y0whpzLwwS2xBltgQm6KVBGGW/y+ZwYKWPnV4/SATqySQ0HEb4oJ2/NJg4dqg
         PBrhvvVjimx6jDuoU+CRsWSR1k8gh1/kmUipXIdHMskgsqvNBPkTX1oKgrsm1GlOa2xH
         1cETeSDtM7ANjJKX9U3hlu3W30xsb/9qPNQWXrQGESOhZg5ZLwQp6CLIDgFqFcuIkEU0
         uhZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tulh0KH+/h54Gt39ugK3KYsVhHXz2N2lbqpJsAvYxls=;
        b=UGYGhcFpHWyIGo5mUlLB3nQ4/rkeNevcL1SlzSyFqvVyQgtrgHzCBdVUB7OHuNvBX3
         hDAcX+LqsaNSualpMtth6F8mcTvy9u0qmGiEqbmeHhY/MsXOPbcAr3m4ogsQWCxZk8qN
         8Ue5UFy8p7XYKEeLSE1m0XiKi7XutaM0B+eGuEpH6e/TxoND/f55S/jtjRGSBGxxLB33
         6Jr+gYMfZ3fdwU9JyBj7O43c7ZEyhKLHtPgeVzxUymx5ZTDA5yLhmjjJ+5AcQrLDj8h3
         wODY01fB4ePtSSAik0bFrL8VzmBHz1F403jby2/7GM48L0w6PmdRgFzIY8Inzv97a143
         J3CA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531ThKJPP6POOr9oo4FSXmVXO1D4crttSWtuuomKdObtuM+PgnTR
	W3LGHyTO5fhW+DYrGZ4aykk=
X-Google-Smtp-Source: ABdhPJxLL1v3dI2rGbPv1q39Yx8USwS9lENU7FD2FmAiZkg9N0XDW/rBgKfBOAXraDEHLRCbrpck0A==
X-Received: by 2002:a17:90a:8d11:: with SMTP id c17mr4070357pjo.201.1592579860787;
        Fri, 19 Jun 2020 08:17:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:8f3a:: with SMTP id y26ls3052412pfr.3.gmail; Fri, 19 Jun
 2020 08:17:40 -0700 (PDT)
X-Received: by 2002:a62:80cc:: with SMTP id j195mr8557157pfd.138.1592579860360;
        Fri, 19 Jun 2020 08:17:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592579860; cv=none;
        d=google.com; s=arc-20160816;
        b=Tt7SLxTJOS+Ws5sUaNeZbShYF+d8cb8Iy+xH0ULXD3/82IIt9I1r7ogbrgR+9W/z+9
         v81UU+JejHWez+Qfar72v3HCGmvc3GQLn/CN1nhzijjkc6bcx0D4HgTC/hMmmf+awkAQ
         k9qJDSvhs++73cB85pZtHbTtsJV7CdOZI/GQkCfTfyDVxdUKy1E7zIUzJjy7XAOrWkkE
         J5o3KxFtdhpt7nhhfs+/lPb37fCMoVzz4ARH7WtF9LfaSgj7xr10WCFbf5OR2N6iDlbe
         oUiGJqszQ9gIgkEd74dwMit8eAmJV4VlMA6/iGUQINj8GrOBnKf03ho+/glkroMzhMo9
         F6CA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=5z6oUQUFJi4XLJFHhW6waptr8eRFF81B2QK1O+gYOjQ=;
        b=M93qeRtV7ZtK4Ypl41MWcZD5xFYnLAikViD+61JkaZmLYzlVu2/JgSKfezhhUBmbuv
         CrZ6LuJdCC2e8lgdBsSI8zemsBP+08XA+kNhXIGA6+zMeqUhzYYAzCkr11dH6LoppwDx
         cqDjaWKRW3ydxpoblWLysg6E/hBaKGdvzBjOUyAky4plyJfLAHyQX9mUSJkpKGMUGw1W
         1QkZlNBudlwVC4eeDw2uSMhqL6rsMfBoUbg1ERNO6OzToJ2Xmp7021f4kG8pjcc1tLWT
         lJXiiIK00muzyWmP/O5eAISc9604UUFGVXegXJcaGa3HtWAkvoKEbr+KCqGS+bxxuEbp
         e50A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=leAzHyOg;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q194si399438pfq.4.2020.06.19.08.17.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 19 Jun 2020 08:17:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 9FC95206DB;
	Fri, 19 Jun 2020 15:17:39 +0000 (UTC)
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-kernel@vger.kernel.org
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	stable@vger.kernel.org,
	Ian Rogers <irogers@google.com>,
	Adrian Hunter <adrian.hunter@intel.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Andi Kleen <ak@linux.intel.com>,
	Jiri Olsa <jolsa@redhat.com>,
	Leo Yan <leo.yan@linaro.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Namhyung Kim <namhyung@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Stephane Eranian <eranian@google.com>,
	clang-built-linux@googlegroups.com,
	Arnaldo Carvalho de Melo <acme@redhat.com>,
	Sasha Levin <sashal@kernel.org>
Subject: [PATCH 5.7 032/376] libperf evlist: Fix a refcount leak
Date: Fri, 19 Jun 2020 16:29:10 +0200
Message-Id: <20200619141711.872753519@linuxfoundation.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200619141710.350494719@linuxfoundation.org>
References: <20200619141710.350494719@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=leAzHyOg;       spf=pass
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

[ Upstream commit 4599d292128d89e4cf866a0ea9a9b047a2de8418 ]

Memory leaks found by applying LLVM's libfuzzer on the tools/perf
parse_events function.

Signed-off-by: Ian Rogers <irogers@google.com>
Cc: Adrian Hunter <adrian.hunter@intel.com>
Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
Cc: Andi Kleen <ak@linux.intel.com>
Cc: Jiri Olsa <jolsa@redhat.com>
Cc: Leo Yan <leo.yan@linaro.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Namhyung Kim <namhyung@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Stephane Eranian <eranian@google.com>
Cc: clang-built-linux@googlegroups.com
Link: http://lore.kernel.org/lkml/20200319023101.82458-2-irogers@google.com
[ Did a minor adjustment due to some other previous patch having already set evlist->all_cpus to NULL at perf_evlist__exit() ]
Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 tools/lib/perf/evlist.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/tools/lib/perf/evlist.c b/tools/lib/perf/evlist.c
index 5b9f2ca50591..62130d28652d 100644
--- a/tools/lib/perf/evlist.c
+++ b/tools/lib/perf/evlist.c
@@ -125,6 +125,7 @@ static void perf_evlist__purge(struct perf_evlist *evlist)
 void perf_evlist__exit(struct perf_evlist *evlist)
 {
 	perf_cpu_map__put(evlist->cpus);
+	perf_cpu_map__put(evlist->all_cpus);
 	perf_thread_map__put(evlist->threads);
 	evlist->cpus = NULL;
 	evlist->threads = NULL;
-- 
2.25.1



-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200619141711.872753519%40linuxfoundation.org.
