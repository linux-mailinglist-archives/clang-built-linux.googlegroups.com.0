Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBSU2WP2AKGQEANJPCFA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1040.google.com (mail-pj1-x1040.google.com [IPv6:2607:f8b0:4864:20::1040])
	by mail.lfdr.de (Postfix) with ESMTPS id 24BCC1A1563
	for <lists+clang-built-linux@lfdr.de>; Tue,  7 Apr 2020 20:58:20 +0200 (CEST)
Received: by mail-pj1-x1040.google.com with SMTP id q10sf371959pja.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 07 Apr 2020 11:58:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586285899; cv=pass;
        d=google.com; s=arc-20160816;
        b=bsvobEMwHaChsvFqJ+tDVoN2zKF/NBOsh4p22LZD4h72kG4UVdCGaEbt1KrJKrG/gQ
         lJH/sumgvZ93b6lFxYRZWSdS9t5RtCBMD8b4xLvvuiWN3H9/euLGu3qwbb2yM8rZiwU0
         LW3TTapsI3HXcqLYjcyd8g2iybIpwMrxuV4qkMAroQi+C2yV+k6AsaGo/26F5hpqCgbZ
         jM5ixf14WjfHwxvjmhRofe56UPZYkALEXlb2E+0n7b5IKqLldZZyezk0RW7QZKKOKp9j
         RmTjYNTUYlFlTYtPhOaJ7guzdbwLTrGZQTW0dTvxOSJrFASDNTo6uka95Plu9xk2btxP
         kaWQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=K7ohy/7tJiC7DdP1/sYowvUcVTYNLZWAKqpayg2t8M0=;
        b=vNJxDCXGRrjsPEu88ikVZUakshDN38jkZ3iWLu7ac/+eubYggNlqKJN5u2QD9yyqGZ
         ccQoK3UKfB5cTqeiSY9zPbJ/aS1bE8iNJ2C5UxJLuEz+fSOuePNojN4xo6p5WZbki69z
         B9sGMfJV/OGmW1XaZEMTpb3A79qfvAX5nCM6vwnuMHIvymlklaEB4qds2vwVRTNDI+to
         ivLYOz/WaXIyQ30zjA6PmXrgn24ee8f9eKDPsjAyGich2EtVgRSatQm0uSxmk0Kq9nwb
         ytqjotSrAC7GJcFzlLomqNXhvtOnpoMma3C+NVJCjlzpIehn87PrW/fYOXZdST38KL21
         huTQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gr+rckUK;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=K7ohy/7tJiC7DdP1/sYowvUcVTYNLZWAKqpayg2t8M0=;
        b=MoKF6oEoYee/yeZ9f8ouA9jpYPi0nahSsONcxQPWZUYtxHczKePjUvyeOXp/nYwOJV
         Pn0C/X+dkwBC62R+Om02gV/QM9ZMWZK+SfobKfgQru+qyZqp4nX4UizWXeEGTE21kblr
         LlAnYaM21tkIg5YxMAIO9fRlW67NtOdRAWlZL7g5O5HyJKlZluS93KDMtVI2dQxeqaEw
         I2jmjD8KS262jdGpwze797TSBZ1xmSioOXowuPnZZowmsm/D/yeTvBMvzPJZzgNTzT6s
         natsvBFuHRYi8HOR312nl87fM6HeByn0LsR+HZhZ8ZnhRyIutAW3wLZsXNMIGZj3Y5P3
         8bBA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=K7ohy/7tJiC7DdP1/sYowvUcVTYNLZWAKqpayg2t8M0=;
        b=hbNbaEuS2vILZYcIdcfC55TPa05NcJjxDLoP+CIgNUgY6gePBWjl3zVH/jfwclCab7
         kF5iZ+dzB4tF/NCbkEdrML6u8i1cxrJql/RfsRv+duvfrt+apwQnUsAacmptBRYPUtWm
         2uwPGPJJmuYoxexZf9TDau7nBo7AoAYbHFbjmF+s657an2b0Z1DLJNlUjxJFJ3TbZXr8
         JUyD3fm4EEwyuFqtL2f0Mux77Bxg/hHVs/yxqPf7SbysaeOzvx6/2z9PSmTTfRWuaEPj
         CN2zUsyjasugtusnGg5jD74jsaHvlkiENmJMnFj/8LXvRdxfmv/bnpMCQrGlx5eTKbHI
         8qAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=K7ohy/7tJiC7DdP1/sYowvUcVTYNLZWAKqpayg2t8M0=;
        b=COIFiHXqJMzpsdOlGgkB7TPe3zZOE2VrBiAkQOJlZKE74dHyXkzW7V10WT0S6+eQKa
         W4H/MKDZmI3D8zpSklJqIxjCFOGkrDgnN2CaxRbVPOQfQwV2e+RIQnHpOVKTI9HhwTEV
         yEbUmTcXgB/vV6poSF+j+VGdcyAj1rSAK36sIpVWpZWPs1peZGU+laE+yc5+WDSR4qqj
         YG51dvxW51c81Mxd2whUFhHY9ncEtzo712NQdgaeNUBo2InPpFDBTq8P9dDqQAAHxgKe
         YSPZb43R+icrOvNPCFs4pmvKpQAHB8NzTIHFSOXDAEhbNbNTOz6muTM2Cak6j1Jc3kC/
         Je3Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuYQGWhdnrGQnJzsVZrkchVmb/GGfVGR3gkyIdu0Woj43B8uJHHj
	/ert1P0F5unLLygyj/C4NYk=
X-Google-Smtp-Source: APiQypI5orktmFx25qSIdFfpPg1hwtvUnaPodvYdWO/fxzjgfs4JiTYtg+qyJWWOfwpCiAr2dDmUhw==
X-Received: by 2002:a17:902:6b84:: with SMTP id p4mr3658760plk.343.1586285898813;
        Tue, 07 Apr 2020 11:58:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:6456:: with SMTP id y83ls2350668pfb.7.gmail; Tue, 07 Apr
 2020 11:58:18 -0700 (PDT)
X-Received: by 2002:a63:ff53:: with SMTP id s19mr3476389pgk.247.1586285898413;
        Tue, 07 Apr 2020 11:58:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586285898; cv=none;
        d=google.com; s=arc-20160816;
        b=f0/Su39v6zgTUGQjpylToT7ExYwj77Ed3Sc0Nnxg2sdl5+8MI6eaFGkYVy3TVi7IgF
         nMoJHZgOc9DCv/RfCixhx9t97qXRZGVWsxMyPZgEAwgTAiP+8iS8M/L/g8wOgWhPpfcs
         YwtkQL9t8b2/Y3+hdbtp95bI3bCEUgJ987EJmlduOUabqZ0rln4ab8HyN0vPTagcL75I
         m1ywu5/2r0IMrssH41WYOSjS0bnkVpBFUA5fv37SnJOHv8X0eLh/HXFBPvl4bjeiROIq
         AetMN3K2vO2tWOySl1VXFmNwlGov46bmqRszAtkI590jkV2Zqqtq75v81PKZ7+G3QWlM
         1UUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=QGY37FNAkjMLaN4OPkvvGVRfJPoF2m0cC0lGKtXcqAo=;
        b=VsdoXQujPW2iatb87y1HPVeGCSNXA39C6HgAUJoNbWB7iSuijnPQKjpl2Wf3ZRjNNe
         p14l+kciHwr3VbuHOdzqV2aPhDWyfYS7nHw2QBDeRBOoiIKzRFLJpeTajlBoIxphrQxK
         o/UDYxIMy8YMHZN6/BvgJ5VlEgMuyxzooczVY+9Mn6N7PGieDD5UaFKL3QQrlro6+BRV
         /58/meKgCxYcEIOQdcd1Pjzue++VyVjrefeYjHj1AAVVHdLmW1YrDKhTCh8Lihbf/I5M
         z3bzQGYYYX+8LjoGINlwy8WvypILQeOyGwGHs+e0dRGMxn8WrmvcRaFf5LyNHaJKz+jE
         k/gg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gr+rckUK;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com. [2607:f8b0:4864:20::343])
        by gmr-mx.google.com with ESMTPS id c125si270411pga.5.2020.04.07.11.58.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Apr 2020 11:58:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) client-ip=2607:f8b0:4864:20::343;
Received: by mail-ot1-x343.google.com with SMTP id a49so4235942otc.11
        for <clang-built-linux@googlegroups.com>; Tue, 07 Apr 2020 11:58:18 -0700 (PDT)
X-Received: by 2002:a9d:75d0:: with SMTP id c16mr2826857otl.8.1586285897659;
        Tue, 07 Apr 2020 11:58:17 -0700 (PDT)
Received: from ubuntu-s3-xlarge-x86 ([2604:1380:4111:8b00::3])
        by smtp.gmail.com with ESMTPSA id 90sm5534875otc.29.2020.04.07.11.58.17
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 07 Apr 2020 11:58:17 -0700 (PDT)
Date: Tue, 7 Apr 2020 11:58:15 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Stephen Rothwell <sfr@canb.auug.org.au>
Cc: "Michael S. Tsirkin" <mst@redhat.com>,
	Linux Next Mailing List <linux-next@vger.kernel.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Gerd Hoffmann <kraxel@redhat.com>,
	clang-built-linux@googlegroups.com
Subject: Re: linux-next: build failure after merge of the vhost tree
Message-ID: <20200407185815.GA1805@ubuntu-s3-xlarge-x86>
References: <20200407130542.0e3b5d9d@canb.auug.org.au>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200407130542.0e3b5d9d@canb.auug.org.au>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=gr+rckUK;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Tue, Apr 07, 2020 at 01:05:42PM +1000, Stephen Rothwell wrote:
> Hi all,
> 
> After merging the vhost tree, today's linux-next build (x86_64
> allmodconfig) failed like this:
> 
> drivers/gpu/drm/virtio/virtgpu_kms.c: In function 'virtio_gpu_init':
> drivers/gpu/drm/virtio/virtgpu_kms.c:153:38: error: 'VIRTIO_RING_F_INDIRECT_DESC' undeclared (first use in this function)
>   153 |  if (virtio_has_feature(vgdev->vdev, VIRTIO_RING_F_INDIRECT_DESC)) {
>       |                                      ^~~~~~~~~~~~~~~~~~~~~~~~~~~
> drivers/gpu/drm/virtio/virtgpu_kms.c:153:38: note: each undeclared identifier is reported only once for each function it appears in
> 
> Caused by commit
> 
>   898952f9597e ("virtio: stop using legacy struct vring in kernel")
> 
> interacting with commit
> 
>   5edbb5608256 ("drm/virtio: fix ring free check")
> 
> from Linus' tree (post v5.6).
> 
> I have added the following merge fix patch for today.
> 
> From: Stephen Rothwell <sfr@canb.auug.org.au>
> Date: Tue, 7 Apr 2020 12:58:26 +1000
> Subject: [PATCH] drm/virtio: fix up for include file changes
> 
> Signed-off-by: Stephen Rothwell <sfr@canb.auug.org.au>
> ---
>  drivers/gpu/drm/virtio/virtgpu_kms.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/gpu/drm/virtio/virtgpu_kms.c b/drivers/gpu/drm/virtio/virtgpu_kms.c
> index 023a030ca7b9..f4ea4cef5e23 100644
> --- a/drivers/gpu/drm/virtio/virtgpu_kms.c
> +++ b/drivers/gpu/drm/virtio/virtgpu_kms.c
> @@ -25,6 +25,7 @@
>  
>  #include <linux/virtio.h>
>  #include <linux/virtio_config.h>
> +#include <linux/virtio_ring.h>
>  
>  #include <drm/drm_file.h>
>  
> -- 
> 2.25.0
> 
> I do have to wonder why all this code has been added to the vhost tree
> during the second week of the merge window (especially when I see it
> rebased 4 times in one day :-().  Is it really intended for v5.7?
> -- 
> Cheers,
> Stephen Rothwell

Linaro's CI also reports an issue with this patch with the remoteproc
drivers that were freshly merged in Linus' tree for 5.7-rc1 (seen with a
simple arm allyesconfig build):

drivers/rpmsg/mtk_rpmsg.c:68:2: error: implicit declaration of function 'kfree' [-Werror,-Wimplicit-function-declaration]
drivers/rpmsg/mtk_rpmsg.c:93:9: error: implicit declaration of function 'kzalloc' [-Werror,-Wimplicit-function-declaration]
drivers/rpmsg/mtk_rpmsg.c:170:2: error: implicit declaration of function 'kfree' [-Werror,-Wimplicit-function-declaration]
drivers/rpmsg/mtk_rpmsg.c:204:9: error: implicit declaration of function 'kzalloc' [-Werror,-Wimplicit-function-declaration]
drivers/rpmsg/mtk_rpmsg.c:223:3: error: implicit declaration of function 'kfree' [-Werror,-Wimplicit-function-declaration]
drivers/rpmsg/mtk_rpmsg.c:259:9: error: implicit declaration of function 'kzalloc' [-Werror,-Wimplicit-function-declaration]
drivers/rpmsg/mtk_rpmsg.c:376:3: error: implicit declaration of function 'kfree' [-Werror,-Wimplicit-function-declaration]
drivers/rpmsg/mtk_rpmsg.c:387:15: error: implicit declaration of function 'kzalloc' [-Werror,-Wimplicit-function-declaration]
drivers/rpmsg/mtk_rpmsg.c:409:2: error: implicit declaration of function 'kfree' [-Werror,-Wimplicit-function-declaration]
drivers/remoteproc/stm32_rproc.c:152:14: error: implicit declaration of function 'kcalloc' [-Werror,-Wimplicit-function-declaration]
drivers/remoteproc/stm32_rproc.c:179:2: error: implicit declaration of function 'kfree' [-Werror,-Wimplicit-function-declaration]

It seems like this series shouldn't be in -next until after 5.7-rc1 (or
rebased on Linus' tree if it is intended for the merge window).

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200407185815.GA1805%40ubuntu-s3-xlarge-x86.
