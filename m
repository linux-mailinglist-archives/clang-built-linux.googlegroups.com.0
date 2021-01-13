Return-Path: <clang-built-linux+bncBD66FMGZA4IOVWX574CRUBASPTC64@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x337.google.com (mail-wm1-x337.google.com [IPv6:2a00:1450:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 106AF2F54B7
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 Jan 2021 23:00:11 +0100 (CET)
Received: by mail-wm1-x337.google.com with SMTP id u18sf1333812wmu.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 13 Jan 2021 14:00:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610575210; cv=pass;
        d=google.com; s=arc-20160816;
        b=Lmqq99ZEIm/N1itDbNR80KnBUYnPN8XYCxWeX3YmrSqgVAMRL3Q8qPQ0tRJHu5+Bq6
         02E+D0zjxhnU7A6iboqAv10GdgDppJoaAffuKCJssm0IpwayJaxNMtK/vloUu4bOVjyn
         2HisEfRxik/ENvKgpB1tq7muEV9Ii1+P7bU6nWjNOl1Mfga0kth2fCyfNN/lsanfGWL/
         6NpMPnF0mYsiZEt7p0LSh13leAas6a08/PxluwHdnzvvhk7VN+/oNTysr76rbTJnAjr1
         NoJNQJzf5N/NeodJO2RMqv824QpeFDx6K9OGUu99WwtlzUpYzeqzI7huC+G4X+QOCeMy
         q5DA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=b1L/gcAuh8rYY/So3m0jkuq9VKHWWlMw1lv+joZv9vM=;
        b=AMqtZiPbqBgZJYYM/pxvaLWaP5a+c6QdkUuMYG016JbsVvqu0yM+sspDihLZU4+dMD
         rjJf1KFAlcUguwM6yaMa9EcLuyghRcDJRxxGAuiaiCSUA3jTtu7MyrMuUuQlXqnwwsbj
         Lz0FoaUbONDMpGl+tdLYyktf8raD8RkZAOLz+th16BGJsgUX/2H/FQ55Ts+hHuZJ3seR
         iDWtdlvllmQieP8NKyCWofikK9zshHy6mKFw4tEA5dFKsn9LOKJwsY7ZuPRbFNFTAM9q
         tjJIfBN0Cqsej3dTfCeztNHkrRmt1LasqeDn2dvy4hmfqn3Y6o6YeLyjXIpSs4o/xmBg
         pQWw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=uT51003C;
       spf=pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::532 as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=b1L/gcAuh8rYY/So3m0jkuq9VKHWWlMw1lv+joZv9vM=;
        b=WRZ3LFwIDFyLMnwcxRFSqJUcXtgOW3rm6lw7OeXj2HA/mc2jsAka/7NQ86VS3zaeq0
         nK2uSe1XjGkWFICKdI6PmyOjQAGLmtDiy7FvDj4JGbXjKecOCwO8zMsyZ7rZgYyJIOPg
         EDfudu4Sj1itt1rC3s/VpfKaCOQawqGy8X2vEgd6Cw575xE6NKUoBZZU/9Lmd0YQCnK1
         dyM3owkDp3y5zRaHBSIRXGABxYBMs7nEYs5yq2P/Ar0UkuaP3cutJ5eprdpFLQ+t4JEu
         +7MQlx+ycdCArBYBvfkaIynnsf+gSf5P2rFabJ2CahxPbIQe/6qoNadUUViLpshEhQKi
         PGDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=b1L/gcAuh8rYY/So3m0jkuq9VKHWWlMw1lv+joZv9vM=;
        b=AmDMF0NH3OBOotgF1pwyD+6HCxxcaU0YqJUK78mBrU7gQgR26szgOKhQukVvIRcst6
         mU6JIeBLYZ5JedbSQ4RSKxtfzOmYJvSbfuj4kTKADdoPVnwGUD6k7M75CxuhXvCR48KI
         ssz/n4iLVLGo504Z/Aktgi//2GBy3rIpBi4+5tnkl6prYZ2VO/Mse1u+THE2X1izzbym
         /0/pmeZcuzuEo9aVKJv1zIa92FwUaLFqxyO7eTC7EK1Lxucp+CShmtG9KZlQAL0P/r1M
         Hs9W8qxX/HgFUsUSOUo21OlOquJZy9ixFkAQmuBFA8TZ+00Bc/n8SvPiCPDFZt+tA/XL
         raVA==
X-Gm-Message-State: AOAM531FwYzwg54Uii4j2eRRDXIj9ZipTM4B28D3df80SanHzcuYkqoI
	0zO2Kq1B07N0fqwOxzQonh4=
X-Google-Smtp-Source: ABdhPJz6wxkkhXyJhpacXvj2Wz6IWZc2cr9hMfI4SVaT78sNpgYy5Cuyt1hXdyVZx+xMA+geXl5QkA==
X-Received: by 2002:adf:dcc5:: with SMTP id x5mr4522763wrm.167.1610575210799;
        Wed, 13 Jan 2021 14:00:10 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:bc56:: with SMTP id m83ls1702221wmf.1.canary-gmail; Wed,
 13 Jan 2021 14:00:10 -0800 (PST)
X-Received: by 2002:a7b:cb93:: with SMTP id m19mr1113547wmi.45.1610575209965;
        Wed, 13 Jan 2021 14:00:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610575209; cv=none;
        d=google.com; s=arc-20160816;
        b=bxX6IDA3X26PBu/ZQZQLyzxQg0qFVnm/JfoHiyt/D+ERBZIRy0DBWuxJUK2RC2l4bp
         zJ93j8Jo87IB2YO8IUri3qxYbOmpmkePyEEnDOzBic1QuPMj3D/QAp+VI8ASm8Qxme+m
         GAnd433H3MTZcg986n7FVQf7PvHZSoXVsJa4A2j8eQK2PMd9aXaad+W1ChBEz7/uUs2H
         7Pd/CyoeRZNtGacSlL7jTjoJpAbghbsjbcBbcNcQ0xCmJ0erwrbEBEhnJ+2MblAm9H3+
         OtapWYveE+1fq/PkCzvCtaRVIivj7BopJZ3pqXHQ1k4l/8le1fA26hph+G4jwY/Coxbj
         h4uA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=mT4FJ5faHT6kx4m/+VpI3KjNLQvDBDZDe9LTS609qwU=;
        b=XTU41HBgAKoNiyhCF+ybc8K+kDzClmY6DVqjcOVkgw0rUmD1s5oBTpxrqMjzPqQRY8
         +8+pJ3U9/JKJ5kQtVqJ+bcz9rEXw8UmYXfHDfwQu7YkFIJAhm+Lw79beZWt0cOuvUBpB
         ihIalXyRVxMuU1Aavs8VWb6/KPbJdMEaHBgs6lZBYrM9wFGrH0xxzZA2RjxJaKlucfFb
         0Eyq8E008Rzmyxq0pyzmb4ijBgStebN6UUMdn++MaOKLXCMSXtIObvzwGxFYPXsKTf2y
         TDYPzas1E7m7afc3R/nKAVYaAeaacXGMax+kOb7aEabyGwNldJhrkJUaJxJrZfIqcSNn
         5+NA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=uT51003C;
       spf=pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::532 as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com. [2a00:1450:4864:20::532])
        by gmr-mx.google.com with ESMTPS id d2si164019wrc.2.2021.01.13.14.00.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Jan 2021 14:00:09 -0800 (PST)
Received-SPF: pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::532 as permitted sender) client-ip=2a00:1450:4864:20::532;
Received: by mail-ed1-x532.google.com with SMTP id g1so2942445edu.4
        for <clang-built-linux@googlegroups.com>; Wed, 13 Jan 2021 14:00:09 -0800 (PST)
X-Received: by 2002:a05:6402:513:: with SMTP id m19mr3469396edv.244.1610575209296;
 Wed, 13 Jan 2021 14:00:09 -0800 (PST)
MIME-Version: 1.0
References: <20210112053113.4180271-1-morbo@google.com> <20210113061958.886723-1-morbo@google.com>
 <20210113205547.GA21653@Ryzen-9-3900X.localdomain>
In-Reply-To: <20210113205547.GA21653@Ryzen-9-3900X.localdomain>
From: "'Bill Wendling' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 13 Jan 2021 13:59:57 -0800
Message-ID: <CAGG=3QVK9KvxDi7b51Fyh=NLKVQka8ZxJeWzchaiDM=78_X3Tw@mail.gmail.com>
Subject: Re: [PATCH v4] pgo: add clang's Profile Guided Optimization infrastructure
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Jonathan Corbet <corbet@lwn.net>, Masahiro Yamada <masahiroy@kernel.org>, 
	Linux Doc Mailing List <linux-doc@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Andrew Morton <akpm@linux-foundation.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: morbo@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=uT51003C;       spf=pass
 (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::532 as
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

On Wed, Jan 13, 2021 at 12:55 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> Hi Bill,
>
> On Tue, Jan 12, 2021 at 10:19:58PM -0800, Bill Wendling wrote:
> > From: Sami Tolvanen <samitolvanen@google.com>
> >
> > Enable the use of clang's Profile-Guided Optimization[1]. To generate a
> > profile, the kernel is instrumented with PGO counters, a representative
> > workload is run, and the raw profile data is collected from
> > /sys/kernel/debug/pgo/profraw.
> >
> > The raw profile data must be processed by clang's "llvm-profdata" tool
> > before it can be used during recompilation:
> >
> >   $ cp /sys/kernel/debug/pgo/profraw vmlinux.profraw
> >   $ llvm-profdata merge --output=vmlinux.profdata vmlinux.profraw
> >
> > Multiple raw profiles may be merged during this step.
> >
> > The data can now be used by the compiler:
> >
> >   $ make LLVM=1 KCFLAGS=-fprofile-use=vmlinux.profdata ...
> >
> > This initial submission is restricted to x86, as that's the platform we
> > know works. This restriction can be lifted once other platforms have
> > been verified to work with PGO.
> >
> > Note that this method of profiling the kernel is clang-native, unlike
> > the clang support in kernel/gcov.
> >
> > [1] https://clang.llvm.org/docs/UsersManual.html#profile-guided-optimization
> >
> > Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> > Co-developed-by: Bill Wendling <morbo@google.com>
> > Signed-off-by: Bill Wendling <morbo@google.com>
> > Change-Id: Ic78e69c682286d3a44c4549a0138578c98138b77
>
> Small nit: This should be removed.
>
Grrr....The git hook keeps adding it in there. :-(

> I applied this patch on top of v5.11-rc3, built it with LLVM 12
> (f1d5cbbdee5526bc86eac0a5652b115d9bc158e5 + D94470) with Microsoft's
> WSL 5.4 config [1] + CONFIG_PGO_CLANG=y, and ran it on WSL2.
>
> $ zgrep PGO /proc/config.gz
> # Profile Guided Optimization (PGO) (EXPERIMENTAL)
> CONFIG_ARCH_SUPPORTS_PGO_CLANG=y
> CONFIG_PGO_CLANG=y
> # end of Profile Guided Optimization (PGO) (EXPERIMENTAL)
>
> However, I see an issue with actually using the data:
>
> $ sudo -s
> # mount -t debugfs none /sys/kernel/debug
> # cp -a /sys/kernel/debug/pgo/profraw vmlinux.profraw
> # chown nathan:nathan vmlinux.profraw
> # exit
> $ tc-build/build/llvm/stage1/bin/llvm-profdata merge --output=vmlinux.profdata vmlinux.profraw
> warning: vmlinux.profraw: Invalid instrumentation profile data (bad magic)
> error: No profiles could be merged.
>
> Am I holding it wrong? :) Note, this is virtualized, I do not have any
> "real" x86 hardware that I can afford to test on right now.
>
> [1]: https://github.com/microsoft/WSL2-Linux-Kernel/raw/linux-msft-wsl-5.4.y/Microsoft/config-wsl
>
Could you send me the vmlinux.profraw file? (Don't CC this list.)

-bw

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAGG%3D3QVK9KvxDi7b51Fyh%3DNLKVQka8ZxJeWzchaiDM%3D78_X3Tw%40mail.gmail.com.
