Return-Path: <clang-built-linux+bncBCW73DN2RYFBB6OM4P5AKGQEVKSA43Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33a.google.com (mail-wm1-x33a.google.com [IPv6:2a00:1450:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C407262FC2
	for <lists+clang-built-linux@lfdr.de>; Wed,  9 Sep 2020 16:28:09 +0200 (CEST)
Received: by mail-wm1-x33a.google.com with SMTP id x81sf838578wmg.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 09 Sep 2020 07:28:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599661689; cv=pass;
        d=google.com; s=arc-20160816;
        b=Mig8KY2CvkAi+LCLW8KCR5jsliO3+3GTwYd8oxf0qROYGkDqgj0CgtWOeodEaWzuqF
         A71aXFEjzlrW/pyVad1c1MYygKitP6pUdPH36/KXaFUXiZ/iBYCUlk1K9nPFxTPfN6oy
         uLshufINChEPPVtTp3EJbLK3FUrbV+G1rHhZi9baFo2QimMPlO23YmgXSrdvTL5PtldR
         ZCkNrWRaGgp9gr+NHPXlGNPx5N3mcZVTKfUnr0RGd3vxXKRmHzdbepC3A/6zSWw/tmiw
         7eTZ5XUxj0kKQa2a6MSczcWUdsTLR4CySjoLVgwaNxirGlar9MNb9PVjgfXvLXXtBy9e
         GkhQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=t682T+znFt2My42aHliTV2Tb2lengaLHrMpU1YA+EIU=;
        b=SP1NLmxZ4XQWdUTYiYkadnGTn+2Mo4XrqoBRYdRUNalVRDTSg50o6Rb0Kz0oT+4jlN
         LXsyKfcgPYCYLFPg6t6tbWswvRDPISp7bC3kmaYY5/VcCjPLSICxBhLYFNj4JwAueqYl
         6mQyTMmqKP36JtlW+xvgdZjn68zVSnG8OyFDxU4iqKVanbk+zGgd0u2HTnJvO92HxBbm
         ev8M6C96VH/MkVebbXjbL4k3LHNIe8qPSf8nlfAzGTS30sRgsT4dZ8qo1vfgiCK30K0W
         Zc74JBGupbWeE4/rwf8NkiiHKRJWLodzDg+uT9aB7xfP4irorsZH3Iaxw/YvsAihxNR0
         goQQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@xs4all.nl header.s=s1 header.b=GhZMVx7p;
       spf=pass (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.30 as permitted sender) smtp.mailfrom=hverkuil@xs4all.nl
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=t682T+znFt2My42aHliTV2Tb2lengaLHrMpU1YA+EIU=;
        b=QhITW3YwAdJxSBm5YbBVXdawi6WDyJ4uSFv3o7XwS182OUntCqU0Ot4lKuoDMztbhB
         j3umSdFh7JvoxS1lVmgvVtE8JiJumQQ+9Apuv5IM6uSS4yzXKJg8fnwx52OrBgm+NSUZ
         KNc5rLpm6Wh2xqgJvjqf68v4/c9ZE9AKhXzat7XWcca024h85e0nooeb7zyZVznsjePo
         qC/lH7zVJ+vJd9mVaXsq72ug74HqbS9QAe/IcgioxU6+3rTB+HYXFbf2bfiM/n51CyLK
         UAVXxigxeIjgtdekkCc80hX7VyRf9RfsORy0zDBIuCywjaNWKy1Z5y2dwB9sNEMrzNLR
         E42w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=t682T+znFt2My42aHliTV2Tb2lengaLHrMpU1YA+EIU=;
        b=SubFH05y782m/jFw/w0bBl8hovy1TXhk6QewGWOFHmSsi/qdA7Obipqto+B0KFaUtq
         WEFzwrVmN6xGAikaa4qxK212s56GD4eQ06iFc2nxrUHakLi9Rf94HYn2YsbCvb9P6/um
         fIHqk3n4iKTijSnMqdObeJrCxX/8QivDtUWu8pqqz0LWfaNmVNcG0q0EP55UvJKwnEEW
         pT6ZPfPbouX+EvpxxloYQ+8MLXCAvg4UUYdOdOxMIfYqedBprOxaRGD8lpy0K6rPGW01
         hcucaf/1841gjT8kFRFUh6T24MFPBDhWgsDDFSe/7PNd7imve5B7nLHteVtkj/RHmbIL
         Mvdg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530sYQPtFLD2nvSpWESTMRE1Ih06B77Epto8ddrRRMiQjTPGMhiI
	YTkrlG66IGpOjpIPaYxO5Zo=
X-Google-Smtp-Source: ABdhPJzIVsgSSq6Ts6BMKbcyAY/n04Ibu/PvEbOQ+fFYhbi4YM6WU7ZBcl5shp/QX8Qn5NZ7VvguOg==
X-Received: by 2002:a1c:40a:: with SMTP id 10mr3960277wme.61.1599661689352;
        Wed, 09 Sep 2020 07:28:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:230d:: with SMTP id 13ls1354585wmo.0.canary-gmail;
 Wed, 09 Sep 2020 07:28:08 -0700 (PDT)
X-Received: by 2002:a1c:5a87:: with SMTP id o129mr3951633wmb.145.1599661688362;
        Wed, 09 Sep 2020 07:28:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599661688; cv=none;
        d=google.com; s=arc-20160816;
        b=c3CwIg0cQBtFWmk5+pMP1U0J65XM+s8h/Yg06IzFjI2E4dvhiCUFPs7JG1jjTeUwV/
         RlMrflLruZo2NGxy8WUkHGHbIWKTkwePokddGA+Vjg3KhszDWHmqff6Yr2eGGBdDVzyT
         o+rC3MV26AuHEgs20DRkPaVCSZW8pCKE65vN6d+IfJlnRgG3A3rgKMHqhFVR15v1Gq/M
         f9Wts4p2mrwYIqT+ajH0ObIGMEKxfP6CGiLfpUz8n1/EF/r2am0z8+jZr60A8YTj7sdX
         A1klNl7cO97zvcLg3+fDs+4GOEH/11ZgORhlNlUOTvxktY8iZaCqfFFQCdc6LYrQNcz5
         TeJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=+xRI7RCVjWPFLjTuzSdpKFeCB3MzDQJw+96p0B8ybuQ=;
        b=zAT6fmKEyF6sNcv83qlh5HGvoOFwY5wUY3Mds8rkwTGj2pz0z3E1+yT0STJPtWt0RJ
         SBVDXTrjN1PYzzr+Qnooj1SQN/6E4UiYwFMXFWCc2oDqXHqBm8G2Gf2osDq+PcMyePww
         Mc4Daf6bDnkCdu9uYmLeKELdFXf+DAqVgR4EWfe9ERcTDf3MjSlMbfarnD0fsZJzcGc/
         AQfVizaq0YJhBf1Gecm+5RaOHlRvMpVtf8rpJwDkyAAy0etBmULThgd9jVU98+FjECGj
         rT7emEgqSEUI72ttyxFzs7dR2xM6TmYoVhKj0kX6tYh95gqCynYMYKThAbIBLnFf8It5
         Jaqw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@xs4all.nl header.s=s1 header.b=GhZMVx7p;
       spf=pass (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.30 as permitted sender) smtp.mailfrom=hverkuil@xs4all.nl
Received: from lb3-smtp-cloud9.xs4all.net (lb3-smtp-cloud9.xs4all.net. [194.109.24.30])
        by gmr-mx.google.com with ESMTPS id v5si98461wrs.0.2020.09.09.07.28.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Sep 2020 07:28:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.30 as permitted sender) client-ip=194.109.24.30;
Received: from cust-b5b5937f ([IPv6:fc0c:c16d:66b8:757f:c639:739b:9d66:799d])
	by smtp-cloud9.xs4all.net with ESMTPA
	id G14wkjX7EXgwIG14xkZkWe; Wed, 09 Sep 2020 16:28:08 +0200
Subject: Re: [PATCH] media: em28xx: fix function pointer check
To: trix@redhat.com, mchehab@kernel.org, natechancellor@gmail.com,
 ndesaulniers@google.com, brad@nextdimension.cc, mkrufky@linuxtv.org
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com
References: <20200903145038.20076-1-trix@redhat.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <65584276-f49c-15c9-5f20-a4e5f5fe5085@xs4all.nl>
Date: Wed, 9 Sep 2020 16:28:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200903145038.20076-1-trix@redhat.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-CMAE-Envelope: MS4wfK0x4z69G0pcN0tTyBl9g89oLI40CCA1Pcs6+GL8aCFjhEJWXG1+Fp/IEtwiTOlOPLh63xcX/ctPdCy/4klHm+VaxJzPhy+afVtZY62B2TEirP2HL1qf
 YV/AfjMvr86y2vsJj//XYI3hm8N57Og9gM30h6lUlp9j+94aX/BSkc5DzA9hJF/3Qzqy9zCQ2ovoCZoX2oN/ynVm+bMoVvJ9mXoVw+dS/ECWlUZyTyT6ZQNG
 qmBqg4DFcYXVSz1HLXcvyXQ66fz50w5zNVJHdbMzE7xTrxHlFUNBdDwvLckTvbRQD6RRu+iMx2jKZXBYlM0LMusm6z0Wdly4uY25757jT6wJ2Uvj2JkKoVtL
 7EDr/cykZK+ssUldtBs17BGk7XZd/V8fH3hbcuEj6MNvlB5nu1LS5L1STLA37L14Yy8bl24HxIWRRTG39hvNz52p1+OOU5c88TW/YguYpjq2c954K2MQYryY
 c2dSOckvGMqKK5W1okBJ3RE/UfoNy3pDnj3oJW/UcNb5ekMesMT7V+U1gJF+dEagNWHtMPX+ioSIEW7ERdqOYadyQ5DTAHQpFRXKVA==
X-Original-Sender: hverkuil@xs4all.nl
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@xs4all.nl header.s=s1 header.b=GhZMVx7p;       spf=pass
 (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.30 as
 permitted sender) smtp.mailfrom=hverkuil@xs4all.nl
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

On 03/09/2020 16:50, trix@redhat.com wrote:
> From: Tom Rix <trix@redhat.com>
> 
> clang static analyzer reports this problem
> 
> em28xx-core.c:1162:4: warning: Called function pointer
>   is null (null dereference)
>         ops->suspend(dev->dev_next);
>         ^~~~~~~~~~~~~~~~~~~~~~~~~~~
> 
> This is the problem block
> 
> 	if (ops->suspend)
> 		ops->suspend(dev);
> 	if (dev->dev_next)
> 		ops->suspend(dev->dev_next);
> 
> The check for ops->suspend only covers one statement.
> So fix the check consistent with other similar in
> the file.
> 
> Change a similar check in em28xx_resume_extension()
> to use consistent logic as its siblings.
> 
> Fixes: be7fd3c3a8c5 ("media: em28xx: Hauppauge DualHD second tuner functionality")
> Signed-off-by: Tom Rix <trix@redhat.com>
> ---
>  drivers/media/usb/em28xx/em28xx-core.c | 17 +++++++++--------
>  1 file changed, 9 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/media/usb/em28xx/em28xx-core.c b/drivers/media/usb/em28xx/em28xx-core.c
> index e6088b5d1b80..d60f4c2a661d 100644
> --- a/drivers/media/usb/em28xx/em28xx-core.c
> +++ b/drivers/media/usb/em28xx/em28xx-core.c
> @@ -1156,10 +1156,11 @@ int em28xx_suspend_extension(struct em28xx *dev)
>  	dev_info(&dev->intf->dev, "Suspending extensions\n");
>  	mutex_lock(&em28xx_devlist_mutex);
>  	list_for_each_entry(ops, &em28xx_extension_devlist, next) {
> -		if (ops->suspend)
> +		if (ops->suspend) {
>  			ops->suspend(dev);
> -		if (dev->dev_next)
> -			ops->suspend(dev->dev_next);
> +			if (dev->dev_next)
> +				ops->suspend(dev->dev_next);
> +		}
>  	}
>  	mutex_unlock(&em28xx_devlist_mutex);
>  	return 0;
> @@ -1172,11 +1173,11 @@ int em28xx_resume_extension(struct em28xx *dev)
>  	dev_info(&dev->intf->dev, "Resuming extensions\n");
>  	mutex_lock(&em28xx_devlist_mutex);
>  	list_for_each_entry(ops, &em28xx_extension_devlist, next) {
> -		if (!ops->resume)
> -			continue;

Actually, this code is fine: if !ops->resume, then just continue.

So there is no need to change this resume code.

And in fact, I think it would be best if the same approach was used in
em28xx_suspend_extension.

Regards,

	Hans

> -		ops->resume(dev);
> -		if (dev->dev_next)
> -			ops->resume(dev->dev_next);
> +		if (ops->resume) {
> +			ops->resume(dev);
> +			if (dev->dev_next)
> +				ops->resume(dev->dev_next);
> +		}
>  	}
>  	mutex_unlock(&em28xx_devlist_mutex);
>  	return 0;
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/65584276-f49c-15c9-5f20-a4e5f5fe5085%40xs4all.nl.
