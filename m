Return-Path: <clang-built-linux+bncBDYJPJO25UGBBKOGTL7AKGQE2CZK3BQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23b.google.com (mail-oi1-x23b.google.com [IPv6:2607:f8b0:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 866732CAD06
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Dec 2020 21:10:18 +0100 (CET)
Received: by mail-oi1-x23b.google.com with SMTP id v5sf1557242oig.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Dec 2020 12:10:18 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606853417; cv=pass;
        d=google.com; s=arc-20160816;
        b=XVEDPms8GNHXZbjkmE73L7gAZGEr8NQzL3yfKQ9ZI0avM2Rz80vWaT6X1WDxtV5poS
         0MeSnNp7RvPU8ptPcw25VDu+uG3Md73VWWb6dwS+joVPtXOn8XfU1JdPePw19/t7XJlx
         tKv2ZRzgzX6DCBKNbdjvOUAvoKm+UVhJwXsmsgshL3WoxdlSS4T4hj5LCrr7wqcK90cP
         n3AjMws8ckSO3N/AJflRKQArr22Pey4z5V1x+73d0OE4058KYyC92WmQXmjBtYDrf8eU
         6x4QYWNmzbmnbRrAAPuwidG2FrWRD8x+6LLCiLk95DnVsVNnJ+slEGAUydA5RZVwEN3D
         6IUg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=xCUcviqJwbPnbEwtU5dcxWDi+7iXdRuSaGSkSQ1kJ9k=;
        b=C7OlnE/fmHaRKa7qnA+yXFD+dVYmr5VFiMaoSBzuqJFX+Mib/JWxO5Yvq96u00IOXG
         1qyOqM+DHSTGoMPpZHG+AITyeyxXQ4ILrrd6hgep8lVdIc8kl3UBdsgbvLgU5/ppmSKb
         r9oM3uaTqpbvtSZaob9BGgOmPmjorv7Fls6Dj3yVKk9ERrhL6Dq1dm94KQUNj/fNsBN3
         wjCxwsGDyoyETaarAAKb6XCADRUiHs9DdAhdgi6t1bucwLGnvRZz1fsl2LaoVgQaCebn
         KH8LpFKqtK6gPuM8eMAy6U2ZhvLiE6lGleNSvl12owxtMSnf1d5pTWF/QB1pNURAy9Fg
         Brtg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=MNqqTk+8;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xCUcviqJwbPnbEwtU5dcxWDi+7iXdRuSaGSkSQ1kJ9k=;
        b=V5mx4FuCrH2wwfX2ixgCEBCP9bTGGiC8XFrD/4L8ymSXgdRvphLMEBd50ZUFdSK4uo
         H8nIjYDt0wUCZsdDaLqNFKPYqd4pEKEnZIFUogkv7254VOxCTA072WVPDZg6zY28ZjO0
         ai6PMnS1kFUKfFZ5ioayH6bgstdQulkbTYSzquVPtcNZYhxnZDEeeunhV5TSRoTr6s2W
         0fLg6OoPWIU704XRxdU3/+YVVXEou7NPN3WUpB7IPnMd5Cp4TiAcZ/8ZB7Os9hlwYECx
         vAIZmuYlItlcIjNgY+KE79nwaIIvrg+FN3DmKkmvhJtpXU6J5AkaS30EuIVPHIuSIH5o
         GRjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xCUcviqJwbPnbEwtU5dcxWDi+7iXdRuSaGSkSQ1kJ9k=;
        b=Qhfp4qtUGQC5ouisoWC7gGcZRsFNnH2d7gapSaGBLkXQu0Mdwp1QljYDQ4BJbwYadN
         fmymAKlTBiyiJ7dlGHuy00D4iZzKPLs2OkwA4ZmBWyYpXEd21ge0riFj8ADqoWaPtMuk
         4fxNwVUUyJ9kSL2zuBSRJ09lic+T5LRZxKegF74EkWNVaB1WvT6rjVcZOMRFe7PeSIif
         WpVTTE/vvvzUTdWTYRGcFEnyOEFOvzxA6msbY3dpsaI/T61uspjySeDnXTB9qaCOVaqy
         1ehn2G5N3OdGDQlHC2EPDnZJw78bdcs4VmUtAfhzeqKrHXdYNM55M3l5xGGIq1kkz7yA
         Kcbw==
X-Gm-Message-State: AOAM530sLJUK017CgiUU4aae4cw2Q3Ha3FSSRSlVtnrOqDZhGIaXx65X
	HCFQGMtUTZcswdWkmIhZmss=
X-Google-Smtp-Source: ABdhPJy8Qr9x/6Kjs9+AMQnm6Zz125/gZyldf4S3dIPTWlyi6Y0moF/X8YbjEsS2GhvGRznrIg8Dpw==
X-Received: by 2002:a9d:6a91:: with SMTP id l17mr3032756otq.187.1606853417372;
        Tue, 01 Dec 2020 12:10:17 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:39c9:: with SMTP id y67ls834754otb.7.gmail; Tue, 01 Dec
 2020 12:10:17 -0800 (PST)
X-Received: by 2002:a9d:62c5:: with SMTP id z5mr3071026otk.351.1606853416958;
        Tue, 01 Dec 2020 12:10:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606853416; cv=none;
        d=google.com; s=arc-20160816;
        b=dSXdnDc8fYjOgUm+iu5shc7F4VupvZw9U9i1lkx47XQth7lZVlza+hTv/ckmDIkgD1
         /G+JISStc1rTIteR9Q8zPPEqQlh8U5BFVbl+wYegRDDR3mTnbt0D33Z2GxIXMNh6RIxZ
         tmKEraVJLfuQYn6KwztrP3Oa1F7vj/C+qtvYqroHzqAdnILFBAbJSODxkGYrhenq8+mN
         zjAgsfIuHcAHlTARL9vxzEjxV4kgZmgxHhBgsqWkARElfpHGiG8SC2GVt1xDG8ymd1Gt
         qObTJZVdY4A6+qIXIOd7Altjw6UzA76JQhDAqZUkvG9+n+2/3adraFctnDEmALXbrBVz
         PKNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Tl7NwbCgPB4FUQziRcqAk5bwi9HxMdhHj333bo2TW/M=;
        b=jkuOU3B1yCoB427EMvibcAXF3bhKiONHYICYTX9katBBHQaUeWcisHEr6bnkP5XQ06
         HP9/2kL/DEVY95904UxR9WvaFby2EGJFN+6jceoe1zXHUNbFZZdBxCVPhRV8fI265AA9
         II+k6Ps/IqjF5km5wpBTh2MQInpLXSHvepT1bJ+YSOyFnRfnTYgEEq+g+OZgCQuQ1j9W
         AeHMmLTBBv/D3O6QvnOXn4KZhXAhdq8tSum1CabpgaIAJpySlQECu0bItD6rhJUYpNJG
         mcyHybF4v61T2HtoxdiJ0nnb699eQNMeDEUP59620Al2bpPuXP8J+RUAqRAsMUHB6hk1
         uzHw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=MNqqTk+8;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id w25si117311otl.3.2020.12.01.12.10.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Dec 2020 12:10:16 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id w4so1839525pgg.13
        for <clang-built-linux@googlegroups.com>; Tue, 01 Dec 2020 12:10:16 -0800 (PST)
X-Received: by 2002:a63:a902:: with SMTP id u2mr3776969pge.263.1606853416126;
 Tue, 01 Dec 2020 12:10:16 -0800 (PST)
MIME-Version: 1.0
References: <CA+G9fYt0qHxUty2qt7_9_YTOZamdtknhddbsi5gc3PDy0PvZ5A@mail.gmail.com>
 <X79NpRIqAHEp2Lym@kroah.com> <CAKwvOdmfEY6fnNFUUzLvN9bKyeTt7OMc-Uvx=YqTuMR2BuD5XA@mail.gmail.com>
 <X8X8y4j9Ip+C5DwS@kroah.com>
In-Reply-To: <X8X8y4j9Ip+C5DwS@kroah.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 1 Dec 2020 12:10:04 -0800
Message-ID: <CAKwvOdkYWBsL-QXcfPztsCTzyAHLiSodzDznDxOz1MPkktWS1w@mail.gmail.com>
Subject: Re: [stable 4.9] PANIC: double fault, error_code: 0x0 - clang boot
 failed on x86_64
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Naresh Kamboju <naresh.kamboju@linaro.org>
Cc: linux-stable <stable@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>, 
	lkft-triage@lists.linaro.org, Sasha Levin <sashal@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, x86@vger.kernel.org, 
	Matthias Kaehlcke <mka@chromium.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=MNqqTk+8;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544
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

On Tue, Dec 1, 2020 at 12:19 AM Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
>
> On Mon, Nov 30, 2020 at 12:12:39PM -0800, Nick Desaulniers wrote:
> > On Wed, Nov 25, 2020 at 10:38 PM Greg Kroah-Hartman
> > <gregkh@linuxfoundation.org> wrote:
> > >
> > > Is the mainline 4.9 tree supposed to work with clang?  I didn't think
> > > that upstream effort started until 4.19 or so.
> >
> > (For historical records, separate from the initial bug report that
> > started this thread)
> >
> > I consider 785f11aa595b ("kbuild: Add better clang cross build
> > support") to be the starting point of a renewed effort to upstream
> > clang support. 785f11aa595b landed in v4.12-rc1.  I think most patches
> > landed between there and 4.15 (would have been my guess).  From there,
> > support was backported to 4.14, 4.9, and 4.4 for x86_64 and aarch64.
> > We still have CI coverage of those branches+arches with Clang today.
> > Pixel 2 shipped with 4.4+clang, Pixel 3 and 3a with 4.9+clang, Pixel 4
> > and 4a with 4.14+clang.  CrOS has also shipped clang built kernels
> > since 4.4+.
>
> Thanks for the info.  Naresh, does this help explain why maybe testing
> these kernel branches with clang might not be the best thing to do?

On the contrary, I think it's very much worthwhile to test these
branches with Clang.  Particularly since CrOS is shipping x86_64
devices built with Clang since 4.4.y.  This looks like a problem
that's potentially been fixed but the fix not yet identified and
backported.  It would be good for us to identify and fix the issue
before it becomes a problem for CrOS.

Though, it looks like CrOS just skipped 4.9...? Looking at:
https://chromium.googlesource.com/chromiumos/third_party/kernel/+refs
I don't see a chromeos-4.9 branch.

That said, I still find such reports helpful to track.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkYWBsL-QXcfPztsCTzyAHLiSodzDznDxOz1MPkktWS1w%40mail.gmail.com.
