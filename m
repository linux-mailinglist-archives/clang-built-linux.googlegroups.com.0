Return-Path: <clang-built-linux+bncBCKIT2MIT4IBBIPL7T7QKGQETUDBOCA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3e.google.com (mail-io1-xd3e.google.com [IPv6:2607:f8b0:4864:20::d3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 636D32F519A
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 Jan 2021 19:02:10 +0100 (CET)
Received: by mail-io1-xd3e.google.com with SMTP id c7sf4257323iob.10
        for <lists+clang-built-linux@lfdr.de>; Wed, 13 Jan 2021 10:02:10 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610560929; cv=pass;
        d=google.com; s=arc-20160816;
        b=cP1e2leu+WbVW+LeKFK4OIq8A6QwAEi6LzTToJztNGjteVBB9xmfYSei9egb2vLj6N
         Hsg750y5OTt4hWTXi54/LQbXJnEfw/fBrq1A5wiECM4dMXdPHJ11cK37nnD0XBpQDygj
         TadnV0iH/uGwZgzySwRG8RLzStW8qNiEVZ56GsdFPXugPMLJBge+DIbQhdqFVBXICXlH
         UrX6Tr46T3Q20gHndRTrV/Z7Z9DGZ8HStixAhO3/Eked+cj84RYVbsmexZHxXDWf/Gjg
         qBEc96zbEgQqObRMeGwtZll2ITe8lLqfkP4UWry5s6vtHlQ+IYWXV7NkOBBdoT16Kf1l
         I2DQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=2bQ6BYzWUvmI02qpPn3obiw0wuZElAfm6WGklk04O5s=;
        b=G6TLwMoxE1LqQ45EVTyS8EJKXWnQzMPQaHE11Xv11u0kZxmkbaiWIoOtMZlwQ9GufW
         CUCK7n/RiKUsAJ411HYWXsyVj9mj1pARAatGXu4tIy4GyG3D1qY1NXDycNK3ePCrnPlD
         CgCPt1kWImMunJUCrQwSvYzpoyxbZPYuvN8k0QxL9IgdgJGh40tbBcUX/g8X4fNjsVjs
         5TnN8VCz4ROQKt/DMfyOOPvjXTeX2f9a7oIIiv6XsTgqadutPkXacZqAYgUWTgcpaOHl
         kkUNRaUOeECKjlMxPioSSM1u/8gt8P7xf53A+jKVPSgytz3fvDRkuCb4d7x3UYQvOTva
         g3Mg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=aFEhs+R2;
       spf=pass (google.com: domain of dan.rue@linaro.org designates 2607:f8b0:4864:20::d30 as permitted sender) smtp.mailfrom=dan.rue@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2bQ6BYzWUvmI02qpPn3obiw0wuZElAfm6WGklk04O5s=;
        b=ieZidJsdDUKIQpMmRtHEuNeCHTNlGWAMer5eitBsdGVLcUZOU7b56CHNgD+WtwYszL
         3RjKJDmlU6EfRo3NVkaCSH3YtSSRIAvrsRYU3/FKg7IZ/A+3DZ36UVPFTcAxTbfOvIUt
         6L/W1pfLghN6IV0yAHdW8rcuphxyHPEokwQPQT+wRILbYmwxyJ+KgxlYQgoE6rbl6h8E
         UsE7vHB9n5FG8juCbF6qC0U7idkQms7uKmLBnKAXN3fSp5sgy9tRZH8IMDjvqCfN+b+T
         cZ0gPtq6ePEUhCid8dQ+g10X0CWD4JLNxlV8Qy23MbiJbLrY0UR8kEUIBdfBUfyaDmjT
         gBAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=2bQ6BYzWUvmI02qpPn3obiw0wuZElAfm6WGklk04O5s=;
        b=Em531nyB1giLgEsaiogPckdQxOnfCWRxe3ShT8DwkKXXKPl5dKfK8g2F9nqKFA2K+5
         CY309/GLgl1oQLOCcF2NIAV4HSbmZXWPuolPpPoN8nMAY4nRXbFyTMUySQ4gyoC9pBZm
         D/VrI40yVqTy+/oMF7d9J6KeDr2/sQGNb/uRsjsdW47AHbp/PEaaJ0D8J5SzGth23MXe
         FFKTNZEM4bh+bfb/YvlJzqK1J3/urMnS2bFsqw3gdaqFWOVXDkTB3ktAAWti7ppJ9Jwo
         FT8ChZp2rL3Po348JROKHyE/LfnP1AmdUULdlySNB2vV+Ry10NY45GrgDLXJkZcoFyP+
         PdPg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530w0oX/+J2NHpDv0pZacLtLC8tZSzrGVGGQO0GsAa7t770vJINy
	5gDQEtNiJd/J84reCOR8s3o=
X-Google-Smtp-Source: ABdhPJwvQ7V7VGf+4ub45iX+Eiki2NzdT5yB1Nla6nC/tXbxq++DIafouIAkx9h+sv3ZuQ67ZgXEOg==
X-Received: by 2002:a92:4002:: with SMTP id n2mr3341857ila.293.1610560929353;
        Wed, 13 Jan 2021 10:02:09 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:9844:: with SMTP id l65ls764576ili.3.gmail; Wed, 13 Jan
 2021 10:02:09 -0800 (PST)
X-Received: by 2002:a92:c890:: with SMTP id w16mr3392724ilo.188.1610560928949;
        Wed, 13 Jan 2021 10:02:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610560928; cv=none;
        d=google.com; s=arc-20160816;
        b=WuOtaKZwYA43yACGD9cQP3PeFFM0KqBy/vbu5s45pMWQm8/jj8lYB3CbiJl+QLAkjX
         CRYrdPenrj5CC/dXMxPdaws4ePHZLu8bxPec+TskJIJct4MAM/6u8R/3x7CBrbIFz8OF
         8dKa0mSWkQqIzq8GQg6Yh/Sw4TUACDI3Utlq1GRp/AplKEvNkRtJADQ3Wi1NWcjUZeyf
         rGVbxyckqPhQVg07aJZZhhgSxdUImlPKAb0heRADB5036R49rype1cks4rBXH/HLoP0H
         ELtVHL2GVSupYP8h7+pxCsehGWBf1rGQIicWam3oa5VV4Wd4QchTrifkpeM8BJGi1IsQ
         9r3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=2kWdn3372Fy3vprgZ8mPMkjz/pzN3GCF9pJ0+E2svDI=;
        b=AAsaU6uNq16H81n+qtlo/urzzilWikkOOzuPkfJuEnihqiJiEDaRxHWLHRmJBaP/yy
         Jkal4ArBiCZdD7PUuYF8PD7ZfpwwlKRpMOIETJQOozFfIPdLmLPqMn/vnzMkyqUAXsi9
         OSvEaVW2F7YG9dyoMtubIXHI9k6VVuvwCxVHqSGBTg+kuXOFdfJlTysmPO/Xt65gp7JX
         XNUJv2CPV0i1laBSgCqmTdMhSuiB9+cvcMyRDp6GjiStVyBwqgS7rjkmDswiggzWPLqe
         H965oPGLQ+yQmrbNmwPGuNcBLTaou+Lt4qKOAD5LbQ9JGbOHuxesHmcWC2b/mF81RBKe
         kwSw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=aFEhs+R2;
       spf=pass (google.com: domain of dan.rue@linaro.org designates 2607:f8b0:4864:20::d30 as permitted sender) smtp.mailfrom=dan.rue@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-io1-xd30.google.com (mail-io1-xd30.google.com. [2607:f8b0:4864:20::d30])
        by gmr-mx.google.com with ESMTPS id q4si180614iog.3.2021.01.13.10.02.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Jan 2021 10:02:08 -0800 (PST)
Received-SPF: pass (google.com: domain of dan.rue@linaro.org designates 2607:f8b0:4864:20::d30 as permitted sender) client-ip=2607:f8b0:4864:20::d30;
Received: by mail-io1-xd30.google.com with SMTP id d9so5922645iob.6
        for <clang-built-linux@googlegroups.com>; Wed, 13 Jan 2021 10:02:08 -0800 (PST)
X-Received: by 2002:a05:6638:2a5:: with SMTP id d5mr3432405jaq.92.1610560927202;
        Wed, 13 Jan 2021 10:02:07 -0800 (PST)
Received: from localhost ([2601:441:27f:8f73:af1c:7719:f4b4:52c6])
        by smtp.gmail.com with ESMTPSA id y3sm1939150ilq.9.2021.01.13.10.02.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Jan 2021 10:02:06 -0800 (PST)
Date: Wed, 13 Jan 2021 12:02:06 -0600
From: Dan Rue <dan.rue@linaro.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: kernelci@groups.io, Nikolai Kondrashov <Nikolai.Kondrashov@redhat.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: tuxbuilds in kcidb?
Message-ID: <20210113180206.lv45oscrshsocapz@jug>
References: <20210113001320.qreaohq2hzzmlxxu@jug>
 <0fd95437-74c4-1ab0-d53e-41fd6fe4f759@redhat.com>
 <20210113162845.xugh6v5p6talrm7h@jug>
 <CAKwvOd=Z8HYcz1zdccUHUWcQkgh9cFfpVRjcAfPF+ug4_NX5iw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOd=Z8HYcz1zdccUHUWcQkgh9cFfpVRjcAfPF+ug4_NX5iw@mail.gmail.com>
X-Original-Sender: dan.rue@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=aFEhs+R2;       spf=pass
 (google.com: domain of dan.rue@linaro.org designates 2607:f8b0:4864:20::d30
 as permitted sender) smtp.mailfrom=dan.rue@linaro.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

On Wed, Jan 13, 2021 at 09:52:22AM -0800, Nick Desaulniers wrote:
> On Wed, Jan 13, 2021 at 8:28 AM Dan Rue <dan.rue@linaro.org> wrote:
> >
> > On Wed, Jan 13, 2021 at 01:00:11PM +0200, Nikolai Kondrashov wrote:
> > > Hi Dan,
> > >
> > > On 1/13/21 2:13 AM, Dan Rue wrote:
> > > > Hi Nikolai,
> > > >
> > >
> > > Just want to make sure it stays (relatively) stable and is recognizable.
> > >
> > > > I'm not sure how to represent the result of the build (pass/fail) - I
> > > > used "valid".
> > >
> > > Yes, that's the right field for now.
> > >
> > > I'm thinking about replacing it with "PASS"/"FAIL" "status", to match tests
> > > after all, but not sure about that yet.
> >
> > So if a build passes, i'll set it to True. Otherwise, False.
> >
> > Note that sometimes users do somewhat foul things (i'm looking at you,
> > ClangBuiltLinux), which cause builds to fail through no fault of the
> > source tree. Things like setting various binutils to llvm variants, or
> > building configs which don't pass with llvm. In other words, these
> > aren't necessarily curated expected-to-pass builds in all cases. But I
> > plan to just start with the production LKFT builds, which are expected
> > to pass in pretty much all cases.
> 
> Right, theoretically we can have build failures that are regressions
> on the toolchain side.  It's still probably worthwhile to record them.
> For example, while I'm using github actions for orchestration and
> reporting/visualization of results/reporting, I envision having it
> just send results to KCIDB then having some interface or query to see
> the results of my build.
> 
> We might also have builds that are "not regressed" in the sense of
> they were never green to begin with. That likely happens when we're in
> the process of bringing online a new arch (like s390, csky, m68k,
> riscv) (new in the sense new for us to support) or config.
> 
> Otherwise, I'm pretty sure we're using standard Kbuild invocations and
> not doing anything "foul" per se.

Sorry I didn't mean to imply impropriety; I meant "foul" in the good and
productive sense :)

Dan

> -- 
> Thanks,
> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210113180206.lv45oscrshsocapz%40jug.
