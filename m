Return-Path: <clang-built-linux+bncBAABBB6V4PXAKGQE642KP6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-f61.google.com (mail-wm1-f61.google.com [209.85.128.61])
	by mail.lfdr.de (Postfix) with ESMTPS id DA4D3107D7A
	for <lists+clang-built-linux@lfdr.de>; Sat, 23 Nov 2019 09:15:03 +0100 (CET)
Received: by mail-wm1-f61.google.com with SMTP id l11sf416337wmi.0
        for <lists+clang-built-linux@lfdr.de>; Sat, 23 Nov 2019 00:15:03 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1574496903; cv=pass;
        d=google.com; s=arc-20160816;
        b=pM26FxvyUes5ESh3QrsnX1Mk8Z7RuWqZQq5Lj5Qk/FaCTBM+gRQD+gYcwrFvjJe1CT
         GN55Hg+7iKpfvP+0+WF5I+VxUEc6dWywgYA6Mqn8ckch0owGuJINaqBbwLzLjLGZ4Kp0
         8ajZjwGxWZP4uIxY1MQHzenO9qEXmRbfK9w02T027+K2IJfEJz8wx8WTk15w+aOqAVt0
         NaGtrNLdgjNqkN4AI6VaTXYM6uFh9VpnrO3MUF9jSwVqsEXYZ07xl+7eHUKE+AxzuGoT
         fTEuPe1x+FoEj7SzZxM97/mSK78QeMLNRh/C06bstJi14eUSuNpGbXunC5Cyd0JbZPns
         iWBQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:robot-unsubscribe:robot-id
         :message-id:mime-version:references:in-reply-to:cc:subject:to
         :reply-to:sender:from:date;
        bh=7forPA+gvyMvO1A4q+pRm5nL1VKebEVnIm8w3jKFnMU=;
        b=u1PWC4oTymRaxU67d+6GWnv4eWI2JE0Gh/HPqNZs52mZ5xClDQLZCksPxcs6s5fZfb
         CVGP4S/ElCe68hsy7BX2Hx/8TUMqA5aRmIH0Aa4j6JH922v7ZLyCXBx8e+5znK/njc8i
         UKMO9sUdpCQetpHS1IEI8KCn4Q07TiXxd6AVMPz8JjncNb7jHBvZa+e5dB4M6SBnvKlL
         ih270bdwbhQPGtMiCziwqBrrMtloxQ9a0yzhIXIkNtzFrlWwR5FO9f+Um3+2mvGQM0jh
         T/QCkjA/n18f0E7FDV3RZ2nRpDW9BVlv4I5b0leXOMU9neyhyBKH6iBXWz5JDAHtBgFd
         ddNQ==
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
        bh=7forPA+gvyMvO1A4q+pRm5nL1VKebEVnIm8w3jKFnMU=;
        b=XqtM8+6uwHevIK2QBCkT6ovyMz8wLR1zNktHwglG2Lm+pOPzyxVwP+0q25KKfefkzm
         4t17EFybP/96sxqpbnMI0vOtpO9eGlnkGkE/axIq8rwnSOK4rAnyt1ZVxKvhcpQqnqjr
         6Ip/+/IpLSFdGah95Nzy7wpK3OGUumSEL2OzYPIZQCFAbwnh9oDxd/AJ+GwDgAcCVHIq
         ZlrTcMJqe4oDYJmhaXWCjeFKz7u3FysBZN+q0RZckYPBJZYLGbrZNP5oI0PFQRCC6Zhc
         E9F1f7/6Pj9UZTBYiaWy58hS0xmUVlkTsk/GTknExtGq+0vWNYjwn5QszvCcp0UVX6uv
         FQgA==
X-Gm-Message-State: APjAAAVSG38qO/fHjTeqlG86VD3Sf+RSs3RI3HTGyzBixexpFAcJxjA1
	x93+8hrsasF7TURNfr+JgtM=
X-Google-Smtp-Source: APXvYqxzB5x8WoQQ9/opoeGMVGuW3nSyWtlwoapVFefvWkJhdFUCQ1iwEMOHPcvFx/Ax/9WJDtYAYg==
X-Received: by 2002:a05:600c:214a:: with SMTP id v10mr20056090wml.102.1574496903584;
        Sat, 23 Nov 2019 00:15:03 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:c3d1:: with SMTP id d17ls2280666wrg.10.gmail; Sat, 23
 Nov 2019 00:15:03 -0800 (PST)
X-Received: by 2002:adf:dc90:: with SMTP id r16mr22189939wrj.258.1574496903023;
        Sat, 23 Nov 2019 00:15:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1574496903; cv=none;
        d=google.com; s=arc-20160816;
        b=s3GuA28qSxTWpH4rgYIaa/Bfm+vAqVdpsXrhbTvfzVOr4SxTD/ttkjUnJSos0RKmkI
         4qYvkz8hwTrBjd7buJ8Vc3FyFJrSZVQceCQ5Xvg2b8YpkhJIPFOHAFIDbfzAnYxGV2CM
         Tbajp/7zYZZmL4aybZX5+GMjb8AkI+QH0+4GuCi44lyQ95on9WPSjy/iHKqo5pdenHqw
         fB7+z1yeIzvbOLmjSntD4wT/xc/BvdhXX2HZ/IDS7F0ErhrY5fi80Cphl69S6wsawnkX
         eHkn5X8lXmgYyW/G7RBLIIH4XjH8qO4mtRUvgU4Ew+9vs/3B6fXQKeSQRwaGSLfl9vbj
         KCHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:precedence:robot-unsubscribe:robot-id
         :message-id:mime-version:references:in-reply-to:cc:subject:to
         :reply-to:sender:from:date;
        bh=y83x1DgYnIbWCARRBrDpuQefN2Vc8piV9HRX8WmUiDA=;
        b=o2gCHfb3Ji6Ocel2WIdYlULcW8cVWAqolfcu4Emc3yAq1wAy6t4h+BxFSGWvmUMwHE
         hc1D6qK+AiICMEM2DMMDp/fG1PyWS7tAv5JJ9U3IAslBw5pIPQ7M0zjub4+K2flFSEHg
         IMmjg4rxAngSHbDfmu9pNYlNgPt4BAz8pvkNjDKP7OLg0TAxzi3HLb8ewaEbY1+HtLy9
         inoiAchfkJu9e+wFia+WbnPw5SmFXD70VWEK7FmVkOLTfcd62QlishOBJMKEPIKe1qOB
         ng1fYPZVh8ltKb3vL28cGxdSDBQQ1jTkWQnseu6ovgu3Til51UScvnb0wXIhIsXXiPiN
         PPAw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tip-bot2@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tip-bot2@linutronix.de
Received: from Galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id h2si25569wre.0.2019.11.23.00.15.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Sat, 23 Nov 2019 00:15:02 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of tip-bot2@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
Received: from [5.158.153.53] (helo=tip-bot2.lab.linutronix.de)
	by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
	(Exim 4.80)
	(envelope-from <tip-bot2@linutronix.de>)
	id 1iYQZI-0002W7-Ch; Sat, 23 Nov 2019 09:15:00 +0100
Received: from [127.0.1.1] (localhost [IPv6:::1])
	by tip-bot2.lab.linutronix.de (Postfix) with ESMTP id BAA2A1C19FD;
	Sat, 23 Nov 2019 09:14:59 +0100 (CET)
Date: Sat, 23 Nov 2019 08:14:59 -0000
From: "tip-bot2 for Ian Rogers" <tip-bot2@linutronix.de>
Sender: tip-bot2@linutronix.de
Reply-to: linux-kernel@vger.kernel.org
To: linux-tip-commits@vger.kernel.org
Subject: [tip: perf/core] perf parse: Fix potential memory leak when handling
 tracepoint errors
Cc: Ian Rogers <irogers@google.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Andi Kleen <ak@linux.intel.com>, Jin Yao <yao.jin@linux.intel.com>,
 Jiri Olsa <jolsa@redhat.com>, Mark Rutland <mark.rutland@arm.com>,
 Namhyung Kim <namhyung@kernel.org>, Peter Zijlstra <peterz@infradead.org>,
 Stephane Eranian <eranian@google.com>, clang-built-linux@googlegroups.com,
 Arnaldo Carvalho de Melo <acme@redhat.com>, x86 <x86@kernel.org>,
 LKML <linux-kernel@vger.kernel.org>
In-Reply-To: <20191120180925.21787-1-irogers@google.com>
References: <20191120180925.21787-1-irogers@google.com>
MIME-Version: 1.0
Message-ID: <157449689963.21853.6064161775610748154.tip-bot2@tip-bot2>
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

Commit-ID:     4584f084aa9d8033d5911935837dbee7b082d0e9
Gitweb:        https://git.kernel.org/tip/4584f084aa9d8033d5911935837dbee7b082d0e9
Author:        Ian Rogers <irogers@google.com>
AuthorDate:    Wed, 20 Nov 2019 10:09:25 -08:00
Committer:     Arnaldo Carvalho de Melo <acme@redhat.com>
CommitterDate: Fri, 22 Nov 2019 10:48:14 -03:00

perf parse: Fix potential memory leak when handling tracepoint errors

An error may be in place when tracepoint_error is called, use
parse_events__handle_error to avoid a memory leak and to capture the
first and last error. Error detected by LLVM's libFuzzer using the
following event:

$ perf stat -e 'msr/event/,f:e'
event syntax error: 'msr/event/,f:e'
                     \___ can't access trace events

Error:  No permissions to read /sys/kernel/debug/tracing/events/f/e
Hint:   Try 'sudo mount -o remount,mode=755 /sys/kernel/debug/tracing/'

Initial error:
event syntax error: 'msr/event/,f:e'
                                \___ no value assigned for term
Run 'perf list' for a list of valid events

 Usage: perf stat [<options>] [<command>]

    -e, --event <event>   event selector. use 'perf list' to list available events

Signed-off-by: Ian Rogers <irogers@google.com>
Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
Cc: Andi Kleen <ak@linux.intel.com>
Cc: Jin Yao <yao.jin@linux.intel.com>
Cc: Jiri Olsa <jolsa@redhat.com>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Namhyung Kim <namhyung@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Stephane Eranian <eranian@google.com>
Cc: clang-built-linux@googlegroups.com
Link: http://lore.kernel.org/lkml/20191120180925.21787-1-irogers@google.com
Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
---
 tools/perf/util/parse-events.c |  9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/tools/perf/util/parse-events.c b/tools/perf/util/parse-events.c
index 6c313c4..ed7c008 100644
--- a/tools/perf/util/parse-events.c
+++ b/tools/perf/util/parse-events.c
@@ -511,6 +511,7 @@ int parse_events_add_cache(struct list_head *list, int *idx,
 static void tracepoint_error(struct parse_events_error *e, int err,
 			     const char *sys, const char *name)
 {
+	const char *str;
 	char help[BUFSIZ];
 
 	if (!e)
@@ -524,18 +525,18 @@ static void tracepoint_error(struct parse_events_error *e, int err,
 
 	switch (err) {
 	case EACCES:
-		e->str = strdup("can't access trace events");
+		str = "can't access trace events";
 		break;
 	case ENOENT:
-		e->str = strdup("unknown tracepoint");
+		str = "unknown tracepoint";
 		break;
 	default:
-		e->str = strdup("failed to add tracepoint");
+		str = "failed to add tracepoint";
 		break;
 	}
 
 	tracing_path__strerror_open_tp(err, help, sizeof(help), sys, name);
-	e->help = strdup(help);
+	parse_events__handle_error(e, 0, strdup(str), strdup(help));
 }
 
 static int add_tracepoint(struct list_head *list, int *idx,

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/157449689963.21853.6064161775610748154.tip-bot2%40tip-bot2.
