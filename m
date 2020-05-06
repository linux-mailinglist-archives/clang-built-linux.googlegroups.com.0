Return-Path: <clang-built-linux+bncBDZ7JWMQ2EGBBTFNZP2QKGQEEVJXYGA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3a.google.com (mail-qv1-xf3a.google.com [IPv6:2607:f8b0:4864:20::f3a])
	by mail.lfdr.de (Postfix) with ESMTPS id DFC701C744A
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 May 2020 17:25:01 +0200 (CEST)
Received: by mail-qv1-xf3a.google.com with SMTP id fe18sf2579740qvb.11
        for <lists+clang-built-linux@lfdr.de>; Wed, 06 May 2020 08:25:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588778701; cv=pass;
        d=google.com; s=arc-20160816;
        b=eVuE2Q8KNRwXu4oqt6rpzsLNyXbCy4ugar46q/15qzuDJT1Lxx1h6sf5EnYelE43gY
         OOPjI8WZtUM/TBXQcZqtx+F77L58297pSbPqQArOIoqm52OhRit9Y8GZMLsKTIQ3b/yN
         luSHCwQ/BlFx4jA9ILRVuTG4n2ai9q+TXR4nNBM8G8i5gtFKm6Qvew7vFFo2lbXdj1U7
         j17p9VCEzEeBjHwGEk+QHg0mlycY6C3bIykE0a8Inz372YorO/aQcpN6pLbPQrHfCgKP
         c+9g+aUpdAwVWBkJT1o2FhAMPYoTXyP0NlGI4pD2R3MC1+QCiDOAms6SCeOLj3SlE4A6
         jy9w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=qrT7FXMzG5pmkI74jOCYa6w4JWPfedYJVHZS9DcgK3U=;
        b=DLMBtd57Q24GRS7xAxOq0O/2ehy9ct/3s3iMAKwsc2JKZrgcd3sTSpAdLW+4qI23IJ
         uAjcZmicdFG831EyYK4t5jd8v3mnTs7A//g3GxPLg6vv3r7MVPyo6fQ5LAVW4Jb1bdsY
         qL1W5axMM7S4M5KOAXDpyxPg/a26jutlfMYutnxcZ5JHAZN5cbyBNZSu1aTBzbZvxcnz
         QYxmzFK7RQZsry5q3dQSK8ozns9l+vpKJA/0cNc+e4JA19b3UGFRKx3W/Tdw3RZODSwV
         +AixY0AaiCmkzb4cLCC8TueHW5EY87sP6EgZyEVO6vHk2Lpis/tmNFa+Xctu24rDCj+K
         Buag==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=eQQ5HZc+;
       spf=pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=acme@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qrT7FXMzG5pmkI74jOCYa6w4JWPfedYJVHZS9DcgK3U=;
        b=fBtq8XPaaXy1tHbkYc1DDQZ9OsF3K1OAmyZPKbfuvaRdbFxrRYzReP4qyVl3z9TcEC
         S8hKdMQCiJbXV/Y7swOWQttXtzUwwBjUY7ZG+WgzNgVTQrt7r4/gsjAN9eXFAPfICUn+
         yOxjD2cs7fw1d7KERGF9LU8q39gSX5ZhPRqfVM/qHiXV1oKBVxBmIRMg8YmRadHssFUz
         8j7XUlMpxJsfDS3HycNpmnAP+5UabT8AqKpPcc4PvMGN0ZpVmBF64iRCN+3PWLeiC+m0
         sey07YuWNQeMK4c2+6y+fWtMgAtxIvwU2eW4h+S0asfr+UCMIVNl9cTQVHnYd1SOdKXN
         7O0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qrT7FXMzG5pmkI74jOCYa6w4JWPfedYJVHZS9DcgK3U=;
        b=VctSnPjL9wJUKplJKoujE2PqJnlAMuNAjLJSzX4n18KTKDCS7XbmAn7Rw/zStPbCE2
         bSDQvjMvlgAiK1KcH7MDvH5KAvG2uNjxPcIkLTs3DoxG1aPIgQ8cUklm7HhEXI13X4Ou
         AV3YbEOmgyPEmsVvaPsvY0M191mrkCfB09gFxuAjBuGXOMqcAL4Kr1K39tCfzX72/Hyw
         BzOdWfS+FCUTZ/Mk6eZJl6oslWgauO4Ua6GVlMTu2g3KgR5TZqv1O86x+dLn3II2Uqdq
         OagLYGGHyZhh1o6qB09rDJbKNjSvpDdkiAH+F+oB6i8myIYiAijwLB4YhOdpqv6lPxB5
         w/xw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZFbVWotLE0EQ+Hp0kUMIXR41dzyoUQDKHbTc4gQzpeoHmE9/qu
	CfmdCpKGAC9CUeV9zTSSBLg=
X-Google-Smtp-Source: APiQypLfNtwiuZMb693c62GlaftkODEAPLPb+b4QFAA6kU0upmdcTLKMmtkCZAIF3fRztWEI6Szd+w==
X-Received: by 2002:a37:b5c3:: with SMTP id e186mr8996714qkf.158.1588778700943;
        Wed, 06 May 2020 08:25:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:51c4:: with SMTP id d4ls1310095qtn.9.gmail; Wed, 06 May
 2020 08:25:00 -0700 (PDT)
X-Received: by 2002:aed:2213:: with SMTP id n19mr9123115qtc.246.1588778700545;
        Wed, 06 May 2020 08:25:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588778700; cv=none;
        d=google.com; s=arc-20160816;
        b=Nme504aAPzJ4hyN63GhWpdkl0YZMDSgP9Lh8Ug+hbyEg3BKxRPiarZsj4nZkw4zfJB
         Dpqyil2vDj3XFe7Glqg2qk3dTtHfK9rMilqEucrv2WiZlMGWbyf5ylkv1F25qmwaUimu
         tcpuKEI9Lk4KcjxGDLHJ6YoieKuZkq98CVKXYuhxAEzegzQreKAkONK83vXcNX/zQ3Vv
         KNlSklQpnVbY1LUOqzdwaLNcMCSjL7pek+IQLvjXl+hEGTYb5GK5IXfYQk3KtIdecVj9
         u7n1eWvi47Gr4zbNPPEBc37F6dlAMDcwRknQL4vIdk1gH1caCxpxtqjcT5dFZJm6yLB2
         hgwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=d3CXosUfRfR+tdSvkt/NHqU01+VeLSnfoQz9Iw1lqMM=;
        b=saZnMvwDQztG0awwcwOSfAos8o6Y+a0F60pY1DsXbyDH+gSn007sxnDf5dQhkf+YRk
         P78SiFI9hLZPvY7EqiWfz7H6srHWVqgLYpF9wrX4nmwgzv41HPRMEfXJGTKiT75u9/OO
         kSFfhSDAEi9Jin/LfnuPKGCEBzVCcmFFiV9rWzt/N2ezCUWGslpZQcpHd9X7SSEolz7g
         eE7n0Uupi30a/tAY4iMX0bNG/rqxTNV10K9FlYnXWamNr58hZLw3r+s6dBZdeonB626a
         umM8JGGJ+ZVDM0AIgjmT0s/0n0n9uVwonJHep8ONAaEBG3ZLV7NO8xFXBtcVtx8LHUVi
         Eh2w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=eQQ5HZc+;
       spf=pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=acme@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 2si46110qtp.1.2020.05.06.08.25.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 06 May 2020 08:25:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from quaco.ghostprotocols.net (unknown [179.97.37.151])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 9FDE620CC7;
	Wed,  6 May 2020 15:24:55 +0000 (UTC)
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Ingo Molnar <mingo@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>
Cc: Jiri Olsa <jolsa@kernel.org>,
	Namhyung Kim <namhyung@kernel.org>,
	Clark Williams <williams@redhat.com>,
	linux-kernel@vger.kernel.org,
	linux-perf-users@vger.kernel.org,
	Ian Rogers <irogers@google.com>,
	Adrian Hunter <adrian.hunter@intel.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Andi Kleen <ak@linux.intel.com>,
	Jiri Olsa <jolsa@redhat.com>,
	Leo Yan <leo.yan@linaro.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Stephane Eranian <eranian@google.com>,
	clang-built-linux@googlegroups.com,
	Arnaldo Carvalho de Melo <acme@redhat.com>
Subject: [PATCH 36/91] libperf evlist: Fix a refcount leak
Date: Wed,  6 May 2020 12:21:39 -0300
Message-Id: <20200506152234.21977-37-acme@kernel.org>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200506152234.21977-1-acme@kernel.org>
References: <20200506152234.21977-1-acme@kernel.org>
MIME-Version: 1.0
X-Original-Sender: acme@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=eQQ5HZc+;       spf=pass
 (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=acme@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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
index c481b62f2ce4..6a875a0f01bb 100644
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
2.21.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200506152234.21977-37-acme%40kernel.org.
