Return-Path: <clang-built-linux+bncBDAYD2P3QYGRBMMFWXZAKGQE4DTI6LA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13e.google.com (mail-lf1-x13e.google.com [IPv6:2a00:1450:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D43116469A
	for <lists+clang-built-linux@lfdr.de>; Wed, 19 Feb 2020 15:14:10 +0100 (CET)
Received: by mail-lf1-x13e.google.com with SMTP id b19sf83351lfb.10
        for <lists+clang-built-linux@lfdr.de>; Wed, 19 Feb 2020 06:14:10 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582121649; cv=pass;
        d=google.com; s=arc-20160816;
        b=IbUXJ/3JWtrGywheJUiXnB5+IgMKoNKLCPSwii8wzDD54nqxDGadkAVTZAFYI4d0Lc
         VuXtWX4WgTC0zJ27y17mx90yaHqvpK40NfmdOhEdW8blsT5NWYhgEB+9DD2fNaC9h15N
         HkcQ/hckhzH1ASn/Se9nd7ib+YdN2AeU0GiKGLY0gzNzS6bCYzFJziY6QpOYpmYaKf9P
         /+y0PaFjV+Q6dUElOkdhy0nTufaKbTeCU2Xl2T/wBvf+tVoSsYb9pzcmiaMztYY9qDri
         vHd3i9FSvFDTA0NHgCAA3K+xGrcprP93kqNQPjKtkaLslHAsNLJ/MXa3PZ/jJnSnfrct
         oTpw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:organization:autocrypt:from
         :references:cc:to:subject:sender:dkim-signature;
        bh=uqBSPcn18dawpegq4zhWykIX+LXHH5D6PyBX1gZUoos=;
        b=jgbbMyM+yq8ZRIOMXnNLtzbX9vFig136yF7LU2fVhGHpM4yVucS/JdO9qQyAJ6Tzq/
         9nG8egE5g901s0GtQ26R29/D1dvuErLn4Fy0cy7ni0C/TGPWe2uzYyavd7mD2XG8ApQQ
         HjJvqgiymOhWXewnV0EfxuOPuQIkCUzMM3727IaDG96Pslx9kOIdIz+vflaUlv7Zk0Dt
         SnmFP04HhU/I/q8rQd3x4k6WH8vXKw0/jDnwbVBxBYMOlaCMOmeA0fxN7tLrXZksV/D0
         edZOG/80SnjKCLiqIl0Hh7clw9q1LPsMa1WskaB0LXqX5YjsIC5hQduTRCbBgfIraDD4
         RFKw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@baylibre-com.20150623.gappssmtp.com header.s=20150623 header.b=YCNX2wA3;
       spf=pass (google.com: domain of narmstrong@baylibre.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=narmstrong@baylibre.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:autocrypt:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=uqBSPcn18dawpegq4zhWykIX+LXHH5D6PyBX1gZUoos=;
        b=XDO5eUNTSVRxpA13v4DdGNGye84LaDhsYGs2tHD3MlJIpKC1wtqbquytOx1ZWgxNwB
         /P3b+w+ttiGYow6ytGnpMf4DPtQoib7OECmbxh51bwsZa7RkhuTHYhE6aqo+7nT0QUPE
         iB/3CGLImVTPFBEAYUVaOi0NRxd/2c+qV/0pnLb/1Uf9jHv59XqdtU3E6HrnbuooEJdh
         qE661c6V8+jmu7s7VhougnD47ex0m2JD7HJ2bJNBu0FPcNVBw/thfHz+xaWvZ51xfV4j
         w67a8glm09TaXPac21UnSQV/fVLrHs3SYooYjrXmcLdY9X1uITR4rdixS9xQmFsCUUwC
         3Ksw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:autocrypt
         :organization:message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uqBSPcn18dawpegq4zhWykIX+LXHH5D6PyBX1gZUoos=;
        b=RIRyd/OGcJzFt1b9NyiZgDxrR2fnOvy3jDVCbLO+cCTe7YZ/9uOTCyeAF0lrZTd0xl
         U/M6cf3zNJoJ9Bp9Jgmx9cAwU++QYs2QjAQQA4piDE6XW53VEyNHOoC4hI5Ia99Oc2Yn
         siZ4iHMzG+SjxA1g7Ilp5BXdhaqOzvkP62ZoyF3vFVG6oPbODiQwBJgQ3S772MxrhKx5
         /JYEHnqOCdptWp/AeCkLwarVya5pFImYlKXhNn3C2hFOQ2SxJbRa8o9ZfKZKzi8KBhu+
         3PO6mq5zK3JyMI9MzwxhbMsTw/+EpMKKKh0DHe1b3U37iHrmF8oHnfOdXpTwa/GYcP0/
         L3CA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUu7nRTl72L1/vW2AcCA+AZndP2uFczlmCyPVCyuY5/VNHfXEdv
	pbTIjzf66VXRCs7afz81bJE=
X-Google-Smtp-Source: APXvYqzX3oGx994KP0OM6OMIJ5sWzqBslsXtioGvy7IZaM+ESb0zfOEQujtWNyvpG0H3LmrSDYYZ4g==
X-Received: by 2002:a05:651c:1bb:: with SMTP id c27mr16670560ljn.277.1582121649672;
        Wed, 19 Feb 2020 06:14:09 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:4d0e:: with SMTP id r14ls444085lfi.10.gmail; Wed, 19 Feb
 2020 06:14:09 -0800 (PST)
X-Received: by 2002:ac2:5b0c:: with SMTP id v12mr13572065lfn.155.1582121649097;
        Wed, 19 Feb 2020 06:14:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582121649; cv=none;
        d=google.com; s=arc-20160816;
        b=kw3YU7vVPLc23oCgABqcKyLoCXT6e7B4dbJvxT7Dld9MVusewjfNZ+dHSIxf+JihqX
         aeSxTUbWtmuJaKVTkajNIAQDWb3nNnpKfPCciNhyWZiokeye2+7KWeE0fp3cPSqValAt
         BzQZijDS7nm12BD6t53prctEZKFk/a0cJycbU9J7Ishxd8PW8IPK+8dX5fSJsRfh01I7
         QomIDLUmtalrLtbPet+upunUqKd6KtI/c8tuTBGKJaukj5CN6iesA0ZSwmCdPJ3AQ3eX
         eSNGa5Oqtp9MfF+BewBAF8Wc8zuZWacDJFgohr3hZIUCBEqUbIuhcpfEX/+roei0qRAH
         8PTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:organization:autocrypt:from:references
         :cc:to:subject:dkim-signature;
        bh=uXdoUR0XgCTZxVCtiaoQw/MLf4PcvBIvxwOCFYMZSP4=;
        b=Yx1Ti0OnjgQpuY6cYi1vKDEm7E2Ri01MuaajFlBZmhFnH5zRJhmwNP9nBK1zquYuOJ
         McuDV4JE98TbnEpI66qOEwbFbeXoXmii8LfJQ5Yc/a9ZRHCBapFsyZ/5NuGS2Vq6p2IK
         9GvyUlwuk5h7NYIODQcJUeK7pzvqLkigsXOdWLQgcIBTKzRj53X2hBdPUnp5Rhaq2htF
         Gs1Z/njzXSLy5jteQbk8/xurf7WcGhTavfVweQK8RyQx9L2i0ld0iA57LP/LkYAaNe9Y
         0TGkT6mNhGg2ytNIcBi+J2j4Db61YC0EG3MTki/qvPrBTxq8DTkg6ZZSYdmrReZi7cbs
         zTjQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@baylibre-com.20150623.gappssmtp.com header.s=20150623 header.b=YCNX2wA3;
       spf=pass (google.com: domain of narmstrong@baylibre.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=narmstrong@baylibre.com
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id d8si118521lji.0.2020.02.19.06.14.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Feb 2020 06:14:09 -0800 (PST)
Received-SPF: pass (google.com: domain of narmstrong@baylibre.com designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Received: by mail-wr1-x444.google.com with SMTP id m16so678501wrx.11
        for <clang-built-linux@googlegroups.com>; Wed, 19 Feb 2020 06:14:09 -0800 (PST)
X-Received: by 2002:adf:f1cb:: with SMTP id z11mr35086030wro.375.1582121648290;
        Wed, 19 Feb 2020 06:14:08 -0800 (PST)
Received: from ?IPv6:2a01:e35:2ec0:82b0:510e:e29a:93ab:74c3? ([2a01:e35:2ec0:82b0:510e:e29a:93ab:74c3])
        by smtp.gmail.com with ESMTPSA id 5sm3254394wrc.75.2020.02.19.06.14.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Feb 2020 06:14:07 -0800 (PST)
Subject: Re: [PATCH] usb: dwc3: meson-g12a: Don't use ret uninitialized in
 dwc3_meson_g12a_otg_init
To: Nathan Chancellor <natechancellor@gmail.com>,
 Felipe Balbi <balbi@kernel.org>
Cc: Hanjie Lin <hanjie.lin@amlogic.com>, kbuild test robot <lkp@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Yue Wang <yue.wang@amlogic.com>,
 clang-built-linux@googlegroups.com, Kevin Hilman <khilman@baylibre.com>,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
References: <20200210225816.36598-1-natechancellor@gmail.com>
From: Neil Armstrong <narmstrong@baylibre.com>
Autocrypt: addr=narmstrong@baylibre.com; prefer-encrypt=mutual; keydata=
 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
 BSwxi7g3Mu7u5kUByanqHyA=
Organization: Baylibre
Message-ID: <d47c9cb2-9458-afc7-e91b-1a56ad87d1be@baylibre.com>
Date: Wed, 19 Feb 2020 15:14:06 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200210225816.36598-1-natechancellor@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: narmstrong@baylibre.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@baylibre-com.20150623.gappssmtp.com header.s=20150623
 header.b=YCNX2wA3;       spf=pass (google.com: domain of narmstrong@baylibre.com
 designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=narmstrong@baylibre.com
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

On 10/02/2020 23:58, Nathan Chancellor wrote:
> Clang warns:
> 
> ../drivers/usb/dwc3/dwc3-meson-g12a.c:421:6: warning: variable 'ret' is
> used uninitialized whenever 'if' condition is false
> [-Wsometimes-uninitialized]
>         if (priv->otg_mode == USB_DR_MODE_OTG) {
>             ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> ../drivers/usb/dwc3/dwc3-meson-g12a.c:455:9: note: uninitialized use
> occurs here
>         return ret;
>                ^~~
> ../drivers/usb/dwc3/dwc3-meson-g12a.c:421:2: note: remove the 'if' if
> its condition is always true
>         if (priv->otg_mode == USB_DR_MODE_OTG) {
>         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> ../drivers/usb/dwc3/dwc3-meson-g12a.c:415:9: note: initialize the
> variable 'ret' to silence this warning
>         int ret, irq;
>                ^
>                 = 0
> 1 warning generated.
> 
> It is not wrong, ret is only used when that if statement is true. Just
> directly return 0 at the end to avoid this.
> 
> Fixes: 729149c53f04 ("usb: dwc3: Add Amlogic A1 DWC3 glue")
> Reported-by: kbuild test robot <lkp@intel.com>
> Link: https://groups.google.com/d/msg/clang-built-linux/w5iBENco_m4/PPuXreAxBQAJ
> Link: https://github.com/ClangBuiltLinux/linux/issues/869
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
> 
> Note: This patch is against Felipe's testing/next branch.
> 
>  drivers/usb/dwc3/dwc3-meson-g12a.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/usb/dwc3/dwc3-meson-g12a.c b/drivers/usb/dwc3/dwc3-meson-g12a.c
> index 70d24b98fcad..902553f39889 100644
> --- a/drivers/usb/dwc3/dwc3-meson-g12a.c
> +++ b/drivers/usb/dwc3/dwc3-meson-g12a.c
> @@ -452,7 +452,7 @@ static int dwc3_meson_g12a_otg_init(struct platform_device *pdev,
>  	if (IS_ERR(priv->role_switch))
>  		dev_warn(dev, "Unable to register Role Switch\n");
>  
> -	return ret;
> +	return 0;
>  }
>  
>  static int dwc3_meson_g12a_probe(struct platform_device *pdev)
> 

Acked-by: Neil Armstrong <narmstrong@baylibre.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/d47c9cb2-9458-afc7-e91b-1a56ad87d1be%40baylibre.com.
