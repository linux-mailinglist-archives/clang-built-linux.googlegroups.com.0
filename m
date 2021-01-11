Return-Path: <clang-built-linux+bncBD66FMGZA4ILRZ7S74CRUBA5L5GXA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53e.google.com (mail-ed1-x53e.google.com [IPv6:2a00:1450:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id 4306D2F20A3
	for <lists+clang-built-linux@lfdr.de>; Mon, 11 Jan 2021 21:23:21 +0100 (CET)
Received: by mail-ed1-x53e.google.com with SMTP id g6sf197220edw.13
        for <lists+clang-built-linux@lfdr.de>; Mon, 11 Jan 2021 12:23:21 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610396601; cv=pass;
        d=google.com; s=arc-20160816;
        b=yJXDSpfvJc+oFJER+qv9+uEsUwCznZvswdU1Glf3Im8VpZxRgKCN9KEgkqqfpR8hy5
         sgQrtZOau6KnGA1GIiybBnduHYal8IBmCvRUOHa5Iln9jp8TYWsL2D9vMOEywp9GFFme
         VIdQNaFvltrCkzrlG95eyVzgP8mxX8t8zVtdexBb8ODGXujcZKlBDjyaDyRvPz9XJ6IT
         tv3LfGRW0Yn58AE5vunTUhOZhAWsdg0LzJf+UKK1s2PlKxVOZlwBfpeVQm5cC6ai/QRA
         eeB4Z83R+o+RdoyzXC87K6fR8Ur5rssvTYqGvCZSQUINcOFBAJgd8aCmAgqeYrAgycan
         Clyw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=WrZeE3eUqMekrrguufAu2oLjwHiO4Cz5JutYjpIPPqI=;
        b=n7cnwZnOB+ZWpGoVmZs7rl20moZpowaC8zgAWm85El55XiC9Q+ELVW4IwoevLMGko7
         f23pqQ8r93MpDHFKaWWUvCwW9szVcKDAx+ZkMwP65o9yNnabmM48CCzUlSX/v36RcGuM
         ShBWKdfzM0RjjmcpQrkWT7izAlub6by+3JFclunb2l141sNpkIll8tf28IofRzu6FyZM
         g23sKh3zcur7Jyygq18vdVuwrdfdJLraiaHkweD546LViAVOwn58lZ8VPNpeuecSizIs
         f+HAozw6DyydulxgrO9/8gV7nggYkjWJIF239+dc/WP80aD5kwrxVlof5HVtjDM0rBEy
         eq4Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=SQFbpF1X;
       spf=pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::633 as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WrZeE3eUqMekrrguufAu2oLjwHiO4Cz5JutYjpIPPqI=;
        b=MNXta1/byWlUTPHQxFFNDR0wJhZ/RFGiRGfCj033nDJ/9dAGPs4BF3G46aFUpgGtAj
         6r8vSW6hQlxPJXe+XjkwDw7eWf4aCTs6Q4JCXiD7qVj7I/SMjLWH38i5qiRkmCLRW6kP
         4DYCWCiGNhnoSYM1rPlNRscWEDna53VEnvfOluAibmIw4DnNnhI/o65Iwsu8k/heWpXR
         6k/DQXae8agHV4R5vTmIu8lhgbK5tuUswEKovy0NsxFbW1MqTRAD8c2aTEjbyOZKzK17
         2Xw5Ry3e+h2gd7mKLVEBL4MQsylKvNBR7MCSzs+ICq1R2P+Lszp1AyrUp2IfL5VKAjjd
         Ebyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WrZeE3eUqMekrrguufAu2oLjwHiO4Cz5JutYjpIPPqI=;
        b=t6V6tIsQ/MaN7YfM8y6Qch85WOUF4bmHZzA61NYqdWpuDFNNrc12lUhu5T+izsi7Oq
         V19CDUeGnkri8LGwyuCxbpSqRQL1kc0tSxDcLJAiC2W4V7yOVGXvb26v2/6bcJnyK5eM
         nokCeWHPRDpj1/2Y4isOM+T8iUEZkwtSp2m4NIQHlzU0hci87Fssyaf/GzzZB7NG7I+R
         HobN1qyLYsXIh7RdwiIPq3/iVy5ghxo34lAO5kroHWceM8k1+jnmDXg+ZyGbqVJMF44h
         J76E3jqi9hBXFXPRVaHBM4UDpfMZouRB1OS9pU/ySW2/kFAX7v6WfnRjHr5hvINs3wml
         u8FA==
X-Gm-Message-State: AOAM533yyZmV9gDDrVqOU+8Zi2W71jKQH3cTjLGtEWYASeSGDgR8+Vyn
	qNpnvR47P6XPuceYCncpN+E=
X-Google-Smtp-Source: ABdhPJw9Fn/Cv9RlS2+FSH0vX44gohid+/6T1I1SzD4nG+5CeCnFAFxOwRi2IzsD/forCp07OKuGQw==
X-Received: by 2002:a17:906:a8e:: with SMTP id y14mr778686ejf.47.1610396601066;
        Mon, 11 Jan 2021 12:23:21 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:5591:: with SMTP id y17ls305444ejp.5.gmail; Mon, 11
 Jan 2021 12:23:20 -0800 (PST)
X-Received: by 2002:a17:906:94cf:: with SMTP id d15mr769255ejy.271.1610396600252;
        Mon, 11 Jan 2021 12:23:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610396600; cv=none;
        d=google.com; s=arc-20160816;
        b=inSCD9LRuc1ZpWTJe7tFsJzc+8AYCr7kr3g8SeBCbpqeKrB/ukp7JeAg9AEuLBuNeB
         WVDaAcozUtm2aAQ85cq08aCnoYmVNWu1JMIrukTnwevrXIjdYWohagcU6Jl/r7SGs4ff
         t0dV61IYWJbMU5+3Hp6giLTHiD07xVPTeGw7NdrcnAGMWcYpZsv/uWABDnfpQ1iypX/H
         ZcqAoTXh2GoriHwz4ig41xPTBcejeZShCluX0JnuYM9StaTaAREO4DmwG3Nf/aK3BTUx
         14E3ccOs2+z4M8xOWnJ+JTSfng+XiMsj1GxJUN3MXNQf2IHTcHMoCqnJ5vuOryaWL8Yn
         D2KQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=bztGlj0aKk1h/1eIfyJjVJW7vahRd8KxmYcTiDCcm3U=;
        b=mw2GyiD0yws3ZK/Tw1dG+02J2mAErCxwsi2Kq4jdohbBrylez0A0rlnJZ4SIE+KkIa
         DNUjgZNgEVOxNORnwXTuCR6CSGmlQqcMO/Y3iVZkoK3f5vtCWGe35qaqGlKmsmZpc3g+
         eYU4r8kqIGeNDLemf5mf/gBXN5GTLFZlyq3F6MIuV0ACrn/68AuvQPQYVhqgzLMYxtZw
         gcdAKBI953r8KoBCCAgGo/MbrRt6wJ3rqQIZ0iYUy6OXj+V7PK42vdCmGZ6yLz3Ip23T
         YewqHrbPRygVflBI7qMD4qRD8G/0KYBHOQWovGW+lBsA4rL0093h+KFl5e9bVNcMYgx6
         tfPA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=SQFbpF1X;
       spf=pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::633 as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com. [2a00:1450:4864:20::633])
        by gmr-mx.google.com with ESMTPS id i3si36066edy.3.2021.01.11.12.23.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Jan 2021 12:23:20 -0800 (PST)
Received-SPF: pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::633 as permitted sender) client-ip=2a00:1450:4864:20::633;
Received: by mail-ej1-x633.google.com with SMTP id n26so207934eju.6
        for <clang-built-linux@googlegroups.com>; Mon, 11 Jan 2021 12:23:20 -0800 (PST)
X-Received: by 2002:a17:906:b002:: with SMTP id v2mr784732ejy.531.1610396599813;
 Mon, 11 Jan 2021 12:23:19 -0800 (PST)
MIME-Version: 1.0
References: <20210111081821.3041587-1-morbo@google.com> <20210111201224.l5r2zxuyd7ayszke@google.com>
In-Reply-To: <20210111201224.l5r2zxuyd7ayszke@google.com>
From: "'Bill Wendling' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 11 Jan 2021 12:23:08 -0800
Message-ID: <CAGG=3QWo5_wwTMHtif4BzFssByaW1ScvpaEH1p1nZ6ymVggLjA@mail.gmail.com>
Subject: Re: [PATCH] pgo: add clang's Profile Guided Optimization infrastructure
To: Fangrui Song <maskray@google.com>
Cc: Jonathan Corbet <corbet@lwn.net>, Masahiro Yamada <masahiroy@kernel.org>, linux-doc@vger.kernel.org, 
	LKML <linux-kernel@vger.kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Andrew Morton <akpm@linux-foundation.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: morbo@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=SQFbpF1X;       spf=pass
 (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::633 as
 permitted sender) smtp.mailfrom=morbo@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Bill Wendling <morbo@google.com>
Reply-To: Bill Wendling <morbo@google.com>
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

On Mon, Jan 11, 2021 at 12:12 PM Fangrui Song <maskray@google.com> wrote:
>
> On 2021-01-11, 'Bill Wendling' via Clang Built Linux wrote:
> >From: Sami Tolvanen <samitolvanen@google.com>
> >
> >Enable the use of clang's Profile-Guided Optimization[1]. To generate a
> >profile, the kernel is instrumented with PGO counters, a representative
> >workload is run, and the raw profile data is collected from
> >/sys/kernel/debug/pgo/profraw.
> >
> >The raw profile data must be processed by clang's "llvm-profdata" tool before
> >it can be used during recompilation:
> >
> >  $ cp /sys/kernel/debug/pgo/profraw vmlinux.profraw
> >  $ llvm-profdata merge --output=vmlinux.profdata vmlinux.profraw
> >
> >Multiple raw profiles may be merged during this step.
> >
> >The data can be used either by the compiler if LTO isn't enabled:
> >
> >    ... -fprofile-use=vmlinux.profdata ...
> >
> >or by LLD if LTO is enabled:
> >
> >    ... -lto-cs-profile-file=vmlinux.profdata ...
>
> This LLD option does not exist.
> LLD does have some `--lto-*` options but the `-lto-*` form is not supported
> (it clashes with -l) https://reviews.llvm.org/D79371
>
That's strange. I've been using that option for years now. :-) Is this
a recent change?

> (There is an earlier -fprofile-instr-generate which does
> instrumentation in Clang, but the option does not have broad usage.
> It is used more for code coverage, not for optimization.
> Noticeably, it does not even implement the Kirchhoff's current law
> optimization)
>
Right. I've been told outside of this email that -fprofile-generate is
the prefered flag to use.

> -fprofile-use= is used by both regular PGO and context-sensitive PGO (CSPGO).
>
> clang -flto=thin -fprofile-use= passes -plugin-opt=cs-profile-path= to the linker.
> For regular PGO, this option is effectively a no-op (confirmed with CSPGO main developer).
>
> So I think the "or by LLD if LTO is enabled:" part should be removed.

But what if you specify the linking step explicitly? Linux doesn't
call "clang" when linking, but "ld.lld".

-bw

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAGG%3D3QWo5_wwTMHtif4BzFssByaW1ScvpaEH1p1nZ6ymVggLjA%40mail.gmail.com.
