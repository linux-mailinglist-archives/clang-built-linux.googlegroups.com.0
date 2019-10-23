Return-Path: <clang-built-linux+bncBDQ2L75W5QGBBO65YDWQKGQE2SWIHQY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x438.google.com (mail-wr1-x438.google.com [IPv6:2a00:1450:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DE5BE182F
	for <lists+clang-built-linux@lfdr.de>; Wed, 23 Oct 2019 12:43:08 +0200 (CEST)
Received: by mail-wr1-x438.google.com with SMTP id 92sf5352424wro.14
        for <lists+clang-built-linux@lfdr.de>; Wed, 23 Oct 2019 03:43:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571827388; cv=pass;
        d=google.com; s=arc-20160816;
        b=mWdMDkR91A1rscaDpHa5FopTiNbJLgdfjhSHMQbB1+vPF0TvyDtnUy3xO4ihVW+e1Y
         bNjnMPg+XCbkvN6Kqk3YG/Fqlv73FUwmZicyH2poqo0MnvqR/+4GjWb3bcP5M8Kn3WLd
         DHPDdzIbtCptvHcR3feBHHbFERPxadxt1BzW6svdBEufCfLVMaNdW/gpD9scxf0NYQzP
         ugNN5nwoPhi/DU4+GFqQrcimFJVDaf4tH0dzNyZP4Er4cOcOQ9hkEyROBdnF4vCE7tKh
         mJSPCPkCb5LDrDT5hne9ZoO0t77V+Op7YGHhkMtKS+yGUaRmm4/+X2xchXRwIx/C4692
         Xs/g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=ypHD7LeEydiPzVvfV6s6MKg7s1bH0sVf/RDb/I+FPRM=;
        b=KsmXzKLZkSJ670g4ZO4nku5lA1nwDG4UgshXbd5ceoT46Sa3VAFp3LBHQ2+a4DA74Y
         iaurDcoW/4SqFNMsCEIX5wk0tr818noXu2+1Si9C6MQlwmffKW4C6+vXvsXjfzWibMl0
         07w3L8G8nDwUmCGtobkVTrn5SDyzn/eOUQdltMhAOtlEf+1mN7E8tJItLMini4ehs+6Q
         9mR9hfJjAf0tUopcfpmxT2egkYff1U4lMrGq/A5L3S/hii2ORDIROc+EFCpXduJhKA0J
         V8oLbhOQazH3EShh93Y0/ApXAJyD4FqXy5VJWU7S23w183roOQnemO1/6VjuxVu4ulEN
         LruQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@sirena.org.uk header.s=20170815-heliosphere header.b="osCh/jbE";
       spf=pass (google.com: domain of broonie@sirena.co.uk designates 172.104.155.198 as permitted sender) smtp.mailfrom=broonie@sirena.co.uk;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ypHD7LeEydiPzVvfV6s6MKg7s1bH0sVf/RDb/I+FPRM=;
        b=qcMBfexsmOImDWKXpiSAqfOPevoW7bi1rbnvwmI/OunsVpJDdk0eI/Pxyjx7gVXX1c
         phic6CtQ6AnbvfnJR0xtrDwpCfYxrl8gx1dawItU4Cb3UqXj+T8md5i6IaPVxTf9Ny4e
         NILqpMHj+iWV3joaDrkwYGRW24bIYpzfMEqAmwbk5hzYPsAz8TCagb/nH3yQ0SlATVET
         wUNz2Edo5PKNf03Eb5/sSgkP00LOK0AllfPqVimLHJ0+GQc1Dvow3vivHhL2alesQUOI
         rSKpoB5jhv+l5NdFjElUJBvfajccsU8v+qoXieKHRgQAw2h/uKLHHSsNmu6Lv/w1ld4A
         YYug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ypHD7LeEydiPzVvfV6s6MKg7s1bH0sVf/RDb/I+FPRM=;
        b=SnAicz665Z7k3zHjN0zc4QvxQpEYtCQJUTUuMa17hetYVa/OeeKwGiT0UWuPAqFB2p
         vm67Q7NhHT9PyypOoWhzRVSOctKPZLVjzCNpEOrmX5bkcADzGFpb20VKNpDav4OHhgHT
         8Lqkzucv4WPfDu/MU+mh1kCy2KHmlcGTyFAlNBLNZbaiQzMKx5R6JR3sQKCpnV8HmFff
         jTA3x1vniJNAHuLeGkMQAwCYlwts/VEfPC6l+48+cHisEZcO3P74jQzjNNJasB5NnY+y
         PcAzcL68ejKJ9ILpR3j/D+qqJ4BpkqXxxlp3pp86GXRaNQWdX0ygq7S5aDxVTgQbhDeB
         xqfA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVD6yipoSGb4Gzf7dOFY1STcFlWvZiRzETh9S8MvzBQcJn26bmp
	kOa9+vQEwffZDKAR3gFraH8=
X-Google-Smtp-Source: APXvYqzv6OUxyt9YGAXZBAU/KQuh31wLT9SO+AQ6Zqlk5Ard/6Ld59wy9V2ZlCtXb2itRybRME6wLw==
X-Received: by 2002:adf:ff81:: with SMTP id j1mr7675615wrr.98.1571827388188;
        Wed, 23 Oct 2019 03:43:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:fc85:: with SMTP id g5ls692209wrr.4.gmail; Wed, 23 Oct
 2019 03:43:07 -0700 (PDT)
X-Received: by 2002:adf:8103:: with SMTP id 3mr8295821wrm.194.1571827387559;
        Wed, 23 Oct 2019 03:43:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571827387; cv=none;
        d=google.com; s=arc-20160816;
        b=su1iKPQKyiKyD45R4mXquxB5j3WN3zaT9coFyrsg6Lc7lXlHrI4gxM/piM4+eZwjLG
         jee5QGEJ7ipfFpsOe40gO7E/TXidgRh+TnALvGTK11zTSYdS4caOdN/hMtJsz6g8poP0
         WWmrzI0BALlDziY4XZzjNbBpJHUobvz/E6q8YyQHTNgcleV1Dezht+OMsGCVxz1WbRhD
         IZr+qnagtDSNFd+Zb354BxHai4fOvxx7K+64AuikTAy/5vT44TUkkzbfmEZRC50J5zQ9
         yYRE619Y0LJjONJPqXoLwLUxlGWHP4L58J7dlfuXaaVG8rCeco7vzjAKn2N5bY16aj4b
         N2HQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=o8+aRiWYArgOfcIQUpcz0HRWYDcLBPfXp8bzXS/M6uk=;
        b=gj11z+OpxcJ+g8Ow1Xp7uD3sT1k3VtTW2xdOnrkjhFTyg12Ab66batS6lvCWUOl6Lb
         aSJpS13UGhRqSZ7FLvnAqW0QFatGuygy47+CEuTLBl7UwO4Frciv57BwnDevFg7Ziyvs
         pphTDYql/diWX52+ZycVXBvPcN9m0Spjzvzuji1l7MfcdATdNUUYJqvI606qFAsMBZhQ
         qtGIqUvgvaE0z72duQyOz8iem6RF5rY8WtxjAfnIWfZluaEzc+qyKrXh2ouq28vHAKB4
         UBVO4J5nwO1J2UO3trnDv7WkrcHMLH4JLyXYFpNdwZQWqi0YXp/O7oQb34YiKz5+fJVB
         SdEg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@sirena.org.uk header.s=20170815-heliosphere header.b="osCh/jbE";
       spf=pass (google.com: domain of broonie@sirena.co.uk designates 172.104.155.198 as permitted sender) smtp.mailfrom=broonie@sirena.co.uk;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk. [172.104.155.198])
        by gmr-mx.google.com with ESMTPS id 5si1813550wmf.1.2019.10.23.03.43.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Oct 2019 03:43:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of broonie@sirena.co.uk designates 172.104.155.198 as permitted sender) client-ip=172.104.155.198;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net ([82.37.168.47] helo=ypsilon.sirena.org.uk)
	by heliosphere.sirena.org.uk with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <broonie@sirena.co.uk>)
	id 1iNE6b-0000J4-QS; Wed, 23 Oct 2019 10:43:05 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
	id 0557E2743259; Wed, 23 Oct 2019 11:43:04 +0100 (BST)
Date: Wed, 23 Oct 2019 11:43:04 +0100
From: Mark Brown <broonie@kernel.org>
To: Viresh Kumar <viresh.kumar@linaro.org>
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Kukjin Kim <kgene@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	"Rafael J. Wysocki" <rjw@rjwysocki.net>,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org, linux-pm@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] cpufreq: s3c64xx: Remove pointless NULL check in
 s3c64xx_cpufreq_driver_init
Message-ID: <20191023104304.GA5723@sirena.co.uk>
References: <20191023000906.14374-1-natechancellor@gmail.com>
 <20191023032302.tu5nkvulo2yoctgr@vireshk-i7>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="9amGYk9869ThD9tj"
Content-Disposition: inline
In-Reply-To: <20191023032302.tu5nkvulo2yoctgr@vireshk-i7>
X-Cookie: MMM-MM!!  So THIS is BIO-NEBULATION!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: broonie@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@sirena.org.uk header.s=20170815-heliosphere header.b="osCh/jbE";
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


--9amGYk9869ThD9tj
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

On Wed, Oct 23, 2019 at 08:53:02AM +0530, Viresh Kumar wrote:
> On 22-10-19, 17:09, Nathan Chancellor wrote:
> > When building with Clang + -Wtautological-pointer-compare:
> > 
> > drivers/cpufreq/s3c64xx-cpufreq.c:152:6: warning: comparison of array
> > 's3c64xx_freq_table' equal to a null pointer is always false
> > [-Wtautological-pointer-compare]
> >         if (s3c64xx_freq_table == NULL) {
> >             ^~~~~~~~~~~~~~~~~~    ~~~~
> > 1 warning generated.
> > 
> > The definition of s3c64xx_freq_table is surrounded by an ifdef
> > directive for CONFIG_CPU_S3C6410, which is always true for this driver
> > because it depends on it in drivers/cpufreq/Kconfig.arm (and if it
> > weren't, there would be a build error because s3c64xx_freq_table would
> > not be a defined symbol).

> +broonie, who wrote this patch to see his views on why he kept it like
> this.

The driver should also have supported s3c6400 as well.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191023104304.GA5723%40sirena.co.uk.

--9amGYk9869ThD9tj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl2wLrMACgkQJNaLcl1U
h9B2ZAf/eQxJSi8vjkh2szC5fpPoxL3PqhhtoNyHk9pyamhKksLnfq8Wfc5cXoYf
m805fFfs10op9oNpI//wwBy+WtmSWx7wFDZx+by2GeKvzPfCqjdXBvUziAtQhq/q
pU4RI10nDISz7KV5+MogDYKIqS86tiaCpprrXQI9B524i1u1TCIiaqoW9EC6eho5
104of9kneV1wM3wKRtz1W9HkOlV+Dnm1rDRWldGriYbd+HAJNhxGe+LNiLubnATf
N3ntYDNTJmhuwc4KWuzOTHQE+5RXi2VBkk599ZoLoNSZhd6M5a4UU896+XYBjvEN
NBjAKyjIVg55uIINznEJ2YtoD+u6qg==
=wd9j
-----END PGP SIGNATURE-----

--9amGYk9869ThD9tj--
