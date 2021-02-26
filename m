Return-Path: <clang-built-linux+bncBDYJPJO25UGBBU544WAQMGQEIGEVQCI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x139.google.com (mail-lf1-x139.google.com [IPv6:2a00:1450:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 9635E3268D5
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Feb 2021 21:47:16 +0100 (CET)
Received: by mail-lf1-x139.google.com with SMTP id p16sf577683lft.15
        for <lists+clang-built-linux@lfdr.de>; Fri, 26 Feb 2021 12:47:16 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614372436; cv=pass;
        d=google.com; s=arc-20160816;
        b=MIyb8dShtGxL/YXPhUyff/vr6eyxKfHBMlQKArXOQAz/T6LEE3nNCvtDhfOFgj5QNs
         GYD3XQhhrz1I6nyRklKHw2DMY2zhLvLuH+kYisQxU45K2UH54KkzZeWr5s1hivsiIDW2
         1cChFIh0XWHwN02sWtn4BoyzYFSGQ/PuJTvjPZ4mCiXFvgLZxuO00Z/taQZTIrUzIbcT
         cxKqqRKyKHQgnyrv6OLXLK/GloDeEK+OXS0aOPDEdiLM5KKkr4VQyHCuZy5aMAl0XTQi
         ZEEJ71uWuQKCLou806fn0wmeOkeFibVz1+fox8X8P3AlRjWU3+Bh5E2yGkXUiKwjkE7/
         Pn1Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=DfO9P1cwX4noUlKqJ6ecP/Dt8nzn1PSnBCV9MLOOFoI=;
        b=g7bx+xsLN25kIKSbW72CTdsaA2Uj1sFgVeD6590gMJRBGRYBtUqKAIOnZ89Ma1z8Qm
         mx0AFUW5F5YUuuT+ndk8NLSFr6JDtyDVQ8XwIW8iGrh+I90QMbKrjpSOM+reAE2LxXsV
         u3KxVROCF/qAuV9Qy27vOJh0PLAsCaEdFzYTzNfW1j6Twu4Psg8szQt+V92OERvroDNu
         ehgXv81mEXBRWuMysz6fS+EUZLQKEeSFDqVobAoBwZhw0X1yNCS7LRIJTi/aLsOpOIsK
         5tlHnlUdMEOqCF3PgzuEibv9YpnEQErs3YzWPMhW0wXZ2/DJYhFNtEXeEAaZ8rNLSnCy
         fT3Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=VmMtrwsf;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::230 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=DfO9P1cwX4noUlKqJ6ecP/Dt8nzn1PSnBCV9MLOOFoI=;
        b=U4JvJi28IqptnXb15vtsDNYCgbftQnKJSRzLeKIQCvkmq4mhM5uKWs2mnW2f1y0D0Y
         MBhvIs/Yx5+paZiq6oBXSANrBgMdVXUNwYG+wHt3F8r9l3VJtr33QcCDs9cj+1XEpP0W
         AM85JF347/vnFLMd7eAvRagIdVub/CcVbYd1IidqG0bSu1kR3Gl7m6ztnMtUn5PvLq65
         tdU8WiraZ+uaZSHD08KPLRpacYvEKXS5bWFCniliIjdZy/ImjC0srwhlgg0qbvG0QErm
         e7Nv/lCXKbZm6q81Ig0myR9y6IueJZDp56lUco2n95DsCk9s8N1BT9CjVdc9V9Ed4rdU
         EGQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=DfO9P1cwX4noUlKqJ6ecP/Dt8nzn1PSnBCV9MLOOFoI=;
        b=Cb1z1kmj0/csEX/0IJBwVhRCq8iFvHnklCQZjOw4ioWO3tXO4V+AojemK4oiJrFX6I
         7W05KHitDI6w+cijilC4MVE78xC4+4K2jqzJGibSjSEiRx7vrPs3IlREj8P4LmiTEz6O
         3Y8KgeOopZfu/pYPJwHUqyc3LTlaY8rrZJKJpv4n4MbNw1UnkyxHl+YbRtiZRkYlJSkH
         9a+i7YldJNHJdDwepo+J3tuiAAcvuV70zykLoBqmzl9Dp8gIMV2Aimv4tWm+/h1GuQkN
         3woq/J/N+zR3v2rWp3qszMqO5OOUVqUfFJaufQB0XycLVq5CXut+XCNenJraMKkGvDyg
         NdDA==
X-Gm-Message-State: AOAM531kOliqmmp6nRQtMjVtmR5FxmBJGPwliYyTzEp8aKgPpUV5GIAF
	CUC8AuFGLuN8vKJTECl34b0=
X-Google-Smtp-Source: ABdhPJz6hzcub+JLm4STJPowBDgh17BE4CIyWibrkmHUHOAMwDrDK3+HHMQtM26bKx067fWytaNCOA==
X-Received: by 2002:a05:6512:3046:: with SMTP id b6mr2822448lfb.407.1614372436161;
        Fri, 26 Feb 2021 12:47:16 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:6d4:: with SMTP id u20ls1799223lff.1.gmail; Fri, 26
 Feb 2021 12:47:15 -0800 (PST)
X-Received: by 2002:ac2:5052:: with SMTP id a18mr2662920lfm.55.1614372435283;
        Fri, 26 Feb 2021 12:47:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614372435; cv=none;
        d=google.com; s=arc-20160816;
        b=cfLtAD3t7CsEjYbeTYQf2bfupMe+9SXTmsnjQVMZ+aYvVh4aRp55Zum0jvOQ6TUO0N
         tkAamUC/7hi51OKH3dipCrfNRRuoks5t/5/YgQGhSZ+RoZZ89ZcFw+Kmay/gqUg0nGgf
         1NQsfHcfVwTXyNxoJJJUU6C0debmtdhzs00iRdPRWVloxU1KQGfEqbmTjZBcV8t7ozHO
         mr9UA8SSE1eu/D0P1UYtnDFaQ1hkjE+HRSDkbS/8y/bS2r454vLqsvuPhfo3tVJskvrD
         7bIYctc/Tw9v+erJ+sq5JauY2YIyc02VGJGP93Zg2kYPUJeAyCbXUBaoEaYOTvljkVxi
         4qPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=o5m09NeCFmgUIFbH6bFaGd//EU34vmPkiCWl7hgRUY0=;
        b=bb/noWv2i6518MUlraJWdtJNq+mqglh6x9cHxJ2uwXS/XYUlGfAQo24UxVqaYkJlLO
         LLqZog/xPxIv2zd97uLrk6KySlHPHcQVvgaBjM6Ye0VRCMouOijilCi43739GiiPm0Jn
         rhqmFRlZ4HhuAv8uvY3wbp1DibilynTiC13rruNT0w9A9zxQwX1hbXJitFbq9mVqvX/B
         HmQVc+dlXv3LqrWX/dly4WbrGWpLZ+j4YaG2+Xsu1WtcMVZTlDg5hA8mAgvwicQ49laG
         0pNhKnHzcmHrCXfxU7zxHScpUAvM7hNoEvdwrua/G53DKmlY+6uXX0FOp1bUHacOz2UR
         fXzg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=VmMtrwsf;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::230 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com. [2a00:1450:4864:20::230])
        by gmr-mx.google.com with ESMTPS id a17si284511ljq.5.2021.02.26.12.47.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Feb 2021 12:47:15 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::230 as permitted sender) client-ip=2a00:1450:4864:20::230;
Received: by mail-lj1-x230.google.com with SMTP id q14so12109531ljp.4
        for <clang-built-linux@googlegroups.com>; Fri, 26 Feb 2021 12:47:15 -0800 (PST)
X-Received: by 2002:a05:651c:2042:: with SMTP id t2mr2568526ljo.233.1614372434754;
 Fri, 26 Feb 2021 12:47:14 -0800 (PST)
MIME-Version: 1.0
References: <20210226164345.3889993-1-arnd@kernel.org> <141f3098744ea8d1cc39abcdce89c0e513bfbc70.camel@gmail.com>
 <BYAPR01MB5621DC2003DA49EA64AD46A0D09D9@BYAPR01MB5621.prod.exchangelabs.com>
In-Reply-To: <BYAPR01MB5621DC2003DA49EA64AD46A0D09D9@BYAPR01MB5621.prod.exchangelabs.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 26 Feb 2021 12:47:03 -0800
Message-ID: <CAKwvOdkW6bctowgCrLakWJ7pj1uxEZ9T8TPiANFu9dhcHYYc0A@mail.gmail.com>
Subject: Re: [PATCH] ARM: ep93xx: don't use clang IAS for crunch
To: Arnd Bergmann <arnd@kernel.org>
Cc: Alexander Sverdlin <alexander.sverdlin@gmail.com>, "soc@kernel.org" <soc@kernel.org>, 
	Arnd Bergmann <arnd@arndb.de>, Russell King <linux@armlinux.org.uk>, 
	Nathan Chancellor <nathan@kernel.org>, 
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>, 
	Hartley Sweeten <HartleyS@visionengravers.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=VmMtrwsf;       spf=pass
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

On Fri, Feb 26, 2021 at 11:32 AM Hartley Sweeten
<HartleyS@visionengravers.com> wrote:
>
> On Friday, February 26, 2021 12:23 PM, Alexander Sverdlin wrote:
> > On Fri, 2021-02-26 at 17:43 +0100, Arnd Bergmann wrote:
> >> Randconfig builds with ep93xx fail with the clang integrated assembler
> >> that does not understand the maverick crunch extensions:
> >>
> >> arch/arm/mach-ep93xx/crunch-bits.S:94:2: error: invalid instruction
> >>  cfstr64 mvdx0, [r1, #0] @ save 64b registers
> >>
> >> It is unclear if anyone is still using support for crunch: gcc-4.8
> >> dropped it in 2012 when it was already too broken to be used
> >> reliabled. glibc support existed as an external patch but was never me=
rged upstream.
> >> We could consider removing the last bits of the kernel support as well=
.
> >
> > This was my impression already in 2006, that Cirrus is not going to wor=
k on Crunch support. From my PoV it's OK to remove the support in the kerne=
l completely.
>
> Martin Guy did a lot of work trying to get the maverick crunch working bu=
t I was never able to successfully use it for anything. It "kind" of works =
but depending on the EP93xx silicon revision there are still a number of ha=
rdware bugs that either give imprecise or garbage results.
>
> I have no problem with removing the kernel support for the maverick crunc=
h.

Either way, please consider adding a

Link: https://github.com/ClangBuiltLinux/linux/issues/1272

tag. That will help us notice when/where this lands in order to close
out the issue. Thanks for the patch.

(if we go with this rather than removing the driver:)
Acked-by: Nick Desaulniers <ndesaulniers@google.com>

(I'm also fine with removing the driver; my ack is not conditional on
one way or the other).
--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOdkW6bctowgCrLakWJ7pj1uxEZ9T8TPiANFu9dhcHYYc0A%40mai=
l.gmail.com.
