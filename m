Return-Path: <clang-built-linux+bncBAABBCNKVLXAKGQEKQWGKFY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-f57.google.com (mail-wm1-f57.google.com [209.85.128.57])
	by mail.lfdr.de (Postfix) with ESMTPS id D7F44F8DF2
	for <lists+clang-built-linux@lfdr.de>; Tue, 12 Nov 2019 12:18:33 +0100 (CET)
Received: by mail-wm1-f57.google.com with SMTP id g14sf1293164wmk.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 Nov 2019 03:18:33 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573557513; cv=pass;
        d=google.com; s=arc-20160816;
        b=R4jdzKC5zfqlUOpxVnqVFOHKdovN115i0W1gyM25MPSAFK+H0Q/mWgiskc7T4/SN9q
         vpVxpMCO9hi76AX4fkOXBcfRfahBsuicQYj5gCcW6iOjzo1KZwPrJmjMUay7wJsuJAfd
         /5V1BVEU1cYgzgRwQMswC487DGYNyyt9dXnG8UoSO0g6R77dYqnVPkim1JGJE2UJfa/K
         XPzVu6P7ZWIhOGzo9Y9aIbHoPnm1nwOLlh76sS4oKKLygd2FqTQrriDaHO+DKlTWgnCe
         B2768qgva/rjeTnlsdCAMOfYFF3416RtKC51qrXSLY0u2a7iq7LjMcO41mDcpy4aGKLa
         CvlA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:robot-unsubscribe:robot-id
         :message-id:mime-version:references:in-reply-to:cc:subject:to
         :reply-to:sender:from:date;
        bh=8nAtbPOZv/IDg4Q54PGFTUNICeNJBcgpTwUXKLEoIa4=;
        b=D7lUMUQXSH0FbjDJOKUj1tozMD+MO1xypfIF+MclVncMND1PHL93ksDK79TDrUQ2Qm
         C2925G9Gf+W4g6yozQNZV0aTIUdPIW2SbzQ+Dn3DmPmQWpwX3q4gy7hBGWSED5zFXHVf
         z29mOWf3OFerMa0CtivQ4p81tYcINh6CCj2chn1TDG8sPbz2usaukN6w60Hhr/0K1A9m
         /DSeHqqpoQQIjgCqTgl6S2Wu/ZqfSwFzFR1SZkzvL516cTRF1nK1docpE8g7G2SgxgQG
         41cAKqmduIWdkKb0n7MKXBC8tyLTUnHHgPSgA8cBzDTubeeJJb356rJy1m5L/1pymYw9
         95Zg==
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
        bh=8nAtbPOZv/IDg4Q54PGFTUNICeNJBcgpTwUXKLEoIa4=;
        b=kD0zxngvzw939ztQb/Er6kjz87KSkiU+pVVeLXZD833iiqydFzm6n3chrK28LQxU6O
         +IcazJc+r63x+obQ00dk1sFYgo6GL2gQ+vIl8EEjspPDEJpITEAjlqtsnrDzchL0Ji/0
         QcSSOfxTSm4yFQqVBq/DFpokQEgkAFYj0EHvarqPOlKkcMf2OjD/ZGZ5UPes0mXE79CW
         y4G5dYtVmF81qJY/p5uAeRldPVHvvr5l92X1QiZWQ1sLz5on0nuw815qLMu8kYWad2nm
         3NgnK6VwQPUjz8SakgZ4u7epmwqcHiDT8QqeISuMtNZAgK+TIUcnpI2zswZZ5AVW5dfM
         3W4g==
X-Gm-Message-State: APjAAAVD0itT+xfU2BbMr2MnlP4hLE0SgbT6UkUX64+3eihAksi3XpS/
	wu5sC2VHDXHERZVywWvTkEw=
X-Google-Smtp-Source: APXvYqwHiTLFBX8bhaJIeF4NLgtpIJt5qgiLQnHw+lKYW7vUZrvXlgmOkVn6iavub0aEcNdkZu4oKg==
X-Received: by 2002:a7b:c743:: with SMTP id w3mr3536786wmk.165.1573557513653;
        Tue, 12 Nov 2019 03:18:33 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:6085:: with SMTP id u127ls2159542wmb.5.gmail; Tue, 12
 Nov 2019 03:18:33 -0800 (PST)
X-Received: by 2002:a1c:410a:: with SMTP id o10mr3440466wma.117.1573557513312;
        Tue, 12 Nov 2019 03:18:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573557513; cv=none;
        d=google.com; s=arc-20160816;
        b=Wrq7Z84mVq2Nce3yl2Tzg+E5DdEKLIUNQWuu57Y/t68jRVa0KkAgy/pgjcHmH8b5+G
         Tl1VqA2S3jlSlbOdCaotjKponi/mubPmlGZE/7VIiw4hLEs9t1pMJtzTKieHAAxfMh5t
         zYk3wohWMY6seWYDhoXb4WUDdV4pVvK0+TpigXiPAcmPcVq8iip2KlP7noqtIS6BJvJC
         DHuzwsmODaDoHAb+aB8q7hQ2kXmRkfg9MVVfjsB5+S6e0sbvzbQJC4d0D133uMVg15xe
         FiEFCSHiG/+7GSGbjhKGRqigyEy/tlduQT2p61m3IFpALXnGwlfoH26oxOhyMT6FwPe1
         MxAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:precedence:robot-unsubscribe:robot-id
         :message-id:mime-version:references:in-reply-to:cc:subject:to
         :reply-to:sender:from:date;
        bh=UhZBM67w63jk0c37IZRBO2LUyOee8EpPaIZDEp1GA0w=;
        b=ve7SR3EMlCKUKqX125BGSHVKmAZ+yluWDzMNBGq1E96P/4p3OJmeUQrj+j4WYoMuLg
         DsubMQkcNvW2hn+jy8YvN8DB18+LHkA0TN/6Gl5coNFEk7H64ZVjHLenCnAbu/T8Nlvx
         cp966ymtgV4lgh5dI+ycmoOFF8ZTITPl+ZQiXRlBq30jf45/yB7uGGiy5MxEuTcoHbtj
         ang5m5Ej7IZalN6OtaWyRtn71nnnWgkhE0cjW7tjxgbJfiktlZwaU4kww0vaCuWPNnfM
         shrXwn97U8xBnQBJioV3lZJFhvQARXsscX36zM7gJ77is9AG7jM+7kE1b+LFNbBDyCDI
         WgrQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tip-bot2@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tip-bot2@linutronix.de
Received: from Galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id w10si1140808wru.4.2019.11.12.03.18.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Tue, 12 Nov 2019 03:18:33 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of tip-bot2@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
Received: from [5.158.153.53] (helo=tip-bot2.lab.linutronix.de)
	by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
	(Exim 4.80)
	(envelope-from <tip-bot2@linutronix.de>)
	id 1iUUBl-0000go-RY; Tue, 12 Nov 2019 12:18:26 +0100
Received: from [127.0.1.1] (localhost [IPv6:::1])
	by tip-bot2.lab.linutronix.de (Postfix) with ESMTP id F08A11C0357;
	Tue, 12 Nov 2019 12:18:14 +0100 (CET)
Date: Tue, 12 Nov 2019 11:18:14 -0000
From: "tip-bot2 for Ian Rogers" <tip-bot2@linutronix.de>
Sender: tip-bot2@linutronix.de
Reply-to: linux-kernel@vger.kernel.org
To: linux-tip-commits@vger.kernel.org
Subject: [tip: perf/core] perf tools: Avoid a malloc() for array events
Cc: Ian Rogers <irogers@google.com>, Jiri Olsa <jolsa@kernel.org>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Alexei Starovoitov <ast@kernel.org>, Andi Kleen <ak@linux.intel.com>,
 Daniel Borkmann <daniel@iogearbox.net>, Jin Yao <yao.jin@linux.intel.com>,
 John Garry <john.garry@huawei.com>, Kan Liang <kan.liang@linux.intel.com>,
 Mark Rutland <mark.rutland@arm.com>, Martin KaFai Lau <kafai@fb.com>,
 Namhyung Kim <namhyung@kernel.org>, Peter Zijlstra <peterz@infradead.org>,
 Song Liu <songliubraving@fb.com>, Stephane Eranian <eranian@google.com>,
 Yonghong Song <yhs@fb.com>, bpf@vger.kernel.org,
 clang-built-linux@googlegroups.com, netdev@vger.kernel.org,
 Arnaldo Carvalho de Melo <acme@redhat.com>, Ingo Molnar <mingo@kernel.org>,
 Borislav Petkov <bp@alien8.de>, linux-kernel@vger.kernel.org
In-Reply-To: <20191023005337.196160-6-irogers@google.com>
References: <20191023005337.196160-6-irogers@google.com>
MIME-Version: 1.0
Message-ID: <157355749440.29376.10975700265435116588.tip-bot2@tip-bot2>
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

Commit-ID:     826100a7ce9a659b42140710ebe789d710799048
Gitweb:        https://git.kernel.org/tip/826100a7ce9a659b42140710ebe789d710799048
Author:        Ian Rogers <irogers@google.com>
AuthorDate:    Tue, 22 Oct 2019 17:53:33 -07:00
Committer:     Arnaldo Carvalho de Melo <acme@redhat.com>
CommitterDate: Wed, 06 Nov 2019 15:43:05 -03:00

perf tools: Avoid a malloc() for array events

Use realloc() rather than malloc()+memcpy() to possibly avoid a memory
allocation when appending array elements.

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
Link: http://lore.kernel.org/lkml/20191023005337.196160-6-irogers@google.com
Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
---
 tools/perf/util/parse-events.y | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/tools/perf/util/parse-events.y b/tools/perf/util/parse-events.y
index 5863acb..ffa1a1b 100644
--- a/tools/perf/util/parse-events.y
+++ b/tools/perf/util/parse-events.y
@@ -689,14 +689,12 @@ array_terms ',' array_term
 	struct parse_events_array new_array;
 
 	new_array.nr_ranges = $1.nr_ranges + $3.nr_ranges;
-	new_array.ranges = malloc(sizeof(new_array.ranges[0]) *
-				  new_array.nr_ranges);
+	new_array.ranges = realloc($1.ranges,
+				sizeof(new_array.ranges[0]) *
+				new_array.nr_ranges);
 	ABORT_ON(!new_array.ranges);
-	memcpy(&new_array.ranges[0], $1.ranges,
-	       $1.nr_ranges * sizeof(new_array.ranges[0]));
 	memcpy(&new_array.ranges[$1.nr_ranges], $3.ranges,
 	       $3.nr_ranges * sizeof(new_array.ranges[0]));
-	free($1.ranges);
 	free($3.ranges);
 	$$ = new_array;
 }

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/157355749440.29376.10975700265435116588.tip-bot2%40tip-bot2.
