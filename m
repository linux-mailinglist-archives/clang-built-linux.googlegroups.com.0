Return-Path: <clang-built-linux+bncBDZKLXNI4ACBBMHG66AQMGQEGQNBDBQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x540.google.com (mail-ed1-x540.google.com [IPv6:2a00:1450:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id B45253296CD
	for <lists+clang-built-linux@lfdr.de>; Tue,  2 Mar 2021 09:11:29 +0100 (CET)
Received: by mail-ed1-x540.google.com with SMTP id q2sf9945047edt.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 02 Mar 2021 00:11:29 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614672688; cv=pass;
        d=google.com; s=arc-20160816;
        b=bnMPYWJwnzW2gzGX0T7PJUHsDiiT487zedjLX8GZ4BQtC/qU8flJPu8nhcZl6CZXlB
         1LRUZ6VNQHLIuB/XX1lnb05E4NLkil4Lkn2pQF2yuWhsyGXvRkPInPqQUSH7DY0MttQ3
         PlqW552tvZ9vqeiSLUD7W2i0S/YaV8qPf8ox+qAHavP06dqxo1MqNWcPT4r1vCD6cyPw
         txquTm3caCtVINCXjJ9RduZsPjtA61nCbxvFDQhTZRWndVbrGB3IwWnPxLK8iHEYjMCo
         VOVordHHk5Vv1pZcUaiBSC/fwuMLGBY2EWh3W9xF6cy7ZwfR3T5WsDfI9KnPjwztwIIA
         bA+g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=OaTas+nE+2B7OKGnQYXscGprvrIaX9nnXKLYGoqe6UU=;
        b=bd/vA3Lipuh55Yibd7Ko4cSF8YphAGcGh61bSnkJEKJk4yP2nzdRUKbo8fP4DNDGWP
         m6h+To2kFqwYO/CBm4pmRaztVZaUTbcMRktm452ngkD0f3Mrrg3waGFSD+A7AU1iGsIc
         PMJtPm+UHjjOj36ygsI+CCjRhQOt8HXiC5ww4A6K4kJ+591gnBDsMUPSGKFiKCUFpCdb
         Z/3JnodGYOEebNy9gTPZvvUXJY4F3b+IVsZ9Y0K1k2zCYtJYlwhUggU/xHy8QnqAW5io
         H0XVN5r20gWD4kRpCC8gEX1CYQuEaWEMcX91L5HVMEhOpxLimYSNFpf2PwsWJ/47iZH/
         3MSw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of pavel@ucw.cz designates 46.255.230.98 as permitted sender) smtp.mailfrom=pavel@ucw.cz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=OaTas+nE+2B7OKGnQYXscGprvrIaX9nnXKLYGoqe6UU=;
        b=s+fr1aGYrILXJJpXJTMuGaAkttvdtfbwltrPrKOlZt+pNxloA/2L21FUjHsX+qlg6c
         pwg2FUDG/A3LWnnd4gYX5qlULamJaJ4Nm5WI7pJB2f8JTDJ9JFfCSrVoFrczPlHzz1B5
         2zaNxkEvCh+1xhFuT0KsgJJBQ3XcXe0gX87qnctUK1PrTYPJdBE/y4mgMkVLUpNeHLqZ
         2DcP/0lFxpbZSPlHsl51ph+tltFRnb9vqen5g+ejjuz8syQvw7LZrTSbAKgkfszZCcpS
         kQedG/a4zcWS+6yg0jM6wPcoX11r++d9666L3KVw5nZKrku3TDc0ry2Hqef+7A2s7UGO
         fc/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=OaTas+nE+2B7OKGnQYXscGprvrIaX9nnXKLYGoqe6UU=;
        b=fEikAK0i5BDnGOWj2/3cDDoJaJ63djkFdDv0sWec7sHlHM1D0HicjDnPNtZluNXD4n
         jdGG3aXnwI32pw4u6u74eQURLPswsNDPYyYbZZTvjVLXxG7Z5wOGVtjMthbPZncDfM7F
         unDaSTUS2Sv8C5a4aSu/AFoZHuuzN2b65X0i3qI/tr9eek1ZDwVVVqsKeMQ3WltkMDYb
         ifjwm1eNt2nvaAu4xweD/8iiXM3g58M7Worx3psDbm8+C4hoGPsvzyaQqHozb5s2vGt1
         ym4K+7J1z7HD7x6J1IHqqN7IWus4ABXASWZNET2SVVZJBm6s06M79FlAoNC7NP8QwbsW
         YgyA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5339qAsTUhEfE8UkVhEwWemL+9DWa534CyiHf8FLe+61iTMvw4nG
	Pww6fau73P5+vajjwE+FHv0=
X-Google-Smtp-Source: ABdhPJwYfGcKvBU1wmES/Oev6So+xEIvDnp2BgVqBX4/uKofsNkSeaKFwbkX3kITlYcZOTRZmDXT8g==
X-Received: by 2002:a17:906:b20b:: with SMTP id p11mr1932206ejz.0.1614672688496;
        Tue, 02 Mar 2021 00:11:28 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:41a:: with SMTP id d26ls145036eja.3.gmail; Tue, 02
 Mar 2021 00:11:27 -0800 (PST)
X-Received: by 2002:a17:907:76b6:: with SMTP id jw22mr9485586ejc.11.1614672687584;
        Tue, 02 Mar 2021 00:11:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614672687; cv=none;
        d=google.com; s=arc-20160816;
        b=PyuA4X4Am25dIricqTs3VBJpmDajVN2emMSFUXD+oQbEZ+CGKT6dt8NDB7TMEs7N3+
         F86WiAvwWPprwl5ZnAlUPFX6H1LsgSWma2MD2Hp385U35nqng3myZILoUgvVg+SqPcE4
         vNV0fNjyym+UvZ+La59ir0cCxRNfWxIB2Vs7K7oceP2nOh1kZJfTPaCPrGPmRBg+3r7L
         jJllId8I91VBpxHU0ICbWPdmA5oijVNMTIWG2JM7binGagDB5H4ho2wswokT7VZLJDUG
         CLaADhmWvram7mpd4v+1NF0tY1IdkU/UsbtRG/zMSiYah22PBMO5t9hanjzkrGtJ4A33
         6FbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=oGnUrQLf+jgraoUk3/YB304nTSF90yggdtXI7kCx8v0=;
        b=QUiDudrt/4tgqZm22cTJOC0hfkfdyKEwue03TFPhFIctNn59E5MYcbb62jfOXiRtMY
         2wXaYAYsarIYGKSd1CrUlBaEtbjS/Dqaj/mdsEafm2rM6vRventg94VVivU3r+RTXfip
         PUn16FOg2A75/DHkn8O4Kw4CLSzrJErw4FATGImFq161m9hGFklOSKdYW1+EWdKZxiZ/
         nvedhhRrxCEQrW+vhrDZvikV4gORAsfY8W90ckZ9PrKDZbUFn8BK+AQ3j+x4w7ZQacig
         h+ev9xAMFZ+fXh3TSlRbIengCbHnNv3SXzV1lbxErYO/tHwns34lujsDzMGAbN8yT9E4
         khxg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of pavel@ucw.cz designates 46.255.230.98 as permitted sender) smtp.mailfrom=pavel@ucw.cz
Received: from jabberwock.ucw.cz (jabberwock.ucw.cz. [46.255.230.98])
        by gmr-mx.google.com with ESMTPS id k3si977710eds.1.2021.03.02.00.11.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Mar 2021 00:11:27 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of pavel@ucw.cz designates 46.255.230.98 as permitted sender) client-ip=46.255.230.98;
Received: by jabberwock.ucw.cz (Postfix, from userid 1017)
	id 65DF81C0B88; Tue,  2 Mar 2021 09:11:25 +0100 (CET)
Date: Tue, 2 Mar 2021 09:11:24 +0100
From: Pavel Machek <pavel@ucw.cz>
To: Randy Dunlap <rdunlap@infradead.org>
Cc: kernel test robot <lkp@intel.com>, linux-leds@vger.kernel.org,
	Amireddy Mallikarjuna reddy <mallikarjunax.reddy@linux.intel.com>,
	kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org
Subject: Re: drivers/leds/blink/leds-lgm-sso.c:123:19: error: field has
 incomplete type 'struct gpio_chip'
Message-ID: <20210302081124.GA10699@amd>
References: <202102280329.hv7RoHLA-lkp@intel.com>
 <20210228082913.GA27151@amd>
 <c4071c07-e882-96ca-a8fb-34ad1525305f@infradead.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="mP3DRpeJDSE+ciuQ"
Content-Disposition: inline
In-Reply-To: <c4071c07-e882-96ca-a8fb-34ad1525305f@infradead.org>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Original-Sender: pavel@ucw.cz
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of pavel@ucw.cz designates
 46.255.230.98 as permitted sender) smtp.mailfrom=pavel@ucw.cz
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


--mP3DRpeJDSE+ciuQ
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi!

> >>>> drivers/leds/blink/leds-lgm-sso.c:263:3: error: implicit declaration of function 'gpiod_set_value' [-Werror,-Wimplicit-function-declaration]
> >>                    gpiod_set_value(led->gpiod, val);
> >>                    ^
> >>    drivers/leds/blink/leds-lgm-sso.c:263:3: note: did you mean
> >>                    'gpio_set_value'?
> > 
> > 
> > It looks like missing #include?
> > 
> > While at it, can you do something with Kconfig help text? Move
> > existing one into comment in the driver, add something useful for end-users.
> 
> The .config file does not set/enable GPIOLIB nor OF.
> 
> AFAICT, this driver needs the addition of:
> 
> #include <linux/gpio/consumer.h>
> #include <linux/gpio/driver.h>
> #include <linux/of.h>
> 
> and the reference to
> 	gc->of_node           = dev->of_node;
> needs to be inside an
> #ifdef CONFIG_GPIO/#endif block.
> 
> Also, <linux/gpio/driver.h> needs a stub for gpiochip_get_data().
> 
> I have most of that ready (it's in the margin) but I can't
> send it tonight. Feel free to fix it up however you want to.

Looking forward. I may be confused, but it looks like original
author's email bounces, which is a bad sign.

What I meant... if you take a look at Kconfig help test, it is really
useless.

Best regards,
								Pavel
-- 
http://www.livejournal.com/~pavelmachek

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210302081124.GA10699%40amd.

--mP3DRpeJDSE+ciuQ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAmA98ywACgkQMOfwapXb+vIiowCfeHP1kO+yiHNCiS1h/Vt4ADQ/
S4kAoMFlF0dR2l3F5Fb9DAVHFEI05cl3
=4l87
-----END PGP SIGNATURE-----

--mP3DRpeJDSE+ciuQ--
