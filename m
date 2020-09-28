Return-Path: <clang-built-linux+bncBDQ2L75W5QGBBV6LZD5QKGQEZINVA4Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id C232E27B40B
	for <lists+clang-built-linux@lfdr.de>; Mon, 28 Sep 2020 20:05:12 +0200 (CEST)
Received: by mail-pg1-x53d.google.com with SMTP id n24sf1192251pgl.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 28 Sep 2020 11:05:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601316311; cv=pass;
        d=google.com; s=arc-20160816;
        b=jOFkOiuUbtnWC+yWVf10kbhBxhAaSC190x0mPiCbeNqbkl3LMHxIfJ5jJApIcBXzWn
         coh6DoGPmKdB8okEyWrFb5yiG9WSbHFkMuToI3tmXUdu3p4t1RHVxHA0xRJT9h6VrJCG
         yNZUAP//vj8MXbnmlP5HZRLbxf3UGtpa49NomMtfXbfDiEqFFF1nt1lxFBROugKOsrT+
         wJjLYd4Ahn/Qs2ZupiPQ3GYpMbNPMnO1kmsfOWFMVTjn0v5aKJtEpqdxE9Ogs94sFQfj
         e+mAMaQfRs2VaaFnaFkWmI4JLQAM3qVyJA/9sGwaBj4BKu1J8gVaCHkRVOpxTQIRtd4G
         0njg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=vxohwtioROB0e+YwW4Nf4AWjaC+85wT1g0kkjEOsy4s=;
        b=Gjro9lBPQyFiLCw2f0QXj99QjPYgTW9Yy+ifFU4JWNy8AZcZO6c6Llt+y/IX45XVgy
         UwNchCF7x8y0l4ilH9yQQKzaa6dlBYUYXO2X3/rmAhAz3SHQfW1IFv6zXXQqfoauzUGS
         7jB++H0g2/F+hbb2EAAit6zFvRQZVaWe4+tHQIftwhSlyzh2pBFoXbwS2H5wj46lGxcY
         1D1OCFsv9ySUkVrad/3ohIx6xHFjdG22wn68+qbxJ5K0ikc7qG48o0PwPX0+/45ZxEgT
         wWG6tlN3kbEHjFbDI1r9xHSGnJvl4ogwqNUWDQPinbB+H+YAmcRAWrE82SFZjl7SMZzL
         9VjA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=TFnBOyy6;
       spf=pass (google.com: domain of broonie@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=broonie@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vxohwtioROB0e+YwW4Nf4AWjaC+85wT1g0kkjEOsy4s=;
        b=jBTWs6PmwAXHTJzGsXVIgXXInYjOOmEbBIUCurpkmwAotTfr4RvYphFcMMePxmeyOd
         MCyqLkoBPS+mH2nIRKaTCXPgfoTX4ftEcxZ21AHx08OpMteNjjcTiQsNVqzP6f/Zbkzr
         KqUzFOjf+gKZBRRs5faxppkzVdpyWjQjVDkwmX42qU1z3Za/0AyJ+TsPJfWkNypRVvdQ
         wWC1z1tsHbu/I25qNfoJvptAPIugq/pD3nyuuvj+EqxR4PIU6cgKKQNIoLp1gdx1AgQw
         ZEmp/4dQnfvapKNAlkwK4RRYImEzuDI1qURg1fLOe3yr07azpdTHJ9oE3icmovsC7epB
         Btsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=vxohwtioROB0e+YwW4Nf4AWjaC+85wT1g0kkjEOsy4s=;
        b=VapQyS3U0DW7yO/+bdQe82y0MmS4v3S6u+R1rRpHDyYhbi5JtiiX4nV8ghokb3p5T/
         6W3lHJHap54gkRJVk2ouKa/BGvsMmZauTrih7brwdgirslvmdyh0zyw+MbRkHmtWAvqX
         ArQXWK1iNap9k5yi3t3v59eGYXmJ0q0BcW72m0NvrkjtbEQLQCGaweC2mz6o0agwIW12
         qxg3gNqMtbPyuDVOxi5PGBPTkM2hfScXUP+OAudNswOglbpsUPBpyw0KY1Xd+TAUUKY9
         SNP76QkNSLC6CL8FaqJZYiBRjxQwbVxUsu1pe3ua+gBFFytBdjzltjtk39+1AQW8ybWL
         SiUg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530g4iOKxdVWYtueMHtE7X+Pqnvx3ApDiKtI4tQgW+rlVNXuKcmG
	RKYGGmeKe8ZTx8JKZhP7D+Y=
X-Google-Smtp-Source: ABdhPJxv9BPmMsjVpumFV8igXpO9xakrhBb0dKc+En4fwLtqqvDTuH/9xBBsY1xwAqvutmdn9N5tqw==
X-Received: by 2002:a17:902:c14c:b029:d2:4345:5a9 with SMTP id 12-20020a170902c14cb02900d2434505a9mr627583plj.0.1601316311233;
        Mon, 28 Sep 2020 11:05:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:4006:: with SMTP id f6ls2250414pgp.10.gmail; Mon, 28 Sep
 2020 11:05:10 -0700 (PDT)
X-Received: by 2002:a63:da13:: with SMTP id c19mr262745pgh.68.1601316310683;
        Mon, 28 Sep 2020 11:05:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601316310; cv=none;
        d=google.com; s=arc-20160816;
        b=h8QgGUWn7Oc4BV6B845+TtdM9NRkdoAJ/nsHs8vFqKIGpcaXv9m4XDnuS9dnowv5rM
         RNIcJV56zyY+2pkGvG7o7OCg5QQ3Ss6hHS7JPnDHBdayYxm1zCELRFJXovt73NuvP50p
         isYWDP+xiYVR7nI2i3iXIqrNcdRa2lf6oPHvMx2VG5xEsWU+cJ912fjzDdQwWS7EJ/3q
         qlngZruuk3n6Kx/AoYGZsvvPkOk+DgM7piLU/CokMZ0fYcmCUcXyY8PN8o1ZCW1jPBta
         NUig0Ef85CWyZURcPSo7OiPkJ18l249N7zU036d0k8q2qV2kiu+tXFwAZVtvq1AnIV8w
         56Vw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=qagNYqw//kTIIn78EAVwkXcLEopm38BJCO59neO8MpM=;
        b=vHeJMQSF4HBlfPJ4cCb+t7Ho5hJg7FLTxSnJFk4TzkenHoLSExbhCCVDN0ofc+ZZYx
         pPz/zPfUBGdyE89w2wlqg5/rTVjQ5CxFKieVoo3uVPftkzNA94x7FNCohgYkI626fYzA
         JQxwxihMg3dTsIeMAFXRxISI/gn1OlbSEPaNDqk6PNcwM9uJqR3/GV0TXY7FeItuF7y9
         +BvxuU8w9DOXkfjqU6rzi4W0cvHYQ3lMIXsePjpvvx7ATi/pxhMM7XGIzifglF9D5Z9G
         pMFJYDIIn5LLpX6pxAiSm8ecCwFMcbOs1xODumBGbXcWzqDM4ueP8Mks6h2qCpfe5olW
         9waQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=TFnBOyy6;
       spf=pass (google.com: domain of broonie@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=broonie@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id z13si360044pgl.5.2020.09.28.11.05.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 28 Sep 2020 11:05:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of broonie@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id CF63E208D5;
	Mon, 28 Sep 2020 18:05:09 +0000 (UTC)
Date: Mon, 28 Sep 2020 19:04:12 +0100
From: Mark Brown <broonie@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Peter Ujfalusi <peter.ujfalusi@ti.com>,
	kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	LKML <linux-kernel@vger.kernel.org>
Subject: Re: sound/soc/ti/j721e-evm.c:528:34: warning: unused variable
 'j721e_audio_of_match'
Message-ID: <20200928180412.GA4827@sirena.org.uk>
References: <202009271553.4OjMpGkX%lkp@intel.com>
 <76cae106-b643-57a9-e82e-48e46ebf1b70@ti.com>
 <CAKwvOdnsQY6S+3zAH6_SD0ifbUaSDFj9mBdhF4GVq6VB=tjFsA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="nFreZHaLTZJo0R7j"
Content-Disposition: inline
In-Reply-To: <CAKwvOdnsQY6S+3zAH6_SD0ifbUaSDFj9mBdhF4GVq6VB=tjFsA@mail.gmail.com>
X-Cookie: He who hates vices hates mankind.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: broonie@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=TFnBOyy6;       spf=pass
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


--nFreZHaLTZJo0R7j
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

On Mon, Sep 28, 2020 at 10:52:54AM -0700, Nick Desaulniers wrote:
> On Mon, Sep 28, 2020 at 12:27 AM 'Peter Ujfalusi' via Clang Built

> > Right, in the attached .config:
> > # CONFIG_OF is not set

> > There must be a clean way to handle this without extensive ifedfery...

> Pretty sure I just saw a patch go by wrapping another device table
> definition in #ifdef CONFIG_OF, so it's not unusual.

It's the standard solution, it's just not as clean as would be ideal :/

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200928180412.GA4827%40sirena.org.uk.

--nFreZHaLTZJo0R7j
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl9yJZwACgkQJNaLcl1U
h9BuEgf9GLtR9vsNRYBAfZMzoLDPaz6thKWLo0VpdLYh3TDUReu4Qaofsw3tSTfS
crdQCtuhd6xRwc5WaOmDTnSGS5qMzr7fPa1gWscMnbyRNX91H06P1d7TB2ldNwN7
LV4ktWH3CDTWnvjaZ8rBCHZUbMMdboyjFUpyycFZM28OV50DWtl5GwfAFQwgqitr
NgAjgphMBewJZv3tKApunGNukwU/4SddRSVQkHaTgigdJEciffIdlvF9eqUDGhy7
PQR7VuzbNwKpfFnbCN2VO5J6i6UNvDaW48ytgDo/TiZWukcO0A7O3RVHfYt57uYT
h77Caa/qZteXghnaDmBl/O4LBofxkg==
=/fBh
-----END PGP SIGNATURE-----

--nFreZHaLTZJo0R7j--
