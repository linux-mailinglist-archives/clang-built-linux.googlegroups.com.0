Return-Path: <clang-built-linux+bncBDYJPJO25UGBBLMZTWDQMGQEV2KFDJA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x438.google.com (mail-wr1-x438.google.com [IPv6:2a00:1450:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id F16F63C1995
	for <lists+clang-built-linux@lfdr.de>; Thu,  8 Jul 2021 21:06:21 +0200 (CEST)
Received: by mail-wr1-x438.google.com with SMTP id l21-20020a0560000235b029013564642c78sf2275553wrz.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 08 Jul 2021 12:06:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625771181; cv=pass;
        d=google.com; s=arc-20160816;
        b=UlJqSXR7uqO6WwdEAxK+wTa03isJ3le+KRiZ4vMmOwZrcqju6yOnxH5nq8tIaRh14R
         idct1lsQiaV+SyJDKlRb/8rAHXcGfS2uYBGwV0x7avj9gvJTwKJABKCRNKztLjnvUgyG
         3pG9yQqtSZaN/T8QFprah/PMSbwhhUFC+piB59PJSprPTTNr5slYtdh3YAOgc2gsbeWz
         seR5ZH94L5m0pJhDRIu63ea7Yy7Kl66vxNMTGf52hkQhFtkZ45m7tjUSh6wcI7Ih/ZJL
         XVjXUw1j8Z+auJM32omj5ltHGkuvAdrhHEID3Y4lsHcmB6e1he7So/0fIGGs+v8ibpQV
         TGAQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=yjOesQasKEv5d9ZipAinkV7qS2z1GVp4+pKab7MDVoQ=;
        b=INTIKLVLKiKQ91Ijm2muazKWI5jeS8Q+ogGFLOmvaPkEnL+yN6cKnEs/VMzzdMTB/5
         PD00OVJfDYy6DfjC3lGbnSpaL292mZdPifaGHtSDyJYWAfZrrh1JFk+UbVZz0DJS9OHS
         g7CA8u/3BJfDnxu+b2lawYtEuqCUtyhaGZynSrz48fJDBbAVa5WENNJFSrJ2eS6dXQnl
         NhQ3zdLpXGotrMT6vTyBpxMn1um/VPfNIYAd/FbCVLa68hqYgMc5PNdUBm0kA/Ncg5J2
         2ejPdA7fACUFWt3NdGOnTeEOmeEfr637LF9XAS3lh5i2ri53AvcQD/36KuhRlhwY1bud
         XNbg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=bq27k7eh;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yjOesQasKEv5d9ZipAinkV7qS2z1GVp4+pKab7MDVoQ=;
        b=A0zRpk1AxyWl/0x/mPUiQ3w1sScTswLKIDyUtIY4H+7PDx1vTLVoGiZXHuaQngI9qv
         Yd6Z/nDd6KhJMNlfsDiY9RABdnjc9uVxrb/vu/9AAB+R70iPce88UvyPVd+r2D8LwYWm
         5Rl8ob6hB1U2fJqFcqCpteaQXVyAet9SAmmCzMjFYiNj9cqO7EzD9jdiU6V8PqqCQ0cp
         D+nRz0FmJQxvz+hYbmyj4P9FuMZrU9zM//ckZV1ldThSJ03IHBYHE87vfeBj6R9fGYfH
         iyOsQtVlz9G2/KKtaOhg8HsTYaZDJtTHEi0tH369GCNpLWM+hNzACgucbpn6+HYYwsu4
         ABiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yjOesQasKEv5d9ZipAinkV7qS2z1GVp4+pKab7MDVoQ=;
        b=kGXqsQwYUtF2PfOhWLksKvfXuuzAP4yeh9m0lodpxYup0/dnoJ+vq2gctcM/neaGL0
         Y1PmrFgeYTodu5pgIXDDG/O+MWA5E7BVSaGqN4ZHLbvtwhbZu7x+tCbEGOT3jS5keE2O
         YIrcmMtmn8QxHSDN2GDj6mxEWBzza9efA9dk4ofnXZa1419MzLNFs6POnq8KwNotKsib
         EB05fi+cJXtHoqEYCxiB0Ae4dMvNjVjbq53xFO5tlXUxYSMbk7VRR2+amNVduhj/exNV
         dm5tgD9qLYAP+7noyBPWmDil9SxdorD9CJYACQyB5WxkRALt4bgAgRBHSbCu5hdBNnFM
         Djug==
X-Gm-Message-State: AOAM531jlGAJjbmlSH3xJgKIzsWqduJKhFB/2aMYlKQdAAPmIFiiJA8n
	qg5pZAPpC1HH9C05w8QLt4E=
X-Google-Smtp-Source: ABdhPJwWAaZAXJHc8A0GCx/PlF+a6N6sGqmLS89+x25smB19niNbW6XYjt0C/p1T2ipK2bO/R4F/jA==
X-Received: by 2002:a1c:741a:: with SMTP id p26mr7041328wmc.47.1625771181721;
        Thu, 08 Jul 2021 12:06:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:1c90:: with SMTP id k16ls5976386wms.2.canary-gmail;
 Thu, 08 Jul 2021 12:06:20 -0700 (PDT)
X-Received: by 2002:a05:600c:354d:: with SMTP id i13mr6958756wmq.143.1625771180903;
        Thu, 08 Jul 2021 12:06:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625771180; cv=none;
        d=google.com; s=arc-20160816;
        b=qe/OrQe2Jjws+eztFBzjPHitidoxW44I1WC5/rsbjrTq2CqmrXsphDsF3QWC9sIs8f
         R3lvG3SPlBIV1Ekz0Ercij3mygZ8bow7SBCQx0oXbQJEVS3VNyh04N04zMXJwv1p3jWT
         Su0Jhz7vR75h1KLwM9Km+MBhikNDQ/K9W8ihgd9xfSC70HWICCZ3jBiWlTPwzchx5lin
         ysqCC2rZU71RLcTs2eeU5n/bQiW/eaKQB7VHSMfRo/vKWLeelhS74arQ7lefbij+IInT
         JA26kk/k9sIrgXnkM1Kn3CPXa0IFB7wLWotKNDLuRxYUhI9D3Ikcr7qxolQV6Ia64dHq
         ZLgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=6+ObdsFBNceXxQMGRQLsnrEHm6C0Lskp1Geuon+6uw8=;
        b=aspCli9YFlS1dUfYde/RMbp4wpQa+mCvPoUDCwAlWm4QBZQYk2hYSktU0qV4Wkc02N
         pvKV3c2IYt+gZtdgB/IxgGoFKFJ81EXpurXu1zmAn2po2yQP1ZT+6T9dhGgv62SUFNg0
         5PdDtzJsiEri0NIOFemCMRfWcitL/zOgGn2WRQxd0iwWJTiHGjVYydLLtkC9wOYB+7io
         tKmTYmui4rq1YSpJLiZIMSYRnsEft4OuNlM4/NHtERG0wSraphMeAxp9NDXehAMon0+r
         0yfHd6z58EpdYBq8/iBIiPHFif0mV9DMfAYAizjM2UjGRGeBbVGBpsK3HxOsx04zBoNd
         4WSA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=bq27k7eh;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com. [2a00:1450:4864:20::12b])
        by gmr-mx.google.com with ESMTPS id c26si174540wmr.1.2021.07.08.12.06.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Jul 2021 12:06:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12b as permitted sender) client-ip=2a00:1450:4864:20::12b;
Received: by mail-lf1-x12b.google.com with SMTP id u18so8538907lfl.2
        for <clang-built-linux@googlegroups.com>; Thu, 08 Jul 2021 12:06:20 -0700 (PDT)
X-Received: by 2002:a19:5f04:: with SMTP id t4mr25643332lfb.297.1625771180373;
 Thu, 08 Jul 2021 12:06:20 -0700 (PDT)
MIME-Version: 1.0
References: <20210707224310.1403944-1-ndesaulniers@google.com>
 <20210707224310.1403944-3-ndesaulniers@google.com> <CAK7LNAR66iE0w4bjpMVEz6W==mnc59MEnRWm1MXrqApP0aE4Qw@mail.gmail.com>
 <CAK8P3a1MW9hYzDT-iL4CpwaJ5NUuQODT3XgheocrnF7496GKFw@mail.gmail.com>
In-Reply-To: <CAK8P3a1MW9hYzDT-iL4CpwaJ5NUuQODT3XgheocrnF7496GKFw@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 8 Jul 2021 12:06:09 -0700
Message-ID: <CAKwvOdnV0j6u84aFrsNW1cfQmEQ4106uhq3dK-pEjSVDmq8pLg@mail.gmail.com>
Subject: Re: [PATCH 2/2] Makefile: drop CROSS_COMPILE for LLVM=1 LLVM_IAS=1
To: Arnd Bergmann <arnd@kernel.org>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Miguel Ojeda <ojeda@kernel.org>, 
	Fangrui Song <maskray@google.com>, Michal Marek <michal.lkml@markovi.net>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Nathan Chancellor <nathan@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=bq27k7eh;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12b
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

On Thu, Jul 8, 2021 at 4:45 AM Arnd Bergmann <arnd@kernel.org> wrote:
>
> On Thu, Jul 8, 2021 at 12:23 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
> > On Thu, Jul 8, 2021 at 7:43 AM 'Nick Desaulniers' via Clang Built
> >
> > We must rely on this behavior of Clang because
> > --target (which is contained in CLANG_FLAGS)
> > must be specified before the Kconfig time.
> > Then, a user can toggle CONFIG_64BIT any time
> > from menuconfig etc.
> >
> > With this in mind, using $(ARCH) as if-else
> > switches is pointless.
> > $(SRCARCH) is the only meaningful input.
> >
> >
> >   else ifeq ($(ARCH),i386)
> >   CLANG_FLAGS    += --target=i686-linux-gnu
> >   else ifeq ($(ARCH),x86)
> >   CLANG_FLAGS    += --target=x86_64-linux-gnu
> >   else ifeq ($(ARCH),x86_64)
> >   CLANG_FLAGS    += --target=x86_64-linux-gnu
> >
> > should be replaced with:
> >
> >   else ifeq ($(SRCARCH),x86_64)
> >   CLANG_FLAGS    += --target=x86_64-linux-gnu
>
> I think we usually only have to provide the architecture
> name, as in "--target=x86_64", though for arm I get a
> warning "clang: warning: unknown platform, assuming
> -mfloat-abi=soft" unless I provide the full triple.

Right, Fangrui also made that suggestion, but for that reason (the
error for various architectures when using 2-component triples) I'd
prefer to just always specify a full triple.  I picked some to have a
starting point; unless they NEED to change, I'll refrain from
modifying them further.

Technically, I think they can have 4 components, not sure why we still
call them a "target triple." I guess I wouldn't be surprised if they
can contain more than 4 components at this point.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnV0j6u84aFrsNW1cfQmEQ4106uhq3dK-pEjSVDmq8pLg%40mail.gmail.com.
