Return-Path: <clang-built-linux+bncBCS7XUWOUULBBPNUYKAAMGQEVWA7HSY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3e.google.com (mail-vs1-xe3e.google.com [IPv6:2607:f8b0:4864:20::e3e])
	by mail.lfdr.de (Postfix) with ESMTPS id EB6C4304C58
	for <lists+clang-built-linux@lfdr.de>; Tue, 26 Jan 2021 23:39:58 +0100 (CET)
Received: by mail-vs1-xe3e.google.com with SMTP id j14sf107616vso.17
        for <lists+clang-built-linux@lfdr.de>; Tue, 26 Jan 2021 14:39:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611700798; cv=pass;
        d=google.com; s=arc-20160816;
        b=bMkSivqONkkok5ZeRICzpcdaJBCvxHWlK28l8TqP32c584YFApHpaph35QaSVgELWl
         SiVd5gStNHOzy+SqzP1kEjFTyUdH0ImmwsJqMjY7ANzdzDvVipP2vUU2fsYRGUD04A1D
         9Y35N1TfiIjmvJf6NqaICfsTdgEgvbTxnC4P6rFrmoR/atmo50NgaDj+epJg2qeSHMVi
         RaenqQebsBbogyWJyFmd4cHe1yCcrmKtB/1W0scWs+TFLbuCanj4lOS00vj5L+bhGNJX
         lN7peH83BX4RbXybkRLHEiLqUWXMJ+3dTtbJdltWTeKkRx3YWBYLesYqmgA0dzeKQyrF
         3eBA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=g1lXkjFVoWcHimrRyusFFxrIWTFA9Q+rr6rz92SJWtU=;
        b=bHfutR/NHIez7jKCRasU49CVJIMjJsGpAawhGoM996nw8WGXF4zwDfJWMTDDfJAZcZ
         vh6aC9JAq9hWNULJJkaXc3vMsxBCbRBPDeFzCc/mAsPOLSZ8i74SOL4+m6B7bhdPCQVK
         g2O1WxWePquff6/PIYuk4Ntb6UMJpnz6VhGr8LwSEwFeaYdIlO8c9WWq0NK3q4HpsOFv
         BG0elvFfXGZLju82kmT3ItBH3fVnDFBy9mXI1oWmqOCbKnoIESqNHsddMWME+XCiitum
         MF+r5m5n5kTjuaLTEuUxctLEj9wZFdcPtvgAZEX1aTsCq/eRSH+nZ7AqiNtXItU5a6W+
         lfZw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=gKNKBbKX;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::102d as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=g1lXkjFVoWcHimrRyusFFxrIWTFA9Q+rr6rz92SJWtU=;
        b=eCUhw9K4WSs+57kcYidwXtCBVhMg7h3KzNkOjDYFbkYNnULPwsyrZNTRcwQ3f9zmF+
         JqrqenSjY3oz+2jggoPhLCEmrayhT00LX8+keVQcbcy+HREbyi7y/w/UB/3OuKqC2F1k
         tS0jxpiC/ul/70AiS+SP7V43pEv7SlaumFGMFWEZbHx9CF/BdUqC0otZjDGa05Pg/Exw
         GpssaiAGUKV9BCaOECxmStqj3rpNGWrodNl+eAYIl3I6gW0mgmN7r2iBxvzYd2XpOxos
         f5lx4hdmp0ELIL5yQVQ+oS7qmUa005VvQYJ2ALPm2llt987871BZUoJNpFXUC/+q02a9
         bZFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=g1lXkjFVoWcHimrRyusFFxrIWTFA9Q+rr6rz92SJWtU=;
        b=U3YBuT68lKJ9WWVSsCFH+RgrHZdheg5G2Xyi4zdkzrazLm7O16flWVXEaiot1Lp/XJ
         pdxhBKbLsRrrxpWae1a6TFZOWtq/k3LUMps39ChVcF+av5FiyaMpvcYvHN6ToB32ko4g
         YMFT4MoOgl41MWH9TbU951NzDMoBQrH5VFiAFE1dl2+phR7rNdeDpogeCvboRwhAIq9D
         E3mu0R1mStjo+mQP119Jf7wm9mMxTzWuqLCfs3lfBoZSvdrIcl0fOkjlr9ONy07OJEOS
         wcRcK1tW7k+neozeXMHHRsosXI0Vr2WEkP+zptxkGInQDwRpwWheGSQmHEzzOiJx0Kc7
         XV0w==
X-Gm-Message-State: AOAM530NdAaPa8ADOJZveBl6jiG2oRnT1rkd8yCAASKZGVfM1NxZ5LH/
	tT5pCYMWh4FfeicU+aSBayw=
X-Google-Smtp-Source: ABdhPJwU9GTOE2JOzCKu1zCJgwwlxiDTnQxu9z8LUa+P9+A94ReH6RLw/26Ox//OSdDOtRjxU4OFOw==
X-Received: by 2002:a1f:30cd:: with SMTP id w196mr6517037vkw.13.1611700798050;
        Tue, 26 Jan 2021 14:39:58 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:8f8d:: with SMTP id r135ls692413vkd.1.gmail; Tue, 26 Jan
 2021 14:39:57 -0800 (PST)
X-Received: by 2002:a05:6122:31a:: with SMTP id c26mr6700614vko.0.1611700797670;
        Tue, 26 Jan 2021 14:39:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611700797; cv=none;
        d=google.com; s=arc-20160816;
        b=RD8py3yipURJUnEtTRH4OS8KuaRoA1VzC2n8GKgOqLyvl7Z4wN4rOI9ZNrlPNY9eHz
         75eOhqOvPAZsOsGQLQCvZ1yvKX86BImBSwUhmgUiixAjAWwWmASRSy7h8ZVcjpiKBhP9
         r0KTYdd17Rp6UOHRkjzSDQQeGNwwgo6rglz6/AdCOY6riFhmfiYqxuahyMRYlQQrJqpo
         7CiyYUBywc/iw8EdjJtx0MTzfT5LgBH6HM++NI3vw0IEIwNcFNPZQRUJuVSemJWBmXi6
         qV4dGCkWrtSgzU8ZIa7Q38n+rF0M7ZKmWzDaz30o8E/Tg0SbGZKhTVjfAgAPX8bcQzOC
         pydQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=KUG/geLRjhLjyfQGAyqVhEUSE3izIcSCJeli9/n0gv4=;
        b=cCEx48oqQobulBjUlVqny7Wr63mUd1CKtmVQ4Br0UD3bLIYChsK4DllnvFhmqbuxR/
         4ASS7+ADblr8cy82ip+HWMzEqRmC6aDas1cyDW1DlW2Sa/41DgIXB1OWY4IcBErWxIC0
         eYdxlVyuaEyWlk0fCrTk2HvG04lU+sLN4vxmjMtpbOavigIZ+ftSnK+8Wm9dtWWkAY6o
         a0GqFy748iwoSO+Urp7acLDACiyaMap2wnX0EnaLdKElIXJP7IvN7P33cInGCZMXJGhY
         4KtTQY95dZD1zBEwW//fg/T2Bj2xxIvsbf9rU/RDkPe4OkBC7Rga4Yrm7GbozQtcGarh
         NkgQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=gKNKBbKX;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::102d as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com. [2607:f8b0:4864:20::102d])
        by gmr-mx.google.com with ESMTPS id c4si12619vkh.1.2021.01.26.14.39.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 Jan 2021 14:39:57 -0800 (PST)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::102d as permitted sender) client-ip=2607:f8b0:4864:20::102d;
Received: by mail-pj1-x102d.google.com with SMTP id a20so95915pjs.1
        for <clang-built-linux@googlegroups.com>; Tue, 26 Jan 2021 14:39:57 -0800 (PST)
X-Received: by 2002:a17:90a:da02:: with SMTP id e2mr2038773pjv.173.1611700796742;
 Tue, 26 Jan 2021 14:39:56 -0800 (PST)
MIME-Version: 1.0
References: <20210126212730.2097108-1-nathan@kernel.org> <CAKwvOdkpJn=e+4cuX7-F3AUPhSGKGqG1SuNtZTo1FKCLFjHSGQ@mail.gmail.com>
In-Reply-To: <CAKwvOdkpJn=e+4cuX7-F3AUPhSGKGqG1SuNtZTo1FKCLFjHSGQ@mail.gmail.com>
From: =?UTF-8?B?J0bEgW5nLXJ1w6wgU8OybmcnIHZpYSBDbGFuZyBCdWlsdCBMaW51eA==?= <clang-built-linux@googlegroups.com>
Date: Tue, 26 Jan 2021 14:39:45 -0800
Message-ID: <CAFP8O3K5DTOFERgoRWdYoSC-Cq_soOyRw2emfZM5OVOCcQtZug@mail.gmail.com>
Subject: Re: [PATCH] MAINTAINERS/.mailmap: Use my @kernel.org address
To: Nathan Chancellor <nathan@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=gKNKBbKX;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::102d
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
Reply-To: =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
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

On Tue, Jan 26, 2021 at 1:30 PM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
> On Tue, Jan 26, 2021 at 1:27 PM Nathan Chancellor <nathan@kernel.org> wro=
te:
> >
> > Use my @kernel.org for all points of contact so that I am always
> > accessible.
> >
> > Signed-off-by: Nathan Chancellor <nathan@kernel.org>
>
> Acked-by: Nick Desaulniers <ndesaulniers@google.com>
>
> > ---
> >  .mailmap    | 1 +
> >  MAINTAINERS | 2 +-
> >  2 files changed, 2 insertions(+), 1 deletion(-)
> >
> > diff --git a/.mailmap b/.mailmap
> > index b1ab0129c7d6..b25a44ab5ba6 100644
> > --- a/.mailmap
> > +++ b/.mailmap
> > @@ -247,6 +247,7 @@ Morten Welinder <welinder@anemone.rentec.com>
> >  Morten Welinder <welinder@darter.rentec.com>
> >  Morten Welinder <welinder@troll.com>
> >  Mythri P K <mythripk@ti.com>
> > +Nathan Chancellor <nathan@kernel.org> <natechancellor@gmail.com>
> >  Nguyen Anh Quynh <aquynh@gmail.com>
> >  Nicolas Ferre <nicolas.ferre@microchip.com> <nicolas.ferre@atmel.com>
> >  Nicolas Pitre <nico@fluxnic.net> <nicolas.pitre@linaro.org>
> > diff --git a/MAINTAINERS b/MAINTAINERS
> > index 992fe3b0900a..f9a360103daa 100644
> > --- a/MAINTAINERS
> > +++ b/MAINTAINERS
> > @@ -4303,7 +4303,7 @@ S:        Maintained
> >  F:     .clang-format
> >
> >  CLANG/LLVM BUILD SUPPORT
> > -M:     Nathan Chancellor <natechancellor@gmail.com>
> > +M:     Nathan Chancellor <nathan@kernel.org>
> >  M:     Nick Desaulniers <ndesaulniers@google.com>
> >  L:     clang-built-linux@googlegroups.com
> >  S:     Supported
> >
> > base-commit: f8ad8187c3b536ee2b10502a8340c014204a1af0
> > --
> > 2.30.0
> >
> > --
> > You received this message because you are subscribed to the Google Grou=
ps "Clang Built Linux" group.
> > To unsubscribe from this group and stop receiving emails from it, send =
an email to clang-built-linux+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/ms=
gid/clang-built-linux/20210126212730.2097108-1-nathan%40kernel.org.
>
>
>
> --
> Thanks,
> ~Nick Desaulniers
>
> --
> You received this message because you are subscribed to the Google Groups=
 "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgi=
d/clang-built-linux/CAKwvOdkpJn%3De%2B4cuX7-F3AUPhSGKGqG1SuNtZTo1FKCLFjHSGQ=
%40mail.gmail.com.

Congratulations for a @kernel.org inbox! =F0=9F=91=8F


--=20
=E5=AE=8B=E6=96=B9=E7=9D=BF

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAFP8O3K5DTOFERgoRWdYoSC-Cq_soOyRw2emfZM5OVOCcQtZug%40mai=
l.gmail.com.
