Return-Path: <clang-built-linux+bncBAABB54EWTVAKGQENDONTKY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x739.google.com (mail-qk1-x739.google.com [IPv6:2607:f8b0:4864:20::739])
	by mail.lfdr.de (Postfix) with ESMTPS id BE7EC8715C
	for <lists+clang-built-linux@lfdr.de>; Fri,  9 Aug 2019 07:19:52 +0200 (CEST)
Received: by mail-qk1-x739.google.com with SMTP id d11sf84687968qkb.20
        for <lists+clang-built-linux@lfdr.de>; Thu, 08 Aug 2019 22:19:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565327991; cv=pass;
        d=google.com; s=arc-20160816;
        b=BdbBos6B30zalZ+mz6SOtbIEI9s0gtHAo1jFoyHYlBgwntRdyMMb3Hzz40z6BOkYzQ
         SZolUnjP2OJ6B27qLUn7I0Iw20hZndOBWLxXeCzQJIkGILTTBWctr6BIDxrOnLNcOqNI
         1ozEBz/cuvnhrrcNCncGnCpQOWmWhD0IbGPFkOziELh4kVbBYvH+8aZ/1VQAh57pTuBT
         QRK3MxFL6dfg5QO0SxRDaqfPjYft5Ihs7VUeTFPzO3tKhE/bf1Ojo1Us0dbfY8hbGbS9
         5yegNfb457TgnWTmxaNlk2rWyJEsk1P6+10q1lJ6dn6u7kr3pFsuGigxzzLzaZAoD7zH
         bZiQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=jXTsBL7ceMm9SoAC7k87OY8+S2Ip+9dJL17yPSKkB2c=;
        b=NhfWLvjtwaMiae6VIMFAwtzOdb5KbFbA7HZYTNiXAUQsyiC3LLPPmH/qlkj56vdMAk
         Pr8Vf4FI/V8SwdtWLHCDXuFIw3RLtDOwWfdj033WUmwsG2z2uVrNUBbggxnYxPD3BMbN
         7uYLwnD9cjF8xu6D30ASdASAUWS0iPkwTk3lSMI2Ab9EOENJUynoO0Vmu58plJAEMKAC
         pJn5hTfP8MUY0SAYQAhivCQn4twaktm6cffzAaBHKznrDDyGMAAl6zCozu0Nfh2DdUzq
         JG3v05ht3lITCLuZGbGoytI/tY071BAcgFNVa6N7bGfrNTBg24G+ND3h/t3Sfvwj/L6k
         hzpQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@sirena.org.uk header.s=20170815-heliosphere header.b=WhExpzoV;
       spf=pass (google.com: domain of broonie@sirena.co.uk designates 2a01:7e01::f03c:91ff:fed4:a3b6 as permitted sender) smtp.mailfrom=broonie@sirena.co.uk;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jXTsBL7ceMm9SoAC7k87OY8+S2Ip+9dJL17yPSKkB2c=;
        b=iH9IoEBa3pd3dvTmsje6LSD0rLtiWjLsI9IgsE95Brzn7GckiAqF4NREGnzEyao30g
         UdqVbCz7eNtOSQsD4dOzaVI/KcyQFLfW1h8ZLa5rN3isXDMpig9CDiy1ANQjeRCp2Ssf
         O5PWKKCniSfvtqpSOsv1inyyKyQ2Z0YrPkRIl74v1FvuwC6Kwzeh8limGHTYdFq0rjVC
         dzS6IAVL6jUsKCaC/QGvoG2/DEj1e4Evog06fpwxRQwphRQ3C3KFUY2Mwv9/Cwd1hDy8
         8RqFWLEXVgtt2t3UtDCQcNsu+L9+zequrKWQPBGoWk+4n38dWiRMorvi9WuOLbkMQMca
         akfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jXTsBL7ceMm9SoAC7k87OY8+S2Ip+9dJL17yPSKkB2c=;
        b=QGIFSwltVaRTr0NbpyZyPq2jbkN+ST+aWBuXE2PcSv8LCcBEQI0mR8BFajrjNdSv8x
         JZxZ6crKe1lxCNhXElnB3ZB7J67i+jmbcmocPOuZf2BtVv5K9cNats6Ecp1U2dT4Tk88
         OCG4DrTdI09S6wwGBNu0Qwi+wRuP4/LoZlIXf/2ITMwH74HBbsEbL08oHZTMSSLMe9vd
         e0s3ITIqAaKNADwKtw5YQ0BeJs/fYou7VlkVWoAQlIXw8MyhGdSVce+ijAZJO3lNgxtp
         gPzdMedYi1hpwAhGGOAAbB7Wm9CYYWWG4kDWNVd3ruzyCFo/5FNidi5XVe+miV0TDXAE
         CCDQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUbF1iBka29tR6zN93wPHxQ6N1co+BXasVym8Hq9cQ6NERa0eU4
	GVGxwLxTNW4iFlMA7xYHpsA=
X-Google-Smtp-Source: APXvYqzEaK7ao5IZ9zSG/X5WBhY6dbaX3V1L+cnjBvfvL7/LkxQCMLRc7Ty99smkd+tnyOoTOhTc7g==
X-Received: by 2002:a37:7ec1:: with SMTP id z184mr16737888qkc.491.1565327991690;
        Thu, 08 Aug 2019 22:19:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:4c97:: with SMTP id z145ls516040qka.2.gmail; Thu, 08 Aug
 2019 22:19:51 -0700 (PDT)
X-Received: by 2002:ae9:d606:: with SMTP id r6mr16283064qkk.364.1565327991571;
        Thu, 08 Aug 2019 22:19:51 -0700 (PDT)
Received: by 2002:a37:4bce:0:0:0:0:0 with SMTP id y197msqka;
        Wed, 7 Aug 2019 09:19:53 -0700 (PDT)
X-Received: by 2002:a19:4f4a:: with SMTP id a10mr6387138lfk.30.1565194792798;
        Wed, 07 Aug 2019 09:19:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565194792; cv=none;
        d=google.com; s=arc-20160816;
        b=t2eZS7R/jUs6CuDlg5AG6p9lArv60D+yQzyJxtjVwXqWDTTwC52dqONX83ct0fxbAO
         SqN5FTy7f4dNMwSktfqtgVxANrXUFWj323eK2fiCq0z0Pbcll/hiXNwdYRmYGLdYM4yV
         vVx5tb2mc74UKNhfYoMaxAORgFohioDTJNFsE3wKQv2EIVrExb4Q4sXQiwSDTV60ZJlf
         ceQswN7D41h15w81IovFxZs4acDRZAdARxfsseV6tBJ/oPxtgLQ/0f2IracsC36yP4cq
         He0SJamaSIbJvnCPzPDX2xhSYQRL6u1YS/Cn8CE4SGrQ9bl3yxKqBhwB5i6DZ+xQdUHf
         Uy5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=0wVTUg6H7YDjXRewiulRUWBWXskse+mkWQnGN0LLKAg=;
        b=YJct/ADroGIl1YGDg9uYNmD8jKewjBsHMJnElxF1ZOo3y43TyBQryVMDmQiIYWT4/6
         52pQY9p9ecSGBKr3FW/xdy7K972wSvHzpy/J2nadlNrojzlQQEyQDn8+FwUKM9OurxPv
         OfWmldvqYLfVGgRUL8zLiLX5fQiekzlM9if/Mkav6eKbifZ6iPzmgWDxMK7LUR+CiPiY
         MKunv0mQVpK3tKKgUiq9xkqm/EjqJ6GPbNl5OWtzVY0uvYXo3STXmkngwaJvbsK3quBS
         YMo7CQE+sVo4PIFdHUtcFO42yY/9SkmxJ+JftxbPX4smkX20sC8pbaHcaguCULOmmSXt
         aMLg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@sirena.org.uk header.s=20170815-heliosphere header.b=WhExpzoV;
       spf=pass (google.com: domain of broonie@sirena.co.uk designates 2a01:7e01::f03c:91ff:fed4:a3b6 as permitted sender) smtp.mailfrom=broonie@sirena.co.uk;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk. [2a01:7e01::f03c:91ff:fed4:a3b6])
        by gmr-mx.google.com with ESMTPS id b8si1641074lfp.3.2019.08.07.09.19.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Wed, 07 Aug 2019 09:19:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of broonie@sirena.co.uk designates 2a01:7e01::f03c:91ff:fed4:a3b6 as permitted sender) client-ip=2a01:7e01::f03c:91ff:fed4:a3b6;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net ([82.37.168.47] helo=ypsilon.sirena.org.uk)
	by heliosphere.sirena.org.uk with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <broonie@sirena.co.uk>)
	id 1hvOfG-0008EZ-JD; Wed, 07 Aug 2019 16:19:50 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
	id A76942742B9E; Wed,  7 Aug 2019 17:19:49 +0100 (BST)
Date: Wed, 7 Aug 2019 17:19:49 +0100
From: Mark Brown <broonie@kernel.org>
To: Mark Rutland <mark.rutland@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Tri Vo <trong@google.com>, clang-built-linux@googlegroups.com,
	linux-arm-kernel@lists.infradead.org,
	Matt Hart <matthew.hart@linaro.org>
Subject: Re: [PATCH] arm64: Disable big endian builds with clang
Message-ID: <20190807161949.GH4048@sirena.co.uk>
References: <20190806183918.41078-1-broonie@kernel.org>
 <20190807130111.GE54191@lakrids.cambridge.arm.com>
 <20190807130527.GD4048@sirena.co.uk>
 <20190807135618.GF54191@lakrids.cambridge.arm.com>
 <20190807152934.GF4048@sirena.co.uk>
 <20190807154314.GH54191@lakrids.cambridge.arm.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="l06SQqiZYCi8rTKz"
Content-Disposition: inline
In-Reply-To: <20190807154314.GH54191@lakrids.cambridge.arm.com>
X-Cookie: Dammit Jim, I'm an actor, not a doctor.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: broonie@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@sirena.org.uk header.s=20170815-heliosphere header.b=WhExpzoV;
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


--l06SQqiZYCi8rTKz
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

On Wed, Aug 07, 2019 at 04:43:14PM +0100, Mark Rutland wrote:

> That confirms what Robin suggested [1] from looking at the config: this
> is a little-endian kernel.

> The Image header flags the big-endian bit is 0, and it succcessfully
> boots with a little-endian rootfs; log below.

Right, I've confirmed this myself.  Sorry about the noise here.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190807161949.GH4048%40sirena.co.uk.

--l06SQqiZYCi8rTKz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl1K+iQACgkQJNaLcl1U
h9Dphgf+Jy/t08k4PZGWSDE2uhIqTS8swN/D016mL3yLe1F1+cci9o5fzoI02ebB
Ri6rFj0P0B8zNruY926v0LH0L5GBnMlnkU+yDpkcvEtnQvjpYM1t/hHrTEzKaKFp
lr2lARWMiO0oNz+JiQUB9PzVOVFyWubF2DONld9xOaanbnbZg1uRIgvh3G81iOHj
my5X2cbjUtaYf+WoiAy/1p0rwG89e5m+CDcbWjp3BRL6VSSO0Oci13wacA6niQKI
P941O5NsurLeq9DDLeqAL/sM+SWpY5MqIu019aPBMbXPlzAnfgEXP/x+EC2hLll1
J+34aHaFO9Kf2izyLyJuqTrX3I5Rvw==
=+blA
-----END PGP SIGNATURE-----

--l06SQqiZYCi8rTKz--
