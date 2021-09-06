Return-Path: <clang-built-linux+bncBDLPBG4DUEARB5W43CEQMGQENXON3MA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3e.google.com (mail-io1-xd3e.google.com [IPv6:2607:f8b0:4864:20::d3e])
	by mail.lfdr.de (Postfix) with ESMTPS id B359C401D64
	for <lists+clang-built-linux@lfdr.de>; Mon,  6 Sep 2021 17:06:31 +0200 (CEST)
Received: by mail-io1-xd3e.google.com with SMTP id f1-20020a5edf01000000b005b85593f933sf5196965ioq.14
        for <lists+clang-built-linux@lfdr.de>; Mon, 06 Sep 2021 08:06:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630940790; cv=pass;
        d=google.com; s=arc-20160816;
        b=hJHeNcgsG3x5QxWg6o8Hb+X5KNrz09VV1AbDN81W+VaTeWWJH6MIWyRhiA/zjUn1BW
         /b186A86b62w428kaAOO9/akuComryRxS+ae0d+ntQyHpOd2+PbUtdjf2cw/rY647Kq0
         wWUC9QSFTI+L7lS0RCmiWJVV2QOBz9NhnrFgLK9MFlSR9XJTTtTVliERTY/dRhBk07/J
         I95k2gCPAL+XkYzabjQuR6MRyrmBFLLkTrHfKMR43o7LGmtLbZDPw+jfn+y7/47sDppU
         Hy3gQBgaxw9VLYnGIx6d0wcmqrQ4RX7e0EeBNb2RsPRNOqBs2dXMfmeqXrb7umOHoLq2
         hdVA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=ZCk9aakDMeosNVulS2PzAzsJw2zpMTgqnv1zjmkowU0=;
        b=CHzS1jP18bplX29xR9dHd2rAcCsBqD5GYPhwcR5gE+C2kOp0qOlts9MLXjB07Rg3eX
         XxPYITCQXs8fxvBSb/GQlpOTPvpokAYv918RXltt9xZruWQ8nCgvNOP6kzcrZ4ts94OX
         LGl3vwmBLfY8i3u6p4FcwGKFG7ZWGGNSgRBLddMNmhUxpxnzD7V7HysuO3lKRHkDfdpB
         K4UPSkTiF5514FsYZ6y313o0Nh+E0vXVglgXHfT0Grht9MT7eTIDhEMXLBiQimWQDrmu
         eFkRK6Rk350VxHsvlmx4DkvZKwBMHB1CLI4nnUGdnoGNm2fvliD9CS/XmDJwJ9e4wL3Z
         4jvw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=m3nCH0H6;
       spf=pass (google.com: domain of mathieu.poirier@linaro.org designates 2607:f8b0:4864:20::1034 as permitted sender) smtp.mailfrom=mathieu.poirier@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ZCk9aakDMeosNVulS2PzAzsJw2zpMTgqnv1zjmkowU0=;
        b=NXoJ7R+8XYjmG+aPaFfmhxzPadgdvMBYJq+yodxlh2DUsZIdZFuadnzqkeBhiNAduG
         HXO+Vr2NX27aKqrgfOEQCNgAPaah0nU9M04UcIxDJaS96MaF6AsUrBHJovjCJfXLsXv0
         c1wf97BvyrZ0H8h12VTVMnM0PXzeoD/yfTYrcEg5WJBeya8wpnEt6gNLsCf9GQLUvpOg
         2pcl4YAtOkdfr1TgKXbJgeH1xMXCD3seuMwrBcD0/yFL4YObSjpijz96pUN9EIq6o7X5
         ZiM/3qsCLpZdijy/kBIKDQEKnMr0fEw04Tv3v2koMmPLR6emfeVQ6MOJ8ILTbQmffdpi
         b4iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ZCk9aakDMeosNVulS2PzAzsJw2zpMTgqnv1zjmkowU0=;
        b=kctQjPkZx/iEClznrm9UlGl7+a9xQw3c+DKt4dhCospZSFmSPc3i9GO0k97Ajzxkec
         UEBquD+7olLHjCofFvh4sIvktbr9ivu2esCGB1THon/CS+6UL38dM8LIWQpJF/p3TIYI
         xtnY6P8Vi5201mURDH7xrjNVF1NHR5wjLB0tyU2WPTH2SJ4Llf0tfeXNLjwnIrQkyVmz
         Wq39FlX61Mwss+HXlypFq6wWygKYPGJ/kkI4+olb2LvVeabOyfq+VSBvKAHwJbGSqzyf
         UsJbouB489QVC35MoiCFJZReYJ2d9XFcPA5PzSSOfZfYvbH/R7I0A9hmsCE9KRlbHcEt
         IV4g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533kih2PX10JWmtGodtyMVR1j6Qper9CoazxW6r+BNcleDSgH5UN
	KAOHKq6hKSb99OzOhkTRoyM=
X-Google-Smtp-Source: ABdhPJzRjzpNPB9yHmZYXY4gDCZURgk7yWYP0QeoTv85U89cYOvNtz4vnL+J1fPwZe70EavPZUUAZA==
X-Received: by 2002:a5e:c30c:: with SMTP id a12mr9894289iok.52.1630940790631;
        Mon, 06 Sep 2021 08:06:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:d70b:: with SMTP id m11ls1030119iln.1.gmail; Mon, 06 Sep
 2021 08:06:30 -0700 (PDT)
X-Received: by 2002:a92:cb47:: with SMTP id f7mr8504289ilq.64.1630940790284;
        Mon, 06 Sep 2021 08:06:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630940790; cv=none;
        d=google.com; s=arc-20160816;
        b=xxibFkpGf8f8IrdJbzvG1ooHNWd3IZY3zQw/BwTZCkJGH4cbaBMsX9nc3eLAcbtupA
         ZltFAa5VIVnKmJbVi5ErfsyIzRd1BJCBeqEd6WKdsJBq/OJBdBVnJPw+pG6vuAAsb8Lq
         XthXZSkZlPA3Jtj00G3rUQOrwiMNCINdOpOgXQgAtBtkqbLtJ6RUVolg5OzrwKCfNdzG
         VoCOkKuBZm2x5FF3CUPe67goXak21PVdgTLTucNYGX4wvMyO8U+OiiE3c2SWm8T1FxbE
         iZuH7CAPrPXOBzNMozWHDuNx050DVmNP5Lkicwn6zBO70n6UthYKtam7bvLpKoe62O4D
         LoxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=7bRVRr2cmpld6cVkhHmLiLm6xvgtUebQbicDG7ir3G0=;
        b=k/6WTYTWel1cMOMxZw3zQvSbcDM4cGf+2qPJ0u6E1CeKA3Y5i0vlicW3oNQA/fJNKo
         aeimEFSvUxQdrorUem8ECNfIXEdalKJifGq5LZa+BcnVUhXjx9Hvu8kuqLbLYqKfHR+7
         ziGt9Y5g6IIH7+Byw+aWUeLwkbMGog5QarPGu6zgWrwG/8+wwm+VBLggGVahHNR2a6Yn
         KTm4cDQz7a9+m8iydpLsKQnCUTHkQ6BPwNw2EAZniwEeIPK9pauCSnOIJwULquHFSf8M
         uPnI/wxmvbdeealVu7jbmEKNI/vI0vruVaVFge7r372yi53tRs7E5bPKJt29X/jJFprA
         I4Iw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=m3nCH0H6;
       spf=pass (google.com: domain of mathieu.poirier@linaro.org designates 2607:f8b0:4864:20::1034 as permitted sender) smtp.mailfrom=mathieu.poirier@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-pj1-x1034.google.com (mail-pj1-x1034.google.com. [2607:f8b0:4864:20::1034])
        by gmr-mx.google.com with ESMTPS id y16si396856ilc.5.2021.09.06.08.06.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Sep 2021 08:06:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of mathieu.poirier@linaro.org designates 2607:f8b0:4864:20::1034 as permitted sender) client-ip=2607:f8b0:4864:20::1034;
Received: by mail-pj1-x1034.google.com with SMTP id fz10so4506926pjb.0
        for <clang-built-linux@googlegroups.com>; Mon, 06 Sep 2021 08:06:30 -0700 (PDT)
X-Received: by 2002:a17:90b:1d0e:: with SMTP id on14mr14275270pjb.97.1630940789541;
        Mon, 06 Sep 2021 08:06:29 -0700 (PDT)
Received: from p14s (S0106889e681aac74.cg.shawcable.net. [68.147.0.187])
        by smtp.gmail.com with ESMTPSA id y126sm5275753pfy.88.2021.09.06.08.06.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Sep 2021 08:06:28 -0700 (PDT)
Date: Mon, 6 Sep 2021 09:06:25 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Jian Cai <jiancai@google.com>
Cc: mike.leach@linaro.org, linux@roeck-us.net, dianders@chromium.org,
	mka@chromium.org, manojgupta@google.com, llozano@google.com,
	coresight@lists.linaro.org, linux-arm-kernel@lists.infradead.org,
	clang-built-linux@googlegroups.com,
	Suzuki K Poulose <suzuki.poulose@arm.com>,
	Leo Yan <leo.yan@linaro.org>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] coresight: syscfg: fix compiler warnings
Message-ID: <20210906150625.GA1228692@p14s>
References: <20210830172820.2840433-1-jiancai@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210830172820.2840433-1-jiancai@google.com>
X-Original-Sender: mathieu.poirier@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=m3nCH0H6;       spf=pass
 (google.com: domain of mathieu.poirier@linaro.org designates
 2607:f8b0:4864:20::1034 as permitted sender) smtp.mailfrom=mathieu.poirier@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

On Mon, Aug 30, 2021 at 10:28:19AM -0700, Jian Cai wrote:
> This fixes warnings with -Wimplicit-function-declaration, e.g.
> 
> drivers/hwtracing/coresight/coresight-syscfg.c:455:15: error:
> implicit declaration of function 'kzalloc' [-Werror,
> -Wimplicit-function-declaration]
>         csdev_item = kzalloc(sizeof(struct cscfg_registered_csdev),
>                              GFP_KERNEL);
> 
> Fixes: 85e2414c518a ("coresight: syscfg: Initial coresight system configuration")
> Reviewed-by: Guenter Roeck <linux@roeck-us.net>
> Signed-off-by: Jian Cai <jiancai@google.com>
> ---
> 
> Changes v1 -> v2:
>   Format the commit message and add Fixes and Reviewed-by tag.
> 
>  drivers/hwtracing/coresight/coresight-syscfg.c | 1 +
>  1 file changed, 1 insertion(+)
>

I have applied this patch to my local tree.  I will push it to the coresight-next
branch when 5.15-rc1 is published next week.

Thanks,
Mathieu

> diff --git a/drivers/hwtracing/coresight/coresight-syscfg.c b/drivers/hwtracing/coresight/coresight-syscfg.c
> index fc0760f55c53..43054568430f 100644
> --- a/drivers/hwtracing/coresight/coresight-syscfg.c
> +++ b/drivers/hwtracing/coresight/coresight-syscfg.c
> @@ -5,6 +5,7 @@
>   */
>  
>  #include <linux/platform_device.h>
> +#include <linux/slab.h>
>  
>  #include "coresight-config.h"
>  #include "coresight-etm-perf.h"
> -- 
> 2.33.0.259.gc128427fd7-goog
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210906150625.GA1228692%40p14s.
