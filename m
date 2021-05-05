Return-Path: <clang-built-linux+bncBDRZHGH43YJRB4OGZKCAMGQENKRZ6ZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 38C19373CB6
	for <lists+clang-built-linux@lfdr.de>; Wed,  5 May 2021 15:53:55 +0200 (CEST)
Received: by mail-pf1-x43d.google.com with SMTP id a8-20020a62d4080000b029028db7db58adsf1441203pfh.22
        for <lists+clang-built-linux@lfdr.de>; Wed, 05 May 2021 06:53:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620222833; cv=pass;
        d=google.com; s=arc-20160816;
        b=Nbpxbb0HapCQKd6sz1f2LzIxHIIljHw5t78A6VfVho00SxHusJDCgbYYwwT608Rxb8
         obSyhb6s9iIqeYcxb4L7lfAqkf3nO1LQ9Q5aYWit82irCxvR3wGbffT7HRitP5yPfF4Q
         ZApHtPkRr9lQ7za2bk+SL9T+5WqGkE5YmRlSQWseAlLVETNsmeqzehuGnDz6keUBPxaO
         ZCzYqz3/wsgM1YAR5gntFOC942OiARdqTNUHXY556TQcFlqpZuiJmOglVwK6kUINWQgI
         dobTnLLrMB+eiwx5zI49HTKGEK39Ww6V+YxEF5opDqf1OwD4F46j3yJnMCR/oOhrv3h6
         +bdQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=TGrfeSrVTjxRaV2m63A9s0BbEEVnEmZLYMujNpQpN/0=;
        b=sfz+TZjAYBmB9OHoS1/8zxwAAXuhTdmAY9MTGllKkVuHn4jBObJqupeuGK1tbOTwW7
         iRCPbuYt23C+dd5us3dQvNbx4RJ3K6LYh9asYU8TR1UgGOXY75P/C7uUkO94aVrhTDEg
         Mjydx7H2jNW1q+rJTwCSjfNSn7veuh4MxAUd49P3onxppel5yOMPEQX22vTH6/oySrj/
         KvThRA0o6hEOsTDaKk2NLUXQaUig69S2hw/hoR0SW90rz88k79PQiKuXGQ85N+9CpYiP
         Ca94AdiGHYgrn9/OH7ZHzqL0NL7Ut2LDzecyM1JviotKMfmJQeMH5ZH9ebrxpXgG+VMz
         xmPA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JfKZNrdn;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b30 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TGrfeSrVTjxRaV2m63A9s0BbEEVnEmZLYMujNpQpN/0=;
        b=kaqMd7nHDqmjiB6+3ocKYJLWupen7SP4KOOgJjpIYyNTHqDRQD/fe6mM8+p55K7Csk
         g+iRQGcIn2SX2JNlrmIZTY9LRG7sfjz/V3jj7AJizSgB3XkWz/kOH3p/5EuMid10jj1r
         TXswcBEzJrYd7X9gZfmiNepzDTkNXkoE/Sd+qDk9GFuL0iLNmYNE6T64WklxvEZInU7H
         r1bT0H36b5SR9pv0jKFEC7xGK4B/7sP36F4aunYI6AVeLNO1d/mGNuf5V49KyGQx5A71
         4qZX6ROhihGFkf/wHX5IxqjUkvj/L5iAVqyyhx3YT0V8pnHB4EKaC3UUCmP36d9ryqoN
         82JQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TGrfeSrVTjxRaV2m63A9s0BbEEVnEmZLYMujNpQpN/0=;
        b=KbxXQt7A7qVaQgHcgE6JUYErxEPloLewGp49v0dDu3RLjh1uFoLuJcXUAjezVIY0oY
         7uTuJ/o5VDs6SeHZs2JkCVeVx+oQ9whfFybLbiNlIJTOZAZo577emF7ccTpwLmNoykJI
         Fsc5/pxzZF5ws+QVfefI9UBFkoQerXHpU7xmgceXHOVN82QQeN+YJFPlTd40kCaE/xiJ
         lWtpOuzCsmHsVZni6UxfZl3IM6e9CSJf0YH12LxRVzqRt+bf45Y5lZGxoJkeQhEvDw+p
         Sy762vw/gu+bLwO9dgXhZHcIXsyoVQraCdCXI0siwnYGfq9tIzVUqpPwd+XjWxhOPVTt
         gsqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TGrfeSrVTjxRaV2m63A9s0BbEEVnEmZLYMujNpQpN/0=;
        b=XRgmrEGEGSer5IRYNsV0ImCArmJeewQGkT+y3fJ5kTlqsQA58iEpP449xgIkFEYKy3
         uu3ln05tzWVI2TL+cM6Y61s9AA9Mki8VQnRv2LbIyxNlg7kwcgSJ/A7YpqyJi84jo7ey
         T5j50kbpGiCNMEijzvDRPAC8SYTfkAP2JuS9fzOLQTO0DIKMEouaa8Zlb79LrNstL0XP
         qtvHDrs17nCWDSkSiPZuxI3WNfbs8Lc/CQn8su4O2RLeuOTcAWgchklK8ac/r5xw3D6h
         6J1CVlcFYn51631eZWGKsbOPZ1+mUpJ3v5+7py7k8S4XleFO6XPTArYrIzt5xFOwwtQD
         NluQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532X43qeoK4i41QGYnAA4V3yYeXqNaENA856Ty0NnG7e9AyRojW6
	123m/jnkppJl+tj2VGPSi0M=
X-Google-Smtp-Source: ABdhPJw2CIy8IxbvxddxOyEzWtS18h4WyMn9yx5G+p4tTNR6I7/ISjugDn1R7wOjy5f6c8abbMcmgw==
X-Received: by 2002:a17:902:bc88:b029:ee:7ef1:e770 with SMTP id bb8-20020a170902bc88b02900ee7ef1e770mr31714263plb.19.1620222833431;
        Wed, 05 May 2021 06:53:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:314b:: with SMTP id x72ls4115623pgx.0.gmail; Wed, 05 May
 2021 06:53:52 -0700 (PDT)
X-Received: by 2002:a63:150c:: with SMTP id v12mr28659560pgl.344.1620222832782;
        Wed, 05 May 2021 06:53:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620222832; cv=none;
        d=google.com; s=arc-20160816;
        b=mytU/P4NUOGG4s6Fa7LAVAstaKzO/mOrkIb2f4yxnJC/zxRmRkrVKcVZp7ND/f13GV
         3OFRQnictO6/NWIxlG9KIC4IIYE0FmI/PWCogr2UTRzwa9eXjunQpBBs3pbS4aeVAEQG
         XV+2mU1dQbMJaUeChR+aCxwAiK3FP5G1/LPzCKH4R1qXuMajmo4bKhP+7CQS/KA9WDXL
         e8VxKVEXwAvgjE93zE1T0CjOX++jo+Xi+JYV19ZV62D6dm+TAjR9u6HEmcKx6x2Npgbg
         IpRb2OeKJ0e/PLmxl1DDg+hpHO1VhMWmOyYcjND4sh1q1g6i4ce54mrDR1MnZ4TmsnTh
         GO4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=clf2wb3Wvwg3HyTYmDIH3OCqRQ4Qu8WPQlaPdGBfodo=;
        b=HnaytVtklC6qm/Kayrh5IhS5PJh6qzqv/oJFRm626JHjCnOcLZ/WeWGjYPBloiZSDT
         Ldoyysz4A4OvQi+AjXYlSjXsmUgHiU/YzVXcRDnuOUgDE++wAxDWKFr2/tmcobGDnjuV
         ex7yXNk5Mp2jl0hrzhUX5qbDHWJHMeR6b3kPKeNfwIgFYatni6rqgvuKfI24g1rRGOXt
         SchTaymPC9/kdSiNbz8t8LtlDaOkpSgPgW4FsYxaykSdcosUr4QJElsyRxEtpYfoVh3w
         8PF2bx6ZOh7dxk+vrlVzjCC/qHNRecJ8wCDl92NPwNzPMj2DyjNChFga7Sq/q5aS2x+e
         IFig==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JfKZNrdn;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b30 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb30.google.com (mail-yb1-xb30.google.com. [2607:f8b0:4864:20::b30])
        by gmr-mx.google.com with ESMTPS id x3si893096pjo.3.2021.05.05.06.53.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 May 2021 06:53:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b30 as permitted sender) client-ip=2607:f8b0:4864:20::b30;
Received: by mail-yb1-xb30.google.com with SMTP id m9so2760748ybm.3
        for <clang-built-linux@googlegroups.com>; Wed, 05 May 2021 06:53:52 -0700 (PDT)
X-Received: by 2002:a25:880f:: with SMTP id c15mr40989755ybl.247.1620222832436;
 Wed, 05 May 2021 06:53:52 -0700 (PDT)
MIME-Version: 1.0
References: <CAHk-=wjmNOoX8iPtYsM8PVa+7DE1=5bv-XVe_egP0ZOiuT=7CQ@mail.gmail.com>
 <CAKwvOdmMF_v9TzBtFn2S1qSS_yCDO8D-u3WhBehUM7gzjcdjUQ@mail.gmail.com>
 <CAKwvOdk+V2dc31guafFM=N2ez4SrwCmah+mimUG3MzPMx_2efQ@mail.gmail.com>
 <CAKwvOdn3uXniVedgtpD8QFAd-hdVuVjGPa4-n0h64PTxT4XhWg@mail.gmail.com>
 <CAKwvOdm3D=dqKw=kx46PLaiqfHOZJL3QFKGc8kxqJqpwdFFWqw@mail.gmail.com>
 <CAKwvOdkp_P8BCtFuKqDrtC_=A89ZfDf66Yr3FL2e=ojwv4KaMA@mail.gmail.com>
 <CAHk-=wi1yiBBr3b3RbCEte6-yzAApsZN5zRdr3xoW8Av9jOX=Q@mail.gmail.com>
 <CAKwvOdk0nxxUATg2jEKgx4HutXCMXcW92SX3DT+uCTgqBwQHBg@mail.gmail.com>
 <1c5e05fa-a246-9456-ff4e-287960acb18c@redhat.com> <CAHk-=whs8QZf3YnifdLv57+FhBi5_WeNTG1B-suOES=RcUSmQg@mail.gmail.com>
 <20210502093123.GC12293@localhost> <CANiq72=aK-JJhpnZdeeGBtADrnXhyEp1Whw5+5rK6a4u85PhxA@mail.gmail.com>
 <5256ed6b6f7d423daeb36fcbfc837fbc@AcuMS.aculab.com>
In-Reply-To: <5256ed6b6f7d423daeb36fcbfc837fbc@AcuMS.aculab.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Wed, 5 May 2021 15:53:41 +0200
Message-ID: <CANiq72mq-SP5n_0cVr+eaP19xqJTP15V+JKUeqLiT910x=3NdA@mail.gmail.com>
Subject: Re: Very slow clang kernel config ..
To: David Laight <David.Laight@aculab.com>
Cc: Adrian Bunk <bunk@kernel.org>, Linus Torvalds <torvalds@linux-foundation.org>, 
	Tom Stellard <tstellar@redhat.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Nathan Chancellor <nathan@kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Fangrui Song <maskray@google.com>, 
	Serge Guelton <sguelton@redhat.com>, Sylvestre Ledru <sylvestre@mozilla.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=JfKZNrdn;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2607:f8b0:4864:20::b30 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Wed, May 5, 2021 at 1:06 PM David Laight <David.Laight@aculab.com> wrote:
>
> The problem isn't the packages that come with the distribution.

My question was in the context of Adrian's emails who were mentioning
issues for Linux distribution etc.

> The problem is 3rd party programs supplied as binaries.
> They have 2 big requirements:
> 1) The same binary will run on all distributions (newer than some cutoff).

This is fine with the "everything statically linked" model.

> 2) Any serious bug fixes in system libraries get picked up when the
>    distribution updates the library.

For 3rd party software, this is usually done through an auto-update
mechanism of some kind. And since the vendor typically provides
everything, including dependencies (even libc in some cases!), they
can afford to statically link the world.

That model, of course, has issues -- the vendor may go out of
business, may be slow with security updates, etc.

But this is all orthogonal to Rust -- I replied mainly because it was
mentioned that Rust brought new issues to the table, which isn't true.

> There is also the possibility that the implementation of some
> function differs between distributions.
> So you absolutely need to use the version from the installed system
> not whatever was in some static library on the actual build machine.
>
> Both of these need stable ABI and shared libraries.

Not really. If you go for the "statically linked" model for your
application, you only need to care about the syscall layer (or
equivalent higher-level layers in e.g. Windows/macOS).

If you trust vendors a bit, you can instead go for "statically linked
except for major system libraries" (like libc or libm in Linux). This
is what Rust does by default for the glibc x86_64 target.

Given that nowadays statically linking is convenient, affordable and
improves performance, it seems like the right decision.

> Remember, as far as userspace is concerned, foo.h is the definition
> for 'foo' and foo.so is the current implementation.
> (yes, I know a little bit of info is taken from foo.so on the build
> system - but that ought to be absolutely minimal.)

No, that is only the C model for shared libraries.

C++ has had templates for decades now and no "C++ ABI" so far covers
them. Thus, if you want to provide templates as a library, they cannot
be "pre-compiled" and so the implementation is kept in the header.

This actually turned out to be quite convenient and nowadays many
libraries are developed as "header-only", in fact. Moreover, recently
the C++ standard introduced new features that simplify taking this
approach, e.g. C++17 `inline` variables.

Rust has the same issue with generics, but improves the situation a
bit: there is no need to reparse everything, every time, from scratch,
for each translation unit that uses a library with templates (which is
quite an issue for C++, with big projects going out of their way to
reduce the trees of includes).

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72mq-SP5n_0cVr%2BeaP19xqJTP15V%2BJKUeqLiT910x%3D3NdA%40mail.gmail.com.
