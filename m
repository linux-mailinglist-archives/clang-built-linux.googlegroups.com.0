Return-Path: <clang-built-linux+bncBDKM3GOS4YHBBLVRYX3QKGQE5TNIM3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13f.google.com (mail-lf1-x13f.google.com [IPv6:2a00:1450:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id B4D8A2046A1
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jun 2020 03:19:42 +0200 (CEST)
Received: by mail-lf1-x13f.google.com with SMTP id w142sf7003702lff.16
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jun 2020 18:19:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592875182; cv=pass;
        d=google.com; s=arc-20160816;
        b=o5J0By8uqfhfE+rq36fxjkTARLtizbj1gVytfQ7SphBU/0lio8h8o+XvLftmabde6J
         4bDqB0bDRxuzuavSRS1De/9CnhURvCLyu423YKEhyIQx77vCLA6AShXn3eVXNzCuS6bW
         ZJVK+hy/MR+loKuUpVd8splN9jqQ/fdoN07LBYpIVmqM7VBr3I2X+Y1iBxg0G3VTXY1L
         g6UR1WEsY+ZGdHUZ+iDERUk1Mw/alll7NY3QdaoMnM/Rb8kSQk9PBq9kvDiISw2jADdC
         bkqo4Fap5giR0lI1vvOKPIJ47a7Zfd/hlRZD0xdIqom6ft5FAZOa/mbXXG1o0T7OFw3Q
         gWtw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=qA/XpoZjad7/DWTvUPwr3ipPzYsKZA5sMU9Z+fzHCC8=;
        b=B6MLzxZhqCoz7UOT6KQlzboET8+0As86z7Zb3pntQTO4+p0B+MxeIRac9YAfKGux8u
         oCItIAEIbAEEbt9fyk1qTd6e/xB4fJ999DF/kYZBjnx0Z8pYhY3nmZfoaJ1s5Tr18FJW
         ieg+aYRugrNBeg/UFWaTpmPxKQwt3FX40K7SNMOQD42EdsJb+YigtXbG3qEfvX99d61t
         i/oH5xjp82XgP2bfuSNqUoopr4kxA2UlWDQ94oJveg97OgULhKubVDveOf6p40NovUKK
         s1Meiqa8rjYeu5VyIKwchoBfYXCLVCEi+Khm+h/wUCwX3Tka+b5epXNx541piXoCyXEy
         wXEw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass (test mode) header.i=@ideasonboard.com header.s=mail header.b=AnagMKzr;
       spf=pass (google.com: domain of laurent.pinchart@ideasonboard.com designates 2001:4b98:dc2:55:216:3eff:fef7:d647 as permitted sender) smtp.mailfrom=laurent.pinchart@ideasonboard.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qA/XpoZjad7/DWTvUPwr3ipPzYsKZA5sMU9Z+fzHCC8=;
        b=eEhb/ua418Unb+mdMP1wTgPOZpFARcHUMdgRbzchBmxzwDnLjXLV785cWBQUHmwogW
         pCXyLEEfgLJc7q/Yq0nEQ+ybCYWg7R7HQDKkanEWrlV+2B9rMzG2+usX5XEGWegiw7XM
         2/rJfqA4SDSiconr/+z9tfBxCDrZUDOA8dOOK4aasuVlUaNd8t3ep6s1pejjKTpU61du
         S56O/CPAok5ugOiup9cpSYjlbXzdHahspbnz6wNDBNb6Yd3kA3WXFZhf5EQ/A/Daw1Qu
         /yoOXvQrJNnELI5c82gvho14cr+LMfMwfbFLCF3Eb2RBwbbenstNAnxp5BtmZazIL044
         ihMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=qA/XpoZjad7/DWTvUPwr3ipPzYsKZA5sMU9Z+fzHCC8=;
        b=SI+TJkiUSaqVLzuJjuVXxiKKEEiRUyXlTspF4fo0QDN7fgKtfikynPMqoizqYx/1zW
         c7uPZYdPlgxvZGICCBgLYTtRyOMRfuruw6oYAUTFQ+ot3WKOsO4Xa2v7XgpHxzkBufSw
         LHJrTUCIOxeQRNe9aJVi/weUX7fSf4GSUUvWS0xuXWvrIZqY2TlIDoLhGRF1+9/vhUxU
         ZdZP9/jfSwlhDqWCSNrDUTaWp5dRLPVZ066LZVHMYSqGMxU816ot2osPD6zioK2pVqsh
         iaEtOkosVEN53gULttAr7nLgI1Y2jn9pnUV9C19AeJacH2pqhvId9miC5JvzPhG51d7F
         Ua9Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533fPpWxf6FIWwMxp0Rdor2JUJucT1hwzSdHnwcpBs+q3S957jOz
	fDMWKkRz4IaUWomgx/LA498=
X-Google-Smtp-Source: ABdhPJzijEICi9+C+2FsaXQJLlyqoKeTSOWyBBrvQMqYcSQOEUfJtlBMgw/NWgg8rpWrKf4onJEPNw==
X-Received: by 2002:a2e:9e86:: with SMTP id f6mr8914004ljk.95.1592875182206;
        Mon, 22 Jun 2020 18:19:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:30c:: with SMTP id a12ls3597711ljp.9.gmail; Mon, 22
 Jun 2020 18:19:41 -0700 (PDT)
X-Received: by 2002:a05:651c:1208:: with SMTP id i8mr1072762lja.240.1592875181361;
        Mon, 22 Jun 2020 18:19:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592875181; cv=none;
        d=google.com; s=arc-20160816;
        b=LRy1ONO8FIUJdmTr4QpI6+6glzOaPVNX/eto3Fljszpsj649eKdY2wXVawqMTpR55j
         MU8Dqgn8AId8N9xF++9CKGLTSm0eOGHgvKuCG1MV8ctQFnYwdxNOIwv3txjSwje7k6dX
         MlSN2YjtYyCrze2EXpOAP3ts5gL/eG21Dvp1Wf7bU3WBMr8gvyxHpO4En1Uee51qoDsW
         qDRxGTFREuDyiBW7xtPDA7tVLqcGjC/j/gnz91J7RRQD8xExqtqJzs4dUxGN3CW5epwI
         BI36f2eoi/x4d4prjLdC8Mt5l/rChtiPaE6Cv/RaCMHelWBnPV3Vf5ThTi4SusZjmhIy
         pVng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=bDN0kAZllps8lG4liMWF1V1cvHNef7jHr69VeF3/BhA=;
        b=CXAzAMiUPUOiukHuaRP0T549I8A+tSrHJElNbA/KPzi3hIuoI8Bben35G6FP+j5+z0
         h/AtU34SKZn4Rba7fJ9mI2GpkWApIB+79jl1ewlUxEixVJMxvR/xyZkwV/5CkatxebbO
         ZW5cbWF1qf5n0/1Rys84FwO3neT+yk5ZJZefNc5sH+nD+2kQVIYaXkCXA2lNCsBjEqqg
         AS6gvoLuKMds1Xug1pnlURxY8hmGbj5/gjlC1UECvE63N9XBt3FwpxUGr2I4bOynvJ4a
         VE2wnOIuRhecoiV2Du8gnYpfiLU+gjWbuuzNwQNEOtgJ3eW0wNd+bqb0shdflL6zqh48
         z1uA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass (test mode) header.i=@ideasonboard.com header.s=mail header.b=AnagMKzr;
       spf=pass (google.com: domain of laurent.pinchart@ideasonboard.com designates 2001:4b98:dc2:55:216:3eff:fef7:d647 as permitted sender) smtp.mailfrom=laurent.pinchart@ideasonboard.com
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com. [2001:4b98:dc2:55:216:3eff:fef7:d647])
        by gmr-mx.google.com with ESMTPS id x20si1146999ljh.1.2020.06.22.18.19.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 22 Jun 2020 18:19:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of laurent.pinchart@ideasonboard.com designates 2001:4b98:dc2:55:216:3eff:fef7:d647 as permitted sender) client-ip=2001:4b98:dc2:55:216:3eff:fef7:d647;
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi [81.175.216.236])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 1C361327;
	Tue, 23 Jun 2020 03:19:40 +0200 (CEST)
Date: Tue, 23 Jun 2020 04:19:15 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Andrew Morton <akpm@linux-foundation.org>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>, Christoph Hellwig <hch@lst.de>,
	Geert Uytterhoeven <geert@linux-m68k.org>,
	linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arch@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH 1/2] media: omap3isp: Remove cacheflush.h
Message-ID: <20200623011915.GP5852@pendragon.ideasonboard.com>
References: <20200622234740.72825-1-natechancellor@gmail.com>
 <20200622234740.72825-2-natechancellor@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200622234740.72825-2-natechancellor@gmail.com>
X-Original-Sender: laurent.pinchart@ideasonboard.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass (test
 mode) header.i=@ideasonboard.com header.s=mail header.b=AnagMKzr;
       spf=pass (google.com: domain of laurent.pinchart@ideasonboard.com
 designates 2001:4b98:dc2:55:216:3eff:fef7:d647 as permitted sender) smtp.mailfrom=laurent.pinchart@ideasonboard.com
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

Hi Nathan,

Thank you for the patch.

On Mon, Jun 22, 2020 at 04:47:39PM -0700, Nathan Chancellor wrote:
> After mm.h was removed from the asm-generic version of cacheflush.h,
> s390 allyesconfig shows several warnings of the following nature:
> 
> In file included from ./arch/s390/include/generated/asm/cacheflush.h:1,
>                  from drivers/media/platform/omap3isp/isp.c:42:
> ./include/asm-generic/cacheflush.h:16:42: warning: 'struct mm_struct'
> declared inside parameter list will not be visible outside of this
> definition or declaration
> 
> As Geert and Laurent point out, this driver does not need this header in
> the two files that include it. Remove it so there are no warnings.
> 
> Fixes: e0cf615d725c ("asm-generic: don't include <linux/mm.h> in cacheflush.h")
> Suggested-by: Geert Uytterhoeven <geert@linux-m68k.org>
> Suggested-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

> ---
>  drivers/media/platform/omap3isp/isp.c      | 2 --
>  drivers/media/platform/omap3isp/ispvideo.c | 1 -
>  2 files changed, 3 deletions(-)
> 
> diff --git a/drivers/media/platform/omap3isp/isp.c b/drivers/media/platform/omap3isp/isp.c
> index a4ee6b86663e..b91e472ee764 100644
> --- a/drivers/media/platform/omap3isp/isp.c
> +++ b/drivers/media/platform/omap3isp/isp.c
> @@ -39,8 +39,6 @@
>   *	Troy Laramy <t-laramy@ti.com>
>   */
>  
> -#include <asm/cacheflush.h>
> -
>  #include <linux/clk.h>
>  #include <linux/clkdev.h>
>  #include <linux/delay.h>
> diff --git a/drivers/media/platform/omap3isp/ispvideo.c b/drivers/media/platform/omap3isp/ispvideo.c
> index 10c214bd0903..1ac9aef70dff 100644
> --- a/drivers/media/platform/omap3isp/ispvideo.c
> +++ b/drivers/media/platform/omap3isp/ispvideo.c
> @@ -18,7 +18,6 @@
>  #include <linux/sched.h>
>  #include <linux/slab.h>
>  #include <linux/vmalloc.h>
> -#include <asm/cacheflush.h>
>  
>  #include <media/v4l2-dev.h>
>  #include <media/v4l2-ioctl.h>
> 
> base-commit: 27f11fea33608cbd321a97cbecfa2ef97dcc1821

-- 
Regards,

Laurent Pinchart

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200623011915.GP5852%40pendragon.ideasonboard.com.
