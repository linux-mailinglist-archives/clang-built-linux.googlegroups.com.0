Return-Path: <clang-built-linux+bncBDT2NAOB24NBBJW23WAQMGQESFP3V7A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x138.google.com (mail-lf1-x138.google.com [IPv6:2a00:1450:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A71AB324CC3
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 10:25:59 +0100 (CET)
Received: by mail-lf1-x138.google.com with SMTP id k14sf2020837lfg.16
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 01:25:59 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614245159; cv=pass;
        d=google.com; s=arc-20160816;
        b=rfKMDWWpXraIt3OB+TXIeObvVhdXGvadXB5M4TCSHJKZ68gAsPyz9ns3iRPexO9fVe
         m4z/m9aOiLS48l1Z4T5OokKMKsvtVsnXUw5TvU2D2+6LBI8/mKRVOnAjTdi1i7siX40Y
         GIrQe2D3hbPdaUv7fl7cWdCkgF2OC1hjqP305MJX1QS6zupTaGdcDblueTVrPYcM734g
         slOwRi/2N2F2Z8ol0XB9rgHiRymZ5fq5hh9q/9PCug2j8PfTR+Zu68tbG1C2ga4/ja23
         svFwU90tbFEAYyKwUeGwkapT2/aXZfEAsizIagiNmd5DVJ68F7QPnP5oHImsHBwNeQC1
         Fwvg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=cKtc6yjZsyHZhmzAK4XGNOHQ7rNYeayixLKVTwLZ138=;
        b=GnEsxYV61FOcaJ2ZXJFyIY0on9izzW1w4SLwtatObFfClZl6eOHMio66G16aeHaftT
         eS9DamPwZMb0P5Sksv2BMDSnv37CwDnOaC92HKWPXto4+TcksBks9e3YLHcDouWlO8c+
         KxVbcxRaKLnkK6BsPWuXeBiVIceRDkrahQqjTIxi2wHzvMOoxZUQuhDxwZFzG2uJs7SC
         728UjDu2v2bGBcoXRTSa+zTyLmtQLcScUwIXptK1+A1DhfvTWxIaGhDRyRFl2NFGkMLg
         C8OSHczosFVtfP452u9zCy/btUimFa1TdI/K+qMusWGI3JVN/YGt+mqLssjO3sso4S5W
         tE7g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of mkl@pengutronix.de designates 2001:67c:670:201:290:27ff:fe1d:cc33 as permitted sender) smtp.mailfrom=mkl@pengutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cKtc6yjZsyHZhmzAK4XGNOHQ7rNYeayixLKVTwLZ138=;
        b=AC6zXrpvbKrCVFnzhIG1CB/acO0UDjSsjGMqnvJlTYNPANMEAe10wyDTieI+0DG2LM
         1GiPITEmhGsIaz0IWcxkaBbWs1i5oTbTU9tCv6XHIcQZLB1gCF/ydteidYJP3Xfl+WsU
         WSaYjjMUpibIlqVrdGEuISckjoyJLNiBfwQNm1Y9ZQom0GiiF9wUJsj+UPZkPt8v/TzQ
         zSrktQL6Ip3EVFB1LtS+3rCbcnQyY23ixhvwnqMDiqkcypzTw3i2ZuMmuIETK0M/h61w
         Tr5zTe7Zw/J9pujUdmyPT/o2vGBydsGP0Upmuy6U+MHRyVY4kYTlcHgY7qEIu+CBbonX
         nDaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=cKtc6yjZsyHZhmzAK4XGNOHQ7rNYeayixLKVTwLZ138=;
        b=I1SoQF4Eb88T28wipN2xFIY5dzK4XfSK+jRzwkM4S81OM6dhIofvuCI9EBRo3wCNu+
         Bd9jrbYCCRuL62IismEniqYKakeTNUmZMHZNOHnwKVV3+QhFVkh0qIRNgbuvoj3LsVmQ
         3wxD0WDuub/smJlseVXllbDEwls5SaYQUicV9iNu4TMFxfDeZYQrE8yQHFUK81hMZ9Ao
         N96QVWjeedBKBgn7cpkJCa9eclqIes6rrzZYd0/HHyKzhHCGzLlwvKrqCan4ddiHsBod
         cvn2b+DUFbyyyykh/ceEdvIwG5VDj7I0s7XrWq5zC66qLt5Hungw+vQWhtJbDwz9tJUt
         tNuQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531pvC8sdNCU3q+5DiCULX1Oj8PFOetjdjKq5UvV3gfHKcDeMzub
	m1jyE37t8DjcKX9FflMfaPg=
X-Google-Smtp-Source: ABdhPJxlxRpy5kl38+i8teoVizSgo+JS6vsDX0vjRwxJ92k3OLT7QY7Oe/fkmTyJ88NSzA5VUhx8ug==
X-Received: by 2002:a2e:b619:: with SMTP id r25mr1121767ljn.481.1614245159160;
        Thu, 25 Feb 2021 01:25:59 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:3993:: with SMTP id j19ls814662lfu.3.gmail; Thu, 25
 Feb 2021 01:25:58 -0800 (PST)
X-Received: by 2002:a19:3f54:: with SMTP id m81mr1454478lfa.134.1614245157887;
        Thu, 25 Feb 2021 01:25:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614245157; cv=none;
        d=google.com; s=arc-20160816;
        b=eqWQHXf71vpdXPuf02I1LlYkl0MecQIwoioJlQC+IclVPIvpeZLcljQ+Rc1QrrXfTt
         CFaKiNeo7WjNenITPNw+3SRkeeEXMHfRSgU6MYx8GuoDsOKCX4XD3pyFTJGg0aXf8gSm
         3uzXxVdVaCjupKtPSbTruoPmqLSCSrI4ugFel8vzi4whS4OK9QJ0Swxdd/FK/VcqXX9s
         m/L4gO89S6rIQCvLODBeAJxwMmcNKC96mKW5iG+YFuJbdWUmw77val/NdoywW77yKBT0
         7Vjhh/S4TyADaBOBQlhWqEBoUbI+q3NNXSsqewM8EkxXmlsEO/7TziBB05CGnxwNo08p
         J+cw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=b/MxveQM03/DFMCRKRhgT8+9Y6VZjpGr3oJR0USfzXU=;
        b=JlDkLHXJV/VsMgvIu0/WX8ndxSRRo4o/XnGToMzW83l5LiWedAGof00w6L8fMw5uTv
         ppuKSK0gWxxwruu6+ADsLM7UNEpCXkxglz5dKBn2zbwe8Csmy+n4x9mbci9zC8GUpgMd
         iU6R6gg9K51+yKqIKgHBz+ulR+M2N85JwsOCQwdFj4RXo2roNz/brfIoeBV9oAkCyB7K
         jfkoQrVsjRwdvFsQy6474Tlj51pUkwTZq3iZY0IQeBy5FjGLYsIRktllTjLfe31egEZ4
         gEVRqJNOdrq3rS/uMLLS/uv0iUwW+C4jzqqyDOtKL/MYMLlepdntIZ9tknp6r9MpyR82
         XVnA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of mkl@pengutronix.de designates 2001:67c:670:201:290:27ff:fe1d:cc33 as permitted sender) smtp.mailfrom=mkl@pengutronix.de
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de. [2001:67c:670:201:290:27ff:fe1d:cc33])
        by gmr-mx.google.com with ESMTPS id a17si139727ljq.5.2021.02.25.01.25.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Feb 2021 01:25:57 -0800 (PST)
Received-SPF: pass (google.com: domain of mkl@pengutronix.de designates 2001:67c:670:201:290:27ff:fe1d:cc33 as permitted sender) client-ip=2001:67c:670:201:290:27ff:fe1d:cc33;
Received: from gallifrey.ext.pengutronix.de ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=bjornoya.blackshift.org)
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1lFCuD-0000wy-01; Thu, 25 Feb 2021 10:25:57 +0100
Received: from pengutronix.de (unknown [IPv6:2a03:f580:87bc:d400:55fd:a17b:b4ca:d5fb])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	(Authenticated sender: mkl-all@blackshift.org)
	by smtp.blackshift.org (Postfix) with ESMTPSA id A63875E8E50;
	Thu, 25 Feb 2021 09:25:51 +0000 (UTC)
Date: Thu, 25 Feb 2021 10:25:50 +0100
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: kernel test robot <lkp@intel.com>
Cc: Dario Binacchi <dariobin@libero.it>, linux-kernel@vger.kernel.org,
	kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Jakub Kicinski <kuba@kernel.org>,
	Oliver Hartkopp <socketcan@hartkopp.net>,
	Vincent Mailhol <mailhol.vincent@wanadoo.fr>,
	Wolfgang Grandegger <wg@grandegger.com>,
	YueHaibing <yuehaibing@huawei.com>,
	Zhang Qilong <zhangqilong3@huawei.com>, linux-can@vger.kernel.org,
	Alexander Stein <alexander.stein@systec-electronic.com>,
	Federico Vaga <federico.vaga@gmail.com>
Subject: Re: [PATCH 5/6] can: c_can: prepare to up the message objects number
Message-ID: <20210225092550.7si56liuid4hih3a@pengutronix.de>
References: <20210224225246.11346-6-dariobin@libero.it>
 <202102251401.8hMQFKMw-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="33yk2wg3cv3vkv5t"
Content-Disposition: inline
In-Reply-To: <202102251401.8hMQFKMw-lkp@intel.com>
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


--33yk2wg3cv3vkv5t
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

On 25.02.2021 15:14:43, kernel test robot wrote:
> Hi Dario,
> 
> Thank you for the patch! Yet something to improve:
> 
> [auto build test ERROR on mkl-can-next/testing]
> [also build test ERROR on linux/master net-next/master net/master linus/master next-20210225]
> [cannot apply to sparc-next/master v5.11]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch]
> 
> url:    https://github.com/0day-ci/linux/commits/Dario-Binacchi/can-c_can-add-support-to-64-messages-objects/20210225-070042
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/mkl/linux-can-next.git testing
> config: x86_64-randconfig-a006-20210225 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project a921aaf789912d981cbb2036bdc91ad7289e1523)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         # https://github.com/0day-ci/linux/commit/9bbfc6bc12c1d9a2445413bf6e710302f012c1ae
>         git remote add linux-review https://github.com/0day-ci/linux
>         git fetch --no-tags linux-review Dario-Binacchi/can-c_can-add-support-to-64-messages-objects/20210225-070042
>         git checkout 9bbfc6bc12c1d9a2445413bf6e710302f012c1ae
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>):
> 
> >> drivers/net/can/c_can/c_can_pci.c:152:24: error: too few arguments to function call, single argument 'msg_obj_num' was not specified
>            dev = alloc_c_can_dev();
>                  ~~~~~~~~~~~~~~~ ^
>    drivers/net/can/c_can/c_can.h:212:20: note: 'alloc_c_can_dev' declared here
>    struct net_device *alloc_c_can_dev(int msg_obj_num);
>                       ^
>    1 error generated.

For now you can use 16, which means no change. I've added Alexander
and Federico to Cc, they added the intel pch and st micro support, maybe
they can help and add the correct size.

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210225092550.7si56liuid4hih3a%40pengutronix.de.

--33yk2wg3cv3vkv5t
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEK3kIWJt9yTYMP3ehqclaivrt76kFAmA3bRsACgkQqclaivrt
76lFOggAm3wQHGpK+2bkoQTVZTkItD7BvS22yRyJzelLfoAnWMz49dpD7wsSbiL+
u8pli7iD365Cpa9pJXYHP3bnZx04AMnu68dvuK7X0gz4vT2DfUOEMf2ydZk8TUAx
1GZPLbKnkfp/cp88pIE5uaEuuOZvJOJqyzMj6XwUIZUpandN1FGVKX7dRd8ZoH5K
tqwAwTN/7HbL/lA1G+g/At8A1xGP23b9JoDVF8VA1IkZjR8ogX2/qy6Tj+6a7YRh
cJLYI+QJvEebJ5tq2rL9/EPUAWz+ajp3MdqaIGLFXGO4Ub8xjskrzCp9ydNaOoKh
Mnr8m/jgQDqtlgjzyHwy7LZkO8gHbw==
=rhdl
-----END PGP SIGNATURE-----

--33yk2wg3cv3vkv5t--
