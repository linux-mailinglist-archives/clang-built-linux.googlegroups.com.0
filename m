Return-Path: <clang-built-linux+bncBDQ2L75W5QGBBI77XOBQMGQE62QR4KI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf39.google.com (mail-qv1-xf39.google.com [IPv6:2607:f8b0:4864:20::f39])
	by mail.lfdr.de (Postfix) with ESMTPS id 200E835841F
	for <lists+clang-built-linux@lfdr.de>; Thu,  8 Apr 2021 15:05:41 +0200 (CEST)
Received: by mail-qv1-xf39.google.com with SMTP id bl6sf1062709qvb.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 08 Apr 2021 06:05:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617887140; cv=pass;
        d=google.com; s=arc-20160816;
        b=wJ5oIh1Xr9UXMlJYbCfo15HcOghxoCJFQ7CmHYaQHb9K0HeM5g9xBMhkssqlvR+xlg
         /Tmfr1d/oZlH2Z9zvsPWKerKhHRKhYtYKctKCeQR4fhcOwljSov9dPLtuJhujyqRpeSJ
         1wRRn4l9/vu+3f4MftqmmhtT/3cLbGE8p39cuMVzanz4DpAIahyoj9bxbGDkaiCAoz1O
         2PNA2l5rbSM1gl3I2LrE+IQz7Tl+ZZyxBtWeX48W4z1B3N/RMIWtpvCykpr0AKdhAT9Z
         bDyyIb/5jXGMyFm/1LofquZMhoS0rE3wnvIn66D6tH18wRVyPqdiI2yNAYuCNFOw9GST
         KONQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=mMNuUfAJShpR+poQfsirWx46skjmo9jwQ3Rp7hAZlCQ=;
        b=YDnLaSBlaTZ9IyGJthoFSpkToBzvXUAuL+Qe5FWfFASrmIDInUVIOWoDyyAjs8j6Nn
         p5734zut2PpVTEcnwB6JJFDv6rQZhxMt+RnMXgj2nb+2Re/RJujWyrLicKdaSqptni5w
         3fDrkcA+H42WubfHvu09qqnpuwlZTAPkDhG3L+oAMHihwSClFtoSFsb/RZtt8biU6J2x
         6p5xFpLvF3UG6hfhqZAS0jT2q/PyAx08BU4qgOanwVOZUl1rRG4YhlL6MrWMCsvjkI74
         yyMR7lUo/qsotKwK9pv08iQvXdSvg/IH4QlmzM0lOFgvq9B7eJy74MEkOlgWadI6GL6e
         houw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=VciY3cN+;
       spf=pass (google.com: domain of broonie@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=broonie@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=mMNuUfAJShpR+poQfsirWx46skjmo9jwQ3Rp7hAZlCQ=;
        b=U1S45R1MfLOnoUTeHHws2bWj4ccI2hby/g6++cjmz07+r9xvfLvvqIQcH1QRIsdubT
         DBaWxGk4CEH0ee7Tk3DPlI5XpZK2JpayLQAYgn/8Z8qN20rjARULWMusUpNgQy1CQpCS
         xsIv/CvHqATtAusKWvn0s9xj/uK9Qw15yn6i7HZmwTa1R7uhgx8t5IEPySldWw6L9CAL
         TypTwdBsEJlk2TF2CCqiQ1TZyGzx5JDZwL4lX3IaJeyuIeOqdeIZBZhzDehFBGPWp7A1
         E6qRSBiziIjoAMxlyX9hsqyL2a7yIiikM3nuwzXWnyy02UOOX5JiKEwxvFzJN/Fck1gN
         tpcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=mMNuUfAJShpR+poQfsirWx46skjmo9jwQ3Rp7hAZlCQ=;
        b=f4K38/Jsw9nmkF6ldhYN524QrRzJQyjDGJJtGySkx8r2cQ0W+k2aUd3Fhm5kVh3wXE
         uYJ/p6dl1yNgeoOSYkdVCqVOpci8dZxvoBJplMOwzVucodiApRq700e1E4Nz9RdaFe/Z
         uOA8XmUzO3R35Bsmd7Gt0lafiZB59tofqPLOzrjcxWblkBMdp1cWmIgzS752/JA84x8V
         Yc3s3j/Sc1lydbyYYENayVm9O94xV2AL0maJBsSlA+1sv8nAtuHe4X8AnPPgp+7MkPW6
         91xSHReVgv+K/tI6F/F/tcW2xB3nsxBVcLVGkcOL9KR4elDoTUMwHci3K28FTthwY8Ht
         y/Yg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531oXjZDV3yZxBY/dC0eOIxwD5lorGPXuqCEpCloPIcQf0h3ogZd
	aCtRU0T62TQa6QJBy1gsOiI=
X-Google-Smtp-Source: ABdhPJyCvLxnJCk4zMs+EgJzFa3yBu3oU5lSq8CzXgbINkXAj5WQEq7OrN5mkbaC++fICUUrajF8ZQ==
X-Received: by 2002:ac8:4681:: with SMTP id g1mr7536968qto.190.1617887139822;
        Thu, 08 Apr 2021 06:05:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:622a:4c6:: with SMTP id q6ls2230154qtx.6.gmail; Thu, 08
 Apr 2021 06:05:39 -0700 (PDT)
X-Received: by 2002:ac8:d83:: with SMTP id s3mr7238545qti.333.1617887139355;
        Thu, 08 Apr 2021 06:05:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617887139; cv=none;
        d=google.com; s=arc-20160816;
        b=hTCgAhw70MNmoC9+e/uSBFyXvDSxP3ggsWIFXu651elu0FNpb2i/nd7FrssTZe0i6L
         8AzI6PvQDVKR1OJdFGYqn7isKmaxW9fGViXYZcpNBcx7+184lD1lrCSOko4AGmfBogzg
         FeXYZNwIoRY7pU2u2/QT4oWsObn0HQHLUXJNFCsHXWnHOrKQ70wx9JuS1W3JtN6gKuUC
         7uRBdILIxgSnCboLnVXMWZ1TXC0zMUkPYeeejB8Oj+C9sIfnLJjyofFsu+b6VRmNtzv0
         +eW5REAhjITmzTC7rhuhTOQYTEDuX5iBSTbnHkHL8eyBIKYBNB2L9YeVugmaaIxDBJdc
         u9pg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=BLjFOWC7ecmP5wIdvWitC0LBRNhZk+brZVJkGD7tAZ4=;
        b=B2BrGmZiTy/4KFheaeOSmjWtDngE5kx3QSMtMc3HRtaiH0juqEHVAUiFeGK1GIzuZD
         H2kX2lOIXqztEuL5e31O1sL00MTYcHK4zPyFJs0eDH+kdT6bXlgwtwp79t6exaVkzKD6
         Aqy79UG3namOcSy4iO5apPkKulwpQnVD1Ds+fJrKLyWBVd7Db1VzZi4HLcuRxxCw0dvD
         xqSoPgYi15ykID3Y1xrabBF4THHCbt90WUL1BHJj31Xhxd+zHXNI1MMCcQPFXd9QER4m
         O+qw6WKQjtlR7N1HZ4nadCizsLhRU0yVbV9XHhYDjo86FVHSZRrrXYp5p4MXbFqTJHWu
         EaGg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=VciY3cN+;
       spf=pass (google.com: domain of broonie@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=broonie@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c22si111075qtg.5.2021.04.08.06.05.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Apr 2021 06:05:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of broonie@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id A314B6113B;
	Thu,  8 Apr 2021 13:05:37 +0000 (UTC)
Date: Thu, 8 Apr 2021 14:05:20 +0100
From: Mark Brown <broonie@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>,
	Ian Rogers <irogers@google.com>,
	Anders Roxell <anders.roxell@linaro.org>
Subject: Re: Clang-Built Linux Meeting Notes - April 7, 2021
Message-ID: <20210408130520.GC4516@sirena.org.uk>
References: <000000000000adaf6505bf68fbf2@google.com>
 <CAKwvOdmWoLX-r09vuWDobkMjeTggf7dcdb1AhuPxmeE6z1yo1A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="pAwQNkOnpTn9IO2O"
Content-Disposition: inline
In-Reply-To: <CAKwvOdmWoLX-r09vuWDobkMjeTggf7dcdb1AhuPxmeE6z1yo1A@mail.gmail.com>
X-Cookie: Editing is a rewording activity.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: broonie@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=VciY3cN+;       spf=pass
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


--pAwQNkOnpTn9IO2O
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

On Wed, Apr 07, 2021 at 02:59:22PM -0700, Nick Desaulniers wrote:
> Hi Mark and Anders,
> How do we reproduce issues mentioned in this week's meeting in regards
> to building perf?

> I just tried
> $ make LLVM=1 -j72 defconfig
> $ make LLVM=1 -j72 tools/perf

> which seemed to build without error.  I do an instance of
> -Wunused-function and -Wmissing-prototypes in pmu-events/jevents.c
> though.

Yeah, that sounds like what I was seeing escallated into failures by
defaulting to -Werror.

Note that perf has a bunch of optional features relying on external
libraries so exactly what gets built will depend on which of the
dependencies you have installed.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210408130520.GC4516%40sirena.org.uk.

--pAwQNkOnpTn9IO2O
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmBu/48ACgkQJNaLcl1U
h9BO4gf/UK3nlg67aOYG++6Xsme3MmZWYA6FcxPQflR0wlrCqI+vlt0md9fhylMS
UkpSfU6QMyNE/Zzz3OWslw5RMKRZjZdap14CyfQ5xnaJCMx2t8Z4bwtqH2uN7mGa
+oLIq/ObEUC88cu9/U6bRvvNOdy6/XEnzKzFuNARpUnUehRQBbHoAhP+XgQ1do20
kKXtGyM+tdM7K7//yCXP3m2veAfjW4aI/Eh0bRnyqs2BGbvR2tXYo00QoFxdWX+G
tdMPj8CWt+g6soIMWGD+mpj9j9CScr9NFW4p2xxMdeusJzlji3gLrUVPemn1gYVD
QzF5gYlIJUnddQGtf49n+jN+hZu24A==
=BuFP
-----END PGP SIGNATURE-----

--pAwQNkOnpTn9IO2O--
