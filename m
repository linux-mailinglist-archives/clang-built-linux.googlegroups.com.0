Return-Path: <clang-built-linux+bncBDE6RCFOWIARBPPFUSEAMGQEL6X4DYI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x340.google.com (mail-wm1-x340.google.com [IPv6:2a00:1450:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A2883DEDA4
	for <lists+clang-built-linux@lfdr.de>; Tue,  3 Aug 2021 14:12:46 +0200 (CEST)
Received: by mail-wm1-x340.google.com with SMTP id f10-20020a7bcc0a0000b0290229a389ceb2sf868900wmh.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 03 Aug 2021 05:12:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627992766; cv=pass;
        d=google.com; s=arc-20160816;
        b=zp1gziyd8ePVVkYdnvvITNhdsB49iM1xopQf8R736Gd6T+zYZaUtCuJydRgzC6u9Am
         8uuMlRRoTJCpYBU1jZBpb+j5rr2iANFrE5VA/NqelM2pL0ROW3ACLUewrUOqkKVfdpcr
         WKeGMx0qgLkY+qgQHahD8QofuU1jpwZRF7OMhv51Wh2GdyECocfptRSie4zhKEpybckw
         YFtmDqYtEYwfYP38F/eOJhNcImCkOZKQmy+OjUFwEwl+ylTh97DHap/6hMR/SEIs3pue
         aMJ/3Grkwq7w7fRjlb9p//n1mi3vmN+C1nOIjJ9xsNo6FaStZZ8xIbbvxH9OC55qp4IO
         FECg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=Z1ihhBZS7xZdoAVWQ/GJjAlPDID1RF5l58wetXaAecU=;
        b=SAbmOwaN02RYhTLAU7uT6yBKdoXYJYeBnXNzwxa0/mYKr0jCa5+V/wLNCB04Kj/RWA
         CjJVhdMKtrtoXyHlSdrqJTuJixuqQ4i9pSUGbeyiRq6SYmW8FGsrOtt9vTwHxdujvPIj
         eId17tmbQeDaCpfN1iAepcdde2T7qCuMvEIavjJ3RjnhedrUtH2GxrL2MAfI/h2TOv1H
         TfFulBetT4F6Aw6girTGavbBAzqV3RB7bPJuSiNqjXllFqiu8Jt6plEmC3/7dKD0KDhB
         7KOqZieesIEAUHYLVFGtGCylpTwlkeeRG3iqfcgJgCUibkxODvoNKQXZ80B08vrqGlVt
         jqwg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=QZvsRYa5;
       spf=pass (google.com: domain of linus.walleij@linaro.org designates 2a00:1450:4864:20::134 as permitted sender) smtp.mailfrom=linus.walleij@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Z1ihhBZS7xZdoAVWQ/GJjAlPDID1RF5l58wetXaAecU=;
        b=NzBE9HMCU66XPQ5sLoVYu91G3vlKBlSp+2F6/V5iemhSWNxBerrGKTJWm30yQ9wDGG
         dyrgto4w/TQdbzz0P5+ju6qODzSkUFQQdzeapOpgB+IVx9Chsj5lYenPIK8Tin8Xb76p
         te1F1v3GO4fbUa5NFT3MWyGSHmbtIllaulz3YNflWo1Iv9r8Qk/rabQi93wvk0cCtUH4
         JiIn5rcsSMVTt5ddN4R4TVcfns3iLuiJedg0ogaU8eqfstLob1YbboP3RiLpPSQzIcM4
         dCdhkHIsJqjmYd4rxQczqlMf83HlrUao89BAs1i8uXNvLnOZcHxQEgbhnobN9yBwLlgG
         TyfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Z1ihhBZS7xZdoAVWQ/GJjAlPDID1RF5l58wetXaAecU=;
        b=l7GuXPDIqwRGcAfWX7QTeUVMvPaG84inhxbBsG6bQup/T39ICl91ZbJcXO0DDImibg
         KGbZvkDTRgESJHM8Jh2DUs/42/QqGQOTzN4vMmo0rxhmSejknbVw6LgjBU1/h1zCBQ5k
         MC1nK9pPbpTD49b/q973rg59TPVRPb/R1PoynI7ipe+sD8/p2HyPE4vgdy+yrO2vyP4z
         aXvA/Jqss3oePUP/mEDEawxe9e2kr4jJdd2xPrg+drZqkyE1gm3XqTpm4U8vttqWkmwB
         4T5L8/PdY1GgrsUtS0ZjQFUyhpUCMHicMnwOak0DHZzcmmkxFtL/aq3cn6A8XX5wrMLw
         qr/g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531PJAFieW4Pn+gYX3DNy7uow5coc14xfowyXcdCGRedAghvt6Yl
	OTwxEfFllG+DhbA3+I0b6XE=
X-Google-Smtp-Source: ABdhPJxN7Xtb5KAnlKnQwu/VAGF3eRMdQnf5tcSMCwXDelOj2YwO+nn9q9HjaPn5n588C9+Q1B2CZA==
X-Received: by 2002:a5d:4d06:: with SMTP id z6mr23888301wrt.140.1627992766140;
        Tue, 03 Aug 2021 05:12:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:7fc3:: with SMTP id a186ls6773174wmd.3.gmail; Tue, 03
 Aug 2021 05:12:45 -0700 (PDT)
X-Received: by 2002:a05:600c:2194:: with SMTP id e20mr21446812wme.77.1627992765252;
        Tue, 03 Aug 2021 05:12:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627992765; cv=none;
        d=google.com; s=arc-20160816;
        b=0MHRcjczD/7udQ2LDiaH0NVysLxd6rkh/vBhnLdCUrZ9GdK3DQHdTpEd2FEnZBWvRO
         UuBPtkZDogBPhiSV9hyC9JTby/BLuA0CBEatFpt4+LsfujWWg05jNqAY0D/JWdsB1wj3
         9/Uc6xkm45ZBtyEQdqnKOlockFaPh2IhHFFIJMyIVUUJTHOebFKrc2gqhI5UQllkXLIL
         K+5NkGdjR9LIY9CjbdyAv0vLpVVU4iM/FD5mYYeTjp7OOaIcZysy51b1MuGf1jzMCNml
         c39XYxie9uXzOQ/56bUdnZJ43s/aBzWxzNTesJgjLBkeWzAxrh+uC4Fmrt6Vsq4n1IUg
         EW9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=CjwFLstJrPnRmXg/rZRQYNcQZixdp2USEJZj3tF3f38=;
        b=gwZkj/z4MYWFrkzgw8tO4UmCabq01ui3+Jmvhfvop4/rkq1OIOTMH1/HHhEIj9iq3D
         stm9TR2By1m4/4zA3MpZTYbPgUQFF6RaYao7h+IuA3gQI8Uiec8AXkO0L7O5fMBounIT
         wNL6qlVggiZJNaNb3vXkCjEBE5gI7gSjjapL+riMYD1bXX+Z8TbeBKD7IQ3Es0S/qbm+
         TAX86QWipbm39Hgp9igjhhE86LOjbiSO9+7+x5yS0XlhlEzkdN8yNQG60wU3isSPVRcf
         ABVbUKC/E4wFh+7TySLjosRl7JwPOFu6/odm/L/PHB2covCVvMi9nTSG2ZoTiqToAcWt
         yHMw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=QZvsRYa5;
       spf=pass (google.com: domain of linus.walleij@linaro.org designates 2a00:1450:4864:20::134 as permitted sender) smtp.mailfrom=linus.walleij@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com. [2a00:1450:4864:20::134])
        by gmr-mx.google.com with ESMTPS id g128si123915wmg.1.2021.08.03.05.12.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Aug 2021 05:12:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of linus.walleij@linaro.org designates 2a00:1450:4864:20::134 as permitted sender) client-ip=2a00:1450:4864:20::134;
Received: by mail-lf1-x134.google.com with SMTP id h2so39375297lfu.4
        for <clang-built-linux@googlegroups.com>; Tue, 03 Aug 2021 05:12:45 -0700 (PDT)
X-Received: by 2002:a05:6512:132a:: with SMTP id x42mr15849594lfu.291.1627992764702;
 Tue, 03 Aug 2021 05:12:44 -0700 (PDT)
MIME-Version: 1.0
References: <20210802141245.1146772-1-arnd@kernel.org> <CAL4-wQqCL1S-GYu7VKJeTT37wh=rR=SMUuwgKiXnnn_Y=uydOA@mail.gmail.com>
In-Reply-To: <CAL4-wQqCL1S-GYu7VKJeTT37wh=rR=SMUuwgKiXnnn_Y=uydOA@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 3 Aug 2021 14:12:33 +0200
Message-ID: <CACRpkdbRbgjo1AkZVd0J1nhuo601o8=20rKR+ccaJR1+vqn6qg@mail.gmail.com>
Subject: Re: [PATCH] ARM: ep93xx: remove MaverickCrunch support
To: Martin Guy <martinwguy@gmail.com>
Cc: Arnd Bergmann <arnd@kernel.org>, Russell King <linux@armlinux.org.uk>, 
	Hartley Sweeten <hsweeten@visionengravers.com>, 
	Alexander Sverdlin <alexander.sverdlin@gmail.com>, SoC Team <soc@kernel.org>, 
	Nikita Shubin <nikita.shubin@maquefel.me>, Arnd Bergmann <arnd@arndb.de>, 
	Oleg Nesterov <oleg@redhat.com>, Hubert Feurstein <hubert.feurstein@contec.at>, 
	Lukasz Majewski <lukma@denx.de>, Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	linux-kernel <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: linus.walleij@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=QZvsRYa5;       spf=pass
 (google.com: domain of linus.walleij@linaro.org designates
 2a00:1450:4864:20::134 as permitted sender) smtp.mailfrom=linus.walleij@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

On Mon, Aug 2, 2021 at 5:45 PM Martin Guy <martinwguy@gmail.com> wrote:

> > was removed from gcc in its 4.8 release in 2012.
>
> I was sad about that, as I had managed to get it working correctly in
> 4.2 4.3 and 4.4.
> Unfortunately the GCC ARM maintainer at the time was paid by ARM, and
> they had no interest in it, as I gather the ARM-Cirrus partnership
> ended up disappointingly.

Political issues aside, have you considered contributing support
to LLVM instead?

It currently doesn't even support ARMv4 AFAIK but reportedly
has an easier to use and maintain back-end. (I do not know if
this is true, I just browsed this:
https://llvm.org/docs/WritingAnLLVMBackend.html )
Current ARM Targets are here:
https://github.com/llvm/llvm-project/tree/main/llvm/lib/Target/ARM
And they have a very clear and straight-forward developer policy:
https://llvm.org/docs/DeveloperPolicy.html

If ARMv4 support could be added to LLVM, that would solve
a lot of my headaches for ARM32, where we have things like
SA110 being actively maintained.

Yours,
Linus Walleij

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CACRpkdbRbgjo1AkZVd0J1nhuo601o8%3D20rKR%2BccaJR1%2Bvqn6qg%40mail.gmail.com.
