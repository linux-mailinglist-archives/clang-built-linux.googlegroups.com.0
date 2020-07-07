Return-Path: <clang-built-linux+bncBDQ2L75W5QGBB74YSH4AKGQEIU26Z6Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3b.google.com (mail-qv1-xf3b.google.com [IPv6:2607:f8b0:4864:20::f3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 59F202169FC
	for <lists+clang-built-linux@lfdr.de>; Tue,  7 Jul 2020 12:20:49 +0200 (CEST)
Received: by mail-qv1-xf3b.google.com with SMTP id u1sf13232493qvu.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 07 Jul 2020 03:20:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594117248; cv=pass;
        d=google.com; s=arc-20160816;
        b=cVQkq7HGRX0qr2jdAsFuaSdCRRmyNdqlFTf9AEPMIMZKSqb7WONLlSjBLq/fTk1k/Z
         pE3QkT3G/l4ZG9XxPwMb7hpiWEFhdWnaZI4sVrevpdQeMizFtrdH989s6N7dHTq2sDCb
         aDIa/Hx143zBCsEJkO/2R18jfvJCO3DRCMET6zpG7LjE6X8lIUykmL1QD5V1QM3BSLdt
         FGsp+Ml4Tik/ODzCMEE2SetZt3gH2v3yz4Xgt75OOcBZuk8qbjldS+MlUsVRKSmcSLM3
         hBAt80K8GXgacDK79h6wzmaDAwMKhB0FgfDZJlK4vBgzB9L2qE1kYoRrwbRmt/CV3Toa
         Dnmw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=D1gQ4vAJ7a9P27OTMXn401YallAFGlDO1FVR21jqu5s=;
        b=0NX0UZD9vlFToaQT32bpNtV+H3kvOQLKInY4Wq21nNsTT9dR5SjnCJqB6w8IzjjoXm
         o+iTMJj4RDCuLi0assh9lpUq2Lx4Wdu5MNssGUns+AqQT0AaWfCdBe1wtUvihzgl3JTh
         oTOu/KHsZ0xWaL/sdCfw7xbPRqzKyuDMpAnW6qN3wB6T+EhnOFkRnWYHV76vB+f54GG5
         7ufU+obRhqp9scsKe2w7ESAOJyHkddZDAeiBwTEmGnsXBI224jGUNudWmLdeWRQD/ZCr
         mzgRnqCFffdXCsrV5raG6bF82+4Dhz1RZrUqatiXczjVzY1RfrXDmbURTZrgl5PJ6uUq
         gG+Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=DaMl84SG;
       spf=pass (google.com: domain of broonie@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=broonie@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=D1gQ4vAJ7a9P27OTMXn401YallAFGlDO1FVR21jqu5s=;
        b=K6svBFS+tfoE+aX9U3mxntnWAUhHM3EWS4x3XwP2p+GyQQO8NrhJBbSaM7hWQK8mM0
         knZ18cpQV+6fRK3ZP8IkvYI8bvpTLo4gNtKhVBrPntoxMRfWJhj/C7Cj1QDgnrtFckYD
         SVTOMsCQOvYI+bjGSZYmWkkejooSkiJTevrxoH2UCy4BMeB+Z2OB/YPuqqVAFuxuI78v
         /YDDHJf/QAHa7n24cSD9m8IOdwmpp4liigxTfnj8J+MzksFZmIAJk4/lNa8a8sdRzHId
         MmyZ6ZKED/MLzvyNmBedZrVT7pKconb5K0Jhf20FPeyhG9MUxx9Uh1g+iBXKQNV1crr/
         4OWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=D1gQ4vAJ7a9P27OTMXn401YallAFGlDO1FVR21jqu5s=;
        b=T4Y+TM84whLvVK61fKDrThq8oYxedzMFpp3aOgmDRNxrjMQLGwG69R+v+fc+Gl529s
         FAqjl2tzsJ2PRJ0kTVUj93osfAuz5tlorQJM0/n7p9eSF4mG0VHIF3mVT+na/+8JDQUn
         qAfGa/drMXBmD/HC0sfc+kHpJyHdhjK5tdgMgsvx2RcZ755+TSfYJGiDVW4oFTap7gD2
         dflsZQXEgRr8GJy3OkLGe3CGPVZDqEEZ8+atq5Q+5ODcPTzH6U1yR2dYn57OsosYiGwY
         T/xguTE9hLIXparvde0mXCUxNTbBgRpvAUgYRldl+MVK69S9e60tjlgU7hpsSLriYfY+
         Z4kA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531oShXYdZd740qquGdQfT7ZOq4ttj8wzW4uM3WJRu4C/pA/d7Wg
	V+c0w5hDse5KaQzh6TJaw1s=
X-Google-Smtp-Source: ABdhPJzjRNgkE42/EUUugKpDzNydhmWhWDJMONibkTI1KXXTAg4EnxXwIG/WmoDaM6s9NSISOSnS2Q==
X-Received: by 2002:ac8:1090:: with SMTP id a16mr55982859qtj.181.1594117248013;
        Tue, 07 Jul 2020 03:20:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:4e56:: with SMTP id e22ls7899990qtw.3.gmail; Tue, 07 Jul
 2020 03:20:47 -0700 (PDT)
X-Received: by 2002:ac8:c8:: with SMTP id d8mr55730009qtg.221.1594117247645;
        Tue, 07 Jul 2020 03:20:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594117247; cv=none;
        d=google.com; s=arc-20160816;
        b=HsMg4lMpC6B/x70oUc/N2Tko2VmBsTgJ9XvvQzmMxe77rja9UAIOxejaAjqX9dak+Q
         JHTg5na6Gz4ImH3pZeWOvgfcJbDt7xiWoCjwEYlnnbKLbSZHxJrvOp5CJeBIwJh5NABY
         bfxBhnnVWgBbBHV1xf6OLPnnGgY7hICBXF2/yyMszJBNwZpU7fBa7Ug4BngbD8TEyxqV
         OFbDLiGAVnSlqvtkWKHF9itaJgalldE+T7I7zPaLvV6Wom5i+6+2ElX3nnFmOomSFlqh
         0n3AXL6d6NfXts9lRj52uyws15qkF1QJt3LlrZsWSujlko9Sm3+v+h7RatyeF9uaKFpk
         KlCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=PkcT89RF+rNKPiYJ2NVnhgVw6bD2ZCcxYHYZ6FlrF48=;
        b=hOdWgdb+F3WiqS/Qum+gfn32SU6Xl/zj4mVM4HaUa9iJqj6C41fmHYlT1iRKiVHOiB
         wM7fRX1Ww+897rvZ6796qXJYJARDX4SI0eiipfDEo45lxH3MPG1pYKFMnmeFn8FKa/ab
         aJWrPMHFLIU778SynNeIO7ev2HGL/d1kW0fRMnpTrB15ihZ9gespzApZOi0dtIUgE/qF
         D9ODVD+LN/Pw55JwKzZQee8N3S/2HXN3xsqCJQH19+EHkUXNRPAdrOc92moWO8vbc7qs
         vu/FUQd3jR5wE4ge1Dzg3NxDiiSYnXwvbRCOLQV3EtGN7KKBg/CwYND2Cheq4DeiUa7N
         xVgw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=DaMl84SG;
       spf=pass (google.com: domain of broonie@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=broonie@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id j10si126428qko.0.2020.07.07.03.20.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Jul 2020 03:20:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of broonie@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 171B32065F;
	Tue,  7 Jul 2020 10:20:45 +0000 (UTC)
Date: Tue, 7 Jul 2020 11:20:42 +0100
From: Mark Brown <broonie@kernel.org>
To: Christoph Fritz <chf.fritz@googlemail.com>
Cc: Liam Girdwood <lgirdwood@gmail.com>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com,
	kernel test robot <lkp@intel.com>,
	linux-kernel <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] regulator: fan53880: fix Kconfig dependency
Message-ID: <20200707102042.GD4870@sirena.org.uk>
References: <202007071433.Z3bmcgjU%lkp@intel.com>
 <da3aece9abd23b12837e9abf908ee67f0c2c988c.camel@googlemail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="jL2BoiuKMElzg3CS"
Content-Disposition: inline
In-Reply-To: <da3aece9abd23b12837e9abf908ee67f0c2c988c.camel@googlemail.com>
X-Cookie: I hate dying.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: broonie@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=DaMl84SG;       spf=pass
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


--jL2BoiuKMElzg3CS
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

On Tue, Jul 07, 2020 at 11:03:23AM +0200, Christoph Fritz wrote:
> Currently the fan53880 regulator driver needs a device tree to get
> probed, this patch provides the necessary dependency.

It doesn't need it to run so it's better to leave an || COMPILE_TEST in
there at least and fix the warning with ifdefs and/or annotations.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200707102042.GD4870%40sirena.org.uk.

--jL2BoiuKMElzg3CS
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl8ETHkACgkQJNaLcl1U
h9DxZwf/R/uqIbe5MYZNckOGk1OOJBAvUf7WxND+oaQEes3BNouCRoOApMyQHAti
uWJZEzz5H+35rzTZgb9SK7LSfZ6G6hTK8DVDSH1ckjnELqSj95DCC2D5JbDczJtr
OZEVp0soIuSn3HQRDbrD71Nrxp3bcz/d3taRdms5PfAf1cC4Iow2OnGxRWcPyWWc
NIszbOdRDrZc/IO4VDaCjJhf95KOWxGeiRTqzR/ng+0sTjCwMv+eLz1h2ygiN55v
6Q0RVMyohM2sOO++n08HcQyI9m5Zb6HbpHYkv4e6oJ8KD756SMUbMYItlzYuXHkr
sU7OO7Yi5lYWgbcgKrNWB5tXn6cQNg==
=zBYZ
-----END PGP SIGNATURE-----

--jL2BoiuKMElzg3CS--
