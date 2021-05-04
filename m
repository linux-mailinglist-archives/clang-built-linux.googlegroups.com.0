Return-Path: <clang-built-linux+bncBDT2NAOB24NBBGONY2CAMGQEGKQ2FAY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x340.google.com (mail-wm1-x340.google.com [IPv6:2a00:1450:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id 45234373113
	for <lists+clang-built-linux@lfdr.de>; Tue,  4 May 2021 21:55:06 +0200 (CEST)
Received: by mail-wm1-x340.google.com with SMTP id s66-20020a1ca9450000b0290149fce15f03sf713752wme.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 04 May 2021 12:55:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620158106; cv=pass;
        d=google.com; s=arc-20160816;
        b=x2AAVC7lotABxwoJ9ZrztRZeNEIanBe33V2dhUOI9c+AGJ8BUckf22ycXDUrQ7f4eD
         Tairyuj2la+O5M1t91YLmhhVhTBiyuzWBoPFKFdsj74WbDj5tRUbQlOwCfOiX6lrSols
         Tl7mX5HejJJs6BCBrUoHUCKYeGpAmkB3O12a0pRyqMcr2XkFw0h0GmeZrh137ftdWIRR
         Qv9R/lpjMcGno4a6mgykQCVzTj63RK7v2sNZmMZmXxkalrKaI816ck6c9piQDd0qPFv6
         BGsvPLZGSRlU8OX4IWTSsq0STcz6EcNBjdW3196fV2FM61nXNGfVds+0OkS9v3o6vcIg
         N2+A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=ahRtJZe9Gst8GdIPpp0Mr+IZ4aUz1Yq7ktTjkjFAkf4=;
        b=v6by1acBJ32kvzZQQ3uHmSHAE7IJU0ODs6+/BfQRJhAbi3bAoMNuBqhQcQpc1r+4oa
         Mu4vzQc0yxiWKODEi7uB3JBDqoYw8nuawIJf/TYz9YnJRW7dDxeKLj8W06B7+uYXhumw
         gSyus81OwuobtyvXn8om5Q1n4/FtgIqEntItNeauueLPYMw5/asxMCQVHl2Zh60nkpDA
         VUdn6e/oaDpZIq3OU3fdXmdI624dR7zTzWha6KqVNafJstd4aoiV9Ic5+Ny4DMsviAjL
         tT0L0lkE3k6upXmsvF38sOR4fICEs1YIO4e09OzPvs6C38x0zlTrjeRZqN8Qnzq6gEIW
         fhJA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of mkl@pengutronix.de designates 2001:67c:670:201:290:27ff:fe1d:cc33 as permitted sender) smtp.mailfrom=mkl@pengutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ahRtJZe9Gst8GdIPpp0Mr+IZ4aUz1Yq7ktTjkjFAkf4=;
        b=nL7aOEx4NV2eG+IwRmjLnWkVxUGqJDrl1MpBDL/DtqZtI3p3OONIPwHN7Z2BgLjEV5
         zqnSr2/UqOpfk40Fw6Pk5jS9m+bM87wWL52iaC/VYiryxDMVpMwfLebPo6PoAwwey07r
         jgVNZApZRKhSbxLiQdulZNHCedU/3rYKNYjBCZXdFRJPqoPL731ZfMZGQFkKpMmHuW5X
         buBshBKpivFs2RPUhqbuJFL/VjknbpG2HeV0mZYsgQz+smmfqb+6NOe2AURWiJDsuxhp
         XbTPOrLJuBoohlVsPlt/tUFSi/poncoyuLhITIK6OiGZ3fuS8oFrJcaCxDttpcDw19BV
         w1gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ahRtJZe9Gst8GdIPpp0Mr+IZ4aUz1Yq7ktTjkjFAkf4=;
        b=R9qgbXx6zXsIWVQsOi82RwoRMdSsU1d+TGEsA2hobQDhKepqgVOeEXc6QySx7Elg9M
         UdUtvDW94z1R6+FXq2lJn656k5KXx8w1eumpD34fIQ4Dwnb7HtmmcRwhcN4aAtdL/HBx
         XLBKiW55HdWW0XjaBpKUgBABf35B5ZgAj/fc1pvVQCMucVr86twyh9VJYht44ZU0f6s3
         Bhx++3nrMzQtbMBw8FHCr3sRUcouJBmVP10rsWlMEXZ9abtRx9++VYTMpoPaAio8m5DO
         ZR1IfwJ/6WkvwSwhabd4yd8fbd3Kbwj5HnAKKl8JOgqytV+SU/RJbwzbUykNEf7JG5Ts
         exYw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531myROsFExFUgNXBUnXC14IXh89LEkwj+LxgxIEZX5hrkPSIuL5
	U2hgzJvEw9od6hG5qw8Mh1w=
X-Google-Smtp-Source: ABdhPJyczkt/gwd/yARrEPgL1A9/LC2BGlscov1hekLIzLaVAK3m7amPWl1iKBhEQzlgOWrMNaiMZw==
X-Received: by 2002:a7b:cc19:: with SMTP id f25mr3624921wmh.153.1620158106007;
        Tue, 04 May 2021 12:55:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:e341:: with SMTP id a62ls8423087wmh.2.gmail; Tue, 04 May
 2021 12:55:05 -0700 (PDT)
X-Received: by 2002:a1c:a949:: with SMTP id s70mr27954144wme.15.1620158105116;
        Tue, 04 May 2021 12:55:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620158105; cv=none;
        d=google.com; s=arc-20160816;
        b=D4IAthNEO7rjaEmmHjGtgsMcww+lO2zZXgMsf/37yr68bojt5PEuF3z7Eiln3s4B4p
         dOtidqNr0AVgQkuS8E/gWqXXc2A0K/mdtEsD6M2ouRueFngG3QshGbrx5ahX7gpmeYIl
         0en6CKMISi/xlAyyBjqaG8gJlAzN3XT9W0r4pkfnH8Q/OMBFoq5AYSIMl4WRCyqKhrSX
         OGDtuWRM6H1YLQLatMdYUBmq19mIbSPpOPvMLRi9bPNrfJp/E1NVJufF68z4/PBTOyqN
         gLferBOllvoJINgWKGiDeKHGTaMJwF+WNt5MovqCPDtv+k9IhHZc6+ubxadHfpGuszC5
         vEEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=3ctbeegtXfSOUOmIBO7rhy6tS/2elozgp80U0laGzqw=;
        b=otF7+FX52e/aIzA0NN4x6ZZR0O4AcwKBvRktGnzdJQDkTbb3LZqpHTDIkd/ZvZdd95
         LRquAIJQd1e3gb+JMhvOX15G4Qhd6sX1JZRl+o4ctl3TLKHvbY7x+QxjEFQvdLRNI6XV
         V6bdCR/MFIp9EPO0PaFuCxCCGSidXhyno1lyMsUEweqtRlrmGRh+F8SJwmQDbBdnfyku
         Jnl+g5G+QNJiC1pRg7OEoeyWJ/+Zb3lXsVokGXf6ryvw0uvCtSwyFSnusNFCQYTOGeYs
         F+F+iXpIYPj2oFIhUUQ8LDiXlw553RS2Jb2dvrUrNoo+kZWctNEdq9LywGmRXBVjc9XT
         wwdg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of mkl@pengutronix.de designates 2001:67c:670:201:290:27ff:fe1d:cc33 as permitted sender) smtp.mailfrom=mkl@pengutronix.de
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de. [2001:67c:670:201:290:27ff:fe1d:cc33])
        by gmr-mx.google.com with ESMTPS id s9si282761wmh.2.2021.05.04.12.55.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 May 2021 12:55:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of mkl@pengutronix.de designates 2001:67c:670:201:290:27ff:fe1d:cc33 as permitted sender) client-ip=2001:67c:670:201:290:27ff:fe1d:cc33;
Received: from gallifrey.ext.pengutronix.de ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=bjornoya.blackshift.org)
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1le18K-0000rY-Fw; Tue, 04 May 2021 21:55:04 +0200
Received: from pengutronix.de (unknown [IPv6:2a03:f580:87bc:d400:4880:7cee:6dec:c8f9])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	(Authenticated sender: mkl-all@blackshift.org)
	by smtp.blackshift.org (Postfix) with ESMTPSA id 26BE661BF76;
	Tue,  4 May 2021 19:55:00 +0000 (UTC)
Date: Tue, 4 May 2021 21:54:59 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: kernel test robot <lkp@intel.com>
Cc: Schrempf Frieder <frieder.schrempf@kontron.de>,
	Vincent Mailhol <mailhol.vincent@wanadoo.fr>,
	Oliver Hartkopp <socketcan@hartkopp.net>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Timo =?utf-8?B?U2NobMO8w59sZXI=?= <schluessler@krause.de>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Tim Harvey <tharvey@gateworks.com>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com, stable@vger.kernel.org,
	linux-can@vger.kernel.org
Subject: Re: [PATCH] can: mcp251x: Fix resume from sleep before interface was
 brought up
Message-ID: <20210504195459.hqa65mwiuyzwks4t@pengutronix.de>
References: <bd466d82-db03-38b1-0a13-86aa124680ea@kontron.de>
 <202105050327.Ryh9Vqhg-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="yjdvkhwb7e4yt662"
Content-Disposition: inline
In-Reply-To: <202105050327.Ryh9Vqhg-lkp@intel.com>
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: clang-built-linux@googlegroups.com
X-Original-Sender: mkl@pengutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of mkl@pengutronix.de designates 2001:67c:670:201:290:27ff:fe1d:cc33
 as permitted sender) smtp.mailfrom=mkl@pengutronix.de
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


--yjdvkhwb7e4yt662
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

On 05.05.2021 03:25:57, kernel test robot wrote:
> Hi Schrempf,
> 
> Thank you for the patch! Perhaps something to improve:
> 
> [auto build test WARNING on mkl-can-next/testing]
> [also build test WARNING on v5.12 next-20210504]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch]
> 
> url:    https://github.com/0day-ci/linux/commits/Schrempf-Frieder/can-mcp251x-Fix-resume-from-sleep-before-interface-was-brought-up/20210505-000504
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/mkl/linux-can-next.git testing
> config: x86_64-randconfig-r012-20210503 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 8f5a2a5836cc8e4c1def2bdeb022e7b496623439)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         # https://github.com/0day-ci/linux/commit/a6e3fbb55cde65e2254ce0351b92997d14724726
>         git remote add linux-review https://github.com/0day-ci/linux
>         git fetch --no-tags linux-review Schrempf-Frieder/can-mcp251x-Fix-resume-from-sleep-before-interface-was-brought-up/20210505-000504
>         git checkout a6e3fbb55cde65e2254ce0351b92997d14724726
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
> >> drivers/net/can/spi/mcp251x.c:1244:1: warning: unused label 'out_clean' [-Wunused-label]
>    out_clean:
>    ^~~~~~~~~~

Thanks, I'll squash that into the original patch.

>    drivers/net/can/spi/mcp251x.c:1335:17: warning: cast to smaller integer type 'enum mcp251x_model' from 'const void *' [-Wvoid-pointer-to-enum-cast]
>                    priv->model = (enum mcp251x_model)match;
>                                  ^~~~~~~~~~~~~~~~~~~~~~~~~

This is technically correct, but we only put the enum into the struct
of_device_id:

| static const struct of_device_id mcp251x_of_match[] = {
| 	{
| 		.compatible	= "microchip,mcp2510",
| 		.data		= (void *)CAN_MCP251X_MCP2510,
| 	},
| 	{
| 		.compatible	= "microchip,mcp2515",
| 		.data		= (void *)CAN_MCP251X_MCP2515,
| 	},
| 	{
| 		.compatible	= "microchip,mcp25625",
| 		.data		= (void *)CAN_MCP251X_MCP25625,
| 	},
| 	{ }
| };

An intermediate cast to kernel_ulong_t silences the warning:

| -               priv->model = (enum mcp251x_model)match;
| +               priv->model = (enum mcp251x_model)(kernel_ulong_t)match;

I'll send a patch.

regards,
Marc

-- 
Pengutronix e.K.                 | Marc Kleine-Budde           |
Embedded Linux                   | https://www.pengutronix.de  |
Vertretung West/Dortmund         | Phone: +49-231-2826-924     |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-5555 |

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210504195459.hqa65mwiuyzwks4t%40pengutronix.de.

--yjdvkhwb7e4yt662
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEK3kIWJt9yTYMP3ehqclaivrt76kFAmCRpo8ACgkQqclaivrt
76losggAmbsH6qsCEOrIajF05YFCLKleh64N+f5ZKdWYdALhhl3IsiyxoIStEvsj
vuKzasUvX6YDGWjomvbTks7CjK8LqUlEiPOAP6Xt+KYkVR+lX73N4qJ/zPW5vfJk
yuGh/AJ14ZEOFw7TojoJMU7OhsRmI+mBTCf2JXFPYbU1DaaUOEzSUPKvoNzisv2r
FJ6WtFURU95zjn7jAczQ0LvN3dMGzPdrgYj6qJ550F0dhrlTe8apJsZg9UniRDS9
TJZTJZ4C3eMieBuJRxibAkYvzF0s+LcADG6/UcJTGKJMULAI5wKesola2+aATI81
YxLjQ9cDQQrBWgkb+E2/WtzdYAfeiw==
=jT2n
-----END PGP SIGNATURE-----

--yjdvkhwb7e4yt662--
