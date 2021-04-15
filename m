Return-Path: <clang-built-linux+bncBDTKFPPJUEHRBUWA4GBQMGQE3FA23TY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x140.google.com (mail-lf1-x140.google.com [IPv6:2a00:1450:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id 48F8C360F58
	for <lists+clang-built-linux@lfdr.de>; Thu, 15 Apr 2021 17:48:35 +0200 (CEST)
Received: by mail-lf1-x140.google.com with SMTP id q24-20020a0565122118b02901ae16b0713asf2767841lfr.16
        for <lists+clang-built-linux@lfdr.de>; Thu, 15 Apr 2021 08:48:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618501714; cv=pass;
        d=google.com; s=arc-20160816;
        b=GA9tgJJX83nRv0asmJKA1kxLIlVmuJyi6wtL0leSA/c69LfIlG+9M4q6qzfuUZeWwf
         K4wO520PNQm4q2SvmpA72hXS4CEVfEjbcVN4kIaiAve4YhiYes/BJoZnWwxKrPggGgaM
         DCLyVZfx+uexfXpjR7fjYKII3BOGTYrX1ednayZSz4mP7PJNA/7t3wz6IBhndFqdEqd2
         ncj40bORjAhKP9JibvD8wVgHPug2VluaLDpjh9OAZNuikLvsp2T9hvkl6KPU0P2vfmIZ
         zY65lniwcQETZabkpnVh8BWjQclfr1XL1hV8Udxj5KNZ48LpuzjIMV0XGE84LSKO7Kf4
         eGYA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=DbWBHD0MfpHNB9TE5vf6nMAU9Bz3zxxarep541d8BRk=;
        b=eR2o0OlcSiUO7AuRqYOrgId9BwyhQS82YF+oRQ8eOFRfkmA0zUY46+NLFQEd8Ao1Tb
         wJK7nrWhs3PT8+/gOnMTvK0EUzyxFr4kICM4DdVBibNXhq48c0CNqx4bbSG5r7L5tC/N
         hrE06yS41YBmECjf4gKSTg2aPMLccxSUt1nBNdsPZOs0uCmVbcQOMj02Anb5/Pcd1uGC
         xoUhHG/fBbPcOaDFoL/rBbpfeu2hhgQD2Fo/K6QiefqV0mV++wMPoEASgT0Eg5DM9yZp
         GZ548OODJOOAChMILdMgA2K88q59jM6gbFepBc3sp9XZgKjdVgIXI2+sO479Q2ofPdfA
         8nfA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bTVqVIni;
       spf=pass (google.com: domain of thierry.reding@gmail.com designates 2a00:1450:4864:20::62b as permitted sender) smtp.mailfrom=thierry.reding@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=DbWBHD0MfpHNB9TE5vf6nMAU9Bz3zxxarep541d8BRk=;
        b=RnQ3PbmNGbWAOXwbvfjAxFX08CbmcOFVjJHekpaHMFCa6j/NhzLh8/wxdtsOoxWRdp
         8xZK0Mu/vvkL/L9qwHoSD0gsHTwdoCMQR/RtUJJCYGVLlbycmBTJjkO90BTGv07/8DHx
         NqUMxon+RUAr9qQfn3ByKQsBJIQG6+4kl6zLHG0URSHKOivVFkCtVNC2sW2vQEhlzorT
         QDX8vaU44gcgc26jDvDY6m6DjMA5qV9wPF27aVLRnR3GVI+KUU6P7iD6xeoigHdKYDey
         qWk45e8Ebxjvj6s4pRMXmFWojNvWavsJEvGcFIpxBL/4HOB3VyXjs9hD2w/7yay4BrMD
         0Oag==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=DbWBHD0MfpHNB9TE5vf6nMAU9Bz3zxxarep541d8BRk=;
        b=u8XjnZJnu7FGTtuHZSPl9zerLR4CyQWL3xPYeRaMuBY728on8Qt+w0oHxygfHKYaJ7
         1++Y2Ry/g0nteA53Pempph91OmCSbftYSQUfAaPfKCY1RTNJW8Dsw/+R4OdrKde7/R2G
         x2CipgaoVtLJZr2eUeNPDISXjwN3q8l/CR5exDDmnH/YewzDFV6LjokWjMacnWbPTHuR
         kdIIvY1nrmhMWoNiqsM6p5W519b04j7QPQ+0V4kJPxMxuloUUpPM7me4bmQU1vUe5wI8
         X8Wd1baAyYAtWS3qPhrCq64p+Ys0PWroWEGS9FRbbNgjXc4P8iDhv/LonfDSI72nUo/B
         xHMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=DbWBHD0MfpHNB9TE5vf6nMAU9Bz3zxxarep541d8BRk=;
        b=pkNYnmYqjMPl1gCW6V4rbnVZjH5tyb0r+aqxVekzuVD0YKYsVHTdgSQrXydwiVPkPW
         qTY/nGnG7oLaraECHKQ7TIqbRQ+GGwuSfzZfcQEpVvfs94i8OJ54fUVrOlqxevNAZ3An
         /rcIT5i5OV0swK6QaR46/C4tJg4tNebL0FOqNLEKmregzu/l/7jkiq+wou1tLs8Unq3P
         r0ZvHFEQqcXYZusAPSf9ScfjqhhiRiyBj5vpdZF++c/h+V9fO+3uiN0hPccOCPvoDrVn
         FVAfKHumADfFdFe8QY/FXh/LaiKJntuk/AufhxRAgMaCCmRr3VDfDUw17BttPZ4g1nmF
         Fo8g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530616hAZQUi/higA91oIBa78wyD+hD3xbR4OILeS1QEVj26oe21
	uyk4JW4IgqBZU9wXLKoAKa0=
X-Google-Smtp-Source: ABdhPJyRtWxTKi+PD6chAXaXDEh+t49crpJH3d5T1qAwiRn7MpDwwEwQYjSdII1MqsfbCkSV+pee9Q==
X-Received: by 2002:a05:6512:2182:: with SMTP id b2mr3211026lft.284.1618501714861;
        Thu, 15 Apr 2021 08:48:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:507:: with SMTP id o7ls1282477ljp.6.gmail; Thu, 15
 Apr 2021 08:48:33 -0700 (PDT)
X-Received: by 2002:a05:651c:2129:: with SMTP id a41mr2263233ljq.193.1618501713701;
        Thu, 15 Apr 2021 08:48:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618501713; cv=none;
        d=google.com; s=arc-20160816;
        b=BTzluqa8137P+b6grLUEWliMnfcIHMkPdIhgcNRwDbanG32wwKXgiEiBJyDVexz9oY
         9N02ORYtV9ta/7vBy0eEssvlL5aAYK2pZ1IwJ4OwV6pLYgiun+xPi1ewz8OImwmFObHk
         UCLw3+O8oJgLTpojdmDXuwfJ5UbBcoooEXKiHJ2Kwcnree3Ca6GLlMIWUO1tKuUTnEo9
         Y6H8TRKVqzXi+sdgqYk5/3GEDaTuvKD4TAEkBHMGlU+HPyN/itwaS7/egvHjDxcQgqdV
         ZckeT9i8VaZ/a4upw2uWWfHslP+21God98pG3BcbYB7U9ZjdUG9djEgaOE0ClzLcuRzJ
         UiUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=ayGURnHq7wmSKaDUrrltJ9EF5TW5D/i9Qzk+7xK9jcE=;
        b=Surwm3CuVI9J5fr6m1MBlBjiGkJPESJmBY48aomLfWdqblfCBnJwzNvH0cdpTmE+Zv
         i01ctNbzOAj7Bqx8bYe0iVYTX+gEgsz0DryY3fiaxqbOIATL34vmLrjFW9qXlWIO1MH7
         WHYU2H11/SLnSPOrfiFdar2ZRY2sosxIFpXNVqz0k8qfRKW1uzWQPCc58YCegUkb8j0A
         S8CpZr9PB9Pc9zEFY8F89YUDPDfGr/2FujkJnztV3tkyDxypDAixlk/FBv0fxtI1GImN
         xERQQkcJuP8epGning9DsPk9d+uuxizZ3/4UAnJQiM4BA5mbGM+4bgzgR3tex0k1qhmK
         uzww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bTVqVIni;
       spf=pass (google.com: domain of thierry.reding@gmail.com designates 2a00:1450:4864:20::62b as permitted sender) smtp.mailfrom=thierry.reding@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com. [2a00:1450:4864:20::62b])
        by gmr-mx.google.com with ESMTPS id u11si178553lfi.6.2021.04.15.08.48.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Apr 2021 08:48:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of thierry.reding@gmail.com designates 2a00:1450:4864:20::62b as permitted sender) client-ip=2a00:1450:4864:20::62b;
Received: by mail-ej1-x62b.google.com with SMTP id x12so16805338ejc.1
        for <clang-built-linux@googlegroups.com>; Thu, 15 Apr 2021 08:48:33 -0700 (PDT)
X-Received: by 2002:a17:906:c04a:: with SMTP id bm10mr4061202ejb.521.1618501713494;
        Thu, 15 Apr 2021 08:48:33 -0700 (PDT)
Received: from localhost ([62.96.65.119])
        by smtp.gmail.com with ESMTPSA id gn19sm2136640ejc.68.2021.04.15.08.48.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Apr 2021 08:48:32 -0700 (PDT)
Date: Thu, 15 Apr 2021 17:49:14 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Nathan Chancellor <nathan@kernel.org>
Cc: Jonathan Hunter <jonathanh@nvidia.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	dri-devel@lists.freedesktop.org, linux-tegra@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] drm/tegra: Fix shift overflow in
 tegra_shared_plane_atomic_update
Message-ID: <YHhgekKvL5te6K6n@orome.fritz.box>
References: <20210415152913.1363964-1-nathan@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="Ue6mK/lIz3sBypv6"
Content-Disposition: inline
In-Reply-To: <20210415152913.1363964-1-nathan@kernel.org>
User-Agent: Mutt/2.0.6 (98f8cb83) (2021-03-06)
X-Original-Sender: thierry.reding@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=bTVqVIni;       spf=pass
 (google.com: domain of thierry.reding@gmail.com designates
 2a00:1450:4864:20::62b as permitted sender) smtp.mailfrom=thierry.reding@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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


--Ue6mK/lIz3sBypv6
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

On Thu, Apr 15, 2021 at 08:29:14AM -0700, Nathan Chancellor wrote:
> Clang warns:
> 
> drivers/gpu/drm/tegra/hub.c:513:11: warning: shift count >= width of
> type [-Wshift-count-overflow]
>                 base |= BIT(39);
>                         ^~~~~~~
> 
> BIT is unsigned long, which is 32-bit on ARCH=arm, hence the overflow
> warning. Switch to BIT_ULL, which is 64-bit and will not overflow.
> 
> Fixes: 7b6f846785f4 ("drm/tegra: Support sector layout on Tegra194")
> Link: https://github.com/ClangBuiltLinux/linux/issues/1351
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>
> ---
>  drivers/gpu/drm/tegra/hub.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

This code never runs on 32-bit platforms, so another option would be to
not try and build this on 32-bit configurations either. But none of the
rest of the code is built conditionally, so fixing this is preferable.

Applied, thanks.

Thierry

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YHhgekKvL5te6K6n%40orome.fritz.box.

--Ue6mK/lIz3sBypv6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAmB4YHgACgkQ3SOs138+
s6H1eBAApx8g0dh+NPpyZQCcGFt3Hv+BaE/kZh7PJeSDp6ce2EYECbJZ0K92GclY
DrQwJx6ukiYTTNkJiq3cul1lpEgfnbTvG4VRH8mXDxAIOUmje2p0OTXr1yg30IUZ
QqfCS3RLXYXQyLGVlej1/1jhrFM65FQMRxVyHty0bF2j7LQ/C4OIiCjFCMvk+/ML
8HxLpmvH2R159bVxElAW/8B7eakxkwMD84h9/EjUX6EPKxZqEULQb2eMvNHvRCqm
dNjJPUGF5N78pbNSV4n4me3oN1TpB3W4Q0RKZXRksJKj0e/e5iw7LuaDh0DnHDCG
ulD0F7XY7esK4rU/4vBuemcO7u96+2wTTf6UM90UD8w2UTmABLmSBKZXvYUffjYM
fsdtpE2MfG82B2B3GeFgDefDS53bDOR3HMoh8CHP/0jgdxaDM67sk+hnjMgMSIjW
6qky2nOl6DuODDbH6zB2sjeddrg6z7TCMhkE3LueD/vJsO1smMzIuaRQ81NwUOAc
0onVjKmrWsv3NCDPDs3Xd1OtGxLHDqzy+PIco7rM/JuOD0sBSzMYpBXP0zzVf8I9
s+vm53QAuUAV9K9HICZomkkxrUA4ifZ8mpXsAOkH1C3n0g+R3KPMUgDO0mRZmTL7
/udq89CLU/trkJU+ZUkrthPkIYarB/XAx37LCILdunTeEZFivZQ=
=/+7x
-----END PGP SIGNATURE-----

--Ue6mK/lIz3sBypv6--
