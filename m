Return-Path: <clang-built-linux+bncBAABB7XZXDWQKGQEPUNWX6Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-f61.google.com (mail-wr1-f61.google.com [209.85.221.61])
	by mail.lfdr.de (Postfix) with ESMTPS id 954C2DF87A
	for <lists+clang-built-linux@lfdr.de>; Tue, 22 Oct 2019 01:19:26 +0200 (CEST)
Received: by mail-wr1-f61.google.com with SMTP id e25sf7542240wra.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 21 Oct 2019 16:19:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571699966; cv=pass;
        d=google.com; s=arc-20160816;
        b=bto25lShKalMeZUZAqOMuyeUuM7a272OkWW+q+/ymThKUN5aQsyicEW1raPsU+R5Y4
         BshietUaDSBU8uEI++DkWgTkZobeXGeb03kPcGgZm13tbWlS/sfoGxXNM0qsB3uMNUhD
         KvsIJNlFLiL6FJkihdpr61cLL8cUDKI0dNWD9cnVxa5/devEvl9Mpd7QFBXzGBoL3NcX
         ky4Rxz4Y2qdNYmvzRMS563UhEGKJDAiAnR1RXejTE/L+oeArLE14pUEYc+tlkydhwRoK
         CwXzh0nwvBHKH0G3S5h3cCnJwtplDco1/Pain3fWmT6Y0dWRo3AK660zAAEdXNJvs9TK
         1o6g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:robot-unsubscribe:robot-id
         :message-id:mime-version:references:in-reply-to:cc:subject:to
         :reply-to:sender:from:date;
        bh=ydbUlSVpU+JPEw1XC185hh0T5gdfVnT3LH7kXF312Dc=;
        b=W+c4f7sgY3AMsZXJKazBY60jv2R8mE2AXqMnPd/aFQWbLrrnnXqcdXI+qg/Qr6tGl9
         aZkDvhrM4JzQ8K5wQQHAUXvi0ljAGBJRT2KpRKPgnfluQ4dD1zwH0qVD6r/Y88uI0a+t
         3KiK0yhMG1GzWid3inkBvGBA5rmUl9/Y0LW9UucaqjAZnx+se8EEMaYAKOhr6zvs7XeZ
         qaWLQbiFcphx0Ecw2wfKtQpIfVHimsGvculRTvU6IZzDNNRSb7N0LOcQH3VYUGbpRk8h
         Kgp50fgXhYpU0SkAkah4vL5cx+/npM0SR/Cq/1/1P2do7dooz/YfemP68nvUtc7DI2Rt
         i/ew==
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
        bh=ydbUlSVpU+JPEw1XC185hh0T5gdfVnT3LH7kXF312Dc=;
        b=rWv187QoukasxGnN//pd1asO/+BxSgEvl5tsFN5r59/MPgx+Sq9r7iIUMgjS8veT6R
         w3lQrWnbqxPYAFLeVV+MCg7Qk7Z9CAi3rW8a3Vd+oCi3ETgk1n/wVRvBpmM/G7VEumNb
         v6LwqiGl8JTnvSOEY2XgZFUBrq3dAkc6bBDnfHwZfhYo8iL/HhEITSUkubp6jVXz3ZTI
         vYlrulwuwrZSZLzLSjD9rcDbBkWHIDmhJa19x/Onmvnuf9iJ3LSpBCHjxGV58w9FCqR/
         2dn3st8vL5cHqIfUr8x2aEqFAoAGgl8kORIWQaLsUxeCBuIkVutAxN9WQ9B5Uhamtg/I
         9jbw==
X-Gm-Message-State: APjAAAWKZ4KKW97lbgkMB4mY31mjGXguFm4ZBy4NCfHkNoMILW3g31ky
	1zGlUdKVWOmk+qXxbkbYKA0=
X-Google-Smtp-Source: APXvYqzfsT7120qGreqPLtUR0Mit4+Gs2RPrYlCPcDKnKgv7PlmLJvgwxcOEdmnWO+48RM+sXix39w==
X-Received: by 2002:a5d:630b:: with SMTP id i11mr522344wru.87.1571699966314;
        Mon, 21 Oct 2019 16:19:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:efce:: with SMTP id i14ls7728946wrp.10.gmail; Mon, 21
 Oct 2019 16:19:25 -0700 (PDT)
X-Received: by 2002:a5d:5707:: with SMTP id a7mr580591wrv.177.1571699965969;
        Mon, 21 Oct 2019 16:19:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571699965; cv=none;
        d=google.com; s=arc-20160816;
        b=kRkZuu1HEXJ/ezV28qj9FK5bRcJX9oDcyQ72T5VenjMGpPC8r8wMC2vndobFUpgJu6
         AWRxFJdTgpgryc1YOlkJx9cGMDmb8LdNf26CckP41udoFv7OqcZs3576en89tPz5Xb7Z
         JEUTRb43fPMa+Pkye1K94labFDVqvJg4dK7KNaoh+6tofShdSBHdTg2xkXoXiE7LIALv
         dskTG8VUi/ePpBqgMB0bPIekm/SsQbRNRUSEBJSOXVmifPsFGIFpOa7jOd7KB/DRSDOe
         N24zqzFE2Npt5plvcLhks+eO2QAClbeFq7fkrR/N61s75c3Fdj87LCS0fsS6Z4nDyRXk
         opnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:precedence:robot-unsubscribe:robot-id
         :message-id:mime-version:references:in-reply-to:cc:subject:to
         :reply-to:sender:from:date;
        bh=+/hobE41WwFsvpUc+ojHNYZS9Ojnk05dgynrpKihPEE=;
        b=T26CBwfyV8oOq82Sj0pQdEP/jFEnJqJTRg9RUuzyyd11TVMwXXF24IgYcTjQ79a1lF
         ENVR1MCwqnh2W0Peu64BY7VciTDY3McZQbDo4beP9/Um/a9ftzPhduLFQlkTK7RDTnxI
         9RzCRCIgJsHx91fs+qnOP6aLB/bD/19ZXq75YGOfyoT2NA7WOBqOgTi3yBPGa596c/l4
         YulTH4Bf1flxL766dqo08QBsXNVhoEESbQjgXs0C3jh7qxqXstspsUZjxILXjumKCnFx
         ItfhJ3sVRTbAei5pXuHTeXZncoam4AH6DqarK1D8bt7ZL7/kePT9BVTKyLLRPvjzwUtx
         aEpA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tip-bot2@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tip-bot2@linutronix.de
Received: from Galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id a14si465527wrm.1.2019.10.21.16.19.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Mon, 21 Oct 2019 16:19:25 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of tip-bot2@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
Received: from [5.158.153.53] (helo=tip-bot2.lab.linutronix.de)
	by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
	(Exim 4.80)
	(envelope-from <tip-bot2@linutronix.de>)
	id 1iMgxM-0004Cq-KF; Tue, 22 Oct 2019 01:19:20 +0200
Received: from [127.0.1.1] (localhost [IPv6:::1])
	by tip-bot2.lab.linutronix.de (Postfix) with ESMTP id 98B111C04D6;
	Tue, 22 Oct 2019 01:19:15 +0200 (CEST)
Date: Mon, 21 Oct 2019 23:19:15 -0000
From: "tip-bot2 for Ian Rogers" <tip-bot2@linutronix.de>
Sender: tip-bot2@linutronix.de
Reply-to: linux-kernel@vger.kernel.org
To: linux-tip-commits@vger.kernel.org
Subject: [tip: perf/core] perf annotate: Don't pipe objdump output through
 'expand' command
Cc: Ian Rogers <irogers@google.com>,
 Arnaldo Carvalho de Melo <acme@redhat.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Jin Yao <yao.jin@linux.intel.com>, Jiri Olsa <jolsa@redhat.com>,
 Mark Rutland <mark.rutland@arm.com>, Namhyung Kim <namhyung@kernel.org>,
 Peter Zijlstra <peterz@infradead.org>, Song Liu <songliubraving@fb.com>,
 Stephane Eranian <eranian@google.com>, clang-built-linux@googlegroups.com,
 Ingo Molnar <mingo@kernel.org>, Borislav Petkov <bp@alien8.de>,
 linux-kernel@vger.kernel.org
In-Reply-To: <20191010183649.23768-5-irogers@google.com>
References: <20191010183649.23768-5-irogers@google.com>
MIME-Version: 1.0
Message-ID: <157169995527.29376.14837671211016252895.tip-bot2@tip-bot2>
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

Commit-ID:     b34b45eef16d814a93a52f2e76db803bb38939a0
Gitweb:        https://git.kernel.org/tip/b34b45eef16d814a93a52f2e76db803bb38939a0
Author:        Ian Rogers <irogers@google.com>
AuthorDate:    Thu, 10 Oct 2019 11:36:48 -07:00
Committer:     Arnaldo Carvalho de Melo <acme@redhat.com>
CommitterDate: Tue, 15 Oct 2019 08:39:42 -03:00

perf annotate: Don't pipe objdump output through 'expand' command

Avoiding a pipe allows objdump command failures to surface.  Move to the
caller of symbol__parse_objdump_line the call to strim that removes
leading and trailing tabs.  Add a new expand_tabs function that if a tab
is present allocate a new line in which tabs are expanded.  In
symbol__parse_objdump_line the line had no leading spaces, so simplify
the line_ip processing.

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
Link: http://lore.kernel.org/lkml/20191010183649.23768-5-irogers@google.com
Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
---
 tools/perf/util/annotate.c | 95 +++++++++++++++++++++++++++++--------
 1 file changed, 76 insertions(+), 19 deletions(-)

diff --git a/tools/perf/util/annotate.c b/tools/perf/util/annotate.c
index 0e052e2..efc5bfe 100644
--- a/tools/perf/util/annotate.c
+++ b/tools/perf/util/annotate.c
@@ -1492,35 +1492,24 @@ annotation_line__print(struct annotation_line *al, struct symbol *sym, u64 start
  */
 static int symbol__parse_objdump_line(struct symbol *sym,
 				      struct annotate_args *args,
-				      char *line, int *line_nr)
+				      char *parsed_line, int *line_nr)
 {
 	struct map *map = args->ms.map;
 	struct annotation *notes = symbol__annotation(sym);
 	struct disasm_line *dl;
-	char *parsed_line, *tmp, *tmp2;
+	char *tmp;
 	s64 line_ip, offset = -1;
 	regmatch_t match[2];
 
-	line_ip = -1;
-	parsed_line = strim(line);
-
 	/* /filename:linenr ? Save line number and ignore. */
 	if (regexec(&file_lineno, parsed_line, 2, match, 0) == 0) {
 		*line_nr = atoi(parsed_line + match[1].rm_so);
 		return 0;
 	}
 
-	tmp = skip_spaces(parsed_line);
-	if (*tmp) {
-		/*
-		 * Parse hexa addresses followed by ':'
-		 */
-		line_ip = strtoull(tmp, &tmp2, 16);
-		if (*tmp2 != ':' || tmp == tmp2 || tmp2[1] == '\0')
-			line_ip = -1;
-	}
-
-	if (line_ip != -1) {
+	/* Process hex address followed by ':'. */
+	line_ip = strtoull(parsed_line, &tmp, 16);
+	if (parsed_line != tmp && tmp[0] == ':' && tmp[1] != '\0') {
 		u64 start = map__rip_2objdump(map, sym->start),
 		    end = map__rip_2objdump(map, sym->end);
 
@@ -1528,7 +1517,7 @@ static int symbol__parse_objdump_line(struct symbol *sym,
 		if ((u64)line_ip < start || (u64)line_ip >= end)
 			offset = -1;
 		else
-			parsed_line = tmp2 + 1;
+			parsed_line = tmp + 1;
 	}
 
 	args->offset  = offset;
@@ -1854,6 +1843,67 @@ static int symbol__disassemble_bpf(struct symbol *sym __maybe_unused,
 }
 #endif // defined(HAVE_LIBBFD_SUPPORT) && defined(HAVE_LIBBPF_SUPPORT)
 
+/*
+ * Possibly create a new version of line with tabs expanded. Returns the
+ * existing or new line, storage is updated if a new line is allocated. If
+ * allocation fails then NULL is returned.
+ */
+static char *expand_tabs(char *line, char **storage, size_t *storage_len)
+{
+	size_t i, src, dst, len, new_storage_len, num_tabs;
+	char *new_line;
+	size_t line_len = strlen(line);
+
+	for (num_tabs = 0, i = 0; i < line_len; i++)
+		if (line[i] == '\t')
+			num_tabs++;
+
+	if (num_tabs == 0)
+		return line;
+
+	/*
+	 * Space for the line and '\0', less the leading and trailing
+	 * spaces. Each tab may introduce 7 additional spaces.
+	 */
+	new_storage_len = line_len + 1 + (num_tabs * 7);
+
+	new_line = malloc(new_storage_len);
+	if (new_line == NULL) {
+		pr_err("Failure allocating memory for tab expansion\n");
+		return NULL;
+	}
+
+	/*
+	 * Copy regions starting at src and expand tabs. If there are two
+	 * adjacent tabs then 'src == i', the memcpy is of size 0 and the spaces
+	 * are inserted.
+	 */
+	for (i = 0, src = 0, dst = 0; i < line_len && num_tabs; i++) {
+		if (line[i] == '\t') {
+			len = i - src;
+			memcpy(&new_line[dst], &line[src], len);
+			dst += len;
+			new_line[dst++] = ' ';
+			while (dst % 8 != 0)
+				new_line[dst++] = ' ';
+			src = i + 1;
+			num_tabs--;
+		}
+	}
+
+	/* Expand the last region. */
+	len = line_len + 1 - src;
+	memcpy(&new_line[dst], &line[src], len);
+	dst += len;
+	new_line[dst] = '\0';
+
+	free(*storage);
+	*storage = new_line;
+	*storage_len = new_storage_len;
+	return new_line;
+
+}
+
 static int symbol__disassemble(struct symbol *sym, struct annotate_args *args)
 {
 	struct annotation_options *opts = args->options;
@@ -1916,7 +1966,7 @@ static int symbol__disassemble(struct symbol *sym, struct annotate_args *args)
 	err = asprintf(&command,
 		 "%s %s%s --start-address=0x%016" PRIx64
 		 " --stop-address=0x%016" PRIx64
-		 " -l -d %s %s -C \"$1\" 2>/dev/null|expand",
+		 " -l -d %s %s -C \"$1\" 2>/dev/null",
 		 opts->objdump_path ?: "objdump",
 		 opts->disassembler_style ? "-M " : "",
 		 opts->disassembler_style ?: "",
@@ -1963,6 +2013,7 @@ static int symbol__disassemble(struct symbol *sym, struct annotate_args *args)
 	nline = 0;
 	while (!feof(file)) {
 		const char *match;
+		char *expanded_line;
 
 		if (getline(&line, &line_len, file) < 0 || !line)
 			break;
@@ -1972,13 +2023,19 @@ static int symbol__disassemble(struct symbol *sym, struct annotate_args *args)
 		if (match && match[strlen(symfs_filename)] == ':')
 			continue;
 
+		expanded_line = strim(line);
+		expanded_line = expand_tabs(expanded_line, &line, &line_len);
+		if (!expanded_line)
+			break;
+
 		/*
 		 * The source code line number (lineno) needs to be kept in
 		 * across calls to symbol__parse_objdump_line(), so that it
 		 * can associate it with the instructions till the next one.
 		 * See disasm_line__new() and struct disasm_line::line_nr.
 		 */
-		if (symbol__parse_objdump_line(sym, args, line, &lineno) < 0)
+		if (symbol__parse_objdump_line(sym, args, expanded_line,
+					       &lineno) < 0)
 			break;
 		nline++;
 	}

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/157169995527.29376.14837671211016252895.tip-bot2%40tip-bot2.
