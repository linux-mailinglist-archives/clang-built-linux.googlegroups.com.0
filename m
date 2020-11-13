Return-Path: <clang-built-linux+bncBC27HSOJ44LBBOE4XH6QKGQEJ4GH6AA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23c.google.com (mail-lj1-x23c.google.com [IPv6:2a00:1450:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id 37F992B17F6
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 10:13:30 +0100 (CET)
Received: by mail-lj1-x23c.google.com with SMTP id s16sf367500ljm.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 01:13:30 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605258808; cv=pass;
        d=google.com; s=arc-20160816;
        b=uKHbmCBWUGQBknE5GJzj6Ocw0OebdKOfaGGl+K1iQ7VY4f0mgiFnIhFiRydTsLUl84
         lnewlayNGrx0akheoNN/C6W/yn3FsMDayzirWl5FVQTNWMLBxVUNgdzq9BTIzeTF6YU9
         x1aKbOsyh9c3GBWnIEfGxKsCJRPjxc7BLn754XSmVDro80iJONQjA8rX4IxzkiGRp+Tb
         B/YZfpSe1awzsNBMwv5Pf73LxcwHt03FM5eGOMuf79gvKUwxZK6X8SiEnxXkQ/FaIWyi
         yKZXXKWnc9vRm/kaSduAht3CamA8hA2OSEVbk6568xtAT/iCIFRDT154bHZRRZpBgptt
         ikrA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:mime-version
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=JvGeScjc00oYy3wCQZY0UeARrw8/uNtREeUMKSQyaFo=;
        b=GnL4JqZS2wivlzlRGO82eO9vsRbV/2WH+Ogd2tw66SxD7GScdY6MnhqjgYP3Aj5xbl
         LVUiU+JOQPDSLpP87mokyKUoM2qBfIRq8gfPfTGdpgo7jqDMuJ/loMr09bDdjL9JMXt5
         MBkAx0CAUgsWfeRKQV7QRpnsCe4h+nkwqK0xEbu4Ik3jOG6domJpHCILP7fT9+jfWtBD
         LR4qeZ4Eyb2AuXllLaWka4mFLjz/sCmpj2x5r/AvsL0bZSTPCrzsv9zJwpJ+AzMPcVPk
         cPw2l4V3ej1H5d0vLAdsxCEfc1VmaS6G8tjB7tgYRSw26WN8Rn+HNBTeOlG21NVK/beI
         r56g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 207.82.80.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=aculab.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:mime-version
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=JvGeScjc00oYy3wCQZY0UeARrw8/uNtREeUMKSQyaFo=;
        b=EV8Clui/ePppcyn9kOtW5PRFh+ZW2vtu7+Zs8z+iCArRNOjgpfXeCiYHVLT8t4HhW/
         ItKIwgm7VzGkoOv/cewTh/C9Kx4D47UAswBFPEZJmWfmqrh0Zw12ftWrgTmwmSgKqQ4F
         51rKd7bhE3sDLPO/JlZLspTONk3BU7APKCY4RtJx84HNq7DZhMVCUFfQKhkurIXbK2cK
         0mNbeXx4Rz1qYiWU9ab4VQhljp4s2+JlYS2Je4lcmfmtKns43QjmszILoy5bV3Tv5ILx
         m6E3gq+vGWDbEa7Od613o3ntbkn+CfnGNW+/BzarJbiu9whzaOeCdKeiyks6f2QlhSvZ
         2QOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :mime-version:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JvGeScjc00oYy3wCQZY0UeARrw8/uNtREeUMKSQyaFo=;
        b=tTOU+TDCae/DISVKKEcqIpkYn9rjuhS9cX6Qt7R8HHpq0JwgjWIgbpQtrToFt2kV75
         1DzK+/VjZ81gYreL6Dao301RHmYh+Qjfx5Am64AH1zVGt6ji2T3iwnpX2IR6mBmzjgmh
         oPzgNwi26O54YlXOmDU+qU1eXHwgxFd/rYH5MG2yXDWLz5IC52t0e220u6d0f2f68cWd
         mCC6IX5pozhv3PIVCFJxxvBcrbe2o6H3z7LFYofnHNECgPalO9XrXq76UY3BHBwANKd4
         WXrCNsNLoehF3Lx/z0LO4OfJfpfBYdVdNhKeyBFip3ZCwwpwf7TNQ2QR8oxn/u7YmTrg
         LDJA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533yvlARnvIn7YqS9/4z1m1wD5f64GmPMmmH3KmEspo4kiTCay75
	I0NP7FzP5ZIWo/S9XYB+2Do=
X-Google-Smtp-Source: ABdhPJwbMI3vTsNcDVn5yoSgnZTEMKdFY3/pCNRd+DRBnX+74t0+C3jqHSaXhxcHnKIrglJtkiXZew==
X-Received: by 2002:a05:651c:513:: with SMTP id o19mr694157ljp.324.1605258808738;
        Fri, 13 Nov 2020 01:13:28 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:480e:: with SMTP id v14ls3165878lfa.2.gmail; Fri, 13 Nov
 2020 01:13:27 -0800 (PST)
X-Received: by 2002:a19:c7c9:: with SMTP id x192mr525389lff.125.1605258807654;
        Fri, 13 Nov 2020 01:13:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605258807; cv=none;
        d=google.com; s=arc-20160816;
        b=Q6vk162wATWV+5HhdiUK6Mnrfz3XY7k8Iqm/LKPpEnS1AM4mwLvBtGKrf28unOAAyB
         Sotp1l/xhtog/6Y0OA7TDXvlmiDDTs+zqTL1/ddelgz0UShP1riekt6vnJd4v3YThLiT
         3H0fX1XbTbVsZcHjIPvPKKC8y5sU9HYee0cImgbbHawRCQVb+f5liPRYVwcm8pB1djpl
         EtZxAbM4AIzU9uu/Pkp9XWwcn5usuyE3h16vMce3H/BeGgWt8kXW3N2zvmsJXPZGCIhM
         5w3JaCMqNxELhHxfabIO1EW/Hb95eybDZkKBEGepE/WdZ6cR38dEGnOA6KxH0rw/dK+1
         kpwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:mime-version
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from;
        bh=uIkCqm2l5/W5vuUwJADsHHZRAmjQsSsy0Z0Zp6EX4Dw=;
        b=zd0YI+Bb2IG8JHYD5QY/Y/E8VKRLRuiedSpe5a17ryINCuks4njIXXgvbS2QQjyomd
         tm2kNLZA+cAJcRe1vrwaECWu1yN4OngfbB6tJ0RPJuu8bjNu34IpZB135dmTDYX6Ib0j
         iRTcoA2vtIQ4iSo+ZIidKkycgxurYHLq57JG9zmGuGDUd7oo0qfJz0seWLKMASaj/F3N
         NDrRDqbZO2d0ML+FJFl6Qi8AnX4t9UdixMaiLvC8Xbl8TQWIswXhBcwGpXJjujoPlsm/
         NOBDPuiFzJ3BRQfHzwwnpWFUv0A6306FG2nw58KYU61CF0s3P/otTNqzQebyH6kjYtFv
         SpOQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 207.82.80.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=aculab.com
Received: from eu-smtp-delivery-151.mimecast.com (eu-smtp-delivery-151.mimecast.com. [207.82.80.151])
        by gmr-mx.google.com with ESMTPS id m18si277956lfr.11.2020.11.13.01.13.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Nov 2020 01:13:27 -0800 (PST)
Received-SPF: pass (google.com: domain of david.laight@aculab.com designates 207.82.80.151 as permitted sender) client-ip=207.82.80.151;
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-220-PqFSW9A9PH2BcaJY30TEYQ-1; Fri, 13 Nov 2020 09:13:25 +0000
X-MC-Unique: PqFSW9A9PH2BcaJY30TEYQ-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) with Microsoft SMTP
 Server (TLS) id 15.0.1347.2; Fri, 13 Nov 2020 09:13:24 +0000
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000;
 Fri, 13 Nov 2020 09:13:24 +0000
From: David Laight <David.Laight@ACULAB.COM>
To: 'Nathan Chancellor' <natechancellor@gmail.com>, Christian Lamparter
	<chunkeey@gmail.com>
CC: Herbert Xu <herbert@gondor.apana.org.au>, "David S. Miller"
	<davem@davemloft.net>, Nick Desaulniers <ndesaulniers@google.com>,
	"linux-crypto@vger.kernel.org" <linux-crypto@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>
Subject: RE: [PATCH] crypto: crypto4xx - Replace bitwise OR with logical OR in
 crypto4xx_build_pd
Thread-Topic: [PATCH] crypto: crypto4xx - Replace bitwise OR with logical OR
 in crypto4xx_build_pd
Thread-Index: AQHWuT2oUlZMOSIiOk6Ynob79/7MV6nFxI1w
Date: Fri, 13 Nov 2020 09:13:24 +0000
Message-ID: <a163bb51881149eaa13461a93b3e45bd@AcuMS.aculab.com>
References: <20201112200702.1664905-1-natechancellor@gmail.com>
 <1f5e8575-ab7e-59ea-6be7-0340df4d31c5@gmail.com>
 <20201112214904.GA3194701@ubuntu-m3-large-x86>
In-Reply-To: <20201112214904.GA3194701@ubuntu-m3-large-x86>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: aculab.com
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: david.laight@aculab.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of david.laight@aculab.com designates 207.82.80.151 as
 permitted sender) smtp.mailfrom=david.laight@aculab.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=aculab.com
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

From: Nathan Chancellor
> Sent: 12 November 2020 21:49
> 
> On Thu, Nov 12, 2020 at 10:21:35PM +0100, Christian Lamparter wrote:
> > Hello,
> >
> > On 12/11/2020 21:07, Nathan Chancellor wrote:
> > > Clang warns:
> > >
> > > drivers/crypto/amcc/crypto4xx_core.c:921:60: warning: operator '?:' has
> > > lower precedence than '|'; '|' will be evaluated first
> > > [-Wbitwise-conditional-parentheses]
> > >                   (crypto_tfm_alg_type(req->tfm) == CRYPTO_ALG_TYPE_AEAD) ?
> > >                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ^
> > > drivers/crypto/amcc/crypto4xx_core.c:921:60: note: place parentheses
> > > around the '|' expression to silence this warning
> > >                   (crypto_tfm_alg_type(req->tfm) == CRYPTO_ALG_TYPE_AEAD) ?
> > >                                                                           ^
> > >                                                                          )
> > > drivers/crypto/amcc/crypto4xx_core.c:921:60: note: place parentheses
> > > around the '?:' expression to evaluate it first
> > >                   (crypto_tfm_alg_type(req->tfm) == CRYPTO_ALG_TYPE_AEAD) ?
> > >                                                                           ^
> > >                   (
> > > 1 warning generated.
> > >
> > > It looks like this should have been a logical OR so that
> > > PD_CTL_HASH_FINAL gets added to the w bitmask if crypto_tfm_alg_type
> > > is either CRYPTO_ALG_TYPE_AHASH or CRYPTO_ALG_TYPE_AEAD.
> > Yes. This probably wasn't spotted earlier since the driver doesn't make
> > use of CRYPTO_ALG_TYPE_AHASH (yet). This is because the hash accelerator
> > setup cost was never worth it.
> >
> > > Change the operator so that everything works properly.
> > I'm curious if this is true. Is there a way to break this somehow on purpose?
> 
> I do not really have a way to validate that statement, I just figured
> that the operator being wrong meant that something could go wrong that
> was not intended.
> 
> > I've extracted the code from line 921 and added the defines
> > (the CRYPTO_ALG_... from the current 5.10-rc3 crypto.h and the PD_CTL_
> > from crypto4xx_reg_def.h) and replaced the u32 with uint32_t
> > so it runs in userspace too:
> >
> > --- crypto4xx_test.c ---
> > /* test study - is it possible to break the | vs || in crypto4xx's code */
> >
> > #include <stdio.h>
> > #include <stdint.h>
> >
> > #define CRYPTO_ALG_TYPE_AEAD 	0x00000003
> > #define CRYPTO_ALG_TYPE_AHASH	0x0000000f
> > #define PD_CTL_HASH_FINAL	(1<<4) /* Stand-in for BIT(4) */
> > #define PD_CTL_HOST_READY	(1<<0) /* BIT(0) */
> >
> > uint32_t func_with_bitwise_or(uint32_t alg_type)
> > {
> > 	return PD_CTL_HOST_READY |
> > 		((alg_type == CRYPTO_ALG_TYPE_AHASH) |
> > 		 (alg_type == CRYPTO_ALG_TYPE_AEAD) ?
> > 			PD_CTL_HASH_FINAL : 0);
> > }
> 
> Looking at this more, I think the only reason that the code works as is
> is because PD_CTL_HOST_READY is 1 AND CRYPTO_ALG_TYPE_AHASH is not used.
> 
> (alg_type == CRYPTO_ALG_TYPE_AEAD) ? PD_CTL_HASH_FINAL : 0 is evaluated
> first, which results in either PD_CTL_HASH_FINAL or 0.
> 
> Then (alg_type == CRYPTO_ALG_TYPE_AHASH) is evaluated, which is
> evaluated to either 0 or 1.
> 
> Then we mask everything together:
> 
> PD_CTL_HOST_READY | (0 || 1) | (PD_CTL_HOST_READY || 0)

The result is the same for both | and || as they are both higher
priority than ?: (which is only higher priority than ,).

The () around the == aren't needed (except to stop the compiler
bleating). The bitwise | is lower priority than == because it
existed before || and K&R didn't change the priority when they
added || (I think they've said later they wished they had.)

The () around the entire ?: clause are needed.

So the code is the same as:
	rval = PD_CTL_HOST_READY;
	if (alg_type == CRYPTO_ALG_TYPE_AHASH | alg_type == CRYPTO_ALG_TYPE_AEAD)
		rval |= PD_CTL_HASH_FINAL;
	return rval;

Using | may well generate faster code (no branches).

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/a163bb51881149eaa13461a93b3e45bd%40AcuMS.aculab.com.
