Return-Path: <clang-built-linux+bncBDYJPJO25UGBB6ON737QKGQETIS6LRQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x640.google.com (mail-pl1-x640.google.com [IPv6:2607:f8b0:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id E69302F5723
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 03:05:47 +0100 (CET)
Received: by mail-pl1-x640.google.com with SMTP id 32sf2346672plf.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 13 Jan 2021 18:05:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610589946; cv=pass;
        d=google.com; s=arc-20160816;
        b=in+briODtMTyuRxMhhKy3tBW+jVBSIpg+fNdLI3Fbj5aDGoOFMtJ4YlUvbsY9fY7Vp
         F8PwpKfILNrbFCKaJq1SQJT9LVPKWTiPU397HQCPcQ8DJmmovA53PYN1EZ7+zTYb+BF/
         I24pkgj6yRLpeNt9SuXN2lwtxuNdeLqbi5TsyfDsN3KMndVOHNDJKKuqAJ6hkhknwVyl
         /vQpyZbljdJXfIdnZKA4dq+0KlGM9vbHZuMZWqkvQf22DWaSenHK+xyFqIBhdxBA2TeD
         AvYvaRQ5fu1zTp/7YXtmmUzRLPorFFsd3eSGjtkIcPrsEvCnXLyNeeVxVEyuXNyHoIrl
         QeyQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=00Mpa3luQI+1KynJJeLONPmlEiUXWNJNJYkKMXflvlQ=;
        b=bCxUzYrww6nxHb2ggoahZVuR3nL+aRo5h73u2GzixcWDKnTCwkhIuSe9/znWo3dSSF
         Hi6jxcyYE1NKWYmToQJywO2HVadcxn+xAP5spIzseX9PDka3LMirETD0POFYTED9ePcK
         zC1HZxFiwAe+dxH4ifZU0IyIy9qE/to4gf3hPdoPj6LeNvxCHT5BVdGBitpg3ryYwhD5
         oByELpjiYJIOmHh4JC+DL541ByMxzbEsGx6rmUJw1B7sRNLvG9+xykrEgC3Srn544+5s
         t/G2AtY2RH4pWFc34lmsyrv0EsY1b6EX4vPM9ovEqP8dmBGSBf7Ru1xSXaFqDUMnLhjb
         c9jg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=UpT9ATiP;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=00Mpa3luQI+1KynJJeLONPmlEiUXWNJNJYkKMXflvlQ=;
        b=FbV0A4oXl2D3dHKM3eaK9ku7auS9YUX0nTWwTw9cG6SnRG/sD/2eI2yMo+VSFzf9eY
         7KSH91F1YF0SwMfodpcrKIUEdX6ku/OfMDWJasm1h+FDM0dgDjsrmCCafVuv0/6f4KNW
         edJhTaWf8p+3KHlESiXkveJv3rrjZYn57wTgvg49CXBs8qWYz0+Dy5uBPu861xWTpJRA
         Lyy2mBW2COE+B1gn3F5aYO1W48MK5ckaXjm8iKAPmtfe2ETtLZM+URmaOJZuPNdqoXlC
         +z4xiuan2Ggo81ex4nRlyYX5bFm9RV2WBItG9OoiC68J7OMWUYvQ2qpDmlGDE9PCe88P
         vmFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=00Mpa3luQI+1KynJJeLONPmlEiUXWNJNJYkKMXflvlQ=;
        b=nrT9QJe8byySkghGgSEIDFferS7Vb0y/omtEGEzdMI+X7KdxSstEMho7T1oX0EmeU2
         XPz8z0xSSBnj1lESn3sRaHFGZloall4NFYNV/KEmtoW0hsOMWBFxXRyCfsIMCSib4llS
         K7pBkdOrIjw7q7iG7kRyu1bbj7UEumZxPf+9vBQzdONn2AoohI6VTcoriUowGGebPoCw
         muKsIdvThOlVY1m93YPGXGGkXGJUg4FVTJdbJgB77TJzuyPRTDg5etFYkzl1JR5ZemdU
         bThJu0ARqb14EYSlsIJN3qQX/DqTkBeXvS4YdSiAmBFxllAjxm9ZV8ZUz74yBOLseovN
         t1IQ==
X-Gm-Message-State: AOAM532Oe0SaywBxTHfRvSiHXnXCtuNrbCwT8LSINkij6u+lB8c8GBox
	+FR/0q2irDUvEDG2XGNKd1M=
X-Google-Smtp-Source: ABdhPJwJPwNaJN5xLmzgKSTt50FqQpzN8J4CKnLquHGRXx8ogCM1xfBnr/ICaDxqxF9Bl918x57KRQ==
X-Received: by 2002:a17:902:bf4a:b029:da:d0b8:6489 with SMTP id u10-20020a170902bf4ab02900dad0b86489mr5226971pls.58.1610589945801;
        Wed, 13 Jan 2021 18:05:45 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7c01:: with SMTP id x1ls1362164pll.10.gmail; Wed, 13
 Jan 2021 18:05:45 -0800 (PST)
X-Received: by 2002:a17:90a:cb8d:: with SMTP id a13mr2371500pju.155.1610589945167;
        Wed, 13 Jan 2021 18:05:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610589945; cv=none;
        d=google.com; s=arc-20160816;
        b=XskrmgQPql+wohAsvAT1uIYKruD/mFGwf+JTGz98kuicIdm68HiaFTx5mczh5bnpVk
         HS7bzxN6ZpGU0kvsuj4hfo0BTE6CWsKK3qTxVCHAcMkMUmGCcB8HRfIc8L8P+a701CDq
         YB0bjita/QTqA30VZRA0ZQ4PAzps11GDQYTiZeqkryH7iu9cWagNjA2hAxI+4QpxcKml
         8IGn4MM/sF1T9YSz3tmy//pIJ3GM6qdvib3bZ+xli0Vh7SI9qO4bd3x/UhsfYU63yio6
         TBVh5UD+pil/im+IN6e5zlEr4X6qTURQrIOtaFV6YZF2+Cxti5l/EmsEv3XuzMtoMgCw
         /hzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=2y4dk7RPy1+H0zBuDXTEaauzgo/RetPwOeAaLDfjsos=;
        b=ea8vxU+BVfHQg6EWOVQVaoAU3ZC9pJTjlwGdToM81jn58l9o9Hspeep97gwvfGsGaA
         yTBp2eehGCS6IjdV6Vw7+Y4rIfveGhUXuX7W+LL4ni74bQ6j4YlHjZ7wW5j0X39VRirh
         in8PWVy6jmo862TXFao4yqrL0763FWmRN7IMCUvHeoLORnbKlq5h00jxez0qArnEQ3XU
         u/28ingUDQ+GUvAJgpodP2xhkjyCc5g8B02e5KrCa2pcNhkU/AAhTZhmesgHKhPV4UtJ
         jllC4Za5RHMoLsksuTvV38GcqwYRnPv5G/eCeyC8K1R3h7de6XkDLtFDd3RAqO8EGs48
         airA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=UpT9ATiP;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com. [2607:f8b0:4864:20::62b])
        by gmr-mx.google.com with ESMTPS id nl3si387670pjb.0.2021.01.13.18.05.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Jan 2021 18:05:45 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62b as permitted sender) client-ip=2607:f8b0:4864:20::62b;
Received: by mail-pl1-x62b.google.com with SMTP id v3so2116084plz.13
        for <clang-built-linux@googlegroups.com>; Wed, 13 Jan 2021 18:05:45 -0800 (PST)
X-Received: by 2002:a17:90a:9915:: with SMTP id b21mr2352305pjp.101.1610589944646;
 Wed, 13 Jan 2021 18:05:44 -0800 (PST)
MIME-Version: 1.0
References: <20210114003447.7363-1-natechancellor@gmail.com> <CAKwvOdnJ0VUjTX-cyLgtHvy68DHG1VMj7s0huk_FKh1E9pH9Cg@mail.gmail.com>
In-Reply-To: <CAKwvOdnJ0VUjTX-cyLgtHvy68DHG1VMj7s0huk_FKh1E9pH9Cg@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 13 Jan 2021 18:05:32 -0800
Message-ID: <CAKwvOdmr7RttdM25wWKiV8t+tzn8W-C_U6avwrQXQWphT8XhXQ@mail.gmail.com>
Subject: Re: [PATCH] Documentation/llvm: Add a section about supported architectures
To: Nathan Chancellor <natechancellor@gmail.com>, Jonathan Corbet <corbet@lwn.net>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Michal Marek <michal.lkml@markovi.net>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Linux Doc Mailing List <linux-doc@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	Miguel Ojeda <ojeda@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=UpT9ATiP;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62b
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

On Wed, Jan 13, 2021 at 5:19 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> Patch looks fine, but `make -j htmldocs` seems to be taking forever
> for me so I can't render it. Is this a known issue?
>
> $ make -j htmldocs

Just took a while, lots of warning spew (but not from this addition AFAICT).
Reviewed-by: Nick Desaulniers <ndesaulnier@google.com>

>
> On Wed, Jan 13, 2021 at 4:35 PM Nathan Chancellor
> <natechancellor@gmail.com> wrote:
> >
> > The most common question around building the Linux kernel with clang is
> > "does it work?" and the answer has always been "it depends on your
> > architecture, configuration, and LLVM version" with no hard answers for
> > users wanting to experiment. LLVM support has significantly improved
> > over the past couple of years, resulting in more architectures and
> > configurations supported, and continuous integration has made it easier
> > to see what works and what does not.
> >
> > Add a section that goes over what architectures are supported in the
> > current kernel version, how they should be built (with just clang or the
> > LLVM utilities as well), and the level of support they receive. This
> > will make it easier for people to try out building their kernel with
> > LLVM and reporting issues that come about from it.
> >
> > Suggested-by: Miguel Ojeda <ojeda@kernel.org>
> > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> > ---
> >  Documentation/kbuild/llvm.rst | 44 +++++++++++++++++++++++++++++++++++
> >  1 file changed, 44 insertions(+)
> >
> > diff --git a/Documentation/kbuild/llvm.rst b/Documentation/kbuild/llvm.rst
> > index 21c847890d03..b18401d2ba82 100644
> > --- a/Documentation/kbuild/llvm.rst
> > +++ b/Documentation/kbuild/llvm.rst
> > @@ -63,6 +63,50 @@ They can be enabled individually. The full list of the parameters: ::
> >  Currently, the integrated assembler is disabled by default. You can pass
> >  ``LLVM_IAS=1`` to enable it.
> >
> > +Supported Architectures
> > +-----------------------
> > +
> > +LLVM does not target all of the architectures that Linux supports and
> > +just because a target is supported in LLVM does not mean that the kernel
> > +will build or work without any issues. Below is a general summary of
> > +architectures that currently work with ``CC=clang`` or ``LLVM=1``. Level
> > +of support corresponds to "S" values in the MAINTAINERS files. If an
> > +architecture is not present, it either means that LLVM does not target
> > +it or there are known issues. Using the latest stable version of LLVM or
> > +even the development tree will generally yield the best results.
> > +An architecture's ``defconfig`` is generally expected to work well,
> > +certain configurations may have problems that have not been uncovered
> > +yet. Bug reports are always welcome at the issue tracker below!
> > +
> > +.. list-table::
> > +   :widths: 10 10 10
> > +   :header-rows: 1
> > +
> > +   * - Architecture
> > +     - Level of support
> > +     - ``make`` command
> > +   * - arm
> > +     - Supported
> > +     - ``LLVM=1``
> > +   * - arm64
> > +     - Supported
> > +     - ``LLVM=1``
> > +   * - mips
> > +     - Maintained
> > +     - ``CC=clang``
> > +   * - powerpc
> > +     - Maintained
> > +     - ``CC=clang``
> > +   * - riscv
> > +     - Maintained
> > +     - ``CC=clang``
> > +   * - s390
> > +     - Maintained
> > +     - ``CC=clang``
> > +   * - x86
> > +     - Supported
> > +     - ``LLVM=1``
> > +
> >  Getting Help
> >  ------------
> >
> >
> > base-commit: 7c53f6b671f4aba70ff15e1b05148b10d58c2837
> > --
> > 2.30.0
> >
>
>
> --
> Thanks,
> ~Nick Desaulniers



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmr7RttdM25wWKiV8t%2Btzn8W-C_U6avwrQXQWphT8XhXQ%40mail.gmail.com.
