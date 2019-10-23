Return-Path: <clang-built-linux+bncBDQ2L75W5QGBBK4DYLWQKGQEUUQNFGI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43b.google.com (mail-wr1-x43b.google.com [IPv6:2a00:1450:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id C225CE20BD
	for <lists+clang-built-linux@lfdr.de>; Wed, 23 Oct 2019 18:36:59 +0200 (CEST)
Received: by mail-wr1-x43b.google.com with SMTP id k10sf2249254wrl.22
        for <lists+clang-built-linux@lfdr.de>; Wed, 23 Oct 2019 09:36:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571848619; cv=pass;
        d=google.com; s=arc-20160816;
        b=rZwQ1npXbNRvNu+aME5F6BE8FRyzShsGLZ2Bb7zITJM7uuMaBrZ8F/MZGHqZ84GPhg
         RCugfmlhfXrv+14eSxsbQVKxpAVaXK3LYL/mxGFTwPB9Wc0GYUo5pr4ZH44m2LoQqN0S
         llonC3UyF8/l1ZPUcYcETlKjxB7EI7Ht5za+l8MBdOHTIbWDD6eDg2/BKTrSGd7RNz+c
         UaZg/ftjX0QcEq8Q7kz1I7/ppiSpQqcSwgiN+rk64u17PIxnPIWklRS/k44hANlm0BQB
         FP7y8C96wUTcDVQuzkwp9GhwbQF/Gtzc/Ix5Ula8t/eixTFQKGTFiXcpp4qzLb8txtiR
         9wEQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=qA7LD7irllEE4CfNaeAjsuoysJcB3Li4qzIvZ7SAtrk=;
        b=uUXsJe+oAel6dpsIZisEp2FcRdFNKvLnOf4+yFE5wMEnMvau2u1LXGHpZeCukn1zyf
         xyflzILScSOvRb8cPy78X6owcUbEbnd/JcDSQ1qD6n9rmddZIoc5Yqj1q+26kbTC73Gr
         MkzN6DVP1iEngGWEkfW348ukuNCtypRgAZPNK8vgqeTgiYCeDuT3RvQKMuK0LB05Wxzg
         5oeHD3ena1ymdKTy1eRpFkUdla0TgjJ66XtWXykL54RL2/ig8sy0dH+pusvkC7zJ5fVl
         rLIIwz/UHfwCxtFJaOlmpV4juSILZbabZ0tDon2B7nxZufdnwCl02Rha/ad/oXIVmaBC
         5ePQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@sirena.org.uk header.s=20170815-heliosphere header.b=tVW+N1CG;
       spf=pass (google.com: domain of broonie@sirena.co.uk designates 172.104.155.198 as permitted sender) smtp.mailfrom=broonie@sirena.co.uk;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qA7LD7irllEE4CfNaeAjsuoysJcB3Li4qzIvZ7SAtrk=;
        b=Zc9eEHPl7EtytH8PYxI6apgGXjIRsj5FV8mVVBZUCa1t8r3qrlhM7BI2ooxPeBrES5
         E66xoXy+dUqX/Tip3SJqG3RYPWSRlLBU28itqBvMjNOHJzncT6PweSMy1I96IjzdmBa9
         mKEAESBpxgNI+/VYfCDC1y7FWCZQqD1OZSij6Q9/mpmqanyHdD0vfSpuce2W0MAz3MhU
         XVKVrNw/JnQ4gb9UVODLOKsm+amQ5j2vYlnfhB4txsb84kzSSS1kLHjlHBTDHCh0tKY4
         EPHkvN0tFDYkgPNaCLT6Gj5wa9qU/E6KXwJBnWdzWXgAZLPkDmMJnawN6e0b8e6ausK8
         8QxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=qA7LD7irllEE4CfNaeAjsuoysJcB3Li4qzIvZ7SAtrk=;
        b=ltqEpO0+4pUZCeD9LR2TW+8Ng4vbd+XXBhL13aUnHR/zdsWcGGWpNM8eQ4d99dV4A7
         HcnJa/HsxXVytMVfWUMqYeHRDAfxkVjmG6U7LzBFbWyM4+H2Umu91DrnxBaSQuhMeQXx
         H+xpH64HWl4VchOZqG8eHGHAS4SRfGL6UMKwbCbpiWbvceWQTEpHCnp/gKfblWqpFSPU
         PRvfzi46wQHgi8Rh4DnO9BIKzKrLYD4HM5AZXgGjMWtK2NxkxO5off8F+CLVRb4+woy7
         arUoVlk8QIC93tgApkTeYw6evkeSUMAz2rsmTB3/oF1MHwgOIOM7ktJ8jo1RglSyB9we
         mtOA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAU5uTCj8I3F7o2Fqwu5CreVjRnJ2ljXyLzBCnyPPsBPDDwtQe1d
	Cnt5hj6Jtrx1cUdjq5kI7lo=
X-Google-Smtp-Source: APXvYqxkVNHbNMd+twA/B/z3xKONVjH07W0fK9GfMBf//uk+m6B4PegRBZKZPoKFYlH7px/ttccyeg==
X-Received: by 2002:a05:6000:18d:: with SMTP id p13mr9134704wrx.396.1571848619469;
        Wed, 23 Oct 2019 09:36:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:a517:: with SMTP id i23ls1592049wrb.9.gmail; Wed, 23 Oct
 2019 09:36:58 -0700 (PDT)
X-Received: by 2002:a5d:4f89:: with SMTP id d9mr9660181wru.286.1571848618954;
        Wed, 23 Oct 2019 09:36:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571848618; cv=none;
        d=google.com; s=arc-20160816;
        b=VSTXNjtLOr5BTQvgQvXNC5fCpLFNwNm3atVJlgZzEF8L7DGoD6+bXUaCkYMMGFo6lu
         MkgyWTqxb7JwVFP++1SNQ/GFMyT8qhtUgGgtkQAS2bhfem9wsDLhgI0Pdf0aUK7ZOiXO
         0z8mn4EV2Wb9qc48c4jhTSNcqSaDyL6UQuOg1xxYZTJlmyPT7K21xQ92727K+NZRr0Ow
         vjMMT0A3PIJ/DLfR7Te8FT/yFEbgTQfIyuHm43agz/2WgEh6STlRBmGZ+dkAQDwWby3z
         wPIM8muq2afytFLIW5OFKWbs69JMPupsZumWJmr5SrVU8HUV0fUTnBE0Rv8vlPNmZrcb
         zFZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=m700Ovhtawx1D7xYGjJcWREMnvuFfL4T8auLxTc4g+o=;
        b=cUZfF8kvjsvVgx2EhAhWMXMWBqLx8nsr5ovhXEt9Nw80ni9UDrEj+tKgjjj0nHmGXp
         Vi3aRaNET+mevYujGDxh40ZakxA95BSAs3uUNtOsrekMxVNdFeKFP5ol8kUp8lCnyNSf
         kO0cgAl4ylmq0peGCNhZigX2EFyu8QnO2Rjgn2EfSVSv2kTHDLi/FnaWlde7d0WIo2BF
         MgWnD2nGm55LoqukOff8ENskN1AGq+O6wN313vBSTlXOULWi379jrpAeX0Ax3vOpw4TR
         rPYLEcElmZno+HAla0WtIiHJYe0zj7b2x5fCygS7tXHYSJ7xUjnahd1L/Ool4usF+3Gc
         oGZQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@sirena.org.uk header.s=20170815-heliosphere header.b=tVW+N1CG;
       spf=pass (google.com: domain of broonie@sirena.co.uk designates 172.104.155.198 as permitted sender) smtp.mailfrom=broonie@sirena.co.uk;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk. [172.104.155.198])
        by gmr-mx.google.com with ESMTPS id y188si159955wmc.0.2019.10.23.09.36.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Oct 2019 09:36:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of broonie@sirena.co.uk designates 172.104.155.198 as permitted sender) client-ip=172.104.155.198;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net ([82.37.168.47] helo=ypsilon.sirena.org.uk)
	by heliosphere.sirena.org.uk with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <broonie@sirena.co.uk>)
	id 1iNJd3-0000wd-He; Wed, 23 Oct 2019 16:36:57 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
	id 0F4AA2743021; Wed, 23 Oct 2019 17:36:57 +0100 (BST)
Date: Wed, 23 Oct 2019 17:36:56 +0100
From: Mark Brown <broonie@kernel.org>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Viresh Kumar <viresh.kumar@linaro.org>, Kukjin Kim <kgene@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	"Rafael J. Wysocki" <rjw@rjwysocki.net>,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org, linux-pm@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] cpufreq: s3c64xx: Remove pointless NULL check in
 s3c64xx_cpufreq_driver_init
Message-ID: <20191023163656.GH5723@sirena.co.uk>
References: <20191023000906.14374-1-natechancellor@gmail.com>
 <20191023032302.tu5nkvulo2yoctgr@vireshk-i7>
 <20191023104304.GA5723@sirena.co.uk>
 <20191023162628.GA10997@ubuntu-m2-xlarge-x86>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="/Gk0KcsbyUMelFU1"
Content-Disposition: inline
In-Reply-To: <20191023162628.GA10997@ubuntu-m2-xlarge-x86>
X-Cookie: MMM-MM!!  So THIS is BIO-NEBULATION!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: broonie@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@sirena.org.uk header.s=20170815-heliosphere header.b=tVW+N1CG;
       spf=pass (google.com: domain of broonie@sirena.co.uk designates
 172.104.155.198 as permitted sender) smtp.mailfrom=broonie@sirena.co.uk;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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


--/Gk0KcsbyUMelFU1
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

On Wed, Oct 23, 2019 at 09:26:28AM -0700, Nathan Chancellor wrote:
> On Wed, Oct 23, 2019 at 11:43:04AM +0100, Mark Brown wrote:

> > The driver should also have supported s3c6400 as well.

> Kconfig says otherwise, unless I am missing something.

> config ARM_S3C64XX_CPUFREQ
>         bool "Samsung S3C64XX"
>         depends on CPU_S3C6410
>         default y
>         help
>           This adds the CPUFreq driver for Samsung S3C6410 SoC.
> 
>           If in doubt, say N.

Note the XX in the config option.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191023163656.GH5723%40sirena.co.uk.

--/Gk0KcsbyUMelFU1
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl2wgagACgkQJNaLcl1U
h9B+kgf/Tu4Mcdc2QLhbFdhdn07a8/luddZop3Dn6jL3SW5BZhP4E4UY9ekG3fTz
CKU0uGyVB8qUYZKlNQIgwWmBghGl9HeqKuLUGEdsDcOxVxccnSJYTMk2ZNLz6IK9
lH0wfeiXPIV7wguJCqAkkVZVfxdFZcKoQx00n6rTWjh7Py5qzuJtzwf/DTaDGsjC
F5nqTo4vdQQSNm6WSAEX/I629qmL3Yd/ogB+jUVFYvcqxozLMcuae+CP5Nu8MH8T
w5LrxCUugVJnkaUm6XUkeO29V9d2qmA3f9YU9BmyAm8caPdBABp5cjciu0X4sSCk
03ZCDlb+0oZqbtMSlcjVKXin63aMOA==
=JqnS
-----END PGP SIGNATURE-----

--/Gk0KcsbyUMelFU1--
