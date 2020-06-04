Return-Path: <clang-built-linux+bncBDZKLXNI4ACBB3XN4P3AKGQEDCS5QGY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x137.google.com (mail-lf1-x137.google.com [IPv6:2a00:1450:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 586F71EE54A
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Jun 2020 15:28:15 +0200 (CEST)
Received: by mail-lf1-x137.google.com with SMTP id a10sf2082301lfo.23
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Jun 2020 06:28:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591277294; cv=pass;
        d=google.com; s=arc-20160816;
        b=iiQvELvvZHouvUbJRToaDcSGa7sHPuaydp5WRKYPEYWE3Od3zryxug5iWKMl1b3u9M
         fy6jqb0epSq8xb5Gi7E5vlMaid0RFw2dYPCjhWDsd2ORpwLOKTDUb3ydPyoxu08quU2U
         wqelAx/z/PTYIFO+Pr4c2C/dvp56FBfTks5nwHrv7bMbXEpE2xvj36eQ2tcaXcXUHrLT
         I8XUTePkxop6UG82fZOmgNWnPnSBtmXAezxRG6xUaYwgr4jTvWT6lXRXYE0hOmL1QkWR
         TB0+lWgDgHg6Pcd//SiHdGrvMaygPevDx74f7LKAvw8j/vgFypWMJ43ae17J2rv5mBSE
         Xlwg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=ZIp/oEeXExb8W85gXXzDcSvU0TJyFFPcF1C99NWO8m8=;
        b=nJz5RFaAo+J4JXzN1OBDUnyxB63tbWCJglzj9Xg1cYGc7iZNOEO872v0Kv9dkM9xdB
         cbYa6gbL/MjXPtSLdWi9xosA/ngBjCExdsGoNpmwReo1XS+7uJ1CwKuXV+rTD7RF6Qxb
         J0ECM4ZPfQxTGE1NVwH0AJIffU2Z6GbLRryOlU8DdgAVhmYTF2WzK+AzHmjuV/oIO29K
         +tk6BgqUJ5MfDGhdfSELPWKpEjvu+j25G6pp1WaMJbym5nd5MYgybRfviN5UW6MnVM8P
         USAuOOp0UVBnkYTHcLiwTzt+9KRxbwAPYnlSqRal4PtfzpRzhNOWvNd/Uv5zMgDT/6V4
         heKQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of pavel@ucw.cz designates 46.255.230.98 as permitted sender) smtp.mailfrom=pavel@ucw.cz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ZIp/oEeXExb8W85gXXzDcSvU0TJyFFPcF1C99NWO8m8=;
        b=T474BamQQFEys/PQW5mxikbeTH9MYU6jOokZSE48uCZ9L1bYDdA4TXfOxPFD1mY0yM
         Qd5qn9S4kH+AmnjeTZyXwA870kHbTQGHRmbuZztU03ese1+UsLNjjj05se1vjYZe3MTT
         rPumJUDOuM9beh4TFbwoKuqPa5k8DffbFDH0X38er6DET3cM65Vhon//RaWhW4oCNtni
         m0K1xjdmBbH4RWP6Qho5A/IsEmLtkUv+hO9qqA2xDkFNvpyHlGVScrU0ma/VajIlIgzM
         lX/o1TuI2gWLUeB4Lo6+zcPWz6Wme45ijzoCjoVKEaUixtJXXWHNLvFe5QXEkSblLeBw
         gTjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ZIp/oEeXExb8W85gXXzDcSvU0TJyFFPcF1C99NWO8m8=;
        b=HfKtCr7EjGdTMPzreVzNobwnRGT4nn7Z7w/bOWFUqI7eRb8eOYE1Qc+WJfQy2wUa0b
         EvFYYarBZf2gPFHi3XUoufXb3zInD8HqjpRvBpKhfYs2KPu2BN1PK/8M0Zpwlu0Tybmv
         iPWJs/uadzAAJa90lV7WT/UTWyBl0/JTfMhq8gYBBNGyfSGX6m9grSP1XxGYAZi6/QhI
         wvfvOyc0Zo+czc7JpJHGGuNp379VvBsdL8SpT2TItv/ULwl+nlTWggdVjQEYpgkvs8Tb
         xBAxYqAFHF9otTmokSI06Z4Vs+Kgd/Hd1LmNSKd07neOzl6BZTnaU7jLeBNGoK+dCfzh
         odhw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532nQ1Ap4j7wvLRNAzjYf5Fv9G7VuLunHAqerdZGoTmKoFGRTjXE
	D9ODpO/lvmFzvssX2ZxhYkE=
X-Google-Smtp-Source: ABdhPJySpOAOzIQNZKzb/+8947b6N8XMmscwL05GoTX3cDB0fsKR8XpoTbHAfnQMlnzZuyxzaHda/g==
X-Received: by 2002:a2e:1453:: with SMTP id 19mr2316566lju.155.1591277294751;
        Thu, 04 Jun 2020 06:28:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:3a02:: with SMTP id h2ls133634lja.6.gmail; Thu, 04 Jun
 2020 06:28:14 -0700 (PDT)
X-Received: by 2002:a2e:800b:: with SMTP id j11mr2289159ljg.467.1591277294126;
        Thu, 04 Jun 2020 06:28:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591277294; cv=none;
        d=google.com; s=arc-20160816;
        b=A20eBjxGAXgLnXMwoBW3s7GxicBqNHmc7Mk2rimwY75NNeeJLloGJb9fQI0nGZCNEy
         Txqrw7suq0rnxhpO/9q2OY8zGw5oGnBRoY7AvHj39XNlSTBQ808w2VFO+0Li07XYemtV
         51OlkSJUo6GCI1mjXsctpgY30k+yOO70llJ+0G6pmCHQFd8XYkAYaYAEu6QWJYS5KzyU
         PpFBIIcPkYzGoVz6WVbBtrHYuZDYDNxGFH9ZV4/nTgVd0Ir7AybFb4y0Nwsfa6cq3b0s
         iMSX6GFgtOMdv+1EWyqbC0cf9uBVTMWbJ22JQ8zLC1v+IlHZNavw57DEanZlfVxndADr
         njmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=jT0apVoHT40VVKBDeVJ3FYSjq3p1AlN8a27GI1InqF4=;
        b=A/0jRHA5EeEEo8T81gSNDxAOie0l3uJ/zvEoxIrZ8OH/rBGM1Hn9qEs7CNrCnZq52+
         uIMpiNrd5mzAegYcus9YFNtLq3/KHibBMjs4HHgYkBlC1iI1S5Yr2h7dFPdqA9yklTlN
         +bDqCPoz/iNDD7fSwXRXriPP0BOJYrUAa77KKtdcL1dIoVce+h6LCOiBhPio3x5WSD//
         IGbZhKmfq1+Qg4ZyBYe3DcvXb5YtrFMdWriWSfGXbpi65HM/XA0GxVj1dTGdsbfejRAI
         k4k8iLqLSbWqWtO7w7ExMkDrPFNphBLZ7cB5k9z5Vtadyq7luJBA0TQ0nFX6GU6X+DGg
         rEiQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of pavel@ucw.cz designates 46.255.230.98 as permitted sender) smtp.mailfrom=pavel@ucw.cz
Received: from jabberwock.ucw.cz (jabberwock.ucw.cz. [46.255.230.98])
        by gmr-mx.google.com with ESMTPS id o23si326575lfb.4.2020.06.04.06.28.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Jun 2020 06:28:14 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of pavel@ucw.cz designates 46.255.230.98 as permitted sender) client-ip=46.255.230.98;
Received: by jabberwock.ucw.cz (Postfix, from userid 1017)
	id 1337D1C0BD2; Thu,  4 Jun 2020 15:28:13 +0200 (CEST)
Date: Thu, 4 Jun 2020 15:28:12 +0200
From: Pavel Machek <pavel@ucw.cz>
To: Arnd Bergmann <arnd@arndb.de>
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Jacek Anaszewski <jacek.anaszewski@gmail.com>,
	Bryan Wu <bryan.wu@canonical.com>,
	"G.Shark Jeong" <gshark.jeong@gmail.com>,
	Dan Murphy <dmurphy@ti.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	linux-leds@vger.kernel.org,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] leds: lm355x: avoid enum conversion warning
Message-ID: <20200604132812.GE7222@duo.ucw.cz>
References: <20200505141928.923428-1-arnd@arndb.de>
 <20200506024416.GB415100@ubuntu-s3-xlarge-x86>
 <CAK8P3a3wqiXAx2GuKJjY90qLGNnyBNTst6LW7n6tRDvzvBQVVQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="6Vw0j8UKbyX0bfpA"
Content-Disposition: inline
In-Reply-To: <CAK8P3a3wqiXAx2GuKJjY90qLGNnyBNTst6LW7n6tRDvzvBQVVQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
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


--6Vw0j8UKbyX0bfpA
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi!

> > > -             reg_val = pdata->pass_mode;
> > > +             reg_val = (u32)pdata->pass_mode;
> >
> > Is this cast needed? I don't think there should be warning from going
> > from an enumerated type to unsigned int.
> 
> This cast is not needed for warnings, I added it for consistency because
> it seemed odd to cast only four of the five enums. I can remove if though
> if you think it's clearer without the cast.
> 
> There may also be a different solution in completely removing the
> lm355x_chip_init() function, as it was added at a time when we
> were converting the last board files into devicetree, and there has
> never been a board file defining lm355x_platform_data.
> 
> There is unfortunately no DT support either in it, so I assume we
> could just remove the driver completely, or change it to use a
> DT binding similar to
> Documentation/devicetree/bindings/leds/leds-lm36*.txt
> 
> LED maintainers, any opinions on this?

I believe it is too soon to remove the driver; even if new user will
have to add DT support, that is less work than starting from scratch.

I guess I'll just apply your patch to squelch the warnings.

Best regards,
									Pavel

-- 
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blog.html

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200604132812.GE7222%40duo.ucw.cz.

--6Vw0j8UKbyX0bfpA
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQRPfPO7r0eAhk010v0w5/Bqldv68gUCXtj27AAKCRAw5/Bqldv6
8rdgAJ9MAJAO/I3UCldFlxGuyELWJijwGQCfe0ewM9qL+UT069hN0lTCCUW29vQ=
=WXqM
-----END PGP SIGNATURE-----

--6Vw0j8UKbyX0bfpA--
