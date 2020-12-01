Return-Path: <clang-built-linux+bncBCT6537ZTEKRBDENTD7AKGQESRCXGVQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x539.google.com (mail-ed1-x539.google.com [IPv6:2a00:1450:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 47C862C9A4A
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Dec 2020 10:02:07 +0100 (CET)
Received: by mail-ed1-x539.google.com with SMTP id g8sf906522edm.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Dec 2020 01:02:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606813325; cv=pass;
        d=google.com; s=arc-20160816;
        b=VMgWsOG4iROLG9u+9lIbopNpUh/vWdUAEk2oVmRJgAs9tozFbYjnsc6rLmaDbgviC1
         je/6jFAsw/YYtsdiXHgQR5dCuKFt/JcSeW4FVczxLn+wzt2g/VT8y646RV31uQ9qkweO
         JWV2AMlvsjLzU1xdhxT6muthGUuUmqu8RZT77HL6Yzggg9zffInjWYYf80gosEV0DFeh
         GKgkaOxx2hrR0HyJ8Kdu6cYE7AgQQV9+Yfmeo1iB/V5rbN9inxIiWotiDLcnOS2AGUPQ
         k9zns7qxI27W6zdOm+qKa2WimzxVGvitbD6iwY/5TBs2iVv3HRWLz5M8J3MDhFJUJp5O
         TiNw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=TLeYhi04IEfAjlSmWnRp7b1Cb0es2FAOES/YZ/yJryQ=;
        b=SXTwqi9rpHym/6Aqh/34Ty2mKIpjTZ9cDiy/g5WkXsfLmbH1w91ceyDZ4p1gKZfOra
         w7YCn+W8D46zC3+LFBeAcvmUaPSKyOrou9U95kNpso/cSj9bknWKAJJgJcfYYF0JnbYh
         ZuadJTJgQPKnUx0bflMmfAwEbSAvJkw16BFrJWnVKsP+bden6BZwgFNrmraapj6C15hi
         gmxLuSmVFLssGfDo9IsWVZbHaV0dOqoKruo6AEDTJZo2U1ZvUXAC8eZE0tAzM3CP/+JT
         Zz4zpas6Vj/xdKgfkJDByCYZaM/zNbDXzbmGuIAwD4TMS3kUmz10S4n0u6rX1NJaICaT
         tHKA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=Dec+sEdH;
       spf=pass (google.com: domain of naresh.kamboju@linaro.org designates 2a00:1450:4864:20::62e as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TLeYhi04IEfAjlSmWnRp7b1Cb0es2FAOES/YZ/yJryQ=;
        b=d2zqp4rLsnzeOgqhZuklUAid1ljgiOBmfUBlmzNteu36sAMGz8nCuvJiEY4Gwz6G7i
         p8/wv4y4/L28ZMFZv2Ve41YSk38rFgEvyb/cCxrXmhyi/C6bCSg9FWP4UA5rK2llBjlG
         d5YJMoifMZahLO/687FS7ejtJjcVOrFLlCOF2GVTQCyVE+J+z29dg/rM8kMz2FXuDdJS
         6DiMLgTUXV3i0BnbpFvxFYrPyvwtmUI3JZ5/rVP3pGeQXkog+zO33RKvC8ss9BenJHx0
         OCrWoCFXKUGJZE6boHHf8cORYTXiDFfnQ/Ig8E3Wn7yzzlCZOxyXBJjhbG6j8xIoZcUz
         gIcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TLeYhi04IEfAjlSmWnRp7b1Cb0es2FAOES/YZ/yJryQ=;
        b=SlTJPlacmpFIbOTOIWMejJb3bspNHAY7sxI1e4K0yCLhlolP/I+8gs41/Nnfrxgx3N
         osdy8y6UszAIwirJa3fBXyrULZlpF16f4vGcQaNVfa8569JxnbgpvBog4l8NU/7skFtt
         8yik5xXGF0tzpa1zzIv5r9uhLIvTMCoi4gRMcXZz6OUmwurwxdRAbvTfLt86YsQ0XKUS
         cMSBz4sklRPU0sKqa6a4R7soNwzinmgLkgKyM+SZ1bsD2BRs1nRSi7JbZh2Vx8qDkrvu
         yPFvhQvCa/NEIwkv41UplARS0lhYz2FMOx2HSSn8s9/6A+MUxr7uwKG6UGRie6/phWzE
         yjhg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530jvI8fPooJ8/tY6V/d9P5cHxQAnNpDNHK1huX/1HyHXeIJEMDg
	mS5N3INT4uaxIolbNP1joSQ=
X-Google-Smtp-Source: ABdhPJzQ0Lyzypv1tRlEkbrpcgyrEQg7Dwq2cKinvROL4QEw2NHc+d/It5LFbTJBdDQYBDPQJOXOYA==
X-Received: by 2002:a50:b243:: with SMTP id o61mr1973808edd.57.1606813324941;
        Tue, 01 Dec 2020 01:02:04 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:fd15:: with SMTP id i21ls1314125eds.1.gmail; Tue, 01 Dec
 2020 01:02:04 -0800 (PST)
X-Received: by 2002:a50:ccc8:: with SMTP id b8mr1963562edj.152.1606813324091;
        Tue, 01 Dec 2020 01:02:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606813324; cv=none;
        d=google.com; s=arc-20160816;
        b=sHBCXuuS+JUN9DUA3yzBPBN4qwLZ1EIAXYmo6YGuh4UJZvI87uargmkOo6gpOofG7G
         tL6a+P+xMLgAlJpGSxq/lZLAdAkTd5I6zVAOygZZVYwHansVAbTZHkYB5set2rr9wLqs
         5eIJNTP+8azfykixGEpiXJsYWPht7EbaB+D/0NYnyfn/kktuMV50pvsdl4a5qF7dpT5e
         AYnbIHH5qAhqfVVvVNbJJY39hAoY4xfIYNAwDIHH5D2a3mkI01tHaXDm1idEDdbSJbpQ
         hQzGA9it4+2pkWUCaVywRF2S9Yj3rCfuPK5w+xLijba4uuxCSQtOnCncYrguRDMFOAfp
         AVRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=VDvIJMhlhbrcaZHTtPoHJae6p6FFPV7vNipTH4CUP9o=;
        b=WR1qWFV4I3M+ACB+UsqGq275wzb54c3zoBXG/Agz+SYlQP94l2Hmjik1+/hpfzUNsl
         dEAuzeAZtlflHjgTmGANXWKGQnbETR7cmAJ+ohtYGeIsODFgGlLZHurMajpzTRcRPCEN
         8oMacXcKuq5WiJ/QraPYSkUg6UqTyLUxd5mAP1RpieM2u6w6vUrSNOJeXMdAnNuySSgg
         0BsffpQRfAIqrty08MUfBdJ6MfdEksOfUgXLcZclhKi9B4P4WAuYH8kDnanEFYVab77p
         wT5jKzIlIiF7nHsFF2OQ1UquZOIJtUp52YIaqpP0xAJ0Y4N+penZMKl3aMtMHN1kin+f
         Zrkw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=Dec+sEdH;
       spf=pass (google.com: domain of naresh.kamboju@linaro.org designates 2a00:1450:4864:20::62e as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com. [2a00:1450:4864:20::62e])
        by gmr-mx.google.com with ESMTPS id i3si48988edy.3.2020.12.01.01.02.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Dec 2020 01:02:04 -0800 (PST)
Received-SPF: pass (google.com: domain of naresh.kamboju@linaro.org designates 2a00:1450:4864:20::62e as permitted sender) client-ip=2a00:1450:4864:20::62e;
Received: by mail-ej1-x62e.google.com with SMTP id d17so2525028ejy.9
        for <clang-built-linux@googlegroups.com>; Tue, 01 Dec 2020 01:02:04 -0800 (PST)
X-Received: by 2002:a17:906:1498:: with SMTP id x24mr1989437ejc.170.1606813323723;
 Tue, 01 Dec 2020 01:02:03 -0800 (PST)
MIME-Version: 1.0
References: <CA+G9fYt0qHxUty2qt7_9_YTOZamdtknhddbsi5gc3PDy0PvZ5A@mail.gmail.com>
 <X79NpRIqAHEp2Lym@kroah.com> <CAKwvOdmfEY6fnNFUUzLvN9bKyeTt7OMc-Uvx=YqTuMR2BuD5XA@mail.gmail.com>
 <X8X8y4j9Ip+C5DwS@kroah.com>
In-Reply-To: <X8X8y4j9Ip+C5DwS@kroah.com>
From: Naresh Kamboju <naresh.kamboju@linaro.org>
Date: Tue, 1 Dec 2020 14:31:52 +0530
Message-ID: <CA+G9fYtWappsU-njZx87ZJVxmTHOr1zUNE_q=k0Dz5cW16rBkQ@mail.gmail.com>
Subject: Re: [stable 4.9] PANIC: double fault, error_code: 0x0 - clang boot
 failed on x86_64
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, linux-stable <stable@vger.kernel.org>, 
	open list <linux-kernel@vger.kernel.org>, lkft-triage@lists.linaro.org, 
	Sasha Levin <sashal@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	x86@vger.kernel.org, Matthias Kaehlcke <mka@chromium.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: naresh.kamboju@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=Dec+sEdH;       spf=pass
 (google.com: domain of naresh.kamboju@linaro.org designates
 2a00:1450:4864:20::62e as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
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

On Tue, 1 Dec 2020 at 13:49, Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
>
> On Mon, Nov 30, 2020 at 12:12:39PM -0800, Nick Desaulniers wrote:
> >
> > (For historical records, separate from the initial bug report that
> > started this thread)
> >
> > I consider 785f11aa595b ("kbuild: Add better clang cross build
> > support") to be the starting point of a renewed effort to upstream
> > clang support. 785f11aa595b landed in v4.12-rc1.  I think most patches
> > landed between there and 4.15 (would have been my guess).  From there,
> > support was backported to 4.14, 4.9, and 4.4 for x86_64 and aarch64.
> > We still have CI coverage of those branches+arches with Clang today.
> > Pixel 2 shipped with 4.4+clang, Pixel 3 and 3a with 4.9+clang, Pixel 4
> > and 4a with 4.14+clang.  CrOS has also shipped clang built kernels
> > since 4.4+.
>
> Thanks for the info.  Naresh, does this help explain why maybe testing
> these kernel branches with clang might not be the best thing to do?

It is clear now.

FYI,
With this note LKFT will not test 4.14+clang and old branches.

- Naresh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BG9fYtWappsU-njZx87ZJVxmTHOr1zUNE_q%3Dk0Dz5cW16rBkQ%40mail.gmail.com.
