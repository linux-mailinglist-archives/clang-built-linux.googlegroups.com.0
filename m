Return-Path: <clang-built-linux+bncBCR47KWBVEIBBQFTSOAAMGQEG4GBXRA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23c.google.com (mail-lj1-x23c.google.com [IPv6:2a00:1450:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id EA7782F96C3
	for <lists+clang-built-linux@lfdr.de>; Mon, 18 Jan 2021 01:43:44 +0100 (CET)
Received: by mail-lj1-x23c.google.com with SMTP id s18sf3910459ljp.7
        for <lists+clang-built-linux@lfdr.de>; Sun, 17 Jan 2021 16:43:44 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610930624; cv=pass;
        d=google.com; s=arc-20160816;
        b=x0uNQukRO/95ystvnPTSjtOhppBQ2M6rtBVeMEzrR/qS3C054+qit1AMDdpeiEM343
         zLL+FVjwkRexsKPXuo7MwvqHX2s22PxuzgMqhg8pyduMeyFm/6f1NYHZsNgBsKG4LtRT
         mrgfMiyhTnY1B+6wjkwHb/xteEkWOvtMrI3D2EuNSpNpnyRxknBL6t5oJ1EinnMCfFPS
         zdK5go8AVQp0mZzn75AtbV7PXAC7tVsJ7lR+gOByc46IwtRu+SVLqlPHJ/8sA3VBloQI
         /5E+6GY2q+ajlxKGoxkaCpL4ECQaE/jpAmLJ51NiYTz8pwPEZtIuMX6H4LfZCE72DAvS
         Njeg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=mdPHshE1BrXmp+6gCLDy2/Jh8vyf6f+Z63iRzJEUDXE=;
        b=BnjYtecwhXIywaJjlizhIrYAQoCuZuJwGll4dc2zkMXYbfZReOlJHiPW3V0egk2ECE
         H4hqC1C1xgB6hFaTgqOg+9mGLLAbeUrsDMwZjc53TEyCpFRVTKWBi1R47JeBNz706GTH
         kNtFZfPld7UsE/InMlzXq+dXZBF0GmHKaaczW2ojuNIDTDCF/X1wZh4YYZBtYfbK3gi4
         UEUG4HGGwBpZqtm1e8N68PZyR1wQAmc11IDwlp3+9r+3UElcxqNii8U3458VQg6A+O8q
         gxnTzqgr7s/L4ILnb5BV0lAHP2gK8bnkTnXzPb6sfdbiWbPcVtNqAuMK6din/iqD/+qk
         kPgw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmx.net header.s=badeba3b8450 header.b=UuggZ2gS;
       spf=pass (google.com: domain of j.neuschaefer@gmx.net designates 212.227.17.21 as permitted sender) smtp.mailfrom=j.neuschaefer@gmx.net;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmx.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=mdPHshE1BrXmp+6gCLDy2/Jh8vyf6f+Z63iRzJEUDXE=;
        b=RSTuvGsY/5L9QXOIhjLV2dWAsR49AEFiHUc9Jwlf/Qtdg8Vl/Fu1SinCWPRoHDHMbM
         LpLZ7ZEi5tYTmQmu8Huke9pLkIjXLHDKKZe0jRNtYSmc5ECKfh8qjZrCPrdU34jj/g5e
         jBixnpGGPus8PuA/Ib2bebjKifIU3WfJVxy+5footPK/6TF20zsI45IkDSTvTssnnkIQ
         I0/P2DGlrWwBS6qCDcjFRjXM5hHwwwS+qS4aRfG8e8buuHeTnwZ+zyF7D+5fZmX9Cs5/
         Ro1osJd00RE801S1DyTdFEnlk1uWTnayCFvazpXDE3CejkyzGiG+w0yS9kkl3JQCSla0
         pWtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=mdPHshE1BrXmp+6gCLDy2/Jh8vyf6f+Z63iRzJEUDXE=;
        b=rb43edbW8oJR7tWwpG1iOXpP6g9zTUUz4ViBhFS7Cek/NEdjxTvqYRHVo/M1/6fMsw
         SmR1q2U9GIH0eQhh/Lr5hwsAfJlA5Wz90lM1cbfdMFU/eR66eyUKSG2HuJIJ6nrrn86p
         9rfcR4mMRtHDrfW3tXMs1CqyhyB2K9WXz+aw/pc8M0fBgaSv456MpzsjxHaI2I7dmsdK
         tZ9u9Et8c1IIiKlPiIM88riWzWAcQDnZiWp1vphH8aGcoMLjdct4WRJdgu+a64hfG57f
         rYidk+nFOlf2LUnMGGK6UJP2gAszrVJN6dKlxv7TgCVwRS1BF8zJYwhH5UIsEmUPWVMh
         UCLA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530cAWGWkr/ktlGBJ7AOm0DcbTMgBO72k5RmaNh90hygxDN+Frz1
	GFsxBJttfk0vdM2VerSFUok=
X-Google-Smtp-Source: ABdhPJwBRTmfNtqcytmOYdS7sk3Uywrif3zI7cs4soYpHbDLlxOZU4+gvaSJcaXpwUlQZIb36ePFcg==
X-Received: by 2002:a05:6512:2287:: with SMTP id f7mr9671110lfu.40.1610930624427;
        Sun, 17 Jan 2021 16:43:44 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:810b:: with SMTP id d11ls2340920ljg.11.gmail; Sun, 17
 Jan 2021 16:43:43 -0800 (PST)
X-Received: by 2002:a2e:2f17:: with SMTP id v23mr9611320ljv.222.1610930623265;
        Sun, 17 Jan 2021 16:43:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610930623; cv=none;
        d=google.com; s=arc-20160816;
        b=a+AV+cCcwhbnDA76vmPg+ZEbNoZUESlvZUVWjagsqcNYMrvoUKIbDkGcsjVHBM+wt1
         hIXoYT6deOEUimsa20QAY9OJosG5ewMabP1TFRCrGJPfa9gOLVuEAleLEjYmeeaTi4Dh
         1E7p1fVPAOd7Mvi/cKFmnxufjFbALnh9hsRuG8+Y/SagUcBkcGrf3rolOr93LLPqm9tp
         pp05aREpkqLpKQeJxQtGDrmnKhh6e6aXecO+Sen4eEkB1FipHHh5yPh7MFW8XOGiXXXJ
         gUr/PLc17HOOKgUPA8fH7tZF5m2vkEkTVMFE0LPqE+kRP6y4sM2iL9yoBcnwXMiUYlp/
         3FGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=BieIdAwafFiBedyKngZoKrGOyGN/IKMQXJ5gKFI72Ss=;
        b=D4pGrVCJYICfOB7jRbXR98hqcfRAz7R5Sk/elSJwt8bWxmY4Ns6xjHNRCAtCPhmMmR
         6DX9wPuoQlNI66B+dhrckCJVPTqA/Fy5W220UEaEVgk2Nnr1nvrkYu24/JPyJvfAlFZH
         dN9dQMwQG7OwOak3nSzqZ12u4YjT2mFkw4qC/9GmQYIHMYNI3otVR5CDvevjVRRJnbTe
         D98iJ+f/ynTr94FDaNDzZvA+5AYyn0f/9/xrPN+NJ46AISxTjwWz1Mx3SGKhHultHiCp
         RkITX5xu5+dUex0UzY/lpKo29ztIHfHrP8bZxca8LGPc0PIDiOMg4UFtmpZfXUSa0ic9
         2lNg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmx.net header.s=badeba3b8450 header.b=UuggZ2gS;
       spf=pass (google.com: domain of j.neuschaefer@gmx.net designates 212.227.17.21 as permitted sender) smtp.mailfrom=j.neuschaefer@gmx.net;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmx.net
Received: from mout.gmx.net (mout.gmx.net. [212.227.17.21])
        by gmr-mx.google.com with ESMTPS id j15si752859lfk.12.2021.01.17.16.43.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 17 Jan 2021 16:43:43 -0800 (PST)
Received-SPF: pass (google.com: domain of j.neuschaefer@gmx.net designates 212.227.17.21 as permitted sender) client-ip=212.227.17.21;
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from longitude ([37.201.215.209]) by mail.gmx.com (mrgmx104
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MA7GM-1lCsPx42DS-00Bd1n; Mon, 18
 Jan 2021 01:43:40 +0100
Date: Mon, 18 Jan 2021 01:43:38 +0100
From: Jonathan =?utf-8?Q?Neusch=C3=A4fer?= <j.neuschaefer@gmx.net>
To: kernel test robot <lkp@intel.com>
Cc: Jonathan =?utf-8?Q?Neusch=C3=A4fer?= <j.neuschaefer@gmx.net>,
	linux-kernel@vger.kernel.org, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com,
	Lee Jones <lee.jones@linaro.org>, Rob Herring <robh+dt@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
	Alessandro Zummo <a.zummo@towertech.it>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>
Subject: Re: [PATCH v8 3/7] mfd: Add base driver for Netronix embedded
 controller
Message-ID: <YATZuivr8CzHI5X2@latitude>
References: <20210116194826.3866540-4-j.neuschaefer@gmx.net>
 <202101170941.YsXQPP40-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="O7p+jIe6VGt9TJs9"
Content-Disposition: inline
In-Reply-To: <202101170941.YsXQPP40-lkp@intel.com>
X-Provags-ID: V03:K1:vilrVV2DrTSMuMU4gCV0RxBMwhE9ZRDHqGeX8r5tIgBr72m7gTu
 smZENaWlbVxMkD26Wrcxqj3PKal23mw05wgSvkJBRA1EQRtHNSzQOjfplX80/5BBqnSW1Dk
 Sre+gNEKF9I5D9/QOxQN5vC5lu/x3Q4KdGTLvkhG009bwsKlLLD7L8bBajEGjcfAZvNBvzA
 AtP0MCNggJdmhL5IlOIaQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:HS8mgoXnaBo=:F8okTTyjBAuWVerAgaEBMa
 4GYXoXTAE+ra41Y1iYfOicJthAojKAZ29UuKjIg8Mjol54IEf0T1ddESdve+u9ui9lJJhbZcR
 reY17eA7gy+AaaiNq07E7Ese5sCF7TOitWMLG80x0X3AZ4MkIZ9eYOYx4BRXEAgT+Fl/qUuRH
 opyZSIGJtoCaGr+RsKbecThDvjnzB+qYmvETWqQ8IJEk7lrMvMONvSeV8/uKTZsHsuyJHxQGB
 2QQ8VxIGfS86rNE+G7u0Z3n+zyWlroRmj4c+EaO9l3p99/1uASIuMUMCdiKWne8zabf6IE8H3
 +soCLiVMYw7vzhO0at208r0prrCcCMSIoC3OCj1dEPZ7H1QF0dO1w0Hjn2ihJdGU2vni7eUsj
 hNKSNPDVqifApH7bTP/5+2RVuoc8UyMfq/lL2Zs57aUzgnJj1TI4gPd9KlxsJGlgJTe44W2j+
 tSuH4tv/Xu+0wZzkrX9UqX6kH/VBO4CzD7mIUoMj9DKAtumak9XjrQZBtS0a8CeurxqpEt9nQ
 /ZAdDSJmXFBneXAvaDB6WcOkHaJ5oVOlSVMw9lW6S3E4UW7MPRWFe496S1HJBHmYJjN4I9Blz
 TL1yLtFE9IUJ7YaEJK9/+sLvyKJtHhbBRwWJBeW7lsn0y8vI1RfaADHYFp86JDM4DHezbtrvD
 W9IDx2Pf8lCJ1lm5frpypr/sZYZ/o1wSkRJcZfXKpMGeoAD7Eyx8Xh9riRFMT1cAAvRzrBPGT
 co3dzk/Twa6Knt8mVNi9e95yb/sA2OjTvTBYz34MeXrsszP294S5kU0QMgZOquJbdKCiisiDe
 e9IeJM6Vh0QL2hAJxBPr/QXHvi/EIUEtt5+X6qKx6Xaj3hF9973caEawLdVgZC3YQKjvvN6hA
 3FnYnw3fVDANASXW/7ug==
X-Original-Sender: j.neuschaefer@gmx.net
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmx.net header.s=badeba3b8450 header.b=UuggZ2gS;       spf=pass
 (google.com: domain of j.neuschaefer@gmx.net designates 212.227.17.21 as
 permitted sender) smtp.mailfrom=j.neuschaefer@gmx.net;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=gmx.net
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


--O7p+jIe6VGt9TJs9
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Jan 17, 2021 at 09:22:01AM +0800, kernel test robot wrote:
[...]
> >> drivers/mfd/ntxec.c:127:10: warning: variable 'res' is uninitialized w=
hen used here [-Wuninitialized]
>                    return res;
>                           ^~~
>    drivers/mfd/ntxec.c:116:9: note: initialize the variable 'res' to sile=
nce this warning
>            int res;
>                   ^
>                    =3D 0
>    1 warning generated.
[...]
>    124		ec->regmap =3D devm_regmap_init_i2c(client, &regmap_config);
>    125		if (IS_ERR(ec->regmap)) {
>    126			dev_err(ec->dev, "Failed to set up regmap for device\n");
>  > 127			return res;
>    128		}

Ah well, that's a bug (present since v2 of the patchset). The return
statement should be:

	return PTR_ERR(ec->regmap);


Thanks,
Jonathan Neusch=C3=A4fer

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/YATZuivr8CzHI5X2%40latitude.

--O7p+jIe6VGt9TJs9
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEvHAHGBBjQPVy+qvDCDBEmo7zX9sFAmAE2aEACgkQCDBEmo7z
X9tqRA/+PqlL45s54xWqOzK8lVtozSM3i1ziUswKwZhNr6vvXJbu8BM3gzZclobB
Pt0ek354ANgy27t8oxqxmZP4p6szJ86TzBq1fjxIA5vEEgGfYtM+fgNYGpqJ2kVz
Fixbr7ArXPWMJdINlCB6Bfgu3SU8h+J1ZQTRxX6hwt/+/Y+fGe5vprsLAUWzu599
Ya3BGXb4oHn/bVkuA5DxHGBi1jqXGvH05KnZts10nRqUuLHRIXu/ly4qY6/3FIWH
d/Nwk2l0HNuSjyzjgBTrpkQ4m4O/cPYC19iXIjuZE7JDRbPxLHzCjkNTj8ro1Or2
6U4VekxlBBiXGB71sdGx24loeHRsj8ti5GV9G6gpzl+dCcB6XNnX+cJ3oBtLsILJ
tB0zGhSajykfBlrQRGVgwabqpq4RePeTaWApACmXIAX5ZKnGqAkOk/dYPZsqdovf
MGHTs0ZAVoMVLu2PXYSYa//9u3D2RBSwJ6N0pImy63LShJHtWKZFeOkdeD/Pp3if
HhIp1NlaZpHc4mjJAMBFb3Uc4eYbZ4o2c7s/JNaWlnmI9JIa0IwnZyvJjZzCv/Ap
MSdh0+8812Vjwxj7VEuQffrPr5TOlYyDsAXcD8G5OHhYES0HeiA6PEOLwmkAzwQq
JddKIQNyhoWbWXFqbT7U6cA7q3i1pAVrk4EFk74S1SNaWLPLWSQ=
=c3CB
-----END PGP SIGNATURE-----

--O7p+jIe6VGt9TJs9--
