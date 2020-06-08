Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBDEJ7P3AKGQEIUWYCYQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3c.google.com (mail-yb1-xb3c.google.com [IPv6:2607:f8b0:4864:20::b3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 88BBB1F2229
	for <lists+clang-built-linux@lfdr.de>; Tue,  9 Jun 2020 01:06:53 +0200 (CEST)
Received: by mail-yb1-xb3c.google.com with SMTP id u186sf23250834ybf.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 08 Jun 2020 16:06:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591657612; cv=pass;
        d=google.com; s=arc-20160816;
        b=CMXRrGUmLyF+6BDYtTwVltfgHFKNfvKNVAnQVtxRGl1uqYGFIBxCg9UI5tINhz84hi
         5P63Pk6ARW0qJoxuZGHhiD7o1N4/uP5vw7KaSFbihEL3k4mWE9hpShXFiY8FBVK3XbXf
         aPywWVqF0m6wUOcaMNvlDaAnV61kW80FQqA1sa/jksWDDKJHklBI+kZEJQmQju/o3hNq
         jXPCk6hLP7EmjdorOkYG0HYYrWJU3r4NYflKZvRbWJ9CoAd6DL4W7iXjwT+Hu2RPt6t7
         GnmWfo0dGuDKrm/wZkp1E6HYBVDAcxaICpUUKJeB69GREGrVmHaK7PMX1SMeyy7RN8Bu
         UP+w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=PRio2PwYywPs9nO0Gffl5zJf+x2aOrs58o2D9dKnRjM=;
        b=Kvmzo21JyN3vtzDvjyHx9tt5gvHg0ScdrNteDYMx1ya5gOokGPqDUXl/d59ow5dqVD
         4KJNIU1xUY/k8BVy9q5Vx1sHeRSmFWVzhyMCmyNo6vQzR1AM0KtziPqMAEqeWkkct+vS
         YQc0Oj2410jbHzzTHO5ilQ1jvjsF8vYz30XFEygzl3xRswr5IuBr4c9pZgD4BkokVmke
         lLtE9suKgsYOPjA94BpAlXNOLgVY7iJrCcfW6zfeUPZSB2n5XUqAvMFo2HaFTST/Xl81
         g1GiFGfHpN4bDTjUjYvFXkUesbQ+4etxlHdXaNqui4iwWZUPwxAZ8bzQCWqmoaoBdiRJ
         nj3Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=qL9QQlEm;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PRio2PwYywPs9nO0Gffl5zJf+x2aOrs58o2D9dKnRjM=;
        b=X10GnLMJjrPBwODE6oYJF8YeQ7YOySUUBnBA62jmVQVF4bxj6Uc00NWJPW+ORO8dVO
         Wk7vxj6fv/I2ZzHewDEr1pYEeNNe6MAmQJsDANPCvnOIwZDmNKfzMrelWukPMGBLPp8P
         62q0KyGvwBAb/1ycSIL5HtLObbiBBwz8X8DCwkVuXH9RZ680K6t/IyF/zwhGysA1I5qN
         Ow1LEe8QjF7jsObc6kvoTxYu9cfGa0SnCZAVMuXSsqVP8NY+szV399nLYV0dNbm2qoru
         I90GyD5rs4WezUSa3lbdhr4qOkl7znjyYrt91dySW/SB8LEFSBjBcNg+b8YzG1o7adrL
         JEdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PRio2PwYywPs9nO0Gffl5zJf+x2aOrs58o2D9dKnRjM=;
        b=EVXOvir+I8vcag6HIZClN9x0baobvXK8ZprckBf/dlONi+Gn+MOrdInITv0Gp6cbXK
         p/nFDEv/Z978j3czYdftNRl543c/+i/k05O8tyYqzV7o9TnV11zPXRSXUTqzOsxx7eGu
         tymr/bGEztdo3oAIAsm0NUzI3OoCMXBF/jVtIJQ2eWIwNavvMS+indal7wAJrdCATdUh
         p1XsruRBHeib5fVy52m7QH4G2BUZoWK3tq05A0Qr+H3LQS713qSa3qiwDnq8NjwvcRiN
         JHFe/rN1kObkbL+O+N4OvjexP3KsFH6SBfIgmVjVaHyiBq9HEO6Tn/hxTnB5dFBsbcg5
         jECg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531f03ZSBjYToBafdX9uulkFcZ7WWEpXFwdZOR28agvNl4ylv8ho
	8wI7L0UC+McoyYr3S/quT7c=
X-Google-Smtp-Source: ABdhPJyirG+bfKK8tcUU+uSL1N76EimUDbHLE/RE6gtXdrzV9z6zfCE4mvRZAbiPA5fzqBGV2hSzPw==
X-Received: by 2002:a25:9a04:: with SMTP id x4mr1862488ybn.137.1591657612400;
        Mon, 08 Jun 2020 16:06:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:d603:: with SMTP id n3ls457519ybg.3.gmail; Mon, 08 Jun
 2020 16:06:52 -0700 (PDT)
X-Received: by 2002:a5b:f4f:: with SMTP id y15mr1800210ybr.184.1591657612081;
        Mon, 08 Jun 2020 16:06:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591657612; cv=none;
        d=google.com; s=arc-20160816;
        b=WksQZyR1mtKxFUhuGKRFHj7NzvWPFt+WaGCvuUQ67Ydw9v/4qMm6p9sO5wkbfzOBtO
         tXCI/w7YkxHLnIWmaaXb8DgCtNjTLsOwJzXY5deICVnyIZm1e4kMA9lZedIQk+WA0r1N
         pIJIm6cCkWi9Vt6xMAuFcBigHj6uDkZxEoRh9Zcbq5bonaUuZJAO8E9u3vTTeqL8WD4O
         mmWoQ6kGEWZs3ftVdk6P3/iTTYvvayFKakZY8bAge+hPwLQsC7f6CAB42GSCPbdEkYUz
         9DAr6PAiD5LtFMsmA3Nj0XH2ByZu6sjwcR1z2d4grsxG9DDl0iGi15/pjfQlJkCS6tg6
         6Qxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=5z6oUQUFJi4XLJFHhW6waptr8eRFF81B2QK1O+gYOjQ=;
        b=cxeRI5uWyM93zsn8o1iAukXPnxnH0u8/FZrL4VdErxLQPklNPT430fGHGFY18DW+t9
         Ju7K0Hk4tVTnqxr2GVo9iBBaFDoPVqj/lS7exxjt0EiA/Uu8tq6x5nBT7grr3lBoOhjP
         GHeX1rbgAvIWqM+9wurVRkLT4CZauTe2har20qyHe1jzEz6DkVU8swawfQi+13jT0pGk
         Z75qunPvyLSqrq/jdCdw+olVXOigkclovwkW0pXDrEUQCXlxZur1//qgdhvqTs1Kvf1p
         TgEHbXl1AFMkCKAnbKh5TIpfC8P+z7qr5rm43szOQV9R7+8AklnU/j0WIsf7ROpT1lV6
         J+Mw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=qL9QQlEm;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id a7si29094ybj.5.2020.06.08.16.06.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 08 Jun 2020 16:06:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id AD9AA20899;
	Mon,  8 Jun 2020 23:06:49 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Ian Rogers <irogers@google.com>,
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
Subject: [PATCH AUTOSEL 5.7 034/274] libperf evlist: Fix a refcount leak
Date: Mon,  8 Jun 2020 19:02:07 -0400
Message-Id: <20200608230607.3361041-34-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200608230607.3361041-1-sashal@kernel.org>
References: <20200608230607.3361041-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=qL9QQlEm;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200608230607.3361041-34-sashal%40kernel.org.
