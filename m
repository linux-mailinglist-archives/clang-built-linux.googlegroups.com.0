Return-Path: <clang-built-linux+bncBDPPFIEASMFBB4VISTWQKGQEU3A2KBI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13f.google.com (mail-lf1-x13f.google.com [IPv6:2a00:1450:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id AA3DED6C85
	for <lists+clang-built-linux@lfdr.de>; Tue, 15 Oct 2019 02:36:02 +0200 (CEST)
Received: by mail-lf1-x13f.google.com with SMTP id z7sf3200175lfj.19
        for <lists+clang-built-linux@lfdr.de>; Mon, 14 Oct 2019 17:36:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571099762; cv=pass;
        d=google.com; s=arc-20160816;
        b=QLbykWHfX1Ijb7pkZpWcuosBSLeQ9oGWgLKvFup+bqK8OOy3QRvE85rBxrbNe/Yq5X
         B9t3kgs8q7i2iaIGoY+jRTAWs/BwfX0a/jxJPNFHpwBC1AmSR0R3j+mkrbva8cW52KKV
         t0wwMePEOdO0Y3tWTajaRa/4EGIGWaGJilKwVqGp/GaTU6dV78585h42ebsSCeQf6kx9
         Q5ijwwkrLv4eMA+1rXbNSvwkU9CYdwpMK/gAeiRFkaRcuwWF1TV8Ztx2yb1X6LUwlJyu
         tD8xFSbmlFIhNZc8GGWJ2+EBCnWzlXU0sVe3dx6KO+5IMrt1jpMvlxMXf3eWZT3Y7kpU
         ZQbQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=1yD9GgvcRBlQ23EMWwdmGVY5MXZCmd/PqZl+rpgQOCQ=;
        b=HPpXCyHoGQ/s648E1FG4sifuR7oVSs/lkHxarN1s9s5r4OWOczDT1ls1MSxFQYfyTK
         5yKOxVWLCzT5C5z60s8ZntEwVvVeh0pXmnr+t4xjatOQVtMm4xd0z8eAUfLWkj++dbIs
         oBfSFfam44+HttkZeIyqwxqoL/S9A6Wk+FcjDlJ2RN83q7k/QL1s5clPbryPYOy8c+ad
         lcFNujqaQZn29EjvMWHdrTkxL1CRHVTs5Y/BPZ+RRVGac3klaNtu2d1Jt71fggs0XfDU
         mpZEbtrNq4H3RuZ6eqiPqEiGtXYvrUEomoqW6ByrKOfCEhUAuKe7JhJJOtE9ChDLzFiu
         Mn7Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=m82ItVoB;
       spf=pass (google.com: domain of irogers@google.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=irogers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1yD9GgvcRBlQ23EMWwdmGVY5MXZCmd/PqZl+rpgQOCQ=;
        b=GaFwl8flZq2+Bv+kymYVJdaV9mYzFJ49KxMP14Jvm9YlquN7/pJ6VbQqkglR1FfVLb
         N6X86HwdtS5nY7AEdd2QFmdVnc7SkDGuYmD1iL/QuxC+TI6GqNnWVEHZOLrsxRj8HlW6
         LtcaKzrTnQO255DfNavgRxpVoKO4CkWseABbrFWe0NqX7o1JE8K8/fwwyygdIT7kGNpP
         RrgoEYw3Luxhc8GL9MlZkRGTuZo2A48fFCu8Y/gaUJsxz5G3VrHqBmwZ3/+BZx1/0T7C
         tLmcdZXp51n8viiNVYbsmSpS+rR4mtf+04Y6H+00+CFk8/maitFjmYIErRjHpBo2Pdrm
         kb9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1yD9GgvcRBlQ23EMWwdmGVY5MXZCmd/PqZl+rpgQOCQ=;
        b=bK/ZNrszSJDdCTTqVIunX6XRA8cxYRJ0A6VdiQ6Zouay21XEwR3qoMLaySK2zLSJi4
         iGTlIuPPk5iy7BOk/IRGkHBKt6cs+SEQRPd73nr5xVybfRTZ6+o9IUCJKhk8LVMVNLJg
         ALpxsciWIJDgYKnEDd+89PcmmF6qjBC4rOzlpa4Lfzg1ySy9SC+RDl0ri12CMAFnU8sI
         RvSxfvdbH5Kpw8UIJUdf3vz2apGAoiCYDw+PvZlIHDdFuYxcAieH7K/QEotKZxrq6nMO
         Pn2gS0unR6PLr5QkGNOptkjBKzb7qCPaj1nE/CMmpUj++0QkqeFvDOg5YpgqZTLLCC+u
         /09g==
X-Gm-Message-State: APjAAAXtW1BuUJc3Ze3+WRd1Xaj2DfPzS2Z9MGyY04tq1zz4OvCWW+PQ
	1DmeTOD1+oIrHIKvSargOA8=
X-Google-Smtp-Source: APXvYqzr/2qtUyuC3puB7kf49GshrdFoUyxGqSF5bimQiFyDsNn0yFlMgsesrxbU/u9AFhSlEDnOjA==
X-Received: by 2002:a2e:9205:: with SMTP id k5mr20369432ljg.172.1571099762181;
        Mon, 14 Oct 2019 17:36:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:5201:: with SMTP id m1ls1437894lfb.3.gmail; Mon, 14 Oct
 2019 17:36:01 -0700 (PDT)
X-Received: by 2002:a19:f509:: with SMTP id j9mr19185988lfb.153.1571099761686;
        Mon, 14 Oct 2019 17:36:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571099761; cv=none;
        d=google.com; s=arc-20160816;
        b=yAPKEE4YzU5fyNrmlvT0dL2lW28SCAaWHFR/9rgl0MIAwXpyFq2GvGaUDadfSssM/3
         zFp0ThBD8pTARdPN25h65tJqgjhk1CjfmLIDHoTe4IQWyNJsD2Sf5fZyjZHAcyw26e+n
         fQwG+KtOtBfZf7DWqOvAplVAxgTpg+E0vhDWu5rzc5J7DK+QqgI3UqaEf09C4fNA7Sog
         /lwYuWwDwZw4VG3PwM23PeQCN+kTXdgFNY7E4ImkSlepHf+pp0dUhxNkasQh2UUeaAVD
         MXvQm3yuffxl/s11IjXv9CJ0aDpHizKR0rh3JouKzXIHKc7+n6M/q4ATqmctW7xYa8Fy
         UAUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=cSDyetkp9LF+HPNPXXqByeV3PmiahLNlHpt22HU4NqA=;
        b=sBkBTMzouB5+n/V+gCLN9OUeAoEfIXfyqhzeSWvueGfNTuclYdWF5CDngvQkdcqMWb
         fGL8yoS86s2z/yzieQswGVwQ7P9GpncuMChsHds/2ni/SuCnpz2Sciv/aDH3SBeNyFR7
         Ze0E39FyGoEQcVQjLrzda5BIEvHgqfkKAq/eaIrEkO7Qx2F5Be7mf/1Tdp9UbkU1ElWB
         lB4OGmtqnMaLhkJQVefiSZZf1pcqMzInR9Q71XNREXyifGN1LaB08NKAptN4VdjBCwk4
         AV9u5zKaYWIa6Q2j5Vh6hlzxF4KH8x6sRg/Qb7hjBI6xV3JdDlvnGd6t71z9IxiD/z/K
         bbwA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=m82ItVoB;
       spf=pass (google.com: domain of irogers@google.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=irogers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com. [2a00:1450:4864:20::342])
        by gmr-mx.google.com with ESMTPS id k24si699510lji.3.2019.10.14.17.36.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Oct 2019 17:36:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of irogers@google.com designates 2a00:1450:4864:20::342 as permitted sender) client-ip=2a00:1450:4864:20::342;
Received: by mail-wm1-x342.google.com with SMTP id 5so18915467wmg.0
        for <clang-built-linux@googlegroups.com>; Mon, 14 Oct 2019 17:36:01 -0700 (PDT)
X-Received: by 2002:a7b:c74a:: with SMTP id w10mr16928637wmk.30.1571099760603;
 Mon, 14 Oct 2019 17:36:00 -0700 (PDT)
MIME-Version: 1.0
References: <20191010183649.23768-1-irogers@google.com> <20191010183649.23768-3-irogers@google.com>
 <20191014141828.GG19627@kernel.org>
In-Reply-To: <20191014141828.GG19627@kernel.org>
From: "'Ian Rogers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 14 Oct 2019 17:35:49 -0700
Message-ID: <CAP-5=fUSNZWga5TDPk1aG6-VKKMHU8x0hF_t60sLJL5tvn4c2w@mail.gmail.com>
Subject: Re: [PATCH 2/5] perf annotate: use run-command.h to fork objdump
To: Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>
Cc: Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>, 
	Mark Rutland <mark.rutland@arm.com>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, Jiri Olsa <jolsa@redhat.com>, 
	Namhyung Kim <namhyung@kernel.org>, Jin Yao <yao.jin@linux.intel.com>, 
	Song Liu <songliubraving@fb.com>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Stephane Eranian <eranian@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: irogers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=m82ItVoB;       spf=pass
 (google.com: domain of irogers@google.com designates 2a00:1450:4864:20::342
 as permitted sender) smtp.mailfrom=irogers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
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

Thanks for applying! Apologies, there was a missing null termination.
Sent in a follow-up patch.

Ian

On Mon, Oct 14, 2019 at 7:18 AM Arnaldo Carvalho de Melo
<arnaldo.melo@gmail.com> wrote:
>
> Em Thu, Oct 10, 2019 at 11:36:46AM -0700, Ian Rogers escreveu:
> > Reduce duplicated logic by using the subcmd library. Ensure when errors
> > occur they are reported to the caller. Before this patch, if no lines are
> > read the error status is 0.
>
> Thanks, applied and tested.
>
> - Arnaldo
>
> > Signed-off-by: Ian Rogers <irogers@google.com>
> > ---
> >  tools/perf/util/annotate.c | 71 +++++++++++++++++++-------------------
> >  1 file changed, 36 insertions(+), 35 deletions(-)
> >
> > diff --git a/tools/perf/util/annotate.c b/tools/perf/util/annotate.c
> > index 1487849a191a..fc12c5cfe112 100644
> > --- a/tools/perf/util/annotate.c
> > +++ b/tools/perf/util/annotate.c
> > @@ -43,6 +43,7 @@
> >  #include <linux/string.h>
> >  #include <bpf/libbpf.h>
> >  #include <subcmd/parse-options.h>
> > +#include <subcmd/run-command.h>
> >
> >  /* FIXME: For the HE_COLORSET */
> >  #include "ui/browser.h"
> > @@ -1843,12 +1844,18 @@ static int symbol__disassemble(struct symbol *sym, struct annotate_args *args)
> >       struct kcore_extract kce;
> >       bool delete_extract = false;
> >       bool decomp = false;
> > -     int stdout_fd[2];
> >       int lineno = 0;
> >       int nline;
> > -     pid_t pid;
> >       char *line;
> >       size_t line_len;
> > +     const char *objdump_argv[] = {
> > +             "/bin/sh",
> > +             "-c",
> > +             NULL, /* Will be the objdump command to run. */
> > +             "--",
> > +             NULL, /* Will be the symfs path. */
> > +     };
> > +     struct child_process objdump_process;
> >       int err = dso__disassemble_filename(dso, symfs_filename, sizeof(symfs_filename));
> >
> >       if (err)
> > @@ -1878,7 +1885,7 @@ static int symbol__disassemble(struct symbol *sym, struct annotate_args *args)
> >
> >               if (dso__decompress_kmodule_path(dso, symfs_filename,
> >                                                tmp, sizeof(tmp)) < 0)
> > -                     goto out;
> > +                     return -1;
> >
> >               decomp = true;
> >               strcpy(symfs_filename, tmp);
> > @@ -1903,38 +1910,28 @@ static int symbol__disassemble(struct symbol *sym, struct annotate_args *args)
> >
> >       pr_debug("Executing: %s\n", command);
> >
> > -     err = -1;
> > -     if (pipe(stdout_fd) < 0) {
> > -             pr_err("Failure creating the pipe to run %s\n", command);
> > -             goto out_free_command;
> > -     }
> > -
> > -     pid = fork();
> > -     if (pid < 0) {
> > -             pr_err("Failure forking to run %s\n", command);
> > -             goto out_close_stdout;
> > -     }
> > +     objdump_argv[2] = command;
> > +     objdump_argv[4] = symfs_filename;
> >
> > -     if (pid == 0) {
> > -             close(stdout_fd[0]);
> > -             dup2(stdout_fd[1], 1);
> > -             close(stdout_fd[1]);
> > -             execl("/bin/sh", "sh", "-c", command, "--", symfs_filename,
> > -                   NULL);
> > -             perror(command);
> > -             exit(-1);
> > +     /* Create a pipe to read from for stdout */
> > +     memset(&objdump_process, 0, sizeof(objdump_process));
> > +     objdump_process.argv = objdump_argv;
> > +     objdump_process.out = -1;
> > +     if (start_command(&objdump_process)) {
> > +             pr_err("Failure starting to run %s\n", command);
> > +             err = -1;
> > +             goto out_free_command;
> >       }
> >
> > -     close(stdout_fd[1]);
> > -
> > -     file = fdopen(stdout_fd[0], "r");
> > +     file = fdopen(objdump_process.out, "r");
> >       if (!file) {
> >               pr_err("Failure creating FILE stream for %s\n", command);
> >               /*
> >                * If we were using debug info should retry with
> >                * original binary.
> >                */
> > -             goto out_free_command;
> > +             err = -1;
> > +             goto out_close_stdout;
> >       }
> >
> >       /* Storage for getline. */
> > @@ -1958,8 +1955,14 @@ static int symbol__disassemble(struct symbol *sym, struct annotate_args *args)
> >       }
> >       free(line);
> >
> > -     if (nline == 0)
> > +     err = finish_command(&objdump_process);
> > +     if (err)
> > +             pr_err("Error running %s\n", command);
> > +
> > +     if (nline == 0) {
> > +             err = -1;
> >               pr_err("No output from %s\n", command);
> > +     }
> >
> >       /*
> >        * kallsyms does not have symbol sizes so there may a nop at the end.
> > @@ -1969,23 +1972,21 @@ static int symbol__disassemble(struct symbol *sym, struct annotate_args *args)
> >               delete_last_nop(sym);
> >
> >       fclose(file);
> > -     err = 0;
> > +
> > +out_close_stdout:
> > +     close(objdump_process.out);
> > +
> >  out_free_command:
> >       free(command);
> > -out_remove_tmp:
> > -     close(stdout_fd[0]);
> >
> > +out_remove_tmp:
> >       if (decomp)
> >               unlink(symfs_filename);
> >
> >       if (delete_extract)
> >               kcore_extract__delete(&kce);
> > -out:
> > -     return err;
> >
> > -out_close_stdout:
> > -     close(stdout_fd[1]);
> > -     goto out_free_command;
> > +     return err;
> >  }
> >
> >  static void calc_percent(struct sym_hist *sym_hist,
> > --
> > 2.23.0.581.g78d2f28ef7-goog
>
> --
>
> - Arnaldo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAP-5%3DfUSNZWga5TDPk1aG6-VKKMHU8x0hF_t60sLJL5tvn4c2w%40mail.gmail.com.
