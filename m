Return-Path: <clang-built-linux+bncBDZ7JWMQ2EGBBBPKW3WQKGQEV4FMBCA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x738.google.com (mail-qk1-x738.google.com [IPv6:2607:f8b0:4864:20::738])
	by mail.lfdr.de (Postfix) with ESMTPS id C22E5DEDDD
	for <lists+clang-built-linux@lfdr.de>; Mon, 21 Oct 2019 15:39:18 +0200 (CEST)
Received: by mail-qk1-x738.google.com with SMTP id m189sf8908797qkc.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 21 Oct 2019 06:39:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571665157; cv=pass;
        d=google.com; s=arc-20160816;
        b=quOL7vCKMtHOC39t/giYDpx0exLYeedzlzOVBixeBNHdkfKFsShuYX8Xc0VaJ1VKyZ
         FPslk15XWw9igSqcz7J3E+k2H1qTFTaTptVihQqcYr4vq5NTaxkvp2DWZ25ThdlzsF/q
         Rt+ibAXSncy/ovjLM9H2UjecejVohYXYwS6H1Pmb+vuPCHE3YOxO1LcFpVcZH6GpyVHF
         tgN0k3Wh7TfXm6OLj4F4Ks6tfxWZrLmSdyp+qYjPzYEeuIGouSl4eMpB8n/bTnbAL/IZ
         P0KgWgvXaIa+oZ70ujYE3i4jnawCwajmm06F6BYNeeKbSXkVvFBixYW1EqiBAALAQJMQ
         6opw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=i6mNc2yA0dlUyaDP3F8pVpUSozafEjaA5R54iiTakTY=;
        b=GwFBlzu1Po+N2IB+jTG2GBLXjgWOFFaXNsEBKNjjdmFd+i+qZKaVmlNFW+Rl4NJ/De
         APNoXKZnGm7BGTKczW1rCLyfsMFritomleEO5Or6O14onp/jAwAV2ueKCQnuHnZadazV
         wFAy8MCzQJfpigK3r1WZ5GDF/KxmfCQ8SBl1LT8ODD2g1NvbyymCw/vL71PAFyN4pwv1
         lkUBR7R8J6HWVCMMd1nowt6gqFw9YlTLg1hoSkZ27HaVv1I9GkEXrChVWYkB+9Asnwbe
         56ZPweVQq4kEEKQ+uZv7mbUGPvge3P+8LiGemYlBRoY4g6LclpxjGOHmKf7AZh9wu5tz
         6EmA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=U1YADSV0;
       spf=pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=acme@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=i6mNc2yA0dlUyaDP3F8pVpUSozafEjaA5R54iiTakTY=;
        b=te+WTrKXGN5IywdsLemBNW6VXVuY5Y95Q95sdVq36ZA63MwIny24vsiG5UAw6q6rgC
         HKQaIAWfYK2Vncy7AKSnCH5suceUDdfrpggwm+vjHMev4F/hTfNZ/DCsvTSRpKn4kEoP
         eVycoNUBVOLHzPxGbNbr031YTvVY8mMPvytRNqjEeZxZ7G7Gj05GzDO4I5IHn15iwx8m
         tEWGxYfxVZnXjxXTqJFALKlvni752Owz4ksNH0L37CZ21GKLMjyjGuyvDeBpkK3ZvXay
         pPYamYx8LkQIABgnX3Pl0gr1hhfHxMHWaucUS6tRvRB83o+KFtVYt9e2s+IGSV1tQptF
         eK6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=i6mNc2yA0dlUyaDP3F8pVpUSozafEjaA5R54iiTakTY=;
        b=RkfvKS5ojEsQU+nPulNcDU+9LmDOTMR/W4aEOhATxkHjlnIgSXublUBxR3p8AXsx4J
         dfJI4wQ952G5hHSlphzDs/iXDg9FpwuFJ7lvcaE5hXIBfu7cpj/FxconAOzxrqNiU4Y2
         wcwupDe5+qHRNeLRKqos9xDjn5MQx12cYfKxWPo8wa+49i2MhABcl7MLf413p0opoRRi
         GcMPFTWxrRg4y8tFXlagng6tY4qkRObRGo0rxNTeHefD3ki+H6Vgwb19qlT1WZkcls/t
         C9XyGUQkf8OcliLttnwycgkiG+W0xGLp6yBFLvM+4VFnl/xlCv20X+5kZ3AEnP60LM8B
         PAFQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUhbZYayj8eiApybmiSGpoFyrVArsT/gb7VaCbNmjmbc2lHOAo7
	kilbU7F5uZBfyYD8VlHgZz8=
X-Google-Smtp-Source: APXvYqyi15ozpU8pUfjHUmuxFPhM7xkjrSviJJIyXuTU7iTjutJ1HCGo5OiAclJol9Vf4Y42HJTjFw==
X-Received: by 2002:ac8:4795:: with SMTP id k21mr9065664qtq.213.1571665157575;
        Mon, 21 Oct 2019 06:39:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:2d43:: with SMTP id o3ls1271243qta.12.gmail; Mon, 21 Oct
 2019 06:39:17 -0700 (PDT)
X-Received: by 2002:ac8:2fda:: with SMTP id m26mr6984563qta.374.1571665157231;
        Mon, 21 Oct 2019 06:39:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571665157; cv=none;
        d=google.com; s=arc-20160816;
        b=COffCUhp8kOMjUjbgZT4kZCZz4nHgckRR7ZNfSgNwS0G2sXD3INgwGz6KjtTmKeqGW
         fHBYpUjlXEYv55eyGbqjQd+1KUa5zVNGS6/VmIXO63NeeyvR9HW7q8r1fMNXMg56q0+Q
         AMo29mvcU2XvkFDNHqOVLlynOPFEAwQNfnXQ0XErNRdw94BNnwNwZ4lRcPjb7sPdV7U/
         Lmb2zaxOpBRgv2VzJLT/BdSPd4SSo/p2J+66YXc3tISKn88+VmxgosMvEGuV6M++JXyc
         jVkbIoFRrOT81bPS0zkAWENzwJGcBj9hbVa3NBpZvALUjISKIY+61GGNERBxANOrLpKP
         krjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=u4KZxGOnTZoXZWPeiguojMPE8aaeoA8ewwveBFR+asw=;
        b=Dx24G8SHnoHlraWCIe+tM5zwveNFpOas1a6K68E0gZ2wbBcXaGnLVtgZ7Nl/beQMDP
         Z79R+oxDaJstBwRdJU+gjAQ3h+RvkX8XN6DkSjqSvr8xY9poDLDdM7Z4CVEKPNY47kbx
         rRs3jU/LY0X9n26Mb2bNKHucVLYAfLZpg+pOqz37/zUYFvSCdgxsTJvKTPd5wmpssQez
         B7saBdJu5ozShAmXt0IVNWY4MuVzKpJ78dAdMLV3x3pKItGxjA1dM/QC91w1jZtzQSAs
         xr+V0lvidloCAFEsdkuSzOuWTjwSuIGZog9ie57kSkcn0j+wht4470Ouk8XdpJz0WIld
         y1kg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=U1YADSV0;
       spf=pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=acme@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k25si508786qkj.5.2019.10.21.06.39.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 21 Oct 2019 06:39:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from quaco.ghostprotocols.net (unknown [179.97.35.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id E40FF21929;
	Mon, 21 Oct 2019 13:39:12 +0000 (UTC)
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Ingo Molnar <mingo@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>
Cc: Jiri Olsa <jolsa@kernel.org>,
	Namhyung Kim <namhyung@kernel.org>,
	Clark Williams <williams@redhat.com>,
	linux-kernel@vger.kernel.org,
	linux-perf-users@vger.kernel.org,
	Ian Rogers <irogers@google.com>,
	Arnaldo Carvalho de Melo <acme@redhat.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Jin Yao <yao.jin@linux.intel.com>,
	Jiri Olsa <jolsa@redhat.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Song Liu <songliubraving@fb.com>,
	Stephane Eranian <eranian@google.com>,
	clang-built-linux@googlegroups.com
Subject: [PATCH 10/57] perf annotate: Don't pipe objdump output through 'expand' command
Date: Mon, 21 Oct 2019 10:37:47 -0300
Message-Id: <20191021133834.25998-11-acme@kernel.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191021133834.25998-1-acme@kernel.org>
References: <20191021133834.25998-1-acme@kernel.org>
MIME-Version: 1.0
X-Original-Sender: acme@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=U1YADSV0;       spf=pass
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
 tools/perf/util/annotate.c | 95 ++++++++++++++++++++++++++++++--------
 1 file changed, 76 insertions(+), 19 deletions(-)

diff --git a/tools/perf/util/annotate.c b/tools/perf/util/annotate.c
index 0e052e253835..efc5bfef790a 100644
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
2.21.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191021133834.25998-11-acme%40kernel.org.
