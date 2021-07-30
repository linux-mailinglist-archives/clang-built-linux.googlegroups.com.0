Return-Path: <clang-built-linux+bncBDYJPJO25UGBBF7MSGEAMGQEWSAHG5A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53c.google.com (mail-ed1-x53c.google.com [IPv6:2a00:1450:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id EF4DA3DC09E
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Jul 2021 23:58:47 +0200 (CEST)
Received: by mail-ed1-x53c.google.com with SMTP id l3-20020aa7c3030000b02903bccf1897f9sf1636347edq.19
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Jul 2021 14:58:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627682327; cv=pass;
        d=google.com; s=arc-20160816;
        b=Mnz2vmGmsB53D1NwSdsCvlXA0pUwTZYb+shrsHxaLF2TO3hHdlza5gqPU49gozDWVF
         pP+nQEWJubikq12/pHYWp962WCFWH4Lmzo3OygbnianKymLGOCD9RnTYxZ6/9BMlRA8J
         8DLTMCcHBXwJMuk+MiOyQ0YDtIQzAN0IqsOJOb5FSbNRAOUMZb554y/zDK6vwXsT/LMo
         GpWzP6mPk4W4wt/RZeL/PKn96QK1qCeMhqAoD2+ZCXUMLsCSCwmGfI9lalmHvAgo3U4L
         T3qDtKsx62DwcnjFOzxUWLFtSVXuErJ/eQkFjZihzE5Fs3ZDgmDyXMYjwe7qgcqayxlx
         N2lw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=T/seeHIZeJPsVp9InxxVgTEUpHw72LsN/+r/oyZkacQ=;
        b=zPRmxyaoOfHax3xrFVujhhRlS+0mQaSEw6/k4qs7jJ6s1WtxEmEA6bTvStZ885Bsm2
         h2fZwN8NpG/qwhfJsrcKM+E03PeKkZvRJndm/XoS39oPH3ZcBvhqjr/bgI5I0NJtvxlH
         EyPy7DAM7eqomxaQn/njRfzUfgDfsvw4O5Cf5G6BetnQPN7Ex7J10NepskrgJJeJP+B9
         1KQUaAZDzXvou8ruwmNyyQQQf2PRy7kIJ1zNnEWahZi2fDuiCXKjpETXb34/0/wq0xUa
         7EH/4esluduPWUkM3LKpCt7KV/3gNgFw9GtTldnk140uFNaoz2Sp1CgiROkooFLgBlRS
         JOtw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=HZJzYyoW;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12d as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=T/seeHIZeJPsVp9InxxVgTEUpHw72LsN/+r/oyZkacQ=;
        b=deqQzhmI5n1qQomj1MFMZvxCYCsGdYrWfyWor3w4D9BjKXibdwMYrUG4rJ9tjHFm25
         U2x7tftRSGXwNYCSujCW204m61TbOnHpe1ivh40nOS0rTUhg1Eidix13Y9wUoqSNKG7R
         GYFMQQE9dkxMyF2my+zjBue4WVvpD1q/Y9INLN+C9MDfR/Q3IEU9HL7MyGDKtyGtr6SI
         fWNI220xxso6dIXxv49f3QevFyniUz4LGcYd07eneuenEumVPSbrzrWVDYajbmfqUyIR
         ELs3HTKi6Sf1uGGwhCKPP8IzM9rmg7QwQLXbJrDMo//5SK3150BDwPe3Mekpy8yNFMRM
         Df2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=T/seeHIZeJPsVp9InxxVgTEUpHw72LsN/+r/oyZkacQ=;
        b=BL4af21SYylHcqsnW9WOjnQhZ2EgwOmr7y9F//y27g1+towcF0Vz/70PCWUibPbgbw
         CEr9jBH8PLqu8oVXztiB9QlXKZg9wNRz0AxPzepT2kqUPWPMCqEx+QRAYKa84jQqkrqP
         iGNByxB1NcgFBIdvkjf4EFVTJ1ef5YeiL6p6icShdJmM5K8Nc991pokOx+RhYihdfMx+
         52t9teIBRJ4MJb0jbm4ZI1SLXCd/aS+YSsjhaGPbMwgkhxqoKonyc0s3gWksHhZ+HSuN
         B2WqehdO7RHwHfQnph+lLungO6uc0mmpLRSEdX30HZkBwwIVhofDi3j1cpD1+d5ZDOma
         F/2A==
X-Gm-Message-State: AOAM530ZQ3FeP7B5RQ3rWxR5A0jvXQEHBavLjCGt7LwNaQ7Khnz9jI4K
	HyjtumcHawzPANdqVVRdyW8=
X-Google-Smtp-Source: ABdhPJw8xWlF+jLsXN+J/2eVSkuFQm0Nrflrw1ZbxZAOsP+alymL43V59DN4gJXSPjBx8wXqMHMeBA==
X-Received: by 2002:aa7:c792:: with SMTP id n18mr5792002eds.269.1627682327773;
        Fri, 30 Jul 2021 14:58:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:fd13:: with SMTP id i19ls1776323eds.2.gmail; Fri, 30 Jul
 2021 14:58:47 -0700 (PDT)
X-Received: by 2002:a50:cc99:: with SMTP id q25mr5693418edi.219.1627682326920;
        Fri, 30 Jul 2021 14:58:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627682326; cv=none;
        d=google.com; s=arc-20160816;
        b=ilF1d9KCeS8WfDfQUi4A5zpgM70iseCBfrVOIFmrESs2weXb9RL1Ke/bMOoTPPOTOV
         vE9YwvxG2IwVrJGoTayqWAAKClgexj/uWpUpy5ZTi/Q5HuETcrsFPY+AK+EtXevokxT4
         Ik9vYH1sPlpEJnldTRq682VBn9mgdaKwa0TXKYJg57IT1FCLHHwLrtaVZCjRrUJOTu+A
         74GpzC4KQA1UP81tNOYxp0/5+wrl6WA6PMQo/sFy+cdC1SxcLAeLI8a0PG17HjZz5/Qg
         xrGHcaSQlaNx8j+txfOpbCiWgXMExDc9aSWd9xPaAiXArcxG0hYZfmmdm7SjiP287q3C
         6wRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=u8/otlIVLRCwvxqaT7/wbzC/cVJd2N14X3gcUk8hSgA=;
        b=cBxbfx/7md88okPu+fyAu1hh9/gVG3O4v4OuSGu8MiV0pPrTp2si2vJcGDL2gwLCOp
         +Llqbo9YTnV7dwxvB62m7hpZnJ4cUP3qUXT2QbrlRbWKBMnCfg6jHIGBmxcOnX1naGbM
         S2Fvlygq+m8NBPIcW3zqZen94xZzgo2jLDTjkpcJTi8Mw8ac4H9SN3/OKAzp1QmRRjKI
         jG3ySfMjV6D+ES5X5yybM4KreYb/eyRG7bnAuRG3C/hDb5mJU2SwMWfOOr5uGrOsd164
         OOFCl68UHM3zI0DugocQVU+9okQblTTEGk6o0ZA8akZqUCV2H7ZQegPS+JvadzlXQikM
         zeag==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=HZJzYyoW;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12d as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com. [2a00:1450:4864:20::12d])
        by gmr-mx.google.com with ESMTPS id s18si136401ejo.1.2021.07.30.14.58.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Jul 2021 14:58:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12d as permitted sender) client-ip=2a00:1450:4864:20::12d;
Received: by mail-lf1-x12d.google.com with SMTP id r17so20673158lfe.2
        for <clang-built-linux@googlegroups.com>; Fri, 30 Jul 2021 14:58:46 -0700 (PDT)
X-Received: by 2002:ac2:5939:: with SMTP id v25mr3490307lfi.543.1627682326096;
 Fri, 30 Jul 2021 14:58:46 -0700 (PDT)
MIME-Version: 1.0
References: <20210730201701.3146910-1-ndesaulniers@google.com>
 <20210730201701.3146910-2-ndesaulniers@google.com> <CAHk-=wgh_gk17OoVjXSiuT+7=oYDUKjYGWibd+tCfQRpYJ7cGA@mail.gmail.com>
In-Reply-To: <CAHk-=wgh_gk17OoVjXSiuT+7=oYDUKjYGWibd+tCfQRpYJ7cGA@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 30 Jul 2021 14:58:35 -0700
Message-ID: <CAKwvOdmFPLAv_FucACe9LQC49gm2WCgXUBKkhWy4pONt29njWQ@mail.gmail.com>
Subject: Re: [PATCH v4 1/2] Makefile: infer --target from ARCH for CC=clang
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Miguel Ojeda <ojeda@kernel.org>, 
	Fangrui Song <maskray@google.com>, Michal Marek <michal.lkml@markovi.net>, 
	Arnd Bergmann <arnd@kernel.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Geert Uytterhoeven <geert@linux-m68k.org>, Christoph Hellwig <hch@infradead.org>, 
	Nathan Chancellor <nathan@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=HZJzYyoW;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12d
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

On Fri, Jul 30, 2021 at 2:54 PM Linus Torvalds
<torvalds@linux-foundation.org> wrote:
>
> On Fri, Jul 30, 2021 at 1:17 PM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > +ifeq ($(SRCARCH),arm)
> > +CLANG_FLAGS    += --target=arm-linux-gnueabi
> ..,.
>
> Ugh.
>
> A wise man once said: "All problems in computer science can be solved
> with another level of indirection".
>
> Just do it like this:
>
>    CLANG_TARGET_FLAGS_arm = arm-linux-gnueabi
>    CLANG_TARGET_FLAGS_hexagon = hexagon-linux-gnu
>    ..
>    CLANG_TARGET_FLAGS = $(CLANG_TARGET_FLAGS_$(ARCH))
>
> Which is a lot denser and simpler.
>
> And then the only if-statement can be something along the lines of
>
>    ifeq ($(CLANG_TARGET_FLAGS),)
>    $(error Specify clang target flags)
>    else
>    CLANG_FLAGS    += --target=$(CLANG_TARGET_FLAGS)
>    endif

D'oh, just sent v5 before seeing this. SGTM will work on v6.

>
> Plus add *random handwaving* about all the details for CROSS_COMPILE
> and friends.
>
>             Linus



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmFPLAv_FucACe9LQC49gm2WCgXUBKkhWy4pONt29njWQ%40mail.gmail.com.
