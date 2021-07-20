Return-Path: <clang-built-linux+bncBDYJPJO25UGBBOX73SDQMGQE3VEAC6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x63b.google.com (mail-ej1-x63b.google.com [IPv6:2a00:1450:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id 317253D03D8
	for <lists+clang-built-linux@lfdr.de>; Tue, 20 Jul 2021 23:27:23 +0200 (CEST)
Received: by mail-ej1-x63b.google.com with SMTP id sd15-20020a170906ce2fb0290512261c5475sf13914ejb.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 20 Jul 2021 14:27:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626816443; cv=pass;
        d=google.com; s=arc-20160816;
        b=J1B3YJvYeNnRPemM7HrYyYDTtBMH1jr708VbhhyI5a+oqfDcEwZEUuE6qqZSY71abP
         JXgqrDF3rj7I6txFwXpoLGSfmq5VyOfNvdJBSBhHn8+C6ohZnGZ4SnVQxXFnZXjhtWrU
         aQxwWo+3HFMbLftmiQxnH3VgssCUyN5cY72sqnWi6VlyiJlhNXqKmMgvTQ9f/qFy8epP
         DfXuA+6QEFM4IxhfSsaBZCcdOhhmd591mrVnzBo1w6ZOkLbvVMdmtztjJsqLsa6U88JV
         81D0pRao6vI5twD07Ll7OZj9X+5cPAz6h2wTGqMMsNSxWTzHH5InRbU03cH9OLMI69oY
         5bMw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=EiG0QfG9LDa31L6hKt/NPCkRyOm3qMB0olvl/qLwGK8=;
        b=DDLtv1/62RXFPiwvBMlCeA8OsCwHnjFkehBLzmUOG56yYImkGdIX8Ft5Kf9TKfcc8J
         BMH1N7zEiiaIut6KpMoANjZIE921dZAaen51miC1LgXy5xeAKr2dFN5q3rlRco1S7lzI
         0pigr98IT0CEAGr7F6s0BZtXYw69x4sTFLZIiut8NfE0vFi3TgGtGk3NGniRRXhJcJq1
         qFIML+scLUQ89q5do71tx+0oHw7g35DUWUWb6kT3tjwY6BSJncQBpVWz4JFmRWuTXY2T
         InseJDona8hBShR1eu1ZVgrpH+waYz+LkJMcglyWlzxWHGVkHRQQ1NUwTJIHQi67TUkJ
         vF7w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=nyPyS8j2;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::232 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EiG0QfG9LDa31L6hKt/NPCkRyOm3qMB0olvl/qLwGK8=;
        b=Gf3AXLQHqtFPY1CJc1TlssWyuIVFrl61gTEVDdAToJYIyop53Pz+J0L6myKgphMQ7c
         VzWRyo1rmmLS5lKfQxLq2amNxzIybFkrkBX2RGFv9NRIGD1EnRHIfbpV6pWqVlnlhUvW
         gTN/Ntow/gOjjLEEAQZFmeFuUdOkTOjfOcNsphC6vi6QxVUVM/sOw+f3GiCy7TwqfFMK
         EfuNTIpuBkZBqC1PUwHcQtvPALaHBe4YmfbR/kJMGHYTPBaNr/9X1WaO9CCQSSHiGez8
         +lAOFEHolDnhAWN+PUp1/WJ/tZUTy5px8GTO421dAVJq2hr8q0BxwWX2RvOYdc6/o0Yj
         ++3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EiG0QfG9LDa31L6hKt/NPCkRyOm3qMB0olvl/qLwGK8=;
        b=Zz/uFC3+/YdjBc7ch4ZIj0FcIEVvJ3rDK3LkszHoPZ+JMlGJ67FW+RBBMgfe/wXkAk
         aRPV556KJKLY0vFGB1KERXPHo4PbRqH1KaOFHHCuPTyi9EpJLLeJEri88yO40RgjCfEq
         VPeg+eBWcwg0VLAJM+qxZegn52De8g9l6ebTCS/61RVaKcIJwSfAiBCT9ngzi6WT25PZ
         V/a44IB29k0AxhoMYrTOH9CAOYUrkz2gCTbg2EdMioTLYo8szPb4PzYQEX6yzpvKnXNM
         RSjGcEKyRsD1wav1NCKKaLVE0tuLTxbVbyJj4E1lCwcGOQ1b3RZ8WAH6BtIBEurwIuFx
         g84g==
X-Gm-Message-State: AOAM533UT09/CswKCJS5SYvWtAumhKRJVsDO0cGIIlUU//LkvVWsQuGH
	g47mV2dY/5oPvKQgZc/fBi8=
X-Google-Smtp-Source: ABdhPJy5WKBAHthEvurz5PofSk0QKdf95DAkoKoTmIjeImJ0K1yvk5ls587Sevv9XRiwPGrVcevbVw==
X-Received: by 2002:a17:906:8052:: with SMTP id x18mr35191161ejw.497.1626816442896;
        Tue, 20 Jul 2021 14:27:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6402:1751:: with SMTP id v17ls219618edx.2.gmail; Tue, 20
 Jul 2021 14:27:22 -0700 (PDT)
X-Received: by 2002:aa7:da4b:: with SMTP id w11mr43062626eds.258.1626816441971;
        Tue, 20 Jul 2021 14:27:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626816441; cv=none;
        d=google.com; s=arc-20160816;
        b=p5juxNy90ykr5GLTFviBXKfhb+OZH7OBKPdkpIR1vyUqF4XUTcLYR0NQZ2brKxu+FK
         c5syuVxbmifJsDSnUN2dm/sAZodJmqebJ9tXFB8nYRwpct8mialMXmnzKWaPnwpFW5zb
         ovCeSPIzQnWBiEvtStqQTBHfGSLv6azWs5GvbGkxFqeiW7Pjr9Xb9dZgzSYAxyc99tFV
         Nc2FjK2k4xd0RehFzpKLxVI+ZhpscAEIWxVq4wsaIm2TmUg2I7OmfEHbR5IuQRS9A6b9
         Bq7EoVbNKKjGzO92n+UDfhgc4xHSqLL6qlJHeD9q2VW0CTj4MphrPxp8a8LuSo6WfTHe
         MwTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=tNyYA05ylU2XvRUfrq05bnLIwQDYxkRccZveeJvkl54=;
        b=mVviaTRwDrGvcKRJBuGlQ96hGeL9TyZigKR9HICj6jyxLB3VjKnVJyDXnmaFvPFEhc
         58kuJ91XsO4JtOt0m5At5T1iY5xYsMrfoI+FiZJzKZde2jDCLRTscIl5aM0tbipEOl+n
         RIu9VS0pdVZRw3nGsJYkitQSM1InkBQfyYM5G7OEQkbtVKFSMJCQvEV3UUk00jLDOwF/
         qUfH+IRlJ0blxp09fqDR2LuqqRRJMB2RwpIboMLZAgPrMbKedIz62l8e4btQSQd7/Aq6
         +wD4JNtKVi2vqzW9SUxQCglQavCT6DVJfAAfhqsI05RgE9BIfB2x3qM+bDGsgMcuDaEd
         M4YQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=nyPyS8j2;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::232 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com. [2a00:1450:4864:20::232])
        by gmr-mx.google.com with ESMTPS id dz22si620714edb.5.2021.07.20.14.27.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Jul 2021 14:27:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::232 as permitted sender) client-ip=2a00:1450:4864:20::232;
Received: by mail-lj1-x232.google.com with SMTP id b29so217532ljf.11
        for <clang-built-linux@googlegroups.com>; Tue, 20 Jul 2021 14:27:21 -0700 (PDT)
X-Received: by 2002:a2e:a784:: with SMTP id c4mr3289166ljf.479.1626816440772;
 Tue, 20 Jul 2021 14:27:20 -0700 (PDT)
MIME-Version: 1.0
References: <20210708232522.3118208-1-ndesaulniers@google.com>
 <20210708232522.3118208-3-ndesaulniers@google.com> <CAK7LNARye5Opc0AdXpn+DHB7hTaphoRSCUWxJgXu+sjuNjWUCg@mail.gmail.com>
 <CAHk-=wgGxu4_hgzdYpFuKd95SfnkJbPTWAQ9-fMgmMN1Oxs2xQ@mail.gmail.com>
 <CAKwvOdn065OJpow=7VF=ujagFoyN4sYMKAA_E2_39ZC7uThchg@mail.gmail.com> <CAHk-=wjDdDPDa6mfoC-QM=NZULsmQfcUbF2RdwMq0J4Ztm+UAw@mail.gmail.com>
In-Reply-To: <CAHk-=wjDdDPDa6mfoC-QM=NZULsmQfcUbF2RdwMq0J4Ztm+UAw@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 20 Jul 2021 14:27:10 -0700
Message-ID: <CAKwvOdk7ATbLP9uRVgWnYHQT0BKAuOTPmOeWdZgytTs=bqTLfw@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] Makefile: infer CROSS_COMPILE from SRCARCH for
 LLVM=1 LLVM_IAS=1
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Miguel Ojeda <ojeda@kernel.org>, 
	Fangrui Song <maskray@google.com>, Michal Marek <michal.lkml@markovi.net>, 
	Arnd Bergmann <arnd@kernel.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Geert Uytterhoeven <geert@linux-m68k.org>, Christoph Hellwig <hch@infradead.org>, 
	Nathan Chancellor <nathan@kernel.org>, Tom Stellard <tstellar@redhat.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=nyPyS8j2;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::232
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Tue, Jul 20, 2021 at 2:11 PM Linus Torvalds
<torvalds@linux-foundation.org> wrote:
>
> On Tue, Jul 20, 2021 at 1:52 PM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > >     -CC = $(CROSS_COMPILE)gcc
> > >     +CC = $(CROSS_COMPILE)clang
> >
> > So you haven't been using LLD... :( (imagine using more than one
> > thread to link, and being faster than ld.gold)
>
> I started out just building my own clang - nothing else.
>
> And now that I'm using the distro clang, the linker isn't even _close_
> to a performance issue. Since clang is a big, slow, bloated pig.
>
> I posted profiles and performance numbers of clang being three times
> slower than gcc, and it was all just clang itself, not the linker. All
> due to insanely expensive startup costs.

Yeah, it's unfortunate that package maintainers for your distro chose
to distribute clang built in such a manner.  But in response to that
thread:
1. I planned a whole conference around how folks distribute LLVM
(particularly how the configurations are done, and important ones to
use):
https://lists.llvm.org/pipermail/llvm-dev/2021-June/150861.html
We have a pretty good set of CFPs lined up (and I need to go chase
folks from Apple and Qualcomm that are working on proposals...)
https://github.com/ClangBuiltLinux/llvm-distributors-conf-2021/issues

2. I brainstormed a whole set of ways to make Clang even faster.
https://github.com/ClangBuiltLinux/tc-build/issues
Most promising I think would be building musl with LTO and statically
linking that into the toolchain.  I don't have a ton of time to pursue
that, but I will continue to bang on that drum in front of management.
It's just very hard to fund improving build times for users on
thinkpads when the corporate world has moved on to distributed and
cached building in the cloud.

3. Pretty sure we've resolved that config with your distro's packager,
and made other changes to upstream LLVM to default on some flags that
help a lot when those unfortunate configs are used.
https://reviews.llvm.org/D102090

> I suspect a lot of clang users build bloated C++ code where the time
> to compile a single object file is so big that the startup costs don't
> even show up. But for the (fairly) lean C kernel header files that
> don't bring in millions of lines of headers for some template library,
> startup costs are a big deal.
>
> So honestly, I don't care at all about "imagine being faster than ld.gold".
>
> I can only _dream_ of clang itself not being 3x slower than gcc.

Let's be precise here, because quotes (even when imprecise) lead to PR
cycles.  Clang startup time for NULL input when testing command line
flags as part of a build configure step, when clang is misconfigured
is slower than GCC. Clang is not generally 3x slower than GCC.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdk7ATbLP9uRVgWnYHQT0BKAuOTPmOeWdZgytTs%3DbqTLfw%40mail.gmail.com.
