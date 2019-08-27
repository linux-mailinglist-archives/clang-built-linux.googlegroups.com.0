Return-Path: <clang-built-linux+bncBDYJPJO25UGBBN6AS3VQKGQE7UDA73Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x340.google.com (mail-ot1-x340.google.com [IPv6:2607:f8b0:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id E0DA49F50E
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Aug 2019 23:27:20 +0200 (CEST)
Received: by mail-ot1-x340.google.com with SMTP id x31sf161146ota.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Aug 2019 14:27:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566941239; cv=pass;
        d=google.com; s=arc-20160816;
        b=dK+ydgbknDERJ/CgfcAvIvMdQSF7s8OWBMXprHtjda9ziOCeZlNAk75QOAD4elJtS2
         t44exvf3AxDruPkuw8YkNXHFlB2wAOmHv3JJk6LK8C8958L0DJ4Ze9WHBzIXOJLDtzZt
         QWpxgj7yjdGzJzqo27rLqa65ImO+zjOcGq34n491Wbxq4QKPuEVdMcX++MHYZKaj6uBS
         bb1wl+Erz20RcLkguCJul09o4eG6DCmhrms4W2xS2X4gZYk7bRBG72zX4JexF6nQSIQH
         EA+CLCUq5HTcTOUbwzmaqFMqsZP0CwxTiwSyYzTk08aU6VLTI82hGspebhp+oiQjeZl0
         sqjA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Jh5197fhy6hb3myQbisusQqkBV22BlMyqsw3S4v/4as=;
        b=NU/1WsJney8wg8L4N8lwvaGReZ4yjrG9E7Jq87/zlkZVfDog8AUiYZT12wtDMT1nHC
         J8XrG12gsV6Ek7osuR8yFuHopugwzc6oOc8/Han76ovrCcFR1YpMeJrqyY4hR5VCsW92
         p4g/0m32jkrcatb9EmupSy57lWwKBxinlcWlNRpM6vkIKRvtsAiyfmy58gvsHA04Ha+a
         i2WWNr5xHg4962qprrlfh76lfaZL9IQ+4fYAEUqjKOsK5cCfcZoXhY9C6spmWpaH5B8o
         H+ZpYZ3Jeyl1/IXko3cuNXmUJpQLL+EF+r6+ign6xpaZu9vL+f8/4E/tv15RePQHu8V5
         zMlw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=nlkQCqlr;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Jh5197fhy6hb3myQbisusQqkBV22BlMyqsw3S4v/4as=;
        b=ot+noNrqFxqxjBPJC948YZG4o6i5DFQz5h/K1dBCTW2o68J87nboJX3ggdoUrqyj/S
         L6zvglmBdewcpB1eWmoUCfHiwsYhbGFrMeWm5++UDienSRth7z0QjKfijv26MgR1yoIC
         OJ9+fVh3FK6WD+H68353V/3r5FmYuIV2b7r2YSnrrnfNwrmWOF4HKfMw71RTVAgtcJPN
         9zEPAiuAap9u3K3ga4JhqWnZhXTDvnp2G+ufPTK8sHUC9W3tibEMd3o1wPIXjVxyrfTR
         aMZ7K7zQEx30K3UKrlV8vipTxBISMSWYNV74ELYhNs5tRANic/09XdbaGUXdKzAphPxP
         DoBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Jh5197fhy6hb3myQbisusQqkBV22BlMyqsw3S4v/4as=;
        b=Z+Q92BaVIILRYjJRgT/zdr+kgjUa6cwFBZWcAOZ7SNb7i8XisdJhvt7YeQP4loBFhi
         Yakhkl5q+cXyFkGdvH9h6nUFEiBifM53ywbrUMR1yUIgeqhJzc7MJb5OqBwpwzTY+tLo
         MeTpdLuycRiQ0NPP9TRzoABUkimoIznWfSwKPBxpyFiTME+dzCz8RZPGYEoFRu5t0Vw0
         Bd1t4ESI2By7bGy7QdmKR4U0JstqYP7VJ+UsHfaCrSiq+XKnW9yobhLv2wPPzV4o6SYw
         hhRYzU+iV2tDTHCL8TJaQOC4xXC6xjr8nGjuETUWojOsAuAYlen0GYwdFS1hSvbsTbD0
         l4Iw==
X-Gm-Message-State: APjAAAUTefkrJQHqUcxH9cVwrx+EopYtvF2twY3qnZqNVG9UUUTK0ufA
	n8iaxDdqFZ+7ZSjeZ1u//B8=
X-Google-Smtp-Source: APXvYqyqq6eB+8xi39D+owTpKctDDVz0MY24MRTtxF8Q0pEM7DvWhmpohjaWXwMBK+sTh8ZVbA0tlg==
X-Received: by 2002:a9d:f65:: with SMTP id 92mr609151ott.24.1566941239785;
        Tue, 27 Aug 2019 14:27:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:c385:: with SMTP id t127ls65188oif.7.gmail; Tue, 27 Aug
 2019 14:27:19 -0700 (PDT)
X-Received: by 2002:a54:4f84:: with SMTP id g4mr562141oiy.143.1566941239142;
        Tue, 27 Aug 2019 14:27:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566941239; cv=none;
        d=google.com; s=arc-20160816;
        b=jwrtKE1IA9BNIyZ9l8k7mqlgnorKGXj3cc4kKJ3RZ0UhtjBBRuNRRLvUpRGrjdCJDg
         LwR/8CObYG937uwaZ1Y9ADZQDPQKIdBXuqpDia5eoKGh+nZmUKzYhpVq6CFxBF8pSSvr
         OiCkOyx3wRgoxkDGRtZ5iD/KfbcNiTirO3NIwi89rJayIKBS6LJJddIpo7GRiSz/Wcy7
         J8nPwof5XKW/i+DO1BGUEENuE5uQ/jDGzRWLdeWmkWSFYajxj/IU2Tt0/6mkxzJnhccc
         DmrOLFWthfk1Ra6lR/a+5bDgTZ9w9AvmGtLsPNbiqpOxlyFyUJ7Y+CgMU+jdKq8HmNYb
         ElaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=dORKsa24CPlzONt8GkpEJmy5cgog5+v4B7b48TayOmE=;
        b=BbW5pyHhVsy5pNbgb1X7gh/yT8iGlsUmoI3k2iu+mix4H90XYbnQfuN1nUWBtWAYxR
         aHq+oRJCzJBh4/1g8tiAOr0fsiPHhWYj9BcPVMU9jM3Xm4+D8ZuFNrUasYOOk4oD5xrF
         wApqQtgTBX3Np3zHCebPyH2kQbZNHuKRtdBAk0YaFvgPtYVKs5PBRXvOm2dHAWw5HZNo
         VnVT2vl9ipd0vX9H2H5hV3/ITMBfh5kwA93bDKx++TecXW0RQQ0NPFBwzCmvt1d6Xizw
         cqpIwwWkthDITLTwJzgun5pTAUkKcHtMIfvgEMKY4RujthzDuoQGEMoe2B9F3coBg4Ap
         5gCA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=nlkQCqlr;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id f16si38184oib.0.2019.08.27.14.27.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Aug 2019 14:27:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id l21so179582pgm.3
        for <clang-built-linux@googlegroups.com>; Tue, 27 Aug 2019 14:27:19 -0700 (PDT)
X-Received: by 2002:a63:60a:: with SMTP id 10mr432471pgg.381.1566941237865;
 Tue, 27 Aug 2019 14:27:17 -0700 (PDT)
MIME-Version: 1.0
References: <20190711133915.GA25807@ziepe.ca> <CAKwvOdnHz3uH4ZM20LGQJ3FYhLQQUYn4Lg0B-YMr7Y1L66TAsA@mail.gmail.com>
 <20190711171808.GF25807@ziepe.ca> <20190711173030.GA844@archlinux-threadripper>
 <20190823142427.GD12968@ziepe.ca> <20190826153800.GA4752@archlinux-threadripper>
 <20190826154228.GE27349@ziepe.ca> <20190826233829.GA36284@archlinux-threadripper>
 <20190827150830.brsvsoopxut2od66@treble> <20190827170018.GA4725@mtr-leonro.mtl.com>
 <20190827192344.tcrzolbshwdsosl2@treble>
In-Reply-To: <20190827192344.tcrzolbshwdsosl2@treble>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 27 Aug 2019 14:27:06 -0700
Message-ID: <CAKwvOdk3UTT5jUTuG_wRizdpUtgv3qFB3w3NCtJ7ub5DnptYRA@mail.gmail.com>
Subject: Re: [PATCH] rdma/siw: Use proper enumerated type in map_cqe_status
To: Josh Poimboeuf <jpoimboe@redhat.com>
Cc: Leon Romanovsky <leon@kernel.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Jason Gunthorpe <jgg@ziepe.ca>, Bernard Metzler <BMT@zurich.ibm.com>, Doug Ledford <dledford@redhat.com>, 
	linux-rdma@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Peter Zijlstra <peterz@infradead.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=nlkQCqlr;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543
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

On Tue, Aug 27, 2019 at 12:23 PM Josh Poimboeuf <jpoimboe@redhat.com> wrote:
>
> On Tue, Aug 27, 2019 at 08:00:18PM +0300, Leon Romanovsky wrote:
> > On Tue, Aug 27, 2019 at 10:08:30AM -0500, Josh Poimboeuf wrote:
> > > On Mon, Aug 26, 2019 at 04:38:29PM -0700, Nathan Chancellor wrote:
> > > > Looks like that comes from tune_qsfp, which gets inlined into
> > > > tune_serdes but I am far from an objtool expert so I am not
> > > > really sure what kind of issues I am looking for. Adding Josh
> > > > and Peter for a little more visibility.
> > > >
> > > > Here is the original .o file as well:
> > > >
> > > > https://github.com/nathanchance/creduce-files/raw/4e252c0ca19742c90be1445e6c722a43ae561144/rdma-objtool/platform.o.orig
> > >
> > >      574:       0f 87 00 0c 00 00       ja     117a <tune_serdes+0xdfa>
> > >
> > > It's jumping to la-la-land past the end of the function.
> >
> > How is it possible?
>
> Looks like a compiler bug.

Nathan,
Thanks for the reduced test case.  I modified it slightly:
https://godbolt.org/z/15xejg

You can see that the label LBB0_5 seemingly points off into space.
Let me play with this one more a bit, then I will file a bug and
report back.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdk3UTT5jUTuG_wRizdpUtgv3qFB3w3NCtJ7ub5DnptYRA%40mail.gmail.com.
