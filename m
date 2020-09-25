Return-Path: <clang-built-linux+bncBDQ2L75W5QGBB6W6W75QKGQEE53VBYQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3c.google.com (mail-vs1-xe3c.google.com [IPv6:2607:f8b0:4864:20::e3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 00FD5278974
	for <lists+clang-built-linux@lfdr.de>; Fri, 25 Sep 2020 15:24:12 +0200 (CEST)
Received: by mail-vs1-xe3c.google.com with SMTP id k190sf697708vsk.17
        for <lists+clang-built-linux@lfdr.de>; Fri, 25 Sep 2020 06:24:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601040251; cv=pass;
        d=google.com; s=arc-20160816;
        b=Y/9MMw9yiIKH2H1si9vKuQB4jn2wEiPyD+AzotUnP6RvT1wQpts6OXhD4I6IN142hH
         4P8ro1f+sz7QpVEjJfR9zzqPZEMMc/HE7hsdv7OWDcbDjbULrHcZaAO5M/+qbegyY54F
         4ly4beiFSo9+OSNLjLaMVsoelkTiM26pRwq2QUL4qzKxzkiZ0QtSxBSES23bIROXKN/s
         3dcCGvj4akmKnbQDusam6mHjur4TIOGwQP+0rpnJJWmXmF0AzemSVJjWiwwdsVX+EW7+
         odignqVqp6hvUHWaDtgzePu75OhtDmUOQ79xy4tMyoyyQqnYMf8+sSAlgpmr8ReFKfcM
         iCbg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=ReLdgoNDHpGQlCUG6UkVYIHgZmN/o3hYvSMyCANTpoM=;
        b=kC2iARMtcLQlzUtlG79SS0Gbj4pvEmubKNt2fWdVsmm9616Rk7x4lEnmTYHBX47Ey+
         jDVkG8V7xlzRfy2MZqEpoXeiSf/i6tfjCUydbp34xmQMWxHCSO01+BYn2F4hYrufw81/
         bvO7sPxipyKqLWgcjUN9iykqOt38TvNFg77fhHcUUE36ACu6sXPXVhvNhQr3BleJ14x2
         7PjpQexM9xKU0UdB3nRx6AxqlcSr8jBWCs0Ib0Ekfp1bKpX0wczZfc+JfytV3naj2ta4
         6uvstVaTpw434Dvg3D1QuckHNRtXY0erkmkuiEDt9qNg+lk56L0XPp31TEGGgoM0NJk4
         ykMQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=x91NU64F;
       spf=pass (google.com: domain of broonie@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=broonie@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ReLdgoNDHpGQlCUG6UkVYIHgZmN/o3hYvSMyCANTpoM=;
        b=UTwRLZRimakwZyevmZsYiLWRfPjLkAHxpwiZ23obfN7xvrjKrjyxrcjR41F0ausWbr
         yOpcvSA6IDWFKA4EbzlsSD1D6QN8HOn2iqUGC/bo+dfWTxb8No1kQv9W3qyqJG7DmNch
         da038PMyLZI21ERBzj+oBgA30nDSJAbEZmfqMzox+llJWGlStrLyo3bdOyASpWO/RfBW
         XDAv3ApM6C+bfvt9WlXf2TTNapXmZT9Nvmj7y1YeNDPiptJ49uF/uCPfA4NbMUd6PUmq
         5UOJssEbcqWyP6hhciWGHc4eaL+ar69OSbkDGNdndkcXtcPdd4v8MawTtfpqV06HXag9
         BwWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ReLdgoNDHpGQlCUG6UkVYIHgZmN/o3hYvSMyCANTpoM=;
        b=P0yGkeiZIDRPMKekNiZ9vTL8PGJX/qyDSdYgZncbWEv34XRR7C46YzyyGpoJScAuym
         V41bHfXVshz6LGSDVMUzvDDyu852KI02YkdKGwCkcaeRNv/THKtVbPVEozCF2fQZysRl
         Gesf/ivpziSd0yalYpjM2quX2qBkRjgG7Mo5Tqd0eaI1OPOQaiYGb+lyds3EI9AF/gKs
         A6dtQlLkq4SstMDJ9GTKDq26o/nsXCED0/Ek6IViuYxde1wrdy66YyCoQDIrA308+iJ8
         tknCj3r3DwrFkx7DNt2rGw9h7K0dUtpyb68d+Ep1XV0gd8SeytyMGLExY03pWh+TYYh2
         i1NQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532GuzgOCWC4MsVbPGX+fQPQX4L1Ak3IzIzwQtbfYW09Gm3YtOFz
	FeRF6tECnbvEXMIVwzPFGCY=
X-Google-Smtp-Source: ABdhPJz01gUu1G2mintophXmeN57QpkReic/OAe6dQuy/p1ucTHkpAzk9Y4yYp7UBroaO+DGSxQoKA==
X-Received: by 2002:a67:f511:: with SMTP id u17mr3207138vsn.2.1601040251014;
        Fri, 25 Sep 2020 06:24:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:f7c4:: with SMTP id a4ls381045vsp.10.gmail; Fri, 25 Sep
 2020 06:24:10 -0700 (PDT)
X-Received: by 2002:a67:e290:: with SMTP id g16mr2885664vsf.56.1601040250496;
        Fri, 25 Sep 2020 06:24:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601040250; cv=none;
        d=google.com; s=arc-20160816;
        b=yjpc/saxPgJeGR8LfoGTuHGn5IfRmPRtnaAdAEXcOcjvci0aKJ5o6TWOcwLeB2VY7k
         KYXeiE+Bv/j1BnYPUVS0wsUI51+n2wfCVrRQY0hlZ1pu/D7XaWrFSoB2EOe8nJ2Lpwa5
         KOguc33OOn7pbP6NeXiWRG24dPey+ZtSZ8H9NyyiiRswqKdla1F3WG95qcQiB7/n/wSc
         PWGd0SjQ5Wc545bEBN3h8I2GWkwoKWmtwJePvfFm3zMaL98esjFj2UmVOKcQ+/49NgpS
         YyHifBMK54brAnTxi3I8XhTAqQdD3L7SZLjCZ8z/oy0hewGWf1O/qcj7oY+acL1ZXNnH
         HdZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=mzkGWM3bP2D9D/qGi/YQ9YghKO46iAPQEngJLF4EH0s=;
        b=HOvKM62jWXw1dnh6lMMpoRSGydWJh++a0vKT7pTQcahtwb5ur72EWLSq/2B6WS6i4X
         yOSemGqLiuyJI3Vr3ic9AgImSkpceQFP8o8cJV4z+1AcnAZRMdKpafOk7RSTMOpdvts3
         rY9py/z2yfnIWaDtscHvP1/63YMco4glbDYyhK0iXVIw+RIRMqWTYrUfip4MoKczfxJS
         JmAc4S59ER6cFwX4NmK7ZVDwRwEbyrLwZ6yLKn2tUiW3g0+hti/Rr9ewlXnlL0xCYeN7
         vkq9mfXqbRcUzJwyphLAm3O0LdUmQg5MBCgKLCtUxPbLhQRAI/neXT42OiaaLSZKYxuz
         A9LQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=x91NU64F;
       spf=pass (google.com: domain of broonie@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=broonie@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 134si146199vkx.0.2020.09.25.06.24.10
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 25 Sep 2020 06:24:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of broonie@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id EEAEA23976;
	Fri, 25 Sep 2020 13:24:08 +0000 (UTC)
Date: Fri, 25 Sep 2020 14:23:14 +0100
From: Mark Brown <broonie@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: kernelci@groups.io, Guillaume Tucker <guillaume.tucker@collabora.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Todd Kjos <tkjos@google.com>,
	android-llvm <android-llvm@googlegroups.com>
Subject: Re: kernelci.org update - 2020-09-23
Message-ID: <20200925132314.GC4841@sirena.org.uk>
References: <107c1572-ffc5-8797-6ae3-10fbe4e91eee@collabora.com>
 <CAKwvOdkHiRAxCrrqRTq=k09zW-X9cHogyq+7fTuM_aJyntXs4Q@mail.gmail.com>
 <200d3c91-9906-01d6-2642-718fbd356d76@collabora.com>
 <CAKwvOdmAev4-AP3g0cgZ8rV+iR4ACuy1ZQ_XoD09c1d2GF1S7Q@mail.gmail.com>
 <20200924110402.GB4754@sirena.org.uk>
 <CAKwvOdmEf7jM7QWZcPxy761CGsO24sEDY9OWJJcZKsc6jFy9xA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="XWOWbaMNXpFDWE00"
Content-Disposition: inline
In-Reply-To: <CAKwvOdmEf7jM7QWZcPxy761CGsO24sEDY9OWJJcZKsc6jFy9xA@mail.gmail.com>
X-Cookie: Onward through the fog.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: broonie@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=x91NU64F;       spf=pass
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


--XWOWbaMNXpFDWE00
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

On Thu, Sep 24, 2020 at 12:25:42PM -0700, Nick Desaulniers wrote:
> On Thu, Sep 24, 2020 at 4:05 AM Mark Brown <broonie@kernel.org> wrote:

> > The thought was that it might be worth using the actual Android
> > toolchains (including all the out of tree patches and whatnot) with
> > these branches as well as upstream clang.

> Would a Docker image containing AOSP LLVM probably be the easiest to
> integrate?  If so, I can look at providing such an image.

Yes, a docker image would be great - ideally Debian based.  Our current
docker images are built from:

    https://github.com/kernelci/kernelci-core/tree/master/jenkins/dockerfiles

FWIW.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200925132314.GC4841%40sirena.org.uk.

--XWOWbaMNXpFDWE00
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl9t70EACgkQJNaLcl1U
h9Apagf8C5vrRMxg9zpjdkpqp1ENXAg7smogtBn9a6gs9rnqdKAmrrYMLSPPGmxn
CDU5nqcj+0TLsdySEw/bSbsDTr07sIMFDxpwtR5RBCAVGBQZnE3IGM8NqqFIyTUl
sfddUwBKzZyzmGBuLDEXzpZzVNnTGp061Y8lrAA7axRZNZdHXIA1bhCH859hgKR2
Wvfw5XmN139hQ8tjfw1JHsKDO/WVrVnfxNmsMMtlOFFZFyzreM2wfDkgAcWZWTSe
+ADGKpTFJEo8pHOyaSejFyuuBhG+xkL0j8zKCcBG7YKiFzR+mx0aKxPO2F6ees03
JqNA8dtYYgdrNcmCSKcssbi1AlN+TQ==
=z1PE
-----END PGP SIGNATURE-----

--XWOWbaMNXpFDWE00--
