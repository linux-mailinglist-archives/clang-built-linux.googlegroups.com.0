Return-Path: <clang-built-linux+bncBDPPFIEASMFBBW7U7XWAKGQEK3IXATI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x738.google.com (mail-qk1-x738.google.com [IPv6:2607:f8b0:4864:20::738])
	by mail.lfdr.de (Postfix) with ESMTPS id DF79FD3082
	for <lists+clang-built-linux@lfdr.de>; Thu, 10 Oct 2019 20:37:16 +0200 (CEST)
Received: by mail-qk1-x738.google.com with SMTP id w7sf6316566qkf.10
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Oct 2019 11:37:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570732636; cv=pass;
        d=google.com; s=arc-20160816;
        b=Nq4P8YEkA1jVtpyTX+eKlyDn5KfSIS1GMA6Xpu4N7KZWVsmufMEAcUQfdwWID5BbGC
         At7ilOMIOmawG+qXBNvwmaPHhWyPTsDrdu81Vd1VwIksCPyxWx2r+mOFAlymVab3Nagu
         +HbFN8MCS/jQu7UVDh0N6sKfjqerHpGS2q8siWprpvV4AC5JLUZTYpfu9UvDV0/2GWdS
         5VnncwGZxVMn/3+P6EE93uyxbrOzn98uUs9GxsXkF6rlhfzVZrKbayvD7BwlAGGwUFAq
         j8nXezrh0BX0LZ3VFa1Du5dHiQIP6lbyac/sb8O1DbltkaqOraoixoctX4/yC0QjV9E3
         e4Xw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=Z5M0TRMiPJy4FOJLfDI/UbKS1tiuyf+wXyRvo4S1gdk=;
        b=XgD7BoMEpJ6ZK9JILeYOvGIcsFtoNW0yKdBKrg4orsz6biKRLZ20cCQsLg8xzhkDJk
         v67bmuIaBNvQMeO3b4MBNO78o9dFkng7NJ1Wir6bd8Pl1/Ax15hR7aZV7edaAZVFosCE
         +LDc96rkUPwM22k6PzIiQ7pqcmWHwGKa280oqsPf2NDKTVN13WOB3ZzUNQB/LsJ++d4y
         qulxgsO9U9nugUS7aMgGT93H7kdWf865rETyggU4yhX/Y3N4M/MaRg5+uhFjRcLfyy0n
         BaW3F32QpTo2HBj4sbLg+FlS9sLc4fCmJ4ezV5YlK+3W0HAbpv2EKv8+A6XbYrLE7Z21
         aieg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=vzfIzLpT;
       spf=pass (google.com: domain of 3wnqfxqckeb8nwtljwxlttlqj.htrhqfsl-gznqy-qnsz2lttlqjlwtzux.htr@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::c49 as permitted sender) smtp.mailfrom=3WnqfXQcKEb8nwtljwxlttlqj.htrhqfsl-gznqy-qnsz2lttlqjlwtzux.htr@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Z5M0TRMiPJy4FOJLfDI/UbKS1tiuyf+wXyRvo4S1gdk=;
        b=pbWV6ekPMzkupL5BdgT4BshLiXE73RHVzQvqrWALtcoxIcEaFhnR75LtMUgtYm3Uqp
         D3g5j0Rzfff5wMWIDQGpNDYxeMcWtCqBJeSgtWkMRFOLuBuveUA48bH5/w2msjyINFyS
         GorodfBYQlcRcN+cZMas3AEt3e5zn2BoUjC1coUBmqafJJsivD7mLYbHB+q/yi2yw37J
         LN+cK6J5pRjcPv5//tuaLIntGOhGtWtnJg0KaGd7OMhPGNhob/wGZD9Rz6qsAVjWlgu7
         5y3pS7w4e8VshplKI4QndOPiDU6cWrXdWM4bxAM+lglxhZCZ/MEw/uYwospIHR5N8/2K
         ct1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Z5M0TRMiPJy4FOJLfDI/UbKS1tiuyf+wXyRvo4S1gdk=;
        b=P1nqbPoVnmJuFdXDkPR1y7RDS09jl4aqZDwkVqygZONCO/iTNcmpqAaVSTMJ+pVg9Z
         FuMax5E17fPyrOPkFfBTdGOfXbSpjVjP4oUPxBIjGcLRyPGh/dbruyNs1LIPTup3j5Ar
         6ZUtheD9V/2+caC652gvQf1Qu2znziX2DcBnK7bexUaT1vwc6nbvW2cdSzgsJnFh1FFQ
         s7iaTN5iv6O48n1WWk6vxHYtv0U6ieFYKtsZD6HR9PA5kcNu9WRrhlOQmaVE9oTbF5iq
         Ln+4iRkYYwlIyTt5U7t/HkOEnQUKa/nSnGXo0v//mD4rdfHX/OZK/32C1/Gwv/4goCvf
         nUCQ==
X-Gm-Message-State: APjAAAU5aGJkMt+iFlfBo13VdOoiMWUFddcu4fK6xt3gryztkwtHnXQI
	k5yxAYmtOU2t5RJv8+qoGg8=
X-Google-Smtp-Source: APXvYqwRNOzTBp9n8vdDaxcb+tO767Ar1HKG5XIURGrkjiOJd8/WXqEeHzAlUWSKNfEg3MCLYXqmKw==
X-Received: by 2002:ad4:4dcc:: with SMTP id cw12mr11607528qvb.31.1570732635823;
        Thu, 10 Oct 2019 11:37:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:5493:: with SMTP id h19ls662090qtq.15.gmail; Thu, 10 Oct
 2019 11:37:15 -0700 (PDT)
X-Received: by 2002:aed:2a3b:: with SMTP id c56mr12718917qtd.343.1570732635508;
        Thu, 10 Oct 2019 11:37:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570732635; cv=none;
        d=google.com; s=arc-20160816;
        b=Ej9pk3/b8pTpWILX9AWlkgPDX48LxAzK4AMGmqvQQF5f44JVWdhfVor6ZcFwVKNEf4
         k5XdkiElotaUzLCLNZlAVcU8UEGFIvT0y2m1Qtezc9Fiai5MuPrA43yzftDu+++E6Al+
         4gTTc0YZTZTXqEbL+qoiV6ekC1JU/lnHkOSauV2zkE22IjGIEQXU9PJmQ6Csd8q3N5MR
         u5MjYd1dIzgZNUUEL9OZwq7YqDjnWkz+3b/c8RTHAB6y/LjOCJ66jbq3891vEiGUSWK2
         nk7FikNEOn7qw151Z5+NiQqD3tsz1/382h/dDFFYTBYH8R00VgaTtk2/ERkKayJ7Dnqh
         Fuhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=nit8ZJ4SE1V3fsaRZCnq2igRzfJerqe4wY5NN8wXmO4=;
        b=hBmVEjGxSAXm8i0af8fkMH1Z7tqXrmRutKfj0GD2wfmj28DdAO7R/GvVutXeWTP+l6
         s60jdUQtViDcB9ggasT6vKPyZ+H5uXHvF1fyuQPkVIPeFf+Z/A9bd2WwS4YVn4PUDJC8
         sMPQGZUSAXFLl2CX2RYyGCUKU5GD1EUOUGjTZSL7PEc6n9+YEY0cxiCWKadNnWK/9K/e
         xArAZUv+L10M8EXTOJFkK8fnSxX9erL7PeeTveTunGwXOmhggOiHIbSKWJrgGWqnxdSX
         MUC7HCw9QhvMdISsOUEU55ulWfCoTgLgfJAPrG9dbWka75eSs85TJNqPVdefnJQvkCk/
         4Kbw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=vzfIzLpT;
       spf=pass (google.com: domain of 3wnqfxqckeb8nwtljwxlttlqj.htrhqfsl-gznqy-qnsz2lttlqjlwtzux.htr@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::c49 as permitted sender) smtp.mailfrom=3WnqfXQcKEb8nwtljwxlttlqj.htrhqfsl-gznqy-qnsz2lttlqjlwtzux.htr@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yw1-xc49.google.com (mail-yw1-xc49.google.com. [2607:f8b0:4864:20::c49])
        by gmr-mx.google.com with ESMTPS id t186si151528qkf.3.2019.10.10.11.37.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Oct 2019 11:37:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3wnqfxqckeb8nwtljwxlttlqj.htrhqfsl-gznqy-qnsz2lttlqjlwtzux.htr@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::c49 as permitted sender) client-ip=2607:f8b0:4864:20::c49;
Received: by mail-yw1-xc49.google.com with SMTP id x198so5347729ywg.20
        for <clang-built-linux@googlegroups.com>; Thu, 10 Oct 2019 11:37:15 -0700 (PDT)
X-Received: by 2002:a25:230f:: with SMTP id j15mr7585251ybj.397.1570732634929;
 Thu, 10 Oct 2019 11:37:14 -0700 (PDT)
Date: Thu, 10 Oct 2019 11:36:48 -0700
In-Reply-To: <20191010183649.23768-1-irogers@google.com>
Message-Id: <20191010183649.23768-5-irogers@google.com>
Mime-Version: 1.0
References: <20191010183649.23768-1-irogers@google.com>
X-Mailer: git-send-email 2.23.0.581.g78d2f28ef7-goog
Subject: [PATCH 4/5] perf annotate: don't pipe objdump output through expand
From: "'Ian Rogers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, Jiri Olsa <jolsa@redhat.com>, 
	Namhyung Kim <namhyung@kernel.org>, Jin Yao <yao.jin@linux.intel.com>, 
	Song Liu <songliubraving@fb.com>, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com
Cc: Stephane Eranian <eranian@google.com>, Ian Rogers <irogers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: irogers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=vzfIzLpT;       spf=pass
 (google.com: domain of 3wnqfxqckeb8nwtljwxlttlqj.htrhqfsl-gznqy-qnsz2lttlqjlwtzux.htr@flex--irogers.bounces.google.com
 designates 2607:f8b0:4864:20::c49 as permitted sender) smtp.mailfrom=3WnqfXQcKEb8nwtljwxlttlqj.htrhqfsl-gznqy-qnsz2lttlqjlwtzux.htr@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Ian Rogers <irogers@google.com>
Reply-To: Ian Rogers <irogers@google.com>
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

Avoiding a pipe allows objdump command failures to surface.
Move to the caller of symbol__parse_objdump_line the call to strim
that removes leading and trailing tabs.
Add a new expand_tabs function that if a tab is present allocate a new
line in which tabs are expanded.
In symbol__parse_objdump_line the line had no leading spaces, so
simplify the line_ip processing.

Signed-off-by: Ian Rogers <irogers@google.com>
---
 tools/perf/util/annotate.c | 95 ++++++++++++++++++++++++++++++--------
 1 file changed, 76 insertions(+), 19 deletions(-)

diff --git a/tools/perf/util/annotate.c b/tools/perf/util/annotate.c
index 0a7a6f3c55f4..3d5b9236576a 100644
--- a/tools/perf/util/annotate.c
+++ b/tools/perf/util/annotate.c
@@ -1488,35 +1488,24 @@ annotation_line__print(struct annotation_line *al, struct symbol *sym, u64 start
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
 
@@ -1524,7 +1513,7 @@ static int symbol__parse_objdump_line(struct symbol *sym,
 		if ((u64)line_ip < start || (u64)line_ip >= end)
 			offset = -1;
 		else
-			parsed_line = tmp2 + 1;
+			parsed_line = tmp + 1;
 	}
 
 	args->offset  = offset;
@@ -1833,6 +1822,67 @@ static int symbol__disassemble_bpf(struct symbol *sym __maybe_unused,
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
@@ -1894,7 +1944,7 @@ static int symbol__disassemble(struct symbol *sym, struct annotate_args *args)
 	err = asprintf(&command,
 		 "%s %s%s --start-address=0x%016" PRIx64
 		 " --stop-address=0x%016" PRIx64
-		 " -l -d %s %s -C \"$1\" 2>/dev/null|expand",
+		 " -l -d %s %s -C \"$1\" 2>/dev/null",
 		 opts->objdump_path ?: "objdump",
 		 opts->disassembler_style ? "-M " : "",
 		 opts->disassembler_style ?: "",
@@ -1941,6 +1991,7 @@ static int symbol__disassemble(struct symbol *sym, struct annotate_args *args)
 	nline = 0;
 	while (!feof(file)) {
 		const char *match;
+		char *expanded_line;
 
 		if (getline(&line, &line_len, file) < 0 || !line)
 			break;
@@ -1950,13 +2001,19 @@ static int symbol__disassemble(struct symbol *sym, struct annotate_args *args)
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
2.23.0.581.g78d2f28ef7-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191010183649.23768-5-irogers%40google.com.
