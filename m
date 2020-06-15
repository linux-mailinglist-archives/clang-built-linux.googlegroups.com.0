Return-Path: <clang-built-linux+bncBDQ2L75W5QGBB6N2TX3QKGQEILC7IEQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103e.google.com (mail-pj1-x103e.google.com [IPv6:2607:f8b0:4864:20::103e])
	by mail.lfdr.de (Postfix) with ESMTPS id EB0DE1F9562
	for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jun 2020 13:37:30 +0200 (CEST)
Received: by mail-pj1-x103e.google.com with SMTP id m63sf9016384pje.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jun 2020 04:37:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592221049; cv=pass;
        d=google.com; s=arc-20160816;
        b=E8Bz0YIK+rLHjZ9pc1nFD0cEeQHM6dyLyBFk9GbWxKT6reRkK5JF1ITG/Hz6QGwedQ
         ye0eQ2dQPacP9HzBJG4smEAb347BqFttQ2ZZZzQbOH7+OttvQSEGRfL64TSgaRu7NHH4
         NoFGI0Dhpg6vH6BjwOeBL4KUygsXXn4Nrq1LeGtmr347bRMZBbX184ftz1ZrZJcdj9DS
         tz/6eol+fyNAXmU5IVTN12YrW+RV5YvguV/DmECeBVjOY6v1YS6uAQNoDBAXwFGlmY2n
         h3f2Fhn23aUluy8Aov5fAW220ufTLS61/bkHel5hkNL/FrCexu9HpYQTsvQy+I7U1rk9
         kJLA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=vT4sQ29uWJThrLvUEI2lLwdD4de099RLAvVF3gDR6HE=;
        b=tJEdpq6snpOosyJ8CketnILa5kRQ9T6X5rPZPEppll+BUx//l/gYvrOqIZCvvYSBVd
         JUoCAdAEiSA0jHd+H4XsZXnGoHLdUG5u9EZ3lEblCtIUNwX6W2VbG9KD3QBCW7ZUxvD/
         tBrur3Ykh/w3szd/69U+1VdT+W6QBtQg36FejoOkia1LSPcI/TSAoXeZGM3zS1RYUZBC
         w4eTcxBR3OveI2GLfu1pAiogt4pyUSigtdyN5ViD5uw6MLtOOAuzdihA4Ws7gRWtLorQ
         EGUmErbBcRLp6Wz6vX0HQ19o3YIfJnIZRw1ctScawGieRsjXIewJakpzKgB6+bAat2Y0
         B3LQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=QgpvCEMt;
       spf=pass (google.com: domain of broonie@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=broonie@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vT4sQ29uWJThrLvUEI2lLwdD4de099RLAvVF3gDR6HE=;
        b=tnFgB2vOxSDvkqjPzXoDfoSqiTW8lMchcdgKHJ6O0QsDJkhRRlvgaZD6vi8Pceq2o3
         mjcPBP7/jWvVzifpRg61q7Tm/7zYIY/cS5/dQGY+Pf6pJgtM/QJo5daroxIZQ3e1zEph
         EN8uKh5ATBJ5JB7EhdZumS3F0/Ifs1YtCjWoM5/3C91cESVF1/rq66eEc93jynv9JTIP
         PvyTKvDSN716V0L3uIRneuhPOkK4xGWqTaT3xevU9fRpBsACL+CuV4KoUA0/DREizCPe
         9hGqlFLxGYEwr5zzyNBMtWfaviEazJKfrMwaeeJIhDRpRT4VtTtrJgLlQU6NyusLlDCA
         LiDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=vT4sQ29uWJThrLvUEI2lLwdD4de099RLAvVF3gDR6HE=;
        b=H9v8g5406aPMR1SzQFpfGl8PWlqvnG+pAsuOTjfF7PqMFz28nggw9Hvj5A7EmmT/BL
         DREWOewJvMJYc3WZ+sbK/ikSFxHLFL57h+5TAUYkAKSZ855HEUZAFrGWcvgbsRWRMAAw
         Z31CTCMzTdbeVji+xE57GY+NNXFcSI4iyxbdRcfMJkdmY9XdpmS4bt+opdn0B4FcTlBH
         4y6NJmilrHjcufhcLBQF8yp/D7hL9Gyv1IGYwWSZl0RkbtAyyn/bSOaTKkPMMUi82F1S
         VHaJr+0WtxRIO52/gWlGUUo/jt2rcVOUFN11xxnlO1RZ2V6geCFAekspUUAOhcBGxIbw
         iLSQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533bXFO2KHM0ex3OEYEIEsSoJpVq88dq2X8e+K3wEufzT3qxCmeg
	oJ42YSxRKCfmEmWgspDDz+8=
X-Google-Smtp-Source: ABdhPJxzySFSuKAW7MI2aNLZyU74auAO/sAA6C0lUfltLAwJ5XEluX4T+7fhFOEur8X7kluJWvyiqg==
X-Received: by 2002:a17:902:d903:: with SMTP id c3mr20772764plz.229.1592221049615;
        Mon, 15 Jun 2020 04:37:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:134a:: with SMTP id k10ls1966120pfu.11.gmail; Mon,
 15 Jun 2020 04:37:29 -0700 (PDT)
X-Received: by 2002:a63:1323:: with SMTP id i35mr21321728pgl.311.1592221049164;
        Mon, 15 Jun 2020 04:37:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592221049; cv=none;
        d=google.com; s=arc-20160816;
        b=lrQr6JaPzk0xHnl2iRDG4++QByRx6GBgAhjtLqxKRh0gyCtRv0VfAAm2+yh+aGsDko
         ob4KsgxPQG7xho8iMiFrSo3Z0weocje96SitXSzaQJbBGyE3R4kHd0Bx1gzCX2eXUYn6
         u2PIb9Xrm2pbpmBfQ/fyVfGl8IuaqRp1CxwnakggtZz+ZRbcktBkwSQIurnjYosLkPhC
         X3kPzDrdMQUQrHPA0SASb0x38vp4/2D3L2Ck++TQ2MtIzKbCf6P9FkG6K6Zzp650SyJJ
         zqQmzr8CyFF9Hh8MY8eQQ9yZLFe8jszeedzJ6q8kI53iRoIlMdDRpCZxh3u0fMkX/tno
         n6eA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=042ahzrXLwQ4rzed+tZ81tXSuX0NoAHNUQlsisbnNFc=;
        b=bDkpndIA0ZDuGYD9rzYbreFLfbDSgRahsRH5vzdlABuZG6fFK40bB0DqAr9BdMlHyH
         ftT11elaIMe2pXAJX6tI/9AaC1nT7QTihrriVo7jgTu7C0SWw5uWuadX66XoIUX5qzjp
         TGqeO9DFzL/C4bgfHXpFO9vmN3iHl6erIQ9VtgXc7g8Ds4ONbXodY6OgpaJjlGitOOer
         Bq2XaNdtL6OMIx+lX2J3pJlsQe+/RLSwcnkQZiAHzgmHiTsxentRx8UD5ou3qvMPUd8o
         yQlCDOm4MW7qC0+zbB/MJpF/TiiEGbX43kX1lgxG1eiMTtcoc+u6rcy/nutSg7mHek56
         rcxw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=QgpvCEMt;
       spf=pass (google.com: domain of broonie@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=broonie@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id l9si863753pjw.2.2020.06.15.04.37.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Jun 2020 04:37:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of broonie@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 618A02067B;
	Mon, 15 Jun 2020 11:37:28 +0000 (UTC)
Date: Mon, 15 Jun 2020 12:37:26 +0100
From: Mark Brown <broonie@kernel.org>
To: Will Deacon <will@kernel.org>
Cc: ndesaulniers@google.com, clang-built-linux@googlegroups.com,
	linux-arm-kernel@lists.infradead.org, mark.rutland@arm.com,
	catalin.marinas@arm.com, android-kvm@google.com
Subject: Re: Clang miscompiling arm64 kernel with BTI and PAC?
Message-ID: <20200615113726.GE4447@sirena.org.uk>
References: <20200615105524.GA2694@willie-the-truck>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="lteA1dqeVaWQ9QQl"
Content-Disposition: inline
In-Reply-To: <20200615105524.GA2694@willie-the-truck>
X-Cookie: Offer may end without notice.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: broonie@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=QgpvCEMt;       spf=pass
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


--lteA1dqeVaWQ9QQl
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

On Mon, Jun 15, 2020 at 11:55:24AM +0100, Will Deacon wrote:

> We currently support for this Clang 8+, but maybe we need to reconsider that
> :(

Yes, looking a bit like that - this one is relatively rare but could
come up elsewhere so we can't just disable the functionality.  

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200615113726.GE4447%40sirena.org.uk.

--lteA1dqeVaWQ9QQl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl7nXXUACgkQJNaLcl1U
h9AO6Af9F9k3I4IEfLpMuUI+CcvuiE1Fc/0HUnwK5m2n+PEJ9NpiEO2Er2vdOHys
Cz2h+WjidPF+Wx/dnf1eTwxtdx0RW+PBdLSLZO2AATBCuRg3zw76fv+cL7SSMVtU
DR36oCqKNYMpe95q3TDcbskRymTKNdNHKnBsR5seKP9hYgCriBnv4UwdbOnKc4VY
eQPvsAecwzcNMKI05migKCqyL6j/dipuXLoRtnV55iE6P/uk6tXrSYY9/2K2FOX8
ZVbfPf4awNuvOdeWodj8G+nHLkWHtRFWAQLavPvy5rrSiXc0whFE23ctxjCCVo0Z
9UT8KZV9OSA/W+28GZup81fRE9gMhw==
=sPLj
-----END PGP SIGNATURE-----

--lteA1dqeVaWQ9QQl--
