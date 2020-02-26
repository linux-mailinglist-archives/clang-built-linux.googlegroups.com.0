Return-Path: <clang-built-linux+bncBAABBG543HZAKGQEBFKBE6Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x137.google.com (mail-il1-x137.google.com [IPv6:2607:f8b0:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 73F0C16FE8D
	for <lists+clang-built-linux@lfdr.de>; Wed, 26 Feb 2020 13:01:32 +0100 (CET)
Received: by mail-il1-x137.google.com with SMTP id w62sf3676396ila.22
        for <lists+clang-built-linux@lfdr.de>; Wed, 26 Feb 2020 04:01:32 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582718491; cv=pass;
        d=google.com; s=arc-20160816;
        b=pH8qS5FlIy9U+xul0mwA3aoU7ziOPvfzvp2CtwZWXwtxHtFg1daJ73gpfkySIZDB8O
         LSWut9TYMSmwN9qcMkQArmCkzhYAvsz4RF3ZRk+qomFq8OkDTIFHQcwM3+FD216arx11
         wVME1S9grvJbhF3HOVYusk1u2Sha4btH3J5Oe7F4lHeBBsCVAnz+F68Tyq3SmjnbCi1v
         vxR17SidQ6nbRMbHBz6T4xtXhDFunZZ1UFvPNFccT+M0Eg50GOgwr0rE7dGnVWkxBg3W
         +Fv3VX3nvVF4hWs6NeV8/xjemeTqnagjQ+5x7xKAbdzclrYTJnifev+7w0ANUSbC7hI1
         22eA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=Q9CHwo4Zrg2mkJeM/BMmYB5fYHT3y8kBOiMS8ItlCW8=;
        b=jtoEkOzojcLbvrx1s8L9GIKyS0BbMdRsNlwFgQCvHvBrizjssCxpVfHQQ0pZyYQNW2
         8XlTxcq9LhfJRLY99qdfiLbBae48hiPyZi+coUNiDbyXJ6SB87Mm85AQ5E7drKrZHIQg
         OvKb5x42B3WQF61r0HNbPASeTJ0IlJib5vwTFR/obpY3brMoqMGaAYbpB/yfL4D1OaGV
         OqAwARH54V6DfB3R8f6ewDqbeDYKu/6XL3ttzNyVcYU6G9uYayHpVt0z4Xw+Jo7BsNJc
         8/q9SCpu+6y0pwzyCatTA+yj/hQ1PAZKDMxKQo1SurvQzRYEV3kv07YIMz1+LfquhS2x
         WH6w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=Nigc2RPk;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Q9CHwo4Zrg2mkJeM/BMmYB5fYHT3y8kBOiMS8ItlCW8=;
        b=dM4oYc5HSLmPOUwomiV/OkkedB/1jqJB4AwSUg3ktL2Ty5UpbEnWknlWwcb3YE+En4
         4YA+g2HmLcS1uH1u0S8v5QaK5SAiuorphVe/H4CnGbMbRo5Hie8h/kzrXoCwbvVwfx66
         LLk8d4xL7eG2SRlIHgFes1nLQPPzJtP71TdtDIPbUWoKt3l64Gl4IslD4VMjlqgDrTse
         hWWgTyV0yxpUewuFB474uLwS4Il+FA8riTondVpiqoVa8rEL9eNz1oUp8WnD6mOHMVtC
         xZOzZJ4xMD85xOL9JIKQwRQfVmphNT3m8jpailF75LRyzWFM1jFu2aPDZsezxJiAi1Aq
         ITyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Q9CHwo4Zrg2mkJeM/BMmYB5fYHT3y8kBOiMS8ItlCW8=;
        b=BEYHyljl5VYTjL9vTgkjXNG4UsJgMEweJpFkvPW7GMoycDiz59GR6w6xvC9BakpjMK
         fSGFXyXBCtWGFZ7n56liRjqbA+102HImOUEt8vTX5qNbHxizZ+Y8WfgFgdIUnz57xgSU
         4nKzSlH6A+Ze/yeaI+laKgZSQ0I8inpi/XBUkLhQNJBVB8fM7SgkUVG6Z+62ct2X9Piv
         D0Clk+Kx4oJO2Vmw2aYOVtap481v4iZwjI95AO6tZlZQpRzS7GnN8CVCLlPZQZGHrTGj
         g/8uprBclbgzVKMfmueMQIfOaae7ivB0kr3Xy1aUk71POAjIkRDVXYXxmxooK0cOD+14
         jeVw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVjXdL9IRlDxO3/QCSlcaljJZfFQlDFo+GQbnlOK0xViPy5cMSl
	7OOPTHpPq6px+nvo1zxzoL4=
X-Google-Smtp-Source: APXvYqwz5KbZpeyRJxpdSIEJiwbSyaqzYvuygK5hR4XqFYRgDHoDrpgaCOXDPcjEzpoT4NOy8kANtA==
X-Received: by 2002:a92:d08:: with SMTP id 8mr4227247iln.136.1582718491257;
        Wed, 26 Feb 2020 04:01:31 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6602:2410:: with SMTP id s16ls620257ioa.8.gmail; Wed, 26
 Feb 2020 04:01:30 -0800 (PST)
X-Received: by 2002:a6b:c304:: with SMTP id t4mr4181789iof.100.1582718490877;
        Wed, 26 Feb 2020 04:01:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582718490; cv=none;
        d=google.com; s=arc-20160816;
        b=gXIcRlN/QsnEO1F7vgyJ7JaIEnsVk0DHSxa45AK5N/uVouSjYhmJweig83uoS0K/Ri
         Nt6kB7aO+0aA4iy4vGcFiKuIkL5ddeRk36WQqbaH1efkg7t0vy1UMxovQGhrVWzbOxHx
         beYcjPORvJb9H/dkWCOSjp7ys+DRK+8+2xvTtjjGoZPleIp8+eFA4oPmEn4MYXSZ0XXg
         gxYhOm2ifUvhDuMUCaJIjW/G7AaGZLwMpu0bRwZq9foj+R3QdBCxXcM9DF1/p7/3gKIP
         zyr0EQ0kj9njosOC9S4o0gm7nBeOr/PyJ+k4vSbxQWNZyj5jYuRFFup4bpuSEOng9Gqg
         yiBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=eXTv3XS960d93mdHxhl8i6TVCJ/l9qSZuAjHESIHG2s=;
        b=pQxKY3inoeWfTFoU3xc4PmsEinXHwOxnZcn8QYZ78iHvM638R1AXPzKH4mLgtQ/Cau
         UjZ9gmsKIYLb+YIKE7X0TREOd1PrGwPUZiNk4fN6sujhx2iBzKSoX1c2uuGPc2srB6ya
         IYP5t4IXgy9GD8leQ3ZodcKDspZW1uFwMSAzpOEcaVZBC8gqHU6MoBekPS6lkMSLZoar
         /L53qYyApBqVziIhQo3cit8g+WGCVRlEf3SeHwYd5x9NDSOcLGldtQ2XikvoF0TI4YVi
         4KngtkJcWToqaewJCrvk7Rlth4/xGREMW0Kfjl6l7Tm2WAHIwvheZF51rm1wgP+JSkk0
         Q+KQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=Nigc2RPk;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-02.nifty.com (conssluserg-02.nifty.com. [210.131.2.81])
        by gmr-mx.google.com with ESMTPS id u22si70184ioc.3.2020.02.26.04.01.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 26 Feb 2020 04:01:30 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) client-ip=210.131.2.81;
Received: from mail-vs1-f50.google.com (mail-vs1-f50.google.com [209.85.217.50]) (authenticated)
	by conssluserg-02.nifty.com with ESMTP id 01QC1CJD017910
	for <clang-built-linux@googlegroups.com>; Wed, 26 Feb 2020 21:01:12 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-02.nifty.com 01QC1CJD017910
X-Nifty-SrcIP: [209.85.217.50]
Received: by mail-vs1-f50.google.com with SMTP id p6so1577849vsj.11
        for <clang-built-linux@googlegroups.com>; Wed, 26 Feb 2020 04:01:12 -0800 (PST)
X-Received: by 2002:a05:6102:190:: with SMTP id r16mr3585123vsq.215.1582718471427;
 Wed, 26 Feb 2020 04:01:11 -0800 (PST)
MIME-Version: 1.0
References: <20200224174129.2664-1-ndesaulniers@google.com>
 <CAK7LNASNsOmyqFWYtJHB4UcHAed5C_isWvMJ4MKHu0O=yUy=8w@mail.gmail.com> <CAKwvOd=mPg79CrYnDm8=z0iJpKL0FHm9J5qZF0_A6BFXBv8Dow@mail.gmail.com>
In-Reply-To: <CAKwvOd=mPg79CrYnDm8=z0iJpKL0FHm9J5qZF0_A6BFXBv8Dow@mail.gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Wed, 26 Feb 2020 21:00:34 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQ83rLAm1GcvrgJbinyAVPpM_SoxfO7RdOAfmXyg2tBdQ@mail.gmail.com>
Message-ID: <CAK7LNAQ83rLAm1GcvrgJbinyAVPpM_SoxfO7RdOAfmXyg2tBdQ@mail.gmail.com>
Subject: Re: [PATCH] Documentation/llvm: add documentation on building w/ Clang/LLVM
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Jonathan Corbet <corbet@lwn.net>, Kees Cook <keescook@chromium.org>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Michal Marek <michal.lkml@markovi.net>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=Nigc2RPk;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.81 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Wed, Feb 26, 2020 at 5:52 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Mon, Feb 24, 2020 at 4:34 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
> >
> > On Tue, Feb 25, 2020 at 2:41 AM Nick Desaulniers
> > <ndesaulniers@google.com> wrote:
> > >
> > > Added to kbuild documentation. Provides more official info on building
> > > kernels with Clang and LLVM than our wiki.
> > >
> > > Suggested-by: Kees Cook <keescook@chromium.org>
> > > Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
> > > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> > > ---
> >
> >
> > Perhaps, is it better to explicitly add it to MAINTAINERS?
> >
> > --- a/MAINTAINERS
> > +++ b/MAINTAINERS
> > @@ -4118,6 +4118,7 @@ W:        https://clangbuiltlinux.github.io/
> >  B:     https://github.com/ClangBuiltLinux/linux/issues
> >  C:     irc://chat.freenode.net/clangbuiltlinux
> >  S:     Supported
> > +F:     Documentation/kbuild/llvm.rst
> >  K:     \b(?i:clang|llvm)\b
>
> I'm happy to leave it to the maintainers of Documentation/.  Otherwise
> we have a file for which there is no MAINTAINER, which seems
> ambiguous.

It is common that MAINTAINERS lists per-file (per-driver) maintainers.
It does not necessarily mean a person who picks up patches.

scripts/get_maintainer.pl lists maintainers that
match any F:, N:, K: patterns.
So, both Doc and Kbuild maintainers/ML will still be listed.

Having said that, it is up to you. Either is fine with me.
Another pattern 'K: \b(?i:clang|llvm)\b'  covers this file anyway.


(BTW, I am also happy to see your name as the maintainer of this entry.)


Thanks.

--
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAQ83rLAm1GcvrgJbinyAVPpM_SoxfO7RdOAfmXyg2tBdQ%40mail.gmail.com.
