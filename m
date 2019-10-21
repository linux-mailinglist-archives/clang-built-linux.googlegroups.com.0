Return-Path: <clang-built-linux+bncBAABBA72XDWQKGQEYBYLCCY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-f60.google.com (mail-lf1-f60.google.com [209.85.167.60])
	by mail.lfdr.de (Postfix) with ESMTPS id BC930DF87D
	for <lists+clang-built-linux@lfdr.de>; Tue, 22 Oct 2019 01:19:31 +0200 (CEST)
Received: by mail-lf1-f60.google.com with SMTP id v204sf1201891lfa.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 21 Oct 2019 16:19:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571699971; cv=pass;
        d=google.com; s=arc-20160816;
        b=qX2vpbqNSMg2+WMOLePK8AOAEwZ/qqSt1EGhYhwVA7pc8oyKId4qFh8fkTsqMOXF0y
         AkvieX4tC/F+jnZLAHMs+MatIzQlofjWbKfuMQVWw8MZkq/l0f14okosrgsUUOnpzC9I
         BvVEbESH0+xmQLOAg+PB4HP4ru2D7KYaVuqceBI6ZqXL5GNfGLqWSLE7QQbwKTYqvdpj
         S1paCoB0g3pUA8julZoYaDdMS1LHcWPUAK2U66h0gDgkJUFYe9mcCGY2rXcFYAQOCuPK
         C7rUulXMlG8/51kXC7d+6MqO0HG4S9Yn0+sEFV6xyqPXxoZdvUHaNmdLMBZnmJMwJjxx
         PGnQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:robot-unsubscribe:robot-id
         :message-id:mime-version:references:in-reply-to:cc:subject:to
         :reply-to:sender:from:date;
        bh=tT0vd3LXbvLOsgWPeGBUkoelPPEfCgktrih6ueiCUjw=;
        b=p0pWkb4vkwK87S/dSHgESX4S75bcdpcfNFri4Iz1rwnUB5guTdbgza20fvcfq64Lg7
         SpfhEvOBvvkroZTbBaQ/8PEi7AOQX2hJ6oVtCkDEf401E2OJKGJ5zpQvfN4b7lZUCwf5
         l0h/wu06N+gxWljTRCTkL/2mqRetoShPDG3IxsHvw4DjecFiTL/GqjyDzZPRmu7xNwHH
         a+Db4jTR+PtKUgwHb4wfp70ANn28xJMF2s9+0aMq6vMry31XEjcfNmmm6y8hdQjdhl17
         ktwzvg7NC5LhMzoZJzUDEss+CHKh5VVcrIWDtqFF9csaOHnLs14zY5hs2MBGX3Hckzlw
         lz+Q==
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
        bh=tT0vd3LXbvLOsgWPeGBUkoelPPEfCgktrih6ueiCUjw=;
        b=kwODHA7vDIrI2+um7YCiwyPR9ERQFylsAyHCqtsSNudwwkVkoXOs1SVBQa2/nV9MN2
         GgFHTCbZTZd7VMrJibEZ/Dz52TNMM17uWp4GYt01DXUkD6Ptg7aA1LRhbxXcOMxo/k6d
         iUkMvTmvYBdzhjSups7DL+xKCrsuCqtkHa6KSMdGeFZu8ZLWUY5L0Q/DcJE+utNQAs+w
         iYRLQiMpvWpbC8MdTvNpRDRW4phr+4Y8FGE8SggPBIQrQ02WcFa2fmcYD35eZ/D1tVze
         WT/Rm5lKUCGXe7UYg5D0IKbXFifgo3vBAg0IltK2bhN0g5cuTDS9zZ7yd/6QOIzIJEaJ
         nlkg==
X-Gm-Message-State: APjAAAVTEjdzGhZ8l/4dbgdIm7yOmETt6Db408r6Nr0bDbO2DUdLi051
	ZDA5x735+VJGZVeH7GJM8vA=
X-Google-Smtp-Source: APXvYqxXM0BJAQFm1FjDtBA++KgmCj5bhW2/SHT4bt55tTo/tbuZC+HnKyNnhsoyOuaflnfTRgQseg==
X-Received: by 2002:a05:651c:106b:: with SMTP id y11mr1020329ljm.123.1571699971346;
        Mon, 21 Oct 2019 16:19:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:4190:: with SMTP id z16ls1352661lfh.7.gmail; Mon, 21 Oct
 2019 16:19:30 -0700 (PDT)
X-Received: by 2002:a19:ee15:: with SMTP id g21mr8558858lfb.27.1571699970975;
        Mon, 21 Oct 2019 16:19:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571699970; cv=none;
        d=google.com; s=arc-20160816;
        b=eGdidOJd6VDlUGPTbFRh0v3D89SDlmerg6J9rdlSjFI6gNxTKkv94QsCzXZSTQ9vcP
         3FdJ9koLLQc4Lxk/+S3tWIh+Cy58z6HVnwfXrwqcox7JlJoWaRNAQFQRvafO7sOfGs8b
         dTGWWabti+eh/e9kuMZPXbHP8lFjgwuXSe2SSq7JIcDl36IqJRHPXzeRwEKK1i+HMX11
         7//cvbAKHsQfuvccFJBjjmCOU5XBTJukugoC6rWMadb5uS7AYyS5qQMztHSzURLfYbin
         tEtljtdokYBRdu2j3/ICt3AHoGpCOvLMxmJKEn9kU0CmeyMnZ/OKIgKV5ivQ9eQS2rqH
         f/aw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:precedence:robot-unsubscribe:robot-id
         :message-id:mime-version:references:in-reply-to:cc:subject:to
         :reply-to:sender:from:date;
        bh=kg4TsjFOigjVs1CkKGcCaPndcfJP0VEZjo1Heg3Q6to=;
        b=MjCIP1VCcageMnmFL8CoFGObuzGz0mOE8oIvDxCV0HaDVTKscWy2YBuACW1frx7sfU
         L7n+Srkx5HmAcJE9F9VkLhHbAbGF7xXjYkRarpujKkrD4xwDILlvA4aryfJM08M69F4l
         iqaFzA4Lh0uUz+3uQsqSwhwTUEJRYDZr6luq8gCFbR/tAabXdexLRvP4G3G2kZPFZ0Wo
         jbDuZxkI8NxgOlLQpn2fptMzurTDnIczamf/cbuHxSJCCadDsOMMGqNCu50wgIKHKsyP
         WipR/qn4leAdtFdJPhWZtsAPkYwA0IDKLvhQu6uJbavLtJAWQvwCCwDzkU7EVOCjFjs8
         zLKA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tip-bot2@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tip-bot2@linutronix.de
Received: from Galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id q25si883956ljg.5.2019.10.21.16.19.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Mon, 21 Oct 2019 16:19:30 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of tip-bot2@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
Received: from [5.158.153.53] (helo=tip-bot2.lab.linutronix.de)
	by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
	(Exim 4.80)
	(envelope-from <tip-bot2@linutronix.de>)
	id 1iMgxQ-0004F5-4S; Tue, 22 Oct 2019 01:19:24 +0200
Received: from [127.0.1.1] (localhost [IPv6:::1])
	by tip-bot2.lab.linutronix.de (Postfix) with ESMTP id 5340A1C04DD;
	Tue, 22 Oct 2019 01:19:17 +0200 (CEST)
Date: Mon, 21 Oct 2019 23:19:17 -0000
From: "tip-bot2 for Ian Rogers" <tip-bot2@linutronix.de>
Sender: tip-bot2@linutronix.de
Reply-to: linux-kernel@vger.kernel.org
To: linux-tip-commits@vger.kernel.org
Subject: [tip: perf/core] perf annotate: Avoid reallocation in objdump parsing
Cc: Ian Rogers <irogers@google.com>,
 Arnaldo Carvalho de Melo <acme@redhat.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Jin Yao <yao.jin@linux.intel.com>, Jiri Olsa <jolsa@redhat.com>,
 Mark Rutland <mark.rutland@arm.com>, Namhyung Kim <namhyung@kernel.org>,
 Peter Zijlstra <peterz@infradead.org>, Song Liu <songliubraving@fb.com>,
 Stephane Eranian <eranian@google.com>, clang-built-linux@googlegroups.com,
 Ingo Molnar <mingo@kernel.org>, Borislav Petkov <bp@alien8.de>,
 linux-kernel@vger.kernel.org
In-Reply-To: <20191010183649.23768-2-irogers@google.com>
References: <20191010183649.23768-2-irogers@google.com>
MIME-Version: 1.0
Message-ID: <157169995703.29376.923567640046514942.tip-bot2@tip-bot2>
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

Commit-ID:     353dcaa2f979a04f9397306ae3165ccf9fc731df
Gitweb:        https://git.kernel.org/tip/353dcaa2f979a04f9397306ae3165ccf9fc731df
Author:        Ian Rogers <irogers@google.com>
AuthorDate:    Thu, 10 Oct 2019 11:36:45 -07:00
Committer:     Arnaldo Carvalho de Melo <acme@redhat.com>
CommitterDate: Tue, 15 Oct 2019 08:36:22 -03:00

perf annotate: Avoid reallocation in objdump parsing

Objdump output is parsed using getline which allocates memory for the
read. Getline will realloc if the memory is too small, but currently the
line is always freed after the call.

Simplify parse_objdump_line by performing the reading in symbol__disassemble.

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
Link: http://lore.kernel.org/lkml/20191010183649.23768-2-irogers@google.com
Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
---
 tools/perf/util/annotate.c | 26 ++++++++++++++------------
 1 file changed, 14 insertions(+), 12 deletions(-)

diff --git a/tools/perf/util/annotate.c b/tools/perf/util/annotate.c
index 2b856b6..f9c39a7 100644
--- a/tools/perf/util/annotate.c
+++ b/tools/perf/util/annotate.c
@@ -1489,24 +1489,17 @@ annotation_line__print(struct annotation_line *al, struct symbol *sym, u64 start
  * means that it's not a disassembly line so should be treated differently.
  * The ops.raw part will be parsed further according to type of the instruction.
  */
-static int symbol__parse_objdump_line(struct symbol *sym, FILE *file,
+static int symbol__parse_objdump_line(struct symbol *sym,
 				      struct annotate_args *args,
-				      int *line_nr)
+				      char *line, int *line_nr)
 {
 	struct map *map = args->ms.map;
 	struct annotation *notes = symbol__annotation(sym);
 	struct disasm_line *dl;
-	char *line = NULL, *parsed_line, *tmp, *tmp2;
-	size_t line_len;
+	char *parsed_line, *tmp, *tmp2;
 	s64 line_ip, offset = -1;
 	regmatch_t match[2];
 
-	if (getline(&line, &line_len, file) < 0)
-		return -1;
-
-	if (!line)
-		return -1;
-
 	line_ip = -1;
 	parsed_line = strim(line);
 
@@ -1543,7 +1536,6 @@ static int symbol__parse_objdump_line(struct symbol *sym, FILE *file,
 	args->ms.sym  = sym;
 
 	dl = disasm_line__new(args);
-	free(line);
 	(*line_nr)++;
 
 	if (dl == NULL)
@@ -1876,6 +1868,8 @@ static int symbol__disassemble(struct symbol *sym, struct annotate_args *args)
 	int lineno = 0;
 	int nline;
 	pid_t pid;
+	char *line;
+	size_t line_len;
 	int err = dso__disassemble_filename(dso, symfs_filename, sizeof(symfs_filename));
 
 	if (err)
@@ -1964,18 +1958,26 @@ static int symbol__disassemble(struct symbol *sym, struct annotate_args *args)
 		goto out_free_command;
 	}
 
+	/* Storage for getline. */
+	line = NULL;
+	line_len = 0;
+
 	nline = 0;
 	while (!feof(file)) {
+		if (getline(&line, &line_len, file) < 0 || !line)
+			break;
+
 		/*
 		 * The source code line number (lineno) needs to be kept in
 		 * across calls to symbol__parse_objdump_line(), so that it
 		 * can associate it with the instructions till the next one.
 		 * See disasm_line__new() and struct disasm_line::line_nr.
 		 */
-		if (symbol__parse_objdump_line(sym, file, args, &lineno) < 0)
+		if (symbol__parse_objdump_line(sym, args, line, &lineno) < 0)
 			break;
 		nline++;
 	}
+	free(line);
 
 	if (nline == 0)
 		pr_err("No output from %s\n", command);

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/157169995703.29376.923567640046514942.tip-bot2%40tip-bot2.
