Return-Path: <clang-built-linux+bncBDQ2L75W5QGBBWHK533QKGQE2CK3WSA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa38.google.com (mail-vk1-xa38.google.com [IPv6:2607:f8b0:4864:20::a38])
	by mail.lfdr.de (Postfix) with ESMTPS id 30B5720FFBC
	for <lists+clang-built-linux@lfdr.de>; Tue, 30 Jun 2020 23:57:45 +0200 (CEST)
Received: by mail-vk1-xa38.google.com with SMTP id h74sf3623228vka.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 30 Jun 2020 14:57:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593554264; cv=pass;
        d=google.com; s=arc-20160816;
        b=BM+lzUDzed9LBfdEwJX9Sbt3ubEsZ7v5tlFUY/G7Gw4Qxa3Q7R3OYCcitirz0H+9N2
         5yrvjGIMlO7JN3ZphlEyTELIKtIg7IaRvl/edxxWtZG5sImRm5QBlWjzqBXtWvKD60uI
         uWsC3WJ5sKsKL4M5IF+HtSfIhZDyoo9f7m4d8kwYGpyKF305kU10HNJQtMiM+T9FAViQ
         CWP2NY3lGwCKAlb/nhM97hJYAN/+xVQc59XfWbasoof5j2Y8hR6TQAaCcU68aNtJDz9G
         qF9vtJXJSs19Wp30igZ4+R7cwcop/f/HNtgAyxB4ZWYqelIFuSuzxfhHtbG0XswtYEvd
         CjoA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=3AMc97p6iZlX+GREePoyoBdVneVgUoGvnpcgBS3ic2U=;
        b=Q+tYdOvTXO1G2zTQEAMDTZQJvG4vDOz/UjqfrZVVmQjE1llutyNeru2Z/v9hPAaS18
         QkyaUjNKH/m0RY6Tc2RSkDik+/ECcEdYg2/wLqdblE3fx3zm7vgXceIui0iKLk6YdZUe
         HxfyNiHXJEh9GSNGTpjSOTTo/H4tdO8vozryNCCB+gGT7HfEtMyAu0XO2OuJdT1QZmuM
         UkrpfpUsQnmRnU4bisXIBQV5lxcN73fotKO58ZmxbqCM4m88htfY6CIiCFXwn/SGd/Ls
         8r6+aVdx46I0hOhj5cu67I8/vm4AkWwukMDr2R2hDeEVWaiswDPYWYxrfCKVag52+Gr8
         /E7g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=1oNgD8S6;
       spf=pass (google.com: domain of broonie@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=broonie@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3AMc97p6iZlX+GREePoyoBdVneVgUoGvnpcgBS3ic2U=;
        b=mvlriZXPZbtEFoLDRt/CupTl/kaLzc9idYPpa7wjIe6D2s+9GyddOcl+GwNEaxrKmS
         4sQHtzd2Rv17XYT/lpowtgdmuusYJ0FI8e1VBCuhXAmOA5u7MuXxp2ij+zmFZkQ1Cg5r
         60FnkDDD+MyFtRZ5wTvvg64McZqxNtBACPInxdiMyGo8iVkWJEhHIdJP03kfjUiqKsYH
         RfT3VRxGXIJ9OUDTVTtt6g5vrej5pXmHHrEOHSQzOssul9RKh84vp0rpyW20GZMxxlpR
         COPDhrSGedT4jbtTnz/wKwIBFUeoltv5xwqg34zQPP4evxYpX/Y1DabYJLRKLOrLZ+TI
         cQ+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=3AMc97p6iZlX+GREePoyoBdVneVgUoGvnpcgBS3ic2U=;
        b=IFkWU1mauj3yhL9i+z+dC03Vqm8FgCofnIRdGMwOgKv8GhG6V6qdA5qY01MldUfOhx
         /8DIAaDK64Of6srpvBCKqxEF0kmiZFGZV59uEBBHkRcODRePKlCHXAwubC2R+2hh9xkf
         JA/DxRiC8XQE3mj+WBd0Z/hvyOSz0tA7/fORVkdYjlKAKo3QsP+fym6tuXGzzlt9QSG/
         Ane7Lx4OYm0MZVxTDFAx05bfM2PU9ki9NkM87ytDdzopfTzYyRQ18dY6zCRxNVHLIzhf
         OWcj3KG3B/MAxuP1WvYZYKddh/lFaUnxf524Lxt/tBTBBZwfnHtuJ7aX6sFULb4Fv/kV
         1O1A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5321riFYxg5SdT/w0tFpr4fXYvqiBT/jlxNS69P5vFPQ/hnME1ch
	xi/NlN/BQzJChnJpMlHg/Y0=
X-Google-Smtp-Source: ABdhPJw/URK+7Nt3HMdcv1dTm+juCRJkJ1LaAuAJMyxdicwR2Q1B89TwVai+o6UQH489ECr7AQEP3Q==
X-Received: by 2002:a05:6102:127c:: with SMTP id q28mr10079635vsg.231.1593554264229;
        Tue, 30 Jun 2020 14:57:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:5515:: with SMTP id t21ls22502uaa.1.gmail; Tue, 30 Jun
 2020 14:57:43 -0700 (PDT)
X-Received: by 2002:ab0:3145:: with SMTP id e5mr16389438uam.73.1593554263827;
        Tue, 30 Jun 2020 14:57:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593554263; cv=none;
        d=google.com; s=arc-20160816;
        b=Q1TycHLrj1GlJ4mdg7uIYJ2+yGMj0q2fqVm7JSd7FqKEuiMpmdS2yf2dNG+aaMpY6W
         KQXmsfPQY540aB5V7zRkjfbH0O8kSfDWB+etLtit0DMNSa9stLFO9OnamcLNE0UUnWH+
         eat+9vV1O1n8eMFfDcYTK6ckXYZdyZbkk1RAyoD4M3hUVQBUqXcSbcsnguEqgfBwt2gp
         yAcPP38swDwePD2IrrPE96Iz+ooLjkBYrH4KcolrOxdwg+bSd3Tx4s6/G6t4w29X2FeG
         MUMR/BjBfla9ScqM0wEze1GwSrO0xHVUU7jluwjaojFPeqwJrDwHczyReALcwtKtZDlq
         EyAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=5keAQVF7b4ftGrYoXRZgrZGg8YNuW3D3H8SV6KkMoLA=;
        b=PqMb50Dd/NmEz0vW6wj9V0gm605FVBgWUPJFfrqgi9HjBRbQADf+pyIRm7NPNtna/q
         AcviOeiMmGYlW3RfT0YDJ2o6mB/cNxXVpcfAA8tX1JctqV6lhf6KG51Wb1Xembs8ARVU
         iW5jBlZETtafyFCkSI1Xiz2t8K4dXqZN7qqrQAvS3JLSTQNCVTGAsBxD7Sf8YpWhAbGq
         hduoyD2TxpK8+CwE/TOzY7JivW5q8Nhfv5Bgf5dCL/ohAfRMe3W2Rxu/dLAX4CupTZqB
         yreDZeUoCJfAAynOCooZZNmMo6/ewqDo8ZRtLEptL+kf7g5cgiRgGg/8iRjsaNUScx2H
         kC0w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=1oNgD8S6;
       spf=pass (google.com: domain of broonie@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=broonie@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v13si237499vsk.1.2020.06.30.14.57.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 30 Jun 2020 14:57:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of broonie@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 067E4206B6;
	Tue, 30 Jun 2020 21:57:41 +0000 (UTC)
Date: Tue, 30 Jun 2020 22:57:39 +0100
From: Mark Brown <broonie@kernel.org>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Cezary Rojewski <cezary.rojewski@intel.com>,
	Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
	Liam Girdwood <liam.r.girdwood@linux.intel.com>,
	Jie Yang <yang.jie@linux.intel.com>,
	Sia Jee Heng <jee.heng.sia@intel.com>, alsa-devel@alsa-project.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] ASoC: Intel: KeemBay: Fix header guard
Message-ID: <20200630215739.GN5272@sirena.org.uk>
References: <20200617010232.23222-1-natechancellor@gmail.com>
 <20200630210441.GA3710423@ubuntu-s3-xlarge-x86>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="kK1uqZGE6pgsGNyR"
Content-Disposition: inline
In-Reply-To: <20200630210441.GA3710423@ubuntu-s3-xlarge-x86>
X-Cookie: Walk softly and carry a megawatt laser.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: broonie@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=1oNgD8S6;       spf=pass
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


--kK1uqZGE6pgsGNyR
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

On Tue, Jun 30, 2020 at 02:04:41PM -0700, Nathan Chancellor wrote:

> Ping? This is a rather trivial patch.

Please don't send content free pings and please allow a reasonable time
for review.  People get busy, go on holiday, attend conferences and so 
on so unless there is some reason for urgency (like critical bug fixes)
please allow at least a couple of weeks for review.  If there have been
review comments then people may be waiting for those to be addressed.

Sending content free pings adds to the mail volume (if they are seen at
all) which is often the problem and since they can't be reviewed
directly if something has gone wrong you'll have to resend the patches
anyway, so sending again is generally a better approach though there are
some other maintainers who like them - if in doubt look at how patches
for the subsystem are normally handled.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200630215739.GN5272%40sirena.org.uk.

--kK1uqZGE6pgsGNyR
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl77tVIACgkQJNaLcl1U
h9C7WAf+JjcaYs5BFK44gTZgBmWsKTiCopbq3uQWJFLJ+feviYWrqG3/X2GpjxYn
YidHVwaQU0nI0uAbrHUyM+RILZ5ocezuzQ1ydnolNLS0Y4k6s57DV9SA6AthD6a3
mVDj1kV3r2IxSs6dEGLV57Nncs5jP4bvaV1lqt/2vvQXgECZFlVNWZmcY7m2OLep
AUjPC6mn5pfN4ekDOXcEDh6D5RgWzgw0iGg/sgMCkiIqbQjvVo1Vb6wdkl/7q0yC
fRijXM94eslYKA7dzh6Wwy5rlOBQWdfkdsbR9CMOMLdPO1zwozXCu7liK66b9Q3M
WMxtYJBX2NejwkxkRJGcleYW+miaiQ==
=Xj8M
-----END PGP SIGNATURE-----

--kK1uqZGE6pgsGNyR--
