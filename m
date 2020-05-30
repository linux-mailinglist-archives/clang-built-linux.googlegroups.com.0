Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB5MWY73AKGQE7Y6XKEA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3c.google.com (mail-oo1-xc3c.google.com [IPv6:2607:f8b0:4864:20::c3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 11D861E8D44
	for <lists+clang-built-linux@lfdr.de>; Sat, 30 May 2020 04:56:54 +0200 (CEST)
Received: by mail-oo1-xc3c.google.com with SMTP id b7sf851785ooj.7
        for <lists+clang-built-linux@lfdr.de>; Fri, 29 May 2020 19:56:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590807413; cv=pass;
        d=google.com; s=arc-20160816;
        b=cmZmfcDuaeOhgBh/I7UWfeUxasu7NneXVvyShM4aRmgG9CJ3zzdBPhRvlq/NBZbeq1
         xKpMC1tRCViqJRXt1OyURhwnStKNWbHsP+AHO8ADTvYVCoTNjzLtG249+9vIyA/Xb1XQ
         yV8h9AWRIkKM3dr2RNoJofTw/5PM8G0cRSK+m3K2Zjw7cRHf3Y3O4V8WZl+96MPfzeYJ
         fhiMsUFvaRiivQErDlQiLwQcyy2e4MkSZFpR6i2BOehnF8b921qy+IbDzeOE6CYNEKmj
         PBOknB7WxCKYg1W5KBCk94/n652llaNkKIRstdlNKDXEW4bWPUeyKugq/mXTExwqStZO
         kbCg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=Ck5+q0pEZC9L4I2O4Nj34XGdO7T0GK4+bqfC/w+YGtc=;
        b=T1qaN860D9wF4dORrn4QAFbO+9MbHn16kxk/kvJZvhLqxD5QJRb8LTao8FzzOteHeU
         I3RCOacgri3FD6X+zVwTG35UUiuLn8KzZVthXFsZdwHHI1g8qZm0lxJ+PStCDpL9SNgs
         o84cm88HvDYk/dx6oMRm783mxHfQMGlC9XpSbvdujb/iUHajRf8UgL0DkkTNAPYcYP4/
         93flyKrBflK6LDpghO3r72VJnEdBZsqiRaH5Kk0oc4RBQgpp72N0YUvDTIGy5VW4eCis
         P5EugUn+kSC8CAc837Clh4TWL4NwpO/299FJdSh6AfZFdugQVLwOOY+MRM4Rm6GXwjaz
         enqg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="TyC/IG6f";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Ck5+q0pEZC9L4I2O4Nj34XGdO7T0GK4+bqfC/w+YGtc=;
        b=WeK4P3JWexh2K3xM7fwmtYyLZVD9RIhQdr50O46zDXFfIOk0jibVUFtb5IQkanftvt
         cBOLVvdy4tBW1y/XAiD2OeSFUxlJiCAKg1E91h9f9ycfJRw00SKuO6NNnt0fm9AdcWkQ
         sCHfyMpOOgSvCeusO+DBfKSztcqpwngNoTdRREpJ3x+Sq9EcLXLWZtqD/pHsQMFF/63n
         Kau6QiOVB4l/FGE5+lPCsFpFHo8dPSElQzRNKrsFJO3T3cIOj2uk38lw4y3DTTaSBpTe
         rZlvc7po8MCvQ0ednvp1Fbc7PT8c9ks/ltRiQGW5qAmxRBa2uIHZB6iOj4uccJXB/AYu
         GPNg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Ck5+q0pEZC9L4I2O4Nj34XGdO7T0GK4+bqfC/w+YGtc=;
        b=txclBa/wlfdxaV54KrYiZl6SKoZT/lW7CoZ1NZiVAVkq52ig7rJ4c935hx30qr7Jtr
         WDfyK7pgfPm4C5SZmtIHHMmGB0knpgSWWPbVztGln03zVF6LP+kjnQ4YbG+BLgucCqde
         yzwYpeImO7jpo6FAelc2vDP5/PdVITnHgO15dNrLfzVZyHS0lSZoLQK2z4KBiU3vetAw
         Rhi5earsNnCsRghzlT6SV9kKSSAuivWRa6fElRQ6VTsBh8XQBCqSTRF5v04laRO1Twzo
         ZnHqTzpjH5OiOStkOBvDdfQFtMqrd32VfypqkSZ6Wq6lu7+WEeTNBuJ5V/RCMDlxzmwM
         4qgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Ck5+q0pEZC9L4I2O4Nj34XGdO7T0GK4+bqfC/w+YGtc=;
        b=J5vdizIDgZxai1XGsZikLlDJ/etVl/gOoUBW0eZ/0tM8Kaf0EzXm3yPwxaP7k/hoXQ
         i4O+UnDclVHldTMY+HBRlXp0eGBKdjUN8YXwP2ss/KVoPN15+Yt70XksA1h0kx/Ylv03
         pdP1eYEdTnMDCaAurAFGqCtBfGR4xq4t4cccufsCPsg1paiiAyCbImiARXCuzIe5Hw7v
         5YFGynliuBgwLO8c61TZGolT15f7nH4kU8uDDQvuw4YtFRs6b1XeBmhK+gjUlyi1tKwt
         zKNZfFEib9Iwj3pevLxw3hBObW2/GOy4yCj/3gLgQspxd4j/dGGiQTIqX9LvvO58aMJ2
         A+XA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5325/ryFpnmkflU51WQ3bqDE0afV0tnZGgCk+dUUeGhLOqTLsp9s
	gprHXM9Zbgierr9REZYg72E=
X-Google-Smtp-Source: ABdhPJy1S/pFxXYZ/OIZNeF+U8FEXgozDQ0ja3DWURnZ0gZUz6yEDUZKZdPlFwxQzXijmSGNb4cG0A==
X-Received: by 2002:a05:6808:7de:: with SMTP id f30mr8686580oij.86.1590807413052;
        Fri, 29 May 2020 19:56:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:d656:: with SMTP id n83ls1590051oig.0.gmail; Fri, 29 May
 2020 19:56:52 -0700 (PDT)
X-Received: by 2002:aca:f08:: with SMTP id 8mr8536127oip.13.1590807412757;
        Fri, 29 May 2020 19:56:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590807412; cv=none;
        d=google.com; s=arc-20160816;
        b=K9DERQ48chfrr56vdYua++gQ06B3DVy5s92vRAqgVdUY7/FzLmtviK2sZMD7PZEMfd
         ZIaqzz+thPAUqJ2nPOP3z0EtcBWJwTY4Ir5DDNixWbYa5rTM1R8bVOF86qBHaeEFQGWz
         YwfjJm8bfbbftciKjC9abaT3smPbeUEicULDHnyjZoE+nzMFfnZMfk3ZUd7Mev2vGvSF
         Fplsvsxhhw5G6TY0frW3sPQD6Ld2zq8TKVL+4qKucCJiUEtQ5WM6c9tOIk+MCceYId2E
         4cPa5xREr2+sWPMZMtX7DQTDnCVvVBS9w2WLBU4n5MVoqu6hYa9Vax1JlSIIKpZ9zIA/
         MjJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Pd/e7eNS71jRXfS6WeolyrknIqfCh6tgL92AqzRruI4=;
        b=ZwU/fXyOYD8Gt1R0FhanSMTRnd7lJoBfWmEyG+ZxKC5dIwdyRk5+qZF0TcFcQLx/d9
         cPAeNPCn0TFforlU4nYMmmdBy5L1FV0dYblf9Z0jHF36lwKuX7SEYlWvBOmicRIkmIRu
         xH/yzx7oMb1+mkZ/HpoAl+Nc+tg3FK471EA18VYrzqNc+4od2MITf5zVJ19Sc6WlXqx4
         eqQEChW83E3kPWiivxmXsbFMpm1MuEOCoPP7wZG/P/R1u1xyYmSLsRYwIsU1xMEGhaj0
         SPQkra0I/fmPJL5+9avSSSVvyQoB9EXNYbriMX+2BuFquasamaoZjhs6SyUf6Fq4vJsD
         TfJw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="TyC/IG6f";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id d25si615193ooa.1.2020.05.29.19.56.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 May 2020 19:56:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id bg4so1951256plb.3
        for <clang-built-linux@googlegroups.com>; Fri, 29 May 2020 19:56:52 -0700 (PDT)
X-Received: by 2002:a17:90a:2a03:: with SMTP id i3mr12315626pjd.29.1590807412075;
        Fri, 29 May 2020 19:56:52 -0700 (PDT)
Received: from ubuntu-s3-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id y9sm647001pjy.56.2020.05.29.19.56.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 May 2020 19:56:51 -0700 (PDT)
Date: Fri, 29 May 2020 19:56:49 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	linux-media@vger.kernel.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH 3/9] staging: media: atomisp: annotate an unused function
Message-ID: <20200530025649.GB1367069@ubuntu-s3-xlarge-x86>
References: <20200529200031.4117841-1-arnd@arndb.de>
 <20200529200031.4117841-3-arnd@arndb.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200529200031.4117841-3-arnd@arndb.de>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="TyC/IG6f";       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Fri, May 29, 2020 at 10:00:25PM +0200, Arnd Bergmann wrote:
> atomisp_mrfld_power() has no more callers and produces
> a warning:
> 
> drivers/staging/media/atomisp/pci/atomisp_v4l2.c:764:12: error: unused function 'atomisp_mrfld_power' [-Werror,-Wunused-function]
> 
> Mark the function as unused while the PM code is being
> debugged, expecting that it will be used again in the
> future and should not just be removed.
> 
> Fixes: 95d1f398c4dc ("media: atomisp: keep the ISP powered on when setting it")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Mauro fixed this in his experimental branch:

https://git.linuxtv.org/mchehab/experimental.git/commit/?id=dbcee8118fc9283401df9dbe8ba03ab9d17433ff

> ---
>  drivers/staging/media/atomisp/pci/atomisp_v4l2.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/media/atomisp/pci/atomisp_v4l2.c b/drivers/staging/media/atomisp/pci/atomisp_v4l2.c
> index 694268d133c0..10abb35ba0e0 100644
> --- a/drivers/staging/media/atomisp/pci/atomisp_v4l2.c
> +++ b/drivers/staging/media/atomisp/pci/atomisp_v4l2.c
> @@ -761,7 +761,8 @@ static void punit_ddr_dvfs_enable(bool enable)
>  		pr_info("DDR DVFS, door bell is not cleared within 3ms\n");
>  }
>  
> -static int atomisp_mrfld_power(struct atomisp_device *isp, bool enable)
> +static __attribute__((unused)) int
> +atomisp_mrfld_power(struct atomisp_device *isp, bool enable)
>  {
>  	unsigned long timeout;
>  	u32 val = enable ? MRFLD_ISPSSPM0_IUNIT_POWER_ON :
> -- 
> 2.26.2
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200530025649.GB1367069%40ubuntu-s3-xlarge-x86.
