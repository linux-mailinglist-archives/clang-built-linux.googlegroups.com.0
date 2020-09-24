Return-Path: <clang-built-linux+bncBDYJPJO25UGBBQ7FWP5QKGQEEW5K36I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3d.google.com (mail-yb1-xb3d.google.com [IPv6:2607:f8b0:4864:20::b3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F2BF277932
	for <lists+clang-built-linux@lfdr.de>; Thu, 24 Sep 2020 21:25:56 +0200 (CEST)
Received: by mail-yb1-xb3d.google.com with SMTP id r8sf226379yba.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 24 Sep 2020 12:25:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600975555; cv=pass;
        d=google.com; s=arc-20160816;
        b=06WENuDF1aoaLA/sAAcR9N/YLp7aOWkoeFUgARn71fia4d4aK04w0fZs5B6AqL4g35
         +5PoJTiJ90a8SZtZ0DQp6oIa0fo3c5BE/dMhw1dxhIzHFZWJzNV9WIwZdDV41ewEPZEJ
         VdfQ8cYtb/kHq1kGqqQ39LoyDrrWvPGs3grCaEcrToJ8aokHAWWRB47ZG8n0IAGjoDBH
         ApkDMYNH3/k0vrKT8eCJ3lZ59qUeKfvHg1qhEfVD7pIrCpjUjTxf4Z1bLXi+qvi6E4np
         l7JCz9Bh4HrQleTtObZb5OlUj3xSV8vSdaYGWAFkzjLW9Avl5cjRwydeVb4oEsAct0h9
         91Zg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=aFlKT/56yE8aFEA+W79tSPfkNT5NWui/Si1jbF/ocmI=;
        b=kEw7cxBLxCHwI6j/dSvaAwY8derwqejER+d8Rspql9hnPf2n5+O+4eg9it9uiR+G2m
         Vk7iqoSQ39O3UHLl+Nw0iAhE3FQ6aQgxqylnYtHYR1V6FZwtE6IqfNRYF5Y3wQkg5wnZ
         L0KVMp75T2bkx7ziE86vi7Hx0Y/9hhpa47ewp/kYdZnwT2RCThp1x8/qGlJggcLdbqpx
         K4gHHZE0dXJrdyXqayMkzDMG225UT9mdXUJOnFhoZXEDkARvfRwNs77a1dy+mPw6PFiz
         2v6pC0VHJLGoGcwta1fcU/mmdNFrcla1A3amEsyo5nEz1S4p2hrsAmzE1KR9M++Hrewy
         k5+Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=FEH3Yhag;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aFlKT/56yE8aFEA+W79tSPfkNT5NWui/Si1jbF/ocmI=;
        b=B0ID2KzebIrx+ZQD9iFycGLdXDFhKUUNon8b0wTdCJcJ0JDvM5zsTCXCgwL7qwuyFF
         PwhrHePUl9CGiZkjWh6lJN2zC+Whc31HkwNDCAEQn/2RiRgTpDn6q9j2UDxvltuk2qFh
         r3dNKJIxYJgAE8hu+nrQAwMBq3fRnfu74FodCOxBMXgIOx2EjiR+iQDgC4ZTQ04+CEEd
         hTpfVyLKvUPT6ANmzH97/vySNn+LAGo7w57BxJA+2I88/d5GxZ1mACWR8daaxPV5b3yl
         z4i1e+NpoumFv9hjBrKqykN+LIFL1HOUxwax75oM4khBrTJOfen2wrPeiAyUcKvUgG2v
         yyLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aFlKT/56yE8aFEA+W79tSPfkNT5NWui/Si1jbF/ocmI=;
        b=RqHccESE1QuDaBBMwlygDI55bMYJAc85UBCohCme7AO9GskXkT3QgVG1VIe1ioz7WP
         Db5ZXA1KiO4LcMIcG975HcXZSk8wa1EEN35Bh4sjv72jlPiB2NZzaUyR2H2nJXbHBX7O
         Mo1lTlI/l4dVyCrbPdI+mlH/7KtjOHkJXh0KXJZB+wyvK6jW31ForUz4VqzgmlA5g0AC
         SipHNB8aI9a6hPNaU9MvTtqp5bBHGajNsU44TRV1O5cqPd+S2drUvwqc0Dhn7nAxGy1D
         We28T0CvOH+v78fAmES01LXw1W461korDyXl7xCFarb2WRfEQF4CuIz6BuGbDrZQE/Gw
         eDMw==
X-Gm-Message-State: AOAM53171BhPeLNWnEGjdUoo71iA3aEPyU3XYzrAoCrZ5XcWKvJLDrB7
	QbWGYv3uwEYIZpyMlYukK9c=
X-Google-Smtp-Source: ABdhPJwSqXnpMam5E/f76DiwgAfgS/i6LabSpnc+TrO+CZuuPgQ9ABgJ0tgudkcMFzOiVEZ9pwEbrQ==
X-Received: by 2002:a25:dc8f:: with SMTP id y137mr469398ybe.186.1600975555354;
        Thu, 24 Sep 2020 12:25:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:5755:: with SMTP id l82ls141781ybb.5.gmail; Thu, 24 Sep
 2020 12:25:54 -0700 (PDT)
X-Received: by 2002:a05:6902:601:: with SMTP id d1mr520165ybt.172.1600975554887;
        Thu, 24 Sep 2020 12:25:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600975554; cv=none;
        d=google.com; s=arc-20160816;
        b=QxSTMXbm4rhoPS7tESR90vyQoB3W1mkzxJAk8xrpyK8vSEffTa2sbyP4ThkRZtEI+d
         8T1s4RH7Hstw6VvQJxnvpcrZ7LDJwwjrYuF0atjasdn/biX0GRvYGq+im48bxzfMKeHE
         ZtUNztMH4WeOTy75yv5jshlxV3/AVONa63NMTBPgQ3FqhFTIvnGJm/fLjErCt4m326/H
         GZaykLf47vvrB6N8iHaZ6OsDFViPQKHC+1FmPuJb5EgvcGzXm7+Yj2yfiug1O9kga8fw
         Z46nVN7TJVs9fHIBBN6wIZHcL7MsxUhtwG909WtZeHDvnQ4BLUqii0ckBkHtd4p+8NCR
         5ifA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=QSlhLnm0zMn3gq2NbsABMk1cUaubY+WdcP2vklfqpto=;
        b=Cz1TW3Blvrthf7f/X4GxThndBK3YIYnqOXz/8+ORtmdhJwR4IltT6Qnuz12Uv9/Nhx
         5QSC4uBbjU0bdcQkkX+f1PDHHMzhIkcR5hJdu0jjLKiZ5tOueBQH0m6NncC1alFctzGm
         7DUG9p/ThksVX95QGnsi6X79D4dSAMaEJ3kt/4npJDvgxfruL1PuEbKqW4c7IPeChcFY
         hLiP2mI9vJndBDL4r4tiJvXlfbvOObJNBkl1f5buidFDySLQa7rWq03CORNnZXBhibyb
         C7duQVOjeAqLESAFUS7ewbEG4HEjiZd4hwrut2vSU0uAA/FhA8lZUeA6jGRyUodoD9dK
         8yng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=FEH3Yhag;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id l203si31688ybf.0.2020.09.24.12.25.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Sep 2020 12:25:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id k133so268008pgc.7
        for <clang-built-linux@googlegroups.com>; Thu, 24 Sep 2020 12:25:54 -0700 (PDT)
X-Received: by 2002:a17:902:ed11:b029:d1:f385:f4e7 with SMTP id
 b17-20020a170902ed11b02900d1f385f4e7mr669762pld.56.1600975553845; Thu, 24 Sep
 2020 12:25:53 -0700 (PDT)
MIME-Version: 1.0
References: <107c1572-ffc5-8797-6ae3-10fbe4e91eee@collabora.com>
 <CAKwvOdkHiRAxCrrqRTq=k09zW-X9cHogyq+7fTuM_aJyntXs4Q@mail.gmail.com>
 <200d3c91-9906-01d6-2642-718fbd356d76@collabora.com> <CAKwvOdmAev4-AP3g0cgZ8rV+iR4ACuy1ZQ_XoD09c1d2GF1S7Q@mail.gmail.com>
 <20200924110402.GB4754@sirena.org.uk>
In-Reply-To: <20200924110402.GB4754@sirena.org.uk>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 24 Sep 2020 12:25:42 -0700
Message-ID: <CAKwvOdmEf7jM7QWZcPxy761CGsO24sEDY9OWJJcZKsc6jFy9xA@mail.gmail.com>
Subject: Re: kernelci.org update - 2020-09-23
To: Mark Brown <broonie@kernel.org>
Cc: kernelci@groups.io, Guillaume Tucker <guillaume.tucker@collabora.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Todd Kjos <tkjos@google.com>, 
	android-llvm <android-llvm@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=FEH3Yhag;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541
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

On Thu, Sep 24, 2020 at 4:05 AM Mark Brown <broonie@kernel.org> wrote:
>
> On Wed, Sep 23, 2020 at 03:06:52PM -0700, Nick Desaulniers via groups.io wrote:
> > On Wed, Sep 23, 2020 at 2:26 PM Guillaume Tucker
>
> > > > android-mainline
> > > > android12-5.4
> > > > android-4.19-stable
>
> > > > are the 3 newest branches that I know of.
>
> > > And which LLVM/Clang versions should be used to build those?
>
> > Will likely be clang-12 (or possibly clang-13).  Those branches are
> > basically the kernel branches for "S" which will be released next
> > year.  So they are building with a pre-clang-11 right now, but we're
> > about to upgrade them to something closer to ToT soon.  Once the "S"
> > release of Android is closer, then we will lock down the toolchain
> > used for these kernels, but it's sure to change between now and then.
>
> The thought was that it might be worth using the actual Android
> toolchains (including all the out of tree patches and whatnot) with
> these branches as well as upstream clang.

That's...a brilliant idea, and would be much closer to what's being
used in production.

While Android ships its own distribution of LLVM; this is because
upstream LLVM's release process is simultaneously too slow for Android
(we need fixes and features faster) and would be too late for finding
compiler regressions (that's pretty much all we do, is fight
regressions).  While there's potential there to try to ship secret
sauce, I *wish* we had the headcount to even consider that; our
distribution will carry cherry picks of reverts or backports of fixes
so that we minimize the number of known issues with the release.  We
run at a manpower deficit, so we don't have the ability to even
develop any kind of secret sauce.

Would a Docker image containing AOSP LLVM probably be the easiest to
integrate?  If so, I can look at providing such an image.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmEf7jM7QWZcPxy761CGsO24sEDY9OWJJcZKsc6jFy9xA%40mail.gmail.com.
