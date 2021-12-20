Return-Path: <clang-built-linux+bncBDK73744WQBRBG6EQGHAMGQECTZKOCY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3c.google.com (mail-io1-xd3c.google.com [IPv6:2607:f8b0:4864:20::d3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 72E2247A816
	for <lists+clang-built-linux@lfdr.de>; Mon, 20 Dec 2021 11:59:40 +0100 (CET)
Received: by mail-io1-xd3c.google.com with SMTP id m6-20020a0566022e8600b005ec18906edasf6850691iow.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 20 Dec 2021 02:59:40 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1639997979; cv=pass;
        d=google.com; s=arc-20160816;
        b=UTZtb3iNYh4BPefSlU7U5DZ3PxdRYL0kDR6j1WL9OUen4N3Ajwh+8U2NKyTgllHZEy
         tnO8LwY+G+VXXhGUDQw/VqwoDyOKBZ2vgu0eVF8hUawAeIY9qa1rpU1KbTkgvT+UVu/9
         mMffRMjanmRiPVw8Bbnm/LW3wSGbq7JOTb1Qr7+hOj/G2EAAGjwRqTRcX3iXOoEKHgFe
         1RhOWFY5+apWssJzGUPKDBatkE02jr16Xb5jraZA0mWYyiFL/zCKQYseXlkZ29NErA6A
         zySjA5ALbcEm909S0z2e73iR1QlSUiZzsecexxx9hx+462FxX530d2PNHGp46itDfupj
         mTPA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Kg1sbuEhEzRKGeqFOGWDPGrbG3+7cXwaHpxE/E6j0Xk=;
        b=uarBHb9NlMDZYrTbxW7sg9UznTyzzCPcbZa5Y6qRmL++pGCnkOsrtpvE0hVEPtwyq8
         ztYUM0W7wqV7sD9pT2cR0COQjkxbJLVGoM7q9r7PbRsjWVQMsW+42Hd1KfwsJX1oIl0/
         ZHFUuboss+qIMBlY3rxsjRlWG1koY4Ux353JOdl6LTChSsugTW1ITPeZL76Y3U0J0nw0
         KV0aYB/8+W9LVAhLMbOVe6+LEOG0IrQ3eBYVEG9LwMS5TTrh10s4dJVUZ8jUoffztB9J
         dT2/md0uVRAqaGCIdtGPe6sh8AhA0GUDq6a0hu6MCjTT2mVfI+ECIx5dtL1Ieq/stDUN
         xguQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kroah.com header.s=fm2 header.b=MSBvzVlQ;
       dkim=pass header.i=@messagingengine.com header.s=fm1 header.b=n69vDfmz;
       spf=pass (google.com: domain of greg@kroah.com designates 66.111.4.229 as permitted sender) smtp.mailfrom=greg@kroah.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Kg1sbuEhEzRKGeqFOGWDPGrbG3+7cXwaHpxE/E6j0Xk=;
        b=UBWb9+k5OkkbUzIKMHwKi4HXrkwqYX3Pc8K7SKCdIZkzj2D2BYoQfnB26S9ry5CvoC
         pJ6+uSNDBJBcoFlbWwOGl1lP3IsBXf/4NGMw9GJarl1n8ma1z2WbzN9dkwuKzW5ntG+0
         TlGAeX9GU82kyKsxBAabdN4LpHYmE6DiWf+RPz3s75xWRBouyd3nC+H9ZMneBOR6QRte
         /aSWlYWoiUr9JfV9CEvtRrzBc9KheFkmZ6HRb7jl9fSkak/oNb1KSWPpsgwr+M9YWdNr
         ANqeFeJx5QcT+/Ut/hGdJAFWTivcYXfQfk9iWrykdDrtP3swIMbJ9ysuIDzFcP/SLxqp
         w4Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Kg1sbuEhEzRKGeqFOGWDPGrbG3+7cXwaHpxE/E6j0Xk=;
        b=WWrC4lmc1MS9D4qykWMux9pwIDN9pU1qJ8LMxmioLZyjxbD3E/0p2QxJSQglEyDZvR
         pxP3HprH5UQfgvs8nyDna/PUQExX2beVC8LAQopc5fYXizpTVuIS/Hr3kE8UWl3FNgOE
         AO84vJnfDirxENUv6YH0OMjnDhy7CW5/P3olg9Bc0G30Y62TeK/MZsdHJ+0kcSnrgKzh
         tfnrJxzfjHfPQeb62HngYmQFKDEoj2R9pEND+EYZX1adFrA/RocHhZscSw6ngBHillZ9
         BA7/h+X0Zur8PhhQsV9wilChkbEd1jaxxA6VzWmh8WbkHn9vrdhZstWzcJoYTKm5K/NC
         rWLg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533OBs8U4/zgHLJSq2Q4G67PHX3tmFT8wlVkX1j87NhzazuYZYK2
	zkI1floztj5SRj4d9ISun+k=
X-Google-Smtp-Source: ABdhPJwn3m9N4uZhAgiZChz8E8gp2xU1A1pwKRTXxbbaRsLusti2BgdXIHboAk7jlqykFqBkAQgjVA==
X-Received: by 2002:a05:6e02:b41:: with SMTP id f1mr3491005ilu.257.1639997979486;
        Mon, 20 Dec 2021 02:59:39 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:c213:: with SMTP id j19ls342467ilo.7.gmail; Mon, 20 Dec
 2021 02:59:38 -0800 (PST)
X-Received: by 2002:a05:6e02:1c2e:: with SMTP id m14mr477025ilh.121.1639997978847;
        Mon, 20 Dec 2021 02:59:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1639997978; cv=none;
        d=google.com; s=arc-20160816;
        b=ytmVVn889xvud0gkOFtMN6p3MdGfldquCMz2f0ZrwiU074Wbxzyc8M+5Z6BWkixYyz
         JtwnOv9MwOU1PuLytiF5W9NmVEbC/Fak9zABArJJ73mMJjiAFUMtdZGcDh19iqRH0408
         AukJ99nA9pr0EnEBOjQF+2wOctp8JV1sCUgUEWTrvVoBkng2d4hZ8VM72jvf2qQC6xlT
         LqD5fOtvju1JUYqgFTlfrMJXHd7Y7A7hNcQX1BFZqkv24TZ8Bb+bKLOvouuFUrtN9LMd
         CrR3XQP3qwQvUGmPQrHTGJvzIGlhjM+V+SCa0FYCdTS0mTqQhvxArpH+KJZLpwWQA+Oz
         Id0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature:dkim-signature;
        bh=ZmOBdzc5KRY0yb6PF129oWRTs4gSGAWR2I8msz7i93s=;
        b=CydQ9aSBKU/CmXUWpEdQDuxLEWC5g8uwHdAwKfh/ANk5X6aGK8vI383kX9PGACPOHY
         PnPwd2BdA8IbZ+7oK5KWb7pHT4SroV1FNUczz6ZIvdXM2rAQ4lWjztcV0Lcf5GmgV3D/
         aKL7henkDRX65xj2LJ9lqoeM34/irCcavkLDPlRLa8BlxuauA/onml0bwJm5Ovmw+z2R
         rxPxjRZ6quyhJGc5gXXOPNGyHEB2oUl1yU6sNZUFlhK2KRoxqQy7MALbIWC704dCNbPa
         wf323IYwNUDCJlOLU55exnYRI++axnCeRZkotNbToGTcoa8k15rLA1qWSDj19HaIoUdy
         4e0A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kroah.com header.s=fm2 header.b=MSBvzVlQ;
       dkim=pass header.i=@messagingengine.com header.s=fm1 header.b=n69vDfmz;
       spf=pass (google.com: domain of greg@kroah.com designates 66.111.4.229 as permitted sender) smtp.mailfrom=greg@kroah.com
Received: from new3-smtp.messagingengine.com (new3-smtp.messagingengine.com. [66.111.4.229])
        by gmr-mx.google.com with ESMTPS id 8926c6da1cb9f-2fbfb77cf3fsi509277173.2.2021.12.20.02.59.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Dec 2021 02:59:38 -0800 (PST)
Received-SPF: pass (google.com: domain of greg@kroah.com designates 66.111.4.229 as permitted sender) client-ip=66.111.4.229;
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
	by mailnew.nyi.internal (Postfix) with ESMTP id 6BD435806B0;
	Mon, 20 Dec 2021 05:59:38 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute6.internal (MEProxy); Mon, 20 Dec 2021 05:59:38 -0500
X-ME-Sender: <xms:GWLAYcofNXoLjYKFElsgwmNasPLfLJL7yNeGPsuDh2aC0EwhlzGm8A>
    <xme:GWLAYSohXIVt6VREATy4BN9vZNqe-j2KfhxdkJIdiqfVB6hLDJuy9eeX-Ogr7m1xM
    mBFpZNxcFj-2A>
X-ME-Received: <xmr:GWLAYRMzHoR1nXOyoahqEYkOVxgWnaXAd11gUmHuxWKvm1cV742ePLX622tm0bL-hktukTS66gZBVY8-IYoNMmvXSVnpKYPi>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvuddruddtvddgvdefucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvffukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpefirhgvghcu
    mffjuceoghhrvghgsehkrhhorghhrdgtohhmqeenucggtffrrghtthgvrhhnpeeuleeltd
    ehkeeltefhleduuddvhfffuedvffduveegheekgeeiffevheegfeetgfenucffohhmrghi
    nhepkhgvrhhnvghlrdhorhhgnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpe
    hmrghilhhfrhhomhepghhrvghgsehkrhhorghhrdgtohhm
X-ME-Proxy: <xmx:GWLAYT49JjfvdmIGaLIcT5-qHjRE6EfmcmcH6zHalkpRA87qSi4WiQ>
    <xmx:GWLAYb6LuUvzZlzhTjjijU-3XZ-rKLjQTazrPIRl2Uv0QmEGwzyhfQ>
    <xmx:GWLAYTjQmwnWChH06Hs6taD9V1dASEmnmkBmKf1Clog6tNAk39W72g>
    <xmx:GmLAYeJ8a8fACbvHaFpncbIAzOfQaCGbBGbVfpSJ9dGAyg1HSmtcBw>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 20 Dec 2021 05:59:36 -0500 (EST)
Date: Mon, 20 Dec 2021 11:59:34 +0100
From: Greg KH <greg@kroah.com>
To: Anders Roxell <anders.roxell@linaro.org>
Cc: stable@vger.kernel.org, linux-kernel@vger.kernel.org,
	woojung.huh@microchip.com, UNGLinuxDriver@microchip.com,
	davem@davemloft.net, netdev@vger.kernel.org,
	linux-usb@vger.kernel.org, clang-built-linux@googlegroups.com,
	ulli.kroll@googlemail.com, linux@armlinux.org.uk,
	linux-arm-kernel@lists.infradead.org, amitkarwar@gmail.com,
	nishants@marvell.com, gbhat@marvell.com, huxinming820@gmail.com,
	kvalo@codeaurora.org, linux-wireless@vger.kernel.org,
	rostedt@goodmis.org, mingo@redhat.com, dmitry.torokhov@gmail.com,
	ndesaulniers@google.com, nathan@kernel.org,
	linux-input@vger.kernel.org
Subject: Re: [PATCH 4.19 6/6] Input: touchscreen - avoid bitwise vs logical
 OR warning
Message-ID: <YcBiFomrxSw1eEUB@kroah.com>
References: <20211217144119.2538175-1-anders.roxell@linaro.org>
 <20211217144119.2538175-7-anders.roxell@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20211217144119.2538175-7-anders.roxell@linaro.org>
X-Original-Sender: greg@kroah.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kroah.com header.s=fm2 header.b=MSBvzVlQ;       dkim=pass
 header.i=@messagingengine.com header.s=fm1 header.b=n69vDfmz;       spf=pass
 (google.com: domain of greg@kroah.com designates 66.111.4.229 as permitted
 sender) smtp.mailfrom=greg@kroah.com
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

On Fri, Dec 17, 2021 at 03:41:19PM +0100, Anders Roxell wrote:
> From: Nathan Chancellor <nathan@kernel.org>
> 
> commit a02dcde595f7cbd240ccd64de96034ad91cffc40 upstream.
> 
> A new warning in clang points out a few places in this driver where a
> bitwise OR is being used with boolean types:
> 
> drivers/input/touchscreen.c:81:17: warning: use of bitwise '|' with boolean operands [-Wbitwise-instead-of-logical]
>         data_present = touchscreen_get_prop_u32(dev, "touchscreen-min-x",
>                        ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> 
> This use of a bitwise OR is intentional, as bitwise operations do not
> short circuit, which allows all the calls to touchscreen_get_prop_u32()
> to happen so that the last parameter is initialized while coalescing the
> results of the calls to make a decision after they are all evaluated.
> 
> To make this clearer to the compiler, use the '|=' operator to assign
> the result of each touchscreen_get_prop_u32() call to data_present,
> which keeps the meaning of the code the same but makes it obvious that
> every one of these calls is expected to happen.
> 
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>
> Reported-by: Nick Desaulniers <ndesaulniers@google.com>
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> Link: https://lore.kernel.org/r/20211014205757.3474635-1-nathan@kernel.org
> Signed-off-by: Dmitry Torokhov <dmitry.torokhov@gmail.com>
> Signed-off-by: Anders Roxell <anders.roxell@linaro.org>
> ---
>  drivers/input/touchscreen/of_touchscreen.c | 18 +++++++++---------
>  1 file changed, 9 insertions(+), 9 deletions(-)

Also needed in 5.10.y and 5.4.y.

Please be more careful next time.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YcBiFomrxSw1eEUB%40kroah.com.
