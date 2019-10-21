Return-Path: <clang-built-linux+bncBDZ7JWMQ2EGBB6PJW3WQKGQEFA45PUI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23b.google.com (mail-oi1-x23b.google.com [IPv6:2607:f8b0:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 7849DDEDDA
	for <lists+clang-built-linux@lfdr.de>; Mon, 21 Oct 2019 15:39:07 +0200 (CEST)
Received: by mail-oi1-x23b.google.com with SMTP id b187sf7523218oii.23
        for <lists+clang-built-linux@lfdr.de>; Mon, 21 Oct 2019 06:39:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571665146; cv=pass;
        d=google.com; s=arc-20160816;
        b=MiY7XTwdw7S0SVsqher1eUbaMUy1RQOJrjuE4LdqIjVgMeEbLXS+mp+ZSi7MnVpQ6m
         o/PJu3Tjr80lztt1L/0uzSlABjmumQjKLjCXUNWH9c5yT4qTjaH+uZEkJMsn8z+2X1SI
         XvsBfAfnQDjfqw8DRZ5fsquYb/BUyMEzeK8PoOKJ4EcsNa4icY/ggAK1XMXFiJFchFaY
         xBPp/AlACHUCnJArWBAWmUXZRYbhPHCy+0NE9DUpOyiEN2sNSuUMu48maUIzwcoIJPXR
         FwrI/z0s/NTtqprGcJmFO2lHn69gnrWu6013p92fxFZM1+V/0RbbukDyyfIuh2PNvOxs
         kUtA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=pfwxtVSM4ajQ8MXAJKS1IA/KqLiAxWUMSDSnEXE2gaA=;
        b=SFTjEZHXKY/8fM65Lhx1egPLmxiy1GWqxwpvPj+E2pObWchXkfB3t3eD5GvLuiU2K3
         l/xQlOpokftiLofTI8vWFJqVX9vOrQPxvu3No4tG6CHhFs0XF+q6EqxyoxnjPd/vW4Vm
         LphHKJ69hMlF4kvj9URDJO6UfQrKbm9dust4ty/eFJFOKkCsLLdTvYVFetVpkDHnQI15
         bD69//bgi0FatKCJgOjvUPzwHixI/mpLheynOdMpXWKKDqWnm1EfzDNqD3A+YYPqnmYh
         hmkSOHPsKHXrYi5Uu96/6qZsgF4+NC+UNqnvrStZPxFpSswpDcHSbn3YHSxlMnsLcRi7
         Zg1A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=tzTuRzFq;
       spf=pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=acme@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pfwxtVSM4ajQ8MXAJKS1IA/KqLiAxWUMSDSnEXE2gaA=;
        b=ehSCWIh2IhsFb7zpsRhhzvXqx0druewfUJGePP1Tg37LHPLVYUE4d8Iz+rhAoDqTB7
         5JehbsKOfWxnejcepIbnCC0JHV11esYdysyivcd8yYR8RS482vWlvm/pFgY+iymSlJUt
         36rpz68YouA3dxGFDZqoipImEdpAsEjUCbhoLDsR90znE6IU7HyEMHTNPaZxwmhJ41h8
         Audd5jP4Bb4jD0pYNgcUDLYxLEGQd7FUkq5SuvyaypQm+NqjW7JSEJHb/Cy0efr3tYON
         uOEKfoOrXwoEo9sehfhl/Lo4hY6WqUibWWO29MNxD2E04yGErC/n3EwmLGHY0U0pTNWj
         wEag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pfwxtVSM4ajQ8MXAJKS1IA/KqLiAxWUMSDSnEXE2gaA=;
        b=hNyKLi7Ch/BW97wvCzcSy5FPBsC0GYRlPPV+zSHxpBF9OsNWUKqFgWSCX0p3kTLcRX
         rYSy8KK5PKKG+LG3IhKPuK2LSi4RnDL803PP46gCRT4/Bxen5VcOtKXhY06S/Eydz3eb
         F1W7SPyfLtcvFxnWX/N23ZFYTvOQ1C7zaJ5WpC85DkF4SPaz5Bg/sKfnqqIYxEcov9xG
         yNBQq9qINdmbQ/QNaKOyQnes4kuz5jSBvO7fNIIh0LbvbvTNMWPLx4R11Zw81g3v7Gqg
         lLr8pcJ2tH//SCbQN4dYkNdJKdy5n9NFgCl3aGEUy1OQ2wQZZaL5ixV3/GYdxIE+8RFC
         LgeA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUzx6O+hHtPzuAm3nNl0JlmUyaj++7jnIO22QF1XdHCG0vG//vb
	u6spusfkCBodFhNSDeC6k4I=
X-Google-Smtp-Source: APXvYqw+aaZOE/sfvvYvHo/V3hGN02gi5M6dd76BYu+k8dDCT8YItWT3DPKqd85vN1OhGlu4wct85Q==
X-Received: by 2002:aca:c5c6:: with SMTP id v189mr18373623oif.169.1571665146039;
        Mon, 21 Oct 2019 06:39:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:1291:: with SMTP id g17ls2239138otg.11.gmail; Mon, 21
 Oct 2019 06:39:05 -0700 (PDT)
X-Received: by 2002:a9d:6452:: with SMTP id m18mr18878087otl.325.1571665145545;
        Mon, 21 Oct 2019 06:39:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571665145; cv=none;
        d=google.com; s=arc-20160816;
        b=xyUE+26nPYv43tMApUROs0zNRyXvj6jaGawQODMAmLDBIGcJ0Y8UdQJ4BKJc2v33CB
         fcXgfbP2LJKsbDsgzdBrDNWTAyyjMzx9lQq8uu5wwl3stJAlHPKnhMO/gSo7hPrNsNVx
         k0x3tW8sSdxQuttgkASfd814pR/XEKbW4Nce9e1c5Wk7rc1ewjbo4mq2HrVIHj60fu3g
         iFRSf2mkb/E/3BpG7DL13ggF+PP7wE8NSyF96h0Nn5sZl7/mo3d75qCdkFijwCoJ4eee
         eGdIWKqU6gM1AeQaSE9TQCh/WaGcAdo6hFwZQFs9CdA6fk6naKAzM8k3/7RlPmCNXoVA
         2E4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=cnNRt4F0HlNcKrKqbKR2lle9r3FScrFlGbfd7Vxi+Qc=;
        b=hlOJibGXQpdFPjP6SPFzTENqcHJC+/BGgtU5BK9+6MGOFUCzC/pALsOGLNsS6tijrE
         Xu4NNsikK/KYtM4MZLf7WLUW/u/z5iaMSz46/H7RBKCHTYjuMU83z7WBZASPPTM0Y/xo
         Ct7ddCnzAumnmeZESzj266dzw3WOTORcAh6u+K3Umzyfk0TQaJgjibPJgukuTNXf83MR
         k+pynzmHE6H1xNugVSq8AlF2vgafa7TOHp/y7P1p56VDJYCiGRYF3PBOBfHq7CI2bzFc
         3xnUA2UWeHUxZOkFBYswe9q/G38uv1Cf+iaKqHzoiImYzynYK65ytI5PnlP6J7ixK1Ig
         Czyw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=tzTuRzFq;
       spf=pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=acme@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id n10si803880otf.2.2019.10.21.06.39.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 21 Oct 2019 06:39:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from quaco.ghostprotocols.net (unknown [179.97.35.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 4918F21783;
	Mon, 21 Oct 2019 13:39:01 +0000 (UTC)
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
Subject: [PATCH 07/57] perf annotate: Avoid reallocation in objdump parsing
Date: Mon, 21 Oct 2019 10:37:44 -0300
Message-Id: <20191021133834.25998-8-acme@kernel.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191021133834.25998-1-acme@kernel.org>
References: <20191021133834.25998-1-acme@kernel.org>
MIME-Version: 1.0
X-Original-Sender: acme@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=tzTuRzFq;       spf=pass
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
index 2b856b6b46f6..f9c39a742418 100644
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
2.21.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191021133834.25998-8-acme%40kernel.org.
