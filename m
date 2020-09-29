Return-Path: <clang-built-linux+bncBDQ2L75W5QGBBM5PZT5QKGQECRXTXPY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 08B3727C4CB
	for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 13:17:09 +0200 (CEST)
Received: by mail-pf1-x43a.google.com with SMTP id r128sf3362777pfr.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 04:17:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601378227; cv=pass;
        d=google.com; s=arc-20160816;
        b=T5SD3mjA5FG2d4afMve0eLrMsHQPLZkYaXmt90Z2Gx5kR3IyicuyTK5GDnMk3dpHda
         zVXQtnFmC3N7koaS3dSL/1ITLB+fXw0nWkuTFCWyRO/biUlGqCIGvH2HspvLmbIFFSeS
         VklMrAC9i2+C0/9+069JCoLuZbVkj0FNGmgs1bKR67e9q6PDjKZgxpyCbjm5AhdOdNNK
         I2OBB8lvkVt/yrpxphYnWsa+0RaOnLbdhh2sR8v8zDVsL9muO1gWYgeZtvJpT8EcGgxs
         4pgd3o/Cc1uKTu+2YNwqH1WYqY6UJ2rfOVK74wfVCZMLwKAVd2TbF3zBu5BsGmTFgGCB
         yaCg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=/FJLn2NuNnNDXulGs/3H4vUgBEr/SltZdGPS7+SKM4o=;
        b=rbKOFPuPikQrRz5QJuZ03BEJLj4YRZt/7FSXZUNWvaAb/U8qppnlu6y9YtKPhqeEbt
         7hk4mGlGwOrJt61FlOGLb3pcf5t1n2nS99IA54pKTXaByxEkXLOjffrnPYXeZEY4sAU0
         Kd/I/pbRIbRA8spGOXZdg7Th/+c7vFRMA4atYkpj1UwBq52yzLOpWEqXIXDUFBTX93vz
         NyyUN0Yx0t9bQ0SmcQm/LZ/Jm6j5uGjJZgBnTzJVFxGqCg994pq6YYosa+YYMgWlpcFR
         PKu/drhQrHuuNRPbHaQYJs2I3nHLg/ZUVkGDZU9zWmaZcNdaF6hyqpyVkQmSWJtXLnau
         ez7Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="VY/kRn0R";
       spf=pass (google.com: domain of broonie@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=broonie@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/FJLn2NuNnNDXulGs/3H4vUgBEr/SltZdGPS7+SKM4o=;
        b=LPZCZmcLV33CU9gzbj47T8yS/2brdDay5rZF4nB4XSxIGKUQx3gHDfWcyWpLBvU2e8
         a/9YJTYYfI8pUqhJ+nqOdqaKtBOJ0Xcxee2ti1e8/73xSUWnxZ2PEa9zjWZNT+K9RDnA
         cV358GmoYeS8nCfudPUqpIF13SUq6r70NHcre2gNrVzZq5qHW0W4BU/b+i0awgBJqjLE
         Jb9+BRjoj72X20sR2kC3X/QRLjGvFQfx1A1chO6Y6X58AC9zLudmdm0DEwLEzPi+/IIH
         ozXqV1oW2bf8qWGspGGOL7d7eATOYY1/VM6RseCAQL0/X59sRGU8eQEbpKvoeCQmcZ9q
         GcbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=/FJLn2NuNnNDXulGs/3H4vUgBEr/SltZdGPS7+SKM4o=;
        b=OnTdSkAgVUAZXajRqnz5Rii2ETCQGt+s5eewHDVZO7+ye9eA5mpYBq7E15kZppnF9Q
         rT5EhkL+Bh49wKiNa66v9qb9t74ZgMmp7z5c9DRq0hXeIyiCji6Zoaj7XckZ+K/l696O
         SQiTS+luubQc1JU4IIKHsW4iLguaSaz0Agfj95BBsVRtYMjo24T9JFMaeZPkkWrA5F9L
         tvFeC+gz9XbyzJAYNLx586j9xtOU4rLthkeIiMEKHIsm3VYrrH6n6f0XQVlNHTYxHUBP
         rZsmx9vgdLGxuFpL+/iVvGJknQ6p9XeT0iWm2bC85EjWwJcazFuykJOdyfeOl70DsKzJ
         ofcg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5318HmUeVPmV+Hx9tasdNMrsLANtNuyt9X21g2uyXDIWMLnRAjdI
	dBYQPWddxfJ9jENVDSpGRlw=
X-Google-Smtp-Source: ABdhPJxUBUoE7H9kPNLS69vqtZHByFV00hcVNOjRyJ3M2JXhSU5K24zCM2xT0cPA6yr4SRTPDaqpew==
X-Received: by 2002:a17:902:d88e:b029:d0:89f4:6222 with SMTP id b14-20020a170902d88eb02900d089f46222mr4118420plz.10.1601378227753;
        Tue, 29 Sep 2020 04:17:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:ba81:: with SMTP id k1ls763164pls.5.gmail; Tue, 29
 Sep 2020 04:17:07 -0700 (PDT)
X-Received: by 2002:a17:90a:7bcd:: with SMTP id d13mr2866883pjl.18.1601378227268;
        Tue, 29 Sep 2020 04:17:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601378227; cv=none;
        d=google.com; s=arc-20160816;
        b=phSX7Ei8Km+TMkPGpQBbXJyh46JAFQxKRE1JC3rIo1zbguOJpS6/zrSHHuP43rI8dO
         apQuuAeH6pb0NPKsDXZaAIiU+imFUEwIHWjmibPnd54SAc7yZ9GFhocc0kE6bhepmuT9
         dhadJhtBS89bxblGD+eFFB/0xlaO0ZuAYDVZt0y5NOjUDKx1baKV2D4OwUS2WbN5EpWi
         eZPxwzTdBRbYpNvzHGr0aR1bmFaRWYAZ/bjgDAZTHceJFRxPVZUU3aXw+2Whqc2Bh+c0
         7iTIBlcZSod1lYjeI6uprXa9m88gPFVGyE1CkIA2lYABl6ZCmBZg1G1/cvPf7jdpuzr9
         EfdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=hI0i6iq8KBS5xcshw5o5PCNNOwrKpBjtblqgVD/O5qM=;
        b=Sj/t2nZ+EiBiFvuwXg6MNC5XIkBe07w2/M34noy9/1Tgun4ZsmNpKqxOe+KCRCKgZK
         4T4/m/+/Z1qftOiZMsXnHv3Kev16jjCloRfd2XWV3Mr9ORd4CRcDl0lu4iR3pFLt7NTR
         veXMv89eIgChj38DtmcQ/3HfAwcUnNk8FtozWtzqqepjeOppWjgc3uP9HVsxwEm1aknh
         uytCgVRH7ep7PXvE9pCjKdeIFRy9AN9/irkf9gDiGoMZ+ZPKJkVMQoEfkgR2AEugqFEE
         QK3M7VJGdYf1wzugx5c79o0sfAI0CGSoRxvG6ov/CuRgHNs0FNPN1BxzOdxbJwABeSiZ
         WV3Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="VY/kRn0R";
       spf=pass (google.com: domain of broonie@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=broonie@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c4si298755plz.2.2020.09.29.04.17.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 29 Sep 2020 04:17:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of broonie@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 603C821D46;
	Tue, 29 Sep 2020 11:17:06 +0000 (UTC)
Date: Tue, 29 Sep 2020 12:16:07 +0100
From: Mark Brown <broonie@kernel.org>
To: Peter Ujfalusi <peter.ujfalusi@ti.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	LKML <linux-kernel@vger.kernel.org>
Subject: Re: sound/soc/ti/j721e-evm.c:528:34: warning: unused variable
 'j721e_audio_of_match'
Message-ID: <20200929111607.GA4799@sirena.org.uk>
References: <202009271553.4OjMpGkX%lkp@intel.com>
 <76cae106-b643-57a9-e82e-48e46ebf1b70@ti.com>
 <CAKwvOdnsQY6S+3zAH6_SD0ifbUaSDFj9mBdhF4GVq6VB=tjFsA@mail.gmail.com>
 <20200928180412.GA4827@sirena.org.uk>
 <c97e8363-1e8e-38fe-3214-cff47f09e459@ti.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="+HP7ph2BbKc20aGI"
Content-Disposition: inline
In-Reply-To: <c97e8363-1e8e-38fe-3214-cff47f09e459@ti.com>
X-Cookie: I left my WALLET in the BATHROOM!!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: broonie@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="VY/kRn0R";       spf=pass
 (google.com: domain of broonie@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=broonie@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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


--+HP7ph2BbKc20aGI
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

On Tue, Sep 29, 2020 at 09:00:02AM +0300, Peter Ujfalusi wrote:

> The ifdef would be preferred if the driver could work in non DT boot (to
> save few bytes) but since it is not the case here:

What I'd *really* like would be something in the of_match_ptr() that
flagged that there's a reference to the table for the purposes of the
warning but still lets the table be eliminated by the linker.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200929111607.GA4799%40sirena.org.uk.

--+HP7ph2BbKc20aGI
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl9zF3QACgkQJNaLcl1U
h9CZuAf+Ij3HfuLkZJWbEfxbfM3dYO8XiA5hlj+nrX9Ct5qyHSq3IpRbuvLK3AN1
4dhUoXDHQlyDxLPLLQl6RRsJ6BkXj3ViS5shyt2TZKTSCMZ7FddMQeMB+n/GBonx
F/cg06ab2e6+i+f79QnHMBveNqmqvG7CfJyjeHviR731da4H4a+n/ZCTnGor+oF0
lccFHhSmWCQgT50CKcz+378ceVU2nESlTkgmCr+QNPKI3BHRmgZnt4OPDO3Ackvo
6epGaQB0MuM4vNA1iUoBLQZXx4JX2C7smvLJijjqXhRwF2j9HT5/HLT6H56o/iXo
EDYsLYxGZn8sycp08doT9QZyxjTxbQ==
=Fm8B
-----END PGP SIGNATURE-----

--+HP7ph2BbKc20aGI--
