Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBOXNQL3QKGQEG5WWRZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb39.google.com (mail-yb1-xb39.google.com [IPv6:2607:f8b0:4864:20::b39])
	by mail.lfdr.de (Postfix) with ESMTPS id 380331F5258
	for <lists+clang-built-linux@lfdr.de>; Wed, 10 Jun 2020 12:32:27 +0200 (CEST)
Received: by mail-yb1-xb39.google.com with SMTP id c17sf1712845ybf.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 10 Jun 2020 03:32:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591785146; cv=pass;
        d=google.com; s=arc-20160816;
        b=mh8Bw7BhJJe94NJ0LmoWZ3iO+FjJHHgYQL0rbD/kYBAiaQYxoQyeP9NntMIwMKWYph
         p9j6NofESUjl5gpGidOKaxxH6Cm73XeFEoMYPhU/Ss4hZMydor03hMO0geJYDFgJuSQX
         5KbUV1a6WMYS/WNMBsxS6BmOo7PondEJDKKrbvwgqt7ALThrSiGJMGulTBGTEYiw+Q/2
         j7il+v1ZowVxvxC9ZW1G1i4giBho8WzOGDgA4gKqxJyuMAIQvsuumjxKfV58tuXu9VXb
         gM91dRIf6bbtCJkjV63VgWudny2WNWlFwKy5PcKqEJvsiNW4wlG6h9qevmwskBD8FRrO
         UqNA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=NT6LXQrFLvCg8zRZgH+OROXgxBABcVgOF1ZDbmvanTs=;
        b=lo+EbQnC8LBSKibl47ElJM5ih/qFEST9LQy2tferFRRKTkphcPNNUv0CNxq8oKP+7b
         fsTr0389hkkmoogIAA5Mq5lk4ifbmjoQaWjmW7HCWwbZhKeWlDgk52QS8dNqY3K1aJcM
         dGxwi6Ou9P7NHUeaxCaxZDI5kRxQeEIJy4Dr+M5kzHuRirYsDU7ifr/ItF7rVx0fGpgz
         niN8Qv1vkXatl7Ik1BkUEg0Dll10gY/uUg/7Z11FUA++WTz+loBL/Ibo71oAkC095rot
         GYVvftnw0oM6zoUx1zdJoSPu6GLQDuwZB0B4+wdWsy8oqPwRCJx+9P1ObZWhoYcnyOM6
         0NYQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=PHzbqu6u;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=NT6LXQrFLvCg8zRZgH+OROXgxBABcVgOF1ZDbmvanTs=;
        b=GJYI6Rgj0OicmZyo2QhhVHyTYhBzOR0r1IJyOjd9z2bmhORu/sE9ajCtthdr2go31R
         UxScoYxw/h/8YgNTfzn3eY6d/7DL2I5FN3b2JLaozt29Ubk0717zz6I5K5fn1pwT4tBs
         B94TWEnVAgpmMUQhj4yoyuUbP4Ocxc7VRTkcOZr2W7KI5LtriZra1ZjQ9jgJ04MPWtUB
         9wifdzmFuC9fizRFJVAIljEZL9q7rqkmnL4hkV3PQRLCfZ/4HmAcTeNJ+ocPxXvTsrPt
         5wtOV5n+/KO6Cww6E1LVmxf6s7Hh6Lf/kmtlS6+CGwCIUn3XyzbqS9kiRXPyqbdJVLoH
         OBTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=NT6LXQrFLvCg8zRZgH+OROXgxBABcVgOF1ZDbmvanTs=;
        b=ASkFSvrqXLdw5K3xjG5Q7Aq+gkKJhqsLqebDOx5MCg9DCK3wqsjdArZiJufh8jtD3l
         STIPatJX3sTdYmueSIGaWokkCmZwTgM7L35VX67WuJfe0fA8pCLX8aEtTJ+y6hEU0Xry
         rbkpR3WAzo3Gc114A3RSUvVdeosRPclq5FMGXsUDLrvE5mqi2q1V2shIaPAdAEYO1xPZ
         u53Q4s+J6sattt+/fg/Q7vKkFTDaVlJEcVrANP0MlLLNbQZxaNbTP0SXI7PUMaKXyvE5
         oDORkZlwrm8FHFB2uyemaDhKIwQu/Glo8bXTGeKLhYDSFiOvEDJKnXi1qTq48yY+QRE9
         RScA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533yeIy+w0yZiCX3808ZIhqFdKCPef8TqfmWVyptIYpamcKuAH2j
	WG403uckKXdCWPHH5DNfws8=
X-Google-Smtp-Source: ABdhPJzSKptPsAqpWd3LxCwhQS16wcmKL/1mKtgksiB8Nvg+3qRohXGBXLsV4MT5R4V/I87B2ASG9w==
X-Received: by 2002:a25:686:: with SMTP id 128mr4288915ybg.284.1591785146161;
        Wed, 10 Jun 2020 03:32:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:3412:: with SMTP id b18ls2448232yba.8.gmail; Wed, 10 Jun
 2020 03:32:25 -0700 (PDT)
X-Received: by 2002:a25:c052:: with SMTP id c79mr4364717ybf.23.1591785145913;
        Wed, 10 Jun 2020 03:32:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591785145; cv=none;
        d=google.com; s=arc-20160816;
        b=zWOPOGi4Azgnm09rP8QiaA07lw/BJ8AjNpejH9pmTjjignyPV5Q4B1+dREZIJOUbjn
         /ADGM9tYeNCVNbCxznaS+B02aK4hBZKPGylLXGhMUK7fSm2J+L52lzvQ1UECrAzH+9U3
         DFX54Ox7/rDHmXldx68gp+KAbAErNU+V+i5z1LXwNZTTccqZZ5n84DntWunmMmK0U5M/
         HkUbnE9V1+4KWpBtkWswi3pbvh6M8b/LKk/y0n7GsPTJeJA0FrjP75GzTQtj9wv8M8Un
         6wFTI5Wl+cfTK69DxfaOXYDUkWl1CGHkF0XB48Gmw5SfIY9/WdXWcclbMua+PbmgsvVO
         VxTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=PRyKPmzWHazaKtU7myB1bhyQkVx13VfEMjfy5prF0Lw=;
        b=YhTD9Lj8KwhCmDgmLmYY/TL0Rv/e0u7kcl0ESTmIykhwD1UAJU60BtYIrJ0BM9wcp5
         Omdi2zkcbpdPVDEspV2UBAs3dMvHXiTS0oJFI8Qx2WUNelvYCD0t5bPfw9qlMQladtUI
         jq3ZrxepC653Ebio20fjh2EF4stcT5Tad+XIECRCelEwOwg7t1RZ84fwoTjLAGsqmEkF
         I2oQ/JDOlQq87Gy2B/AHLesF8b60SAmyODxQs9ApXB2UahGH5k5wj/wX7LPI7naKZN3d
         7Q8ptBdBmQsMjkZsWKi7EjtSA0L6kZMYq7VowidFtrPUueU6Je3FeSar0Fk3NC+tuqmr
         sicA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=PHzbqu6u;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v16si393982ybe.2.2020.06.10.03.32.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Jun 2020 03:32:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 6FE8220656;
	Wed, 10 Jun 2020 10:32:22 +0000 (UTC)
Date: Wed, 10 Jun 2020 11:32:19 +0100
From: Will Deacon <will@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Naohiro Aota <naohiro.aota@wdc.com>,
	Stephen Boyd <swboyd@google.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Manoj Gupta <manojgupta@google.com>,
	Luis Lozano <llozano@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Vincenzo Frascino <vincenzo.frascino@arm.com>,
	Robin Murphy <robin.murphy@arm.com>,
	Dave Martin <Dave.Martin@arm.com>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH v2] arm64: vdso32: add CONFIG_THUMB2_COMPAT_VDSO
Message-ID: <20200610103218.GA18350@willie-the-truck>
References: <20200528072031.GA22156@willie-the-truck>
 <20200608205711.109418-1-ndesaulniers@google.com>
 <20200609203502.GA21214@gaia>
 <CAKwvOdnDeYQ-tbyW8=tcKcbbFxtDzqk8dCUSzbBYP1amb9a2hg@mail.gmail.com>
 <20200610084755.GB17035@willie-the-truck>
 <20200610102916.GA26099@gaia>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200610102916.GA26099@gaia>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=PHzbqu6u;       spf=pass
 (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=will@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Wed, Jun 10, 2020 at 11:29:17AM +0100, Catalin Marinas wrote:
> On Wed, Jun 10, 2020 at 09:47:55AM +0100, Will Deacon wrote:
> > On Tue, Jun 09, 2020 at 04:55:13PM -0700, Nick Desaulniers wrote:
> > > On Tue, Jun 9, 2020 at 1:35 PM Catalin Marinas <catalin.marinas@arm.com> wrote:
> > > > On Mon, Jun 08, 2020 at 01:57:08PM -0700, Nick Desaulniers wrote:
> > > > > diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> > > > > index 7f9d38444d6d..fe9e6b231cac 100644
> > > > > --- a/arch/arm64/Kconfig
> > > > > +++ b/arch/arm64/Kconfig
> > > > > @@ -1299,6 +1299,14 @@ config COMPAT_VDSO
> > > > >         You must have a 32-bit build of glibc 2.22 or later for programs
> > > > >         to seamlessly take advantage of this.
> > > > >
> > > > > +config THUMB2_COMPAT_VDSO
> > > > > +     bool "Compile the vDSO in THUMB2 mode"
> > > > > +     depends on COMPAT_VDSO
> > > > > +     default y
> > > > > +     help
> > > > > +       Compile the compat vDSO with -mthumb -fomit-frame-pointer if y, otherwise
> > > > > +       as -marm.
> > > >
> > > > Now that we understood the issue (I think), do we actually need this
> > > > choice? Why not going for -mthumb -fomit-frame-pointer always for the
> > > > compat vdso?
> > > 
> > > "Why should the compat vdso be configurable?" is a fair question.  I
> > > don't have an answer, but maybe some of the folks on thread do?
> > > 
> > > Our problem is more so "if the vdso is built as thumb, we need it also
> > > explicitly built with -fomit-frame-pointer."  Whether it should be
> > > built as thumb, arm, or configurable (and which default to pick in
> > > that case) are still an open questions.  Will asked for it to be
> > > configurable, so I sent a patch making it configurable.
> > 
> > It's configurable for 32-bit arm,
> 
> On 32-bit, the vdso mode is a side-effect of how we build the kernel
> image. I guess we haven't put much thought into whether we want to keep
> the vdso in Thumb-2 or ARM mode.

I think your guess is correct!

> > so I was just following that as it's
> > hardly a maintenance burden to support both. I suppose you could have
> > a toolchain that only supports one or the other, but it does seem a little
> > esoteric if you're building a kernel for an arm64 CPU.
> 
> We could leave the config option in if we ever need to change the compat
> vdso mode. But as not to confuse others with too many options, maybe
> add:
> 
> 	bool "Compile the vDSO in THUMB2 mode" if EXPERT
> 
> Either way:
> 
> Acked-by: Catalin Marinas <catalin.marinas@arm.com>

Cheers, I'll add the dependency on EXPERT since I agree it's probably not
something most people would want to touch. I'll also change the text to say
"compat vDSO" not just vDSO.

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200610103218.GA18350%40willie-the-truck.
