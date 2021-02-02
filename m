Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBVPO4OAAMGQEO42QSIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DBF630B80A
	for <lists+clang-built-linux@lfdr.de>; Tue,  2 Feb 2021 07:55:19 +0100 (CET)
Received: by mail-pf1-x43e.google.com with SMTP id y16sf12549909pfp.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 01 Feb 2021 22:55:19 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612248917; cv=pass;
        d=google.com; s=arc-20160816;
        b=uF+16bGGj21FASYCGI6wqTxFPwzwInAWTN05hJ12ZxKJ6eeWwTrcLjNxLxI52GoEnA
         51zmDH0BilPc5W00cXHqIQtgUElre1ZLAgqUq/3FNdybHqpzuuIP+kW0R7Fr9Y/ftUIj
         4C33klGthuUAgHx8ZSSi9D00GE/sux2KNW8vrr5THlZnhV7Tl12KzIgt5YGivVTImUgA
         0su7RkgMni2NO1RO4ETqOUKcFu0nh5y595+D79iyzHFyFwiG11bs3xMQAybciqcVYLHb
         /Sp4ILTvL/2mW6DP4+KgvF3OW4WcX57CJllCE5DyjyfxNkzCHAK10VSaqXdr/EyuZSm9
         J+8g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=oAeq5tKZbEY+jLE+ywxK4pjw/JTfGuSDayWhrix2q2g=;
        b=Gh1tcT31hANOMSZVFsvimQ++0W6wAKS9qHMlnphfiUlluDH86t4SMm2/2zpJgxrDko
         itRP9zNYpz3q5HJ1ufbULXBDyjk9D/9qy3lDxh+yDzAQosY0TfWDNq09fv/TH3hf1/Hn
         y3v/gfsDuM/GNiVttnwPP5lTueh14aiIj26CMrIgibimDhZixomXoih2HpylYgvHeIZV
         CiMTw8PXng/PKmHyCiiDhM/+eQehB77pxbeo7GS/6O5Sm/qWNnxZin1nQbreYlw24UO9
         LI0fUKbvo9VrtWr91mOsi7gbHdv5Xke2RoLPlhNkbQzrNY0IbQzFBIByhPrGV7Qn9RMk
         yYAQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OZqDDd5N;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::135 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=oAeq5tKZbEY+jLE+ywxK4pjw/JTfGuSDayWhrix2q2g=;
        b=qUlcK7SajGfjpzuyEVODb6xZVE9zB8F4auzBKuDRHrs/jcAR7kwCX25Bftmmu9Rf0J
         TGD78dyOU7SRpic6VAHoWnqTQsWBGTZMpDdV3gsub0osx6nV3jZwwouUvWHrUfGNPYJ9
         Dqdkv3f4KWPFD9RUQUJalexc3x++NazMXDL4TtI4R2R+fbrt3sS1s8QmmcPe72K7hCZN
         7rzoeOh+gIkgLygqeOls7/+5Gg+AAK+DW2eucX45fRwR5odkkBv5bpQk2hsG5h/GMpmq
         1zaphU8TJ8jgoJ6u2zehcdHBGOeeVA4mqzAia2sm1nZeGe5VymTAV3e2vTJ3Sl6Z40Wc
         r7cw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oAeq5tKZbEY+jLE+ywxK4pjw/JTfGuSDayWhrix2q2g=;
        b=jiVEzxGUF1de1ifZYs0myQ++o1KjJLVJV+fLQ7RuQyWtlrVkffjyODhwqAR94lx5Mo
         5tFEW96QW0hPW3hHzAjFzzRYc1ZV2ccvZ2JffuyVNjEFIR2kt5uG/5p+0YXg5MrVHdMJ
         Xt/CfjVvmxh+kDsD9ym20LLBFj7anDJIaM6MJQnXWN/KstEmeCsKU8TIxtaJljBwWeMV
         OuJOWV/G49e/vh8P8AiIwM+cYCX32THUr929ObsDDX/8Yphsgl2XpAWnr+iLG2JpLGFt
         GDyZf0gkTmqUuJ4E/iiFvftqmYP0qXhrUKFNSdYNkaG+FeLAQDy5shTBfISzZBiIA1sM
         nC1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oAeq5tKZbEY+jLE+ywxK4pjw/JTfGuSDayWhrix2q2g=;
        b=I9x5KjEQBYj4XREVzf9m3Laz2Insnn+GbVjAjSWMWeA2K7my17w4cSA0AXuW2t6DNT
         VCnAc990cz/u0gYX6TpF4u+S7I5ErB7gz9zKmKexAQTyNx2SYFF8je66AU21kvoF4fJD
         Qhiv1XC5fS7mjt9PjsgLo/sPgm1My4FYLVgXEGIhRhBEC/Pi8WHniS6nicBIef9yN6sO
         TLJRcccb69kA7FQK2qUdXS7HfErgbbi+IGfWgH5bguTtM9BsCZD0aK5cNEK8XHDt/09a
         M4ho7aD29w941xkEtszDyhPotizoi9NVpTZmxnfXenmOXfycMyzh22n0kL2e06XMxqJ1
         syfA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5314ks+g8vHuV2uw41hlkk6qhDXHzLTzv0aYeq1i6GuKXOP3j2uI
	8AzzlgibscWtTFfYl8c22jg=
X-Google-Smtp-Source: ABdhPJxpx0db1Kbt6VVTFSenSWzBdkUf0OZe4Q7AHsi4qKWpjR2Uyyq1qfWEcdz/DSroYhWJqQ65yA==
X-Received: by 2002:a63:5853:: with SMTP id i19mr20118043pgm.27.1612248917549;
        Mon, 01 Feb 2021 22:55:17 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:a609:: with SMTP id u9ls9619720plq.7.gmail; Mon, 01
 Feb 2021 22:55:16 -0800 (PST)
X-Received: by 2002:a17:90b:4b86:: with SMTP id lr6mr2763545pjb.107.1612248916900;
        Mon, 01 Feb 2021 22:55:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612248916; cv=none;
        d=google.com; s=arc-20160816;
        b=YEZ3sZDCuicBxKRr9wPB60Bm3NkYBSETrdX3QDH4Pbjv71g21dRfqddNzTo46xjuyK
         IS1FEk4gRGidMVNwpu+sfHADLsq1kmpxyEoO/WBlPZjTQASSiw1u3/qLP/1sxXH0ahFv
         takBSpq1exrHA41X+KQSs0F3oNAdsoI8NmL7KsNH62HzaHpIgX9z+Kh1XLcMKcf/Xfvk
         t5ZUAGDjaB6EVpgYULWsAYdtOihpaAD7yAQX3IL4KHwmZDdqbDewflN5u/7myjveg0YD
         aW70/7Q6ortEjif+stiydFpwj+oTaqGdyIYq+oo9Xbya7RFkxF/gLqUFB96o/FJO3oQS
         cCug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=WpSVmsY/faKm4dlJ146DwBtmdLNrKsjKH+DPaGAQX+I=;
        b=DC3/PchdV9Vp2kuufz7rLVoRtJKvtry96f5kpKIwXBbddHBgU7snmLRgZ533r+V0CE
         l6DEAFUVIA75cEo6ZsoCgyTznapRpsCxsNPnKImnm/g6b3bNwBns6P6LiZFMhEwDJ2BP
         w3Yf83ZrNm6OE6hWkqV5Ev42h0dHezJEL61TzBUb71d0etS202GptjvoZ+fKmBn6gZ4f
         af8F9uayNJmco96C0Vctz+K+UTB2dQ6o1a64BIftXLiu9rLDzevXaR/Zu5jl21BGy+Jw
         ZPHYVWd/fOp8kOc9jYUAH8yXnNiM9P+UIhXvmRBKV1B9fComEBEHfFRG6jwoBpznFkpU
         BH0Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OZqDDd5N;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::135 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x135.google.com (mail-il1-x135.google.com. [2607:f8b0:4864:20::135])
        by gmr-mx.google.com with ESMTPS id i10si218992pfa.6.2021.02.01.22.55.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Feb 2021 22:55:16 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::135 as permitted sender) client-ip=2607:f8b0:4864:20::135;
Received: by mail-il1-x135.google.com with SMTP id a16so450436ilq.5
        for <clang-built-linux@googlegroups.com>; Mon, 01 Feb 2021 22:55:16 -0800 (PST)
X-Received: by 2002:a92:444e:: with SMTP id a14mr315234ilm.215.1612248916528;
 Mon, 01 Feb 2021 22:55:16 -0800 (PST)
MIME-Version: 1.0
References: <20210201010819.655597-1-masahiroy@kernel.org> <CAKwvOdnECGDFe=n6ms0Aj7FB0sN7ktZyk4dyVvV0UTgPvpuWpA@mail.gmail.com>
 <CAK7LNATSna9f8cd5Lm=zx2vfJzk=WUnAUkA8V593O304zTx=vQ@mail.gmail.com>
In-Reply-To: <CAK7LNATSna9f8cd5Lm=zx2vfJzk=WUnAUkA8V593O304zTx=vQ@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Tue, 2 Feb 2021 07:55:05 +0100
Message-ID: <CA+icZUVDG1AHHrOcRua3qdA7_5vtJONOt1K3XgQiuWcydmRkjg@mail.gmail.com>
Subject: Re: [PATCH] scripts: switch some more scripts explicitly to Python 3
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Linux Doc Mailing List <linux-doc@vger.kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, Thomas Gleixner <tglx@linutronix.de>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>, 
	linux-spdx@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=OZqDDd5N;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::135
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Tue, Feb 2, 2021 at 7:10 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> On Tue, Feb 2, 2021 at 3:28 AM Nick Desaulniers <ndesaulniers@google.com> wrote:
> >
> > On Sun, Jan 31, 2021 at 5:08 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
> > >
> > > For the same reason as commit 51839e29cb59 ("scripts: switch explicitly
> > > to Python 3"), switch some more scripts, which I tested and confirmed
> > > working on Python 3.
> > >
> > > Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> >
> > Thanks for the patch. It's time to move on from Python 2.
> >
> > It looks like there's already a patch in -next for scripts/spdxcheck.py.
> > ("spdxcheck.py: Use Python 3") by Bert Vermeulen.
> > https://lore.kernel.org/r/20210121085412.265400-1-bert@biot.com
>
> OK, I dropped the spdxcheck.py change in v2.
>
>
>
> > What about:
> > scripts/tracing/draw_functrace.py
> > scripts/show_delta
> > scripts/jobserver-exec
> >
> > Or do those need additional source level changes?
>
>
> I touched jobserver-exec in this patch:
>
> https://patchwork.kernel.org/project/linux-kbuild/patch/20210201010024.654526-1-masahiroy@kernel.org/
>
>
> I have not tested draw_functrac.py or show_delta.
>

As Debian/testing - upcoming bullseye release - has moved to python3.9
(3.9.1-3) as default I am interested in the kbuild transition to
python3.

Is it possible to have a Git branch in kbuild.git especially for this
transition?

Honestly; I lost a bit the track of all kbuild/python3 patches.

Thanks.

- Sedat -

> > > ---
> > >
> > >  scripts/clang-tools/gen_compile_commands.py | 2 +-
> > >  scripts/clang-tools/run-clang-tools.py      | 2 +-
> > >  scripts/spdxcheck.py                        | 2 +-
> > >  3 files changed, 3 insertions(+), 3 deletions(-)
> > >
> > > diff --git a/scripts/clang-tools/gen_compile_commands.py b/scripts/clang-tools/gen_compile_commands.py
> > > index 19963708bcf8..8ddb5d099029 100755
> > > --- a/scripts/clang-tools/gen_compile_commands.py
> > > +++ b/scripts/clang-tools/gen_compile_commands.py
> > > @@ -1,4 +1,4 @@
> > > -#!/usr/bin/env python
> > > +#!/usr/bin/env python3
> > >  # SPDX-License-Identifier: GPL-2.0
> > >  #
> > >  # Copyright (C) Google LLC, 2018
> > > diff --git a/scripts/clang-tools/run-clang-tools.py b/scripts/clang-tools/run-clang-tools.py
> > > index fa7655c7cec0..f754415af398 100755
> > > --- a/scripts/clang-tools/run-clang-tools.py
> > > +++ b/scripts/clang-tools/run-clang-tools.py
> > > @@ -1,4 +1,4 @@
> > > -#!/usr/bin/env python
> > > +#!/usr/bin/env python3
> > >  # SPDX-License-Identifier: GPL-2.0
> > >  #
> > >  # Copyright (C) Google LLC, 2020
> > > diff --git a/scripts/spdxcheck.py b/scripts/spdxcheck.py
> > > index bc87200f9c7c..cbdb5c83c08f 100755
> > > --- a/scripts/spdxcheck.py
> > > +++ b/scripts/spdxcheck.py
> > > @@ -1,4 +1,4 @@
> > > -#!/usr/bin/env python
> > > +#!/usr/bin/env python3
> > >  # SPDX-License-Identifier: GPL-2.0
> > >  # Copyright Thomas Gleixner <tglx@linutronix.de>
> > >
> > > --
> > > 2.27.0
> > >
> >
> >
> > --
> > Thanks,
> > ~Nick Desaulniers
>
>
>
> --
> Best Regards
> Masahiro Yamada
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNATSna9f8cd5Lm%3Dzx2vfJzk%3DWUnAUkA8V593O304zTx%3DvQ%40mail.gmail.com.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUVDG1AHHrOcRua3qdA7_5vtJONOt1K3XgQiuWcydmRkjg%40mail.gmail.com.
