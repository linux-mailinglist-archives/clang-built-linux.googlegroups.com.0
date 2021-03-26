Return-Path: <clang-built-linux+bncBDTKFPPJUEHRBENO66BAMGQE3NN6UFA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x338.google.com (mail-wm1-x338.google.com [IPv6:2a00:1450:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AF2834A77E
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Mar 2021 13:44:03 +0100 (CET)
Received: by mail-wm1-x338.google.com with SMTP id a3sf688741wmm.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 26 Mar 2021 05:44:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616762642; cv=pass;
        d=google.com; s=arc-20160816;
        b=pPxQK+nt2sf1xnyCHsXQi1x1P6aMg/sMovDPuqvuWmsKpp+1DGdrHSEbxcdp5BU9P8
         cCHvhdIxXR+6gTNg6qHiEldnW4k6LQEa+w0arMC00lZxsY2cjRU7QVDde/v0eR9Kl2Qe
         Uq3e34JVm1cR87BFrvYg6JkqDhwSIulRV2AIIip/4lTnJoGEFprtdTbH7liPzHEDi37+
         zVde5Dn6NVzv3IBUoZC7eYJAUnkTymkYx4JnngHuv0P94MLCK+bxgaTByxc7GrVwn29P
         0TUVfH/6LresAA/BOh0ekucUzKgNfKxLjXVo8gQm8AwpGhs25sUGfwIXMLqCi7nw9wds
         XCEQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=sU00Qwr2psYzJzWRyWFw7aKXey3q9RREuxunPKdY39M=;
        b=DmtMQEw4IrwzChdinCGiDUVOdBnJ9sB74OSK+ZObmgFNAAzQRfZ/txJDE5aXEysCnw
         eGXrnFbgdaciqdtDv3z4ihrCYcF/hK9xfies++RZnp9qzBE7ZsZ6Z+hJfh1drdv+aYyz
         qhgLAZ2OP0cO6gyVaTKIAcriJ/H0wgPIIORjK/gTpvb2+obHQQbgNLFP+O9fe9WTvUgb
         rfplgNqcDvR6utMgtk+luLKlHsIp6Q8yQOSPp1/FDcKx0ZlGeSomN9/99L0uJku8ZAsB
         XNISbiCu8Q7FGt7Imd2YeNNo2jSDhvaBqpqrSt6ZvamfjMIMjVtmxIZZ2OCstROArFFK
         pBRA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KEQHQzWz;
       spf=pass (google.com: domain of thierry.reding@gmail.com designates 2a00:1450:4864:20::629 as permitted sender) smtp.mailfrom=thierry.reding@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=sU00Qwr2psYzJzWRyWFw7aKXey3q9RREuxunPKdY39M=;
        b=L3ZMKls5pFDwcKLLWoU9OS9buuu9ufF31aetX4sjoNhSU4bD/rP4ZOzwa8udYuzJD9
         L/YW3knnyxmw32R+njgtJjYJJwDo+gRZitVGAq2uVkBCKd8wn8oXDXDSVtmRtLPsoyrB
         GtH2nkVXALpKB+MxHYtKwVNTaSoIm12fGUrbr3OmzUhGANkRfrnIUsX5COEHk8lSsaF7
         DPjQ9hjjKO4wE8+K2RdB8WkQBaKV0feEeDs5L38GZo1duqaD1PA/OQIO75DbYXBZuz7T
         ONQ0R/WPjci9Px9hDDRI1SB3zKh5MAsbsMROyQfiYsgvMjLj1mHFlLvV83InhdqQP1k2
         uNLg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=sU00Qwr2psYzJzWRyWFw7aKXey3q9RREuxunPKdY39M=;
        b=XEGnbTAXflklUWPeT2O5h7OaQZ4Hvi3ZdFoP2yHxpANHwQj2LMhDhCnWk6ACEB+49c
         0GaHGYbfeW37GohFgL9E4ZYcUhGnr2YKokt/jercFcnBSkBvsRIhrkzbAcuiqNj+mOVL
         N8IWpK9q5q/cq+fYgkf//dyFfZQRfgTpYL4tlgYYik+hYcIpg2eKA7U73m+C+KIAjQZS
         c9jzlabxmf9p/1R2ODEzsqqj4mmplfRROsRrz9rK2HQADOkKxWY0IARZmq8bz3nc5Iim
         M3nyRDyQoTWYLUv23R2sewNtTyx6hAYwBliW2ZVZlJmKAuY14L2O9dm6ncHBfGVYD567
         5XIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=sU00Qwr2psYzJzWRyWFw7aKXey3q9RREuxunPKdY39M=;
        b=Qaf+DjWik0opO9olbBWKk3rlxOfojZsQIS+AWeOY0VtZ/fkpj5i0tlDEN6FwvaCjvm
         JfkgKXirvcDvMs+7+q9KBPtpwXSmRsv5Nq2SLskIt7WH0JHFatijwWei1itKglwlrTBN
         wJBOq1e7z8c1Qc1CQ547m/KOwwyoY9r5CFXmC5WwwbRmi8yb6Wl2TuQCC/whXiEfnqC5
         rypyN4s/vlM5A5vRYZbdDVDzgURfgx219jPJA5orUlIRP+Xcqa3E5cYBeDks+jkZ8TUo
         FGBGFuuWVU6cFrJHYVqcDctwmezhEm6zoiX6ya5PkW+ywZtKcFm2Gehq84/VGDzOkxv6
         48vQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532svU3IYl+nZceWgC75OTxuHa8IXti5QCYpHEzZsM6rpyZVmaT4
	trihFnYfUFfbn2cZmbbWrWs=
X-Google-Smtp-Source: ABdhPJzdMm4C1qkwuHJddWJs1TNZLyROLoWclB+ptc3crWw41eKJo+NYXYLdkm0//sgExoFYM5sm6g==
X-Received: by 2002:a05:600c:4f8e:: with SMTP id n14mr13308599wmq.166.1616762641978;
        Fri, 26 Mar 2021 05:44:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6000:162d:: with SMTP id v13ls1261338wrb.1.gmail; Fri,
 26 Mar 2021 05:44:01 -0700 (PDT)
X-Received: by 2002:adf:ee4f:: with SMTP id w15mr14526877wro.199.1616762641000;
        Fri, 26 Mar 2021 05:44:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616762640; cv=none;
        d=google.com; s=arc-20160816;
        b=oPGI8c3HdyuUuj23n45Vdaw7nQUt1u2PgGpzntzZ3xCcSeRSjvEThXEPQ9eQwcS0Q6
         ZCQ+cmfFrz603cmrQlfN/A9oSMst9HLkH9mc6uIGQVQ5CC8u+MYarL33a3uUTosAsGbZ
         eQzgq9i9GDrYpmZGNWn1Nf/bjQQXHZGoxP/TbLZ3NXKuDDOIUkgj/uzZhIRYa8CbYdo7
         r2lZyr6VNg7WzQ0C3Q34omGy8Fxnvdx1kDKklPSkkNPe/rqi6CJjQJGoVuQONNutXjWT
         N9QXQTGf5mQof/eCZjyii8Ydo5N/MpXt8ONugZtDLrlPWmxsdP6GBinyYPBpia9KQSeo
         mFCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=zHs2rz0P64Y16pZ4KFsK15GuVu5q4UHDRiwzGtDX5Xk=;
        b=ac16W7YDJNV2dwIgeXUS70EwqKMo59XtW3fXQvgp+jaa7pqzL7NnNVhOZpaNHHm/sB
         xnusvRm9ho+B+pnZKBNxObvD5ZiLU6NuajvEFtogpNkJCCZ65f3mnh4GmnA9ZP671rCk
         BElpu3e6OMnpc0ZUkTEoWHqh71E7BYoJtZDbr+IzwOis5+Qa65VuRs8SHieGa2by/RDJ
         4sCUK5SAPl43NV7XCiTqN6YeSmXAzaLMw80O15t3ppV1Uep0U5v/02FbX2stPPIzYoIG
         RpofVGiFD7xljO26tAT8y9P1asSYcylH2n3VxTlH3RmveTSc+LCnzYEBnSR6sdGN7owm
         pqzw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KEQHQzWz;
       spf=pass (google.com: domain of thierry.reding@gmail.com designates 2a00:1450:4864:20::629 as permitted sender) smtp.mailfrom=thierry.reding@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com. [2a00:1450:4864:20::629])
        by gmr-mx.google.com with ESMTPS id b5si385485wmc.2.2021.03.26.05.44.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Mar 2021 05:44:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of thierry.reding@gmail.com designates 2a00:1450:4864:20::629 as permitted sender) client-ip=2a00:1450:4864:20::629;
Received: by mail-ej1-x629.google.com with SMTP id kt15so8166896ejb.12
        for <clang-built-linux@googlegroups.com>; Fri, 26 Mar 2021 05:44:00 -0700 (PDT)
X-Received: by 2002:a17:906:4055:: with SMTP id y21mr14904860ejj.507.1616762640686;
        Fri, 26 Mar 2021 05:44:00 -0700 (PDT)
Received: from localhost ([62.96.65.119])
        by smtp.gmail.com with ESMTPSA id gj26sm3752684ejb.67.2021.03.26.05.43.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Mar 2021 05:43:59 -0700 (PDT)
Date: Fri, 26 Mar 2021 13:44:21 +0100
From: Thierry Reding <thierry.reding@gmail.com>
To: Nathan Chancellor <nathan@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Mathias Nyman <mathias.nyman@intel.com>, JC Kuo <jckuo@nvidia.com>,
	Jon Hunter <jonathanh@nvidia.com>, linux-tegra@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-usb@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH v8 09/13] phy: tegra: xusb: Add wake/sleepwalk for
 Tegra210
Message-ID: <YF3XJVD5PfGKxfxn@orome.fritz.box>
References: <20210325164057.793954-1-thierry.reding@gmail.com>
 <20210325164057.793954-10-thierry.reding@gmail.com>
 <20210325202616.xgjkdg7zev6apofe@archlinux-ax161>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="HPPmyzACOAwF/C+y"
Content-Disposition: inline
In-Reply-To: <20210325202616.xgjkdg7zev6apofe@archlinux-ax161>
User-Agent: Mutt/2.0.6 (98f8cb83) (2021-03-06)
X-Original-Sender: thierry.reding@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=KEQHQzWz;       spf=pass
 (google.com: domain of thierry.reding@gmail.com designates
 2a00:1450:4864:20::629 as permitted sender) smtp.mailfrom=thierry.reding@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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


--HPPmyzACOAwF/C+y
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

On Thu, Mar 25, 2021 at 01:26:16PM -0700, Nathan Chancellor wrote:
> On Thu, Mar 25, 2021 at 05:40:53PM +0100, Thierry Reding wrote:
[...]
> > @@ -2306,6 +3150,26 @@ tegra210_xusb_padctl_probe(struct device *dev,
> >  	if (err < 0)
> >  		return ERR_PTR(err);
> >  
> > +	np = of_parse_phandle(dev->of_node, "nvidia,pmc", 0);
> > +	if (!np) {
> > +		dev_warn(dev, "nvidia,pmc property is missing\n");
> > +		goto out;
> > +	}
> > +
> > +	pdev = of_find_device_by_node(np);
> > +	if (!pdev) {
> > +		dev_warn(dev, "PMC device is not available\n");
> > +		goto out;
> > +	}
> > +
> > +	if (!device_is_bound(&pdev->dev))
> 
> This breaks arm64 allmodconfig:
> 
> ERROR: modpost: "device_is_bound" [drivers/phy/tegra/phy-tegra-xusb.ko] undefined!
> 
> https://github.com/ClangBuiltLinux/continuous-integration2/runs/2196101892?check_suite_focus=true

Good catch. I replaced this with:

	if (!platform_get_drvdata(pdev))

which will work fine and is equivalent, at least in this particular
case.

Thanks,
Thierry

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YF3XJVD5PfGKxfxn%40orome.fritz.box.

--HPPmyzACOAwF/C+y
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAmBd1yUACgkQ3SOs138+
s6HLmhAAg6VGGfAUPFpswBOLFB6vY4Imt5wexLqOOm2CVgQjoVAt25YGeBNljtdZ
bSduOlYIT+QG9IrKj4zSCjE6RI3y3i/SggxS4Xob7ecbHh3ZRpDeGIcrJY6+XHqd
Eh2yu3NElQWSI6e6yADhr5wjrma6bB7jA9OfXU5VdUZn/OvQnia3Z0d1CWh5eOKj
XhtJzeuVELoTwi/Z1STdTjXT9Rcw7ttaYCyI/Pu4rrE7u3Vcwmu/N2pDf+CjRlkP
WcZwEFg3WnqpG+zxBYgPsDvEcicJcmkre4ssDGhIztMcIyVmUpGHUlV5pgknskBQ
u1Mmbu7zdYJsyFdQ3PnoOInpjn0adIp/kMrpToVDULHD8UbploTho/qa2J7XaCoz
EFkXiTJnzNWLNkWBsD+SwqJ2joLLvbopTh5vfW7mWaDxGN/gwLVNNR/ueSuuWUeI
wDmwygansqDJ5A7z1eaHi9MHrBTxxwWR4HpCzEd/nH0v/twBVj+Uyhfvm2ZCvzT9
rWwrAg7bS6d5yQCQPEqVaS23PS4AVP0ddaXf489KdNYwMcCrWEQPlcByEg84APhY
OtzEb6pxI25jpm7XWZPVAOp8XpBT4Xl8iPx0DGSWv1YZXXm+riSa+RVMsJp8KsAU
mGsd/PLWctV+cZjMO8BBZx+kCjTZA2vqZEQva8h2O0vERObkYUE=
=zpPK
-----END PGP SIGNATURE-----

--HPPmyzACOAwF/C+y--
