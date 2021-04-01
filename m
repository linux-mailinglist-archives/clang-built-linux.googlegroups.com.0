Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBAPQS6BQMGQEPPHRQVY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3e.google.com (mail-oo1-xc3e.google.com [IPv6:2607:f8b0:4864:20::c3e])
	by mail.lfdr.de (Postfix) with ESMTPS id F40B93516BA
	for <lists+clang-built-linux@lfdr.de>; Thu,  1 Apr 2021 18:42:42 +0200 (CEST)
Received: by mail-oo1-xc3e.google.com with SMTP id a8sf3037740ooo.14
        for <lists+clang-built-linux@lfdr.de>; Thu, 01 Apr 2021 09:42:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617295362; cv=pass;
        d=google.com; s=arc-20160816;
        b=treqw0BWuGH+/7bObV31ivX6CDE/KJDYLAdE3BvuGHsyO+jLdHqcSUGv3UKKhGgm4B
         As2n1byeq4UQ1GX18tynIPfaDrjsGhg0lcW5kdLFQ1PyAdbFzLrNfTel6FFLqL+uoV7Y
         uVREIs+UrwfN5+x2EzvcxABtWDgOWE6xiOgRmdMUGbZxLFuAICENP3kydwETxP8ndJzT
         nX7lt+gqxmnaLQatLKrSfflxQgvpIfBAIx/hj/psdGkXugdogchr8mmSCX97qyhCD8tf
         RGcEGbGEYiR6Oykd3F7snm7DKbYyZ/WFmyC7cv0fCUf+yUdG372uaCp6QzIFVJe8P2sE
         vn5g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=n8EeH4LhqA3trslMp3po7XOmbrLn1CA0idsmuWe0mTU=;
        b=OOe7st416mleGqGqgy9XNRhllWVvuiEDMWSvWHSVlcp1paJE1Ghpr2MN54if1v0bPy
         JKerpvpd1mnUZiPM8fO8B4mL5+5VTcTFSeyEK3ZeyoVXHwmmaRaHXWK4Lh2FBkU1CzqI
         3NWCqdTP2xncuieJIc3HpEuCkrQJBRGB7S9TinicNn8p4TTX0REnfEGsAjjdIxN4z7uu
         gn869FwyqAovwWiS1rZnnDfzc0CLeMAEMjGBNeGGr/1s6UTisWl4n/qtK5nVj8mi//Db
         /6eJEsD4E01sieNM0eXmx9RyccmU0b0AV0cr6iHkonxZTeziQQ0EXqHDMWfACDYmvsK/
         PUtQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=uy4xXAI3;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=n8EeH4LhqA3trslMp3po7XOmbrLn1CA0idsmuWe0mTU=;
        b=I09pmp6D0HB7Dt+28lYOC/CefxGulX63WjFcQOz1Ev+qN2GsSt6yHqdn6bhUQwQ7mv
         2ol1bC3r2cw0yw+L1GlKLWWnOkvDKkOp0Pg3Pp5Y2GfPauqJryCuXGjRDHuDEqdhOJKN
         UYv87NVk7/sh5xUNHJtAGtTHZX8GDwsI0rtDbSwXEC3acqFswqqz6TKbKTgGGKcjKW4b
         3EeWdmOrlsjCCk1o7p1KEI4sPaHn6G3GyAdfj0QS4AoKGLQ3lsrSdsIzolyR30tTmZsY
         NEvtl3x6NY2sR4UGim3oWlneIRd6k/vvieSeMva7WUXcDiBQ8C0afpNWhobzAvsbChXO
         UzaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=n8EeH4LhqA3trslMp3po7XOmbrLn1CA0idsmuWe0mTU=;
        b=q29FGv2ZfyYXtx1E4DJhdO1Lk8ep5DqGG9XRaoD+6cOQkHu6CEXlqUVAzsztXo2TsS
         2Hks0xJsT4PBqSeMXaunpqpTgnf/FWI1w+YUH4T7uUsU8yAlyWv3HDJb8yBTnSjyvh41
         00lZgcuPxWOcSnhmDfcWBwtq60284j+4vdJHPgeXOu0Sc//YAkWLL1Jdu4YaIg5irzzg
         bFlx5mL13/uO64jBsHHzDzDMExMhrXdNgtAidl6DKpjl8BCx0BrxmZ4ciNRGQ6yKaRD4
         zkeDWY7+bnHOfyPdklTxQgSJ6kqqnvtv8sqC/wMgKer0JcQjoqyiyXDQeQ4uCsY7+ZbE
         U4rw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533EGVyqeHCfN+WujPz480ux8NQ6SrwkrvqBeE/2J+zePYPXydRk
	BkeIEx8deQ/iUU10nf4o8HI=
X-Google-Smtp-Source: ABdhPJyGvGuzhVYOqEu0ZFFn/fUHr3kRYn0GZdt9yB1ip7JoZFw4O1wx0jjILfDC90arQ3EFncMC3w==
X-Received: by 2002:a05:6830:348f:: with SMTP id c15mr7778974otu.138.1617295361902;
        Thu, 01 Apr 2021 09:42:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:7341:: with SMTP id l1ls1523736otk.3.gmail; Thu, 01 Apr
 2021 09:42:41 -0700 (PDT)
X-Received: by 2002:a05:6830:1c2b:: with SMTP id f11mr7914276ote.125.1617295361541;
        Thu, 01 Apr 2021 09:42:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617295361; cv=none;
        d=google.com; s=arc-20160816;
        b=J+Depl1UZ46os2+KZrV/QDZvyM1N8YjV4/IuSmWf2TRAEi2hfbs3Ljz7QsrAHZZlDq
         G+SRIH2inFEpJH/1UsaXgvuJA3hdhjM7iSUVpkzvEIKORylPiOnEDMEqto+yt22//mUc
         SfWvMfUBT2oRqnozIZn+J8iy2rAwkjsLgH8AaByUm256MdFOJGdfUdeMn63Q3l9dpJYm
         jSq7WuJWwRFjQkCj8f5T5bzRGjCYcxWicuHMMK6qH7jdYuYam+NJdbxuRR8ler3Fn0kO
         qGndNiTabTZSh/bZ+T1u5X2r5qkAnYonnhU/50Qh4t4ouQvuXTMVKsxbuCM8UyPChcZY
         WbDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=GAS0YPx/kEjPREd9tjIsix5qwJrtpziZfMI1HHIGFpA=;
        b=Vp65qHivFgt79++9uT5GDfSCSzGLSLQrpV2nMfcayO8OtXZnIUnA2eFITE5294qBtW
         I7QW5hhku7sE+w8HFBKhNOVwM13rJEjNEjiztSgF9eEMxuATNWc5eM6DRomTdxjbchsK
         ha3TU5IkJ3lZkr6KsUbitWxJwUnGs9jW8iTn+Re4PjgzB07T4MRo323NEJpNsLbz3swO
         VfaOASQgnUSX/DFdZAyHubGBa3+IzZ+Lx25FcFgm7okzUu0IAoWFgm9Pr8oVnkMe8+fx
         9W7/YOV5EN9CyoevELU+IBk0JvzJS3JxcCTJqL+Ci3Z1DLSeWTKHkKztf5F7x8sKjKnc
         y3Rg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=uy4xXAI3;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x38si616725otr.3.2021.04.01.09.42.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Apr 2021 09:42:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 29D3A61387;
	Thu,  1 Apr 2021 16:42:39 +0000 (UTC)
Date: Thu, 1 Apr 2021 09:42:35 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Maciej Falkowski <maciej.falkowski9@gmail.com>
Cc: aaro.koskinen@iki.fi, tony@atomide.com, linux@armlinux.org.uk,
	linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] usb: isp1301-omap: Add missing gpiod_add_lookup_table
 function
Message-ID: <20210401164235.cb6hrx55vkqiuvz2@archlinux-ax161>
References: <20210401162032.10150-1-maciej.falkowski9@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210401162032.10150-1-maciej.falkowski9@gmail.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=uy4xXAI3;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
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

On Thu, Apr 01, 2021 at 06:20:32PM +0200, Maciej Falkowski wrote:
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

Thanks for the patch!

Reviewed-by: Nathan Chancellor <nathan@kernel.org>

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
>  	if (!IS_BUILTIN(CONFIG_TPS65010))
>  		return -ENOSYS;
> -	
> +
>  	tps65010_config_vregs1(TPS_LDO2_ENABLE | TPS_VLDO2_3_0V |
>  				TPS_LDO1_ENABLE | TPS_VLDO1_3_0V);
>  
> @@ -394,6 +394,8 @@ static void __init h2_init(void)
>  	BUG_ON(gpio_request(H2_NAND_RB_GPIO_PIN, "NAND ready") < 0);
>  	gpio_direction_input(H2_NAND_RB_GPIO_PIN);
>  
> +	gpiod_add_lookup_table(&isp1301_gpiod_table);
> +
>  	omap_cfg_reg(L3_1610_FLASH_CS2B_OE);
>  	omap_cfg_reg(M8_1610_FLASH_CS2B_WE);
>  
> -- 
> 2.26.3
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210401164235.cb6hrx55vkqiuvz2%40archlinux-ax161.
