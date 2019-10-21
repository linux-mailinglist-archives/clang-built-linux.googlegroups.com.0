Return-Path: <clang-built-linux+bncBAABBB72XDWQKGQENDSRW4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-f63.google.com (mail-ed1-f63.google.com [209.85.208.63])
	by mail.lfdr.de (Postfix) with ESMTPS id C600BDF87E
	for <lists+clang-built-linux@lfdr.de>; Tue, 22 Oct 2019 01:19:35 +0200 (CEST)
Received: by mail-ed1-f63.google.com with SMTP id p55sf10024778edc.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 21 Oct 2019 16:19:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571699975; cv=pass;
        d=google.com; s=arc-20160816;
        b=CmVu1UCg4ds3cgbrXcLny6AtgLTpgkKVF7UvuhXIDPLLNqgxBohLGOp61Wb0TVH/28
         zZ4b7UBip0Z1T7JS1LsgY7MlAwsKOmHmjKyOk+8cwBEFrO69CTWbeu5fwOF3uWDVGL1F
         hF6j/juI+tNnx9wgeMzN1NDF5wF96AfUpv0eaH0gPpU42E5ESSQJuZdySXfli9jVFtWi
         UnDHe+eToHqEZuFoU92yKbgDrs1ASb/MzukSaGsGfTup2I/whsqY3MjOgG+YUmBn6nh5
         jwrPBbMiCucE6o8tDkDbJyvsT3xaGQm+1an8nG6u/L0eOnyK0MnKJr05N9cNpJ7ygKDe
         vV5g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:robot-unsubscribe:robot-id
         :message-id:mime-version:references:in-reply-to:cc:subject:to
         :reply-to:sender:from:date;
        bh=z+AyMcEpYDXrsxGNK5payb0kO65zPMfo8VuMNHRahY8=;
        b=mDR1l2K8LGVsWfjpVh77+xA9CGT0l9UR0jbxFJN+19Mt/mCKOurb5MZgA2dhyjMwQF
         AlHQ6bhTIoYWLODtzWrkSn9PRGDbEXrOpCrTFl7x6u4MIXjUmNMucqx2H8k3ULDCdYuK
         KUnImMh4/hahdHndvazyVOO4bOzDXjuTH3ZDo7OvbOUqimcJx3jiMqZXrjy1aYCHfzLb
         hmC+F3ljfqlansJUfPnNX1WSQDnrlpFrkbz0bbT3VCuPagKqoXG0MASl7ZGnt9UR4NPa
         x7XqVsxVf6NLfAKgHpcnGD1KFiN6vyZpSqnH4EdxBCD4KJpZoeRlPk78YlUeoMNWMJQd
         PGVg==
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
        bh=z+AyMcEpYDXrsxGNK5payb0kO65zPMfo8VuMNHRahY8=;
        b=c8HPYlFRGQPQjd5n7zIer5sxOo9d5GVcevGCnstNSIoodFHrxm5/iEjIZZqPflWzSO
         IlJdt6iBEnBN71EoOJJhHe2OVcXBZvzy3obThTT4ya+OJQi6KnRnvgP6Xx9usbkP5udS
         Ok+cNp14rXGqj3W+3Y8L0UDtXheM7SJTvFleEyQ8f/fFEn9AfhA5tanwQW7TtluokZw4
         EYa0SWobWLBoljEJvUtPziV/rxD0age9uvx2fwC9ID1aqERUaGJy4P4ngqBCFteU0Ni7
         BRPRvbaab0DPMF3zUCCIm1yMxYJeWytoqMuJrT9D+/WSCkHmWKpEDLL4z1agfdUYANYg
         v5MQ==
X-Gm-Message-State: APjAAAXmsIaKA46KCTBhbZSpiatlm6lf//DgDTgsODWlZk1k6qr6JWR/
	KeYOO1CC/7JAx+V2kyeIfFw=
X-Google-Smtp-Source: APXvYqytc2FRX8LRGZf00NLKUsGzu84ZyfdwhvR36KD/F95ScWS6CghehcQcF/nZyU1tQ9BPQNvTxg==
X-Received: by 2002:a17:906:2961:: with SMTP id x1mr24597808ejd.91.1571699975567;
        Mon, 21 Oct 2019 16:19:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:a3d7:: with SMTP id ca23ls3620334ejb.0.gmail; Mon,
 21 Oct 2019 16:19:34 -0700 (PDT)
X-Received: by 2002:a17:906:2d49:: with SMTP id e9mr24435485eji.240.1571699974861;
        Mon, 21 Oct 2019 16:19:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571699974; cv=none;
        d=google.com; s=arc-20160816;
        b=BYUwHQr8NXgpU0kOXP/m804T1juw+mxdEDX89oG6RkIVe1VpesRdIX8PDxwg2aK3ai
         dCkzkx9bGeVN8IMo3p/vbTLqkfvjA5geQyspIkzkmKkNioaAv3LWvXBEHRUrtnQwK4IK
         kZLFQICyGeVtqbPkmHhbd1wdKcQcFNGnU9wsClyggsmggTbboQNKoPgKqcWq66CVaYpc
         7mLhpRf4cjinZErQFtFtkQHLwC5wEnm6sad6Aa/tA6wOxYYIpm3JWExjIZzQGhs+Kr28
         qZj5pSYISQE//turJwrOv1bg9typLFR2adHQkcwg5aWvioCHLlHcTyVRaOmw/YVigSSb
         uldg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:precedence:robot-unsubscribe:robot-id
         :message-id:mime-version:references:in-reply-to:cc:subject:to
         :reply-to:sender:from:date;
        bh=WGxz3hFt2TIpoFGtmy+IF5efbNB2IsHA7IGjPi4quLw=;
        b=lVKksNJr42vnoWTn8FLv5IJPkossKoGpt3ov2zXyB6rRcoHMTuY8WoPgjdC+KI40ps
         6mBcKOzZiO2ZQ1M6xLiKJQQXCfcmklsQkGL9bKWBtXd0o/pkelhlcvDFJ5CsoScarySR
         VwinI+7OTiI7wrpTKclGXDbCfe1PYXmZeOoTZE61yFEh46rpPPw0EEROpru7l6xDhcht
         IyZ+7ZEBl4Xp3xEBvZ+8RNhnZvGjUaBfg5AYpz42COYcOs5MqLKcJyMC3NaJOZhpC5OI
         wJgzw7whceAPIY2CNTxiQp6VfI76OLuKfWweq8p0yv9wIcj6L4g5HL6bF70PSY17pUXK
         Lc8A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tip-bot2@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tip-bot2@linutronix.de
Received: from Galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id c31si681644edb.0.2019.10.21.16.19.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Mon, 21 Oct 2019 16:19:34 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of tip-bot2@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
Received: from [5.158.153.53] (helo=tip-bot2.lab.linutronix.de)
	by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
	(Exim 4.80)
	(envelope-from <tip-bot2@linutronix.de>)
	id 1iMgxS-0004DK-E6; Tue, 22 Oct 2019 01:19:27 +0200
Received: from [127.0.1.1] (localhost [IPv6:::1])
	by tip-bot2.lab.linutronix.de (Postfix) with ESMTP id 4C74D1C0086;
	Tue, 22 Oct 2019 01:19:16 +0200 (CEST)
Date: Mon, 21 Oct 2019 23:19:15 -0000
From: "tip-bot2 for Ian Rogers" <tip-bot2@linutronix.de>
Sender: tip-bot2@linutronix.de
Reply-to: linux-kernel@vger.kernel.org
To: linux-tip-commits@vger.kernel.org
Subject: [tip: perf/core] perf annotate: Don't pipe objdump output through
 'grep' command
Cc: Ian Rogers <irogers@google.com>,
 Arnaldo Carvalho de Melo <acme@redhat.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Jin Yao <yao.jin@linux.intel.com>, Jiri Olsa <jolsa@redhat.com>,
 Mark Rutland <mark.rutland@arm.com>, Namhyung Kim <namhyung@kernel.org>,
 Peter Zijlstra <peterz@infradead.org>, Song Liu <songliubraving@fb.com>,
 Stephane Eranian <eranian@google.com>, clang-built-linux@googlegroups.com,
 Ingo Molnar <mingo@kernel.org>, Borislav Petkov <bp@alien8.de>,
 linux-kernel@vger.kernel.org
In-Reply-To: <20191010183649.23768-4-irogers@google.com>
References: <20191010183649.23768-4-irogers@google.com>
MIME-Version: 1.0
Message-ID: <157169995595.29376.8511916224657103022.tip-bot2@tip-bot2>
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

Commit-ID:     7a675de428364a16038a8e6ed557daf0a009ce9c
Gitweb:        https://git.kernel.org/tip/7a675de428364a16038a8e6ed557daf0a009ce9c
Author:        Ian Rogers <irogers@google.com>
AuthorDate:    Thu, 10 Oct 2019 11:36:47 -07:00
Committer:     Arnaldo Carvalho de Melo <acme@redhat.com>
CommitterDate: Tue, 15 Oct 2019 08:39:42 -03:00

perf annotate: Don't pipe objdump output through 'grep' command

Simplify the objdump command by not piping the output of objdump through
grep. Instead, drop lines that match the grep pattern during the reading
loop.

Signed-off-by: Ian Rogers <irogers@google.com>
Tested-by: Arnaldo Carvalho de Melo <acme@redhat.com>
Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
Cc: Jin Yao <yao.jin@linux.intel.com>
Cc: Jiri Olsa <jolsa@redhat.com>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Namhyung Kim <namhyung@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Song Liu <songliubraving@fb.com>
Cc: Stephane Eranian <eranian@google.com>
Cc: clang-built-linux@googlegroups.com
Link: http://lore.kernel.org/lkml/20191010183649.23768-4-irogers@google.com
Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
---
 tools/perf/util/annotate.c |  9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/tools/perf/util/annotate.c b/tools/perf/util/annotate.c
index 9835666..0e052e2 100644
--- a/tools/perf/util/annotate.c
+++ b/tools/perf/util/annotate.c
@@ -1916,7 +1916,7 @@ static int symbol__disassemble(struct symbol *sym, struct annotate_args *args)
 	err = asprintf(&command,
 		 "%s %s%s --start-address=0x%016" PRIx64
 		 " --stop-address=0x%016" PRIx64
-		 " -l -d %s %s -C \"$1\" 2>/dev/null|grep -v \"$1:\"|expand",
+		 " -l -d %s %s -C \"$1\" 2>/dev/null|expand",
 		 opts->objdump_path ?: "objdump",
 		 opts->disassembler_style ? "-M " : "",
 		 opts->disassembler_style ?: "",
@@ -1962,9 +1962,16 @@ static int symbol__disassemble(struct symbol *sym, struct annotate_args *args)
 
 	nline = 0;
 	while (!feof(file)) {
+		const char *match;
+
 		if (getline(&line, &line_len, file) < 0 || !line)
 			break;
 
+		/* Skip lines containing "filename:" */
+		match = strstr(line, symfs_filename);
+		if (match && match[strlen(symfs_filename)] == ':')
+			continue;
+
 		/*
 		 * The source code line number (lineno) needs to be kept in
 		 * across calls to symbol__parse_objdump_line(), so that it

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/157169995595.29376.8511916224657103022.tip-bot2%40tip-bot2.
