Return-Path: <clang-built-linux+bncBDQ2L75W5QGBBFUA5GCAMGQELC5XYAA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33d.google.com (mail-ot1-x33d.google.com [IPv6:2607:f8b0:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id 1564837A1E1
	for <lists+clang-built-linux@lfdr.de>; Tue, 11 May 2021 10:28:08 +0200 (CEST)
Received: by mail-ot1-x33d.google.com with SMTP id g93-20020a9d2de60000b02902e3d740ec6asf8029024otb.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 11 May 2021 01:28:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620721687; cv=pass;
        d=google.com; s=arc-20160816;
        b=FagcUvZL8kHWLVE37o9pwVzCn5ghcMIH85tFO6OV57+jktGRYpuFhLt7fDkU4wlEk/
         W6NMUhb0hY9Zv0P50Ur+fz5Wf9TR9PKNaL8Wrz2kKDW9Ci21SBG66ES6dbZ1fFUZoBk3
         fVsYUg9LIkqX5nYHC46oKEQwojcIqbUjGVqluiDyLK5C7EZb8ZQMMao8LyShczsH0z3S
         0V7qcsQfdww85wXFgyhB8yARisSTywId5NsIHYKC0dVW+5YVVXEtGnGJkmXHVAEpavM9
         tE/mQZuu/OKBm89QU/8Q2TEZMqW4LqX0ZWz0KdUcMpew817YUspeV5I7AzZD7oLWvFwX
         pMcA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=1fYnY0sfcekTdzjMsW7jKjChnDcgMb+tWNTBaCwTZSk=;
        b=sLSzw+2H7DHYp7BkYnv6N92dpGfKqZuKJqC6EEgXYakzayC0ZyxhkggUXiqkiPaYCW
         DoWKZ9AugJaRl0PoKXWijX1ybHPB5o3sMT82/e4ctJVvcBT1l6LRfoX1FKZDi+Npfwz5
         veHjph4yHYrelnVazd5g/jX/2bS5X+BKswB7Dl7NtVQdINgRq2/GWb4P8zF1jWUlov1i
         /qjnzarq6SCq2RbSKi+VOmwEeTVH2utSnQyhNqwdiAhJMOA9rPbWXWNNvAdBYJI1Uqd2
         G96Zxh0+tlI1HsQeMnlRJeuUx2TykV5QZWDXtGui1elMmNCP9OuPHwcxuJ9mRo4kdEqT
         FMzQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=svusHPzi;
       spf=pass (google.com: domain of broonie@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=broonie@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1fYnY0sfcekTdzjMsW7jKjChnDcgMb+tWNTBaCwTZSk=;
        b=VZfst6xvuezexG8oWRhcFNFlYy7YvcUj/flhPwLuhAUQTRerB/0gll23Yx667J/7wU
         ZRCOUeBbRtiU4ZXjVphcv+26kZ4nxnEx0OhN1ddO/2jzeJpbTM796A3EI2b/v4r43edM
         51Jm6uPFcda8vgAtMoLdCZ4yGaKi8y0K+3VNkpL/6DRotw+3hnLTZewmuPDlCSzY/yW3
         wU9skFdb9JtNVEkGbwXAMPbTuCadeNgMWSVLya8Kl6TIbdkh1EAPXDx7sr4o+eFm16qo
         3EWGnOJ30POkl+FzWjFhd2VrJk87SqEomhYVBPKsiz8kHQtnp1bED1+aezpz8aRqbE2J
         hFEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1fYnY0sfcekTdzjMsW7jKjChnDcgMb+tWNTBaCwTZSk=;
        b=LTKetl91Pc7nhxrqo20dxdF0hjMc2FWtTXzmvcCWqLEt3zvLOY7VWntPAqoumIxL+C
         yxwiSYtVTiMVzhtTK9cuC0zpSikCYg3Vvi+YSTNwinfqWtd3hdUQ6lJfDsufuItqsB4u
         xr0cNAdJM4ldaWZN6Vyq40mUw3b0WUPdZofAsoAkbnGuoLSEiyQV98R+tdTIFmC3mH+r
         lLJS2bD2iXXaejhxCt3hLbgACd0BPt/qY357d4fNzyraL8h3zj7dUenFyBmaK0+ro3i3
         zawSFSp263QDIoYmrl2ZVVc3X4pRvQ3FF8rVF73yyXGKDjZNAKnYb84PmeFGpuIolQLi
         iciw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5334YZZRUj6e7ZfQbR4fMrBf4Xu0e7yUd6wHaeIOQxo4d158ilA7
	w8vOhC4z76daAX/DXE79y3Y=
X-Google-Smtp-Source: ABdhPJyl1g2ae6ODCvoUI8Mv1KB8IrplVFsrd2fsd2jEx4Mc2QYz72aMJ0mHSdH8Mo3GoeYS2Aa5bQ==
X-Received: by 2002:a05:6808:4c6:: with SMTP id a6mr18468280oie.162.1620721686826;
        Tue, 11 May 2021 01:28:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:c711:: with SMTP id n17ls436784ooq.3.gmail; Tue, 11 May
 2021 01:28:06 -0700 (PDT)
X-Received: by 2002:a4a:e548:: with SMTP id s8mr22574578oot.63.1620721686475;
        Tue, 11 May 2021 01:28:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620721686; cv=none;
        d=google.com; s=arc-20160816;
        b=BSuSFSWk79R52WqM35gRsYVwRBc94/fMU4zclaUHffCy/3Mm6cpnhAzCxwP6EhbWwd
         Ebrm2F57M1J9V9n8Svv2YQ6Ip/pYW8eaMG+Cyz9NTqe12jQXfi7hho8GkPaISKL6i+jE
         xN43IoZhrAFP3RZggoKGFVsTFKId/rz5yOxj5sz96pb5llGgP6G5JVEXqQIKCR8aPCZF
         Sz1ADeawVo6lzfpcvv0yNVxXzP126LA5JuBy6FOJ17zcAVCrNyyhrnSMovGrOxGuUmiP
         QA+Cj38W1RjHuVkpj9Q312yYW8fFkYKoTFQVGLp3yTq+VloIcoM4TeGn51Gah+8eeKSJ
         rxkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=4HbCsjWSJqjla/4DGs6rsWsDUbmhdlyx7+INhR/GtZ0=;
        b=SB3Qj9k98/ncs6gDK4rcO/MCir3be96AXzfv5HUQLxGjI72Oqvwhvgd/eW9L4BH8Ma
         H3Q6df4be3zh/q24FEMSoL1OU/Tcs4wjguaEf3qFft0F1PQIfiG5487+tVpr8MHIg/cs
         1N7I++WAGG003Abh4wi/w8RKnO++qRxdKJQjK9uFkskBeG2FtIEtqvyiREtVnMrXp6h9
         5y2oOosFeouR0PaTEt7GkNnfFIioYlkItC5qUNYjSglGHJuhT3hlrT2PNpAPUNidFo/Z
         ZBvYsvDxicEVDWoZvOAXktIv7/La7Xz1JgVlf4DQE5dyJTJ6U7pLunnc9nQ6KZn/poBN
         dA9g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=svusHPzi;
       spf=pass (google.com: domain of broonie@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=broonie@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id o7si1763736otk.1.2021.05.11.01.28.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 11 May 2021 01:28:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of broonie@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id E74AC616E8;
	Tue, 11 May 2021 08:28:04 +0000 (UTC)
From: Mark Brown <broonie@kernel.org>
To: perex@perex.cz,
	Yang Li <yang.lee@linux.alibaba.com>
Cc: Mark Brown <broonie@kernel.org>,
	lgirdwood@gmail.com,
	linux-kernel@vger.kernel.org,
	alsa-devel@alsa-project.org,
	nathan@kernel.org,
	bgoswami@codeaurora.org,
	tiwai@suse.com,
	clang-built-linux@googlegroups.com,
	ndesaulniers@google.com
Subject: Re: [PATCH] ASoC: q6dsp: q6afe: remove unneeded dead-store initialization
Date: Tue, 11 May 2021 09:25:57 +0100
Message-Id: <162072058167.33157.15111322550243125545.b4-ty@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <1619345553-29781-1-git-send-email-yang.lee@linux.alibaba.com>
References: <1619345553-29781-1-git-send-email-yang.lee@linux.alibaba.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: broonie@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=svusHPzi;       spf=pass
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

On Sun, 25 Apr 2021 18:12:33 +0800, Yang Li wrote:
> Variables 'wait' and 'port_id' are being initialized, however the
> values are never read and updated later on, hence the redundant
> initializations can be removed.
> 
> Cleans up clang warnings:
> sound/soc/qcom/qdsp6/q6afe.c:933:21: warning: Value stored to 'wait'
> during its initialization is never read
> sound/soc/qcom/qdsp6/q6afe.c:1186:6: warning: Value stored to 'port_id'
> during its initialization is never read

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/1] ASoC: q6dsp: q6afe: remove unneeded dead-store initialization
      commit: 5f1b95d08de712327e452d082a50fded435ec884

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/162072058167.33157.15111322550243125545.b4-ty%40kernel.org.
