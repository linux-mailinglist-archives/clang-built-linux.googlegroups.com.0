Return-Path: <clang-built-linux+bncBDT2NE7U5UFRB6HS7KEAMGQELVOHJOY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33b.google.com (mail-ot1-x33b.google.com [IPv6:2607:f8b0:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A71B3F214E
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Aug 2021 22:05:13 +0200 (CEST)
Received: by mail-ot1-x33b.google.com with SMTP id 66-20020a9d0bc8000000b0051aa462e094sf2855855oth.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Aug 2021 13:05:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629403512; cv=pass;
        d=google.com; s=arc-20160816;
        b=bAwfKNOP5trkmHOm2RQcIFC8rZz2CnZaGbsaTe+jLMXo3ng4YQI0kD2yfdQbPGhH79
         JqH1Bz5U7rhtGMNK/6BGJQI8RyWXe8Dn9DGlKLyuT7lOI3GStSr4LjW6CAU37iJTSqGv
         ZItD1L9V0fJUH/CXosXQAqGhYJscdXaT9iUT3EVCdk/nVjywET/I0f4M038WKt6mUDgu
         isaFHOz/FgALhGRnTJ1YR+VBMC/HlwTiVxkpcJKMQ95/5iGeXWhKExWRzcqhu0pJVbFB
         FNGRtRyiGuv1OJtVdKJj79BKU88/FVSRQxi1mbWuHrT77jmen4IZncOp0uKAO8n0X/Tm
         KPCg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=tPJQltmRJzRsSiepMqwKt75MafnnhlYXc0Hy5mTOs9w=;
        b=hjRd5KRHGzV5cHqk1ursJO8u3KGyP4pHMpGjk5m2e3xwNAR/mOLEJ/gfBZoNEjjLmJ
         Qn9UOzEsEJYo72A2GmX/SYrIJQFJSais1g1ZLESSIA0rC+V9HRnL97x/tVQxnlDol9bd
         hT7BMtUe5QgFx8G7+hPIIyXYKnBbYK2UJjKLFCiAcSMvTKZ7Nyw6D3raESzgHEFctHsw
         oWlhcGVhEROPknRJMQeMpMzspcRgfGpvCd2bAbVdVwA9zcNFzUmjY8/Z+zvjVi7aF6AF
         2gBd+UPmnN5qqHxtdltSzTK4GC+J+9sp4qlda/g3VFbBa6KDUoR+zrSRoj9w8R6hNiGG
         Z99g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b="FJybV/Ni";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tPJQltmRJzRsSiepMqwKt75MafnnhlYXc0Hy5mTOs9w=;
        b=XkcpHr80+Pb2zhT771bfvtX8J4VlOtLE6IEnQggs5blXy60xzSjOfatuw2fZ9Wab2r
         XVZ1cYSot+LSx0ku0DRbeN81IKSpzSr3HvZka9kcoIW39rho7dtMOVVH3JAHQMLi91zH
         GS8Yxbpbq0RZQzF+954FSK/rEouJiO98vrn/VQts3zC1ayUyas6ps0jXqMU2iLN1E8Rq
         a+MT/MKjbxaTrOJnIIFOukgiFwjO6rrJgpmrfVN/3TSqu+Hs4fICtFgRkD/tJZJRTzeO
         ojLcJoc5SGscvM1CMKgENzTjh7F0FTfG2gNtyqneYXE9nEkv9fCvRPTx6hj75X+Nni4v
         8wuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tPJQltmRJzRsSiepMqwKt75MafnnhlYXc0Hy5mTOs9w=;
        b=VEhE4w7EmcACs0jVbfFhLeCiUNkXZka43ToMWG4zLZxc3zx+aFG3A19n1BoRQVLo/o
         Sr6jufiC1Nen5LrusWi6k/kWszCInMr+9TTUOQAhovzh7+bkpUNWOMSFmGLV1KDnJ5vB
         Q4aqN+NASpWF1F36+ULeUq9NUa2todgohxH7tjfZb4yemGIhUfZQ3l/lCgkBnPArNHh0
         hzuV6bXg8IPwO2U/U+TP8cuOcZ+b3aaOKEEAnFQAQ8HWkDA94Sx/1WCk1x5qIYKYdjge
         8ZFk1sYKS1dk+za+hyQ5Dlx7KseBZHQtdllx1V7KP/dv26zNBlQsAbT9jvnqBfUZ/Aiw
         1csA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533d1vge6zJsxRWfOhouHVmXhq7CD98L5zcs0rHkaGqUq7Q+a3+H
	i5FlGO1Y4RB59Y1JLvNcLyI=
X-Google-Smtp-Source: ABdhPJwHmsslR6nXxrYyJLi0MnGuR8I02QcDwD2fkOL+k+GEEKf+mzA6sqyT8NCejpStwFQFM58UVA==
X-Received: by 2002:a9d:2de1:: with SMTP id g88mr13700040otb.84.1629403512354;
        Thu, 19 Aug 2021 13:05:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:1208:: with SMTP id 8ls646355ois.10.gmail; Thu, 19 Aug
 2021 13:05:12 -0700 (PDT)
X-Received: by 2002:a05:6808:20aa:: with SMTP id s42mr362010oiw.37.1629403511946;
        Thu, 19 Aug 2021 13:05:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629403511; cv=none;
        d=google.com; s=arc-20160816;
        b=GCG8i6jqs2c+Kw7KutI+juWc8VINrrFMVeS4ZtqFjpEc36KURPYM9VYVrdRP0Fuj2u
         brJfyhJ5MTb1Ace5uVqmyHH1+vxzQykHQ2hd0f/iKEXf9rfgG6+AvptTHHKkIy13vDpk
         yt44L8/bXN2VqNU9U/l3suMkvQas24sjnrHrLnDEf+CcuT5q798DWU5uUx0tsIcc9nBu
         LBHPJZEPbUr04Mfv+LA5/GPXPSuwlU6SCFgzgGO/DR3c5NQQEBJ1I/ezio6i2ZARDyQc
         ErnTpbVwlnQM282kw5SZrIMPvnVW+7X5vb8L1911xIwKbnGvleBH/PU5PpuMeBBad/6z
         lj4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=8hjQkClvKSbKvju+DhtDTCJuXhxcdg5TLaUR+EqdtQg=;
        b=iMISXbXKRTAG1uwFKI1G6KUxRy0NoyJp/40vRo3VurvH0s/wMYqUbk5gfV8yD4MCmO
         VjDnrjBLjunoCd56AOVFNpnP+ZassDVQDy0s+zGYyievGnU9RZqtvD8ZsPb/U2fg2LzQ
         Jb5CVNFki/+sRegvxrl6yqxSR8GYCmulphg0OKORXDLfbtZmPa3NBYnr8j2rxzN1kFLV
         kWzzUzo+I7d/YRXxhMrw72j9UqYPjIgv2GyZo0wiUpr/GwdjPCvl616h/sN0o74IXvmF
         dU2rlF8cztwjraUzzp73FteVNUJHqCxoQ0dALZ/T66QDRGpxgTswu4VhYSU0Lu/Ve/71
         Lx6A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b="FJybV/Ni";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-02.nifty.com (conssluserg-02.nifty.com. [210.131.2.81])
        by gmr-mx.google.com with ESMTPS id bf14si259523oib.0.2021.08.19.13.05.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Aug 2021 13:05:11 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) client-ip=210.131.2.81;
Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com [209.85.216.47]) (authenticated)
	by conssluserg-02.nifty.com with ESMTP id 17JK4o8v030555
	for <clang-built-linux@googlegroups.com>; Fri, 20 Aug 2021 05:04:51 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-02.nifty.com 17JK4o8v030555
X-Nifty-SrcIP: [209.85.216.47]
Received: by mail-pj1-f47.google.com with SMTP id gz13-20020a17090b0ecdb0290178c0e0ce8bso7866068pjb.1
        for <clang-built-linux@googlegroups.com>; Thu, 19 Aug 2021 13:04:50 -0700 (PDT)
X-Received: by 2002:a17:90a:a581:: with SMTP id b1mr454883pjq.153.1629403490185;
 Thu, 19 Aug 2021 13:04:50 -0700 (PDT)
MIME-Version: 1.0
References: <20210817002109.2736222-1-ndesaulniers@google.com>
 <20210817002109.2736222-4-ndesaulniers@google.com> <87a6lghkdj.fsf@mpe.ellerman.id.au>
In-Reply-To: <87a6lghkdj.fsf@mpe.ellerman.id.au>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Fri, 20 Aug 2021 05:04:13 +0900
X-Gmail-Original-Message-ID: <CAK7LNAR2E8XDRrfVCis_qxDs3-dnf-HfqxkcYOMemqns7pgcmQ@mail.gmail.com>
Message-ID: <CAK7LNAR2E8XDRrfVCis_qxDs3-dnf-HfqxkcYOMemqns7pgcmQ@mail.gmail.com>
Subject: Re: [PATCH 3/7] powerpc: replace cc-option-yn uses with cc-option
To: Michael Ellerman <mpe@ellerman.id.au>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Benjamin Herrenschmidt <benh@kernel.crashing.org>,
        Paul Mackerras <paulus@samba.org>,
        linuxppc-dev <linuxppc-dev@lists.ozlabs.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b="FJybV/Ni";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org
 does not designate 210.131.2.81 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

On Tue, Aug 17, 2021 at 11:31 AM Michael Ellerman <mpe@ellerman.id.au> wrote:
>
> Nick Desaulniers <ndesaulniers@google.com> writes:
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
> > Cc: Michael Ellerman <mpe@ellerman.id.au>
> > Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>
> > Cc: Paul Mackerras <paulus@samba.org>
> > Cc: linuxppc-dev@lists.ozlabs.org
> > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> > ---
> >  arch/powerpc/Makefile      | 12 ++++++------
> >  arch/powerpc/boot/Makefile |  5 +----
> >  2 files changed, 7 insertions(+), 10 deletions(-)
> >
> > diff --git a/arch/powerpc/Makefile b/arch/powerpc/Makefile
> > index 9aaf1abbc641..85e224536cf7 100644
> > --- a/arch/powerpc/Makefile
> > +++ b/arch/powerpc/Makefile
> > @@ -12,12 +12,12 @@
> >  # Rewritten by Cort Dougan and Paul Mackerras
> >  #
> >
> > -HAS_BIARCH   := $(call cc-option-yn, -m32)
> > +HAS_BIARCH   := $(call cc-option,-m32)
> >
> >  # Set default 32 bits cross compilers for vdso and boot wrapper
> >  CROSS32_COMPILE ?=
> >
> > -ifeq ($(HAS_BIARCH),y)
> > +ifeq ($(HAS_BIARCH),-m32)
>
> I don't love that we have to repeat "-m32" in each check.
>
> I'm pretty sure you can use ifdef here, because HAS_BIARCH is a simple
> variable (assigned with ":=").
>
> ie, this can be:
>
>   ifdef HAS_BIARCH
>
>
> And that avoids having to spell out "-m32" everywhere.
>
> cheers


Yes.

Comments from Nathan and Michael
both sound good.

-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAR2E8XDRrfVCis_qxDs3-dnf-HfqxkcYOMemqns7pgcmQ%40mail.gmail.com.
