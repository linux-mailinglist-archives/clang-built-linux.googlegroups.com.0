Return-Path: <clang-built-linux+bncBC3ZPIWN3EFBBL4M3WDQMGQEUV4DMJQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x237.google.com (mail-lj1-x237.google.com [IPv6:2a00:1450:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 2238F3D0419
	for <lists+clang-built-linux@lfdr.de>; Tue, 20 Jul 2021 23:54:56 +0200 (CEST)
Received: by mail-lj1-x237.google.com with SMTP id 5-20020a05651c12c5b0290193ec0f79cesf110738lje.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 20 Jul 2021 14:54:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626818095; cv=pass;
        d=google.com; s=arc-20160816;
        b=cbAKD2jcf22rmoKCUDDI2AHohPWDzmjo4v1BNowUACLO3ZSn3P9b9S903pXCTwnhe5
         VReGZHFfmV6YzCW+Vs5mV8KtHl3kTVHeV6ccAxW6jMShKL53zMAU7d8SYtZ8taNivPaf
         CCp9OKHseoFA1YFKaOlfe82L2SXysy1Dof8ZzO34s2ROYFWP/wB8MRKcBt071m9WaeMV
         M/8deRksEgJ70/48adp4ZZqlrN4zglqxui0U7GiFtw2lXwVxca1QROtBO5PArZquJ7Ni
         iI9nD9dt7WtmuNU3JlB2wJrRWYyPtk3e3Bu1EvSBHnFh6BhujUq+850fspAkkPgrWcmJ
         llXg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=hLXNDs6y5GWCSnJKEEiJ6PZSBkCSkcYyg9gg/w+4Zbo=;
        b=O1Dp/XSeei/LLGFGMHeXSi5YCMCtoDAaj1F9pmcmR7kRDYWZPGpU3jvrlhuLKMOVTq
         lfTvHENfaOAKlnHSrgzrIe+R3qOf+ZU5JMF6Nyq/ZQR85lfr0Nle95Kb851UHY72+M2V
         OyrzBBEgcuyfVZTah35Udy9pNqznC5wJDLBZeQ1C4UJA4R9dQlvZgMZ6cWOJ1j/tB7jT
         BAHHvM/pCdPjl1ZHkQZ6ZmM2bOuaDQLAs76yJSV296+TXGkBAcMe+KIAT2yGc8upnDUd
         yUWHt34ZnS1I5Axi74UQiEJiVOqbSDql+bx9hbMFWFCjDktE2fzbpIMEcTLWLHmcAPyF
         NSLA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=IAAqv6WW;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::12f as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hLXNDs6y5GWCSnJKEEiJ6PZSBkCSkcYyg9gg/w+4Zbo=;
        b=m9ZmjRf/EfONtG/eDRVsrRnWo7p8dZ6BrQncokQ0esH3eQbPkphuohcnwWl+z12euV
         fpxDMF6RNv3emk9WeW+l/yC7aFrqRNqD6JrW9SdCr6SPZCMKoPoGcnVOuaHENKaZj4w2
         AtYBmDQZ4GtlFhzLlsPQ4oBaYsWL1b3/hIqEnHZBb6blxC2eGjnNUjsLE85gv+nKcMcB
         1GYn2ehSmQEZrr7+gXoat8q5WHbvcqq/w2DE5QU8xi7zSteuKb/UOY4j329riLH5J6Hs
         giiB0bTXmV2nznJ06pIqc5msVTnZF7WWecDWJD+rqgjSIgbHvDq1bZWJRrgCIIs3woLr
         G35Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hLXNDs6y5GWCSnJKEEiJ6PZSBkCSkcYyg9gg/w+4Zbo=;
        b=N5Aa4qTziHgXVP+sLdtZYkTROehYlyXTB6uYoHOlpygc1qMIXufugICdb1tqwMCONQ
         h/P0jSI615F+XB2oKQwZPzSI0DArst4GAhynbfBjSxJgMtHCtvG9vwFElX2bhXY4V+ef
         iobIUdtmENDdbgFNrxv+LhR+XumQPrmA/pxZiqvZUKLdcLaOgwIZcZzo3FgUEKdG2f8d
         0syRoZEcX3prIpCSpB/62ClCCuTvvAuJyAzaz/9csdxix3GrAvW5eUwF5YgCMyy3tTII
         DcA/eQDpQOeIu4P2nYPheo0ZFdH+A/+8MbKZ/zmE6JMp+AUjDA+AZyvffuI/TNk40HLW
         +v4A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530D6rxqYrqRHM36lBxnpUwBXaZ6wruNXMkbqBqf9+OldSed+65V
	va3JyOMlIJR463SWkLodPB4=
X-Google-Smtp-Source: ABdhPJxqh7/nXZkoVjAdEoqJR5hZxiWERKPhu9VzlqfHOtrdF1OeKADaszOEjRnBLl6atANMephoRg==
X-Received: by 2002:ac2:4462:: with SMTP id y2mr23659503lfl.183.1626818095682;
        Tue, 20 Jul 2021 14:54:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:430b:: with SMTP id l11ls48956lfh.1.gmail; Tue, 20 Jul
 2021 14:54:54 -0700 (PDT)
X-Received: by 2002:ac2:4c92:: with SMTP id d18mr24005002lfl.628.1626818094475;
        Tue, 20 Jul 2021 14:54:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626818094; cv=none;
        d=google.com; s=arc-20160816;
        b=Nt8NOQwpA+X2R7ljpfqSn8+3JNmAsbU1f4qpcs4gxTx20l3beRNlQ96k8gbi/jJa3y
         g9TwGF5Wpr3bIrbCTJLhVWf3PKDdanghEFQzREGHkHEpgBKGQHo/ekwk5mDWopfHd39e
         0Zvqg+D2SdoY5JRe+kK78Ui8eaFJ8XHAgJlW4M9HqKn5t17+eE2jJ6sFX3wFM81n0zt+
         Yl7kuZ9UehRDSwl2v6nzD+7NX5QIqjExM+XjH7kSfblNqRv+NBxxCcgv+mYeU7P+ZY60
         I9e/kzG1wPsOJj+khIzbQvaOp907UXMBzhxUEWuI3Tv8MFto3S2y+D2sZmhR1LYfIgxt
         tQJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=zMjMAmAMmxLkKR5KIrE39H+YkRtqEnHl/ne2WjpAkBU=;
        b=BZnwaO21GLhhdL9RgX6jQq3hcnsY5dtZAbn6s+9wiDaxN6ZKFlpmjEHz3M4FY13ld1
         Pa2AeY9z2zqIQqcv+0AjTJlA3ClLplNseweNXDS6mEaPTTwbe1O/zRjhEX1NWGjLBSka
         uOZNEPqAdi4P+npUjhRY/w3sNZEwL2PuKlcWVcQgBHBXU1Ev+ZfsYjO61reGu6RU/vCY
         Gt0hJVf0htzD2kZrg/FCmxKyt8NSt3kKLgS+NE0uZWv+9VQrFU9l3hXg2G6luvFcbCUp
         fB2akbTLluFystTugxZp73kpJlMIgiMmXoQkj3IYswEgitL1B4p0BgvujP4T5yU6f2jL
         55zw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=IAAqv6WW;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::12f as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com. [2a00:1450:4864:20::12f])
        by gmr-mx.google.com with ESMTPS id x6si387016lfa.6.2021.07.20.14.54.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Jul 2021 14:54:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::12f as permitted sender) client-ip=2a00:1450:4864:20::12f;
Received: by mail-lf1-x12f.google.com with SMTP id m16so134518lfg.13
        for <clang-built-linux@googlegroups.com>; Tue, 20 Jul 2021 14:54:54 -0700 (PDT)
X-Received: by 2002:ac2:5b07:: with SMTP id v7mr23868929lfn.30.1626818093863;
        Tue, 20 Jul 2021 14:54:53 -0700 (PDT)
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com. [209.85.167.46])
        by smtp.gmail.com with ESMTPSA id f1sm1340656lfm.62.2021.07.20.14.54.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Jul 2021 14:54:52 -0700 (PDT)
Received: by mail-lf1-f46.google.com with SMTP id a12so175050lfb.7
        for <clang-built-linux@googlegroups.com>; Tue, 20 Jul 2021 14:54:52 -0700 (PDT)
X-Received: by 2002:ac2:42d6:: with SMTP id n22mr23066024lfl.41.1626818091856;
 Tue, 20 Jul 2021 14:54:51 -0700 (PDT)
MIME-Version: 1.0
References: <20210708232522.3118208-1-ndesaulniers@google.com>
 <20210708232522.3118208-3-ndesaulniers@google.com> <CAK7LNARye5Opc0AdXpn+DHB7hTaphoRSCUWxJgXu+sjuNjWUCg@mail.gmail.com>
 <CAHk-=wgGxu4_hgzdYpFuKd95SfnkJbPTWAQ9-fMgmMN1Oxs2xQ@mail.gmail.com> <CAKwvOdkvju7heeNpk87brsjkhXHbdKFsUgf63KWhXox9rDkQsA@mail.gmail.com>
In-Reply-To: <CAKwvOdkvju7heeNpk87brsjkhXHbdKFsUgf63KWhXox9rDkQsA@mail.gmail.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Tue, 20 Jul 2021 14:54:35 -0700
X-Gmail-Original-Message-ID: <CAHk-=wiZe2FuiAOwhbKR_VMmFBKekz0NFREm4fvik25PEdcK_g@mail.gmail.com>
Message-ID: <CAHk-=wiZe2FuiAOwhbKR_VMmFBKekz0NFREm4fvik25PEdcK_g@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] Makefile: infer CROSS_COMPILE from SRCARCH for
 LLVM=1 LLVM_IAS=1
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Miguel Ojeda <ojeda@kernel.org>, 
	Fangrui Song <maskray@google.com>, Michal Marek <michal.lkml@markovi.net>, 
	Arnd Bergmann <arnd@kernel.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Geert Uytterhoeven <geert@linux-m68k.org>, Christoph Hellwig <hch@infradead.org>, 
	Nathan Chancellor <nathan@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: torvalds@linux-foundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linux-foundation.org header.s=google header.b=IAAqv6WW;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates
 2a00:1450:4864:20::12f as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
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

On Tue, Jul 20, 2021 at 2:29 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> There's still some that we can eliminate for BOTH configure and actual
> build, like CROSS_COMPILE. :^)

I have this (perhaps odd) model where I use separate trees for
different things, which is something git obviously is partly designed
for.

So when I create a source tree, I usually create it for one particular
use - whether it be for one particular configuration (ie "build with
clang" or "set up a tree for a 32-bit cross compile" or whatever), or
whether it be for some particular development issue ("long-term branch
for testing asm goto with inputs").

Yeah, sometimes I use multiple git branches in the same tree for
things - but I tend to do that mainly for short-term things where I
don't expect to keep working on it over time.

End result: I find 'make' command line flags to be really really
annoying, because then I have to match them to whatever tree I'm in.

I'd much rather have a local per-tree configuration that just sticks
around. It's why ".config" works fairly well for me.

But there are other things that stick around. In particular, I have
considered simply using git config variables for that.

Something like this in the main Makefile:

    ARCH=$(shell git config build.arch)
    CC=$(shell git config --default=gcc build.cc)

would actually be optimal for what _I_ do. Then for my clang build tree, I'd do

    git config build.cc clang

and it would stick in that tree. If you don't set the option, it would use gcc.

Maybe that would be an acceptable model these days? We've used git
long enough that non-git worries aren't a big deal any more, and I
guess people could use the old-fashioned

    make CC=clang

if they don't use git.

We could get rid of all the CROSS_COMPILE etc garbage that way,
because you'd just set it in the .git/config file. Those are really
convenient and easy to edit.

Would people hate that kind of model?

                   Linus

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHk-%3DwiZe2FuiAOwhbKR_VMmFBKekz0NFREm4fvik25PEdcK_g%40mail.gmail.com.
