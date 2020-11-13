Return-Path: <clang-built-linux+bncBDQ2L75W5QGBBYVGXP6QKGQEG3QHYQQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3a.google.com (mail-qv1-xf3a.google.com [IPv6:2607:f8b0:4864:20::f3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 970422B23F3
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 19:41:41 +0100 (CET)
Received: by mail-qv1-xf3a.google.com with SMTP id bn4sf6690799qvb.9
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 10:41:41 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605292900; cv=pass;
        d=google.com; s=arc-20160816;
        b=y0uJRBmKDfZCwWZnv9WR0MlfJEr06Xy8h9EkbZJ+OKRVwa+IOwo+9MBhrkKcw1pE7P
         uv+/gN0saNM7LeGwilkPuz8qWW7coYZ4JZsAy36+A/IVrGJ/CBWV4hIv93wY5Qajxs+J
         LQfPshilUq4Nso4bLI0w984mtfRT1IXeyrdB5u1H+9C0OZbtpPnf9Wl+QIHVifEvBBxN
         AS7Qx+KG9dU/n7AE5AH213y5glvXspY/j0vpaZpbM9wHGpANmALGgNf6NjIP7+kvMBB9
         EoObTUKq4SKUbjpyzGEb+rGvORNGKYrbsrVnhp62VrG+SB3QIjbQ6j62iDd3lpL3iOFE
         qjWg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:subject
         :references:in-reply-to:cc:to:from:date:sender:dkim-signature;
        bh=lPb+CeR/Vmi30lxCh9GaVRFyLXOIASeo07nEY3g8l9k=;
        b=MIM9iJeqokFXklUZN55IqKNJ1FibBgw+At9cUKOkYwg4Gt+UiIWEgkXYhRHytFo8JW
         jhbrahUpCVEwOzUBmPB/ZPqxL9yJm4OF12Q8fiJcCM58VL+e5H496QSjJA8mT8YXcaL5
         RELu5+aSMimQrJDhLvSiJma8J0G7KSz0spDPyhdUQUfvHKWBTQKN+OEYI8quL5cqlhFl
         qqeio4JFsfMtXsqe7PEJq0KzFCDY+HBMMYq6NcoTNOKuKwwrjlJQh+9UaCCI4om2MKPp
         piOePvU6z9X7nQQImv21FzaqTB3OzTIc3J+YVNmmAYx1KpxuVvfxi+FuWYMmUgE/rSFI
         X1HQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=1zMoOHjD;
       spf=pass (google.com: domain of broonie@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=broonie@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:in-reply-to:references:subject:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lPb+CeR/Vmi30lxCh9GaVRFyLXOIASeo07nEY3g8l9k=;
        b=b4hiQrOiSZBhJUxsgcWLJcVTu1lwgzQyonu1127IKfqYFgYJ4Z+cS6gTYjPO2tkcaJ
         klVvhDYJ5WYbOIsFfVi58dRnBB8omVQ/6bH4YXod5r4tLpP1ac/91kNV4gxCjAE87VeA
         DtQpW14tIcR5ImRSOw2IW1u/z0QzCf5MMOgo5rqUHROXwbq1XCCIR9OWFTkPpfrRgNUo
         cZDhguAayQ/FI8IMXz/56+LavJM7OsGbgxzzZUIT3KWdZHUBmkq9meEoyvd8Z6U9ABWD
         hLUiIZGfvP2QornF/ryRqHfG/ZVyKHOihsCc4ijQfhvl3arDTT4lK3PdHBkHuaHK2Xji
         QqKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:in-reply-to:references
         :subject:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lPb+CeR/Vmi30lxCh9GaVRFyLXOIASeo07nEY3g8l9k=;
        b=dRPs26eaBDh+kcNhG1QzlktB/CwNcB8BsW0xEIFmyhtk+JRl6GQYwIqQv33xMxTCk5
         MW0VN0fdjUQ/b1JKS36k7gymAWpOkjJ4XY+axsvXkNCvcxnSlIscCchjUQfXXCT5Xl26
         UgSw93HxIjU9DVCsqiwj4Kx77xl+EOGc49nblEz2vQqBAPwWCqX4Ahzo0JnG2v3XtJ49
         XZdKTaXuHmkmM8evjwjc7DrEdpf24NYY8FSPHAVSu8tZLESgqZ4DsPOIoWtvtdWht/QU
         jUag/SvUmi4CKcW0jat+f4rsZhw46zlprVHVjcOc5kkvmoDjFJl/kuvdMGM6YAG5ZiZI
         JUaQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5335qvqNYWUFlCYBybe5tWGwbUy8XPKBUdJxU11vF50TslqOAeSB
	c2E8SUUldTcVWrHhVCURUUA=
X-Google-Smtp-Source: ABdhPJyyQC8pn+2egvXhFz1y2yx75gWoFdQbjTKN5xhZxkRQjTv3GBPzz2P3G2DhXBUZtX9/sYaNNw==
X-Received: by 2002:ac8:3607:: with SMTP id m7mr3286420qtb.361.1605292898378;
        Fri, 13 Nov 2020 10:41:38 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:24f9:: with SMTP id t54ls2508618qtt.0.gmail; Fri, 13 Nov
 2020 10:41:38 -0800 (PST)
X-Received: by 2002:ac8:4a01:: with SMTP id x1mr3292086qtq.276.1605292897960;
        Fri, 13 Nov 2020 10:41:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605292897; cv=none;
        d=google.com; s=arc-20160816;
        b=mZQR/AGBjgHzBYig3tmEasIackEyBFKrf07OajhlgnLJ39/kNMIHnCO9ttvtwgqAK1
         d51icvAamdUeLvHjNkaOaemIHoHsEzz9Q8M7BtnSnHyrtYTMN33SLNCusz1Cywu9wQmV
         GdURvYAJRrRXbjojri2c9CbeBkAvM5lDChhf6ESw+WMKfCn/ZkcTvUSN82ZqF2cJE0uJ
         kuddAfQHsVU7I3D9mhEbEiRGGQblUMFuEYv2SIaymRUrAMb8VkMp6WKWiKQybZTfYlaT
         0GSNiKIJtSUeDvaWzaFj25sFPc7Zvm+ByrhYzLmbaiBkBeGMbLso0CvT/3Z4zeBuCydF
         2vrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:subject
         :references:in-reply-to:cc:to:from:date:dkim-signature;
        bh=LUl2g7Ikg1zSu2jcJMw9Ih/6gWm5UrRhk12g0kBBGsU=;
        b=HlGUGa3uih5o9VZI7Zk4xXbl0E1Pt7WsAdeQERU+2jRio5RgavfG8phUXPzARM7zDR
         WGx/MuhAwAw+pVwIOhgTCPj580JvDQqLTbwMfKeQvqDFxIjzpLIcZXCDKbazzMtBvKPe
         5rhIwjFf9ig0VGDVZZC9TAqsbf7HT+vA30w3/N+SFS0K+65OVyc7rH2QkpwAawMAfML6
         xYNer9R9fHmgWA2kEkFdXpsCJdPdUZAJH+bGPIcwe6e6Cc0RRp6ayIJ6Nr3mUdiKkBx1
         zmKlIT82+Blc85M1MCrl4DGWKuRyhktqub5zsKneinaOQLV3RygLnQAwIF+UXClOT7GL
         BDgQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=1zMoOHjD;
       spf=pass (google.com: domain of broonie@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=broonie@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x21si466727qtx.1.2020.11.13.10.41.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Nov 2020 10:41:37 -0800 (PST)
Received-SPF: pass (google.com: domain of broonie@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 3BB4C206FB;
	Fri, 13 Nov 2020 18:41:36 +0000 (UTC)
Date: Fri, 13 Nov 2020 18:41:20 +0000
From: Mark Brown <broonie@kernel.org>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, Lukas Wunner <lukas@wunner.de>, Vladimir Oltean <olteanv@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>, Florian Fainelli <f.fainelli@gmail.com>, clang-built-linux@googlegroups.com, Nick Desaulniers <ndesaulniers@google.com>, linux-spi@vger.kernel.org, linux-kernel@vger.kernel.org
In-Reply-To: <20201113180701.455541-1-natechancellor@gmail.com>
References: <20201113180701.455541-1-natechancellor@gmail.com>
Subject: Re: [PATCH] spi: bcm2835aux: Restore err assignment in bcm2835aux_spi_probe
Message-Id: <160529288073.31285.16420803496217581116.b4-ty@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: broonie@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=1zMoOHjD;       spf=pass
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

On Fri, 13 Nov 2020 11:07:02 -0700, Nathan Chancellor wrote:
> Clang warns:
> 
> drivers/spi/spi-bcm2835aux.c:532:50: warning: variable 'err' is
> uninitialized when used here [-Wuninitialized]
>                 dev_err(&pdev->dev, "could not get clk: %d\n", err);
>                                                                ^~~
> ./include/linux/dev_printk.h:112:32: note: expanded from macro 'dev_err'
>         _dev_err(dev, dev_fmt(fmt), ##__VA_ARGS__)
>                                       ^~~~~~~~~~~
> drivers/spi/spi-bcm2835aux.c:495:9: note: initialize the variable 'err'
> to silence this warning
>         int err;
>                ^
>                 = 0
> 1 warning generated.
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-next

Thanks!

[1/1] spi: bcm2835aux: Restore err assignment in bcm2835aux_spi_probe
      commit: d853b3406903a7dc5b14eb5bada3e8cd677f66a2

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/160529288073.31285.16420803496217581116.b4-ty%40kernel.org.
