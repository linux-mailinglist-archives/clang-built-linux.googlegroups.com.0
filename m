Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBG4YS6EQMGQE75MXYDQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x740.google.com (mail-qk1-x740.google.com [IPv6:2607:f8b0:4864:20::740])
	by mail.lfdr.de (Postfix) with ESMTPS id AF0BC3F6E93
	for <lists+clang-built-linux@lfdr.de>; Wed, 25 Aug 2021 06:50:36 +0200 (CEST)
Received: by mail-qk1-x740.google.com with SMTP id h135-20020a379e8d000000b003f64b0f4865sf10368376qke.12
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Aug 2021 21:50:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629867035; cv=pass;
        d=google.com; s=arc-20160816;
        b=sFdrnfzenM3mYXRFxgMQabNddMLDZR583OHuownFe20y3SuzbGTzjF0VgeKE/TOlTx
         v6o0i5Bd2K0DZlDSKbJVEryINvsQY2OoapxZAcT9AWot9FwgTvwHNRLzuKr+iO61DzuI
         MoKyxBZDm/4p8UImttsoumKBat203HSzfEvjpXTYE0PKeqrCE1MI5JE4neKtlGhulvCL
         thtOBNqoeNcZgoBOEU88z83YUPrVkg8c7zMOvGZnZp5gMIzMyVKpzPPnztiEapDK/PDK
         ErEjIAWFJOPL4yqzXeCpBphEAmcRCg2RA572RuTS62FdHC1GlitUElyf3qgbHNDR8+bG
         HdrQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=3/ZNvmYKRUnqYz3mzWX1Zn0jTVfG17e/O1e/LRk4VrI=;
        b=hxxFsz1PzlwAHxO6gUNcOf9lIagzwnudx1b2ky7Zdnt6ab1+q4bS0XCJFLwgEn/YRl
         /Q0SS8S0qcnivWh2E4Bd+cc1/RpbKrLfJRC0/YTOkPTfXFNMT9U4zOsoj4OFV5L31j8m
         p0L5x3R/U2+Vql4hdKUyf8c29wm9xcDLxVlypz4yGTMlWQdxjwseHVP7wmOOIJuI7p8s
         TjrwbpLEKluFnYs+IYnN8NmkUpwh+Z7+mPaKFdBqBibajyJ5ygwlzCmQmlvMH0ojyVV+
         3k8/saxkrJvcKvkhVBn0xul7J/HfCJ2Y5ufAFSDgHiZ+hicma7QqWlfqj+R8zip3GvB1
         VK+Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=RHWNy3Ty;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3/ZNvmYKRUnqYz3mzWX1Zn0jTVfG17e/O1e/LRk4VrI=;
        b=oqQAlw4bNCCmSU3IuQIQTPSFvqXbQG6VT11MGrAgr5AdkWiiyGFaFP06zC3gJREZVR
         f/WLzIZT0tMWNiC2FrOqqSO/a0s/dPCwRhrQQn8N4Qmz/6ZH3ter2lyeaHpDtxR7FAjn
         4iZ3bJF7suHdD51DCzyYp1UJkxt6H5WGsGIz0aIynkvXxh0wFvP6U5tvYP5pdqyTZ6/d
         +VsgzZn//rEmhNDrob52vcjlIrrQb0B61a+dM0IP6+XjxBfuQlF85kDLCarI5AhdqMuH
         KYg7DbOEABKypgleXrOw0tzugvlCU7IQJjP7krV74Rf0e04zSt63+pFzX6snkQvrlyPv
         A/vQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3/ZNvmYKRUnqYz3mzWX1Zn0jTVfG17e/O1e/LRk4VrI=;
        b=c/eNsEVGy9kUMPPK2geBFvR7NGCcFU8nBYaqdZtocbBf1FcVCT7LZWVTPdxQL99JI8
         hxRMG4WvV9E3TjAi3rMeKvl9GzV6pR/2DjdNXmBKQW7M8RqLMO4l1TpMyvDiVEvQImV4
         G8XNQ6hHW4PjcK9Sd/AI3xKShqX2XdraqqPGKPv84sv0SL+95LnE6E89QK6R0nwWs9ou
         xvKf4EYwwVz5LWLzP9ptYrjtsgj+KZc2NL5hae/xd6r0XePOrcdgCY7s9/cA/9YjYaYM
         uGBwck2Y91G3JVIkYrYeHAsEJEi0b3LdqEwdRU4gfn/wcqAq+oKhkz2107Py/Cu51HX0
         bnWw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533wjhjlGsURg8SdY9hHHTUkwLSOerNQEcqkEu6O6APQGSkRXkS/
	/ZK4sqreisejSytYlWG/GQM=
X-Google-Smtp-Source: ABdhPJzUJ7q9MZVoxbANvA91xZz2wUoZmZ5Vmgbf7Z1QK5/nIeFV02BFhdn7sUONose1zcn3Jwg4Kw==
X-Received: by 2002:a05:622a:196:: with SMTP id s22mr1767968qtw.221.1629867035840;
        Tue, 24 Aug 2021 21:50:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6214:c28:: with SMTP id a8ls316590qvd.1.gmail; Tue, 24
 Aug 2021 21:50:35 -0700 (PDT)
X-Received: by 2002:ad4:4f86:: with SMTP id em6mr376518qvb.7.1629867035383;
        Tue, 24 Aug 2021 21:50:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629867035; cv=none;
        d=google.com; s=arc-20160816;
        b=Gd6iOcG1deCAyODtZQp8Z7y5eLUPtRq1hNLhCz0+Dv2L0TNCIMK5DlU+Npdpe2M29n
         9KBulYOIUa1xzKMDOLBKehB3FqVTcK9G7zRAc/lD6XRk0wBYasZlIGXNj3rhobQgNQid
         Fk8wvJh5DIUT9XudNb72bRxbDt4sNrqtu7+x9BZQWghMQss2k8C8awe+tZpLliWqaNFQ
         FmD6Xn0i0b8EGxsUJUelH0xu/bed/dpR3MMxHggl+LhTh0CEv3qgVXetQQpM0V/A14nV
         a1kLnlKFvVg9fbGKNrs+jgV/ySqtz4U4TcNFbVWPq04SbHYAJ2+iyEoQelDs5AFsUPQ4
         k1DQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=JwIWlEDPz/77+8/mkqKPc5WcajlmGXuNMNbSgEa2+8U=;
        b=snG5DbLXGP/XIVArPKBVfNT/uknLelFy/hoI2zol43wtqAr/krDu/GZT/+PyTdR4Jf
         8FvaZjVK5ZnqeMj9rSmho4sVM7zQu3C/NUFe69OHwDLQNweZmKK6ENYChybdZT3lhWnv
         s4aIm4ZVmIVJH7js/6KtHB+/V19iDlKLWppwFZ5Y6rhLKX5YhNO5MkNe48+GGiYS+z41
         4n8h2z8ce0u1a1vX3pnZZdPj4X3bggLJaocWG+xvR2+RRQIHMm/UcgiK8h0Rvce06Uef
         5R5L8pvERjJFnwU3klSc4599iEEhWAcqB5PfKLtrehaOSr73OgLj5LgjQ/pGeAT8mAfc
         jaFA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=RHWNy3Ty;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-05.nifty.com (conssluserg-05.nifty.com. [210.131.2.90])
        by gmr-mx.google.com with ESMTPS id 6si729749qkh.3.2021.08.24.21.50.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Aug 2021 21:50:35 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) client-ip=210.131.2.90;
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176]) (authenticated)
	by conssluserg-05.nifty.com with ESMTP id 17P4nxtP021056
	for <clang-built-linux@googlegroups.com>; Wed, 25 Aug 2021 13:49:59 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-05.nifty.com 17P4nxtP021056
X-Nifty-SrcIP: [209.85.214.176]
Received: by mail-pl1-f176.google.com with SMTP id b9so9214159plx.2
        for <clang-built-linux@googlegroups.com>; Tue, 24 Aug 2021 21:49:59 -0700 (PDT)
X-Received: by 2002:a17:902:f552:b029:12d:3d11:4ff1 with SMTP id
 h18-20020a170902f552b029012d3d114ff1mr36077046plf.1.1629866998882; Tue, 24
 Aug 2021 21:49:58 -0700 (PDT)
MIME-Version: 1.0
References: <20210817002109.2736222-1-ndesaulniers@google.com>
 <20210817002109.2736222-7-ndesaulniers@google.com> <CAK7LNAS7E9uMJfCGsFPkP_z9y0Y_PrXXzMTRRiwsbj66bTi8SQ@mail.gmail.com>
In-Reply-To: <CAK7LNAS7E9uMJfCGsFPkP_z9y0Y_PrXXzMTRRiwsbj66bTi8SQ@mail.gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Wed, 25 Aug 2021 13:49:21 +0900
X-Gmail-Original-Message-ID: <CAK7LNATM0JVqdAYNtfc5k9vMyDW0PvTnMZT29WY7+1sM5NgWnQ@mail.gmail.com>
Message-ID: <CAK7LNATM0JVqdAYNtfc5k9vMyDW0PvTnMZT29WY7+1sM5NgWnQ@mail.gmail.com>
Subject: Re: [PATCH 6/7] Makefile: replace cc-option-yn uses with cc-option
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=RHWNy3Ty;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

On Wed, Aug 25, 2021 at 1:43 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> On Tue, Aug 17, 2021 at 9:21 AM 'Nick Desaulniers' via Clang Built
> Linux <clang-built-linux@googlegroups.com> wrote:
> >
> > cc-option-yn can be replaced with cc-option. ie.
> > Checking for support:
> > ifeq ($(call cc-option-yn,$(FLAG)),y)
> > becomes:
> > ifneq ($(call cc-option,$(FLAG)),)
> >
> > Checking for lack of support:
> > ifeq ($(call cc-option-yn,$(FLAG)),n)
> > becomes:
> > ifeq ($(call cc-option,$(FLAG)),)
> >
> > This allows us to pursue removing cc-option-yn.
> >
> > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> > ---
> >  Makefile | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/Makefile b/Makefile
> > index 72f9e2b0202c..f76be5f62d79 100644
> > --- a/Makefile
> > +++ b/Makefile
> > @@ -967,7 +967,7 @@ ifdef CONFIG_FUNCTION_TRACER
> >  ifdef CONFIG_FTRACE_MCOUNT_USE_CC
> >    CC_FLAGS_FTRACE      += -mrecord-mcount
> >    ifdef CONFIG_HAVE_NOP_MCOUNT
> > -    ifeq ($(call cc-option-yn, -mnop-mcount),y)
> > +    ifneq ($(call cc-option, -mnop-mcount),)
> >        CC_FLAGS_FTRACE  += -mnop-mcount
> >        CC_FLAGS_USING   += -DCC_USING_NOP_MCOUNT
> >      endif
> > --
> > 2.33.0.rc1.237.g0d66db33f3-goog
> >
> > --
> > You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210817002109.2736222-7-ndesaulniers%40google.com.
>
>
>
> I am fine with this change, but
> is there any reason why you did not touch the following hunk?
>
>
>
> ifdef CONFIG_HAVE_FENTRY
>   # s390-linux-gnu-gcc did not support -mfentry until gcc-9.
>   ifeq ($(call cc-option-yn, -mfentry),y)
>     CC_FLAGS_FTRACE     += -mfentry
>     CC_FLAGS_USING      += -DCC_USING_FENTRY
>   endif
> endif
>


Ah, I just recalled that this hunk was restored
after a build error was reported:

https://lore.kernel.org/lkml/CAKwvOdkckey1=VUHApTcJYufyhdRJ=jb4qYs52f59g6ha7qphw@mail.gmail.com/



So, please send v2, changing -mfentry part in the same way.





-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNATM0JVqdAYNtfc5k9vMyDW0PvTnMZT29WY7%2B1sM5NgWnQ%40mail.gmail.com.
