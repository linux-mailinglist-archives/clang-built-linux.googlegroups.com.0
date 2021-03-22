Return-Path: <clang-built-linux+bncBC27X66SWQMBBXGJ4KBAMGQEJRBU44A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3c.google.com (mail-qv1-xf3c.google.com [IPv6:2607:f8b0:4864:20::f3c])
	by mail.lfdr.de (Postfix) with ESMTPS id C4EB33446B9
	for <lists+clang-built-linux@lfdr.de>; Mon, 22 Mar 2021 15:08:29 +0100 (CET)
Received: by mail-qv1-xf3c.google.com with SMTP id o14sf37281523qvn.18
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Mar 2021 07:08:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616422109; cv=pass;
        d=google.com; s=arc-20160816;
        b=ortWZeiYOP/fF3gZVuH1DEe7J5aXXt6+bfOKAyLimXzRgpSLxszQkG+iPfYfJW5cxz
         4gcTu2PDuTqbHk+XFHAosoaHKisKW/cKaJm+XU400PgJ3iw+vER9g285p8K54aNnd4Zm
         18TNF4BysoiitksHqm+tI9cQ09/ejqZTcy3AyA7aHLWelvKZ51WOBSc0Sp543BNM0epo
         jf/MYsxrW9DnIirsVcnY3kRG5aQm8EjqtjAjqCTbaBLy5WeD5SU29bzBHep8kNaPXrDh
         1DriSDXtxMCCUaCl/vfx6CDhipG5yMWn6iWlUoYEyrmHFH2PyPrCSpIOiE79OtDJSEd+
         roSg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=Enb2RCHfz5L/xclSaRiabUNOMFLncDrWy2ExFPu23FA=;
        b=XFJnakot6zY2u9GwAxcWaorMq7rCyYhC8luvS/r378VFo3hBOoz7xn5oj1AW2QLczh
         HXu12breZHEd/pAj4Rp4GdfoTYBYIYh37iAoHIkh6SG16JBUVVw7cY8oUnPWYshgfFGw
         n1uPNHerIMC0uCSuDtej35gj5nSGD4gsm3cX7Ho/oH4lorLj5Nte+Jj1BYsWSme5uNUd
         sOEzeko0HuyEegO68ML0TG8yvmLWJYOf5ChERVdYVRZMftNLlIB0tbMQv+qFJGJa/vf/
         iHNxP50PfoG3rZHtxGxngze0M/sVAVJX+Yp2OcRrjR8PtITWVAFlY5c8Cm2lTkFgQGut
         y72w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=CHZliN66;
       spf=pass (google.com: domain of trix@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Enb2RCHfz5L/xclSaRiabUNOMFLncDrWy2ExFPu23FA=;
        b=gYWQLYRWyeGcDEqA7tDlCefXUN7+5Gd2xXmkEjjodHwOpUZXMcneFkZb/w0iNOKy+Y
         ZX0flpiTTm5bzmOvN6ViXttvItRDF82eL4tSk2YDqeX5p0jCWg+jNsgfXu/WFdQy8HTa
         AFuxSNBYVO1q2i03kqr7J2dXl9+dcn7vhn198xYKDF2rYLZqXUMVhZ8TRPVKftHm0s21
         pokaTxlKtgKKxAiTYMVco/KpM7i/XDLDSAfEpQdp3FHFDxkWHHahbbKpHY128UjDPLCo
         Bu+uWezXzpOGqQbQF19NJuefUGE2v2F3k4MoFzMutyI4xI/BO94KvKz68oJN7j9rAfhd
         oWZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Enb2RCHfz5L/xclSaRiabUNOMFLncDrWy2ExFPu23FA=;
        b=B2UCXcBLuQMEt1KN5j7BmW6cisNXWZyI+QOZL5sXEuqUAac/2ugKqlv+OGZ30fC011
         gMILTIoHjB2blKWDPEy3GSdbLIFwMy05sqse696+l7hiBWpnxu+SaTxCLYSycejBI325
         8Yupuls/W/M/iUeoolfVVUBczOvIapqfJ23tzSz4qJdWrsVq/JkLQvfZUpIXYCBPYIIA
         Ul4UieTiHm/bbxFt1Ld0i4QY9zVJDfXCBoyWb2sD4feFEomysixtmlqibRYvAQKOKTlm
         SXNq05EyA3Ki95oRunfTGL1BItdBbv89qLd2AQZjs7+Ai6DamVeWGDtSF5oNDDlwD6bR
         jidA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532mt2hkGlYllpI+9g1zTw5HhU5+3/1yqbXBucVrm+cnCC0abYrm
	ksQ9VvHGPPGofZx4r2RmBhw=
X-Google-Smtp-Source: ABdhPJwRFLgwaawJel+0O78sABp2REr6LUR2pa4jqvIUbq0lccACtgyZgHziHBeQpyjuLTunZgRfLw==
X-Received: by 2002:a05:620a:13db:: with SMTP id g27mr155474qkl.367.1616422108747;
        Mon, 22 Mar 2021 07:08:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:5781:: with SMTP id v1ls4964342qta.3.gmail; Mon, 22 Mar
 2021 07:08:28 -0700 (PDT)
X-Received: by 2002:aed:39e2:: with SMTP id m89mr94025qte.12.1616422108242;
        Mon, 22 Mar 2021 07:08:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616422108; cv=none;
        d=google.com; s=arc-20160816;
        b=R5HXcJE2B4E24tzH+wxPJ/s6gYSSTT+Jv/RvCwECDWekUoHbXzW1GMwEfXaHHF59q6
         QavVaJ8EcD9B1YDEaZtv4cibrW4UH+yvz11SmAiTfVGFXmVBKyWJbUp+8t3A9mf69GbC
         3WlN0oHZJY4kEYds7rkC7jXflJzxqnc6bSeFLtaORdD/qczqbsRP77nUygPjQMKuMaRr
         TfMy9MDVZ81JUlNXpvIAuxUbi/ix99GgHnYW1FlHWew8+N3IP8+/ild0W/5sPTDGLTji
         s7npw1nsCiYiEqQxuhE4pn0aSAnH7FhPnOfzLgTgxA5vtuoVh3XWsPhUVzR/vbPro1Lh
         QwxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=FVgT8cREJNNCZgsvwdo4IVCZkhVlPEV4H/HRfF+vQHs=;
        b=HH4JJWYvJ5lT3jJUZr8C48SowAB7ioH5hxJyWHvfVviF4P8/6OUPAkZlIPTyzsmRfJ
         f/8oaSrS/9cnK2FSjuwbNw/f9EHkZv77uO4Z93Ty4lZcPAsHA561DrEcfdyAH0OlLcbu
         qnPG2XJ59VZEnotnMG3gI5cSA4hcbjxzqLahDkCdV4mlbt1o6s2/246toLJTUnDj4hEd
         2qwV8VGGwb9l1Cwl21Y2O1Fym2Ok5Fh7v+MlrA9j6VC4CQMzrOu6qh1CKAuR2M7t2ELh
         0SBEicPuxn+bREBgXM7GEPyA/vEmTFHnUCch5q1V9ESX1WbXSmrqChqLHKjQguHNsD1Y
         QT4A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=CHZliN66;
       spf=pass (google.com: domain of trix@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id h6si63725qkn.0.2021.03.22.07.08.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Mar 2021 07:08:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of trix@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com
 [209.85.160.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-207-i1JmIJcTOOucQ2YJTDK8zw-1; Mon, 22 Mar 2021 10:08:26 -0400
X-MC-Unique: i1JmIJcTOOucQ2YJTDK8zw-1
Received: by mail-qt1-f197.google.com with SMTP id j2so26408023qtv.10
        for <clang-built-linux@googlegroups.com>; Mon, 22 Mar 2021 07:08:26 -0700 (PDT)
X-Received: by 2002:a37:a74e:: with SMTP id q75mr170985qke.165.1616422105659;
        Mon, 22 Mar 2021 07:08:25 -0700 (PDT)
X-Received: by 2002:a37:a74e:: with SMTP id q75mr170943qke.165.1616422105378;
        Mon, 22 Mar 2021 07:08:25 -0700 (PDT)
Received: from trix.remote.csb (075-142-250-213.res.spectrum.com. [75.142.250.213])
        by smtp.gmail.com with ESMTPSA id z8sm9014413qtn.12.2021.03.22.07.08.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Mar 2021 07:08:25 -0700 (PDT)
Subject: Re: [PATCH] amdgpu: avoid incorrect %hu format string
To: Arnd Bergmann <arnd@kernel.org>, Alex Deucher
 <alexander.deucher@amd.com>, =?UTF-8?Q?Christian_K=c3=b6nig?=
 <christian.koenig@amd.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>
Cc: Arnd Bergmann <arnd@arndb.de>, Nathan Chancellor <nathan@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>, Lee Jones
 <lee.jones@linaro.org>, Chen Li <chenli@uniontech.com>,
 Sonny Jiang <sonny.jiang@amd.com>, xinhui pan <xinhui.pan@amd.com>,
 amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
References: <20210322115458.3961825-1-arnd@kernel.org>
From: Tom Rix <trix@redhat.com>
Message-ID: <eefe9a55-4212-4d51-6add-9eb9ead0b5ed@redhat.com>
Date: Mon, 22 Mar 2021 07:08:22 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <20210322115458.3961825-1-arnd@kernel.org>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: trix@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=CHZliN66;
       spf=pass (google.com: domain of trix@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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


On 3/22/21 4:54 AM, Arnd Bergmann wrote:
> From: Arnd Bergmann <arnd@arndb.de>
>
> clang points out that the %hu format string does not match the type
> of the variables here:
>
> drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c:263:7: warning: format specifies type 'unsigned short' but the argument has type 'unsigned int' [-Wformat]
>                                   version_major, version_minor);
>                                   ^~~~~~~~~~~~~
> include/drm/drm_print.h:498:19: note: expanded from macro 'DRM_ERROR'
>         __drm_err(fmt, ##__VA_ARGS__)
>                   ~~~    ^~~~~~~~~~~
>
> Change it to a regular %u, the same way a previous patch did for
> another instance of the same warning.

It would be good to explicitly call out the change.

ex/ do you mean mine ?

0b437e64e0af ("drm/amdgpu: remove h from printk format specifier")

This was for a different reason.

imo, you do not need to include what another patch did.

so you could also just remove this bit from the commit log.


The change itself looks good.

Reviewed-by: Tom Rix <trix@redhat.com>

>
> Fixes: 0b437e64e0af ("drm/amdgpu: remove h from printk format specifier")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c
> index e2ed4689118a..c6dbc0801604 100644
> --- a/drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c
> +++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c
> @@ -259,7 +259,7 @@ int amdgpu_uvd_sw_init(struct amdgpu_device *adev)
>  		if ((adev->asic_type == CHIP_POLARIS10 ||
>  		     adev->asic_type == CHIP_POLARIS11) &&
>  		    (adev->uvd.fw_version < FW_1_66_16))
> -			DRM_ERROR("POLARIS10/11 UVD firmware version %hu.%hu is too old.\n",
> +			DRM_ERROR("POLARIS10/11 UVD firmware version %u.%u is too old.\n",
>  				  version_major, version_minor);
>  	} else {
>  		unsigned int enc_major, enc_minor, dec_minor;

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/eefe9a55-4212-4d51-6add-9eb9ead0b5ed%40redhat.com.
