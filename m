Return-Path: <clang-built-linux+bncBDYJPJO25UGBBT6AX7VQKGQEGTEAS6Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3e.google.com (mail-yb1-xb3e.google.com [IPv6:2607:f8b0:4864:20::b3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BE22A8653
	for <lists+clang-built-linux@lfdr.de>; Wed,  4 Sep 2019 18:03:28 +0200 (CEST)
Received: by mail-yb1-xb3e.google.com with SMTP id j17sf17274175ybm.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 04 Sep 2019 09:03:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567613007; cv=pass;
        d=google.com; s=arc-20160816;
        b=twwRZVlcq5xUkcCPXWOj/IrYBhl2bSh0Gqa5KDZwEX2YX8VwwAUvIcGyXoapmIWH2Z
         ywgLOM/oGIjDeKUiLOAQAWyjw7gk3hQDaomwIdqa/4CPp+In/6WVfyMNTlI6vYyHtQAn
         diUMthriHao3lBLqVoAzQccH4QL0ISZonJMkh1e8k/cwCGClzNISojTFczsPNPMa5bSm
         aMLgDrxoKeyFykMwIlollegbs6IAxk/l1O0kImbjpRItcIq0fKQLj0JVq2GMFH5jFQo7
         Gv2IZRdNKm9Iz+cdiO0nteKmvxAMCnrQYVT3vfo+deDDGaqmcUQ3YTpgEG4GiUVDqCgr
         SR4w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=eqKFgnkzZBiH0S3xvMALei9kpDMBcfQGcjoWR6/2F+k=;
        b=tvAYWUOF/dOFLUsEorQqTZ4PTW3Zd9Ho4VTFYeGm6cqlnStSmQNZ2Zvdjd7BdreEvc
         7HYJLwmhxOf6VRSxGD5x6HTAalSjyOJ71TxMxujHvLNsdAl5DHGacJorzh7mjDhTxSRf
         sjaEs5ryooQzxKqyo/IXnxkYT1/cVu4IaJW/UA3Qzej5vklPR7L3UIu7e9ydG55lSK7E
         uceyu02qGrY/jS4NDg4p5QnIiEDd4OwPFrezfwPDqZfoDqOGIc5RR9cuhfhm+vTa6K2t
         0MKn3cQXVvX8jkd79ILA2ul7mTo2D8lKjxZOrLpCMQq7KG8gGg1sZe3GWF1d/LbNfEP2
         ZH+Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=aXZuvHa1;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eqKFgnkzZBiH0S3xvMALei9kpDMBcfQGcjoWR6/2F+k=;
        b=Co98nkhVpY5vtKSucGK3eh3hLFxxc3/Pm3xcTeVcKb5hDnKeubT1NqeZbMQtPEQUD/
         9T7kk6Hn9x1BLGwKnbVqKcqWycYyLaNWMI/TkN07qiiQ8oUg3V29atB0VBfHBpVOBGqG
         kYzGkLNzai7+AP15PDfgh3PqcGL6AjGOb5B0pNzk/Ara+bvQ6nvgP38Z9+U8705sqZyT
         6P/6yFNR6E5bcXGcuO3oMrVdf6/abEdcpTDbxuV+tbl3bprDb7iH0x3V0ttUj7G3OFxs
         LuKbQRpsV9UnPtmeMc8HjiiA7ygXxuNEmsG9IAluMww3FrOQCc41JGW56+ZU6Fu7XwZI
         Dhlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eqKFgnkzZBiH0S3xvMALei9kpDMBcfQGcjoWR6/2F+k=;
        b=YfrUqveactt0sackOtiQxtjhlWujF4lXPvprKegahSUH/R+qLctIaBwrmGCeFxmplK
         RXBS9VjSMjUJ6d6ngdjCjwLWzoks+bZYGtFIT0AChdJHT+MxTttTGx2TpaaKqhKbc85c
         BdiekB3d6tiwHZj+OCqft5wIJyki5wG70gLpIXjz/u8bBsUBmO87MiNgzR8woTYaOv41
         u/8ZzqqefoyHOkucXJo+bAS8KDNh5ankz4Dicv/bRLbEDhKztkbgLHGkxDpC9jOmR9nY
         YgU4jsbjspk72EgJLl7BcwGHbpr7otXrhxOdohtm1vdt3R9AtOfXmMoDoo7moFLsVGqz
         d+Sw==
X-Gm-Message-State: APjAAAWIjf7kR1duKPh3vmSUegdbxv74yTAn4mJmmCZNtm1PqnSotScH
	I0ug/nfpeaD1HRr9lcfDOzc=
X-Google-Smtp-Source: APXvYqwezcgWKby4HFSRm24Uwlvu2xopOI26DE1cvFPkhHMlAdoFGUg1K1wEIAJ8t5cnvqzZ8XZSUA==
X-Received: by 2002:a81:2e45:: with SMTP id u66mr28755179ywu.410.1567613007518;
        Wed, 04 Sep 2019 09:03:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0d:e64a:: with SMTP id p71ls2259633ywe.11.gmail; Wed, 04
 Sep 2019 09:03:27 -0700 (PDT)
X-Received: by 2002:a81:8405:: with SMTP id u5mr30285582ywf.118.1567613007235;
        Wed, 04 Sep 2019 09:03:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567613007; cv=none;
        d=google.com; s=arc-20160816;
        b=aEtz6OcwXjg6+5V9twNmfonoB92RQnAMjc0gybMFu2EPIlL/hzpPaqtlWLfcQvAvPt
         /FJWluRvDYH+ysj2NiTPtdMAN2i3BkFdKh6JF6CAjgxie2ItRKYS25fbhRBhShkaECmK
         ZWTFrj+d8lqPic3vvfqo9KT2S4VaKhinoBQA6XG9NSOqS377i5WTKgIbivbPIGK42/7q
         TQTn46vqP1wq0gjBLabpE8+lt2rm1dhBPp/GUxchfWEDAWrsxqeTdOjAfc67UFWoCa8/
         IbmQVpfnBlLetzp1XeOSkWpWZwX+ADc4UkNhEjKhAXsBYt4mbgcFEC7ORo2Vh23HfFhl
         3F7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=HUu7jEYknwWvPxSIww3cGcFcBMCEyjRD/qWIx9TD3dM=;
        b=jmY1msrCiR62FYSNzllEn2Gr4jqgfPHl/UwD7FTM/fL90G29aUFGFxPi3iqpsDyddD
         z711uOjq7SAWpx8NnxOu9U6mlP1bTOAD59aMxR1VN5A/L+s+m/jCVCt890ykKu6vMlnZ
         yPPKsgBPKy6Wqji408cbj0CwosAl89gEDN1vHkkc9PvPM9Yrtz4TRbnzCSRF2YRGFePt
         OxWGvi/cGFxKsJ3kzBwB6brJpAwrFU3K+TX3O4PHE+Qj8JsxoPcKN0TSh1A4V1Z5udU2
         hM3qkYlNS8Z7nuqyJc2SaioTwfzl+YFXqV2U/tfJD/D8zfIAGYbEA7uZMGZ48l/eCXpo
         jwEg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=aXZuvHa1;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id g203si1167467ywc.5.2019.09.04.09.03.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Sep 2019 09:03:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Received: by mail-pl1-x644.google.com with SMTP id t11so3681550plo.0
        for <clang-built-linux@googlegroups.com>; Wed, 04 Sep 2019 09:03:27 -0700 (PDT)
X-Received: by 2002:a17:902:8484:: with SMTP id c4mr41196596plo.223.1567613005847;
 Wed, 04 Sep 2019 09:03:25 -0700 (PDT)
MIME-Version: 1.0
References: <20190904160039.3350229-1-arnd@arndb.de>
In-Reply-To: <20190904160039.3350229-1-arnd@arndb.de>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 4 Sep 2019 09:03:13 -0700
Message-ID: <CAKwvOd=udH0NLaz_+PbJ4ANyoJ3gGKZ-gsfTJ3xDJOqpsO1y0g@mail.gmail.com>
Subject: Re: [PATCH] bus: imx-weim: remove incorrect __init annotations
To: Arnd Bergmann <arnd@arndb.de>
Cc: Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
	NXP Linux Team <linux-imx@nxp.com>, Sven Van Asbroeck <thesven73@gmail.com>, Rob Herring <robh@kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Ilie Halip <ilie.halip@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=aXZuvHa1;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644
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

On Wed, Sep 4, 2019 at 9:00 AM Arnd Bergmann <arnd@arndb.de> wrote:
>
> The probe function is no longer __init, so anything it calls now
> must also be available at runtime, as Kbuild points out when building
> with clang-9:

Thanks for the patch, this has already been addressed in:
https://patchwork.kernel.org/patch/11114307/
https://github.com/ClangBuiltLinux/linux/issues/645

>
> WARNING: vmlinux.o(.text+0x6e7040): Section mismatch in reference from the function weim_probe() to the function .init.text:imx_weim_gpr_setup()
> The function weim_probe() references
> the function __init imx_weim_gpr_setup().
> This is often because weim_probe lacks a __init
> annotation or the annotation of imx_weim_gpr_setup is wrong.
>
> WARNING: vmlinux.o(.text+0x6e70f0): Section mismatch in reference from the function weim_probe() to the function .init.text:weim_timing_setup()
> The function weim_probe() references
> the function __init weim_timing_setup().
> This is often because weim_probe lacks a __init
> annotation or the annotation of weim_timing_setup is wrong.
>
> Remove the remaining __init markings that are now wrong.
>
> Fixes: 4a92f07816ba ("bus: imx-weim: use module_platform_driver()")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
> I applied this on top of the patch taht introduced the build error
>
>  drivers/bus/imx-weim.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/bus/imx-weim.c b/drivers/bus/imx-weim.c
> index 79af0c27f5a3..28bb65a5613f 100644
> --- a/drivers/bus/imx-weim.c
> +++ b/drivers/bus/imx-weim.c
> @@ -76,7 +76,7 @@ static const struct of_device_id weim_id_table[] = {
>  };
>  MODULE_DEVICE_TABLE(of, weim_id_table);
>
> -static int __init imx_weim_gpr_setup(struct platform_device *pdev)
> +static int imx_weim_gpr_setup(struct platform_device *pdev)
>  {
>         struct device_node *np = pdev->dev.of_node;
>         struct property *prop;
> @@ -126,10 +126,10 @@ static int __init imx_weim_gpr_setup(struct platform_device *pdev)
>  }
>
>  /* Parse and set the timing for this device. */
> -static int __init weim_timing_setup(struct device *dev,
> -                                   struct device_node *np, void __iomem *base,
> -                                   const struct imx_weim_devtype *devtype,
> -                                   struct cs_timing_state *ts)
> +static int weim_timing_setup(struct device *dev,
> +                            struct device_node *np, void __iomem *base,
> +                            const struct imx_weim_devtype *devtype,
> +                            struct cs_timing_state *ts)
>  {
>         u32 cs_idx, value[MAX_CS_REGS_COUNT];
>         int i, ret;
> --
> 2.20.0
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190904160039.3350229-1-arnd%40arndb.de.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DudH0NLaz_%2BPbJ4ANyoJ3gGKZ-gsfTJ3xDJOqpsO1y0g%40mail.gmail.com.
