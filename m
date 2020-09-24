Return-Path: <clang-built-linux+bncBDQ2L75W5QGBBWX2WH5QKGQEJKGUL6Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id A1F83276F41
	for <lists+clang-built-linux@lfdr.de>; Thu, 24 Sep 2020 13:04:59 +0200 (CEST)
Received: by mail-pf1-x440.google.com with SMTP id r128sf1605883pfr.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 24 Sep 2020 04:04:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600945498; cv=pass;
        d=google.com; s=arc-20160816;
        b=TyPh1BeqGHtymF6cmnC+vZc8rdrpsvxYrTUgPqo8Ih4oIrulgEkQSns68OHnYxZWZS
         wHX4N/Kgzs93t6erdm7jQd68HHQm0GRqV6/IBpCIm85Jhwmr/RHaicn2yYZIa2LUc1uu
         woFFmIbHQ2TS6QHzLZpfUZRjcKgmkqwBCMpic/xhLV/uVcjcN+gR39TCNY9LxpWhTo2P
         YV0wgG5zir48wfycRQW15v+hWwndk4gSn6e3y2sZ3hBhH2qNtlaC6OIOxXgfGktEQdHp
         ZbirCUhSMMx7fFm+Ofo9i5pePQYDRHSUr0lCjQbiS2dieLJM2r8fE6+BpmiSzxXfHQN9
         c26Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=8iG0MQm4q6zoRzxscWSLmVk3ygygyMCtKQfuw7hRpaM=;
        b=K6k5BPG2qQZNTCBv8Ijc8Uxk17G5uMMHZk52rjELpCYZNbFD/zSEuPsvskcyJrD/6C
         3Q+z81DGUbiB93FP185dHczeDdcSnDzWboDWHPTf1O1gWx02ddqVLENAj2S62i7pnotL
         scBus2PBLuEKNHgtN3Oi0BTQV1Uz8ZlEhTTYc8KFhFimU4WmtH7gweGtGxo/D7a5xfAc
         EMpHlulWAg+rVhkhxftc5rg9k3o06I8cEZqs6hGg5TcpQDvN+7bRPmiZDAMOpY2P32+k
         6xT8DKj7oVxUM7lwvkt+CDZEpu6VWjxvpVQtxXJez6AH2naZbHW+ENq213OFlJ1QyCpQ
         6nEw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=vD01W384;
       spf=pass (google.com: domain of broonie@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=broonie@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8iG0MQm4q6zoRzxscWSLmVk3ygygyMCtKQfuw7hRpaM=;
        b=Fioq5CiKtXLiMCao1vGu3MYfTz/P6+q8S0JZd/BClEPiY2h6ws8JsQulnszg6urrVj
         mbb6f2gDw8GmCkbcXLY6u/SWQb6x31PbAflZG9nxp6+Vx8dH2G8hqn2urTXUZwWPZ/4v
         G5941PRDWugdCYFCVSVRrXxDYqQcn3cMwqJNzqtoVjzY5X0HNcvZiP3jqYaVhxA6WpYF
         VsZvy2K0hFi5zfXdRshAM6eJg2NC+sodNdX70ucJhYQhlAjtWEARYS8D4zsBaDHUInWV
         6CfGc6+o+UoGsh2NE7QICFOGQPbEfhD/kXnYRHDoMYdJwQZoJActFvZ4lBXmSdTzWru5
         yoUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=8iG0MQm4q6zoRzxscWSLmVk3ygygyMCtKQfuw7hRpaM=;
        b=SVL0jrA3vH08qKCzebkSifc9D6NtDMr6JebFcH+FTWnRt7MRG6uOkts+GI6+Q6x2uC
         bpk0bxvyMigPAotf0My2WLxBA/i37a8dx+LMd/L5T7zTxMKzUB9M4CInOavVdmd/X26d
         FOA82noU9f87RRbuHZYdsZ5Ba1vN2cJ+Xh/53oX9HFvrQI66irtVhJDemdJs1XWW3ke/
         ONKYQJ5jHP0crqKdeNA3I2r1q4SmTn2Jyte32F1EoUxDylKiRTuhgY+QlefxueZLXq3o
         7XIEDw4rpwjkR1BYZQexFQfAtccDE43ea/QF88Jvy9aRQ1OVlG3UBK6SLyrKdeUPsl0O
         0DDg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530In2TSXWlITMgeGfs+Luiut5ZaiapXDtYgr0oioMzrtIypUZ3X
	w83V1v2F1ZmXh3uQY32UVJ0=
X-Google-Smtp-Source: ABdhPJyMbAzS96ZQezkaBgIix47b6B0rP9AHql5lkj/HlxPPRZYOLYxC3ZiVY/Z+h45+JMtN2tkIoQ==
X-Received: by 2002:a62:7a14:0:b029:13e:d13d:a0f5 with SMTP id v20-20020a627a140000b029013ed13da0f5mr4026707pfc.17.1600945498325;
        Thu, 24 Sep 2020 04:04:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:7591:: with SMTP id q139ls1130001pfc.3.gmail; Thu, 24
 Sep 2020 04:04:57 -0700 (PDT)
X-Received: by 2002:a63:e005:: with SMTP id e5mr3645174pgh.188.1600945497630;
        Thu, 24 Sep 2020 04:04:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600945497; cv=none;
        d=google.com; s=arc-20160816;
        b=q6xt+JVVdFKirpNg+D6ITgRvobfXyz3gGoOiDFyUVd+FqaEI8s/BdKrkKtnZrryEEn
         9XZ+BYTFqa3QltSw+XsOFKzK6WE0dQ1VlQAhJAQpnasxOPR2S/RPPRq+QRqsiYgwL/Ug
         OtfBGprA79bP+LA9ghKKRA3NCvzOyrZ0lItaQENM+RaQBl+ASbMCR2Jhq7+fDqIar4+6
         UozHCPcMEWXBXNpu04Oy9ZCd9t8XA0HWTeNJxRRF/opST3CPamTSvyL/tREWbtegcZpi
         7FKfyAGhzhCsvleRpz7muPYGwRoSluGSF65j2e1OXBk/QB1dUeB+86cRWzWurse1B3qX
         dMpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=PL1j/+uBIvb8LqFfMEsfF1VvscIQELaaRicFtxVMaKc=;
        b=nSeKp8fx+aVGcToWlQCcm8ATbdAq2+sjUF16gNeRKT/SDBXQiy6XdBsZuEf5E7At9V
         IdrCZwOmyPVP/u4IywMXiu8cnATp6qzTzuJSqYEG3ueSdwqM2UeDt7yGu5tQ3tygJCS3
         WbM+RhpfuNYL4rLyFckCpSvibDu5P7w0HbLo8Pwk7kN0BztlHyj/LwiduIqp+UEAecmE
         UBL5K+nRKVBGhefFx8DB1lWO0kZjtBFLdru+j/UxxSHVrP/fn/FXQbhL+BZo/MSIgBYn
         5oGjalqycfp8HpPjreUOryLxYjZ7xl3uqxSKcB6Qdda0V7TDqDyDsSGDyR5+E2+hoze8
         iF2Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=vD01W384;
       spf=pass (google.com: domain of broonie@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=broonie@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id n8si221603pfd.4.2020.09.24.04.04.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 24 Sep 2020 04:04:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of broonie@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id C10B42399A;
	Thu, 24 Sep 2020 11:04:56 +0000 (UTC)
Date: Thu, 24 Sep 2020 12:04:02 +0100
From: Mark Brown <broonie@kernel.org>
To: kernelci@groups.io, ndesaulniers@google.com
Cc: Guillaume Tucker <guillaume.tucker@collabora.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Todd Kjos <tkjos@google.com>
Subject: Re: kernelci.org update - 2020-09-23
Message-ID: <20200924110402.GB4754@sirena.org.uk>
References: <107c1572-ffc5-8797-6ae3-10fbe4e91eee@collabora.com>
 <CAKwvOdkHiRAxCrrqRTq=k09zW-X9cHogyq+7fTuM_aJyntXs4Q@mail.gmail.com>
 <200d3c91-9906-01d6-2642-718fbd356d76@collabora.com>
 <CAKwvOdmAev4-AP3g0cgZ8rV+iR4ACuy1ZQ_XoD09c1d2GF1S7Q@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="b5gNqxB1S1yM7hjW"
Content-Disposition: inline
In-Reply-To: <CAKwvOdmAev4-AP3g0cgZ8rV+iR4ACuy1ZQ_XoD09c1d2GF1S7Q@mail.gmail.com>
X-Cookie: Programmers do it bit by bit.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: broonie@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=vD01W384;       spf=pass
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


--b5gNqxB1S1yM7hjW
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

On Wed, Sep 23, 2020 at 03:06:52PM -0700, Nick Desaulniers via groups.io wrote:
> On Wed, Sep 23, 2020 at 2:26 PM Guillaume Tucker

> > > android-mainline
> > > android12-5.4
> > > android-4.19-stable

> > > are the 3 newest branches that I know of.

> > And which LLVM/Clang versions should be used to build those?

> Will likely be clang-12 (or possibly clang-13).  Those branches are
> basically the kernel branches for "S" which will be released next
> year.  So they are building with a pre-clang-11 right now, but we're
> about to upgrade them to something closer to ToT soon.  Once the "S"
> release of Android is closer, then we will lock down the toolchain
> used for these kernels, but it's sure to change between now and then.

The thought was that it might be worth using the actual Android
toolchains (including all the out of tree patches and whatnot) with
these branches as well as upstream clang.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200924110402.GB4754%40sirena.org.uk.

--b5gNqxB1S1yM7hjW
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl9sfSEACgkQJNaLcl1U
h9DvtQf/TUR8x5SCtTU18CrDtYCwGJmYc64wioMFY3wMF1Pw+eD5zzkaWT9UxUtu
tw1raHiQFFVkCu5yPKzKWVmj8QsoEP9Fmbc+T4+jGic37fnyGz2TjeHZPrR4Go26
0WOZMu1LGqCzhXsTF8Vn9xE0weBBHwlBj06wZcMT4u00cVzvVccdDGjjOt88geqx
Q0zVEmi6yajP1z2qOf3zt4ZY2ROah9i8C/lw+4wSfmWdVwFiVA6D/rWA7WSoLfQA
P1xiJV35dtPG97zznW7Lj7izpZi9LHfOU69pum9LltKK/bwwC8WRtFa9p1iZTwNr
6EthDnkIk2aoftxUE3uF5yr/MIucQQ==
=OoqN
-----END PGP SIGNATURE-----

--b5gNqxB1S1yM7hjW--
