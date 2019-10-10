Return-Path: <clang-built-linux+bncBDPPFIEASMFBBVXU7XWAKGQE33JNEKA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3a.google.com (mail-vk1-xa3a.google.com [IPv6:2607:f8b0:4864:20::a3a])
	by mail.lfdr.de (Postfix) with ESMTPS id A7830D3080
	for <lists+clang-built-linux@lfdr.de>; Thu, 10 Oct 2019 20:37:11 +0200 (CEST)
Received: by mail-vk1-xa3a.google.com with SMTP id q5sf2457198vkg.20
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Oct 2019 11:37:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570732630; cv=pass;
        d=google.com; s=arc-20160816;
        b=qFS3dYHrwIq7y65FdkDkbRHrrq6jI1vT0dIqqtxyERsHLyfJ3PliukzPZ5702SrIMR
         BFmYHxcF6LkEKC7sJ+9UXBDJjNE2SshqPy9pyj+1i6T0eikJb7l8u4Ifd0iQgc4Ajmz1
         n1hzSFmdNyoTtyqprcuQc9KRr8NHusIFdnNaSUTni+I70N0FeCcxpNAaDDw+/94mqHMu
         JVm+DTSb0+slykzM5vgHW2RVcWMHTvGsD+ve0eQ8rsGb2WShZp4qHrW4LPg4AxdY97e7
         UZNKHlee0KqIE5BYL8qCyoJGhRwPXC7Sdcn9Mg/T2vNsqOUSCF9plnDwL+fF8C272aEd
         zP8g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=ksbRS6SAz+VaCc7vmff7RHj4Zjpr7tr9rL6fkqSxw6M=;
        b=XyKU/VQQJ0AoTPuYr7uhF9m6LnV1XDs1PkH8Lq9pCyknW2+jadx6hzApL5jseu38wG
         5iZ76NVgg3uSvk782WUabUxa0Ae28CoQ/NwBZX4iWSbL1Ug65UAbFb53gcjE+JTPW+/R
         JRiruii6zNc7gsi9npnKOA9z5EPrMtga/mFGHzBg7Z1LOnQX5ZDrH0W2/7XuczOorGrx
         NaIV8O/KI1Lwo1z59E2doLRyvZ8rkFL8To/Pe5zYtM1UkO0/nGbK/PcwwWyqoh3CHjxt
         bRhJV33nnYDBnVaMI0gYOxovq2szqWQJbai1K+3kRqPMADStFQLLCuwTnCVBLVbaf93o
         bo7A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=RByXdn13;
       spf=pass (google.com: domain of 3vxqfxqckebonwtljwxlttlqj.htrhqfsl-gznqy-qnsz2lttlqjlwtzux.htr@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::a4a as permitted sender) smtp.mailfrom=3VXqfXQcKEbonwtljwxlttlqj.htrhqfsl-gznqy-qnsz2lttlqjlwtzux.htr@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ksbRS6SAz+VaCc7vmff7RHj4Zjpr7tr9rL6fkqSxw6M=;
        b=MWNUl3X8b3deNscessxGwIlYzSV4wwKSOqE5Iir1OCsF6PhHIRYdynOOUn59DADBzG
         9clD8bwhUAU4TfGw6U8NrJf8QgLi4fpk4JlBbvtbWWElxmr/vfPct1Zvd+bqBNXNKud+
         orGVp+hW01wPnccaJ8nOPiMgMJSHvCbjB3Ag7qH3v9VR+RmJsrmsY3XdbDUDtLImZaST
         iWSUN/ZYNhUQiHmy1bvF7VFvHN0dvEU1F5r0/piOH3xWt7KkL0osrm7/oGiePnlQsBQn
         XKUiwzWnJxWvJOnjMI1wQN21WARE84dYLCiMsyjLAL7ifKavB51WRB+wNOv9M6O+H6KJ
         nkag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ksbRS6SAz+VaCc7vmff7RHj4Zjpr7tr9rL6fkqSxw6M=;
        b=lmIKPP28TM81KjDUQorshSW3MpcAIYCex5tJh8nf0QW/6rPxQ18XuFsRHAqLy9EneL
         dHE0EU3xXItVXbDLbUznPSwa3eVDK530Nn728d6B1dtBTxQxNz0zBfayNVqrRoAwimkO
         QrWkx9cNuMg6YzYe/CvxaMeyz0O/Whi2Edb3PY7RglwuiDwcYGZE56z7TIaul3fJwK+4
         iGdeS1Czm+19/mOGXFipFf/dSB8Kb6FnVhWdKoc9TW7uNj+qhpv3fMhd8kYtxXmoeTs6
         r6K/+Oz5RCn1dk77pThNf2p3bfylgCkjGKQp5eG5Sp0j+gQwg5JsUxX97gzwW+/lhLwI
         AjAQ==
X-Gm-Message-State: APjAAAX5PK4cuy7662AOULKnLo6tS7/AxmZUdonAbUDCDZqpRmSyqMNq
	1hxZHXQjd8VeV+kjvK8h9dA=
X-Google-Smtp-Source: APXvYqyvxAdWhFKXBG8qQYqa8DPt1Wqrq2BGUQ14e/cKQaMOdzfRQg1D6QVPYg/6yZWd8l2/z+ThZA==
X-Received: by 2002:a9f:2650:: with SMTP id 74mr2991218uag.14.1570732630626;
        Thu, 10 Oct 2019 11:37:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:9bd7:: with SMTP id d206ls186211vke.16.gmail; Thu, 10
 Oct 2019 11:37:10 -0700 (PDT)
X-Received: by 2002:a1f:2f51:: with SMTP id v78mr6493305vkv.101.1570732630240;
        Thu, 10 Oct 2019 11:37:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570732630; cv=none;
        d=google.com; s=arc-20160816;
        b=yHWmvCqReoKrn/zMrMENUsezUhEe8wV6fGYmno6x8LGKpOv2A7E1rjTmb68zKyZgY7
         iR2D/etOcQC4RxJdOKnJopXh/CgW0mFv5Z1HP61OGOgWkuxgfgkpt64eZvyvY536xBcK
         rCMX6q+UJ31HcwZAOUEkfULELBl9Gw2k1ZinVhIWgVfjVt8yp6bmxTFf9AZKwaeBXXXw
         x8LjXr1GYpPTFjY0Xf1vaaq9UAYyPN2hc2V5s/Pavrx3lCt0YYBOUeQB6JYQdhPvn708
         ain+ZW629sNnAjmQuaNbNUAIhtSSdqSFECIxyXsatDL0fJIXwPRkX22yE0j/8Pijvs1r
         HVlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=EftUmcfh2fMndNbxJxVdWpzc7l+xpsVMxFffMU0YcFk=;
        b=yhlERGiZ2oTmnpt14buqG0Q2AR8uXCRWcU6JcnAeb703oBBQqvSbbpQTuucjcoKhlH
         vCIt0yIeX475c56SgTGo6mVhwi+bi8MBj5Tvi7Tidx08DCOUrK1BmexuYmbZBtlEHUob
         v2ixGWPt6d7QgL3YM/cWAiYrNLtcpe63jTR05J8u8I1j8YZNLHe8R44me0hcpUhqdSuk
         6kse2/R03pUxd8tQ0NgSORifrhvLGU5TylRY+tDmJ4123NZ9MCPWS/6krCAgjGwHVSrQ
         jcYuqKJbIcMvqaHPVnx3rk/6uqLh1t9SuKGqTTFFuI3kUx5Em4R8Du9lcrA0d7EgJ28Y
         jyIg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=RByXdn13;
       spf=pass (google.com: domain of 3vxqfxqckebonwtljwxlttlqj.htrhqfsl-gznqy-qnsz2lttlqjlwtzux.htr@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::a4a as permitted sender) smtp.mailfrom=3VXqfXQcKEbonwtljwxlttlqj.htrhqfsl-gznqy-qnsz2lttlqjlwtzux.htr@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vk1-xa4a.google.com (mail-vk1-xa4a.google.com. [2607:f8b0:4864:20::a4a])
        by gmr-mx.google.com with ESMTPS id 136si523109vkx.4.2019.10.10.11.37.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Oct 2019 11:37:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3vxqfxqckebonwtljwxlttlqj.htrhqfsl-gznqy-qnsz2lttlqjlwtzux.htr@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::a4a as permitted sender) client-ip=2607:f8b0:4864:20::a4a;
Received: by mail-vk1-xa4a.google.com with SMTP id r128so2463774vke.17
        for <clang-built-linux@googlegroups.com>; Thu, 10 Oct 2019 11:37:10 -0700 (PDT)
X-Received: by 2002:a05:6122:10d4:: with SMTP id l20mr6371219vko.18.1570732629711;
 Thu, 10 Oct 2019 11:37:09 -0700 (PDT)
Date: Thu, 10 Oct 2019 11:36:46 -0700
In-Reply-To: <20191010183649.23768-1-irogers@google.com>
Message-Id: <20191010183649.23768-3-irogers@google.com>
Mime-Version: 1.0
References: <20191010183649.23768-1-irogers@google.com>
X-Mailer: git-send-email 2.23.0.581.g78d2f28ef7-goog
Subject: [PATCH 2/5] perf annotate: use run-command.h to fork objdump
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
 header.i=@google.com header.s=20161025 header.b=RByXdn13;       spf=pass
 (google.com: domain of 3vxqfxqckebonwtljwxlttlqj.htrhqfsl-gznqy-qnsz2lttlqjlwtzux.htr@flex--irogers.bounces.google.com
 designates 2607:f8b0:4864:20::a4a as permitted sender) smtp.mailfrom=3VXqfXQcKEbonwtljwxlttlqj.htrhqfsl-gznqy-qnsz2lttlqjlwtzux.htr@flex--irogers.bounces.google.com;
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

Reduce duplicated logic by using the subcmd library. Ensure when errors
occur they are reported to the caller. Before this patch, if no lines are
read the error status is 0.

Signed-off-by: Ian Rogers <irogers@google.com>
---
 tools/perf/util/annotate.c | 71 +++++++++++++++++++-------------------
 1 file changed, 36 insertions(+), 35 deletions(-)

diff --git a/tools/perf/util/annotate.c b/tools/perf/util/annotate.c
index 1487849a191a..fc12c5cfe112 100644
--- a/tools/perf/util/annotate.c
+++ b/tools/perf/util/annotate.c
@@ -43,6 +43,7 @@
 #include <linux/string.h>
 #include <bpf/libbpf.h>
 #include <subcmd/parse-options.h>
+#include <subcmd/run-command.h>
 
 /* FIXME: For the HE_COLORSET */
 #include "ui/browser.h"
@@ -1843,12 +1844,18 @@ static int symbol__disassemble(struct symbol *sym, struct annotate_args *args)
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
+	};
+	struct child_process objdump_process;
 	int err = dso__disassemble_filename(dso, symfs_filename, sizeof(symfs_filename));
 
 	if (err)
@@ -1878,7 +1885,7 @@ static int symbol__disassemble(struct symbol *sym, struct annotate_args *args)
 
 		if (dso__decompress_kmodule_path(dso, symfs_filename,
 						 tmp, sizeof(tmp)) < 0)
-			goto out;
+			return -1;
 
 		decomp = true;
 		strcpy(symfs_filename, tmp);
@@ -1903,38 +1910,28 @@ static int symbol__disassemble(struct symbol *sym, struct annotate_args *args)
 
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
@@ -1958,8 +1955,14 @@ static int symbol__disassemble(struct symbol *sym, struct annotate_args *args)
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
@@ -1969,23 +1972,21 @@ static int symbol__disassemble(struct symbol *sym, struct annotate_args *args)
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
2.23.0.581.g78d2f28ef7-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191010183649.23768-3-irogers%40google.com.
