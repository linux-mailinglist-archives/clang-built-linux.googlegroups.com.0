Return-Path: <clang-built-linux+bncBC2NBVXJ7ILRBOXV3XVQKGQESXDFQRA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x640.google.com (mail-pl1-x640.google.com [IPv6:2607:f8b0:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id C2491AE816
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Sep 2019 12:28:11 +0200 (CEST)
Received: by mail-pl1-x640.google.com with SMTP id v4sf9538617plp.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Sep 2019 03:28:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568111290; cv=pass;
        d=google.com; s=arc-20160816;
        b=tI7AVweckCNH6ulPq9EqhCtjCo9nxF63Ka6umyMll5pW6sFZdSOh9mSz1Nbu6NJNXz
         E8GtWUEAPBUMTsJ45Dm/JSsFzaWFwyddU1POg/f6iYp+jmhejb3kVKnav2Cm/MucQQIT
         p0M+EQIcq00FgTZTyqNKF1xRclX8cicyI1CVwT5UBdygOGSoVH7zYzg0vXfW2XkBfUco
         7lzIE9f2KQwMLVbsqjkESxV9ULuaaOkOb/rGjL6Fb8LT40KNJ+IeuboW153lmBU/9YIE
         tJUwe23Jdy5MltciwGNX1P/sswr9ClLtF7HvtZBuZmcjILC4mO+8rmwds8Bt8KFHEtjH
         5mhw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=k+4TfHtfZyBy8OgLLxGtXR05W2rr/A1oWDnNUqaS7DA=;
        b=L2zb2im9iLEauDHXV4xxwestNX7p3n3GmEqelELve4TEBvipyaVf8sbNuKjPsqgrFK
         GBcsGrzOoMgsw4ppjP5yrB3XI32EUm+zpBt6LQ+IDFLnuN025YWLgAM1RwZ+uMSJFqZW
         y5uaZ2Xfkr2m5Uhd7iy/AOrqEYRpAWj6/aUnwb7jmObEBQx2TI192vVl6ojprNKFtDZo
         nAGGBET38S/7/Tz4tiqGBN9UP8zQQ5qsha0F5gq6YM55f7DjHNLsU9WHpYWLLfksfOM9
         f6iIRdxGJQgXm/GkhdUF1YDA2Xp1OQ5R2dn5UM7ELNkSePfjMG6RyEhRMK9Czb09KGPP
         8Dbw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ZEw8Msuy;
       spf=pass (google.com: domain of hwennborg@google.com designates 2607:f8b0:4864:20::d42 as permitted sender) smtp.mailfrom=hwennborg@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=k+4TfHtfZyBy8OgLLxGtXR05W2rr/A1oWDnNUqaS7DA=;
        b=h/0pl4eRufSNEgwCDtj7nUbfKIQ0MSE4PXUwQS9xW7JnJeOQ95n6YcQ0oeIL9B0s+Z
         e4ehIaSVf6cBR8UBKEfxq65XsfOAwPByJUCYxbdl9M2jfAVA11tRk2X0C9D8wwwDuIiJ
         Ag6Kw8ixwTwoPOh13loNBVanzbXFyCObTq9/84DzPlF7Um00C5WFB2+fnRV+ty1XnFE5
         YKY4UG3zUPmoKSaF4UWF+C35OVajafUje5n0lHkPkplpy4WVi5njKGTma8piF18AER39
         cXX4nk16l1+TOewEu4bC9uep1DjHKFFqZdituzxpcoqNCP1RjPdAvBdXWrL1RQQk6TL+
         0yLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=k+4TfHtfZyBy8OgLLxGtXR05W2rr/A1oWDnNUqaS7DA=;
        b=ju9/wuZVYUVK1Ma9kgyBO5QCTcQfm3i/nVdJQfUD8jcpJSfOA69GpsYwCf+gxeV+h9
         A40qmQoYCc6ZrRzdbIrzdph2sdYTNTKvc3Cg43aegtXl2pXpMPQjLguJToqU0xTHZCej
         /6kqkYw7OUW4fU3ub67sThI7sf/YrLiKvq8TQamaJTdp3arZPui8gITHKFcm/xsFGrqO
         VjEBJIDWI7Gt2yc/YDJxK3p8XaBGBPXthHyHrAJ9RyurveFIpJ1Se7WzzgjCSOKME2pT
         TmqDoCHh3dpODGlMfdbg3HAdlRouBXTfW2VLlOaGhgScGZk4NUhQ2zf9Hpci02B7saLa
         0ziQ==
X-Gm-Message-State: APjAAAUSmJAauRbSTFcTgTQPBY8mjx2vxtwNZY25C7Y4HCC4BCwmEK/G
	I4Ya/J9tS/T2h09U0rgHpRQ=
X-Google-Smtp-Source: APXvYqzZHOXLhStajuxjh6PipFlu3JrpR5lk0n9cceGx4PjKYBSnGQjRhgE2jLNY222K6y52rjjtQQ==
X-Received: by 2002:a65:5786:: with SMTP id b6mr26825128pgr.236.1568111290392;
        Tue, 10 Sep 2019 03:28:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:45cd:: with SMTP id m13ls3623076pgr.3.gmail; Tue, 10 Sep
 2019 03:28:10 -0700 (PDT)
X-Received: by 2002:a65:6406:: with SMTP id a6mr2847022pgv.393.1568111290070;
        Tue, 10 Sep 2019 03:28:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568111290; cv=none;
        d=google.com; s=arc-20160816;
        b=TkodO1enMkzIKK/ONu524lP/xd+AmTdBQzo5CNhGWoGwEXrrzf1OJwwJ2tFK7OGm+p
         iEBWCA3HeQZsGK1qz396rgdGsStjcQ1WcNsbTploS5ssfDjW2lET2/miCB59LkpqrIZU
         bQdoEJpKY/xC11vWSAljVbK7KAJ5snLL5Hr2a4+GVTzGqHe9z+JyM0M7cIPFMm1CNse5
         d2YaL34Z1F+q7vqqZ+3jszGgTioNdnre9EOsHZtUjp7/0XdOOwVw/jhU+1fxBpC5IJ/B
         IbAVl1pWSVVKPxIRp+vvjYwT7hdiiWVtW9sKPZPsjDRtJAxUWNhTk8IOuntcVL+1EBJ4
         SF4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Hbuuz9f9d+NbdHJfE6KQ2lGbA2rPYJvUSLI/LMrD3jw=;
        b=pHlWZpFoPLj8KkVKl6Z9vwOwVkJupO2MdKuGuwGidEwX+nNDgBSjYu8K1+IdOb49Yc
         uY8YpYHfGTZc9+uBOnyNtKusUAuDfN3QqZIQY10TAW4lgEbnJNpZdTRwJ+K+nqePHGS2
         3pbyaJK+41GOUiitvTYgAJFH5HLMJbOXP2qwySqp6rQUOQ7T0ndvcD6EQCy/2QUtGT87
         fd2KiUO51iNoSF/04e5ZUDLHA2o31UY8XAlsWLhridXb9VThygpHTXX1JjxCEJZ4bSun
         GR8JyVzRrkDr4es+4y01EYl3IzDxfmtXz0sLhz6MW0a+TG+KDR+y7E0eJweq99v09PXP
         v/fA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ZEw8Msuy;
       spf=pass (google.com: domain of hwennborg@google.com designates 2607:f8b0:4864:20::d42 as permitted sender) smtp.mailfrom=hwennborg@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-io1-xd42.google.com (mail-io1-xd42.google.com. [2607:f8b0:4864:20::d42])
        by gmr-mx.google.com with ESMTPS id x2si1421689pfq.3.2019.09.10.03.28.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Sep 2019 03:28:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of hwennborg@google.com designates 2607:f8b0:4864:20::d42 as permitted sender) client-ip=2607:f8b0:4864:20::d42;
Received: by mail-io1-xd42.google.com with SMTP id n197so36256102iod.9
        for <clang-built-linux@googlegroups.com>; Tue, 10 Sep 2019 03:28:10 -0700 (PDT)
X-Received: by 2002:a02:4807:: with SMTP id p7mr3249444jaa.95.1568111289214;
 Tue, 10 Sep 2019 03:28:09 -0700 (PDT)
MIME-Version: 1.0
References: <bug-43121-8919@http.bugs.llvm.org/> <bug-43121-8919-cA4BWUkQgt@http.bugs.llvm.org/>
 <CAKwvOdmAakhyifHBQunZxjegSUkBbuoDdcbVbsfTpH9HHUsvAA@mail.gmail.com>
 <MWHPR02MB24795CAA0744539FC6DFB513CABB0@MWHPR02MB2479.namprd02.prod.outlook.com>
 <CAKwvOdm8GPyqxPyWfdsBydDTm6cHZUrPuN0e5HgJMQvOe1+ziw@mail.gmail.com>
 <CAB8jPhf_Lj4N8YN1tRpM2NMR0k+uvaN6N=cp4Z7RSEG_CaabPA@mail.gmail.com>
 <CAKwvOd=4hWG1MhPSou2jfAGLpCEEh=tQ+sJNnmiz5=VakGWr8g@mail.gmail.com>
 <CAB8jPhfZUgVKq2=nMjqgFVA6_2wT2bsNbd2XPn5UYomtU_iaJA@mail.gmail.com>
 <CAKwvOd=vmQL6pJVCGkxee3LQUEPOyeGG1AH+syya-FF4gGtpaA@mail.gmail.com>
 <CAB8jPheC1sb2t9tiGyr0FOJRSCS9Vo60LBpSM5Szu5rR_CaRdQ@mail.gmail.com>
 <CAKwvOd=DRLcv7CgLygG8COxabZaZDKcWxxOeFG8cwYZONpHupw@mail.gmail.com> <CAB8jPhd4u943PmD_ryj0Bht3kvC4a=yKpek620O+LEQMOCvbEQ@mail.gmail.com>
In-Reply-To: <CAB8jPhd4u943PmD_ryj0Bht3kvC4a=yKpek620O+LEQMOCvbEQ@mail.gmail.com>
From: "'Hans Wennborg' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 10 Sep 2019 12:27:57 +0200
Message-ID: <CAB8jPhfrGj1fNfPx9g18kwKcD8Ls5ZHn1MA6zfr4VCOPWn9s2A@mail.gmail.com>
Subject: Re: [Bug 43121] ARM: invalid IT block in thumb2 mode
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Eli Friedman <efriedma@quicinc.com>, Stephen Hines <srhines@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: hwennborg@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ZEw8Msuy;       spf=pass
 (google.com: domain of hwennborg@google.com designates 2607:f8b0:4864:20::d42
 as permitted sender) smtp.mailfrom=hwennborg@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Hans Wennborg <hwennborg@google.com>
Reply-To: Hans Wennborg <hwennborg@google.com>
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

And it has now shipped in rc4. Please shout if you find any issues
with the recent patches.

On Tue, Sep 10, 2019 at 9:30 AM Hans Wennborg <hwennborg@google.com> wrote:
>
> Thanks! Merged that in r371490.
>
> On Tue, Sep 10, 2019 at 12:13 AM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > Looks good, thanks again, all!
> >
> > On Mon, Sep 9, 2019 at 2:12 AM Hans Wennborg <hwennborg@google.com> wrote:
> > >
> > > > Cool, just landed my fix, and Eli put up another patch that fixes the
> > > > arm32 issue for me (big thanks Eli).  So having:
> > > > - https://reviews.llvm.org/D67306
> > > > - https://reviews.llvm.org/rG7a7bba289521e6d4da199565cf72dc9eaed3d671
> > > >
> > > > in clang-9 and then that's zero bugs related to asm goto that I'm aware of.
> > >
> > > Thanks!
> > >
> > > I've merged these ones:
> > >
> > > - r371111 for PR43121 (and other PRs)
> > > - r369705+r369713 for PR43243
> > > - D67252 / r371262 for PR43222
> > >
> > > and waiting for D67306 to land (it would be great if that could happen
> > > today so we can get rc4 out).
> >
> >
> >
> > --
> > Thanks,
> > ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAB8jPhfrGj1fNfPx9g18kwKcD8Ls5ZHn1MA6zfr4VCOPWn9s2A%40mail.gmail.com.
