Return-Path: <clang-built-linux+bncBDYJPJO25UGBBIEH72EQMGQE67ZZTLY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x637.google.com (mail-ej1-x637.google.com [IPv6:2a00:1450:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C06B409A3A
	for <lists+clang-built-linux@lfdr.de>; Mon, 13 Sep 2021 19:00:18 +0200 (CEST)
Received: by mail-ej1-x637.google.com with SMTP id o7-20020a170906288700b005bb05cb6e25sf3951257ejd.23
        for <lists+clang-built-linux@lfdr.de>; Mon, 13 Sep 2021 10:00:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631552418; cv=pass;
        d=google.com; s=arc-20160816;
        b=eaL+YBjyN1s8t0BXROqHrkR2t/UvCq0RJERSvG0RD3yTSys4XEPK5Xu+1eygWomjDB
         djeXJB9pf4cuWKqr3EYxXKW1oQm8KHPdcfqqeRwsaYs7i361Ips6eJyGifSW0jGa37JF
         IJYFa6V3/ny2AVI2dXlz8TG/QYpUEdY1w2r1ih4GffgndLFE0sNJJ4ylZl3CbKFTBQ2Z
         6rj9wJLQggEmCxBLG2rHNvbmWwlJ1dcI4aJ/TJkUQusozIAojTQbMgPlNAsXMFrlUdvd
         Ebk8AQdNGZ+b6nXxMNJIR+H3Vby26L7EK7LOapERw/gsXVABGRDLelubz1jlbJLe0hFU
         uqWA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=znSmBxmrKUfQohDeY3mbq9XSfL2R1STOdXGpiQHuV0w=;
        b=jK4pqp6+oC3biPsIVSowE08CDWrdnRixxU3g5tHc7Q1Cxb5WLH7TtX5dTUQmpvAalc
         LlmL9qFgmkRvlPRVFRDJcyth+L5b2gI73roapX3IjwqVnhpMQDPULyQ4VL65muYwVm8l
         X41W3MXms03Ukh+8IdZZ60t6udCN8nlJeWVqCRJPLM9bih7To7O+UOn+rxjkCjaeXkJB
         hxI3At5/BsjJMlI2Kt3UXwFE5XuCZwruj5kN/gUrMxTREU7eNmdoQDwTkfD8E77P2nbj
         GFsvKWGx208Ii+9O5U/yV4dsd2M2IOu26u+W5wV/3Jm1nDe4pAJjc353ryYrpNmXFuVb
         CP4Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=mHAp4peC;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=znSmBxmrKUfQohDeY3mbq9XSfL2R1STOdXGpiQHuV0w=;
        b=iposZFFq6eqzhIr2at1jkS656OgHYXbDQmrOuORclE6EHiLzK89TlFCcBkcl4AmCS9
         ak10brFfq0AIA6Yfefvy62XBfN5FrdJG0pF9p9vzwwUscOTwcwZ7XHkzxjANCrPoC8S4
         WJ9Kjn0UckJfgUrhI7K4kaRzu6Oy56RCpmwKxRU996WD2SDd1JDaNQW3lFaVlqODoJEx
         0z94R9e5j9xlIuv7UObnmVI+FqDOttVosFEFzGN0LfK8fvNLZwFSolWLYg5YTLs4ndrA
         exv4igUnCiPGWXjWNJeZjNt9HnA+nwp0lGGRfppSiovnZWcmPhsZfn7oe8nIifxhfI7x
         kmVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=znSmBxmrKUfQohDeY3mbq9XSfL2R1STOdXGpiQHuV0w=;
        b=qZoTx5OQshLXjDntPw47yemX1gmPditEKx0xReD3Gu9rYoBBQlm/9WqXAb0vAtinnb
         fWR3oQrvVReqB0ks3w5z4HCBdADhIw5I+S7KRrtWRbWCVKk/VKUIwWQ/wwpwKvVCNaZs
         xbXBbNieDsTld1sfBvuT3appAt715Ld36aFAJwhYa4NTfirHNYtGMkdzMfZf+pxIrbXq
         e5SWHaNbOBuF4bszpfHyBb4r7G/nuX4aj/dseE+00x9Mvxrhl+FmdQAgXnacjKpuepyl
         wxcZ5tEiSHlxJUPY9uAX52bSVzsaosLyXx/GqO5rL1DN9bDUA9Nqblzb+jv5Qt0jWA6g
         eoQQ==
X-Gm-Message-State: AOAM533manDft2kS9/XMUuhOvW4WeaO/6z66cU3x4FnxJbCvRcdRGmmq
	iw2q8OP0IVXfXlDqOOykPOQ=
X-Google-Smtp-Source: ABdhPJyjBjB1hqRUQnI+1hMkFbuKX6dUx2Zh3ioGnWQCE9M32PrggX3ZwuxshsMEuc6yrCIsLNDUig==
X-Received: by 2002:a17:906:3b96:: with SMTP id u22mr4699267ejf.370.1631552417142;
        Mon, 13 Sep 2021 10:00:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:230c:: with SMTP id l12ls1920508eja.11.gmail; Mon,
 13 Sep 2021 10:00:14 -0700 (PDT)
X-Received: by 2002:a17:906:f92:: with SMTP id q18mr13403265ejj.353.1631552414665;
        Mon, 13 Sep 2021 10:00:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631552414; cv=none;
        d=google.com; s=arc-20160816;
        b=InOZCS7KYJ2x8J0O8giUts0jF5/2GUMJeRWP1dLnRTM0SiRFME73eYVXbP6YT1I9BE
         kwF7i6psw8P3k7KJJ14fnn1F2Ssog3F6EimBbWgOYCAq03xJlT+oSDuEI40P8KSrDoEc
         1JZDfR7/gFHLzCJTJjmx8ZLx0unaiNEPDPr8z7nimGUI8cjzI9zQxAkcRmbQ/S4a5YWW
         upFSefNs9XvT1tqbKmosgZ1qWBl8qhjR+eURfYHr6kPJDjcdFBvul09rL0MaHuhiSWws
         9U1sdgfrhu+b0viYVpbz8AbxsXUH4l5ig6QJ5bobHe89Mbp+5ho2YExL03xEMwsIoxdD
         c+Ag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=QrGAcwwTUwAfpY/24fWLxW114H7zq5jNLexfHma71jY=;
        b=PLLl6lgDQew+rdTlfKs0oFaurIJ/QjMa86JeQJfNFixR0HzD5VWodoNl0Ol2EVwhuO
         ILZReMWAux9C3IqdLhqLxoD+wNOqLzq5ShcU9duKsMhmJUXx7ElXpBbTq0U7oiNoTsM2
         sG5jsPoBHVgsjB3hbrq3AfJjW9FmsYcSR6c9PB+tnRP5kkIeSE+aNZY49MuWZt5a/hfe
         syyu92ZU0Nwq7LrQPCH+BImso3kE7qn4sqlvfp3VBv+vD/ypIkf5GMaKAq8PFwkOqTlW
         F2oTgGO+f8xbvYEIvgvUHclkOKiVsVFBVZPZS9Ake2rLHe/+VzFGE8rGbVlxkORfXu5F
         N3mA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=mHAp4peC;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com. [2a00:1450:4864:20::22a])
        by gmr-mx.google.com with ESMTPS id p21si196645edx.1.2021.09.13.10.00.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Sep 2021 10:00:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22a as permitted sender) client-ip=2a00:1450:4864:20::22a;
Received: by mail-lj1-x22a.google.com with SMTP id y6so18547519lje.2
        for <clang-built-linux@googlegroups.com>; Mon, 13 Sep 2021 10:00:14 -0700 (PDT)
X-Received: by 2002:a2e:99da:: with SMTP id l26mr10864789ljj.339.1631552413892;
 Mon, 13 Sep 2021 10:00:13 -0700 (PDT)
MIME-Version: 1.0
References: <202109112002.NZceUwiC-lkp@intel.com> <20210913165317.GX2505917@nvidia.com>
In-Reply-To: <20210913165317.GX2505917@nvidia.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 13 Sep 2021 10:00:02 -0700
Message-ID: <CAKwvOdnGaVb1XGwYpNK_3zAEyZ0JC1SDjC1UzzFEH=d_Mdi7Fw@mail.gmail.com>
Subject: Re: drivers/infiniband/hw/qib/qib_sysfs.c:413:1: error: static_assert
 expression is not an integral constant expression
To: Jason Gunthorpe <jgg@nvidia.com>
Cc: kernel test robot <lkp@intel.com>, Nathan Chancellor <nathan@kernel.org>, llvm@lists.linux.dev, 
	kbuild-all@lists.01.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20210112 header.b=mHAp4peC;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22a
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

On Mon, Sep 13, 2021 at 9:53 AM Jason Gunthorpe <jgg@nvidia.com> wrote:
>
> On Sat, Sep 11, 2021 at 08:17:08PM +0800, kernel test robot wrote:
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> > head:   926de8c4326c14fcf35f1de142019043597a4fac
> > commit: 84f969e1c48ed3825986e91a0786e363d57f69d1 IB/qib: Fix null pointer subtraction compiler warning
> > date:   3 days ago
> > config: x86_64-randconfig-a014-20210911 (attached as .config)
> > compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project 261cbe98c38f8c1ee1a482fe76511110e790f58a)
> > reproduce (this is a W=1 build):
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=84f969e1c48ed3825986e91a0786e363d57f69d1
> >         git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
> >         git fetch --no-tags linus master
> >         git checkout 84f969e1c48ed3825986e91a0786e363d57f69d1
> >         # save the attached .config to linux build tree
> >         mkdir build_dir
> >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross O=build_dir ARCH=x86_64 SHELL=/bin/bash
> >
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kernel test robot <lkp@intel.com>
> >
> > All errors (new ones prefixed by >>):
> >
> > >> drivers/infiniband/hw/qib/qib_sysfs.c:413:1: error: static_assert expression is not an integral constant expression
> >    QIB_DIAGC_ATTR(rc_resends);
> >    ^~~~~~~~~~~~~~~~~~~~~~~~~~
> >    drivers/infiniband/hw/qib/qib_sysfs.c:406:16: note: expanded from macro 'QIB_DIAGC_ATTR'
> >            static_assert(&((struct qib_ibport *)0)->rvp.n_##N != (u64 *)NULL);    \
> >            ~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> >    include/linux/build_bug.h:77:50: note: expanded from macro 'static_assert'
> >    #define static_assert(expr, ...) __static_assert(expr, ##__VA_ARGS__, #expr)
> >                                     ~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~
> >    include/linux/build_bug.h:78:56: note: expanded from macro '__static_assert'
> >    #define __static_assert(expr, msg, ...) _Static_assert(expr, msg)
> >                                                           ^~~~
> >    drivers/infiniband/hw/qib/qib_sysfs.c:413:1: note: cannot access field of null pointer
> >    drivers/infiniband/hw/qib/qib_sysfs.c:406:43: note: expanded from macro 'QIB_DIAGC_ATTR'
> >            static_assert(&((struct qib_ibport *)0)->rvp.n_##N != (u64 *)NULL);    \
> >                                                     ^
> >    drivers/infiniband/hw/qib/qib_sysfs.c:414:1: error: static_assert expression is not an integral constant expression
> >    QIB_DIAGC_ATTR(seq_naks);
> >    ^~~~~~~~~~~~~~~~~~~~~~~~
>
> Nick/Nathan
>
> Clang is being a real PITA here - do you know of a solution?

Hi Jason,
Thanks for wrestling with this.  We filed a quick thread last week to
track this:
https://github.com/ClangBuiltLinux/linux/issues/1452
With conferences this and next week, and -Werror fallout, there's a
lot of fire right now and not a lot of time to triage.

I guess I'm curious, what is the intent of what this code is trying to
do, and can this be replaced with BUILD_BUG_ON?

>
> This macro would like to know that the passed in member name has a u64
> type, all the things I've come up with fail on clang - but many work
> fine on gcc. Frankly I think this case is a clang bug myself..

Perhaps, though this assertion looks a bit like offsetof() to me. I
wonder if that can help here?
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnGaVb1XGwYpNK_3zAEyZ0JC1SDjC1UzzFEH%3Dd_Mdi7Fw%40mail.gmail.com.
