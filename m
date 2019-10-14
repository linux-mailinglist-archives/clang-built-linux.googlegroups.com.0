Return-Path: <clang-built-linux+bncBDEPBSN75UNRBOEHSLWQKGQEBPCFJBI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 56A9BD64F2
	for <lists+clang-built-linux@lfdr.de>; Mon, 14 Oct 2019 16:18:34 +0200 (CEST)
Received: by mail-pf1-x440.google.com with SMTP id s137sf13463931pfs.18
        for <lists+clang-built-linux@lfdr.de>; Mon, 14 Oct 2019 07:18:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571062713; cv=pass;
        d=google.com; s=arc-20160816;
        b=viCey/kKKzshLp/MgIPfMASk6C2AO8kEig/6DlGho1irQFRDmoH7Jx5yJsyE5DqsxA
         ZEoxTubTcKiCNJUjBuBJ6/lyO2C2XKyzMZZ0Z5y97RyEW8dymuK552oi3OVWCJYvNGq3
         3c7YcNyWdsiSeOiEchUtr2UD3cwVW1W0GYobr+SyaGhpkT2cjXTv56iobJhETjPGHWRF
         nxnwNR7kf0kpY4NwmhEWLIdAsnmu2bm+dmU7Roh3+Sj/wHgmHL55uX0uo6HeP7EHwZw3
         jE6IdOGJAtjix1T+WpCu/DGNu3GwQcImPPy6Be4UYJenvC/V5T14FhzwZFTExRjxgjV+
         +wCg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:date:from:sender:dkim-signature:dkim-signature;
        bh=Fj6vH5vEgjDOShxpppvT+BczASBm3qHnIvuFiOTiSes=;
        b=b9EmrdjJ0oFH/cp9K20gY1JiA4oytqgLWCXbNXzjDnqm/uQqO09aZJE9/H8nhV/pDS
         wHrlLdguhd/YuZ+X32SXlfnFAZqejtB3KyVKOZ8oxIGpotuP9WmI2nULv6InMPnyeRIr
         wH6/aLjH9TH+axYlYl2GqbHK9thOMHTHTTp2gjRY4bvn2FbXV9V3epbwMapgG1coSCjD
         J/XiuW6pOi1ukiJIgVCAXsVkLNejd4QkU1EBLSayQpxwOM16jhGereG65HV92J05xx2S
         +a8OxWWHBADnvhSc7XYlcmU/O3MeqOU7BTOOwokqmCAw8a1CiQ8o+cOvz5fQ6b7hOUqt
         adBA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GRSSKcz3;
       spf=pass (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=arnaldo.melo@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Fj6vH5vEgjDOShxpppvT+BczASBm3qHnIvuFiOTiSes=;
        b=Zx93GvdQZhf4tkWS4brSGkWP9Y+zXMbylYy2vRJvoGumX0xurQZsQNj85ZXjjPnKGK
         greQ/OkJr0G59raNglGOGzNm+ft+MIwtSL9tU7qUalJ4rTn88GJKlMJQwFk6Ub0mKHZE
         6uH8OOA/BqeostdWSd+N6gqinHYxluYia5dfDnlYxg+8OqYg7NFKt/q7/BEKd2H+oStK
         NisIkpHMqxa9MvtmNq0QvRziHYy1LtmfrvxLZpICGA70yVMnr+U4MkDWBJ0tdMHljage
         QglA7p5lvEF7mpWC+jBsoJpWRVztbUg+9MWgkhyPZGOf9CbBVhxHzBcBwEVRWze9duvV
         v91A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Fj6vH5vEgjDOShxpppvT+BczASBm3qHnIvuFiOTiSes=;
        b=qXDqAnnChJdUK89eYDIMuEP+E4smFP1Jh8hWl/RtrmOFxjh8gi5yNpTZGtk9ydheT+
         HT1BbgXLHLkPa0JLJKmh1gbX6/dQE0zHpKUCrsAbFCl3YF+TXEvcZBF1tmoAAgDuUKq2
         6naqgMjE1xXsG53YrjgecgZcryUU/RTF7beBtU2EGZkEDkpcSG4yEDaqyOdqSzW8o1pM
         X9tSN+dYQhDzr1EvbijKGNe7lFlaFxwWIbw4qK5CWg/XsydFPMjdt8CXSnigFUlCk4Om
         OMOZKA+8Wi9WE8TQK0hi5QdfhEZU6alNbF0eR9MWVnAgX9PPAhxLZ4ro3Rq1+OVrhyuz
         anHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Fj6vH5vEgjDOShxpppvT+BczASBm3qHnIvuFiOTiSes=;
        b=IyIQMJ5X2AtyRwSm5C4R8p51qF51BKpvwfEHfyCKNRAkjbIr+A/avXS97Hmr38qHRM
         amVT2mIjN1KIk9SLqWvMFInlE2zUCjCxIl4QDeyAl+XsvBo6xE1VGprwE4Bt5TUEg79n
         D3vbsim3rpx/5HKZ3PgFfAEfZEZfj+uvCLRfJwOtVwPjcHrzLDmXKn431j4cI2FGvhbA
         73/Y/TbS7FENtz+ro9SIW4eYVGJIfSh66uto6DXwLmMzD2hldScancSRJ3lkztPjEqpq
         r86I/6QySQFiaYOXpWpQRgCxaYtjcQVpefQ4yf0bG+bVIMvTashYmk7IxsJYrysu7zYN
         qvoQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVBcgGdwEuaVEylBwRlD4jvgqr5V0AfCvBc8HYW8FCVpezCrwm6
	46Nvlr7P+aels0OtNwngu68=
X-Google-Smtp-Source: APXvYqz7k+3HsL8X8elbxiTi7f6ekUSJ8KLjRn33q46B6t2Yrak1Dd9THfFBznV+YZLhjyQZRBqF6Q==
X-Received: by 2002:a62:5c85:: with SMTP id q127mr33435964pfb.39.1571062713019;
        Mon, 14 Oct 2019 07:18:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:8206:: with SMTP id x6ls4033838pln.7.gmail; Mon, 14
 Oct 2019 07:18:32 -0700 (PDT)
X-Received: by 2002:a17:90a:be09:: with SMTP id a9mr11990521pjs.5.1571062712579;
        Mon, 14 Oct 2019 07:18:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571062712; cv=none;
        d=google.com; s=arc-20160816;
        b=Y746NQUCSDvZr6c/clvRB1NqUoEYfuwYhW7zqlOp6mQnUGHY/EvVc64+vOkMsv1mMd
         wM3a+BRzQnkcBDFdtkCSLprJC5wlhEqfM07YU4aTenOPVtORTwNcKnIce/n5ufMcz/Yb
         AaUrCyeumdencQN+zfk4vW0Z+vFdEG+g/XBcrxY8E3IZiBRUxsflWp64Qp6E1SJ/IyzJ
         6bA65QkITM0y/2Pc/RqTQXSiVO0ZqlfCW4/+Oa2Hbd43idyD0PToN9q5rut6At4lKPvf
         n0uuBeba0WTT512DSinO6177jfsmP+Gp6YoX9gvOhd4ecm/F2If+wSapVCCdiM80g/AD
         zajg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:date:from:dkim-signature;
        bh=TezNCNHLb5mO/wOLqXzMYidxnO5a6AUY/u+ZC7V9hRA=;
        b=GJcT0M9sWO1FovRB0Ayv4WC5sbtL/1xCc68lc5D3gkSGevI6T5UDrpDCeQOP23+ypK
         hFor9qqYcTEAcn22T+sur3sC8B6tjEfV5hp4oRQtZZS3CNNwjX9RvJyZ+cGN0L1dN2EI
         p7W5+p9vs6V8G8HQoGDJQnA4uBf7Nut9MrFbZv+SW9tQADeKtrv6wn4w1d2IIcSTdHPZ
         x6XHPKCvunP/TQN+tqLkK/QWSX5MYwxVoxWx1KHixxOq0bjPjsncxwR8lPZ5/ysC1AGb
         IXzludZFaaoKgMtqvtQ6t2diHFvv9+D4tNJJCtebzA817roIInx+1KFKJuEP2RjVEUzJ
         Ogqw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GRSSKcz3;
       spf=pass (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=arnaldo.melo@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x844.google.com (mail-qt1-x844.google.com. [2607:f8b0:4864:20::844])
        by gmr-mx.google.com with ESMTPS id m6si735830pgm.2.2019.10.14.07.18.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Oct 2019 07:18:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) client-ip=2607:f8b0:4864:20::844;
Received: by mail-qt1-x844.google.com with SMTP id u40so25590116qth.11
        for <clang-built-linux@googlegroups.com>; Mon, 14 Oct 2019 07:18:32 -0700 (PDT)
X-Received: by 2002:a05:6214:304:: with SMTP id i4mr13746796qvu.147.1571062711594;
        Mon, 14 Oct 2019 07:18:31 -0700 (PDT)
Received: from quaco.ghostprotocols.net ([179.97.35.50])
        by smtp.gmail.com with ESMTPSA id f27sm8138384qtv.85.2019.10.14.07.18.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Oct 2019 07:18:30 -0700 (PDT)
From: Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
	id 6C9584DD66; Mon, 14 Oct 2019 11:18:28 -0300 (-03)
Date: Mon, 14 Oct 2019 11:18:28 -0300
To: Ian Rogers <irogers@google.com>
Cc: Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
	Jin Yao <yao.jin@linux.intel.com>, Song Liu <songliubraving@fb.com>,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
	Stephane Eranian <eranian@google.com>
Subject: Re: [PATCH 2/5] perf annotate: use run-command.h to fork objdump
Message-ID: <20191014141828.GG19627@kernel.org>
References: <20191010183649.23768-1-irogers@google.com>
 <20191010183649.23768-3-irogers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191010183649.23768-3-irogers@google.com>
X-Url: http://acmel.wordpress.com
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: arnaldo.melo@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=GRSSKcz3;       spf=pass
 (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::844
 as permitted sender) smtp.mailfrom=arnaldo.melo@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Em Thu, Oct 10, 2019 at 11:36:46AM -0700, Ian Rogers escreveu:
> Reduce duplicated logic by using the subcmd library. Ensure when errors
> occur they are reported to the caller. Before this patch, if no lines are
> read the error status is 0.

Thanks, applied and tested.

- Arnaldo
 
> Signed-off-by: Ian Rogers <irogers@google.com>
> ---
>  tools/perf/util/annotate.c | 71 +++++++++++++++++++-------------------
>  1 file changed, 36 insertions(+), 35 deletions(-)
> 
> diff --git a/tools/perf/util/annotate.c b/tools/perf/util/annotate.c
> index 1487849a191a..fc12c5cfe112 100644
> --- a/tools/perf/util/annotate.c
> +++ b/tools/perf/util/annotate.c
> @@ -43,6 +43,7 @@
>  #include <linux/string.h>
>  #include <bpf/libbpf.h>
>  #include <subcmd/parse-options.h>
> +#include <subcmd/run-command.h>
>  
>  /* FIXME: For the HE_COLORSET */
>  #include "ui/browser.h"
> @@ -1843,12 +1844,18 @@ static int symbol__disassemble(struct symbol *sym, struct annotate_args *args)
>  	struct kcore_extract kce;
>  	bool delete_extract = false;
>  	bool decomp = false;
> -	int stdout_fd[2];
>  	int lineno = 0;
>  	int nline;
> -	pid_t pid;
>  	char *line;
>  	size_t line_len;
> +	const char *objdump_argv[] = {
> +		"/bin/sh",
> +		"-c",
> +		NULL, /* Will be the objdump command to run. */
> +		"--",
> +		NULL, /* Will be the symfs path. */
> +	};
> +	struct child_process objdump_process;
>  	int err = dso__disassemble_filename(dso, symfs_filename, sizeof(symfs_filename));
>  
>  	if (err)
> @@ -1878,7 +1885,7 @@ static int symbol__disassemble(struct symbol *sym, struct annotate_args *args)
>  
>  		if (dso__decompress_kmodule_path(dso, symfs_filename,
>  						 tmp, sizeof(tmp)) < 0)
> -			goto out;
> +			return -1;
>  
>  		decomp = true;
>  		strcpy(symfs_filename, tmp);
> @@ -1903,38 +1910,28 @@ static int symbol__disassemble(struct symbol *sym, struct annotate_args *args)
>  
>  	pr_debug("Executing: %s\n", command);
>  
> -	err = -1;
> -	if (pipe(stdout_fd) < 0) {
> -		pr_err("Failure creating the pipe to run %s\n", command);
> -		goto out_free_command;
> -	}
> -
> -	pid = fork();
> -	if (pid < 0) {
> -		pr_err("Failure forking to run %s\n", command);
> -		goto out_close_stdout;
> -	}
> +	objdump_argv[2] = command;
> +	objdump_argv[4] = symfs_filename;
>  
> -	if (pid == 0) {
> -		close(stdout_fd[0]);
> -		dup2(stdout_fd[1], 1);
> -		close(stdout_fd[1]);
> -		execl("/bin/sh", "sh", "-c", command, "--", symfs_filename,
> -		      NULL);
> -		perror(command);
> -		exit(-1);
> +	/* Create a pipe to read from for stdout */
> +	memset(&objdump_process, 0, sizeof(objdump_process));
> +	objdump_process.argv = objdump_argv;
> +	objdump_process.out = -1;
> +	if (start_command(&objdump_process)) {
> +		pr_err("Failure starting to run %s\n", command);
> +		err = -1;
> +		goto out_free_command;
>  	}
>  
> -	close(stdout_fd[1]);
> -
> -	file = fdopen(stdout_fd[0], "r");
> +	file = fdopen(objdump_process.out, "r");
>  	if (!file) {
>  		pr_err("Failure creating FILE stream for %s\n", command);
>  		/*
>  		 * If we were using debug info should retry with
>  		 * original binary.
>  		 */
> -		goto out_free_command;
> +		err = -1;
> +		goto out_close_stdout;
>  	}
>  
>  	/* Storage for getline. */
> @@ -1958,8 +1955,14 @@ static int symbol__disassemble(struct symbol *sym, struct annotate_args *args)
>  	}
>  	free(line);
>  
> -	if (nline == 0)
> +	err = finish_command(&objdump_process);
> +	if (err)
> +		pr_err("Error running %s\n", command);
> +
> +	if (nline == 0) {
> +		err = -1;
>  		pr_err("No output from %s\n", command);
> +	}
>  
>  	/*
>  	 * kallsyms does not have symbol sizes so there may a nop at the end.
> @@ -1969,23 +1972,21 @@ static int symbol__disassemble(struct symbol *sym, struct annotate_args *args)
>  		delete_last_nop(sym);
>  
>  	fclose(file);
> -	err = 0;
> +
> +out_close_stdout:
> +	close(objdump_process.out);
> +
>  out_free_command:
>  	free(command);
> -out_remove_tmp:
> -	close(stdout_fd[0]);
>  
> +out_remove_tmp:
>  	if (decomp)
>  		unlink(symfs_filename);
>  
>  	if (delete_extract)
>  		kcore_extract__delete(&kce);
> -out:
> -	return err;
>  
> -out_close_stdout:
> -	close(stdout_fd[1]);
> -	goto out_free_command;
> +	return err;
>  }
>  
>  static void calc_percent(struct sym_hist *sym_hist,
> -- 
> 2.23.0.581.g78d2f28ef7-goog

-- 

- Arnaldo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191014141828.GG19627%40kernel.org.
