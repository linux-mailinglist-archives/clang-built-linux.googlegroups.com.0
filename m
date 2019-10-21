Return-Path: <clang-built-linux+bncBAABBAH2XDWQKGQE3PYZURQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-f55.google.com (mail-wr1-f55.google.com [209.85.221.55])
	by mail.lfdr.de (Postfix) with ESMTPS id AF674DF87B
	for <lists+clang-built-linux@lfdr.de>; Tue, 22 Oct 2019 01:19:28 +0200 (CEST)
Received: by mail-wr1-f55.google.com with SMTP id x9sf1779303wrq.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 21 Oct 2019 16:19:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571699968; cv=pass;
        d=google.com; s=arc-20160816;
        b=qOkkDdoyl5FAEc1HJiNTQFEOlEcuMLCQPq33ovWl9JG72WJ+8TWldOzwpxZrFQYDT9
         bN96PCxD2X/XsuouaBaVi4LX/IxK6QA5UnQJCOJp0OInd4RBkhsyrcvnsoqfsWZ0p4o2
         Jd2umg52c1eJ+wP9mtlGHz7v+dDhomTX6oKAcTK5k/xKZJTzlfB8/zWHPpUFM/79s4sN
         IZDEtK6lig6JBoRTGNV88TSqc3ng5tJDGounxZ6MZTNbffVzXBEfq9b7v8iFXlFBxzVB
         DkhF+0y5gaxOEc+QQ7sJvf3utWFInFd8cluO+TltfzE6ERjL91aJV9wG4fBIxxkjHVK9
         6jeQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:robot-unsubscribe:robot-id
         :message-id:mime-version:references:in-reply-to:cc:subject:to
         :reply-to:sender:from:date;
        bh=qZpBSvqDEad8/Csn4Al7jZIrAGDNSt+ovsAOo4cOyHg=;
        b=NGe54837KvIi/gKEN96RCDFfFN0WP+laArBJohjzLz83mpAb8jEczqAt836uzcDeUz
         Ji/dJp0ZkaigM4xjbFrAaHyJW5pU94FnauE/P9z96iEE6MP3RWzXS4OlRGvBcRC1n2zw
         WA9mLXTIEylNHzxIAR5nf6T0dp/e4uFs0t0+DSVW89TBFX4uLujyFt88M9bYu3o6x/mq
         90IE7z4LQ9IR7mwMYUJHtW5kzrdZ3JhFp96z345co7lgOHkRL9m4tmZH3ffkMaarxvTu
         OQPB71NZynhlztn+wAvQJ/9/WfMuktdM2PN1wdAgQ/c5PAydwyAl2CWGwYzR3jr7RgEv
         5HfQ==
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
        bh=qZpBSvqDEad8/Csn4Al7jZIrAGDNSt+ovsAOo4cOyHg=;
        b=dgFQeKQH3NDVWjgZFKIVHDZ4uXyQvulaSBK3vwAG59wAmEvQyVR5WNLtCwlPPaHyO4
         lYBg9og7ukCeEokJ4c6wPtmgRdyHWicHSyQxc4CiUtK5pKP9LQ1aLnJEWwW0MNeR2+qc
         TqKOna9yDxYMOzUoHfMwce3UkIFzNLY+o0n2p6RJkGEJmK0HJrvxgzSUZKuB8yDErGPw
         Fk5Wcz4W8iPghWwyNLPqxqIrnyeFGcGUt9o89WDkuk2wnfHkoo63k9AySNVJyeOo+AFN
         S92PX2P9iNZCcngAhlZXA1ESEf+P1LlfG1CcZ+XMMnJepNmd7AHXaEE/xaNQDJYZEYon
         UyVA==
X-Gm-Message-State: APjAAAWi0y2J+a/jQDUneiRF2qnUR7+Gqi94ApZclfDpA1SUDMvgcE4Z
	yFQFpqYB/nziVTXYh9KMls8=
X-Google-Smtp-Source: APXvYqwd6htBc//aXmWgePH48YeHiIM64V4RN9DzdnTIH6Obrpgi8LwEFYBvyKQa70qxpR1bO7xc0A==
X-Received: by 2002:a1c:7c13:: with SMTP id x19mr314588wmc.80.1571699968461;
        Mon, 21 Oct 2019 16:19:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:efce:: with SMTP id i14ls7729030wrp.10.gmail; Mon, 21
 Oct 2019 16:19:28 -0700 (PDT)
X-Received: by 2002:a5d:4a03:: with SMTP id m3mr561388wrq.359.1571699968232;
        Mon, 21 Oct 2019 16:19:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571699968; cv=none;
        d=google.com; s=arc-20160816;
        b=liq8auXBDxyWqORS7MPT5mkENICyAR5ATpoIeUUYhaVhtKg/UPcUnVHzM3VuHQAA8/
         BapSeRvd3JFXGIPguJTYcxm6qzP17DJoDY22wOM9rsnNcZdoDIJdOpRVGFudUAHEztjw
         zHv4Ceyr/l7kzsd8FM6ZdA1feYn7ESHfOaBlxEF7oR7VboXaCir0qtpzETh6CYBPovpJ
         1zFYdTjUPquXEYC5OprZUnwCsv28ROmPK3HqWppE7hv/kEJOi87dHfQhFNuT1uKAR3ui
         hVcZRRJbEr0GO0SCBNAxUBxmFxwTeV2rloKW4sqnZ6IWTEIccEWUPwNDYKsX38H+2rkt
         iDEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:precedence:robot-unsubscribe:robot-id
         :message-id:mime-version:references:in-reply-to:cc:subject:to
         :reply-to:sender:from:date;
        bh=7U361mmxkUMuyaLQXkqRBJP3xdjzVkWyYINedk71u9w=;
        b=jbClamhA4bJUGI7vOOXCWHz5kSzmaciLk1L5fshN8tY3EpR7X3Bs4voBptmq5nBYFM
         Z57V3w6WxJx251MjCCErFNFJzuX68jxvDFgh7zzERfsBWcoWXGXHlImNerkHeHj5A/FV
         f3eNM+mw1lJ9lGa62WmrExUeu7sMnLTvTxCfNpUhPvZPopvv78gjZum27eekJY5g2Esk
         1NqwzZR7iyAFvzE7MZg+Yfy3sadqeQCa25UsxlbMIyQFd/ysiadbHNZ7vUZ9MjcE9n9n
         +dlZG5n8glGbIng7iJ8a2ZppQ4csjow0dSE6Qkc5V0UQK6048/H8N4fUIeRvCb3Kxb8d
         KaBQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tip-bot2@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tip-bot2@linutronix.de
Received: from Galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id y185si709569wmd.4.2019.10.21.16.19.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Mon, 21 Oct 2019 16:19:28 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of tip-bot2@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
Received: from [5.158.153.53] (helo=tip-bot2.lab.linutronix.de)
	by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
	(Exim 4.80)
	(envelope-from <tip-bot2@linutronix.de>)
	id 1iMgxO-0004Cf-JP; Tue, 22 Oct 2019 01:19:23 +0200
Received: from [127.0.1.1] (localhost [IPv6:::1])
	by tip-bot2.lab.linutronix.de (Postfix) with ESMTP id 290561C04D5;
	Tue, 22 Oct 2019 01:19:15 +0200 (CEST)
Date: Mon, 21 Oct 2019 23:19:14 -0000
From: "tip-bot2 for Ian Rogers" <tip-bot2@linutronix.de>
Sender: tip-bot2@linutronix.de
Reply-to: linux-kernel@vger.kernel.org
To: linux-tip-commits@vger.kernel.org
Subject: [tip: perf/core] perf annotate: Fix objdump --no-show-raw-insn flag
Cc: Ian Rogers <irogers@google.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Jin Yao <yao.jin@linux.intel.com>, Jiri Olsa <jolsa@redhat.com>,
 Mark Rutland <mark.rutland@arm.com>, Namhyung Kim <namhyung@kernel.org>,
 Peter Zijlstra <peterz@infradead.org>, Song Liu <songliubraving@fb.com>,
 Stephane Eranian <eranian@google.com>, clang-built-linux@googlegroups.com,
 Arnaldo Carvalho de Melo <acme@redhat.com>, Ingo Molnar <mingo@kernel.org>,
 Borislav Petkov <bp@alien8.de>, linux-kernel@vger.kernel.org
In-Reply-To: <20191010183649.23768-6-irogers@google.com>
References: <20191010183649.23768-6-irogers@google.com>
MIME-Version: 1.0
Message-ID: <157169995483.29376.7991382178457422946.tip-bot2@tip-bot2>
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

Commit-ID:     c5baf9089246c1356705c9ba36d767ee8ce43dd2
Gitweb:        https://git.kernel.org/tip/c5baf9089246c1356705c9ba36d767ee8ce43dd2
Author:        Ian Rogers <irogers@google.com>
AuthorDate:    Thu, 10 Oct 2019 11:36:49 -07:00
Committer:     Arnaldo Carvalho de Melo <acme@redhat.com>
CommitterDate: Tue, 15 Oct 2019 08:39:42 -03:00

perf annotate: Fix objdump --no-show-raw-insn flag

Remove redirection of objdump's stderr to /dev/null to help diagnose
failures.

Fix the '--no-show-raw' flag to be '--no-show-raw-insn' which binutils
is permissive and allows, but fails with LLVM objdump.

Signed-off-by: Ian Rogers <irogers@google.com>
Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
Cc: Jin Yao <yao.jin@linux.intel.com>
Cc: Jiri Olsa <jolsa@redhat.com>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Namhyung Kim <namhyung@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Song Liu <songliubraving@fb.com>
Cc: Stephane Eranian <eranian@google.com>
Cc: clang-built-linux@googlegroups.com
Link: http://lore.kernel.org/lkml/20191010183649.23768-6-irogers@google.com
Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
---
 tools/perf/util/annotate.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/tools/perf/util/annotate.c b/tools/perf/util/annotate.c
index efc5bfe..eef8aa8 100644
--- a/tools/perf/util/annotate.c
+++ b/tools/perf/util/annotate.c
@@ -1966,13 +1966,13 @@ static int symbol__disassemble(struct symbol *sym, struct annotate_args *args)
 	err = asprintf(&command,
 		 "%s %s%s --start-address=0x%016" PRIx64
 		 " --stop-address=0x%016" PRIx64
-		 " -l -d %s %s -C \"$1\" 2>/dev/null",
+		 " -l -d %s %s -C \"$1\"",
 		 opts->objdump_path ?: "objdump",
 		 opts->disassembler_style ? "-M " : "",
 		 opts->disassembler_style ?: "",
 		 map__rip_2objdump(map, sym->start),
 		 map__rip_2objdump(map, sym->end),
-		 opts->show_asm_raw ? "" : "--no-show-raw",
+		 opts->show_asm_raw ? "" : "--no-show-raw-insn",
 		 opts->annotate_src ? "-S" : "");
 
 	if (err < 0) {

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/157169995483.29376.7991382178457422946.tip-bot2%40tip-bot2.
