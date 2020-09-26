Return-Path: <clang-built-linux+bncBDT2NE7U5UFRB5ETXP5QKGQE2YY4LNI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3d.google.com (mail-yb1-xb3d.google.com [IPv6:2607:f8b0:4864:20::b3d])
	by mail.lfdr.de (Postfix) with ESMTPS id EEE06279709
	for <lists+clang-built-linux@lfdr.de>; Sat, 26 Sep 2020 06:56:21 +0200 (CEST)
Received: by mail-yb1-xb3d.google.com with SMTP id 139sf4635195ybe.15
        for <lists+clang-built-linux@lfdr.de>; Fri, 25 Sep 2020 21:56:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601096180; cv=pass;
        d=google.com; s=arc-20160816;
        b=hpbdrjt/ECIC5KxqqEC+crlf2QYNvV/s8Kj+7yU3j46dHo1Rha93/4zfPGOhzAt7BQ
         cHo6W5olus2Ej9zgs+uxU6XGlI8e8dLKK8WDq2eNhCVKfQA0UQIkN3OM/TIFPj5no0YH
         FUe348HtYQM4Fq34g/77FUB7Vc4SpVMseJeRjvU2Ou9K+xhJhwMAPPEOpTo9A1MRJX1Y
         +LOj5XancazQm9RI1C5LwLrstBKsrgS8ZP94MetGn5YJ6AHhYiFVMbembt8SrkS4MxGu
         fYPcovrf9L3NcLI5THI8RRM3J2NSX1UVkWAEFqflm+nrzdI7CM3cbBLCv7caJosBt1+i
         radQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=4P6T1G/SoW9kHVcZDBWYiCvWFEFZ3tMdY/RRg+3F5wE=;
        b=Z1ivXu+bXTW6o3rRgfF63TGHejQOi7xSD6CXvbYFwYu/x4Agbv5+H6FKV0HKD3KQ+h
         NicjYyCBvL+PYKVXCwXWC+TNhl7LwSyxTYWMFitoZpVa7UdosC0jHz0edZ1SsWHkYU9N
         590pUTxGb5S0aFm4GAPw8EdCeFu87CCNHC5l0SW+TXuCGp+5FE46TIWDXhzibZiF1+C7
         lKGW9lVLc9jA35ZjciZb/fY0rkgjgehAljxC8K9mvnjxBPOKLhmtodXwyY8EEhTe9J1n
         vPzQ92NQgxDdj+yaTSwrq1Ra1NXw3L0M3SKRX3qo5O51C4nu2LJmTTcYmPMw+DYWYbWa
         8CbQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=qRK49o3Y;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4P6T1G/SoW9kHVcZDBWYiCvWFEFZ3tMdY/RRg+3F5wE=;
        b=DRtTmnsjRghB4Rd022rDNjMIfjQvlZ3V2pZsUId14WgebxUv4dUGHibvQHC6zYkVUS
         uIR/7esQMTyxIdyrfkT4P2Qg2ExZAL6A4HpupNTXqEwhDkp1EDthvEjymRvTCWeJr9Et
         48sEdW1tMQ1IZWOniPYhCu7zRegkuudKF8QzPeJo/lse1foL1WkxKvBeKlwjZ+9SXIyZ
         1l2xyv+tOxp/5QLwy7+ue/KlE0FoOCXQ68PfN+JjmEQ6fvwQkwC9Taavlyr7B1a71WFu
         ZNvoyX6D7kM5/DAEp2kEl4qbItzGWgqDIfoPdzPLVbQ9VdQlfWVBFq+fDvm5RRCmQEoM
         HjrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4P6T1G/SoW9kHVcZDBWYiCvWFEFZ3tMdY/RRg+3F5wE=;
        b=cObbqKkJKLZZMkfi1Q5eL9pcHUIexZ2Lv9JhcwEevZqbhx4ksp6Mfz1K1Ce/dBz6j0
         uNzZ9FyDVdmepNGngV7jDjy7JKT2Vx3eqQDdNcgsiWNZ5hN48qgVgWKlDFlfRjw81+2X
         ZDY02Se/eyX5csZhaEqkN6VMW3myG9gHxss3KPQFhemtsH+JnvtEq2qvgMAC6IrgH8X1
         C1+z66xD2s9OuieByIStIS0NUtC9Mi7eTsaHNqsFjbLxCpEEcVZwj/Qc+1oQRGDPte2s
         Dqi6YKOT13iAuesrQiLWMiJB5xdz+Hjaeys8ELIPm/WYuMWvB2oJdcOod3uQ737bffdZ
         v4tA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530iIzpj+9WWLSRhLR7rYO7hWam/Vp56HJ17BjCj7GNlf7bp1QO5
	B6Yk2KpQ4Yrn1ET8z72fJdA=
X-Google-Smtp-Source: ABdhPJypFnD6MQrJBcGtyRMR3k9U94JIMt2yrBKd4SOj3AKDD/2GJMAHomWWCzY7dTqzxmS+JvD9Uw==
X-Received: by 2002:a5b:302:: with SMTP id j2mr3797877ybp.50.1601096180711;
        Fri, 25 Sep 2020 21:56:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:6d05:: with SMTP id i5ls2138543ybc.1.gmail; Fri, 25 Sep
 2020 21:56:20 -0700 (PDT)
X-Received: by 2002:a5b:b07:: with SMTP id z7mr3370637ybp.318.1601096180113;
        Fri, 25 Sep 2020 21:56:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601096180; cv=none;
        d=google.com; s=arc-20160816;
        b=NEhMNAzGpWZ5wnSQeTQEMac1MWpHZrv/3UHuz2oDg9AzlPk+cdjvY84QmBribGowjA
         71sfx77+4ceOhB3vzPtZ4TQ9K3ZkekMzgFH1LRBX015aVWfEuYUnme8ZfcpOi9qCrxpA
         NCDXdUWRGBIU6K82qXxDVYWYmsDfx3RpUcclt4g+U9nXhSLu18Ei/fKJ6s+0ujW32hj5
         TRlVzm35s/HazO/k8eAPuMWDg+7tvoOjzIfnBksp40CloCDhNyUxLZTcWhSHFxJx611s
         0GjqpAVx26HZ5RIHBjXZC/iaFECi0stcYv1hWtG9wN8lcHfJH7NU7ETGvpencbaYU5IE
         JjNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=mNWazOotyps6++jrgsO3aX7y+I3OWZIx6nhtMCACIpA=;
        b=nCGI8oGXSLO8Wiv30VeXvI1QJObdv6LKDTm23n9Nbz5V+Rrr0Kyl50jlKrVIF3cRY+
         t2sW2e7UVB+f/FLzKNDy2zadjkZg7mIbWP2U/eHUMpZlaEfCCY/QJjQmcXPB4d9tNquV
         Rhpk3qQXxpnCiFGhK25wHTtJI3ZMEKVD7NdX6C9sRn2R9klrZXcLcEkiCfsEo9E6agRo
         91gFAumAmluqeVyhEt9bzA9bFXARNz+fJcgpBYbnJIxDzHwT9nU9EGXFZvySlomgaNkc
         99SnO187meHRD6IT0h8yduwQWjcSCu6BvqITD7/9Vs5riORkaQDUYICYUHiBxUzw2cLO
         2hXA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=qRK49o3Y;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-04.nifty.com (conssluserg-04.nifty.com. [210.131.2.83])
        by gmr-mx.google.com with ESMTPS id t12si400019ybp.2.2020.09.25.21.56.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 25 Sep 2020 21:56:20 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) client-ip=210.131.2.83;
Received: from mail-pg1-f182.google.com (mail-pg1-f182.google.com [209.85.215.182]) (authenticated)
	by conssluserg-04.nifty.com with ESMTP id 08Q4teAg009216
	for <clang-built-linux@googlegroups.com>; Sat, 26 Sep 2020 13:55:40 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-04.nifty.com 08Q4teAg009216
X-Nifty-SrcIP: [209.85.215.182]
Received: by mail-pg1-f182.google.com with SMTP id d13so4174534pgl.6
        for <clang-built-linux@googlegroups.com>; Fri, 25 Sep 2020 21:55:40 -0700 (PDT)
X-Received: by 2002:a63:1b44:: with SMTP id b4mr1631730pgm.175.1601096139727;
 Fri, 25 Sep 2020 21:55:39 -0700 (PDT)
MIME-Version: 1.0
References: <20200925152121.20527-1-f.fainelli@gmail.com> <CAKwvOdmxkwA7NPSj-bSarurjWc7Vs2vzuT3PnaCJhA00pRWyYA@mail.gmail.com>
In-Reply-To: <CAKwvOdmxkwA7NPSj-bSarurjWc7Vs2vzuT3PnaCJhA00pRWyYA@mail.gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Sat, 26 Sep 2020 13:55:02 +0900
X-Gmail-Original-Message-ID: <CAK7LNATcTZuPaw62jyPyomG675yzifZdogE-HVRPepQW9_fVjw@mail.gmail.com>
Message-ID: <CAK7LNATcTZuPaw62jyPyomG675yzifZdogE-HVRPepQW9_fVjw@mail.gmail.com>
Subject: Re: [PATCH] Documentation/llvm: Fix clang target examples
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Florian Fainelli <f.fainelli@gmail.com>,
        LKML <linux-kernel@vger.kernel.org>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Michal Marek <michal.lkml@markovi.net>,
        Jonathan Corbet <corbet@lwn.net>, Kees Cook <keescook@chromium.org>,
        Sedat Dilek <sedat.dilek@gmail.com>,
        "open list:CLANG/LLVM BUILD SUPPORT" <clang-built-linux@googlegroups.com>,
        "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=qRK49o3Y;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

On Sat, Sep 26, 2020 at 3:52 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Fri, Sep 25, 2020 at 8:21 AM Florian Fainelli <f.fainelli@gmail.com> wrote:
> >
> > clang --target=<triple> is how we can specify a particular toolchain
> > triple to be use, fix the two occurences in the documentation.
>
> Ah right, my mistake.  It's either double dash+equals, or single
> dash+space.  Thanks for the patch.  Masahiro, would you mind picking
> this up?


Sure.
Applied to linux-kbuild/fixes. Thanks.


> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
>
> >
> > Fixes: fcf1b6a35c16 ("Documentation/llvm: add documentation on building w/ Clang/LLVM")
> > Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
> > ---
> >  Documentation/kbuild/llvm.rst | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/Documentation/kbuild/llvm.rst b/Documentation/kbuild/llvm.rst
> > index 334df758dce3..dae90c21aed3 100644
> > --- a/Documentation/kbuild/llvm.rst
> > +++ b/Documentation/kbuild/llvm.rst
> > @@ -39,10 +39,10 @@ which can help simplify cross compiling. ::
> >         ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make CC=clang
> >
> >  ``CROSS_COMPILE`` is not used to prefix the Clang compiler binary, instead
> > -``CROSS_COMPILE`` is used to set a command line flag: ``--target <triple>``. For
> > +``CROSS_COMPILE`` is used to set a command line flag: ``--target=<triple>``. For
> >  example: ::
> >
> > -       clang --target aarch64-linux-gnu foo.c
> > +       clang --target=aarch64-linux-gnu foo.c
> >
> >  LLVM Utilities
> >  --------------
> > --
> > 2.25.1
> >
>
>
> --
> Thanks,
> ~Nick Desaulniers



-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNATcTZuPaw62jyPyomG675yzifZdogE-HVRPepQW9_fVjw%40mail.gmail.com.
