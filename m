Return-Path: <clang-built-linux+bncBCD5ZB4I3QHRBEW7XD7QKGQEANMSQOI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x337.google.com (mail-ot1-x337.google.com [IPv6:2607:f8b0:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 492472E81DF
	for <lists+clang-built-linux@lfdr.de>; Thu, 31 Dec 2020 21:07:48 +0100 (CET)
Received: by mail-ot1-x337.google.com with SMTP id x20sf14180284otk.23
        for <lists+clang-built-linux@lfdr.de>; Thu, 31 Dec 2020 12:07:48 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609445267; cv=pass;
        d=google.com; s=arc-20160816;
        b=wZDaFMPUlJHPmZJCMYy7LVX99oosnS3esO4GhzQitv0f4UKOpmy9tnm7yNotodv4A/
         PLNGM8BurFpcgrFcMbf7kddHiDRSUEg4TLOnsbaLsL1HokOUjKHomgCQ0cCUsUmaglLa
         OsyQQ5THenR3pPKuT7mol3eyJa62MCJLvT3inUTx/CQokSmUGbMFdSgbXNpSYisct57+
         x7QBokj7zqsOKxlsBA1nPCVwSY1sk4nEs3x1BHgERz0DeR7R+bek2YDeFdj7eU2eUOkv
         3FR1Gs+32rdxeQyo/wJGMTtT6Yei/PXGTdwHI7K9SDNepZqBmX2Zk8dsWlarrKtr3E36
         1dHQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=px8ycKkiMGaKpfbRLJ8XVX8Puc9Flwg9/VXV+XazMrA=;
        b=AgUwvrHa+ru1apZsG3c/9gponIY9OYO49WXAIor/KY2QV2zDmt0fdMab+1UOXkvWge
         lFPMtTVLu1OhiGtdeWD1M5deJ3uRs6g+Xpz/kaGT0Y0UpX30AFHEry0FiCjtQIfiAunT
         wQeI5iO27niU1zzBOHnb2vMW6o+HkUhlYQRAr3uZ82BYdGTuwz9dVMhngiTyyOtyUA80
         +maEMaCNmGi/I6+H9xfcvBFzGR7vtaFiSKM7URY3jVCi/yVwIRNXvyDl41rTfiRDgk5x
         Z04pA/IG7ScwfSHYYsuWGAGrGwnAg3m/2wV3cFdLtOxiJM/GO2nTonNVJZwemSkGqure
         eUhQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="q4OSIz/J";
       spf=pass (google.com: domain of nicoleotsuka@gmail.com designates 2607:f8b0:4864:20::102e as permitted sender) smtp.mailfrom=nicoleotsuka@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=px8ycKkiMGaKpfbRLJ8XVX8Puc9Flwg9/VXV+XazMrA=;
        b=RqMMMw0HkJYn4a0kE4QegHhQWqI3zAeuXfn/TIYuJG9L1IuktdtdHMZO8kY3369kKE
         GgQrT24jKXKWpr8RIIgxTJ9onces155b5ckLrHmDfgPkVs+udDNo5zTl21C75Q74RYUW
         ACFWvPzr3w5H9K1pKOfMZl7GOCLjGtcYuOnYO4GhmeWh3pYmnGts2Ti1dDkLuNbFiQli
         y0NASKjfyT2loSDK4dXfjRWfYoE1jAjtXxstJTJmvFXA8c8Ez6bPG6LsazH61UP+C597
         xW7VMvxp1UzbcChqifG+Sc1+n/Vsa06916KyT0GWN5tBe8k+70iyXG5zmLa1LECzXIS1
         H8Bg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=px8ycKkiMGaKpfbRLJ8XVX8Puc9Flwg9/VXV+XazMrA=;
        b=rGpAvftbLuCGOs02iewR1AfugwP/QD3NMwLMZc7fMen29RG2/ibB//tm8l6PBSvAJ/
         zILtqffPsjpIQvIA9n0Zl4snn+Qi3d8p289Av6834phqt8TIQGSS1DcpGwa/E1NXLhOQ
         HOWzEEOTHgaUqfnGX97cjYNuvLPu/N1SROrm2ze7mWktbhOw9Pk1czxMzYYamwx9IyZ0
         l4ahRc4k0tothOYtPz7Padega19fVdvAu+NOz/p8/EYBz1BbibwJZsCBAYNnzN4olOzq
         w698O7NnxqWzG71WBo3yIODJ7RP6ulDQ5oQLAgFuKBulgyjw2KcvK/hGmRM7/M6LrY1E
         RYXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=px8ycKkiMGaKpfbRLJ8XVX8Puc9Flwg9/VXV+XazMrA=;
        b=BnPum3yTJP930McThb17471tVBMRUGiiOBtozfDlC2x2LUgoE/pd4ATTjU6muM72iZ
         x7UQGHeI75liwSfbXB5ngESOiv9hOHMIjJbWbK3SWi7nP1Cz0cvu9vWpxdks8vGGZCWn
         lmzIw4DH6nWptZnpHdG7u+xX/k0FlqhGWnLy44kWKPEalFX6fKy5pqRmmKYPf0tUPrKI
         lHqevOFnmKUF0+Uu8/6Njnhl68b3i46eV5ExIITveuxRlKTo2YLMHG3VhKssD34uC52X
         tBvWJ5sPk1tmjAZfZBQfWUpEEJ5z+HDdX/IhZlhWyXuw9Ev8CkRMlvKc1+YIibYb4l8v
         9+xA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531UpCox84vChO8NSGA9kjui0q1SA8T40WvzghDyeo4QtUBOPZoM
	SuXt6UaN4uc+6wOTWfbRDbo=
X-Google-Smtp-Source: ABdhPJwVRWuNJC4KyJTIb+RhIqSLvuRmoxEZw8ZOnVnyH9vyhUONHvzoQ7PC441oxA10kJljvHiq+Q==
X-Received: by 2002:aca:4e0a:: with SMTP id c10mr9069301oib.14.1609445266987;
        Thu, 31 Dec 2020 12:07:46 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:b36:: with SMTP id t22ls9656534oij.8.gmail; Thu, 31
 Dec 2020 12:07:46 -0800 (PST)
X-Received: by 2002:a54:4397:: with SMTP id u23mr8850838oiv.35.1609445266565;
        Thu, 31 Dec 2020 12:07:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609445266; cv=none;
        d=google.com; s=arc-20160816;
        b=jH6cIXeJKOiQ6holfaX+xYMxk6SMhXwEKODDfR9HIfeU7ZVIFcWvLsn0svvWrZHj8+
         qh8280k6f2hPz+H/SMY9l7XTjCquRNLYRFJo81/fDHQnvoPhz9VDLyUmcwnfzD98WcDv
         tn35QkD+7hTFYaKHxjHXcKK7+yprcRtJudOs6l3oeH3dS1ayjKB2v6nD3XDlUBix1ZUB
         P5dM+mUxYqsRwprhEeDbDEK+wtCUHN2LYO3w9f7UKp+EynKI8f0du0CwmVymbYE/UcR7
         E4IzSCBIvc6vkhkKUACdgGnMwCgWhL53s10cnXMbvPBG3TOW6p9eSPrvoaU17w0z9MGO
         8MyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=LUdKDlLlflhborB/8hVdW+VgkZLtdJkIlQCMkULEfnY=;
        b=rFXBV7kHtys3BY0u6INNRDd6s5+50/YOh69VlSLRlnykaGDXOp+bfV3BJuZTb4fYVq
         2utcHt8BOpvMQP6Jvb2k2DRYr9cPdCf+MD7Uf5bgGXeRGIVK8LRZG4gM1QM+WAI76hOy
         AMMM1W1GG2IaxDgybtSddoJ+eHYob/4fvkiJItwznkueIhuwMJktGDtGlXnt92QbCwJ7
         2DmKtIljlPXlL2OTD8cJxvsaza7u/0/+Nn9jTKxfqmiAqoOjP5V+GGRf9kpXQB5vIXFR
         x/dGKj+rLy0Yhkb+LdeLxyKb3b9i0MGW1nS9iJ2nfW6hUoN8n74/2F0VPx8VR3DU/eN+
         SwVw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="q4OSIz/J";
       spf=pass (google.com: domain of nicoleotsuka@gmail.com designates 2607:f8b0:4864:20::102e as permitted sender) smtp.mailfrom=nicoleotsuka@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com. [2607:f8b0:4864:20::102e])
        by gmr-mx.google.com with ESMTPS id w68si3738120oia.4.2020.12.31.12.07.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Dec 2020 12:07:46 -0800 (PST)
Received-SPF: pass (google.com: domain of nicoleotsuka@gmail.com designates 2607:f8b0:4864:20::102e as permitted sender) client-ip=2607:f8b0:4864:20::102e;
Received: by mail-pj1-x102e.google.com with SMTP id iq13so5332916pjb.3
        for <clang-built-linux@googlegroups.com>; Thu, 31 Dec 2020 12:07:46 -0800 (PST)
X-Received: by 2002:a17:902:6b0a:b029:dc:31af:8dc3 with SMTP id o10-20020a1709026b0ab02900dc31af8dc3mr36249199plk.41.1609445265935;
        Thu, 31 Dec 2020 12:07:45 -0800 (PST)
Received: from Asurada-Nvidia (thunderhill.nvidia.com. [216.228.112.22])
        by smtp.gmail.com with ESMTPSA id y189sm44418568pfb.155.2020.12.31.12.07.44
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 31 Dec 2020 12:07:45 -0800 (PST)
Date: Thu, 31 Dec 2020 12:07:57 -0800
From: Nicolin Chen <nicoleotsuka@gmail.com>
To: Arnd Bergmann <arnd@kernel.org>
Cc: Timur Tabi <timur@kernel.org>, Mark Brown <broonie@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>, Xiubo Li <Xiubo.Lee@gmail.com>,
	Fabio Estevam <festevam@gmail.com>,
	Shengjiu Wang <shengjiu.wang@gmail.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	NXP Linux Team <linux-imx@nxp.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	alsa-devel@alsa-project.org, linuxppc-dev@lists.ozlabs.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] ASoC: fsl: fix -Wmaybe-uninitialized warning
Message-ID: <20201231200756.GA15207@Asurada-Nvidia>
References: <20201230154443.656997-1-arnd@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201230154443.656997-1-arnd@kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: nicoleotsuka@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="q4OSIz/J";       spf=pass
 (google.com: domain of nicoleotsuka@gmail.com designates 2607:f8b0:4864:20::102e
 as permitted sender) smtp.mailfrom=nicoleotsuka@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

I think Mark has already applied a fix :)
https://lkml.org/lkml/2020/12/16/275

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201231200756.GA15207%40Asurada-Nvidia.
