Return-Path: <clang-built-linux+bncBDYJPJO25UGBBRERRX6QKGQE5MTVVGY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53e.google.com (mail-pg1-x53e.google.com [IPv6:2607:f8b0:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id D77B22A73DE
	for <lists+clang-built-linux@lfdr.de>; Thu,  5 Nov 2020 01:35:17 +0100 (CET)
Received: by mail-pg1-x53e.google.com with SMTP id j10sf92957pgc.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 04 Nov 2020 16:35:17 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604536516; cv=pass;
        d=google.com; s=arc-20160816;
        b=kTh2goyhNzTw1llhUj/z7fFKA4Wh0bt1NhNOfGhVyx4HbrUDbfMvvRKBnmdLASQEW9
         SByP/Bu9GRSGAiDLzDMcMkf5RnT6rPP0LEHGJIHy7fqphSPk+IfV6hPvCBloVIfgGih9
         Rh0LRbPwN94r+lPJSHLqpHUqULpbMUruXu0ppFjCt9nG+2xLvu6cgshE0PKMLK/xjFso
         nekkF3M3Ms0p6gFsemtcxeMag15KIZH4uhcKqXV86YEKt6xBhGM2d5Z09s7f9U+1k51+
         9bi4tmBQxzP2XN/3lqM//b8c8X1x0edrvuPDeDfE/FaAuOa+/GlIAhBCZQNZGrP3QIpX
         EDHA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=cWpH7yGh4GZ8gn1D9iUwz78K6/hZ5qWeqoNLvIjfwg4=;
        b=Mtec6KDCUOCtB2+bL76KQw4AUyUIt0JPwOspEeSLldiI+uMMuC+RdwTlOAXtVXNwSE
         I+6SBj9mUErC9znsBv53AMtkXGdnMVEK8LU1m2hKk0nLbj9y7ZnrFx8drCSMeplFpp9w
         lBAXrOpd6YPKmI+eVdNuuFG9pDoNsS14XBk/vvi/Im4l34ErQXG+wlpRHobB2XjfTmTv
         QWPIx93Mfqjqj3To8xDui5/UiEfM0K4RHs2I5p3cfBwRSIMFlJA6+rQuF73k5NG3SEeb
         HyL/7YinNKNIeJgND8h9n5PgfyDP6q6XMcP0eml6KLoOFkVATPm+Z4CN0DjUSuIEqwqv
         jxAg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=MeYISvHN;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::630 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cWpH7yGh4GZ8gn1D9iUwz78K6/hZ5qWeqoNLvIjfwg4=;
        b=i8rlzosmTBdBRntDIWNM594WO5/ElC386qqTX86yJ7zLrv7VLGX6WLncH1Pqeu/ii9
         RkyvAhh7jKVaj4DpJegAyZtQEqEPT6jCgh8hZqidXhRLPfPNjtpSaxnWBDudvruTnOWV
         YFjxA1kFJNERsHCP5SX/YnKy3DejEmGgRiss7hf056MaaDW+2/VqS3BZODSbZyVGQ4/Y
         v5boe8SORa7o67liqiYsdNKt857rs4SxGUdPhL1znAjyvZ6GRGK54qNJdPL1R8iqwh47
         OdU1wlTs63PNjP4tJirUMUL9cGYpoxiW/xgH+SnVsyO552HzRKfo0qIHo1YcZxthpTeH
         hJFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cWpH7yGh4GZ8gn1D9iUwz78K6/hZ5qWeqoNLvIjfwg4=;
        b=nwLdgAr5rwa29EdHZrbRdbtCgaMRtfb8IzYcSfE22EK4MUY1EZZmBPK7Hv5j434M+f
         ssprPz2k48YDVd7pgsfUC1JPqYeDi7+zJFCJnxUeVin3WEmwkzXhVGv+P0AqVUcIsZ6P
         492L7v3ZiXSxo74G5uYCnkDNwzLSqfzTUohtYACzBzNuZZEkWJO7a9FTPcJnQkrO7Siq
         Ff9LfoNOTlbtphNU/b/p1akrmIzASwL7uF0Mbm4y5G5u0UmpggAwep/jrCzteME/msND
         atH+YwDQKM8Xmf+3trqYA1b6ZKUVuGkdicAFiodrEjl+ZE6zlkYaZ1dcHYutrc9pSqVW
         909Q==
X-Gm-Message-State: AOAM532ZthmUPhD/QtA7hUz1rsSTsPSVaE2NJ4fhafY9dnNhJ1rxsRZz
	9p5YmTm84AVaPlTpSqKV7aQ=
X-Google-Smtp-Source: ABdhPJzomvOG/nfTZlV8p0hYKakxgoWiU+Qoeeou+v2Z43W6LH4vLGnnCXO00iWlrvdogQomvFfqjg==
X-Received: by 2002:a63:5b63:: with SMTP id l35mr562718pgm.70.1604536516522;
        Wed, 04 Nov 2020 16:35:16 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:123:: with SMTP id 32ls1751132plb.1.gmail; Wed, 04
 Nov 2020 16:35:16 -0800 (PST)
X-Received: by 2002:a17:90b:490b:: with SMTP id kr11mr144369pjb.172.1604536515928;
        Wed, 04 Nov 2020 16:35:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604536515; cv=none;
        d=google.com; s=arc-20160816;
        b=dNgAin5P5U18ZivfR0P87BzQGb6Wt4HhVZgpmH0o8WreBHBPy50tlM8rPcQ8PbyhUm
         kCoqVN9KwJwikkofZo0yjrRPt3e/EXaq6vs07+FFGb7k3xuxTZ91FzKhEqtLGh4OsqsD
         jSoUi8jnFiFMoSsmozUqStRzxrNWiL0LVOuWOZ0H1xSGsHOXcCY8Mq5/fQQHhPdsNkL8
         P0aW99AHiJJxCZoIDDjT2TAHZ5GM4ULr2X2XnM4vq04hNr6hYSBZRGRjr8uBbYo1u5A6
         lbQMqfF4gXcIwtg1Kc4o/gVyIIIp9nPGBuhSLZPl2B3mscScL+6M7IGdub785CFTuy+/
         LvJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=R/wPomTMkZj1Nomsd//HG7kN27omvaqNPJ+rtSAN1Co=;
        b=dRPiuaozCOLRjyoU1Ki+PrLNmAQpajnleJSRH/plL904tFqUROkstDmkj+BsWeF/K9
         cyj7+aG0TOBtu0xhBOwQt/9Sd0OeUem2dlI3K4HsFP1c1cuw6Xp5rDTyY04QjLZjxNDL
         CO8LEHOiGOMwfyru03gWbXLqiXxKjYPuCSAjMzB6yGmrSwWm7OTfVIjM5+dnM+T3VLtC
         5IraQ2IMJpNnG52bv3ocWxVW9b3Y4ql1pNsus5wi+QbLr691XtYpsd871FTTAJj1l9OM
         lBwVTSwVSn548tbLSXikSQFnkLoz2Jh3WblqufMKBDDuMANx73+7iR8aJPuip2rivLR3
         uBBg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=MeYISvHN;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::630 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x630.google.com (mail-pl1-x630.google.com. [2607:f8b0:4864:20::630])
        by gmr-mx.google.com with ESMTPS id p12si4834pjn.1.2020.11.04.16.35.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Nov 2020 16:35:15 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::630 as permitted sender) client-ip=2607:f8b0:4864:20::630;
Received: by mail-pl1-x630.google.com with SMTP id k7so148532plk.3
        for <clang-built-linux@googlegroups.com>; Wed, 04 Nov 2020 16:35:15 -0800 (PST)
X-Received: by 2002:a17:902:8a8b:b029:d5:f871:92bd with SMTP id
 p11-20020a1709028a8bb02900d5f87192bdmr533068plo.10.1604536515505; Wed, 04 Nov
 2020 16:35:15 -0800 (PST)
MIME-Version: 1.0
References: <363325b4a85f094ba9cf06301dd022912ec79d03.camel@perches.com>
 <CANiq72=r6oieZ-Nj-e6e+HriW8kADB75z2pj6W-gg7Cff3nqGw@mail.gmail.com>
 <CAKwvOdmnz-DJ-hG5FKJZYF7W-ujPrgfMkrb2hMLhmzhk8Hx6dA@mail.gmail.com> <ba3126e1424c578f5040c7a6f04cdd6a334b2db4.camel@perches.com>
In-Reply-To: <ba3126e1424c578f5040c7a6f04cdd6a334b2db4.camel@perches.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 4 Nov 2020 16:35:04 -0800
Message-ID: <CAKwvOdmoR9xph_TK5zaKdh1qHX4Sh9MW9xYcxLJf6wZfxSkv2Q@mail.gmail.com>
Subject: Re: [RFC PATCH] .clang-format: Remove conditional comments
To: Joe Perches <joe@perches.com>
Cc: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=MeYISvHN;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::630
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

On Tue, Nov 3, 2020 at 5:31 PM Joe Perches <joe@perches.com> wrote:
>
> On Tue, 2020-11-03 at 17:08 -0800, Nick Desaulniers wrote:
> > On Tue, Nov 3, 2020 at 1:33 PM Miguel Ojeda
> > <miguel.ojeda.sandonis@gmail.com> wrote:
> > > On Tue, Nov 3, 2020 at 7:29 PM Joe Perches <joe@perches.com> wrote:
> > > >
> > > > Now that the clang minimum supported version is > 10.0, enable the
> > > > commented out conditional reformatting key:value lines in the file.
> > > >
> > > > Signed-off-by: Joe Perches <joe@perches.com>
> > > > ---
> > > >
> > > > Hey Miguel.
> > > >
> > > > I don't use this, but on its face it seems a reasonable change
> > > > if the commented out key:value lines are correct.
> >
> > Joe,
> > what would it take to get you to use clang-format, or at least try it?
> >  Beers?  Bribes? Dirty deeds, done dirt cheap?
>
> Hey Nick.
>
> Paint my house? ;)

I'll help you paint your bikeshed. Oh, but what color?  I see a red
door, and I want it painted black.

Sounds to me like Miguel could win over a critic by addressing some of
your (quite valid) concerns. ;)
--
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmoR9xph_TK5zaKdh1qHX4Sh9MW9xYcxLJf6wZfxSkv2Q%40mail.gmail.com.
