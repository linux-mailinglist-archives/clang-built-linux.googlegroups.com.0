Return-Path: <clang-built-linux+bncBCEJHTXX7MFBBBO766HAMGQEFHNUW7I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13e.google.com (mail-lf1-x13e.google.com [IPv6:2a00:1450:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id EF45548B918
	for <lists+clang-built-linux@lfdr.de>; Tue, 11 Jan 2022 21:58:45 +0100 (CET)
Received: by mail-lf1-x13e.google.com with SMTP id cf14-20020a056512280e00b00426460c9af9sf202609lfb.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 11 Jan 2022 12:58:45 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1641934725; cv=pass;
        d=google.com; s=arc-20160816;
        b=pI06fl0zwWL6IEotm22LBrIJFI7efDx6iGdJlfrq4XMAG3y6YqHJ7VoE4QV0sft1pm
         1jIJKFC5eYUkG8uAtEaFdHKoeG/d2m8PMhHBBzVRSLAiS1Md2jYF1Owqcbo/ILl6aHuJ
         8i3OZXv1KU5R1gR8zndJPoUj7b6Bg5FOkIFemi3EcVOUIQHarvk9fByM5vhR7NX9yBCt
         5romS9wSaBFiFnfEVQgTFbNFdoMY+tyhn4I2cqQhyxWatcQTEbG56b8L5ZUhiJqDl4bd
         qlk3QvM+L97IdrxCMr8huyEJGbA7lMNqv05orScRaV5U51gvkKlB7ZZ0XtTyXxQyb1/r
         2hyA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:user-agent:references
         :in-reply-to:subject:cc:to:from:date:mime-version:sender
         :dkim-signature;
        bh=X5cxrQdSEAKKFY97qnitQFvR2QC5LqYo2Ou6oODT7kY=;
        b=lFSrkVGOj84G9qYhzAJ/yeiE3gLcacUQZe1fGHKh0MVJY2RYZaSD0jKTHMAVKDX1s2
         mqoaEOVq74bAvASThZ9TT5/0/lWDt4h6Ky9pCeXLxkEjWpCyV/AI3MNZxbWQpLVG19tI
         4ugapTcw5ng2x9o0KLka1JH06369o6lX4gN+XQS5fyZSH6zjW6uVuLVxXcuKLrV+0sO5
         +UawJ9x6uxIF1SflO9Ps37blmuxxNyrPCB5GSnHJlZLngSrl9aL9oDJd2L4LkHEF887S
         wz6dJan55VylQCkNpIDADRneHKn4lNzOzEzybFGLILB6ZIM6fruejjvQDtzA4tHtdiKB
         MCgA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@agner.ch header.s=dkim header.b=LTCk4AvC;
       spf=pass (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as permitted sender) smtp.mailfrom=stefan@agner.ch
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:date:from:to:cc:subject:in-reply-to:references
         :user-agent:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=X5cxrQdSEAKKFY97qnitQFvR2QC5LqYo2Ou6oODT7kY=;
        b=pYY1WzYm6ICEqv5kP9W3eS58TVzWBrybcmwECwPxPRAxXq49xAMUVf3nriUjYrbxze
         ixIk1W08GZRPEdvfwj7z9eXdmY8szh+TAtFdJrKXNzlMmatJ2tzPjyq2pvahe6mVtwKG
         J0QlE26jyWED7M/r1pjRJ3TvWmOztJVGIGxMfF20hwL1BsptIVi2x7nrySzOPYR+dWWZ
         dG5e7q0WG83FXbWC2sl2glDNWKo4RAhTntaOVHupoiotULFg0wKzM1PMRSNY32ktUqA0
         jWMOp4Gr8DstUk76s5JJshy8auRnB9MFfsRpu6lIAAcwrzV3VQtiTE9LyKS6ZTZyKF7Z
         bdTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:date:from:to:cc:subject
         :in-reply-to:references:user-agent:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=X5cxrQdSEAKKFY97qnitQFvR2QC5LqYo2Ou6oODT7kY=;
        b=Wx4oIv8elAyTcKFz/+Ej2QDluPA39nhGvWuTAsSJx6hn/NMm9ddgAhmCAcPL2SZydf
         EpC1m325Y3cexjAHMjnp0+/5m9NODSsAzwj9wrFES/jHd9Y0aDKI2L4qtAK9FtGX+EnY
         b9tgJ2L657medHbLGq64Vbcv1JFDKCsSAxttdkxqaXQO95/KVsGiDTQzPtvtPwwO8POW
         UU8jO1emAAaEsAfzrapgPnaZW5O0PQJBWpyXCmFxT4HJ5PnjqhM5hJVsil503wwp+h7b
         Xq3b9YhVT8e/s9pRCjCUUpTlMUPm6/hILeDbYJ8zlzWAe77CNyTtCpqViLGuElic0DYJ
         u3jA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532thgb3LrA8q+QErhhfdR2crLO5I6naaNK7WgQgKOVJ+ohsktfX
	ji51SMGYX/zQkxN1rIzsBMw=
X-Google-Smtp-Source: ABdhPJybH3FbHEhmwsgSmTnbPelYYYj1JLQjObX6cXgK+74iI3RygT2XfRQI//CgYSmOTvOhhVAXEw==
X-Received: by 2002:a2e:3c06:: with SMTP id j6mr4150879lja.132.1641934725268;
        Tue, 11 Jan 2022 12:58:45 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:bc1e:: with SMTP id b30ls2512272ljf.11.gmail; Tue, 11
 Jan 2022 12:58:44 -0800 (PST)
X-Received: by 2002:a2e:8699:: with SMTP id l25mr3855714lji.110.1641934724296;
        Tue, 11 Jan 2022 12:58:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1641934724; cv=none;
        d=google.com; s=arc-20160816;
        b=e5xVr1II0dkf3lra/udxF1Z9uNQQVZIfvNPiT3aP6waRUbXYPhnflPU4Ze0bcRMdjk
         Wby4l1dDC7F/E6XA8sET0T3csv3W02BZcU6Off5u///74b/8jh5U3CYIkT1jJ48jHIQz
         UDRN1HdNz+Idzf1ltmEcMjjGOzj5IQiMpVD7jRal9OMCleJhhsWJVQiPE+sXGA0o6juG
         yD73J7jzl5xEzeBitr9D5qkxegbloMq+fazXOJC+kiFqMckK0/5H63J99HhuprrXox6O
         hWyO2bWa+p94pCaaorMzez9xgKpFTRSu5M5Qe+CzFeZEyj+fa+o+TnXyLdMCn8DlJMEO
         ptjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:message-id:user-agent:references
         :in-reply-to:subject:cc:to:from:date:mime-version:dkim-signature;
        bh=iVvlJDmHXnabUFubsGrlnwqcZ70EOBK8YyJIdSmQOWk=;
        b=fgI5EVZd45ytlgEIvG3HhEYHUvHaNuSSgHQb5g/qvWYkqa2NyjsNLA9ih4E1fYppFV
         BnTiNlkIWsiFjEFx6aJKH/Ctcb1QyyKBA8NlOw5EvRQS/F9icpZVPNhGbxwgPOhlxpOT
         nS00BRa44LnAVskn4EA5gGTSGXygYw5YYcGIYLbi9V0KfDh454OEYnT9ERrImRym0A/l
         PiS1Fx+yjXIDFTmMbyp5DvEyUXT8ZoPUAkk5ONogeJE+EToUD6aBtIBNDZ7oiexZrWhN
         wuGGqqM7oQba6jSD3QTK4jsBdRj+Zeua4n2IszCh+eGLnjg4aw7r1/nj6tOC23DoiyjZ
         4wNg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@agner.ch header.s=dkim header.b=LTCk4AvC;
       spf=pass (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as permitted sender) smtp.mailfrom=stefan@agner.ch
Received: from mail.kmu-office.ch (mail.kmu-office.ch. [2a02:418:6a02::a2])
        by gmr-mx.google.com with ESMTPS id x25si418392lja.4.2022.01.11.12.58.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Jan 2022 12:58:44 -0800 (PST)
Received-SPF: pass (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as permitted sender) client-ip=2a02:418:6a02::a2;
Received: from webmail.kmu-office.ch (unknown [IPv6:2a02:418:6a02::a3])
	by mail.kmu-office.ch (Postfix) with ESMTPSA id 199B85C08F0;
	Tue, 11 Jan 2022 21:58:43 +0100 (CET)
MIME-Version: 1.0
Date: Tue, 11 Jan 2022 21:58:42 +0100
From: Stefan Agner <stefan@agner.ch>
To: Greg KH <greg@kroah.com>
Cc: Anders Roxell <anders.roxell@linaro.org>, stable@vger.kernel.org,
 linux-kernel@vger.kernel.org, woojung.huh@microchip.com,
 UNGLinuxDriver@microchip.com, davem@davemloft.net, netdev@vger.kernel.org,
 linux-usb@vger.kernel.org, clang-built-linux@googlegroups.com,
 ulli.kroll@googlemail.com, linux@armlinux.org.uk,
 linux-arm-kernel@lists.infradead.org, amitkarwar@gmail.com,
 nishants@marvell.com, gbhat@marvell.com, huxinming820@gmail.com,
 kvalo@codeaurora.org, linux-wireless@vger.kernel.org, rostedt@goodmis.org,
 mingo@redhat.com, dmitry.torokhov@gmail.com, ndesaulniers@google.com,
 nathan@kernel.org, linux-input@vger.kernel.org, Russell King
 <rmk+kernel@armlinux.org.uk>
Subject: Re: [PATCH 4.19 5/6] ARM: 8788/1: ftrace: remove old mcount support
In-Reply-To: <YcBhqJMLdwieZa8X@kroah.com>
References: <20211217144119.2538175-1-anders.roxell@linaro.org>
 <20211217144119.2538175-6-anders.roxell@linaro.org>
 <YcBhqJMLdwieZa8X@kroah.com>
User-Agent: Roundcube Webmail/1.4.9
Message-ID: <cf6f7b9e8694fa87c3e27bd6be67afd2@agner.ch>
X-Sender: stefan@agner.ch
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: stefan@agner.ch
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@agner.ch header.s=dkim header.b=LTCk4AvC;       spf=pass
 (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as
 permitted sender) smtp.mailfrom=stefan@agner.ch
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

On 2021-12-20 11:57, Greg KH wrote:
> On Fri, Dec 17, 2021 at 03:41:18PM +0100, Anders Roxell wrote:
>> From: Stefan Agner <stefan@agner.ch>
>>
>> commit d3c61619568c88d48eccd5e74b4f84faa1440652 upstream.
>>
>> Commit cafa0010cd51 ("Raise the minimum required gcc version to 4.6")
>> raised the minimum GCC version to 4.6. Old mcount is only required for
>> GCC versions older than 4.4.0. Hence old mcount support can be dropped
>> too.
>>
>> Signed-off-by: Stefan Agner <stefan@agner.ch>
>> Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
>> Signed-off-by: Anders Roxell <anders.roxell@linaro.org>
> 
> Why is this needed for clang builds in 4.19?

As far as I remember, Clang tripped over this part:

-#ifndef CONFIG_OLD_MCOUNT
-#if (__GNUC__ < 4 || (__GNUC__ == 4 && __GNUC_MINOR__ < 4))
-#error Ftrace requires CONFIG_FRAME_POINTER=y with GCC older than
4.4.0.
-#endif
-#endif

Since mcount support wasn't required upstream at that point, instead of
fixing it for Clang I just removed it.

--
Stefan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/cf6f7b9e8694fa87c3e27bd6be67afd2%40agner.ch.
