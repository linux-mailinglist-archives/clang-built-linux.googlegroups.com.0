Return-Path: <clang-built-linux+bncBDPPFIEASMFBBVHU7XWAKGQEWQBSW2I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x639.google.com (mail-pl1-x639.google.com [IPv6:2607:f8b0:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id E9030D307F
	for <lists+clang-built-linux@lfdr.de>; Thu, 10 Oct 2019 20:37:09 +0200 (CEST)
Received: by mail-pl1-x639.google.com with SMTP id q3sf4390751pll.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Oct 2019 11:37:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570732628; cv=pass;
        d=google.com; s=arc-20160816;
        b=gGSkDg5WV0fRjr6bRYCRNWmfkdzSsch/T39bZUWBVOpFHR1/OqwGyoCUetpoKXwrEn
         92t+tt0FxJnxzCteYd4aELYvjr8Qsc8YOec+TyhDAc3nOzf7xEeb/Dg527TTnzpY2AXS
         bk6ktvnKf5Y95rRbxlRDV1UNucxtrU5sDJeIAMXdfBJt70tuz8j+C+tYhsyCMvS0ACvE
         VsaXBOOhbF5HxR+vBRHtxpbSeRTPfUBlhFE/0BAFwj7zHpJF+lubY6wnGu5Og1WeVkCH
         YhVc6dt718lyLnvS21Pkgxa+n8gctipY9eQwFfJM5xoxryHtO6S4AZif5SL+6eY8dioL
         JaMQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=KUflSwmjSfRHWhFG3GK/zVvMLUjViddqUpUPM2lHRls=;
        b=H652Cub/1Rid9d4VThdNRPohE2dzSx1TonxN9jWaK+US0nv133ty848hZLPwUq0YZD
         KuhTKtd8ssm+26SPBxSdS49+BTREfOmoN6hBsoFrtVZ3wxlp6hNWilSH1zS8XDXGa3Fg
         qiBulgQv5rCDmtdKjNh8m5T1okdmWZ54JF1e+VGbXCNT7skwIAordKJPnfzjykTEhEGz
         DVGlenSBv5PzfYSxuLosleJqfen1wt9DOA+qj3RCPle/yerVgWZVViP6Zc1HB+bSbMtj
         HITWw0ZqLQfuIaCdhkrVcsC7w/iWU6kPJf2pi98dWJxfsmEZS1g+HM9eBfCOCW7saay/
         se9g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=YYf8do1f;
       spf=pass (google.com: domain of 3unqfxqckebcfoldbopdlldib.zljzixkd-yrfiq-ifkrudlldibdolrmp.zlj@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::e4a as permitted sender) smtp.mailfrom=3UnqfXQcKEbcfoldbopdlldib.ZljZiXkd-Yrfiq-ifkrudlldibdolrmp.Zlj@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KUflSwmjSfRHWhFG3GK/zVvMLUjViddqUpUPM2lHRls=;
        b=FKwPAw3t0h909Sm/lZYopgYt5UxTrZEtwbwPZldgEwysRWVoYFSb00iTOQLsPpvjiw
         zrm7qBrgNHW1XGARTCDWxTEC8He12fnG7BGeG1YHzPcVuyOOIgPqHwn/0Ots/YtUhZ7K
         TWDVkODxymPwkj7GQd+R5H2feyfrs81IpSzl2WmuphQT5H4yZoAoDicAYaAdmwYv/LvR
         4G0Qz8hg7MGFB/jgwwGyPDdMpICghTQWnLiEwptCWk2kpCPennSE7FdIQsDVLZX2ClJ8
         N9f7CunGh04g28gYOiIG+yxmVWoE3aMwKSvrrybIfE+yJ8rt8PfwAbPz+9NN5W68BdrO
         +bjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KUflSwmjSfRHWhFG3GK/zVvMLUjViddqUpUPM2lHRls=;
        b=eSXQ6CWM3qT0zmMrbeM1Qznmj199Vr/N6uyhYsTXULiusYUCVgNGxQZBkIuxe4zFp2
         mqKV6HHQDWfjvoH8L+TiC/6k9IDXdmF4khrJxn/PFkyKEybchtzfuL/6fNaIbIDzTj9I
         mkMAkWaftbeb7tcbvgEHRUjp+wWqFUsav97uxpPt+8ek4A8JZUfuFt8st/ZyOBXKszId
         tsK+E93gX2Q6bTUu16YU8fwZLNeAeeYR41Y4dNUxTchtjiH4EKZGtX3fsK4m1KJe8PvP
         m6bmQbSiqtSniiLsxJdzRNQ7SfyES7uemiI3wJiySpu+hOBaTALLeTXyOq99o8E+f0RT
         f/yQ==
X-Gm-Message-State: APjAAAXxAzaHQO5vVAHNIi74vFLxPSFRIcZrqJOoJEItwqxDPIZCEyHD
	fKKICkKGkkDzGxkf1h9tk94=
X-Google-Smtp-Source: APXvYqx15PiHSgCf5D6BFeXZ4k3ilMiThwGmS6hsST9Cphh6uRjsIK2bb3V2FSE2p6v+r8bR+a9I3A==
X-Received: by 2002:a17:90a:8089:: with SMTP id c9mr12688528pjn.69.1570732628438;
        Thu, 10 Oct 2019 11:37:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:7c90:: with SMTP id x138ls1417440pfc.4.gmail; Thu, 10
 Oct 2019 11:37:08 -0700 (PDT)
X-Received: by 2002:aa7:9519:: with SMTP id b25mr12155511pfp.104.1570732628133;
        Thu, 10 Oct 2019 11:37:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570732628; cv=none;
        d=google.com; s=arc-20160816;
        b=KawLmCOWuFN70Oaq+JFF6+CvmiXMGZE27ylmEn0HKTpXVp3dW23HUwWieutB7E/p9w
         sh58iBy7vbCeaMW4ZHIt+X3OolxFka8YH3qlBgrz8lVs9EFJmJbdjyNDSwOUnOtK037q
         Eu3EroVJ4I1HxHn+7UKrrp2j0Swxosp0V8ZT48L7F+vClKIgiid2Nmf1YogVVgy447yh
         CbWqtiK1rJEkhEfvmUoXpYB0AGZrkcT+l8ZO48kfZ83zyVLjzfts+lS0K3ID6HxGPvdt
         Iclvi0UH6ROJWM5FmWzdcpEE1g3usbOdk7v9f9TeM+LnmRqgKBnEa7UKLnbFozERtXkC
         aIvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=YaqmLQ2AmG5MkjwG1uKGGWEDcM1jBGJgalQWwTdiOWs=;
        b=M2Ois64Yn3fQRNnmDkN0uGL0WSjRgYtuhOJHH8wHjkcOFzp8tHKPpYgSql95GbSID/
         Vfm59kPRhD/ypp7q0oE4t2mhFMPQ7puiS9MzfgVd45wYZk+DIhh/GqK8nFWhpOtvDJs9
         okyxNvuJmYE9LtNzfPL/BRepm2z8unzS2ZP3Zx72lwOUfBLhqeLGmMQ3b9WW+6YkQWzc
         CAw7t1pdzgQkYfS8hff9y1qtaFfu2ZOmIO6gH8DqziHXbGC8QQQKcHywDnjx9DdTq7hm
         v+6LmPUICGjA3W9mSP+G/xOT7cusJWpIr9PImby90X3zKjCbZWhx+ZxB7HpabzSXfyWR
         Xa/g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=YYf8do1f;
       spf=pass (google.com: domain of 3unqfxqckebcfoldbopdlldib.zljzixkd-yrfiq-ifkrudlldibdolrmp.zlj@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::e4a as permitted sender) smtp.mailfrom=3UnqfXQcKEbcfoldbopdlldib.ZljZiXkd-Yrfiq-ifkrudlldibdolrmp.Zlj@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vs1-xe4a.google.com (mail-vs1-xe4a.google.com. [2607:f8b0:4864:20::e4a])
        by gmr-mx.google.com with ESMTPS id o23si584084pjt.2.2019.10.10.11.37.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Oct 2019 11:37:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3unqfxqckebcfoldbopdlldib.zljzixkd-yrfiq-ifkrudlldibdolrmp.zlj@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::e4a as permitted sender) client-ip=2607:f8b0:4864:20::e4a;
Received: by mail-vs1-xe4a.google.com with SMTP id j2so765401vso.0
        for <clang-built-linux@googlegroups.com>; Thu, 10 Oct 2019 11:37:08 -0700 (PDT)
X-Received: by 2002:a05:6122:2bb:: with SMTP id 27mr6331211vkq.66.1570732626969;
 Thu, 10 Oct 2019 11:37:06 -0700 (PDT)
Date: Thu, 10 Oct 2019 11:36:45 -0700
In-Reply-To: <20191010183649.23768-1-irogers@google.com>
Message-Id: <20191010183649.23768-2-irogers@google.com>
Mime-Version: 1.0
References: <20191010183649.23768-1-irogers@google.com>
X-Mailer: git-send-email 2.23.0.581.g78d2f28ef7-goog
Subject: [PATCH 1/5] perf annotate: avoid reallocation in objdump parsing
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
 header.i=@google.com header.s=20161025 header.b=YYf8do1f;       spf=pass
 (google.com: domain of 3unqfxqckebcfoldbopdlldib.zljzixkd-yrfiq-ifkrudlldibdolrmp.zlj@flex--irogers.bounces.google.com
 designates 2607:f8b0:4864:20::e4a as permitted sender) smtp.mailfrom=3UnqfXQcKEbcfoldbopdlldib.ZljZiXkd-Yrfiq-ifkrudlldibdolrmp.Zlj@flex--irogers.bounces.google.com;
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

Objdump output is parsed using getline which allocates memory for the
read. Getline will realloc if the memory is too small, but currently the
line is always freed after the call.
Simplify parse_objdump_line by performing the reading in symbol__disassemble.

Signed-off-by: Ian Rogers <irogers@google.com>
---
 tools/perf/util/annotate.c | 26 ++++++++++++++------------
 1 file changed, 14 insertions(+), 12 deletions(-)

diff --git a/tools/perf/util/annotate.c b/tools/perf/util/annotate.c
index e830eadfca2a..1487849a191a 100644
--- a/tools/perf/util/annotate.c
+++ b/tools/perf/util/annotate.c
@@ -1485,24 +1485,17 @@ annotation_line__print(struct annotation_line *al, struct symbol *sym, u64 start
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
 
@@ -1539,7 +1532,6 @@ static int symbol__parse_objdump_line(struct symbol *sym, FILE *file,
 	args->ms.sym  = sym;
 
 	dl = disasm_line__new(args);
-	free(line);
 	(*line_nr)++;
 
 	if (dl == NULL)
@@ -1855,6 +1847,8 @@ static int symbol__disassemble(struct symbol *sym, struct annotate_args *args)
 	int lineno = 0;
 	int nline;
 	pid_t pid;
+	char *line;
+	size_t line_len;
 	int err = dso__disassemble_filename(dso, symfs_filename, sizeof(symfs_filename));
 
 	if (err)
@@ -1943,18 +1937,26 @@ static int symbol__disassemble(struct symbol *sym, struct annotate_args *args)
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
2.23.0.581.g78d2f28ef7-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191010183649.23768-2-irogers%40google.com.
