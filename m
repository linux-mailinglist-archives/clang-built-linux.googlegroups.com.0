Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBGW7VCAAMGQEQSF4KJQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33f.google.com (mail-ot1-x33f.google.com [IPv6:2607:f8b0:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 4423E2FFA2C
	for <lists+clang-built-linux@lfdr.de>; Fri, 22 Jan 2021 02:51:23 +0100 (CET)
Received: by mail-ot1-x33f.google.com with SMTP id d60sf1591460otb.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 17:51:23 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611280282; cv=pass;
        d=google.com; s=arc-20160816;
        b=bG9dskhUIEhLWSCrnVO7IkCbJTDdc0+97Jd7PN35yKJw9/luqAt1R7VO0jtzyhdCg4
         s1ENO6AQi63JGGWE47GCmavsg+XZP6pJXvZmDFOOPV7Eg44JCGy+s71eWSobaYj/HpM5
         FOWaNmq2mqmHZmrjBIGw15/Q44U7FwuyTP65OIrijesVg6nIjM0wZaPl6/GHrzB+LQyL
         nnvJh/aPHUo+SlF/6+aPy1Cpojwjc1WyNWaNTmyXfPko5VUHV82VeJ6NXbHu/fiQCK54
         z1/72IhKb3KJW4UVLwOyQzH+Fdvblac47NoVHirVGQS20iOVXdmGC6xzbkB2l3SnavhH
         4MlQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=cso5f4dZHmoYOpsDqJkK7/yVohHbhI4W46oTbUDjjyU=;
        b=uMbHpp3Qq5B1qmN3Dlb27KSt1yYIuTp1z928xyfwoLaOH0QOnW52psMkH+nzIw2v1t
         B30r/ts5WfZQY2E0LiUcx/9iAbN0TAaij3K12DAUB6fRRP1Bn11YP3FY7VT1NC8IC83c
         05lG3Cx9qsxkgHt3hDGCUS+TXWoWoqHqMspeWQMtMz+HDIdwzTOY/rR1hNiYe+3tHdbW
         /3gpy6Pli0VLpq60mCjyMulZghgu8co+G5lgICx9wUPOWz2jlUO+I7CrFaO1GceAcYYy
         XLX8Nubl6fpCzZFZn9NTCVHqvaANYRZHjMktOHS2eDqqZ/O2Iu8Bx2qK7n3XbNgcdXsx
         EBcA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DabjZlnK;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d36 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cso5f4dZHmoYOpsDqJkK7/yVohHbhI4W46oTbUDjjyU=;
        b=iMlhXdsOpRGsiFYv9JuPmKGbuyl+tqCCnU2c77m0B+eXSJ1dOiWbIoAK3gyTadK8St
         4rzU3Wqp34Xmjytr5YzAY8T5+g666pF3ONWlPkAqnFGkHf29JJpNZxJ+Z6WCw+GPXsEK
         Zk10jUNEUtxzuMQs+vWvEjqhaeHEVt6HBgbmlxhI4wvwHiplc0JPbuG42Z0TpwHKMoX4
         SkFjzJ3hjEmC1gi++LlibaVzi0CDW2ti1SURUJh6XC1Hfpd9C8MSAepYi0yqElaA7SJg
         UyEaRGDQZdqjb7z4yU4dXEU1X2piSoUUGV2vRTZV+MCp8JJeZAf96p4oee34/Pc6OQ1o
         FOMg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cso5f4dZHmoYOpsDqJkK7/yVohHbhI4W46oTbUDjjyU=;
        b=QZd3TVQsFZJzy3sfnbIdw9fDYpxbRZUO7MT+aoSWmrr+W5RVexxCiWTPxlcV5/IWQN
         bZkncmZj1e+I3pVHrXUGhy9EjCgI3HwPHEjazNMkX/pxytbf8J0myazXU9U8TCkfTPT1
         gmoemcch97QoFBkvWh6YY97flg/kAwDatkTv+selH5b2Vph0oVUezhWfsc/4SZ1rLl0e
         2LUsLztlqemokDKbs5f/PdixKVzB7JXZIwKdm5W4tkD/P6H6097VUTfnxe53hs6KfiEB
         ikzfueJWkMhItQCQkfBQN/C1w3tblDmZiqTnxDJxJwwV7qovqZccvQAYiiyAv1R3aTiH
         5bAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cso5f4dZHmoYOpsDqJkK7/yVohHbhI4W46oTbUDjjyU=;
        b=lDBa7QRWihhSlqRwNH5OaTXbIeLVdr6jxS8PrIhMOXBt98oBk4BAdLuBNy1oHSkY1k
         bsMt9ya0Bz6z29tI8VMLcFVWn5Fw7K5tb/6pBzYotg056OKxj7Ie1eJSpOwmgxMYc8cD
         hEKg2AYweWkVbDeHyLdFJ/nn7ZIyqXMMylfI75D4z+fdfcpd7gJH/0epJeA1ElWMfHOa
         f4qK7Wc9scSjfBgDw+3jw4hNMI1F1m6mOukyKMK5ZPaae5jHWAyfQqJrRYJfiJ9Kt2ip
         lPWdBl3dAaFSLbRdJLxaBkLCAbop1pu/DFdUvTVTGQoEu6JTNl2X2e00fxZ9KVZo9UqB
         iMPw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530rzEWJN1ykhAqCtuh4X4Y9ficUDg32NvtAorjjwHQ/re95EA4+
	d+cdlMUJhiU62I7LewFmOSA=
X-Google-Smtp-Source: ABdhPJy7jYsQ6r0IaKpSilNUQh/AJIaLT2XVJP5l6B+uxxz0c9GvAjPK+WbnIHBh8jMLTHQ2u85sFw==
X-Received: by 2002:aca:6289:: with SMTP id w131mr1704031oib.69.1611280282093;
        Thu, 21 Jan 2021 17:51:22 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:69c2:: with SMTP id v2ls424687oto.5.gmail; Thu, 21 Jan
 2021 17:51:21 -0800 (PST)
X-Received: by 2002:a9d:e81:: with SMTP id 1mr1622788otj.14.1611280281723;
        Thu, 21 Jan 2021 17:51:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611280281; cv=none;
        d=google.com; s=arc-20160816;
        b=sWAgdxqj3noiYgA5muUwsgVaFvpETfJBHC6nT6Y0ZGr8ZNiisfPcEo8VUD9Dm5PSwn
         22PDOBSPTsNvW2Pe8uzLGwqbWVN0WEv6gu2DUeHXVUNCmuIzyP9BOZ6Q14F6r4ThvNsw
         9fwUXgKgvo9oBrkRcH3lLzoWVJHw2TkHsj5pUqpso4J7C6W/hBokW5e00Fd0kGcJKIOd
         o0APPMQUHvVrHI9wHLWFsfntF+QIzx6H1UrHijxOtGPiCOtLfctHxWJSo4zRB5mwwKf0
         WexFqnOSroAqLawh4PyZyaHn6mugmecgBQ62hjessqFq3WrRS8TWVKzp6enVTP5D18y0
         rkpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=grVgArCmTIAFQO1QKDjtcwkARpJ8eBaT94p20yxbsvg=;
        b=AM3v7KlXBLq3oyZtEtWTyMXwZvUa3hrzQhiyeGNf6eD4lJBSh9wqPdFpu97ri0yRku
         IMT2KepjOPtu0hWEUTYhpfFbZIFnCREjEx2qRIS25JaFYxqId2gjk4bU/Cfp8wujZYE+
         +fPprqbpqWDmuXkbbTtuSF5CUnSMo6xc4PbM9B7SMwZprYY8aPWvnJeNVdCH8palvcWg
         qoOptuSnezNhchJv8UgMOjMEsCbVNzUF1OVfQzJVpJ6Mcy3XvyHsJ3Vn1qBvgnllvVgz
         gjg2tdR5zeu/kDzFylYyMoX3rj7zs+REesaMyFcVBB/72f0ZhBcxI3HdYIwagI+prtDr
         xAyA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DabjZlnK;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d36 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd36.google.com (mail-io1-xd36.google.com. [2607:f8b0:4864:20::d36])
        by gmr-mx.google.com with ESMTPS id m7si455962otq.5.2021.01.21.17.51.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Jan 2021 17:51:21 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d36 as permitted sender) client-ip=2607:f8b0:4864:20::d36;
Received: by mail-io1-xd36.google.com with SMTP id p72so8070748iod.12
        for <clang-built-linux@googlegroups.com>; Thu, 21 Jan 2021 17:51:21 -0800 (PST)
X-Received: by 2002:a6b:6a0e:: with SMTP id x14mr1750003iog.57.1611280281435;
 Thu, 21 Jan 2021 17:51:21 -0800 (PST)
MIME-Version: 1.0
References: <20210116094357.3620352-1-morbo@google.com> <20210121082451.2240540-1-morbo@google.com>
 <CA+icZUWiXMbZe5d5h6KdoHUSiaHwv7z6Rf_C2Gstmx0rbszT+Q@mail.gmail.com> <CAKwvOdmmhW36Zbkc0aPLAOrP8UXsX5vKkrfWYH89sCKLmE5vuw@mail.gmail.com>
In-Reply-To: <CAKwvOdmmhW36Zbkc0aPLAOrP8UXsX5vKkrfWYH89sCKLmE5vuw@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Fri, 22 Jan 2021 02:51:09 +0100
Message-ID: <CA+icZUVdM_mOMwp6V=jwj0422uaRUMHKQMkSkFScgbWqynS+iA@mail.gmail.com>
Subject: Re: [PATCH v6] pgo: add clang's Profile Guided Optimization infrastructure
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Bill Wendling <morbo@google.com>, Jonathan Corbet <corbet@lwn.net>, 
	Masahiro Yamada <masahiroy@kernel.org>, Linux Doc Mailing List <linux-doc@vger.kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, 
	Andrew Morton <akpm@linux-foundation.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=DabjZlnK;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d36
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Fri, Jan 22, 2021 at 2:44 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Thu, Jan 21, 2021 at 2:35 AM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> >
> > Thanks for v6.
> >
> > Small Changelog nits:
> > * Can you reverse-order the changelog - latest v6 first.
> > * v4: s/Makfile changes and se/Ma*k*efile changes and *u*se
> >
> > Can you add a hint to this "Clang-PGO" patch requiring Clang >= 12?
> >
> > Can you please add a comment for people using Clang >= 12 (ToT) and
> > have kernel-modules enabled, they will need the patch from CBL issue
> > #1250?
> > Otherwise they cannot boot and follow the next steps in the workflow.
> >
> > Can you put a comment about value "1" to reset the profiling counter?
> > That there is no "0" value stopping it.
> >
> > Can you add an example for the workload test?
> > Here I do a x86-64 defconfig build.
> > See attached script.
> >
> > Usually, I download this patch from LORE.
> >
> > link="https://lore.kernel.org/r/20210111081821.3041587-1-morbo@google.com"
> > b4 -d am $link
> >
> > This downloads v6.
> >
> > What if I want a previous version (compare)?
> > Again, I will love to see a "clang-pgo" branch and maybe tags for the
> > several versions in your personal GitHub.
> > Come on, Bill :-).
>
> That's quite a long list, Sedat!  Do you think some of these can be
> follow ups, once the core lands?  I'd much prefer to land the meat of
> this and follow up quickly, than tire out poor Bill! :P
>

Poor Bill - he lost his hairs :-)?

I hoped that the documentation gets a bit improved and clearer at some places.

- Sedat -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUVdM_mOMwp6V%3Djwj0422uaRUMHKQMkSkFScgbWqynS%2BiA%40mail.gmail.com.
