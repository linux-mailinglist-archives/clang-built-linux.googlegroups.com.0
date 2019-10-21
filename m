Return-Path: <clang-built-linux+bncBDZ7JWMQ2EGBB7PJW3WQKGQEFGAVHGY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb39.google.com (mail-yb1-xb39.google.com [IPv6:2607:f8b0:4864:20::b39])
	by mail.lfdr.de (Postfix) with ESMTPS id 3673CDEDDB
	for <lists+clang-built-linux@lfdr.de>; Mon, 21 Oct 2019 15:39:11 +0200 (CEST)
Received: by mail-yb1-xb39.google.com with SMTP id h188sf10678289yba.10
        for <lists+clang-built-linux@lfdr.de>; Mon, 21 Oct 2019 06:39:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571665150; cv=pass;
        d=google.com; s=arc-20160816;
        b=rYoVxRJJcia3iYDZrBVJSYGOv7wkDUOAdBtGssQLaWePbj4hnTiQ49ifQ9xcKt1Xyj
         0MXjjVas8f/uvvgufofEMP+XW79jibigIPeGYsJrFLfcWv1sh/Jj920yTREzc/6T98kU
         v8CooxiQm3oQLGJqZkbsSUQVdAwbOOzGEXRzqsLkYtDQ2DLoeXZVtnnlCDYQufT0FbD+
         GEmqwNSU2seBT60Aq8LfxBSr8PuNo+CScf6jLnsdIAdnpwx0Fsv1BWPv+lC2pvWovoIu
         0YPvz5yCAQRqwgM/tmI6fo2EYKcosTWpE+pLyKEv9r+TQWuUdRUEfuUTiv3GhL8QMFAJ
         T/sg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=hv+EJp8WSczr4o5dwoaWIAIeDzt04aRDyGhLG7GQj64=;
        b=fqqQwPFp4xJ/7CLWGVB4/0AxIvtW+OD6A+zmTeAcYvu8ILe/g1gw9nEei0GPqcomnQ
         +acLKlNcHvsESVfBEhh9RHY+/o+134tfE1clYYLzWqxI7cBP9KDvoplEIvqVxsJAuWPy
         GcYbwFjuC741Io1irWD4Qr2fmBmyNcsHD5RsFG3/R3/N264g+m7VE/+2/M44Kk7DgGg5
         FbLkMCeXABO/Jf+b1JNqijFZeMo1HYp0a40frRtjDelyzAhu95aAhntk1CEpd60NrkA6
         C0nX5Pf4DKKWwNwlwnmYmVEFtOowBRBGjuq1U6SwSnm/DWbJocw93G/4VZW/AshGcDix
         uCTA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=iHqP3yc3;
       spf=pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=acme@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hv+EJp8WSczr4o5dwoaWIAIeDzt04aRDyGhLG7GQj64=;
        b=rLmjSdrvoVTTnTl5zAcN20YwY7EV9mTgdODEjibBTzmOkx3UppEVaV397rxcdQk1qb
         +zpjep0izFM3ggAkyahY6j6slPJa+seUY3eYmk8WKYfIjDoDSaqdM7yt9iZV3yG0jnZa
         cmZ0/Yj7PIvKIb6FZwb8W/gZ7P4psxNWJHBwLgT0WdTv7iYKthvzPfLPXKIWaJzAcpOz
         A4fx3tB78/zsc9B8iRV+nyu2Wc/JBzeLX4aJLTHuKU8GH/mPQ7knbwFbi1+XufjTK153
         o456l1IraW/DFB0MCzwwf49ATrYndC8m5hji0ScyrKfYG8wao4anLec8W7xib54N0byn
         4U7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hv+EJp8WSczr4o5dwoaWIAIeDzt04aRDyGhLG7GQj64=;
        b=ZH+ugtToKqjekT6PS7VUP54pZ5j4kpzmXMF2foHortQeUhj86Y2zPC/DlsTZzTC9/o
         AMcsSGOrOMeR4vO8DISXBwESdKMAIdDYzUXMxtZ64+Lih36hqm4ysWotyAGB68iuNlTP
         42u1UYoh2dWty02xO86t/LqJEWt8Nt2KNeVTPsnBb9d2DJW1Dq6gjqYC19ywsLfPoTpf
         o3Y03XB9eWRdMiGR+jxip5kpipTTXbisDVFpPM0yPiknEzsmeLrY75WvQsUeJItjbBzm
         +jdAnbWEMO38mFGamc+uRO8cAd6Y0IyAlWEe8QQNeMHfDqoQzsPQ9131VKLhpsQd+EMR
         Fx2A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXeX85R2pXnKvX4SxTwZe3LQORm8uQISC9yEI1AbofX+g04mIg+
	vTDeKDCBo5GYXai2Yxyzhjc=
X-Google-Smtp-Source: APXvYqzz0wqVVCjM3HphMv5INQit4BKDZ5ryyH4czYSBvGtqB967Vopn0Rc8JdclgfQl5eiRM4ENYA==
X-Received: by 2002:a25:3854:: with SMTP id f81mr15415429yba.267.1571665149996;
        Mon, 21 Oct 2019 06:39:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:3a06:: with SMTP id h6ls1987229yba.6.gmail; Mon, 21 Oct
 2019 06:39:09 -0700 (PDT)
X-Received: by 2002:a25:9b86:: with SMTP id v6mr7848222ybo.33.1571665149580;
        Mon, 21 Oct 2019 06:39:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571665149; cv=none;
        d=google.com; s=arc-20160816;
        b=PTfiyfK2ckEUWSEsLarFoKGTLSifC9wipi2LFISFcxlsd+ZV6zJjSZAsY2VhCDoVTC
         m25pRrJYWbwsUMbVv4uwSUINnkhuV3lKJTuILYpMY7eQMXGtuj0Wh7dsCd2V8wr0jB1Y
         id2Yul7vYZxU1691KOsEeSLtuyjdWgCex0uPKWzIDixAoDHwPFGMPCNs/RUizRoyX+Cz
         ycNxJJ0Su0+1tkg0yo+5a+XeSVrEBoZ1+o4GPtpumKmBYsRwjoQHlIrhBwyhAVA2fjSk
         tCTCEqMoPV6Z7mriRIzSyKl2u7Y4ks+rQeSvocBOpNoofv4TGr5bC8h61It2ME3mI7SS
         BmlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=IKmArBYqxrVJoEj2jMfU48vZ+K2Raw0udiz9vTIohls=;
        b=eY/EEp+UiO6rHVpcRmjOSz1ILI5pQuLeyGn8UzmtDYfmAxnsH0iLXlquiHxcY3gcg+
         GOlq5LM2UF6QFIwBups1b3x9Kj5+iDVFY7AhchOX+ySo+b3Tare5mvdFDgdvN+Rx+4jT
         AhGN+Mb6+TOSBqYapo28i5Qd+Wc07eWszYDLR8tiN+JGseT+uWClBP4Nagg92CixGryp
         0W68RQu1xHDtQGEecxpJvm2TO8pt4iapADT29/vfAd1/+wVQEgjJ/spv6CIUezfUCSaj
         oVKLdZUQz4mZ0K8p5AjJGefs4kKNZk8JW7a3bH3tPL9QIpQyeAcSsb0qvuJ3v04jqSNN
         BzAw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=iHqP3yc3;
       spf=pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=acme@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id u8si881534ybc.2.2019.10.21.06.39.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 21 Oct 2019 06:39:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from quaco.ghostprotocols.net (unknown [179.97.35.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 2AE70214B2;
	Mon, 21 Oct 2019 13:39:04 +0000 (UTC)
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
Subject: [PATCH 08/57] perf annotate: Use libsubcmd's run-command.h to fork objdump
Date: Mon, 21 Oct 2019 10:37:45 -0300
Message-Id: <20191021133834.25998-9-acme@kernel.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191021133834.25998-1-acme@kernel.org>
References: <20191021133834.25998-1-acme@kernel.org>
MIME-Version: 1.0
X-Original-Sender: acme@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=iHqP3yc3;       spf=pass
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

Reduce duplicated logic by using the subcmd library. Ensure when errors
occur they are reported to the caller. Before this patch, if no lines
are read the error status is 0.

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
Link: http://lore.kernel.org/lkml/20191010183649.23768-3-irogers@google.com
Link: http://lore.kernel.org/lkml/20191015003418.62563-1-irogers@google.com
[ merged follow up fix for NULL termination as in the 2nd link above ]
Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
---
 tools/perf/util/annotate.c | 72 ++++++++++++++++++++------------------
 1 file changed, 37 insertions(+), 35 deletions(-)

diff --git a/tools/perf/util/annotate.c b/tools/perf/util/annotate.c
index f9c39a742418..9835666db5a7 100644
--- a/tools/perf/util/annotate.c
+++ b/tools/perf/util/annotate.c
@@ -43,6 +43,7 @@
 #include <linux/string.h>
 #include <bpf/libbpf.h>
 #include <subcmd/parse-options.h>
+#include <subcmd/run-command.h>
 
 /* FIXME: For the HE_COLORSET */
 #include "ui/browser.h"
@@ -1864,12 +1865,19 @@ static int symbol__disassemble(struct symbol *sym, struct annotate_args *args)
 	struct kcore_extract kce;
 	bool delete_extract = false;
 	bool decomp = false;
-	int stdout_fd[2];
 	int lineno = 0;
 	int nline;
-	pid_t pid;
 	char *line;
 	size_t line_len;
+	const char *objdump_argv[] = {
+		"/bin/sh",
+		"-c",
+		NULL, /* Will be the objdump command to run. */
+		"--",
+		NULL, /* Will be the symfs path. */
+		NULL,
+	};
+	struct child_process objdump_process;
 	int err = dso__disassemble_filename(dso, symfs_filename, sizeof(symfs_filename));
 
 	if (err)
@@ -1899,7 +1907,7 @@ static int symbol__disassemble(struct symbol *sym, struct annotate_args *args)
 
 		if (dso__decompress_kmodule_path(dso, symfs_filename,
 						 tmp, sizeof(tmp)) < 0)
-			goto out;
+			return -1;
 
 		decomp = true;
 		strcpy(symfs_filename, tmp);
@@ -1924,38 +1932,28 @@ static int symbol__disassemble(struct symbol *sym, struct annotate_args *args)
 
 	pr_debug("Executing: %s\n", command);
 
-	err = -1;
-	if (pipe(stdout_fd) < 0) {
-		pr_err("Failure creating the pipe to run %s\n", command);
-		goto out_free_command;
-	}
-
-	pid = fork();
-	if (pid < 0) {
-		pr_err("Failure forking to run %s\n", command);
-		goto out_close_stdout;
-	}
+	objdump_argv[2] = command;
+	objdump_argv[4] = symfs_filename;
 
-	if (pid == 0) {
-		close(stdout_fd[0]);
-		dup2(stdout_fd[1], 1);
-		close(stdout_fd[1]);
-		execl("/bin/sh", "sh", "-c", command, "--", symfs_filename,
-		      NULL);
-		perror(command);
-		exit(-1);
+	/* Create a pipe to read from for stdout */
+	memset(&objdump_process, 0, sizeof(objdump_process));
+	objdump_process.argv = objdump_argv;
+	objdump_process.out = -1;
+	if (start_command(&objdump_process)) {
+		pr_err("Failure starting to run %s\n", command);
+		err = -1;
+		goto out_free_command;
 	}
 
-	close(stdout_fd[1]);
-
-	file = fdopen(stdout_fd[0], "r");
+	file = fdopen(objdump_process.out, "r");
 	if (!file) {
 		pr_err("Failure creating FILE stream for %s\n", command);
 		/*
 		 * If we were using debug info should retry with
 		 * original binary.
 		 */
-		goto out_free_command;
+		err = -1;
+		goto out_close_stdout;
 	}
 
 	/* Storage for getline. */
@@ -1979,8 +1977,14 @@ static int symbol__disassemble(struct symbol *sym, struct annotate_args *args)
 	}
 	free(line);
 
-	if (nline == 0)
+	err = finish_command(&objdump_process);
+	if (err)
+		pr_err("Error running %s\n", command);
+
+	if (nline == 0) {
+		err = -1;
 		pr_err("No output from %s\n", command);
+	}
 
 	/*
 	 * kallsyms does not have symbol sizes so there may a nop at the end.
@@ -1990,23 +1994,21 @@ static int symbol__disassemble(struct symbol *sym, struct annotate_args *args)
 		delete_last_nop(sym);
 
 	fclose(file);
-	err = 0;
+
+out_close_stdout:
+	close(objdump_process.out);
+
 out_free_command:
 	free(command);
-out_remove_tmp:
-	close(stdout_fd[0]);
 
+out_remove_tmp:
 	if (decomp)
 		unlink(symfs_filename);
 
 	if (delete_extract)
 		kcore_extract__delete(&kce);
-out:
-	return err;
 
-out_close_stdout:
-	close(stdout_fd[1]);
-	goto out_free_command;
+	return err;
 }
 
 static void calc_percent(struct sym_hist *sym_hist,
-- 
2.21.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191021133834.25998-9-acme%40kernel.org.
