Return-Path: <clang-built-linux+bncBAABBROQU7VAKGQERWFKC4Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x838.google.com (mail-qt1-x838.google.com [IPv6:2607:f8b0:4864:20::838])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E51B83AA7
	for <lists+clang-built-linux@lfdr.de>; Tue,  6 Aug 2019 22:51:18 +0200 (CEST)
Received: by mail-qt1-x838.google.com with SMTP id g30sf79961967qtm.17
        for <lists+clang-built-linux@lfdr.de>; Tue, 06 Aug 2019 13:51:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565124677; cv=pass;
        d=google.com; s=arc-20160816;
        b=bqwbMe1zf8DkO4ZxImDF4oLuaz+x3U7xBKtv/Ef/e7VktBH6tPknGvi+TC1KvfFKfx
         23Dd048fYCJ0bMfJpfoAZrK3oJ56p6ys9+uIHwX6CIFVWHE5gEi4mOs71xHgQUnSNX5c
         nXkR2LY+2sw5D2/2wJlvWbUBKuQ35Ol5uN32abDb4nKdzr63EC3D0z7wfj6LaZ5M3r5w
         mLRYAFqZ58iU3nR/9iOIJVQI1jLDjV6OQ+T+KX1cQXEn2ZHXBW5dB05D2cyxOOQi6fD3
         2bgn6VkHBfBI5lw1U6X7YfsqlUVX9IKIcO3758eDlzQivbl6BbWwg1kg0bFd2HWciDze
         WW6Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=yogWVxsthnAcvEPAivnyCsH9TQ+gDtCP2J/gT0sbUZU=;
        b=MMxzgTTN1ePk45V27ApKP6IedZPbueqqI8BsfpMBk/WKKcHZzBv3fYQ9ODLoebaMEX
         BRotao+W4t2C42YQI4WcmKdCGWQ7ebkA01tXK+lcBChXGNqVdTMnDXDgs9s5j4IUzNfJ
         R7XOEgTIYJKQITUDAT59pD6ehHZK3FkQDv47vZhENxcVR/qwE0ag+MuyzEzHAMDImfCb
         AufaOtiXkLM7J8n6QaCW7z0UXTnLkL/no89M36+qw/O+YN8/8eAm3CvuW71XVUVl8v09
         36KpIEk8m8OaWzLAYM1Je7im6CcJPRFkaaNF3gB2Er9bfrqYh0MLV11sMuvq4kdhlu/k
         NtjA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@sirena.org.uk header.s=20170815-heliosphere header.b=U8XeWwhG;
       spf=pass (google.com: domain of broonie@sirena.co.uk designates 2a01:7e01::f03c:91ff:fed4:a3b6 as permitted sender) smtp.mailfrom=broonie@sirena.co.uk;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yogWVxsthnAcvEPAivnyCsH9TQ+gDtCP2J/gT0sbUZU=;
        b=INaPI2cBxFg10JiIYMlusctKdxGnoftGbCLwqoonTZIKSuN8pYXFRmc4KRf+xd2Ihk
         moPrx+LXJWsjFfLmI9Y3vw5aRf9qqlvrWAiXuCIWXne53HfcCfE7dDjPoWJFf7uOm8ES
         r2ayKBVokTuIpqwE946mC+rV/QNvclsxCBxU1vm9ve20Q/B4uV4dVgPi4QJXUsuaBLrb
         nLdfNZR8eHULyjmmQCkM5QHSy7XDLu2R4LZ2SLRKlOdjdgV4o3SgXFHa+/4B4Jvex1A1
         RchcJRXtUkKRJev1FtLH4IS/jMHbXZZhQMnE30P7Ej3Hb9A2gWUXhUOETz33tS7QYbSX
         hAFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yogWVxsthnAcvEPAivnyCsH9TQ+gDtCP2J/gT0sbUZU=;
        b=CJiHchUZvpyx/Et5szjvc7+owPH4dxZHHBpFrT6Bt+HwN3JsZ2bq7uW2uXCJBFEvoU
         S0Zs969wdq9+pgxryt8lrdHtqC9ZKiucGZ2uJMX6DtEAtpgHSMi4slFE7uyI8rsaNmlk
         bYLFSoWRQhpk9snejtJ5srQoiVyszKOVO+KUWitIFVZ+DB8l1GMZ7y5n8JIhoDocQug6
         QDgUvzI5hqvVkJAqWH6drRk8NDJeQLgI77mMPN9hEwSRgHds6WplqwSbLD+Or7qEDhSU
         dd1hCni0PcatJC5SQkjBrl2jJDAuzNA0ihh2afkkWPb9Uc1X1bZDvUq5CxRX9cskIBTt
         hU6w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUwLxK3vS6BhNkkVIFDP3K/ebGkySWi6AwVjnY84yvZ46W4M/sP
	fObaJk5CATJ0PtVH+g/hWAA=
X-Google-Smtp-Source: APXvYqxAD6/zGJCXCMrgjy633jytUh1NQdDB/dgZ2mFUJdHTG+APhRl1g9IfdLXxcrm4DRO1uaKqEw==
X-Received: by 2002:a05:620a:15cd:: with SMTP id o13mr5006837qkm.273.1565124677522;
        Tue, 06 Aug 2019 13:51:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:228c:: with SMTP id f12ls178330qta.9.gmail; Tue, 06 Aug
 2019 13:51:17 -0700 (PDT)
X-Received: by 2002:ac8:368c:: with SMTP id a12mr4684088qtc.334.1565124677433;
        Tue, 06 Aug 2019 13:51:17 -0700 (PDT)
Received: by 2002:a37:4789:0:0:0:0:0 with SMTP id u131msqka;
        Tue, 6 Aug 2019 13:08:12 -0700 (PDT)
X-Received: by 2002:adf:cf0d:: with SMTP id o13mr6479450wrj.291.1565122092479;
        Tue, 06 Aug 2019 13:08:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565122092; cv=none;
        d=google.com; s=arc-20160816;
        b=oiCjHSIVe43znV87brxcg9ce7FLYTLetEtRRCn7p7vdsOzpUaTRtkNHtcYjqSTh4wl
         hditaJTWtK1gqLlwqnTTu4CMUrFI5LxEdiR5lFAJiQyrl7h7519aY63snflTaTMmkHM9
         kvypCozqiLaCuNVNHaCyl2+Lz4gfCLuUYd5itXXN779SC37qSBz5whaBZi/IAjTI+QsP
         K2UHpt+dqlTQOW98OQxHJ+r08UDzXthYfX5XSrHzTYqmEt/kbVFF5DiBWtUPR9/2ctQV
         k43wgtF1apZcmvfKu5NLjzMBwj5gaS1wkeT3bA1VUUVjWGJKW4bKwOeyjJ5z191G35XM
         ok6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=gFXsc6gJQB/rm+lVTl8GKrJRz+zACp5cifyOtelmNh4=;
        b=AhQuGF+2S/WHjTKcB3DMctKHOtsQ2DCWf7z0OH34FfKfdHJ8V+5G1k4Eb/IWM5c8o9
         h7dEsqcuSrow6IuaU+HEJKvfWaHIWuTbQZ+J+OZWp5FmAp2wuvDf7kuXgQUtBZwtjEmk
         VqScq+EMLbx5zJqnkKe/JTi0LKZfc0pO/IOiedgBQ7xuWIwhI9foKuKhkyRcw/JKJBwn
         jtoXdTNJvb6CmfWTuSWUpEZTDIbSbnHlLLP8PkSdR0jcl7YweLb1+B+lKCB2JjQx7c3/
         EimAvr7iPa3bOXboH2Jsm2JbnzDD1NMrNPpt9IGoj7EDyR9kem61bA075rhwB9W92hQQ
         ds6g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@sirena.org.uk header.s=20170815-heliosphere header.b=U8XeWwhG;
       spf=pass (google.com: domain of broonie@sirena.co.uk designates 2a01:7e01::f03c:91ff:fed4:a3b6 as permitted sender) smtp.mailfrom=broonie@sirena.co.uk;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk. [2a01:7e01::f03c:91ff:fed4:a3b6])
        by gmr-mx.google.com with ESMTPS id p23si4040872wma.1.2019.08.06.13.08.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Tue, 06 Aug 2019 13:08:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of broonie@sirena.co.uk designates 2a01:7e01::f03c:91ff:fed4:a3b6 as permitted sender) client-ip=2a01:7e01::f03c:91ff:fed4:a3b6;
Received: from ypsilon.sirena.org.uk ([2001:470:1f1d:6b5::7])
	by heliosphere.sirena.org.uk with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <broonie@sirena.co.uk>)
	id 1hv5kh-0005jR-Fw; Tue, 06 Aug 2019 20:08:11 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
	id 26D4E2742D2C; Tue,  6 Aug 2019 21:08:09 +0100 (BST)
Date: Tue, 6 Aug 2019 21:08:09 +0100
From: Mark Brown <broonie@kernel.org>
To: Guenter Roeck <groeck@google.com>
Cc: kernelci@groups.io, Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: aarch64 Big Endian
Message-ID: <20190806200809.GI4527@sirena.org.uk>
References: <CAKwvOdn0kv+N5raBDE_aPv637ROHmu7C1_C9F3PXNnAYSMTOYQ@mail.gmail.com>
 <20190806190254.GH4527@sirena.org.uk>
 <CABXOdTckrMfM_-5+pJ37KHveLE8oRDvFAzPftnp_5--fYJVuXQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="4LwthZj+AV2mq5CX"
Content-Disposition: inline
In-Reply-To: <CABXOdTckrMfM_-5+pJ37KHveLE8oRDvFAzPftnp_5--fYJVuXQ@mail.gmail.com>
X-Cookie: All men have the right to wait in line.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: broonie@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@sirena.org.uk header.s=20170815-heliosphere header.b=U8XeWwhG;
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


--4LwthZj+AV2mq5CX
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

On Tue, Aug 06, 2019 at 12:58:43PM -0700, Guenter Roeck wrote:
> On Tue, Aug 6, 2019 at 12:03 PM Mark Brown <broonie@kernel.org> wrote:

> > This is the same symptoms, it will eventually time out trying to run
> > init and generate a panic.  Those request_module messages are it trying
> > to load binfmt_misc which is how the kernel handles unknown binaries,
> > it's trying to run userspace but can't work out how to do that.

> Correct. Also, while there is no root file system, there is an initrd
> (or at least the log says so), and there is most likely a little
> endian binary (init ?) in that initrd.

Right, sorry - should've mentioned.  You need a big endian root
filesystem (or init) to go with a big endian kernel.  The kernelci one
should be:

	http://storage.kernelci.org/images/rootfs/buildroot/arm64be/

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190806200809.GI4527%40sirena.org.uk.

--4LwthZj+AV2mq5CX
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl1J3igACgkQJNaLcl1U
h9BnYAf/QPE78fv8x0SdFsgrnWKWinXqRyTOxP6bsCulC3DOCRg7zMl/9qHtwmOd
V1ajWNK5853c4ZIlrTVB32EjnBpn1cAi+9VCRCLveyYCcI+AoK3XsH0AjpzFLKXX
32jaamHVSzhNjwGhqq2lIDoafFrojsM7ajvB8M2b2rsxJVcZNHnY17Un2Xx93TFA
HPFL+r5nf9iuqUSQx+WL6DdkEF+VefzB1u/MCP8L0EIcSfVykofvlDAUNiF8noBA
dHqEWfuHfxKFWOpJ6+adBAn+YaPEe8qyhAz7P0BvuKb6QDIAEu4gQeCbIOtfxUIf
I2Y/dxnOJiGejLtbBYJYaHFRKYiKvA==
=6wQB
-----END PGP SIGNATURE-----

--4LwthZj+AV2mq5CX--
