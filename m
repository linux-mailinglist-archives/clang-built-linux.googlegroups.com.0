Return-Path: <clang-built-linux+bncBAABB54EWTVAKGQENDONTKY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73d.google.com (mail-qk1-x73d.google.com [IPv6:2607:f8b0:4864:20::73d])
	by mail.lfdr.de (Postfix) with ESMTPS id B58BF8715B
	for <lists+clang-built-linux@lfdr.de>; Fri,  9 Aug 2019 07:19:52 +0200 (CEST)
Received: by mail-qk1-x73d.google.com with SMTP id s23sf544063qkg.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 08 Aug 2019 22:19:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565327991; cv=pass;
        d=google.com; s=arc-20160816;
        b=Uj+2t+NlpD5WrVsoyaDVzRGZZ2qSklWaGBrIkeF+OeyUlIJBo+F9mFvMBFrD9cCZWL
         T7DNApx+JT0/mhGVEyGL7uhg7QJpqOknM9/IvYr+aHz/m/VJqn6G+BgIgiCfMuBU2evL
         cXvbJA9/3V473lGARxs32zLmkoH/3+kKc8KJN2m9z40WBgy8aj6g9qla/HJ+Vefhg4Gv
         1l13xoNs2ag2RcAqLolzzcu5IFkdBPMx3VX2v30lfT2cSNqr+8qce/YXMZFQtpA0FqdQ
         RYczy+epkcpswm9WufGQa7UMy0jAjmQ110rgg0vd++7AKqJZk3N0TAFXsI4EXIWMSQ0+
         xy5g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=n0AKIimHq0vipdo73jTy4OQ071/GUDgdX67xd2nI+bk=;
        b=P39/HnlFsQJLYgJANIvi3VEf+OmCMIAA4snCfvxxnoS/jLi2OMMqpGJnoJi/5AkcSJ
         Qhpua4xRiy3+rMbZp6Kwq+qpOcnVAcDF8IDiJj1BnPckxaU92j4EMpCYuOGNY+BE0ZND
         WGMTypL66Kq3Q7bXDkbp20HtCfAdYz2182ZaaVByYxrW4o9tzUEzflDlM7f0jjv1PxWJ
         a8Oq9y9Oj5aRC6wbgOH9pKW/JftadIKs4sp1XjNirx79Yk8idY3an8dVTYNM4miOKh0Y
         qkVgPPNlXyv9fK5PVYPknADSobwAVYzr/9nhnbOq0KHm7RK6cKc8FBglN5vA4Rg0HcvH
         ocrA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@sirena.org.uk header.s=20170815-heliosphere header.b=kBJlyOCk;
       spf=pass (google.com: domain of broonie@sirena.co.uk designates 2a01:7e01::f03c:91ff:fed4:a3b6 as permitted sender) smtp.mailfrom=broonie@sirena.co.uk;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=n0AKIimHq0vipdo73jTy4OQ071/GUDgdX67xd2nI+bk=;
        b=f9VwlHqWkikTIgx7w7B9GhqSbS9M8s2jl31uDNOK3fnCPD3BsFg11LuMJp5w4oP42j
         oClHnZN3ySRhwuH/28/P3MW8Q+HBMcLN4EgUDtTqL6WmSU41FzfluuVcU8IS1tsqCbGi
         L8MOIqT19UFqRPBOtaSOPGfSt+6V4jcrko75TSjJgxrFII6kL7Bs/MA6QsGaDSitFcCU
         rLPgV9nc7+Cq9id4yiSot05GeWV8RLeFDwG7RHVZoJr5LBK6UMVcUh3R0o98uXQCMM8A
         Gs0+nPvXL7Me60w6skRk/OpvyWkLZIeu/yJjtZdjrJEKtH78k9nhGCCUR7R6wMiKCpkJ
         b9SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=n0AKIimHq0vipdo73jTy4OQ071/GUDgdX67xd2nI+bk=;
        b=VGmj3/PXYFtlyQNoHu22JN+IU9dtioPFjLwKIRe02wBTul8rlRi5qZ63x0qd6JUo5a
         Qq50V1KB8gslopZ6d1moSTZ5sELUOcnMSPoLRJcm033qIsVSTvP6a8g0QHfYn66Fp5XZ
         dY8miu9BxBO6tw2GUdmSD91ZTznmd2CYFwTR5lcKg0aecWbhGgvMiKVXCB4KmOfv4XWI
         avI7anW1PJ2L++L/WY1yZpPnZmNoeIGPYTT3T4ydT/lFWMcf7MoM6zIj6M5Je8TZsxwu
         tGfS384AWllGT68BH63GmL7SIF3siW16ySwQjjpp2QJeT2VxqFt15UcsTHq0RuWZ6vzS
         gMkA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXCSU4JYfVVL26oSFuzc85f/c1Uf6vOrfTAqPf9Oi3qo74/TMCx
	mN0mdt6LbAA0c1+Y8AS8qrQ=
X-Google-Smtp-Source: APXvYqwr5YZ66EXBGopE7xZd/NQBFi9zTEY+ulxbgDVz2I4yv+8yGuoAbT0Rxb1z8fu3x0hvP2t55g==
X-Received: by 2002:a05:620a:1425:: with SMTP id k5mr10736615qkj.173.1565327991681;
        Thu, 08 Aug 2019 22:19:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:bf52:: with SMTP id b18ls4505946qvj.3.gmail; Thu, 08 Aug
 2019 22:19:51 -0700 (PDT)
X-Received: by 2002:a0c:895b:: with SMTP id 27mr16065810qvq.94.1565327991577;
        Thu, 08 Aug 2019 22:19:51 -0700 (PDT)
Received: by 2002:a37:4bce:0:0:0:0:0 with SMTP id y197msqka;
        Thu, 8 Aug 2019 15:54:31 -0700 (PDT)
X-Received: by 2002:adf:fd08:: with SMTP id e8mr20819524wrr.147.1565304871573;
        Thu, 08 Aug 2019 15:54:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565304871; cv=none;
        d=google.com; s=arc-20160816;
        b=VoBrNd3x1kZq0wzWcnFnGa9IV+3yN3KBXsdMX/MqhIN70jaZYj/81TOu47JMg+JCt8
         ry2NWAjuGNPPgvXNszscVLsuxomde2n6TDij/DO1t21/BWouI/AiXYWBtj9stqcYJLR/
         oXcXI8jdnwbED/kqNrpYM9Q3J5c+isSCJYnfY4r8KkqojJc9w0P/xlO52jH4pkDkDQKB
         X3FVdymyFy22NljlUuB1IPJ/vIPo4HHIpOc2lQ+/0YmNp1e3Zqvg+WyDRiE0WOHFRNXU
         gki7qU3TFKTyEM1HQqisdBH5j1dU31A8WJuxyQIeQMdTi0skw0BbgZzw0XW5WZguJy1D
         ttvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=L4WNmt411GvdUutKmuHQmM0ZMOqtTDC8LSkIqA9c1z0=;
        b=Yn13B6REXEcUsMl0+63xfECEitCfM9QFHxLbc5w8jd20xw6IdGNhd5qs3aMQ+3tnyO
         MWZdsrUTZfC4QfNNTsr1c2ObCde495iMtjNDf/pdj0wjK4aULoMvKHTA4MjmmaS3GY+o
         jxLsU3bBJaVxZ5Y+fRQr9kTTQ9LXyyoQCdEJOAkyNXs4Lt1k4r1GIPyxaJimt4HxYPQ/
         I8UMnTL2v/id/BJL60CFogrX3mUIEEF2cpDCHvdQUtBfo1zWmycniXYexPlZmwH0fnzC
         2nU4/Qfr2HoSpKzWEo3tz3s1xO/LvzV3MvJgy/9HryN0fVN87Uwm5vkGE8w7BkPvOuN5
         Gd6g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@sirena.org.uk header.s=20170815-heliosphere header.b=kBJlyOCk;
       spf=pass (google.com: domain of broonie@sirena.co.uk designates 2a01:7e01::f03c:91ff:fed4:a3b6 as permitted sender) smtp.mailfrom=broonie@sirena.co.uk;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk. [2a01:7e01::f03c:91ff:fed4:a3b6])
        by gmr-mx.google.com with ESMTPS id p15si123505wmb.0.2019.08.08.15.54.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Thu, 08 Aug 2019 15:54:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of broonie@sirena.co.uk designates 2a01:7e01::f03c:91ff:fed4:a3b6 as permitted sender) client-ip=2a01:7e01::f03c:91ff:fed4:a3b6;
Received: from ypsilon.sirena.org.uk ([2001:470:1f1d:6b5::7])
	by heliosphere.sirena.org.uk with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <broonie@sirena.co.uk>)
	id 1hvrIj-0004Gu-El; Thu, 08 Aug 2019 22:54:29 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
	id 1B6302742BDD; Thu,  8 Aug 2019 23:54:28 +0100 (BST)
Date: Thu, 8 Aug 2019 23:54:28 +0100
From: Mark Brown <broonie@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Guillaume Tucker <guillaume.tucker@collabora.com>,
	Masahiro Yamada <yamada.masahiro@socionext.com>,
	Michal Marek <michal.lkml@markovi.net>,
	Guenter Roeck <linux@roeck-us.net>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	kernel@collabora.com
Subject: Re: [PATCH RFC 1/1] kbuild: enable overriding the compiler using the
 environment
Message-ID: <20190808225428.GU3795@sirena.co.uk>
References: <cover.1565297255.git.guillaume.tucker@collabora.com>
 <3885ccdcbdbe83eb367e8344584df944adc76e34.1565297255.git.guillaume.tucker@collabora.com>
 <CAKwvOdmOdJspcO8jqUhqR63-MOWkV3ZrVcCO6u=HG6peov8Htw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="MjBORTcaENZKFEO1"
Content-Disposition: inline
In-Reply-To: <CAKwvOdmOdJspcO8jqUhqR63-MOWkV3ZrVcCO6u=HG6peov8Htw@mail.gmail.com>
X-Cookie: I think we're in trouble.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: broonie@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@sirena.org.uk header.s=20170815-heliosphere header.b=kBJlyOCk;
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


--MjBORTcaENZKFEO1
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

On Thu, Aug 08, 2019 at 03:42:32PM -0700, Nick Desaulniers wrote:

> are you trying to fix the case where you do:

> $ make CC=clang ...
> <no HOSTCC set>
> when GCC is not installed?  Because if so, I think it would be easier
> to just specify HOSTCC=clang, but maybe I'm misunderstanding the
> issue?

It's that merge_config.sh calls make as part of its work.  When doing
that you can't use command line overrides, merge_config.sh would need to
pass them through explicitly which is probably more trouble than it's
worth so it doesn't.  Instead you need to set environment variables but
you then need to use ?= instead of = so make will use them.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190808225428.GU3795%40sirena.co.uk.

--MjBORTcaENZKFEO1
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl1MqCMACgkQJNaLcl1U
h9AQjQf/RK71sDtUw6GScX0kPV2hSgw+bgYGqrR4Gv6fjuYBknRDgj19MyqXVRln
vYsIyGuZqOFNcm0ttCu7R/qgThY+X197H5wPdTjdLQFoUEWbwMwsGdIiWVYL3ixx
zlLcGX0hMetO/iMAhf3AJNwJzzYoiVGQLe9IU5WN7qJF58lOO9gCdWbV1RLz9ibY
h4hcp2Jdrp0dYsy+qlgHpbF+9wJLfX97CbtPbbt4PKCVK7CADpDMsVQOZ2BNEFZL
8quIK4EkVu4TtsFwavuPE9TcYWnItauREhPAgOwm//zhaJ3Bs/CgTIT6/fXzSRHi
vvEsiTOJAIGO4PmCVD2S9E2tRUpOeA==
=h7Of
-----END PGP SIGNATURE-----

--MjBORTcaENZKFEO1--
