Return-Path: <clang-built-linux+bncBDPPFIEASMFBBZWKZXZAKGQEYZZZ6AA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3b.google.com (mail-yb1-xb3b.google.com [IPv6:2607:f8b0:4864:20::b3b])
	by mail.lfdr.de (Postfix) with ESMTPS id B83BA169E12
	for <lists+clang-built-linux@lfdr.de>; Mon, 24 Feb 2020 06:55:51 +0100 (CET)
Received: by mail-yb1-xb3b.google.com with SMTP id b128sf4613416yba.15
        for <lists+clang-built-linux@lfdr.de>; Sun, 23 Feb 2020 21:55:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582523750; cv=pass;
        d=google.com; s=arc-20160816;
        b=QAFb+l6wsFUDkD2kbLB3KauHwvMpWi3a8UKbUrTg6RzpihW1L6Xfa2NcogWvrGtnkL
         5g2psiJnnDWSf1W0r29tC7SXUtfcjuHSHP9tk+WJfuhBjnEJ882rH3CH4dykxT7IPCxY
         KF/6P97iMI7oEtRA8tAFigsbbrDSafGkIRbV8OBaItBicui50VpYWDytMt7/HU6u6OMJ
         8q14eM9Y7+bKEvWFCZvEwHjqyEAPwuINb0gnRRCRpqyabtNv5bxQseiaRi1ijAiHe1dF
         eu29wSBBKsMxga/hW4wAlW1RZHnjAp6w7l8ptKDoJgKavLvjBDEzZBu2xI4+8gYOjNu7
         J6kg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=A3VY17RwJi6dgFG9ZbnOjQXHjhug0UybwwqrMV5psVs=;
        b=mu5bavJ66Sn2P7IfEwLSJ1zMatk38V84YwgC6Su2x1f5EqAE6v+cpZiJo1S+nNuWBW
         8Cf5vba/djApDLuTme33kH46DPtcWJaLPwwXD1Akaz0laIsFx9KMZ0ww8WdUVNEiW3UC
         /p5aB1Ne8d2yEXeZyB9V0hztjGObTDmHD2f27y+YokyTqkLzBY9AGc4IvYOvIzNXZaTS
         c5CbUT27L9tFA1S4PolehkRhsTdItpqehOAjqaBeZ+2w8+me41yqDlqWjUSaHIiWvHlq
         XVSIP6pPY7idGdOkz4UkMqHDLzgTczQSPBhXK7U3/aAVYMURBnXhMiBk6j5vUYrgsnxK
         FyJw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=vMtEDPiR;
       spf=pass (google.com: domain of irogers@google.com designates 2607:f8b0:4864:20::c42 as permitted sender) smtp.mailfrom=irogers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=A3VY17RwJi6dgFG9ZbnOjQXHjhug0UybwwqrMV5psVs=;
        b=WUwJFbzitZ52rAB0J7n9WLUuid+iK4k3f6p8X3V2hS/LnAMZzf96Q5/2/OPfLW4zTI
         SoPVlUQcKDyh88fV1pBv+Jkh+rdHkt9kFD6cg8LBnRm946VfnGT3PNmtHKsxVSYd+VgX
         1fPYGzs953zgvubAeZKYpIZgwVCby2Axly22BfSH/o1Pgh1nGq4xSu44IpSZIzEXSXI4
         jvJ6hoNfObr01FsZKHSX6Pqr5pH5MPs81fPmakcN2O24ZAnpac0fLdsq/irREWKNxxRh
         mzK3+hMwpBS19b3b6+LQA+MtKQM4a23dqP9wam9bmD4Ejj/HKSg9LZ+pJ1kl9olY8Q5J
         grFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=A3VY17RwJi6dgFG9ZbnOjQXHjhug0UybwwqrMV5psVs=;
        b=I+mwuMq8Hjhlj0L6QHZlf/qOBqCep/hnL101JMCfBMliF/goyBxyakGBp50lJftQLJ
         eOKfYfM4L2cEaly0eX0qj87kwRRNj8Y37gQtzAdox89z7B2DyWdmfaJ+HhXlEF+CYGgb
         x5JwALJB3Fk2iz69D6V2Mu1V8qis9izR3lJT/OSbWO1nYHw1HCZt34ZzX/qYtv1+x/ZO
         /kIanxE1EPzFFQvGd9jaxkxSH42rJS5z/wkbwg2MgpJ5+f28INEqDFxcR7iSOT1jtRV1
         2c91GOm4hcw/IctqzRkBbvaB+o2X/e/HvZNRKSLLNUh0YkYddytvOE2R9iXMxXHDvWOy
         g3vw==
X-Gm-Message-State: APjAAAXh7IhU0DQL88RozeFKYmoEgENYCstGci2dFpPm5Gy4qOs2TjJ/
	zACirKhhNF/k4u/5pazCGdY=
X-Google-Smtp-Source: APXvYqwnA8EekgNUB222E7Znm3QjqcrUwqopITPCrma84cmXfPi3bH+tZbPrlC2eCK0mU5hiYGchOg==
X-Received: by 2002:a25:c101:: with SMTP id r1mr43278934ybf.283.1582523750420;
        Sun, 23 Feb 2020 21:55:50 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:d648:: with SMTP id n69ls1086324ybg.7.gmail; Sun, 23 Feb
 2020 21:55:50 -0800 (PST)
X-Received: by 2002:a25:bd85:: with SMTP id f5mr16015178ybh.274.1582523750033;
        Sun, 23 Feb 2020 21:55:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582523750; cv=none;
        d=google.com; s=arc-20160816;
        b=devxO99t3qko7YvM4rDGy0CH5HYsCEWpC1vDehbX2+yJw4/2jYB78KSCyvm9RAk55W
         e2SrFiIsEPvYMAgjWWt9M2B6FabDe4YBK08snjgFPrsl2tr/hX4w5iLc5A/lKUE9nDWP
         iz+Biku1MnH1C8YtXHwZTUbmQQ7q2xaDzTlmEP68ZiGGUTm8snS/T7vbFfg8vnPx/k4x
         PW98T+7VQ4ipdkWDZfmTL8VxKT0WKOTjDJQ2DQZadchnPxCssYC7mzfeIXX+MUu7CSwn
         Az7mA3lk5VLa3GXLFmj5CTEuvy1xJ0FSFdS6+Gtk1SN0z/rz7gCxgCcS27diq8cUCsd6
         9weA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=b50opdvh9jm466J7F1sa7QuBxXpc5U92ofilJPUB76Y=;
        b=aNKvJ+GCEeMydd4c/pa/4LHIlT7Ls36ajtJi8HoVbMDcHem52RS2FafXjYuytEwSTY
         i4feXo8dMe+ON6jLABvqvgMdoN4l60rMdkUUgqWQvDLqzBSSrBzU/vcudIszlAbpCUCm
         yUvoyDgMO5sfnCiSkNtR2U4wG6WUodreSOiS4YOxK9bMob6Nw5+fQ2rHkhyXhT7Uw2Zh
         +MgPaQUg6ZUlfFvVhXegs+45vybDOAWz9u+27lKLQ1D7tHZK86I24/RHp6DbxbVry7Aj
         JvkvkkdC4AeT/sU9Y3l9C/pf3/8Dw130rakitzzMwEkGbNFViz3+/xZemv4HyEnJ7PwB
         r7Xg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=vMtEDPiR;
       spf=pass (google.com: domain of irogers@google.com designates 2607:f8b0:4864:20::c42 as permitted sender) smtp.mailfrom=irogers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yw1-xc42.google.com (mail-yw1-xc42.google.com. [2607:f8b0:4864:20::c42])
        by gmr-mx.google.com with ESMTPS id g27si876563ybe.1.2020.02.23.21.55.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 23 Feb 2020 21:55:50 -0800 (PST)
Received-SPF: pass (google.com: domain of irogers@google.com designates 2607:f8b0:4864:20::c42 as permitted sender) client-ip=2607:f8b0:4864:20::c42;
Received: by mail-yw1-xc42.google.com with SMTP id l5so4737584ywd.4
        for <clang-built-linux@googlegroups.com>; Sun, 23 Feb 2020 21:55:50 -0800 (PST)
X-Received: by 2002:a81:3694:: with SMTP id d142mr39726193ywa.392.1582523749424;
 Sun, 23 Feb 2020 21:55:49 -0800 (PST)
MIME-Version: 1.0
References: <20200223193456.25291-1-nick.desaulniers@gmail.com>
In-Reply-To: <20200223193456.25291-1-nick.desaulniers@gmail.com>
From: "'Ian Rogers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Sun, 23 Feb 2020 21:55:38 -0800
Message-ID: <CAP-5=fU=+uYZDb2uSFO8CTJ-Ange4Nxh4mmsOC1MS=Tedois9g@mail.gmail.com>
Subject: Re: [PATCH] perf: fix -Wstring-compare
To: Nick Desaulniers <nick.desaulniers@gmail.com>
Cc: Arnaldo Carvalho de Melo <acme@kernel.org>, Ingo Molnar <mingo@redhat.com>, 
	Peter Zijlstra <peterz@infradead.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Mark Rutland <mark.rutland@arm.com>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, Jiri Olsa <jolsa@redhat.com>, 
	Namhyung Kim <namhyung@kernel.org>, Jin Yao <yao.jin@linux.intel.com>, 
	Changbin Du <changbin.du@intel.com>, John Keeping <john@metanate.com>, 
	Song Liu <songliubraving@fb.com>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: irogers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=vMtEDPiR;       spf=pass
 (google.com: domain of irogers@google.com designates 2607:f8b0:4864:20::c42
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

On Sun, Feb 23, 2020 at 11:35 AM Nick Desaulniers
<nick.desaulniers@gmail.com> wrote:
>
> Clang warns:
>
> util/block-info.c:298:18: error: result of comparison against a string
> literal is unspecified (use an explicit string comparison function
> instead) [-Werror,-Wstring-compare]
>         if ((start_line != SRCLINE_UNKNOWN) && (end_line != SRCLINE_UNKNOWN)) {
>                         ^  ~~~~~~~~~~~~~~~
> util/block-info.c:298:51: error: result of comparison against a string
> literal is unspecified (use an explicit string comparison function
> instead) [-Werror,-Wstring-compare]
>         if ((start_line != SRCLINE_UNKNOWN) && (end_line != SRCLINE_UNKNOWN)) {
>                                                          ^  ~~~~~~~~~~~~~~~
> util/block-info.c:298:18: error: result of comparison against a string
> literal is unspecified (use an explicit string
> comparison function instead) [-Werror,-Wstring-compare]
>         if ((start_line != SRCLINE_UNKNOWN) && (end_line != SRCLINE_UNKNOWN)) {
>                         ^  ~~~~~~~~~~~~~~~
> util/block-info.c:298:51: error: result of comparison against a string
> literal is unspecified (use an explicit string comparison function
> instead) [-Werror,-Wstring-compare]
>         if ((start_line != SRCLINE_UNKNOWN) && (end_line != SRCLINE_UNKNOWN)) {
>                                                          ^  ~~~~~~~~~~~~~~~
> util/map.c:434:15: error: result of comparison against a string literal
> is unspecified (use an explicit string comparison function instead)
> [-Werror,-Wstring-compare]
>                 if (srcline != SRCLINE_UNKNOWN)
>                             ^  ~~~~~~~~~~~~~~~
>
> Link: https://github.com/ClangBuiltLinux/linux/issues/900
> Signed-off-by: Nick Desaulniers <nick.desaulniers@gmail.com>
> ---
> Note: was generated off of mainline; can rebase on -next if it doesn't
> apply cleanly.

Looks good to me. Some more context:
https://clang.llvm.org/docs/DiagnosticsReference.html#wstring-compare
The spec says:
J.1 Unspecified behavior
The following are unspecified:
.. Whether two string literals result in distinct arrays (6.4.5).

>  tools/perf/builtin-diff.c    | 3 ++-
>  tools/perf/util/block-info.c | 3 ++-
>  tools/perf/util/map.c        | 2 +-
>  3 files changed, 5 insertions(+), 3 deletions(-)
>
> diff --git a/tools/perf/builtin-diff.c b/tools/perf/builtin-diff.c
> index f8b6ae557d8b..c03c36fde7e2 100644
> --- a/tools/perf/builtin-diff.c
> +++ b/tools/perf/builtin-diff.c
> @@ -1312,7 +1312,8 @@ static int cycles_printf(struct hist_entry *he, struct hist_entry *pair,
>         end_line = map__srcline(he->ms.map, bi->sym->start + bi->end,
>                                 he->ms.sym);
>
> -       if ((start_line != SRCLINE_UNKNOWN) && (end_line != SRCLINE_UNKNOWN)) {
> +       if ((strncmp(start_line, SRCLINE_UNKNOWN, strlen(SRCLINE_UNKNOWN)) != 0) &&
> +           (strncmp(end_line, SRCLINE_UNKNOWN, strlen(SRCLINE_UNKNOWN)) != 0)) {
>                 scnprintf(buf, sizeof(buf), "[%s -> %s] %4ld",
>                           start_line, end_line, block_he->diff.cycles);
>         } else {
> diff --git a/tools/perf/util/block-info.c b/tools/perf/util/block-info.c
> index c4b030bf6ec2..fbbb6d640dad 100644
> --- a/tools/perf/util/block-info.c
> +++ b/tools/perf/util/block-info.c
> @@ -295,7 +295,8 @@ static int block_range_entry(struct perf_hpp_fmt *fmt, struct perf_hpp *hpp,
>         end_line = map__srcline(he->ms.map, bi->sym->start + bi->end,
>                                 he->ms.sym);
>
> -       if ((start_line != SRCLINE_UNKNOWN) && (end_line != SRCLINE_UNKNOWN)) {
> +       if ((strncmp(start_line, SRCLINE_UNKNOWN, strlen(SRCLINE_UNKNOWN)) != 0) &&
> +           (strncmp(end_line, SRCLINE_UNKNOWN, strlen(SRCLINE_UNKNOWN)) != 0)) {
>                 scnprintf(buf, sizeof(buf), "[%s -> %s]",
>                           start_line, end_line);
>         } else {
> diff --git a/tools/perf/util/map.c b/tools/perf/util/map.c
> index a08ca276098e..95428511300d 100644
> --- a/tools/perf/util/map.c
> +++ b/tools/perf/util/map.c
> @@ -431,7 +431,7 @@ int map__fprintf_srcline(struct map *map, u64 addr, const char *prefix,
>
>         if (map && map->dso) {
>                 char *srcline = map__srcline(map, addr, NULL);
> -               if (srcline != SRCLINE_UNKNOWN)
> +               if (strncmp(srcline, SRCLINE_UNKNOWN, strlen(SRCLINE_UNKNOWN)) != 0)
>                         ret = fprintf(fp, "%s%s", prefix, srcline);
>                 free_srcline(srcline);
>         }
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200223193456.25291-1-nick.desaulniers%40gmail.com.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAP-5%3DfU%3D%2BuYZDb2uSFO8CTJ-Ange4Nxh4mmsOC1MS%3DTedois9g%40mail.gmail.com.
