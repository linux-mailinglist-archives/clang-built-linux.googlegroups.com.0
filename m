Return-Path: <clang-built-linux+bncBC7M5BFO7YCRB4XPT2EQMGQERUI5QDI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x739.google.com (mail-qk1-x739.google.com [IPv6:2607:f8b0:4864:20::739])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A2933F8B52
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Aug 2021 17:49:07 +0200 (CEST)
Received: by mail-qk1-x739.google.com with SMTP id e22-20020a05620a209600b003d5ff97bff7sf123103qka.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 26 Aug 2021 08:49:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629992946; cv=pass;
        d=google.com; s=arc-20160816;
        b=Bx3G2kOZxKghL07CwCgj3G9YRlFqPjoT1d7Oqn1mX5z0MRBfCo7JL9ckaGXlSB6oS6
         Uhm0eQfaTyM3il9tYhxhEKbC3Ve8kq2LUEZtiJJnNeiF+Szs6de2iZCsROeX+Fg4wagq
         FPJyY3gVBRl3gWIrMNrfSD/QC4VkD3jt2T+e87CFhtuX50S980US9s4pqdDNZXmZPBdb
         BWTgOf0R5jFwJdGxJSXTiCq8rfEW8YMhVaxjrc1eWEYzy2LuMqSQKlQrjWRBHUZM3qKi
         LmWB3yTgWNZLCEkyvzAosVRKYrF+hLSAcz1at1QkqT6xCUWkSRT1Z0xmYiZ3uxlcSOyL
         Vddw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=czKNG2sG1YFrhr7wLHKUTW5CTxfE+ihIt3ug63TtGGc=;
        b=nQjDh6uX7m0ajyTvFgE8bawGz2E3PM418vrtlEOSXNHpI4tpa9aRpZdFMbrQQcBfsl
         z8crGG7YTmRt3Bgrhr48EjqdW0s03HxKxAMBy7Ielw6KHG1k9WBKf3LnHt0zRhmaCCmQ
         F4KxRCzexm6QBAzH2BMns+hhX9RBKnEiGnrESLKkpTQSk+9eujDag0JShPdfk/aPyl0M
         vUo2a6la4IZzRE49fKgsKk2XJ3UOk5qKsJTElyCY/3oh5Xvev1LpqgrpY1vnIV/w3GKE
         NqwhRjbMvlRimX+ioh7EjuXlSv8heOP9uU/itziUCxST+/MNrNht3OO/XeqMZN9cMBf3
         ef0A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=M7jfr02E;
       spf=pass (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::233 as permitted sender) smtp.mailfrom=groeck7@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=czKNG2sG1YFrhr7wLHKUTW5CTxfE+ihIt3ug63TtGGc=;
        b=pBz9WfGN46xO/Y4OJJf6NeYfIQhSSVXoq0JTOV3EOLnai+V1AkwDUAeUWSu91AdwqO
         5qPfU/Fclz432lfo2arjM//1agEgckwHCdDdhbsAUtr8R+MfED2TXficnTPidHfI4XcR
         IDLHaskaO9zb3UokYIyoDrMcBY67sDv6CuVC330+T8SX2VjOvS7sCKZldhjiLu59MUiB
         prVmoTbEn/Tjyls7TZm9IqMrQF5Z2LBW46KF096jV+mqJK3uAOy4KXHGa4hQhGa1//ra
         /Z+O/gJIo7jwNlsVBX+ofFZ+Iwb80ynrIUhzkHEndyevRij9mLvtEp9hcrAUu6/oYihy
         A2DA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=czKNG2sG1YFrhr7wLHKUTW5CTxfE+ihIt3ug63TtGGc=;
        b=Yeuf5AWZhPwSTK8RgxqsSJuixipVh7DxYR2ZLs9UJKR2K7TsQOElTf/g5fGmIBwzX3
         s7iQUdqmrmz4dVbX5LqKfUzYSzoYVz/GuA6vE7Zh8AiD5QiBEj2TqDwFPBtp7NfSO3wG
         i4XmJJzyvi3qhJoyE+kEQv7+aG/eThj9gpN4vSpSisnFv01iXEZTmJinGOJWLuJ5I3Pg
         PQsiW8JdI0ErVHS2c528OvQeyN85hJ5tsag+cNIoE8j2ognxXNq/WcMIQzboDEgn+CuU
         mJQcksko3Y49LRuZYCd+o2Pn5JoH2FQCSwnr+9/7JgCHF9peRAsIpU8/BIdhb61DE92D
         BcyA==
X-Gm-Message-State: AOAM530mpMCyvkRrCTAz//5RVKYeFrFjXhxxZmouoPXbAkDeyNI/2kvw
	OMQ+jJIZwrfMMK9/i27pt+k=
X-Google-Smtp-Source: ABdhPJxxnvyr+UpiMc1xffc29QCkgWQ/0/sG9oDxAm8s8yuijKseaQN5Zqh91wC5+mBN/aGx+i7F7A==
X-Received: by 2002:ac8:7f12:: with SMTP id f18mr3928532qtk.258.1629992946452;
        Thu, 26 Aug 2021 08:49:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6214:4118:: with SMTP id kc24ls1848919qvb.11.gmail; Thu,
 26 Aug 2021 08:49:05 -0700 (PDT)
X-Received: by 2002:a05:6214:312:: with SMTP id i18mr4792207qvu.48.1629992945905;
        Thu, 26 Aug 2021 08:49:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629992945; cv=none;
        d=google.com; s=arc-20160816;
        b=qOhKzaNJlcWWPqcD4H3Cow/NfHcDX9U+5CjpqmWrVn7/hY3FMeSWzZkDkPBNmtgKjK
         2SfDvBg7G0t/8y+9GzkEPSKEbwcxUnUu7Jm0kVg7YkLa238b5ilDi1L81aJbYF3HSQTN
         1rwJXuf/8/EQDXnSkoHH3Uf+hrqDuaGfKC+UIUlrRTYFpG0ul+Sx7Xn4vLOcvme1Ctub
         8uFFf8LjywTnXIHwrZB5cZbI1dyWrvXood9ZMPszUMH2LVNacBixjQ31nz9azJ2ZaUxp
         J1NDCWqKVx5bwnJvYppUIVMKS9Za8zkwEkhWKCypcBMifCaCnQsJ0aSpt0Ha9eGFdcNC
         eItA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:dkim-signature;
        bh=Qa0fqLYy9vP/cy82c+R1T/pMSHWa/WdHi0MVUVDi4jA=;
        b=iv+R6zf/vrNISVQgXq5FjMMeVkNNVGFtVyCrz8PYbqY8528b8qgmPL68mCVPXhRQbM
         qENCBYjFvCVVziz0bbm6SzsLjGoJhO3rKiSTyo7tN0cjZ+c3AnP5qh+3R52uUYPN8i7r
         bA9AVOsLfyBOyA09DZ6bTMlaZhjly61tdR2lgOUZqciw+jcBKZWVzvEx0oHPd04usuX7
         3AQCgwZUhQCpEdGMvIqYsOgSyYnDyNA7ldySFKIWcqA/8fDRf9A/vZU8bekDdSa+lkMm
         qTirDrzKyPdauBXFYtv8VwU/XjGV8ds4msD0GC10tFH/mg7WQJ1bt+wAHJPg8X5rmam5
         +GPQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=M7jfr02E;
       spf=pass (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::233 as permitted sender) smtp.mailfrom=groeck7@gmail.com
Received: from mail-oi1-x233.google.com (mail-oi1-x233.google.com. [2607:f8b0:4864:20::233])
        by gmr-mx.google.com with ESMTPS id a13si68802qta.0.2021.08.26.08.49.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Aug 2021 08:49:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::233 as permitted sender) client-ip=2607:f8b0:4864:20::233;
Received: by mail-oi1-x233.google.com with SMTP id h133so5183329oib.7
        for <clang-built-linux@googlegroups.com>; Thu, 26 Aug 2021 08:49:05 -0700 (PDT)
X-Received: by 2002:a54:488c:: with SMTP id r12mr11714638oic.115.1629992945362;
        Thu, 26 Aug 2021 08:49:05 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
        by smtp.gmail.com with ESMTPSA id p4sm651325ooa.35.2021.08.26.08.49.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Aug 2021 08:49:04 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Thu, 26 Aug 2021 08:49:03 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Jian Cai <jiancai@google.com>
Cc: mike.leach@linaro.org, dianders@chromium.org, mka@chromium.org,
	manojgupta@google.com, llozano@google.com,
	coresight@lists.linaro.org, linux-arm-kernel@lists.infradead.org,
	clang-built-linux@googlegroups.com,
	Mathieu Poirier <mathieu.poirier@linaro.org>,
	Suzuki K Poulose <suzuki.poulose@arm.com>,
	Leo Yan <leo.yan@linaro.org>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] coresight: syscfg: fix compiler warnings
Message-ID: <20210826154903.GA4082743@roeck-us.net>
References: <20210825222514.2107728-1-jiancai@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210825222514.2107728-1-jiancai@google.com>
X-Original-Sender: linux@roeck-us.net
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=M7jfr02E;       spf=pass
 (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::233 as
 permitted sender) smtp.mailfrom=groeck7@gmail.com
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

On Wed, Aug 25, 2021 at 03:25:14PM -0700, Jian Cai wrote:
> This fixes warnings with -Wimplicit-function-declaration, e.g.
> 
> ^[[1m/mnt/host/source/src/third_party/kernel/v5.4/drivers/hwtracing/coresight/coresight-syscfg.c:455:15: ^[[0m^[[0;1;31merror: ^[[0m^[[1mimplicit declaration of function 'kzalloc' [-Werror,-Wimplicit-function-declaration]^[[0m
>         csdev_item = kzalloc(sizeof(struct cscfg_registered_csdev), GFP_KERNEL);
> ^[[0;1;32m                     ^

You might want to split this into multiple lines and remove the ANSI
escape codes. Otherwise

Reviewed-by: Guenter Roeck <linux@roeck-us.net>

Guenter

> 
> Signed-off-by: Jian Cai <jiancai@google.com>
> ---
>  drivers/hwtracing/coresight/coresight-syscfg.c | 1 +
>  1 file changed, 1 insertion(+)
> 
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210826154903.GA4082743%40roeck-us.net.
