Return-Path: <clang-built-linux+bncBDPPFIEASMFBB3VSZPZQKGQE6TW6ROQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83c.google.com (mail-qt1-x83c.google.com [IPv6:2607:f8b0:4864:20::83c])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B10E18AAAE
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Mar 2020 03:31:11 +0100 (CET)
Received: by mail-qt1-x83c.google.com with SMTP id q7sf1071141qtp.16
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Mar 2020 19:31:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584585070; cv=pass;
        d=google.com; s=arc-20160816;
        b=pT42rCFvH4/pOGmZCKvFdlE/DzfXXeCKARJKMm46EqvFrJXuWNEUZipQLX6EshqLQt
         BBMD/COdL2EuTQCaD9UFfVvLGDupM0qmE3WzfZDo15rlHzQYgD4UcxIzPYWjzWAFLN/R
         25WBjuxCgWUeayLiJzBL5zKFSAGKY2vRe3hGugJWvaIPMtk4WpLmVVN5ILGKbw+wp20p
         Iv6hB7DBBsn9Z2AiUyLE9kwdf9xSNfJiLvG0H55YAkJMjQ+QayCJvM8obT+hCXvpYJvY
         2vHgFN3wFX5D9k1DaQzmkTm/eZaH931sU3Ub0OIVBFBMQLTL+MKiEikrmiMWStYC1CTm
         NDJQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=K1nkMoto98+wEL+YYEAny2craD5jdPGKJ1Ovuk/vzRY=;
        b=UZ76PLGWTBI9DuhYoe/LfsbYOT+0QYjEF0K+wnAdZbYePC/ZIoED1AgG+krUP4K5Ah
         y8zE6CVcFsKJJcHGgNVbDvKItWKDZvuNalb6C4Ym/+kd10NOdr0imxcn8Rxpz9I/7EmE
         KIWVCeLKOwpHkMCFPt8caJlkLAVBb3bQ3cOj9HYJaElRwwgFGpQoUCqQ3Q9qJLIXu/lo
         Ga33IOw0BHyuQiYNnW8FSr5wuzV4/fgwKQbWVIGk74xRIJdsEq8EUPKfPXFiU9+lpL80
         deS5SueF7YTSf13EXIz+C/Poy5EmBI+OogDw2xUo/wapEUUvOfMsaVPI4coW86n2y+0E
         pa8w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=vfmBwyq9;
       spf=pass (google.com: domain of 3bnlyxgckeemnwtljwxlttlqj.htrhqfsl-gznqy-qnszclttlqjlwtzux.htr@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3bNlyXgcKEeMNWTLJWXLTTLQJ.HTRHQFSL-GZNQY-QNSZcLTTLQJLWTZUX.HTR@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=K1nkMoto98+wEL+YYEAny2craD5jdPGKJ1Ovuk/vzRY=;
        b=V1zrrqKcMxf/uxF4nfvo5ZXob5xEc6ZM3Ba0krZ59xLzV3KjsneH3rubzA1McFW39H
         vnLY7hUNrfmtXCNcOeqSoiXxqxrZEU8/TTslK+3B1WOV5f2K5aXVTcuHzRzNgmnHAb6N
         mL82+9VVz/0fhIvA42z24w21twbLBm4whD30k2R/DfCSttd2xMlW/7RArQ62YUfR/+cT
         XFNeHskP2S1ogXPP5asqLWTNeDzSstpEtohws5A4xdKG151ZoaoQ3oTyHBUdOh7BK7sd
         7ipFhbgaeISZCUs+CvvZmk3EZNey3F7u/MsFtWxeRjsNRBSM+3yU/Q/Dr09ah+/M0X6Z
         bRuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=K1nkMoto98+wEL+YYEAny2craD5jdPGKJ1Ovuk/vzRY=;
        b=hep5CkeA3yWnHUkVH2FatG/B3ENcs4xFVCHzHhnS6tkPuDPgen56bgKa3kCLFlKm36
         Y5qPJUqC8ieXF8wmaxHeORSYTKfVfG14I8pp4RtXaHgCwXN9FoRKOuCPrrro6Gi6XPrq
         2vECXehSVJSzwCyuGl8qC8uLdv81B8LeP+DsFbj83P5qiVJ3WhX8t5GKJoDU+QHfRgEb
         727MYshC+MfstT8uLlSw7uM3p2xSnn9AklgBZba0862QxCfvC3ZRVs/mI/1bEr78sFby
         nL4HTCT+LhGl+pRtoP51bRNX47dWBFhpVytSjy8qk84oDhhm79a3NQWd5HyHHgI6hEDK
         NNuw==
X-Gm-Message-State: ANhLgQ1+cUQcSk7yEJ9v7IAYNS/t6U3eVLu6KCj46rTGit2C4u5VxcP4
	IMlPpFXMBfS2j9Pw/9st0iY=
X-Google-Smtp-Source: ADFU+vtu1Nj0JGeXQcqy2DqvEzzTtHZXkYYmFbfPcIkCh00c12ky4RJ6dZ727JsK/tmcFsuAS2GAXA==
X-Received: by 2002:a37:27cf:: with SMTP id n198mr875805qkn.97.1584585070347;
        Wed, 18 Mar 2020 19:31:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:4a73:: with SMTP id cn19ls36963qvb.11.gmail; Wed, 18 Mar
 2020 19:31:10 -0700 (PDT)
X-Received: by 2002:a0c:e846:: with SMTP id l6mr960785qvo.238.1584585070027;
        Wed, 18 Mar 2020 19:31:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584585070; cv=none;
        d=google.com; s=arc-20160816;
        b=Lr6VggJfDRGUhx4mPIRgSngcdprbsoynuEUiBxjNu9ms2+RKyhiqZpkhfpqeADgFk3
         zRVgRO92Av6N0WwaLjy+fTR8IayFPEIgBf6fg9qMAef+Wx+ekl57U8OyitAaLpuH57VY
         8XKr2VBvaOvv9LDYxIMijDHQ7JHuPXpAKHaFxtZJKs8cQtxFYpVfyDO1W74zEylfExOH
         Hu1z6lEabwzfTLLXZD35GekwRdXv1YknG76smiQ2Ievh8DkZf2Dwx12RCKPHy8FKA83z
         lxmrXO3C9bzQIftsdlnMXlZRsrYb8gcoJ6d/Cy+gpCgRT6CVjN7XuqXJFndvFFRELwAO
         5TIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=Q6qKeMViIFe6EBqVnaB/dOU7RJkl3dVROSC+c5uk8Z0=;
        b=fo56PteefBNufInYkzWb/i90fyFtscsDS4q3N2WuGMcUpRgwhrLB5r6bPZTjLlQjfn
         AmKi+g6YosDmY7AhnSK3j1lJe2bh7uv/SGF0fqbbO5i+xNc1u6+4EGxaoiI/tg0zD4DV
         xxYWGfaMhfqgWfHrQa4mR6Hd2jTG9PRcvSDWA8eMKiuaexfmyN+G+crpSFyGv4tLP6fV
         lGNtKtD44uDoV2zyuSu05GbQJ9uySHXcEjyxGBf2DulEO8BclLjO8PXY2aY+JBlPLGcy
         ASUnjMCjVi2c5KVcZJMqK5PgEv5AaaRIWP8Aili29kGplr+96H5lVLvd9deiIX+FYZQ0
         3rLg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=vfmBwyq9;
       spf=pass (google.com: domain of 3bnlyxgckeemnwtljwxlttlqj.htrhqfsl-gznqy-qnszclttlqjlwtzux.htr@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3bNlyXgcKEeMNWTLJWXLTTLQJ.HTRHQFSL-GZNQY-QNSZcLTTLQJLWTZUX.HTR@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x649.google.com (mail-pl1-x649.google.com. [2607:f8b0:4864:20::649])
        by gmr-mx.google.com with ESMTPS id d34si71899qte.4.2020.03.18.19.31.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Mar 2020 19:31:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3bnlyxgckeemnwtljwxlttlqj.htrhqfsl-gznqy-qnszclttlqjlwtzux.htr@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) client-ip=2607:f8b0:4864:20::649;
Received: by mail-pl1-x649.google.com with SMTP id j8so479401plk.1
        for <clang-built-linux@googlegroups.com>; Wed, 18 Mar 2020 19:31:09 -0700 (PDT)
X-Received: by 2002:a17:90a:178e:: with SMTP id q14mr1433427pja.132.1584585068936;
 Wed, 18 Mar 2020 19:31:08 -0700 (PDT)
Date: Wed, 18 Mar 2020 19:31:01 -0700
In-Reply-To: <20200319023101.82458-1-irogers@google.com>
Message-Id: <20200319023101.82458-2-irogers@google.com>
Mime-Version: 1.0
References: <20200319023101.82458-1-irogers@google.com>
X-Mailer: git-send-email 2.25.1.696.g5e7596f4ac-goog
Subject: [PATCH v2 2/2] libperf evlist: fix memory leaks
From: "'Ian Rogers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, Jiri Olsa <jolsa@redhat.com>, 
	Namhyung Kim <namhyung@kernel.org>, Andi Kleen <ak@linux.intel.com>, 
	Adrian Hunter <adrian.hunter@intel.com>, Leo Yan <leo.yan@linaro.org>, 
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Cc: Stephane Eranian <eranian@google.com>, Ian Rogers <irogers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: irogers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=vfmBwyq9;       spf=pass
 (google.com: domain of 3bnlyxgckeemnwtljwxlttlqj.htrhqfsl-gznqy-qnszclttlqjlwtzux.htr@flex--irogers.bounces.google.com
 designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3bNlyXgcKEeMNWTLJWXLTTLQJ.HTRHQFSL-GZNQY-QNSZcLTTLQJLWTZUX.HTR@flex--irogers.bounces.google.com;
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

Memory leaks found by applying LLVM's libfuzzer on the tools/perf
parse_events function.

Signed-off-by: Ian Rogers <irogers@google.com>
---
 tools/lib/perf/evlist.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/tools/lib/perf/evlist.c b/tools/lib/perf/evlist.c
index 5b9f2ca50591..6485d1438f75 100644
--- a/tools/lib/perf/evlist.c
+++ b/tools/lib/perf/evlist.c
@@ -125,8 +125,10 @@ static void perf_evlist__purge(struct perf_evlist *evlist)
 void perf_evlist__exit(struct perf_evlist *evlist)
 {
 	perf_cpu_map__put(evlist->cpus);
+	perf_cpu_map__put(evlist->all_cpus);
 	perf_thread_map__put(evlist->threads);
 	evlist->cpus = NULL;
+	evlist->all_cpus = NULL;
 	evlist->threads = NULL;
 	fdarray__exit(&evlist->pollfd);
 }
-- 
2.25.1.696.g5e7596f4ac-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200319023101.82458-2-irogers%40google.com.
