Return-Path: <clang-built-linux+bncBAABB54EWTVAKGQENDONTKY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x738.google.com (mail-qk1-x738.google.com [IPv6:2607:f8b0:4864:20::738])
	by mail.lfdr.de (Postfix) with ESMTPS id B1EF387159
	for <lists+clang-built-linux@lfdr.de>; Fri,  9 Aug 2019 07:19:52 +0200 (CEST)
Received: by mail-qk1-x738.google.com with SMTP id l14sf84521270qke.16
        for <lists+clang-built-linux@lfdr.de>; Thu, 08 Aug 2019 22:19:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565327991; cv=pass;
        d=google.com; s=arc-20160816;
        b=yJMImZgSGapoclpgMbb8dvbce+JkbZX08EaWOV3YoxT/CgyJWFYHBcMjBeM4Rcu4ty
         LXDXdofGEaT17IDlpshNTkl368P2B/Plcl7zufuFB08VPGOjCO+/uvLtFquSffe63K6i
         ernwDCB9UJj4aV7pObVa2cbNFu0uunDazAGFg6Lcc5tVVtC5564PcISwwwfT/LPEiu8e
         e9N1YQG9M35mNtIkdehmnKYc0MH8USBXbAJuigLL3xZSYmryKo2M4spw7zQ6SJlSMptP
         Mbnjdomcx0v8ZKU3UN/BtSQ8L4AAY7rm1TLnu1vYtr6eq0gJex/NItRn/+btEKnYuqbC
         0kMw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=tNGPs1odrNtNnVIe5EtXzfrhyMkZcObl+STvb058+c8=;
        b=TQVNYz0fDh/YdEVVDnoz5eDIuX4y6EWTO70CRKoD0Tropt5KCsZCRpXXD0FSsCmaaJ
         tEN83d3TJkykkOEAIgceVh0EGNluoWCAdIyEAhruw8FNjnAlViLgC7W3B9eg32mjPZ2A
         6bvherTMRk9zAwjSBpLdhQghFZzZ+eSyXkY0lftbbz7x4pEGHLxOaqLkjfjxadAjhxw5
         ZABSH4lrWbP0M3j2++rIHotQ+TG9b7x2NmkK1im/PwMZRqD3kh/DY2kdt0ueVpFyzi0l
         1TH3VsD1iMFBCaxiKPQbPfVz+XU/wOFg64YZgpHKXOWVK2+i/Qf/2GgncfXjjoRUWFWc
         IUSw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@sirena.org.uk header.s=20170815-heliosphere header.b=gMnTyyZv;
       spf=pass (google.com: domain of broonie@sirena.co.uk designates 2a01:7e01::f03c:91ff:fed4:a3b6 as permitted sender) smtp.mailfrom=broonie@sirena.co.uk;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tNGPs1odrNtNnVIe5EtXzfrhyMkZcObl+STvb058+c8=;
        b=FtR38PawNDL605KVqxKKqJVY5nn/U+N22lKBhdWL7v9Gq6tVcXzDBDdwVxpvIxlywO
         gzjEf26GEDliLWZ5NCGAoiZIJU+mnxE0zmRYyZHXy5/voyp15CU7/DSKsoYHiuD4JtQF
         WaG3VbGO780NuQrsbyMuxQtuoZ72n+adxRIuaonVySjVgbPN2uy9TIV+tKvqSnD2dibV
         zyc/QmK05gtFBheZth0KH8oEo2NHP0XTR9q1IofSOX+SB7l12PNWedVMH48ioXZCTYTq
         tDw19KcRtjYE2tagXvS0Y1WAKsLNg/Txl/726//5jCgE7jeJma1NJfsb2FhNk7VM9rOc
         nORg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tNGPs1odrNtNnVIe5EtXzfrhyMkZcObl+STvb058+c8=;
        b=eNUpSmiVzqD7YaPZlL6P/Zo/Flhv2SZDCaXtFyfIEXV3qiCXdMYSjcQxpkWZSlN7U5
         on91yjCdtDgYPialsY4rNt9W+90Y5HDz55Km9vsn3RTMeP2VnpLWJMSQInNB+bZDCyIS
         rXd1RjgfwSpA7Nc2esTqUULKGe94aS7yuDmGJvd6sAepQ34Y1P9cGTxPWX5qkBxQKYBY
         HuUa+t3UKrQ2kJ7lFEniUrPCWIPzj5SLPNniAc41x+a6yDFiHFdOK8Pg5htIkYxA5bV+
         UOEkGb7xkcSKXpf5jpPlkdbccohnSDY3ta6ed2ODE2s4G2cUaC6R6ZFcCAFnzckdh73g
         voBA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWwH9Mlnx63lM+YdWagPT0ox5Gxd7LRiQa2FIkwu4s7n1PU27wo
	2DhzBjWvNh22z96iPdWhp+w=
X-Google-Smtp-Source: APXvYqzUV5fT5/CHQ0pKP/8VF6VGYmMOzY971EVcyX6Pqe4awVNIQq+9ViTBhEcBxyXxxTB+hQ8iaQ==
X-Received: by 2002:ae9:dcc1:: with SMTP id q184mr16063991qkf.61.1565327991684;
        Thu, 08 Aug 2019 22:19:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:bf42:: with SMTP id p63ls3120238qkf.14.gmail; Thu, 08
 Aug 2019 22:19:51 -0700 (PDT)
X-Received: by 2002:a37:9c81:: with SMTP id f123mr16103549qke.135.1565327991573;
        Thu, 08 Aug 2019 22:19:51 -0700 (PDT)
Received: by 2002:a37:a54e:0:0:0:0:0 with SMTP id o75msqke;
        Wed, 7 Aug 2019 05:38:57 -0700 (PDT)
X-Received: by 2002:a5d:564e:: with SMTP id j14mr10502616wrw.1.1565181537054;
        Wed, 07 Aug 2019 05:38:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565181537; cv=none;
        d=google.com; s=arc-20160816;
        b=DWaEqktE6U3/cXnNb+1hsApMK0XW7aMJKZpT2icKYznJW5UBqDVzBSUdQdKDRnoL6o
         Sa6mqLqCFmzerVDGka2iMjRjX3AhuQB0bN8Mh/ySpiSXKshaj4FrBw4xRUs8kH3Nfa6x
         CIO8s5ei+S2czvpbOsrcvKOe2WsTKSTk5lIh7Ar2rolcis9+40zD2peRdPbzM9cVKJh0
         4y9s1axvIqLvtJ5uOLo7n0GBvLrw3G8ot+kNV/iXL7NcnkR74WG20fkuYX7/7H+/fU9D
         4ldYY/kSFZgKqhE8mun4QR9JiuBVqqSxzFdPSVGLQk0/TLHacFJAke+Ybx8UJkW5PgKW
         Sxcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=ZvlkfHFNBDYG/gZoSSXaUHiM/ZSIkQwUVjI/vqCOSuA=;
        b=cyS+6HAiCTJzH//0UgabbaT1eMKVycAZ1H8pq4vKn4RGuQXA65xpOhLRb8Cn9asVOX
         sD9sPhPXzDBBmYiLD5OxoTLihTOkWohxGLGAdViQaaTmm0LlocNVB118wT0NcYaiVN/k
         Qw9spqaie72xBCr423AV/JqizpZdU1y2oyqevuBMLY2CLO5uPSnNN2kOCRPpgxmZtQyB
         Io6k+PRYEuQSfNPF0O6/v/184wGkUHtPHhAZT1Olq09W6CucMh58QQ6sQtdDhPFPcIeG
         vCm/ponpZOibXtrodd2TfvtDAj/kL7NSbXiXWoBilWr+EFAvis13i8SWvpp6MzYDLHn+
         uqHA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@sirena.org.uk header.s=20170815-heliosphere header.b=gMnTyyZv;
       spf=pass (google.com: domain of broonie@sirena.co.uk designates 2a01:7e01::f03c:91ff:fed4:a3b6 as permitted sender) smtp.mailfrom=broonie@sirena.co.uk;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk. [2a01:7e01::f03c:91ff:fed4:a3b6])
        by gmr-mx.google.com with ESMTPS id f13si114226wmc.3.2019.08.07.05.38.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Wed, 07 Aug 2019 05:38:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of broonie@sirena.co.uk designates 2a01:7e01::f03c:91ff:fed4:a3b6 as permitted sender) client-ip=2a01:7e01::f03c:91ff:fed4:a3b6;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net ([82.37.168.47] helo=ypsilon.sirena.org.uk)
	by heliosphere.sirena.org.uk with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <broonie@sirena.co.uk>)
	id 1hvLDU-0007Vt-1Z; Wed, 07 Aug 2019 12:38:56 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
	id E70372742B9E; Wed,  7 Aug 2019 13:38:54 +0100 (BST)
Date: Wed, 7 Aug 2019 13:38:54 +0100
From: Mark Brown <broonie@kernel.org>
To: Guenter Roeck <groeck@google.com>
Cc: kernelci@groups.io, Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: aarch64 Big Endian
Message-ID: <20190807123854.GB4048@sirena.co.uk>
References: <CAKwvOdn0kv+N5raBDE_aPv637ROHmu7C1_C9F3PXNnAYSMTOYQ@mail.gmail.com>
 <20190806190254.GH4527@sirena.org.uk>
 <CABXOdTckrMfM_-5+pJ37KHveLE8oRDvFAzPftnp_5--fYJVuXQ@mail.gmail.com>
 <20190806200809.GI4527@sirena.org.uk>
 <CABXOdTcWG-wh9ZHMVmON+B4cxV64-8HDkTvpG61eTNAOYbs-jw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ZoaI/ZTpAVc4A5k6"
Content-Disposition: inline
In-Reply-To: <CABXOdTcWG-wh9ZHMVmON+B4cxV64-8HDkTvpG61eTNAOYbs-jw@mail.gmail.com>
X-Cookie: Dammit Jim, I'm an actor, not a doctor.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: broonie@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@sirena.org.uk header.s=20170815-heliosphere header.b=gMnTyyZv;
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


--ZoaI/ZTpAVc4A5k6
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

On Tue, Aug 06, 2019 at 01:45:44PM -0700, Guenter Roeck wrote:

> FWIW, I generated a big endian aarch64 root file system with buildroot
> and gave it a try with gcc 8.3.0. Works fine for me, at least with "-M
> virt" in qemu. I have not yet tried any other machines.

Yeah, the GCC big endian boots have been working fine.  It's just clang
builds.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190807123854.GB4048%40sirena.co.uk.

--ZoaI/ZTpAVc4A5k6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl1Kxl4ACgkQJNaLcl1U
h9C54Af/Sxz4QnXVAISMIGFSRj6HGRepOYHZbT2kGwq7t/23vD1ZWCI41dMTwRQP
QVKdK9lxNu9dWVjTNtBxyeBhccoNJaPqiMZYW1g7FIeUpG3Kl30WxXe5ZoHnPOMK
8I8wrk6djNwbDWr64mDi7zkIhgz2T9yU4Erjd+p9Jf/UgtdRGYkgHDLBOvVZsJ5M
ZjKinDKoA417bSkCZ7uZengNm0ocqWMqIhODapDaU3T0pe2DIXbbJooYMxORYPrK
CaTQSU1V61wgmk1s9/ZDumHQFOJPKnifcOTFYoNIgGX8uFuwpZNyLV8B5EtOfZBd
1y2SdJufMheY6qUOI+Amfo+PjHjQ5A==
=2aJ+
-----END PGP SIGNATURE-----

--ZoaI/ZTpAVc4A5k6--
