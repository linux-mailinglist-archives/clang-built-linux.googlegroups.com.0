Return-Path: <clang-built-linux+bncBCQPVKWLVAIRBEWWXCCQMGQEK2DU2II@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb39.google.com (mail-yb1-xb39.google.com [IPv6:2607:f8b0:4864:20::b39])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C3C43915AE
	for <lists+clang-built-linux@lfdr.de>; Wed, 26 May 2021 13:03:47 +0200 (CEST)
Received: by mail-yb1-xb39.google.com with SMTP id k34-20020a25b2a20000b02905149e86803esf1230456ybj.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 26 May 2021 04:03:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622027026; cv=pass;
        d=google.com; s=arc-20160816;
        b=lILH3uVaOSraHFAq7jyzxVhn4edeGnpqbFqw9/qPq5kegN5p5ahvIwPzdJu2QN8pPK
         rhXbo6ZEJuFOJJqyHBnCcUACrQ85JXdOg4FLgOPuyn5C7jOADIVWQ1KPftNuXZcci7eZ
         3GmNUjgU+16Zuz442byIc+T3xIJhJv43SQKos+XKDR1CpAPmJ27wBotwqpOJtgDfk+QN
         SsfAaRhT5FdEAwK3ItsQxDpoMWFcD07fDW4ahGu1dOWR27mOT4oUvymyUnUhR3yzyl/o
         pXU6mw/wEVoMHfTL226P7CLhr6X41qxDTeu9OdNxGocW0+DMal0RLgLQL8RC3MFeE+YS
         CQrA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=9cukRqkDIXfhAeXHK5gtGV62hNspaKU6woH5OFU49iM=;
        b=GN2c9juSGBb6u6sdTLw2Zg+YqOV64iJQLA1joWsZW3YWrRUaLZ6EFFWiZkiO5SMMVa
         17/12DogakqYdkpkIZflmw154WX6iEbgvhTPVJzhDhB7NWn/8926Abgm8v9abTBX9cr6
         ekrgr5Rh5cRxxMRmFf21FcRlHbs+79PzEIgI1XbM72/FPR1PyMngfIzzit+Olm+AgcQu
         y7VUC4A4C2B5D2vISXGZBK4aJrA7HBUJ6m5ekMcj3lyC07h7KUjV+vahwTIxbTlSITne
         wJBLA3r1lNb3KgZO4yWNz+wF3gLFssCKMtz1/K7+0CfhnGv/9vNr5td+JHFLNheEP1fi
         rzfg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 72.249.23.125 is neither permitted nor denied by best guess record for domain of tony@atomide.com) smtp.mailfrom=tony@atomide.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9cukRqkDIXfhAeXHK5gtGV62hNspaKU6woH5OFU49iM=;
        b=EIGTvb+cMqwuCIZS3sqP6MMvFkIMbQgthN/19svUCCGQi5WyPlrydT7Hrf9QFA4fUS
         x2KJA9/6k0aq9uM24bUG+1R2T95zXUDqQBPb5bGGobKOHsOnJe4eal8vuRwuiq4bzvBF
         mYwPJ7BTn3ec793asT44bCR7eODqGYGu7T5gLxR+gGrWpbB6/jqM9MqAJScG83eXWZqB
         8C4DNn7y5RCWAs8mjfmXGGFRn7JB+myIL2SKVcINgjlI3CPLR7zfjnZXHLrZ6DX3bnlk
         Kd2pnYLyG7meWORW31b6MZKZnJDRWt9LFbfST7nmw/tl9BuYhrO/A+soKjBiuvx1pv9H
         QUCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=9cukRqkDIXfhAeXHK5gtGV62hNspaKU6woH5OFU49iM=;
        b=LGK+l5/gqwoM6a9Uy2SKibNT7HmJfnG+CDFFmsV7zxHY4h9YYKIT4qCFkSXvTVCTb0
         adsYxEjUJsg2Ug7Y6ys3PYiecB0zw9SNTP0MS6p6Rb4SaClaXShwg3tQqc8WcQqZ0cq4
         vx7CuzDbPVPpmfhyk/TyNVJkVRJGWLI1L4ar9Tm0Tb/79GAX0tPAWQFFnbcNrn7z8ID0
         uLjm3OkOOYOqfzRAQcL+8DcAdQ7JUDKs0Xt2LHFM0ieO1raTOjth+qr/XqNmVM8MyINm
         qsJHVb5qxw9lHG7tG4UkmqfQtvUaWQWfxbla/NsLxRUyb44zulqjp9mHWDVeWVGOSUD+
         2ENQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531lFGrvrl8QxXhs3Fxzo/h+ht1cYwT+s23jHUNkwOs3Wd/W8gbL
	o5NqVViOquNY47RtHyxLYqM=
X-Google-Smtp-Source: ABdhPJwjGTPcILTZinHEavhb2rFspVBEQFBEQrVBI0eG4Tg96bhiY133LoE2E6Ev2xhGvefaBu1LBQ==
X-Received: by 2002:a25:a0c9:: with SMTP id i9mr9407460ybm.320.1622027026259;
        Wed, 26 May 2021 04:03:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:9307:: with SMTP id f7ls10604244ybo.10.gmail; Wed, 26
 May 2021 04:03:45 -0700 (PDT)
X-Received: by 2002:a25:7ac2:: with SMTP id v185mr51186841ybc.121.1622027025716;
        Wed, 26 May 2021 04:03:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622027025; cv=none;
        d=google.com; s=arc-20160816;
        b=E3/6MZ+nSNeeybZjatvy8ame7fsvFo2jwjkZys5Phkgb+GHIdj+UZzq8bZ0QhzJKf3
         xhfUbnndbP9uH800akPBLVXk6ighyes9FoTfRhfMzD7ey6KJDMevOy4J3GlXrsqdQIsd
         ktwIHm84HT6xCa5yt7VSBfQjwvfoFHH/T10OODVbfS/6H+xTTdmhanxJQdzKSetSWb32
         YvMRh6booqap21B6wnCXQEJkrvVFOmiIiW8CamDJ+TTVaA6j171v/3bAAUE650M6i47p
         bVbBhnIOWxfJH+c+DFIpI7TR04VxA2JyroNrf6sDf/SphfFcbOiL5ll2iCwodb3hcxM3
         885Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=7Itj1AeBb7Tg8C20fphOxp7ZzJ/ilbQzbsNtzGX/ms0=;
        b=vgCCFjv9K6MFB2z9lWefR3yTbP6j4J1T52b/c+8PVcHYXQc2uqd1aEGeXX1HJ6/Dd6
         A/s1IljUfX4osxyZhydtQ89ouGc3LrkEK7yfealayq1Sy5FW/ha4O/c5KtFqLdvsjCw8
         Sbc34+WG9oj00qHcb13Ot5ergbNV5IVR/iqkpiXkJk5t99jgY8VFMaljxedg2h6/Z3y/
         HWfS/KSXxnn5oL3zZcbE7trNzZX7xu+W5dCXSDhT3gp/EdO6wFMoKJkqT7/rix5F9Ato
         7iBE21fxjVCdz5lm92FAb774iCnAbbA/bmOc6lAbVQrHEkpWcLm5rYikETGL2vKQP9gw
         2Ing==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 72.249.23.125 is neither permitted nor denied by best guess record for domain of tony@atomide.com) smtp.mailfrom=tony@atomide.com
Received: from muru.com (muru.com. [72.249.23.125])
        by gmr-mx.google.com with ESMTP id i15si2101649ybk.2.2021.05.26.04.03.45
        for <clang-built-linux@googlegroups.com>;
        Wed, 26 May 2021 04:03:45 -0700 (PDT)
Received-SPF: neutral (google.com: 72.249.23.125 is neither permitted nor denied by best guess record for domain of tony@atomide.com) client-ip=72.249.23.125;
Received: from atomide.com (localhost [127.0.0.1])
	by muru.com (Postfix) with ESMTPS id 503E180AE;
	Wed, 26 May 2021 11:03:50 +0000 (UTC)
Date: Wed, 26 May 2021 14:03:41 +0300
From: Tony Lindgren <tony@atomide.com>
To: Maciej Falkowski <maciej.falkowski9@gmail.com>
Cc: aaro.koskinen@iki.fi, linux@armlinux.org.uk, linux-omap@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] ARM: OMAP1: ams-delta: remove unused function
 ams_delta_camera_power
Message-ID: <YK4rDeJSS9rEAF0W@atomide.com>
References: <20210401160434.7655-1-maciej.falkowski9@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210401160434.7655-1-maciej.falkowski9@gmail.com>
X-Original-Sender: tony@atomide.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 72.249.23.125 is neither permitted nor denied by best guess
 record for domain of tony@atomide.com) smtp.mailfrom=tony@atomide.com
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

* Maciej Falkowski <maciej.falkowski9@gmail.com> [210401 19:06]:
> The ams_delta_camera_power() function is unused as reports
> Clang compilation with omap1_defconfig on linux-next:
> 
> arch/arm/mach-omap1/board-ams-delta.c:462:12: warning: unused function 'ams_delta_camera_power' [-Wunused-function]
> static int ams_delta_camera_power(struct device *dev, int power)
>            ^
> 1 warning generated.
> 
> The soc_camera support was dropped without removing
> ams_delta_camera_power() function, making it unused.
> 
> Signed-off-by: Maciej Falkowski <maciej.falkowski9@gmail.com>
> Fixes: ce548396a433 ("media: mach-omap1: board-ams-delta.c: remove soc_camera dependencies")
> Link: https://github.com/ClangBuiltLinux/linux/issues/1326

Thanks applying into fixes.

Regards,

Tony

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YK4rDeJSS9rEAF0W%40atomide.com.
