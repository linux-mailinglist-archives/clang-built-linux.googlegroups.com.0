Return-Path: <clang-built-linux+bncBAABBNEXXD2QKGQEEF2245Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x339.google.com (mail-wm1-x339.google.com [IPv6:2a00:1450:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DE7D1C2924
	for <lists+clang-built-linux@lfdr.de>; Sun,  3 May 2020 02:09:25 +0200 (CEST)
Received: by mail-wm1-x339.google.com with SMTP id h184sf2102662wmf.5
        for <lists+clang-built-linux@lfdr.de>; Sat, 02 May 2020 17:09:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588464565; cv=pass;
        d=google.com; s=arc-20160816;
        b=HHPajisPFt9vGDOFiqOseX8FvXO8Vr4nONjV4N2UdkAcEJbscBjc8Fc7hLzyyIFHYy
         cGRPlbUag2kdL1mWr2nWbqy8IKnJzv/E9wtb2npAt7L5ko0SlDZbYXZ4mgYqM9asHFQz
         2EF00cXDVHioVuSOqeWsM8pm0VO0daouUFdnOW1Wgjqq1C48ZXZiM5ngZmtVXDl3ulGy
         Tgb/4kPpWmejPZZaEm9YKyFhf1/cjnOo9WHajx+2Nu/7bMROZOaaO171YDqj0l3H0rpK
         MOR6JZ59OLTPRCK031YeJ2Pq/WlwfSEGviFb9Hen0JrO8QQfcWZ4YSBG2jU09P8y5s5d
         bNTQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=pDH/94eY+A8/Jf8OPENOrcukZtVAEGRiu2UGrldrB+s=;
        b=BKhFsiXRMAMR2BMbUx11g7f8sgTZVQc9zxy9wA4eRoQ4jURM/Sb8GwD+6MSYRBFUdz
         EAWAaqA5qPen58b+pDMGdQTrQ2bUy3ZbtCIYryNpdKEMRfFByoAPQNhnUrUTrbS8+0gW
         XwQht32PVdOtX5SZfc2kXlgvOw8CQEJoat+5pgioki+mIYsZBeOYmpBpivaxL0GTYRlr
         w4L1PH7/ZySWe37Xb/QV1FpdZuk3mk9dg/uFY3ZmO3Uruyq0+aDNIB+MvhV3OwYri5bR
         0Xu9KaVySCzHst54UzmTkrILLh/UbWkQPkAZeP2cEeomedtqcH5kxckAXj8gMaCRLV1w
         Iczw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of sebastian.reichel@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=sebastian.reichel@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=pDH/94eY+A8/Jf8OPENOrcukZtVAEGRiu2UGrldrB+s=;
        b=jzuhfU2F0umkRuwKQM9tbGQLwh5ZdYdOxYl464MoK3rEWJRMEJ3pgcVyuNN6sGnoAP
         QSKxr0HfOSFghDDeqb/vV27mwHd7lAFamxRG1FAjdBOvEEs2xfe4eMi6s7HPTSDtWMUm
         8HiugElg9xqu5Z3sGC0krQfRAwrnnga1LcQEJkvJToQpJvvM5J3RfefAhKMzBCSe6WTg
         KZT+/DhggIKdWYAtDsT0iD56nHqfJlJu6eu8/2LKIsg4JVCfOSWDTQ4HVU05zVsddu62
         FpurzxGagHLHx+bPoketWPfoUmmo/9ePae+eKq71V7gJGHn2yWJgBrBpZo97jmPsCQJE
         UNeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=pDH/94eY+A8/Jf8OPENOrcukZtVAEGRiu2UGrldrB+s=;
        b=DFXi0to5vI+LnyQ44jC7xb8rgVLH+42JP6fapoeOBj2FqRhRKbty/HN1juSd+fnOKN
         tt4i/ECccIvtnJ1xwuQxZY8PKMGb67VwRblxTVYhNUACSinVAR34WRF+nOebP7RvDpKr
         6rH8lvFqwCiP9ulnHDqlO7+upd4tce0E9fe1XmdblbF9MHK0UbMY0bm24J9WUExFWrir
         tHnJ0PNqugtpRnYu7OqGYC1g/UAjm8+NzsvXKl0suNmgESClTPITUPZSD//a2qFIZqE8
         9lKYuuVDZEHqp6efRkh3Nnmryga7bal5Qsfj6843CKmC5aWipv/6BN81uwn3GsBLr0Xw
         UOhg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuaaFki0WedL2xphMc4STjmmZfoI0KFLbh6WzyX+uBBLupdsu79W
	leffej1/A939BmYiIoFWTvs=
X-Google-Smtp-Source: APiQypLQMhTR1Djhmflgi/xesIQWMQgMJ/7lHPUVN+2HtfysXXxt2VS+tveRKf2s+6SltxBrnZbR4A==
X-Received: by 2002:a1c:bd8b:: with SMTP id n133mr7246906wmf.175.1588464564956;
        Sat, 02 May 2020 17:09:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:668b:: with SMTP id l11ls15313867wru.0.gmail; Sat, 02
 May 2020 17:09:24 -0700 (PDT)
X-Received: by 2002:a05:6000:1203:: with SMTP id e3mr12489433wrx.229.1588464564602;
        Sat, 02 May 2020 17:09:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588464564; cv=none;
        d=google.com; s=arc-20160816;
        b=BvX4WV13+MzrWUioR3V9wBi9NKVf4pdhXlYgW8GUx27avsX1l8gBHMHEef9ZmE132F
         TKnECB5uX4u+pNdlhsnDafcR9ewOXGRwq/dLZIhx03h4VSttluvronFke49mImekP1Y1
         Cc7nCAv1shlZYcCyLA46OIG2wTNNUzWOE/xR1nkEXWuHyZHMJ2c2g5wdWoW6v3iTeBqc
         Jz8IaSdeXqKF8SG5luYcbP79reiUwpyJEqhLJGHoMpyJudZ2drFZQsL+S3tSvX/Er+EJ
         Lyvjlk/78hjmKoAs/6cyD+0b1uDhtdG9Sq6nVn/tQqzrqftY2n/4Cx/0ORdtL4en4VOb
         Pi6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=l9pBJH0DjhyRuBojhpRcGV5pIXs61n+UCmufmmH5jm8=;
        b=eOsMu1V80BDWh1qPBKyQS50FadOXe8PiBSI2SaG4FxsXIcgjXWZV5AjPJQlCGfO4BS
         +wnLkurbPqVi77nTA/IEhWES0qjFHMunXc2Vi2YRe8LsrznU8Z18by7A495QFSSM4c9i
         sKLsehK8LgM8TlB95h0VORXzMSfIruD9A4megBrBzLVjIgScyeujR6BzhMjv/V74fMVx
         GUlJjSP1Xku7cIPNaf/mKyE7dg/T2OBzPhh5Exbff+xLVIJqvQf6sxZzfJGCafSNmrOd
         kiKVnQYo7utlfEr02ztYfYj0/3gEon+6EXwU9OKm49JSLKiFxwafUpzB8Q6YNFSmKqZt
         YPMg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of sebastian.reichel@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=sebastian.reichel@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk. [2a00:1098:0:82:1000:25:2eeb:e3e3])
        by gmr-mx.google.com with ESMTPS id o136si224677wme.0.2020.05.02.17.09.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 02 May 2020 17:09:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of sebastian.reichel@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) client-ip=2a00:1098:0:82:1000:25:2eeb:e3e3;
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: sre)
	with ESMTPSA id 322D92A0590
Received: by earth.universe (Postfix, from userid 1000)
	id 022D33C08C7; Sun,  3 May 2020 02:09:21 +0200 (CEST)
Date: Sun, 3 May 2020 02:09:21 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: =?utf-8?B?TWljaGHFgiBNaXJvc8WCYXc=?= <mirq-linux@rere.qmqm.pl>
Cc: clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org,
	linux-pm@vger.kernel.org
Subject: Re: [PATCH v4 2/4] power: supply: core: add input voltage/current
 measurements
Message-ID: <20200503000921.6krrkai7onsba2uz@earth.universe>
References: <cover.1588345420.git.mirq-linux@rere.qmqm.pl>
 <249d7ad42b02bfeb8c31c49a64ee92b3e745086d.1588345420.git.mirq-linux@rere.qmqm.pl>
 <20200502222349.tfa72nr5zunybpla@earth.universe>
 <20200502224526.GA25127@qmqm.qmqm.pl>
 <20200502231158.GB25127@qmqm.qmqm.pl>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="wwkc4zuembsuqcjr"
Content-Disposition: inline
In-Reply-To: <20200502231158.GB25127@qmqm.qmqm.pl>
X-Original-Sender: sebastian.reichel@collabora.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of sebastian.reichel@collabora.com designates
 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=sebastian.reichel@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
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


--wwkc4zuembsuqcjr
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Sun, May 03, 2020 at 01:11:58AM +0200, Micha=C5=82 Miros=C5=82aw wrote:
> On Sun, May 03, 2020 at 12:45:26AM +0200, Micha=C5=82 Miros=C5=82aw wrote=
:
> > On Sun, May 03, 2020 at 12:23:49AM +0200, Sebastian Reichel wrote:
> > > On Fri, May 01, 2020 at 05:11:18PM +0200, Micha=C5=82 Miros=C5=82aw w=
rote:
> [...]
> > > > --- a/include/linux/power_supply.h
> > > > +++ b/include/linux/power_supply.h
> > > > @@ -127,7 +127,9 @@ enum power_supply_property {
> > > >  	POWER_SUPPLY_PROP_CHARGE_CONTROL_LIMIT_MAX,
> > > >  	POWER_SUPPLY_PROP_CHARGE_CONTROL_START_THRESHOLD, /* in percents!=
 */
> > > >  	POWER_SUPPLY_PROP_CHARGE_CONTROL_END_THRESHOLD, /* in percents! *=
/
> > > > +	POWER_SUPPLY_PROP_INPUT_CURRENT_NOW,
> > >=20
> > > What:           /sys/class/power_supply/<supply_name>/current_avg   =
=20
> > > Date:           May 2007
> > > Contact:        linux-pm@vger.kernel.org                         =20
> > > Description:                 =20
> > >                 Reports an average IBUS current reading over a fixed =
period.  =20
> > >                 Normally devices will provide a fixed interval in whi=
ch they  =20
> > >                 average readings to smooth out the reported value.   =
         =20
> > >                                                                      =
          =20
> > >                 Access: Read   =20
> > >                 Valid values: Represented in microamps
> > >=20
> >=20
> > There are two entries for /sys/class/power_supply/<supply_name>/current=
_avg
> > in the file, the other one mentions IBAT instead. "voltage_now" has the
> > same problem.
> [...]
>=20
> So the general idea of the sysfs API seems to require separate devices fo=
r the
> input (charger) and battery elements.
>
> Since what I'm looking at is an integrated battery controller
> (bq25896) which has three connections: an USB power (VBUS), a
> battery and the system load, but it creates only a single
> power-class device.

power-supply exposes either TYPE_MAINS/TYPE_USB or TYPE_BATTERY.
If a device is combined function, then it should register two
power-supply devices.

> This is complicated by the fact that this is an OTG device and so
> it can sink or source VBUS power.

Ok.

-- Sebastian

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20200503000921.6krrkai7onsba2uz%40earth.universe.

--wwkc4zuembsuqcjr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAl6uC6wACgkQ2O7X88g7
+ppcRA//UIFhxQTftT9jUww7uCRqVy59YKRey2qkQpr6H4jn47RcVYCpVe82p0sZ
Mxg2BF9LyMMquAtFXWK4sTtiCcPjklf7yd5kAl97cxy5WF9FZmBkbiAxvVdXSFmn
i2Gt43SzzWoGHW3155UYr3DMwX0K/eK4HUKAfxTmGP25EXhYPmetMff6Oz5KDP1s
EUt8QRn34K0Sc8nnb5Kxye161bCVn0dnI+Q1zAtAwAs1GCoPrluHK0Pnb60Ye/TE
8K/8zh4HHXwtRa51M+qsLQRIzoompZK5JS2b9FTAOeUpiyDCG6OCunkjpjrGKzXi
ea0afXbhltswYrUlBhbBqsrkPewqCYpaWdwwcVpntwjtTqY9rhFeSlLLbcfJFtOD
RypG6ob3leVakXodCbU4KQQjMkOv5rka6/2o9tJijwetQ1IUnSW8WqecPTBY2Rkk
F3U4tZGieL9P1DPiheb9XhQmnnUtATrAGtDS8LHOtNqgCdFLPA/oVCqQCl6I3bmz
mWHev2TtyXeTnFVH+QL6FtssYq+6J1cR4t0aqXTBpTNTQvoUj3u1oegj27wCvd0T
Co+/w2S7S+7JLwPW36TRk0Uap3mWNc4yZPOeywJZon3bpWGB9fL86k+j1Htc7aG/
GNN9HI2DA54u/Yz+11594bi7rzQEd4BbS2+SWiS+5VcYYLbYSao=
=TUBU
-----END PGP SIGNATURE-----

--wwkc4zuembsuqcjr--
