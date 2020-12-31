Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB7EPW37QKGQEWMLX7EI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13e.google.com (mail-il1-x13e.google.com [IPv6:2607:f8b0:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id 959432E7EA8
	for <lists+clang-built-linux@lfdr.de>; Thu, 31 Dec 2020 09:12:45 +0100 (CET)
Received: by mail-il1-x13e.google.com with SMTP id p10sf17255823ilo.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 31 Dec 2020 00:12:45 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609402364; cv=pass;
        d=google.com; s=arc-20160816;
        b=XyBvnPyjNaoTcvC2QwLSKbl+AaPNQRL/uRRe6+Vq6vW8XUNTtDVnO6cCO4o0uZtW5F
         L2K5/CxJNyppI7OiCN8CJt0M7EzOFfgLFYJ72IxjV7NpzWgiv4GzM/D9f3POd3HJ1ZCf
         XqYjnIDv2eR78kW+wjREVWqqz3Rv9df2pLLe3V8I82cdk9SaJ/5IedWQ60Kfs8CZRXdc
         ZQKSDvQ3LDCjA7wfPXp/NPsqE+Ezzk/Ig0xB1Rj5fX1FYdWlETBV/G5GPVevcDuWMo+N
         RZatKCWiuDcZ2DnpoDIylkdgEX0bT8s6PoTvqY310Ob1wEJNAZuYV5Rrl0MT91wLgis4
         dxBA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=buOHBfvKBLMWaf6VaIqHw2yTpHmZW+wyy/JHnkOyMfY=;
        b=JT5lisKiSbHxYgfzI+R+yarOQMJFysxx6kL/yHoj2UWo2lZ2erfI1pab1KT1n65wu3
         YNzqOcn7Gcu+EHUGYgK7CIi3tH6w+2FyM6SFmz0qFS7nEDoDYFWmYAIGlIOaC6Ef2WX/
         xcVUWkmZkjPdq6A9IHa6Y5RI2qNzTYjg37CgDDnj5Sx/j5XbuV5AlUnjVksBb9aFDf3C
         4ovr+yqaMDxSnvWvhZeZTBWuPGp6oiJaD0FyihxysrkyycrmWC9EZv/UQr0c3DhDD3Ar
         uJPiRw3os03gAd7ObPYC5Miwe7J9J4e9E2Mcr56kTW+2q/laqpZzHWshW09HC0k1vysL
         yCGg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OkZtmlJL;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::129 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=buOHBfvKBLMWaf6VaIqHw2yTpHmZW+wyy/JHnkOyMfY=;
        b=FcBVcHclm9w6Tvg5gxw/sRdqUhtu2I5tiggA7K5Sly2UjJXdOjMHkFqYzgK6P9nPoY
         hd/23cz4gHHAkM+DFjWKn0ZUMa2HV8mtaEWwIjF3dwiJTxZhxtE7nuKIb+MtWTfJXwCW
         Z9E4P35jJD0wSv0oR9ruJ0J0U1q5X5UclgRL8kqdX2m8yFbSeb+cA/kEU73tHUbaXpYk
         w1pNCPvw+/QUwHHIqOn4kNfGtKbUJIXUcQ11aq0VW+FYqvAemL7XyBc9fEMUckr5NlA3
         FIVK19iwmHJQzgXNOucANPqYYUO2RDiXABKCYzwU6s+iSU48dfEAbqAXpkA3Lo/wdSPI
         tcjw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=buOHBfvKBLMWaf6VaIqHw2yTpHmZW+wyy/JHnkOyMfY=;
        b=agMPiyy8SOmiZhUxUzVjP118LVpS1tdQrsntmxfxjlHzeA8U7Qfuo8ceifYh6mu61G
         v8oKUrUJ1iBoXpQXV0SuAp5p/CZeF4QEDbtra1oBu324wZqMbx7rVDa3ziwnh+QQjZjN
         l/nzkV2Z3paPTOl8/VPy/syZgJElpRts70YsBVY2T4jXyUEtXA8PI07QlVN653AUd4zO
         lJjrydm6vHm070Ky8zzFyewa4rdyB86VhC+v9Fn6ugOUpuI6oksLZ0R1Xb5I/z+rHLu2
         EdXwdVHz4QOI3e1VRCM6NbCRYDJZKjRN46w8Gbp88Vm6SJYJdZkFyEwZj6aHl5K4U5Ps
         hlCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=buOHBfvKBLMWaf6VaIqHw2yTpHmZW+wyy/JHnkOyMfY=;
        b=iFXB4K03q2ZtUTRSu+7Oueg2cf74bl+wT5u21zwo8UyqY8qbcWLyBazLVCiqUkEYae
         U65Z/7b2OsdLqSLjRlHkaasZc5mrnAfp0/trwR6hD1GIL0LDgXyke1XW9feOvV55ifKm
         UMPwLwoW6xtNZDc4NPfUbc4oSf6ttvkLFn3yK5S+O0FEjqIm2D6c7mjpZLImieO107Yo
         04IjXIBWuJFjKCNXv4MobTFiyh/UqA7xpA05sWMfc+BIbclH1T4rzio0vBX3j+wMgT03
         DTqaUgC7SN4+tRq3Na5X4eVF7jrGFRayEPB0WnfrnD3Ul+YEcikFccFQ98DV2F9UG5FT
         PQ7g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530JaWwxLBJw4xFmrnjRi8wVxW2TeOISDAZO+gYK9AkfbYfXKaVP
	QD2hBR1lbwMl55oTaLOpyYk=
X-Google-Smtp-Source: ABdhPJyR4lkBYCc+b4Is7VD4bEFswmFKkTSgBrebPIgULnO5S2UsUUZeK49GPdxtArsAKa5luYOWaA==
X-Received: by 2002:a92:d40a:: with SMTP id q10mr56491773ilm.20.1609402364317;
        Thu, 31 Dec 2020 00:12:44 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:9914:: with SMTP id x20ls10149675iol.7.gmail; Thu, 31
 Dec 2020 00:12:43 -0800 (PST)
X-Received: by 2002:a5e:9812:: with SMTP id s18mr46315701ioj.138.1609402363900;
        Thu, 31 Dec 2020 00:12:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609402363; cv=none;
        d=google.com; s=arc-20160816;
        b=oXtrE71OfyrQdGL5fJDxDYRI4TaF/gHP2uGGTxevYVweVy9uCvmIR32w//uzfPPiDn
         tiNpRPz1HphQOOLl/vhMjdn8Mfd/dWr8jWLjs0g24gbNG1ScklFfQPz6w+6StSCyUoYH
         6c/HPdWY15ggYZWpjdJF7tknsK5Yw7ZrlfBNV16rqqVAXWeWGcasTazpU8vxCf6VgDud
         hniFck4xAV/5gQlrVUjUmenbWGA2tmLzkZJeHMK1gDuAEYrDqpmKb65gBnrQbjbEPni8
         2sM1VOHljEQCWoQx6dr5Xd3u8vD5VV8pXgmGX1OuHNy+21qugi6KxUGBv3/uvaH8gZuV
         mihA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=t3sCvs+FLAqfEmFOY3gSWy3C5FD079L2BEMz5q0+2bY=;
        b=UTgyjKucKXDhnWQIudn/EuV3OH4SNzTsR+bqy08x3fp3z9WkGo3fgKa0JRhh4z26vH
         AK/udsAiWesMffo9rwKz88VYEURVZx6tI7qqkVgEn3d72kyX/0p/ppl+NiXuxIdvcXTy
         yRmv3ZieRERjMM7L498uEd7qoIzZng8hoCUI4VIdLKKw2uPFtUdQ86B9FS/1w2QoXQid
         b0Tr4Hk18FHokMEmwxdoUhQBBFHMatxqXbf88MXYu0EpQSEkl8K/Ix7GuE5h9REDvZ0y
         mK1irQlp2+VkcUeQTZtgt2chzutqjU2wbmnsQ0r/SciSD48MrjpIeguo77LltW4NWXD6
         7ytA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OkZtmlJL;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::129 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x129.google.com (mail-il1-x129.google.com. [2607:f8b0:4864:20::129])
        by gmr-mx.google.com with ESMTPS id b76si4067605ill.3.2020.12.31.00.12.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Dec 2020 00:12:43 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::129 as permitted sender) client-ip=2607:f8b0:4864:20::129;
Received: by mail-il1-x129.google.com with SMTP id e7so13111717ile.7
        for <clang-built-linux@googlegroups.com>; Thu, 31 Dec 2020 00:12:43 -0800 (PST)
X-Received: by 2002:a92:8404:: with SMTP id l4mr54964892ild.49.1609402363602;
        Thu, 31 Dec 2020 00:12:43 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id r10sm32437881ilo.34.2020.12.31.00.12.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Dec 2020 00:12:42 -0800 (PST)
Date: Thu, 31 Dec 2020 01:12:40 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Arnd Bergmann <arnd@kernel.org>
Cc: Timur Tabi <timur@kernel.org>, Nicolin Chen <nicoleotsuka@gmail.com>,
	Mark Brown <broonie@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
	Xiubo Li <Xiubo.Lee@gmail.com>, Fabio Estevam <festevam@gmail.com>,
	Shengjiu Wang <shengjiu.wang@gmail.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	NXP Linux Team <linux-imx@nxp.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	alsa-devel@alsa-project.org, linuxppc-dev@lists.ozlabs.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] ASoC: fsl: fix -Wmaybe-uninitialized warning
Message-ID: <20201231081240.GB1970946@ubuntu-m3-large-x86>
References: <20201230154443.656997-1-arnd@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201230154443.656997-1-arnd@kernel.org>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=OkZtmlJL;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::129 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Wed, Dec 30, 2020 at 04:44:15PM +0100, Arnd Bergmann wrote:
> From: Arnd Bergmann <arnd@arndb.de>
> 
> Clang points out a code path that returns an undefined value
> in an error case:
> 
> sound/soc/fsl/imx-hdmi.c:165:6: error: variable 'ret' is used uninitialized whenever 'if' condition is true [-Werror,-Wsom
> etimes-uninitialized]
>         if ((hdmi_out && hdmi_in) || (!hdmi_out && !hdmi_in)) {
>             ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> sound/soc/fsl/imx-hdmi.c:212:9: note: uninitialized use occurs here
>         return ret;
> 
> The driver returns -EINVAL for other broken DT properties, so do
> it the same way here.
> 
> Fixes: 6a5f850aa83a ("ASoC: fsl: Add imx-hdmi machine driver")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

> ---
>  sound/soc/fsl/imx-hdmi.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/sound/soc/fsl/imx-hdmi.c b/sound/soc/fsl/imx-hdmi.c
> index 2c2a76a71940..ede4a9ad1054 100644
> --- a/sound/soc/fsl/imx-hdmi.c
> +++ b/sound/soc/fsl/imx-hdmi.c
> @@ -164,6 +164,7 @@ static int imx_hdmi_probe(struct platform_device *pdev)
>  
>  	if ((hdmi_out && hdmi_in) || (!hdmi_out && !hdmi_in)) {
>  		dev_err(&pdev->dev, "Invalid HDMI DAI link\n");
> +		ret = -EINVAL;
>  		goto fail;
>  	}
>  
> -- 
> 2.29.2
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201231081240.GB1970946%40ubuntu-m3-large-x86.
