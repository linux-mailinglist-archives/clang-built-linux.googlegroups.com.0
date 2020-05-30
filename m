Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBZM5Y73AKGQEDUEGQZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x137.google.com (mail-il1-x137.google.com [IPv6:2607:f8b0:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EB201E8D72
	for <lists+clang-built-linux@lfdr.de>; Sat, 30 May 2020 05:11:34 +0200 (CEST)
Received: by mail-il1-x137.google.com with SMTP id m7sf3941793ill.19
        for <lists+clang-built-linux@lfdr.de>; Fri, 29 May 2020 20:11:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590808293; cv=pass;
        d=google.com; s=arc-20160816;
        b=CGpDPkVGfeKRJHmtkbcPZZxBrq+WI730PtDfV0acHguY2cK6wQ4IrqQlWA1VrJ6T5X
         Q2IiAeVVmblfPD0RhbXVt70TL+Q4SGaj+W/z/rxsxOvgN0tCorYXcQ3a9kOE9HsEsjxo
         BJwaiyVEFtd2pPEtIXUGuEXLorHHIuwpDaBIf/djY/jBi1EpkNaYVjUlMGW3MFx/JHjD
         uU7v0zN2YUiP7Yo/XJKDMPafEZ4OYHsTDLYu0O76zkfz6D5wsb/wkwBJDEtooioXJQkd
         MAysb14BkrSKfhaJraOxXPlM/vQphmHhbKwfQSmQkK3o3mSaE6gv9MLiw8d3rFBFz25y
         Z82A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=1sOzm7b0O28oHAOrmshdfBWXQsjbCZqSDO8bSw7dC5Y=;
        b=AsZHuexxDnnnM5+RSl9CssjXylnvWCXBFg565EKwAjYgg8R2u3oFLMyn10JXhVXlMm
         Xc2k1R6TUFwoahmORh5HudVM8sL9LcBXbfPSx2/cQ6LwGVkzY+fZSOT+PlYNtwmJjuc8
         Rm99y5+q4qCzAHV4mnN4sJ6eL8iwJoFzGJ35egemDyvvHWo3PgGwSSM+q6M2btU4uhi9
         0z4FmpMZ42AmMPwpwdtiJyp3jCSOEzfk6ZIe+t5Nqi07LBnS+mjlOl2hKVchmt00NRgj
         5+ZRbUBv0t0oyDdJVoKIptTaF0QUdEONNa/c7O55/IyeCBLmN0LgNILU20Aqw34hZLyu
         bDaA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=X2iomiCi;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1sOzm7b0O28oHAOrmshdfBWXQsjbCZqSDO8bSw7dC5Y=;
        b=C20oBf9LSLeQRlpjU0p4yPXQ0Vckucs1a1bX5w5boLRfJ1WADHyH9CE0PlPkhiyiui
         2MTcUJcWzfdNYVfhBOaun5/U+XyZjqO2PI42chHLLbjhuScJgG1evygUeapCrSYwUfea
         PMzOepM4DadlzCl61aoqCwjHtSXWaVPCDDnvZ2i46QiL6s0iR0lljJq1G2inE/xW8MAU
         tR1JUamkuid4cX22ss1W9Tq3JT3YDilUz+niWauMMPxDEcZ9I/qxcVkLiYtsxW9DKsC2
         1Z95wTnriKwvHs40zkdZf9BLti8THPbkB0y6v3QIQaHcoRqYPLV+yN54ZwoDb3X2+zNu
         z9Ag==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1sOzm7b0O28oHAOrmshdfBWXQsjbCZqSDO8bSw7dC5Y=;
        b=oAmiQUqsTC4GVdg7MYDcgpglXTHj/yTUPvnkpGJGiqjivALQ7K9RJchQt8LLUyEx2M
         PDDpnaoMJ1+Uz5wslgwyfSnDNvbPAKerUg/1S+e6ZnJR3+3TbO118yyVWP8YbjPiKi/O
         EmuOlX7NJ17DJi20jzZGbrnhzPvCIiRu8yOsi4L4v5p6w9iZTqH1NavAhYR4n1mWgDR2
         rNlWkHw7TPUS0pThIPcvaqD0rMOxBQaBtwByHmRYlflaqNYqJr+SCraB7otTpD2WpwOJ
         b18NjEe+o081dcms2K0jBivv2hdIpwSiIPru/MIpNBdMVb/0gg7Q/8BuTUb65NoFZX8b
         l0yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=1sOzm7b0O28oHAOrmshdfBWXQsjbCZqSDO8bSw7dC5Y=;
        b=tJ89YXrmvB2hpWA3TegvGT6YfnT++FN5dpVXQOFV2gMeNFTEZr6Uqqua8574hC1sBT
         jZmBwPo6OMIsn9eXysBbKLpvw6eOHBxHiJbaG1eex32jDvY/d/wf1DDAyaL/hW66YCH5
         3vb8O0LeKVtHcwSeeTURNPG9l78IDaMx4SgtObcnmJ6/lo4+8czc9qPZWYQFH7fZGPNA
         Bcdjt+GtlyZT0ZX3tb9vlUuVU63IFiEDamu3iESxPWCmgdrG24JC1ov5bIJ9pu8WVZhr
         clQY6cTHyoYJZ/XdUOhEY9hKBoScA3aIaEyrySJOW8PvsD0IT6MlJw38MMjM/+FXGs2R
         FrUw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530pmVz6e3sRjfRrl8MPt5HrW3hVw+3bUofQqXZZ5xUdDokR3Emq
	9X7PbfLZvYG3cmIGxckpT80=
X-Google-Smtp-Source: ABdhPJyhtXOMYlSEIhIt720cUvxYtlbaYbvlu22GPf6mIp5x9Mealkc0PBcir9z2iT/PVjRZEAwEnA==
X-Received: by 2002:a92:8558:: with SMTP id f85mr11078572ilh.228.1590808293629;
        Fri, 29 May 2020 20:11:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:84c6:: with SMTP id y67ls1957294ilk.10.gmail; Fri, 29
 May 2020 20:11:33 -0700 (PDT)
X-Received: by 2002:a92:de48:: with SMTP id e8mr10461437ilr.249.1590808293366;
        Fri, 29 May 2020 20:11:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590808293; cv=none;
        d=google.com; s=arc-20160816;
        b=dv23PHqyevIse0+a3Q40YrJP0Dll1SvTL7BtvFqFMDSUTmhZgyzNqdZEAPFi6rWYRP
         nKjG4f8lyYJKyuiVTTQkai3etqdPAjZfSVwkLkpkxYPuy8eEMUc+ziCvH/NdbaxQfFqq
         D8jpsnufTZ2V/N2ESdBlvHkASFLkj0bJRqxej6mXBWYVJOlJnCF2XVF2dybf3/xW3riA
         uv703uzF71R+g0dL+E/4rWnMm4YOy079EAGs3L6eDJGUG4HBByIF+k/sE4+7/XQod4sW
         Y45LlUTc3Epemy0M8R24pGWzQdJngYLtkVldMevnGT9qmPNPeYdb7eEvcgdlY2Anu844
         9syg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=itkS+rLxG0j3d2wAPSaT9vUD+EmHbZGAjTEvDwroJZY=;
        b=FAFBmLRXet+tUJpXHszEJixmH9kel1C4yrbmT9731vtv8dWL91qEHemL7VeslR5Jk8
         c5OJvaubf9dHJvD+1ovRmcda6G1Tr+186I1qI4VHIFxkOvLdW3YacfsL2kAe3jjY+Abq
         Zck28xfJ3uA517U5KcE4C4WEAnjrPfl4IZJ0ECod3D1q3ZOa7vOWoP69yjRIvcJ9kgJu
         bcaDcgDy1lbx7VOxfN+UqXteGPuD52HB+c/LUoKzkEbfUXhUFbGSrnE9jLJ3r1P0r3vT
         3v37+A7zB3NDdvXeIKmj13PzDMgomtmKCHQqHuNDVO7wRSzEjA5cxf3PVbak7r8cMfJS
         EEYg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=X2iomiCi;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id s66si824055ild.2.2020.05.29.20.11.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 May 2020 20:11:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id p21so773941pgm.13
        for <clang-built-linux@googlegroups.com>; Fri, 29 May 2020 20:11:33 -0700 (PDT)
X-Received: by 2002:a62:e801:: with SMTP id c1mr11425576pfi.217.1590808292708;
        Fri, 29 May 2020 20:11:32 -0700 (PDT)
Received: from ubuntu-s3-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id n19sm5384613pfu.194.2020.05.29.20.11.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 May 2020 20:11:31 -0700 (PDT)
Date: Fri, 29 May 2020 20:11:29 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	linux-media@vger.kernel.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH 9/9] staging: media: atomisp: add PMIC_OPREGION dependency
Message-ID: <20200530031129.GF1367069@ubuntu-s3-xlarge-x86>
References: <20200529200031.4117841-1-arnd@arndb.de>
 <20200529200031.4117841-9-arnd@arndb.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200529200031.4117841-9-arnd@arndb.de>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=X2iomiCi;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Fri, May 29, 2020 at 10:00:31PM +0200, Arnd Bergmann wrote:
> Without that driver, there is a link failure in
> 
> ERROR: modpost: "intel_soc_pmic_exec_mipi_pmic_seq_element"
> [drivers/staging/media/atomisp/pci/atomisp_gmin_platform.ko] undefined!
> 
> Add an explicit Kconfig dependency.
> 
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

It'd be interesting to know if this is strictly required for the driver
to work properly. The call to intel_soc_pmic_exec_mipi_pmic_seq_element
has some error handling after it, maybe that should just be surrounded
by an #ifdef or IS_ENABLED for PMIC_OPREGION, like some other drivers
do.

Regardless of that:

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

> ---
>  drivers/staging/media/atomisp/Kconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/staging/media/atomisp/Kconfig b/drivers/staging/media/atomisp/Kconfig
> index c4f3049b0706..e86311c14329 100644
> --- a/drivers/staging/media/atomisp/Kconfig
> +++ b/drivers/staging/media/atomisp/Kconfig
> @@ -11,6 +11,7 @@ menuconfig INTEL_ATOMISP
>  config VIDEO_ATOMISP
>  	tristate "Intel Atom Image Signal Processor Driver"
>  	depends on VIDEO_V4L2 && INTEL_ATOMISP
> +	depends on PMIC_OPREGION
>  	select IOSF_MBI
>  	select VIDEOBUF_VMALLOC
>  	---help---
> -- 
> 2.26.2
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200530031129.GF1367069%40ubuntu-s3-xlarge-x86.
