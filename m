Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBKOA47VQKGQEAAQFTJQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23b.google.com (mail-lj1-x23b.google.com [IPv6:2a00:1450:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B27AB08A5
	for <lists+clang-built-linux@lfdr.de>; Thu, 12 Sep 2019 08:05:30 +0200 (CEST)
Received: by mail-lj1-x23b.google.com with SMTP id m81sf3588283lje.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 11 Sep 2019 23:05:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568268330; cv=pass;
        d=google.com; s=arc-20160816;
        b=sI/1GKRZqufYbDN8DJDZM2PyOYkf6dCYQjB4Zy7Ny4TbKgYECOGPMeaVu/V2dCf1WG
         2aVWEs9i0NvGUSURjNp8V4jxL6kQoXDYUmWoJxD/SEMbEX58IlRwEWMy6N0tRlO9n2JA
         QfVozHm3dtfU+DdZ+s5rTh09Ht3zTQiK3wE+jR+Vl8AjTBKpcibo3BDVaI2FvXyhLMM+
         O2paUeUYXThXmHTSmQS2yLQWaYtfpnOvS/OehIYKvAX25NF/SGU0P1vFMosYxv+H53Cx
         CnpJ61fM4/iPxF10zs8SNUndyg/TO52zz1Dfk1OkXNF8UkEC4LTMOM9j2vhOMK83DX6I
         FAtA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature
         :dkim-signature;
        bh=F3sp6aL1HV3TVqiI29YfwKC9nlSJTbIbvlL8OSg6yUs=;
        b=0xurs+kyauIry8DfJuxaXz7qjdNuMsR0jhymqz3O/JQrW7EHjQmLdQ+YT/KiJulKg5
         aPS4fmLkknRObdxp11wiOcRdd1yL7+rTDBDdtO5jNIrfJj0+5V55t7MJkzCafzC2vvFz
         yPaJadG1L8Cv/dXgrZMnf0bt/g3aYBja7fkrfl36iw+gmS19BLOdTLTlIjPGjDjkPE8K
         N/lMBulgx3hqPg8Y2zV/7SuhDXaAn75GsVDiLHfEJ1qvH6u/WysMj4eqHhekMLQC0pcv
         X1e2iM3Zu5UKQ7eVhreBjDdBDX2TnCplXCUUwVxL1jyB72xfBVqvlnPCHqMPVYyLXMpa
         vPLw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ts2budrd;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::329 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=F3sp6aL1HV3TVqiI29YfwKC9nlSJTbIbvlL8OSg6yUs=;
        b=Wey2S+bomPFyDxPobi3NOPiffXjegOWPuThSG6Ydxt7fr2rQRMF9AaEW/5EGTcJDYp
         OimqEynakSWiqogi+J6f5E5A6AmoveMiwGb8uHN3lUUoqpUOQlCq2ODacmcdsbSAVtRR
         Ah1/ZGbgGoJnlboBEFKiSagzylNzS0Rv73nHcpVo+CNRZvyaT02ohK3iPi4xpaDTZcxM
         zrK7bmf0HnfD39d1KgXw6WvZ8RfCvr2LjPn6WPPnoS+fVRgXLrbAQA0hU0Inz6NUWdx1
         nsw6gURwP02KU+tExksKmVbI5UUKws1Rr/fr4W+ecWa/5PlZr9sZbI97O5x9UnCLex2j
         uxhg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=F3sp6aL1HV3TVqiI29YfwKC9nlSJTbIbvlL8OSg6yUs=;
        b=IIoO1hJHEyrzMQ6xVTt71/FTQgVAhmYFjIS+/6GiUfTEevxFJdKoznblB1nLq1oUD2
         bysmzSD0BiI1cU/7pcyHCXcFlxkJEQZbTczbqbPDCKcsNcSLwmrtZQBily72fnb1mwyo
         V16oMOos6QT5C+7DjZANSDWl0Lhrq1Fz1/759aeKeTfZzkXJyviWlvZ585t2oeWPGYDI
         HhyBJEFIyNJ2ITFPTxKD6EOm3xp8FpV9ji1N8l5gYwsKmEuCyd8cnzYC+mpPsZNb+azg
         LQ0WJ8QZrqTay4qBbal64Z04ZLgHtInhbRzmu8K8v1dEG0+yMcctdK6nN6tO6zWdeNSh
         FSZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=F3sp6aL1HV3TVqiI29YfwKC9nlSJTbIbvlL8OSg6yUs=;
        b=pYBDt94ZziDkYv5DC57Zb69ivahXdQg8G2s3tBrPo2cm0W9NgZy7PzPlv0zbc7evv3
         goKUfuPMkfFpP9pYr0ae3M10Jb2OOpPbSnQc1MOvZtrE9wMZwqR7mNMQnXltjmJ1Qq7T
         E3FRnLRhzlr0MKaB3X6s84kG7gx6XiGDzaV/kO7OHD+avsylp/s29AIIzhIxvMn+ZQrw
         Pwhv+0FJ68c2sc8VYUuF+JhI+1C/zBRUWHMylOuN9Id+Hg8zXMIU1weE8vpaC0ed4VKg
         yolp4w6NDugiAAFzxd7ad8oKhWAxRioo22EPN0PQ5IVBLlnRzZOJxJNb+YNbmKjvjV6+
         woFQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVp9N8AiZhl21yZX5E5plLVGl3XG9G1h4+Tu8rOY5/pFex/KA2I
	Ri9P1wLLVJ9p5C6tzxVatd4=
X-Google-Smtp-Source: APXvYqwoPb4ZHvLh+w7WVFz3fcZ148kRiQpttH2CsCAqNHTLMn35ppHu/MbfWz/HO30c0tpwhtw3IQ==
X-Received: by 2002:ac2:5983:: with SMTP id w3mr8488851lfn.121.1568268329992;
        Wed, 11 Sep 2019 23:05:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:5965:: with SMTP id h5ls2371110lfp.1.gmail; Wed, 11 Sep
 2019 23:05:29 -0700 (PDT)
X-Received: by 2002:ac2:551d:: with SMTP id j29mr25781645lfk.7.1568268329503;
        Wed, 11 Sep 2019 23:05:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568268329; cv=none;
        d=google.com; s=arc-20160816;
        b=MifwqpjgG9PK3k+tU1kiyfNYe+bxr5ewb09fGyC42cSelz+Qg5IBCvFIrejYF7R9+D
         K1JBom9gCbY++256sZSo7FyMky1AZteuYV/46MGAmh17GR8VmHqMrjCy4w+uFcA4UPA8
         CHQ7llg7qTEcHjbW58yHDORjGw+7kVVr7zWxcNnU6Hxw2/6Ghu2pe3Cs9HFEFzAp0rzH
         q2pUa/vC2cInsdX6DKprE5ofnGRenuN9p3cEDRoEUxf0St7pNBtlc6+jRwR2LUnYGPsy
         MgAtHPvtX3YRpUl5tU2ihIIbG9Lvia/K2GBOVFTp6WTH6CsR2HKnHQGUM5zofIY5renP
         U2YA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=BvKLzQAoMaUNMydjoivLFXrXX11nUirGKIorPsh3ys0=;
        b=jErXt8Os0YvYbFi2qk/ErNSR4XakeJ6OYAT43GdWA1pba2SQRfY4RXW39VNkwRN2bW
         7ALDdUngk5TBlwx8UtRmWwADyEXeiwvLTVcO+ECJAQQ0U/67UjYkwZx/UNJO68avttCX
         a1N+AJPk+O11djI0BVztt84b4rXQuCFyDtaLZNZi7QGkxPigGx3SIvpYJu70iijU3bZu
         JGR4/bjgW0nddlfAytj4i4H1ICqkq8CY7AzZR4+SUIA1vmCKSUyJA7/GVQdpBgDVtclX
         15DKHPrD87untEV47JyeRqE25w1Pex+yuK8wU0nGD7BrYvtvC/yvMny/fhBwuQmxYv0I
         M6Yg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ts2budrd;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::329 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com. [2a00:1450:4864:20::329])
        by gmr-mx.google.com with ESMTPS id s8si805445ljm.3.2019.09.11.23.05.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Sep 2019 23:05:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::329 as permitted sender) client-ip=2a00:1450:4864:20::329;
Received: by mail-wm1-x329.google.com with SMTP id n10so6056574wmj.0
        for <clang-built-linux@googlegroups.com>; Wed, 11 Sep 2019 23:05:29 -0700 (PDT)
X-Received: by 2002:a1c:c104:: with SMTP id r4mr7289703wmf.64.1568268328765;
        Wed, 11 Sep 2019 23:05:28 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id q19sm32832481wra.89.2019.09.11.23.05.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Sep 2019 23:05:28 -0700 (PDT)
Date: Wed, 11 Sep 2019 23:05:26 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Matt Roper <matthew.d.roper@intel.com>,
	Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Cc: kbuild@01.org, Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kbuild test robot <lkp@intel.com>
Subject: Re: [drm-intel:drm-intel-next-queued 2/8]
 drivers/gpu/drm/i915/display/intel_cdclk.c:1173:38: warning: unused variable
 'glk_cdclk_table'
Message-ID: <20190912060526.GA103539@archlinux-threadripper>
References: <201909111626.acQ6jd1Y%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <201909111626.acQ6jd1Y%lkp@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Ts2budrd;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::329 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Wed, Sep 11, 2019 at 04:39:37PM +0800, kbuild test robot wrote:
> CC: kbuild-all@01.org
> CC: intel-gfx@lists.freedesktop.org
> CC: dri-devel@lists.freedesktop.org
> TO: Matt Roper <matthew.d.roper@intel.com>
> CC: "Ville Syrj=C3=A4l=C3=A4" <ville.syrjala@linux.intel.com>
>=20
> tree:   git://anongit.freedesktop.org/drm-intel drm-intel-next-queued
> head:   0c1279b58fc7de230d47bb0dc21b7a08417dee96
> commit: 736da8112fee663deed6efc53333c37dc0b04696 [2/8] drm/i915: Use lite=
ral representation of cdclk tables
> config: x86_64-rhel-7.6 (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb0=
6f77a08968c99a8172cbf2ccdd0f)
> reproduce:
>         git checkout 736da8112fee663deed6efc53333c37dc0b04696
>         # save the attached .config to linux build tree
>         make ARCH=3Dx86_64=20
>=20
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
>=20
> All warnings (new ones prefixed by >>):
>=20
> >> drivers/gpu/drm/i915/display/intel_cdclk.c:1173:38: warning: unused va=
riable 'glk_cdclk_table' [-Wunused-const-variable]
>    static const struct intel_cdclk_vals glk_cdclk_table[] =3D {
>                                         ^
>    1 warning generated.
>=20
> vim +/glk_cdclk_table +1173 drivers/gpu/drm/i915/display/intel_cdclk.c
>=20
>   1172=09
> > 1173	static const struct intel_cdclk_vals glk_cdclk_table[] =3D {
>   1174		{ .refclk =3D 19200, .cdclk =3D  79200, .divider =3D 8, .ratio =
=3D 33 },
>   1175		{ .refclk =3D 19200, .cdclk =3D 158400, .divider =3D 4, .ratio =
=3D 33 },
>   1176		{ .refclk =3D 19200, .cdclk =3D 316800, .divider =3D 2, .ratio =
=3D 33 },
>   1177		{}
>   1178	};
>   1179=09
>=20
> ---
> 0-DAY kernel test infrastructure                Open Source Technology Ce=
nter
> https://lists.01.org/pipermail/kbuild-all                   Intel Corpora=
tion

Hi Matt and Ville,

The 0day team has been doing clang builds for us to try and catch
warnings early and this came up. Looks like this table might not have
been hooked in properly? Please look into this when you get a chance!

Cheers,
Nathan

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20190912060526.GA103539%40archlinux-threadripper.
