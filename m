Return-Path: <clang-built-linux+bncBDQ2L75W5QGBB2M35OCAMGQEYAPZBCA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53c.google.com (mail-pg1-x53c.google.com [IPv6:2607:f8b0:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id EE4D537AE84
	for <lists+clang-built-linux@lfdr.de>; Tue, 11 May 2021 20:33:14 +0200 (CEST)
Received: by mail-pg1-x53c.google.com with SMTP id g26-20020a63565a0000b0290209e5bf0fd4sf12843169pgm.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 11 May 2021 11:33:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620757993; cv=pass;
        d=google.com; s=arc-20160816;
        b=GdCG1JdMc8jh/kYHJVH+yL1eduYWmIOLWfe5nAh/O+W/xR1jv8mYas+NakOFLSo4L/
         XUnZjZLiQQYK93GXjl7YSu+0Yn0aU9yheITDEpggur2zDtbiks30fpVsdNliKAWm6f59
         KLKIkYmVQsRKF1WfP8PW68IgsJcy+CgiJXG8x8vT2aiBwiILG3WzyoQyGFoEGFFqJ+F9
         jXtRuF+fP+4k8sfOD5a+quiz9DbkxoBdEhmF2iQ5s5//ZzJPRRkfVAPgQOmcTF9knKO7
         QkVyN13UZVHgRtZSE7b/3DL6C9doVgii0Wn3pap145txCNLy3jpx/eEbZqfOT2Jwx9jZ
         j6vQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=HtmYHa88MEBxu/SJgT/JF4grAnmq1AA/pLTKwvy5Myk=;
        b=Aw85Kaytn/NScFmN7ozMfS60KZ4L6a6e9RD6vKAuWt72wVYPjpsyliOcGibZmkuZXL
         mgiDiAo6pC3e+x6kHWLZRxBD05Y9iNo9JMax1hYRI2o1jASJZS7Z4R7c8D14oVlUpiTe
         BxWTc6VZ0ucLdLe8YPasYde0y8V7YC4Kd/lQ2xIkXwIzqlK37PmqYv+jsL4bVeiOlkAm
         HzHUo/UT/vtXfpzYxQ9h7GIl/LdzrnzLRO0x/1GRLiC/Pz0bNntlMal/7awhFsWwnpbO
         Q9VoQ9HjGD+bI5BGxh/3PinCQ5zTcBOubSfFLQOEXbpjlUvV58KR+/ONFfNJQW2c2Y5l
         arjQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=eYl6h7md;
       spf=pass (google.com: domain of broonie@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=broonie@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=HtmYHa88MEBxu/SJgT/JF4grAnmq1AA/pLTKwvy5Myk=;
        b=GHOlN6oJxLvWPqBJ+IsnXzYXqEp/koP4ad+cMkeXGZzJlzBilfSMLFCddkDOsqFtBs
         gQcFTf4y437PNjM2Y5DiSzoloFj0bZewqx9IPKRpZJFAfcjGD7+HHvZRzObJAwQDh7CC
         j5sd3703bUFDSdAWdW3ID3+sFRFmb0gQB1QYxA8snHdTIvFqv8vfN7roIN4uf/1qiXHE
         /EGbGFy975KI/ul+mIF3WNIQP0uQOTinoK7Ydos1p0WoHdfGc0soUEd70tJyqWblIESs
         Up/l0uUuMl/c+Cxj+bdkdVKpzAsKvezRMP0ebAFKylcq5hC2+IHrEZI4QMWSga9iNnXV
         etww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=HtmYHa88MEBxu/SJgT/JF4grAnmq1AA/pLTKwvy5Myk=;
        b=sM+z0DpXpw3pGM0NdBD96fBmvGOc7IVU+mizN/DlFAUuhFr0o5h6P2S4rKh8pc6jmP
         MVC/oxWCJVCv+gxGyUq5IFHDzMTUgz54Fhhw2T//S0vwfRrGdSsKnJN6hiu39WEY70as
         xIwsDMkaCbbXTAwNHh8zqR+HFh5PdrI5N/7Rcqh7ucLJ5/NZfQq1Xv+7ImQARy1REon9
         b2vPYumdY7dNg9E+nfX/nul7pWpsgoxIxnRvnKBS4IUU/BDcHEdDrZJl7x2VU8lLVtWG
         etJoK76h76MHtzi2/ZJXboSZIcPmgZe5HrbKfnCLGCyGvl9ZsljaAne8Q/D/M8rm7WZo
         J/8Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5300ttSPovQ5LIgxYlSSxXJudRFVcIbiEtcsYUaLXv/k8KFygBOe
	nWbXHzFQCTQknbV7yEDRbtM=
X-Google-Smtp-Source: ABdhPJzF+0+Gkx5L8Gz7tir4ECARN44qLOFlZc07J7pyx1ICBsZ7LfFhHWwUZL77AV3LQrSYu+cfCA==
X-Received: by 2002:a05:6a00:230b:b029:2ca:4c19:ea87 with SMTP id h11-20020a056a00230bb02902ca4c19ea87mr3949898pfh.43.1620757993661;
        Tue, 11 May 2021 11:33:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:f48e:: with SMTP id bx14ls11297269pjb.2.gmail; Tue,
 11 May 2021 11:33:13 -0700 (PDT)
X-Received: by 2002:a17:902:e04f:b029:eb:66b0:6d08 with SMTP id x15-20020a170902e04fb02900eb66b06d08mr31669029plx.50.1620757993135;
        Tue, 11 May 2021 11:33:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620757993; cv=none;
        d=google.com; s=arc-20160816;
        b=nUEAh60jGROgNtjbOSAgky1Fx4J7qwROPlLQzQY+lw7pNebh+5N1ZB0oIXKTdBTNmm
         1Oyq3UH9BAdXiNTp5mhcWEhT79QNZG/BdmYemWyzhzNSavigkefT+NXsqFRwNX8SpZaj
         cKZIdNcu7g979znVMkckkJ3hhHAapG8GiVJafZYAI34bEnhFlfUZv6DsMHHaPKsjzEaG
         Gab3F61Q0oJl9wT9EjGnEJ1wduO09LHN+QKfpi/SAyor3BJACk9Afu6BUUnWi66k0xXO
         Vzbnl8vCw2zTzC3Q3iao1k+bUrDrwml5k6dxruxc06H5RFLStST9lbeeMvBHfzUbIlrO
         m6pg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=NFbeVznPPiRlfOQZH6RoqKlgBLOzBJ9omZ1iXrQQEGM=;
        b=py3X4mJeuTqW0Tof9T60cUmrgHWKta7THzVWoBf7sgyZqFoRq7Nl51dBZknqFZP8Ln
         p4cE1O5D/ORTchN1GBTZ+xGlISCVCxoaXPKg9TP9L7dZ0xdDpfW3nvnV6RIMbg3WI4fm
         wR2T8rAqo8vjmKIxxOyyRULifjMKJz0fev63TlSezTuH2TcmtOCBRI/zReczJCX2iDMi
         FYId+9+GR+w3CHWRxgSnulfyejTYYiG0JH/WDWOpL4cEtHz4OMogSGPTIKovfV5yJ7Qu
         wx1C+N/ZDmJDg0FQ9U30a0TO2qR9npWjyHa1m7RL3QaoTBiIxB7TpjrNDjOxM2+jBhXp
         +X6g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=eYl6h7md;
       spf=pass (google.com: domain of broonie@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=broonie@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d30si1224580pgd.5.2021.05.11.11.33.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 11 May 2021 11:33:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of broonie@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 17DB06190A;
	Tue, 11 May 2021 18:33:11 +0000 (UTC)
Date: Tue, 11 May 2021 19:32:32 +0100
From: Mark Brown <broonie@kernel.org>
To: Nathan Chancellor <nathan@kernel.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	kernel test robot <lkp@intel.com>,
	Yang Li <yang.lee@linux.alibaba.com>
Subject: Re: [broonie-misc:asoc-5.14 5/23]
 sound/soc/qcom/qdsp6/q6afe.c:1213:18: warning: variable 'port_id' is
 uninitialized when used here
Message-ID: <20210511183232.GP4496@sirena.org.uk>
References: <202105120137.4D1sa7ck-lkp@intel.com>
 <ae8f5ec6-889b-8b42-fc05-96021af5918d@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="iq/fWD14IMVFWBCD"
Content-Disposition: inline
In-Reply-To: <ae8f5ec6-889b-8b42-fc05-96021af5918d@kernel.org>
X-Cookie: Beam me up, Scotty!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: broonie@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=eYl6h7md;       spf=pass
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


--iq/fWD14IMVFWBCD
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

On Tue, May 11, 2021 at 11:23:27AM -0700, Nathan Chancellor wrote:

> Having both commits in the tree causes port_id to be uninitialized. If it is
> too late, I can send a revert.

If it's in my tree then the patch has already been applied and a revert
is needed.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210511183232.GP4496%40sirena.org.uk.

--iq/fWD14IMVFWBCD
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmCazcAACgkQJNaLcl1U
h9BKSgf/SYYZqP7qj7Rhf2IIQXlh89C1dt3/xctqoR21ENz5wVmkU2YVLGUFKTnK
NiD4CaM/M82EdxA3JNIlNg5Fz+VfEpW/7MGkHXuoAeX8xH0+3By51SXzrFDLo/Yr
x/VLQTUdgxpQ2MJ5su9tGDXWn6XtEOlVCbQG5UPk8NpY8UK7t2dcSW7FmNTGPvjG
QwioTvSsLGqkFN/Qteb40+0MnB2lMc+KtLCgJiXQL3mHOoUWxTCCLW6qUSN0Yr64
ZXYAxUIWlzeOi8WvqFArOOcftLywgzYtZGrnSS2bDK8PpHBW3IGFnrIZXb7xZTGE
B8Zdhcq1aO25/afMP9xKo7HIexSz0A==
=U/P9
-----END PGP SIGNATURE-----

--iq/fWD14IMVFWBCD--
