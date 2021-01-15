Return-Path: <clang-built-linux+bncBDYJPJO25UGBBIXSQ6AAMGQE2HSY7YY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 93AD72F867B
	for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 21:20:51 +0100 (CET)
Received: by mail-pf1-x43f.google.com with SMTP id e28sf6705667pfl.19
        for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 12:20:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610742050; cv=pass;
        d=google.com; s=arc-20160816;
        b=pIIL5QZO/fV+o1cWqrC7Cp9yKJM5pwvDGDhTqErDC6hFI9/nME/pXDhMeuQmTW1BcL
         ugo39KT/GQ0LSvK2FItSqNjQNS+ydIRlLeaB7mPhe0xYdfUOGchiPU74JygfhqI0hfGP
         eyaqenOIlaIObjBRAvAUGNBdqpbhvBGqKHdexqIzvF3UrT1qdBM5gMKX1lEntni0kUEA
         DAjYvCwqCXiU4dZrYLe3apq/h8fiboGMQAupL5aUIPD+GXySg7Z+Mp0hj0mfJOwkXH1d
         Eqmrepv27Nz5nQB442P9sXV4nJbXBDWT0MfiI+o7P1WhrIbHyU0pvt2zXd1HQkI1SdVV
         MiPA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=W6PhhDmkmgy+DtPLBEFvJeDx9IwhuqfGJyEwHdkg/QU=;
        b=H13WlXyDavvkqNp/5TuB1QPSGn3/kdnhaotdbgMB1kSn4iIzfuqksnE78LukD3KZCC
         pvaC6XotkuJNh6difpNzHqrzokmhoUFTnnOAs+KinB6/bxRQuaO+syZCtnDV2iPfsecH
         U4ew6+3aXNluPuIq77SK5i9yc6CmjnWBoMCqxUXMdzNiUiELnoIB4tVcWI6pkl5cKTNg
         957AaxXQXyGTfZaiUNAHhiTwOwxa6bGNA0GNei4HDWnff2MStqHXmz25XDgpv5UFqU5o
         2y5X9Ri8Uw8HVurn9iuJ3zzC7tXh38GM2++B4nG0rHtQp1K6AtIKPUTjdYeCP9B/0C8H
         Fb4w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=XHitNSqG;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=W6PhhDmkmgy+DtPLBEFvJeDx9IwhuqfGJyEwHdkg/QU=;
        b=SDDtI4RMbnF1BpsdRIKatH1kPgxJjRUdTtDy9TAYhX/cTTeYQkin4vyFnxmTdTra/x
         9pqf9FZbX91GYSBg3nChlfu2GLGZmI5mbLOd89qLsOvvF7EQMSqm2IydXSwvVmEutgmX
         CIUJBKaJsE52YEu5deJui4r0T3KhqWIm0VBBrtT5wcmGJrx1TX23aasXD2QM0a2VgCpu
         IHxnrERLTiZLGC1ar4CSfFVfJtZx72vMnisIi3T3VdX43Z49+rWqbUz7e+W9js/dKJIc
         bdViP6iMBmn4H0J662qAaXv5rkxAZ6xJ6MX2RrD+cWArabt7YhhZxwf6/gPeXXBhkcMF
         SEHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=W6PhhDmkmgy+DtPLBEFvJeDx9IwhuqfGJyEwHdkg/QU=;
        b=jCSIpfOxGcR/iLQxJS1lmN/9Trvv6sQj4AemaDKyu1syhL18dRM0IInyeJlO8ISVvi
         ba5t8mf9IfPHzyexd17/MCm9lFEgUUGumKhn6x6YixVzDi2jCxdtSSzGinRAOGftIHOR
         xjI4q+/F+LZFebyEYkbQdyqnEuY+VEsUK4focH3VzoJOqtgKwIhov79FGLwfWkNao8Kj
         C1AkvCdgofG7Cw4zWlizj4LAATgXcOIXG6sDczK8PEAZlYTRGnsG67liu96eW8Jph+C1
         UDuWqe9NgGTjtlfmh4gqqyBbSIY752pJFioVIOPNJHrQgy7gc/HaPghucAspyX9IGAtl
         bDKw==
X-Gm-Message-State: AOAM533fdZbHLlgSDS95DLeBXK7OpidwHQPODXt2DJBq4THYXMgr1Q0i
	k7jIf+OkVEUQOUq04qEvQFM=
X-Google-Smtp-Source: ABdhPJzk8DeqCj5JwUmtVgxPThua9KALe2Bte0m0bVDSfLVShPyhvLWcs0ENGKXRIqNQn1zA8/7BBA==
X-Received: by 2002:aa7:8d86:0:b029:19e:cb57:2849 with SMTP id i6-20020aa78d860000b029019ecb572849mr14601025pfr.54.1610742050331;
        Fri, 15 Jan 2021 12:20:50 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:7409:: with SMTP id a9ls5167063pjg.2.canary-gmail;
 Fri, 15 Jan 2021 12:20:49 -0800 (PST)
X-Received: by 2002:a17:902:850c:b029:da:e4a6:3641 with SMTP id bj12-20020a170902850cb02900dae4a63641mr14123839plb.57.1610742049704;
        Fri, 15 Jan 2021 12:20:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610742049; cv=none;
        d=google.com; s=arc-20160816;
        b=j34mP7AhXjgXU5N3kRVnG3+p/VwTfCu+8koD8uppZnsrXYBvJCotImkHGrI7UsdML8
         /XVCBzOpXbOkQrHvGoWpFtTYhz1GNWe18DXibDpIQxR0lOB+qKef2jhq3+wBFFzx/PlW
         JRypeHRLBezWDDse+WeYZplRaVoTShJM0qpMFiXeWYtFLN/J0Zm9WRIEQUu7sbFSUMde
         m2TI3JWDTMnjqnkGAYOcqgRqOMcwlecYidTLlBxC+9IO9favPIOOzjSdqFrfihlVFqwU
         evG4AIatVFUoZHks+EGo22v6ffS4PM+tfs42zCqES/zGRBEAH9kqyq3v/W1wbpktBeTA
         vdUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=5FQr0UCI/MaWdaqFfV2TlbW914Ru2H540vOm4R4tCNg=;
        b=ymt9cphf1xuB2hJq/pmCO5Wx5h9bdPubSekEDcPu1sDT9ymhmN9WIm9kCaJrbQ32Zs
         bqjbF/wReicsnW5vNL1Ez0nDY0EtW55jIqEIRqZU3m+egNY1HEoWuNkxileBIkgGRnjq
         U5teJKNOBD0fSNDkEZjykklsfpA22Qif4VgJ6QSKIDt7H9dPz35ktJr3GudTWfMUtyp1
         ZKCasXZsniKimC04QuZq2Bf257KezMOEjTz4SMMx8Lsjc53BFc0pV7WYATOuZkzyUBz+
         e9J9AVRfzIF3lvSa6O5icaY3mEctu3lTCPCrEvgrubVSS54sJ7ZxJeDkNcaABRkuhN4h
         IWMQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=XHitNSqG;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x102a.google.com (mail-pj1-x102a.google.com. [2607:f8b0:4864:20::102a])
        by gmr-mx.google.com with ESMTPS id m13si804630pjg.3.2021.01.15.12.20.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Jan 2021 12:20:49 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102a as permitted sender) client-ip=2607:f8b0:4864:20::102a;
Received: by mail-pj1-x102a.google.com with SMTP id ce17so3542218pjb.5
        for <clang-built-linux@googlegroups.com>; Fri, 15 Jan 2021 12:20:49 -0800 (PST)
X-Received: by 2002:a17:902:ed14:b029:da:9da4:3091 with SMTP id
 b20-20020a170902ed14b02900da9da43091mr14215466pld.29.1610742049240; Fri, 15
 Jan 2021 12:20:49 -0800 (PST)
MIME-Version: 1.0
References: <20210115191330.2319352-1-anders.roxell@linaro.org>
 <20210115192803.GA3828660@ubuntu-m3-large-x86> <CADYN=9Kt597LsfW=Aq6v+kWr+ja+55_+Z3s5mFaJULa+9J4EfA@mail.gmail.com>
 <20210115201342.76nssqtbs4kttgts@google.com>
In-Reply-To: <20210115201342.76nssqtbs4kttgts@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 15 Jan 2021 12:20:38 -0800
Message-ID: <CAKwvOdnzxsuSb3LPkuLYMfH0jeh65dFt8BsHPa8wM+6e69Rc_w@mail.gmail.com>
Subject: Re: [PATCH] mips: vdso: fix DWARF2 warning
To: Fangrui Song <maskray@google.com>
Cc: Anders Roxell <anders.roxell@linaro.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>, linux-mips@vger.kernel.org, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, "# 3.4.x" <stable@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=XHitNSqG;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102a
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

On Fri, Jan 15, 2021 at 12:13 PM Fangrui Song <maskray@google.com> wrote:
>
> http://lore.kernel.org/r/20201202010850.jibrjpyu6xgkff5p@google.com
> Personally I'd drop DWARF v2 as an option.

WIP :P

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnzxsuSb3LPkuLYMfH0jeh65dFt8BsHPa8wM%2B6e69Rc_w%40mail.gmail.com.
