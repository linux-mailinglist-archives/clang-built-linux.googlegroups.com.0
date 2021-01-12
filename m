Return-Path: <clang-built-linux+bncBCS7XUWOUULBBOWA677QKGQEXROIO5I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x240.google.com (mail-oi1-x240.google.com [IPv6:2607:f8b0:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id B94522F3773
	for <lists+clang-built-linux@lfdr.de>; Tue, 12 Jan 2021 18:45:31 +0100 (CET)
Received: by mail-oi1-x240.google.com with SMTP id l185sf1418569oig.17
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 Jan 2021 09:45:31 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610473530; cv=pass;
        d=google.com; s=arc-20160816;
        b=Yljce43ImFqP83QFfvIJIQdAuB49IV8JI6EnVsC8WYzbz0N3Matgzpbkzr1EtRK6Mx
         WAXVs2p9SJN/K3fr7UvBb+JOnjmBWR9CQIwSpJ0e9JaESxNezXppXbLt0F9jxk7ZjWnm
         IXF9xItPV3vBbPesSERvFvpvl5f9IJzX0Em5Zfq81xZ2Ejy8q9Iy/QvPHouZOiQMrC2y
         eeget/zY3/U6q8fJg7xhg1ZPi1OO9TejHYjA+rAKo8/omiAOfDo6gTgGo0XwTDNfvGQY
         5qVE8EqP+XF/Yg+zEZDnfNZJ38Ox+8mP0TEBMbSS13JmTY2jO13xQ9xFgDXiQc0ksJUA
         3Uag==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=sjeV/tNxwqxz3ZntmtDdI5IHm2wbAqIFDyyR9r1L9U0=;
        b=z0Ie8pbWp5sPpss06LIDF5adZZvtAMxMRVXY3DcrZ8ZD1alPEuuVsdloS0tN8NPMlC
         hdFxFA1Qu1cAqDwEdopSZHHnXnFC3v/sveyYE7A4RNS7uB0Z+3ZAV/sO2JhciNQG6C3S
         aRh9OlROR+gpevLu1MmMYMr4QqYwhyrlQxqGuyXKEXN6QOXhexMrUGkENxRrQnViUnfG
         DCUjNt4sUJE4cusHV274ewcWz/j5CjfW0txo0KjWkwcOvu3kxwuWy7EZ51OCq2JyN8Oq
         q09JnzASf+8noyvg67cgnE6IK6QjbaWPPnCfbwuuO1WHIfU7Ggu2Ngk9HnrPmhD+ylb5
         vgKg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=s1TmDllN;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::536 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sjeV/tNxwqxz3ZntmtDdI5IHm2wbAqIFDyyR9r1L9U0=;
        b=BTwX/5Kadhj/hox2k+sJEOFAaQZBEncJNXK8+hbjR2P5Z8CctZwqHJQePHt7fTwgxo
         KBdJSXzd02AZzK9kNa1Yp5DYMIj0CKKJSGAL22+pH3J7ZSPmHLu18JKJqm3NqZNJSdlS
         vXOEWUco6TGIjK6HmwapLBs+9SZKVDo0IaLQQQmA4Vbb36e4AvLXCFgqULNXAqLiOfzE
         daA/CNv2kcaKSANvSdv6+rfxrHuuVmtWzCe+hwCB5tCxplDvgzwW/aYM0vCLn75NVyhz
         vDzc32BUDxXqnewU7gf3dODJbb1zvEui42tUjCtDlNO5FiPgabDvu+RIST1ZZQ5gVpZy
         Ng4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sjeV/tNxwqxz3ZntmtDdI5IHm2wbAqIFDyyR9r1L9U0=;
        b=fUXO+iQLLAtWhjRHOCkGZNfApIq3Li6ayRveFwgc8Lybwhj0hRsicz0RzkqSJM/H+L
         f7oQojotPt9oizhj4v/xHuYMtNeu/UdQaRi1ytElWmZfoG2WnOW/1lRZERZq/QRnCtrg
         Bjl6qMX6eH1Xdhr5IUtQdKCj996nsBvT1YE4CyXpFbgu1wGzF0R4LNY9dSsj5UsXe4W0
         Lz1933G/SqJlq40S5SLAYvkBW12BDTNVSiv0lb14Oi/IfzJc/gkZ+WgZnDOlKRwgrgtT
         qfdpFWXcZlVcliH0N51nL7pCUdogZBaqa/nFsJAK9owkw06nEcoba2BKjCB+5M4FmWXx
         qc8w==
X-Gm-Message-State: AOAM530+TL1dtiTFRUCArUhuyV9qrmHVV7Lfs8BMbTdZzWqFpCfOqAK3
	VaNNC6doNhyvQDST4FlVpAA=
X-Google-Smtp-Source: ABdhPJzB8FFc0ERkHKJpHn1qwJSGGAM1NjvT8s0zdvBOjl0Y4npJq+G3MPDDba7tyaSJSgSaXZAwNA==
X-Received: by 2002:a05:6830:1246:: with SMTP id s6mr360931otp.360.1610473530534;
        Tue, 12 Jan 2021 09:45:30 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:e88c:: with SMTP id g12ls209164ooe.1.gmail; Tue, 12 Jan
 2021 09:45:30 -0800 (PST)
X-Received: by 2002:a4a:751a:: with SMTP id j26mr140532ooc.68.1610473530140;
        Tue, 12 Jan 2021 09:45:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610473530; cv=none;
        d=google.com; s=arc-20160816;
        b=jYUXC1AJRXu1vcGKlCCceEK0BnMt1jaYW9Vqjvu2oBhjwIEUR8cI/eQYhhwLpnf3Xw
         LtQW8gwyCZBQ8bwNxXYwadhrcK5ZX4sIItlXXVjKRh9b3l6EGcOaglAc5zvGEN8miiyy
         w37mx79KQ0l1RFiAQ0J4Em1s9W2E9oBni1CHjMAn2pbE5/LgW7D5AHL62zuvpbFekMlP
         dbPpmvd5zaSuDlb9Ud4ot2DzkKUwN6XcqtiJtT9Ui4Prwf7W3ff3qIw0/n5reeaHcBb4
         RqdhVBAKyXY2fYHD4eyYQB0aLg87nI9h9HUQxymnE0bziJ89eqzjkEv5PHnvhOwefQCF
         KuCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=kp8U52XQRpl24mM7G2RDldHnlK7yV2a+H4JiRS6waC0=;
        b=xo0E8tU99cUw2IwC0UsC/wzyqbwVpQZv/TRZTGQkYDqJOANLrBekePJRAUrP5bHiE3
         R6KkgMERxmamz+b3/NeRTuaZ/yaEJdc4bdUxhT0IxMFa2swOsyLBV2CE/ReL0ZOGk8wq
         Z1FF0dUyDONY7Q6kbZyXLHcbY1McG4xsp+vt0MepSVJ6hC4jrsKiEFbc2/yZRxsB8P27
         6zXr0UiRgm6ohB4sLjVz3DFZGkhLAEbPCWYTuCsX8dpbyHEM8/v6SSYFcyva7zyk4bnk
         xFcLY8hVCG86rDnJ17xiAaUauGG/yuhiWpNatkRhFO1oBKQ/uurj1zgFTUZoyVsUO2QF
         2Hlw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=s1TmDllN;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::536 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x536.google.com (mail-pg1-x536.google.com. [2607:f8b0:4864:20::536])
        by gmr-mx.google.com with ESMTPS id f20si281674oig.2.2021.01.12.09.45.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Jan 2021 09:45:30 -0800 (PST)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::536 as permitted sender) client-ip=2607:f8b0:4864:20::536;
Received: by mail-pg1-x536.google.com with SMTP id c22so1875335pgg.13
        for <clang-built-linux@googlegroups.com>; Tue, 12 Jan 2021 09:45:30 -0800 (PST)
X-Received: by 2002:a65:48cb:: with SMTP id o11mr164747pgs.121.1610473529429;
 Tue, 12 Jan 2021 09:45:29 -0800 (PST)
MIME-Version: 1.0
References: <20210111081821.3041587-1-morbo@google.com> <20210112051428.4175583-1-morbo@google.com>
 <CAKwvOdk+NqhzC_4wFbQMJmLMQWoDSjQiRJyCGe5dsWkqK_NJJQ@mail.gmail.com>
In-Reply-To: <CAKwvOdk+NqhzC_4wFbQMJmLMQWoDSjQiRJyCGe5dsWkqK_NJJQ@mail.gmail.com>
From: =?UTF-8?B?J0bEgW5nLXJ1w6wgU8OybmcnIHZpYSBDbGFuZyBCdWlsdCBMaW51eA==?= <clang-built-linux@googlegroups.com>
Date: Tue, 12 Jan 2021 09:45:17 -0800
Message-ID: <CAFP8O3J+85x2S+9T2vM+iem=t45MdJt+D1houpqKGhDRfcHu-w@mail.gmail.com>
Subject: Re: [PATCH v2] pgo: add clang's Profile Guided Optimization infrastructure
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Bill Wendling <morbo@google.com>, Jonathan Corbet <corbet@lwn.net>, 
	Masahiro Yamada <masahiroy@kernel.org>, Linux Doc Mailing List <linux-doc@vger.kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Andrew Morton <akpm@linux-foundation.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Sami Tolvanen <samitolvanen@google.com>, Alistair Delva <adelva@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=s1TmDllN;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::536
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
Reply-To: =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
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

On Tue, Jan 12, 2021 at 9:37 AM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
> On Mon, Jan 11, 2021 at 9:14 PM Bill Wendling <morbo@google.com> wrote:
> >
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
>
> Please drop all changes to arch/* that are not to arch/x86/ then; we
> can cross that bridge when we get to each arch. For example, there's
> no point disabling PGO for architectures LLVM doesn't even have a
> backend for.
>
> > know works. This restriction can be lifted once other platforms have
> > been verified to work with PGO.
> >
> > Note that this method of profiling the kernel is clang-native and isn't
> > compatible with clang's gcov support in kernel/gcov.
>
> Then the Kconfig option should depend on !GCOV so that they are
> mutually exclusive and can't be selected together accidentally; such
> as by bots doing randconfig tests.

The profile formats (Clang PGO, Clang gcov, GCC gcov/PGO) are
different but Clang PGO can be used with Clang's gcov implementation:
clang -fprofile-generate --coverage a.cc; ./a.out => default*.profraw + a.gcda

> <large snip>
>
> > +static inline int inst_prof_popcount(unsigned long long value)
> > +{
> > +       value = value - ((value >> 1) & 0x5555555555555555ULL);
> > +       value = (value & 0x3333333333333333ULL) +
> > +               ((value >> 2) & 0x3333333333333333ULL);
> > +       value = (value + (value >> 4)) & 0x0F0F0F0F0F0F0F0FULL;
> > +
> > +       return (int)((unsigned long long)(value * 0x0101010101010101ULL) >> 56);
> > +}
>
> The kernel has a portable popcnt implementation called hweight64 if
> you #include <asm-generic/bitops/hweight.h>; does that work here?
> https://en.wikipedia.org/wiki/Hamming_weight
> --
> Thanks,
> ~Nick Desaulniers
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdk%2BNqhzC_4wFbQMJmLMQWoDSjQiRJyCGe5dsWkqK_NJJQ%40mail.gmail.com.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAFP8O3J%2B85x2S%2B9T2vM%2Biem%3Dt45MdJt%2BD1houpqKGhDRfcHu-w%40mail.gmail.com.
