Return-Path: <clang-built-linux+bncBDU7VC56WAFBBSOWVOCAMGQE4MOTMOQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33d.google.com (mail-wm1-x33d.google.com [IPv6:2a00:1450:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id C2C7A36EEC6
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Apr 2021 19:22:17 +0200 (CEST)
Received: by mail-wm1-x33d.google.com with SMTP id u126-20020a1c60840000b029013f6df1cd5bsf1744661wmb.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Apr 2021 10:22:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619716937; cv=pass;
        d=google.com; s=arc-20160816;
        b=uBKmaBn1exdhCj4qQZFb+BN1+0EhPQ8xD4x6YXx/zcUhm6PEqinZjRxWm6y9M3XM0w
         uRRpPbr75g6y7kq2KrgsQujWzjl6LVHZIHpPZ7LjU+/ozd8HOXYW/G+rZnHJb09T/Rsr
         Rdib53hJGbVAQAkksOv/izbrEL9G0iR3x5e8OcOdd+4Sjun2vGQcZgnrml1hg+v4h2Eg
         HWQ0fI7ZvUBx+NlhqhgOe/L0MI70Rx2QAUxYhcw8oMsz1Y2fPyUR38lcIgZ3Qh7d+ROd
         qqFSTPVrC+RBwWl8VQQL8anuaiUTTs7IrmeQsvfUO7Y+oFrxXIe9MWijeMHVJOaFEh4O
         SU4g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=kNGDnpUFwT78YG76RdTDiQ7NqYx8eifXLQrhugQ5IpA=;
        b=m8pYhdC8qV+wnKlysTzzkHL2HC0sJzmechyxSIuA0jruwSMkqtbRRyUear2fT/RynO
         3xHENCe7rL+YM5PDRAY05tKUItlXxFI2+FVueIa2VG9oo/Tz0G1qjwF3VndynxJoGGUy
         Qyf6KmRlbW3limiR6FM7Fcy3P2b+0JTjL43Qk7CZMwoNJvKrb9i2mKSlJ6GSWQoASRDx
         y5dziBDSXUNCO7OfLKy1y7bKoJPezyJYf18Xh6QP6v7sp7tlQ/qSbuTPAXlWUFI2GFri
         MT+H80UIGmY1abFBGwqs+kva76FeRHK1vM43AdrdPlRP2brcKRVEqonHyxYb39LaE8Bp
         vBng==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of m@bues.ch designates 2a01:138:9005::1:4 as permitted sender) smtp.mailfrom=m@bues.ch
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kNGDnpUFwT78YG76RdTDiQ7NqYx8eifXLQrhugQ5IpA=;
        b=PsBSYHaWHt5yVX9+mfuEhG02uJ3ivbyJ2eugG296CWNQGHUnT8xCbAqfnAx3gZS4VK
         TeH68kHjbEsf+we6qNSLN+gAPV1w+qFThQTiMUQfBU0YGmHZbzoHqMwr7DevP3T+3YQP
         2l+qObXPMDG8cLCB5m0Qz2jvfYqKmAJujiwFAauo6RKBXurUFXWCzRqF58N4dYYvZr9S
         rpnLF3Ey9N4gd/vRmqJfqi6FX5F7G+iqibeKXpwm0yrXx9ZGpgtqf8qAOIGZ1RN6Vzcn
         i4mQVyqEFLpuOZddSXFYoFaxZSsGfCUaL1uVCgfnFi7ULtJfOOHfJVklT1w50/11G1Is
         1r8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kNGDnpUFwT78YG76RdTDiQ7NqYx8eifXLQrhugQ5IpA=;
        b=uXcSziuQVwmJm/hzbrY++Eas9Yn2bH4q10tjTqFiy/aGssY1jBGdUOTNG/DQb3+Uia
         xSC0phpt1ejlKGXp9l222KKZXCOZAFUjwEqdHyQR3FMMLmzXHFpqrfKvHEI3IUgMVTh/
         aV/s7RNiUb/UJg/0JqhzCW2hu8J7AR/3WCc3qDZ6zAMSONbEn6+F1R6SGpcGZhPPqScA
         8MdhujMkZZRGQ7FB7kVABkcigiYhaRHO8bZkRv/V758/G3XGPv5zIgZ4HD/8EKggC6UA
         TIGVdNuJ0xztpMxsBptt9mexlPjbSmdqwyaC8tvZ8nXyTkGTgtSI1Xf1hbXY7ZpsJppS
         Eerw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5332/dRwIyeUebx9r1sLz7gmn/YJTeeFnJC7kZ7JpLnqxLkbA627
	MCrhkMTT9zQlpcKD5nOUD34=
X-Google-Smtp-Source: ABdhPJzahXQiAxjIFvYnE9NYCqFAcdJW+CIzu86bB9yl3h5FoppWACyqnP4dMN8GW+UNA2UMnXGbuw==
X-Received: by 2002:a05:6000:1ac5:: with SMTP id i5mr973304wry.412.1619716937450;
        Thu, 29 Apr 2021 10:22:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:64c2:: with SMTP id y185ls4829728wmb.2.canary-gmail;
 Thu, 29 Apr 2021 10:22:16 -0700 (PDT)
X-Received: by 2002:a05:600c:d5:: with SMTP id u21mr1237996wmm.153.1619716936470;
        Thu, 29 Apr 2021 10:22:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619716936; cv=none;
        d=google.com; s=arc-20160816;
        b=aVjXLf/u1dVEsMsbg2ygXWqsiCwtbEOT2XZLjtw+V9y9pajysYzJOjRcv+WfQibKTI
         Bpar10/to9KKg0VP5mp26NYZ+6YtRT1LhjN2bT1VfdOEtayqJc+508Kf70HV0w5w7zzC
         t9+SvYPOYBiAXuuQz+OEATqw/tRXW/N6XeDWy/vrYw98u0Qiw+zS96r++V+r6lH7Khqe
         b6yBNRMH9nghNMsRfc5rc5ZtspCeg7vcVwl4wL0BJKD1GWoNIuA7/Fqh9GqHb9+PYyy/
         pkFl0mMUhYZ1TnRdMR87i5RofVGEUqK1R7dA3kvGAKLntub6kV9yA2QITufA8JvXZsiZ
         fV1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:subject:cc:to:from
         :date;
        bh=sjZxsD1l6jQxftDJ3H5fNeXm7eD7ozeZKUqvOnqQRXE=;
        b=EuI0shPOX9ACfAS57ERQzCMr44U9qsu5CHdJD4ghW9Y/wRFFIHy40/o17BDcaQgIpK
         LkcTc7rPmXJWvbjbcp5fM5q7IQUJuBOdrwKvZVIKDwJWjvlFLcACpYWTiArGimbzeQw6
         L0soA8y+MrA0LjL56ttQCowcSkXewNvHd+oTwR4mEVciPtZ7V8/Hel2vzpoK/yM7Jogo
         pggaRWU1eoFg7tLydnQrFV1bpdGVbATtHWmz/JJOPSYNWql45lQ/k4ddldBu21tjhhb9
         em8KGLZM2oXkO46aAk1aQCOcBqZMmDaCGEOWLuEVVq2DAPsMtZpA59q9gtWNyepSGzxC
         EjWQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of m@bues.ch designates 2a01:138:9005::1:4 as permitted sender) smtp.mailfrom=m@bues.ch
Received: from bues.ch (bues.ch. [2a01:138:9005::1:4])
        by gmr-mx.google.com with ESMTPS id y16si215199wrh.3.2021.04.29.10.22.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Apr 2021 10:22:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of m@bues.ch designates 2a01:138:9005::1:4 as permitted sender) client-ip=2a01:138:9005::1:4;
Received: by bues.ch with esmtpsa (Exim 4.92)
	(envelope-from <m@bues.ch>)
	id 1lcAMU-0001MZ-Jx; Thu, 29 Apr 2021 19:22:02 +0200
Date: Thu, 29 Apr 2021 19:21:22 +0200
From: Michael =?UTF-8?B?QsO8c2No?= <m@bues.ch>
To: Yang Li <yang.lee@linux.alibaba.com>
Cc: nathan@kernel.org, ndesaulniers@google.com,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com
Subject: Re: [PATCH] ssb: Remove redundant assignment to err
Message-ID: <20210429192122.56acf711@wiggum>
In-Reply-To: <1619693230-108804-1-git-send-email-yang.lee@linux.alibaba.com>
References: <1619693230-108804-1-git-send-email-yang.lee@linux.alibaba.com>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="Sig_/2V4K/B7ucivuZf+W3L2fsGM";
 protocol="application/pgp-signature"; micalg=pgp-sha512
X-Original-Sender: m@bues.ch
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of m@bues.ch designates 2a01:138:9005::1:4 as permitted
 sender) smtp.mailfrom=m@bues.ch
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

--Sig_/2V4K/B7ucivuZf+W3L2fsGM
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 29 Apr 2021 18:47:10 +0800
Yang Li <yang.lee@linux.alibaba.com> wrote:

> Variable 'err' is set to zero but this value is never read as it is
> overwritten with a new value later on, hence it is a redundant
> assignment and can be removed.
>=20
> Clean up the following clang-analyzer warning:
>=20
> drivers/ssb/main.c:1306:3: warning: Value stored to 'err' is never read
> [clang-analyzer-deadcode.DeadStores]
> drivers/ssb/main.c:1312:3: warning: Value stored to 'err' is never read
> [clang-analyzer-deadcode.DeadStores]
>=20
> Reported-by: Abaci Robot <abaci@linux.alibaba.com>
> Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>
> ---
>  drivers/ssb/main.c | 2 --
>  1 file changed, 2 deletions(-)
>=20
> diff --git a/drivers/ssb/main.c b/drivers/ssb/main.c
> index 0a26984..ab23554 100644
> --- a/drivers/ssb/main.c
> +++ b/drivers/ssb/main.c
> @@ -1303,13 +1303,11 @@ static int __init ssb_modinit(void)
>  	if (err) {
>  		pr_err("Broadcom 43xx PCI-SSB-bridge initialization failed\n");
>  		/* don't fail SSB init because of this */
> -		err =3D 0;
>  	}
>  	err =3D ssb_host_pcmcia_init();
>  	if (err) {
>  		pr_err("PCMCIA host initialization failed\n");
>  		/* don't fail SSB init because of this */
> -		err =3D 0;
>  	}
>  	err =3D ssb_gige_init();
>  	if (err) {


The assignment is there just as a visual guide to tell the reader that
we ignore the error.
However, there's also a comment that says the same thing. Therefore:

Acked-by: Michael B=C3=BCsch <m@bues.ch>

--=20
Michael

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20210429192122.56acf711%40wiggum.

--Sig_/2V4K/B7ucivuZf+W3L2fsGM
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEihRzkKVZOnT2ipsS9TK+HZCNiw4FAmCK6xIACgkQ9TK+HZCN
iw4TsBAApcU9A/M/yPldF+nzyK7yf5LvDfQGGmvF+iX8QZLo80xZvVEW+MJjm0+o
jj4k1KuIzmb+c03FizX6CnbpKvcCYZ7D1UObt+OjBSlhPDer6SFsUHgVzaVI7TaS
Ryi8rlIU+K2PPIM713rc25+D7wK+XotMYMFlZobj75YBoJwYSiyPOYcWnWtCYp/Q
fFjyQQFlstZuvc0gZicPLrhi6bVynmQsm6eqItQMWJgEqWqLOpq/xCw9Ug6J/n33
b7H6QvAY+orrfl3Su92QWxmN6EVoeWbVWfD7sw0zcxYWW+3I9OoVP3A+2mFpuiLN
VoqPsw+R/KrPLSgfzff2i+CXwirYSDtNQSVHIu9FsbPfIoF2xEn3x0tJniqG8O1Y
sLOpYABMCOOVtZtd5QV+G05UKAwr2JFg/eaaPdbnUn8uiOIbLnSyn50PZOCUTljt
hDu9ptXZBmhkyJ47ypH3xsYz7Luc6ftHIwNr9VS0tC2J/el9ymvXFxSfZDDEKC9J
vtRya1cJWyRQzNpondBAHZaaHHnxT2cdV0pRIutoFgXXJC7Chwa/rsP6e45ARxEJ
NrNrpylFZmQ9saaD3Ax6cnYFzIRHr3wceGRpVRjicjbf3l6YkYK8/WUxzPCkSRBr
fa8iXCxpieyogCz/ODXZDWhH87NBUGS7Ix2/Icvvhi5AHXxvmyU=
=rOhK
-----END PGP SIGNATURE-----

--Sig_/2V4K/B7ucivuZf+W3L2fsGM--
