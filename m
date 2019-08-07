Return-Path: <clang-built-linux+bncBAABB54EWTVAKGQENDONTKY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x738.google.com (mail-qk1-x738.google.com [IPv6:2607:f8b0:4864:20::738])
	by mail.lfdr.de (Postfix) with ESMTPS id AA51C87158
	for <lists+clang-built-linux@lfdr.de>; Fri,  9 Aug 2019 07:19:52 +0200 (CEST)
Received: by mail-qk1-x738.google.com with SMTP id x1sf84592803qkn.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 08 Aug 2019 22:19:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565327991; cv=pass;
        d=google.com; s=arc-20160816;
        b=CY7kAbPNDPiNIlYp8QK2NcEO/ZGaB6mlMFxnOdeKXXATN6qkZb5u6sNjNOiCIJwI2O
         Mfp9PKGEZXzWrFmogzH9D4gC5DQ70U83blvKp5wRYIGGebklsG94sOKFMmwxQZp+DB0u
         gYUxDqrAnZ0zxI2jEf+MGaxSZDZBPEJlsPen738CmVKONQcVsoxtEzV4WJmnZAA/PxAR
         uXiCB4ne8y9biZsHcSDRDufS6PUfuJRxZ5v4VjDKLFVf9dDBuIzBdZDAbZ5SDAbWgJ6I
         G/i9+wdGkJqj/JiVJYHWRKPtVCZfUyieaJfzE5R33a4mERWB93YWLeNjHDt3Q0Q95DCe
         41XA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=dW5LFf7pexMz0gx+dZC25aCemWWLrfQymEUi+FmoEgE=;
        b=LjpSyrZbvxKX3o4XOjPWuZOJ5e4Jtb3+dQQJv6GveMx/SNrg6TyPXeEspB3qNbpP6v
         wuCdEzp/m15U1IhXa/RvcVIzI0gkHwsprcSMUAZ3L1Lh691IZzYauSxgyJJ5hwmG8U41
         I/EG6l5lpPBFPvNuEq0AxIJLPL7oYzfNpx7CtXqhTykh9/mhT3iZ7RtQFjMCbzJmuZTG
         +aOIFB0yuxvTrDfSJAgbCxsDXnUEyjpFROSXaGiqzOydD2zvrdwY6XHOcplFNxY5uy2w
         2ihARygjdPcdCkA+njcbrp9H6JoCFI6/LKiJKogapoPph3DrnPHoAcMLVOe/2RWUF8J0
         H8FA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@sirena.org.uk header.s=20170815-heliosphere header.b=DCGDvR5M;
       spf=pass (google.com: domain of broonie@sirena.co.uk designates 2a01:7e01::f03c:91ff:fed4:a3b6 as permitted sender) smtp.mailfrom=broonie@sirena.co.uk;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dW5LFf7pexMz0gx+dZC25aCemWWLrfQymEUi+FmoEgE=;
        b=pW7CDEqhwyKXLzqS3ORLSS40Eqd2PrJ1/G6GVXH7cjSdnfEBpKHiZtbhmGytJtC32L
         iYd+jNEcwdc0m3nXfiFXMgtzUyYhWKBRwWIiibln58LYayAC1MKQoJdz0KLSFrSSmvmO
         IaoBU8h5T0KnPfv0teS9RcK2VbA25jtA0+vH6ByylyYiEsCzrP9/hOT6XnLrqWKdSi0D
         bXY3jDw13HkUIzXs2YkG9klQ5xH17ixlYrQi/XtoTr+UlWXYow2DTNoRhlgpNnMnG/xv
         V+uzjCy6bAZ2EFsj3jptBvWLoTsXBlhkO5GRGbLAotC/9Fn/sfMqCa6WPJxDh+2Syza5
         acjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dW5LFf7pexMz0gx+dZC25aCemWWLrfQymEUi+FmoEgE=;
        b=h7XMmn6mb+JqELVrqcz6DEv6rUmE/qKv1yvw6PWpwqHxjxBRp7Hx7Oh9hAn6NP3ok4
         iMqm6qe8WPEg+XiXS+NfYl/FT2ynVyc5Vm/GG4HJJ4++8uh/hICh09IYu1Or9WAVihX5
         AJEnlJkzJO7EztuMsi7g2622RmjzskuwYK3fBs4vwQtPUTQZZdWLBFlcu9qV3XcZQEDF
         UWl2Ix7rlgZDZw/Y9n1VCYSDFNe+oKBLhiNfkJatZ1UwvVrQGW3XdOa0XbkQfvvks3+e
         pg45M9dw2l6838Ae7HSoGXaFJZZzNHMLUmUdRWEs2VaKeBmIdEP/mJRfXPLjzWr4yd8+
         BbKg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXtZaS4rKNMEyLNWpni/B8ECo8L0GlhPzDJuRq44c3WR3uwoZiv
	ebH2JAXzejkbuENSlsC7MJs=
X-Google-Smtp-Source: APXvYqzZGvDQiBZ2ZRclAJQWkYbpCD9qcXelQnP9MJDomv3+IBdh5dGlV87jadeTDpiB89HleFbVHA==
X-Received: by 2002:a37:a484:: with SMTP id n126mr16636811qke.73.1565327991679;
        Thu, 08 Aug 2019 22:19:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:2d4f:: with SMTP id o15ls2403850qta.16.gmail; Thu, 08
 Aug 2019 22:19:51 -0700 (PDT)
X-Received: by 2002:ac8:540e:: with SMTP id b14mr16090341qtq.134.1565327991575;
        Thu, 08 Aug 2019 22:19:51 -0700 (PDT)
Received: by 2002:ae9:e016:0:0:0:0:0 with SMTP id m22msqkk;
        Wed, 7 Aug 2019 09:01:49 -0700 (PDT)
X-Received: by 2002:ac2:4d02:: with SMTP id r2mr6137880lfi.138.1565193709074;
        Wed, 07 Aug 2019 09:01:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565193709; cv=none;
        d=google.com; s=arc-20160816;
        b=zoOS0AcKfojQ+ACuFTqPXP68/xiut8BsMOSPLr0FpEzfmAqE/tNIYiwwEbFUb5eeCx
         ru6QfJ2VaWeGVQ+Y8q+/RjPuf77DE2i907VHvw4sCbDYBuoP6OGCAPh2eT9Erj/fULzy
         cPQm8+TgsmpUqsLISsIcab2pu7pW62y2ogU8JL567l3up8aIxqduQL0K5X4VFAJSRTAM
         3pkkOVRh/EQKXZDVdEpTg4KkUHbGuVfq5DhZnHbIc46eRmgWGAH9rRwUjjFLYOr76BH1
         0G0zfhrMxOFwW5jm0bTAy1ee+3uAPPipPc4yJwfv90nmkbSZ3MvJLcyHSEPUGoRq8iir
         Mxiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=NSm6zInYJNJrj1rZpsXvLUbd6Z0ZiuTo9phx82i1NjU=;
        b=Y3liRC3AE2b75t5W2nnX90IfGtPcELMa7ciGTeV1+6kKdfDECUSmM/10AK1JahITCu
         GxyfXNhAuhLDH7Z7GZztLkKJZSR5Lhyfff1AVSfLD/PhVJt6wkpQ6xSI50iKXWcByhG3
         FYxGYlJxQ1s3RavM8TGsi1Kp1/KQc2ErGFkYreeTnsq6HtSPs5P2L0kgTEhQ8LBtcVDV
         1hDwnr5N5FRuGkp6D5Lsmgh/Zd25w83Cz9nzTABrA9x7676RwxO2v3LzxjfwVOWD+1yZ
         /3laRlkN2oOIPzX4yUKeIpQL5Q34KRLdedKSHKFEWUa2rIdvksxdfbHHqeHJlTMlLk8I
         qvLQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@sirena.org.uk header.s=20170815-heliosphere header.b=DCGDvR5M;
       spf=pass (google.com: domain of broonie@sirena.co.uk designates 2a01:7e01::f03c:91ff:fed4:a3b6 as permitted sender) smtp.mailfrom=broonie@sirena.co.uk;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk. [2a01:7e01::f03c:91ff:fed4:a3b6])
        by gmr-mx.google.com with ESMTPS id h11si1764832lja.0.2019.08.07.09.01.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Wed, 07 Aug 2019 09:01:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of broonie@sirena.co.uk designates 2a01:7e01::f03c:91ff:fed4:a3b6 as permitted sender) client-ip=2a01:7e01::f03c:91ff:fed4:a3b6;
Received: from ypsilon.sirena.org.uk ([2001:470:1f1d:6b5::7])
	by heliosphere.sirena.org.uk with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <broonie@sirena.co.uk>)
	id 1hvONm-0008Cy-GV; Wed, 07 Aug 2019 16:01:46 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
	id 3BD852742B9E; Wed,  7 Aug 2019 17:01:45 +0100 (BST)
Date: Wed, 7 Aug 2019 17:01:45 +0100
From: Mark Brown <broonie@kernel.org>
To: Robin Murphy <robin.murphy@arm.com>,
	Matt Hart <matthew.hart@linaro.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Tri Vo <trong@google.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Nathan Huckleberry <nhuck@google.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Will Deacon <will@kernel.org>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH] arm64: Disable big endian builds with clang
Message-ID: <20190807160145.GG4048@sirena.co.uk>
References: <20190806183918.41078-1-broonie@kernel.org>
 <CAKwvOdkvFowCWP6cpKoMOz+EWojBXJWs3TzuTvn4180sVu4ayw@mail.gmail.com>
 <CAKwvOdkBhuzJ9L6L=+_PxSc4u3soB0VsiNUsjt=J55LgdYddnw@mail.gmail.com>
 <20190807123809.GA4048@sirena.co.uk>
 <ec7bef46-7dcf-d165-b772-b4fd6055d964@arm.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="DWg365Y4B18r8evw"
Content-Disposition: inline
In-Reply-To: <ec7bef46-7dcf-d165-b772-b4fd6055d964@arm.com>
X-Cookie: Dammit Jim, I'm an actor, not a doctor.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: broonie@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@sirena.org.uk header.s=20170815-heliosphere header.b=DCGDvR5M;
       spf=pass (google.com: domain of broonie@sirena.co.uk designates
 2a01:7e01::f03c:91ff:fed4:a3b6 as permitted sender) smtp.mailfrom=broonie@sirena.co.uk;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>


--DWg365Y4B18r8evw
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

On Wed, Aug 07, 2019 at 03:41:25PM +0100, Robin Murphy wrote:
> On 07/08/2019 13:38, Mark Brown wrote:

> > 	https://storage.kernelci.org/next/master/next-20190730/arm64/defconfig+CONFIG_CPU_BIG_ENDIAN=y/clang-8/lab-baylibre/boot-meson-gxbb-nanopi-k2.html

> I thought it looked suspicious that there were EFI messages in that boot
> log; from that job's config: https://storage.kernelci.org/next/master/next-20190730/arm64/defconfig+CONFIG_CPU_BIG_ENDIAN=y/clang-8/kernel.config

> ...
> # CONFIG_CPU_BIG_ENDIAN is not set
> ...

> I think that's a kernelci problem...

Ugh, right.  It's possible there's some issue in Kconfig which is
causing the steps we take to add in the extra config options to break
when clang is used but I'd be a little surprised.  Copying in Matt here
as well, I've filed a ticket in the KernelCI issue tracker:

	https://github.com/kernelci/kernelci-core/issues/136

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190807160145.GG4048%40sirena.co.uk.

--DWg365Y4B18r8evw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl1K9egACgkQJNaLcl1U
h9Bj4AgAhMZui+rohf8QMbYiarZ68mz7uXbbRqjQmYwMTf7+00UmiC6Cp1cMqH01
kK7SqjoDPHzp5b78LLUtJYBP0/ehCoyld9jOhYIbEf9utLvcgtiPQtzxqsT7L7Fv
VUT9NQdqhLhYMzqHo5CubYr0bYmmfyShCJDX7H2kxKZ7fPLYixmCP6LIi82WAh4c
81dQsVVGOKWY5hP1EK2WoBrdgxdUNYBfnxBn4+FhN0un0FP4BiRPvRuODPY/1+iS
zDDq+8OEpnXehGFdl59jQzd+qpGBCmvVuU4ytR3jNsXc3F9a9ls4i1dGVDAcGHwW
Q0olv+1mVUWd7Dafl7l6sSJVf11thw==
=2gJi
-----END PGP SIGNATURE-----

--DWg365Y4B18r8evw--
