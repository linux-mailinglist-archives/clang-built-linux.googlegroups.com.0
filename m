Return-Path: <clang-built-linux+bncBDQ2L75W5QGBBGHW6WAQMGQEYJO42DY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3e.google.com (mail-io1-xd3e.google.com [IPv6:2607:f8b0:4864:20::d3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AACB329542
	for <lists+clang-built-linux@lfdr.de>; Tue,  2 Mar 2021 00:39:06 +0100 (CET)
Received: by mail-io1-xd3e.google.com with SMTP id v5sf14586709ioq.19
        for <lists+clang-built-linux@lfdr.de>; Mon, 01 Mar 2021 15:39:06 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614641945; cv=pass;
        d=google.com; s=arc-20160816;
        b=qzJcaEixKN83YDZa04yOw57E3z4g01V61wc+Aju2AaGNkILxbr9D09B6GdNkVzPaM3
         SLNNELhMZMC8fX1614EOTsdSG6HtnoRtN97VV3A9YoExBdF0BbrCx4pX53hMsyU4aIdJ
         C0naDKWSC9hG/oNBxe6gQxIA62iC2wOb3eP8r56BJpCo9kUQWMU0vGesAwz4GO6tjb2p
         Jq9/k7smcZS82vmGnGiEmHptsZ2sTYfHkLYDasXMKFCkwJDeQlEMvXDyGAOtvRA16BWP
         zJEmTGqkAhRmqA+GGLUiWF7ieU42DLo6QQTbW78lhW5C4za2tBiuob8DYUj7Fj3X9EV/
         gkoA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:date:message-id
         :subject:references:in-reply-to:cc:to:from:sender:dkim-signature;
        bh=DNKtk/MxIbirJ3eZuCIE2TcYM1p6cptrIG6cejDWhog=;
        b=JGzueefe2PA1aeA60Fs8krM2qole2nyKHo02hxiiGbtHKCZS0bVILKVUhvY6c72yZ5
         q3M0G8c8ytv/vmy3kmMiKMz0Nl+nMakRVSQJnaGVNGRLy4nHcPxYxKRTbhuZIPad3G1l
         FG4VwId40vCckjLioJFywzk7v8zT1LIsH6Idb7iP75YTWqi+asPeNSuZMS49lH/ElpxV
         Z3k3EUbcewP5AwZSjo32eBrnVyh8nH7D2ljJw4HpUlp/2e3ShODAc9XNaBA9r6bkz1fp
         oNEr0pxLHfuTn1LZT97fKmihOu3XF0BxmSK462ShwPzMxBQKV2ouCDnHHbWEKou2ZiUq
         UX4g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="GcmFDVy/";
       spf=pass (google.com: domain of broonie@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=broonie@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:in-reply-to:references:subject:message-id:date
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DNKtk/MxIbirJ3eZuCIE2TcYM1p6cptrIG6cejDWhog=;
        b=BvqB1B5rY1XqnBU+Kvh3MmCYUN+6GEfHEZ/f2c0hzehLhhoHTHnyCxrRzSISEU6wbd
         owrZkOpzUkXPXfQnpC/rM0xmUruOs6h6b78JYWyLbU6VMrJCKVVfNCyQam1oB5gWcrMB
         0CNX3APZZydjJBAOgodN/GIeQYquZ+hhtYDLFJetoOU1gzM0E987v7ulDlIfk4JO/X0N
         0Wuvb1JRf8TWb+aLnGEHZvcZq0skM2Gt8pI6RwSSYf0igLRbzcYyjHwPAtJrlRSEm8DO
         4JRaS6EbqGUh1zkd0u67HQV+tKsT8ifj+3Ow0qOBND+pfwd5XwwnjZfOLrWGzxMvpltE
         UrbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:in-reply-to:references:subject
         :message-id:date:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DNKtk/MxIbirJ3eZuCIE2TcYM1p6cptrIG6cejDWhog=;
        b=CE7Nrijp+27xHGryys3AAjdOOeIYmrRh2+z3VzvQbBdRQjnT+2QIK2vHya7vD3v7bM
         x+YdteZn5I6UXDGwNsArkLs5kp3WesOoOHFcKLzQdTKZnF5QVfM9jjYj8gXEeDUybuen
         UXYAS+hrwak7jxqjROn7v21V4ktNRLZdqkRrtmPD6eqpI+GqSnVEkUb2mfOKqFCyy2/D
         Gm2F6llpg2GUOaRCan3DWBth1vha65dCymEm1YSwY3urgGZn7MIN2+2m8aBQ9Z4pPgIS
         T98dd+njBnqKcNI6pgoRNZ3S5Cdy1Oz6DvcsOFt6ct3MOeRudgvtjL0mEX6lluvkrfs1
         /VgA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531mXHbiKqelMszS70M7aFdqRAqv+4HVrirPVAlO8C+MutLwkrCL
	84/2WGJLhEHvES6SFi0IAbU=
X-Google-Smtp-Source: ABdhPJyAjg8E8eS9LtCsJ9jvaca1QAq1ea7BIjYFpOwhSNGLBsVXEC7t+59LkL4ehGe8Yc2mKnv7Vw==
X-Received: by 2002:a05:6e02:1c2c:: with SMTP id m12mr15934502ilh.173.1614641944858;
        Mon, 01 Mar 2021 15:39:04 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:c902:: with SMTP id t2ls431927jao.9.gmail; Mon, 01 Mar
 2021 15:39:04 -0800 (PST)
X-Received: by 2002:a05:6638:14c:: with SMTP id y12mr18138494jao.34.1614641944607;
        Mon, 01 Mar 2021 15:39:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614641944; cv=none;
        d=google.com; s=arc-20160816;
        b=CQCDudTCzv59AOuGbBn776R/dHIv2biyR6U7JZ1ifHVlmMWH1GFpuAK3hYZkaa+2Rn
         gY+k2z48oQpuvqTscH9knFqIyQl0KCXESyopxXiAaijdTW6Zu/fK//CRQoALcNqAux03
         CtJ9dSm9Uf3WNci04fFLmpuD5kH265H21JWStPPH1XE8BkH2FuP5ErUboOS0mFnce9rj
         TVPGydfyqZEb149z+4hkcsSk3dHoi2KVerQioLnUxaoee9CV1Szxa8+jQT7V0w/YnbeF
         8ZccimtOCYY6SgKmyFcdEGfAhYzPEiMRHOSlnThJbcvEoVsReDpwFP/kO763wyTeWrwm
         W49Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:dkim-signature;
        bh=7go7BDBdfHoy3RkBIKAnhwWox8cIJxY9bUTb5M+cucQ=;
        b=yHXB+F4JSv0IfIbFTFf99TRpTVALaFNDImoOjU107IzFCqipZ9SrRH4UvPq9818IvA
         Oyc1rnlZ9VD4DbFm29W7tnmSSO4fdHFdv2OKt1pwPNhAkwnssRrtcjbPJc55YsiJmAju
         nzFK7clyZXVlaBbVoYTFq/ospH3Ws5qhoK99StDR1T6EPKP4Bf4tT6uBJQC2FMeYhOnI
         uugEldlcHOOIVDCPUREcfk2w7wm2WqmVI/zW1WPRdisXISfjPmeVx+f0R/dT0hrTvHm/
         61Qmyd6yWZzmgZqqi1PTlaP0PUaaB3/jft24pVV/WLcd/3zMr6gfVeMFPq9/1eCD/zDw
         4I0w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="GcmFDVy/";
       spf=pass (google.com: domain of broonie@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=broonie@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id g10si1440610ioo.0.2021.03.01.15.39.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Mar 2021 15:39:04 -0800 (PST)
Received-SPF: pass (google.com: domain of broonie@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 498E460240;
	Mon,  1 Mar 2021 23:39:03 +0000 (UTC)
From: Mark Brown <broonie@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>, Arnd Bergmann <arnd@kernel.org>
Cc: linux-rockchip@lists.infradead.org, Pratyush Yadav <p.yadav@ti.com>, Jon Lin <jon.lin@rock-chips.com>, Nick Desaulniers <ndesaulniers@google.com>, Johan Jonker <jbx6244@gmail.com>, Nathan Chancellor <nathan@kernel.org>, Emil Renner Berthing <kernel@esmil.dk>, linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com, linux-spi@vger.kernel.org, linux-arm-kernel@lists.infradead.org, Arnd Bergmann <arnd@arndb.de>
In-Reply-To: <20210226140109.3477093-1-arnd@kernel.org>
References: <20210226140109.3477093-1-arnd@kernel.org>
Subject: Re: [PATCH] [v2] spi: rockchip: avoid objtool warning
Message-Id: <161464187231.31555.9991392584243139110.b4-ty@kernel.org>
Date: Mon, 01 Mar 2021 23:37:52 +0000
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: broonie@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="GcmFDVy/";       spf=pass
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

On Fri, 26 Feb 2021 15:00:48 +0100, Arnd Bergmann wrote:
> Building this file with clang leads to a an unreachable code path
> causing a warning from objtool:
> 
> drivers/spi/spi-rockchip.o: warning: objtool: rockchip_spi_transfer_one()+0x2e0: sibling call from callable instruction with modified stack frame
> 
> Change the unreachable() into an error return that can be
> handled if it ever happens, rather than silently crashing
> the kernel.

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-next

Thanks!

[1/1] spi: rockchip: avoid objtool warning
      commit: d86e880f7a7c5b64a650146a1353f98750863f21

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/161464187231.31555.9991392584243139110.b4-ty%40kernel.org.
