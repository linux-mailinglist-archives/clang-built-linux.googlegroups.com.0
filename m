Return-Path: <clang-built-linux+bncBAABB2OCXL3AKGQEGYIHJKI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43b.google.com (mail-pf1-x43b.google.com [IPv6:2607:f8b0:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F4F51E4BBD
	for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 19:20:43 +0200 (CEST)
Received: by mail-pf1-x43b.google.com with SMTP id 67sf20115934pfe.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 10:20:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590600042; cv=pass;
        d=google.com; s=arc-20160816;
        b=GPlj9u7duKNviLmyvX6K6vYrtlNCS4q3ecLHNZI8Xd917Tm+lFFm3qMhW/8Bk1pdOm
         SN8VTJzN8VKbeTG4ouJUzyHCKM02zy4QjpioAUbfGLjWkSgXXUmLRv6fKj1tISsGklfW
         Lc1qX4MibpPEY2eQ6Osn2SUBJKB8j6U9OT6ce4fIdYt7YolFFmKqDTQoMsLDsJNNe29N
         l0MwbaEbDUw0RgrLiWQynv44DkJmvwZwSWbYyaSwMsUOyzg5VZ1ndHTcVK2yWgAPTwg2
         DozwL0liWkSYzQUMMNUYfrFs/OqEIhiMZpKPAKKhH9oq6oJ86q1ZEohIkGEvjukG/+Bg
         9Tyw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=kILoZCw/KMuPPUlQjrgUdXxsux/kCHzrJ+bRMqykBHE=;
        b=Sika0i+BBYOgIgSyUYV7Vfu51DweN8ryLe/X6tMRnUySrz47/JL2BJlCa8wd9TYN/q
         KMwbC4bO4wVLMce3rw2J8TR1nmGnbjQxpfNkUNrhiUo1yuRlzQQ4J2M1huR/JgWiraRT
         Vo7o7TBTknApjpgfEFLLHBqFYa6l3GQF/dz//YHK1U3GX/F/BDwtuv9AVEMznwx3je1F
         zzwW4FmcMPXcCR4HfUcqH2Zn96gCbaOUHCLYvwt/Wf1oXfCS+fGvFoD6R1xKTBQCtdjv
         cY2MYHpjpHLJzlt108sRPW5aOsrIIfrKKSguwWslTHeY35oweZSAxb301OHp8x0b9usT
         I07Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=1sKXXvka;
       spf=pass (google.com: domain of mchehab@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=mchehab@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kILoZCw/KMuPPUlQjrgUdXxsux/kCHzrJ+bRMqykBHE=;
        b=O04t2VsEqFkJocKAhfAOEytrc/hgSrdnzuJvMkyZRHr+6atJpX5Db/jAC74taLZSEg
         Sap5n7X5/t0I392CxMt3kj46sw/uqdnEW3bykGgb0jRiAkjAtBx6AloD8P5xJS778LI/
         WN6uvLU+PTTB0vlpAov+4iMwMvunubRTB51vyOq6r+vj0CvPecFre/jkIdr8Pzk9CXPc
         T5eqAULtRZykpmtDwkVdIymoo3qning7lOJOawcolMFh5AbI7fQ5/1+TEfPtpNi7ZGX3
         qLMl2pBr5uIWPfSg3kUZq9mG4J+Wx2b3NyqEv+rew7AAxH0Qcn6VBHhWve+q4o1D+sw8
         pbLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kILoZCw/KMuPPUlQjrgUdXxsux/kCHzrJ+bRMqykBHE=;
        b=MIE3DC/I0BbiriV/+aeluUbm6rpJjfnqTOUaskYllZrVVHw7s3xPxLJ7TgpG3G+gXM
         mpm2LAY34Sg2lcUOTYjmZYkGwOhKZQIg2ky02fongq+rpXkPns3zoLUezBPnwCcr/FbI
         L6+hElEJGVhWYul+NCeKgtJCbvLxn8VnkaXI77lVYfBYY7tVqlYgRH0FQXALYUOWi0jq
         lzw1dEWcrwg2SVwE88BV3yUYbwxB2mPnPj4qkA1H0nHW0Rgfay5RfFkgWD/iqx3IUg0A
         D+n0JxUDGGLdZhGS00kfrYtU5M+0RtBh2BqOfNwwPAihUuDaMkdtaW/4QkFU+16gOHTs
         c7aw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533OUhavefRjP0mNOiLiEGrU0FxFJDswpbiPqHUmfi2kuSd6ydCi
	tIT6+dBw7TM5aZiuuEDV+1A=
X-Google-Smtp-Source: ABdhPJxHQ1WvOO5d+TcKOIDyaLFc0fNg7X70kFUM8V8t/DDUR1G2qZUHp9S6tCVDSzgM8q68JT5SHg==
X-Received: by 2002:a63:e60b:: with SMTP id g11mr5256778pgh.120.1590600041781;
        Wed, 27 May 2020 10:20:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:7697:: with SMTP id r145ls2304660pfc.1.gmail; Wed, 27
 May 2020 10:20:41 -0700 (PDT)
X-Received: by 2002:a63:b957:: with SMTP id v23mr5162543pgo.262.1590600041376;
        Wed, 27 May 2020 10:20:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590600041; cv=none;
        d=google.com; s=arc-20160816;
        b=BubiChMrPPWH2SIbh02+WaLy+eVcEeoXTlUc/UoK72JwceT7fTLkpXNL1DrCutl9KP
         DxarDXJe6H00XxEt7MQo0sP0JaMcXT72xfTwZQrD+0Mp68O94ohjRbqYUFppze9kKFgb
         OQY13WE9vbLAWM0drsxk+RBkzJvZc2rEHSWGoOe+OqIvIN6o3YDokNaYLkb/J0hDWYzn
         kMV/qqvCpU9Fz6l75fd45DHj4v6v+Qw2OLYgPKe0VUmb1zAyDNgQ7W8461iTEhKFkAxU
         4jVs5BALp1kNQSVOfelGBepTsPONaWPXNtr94c2s1V2knxbpGwZRRLRqCKNpfHT/hitL
         2MYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=qywTfsvqQWWAwc0xmySW/UwPrPcxPDyQAmBkPPEWAjM=;
        b=KYXLxXEKlZ6TByutp8PdZ4S4PlngBTJUq0tFbj7BRUqsHjG8vU/l45dsngnYAT/beQ
         7nuLEZRr5AApztH1Br8TIh4+7LsBtyGh1ZimgvKoYAsF4mXIij5ThujvCK0Y4WOFGPYe
         DbaBaejUvXbqQeE0svgD5TahRqAm5gZFgoI+1P4nE0FzHWa/A0CK84oCzImhrf/I3IFj
         gMfOIB7rtaADMhewwpk1Wn4WuvOJr36TwZz89Zb+lk01wV8kCSOdSOk6e0ehN3deUIbT
         zITuJN6CxdYtViuvU9yHgWNEp5RYwdAPWFGtcr1XeAX3LurK+zz7E9ZMX7e+OmB0J/yA
         75Vw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=1sKXXvka;
       spf=pass (google.com: domain of mchehab@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=mchehab@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id e13si346454plq.3.2020.05.27.10.20.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 May 2020 10:20:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of mchehab@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from coco.lan (ip5f5ad5c5.dynamic.kabel-deutschland.de [95.90.213.197])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id AC8692073B;
	Wed, 27 May 2020 17:20:39 +0000 (UTC)
Date: Wed, 27 May 2020 19:20:36 +0200
From: Mauro Carvalho Chehab <mchehab@kernel.org>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Sakari Ailus <sakari.ailus@linux.intel.com>,
 linux-media@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH 0/7] media: atomisp: Address several clang warnings
Message-ID: <20200527192036.2575daf5@coco.lan>
In-Reply-To: <20200527164521.GA1239557@ubuntu-s3-xlarge-x86>
References: <20200527071150.3381228-1-natechancellor@gmail.com>
	<20200527104525.5e6cd93b@coco.lan>
	<20200527164521.GA1239557@ubuntu-s3-xlarge-x86>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: mchehab@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=1sKXXvka;       spf=pass
 (google.com: domain of mchehab@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=mchehab@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

Em Wed, 27 May 2020 09:45:21 -0700
Nathan Chancellor <natechancellor@gmail.com> escreveu:

> On Wed, May 27, 2020 at 10:45:25AM +0200, Mauro Carvalho Chehab wrote:
> > Em Wed, 27 May 2020 00:11:43 -0700
> > Nathan Chancellor <natechancellor@gmail.com> escreveu:
> >   
> > > Hi all,
> > > 
> > > This series aims to clean up the code while addressing the majority of
> > > clang warnings in this driver, some found by the 0day bot and others
> > > found by me.
> > > 
> > > There are several enum conversion warnings that happen, which I do not
> > > really know how to solve without understanding how exactly this driver
> > > works. I would appreciate some guidance or a solution. Below are the
> > > warnings, sorry for not wrapping them but they would be hard to read
> > > otherwise.  
> > 
> > ...   
> > > ../drivers/staging/media/atomisp//pci/atomisp_compat_css20.h:117:22: note: expanded from macro 'CSS_ID'
> > > #define CSS_ID(val)     (IA_ ## val)  
> > ...
> > 
> > I actually wrote a patch getting rid of this ugly thing:
> > 
> > 	https://git.linuxtv.org/mchehab/experimental.git/commit/?h=atomisp_v3&id=cf6a15543ace1e99364911c0b7a2f6b8f2f43021
> > 
> > This one was already submitted upstream (not merged yet), but there
> > are also lots of other patches on my working tree.  
> 
> Ah excellent, that makes the warnings a lot more readable. I am still
> not sure how to reconcile the differences, it might be easier to just
> change the types in the struct to int.
> 
> ../drivers/staging/media/atomisp/pci/atomisp_subdev.c:49:68: warning: implicit conversion from enumeration type 'enum ia_css_frame_format' to different enumeration type 'enum atomisp_input_format' [-Wenum-conversion]
>         { V4L2_MBUS_FMT_CUSTOM_NV21, 12, 12, IA_CSS_FRAME_FORMAT_NV21, 0, IA_CSS_FRAME_FORMAT_NV21 },
>         ~                                                                 ^~~~~~~~~~~~~~~~~~~~~~~~
> ../drivers/staging/media/atomisp/pci/atomisp_subdev.c:49:39: warning: implicit conversion from enumeration type 'enum ia_css_frame_format' to different enumeration type 'enum atomisp_input_format' [-Wenum-conversion]
>         { V4L2_MBUS_FMT_CUSTOM_NV21, 12, 12, IA_CSS_FRAME_FORMAT_NV21, 0, IA_CSS_FRAME_FORMAT_NV21 },
>         ~                                    ^~~~~~~~~~~~~~~~~~~~~~~~
> ../drivers/staging/media/atomisp/pci/atomisp_subdev.c:48:68: warning: implicit conversion from enumeration type 'enum ia_css_frame_format' to different enumeration type 'enum atomisp_input_format' [-Wenum-conversion]
>         { V4L2_MBUS_FMT_CUSTOM_NV12, 12, 12, IA_CSS_FRAME_FORMAT_NV12, 0, IA_CSS_FRAME_FORMAT_NV12 },
>         ~                                                                 ^~~~~~~~~~~~~~~~~~~~~~~~
> ../drivers/staging/media/atomisp/pci/atomisp_subdev.c:48:39: warning: implicit conversion from enumeration type 'enum ia_css_frame_format' to different enumeration type 'enum atomisp_input_format' [-Wenum-conversion]
>         { V4L2_MBUS_FMT_CUSTOM_NV12, 12, 12, IA_CSS_FRAME_FORMAT_NV12, 0, IA_CSS_FRAME_FORMAT_NV12 },
>         ~                                    ^~~~~~~~~~~~~~~~~~~~~~~~
> ../drivers/staging/media/atomisp/pci/atomisp_subdev.c:47:34: warning: implicit conversion from enumeration type 'enum ia_css_frame_format' to different enumeration type 'enum atomisp_input_format' [-Wenum-conversion]
>         { MEDIA_BUS_FMT_JPEG_1X8, 8, 8, IA_CSS_FRAME_FORMAT_BINARY_8, 0, ATOMISP_INPUT_FORMAT_BINARY_8 },
>         ~                               ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
> 5 warnings generated.

Well, I guess we should just get rid of the duplication there,

> 
> > I'll try to apply your patch series on it, once I'll be able to
> > fix a bug with mmap support.  
> 
> It looks like all of them apply to your experimental branch aside from
> patch 3, which you handled in a different way.

Ok. I'll apply your patch series on my tree.

Thanks,
Mauro

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200527192036.2575daf5%40coco.lan.
