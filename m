Return-Path: <clang-built-linux+bncBCQYDA7264GRBD5BX32AKGQEJNBDN2I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd38.google.com (mail-io1-xd38.google.com [IPv6:2607:f8b0:4864:20::d38])
	by mail.lfdr.de (Postfix) with ESMTPS id 17BB31A3BC5
	for <lists+clang-built-linux@lfdr.de>; Thu,  9 Apr 2020 23:16:02 +0200 (CEST)
Received: by mail-io1-xd38.google.com with SMTP id v3sf31172iod.23
        for <lists+clang-built-linux@lfdr.de>; Thu, 09 Apr 2020 14:16:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586466961; cv=pass;
        d=google.com; s=arc-20160816;
        b=xcOOTY8YrSDVGt7Vzy8ZeYt9WcugCF5FfL2f8B4OH9CqnY/8q378Xud4n5uou7e72t
         zfLNWvmQkD+jd1eUQxWm8tBlYyCnJacDNseZL0EomH2cCI6rzmDGQXE2pzdRytpLNGQV
         V71L36EOjuWoXwq1Ds6ElQh9+Xm7O2qEVvUgSIzJ2hy3CxQWwfRLBHlY7F07uSz2dKIS
         ZwHgWl/mlzCuMDVVKl6mFn675aNMglnNUGLi2aUcYcN1O37+Ev4e8lZ3z5SqceqE8lgU
         ACo4aID6tiW3sUXUmKVNdqkxgoiC/vyh/YtpEJrWvB4B072ZrRWrCdhRdfCgaLRX10T6
         8Kug==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-disposition:in-reply-to
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=lFSH+qi+oMsHnylZs/iAsz4EyG5HgdDjXs6U1BjfKpo=;
        b=wTr8E83w7t7H3l2MxGv0b/rtib6l6rLd4DRUKEPyv0ApgI8HMI9MLWvyGMEjgweM6f
         u4O6lG4/WTj/nODRTy9uIOvljVuopb4sZ6gpUfg9wvsVFFBJ9hOERix0SQoBO08Hvga2
         aUoFFlnGVRQ3iU2uuoYDszWt5ve9azyljm4+nf0JF4JpesJ/DJ9aiMUCpZTm99JfYcDi
         Ca58yBNeDiuGvreRLJL3daqKqqasQ77B0GApGWDiKtUSkPtJSIKz5E/Iugjz4snXPqJk
         tsrFj5HoPiKOYi+727qgSushOZJnUtZ8qZ4l4r9GThmwWSDje1SzPlFDphLtIqzaGNLi
         OaVQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=DozVcsGK;
       spf=pass (google.com: domain of mst@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=mst@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :in-reply-to:content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=lFSH+qi+oMsHnylZs/iAsz4EyG5HgdDjXs6U1BjfKpo=;
        b=Ox9llnGaNVIZ2bzciM82tAPtrqc80yz4462m9p9jAABsVD4VU9/Pc4otQX2VubjTgz
         2CVTdNI4X2vxX3Oq8AZD1RTD5oN3rzz7ToN1lA2tOIBk+/Qm8u6fI6hpPAcfn1r1E9yW
         /z7Xru7niVd98rU5En5LW0PkjpsCyOD4aZNx3FxWBNrX1Kjz5REJgy+yytwoosuFS0eu
         bhUm17I2jTXGfpoAKq970H9nNzYnnWEhqIGYTx91QBz/Ek9I0oZzjt80+PjMQioC6bY1
         kjWvdh2F4ESm287kGqeWuPN3Zjw8clYSzv67seUAFFQ25JHgImzVMUMWl8embtK2SDSP
         FRzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:in-reply-to:content-disposition
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=lFSH+qi+oMsHnylZs/iAsz4EyG5HgdDjXs6U1BjfKpo=;
        b=JIpwaft7LRpBHwgvZCiqelmcbYJd6ndrnLfAmaCOXySnDgWDlwPZ9glh97Cv1VZP+g
         HEeO2jput3/q6BOyQgo/oalfpcJtOnXir9+P3Xgt+2fGBzcFvmDEgIkY6ztv7qK3WeYV
         MeFIojJIXjhhZ5qvxkdaLAg9mqGvWCt6beJSxwu9zN+mpWpdUa7cwcGCsddodTGWU1Xs
         B/Up6e7okVx+UJxZpcUuwH5dlDqHUkpljZ/lpPWV3Q38fKJIN7mmG9sTkmIqWrfpaogH
         RSGUIIXXEtO5WJuKyWJjcmMV666H1czRmJp14wjoOI6knDsR2u3qFuFp1c4TYEc6h4s/
         FzoA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PubVyjoPY7LhARssvxtHCKOeU1HbEYPoiMRpfj1/lZW8VSArpmkq
	bVV4vSRIGhJQl7fBV6/vOQ8=
X-Google-Smtp-Source: APiQypKCni1DVqbbMjQ9orD7TgPxZKdUcvzvTR0j6b71yC4z1AePfkzZjWjeoj/0PzQv8FEgtNXjrw==
X-Received: by 2002:a05:6602:15c2:: with SMTP id f2mr1222928iow.179.1586466959490;
        Thu, 09 Apr 2020 14:15:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:3e83:: with SMTP id l125ls2985998ioa.9.gmail; Thu, 09
 Apr 2020 14:15:58 -0700 (PDT)
X-Received: by 2002:a05:6602:446:: with SMTP id e6mr1230357iov.114.1586466958451;
        Thu, 09 Apr 2020 14:15:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586466958; cv=none;
        d=google.com; s=arc-20160816;
        b=cnYjTYBhWdsg4WehddVUkSZh0i0+EdUzk0WgMIthbMZe7ONCDRhcqtI7xOsiMkMZLU
         2NjQpQHUzY0S7F2iI8huO/VVQeAnVoNC4B4W4P68nkPgh3f1m0YVHj79UCs7EMbOOo9Y
         RZJ72AdBznLAgwmW+ZdkrwimBI6I86WKwRICKIW4bHpgA+q34xybaUTjx/7G7r8Kniow
         Rlu5Rdab2ChAoz5TVLXHkV5KMeeXFNuLGG2TtZG9trnLDflWNfcr4F7cO0zITQqwgXcp
         FHwEOJa1TottrmSullyCKWYQofRWzfCAMwwb2PrpCQquO/UZrhV15P6eyOg4AaETam3i
         p6PQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:content-transfer-encoding:in-reply-to
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=JLLnC1eiQbD9bSK86/H9dA+8hZu3B7gVu5rNaccskrs=;
        b=LeAqoXCl+vxNwJHp0gv7qd7+UFhwPbxWLRrgymY/mKaTmnbetP6wY/YfrV5klJkvLq
         qtpHGo/LTx3wG8E2te8qV4yEndAY2oNLfl+gOR2AfM91F/QQ0GikD8tUXf1yKpcoXpp5
         1PfQSJj9Y/NxsaaMqDwHxVkyM2djhFkSxigYSEX1wVws9zPgHfEhLGMJm2z9o6oP73Aq
         CTl9RrILtgLLp67TLmTAGk97hYEQU1Bwaijlt2kETIfCP9edLF6AxCVek9GV8BfYoqt1
         N728J0edCKS0YjnpKwy+3irmyU4Yf1p7bicxS3wjeX754oJ4k1u+0cBihEW5JhjqyaQY
         lEqg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=DozVcsGK;
       spf=pass (google.com: domain of mst@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=mst@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com. [207.211.31.81])
        by gmr-mx.google.com with ESMTPS id g17si14182ioe.0.2020.04.09.14.15.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Apr 2020 14:15:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of mst@redhat.com designates 207.211.31.81 as permitted sender) client-ip=207.211.31.81;
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-225-_cRFbB7INPaws291kRh8gw-1; Thu, 09 Apr 2020 17:15:56 -0400
X-MC-Unique: _cRFbB7INPaws291kRh8gw-1
Received: by mail-wm1-f70.google.com with SMTP id t62so80649wma.0
        for <clang-built-linux@googlegroups.com>; Thu, 09 Apr 2020 14:15:55 -0700 (PDT)
X-Received: by 2002:adf:b78b:: with SMTP id s11mr1032851wre.235.1586466954849;
        Thu, 09 Apr 2020 14:15:54 -0700 (PDT)
X-Received: by 2002:adf:b78b:: with SMTP id s11mr1032831wre.235.1586466954660;
        Thu, 09 Apr 2020 14:15:54 -0700 (PDT)
Received: from redhat.com (bzq-109-67-97-76.red.bezeqint.net. [109.67.97.76])
        by smtp.gmail.com with ESMTPSA id k184sm5096224wmf.9.2020.04.09.14.15.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Apr 2020 14:15:54 -0700 (PDT)
Date: Thu, 9 Apr 2020 17:15:51 -0400
From: "Michael S. Tsirkin" <mst@redhat.com>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Stephen Rothwell <sfr@canb.auug.org.au>,
	Linux Next Mailing List <linux-next@vger.kernel.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Gerd Hoffmann <kraxel@redhat.com>,
	clang-built-linux@googlegroups.com
Subject: Re: linux-next: build failure after merge of the vhost tree
Message-ID: <20200409170923-mutt-send-email-mst@kernel.org>
References: <20200407130542.0e3b5d9d@canb.auug.org.au>
 <20200407185815.GA1805@ubuntu-s3-xlarge-x86>
MIME-Version: 1.0
In-Reply-To: <20200407185815.GA1805@ubuntu-s3-xlarge-x86>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: mst@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=DozVcsGK;
       spf=pass (google.com: domain of mst@redhat.com designates 207.211.31.81
 as permitted sender) smtp.mailfrom=mst@redhat.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=redhat.com
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

On Tue, Apr 07, 2020 at 11:58:15AM -0700, Nathan Chancellor wrote:
> On Tue, Apr 07, 2020 at 01:05:42PM +1000, Stephen Rothwell wrote:
> > Hi all,
> > 
> > After merging the vhost tree, today's linux-next build (x86_64
> > allmodconfig) failed like this:
> > 
> > drivers/gpu/drm/virtio/virtgpu_kms.c: In function 'virtio_gpu_init':
> > drivers/gpu/drm/virtio/virtgpu_kms.c:153:38: error: 'VIRTIO_RING_F_INDIRECT_DESC' undeclared (first use in this function)
> >   153 |  if (virtio_has_feature(vgdev->vdev, VIRTIO_RING_F_INDIRECT_DESC)) {
> >       |                                      ^~~~~~~~~~~~~~~~~~~~~~~~~~~
> > drivers/gpu/drm/virtio/virtgpu_kms.c:153:38: note: each undeclared identifier is reported only once for each function it appears in
> > 
> > Caused by commit
> > 
> >   898952f9597e ("virtio: stop using legacy struct vring in kernel")
> > 
> > interacting with commit
> > 
> >   5edbb5608256 ("drm/virtio: fix ring free check")
> > 
> > from Linus' tree (post v5.6).
> > 
> > I have added the following merge fix patch for today.
> > 
> > From: Stephen Rothwell <sfr@canb.auug.org.au>
> > Date: Tue, 7 Apr 2020 12:58:26 +1000
> > Subject: [PATCH] drm/virtio: fix up for include file changes
> > 
> > Signed-off-by: Stephen Rothwell <sfr@canb.auug.org.au>
> > ---
> >  drivers/gpu/drm/virtio/virtgpu_kms.c | 1 +
> >  1 file changed, 1 insertion(+)
> > 
> > diff --git a/drivers/gpu/drm/virtio/virtgpu_kms.c b/drivers/gpu/drm/virtio/virtgpu_kms.c
> > index 023a030ca7b9..f4ea4cef5e23 100644
> > --- a/drivers/gpu/drm/virtio/virtgpu_kms.c
> > +++ b/drivers/gpu/drm/virtio/virtgpu_kms.c
> > @@ -25,6 +25,7 @@
> >  
> >  #include <linux/virtio.h>
> >  #include <linux/virtio_config.h>
> > +#include <linux/virtio_ring.h>
> >  
> >  #include <drm/drm_file.h>
> >  
> > -- 
> > 2.25.0
> > 
> > I do have to wonder why all this code has been added to the vhost tree
> > during the second week of the merge window (especially when I see it
> > rebased 4 times in one day :-().  Is it really intended for v5.7?

I pushed to next branch by mistake as I was publishing a tree for others to test, sorry.
But yes the final version (which should be ok now hopefully) is intended
for 5.7.

> > -- 
> > Cheers,
> > Stephen Rothwell
> 
> Linaro's CI also reports an issue with this patch with the remoteproc
> drivers that were freshly merged in Linus' tree for 5.7-rc1 (seen with a
> simple arm allyesconfig build):
> 
> drivers/rpmsg/mtk_rpmsg.c:68:2: error: implicit declaration of function 'kfree' [-Werror,-Wimplicit-function-declaration]
> drivers/rpmsg/mtk_rpmsg.c:93:9: error: implicit declaration of function 'kzalloc' [-Werror,-Wimplicit-function-declaration]
> drivers/rpmsg/mtk_rpmsg.c:170:2: error: implicit declaration of function 'kfree' [-Werror,-Wimplicit-function-declaration]
> drivers/rpmsg/mtk_rpmsg.c:204:9: error: implicit declaration of function 'kzalloc' [-Werror,-Wimplicit-function-declaration]
> drivers/rpmsg/mtk_rpmsg.c:223:3: error: implicit declaration of function 'kfree' [-Werror,-Wimplicit-function-declaration]
> drivers/rpmsg/mtk_rpmsg.c:259:9: error: implicit declaration of function 'kzalloc' [-Werror,-Wimplicit-function-declaration]
> drivers/rpmsg/mtk_rpmsg.c:376:3: error: implicit declaration of function 'kfree' [-Werror,-Wimplicit-function-declaration]
> drivers/rpmsg/mtk_rpmsg.c:387:15: error: implicit declaration of function 'kzalloc' [-Werror,-Wimplicit-function-declaration]
> drivers/rpmsg/mtk_rpmsg.c:409:2: error: implicit declaration of function 'kfree' [-Werror,-Wimplicit-function-declaration]
> drivers/remoteproc/stm32_rproc.c:152:14: error: implicit declaration of function 'kcalloc' [-Werror,-Wimplicit-function-declaration]
> drivers/remoteproc/stm32_rproc.c:179:2: error: implicit declaration of function 'kfree' [-Werror,-Wimplicit-function-declaration]

Yes, this a virtio header change in -next exposes a bug: these are using slab.h
but not including it. I posted fixes and also pushed them on my branch now.

> It seems like this series shouldn't be in -next until after 5.7-rc1 (or
> rebased on Linus' tree if it is intended for the merge window).
> 
> Cheers,
> Nathan

Exposing this kind of issue is what next is for, right?

-- 
MST

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200409170923-mutt-send-email-mst%40kernel.org.
