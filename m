Return-Path: <clang-built-linux+bncBD66FMGZA4ILVL7Q74CRUBBXWQ2BW@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33f.google.com (mail-wm1-x33f.google.com [IPv6:2a00:1450:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id B8A162F0EE6
	for <lists+clang-built-linux@lfdr.de>; Mon, 11 Jan 2021 10:17:46 +0100 (CET)
Received: by mail-wm1-x33f.google.com with SMTP id b194sf1955218wmd.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 11 Jan 2021 01:17:46 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610356666; cv=pass;
        d=google.com; s=arc-20160816;
        b=xDNo/35J+R9gdkPCC/VlqDI5ZhsN+doLjmEAtRZtoUicpmJF8kwkfXfq4PEH2vI2Yn
         zFuKDptCWsi1KRKatd/eS2wxDwS8mbMimyeY1XfK9j4Gk5vNdDfcNjau3DxmsYzP1cVQ
         9ZWmc/ANU3eJ1+c6mrILJ1QhXJh/hbwBfWzc+XwmIBCi9OeNm0OPjlzR/qLiejlh6SX+
         lcyYa/Go3RCgCYTGeIf95/os3164r2SGa5IZw2xARa6ReJbbJO5jmzhs72KVZF5m6Ubw
         X8+M6Kf2vPLA4V7TSYSEb8yZFrbun43D18AX6caO4p7XT85uC2WvFicnzJhn8MN+h8Ui
         752A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=vNi+0RZ9Ahw1t92U/UpOcmxbDjsX6z+7MpjvAQs8yWw=;
        b=iObnPiK3hFKjK49mnNKRW8Me/ikiru+DA9wAvlo9o821egbaxWbMwfLwi76Fgs6sA8
         J8pm//qkXHZdUz7LMIGwIZ4/uFLq93ejRdnLJVzouv44nqXnUHkPZN1EKYwxYSRuLoa3
         hmGKF5dy/3SWdj+I0Bu9qqtIY/9XsQOG4Cqb2zWnP6HHwwWKmO1S+B0jD1hjPTBlfefi
         U0WStvzgxhQWewZ+aXE/gKvXtNQc/e4mrqzPu/rccyvWqe7TdO5409r7wxq5UgUuQ0vo
         H9881uwW2bOFFeFbZwGPfY6P+PcsUixVUuXajovMmt0q9kOsHkCUm9mjd/ZC4Ej9sMao
         FiWw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=PU6XsOP4;
       spf=pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::533 as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vNi+0RZ9Ahw1t92U/UpOcmxbDjsX6z+7MpjvAQs8yWw=;
        b=ciSNfFToa1ezLTRtfgT3cHd9etk2QueuMZtyx07uPoA3SK5E2vwpZ/2WxH+Jr99rzw
         /kcZpAnCW2xuTXutmOFHOpPIA+MiTSfytg9SOxlpCbWWL6eVKiLl21OOGSIWjT88VMm3
         VFhcC1wisW2v152JaNJKLDT8r5b0n+KmElFUp+32ZO3Vth2T5w57puaKZ5sXbb8B4W3/
         CtSFCK1ZNeVxGdImY0W3qeq5NNbImcGXNCkTP5JAagLNgvZqP8P7jLMMOYCk+7Kv1GfD
         BIIRuaDCEAv+fl0Q1OjR+jN1CPec+sV2XLh5K0iPt9aK23LmqaSPwx9Fhb9EJU8L8Jlf
         U/Iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vNi+0RZ9Ahw1t92U/UpOcmxbDjsX6z+7MpjvAQs8yWw=;
        b=ECKrwGdN0jUHVTzWZUJUK28m4hqPBGKFXXZF96o8szugKgLQGkYqZeN9WtXJuCfNf4
         0JALCoGJX455HsxUhMtn7brdhc4rDjJyyNlAmk6M31PVkPZM2wjYMQeToDAzfoFuaUNc
         qVePpm988QMpgT9OSpSLocq0imKVWz8MbjDDqrvaj3+yKd47wPtVpTVpgdxM2GyZ3mS/
         xVkJ0rAO+fNRMiULOxrwKRqnOwfYomN+nlylKaC4aE3XBQBRBw4g5VZKQ4eSH1uuLdtd
         JgC9jFdFtVLIfNvpJIXUKa/0uOvcuuETlKX4C+Y4eVGpHELzqPJOvX7dlIEc1LOxD1/S
         yFCg==
X-Gm-Message-State: AOAM530g5+f6ap8Dc0eRL5q3YyXrr7ct8BOgGvCH3LRpNPRs5xxzdshs
	x0LNlMWwBM1v3PoHxF7ziQY=
X-Google-Smtp-Source: ABdhPJzXJ1Qe2bXENNsOVbJernNd9+8DryZtsAKS9O+HNHJneWJsvtKGocGlyxCN7e6YPDkqtIeKQA==
X-Received: by 2002:a5d:58d3:: with SMTP id o19mr15659746wrf.250.1610356666471;
        Mon, 11 Jan 2021 01:17:46 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:cbd5:: with SMTP id n21ls7945086wmi.3.gmail; Mon, 11 Jan
 2021 01:17:45 -0800 (PST)
X-Received: by 2002:a1c:bc57:: with SMTP id m84mr13684236wmf.163.1610356665668;
        Mon, 11 Jan 2021 01:17:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610356665; cv=none;
        d=google.com; s=arc-20160816;
        b=BRzczzyjlYh7V6lJ/Q015mlyxvWrRu0ZELmNSz8IW8DjZUaFE9IogFn09BRfapSzzX
         2kpTyyGbqmDl+SKB3xF3toeUYxdRtB40EOMsAO8j5EMZNEw5bXCuJ9wkt8G+L0esfHUa
         oq9LOCI9m4zwGqi2Wvw5tPeUHjTFbFGxo9XCyE9YV7B03lzqnpTqK4apdtCjw3qkXVPb
         r0Rsafr3ybrbBPiGxcbHtoEgc9SvWRs/5l0LBuN1Ada0i4mCoe6wumQzvSdVF6U1D7L9
         tp3LSVZXrZrxVyF0WnKU4hH3Nq3ukTScG52l9RdPKkkcAG9usGxK2kpGsfx95YdIPkML
         JHxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=LaTp5Y5Nk9Ij1O9UX9G8J8yj5l061X+cBmCeyjMzuRA=;
        b=wnlATtuhYZUmQaHaXf/iVdta5wyscJYEaa4QcUU7V/qpOy3KFA/w/BIIvv0Oq7xEon
         XwswFoAYdfMJ/2+yXsEw30lhkBN2Mh3LXDXPuBj1uvIdVVDGqBKP/YvRgEGr4Nxq2ZWc
         iPIDDzo8YQ1ghIv1k9HREqjjEEq1cNYiZiJjoJOy7RO2PTHfZZ1viWDXI1XveW+ioksl
         kErKu54qvRT0TlXAYXvplxc7rbwUAf4MRvA79kLteu5DTLuaE+0uoZYDddsrOovbAw2w
         fpiQXFwyzDCJF6kogJm/k5xNGjZ5g6Z9PpwxuHqCz6NZ9xtOyfgPQuZe+pGX/Z2a2z7x
         I5Lw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=PU6XsOP4;
       spf=pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::533 as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com. [2a00:1450:4864:20::533])
        by gmr-mx.google.com with ESMTPS id z188si1056058wmc.1.2021.01.11.01.17.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Jan 2021 01:17:45 -0800 (PST)
Received-SPF: pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::533 as permitted sender) client-ip=2a00:1450:4864:20::533;
Received: by mail-ed1-x533.google.com with SMTP id i24so17974238edj.8
        for <clang-built-linux@googlegroups.com>; Mon, 11 Jan 2021 01:17:45 -0800 (PST)
X-Received: by 2002:a50:a694:: with SMTP id e20mr13412711edc.261.1610356665096;
 Mon, 11 Jan 2021 01:17:45 -0800 (PST)
MIME-Version: 1.0
References: <20210111081821.3041587-1-morbo@google.com> <CA+icZUUUTEdRNbmORy4X=UqMHLMEfD186o2mh23v_mXGBM8Anw@mail.gmail.com>
In-Reply-To: <CA+icZUUUTEdRNbmORy4X=UqMHLMEfD186o2mh23v_mXGBM8Anw@mail.gmail.com>
From: "'Bill Wendling' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 11 Jan 2021 01:17:33 -0800
Message-ID: <CAGG=3QUHWkuF0Q-=tNO5PztqtxuKYgyQy_EbBLyL0xNQ7TjgoQ@mail.gmail.com>
Subject: Re: [PATCH] pgo: add clang's Profile Guided Optimization infrastructure
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Jonathan Corbet <corbet@lwn.net>, Masahiro Yamada <masahiroy@kernel.org>, linux-doc@vger.kernel.org, 
	LKML <linux-kernel@vger.kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, 
	Andrew Morton <akpm@linux-foundation.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: morbo@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=PU6XsOP4;       spf=pass
 (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::533 as
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

On Mon, Jan 11, 2021 at 12:39 AM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> On Mon, Jan 11, 2021 at 9:18 AM 'Bill Wendling' via Clang Built Linux
> <clang-built-linux@googlegroups.com> wrote:
> >
> > From: Sami Tolvanen <samitolvanen@google.com>
> >
> > Enable the use of clang's Profile-Guided Optimization[1]. To generate a
> > profile, the kernel is instrumented with PGO counters, a representative
> > workload is run, and the raw profile data is collected from
> > /sys/kernel/debug/pgo/profraw.
> >
> > The raw profile data must be processed by clang's "llvm-profdata" tool before
> > it can be used during recompilation:
> >
> >   $ cp /sys/kernel/debug/pgo/profraw vmlinux.profraw
> >   $ llvm-profdata merge --output=vmlinux.profdata vmlinux.profraw
> >
> > Multiple raw profiles may be merged during this step.
> >
> > The data can be used either by the compiler if LTO isn't enabled:
> >
> >     ... -fprofile-use=vmlinux.profdata ...
> >
> > or by LLD if LTO is enabled:
> >
> >     ... -lto-cs-profile-file=vmlinux.profdata ...
> >
> > This initial submission is restricted to x86, as that's the platform we know
> > works. This restriction can be lifted once other platforms have been verified
> > to work with PGO.
> >
> > Note that this method of profiling the kernel is clang-native and isn't
> > compatible with clang's gcov support in kernel/gcov.
> >
> > [1] https://clang.llvm.org/docs/UsersManual.html#profile-guided-optimization
> >
>
> Hi Bill and Sami,
>
> I have seen the pull-request in the CBL issue tracker and had some
> questions in mind.
>
> Good you send this.
>
> First of all, I like to fetch any development stuff easily from a Git
> repository.

The version in the pull-request in the CBL issue tracker is roughly
the same as this patch. (There are some changes, but they aren't
functionality changes.)

> Can you offer this, please?
> What is the base for your work?
> I hope this is (fresh released) Linux v5.11-rc3.
>
This patch (and the PR on the CBL issue tracker) are from top-of-tree Linux.

> I myself had some experiences with a PGO + ThinLTO optimized LLVM
> toolchain built with the help of tc-build.
> Here it takes very long to build it.
>
> This means I have some profile-data archived.
> Can I use it?
>
LLVM is more tolerant of "stale" profile data than gcov, so it's
possible that your archived profile data would still work, but I can't
guarantee that it will be better than using new profile data.

> Is an own PGO + ThinLTO optimized LLVM toolchain pre-requirement for
> this or not?
> That is one of my important questions.
>
Do you mean that the LLVM tools (clang, llc, etc.) are compiled with
PGO + ThinLTO?

-bw

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAGG%3D3QUHWkuF0Q-%3DtNO5PztqtxuKYgyQy_EbBLyL0xNQ7TjgoQ%40mail.gmail.com.
