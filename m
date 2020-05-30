Return-Path: <clang-built-linux+bncBAABBU64Y73AKGQEHQDYSLI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3c.google.com (mail-oo1-xc3c.google.com [IPv6:2607:f8b0:4864:20::c3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 931721E8DFE
	for <lists+clang-built-linux@lfdr.de>; Sat, 30 May 2020 07:25:40 +0200 (CEST)
Received: by mail-oo1-xc3c.google.com with SMTP id t24sf1017712oor.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 29 May 2020 22:25:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590816339; cv=pass;
        d=google.com; s=arc-20160816;
        b=cBpIQ567qTrQpmXzmVKbR4HBcpw6fWYhD9SeBCE8pJUtgb4i4IAPsYmRY2GiCWw+Sf
         txMy8yewtS5Eqz/LCMmT5CKnT5LuXI+iahhQPWd6SjUxETyj2eBimXgm9D/hjy/b9RYh
         a4jE06rf8+Ar5fCvq4hOMsFvbncbSRnUDdVXl5Z3UmbV52/dfqOsQkHLK2g7oCTDiehN
         QEKMCwxFZvXmxOXqd0WdCQAXYKJyTmM6SPOvhhhWBiLPPvalU+bMNJ2+IHahO0sedxmJ
         zvkwCCHZcrDm1imU0nnyUL/LTj/M1x9TYu+gxQIVvSDtA5AK0d488C+FzIlMuiB9lBoG
         P5ew==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=m+AH9Tnwn7S9iQVTah8gDDCeHpl8JVtFIVYxT/dOWHc=;
        b=yTUSh93nU3PX+99U+X+Q3ISF7RI7t4BWpbM/JlzppaApqlxhGDq9FRWrfKQORROtmZ
         VJZGdEvCbOYis+v1wYk7+lQogpBwrQrLS2/Er5KxbAE6G4uouCxucxq6bw5o4WD2Y+t3
         S1F3Z1NZ1nM8lQQPnjg9Px9u7JvixVRK7jLuxon+vI/QYMqVHlKez20Vw41+5qOjSBVW
         G6tPlZD1SPt0v2bKvk85fp01XOJ5MVCqfpMgiLNkBTfY6MNDuJN4uV2bhgxh7M8J377Z
         vjqyhcr60iaMPMSdc1Hri6VAa/fxReTTwbqrnC5t+aqLrVTmuhuf9Tk5gpzdWiPqEIHf
         PyDg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=PK8e5RZJ;
       spf=pass (google.com: domain of mchehab@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=mchehab@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=m+AH9Tnwn7S9iQVTah8gDDCeHpl8JVtFIVYxT/dOWHc=;
        b=r9VFxyHvg2TSHi6ImPmXvBU3MAHkbwyCeK2Dxq4Zxk4uYntWzYQtInAgmZ1/0qaR/u
         Bb7rbVH5cyT1PDQdY9+X6H8xT3uBgLStvJWjR3/tSUyIzmIPNO5DB7rUtfaZsuyuOnJv
         8Nf2AoVUPK2Dhq6MjpQAqNpveEQTqhNH38TXw3nmzI8nFr1ZJICQ7vfav6cfelN7KsW8
         XV7kPRhzDk2v88Wwtxnq2wnJk7soeewTJWay/1Hpx91N83lQ+U8eviXqlqLopmSvaEY1
         1b0svMMA9DV7AWpSOhMHIqWZhFXqVZ9xho2MTjvvvb3E7CkM3HrWZuBqYqvkgGwpIltT
         cE/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=m+AH9Tnwn7S9iQVTah8gDDCeHpl8JVtFIVYxT/dOWHc=;
        b=RYjgTcn4LkOE3p/3eDXoAvslGdRC4+LpmkiNlU5P/EAh8k8u7iEYmFW9IBbjUjgKhI
         bVK81g8pQxIGT8nyXmyn9duG+gjG0VX2JdvbgrJKw1ZnmTltH3HNeTFAOQDsQM6GSktn
         qb3cbDvmhFnDhQ7Tb/vwYFz4jwRplfQL7kCQoJEjwwquWVTgsZXZWp9OjHbswprL9aKN
         NEuIfsIl5N9Kj1Tgh1guPcrs0wybWtAqd7ELUkMndsulXuPeiTZz2W9/uo6HqeAZ0KOY
         3BjutDq/Hbwnezkr7GfJnT3aQlxj2BtnZegZZ5YIKsXRgsYvnlQuQdlUPX35aO/IQ4n6
         xKGg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533s1+B/oXow1bNxQhoXlcgtWOxtC2qMUwOh4PEhz/ky0+saJ09J
	dQh5Hef5fGgYhp8qsna4DA0=
X-Google-Smtp-Source: ABdhPJx9q117dZj0pD01NHNbBlfwD8eUvLB7DlHZ+adYo9JTvC0ZafblVbV9OTumhKDmmJ4rMyPDmw==
X-Received: by 2002:a05:6830:4c3:: with SMTP id s3mr9104491otd.162.1590816339543;
        Fri, 29 May 2020 22:25:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:19af:: with SMTP id k44ls1702057otk.4.gmail; Fri, 29 May
 2020 22:25:39 -0700 (PDT)
X-Received: by 2002:a05:6830:3151:: with SMTP id c17mr9423151ots.143.1590816339260;
        Fri, 29 May 2020 22:25:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590816339; cv=none;
        d=google.com; s=arc-20160816;
        b=PMH3CIby53JfOqtxzalX3rYtruIGSIEej8rismWUwMfyVABykgGmQvK2oTyHI4+sCZ
         5SLzUwxSeii1mKMqCuxlFs9AqPNWTCLaXcagCOQ2kvsKrkjq7CFQQee5jyZqkaenoLOL
         a6eu4NEAizQvG6yHc+oXmjUOu8yQ8uGMFk3fYsz5EXMc9fWhaIipYfY8bd0FV3qCtSq4
         WhDWMroE28C4aISt4KNufP4t/1ZuhuIGknoRORUduAGJwr/46foZ3UockzKD1tS9fbHN
         bGbjQfBo7FqgPyW5J0hPSWXu6k/cp4tc61uGGz91YG7eurL71nCzks2S7IAhPYXxLHRk
         h4KQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=6yAE00BUXFMiBf92IlxEa0k1pRVwopauHGhNGpKafSI=;
        b=AcE8axq9yak0Bv8TnGztKv5W9PjIJiqAsm4Tt7ivRr+oN5VpximM+PAyqNUfx+kx76
         GS7w8dCAUBgHdJZ+vxQVVfS77qnxKeNojNlHmlmHrS8BwycNs2Iu2t42SzpC++i2kvKg
         2j3D3XQDT9RBH+uccwDrRUKtW23limkkolUTrYMGxAs47QY0C/motJkZXAlmsWNf6Y9O
         37urG+UCyVWhBBPrAAhTcr/w47YUzAJd8kV+WMweISKLxKneXWrsNbPPJLOR69mza/vk
         dDSrrnytvRgIgruwhaPgU94uI1/ee8Dw4XQFRkckGxp3V1M14/wMCE41Vjd9UMoIaIhN
         dWUg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=PK8e5RZJ;
       spf=pass (google.com: domain of mchehab@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=mchehab@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id l21si720148otp.0.2020.05.29.22.25.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 May 2020 22:25:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of mchehab@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from coco.lan (ip5f5ad5c5.dynamic.kabel-deutschland.de [95.90.213.197])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 6A5E120659;
	Sat, 30 May 2020 05:25:36 +0000 (UTC)
Date: Sat, 30 May 2020 07:25:33 +0200
From: Mauro Carvalho Chehab <mchehab@kernel.org>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Arnd Bergmann <arnd@arndb.de>, Sakari Ailus
 <sakari.ailus@linux.intel.com>, linux-media@vger.kernel.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com
Subject: Re: [PATCH 9/9] staging: media: atomisp: add PMIC_OPREGION
 dependency
Message-ID: <20200530072533.66591af2@coco.lan>
In-Reply-To: <20200530031129.GF1367069@ubuntu-s3-xlarge-x86>
References: <20200529200031.4117841-1-arnd@arndb.de>
	<20200529200031.4117841-9-arnd@arndb.de>
	<20200530031129.GF1367069@ubuntu-s3-xlarge-x86>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: mchehab@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=PK8e5RZJ;       spf=pass
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

Em Fri, 29 May 2020 20:11:29 -0700
Nathan Chancellor <natechancellor@gmail.com> escreveu:

> On Fri, May 29, 2020 at 10:00:31PM +0200, Arnd Bergmann wrote:
> > Without that driver, there is a link failure in
> > 
> > ERROR: modpost: "intel_soc_pmic_exec_mipi_pmic_seq_element"
> > [drivers/staging/media/atomisp/pci/atomisp_gmin_platform.ko] undefined!
> > 
> > Add an explicit Kconfig dependency.
> > 
> > Signed-off-by: Arnd Bergmann <arnd@arndb.de>  
> 
> It'd be interesting to know if this is strictly required for the driver
> to work properly. 

It is. Without OpRegion, the driver can't power on the camera sensors.

> The call to intel_soc_pmic_exec_mipi_pmic_seq_element
> has some error handling after it, maybe that should just be surrounded
> by an #ifdef or IS_ENABLED for PMIC_OPREGION, like some other drivers
> do.
> 
> Regardless of that:
> 
> Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
> 
> > ---
> >  drivers/staging/media/atomisp/Kconfig | 1 +
> >  1 file changed, 1 insertion(+)
> > 
> > diff --git a/drivers/staging/media/atomisp/Kconfig b/drivers/staging/media/atomisp/Kconfig
> > index c4f3049b0706..e86311c14329 100644
> > --- a/drivers/staging/media/atomisp/Kconfig
> > +++ b/drivers/staging/media/atomisp/Kconfig
> > @@ -11,6 +11,7 @@ menuconfig INTEL_ATOMISP
> >  config VIDEO_ATOMISP
> >  	tristate "Intel Atom Image Signal Processor Driver"
> >  	depends on VIDEO_V4L2 && INTEL_ATOMISP
> > +	depends on PMIC_OPREGION
> >  	select IOSF_MBI
> >  	select VIDEOBUF_VMALLOC
> >  	---help---
> > -- 
> > 2.26.2
> >   



Thanks,
Mauro

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200530072533.66591af2%40coco.lan.
