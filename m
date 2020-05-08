Return-Path: <clang-built-linux+bncBDJKZSEQ3YKRBDFS2X2QKGQEIMUIL3I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-f59.google.com (mail-ej1-f59.google.com [209.85.218.59])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ADD61CAD8A
	for <lists+clang-built-linux@lfdr.de>; Fri,  8 May 2020 15:05:17 +0200 (CEST)
Received: by mail-ej1-f59.google.com with SMTP id c17sf684853eja.17
        for <lists+clang-built-linux@lfdr.de>; Fri, 08 May 2020 06:05:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588943117; cv=pass;
        d=google.com; s=arc-20160816;
        b=zTgWgvcJrgi+S4NjtPQCxWiSrp/4Gen+kfjL+8c165c3/yZ8kRb3swxsMA/XBQIrae
         16UsRGJEt36FjWgHAjT+Hidvh8rncVDvV/yKHFbYwcfy3zciFVcZ0RjmZKJPa0Yx1ZoI
         RfzD8DGYn9Uvx5p9os5lQ8/b9EfcsXAC6lPhMHBZggoRMvecq+vFUBp75lKiDet0B25N
         loqymLNZNZq8ApSzgdkgqEWKuwAK2JVqBqMrCDeBSymE2+5Pd1Xd7b7aEKiBdU6uRZmt
         58ByiBdCfD2IjBVXCFY9XSxGx4LHu1KzdEIiGwwIJQLwDzjJuRJCpZ/mklAvG6o0LU8C
         7T6g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:robot-unsubscribe:robot-id
         :message-id:mime-version:references:in-reply-to:cc:subject:to
         :reply-to:sender:from:date;
        bh=dCCESwjttl1qF8ARcf2XEbcGWKvWNwz1CTcqapYhPAs=;
        b=0Z67oZWFsd1Nw7eb8w8R5ecvz5IGxja59fkHNcmm9JhaHNRt/74EjvsGShtvlsMMqN
         ONsgu498c+hosy8SE3cu0GeVcdmcATrrKB3Pcr8v9KwnWIH/VPdjBpHmrt+zE713kA50
         D89WqBQn/t99eT0i1xmdQNrD2QyiKiON+xfUqU9Qz/t1GonwfeAKxp5PT26qaAQ83qQg
         acxDTLf9h7OKjPikIizrkPAP8sy5qh2TXCFLxASpME3A2/72vMWc2+sDp/i0N24k+irW
         epZu6f5EtBilpL2xovEHLDJZRETUpnaFaAml59C6Qqmyoy2QE41/jhzMMF0Zxs3X0jSr
         57Qw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tip-bot2@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tip-bot2@linutronix.de
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:sender:reply-to:to:subject:cc
         :in-reply-to:references:mime-version:message-id:robot-id
         :robot-unsubscribe:precedence:x-original-sender
         :x-original-authentication-results:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dCCESwjttl1qF8ARcf2XEbcGWKvWNwz1CTcqapYhPAs=;
        b=ScFHuyuG5YrMrNQ4GHq8ntN+E90rK+UHPdxSzNNJb3XSL75xKqJad3CaJtksDfvvea
         KEo0hVZ7VTVvk2+A2GZlytVWgeBY6LswSyQUxIHj7/9A6Ydwq8e2hQWVkHxClb8QcywO
         2WbYBVpyJ2321e0oUtalgfFRk/nGG1e5X5Lr6XsNraILBtwi0YUjQOTw73keVPttlEij
         SkGJCNkud5SzuNnChLCSMMEtUpycZqr+tuJe0pV5mUrNvTVfQ4H5RFwklelqoV/YzV9r
         IYryuE7qHobJkSdsb00yAiufgF/+D8SsjINJlw06qMKG2LnMREcgNcTpKEgf6/VQrlmv
         N3UQ==
X-Gm-Message-State: AGi0PubRi9CUT2XgCbQSn4CXi0LKsXNrjfYDlXf8LVTNgItPJwlbuG0V
	K+Tb88Zer8o7nkzlt/fVnHs=
X-Google-Smtp-Source: APiQypKttivLOgNLscxAc/+oq7jFKluFQ9XD7befePdVEcIMn7brJcwTJQ96I49DrmUYnjJcwLpxIw==
X-Received: by 2002:a50:9eac:: with SMTP id a41mr1764863edf.120.1588943116929;
        Fri, 08 May 2020 06:05:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:2617:: with SMTP id h23ls65982ejc.1.gmail; Fri, 08
 May 2020 06:05:16 -0700 (PDT)
X-Received: by 2002:a17:907:40f2:: with SMTP id no2mr1831838ejb.41.1588943116444;
        Fri, 08 May 2020 06:05:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588943116; cv=none;
        d=google.com; s=arc-20160816;
        b=F1xL0+ycgg22elehn1teAw2aV2OXXKSAippSoc+/4OvGv4+D4prwN9GvnnY/mxGSk+
         CZ3L02/fufdHyzM1o0TReIaPEl4Wf5INdxvAfshJRI/Y5bhGmMEpQv3lEXJflClHMwW3
         bOSRWLIb7+AOKpPfx/CUlwlCrn88Yy8zzXxysz/fZD6ewn6py9I/Iigk6NfTeZHuFVih
         iE3Zn/9kE+EUORnjjKFR7FhipZVhbtoijiXHl+er7LkXtGa5ALv2x7WlvwNIeOnKGMTm
         XXgk9B5toQK8riCgaWCH8QxCDNmO6iHEJ5UFd0od8paopmWnnWhR02nnMMgshAtKiS+v
         zMBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:precedence:robot-unsubscribe:robot-id
         :message-id:mime-version:references:in-reply-to:cc:subject:to
         :reply-to:sender:from:date;
        bh=fCiJMA+dihclwh8pGw0X0QipdKD0cHlenVPLfVlt4qQ=;
        b=l9oDRzbMxcRtCjdIlaAVK6fMjJCrh1+j7KI7UBx6SDQt0U2LM5G5b1/ThKwbFuLyZw
         IQYR57h1VFaQ5+gzVTZkL/SL1Q4NIOQzTTprzb8GXpm7i3OhBRUsyoZBiG9O9vBdjQ87
         fnA+n65LPTkuwLrCa688a93nd1vqZpSY9ovWKFlI7XuRCDugkilgGYC9m4cgvgqrQycG
         eJ/OUhef6RNzd4qdrh31KkQ6UTi38JvPcgpg7L+5CaxckLskIP6crg5kgiUWh1NcP7Lk
         X9IJPfiyl2KlJF32T7piwa2uufFaEDDmhG91oUo71D94WpOT5MetCWrWwEm2hmI8xD/T
         30Bg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tip-bot2@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tip-bot2@linutronix.de
Received: from Galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id i2si87308edn.2.2020.05.08.06.05.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Fri, 08 May 2020 06:05:16 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of tip-bot2@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
Received: from [5.158.153.53] (helo=tip-bot2.lab.linutronix.de)
	by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
	(Exim 4.80)
	(envelope-from <tip-bot2@linutronix.de>)
	id 1jX2gk-0007bY-KZ; Fri, 08 May 2020 15:05:14 +0200
Received: from [127.0.1.1] (localhost [IPv6:::1])
	by tip-bot2.lab.linutronix.de (Postfix) with ESMTP id 6CB2E1C0837;
	Fri,  8 May 2020 15:05:02 +0200 (CEST)
Date: Fri, 08 May 2020 13:05:02 -0000
From: "tip-bot2 for Ian Rogers" <tip-bot2@linutronix.de>
Sender: tip-bot2@linutronix.de
Reply-to: linux-kernel@vger.kernel.org
To: linux-tip-commits@vger.kernel.org
Subject: [tip: perf/core] perf parse-events: Fix memory leaks found on parse_events
Cc: Ian Rogers <irogers@google.com>, Adrian Hunter <adrian.hunter@intel.com>,
 Jiri Olsa <jolsa@redhat.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Andi Kleen <ak@linux.intel.com>, Leo Yan <leo.yan@linaro.org>,
 Mark Rutland <mark.rutland@arm.com>, Namhyung Kim <namhyung@kernel.org>,
 Peter Zijlstra <peterz@infradead.org>, Stephane Eranian <eranian@google.com>,
 clang-built-linux@googlegroups.com,
 Arnaldo Carvalho de Melo <acme@redhat.com>, x86 <x86@kernel.org>,
 LKML <linux-kernel@vger.kernel.org>
In-Reply-To: <20200319023101.82458-1-irogers@google.com>
References: <20200319023101.82458-1-irogers@google.com>
MIME-Version: 1.0
Message-ID: <158894310232.8414.17325608370571338632.tip-bot2@tip-bot2>
X-Mailer: tip-git-log-daemon
Robot-ID: <tip-bot2.linutronix.de>
Robot-Unsubscribe: Contact <mailto:tglx@linutronix.de> to get blacklisted from these emails
Precedence: list
Content-Type: text/plain; charset="UTF-8"
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required,  ALL_TRUSTED=-1,SHORTCIRCUIT=-0.0001
X-Original-Sender: tip-bot2@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of tip-bot2@linutronix.de
 designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tip-bot2@linutronix.de
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

The following commit has been merged into the perf/core branch of tip:

Commit-ID:     672f707ef55f0a56b9bb67c3cfbdcab85c233796
Gitweb:        https://git.kernel.org/tip/672f707ef55f0a56b9bb67c3cfbdcab85c233796
Author:        Ian Rogers <irogers@google.com>
AuthorDate:    Wed, 18 Mar 2020 19:31:00 -07:00
Committer:     Arnaldo Carvalho de Melo <acme@redhat.com>
CommitterDate: Tue, 05 May 2020 16:35:29 -03:00

perf parse-events: Fix memory leaks found on parse_events

free_list_evsel() deals with tools/perf/ evsels, not with libperf
perf_evsels, use the right destructor and avoid a leak, as
evsel__delete() will delete something perf_evsel__delete() doesn't.

Signed-off-by: Ian Rogers <irogers@google.com>

Cc: Adrian Hunter <adrian.hunter@intel.com>
Acked-by: Jiri Olsa <jolsa@redhat.com>
Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
Cc: Andi Kleen <ak@linux.intel.com>
Cc: Leo Yan <leo.yan@linaro.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Namhyung Kim <namhyung@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Stephane Eranian <eranian@google.com>
Cc: clang-built-linux@googlegroups.com
Link: http://lore.kernel.org/lkml/20200319023101.82458-1-irogers@google.com
[ split from a larger patch ]
Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
---
 tools/perf/util/parse-events.y | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/tools/perf/util/parse-events.y b/tools/perf/util/parse-events.y
index e879eb2..6ece67e 100644
--- a/tools/perf/util/parse-events.y
+++ b/tools/perf/util/parse-events.y
@@ -44,7 +44,7 @@ static void free_list_evsel(struct list_head* list_evsel)
 
 	list_for_each_entry_safe(evsel, tmp, list_evsel, core.node) {
 		list_del_init(&evsel->core.node);
-		perf_evsel__delete(evsel);
+		evsel__delete(evsel);
 	}
 	free(list_evsel);
 }

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/158894310232.8414.17325608370571338632.tip-bot2%40tip-bot2.
