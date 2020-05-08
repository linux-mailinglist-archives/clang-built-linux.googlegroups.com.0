Return-Path: <clang-built-linux+bncBDJKZSEQ3YKRBC5S2X2QKGQER4ZHW3A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-f60.google.com (mail-wm1-f60.google.com [209.85.128.60])
	by mail.lfdr.de (Postfix) with ESMTPS id 5307E1CAD89
	for <lists+clang-built-linux@lfdr.de>; Fri,  8 May 2020 15:05:16 +0200 (CEST)
Received: by mail-wm1-f60.google.com with SMTP id 71sf3655957wmb.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 08 May 2020 06:05:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588943116; cv=pass;
        d=google.com; s=arc-20160816;
        b=gx5X5oDI0MPa7Ivu2t3QWvfGxTli+Gs+VB5V6oVWEeAh4A4cZuGqBmv+KTCOICQnAi
         C3c+458miAajtKN0Zq4CBwBTbJL+WMUccGP3jGPPPr1NbQ8jUMzG9h7W7SKLI3VguC+B
         Ka2YJ6slv7acXKRZPRZm/is7f0ZTSqgnvr/hRgZM+eRLbpCXsO4s3djmufiTh9GtDpcb
         R13n9lW1lIIQVh8LaZLMtl6cilW3n9KJlrzP16nrANtLfOkoR96eiEFrCHp1KxPbJ5WX
         UGHuTXPp8YW7TfWH1C/PiMl5JuywSA0M1MHRH/dZH1OW0tzAxhmrPfurLu05LsUDXWqG
         xCyw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:robot-unsubscribe:robot-id
         :message-id:mime-version:references:in-reply-to:cc:subject:to
         :reply-to:sender:from:date;
        bh=64G90tWXJb84AdYXD+iAfkwUP60KlCdLXaM6VvPS94I=;
        b=FDrF53cLKSAB7FeG47KvxvQIhEYeM4I3fpsUdLVvSZSWLiRc2CbkIxdM6tjcKVTELg
         8RkqFgPk+jRQLdyQDdEjHK45XQks1QXX4WtsQWpCOuOuG4hXcJ9BlHemznIzwp9ETWMy
         Vxo6FISpImABh58xH6JhdPmvCuFlUi4oXkxoUKCUQy+2F4rTOOgdJ2qqZsXbLtTx0xit
         Qsj0bKtSjj9aF+UiawGx8q2PcQ+PH0HAY5IDMvzpAZXMvzsTwLu4AvP2Ri9+9UBkGCMr
         SFkoNjRqDNtIrdIZe0iEnyxjE3p8BT67LdRqc+a50FB4v4mje+fWg4cnNg8iNVu2Lfzx
         BcOw==
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
        bh=64G90tWXJb84AdYXD+iAfkwUP60KlCdLXaM6VvPS94I=;
        b=ZmB0oqnqU1etp+R8yhCHNAm26hesSn5WMQsxNTNXFkaHUZT3K3Dl1rOGIsv4TICVsh
         AGUzyfLq9mvIrAltdL/bHcTNYh6c6lPQR91OuBahSFmZtsOX/KdG9G8Nx/mrVytHYPgn
         tNHIhLSBHMy2om/HVDaBvFSNaC97/9hY3YAYJgAOBuoFgcbalq4pfsvI9bfN+CkQ9B2L
         7/UdOoIy+u5yrx+d+hh6Kd/WAD6xKyQKGritt/xJ3eZ8j22h928k8KJOeylUZZEJ9WhX
         1umAwk/9NNt3CQ29RSU7zySMQjJF86InUIr50Im/m/vqrZNcD2hA+4uUBEcz2FKPw/Qk
         RtSg==
X-Gm-Message-State: AGi0PuZxkIMt9CTCE0jq69eyC5/pVbuWAQalUJVM03/5QqEPbMX+W4mX
	xbXufVs5loC9XZMM4YoY+3M=
X-Google-Smtp-Source: APiQypKngoJkgF5MenmyB1ynYxRBwG/X2rupwnPeJU591wHMD3FVN/Dtmj0J7EnLL68tyaB9Mx9pwg==
X-Received: by 2002:adf:fa92:: with SMTP id h18mr2928909wrr.260.1588943116059;
        Fri, 08 May 2020 06:05:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6000:8d:: with SMTP id m13ls657995wrx.4.gmail; Fri, 08
 May 2020 06:05:15 -0700 (PDT)
X-Received: by 2002:adf:b30f:: with SMTP id j15mr3077937wrd.394.1588943115514;
        Fri, 08 May 2020 06:05:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588943115; cv=none;
        d=google.com; s=arc-20160816;
        b=tVPvFDotXJhV4z6s+9PkhkpAeDzRiwGGn0/WKwGbQSHpd2f2i4F56KAyl/JbdKBcRc
         ANr1CgCT1Nq5DPMDyUsuK2YatURjlaVCvtJFkE4I3yuCjXl2Y3vWQlHlrk675kA7/00S
         T8msxFCbU1FWblK5VtcK5JJ/KDdQ3hG7nmCxlc2jwJR58a+varwxWknBeBQkl/NUGvWl
         0WQRnaRzwN6qEbLYlz0gvNa14tBI6o2wOzdgj8H/oC+tZuPkYUYLenppIY/cHju/Huxh
         1QmHMG4WD30LuUPQs2ph11v9G11jk6UDC8dgJcYZYF0MqC0AJTqZ8/7AdcAleGKTzikd
         OfMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:precedence:robot-unsubscribe:robot-id
         :message-id:mime-version:references:in-reply-to:cc:subject:to
         :reply-to:sender:from:date;
        bh=/eSsV7fzVxDV7F7dv36AZ6xG5B2c8zuj76ISfFU6CbE=;
        b=bGY5jZdJc4A4GnZaorBizgfO2rFaTX+JoZiZT5qpC2PIgzq4yQxTENGwot8qt6neqZ
         Vex1jHvjqhFxYXK1U3p5EkEj9efL/ZmOLDDa4rHJa3K9+m+0sB3gOD2F0SDCjh3qv2eB
         4ncMLInIkYOc/A2gdB8NeYiWHAp6qu1G3d9VXgdSanDQTyNhnqLC/XJwyUgZl6jjYm7f
         1ZOOF1DluFTKgd2NGbWJ5vwXbdY8E53jIo7M8GGm0oe10iyEYY9/IDkcPgeAQ8YAFD9M
         K/jEZlTSDiWJK6y6oV5BSMlcHdSwSo1Hi01xK5U44yrLOZroG4YeXhmfBjWu8wjY7pqO
         SykQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tip-bot2@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tip-bot2@linutronix.de
Received: from Galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id w8si67339wrn.2.2020.05.08.06.05.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Fri, 08 May 2020 06:05:15 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of tip-bot2@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
Received: from [5.158.153.53] (helo=tip-bot2.lab.linutronix.de)
	by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
	(Exim 4.80)
	(envelope-from <tip-bot2@linutronix.de>)
	id 1jX2gj-0007aq-Sc; Fri, 08 May 2020 15:05:14 +0200
Received: from [127.0.1.1] (localhost [IPv6:::1])
	by tip-bot2.lab.linutronix.de (Postfix) with ESMTP id 6FB761C0822;
	Fri,  8 May 2020 15:05:01 +0200 (CEST)
Date: Fri, 08 May 2020 13:05:01 -0000
From: "tip-bot2 for Ian Rogers" <tip-bot2@linutronix.de>
Sender: tip-bot2@linutronix.de
Reply-to: linux-kernel@vger.kernel.org
To: linux-tip-commits@vger.kernel.org
Subject: [tip: perf/core] libperf evlist: Fix a refcount leak
Cc: Ian Rogers <irogers@google.com>, Adrian Hunter <adrian.hunter@intel.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Andi Kleen <ak@linux.intel.com>, Jiri Olsa <jolsa@redhat.com>,
 Leo Yan <leo.yan@linaro.org>, Mark Rutland <mark.rutland@arm.com>,
 Namhyung Kim <namhyung@kernel.org>, Peter Zijlstra <peterz@infradead.org>,
 Stephane Eranian <eranian@google.com>, clang-built-linux@googlegroups.com,
 Arnaldo Carvalho de Melo <acme@redhat.com>, x86 <x86@kernel.org>,
 LKML <linux-kernel@vger.kernel.org>
In-Reply-To: <20200319023101.82458-2-irogers@google.com>
References: <20200319023101.82458-2-irogers@google.com>
MIME-Version: 1.0
Message-ID: <158894310133.8414.12761535620114506171.tip-bot2@tip-bot2>
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

Commit-ID:     4599d292128d89e4cf866a0ea9a9b047a2de8418
Gitweb:        https://git.kernel.org/tip/4599d292128d89e4cf866a0ea9a9b047a2de8418
Author:        Ian Rogers <irogers@google.com>
AuthorDate:    Wed, 18 Mar 2020 19:31:01 -07:00
Committer:     Arnaldo Carvalho de Melo <acme@redhat.com>
CommitterDate: Tue, 05 May 2020 16:35:29 -03:00

libperf evlist: Fix a refcount leak

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
---
 tools/lib/perf/evlist.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/tools/lib/perf/evlist.c b/tools/lib/perf/evlist.c
index c481b62..6a875a0 100644
--- a/tools/lib/perf/evlist.c
+++ b/tools/lib/perf/evlist.c
@@ -123,6 +123,7 @@ static void perf_evlist__purge(struct perf_evlist *evlist)
 void perf_evlist__exit(struct perf_evlist *evlist)
 {
 	perf_cpu_map__put(evlist->cpus);
+	perf_cpu_map__put(evlist->all_cpus);
 	perf_thread_map__put(evlist->threads);
 	evlist->cpus = NULL;
 	evlist->all_cpus = NULL;

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/158894310133.8414.12761535620114506171.tip-bot2%40tip-bot2.
