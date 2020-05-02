Return-Path: <clang-built-linux+bncBAABBGXGW72QKGQEMNDDW7I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x140.google.com (mail-lf1-x140.google.com [IPv6:2a00:1450:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id 839FF1C2890
	for <lists+clang-built-linux@lfdr.de>; Sun,  3 May 2020 00:24:27 +0200 (CEST)
Received: by mail-lf1-x140.google.com with SMTP id p85sf3889121lfa.22
        for <lists+clang-built-linux@lfdr.de>; Sat, 02 May 2020 15:24:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588458267; cv=pass;
        d=google.com; s=arc-20160816;
        b=fESKxXwHuJYNV+FfFQ55fRMjmErz3FKJ+oUh0KRnADltz4KKgvvf9JF/+pxa7pyun2
         NkQQYOyGtIoWgCpaHd0cw+i6Dfhhi5d3EgC3zLAsYWLBhSBCIZUWi/Z7rupkAVM7EoZ4
         l1Q20GTvjiyYwyOkFiUwW53NVJEqSyvEK5crMT0XsWTqlB7bTA1kbD8bR6bBcDgowMm+
         Ty93xSbUMzkj6Pfv4h/6l1+HPkEtW/VxVX84c7vGO8cs2Hobqw75v5YT3Miq8X5NyuZu
         gdWwN7miPhJXgi9xkst83CJN84IDUT2lNru+g/5wJlu/KKP5be1A61tZpm0hVqI/kkj6
         GNxA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=PYidgVA2PJXC1FKLWcY3cbL8y1r+5xX/O+gAZ0uW5KQ=;
        b=JHyMFrvgnKK5/wt6nwQ7JrNYHcCUcWzIUbYExonrl2fI5ro5zRSzFZU4ItyHu2QyxT
         +hmiC6qXLiyP08rWrzIZHMXJtUAAPq20JGcufICJ9ZWIv9UiuFDs64nmkYZDRNRW8867
         sm9DH3ItAKD1yJk1lt7Khr1ARKp0CYoluQe9wV/KHeIzkKdyZuNf97T2zeF1wH/w/UX1
         DfwEPHN0Cga1ai/M1mhTgL40DVWZyun9jbdQehYtJrhqp5JiYw16uij4GgeG8yNwsy2O
         X3RyLHue2Uo6z/V0swm5r+xyOCJicFucoITQZcZzoqBl472IN12aBQyRmi3TvtGRfIbU
         fFsQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of sebastian.reichel@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=sebastian.reichel@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=PYidgVA2PJXC1FKLWcY3cbL8y1r+5xX/O+gAZ0uW5KQ=;
        b=XjmJXcQhPa+LQxutOfgME556ME3XvQ8KUqSgI5LMxdNvt2Adap+OWHLB9v7FXYwhmw
         CGPoGRMG7dz+NMpPV9vTq30rrdhsON5oLCYkz6NsNrMU/ICUgtcz23jaogO6hTyZM8Ns
         u0P3+ff6Ia/f8Q8VsU9ZbD/IPeoFqtRgbd8SUmq/zamIs3UMwlEuAG15Y7pppPAms776
         rJwoeBERV5XZ7MIkxSqrtE+biEwhsz0kuG4SzN8AOUXHJcWA8I7cJ8XjW1JZBEiuVgyQ
         c5VaH3uFDTcL3utZgtJKmVB9osctaDM22oJU8kRj4b6bUl+x5eI3zIZT77jGJ1PM2kX8
         IwVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=PYidgVA2PJXC1FKLWcY3cbL8y1r+5xX/O+gAZ0uW5KQ=;
        b=TYp/CKJJmJUhe7f7qc4wSQFhVuhjF0y9al3TLwKlpJKwJTa6E8rbALTzkjUzNcjNLH
         PvfblrD2K2DbzxjpRYxnSNwjPmqRLz23Uv6lUsuAIQ7BD5NzzZ12oYZ92nogdR/4hkvD
         UD+P3eseQZiJSr9ylbmnEIza2vukwdmBfOlhlPTnS0e3TuojNEudhxd3QUigZA8YxEUA
         db/Lo2S+eg1DBucAjB6n7XONGdboO0S9NHbqH6Z6xK44t7uAm+uJd4XhKXokEQgAg2JV
         B8msHYVp5a5NTi6i2FoSrJ58mrYJYEp05nqZhF/g0B8/erxLpcGXPmWw+4GLf0Dy8HhO
         Q+Bw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZv92swTFFRfDsl03hok3eI9ahmgb/5/OrO2sS/8r1W5CDfj2uz
	NeXF4GLPHIwi5+o/UbzE0Yc=
X-Google-Smtp-Source: APiQypJXGHjs3SMq9sB4BEUHMSOviTGNJmz6K60vk9tWgL0o6Ty06h9cG2IeCRNjcm4TZ49eOxW5mg==
X-Received: by 2002:a2e:8686:: with SMTP id l6mr6196622lji.152.1588458266956;
        Sat, 02 May 2020 15:24:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:ae17:: with SMTP id f23ls1017771lfc.9.gmail; Sat, 02 May
 2020 15:24:26 -0700 (PDT)
X-Received: by 2002:a19:6a18:: with SMTP id u24mr6802634lfu.191.1588458266537;
        Sat, 02 May 2020 15:24:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588458266; cv=none;
        d=google.com; s=arc-20160816;
        b=A06y2Ahjnqo+xMoXrUmXv52Y4o3yh9hPQwle2/OzsXgORvIgWZBdDjIYgGvyYsUTsk
         fzujnHvdg2ufcZsBBhACtkE3K+be617Y+SoUPKaj8Nhf7fFACrvFN+w4fZqBbVwBGfen
         TKu/fkFQS6NaKXauMo+TeME5hOfRnmFtAEwvxuJDIblMNqcHSuPmiKV7Yc5brUd7OasT
         7FzOS1l84d6kqyhdENXpqu5FEHL8EU2vYW61lF7KC9I2XQwXfwpeAHR5WYiEHyEdZX6T
         bYZmxSEs2SqFJKtEAVGSsdld1GyyKDtr7/VCAc/wHpWL5HAH6JvyLSDe8uoK9MGGVW6v
         FeLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=dabYh3uedUjFfciXJto79OkZbgB/0ONrpMz6bh1IunE=;
        b=Kbrq4YBOSVN8fDDxl+XzAvT1jnlYO0g+PlBorlGQU967hzcjePTq/TQeO9t9T7hAm+
         inLN1B2Fo8Z3oosZH5hWnlTbLz6kDpKgsNnAH3ZoxmxTXRpKffTRuJ3vSKkXDcLEgv2L
         f8p3eluqoPQt5ZcxdSBECN4VZ38EjhM+dG2YV843NzSUYdf5nTHKUFfaCmn9s4J7aOu7
         nYkQi4Td6PIN4o5Hu6Z8IkpBOOdocqymijtaTN1ptQYvlg6KuiZXipflmf3TfB3TCgYs
         jDL1dL2Wnpu6uoZ/zrACxOjL1ItxyZJpRsmX6jjSRQ0t0gBUrLIuuVXf4W+d+B49qr26
         huTQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of sebastian.reichel@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=sebastian.reichel@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk. [2a00:1098:0:82:1000:25:2eeb:e3e3])
        by gmr-mx.google.com with ESMTPS id f1si539662lfm.1.2020.05.02.15.24.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 02 May 2020 15:24:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of sebastian.reichel@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) client-ip=2a00:1098:0:82:1000:25:2eeb:e3e3;
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: sre)
	with ESMTPSA id B95BA260157
Received: by earth.universe (Postfix, from userid 1000)
	id A473F3C08C7; Sun,  3 May 2020 00:24:23 +0200 (CEST)
Date: Sun, 3 May 2020 00:24:23 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: =?utf-8?B?TWljaGHFgiBNaXJvc8WCYXc=?= <mirq-linux@rere.qmqm.pl>
Cc: linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH v4 1/4] power: supply: core: tabularize HWMON temperature
 labels
Message-ID: <20200502222423.5xevejzk5pgwgyiy@earth.universe>
References: <cover.1588345420.git.mirq-linux@rere.qmqm.pl>
 <79bec8125df260bdae294345bd7773dc3dd9c434.1588345420.git.mirq-linux@rere.qmqm.pl>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="xqlsj2lv6kyqliyz"
Content-Disposition: inline
In-Reply-To: <79bec8125df260bdae294345bd7773dc3dd9c434.1588345420.git.mirq-linux@rere.qmqm.pl>
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


--xqlsj2lv6kyqliyz
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Fri, May 01, 2020 at 05:11:18PM +0200, Micha=C5=82 Miros=C5=82aw wrote:
> Rework power_supply_hwmon_read_string() to check it's parameters.
> This allows to extend it later with labels for other types of
> measurements.
>=20
> Signed-off-by: Micha=C5=82 Miros=C5=82aw <mirq-linux@rere.qmqm.pl>
> ---
> v2: split from fix temperature labels
> v3: remove power_supply_hwmon_read_string() parameter checks
>     as it is internal API (suggested by Guenter Roeck)
> v4: remove unreachable() as it triggers compiler bugs
> ---

Thanks, queued.

-- Sebastian

>  drivers/power/supply/power_supply_hwmon.c | 20 +++++++++++++++++++-
>  1 file changed, 19 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/power/supply/power_supply_hwmon.c b/drivers/power/su=
pply/power_supply_hwmon.c
> index af72e5693f65..f5d538485aaa 100644
> --- a/drivers/power/supply/power_supply_hwmon.c
> +++ b/drivers/power/supply/power_supply_hwmon.c
> @@ -13,6 +13,11 @@ struct power_supply_hwmon {
>  	unsigned long *props;
>  };
> =20
> +static const char *const ps_temp_label[] =3D {
> +	"temp",
> +	"ambient temp",
> +};
> +
>  static int power_supply_hwmon_in_to_property(u32 attr)
>  {
>  	switch (attr) {
> @@ -180,7 +185,20 @@ static int power_supply_hwmon_read_string(struct dev=
ice *dev,
>  					  u32 attr, int channel,
>  					  const char **str)
>  {
> -	*str =3D channel ? "temp ambient" : "temp";
> +	switch (type) {
> +	case hwmon_temp:
> +		*str =3D ps_temp_label[channel];
> +		break;
> +	default:
> +		/* unreachable, but see:
> +		 * gcc bug #51513 [1] and clang bug #978 [2]
> +		 *
> +		 * [1] https://gcc.gnu.org/bugzilla/show_bug.cgi?id=3D51513
> +		 * [2] https://github.com/ClangBuiltLinux/linux/issues/978
> +		 */
> +		break;
> +	}
> +
>  	return 0;
>  }
> =20
> --=20
> 2.20.1
>=20

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20200502222423.5xevejzk5pgwgyiy%40earth.universe.

--xqlsj2lv6kyqliyz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAl6t8xcACgkQ2O7X88g7
+pqaGg//cdk2UQ4FUDhA8eBirpDK//KybE93ZvSCBpIgllJPwKs25hQc9xy5VUx5
q/0TJ3dnAzD/myVFcJym0hUj2E5UV18ewvuUVBfK/FRLCLTg+uI2Vyb0IfF52OBp
UdcsrhhopftWiiBSJHfnsR9IWJfQvG1+gEPgFaAeDYegJmRWGCxx5qimYbLQvIx5
Rzckpv5igmJj6+ePJ67NgmRNokmrB6jG1FPpjUBs8fsRGDfcCWzs7AT0KZu9E4Kp
O+Ge+pEkrafYhEyTAz+1hx6kw5kjUiAVfFjfHxEPW50mDmvcO7UPxCWk9eyEA99Z
IxQTGlEXUk+4E2jWS1SmBurPdfyMoGl3rGMKTBxQ83V9YBvnWhQXxqbIRFVSmoKH
+4Qoxfgrt6/qaX0dkgXjabakaHrn8s1hNrsjirHahURTOrTbjLNV2+h9Ejp1nqi0
ZWiz+2M7zc4TPPb3KGkX7db49pOtKqGJhwUfNQ95c0IVscoX7lR6ITfaxSrdv4ci
5xe00m9vE87JhDU6yJSzaN0JSwvk0ZuhHCk6+t9BcnHS+5TZAbb6CzPl9AlyfrnL
mn5u0GVsI5AfbBHbEPAecGd3tKF19N4vb+eZWH42Na+LSzLbaBdQb64SHa3r5n6N
DOVU8y1Qk60tTxzPlZ2JIfO325yskrYnDCtfaJ/g3IJX3dVmiYs=
=BpIr
-----END PGP SIGNATURE-----

--xqlsj2lv6kyqliyz--
