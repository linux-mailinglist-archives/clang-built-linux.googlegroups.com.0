Return-Path: <clang-built-linux+bncBDQ2L75W5QGBB24Z6T3QKGQESPJOBBQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3b.google.com (mail-qv1-xf3b.google.com [IPv6:2607:f8b0:4864:20::f3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 26A312115D1
	for <lists+clang-built-linux@lfdr.de>; Thu,  2 Jul 2020 00:23:41 +0200 (CEST)
Received: by mail-qv1-xf3b.google.com with SMTP id bk16sf17053921qvb.11
        for <lists+clang-built-linux@lfdr.de>; Wed, 01 Jul 2020 15:23:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593642219; cv=pass;
        d=google.com; s=arc-20160816;
        b=MDJioMMhVN7aGyRUz1bauirhST39om12hMra0pQED/YDiQlwcNJtAi5Cd1947jSkz0
         KX7fnJotQJSil6PVVRj98EWChUEj8Pvm+Rp0VcoXFSDrMnVXU919bl0gYTuh0I8pLVdh
         z634xqcNfuTu0wSe8kgaaP+RAwamLYQyRO5sCYzmAWzHXWyR+VhfG5VWStIlHHgys/cS
         dleKU/QAzWEg99/LI0OzOB36k2QlJI4y7DoaOJWyiWP2ZFpZiQf8ImkVgLI8+zJzHGf+
         cOZNvHdHPAhSv/wchqUSwh1uA3o+u1LL9d/N4IPNpguDbRE+JLJVepeK+Vvp5rSE3ms8
         EfBg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:subject:references
         :in-reply-to:cc:to:from:date:mime-version:sender:dkim-signature;
        bh=nJIcORTKLYng79ml586ySeYWpQwINusu1bll0UNruzo=;
        b=XMjTXxxi3CijyBoydidzSXJsM08LUGIIrfLuz/mhiKvJm1tNQdlSVH53TS24CHOG6P
         tL8gpcr9pA9ArtwRY/Zkvp2JUIP6VFVLgVXpSeqht2Rhzg9pcy8PB/jxdG8KkKIIntF6
         jGgXOzLZMv8T/KX80+AVWvgHKLg9KOGNAtruUBy7pLDrcIr5OYSQiHOgBjSCDMUNOWqw
         mIPPTKDbPlxod9+xbgH0he5X+P/FXLhlUcdmAE01qcmPvMk7LCE09+yejylP+eCm5gd8
         MRPlpqccqJm2JPqSASSEa8fcFSEYq5xzeir3AQ5tYXNfc6qwbSzYLuTjOZHK6p30fs6Z
         lcSg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=HXfv682n;
       spf=pass (google.com: domain of broonie@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=broonie@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:date:from:to:cc:in-reply-to:references:subject
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nJIcORTKLYng79ml586ySeYWpQwINusu1bll0UNruzo=;
        b=Y1fI/+UVyw3hS/TTVqS28SssBYa6SzTSQhtKDUtbg1nxYqofYO2jImji1CaB9Nt4zU
         1mb9jFb6FjGKzljnSIeF7uT7Xdh1m9cvA7JCrAjvIks6WO5xttqNnPYRM8uNfjKF06Jd
         3cdszRzf+PvGKpae99OAWzUXcLJNzMzoe9OhfNRa6tXTuCUH8v5rTGkNYpU/wYGYDf2l
         IEsyM94k6Eurg7L/tB5I5k0njMVsAUdwESBgGrA+oz+IYuWpAxdbr6IwC6XEEzgfuiO2
         KeCHgoyWJP0b99tzU36SbLzKGYWY/9OEsnMOyameanduXAbh+jd1/JPVVwew0eKM7CLN
         u+iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:date:from:to:cc:in-reply-to
         :references:subject:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nJIcORTKLYng79ml586ySeYWpQwINusu1bll0UNruzo=;
        b=lkHE/PjkOn6aIFWtD98UmLeXieE9cMhJaNYGB8ULiBwXDAH/8vYGSdQkBPUL4QrkH+
         MHA45j5qzmuMNi6TyoLEU52g9qItruGasCxUq3dIZDBVE/+xBh8GX4pjkJHQTxnc1fNM
         9xhIeAr9AxdsdGANj4slPCMBQF74b+/uFEtMZPmm5NK2X1eftzE+sd822kOgKdI66DuB
         HaQUnRYzn0TLKbbgLK8q5yQLRf98A/OQtsCFUXbTYlpgMYFARDw6xUcUniTakd5yq/M3
         fh+BHxm1Sh9tnHH/Yybm+CPe8bwqSLeHCKsTgZ+KSPVE4OmlllH+vj1vmZtsaKBYXzbe
         ixPw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5303fxEJm+0+xjfT82FoVH16LrCZdnKqX40/Tn+p23GzPfcqmS0I
	XU2w8dbTfb720hJTuFVIAQY=
X-Google-Smtp-Source: ABdhPJwmADGEZH868OT26xxvTE/dc9ksEDuoubPaY0kQY9gFQ4A1k/S+0OqV0QW3U2muq/O26eM9mQ==
X-Received: by 2002:ac8:7587:: with SMTP id s7mr28468691qtq.304.1593642219740;
        Wed, 01 Jul 2020 15:23:39 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:5c02:: with SMTP id q2ls1745079qkb.11.gmail; Wed, 01 Jul
 2020 15:23:39 -0700 (PDT)
X-Received: by 2002:a37:a5cc:: with SMTP id o195mr28115375qke.326.1593642219452;
        Wed, 01 Jul 2020 15:23:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593642219; cv=none;
        d=google.com; s=arc-20160816;
        b=C9N9Izf21C1ZsfkaqauzgDcZGfamIj5Gvz5aouVZU1G/zRckCoNAFmfnrvMXNguTe0
         zrtKR18b1cB+bVlc9OYoORfV0YyFsKblZQ5/jmku1xYobecSXPFPp5yUGBEpnlCwIAuO
         iCPx0l/ci0KGBoQYHU2f2apzyzgMGiHzmd/BRtDz9Oi6iHiaBwqtiapI5EzV3TANsPd3
         Dp6TFeaS5uaqVwHbZCQVWeKq24aPsJsX1l+pLTLfo0H0OC+9dCDCBHroz1fwLYU1VvZk
         6NMOirLjr3sq9HqTJ5nkzDNCWCKBjrntJyk5QWFu7pjSNoCyrRSG42bLqPzCnRoCFkGZ
         /NDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:subject:references:in-reply-to:cc:to:from:date
         :dkim-signature;
        bh=pDlViTl/NlA+/OGIhrBH+QWUwj1VyMurz6y2RClXF4w=;
        b=Wquy8eCBz/Uzxrl+qxASi0sQQQH5B1JNSk2o3d8Qk23RL8sSunTJ06SnTOgudPTS96
         cpyebTC4Dxh7VeymizSzBd6ZIeL0RFX25jHVN9Ene6fGs1Hav++BJJdiI0xCtajthGtu
         x3Zxf6ZItk304JsbNF3rVAOC9CzACJ+9TFUNmO0PvK/Gl+k649rRbJHc+acOdzL1Ue9V
         wo0osKXS8oRTG2oc9IepuHTTpEdRFm8r4bn22XgeoRGELd5ujuBuGbvZCbEJ9M5pOyVg
         qdWxJRN5zeJZGKGtoK9T0iu3Y1ytGzxkle4MvhBUuKGrgiCLKB77v4PJSbbiIkw6ji/N
         CzPA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=HXfv682n;
       spf=pass (google.com: domain of broonie@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=broonie@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id u17si400551qka.5.2020.07.01.15.23.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Jul 2020 15:23:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of broonie@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id DB3B0207E8;
	Wed,  1 Jul 2020 22:23:37 +0000 (UTC)
Date: Wed, 01 Jul 2020 23:23:36 +0100
From: Mark Brown <broonie@kernel.org>
To: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>, Jie Yang <yang.jie@linux.intel.com>, Nathan Chancellor <natechancellor@gmail.com>, Cezary Rojewski <cezary.rojewski@intel.com>, Liam Girdwood <liam.r.girdwood@linux.intel.com>
Cc: Sia Jee Heng <jee.heng.sia@intel.com>, linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com, alsa-devel@alsa-project.org
In-Reply-To: <20200617010232.23222-1-natechancellor@gmail.com>
References: <20200617010232.23222-1-natechancellor@gmail.com>
Subject: Re: [PATCH] ASoC: Intel: KeemBay: Fix header guard
Message-Id: <159364215574.10630.1671319730156602533.b4-ty@kernel.org>
X-Original-Sender: broonie@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=HXfv682n;       spf=pass
 (google.com: domain of broonie@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=broonie@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
Content-Type: text/plain; charset="UTF-8"
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

On Tue, 16 Jun 2020 18:02:32 -0700, Nathan Chancellor wrote:
> Clang warns:
> 
>  In file included from sound/soc/intel/keembay/kmb_platform.c:14:
>  sound/soc/intel/keembay/kmb_platform.h:9:9: warning: 'KMB_PLATFORM_H_'
>  is used as a header guard here, followed by #define of a different
>  macro [-Wheader-guard]
>  #ifndef KMB_PLATFORM_H_
>          ^~~~~~~~~~~~~~~
>  sound/soc/intel/keembay/kmb_platform.h:10:9: note: 'KMB_PLATFORMP_H_'
>  is defined here; did you mean 'KMB_PLATFORM_H_'?
>  #define KMB_PLATFORMP_H_
>          ^~~~~~~~~~~~~~~~
>          KMB_PLATFORM_H_
>  1 warning generated.
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/1] ASoC: Intel: KeemBay: Fix header guard
      commit: 9a7794bd4a28e274f9f247f1ea230f2f0f1077a2

All being well this means that it will be integrated into the linux-next
tree (usually sometime in the next 24 hours) and sent to Linus during
the next merge window (or sooner if it is a bug fix), however if
problems are discovered then the patch may be dropped or reverted.

You may get further e-mails resulting from automated or manual testing
and review of the tree, please engage with people reporting problems and
send followup patches addressing any issues that are reported if needed.

If any updates are required or you are submitting further changes they
should be sent as incremental updates against current git, existing
patches will not be replaced.

Please add any relevant lists and maintainers to the CCs when replying
to this mail.

Thanks,
Mark

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/159364215574.10630.1671319730156602533.b4-ty%40kernel.org.
