Return-Path: <clang-built-linux+bncBDYJPJO25UGBBFHZU2CAMGQETWVG26A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13e.google.com (mail-lf1-x13e.google.com [IPv6:2a00:1450:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id B78EB36DFEB
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Apr 2021 21:50:45 +0200 (CEST)
Received: by mail-lf1-x13e.google.com with SMTP id y12-20020a056512044cb02901bfdd62b0b4sf2050705lfk.21
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Apr 2021 12:50:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619639445; cv=pass;
        d=google.com; s=arc-20160816;
        b=mHHUbdYuyWkceolftf//QqGWoFNf6SLTLJCnM20RLJXdFKM6jicd8FWd/Lr2PBf58I
         vB8dJ4UOMo/IxyYaJNow/UmIsu6ayiL/JuR5ScErSwky3mx9SbM7A+Vbox0ZHIaZ6yqi
         jgKV9gaeVWgrhNlam1G0zNoRFSLnmnhIo21Khr4b0AsyHh/9ZOyaEixoTYxzPZkMttjD
         dVRMUXjipmK3rDgzMvxplpqGVec8zzvj8ktcUfLb/5JvlOCjXfgrEnUFk5aZXv++HSjf
         IXQ/iNjDYS0a9nDIOvy79G1bCt7xAfU6Ky7vd8xJeQheQy5FOeJI7NszZQUZBb75cXyP
         sA2Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=qK33tDADWfecJjYFum4GYGl/ERtRp96Bw5qmokGplmU=;
        b=x0QzxsLpta6CEfb0U/dqgsPJtRKwLNO2uZUMd76rh7Gymeq1xdRQCqxCX63/65cOiC
         F5ygHeL4gZC97VmpbiBRys/BOL8Hlwy85s91ms9vC+1djiqv8TDmkH5icWyNTeR/z+c/
         8pGZYQF4JmnwQMlmqu8UcuzBeTufmKP5aHhA6ywD1fr+RqWLAz5n+CVgfrQz8PYrTc5w
         8OYufE3zWFWKvrj9VGZtxrPnB9Suuls5BCe4Oueg8k8jZ3QTOIqZ1TxF9zZ2zRe3IfaK
         4A1SeMpZfo2P6kkIWv46XXUv8CCRlhfWrfYDhH/xprIT+gkcsatzlzQKMp3GWo54rSKu
         x7Vw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=pYVNTGjl;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::230 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qK33tDADWfecJjYFum4GYGl/ERtRp96Bw5qmokGplmU=;
        b=AVniWIJLIKGVfjm5kbZQLPi1oLbvcggKuTR/nXWzENCKT8at9cQE0WwMCbvBZ2wu6d
         aGn415xzOm51z6QNSb7MyH/UoAG0Q1/mfHLyn83YgWMVJWFttGkeQ2Va5eMFcJEorLdZ
         XNFMkT+zlIXp9fhf9Ga5Jvpk0s2bxvqi4KEbFvayIyxRqAFKu7JeMMbknQFD8VAsnys0
         0+D3FbudPGPM4s7hQW2DI1hrUvVL25rZ3dWFDwQcS1OSaE19O/Q8nW6G3zzAjCg9sqb2
         qmaDrUvBAPntx8KHvjMywD76O3c2iHWYFHi+JvBUuNUDhpggbfT8X2oSyeStsWMCCSsC
         AgAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qK33tDADWfecJjYFum4GYGl/ERtRp96Bw5qmokGplmU=;
        b=kui/BwrUQl4GWz2lSuQOs9PLINlbXZ53DmMnBa6H1pRtNu2imK28z4yaUaKuBa3ak8
         u9KW7Boju9cgAGv3915t9rZddG9Q5Yfzu/9ZHDt8qYkLtixL3ARMTZuMd9bSi8dIvpmp
         aAXQ5ED0Z3J3R3menwJwOMXpR4shlLs5QyMvqGKma9uHGrKFQR1sZoSWkDstCyu4xpkG
         jDm+rbVNxxaNWrHNDD6WY9QCC9BFtY2bMbaIp04hhu25qH7Xa7DtVhMKRdx4hm1gCeba
         AP7KuwJrw69Rhz55hcFPFrHydmZhL9Q0lrV7uhGn7EO3Xrw25TpATebrRpUvfXadz6ur
         hGeA==
X-Gm-Message-State: AOAM533sHXNE/jMfkwb33dmwPYGGNftRTFXTa+Em4P+6Ha3YaZgpS10E
	gMK48/5KWzXolZ+oFeCe51E=
X-Google-Smtp-Source: ABdhPJw//toLm9luZDarsrVPLfcoPfc5jN4ARbSzBCo4wijo9HDAmrMUPg/g84OFTI9nQKHmkE+T/w==
X-Received: by 2002:a05:6512:2182:: with SMTP id b2mr23673305lft.284.1619639445159;
        Wed, 28 Apr 2021 12:50:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:5f9a:: with SMTP id r26ls577961lfe.2.gmail; Wed, 28 Apr
 2021 12:50:44 -0700 (PDT)
X-Received: by 2002:ac2:5970:: with SMTP id h16mr21275499lfp.605.1619639444125;
        Wed, 28 Apr 2021 12:50:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619639444; cv=none;
        d=google.com; s=arc-20160816;
        b=MMKLYu8q88i9pdjmh6liSFadIR9rDjRmiJIF5BOO8a6WJXwbH0qABRkqG79tr8Ziy5
         GF8CsuSUjADQTxrkY60JGVHzrtTBKJ848NeixlZyqvXOAiVzDUhA1uvQRjKWL+dj1c/D
         eIV+1vPqHwnVMFJTliPfeDKjel2u/Em74OKmwdYeiQzE0G7V/p/ajZwWKRXtwCRvu9/1
         PHn8x0g78oS+CvrFyodybEO4cva6VQQ8XTmDedmSSURp2e0TmUJnj4Z7ISUFNaCpzgUK
         LxSf9jrGYe99bIBzRYjfQgt8Pzd85khhYpz0lDn63DTE5CPVx3N5Lr51AaGt44t3HzVh
         6Mxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=gvaqkIPcbzmWzlNHBMofvuJnZUUJ+fcCvnzyvO+XHV8=;
        b=Kn5JRBCgzz2+dLDdW6V0aA3f3IlUuxi+A5OPtKWrFS1qD8PdV1IhHRiUZKMS5mHo+e
         Ew/xD87uzSY1dzO/kDiKZbxXrxAcfECnP/XijftUh5FvARkXwE9r3SvJEMq7AA9xpFBL
         yezo/Pzhe+PasJa2l1DGKgA7nLvXc41txk84xnHkw7NrQz9D6JBSmYG0hMMxJX/xcw1S
         AHynr47/jpu+T/ZpLS6s8pm/cZoSlZ1o0AZ8HjjCT0jcIBQTrTlaZOqHN50+csN47CMP
         kuCXUBmnWKSX/yvE2AgEgNaKup676vHXDq7UZISW8Jrg6na8iCnrwCRMZXmKI8Iaqqv2
         mipg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=pYVNTGjl;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::230 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com. [2a00:1450:4864:20::230])
        by gmr-mx.google.com with ESMTPS id b39si37537ljr.1.2021.04.28.12.50.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Apr 2021 12:50:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::230 as permitted sender) client-ip=2a00:1450:4864:20::230;
Received: by mail-lj1-x230.google.com with SMTP id u25so35303200ljg.7
        for <clang-built-linux@googlegroups.com>; Wed, 28 Apr 2021 12:50:44 -0700 (PDT)
X-Received: by 2002:a2e:9015:: with SMTP id h21mr21141622ljg.233.1619639443584;
 Wed, 28 Apr 2021 12:50:43 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOdngSxXGYAykAbC=GLE_uWGap220=k1zOSxe1ntuC=0wjA@mail.gmail.com>
 <CAK8P3a2DCCjOq+sB+9sRM7XrtnkromCs_+znv3dehqLiYFDQag@mail.gmail.com>
 <025b01d7386f$78deed80$6a9cc880$@codeaurora.org> <CAKwvOdnyowwDnHXPyJc8-KZg9vKy8zFn7hErazVT30+sPO8TyA@mail.gmail.com>
 <034f01d73a9d$fc4ed420$f4ec7c60$@codeaurora.org> <028801d73c48$d6bd21b0$84376510$@codeaurora.org>
 <CAKwvOd=7oHJKyb89OJ0xU22krAipZOhase8EovdvgqMqzPp=3A@mail.gmail.com>
 <029a01d73c4f$fa5d9940$ef18cbc0$@codeaurora.org> <CAKwvOdku4aC6zfyGOvcKK0JaPbsxDry6wFYT7xoZcHU6b31KvA@mail.gmail.com>
 <02d601d73c64$eca213c0$c5e63b40$@codeaurora.org>
In-Reply-To: <02d601d73c64$eca213c0$c5e63b40$@codeaurora.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 28 Apr 2021 12:50:32 -0700
Message-ID: <CAKwvOdnY4F2yxWB7GJA6xqHpbeNvY9p7-ODony4Qbag9mfFdOQ@mail.gmail.com>
Subject: Re: FW: ARCH=hexagon unsupported?
To: Brian Cain <bcain@codeaurora.org>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>, sidneym@codeaurora.org, 
	"Manning, Sid" <sidneym@quicinc.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=pYVNTGjl;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::230
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

On Wed, Apr 28, 2021 at 12:30 PM Brian Cain <bcain@codeaurora.org> wrote:
>
> > -----Original Message-----
> > From: Nick Desaulniers <ndesaulniers@google.com>
> > Sent: Wednesday, April 28, 2021 1:30 PM
> ...
> > On Wed, Apr 28, 2021 at 10:00 AM Brian Cain <bcain@codeaurora.org> wrote:
> > >
> > >
> > >
> > > > -----Original Message-----
> > > > From: Nick Desaulniers <ndesaulniers@google.com>
> > > > Sent: Wednesday, April 28, 2021 11:50 AM
> > > > To: Brian Cain <bcain@codeaurora.org>
> > > > Cc: clang-built-linux <clang-built-linux@googlegroups.com>;
> > > > sidneym@codeaurora.org
> > > > Subject: Re: FW: ARCH=hexagon unsupported?
> > > >
> > > > On Wed, Apr 28, 2021 at 9:09 AM Brian Cain <bcain@codeaurora.org>
> > wrote:
> > > > >
> > > > > > -----Original Message-----
> > > > > > From: Nick Desaulniers <ndesaulniers@google.com>
> > > > > > Sent: Friday, April 23, 2021 4:40 PM
> > > > > ...
> > > > > > We'd be first in line to help build test such a patch. Please
> > > > > > consider cc'ing myself and clang-built-linux@googlegroups.com
> > > > > > when such a patch is available externally.  Further, we have the
> > > > > > CI ready and waiting to add new architectures, even if it's just
> > > > > > build testing. That would have caught regressions like
> > > > > > 8320514c91bea; we were down to 1 build failure with
> > > > > > https://github.com/ClangBuiltLinux/linux/issues/759 last I
> > > > > > looked which was preventing us from adding Hexagon to any CI,
> > > > > > but we must now dig ourselves out of a slightly deeper hole now.
> > > > > >
> > > > > > Is this patch something you suspect will take quite some time to
> > > > > > work through internal review?
> > > > >
> > > > > These patches have completed their internal review.  I have pushed
> > > > > them
> > > > to my tree at
> > > > git://git.kernel.org/pub/scm/linux/kernel/git/bcain/linux using
> > > > for-linus branch, up to commit
> > > > 43810cfdd2e6af9c57c0975e1b920f2b18c484b6
> > > > :
> > > >
> > > > Are you able to link these with lld? I see:
> > >
> > > Sorry -- I used " KBUILD_CFLAGS_KERNEL=-mlong-calls".  Sid, since this seems
> > to be required maybe we should add it to the kernel build config?
> >
> > Yes, please. arch/hexagon/Makefile KBUILD_CFLAGS would be where to add it
> > I suspect.
>
> Done.  Rebased for-linus. https://git.kernel.org/pub/scm/linux/kernel/git/bcain/linux.git/commit/?h=for-linus&id=38f974f061c5e7c83910bd287d2be8325476a3f9
>
> Build log attached for reference.

For the series:

Tested-by: Nick Desaulniers <ndesaulniers@google.com>

And that's the first time I've been able to build hexagon; nice work!

For the assembler sources, a common convention is to make the .S files
so the compiler implicitly adds `-x assembler-with-cpp` to run the C
pre processor. Then SYM_FUNC_START from include/linux/linkage.h should
be used. I think architectures are expected to define __ALIGN (5 for
hexagon) in their arch/{arch}/include/asm/linkage.h.

Otherwise, feel free to add my reviewed by tag to the first 3 (not
38f974f061c5e7c83910bd287d2be8325476a3f9).

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

We can start on getting this wired up into our CI; we're doing a
(public) bug scrub today (right now), but I will revisit doing so
tomorrow.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnY4F2yxWB7GJA6xqHpbeNvY9p7-ODony4Qbag9mfFdOQ%40mail.gmail.com.
