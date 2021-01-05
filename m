Return-Path: <clang-built-linux+bncBDE6RCFOWIARBJ4F2L7QKGQE3VANOIY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x539.google.com (mail-ed1-x539.google.com [IPv6:2a00:1450:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A52E2EAE00
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 Jan 2021 16:15:51 +0100 (CET)
Received: by mail-ed1-x539.google.com with SMTP id x13sf13365995edi.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 Jan 2021 07:15:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609859751; cv=pass;
        d=google.com; s=arc-20160816;
        b=bTPXyrm0T2SkgF08h5N1kcm5NzVuBSvXNVSHvMKxUGmC+TqCxy6rt+29+si0LZ3ZII
         Mu4tUnMuX17ys16/3NNPfHCAtL+mVgZ8vTI68arXUuxO1aoOGXlnnDESTuydnbTBp8cT
         DkYSHF4rqtmdXbgT3P8vCTHyrfHzBhAoMsfON1DrbBfUCvD1BfjtdaTEcSIcX0+NCZ5k
         IscUdrITMgEFP5neRaVP9et6wukvBepctuwZIHUZ6C+4vuaQLvlldbNHKLhV1gnCMBL4
         eCXk/0QGRULxd4Ipxn936iceHLD2wqOfB1/kBG1xPClYkgjRyB1YUly4j5B08mUdhxZC
         4R9w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=RNcxpTJsHVTG2T8MiNbnEg4CGG+Zs7PIM1dIGzXYsKY=;
        b=Q134VwyQ5vz2tpEetYTHApQHvA0S+gUV5z12jl8bbrRmMEyQ4K3hH4NxZY3BiXXgch
         PKagJkVshkpW5WSsf88DVRKqvB05YE4g0OV5asx5arAdzoSsmBVhcAvCWfomTUtVc4lU
         xCR2TG2HNuulRQLR+51JoXLRBtnjUrAoEtnl72GZGNARPsYn+QurSh6SH8BeYFFdwmla
         SJbBa5zdJIL1zlHqWOjJYn1Tkka5R/3sn0wuu7Fo2ptrUjbiVBagaX90GkS/N32v+gap
         ryQ3cgoeD6y9OoUrsOjhN8/wmncFz8It42PkzjfidPGu5JLvzCSVdaeMEpcWbcdzlsZL
         Tm3Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=xnp2n1s9;
       spf=pass (google.com: domain of linus.walleij@linaro.org designates 2a00:1450:4864:20::129 as permitted sender) smtp.mailfrom=linus.walleij@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RNcxpTJsHVTG2T8MiNbnEg4CGG+Zs7PIM1dIGzXYsKY=;
        b=nYO5mxDA5p3t/CmosHfesPiiJgNYAzKQa/Lg2iDTRZfUzU1WZ53TPNKEoF1IiCXL2j
         4hTrW/aTr61jPWeaJr8ButpHvTNCfJ+Nkvyc1nGX91FBUMlEo8VlnVCsCfrv2oynvok8
         gsgw5QtX0NFgeRtrNoAlL3n08/NreuGxoj+n3BJyh0LLzQeytSEfIixV3KInabmd2P01
         VY3Yw2XzUWC7sgHjytYdm36fgv0l4vZz1C7AbdKuZncp73qd6Fp3seXSmzzV6cj4Wwqi
         i65Kl4FEDEtC7v7YDMPkJhOl1QNL9pCMHHFR+vfT9TU0+qRCXcuDsmeoeJmEhijDVOBW
         rKAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RNcxpTJsHVTG2T8MiNbnEg4CGG+Zs7PIM1dIGzXYsKY=;
        b=n2Dsn7k+BTNLvHh9CvWgsV+63+ozCqIJzn8pcUyyii79GGAY7Lm0lLr1NIk8jiKeLl
         82wU1E3Y6+jc+gjYOcG1xUWgDt7r9UCwDGU+mNfC25P/g4jNpawgNPYyFVGBe6IPFYqM
         vikmQUORuwLRe4s4oasVXcWx3sCQvVtKgx1F5E/laYRJTOVKaMZMU+/NEUDSHIja9fIh
         rth8Cl+PWSJaLnfdWu2Yf2tHzR/+iFi2ne9QDbqA3/xqTOjDOopMv0HLboOqw71BWK8d
         nvnahdAncrXNsnYw7PiEaRprr3DewXNQ4ocY6KMPQHcs6v+/3Y2IlmdtDW0IBFSvW6ix
         sp5Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532g+JjsOap3qfVrOZIUhVkuogy+67YIG7vGdMIm1AQu8KqvE0y/
	5ZOKr3efhHE+U8ct6f2HAtc=
X-Google-Smtp-Source: ABdhPJyWDnTmWHwGtKICDInne3O/XMxHpQgrx5FXQiAzvODK594xOInmnNlh40PiR24yXZVtDbLcag==
X-Received: by 2002:a50:e846:: with SMTP id k6mr185428edn.245.1609859751252;
        Tue, 05 Jan 2021 07:15:51 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:cb9a:: with SMTP id mf26ls20151ejb.8.gmail; Tue, 05
 Jan 2021 07:15:50 -0800 (PST)
X-Received: by 2002:a17:906:6606:: with SMTP id b6mr69275302ejp.151.1609859750486;
        Tue, 05 Jan 2021 07:15:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609859750; cv=none;
        d=google.com; s=arc-20160816;
        b=oaypjBE1grkfqfrr1fhcnhr4LGrv8C76sDIVz31B6d0hPJ5usctuGDPiIntCyHm9t/
         Z0bmhbgMs4Z41kyd4WaVcUnktYNzdm+Ieu20S3d8zTnJ+FAYugaXl/5iEvg0WSki4bSm
         ToJrZaoXi0C6baULG+hLxM/PYHGaKI1iynpY0gcygzWTdCVS7JG+E++XzWQYhCnHFGGU
         RSPfDM+xFYiaVSuJLzj7wUJN3RVHHTP3XFgja/mC7bA8/ResVKB74N8hkRNLszLEPe5b
         kVK8qIKNC5ISKrOnf3p0UQ7LYqoMyfSj1foOg6ysdEUVUcga6+rGkNIaSAgqSV1gm91k
         w5Sw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=nipFXfidN4RGtXoyeMnYQAg6eHYZV+kT94xqPBVgEN0=;
        b=mJj9AqSyIqfiRO7mD13ixOILvqSi48SfSnm0J1k03olQR9ccDRRDU/bScmWIksZgJE
         k9mtn8x9SpOzM9w+QBMZEkuPYy2lwI4KFnSWdDmCgu637M+o4kpkGftRLwZBeqALGukY
         jB5OGqaLKvdbghpH1VuQm51xqPptDelD4zXM2bQminy5Yjx/54c8Idogw5ffDVizrYPb
         b0WJhco/OWy/Oo0K8K6gd71KjLVUjIkRuDpbmIvqg3Mf6957NgyDYbC2eZx6b06eUyfu
         rXoFag5DiOWvQPo9bibOEFpcVsxwDnzEkCUM/qYRhm7ZEMjeS44X/w3QBPtrzP34qfbR
         rSow==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=xnp2n1s9;
       spf=pass (google.com: domain of linus.walleij@linaro.org designates 2a00:1450:4864:20::129 as permitted sender) smtp.mailfrom=linus.walleij@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com. [2a00:1450:4864:20::129])
        by gmr-mx.google.com with ESMTPS id i3si5936edy.3.2021.01.05.07.15.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Jan 2021 07:15:50 -0800 (PST)
Received-SPF: pass (google.com: domain of linus.walleij@linaro.org designates 2a00:1450:4864:20::129 as permitted sender) client-ip=2a00:1450:4864:20::129;
Received: by mail-lf1-x129.google.com with SMTP id b26so73397377lff.9
        for <clang-built-linux@googlegroups.com>; Tue, 05 Jan 2021 07:15:50 -0800 (PST)
X-Received: by 2002:a2e:3503:: with SMTP id z3mr63883ljz.74.1609859750250;
 Tue, 05 Jan 2021 07:15:50 -0800 (PST)
MIME-Version: 1.0
References: <20201229204710.1129033-1-natechancellor@gmail.com>
In-Reply-To: <20201229204710.1129033-1-natechancellor@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 5 Jan 2021 16:15:39 +0100
Message-ID: <CACRpkdbYC5Q7NfVLVBjW79AJPaWx0iQ2_XeU2A7ur73qqpZXsw@mail.gmail.com>
Subject: Re: [PATCH] pinctrl: nomadik: Remove unused variable in nmk_gpio_dbg_show_one
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Thomas Gleixner <tglx@linutronix.de>, Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	"open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: linus.walleij@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=xnp2n1s9;       spf=pass
 (google.com: domain of linus.walleij@linaro.org designates
 2a00:1450:4864:20::129 as permitted sender) smtp.mailfrom=linus.walleij@linaro.org;
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

On Tue, Dec 29, 2020 at 9:47 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:

> drivers/pinctrl/nomadik/pinctrl-nomadik.c:952:8: warning: unused
> variable 'wake' [-Wunused-variable]
>                 bool wake;
>                      ^
> 1 warning generated.
>
> There were two wake declarations added to nmk_gpio_dbg_show_one when
> converting it to use irq_has_action but only one is used within its
> scope. Remove the unused one so there is no more warning.
>
> Fixes: f3925032d7fd ("pinctrl: nomadik: Use irq_has_action()")
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Patch applied.

Yours,
Linus Walleij

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CACRpkdbYC5Q7NfVLVBjW79AJPaWx0iQ2_XeU2A7ur73qqpZXsw%40mail.gmail.com.
