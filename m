Return-Path: <clang-built-linux+bncBDYJPJO25UGBBMO2RH5QKGQE64PXPEA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x839.google.com (mail-qt1-x839.google.com [IPv6:2607:f8b0:4864:20::839])
	by mail.lfdr.de (Postfix) with ESMTPS id 07C6F26CA41
	for <lists+clang-built-linux@lfdr.de>; Wed, 16 Sep 2020 21:53:23 +0200 (CEST)
Received: by mail-qt1-x839.google.com with SMTP id b54sf7014102qtk.17
        for <lists+clang-built-linux@lfdr.de>; Wed, 16 Sep 2020 12:53:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600286002; cv=pass;
        d=google.com; s=arc-20160816;
        b=G5SyszlC0cgiMg1lcWOTa48cuamaYYgup5wYn5plK5OtJXtz5hG89EQ8jwsydN8woR
         gWSbcPFO2uZWZ389zcjLHzkWg6sBdubE6kZWBVjZugJz/oYKgdD/4DX9tXHO9jvSd4yS
         Si3zMizaxG2HhAzuXPyFNOTA5XbRAq4bWDqJxIKLHNyqmaD/QkidESew2QRO6RtYtw2+
         TZGRVCz6CdWV+PeWoOR1FKrnvPj1bDxyEcGcoz8QyJQ0+72GggOvJvqE9cNdcJHLfQw4
         qElLXh4GnfQFUEEeH9l2pB3FwrYrXxPyugEe+i5VPW7nUhns+frtSfyfixA03liiVfkA
         K+RQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=YYlPOdfB2Jxas6HFOeW7bDmUqoLjsyUEDD7nhFJgh3I=;
        b=TdFHq1+l+TeoDhhZ2RG4CpjrUoZxo2zQUt/rJTJXBPLIF9xNmMGYtjM0wxNMlt1HxC
         E07dlLhK5yAanf7X2ad3nK3vO+oS4ZEcaTL1Rayd9/xRNXmXd9mdUOHHaweKVOAYiOJo
         nMagvHca1LbzpwsGq4xcT+psGMetvKqGuQTML/fKjBZ1Hapdoa9TIHJ39BTlaNNbFsze
         6K4PbhVnlOHR+vdMC9NlAZSE/Zl72AY4PPqWA9jXw9l2B1oZzlG2ApL9pnOfuucE58Sz
         1WOZJDXg3G98psrFUVC8GgYdyvTVpf+5VbGT2bnmUKzgtUFgtcrEhtTfIAJEVY30kbph
         Hz1Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=b6z8nNIm;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YYlPOdfB2Jxas6HFOeW7bDmUqoLjsyUEDD7nhFJgh3I=;
        b=oc/zS/OoxOQfcL7EkP8Y7n4CaHkmkpSU2UzHbq5+u3t2EXupMg9ZApbr7RKcP4P6wr
         n7JfQDsc7xqweqfCZTRKaDOjBTxUBWA8FAH8DBESXvN0OSZ6lNJaAKw49qCSAnFbUL5x
         VTqSE+SAofjFLw+dD7FcWurIk0tAPRAPB8I2fU2JYMjEXIcIIcMtmBFsan88869WVSST
         ma9P9r6xt9YtcoJyTOjMRg/uRA5uzO75+6ZgFupLAkJEmkW29JkF/OTQGFw23BAkP982
         yLcPjSucsx4k9jC4rRekgbFDsiIl4ASaF2oiySY4XH+uDQbMdb4qNH4mzAKnlZQANotO
         7i2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YYlPOdfB2Jxas6HFOeW7bDmUqoLjsyUEDD7nhFJgh3I=;
        b=D13KSr5bf2Bu7/sBGErIXI65DqwnlJfPRI7SLStH1nXQ8u741tHFj6i8/Lq/WXcWC4
         LqoO5rlja4VO1uKiyv08PkEVbx4gwD/a6kL9jtBCFgNwggI8MjjiQqzw3AsRiAGClvHt
         V77zhZ9unlzZoV7Q75k/kvDTl8l6KMZN4R4UDC1YtWvqh6xAkQBnYYo+y8jblXRT5OMF
         0I/949jVpk5j8wlNKxNE7JU528KSDLV9aqh+EZE1dRjyA5KMHymzbgThuG2IoW61uV1r
         cojOhsy5iHsuXt3P4puWQ+/Gd7hpGS0PihMbiLMnMa/qou1Ze2PFQ0jpFQKo/ucGe8NT
         HW8A==
X-Gm-Message-State: AOAM530cgxZSPgapotcTDSROyexu+N4uxV4U8SicskI8r+wXAW57ApyJ
	iJdbYFI7r4Sni+en9WrXeQg=
X-Google-Smtp-Source: ABdhPJxYm99lDTQ1f/t/rU7HWjQ1d79CUG+rU5Jn5LMbaHjcxKxdu99ofn9jfcqzxYxjB8GwoTbRYA==
X-Received: by 2002:ac8:409e:: with SMTP id p30mr23704529qtl.208.1600286002097;
        Wed, 16 Sep 2020 12:53:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ae9:edcb:: with SMTP id c194ls1670851qkg.7.gmail; Wed, 16
 Sep 2020 12:53:21 -0700 (PDT)
X-Received: by 2002:a05:620a:2055:: with SMTP id d21mr25862540qka.202.1600286001648;
        Wed, 16 Sep 2020 12:53:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600286001; cv=none;
        d=google.com; s=arc-20160816;
        b=RJahqIrrrEsX7ZZTHJlrLO7H5b1Riih12Kw7YRD5VIwJOgHCJWZLqv2TPG9KscHIW+
         ZgjuQfxL1MKXi086W/OGgYhJUJWieWXkAcrCBUec9W3AgwG7yvMpZfO7O3IdD4yl7ncP
         bqtBQn+qrxPnTmMkBk5ErIfjdGv2NmlvQnXmdVXNMh2Hbv2py7ZvgVmES7DezZ0Dl8MI
         eZuQoGE9uJE/xQ/YEM4d3ZLO1gRwyKvmIDNqqh0xlOEaY8Uxb08fooKPoxbqXRAfPfYr
         pZh2uBiK1Fu4W3WHigoi8O2edcdpvv0B5dbYJM/of3/b6TuYLrCK0u8ij5JEN0nrI7oA
         YTbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=wdKPr4vaZGLgDdf4fb4YJOAXZq3KUMm99avxu6Rq8RM=;
        b=U9sRWu0HImkKZ9zEKE4ud4RkiE7+1UMiOJD5HfwIvNQ+toI4/lRIt/Wr+EP8bRJ1SY
         Y5ri7BVqeu95hty33VjjfanelYayzQunWiviULpLCVVQBoeS4W23g4rOf/8D1qb7OgX7
         ibFcR9rS4T1t4IiqzuuQtZDxvr+hVxhWmtm8MrbNGB2U2fi+XWerLgRt+WqtfKCH+0Hh
         eM6L6ucK8gNprcU1I2hyJgIe9cgSZWj+lT1YRUhmBPMJd9LXP3p3cT5O62RORys1glGF
         HCl/jiM88hWpP9nwMhf3CcyhtAlrX8JnBnmoNnbg5YMq+xi+KohWO6ndAxJ7umSnFi+9
         gQlA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=b6z8nNIm;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id h18si485107qkg.3.2020.09.16.12.53.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Sep 2020 12:53:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id j34so4500671pgi.7
        for <clang-built-linux@googlegroups.com>; Wed, 16 Sep 2020 12:53:21 -0700 (PDT)
X-Received: by 2002:a62:5586:0:b029:13e:d13d:a108 with SMTP id
 j128-20020a6255860000b029013ed13da108mr23650516pfb.36.1600286000566; Wed, 16
 Sep 2020 12:53:20 -0700 (PDT)
MIME-Version: 1.0
References: <20200914095706.3985-1-ardb@kernel.org> <CAKwvOdmSXm7cV3hB_Yp=DD0RwwDHtPzzDBU8Xj5kBREn3xqYdA@mail.gmail.com>
 <CAMj1kXGuFFUyT48EYvzFmjCP4QZi_Sk_GpBrBCaHjP7HKLhjBA@mail.gmail.com>
 <CAKwvOdmkNgi_+kfauTSLwtpVChipW851_KGJG+gBbhwRxJJORA@mail.gmail.com> <CAMj1kXHTkP7-8xscGZGXN_0Sq=BCSnt3zWqkcm8xdO11xmditA@mail.gmail.com>
In-Reply-To: <CAMj1kXHTkP7-8xscGZGXN_0Sq=BCSnt3zWqkcm8xdO11xmditA@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 16 Sep 2020 12:53:09 -0700
Message-ID: <CAKwvOd=G2Rr3StUJ=oWu1L4b5y615m+uYNW-Y5sis13uqBvrYQ@mail.gmail.com>
Subject: Re: [PATCH 00/12] ARM: use adr_l/ldr_l macros for PC-relative references
To: Ard Biesheuvel <ardb@kernel.org>
Cc: linux-efi <linux-efi@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, Russell King <linux@armlinux.org.uk>, 
	Linus Walleij <linus.walleij@linaro.org>, Nicolas Pitre <nico@fluxnic.net>, 
	Stefan Agner <stefan@agner.ch>, Peter Smith <Peter.Smith@arm.com>, Marc Zyngier <maz@kernel.org>, 
	Will Deacon <will@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	Jian Cai <jiancai@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=b6z8nNIm;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542
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

On Tue, Sep 15, 2020 at 10:55 PM Ard Biesheuvel <ardb@kernel.org> wrote:
>
> On Wed, 16 Sep 2020 at 02:31, Nick Desaulniers <ndesaulniers@google.com> wrote:
> >
> > On Tue, Sep 15, 2020 at 2:30 PM Ard Biesheuvel <ardb@kernel.org> wrote:
> > >
> > > Excellent, thanks for testing. Do you have any coverage for Thumb2
> > > builds as well? (CONFIG_THUMB2_KERNEL=y)
> >
> > Ah, right, manually testing ARCH=arm defconfig with
> > CONFIG_THUMB2_KERNEL enabled via menuconfig:
> >
> > Builds and boots for clang.
> >
> > (Also needed https://lore.kernel.org/lkml/20200915225751.274531-1-ndesaulniers@google.com/T/#u
> > for an unrelated issue).
> >
> > For GCC, I observe:
> >
> > arch/arm/vfp/vfphw.o: in function `vfp_support_entry':
> > (.text+0xa): relocation truncated to fit: R_ARM_THM_JUMP19 against
> > symbol `vfp_kmode_exception' defined in .text.unlikely section in
> > arch/arm/vfp/vfpmodule.o
> >
>
> Interesting. And this is using ld.bfd ?

$ arm-linux-gnueabihf-ld --version
GNU ld (GNU Binutils for Debian) 2.34

.text.unlikely reminds me of the sections created when profiling data
is present.  That's obviously not the case here, so maybe there's
other ways this section can be created by GCC?  I may have added a
patch recently for placing this section explicitly, which was a
prerequisite for Kees' series explicitly placing all sections.
https://lore.kernel.org/lkml/159896087937.20229.4955362311782724603.tip-bot2@tip-bot2/
Maybe that can be improved?

IIRC, LLD is able to emit range extension thunks for these cases, but
BFD does not.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DG2Rr3StUJ%3DoWu1L4b5y615m%2BuYNW-Y5sis13uqBvrYQ%40mail.gmail.com.
