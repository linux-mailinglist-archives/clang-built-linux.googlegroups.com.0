Return-Path: <clang-built-linux+bncBDQ2L75W5QGBBUHOV33QKGQEANZZHJA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83b.google.com (mail-qt1-x83b.google.com [IPv6:2607:f8b0:4864:20::83b])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AB281FFB4E
	for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jun 2020 20:49:54 +0200 (CEST)
Received: by mail-qt1-x83b.google.com with SMTP id u48sf5096987qth.17
        for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jun 2020 11:49:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592506193; cv=pass;
        d=google.com; s=arc-20160816;
        b=fO+76we2mp23/ZEb2g47Ufn7qdzyXuA1Gy89xwdGBWPi/d8doH0JMNIc7Y4WePHMNL
         9C9VR5AFEY76sMiYbojkDX/jA0SZLmZ5VJexgC0ne7eTmOolAeqZOEl6zxIqP7FGo52K
         bqDsJWuOqMASA0v1uXr6b60KqmXK8MQcbKN8bsxAdnMxZM0ksRbyFqlX5AK/iareK6U5
         N//fk7SQFfG/yba6ox/v/0HGANuUh6069rPUrt4JCAaz5pGb2MGNNianmzowDOaOas4g
         UYy/6YHgIbMywupESb94/o9FuxGaQt2a1BVacqxklb/RupPv911a3GeN+jEB68w8MRBk
         c4og==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=y5FGLNq9Ivy1gvbKupLQ01CUtgkEpJcxpOIuzwp1J20=;
        b=j0q4quujfL5JmY30olUbRRPTMAeO8fWMZMnTJ0go3EBdFwXn1TpQGMp8tL/6d1z8Wd
         1eaoQzPS1SgnjNwWKWuZ6ehSXhPnSpZRK1P9VbwouMrTEFY49SsGATCH75bHf9NeUXF5
         bpBgfnsfRNbXFroJlrnRZMdZmIGhe0adVvOcldAN3TWdtXVWmZx0/9q896qMzLDV0Xbr
         MTTkbySb451nyFCnkNioCtfbGXMLlKeDJki2vYd+bQLQFO+tPQE4FM9bAhBCiIZmeIdz
         o0Js/xpUB5ngRxiWcAjnzXBCdxk0UIGHPtM75dDdnGkFPSUXdUiCJRS7EgcRTNQfto66
         2tOg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=hVWrVNXz;
       spf=pass (google.com: domain of broonie@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=broonie@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=y5FGLNq9Ivy1gvbKupLQ01CUtgkEpJcxpOIuzwp1J20=;
        b=l6z0LgRzjACPVu77CWZZF1owLLnmK9UP08bJ71F/EuYWVqItmVqqCTrQL1m3xuFY6B
         ugsF7Y1DNOEu9YHXV4kCJyFK0Jv07UnAEct6fuNhvYs4dko/AVzagYnDwm4cRiNTzV8D
         +KRQo+dr+6s+aOJzwWOguvnHpIa6U8t80eW9oxkqApRmPZ2K45GCVjK4+vcrU/35Q+CJ
         PxRFEr7s7uaEFsTRKIVP91doCohFOcY9xFql/RMNv+5cFwPY4wuedL9GRvNlDEY8zMS7
         Sb7ioNtrTudW0f0LecXo+ZW7p2in8pPtEZCmqPw9p9kbFNYhG3Dhw7lx9b2UyRbAiyaS
         Ct4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=y5FGLNq9Ivy1gvbKupLQ01CUtgkEpJcxpOIuzwp1J20=;
        b=fte4xl5ZCfEDpKbO5Y6Zegpes7TC0oM+W9OmGvLZ/nzpGOmoMIyvONZy9P7/vA2ZQY
         tTEmO7UwplTHn6WRpaufUYvEfeGi58t988GZJDfy8khyQsCcjL9LeTcxYW41taaAiO/j
         fdj/1KphKxgiZmI+HrWzH3KEQBQEGCxri2wK12X+eEZ7luf9lYQpkcHHYJ5U+GuxQ1tc
         U/FsUm4uzSvXf/vrwwLFm4bAzSrzOmBnxKKhGQSCl2jTte5C3rHyjtVnAnaK4Y8qrY4U
         kK5v585f9O+JRt6k1pBpReDWXKXf0M67p20pZWYEzVR4Q68oJ9KZuiO4SpsSigPP8EjB
         jIaQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53287vwSTUXpQNCswSNLRs7HmQMKMoqr0f1OotjAJFw3K4NauXKw
	1uxe5WQQZBgyMqeG/KLP56Q=
X-Google-Smtp-Source: ABdhPJxTtF0/RMMN5IuMU/VfE1lWjGC7qRx5HO9QNIF4oHgk+SafyU9QeMGlduEugfB/a9YCTZqAxQ==
X-Received: by 2002:ac8:538b:: with SMTP id x11mr5848525qtp.84.1592506192993;
        Thu, 18 Jun 2020 11:49:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:78d:: with SMTP id 135ls3167257qkh.8.gmail; Thu, 18 Jun
 2020 11:49:52 -0700 (PDT)
X-Received: by 2002:a37:bc07:: with SMTP id m7mr260067qkf.93.1592506192586;
        Thu, 18 Jun 2020 11:49:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592506192; cv=none;
        d=google.com; s=arc-20160816;
        b=ZEAgYQD47Ykgif/RIqnAqKlaKcdLdKrTrlLjOvfa1q7gDqFRazey/7l45p5k1EPMtS
         /KuGUgHOviu0AO2sPOthv6AindXAZb66lW0gE6gmeQIP+9KS62/RcZi+vMjDIeuKJ2+g
         v5pf5qYeaL3hgWB/GQErVfonHrT7aRGk/97YWzg+GzAO/tFyl+j146HXj7pIfXgoBnfX
         kXExRuSnbGjlNKQQWpkIphXw2q8vFtBBqz6yW3epQ3QucLxLwd+2cUpHqXFAXlCyDXYw
         pVr0pTSeO7s4F4rr6WiO7+59u+OnRBj8wPL0dGRQKkv+2IASxCJpPDVP4fJFavIwBeh2
         vfBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=LofPzQGmCw7W9E+upuC//cHgW5YhLi74P/QarxZXpEI=;
        b=j9sMOxM7YoebRMS3jbfWQIIStjdjozOXlDHbEc6qzW2VtFqMBFuhQVYDwHfE3rOh0S
         ZFPahPsODzeEjnhQ+2VEtNSr93K0HM4L2U1B8de2anjPylFsm+SNA1cKM0l7HDQE1qlU
         6qsh6vm5DRd1s3sb9Fbta8DsXZDLxE+Vv+gm6xFckrXMLR3Wv+1H83qrwbO3WGgB7dYe
         gZ5OXXQjJa+6FhK+682Qf0iwxDdWPGDgWTUXbHsIV2omJdsW2Y/I7jfNOs4AX7y+NNes
         YzT/ql5Qj9xp7jzfGTU+t7C6PnZyS3UYr4+ViQEpCHdqogzWNA5PfvN76LVKeN5gUygV
         UhVg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=hVWrVNXz;
       spf=pass (google.com: domain of broonie@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=broonie@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id w123si246282qka.1.2020.06.18.11.49.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Jun 2020 11:49:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of broonie@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id EDAFB208C7;
	Thu, 18 Jun 2020 18:49:50 +0000 (UTC)
Date: Thu, 18 Jun 2020 19:49:49 +0100
From: Mark Brown <broonie@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Amit Daniel Kachhap <amit.kachhap@arm.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>, Daniel Kiss <Daniel.Kiss@arm.com>,
	Anshuman Khandual <anshuman.khandual@arm.com>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] arm64: Depend on newer binutils when building PAC
Message-ID: <20200618184949.GA10828@sirena.org.uk>
References: <20200618145539.53539-1-broonie@kernel.org>
 <CAKwvOdmOCVJOzp7tc62SV8yO8KkFpY9_fiX6yWqQRTtFC6vsfA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="PEIAKu/WMn1b1Hv9"
Content-Disposition: inline
In-Reply-To: <CAKwvOdmOCVJOzp7tc62SV8yO8KkFpY9_fiX6yWqQRTtFC6vsfA@mail.gmail.com>
X-Cookie: Avoid contact with skin.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: broonie@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=hVWrVNXz;       spf=pass
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


--PEIAKu/WMn1b1Hv9
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

On Thu, Jun 18, 2020 at 10:37:45AM -0700, Nick Desaulniers wrote:

> Thanks for the patch.  I'm curious about the case for LD=ld.lld, which
> we use on Android and CrOS.
> I think this would be solved via an explicit line for the linker to check:
> depends on CC_IS_LLD || LD_VERSION >= 233010000

Ah, I see LD_IS_LLD is actually upstream now which complicates it - I
managed to miss it when looking earlier (must've thought of the wrong
name).

> Since we probably don't want to remove the check when using GCC?

Worse, with GCC we only want to check the binutils version if GCC is new
enough to emit the notes so we need to make the binutils check.  I think

	depends on LD_IS_LLD || LD_VERSION >= 233010000 || (CC_IS_GCC && GCC_VERSION < 90100)

in place of the existing GCC line covers it.

> Though, LD_VERSION is only a weak proxy for binutils version.
> 
> It's tricky right now for CC=clang builds because we still depend on
> GNU `as` from binutils.  So you could do:

> $ make CC=clang LD=ld.lld

> which would be a problem since clang would emit the notes, and the
> Kconfig check against ld.lld would succeed, but then the binutils
> older than 2.33.1 would still choke.  Would a script that checks $(AR)

Oh, bother.

> $(OBJCOPY) $(OBJDUMP) $(STRIP) $(NM) $(LD) support be overkill
> (feature test or version check)?  See the `Link` above; we see
> warnings from all of those tools when binutils < 2.33.1.  In that
> case, I'd even remove the check for AS_HAS_CFI_NEGATE_RA_STATE (err,
> maybe not, looking at commit 3b446c7d27dd ("arm64: Kconfig: verify
> binutils support for ARM64_PTR_AUTH") cites binutils 2.34.  It would
> be good to support a build of just LLVM tools, or just GNU tools, but
> right now a lot of various builds that use clang are still a mix of
> various GNU binutil utilities.  (See commit a0d1c951ef08 ("kbuild:
> support LLVM=1 to switch the default tools to Clang/LLVM") for a view
> of what we're looking to use once we've burned down a few more bugs).

This is a mess.  I think the most robust thing here is going to be to
abandon version checks and do an end to end build check to see if the
feature is supported, that's overhead but anything else is starting to
look like nailing jelly to a wall.

> This mixing and matching does slightly complicate support for new
> features that require extensive tooling support, but I think we can
> make it work for everyone.

Hopefully the learning curve with this will make things smoother in
future.

> (Also, general plea to please use scripts/get_maintainer.pl, which
> should cc our list for any patch mentioning clang or llvm; we may have
> caught this in code review before it hit mainline).

Especially for a file like Kconfig get_maintainer.pl is rather prone to
false positives and negatives unfortunately :(

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200618184949.GA10828%40sirena.org.uk.

--PEIAKu/WMn1b1Hv9
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl7rt0wACgkQJNaLcl1U
h9D8WQf/e/TFpe0vQrPscoOvfPGUS4wCnfBceVaoTiDwt98umz07Ml+m2y18rob0
sDs3jWAyZTU6rORoy+t1s31C1wk2ZKl5y3oJtFeAVtvjNNw4JzK17QxOgTnmss1o
HgW1cpBlEFr7ZIMGYIIQSrNADUvo7BkxzEylTnLsZb1QiZpUBkKGLS+AWO06HdcM
Omd8UIE7+V6D3x3/wL1lgk2nzpBufRoRMuAqChn9qKuvYbryxCwSkpH9D6xrG8sQ
z9sw50giMHTT11kG5cz/DUEUTDcivLlpfmlWY7dfjCSeIOFyYe7ygqINt/8AmN+p
qDEhK3LyRyqOwiNolfEJlDYly8zAMA==
=WVb2
-----END PGP SIGNATURE-----

--PEIAKu/WMn1b1Hv9--
