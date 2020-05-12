Return-Path: <clang-built-linux+bncBDHYDDNWVUNRB6EB5T2QKGQE7C36U7A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x740.google.com (mail-qk1-x740.google.com [IPv6:2607:f8b0:4864:20::740])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EF031CFED6
	for <lists+clang-built-linux@lfdr.de>; Tue, 12 May 2020 22:03:05 +0200 (CEST)
Received: by mail-qk1-x740.google.com with SMTP id a83sf14751374qkc.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 May 2020 13:03:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589313784; cv=pass;
        d=google.com; s=arc-20160816;
        b=jMkRt1/BTxS9Zlco92HXQexV79WiaHPFmX6fZi3wb4ufuT5M7f8WvfRjfpb1K74rHN
         hugfSdxz9jrL/w1KinJULk8MlADhAHOAGt3z3aM9q5u0yVXLxuOVspd7qHHdxrHognYt
         YmHqEXqQPbmeKQNuaISUAbNAuUfF8hYEgoj/T/0a1YvWKkvmXzlCtpIt9t0YdWyn+k4l
         qOoENGYZ5KiXzH64Q71NdM2kwIkVSnn1VWtRhco3VA7ZW/lB52XWylB1qtSrvAXwi633
         MhPWZhpA6jihfn4Eqeg6Z5QIhkI+jAnuFM+Qle7dRRXjlHDKy2QYzPaHiST7HR90F3dS
         Zwiw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=TiR9J348VcN74ynkTLmmulx7b81IAf0/cFlVy7GbA7s=;
        b=0O75T0CDNJ0uj+kUmOE9P4tajSPCJXU6+eEQoEyKtAzwEeM/6HcSLIyNFaPqwlGsR/
         cPqpJ6BYYB+3ZwVSC1DYwjrS8Et9EY5dDd60/GahCzcvw3feLgC7ZUVj13lHhXeCmLHt
         1ltsQTSmxC/FbLupS9DpfeH/b50S1Y0+hNmlQ9P8gBcCC1Geq/4SAB+B3kYJPyY9bb2v
         tR7d0yNZpOm4JlrIWcROkRDjbN3pKnx1El5zWd0t86boPEx9SBlYFUSFoHR5SbqVxGcm
         fbX0i1rRktT7gu+aqOrPDuu9GB1XLmxbnoR5RInZJVz1TYEBzFhohaSrS+AEEanXE8Ii
         I7cA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kSL0hgpy;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d44 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=TiR9J348VcN74ynkTLmmulx7b81IAf0/cFlVy7GbA7s=;
        b=kUHu1ctnhiqEYTGpv8Ven9wvapo2nJQ1QOiEEN46VwyDsJZNl16gFi2qWRIniI1Liv
         TW1zO48wOqgiFVMbodZrrBu2TJ90yOHOLQ9oph9K7HtgTNcTjei+rGBBpzx0zUuLtp6v
         5W/76xHcnVk/tlJDCFls+upHdrQFEEHUVVR5grtqMZ11xKLL8MfIgjOwKEjhkB6X55gu
         LpmiU3Pyk+lwarKgIaQyTE35MoiEvKptV/T2rMT+S9gKcnbxyIX9qenv3K9A9RzvaYDZ
         uhQ9NCk5E9JjIx5VV6UGnvrH9t8xrTxgXpXiv9WpUA6B/ifqlYOKPI3TBdHL0+Yg/jYo
         Lv8w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TiR9J348VcN74ynkTLmmulx7b81IAf0/cFlVy7GbA7s=;
        b=PMQMV7hItbXUURjmoDBwNSzvScdhARsGdJUz+UfuGIsWCRwrH6Q69//AV1doQ1ym6z
         7Wo58LCCldMQCfa+hFWK1uJ2Yc3CUCbsgz21iS8I+Z6ERk49165uhfTgmDc5nncAv7yB
         6j/ItjwsqpvaOuLPnBZO+4LaalJVM1pJAIkUpzCq01wp3qYGP0Mr0C5hSFqq0bf6+iGJ
         SQwERy5HTVYDQEjtHZuPVLPOjSagJXyxhKB+hWFZXtIyFCALNwIb32ADo58eYWSeblWp
         6ofwHl0SmwCfEbwu9UiwsNZIwJmdTjjBWIYZ12lKGmZs5G0v4E3saxZb5bd5e+e0BNPf
         QipQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TiR9J348VcN74ynkTLmmulx7b81IAf0/cFlVy7GbA7s=;
        b=fTnUSFWwW12C/D6V4CSpuABveqj2GPGf8Njw5hdN+/IHKY+uV07qqZZ2L1Vi//PQQd
         t8aLS8R3eJ+gR7pEzGFTTPIGx5jnJldzBkLC7ow2qoCOu9Dsj2KzOrA5Kp8gup0dmW/e
         H78U9UkZwKySqc+uP9tfVQ8VH01TCZtOv5M2QmTxbwz9hqeroM3X80AU31S6YAMPiXL7
         FCd73JPFntIiaOgDRbWIKz+K0pEKppWQ1L4jryBTuu7udaklSq2VMVAbPBgI0sYNWiQM
         A1X2VjPs+uvbj8AqOcLCQy/WynfsAfdL9MgDi2PtlwAmajzMABh3doTz7HeXITe2LciH
         F+Ng==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PubSzZznczZsroEge7Gw3JNmnaxUx4unga5qlGaQz8NcI/oiqkfu
	sJT9KbpNOIBKMS8iGZGdNJE=
X-Google-Smtp-Source: APiQypKX0AfR+3DF91gpuQgFp6xkRc1GjZqQ+JvvWg3YIlXqnNZ0uGyKI/73+Dm5qHhHqb60eROKhQ==
X-Received: by 2002:a37:9586:: with SMTP id x128mr22087986qkd.90.1589313784112;
        Tue, 12 May 2020 13:03:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:15d9:: with SMTP id o25ls7676630qkm.6.gmail; Tue,
 12 May 2020 13:03:03 -0700 (PDT)
X-Received: by 2002:ae9:dc47:: with SMTP id q68mr628968qkf.17.1589313783452;
        Tue, 12 May 2020 13:03:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589313783; cv=none;
        d=google.com; s=arc-20160816;
        b=UaXNW6J1xWn8PjjjdnzG4fpWH/t9txfaCtoJpbYfMdHW9IvuElx3MHnkjCTudj0u6Z
         2RAtoFN8u/NiDA8SpDOBJSdmjGQqcMN7AbrGcBYLfFrhBQ88Ohb1rUKDdCH+cnwP1Rl5
         9Mw9mynsCalF1AlGeQVUqdUCrS01+lkNLrCvFWMOBBHVOpa5K/XqKbxmFXMAf/GCh/QV
         KWn00QZ8/EC0/zkm2Q8Aql7cXViovh27JVDpHSFqzpSZQjs5tvL5BvQTDjgqGJBNjh03
         FFfj6+vpIciy8S2ceKoqtstfGFT48zzJ0LjAMZccMW/OH6AT/9kSY9E6+mgzPk6gOW90
         mNpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ydBNEcd5JjVpqJREhbFVwOQSjJgZ8/B8S4hq59DFYUI=;
        b=iRy68Vy8RXgEkZN7TexkGb36PnMwLWZ5rD+oqCHYhJaOwVuCfejMWUrLuHJS1spF4I
         K9ZW83Nb6tdhh+24QdNAA1YFZX1f8i1P59DUKFaemJ4PMo2cNqqGOXfvFjUZwkLQibEw
         2LUZ25MynYjTEZBMR78ypWRZpAc/1QOpBJxOd31OIGNXTpJjlUrgPeXtHXrGwXdvFXHe
         H1+nPDfpxajUewsuWlXGwTTMOBafvRHgK8SVQN4Ece1+DxwXhWdclaNp5aIL4qPzOEOO
         ej7B1K+LBbCZTFJBKNyXnrzKTB5yyJ4DvlgBFqbiItJ3BCd/hW33XK7MM8TKSc1qMMCi
         FUHg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kSL0hgpy;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d44 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd44.google.com (mail-io1-xd44.google.com. [2607:f8b0:4864:20::d44])
        by gmr-mx.google.com with ESMTPS id w66si949132qka.6.2020.05.12.13.03.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 May 2020 13:03:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d44 as permitted sender) client-ip=2607:f8b0:4864:20::d44;
Received: by mail-io1-xd44.google.com with SMTP id x5so6440223ioh.6
        for <clang-built-linux@googlegroups.com>; Tue, 12 May 2020 13:03:03 -0700 (PDT)
X-Received: by 2002:a05:6602:2dca:: with SMTP id l10mr11781247iow.163.1589313783081;
 Tue, 12 May 2020 13:03:03 -0700 (PDT)
MIME-Version: 1.0
References: <20200504031340.7103-1-nick.desaulniers@gmail.com>
 <CA+icZUUOaqeKeh6n4BJq2k6XQWAfNghUj57j42ZX5qyd3iOmLw@mail.gmail.com>
 <20200505004738.ew2lcp27c2n4jqia@google.com> <CAK7LNAR7-VMEWBcJ_Wd+61ZDHEa0gD8FaSs63YPu7m_FgH8Htg@mail.gmail.com>
 <CAKwvOdmEP9Auuc+M+MqPoQmx+70DgdsPYZQ6pg=8oGnfCviqRA@mail.gmail.com>
In-Reply-To: <CAKwvOdmEP9Auuc+M+MqPoQmx+70DgdsPYZQ6pg=8oGnfCviqRA@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Tue, 12 May 2020 22:02:51 +0200
Message-ID: <CA+icZUUSgkUM3oYUzDdhz9tdU+HGG+BMGwqJdb5RXZNNYHn5ng@mail.gmail.com>
Subject: Re: [PATCH] Makefile: support compressed debug info
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Fangrui Song <maskray@google.com>, 
	Nick Desaulniers <nick.desaulniers@gmail.com>, Michal Marek <michal.lkml@markovi.net>, 
	Andrew Morton <akpm@linux-foundation.org>, Changbin Du <changbin.du@intel.com>, 
	Randy Dunlap <rdunlap@infradead.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=kSL0hgpy;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d44
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

On Tue, May 12, 2020 at 9:23 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Mon, May 11, 2020 at 10:54 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
> >
> > > >On Mon, May 4, 2020 at 5:13 AM Nick Desaulniers
> > > ><nick.desaulniers@gmail.com> wrote:
> > > >>
> > > >> As debug information gets larger and larger, it helps significantly save
> > > >> the size of vmlinux images to compress the information in the debug
> > > >> information sections. Note: this debug info is typically split off from
> > > >> the final compressed kernel image, which is why vmlinux is what's used
> > > >> in conjunction with GDB. Minimizing the debug info size should have no
> > > >> impact on boot times, or final compressed kernel image size.
> > > >>
> > Nick,
> >
> > I am OK with this patch.
> >
> > Fangrui provided the minimal requirement for
> > --compress-debug-sections=zlib
> >
> >
> > Is it worth recording in the help text?
> > Do you want to send v2?
>
> Yes I'd like to record that information.  I can also record Sedat's
> Tested-by tag.  Thank you for testing Sedat.
>
> I don't know what "linux-image-dbg file" are, or why they would be
> bigger.  The size of the debug info is the primary concern with this
> config.  It sounds like however that file is created might be
> problematic.
>

Hi Nick,

sorry, I try to explain the magic of "linux-image-dbg file".

In my workflow, I use the "scripts/package/{builddeb,mkdebian}"
shipped with the Linux-kernel as a base to build my Debian packages.

With enabled debugging (CONFIG_DEBUG_INFO=y) a
"linux-image-$KERNELRELEASE-dbg" Debian package is created.

[1] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/scripts/package/mkdebian#n203

As you can see below...

[ CONFIG_DEBUG_INFO_COMPRESSED=n ]

47      5.7.0-rc4-1-amd64-clang/linux-image-5.7.0-rc4-1-amd64-clang_5.7.0~rc4-1~bullseye+dileks1_amd64.deb
424     5.7.0-rc4-1-amd64-clang/linux-image-5.7.0-rc4-1-amd64-clang-dbg_5.7.0~rc4-1~bullseye+dileks1_amd64.deb

[ CONFIG_DEBUG_INFO_COMPRESSED=y ]

47      5.7.0-rc4-2-amd64-clang/linux-image-5.7.0-rc4-2-amd64-clang_5.7.0~rc4-2~bullseye+dileks1_amd64.deb
771     5.7.0-rc4-2-amd64-clang/linux-image-5.7.0-rc4-2-amd64-clang-dbg_5.7.0~rc4-2~bullseye+dileks1_amd64.deb

...there is minimal change in the size for the Debian package w/o
debug-infos - approx. 47M.
As said 424M vs. 771M for the dbg packages.

There is another big benefit checking my recorded stats:

$ grep 'cache size' stats/5.7.0-rc4-*/ccache-s.txt
stats/5.7.0-rc4-1-amd64-clang/ccache-s.txt:cache size
         4.7 GB
stats/5.7.0-rc4-1-amd64-clang/ccache-s.txt:max cache size
        10.0 GB
stats/5.7.0-rc4-2-amd64-clang/ccache-s.txt:cache size
         3.4 GB
stats/5.7.0-rc4-2-amd64-clang/ccache-s.txt:max cache size
        10.0 GB

So the cache of ccache is reduced: 4.7 GB vs. 3.4 GB

If you have any questions, "Don't ask to ask - just ask." :-).

Thanks.

Regards,
- Sedat -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUUSgkUM3oYUzDdhz9tdU%2BHGG%2BBMGwqJdb5RXZNNYHn5ng%40mail.gmail.com.
