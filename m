Return-Path: <clang-built-linux+bncBAABBAH2XDWQKGQE3PYZURQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-f62.google.com (mail-lf1-f62.google.com [209.85.167.62])
	by mail.lfdr.de (Postfix) with ESMTPS id 24AB0DF87C
	for <lists+clang-built-linux@lfdr.de>; Tue, 22 Oct 2019 01:19:29 +0200 (CEST)
Received: by mail-lf1-f62.google.com with SMTP id y188sf1468445lfc.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 21 Oct 2019 16:19:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571699968; cv=pass;
        d=google.com; s=arc-20160816;
        b=h9Z7wxwGVT+TZroaU68Krtb1WFjmyb/uhaY0ADWlvW9fzXEXy4nNjcB/aS+AxGq3S5
         nmOooRwr6bDEYzGmRXOsA+56O33nkeQF7wI/fM6ELjFrdQLIISNPXL7nc8F1/8pJerMP
         v1+RJ/yqZm5Drdy+JgYapul6t4eK/FEAjbqm1NAczjSGJHvlAInPFyobKDNyKyZjesHh
         aNtZ7FhK6b3mX16f76mCQumyTJnnK9GIPa4XZ66opJ/o8P9dZDWtDwxn/1Zpjjf0RwS8
         04XEaQthShPC9Ec9kx00oWmHMBm3ONCVJURtMYzptE7nnurDTyWV2Ihdux9gjqV8dozg
         l2Rg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:robot-unsubscribe:robot-id
         :message-id:mime-version:references:in-reply-to:cc:subject:to
         :reply-to:sender:from:date;
        bh=jDVbkVKl81aQjUtkDjzVEjZgXyu69CH2wnejSlXKEwY=;
        b=Gs2GGg1K4e9o7jP70d4iJCEbbAfvIXSH2F2I0cBfKHXdfmkxaH9ZBO6p0ZrpY9zels
         FQg+PD6rvOlMPg3JsQ1eNW5kf61U/bBO9LTq11x6A+VqYfCOFanIRgihCSu1W5GlRTsz
         kBWkQYFhVkzT+RuwGsCz/B6ZUigOum0TvoX7XLY98GRZt6Lf6kwltWTsHY8+m5zk28Vn
         DeoOgW2ZLK3yx71+oAu8DJZKRakZj6tv7hDOtdM/5a7pWit2AsHHvjkkkc7QyusCt3gg
         VI99J6lrhNGpa/YT02bHq6Mu9Lt6goEECkuD3hV7cfo5ReKNG5cFSHicIVCsTIN9lqIh
         rp0A==
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
        bh=jDVbkVKl81aQjUtkDjzVEjZgXyu69CH2wnejSlXKEwY=;
        b=kPwBomxRmZMEAfqZ59bAShkbNXb9j5g8+5B84UDcayRsBRHYYkD1rlF4vjiMi2q/UP
         0mMQMQEm6Azwm2vQePpEaawxBizULGRpM3xP5uCbXDdTDNpyoBK2zmM3AeMa3BXckrXV
         LOTFtlWzKscqB5dw3x13tR+l0Gk8yiEDnq30ln/RrqLWAzCf0JgsFUC6vuMVlKtjV+mu
         juaUSWz9upjEvlyDc/WCeou6yCCYKXRsGv5Azi9rh3iH2/7GyYnLNcnduPtNe6csWiTL
         O2j+fFEH1osk0EpQHJn6Df/aDM72m5Ni1LNhO58BEN2QPhev00KGi+sQelplODcApyxp
         TnAA==
X-Gm-Message-State: APjAAAW0l757oqWCBkS1TdjzEwikirwUEQZVTJ1Se9jR337J/pRIWpsl
	/Lv2C8WjNQ9PZNH2lfpmc7k=
X-Google-Smtp-Source: APXvYqwcf8ozW46yrITbRubrGKCWA6fPmBqSS7INTzhX+01k8Ic57NXWOwkFOLy/YXZtzb5KLhci4g==
X-Received: by 2002:a19:3fcd:: with SMTP id m196mr14961569lfa.118.1571699968632;
        Mon, 21 Oct 2019 16:19:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:8806:: with SMTP id x6ls9869ljh.11.gmail; Mon, 21 Oct
 2019 16:19:28 -0700 (PDT)
X-Received: by 2002:a2e:9149:: with SMTP id q9mr1397264ljg.49.1571699968232;
        Mon, 21 Oct 2019 16:19:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571699968; cv=none;
        d=google.com; s=arc-20160816;
        b=oDFzpPOqsAbKXTuQ5zxnUbt2GygCqs+bCeYkLX5DLAya+c78JcijvLE5G3+3JIT6JW
         exAimTfs5I+9eVyUzdjJsJUK4R+EzGSLMJXYeeSZmq3RYAXxebStiorfuN7SBhGX98hP
         Nvo9GB7JVS97CXJYBHeu9JrY6fu7y4cDvH4eh49akDmTSQhxkh0LDwGebKrt84OML7iq
         nxoeNelUUwaPfXHO1VNyRfnFybK/sM1J4HTKUmYtaje57hQUWOoCzOzCNfQi5dQ9bJe3
         QYdhER1dkX2pSB1ImxoCn8HW1BT0I1LJKfoAwoTByWVwU6HU8jX0T0FeJanEbR1yGt4Q
         hEBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:precedence:robot-unsubscribe:robot-id
         :message-id:mime-version:references:in-reply-to:cc:subject:to
         :reply-to:sender:from:date;
        bh=tmXIBsd3kIMVJx/EenOsmsQ2G+eqCAaQ117Xv3aNjpw=;
        b=SeAdeSKbuFoPF2gzsiAG4jDqwhMuqT4DeIgqI5ZkIUgQ+bxxE9QBzGR+c5QMNrscqB
         plHF7TjW8UIFj8aSOqSiQgiOV9cFKYhjBtfOUu3UINyurAP9SxsNw04oFcgAIPZTMGXJ
         JJCKOXYv6xUhQ6ke3D3N045cvmEg1yyYteskh7M1g3MVMEv5GhuJ732C+dOslDg41LCD
         FhHdHk98B8DCrNFLZUwOZ5t+DT4dBm4vOHjA+WDR5JSRaoWyURfTjQBBN7WnT00TWVMw
         ceK37YDnbTe2YCJNljldhM+j7JPvZThBACcbthnz2b/Kk+E+jfQ2fUfsFGKx+3MiIfsQ
         oAAQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tip-bot2@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tip-bot2@linutronix.de
Received: from Galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id z26si191784lfq.4.2019.10.21.16.19.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Mon, 21 Oct 2019 16:19:28 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of tip-bot2@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
Received: from [5.158.153.53] (helo=tip-bot2.lab.linutronix.de)
	by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
	(Exim 4.80)
	(envelope-from <tip-bot2@linutronix.de>)
	id 1iMgxO-0004Dj-8n; Tue, 22 Oct 2019 01:19:22 +0200
Received: from [127.0.1.1] (localhost [IPv6:::1])
	by tip-bot2.lab.linutronix.de (Postfix) with ESMTP id E50121C047B;
	Tue, 22 Oct 2019 01:19:16 +0200 (CEST)
Date: Mon, 21 Oct 2019 23:19:16 -0000
From: "tip-bot2 for Ian Rogers" <tip-bot2@linutronix.de>
Sender: tip-bot2@linutronix.de
Reply-to: linux-kernel@vger.kernel.org
To: linux-tip-commits@vger.kernel.org
Subject: [tip: perf/core] perf annotate: Use libsubcmd's run-command.h to fork objdump
Cc: Ian Rogers <irogers@google.com>,
 Arnaldo Carvalho de Melo <acme@redhat.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Jin Yao <yao.jin@linux.intel.com>, Jiri Olsa <jolsa@redhat.com>,
 Mark Rutland <mark.rutland@arm.com>, Namhyung Kim <namhyung@kernel.org>,
 Peter Zijlstra <peterz@infradead.org>, Song Liu <songliubraving@fb.com>,
 Stephane Eranian <eranian@google.com>, clang-built-linux@googlegroups.com,
 Ingo Molnar <mingo@kernel.org>, Borislav Petkov <bp@alien8.de>,
 linux-kernel@vger.kernel.org
In-Reply-To: <20191010183649.23768-3-irogers@google.com>
References: <20191010183649.23768-3-irogers@google.com>
MIME-Version: 1.0
Message-ID: <157169995659.29376.6123115248233017394.tip-bot2@tip-bot2>
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

Commit-ID:     4235949944d1bb244c85fd184cdc2f78e9df848b
Gitweb:        https://git.kernel.org/tip/4235949944d1bb244c85fd184cdc2f78e9df848b
Author:        Ian Rogers <irogers@google.com>
AuthorDate:    Thu, 10 Oct 2019 11:36:46 -07:00
Committer:     Arnaldo Carvalho de Melo <acme@redhat.com>
CommitterDate: Tue, 15 Oct 2019 08:39:01 -03:00

perf annotate: Use libsubcmd's run-command.h to fork objdump

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
 tools/perf/util/annotate.c | 72 +++++++++++++++++++------------------
 1 file changed, 37 insertions(+), 35 deletions(-)

diff --git a/tools/perf/util/annotate.c b/tools/perf/util/annotate.c
index f9c39a7..9835666 100644
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
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/157169995659.29376.6123115248233017394.tip-bot2%40tip-bot2.
