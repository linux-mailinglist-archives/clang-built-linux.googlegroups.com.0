Return-Path: <clang-built-linux+bncBDYJPJO25UGBB45ZTCBQMGQEHCN6T6Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43d.google.com (mail-wr1-x43d.google.com [IPv6:2a00:1450:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 4644F351F80
	for <lists+clang-built-linux@lfdr.de>; Thu,  1 Apr 2021 21:20:20 +0200 (CEST)
Received: by mail-wr1-x43d.google.com with SMTP id e10sf3183900wru.13
        for <lists+clang-built-linux@lfdr.de>; Thu, 01 Apr 2021 12:20:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617304820; cv=pass;
        d=google.com; s=arc-20160816;
        b=sBql3/aI0A0hI4Up07+1QjQSIQYO4pENe/vPtD9kzMKZzwA1/JVcCt2t9QNlLQefvw
         NKUvKaSCN+tS4pGdWpVndRGgIjNC/854u8Hh5oeqQRY9q0Ophuoh72GjJOUbquTwQESs
         avcaw7gnjOEbivL8ehoorctHMMG/Z+0MHJf11MKJ/JR/tUEhvZj2f0vvOPng4kDyo3KA
         SjCifJ/b5cjdWcDRogeOMYg6AAOnA1XUfoNBpiINjhAwAWBkXdwyWj29ufQCi//2okaC
         3oT4RXk5IfT5NhdKr5gq8e3N8icmlrwAo8qft9ukRG07edSCbh6MZZxxGycEzHzMBVGr
         lfYw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=/TgCj0nTuDzqid1ymwiubOJi4HnIVoA65Yhz32NJu9M=;
        b=leqylZ+iXen/6Fve5rQpG7M4HI2I1IMOnYUuD5fD4ALmp7KlBqEGjrP/CRhFKc2j9b
         zXgI80x8R0XLBTHKhRLK95cT4yQJfRJgg5OeQXSTkFGo1D3IrLr++SnWXxJT2YL5DvJx
         7JGequTLAaFzgp7EOerDY1oAOu+i/M8LJMk9Zi52+tYyxVw1hvwJn+K76JBGtfftNyEE
         O6GKJf3B486eJ/nRqAIorzy1CeyP08R8EGLaBKRrCB6IwvZAeLsMmu4z6VMdbwAZ3/nj
         A8AAh2PhUdTFpW+V74iuYvecXrQ1lnGYWOY1KwFXPsHHf/yPlKvDggIOfDkn0KckbeFN
         ZDkw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QmqdxyzP;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/TgCj0nTuDzqid1ymwiubOJi4HnIVoA65Yhz32NJu9M=;
        b=BJhdgVa5AkPM2bXHksbselqegp++3PRLDZNySHstT0XqJcXSCzKMVJBrMW18jV5lXE
         fcUBJJIiAsi38FSGtPEQBvLpcOIQ3iPxF32ZzeVCuP8kCsSkOMBjcukqmeZRo1kjEMmu
         AMOIUH3xCqQy64RQuyuLfnCTYt6qzGuwN1hjKQHY6DaYU4TmGDlVicLsdZBNrLPEOMFE
         NT+oTWNXmg8xBCSVwK4DvopdID5VlzOXZZlw9XAGORT51N5u7JPr2JpqD8M51RV0ogzn
         +gQeobBHKVrGLN9NYVE7H5InDgjTCoj2efy7K6YOu3+vMFYlx/Gp5eCiQj7DQQEV+Dhb
         x6CQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/TgCj0nTuDzqid1ymwiubOJi4HnIVoA65Yhz32NJu9M=;
        b=P9jPX8eyykpYylfeAj+Uqy1P5Dw9M9qIunp0tRHZMCKeDQmnYGp1/X9QTSKmZ4+dvq
         dfAwb/lOM1nCpUdZIwBAJx4Kl7OIkqJ3pJILsuLbogEIEpo7GuFwZgJMdzh9oCF7AXjf
         0SsLJl1vIGh5PmlewrcQtcHR/9Ly9B621ZY/7EmTMaFO7FvB6Iy2ZMhTtC0dBmIUUUcB
         peKYCkEexcTaWVhG5Uyw/2lUBf0abq7YzooytTCHxzSQd5g4aDj6qRTRlAVATlY6Xw9H
         SfU5htLbApi2Otz1dugMI0LJNookNYeODTU6t+xS8sl1eb7oh4N0caPQsO7kZ5sHJLgU
         9PNg==
X-Gm-Message-State: AOAM532Sqr4dF98mpyhPAHptd19cxmlXb+sfGiGN5yqhepnovhupFQFx
	i56oyeYyPuEFwA8SxmHvhEI=
X-Google-Smtp-Source: ABdhPJxQ2PQQXTAhTw3dSlG/Tj9l+A2o6PUBW0kFBvwI0OYfKx57Hcj1dxfeelcuXgtpBQ3s59/Tsw==
X-Received: by 2002:a7b:c841:: with SMTP id c1mr9497875wml.123.1617304819996;
        Thu, 01 Apr 2021 12:20:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:58f0:: with SMTP id f16ls2314520wrd.0.gmail; Thu, 01 Apr
 2021 12:20:19 -0700 (PDT)
X-Received: by 2002:adf:e5cf:: with SMTP id a15mr11248858wrn.226.1617304819186;
        Thu, 01 Apr 2021 12:20:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617304819; cv=none;
        d=google.com; s=arc-20160816;
        b=ak4rXXb0QxWJZzt1X9bdBDOINdE85mNGiuTjVIU2AjcyCWY9dNegRUPr9Dc9ST9VKJ
         ZfuwwbFqwMj2uxggIjZGIIbvYzKcJBbStcNORlYJgXHTnjmnJ2fVJIrAtjCKhLuHIPfP
         m5aVUQ9ltgTdD34VDbgl2NpGnIlY+tsrTL5tU6g9CyO5Nqs6wFXBC2mUJNazBNyjSXq5
         1O/s1vfEg+NKgcgOioVIDsDm1IW1f5DonkQh+oqvTuJ+ONJpXnJGozKbZUFLjonBH1+A
         6StGhC7bfKG4j/JqTPk6j2MdplElbL+H2s2PLkvPnMSm0d6R8TSee0XN5y8wylVfK72N
         wuTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=2MKyzSSqO2qBztJ2FSmZOVAwJM0w+9zEU56Q2e/9BLo=;
        b=FN4HV0t9OhGeIWz04YQyvBR2PGuEDJqXxTPbGpdFGUJLNbzuFkse2k1zw+4MsmaZFu
         zhx/6EQ4ET1JytmqorpkashTs9ACqiTvisnt4PT4jjRX97/XZk8E23dKmb58gWhQ9C4E
         s4CmseI1xX2b9gdJdWFA9dsHszhqUVVOtTudvpVWfvVyHrPYJTD1ZHovYL2037gsouxW
         LMkTqa3tN3acqIUZtjO67S1+N5A16GbN0GDONDr0o/9ox7eyxOKAS4sgNihVRa6j3cx+
         XKo4FeG/lyk3BSMlfBnLFm8aCe2VgR2JR8P0jZxCOnkZeJAOFbU3zGVxDGkEBU5rzAtB
         AMug==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QmqdxyzP;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com. [2a00:1450:4864:20::12e])
        by gmr-mx.google.com with ESMTPS id r11si877850wrm.1.2021.04.01.12.20.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Apr 2021 12:20:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12e as permitted sender) client-ip=2a00:1450:4864:20::12e;
Received: by mail-lf1-x12e.google.com with SMTP id n138so4447862lfa.3
        for <clang-built-linux@googlegroups.com>; Thu, 01 Apr 2021 12:20:19 -0700 (PDT)
X-Received: by 2002:a19:5055:: with SMTP id z21mr6348381lfj.297.1617304818735;
 Thu, 01 Apr 2021 12:20:18 -0700 (PDT)
MIME-Version: 1.0
References: <20210401162032.10150-1-maciej.falkowski9@gmail.com>
In-Reply-To: <20210401162032.10150-1-maciej.falkowski9@gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 1 Apr 2021 12:20:07 -0700
Message-ID: <CAKwvOdkqExnM=HpPDoj+40MDA3Wyv+oMGDD5MQq3Si2ehfT=6w@mail.gmail.com>
Subject: Re: [PATCH] usb: isp1301-omap: Add missing gpiod_add_lookup_table function
To: Maciej Falkowski <maciej.falkowski9@gmail.com>
Cc: aaro.koskinen@iki.fi, tony@atomide.com, 
	Russell King <linux@armlinux.org.uk>, linux-omap@vger.kernel.org, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=QmqdxyzP;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12e
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Thu, Apr 1, 2021 at 9:21 AM Maciej Falkowski
<maciej.falkowski9@gmail.com> wrote:
>
> The gpiod table was added without any usage making it unused
> as reported by Clang compilation from omap1_defconfig on linux-next:
>
> arch/arm/mach-omap1/board-h2.c:347:34: warning: unused variable 'isp1301_gpiod_table' [-Wunused-variable]
> static struct gpiod_lookup_table isp1301_gpiod_table = {
>                                  ^
> 1 warning generated.
>
> The patch adds the missing gpiod_add_lookup_table() function.
>
> Signed-off-by: Maciej Falkowski <maciej.falkowski9@gmail.com>
> Fixes: f3ef38160e3d ("usb: isp1301-omap: Convert to use GPIO descriptors")
> Link: https://github.com/ClangBuiltLinux/linux/issues/1325

Looks consistent to me with other callers of gpiod_add_lookup_table
from .init_machine callbacks.

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>  arch/arm/mach-omap1/board-h2.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>
> diff --git a/arch/arm/mach-omap1/board-h2.c b/arch/arm/mach-omap1/board-h2.c
> index c40cf5ef8607..977b0b744c22 100644
> --- a/arch/arm/mach-omap1/board-h2.c
> +++ b/arch/arm/mach-omap1/board-h2.c
> @@ -320,7 +320,7 @@ static int tps_setup(struct i2c_client *client, void *context)
>  {
>         if (!IS_BUILTIN(CONFIG_TPS65010))
>                 return -ENOSYS;
> -
> +
>         tps65010_config_vregs1(TPS_LDO2_ENABLE | TPS_VLDO2_3_0V |
>                                 TPS_LDO1_ENABLE | TPS_VLDO1_3_0V);
>
> @@ -394,6 +394,8 @@ static void __init h2_init(void)
>         BUG_ON(gpio_request(H2_NAND_RB_GPIO_PIN, "NAND ready") < 0);
>         gpio_direction_input(H2_NAND_RB_GPIO_PIN);
>
> +       gpiod_add_lookup_table(&isp1301_gpiod_table);
> +
>         omap_cfg_reg(L3_1610_FLASH_CS2B_OE);
>         omap_cfg_reg(M8_1610_FLASH_CS2B_WE);
>
> --

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkqExnM%3DHpPDoj%2B40MDA3Wyv%2BoMGDD5MQq3Si2ehfT%3D6w%40mail.gmail.com.
