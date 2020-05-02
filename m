Return-Path: <clang-built-linux+bncBAABB57FW72QKGQE3OLLJQQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id F20DD1C288D
	for <lists+clang-built-linux@lfdr.de>; Sun,  3 May 2020 00:23:51 +0200 (CEST)
Received: by mail-wr1-x440.google.com with SMTP id p16sf7993327wro.16
        for <lists+clang-built-linux@lfdr.de>; Sat, 02 May 2020 15:23:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588458231; cv=pass;
        d=google.com; s=arc-20160816;
        b=o4MFUo+GSAb2aqO7nxWRAbh8Cuxs/IggehtBVh+lOYa6u9m2ElPBnTTs6hiO2R0IEP
         Z1Cx/0+sM2sFBA3aIHM/aCZ98T2BTkgwnXVoyi/u4S1jD/KPJ3eLm8e9exF21kbKcFfn
         BmCnIYylH/c7hz3ecc4hjQnR2PGOiwuYhEuoNSX9PCp5w4GFKdmNa0/BMRuUvA7vwgnL
         xLNCKJXo/NebaEDstxWGWShBdhnfZPCxezjFlefDYzfoY+2XXSjfzWU12nN/GYRJR/qC
         Rz+D0O6x4Y2QajRCJ/uLttDFccJvqWrzupoZkn8n4ztGunM1hqtAQGJqgeawP8e3JaaN
         5FSQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=nWl8FIRGWWLoFL3kDO7WYwXqPA6POkJWJcYe7HxvdNs=;
        b=QqziFEqqm9RqdnTwev0FZl2udmW8eDY9YqNm2gSH9kveKE+jtZGwQRdXKQmbuGFYNY
         +yB1UFYYwW2Crf++Ik6SkFXLXPE2VMo9q7ru3AE0LGcJDz1Duqz96xvHQYPS38Ug0utg
         T1CoVH2DtKB6mtFrbC+irz3wxI8YyvO1WC9IgVhpJ4sNVtRgS58OMmpvhocd4g7C/MyG
         omRaxC7bthKV+qRHlOk28dpVFjb59OpN6BgDE7NmhYM1a4UCaoXCXz5w3h4KLBtKC86/
         OCCNi8kxkyMMmqVhKivXSzTB7+GadFZ1gmGj3fUbHu6+UkLA37Wa1cy6QlI7gRLimcij
         gzUw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of sebastian.reichel@collabora.com designates 46.235.227.227 as permitted sender) smtp.mailfrom=sebastian.reichel@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nWl8FIRGWWLoFL3kDO7WYwXqPA6POkJWJcYe7HxvdNs=;
        b=aU+HFP3VjCwsJM/rPzlYXksD/+IQCgKmafGAbeUZ2ef3z0h77AvdyAOjp5O6NemZb1
         tcw/Wul05fE5z9MEkoeitoQC0ybCHxjJ0TTIqyvopnKF7h1EXSLzK2jOut1rl2FCh36K
         X0x+NRQB7g6ECKKDnN/anqbaDxFvDGVQaQxwLa+YSoIIWExo+pPTbM40cz5k3rPzzU7N
         G/3ZFD7jDlGDz/m1mMf6fOZIA/bTVvo9EOSv0QDYp3032ci0SeHIRNIGKKwsLFD/yl+G
         d3d6YzFu1VBLmGb1kGfvw7T9L004lo9q6KOWqvwqkGnPaCwI6E/IqRsk5TmtFjcUDDkZ
         JIuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=nWl8FIRGWWLoFL3kDO7WYwXqPA6POkJWJcYe7HxvdNs=;
        b=Jfe+hDKQGCUBqGl3Yb4aIfb2tVm0JmCpgXoDQaSoFtTwaf+jGMUUmm2qUA3FArhJHP
         cbdqJhIOd7X5meP28PSs9EwOrziFEy3TSMvdyLPPVxJVEylb1XbokdUZNog+LlCNrrkL
         mjk7k3LGeU/ctAuYuK5MSOOYHQ5Yq+Ou2gZtaKmSYiJ5BnNbLpGRg07rjRV7Q5LQ9277
         RPe+cjVF0Q49+Ibd/Z7hc+S/vv/3JDlDXe4LqX/3H/uTSKpio+Kz1Xt4ads+yDi9YwrB
         rFZYlOgCYTfPVVgPt5GJyZyUHWQkZ72mGx7t+CdprwuRMD5wMv0XRPfTI+va3z2uFdyM
         6dkg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuaqwnTnJy+Z4Oud/zwCUk5s9L0jR5etu2/DurpNxjX4pXMXcwTz
	OEN7pe5tBadTWyGl/l80GX0=
X-Google-Smtp-Source: APiQypKpToaIiMdrsGqHK6UWVQy2t9rkNkOrQkLrEX/WwI1PAAp5mxMzTn+iChv/1pbhHjb7+aIGzQ==
X-Received: by 2002:a5d:670d:: with SMTP id o13mr12058974wru.29.1588458231749;
        Sat, 02 May 2020 15:23:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:a754:: with SMTP id q81ls9459818wme.3.canary-gmail; Sat,
 02 May 2020 15:23:51 -0700 (PDT)
X-Received: by 2002:a1c:7905:: with SMTP id l5mr6898553wme.5.1588458231423;
        Sat, 02 May 2020 15:23:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588458231; cv=none;
        d=google.com; s=arc-20160816;
        b=NP5upgmygDJ5sxHthmzAhKDoEyLxdT0xhglUGPa5gHtXBvRZmYHZ4gG/pTebRvQvVo
         GOSVs+LS8g92SpjAZaqxhIbvLuni7KKYOnNg29cdUB1rEieNMkVJCtSzxkOBlGy79pmV
         NIBdeqAAdkdr784nY37D7L5zRTdmL0OQx8nbeUxWP+C6nWmn9QF2JosvaxCARY3PMcnB
         w6dcvCNt5Mmnya1PRoqf7fG6fkz3vAOyBws+KjbVCtVu5SZZkSn/ztsg3kaexhT+6v6w
         JqOAIuE99aEtshRSa99EXEqYfw8csg08430MeDbfyrqMcqAeXLs/U+8LGPlXEEN4Jja0
         MPPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=Jv7PazOFQPQJjpAgdwYwIQuVGCxvf9gFWWh+OBplZU8=;
        b=P5hcYvMzTdnZGU0GeYxEV6Uyo/J7/sWiob6I85MLUzCjvTt07czz0cNAWqXPscVgV2
         wT4I0uqsMO+Rf8cqn/j3QZBTWMW24Ffw9ygmd65anEetB2XhwxmQbvdlQZIFRZEwZht+
         SSuJMRgcM1iC8LR4/GK/76VY+Xcr06/GebSAmFJLZ3gua+SvXQ3BxK5e+gyQWA7EB8hL
         C38bn+KTEGbrfovDdrnmjVN6Fk9fufROCAAXxA1CJKaRh8M7Fhp+kUoVpfsjkLT66wwV
         ORfsYKXoNU4jnxYiDvgEOnzscv4etvJGCj+MAio7gebWJeLE8esU5wc3ImxG3bc21I9M
         0B7w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of sebastian.reichel@collabora.com designates 46.235.227.227 as permitted sender) smtp.mailfrom=sebastian.reichel@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk. [46.235.227.227])
        by gmr-mx.google.com with ESMTPS id f129si200591wmf.2.2020.05.02.15.23.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 02 May 2020 15:23:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of sebastian.reichel@collabora.com designates 46.235.227.227 as permitted sender) client-ip=46.235.227.227;
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: sre)
	with ESMTPSA id 35F9B260157
Received: by earth.universe (Postfix, from userid 1000)
	id 0F1993C08C7; Sun,  3 May 2020 00:23:49 +0200 (CEST)
Date: Sun, 3 May 2020 00:23:49 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: =?utf-8?B?TWljaGHFgiBNaXJvc8WCYXc=?= <mirq-linux@rere.qmqm.pl>
Cc: clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org,
	linux-pm@vger.kernel.org
Subject: Re: [PATCH v4 2/4] power: supply: core: add input voltage/current
 measurements
Message-ID: <20200502222349.tfa72nr5zunybpla@earth.universe>
References: <cover.1588345420.git.mirq-linux@rere.qmqm.pl>
 <249d7ad42b02bfeb8c31c49a64ee92b3e745086d.1588345420.git.mirq-linux@rere.qmqm.pl>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="g3ivjy5uiv4t2q7t"
Content-Disposition: inline
In-Reply-To: <249d7ad42b02bfeb8c31c49a64ee92b3e745086d.1588345420.git.mirq-linux@rere.qmqm.pl>
X-Original-Sender: sebastian.reichel@collabora.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of sebastian.reichel@collabora.com designates
 46.235.227.227 as permitted sender) smtp.mailfrom=sebastian.reichel@collabora.com;
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


--g3ivjy5uiv4t2q7t
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Fri, May 01, 2020 at 05:11:18PM +0200, Micha=C5=82 Miros=C5=82aw wrote:
> Introduce input voltage and current limits and measurements.
> This makes room for e.g. VBUS measurements in USB chargers.

We already have properties for charger input voltage/current.
Unfortunately the naming is not as straight forward, as it
could be. Basically the properties have been added over time
and are ABI now. Things are documented in

Documentation/ABI/testing/sysfs-class-power

I provided the relevant properties below.

> Signed-off-by: Micha=C5=82 Miros=C5=82aw <mirq-linux@rere.qmqm.pl>

[...]

> --- a/drivers/power/supply/power_supply_sysfs.c
> +++ b/drivers/power/supply/power_supply_sysfs.c
> @@ -273,7 +273,9 @@ static struct device_attribute power_supply_attrs[] =
=3D {
>  	POWER_SUPPLY_ATTR(charge_control_limit_max),
>  	POWER_SUPPLY_ATTR(charge_control_start_threshold),
>  	POWER_SUPPLY_ATTR(charge_control_end_threshold),
> +	POWER_SUPPLY_ATTR(input_current_now),
>  	POWER_SUPPLY_ATTR(input_current_limit),
> +	POWER_SUPPLY_ATTR(input_voltage_now),
>  	POWER_SUPPLY_ATTR(input_voltage_limit),
>  	POWER_SUPPLY_ATTR(input_power_limit),
>  	POWER_SUPPLY_ATTR(energy_full_design),
> diff --git a/include/linux/power_supply.h b/include/linux/power_supply.h
> index 6a34df65d4d1..5313d1284aad 100644
> --- a/include/linux/power_supply.h
> +++ b/include/linux/power_supply.h
> @@ -127,7 +127,9 @@ enum power_supply_property {
>  	POWER_SUPPLY_PROP_CHARGE_CONTROL_LIMIT_MAX,
>  	POWER_SUPPLY_PROP_CHARGE_CONTROL_START_THRESHOLD, /* in percents! */
>  	POWER_SUPPLY_PROP_CHARGE_CONTROL_END_THRESHOLD, /* in percents! */
> +	POWER_SUPPLY_PROP_INPUT_CURRENT_NOW,

What:           /sys/class/power_supply/<supply_name>/current_avg   =20
Date:           May 2007
Contact:        linux-pm@vger.kernel.org                         =20
Description:                 =20
                Reports an average IBUS current reading over a fixed period=
.  =20
                Normally devices will provide a fixed interval in which the=
y  =20
                average readings to smooth out the reported value.         =
   =20
                                                                           =
    =20
                Access: Read   =20
                Valid values: Represented in microamps

>  	POWER_SUPPLY_PROP_INPUT_CURRENT_LIMIT,
> +	POWER_SUPPLY_PROP_INPUT_VOLTAGE_NOW,

What:           /sys/class/power_supply/<supply_name>/voltage_now   =20
Date:           May 2007   =20
Contact:        linux-pm@vger.kernel.org   =20
Description:   =20
                Reports the VBUS voltage supplied now. This value is genera=
lly   =20
                read-only reporting, unless the 'online' state of the suppl=
y   =20
                is set to be programmable, in which case this value can be =
set   =20
                within the reported min/max range.   =20
   =20
                Access: Read, Write   =20
                Valid values: Represented in microvolts   =20

>  	POWER_SUPPLY_PROP_INPUT_VOLTAGE_LIMIT,
>  	POWER_SUPPLY_PROP_INPUT_POWER_LIMIT,
>  	POWER_SUPPLY_PROP_ENERGY_FULL_DESIGN,

-- Sebastian

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20200502222349.tfa72nr5zunybpla%40earth.universe.

--g3ivjy5uiv4t2q7t
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAl6t8u0ACgkQ2O7X88g7
+ppPhg//Zc1WwfEDVYa11+sBTdEsTb4FGzPsFixlXe4GE6kNmXK/uFzUmwH+8Jbe
YLtwTb7Disi0ub04w6ZAc3gwGLmRU6hRj/ybkFAcBh3WNli5AtY6K/hFU3mSZc9f
i2mNHKP/15VTswHgoteCx1LFvNsIhuH2D3CuR85zZneiX3vT8rT9MFItAvr+mNTK
pegtIIhaGEgg44ab6k5PmSvrS3L/KhEM3ditb4mrWNCxt5yPDrB8oaYV9cRjKdPo
y7UGF6kM80fp5ggI9IWgysi7egLa49gb+3VNWOhgNUclEAgbQuRnM78nxQpPHtG0
xQO5h9jz5xrIEp7O8WKaDmtPz/lAZm62ofD15dGh+sZju4h8tWh8bbW0vAIekpXS
a+JjS5qeZVW1EvmDSC7wrVkUl5RGzZYvNoqftKxSVYCXVIPKOrDPmCFKiMGYe1+P
t7PsOwfmMvrEXH8dDAw1AOd9xIBAUx5PFAjN6T8Tmir0I81JDGeAN37gzCigoIJb
eeB+9vedR7PskCG0JzU+//Jx5mFKjZP6Ltk8PapowpT/TOca6LKrX24pCnYVzv+0
V27N/38P4bCnUSc0yFj2k2BSsFhISXCmUMjZv49pmoA4rqTC7bATIlRJX+2o5RpU
/J6Es9QaNPmtVSWwcLStnGtS6jKQZc4pQoKMHfG9SvZHovTb4JQ=
=Y7im
-----END PGP SIGNATURE-----

--g3ivjy5uiv4t2q7t--
