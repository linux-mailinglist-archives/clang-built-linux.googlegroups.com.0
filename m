Return-Path: <clang-built-linux+bncBCX3TTWUQMPRBVFO3CAQMGQEB4DARKA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1037.google.com (mail-pj1-x1037.google.com [IPv6:2607:f8b0:4864:20::1037])
	by mail.lfdr.de (Postfix) with ESMTPS id 7504E32392E
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Feb 2021 10:07:33 +0100 (CET)
Received: by mail-pj1-x1037.google.com with SMTP id f5sf1523719pjs.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Feb 2021 01:07:33 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614157652; cv=pass;
        d=google.com; s=arc-20160816;
        b=DfsnnwDTgrgeG+LIgdI0sa6SFv5UlgHtbI5oU7ZqxcFO4/Gyd2chY3NvLdPllBwCHC
         rD1zvfX6FGIwc1PYMcpTu3czCY4dBWcdv0uZJ6HNJrH6qYONJy4PlCXx1+uaxzieXvrg
         fdocrDXUNqFXiFzI1WN0prSFypVDNSLw0pP4l9Fazx39B3Lbr2k2uz3ToqiLDJsjz0pV
         r+4cpb5+hbq2v5ZJk3vbpY7ME6QZcbPnFUoGfCK48tQllLZe4HRzLbGwCN/g3VGNkXAz
         94dIHSpsAVnhmdESv9Oh1Ex815TkNfBEAVNjIdYp1QsyBCLTIvM6QR+8de/57t6h2dTr
         bVBg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=updlpMJlTB9pIFWc4RbAkT0yFFEhwQpT5twvxFK9T94=;
        b=FdYfztJ3BiEp4cQSRZSYqwqctjRRSyO4/6hV8eb27pkJFWXAZL3NVJLDDC1bUk7+lx
         wxHfT10nE1BLQW1nPSK5a4Mhk7EVXWi8DLv87/LgJ3+5O3hnJTjQN5NDT5cQgeiREzYM
         VLgEf9HeZAcxuQ6FIpfqtR3onFFueSlhvTq/tVJhji0ekHRJCuJOpaFLidZJa6+NeiIX
         gc/Ws7Yjj9Lr6nGulpRd8D8TyIQkvGM2o+/+QyeHrPlXVAYdhy2h4pG0gmkfW06gbVrj
         CZNFJlxvWv3O9AjhXIpTPDrHGQzRvLlDqYPVIk6euzmar4OQdawsOzrPg3cu9txguWdK
         sIfQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of ukl@pengutronix.de designates 2001:67c:670:201:290:27ff:fe1d:cc33 as permitted sender) smtp.mailfrom=ukl@pengutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=updlpMJlTB9pIFWc4RbAkT0yFFEhwQpT5twvxFK9T94=;
        b=ZhUvPIPaJGD0jq6BjSHpY1PaWO1m7YlMH95Puzz03mwkxXHoSdCAp96SlIkyi6SShC
         F9Zju5QuDoPDyLdXmexgsU/UWZSDaFJcGn3KTGV9K+iKnvsB6kMb+VCZIl+styw7S1Ao
         1RHATEv9dq9Ao+egMn6D3L58FJCxpyE2arZC58nTgFz/maSQju2rrLLQ0GQMU4wheaCb
         YthADH49nm0lrE1Golyp/StbgnUSbqAoFgPJOhBRvs0VZSkYOEuCB1H93CNKQkMvJ2Kn
         0DSpZxiF1o5ov3OTE1qIJzeJxdvgn17AeviTixz20Iwly6WdKBso2S5YXKSIc6sV7zGH
         nDOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=updlpMJlTB9pIFWc4RbAkT0yFFEhwQpT5twvxFK9T94=;
        b=ZckYAjmudinhaqB47z/tDujyXDYgUO69RQINRsXUttfLuZRNygtBSID6UxgcLTFqRD
         9nq+nl85qwPMI64aS1jBMfHyNDa+fyjEQJevvgGhTKUjuukC6Ud7t+F6Ri/x5SQ+rtE5
         u6ZJEjoSJHlhB+B+K+HVP/I3b+AYrnctLX6TBnmNBM3lS6V2bSzs37nfavfTgumvMBXG
         JoMgLproWJVHIQd0Lreigr/cee6VZko9f47Z5HRNnBSSPPHPBKTyNfKyq+uCPgfWtame
         gOqUVSMHujdByZFwAdnTV3jMD50j/CB+kSgw71JW3sbHD/RAEXUXmZ/6Q6zFTMQCJFS+
         Rl2Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533ZJ7tb55b+TREQDKbo5jF/fQbjev0Fm9SH+c7C1C6iWg+rdqef
	3oSc9TCkp6Zz99mcg+oePZg=
X-Google-Smtp-Source: ABdhPJyL0zOotwUh+/Mfjg1IeKeGuGLGiRVVd1VSTMLU7H9Kqdrrqqfvc3aY4f5HgTR9rI2YD4dTPg==
X-Received: by 2002:a17:90a:de97:: with SMTP id n23mr3489763pjv.165.1614157652096;
        Wed, 24 Feb 2021 01:07:32 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:5918:: with SMTP id n24ls595242pgb.7.gmail; Wed, 24 Feb
 2021 01:07:31 -0800 (PST)
X-Received: by 2002:a63:ef53:: with SMTP id c19mr28150572pgk.78.1614157651577;
        Wed, 24 Feb 2021 01:07:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614157651; cv=none;
        d=google.com; s=arc-20160816;
        b=Hc52M9WSz1Tv9jAZCNfIheqKemp6s9rzdMxGf7298vJhBYDT3TCbrka1k5q8BEknmi
         sSwo+ecSpPNAJ2V9cnUiVXWAl2HQGFqaLUvKCwVRMBEbrwknjLYTEUjm2hGdBIF+qtpF
         IVingYP6jU2FBCHOFcLnOYu751uYsjAlRTat7Z8Km7+CRUUv4Vb0ioICXFVhTKsVpxWu
         evjVtbfClSV7JvKHRJ08QZq09oEXQt+Dqw+TgqH004TJHem9lHWQTuABM4dpHXV2lq9g
         475nt6NYy5AHnXWfD/TZF06girUCkQgrJr7br+esJm6YW1vKE7OM25W34nsdMROFQp48
         o+iw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=v9h2dTCzKeoi+8rdOS0q9gQM7ELTyLPpaWDEs4pTcUM=;
        b=Sk7bqBAXNR5wLWUglw5nehRLgkMLPwE1295DSl5pZeYdqPSG72+HUb4i7ncCKa3JV2
         CCGcwLajpHRqd8O3veGkgrFlEEJ/D7Ftg0mTOj+GQ2REhRGuG7sj6Hi3MQHlbi6vzQrZ
         qrtLXDnqhZHcy4qAoNR9N+wSWXfM2he4JNmlkXIPQ5trQP9A9TLTExQtVtF+109L1YO0
         MEHFujYwPhByNSTEuzGbc4G3btgUzZwgSkxHI9Vi7i+KKZbauFAfT1F4N19BpRJxrppL
         xUXP/bWw7GB4XcT/rAcdxgWw5r6T94tL0zLr5W+O6rBmSkZbP+v09S9JezX174sLi+pS
         EQFQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of ukl@pengutronix.de designates 2001:67c:670:201:290:27ff:fe1d:cc33 as permitted sender) smtp.mailfrom=ukl@pengutronix.de
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de. [2001:67c:670:201:290:27ff:fe1d:cc33])
        by gmr-mx.google.com with ESMTPS id g7si77351pju.3.2021.02.24.01.07.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Feb 2021 01:07:31 -0800 (PST)
Received-SPF: pass (google.com: domain of ukl@pengutronix.de designates 2001:67c:670:201:290:27ff:fe1d:cc33 as permitted sender) client-ip=2001:67c:670:201:290:27ff:fe1d:cc33;
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1lEq8h-0001J2-Us; Wed, 24 Feb 2021 10:07:23 +0100
Received: from ukl by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1lEq8f-00085I-Ps; Wed, 24 Feb 2021 10:07:21 +0100
Date: Wed, 24 Feb 2021 10:07:21 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Jassi Brar <jaswinder.singh@linaro.org>
Subject: Re: [fujitsu-integration:mailbox-for-next 8/11]
 drivers/mailbox/arm_mhuv2.c:1127:13: error: incompatible function pointer
 types initializing 'int amba_device with an expression of type 'void (struct
 amba_device
Message-ID: <20210224090721.fxk4plj2n4atx6hn@pengutronix.de>
References: <202102241518.X7IrI4Df-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="2wgydqfhc4aizoys"
Content-Disposition: inline
In-Reply-To: <202102241518.X7IrI4Df-lkp@intel.com>
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: clang-built-linux@googlegroups.com
X-Original-Sender: u.kleine-koenig@pengutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of ukl@pengutronix.de designates 2001:67c:670:201:290:27ff:fe1d:cc33
 as permitted sender) smtp.mailfrom=ukl@pengutronix.de
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


--2wgydqfhc4aizoys
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Feb 24, 2021 at 03:48:24PM +0800, kernel test robot wrote:
> tree:   https://git.linaro.org/landing-teams/working/fujitsu/integration.=
git mailbox-for-next
> head:   6b50df2b8c208a04d44b8df5b7baaf668ceb8fc3
> commit: 09d12157b3bf3b42f74b7871930064eee3e080a3 [8/11] mailbox: arm_mhuv=
2: make remove callback return void

That happens because 09d12157b3bf3b42f74b7871930064eee3e080a3 doesn't
include commit 3fd269e74f2f ("amba: Make the remove callback return
void").

Given that both patches are also in Linus' tree (as
860660fd829e and 3fd269e74f2f) the best fix would be to drop
6b50df2b8c208a04d44b8df5b7baaf668ceb8fc3 from this tree.

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=C3=B6nig         =
   |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20210224090721.fxk4plj2n4atx6hn%40pengutronix.de.

--2wgydqfhc4aizoys
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAmA2F0YACgkQwfwUeK3K
7AkZngf7BFIOWy3s2JenituUf9laYf1RdoScUfG68RLP4M0ySYxOftaAL33NA4n0
cqPpC75dOYAg3PZ4FhSbfxL3h1J54V7yUiq/tQDQBD/mKHjPUl6L7oWio3SQvCoF
DIsRdbwOTiZjCT8UGPRt47I1wrPyz3sTzKQPos2pgchgnOYzQVzzOftvh0eNFfrY
Y4cqlybAfqvHAZxB9SZsN1hfxZX3EeyDMpvoiPy476g6BIKVIfCLQaQv7Wlaav2X
hQ8NlTnXgTVIbeUey9ySTkXDDLtCkcOA3qvWhWkDSkiCHUSutyGvwkOhUoduo4oO
FlhMttRF830hrGSTpsQm3FyWueJ/GA==
=ti5j
-----END PGP SIGNATURE-----

--2wgydqfhc4aizoys--
