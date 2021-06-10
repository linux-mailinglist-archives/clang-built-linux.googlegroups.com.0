Return-Path: <clang-built-linux+bncBDYJPJO25UGBB3OERKDAMGQEU5ZKEGA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33f.google.com (mail-wm1-x33f.google.com [IPv6:2a00:1450:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 786223A37FD
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Jun 2021 01:38:22 +0200 (CEST)
Received: by mail-wm1-x33f.google.com with SMTP id 18-20020a05600c0252b029019a0ce35d36sf4707486wmj.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Jun 2021 16:38:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623368302; cv=pass;
        d=google.com; s=arc-20160816;
        b=SreQ/GiLHuxjXjjMZXhhPSoBobJvBi+M+aaxt8mCYcTBkab+/akhOQr6nVdX/gm4xQ
         VkW7tT6Rx5NXRjLKLBTCXRHAFMRTDpOUeTd+s58bJvS3UN3/Q4NlAQiXG4/vJan5A3cj
         OpG0C0vBRXaT+80oN8oDgPlZUWmGd01I4FhMuVRKFqE39oxT5ii1R9+2kI77LoVGfocs
         GOqJxCH3qB8guLS2M9LoXweXZ2kHeax/Rp+rC/b+iPiFJ08RnsO3TJXX9q8Xo1BL0F22
         TJC6OH5qtNJbvNyO8k/oP1NjVvurmHby7NXr5TQ5IM//k7aN65sHo4xJ4lwnU7qeRI4X
         i0KA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ffe5qylxfin/kzATUQoKlMG/5RKw4nc5rN4T4xCopb0=;
        b=doWlOpROGFCujPC9vyVS+PYDSCWNslKgu5TlIt+kWNC36WZ2q1AVLGeGXl/Np0hgVN
         /P004x0N+Utr7VeD/iEO3NsjCjPvtoLSiXwlo/bAYbX/zO4fmz26LI6iV7/3mv5RrvMu
         SSyWvvoFl/KHHYVQqKtLOlP/elFpFaXKeHDemnNZcOA5LjybFOvH/2TSsBx0ZUpKfK2D
         Pa5j0KSVoO0zk3DiTYno8NknBNr3LV9j56gzfuMw6Wj13KITesUPs56Xi5/TO7DAzZcG
         rlsDOwmi5jF4LH/6Y1iAsoIDI00Xap8cH+Kbk1P+IkKtZp1zlRj/slO9lYZiut16xrPE
         2FDQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=OIaXpzWF;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=ffe5qylxfin/kzATUQoKlMG/5RKw4nc5rN4T4xCopb0=;
        b=TSBLCyhOkv6aM6DvImQttvZGfCzdQHZIBsoCNtHDwJ8j83dSPe9tBWFD9brRSKHDnW
         hCnkKN4CviUlnEfn7+HasYgHgtu9jIa3Ypp/9eASVedoRlTO8xNokilOf1/Y25IqaB77
         A/pzPMO7/W12Lc5D2fz05R+bl/ZnZDBzudj6CcnR2ITIcPmUTcB0kds4r7tPrQR1blgV
         G+zikqCYn/GjwrLBR6XJkBXXhG0oBoc0LmowAlRoq0z8z/9x69aU/BruZThXNH5okssx
         xbHH2JRJ4u+B0QCN95aUjkSf+CLIWsSK2/yjiwvNXm7eC5FK4uCUb908ditKrkYI6Rs+
         r6/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ffe5qylxfin/kzATUQoKlMG/5RKw4nc5rN4T4xCopb0=;
        b=mYICFIjsdHEELReOGCQ5ftjq3ZFCB1lLgqQ2UmFI9G0Hl41CGST4Wh4ttu+HsYFHu/
         jsRZIL4pkr6d9/jNP376qgwtiIcdg/W6zVcc+u+sj4jzwUkNrplN/O26yJWDkVdzaYep
         CBLAkecOQyNYDBAC4d1xoRBXwBaxdZJI0kCpzhPvK+ntjwPwRE1tZWNlFizdqrVOJ/vy
         A3EmDys3q20fjKqR2u2n5GUpCRzeLFSbbNxi39sqI3it3qavjScwtYeuwSiLwBJneAHD
         6g7k4FiNeYPuPt0nBytskUCBr8jCJHSxVGVG0JrPnMg0EmBVVYW+VzuWCc8waR1Pvuut
         YWTQ==
X-Gm-Message-State: AOAM531v2gq4H65aUm0VbaebRoWREpyZ8OY0R19eUeCfATGHkEmuHxM0
	NLU+3nMu3qEevSiCaQl0df8=
X-Google-Smtp-Source: ABdhPJwQj93hR2MLTjBZp84lNlbb2vLHLpLP42FpynFSMR2rIO6gdYNFO0jRXM/bu+tSbHotABl9pw==
X-Received: by 2002:a5d:4a43:: with SMTP id v3mr780360wrs.397.1623368302162;
        Thu, 10 Jun 2021 16:38:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:19d3:: with SMTP id u19ls2538392wmq.3.canary-gmail;
 Thu, 10 Jun 2021 16:38:21 -0700 (PDT)
X-Received: by 2002:a05:600c:c9:: with SMTP id u9mr1095003wmm.156.1623368301307;
        Thu, 10 Jun 2021 16:38:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623368301; cv=none;
        d=google.com; s=arc-20160816;
        b=MfV1FblNAzYQBL53fEFHcRIabTygJHceZoBYpUu5UWzn5K7YLqvuQVEyNIWnqnnvm9
         QvKYPJpQp585Lj5L1Po/XqHiKSGFNlVypvGFyrta5U5r7F4qvaRA1edpjWsob6AxzYZq
         je85j9jTEAQ1nl+cGHWokHjQpFoIGmlFtyqfRZuPcQYGMV+luutfCX2fMv/3eo8ReuFd
         RyXtHdFvU0ASZfxuGUYx261sdJJepr+f6Z+8kv1Vfzci89Af6/cLUUvVxgruFQn04ISZ
         NYxI6kk3CZdaByrLFumETKGpPDk9BftTe7WJgYtzl1aOlkCv22KYijzeExMooQ3akm2V
         Q/Bw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=xsax6uyuivrP/SH1C9PUGgit6O6AKpg/yzQlxvUqHks=;
        b=JNnYkU7zrWH3uV60hRJcRv/oehzBVrzVwQCTpFExXnoB85tIi+rEuxYx+36YZkW+Gu
         zyZH9oBAr7h/TqmrNVclwYd1oSwlt9FX6CKgOjsUVoozIBHOLarnMssWXfat1CBvdUJ4
         wX1BEYsk9wXSY0Ou9/jCEIryYDgiCOwW3P86lLbrItY3np0qu3sdrbpXiTQebGJ3W0ja
         FcvmwIH7hYAqq1KA6yylJNKVn6m0AsgBxSqGiDJBduAC9z3bLegAYSV3jCMCO8nxhtJT
         FTd4pTPqq5TWTsxq1vt86AdSuccca3mc10JjjrmQXNy5IsutSVRqyWr8qqBUOJ1B9bw9
         eRHQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=OIaXpzWF;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com. [2a00:1450:4864:20::22a])
        by gmr-mx.google.com with ESMTPS id t1si157668wrn.4.2021.06.10.16.38.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Jun 2021 16:38:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22a as permitted sender) client-ip=2a00:1450:4864:20::22a;
Received: by mail-lj1-x22a.google.com with SMTP id r14so7162993ljd.10
        for <clang-built-linux@googlegroups.com>; Thu, 10 Jun 2021 16:38:21 -0700 (PDT)
X-Received: by 2002:a2e:3c06:: with SMTP id j6mr700048lja.495.1623368300853;
 Thu, 10 Jun 2021 16:38:20 -0700 (PDT)
MIME-Version: 1.0
References: <5a9bf050-0671-3273-cc4f-1b131445c1fe@redhat.com>
 <CAKwvOdmwRV6R6dcpcSL06SNVQ1_JwvOJMZPYiHKvjSx4sf_95g@mail.gmail.com>
 <d4c587c2-7eca-043f-06b3-7e1cfa125b38@gmail.com> <CAKwvOdkFqFoNUczEiTKY6o2E78bHLkMjeHjtQWKm=Qdg7-v26Q@mail.gmail.com>
 <0e70beb7-49fe-efba-ef41-a35fa996bdcf@redhat.com> <CAKwvOdkoCzf2+-Z2K8e22OF9odo21RxXJu3gkGxweSePoBRaVg@mail.gmail.com>
 <c64167f2-23e7-4efa-4945-6398bf99683c@redhat.com>
In-Reply-To: <c64167f2-23e7-4efa-4945-6398bf99683c@redhat.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 10 Jun 2021 16:38:09 -0700
Message-ID: <CAKwvOdmAjWnVaNdgXm3SWTTCRcsxedtaC3KiF4agsBgiYZ1quQ@mail.gmail.com>
Subject: Re: #KCIDB engagement report
To: Nikolai Kondrashov <Nikolai.Kondrashov@redhat.com>
Cc: Nikolai Kondrashov <spbnick@gmail.com>, kernelci@groups.io, 
	"automated-testing@yoctoproject.org" <automated-testing@yoctoproject.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Vishal Bhoj <vishal.bhoj@linaro.org>, 
	Antonio Terceiro <antonio.terceiro@linaro.org>, Remi Duraffort <remi.duraffort@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=OIaXpzWF;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22a
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

On Thu, Jun 10, 2021 at 2:15 AM Nikolai Kondrashov
<Nikolai.Kondrashov@redhat.com> wrote:
> Thanks for the feedback and the requests.
> Give me some more, if you have them :)

Awesome!!!! I really like clearly seeing the number of builds that
succeeded vs failed.  The numbers for the "Top 10 architecture build
failures" add up to the total number of build failures which is great.

We can clearly see which toolchain was used in the table.

Oh, I clicked something and can't back the nice histograms.
https://kcidb.kernelci.org/d/revision/revision?orgId=3D1&var-dataset=3Dkern=
elci04&var-id=3Dc4681547bcce777daf576925a966ffa824edd09d
vs
https://kcidb.kernelci.org/d/branch/branch?orgId=3D1&var-dataset=3Dkernelci=
04&var-git_repository_url=3Dhttps:%2F%2Fgit.kernel.org%2Fpub%2Fscm%2Flinux%=
2Fkernel%2Fgit%2Ftorvalds%2Flinux.git&var-git_repository_branch=3Dmaster&va=
r-origin=3DAll&var-build_architecture=3DAll&var-build_config_name=3DAll

The first URL was in my history, so I just went directly there; but I
can't figure out how to get back there from the existing UI elements.
I click "Home" (top left) > Branch > Repository URL >
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git

(the "name" field defaults to "kunit" rather than "master"???)  Oh, is
it "Revision" rather than "Branch" that I should be using? No, that
doesn't seem to be it...hmm...

I really really like the histograms for build failures; I'm most
interested in seeing one by toolchain (we have bugs specific to just
newer vs older versions of clang all of the time); perhaps folks might
like to slice along any of the columns in the table?

The build status in the latter link with red vs green area was exactly
what I was imagining. Great work!
--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOdmAjWnVaNdgXm3SWTTCRcsxedtaC3KiF4agsBgiYZ1quQ%40mai=
l.gmail.com.
